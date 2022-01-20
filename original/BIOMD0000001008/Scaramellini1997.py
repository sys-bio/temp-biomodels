# -*- coding: utf-8 -*-
"""
Created on Wed May 12 15:07:44 2021

@author: Kausthubh R
"""
import pandas as pd
import math
from matplotlib import pyplot as pl

agonist_1 = 1e-14

q = math.sqrt(10)

m1	 = 1.00E+06
m2	 = 1.00E+06
n1	 = 1
n2	 = 1
n3	 = 0.33
K1	 = 1.00E-05
K2	 = 1.00E-05
K	 = 1
Em	 = 100
points = 1000000

col = [0]*4
ind = [0]*points
for p in range(4):
    col[p] = p
for p in range(points):
    ind[p] = p

mediator_1 = pd.DataFrame(index=ind, columns=col)
mediator_2 = pd.DataFrame(index=ind, columns=col)
mediator_tot = pd.DataFrame(index=ind, columns=col)
effect = pd.DataFrame(index=ind, columns=col)

del ind
del col

for p in range(points):
    agonist_2 = 1e-15
    mediator_1[0].values[p] = (m1*agonist_1**(n1))/(K1**(n1) + agonist_1**(n1))
    mediator_2[0].values[p] = (m2*agonist_2**(n2))/(K1**(n2) + agonist_2**(n2))
    mediator_tot[0].values[p] = mediator_1[0].values[p]+mediator_2[0].values[p]
    effect[0].values[p] = (Em*mediator_tot[0].values[p]**n3)/(K**n3 + mediator_tot[0].values[p]**n3)
    agonist_1 += 9.99999999e-14

agonist_1 = 1e-14
for p in range(points):
    agonist_2 = 1e-13*q
    mediator_1[1].values[p] = (m1*agonist_1**(n1))/(K1**(n1) + agonist_1**(n1))
    mediator_2[1].values[p] = (m2*agonist_2**(n2))/(K1**(n2) + agonist_2**(n2))
    mediator_tot[1].values[p] = mediator_1[1].values[p]+mediator_2[1].values[p]
    effect[1].values[p] = (Em*mediator_tot[1].values[p]**n3)/(K**n3 + mediator_tot[1].values[p]**n3)
    agonist_1 += 9.99999999e-14

agonist_1 = 1e-14
for p in range(points):
    agonist_2 = 1e-11
    mediator_1[2].values[p] = (m1*agonist_1**(n1))/(K1**(n1) + agonist_1**(n1))
    mediator_2[2].values[p] = (m2*agonist_2**(n2))/(K1**(n2) + agonist_2**(n2))
    mediator_tot[2].values[p] = mediator_1[2].values[p]+mediator_2[2].values[p]
    effect[2].values[p] = (Em*mediator_tot[2].values[p]**n3)/(K**n3 + mediator_tot[2].values[p]**n3)
    agonist_1 += 9.99999999e-14
    
agonist_1 = 1e-14
for p in range(points):
    agonist_2 = 1e-10*q
    mediator_1[3].values[p] = (m1*agonist_1**(n1))/(K1**(n1) + agonist_1**(n1))
    mediator_2[3].values[p] = (m2*agonist_2**(n2))/(K1**(n2) + agonist_2**(n2))
    mediator_tot[3].values[p] = mediator_1[3].values[p]+mediator_2[3].values[p]
    effect[3].values[p] = (Em*mediator_tot[3].values[p]**n3)/(K**n3 + mediator_tot[3].values[p]**n3)
    agonist_1 += 9.99999999e-14
    
agonist_1 = 1e-15
x = [0]*points
for p in range(points):
    x[p] = (agonist_1 + 9.99999999e-14) 
    agonist_1 += 9.99999999e-14
    
y1 = effect[0]
y2 = effect[1]
y3 = effect[2]
y4 = effect[3]

fig,ax = pl.subplots()
pl.xscale('log')
ax.plot(x, y1, color = 'blue', label = 'control')
ax.plot(x, y2, color = 'red', label = 'agonist_2 = 1e-12.5')
ax.plot(x, y3, color = 'green', label = 'agonist_2 = 1e-11')
ax.plot(x, y4, color = 'black', label = 'agonist_2 = 1e-9.5')
leg = ax.legend(loc='center', bbox_to_anchor=(0.5, -0.27), shadow=False, ncol=2)
ax.set_xlabel('log[A1]')
ax.set_ylabel('E')
