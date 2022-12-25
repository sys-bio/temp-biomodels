% This file works with OCTAVE and is automatically generated with 
% the System Biology Format Converter (http://sbfc.sourceforge.net/)
% from an SBML file.
% To run this file with Matlab you must edit the comments providing
% the definition of the ode solver and the signature for the 
% xdot function.
%
% The conversion system has the following limitations:
%  - You may have to re order some reactions and Assignment Rules definition
%  - Delays are not taken into account
%  - You should change the lsode parameters (start, end, steps) to get better results
%

%
% Model name = Cloutier2009 - Brain Energy Metabolism
%
% is http://identifiers.org/biomodels.db/MODEL1006230041
% is http://identifiers.org/biomodels.db/BIOMD0000000554
% isDescribedBy http://identifiers.org/pubmed/19396534
% isDerivedFrom http://identifiers.org/biomodels.db/MODEL1411210000
% isDerivedFrom http://identifiers.org/pubmed/16260743
%


function main()
%Initial conditions vector
	x0=zeros(78,1);
	x0(43) = 13.36;
	x0(44) = 0.1656;
	x0(45) = 0.7326;
	x0(46) = 0.1116;
	x0(47) = 0.0698;
	x0(48) = 0.0254;
	x0(49) = 0.1711;
	x0(50) = 0.4651;
	x0(51) = 0.0445;
	x0(52) = 2.24;
	x0(53) = 4.6817;
	x0(54) = 0.1589;
	x0(55) = 2.5;
	x0(56) = 0.0;
	x0(57) = 7.4201;
	x0(58) = 4.6401;
	x0(59) = 0.3251;
	x0(60) = 2.12;
	x0(61) = 0.3339;
	x0(62) = 0.3986;
	x0(63) = 0.0;
	x0(64) = 15.533;
	x0(65) = 0.2633;
	x0(66) = 0.7275;
	x0(67) = 0.1091;
	x0(68) = 0.0418;
	x0(69) = 0.0037;
	x0(70) = 0.0388;
	x0(71) = 0.3856;
	x0(72) = 0.0319;
	x0(73) = 2.2592;
	x0(74) = 4.2529;
	x0(75) = 0.0975;
	x0(76) = 3.0;
	x0(77) = 0.0237;
	x0(78) = 0.0218;
	x0(1) = 13.36;
	x0(2) = 0.1656;
	x0(3) = 0.7326;
	x0(4) = 0.1116;
	x0(5) = 0.0698;
	x0(6) = 0.0254;
	x0(7) = 0.1711;
	x0(8) = 0.4651;
	x0(9) = 0.0445;
	x0(10) = 2.24;
	x0(11) = 4.6817;
	x0(12) = 0.1589;
	x0(13) = 2.5;
	x0(14) = 0.0;
	x0(15) = 0.1755;
	x0(16) = 0.13070953832961;
	x0(17) = 0.318300000000001;
	x0(18) = 0.00829046167039005;
	x0(19) = 7.4201;
	x0(20) = 4.6401;
	x0(21) = 0.3251;
	x0(22) = 2.12;
	x0(23) = 0.3339;
	x0(24) = 0.3986;
	x0(25) = 0.0;
	x0(26) = 15.533;
	x0(27) = 0.2633;
	x0(28) = 0.7275;
	x0(29) = 0.1091;
	x0(30) = 0.0418;
	x0(31) = 0.0037;
	x0(32) = 0.0388;
	x0(33) = 0.3856;
	x0(34) = 0.0319;
	x0(35) = 2.2592;
	x0(36) = 4.2529;
	x0(37) = 0.0975;
	x0(38) = 3.0;
	x0(39) = 0.113591983539553;
	x0(40) = 0.7471;
	x0(41) = 0.1881;
	x0(42) = 0.006208016460449;


% Depending on whether you are using Octave or Matlab,
% you should comment / uncomment one of the following blocks.
% This should also be done for the definition of the function f below.
% Start Matlab code
%	tspan=[0:0.01:100];
%	opts = odeset('AbsTol',1e-3);
%	[t,x]=ode23tb(@f,tspan,x0,opts);
% End Matlab code

% Start Octave code
	t=linspace(0,100,100);
	x=lsode('f',x0,t);
% End Octave code


	plot(t,x);
end



% Depending on whether you are using Octave or Matlab,
% you should comment / uncomment one of the following blocks.
% This should also be done for the definition of the function f below.
% Start Matlab code
%function xdot=f(t,x)
% End Matlab code

% Start Octave code
function xdot=f(x,t)
% End Octave code

% Compartment: id = Astrocytes, name = Astrocytes, constant
	compartment_Astrocytes=1.0;
% Compartment: id = Capillaries, name = Capillaries, constant
	compartment_Capillaries=1.0;
% Compartment: id = Extracellular_space, name = Extracellular space, constant
	compartment_Extracellular_space=1.0;
% Compartment: id = Neurons, name = Neurons, constant
	compartment_Neurons=1.0;
% Parameter:   id =  u_n, name = u_n
% Parameter:   id =  u_g, name = u_g
% Parameter:   id =  dAMP_dATPn, name = dAMP_dATPn
% Parameter:   id =  dAMP_dATPg, name = dAMP_dATPg
% Parameter:   id =  Vv, name = Vv
% Parameter:   id =  dHb, name = dHb
% Parameter:   id =  Vn_leak_Na, name = Vn_leak_Na
% Parameter:   id =  gn_NA, name = gn_NA
	global_par_gn_NA=0.0039;
% Parameter:   id =  Vn_pump, name = Vn_pump
% Parameter:   id =  Vn_stim, name = Vn_stim
% Parameter:   id =  V_en_GLC, name = V_en_GLC
% Parameter:   id =  Km_en_GLC, name = Km_en_GLC
	global_par_Km_en_GLC=5.32;
% Parameter:   id =  Vm_en_GLC, name = Vm_en_GLC
	global_par_Vm_en_GLC=0.50417;
% Parameter:   id =  Vn_hk, name = Vn_hk
% Parameter:   id =  Vmax_n_hk, name = Vmax_n_hk
	global_par_Vmax_n_hk=0.0513;
% Parameter:   id =  Vn_pgi, name = Vn_pgi
% Parameter:   id =  Vmaxf_n_pgi, name = Vmaxf_n_pgi
	global_par_Vmaxf_n_pgi=0.5;
% Parameter:   id =  Vmaxr_n_pgi, name = Vmaxr_n_pgi
	global_par_Vmaxr_n_pgi=0.45;
% Parameter:   id =  Vn_pfk, name = Vn_pfk
% Parameter:   id =  kn_pfk, name = kn_pfk
	global_par_kn_pfk=0.55783;
% Parameter:   id =  Vn_pgk, name = Vn_pgk
% Parameter:   id =  kn_pgk, name = kn_pgk
	global_par_kn_pgk=0.4287;
% Parameter:   id =  Vn_pk, name = Vn_pk
% Parameter:   id =  kn_pk, name = kn_pk
	global_par_kn_pk=28.6;
% Parameter:   id =  Vn_ldh, name = Vn_ldh
% Parameter:   id =  kfn_ldh, name = kfn_ldh
	global_par_kfn_ldh=5.3;
% Parameter:   id =  krn_ldh, name = krn_ldh
	global_par_krn_ldh=0.1046;
% Parameter:   id =  Vn_mito, name = Vn_mito
% Parameter:   id =  Vmax_n_mito, name = Vmax_n_mito
	global_par_Vmax_n_mito=0.05557;
% Parameter:   id =  Vne_LAC, name = Vne_LAC
% Parameter:   id =  Vmax_ne_LAC, name = Vmax_ne_LAC
	global_par_Vmax_ne_LAC=0.1978;
% Parameter:   id =  Km_ne_LAC, name = Km_ne_LAC
	global_par_Km_ne_LAC=0.09314;
% Parameter:   id =  Vn_ATPase, name = Vn_ATPase
% Parameter:   id =  Vmax_n_ATPase, name = Vmax_n_ATPase
	global_par_Vmax_n_ATPase=0.04889;
% Parameter:   id =  Vn_ck, name = Vn_ck
% Parameter:   id =  krn_ck, name = krn_ck
	global_par_krn_ck=0.015;
% Parameter:   id =  kfn_ck, name = kfn_ck
	global_par_kfn_ck=0.0524681;
% Parameter:   id =  Vcn_O2, name = Vcn_O2
% Parameter:   id =  nh_O2_Vcn_O2, name = nh_O2
	global_par_nh_O2_Vcn_O2=2.7;
% Parameter:   id =  PScapn, name = PScapn
	global_par_PScapn=0.2202;
% Parameter:   id =  Vg_leak_Na, name = Vg_leak_Na
% Parameter:   id =  gg_NA, name = gg_NA
	global_par_gg_NA=0.00325;
% Parameter:   id =  Vg_pump, name = Vg_pump
% Parameter:   id =  Veg_GLC, name = Veg_GLC
% Parameter:   id =  Km_eg_GLC, name = Km_eg_GLC
	global_par_Km_eg_GLC=3.53;
% Parameter:   id =  Vm_eg_GLC, name = Vm_eg_GLC
	global_par_Vm_eg_GLC=0.038089;
% Parameter:   id =  Vcg_GLC, name = Vcg_GLC
% Parameter:   id =  Km_cg_GLC, name = Km_cg_GLC
	global_par_Km_cg_GLC=9.92;
% Parameter:   id =  Vm_cg_GLC, name = Vm_cg_GLC
	global_par_Vm_cg_GLC=0.0098394;
% Parameter:   id =  Vg_hk, name = Vg_hk
% Parameter:   id =  Vmax_g_hk, name = Vmax_g_hk
	global_par_Vmax_g_hk=0.050461;
% Parameter:   id =  Vg_pgi, name = Vg_pgi
% Parameter:   id =  Vmaxf_g_pgi, name = Vmaxf_g_pgi
	global_par_Vmaxf_g_pgi=0.5;
% Parameter:   id =  Vmaxr_g_pgi, name = Vmaxr_g_pgi
	global_par_Vmaxr_g_pgi=0.45;
% Parameter:   id =  Vg_pfk, name = Vg_pfk
% Parameter:   id =  kg_pfk, name = kg_pfk
	global_par_kg_pfk=0.403;
% Parameter:   id =  Vg_pgk, name = Vg_pgk
% Parameter:   id =  kg_pgk, name = kg_pgk
	global_par_kg_pgk=0.2514;
% Parameter:   id =  Vg_pk, name = Vg_pk
% Parameter:   id =  kg_pk, name = kg_pk
	global_par_kg_pk=2.73;
% Parameter:   id =  Vg_ldh, name = Vg_ldh
% Parameter:   id =  kfg_ldh, name = kfg_ldh
	global_par_kfg_ldh=6.2613;
% Parameter:   id =  krg_ldh, name = krg_ldh
	global_par_krg_ldh=0.54682;
% Parameter:   id =  Vg_mito, name = Vg_mito
% Parameter:   id =  Vmax_g_mito, name = Vmax_g_mito
	global_par_Vmax_g_mito=0.008454;
% Parameter:   id =  Vge_LAC, name = Vge_LAC
% Parameter:   id =  Vmax_ge_LAC, name = Vmax_ge_LAC
	global_par_Vmax_ge_LAC=0.086124;
% Parameter:   id =  Km_ge_LAC, name = Km_ge_LAC
	global_par_Km_ge_LAC=0.22163;
% Parameter:   id =  Vgc_LAC, name = Vgc_LAC
% Parameter:   id =  Vmax_gc_LAC, name = Vmax_gc_LAC
	global_par_Vmax_gc_LAC=2.1856E-4;
% Parameter:   id =  Km_gc_LAC, name = Km_gc_LAC
	global_par_Km_gc_LAC=0.12862;
% Parameter:   id =  Vg_ATPase, name = Vg_ATPase
% Parameter:   id =  Vmax_g_ATPase, name = Vmax_g_ATPase
	global_par_Vmax_g_ATPase=0.035657;
% Parameter:   id =  Vg_ck, name = Vg_ck
% Parameter:   id =  krg_ck, name = krg_ck
	global_par_krg_ck=0.02073;
% Parameter:   id =  kfg_ck, name = kfg_ck
	global_par_kfg_ck=0.0243;
% Parameter:   id =  Vcg_O2, name = Vcg_O2
% Parameter:   id =  PScapg, name = PScapg
	global_par_PScapg=0.2457;
% Parameter:   id =  Vc_O2, name = Vc_O2
% Parameter:   id =  Vc_GLC, name = Vc_GLC
% Parameter:   id =  Vce_GLC, name = Vce_GLC
% Parameter:   id =  Km_ce_GLC, name = Km_ce_GLC
	global_par_Km_ce_GLC=8.4568;
% Parameter:   id =  Vm_ce_GLC, name = Vm_ce_GLC
	global_par_Vm_ce_GLC=0.0489;
% Parameter:   id =  Vc_LAC, name = Vc_LAC
% Parameter:   id =  Vec_LAC, name = Vec_LAC
% Parameter:   id =  Km_ec_LAC, name = Km_ec_LAC
	global_par_Km_ec_LAC=0.764818;
% Parameter:   id =  Vm_ec_LAC, name = Vm_ec_LAC
	global_par_Vm_ec_LAC=0.0325;
% Parameter:   id =  Vnc_CO2, name = Vnc_CO2
% Parameter:   id =  Vgc_CO2, name = Vgc_CO2
% Parameter:   id =  Vn_stim_GLU, name = Vn_stim_GLU
% Parameter:   id =  Vg_gs, name = Vg_gs
% Parameter:   id =  Vmax_g_gs, name = Vmax_g_gs
	global_par_Vmax_g_gs=0.3;
% Parameter:   id =  Veg_GLU, name = Veg_GLU
% Parameter:   id =  Vmax_eg_GLU, name = Vmax_eg_GLU
	global_par_Vmax_eg_GLU=0.0208;
% Parameter:   id =  Vc_CO2, name = Vc_CO2
% Parameter:   id =  Vg_glys, name = Vg_glys
% Parameter:   id =  Vmax_glys, name = Vmax_glys
	global_par_Vmax_glys=1.528E-4;
% Parameter:   id =  Km_G6P_glys, name = Km_G6P_glys
	global_par_Km_G6P_glys=0.5;
% Parameter:   id =  Vg_glyp, name = Vg_glyp
% Parameter:   id =  Vmax_glyp, name = Vmax_glyp
	global_par_Vmax_glyp=4.922E-5;
% Parameter:   id =  Km_GLY, name = Km_GLY
	global_par_Km_GLY=1.0;
% Parameter:   id =  deltaVt_GLY, name = deltaVt_GLY
% Parameter:   id =  Fin_t, name = Fin_t
% Parameter:   id =  CBF0_Fin_t, name = CBF0
	global_par_CBF0_Fin_t=0.012;
% Parameter:   id =  Fout_t, name = Fout_t
% Parameter:   id =  BOLD, name = BOLD
% Parameter:   id =  v_stim, name = v_stim
% Parameter:   id =  unitpulseSB, name = unitpulseSB
% Parameter:   id =  unitstepSB, name = unitstepSB
% Parameter:   id =  Km_PYR, name = Km_PYR
	global_par_Km_PYR=0.0632;
% Parameter:   id =  Km_ATP, name = Km_ATP
	global_par_Km_ATP=0.01532;
% Parameter:   id =  Ki_ATP, name = Ki_ATP
	global_par_Ki_ATP=0.7595;
% Parameter:   id =  Km_ADP, name = Km_ADP
	global_par_Km_ADP=0.00107;
% Parameter:   id =  Km_O2, name = Km_O2
	global_par_Km_O2=0.0029658;
% Parameter:   id =  Km_GLC, name = Km_GLC
	global_par_Km_GLC=0.105;
% Parameter:   id =  Km_GLU, name = Km_GLU
	global_par_Km_GLU=0.05;
% Parameter:   id =  Km_G6P, name = Km_G6P
	global_par_Km_G6P=0.5;
% Parameter:   id =  Km_F6P_pgi, name = Km_F6P_pgi
	global_par_Km_F6P_pgi=0.06;
% Parameter:   id =  Km_F6P_pfk, name = Km_F6P_pfk
	global_par_Km_F6P_pfk=0.18;
% Parameter:   id =  Km_pump, name = Km_pump
	global_par_Km_pump=0.4243;
% Parameter:   id =  nh_O2_model_parameters, name = nh_O2_2
	global_par_nh_O2_model_parameters=2.7;
% Parameter:   id =  Ko2, name = Ko2
	global_par_Ko2=0.089733;
% Parameter:   id =  kpump, name = kpump
	global_par_kpump=3.17E-7;
% Parameter:   id =  ATPtot, name = ATPtot
	global_par_ATPtot=2.379;
% Parameter:   id =  nH, name = nH
	global_par_nH=4.0;
% Parameter:   id =  nOP, name = nOP
	global_par_nOP=15.0;
% Parameter:   id =  NAero, name = NAero
	global_par_NAero=3.0;
% Parameter:   id =  Rng, name = Rng
	global_par_Rng=1.8;
% Parameter:   id =  Reg, name = Reg
	global_par_Reg=0.8;
% Parameter:   id =  Ren, name = Ren
	global_par_Ren=0.444444444444444;
% Parameter:   id =  Rcn, name = Rcn
	global_par_Rcn=0.01222;
% Parameter:   id =  Rcg, name = Rcg
	global_par_Rcg=0.022;
% Parameter:   id =  Rce, name = Rce
	global_par_Rce=0.0275;
% Parameter:   id =  Sm_n, name = Sm_n
	global_par_Sm_n=40500.0;
% Parameter:   id =  Vm, name = Vm
	global_par_Vm=-70.0;
% Parameter:   id =  RT, name = RT
	global_par_RT=2577340.0;
% Parameter:   id =  F, name = F
	global_par_F=96500.0;
% Parameter:   id =  Vn, name = Vn
	global_par_Vn=0.45;
% Parameter:   id =  G6P_inh_hk, name = G6P_inh_hk
	global_par_G6P_inh_hk=0.6;
% Parameter:   id =  aG6P_inh_hk, name = aG6P_inh_hk
	global_par_aG6P_inh_hk=20.0;
% Parameter:   id =  rATP_mito, name = rATP_mito
	global_par_rATP_mito=20.0;
% Parameter:   id =  aATP_mito, name = aATP_mito
	global_par_aATP_mito=5.0;
% Parameter:   id =  HbOP, name = HbOP
	global_par_HbOP=8.6;
% Parameter:   id =  Sm_g, name = Sm_g
	global_par_Sm_g=10500.0;
% Parameter:   id =  Vg, name = Vg
	global_par_Vg=0.25;
% Parameter:   id =  KO1, name = KO1
	global_par_KO1=1.0;
% Parameter:   id =  Vc, name = Vc
	global_par_Vc=0.0055;
% Parameter:   id =  R_GLU_NA, name = R_GLU_NA
	global_par_R_GLU_NA=0.075;
% Parameter:   id =  KO2, name = KO2
	global_par_KO2=1.0;
% Parameter:   id =  KO3, name = KO3
	global_par_KO3=1.0;
% Parameter:   id =  GLY_inh, name = GLY_inh
	global_par_GLY_inh=4.2;
% Parameter:   id =  aGLY_inh, name = aGLY_inh
	global_par_aGLY_inh=20.0;
% Parameter:   id =  CBF0_model_parameters, name = CBF0_2
	global_par_CBF0_model_parameters=0.012;
% Parameter:   id =  Vv0, name = Vv0
	global_par_Vv0=0.0236;
% Parameter:   id =  tv, name = tv
	global_par_tv=35.0;
% Parameter:   id =  qak, name = qak
	global_par_qak=0.92;
% Parameter:   id =  k1, name = k1
	global_par_k1=2.22;
% Parameter:   id =  k2, name = k2
	global_par_k2=0.46;
% Parameter:   id =  k3, name = k3
	global_par_k3=0.43;
% Parameter:   id =  dHb0, name = dHb0
	global_par_dHb0=0.064;
% Parameter:   id =  stim, name = stim
	global_par_stim=1.0;
% Parameter:   id =  to, name = to
	global_par_to=200.0;
% Parameter:   id =  tend, name = tend
	global_par_tend=300.0;
% Parameter:   id =  v1_n, name = v1_n
	global_par_v1_n=0.041;
% Parameter:   id =  v2_n, name = v2_n
	global_par_v2_n=2.55;
% Parameter:   id =  t_n_stim, name = t_n_stim
	global_par_t_n_stim=2.0;
% Parameter:   id =  sr, name = sr
	global_par_sr=4.59186;
% Parameter:   id =  t1, name = t1
	global_par_t1=2.0;
% Parameter:   id =  delta_GLY, name = delta_GLY
	global_par_delta_GLY=62.0;
% Parameter:   id =  deltaf, name = deltaf
	global_par_deltaf=0.42;
% Parameter:   id =  tend_GLY, name = tend_GLY
	global_par_tend_GLY=440.0;
% Parameter:   id =  to_GLY, name = to_GLY
	global_par_to_GLY=83.0;
% Parameter:   id =  sr_GLY, name = sr_GLY
	global_par_sr_GLY=4.0;
% Parameter:   id =  unitstepSB2, name = unitstepSB2
% assignmentRule: variable = V_en_GLC
	global_par_V_en_GLC=global_par_Vm_en_GLC*(x(23)/(x(23)+global_par_Km_en_GLC)-x(27)/(x(27)+global_par_Km_en_GLC));
% assignmentRule: variable = Vn_hk
	global_par_Vn_hk=global_par_Vmax_n_hk*x(35)*x(27)/(x(27)+global_par_Km_GLC)*(1-1/(1+exp((-global_par_aG6P_inh_hk)*1*(x(28)-global_par_G6P_inh_hk))));
% assignmentRule: variable = Vn_pgi
	global_par_Vn_pgi=global_par_Vmaxf_n_pgi*x(28)/(x(28)+global_par_Km_G6P)-global_par_Vmaxr_n_pgi*x(29)/(x(29)+global_par_Km_F6P_pgi);
% assignmentRule: variable = NADg
	x(15)=const_species_NADH_g_tot-x(9);
% assignmentRule: variable = ADPg
	x(16)=x(10)/2*(-global_par_qak+(global_par_qak^2+4*global_par_qak*(global_par_ATPtot/x(10)-1))^(1/2));
% assignmentRule: variable = CRg
	x(17)=const_species_PCrg_tot-x(11);
% assignmentRule: variable = AMPg
	x(18)=global_par_ATPtot-(x(10)+x(16));
% assignmentRule: variable = Vg_ck
	global_par_Vg_ck=global_par_kfg_ck*x(11)*x(16)-global_par_krg_ck*x(17)*x(10);
% assignmentRule: variable = ADPn
	x(39)=x(35)/2*(-global_par_qak+(global_par_qak^2+4*global_par_qak*(global_par_ATPtot/x(35)-1))^(1/2));
% assignmentRule: variable = CRn
	x(40)=const_species_PCrn_tot-x(36);
% assignmentRule: variable = NADn
	x(41)=const_species_NADH_n_tot-x(34);
% assignmentRule: variable = AMPn
	x(42)=global_par_ATPtot-(x(35)+x(39));
% assignmentRule: variable = u_n
	global_par_u_n=global_par_qak^2+4*global_par_qak*(global_par_ATPtot/x(35)-1);
% assignmentRule: variable = u_g
	global_par_u_g=global_par_qak^2+4*global_par_qak*(global_par_ATPtot/x(10)-1);
% assignmentRule: variable = dAMP_dATPn
	global_par_dAMP_dATPn=global_par_qak/2+global_par_qak*global_par_ATPtot/(x(35)*global_par_u_n^(1/2))-(1+0.5*global_par_u_n^(1/2));
% assignmentRule: variable = dAMP_dATPg
	global_par_dAMP_dATPg=global_par_qak/2+global_par_qak*global_par_ATPtot/(x(10)*global_par_u_g^(1/2))-(1+0.5*global_par_u_g^(1/2));
% assignmentRule: variable = Vn_leak_Na
	global_par_Vn_leak_Na=global_par_Sm_n/global_par_Vn*global_par_gn_NA/global_par_F*(global_par_RT/global_par_F*log(const_species_NAe/x(26))-global_par_Vm);
% assignmentRule: variable = Vn_pump
	global_par_Vn_pump=global_par_Sm_n/global_par_Vn*global_par_kpump*x(35)*x(26)*(1+x(35)/global_par_Km_pump)^(-1);
% assignmentRule: variable = Vn_pfk
	global_par_Vn_pfk=global_par_kn_pfk*x(35)*x(29)/(x(29)+global_par_Km_F6P_pfk)*(1+(x(35)/global_par_Ki_ATP)^global_par_nH)^(-1);
% assignmentRule: variable = Vn_pgk
	global_par_Vn_pgk=global_par_kn_pgk*x(30)*x(39)*x(41)/x(34);
% assignmentRule: variable = Vn_pk
	global_par_Vn_pk=global_par_kn_pk*x(31)*x(39);
% assignmentRule: variable = Vn_ldh
	global_par_Vn_ldh=global_par_kfn_ldh*x(32)*x(34)-global_par_krn_ldh*x(33)*x(41);
% assignmentRule: variable = Vn_mito
	global_par_Vn_mito=global_par_Vmax_n_mito*x(37)/(x(37)+global_par_Km_O2)*x(39)/(x(39)+global_par_Km_ADP)*x(32)/(x(32)+global_par_Km_PYR)*(1-1/(1+exp((-global_par_aATP_mito)*1*(x(35)/x(39)-1*global_par_rATP_mito))));
% assignmentRule: variable = Vne_LAC
	global_par_Vne_LAC=global_par_Vmax_ne_LAC*(x(33)/(x(33)+global_par_Km_ne_LAC)-x(24)/(x(24)+global_par_Km_ne_LAC));
% assignmentRule: variable = Vn_ATPase
	global_par_Vn_ATPase=global_par_Vmax_n_ATPase*x(35)/(x(35)+0.001);
% assignmentRule: variable = Vge_LAC
	global_par_Vge_LAC=global_par_Vmax_ge_LAC*(x(8)/(x(8)+global_par_Km_ge_LAC)-x(24)/(x(24)+global_par_Km_ge_LAC));
% assignmentRule: variable = Vn_ck
	global_par_Vn_ck=global_par_kfn_ck*x(36)*x(39)-global_par_krn_ck*x(40)*x(35);
% assignmentRule: variable = Vcn_O2
	global_par_Vcn_O2=global_par_PScapn/global_par_Vn*(global_par_Ko2*(global_par_HbOP/x(19)-1)^((-1)/global_par_nh_O2_Vcn_O2)-x(37));
% assignmentRule: variable = Vg_leak_Na
	global_par_Vg_leak_Na=global_par_Sm_g/global_par_Vg*global_par_gg_NA/global_par_F*(global_par_RT/global_par_F*log(const_species_NAe/x(1))-global_par_Vm);
% assignmentRule: variable = Vg_pump
	global_par_Vg_pump=global_par_Sm_g/global_par_Vg*global_par_kpump*x(10)*x(1)*(1+x(10)/global_par_Km_pump)^(-1);
% assignmentRule: variable = Veg_GLC
	global_par_Veg_GLC=global_par_KO1*global_par_Vm_eg_GLC*(x(23)/(x(23)+global_par_Km_eg_GLC)-x(2)/(x(2)+global_par_Km_eg_GLC));
% assignmentRule: variable = Vcg_GLC
	global_par_Vcg_GLC=global_par_Vm_cg_GLC*(x(20)/(x(20)+global_par_Km_cg_GLC)-x(2)/(x(2)+global_par_Km_cg_GLC));
% assignmentRule: variable = Vg_hk
	global_par_Vg_hk=global_par_Vmax_g_hk*x(10)*x(2)/(x(2)+global_par_Km_GLC)*(1-1/(1+exp((-global_par_aG6P_inh_hk)*1*(x(3)-global_par_G6P_inh_hk))));
% assignmentRule: variable = Vg_pgi
	global_par_Vg_pgi=global_par_Vmaxf_g_pgi*x(3)/(x(3)+global_par_Km_G6P)-global_par_Vmaxr_g_pgi*x(4)/(x(4)+global_par_Km_F6P_pgi);
% assignmentRule: variable = Vg_pfk
	global_par_Vg_pfk=global_par_kg_pfk*x(10)*x(4)/(x(4)+global_par_Km_F6P_pfk)*(1+(x(10)/global_par_Ki_ATP)^global_par_nH)^(-1);
% assignmentRule: variable = Vg_pgk
	global_par_Vg_pgk=global_par_kg_pgk*x(5)*x(16)*x(15)/x(9);
% assignmentRule: variable = Vg_pk
	global_par_Vg_pk=global_par_kg_pk*x(6)*x(16);
% assignmentRule: variable = Vg_ldh
	global_par_Vg_ldh=global_par_kfg_ldh*x(7)*x(9)-global_par_krg_ldh*x(8)*x(15);
% assignmentRule: variable = Vg_mito
	global_par_Vg_mito=global_par_Vmax_g_mito*x(12)/(x(12)+global_par_Km_O2)*x(16)/(x(16)+global_par_Km_ADP)*x(7)/(x(7)+global_par_Km_PYR)*(1-1/(1+exp(1*(-global_par_aATP_mito)*(x(10)/x(16)-1*global_par_rATP_mito))));
% assignmentRule: variable = Vgc_LAC
	global_par_Vgc_LAC=global_par_Vmax_gc_LAC*(x(8)/(x(8)+global_par_Km_gc_LAC)-x(21)/(x(21)+global_par_Km_gc_LAC));
% assignmentRule: variable = Vg_ATPase
	global_par_Vg_ATPase=global_par_Vmax_g_ATPase*x(10)/(x(10)+0.001);
% assignmentRule: variable = Vcg_O2
	global_par_Vcg_O2=global_par_PScapg/global_par_Vg*(global_par_Ko2*(global_par_HbOP/x(19)-1)^((-1)/global_par_nh_O2_model_parameters)-x(12));
% assignmentRule: variable = Vce_GLC
	global_par_Vce_GLC=global_par_Vm_ce_GLC*(x(20)/(x(20)+global_par_Km_ce_GLC)-x(23)/(x(23)+global_par_Km_ce_GLC));
% assignmentRule: variable = Vec_LAC
	global_par_Vec_LAC=global_par_Vm_ec_LAC*(x(24)/(x(24)+global_par_Km_ec_LAC)-x(21)/(x(21)+global_par_Km_ec_LAC));
% assignmentRule: variable = Vnc_CO2
	global_par_Vnc_CO2=3*global_par_Vn_mito;
% assignmentRule: variable = Vgc_CO2
	global_par_Vgc_CO2=3*global_par_Vg_mito;
% assignmentRule: variable = Vg_gs
	global_par_Vg_gs=global_par_Vmax_g_gs*x(14)/(x(14)+global_par_Km_GLU)*x(10)/(x(10)+global_par_Km_ATP);
% assignmentRule: variable = Veg_GLU
	global_par_Veg_GLU=global_par_Vmax_eg_GLU*x(25)/(x(25)+global_par_Km_GLU);
% assignmentRule: variable = Vg_glys
	global_par_Vg_glys=global_par_Vmax_glys*x(3)/(x(3)+global_par_Km_G6P_glys)*(1-1/(1+exp((-global_par_aGLY_inh)*1*(x(13)-global_par_GLY_inh))));
% assignmentRule: variable = Fin_t
	global_par_Fin_t=global_par_CBF0_Fin_t+(global_par_stim*global_par_CBF0_Fin_t*global_par_deltaf*1/(1+exp(1*(-global_par_sr)*(time-(global_par_to+global_par_t1-3))))-global_par_stim*global_par_CBF0_Fin_t*global_par_deltaf*1/(1+exp(1*(-global_par_sr)*(time-(global_par_to+global_par_tend+global_par_t1+3)))));
% assignmentRule: variable = Vc_O2
	global_par_Vc_O2=2*global_par_Fin_t/global_par_Vc*(const_species_O2a-x(19));
% assignmentRule: variable = Vc_GLC
	global_par_Vc_GLC=2*global_par_Fin_t/global_par_Vc*(const_species_GLCa-x(20));
% assignmentRule: variable = Vc_LAC
	global_par_Vc_LAC=2*global_par_Fin_t/global_par_Vc*(const_species_LACa-x(21));
% assignmentRule: variable = Vc_CO2
	global_par_Vc_CO2=2*global_par_Fin_t/global_par_Vc*(x(22)-const_species_CO2a);
% assignmentRule: variable = Fout_t
	global_par_Fout_t=global_par_CBF0_model_parameters*((global_par_Vv/global_par_Vv0)^2+global_par_tv*(global_par_Vv/global_par_Vv0)^(-0.5)*global_par_Fin_t/global_par_Vv0)/(1+global_par_CBF0_model_parameters*global_par_tv*(global_par_Vv/global_par_Vv0)^(-0.5)*1/global_par_Vv0);
% assignmentRule: variable = BOLD
	global_par_BOLD=global_par_Vv0*((global_par_k1+global_par_k2)*(1-global_par_dHb/global_par_dHb0)-(global_par_k2+global_par_k3)*(1-global_par_Vv/global_par_Vv0));
% assignmentRule: variable = unitpulseSB
	global_par_unitpulseSB=piecewise(1, (time >= global_par_to) && (time <= (global_par_to+global_par_tend)), 0);
% assignmentRule: variable = v_stim
	global_par_v_stim=global_par_stim*(global_par_v1_n+global_par_v2_n*(time-global_par_to)/global_par_t_n_stim*exp(-(time-global_par_to)*global_par_unitpulseSB/global_par_t_n_stim))*global_par_unitpulseSB;
% assignmentRule: variable = Vn_stim
	global_par_Vn_stim=global_par_v_stim;
% assignmentRule: variable = Vn_stim_GLU
	global_par_Vn_stim_GLU=global_par_Vn_stim*global_par_R_GLU_NA*global_par_KO2*x(38)/(x(38)+global_par_Km_GLU);
% assignmentRule: variable = unitstepSB
	global_par_unitstepSB=piecewise(1, (time-(global_par_tend+global_par_to)) >= 0, 0);
% assignmentRule: variable = unitstepSB2
	global_par_unitstepSB2=piecewise(1, (time-(global_par_tend_GLY+global_par_to+global_par_to_GLY)) >= 0, 0);
% assignmentRule: variable = deltaVt_GLY
	global_par_deltaVt_GLY=1+global_par_stim*global_par_delta_GLY*global_par_KO3*1/(1+exp(1*(-global_par_sr_GLY)*(time-(global_par_to+global_par_to_GLY))))*(1-global_par_unitstepSB2);
% assignmentRule: variable = Vg_glyp
	global_par_Vg_glyp=global_par_Vmax_glyp*x(13)/(x(13)+global_par_Km_GLY)*global_par_deltaVt_GLY;
% rateRule: variable = NAg
x(1) = x(43);
% rateRule: variable = GLCg
x(2) = x(44);
% rateRule: variable = G6Pg
x(3) = x(45);
% rateRule: variable = F6Pg
x(4) = x(46);
% rateRule: variable = GAPg
x(5) = x(47);
% rateRule: variable = PEPg
x(6) = x(48);
% rateRule: variable = PYRg
x(7) = x(49);
% rateRule: variable = LACg
x(8) = x(50);
% rateRule: variable = NADHg
x(9) = x(51);
% rateRule: variable = ATPg
x(10) = x(52);
% rateRule: variable = PCrg
x(11) = x(53);
% rateRule: variable = O2g
x(12) = x(54);
% rateRule: variable = GLYg
x(13) = x(55);
% rateRule: variable = GLUg
x(14) = x(56);
% rateRule: variable = O2c
x(19) = x(57);
% rateRule: variable = GLCc
x(20) = x(58);
% rateRule: variable = LACc
x(21) = x(59);
% rateRule: variable = CO2c
x(22) = x(60);
% rateRule: variable = GLCe
x(23) = x(61);
% rateRule: variable = LACe
x(24) = x(62);
% rateRule: variable = GLUe
x(25) = x(63);
% rateRule: variable = NAn
x(26) = x(64);
% rateRule: variable = GLCn
x(27) = x(65);
% rateRule: variable = G6Pn
x(28) = x(66);
% rateRule: variable = F6Pn
x(29) = x(67);
% rateRule: variable = GAPn
x(30) = x(68);
% rateRule: variable = PEPn
x(31) = x(69);
% rateRule: variable = PYRn
x(32) = x(70);
% rateRule: variable = LACn
x(33) = x(71);
% rateRule: variable = NADHn
x(34) = x(72);
% rateRule: variable = ATPn
x(35) = x(73);
% rateRule: variable = PCrn
x(36) = x(74);
% rateRule: variable = O2n
x(37) = x(75);
% rateRule: variable = GLUn
x(38) = x(76);
% rateRule: variable = Vv
global_par_Vv = x(77);
% rateRule: variable = dHb
global_par_dHb = x(78);

% Species:   id = NADH_g_tot, name = NADH_g_tot, constant	const_species_NADH_g_tot=0.22;

% Species:   id = PCrg_tot, name = PCrg_tot, constant	const_species_PCrg_tot=5.0;

% Species:   id = NAe, name = NAe, constant	const_species_NAe=150.0;

% Species:   id = O2a, name = O2a, constant	const_species_O2a=8.34;

% Species:   id = CO2a, name = CO2a, constant	const_species_CO2a=1.2;

% Species:   id = GLCa, name = GLCa, constant	const_species_GLCa=4.8;

% Species:   id = LACa, name = LACa, constant	const_species_LACa=0.313;

% Species:   id = NADH_n_tot, name = NADH_n_tot, constant	const_species_NADH_n_tot=0.22;

% Species:   id = PCrn_tot, name = PCrn_tot, constant	const_species_PCrn_tot=5.0;

	xdot=zeros(78,1);
	% rateRule: variable = NAg
	xdot(43) = global_par_Vg_leak_Na+3*global_par_Veg_GLU-3*global_par_Vg_pump;
	% rateRule: variable = GLCg
	xdot(44) = global_par_Vcg_GLC+global_par_Veg_GLC-global_par_Vg_hk;
	% rateRule: variable = G6Pg
	xdot(45) = global_par_Vg_hk+global_par_Vg_glyp-(global_par_Vg_pgi+global_par_Vg_glys);
	% rateRule: variable = F6Pg
	xdot(46) = global_par_Vg_pgi-global_par_Vg_pfk;
	% rateRule: variable = GAPg
	xdot(47) = 2*global_par_Vg_pfk-global_par_Vg_pgk;
	% rateRule: variable = PEPg
	xdot(48) = global_par_Vg_pgk-global_par_Vg_pk;
	% rateRule: variable = PYRg
	xdot(49) = global_par_Vg_pk-(global_par_Vg_ldh+global_par_Vg_mito);
	% rateRule: variable = LACg
	xdot(50) = global_par_Vg_ldh-(global_par_Vge_LAC+global_par_Vgc_LAC);
	% rateRule: variable = NADHg
	xdot(51) = global_par_Vg_pgk-(global_par_Vg_ldh+global_par_Vg_mito);
	% rateRule: variable = ATPg
	xdot(52) = (global_par_Vg_pgk+global_par_Vg_pk+global_par_nOP*global_par_Vg_mito+global_par_Vg_ck-(global_par_Vg_hk+global_par_Vg_pfk+global_par_Vg_ATPase+global_par_Vg_pump+global_par_Vg_gs))*(1-global_par_dAMP_dATPg)^(-1);
	% rateRule: variable = PCrg
	xdot(53) = -global_par_Vg_ck;
	% rateRule: variable = O2g
	xdot(54) = global_par_Vcg_O2-global_par_NAero*global_par_Vg_mito;
	% rateRule: variable = GLYg
	xdot(55) = global_par_Vg_glys-global_par_Vg_glyp;
	% rateRule: variable = GLUg
	xdot(56) = global_par_Veg_GLU-global_par_Vg_gs;
	% rateRule: variable = O2c
	xdot(57) = global_par_Vc_O2-(global_par_Vcn_O2*1/global_par_Rcn+global_par_Vcg_O2*1/global_par_Rcg);
	% rateRule: variable = GLCc
	xdot(58) = global_par_Vc_GLC-(global_par_Vce_GLC*1/global_par_Rce+global_par_Vcg_GLC*1/global_par_Rcg);
	% rateRule: variable = LACc
	xdot(59) = global_par_Vc_LAC+global_par_Vec_LAC*1/global_par_Rce+global_par_Vgc_LAC*1/global_par_Rcg;
	% rateRule: variable = CO2c
	xdot(60) = global_par_Vnc_CO2*1/global_par_Rcn+global_par_Vgc_CO2*1/global_par_Rcg-global_par_Vc_CO2;
	% rateRule: variable = GLCe
	xdot(61) = global_par_Vce_GLC-(global_par_Veg_GLC*1/global_par_Reg+global_par_V_en_GLC*1/global_par_Ren);
	% rateRule: variable = LACe
	xdot(62) = global_par_Vne_LAC*1/global_par_Ren+global_par_Vge_LAC*1/global_par_Reg-global_par_Vec_LAC;
	% rateRule: variable = GLUe
	xdot(63) = global_par_Vn_stim_GLU*1/global_par_Ren-global_par_Veg_GLU*1/global_par_Reg;
	% rateRule: variable = NAn
	xdot(64) = global_par_Vn_leak_Na+global_par_Vn_stim-3*global_par_Vn_pump;
	% rateRule: variable = GLCn
	xdot(65) = global_par_V_en_GLC-global_par_Vn_hk;
	% rateRule: variable = G6Pn
	xdot(66) = global_par_Vn_hk-global_par_Vn_pgi;
	% rateRule: variable = F6Pn
	xdot(67) = global_par_Vn_pgi-global_par_Vn_pfk;
	% rateRule: variable = GAPn
	xdot(68) = 2*global_par_Vn_pfk-global_par_Vn_pgk;
	% rateRule: variable = PEPn
	xdot(69) = global_par_Vn_pgk-global_par_Vn_pk;
	% rateRule: variable = PYRn
	xdot(70) = global_par_Vn_pk-(global_par_Vn_ldh+global_par_Vn_mito);
	% rateRule: variable = LACn
	xdot(71) = global_par_Vn_ldh-global_par_Vne_LAC;
	% rateRule: variable = NADHn
	xdot(72) = global_par_Vn_pgk-(global_par_Vn_ldh+global_par_Vn_mito);
	% rateRule: variable = ATPn
	xdot(73) = (global_par_Vn_pgk+global_par_Vn_pk+global_par_nOP*global_par_Vn_mito+global_par_Vn_ck-(global_par_Vn_hk+global_par_Vn_pfk+global_par_Vn_ATPase+global_par_Vn_pump))*(1-global_par_dAMP_dATPn)^(-1);
	% rateRule: variable = PCrn
	xdot(74) = -global_par_Vn_ck;
	% rateRule: variable = O2n
	xdot(75) = global_par_Vcn_O2-global_par_NAero*global_par_Vn_mito;
	% rateRule: variable = GLUn
	xdot(76) = global_par_Vg_gs*1/global_par_Rng-global_par_Vn_stim_GLU;
	% rateRule: variable = Vv
	xdot(77) = global_par_Fin_t-global_par_Fout_t;
	% rateRule: variable = dHb
	xdot(78) = global_par_Fin_t*(const_species_O2a-x(19))-global_par_Fout_t*global_par_dHb/global_par_Vv;
	
% Species:   id = NAg, name = NAg, involved in a rule 	xdot(1) = x(1);
	
% Species:   id = GLCg, name = GLCg, involved in a rule 	xdot(2) = x(2);
	
% Species:   id = G6Pg, name = G6Pg, involved in a rule 	xdot(3) = x(3);
	
% Species:   id = F6Pg, name = F6Pg, involved in a rule 	xdot(4) = x(4);
	
% Species:   id = GAPg, name = GAPg, involved in a rule 	xdot(5) = x(5);
	
% Species:   id = PEPg, name = PEPg, involved in a rule 	xdot(6) = x(6);
	
% Species:   id = PYRg, name = PYRg, involved in a rule 	xdot(7) = x(7);
	
% Species:   id = LACg, name = LACg, involved in a rule 	xdot(8) = x(8);
	
% Species:   id = NADHg, name = NADHg, involved in a rule 	xdot(9) = x(9);
	
% Species:   id = ATPg, name = ATPg, involved in a rule 	xdot(10) = x(10);
	
% Species:   id = PCrg, name = PCrg, involved in a rule 	xdot(11) = x(11);
	
% Species:   id = O2g, name = O2g, involved in a rule 	xdot(12) = x(12);
	
% Species:   id = GLYg, name = GLYg, involved in a rule 	xdot(13) = x(13);
	
% Species:   id = GLUg, name = GLUg, involved in a rule 	xdot(14) = x(14);
	
% Species:   id = NADg, name = NADg, involved in a rule 	xdot(15) = x(15);
	
% Species:   id = ADPg, name = ADPg, involved in a rule 	xdot(16) = x(16);
	
% Species:   id = CRg, name = CRg, involved in a rule 	xdot(17) = x(17);
	
% Species:   id = AMPg, name = AMPg, involved in a rule 	xdot(18) = x(18);
	
% Species:   id = O2c, name = O2c, involved in a rule 	xdot(19) = x(19);
	
% Species:   id = GLCc, name = GLCc, involved in a rule 	xdot(20) = x(20);
	
% Species:   id = LACc, name = LACc, involved in a rule 	xdot(21) = x(21);
	
% Species:   id = CO2c, name = CO2c, involved in a rule 	xdot(22) = x(22);
	
% Species:   id = GLCe, name = GLCe, involved in a rule 	xdot(23) = x(23);
	
% Species:   id = LACe, name = LACe, involved in a rule 	xdot(24) = x(24);
	
% Species:   id = GLUe, name = GLUe, involved in a rule 	xdot(25) = x(25);
	
% Species:   id = NAn, name = NAn, involved in a rule 	xdot(26) = x(26);
	
% Species:   id = GLCn, name = GLCn, involved in a rule 	xdot(27) = x(27);
	
% Species:   id = G6Pn, name = G6Pn, involved in a rule 	xdot(28) = x(28);
	
% Species:   id = F6Pn, name = F6Pn, involved in a rule 	xdot(29) = x(29);
	
% Species:   id = GAPn, name = GAPn, involved in a rule 	xdot(30) = x(30);
	
% Species:   id = PEPn, name = PEPn, involved in a rule 	xdot(31) = x(31);
	
% Species:   id = PYRn, name = PYRn, involved in a rule 	xdot(32) = x(32);
	
% Species:   id = LACn, name = LACn, involved in a rule 	xdot(33) = x(33);
	
% Species:   id = NADHn, name = NADHn, involved in a rule 	xdot(34) = x(34);
	
% Species:   id = ATPn, name = ATPn, involved in a rule 	xdot(35) = x(35);
	
% Species:   id = PCrn, name = PCrn, involved in a rule 	xdot(36) = x(36);
	
% Species:   id = O2n, name = O2n, involved in a rule 	xdot(37) = x(37);
	
% Species:   id = GLUn, name = GLUn, involved in a rule 	xdot(38) = x(38);
	
% Species:   id = ADPn, name = ADPn, involved in a rule 	xdot(39) = x(39);
	
% Species:   id = CRn, name = CRn, involved in a rule 	xdot(40) = x(40);
	
% Species:   id = NADn, name = NADn, involved in a rule 	xdot(41) = x(41);
	
% Species:   id = AMPn, name = AMPn, involved in a rule 	xdot(42) = x(42);
end

% adding few functions representing operators used in SBML but not present directly 
% in either matlab or octave. 
function z=pow(x,y),z=x^y;end
function z=root(x,y),z=y^(1/x);end
function z = piecewise(varargin)
	numArgs = nargin;
	result = 0;
	foundResult = 0;
	for k=1:2: numArgs-1
		if varargin{k+1} == 1
			result = varargin{k};
			foundResult = 1;
			break;
		end
	end
	if foundResult == 0
		result = varargin{numArgs};
	end
	z = result;
end


