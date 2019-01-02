"""
SatNOGS Decoder subpackage initialization
"""
from __future__ import absolute_import, division, print_function

__all__ = [
    'Ax25frames',
    'Cas4',
    'Cubebel1',
    'Cubesatsim',
    'Elfin',
    'Fox',
    'Irvine',
    'Minxss',
    'Pwsat2',
    'Qbee',
    'Siriussat',
    'Skcube',
    'Strand',
    'Us6',
    'Uwe4',
]

import re

from .ax25frames import Ax25frames
from .cas4 import Cas4
from .cubebel1 import Cubebel1
from .cubesatsim import Cubesatsim
from .elfin import Elfin
from .fox import Fox
from .irvine import Irvine
from .minxss import Minxss
from .pwsat2 import Pwsat2
from .qbee import Qbee
from .siriussat import Siriussat
from .skcube import Skcube
from .strand import Strand
from .us6 import Us6
from .uwe4 import Uwe4

FIELD_REGEX = re.compile(
    r':field (?P<field>[\*\w]+): (?P<attribute>.*?)'
    r'(?:(?=:field)|\Z|\n)', re.S)


def get_fields(struct, empty=False):
    '''
    Get fields defined in docstring
    '''
    fields = {}

    try:
        doc_fields = FIELD_REGEX.findall(struct.__doc__)
    except TypeError:
        return fields

    for key, value in doc_fields:
        try:
            fields[key] = reduce(getattr, value.split('.'), struct)
        except AttributeError:
            if empty:
                fields[key] = None

    return fields
