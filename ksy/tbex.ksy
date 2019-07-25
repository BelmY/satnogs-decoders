---
meta:
  id: tbex
  endian: le
doc-ref: |
  https://docs.google.com/spreadsheets/d/1mGekVQyf4Ozlf6UqojZk0ji02DwLLDFp3S1XTffvqGk/edit#gid=1694629037
  https://drive.google.com/file/d/1XduQg8NTiXD0MORRmrdjMPdAokTbSP_1/view
  https://drive.google.com/file/d/1mv0lSleUe6LL0O4OmI-LSaQlulIeozMu/view
doc: |
  :field dest_callsign: ax25_frame.ax25_header.dest_callsign_raw.callsign_ror.callsign
  :field src_callsign: ax25_frame.ax25_header.src_callsign_raw.callsign_ror.callsign
  :field src_ssid: ax25_frame.ax25_header.src_ssid_raw.ssid
  :field dest_ssid: ax25_frame.ax25_header.dest_ssid_raw.ssid
  :field ctl: ax25_frame.ax25_header.ctl
  :field pid: ax25_frame.payload.pid
  :field flags: ax25_frame.payload.ax25_info.header.flags
  :field spacecraft_identifier: ax25_frame.payload.ax25_info.header.spacecraft_identifier
  :field operation_mode: ax25_frame.payload.ax25_info.payload.beacon_type.operation_mode
  :field rtc_unix_time: ax25_frame.payload.ax25_info.payload.beacon_type.rtc_unix_time
  :field numresets: ax25_frame.payload.ax25_info.payload.beacon_type.numresets
  :field avgnumactivetasks1: ax25_frame.payload.ax25_info.payload.beacon_type.avgnumactivetasks1
  :field avgnumactivetasks5: ax25_frame.payload.ax25_info.payload.beacon_type.avgnumactivetasks5
  :field avgnumactivetasks15: ax25_frame.payload.ax25_info.payload.beacon_type.avgnumactivetasks15
  :field totnumprocesses: ax25_frame.payload.ax25_info.payload.beacon_type.totnumprocesses
  :field usedmemminuscache: ax25_frame.payload.ax25_info.payload.beacon_type.usedmemminuscache
  :field freemempluscache: ax25_frame.payload.ax25_info.payload.beacon_type.freemempluscache
  :field sd_usage: ax25_frame.payload.ax25_info.payload.beacon_type.sd_usage
  :field datamnt_usage: ax25_frame.payload.ax25_info.payload.beacon_type.datamnt_usage
  :field stamp_gpio_states: ax25_frame.payload.ax25_info.payload.beacon_type.stamp_gpio_states
  :field ioe_states: ax25_frame.payload.ax25_info.payload.beacon_type.ioe_states
  :field lithium_op_count: ax25_frame.payload.ax25_info.payload.beacon_type.lithium_op_count
  :field lithium_msp430_temp: ax25_frame.payload.ax25_info.payload.beacon_type.lithium_msp430_temp
  :field lithium_rssi: ax25_frame.payload.ax25_info.payload.beacon_type.lithium_rssi
  :field lithium_rx: ax25_frame.payload.ax25_info.payload.beacon_type.lithium_rx
  :field lithium_tx: ax25_frame.payload.ax25_info.payload.beacon_type.lithium_tx
  :field fcpu_processor_temp: ax25_frame.payload.ax25_info.payload.beacon_type.fcpu_processor_temp
  :field lithium_pa_temp: ax25_frame.payload.ax25_info.payload.beacon_type.lithium_pa_temp
  :field li_3v3_voltage: ax25_frame.payload.ax25_info.payload.beacon_type.li_3v3_voltage
  :field fcpu_3v3_current: ax25_frame.payload.ax25_info.payload.beacon_type.fcpu_3v3_current
  :field li_3v3_current: ax25_frame.payload.ax25_info.payload.beacon_type.li_3v3_current
  :field fcpu_3v3_voltage: ax25_frame.payload.ax25_info.payload.beacon_type.fcpu_3v3_voltage
  :field li_vbatt_voltage: ax25_frame.payload.ax25_info.payload.beacon_type.li_vbatt_voltage
  :field li_vbatt_current: ax25_frame.payload.ax25_info.payload.beacon_type.li_vbatt_current
  :field sd_imon_1: ax25_frame.payload.ax25_info.payload.beacon_type.sd_imon_1
  :field sd_imon_2: ax25_frame.payload.ax25_info.payload.beacon_type.sd_imon_2
  :field sd_imon_3: ax25_frame.payload.ax25_info.payload.beacon_type.sd_imon_3
  :field sd_imon_4: ax25_frame.payload.ax25_info.payload.beacon_type.sd_imon_4
  :field battery_voltage: ax25_frame.payload.ax25_info.payload.beacon_type.battery_voltage
  :field battery_current: ax25_frame.payload.ax25_info.payload.beacon_type.battery_current
  :field battery_temperature: ax25_frame.payload.ax25_info.payload.beacon_type.battery_temperature
  :field battery_bus_voltage: ax25_frame.payload.ax25_info.payload.beacon_type.battery_bus_voltage
  :field battery_bus_current: ax25_frame.payload.ax25_info.payload.beacon_type.battery_bus_current
  :field bus_voltage_5v: ax25_frame.payload.ax25_info.payload.beacon_type.bus_voltage_5v
  :field bus_current_5v: ax25_frame.payload.ax25_info.payload.beacon_type.bus_current_5v
  :field input_current_5v: ax25_frame.payload.ax25_info.payload.beacon_type.input_current_5v
  :field bus_voltage_3_3v: ax25_frame.payload.ax25_info.payload.beacon_type.bus_voltage_3_3v
  :field bus_current_3_3v: ax25_frame.payload.ax25_info.payload.beacon_type.bus_current_3_3v
  :field input_current_3_3v: ax25_frame.payload.ax25_info.payload.beacon_type.input_current_3_3v
  :field output_regulator_temperature: ax25_frame.payload.ax25_info.payload.beacon_type.output_regulator_temperature
  :field eps_5v_voltage: ax25_frame.payload.ax25_info.payload.beacon_type.eps_5v_voltage
  :field eps_5v_current: ax25_frame.payload.ax25_info.payload.beacon_type.eps_5v_current
  :field eps_3_3_voltage: ax25_frame.payload.ax25_info.payload.beacon_type.eps_3_3_voltage
  :field eps_3_3v_current: ax25_frame.payload.ax25_info.payload.beacon_type.eps_3_3v_current
  :field channel_1_panel_voltage_a: ax25_frame.payload.ax25_info.payload.beacon_type.channel_1_panel_voltage_a
  :field channel_1_panel_voltage_b: ax25_frame.payload.ax25_info.payload.beacon_type.channel_1_panel_voltage_b
  :field channel_1_panel_current_a: ax25_frame.payload.ax25_info.payload.beacon_type.channel_1_panel_current_a
  :field channel_1_panel_current_b: ax25_frame.payload.ax25_info.payload.beacon_type.channel_1_panel_current_b
  :field channel_1_output_current: ax25_frame.payload.ax25_info.payload.beacon_type.channel_1_output_current
  :field channel_1_output_voltage: ax25_frame.payload.ax25_info.payload.beacon_type.channel_1_output_voltage
  :field channel_1_board_temperature: ax25_frame.payload.ax25_info.payload.beacon_type.channel_1_board_temperature
  :field channel_1_module_temperature: ax25_frame.payload.ax25_info.payload.beacon_type.channel_1_module_temperature
  :field channel_2_panel_voltage_a: ax25_frame.payload.ax25_info.payload.beacon_type.channel_2_panel_voltage_a
  :field channel_2_panel_voltage_b: ax25_frame.payload.ax25_info.payload.beacon_type.channel_2_panel_voltage_b
  :field channel_2_panel_current_a: ax25_frame.payload.ax25_info.payload.beacon_type.channel_2_panel_current_a
  :field channel_2_panel_current_b: ax25_frame.payload.ax25_info.payload.beacon_type.channel_2_panel_current_b
  :field channel_2_output_current: ax25_frame.payload.ax25_info.payload.beacon_type.channel_2_output_current
  :field channel_2_output_voltage: ax25_frame.payload.ax25_info.payload.beacon_type.channel_2_output_voltage
  :field channel_2_board_temperature: ax25_frame.payload.ax25_info.payload.beacon_type.channel_2_board_temperature
  :field channel_2_module_temperature: ax25_frame.payload.ax25_info.payload.beacon_type.channel_2_module_temperature
  :field channel_3_panel_voltage_a: ax25_frame.payload.ax25_info.payload.beacon_type.channel_3_panel_voltage_a
  :field channel_3_panel_voltage_b: ax25_frame.payload.ax25_info.payload.beacon_type.channel_3_panel_voltage_b
  :field channel_3_panel_current_a: ax25_frame.payload.ax25_info.payload.beacon_type.channel_3_panel_current_a
  :field channel_3_panel_current_b: ax25_frame.payload.ax25_info.payload.beacon_type.channel_3_panel_current_b
  :field channel_3_output_current: ax25_frame.payload.ax25_info.payload.beacon_type.channel_3_output_current
  :field channel_3_output_voltage: ax25_frame.payload.ax25_info.payload.beacon_type.channel_3_output_voltage
  :field channel_3_board_temperature: ax25_frame.payload.ax25_info.payload.beacon_type.channel_3_board_temperature
  :field channel_3_module_temperature: ax25_frame.payload.ax25_info.payload.beacon_type.channel_3_module_temperature
  :field channel_4_panel_voltage_a: ax25_frame.payload.ax25_info.payload.beacon_type.channel_4_panel_voltage_a
  :field channel_4_panel_voltage_b: ax25_frame.payload.ax25_info.payload.beacon_type.channel_4_panel_voltage_b
  :field channel_4_panel_current_a: ax25_frame.payload.ax25_info.payload.beacon_type.channel_4_panel_current_a
  :field channel_4_panel_current_b: ax25_frame.payload.ax25_info.payload.beacon_type.channel_4_panel_current_b
  :field channel_4_output_current: ax25_frame.payload.ax25_info.payload.beacon_type.channel_4_output_current
  :field channel_4_output_voltage: ax25_frame.payload.ax25_info.payload.beacon_type.channel_4_output_voltage
  :field channel_4_board_temperature: ax25_frame.payload.ax25_info.payload.beacon_type.channel_4_board_temperature
  :field channel_4_module_temperature: ax25_frame.payload.ax25_info.payload.beacon_type.channel_4_module_temperature
  :field channel_5_module_input_voltage: ax25_frame.payload.ax25_info.payload.beacon_type.channel_5_module_input_voltage
  :field channel_5_panel_current_a: ax25_frame.payload.ax25_info.payload.beacon_type.channel_5_panel_current_a
  :field channel_5_panel_current_b: ax25_frame.payload.ax25_info.payload.beacon_type.channel_5_panel_current_b
  :field channel_5_output_current: ax25_frame.payload.ax25_info.payload.beacon_type.channel_5_output_current
  :field channel_5_board_temperature: ax25_frame.payload.ax25_info.payload.beacon_type.channel_5_board_temperature
  :field channel_5_module_temperature: ax25_frame.payload.ax25_info.payload.beacon_type.channel_5_module_temperature
  :field channel_6_module_input_voltage: ax25_frame.payload.ax25_info.payload.beacon_type.channel_6_module_input_voltage
  :field channel_6_panel_current_a: ax25_frame.payload.ax25_info.payload.beacon_type.channel_6_panel_current_a
  :field channel_6_panel_current_b: ax25_frame.payload.ax25_info.payload.beacon_type.channel_6_panel_current_b
  :field channel_6_output_current: ax25_frame.payload.ax25_info.payload.beacon_type.channel_6_output_current
  :field channel_6_board_temperature: ax25_frame.payload.ax25_info.payload.beacon_type.channel_6_board_temperature
  :field channel_6_module_temperature: ax25_frame.payload.ax25_info.payload.beacon_type.channel_6_module_temperature
  :field adcs_5v_voltage: ax25_frame.payload.ax25_info.payload.beacon_type.adcs_5v_voltage
  :field adcs_5v_current: ax25_frame.payload.ax25_info.payload.beacon_type.adcs_5v_current
  :field adcs_3v3_voltage: ax25_frame.payload.ax25_info.payload.beacon_type.adcs_3v3_voltage
  :field adcs_3v3_current: ax25_frame.payload.ax25_info.payload.beacon_type.adcs_3v3_current
  :field adcs_vbatt_curent: ax25_frame.payload.ax25_info.payload.beacon_type.adcs_vbatt_curent
  :field adcs_vbatt_voltage: ax25_frame.payload.ax25_info.payload.beacon_type.adcs_vbatt_voltage
  :field adcs_temp_0: ax25_frame.payload.ax25_info.payload.beacon_type.adcs_temp_0
  :field adcs_temp_1: ax25_frame.payload.ax25_info.payload.beacon_type.adcs_temp_1
  :field eimu_current: ax25_frame.payload.ax25_info.payload.beacon_type.eimu_current
  :field adc_curr: ax25_frame.payload.ax25_info.payload.beacon_type.adc_curr
  :field sd_v: ax25_frame.payload.ax25_info.payload.beacon_type.sd_v
  :field fcpu_var_1: ax25_frame.payload.ax25_info.payload.beacon_type.fcpu_var_1
  :field fcpu_var_2: ax25_frame.payload.ax25_info.payload.beacon_type.fcpu_var_2
  :field fcpu_var_3: ax25_frame.payload.ax25_info.payload.beacon_type.fcpu_var_3
  :field fcpu_var_4: ax25_frame.payload.ax25_info.payload.beacon_type.fcpu_var_4
  :field fcpu_var_5: ax25_frame.payload.ax25_info.payload.beacon_type.fcpu_var_5
  :field fcpu_var_6: ax25_frame.payload.ax25_info.payload.beacon_type.fcpu_var_6
  :field tbex_payload_current: ax25_frame.payload.ax25_info.payload.beacon_type.tbex_payload_current
  :field tbex_payload_voltage: ax25_frame.payload.ax25_info.payload.beacon_type.tbex_payload_voltage
  :field pim_3v3_current: ax25_frame.payload.ax25_info.payload.beacon_type.pim_3v3_current
  :field pim_3v3_voltage: ax25_frame.payload.ax25_info.payload.beacon_type.pim_3v3_voltage
  :field pim_vbatt_monitor: ax25_frame.payload.ax25_info.payload.beacon_type.pim_vbatt_monitor
  :field pim_bus_3v3_voltag: ax25_frame.payload.ax25_info.payload.beacon_type.pim_bus_3v3_voltag
  :field rtc_unix_time_beacon_2: ax25_frame.payload.ax25_info.payload.beacon_type.rtc_unix_time_beacon_2
  :field numresets_beacon_2: ax25_frame.payload.ax25_info.payload.beacon_type.numresets_beacon_2
  :field stamp_gpio_states_abbreviated: ax25_frame.payload.ax25_info.payload.beacon_type.stamp_gpio_states_abbreviated
  :field fcpu_var_7: ax25_frame.payload.ax25_info.payload.beacon_type.fcpu_var_7
  :field fcpu_var_8: ax25_frame.payload.ax25_info.payload.beacon_type.fcpu_var_8
  :field fcpu_var_9: ax25_frame.payload.ax25_info.payload.beacon_type.fcpu_var_9
  :field fcpu_var_10: ax25_frame.payload.ax25_info.payload.beacon_type.fcpu_var_10
  :field command_received_from_fcpu: ax25_frame.payload.ax25_info.payload.beacon_type.command_received_from_fcpu
  :field nx_wing_magnetometer_x: ax25_frame.payload.ax25_info.payload.beacon_type.nx_wing_magnetometer_x
  :field nx_wing_magnetometer_y: ax25_frame.payload.ax25_info.payload.beacon_type.nx_wing_magnetometer_y
  :field nx_wing_magnetometer_z: ax25_frame.payload.ax25_info.payload.beacon_type.nx_wing_magnetometer_z
  :field px_wing_magnetometer_x: ax25_frame.payload.ax25_info.payload.beacon_type.px_wing_magnetometer_x
  :field px_wing_magnetometer_y: ax25_frame.payload.ax25_info.payload.beacon_type.px_wing_magnetometer_y
  :field px_wing_magnetometer_z: ax25_frame.payload.ax25_info.payload.beacon_type.px_wing_magnetometer_z
  :field py_body_magnetometer_x: ax25_frame.payload.ax25_info.payload.beacon_type.py_body_magnetometer_x
  :field py_body_magnetometer_y: ax25_frame.payload.ax25_info.payload.beacon_type.py_body_magnetometer_y
  :field py_body_magnetometer_z: ax25_frame.payload.ax25_info.payload.beacon_type.py_body_magnetometer_z
  :field ny_body_magnetometer_x: ax25_frame.payload.ax25_info.payload.beacon_type.ny_body_magnetometer_x
  :field ny_body_magnetometer_y: ax25_frame.payload.ax25_info.payload.beacon_type.ny_body_magnetometer_y
  :field ny_body_magnetometer_z: ax25_frame.payload.ax25_info.payload.beacon_type.ny_body_magnetometer_z
  :field py_body_cell_voltage_1: ax25_frame.payload.ax25_info.payload.beacon_type.py_body_cell_voltage_1
  :field py_body_cell_voltage_2: ax25_frame.payload.ax25_info.payload.beacon_type.py_body_cell_voltage_2
  :field py_body_panel_circuitry_current: ax25_frame.payload.ax25_info.payload.beacon_type.py_body_panel_circuitry_current
  :field py_body_internal_temp: ax25_frame.payload.ax25_info.payload.beacon_type.py_body_internal_temp
  :field py_body_external_temp: ax25_frame.payload.ax25_info.payload.beacon_type.py_body_external_temp
  :field ny_body_cell_voltage_1: ax25_frame.payload.ax25_info.payload.beacon_type.ny_body_cell_voltage_1
  :field ny_body_cell_voltage_2: ax25_frame.payload.ax25_info.payload.beacon_type.ny_body_cell_voltage_2
  :field ny_body_panel_circuitry_current: ax25_frame.payload.ax25_info.payload.beacon_type.ny_body_panel_circuitry_current
  :field ny_body_internal_temp: ax25_frame.payload.ax25_info.payload.beacon_type.ny_body_internal_temp
  :field ny_body_external_temp: ax25_frame.payload.ax25_info.payload.beacon_type.ny_body_external_temp
  :field nx_body_cell_voltage_1: ax25_frame.payload.ax25_info.payload.beacon_type.nx_body_cell_voltage_1
  :field nx_body_cell_voltage_2: ax25_frame.payload.ax25_info.payload.beacon_type.nx_body_cell_voltage_2
  :field nx_body_panel_circuitry_current: ax25_frame.payload.ax25_info.payload.beacon_type.nx_body_panel_circuitry_current
  :field nx_body_internal_temp: ax25_frame.payload.ax25_info.payload.beacon_type.nx_body_internal_temp
  :field nx_body_external_temp: ax25_frame.payload.ax25_info.payload.beacon_type.nx_body_external_temp
  :field px_body_cell_voltage_1: ax25_frame.payload.ax25_info.payload.beacon_type.px_body_cell_voltage_1
  :field px_body_cell_voltage_2: ax25_frame.payload.ax25_info.payload.beacon_type.px_body_cell_voltage_2
  :field px_body_panel_circuitry_current: ax25_frame.payload.ax25_info.payload.beacon_type.px_body_panel_circuitry_current
  :field px_body_internal_temp: ax25_frame.payload.ax25_info.payload.beacon_type.px_body_internal_temp
  :field px_body_external_temp: ax25_frame.payload.ax25_info.payload.beacon_type.px_body_external_temp
  :field nx_deployable_temp_1: ax25_frame.payload.ax25_info.payload.beacon_type.nx_deployable_temp_1
  :field nx_deployable_temp_2: ax25_frame.payload.ax25_info.payload.beacon_type.nx_deployable_temp_2
  :field nx_deployable_panel_circuitry_current: ax25_frame.payload.ax25_info.payload.beacon_type.nx_deployable_panel_circuitry_current
  :field px_deployable_temp_1: ax25_frame.payload.ax25_info.payload.beacon_type.px_deployable_temp_1
  :field px_deployable_temp_2: ax25_frame.payload.ax25_info.payload.beacon_type.px_deployable_temp_2
  :field px_deployable_panel_circuitry_current: ax25_frame.payload.ax25_info.payload.beacon_type.px_deployable_panel_circuitry_current
  :field py_deployable_temp_1: ax25_frame.payload.ax25_info.payload.beacon_type.py_deployable_temp_1
  :field py_deployable_temp_2: ax25_frame.payload.ax25_info.payload.beacon_type.py_deployable_temp_2
  :field py_deployable_panel_circuitry_current: ax25_frame.payload.ax25_info.payload.beacon_type.py_deployable_panel_circuitry_current
  :field ny_deployable_temp_1: ax25_frame.payload.ax25_info.payload.beacon_type.ny_deployable_temp_1
  :field ny_deployable_temp_2: ax25_frame.payload.ax25_info.payload.beacon_type.ny_deployable_temp_2
  :field ny_deployable_panel_circuitry_current: ax25_frame.payload.ax25_info.payload.beacon_type.ny_deployable_panel_circuitry_current
  :field nx_wing_photodiode_a: ax25_frame.payload.ax25_info.payload.beacon_type.nx_wing_photodiode_a
  :field nx_wing_photodiode_b: ax25_frame.payload.ax25_info.payload.beacon_type.nx_wing_photodiode_b
  :field px_wing_photodiode_a: ax25_frame.payload.ax25_info.payload.beacon_type.px_wing_photodiode_a
  :field px_wing_photodiode_b: ax25_frame.payload.ax25_info.payload.beacon_type.px_wing_photodiode_b
  :field py_body_photodiode_a: ax25_frame.payload.ax25_info.payload.beacon_type.py_body_photodiode_a
  :field py_body_photodiode_b: ax25_frame.payload.ax25_info.payload.beacon_type.py_body_photodiode_b
  :field ny_body_photodiode_a: ax25_frame.payload.ax25_info.payload.beacon_type.ny_body_photodiode_a
  :field ny_body_photodiode_b: ax25_frame.payload.ax25_info.payload.beacon_type.ny_body_photodiode_b
  :field py_wing_photodiode_a: ax25_frame.payload.ax25_info.payload.beacon_type.py_wing_photodiode_a
  :field py_wing_photodiode_b: ax25_frame.payload.ax25_info.payload.beacon_type.py_wing_photodiode_b
  :field ny_wing_photodiode_a: ax25_frame.payload.ax25_info.payload.beacon_type.ny_wing_photodiode_a
  :field ny_wing_photodiode_b: ax25_frame.payload.ax25_info.payload.beacon_type.ny_wing_photodiode_b
  :field nx_body_photodiode_a: ax25_frame.payload.ax25_info.payload.beacon_type.nx_body_photodiode_a
  :field nx_body_photodiode_b: ax25_frame.payload.ax25_info.payload.beacon_type.nx_body_photodiode_b
  :field px_body_photodiode_a: ax25_frame.payload.ax25_info.payload.beacon_type.px_body_photodiode_a
  :field px_body_photodiode_b: ax25_frame.payload.ax25_info.payload.beacon_type.px_body_photodiode_b
  :field gyro_4_x: ax25_frame.payload.ax25_info.payload.beacon_type.gyro_4_x
  :field gyro_4_y: ax25_frame.payload.ax25_info.payload.beacon_type.gyro_4_y
  :field gyro_4_z: ax25_frame.payload.ax25_info.payload.beacon_type.gyro_4_z
  :field eimu_temperature: ax25_frame.payload.ax25_info.payload.beacon_type.eimu_temperature
  :field wheel_x_speed: ax25_frame.payload.ax25_info.payload.beacon_type.wheel_x_speed
  :field wheel_y_speed: ax25_frame.payload.ax25_info.payload.beacon_type.wheel_y_speed
  :field wheel_z_speed: ax25_frame.payload.ax25_info.payload.beacon_type.wheel_z_speed
  :field tcb_temp_0: ax25_frame.payload.ax25_info.payload.beacon_type.tcb_temp_0
  :field tcb_3v3_current: ax25_frame.payload.ax25_info.payload.beacon_type.tcb_3v3_current
  :field tcb_vbatt_current: ax25_frame.payload.ax25_info.payload.beacon_type.tcb_vbatt_current
  :field input_current: ax25_frame.payload.ax25_info.payload.beacon_type.input_current
  :field input_voltage: ax25_frame.payload.ax25_info.payload.beacon_type.input_voltage
  :field voltage_5_5: ax25_frame.payload.ax25_info.payload.beacon_type.voltage_5_5
  :field voltage_3_0: ax25_frame.payload.ax25_info.payload.beacon_type.voltage_3_0
  :field voltage_3_3: ax25_frame.payload.ax25_info.payload.beacon_type.voltage_3_3
  :field rf_board_temperature: ax25_frame.payload.ax25_info.payload.beacon_type.rf_board_temperature
  :field control_board_temperature: ax25_frame.payload.ax25_info.payload.beacon_type.control_board_temperature
  :field vhf_channel_forward_power: ax25_frame.payload.ax25_info.payload.beacon_type.vhf_channel_forward_power
  :field uhf_channel_forward_power: ax25_frame.payload.ax25_info.payload.beacon_type.uhf_channel_forward_power
  :field l_band_channel_forward_power: ax25_frame.payload.ax25_info.payload.beacon_type.l_band_channel_forward_power
  :field vhf_channel_reverse_power: ax25_frame.payload.ax25_info.payload.beacon_type.vhf_channel_reverse_power
  :field uhf_channel_reverse_power: ax25_frame.payload.ax25_info.payload.beacon_type.uhf_channel_reverse_power
  :field l_band_channel_reverse_power: ax25_frame.payload.ax25_info.payload.beacon_type.l_band_channel_reverse_power
  :field pll_config_mask: ax25_frame.payload.ax25_info.payload.beacon_type.pll_config_mask
  :field ppu_reset_count: ax25_frame.payload.ax25_info.payload.beacon_type.ppu_reset_count
  :field status_mask: ax25_frame.payload.ax25_info.payload.beacon_type.status_mask
  :field error_mask: ax25_frame.payload.ax25_info.payload.beacon_type.error_mask
  :field crc: ax25_frame.payload.crc

seq:
  - id: ax25_frame
    type: ax25_frame
    doc-ref: 'https://www.tapr.org/pub_ax25.html'
instances:
  framelength:
    value: _io.size
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
        size-eos: true
  ui_frame:
    seq:
      - id: pid
        type: u1
      - id: ax25_info
        type:
          switch-on: _parent.ax25_header.src_callsign_raw.callsign_ror.callsign
          cases:
            '"KF6RFX"': tbex_packet_t
        size-eos: true
  tbex_packet_t:
    seq:
      - id: header
        type: tbex_header_t
        size: 11
      - id: payload
        type:
          switch-on: header.spacecraft_identifier
          cases:
            0x52: tbex_beacon_t
            0x53: tbex_beacon_t
        doc: |
          0x52: Spacecraft Identifier for TBEX-A
          0x53: Spacecraft Identifier for TBEX-B
      - id: crc
        type: u4
  tbex_header_t:
    seq:
      - id: flags
        type: u2
      - id: padding_1
        size: 3
      - id: spacecraft_identifier
        type: u1
      - id: padding_2
        size: 5
  tbex_beacon_t:
    seq:
      - id: beacon_type
        type:
          switch-on: _root.framelength
          cases:
            219: beacon_2_t
            255: beacon_1_t
  beacon_1_t:
    seq:
      - id: operation_mode
        type: u2
      - id: rtc_unix_time
        type: u4
      - id: numresets
        type: u2
      - id: avgnumactivetasks1
        type: u2
      - id: avgnumactivetasks5
        type: u2
      - id: avgnumactivetasks15
        type: u2
      - id: totnumprocesses
        type: u2
      - id: usedmemminuscache
        type: u2
      - id: freemempluscache
        type: u2
      - id: sd_usage
        type: u2
      - id: datamnt_usage
        type: u2
      - id: stamp_gpio_states
        type: u2
      - id: ioe_states
        type: u1
      - id: lithium_op_count
        type: u2
      - id: lithium_msp430_temp
        type: s2
      - id: lithium_rssi
        type: u1
      - id: lithium_rx
        type: u4
      - id: lithium_tx
        type: u4
      - id: fcpu_processor_temp
        type: s2
      - id: lithium_pa_temp
        type: s2
      - id: li_3v3_voltage
        type: u2
      - id: fcpu_3v3_current
        type: u2
      - id: li_3v3_current
        type: u2
      - id: fcpu_3v3_voltage
        type: u2
      - id: li_vbatt_voltage
        type: u2
      - id: li_vbatt_current
        type: u2
      - id: sd_imon_1
        type: u2
      - id: sd_imon_2
        type: u2
      - id: sd_imon_3
        type: u2
      - id: sd_imon_4
        type: u2
      - id: battery_voltage
        type: u2
      - id: battery_current
        type: s2
      - id: battery_temperature
        type: u2
      - id: battery_bus_voltage
        type: u2
      - id: battery_bus_current
        type: u2
      - id: bus_voltage_5v
        type: u2
      - id: bus_current_5v
        type: u2
      - id: input_current_5v
        type: u2
      - id: bus_voltage_3_3v
        type: u2
      - id: bus_current_3_3v
        type: u2
      - id: input_current_3_3v
        type: u2
      - id: output_regulator_temperature
        type: u2
      - id: eps_5v_voltage
        type: u2
      - id: eps_5v_current
        type: u2
      - id: eps_3_3_voltage
        type: s2
      - id: eps_3_3v_current
        type: s2
      - id: channel_1_panel_voltage_a
        type: u2
      - id: channel_1_panel_voltage_b
        type: u2
      - id: channel_1_panel_current_a
        type: u2
      - id: channel_1_panel_current_b
        type: u2
      - id: channel_1_output_current
        type: u2
      - id: channel_1_output_voltage
        type: u2
      - id: channel_1_board_temperature
        type: s2
      - id: channel_1_module_temperature
        type: s2
      - id: channel_2_panel_voltage_a
        type: u2
      - id: channel_2_panel_voltage_b
        type: u2
      - id: channel_2_panel_current_a
        type: u2
      - id: channel_2_panel_current_b
        type: u2
      - id: channel_2_output_current
        type: u2
      - id: channel_2_output_voltage
        type: u2
      - id: channel_2_board_temperature
        type: s2
      - id: channel_2_module_temperature
        type: s2
      - id: channel_3_panel_voltage_a
        type: u2
      - id: channel_3_panel_voltage_b
        type: u2
      - id: channel_3_panel_current_a
        type: u2
      - id: channel_3_panel_current_b
        type: u2
      - id: channel_3_output_current
        type: u2
      - id: channel_3_output_voltage
        type: u2
      - id: channel_3_board_temperature
        type: s2
      - id: channel_3_module_temperature
        type: s2
      - id: channel_4_panel_voltage_a
        type: u2
      - id: channel_4_panel_voltage_b
        type: u2
      - id: channel_4_panel_current_a
        type: u2
      - id: channel_4_panel_current_b
        type: u2
      - id: channel_4_output_current
        type: u2
      - id: channel_4_output_voltage
        type: u2
      - id: channel_4_board_temperature
        type: s2
      - id: channel_4_module_temperature
        type: s2
      - id: channel_5_module_input_voltage
        type: u2
      - id: channel_5_panel_current_a
        type: u2
      - id: channel_5_panel_current_b
        type: u2
      - id: channel_5_output_current
        type: u2
      - id: channel_5_board_temperature
        type: s2
      - id: channel_5_module_temperature
        type: s2
      - id: channel_6_module_input_voltage
        type: u2
      - id: channel_6_panel_current_a
        type: u2
      - id: channel_6_panel_current_b
        type: u2
      - id: channel_6_output_current
        type: u2
      - id: channel_6_board_temperature
        type: s2
      - id: channel_6_module_temperature
        type: s2
      - id: adcs_5v_voltage
        type: u2
      - id: adcs_5v_current
        type: u2
      - id: adcs_3v3_voltage
        type: u2
      - id: adcs_3v3_current
        type: u2
      - id: adcs_vbatt_curent
        type: u2
      - id: adcs_vbatt_voltage
        type: u2
      - id: adcs_temp_0
        type: s2
      - id: adcs_temp_1
        type: s2
      - id: eimu_current
        type: u2
      - id: adc_curr
        type: u2
      - id: sd_v
        type: u2
      - id: fcpu_var_1
        type: u1
      - id: fcpu_var_2
        type: u1
      - id: fcpu_var_3
        type: u1
      - id: fcpu_var_4
        type: u1
      - id: fcpu_var_5
        type: u1
      - id: fcpu_var_6
        type: u1
      - id: tbex_payload_current
        type: u2
      - id: tbex_payload_voltage
        type: u2
      - id: pim_3v3_current
        type: u2
      - id: pim_3v3_voltage
        type: u2
      - id: pim_vbatt_monitor
        type: u2
      - id: pim_bus_3v3_voltag
        type: u2
  beacon_2_t:
    seq:
      - id: rtc_unix_time_beacon_2
        type: u4
      - id: numresets_beacon_2
        type: u2
      - id: stamp_gpio_states_abbreviated
        type: u1
      - id: fcpu_var_7
        type: u1
      - id: fcpu_var_8
        type: u1
      - id: fcpu_var_9
        type: u1
      - id: fcpu_var_10
        type: u1
      - id: command_received_from_fcpu
        type: u2
      - id: nx_wing_magnetometer_x
        type: s2
      - id: nx_wing_magnetometer_y
        type: s2
      - id: nx_wing_magnetometer_z
        type: s2
      - id: px_wing_magnetometer_x
        type: s2
      - id: px_wing_magnetometer_y
        type: s2
      - id: px_wing_magnetometer_z
        type: s2
      - id: py_body_magnetometer_x
        type: s2
      - id: py_body_magnetometer_y
        type: s2
      - id: py_body_magnetometer_z
        type: s2
      - id: ny_body_magnetometer_x
        type: s2
      - id: ny_body_magnetometer_y
        type: s2
      - id: ny_body_magnetometer_z
        type: s2
      - id: py_body_cell_voltage_1
        type: u2
      - id: py_body_cell_voltage_2
        type: u2
      - id: py_body_panel_circuitry_current
        type: u2
      - id: py_body_internal_temp
        type: s2
      - id: py_body_external_temp
        type: s2
      - id: ny_body_cell_voltage_1
        type: u2
      - id: ny_body_cell_voltage_2
        type: u2
      - id: ny_body_panel_circuitry_current
        type: u2
      - id: ny_body_internal_temp
        type: s2
      - id: ny_body_external_temp
        type: s2
      - id: nx_body_cell_voltage_1
        type: u2
      - id: nx_body_cell_voltage_2
        type: u2
      - id: nx_body_panel_circuitry_current
        type: u2
      - id: nx_body_internal_temp
        type: s2
      - id: nx_body_external_temp
        type: s2
      - id: px_body_cell_voltage_1
        type: u2
      - id: px_body_cell_voltage_2
        type: u2
      - id: px_body_panel_circuitry_current
        type: u2
      - id: px_body_internal_temp
        type: s2
      - id: px_body_external_temp
        type: s2
      - id: nx_deployable_temp_1
        type: s2
      - id: nx_deployable_temp_2
        type: s2
      - id: nx_deployable_panel_circuitry_current
        type: u2
      - id: px_deployable_temp_1
        type: s2
      - id: px_deployable_temp_2
        type: s2
      - id: px_deployable_panel_circuitry_current
        type: u2
      - id: py_deployable_temp_1
        type: s2
      - id: py_deployable_temp_2
        type: s2
      - id: py_deployable_panel_circuitry_current
        type: u2
      - id: ny_deployable_temp_1
        type: s2
      - id: ny_deployable_temp_2
        type: s2
      - id: ny_deployable_panel_circuitry_current
        type: u2
      - id: nx_wing_photodiode_a
        type: u2
      - id: nx_wing_photodiode_b
        type: u2
      - id: px_wing_photodiode_a
        type: u2
      - id: px_wing_photodiode_b
        type: u2
      - id: py_body_photodiode_a
        type: u2
      - id: py_body_photodiode_b
        type: u2
      - id: ny_body_photodiode_a
        type: u2
      - id: ny_body_photodiode_b
        type: u2
      - id: py_wing_photodiode_a
        type: u2
      - id: py_wing_photodiode_b
        type: u2
      - id: ny_wing_photodiode_a
        type: u2
      - id: ny_wing_photodiode_b
        type: u2
      - id: nx_body_photodiode_a
        type: u2
      - id: nx_body_photodiode_b
        type: u2
      - id: px_body_photodiode_a
        type: u2
      - id: px_body_photodiode_b
        type: u2
      - id: gyro_4_x
        type: s2
      - id: gyro_4_y
        type: s2
      - id: gyro_4_z
        type: s2
      - id: eimu_temperature
        type: s2
      - id: wheel_x_speed
        type: s2
      - id: wheel_y_speed
        type: s2
      - id: wheel_z_speed
        type: s2
      - id: tcb_temp_0
        type: s2
      - id: tcb_3v3_current
        type: u2
      - id: tcb_vbatt_current
        type: u2
      - id: input_current
        type: u2
      - id: input_voltage
        type: u2
      - id: voltage_5_5
        type: u2
      - id: voltage_3_0
        type: u2
      - id: voltage_3_3
        type: u2
      - id: rf_board_temperature
        type: u2
      - id: control_board_temperature
        type: u2
      - id: vhf_channel_forward_power
        type: u2
      - id: uhf_channel_forward_power
        type: u2
      - id: l_band_channel_forward_power
        type: u2
      - id: vhf_channel_reverse_power
        type: u2
      - id: uhf_channel_reverse_power
        type: u2
      - id: l_band_channel_reverse_power
        type: u2
      - id: pll_config_mask
        type: u1
      - id: ppu_reset_count
        type: u1
      - id: status_mask
        type: u1
      - id: error_mask
        type: u2
      - id: crc
        type: u2
