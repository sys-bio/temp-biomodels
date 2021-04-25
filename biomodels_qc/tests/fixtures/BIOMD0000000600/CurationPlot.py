# import libsbmlsim as lss
import numpy as np
import matplotlib.pyplot as plt
# import scipy.io


def condense_libsbmlsim(result):
    timeName = result.getTimeName()
    species = [result.getSpeciesNameAtIndex(ii)
               for ii in range(result.getNumOfSpecies())]
    params = [result.getParameterNameAtIndex(ii)
              for ii in range(result.getNumOfParameters())]
    comps = [result.getCompartmentNameAtIndex(ii)
             for ii in range(result.getNumOfCompartments())]

    keys = [timeName]+species+params+comps

    numRows = result.getNumOfRows()
    data = np.zeros((numRows, len(keys)))
    for ii in range(numRows):
        data[ii, 0] = result.getTimeValueAtIndex(ii)
    for s in species:
        jj = keys.index(s)
        for ii in range(numRows):
            data[ii, jj] = result.getSpeciesValueAtIndex(s, ii)
    for p in params:
        jj = keys.index(p)
        for ii in range(numRows):
            data[ii, jj] = result.getParameterValueAtIndex(p, ii)
    for c in comps:
        jj = keys.index(c)
        for ii in range(numRows):
            data[ii, jj] = result.getCompartmentValueAtIndex(c, ii)

    return keys, data


#
# Copasi results
#
fid = open('CurationResult.txt')
header = fid.readline()
data = np.loadtxt(fid)
fid.close()
keys = header.split()[1:]
FIG_PREFIX = 0

##
# Matlab SimBiology results
##
# temp = scipy.io.loadmat('CurationResult.mat')
# keys = ['t'] + [_[0][0].split('.')[-1] for _ in temp['names']]
# data = np.concatenate((temp['t'], temp['x']), axis=1)
# FIG_PREFIX=1

##
# libSBMLsim results
##
# result = lss.simulateSBMLFromFile('MODEL1208280000.xml', 4e4, 0.1, 1, 1,
#                                  lss.MTHD_RUNGE_KUTTA, 0)
# keys, data = condense_libsbmlsim(result)
# FIG_PREFIX=2

cytoplasm = ['CoSmad', 'I_Smad', 'I_Smad_TGFb_TGFbR_P', 'I_Smad_mRNA2',
             'Smad', 'Smad_P', 'Smad_P_CoSmad', 'Smad_P_Smad_P', 'TGFbR',
             'TGFb_TGFbR', 'TGFb_TGFbR_P']

fig_props = [('TGFbR', 2000),
             ('TGFb_TGFbR', 4),
             ('TGFb_TGFbR_P', 400),
             ('I_Smad_TGFb_TGFbR_P', 1500),
             ('Smad', 6500),
             ('Smad_P', 8000),
             ('CoSmad', 11000),
             ('Smad_P_Smad_P', 50),
             ('Smad_P_CoSmad', 200),
             ('Smad_N', 9e4),
             ('Smad_P_Smad_P_N', 8000),
             ('Smad_P_N', 8000),
             ('CoSmad_N', 15e4),
             ('I_Smad_mRNA1', 2),
             ('I_Smad_mRNA2', 100),
             ('I_Smad', 100e2)]

fig = plt.figure(1+10*FIG_PREFIX, figsize=(8, 10))
fig.clear()
for ii, (id, ymax) in enumerate(fig_props[:8]):
    ax = fig.add_subplot(4, 2, ii+1)
    ax.set_title(id, fontsize='small')
    ax.set_ylim(0, 8000)
    ax.set_yticks([0, 2000, 4000, 6000, 8000])
    ax.plot(data[:, 0], data[:, keys.index('Smad_P_CoSmad_N')], '-b')
    ax.set_xticks([0, 1e4, 2e4, 3e4, 4e4])
    ax.set_xlabel('Time (s)')
    ax2 = ax.twinx()
    # In libSBMLsim, it appears that we need to manually adjust
    # for compartment volume.
    if FIG_PREFIX == 2 and id in cytoplasm:
        ax2.plot(data[:, 0], data[:, keys.index(id)]/2.3, '-g')
    else:
        ax2.plot(data[:, 0], data[:, keys.index(id)], '-g')
    ax2.set_ylim(0, ymax)
fig.tight_layout()

fig = plt.figure(2+10*FIG_PREFIX, figsize=(8, 10))
fig.clear()
for ii, (id, ymax) in enumerate(fig_props[8:]):
    ax = fig.add_subplot(4, 2, ii+1)
    ax.set_title(id, fontsize='small')
    ax.set_ylim(0, 8000)
    ax.set_yticks([0, 2000, 4000, 6000, 8000])
    ax.plot(data[:, 0], data[:, keys.index('Smad_P_CoSmad_N')], '-b')
    ax.set_xticks([0, 1e4, 2e4, 3e4, 4e4])
    ax.set_xlabel('Time (s)')
    ax2 = ax.twinx()
    if FIG_PREFIX == 2 and id in cytoplasm:
        ax2.plot(data[:, 0], data[:, keys.index(id)]/2.3, '-g')
    else:
        ax2.plot(data[:, 0], data[:, keys.index(id)], '-g')
    ax2.set_ylim(0, ymax)
fig.tight_layout()

plt.show()
