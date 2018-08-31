```
./manage/migrate_sids.py 39090 --source satnogs --max 10
mkdir -p strand1/packets
cd strand1/packets
../../manage/export_raw.py 39090 ../../telemetry/satnogs/39090/20180831085759_all_telemetry.json strand1
```
