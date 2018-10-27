#!/usr/bin/env python3

import os
import argparse
import requests
import binascii
from datetime import datetime
from urllib.parse import urlparse

from satnogs_api_client import fetch_observation_data_from_id


def fetch_frames_from_network(norad_id,
                              start,
                              end,
                              source_prod):
    frames = []

    observations = fetch_observation_data_from_id(norad_id, start, end, source_prod)

    for observation in observations:
        if 'demoddata' not in observation.keys():
            continue

        for demoddata in observation['demoddata']:
            payload_demod_url = demoddata['payload_demod']

            r = requests.get(payload_demod_url)

            if r.status_code != 200:
                continue

            payload = r.content
            frame = binascii.hexlify(payload).decode('ascii').upper()

            # need to abstract the timestamp from the filename. hacky..
            filename = urlparse(payload_demod_url).path.split('/')[-1]
            frames.append((filename, frame))
    return frames


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='Fetch all frames received in the'
    'specified timeframe from a given satellite in satnogs-network (prod) and store them'
    'to individual raw files.')
    parser.add_argument('norad_id', type=int, help='NORAD ID of the satellite')
    parser.add_argument('start',
                        type=lambda d: datetime.fromisoformat(d),
                        help="Start date, YYYY-mm-dd")
    parser.add_argument('end',
                        type=lambda d: datetime.fromisoformat(d),
                        help="End date, YYYY-mm-dd")
    parser.add_argument('target_dir',
                        type=str,
                        help='target directory for the downloaded raw frames')

    args = parser.parse_args()

    frames = fetch_frames_from_network(norad_id=args.norad_id,
                                       start=args.start,
                                       end=args.end,
                                       source_prod=True)
    print('Fetched {} frames.'.format(len(frames)))

    for filename, frame in frames:
        with open(os.path.join(args.target_dir, filename), 'wb') as f:
            f.write(binascii.unhexlify(frame))
