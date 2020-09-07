---
meta:
  id: amicalsat
  title: AMICALSAT TLM Frame
  license: LGPL V2
  endian: be
doc-ref: 'https://gitlab.com/librespacefoundation/satnogs-ops/uploads/f6fde8b864f8cdf37d65433bd958e138/AmicalSat_downlinks_v0.3.pdf'
doc: |
  Author  : C. Mercier for AMSAT-Francophone
  Adapted for SatNOGS and modified by deckbsd

  :field dst_callsign: ax25_frame.ax25_header.dest_callsign_raw.callsign_ror.callsign
  :field src_callsign: ax25_frame.ax25_header.src_callsign_raw.callsign_ror.callsign
  :field ctl: ax25_frame.ax25_header.ctl
  :field pid: ax25_frame.payload.pid
  :field tlm_area: ax25_frame.payload.ax25_info.tlm_area
  :field tlm_type: ax25_frame.payload.ax25_info.tlm_type
  :field cpu_voltage_volt: ax25_frame.payload.ax25_info.tlm_area_switch.tlm_sw.cpu_voltage_volt
  :field boot_number_int: ax25_frame.payload.ax25_info.tlm_area_switch.tlm_sw.boot_number_int
  :field cpu_temperature_degree: ax25_frame.payload.ax25_info.tlm_area_switch.tlm_sw.cpu_temperature_degree
  :field up_time_int: ax25_frame.payload.ax25_info.tlm_area_switch.tlm_sw.up_time_int
  :field imc_aocs_ok: ax25_frame.payload.ax25_info.tlm_area_switch.tlm_sw.imc_aocs_ok
  :field imc_cu_l_ok: ax25_frame.payload.ax25_info.tlm_area_switch.tlm_sw.imc_cu_l_ok
  :field imc_cu_r_ok: ax25_frame.payload.ax25_info.tlm_area_switch.tlm_sw.imc_cu_r_ok
  :field imc_vhf1_ok: ax25_frame.payload.ax25_info.tlm_area_switch.tlm_sw.imc_vhf1_ok
  :field imc_uhf2_ok: ax25_frame.payload.ax25_info.tlm_area_switch.tlm_sw.imc_uhf2_ok
  :field vhf1_downlink: ax25_frame.payload.ax25_info.tlm_area_switch.tlm_sw.vhf1_downlink
  :field uhf2_downlink: ax25_frame.payload.ax25_info.tlm_area_switch.tlm_sw.uhf2_downlink
  :field imc_check: ax25_frame.payload.ax25_info.tlm_area_switch.tlm_sw.imc_check
  :field beacon_mode: ax25_frame.payload.ax25_info.tlm_area_switch.tlm_sw.beacon_mode
  :field cyclic_reset_on: ax25_frame.payload.ax25_info.tlm_area_switch.tlm_sw.cyclic_reset_on
  :field survival_mode: ax25_frame.payload.ax25_info.tlm_area_switch.tlm_sw.survival_mode
  :field payload_off: ax25_frame.payload.ax25_info.tlm_area_switch.tlm_sw.payload_off
  :field cu_auto_off: ax25_frame.payload.ax25_info.tlm_area_switch.tlm_sw.cu_auto_off
  :field tm_log: ax25_frame.payload.ax25_info.tlm_area_switch.tlm_sw.tm_log
  :field cul_on: ax25_frame.payload.ax25_info.tlm_area_switch.tlm_sw.cul_on
  :field cul_faut: ax25_frame.payload.ax25_info.tlm_area_switch.tlm_sw.cul_faut
  :field cur_on: ax25_frame.payload.ax25_info.tlm_area_switch.tlm_sw.cur_on
  :field cur_fault: ax25_frame.payload.ax25_info.tlm_area_switch.tlm_sw.cur_fault
  :field cu_on: ax25_frame.payload.ax25_info.tlm_area_switch.tlm_sw.cu_on
  :field cul_dead: ax25_frame.payload.ax25_info.tlm_area_switch.tlm_sw.cul_dead
  :field cur_dead: ax25_frame.payload.ax25_info.tlm_area_switch.tlm_sw.cur_dead
  :field fault_3v_r: ax25_frame.payload.ax25_info.tlm_area_switch.tlm_sw.fault_3v_r
  :field fault_3v_m: ax25_frame.payload.ax25_info.tlm_area_switch.tlm_sw.fault_3v_m
  :field charge_r: ax25_frame.payload.ax25_info.tlm_area_switch.tlm_sw.charge_r
  :field charge_m: ax25_frame.payload.ax25_info.tlm_area_switch.tlm_sw.charge_m
  :field long_log: ax25_frame.payload.ax25_info.tlm_area_switch.tlm_sw.long_log
  :field log_to_flash: ax25_frame.payload.ax25_info.tlm_area_switch.tlm_sw.log_to_flash
  :field plan: ax25_frame.payload.ax25_info.tlm_area_switch.tlm_sw.plan
  :field stream: ax25_frame.payload.ax25_info.tlm_area_switch.tlm_sw.stream
  :field vhf1_packet_ready: ax25_frame.payload.ax25_info.tlm_area_switch.tlm_sw.vhf1_packet_ready
  :field uhf2_packet_ready: ax25_frame.payload.ax25_info.tlm_area_switch.tlm_sw.uhf2_packet_ready
  :field survival_start: ax25_frame.payload.ax25_info.tlm_area_switch.tlm_sw.survival_start
  :field survival_end: ax25_frame.payload.ax25_info.tlm_area_switch.tlm_sw.survival_end
  :field timestamp_int: ax25_frame.payload.ax25_info.tlm_area_switch.timestamp_int
  :field timestamp_int: ax25_frame.payload.ax25_info.tlm_area_switch.tlm_sw.timestamp_int
  :field timestamp_int: ax25_frame.payload.ax25_info.tlm_area_switch.tlmsw.timestamp_int
  :field detumbling: ax25_frame.payload.ax25_info.tlm_area_switch.tlm_sw.detumbling
  :field adcs_on_off: ax25_frame.payload.ax25_info.tlm_area_switch.tlm_sw.adcs_on_off
  :field detumbling_status: ax25_frame.payload.ax25_info.tlm_area_switch.tlm_sw.detumbling_status
  :field manual: ax25_frame.payload.ax25_info.tlm_area_switch.tlm_sw.manual
  :field act_on_off: ax25_frame.payload.ax25_info.tlm_area_switch.tlm_sw.act_on_off
  :field sun_contr: ax25_frame.payload.ax25_info.tlm_area_switch.tlm_sw.sun_contr
  :field sens_on_off: ax25_frame.payload.ax25_info.tlm_area_switch.tlm_sw.sens_on_off
  :field act_man_contr: ax25_frame.payload.ax25_info.tlm_area_switch.tlm_sw.act_man_contr
  :field act_limited_contr: ax25_frame.payload.ax25_info.tlm_area_switch.tlm_sw.act_limited_contr
  :field gyro_acc_fault: ax25_frame.payload.ax25_info.tlm_area_switch.tlm_sw.gyro_acc_fault
  :field mag_fault: ax25_frame.payload.ax25_info.tlm_area_switch.tlm_sw.mag_fault
  :field sun_fault: ax25_frame.payload.ax25_info.tlm_area_switch.tlm_sw.sun_fault
  :field l1_fault: ax25_frame.payload.ax25_info.tlm_area_switch.tlm_sw.l1_fault
  :field l2_fault: ax25_frame.payload.ax25_info.tlm_area_switch.tlm_sw.l2_fault
  :field l3_fault: ax25_frame.payload.ax25_info.tlm_area_switch.tlm_sw.l3_fault
  :field mag_x_int: ax25_frame.payload.ax25_info.tlm_area_switch.tlm_sw.mag_x_int
  :field mag_y_int: ax25_frame.payload.ax25_info.tlm_area_switch.tlm_sw.mag_y_int
  :field mag_z_int: ax25_frame.payload.ax25_info.tlm_area_switch.tlm_sw.mag_z_int
  :field gyro_x_int: ax25_frame.payload.ax25_info.tlm_area_switch.tlm_sw.gyro_x_int
  :field gyro_y_int: ax25_frame.payload.ax25_info.tlm_area_switch.tlm_sw.gyro_y_int
  :field gyro_z_int: ax25_frame.payload.ax25_info.tlm_area_switch.tlm_sw.gyro_z_int
  :field latitude_int: ax25_frame.payload.ax25_info.tlm_area_switch.tlm_sw.latitude_int
  :field longitude_int: ax25_frame.payload.ax25_info.tlm_area_switch.tlm_sw.longitude_int
  :field tlmsw_boot_number_int: ax25_frame.payload.ax25_info.tlm_area_switch.tlmsw.boot_number_int
  :field input_voltage_volt: ax25_frame.payload.ax25_info.tlm_area_switch.tlmsw.input_voltage_volt
  :field input_current_ma: ax25_frame.payload.ax25_info.tlm_area_switch.tlmsw.input_current_ma
  :field input_power_mw: ax25_frame.payload.ax25_info.tlm_area_switch.tlmsw.input_power_mw
  :field peak_power_mw: ax25_frame.payload.ax25_info.tlm_area_switch.tlmsw.peak_power_mw
  :field solar_panel_voltage_volt: ax25_frame.payload.ax25_info.tlm_area_switch.tlmsw.solar_panel_voltage_volt
  :field v_in_volt: ax25_frame.payload.ax25_info.tlm_area_switch.tlmsw.v_in_volt
  :field v_solar_volt: ax25_frame.payload.ax25_info.tlm_area_switch.tlmsw.v_solar_volt
  :field i_in_ma: ax25_frame.payload.ax25_info.tlm_area_switch.tlmsw.i_in_ma
  :field p_in_mw: ax25_frame.payload.ax25_info.tlm_area_switch.tlmsw.p_in_mw
  :field p_peak_mw: ax25_frame.payload.ax25_info.tlm_area_switch.tlmsw.p_peak_mw
  :field t_cpu_degree: ax25_frame.payload.ax25_info.tlm_area_switch.tlmsw.t_cpu_degree
  :field v_cpu_volt: ax25_frame.payload.ax25_info.tlm_area_switch.tlmsw.v_cpu_volt
  :field battery_voltage: ax25_frame.payload.ax25_info.tlm_area_switch.tlmsw.battery_voltage
  :field tlmsw_cpu_voltage_volt: ax25_frame.payload.ax25_info.tlm_area_switch.tlmsw.cpu_voltage_volt
  :field battery_voltage_volt: ax25_frame.payload.ax25_info.tlm_area_switch.tlmsw.battery_voltage_volt
  :field tlmsw_cpu_temperature_degree: ax25_frame.payload.ax25_info.tlm_area_switch.tlmsw.cpu_temperature_degree
  :field amplifier_temperature_degree: ax25_frame.payload.ax25_info.tlm_area_switch.tlmsw.amplifier_temperature_degree
  :field fec: ax25_frame.payload.ax25_info.tlm_area_switch.tlmsw.fec
  :field downlink: ax25_frame.payload.ax25_info.tlm_area_switch.tlmsw.downlink
  :field band_lock: ax25_frame.payload.ax25_info.tlm_area_switch.tlmsw.band_lock
  :field xor: ax25_frame.payload.ax25_info.tlm_area_switch.tlmsw.xor
  :field aes_128: ax25_frame.payload.ax25_info.tlm_area_switch.tlmsw.aes_128
  :field amp_ovt: ax25_frame.payload.ax25_info.tlm_area_switch.tlmsw.amp_ovt
  :field current_rssi: ax25_frame.payload.ax25_info.tlm_area_switch.tlmsw.current_rssi
  :field latch_rssi: ax25_frame.payload.ax25_info.tlm_area_switch.tlmsw.latch_rssi
  :field a_f_c_offset: ax25_frame.payload.ax25_info.tlm_area_switch.tlmsw.a_f_c_offset
  :field current_rssi_int: ax25_frame.payload.ax25_info.tlm_area_switch.tlmsw.current_rssi_int
  :field latch_rssi_int: ax25_frame.payload.ax25_info.tlm_area_switch.tlmsw.latch_rssi_int
  :field a_f_c_offset_int: ax25_frame.payload.ax25_info.tlm_area_switch.tlmsw.a_f_c_offset_int
  :field return_value_int: ax25_frame.payload.ax25_info.tlm_area_switch.tlmsw.return_value_int
  :field onyx_on: ax25_frame.payload.ax25_info.tlm_area_switch.tlmsw.onyx_on
  :field llc_onyx_fault: ax25_frame.payload.ax25_info.tlm_area_switch.tlmsw.llc_onyx_fault
  :field llc_sram_fault: ax25_frame.payload.ax25_info.tlm_area_switch.tlmsw.llc_sram_fault
  :field fault_1v8_r: ax25_frame.payload.ax25_info.tlm_area_switch.tlmsw.fault_1v8_r
  :field fault_1v8_m: ax25_frame.payload.ax25_info.tlm_area_switch.tlmsw.fault_1v8_m
  :field fault_3v3_12v: ax25_frame.payload.ax25_info.tlm_area_switch.tlmsw.fault_3v3_12v
  :field pic_ready_conv: ax25_frame.payload.ax25_info.tlm_area_switch.tlmsw.pic_ready_conv
  :field pic_ready_compressed: ax25_frame.payload.ax25_info.tlm_area_switch.tlmsw.pic_ready_compressed
  :field pic_ready_compressed_8: ax25_frame.payload.ax25_info.tlm_area_switch.tlmsw.pic_ready_compressed_8
  :field sd_pic_write_ok: ax25_frame.payload.ax25_info.tlm_area_switch.tlmsw.sd_pic_write_ok
  :field sd_pic_read_ok: ax25_frame.payload.ax25_info.tlm_area_switch.tlmsw.sd_pic_read_ok
  :field sd_get_info_ok: ax25_frame.payload.ax25_info.tlm_area_switch.tlmsw.sd_get_info_ok
  :field sd_erase_ok: ax25_frame.payload.ax25_info.tlm_area_switch.tlmsw.sd_erase_ok
  :field sd_full: ax25_frame.payload.ax25_info.tlm_area_switch.tlmsw.sd_full
  :field adc_ready: ax25_frame.payload.ax25_info.tlm_area_switch.tlmsw.adc_ready
  :field aprs_message: ax25_frame.payload.ax25_info.aprs_message

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
            # 0x11: s_frame

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
      - id: repeater
        type: repeater
        if: (src_ssid_raw.ssid_mask & 0x01) == 0
        doc: 'Repeater flag is set!'
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
      - id: start
        type: u1
      - id: tlm_area
        type: str
        encoding: ASCII
        terminator: 0x3B
      - id: tlm_type
        type: str
        encoding: ASCII
        terminator: 0x3B
      - id: tlm_area_switch
        type:
          switch-on: tlm_area
          cases:
            '"M1"': m1_type
            '"A1"': a1_type
            '"EM"': emer_type
            '"ER"': emer_type
            '"V1"': v1_type
            '"U2"': u2_type
            '"CU_R"': cu_type
            '"CU_L"': cu_type
    instances:
      aprs_message:
        pos: 0x0
        type: str
        encoding: utf-8
        size-eos: true

  m1_type:
    seq:
      - id: timestamp
        type: str
        encoding: ASCII
        terminator: 0x3B
      - id: tlm_sw
        type:
          switch-on: _parent.tlm_type
          cases:
            '"LOG"': log_type
            '"FLAGS"': flags_type
    instances:
      timestamp_int:
        value: '(timestamp.to_i)'

  a1_type:
    seq:
      - id: tlm_sw
        type:
          switch-on: _parent.tlm_type
          cases:
            '"FLAGS"': a1_flag_type
            '"MAG"': a1_mag_type
            '"GYRO"': a1_gyro_type
            '"POSITION"': a1_position_type

  emer_type:
    seq:
      - id: timestamp
        type: str
        encoding: ASCII
        terminator: 0x3B
      - id: tlmsw
        type:
          switch-on: _parent.tlm_type
          cases:
            '"LOG"': em_log_type
            '"MN"': emmn_type
    instances:
      timestamp_int:
        value: '(timestamp.to_i)'

  v1_type:
    seq:
      - id: tlmsw
        type:
          switch-on: _parent.tlm_type
          cases:
            '"RL"': v1_rl_type
            '"MS"': ms_type
  u2_type:
    seq:
      - id: tlmsw
        type:
          switch-on: _parent.tlm_type
          cases:
            '"RL"': u2_rl_type
            '"MS"': ms_type
  cu_type:
    seq:
      - id: timestamp
        type: str
        encoding: ASCII
        terminator: 0x3B
      - id: tlmsw
        type:
          switch-on: _parent.tlm_type
          cases:
            '"ONYX SENSOR T"': onyx_type
            '"LOG"': cu_log_type
    instances:
      timestamp_int:
        value: '(timestamp.to_i)'

  log_type:
    doc: |
      M1;LOG;[Timestamp];[Boot number];[Up time];[CPU voltage];[CPU temperature]
    seq:
      - id: boot_number
        type: str
        encoding: ASCII
        terminator: 0x3B
      - id: up_time
        type: str
        encoding: ASCII
        terminator: 0x3B
      - id: cpu_voltage
        type: str
        encoding: ASCII
        terminator: 0x3B
      - id: cpu_temperature
        type: str
        encoding: ASCII
        size-eos: true
    instances:
      cpu_voltage_volt:
        value: '(cpu_voltage.to_i) / 1000.0'
      boot_number_int:
        value: '(boot_number.to_i)'
      cpu_temperature_degree:
        value: '(cpu_temperature.to_i)'
      up_time_int:
        value: '(up_time.to_i)'

  flags_type:
    doc: |
      M1;FLAGS;[Timestamp];[Hex flags];
    seq:
      - id: hex_part
        type: str
        encoding: ASCII
        terminator: 0x78
      - id: flags
        type: str
        encoding: ASCII
        terminator: 0x3B
    instances:
      imc_aocs_ok:
        value: '(flags.to_i(16) & 0x1)'
      imc_cu_l_ok:
        value: '((flags.to_i(16) & 0x2) >> 1)'
      imc_cu_r_ok:
        value: '((flags.to_i(16) & 0x4) >> 2)'
      imc_vhf1_ok:
        value: '((flags.to_i(16) & 0x8) >> 3)'
      imc_uhf2_ok:
        value: '((flags.to_i(16) & 0x10) >> 4)'
      vhf1_downlink:
        value: '((flags.to_i(16) & 0x20) >> 5)'
      uhf2_downlink:
        value: '((flags.to_i(16) & 0x40) >> 6)'
      imc_check:
        value: '((flags.to_i(16) & 0x80) >> 7)'
      beacon_mode:
        value: '((flags.to_i(16) & 0x100) >> 8)'
      cyclic_reset_on:
        value: '((flags.to_i(16) & 0x200) >> 9)'
      survival_mode:
        value: '((flags.to_i(16) & 0x400) >> 10)'
      payload_off:
        value: '((flags.to_i(16) & 0x800) >> 11)'
      cu_auto_off:
        value: '((flags.to_i(16) & 0x1000) >> 12)'
      tm_log:
        value: '((flags.to_i(16) & 0x2000) >> 13)'
      cul_on:
        value: '((flags.to_i(16) & 0x10000) >> 16)'
      cul_faut:
        value: '((flags.to_i(16) & 0x20000) >> 17)'
      cur_on:
        value: '((flags.to_i(16) & 0x40000) >> 18)'
      cur_fault:
        value: '((flags.to_i(16) & 0x80000) >> 19)'
      cu_on:
        value: '((flags.to_i(16) & 0x100000) >> 20)'
      cul_dead:
        value: '((flags.to_i(16) & 0xF000000) >> 24)'
      cur_dead:
        value: '((flags.to_i(16) & 0xF0000000) >> 28)'
      fault_3v_r:
        value: '((flags.to_i(16) & 0x10000000000) >> 40)'
      fault_3v_m:
        value: '((flags.to_i(16) & 0x20000000000) >> 41)'
      charge_r:
        value: '((flags.to_i(16) & 0x40000000000) >> 42)'
      charge_m:
        value: '((flags.to_i(16) & 0x80000000000) >> 43)'
      long_log:
        value: '((flags.to_i(16) & 0x200000000000) >> 45)'
      log_to_flash:
        value: '((flags.to_i(16) & 0x400000000000) >> 46)'
      plan:
        value: '((flags.to_i(16) & 0x800000000000) >> 47)'
      stream:
        value: '((flags.to_i(16) & 0x1000000000000) >> 48)'
      vhf1_packet_ready:
        value: '((flags.to_i(16) & 0x2000000000000) >> 49)'
      uhf2_packet_ready:
        value: '((flags.to_i(16) & 0x4000000000000) >> 50)'
      survival_start:
        value: '((flags.to_i(16) & 0x8000000000000) >> 51)'
      survival_end:
        value: '((flags.to_i(16) & 0x10000000000000) >> 52)'

  a1_flag_type:
    doc: |
      A1;FLAGS;[mode];[flags];[faults]
    seq:
      - id: timestamp
        type: str
        encoding: ASCII
        terminator: 0x3B
      - id: adcs_mode
        type: str
        encoding: ASCII
        terminator: 0x3B
      - id: a1_flags
        type: str
        encoding: ASCII
        terminator: 0x3B
      - id: faults
        type: str
        encoding: ASCII
        size-eos: true
    instances:
      detumbling:
        value: '(adcs_mode.to_i(16) & 0x1)'
      adcs_on_off:
        value: '((adcs_mode.to_i(16) & 0x2) >> 1)'
      detumbling_status:
        value: '((adcs_mode.to_i(16) & 0xC) >> 2)'
      manual:
        value: '((adcs_mode.to_i(16) & 0xF0) >> 4)'
      act_on_off:
        value: '(a1_flags.to_i(16) & 0x1)'
      sun_contr:
        value: '((a1_flags.to_i(16) & 0x2) >> 1)'
      sens_on_off:
        value: '((a1_flags.to_i(16) & 0x4) >> 2)'
      act_man_contr:
        value: '((a1_flags.to_i(16) & 0x8) >> 3)'
      act_limited_contr:
        value: '((a1_flags.to_i(16) & 0x10) >> 4)'
      gyro_acc_fault:
        value: '(faults.to_i(16) & 0x1)'
      mag_fault:
        value: '((faults.to_i(16) & 0x2) >> 1)'
      sun_fault:
        value: '((faults.to_i(16) & 0x4) >> 2)'
      l1_fault:
        value: '((faults.to_i(16) & 0x8) >> 3)'
      l2_fault:
        value: '((faults.to_i(16) & 0x10) >> 4)'
      l3_fault:
        value: '((faults.to_i(16) & 0x20) >> 5)'
      timestamp_int:
        value: '(timestamp.to_i)'

  a1_mag_type:
    doc: |
      A1;MAG;[Current timestamp];[MagX];[MagY];[MagZ]
    seq:
      - id: timestamp
        type: str
        encoding: ASCII
        terminator: 0x3B
      - id: mag_x
        type: str
        encoding: ASCII
        terminator: 0x3B
      - id: mag_y
        type: str
        encoding: ASCII
        terminator: 0x3B
      - id: mag_z
        type: str
        encoding: ASCII
        terminator: 0x3B
    instances:
      mag_x_int:
        value: '(mag_x.to_i)'
      mag_y_int:
        value: '(mag_y.to_i)'
      mag_z_int:
        value: '(mag_z.to_i)'
      timestamp_int:
        value: '(timestamp.to_i)'

  a1_gyro_type:
    doc: |
      A1;GYRO;[Current timestamp];[GyroX];[GyroY];[GyroZ]
    seq:
      - id: timestamp
        type: str
        encoding: ASCII
        terminator: 0x3B
      - id: giro_x
        type: str
        encoding: ASCII
        terminator: 0x3B
      - id: giro_y
        type: str
        encoding: ASCII
        terminator: 0x3B
      - id: giro_z
        type: str
        encoding: ASCII
        terminator: 0x3B
    instances:
      gyro_x_int:
        value: '(giro_x.to_i)'
      gyro_y_int:
        value: '(giro_y.to_i)'
      gyro_z_int:
        value: '(giro_z.to_i)'
      timestamp_int:
        value: '(timestamp.to_i)'

  a1_position_type:
    doc: |
      A1;POSITION;[Current timestamp];[Latitude];[Longitude]
    seq:
      - id: timestamp
        type: str
        encoding: ASCII
        terminator: 0x3B
      - id: latitude
        type: str
        encoding: ASCII
        terminator: 0x3B
      - id: longitude
        type: str
        encoding: ASCII
        size-eos: true
    instances:
      latitude_int:
        value: '(latitude.to_i)'
      longitude_int:
        value: '(longitude.to_i)'
      timestamp_int:
        value: '(timestamp.to_i)'

  emmn_type:
    doc: |
      [EM/ER];MN;[Timestamp];[V in];[V solar];[I in];[P in];[P peak];[T cpu];[V cpu]
    seq:
      - id: v_in
        type: str
        encoding: ASCII
        terminator: 0x3B
      - id: v_solar
        type: str
        encoding: ASCII
        terminator: 0x3B
      - id: i_in
        type: str
        encoding: ASCII
        terminator: 0x3B
      - id: p_in
        type: str
        encoding: ASCII
        terminator: 0x3B
      - id: p_peak
        type: str
        encoding: ASCII
        terminator: 0x3B
      - id: t_cpu
        type: str
        encoding: ASCII
        terminator: 0x3B
      - id: v_cpu
        type: str
        encoding: ASCII
        size-eos: true
    instances:
      v_in_volt:
        value: '(v_in.to_i) / 1000.0'
      v_solar_volt:
        value: '(v_solar.to_i) / 1000.0'
      i_in_ma:
        value: '(i_in.to_i)'
      p_in_mw:
        value: '(p_in.to_i)'
      p_peak_mw:
        value: '(p_peak.to_i)'
      t_cpu_degree:
        value: '(t_cpu.to_i)'
      v_cpu_volt:
        value: '(v_cpu.to_i) / 1000.0'

  em_log_type:
    doc: |
      EM;LOG;[Timestamp];[Boot number];[Input voltage];[Input current];[Input power];[Peak Power];[Solar panel voltage]
    seq:
      - id: boot_number
        type: str
        encoding: ASCII
        terminator: 0x3B
      - id: input_voltage
        type: str
        encoding: ASCII
        terminator: 0x3B
      - id: input_current
        type: str
        encoding: ASCII
        terminator: 0x3B
      - id: input_power
        type: str
        encoding: ASCII
        terminator: 0x3B
      - id: peak_power
        type: str
        encoding: ASCII
        terminator: 0x3B
      - id: solar_panel_voltage
        type: str
        encoding: ASCII
        size-eos: true
    instances:
      boot_number_int:
        value: '(boot_number.to_i)'
      input_voltage_volt:
        value: '(input_voltage.to_i) / 1000.0'
      input_current_ma:
        value: '(input_current.to_i)'
      input_power_mw:
        value: '(input_power.to_i)'
      peak_power_mw:
        value: '(peak_power.to_i)'
      solar_panel_voltage_volt:
        value: '(solar_panel_voltage.to_i) / 1000.0'

  v1_rl_type:
    doc: |
      [V1];RL;[Timestamp],[CPU voltage];[Battery voltage];[CPU temperature];[Amplifier temperature];[Flags]
    seq:
      - id: timestamp
        type: str
        encoding: ASCII
        terminator: 0x2C
      - id: cpu_voltage
        type: str
        encoding: ASCII
        terminator: 0x3B
      - id: battery_voltage
        type: str
        encoding: ASCII
        terminator: 0x3B
      - id: cpu_temperature
        type: str
        encoding: ASCII
        terminator: 0x3B
      - id: amplifier_temperature
        type: str
        encoding: ASCII
        terminator: 0x3B
      - id: flagsmagic
        contents: [0x30, 0x78]
      - id: flags
        type: str
        encoding: ASCII
        size: 1
    instances:
      cpu_voltage_volt:
        value: '(cpu_voltage.to_i) / 1000.0'
      battery_voltage_volt:
        value: '(battery_voltage.to_i) / 1000.0'
      cpu_temperature_degree:
        value: '(cpu_temperature.to_i)'
      amplifier_temperature_degree:
        value: '(amplifier_temperature.to_i)'
      fec:
        value: '(flags.to_i(16) & 0x1)'
      downlink:
        value: '((flags.to_i(16) & 0x2) >> 1)'
      band_lock:
        value: '((flags.to_i(16) & 0x4) >> 2)'
      xor:
        value: '((flags.to_i(16) & 0x8) >> 3)'
      aes_128:
        value: '((flags.to_i(16) & 0x10) >> 4)'
      amp_ovt:
        value: '((flags.to_i(16) & 0x20) >> 5)'
      timestamp_int:
        value: '(timestamp.to_i)'

  u2_rl_type:
    doc: |
      [U2];RL;[Timestamp],[CPU voltage];[Battery voltage];[CPU temperature];[Amplifier temperature];[Flags]
    seq:
      - id: timestamp
        type: str
        encoding: ASCII
        terminator: 0x3B
      - id: cpu_voltage
        type: str
        encoding: ASCII
        terminator: 0x3B
      - id: battery_voltage
        type: str
        encoding: ASCII
        terminator: 0x3B
      - id: cpu_temperature
        type: str
        encoding: ASCII
        terminator: 0x3B
      - id: amplifier_temperature
        type: str
        encoding: ASCII
        terminator: 0x3B
      - id: flagsmagic
        contents: [0x30, 0x78]
      - id: flags
        type: str
        encoding: ASCII
        size: 1
    instances:
      cpu_voltage_volt:
        value: '(cpu_voltage.to_i) / 1000.0'
      battery_voltage_volt:
        value: '(battery_voltage.to_i) / 1000.0'
      cpu_temperature_degree:
        value: '(cpu_temperature.to_i)'
      amplifier_temperature_degree:
        value: '(amplifier_temperature.to_i)'
      fec:
        value: '(flags.to_i(16) & 0x1)'
      downlink:
        value: '((flags.to_i(16) & 0x2) >> 1)'
      band_lock:
        value: '((flags.to_i(16) & 0x4) >> 2)'
      xor:
        value: '((flags.to_i(16) & 0x8) >> 3)'
      aes_128:
        value: '((flags.to_i(16) & 0x10) >> 4)'
      amp_ovt:
        value: '((flags.to_i(16) & 0x20) >> 5)'
      timestamp_int:
        value: '(timestamp.to_i)'

  ms_type:
    doc: |
      [V1/U2];MS;[Timestamp];[Current rssi];[Latch rssi];[AFC offset]
    seq:
      - id: timestamp
        type: str
        encoding: ASCII
        terminator: 0x3B
      - id: current_rssi
        type: str
        encoding: ASCII
        terminator: 0x3B
      - id: latch_rssi
        type: str
        encoding: ASCII
        terminator: 0x3B
      - id: a_f_c_offset
        type: str
        encoding: ASCII
        size-eos: true
    instances:
      current_rssi_int:
        value: '(current_rssi.to_i)'
      latch_rssi_int:
        value: '(latch_rssi.to_i)'
      a_f_c_offset_int:
        value: '(a_f_c_offset.to_i)'
      timestamp_int:
        value: '(timestamp.to_i)'

  cu_log_type:
    doc: |
      [CU_R/CU_L];LOG;[Timestamp];[CPU voltage];[CPU temperature];[flags]
    seq:
      - id: cpu_voltage
        type: str
        encoding: ASCII
        terminator: 0x3B
      - id: cpu_temperature
        type: str
        encoding: ASCII
        terminator: 0x3B
      - id: flagsmagic
        contents: [0x30, 0x78]
      - id: cu_flags
        type: str
        encoding: ASCII
        size-eos: true
    instances:
      cpu_voltage_volt:
        value: '(cpu_voltage.to_i) / 1000.0'
      cpu_temperature_degree:
        value: '(cpu_temperature.to_i)'
      onyx_on:
        value: '(cu_flags.to_i(16) & 0x1)'
      llc_onyx_fault:
        value: '((cu_flags.to_i(16) & 0x2) >> 1)'
      llc_sram_fault:
        value: '((cu_flags.to_i(16) & 0x4) >> 2)'
      fault_1v8_r:
        value: '((cu_flags.to_i(16) & 0x8) >> 3)'
      fault_1v8_m:
        value: '((cu_flags.to_i(16) & 0x10) >> 4)'
      fault_3v3_12v:
        value: '((cu_flags.to_i(16) & 0x20) >> 5)'
      pic_ready_raw:
        value: '((cu_flags.to_i(16) & 0x40) >> 6)'
      pic_ready_conv:
        value: '((cu_flags.to_i(16) & 0x80) >> 7)'
      pic_ready_compressed:
        value: '((cu_flags.to_i(16) & 0x100) >> 8)'
      pic_ready_compressed_8:
        value: '((cu_flags.to_i(16) & 0x200) >> 9)'
      sd_pic_write_ok:
        value: '((cu_flags.to_i(16) & 0x400) >> 10)'
      sd_pic_read_ok:
        value: '((cu_flags.to_i(16) & 0x800) >> 11)'
      sd_get_info_ok:
        value: '((cu_flags.to_i(16) & 0x1000) >> 12)'
      sd_erase_ok:
        value: '((cu_flags.to_i(16) & 0x2000) >> 13)'
      sd_full:
        value: '((cu_flags.to_i(16) & 0x4000) >> 14)'
      adc_ready:
        value: '((cu_flags.to_i(16) & 0x8000) >> 15)'

  onyx_type:
    doc: |
      [CU_R/CU_L];ONYX SENSOR T;[Timestamp];[Return value]
    seq:
      - id: timestamp
        type: str
        encoding: ASCII
        terminator: 0x3B
      - id: return_value
        type: str
        encoding: ASCII
        size-eos: true
    instances:
      return_value_int:
        value: '(return_value.to_i)'
      timestamp_int:
        value: '(timestamp.to_i)'
