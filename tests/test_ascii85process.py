"""
`pytest` testing framework file for ASCII85 process
"""

import satnogsdecoders.decoder as decoder
from tests.shared_methods import check_type, load_objects


def test_answer():  # pylint: disable=too-many-locals
    """
    `pytest` entry point
    """

    example1 = bytearray([
        0x54, 0x68, 0x69, 0x73, 0x20, 0x69, 0x73, 0x20, 0x61, 0x20, 0x74, 0x65,
        0x73, 0x74, 0x2e, 0x0a, 0x52, 0x41, 0x5e, 0x7e, 0x29, 0x41, 0x5a, 0x63,
        0x3f, 0x54, 0x56, 0x49, 0x58, 0x76, 0x36, 0x62, 0x39, 0x36, 0x32, 0x0a,
    ])
    example1_keys = 2
    packets = [example1]
    dut = 'Ascii85test'
    result = []

    for frame in packets:
        result = load_objects(decoder, dut, frame)
        count = check_type(result)
        if frame == example1:
            assert count == example1_keys
            assert bytearray(result['decoded'], "ASCII") == example1[0:15]
            assert bytearray(result['encoded'], "ASCII") == example1[16:35]
