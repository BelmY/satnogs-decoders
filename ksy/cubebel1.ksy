meta:
  id: cubebel1
  endian: le
doc-ref: 'https://bsusat.com/media/docs/2018/bsusat-1_data_struct.xlsx'
doc: |
  :field dest_callsign: ax25_frame.ax25_header.dest_callsign_raw.callsign_ror.callsign
  :field src_callsign: ax25_frame.ax25_header.src_callsign_raw.callsign_ror.callsign
  :field src_ssid: ax25_frame.ax25_header.src_ssid_raw.ssid
  :field dest_ssid: ax25_frame.ax25_header.dest_ssid_raw.ssid
  :field ctl: ax25_frame.ax25_header.ctl
  :field pid: ax25_frame.payload.pid
  :field hdr_rf_id: ax25_frame.payload.ax25_info.header.rf_id
  :field hdr_opr_time: ax25_frame.payload.ax25_info.header.opr_time
  :field hdr_reboot_cnt: ax25_frame.payload.ax25_info.header.reboot_cnt
  :field hdr_mcusr: ax25_frame.payload.ax25_info.header.mcusr
  :field hdr_pamp_temp: ax25_frame.payload.ax25_info.header.pamp_temp
  :field hdr_pamp_voltage: ax25_frame.payload.ax25_info.header.pamp_voltage
  :field hdr_tx_attenuator: ax25_frame.payload.ax25_info.header.tx_attenuator
  :field hdr_battery_voltage: ax25_frame.payload.ax25_info.header.battery_voltage
  :field hdr_system_voltage: ax25_frame.payload.ax25_info.header.system_voltage
  :field hdr_seq_number: ax25_frame.payload.ax25_info.header.
  :field hdr_pwr_save_state: ax25_frame.payload.ax25_info.header.pwr_save_state
  :field hdr_modem_on_period: ax25_frame.payload.ax25_info.header.modem_on_period
  :field hdr_obc_can_status: ax25_frame.payload.ax25_info.header.obc_can_status
  :field hdr_eps_can_status: ax25_frame.payload.ax25_info.header.eps_can_status
  :field hdr_info_size: ax25_frame.payload.ax25_info.header.info_size
  :field hdr_data_type: ax25_frame.payload.ax25_info.header.data_type
  :field fec_crc_status: ax25_frame.payload.ax25_info.data.fec_crc_status
  :field rx_msg_state: ax25_frame.payload.ax25_info.data.rx_msg_state
  :field rssi: ax25_frame.payload.ax25_info.data.rssi
  :field rf_msg: ax25_frame.payload.ax25_info.data.rf_msg
  :field current_to_gamma: ax25_frame.payload.ax25_info.data.current_to_gamma
  :field current_to_irsensor: ax25_frame.payload.ax25_info.data.current_to_irsensor
  :field current_to_extflash: ax25_frame.payload.ax25_info.data.current_to_extflash
  :field current_to_solarsens: ax25_frame.payload.ax25_info.data.current_to_solarsens
  :field current_to_magnetcoils: ax25_frame.payload.ax25_info.data.current_to_magnetcoils
  :field current_to_coil_x: ax25_frame.payload.ax25_info.data.current_to_coil_x
  :field current_to_coil_y: ax25_frame.payload.ax25_info.data.current_to_coil_y
  :field current_to_coil_pz: ax25_frame.payload.ax25_info.data.current_to_coil_pz
  :field current_to_coil_nz: ax25_frame.payload.ax25_info.data.current_to_coil_nz
  :field battery1_temp: ax25_frame.payload.ax25_info.data.battery1_temp
  :field battery2_temp: ax25_frame.payload.ax25_info.data.battery2_temp
  :field numb_oc_obc: ax25_frame.payload.ax25_info.data.numb_oc_obc
  :field numb_oc_out_gamma: ax25_frame.payload.ax25_info.data.numb_oc_out_gamma
  :field numb_oc_out_rf1: ax25_frame.payload.ax25_info.data.numb_oc_out_rf1
  :field numb_oc_out_rf2: ax25_frame.payload.ax25_info.data.numb_oc_out_rf2
  :field numb_oc_out_flash: ax25_frame.payload.ax25_info.data.numb_oc_out_flash
  :field numb_oc_out_irsens: ax25_frame.payload.ax25_info.data.numb_oc_out_irsens
  :field numb_oc_coil_x: ax25_frame.payload.ax25_info.data.numb_oc_coil_x
  :field numb_oc_coil_y: ax25_frame.payload.ax25_info.data.numb_oc_coil_y
  :field numb_oc_coil_pz: ax25_frame.payload.ax25_info.data.numb_oc_coil_pz
  :field numb_oc_coil_nz: ax25_frame.payload.ax25_info.data.numb_oc_coil_nz
  :field numb_oc_magnetcoils: ax25_frame.payload.ax25_info.data.numb_oc_magnetcoils
  :field numb_oc_solarsens: ax25_frame.payload.ax25_info.data.numb_oc_solarsens
  :field reset_num: ax25_frame.payload.ax25_info.data.reset_num
  :field reset_reason: ax25_frame.payload.ax25_info.data.reset_reason
  :field pwr_sat: ax25_frame.payload.ax25_info.data.pwr_sat
  :field pwr_rf1: ax25_frame.payload.ax25_info.data.pwr_rf1
  :field pwr_rf2: ax25_frame.payload.ax25_info.data.pwr_rf2
  :field pwr_sunsensor: ax25_frame.payload.ax25_info.data.pwr_sunsensor
  :field pwr_gamma: ax25_frame.payload.ax25_info.data.pwr_gamma
  :field pwr_irsensor: ax25_frame.payload.ax25_info.data.pwr_irsensor
  :field pwr_flash: ax25_frame.payload.ax25_info.data.pwr_flash
  :field pwr_magnet_x: ax25_frame.payload.ax25_info.data.pwr_magnet_x
  :field pwr_magnet_y: ax25_frame.payload.ax25_info.data.pwr_magnet_y
  :field pwr_magnet_z: ax25_frame.payload.ax25_info.data.pwr_magnet_z
  :field sys_time: ax25_frame.payload.ax25_info.data.sys_time
  :field adc_correctness: ax25_frame.payload.ax25_info.data.adc_correctness
  :field t_adc1: ax25_frame.payload.ax25_info.data.t_adc1
  :field t_adc2: ax25_frame.payload.ax25_info.data.t_adc2
  :field stepup_current: ax25_frame.payload.ax25_info.data.stepup_current
  :field stetup_voltage: ax25_frame.payload.ax25_info.data.stetup_voltage
  :field afterbq_current: ax25_frame.payload.ax25_info.data.afterbq_current
  :field battery_voltage: ax25_frame.payload.ax25_info.data.battery_voltage
  :field sys_voltage_50: ax25_frame.payload.ax25_info.data.sys_voltage_50
  :field sys_voltage_33: ax25_frame.payload.ax25_info.data.sys_voltage_33
  :field eps_uc_current: ax25_frame.payload.ax25_info.data.eps_uc_current
  :field obc_uc_current: ax25_frame.payload.ax25_info.data.obc_uc_current
  :field rf1_uc_current: ax25_frame.payload.ax25_info.data.rf1_uc_current
  :field rf2_uc_current: ax25_frame.payload.ax25_info.data.rf2_uc_current
  :field solar_voltage: ax25_frame.payload.ax25_info.data.solar_voltage
  :field side_x_current: ax25_frame.payload.ax25_info.data.side_x_current
  :field side_py_current: ax25_frame.payload.ax25_info.data.side_py_current
  :field side_ny_current: ax25_frame.payload.ax25_info.data.side_ny_current
  :field side_pz_current: ax25_frame.payload.ax25_info.data.side_pz_current
  :field side_nz_current: ax25_frame.payload.ax25_info.data.side_nz_current

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
        type: frame
        size-eos: true

  frame:
    seq:
      - id: header
        type: header
      - id: data
        if: header.info_size > 0
        type:
          switch-on: header.data_type
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

  header:
    seq:
      - id: rf_id
        type: u1
      - id: opr_time
        type: u2
      - id: reboot_cnt
        type: u1
      - id: mcusr
        type: u1
      - id: pamp_temp
        type: u2
      - id: pamp_voltage
        type: u1
      - id: tx_attenuator
        type: u1
      - id: battery_voltage
        type: u2
      - id: system_voltage
        type: u2
      - id: seq_number
        type: u2
      - id: pwr_save_state
        type: u1
      - id: modem_on_period
        type: u2
      - id: obc_can_status
        type: u1
      - id: eps_can_status
        type: u1
      - id: info_size
        type: u1
      - id: data_type
        type: u1

  rf_response:
    seq:
      - id: fec_crc_status
        type: b1
      - id: rx_msg_state
        type: b7
      - id: rssi
        type: u1

  rf_message:
    seq:
      - id: rf_msg
        #type: str
        #encoding: ASCII
        size: _parent.header.info_size - 1

  eps_full_tel:
    seq:
      - id: eps_short_tel
        type: eps_short_tel
      - id: current_to_gamma
        type: b12
      - id: current_to_irsensor
        type: b12
      - id: current_to_extflash
        type: b12
      - id: current_to_solarsens
        type: b12
      - id: current_to_magnetcoils
        type: b12
      - id: current_to_coil_x
        type: b12
      - id: current_to_coil_y
        type: b12
      - id: current_to_coil_pz
        type: b12
      - id: current_to_coil_nz
        type: b12
      - id: battery1_temp
        type: b12
      - id: battery2_temp
        type: b12
      - id: numb_oc_obc
        type: u1
      - id: numb_oc_out_gamma
        type: u1
      - id: numb_oc_out_rf1
        type: u1
      - id: numb_oc_out_rf2
        type: u1
      - id: numb_oc_out_flash
        type: u1
      - id: numb_oc_out_irsens
        type: u1
      - id: numb_oc_coil_x
        type: u1
      - id: numb_oc_coil_y
        type: u1
      - id: numb_oc_coil_pz
        type: u1
      - id: numb_oc_coil_nz
        type: u1
      - id: numb_oc_magnetcoils
        type: u1
      - id: numb_oc_solarsens
        type: u1
      - id: reset_num
        type: u2
      - id: reset_reason
        type: u1
      - id: pwr_sat
        type: b1
      - id: pwr_rf1
        type: b1
      - id: pwr_rf2
        type: b1
      - id: pwr_sunsensor
        type: b1
      - id: pwr_gamma
        type: b1
      - id: pwr_irsensor
        type: b1
      - id: pwr_flash
        type: b1
      - id: pwr_magnet_x
        type: b1
      - id: pwr_magnet_y
        type: b1
      - id: pwr_magnet_z
        type: b1

  eps_short_tel:
    seq:
      - id: sys_time
        type: u2
      - id: adc_correctness
        type: b2
      - id: t_adc1
        type: b12
      - id: t_adc2
        type: b12
      - id: stepup_current
        type: b12
      - id: stetup_voltage
        type: b12
      - id: afterbq_current
        type: b12
      - id: battery_voltage
        type: b12
      - id: sys_voltage_50
        type: b12
      - id: sys_voltage_33
        type: b12
      - id: eps_uc_current
        type: b12
      - id: obc_uc_current
        type: b10
      - id: rf1_uc_current
        type: b10
      - id: rf2_uc_current
        type: b12
      - id: solar_voltage
        type: b12
      - id: side_x_current
        type: b12
      - id: side_py_current
        type: b12
      - id: side_ny_current
        type: b12
      - id: side_pz_current
        type: b12
      - id: side_nz_current
        type: b12
