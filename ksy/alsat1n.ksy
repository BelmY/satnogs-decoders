meta:
  id: alsat1n
  endian: le

doc: |
  :field payload_id: alsat1n_header.payload_id
  :field msg_id: alsat1n_header.payload_type.msg_id
  :field response_code: alsat1n_header.payload_type.msg_type.response_code
  :field ipcmbatv: alsat1n_header.payload_type.msg_type.ipcmbatv
  :field vpcmbatv: alsat1n_header.payload_type.msg_type.vpcmbatv
  :field tlm_tbrd: alsat1n_header.payload_type.msg_type.eps_temperature
  :field s1_current: alsat1n_header.payload_type.msg_type.s1_current_3v3
  :field s1_voltage: alsat1n_header.payload_type.msg_type.s1_voltage_3v3
  :field s2_current: alsat1n_header.payload_type.msg_type.s2_current_5v
  :field s2_voltage: alsat1n_header.payload_type.msg_type.s2_voltage_5v
  :field pdm_uptime_payload_h: alsat1n_header.payload_type.msg_type.pdm_uptime_payload_h
  :field pdm_uptime_payload_l: alsat1n_header.payload_type.msg_type.pdm_uptime_payload_l
  :field pdm_uptime_platform_h: alsat1n_header.payload_type.msg_type.pdm_uptime_platform_h
  :field pdm_uptime_platform_l: alsat1n_header.payload_type.msg_type.pdm_uptime_platform_l
  :field uptime: alsat1n_header.payload_type.msg_type.uptime
  :field eps_battery_voltage: alsat1n_header.payload_type.msg_type.eps_battery_voltage
  :field eps_battery_current: alsat1n_header.payload_type.msg_type.eps_battery_current
  :field unix_time: alsat1n_header.payload_type.msg_type.unix_time
  :field reboot_number: alsat1n_header.payload_type.msg_type.reboot_num
  :field reboot_cause: alsat1n_header.payload_type.msg_type.reboot_cause
  :field watchdog_time_remaining: alsat1n_header.payload_type.msg_type.watchdog_time_remaining
  :field i2c_traffic_counter: alsat1n_header.payload_type.msg_type.i2c_traffic_cnt
  :field amrad: alsat1n_header.payload_type.msg_type.amrad
  :field ipcm5v: alsat1n_header.payload_type.msg_type.ipcm5v
  :field ipcm3v3: alsat1n_header.payload_type.msg_type.ipcm3v3
  :field p8_current: alsat1n_header.payload_type.msg_type.p8_current
  :field p8_voltage: alsat1n_header.payload_type.msg_type.p8_voltage
  :field p7_current: alsat1n_header.payload_type.msg_type.p7_current
  :field p7_voltage: alsat1n_header.payload_type.msg_type.p7_voltage

seq:
  - id: alsat1n_header
    type: alsat1n_header
    doc-ref: 'https://amsat-uk.org/2016/09/24/alsat-1n-pratham-launch/'

types:
  alsat1n_header:
    seq:
      - id: syncpacket
        contents: [0x41, 0x4c, 0x31, 0x4e, 0x00]
        -orig-id: Callsign
      - id: strx_header_seq
        type: u1
        -orig-id: STRX Header - Sequence
      - id: strx_header_len
        type: u2
        -orig-id: STRX Header - Length
      - id: strx_header_id
        type: u2
        -orig-id: STRX Header - STCVR ID
      - id: payload_id
        type: u1
        -orig-id: Payload ID
      - id: payload_type
        type:
          switch-on: payload_id
          cases:
            0x2E: eps
            0x05: obc
            0x13: file

  file:
    seq:
      - id: msg_id
        type: u1
        -orig-id: Message ID
      - id: msg_type
        type:
          switch-on: msg_id
          cases:
            0x15: download_data
            0x1e: file_count

  eps:
    seq:
      - id: msg_id
        type: u1
        -orig-id: Message ID
      - id: msg_type
        type:
          switch-on: msg_id
          cases:
            0xf0: eps_sys
            0xf4: eps_platform
            0xaf: pdm_payload
            0x7a: pdm_platform
            0x3f: eps_psu_current_5v
            0x41: eps_psu_current_3v3
            0xa6: p8_psu
            0xa1: p7_psu

  obc:
    seq:
      - id: msg_id
        type: u1
        -orig-id: Message ID
      - id: msg_type
        type:
          switch-on: msg_id
          cases:
            0x01: obc_health
            0x20: i2c_traffic
            0x7f: watchdog_time_remaining
            0xb0: amrad_msg

  p8_psu:
    seq:
      - id: response_code
        type: u1
        -orig-id: Response Code
      - id: p8_state
        type: u1
        -orig-id: P8_State
      - id: p8_current
        type: u2
        -orig-id: P8_Current
        doc: "value = p8_current / 1.5848 [mA]"
      - id: p8_voltage
        type: u2
        -orig-id: P8_Voltage
        doc: "value = 0.001953 * p8_voltage [mV]"

  p7_psu:
    seq:
      - id: response_code
        type: u1
        -orig-id: Response Code
      - id: p7_state
        type: u1
        -orig-id: P7_State
      - id: p7_current
        type: u2
        -orig-id: P7_Current
        doc: "value = p7_current / 1.5743 [mA]"
      - id: p7_voltage
        type: u2
        -orig-id: P7_Voltage
        doc: "value = 0.001895 * p8_voltage [mV]"

  eps_psu_current_5v:
    seq:
      - id: response_code
        type: u1
        -orig-id: Response Code
      - id: ipcm5v
        type: u2
        -orig-id: IPCM5V
        doc: "value = 0.005237 * ipcm5v [A]"

  eps_psu_current_3v3:
    seq:
      - id: response_code
        type: u1
        -orig-id: Response Code
      - id: ipcm3v3
        type: u2
        -orig-id: IPCM3V3
        doc: "value = 0.005237 * ipcm3v3 [A]"

  eps_sys:
    seq:
      - id: response_code
        type: u1
        -orig-id: Response Code
      - id: ipcmbatv
        type: u2
        doc: "value = ipcmbatv * 0.005237 [A]"
        -orig-id: IPCMBATV
      - id: vpcmbatv
        type: u2
        doc: "value = vpcmbatv * 0.0039931 [V]"
        -orig-id: VPCMBATV
      - id: eps_temperature
        type: u2
        doc: "value = (0.372434 * temperature) - 273.15 [C]"
        -orig-id: TLM_TBRD

  eps_platform:
    seq:
      - id: response_code
        type: u1
        -orig-id: Response Code
      - id: s1_state_3v3
        type: u1
        -orig-id: S1_State
      - id: s1_current_3v3
        type: u2
        doc: "s1_current_3v3 / 1.5702 [mA]"
        -orig-id: S1_Current
      - id: s1_voltage_3v3
        type: u2
        doc: "s1_voltage_3v3 * 0.0019 [mV]"
        -orig-id: S1_Voltage
      - id: s2_state_5v
        type: u1
        -orig-id: S2_State
      - id: s2_current_5v
        type: u2
        doc: "s2_current_5v / 1.581 [mA]"
        -orig-id: S2_Current
      - id: s2_voltage_5v
        type: u2
        doc: "s2_voltage_5v * 0.001901 [mV]"
        -orig-id: S2_Voltage

  pdm_payload:
    seq:
      - id: response_code
        type: u1
        -orig-id: Response Code
      - id: pdm_uptime_payload_h
        type: u4
        doc: "value = pdm_uptime_payload_h / 49 [Days]"
        -orig-id: PDM_UPTIME_Payload_H
      - id: pdm_uptime_payload_l
        type: u4
        doc: "value = pdm_uptime_payload_l * 2 / 1000 [s]"
        -orig-id: PDM_UPTIME_Payload_L

  pdm_platform:
    seq:
      - id: response_code
        type: u1
        -orig-id: Response Code
      - id: pdm_uptime_platform_h
        type: u4
        doc: "value = pdm_uptime_platform_h / 49 [Days]"
        -orig-id: PDM_UPTIME_Platform_H
      - id: pdm_uptime_platform_l
        type: u4
        doc: "value = pdm_uptime_platform_l * 2 / 1000 [s]"
        -orig-id: PDM_UPTIME_Platform_L

  obc_health:
    seq:
      - id: response_code
        type: u1
        -orig-id: Response Code
      - id: software_ident
        type: u1
        -orig-id: software_ident
      - id: uptime
        type: u4
        doc: "[s]"
        -orig-id: uptime
      - id: eps_voltage_battery
        type: u2
        -orig-id: eps_battery
      - id: eps_current_battery
        type: u2
        -orig-id: eps_current
      - id: safe_mode
        type: u1
        -orig-id: safe_mode
      - id: safe_reason
        type: u1
        -orig-id: safe_reason
      - id: unix_time
        type: u4
        doc: "Unix time in [s]"
        -orig-id: unixtime
      - id: reboot_num
        type: u1
        -orig-id: reboot_number
      - id: reboot_cause
        type: u1
        -orig-id: reboot_cause

  i2c_traffic:
    seq:
      - id: response_code
        type: u1
        -orig-id: Response Code
      - id: i2c_traffic_cnt
        type: u4
        -orig-id: i2c_traffic_counter

  watchdog_time_remaining:
    seq:
      - id: response_code
        type: u1
        -orig-id: Response Code
      - id: watchdog_time_remaining
        type: u4
        doc: "Time remaining on watchdog before it expires in [s]"
        -orig-id: watchdog_time_remaining

  amrad_msg:
    seq:
      - id: response_code
        type: u1
        -orig-id: Response Code
      - id: amrad
        type: str
        encoding: ASCII
        size: 40
        -orig-id: AMRAD_message

  download_data:
    seq:
      - id: response_code
        type: u1
        -orig-id: Response Code
      - id: current_packet
        type: u2
        -orig-id: current_packet
      - id: block_id
        type: u2
        -orig-id: block_id
      - id: file_data
        type: str
        encoding: ASCII
        size: 200
        -orig-id: file_data

  file_count:
    seq:
      - id: response_code
        type: u1
        -orig-id: Response Code
      - id: file_store
        type: u1
        -orig-id: file_store
      - id: file_type
        type: u1
        -orig-id: file_type
      - id: file_count
        type: u2
        -orig-id: filecount
