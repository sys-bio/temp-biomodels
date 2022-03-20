% This file works with MATLAB and is automatically generated with 
% the System Biology Format Converter (http://sbfc.sourceforge.net/)
% from an SBML file. 
% To run this file with Octave you must edit the comments providing
% the definition of the ode solver and the signature for the 
% xdot function.
%
% The conversion system has the following limitations:
%  - You may have to re order some reactions and Assignment Rules definition
%  - Delays are not taken into account
%  - You should change the lsode parameters (start, end, steps) to get better results
%

%
% Model name = Bulik2016 - Regulation of hepatic glucose metabolism
%
% is http://identifiers.org/biomodels.db/MODEL1603030000
% is http://identifiers.org/biomodels.db/BIOMD0000000633
% isDescribedBy http://identifiers.org/pubmed/26935066
%


function main()
%Initial conditions vector
	x0=zeros(50,1);
	x0(1) = 4.0;
	x0(2) = 1.0;
	x0(3) = 4.92256221964406;
	x0(4) = 0.189929897759633;
	x0(5) = 0.0117240677629403;
	x0(6) = 0.34072421289254;
	x0(7) = 17.6332590346802;
	x0(8) = 0.0569790458002266;
	x0(9) = 8.08171827419162E-4;
	x0(10) = 5.40214088345945E-4;
	x0(11) = 0.00190705466540883;
	x0(12) = 0.0419590925497022;
	x0(13) = 0.00108805669971103;
	x0(14) = 0.306393473858216;
	x0(15) = 0.029376172923967;
	x0(16) = 0.0499395072312233;
	x0(17) = 0.0852149179429942;
	x0(18) = 0.0243963256092358;
	x0(19) = 0.678771756200856;
	x0(20) = 0.719656614702017;
	x0(21) = 0.75;
	x0(22) = 1.0E-4;
	x0(23) = 5.0;
	x0(24) = 4.64731194122211E-4;
	x0(25) = 1.11191930877581E-4;
	x0(26) = 0.132228238255726;
	x0(27) = 1.30359361718805;
	x0(28) = 8.0;
	x0(29) = 6.0E-5;
	x0(30) = 4.92256224638738;
	x0(31) = 0.189929893608775;
	x0(32) = 3.25;
	x0(33) = 0.5;
	x0(34) = 0.16;
	x0(35) = 0.744701216226319;
	x0(36) = 0.114570584540414;
	x0(37) = 0.693339386314472;
	x0(38) = 0.106667613680444;
	x0(39) = 0.008;
	x0(40) = 5.0;
	x0(41) = 5.0;
	x0(42) = 5.0;
	x0(43) = 1.13;
	x0(44) = 0.001;
	x0(45) = 17.5;
	x0(46) = 7.5;
	x0(47) = 0.559995709478379;
	x0(48) = 0.240004290518223;
	x0(49) = 0.004;
	x0(50) = 0.046;


% Depending on whether you are using Octave or Matlab,
% you should comment / uncomment one of the following blocks.
% This should also be done for the definition of the function f below.
% Start Matlab code
	tspan=[0:0.01:100];
	opts = odeset('AbsTol',1e-3);
	[t,x]=ode23tb(@f,tspan,x0,opts);
% End Matlab code

% Start Octave code
%	t=linspace(0,100,100);
%	x=lsode('f',x0,t);
% End Octave code


	plot(t,x);
end



% Depending on whether you are using Octave or Matlab,
% you should comment / uncomment one of the following blocks.
% This should also be done for the definition of the function f below.
% Start Matlab code
function xdot=f(t,x)
% End Matlab code

% Start Octave code
%function xdot=f(x,t)
% End Octave code

% Compartment: id = ext, name = ext, constant
	compartment_ext=1.0;
% Compartment: id = cyto, name = cyto, constant
	compartment_cyto=1.0;
% Compartment: id = er, name = er, constant
	compartment_er=1.0;
% Compartment: id = mito, name = mito, constant
	compartment_mito=1.0;
% Parameter:   id =  Vmm, name = Vmm
	global_par_Vmm=-0.155;
% Parameter:   id =  ONE, name = ONE
	global_par_ONE=1.0;
% Parameter:   id =  O5, name = O5
	global_par_O5=0.5;
% Parameter:   id =  M1, name = M1
	global_par_M1=-1.0;
% Parameter:   id =  O1, name = O1
	global_par_O1=0.1;
% Parameter:   id =  F, name = F
	global_par_F=96490.0;
% Parameter:   id =  R, name = R
	global_par_R=8.3;
% Parameter:   id =  T, name = T
	global_par_T=293.0;
% Parameter:   id =  vmax_ald, name = vmax_ald
	global_par_vmax_ald=7.78E8;
% Parameter:   id =  keq_ald, name = keq_ald
	global_par_keq_ald=0.099;
% Parameter:   id =  km_fru16bp_ald, name = km_fru16bp_ald
	global_par_km_fru16bp_ald=0.004;
% Parameter:   id =  km_gap_ald, name = km_gap_ald
	global_par_km_gap_ald=0.48;
% Parameter:   id =  km_dhap_ald, name = km_dhap_ald
	global_par_km_dhap_ald=0.38;
% Parameter:   id =  vmax_en, name = vmax_en
	global_par_vmax_en=1.94E10;
% Parameter:   id =  keq_en, name = keq_en
	global_par_keq_en=1.7;
% Parameter:   id =  km_pg2_en, name = km_pg2_en
	global_par_km_pg2_en=0.14;
% Parameter:   id =  km_pep_en, name = km_pep_en
	global_par_km_pep_en=0.31;
% Parameter:   id =  vmax_fbp1, name = vmax_fbp1
	global_par_vmax_fbp1=29200.0;
% Parameter:   id =  km_fru16bp_fbp1_native, name = km_fru16bp_fbp1_native
	global_par_km_fru16bp_fbp1_native=0.0029;
% Parameter:   id =  ki_fru26bp_fbp1, name = ki_fru26bp_fbp1
	global_par_ki_fru26bp_fbp1=0.00113;
% Parameter:   id =  n_fbp1, name = n_fbp1
	global_par_n_fbp1=1.26;
% Parameter:   id =  ki_amp_fbp1, name = ki_amp_fbp1
	global_par_ki_amp_fbp1=0.023;
% Parameter:   id =  n_amp_fbp1, name = n_amp_fbp1
	global_par_n_amp_fbp1=2.43;
% Parameter:   id =  km_fru16bp_fbp1_phospho, name = km_fru16bp_fbp1_phospho
	global_par_km_fru16bp_fbp1_phospho=0.0019;
% Parameter:   id =  vmax_gapdh, name = vmax_gapdh
	global_par_vmax_gapdh=2.92E8;
% Parameter:   id =  keq_gapdh, name = keq_gapdh
	global_par_keq_gapdh=1.0E-4;
% Parameter:   id =  km_nad_gapdh, name = km_nad_gapdh
	global_par_km_nad_gapdh=0.01;
% Parameter:   id =  km_gap_gapdh, name = km_gap_gapdh
	global_par_km_gap_gapdh=0.035;
% Parameter:   id =  km_p_gapdh, name = km_p_gapdh
	global_par_km_p_gapdh=3.8;
% Parameter:   id =  km_nadh_gapdh, name = km_nadh_gapdh
	global_par_km_nadh_gapdh=0.006;
% Parameter:   id =  km_bpg13_gapdh, name = km_bpg13_gapdh
	global_par_km_bpg13_gapdh=0.01;
% Parameter:   id =  v0_gk, name = v0_gk
	global_par_v0_gk=10500.0;
% Parameter:   id =  n_gk, name = n_gk
	global_par_n_gk=1.5;
% Parameter:   id =  ka_glc_gk, name = ka_glc_gk
	global_par_ka_glc_gk=15.9;
% Parameter:   id =  f_gk, name = f_gk
	global_par_f_gk=0.75;
% Parameter:   id =  ki_fru6p_gk, name = ki_fru6p_gk
	global_par_ki_fru6p_gk=0.005;
% Parameter:   id =  n2_gk, name = n2_gk
	global_par_n2_gk=3.7;
% Parameter:   id =  km_glc_gk, name = km_glc_gk
	global_par_km_glc_gk=9.0;
% Parameter:   id =  km_atp_gk, name = km_atp_gk
	global_par_km_atp_gk=0.55;
% Parameter:   id =  vmax_glct_er, name = vmax_glct_er
	global_par_vmax_glct_er=1.94E10;
% Parameter:   id =  km_glc_glct_er, name = km_glc_glct_er
	global_par_km_glc_glct_er=1.37;
% Parameter:   id =  km_glc_er_glct, name = km_glc_er_glct
	global_par_km_glc_er_glct=1.22;
% Parameter:   id =  vmax_glut2, name = vmax_glut2
	global_par_vmax_glut2=90.9;
% Parameter:   id =  km_glc_ext_glut2, name = km_glc_ext_glut2
	global_par_km_glc_ext_glut2=17.3;
% Parameter:   id =  km_glc_glut2, name = km_glc_glut2
	global_par_km_glc_glut2=17.3;
% Parameter:   id =  v0_gp, name = v0_gp
	global_par_v0_gp=129.0;
% Parameter:   id =  store, name = store
	global_par_store=300.0;
% Parameter:   id =  keq_gp, name = keq_gp
	global_par_keq_gp=0.21;
% Parameter:   id =  km_glyglc_gp_native, name = km_glyglc_gp_native
	global_par_km_glyglc_gp_native=2.5;
% Parameter:   id =  km_p_gp_native, name = km_p_gp_native
	global_par_km_p_gp_native=500.0;
% Parameter:   id =  ka_amp_gp_native, name = ka_amp_gp_native
	global_par_ka_amp_gp_native=0.36;
% Parameter:   id =  ka_amp_glc1p_gp, name = ka_amp_glc1p_gp
	global_par_ka_amp_glc1p_gp=0.5;
% Parameter:   id =  k0_glc1p_gp, name = k0_glc1p_gp
	global_par_k0_glc1p_gp=250.0;
% Parameter:   id =  km_glyglc_gp_phospho, name = km_glyglc_gp_phospho
	global_par_km_glyglc_gp_phospho=1.8;
% Parameter:   id =  km_p_gp_phospho, name = km_p_gp_phospho
	global_par_km_p_gp_phospho=2.1;
% Parameter:   id =  km_glc1p_gp_phospho, name = km_glc1p_gp_phospho
	global_par_km_glc1p_gp_phospho=0.7;
% Parameter:   id =  ka_amp_gp_phospho, name = ka_amp_gp_phospho
	global_par_ka_amp_gp_phospho=0.017;
% Parameter:   id =  vmax_g6p_er, name = vmax_g6p_er
	global_par_vmax_g6p_er=457.0;
% Parameter:   id =  km_glc6p_er_g6p_er, name = km_glc6p_er_g6p_er
	global_par_km_glc6p_er_g6p_er=1.84;
% Parameter:   id =  vmax_gpi, name = vmax_gpi
	global_par_vmax_gpi=1.07E9;
% Parameter:   id =  keq_gpi, name = keq_gpi
	global_par_keq_gpi=0.3;
% Parameter:   id =  km_glc6p_gpi, name = km_glc6p_gpi
	global_par_km_glc6p_gpi=0.055;
% Parameter:   id =  km_fru6p_gpi, name = km_fru6p_gpi
	global_par_km_fru6p_gpi=0.12;
% Parameter:   id =  vmax_g1pi, name = vmax_g1pi
	global_par_vmax_g1pi=7.78E7;
% Parameter:   id =  keq_g1pi, name = keq_g1pi
	global_par_keq_g1pi=16.2;
% Parameter:   id =  km_glc6p_g1pi, name = km_glc6p_g1pi
	global_par_km_glc6p_g1pi=0.045;
% Parameter:   id =  km_glc1p_g1pi, name = km_glc1p_g1pi
	global_par_km_glc1p_g1pi=0.67;
% Parameter:   id =  vmax_g6pt_er, name = vmax_g6pt_er
	global_par_vmax_g6pt_er=1.94E10;
% Parameter:   id =  km_glc6p_g6pt_er, name = km_glc6p_g6pt_er
	global_par_km_glc6p_g6pt_er=1.12;
% Parameter:   id =  km_glc6p_er_g6pt_er, name = km_glc6p_er_g6pt_er
	global_par_km_glc6p_er_g6pt_er=1.12;
% Parameter:   id =  v0_gs, name = v0_gs
	global_par_v0_gs=116.0;
% Parameter:   id =  kb_udpglc_gs_native, name = kb_udpglc_gs_native
	global_par_kb_udpglc_gs_native=0.2;
% Parameter:   id =  k0_udpglc_gs_native, name = k0_udpglc_gs_native
	global_par_k0_udpglc_gs_native=1.4;
% Parameter:   id =  ka_glc6p_gs_native, name = ka_glc6p_gs_native
	global_par_ka_glc6p_gs_native=0.007;
% Parameter:   id =  kb_udpglc_gs_phospho, name = kb_udpglc_gs_phospho
	global_par_kb_udpglc_gs_phospho=0.3;
% Parameter:   id =  k0_udpglc_gs_phospho, name = k0_udpglc_gs_phospho
	global_par_k0_udpglc_gs_phospho=32.0;
% Parameter:   id =  ka_glc6p_gs_phospho, name = ka_glc6p_gs_phospho
	global_par_ka_glc6p_gs_phospho=0.09;
% Parameter:   id =  vmax_lact, name = vmax_lact
	global_par_vmax_lact=583.0;
% Parameter:   id =  km_lac_lact, name = km_lac_lact
	global_par_km_lac_lact=2.42;
% Parameter:   id =  km_lac_ext_lact, name = km_lac_ext_lact
	global_par_km_lac_ext_lact=2.42;
% Parameter:   id =  vmax_ldh, name = vmax_ldh
	global_par_vmax_ldh=1.56E11;
% Parameter:   id =  keq_ldh, name = keq_ldh
	global_par_keq_ldh=9000.0;
% Parameter:   id =  km_lac_ldh, name = km_lac_ldh
	global_par_km_lac_ldh=36.0;
% Parameter:   id =  km_nad_ldh, name = km_nad_ldh
	global_par_km_nad_ldh=0.11;
% Parameter:   id =  km_pyr_ldh, name = km_pyr_ldh
	global_par_km_pyr_ldh=0.15;
% Parameter:   id =  km_nadh_ldh, name = km_nadh_ldh
	global_par_km_nadh_ldh=0.015;
% Parameter:   id =  km_p_mito_malt, name = km_p_mito_malt
	global_par_km_p_mito_malt=1.41;
% Parameter:   id =  km_mal_malt, name = km_mal_malt
	global_par_km_mal_malt=0.49;
% Parameter:   id =  km_p_malt, name = km_p_malt
	global_par_km_p_malt=1.41;
% Parameter:   id =  km_mal_mito_malt, name = km_mal_mito_malt
	global_par_km_mal_mito_malt=0.49;
% Parameter:   id =  vmax_malt, name = vmax_malt
	global_par_vmax_malt=1940.0;
% Parameter:   id =  km_oa_mdh, name = km_oa_mdh
	global_par_km_oa_mdh=0.088;
% Parameter:   id =  km_nadh_mdh, name = km_nadh_mdh
	global_par_km_nadh_mdh=0.026;
% Parameter:   id =  km_nad_mdh, name = km_nad_mdh
	global_par_km_nad_mdh=0.114;
% Parameter:   id =  km_mal_mdh, name = km_mal_mdh
	global_par_km_mal_mdh=1.1;
% Parameter:   id =  keq_mdh, name = keq_mdh
	global_par_keq_mdh=3.0E-5;
% Parameter:   id =  vmax_mdh, name = vmax_mdh
	global_par_vmax_mdh=1.94E9;
% Parameter:   id =  km_oa_mito_mdh_mito, name = km_oa_mito_mdh_mito
	global_par_km_oa_mito_mdh_mito=0.017;
% Parameter:   id =  km_nadh_mito_mdh_mito, name = km_nadh_mito_mdh_mito
	global_par_km_nadh_mito_mdh_mito=0.044;
% Parameter:   id =  km_nad_mito_mdh_mito, name = km_nad_mito_mdh_mito
	global_par_km_nad_mito_mdh_mito=0.06;
% Parameter:   id =  km_mal_mito_mdh_mito, name = km_mal_mito_mdh_mito
	global_par_km_mal_mito_mdh_mito=0.33;
% Parameter:   id =  keq_mdh_mito, name = keq_mdh_mito
	global_par_keq_mdh_mito=3.1E-5;
% Parameter:   id =  vmax_mdh_mito, name = vmax_mdh_mito
	global_par_vmax_mdh_mito=6.97E11;
% Parameter:   id =  vmax_ndk_gtp, name = vmax_ndk_gtp
	global_par_vmax_ndk_gtp=1.94E11;
% Parameter:   id =  keq_ndk, name = keq_ndk
	global_par_keq_ndk=1.0;
% Parameter:   id =  km_atp_ndk, name = km_atp_ndk
	global_par_km_atp_ndk=1.33;
% Parameter:   id =  km_gdp_ndk, name = km_gdp_ndk
	global_par_km_gdp_ndk=0.031;
% Parameter:   id =  km_adp_ndk, name = km_adp_ndk
	global_par_km_adp_ndk=0.042;
% Parameter:   id =  km_gtp_ndk, name = km_gtp_ndk
	global_par_km_gtp_ndk=0.15;
% Parameter:   id =  vmax_ndk_utp, name = vmax_ndk_utp
	global_par_vmax_ndk_utp=1.94E7;
% Parameter:   id =  km_udp_ndk, name = km_udp_ndk
	global_par_km_udp_ndk=0.19;
% Parameter:   id =  km_utp_ndk, name = km_utp_ndk
	global_par_km_utp_ndk=16.0;
% Parameter:   id =  vmax_ndk_gtp_mito, name = vmax_ndk_gtp_mito
	global_par_vmax_ndk_gtp_mito=1.94E7;
% Parameter:   id =  km_atp_mito_ndk, name = km_atp_mito_ndk
	global_par_km_atp_mito_ndk=1.66;
% Parameter:   id =  km_gdp_mito_ndk, name = km_gdp_mito_ndk
	global_par_km_gdp_mito_ndk=0.036;
% Parameter:   id =  km_adp_mito_ndk, name = km_adp_mito_ndk
	global_par_km_adp_mito_ndk=0.073;
% Parameter:   id =  km_gtp_mito_ndk, name = km_gtp_mito_ndk
	global_par_km_gtp_mito_ndk=0.15;
% Parameter:   id =  vmax_PC, name = vmax_PC
	global_par_vmax_PC=3590.0;
% Parameter:   id =  keq_pc, name = keq_pc
	global_par_keq_pc=6.55;
% Parameter:   id =  km_atp_mito_pc, name = km_atp_mito_pc
	global_par_km_atp_mito_pc=0.14;
% Parameter:   id =  km_pyr_mito_pc, name = km_pyr_mito_pc
	global_par_km_pyr_mito_pc=0.33;
% Parameter:   id =  km_co2_mito_pc, name = km_co2_mito_pc
	global_par_km_co2_mito_pc=4.2;
% Parameter:   id =  vmax_pepck, name = vmax_pepck
	global_par_vmax_pepck=1000000.0;
% Parameter:   id =  keq_pepck, name = keq_pepck
	global_par_keq_pepck=110.0;
% Parameter:   id =  km_oa_pepck, name = km_oa_pepck
	global_par_km_oa_pepck=0.024;
% Parameter:   id =  km_gtp_pepck, name = km_gtp_pepck
	global_par_km_gtp_pepck=0.021;
% Parameter:   id =  km_pep_pepck, name = km_pep_pepck
	global_par_km_pep_pepck=0.4;
% Parameter:   id =  km_gdp_pepck, name = km_gdp_pepck
	global_par_km_gdp_pepck=0.02;
% Parameter:   id =  km_co2_pepck, name = km_co2_pepck
	global_par_km_co2_pepck=1.194;
% Parameter:   id =  vmax_pepck_mito, name = vmax_pepck_mito
	global_par_vmax_pepck_mito=1410000.0;
% Parameter:   id =  keq_pepck_mito, name = keq_pepck_mito
	global_par_keq_pepck_mito=160.0;
% Parameter:   id =  km_oa_mito_pepck_mito, name = km_oa_mito_pepck_mito
	global_par_km_oa_mito_pepck_mito=0.0085;
% Parameter:   id =  km_gtp_mito_pepck_mito, name = km_gtp_mito_pepck_mito
	global_par_km_gtp_mito_pepck_mito=0.022;
% Parameter:   id =  km_pep_mito_pepck_mito, name = km_pep_mito_pepck_mito
	global_par_km_pep_mito_pepck_mito=0.4;
% Parameter:   id =  km_gdp_mito_pepck_mito, name = km_gdp_mito_pepck_mito
	global_par_km_gdp_mito_pepck_mito=0.02;
% Parameter:   id =  km_co2_mito_pepck_mito, name = km_co2_mito_pepck_mito
	global_par_km_co2_mito_pepck_mito=1.06;
% Parameter:   id =  vmax_pept, name = vmax_pept
	global_par_vmax_pept=194000.0;
% Parameter:   id =  km_pep_pept, name = km_pep_pept
	global_par_km_pep_pept=0.1;
% Parameter:   id =  km_pep_mito_pept, name = km_pep_mito_pept
	global_par_km_pep_mito_pept=0.1;
% Parameter:   id =  vmax_pfk1, name = vmax_pfk1
	global_par_vmax_pfk1=76800.0;
% Parameter:   id =  ni_pfk1, name = ni_pfk1
	global_par_ni_pfk1=4.0;
% Parameter:   id =  ka_fru26bp_pfk1_km_atp, name = ka_fru26bp_pfk1_km_atp
	global_par_ka_fru26bp_pfk1_km_atp=0.0027;
% Parameter:   id =  k0_atp_pfk1_km_atp, name = k0_atp_pfk1_km_atp
	global_par_k0_atp_pfk1_km_atp=0.2;
% Parameter:   id =  ki0_atp_pfk1, name = ki0_atp_pfk1
	global_par_ki0_atp_pfk1=0.7;
% Parameter:   id =  f_fru26bp_pfk1_ki_atp, name = f_fru26bp_pfk1_ki_atp
	global_par_f_fru26bp_pfk1_ki_atp=9.0;
% Parameter:   id =  ka_fru26bp_pfk1_ki_atp, name = ka_fru26bp_pfk1_ki_atp
	global_par_ka_fru26bp_pfk1_ki_atp=0.54;
% Parameter:   id =  k0_fru6p_pfk1_km_fru6p, name = k0_fru6p_pfk1_km_fru6p
	global_par_k0_fru6p_pfk1_km_fru6p=1.14;
% Parameter:   id =  ki_atp_pfk1_km_fru6p, name = ki_atp_pfk1_km_fru6p
	global_par_ki_atp_pfk1_km_fru6p=0.6;
% Parameter:   id =  ki_cit_pfk1_km_fru6p, name = ki_cit_pfk1_km_fru6p
	global_par_ki_cit_pfk1_km_fru6p=3.27;
% Parameter:   id =  f_amp_pfk1_km_fru6p, name = f_amp_pfk1_km_fru6p
	global_par_f_amp_pfk1_km_fru6p=0.77;
% Parameter:   id =  n_amp_pfk1_km_fru6p, name = n_amp_pfk1_km_fru6p
	global_par_n_amp_pfk1_km_fru6p=1.84;
% Parameter:   id =  ka_amp_pfk1_km_fru6p, name = ka_amp_pfk1_km_fru6p
	global_par_ka_amp_pfk1_km_fru6p=0.1;
% Parameter:   id =  f_p_pfk1_km_fru6p, name = f_p_pfk1_km_fru6p
	global_par_f_p_pfk1_km_fru6p=0.85;
% Parameter:   id =  ka_p_pfk1_km_fru6p, name = ka_p_pfk1_km_fru6p
	global_par_ka_p_pfk1_km_fru6p=0.69;
% Parameter:   id =  f_fru26bp_pfk1_km_fru6p, name = f_fru26bp_pfk1_km_fru6p
	global_par_f_fru26bp_pfk1_km_fru6p=0.92;
% Parameter:   id =  n_fru26bp_pfk1_km_fru6p, name = n_fru26bp_pfk1_km_fru6p
	global_par_n_fru26bp_pfk1_km_fru6p=1.2;
% Parameter:   id =  ka_fru26bp_pfk1_km_fru6p, name = ka_fru26bp_pfk1_km_fru6p
	global_par_ka_fru26bp_pfk1_km_fru6p=0.0045;
% Parameter:   id =  n0_pfk1_n_fru6p, name = n0_pfk1_n_fru6p
	global_par_n0_pfk1_n_fru6p=3.67;
% Parameter:   id =  n_atp_pfk1_n_fru6p, name = n_atp_pfk1_n_fru6p
	global_par_n_atp_pfk1_n_fru6p=1.59;
% Parameter:   id =  ki_atp_pfk1_n_fru6p, name = ki_atp_pfk1_n_fru6p
	global_par_ki_atp_pfk1_n_fru6p=0.13;
% Parameter:   id =  f_amp_pfk1_n_fru6p, name = f_amp_pfk1_n_fru6p
	global_par_f_amp_pfk1_n_fru6p=0.4;
% Parameter:   id =  n_amp_pfk1_n_fru6p, name = n_amp_pfk1_n_fru6p
	global_par_n_amp_pfk1_n_fru6p=2.22;
% Parameter:   id =  ka_amp_pfk1_n_fru6p, name = ka_amp_pfk1_n_fru6p
	global_par_ka_amp_pfk1_n_fru6p=0.086;
% Parameter:   id =  f_cit_pfk1_n_fru6p, name = f_cit_pfk1_n_fru6p
	global_par_f_cit_pfk1_n_fru6p=0.1;
% Parameter:   id =  n_cit_pfk1_n_fru6p, name = n_cit_pfk1_n_fru6p
	global_par_n_cit_pfk1_n_fru6p=4.0;
% Parameter:   id =  ki_cit_pfk1_n_fru6p, name = ki_cit_pfk1_n_fru6p
	global_par_ki_cit_pfk1_n_fru6p=0.18;
% Parameter:   id =  f_p_pfk1_n_fru6p, name = f_p_pfk1_n_fru6p
	global_par_f_p_pfk1_n_fru6p=0.28;
% Parameter:   id =  n_p_pfk1_n_fru6p, name = n_p_pfk1_n_fru6p
	global_par_n_p_pfk1_n_fru6p=4.0;
% Parameter:   id =  ka_p_pfk1_n_fru6p, name = ka_p_pfk1_n_fru6p
	global_par_ka_p_pfk1_n_fru6p=0.53;
% Parameter:   id =  f_fru26bp_pfk1_n_fru6p, name = f_fru26bp_pfk1_n_fru6p
	global_par_f_fru26bp_pfk1_n_fru6p=0.37;
% Parameter:   id =  n_fru26bp_pfk1_n_fru6p, name = n_fru26bp_pfk1_n_fru6p
	global_par_n_fru26bp_pfk1_n_fru6p=4.0;
% Parameter:   id =  ka_fru26bp_pfk1_n_fru6p, name = ka_fru26bp_pfk1_n_fru6p
	global_par_ka_fru26bp_pfk1_n_fru6p=0.0021;
% Parameter:   id =  vmax_pfk2, name = vmax_pfk2
	global_par_vmax_pfk2=151.0;
% Parameter:   id =  n_fru6p_pfk2_native, name = n_fru6p_pfk2_native
	global_par_n_fru6p_pfk2_native=1.3;
% Parameter:   id =  km_fru6p_pfk2_native, name = km_fru6p_pfk2_native
	global_par_km_fru6p_pfk2_native=0.015;
% Parameter:   id =  km_atp_pfk2_native, name = km_atp_pfk2_native
	global_par_km_atp_pfk2_native=0.25;
% Parameter:   id =  n0_pfk2, name = n0_pfk2
	global_par_n0_pfk2=0.85;
% Parameter:   id =  ki_pep_pfk2, name = ki_pep_pfk2
	global_par_ki_pep_pfk2=0.25;
% Parameter:   id =  n_fru6p_pfk2_phospho, name = n_fru6p_pfk2_phospho
	global_par_n_fru6p_pfk2_phospho=2.0;
% Parameter:   id =  km_fru6p_pfk2_phospho, name = km_fru6p_pfk2_phospho
	global_par_km_fru6p_pfk2_phospho=0.05;
% Parameter:   id =  km_atp_pfk2_phospho, name = km_atp_pfk2_phospho
	global_par_km_atp_pfk2_phospho=0.5;
% Parameter:   id =  vmax_fbp2, name = vmax_fbp2
	global_par_vmax_fbp2=549.0;
% Parameter:   id =  km_fru26bp_fbp2_native, name = km_fru26bp_fbp2_native
	global_par_km_fru26bp_fbp2_native=0.01;
% Parameter:   id =  ki_fru6p_fbp2_native, name = ki_fru6p_fbp2_native
	global_par_ki_fru6p_fbp2_native=0.0035;
% Parameter:   id =  f_fbp2_phospho, name = f_fbp2_phospho
	global_par_f_fbp2_phospho=1.0;
% Parameter:   id =  km_fru26bp_fbp2_phospho, name = km_fru26bp_fbp2_phospho
	global_par_km_fru26bp_fbp2_phospho=5.0E-4;
% Parameter:   id =  ki_fru6p_fbp2_phospho, name = ki_fru6p_fbp2_phospho
	global_par_ki_fru6p_fbp2_phospho=0.01;
% Parameter:   id =  vmax_pgk, name = vmax_pgk
	global_par_vmax_pgk=1.94E10;
% Parameter:   id =  keq_pgk, name = keq_pgk
	global_par_keq_pgk=1830.0;
% Parameter:   id =  km_adp_pgk, name = km_adp_pgk
	global_par_km_adp_pgk=0.35;
% Parameter:   id =  km_bpg13_pgk, name = km_bpg13_pgk
	global_par_km_bpg13_pgk=0.0022;
% Parameter:   id =  km_atp_pgk, name = km_atp_pgk
	global_par_km_atp_pgk=0.24;
% Parameter:   id =  km_pg3_pgk, name = km_pg3_pgk
	global_par_km_pg3_pgk=1.65;
% Parameter:   id =  vmax_pgm, name = vmax_pgm
	global_par_vmax_pgm=1.94E10;
% Parameter:   id =  keq_pgm, name = keq_pgm
	global_par_keq_pgm=0.096;
% Parameter:   id =  km_pg3_pgm, name = km_pg3_pgm
	global_par_km_pg3_pgm=0.52;
% Parameter:   id =  km_pg2_pgm, name = km_pg2_pgm
	global_par_km_pg2_pgm=0.24;
% Parameter:   id =  vmax_pk, name = vmax_pk
	global_par_vmax_pk=12800.0;
% Parameter:   id =  km_pep_pk_native, name = km_pep_pk_native
	global_par_km_pep_pk_native=0.13;
% Parameter:   id =  ki_atp_pk_native, name = ki_atp_pk_native
	global_par_ki_atp_pk_native=1.0;
% Parameter:   id =  ka_fru16bp_pk_native, name = ka_fru16bp_pk_native
	global_par_ka_fru16bp_pk_native=0.0078;
% Parameter:   id =  km_adp_pk_native, name = km_adp_pk_native
	global_par_km_adp_pk_native=0.25;
% Parameter:   id =  km_pep_pk_phospho, name = km_pep_pk_phospho
	global_par_km_pep_pk_phospho=5.8;
% Parameter:   id =  ki_atp_pk_phospho, name = ki_atp_pk_phospho
	global_par_ki_atp_pk_phospho=0.32;
% Parameter:   id =  ka_fru16bp_pk_phospho, name = ka_fru16bp_pk_phospho
	global_par_ka_fru16bp_pk_phospho=0.0095;
% Parameter:   id =  km_adp_pk_phospho, name = km_adp_pk_phospho
	global_par_km_adp_pk_phospho=0.33;
% Parameter:   id =  n_pk_phospho, name = n_pk_phospho
	global_par_n_pk_phospho=2.9;
% Parameter:   id =  vmax_pyrmalt, name = vmax_pyrmalt
	global_par_vmax_pyrmalt=19400.0;
% Parameter:   id =  km_mal_mito_pyrmalt, name = km_mal_mito_pyrmalt
	global_par_km_mal_mito_pyrmalt=0.7;
% Parameter:   id =  km_pyr_pyrmalt, name = km_pyr_pyrmalt
	global_par_km_pyr_pyrmalt=0.84;
% Parameter:   id =  km_mal_pyrmalt, name = km_mal_pyrmalt
	global_par_km_mal_pyrmalt=0.7;
% Parameter:   id =  km_pyr_mito_pyrmalt, name = km_pyr_mito_pyrmalt
	global_par_km_pyr_mito_pyrmalt=0.84;
% Parameter:   id =  vmax_pyrt, name = vmax_pyrt
	global_par_vmax_pyrt=1.94E8;
% Parameter:   id =  km_pyr_pyrt, name = km_pyr_pyrt
	global_par_km_pyr_pyrt=0.15;
% Parameter:   id =  km_pyr_mito_pyrt, name = km_pyr_mito_pyrt
	global_par_km_pyr_mito_pyrt=0.15;
% Parameter:   id =  vmax_tpi, name = vmax_tpi
	global_par_vmax_tpi=1.94E8;
% Parameter:   id =  keq_tpi, name = keq_tpi
	global_par_keq_tpi=0.04545;
% Parameter:   id =  km_dhap_tpi, name = km_dhap_tpi
	global_par_km_dhap_tpi=0.59;
% Parameter:   id =  km_gap_tpi, name = km_gap_tpi
	global_par_km_gap_tpi=0.415;
% Parameter:   id =  vmax_ugt, name = vmax_ugt
	global_par_vmax_ugt=7.78E9;
% Parameter:   id =  keq_ugt, name = keq_ugt
	global_par_keq_ugt=0.3122;
% Parameter:   id =  km_utp_ugt, name = km_utp_ugt
	global_par_km_utp_ugt=0.2;
% Parameter:   id =  km_glc1p_ugt, name = km_glc1p_ugt
	global_par_km_glc1p_ugt=0.055;
% Parameter:   id =  km_udpglc_ugt, name = km_udpglc_ugt
	global_par_km_udpglc_ugt=0.06;
% Parameter:   id =  km_pp_ugt, name = km_pp_ugt
	global_par_km_pp_ugt=0.084;
% Parameter:   id =  ins0, name = ins0
	global_par_ins0=3.1E-6;
% Parameter:   id =  n_ins, name = n_ins
	global_par_n_ins=5.7;
% Parameter:   id =  km_glc_ext_ins, name = km_glc_ext_ins
	global_par_km_glc_ext_ins=7.7;
% Parameter:   id =  glucagon0, name = glucagon0
	global_par_glucagon0=5.06E-7;
% Parameter:   id =  n_glucagon, name = n_glucagon
	global_par_n_glucagon=5.65;
% Parameter:   id =  km_glc_ext_glucagon, name = km_glc_ext_glucagon
	global_par_km_glc_ext_glucagon=4.7;
% Parameter:   id =  glucagonb, name = glucagonb
	global_par_glucagonb=4.0E-8;
% Parameter:   id =  n_ins_gamma, name = n_ins_gamma
	global_par_n_ins_gamma=1.75;
% Parameter:   id =  km_ins_gamma, name = km_ins_gamma
	global_par_km_ins_gamma=7.0E-7;
% Parameter:   id =  n_glucagon_gamma, name = n_glucagon_gamma
	global_par_n_glucagon_gamma=3.6;
% Parameter:   id =  km_glucagon_gamma, name = km_glucagon_gamma
	global_par_km_glucagon_gamma=8.0E-8;
% Parameter:   id =  ins, name = ins
% Parameter:   id =  glucagon, name = glucagon
% Parameter:   id =  gamma, name = gamma
% Parameter:   id =  gamma_fbp1, name = gamma_fbp1
% Parameter:   id =  gamma_gp, name = gamma_gp
% Parameter:   id =  gamma_gs, name = gamma_gs
% Parameter:   id =  gamma_pfk2, name = gamma_pfk2
% Parameter:   id =  gamma_fbp2, name = gamma_fbp2
% Parameter:   id =  gamma_pk, name = gamma_pk
% Parameter:   id =  v_ALD, name = v_ALD
% Parameter:   id =  v_EN, name = v_EN
% Parameter:   id =  v_fbp1_native, name = v_fbp1_native
% Parameter:   id =  v_fbp1_phospho, name = v_fbp1_phospho
% Parameter:   id =  v_FBP1, name = v_FBP1
% Parameter:   id =  v_GAPDH, name = v_GAPDH
% Parameter:   id =  vmax_gk, name = vmax_gk
% Parameter:   id =  v_GK, name = v_GK
% Parameter:   id =  v_GLUT2, name = v_GLUT2
% Parameter:   id =  v_GLCT_ER, name = v_GLCT_ER
% Parameter:   id =  vmax_gp, name = vmax_gp
% Parameter:   id =  vmax_gp_native, name = vmax_gp_native
% Parameter:   id =  km_glc1p_gp_native, name = km_glc1p_gp_native
% Parameter:   id =  vmax_gp_phospho, name = vmax_gp_phospho
% Parameter:   id =  v_gp_native, name = v_gp_native
% Parameter:   id =  v_gp_phospho, name = v_gp_phospho
% Parameter:   id =  v_GP, name = v_GP
% Parameter:   id =  v_G6P_ER, name = v_G6P_ER
% Parameter:   id =  v_GPI, name = v_GPI
% Parameter:   id =  v_G1PI, name = v_G1PI
% Parameter:   id =  v_G6PT_ER, name = v_G6PT_ER
% Parameter:   id =  vmax_gs, name = vmax_gs
% Parameter:   id =  km_udpglc_gs_native, name = km_udpglc_gs_native
% Parameter:   id =  km_udpglc_gs_phospho, name = km_udpglc_gs_phospho
% Parameter:   id =  v_gs_native, name = v_gs_native
% Parameter:   id =  v_gs_phospho, name = v_gs_phospho
% Parameter:   id =  v_GS, name = v_GS
% Parameter:   id =  v_LACT, name = v_LACT
% Parameter:   id =  v_LDH, name = v_LDH
% Parameter:   id =  v_MALT, name = v_MALT
% Parameter:   id =  v_MDH, name = v_MDH
% Parameter:   id =  v_MDH_mito, name = v_MDH_mito
% Parameter:   id =  v_NDK_GTP, name = v_NDK_GTP
% Parameter:   id =  v_NDK_UTP, name = v_NDK_UTP
% Parameter:   id =  v_NDK_GTP_mito, name = v_NDK_GTP_mito
% Parameter:   id =  v_PC, name = v_PC
% Parameter:   id =  v_PEPCK, name = v_PEPCK
% Parameter:   id =  v_PEPCK_mito, name = v_PEPCK_mito
% Parameter:   id =  keq_pept, name = keq_pept
% Parameter:   id =  v_PEPT, name = v_PEPT
% Parameter:   id =  km_atp_pfk1, name = km_atp_pfk1
% Parameter:   id =  ki_atp_pfk1, name = ki_atp_pfk1
% Parameter:   id =  km_fru6p_pfk1, name = km_fru6p_pfk1
% Parameter:   id =  n_fru6p_pfk1, name = n_fru6p_pfk1
% Parameter:   id =  v_PFK1, name = v_PFK1
% Parameter:   id =  v_pfk2_native, name = v_pfk2_native
% Parameter:   id =  v_pfk2_phospho, name = v_pfk2_phospho
% Parameter:   id =  v_PFK2, name = v_PFK2
% Parameter:   id =  v_fbp2_native, name = v_fbp2_native
% Parameter:   id =  v_fbp2_phospho, name = v_fbp2_phospho
% Parameter:   id =  v_FBP2, name = v_FBP2
% Parameter:   id =  v_PGK, name = v_PGK
% Parameter:   id =  v_PGM, name = v_PGM
% Parameter:   id =  v_pk_native, name = v_pk_native
% Parameter:   id =  v_pk_phospho, name = v_pk_phospho
% Parameter:   id =  v_PK, name = v_PK
% Parameter:   id =  v_PyrMalT, name = v_PyrMalT
% Parameter:   id =  v_PyrT, name = v_PyrT
% Parameter:   id =  v_TPI, name = v_TPI
% Parameter:   id =  v_UGT, name = v_UGT
% assignmentRule: variable = ins
	global_par_ins=global_par_ins0*x(1)^global_par_n_ins/(x(1)^global_par_n_ins+global_par_km_glc_ext_ins^global_par_n_ins);
% assignmentRule: variable = glucagon
	global_par_glucagon=global_par_glucagon0*(global_par_ONE-x(1)^global_par_n_glucagon/(x(1)^global_par_n_glucagon+global_par_km_glc_ext_glucagon^global_par_n_glucagon))+global_par_glucagonb;
% assignmentRule: variable = gamma
	global_par_gamma=global_par_O5*(global_par_ONE+(global_par_glucagon^global_par_n_glucagon_gamma/(global_par_glucagon^global_par_n_glucagon_gamma+global_par_km_glucagon_gamma^global_par_n_glucagon_gamma)-global_par_ins^global_par_n_ins_gamma/(global_par_ins^global_par_n_ins_gamma+global_par_km_ins_gamma^global_par_n_ins_gamma)));
% assignmentRule: variable = gamma_fbp1
	global_par_gamma_fbp1=global_par_gamma;
% assignmentRule: variable = gamma_gp
	global_par_gamma_gp=global_par_gamma;
% assignmentRule: variable = gamma_gs
	global_par_gamma_gs=global_par_gamma;
% assignmentRule: variable = gamma_pfk2
	global_par_gamma_pfk2=global_par_gamma;
% assignmentRule: variable = gamma_fbp2
	global_par_gamma_fbp2=global_par_gamma;
% assignmentRule: variable = gamma_pk
	global_par_gamma_pk=global_par_gamma;
% assignmentRule: variable = v_ALD
	global_par_v_ALD=global_par_vmax_ald*(x(9)-x(11)*x(12)/global_par_keq_ald)/(global_par_ONE+x(9)/global_par_km_fru16bp_ald+(global_par_ONE+x(11)/global_par_km_gap_ald)*(global_par_ONE+x(12)/global_par_km_dhap_ald)-global_par_ONE);
% assignmentRule: variable = v_EN
	global_par_v_EN=global_par_vmax_en*(x(15)-x(16)/global_par_keq_en)/(global_par_ONE+x(15)/global_par_km_pg2_en+x(16)/global_par_km_pep_en);
% assignmentRule: variable = v_fbp1_native
	global_par_v_fbp1_native=x(9)/(x(9)+global_par_km_fru16bp_fbp1_native)/((global_par_ONE+(x(10)/global_par_ki_fru26bp_fbp1)^global_par_n_fbp1)*(global_par_ONE+(x(34)/global_par_ki_amp_fbp1)^global_par_n_amp_fbp1));
% assignmentRule: variable = v_fbp1_phospho
	global_par_v_fbp1_phospho=x(9)/(x(9)+global_par_km_fru16bp_fbp1_phospho)/((global_par_ONE+(x(10)/global_par_ki_fru26bp_fbp1)^global_par_n_fbp1)*(global_par_ONE+(x(34)/global_par_ki_amp_fbp1)^global_par_n_amp_fbp1));
% assignmentRule: variable = v_FBP1
	global_par_v_FBP1=global_par_vmax_fbp1*((global_par_ONE-global_par_gamma_fbp1)*global_par_v_fbp1_native+global_par_gamma_fbp1*global_par_v_fbp1_phospho);
% assignmentRule: variable = v_GAPDH
	global_par_v_GAPDH=global_par_vmax_gapdh*(x(43)*x(11)*x(40)-x(13)*x(44)/global_par_keq_gapdh)/((global_par_ONE+x(43)/global_par_km_nad_gapdh)*(global_par_ONE+x(11)/global_par_km_gap_gapdh)*(global_par_ONE+x(40)/global_par_km_p_gapdh)+(global_par_ONE+x(44)/global_par_km_nadh_gapdh)*(global_par_ONE+x(13)/global_par_km_bpg13_gapdh)-global_par_ONE);
% assignmentRule: variable = vmax_gk
	global_par_vmax_gk=global_par_v0_gk*x(3)^global_par_n2_gk/(x(3)^global_par_n2_gk+global_par_ka_glc_gk^global_par_n2_gk)*(global_par_ONE-global_par_f_gk*x(8)/(x(8)+global_par_ki_fru6p_gk));
% assignmentRule: variable = v_GK
	global_par_v_GK=global_par_vmax_gk*x(32)/(x(32)+global_par_km_atp_gk)*x(3)^global_par_n_gk/(x(3)^global_par_n_gk+global_par_km_glc_gk^global_par_n_gk);
% assignmentRule: variable = v_GLUT2
	global_par_v_GLUT2=global_par_vmax_glut2*(x(1)-x(3))/(global_par_ONE+x(1)/global_par_km_glc_ext_glut2+x(3)/global_par_km_glc_glut2);
% assignmentRule: variable = v_GLCT_ER
	global_par_v_GLCT_ER=global_par_vmax_glct_er*(x(3)-x(30))/(global_par_ONE+x(3)/global_par_km_glc_glct_er+x(30)/global_par_km_glc_er_glct);
% assignmentRule: variable = vmax_gp
	global_par_vmax_gp=global_par_v0_gp*x(7)/global_par_store;
% assignmentRule: variable = vmax_gp_native
	global_par_vmax_gp_native=x(34)/(x(34)+global_par_ka_amp_gp_native)/(global_par_km_glyglc_gp_native*global_par_km_p_gp_native);
% assignmentRule: variable = km_glc1p_gp_native
	global_par_km_glc1p_gp_native=global_par_k0_glc1p_gp*(global_par_ONE-x(34)/(x(34)+global_par_ka_amp_glc1p_gp));
% assignmentRule: variable = vmax_gp_phospho
	global_par_vmax_gp_phospho=x(34)/(x(34)+global_par_ka_amp_gp_phospho)/(global_par_km_glyglc_gp_phospho*global_par_km_p_gp_phospho);
% assignmentRule: variable = v_gp_native
	global_par_v_gp_native=global_par_vmax_gp_native*(x(7)*x(40)-x(5)/global_par_keq_gp)/((global_par_ONE+x(7)/global_par_km_glyglc_gp_native)*(global_par_ONE+x(40)/global_par_km_p_gp_native)+global_par_ONE+x(5)/global_par_km_glc1p_gp_native-global_par_ONE);
% assignmentRule: variable = v_gp_phospho
	global_par_v_gp_phospho=global_par_vmax_gp_phospho*(x(7)*x(40)-x(5)/global_par_keq_gp)/((global_par_ONE+x(7)/global_par_km_glyglc_gp_phospho)*(global_par_ONE+x(40)/global_par_km_p_gp_phospho)+global_par_ONE+x(5)/global_par_km_glc1p_gp_phospho-global_par_ONE);
% assignmentRule: variable = v_GP
	global_par_v_GP=global_par_vmax_gp*((global_par_ONE-global_par_gamma_gp)*global_par_v_gp_native+global_par_gamma_gp*global_par_v_gp_phospho);
% assignmentRule: variable = v_G6P_ER
	global_par_v_G6P_ER=global_par_vmax_g6p_er*x(31)/(x(31)+global_par_km_glc6p_er_g6p_er);
% assignmentRule: variable = v_GPI
	global_par_v_GPI=global_par_vmax_gpi*(x(4)-x(8)/global_par_keq_gpi)/(global_par_ONE+x(4)/global_par_km_glc6p_gpi+x(8)/global_par_km_fru6p_gpi);
% assignmentRule: variable = v_G1PI
	global_par_v_G1PI=global_par_vmax_g1pi*(x(5)-x(4)/global_par_keq_g1pi)/(global_par_ONE+x(4)/global_par_km_glc6p_g1pi+x(5)/global_par_km_glc1p_g1pi);
% assignmentRule: variable = v_G6PT_ER
	global_par_v_G6PT_ER=global_par_vmax_g6pt_er*(x(4)-x(31))/(global_par_ONE+x(4)/global_par_km_glc6p_g6pt_er+x(31)/global_par_km_glc6p_er_g6pt_er);
% assignmentRule: variable = vmax_gs
	global_par_vmax_gs=global_par_v0_gs*(global_par_store-x(7))/(global_par_store-x(7)+global_par_store*global_par_O1);
% assignmentRule: variable = km_udpglc_gs_native
	global_par_km_udpglc_gs_native=global_par_kb_udpglc_gs_native+global_par_k0_udpglc_gs_native*(global_par_ONE-x(4)/(x(4)+global_par_ka_glc6p_gs_native));
% assignmentRule: variable = km_udpglc_gs_phospho
	global_par_km_udpglc_gs_phospho=global_par_kb_udpglc_gs_phospho+global_par_k0_udpglc_gs_phospho*(global_par_ONE-x(4)/(x(4)+global_par_ka_glc6p_gs_phospho));
% assignmentRule: variable = v_gs_native
	global_par_v_gs_native=x(6)/(x(6)+global_par_km_udpglc_gs_native);
% assignmentRule: variable = v_gs_phospho
	global_par_v_gs_phospho=x(6)/(x(6)+global_par_km_udpglc_gs_phospho);
% assignmentRule: variable = v_GS
	global_par_v_GS=global_par_vmax_gs*((global_par_ONE-global_par_gamma_gs)*global_par_v_gs_native+global_par_gamma_gs*global_par_v_gs_phospho);
% assignmentRule: variable = v_LACT
	global_par_v_LACT=global_par_vmax_lact*(x(2)-x(19))/(global_par_ONE+x(19)/global_par_km_lac_lact+x(2)/global_par_km_lac_ext_lact);
% assignmentRule: variable = v_LDH
	global_par_v_LDH=global_par_vmax_ldh*(x(17)*x(44)-x(19)*x(43)/global_par_keq_ldh)/((global_par_ONE+x(44)/global_par_km_nadh_ldh)*(global_par_ONE+x(17)/global_par_km_pyr_ldh)+(global_par_ONE+x(43)/global_par_km_nad_ldh)*(global_par_ONE+x(19)/global_par_km_lac_ldh)-global_par_ONE);
% assignmentRule: variable = v_MALT
	global_par_v_MALT=global_par_vmax_malt*(x(27)*x(40)-x(20)*x(28))/((global_par_ONE+x(27)/global_par_km_mal_mito_malt)*(global_par_ONE+x(40)/global_par_km_p_malt)+(global_par_ONE+x(20)/global_par_km_mal_malt)*(global_par_ONE+x(28)/global_par_km_p_mito_malt)-global_par_ONE);
% assignmentRule: variable = v_MDH
	global_par_v_MDH=global_par_vmax_mdh*(x(20)*x(43)-x(18)*x(44)/global_par_keq_mdh)/((global_par_ONE+x(20)/global_par_km_mal_mdh)*(global_par_ONE+x(43)/global_par_km_nad_mdh)+(global_par_ONE+x(44)/global_par_km_nadh_mdh)*(global_par_ONE+x(18)/global_par_km_oa_mdh)-global_par_ONE);
% assignmentRule: variable = v_MDH_mito
	global_par_v_MDH_mito=global_par_vmax_mdh_mito*(x(27)*x(50)-x(24)*x(49)/global_par_keq_mdh_mito)/((global_par_ONE+x(27)/global_par_km_mal_mito_mdh_mito)*(global_par_ONE+x(50)/global_par_km_nad_mito_mdh_mito)+(global_par_ONE+x(49)/global_par_km_nadh_mito_mdh_mito)*(global_par_ONE+x(24)/global_par_km_oa_mito_mdh_mito)-global_par_ONE);
% assignmentRule: variable = v_NDK_GTP
	global_par_v_NDK_GTP=global_par_vmax_ndk_gtp*(x(32)*x(38)-x(37)*x(33)/global_par_keq_ndk)/((global_par_ONE+x(32)/global_par_km_atp_ndk)*(global_par_ONE+x(38)/global_par_km_gdp_ndk)+(global_par_ONE+x(33)/global_par_km_adp_ndk)*(global_par_ONE+x(37)/global_par_km_gtp_ndk)-global_par_ONE);
% assignmentRule: variable = v_NDK_UTP
	global_par_v_NDK_UTP=global_par_vmax_ndk_utp*(x(32)*x(36)-x(35)*x(33)/global_par_keq_ndk)/((global_par_ONE+x(32)/global_par_km_atp_ndk)*(global_par_ONE+x(36)/global_par_km_udp_ndk)+(global_par_ONE+x(33)/global_par_km_adp_ndk)*(global_par_ONE+x(35)/global_par_km_utp_ndk)-global_par_ONE);
% assignmentRule: variable = v_NDK_GTP_mito
	global_par_v_NDK_GTP_mito=global_par_vmax_ndk_gtp_mito*(x(45)*x(48)-x(47)*x(46)/global_par_keq_ndk)/((global_par_ONE+x(45)/global_par_km_atp_mito_ndk)*(global_par_ONE+x(48)/global_par_km_gdp_mito_ndk)+(global_par_ONE+x(46)/global_par_km_adp_mito_ndk)*(global_par_ONE+x(47)/global_par_km_gtp_mito_ndk)-global_par_ONE);
% assignmentRule: variable = v_PC
	global_par_v_PC=global_par_vmax_PC*(x(45)*x(26)*x(23)-x(24)*x(46)*x(28)/global_par_keq_pc)/((x(45)+global_par_km_atp_mito_pc)*(x(26)+global_par_km_pyr_mito_pc)*(x(23)+global_par_km_co2_mito_pc));
% assignmentRule: variable = v_PEPCK
	global_par_v_PEPCK=global_par_vmax_pepck*(x(18)*x(37)-x(16)*x(38)*x(42)/global_par_keq_pepck)/((global_par_ONE+x(18)/global_par_km_oa_pepck)*(global_par_ONE+x(37)/global_par_km_gtp_pepck)+(global_par_ONE+x(16)/global_par_km_pep_pepck)*(global_par_ONE+x(38)/global_par_km_gdp_pepck)*(global_par_ONE+x(42)/global_par_km_co2_pepck)-global_par_ONE);
% assignmentRule: variable = v_PEPCK_mito
	global_par_v_PEPCK_mito=global_par_vmax_pepck_mito*(x(24)*x(47)-x(25)*x(48)*x(23)/global_par_keq_pepck_mito)/((global_par_ONE+x(24)/global_par_km_oa_mito_pepck_mito)*(global_par_ONE+x(47)/global_par_km_gtp_mito_pepck_mito)+(global_par_ONE+x(25)/global_par_km_pep_mito_pepck_mito)*(global_par_ONE+x(48)/global_par_km_gdp_mito_pepck_mito)*(global_par_ONE+x(23)/global_par_km_co2_mito_pepck_mito)-global_par_ONE);
% assignmentRule: variable = keq_pept
	global_par_keq_pept=exp(global_par_M1*global_par_Vmm*global_par_F/(global_par_R*global_par_T));
% assignmentRule: variable = v_PEPT
	global_par_v_PEPT=global_par_vmax_pept*(x(25)-x(16)/global_par_keq_pept)/(global_par_ONE+x(16)/global_par_km_pep_pept+x(25)/global_par_km_pep_mito_pept);
% assignmentRule: variable = km_atp_pfk1
	global_par_km_atp_pfk1=global_par_k0_atp_pfk1_km_atp*x(10)/(x(10)+global_par_ka_fru26bp_pfk1_km_atp);
% assignmentRule: variable = ki_atp_pfk1
	global_par_ki_atp_pfk1=global_par_ki0_atp_pfk1*(global_par_ONE+global_par_f_fru26bp_pfk1_ki_atp*x(10)/(x(10)+global_par_ka_fru26bp_pfk1_ki_atp));
% assignmentRule: variable = km_fru6p_pfk1
	global_par_km_fru6p_pfk1=global_par_k0_fru6p_pfk1_km_fru6p*(global_par_ONE+x(32)/global_par_ki_atp_pfk1_km_fru6p)*(global_par_ONE+x(21)/global_par_ki_cit_pfk1_km_fru6p)*(global_par_ONE-global_par_f_amp_pfk1_km_fru6p*x(34)^global_par_n_amp_pfk1_km_fru6p/(x(34)^global_par_n_amp_pfk1_km_fru6p+global_par_ka_amp_pfk1_km_fru6p^global_par_n_amp_pfk1_km_fru6p))*(global_par_ONE-global_par_f_p_pfk1_km_fru6p*x(40)/(x(40)+global_par_ka_p_pfk1_km_fru6p))*(global_par_ONE-global_par_f_fru26bp_pfk1_km_fru6p*x(10)^global_par_n_fru26bp_pfk1_km_fru6p/(x(10)^global_par_n_fru26bp_pfk1_km_fru6p+global_par_ka_fru26bp_pfk1_km_fru6p^global_par_n_fru26bp_pfk1_km_fru6p));
% assignmentRule: variable = n_fru6p_pfk1
	global_par_n_fru6p_pfk1=(global_par_n0_pfk1_n_fru6p+x(32)^global_par_n_atp_pfk1_n_fru6p/(x(32)^global_par_n_atp_pfk1_n_fru6p+global_par_ki_atp_pfk1_n_fru6p^global_par_n_atp_pfk1_n_fru6p))*(global_par_ONE-global_par_f_amp_pfk1_n_fru6p*x(34)^global_par_n_amp_pfk1_n_fru6p/(x(34)^global_par_n_amp_pfk1_n_fru6p+global_par_ka_amp_pfk1_n_fru6p^global_par_n_amp_pfk1_n_fru6p))*(global_par_ONE+global_par_f_cit_pfk1_n_fru6p*x(21)^global_par_n_cit_pfk1_n_fru6p/(x(21)^global_par_n_cit_pfk1_n_fru6p+global_par_ki_cit_pfk1_n_fru6p^global_par_n_cit_pfk1_n_fru6p))*(global_par_ONE-global_par_f_p_pfk1_n_fru6p*x(40)^global_par_n_p_pfk1_n_fru6p/(x(40)^global_par_n_p_pfk1_n_fru6p+global_par_ka_p_pfk1_n_fru6p^global_par_n_p_pfk1_n_fru6p))*(global_par_ONE-global_par_f_fru26bp_pfk1_n_fru6p*x(10)^global_par_n_fru26bp_pfk1_n_fru6p/(x(10)^global_par_n_fru26bp_pfk1_n_fru6p+global_par_ka_fru26bp_pfk1_n_fru6p^global_par_n_fru26bp_pfk1_n_fru6p));
% assignmentRule: variable = v_PFK1
	global_par_v_PFK1=global_par_vmax_pfk1*x(32)/(x(32)+global_par_km_atp_pfk1)*(global_par_ONE-x(32)^global_par_ni_pfk1/(x(32)^global_par_ni_pfk1+global_par_ki_atp_pfk1^global_par_ni_pfk1))*x(8)^global_par_n_fru6p_pfk1/(x(8)^global_par_n_fru6p_pfk1+global_par_km_fru6p_pfk1^global_par_n_fru6p_pfk1);
% assignmentRule: variable = v_pfk2_native
	global_par_v_pfk2_native=x(8)^global_par_n_fru6p_pfk2_native/(x(8)^global_par_n_fru6p_pfk2_native+global_par_km_fru6p_pfk2_native^global_par_n_fru6p_pfk2_native)*x(32)/(x(32)+global_par_km_atp_pfk2_native)*(global_par_ONE-global_par_n0_pfk2*x(16)/(x(16)+global_par_ki_pep_pfk2));
% assignmentRule: variable = v_pfk2_phospho
	global_par_v_pfk2_phospho=x(8)^global_par_n_fru6p_pfk2_phospho/(x(8)^global_par_n_fru6p_pfk2_phospho+global_par_km_fru6p_pfk2_phospho^global_par_n_fru6p_pfk2_phospho)*x(32)/(x(32)+global_par_km_atp_pfk2_phospho)*(global_par_ONE-global_par_n0_pfk2*x(16)/(x(16)+global_par_ki_pep_pfk2));
% assignmentRule: variable = v_PFK2
	global_par_v_PFK2=global_par_vmax_pfk2*((global_par_ONE-global_par_gamma_pfk2)*global_par_v_pfk2_native+global_par_gamma_pfk2*global_par_v_pfk2_phospho);
% assignmentRule: variable = v_fbp2_native
	global_par_v_fbp2_native=x(10)/(x(10)+global_par_km_fru26bp_fbp2_native)/(global_par_ONE+x(8)/global_par_ki_fru6p_fbp2_native);
% assignmentRule: variable = v_fbp2_phospho
	global_par_v_fbp2_phospho=global_par_f_fbp2_phospho*x(10)/(x(10)+global_par_km_fru26bp_fbp2_phospho)/(global_par_ONE+x(8)/global_par_ki_fru6p_fbp2_phospho);
% assignmentRule: variable = v_FBP2
	global_par_v_FBP2=global_par_vmax_fbp2*((global_par_ONE-global_par_gamma_fbp2)*global_par_v_fbp2_native+global_par_gamma_fbp2*global_par_v_fbp2_phospho);
% assignmentRule: variable = v_PGK
	global_par_v_PGK=global_par_vmax_pgk*(x(33)*x(13)-x(32)*x(14)/global_par_keq_pgk)/((global_par_ONE+x(33)/global_par_km_adp_pgk)*(global_par_ONE+x(13)/global_par_km_bpg13_pgk)+(global_par_ONE+x(32)/global_par_km_atp_pgk)*(global_par_ONE+x(14)/global_par_km_pg3_pgk)-global_par_ONE);
% assignmentRule: variable = v_PGM
	global_par_v_PGM=global_par_vmax_pgm*(x(14)-x(15)/global_par_keq_pgm)/(global_par_ONE+x(14)/global_par_km_pg3_pgm+x(15)/global_par_km_pg2_pgm);
% assignmentRule: variable = v_pk_native
	global_par_v_pk_native=x(16)/(x(16)+global_par_km_pep_pk_native*(global_par_ONE+x(32)/global_par_ki_atp_pk_native)*(global_par_ONE-x(9)/(x(9)+global_par_ka_fru16bp_pk_native)))*x(33)/(x(33)+global_par_km_adp_pk_native);
% assignmentRule: variable = v_pk_phospho
	global_par_v_pk_phospho=x(16)^global_par_n_pk_phospho/(x(16)^global_par_n_pk_phospho+(global_par_km_pep_pk_phospho*(global_par_ONE+x(32)/global_par_ki_atp_pk_phospho)*(global_par_ONE-x(9)/(x(9)+global_par_ka_fru16bp_pk_phospho)))^global_par_n_pk_phospho)*x(33)/(x(33)+global_par_km_adp_pk_phospho);
% assignmentRule: variable = v_PK
	global_par_v_PK=global_par_vmax_pk*((global_par_ONE-global_par_gamma_pk)*global_par_v_pk_native+global_par_gamma_pk*global_par_v_pk_phospho);
% assignmentRule: variable = v_PyrMalT
	global_par_v_PyrMalT=global_par_vmax_pyrmalt*(x(27)*x(17)-x(20)*x(26))/((global_par_ONE+x(27)/global_par_km_mal_mito_pyrmalt)*(global_par_ONE+x(17)/global_par_km_pyr_pyrmalt)+(global_par_ONE+x(20)/global_par_km_mal_pyrmalt)*(global_par_ONE+x(26)/global_par_km_pyr_mito_pyrmalt)-global_par_ONE);
% assignmentRule: variable = v_PyrT
	global_par_v_PyrT=global_par_vmax_pyrt*(x(17)*x(22)-x(26)*x(29))/(global_par_ONE+x(17)/global_par_km_pyr_pyrt+x(26)/global_par_km_pyr_mito_pyrt);
% assignmentRule: variable = v_TPI
	global_par_v_TPI=global_par_vmax_tpi*(x(12)-x(11)/global_par_keq_tpi)/(global_par_ONE+x(12)/global_par_km_dhap_tpi+x(11)/global_par_km_gap_tpi);
% assignmentRule: variable = v_UGT
	global_par_v_UGT=global_par_vmax_ugt*(x(35)*x(5)-x(6)*x(39)/global_par_keq_ugt)/((global_par_ONE+x(35)/global_par_km_utp_ugt)*(global_par_ONE+x(5)/global_par_km_glc1p_ugt)+(global_par_ONE+x(6)/global_par_km_udpglc_ugt)*(global_par_ONE+x(39)/global_par_km_pp_ugt)-global_par_ONE);

% Reaction: id = ALD
	reaction_ALD=global_par_v_ALD;

% Reaction: id = EN
	reaction_EN=global_par_v_EN;

% Reaction: id = FBP1
	reaction_FBP1=global_par_v_FBP1;

% Reaction: id = GAPDH
	reaction_GAPDH=global_par_v_GAPDH;

% Reaction: id = GK
	reaction_GK=global_par_v_GK;

% Reaction: id = GLCT_ER
	reaction_GLCT_ER=global_par_v_GLCT_ER;

% Reaction: id = GLUT2
	reaction_GLUT2=global_par_v_GLUT2;

% Reaction: id = GP
	reaction_GP=global_par_v_GP;

% Reaction: id = G6P_ER
	reaction_G6P_ER=global_par_v_G6P_ER;

% Reaction: id = GPI
	reaction_GPI=global_par_v_GPI;

% Reaction: id = G1PI
	reaction_G1PI=global_par_v_G1PI;

% Reaction: id = G6PT_ER
	reaction_G6PT_ER=global_par_v_G6PT_ER;

% Reaction: id = GS
	reaction_GS=global_par_v_GS;

% Reaction: id = LACT
	reaction_LACT=global_par_v_LACT;

% Reaction: id = LDH
	reaction_LDH=global_par_v_LDH;

% Reaction: id = MALT
	reaction_MALT=global_par_v_MALT;

% Reaction: id = MDH
	reaction_MDH=global_par_v_MDH;

% Reaction: id = MDH_mito
	reaction_MDH_mito=global_par_v_MDH_mito;

% Reaction: id = NDK_GTP
	reaction_NDK_GTP=global_par_v_NDK_GTP;

% Reaction: id = NDK_UTP
	reaction_NDK_UTP=global_par_v_NDK_UTP;

% Reaction: id = NDK_GTP_mito
	reaction_NDK_GTP_mito=global_par_v_NDK_GTP_mito;

% Reaction: id = PC
	reaction_PC=global_par_v_PC;

% Reaction: id = PEPCK
	reaction_PEPCK=global_par_v_PEPCK;

% Reaction: id = PEPCK_mito
	reaction_PEPCK_mito=global_par_v_PEPCK_mito;

% Reaction: id = PEPT
	reaction_PEPT=global_par_v_PEPT;

% Reaction: id = PFK1
	reaction_PFK1=global_par_v_PFK1;

% Reaction: id = PFK2
	reaction_PFK2=global_par_v_PFK2;

% Reaction: id = FBP2
	reaction_FBP2=global_par_v_FBP2;

% Reaction: id = PGK
	reaction_PGK=global_par_v_PGK;

% Reaction: id = PGM
	reaction_PGM=global_par_v_PGM;

% Reaction: id = PK
	reaction_PK=global_par_v_PK;

% Reaction: id = PyrMalT
	reaction_PyrMalT=global_par_v_PyrMalT;

% Reaction: id = PyrT
	reaction_PyrT=global_par_v_PyrT;

% Reaction: id = TPI
	reaction_TPI=global_par_v_TPI;

% Reaction: id = UGT
	reaction_UGT=global_par_v_UGT;

	xdot=zeros(50,1);
	
% Species:   id = glc_ext, name = glc_ext
% Warning species is not changed by either rules or reactions
	xdot(1) = ;
	
% Species:   id = lac_ext, name = lac_ext
% Warning species is not changed by either rules or reactions
	xdot(2) = ;
	
% Species:   id = glc, name = glc, affected by kineticLaw
	xdot(3) = (1/(compartment_cyto))*((-1.0 * reaction_GK) + (-1.0 * reaction_GLCT_ER) + ( 1.0 * reaction_GLUT2));
	
% Species:   id = glc6p, name = glc6p, affected by kineticLaw
	xdot(4) = (1/(compartment_cyto))*(( 1.0 * reaction_GK) + (-1.0 * reaction_GPI) + ( 1.0 * reaction_G1PI) + (-1.0 * reaction_G6PT_ER));
	
% Species:   id = glc1p, name = glc1p, affected by kineticLaw
	xdot(5) = (1/(compartment_cyto))*(( 1.0 * reaction_GP) + (-1.0 * reaction_G1PI) + (-1.0 * reaction_UGT));
	
% Species:   id = udpglc, name = udpglc, affected by kineticLaw
	xdot(6) = (1/(compartment_cyto))*((-1.0 * reaction_GS) + ( 1.0 * reaction_UGT));
	
% Species:   id = glyglc, name = glyglc, affected by kineticLaw
	xdot(7) = (1/(compartment_cyto))*((-1.0 * reaction_GP) + ( 1.0 * reaction_GS));
	
% Species:   id = fru6p, name = fru6p, affected by kineticLaw
	xdot(8) = (1/(compartment_cyto))*(( 1.0 * reaction_FBP1) + ( 1.0 * reaction_GPI) + (-1.0 * reaction_PFK1) + (-1.0 * reaction_PFK2) + ( 1.0 * reaction_FBP2));
	
% Species:   id = fru16bp, name = fru16bp, affected by kineticLaw
	xdot(9) = (1/(compartment_cyto))*((-1.0 * reaction_ALD) + (-1.0 * reaction_FBP1) + ( 1.0 * reaction_PFK1));
	
% Species:   id = fru26bp, name = fru26bp, affected by kineticLaw
	xdot(10) = (1/(compartment_cyto))*(( 1.0 * reaction_PFK2) + (-1.0 * reaction_FBP2));
	
% Species:   id = gap, name = gap, affected by kineticLaw
	xdot(11) = (1/(compartment_cyto))*(( 1.0 * reaction_ALD) + (-1.0 * reaction_GAPDH) + ( 1.0 * reaction_TPI));
	
% Species:   id = dhap, name = dhap, affected by kineticLaw
	xdot(12) = (1/(compartment_cyto))*(( 1.0 * reaction_ALD) + (-1.0 * reaction_TPI));
	
% Species:   id = bpg13, name = bpg13, affected by kineticLaw
	xdot(13) = (1/(compartment_cyto))*(( 1.0 * reaction_GAPDH) + (-1.0 * reaction_PGK));
	
% Species:   id = pg3, name = pg3, affected by kineticLaw
	xdot(14) = (1/(compartment_cyto))*(( 1.0 * reaction_PGK) + (-1.0 * reaction_PGM));
	
% Species:   id = pg2, name = pg2, affected by kineticLaw
	xdot(15) = (1/(compartment_cyto))*((-1.0 * reaction_EN) + ( 1.0 * reaction_PGM));
	
% Species:   id = pep, name = pep, affected by kineticLaw
	xdot(16) = (1/(compartment_cyto))*(( 1.0 * reaction_EN) + ( 1.0 * reaction_PEPCK) + ( 1.0 * reaction_PEPT) + (-1.0 * reaction_PK));
	
% Species:   id = pyr, name = pyr, affected by kineticLaw
	xdot(17) = (1/(compartment_cyto))*((-1.0 * reaction_LDH) + ( 1.0 * reaction_PK) + (-1.0 * reaction_PyrMalT) + (-1.0 * reaction_PyrT));
	
% Species:   id = oa, name = oa, affected by kineticLaw
	xdot(18) = (1/(compartment_cyto))*(( 1.0 * reaction_MDH) + (-1.0 * reaction_PEPCK));
	
% Species:   id = lac, name = lac, affected by kineticLaw
	xdot(19) = (1/(compartment_cyto))*(( 1.0 * reaction_LACT) + ( 1.0 * reaction_LDH));
	
% Species:   id = mal, name = mal, affected by kineticLaw
	xdot(20) = (1/(compartment_cyto))*(( 1.0 * reaction_MALT) + (-1.0 * reaction_MDH) + ( 1.0 * reaction_PyrMalT));
	
% Species:   id = cit, name = cit
% Warning species is not changed by either rules or reactions
	xdot(21) = ;
	
% Species:   id = h, name = h
% Warning species is not changed by either rules or reactions
	xdot(22) = ;
	
% Species:   id = co2_mito, name = co2_mito
% Warning species is not changed by either rules or reactions
	xdot(23) = ;
	
% Species:   id = oa_mito, name = oa_mito, affected by kineticLaw
	xdot(24) = (1/(compartment_mito))*(( 1.0 * reaction_MDH_mito) + ( 1.0 * reaction_PC) + (-1.0 * reaction_PEPCK_mito));
	
% Species:   id = pep_mito, name = pep_mito, affected by kineticLaw
	xdot(25) = (1/(compartment_mito))*(( 1.0 * reaction_PEPCK_mito) + (-6.0 * reaction_PEPT));
	
% Species:   id = pyr_mito, name = pyr_mito, affected by kineticLaw
	xdot(26) = (1/(compartment_mito))*((-1.0 * reaction_PC) + ( 6.0 * reaction_PyrMalT) + ( 6.0 * reaction_PyrT));
	
% Species:   id = mal_mito, name = mal_mito, affected by kineticLaw
	xdot(27) = (1/(compartment_mito))*((-6.0 * reaction_MALT) + (-1.0 * reaction_MDH_mito) + (-6.0 * reaction_PyrMalT));
	
% Species:   id = p_mito, name = p_mito
% Warning species is not changed by either rules or reactions
	xdot(28) = ;
	
% Species:   id = h_mito, name = h_mito
% Warning species is not changed by either rules or reactions
	xdot(29) = ;
	
% Species:   id = glc_er, name = glc_er, affected by kineticLaw
	xdot(30) = (1/(compartment_er))*(( 1.0 * reaction_GLCT_ER) + ( 1.0 * reaction_G6P_ER));
	
% Species:   id = glc6p_er, name = glc6p_er, affected by kineticLaw
	xdot(31) = (1/(compartment_er))*((-1.0 * reaction_G6P_ER) + ( 1.0 * reaction_G6PT_ER));
	
% Species:   id = atp, name = atp
% Warning species is not changed by either rules or reactions
	xdot(32) = ;
	
% Species:   id = adp, name = adp
% Warning species is not changed by either rules or reactions
	xdot(33) = ;
	
% Species:   id = amp, name = amp
% Warning species is not changed by either rules or reactions
	xdot(34) = ;
	
% Species:   id = utp, name = utp, affected by kineticLaw
	xdot(35) = (1/(compartment_cyto))*(( 1.0 * reaction_NDK_UTP) + (-1.0 * reaction_UGT));
	
% Species:   id = udp, name = udp, affected by kineticLaw
	xdot(36) = (1/(compartment_cyto))*(( 1.0 * reaction_GS) + (-1.0 * reaction_NDK_UTP));
	
% Species:   id = gtp, name = gtp, affected by kineticLaw
	xdot(37) = (1/(compartment_cyto))*(( 1.0 * reaction_NDK_GTP) + (-1.0 * reaction_PEPCK));
	
% Species:   id = gdp, name = gdp, affected by kineticLaw
	xdot(38) = (1/(compartment_cyto))*((-1.0 * reaction_NDK_GTP) + ( 1.0 * reaction_PEPCK));
	
% Species:   id = pp, name = pp
% Warning species is not changed by either rules or reactions
	xdot(39) = ;
	
% Species:   id = p, name = p
% Warning species is not changed by either rules or reactions
	xdot(40) = ;
	
% Species:   id = p_er, name = p_er
% Warning species is not changed by either rules or reactions
	xdot(41) = ;
	
% Species:   id = co2, name = co2
% Warning species is not changed by either rules or reactions
	xdot(42) = ;
	
% Species:   id = nad, name = nad
% Warning species is not changed by either rules or reactions
	xdot(43) = ;
	
% Species:   id = nadh, name = nadh
% Warning species is not changed by either rules or reactions
	xdot(44) = ;
	
% Species:   id = atp_mito, name = atp_mito
% Warning species is not changed by either rules or reactions
	xdot(45) = ;
	
% Species:   id = adp_mito, name = adp_mito
% Warning species is not changed by either rules or reactions
	xdot(46) = ;
	
% Species:   id = gtp_mito, name = gtp_mito, affected by kineticLaw
	xdot(47) = (1/(compartment_mito))*(( 1.0 * reaction_NDK_GTP_mito) + (-1.0 * reaction_PEPCK_mito));
	
% Species:   id = gdp_mito, name = gdp_mito, affected by kineticLaw
	xdot(48) = (1/(compartment_mito))*((-1.0 * reaction_NDK_GTP_mito) + ( 1.0 * reaction_PEPCK_mito));
	
% Species:   id = nadh_mito, name = nadh_mito
% Warning species is not changed by either rules or reactions
	xdot(49) = ;
	
% Species:   id = nad_mito, name = nad_mito
% Warning species is not changed by either rules or reactions
	xdot(50) = ;
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


