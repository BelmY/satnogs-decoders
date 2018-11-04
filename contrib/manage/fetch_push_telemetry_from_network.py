#!/usr/bin/env python3

import re
import argparse
import requests
import binascii
from datetime import datetime
from urllib.parse import urlparse

from satnogs_api_client import fetch_observation_data_from_id, fetch_ground_station_data, DB_DEV_BASE_URL, post_telemetry

def fetch_telemetry_from_network(norad_id, start, end, source_prod):
    telemetry_frames = []

    observations = fetch_observation_data_from_id(norad_id, start, end, source_prod)
    ground_station_ids = set(map(lambda observation: observation['ground_station'], observations))
    ground_stations = fetch_ground_station_data(ground_station_ids, prod=source_prod)

    for observation in observations:
        if 'demoddata' not in observation.keys():
            continue

        for demoddata in observation['demoddata']:
            payload_demod_url = demoddata['payload_demod']
            ground_station = list(filter(lambda gs: gs['id'] == observation['ground_station'], ground_stations))[0]

            r = requests.get(payload_demod_url)

            if r.status_code != 200:
                continue

            payload = r.content

            if payload_demod_url[-3:] in ["hex"]:
                frame = payload.decode('ascii').upper().replace("0X", "")
                frame = re.sub(r" ([0-9A-F]{1}) ", r"0\1", frame) # replace <space>number<space> with <space>0<number><space>
                frame = frame.replace(" ", "")
            elif payload_demod_url[-3:] in ["txt"] or re.search(r"\d{2}-\d{2}-\d{2}T\d{2}-\d{2}-[0-9_]*$", payload_demod_url): # .txt or no ending
                frame = binascii.hexlify(payload).decode('ascii').upper()
            else:
                print("Unsupported payload file:%s" % payload_demod_url)
                continue

            # need to abstract the timestamp from the filename. hacky..
            if not re.search(r"\d{2}-\d{2}-\d{2}T\d{2}-\d{2}-[0-9_]*$", payload_demod_url):
                payload_demod_url = payload_demod_url[:-4]

            file_datetime = urlparse(payload_demod_url).path.split('/')[-1].split('_')[2]
            frame_datetime = datetime.strptime(file_datetime, '%Y-%m-%dT%H-%M-%S')
            submit_datetime_str = datetime.strftime(frame_datetime, '%Y-%m-%dT%H:%M:%S.000Z')

            telemetry = {'norad_id': observation['norad_cat_id'],
                         'source': ground_station['name'],
                         'lon': ground_station['lng'],
                         'lat': ground_station['lat'],
                         'timestamp': submit_datetime_str,
                         'frame': frame}

            telemetry_frames.append(telemetry)
    return telemetry_frames

def post_telemetry_frames(telemetry_frames, target_db_base_url):
    for telemetry in telemetry_frames:
        post_telemetry(norad_id=telemetry['norad_id'],
                       source=telemetry['source'],
                       lon=telemetry['lon'],
                       lat=telemetry['lat'],
                       timestamp=telemetry['timestamp'],
                       frame=telemetry['frame'],
                       base_url=target_db_base_url)


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='Fetch all frames from a given satellite from satnogs-network and push to satnogs-db-dev in the specified time period.')
    parser.add_argument('norad_id', type=int, help='NORAD ID of the satellite')
    parser.add_argument('start',
                        type=lambda d: datetime.strptime(d, '%Y-%m-%d'),
                        help="Start date, YYYY-mm-dd")
    parser.add_argument('end',
                        type=lambda d: datetime.strptime(d, '%Y-%m-%d'),
                        help="End date, YYYY-mm-dd")

    args = parser.parse_args()
    # 43617, 43616
    # start=datetime(2018,9,1),
    # end=datetime(2018,9,27),

    telemetry_frames = fetch_telemetry_from_network(norad_id=args.norad_id,
                                                    start=args.start,
                                                    end=args.end,
                                                    source_prod=True)

    for frame in telemetry_frames:
        print('{} by {}'.format(frame['timestamp'], frame['source']))

    print('Fetched {} frames.'.format(len(telemetry_frames)))
    post_telemetry_frames(telemetry_frames,
                          target_db_base_url=DB_DEV_BASE_URL)
