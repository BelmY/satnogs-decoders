meta:
  id: pwsat2
  endian: le
doc: |
  :field pwsat2_dest_callsign: ax25_frame.ax25_header.dest_callsign_raw.callsign_ror.callsign
  :field pwsat2_dest_ssid: ax25_frame.ax25_header.dest_ssid_raw.ssid
  :field pwsat2_src_callsign: ax25_frame.ax25_header.src_callsign_raw.callsign_ror.callsign
  :field pwsat2_src_ssid: ax25_frame.ax25_header.src_ssid_raw.ssid
  :field pwsat2_ctl: ax25_frame.ax25_header.ctl
  :field pwsat2_pid: ax25_frame.payload.pid
  :field pwsat2_apid: ax25_frame.payload.ax25_info.pwsat2_hdr.pwsat2_apid
  :field pwsat2_periodic_msg_data: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_periodic_msg_data
  :field pwsat2_obc_boot_ctr: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_obc.pwsat2_obc_boot_ctr
  :field pwsat2_obc_boot_idx: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_obc.pwsat2_obc_boot_idx
  :field pwsat2_obc_reboot_reason: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_obc.pwsat2_obc_reboot_reason
  :field pwsat2_obc_code_crc: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_obc.pwsat2_obc_code_crc
  :field pwsat2_obc_mission_time: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_obc.pwsat2_obc_mission_time
  :field pwsat2_obc_ext_time: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_obc.pwsat2_obc_ext_time
  :field pwsat2_obc_comm_err: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_obc.pwsat2_obc_comm_err
  :field pwsat2_obc_eps_err: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_obc.pwsat2_obc_eps_err
  :field pwsat2_obc_rtc_err: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_obc.pwsat2_obc_rtc_err
  :field pwsat2_obc_imtq_err: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_obc.pwsat2_obc_imtq_err
  :field pwsat2_obc_n25qflash1_err: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_obc.pwsat2_obc_n25qflash1_err
  :field pwsat2_obc_n25qflash2_err: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_obc.pwsat2_obc_n25qflash2_err
  :field pwsat2_obc_n25qflash3_err: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_obc.pwsat2_obc_n25qflash3_err
  :field pwsat2_obc_n25q_tmr_corr: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_obc.pwsat2_obc_n25q_tmr_corr
  :field pwsat2_obc_fram_tmr_corr: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_obc.pwsat2_obc_fram_tmr_corr
  :field pwsat2_obc_payload_err: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_obc.pwsat2_obc_payload_err
  :field pwsat2_obc_cam_err: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_obc.pwsat2_obc_cam_err
  :field pwsat2_obc_suns_exp_err: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_obc.pwsat2_obc_suns_exp_err
  :field pwsat2_obc_ant_prim_err: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_obc.pwsat2_obc_ant_prim_err
  :field pwsat2_obc_ant_sec_err: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_obc.pwsat2_obc_ant_sec_err
  :field pwsat2_obc_prim_flash_scrbg_ptr: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_obc.pwsat2_obc_prim_flash_scrbg_ptr
  :field pwsat2_obc_sec_flash_scrbg_ptr: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_obc.pwsat2_obc_sec_flash_scrbg_ptr
  :field pwsat2_obc_ram_scrbg_ptr: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_obc.pwsat2_obc_ram_scrbg_ptr
  :field pwsat2_obc_system_uptime: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_obc.pwsat2_obc_system_uptime
  :field pwsat2_obc_system_flash_free: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_obc.pwsat2_obc_system_flash_free
  :field pwsat2_antennas_ant1_depl_sw_ch_a: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_antennas.pwsat2_antennas_ant1_depl_sw_ch_a
  :field pwsat2_antennas_ant2_depl_sw_ch_a: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_antennas.pwsat2_antennas_ant2_depl_sw_ch_a
  :field pwsat2_antennas_ant3_depl_sw_ch_a: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_antennas.pwsat2_antennas_ant3_depl_sw_ch_a
  :field pwsat2_antennas_ant4_depl_sw_ch_a: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_antennas.pwsat2_antennas_ant4_depl_sw_ch_a
  :field pwsat2_antennas_ant1_depl_sw_ch_b: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_antennas.pwsat2_antennas_ant1_depl_sw_ch_b
  :field pwsat2_antennas_ant2_depl_sw_ch_b: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_antennas.pwsat2_antennas_ant2_depl_sw_ch_b
  :field pwsat2_antennas_ant3_depl_sw_ch_b: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_antennas.pwsat2_antennas_ant3_depl_sw_ch_b
  :field pwsat2_antennas_ant4_depl_sw_ch_b: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_antennas.pwsat2_antennas_ant4_depl_sw_ch_b
  :field pwsat2_antennas_ant1_last_timed_stop_ch_a: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_antennas.pwsat2_antennas_ant1_last_timed_stop_ch_a
  :field pwsat2_antennas_ant2_last_timed_stop_ch_a: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_antennas.pwsat2_antennas_ant2_last_timed_stop_ch_a
  :field pwsat2_antennas_ant3_last_timed_stop_ch_a: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_antennas.pwsat2_antennas_ant3_last_timed_stop_ch_a
  :field pwsat2_antennas_ant4_last_timed_stop_ch_a: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_antennas.pwsat2_antennas_ant4_last_timed_stop_ch_a
  :field pwsat2_antennas_ant1_last_timed_stop_ch_b: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_antennas.pwsat2_antennas_ant1_last_timed_stop_ch_b
  :field pwsat2_antennas_ant2_last_timed_stop_ch_b: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_antennas.pwsat2_antennas_ant2_last_timed_stop_ch_b
  :field pwsat2_antennas_ant3_last_timed_stop_ch_b: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_antennas.pwsat2_antennas_ant3_last_timed_stop_ch_b
  :field pwsat2_antennas_ant4_last_timed_stop_ch_b: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_antennas.pwsat2_antennas_ant4_last_timed_stop_ch_b
  :field pwsat2_antennas_ant1_burn_active_ch_a: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_antennas.pwsat2_antennas_ant1_burn_active_ch_a
  :field pwsat2_antennas_ant2_burn_active_ch_a: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_antennas.pwsat2_antennas_ant2_burn_active_ch_a
  :field pwsat2_antennas_ant3_burn_active_ch_a: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_antennas.pwsat2_antennas_ant3_burn_active_ch_a
  :field pwsat2_antennas_ant4_burn_active_ch_a: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_antennas.pwsat2_antennas_ant4_burn_active_ch_a
  :field pwsat2_antennas_ant1_burn_active_ch_b: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_antennas.pwsat2_antennas_ant1_burn_active_ch_b
  :field pwsat2_antennas_ant2_burn_active_ch_b: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_antennas.pwsat2_antennas_ant2_burn_active_ch_b
  :field pwsat2_antennas_ant3_burn_active_ch_b: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_antennas.pwsat2_antennas_ant3_burn_active_ch_b
  :field pwsat2_antennas_ant4_burn_active_ch_b: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_antennas.pwsat2_antennas_ant4_burn_active_ch_b
  :field pwsat2_antennas_sys_indep_burn_ch_a: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_antennas.pwsat2_antennas_sys_indep_burn_ch_a
  :field pwsat2_antennas_sys_indep_burn_ch_b: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_antennas.pwsat2_antennas_sys_indep_burn_ch_b
  :field pwsat2_antennas_ant_ignoring_sw_ch_a: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_antennas.pwsat2_antennas_ant_ignoring_sw_ch_a
  :field pwsat2_antennas_ant_ignoring_sw_ch_b: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_antennas.pwsat2_antennas_ant_ignoring_sw_ch_b
  :field pwsat2_antennas_armed_ch_a: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_antennas.pwsat2_antennas_armed_ch_a
  :field pwsat2_antennas_armed_ch_b: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_antennas.pwsat2_antennas_armed_ch_b
  :field pwsat2_antennas_ant1_activation_cnt_ch_a: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_antennas.pwsat2_antennas_ant1_activation_cnt_ch_a
  :field pwsat2_antennas_ant2_activation_cnt_ch_a: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_antennas.pwsat2_antennas_ant2_activation_cnt_ch_a
  :field pwsat2_antennas_ant3_activation_cnt_ch_a: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_antennas.pwsat2_antennas_ant3_activation_cnt_ch_a
  :field pwsat2_antennas_ant4_activation_cnt_ch_a: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_antennas.pwsat2_antennas_ant4_activation_cnt_ch_a
  :field pwsat2_antennas_ant1_activation_cnt_ch_b: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_antennas.pwsat2_antennas_ant1_activation_cnt_ch_b
  :field pwsat2_antennas_ant2_activation_cnt_ch_b: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_antennas.pwsat2_antennas_ant2_activation_cnt_ch_b
  :field pwsat2_antennas_ant3_activation_cnt_ch_b: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_antennas.pwsat2_antennas_ant3_activation_cnt_ch_b
  :field pwsat2_antennas_ant4_activation_cnt_ch_b: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_antennas.pwsat2_antennas_ant4_activation_cnt_ch_b
  :field pwsat2_antennas_ant1_activation_time_ch_a: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_antennas.pwsat2_antennas_ant1_activation_time_ch_a
  :field pwsat2_antennas_ant2_activation_time_ch_a: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_antennas.pwsat2_antennas_ant2_activation_time_ch_a
  :field pwsat2_antennas_ant3_activation_time_ch_a: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_antennas.pwsat2_antennas_ant3_activation_time_ch_a
  :field pwsat2_antennas_ant4_activation_time_ch_a: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_antennas.pwsat2_antennas_ant4_activation_time_ch_a
  :field pwsat2_antennas_ant1_activation_time_ch_b: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_antennas.pwsat2_antennas_ant1_activation_time_ch_b
  :field pwsat2_antennas_ant2_activation_time_ch_b: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_antennas.pwsat2_antennas_ant2_activation_time_ch_b
  :field pwsat2_antennas_ant3_activation_time_ch_b: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_antennas.pwsat2_antennas_ant3_activation_time_ch_b
  :field pwsat2_antennas_ant4_activation_time_ch_b: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_antennas.pwsat2_antennas_ant4_activation_time_ch_b
  :field pwsat2_experiments_curr_exp_code: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_experiments.pwsat2_experiments_curr_exp_code
  :field pwsat2_experiments_exp_startup_res: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_experiments.pwsat2_experiments_exp_startup_res
  :field pwsat2_experiments_last_exp_iter_stat_status: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_experiments.pwsat2_experiments_last_exp_iter_stat_status
  :field pwsat2_gyroscope_x_meas: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_gyroscope.pwsat2_gyroscope_x_meas
  :field pwsat2_gyroscope_y_meas: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_gyroscope.pwsat2_gyroscope_y_meas
  :field pwsat2_gyroscope_z_meas: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_gyroscope.pwsat2_gyroscope_z_meas
  :field pwsat2_gyroscope_temp: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_gyroscope.pwsat2_gyroscope_temp
  :field pwsat2_comm_tx_trsmtr_uptime: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_comm.pwsat2_comm_tx_trsmtr_uptime
  :field pwsat2_comm_tx_bitrate: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_comm.pwsat2_comm_tx_bitrate
  :field pwsat2_comm_tx_last_tx_rf_refl_pwr: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_comm.pwsat2_comm_tx_last_tx_rf_refl_pwr
  :field pwsat2_comm_tx_last_tx_pamp_temp: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_comm.pwsat2_comm_tx_last_tx_pamp_temp
  :field pwsat2_comm_tx_last_tx_last_tx_rf_fwd_pwr: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_comm.pwsat2_comm_tx_last_tx_last_tx_rf_fwd_pwr
  :field pwsat2_comm_tx_last_tx_curr_consmpt: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_comm.pwsat2_comm_tx_last_tx_curr_consmpt
  :field pwsat2_comm_tx_now_tx_fwd_pwr: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_comm.pwsat2_comm_tx_now_tx_fwd_pwr
  :field pwsat2_comm_tx_now_tx_curr_consmpt: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_comm.pwsat2_comm_tx_now_tx_curr_consmpt
  :field pwsat2_comm_tx_state_when_idle: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_comm.pwsat2_comm_tx_state_when_idle
  :field pwsat2_comm_tx_beacon_state: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_comm.pwsat2_comm_tx_beacon_state
  :field pwsat2_comm_rx_uptime: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_comm.pwsat2_comm_rx_uptime
  :field pwsat2_comm_rx_last_rx_doppler_offs: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_comm.pwsat2_comm_rx_last_rx_doppler_offs
  :field pwsat2_comm_rx_last_rx_rssi: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_comm.pwsat2_comm_rx_last_rx_rssi
  :field pwsat2_comm_rx_now_doppler_offs: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_comm.pwsat2_comm_rx_now_doppler_offs
  :field pwsat2_comm_rx_now_rx_curr_consmpt: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_comm.pwsat2_comm_rx_now_rx_curr_consmpt
  :field pwsat2_comm_rx_supply_voltage: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_comm.pwsat2_comm_rx_supply_voltage
  :field pwsat2_comm_rx_osc_temp: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_comm.pwsat2_comm_rx_osc_temp
  :field pwsat2_comm_rx_now_pamp_temp: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_comm.pwsat2_comm_rx_now_pamp_temp
  :field pwsat2_comm_rx_now_rssi: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_comm.pwsat2_comm_rx_now_rssi
  :field pwsat2_hardware_state_gpio_sail_deployed: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_hardware_state.pwsat2_hardware_state_gpio_sail_deployed
  :field pwsat2_hardware_state_mcu_temp: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_hardware_state.pwsat2_hardware_state_mcu_temp
  :field pwsat2_eps_controller_a_mpptx_sol_volt: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_eps_controller_a.pwsat2_eps_controller_a_mpptx_sol_volt
  :field pwsat2_eps_controller_a_mpptx_sol_curr: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_eps_controller_a.pwsat2_eps_controller_a_mpptx_sol_curr
  :field pwsat2_eps_controller_a_mpptx_out_volt: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_eps_controller_a.pwsat2_eps_controller_a_mpptx_out_volt
  :field pwsat2_eps_controller_a_mpptx_temp: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_eps_controller_a.pwsat2_eps_controller_a_mpptx_temp
  :field pwsat2_eps_controller_a_mpptx_state: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_eps_controller_a.pwsat2_eps_controller_a_mpptx_state
  :field pwsat2_eps_controller_a_mppty_pos_sol_volt: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_eps_controller_a.pwsat2_eps_controller_a_mppty_pos_sol_volt
  :field pwsat2_eps_controller_a_mppty_pos_sol_curr: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_eps_controller_a.pwsat2_eps_controller_a_mppty_pos_sol_curr
  :field pwsat2_eps_controller_a_mppty_pos_out_volt: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_eps_controller_a.pwsat2_eps_controller_a_mppty_pos_out_volt
  :field pwsat2_eps_controller_a_mppty_pos_temp: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_eps_controller_a.pwsat2_eps_controller_a_mppty_pos_temp
  :field pwsat2_eps_controller_a_mppty_pos_state: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_eps_controller_a.pwsat2_eps_controller_a_mppty_pos_state
  :field pwsat2_eps_controller_a_mppty_neg_sol_volt: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_eps_controller_a.pwsat2_eps_controller_a_mppty_neg_sol_volt
  :field pwsat2_eps_controller_a_mppty_neg_sol_curr: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_eps_controller_a.pwsat2_eps_controller_a_mppty_neg_sol_curr
  :field pwsat2_eps_controller_a_mppty_neg_out_volt: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_eps_controller_a.pwsat2_eps_controller_a_mppty_neg_out_volt
  :field pwsat2_eps_controller_a_mppty_neg_temp: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_eps_controller_a.pwsat2_eps_controller_a_mppty_neg_temp
  :field pwsat2_eps_controller_a_mppty_neg_state: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_eps_controller_a.pwsat2_eps_controller_a_mppty_neg_state
  :field pwsat2_eps_controller_a_distr_volt_3v3: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_eps_controller_a.pwsat2_eps_controller_a_distr_volt_3v3
  :field pwsat2_eps_controller_a_distr_curr_3v3: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_eps_controller_a.pwsat2_eps_controller_a_distr_curr_3v3
  :field pwsat2_eps_controller_a_distr_volt_5v: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_eps_controller_a.pwsat2_eps_controller_a_distr_volt_5v
  :field pwsat2_eps_controller_a_distr_curr_5v: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_eps_controller_a.pwsat2_eps_controller_a_distr_curr_5v
  :field pwsat2_eps_controller_a_distr_volt_vbat: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_eps_controller_a.pwsat2_eps_controller_a_distr_volt_vbat
  :field pwsat2_eps_controller_a_distr_curr_vbat: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_eps_controller_a.pwsat2_eps_controller_a_distr_curr_vbat
  :field pwsat2_eps_controller_a_distr_lcl_state: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_eps_controller_a.pwsat2_eps_controller_a_distr_lcl_state
  :field pwsat2_eps_controller_a_distr_lcl_flagb: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_eps_controller_a.pwsat2_eps_controller_a_distr_lcl_flagb
  :field pwsat2_eps_controller_a_batc_volta: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_eps_controller_a.pwsat2_eps_controller_a_batc_volta
  :field pwsat2_eps_controller_a_batc_chrg_curr: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_eps_controller_a.pwsat2_eps_controller_a_batc_chrg_curr
  :field pwsat2_eps_controller_a_batc_dchrg_curr: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_eps_controller_a.pwsat2_eps_controller_a_batc_dchrg_curr
  :field pwsat2_eps_controller_a_batc_temp: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_eps_controller_a.pwsat2_eps_controller_a_batc_temp
  :field pwsat2_eps_controller_a_batc_state: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_eps_controller_a.pwsat2_eps_controller_a_batc_state
  :field pwsat2_eps_controller_a_bp_temp_a: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_eps_controller_a.pwsat2_eps_controller_a_bp_temp_a
  :field pwsat2_eps_controller_a_bp_temp_b: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_eps_controller_a.pwsat2_eps_controller_a_bp_temp_b
  :field pwsat2_eps_controller_a_safety_ctr: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_eps_controller_a.pwsat2_eps_controller_a_safety_ctr
  :field pwsat2_eps_controller_a_pwr_cycles: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_eps_controller_a.pwsat2_eps_controller_a_pwr_cycles
  :field pwsat2_eps_controller_a_uptime: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_eps_controller_a.pwsat2_eps_controller_a_uptime
  :field pwsat2_eps_controller_a_temp: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_eps_controller_a.pwsat2_eps_controller_a_temp
  :field pwsat2_eps_controller_a_supp_temp: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_eps_controller_a.pwsat2_eps_controller_a_supp_temp
  :field pwsat2_eps_controller_b_3v3d_volt: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_eps_controller_a.pwsat2_eps_controller_b_3v3d_volt
  :field pwsat2_eps_controller_a_dcdc_3v3_temp: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_eps_controller_a.pwsat2_eps_controller_a_dcdc_3v3_temp
  :field pwsat2_eps_controller_a_dcdc_5v_temp: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_eps_controller_a.pwsat2_eps_controller_a_dcdc_5v_temp
  :field pwsat2_eps_controller_b_bptemp_c: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_eps_controller_b.pwsat2_eps_controller_b_bptemp_c
  :field pwsat2_eps_controller_b_battc_volt_b: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_eps_controller_b.pwsat2_eps_controller_b_battc_volt_b
  :field pwsat2_eps_controller_b_safety_ctr: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_eps_controller_b.pwsat2_eps_controller_b_safety_ctr
  :field pwsat2_eps_controller_b_pwr_cycles: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_eps_controller_b.pwsat2_eps_controller_b_pwr_cycles
  :field pwsat2_eps_controller_b_uptime: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_eps_controller_b.pwsat2_eps_controller_b_uptime
  :field pwsat2_eps_controller_b_temp: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_eps_controller_b.pwsat2_eps_controller_b_temp
  :field pwsat2_eps_controller_b_supp_temp: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_eps_controller_b.pwsat2_eps_controller_b_supp_temp
  :field pwsat2_eps_controller_a_3v3d_volt: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_eps_controller_b.pwsat2_eps_controller_a_3v3d_volt
  :field pwsat2_imtq_mag_meas_1: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_imtq.pwsat2_imtq_mag_meas_1
  :field pwsat2_imtq_mag_meas_2: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_imtq.pwsat2_imtq_mag_meas_2
  :field pwsat2_imtq_mag_meas_3: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_imtq.pwsat2_imtq_mag_meas_3
  :field pwsat2_imtq_coil_active_in_meas: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_imtq_coil_active.pwsat2_imtq_coil_active_in_meas
  :field pwsat2_imtq_dipole_1: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_imtq_dipole.pwsat2_imtq_dipole_1
  :field pwsat2_imtq_dipole_2: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_imtq_dipole.pwsat2_imtq_dipole_2
  :field pwsat2_imtq_dipole_3: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_imtq_dipole.pwsat2_imtq_dipole_3
  :field pwsat2_imtq_bdot_x: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_imtq_bdot.pwsat2_imtq_bdot_x
  :field pwsat2_imtq_bdot_y: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_imtq_bdot.pwsat2_imtq_bdot_y
  :field pwsat2_imtq_bdot_z: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_imtq_bdot.pwsat2_imtq_bdot_z
  :field pwsat2_imtq_hskp_dig_volt: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_imtq_hskp.pwsat2_imtq_hskp_dig_volt
  :field pwsat2_imtq_hskp_ana_volt: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_imtq_hskp.pwsat2_imtq_hskp_ana_volt
  :field pwsat2_imtq_hskp_dig_curr: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_imtq_hskp.pwsat2_imtq_hskp_dig_curr
  :field pwsat2_imtq_hskp_ana_curr: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_imtq_hskp.pwsat2_imtq_hskp_ana_curr
  :field pwsat2_imtq_hskp_mcu_temp: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_imtq_hskp.pwsat2_imtq_hskp_mcu_temp
  :field pwsat2_imtq_coil_current_x: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_imtq_coil.pwsat2_imtq_coil_current_x
  :field pwsat2_imtq_coil_current_y: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_imtq_coil.pwsat2_imtq_coil_current_y
  :field pwsat2_imtq_coil_current_z: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_imtq_coil.pwsat2_imtq_coil_current_z
  :field pwsat2_imtq_temp_coil_x: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_imtq_temp.pwsat2_imtq_temp_coil_x
  :field pwsat2_imtq_temp_coil_y: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_imtq_temp.pwsat2_imtq_temp_coil_y
  :field pwsat2_imtq_temp_coil_z: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_imtq_temp.pwsat2_imtq_temp_coil_z
  :field pwsat2_imtq_state_status: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_imtq_state.pwsat2_imtq_state_status
  :field pwsat2_imtq_state_mode: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_imtq_state.pwsat2_imtq_state_mode
  :field pwsat2_imtq_err_prev_iter: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_imtq_state.pwsat2_imtq_err_prev_iter
  :field pwsat2_imtq_conf_changed: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_imtq_state.pwsat2_imtq_conf_changed
  :field pwsat2_imtq_state_uptime: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_imtq_state.pwsat2_imtq_state_uptime
  :field pwsat2_adcs_imtq_slftst_err_initial: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_imtq_selftest.pwsat2_adcs_imtq_slftst_err_initial
  :field pwsat2_adcs_imtq_slftst_err_pos_x: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_imtq_selftest.pwsat2_adcs_imtq_slftst_err_pos_x
  :field pwsat2_adcs_imtq_slftst_err_neg_x: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_imtq_selftest.pwsat2_adcs_imtq_slftst_err_neg_x
  :field pwsat2_adcs_imtq_slftst_err_pos_y: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_imtq_selftest.pwsat2_adcs_imtq_slftst_err_pos_y
  :field pwsat2_adcs_imtq_slftst_err_neg_y: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_imtq_selftest.pwsat2_adcs_imtq_slftst_err_neg_y
  :field pwsat2_adcs_imtq_slftst_err_pos_z: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_imtq_selftest.pwsat2_adcs_imtq_slftst_err_pos_z
  :field pwsat2_adcs_imtq_slftst_err_neg_z: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_imtq_selftest.pwsat2_adcs_imtq_slftst_err_neg_z
  :field pwsat2_adcs_imtq_slftst_err_final: ax25_frame.payload.ax25_info.pwsat2_payload.pwsat2_imtq_selftest.pwsat2_adcs_imtq_slftst_err_final

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
        type:
          switch-on: pid
          cases:
            0xF0: pwsat2_frame
        size-eos: true

  pwsat2_frame:
    seq:
      - id: pwsat2_hdr
        type: pwsat2_hdr
      - id: pwsat2_payload
        type:
          switch-on: pwsat2_hdr.pwsat2_apid & 0x3f
          cases:
            0x05: pwsat2_periodic_msg
            0x0d: pwsat2_telemetry

  pwsat2_hdr:
    seq:
      - id: pwsat2_apid
        type: u1

  pwsat2_periodic_msg:
    seq:
      - id: pwsat2_periodic_msg_data
        type: str
        encoding: ASCII
        size: _io.size - 1

  pwsat2_telemetry:
    seq:
      - id: pwsat2_obc
        type: pwsat2_obc
      - id: pwsat2_antennas
        type: pwsat2_antennas
      - id: pwsat2_experiments
        type: pwsat2_experiments
      - id: pwsat2_gyroscope
        type: pwsat2_gyroscope
      - id: pwsat2_comm
        type: pwsat2_comm
      - id: pwsat2_hardware_state
        type: pwsat2_hardware_state
      - id: pwsat2_eps_controller_a
        type: pwsat2_eps_controller_a
      - id: pwsat2_eps_controller_b
        type: pwsat2_eps_controller_b
      - id: pwsat2_imtq
        type: pwsat2_imtq
      - id: pwsat2_imtq_coil_active
        type: pwsat2_imtq_coil_active
      - id: pwsat2_imtq_dipole
        type: pwsat2_imtq_dipole
      - id: pwsat2_imtq_bdot
        type: pwsat2_imtq_bdot
      - id: pwsat2_imtq_hskp
        type: pwsat2_imtq_hskp
      - id: pwsat2_imtq_coil
        type: pwsat2_imtq_coil
      - id: pwsat2_imtq_temp
        type: pwsat2_imtq_temp
      - id: pwsat2_imtq_state
        type: pwsat2_imtq_state
      - id: pwsat2_imtq_selftest
        type: pwsat2_imtq_selftest

  pwsat2_obc:
    seq:
      - id: pwsat2_obc_boot_ctr
        type: u4
      - id: pwsat2_obc_boot_idx
        type: u1
      - id: pwsat2_obc_reboot_reason
        type: u2
      - id: pwsat2_obc_code_crc
        type: u2
      - id: pwsat2_obc_mission_time
        type: u8
      - id: pwsat2_obc_ext_time
        type: u4
      - id: pwsat2_obc_comm_err
        type: u1
      - id: pwsat2_obc_eps_err
        type: u1
      - id: pwsat2_obc_rtc_err
        type: u1
      - id: pwsat2_obc_imtq_err
        type: u1
      - id: pwsat2_obc_n25qflash1_err
        type: u1
      - id: pwsat2_obc_n25qflash2_err
        type: u1
      - id: pwsat2_obc_n25qflash3_err
        type: u1
      - id: pwsat2_obc_n25q_tmr_corr
        type: u1
      - id: pwsat2_obc_fram_tmr_corr
        type: u1
      - id: pwsat2_obc_payload_err
        type: u1
      - id: pwsat2_obc_cam_err
        type: u1
      - id: pwsat2_obc_suns_exp_err
        type: u1
      - id: pwsat2_obc_ant_prim_err
        type: u1
      - id: pwsat2_obc_ant_sec_err
        type: u1
      - id: pwsat2_obc_prim_flash_scrbg_ptr
        type: b3
      - id: pwsat2_obc_sec_flash_scrbg_ptr
        type: b3
      - id: pwsat2_obc_ram_scrbg_ptr
        type: u4
      - id: pwsat2_obc_system_uptime
        type: b22
      - id: pwsat2_obc_system_flash_free
        type: u4

  pwsat2_antennas:
    seq:
      - id: pwsat2_antennas_ant1_depl_sw_ch_a
        type: b1
      - id: pwsat2_antennas_ant2_depl_sw_ch_a
        type: b1
      - id: pwsat2_antennas_ant3_depl_sw_ch_a
        type: b1
      - id: pwsat2_antennas_ant4_depl_sw_ch_a
        type: b1
      - id: pwsat2_antennas_ant1_depl_sw_ch_b
        type: b1
      - id: pwsat2_antennas_ant2_depl_sw_ch_b
        type: b1
      - id: pwsat2_antennas_ant3_depl_sw_ch_b
        type: b1
      - id: pwsat2_antennas_ant4_depl_sw_ch_b
        type: b1
      - id: pwsat2_antennas_ant1_last_timed_stop_ch_a
        type: b1
      - id: pwsat2_antennas_ant2_last_timed_stop_ch_a
        type: b1
      - id: pwsat2_antennas_ant3_last_timed_stop_ch_a
        type: b1
      - id: pwsat2_antennas_ant4_last_timed_stop_ch_a
        type: b1
      - id: pwsat2_antennas_ant1_last_timed_stop_ch_b
        type: b1
      - id: pwsat2_antennas_ant2_last_timed_stop_ch_b
        type: b1
      - id: pwsat2_antennas_ant3_last_timed_stop_ch_b
        type: b1
      - id: pwsat2_antennas_ant4_last_timed_stop_ch_b
        type: b1
      - id: pwsat2_antennas_ant1_burn_active_ch_a
        type: b1
      - id: pwsat2_antennas_ant2_burn_active_ch_a
        type: b1
      - id: pwsat2_antennas_ant3_burn_active_ch_a
        type: b1
      - id: pwsat2_antennas_ant4_burn_active_ch_a
        type: b1
      - id: pwsat2_antennas_ant1_burn_active_ch_b
        type: b1
      - id: pwsat2_antennas_ant2_burn_active_ch_b
        type: b1
      - id: pwsat2_antennas_ant3_burn_active_ch_b
        type: b1
      - id: pwsat2_antennas_ant4_burn_active_ch_b
        type: b1
      - id: pwsat2_antennas_sys_indep_burn_ch_a
        type: b1
      - id: pwsat2_antennas_sys_indep_burn_ch_b
        type: b1
      - id: pwsat2_antennas_ant_ignoring_sw_ch_a
        type: b1
      - id: pwsat2_antennas_ant_ignoring_sw_ch_b
        type: b1
      - id: pwsat2_antennas_armed_ch_a
        type: b1
      - id: pwsat2_antennas_armed_ch_b
        type: b1
      - id: pwsat2_antennas_ant1_activation_cnt_ch_a
        type: b3
      - id: pwsat2_antennas_ant2_activation_cnt_ch_a
        type: b3
      - id: pwsat2_antennas_ant3_activation_cnt_ch_a
        type: b3
      - id: pwsat2_antennas_ant4_activation_cnt_ch_a
        type: b3
      - id: pwsat2_antennas_ant1_activation_cnt_ch_b
        type: b3
      - id: pwsat2_antennas_ant2_activation_cnt_ch_b
        type: b3
      - id: pwsat2_antennas_ant3_activation_cnt_ch_b
        type: b3
      - id: pwsat2_antennas_ant4_activation_cnt_ch_b
        type: b3
      - id: pwsat2_antennas_ant1_activation_time_ch_a
        type: b3
      - id: pwsat2_antennas_ant2_activation_time_ch_a
        type: b3
      - id: pwsat2_antennas_ant3_activation_time_ch_a
        type: b3
      - id: pwsat2_antennas_ant4_activation_time_ch_a
        type: b3
      - id: pwsat2_antennas_ant1_activation_time_ch_b
        type: b3
      - id: pwsat2_antennas_ant2_activation_time_ch_b
        type: b3
      - id: pwsat2_antennas_ant3_activation_time_ch_b
        type: b3
      - id: pwsat2_antennas_ant4_activation_time_ch_b
        type: b3

  pwsat2_experiments:
    seq:
      - id: pwsat2_experiments_curr_exp_code
        type: b4
      - id: pwsat2_experiments_exp_startup_res
        type: u1
      - id: pwsat2_experiments_last_exp_iter_stat_status
        type: u1

  pwsat2_gyroscope:
    seq:
      - id: pwsat2_gyroscope_x_meas
        type: u2
      - id: pwsat2_gyroscope_y_meas
        type: u2
      - id: pwsat2_gyroscope_z_meas
        type: u2
      - id: pwsat2_gyroscope_temp
        type: u2

  pwsat2_comm:
    seq:
      - id: pwsat2_comm_tx_trsmtr_uptime
        type: b17
      - id: pwsat2_comm_tx_bitrate
        type: b2
      - id: pwsat2_comm_tx_last_tx_rf_refl_pwr
        type: b12
      - id: pwsat2_comm_tx_last_tx_pamp_temp
        type: b12
      - id: pwsat2_comm_tx_last_tx_last_tx_rf_fwd_pwr
        type: b12
      - id: pwsat2_comm_tx_last_tx_curr_consmpt
        type: b12
      - id: pwsat2_comm_tx_now_tx_fwd_pwr
        type: b12
      - id: pwsat2_comm_tx_now_tx_curr_consmpt
        type: b12
      - id: pwsat2_comm_tx_state_when_idle
        type: b1
      - id: pwsat2_comm_tx_beacon_state
        type: b1
      - id: pwsat2_comm_rx_uptime
        type: b17
      - id: pwsat2_comm_rx_last_rx_doppler_offs
        type: b12
      - id: pwsat2_comm_rx_last_rx_rssi
        type: b12
      - id: pwsat2_comm_rx_now_doppler_offs
        type: b12
      - id: pwsat2_comm_rx_now_rx_curr_consmpt
        type: b12
      - id: pwsat2_comm_rx_supply_voltage
        type: b12
      - id: pwsat2_comm_rx_osc_temp
        type: b12
      - id: pwsat2_comm_rx_now_pamp_temp
        type: b12
      - id: pwsat2_comm_rx_now_rssi
        type: b12

  pwsat2_hardware_state:
    seq:
      - id: pwsat2_hardware_state_gpio_sail_deployed
        type: b1
      - id: pwsat2_hardware_state_mcu_temp
        type: b12

  pwsat2_eps_controller_a:
    seq:
      - id: pwsat2_eps_controller_a_mpptx_sol_volt
        type: b12
      - id: pwsat2_eps_controller_a_mpptx_sol_curr
        type: b12
      - id: pwsat2_eps_controller_a_mpptx_out_volt
        type: b12
      - id: pwsat2_eps_controller_a_mpptx_temp
        type: b12
      - id: pwsat2_eps_controller_a_mpptx_state
        type: b3
      - id: pwsat2_eps_controller_a_mppty_pos_sol_volt
        type: b12
      - id: pwsat2_eps_controller_a_mppty_pos_sol_curr
        type: b12
      - id: pwsat2_eps_controller_a_mppty_pos_out_volt
        type: b12
      - id: pwsat2_eps_controller_a_mppty_pos_temp
        type: b12
      - id: pwsat2_eps_controller_a_mppty_pos_state
        type: b3
      - id: pwsat2_eps_controller_a_mppty_neg_sol_volt
        type: b12
      - id: pwsat2_eps_controller_a_mppty_neg_sol_curr
        type: b12
      - id: pwsat2_eps_controller_a_mppty_neg_out_volt
        type: b12
      - id: pwsat2_eps_controller_a_mppty_neg_temp
        type: b12
      - id: pwsat2_eps_controller_a_mppty_neg_state
        type: b3
      - id: pwsat2_eps_controller_a_distr_volt_3v3
        type: b10
      - id: pwsat2_eps_controller_a_distr_curr_3v3
        type: b10
      - id: pwsat2_eps_controller_a_distr_volt_5v
        type: b10
      - id: pwsat2_eps_controller_a_distr_curr_5v
        type: b10
      - id: pwsat2_eps_controller_a_distr_volt_vbat
        type: b10
      - id: pwsat2_eps_controller_a_distr_curr_vbat
        type: b10
      - id: pwsat2_eps_controller_a_distr_lcl_state
        type: b7
      - id: pwsat2_eps_controller_a_distr_lcl_flagb
        type: b6
      - id: pwsat2_eps_controller_a_batc_volta
        type: b10
      - id: pwsat2_eps_controller_a_batc_chrg_curr
        type: b10
      - id: pwsat2_eps_controller_a_batc_dchrg_curr
        type: b10
      - id: pwsat2_eps_controller_a_batc_temp
        type: b10
      - id: pwsat2_eps_controller_a_batc_state
        type: b3
      - id: pwsat2_eps_controller_a_bp_temp_a
        type: b13
      - id: pwsat2_eps_controller_a_bp_temp_b
        type: b13
      - id: pwsat2_eps_controller_a_safety_ctr
        type: u1
      - id: pwsat2_eps_controller_a_pwr_cycles
        type: u2
      - id: pwsat2_eps_controller_a_uptime
        type: u4
      - id: pwsat2_eps_controller_a_temp
        type: b10
      - id: pwsat2_eps_controller_a_supp_temp
        type: b10
      - id: pwsat2_eps_controller_b_3v3d_volt
        type: b10
      - id: pwsat2_eps_controller_a_dcdc_3v3_temp
        type: b10
      - id: pwsat2_eps_controller_a_dcdc_5v_temp
        type: b10

  pwsat2_eps_controller_b:
    seq:
      - id: pwsat2_eps_controller_b_bptemp_c
        type: b10
      - id: pwsat2_eps_controller_b_battc_volt_b
        type: b10
      - id: pwsat2_eps_controller_b_safety_ctr
        type: u1
      - id: pwsat2_eps_controller_b_pwr_cycles
        type: u2
      - id: pwsat2_eps_controller_b_uptime
        type: u4
      - id: pwsat2_eps_controller_b_temp
        type: b10
      - id: pwsat2_eps_controller_b_supp_temp
        type: b10
      - id: pwsat2_eps_controller_a_3v3d_volt
        type: b10

  pwsat2_imtq:
    seq:
      - id: pwsat2_imtq_mag_meas_1
        type: u4
      - id: pwsat2_imtq_mag_meas_2
        type: u4
      - id: pwsat2_imtq_mag_meas_3
        type: u4

  pwsat2_imtq_coil_active:
    seq:
      - id: pwsat2_imtq_coil_active_in_meas
        type: b1

  pwsat2_imtq_dipole:
    seq:
      - id: pwsat2_imtq_dipole_1
        type: u2
      - id: pwsat2_imtq_dipole_2
        type: u2
      - id: pwsat2_imtq_dipole_3
        type: u2

  pwsat2_imtq_bdot:
    seq:
      - id: pwsat2_imtq_bdot_x
        type: u4
      - id: pwsat2_imtq_bdot_y
        type: u4
      - id: pwsat2_imtq_bdot_z
        type: u4

  pwsat2_imtq_hskp:
    seq:
      - id: pwsat2_imtq_hskp_dig_volt
        type: u2
      - id: pwsat2_imtq_hskp_ana_volt
        type: u2
      - id: pwsat2_imtq_hskp_dig_curr
        type: u2
      - id: pwsat2_imtq_hskp_ana_curr
        type: u2
      - id: pwsat2_imtq_hskp_mcu_temp
        type: u2

  pwsat2_imtq_coil:
    seq:
      - id: pwsat2_imtq_coil_current_x
        type: u2
      - id: pwsat2_imtq_coil_current_y
        type: u2
      - id: pwsat2_imtq_coil_current_z
        type: u2

  pwsat2_imtq_temp:
    seq:
      - id: pwsat2_imtq_temp_coil_x
        type: u2
      - id: pwsat2_imtq_temp_coil_y
        type: u2
      - id: pwsat2_imtq_temp_coil_z
        type: u2

  pwsat2_imtq_state:
    seq:
      - id: pwsat2_imtq_state_status
        type: u1
      - id: pwsat2_imtq_state_mode
        type: b2
      - id: pwsat2_imtq_err_prev_iter
        type: u1
      - id: pwsat2_imtq_conf_changed
        type: b1
      - id: pwsat2_imtq_state_uptime
        type: u4

  pwsat2_imtq_selftest:
    seq:
      - id: pwsat2_adcs_imtq_slftst_err_initial
        type: u1
      - id: pwsat2_adcs_imtq_slftst_err_pos_x
        type: u1
      - id: pwsat2_adcs_imtq_slftst_err_neg_x
        type: u1
      - id: pwsat2_adcs_imtq_slftst_err_pos_y
        type: u1
      - id: pwsat2_adcs_imtq_slftst_err_neg_y
        type: u1
      - id: pwsat2_adcs_imtq_slftst_err_pos_z
        type: u1
      - id: pwsat2_adcs_imtq_slftst_err_neg_z
        type: u1
      - id: pwsat2_adcs_imtq_slftst_err_final
        type: u1
