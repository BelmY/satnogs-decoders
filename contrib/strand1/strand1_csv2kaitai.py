#!/usr/bin/env python3

import re


filename = 'obc_beacon.csv'
filename_modem = 'modem_beacon.csv'

def unify_str(string):
    string = string.strip().lower()
    string = string.replace(' ', '_')
    string = string.replace('+', '_p')
    string = string.replace('-', '_m')
    string = string.replace('(', '')
    string = string.replace(')','')
    string = string.replace('&','_')
    string = string.replace(':','_')
    string = string.replace('.','')
    string = string.replace(',','_')
    string = string.replace('/','')

    # Replace duplicated consecutive underline characters
    string = re.sub(r'(_)\1+', r'\1', string)
    return string

if __name__ == "__main__":
    with open(filename_modem, 'r') as f:
        a = f.readlines()

    print('#---------------Modem Beacon TLM--------------------------------')
    print('  modem_beacon_tlm:')
    print('    seq:')
    print('    - id: channel')
    print('      type: u1')
    print('    - id: data')
    print('      type:')
    print('        switch-on: channel')
    print('        cases:')
    for l in a:
        t = l.split('\t')
        print('          {}: ch_{}'.format(t[0], unify_str(t[1])))

    # Generate modem channel field defitions
    print('############ Modem Channel fields ##############')
    for l in a:
        t = l.split('\t')

        name = unify_str(t[1])
        print('  ch_{}:'.format(name))
        print('    seq:')
        print('    - id: {}'.format(name))
        print('      type: u1')

    with open(filename, 'r') as f:
        a = f.readlines()

    print('#---------------OBC beacon TLM ---------------------------------')
    print('  obc_beacon_tlm:')
    print('    seq:')
    print('    - id: i2c_node_address')
    print('      type: u1')
    print('    - id: node')
    print('      type:')
    print('        switch-on: i2c_node_address')
    print('        cases:')

    # Generate switch statements
    for l in a:
        t = l.split('\t')

        if t[0] != '':
            print('          {}: {}'.format(t[0], unify_str(t[1])))
            continue

    # Generate node field definitions
    print('################## Node fields ##################')
    for l in a:
        t = l.split('\t')

        if t[0] != '':
            print('  {}:'.format(unify_str(t[1])))
            print('    seq:')
            print('    - id: i2c_node_address')
            print('      type: u1')
            print('    - id: node')
            print('      type:')
            print('        switch-on: i2c_node_address')
            print('        cases:')
            continue
        print('          {}: ch_{}'.format(t[2], unify_str(t[3])))

    # Generate channel field defitions
    print('############### Channel fields #################')
    for l in a:
        t = l.split('\t')

        if t[0] != '':
            print('#### I2C address {}: {:20} ####'.format(t[0], t[1]))
            continue

        # print(t[2].strip(), t[3].strip())
        name = unify_str(t[3])
        print('  ch_{}:'.format(name))
        print('    seq:')
        print('    - id: {}'.format(name))
        print('      type: u1')

