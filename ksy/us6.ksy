meta:
  id: us6
  title: Unisat-6 Telemetry Decoder
  file-extension: us6
  endian: le
doc-ref: 'https://www.gaussteam.com/radio-amateur-information-for-unisat-6/'
doc: |
  :field us6_header: header
  :field us6_syncpacket: syncpacket
  :field us6_packetindex: packetindex
  :field us6_groundindexack: groundindexack
  :field us6_packettype: packettype
  :field us6_payloadsize: payloadsize
  :field us6_rebootcounter: rebootcounter
  :field us6_uptime: uptime
  :field us6_unixtime: unixtime
  :field us6_tempmcu: tempmcu
  :field us6_tempfpga: tempfpga
  :field us6_magnetometerx: magnetometerx
  :field us6_magnetometery: magnetometery
  :field us6_magnetometerz: magnetometerz
  :field us6_gyroscopex: gyroscopex
  :field us6_gyroscopey: gyroscopey
  :field us6_gyroscopez: gyroscopez
  :field us6_cpucurrent: cpucurrent
  :field us6_tempradio: tempradio
  :field us6_payloadreserved1: payloadreserved1
  :field us6_payloadreserved2: payloadreserved2
  :field us6_tempbottom: tempbottom
  :field us6_tempupper: tempupper
  :field us6_payloadreserved3: payloadreserved3
  :field us6_epsvbat: epsvbat
  :field us6_epscurrent_sun: epscurrent_sun
  :field us6_epscurrent_out: epscurrent_out
  :field us6_epsvpanel01: epsvpanel01
  :field us6_epsvpanel02: epsvpanel02
  :field us6_epsvpanel03: epsvpanel03
  :field us6_epscurrent01: epscurrent01
  :field us6_epscurrent02: epscurrent02
  :field us6_epscurrent03: epscurrent03
  :field us6_epsbatttemp: epsbatttemp
  :field us6_payloadreserved4: payloadreserved4
  :field us6_saterrorflags: saterrorflags
  :field us6_satoperationstatus: satoperationstatus
  :field us6_crc: crc

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
