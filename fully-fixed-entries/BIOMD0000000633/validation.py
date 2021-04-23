import matplotlib.pyplot as plt, numpy as np
from SloppyCell.ReactionNetworks import *

# Corresponds to fed liver
net = IO.from_SBML_file('MODEL1603030000_original.xml')
normal = net.copy('normal')
fasted = net.copy('fasted')

adjustments_normal = {'vmax_fbp1':1.00, 'vmax_fbp2':0.66, 'v0_gk':0.48,
                      'vmax_glct_er':1.00, 'v0_gp':0.89, 'vmax_g6p_er':1.41,
                      'vmax_g6pt_er':1.41, 'v0_gs':1.00, 'vmax_PC':1.25,
                      'vmax_pepck':1.41, 'vmax_pepck_mito':1.41,
                      'vmax_pfk1':0.76, 'vmax_pfk2':0.66, 'vmax_pk':0.58}
for var, adj in adjustments_normal.items():
    normal.set_var_ic(var, net.get_var_ic(var)*adj)

adjustments_fasted = {'vmax_fbp1':1.00, 'vmax_fbp2':0.43, 'v0_gk':0.23,
                      'vmax_glct_er':1.00, 'v0_gp':0.80, 'vmax_g6p_er':2.00,
                      'vmax_g6pt_er':2.00, 'v0_gs':1.00, 'vmax_PC':1.56,
                      'vmax_pepck':2.00, 'vmax_pepck_mito':2.00,
                      'vmax_pfk1':0.57, 'vmax_pfk2':0.43, 'vmax_pk':0.33}
for var, adj in adjustments_fasted.items():
    fasted.set_var_ic(var, net.get_var_ic(var)*adj)

traj = Dynamics.integrate(net, [0, 24*60])
traj_normal = Dynamics.integrate(net, [0, 24*60])

monitored = ['dhap', 'fru6p', 'glc1p', 'glc6p', 'lac', 'mal', 'mal_mito', 'oa', 'pep',
             'pg2', 'pg3', 'pyr']
# Also pyr_mito, pep_mito, oa_mito, mal_mito, glc6p_er
vals, fluxes = [], []
vals_normal, fluxes_normal = [], []
vals_fasted, fluxes_fasted = [], []
glc_ext_l = np.linspace(3,12,10)
for glc_ext in glc_ext_l:
    net.set_var_ic('glc_ext', glc_ext)
    traj = Dynamics.integrate(net, [0, 24*100])
    these_vals = [traj.get_var_val_index(var, -1) for var in monitored]
    vals.append(these_vals)
    fluxes.append(traj.get_var_val_index('v_GLUT2', -1))

    normal.set_var_ic('glc_ext', glc_ext)
    traj_normal = Dynamics.integrate(normal, [0, 24*100])
    these_vals = [traj_normal.get_var_val_index(var, -1) for var in monitored]
    vals_normal.append(these_vals)
    fluxes_normal.append(traj_normal.get_var_val_index('v_GLUT2', -1))

    fasted.set_var_ic('glc_ext', glc_ext)
    traj_fasted = Dynamics.integrate(fasted, [0, 24*100])
    these_vals = [traj_fasted.get_var_val_index(var, -1) for var in monitored]
    vals_fasted.append(these_vals)
    fluxes_fasted.append(traj_fasted.get_var_val_index('v_GLUT2', -1))

fig = plt.figure(4353)
fig.clear()
ax = fig.add_subplot(1,1,1)
for these_vals in vals:
    ax.plot(these_vals, 'o')
ax.set_xticks(range(len(monitored)))
ax.set_xticklabels(monitored, rotation=90)
ax.set_ylim(0, 3.5)
ax.set_xlim(-0.5, len(monitored) + 0.5)

fig = plt.figure(4360)
fig.clear()
ax = fig.add_subplot(1,1,1)
ax.plot(glc_ext_l, fluxes, '-ok')
ax.plot(glc_ext_l, fluxes_normal, '-ok')
ax.plot(glc_ext_l, fluxes_fasted, '-ok')
ax.set_xlim(3,12)
ax.set_ylim(-100, 250)
ax.axhspan(-100, 0, color='lightblue')
ax.axhspan(0, 250, color='pink')
ax.set_xlabel('Plasma glucose [mM]')
ax.set_ylabel('Glc exchange rate [umol/g/h]')
fig.suptitle('Figure 6', fontsize='x-large')

fig.savefig('validation1.png')

plt.show()
