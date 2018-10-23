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


def export_raw(norad_id, filename, sat_name):
    with open(filename, 'r') as f:
        telemetry = json.load(f)    

    for t in telemetry[-20:]:
        timestamp = datetime.strptime(t['timestamp'], '%Y-%m-%dT%H:%M:%SZ')

        filename = '{}_{:%Y%m%d_%H%M%S}_raw'.format(sat_name, timestamp)
        with open(filename, 'wb') as f:
            f.write(binascii.unhexlify(t['frame']))


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Export raw frames from local telemtry storage json files.')
    parser.add_argument('norad_id', type=int, help='NORAD ID of the satellite')
    parser.add_argument('source_file',
                        type=str,
                        help='Source telemetry storage file (json)')
    parser.add_argument('satellite_name',
                        type=str,
                        help='Satellite name')
    args = parser.parse_args()

    export_raw(args.norad_id, args.source_file, args.satellite_name)
