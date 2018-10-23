#!/usr/bin/env python3

import os
import json
import time
import argparse
import binascii
from datetime import datetime

from satnogs_api_client import fetch_telemetry, DB_BASE_URL, DB_DEV_BASE_URL, post_telemetry
from qth_locator import square_to_location, location_to_square
from db_helpers import gridsquare


norad_id_siriussat1 = 43595
norad_id_siriussat2 = 43596
norad_id_siriussat1_old = 99970
norad_id_siriussat2_old = 99971
norad_id_siriussat3_old = 99972
norad_id_skcube = 42789
DB_SPUTNIX_BASE_URL = 'http://db.satnogs.sputnix.ru'


# filename = './telemetry/sputnix/20180826192616_telemetry_99970.json'
telemetry_filename = './telemetry/sputnix/20180826192634_telemetry_99971.json'
norad_id_import = norad_id_siriussat2_old
norad_id_export = norad_id_siriussat2

db_base_urls = {'satnogs': DB_BASE_URL,
                'satnogs-dev': DB_DEV_BASE_URL,
                'sputnix': DB_SPUTNIX_BASE_URL}


def _push_telemetry(telemetry_filename, norad_id_import, norad_id_export, target, max_frames):
    with open(telemetry_filename, 'r') as f:
        telemetry = json.load(f)    

    exported = 0
    for i,t in enumerate(telemetry[:max_frames]):
        if len(t['observer']) == 0:
            print("Error: Empty observer, timestamp {}".format(t['timestamp']))
            continue

        qth_init = t['observer'][-6:]
        (lat, lon) = square_to_location(qth_init)
        lat += 0.00001
        lon += 0.00001
        qth_end = gridsquare(lat, lon)

        if (qth_init != qth_end):
            print("ERROR: QTH locator differs: {}->({},{})->{}".format(qth_init, lat, lon, qth_end))
            continue
        if int(t['norad_cat_id']) != norad_id_import:
            print('ERROR: {} != {}'.format(t['norad_cat_id'], norad_id_import))
            continue

        print(i, t['observer'], t['timestamp'])
        post_telemetry(norad_id_export,
                       source=t['observer'][:-7],
                       lon=str(abs(lon)) + ('E' if lon >= 0 else 'W'),
                       lat=str(abs(lat)) + ('N' if lat >= 0 else 'S'),
                       timestamp=t['timestamp'],
                       frame=t['frame'],
                       base_url=db_base_urls[target])
        exported += 1
    print('Exported {} frames.'.format(exported))


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Push all telemetry data to the target db instance from a local json dump file for a given satellite.')
    parser.add_argument('telemetry_filename',
                        type=str,
                        help='Filname of the telemetry data json dump')
    parser.add_argument('norad_id_import', type=int, help='NORAD ID of the satellite in the data')
    parser.add_argument('norad_id_export', type=int, help='NORAD ID of the satellite in the target db instance')
    parser.add_argument('--target',
                        type=str,
                        default='satnogs',
                        help='target satnogs-db Instance: satnogs, satnogs-dev or sputnix')
    parser.add_argument('--max',
                        type=int,
                        default=None,
                        help='Maximum number of fetched frames.')
    args = parser.parse_args()

    _push_telemetry(args.telemetry_filename,
                    args.norad_id_import,
                    args.norad_id_export,
                    args.target,
                    args.max)
