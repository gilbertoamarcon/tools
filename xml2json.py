import xmltodict
import json
import re

input_file_name = '/home/gil/dev/madp/problems/DTPGMX.pgmx'
output_file_name = '/home/gil/DTPGMX.json'

# Reading XML
with open(input_file_name,'r') as f:
	xml = f.read()

# Parsing XML
dictionary = xmltodict.parse(xml)

# XML to JSON
js = json.dumps(dictionary, sort_keys=True, indent=4, separators=(',', ': '))

# Tabs instead of spaces
jstabs = re.sub('\n +', lambda match: '\n' + '\t' * (len(match.group().strip('\n')) / 4), js)

# Writting JSON
with open(output_file_name,'w') as f:
	f.write(jstabs)
