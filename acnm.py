#!/usr/bin/python
import os
import sys
import re
import getopt
import operator as op
import collections as col

# Regexes
BASE = r'[\w\*-]*'
CASE = r'[A-Z]'
PATTERN = BASE+CASE+BASE+CASE+BASE

# FALSE_M = CASE+r'[a-z]+-'+CASE+r'[a-z]+'
FALSE_M = r'.*'+CASE+CASE+r'.*'

HELP_MSG = 'acnm.py -i <input-filename>'

# Getting user input
try:
	opts, args = getopt.getopt(sys.argv[1:],'hi:',['input-filename='])
except getopt.GetoptError:
	print HELP_MSG
	sys.exit(2)
for opt, arg in opts:
	if opt in ('-h', '--help'):
		print HELP_MSG
		sys.exit()
	elif opt in ('-i', '--input-filename'):
		input_filename = arg

# Reading file
with open(input_filename, 'r') as file:
	data = ''.join(list(file))

# Matching Pattern
acns = re.findall(PATTERN,data)

# Removing Plural
for a in range(len(acns)):
	if acns[a][-1] == 's':
		acns[a] = acns[a][:-1]

# Removing Bib Keys
acns = [a for a in acns if len(re.findall('\d{4}',a)) == 0]

# Removing False Matches
acns = [a for a in acns if len(re.findall(FALSE_M,a)) > 0]

# Sorting list
acns = sorted(acns)

# Counting occurrences
ctr = col.Counter(acns)

# Sorting by occurrece frequency
srted = sorted(ctr.items(), key=op.itemgetter(1), reverse=True)

# Printing outputs
i = 0
for c in srted:
	i += 1
	print '%03d %02d %s' % (i,c[1],c[0])
