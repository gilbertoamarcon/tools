#!/usr/bin/env python

def toStr(n,base):
	convertString = "0123456789"
	if n < base:
		return convertString[n]
	else:
		return toStr(n//base,base) + convertString[n%base]

def answer(n, b):
	k = len(n);
	hist = [];
	while True:
		hist.append(n);
		y = ''.join(sorted(n));
		x = y[::-1];
		z = toStr(int(x,b)-int(y,b),b).zfill(k);
		n = z;
		for i in range(0,len(hist)):
			if hist[i] == n:
				return len(hist)-i;
		print n;

print answer("210022",3);