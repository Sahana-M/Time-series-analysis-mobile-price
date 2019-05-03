# -*- coding: utf-8 -*-
"""
Creaed on Sun Apr 28 23:11:00 2019

@author: Shivam
"""

str = input()

print(N)

s = list(str)
N = len(s)
print(s)
n = int(N/2)
t = s[n:]
f = s[:n]
l = s[n:]
final = []
for i in range(n):
    if l[-1] == f[-1]:
        l = l[1:] 
    else:
        l = l
for i in s[::-1]:
    print(i)
