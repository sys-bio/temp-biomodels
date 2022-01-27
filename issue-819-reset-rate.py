# -*- coding: utf-8 -*-
"""
Created on Tue Sep  7 16:27:13 2021

@author: Lucian
"""

import tellurium as te
import roadrunner

r = te.loada("""
  species x = 3
  at(time>1): x=5
  species S1 = x+4
  S1' = 1
""")

r.simulate()
r.reset(roadrunner.SelectionRecord.RATE)
print("Reset S1 when it's a species:", r.getValue("S1"))


r = te.loada("""
  species x = 3
  at(time>1): x=5
  S1 = x+4
  S1' = 1
""")

r.simulate()
r.reset(roadrunner.SelectionRecord.RATE)
print("Reset S1 when it's a parameter:", r.getValue("S1"))


