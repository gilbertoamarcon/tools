#!/usr/bin/python
import sys
import re

# Checking input args
if len(sys.argv) < 2:
	print "Missing args. Usage:\npython acro.py <filename>"
	exit(0)

# Imput args
filename = sys.argv[1]

# pattern
pattern = r'([A-Z]+[A-Z]+)'

f = open(filename,"rb")
data = f.read()
reg = re.findall(pattern, data)
if len(reg) > 0:
	acc = sorted(list(set(reg)))
	for a in acc:
		print a
f.close()
