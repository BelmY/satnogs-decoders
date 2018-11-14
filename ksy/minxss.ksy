meta:
  id: minxss
  endian: be

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
          #0x11: s_frame

  ax25_header:
    seq:
      - id: dest_callsign_raw
        type: dest_callsign_raw
      - id: dest_ssid_raw
        type: u1
      - id: src_callsign_raw
        type: src_callsign_raw
      - id: src_ssid_raw
        type: u1
      - id: ctl
        type: u1
    instances:
      src_ssid:
        value: (src_ssid_raw & 0x0f) >> 1
      dest_ssid:
        value: (dest_ssid_raw & 0x0f) >> 1
  dest_callsign_raw:
    seq:
      - id: dest_callsign_ror
        process: ror(1)
        size: 6
        type: dest_callsign
  src_callsign_raw:
    seq:
      - id: src_callsign_ror
        process: ror(1)
        type: src_callsign
        size: 6
  dest_callsign:
    seq:
      - id: dest_callsign
        type: str
        encoding: ASCII
        size: 6
  src_callsign:
    seq:
      - id: src_callsign
        type: str
        encoding: ASCII
        size: 6

  i_frame:
    seq:
      - id: pid
        type: u1
      - id: ax25_info
        size-eos: true

  ui_frame:
    seq:
      - id: pid
        type: u1
      - id: ax25_info
        type: minxss_telemetry
        size-eos: true

  minxss_telemetry:
    seq:
      - id: minxss_start_sync_flag
        type: u2
      - id: minxss_beacon_type
        size: _io.size - 4
        type:
          switch-on: minxss_start_sync_flag
          cases:
            0x0819: minxss_hskp_data  # be
            0x081d: minxss_rt_data    # be
      - id: minxss_stop_sync_flag
        size: u2le
        contents: [0xa5, 0xa5]
  
  minxss_hskp_data:
    seq:
      - id: minxss_res_1
        type: u1
        repeat: expr
        repeat-expr: 10

      - id: minxss_spacecraft_flags
        type: u1
        doc: |
          minxss_spacecraft_mode:
          bit0 to bit2 = (minxss_spacecraft_flags & 0x0030) >> 4
          
          minxss_eclipse:
          bit3 = (minxss_spacecraft_flags & 0x08) >> 3

      - id: minxss_pointing_mode
        type: u1 
        doc: |
          minxss_pointing_mode:
          bit0 = minxss_pointing_mode & 0x01

      - id: minxss_res_2
        type: u2

      - id: minxss_cmd_accept_cnt
        type: u2le

      - id: minxss_res_3
        type: u1
        repeat: expr
        repeat-expr: 33

      - id: minxss_flight_model
        type: u1
        doc: |
          minxss_flight_model:
          flight_model = (minxss_flight_model & 0x0030) >> 4
          
          Fix mistaken flight model number in final flight software burn
          
          if flight_model == 3:
            flight_model = 2
          elif flight_model == 4:
            flight_model = 3  # This is the engineering test unit (AKA FlatSat)
          return flight_model

      - id: minxss_res_4
        type: u1
        repeat: expr
        repeat-expr: 34

      - id: minxss_cdh_board_temp
        type: s2le
        doc: '/ 256.0 # [deg C]'

      - id: minxss_enable_flags
        type: u2
        doc: |
          minxss_enable_x123:
          bit1 = (minxss_enable_flags & 0x0002) >> 1
          
          minxss_enable_sps:
          bit2 = (minxss_enable_flags & 0x0004) >> 2

      - id: minxss_res_5
        type: u1
        repeat: expr
        repeat-expr: 32

      - id: minxss_comm_brd_temp
        type: s2le
        doc: '/ 256.0 # [deg C]'

      - id: minxss_mbrd_temp
        type: s2le
        doc: '/ 256.0 # [deg C]'

      - id: minxss_res_6
        type: u2

      - id: minxss_eps_brd_temp
        type: s2le
        doc: '/ 256.0 # [deg C]'

      - id: minxss_res_7
        type: u2

      - id: minxss_battery_voltage
        type: u2le
        doc: '/ 6415.0 # [V]'

      - id: minxss_res_8
        type: u2

      - id: minxss_solar_panel_minus_y_curr
        type: u2le
        doc: '* 163.8 / 327.68 # [mA]'

      - id: minxss_solar_panel_minus_y_volt
        type: u2le
        doc: '* 32.76 / 32768.0 # [V]'

      - id: minxss_solar_panel_plus_x_curr
        type: u2le
        doc: '* 163.8 / 327.68 # [mA]'

      - id: minxss_solar_panel_plus_x_volt
        type: u2le
        doc: '* 32.76 / 32768.0 # [V]'

      - id: minxss_solar_panel_plus_y_curr
        type: u2le
        doc: '* 163.8 / 327.68 # [mA]'

      - id: minxss_solar_panel_plus_y_volt
        type: u2le
        doc: '* 32.76 / 32768.0 # [V]'

      - id: minxss_res_9
        type: u1
        repeat: expr
        repeat-expr: 12

      - id: minxss_solar_panel_minus_y_temp
        type: u2le
        doc: '* 0.1744 - 216.0 # [deg C]'

      - id: minxss_solar_panel_plus_x_temp
        type: u2le
        doc: '* 0.1744 - 216.0 # [deg C]'

      - id: minxss_solar_panel_plus_y_temp
        type: u2le
        doc: '* 0.1744 - 216.0 # [deg C]'

      - id: minxss_res_0
        type: u2

      - id: minxss_battery_chrg_curr
        type: u2le
        doc: '* 3.5568 - 61.6 # [mA]'

      - id: minxss_res_a
        type: u2

      - id: minxss_battery_dchrg_curr
        type: u2le
        doc: '* 3.5568 - 61.6 # [mA]'

      - id: minxss_battery_temp
        type: u2le
        doc: '* 0.18766 - 250.2 # [deg C]'

      - id: minxss_res_b
        type: u1
        repeat: expr
        repeat-expr: 16

      - id: minxss_xp
        type: u4le
        doc: '# [DN]'

      - id: minxss_res_c
        type: u1
        repeat: expr
        repeat-expr: 10

      - id: minxss_sps_x
        type: u2le
        doc: '/ 1e4 * 3.0 # [deg]'

      - id: minxss_sps_y
        type: u2le
        doc: '/ 1e4 * 3.0 # [deg]'

  minxss_rt_data:
    seq:
      - id: minxss_rt_data_raw
        size: _io.size - 4                      # minxss_start_sync_flag + minxss_stop_sync_flag

