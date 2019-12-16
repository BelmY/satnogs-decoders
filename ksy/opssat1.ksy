---
meta:
  id: opssat1
  endian: be
doc-ref: 'https://github.com/esa/gr-opssat/blob/master/docs/os-uhf-specs.pdf'
doc: |
  :field dest_callsign: ax25_frame.ax25_header.dest_callsign_raw.callsign_ror.callsign
  :field src_callsign: ax25_frame.ax25_header.src_callsign_raw.callsign_ror.callsign
  :field src_ssid: ax25_frame.ax25_header.src_ssid_raw.ssid
  :field dest_ssid: ax25_frame.ax25_header.dest_ssid_raw.ssid
  :field rpt_callsign: ax25_frame.ax25_header.repeater.rpt_instance[0].rpt_callsign_raw.callsign_ror.callsign
  :field ctl: ax25_frame.ax25_header.ctl
  :field pid: ax25_frame.payload.pid
  :field raw_csp_header: ax25_frame.payload.info.opssat_payload.header.raw_csp_header
  :field priority: ax25_frame.payload.info.opssat_payload.header.priority
  :field source: ax25_frame.payload.info.opssat_payload.header.source
  :field destination: ax25_frame.payload.info.opssat_payload.header.destination
  :field destination_port: ax25_frame.payload.info.opssat_payload.header.destination_port
  :field source_port: ax25_frame.payload.info.opssat_payload.header.source_port
  :field reserved: ax25_frame.payload.info.opssat_payload.header.reserved
  :field csp_hmac: ax25_frame.payload.info.opssat_payload.header.hmac
  :field csp_xtea: ax25_frame.payload.info.opssat_payload.header.xtea
  :field csp_rdp: ax25_frame.payload.info.opssat_payload.header.rdp
  :field csp_crc: ax25_frame.payload.info.opssat_payload..header.crc
  :field board_temperature: ax25_frame.payload.info.opssat_payload.data.board_temperature
  :field pa_temperature: ax25_frame.payload.info.opssat_payload.data.pa_temperature
  :field last_received_rssi: ax25_frame.payload.info.opssat_payload.data.last_received_rssi
  :field last_received_rf_error: ax25_frame.payload.info.opssat_payload.data.last_received_rf_error
  :field number_of_tx_packets_since_reboot: ax25_frame.payload.info.opssat_payload.data.number_of_tx_packets_since_reboot
  :field number_of_rx_packets_since_reboot: ax25_frame.payload.info.opssat_payload.data.number_of_rx_packets_since_reboot
  :field number_of_tx_bytes_since_reboot: ax25_frame.payload.info.opssat_payload.data.number_of_tx_bytes_since_reboot
  :field number_of_rx_bytes_since_reboot: ax25_frame.payload.info.opssat_payload.data.number_of_rx_bytes_since_reboot
  :field active_system_configuration: ax25_frame.payload.info.opssat_payload.data.active_system_configuration
  :field reboot_number: ax25_frame.payload.info.opssat_payload.data.reboot_number
  :field reboot_cause: ax25_frame.payload.info.opssat_payload.data.reboot_cause
  :field last_valid_packet_timestamp: ax25_frame.payload.info.opssat_payload.data.last_valid_packet_timestamp
  :field background_rssi_level: ax25_frame.payload.info.opssat_payload.data.background_rssi_level
  :field tx_duty_time_since_reboot: ax25_frame.payload.info.opssat_payload.data.tx_duty_time_since_reboot
  :field total_tx_packets: ax25_frame.payload.info.opssat_payload.data.total_tx_packets
  :field total_rx_packets: ax25_frame.payload.info.opssat_payload.data.total_rx_packets
  :field total_tx_bytes: ax25_frame.payload.info.opssat_payload.data.total_tx_bytes
  :field total_rx_bytes: ax25_frame.payload.info.opssat_payload.data.total_rx_bytes
  :field crc_32c: ax25_frame.payload.info.crc_32c
  :field rs_block: ax25_frame.payload.info.rs_block

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
  ui_frame:
    seq:
      - id: pid
        type: u1
      - id: info
        type:
          switch-on: '_parent.ax25_header.src_callsign_raw.callsign_ror.callsign'
          cases:
            '"DP0OPS"': opssat_payload
  opssat_payload:
    seq:
      - id: opssat_payload
        type: cube_sat_protocol
      - id: crc_32c
        type: u4
      - id: rs_block
        type: u1
        repeat: expr
        repeat-expr: 32
  csp_header:
    seq:
      - id: raw_csp_header
        type: u4
    instances:
      priority:
        value: '(raw_csp_header >> 30)'
      source:
        value: '((raw_csp_header >> 25) & 0x1F)'
      destination:
        value: '((raw_csp_header >> 20) & 0x1F)'
      destination_port:
        value: '((raw_csp_header >> 14) & 0x3F)'
      source_port:
        value: '((raw_csp_header >> 8) & 0x3F)'
      reserved:
        value: '((raw_csp_header >> 4) & 0x0F)'
      hmac:
        value: '((raw_csp_header & 0x08) >> 3)'
      xtea:
        value: '((raw_csp_header & 0x04) >> 2)'
      rdp:
        value: '((raw_csp_header & 0x02) >> 1)'
      crc:
        value: '(raw_csp_header & 0x01)'
  csp_data:
    seq:
      - id: board_temperature
        type: s2
      - id: pa_temperature
        type: s2
      - id: last_received_rssi
        type: s2
      - id: last_received_rf_error
        type: s2
      - id: number_of_tx_packets_since_reboot
        type: u4
      - id: number_of_rx_packets_since_reboot
        type: u4
      - id: number_of_tx_bytes_since_reboot
        type: u4
      - id: number_of_rx_bytes_since_reboot
        type: u4
      - id: active_system_configuration
        type: u1
      - id: reboot_number
        type: u2
      - id: reboot_cause
        type: u4
      - id: last_valid_packet_timestamp
        type: u4
      - id: background_rssi_level
        type: s2
      - id: tx_duty_time_since_reboot
        type: u1
      - id: total_tx_packets
        type: u4
      - id: total_rx_packets
        type: u4
      - id: total_tx_bytes
        type: u4
      - id: total_rx_bytes
        type: u4
  cube_sat_protocol:
    seq:
      - id: header
        type: csp_header
      - id: data
        type: csp_data
