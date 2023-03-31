#!/usr/bin/env python

import sys,re

"""cat together smbl-sh (.mod) files on cmd-line
print to stdout

v1: treats sections all the same, even if putting together from several models would be wrong (eg @units)
v2: at least makes sure species and compartment declarations are not repeated 
v3: make a @model header with names of component files change to keep comments (# at start), previously lost
v4 bugfixes so it keeps all #; arrange so that remove duplicates in units, compartments and parameters too
 """

sbmlversion="2.1.0"

dividers=["@model", "@units", "@compartments", "@species", "@parameters", "@rules", "@reactions", "@events"]

patt=re.compile("@model")
buff={}
species_d={}
variable_d={}
for k in ["@units", "@compartments", "@parameters"]:
    variable_d[k]={}

for d in dividers:
    buff[d]=[]
k="dummy" # shouldn't ever use this 

for inf in sys.argv[1:]:
    infile= open(inf, 'r')
    for fd in infile.readlines():
        if patt.match(fd):
            buff["@model"].append(fd[:-1])
        else:
            words=fd[:-1].split()
            if len(words) == 0 : continue # empty line 
#            if words[0] == "#": continue 
            if words[0] in dividers:
                k=words[0] # set the hash key to use in buffer
            else:
                if k == "@species": # make sure only have the species part once 
                    if re.match('\s*#', fd): # look for # at start of line
                        buff[k].append(fd[:-1]) # keep comments 
                    else: 
                        [compartment,spec,amount]=re.split('[:=]+',fd) # divide on : or = 
                        species=spec.strip() 
                        if species in species_d:
                            sys.stderr.write("  skipping species %s from %s : %s" % (species,inf,fd))
                        else:
                            buff[k].append(fd[:-1])
                            species_d[species]="def" 
                elif k in ["@units", "@compartments", "@parameters"] : # make sure only have a single entry for each compartment
                    if re.match('\s*#', fd): # look for # at start of line
                        buff[k].append(fd[:-1]) # keep comments from all
                    else:
                        try:
                            [thingy,value]=re.split('=+', fd, 1) # divide on =, a max of once (because units sections can be time=second:m=60
                        except:
                            sys.stderr.write("%s:%s:%s\n" % (inf, k,fd))
                            sys.exit(1)
                        variable=thingy.strip() 
                        if variable in variable_d[k]:
                            sys.stderr.write("  skipping %s %s from %s : %s" % (k,variable,inf,fd))
                        else:
                            buff[k].append(fd[:-1])
                            variable_d[k][variable]="def" 
                else: # not species or unit/compartment/param
                    try:
                        buff[k].append(fd[:-1])
                    except:
                        sys.stderr.write("unclassified line %s : %s" % (inf, fd))
    infile.close()

#give it a new name 
sbml_outname="CompositeModel"
print '@model:%s=%s "%s"' % (sbmlversion, sbml_outname, "__".join(sys.argv[1:]))
# now input the put-together lines in same order as in file. 
for d in dividers[1:]:
    print d 
    for line in buff[d]:
        print line


