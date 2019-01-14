#!/usr/bin/env python

import argparse

import pandas as pd
import oyaml as yaml
from collections import OrderedDict

pd.set_option('display.expand_frame_repr', False)


def main():

	# Parsing user input
	parser = argparse.ArgumentParser()
	parser.add_argument(
			'-i','--input_filename',
			nargs='?',
			type=str,
			required=True,
			help='Input file (yaml).'
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

	if args.match:
		founds = df[df[args.column].str.contains(args.match)]
		for index,found in founds.iterrows():
			for k,v in found.to_dict().items():
				print k,': ',v
				print '---'
				print ''
			print '---'
	else:
		print df






if __name__ == '__main__':
	main()





