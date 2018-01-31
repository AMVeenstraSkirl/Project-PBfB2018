#! /usr/bin/env python

a=[1,2,3,4,5,6,7]
b=[1,3,5,7,9,11,13,15,17]

print a
print b

c=set(a).intersection(b)

print c

for d in c:
	a.remove(c)

print a
print b
