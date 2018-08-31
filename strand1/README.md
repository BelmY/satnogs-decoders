# How-To generate the Kaitai struct for Strand-1

1. Download the documentation: <http://www.skcube.sk/wp-content/uploads/2016/06/skcube_data_structures.xlsx>
2. (abbreviated description) Extract the columns `id`, `channel`, `i2c_node_address` and `node_channel` into csv files.
3. Use the script `strand1_csv2kaitai.py` to generate a Kaitai struct stub.
