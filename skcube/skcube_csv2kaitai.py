#!/usr/bin/env python3

filename_block2 = 'block2_adcs.csv'
filename_block4 = 'block4_cam.csv'
filename_block5 = 'block5_pwr.csv'
filename_block6 = 'block6_exp.csv'
filename = filename_block6


if __name__ == "__main__":

    with open(filename, 'r') as f:
        a = f.readlines()
    
    for l in a:
        t,n = l.split(';')
        t = t.strip()
        n = n.strip()
        identifier = n.lower().replace(' ', '_').replace('+', '_p').replace('-', '_m').replace('(', '').replace(')','')
        doc = '"{}"'.format(n)

        if t.startswith('uint'):
          type = 'u{}'.format(int(t[4:]) //8)
        elif t.startswith('int'):
          type = 's{}'.format(int(t[3:]) //8)
        else:
          print('ERROR: Unknown type.')
          
        print('- id: {}'.format(identifier))
        print('  type: {}'.format(type))
        print('  doc: {}'.format(doc))
