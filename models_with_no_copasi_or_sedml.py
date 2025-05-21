# -*- coding: utf-8 -*-
"""
Created on Thu Jun  3 08:59:04 2021

@author: Lucian
"""

from os import walk

noSed = []
copasiButNoSed = []
for root, dirs, files in walk("original/"):
    sedml = False
    copasi = False
    for file in files:
        if ".cps" in file:
            copasi = True
        if ".sedml" in file:
            sedml = True
    if not copasi and not sedml:
        noSed.append(root.replace("original/", ""))
    elif copasi and not sedml:
        copasiButNoSed.append(root.replace("original/", ""))

out = open("noSED.txt", "w")
for biomd in noSed:
    out.write(biomd + "\n")
out.close()

out = open("copasiNoSED.txt", "w")
for biomd in copasiButNoSed:
    out.write(biomd + "\n")
out.close()
