#!/usr/bin/env python
def answer(s):
	o = "";
	for c in s:
		char_index = ord(c);
		if char_index >= 97 and char_index <= 122:
			o += chr(219-char_index);
		else:
			o += c;
	return o;