#!/usr/bin/env python

import argparse
import pandas as pd
import oyaml as yaml
import re

pd.set_option('display.expand_frame_repr', False)

def main():

	# Parsing user input
	parser = argparse.ArgumentParser()
	parser.add_argument(
			'-i','--input_filename',
			nargs='?',
			type=str,
			required=True,
			help='Input file (json).'
		)
	parser.add_argument(
			'-m','--match',
			nargs='?',
			type=str,
			default='',
			help='Term to match.'
		)
	parser.add_argument(
			'-c','--column',
			nargs='?',
			type=str,
			default='title',
			help='Column to match.'
		)
	args = parser.parse_args()

	df = pd.read_json(args.input_filename)

	divs = re.compile(r'<[^>]*>')
	nls = re.compile(r'[\\n<>]')
	if args.match:
		founds = df[df[args.column].str.contains(args.match)]
		for index,found in founds.iterrows():
			out = yaml.safe_dump(found.to_dict())
			out = divs.sub('',out)
			out = nls.sub('',out)
			print out
			print 80*'-'
	else:
		print df






if __name__ == '__main__':
	main()





