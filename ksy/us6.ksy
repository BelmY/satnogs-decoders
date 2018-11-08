meta:
  id: us6
  title: Unisat-6 Telemetry Decoder
  file-extension: us6
  endian: le
doc-ref: 'https://www.gaussteam.com/radio-amateur-information-for-unisat-6/'
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
