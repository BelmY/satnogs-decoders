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
TODO: Argument parsing missing
```
$ ./manage/push_telemetry.py
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

### Example Usage (OUTDATED!)
```
./manage/migrate_sids.py 39090 --source satnogs --max 10
mkdir -p strand1/packets
cd strand1/packets
../../manage/export_raw.py 39090 ../../telemetry/satnogs/39090/20180831085759_all_telemetry.json strand1
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
