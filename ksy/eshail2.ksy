---
meta:
  id: eshail2
  title: Es'Hail2 (QO-100) decoder struct
  endian: be
doc-ref: 'https://amsat-dl.org/wp-content/uploads/2019/01/tlmspec.pdf'
doc: |
  :field ao40_beacon_type: ao40_frame.ao40_beacon_type
  :field ao40_message_line1: ao40_frame.ao40_beacon_data.ao40_message_line1
  :field ao40_message_line2: ao40_frame.ao40_beacon_data.ao40_message_line2
  :field ao40_message_line3: ao40_frame.ao40_beacon_data.ao40_message_line3
  :field ao40_message_line4: ao40_frame.ao40_beacon_data.ao40_message_line4
  :field ao40_message_line5: ao40_frame.ao40_beacon_data.ao40_message_line5
  :field ao40_message_line6: ao40_frame.ao40_beacon_data.ao40_message_line6
  :field ao40_message_line7: ao40_frame.ao40_beacon_data.ao40_message_line7
  :field ao40_message_line8: ao40_frame.ao40_beacon_data.ao40_message_line8

seq:
  - id: ao40_frame
    type: ao40_frame

types:
  ao40_frame:
    seq:
      - id: ao40_beacon_type
        type: u1
      - id: ao40_beacon_data
        size: 511
        type:
          switch-on: ao40_beacon_type
          cases:
            0x41: ao40_message_spare
            0x44: ao40_message_spare
            0x45: ao40_message_spare
            0x4b: ao40_message_k
            0x4c: ao40_message_l
            0x4d: ao40_message_spare
            0x4e: ao40_message_spare
            0x58: ao40_message_spare
            _: ao40_command_response
      - id: crc
        type: u2
  ao40_message_k:
    seq:
      - id: ao40_message_line1
        type: str
        encoding: ASCII
        size: 63
      - id: ao40_message_line2
        type: str
        encoding: ASCII
        size: 64
      - id: ao40_message_line3
        type: str
        encoding: ASCII
        size: 64
      - id: ao40_message_line4
        type: str
        encoding: ASCII
        size: 64
      - id: ao40_message_line5
        type: str
        encoding: ASCII
        size: 64
      - id: ao40_message_line6
        type: str
        encoding: ASCII
        size: 64
      - id: ao40_message_line7
        type: str
        encoding: ASCII
        size: 64
      - id: ao40_message_line8
        type: str
        encoding: ASCII
        size: 64
  ao40_message_l:
    seq:
      - id: ao40_message_line1
        type: str
        encoding: ASCII
        size: 63
      - id: ao40_message_line2
        type: str
        encoding: ASCII
        size: 64
      - id: ao40_message_line3
        type: str
        encoding: ASCII
        size: 64
      - id: ao40_message_line4
        type: str
        encoding: ASCII
        size: 64
      - id: ao40_message_line5
        type: str
        encoding: ASCII
        size: 64
      - id: ao40_message_line6
        type: str
        encoding: ASCII
        size: 64
      - id: ao40_message_line7
        type: str
        encoding: ASCII
        size: 64
      - id: ao40_message_line8
        type: str
        encoding: ASCII
        size: 64
  ao40_message_spare:
    seq:
      - id: ao40_message_line1
        type: str
        encoding: ASCII
        size: 63
      - id: ao40_message_line2
        type: str
        encoding: ASCII
        size: 64
      - id: ao40_message_line3
        type: str
        encoding: ASCII
        size: 64
      - id: ao40_message_line4
        type: str
        encoding: ASCII
        size: 64
      - id: ao40_message_line5
        type: str
        encoding: ASCII
        size: 64
      - id: ao40_message_line6
        type: str
        encoding: ASCII
        size: 64
      - id: ao40_message_line7
        type: str
        encoding: ASCII
        size: 64
      - id: ao40_message_line8
        type: str
        encoding: ASCII
        size: 64
  ao40_command_response:
    seq:
      - id: ao40_message_line1
        type: str
        encoding: ASCII
        size: 63
      - id: ao40_message_line2
        type: str
        encoding: ASCII
        size: 64
      - id: ao40_message_line3
        type: str
        encoding: ASCII
        size: 64
      - id: ao40_message_line4
        type: str
        encoding: ASCII
        size: 64
      - id: ao40_message_line5
        type: str
        encoding: ASCII
        size: 64
      - id: ao40_message_line6
        type: str
        encoding: ASCII
        size: 64
      - id: ao40_message_line7
        type: str
        encoding: ASCII
        size: 64
      - id: ao40_message_line8
        type: str
        encoding: ASCII
        size: 64
instances:
  frame_length:
    value: _io.size
