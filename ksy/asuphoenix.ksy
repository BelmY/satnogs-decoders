---
meta:
  id: asuphoenix
  endian: be
doc: |
  :field dest_callsign: ax25_frame.ax25_header.dest_callsign_raw.callsign_ror.callsign
  :field dest_ssid: ax25_frame.ax25_header.dest_ssid_raw.ssid
  :field src_callsign: ax25_frame.ax25_header.src_callsign_raw.callsign_ror.callsign
  :field src_ssid: ax25_frame.ax25_header.src_ssid_raw.ssid
  :field ctl: ax25_frame.ax25_header.ctl
  :field pid: ax25_frame.payload.pid
  :field comms_idx: ax25_frame.payload.ax25_info.healthbeacon_ascii.comms_idx_int
  :field total_obc_resets: ax25_frame.payload.ax25_info.healthbeacon_ascii.total_obc_resets
  :field current_bat_volt: ax25_frame.payload.ax25_info.healthbeacon_ascii.current_bat_volt_flt
  :field obc_disk_space_used_mb: ax25_frame.payload.ax25_info.healthbeacon_ascii.obc_disk_space_used_str
  :field obc_clock: ax25_frame.payload.ax25_info.healthbeacon_ascii.obc_clock
  :field current_3v3: ax25_frame.payload.ax25_info.healthbeacon_ascii.current_3v3_flt
  :field current_5v: ax25_frame.payload.ax25_info.healthbeacon_ascii.current_5v_flt
  :field current_adcs: ax25_frame.payload.ax25_info.healthbeacon_ascii.current_adcs_flt
  :field eps_charge_volt_bat: ax25_frame.payload.ax25_info.healthbeacon_ascii.eps_charge_volt_bat_flt
  :field eps_charge_current_bat: ax25_frame.payload.ax25_info.healthbeacon_ascii.eps_charge_current_bat
  :field eps_temp: ax25_frame.payload.ax25_info.healthbeacon_ascii.eps_temp
  :field bat_temp: ax25_frame.payload.ax25_info.healthbeacon_ascii.bat_temp
  :field brownouts: ax25_frame.payload.ax25_info.healthbeacon_ascii.brownouts
  :field ax100_rssi: ax25_frame.payload.ax25_info.healthbeacon_ascii.ax100_rssi
  :field ax100_board_temp: ax25_frame.payload.ax25_info.healthbeacon_ascii.ax100_board_temp
  :field gps_sats_used: ax25_frame.payload.ax25_info.healthbeacon_ascii.gps_sats_used
  :field ants_deployed: ax25_frame.payload.ax25_info.healthbeacon_ascii.ants_deployed
  :field gpio_state: ax25_frame.payload.ax25_info.healthbeacon_ascii.gpio_state

  Attention: `rpt_callsign` cannot be accessed because `rpt_instance` is an
  array of unknown size at the beginning of the parsing process! Left an
  example in here.

seq:
  - id: ax25_frame
    type: ax25_frame
    doc-ref: 'https://www.tapr.org/pub_ax25.html'
types:
  ax25_frame:
    seq:
      - id: ax25_header
        type: ax25_header
      - id: payload
        type:
          switch-on: ax25_header.ctl & 0x13
          cases:
            0x03: ui_frame
            0x13: ui_frame
            0x00: i_frame
            0x02: i_frame
            0x10: i_frame
            0x12: i_frame
  ax25_header:
    seq:
      - id: dest_callsign_raw
        type: callsign_raw
      - id: dest_ssid_raw
        type: ssid_mask
      - id: src_callsign_raw
        type: callsign_raw
      - id: src_ssid_raw
        type: ssid_mask
# ASU Phoenix does not follow the AX.25 specs and produces corrupted headers.
# Thus the following unroll mechanism does not work!
#     - id: repeater
#       type: repeater
#       if: (src_ssid_raw.ssid_mask & 0x01) == 0
#       doc: 'Repeater flag is set!'
      - id: ctl
        type: u1
  repeater:
    seq:
      - id: rpt_instance
        type: repeaters
        repeat: until
        repeat-until: ((_.rpt_ssid_raw.ssid_mask & 0x1) == 0x1)
        doc: 'Repeat until no repeater flag is set!'
  repeaters:
    seq:
      - id: rpt_callsign_raw
        type: callsign_raw
      - id: rpt_ssid_raw
        type: ssid_mask
  callsign_raw:
    seq:
      - id: callsign_ror
        process: ror(0)
        size: 6
        type: callsign
  callsign:
    seq:
      - id: callsign
        type: str
        encoding: ASCII
        size: 6
  ssid_mask:
    seq:
      - id: ssid_mask
        type: u1
    instances:
      ssid:
        value: (ssid_mask & 0x0f) >> 1
  i_frame:
    seq:
      - id: pid
        type: u1
      - id: ax25_info
        type: ax25_info_data
        size-eos: true
  ui_frame:
    seq:
      - id: pid
        type: u1
      - id: ax25_info
        type: ax25_info_data
        size-eos: true
  ax25_info_data:
    seq:
      - id: magic
        size: 4
      - id: healthbeacon_ascii
        type: health_beacon_t
  health_beacon_t:
    doc-ref: http://phxcubesat.asu.edu/content/amateur-operations
    seq:
      - id: beacon_type_magic
        contents: [0x68, 0x6b, 0x3a]
        doc: |
          Health Beacon indication = 'hk:'
      - id: int_comms_idx_str
        type: str
        terminator: 0x2c
        encoding: utf-8
        doc: |
          Internal Communications Index
      - id: total_obc_resets_str
        type: str
        terminator: 0x2c
        encoding: utf-8
        doc: |
          Number of total OBC resets
      - id: current_bat_volt_int_str
        type: str
        terminator: 0x2e
        encoding: utf-8
        doc: |
          Current Battery Voltage
      - id: current_bat_volt_frac_str
        type: str
        terminator: 0x2c
        encoding: utf-8
        doc: |
          Current Battery Voltage
      - id: obc_disk_space_used_str
        type: str
        terminator: 0x2c
        encoding: utf-8
        doc: |
          Amount of disk space currently used on the OBC
      - id: obc_clock_str
        type: str
        terminator: 0x2c
        encoding: utf-8
        doc: |
          Current time of the OBC clock. It is formatted as an RTC (Unix)
          timestamp, which is the number of seconds since Jan 01, 1970
          Keep in mind that this time is 7 hours ahead of the current time in
          AZ. Therefore, this should be taken into account before assessing
          clock drift
      - id: current_3v3_int_str
        type: str
        terminator: 0x2e
        encoding: utf-8
        doc: |
          Current draw from everything getting 3.3V (in mA)
          (Note: This is the nominal voltage draw when the GPS, OBC, and AX100
          are all getting power)
      - id: current_3v3_frac_str
        type: str
        terminator: 0x2c
        encoding: utf-8
        doc: |
          Current draw from everything getting 3.3V (in mA)
          (Note: This is the nominal voltage draw when the GPS, OBC, and AX100
          are all getting power)
      - id: current_5v_int_str
        type: str
        terminator: 0x2e
        encoding: utf-8
        doc: |
          Current draw from everything getting 5V (in mA)
      - id: current_5v_frac_str
        type: str
        terminator: 0x2c
        encoding: utf-8
        doc: |
          Current draw from everything getting 5V (in mA)
      - id: current_adcs_int_str
        type: str
        terminator: 0x2e
        encoding: utf-8
        doc: |
          Current draw from power switch 7, the switch to the ADCS
      - id: current_adcs_frac_str
        type: str
        terminator: 0x2c
        encoding: utf-8
        doc: |
          Current draw from power switch 7, the switch to the ADCS
      - id: eps_charge_volt_bat_int_str
        type: str
        terminator: 0x2e
        encoding: utf-8
        doc: |
          Voltage the battery is being charged at via the EPS
      - id: eps_charge_volt_bat_frac_str
        type: str
        terminator: 0x2c
        encoding: utf-8
        doc: |
          Voltage the battery is being charged at via the EPS
      - id: eps_charge_current_bat_str
        type: str
        terminator: 0x2c
        encoding: utf-8
        doc: |
          Current the battery is being charged with (in mA)
      - id: eps_temp_str
        type: str
        terminator: 0x2c
        encoding: utf-8
        doc: |
          EPS temperature (in K)
      - id: bat_temp_str
        type: str
        terminator: 0x2c
        encoding: utf-8
        doc: |
          Battery temperature (in K)
      - id: brownouts_str
        type: str
        terminator: 0x2c
        encoding: utf-8
        doc: |
          Number of Brownouts
      - id: ax100_rssi_str
        type: str
        terminator: 0x2c
        encoding: utf-8
        doc: |
          AX-100 Received Signal Strength Index (RSSI)
      - id: ax100_board_temp_str
        type: str
        terminator: 0x2c
        encoding: utf-8
        doc: |
          AX-100 board temperature
      - id: gps_sats_used_str
        type: str
        terminator: 0x2c
        encoding: utf-8
        doc: |
          Number of satellites used in the last GPS solution
      - id: ants_deployed_str
        type: str
        terminator: 0x2c
        encoding: utf-8
        doc: |
          Number of deployed antennas. This will return a value if I2C
          communication with the antenna is working and deploys the antenna)
      - id: gpio_state_str
        type: str
        size: 1
        encoding: utf-8
        doc: |
          GPIO State (0 = switch is on the ADCS, 1 = switch is on the FLIR camera)
    instances:
      comms_idx_int:
        value: int_comms_idx_str.to_i
      total_obc_resets:
        value: total_obc_resets_str.to_i
      current_bat_volt_flt:
        value: current_bat_volt_int_str.to_i + (((current_bat_volt_int_str.to_i < 0).to_i)*(-2)+1) * current_bat_volt_frac_str.to_i / 100.0
      obc_clock:
        value: obc_clock_str.to_i
      current_3v3_flt:
        value: current_3v3_int_str.to_i + (((current_3v3_int_str.to_i < 0).to_i)*(-2)+1) * current_3v3_frac_str.to_i / 1000.0
      current_5v_flt:
        value: current_5v_int_str.to_i + (((current_5v_int_str.to_i < 0).to_i)*(-2)+1) * current_5v_frac_str.to_i / 1000.0
      current_adcs_flt:
        value: current_adcs_int_str.to_i + (((current_adcs_int_str.to_i < 0).to_i)*(-2)+1) * current_adcs_frac_str.to_i / 1000.0
      eps_charge_volt_bat_flt:
        value: eps_charge_volt_bat_int_str.to_i + (((eps_charge_volt_bat_int_str.to_i < 0).to_i)*(-2)+1) * eps_charge_volt_bat_frac_str.to_i / 100.0
      eps_charge_current_bat:
        value: eps_charge_current_bat_str.to_i
      eps_temp:
        value: eps_temp_str.to_i
      bat_temp:
        value: bat_temp_str.to_i
      brownouts:
        value: brownouts_str.to_i
      ax100_rssi:
        value: ax100_rssi_str.to_i
      ax100_board_temp:
        value: ax100_board_temp_str.to_i
      gps_sats_used:
        value: gps_sats_used_str.to_i
      ants_deployed:
        value: ants_deployed_str.to_i
      gpio_state:
        value: gpio_state_str.to_i
