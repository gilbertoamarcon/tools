#!/usr/bin/env python
def answer(x, y):
	ver = 1
	for i in range(1, y):
		ver += i;
	hor = ver;
	for i in range(y+1, y+x):
		hor += i;
	return hor;

# for i in range(1, 7):
# 	print str(i)+": "+str(answer(i, 4));
print answer(3, 2);
print answer(5, 10);