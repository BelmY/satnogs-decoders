# SatNOGS Kaitai Structs

## Helper Scripts

### Fetch telemetry

```
$ ./manage/fetch_telemetry.py --help
usage: fetch_telemetry.py [-h] [--source SOURCE] [--base_dir BASE_DIR]
                          [--max MAX]
                          norad_id

Fetch and store all telemetry data from a satnogs-db instance for a given
satellite.

positional arguments:
  norad_id             NORAD ID of the satellite

optional arguments:
  -h, --help           show this help message and exit
  --source SOURCE      satnogs-db Instance: satnogs, satnogs-dev or sputnix
  --base_dir BASE_DIR  Base directory of the telemetry storage
  --max MAX            Maximum number of fetched frames.
```


### Push telemetry

```
$ ./manage/push_telemetry.py --help
usage: push_telemetry.py [-h] [--target TARGET] [--max MAX]
                         telemetry_filename norad_id_import norad_id_export

Push all telemetry data to the target db instance from a local json dump file
for a given satellite.

positional arguments:
  telemetry_filename  Filname of the telemetry data json dump
  norad_id_import     NORAD ID of the satellite in the data
  norad_id_export     NORAD ID of the satellite in the target db instance

optional arguments:
  -h, --help          show this help message and exit
  --target TARGET     target satnogs-db Instance: satnogs, satnogs-dev or
                      sputnix
  --max MAX           Maximum number of fetched frames.
```


### Export raw frames

```
$ ./manage/export_raw.py --help
usage: export_raw.py [-h] norad_id source_file satellite_name

Export raw frames from local telemtry storage json files.

positional arguments:
  norad_id        NORAD ID of the satellite
  source_file     Source telemetry storage file (json)
  satellite_name  Satellite name

optional arguments:
  -h, --help      show this help message and exit
```


### Example Usage

Transfer frames from db-dev to db-dev (duplicating frames...):
```
$ ./manage/fetch_telemetry.py 40967 --source satnogs-dev --max 10 --base_dir ./telemetry/
https://db-dev.satnogs.org/api/telemetry/?satellite=40967
Fetched 25 frames.
Stored in ./telemetry/satnogs-dev/40967/20180927195606_all_telemetry.json


$ ./manage/push_telemetry.py ./telemetry/satnogs-dev/40967/20180927195606_all_telemetry.json 40967 40967 --target satnogs-dev --max 3
0 SR1GEO_DEV01-JO73mi 2018-09-20T21:40:24Z
1 SR1GEO_DEV01-JO73mi 2018-09-20T21:40:19Z
2 SR1GEO_DEV01-JO73mi 2018-09-20T21:40:14Z
Exported 3 frames.
```

## Existing decoders
- CAS-4A & CAS-4B by cshields
- Unisat-6 by cshields
- Siriussat-1 & -2 by kerel
- skCUBE by borispilka & kerel

## Upcoming decoders
- Elfin-A & -B by DL4PD

## Possible future decoders

- QBEE / QB50
  - <https://github.com/opencosmos/qb01-beacon-decoder/blob/master/QB50%20SE01%20beacon%20description%20-%20Open%20Cosmos.pdf>
- Strand-1
  - <https://amsat-uk.org/satellites/telemetry/strand-1/strand-1-telemetry/>
  - <https://ukamsat.files.wordpress.com/2013/03/amsat-strand-1-20130327.xlsx>

## License
Helper scripts: GPLv3+
