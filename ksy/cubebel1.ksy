meta:
  id: cubebel1
  endian: le
doc: |
  :field cubebel1_dest_callsign: ax25_frame.ax25_header.dest_callsign_raw.callsign_ror.callsign
  :field cubebel1_src_callsign: ax25_frame.ax25_header.src_callsign_raw.callsign_ror.callsign
  :field cubebel1_src_ssid: ax25_frame.ax25_header.src_ssid_raw.ssid
  :field cubebel1_dest_ssid: ax25_frame.ax25_header.dest_ssid_raw.ssid
  :field cubebel1_ctl: ax25_frame.ax25_header.ctl
  :field cubebel1_pid: ax25_frame.payload.pid
  :field cubebel1_rf_id: ax25_frame.payload.ax25_info.cubebel1_header.cubebel1_rf_id
  :field cubebel1_opr_time: ax25_frame.payload.ax25_info.cubebel1_header.cubebel1_opr_time
  :field cubebel1_reboot_cnt: ax25_frame.payload.ax25_info.cubebel1_header.cubebel1_reboot_cnt
  :field cubebel1_mcusr: ax25_frame.payload.ax25_info.cubebel1_header.cubebel1_mcusr
  :field cubebel1_pamp_temp: ax25_frame.payload.ax25_info.cubebel1_header.cubebel1_pamp_temp
  :field cubebel1_pamp_voltage: ax25_frame.payload.ax25_info.cubebel1_header.cubebel1_pamp_voltage
  :field cubebel1_tx_attenuator: ax25_frame.payload.ax25_info.cubebel1_header.cubebel1_tx_attenuator
  :field cubebel1_battery_voltage: ax25_frame.payload.ax25_info.cubebel1_header.cubebel1_battery_voltage
  :field cubebel1_system_voltage: ax25_frame.payload.ax25_info.cubebel1_header.cubebel1_header.cubebel1_system_voltage
  :field cubebel1_seq_number: ax25_frame.payload.ax25_info.cubebel1_header.
  :field cubebel1_pwr_save_state: ax25_frame.payload.ax25_info.cubebel1_header.cubebel1_pwr_save_state
  :field cubebel1_modem_on_period: ax25_frame.payload.ax25_info.cubebel1_header.cubebel1_modem_on_period
  :field cubebel1_obc_can_status: ax25_frame.payload.ax25_info.cubebel1_header.cubebel1_obc_can_status
  :field cubebel1_eps_can_status: ax25_frame.payload.ax25_info.cubebel1_header.cubebel1_eps_can_status
  :field cubebel1_info_size: ax25_frame.payload.ax25_info.cubebel1_header.cubebel1_info_size
  :field cubebel1_data_type: ax25_frame.payload.ax25_info.cubebel1_header.cubebel1_data_type
  :field cubebel1_fec_crc_status: ax25_frame.payload.ax25_info.cubebel1_data.cubebel1_fec_crc_status
  :field cubebel1_rx_msg_state: ax25_frame.payload.ax25_info.cubebel1_data.cubebel1_rx_msg_state
  :field cubebel1_rssi: ax25_frame.payload.ax25_info.cubebel1_data.cubebel1_rssi
  :field cubebel1_rf_msg: ax25_frame.payload.ax25_info.cubebel1_data.cubebel1_rf_msg
  :field cubebel1_current_to_gamma: ax25_frame.payload.ax25_info.cubebel1_data.cubebel1_current_to_gamma
  :field cubebel1_current_to_irsensor: ax25_frame.payload.ax25_info.cubebel1_data.cubebel1_current_to_irsensor
  :field cubebel1_current_to_extflash: ax25_frame.payload.ax25_info.cubebel1_data.cubebel1_current_to_extflash
  :field cubebel1_current_to_solarsens: ax25_frame.payload.ax25_info.cubebel1_data.cubebel1_current_to_solarsens
  :field cubebel1_current_to_magnetcoils: ax25_frame.payload.ax25_info.cubebel1_data.cubebel1_current_to_magnetcoils
  :field cubebel1_current_to_coil_x: ax25_frame.payload.ax25_info.cubebel1_data.cubebel1_current_to_coil_x
  :field cubebel1_current_to_coil_y: ax25_frame.payload.ax25_info.cubebel1_data.cubebel1_current_to_coil_y
  :field cubebel1_current_to_coil_pz: ax25_frame.payload.ax25_info.cubebel1_data.cubebel1_current_to_coil_pz
  :field cubebel1_current_to_coil_nz: ax25_frame.payload.ax25_info.cubebel1_data.cubebel1_current_to_coil_nz
  :field cubebel1_battery1_temp: ax25_frame.payload.ax25_info.cubebel1_data.cubebel1_battery1_temp
  :field cubebel1_battery2_temp: ax25_frame.payload.ax25_info.cubebel1_data.cubebel1_battery2_temp
  :field cubebel1_numb_oc_obc: ax25_frame.payload.ax25_info.cubebel1_data.cubebel1_numb_oc_obc
  :field cubebel1_numb_oc_out_gamma: ax25_frame.payload.ax25_info.cubebel1_data.cubebel1_numb_oc_out_gamma
  :field cubebel1_numb_oc_out_rf1: ax25_frame.payload.ax25_info.cubebel1_data.cubebel1_numb_oc_out_rf1
  :field cubebel1_numb_oc_out_rf2: ax25_frame.payload.ax25_info.cubebel1_data.cubebel1_numb_oc_out_rf2
  :field cubebel1_numb_oc_out_flash: ax25_frame.payload.ax25_info.cubebel1_data.cubebel1_numb_oc_out_flash
  :field cubebel1_numb_oc_out_irsens: ax25_frame.payload.ax25_info.cubebel1_data.cubebel1_numb_oc_out_irsens
  :field cubebel1_numb_oc_coil_x: ax25_frame.payload.ax25_info.cubebel1_data.cubebel1_numb_oc_coil_x
  :field cubebel1_numb_oc_coil_y: ax25_frame.payload.ax25_info.cubebel1_data.cubebel1_numb_oc_coil_y
  :field cubebel1_numb_oc_coil_pz: ax25_frame.payload.ax25_info.cubebel1_data.cubebel1_numb_oc_coil_pz
  :field cubebel1_numb_oc_coil_nz: ax25_frame.payload.ax25_info.cubebel1_data.cubebel1_numb_oc_coil_nz
  :field cubebel1_numb_oc_magnetcoils: ax25_frame.payload.ax25_info.cubebel1_data.cubebel1_numb_oc_magnetcoils
  :field cubebel1_numb_oc_solarsens: ax25_frame.payload.ax25_info.cubebel1_data.cubebel1_numb_oc_solarsens
  :field cubebel1_reset_num: ax25_frame.payload.ax25_info.cubebel1_data.cubebel1_reset_num
  :field cubebel1_reset_reason: ax25_frame.payload.ax25_info.cubebel1_data.cubebel1_reset_reason
  :field cubebel1_pwr_sat: ax25_frame.payload.ax25_info.cubebel1_data.cubebel1_pwr_sat
  :field cubebel1_pwr_rf1: ax25_frame.payload.ax25_info.cubebel1_data.cubebel1_pwr_rf1
  :field cubebel1_pwr_rf2: ax25_frame.payload.ax25_info.cubebel1_data.cubebel1_pwr_rf2
  :field cubebel1_pwr_sunsensor: ax25_frame.payload.ax25_info.cubebel1_data.cubebel1_pwr_sunsensor
  :field cubebel1_pwr_gamma: ax25_frame.payload.ax25_info.cubebel1_data.cubebel1_pwr_gamma
  :field cubebel1_pwr_irsensor: ax25_frame.payload.ax25_info.cubebel1_data.cubebel1_pwr_irsensor
  :field cubebel1_pwr_flash: ax25_frame.payload.ax25_info.cubebel1_data.cubebel1_pwr_flash
  :field cubebel1_pwr_magnet_x: ax25_frame.payload.ax25_info.cubebel1_data.cubebel1_pwr_magnet_x
  :field cubebel1_pwr_magnet_y: ax25_frame.payload.ax25_info.cubebel1_data.cubebel1_pwr_magnet_y
  :field cubebel1_pwr_magnet_z: ax25_frame.payload.ax25_info.cubebel1_data.cubebel1_pwr_magnet_z
  :field cubebel1_sys_time: ax25_frame.payload.ax25_info.cubebel1_data.cubebel1_sys_time
  :field cubebel1_adc_correctness: ax25_frame.payload.ax25_info.cubebel1_data.cubebel1_adc_correctness
  :field cubebel1_t_adc1: ax25_frame.payload.ax25_info.cubebel1_data.cubebel1_t_adc1
  :field cubebel1_t_adc2: ax25_frame.payload.ax25_info.cubebel1_data.cubebel1_t_adc2
  :field cubebel1_stepup_current: ax25_frame.payload.ax25_info.cubebel1_data.cubebel1_stepup_current
  :field cubebel1_stetup_voltage: ax25_frame.payload.ax25_info.cubebel1_data.cubebel1_stetup_voltage
  :field cubebel1_afterbq_current: ax25_frame.payload.ax25_info.cubebel1_data.cubebel1_afterbq_current
  :field cubebel1_battery_voltage: ax25_frame.payload.ax25_info.cubebel1_data.cubebel1_battery_voltage
  :field cubebel1_sys_voltage_50: ax25_frame.payload.ax25_info.cubebel1_data.cubebel1_sys_voltage_50
  :field cubebel1_sys_voltage_33: ax25_frame.payload.ax25_info.cubebel1_data.cubebel1_sys_voltage_33
  :field cubebel1_eps_uc_current: ax25_frame.payload.ax25_info.cubebel1_data.cubebel1_eps_uc_current
  :field cubebel1_obc_uc_current: ax25_frame.payload.ax25_info.cubebel1_data.cubebel1_obc_uc_current
  :field cubebel1_rf1_uc_current: ax25_frame.payload.ax25_info.cubebel1_data.cubebel1_rf1_uc_current
  :field cubebel1_rf2_uc_current: ax25_frame.payload.ax25_info.cubebel1_data.cubebel1_rf2_uc_current
  :field cubebel1_solar_voltage: ax25_frame.payload.ax25_info.cubebel1_data.cubebel1_solar_voltage
  :field cubebel1_side_x_current: ax25_frame.payload.ax25_info.cubebel1_data.cubebel1_side_x_current
  :field cubebel1_side_py_current: ax25_frame.payload.ax25_info.cubebel1_data.cubebel1_side_py_current
  :field cubebel1_side_ny_current: ax25_frame.payload.ax25_info.cubebel1_data.cubebel1_side_ny_current
  :field cubebel1_side_pz_current: ax25_frame.payload.ax25_info.cubebel1_data.cubebel1_side_pz_current
  :field cubebel1_side_nz_current: ax25_frame.payload.ax25_info.cubebel1_data.cubebel1_side_nz_current

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
        type: cubebel1_frame
        size-eos: true

  cubebel1_frame:
    seq:
      - id: cubebel1_header
        type: cubebel1_header
      - id: cubebel1_data
        if: cubebel1_header.cubebel1_info_size > 0
        type:
          switch-on: cubebel1_header.cubebel1_data_type
          cases:
            #0x00: rf_beacon
            0x01: rf_response
            #0x02: rf_image
            0x03: rf_message
            #0x04: rf_command_list
            #0x05: rf_current_settings
            #0x06: rf_default_settings
            #0x07: rf_logo
            #0x08: rf_saved_eps_tel
            #0x09: rf_saved_obc_tel
            #0x80: obc_tlm
            0xfe: eps_full_tel
            0xff: eps_short_tel

  cubebel1_header:
    seq:
      - id: cubebel1_rf_id
        type: u1
      - id: cubebel1_opr_time
        type: u2
      - id: cubebel1_reboot_cnt
        type: u1
      - id: cubebel1_mcusr
        type: u1
      - id: cubebel1_pamp_temp
        type: u2
      - id: cubebel1_pamp_voltage
        type: u1
      - id: cubebel1_tx_attenuator
        type: u1
      - id: cubebel1_battery_voltage
        type: u2
      - id: cubebel1_system_voltage
        type: u2
      - id: cubebel1_seq_number
        type: u2
      - id: cubebel1_pwr_save_state
        type: u1
      - id: cubebel1_modem_on_period
        type: u2
      - id: cubebel1_obc_can_status
        type: u1
      - id: cubebel1_eps_can_status
        type: u1
      - id: cubebel1_info_size
        type: u1
      - id: cubebel1_data_type
        type: u1

  rf_response:
    seq:
      - id: cubebel1_fec_crc_status
        type: b1
      - id: cubebel1_rx_msg_state
        type: b7
      - id: cubebel1_rssi
        type: u1

  rf_message:
    seq:
      - id: cubebel1_rf_msg
        #type: str
        #encoding: ASCII
        size: _parent.cubebel1_header.cubebel1_info_size - 1

  eps_full_tel:
    seq:
      - id: eps_short_tel
        type: eps_short_tel
      - id: cubebel1_current_to_gamma
        type: b12
      - id: cubebel1_current_to_irsensor
        type: b12
      - id: cubebel1_current_to_extflash
        type: b12
      - id: cubebel1_current_to_solarsens
        type: b12
      - id: cubebel1_current_to_magnetcoils
        type: b12
      - id: cubebel1_current_to_coil_x
        type: b12
      - id: cubebel1_current_to_coil_y
        type: b12
      - id: cubebel1_current_to_coil_pz
        type: b12
      - id: cubebel1_current_to_coil_nz
        type: b12
      - id: cubebel1_battery1_temp
        type: b12
      - id: cubebel1_battery2_temp
        type: b12
      - id: cubebel1_numb_oc_obc
        type: u1
      - id: cubebel1_numb_oc_out_gamma
        type: u1
      - id: cubebel1_numb_oc_out_rf1
        type: u1
      - id: cubebel1_numb_oc_out_rf2
        type: u1
      - id: cubebel1_numb_oc_out_flash
        type: u1
      - id: cubebel1_numb_oc_out_irsens
        type: u1
      - id: cubebel1_numb_oc_coil_x
        type: u1
      - id: cubebel1_numb_oc_coil_y
        type: u1
      - id: cubebel1_numb_oc_coil_pz
        type: u1
      - id: cubebel1_numb_oc_coil_nz
        type: u1
      - id: cubebel1_numb_oc_magnetcoils
        type: u1
      - id: cubebel1_numb_oc_solarsens
        type: u1
      - id: cubebel1_reset_num
        type: u2
      - id: cubebel1_reset_reason
        type: u1
      - id: cubebel1_pwr_sat
        type: b1
      - id: cubebel1_pwr_rf1
        type: b1
      - id: cubebel1_pwr_rf2
        type: b1
      - id: cubebel1_pwr_sunsensor
        type: b1
      - id: cubebel1_pwr_gamma
        type: b1
      - id: cubebel1_pwr_irsensor
        type: b1
      - id: cubebel1_pwr_flash
        type: b1
      - id: cubebel1_pwr_magnet_x
        type: b1
      - id: cubebel1_pwr_magnet_y
        type: b1
      - id: cubebel1_pwr_magnet_z
        type: b1

  eps_short_tel:
    seq:
      - id: cubebel1_sys_time
        type: u2
      - id: cubebel1_adc_correctness
        type: b2
      - id: cubebel1_t_adc1
        type: b12
      - id: cubebel1_t_adc2
        type: b12
      - id: cubebel1_stepup_current
        type: b12
      - id: cubebel1_stetup_voltage
        type: b12
      - id: cubebel1_afterbq_current
        type: b12
      - id: cubebel1_battery_voltage
        type: b12
      - id: cubebel1_sys_voltage_50
        type: b12
      - id: cubebel1_sys_voltage_33
        type: b12
      - id: cubebel1_eps_uc_current
        type: b12
      - id: cubebel1_obc_uc_current
        type: b10
      - id: cubebel1_rf1_uc_current
        type: b10
      - id: cubebel1_rf2_uc_current
        type: b12
      - id: cubebel1_solar_voltage
        type: b12
      - id: cubebel1_side_x_current
        type: b12
      - id: cubebel1_side_py_current
        type: b12
      - id: cubebel1_side_ny_current
        type: b12
      - id: cubebel1_side_pz_current
        type: b12
      - id: cubebel1_side_nz_current
        type: b12
