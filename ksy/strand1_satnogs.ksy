meta:
  id: strand
doc-ref: https://ukamsat.files.wordpress.com/2013/03/amsat-strand-1-20130327.xlsx
doc-ref: https://amsat-uk.org/satellites/telemetry/strand-1/strand-1-telemetry/
seq:
- id: hdlc_flag
  contents: [0xc0, 0x80]
- id: seq_no
  type: u1
- id: length
  type: u1
- id: packet_type
  type: u1
- id: body
  type:
   switch-on: packet_type
   cases:
     0x01: modem_beacon_tlm
     0x02: obc_beacon_tlm
- id: crc_16_ccit
  size: 2
types:
  modem_beacon_tlm:
    seq:
    - id: channel
      type: u1
    - id: data
      size: 4
  obc_beacon_tlm:
    seq:
    - id: i2c_node_address
      type: u1
    - id: node
      type:
        switch-on: i2c_node_address
        cases:
          0x2C: node_cs_eps
          0x2D: node_cs_battery
          0x80: node_obc_data
  node_cs_eps:
    seq:
    - id: channel
      type: u1
    - id: data
      type:
        switch-on: channel
        cases:
          0x01: ch_battery_current_direction
  ch_battery_current_direction:
    seq:
    - id: battery_current_direction
      type: u1
  node_cs_battery:
    seq:
    - id: channel
      type: u1
    - id: data
      type:
        switch-on: channel
        cases:
          0x01: ch_adc1
          0x02: ch_adc2
          0x03: ch_adc3
          0x04: ch_adc4
          0x05: ch_adc5
          0x06: ch_adc6
          0x07: ch_adc7
          0x08: ch_adc8
          0x09: ch_adc9
          0x0A: ch_adc10
          0x0B: ch_adc11
          0x0D: ch_adc13
          0x0E: ch_adc14
          0x11: ch_adc17
          0x1A: ch_adc26
          0x1B: ch_adc27
          0x1E: ch_adc30
          0x1F: ch_adc31
  ch_adc1:
    seq:
    - id: adc1
      type: u1
  ch_adc2:
    seq:
    - id: adc2
      type: u1
  ch_adc3:
    seq:
    - id: adc3
      type: u1
  ch_adc4:
    seq:
    - id: adc4
      type: u1
  ch_adc5:
    seq:
    - id: adc5
      type: u1
  ch_adc6:
    seq:
    - id: adc6
      type: u1
  ch_adc7:
    seq:
    - id: adc7
      type: u1
  ch_adc8:
    seq:
    - id: adc8
      type: u1
  ch_adc9:
    seq:
    - id: adc9
      type: u1
  ch_adc10:
    seq:
    - id: adc10
      type: u1
  ch_adc11:
    seq:
    - id: adc11
      type: u1
  ch_adc13:
    seq:
    - id: adc13
      type: u1
  ch_adc14:
    seq:
    - id: adc14
      type: u1
  ch_adc17:
    seq:
    - id: adc17
      type: u1
  ch_adc26:
    seq:
    - id: adc26
      type: u1
  ch_adc27:
    seq:
    - id: adc27
      type: u1
  ch_adc30:
    seq:
    - id: adc30
      type: u1
  ch_adc31:
    seq:
    - id: adc31
      type: u1
  node_obc_data:
    seq:
    - id: channel
      type: u1
    - id: data
      type:
        switch-on: channel
        cases:
          0x0C: ch_unix_time
  ch_unix_time:
    seq:
    - id: unix_time
      type: s4le
