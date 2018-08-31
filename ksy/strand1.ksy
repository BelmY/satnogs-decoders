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
      type: s4le
  obc_beacon_tlm:
    seq:
    - id: i2c_node_address
      type: u1
    - id: node_channel
      type: u1
    - id: data
      type: u1
