#!/usr/bin/env python
import sys
import re

in_file = sys.argv[1]
if len(sys.argv) < 3:
	ou_file = sys.argv[1]
else:
	ou_file = sys.argv[2]

f = open(in_file,"r");
lines = f.readlines();
f.close();

f = open(ou_file,"w");
regex = re.compile(r"(\\cite\w*{\D+\d{4})[^}]*}")
for line in lines:
	line = regex.sub(r"\1}",line);
	f.write(line);
f.close();