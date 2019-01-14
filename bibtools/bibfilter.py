#!/usr/bin/env python
import sys

keywords = ["isbn", "issn", "abstract", "doi", "url"];

f = open(sys.argv[1],"r");
lines = f.readlines();
f.close();

f = open(sys.argv[2],"w");
for line in lines:
	found = 0;
	for k in keywords:
		if (k+" = ") in line:
			found = 1;
			break;
	if not found:
		f.write(line);
f.close();