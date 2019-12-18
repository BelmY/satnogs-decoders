# SatNOGS Decoders

Kaitai Structs, preprocessors and helper scripts for decoding SatNOGS received data.

## Adding a new decoder

1. Write the kaitai structure and add it to the ksy folder.
   - Naming example:
     * Satellite Name (arbitrary): `CubeBel-1`
     * KS filename: `cubebel1.ksy`
     * KS file header: see [1]
     * KS compiler output: `cubebel1.py`
     * Python capitalized function name: `Cubebel1`
     * The python module name should match the python function naming rules in [PEP8](https://www.python.org/dev/peps/pep-0008/#id40).
   - Add documentation fields in kaitai structure
     * Add "doc-ref", is the source of information about the decoder
     * Add -orig-id, is the name of field which is the same with the source of information, "doc-ref"
     * At the beginning of kaitai struct after the meta data it is necessary to add, the way that the influxdb value it matches to the kaitai field. For example:
     ```yaml
     doc: |
       :field influxdb_field: katai_field

     doc: |
       :field dest_callsign: ax25_frame.ax25_header.dest_callsign_raw.callsign_ror.callsign
    ```

2. Add the python class name of your decoder to the list in `satnogsdecoders/decoder/__init__.py`

`__init__.py`:
```python
__all__ = [
    [..],
    'Cubebel1',
    [..],
]

[..]
from .cubebel1 import Cubebel1
[..]
```

[1] `cubebel1.ksy`:
```yaml
meta:
  id: cubebel1
```

## Installation in development mode

Within the root directory of this repository run `docker-ksc` script to compile KSY to Python code (requires Docker):
```
$ ./contrib/docker-ksc.sh
```
The above command will output the compiled files under `satnogsdecoders/decoder` directory.

Then, install the package from source code directory as usual:
```
pip install -e .
```

## Helper Scripts
Install requirements using `pip install -r requirements.txt`. NOTE: Almost all scripts are python3-only,
except `decode_frame.py` which is python2-only for now.

### Fetch telemetry

```
$ ./contrib/manage/fetch_telemetry.py --help
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
$ ./contrib/manage/push_telemetry.py --help
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
$ ./contrib/manage/export_raw.py --help
usage: export_raw.py [-h] norad_id source_file satellite_name

Export raw frames from local telemtry storage json files.

positional arguments:
  norad_id        NORAD ID of the satellite
  source_file     Source telemetry storage file (json)
  satellite_name  Satellite name

optional arguments:
  -h, --help      show this help message and exit
```

### Decode frame

Decode frame will be available as a command line tool after `pip install -e .`

```
$ decode_frame --help
usage: decode_frame.py [-h] decoder_name raw_frame_file

Decode a raw frame with the selected decoder(generated by Kaitai) and print
its json representation.

positional arguments:
  decoder_name    name of the decoder (e.g. siriussat)
  raw_frame_file  Path to the file containing the raw frame

optional arguments:
  -h, --help      show this help message and exit
```

### Fetch frames from network

```
$ ./contrib/manage/fetch_frames_from_network.py --help
usage: fetch_frames_from_network.py [-h] norad_id start end target_dir

Fetch all frames received in thespecified timeframe from a given satellite in
satnogs-network (prod) and store themto individual raw files.

positional arguments:
  norad_id    NORAD ID of the satellite
  start       Start date, YYYY-mm-dd
  end         End date, YYYY-mm-dd
  target_dir  target directory for the downloaded raw frames

optional arguments:
  -h, --help  show this help message and exit
```

### Example Usage

Transfer frames from db-dev to db-dev (duplicating frames...):
```
$ ./contrib/manage/fetch_telemetry.py 40967 --source satnogs-dev --max 10 --base_dir ./telemetry/
https://db-dev.satnogs.org/api/telemetry/?satellite=40967
Fetched 25 frames.
Stored in ./telemetry/satnogs-dev/40967/20180927195606_all_telemetry.json


$ ./contrib/manage/push_telemetry.py ./telemetry/satnogs-dev/40967/20180927195606_all_telemetry.json 40967 40967 --target satnogs-dev --max 3
0 SR1GEO_DEV01-JO73mi 2018-09-20T21:40:24Z
1 SR1GEO_DEV01-JO73mi 2018-09-20T21:40:19Z
2 SR1GEO_DEV01-JO73mi 2018-09-20T21:40:14Z
Exported 3 frames.
```

Decode a frame by Siriussat:
```

$ decode_frame siriussat contrib/siriussat/packets/data_219992_2018-08-22T13-46-52
{
    "dest_callsign": "R2ANF ",
    "src_callsign": "RS13S ",
    ...
}
```

Download frames from satnogs-network (prod instance) for Fox-1A (norad id: 40967) received in the specified timeframe:
```
$ mkdir fox1a
$ ./contrib/manage/fetch_frames_from_network.py 40967 2018-10-26T00:00:00 2018-10-26T01:00:00 ./fox1a/
Fetched 45 frames.
```

## Existing decoders
- AAUSAT4 by OZ3RF & DL4PD
- ACRUX-1 by DL4PD
- ARMADILLO by DL4PD
- AMSAT FOX DUV by DL4PD
- AX.25 frame decoder by DL4PD
- CAS-4A & CAS-4B by cshields
- CHOMPTT by DL4PD
- CubeBel-1 by DL4PD
- Elfin-A & -B by DL4PD
- Entrysat by DL4PD
- Lightsail-2 by DL4PD
- Ops-sat by deckbsd
- QBEE by Ansgar Schmidt
- Siriussat-1 & -2 by kerel
- skCUBE by borispilka & kerel
- Strand-1 by kerel
- TBEX-A/-B by DL4PD
- Unisat-6 by cshields

## License
Helper scripts: AGPL-3.0-or-later
