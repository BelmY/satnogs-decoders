#!/usr/bin/env python3
#
# Patrick Dohmen, DL4PD (dl4pd@darc.de)
#

import binascii
import getopt
import json
import re
import pprint
import sys
import satnogsdecoders.decoder as decoder


def main(argv):
    DECODER = ''
    FRAME = ''
    inputfile = ''
    binfile = ''
    verbose = 0

    helpstring = 'decode_multiple.py [-b <binary file>|-f <hexframe>|-x <inputfile in hex>] -d <Decoder>'
    try:
        opts, args = getopt.getopt(argv, "b:d:f:hvx:")
    except getopt.GetoptError:
        print(helpstring)
        sys.exit(2)
    for opt, arg in opts:
        if opt == '-v':
            verbose = 1
        if opt == '-b':
            binfile = arg
        if opt == '-d':
            DECODER = arg
        if opt == '-f':
            FRAME = arg
        if opt == '-h':
            print(helpstring)
            sys.exit()
        elif opt == '-x':
            inputfile = arg

    if inputfile != '':
        print('Input file is:', inputfile)

        lines = [line.rstrip('\n') for line in open(inputfile)]
        for each_line in lines:
            try:
                # substitute newlines, " and carriage-return
                each_line = re.sub('["\r\n]', '', each_line)

                converted_line = binascii.unhexlify(each_line[20:])
                if verbose == 1:
                    print("Decoding frame: \n" + each_line[20:])
                pprint.pprint(decoder.get_fields(getattr(decoder, DECODER).from_bytes(converted_line)))
            except Exception as e:
                if verbose == 1:
                    print("^~~~ Invalid frame!")
                    print(e)
                pass

    if binfile != '':
        print('Input file is:', binfile)

        with open(binfile, 'rb') as file_t:
            blob_data = bytearray(file_t.read())
            pprint.pprint(decoder.get_fields(getattr(decoder, DECODER).from_bytes(blob_data)))

    if FRAME != '':
        FRAME = re.sub('["\r\n]', '', FRAME)
        converted_line = binascii.unhexlify(FRAME)
        pprint.pprint(decoder.get_fields(getattr(decoder, DECODER).from_bytes(converted_line)))


if __name__ == "__main__":
    main(sys.argv[1:])
