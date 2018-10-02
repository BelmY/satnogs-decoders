# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

from pkg_resources import parse_version
from kaitaistruct import __version__ as ks_version, KaitaiStruct, KaitaiStream, BytesIO


if parse_version(ks_version) < parse_version('0.7'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.7 or later is required, but you have %s" % (ks_version))

class Siriussat(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.ax25header = self._io.read_bytes(16)
        self.unknown0 = self._io.read_u1()
        self.unknown1 = self._io.read_bytes(7)
        _on = self.unknown0
        if _on == 22:
            self.body = self._root.Beacon(self._io, self, self._root)
        elif _on == 23:
            self.body = self._root.Extendedbeacon(self._io, self, self._root)

    class Beacon(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self._read()

        def _read(self):
            self.usb1 = self._io.read_u2le()
            self.usb2 = self._io.read_u2le()
            self.usb3 = self._io.read_u2le()
            self.isb1 = self._io.read_u2le()
            self.isb2 = self._io.read_u2le()
            self.isb3 = self._io.read_u2le()
            self.iab = self._io.read_s2le()
            self.ich1 = self._io.read_u2le()
            self.ich2 = self._io.read_u2le()
            self.ich3 = self._io.read_u2le()
            self.ich4 = self._io.read_u2le()
            self.t1_pw = self._io.read_s2le()
            self.t2_pw = self._io.read_s2le()
            self.t3_pw = self._io.read_s2le()
            self.t4_pw = self._io.read_s2le()
            self.uab_crit = self._io.read_bits_int(1) != 0
            self.uab_min = self._io.read_bits_int(1) != 0
            self.heater2_manual = self._io.read_bits_int(1) != 0
            self.heater1_manual = self._io.read_bits_int(1) != 0
            self.heater2_on = self._io.read_bits_int(1) != 0
            self.heater1_on = self._io.read_bits_int(1) != 0
            self.tab_max = self._io.read_bits_int(1) != 0
            self.tab_min = self._io.read_bits_int(1) != 0
            self.channelon4 = self._io.read_bits_int(1) != 0
            self.channelon3 = self._io.read_bits_int(1) != 0
            self.channelon2 = self._io.read_bits_int(1) != 0
            self.channelon1 = self._io.read_bits_int(1) != 0
            self.ich_limit4 = self._io.read_bits_int(1) != 0
            self.ich_limit3 = self._io.read_bits_int(1) != 0
            self.ich_limit2 = self._io.read_bits_int(1) != 0
            self.ich_limit1 = self._io.read_bits_int(1) != 0
            self.reserved0 = self._io.read_bits_int(7)
            self.charger = self._io.read_bits_int(1) != 0
            self._io.align_to_byte()
            self.reserved1 = self._io.read_u1()
            self.uab = self._io.read_s2le()
            self.reg_tel_id = self._io.read_u4le()
            self.pss_time = self._io.read_s4le()
            self.pss_nres = self._io.read_u1()
            self.psdd_fl = self._io.read_u1()
            self.t_amp = self._io.read_s1()
            self.t_uhf = self._io.read_s1()
            self.rssirx = self._io.read_s1()
            self.rssiidle = self._io.read_s1()
            self.pf = self._io.read_s1()
            self.pb = self._io.read_s1()
            self.uhf_nres = self._io.read_u1()
            self.uhf_fl = self._io.read_u1()
            self.uhf_time = self._io.read_s4le()
            self.uptime = self._io.read_u4le()
            self.current = self._io.read_u2le()
            self.uuhf = self._io.read_s2le()


    class Extendedbeacon(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self._read()

        def _read(self):
            self.t_mb = self._io.read_s2le()
            self.mx = self._io.read_f4le()
            self.my = self._io.read_f4le()
            self.mz = self._io.read_f4le()
            self.vx = self._io.read_f4le()
            self.vy = self._io.read_f4le()
            self.vz = self._io.read_f4le()
            self.nres = self._io.read_u1()
            self.rcon = self._io.read_u1()
            self.fl = self._io.read_u1()
            self.time = self._io.read_s4le()
            self.payload_flags = self._io.read_u1()
            self.timesend = self._io.read_s4le()
            self.t_plate = self._io.read_s2le()
            self.t_cpu = self._io.read_s2le()
            self.cursens1 = self._io.read_u2le()
            self.cursens2 = self._io.read_u2le()
            self.nrst = self._io.read_u1()
            self.timerst = self._io.read_s4le()
            self.ch1rate = self._io.read_u2le()
            self.ch2rate = self._io.read_u2le()
            self.ch3rate = self._io.read_u2le()
            self.ch4rate = self._io.read_u2le()
            self.ch5rate = self._io.read_u2le()
            self.ch6rate = self._io.read_u2le()
            self.ptrend1 = self._io.read_u2le()
            self.ptrcrt1 = self._io.read_u2le()
            self.ptrend2 = self._io.read_u2le()
            self.ptrcrt2 = self._io.read_u2le()
            self.ptrend3 = self._io.read_u2le()
            self.ptrcrt3 = self._io.read_u2le()
            self.lastevent_ch1_1 = self._io.read_u1()
            self.lastevent_ch1_2 = self._io.read_u1()
            self.lastevent_ch1_3 = self._io.read_u1()
            self.lastevent_ch2_1 = self._io.read_u1()
            self.lastevent_ch2_2 = self._io.read_u1()
            self.lastevent_ch2_3 = self._io.read_u1()



