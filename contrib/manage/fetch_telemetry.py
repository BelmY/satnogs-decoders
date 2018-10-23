#!/usr/bin/env python3

import os
import json
import time
import argparse
import binascii
from datetime import datetime

from satnogs_api_client import fetch_telemetry, DB_BASE_URL, DB_DEV_BASE_URL
from qth_locator import square_to_location, location_to_square
from db_helpers import gridsquare


norad_id_siriussat1 = 43595
norad_id_siriussat2 = 43596
norad_id_siriussat1_old = 99970
norad_id_siriussat2_old = 99971
norad_id_siriussat3_old = 99972
norad_id_skcube = 42789
DB_SPUTNIX_BASE_URL = 'http://db.satnogs.sputnix.ru'


def fetch_and_store_telemetry(norad_id, max_frames, source, telemetry_dir):
    if source == 'satnogs':
        url = DB_BASE_URL
    elif source == 'satnogs-dev':
        url = DB_DEV_BASE_URL
    elif source == 'sputnix':
        url = DB_SPUTNIX_BASE_URL

    telemetry = fetch_telemetry(norad_id, max_frames, url)
    print("Fetched {} frames.".format(len(telemetry)))

    directory = os.path.join(telemetry_dir, source, str(norad_id))
    filename = '{:%Y%m%d%H%M%S}_all_telemetry.json'.format(datetime.now())
    path  = os.path.join(directory, filename)

    if not os.path.exists(directory):
        os.makedirs(directory)

    with open(path, 'w') as f:
        json.dump(telemetry, f)

    print("Stored in {}".format(path))


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Fetch and store all telemetry data from a satnogs-db instance for a given satellite.')
    parser.add_argument('norad_id', type=int, help='NORAD ID of the satellite')
    parser.add_argument('--source',
                        type=str,
                        default='satnogs',
                        help='satnogs-db Instance: satnogs, satnogs-dev or sputnix')
    parser.add_argument('--base_dir',
                        type=str,
                        default='./telemetry/',
                        help='Base directory of the telemetry storage')
    parser.add_argument('--max',
                        type=int,
                        default=None,
                        help='Maximum number of fetched frames.')
    args = parser.parse_args()

    fetch_and_store_telemetry(args.norad_id, args.max, args.source, args.base_dir)
