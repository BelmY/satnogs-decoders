meta:
  id: cas4
  title: CAS-4 Telemetry Decoder
  endian: le
seq:
  - id: ax25header
    size: 16
  - id: syncpacket
    size: 2
    contents: [0xeb, 0x90]
  - id: telemetry
    size: 4
    type:
      switch-on: framecounter % 4
      cases:
        0: frame1
        1: frame2
        2: frame3
        3: frame4
  - id: reserved1
    size: 9
  - id: framecounterplaceholder
    type: u1
  - id: reserved2
    size: 112
types:
  frame1:
    seq:
      - id: pwr_volt
        type: u1
      - id: pwr_cur
        type: u1
      - id: convert_volt
        type: u1
      - id: convert_cur
        type: u1
  frame2:
    seq:
      - id: obc_temp
        type: u1
      - id: rf_amp_temp
        type: u1
      - id: rcv_agc_volt
        type: u1
      - id: rf_fwd
        type: u1
  frame3:
    seq:
      - id: rf_ref
        type: u1
      - id: obc_volt
        type: u1
      - id: obc_reset
        type: u1
      - id: pkt_cnt
        type: b4
      - id: sat_num
        type: b4
  frame4:
    seq:
      - id: op_mode
        type: b4
      - id: pwr_on_op_mode
        type: b4
      - id: i2c_watchdog
        type: b1
      - id: i2c_recon_cnt
        type: b3
      - id: tc_watchdog
        type: b1
      - id: tc_reset_cnt
        type: b3
      - id: adc_watchdog
        type: b1
      - id: adc_reset_cnt
        type: b3
      - id: spi_watchdog
        type: b1
      - id: spi_init_cnt
        type: b3
      - id: cpu_watchdog
        type: b1
      - id: cpu_reset_cnt
        type: b3
instances:
  framecounter:
    pos: 0x000001F
    type: u1
