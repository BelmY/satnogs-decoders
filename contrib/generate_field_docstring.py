#!/usr/bin/env python3
import argparse
import yaml


def add_docs_field(external_identifier, internal_identifier):
    print('  :field {0}: {1}'.format(external_identifier, '.'.join(internal_identifier)))
    pass


def generate_field_docstring(ksy):    
    print('doc: |')
    gen_fields_from_seq(ksy, ksy['seq'], prefix=[])
    if 'instances' in ksy.keys():
        gen_fields_from_instances(ksy, ksy['instances'], prefix=[])


def gen_fields_from_instances(ksy, instances, prefix):
    for instance in instances.keys():
        add_docs_field('{0}_{1}'.format(ksy['meta']['id'], instance),
                       prefix + [instance])


def gen_fields_from_seq(ksy, seq, prefix):
    for field in seq:
        if not 'type' in field.keys():
            # Field is a raw byte array
            add_docs_field('{0}_{1}'.format(ksy['meta']['id'], field['id']),
                           prefix + [field['id']])
            continue

        if type(field['type']) is dict:
            # Field has a conditional type, iterate all types
            for field_type in field['type']['cases'].values():
                gen_fields_for_field(ksy, seq, prefix, field, field_type)
        else:
            field_type = field['type']
            gen_fields_for_field(ksy, seq, prefix, field, field_type)


def gen_fields_for_field(ksy, seq, prefix, field, field_type):
    if field_type in ksy['types'].keys():
        # Field with user-defined type
        gen_fields_from_seq(ksy,
                            ksy['types'][field_type]['seq'],
                            prefix + [field['id']])
        if 'instances' in ksy['types'][field_type].keys():
            gen_fields_from_instances(ksy,
                                      ksy['types'][field_type]['instances'],
                                      prefix + [field['id']])
    else:
        # Field has basic data type
        add_docs_field('{0}_{1}'.format(ksy['meta']['id'], field['id']),
                       prefix + [field['id']])


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='Generate the field docstring from '
                                     'a given kaitai struct. '
                                     'NOTE: This creates a template only, which has to be manually finished '
                                     '(missing and/or wrong fields)!')
    parser.add_argument('ksy_file',
                        type=str,
                        help='Kaitai Struct file')
    args = parser.parse_args()

    with open(args.ksy_file, "r") as f:
        ksy = yaml.load(f)

    generate_field_docstring(ksy)
