#!/usr/bin/env python3

import os
import json
import time
import binascii
from datetime import datetime

from satnogs_api_client import fetch_telemetry, DB_DEV_BASE_URL, post_telemetry
from qth_locator import square_to_location, location_to_square
from db_helpers import gridsquare


norad_id_siriussat1 = 43595
norad_id_siriussat2 = 43596
norad_id_siriussat1_old = 99970
norad_id_siriussat2_old = 99971
norad_id_siriussat3_old = 99972
norad_id_skcube = 42789
DB_SPUTNIX_BASE_URL = 'http://db.satnogs.sputnix.ru'


def _fetch_telemetry():
    # source = 'sputnix'
    norad_id = norad_id_skcube
    source = 'satnogs-dev'

    if source == 'satnogs':
        url = DB_BASE_URL
    elif source == 'satnogs-dev':
        url = DB_DEV_BASE_URL
    elif source == 'sputnix':
        url = DB_SPUTNIX_BASE_URL

    telemetry = fetch_telemetry(norad_id, url)
    print("Fetched {} frames.".format(len(telemetry)))

    directory = './telemetry/{}/{}'.format(source, norad_id)
    filename = '{:%Y%m%d%H%M%S}_all_telemetry.json'.format(datetime.now())
    path  = os.path.join(directory, filename)

    if not os.path.exists(directory):
        os.makedirs(directory)

    with open(path, 'w') as f:
        json.dump(telemetry, f)


def _push_telemetry():
    # filename = './telemetry/sputnix/20180826192616_telemetry_99970.json'
    filename = './telemetry/sputnix/20180826192634_telemetry_99971.json'
    norad_id_import = norad_id_siriussat2_old
    norad_id_export = norad_id_siriussat2

    with open(filename, 'r') as f:
        telemetry = json.load(f)    

    exported = 0
    for i,t in enumerate(telemetry[:1]):
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
                       base_url=DB_DEV_BASE_URL)
        exported += 1
    print('Exported {} frames.'.format(exported))


def _export_raw():
    filename = '../telemetry/satnogs-dev/42789/20180826225700_all_telemetry.json'
    norad_id = norad_id_skcube
    sat_name = 'skcube'

    with open(filename, 'r') as f:
        telemetry = json.load(f)    

    for t in telemetry[-20:]:
        timestamp = datetime.strptime(t['timestamp'], '%Y-%m-%dT%H:%M:%SZ')

        filename = '{}_{:%Y%m%d_%H%M%S}_raw'.format(sat_name, timestamp)
        with open(filename, 'wb') as f:
            f.write(binascii.unhexlify(t['frame']))

if __name__ == "__main__":
    _fetch_telemetry()
    # _push_telemetry()
    # _export_raw()
