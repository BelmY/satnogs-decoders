'''
db/base/helpers/helpers.py
source: https://gitlab.com/librespacefoundation/satnogs/satnogs-db


SatNOGS DB - SatNOGS DB is a transmitter suggestions and crowd-sourcing app
Copyright (C) 2014-2018  Libre Space Foundation

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU Affero General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Affero General Public License for more details.

You should have received a copy of the GNU Affero General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
'''

UPPER = 'ABCDEFGHIJKLMNOPQRSTUVWX'
LOWER = 'abcdefghijklmnopqrstuvwx'


def gridsquare(lat, lng):
    if not (-180 <= lng < 180):
        return False
    if not (-90 <= lat < 90):
        return False

    adj_lat = lat + 90.0
    adj_lon = lng + 180.0

    grid_lat_sq = UPPER[int(adj_lat / 10)]
    grid_lon_sq = UPPER[int(adj_lon / 20)]

    grid_lat_field = str(int(adj_lat % 10))
    grid_lon_field = str(int((adj_lon / 2) % 10))

    adj_lat_remainder = (adj_lat - int(adj_lat)) * 60
    adj_lon_remainder = ((adj_lon) - int(adj_lon / 2) * 2) * 60

    grid_lat_subsq = LOWER[int(adj_lat_remainder / 2.5)]
    grid_lon_subsq = LOWER[int(adj_lon_remainder / 5)]

    qth = '{}'.format(grid_lon_sq + grid_lat_sq + grid_lon_field +
                      grid_lat_field + grid_lon_subsq + grid_lat_subsq)

    return qth
