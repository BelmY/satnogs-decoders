meta:
  id: uwe4
  endian: be
doc: |
  :field dest_callsign: ax25_frame.ax25_header.dest_callsign_raw.callsign_ror.callsign
  :field src_callsign: ax25_frame.ax25_header.src_callsign_raw.callsign_ror.callsign
  :field src_ssid: ax25_frame.ax25_header.src_ssid_raw.ssid
  :field dest_ssid: ax25_frame.ax25_header.dest_ssid_raw.ssid
  :field ctl: ax25_frame.ax25_header.ctl
  :field pid: ax25_frame.payload.pid
  :field beacon_header_flags1: ax25_frame.payload.ax25_info.beacon_header.beacon_header_flags1
  :field beacon_header_flags2: ax25_frame.payload.ax25_info.beacon_header.beacon_header_flags2
  :field beacon_header_packet_id: ax25_frame.payload.ax25_info.beacon_header.beacon_header_packet_id
  :field beacon_header_fm_system_id: ax25_frame.payload.ax25_info.beacon_header.beacon_header_fm_system_id
  :field beacon_header_fm_subsystem_id: ax25_frame.payload.ax25_info.beacon_header.beacon_header_fm_subsystem_id
  :field beacon_header_to_system_id: ax25_frame.payload.ax25_info.beacon_header.beacon_header_to_system_id
  :field beacon_header_to_subsystem_id: ax25_frame.payload.ax25_info.beacon_header.beacon_header_to_subsystem_id
  :field beacon_header_api: ax25_frame.payload.ax25_info.beacon_header.beacon_header_api
  :field beacon_header_payload_size: ax25_frame.payload.ax25_info.beacon_header.beacon_header_payload_size
  :field beacon_payload_command: ax25_frame.payload.ax25_info.beacon_payload_command
  :field beacon_payload_var_id: ax25_frame.payload.ax25_info.beacon_payload_var_id
  :field beacon_payload_typeandlength: ax25_frame.payload.ax25_info.beacon_payload_typeandlength
  :field beacon_payload_timestamp: ax25_frame.payload.ax25_info.beacon_payload_timestamp
  :field beacon_payload_beacon_rate: ax25_frame.payload.ax25_info.beacon_payload_beacon_rate
  :field beacon_payload_vals_out_of_range: ax25_frame.payload.ax25_info.beacon_payload_vals_out_of_range
  :field beacon_payload_uptime: ax25_frame.payload.ax25_info.beacon_payload_uptime
  :field beacon_payload_subsystem_status_bitmap: ax25_frame.payload.ax25_info.beacon_payload_subsystem_status.beacon_payload_subsystem_status_bitmap
  :field beacon_payload_batt_a_temp: ax25_frame.payload.ax25_info.beacon_payload_batt_a_temp
  :field beacon_payload_batt_a_state_of_charge: ax25_frame.payload.ax25_info.beacon_payload_batt_a_state_of_charge
  :field beacon_payload_batt_b_temp: ax25_frame.payload.ax25_info.beacon_payload_batt_b_temp
  :field beacon_payload_batt_b_state_of_charge: ax25_frame.payload.ax25_info.beacon_payload_batt_b_state_of_charge
  :field beacon_payload_batt_a_current: ax25_frame.payload.ax25_info.beacon_payload_batt_a_current
  :field beacon_payload_batt_a_voltage: ax25_frame.payload.ax25_info.beacon_payload_batt_a_voltage
  :field beacon_payload_batt_b_current: ax25_frame.payload.ax25_info.beacon_payload_batt_b_current
  :field beacon_payload_batt_b_voltage: ax25_frame.payload.ax25_info.beacon_payload_batt_b_voltage
  :field beacon_payload_power_consumption: ax25_frame.payload.ax25_info.beacon_payload_power_consumption
  :field beacon_payload_obc_temp: ax25_frame.payload.ax25_info.beacon_payload_obc_temp
  :field beacon_payload_panel_pos_x_temp: ax25_frame.payload.ax25_info.beacon_payload_panel_pos_x_temp
  :field beacon_payload_panel_neg_x_temp: ax25_frame.payload.ax25_info.beacon_payload_panel_neg_x_temp
  :field beacon_payload_panel_pos_y_temp: ax25_frame.payload.ax25_info.beacon_payload_panel_pos_y_temp
  :field beacon_payload_panel_neg_y_temp: ax25_frame.payload.ax25_info.beacon_payload_panel_neg_y_temp
  :field beacon_payload_panel_pos_z_temp: ax25_frame.payload.ax25_info.beacon_payload_panel_pos_z_temp
  :field beacon_payload_panel_neg_z_temp: ax25_frame.payload.ax25_info.beacon_payload_panel_neg_z_temp
  :field beacon_payload_freq: ax25_frame.payload.ax25_info.beacon_payload_freq
  :field beacon_payload_crc: ax25_frame.payload.ax25_info.beacon_payload_crc

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
        type: callsign_raw
      - id: dest_ssid_raw
        type: ssid_mask
      - id: src_callsign_raw
        type: callsign_raw
      - id: src_ssid_raw
        type: ssid_mask
      - id: ctl
        type: u1

  callsign_raw:
    seq:
      - id: callsign_ror
        process: ror(1)
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
        size-eos: true

  ui_frame:
    seq:
      - id: pid
        type: u1
      - id: ax25_info
        type: beacon
        size-eos: true

  beacon:
    seq:
      - id: beacon_header
        type: beacon_header
        size: 10
      - id: beacon_payload_command
        type: u1
      - id: beacon_payload_var_id
        type: u2le
      - id: beacon_payload_typeandlength
        type: u2le
        doc: 'to be ignored'
      - id: beacon_payload_timestamp
        size: 6
        doc: '48 bit unix timestamp'
      - id: beacon_payload_beacon_rate
        type: u4le
        doc: 'ms/1024 [s]'
      - id: beacon_payload_vals_out_of_range
        type: u2le
      - id: beacon_payload_uptime
        type: u4le
        doc: '[s]'
      - id: beacon_payload_subsystem_status
        type: bitmap16_subsystem_status
        size: 2
      - id: beacon_payload_batt_a_temp
        type: s1
        doc: '[degC]'
      - id: beacon_payload_batt_a_state_of_charge
        type: s1
        doc: '[%]'
      - id: beacon_payload_batt_b_temp
        type: s1
        doc: '[degC]'
      - id: beacon_payload_batt_b_state_of_charge
        type: s1
        doc: '[%]'
      - id: beacon_payload_batt_a_current
        type: s2le
        doc: '[mA]'
      - id: beacon_payload_batt_a_voltage
        type: s2le
        doc: '[mV]'
      - id: beacon_payload_batt_b_current
        type: s2le
        doc: '[mA]'
      - id: beacon_payload_batt_b_voltage
        type: s2le
        doc: '[mV]'
      - id: beacon_payload_power_consumption
        type: s2le
        doc: '[mW]'
      - id: beacon_payload_obc_temp
        type: s1
        doc: '[degC]'
      - id: beacon_payload_panel_pos_x_temp
        type: s1
        doc: '[degC]'
      - id: beacon_payload_panel_neg_x_temp
        type: s1
        doc: '[degC]'
      - id: beacon_payload_panel_pos_y_temp
        type: s1
        doc: '[degC]'
      - id: beacon_payload_panel_neg_y_temp
        type: s1
        doc: '[degC]'
      - id: beacon_payload_panel_pos_z_temp
        type: s1
        doc: '[degC]'
      - id: beacon_payload_panel_neg_z_temp
        type: s1
        doc: '[degC]'
      - id: beacon_payload_freq
        type: u2le
        doc: 'val + 400000 [kHz]'
      - id: beacon_payload_crc
        type: u2le
        doc: 'CRC of Header+Payload (Fletchers Algorithm)'

  bitmap16_subsystem_status:
    seq:
      - id: beacon_payload_subsystem_status_bitmap
        size: 2

  beacon_header:
    seq:
      - id: beacon_header_flags1
        type: u1
      - id: beacon_header_flags2
        type: u1
      - id: beacon_header_packet_id
        type: u2le
      - id: beacon_header_fm_system_id
        type: u1
      - id: beacon_header_fm_subsystem_id
        type: u1
      - id: beacon_header_to_system_id
        type: u1
      - id: beacon_header_to_subsystem_id
        type: u1
      - id: beacon_header_api
        type: u1
      - id: beacon_header_payload_size
        type: u1

