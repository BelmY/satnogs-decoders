# How-To generate the Kaitai struct for skCUBE

1. Download the documentation: <http://www.skcube.sk/wp-content/uploads/2016/06/skcube_data_structures.xlsx>
2. For each packet type extract the columns `Type` and `Item`, seperated by a semicolon into a separate file.
3. Use the script `skcube_csv2kaitai.py` to generate Kaitai structs for one packet type at a time.

The result can be seen here: https://gitlab.com/kerel-fs/satnogs-db/snippets/1748681
