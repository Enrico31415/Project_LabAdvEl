#!/usr/bin/python3
import sys

def HCtoPCK(s):
    l=list(bin(int(s,16)))
    l.reverse()
    l=l[:-2]
    count=0
    for k in l:
        if (k=='1'):
            count=count+1
    parity=list('0') if count%2 else list('1')
    return list('0')+l+ parity + list('1')

s=''
l=HCtoPCK(sys.argv[1])
for digit in l:
    s=s+digit

print('%d\'b%s'%(len(l),s))

