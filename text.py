#!/usr/bin/env python

import re
import argparse as ap
import nltk
# nltk.download('punkt')
# nltk.download('averaged_perceptron_tagger')
# nltk.download('maxent_ne_chunker')
# nltk.download('words')
# nltk.download('gutenberg')
# nltk.download('genesis')
# nltk.download('inaugural')
# nltk.download('nps_chat')
# nltk.download('webtext')
# nltk.download('treebank')
from nltk.book import FreqDist

def remove_comments(string):
	string = re.sub(re.compile("\%.*?\n" ) ,"" ,string)
	string = re.sub(re.compile("\\\\.*?\n" ) ,"" ,string)
	return string

def is_acro(w):
	bc = re.compile(r'[\$_^-]')
	bw = re.compile(r'\b(AT|OT|AOT|AO|GB|CA|CS)\b')
	return w.isupper() and len(w)>1 and not bc.findall(w) and not bw.findall(w)

# Main
def main():


	# Parsing user input
	parser = ap.ArgumentParser()
	parser.add_argument(
			'-i','--input',
			nargs='?',
			type=str,
			required=True,
			help='Input filename.'
		)
	parser.add_argument(
			'-c','--concordance',
			nargs='?',
			type=str,
			default=None,
			help='Word concordance.'
		)
	parser.add_argument(
			'-d','--dispersion',
			nargs='*',
			type=str,
			default=None,
			help='Word dispersion.'
		)
	parser.add_argument(
			'-f','--frequency',
			nargs='?',
			type=int,
			default=None,
			help='Word frequency.'
		)
	parser.add_argument(
			'-a','--acro',
			action='store_true',
			help='Acronyms only.'
		)
	args = parser.parse_args()


	with open(args.input,'r') as f:
		plain = f.read()

	plain = remove_comments(plain)

	words = nltk.word_tokenize(plain)

	if args.acro:
		words = [
			w
			for w in words
			if is_acro(w)
		]

	print '%d unique words out of %d total words.' % (len(set(words)),len(words))

	text = nltk.Text(words)

	if args.concordance is not None:
		text.concordance(args.concordance)
		return

	if args.dispersion is not None:
		text.dispersion_plot(args.dispersion)
		return

	if args.frequency is not None:
		freq = FreqDist(text)
		for i,f in enumerate(freq.most_common(args.frequency)):
			print '%9d%9d %s'%(i,f[1],f[0])
		freq.plot(args.frequency)





if __name__ == "__main__":
	main()

