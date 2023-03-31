#!/usr/bin/env python

# make an smbl-sh file for foxo with various kinds of PTMs - 
# model, (units), compartments, species, parameters, (rules), reactions, (events)
# to produce SBML requires mod2sbml.py, available from http://www.staff.ncl.ac.uk/d.j.wilkinson/software/sbml-sh/ along with manual

# run on a unix/linux system as 
# $ python make_sbml.py > out.mod
# $ python mod2sbml.py out.mod > out.xml 

# user alterations: 
# search for #M1 and change do_this_modif to set which reactions are active
# search for #M2 and change enz_molno to set initial amounts 
# search for #M3 and change print events lines to set events as you require

# copied from ../foxo2/make_sbml.v26a.py, to combine with existing ins model 27/7/10

# m6 
# v2 change IKK, JNK names to _P,
# v3 remove capitalize 
# v4 make gene upreg better - have constants gene-specific via a hash 
# v5 speed up jnk and ikk phos of foxo to compensate for pp2a 
# m7a
# v1=prev v5
# v2 change transcr and translat params for SOD and InR
# m7b
# v1=prev v2 
# v2 change JNK and IKK params to allow for different molec numbers (paxdb)

import string,sys

def gen_states(basenm,sites,is_prefix):
    """ returns vectors, each of length n=len(sites), with all combinations of zeros, ones etc at each position in the vector, depending on multiplicity of sites at that position. (so number of vectors returned = prod(multiplicities(sites)). Have checked for variable multiplicities e.g [2,2,2,3] and [3,2,2,2]. Also returns names set from sites
is_prefix describes whether that position is a prefix (if T) or suffix"""
    n=len(sites)

    # calculate max 
    max=1
    for i in range(len(sites)):
        max=max*len(sites[i])

    vec_of_states=[]
    names=[]
    for i in range(max):
        j=i
        a=[]
        divisor=max/len(sites[0])
        for k in range(len(sites)):
            a.append(int(j/divisor))
            j=j%divisor
            try: 
                divisor=divisor/len(sites[k+1])
            except IndexError: # on the last trip through the loop
                divisor=divisor/1 # yes I know, but this is formally what I'm doing 
        vec_of_states.append(a)
        nm=basenm
        for i in range(n):
            if is_prefix[i]:
                nm="%s_%s" % (sites[i][a[i]],nm) # prepend mUb0_ or whatever - note a[i] is not printed directly but used as a lookup 
            else:
                nm="%s_%s" % (nm, sites[i][a[i]]) # append _mUb0 or whatever - note a[i] is not printed directly but used as a lookup 
        names.append(nm) 
    return vec_of_states, names


def gen_counters(vv,names,basenm,sites,is_prefix):
    """make counters that are sum of all other vectors that have a particular 
value (kk) of the variable at each position (k)"""
    counter_names=[]
    counter_lists=[]
    for k in range(len(sites)):
        for kk in range(len(sites[k])):
            if is_prefix[k]:
                tname="%s_%s_tot" % (sites[k][kk], basenm)
            else:
                tname="%s_%s_tot" % (basenm, sites[k][kk])
            tlist=[]
            for (vec,vname) in zip(vv,names):
                if (vec[k] == kk ): tlist.append(vname) 
            counter_names.append(tname)
            counter_lists.append(tlist)
    # and a last one for all 
    allname="%s_all" % basenm
    tlist=[]
    for kk in range(len(sites[-1])):
        if is_prefix[-1]:
            tname="%s_%s_tot" % (sites[-1][kk], basenm)
        else:
            tname="%s_%s_tot" % (basenm, sites[-1][kk])
        tlist.append(tname)
    counter_names.append(allname)
    counter_lists.append(tlist)    
    return counter_names, counter_lists


def sim_vecs(va,vb,ix):
    # check if are same everywhere except at ix'th position (just save time)
    if va[ix]==vb[ix]:
        return 0 
    diff_at_ix=vb[ix]-va[ix]
    n_same=0 
    # the next two loops do all except ix, including cases where it is 0 or len
    for i in range(0,ix):
        if va[i]==vb[i]: n_same=n_same+1
    for i in range(ix+1,len(va)):
        if va[i]==vb[i]: n_same=n_same+1
    if n_same==len(va)-1: # are same at all posns except ix 
        return diff_at_ix  # 1 if set in vb and not va, -1 if set in va not vb
    else:
        return 0 


def vec_set(v,si,hkey):
    "instead of if vv[i][si[\"mUb\"]] == 1 say if vec_set(vv[i],si,\"mUb\")"
    if si.has_key(hkey):
        if v[si[hkey]] == 1:
            return True
        else:
            return False 
    else:
        return False # handles case where no key -useful in testing, when you want to change the size of site_names without changing all the if ... rate = rate * 10 stuff 



version="2.1.0" 

compartments=["cytoplasm", "nucleus",  "dnabound"]  # note duplication in header below
compartment_vols=[1.65e-11, 0.5e-12, 0.1e-12]

# are the modifying enzymes stochastic (discrete particles) or concentrations (continuously variable)
stoch_enzymes=True


# site names
# for production 
complete_site_names=[["Pa0", "Pa1"], ["Pb0", "Pb1"], ["Pc0", "Pc1"], ["Pd0", "Pd1"], ["Pe0", "Pe1"], ["Ac0", "Ac1"], ["mUb0", "mUb1"], ["pUb0", "pUb1"], compartments]

# this needs to match up with site names above 
complete_site_type_names=["Pa", "Pb", "Pc", "Pd", "Pe", "Ac", "mUb", "pUb", "location"]
# to see whether is a prefix or suffix in making species names 
# (only the final one in the list, location, is a prefix)
complete_is_prefix=[ False for i in range(len(complete_site_type_names)-1) ]
complete_is_prefix.append(True)

#M1
# these are the active ones 
# needs to match up with complete_site_type_names
# Pa  Akt(SGK)/PP2A 
# Pb  CDK2/PP2A 
# Pc  AMPK/PP2A 
# Pd  IKKb/PP2A 
# Pe  JNK(MST1)/PP2A
# Ac  CBPP300/SIRT1
# mUb E3/USP7
# pUb SCF
do_this_modif={'Pa': True, 'Pb': False, 'Pc': False, 'Pd': True, 'Pe': True, 'Ac': False, 'mUb': False, 'pUb': True, 'location': True}

# do degradation counters 
count_degr=True

# just check you haven't modified something wrongly 
assert len(complete_site_type_names) == len(complete_site_names), "these arrays must be same length!"
assert len(complete_site_type_names) == len(do_this_modif.keys()), "these arrays must be same length!"

# make an array version of do_this_modif, in order of complete_site_names
modifs_to_do=[]
for k in complete_site_type_names:
    modifs_to_do.append(do_this_modif[k])

# will use these in rest of program - make them from complete_* 
# their length is the number of True's in modifs_to_do
site_names=[]
site_type_names=[]
is_prefix=[]
for i in range(len(modifs_to_do)):
    if modifs_to_do[i]:
        site_names.append(complete_site_names[i])
        site_type_names.append(complete_site_type_names[i])
        is_prefix.append(complete_is_prefix[i])


# site indices = si
# make si dict
# so si["Pc"] returns 2 (if Pa,Pc,Pc are all active), use for lookup in site_names or on of the vv[]
si={}
for i,nm in enumerate(site_type_names):
    si[nm]=i 


# eventually want to read these from a file 
# for each will create 2 x mrna species and a protein species. 
genes=["InR", "SOD2"]

# gene-specific kinetic params 

gpar={}

gpar["InR"] = {"k_transcr":0.24, "k_basal_transcr":5, "k_mrna_export":0.22, "k_m_degr":5.622 , "k_translat":2.46, "k_p_degr":4.4e-3}
gpar["SOD2"]= {"k_transcr":0.95, "k_basal_transcr":15, "k_mrna_export":0.22, "k_m_degr":5.622 , "k_translat":1.23, "k_p_degr":1.9e-3}

# gpar[g] = {"k_transcr":0.3, "k_basal_transcr":3, "k_mrna_export":0.22, "k_m_degr":5.622 , "k_translat":1.23, "k_p_degr":1.9e-3}


# M2
# enzymes and ititial amounts 
enzymes=  ["E2F1", "Akt_P2",  "SGK", "CDK2", "AMPK", "IKK_P", "JNK_P" , "PP2A" , "CBPP300", "SIRT1", "E3", "USP7", "SCF",   "Proteasome"]
enz_molno=["3.0e+2", "0.0",   "0.0" ,  "0.0" , "0.0" , "2e+3",  "1.6e+4" , "5e+5",  "1e+1",   "1e+3",  "0.0", "1e+3", "1e+3", "1e+3"]



basenm="Foxo1"  

# set the species vectors and names
(vv,names)=gen_states(basenm,site_names,is_prefix) 
ns=len(vv) 
(counters,counter_lists)=gen_counters(vv,names,basenm,site_names,is_prefix)

# check (debug) 
#for x,y in zip(vv,names): 
#    print x,y 
#sys.exit(0)


init_foxo=1e+3


print """
@model:2.3.0=Foxo_PTMs "Foxo_PTMs" 
@units # substance = items (stochastic), vol = ml, time = min 
 volume=litre:s=-3
 substance=item
 time=second:m=60
@compartments
 extracellular=8.3e-12
 cellsurface<extracellular=6.4e-14
 cytoplasm<cellsurface=%s
 nucleus<cytoplasm=%s
 dnabound<nucleus=%s

""" % tuple([compartment_vols[i] for i in range(3)])

print "@species"

# source/sink
print " %s:null=0.0sb" % compartments[0]
# count how many foxos have been degraded 
degr_name="degr_%s" % basenm
if count_degr:
    print " %s:%s=0.0s" % (compartments[0], degr_name)
else:
    print " %s:%s=0.0sb" % (compartments[0], degr_name) # make it a boundary c

# foxos - the [0] th (no ptms) has init conc, the rest all zero 
print " %s:%s=%ss" % (compartments[0],names[0],init_foxo)
for (v, nm) in zip(vv[1:],names[1:]):
    print " %s:%s=%ss" % (compartments[v[-1]],nm,0)

# counters 
for v in counters: 
    print " extracellular:%s=0s" % v

# genes and derived na and protein 
for g in genes:
    gp=g
    mrnan="nucleus_RNA_%s" % gp
    mrnac="cytoplasm_RNA_%s" % gp 
    protc="cytoplasm_%s" % gp
    print " %s:%s=0.0s" % (compartments[1],mrnan) 
    print " %s:%s=0.0s" % (compartments[0],mrnac)
    print " %s:%s=0.0s" % (compartments[0],protc)

# various kinases, phosphatases, acetylases etc 
# NOTE these will always be printed even if not used because the reaction they
# are in is not active
if stoch_enzymes:
    enz_suffix="s"
else:
    enz_suffix=""
for (enz, number) in zip(enzymes,enz_molno):
    print" %s:%s=%s%s" % (compartments[0],enz,number,enz_suffix)

# parameters 
print '@parameters'

by_jnk_phos_factor=2
print " by_jnk_phos_factor=%s" % by_jnk_phos_factor
by_ikk_phos_factor=3
print " by_ikk_phos_factor=%s" % by_ikk_phos_factor

# rules 
print '@rules'
for v,vlist in zip(counters,counter_lists):
    vstring="+".join(vlist)  # concatenate all the other strings with + between
    print "%s=%s" % (v,vstring) 

# generate the reactions.
print "@reactions" 

# Calnan p 2281 says synth dep on E2F1
synth_rate=0.0055 # * e2f1  1 min-1 = 360 in 6 h

basal_transport=0.1  # to give about 1/2 hr relaxation time 
basal_dna_bub=0.25  # to give about 5 min relaxation time 

basal_phosphorylation=5e-5 
akt_phos_factor = 6 # to give 0.5 when * basal_phosphorylation * Akt_P2 
basal_dephosphorylation=1e-6 #to give 0.5 when * PP2

# 
basal_acetylation=1e-4  # to give 0.1 when * CBPP300 of 10^3
basal_deacetylation=1e-4 # to give 0.1 when * SIRT

# est from van den horst to give t of about 5 min when * enz = 1000
basal_ubiquitination=2e-4
basal_deubiquitination=2e-4  

# see foxo notes p16+17+19 and 52-54,58
basal_polyubiquitination=1e-6
basal_ub_med_degradation=1e-4 # 0.1 x nr proteasome

# for other genes, not foxo ; changed (more or less guessed) 20/9/09
# in v4 changed; put up with defn of genes ; commented here 
# k_transcr = 0.3; k_basal_transcr = 3 ; 
# k_mrna_export=0.22 k_m_degr = 5.622 
# k_translat = 1.23 k_p_degr = 1.9e-3 

# synthesis 
rct=100
print '@r=R%d "%s"' % (rct, "Synthesis")
print '%s -> %s : %s' % ("null", names[0], "E2F1")
print '%s * ksynth: ksynth=%s' % ("E2F1",synth_rate)
rct=rct+1

# now main foxo reactions block - each dependent on  do_this_modif

# transport  - note role of 14-3-3 binding is left out
if do_this_modif["location"]:
    ix=si["location"]
    for i in range(ns): 
        for j in range(ns): 
            convert=sim_vecs(vv[i],vv[j],ix)
            if vv[i][si["location"]] == 0 and convert == 1: 
                # this is cyt-> nucl
                rname = "transport %s to %s" % (names[i],names[j]) 
                basal_c_to_n_transport = basal_transport
                rate = basal_c_to_n_transport * (1.0/0.55)
                if vec_set(vv[i],si,"Pa") : rate = rate * 1/10
                if vec_set(vv[i],si,"Pb") : rate = rate * 1/2 # Huang Sci 06 F3A&C
                if vec_set(vv[i],si,"Pd") : rate = rate * 1/2 # Hu fig 1 
                if vec_set(vv[i],si,"Pe") : rate = rate * 10
                if vec_set(vv[i],si,"mUb") : rate = rate * 10
                print '@r=R%d "%s"' % (rct, rname)
                print '%s -> %s' % (names[i],names[j])
                print '%s * ktr: ktr=%s' % (names[i],rate)
                rct=rct+1
            elif vv[i][si["location"]] == 1 and convert == -1: 
                # this is nucl-> cyt
                rname = "transport %s to %s" % (names[i],names[j]) 
                basal_n_to_c_transport = basal_transport
                rate = basal_n_to_c_transport * 0.55
                if vec_set(vv[i],si,"Pa") : rate = rate * 10
                if vec_set(vv[i],si,"Pb") : rate = rate * 2 # Huang Sci 06 F3A&C
                if vec_set(vv[i],si,"Pd") : rate = rate * 10 # Hu fig 1 
                if vec_set(vv[i],si,"Pe") : rate = rate * 1/10
                if vec_set(vv[i],si,"mUb") : rate = rate * 1/10
                print '@r=R%d "%s"' % (rct, rname)
                print '%s -> %s' % (names[i],names[j])
                print '%s * ktr: ktr=%s' % (names[i],rate)
                rct=rct+1
            if vv[i][si["location"]] == 1 and convert == 1: 
                # this is nucl -> dnabound
                rname = "transport %s to %s" % (names[i],names[j]) 
                basal_dna_b = basal_dna_bub
                rate = basal_dna_b
                if vec_set(vv[i],si,"Pa") : rate = rate * 1/2 # zhang 02 F6B
                if vec_set(vv[i],si,"Ac") : rate = rate * 1/2 # matsuz 05 F1D
                print '@r=R%d "%s"' % (rct, rname)
                print '%s -> %s' % (names[i],names[j])
                print '%s * ktr: ktr=%s' % (names[i],rate)
                rct=rct+1
            elif vv[i][si["location"]] == 2 and convert == -1: 
                # this is dnabound -> nucl
                rname = "transport %s to %s" % (names[i],names[j]) 
                basal_dna_ub = basal_dna_bub * 0.5 # leads to 2:1 bound:nucl. Guessed; just want the majority bound to DNA
                rate = basal_dna_ub
                if vec_set(vv[i],si,"Pa") : rate = rate * 1 # see n->dnab
                if vec_set(vv[i],si,"Ac") : rate = rate * 1 # see n->dnab
                print '@r=R%d "%s"' % (rct, rname)
                print '%s -> %s' % (names[i],names[j])
                print '%s * ktr: ktr=%s' % (names[i],rate)
                rct=rct+1

# p'ation at pa 
if do_this_modif["Pa"]:
    ix=si["Pa"]
    for kinase in ["Akt_P2", "SGK"]:
        for i in range(ns): 
            for j in range(ns): 
                convert=sim_vecs(vv[i],vv[j],ix)
                if convert == 1:  # add phos
                    rname = "conversion of %s to %s by %s" % (names[i],names[j],kinase) 
                    rate = basal_phosphorylation
                    rate = rate * akt_phos_factor
                    print '@r=R%d "%s"' % (rct, rname)
                    print ' %s -> %s : %s' % (names[i],names[j],kinase)
                    print ' %s * %s * kkin: kkin=%s' % (names[i],kinase,rate)
                    rct=rct+1
    ppase="PP2A"
    for i in range(ns): 
        for j in range(ns): 
            convert=sim_vecs(vv[i],vv[j],ix)
            if convert == -1: # remove phos 
                rname = "conversion of %s to %s by %s" % (names[i],names[j],ppase) 
                rate = basal_dephosphorylation 
                print '@r=R%d "%s"' % (rct, rname) 
                print ' %s -> %s : %s' % (names[i],names[j],ppase)
                print ' %s * %s * kdephos: kdephos=%s' % (names[i],ppase,rate)
                rct=rct+1

# p'ation at pb 
if do_this_modif["Pb"]:
    ix=si["Pb"]
    for kinase in ["CDK2"]:
        ppase="PP2A"
        for i in range(ns): 
            for j in range(ns): 
                convert=sim_vecs(vv[i],vv[j],ix)
                if convert == 1:  # add phos
                    rname = "conversion of %s to %s by %s" % (names[i],names[j],kinase) 
                    rate = basal_phosphorylation
                    print '@r=R%d "%s"' % (rct, rname)
                    print ' %s -> %s : %s' % (names[i],names[j],kinase)
                    print ' %s * %s * kkin: kkin=%s' % (names[i],kinase,rate)
                    rct=rct+1
                elif convert == -1: # remove phos 
                    rname = "conversion of %s to %s by %s" % (names[i],names[j],ppase) 
                    rate = basal_dephosphorylation 
                    print '@r=R%d "%s"' % (rct, rname) 
                    print ' %s -> %s : %s' % (names[i],names[j],ppase)
                    print ' %s * %s * kdephos: kdephos=%s' % (names[i],ppase,rate)
                    rct=rct+1

# p'ation at pc
if do_this_modif["Pc"]:
    ix=si["Pc"]
    for kinase in ["AMPK"]:
        ppase="PP2A"
        for i in range(ns): 
            for j in range(ns): 
                convert=sim_vecs(vv[i],vv[j],ix)
                if convert == 1:  # add phos
                    rname = "conversion of %s to %s by %s" % (names[i],names[j],kinase) 
                    rate = basal_phosphorylation
                    print '@r=R%d "%s"' % (rct, rname)
                    print ' %s -> %s : %s' % (names[i],names[j],kinase)
                    print ' %s * %s * kkin: kkin=%s' % (names[i],kinase,rate)
                    rct=rct+1
                elif convert == -1: # remove phos 
                    rname = "conversion of %s to %s by %s" % (names[i],names[j],ppase) 
                    rate = basal_dephosphorylation 
                    print '@r=R%d "%s"' % (rct, rname) 
                    print ' %s -> %s : %s' % (names[i],names[j],ppase)
                    print ' %s * %s * kdephos: kdephos=%s' % (names[i],ppase,rate)
                    rct=rct+1


# p'ation at pd
if do_this_modif["Pd"]:
    ix=si["Pd"]
    for kinase in ["IKK_P"]:
        ppase="PP2A"
        for i in range(ns): 
            for j in range(ns): 
                convert=sim_vecs(vv[i],vv[j],ix)
                if convert == 1:  # add phos
                    rname = "conversion of %s to %s by %s" % (names[i],names[j],kinase) 
                    rate = basal_phosphorylation
                    print '@r=R%d "%s"' % (rct, rname)
                    print ' %s -> %s : %s' % (names[i],names[j],kinase)
                    print ' %s * %s * by_ikk_phos_factor * kkin: kkin=%s' % (names[i],kinase,rate)
                    rct=rct+1
                elif convert == -1: # remove phos 
                    rname = "conversion of %s to %s by %s" % (names[i],names[j],ppase) 
                    rate = basal_dephosphorylation 
                    print '@r=R%d "%s"' % (rct, rname) 
                    print ' %s -> %s : %s' % (names[i],names[j],ppase)
                    print ' %s * %s * kdephos: kdephos=%s' % (names[i],ppase,rate)
                    rct=rct+1


# p'ation at pe 
if do_this_modif["Pe"]:
    ix=si["Pe"]
    for kinase in ["JNK_P"]: # ["JNK_P", "MST1"]: if put in both, put pp2a in separate block as in Pa 
        ppase="PP2A"
        for i in range(ns): 
            for j in range(ns): 
                convert=sim_vecs(vv[i],vv[j],ix)
                if convert == 1:  # add phos
                    rname = "conversion of %s to %s by %s" % (names[i],names[j],kinase) 
                    rate = basal_phosphorylation
                    print '@r=R%d "%s"' % (rct, rname)
                    print ' %s -> %s : %s' % (names[i],names[j],kinase)
                    print ' %s * %s * by_jnk_phos_factor * kkin: kkin=%s' % (names[i],kinase,rate)
                    rct=rct+1 
                elif convert == -1: # remove phos 
                    rname = "conversion of %s to %s by %s" % (names[i],names[j],ppase) 
                    rate = basal_dephosphorylation 
                    print '@r=R%d "%s"' % (rct, rname) 
                    print ' %s -> %s : %s' % (names[i],names[j],ppase)
                    print ' %s * %s * kdephos: kdephos=%s' % (names[i],ppase,rate)
                    rct=rct+1

# acetylation
if do_this_modif["Ac"]:
    ix=si["Ac"]
    for acetylase in ["CBPP300"]: 
        deacetylase="SIRT1"
        for i in range(ns): 
            for j in range(ns): 
                convert=sim_vecs(vv[i],vv[j],ix)
                if convert == 1  and vv[i][si["location"]] >= 1 :  #  add Ac; only in nucleus
                    rname = "conversion of %s to %s by %s" % (names[i],names[j],acetylase) 
                    rate = basal_acetylation
                    print '@r=R%d "%s"' % (rct, rname)
                    print ' %s -> %s : %s' % (names[i],names[j],acetylase)
                    print ' %s * %s * kacet: kacet=%s' % (names[i],acetylase,rate)
                    rct=rct+1
                elif convert == -1 and vv[i][si["location"]] >= 1 : # remove Ac; only in nucleus
                    rname = "conversion of %s to %s by %s" % (names[i],names[j],deacetylase) 
                    rate = basal_deacetylation 
                    print '@r=R%d "%s"' % (rct, rname) 
                    print ' %s -> %s : %s' % (names[i],names[j],deacetylase)
                    print ' %s * %s * kdeac: kdeac=%s' % (names[i],deacetylase,rate)
                    rct=rct+1


# monoub
if do_this_modif["mUb"]:
    ix=si["mUb"]
    for enzyme in ["E3"]: 
        rev_enz="USP7"
        for i in range(ns): 
            for j in range(ns): 
                convert=sim_vecs(vv[i],vv[j],ix)
                if convert == 1:  # add ub
                    rname = "conversion of %s to %s by %s" % (names[i],names[j],enzyme) 
                    rate = basal_ubiquitination 
                    print '@r=R%d "%s"' % (rct, rname)
                    print ' %s -> %s : %s' % (names[i],names[j],enzyme)
                    print ' %s * %s * kub: kub=%s' % (names[i],enzyme,rate)
                    rct=rct+1
                elif convert == -1: # remove ub
                    rname = "conversion of %s to %s by %s" % (names[i],names[j],rev_enz) 
                    rate = basal_deubiquitination 
                    print '@r=R%d "%s"' % (rct, rname) 
                    print ' %s -> %s : %s' % (names[i],names[j],rev_enz)
                    print ' %s * %s * kdeub: kdeub=%s' % (names[i],rev_enz,rate)
                    rct=rct+1

# polyub (no reverse reaction included) 
if do_this_modif["pUb"]:
    ix=si["pUb"]
    for enzyme in ["SCF"]: 
        for i in range(ns): 
            for j in range(ns): 
                convert=sim_vecs(vv[i],vv[j],ix)
                if convert == 1:  # add multiple Ub
                    rname = "conversion of %s to %s by %s" % (names[i],names[j],enzyme) 
                    rate = basal_polyubiquitination 
                    if vec_set(vv[i],si,"Pa") : rate = rate * 3 # fitted; p54
                    if vec_set(vv[i],si,"Pd") : rate = rate * 22 # Hu fig 5f
                    if vec_set(vv[i],si,"Ac"): rate = rate * 1/30 # to fit Kitamura S5 roughly 
                    print '@r=R%d "%s"' % (rct, rname)
                    print ' %s -> %s : %s' % (names[i],names[j],enzyme)
                    print ' %s * %s * kub: kub=%s' % (names[i],enzyme,rate)
                    rct=rct+1
 
# end main foxo reactions block 

# degradation 
if True: 
    for i in range(ns): 
        if vec_set(vv[i],si,"pUb") and vv[i][si["location"]] == 0 :  # only in cytoplasm
            rname = "degradation of %s" % (names[i])
            rate = basal_ub_med_degradation
            enzyme = "Proteasome"
# Ac was here
            print '@r=R%d "%s"' % (rct, rname)
            degr_name="degr_%s" % basenm
            print ' %s -> %s : %s' % (names[i],degr_name,enzyme) 
            print ' %s * %s * kdeg: kdeg=%s ' % (names[i],enzyme,rate)
            rct=rct+1

# transcription of each gene by each Foxo subspecies: 
if True: 
    for i in range(ns): 
        if vv[i][si["location"]] == 2: # must be bound to dna 
            for j in genes: 
                mrnan="nucleus_RNA_%s" % j
                rname = "transcription of %s by %s" % (j,names[i])
                rate=gpar[j]["k_transcr"]
                if vec_set(vv[i],si,"Pb") : rate = rate * 1 # Huang fig3A??
                if vec_set(vv[i],si,"Pc") : rate = rate * 2 # Greer 07 f7Aii
                # plenty of scope for more complex int between j and i here...
                print '@r=R%d "%s"' % (rct, rname)
                print ' %s -> %s : %s' % ("null", mrnan, names[i]) 
                print ' %s * ktranscr: ktranscr=%s ' % (names[i],rate)
                rct=rct+1
                

# reactions for each gene: basal transcription, trans. to cyto, translation, degr

for j in genes: 

    gp=j 
    mrnan="nucleus_RNA_%s" % gp
    mrnac="cytoplasm_RNA_%s" % gp 
    protc="cytoplasm_%s" % gp

# 
    rname = "basal transcription of %s" % (j)
    rate=gpar[j]["k_basal_transcr"]
    print '@r=R%d "%s"' % (rct, rname)
    print ' %s -> %s' % ("null", mrnan)
    print ' k_basal_transcr: k_basal_transcr=%s' % (rate)
    rct=rct+1

    rname = "export of %s RNA" % (j)
    rate=gpar[j]["k_mrna_export"]
    print '@r=R%d "%s"' % (rct, rname)
    print ' %s -> %s' % (mrnan, mrnac)
    print ' %s * kexp: kexp=%s' % (mrnan,rate)
    rct=rct+1

    rname = "cyto degr of %s RNA" % (j)
    rate=gpar[j]["k_m_degr"]
    print '@r=R%d "%s"' % (rct, rname)
    print ' %s -> %s' % (mrnac, "null")
    print ' %s * kmdeg: kmdeg=%s' % (mrnac,rate)
    rct=rct+1

    rname = "translation of %s" % (j)
    rate=gpar[j]["k_translat"]
    print '@r=R%d "%s"' % (rct, rname)
    print ' %s -> %s : %s' % ("null", protc, mrnac)
    print ' %s * ktransl: ktransl=%s' % (mrnac,rate)
    rct=rct+1

    rname = "degradation of %s protein" % (gp)
    rate=gpar[j]["k_p_degr"]
    print '@r=R%d "%s"' % (rct, rname)
    print ' %s -> %s' % (protc, "null")
    print ' %s * kpdeg: kpdeg=%s' % (protc,rate)
    rct=rct+1


#M3 
# events 
