# Original source: satnogs-db/db/base/kaitai.py

# kaitai does not give us a good way to export attributes when we don't know
# what those attributes are, and here we are dealing with a lot of various
# decoders with different attributes. This is a hacky way of getting them
# to json. We also need to sanitize this for any binary data left over as
# it won't export to json.

def kaitai_to_json(structdict, tags, timestamp, json_obj):
    """Recursively sends dict string/int data to the given json_obj"""
    for key, value in structdict.iteritems():
        if type(value) is dict:  # recursion
            kaitai_to_json(value, tags, timestamp, json_obj)
        else:
            data = {
                'time': timestamp.strftime('%Y-%m-%dT%H:%M:%SZ'),
                'measurement': key,
                'tags': tags
            }
            if isinstance(value, basestring):  # skip binary values
                try:
                    value.decode('utf-8')
                    data.update({'fields': {'value': value}})
                except UnicodeError:
                    continue
            else:
                data.update({'fields': {'value': value}})
            if 'value' in data['fields']:
                json_obj.append(data)


def kaitai_to_dict(struct):
    """Take a kaitai decode object and return a dict object"""
    structdict = struct.__dict__
    todict = {}
    for key, value in structdict.iteritems():
        if not key.startswith("_"):  # kaitai objects and priv vars, skip
            if isinstance(value, basestring):  # skip binary values
                try:
                    value.decode('utf-8')
                    todict[key] = value
                except UnicodeError:
                    continue
            elif hasattr(value, '__dict__'):
                todict[key] = kaitai_to_dict(value)  # recursion
            else:
                todict[key] = value
    return todict
