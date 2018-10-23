#!/usr/bin/env python3

# msg_start_bytes = b'\x9E\x9A\x66\x96\x82\x82\xE0\x9E\x9A\x72\xA6\x82\xA8\x61\x03\xF0'
valuesToParse = [('comID', 'B'),
                 ('timestamp', 'I'),
                 ('FWVersion', 'H'),
                 ('activeCOM', 'B'),
                 ('DigipeaterMode', 'B'),
                 ('noOfReboots', 'H'),
                 ('outputReflPower', 'H'),
                 ('outputForwardPower', 'H'),
                 ('outputReflPowerCW', 'H'),
                 ('outputForwardPowerCW', 'H'),
                 ('RSSI', 'H'),
                 ('RSSInoise', 'H'),
                 ('MCUTemperature', 'b'),
                 ('PATemperature', 'b'),
                 ('CWBeaconSent', 'H'),
                 ('PacketSent', 'H'),
                 ('CorrectPacketsReceived', 'H'),
                 ('BrokenPacketsReceived', 'H'),
                 ('COMProtocolError', 'H'),
                 ('GSprotocolError', 'H'),
                 ('TXdisableStatus', 'B'),
                 ('OrbitTime', 'B'),
                 ('timeslotStart', 'B'),
                 ('timeslotEnd', 'B')
                 ]

for id, t in valuesToParse:
    print('- id: {}'.format(id.lower()))

    if t == 'B':
        type = 'u1'
    elif t == 'I':
        type = 'u4'
    elif t == 'H':
        type = 'u2'
    elif t == 'b':
        type = 's1'
    else:
        print("ERROR: Unkown type {}".format(t))

    print('  type: {}'.format(type))
