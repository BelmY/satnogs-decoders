meta:
  id: skcube
  endian: le
doc-ref: http://www.skcube.sk/wp-content/uploads/2016/06/skcube_data_structures.xlsx
seq:
- id: ax25header
  size: 16
#  contents: [0x9E, 0x9A, 0x66, 0x96, 0x82, 0x82, 0xE0, 0x9E, 0x9A, 0x72, 0xA6, 0x82, 0xA8, 0x61, 0x03, 0xF0]
- id: packet_type
  type: u1
- id: body
  type:
    switch-on: packet_type
    cases:
      2: block2_adcs
      3: block3_com
      4: block4_cam
      5: block5_pwr
      6: block6_exp
      50: block_message
types:
  block2_adcs:
    seq:
    - id: adcs_mode
      type: u1
      doc: "ADCS mode"
    - id: bd_k
      type: u1
      doc: "bd_k"
    - id: max_pwm_coil_x
      type: u1
      doc: "Max PWM coil X"
    - id: max_pwm_coil_y
      type: u1
      doc: "Max PWM coil Y"
    - id: max_pwm_coil_z
      type: u1
      doc: "Max PWM coil Z"
    - id: sun_x_p_x
      type: s2
      doc: "SUN X+ (x)"
    - id: sun_x_p_y
      type: s2
      doc: "SUN X+ (y)"
    - id: sun_x_p_irradiation
      type: u1
      doc: "SUN X+ irradiation"
    - id: sun_x_m_x
      type: s2
      doc: "SUN X- (x)"
    - id: sun_x_m_y
      type: s2
      doc: "SUN X- (y)"
    - id: sun_x_m_irradiation
      type: u1
      doc: "SUN X- irradiation"
    - id: sun_y_p_x
      type: s2
      doc: "SUN Y+ (x)"
    - id: sun_y_p_y
      type: s2
      doc: "SUN Y+ (y)"
    - id: sun_y_p_irradiation
      type: u1
      doc: "SUN Y+ irradiation"
    - id: sun_y_m_x
      type: s2
      doc: "SUN Y- (x)"
    - id: sun_y_m_y
      type: s2
      doc: "SUN Y- (y)"
    - id: sun_y_m_irradiation
      type: u1
      doc: "SUN Y- irradiation"
    - id: sun_z_p_x
      type: s2
      doc: "SUN Z+ (x)"
    - id: sun_z_p_y
      type: s2
      doc: "SUN Z+ (y)"
    - id: sun_z_p_irradiation
      type: u1
      doc: "SUN Z+ irradiation"
    - id: sun_z_m_x
      type: s2
      doc: "SUN Z- (x)"
    - id: sun_z_m_y
      type: s2
      doc: "SUN Z- (y)"
    - id: sun_z_m_irradiation
      type: u1
      doc: "SUN Z- irradiation"
    - id: gyroscope_x
      type: u2
      doc: "Gyroscope X"
    - id: gyroscope_y
      type: u2
      doc: "Gyroscope Y"
    - id: gyroscope_z
      type: u2
      doc: "Gyroscope Z"
    - id: gyroscope_temp
      type: u2
      doc: "Gyroscope temp"
    - id: magnetometer_1_x
      type: u2
      doc: "Magnetometer 1 X"
    - id: magnetometer_1_y
      type: u2
      doc: "Magnetometer 1 Y"
    - id: magnetometer_1_z
      type: u2
      doc: "Magnetometer 1 Z"
    - id: magnetometer_1_temp
      type: u2
      doc: "Magnetometer 1 temp"
    - id: magnetometer_2_x
      type: u2
      doc: "Magnetometer 2 X"
    - id: magnetometer_2_y
      type: u2
      doc: "Magnetometer 2 Y"
    - id: magnetometer_2_z
      type: u2
      doc: "Magnetometer 2 Z"
    - id: magnetometer_2_temp
      type: u2
      doc: "Magnetometer 2 temp"
    - id: accelerometer_x
      type: u2
      doc: "Accelerometer X"
    - id: accelerometer_y
      type: u2
      doc: "Accelerometer Y"
    - id: accelerometer_z
      type: u2
      doc: "Accelerometer Z"
    - id: accel_temp
      type: u2
      doc: "Accel temp"
    - id: earth_sensor_x_p
      type: u2
      doc: "Earth sensor X+"
    - id: earth_sensor_x_m
      type: u2
      doc: "Earth sensor X-"
    - id: earth_sensor_y_p
      type: u2
      doc: "Earth sensor Y+"
    - id: earth_sensor_y_m
      type: u2
      doc: "Earth sensor Y-"
  block3_com:
    seq:
    - id: timestamp
      type: u4
    - id: fwversion
      type: u2
    - id: activecom
      type: u1
    - id: digipeatermode
      type: u1
    - id: noofreboots
      type: u2
    - id: outputreflpower
      type: u2
    - id: outputforwardpower
      type: u2
    - id: outputreflpowercw
      type: u2
    - id: outputforwardpowercw
      type: u2
    - id: rssi
      type: u2
    - id: rssinoise
      type: u2
    - id: mcutemperature
      type: s1
    - id: patemperature
      type: s1
    - id: cwbeaconsent
      type: u2
    - id: packetsent
      type: u2
    - id: correctpacketsreceived
      type: u2
    - id: brokenpacketsreceived
      type: u2
    - id: comprotocolerror
      type: u2
    - id: gsprotocolerror
      type: u2
    - id: txdisablestatus
      type: u1
    - id: orbittime
      type: u1
    - id: timeslotstart
      type: u1
    - id: timeslotend
      type: u1
  block4_cam:
    seq:
    - id: timestamp
      type: u4
      doc: "Timestamp"
    - id: fw_version
      type: u2
      doc: "FW version"
    - id: number_of_reboots
      type: u2
      doc: "Number of reboots"
    - id: jpeg_compression
      type: u1
      doc: "JPEG compression"
    - id: jpeg_scale
      type: u1
      doc: "JPEG scale"
    - id: mcu_temperature
      type: s1
      doc: "MCU Temperature"
    - id: vref_internal
      type: u2
      doc: "Vref internal"
    - id: packets_sent
      type: u2
      doc: "Packets sent"
    - id: cw_sent
      type: u2
      doc: "CW sent"
    - id: flash_image_position
      type: u1
      doc: "Flash image position"
    - id: tx_datarate
      type: u1
      doc: "TX datarate"
  block5_pwr:
    seq:
    - id: timestamp
      type: u4
      doc: "Timestamp"
    - id: fulluptime
      type: u4
      doc: "FullUptime"
    - id: uptime
      type: u4
      doc: "Uptime"
    - id: active_procesor
      type: u2
      doc: "Active procesor"
    - id: fw_version
      type: u2
      doc: "FW version"
    - id: number_of_reboots
      type: u2
      doc: "Number of reboots"
    - id: countcomerrors
      type: u2
      doc: "CountComErrors"
    - id: countpsuerrors
      type: u2
      doc: "CountPSUErrors"
    - id: solar_j_current
      type: s2
      doc: "Solar J current"
    - id: solar_k_current
      type: s2
      doc: "Solar K current"
    - id: solar_l_current
      type: s2
      doc: "Solar L current"
    - id: solar_m_current
      type: s2
      doc: "Solar M current"
    - id: solar_u_current
      type: s2
      doc: "Solar U current"
    - id: solar_d_current
      type: s2
      doc: "Solar D current"
    - id: solar_j_temp
      type: s2
      doc: "Solar J temp"
    - id: solar_k_temp
      type: s2
      doc: "Solar K temp"
    - id: solar_l_temp
      type: s2
      doc: "Solar L temp"
    - id: solar_m_temp
      type: s2
      doc: "Solar M temp"
    - id: solar_u_temp
      type: s2
      doc: "Solar U temp"
    - id: solar_d_temp
      type: s2
      doc: "Solar D temp"
    - id: battery_a_voltage
      type: s2
      doc: "Battery A voltage"
    - id: battery_b_voltage
      type: s2
      doc: "Battery B voltage"
    - id: battery_temp
      type: s2
      doc: "Battery temp"
    - id: battery_a_capacity
      type: u2
      doc: "Battery A capacity"
    - id: battery_b_capacity
      type: u2
      doc: "Battery B capacity"
    - id: bat_capacity
      type: u2
      doc: "Bat Capacity (math 0-100%)"
    - id: battery_a_current
      type: s2
      doc: "Battery A current"
    - id: battery_b_current
      type: s2
      doc: "Battery B current"
    - id: battery_a_min_current
      type: s2
      doc: "Battery A min current"
    - id: battery_b_min_current
      type: s2
      doc: "Battery B min current"
    - id: battery_a_max_current
      type: s2
      doc: "Battery A max current"
    - id: battery_b_max_current
      type: s2
      doc: "Battery B max current"
    - id: battery_a_avg_current
      type: s2
      doc: "Battery A avg current"
    - id: battery_b_avg_current
      type: s2
      doc: "Battery B avg current"
    - id: chds_min_current
      type: s2
      doc: "CHDS min current"
    - id: chds_max_current
      type: s2
      doc: "CHDS max current"
    - id: chds_avg_current
      type: s2
      doc: "CHDS avg current"
    - id: chds_actual_current
      type: s2
      doc: "CHDS actual current"
    - id: com_min_current
      type: s2
      doc: "COM min current"
    - id: com_max_current
      type: s2
      doc: "COM max current"
    - id: com_avg_current
      type: s2
      doc: "COM avg current"
    - id: com_actual_current
      type: s2
      doc: "COM actual current"
    - id: cam_min_current
      type: s2
      doc: "CAM min current"
    - id: cam_max_current
      type: s2
      doc: "CAM max current"
    - id: cam_avg_current
      type: s2
      doc: "CAM avg current"
    - id: cam_actual_current
      type: s2
      doc: "CAM actual current"
    - id: exp_min_current
      type: s2
      doc: "EXP min current"
    - id: exp_max_current
      type: s2
      doc: "EXP max current"
    - id: exp_avg_current
      type: s2
      doc: "EXP avg current"
    - id: exp_actual_current
      type: s2
      doc: "EXP actual current"
    - id: adcs_min_current
      type: s2
      doc: "ADCS min current"
    - id: adcs_max_current
      type: s2
      doc: "ADCS max current"
    - id: adcs_avg_current
      type: s2
      doc: "ADCS avg current"
    - id: adcs_actual_current
      type: s2
      doc: "ADCS actual current"
    - id: sys_voltage_min
      type: u2
      doc: "SYS voltage min"
    - id: sys_voltage_max
      type: u2
      doc: "SYS voltage max"
    - id: sys_voltage_actual
      type: u2
      doc: "SYS voltage actual"
    - id: nadprudy
      type: u2
      doc: "Nadprudy"
    - id: stav_pripojenia
      type: u2
      doc: "Stav pripojenia"
    - id: ts_temp
      type: s2
      doc: "TS_Temp"
    - id: countpacket
      type: u4
      doc: "CountPacket"
    - id: psu_error
      type: u2
      doc: "PSU_Error"
    - id: psu_lasterror
      type: u2
      doc: "PSU_Lasterror"
    - id: com_error
      type: u2
      doc: "COM_error"
    - id: com_lasterror
      type: u2
      doc: "COM_Lasterror"
    - id: cdhs_i_limit
      type: u1
      doc: "CDHS_I_limit"
    - id: com_i_limit
      type: u1
      doc: "COM_I_limit"
    - id: cam_i_limit
      type: u1
      doc: "CAM_I_limit"
    - id: adcs_i_limit
      type: u1
      doc: "ADCS_I_limit"
    - id: exp_i_limit
      type: u1
      doc: "EXP_I_limit"
    - id: cam_uv_limit
      type: u1
      doc: "CAM_UV_limit"
    - id: exp_uv_limit
      type: u1
      doc: "EXP_UV_limit"
    - id: adcs_uv_limit
      type: u1
      doc: "ADCS_UV_limit"
    - id: bat1_vmax
      type: s2
      doc: "BAT1_Vmax"
    - id: bat1_vmin
      type: s2
      doc: "BAT1_Vmin"
    - id: bat2_vmax
      type: s2
      doc: "BAT2_Vmax"
    - id: bat2_vmin
      type: s2
      doc: "BAT2_Vmin"
    - id: endofdata
      type: u2
      doc: "Endofdata"
  block6_exp:
    seq:
    - id: timestamp
      type: u4
      doc: "Timestamp"
    - id: fw_version
      type: u2
      doc: "FW version"
    - id: number_of_reboots
      type: u2
      doc: "Number of reboots"
    - id: active_adc_channel
      type: u1
      doc: "Active ADC channel"
    - id: fft_gain
      type: u1
      doc: "FFT gain"
    - id: low_frequency
      type: u1
      doc: "Low frequency"
    - id: high_frequency
      type: u1
      doc: "High frequency"
    - id: max_hold_sec
      type: u2
      doc: "Max hold sec"
    - id: slow_position
      type: u2
      doc: "Slow position"
    - id: postring_samples
      type: u2
      doc: "Postring samples"
    - id: psd
      type: u2
      doc: "PSD"
    - id: psd_max
      type: u2
      doc: "PSD max"
    - id: psd_selected
      type: u2
      doc: "PSD selected"
    - id: psd_selected_max
      type: u2
      doc: "PSD selected max"
    - id: peak_freq
      type: u2
      doc: "Peak freq"
    - id: peak_amp
      type: u2
      doc: "Peak amp"
    - id: psd_treshold
      type: u2
      doc: "PSD treshold"
    - id: psd_selected_events
      type: u2
      doc: "PSD selected events"
    - id: events_position
      type: u1
      doc: "Events position"
    - id: event_time_1
      type: u4
      doc: "Event time 1"
    - id: event_time_2
      type: u4
      doc: "Event time 2"
    - id: event_time_3
      type: u4
      doc: "Event time 3"
    - id: event_time_4
      type: u4
      doc: "Event time 4"
    - id: event_time_5
      type: u4
      doc: "Event time 5"
    - id: event_time_6
      type: u4
      doc: "Event time 6"
    - id: event_time_7
      type: u4
      doc: "Event time 7"
    - id: event_time_8
      type: u4
      doc: "Event time 8"
    - id: event_time_9
      type: u4
      doc: "Event time 9"
    - id: event_time_10
      type: u4
      doc: "Event time 10"
  block_message:
    seq:
    - id: message
      type: str
      encoding: utf-8
      size-eos: true
