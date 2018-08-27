meta:
  id: siriussat
  title: Siriussat Telemetry Decoder
  endian: le
seq:
- id: ax25header
  size: 16
- id: unknown0
  type: u1
- id: unknown1
  size: 7
- id: body
  type:
    switch-on: unknown0
    cases:
      22: beacon
      23: extendedbeacon
      
types:
  beacon:
    seq:
    - id: usb1
      type: u2
      doc: "Solar Panel 1 Voltage(mV)"
    - id: usb2
      type: u2
      doc: "Solar Panel 2 Voltage(mV)"
    - id: usb3
      type: u2
      doc: "Solar Panel 3 Voltage(mV)"
    - id: isb1
      type: u2
      doc: "Solar Panel 1 Current(mA)"
    - id: isb2
      type: u2
      doc: "Solar Panel 2 Current(mA)"
    - id: isb3
      type: u2
      doc: "Solar Panel 3 Current(mA)"
    - id: iab
      type: s2
      doc: "Battery Current(mA)"
    - id: ich1
      type: u2
      doc: "Channel 1 Current(mA)"
    - id: ich2
      type: u2
      doc: "Channel 2 Current(mA)"
    - id: ich3
      type: u2
      doc: "Channel 3 Current(mA)"
    - id: ich4
      type: u2
      doc: "Channel 4 Current(mA)"
    - id: t1_pw
      type: s2
      doc: "Battery temperature 1(deg. С)"
    - id: t2_pw
      type: s2
      doc: "Battery temperature 2(deg. С)"
    - id: t3_pw
      type: s2
      doc: "Battery temperature 3(deg. С)"
    - id: t4_pw
      type: s2
      doc: "Battery temperature 4(deg. С)"
    - id: uab_crit
      type: b1
      doc: "Flag: Critical battery voltage"
    - id: uab_min
      type: b1
      doc: "Flag: Minimal battery voltage"
    - id: heater2_manual
      type: b1
      doc: "Flag: Heater 2 manual control"
    - id: heater1_manual
      type: b1
      doc: "Flag: Heater 1 manual control"
    - id: heater2_on
      type: b1
      doc: "Flag: Heater 2 is on"
    - id: heater1_on
      type: b1
      doc: "Flag: Heater 1 is on"
    - id: tab_max
      type: b1
      doc: "Flag: Battery overtemperature"
    - id: tab_min
      type: b1
      doc: "Flag: Battery undertemperature"
    - id: channelon4
      type: b1
      doc: "Flag: Channel 4 is on"
    - id: channelon3
      type: b1
      doc: "Flag: Channel 3 is on"
    - id: channelon2
      type: b1
      doc: "Flag: Channel 2 is on"
    - id: channelon1
      type: b1
      doc: "Flag: Channel 1 is on"
    - id: ich_limit4
      type: b1
      doc: "Flag: Channel 4 current limit"
    - id: ich_limit3
      type: b1
      doc: "Flag: Channel 3 current limit"
    - id: ich_limit2
      type: b1
      doc: "Flag: Channel 2 current limit"
    - id: ich_limit1
      type: b1
      doc: "Flag: Channel 1 current limit"
    - id: reserved0
      type: b7
      doc: "Reserved"
    - id: charger
      type: b1
      doc: "Flag: Charging voltage"
    - id: reserved1
      type: u1
      doc: "Reserved"
    - id: uab
      type: s2
      doc: "Battery voltage(mV)"
    - id: reg_tel_id
      type: u4
      doc: "PSS telemetry number"
    - id: pss_time
      type: s4
      doc: "PSS last telemetry timestamp"
    - id: pss_nres
      type: u1
      doc: "PSS reset counter"
    - id: psdd_fl
      type: u1
      doc: "PS flags"
    - id: t_amp
      type: s1
      doc: "UHF amp temperatur(deg. С)"
    - id: t_uhf
      type: s1
      doc: "UHF temperature(deg. С)"
    - id: rssirx
      type: s1
      doc: "RX RSSI"
    - id: rssiidle
      type: s1
      doc: "idle RSSI"
    - id: pf
      type: s1
      doc: "Forward wave power(dBm)"
    - id: pb
      type: s1
      doc: "Reflected wave power(dBm)"
    - id: uhf_nres
      type: u1
      doc: "UHF reset counter"
    - id: uhf_fl
      type: u1
      doc: "UHF flags"
    - id: uhf_time
      type: s4
      doc: "UHF telemetry timestamp"
    - id: uptime
      type: u4
      doc: "Uptime(sec)"
    - id: current
      type: u2
      doc: "UHF consumption current"
    - id: uuhf
      type: s2
      doc: "UHF voltage(mV)"
  extendedbeacon:
    seq:
    - id: t_mb
      type: s2
      doc: "Carrier board temperature (deg. С)"
    - id: mx
      type: f4
      doc: "Magnetic field X(nanotesla)"
    - id: my
      type: f4
      doc: "Magnetic field Y(nanotesla)"
    - id: mz
      type: f4
      doc: "Magnetic field Z(nanotesla)"
    - id: vx
      type: f4
      doc: "Angular velocity X(dps)"
    - id: vy
      type: f4
      doc: "Angular velocity Y(dps)"
    - id: vz
      type: f4
      doc: "Angular velocity Z(dps)"
    - id: nres
      type: u1
      doc: "Reset counter"
    - id: rcon
      type: u1
      doc: "Last reset reason"
    - id: fl
      type: u1
      doc: "Flags"
    - id: time
      type: s4
      doc: "Last telemetry timestamp"
    - id: payload_flags
      type: u1
      doc: "Payload flags"
    - id: timesend
      type: s4
      doc: "Last payload telemetry timestamp"
    - id: t_plate
      type: s2
      doc: "Payload board temperature"
    - id: t_cpu
      type: s2
      doc: "Payload MPU temperature"
    - id: cursens1
      type: u2
      doc: "Payload current sensor 1"
    - id: cursens2
      type: u2
      doc: "Payload current sensor 2"
    - id: nrst
      type: u1
      doc: "Payload reset counter"
    - id: timerst
      type: s4
      doc: "Payload last reset timestamp"
    - id: ch1rate
      type: u2
      doc: "Channel 1 count rate"
    - id: ch2rate
      type: u2
      doc: "Channel 2 count rate"
    - id: ch3rate
      type: u2
      doc: "Channel 3 count rate"
    - id: ch4rate
      type: u2
      doc: "Channel 4 count rate"
    - id: ch5rate
      type: u2
      doc: "Channel 5 count rate"
    - id: ch6rate
      type: u2
      doc: "Channel 6 count rate"
    - id: ptrend1
      type: u2
      doc: "Last transmitted buffer from segment 1 pointer"
    - id: ptrcrt1
      type: u2
      doc: "Write pointer from segment 1"
    - id: ptrend2
      type: u2
      doc: "Last transmitted buffer from segment 2 pointer"
    - id: ptrcrt2
      type: u2
      doc: "Write pointer from segment 2"
    - id: ptrend3
      type: u2
      doc: "Last transmitted buffer from segment 3 pointer"
    - id: ptrcrt3
      type: u2
      doc: "Write pointer from segment 3"
    - id: lastevent_ch1_1
      type: u1
      doc: "Last event channel 1 M1L1."
    - id: lastevent_ch1_2
      type: u1
      doc: "Last event channel 1 L2H1."
    - id: lastevent_ch1_3
      type: u1
      doc: "Last event channel 1 H2M2."
    - id: lastevent_ch2_1
      type: u1
      doc: "Last event channel 2 M1L1."
    - id: lastevent_ch2_2
      type: u1
      doc: "Last event channel 2 L2H1."
    - id: lastevent_ch2_3
      type: u1
      doc: "Last event channel 2 H2M2."
