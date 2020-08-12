---
meta:
  id: bobcat1
  endian: be
doc: |
  :field callsign: frame.basic.callsign
  :field bat_v: frame.basic.bat_v
  :field bat_i_out: frame.basic.bat_i_out
  :field bat_i_in: frame.basic.bat_i_in
  :field bootcount_a3200: frame.basic.bootcount_a3200
  :field resetcause_a3200: frame.basic.resetcause_a3200
  :field bootcause_a3200: frame.basic.bootcause_a3200
  :field uptime_a3200: frame.basic.uptime_a3200
  :field bootcount_ax100: frame.basic.bootcount_ax100
  :field bootcause_ax100: frame.basic.bootcause_ax100
  :field i_pwm: frame.basic.i_pwm
  :field fs_mounted: frame.basic.fs_mounted
  :field antennas_deployed: frame.basic.antennas_deployed
  :field deploy_attempts1: frame.basic.deploy_attempts1
  :field deploy_attempts2: frame.basic.deploy_attempts2
  :field deploy_attempts3: frame.basic.deploy_attempts3
  :field deploy_attempts4: frame.basic.deploy_attempts4
  :field gyro_x: frame.basic.gyro_x
  :field gyro_y: frame.basic.gyro_y
  :field gyro_z: frame.basic.gyro_z
  :field timestamp: frame.basic.timestamp
  :field checksum: frame.hk_data.a3200_hktable0.checksum
  :field callsign: frame.hk_data.callsign
  :field bat_v: frame.hk_data.bat_v
  :field bat_i_in: frame.hk_data.bat_i_in
  :field bat_i_out: frame.hk_data.bat_i_out
  :field solar1_i: frame.hk_data.solar1_i
  :field solar1_v: frame.hk_data.solar1_v
  :field solar2_i: frame.hk_data.solar2_i
  :field solar2_v: frame.hk_data.solar2_v
  :field solar3_i: frame.hk_data.solar3_i
  :field solar3_v: frame.hk_data.solar3_v
  :field novatel_i: frame.hk_data.novatel_i
  :field sdr_i: frame.hk_data.sdr_i
  :field bootcount_p31: frame.hk_data.bootcount_p31
  :field bootcause_p31: frame.hk_data.bootcause_p31
  :field bootcount_a3200: frame.hk_data.bootcount_a3200
  :field bootcause_a3200: frame.hk_data.bootcause_a3200
  :field resetcause_a3200: frame.hk_data.resetcause_a3200
  :field uptime_a3200: frame.hk_data.uptime_a3200
  :field temp_mcu: frame.hk_data.temp_mcu
  :field i_gssb1: frame.hk_data.i_gssb1
  :field i_pwm: frame.hk_data.i_pwm
  :field panel_temp1: frame.hk_data.panel_temp1
  :field panel_temp2: frame.hk_data.panel_temp2
  :field panel_temp3: frame.hk_data.panel_temp3
  :field panel_temp4: frame.hk_data.panel_temp4
  :field panel_temp5: frame.hk_data.panel_temp5
  :field panel_temp6: frame.hk_data.panel_temp6
  :field panel_temp7: frame.hk_data.panel_temp7
  :field panel_temp8: frame.hk_data.panel_temp8
  :field panel_temp9: frame.hk_data.panel_temp9
  :field p31_temp1: frame.hk_data.p31_temp1
  :field p31_temp2: frame.hk_data.p31_temp2
  :field p31_temp3: frame.hk_data.p31_temp3
  :field p31_temp4: frame.hk_data.p31_temp4
  :field p31_temp5: frame.hk_data.p31_temp5
  :field p31_temp6: frame.hk_data.p31_temp6
  :field flash0_free: frame.hk_data.flash0_free
  :field flash1_free: frame.hk_data.flash1_free
  :field collection_running: frame.hk_data.coll_running
  :field temp_brd: frame.hk_data.temp_brd
  :field temp_pa: frame.hk_data.temp_pa
  :field bgnd_rssi: frame.hk_data.bgnd_rssi
  :field tot_tx_count: frame.hk_data.tot_tx_count
  :field tot_rx_count: frame.hk_data.tot_rx_count
  :field tot_tx_bytes: frame.hk_data.tot_tx_bytes
  :field tot_rx_bytes: frame.hk_data.tot_rx_bytes
  :field bootcount_ax100: frame.hk_data.bootcount_ax100
  :field bootcause_ax100: frame.hk_data.bootcause_ax100
  :field callsign: frame.data.basic.callsign
  :field bat_v: frame.data.basic.bat_v
  :field bat_i_out: frame.data.basic.bat_i_out
  :field bat_i_in: frame.data.basic.bat_i_in
  :field bootcount_a3200: frame.data.basic.bootcount_a3200
  :field resetcause_a3200: frame.data.basic.resetcause_a3200
  :field bootcause_a3200: frame.data.basic.bootcause_a3200
  :field uptime_a3200: frame.data.basic.uptime_a3200
  :field bootcount_ax100: frame.data.basic.bootcount_ax100
  :field bootcause_ax100: frame.data.basic.bootcause_ax100
  :field i_pwm: frame.data.basic.i_pwm
  :field fs_mounted: frame.data.basic.fs_mounted
  :field antennas_deployed: frame.data.basic.antennas_deployed
  :field deploy_attempts1: frame.data.basic.deploy_attempts1
  :field deploy_attempts2: frame.data.basic.deploy_attempts2
  :field deploy_attempts3: frame.data.basic.deploy_attempts3
  :field deploy_attempts4: frame.data.basic.deploy_attempts4
  :field gyro_x: frame.data.basic.gyro_x
  :field gyro_y: frame.data.basic.gyro_y
  :field gyro_z: frame.data.basic.gyro_z
  :field timestamp: frame.data.basic.timestamp
  :field callsign: frame.hk_frame.hk_data.callsign
  :field bat_v: frame.hk_frame.hk_data.bat_v
  :field bat_i_in: frame.hk_frame.hk_data.bat_i_in
  :field bat_i_out: frame.hk_frame.hk_data.bat_i_out
  :field solar1_i: frame.hk_frame.hk_data.solar1_i
  :field solar1_v: frame.hk_frame.hk_data.solar1_v
  :field solar2_i: frame.hk_frame.hk_data.solar2_i
  :field solar2_v: frame.hk_frame.hk_data.solar2_v
  :field solar3_i: frame.hk_frame.hk_data.solar3_i
  :field solar3_v: frame.hk_frame.hk_data.solar3_v
  :field novatel_i: frame.hk_frame.hk_data.novatel_i
  :field sdr_i: frame.hk_frame.hk_data.sdr_i
  :field bootcount_p31: frame.hk_frame.hk_data.bootcount_p31
  :field bootcause_p31: frame.hk_frame.hk_data.bootcause_p31
  :field bootcount_a3200: frame.hk_frame.hk_data.bootcount_a3200
  :field bootcause_a3200: frame.hk_frame.hk_data.bootcause_a3200
  :field resetcause_a3200: frame.hk_frame.hk_data.resetcause_a3200
  :field uptime_a3200: frame.hk_frame.hk_data.uptime_a3200
  :field temp_mcu: frame.hk_frame.hk_data.temp_mcu
  :field i_gssb1: frame.hk_frame.hk_data.i_gssb1
  :field i_pwm: frame.hk_frame.hk_data.i_pwm
  :field panel_temp1: frame.hk_frame.hk_data.panel_temp1
  :field panel_temp2: frame.hk_frame.hk_data.panel_temp2
  :field panel_temp3: frame.hk_frame.hk_data.panel_temp3
  :field panel_temp4: frame.hk_frame.hk_data.panel_temp4
  :field panel_temp5: frame.hk_frame.hk_data.panel_temp5
  :field panel_temp6: frame.hk_frame.hk_data.panel_temp6
  :field panel_temp7: frame.hk_frame.hk_data.panel_temp7
  :field panel_temp8: frame.hk_frame.hk_data.panel_temp8
  :field panel_temp9: frame.hk_frame.hk_data.panel_temp9
  :field p31_temp1: frame.hk_frame.hk_data.p31_temp1
  :field p31_temp2: frame.hk_frame.hk_data.p31_temp2
  :field p31_temp3: frame.hk_frame.hk_data.p31_temp3
  :field p31_temp4: frame.hk_frame.hk_data.p31_temp4
  :field p31_temp5: frame.hk_frame.hk_data.p31_temp5
  :field p31_temp6: frame.hk_frame.hk_data.p31_temp6
  :field flash0_free: frame.hk_frame.hk_data.flash0_free
  :field flash1_free: frame.hk_frame.hk_data.flash1_free
  :field coll_running: frame.hk_frame.hk_data.coll_running
  :field temp_brd: frame.hk_frame.hk_data.temp_brd
  :field temp_pa: frame.hk_frame.hk_data.temp_pa
  :field bgnd_rssi: frame.hk_frame.hk_data.bgnd_rssi
  :field tot_tx_count: frame.hk_frame.hk_data.tot_tx_count
  :field tot_rx_count: frame.hk_frame.hk_data.tot_rx_count
  :field tot_tx_bytes: frame.hk_frame.hk_data.tot_tx_bytes
  :field tot_rx_bytes: frame.hk_frame.hk_data.tot_rx_bytes
  :field bootcount_ax100: frame.hk_frame.hk_data.bootcount_ax100
  :field bootcause_ax100: frame.hk_frame.hk_data.bootcause_ax100

instances:
  framelength:
    value: _io.size


seq:
  - id: frame
    type:
      switch-on: _root.framelength
      cases:
        57: bc1_basic_frame
        144: bc1_hk_frame
        69: bc1_basic_frame_csp
        156: bc1_hk_frame_csp


types:
  bc1_basic_frame_csp:
    seq:
      - id: cspheader
        type: cspheader
      - id: data
        type: bc1_basic_frame
  bc1_hk_frame_csp:
    seq:
      - id: cspheader
        type: cspheader
      - id: hk_frame
        type: bc1_hk_frame
  bc1_basic_frame:
    seq:
      - id: basic
        type: basic
  bc1_hk_frame:
    seq:
      - id: hk_header
        type: hk_header
      - id: hk_data
        type: hk_data

  cspheader:
    seq:
      - id: data
        type: u4

  basic:
    seq:
      - id: callsign
        type: strz
        encoding: ASCII
        size: 6
      - id: bobcat1
        type: strz
        encoding: ASCII
        size: 9
      - id: bat_v
        type: u2
      - id: bat_i_out
        type: u2
      - id: bat_i_in
        type: u2
      - id: bootcount_a3200
        type: u2
      - id: resetcause_a3200
        type: u1
      - id: bootcause_a3200
        type: u1
      - id: uptime_a3200
        type: u4
      - id: bootcount_ax100
        type: u2
      - id: bootcause_ax100
        type: u4
      - id: i_pwm
        type: u2
      - id: fs_mounted
        type: u1
      - id: antennas_deployed
        type: u1
      - id: deploy_attempts1
        type: u2
      - id: deploy_attempts2
        type: u2
      - id: deploy_attempts3
        type: u2
      - id: deploy_attempts4
        type: u2
      - id: gyro_x
        type: s2
      - id: gyro_y
        type: s2
      - id: gyro_z
        type: s2
      - id: timestamp
        type: u4

  hk_header:
    seq:
      - id: protocol_version
        type: u1
      - id: type
        type: u1
      - id: version
        type: u1
      - id: satid
        type: u2

  beacon_element_header:
    seq:
      - id: checksum
        type: u2
      - id: timestamp
        type: u4
      - id: source
        type: u2

  hk_data:
    seq:
      - id: a3200_hktable0
        type: beacon_element_header
      - id: callsign
        type: strz
        encoding: ASCII
        size: 6
      - id: bobcat1
        type: strz
        encoding: ASCII
        size: 9
      - id: bat_v
        type: u2
      - id: bat_i_in
        type: u2
      - id: bat_i_out
        type: u2
      - id: solar1_i
        type: u2
      - id: solar1_v
        type: u2
      - id: solar2_i
        type: u2
      - id: solar2_v
        type: u2
      - id: solar3_i
        type: u2
      - id: solar3_v
        type: u2
      - id: novatel_i
        type: u2
      - id: sdr_i
        type: u2
      - id: bootcount_p31
        type: u4
      - id: bootcause_p31
        type: u1
      - id: bootcount_a3200
        type: u2
      - id: bootcause_a3200
        type: u1
      - id: resetcause_a3200
        type: u1
      - id: uptime_a3200
        type: u4
      - id: temp_mcu
        type: s2
      - id: i_gssb1
        type: u2
      - id: i_pwm
        type: u2
      - id: panel_temp1
        type: s2
      - id: panel_temp2
        type: s2
      - id: panel_temp3
        type: s2
      - id: panel_temp4
        type: s2
      - id: panel_temp5
        type: s2
      - id: panel_temp6
        type: s2
      - id: panel_temp7
        type: s2
      - id: panel_temp8
        type: s2
      - id: panel_temp9
        type: s2
      - id: p31_temp1
        type: s2
      - id: p31_temp2
        type: s2
      - id: p31_temp3
        type: s2
      - id: p31_temp4
        type: s2
      - id: p31_temp5
        type: s2
      - id: p31_temp6
        type: s2
      - id: flash0_free
        type: u4
      - id: flash1_free
        type: u4
      - id: coll_running
        type: u1
      - id: ax100_telemtable
        type: beacon_element_header
      - id: temp_brd
        type: s2
      - id: temp_pa
        type: s2
      - id: bgnd_rssi
        type: s2
      - id: tot_tx_count
        type: u4
      - id: tot_rx_count
        type: u4
      - id: tot_tx_bytes
        type: u4
      - id: tot_rx_bytes
        type: u4
      - id: bootcount_ax100
        type: u2
      - id: bootcause_ax100
        type: u4
