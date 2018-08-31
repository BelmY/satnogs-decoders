import requests
import re


NETWORK_DEV_BASE_URL = 'https://network-dev.satnogs.org'
NETWORK_BASE_URL = 'https://network.satnogs.org'
DB_BASE_URL = 'https://db.satnogs.org'
DB_DEV_BASE_URL = 'https://db-dev.satnogs.org'


def fetch_observation_data_from_id(norad_id, start, end, prod=True):
    # Get all observations of the satellite with the given `norad_id` in the given timeframe
    # https://network.satnogs.org/api/observations/?satellite__norad_cat_id=25544&start=2018-06-10T00:00&end=2018-06-15T00:00

    query_str = '{}/api/observations/?satellite__norad_cat_id={}&start={}&end={}'

    url = query_str.format(NETWORK_BASE_URL if prod else NETWORK_DEV_BASE_URL,
                           norad_id,
                           start.isoformat(),
                           end.isoformat())

    # print(url)
    r = requests.get(url=url)

    if r.status_code != requests.codes.ok:
        print("No observations found for {}, start: {}, end: {}.".format(norad_id, start_time, end_time))
        raise

    observations = r.json()

    next_page_available = ('Link' in r.headers.keys())

    if next_page_available:
        parts = r.headers['Link'].split(',')
        for part in parts:
            if part[-5:-1] == 'next':
                next_page_url = part[1:-13]

    while next_page_available:
        # print(next_page_url)
        r = requests.get(url=next_page_url)

        observations.extend(r.json())

        next_page_available = False

        if 'Link' in r.headers.keys():
            parts = r.headers['Link'].split(',')
            for part in parts:
                if part[-5:-1] == 'next':
                    next_page_url = part[1:-13]
                    next_page_available = True

    # Current prod is broken and can't filter on NORAD ID correctly, use client-side filtering instead
    observations = list(filter(lambda o: o['norad_cat_id'] == norad_id, observations))

    return observations


def fetch_observation_data(observation_ids, prod=True):
    # Get station location from the observation via the observation_id
    
    observations = []
    for observation_id in observation_ids:
        r = requests.get(url='{}/api/observations/{}/'.format(NETWORK_BASE_URL if prod else NETWORK_DEV_BASE_URL,
                                                          observation_id))
        if r.status_code != requests.codes.ok:
            print("Observation {} not found in network.".format(observation_id))
            continue
        observations.append(r.json())

    return observations

def fetch_ground_station_data(ground_station_ids, prod=True):
    # Fetch ground station metadata from network
    ground_stations = []
    for ground_station_id in ground_station_ids:
        r = requests.get(url='{}/api/stations/{}/'.format(NETWORK_BASE_URL if prod else NETWORK_DEV_BASE_URL,
                                                      ground_station_id))
        if r.status_code != requests.codes.ok:
            print("Ground Station {} not found in db.".format(ground_station_id))
            raise
        data = r.json()
        ground_stations.append(r.json())
    return ground_stations

def fetch_satellite_data(norad_cat_id):
    # Fetch satellite metadata from network
    r = requests.get(url='{}/api/satellites/{}/'.format(DB_BASE_URL, norad_cat_id))
    if r.status_code != requests.codes.ok:
        print("ERROR: Satellite {} not found in network.".format(norad_cat_id))

    return r.json()

def fetch_tle_of_observation(observation_id, prod=True):
    url = '{}/observations/{}/'.format(NETWORK_BASE_URL if prod else NETWORK_DEV_BASE_URL,
                                       observation_id)
    r = requests.get(url=url)
    observation_page_html = r.text

    regex = r"<pre>1 (.*)<br>2 (.*)</pre>"
    matches = re.search(regex, observation_page_html)

    obs_tle_2 = '1 ' + matches.group(1)
    obs_tle_3 = '2 ' + matches.group(2)

    return [obs_tle_2, obs_tle_3]


def fetch_telemetry(norad_id, max_frames, url):
    # http://db-dev.satnogs.org/api/telemetry/?satellite=43595

    query_str = '{}/api/telemetry/?satellite={}'

    url = query_str.format(url, norad_id)

    print(url)
    r = requests.get(url=url)

    if r.status_code != requests.codes.ok:
        print("No telemetry found for {}.".format(norad_id))
        raise

    telemetry = r.json()

    next_page_available = ('Link' in r.headers.keys())

    if next_page_available and (not max_frames or len(telemetry) < max_frames):
        parts = r.headers['Link'].split(',')
        for part in parts:
            if part[-5:-1] == 'next':
                next_page_url = part[1:-13]

    while next_page_available and (not max_frames or len(telemetry) < max_frames):
        print(next_page_url)
        r = requests.get(url=next_page_url)

        telemetry.extend(r.json())

        next_page_available = False

        if 'Link' in r.headers.keys():
            parts = r.headers['Link'].split(',')
            for part in parts:
                if part[-5:-1] == 'next':
                    next_page_url = part[1:-13]
                    next_page_available = True


    return telemetry


def post_telemetry(norad_id,
                   source,
                   lon,
                   lat,
                   timestamp,
                   frame,
                   base_url=DB_DEV_BASE_URL):
    payload = {'noradID': norad_id,
               'source': source,
               'timestamp': timestamp,
               'latitude': lat,
               'longitude': lon,
               'frame': frame}

    url = '{}/api/telemetry/'.format(base_url)
    r = requests.post(url, data=payload)

    if r.status_code != 201:
        print('ERROR {}: {}'.format(r.status_code, r.text))
