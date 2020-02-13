---
meta:
  id: duchifat3
  endian: be
doc: |
  :field dest_callsign: ax25_frame.ax25_header.dest_callsign_raw.callsign_ror.callsign
  :field src_callsign: ax25_frame.ax25_header.src_callsign_raw.callsign_ror.callsign
  :field src_ssid: ax25_frame.ax25_header.src_ssid_raw.ssid
  :field dest_ssid: ax25_frame.ax25_header.dest_ssid_raw.ssid
  :field rpt_callsign: ax25_frame.ax25_header.repeater.rpt_instance[0].rpt_callsign_raw.callsign_ror.callsign
  :field ctl: ax25_frame.ax25_header.ctl
  :field pid: ax25_frame.payload.pid
  :field type: ax25_frame.payload.ax25_info.type
  :field subtype: ax25_frame.payload.ax25_info.subtype
  :field length: ax25_frame.payload.ax25_info.length
  :field time_unix: ax25_frame.payload.ax25_info.time_unix
  :field vbatt: ax25_frame.payload.ax25_info.data.vbatt
  :field batt_current: ax25_frame.payload.ax25_info.data.batt_current
  :field current3v3: ax25_frame.payload.ax25_info.data.current3v3
  :field current5v: ax25_frame.payload.ax25_info.data.current5v
  :field lo_trxvu_temp: ax25_frame.payload.ax25_info.data.lo_trxvu_temp
  :field pa_trxvu_temp: ax25_frame.payload.ax25_info.data.pa_trxvu_temp
  :field temp_eps_0: ax25_frame.payload.ax25_info.data.temp_eps_0
  :field temp_eps_1: ax25_frame.payload.ax25_info.data.temp_eps_1
  :field temp_eps_2: ax25_frame.payload.ax25_info.data.temp_eps_2
  :field temp_eps_3: ax25_frame.payload.ax25_info.data.temp_eps_3
  :field temp_batt_0: ax25_frame.payload.ax25_info.data.temp_batt_0
  :field temp_batt_1: ax25_frame.payload.ax25_info.data.temp_batt_1
  :field rx_doppler: ax25_frame.payload.ax25_info.data.rx_doppler
  :field rx_rssi: ax25_frame.payload.ax25_info.data.rx_rssi
  :field tx_refl: ax25_frame.payload.ax25_info.data.tx_refl
  :field tx_forw: ax25_frame.payload.ax25_info.data.tx_forw
  :field empty_0: ax25_frame.payload.ax25_info.data.empty_0
  :field empty_1: ax25_frame.payload.ax25_info.data.empty_1
  :field empty_2: ax25_frame.payload.ax25_info.data.empty_2
  :field file_system_last_error: ax25_frame.payload.ax25_info.data.file_system_last_error
  :field empty_3: ax25_frame.payload.ax25_info.data.empty_3
  :field number_of_delayed_commands: ax25_frame.payload.ax25_info.data.number_of_delayed_commands
  :field number_of_resets: ax25_frame.payload.ax25_info.data.number_of_resets
  :field last_resets: ax25_frame.payload.ax25_info.data.last_resets
  :field flags: ax25_frame.payload.ax25_info.data.flags

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
      - id: type
        type: u1
      - id: subtype
        type: u1
      - id: length
        type: u2
      - id: time_unix
        type: u4
      - id: data
        type: duchifat3_data
  duchifat3_data:
    seq:
      - id: vbatt
        type: u2
        doc: '[mV]'
      - id: batt_current
        type: u2
        doc: 'mA'
      - id: current3v3
        type: u2
        doc: '[mA]'
      - id: current5v
        type: u2
        doc: '[mA]'
      - id: lo_trxvu_temp
        type: u2
        doc: 'lo_trxvu_temp * -0.07669 + 195.6037 [degC]'
      - id: pa_trxvu_temp
        type: u2
        doc: 'pa_trxvu_temp * -0.07669 + 195.6037 [degC]'
      - id: temp_eps_0
        type: s2
        doc: '[degC]'
      - id: temp_eps_1
        type: s2
        doc: '[degC]'
      - id: temp_eps_2
        type: s2
        doc: '[degC]'
      - id: temp_eps_3
        type: s2
        doc: '[degC]'
      - id: temp_batt_0
        type: s2
        doc: '[degC]'
      - id: temp_batt_1
        type: s2
        doc: '[degC]'
      - id: rx_doppler
        type: u2
        doc: 'rx_doppler * 13.352 - 22300 [Hz]'
      - id: rx_rssi
        type: u2
        doc: 'rx_doppler * 0.03 - 152 [dBm]'
      - id: tx_refl
        type: u2
        doc: 'tx_refl^2 * 5.887E-5 [dBm]'
      - id: tx_forw
        type: u2
        doc: 'tx_forw^2 * 5.887E-5 [dBm]'
      - id: empty_0
        type: s2
        doc: '[deg]'
      - id: empty_1
        type: s2
        doc: '[deg]'
      - id: empty_2
        type: s2
        doc: '[deg]'
      - id: file_system_last_error
        type: u1
      - id: empty_3
        type: u1
        doc: '[deg]'
      - id: number_of_delayed_commands
        type: u1
      - id: number_of_resets
        type: u4
      - id: last_resets
        type: u4
        doc: '[unixtime]'
      - id: flags
        type: u1
        doc: |
          Bits:
          mute,
          antenna status,
          transponder active,
          dump active,
          cam operational,
          TX state,
          ADCS state
          camera state
