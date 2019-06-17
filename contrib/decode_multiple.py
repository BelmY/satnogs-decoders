#!/usr/bin/env python3

import binascii
import argparse
import json
import re
import sys
import decode_multiple

import satnogsdecoders.decoder as decoder

if __name__ == '__main__':
    verbose = 0
    parser = argparse.ArgumentParser(
        description='Decode single or multiple frames using a Kaitai'
        'Struct decoder int JSON objects.')
    parser.add_argument('decoder_name', type=str, help='Name of the decoder (e.g. Eshail2).')
    parser.add_argument('--filename', type=str, help='Filename containing the frame[s].')
    parser.add_argument('--hex_frame', type=str, help='Hexlified frame provided as argument - like "001122AABBCCDDEEFF".')
    parser.add_argument('--format', type=str, help='Input file format, \'bin\' or \'csv\'.')
    parser.add_argument('-v', type=int, help='Verbose output mode - a value >0 enables verbose mode.')
    args = parser.parse_args()
    if args.v > 0:
        verbose = 1
    if ((args.format != 'bin') or (args.format != 'csv')) and (args.hex_frame == ''):
        print("Wrong input file format! Must be 'bin' or 'csv'!")
        sys.exit(2)
    if args.filename != '':
        print('Input file is:', args.filename)
        if args.format == 'csv':
            lines = [line.rstrip('\n') for line in open(args.filename)]
            for each_line in lines:
                try:
                    # substitute newlines, " and carriage-return
                    each_line = re.sub('["\r\n]', '', each_line)
                    converted_line = binascii.unhexlify(each_line[20:])
                    if verbose == 1:
                        print("Decoding frame: \n" + each_line[20:])
                    print(
                        json.dumps(
                            decoder.get_fields(
                                getattr(decoder,
                                        args.decoder_name).from_bytes(converted_line))))
                except Exception as e:
                    if verbose == 1:
                        print("^~~~ Invalid frame!")
                        print(e)
                    pass
        if args.format == 'bin':
            with open(args.filename, 'rb') as file_t:
                blob_data = bytearray(file_t.read())
                print(
                    json.dumps(
                        decoder.get_fields(
                            getattr(decoder, args.decoder_name).from_bytes(blob_data))))
    if args.hex_frame != '':
        FRAME = re.sub('["\r\n]', '', args.hex_frame)
        converted_line = binascii.unhexlify(args.hex_frame)
        print(
            json.dumps(
                decoder.get_fields(
                    getattr(decoder, args.decoder_name).from_bytes(converted_line))))
