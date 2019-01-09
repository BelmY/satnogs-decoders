meta:
  id: us6
  title: Unisat-6 Telemetry Decoder
  file-extension: us6
  endian: le
doc-ref: 'https://www.gaussteam.com/radio-amateur-information-for-unisat-6/'
doc: |
  :field header: header
  :field syncpacket: syncpacket
  :field packetindex: packetindex
  :field groundindexack: groundindexack
  :field packettype: packettype
  :field payloadsize: payloadsize
  :field rebootcounter: rebootcounter
  :field uptime: uptime
  :field unixtime: unixtime
  :field tempmcu: tempmcu
  :field tempfpga: tempfpga
  :field magnetometerx: magnetometerx
  :field magnetometery: magnetometery
  :field magnetometerz: magnetometerz
  :field gyroscopex: gyroscopex
  :field gyroscopey: gyroscopey
  :field gyroscopez: gyroscopez
  :field cpucurrent: cpucurrent
  :field tempradio: tempradio
  :field payloadreserved1: payloadreserved1
  :field payloadreserved2: payloadreserved2
  :field tempbottom: tempbottom
  :field tempupper: tempupper
  :field payloadreserved3: payloadreserved3
  :field epsvbat: epsvbat
  :field epscurrent_sun: epscurrent_sun
  :field epscurrent_out: epscurrent_out
  :field epsvpanel01: epsvpanel01
  :field epsvpanel02: epsvpanel02
  :field epsvpanel03: epsvpanel03
  :field epscurrent01: epscurrent01
  :field epscurrent02: epscurrent02
  :field epscurrent03: epscurrent03
  :field epsbatttemp: epsbatttemp
  :field payloadreserved4: payloadreserved4
  :field saterrorflags: saterrorflags
  :field satoperationstatus: satoperationstatus
  :field crc: crc

seq:
  - id: header
    size: 16
  - id: syncpacket
    size: 3
    contents: [0x55, 0x53, 0x36]
  - id: packetindex
    type: u2
  - id: groundindexack
    type: u2
  - id: packettype
    type: u1
  - id: payloadsize
    type: u1
  - id: rebootcounter
    type: u2
  - id: uptime
    type: u4
  - id: unixtime
    type: u4
  - id: tempmcu
    type: s1
  - id: tempfpga
    type: s1
  - id: magnetometerx
    type: s2
  - id: magnetometery
    type: s2
  - id: magnetometerz
    type: s2
  - id: gyroscopex
    type: s2
  - id: gyroscopey
    type: s2
  - id: gyroscopez
    type: s2
  - id: cpucurrent
    type: u2
  - id: tempradio
    type: s1
  - id: payloadreserved1
    type: u1
  - id: payloadreserved2
    type: u1
  - id: tempbottom
    type: u1
  - id: tempupper
    type: u1
  - id: payloadreserved3
    type: u1
  - id: epsvbat
    type: u2
  - id: epscurrent_sun
    type: u2
  - id: epscurrent_out
    type: u2
  - id: epsvpanel01
    type: u2
  - id: epsvpanel02
    type: u2
  - id: epsvpanel03
    type: u2
  - id: epscurrent01
    type: u2
  - id: epscurrent02
    type: u2
  - id: epscurrent03
    type: u2
  - id: epsbatttemp
    type: u2
  - id: payloadreserved4
    type: u1
  - id: saterrorflags
    type: u2
  - id: satoperationstatus
    type: u1
  - id: crc
    type: u1
