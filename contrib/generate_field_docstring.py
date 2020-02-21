#!/usr/bin/env python3
import argparse
import yaml

fields_found = {}
exclude_rules = []
parameters = {
    'path_depth': 0
}

# RULES
def NoRaw(external_identifier):
    if external_identifier.find("raw"):
        return False

    return True

def add_docs_field(external_identifier, internal_identifier):
    global fields_found
    global exclude_rules

    for rule in exclude_rules:
        if rule(external_identifier):
            return

    if external_identifier in fields_found:
        if fields_found[external_identifier].sort == internal_identifier.sort:
        # same path
            return

        path_depth = parameters['path_depth']
        # same field name but path is different
        diff_in_path = [x for x in internal_identifier if x not in fields_found[external_identifier]]
        path_len = len(diff_in_path)
        if path_depth != 0 and path_depth < path_len:
            diff_in_path = diff_in_path[(path_len-path_depth):]
        new_name = '_'.join(diff_in_path + [external_identifier])
        fields_found[new_name]=internal_identifier
    else:
        fields_found[external_identifier]=internal_identifier

def generate_field_docstring(ksy):
    print('doc: |')
    gen_fields_from_seq(ksy, ksy['seq'], prefix=[])
    if 'instances' in ksy.keys():
        gen_fields_from_instances(ksy, ksy['instances'], prefix=[])


def gen_fields_from_instances(ksy, instances, prefix):
    for instance in instances.keys():
        add_docs_field(instance,
                       prefix + [instance])


def gen_fields_from_seq(ksy, seq, prefix):
    for field in seq:
        if not 'type' in field.keys():
            # Field is a raw byte array
            add_docs_field(field['id'],
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
        add_docs_field(field['id'],
                       prefix + [field['id']])


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='Generate the field docstring from '
                                     'a given kaitai struct. '
                                     'NOTE: This creates a template only, which has to be manually finished '
                                     '(missing and/or wrong fields)!')
    parser.add_argument('ksy_file',
                        type=str,
                        help='Kaitai Struct file')
    parser.add_argument('--no-raw', dest='no_raw', action='store_true',
                            help='Exclude the fields where the raw word is in the id.')
    parser.add_argument('--keeping-path-depth', dest='path_depth', default=0,
                            help='Specify the number of path element to be included in the field name in case of same id.')
    args = parser.parse_args()

    if args.no_raw is True:
        exclude_rules.append(NoRaw)

    with open(args.ksy_file, "r") as f:
        ksy = yaml.load(f, Loader=yaml.SafeLoader)

    parameters['path_depth'] = int(args.path_depth)
    generate_field_docstring(ksy)

    for key in fields_found:
        print('  :field ' + key + ': ' + '.'.join(fields_found[key]))
