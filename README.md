# SatNOGS Kaitai Structs

## Helper Scripts

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
  <https://github.com/opencosmos/qb01-beacon-decoder/blob/master/QB50%20SE01%20beacon%20description%20-%20Open%20Cosmos.pdf>
- Strand-1
  <https://amsat-uk.org/satellites/telemetry/strand-1/strand-1-telemetry/>
  <https://ukamsat.files.wordpress.com/2013/03/amsat-strand-1-20130327.xlsx>

## License
??
