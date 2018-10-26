"""
Preprocessor used in kaitai struct to remove the escape sequences of
an ELFIN STAR telemetry frame
"""
#
# Patrick Dohmen, DL4PD (dl4pd@darc.de)
# With the kind help of Mikhail Yakshin
#
# Usage in 'kaitai struct':
#
# types:
#   preprocessor:
#     seq:
#       - id: databuf
#         process: elfin_pp
#         size-eos: true
#
from __future__ import absolute_import, division, print_function

import binascii


class ElfinPp(object):  # pylint: disable=too-few-public-methods
    """
    ELFIN preprocessor class
    """

    def __init__(self):
        pass

    def decode(self, bindata):  # pylint: disable=no-self-use
        """
        ELFIN preprocessor decoding method
        """
        i = 0
        binlen = len(bindata)
        out = b''
        while i < binlen:
            char = ord(bindata[i])
            if char == 0x27 and i + 1 < binlen:
                next_char = ord(bindata[i + 1])
                if next_char in [0x27, 0x5e, 0x9e]:
                    i += 1
            out += bindata[i]
            i += 1
        return out


if __name__ == "__main__":

    # some examples
    DEC = ElfinPp()
    print(binascii.hexlify(binascii.unhexlify('0011272722')))
    print(binascii.hexlify(DEC.decode(binascii.unhexlify('0011272722'))))

    print(binascii.hexlify(binascii.unhexlify('0011a2727220')))
    print(binascii.hexlify(DEC.decode(binascii.unhexlify('0011a2727220'))))

    print(binascii.hexlify(binascii.unhexlify('930027005e0027932727275e')))
    print(binascii.hexlify(
        DEC.decode(binascii.unhexlify('930027005e0027932727275e'))))
