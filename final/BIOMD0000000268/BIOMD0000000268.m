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
% Model name = Reed2008_Glutathione_Metabolism
%
% is http://identifiers.org/biomodels.db/MODEL1007200001
% is http://identifiers.org/biomodels.db/BIOMD0000000268
% isDescribedBy http://identifiers.org/pubmed/18442411
% isDerivedFrom http://identifiers.org/biomodels.db/MODEL1007200000
%


function main()
%Initial conditions vector
	x0=zeros(44,1);
	x0(1) = 0;
	x0(2) = 0;
	x0(3) = 10.0;
	x0(4) = 50.0;
	x0(5) = 50.0;
	x0(6) = 20.0;
	x0(7) = 20.1;
	x0(8) = 0.01;
	x0(9) = 0.0;
	x0(10) = 500.0;
	x0(11) = 0;
	x0(12) = 0;
	x0(13) = 4.4965335653401;
	x0(14) = 0.506278119133034;
	x0(15) = 0.278602708139276;
	x0(16) = 3.40907070478307;
	x0(17) = 0.0385952337473159;
	x0(18) = 1.66610924423152;
	x0(19) = 1.54929073348709;
	x0(20) = 15.9087989350187;
	x0(21) = 221.101111778807;
	x0(22) = 60.4330872702655;
	x0(23) = 185.50378543937;
	x0(24) = 0.484328542816829;
	x0(25) = 12.6996048211362;
	x0(26) = 0.942750394171554;
	x0(27) = 3219.39793573653;
	x0(28) = 194.96740946034;
	x0(29) = 9.80842470037426;
	x0(30) = 924.429820216685;
	x0(31) = 61.3019611792609;
	x0(32) = 6590.56824161192;
	x0(33) = 36.8825861752429;
	x0(34) = 1.12248362561721;
	x0(35) = 562.834377270222;
	x0(36) = 19.1432773636787;
	x0(37) = 81.1684566962769;
	x0(38) = 49.18682158;
	x0(39) = 13.0888186429922;
	x0(40) = 2114.87119909779;
	x0(41) = 2040.43402532595;
	x0(42) = 55.820116666595;
	x0(43) = 9.16245914628594;
	x0(44) = 0.707382712261505;


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

% Compartment: id = blood, name = blood, constant
	compartment_blood=1.0;
% Compartment: id = cytosol, name = cytosol, constant
	compartment_cytosol=1.0;
% Compartment: id = mito, name = mitochondrion, constant
	compartment_mito=1.0;
% Compartment: id = cell, name = cell, constant
	compartment_cell=1.0;
% Parameter:   id =  tot_cfol, name = tot_cfol
% Parameter:   id =  tot_mfol, name = tot_mfol
% Parameter:   id =  V_oCys_b, name = V_oCys_b
% Parameter:   id =  V_oGly_b, name = V_oGly_b
% Parameter:   id =  V_oGlu_b, name = V_oGlu_b
% Parameter:   id =  V_gshHb, name = V_gshHb
	global_par_V_gshHb=150.0;
% Parameter:   id =  K_gshHb, name = K_gshHb
	global_par_K_gshHb=150.0;
% Parameter:   id =  V_gshLb, name = V_gshLb
	global_par_V_gshLb=1100.0;
% Parameter:   id =  h_gshLb, name = h_gshLb
	global_par_h_gshLb=3.0;
% Parameter:   id =  K_gshLb, name = K_gshLb
	global_par_K_gshLb=3000.0;
% Parameter:   id =  V_gsgHb, name = V_gsgHb
	global_par_V_gsgHb=40.0;
% Parameter:   id =  K_gsgHb, name = K_gsgHb
	global_par_K_gsgHb=1250.0;
% Parameter:   id =  V_gsgLb, name = V_gsgLb
	global_par_V_gsgLb=4025.0;
% Parameter:   id =  K_gsgLb, name = K_gsgLb
	global_par_K_gsgLb=7100.0;
% Parameter:   id =  V_bcysc, name = V_bcysc
	global_par_V_bcysc=14950.0;
% Parameter:   id =  K_bcysc, name = K_bcysc
	global_par_K_bcysc=2100.0;
% Parameter:   id =  V_bglutc, name = V_bglutc
	global_par_V_bglutc=28000.0;
% Parameter:   id =  K_bglutc, name = K_bglutc
	global_par_K_bglutc=300.0;
% Parameter:   id =  k_out_glu, name = k_out_glu
	global_par_k_out_glu=1.0;
% Parameter:   id =  V_bglyc, name = V_bglyc
	global_par_V_bglyc=4600.0;
% Parameter:   id =  K_bglyc, name = K_bglyc
	global_par_K_bglyc=150.0;
% Parameter:   id =  k_out_gly, name = k_out_gly
	global_par_k_out_gly=1.0;
% Parameter:   id =  V_bserc, name = V_bserc
	global_par_V_bserc=2700.0;
% Parameter:   id =  K_bserc, name = K_bserc
	global_par_K_bserc=150.0;
% Parameter:   id =  k_out_ser, name = k_out_ser
	global_par_k_out_ser=1.0;
% Parameter:   id =  V_bmetc, name = V_bmetc
	global_par_V_bmetc=913.4;
% Parameter:   id =  K_bmetc, name = K_bmetc
	global_par_K_bmetc=150.0;
% Parameter:   id =  k_out_met, name = k_out_met
	global_par_k_out_met=1.0;
% Parameter:   id =  Vm_mFTD, name = Vm_mFTD
	global_par_Vm_mFTD=1050.0;
% Parameter:   id =  K_10f_FTD, name = K_10f_FTD
	global_par_K_10f_FTD=20.0;
% Parameter:   id =  Vf_mSHMT, name = Vf_mSHMT
	global_par_Vf_mSHMT=11440.0;
% Parameter:   id =  K_thf_SHMT, name = K_thf_SHMT
	global_par_K_thf_SHMT=50.0;
% Parameter:   id =  K_ser_SHMT, name = K_ser_SHMT
	global_par_K_ser_SHMT=600.0;
% Parameter:   id =  Vr_mSHMT, name = Vr_mSHMT
	global_par_Vr_mSHMT=3.0E7;
% Parameter:   id =  K_gly_SHMT, name = K_gly_SHMT
	global_par_K_gly_SHMT=10000.0;
% Parameter:   id =  K_2cf_SHMT, name = K_2cf_SHMT
	global_par_K_2cf_SHMT=3200.0;
% Parameter:   id =  Vf_mFTS, name = Vf_mFTS
	global_par_Vf_mFTS=2000.0;
% Parameter:   id =  K_thf_mFTS, name = K_thf_mFTS
	global_par_K_thf_mFTS=3.0;
% Parameter:   id =  K_coo_mFTS, name = K_coo_mFTS
	global_par_K_coo_mFTS=43.0;
% Parameter:   id =  Vr_mFTS, name = Vr_mFTS
	global_par_Vr_mFTS=6300.0;
% Parameter:   id =  K_10f_mFTS, name = K_10f_mFTS
	global_par_K_10f_mFTS=22.0;
% Parameter:   id =  k1_mNE, name = k1_mNE
	global_par_k1_mNE=0.03;
% Parameter:   id =  k2_mNE, name = k2_mNE
	global_par_k2_mNE=20.0;
% Parameter:   id =  Vm_GDC, name = Vm_GDC
	global_par_Vm_GDC=15000.0;
% Parameter:   id =  K_thf_GDC, name = K_thf_GDC
	global_par_K_thf_GDC=50.0;
% Parameter:   id =  K_gly_GDC, name = K_gly_GDC
	global_par_K_gly_GDC=3400.0;
% Parameter:   id =  Vm_SDH, name = Vm_SDH
	global_par_Vm_SDH=15000.0;
% Parameter:   id =  K_thf_SDH, name = K_thf_SDH
	global_par_K_thf_SDH=50.0;
% Parameter:   id =  K_src_SDH, name = K_src_SDH
	global_par_K_src_SDH=320.0;
% Parameter:   id =  Vm_DMGD, name = Vm_DMGD
	global_par_Vm_DMGD=15000.0;
% Parameter:   id =  K_thf_DMGD, name = K_thf_DMGD
	global_par_K_thf_DMGD=50.0;
% Parameter:   id =  K_dmg_DMGD, name = K_dmg_DMGD
	global_par_K_dmg_DMGD=50.0;
% Parameter:   id =  Vf_mMTD, name = Vf_mMTD
	global_par_Vf_mMTD=180000.0;
% Parameter:   id =  K_2cf_MTD, name = K_2cf_MTD
	global_par_K_2cf_MTD=2.0;
% Parameter:   id =  Vr_MTD, name = Vr_MTD
	global_par_Vr_MTD=594000.0;
% Parameter:   id =  K_1cf_MTD, name = K_1cf_MTD
	global_par_K_1cf_MTD=10.0;
% Parameter:   id =  Vf_mMTCH, name = Vf_mMTCH
	global_par_Vf_mMTCH=790000.0;
% Parameter:   id =  K_1cf_MTCH, name = K_1cf_MTCH
	global_par_K_1cf_MTCH=250.0;
% Parameter:   id =  Vr_MTCH, name = Vr_MTCH
	global_par_Vr_MTCH=20000.0;
% Parameter:   id =  K_10f_MTCH, name = K_10f_MTCH
	global_par_K_10f_MTCH=100.0;
% Parameter:   id =  V_mser, name = V_mser
	global_par_V_mser=10000.0;
% Parameter:   id =  K_mser, name = K_mser
	global_par_K_mser=5700.0;
% Parameter:   id =  V_cser, name = V_cser
	global_par_V_cser=10000.0;
% Parameter:   id =  K_cser, name = K_cser
	global_par_K_cser=5700.0;
% Parameter:   id =  k_in_coo, name = k_in_coo
	global_par_k_in_coo=100.0;
% Parameter:   id =  k_out_coo, name = k_out_coo
	global_par_k_out_coo=100.0;
% Parameter:   id =  V_mgly, name = V_mgly
	global_par_V_mgly=10000.0;
% Parameter:   id =  K_mgly, name = K_mgly
	global_par_K_mgly=5700.0;
% Parameter:   id =  V_cgly, name = V_cgly
	global_par_V_cgly=10000.0;
% Parameter:   id =  K_cgly, name = K_cgly
	global_par_K_cgly=5700.0;
% Parameter:   id =  Vm_MS, name = Vm_MS
	global_par_Vm_MS=500.0;
% Parameter:   id =  K_5mf_MS, name = K_5mf_MS
	global_par_K_5mf_MS=25.0;
% Parameter:   id =  K_hcy_MS, name = K_hcy_MS
	global_par_K_hcy_MS=1.0;
% Parameter:   id =  ssH2O2, name = ssH2O2
	global_par_ssH2O2=0.01;
% Parameter:   id =  Ki_MS, name = Ki_MS
	global_par_Ki_MS=0.01;
% Parameter:   id =  Vm_DHFR, name = Vm_DHFR
	global_par_Vm_DHFR=2000.0;
% Parameter:   id =  K_dhf_DHFR, name = K_dhf_DHFR
	global_par_K_dhf_DHFR=0.5;
% Parameter:   id =  K_NADPH_DHFR, name = K_NADPH_DHFR
	global_par_K_NADPH_DHFR=4.0;
% Parameter:   id =  Vm_cFTD, name = Vm_cFTD
	global_par_Vm_cFTD=500.0;
% Parameter:   id =  Vm_PGT, name = Vm_PGT
	global_par_Vm_PGT=24300.0;
% Parameter:   id =  K_10f_PGT, name = K_10f_PGT
	global_par_K_10f_PGT=4.9;
% Parameter:   id =  K_GAR_PGT, name = K_GAR_PGT
	global_par_K_GAR_PGT=520.0;
% Parameter:   id =  Vm_cFTS, name = Vm_cFTS
	global_par_Vm_cFTS=3900.0;
% Parameter:   id =  K_thf_cFTS, name = K_thf_cFTS
	global_par_K_thf_cFTS=3.0;
% Parameter:   id =  K_coo_cFTS, name = K_coo_cFTS
	global_par_K_coo_cFTS=43.0;
% Parameter:   id =  Vf_cSHMT, name = Vf_cSHMT
	global_par_Vf_cSHMT=5200.0;
% Parameter:   id =  Vr_cSHMT, name = Vr_cSHMT
	global_par_Vr_cSHMT=1.5E7;
% Parameter:   id =  k1_cNE, name = k1_cNE
	global_par_k1_cNE=0.03;
% Parameter:   id =  k2_cNE, name = k2_cNE
	global_par_k2_cNE=22.0;
% Parameter:   id =  Vm_TS, name = Vm_TS
	global_par_Vm_TS=5000.0;
% Parameter:   id =  K_DUMP_TS, name = K_DUMP_TS
	global_par_K_DUMP_TS=6.3;
% Parameter:   id =  K_2cf_TS, name = K_2cf_TS
	global_par_K_2cf_TS=14.0;
% Parameter:   id =  Vm_MTHFR, name = Vm_MTHFR
	global_par_Vm_MTHFR=5300.0;
% Parameter:   id =  K_2cf_MTHFR, name = K_2cf_MTHFR
	global_par_K_2cf_MTHFR=50.0;
% Parameter:   id =  K_NADPH_MTHFR, name = K_NADPH_MTHFR
	global_par_K_NADPH_MTHFR=16.0;
% Parameter:   id =  Vf_cMTD, name = Vf_cMTD
	global_par_Vf_cMTD=80000.0;
% Parameter:   id =  Vr_cMTD, name = Vr_cMTD
	global_par_Vr_cMTD=600000.0;
% Parameter:   id =  Vf_cMTCH, name = Vf_cMTCH
	global_par_Vf_cMTCH=500000.0;
% Parameter:   id =  Vm_ART, name = Vm_ART
	global_par_Vm_ART=55000.0;
% Parameter:   id =  K_10f_ART, name = K_10f_ART
	global_par_K_10f_ART=5.9;
% Parameter:   id =  K_aic_ART, name = K_aic_ART
	global_par_K_aic_ART=100.0;
% Parameter:   id =  Vm_BHMT, name = Vm_BHMT
	global_par_Vm_BHMT=2160.0;
% Parameter:   id =  K_hcy_BHMT, name = K_hcy_BHMT
	global_par_K_hcy_BHMT=12.0;
% Parameter:   id =  K_bet_BHMT, name = K_bet_BHMT
	global_par_K_bet_BHMT=100.0;
% Parameter:   id =  Ki_BHMT, name = Ki_BHMT
	global_par_Ki_BHMT=0.01;
% Parameter:   id =  Vm_MAT1, name = Vm_MAT1
	global_par_Vm_MAT1=260.0;
% Parameter:   id =  Km_MAT1, name = Km_MAT1
	global_par_Km_MAT1=41.0;
% Parameter:   id =  Ki_MAT1, name = Ki_MAT1
	global_par_Ki_MAT1=2140.0;
% Parameter:   id =  Vm_MAT3, name = Vm_MAT3
	global_par_Vm_MAT3=220.0;
% Parameter:   id =  Km_MAT3, name = Km_MAT3
	global_par_Km_MAT3=300.0;
% Parameter:   id =  Ka_MAT3, name = Ka_MAT3
	global_par_Ka_MAT3=360.0;
% Parameter:   id =  Ki_MAT3, name = Ki_MAT3
	global_par_Ki_MAT3=4030.0;
% Parameter:   id =  Vm_GNMT, name = Vm_GNMT
	global_par_Vm_GNMT=260.0;
% Parameter:   id =  K_sam_GNMT, name = K_sam_GNMT
	global_par_K_sam_GNMT=63.0;
% Parameter:   id =  K_gly_GNMT, name = K_gly_GNMT
	global_par_K_gly_GNMT=130.0;
% Parameter:   id =  Ki_GNMT, name = Ki_GNMT
	global_par_Ki_GNMT=18.0;
% Parameter:   id =  Vm_DNMT, name = Vm_DNMT
	global_par_Vm_DNMT=180.0;
% Parameter:   id =  Km_DNMT, name = Km_DNMT
	global_par_Km_DNMT=1.4;
% Parameter:   id =  Ki_DNMT, name = Ki_DNMT
	global_par_Ki_DNMT=1.4;
% Parameter:   id =  Vf_SAHH, name = Vf_SAHH
	global_par_Vf_SAHH=320.0;
% Parameter:   id =  K_sah_SAHH, name = K_sah_SAHH
	global_par_K_sah_SAHH=6.5;
% Parameter:   id =  Vr_SAHH, name = Vr_SAHH
	global_par_Vr_SAHH=4530.0;
% Parameter:   id =  K_hcy_SAHH, name = K_hcy_SAHH
	global_par_K_hcy_SAHH=150.0;
% Parameter:   id =  Vm_CBS, name = Vm_CBS
	global_par_Vm_CBS=420000.0;
% Parameter:   id =  K_hcy_CBS, name = K_hcy_CBS
	global_par_K_hcy_CBS=1000.0;
% Parameter:   id =  K_ser_CBS, name = K_ser_CBS
	global_par_K_ser_CBS=2000.0;
% Parameter:   id =  Ka_CBS, name = Ka_CBS
	global_par_Ka_CBS=0.035;
% Parameter:   id =  Vm_CTGL, name = Vm_CTGL
	global_par_Vm_CTGL=1500.0;
% Parameter:   id =  K_cyt_CTGL, name = K_cyt_CTGL
	global_par_K_cyt_CTGL=500.0;
% Parameter:   id =  Vm_GCS, name = Vm_GCS
	global_par_Vm_GCS=3600.0;
% Parameter:   id =  Ke_GCS, name = Ke_GCS
	global_par_Ke_GCS=5597.0;
% Parameter:   id =  K_cys_GCS, name = K_cys_GCS
	global_par_K_cys_GCS=100.0;
% Parameter:   id =  K_glu_GCS, name = K_glu_GCS
	global_par_K_glu_GCS=1900.0;
% Parameter:   id =  Ki_GCS, name = Ki_GCS
	global_par_Ki_GCS=8200.0;
% Parameter:   id =  Kp_GCS, name = Kp_GCS
	global_par_Kp_GCS=300.0;
% Parameter:   id =  Ka_GCS, name = Ka_GCS
	global_par_Ka_GCS=0.01;
% Parameter:   id =  Vm_GS, name = Vm_GS
	global_par_Vm_GS=5400.0;
% Parameter:   id =  Ke_GS, name = Ke_GS
	global_par_Ke_GS=5600.0;
% Parameter:   id =  K_gly_GS, name = K_gly_GS
	global_par_K_gly_GS=300.0;
% Parameter:   id =  K_glc_GS, name = K_glc_GS
	global_par_K_glc_GS=22.0;
% Parameter:   id =  Kp_GS, name = Kp_GS
	global_par_Kp_GS=30.0;
% Parameter:   id =  Vm_GPX, name = Vm_GPX
	global_par_Vm_GPX=4500.0;
% Parameter:   id =  K_gsh_GPX, name = K_gsh_GPX
	global_par_K_gsh_GPX=1330.0;
% Parameter:   id =  K_H2O2_GPX, name = K_H2O2_GPX
	global_par_K_H2O2_GPX=0.09;
% Parameter:   id =  Vm_GR, name = Vm_GR
	global_par_Vm_GR=892.5;
% Parameter:   id =  K_gsg_GR, name = K_gsg_GR
	global_par_K_gsg_GR=107.0;
% Parameter:   id =  K_NADPH_GR, name = K_NADPH_GR
	global_par_K_NADPH_GR=10.4;
% Parameter:   id =  dinner, name = dinner
	global_par_dinner=3.25;
% Parameter:   id =  lunch, name = lunch
	global_par_lunch=1.75;
% Parameter:   id =  breakfast, name = breakfast
	global_par_breakfast=1.75;
% Parameter:   id =  fasting, name = fasting
	global_par_fasting=0.25;
% Parameter:   id =  daytime, name = daytime
% Parameter:   id =  aa_input, name = Aminoacid_input
% Parameter:   id =  b_met_basal, name = b_met_basal
	global_par_b_met_basal=30.0;
% Parameter:   id =  b_ser_basal, name = b_ser_basal
	global_par_b_ser_basal=150.0;
% Parameter:   id =  V_oGly_b_basal, name = V_oGly_b_basal
	global_par_V_oGly_b_basal=630.0;
% Parameter:   id =  V_oGlu_b_basal, name = V_oGlu_b_basal
	global_par_V_oGlu_b_basal=273.0;
% Parameter:   id =  V_oCys_b_basal, name = V_oCys_b_basal
	global_par_V_oCys_b_basal=70.0;
% Parameter:   id =  k_out_cys, name = k_out_cys
	global_par_k_out_cys=1.0;
% assignmentRule: variable = b_met
	x(1)=global_par_aa_input*global_par_b_met_basal;
% assignmentRule: variable = b_ser
	x(2)=global_par_aa_input*global_par_b_ser_basal;
% assignmentRule: variable = tot_cfol
	global_par_tot_cfol=x(13)+x(14)+x(15)+x(16)+x(17)+x(11);
% assignmentRule: variable = tot_mfol
	global_par_tot_mfol=x(12)+x(18)+x(19)+x(20);
% assignmentRule: variable = V_oCys_b
	global_par_V_oCys_b=global_par_aa_input*global_par_V_oCys_b_basal;
% assignmentRule: variable = V_oGly_b
	global_par_V_oGly_b=global_par_aa_input*global_par_V_oGly_b_basal;
% assignmentRule: variable = V_oGlu_b
	global_par_V_oGlu_b=global_par_aa_input*global_par_V_oGlu_b_basal;
% assignmentRule: variable = daytime
	global_par_daytime=time-24*floor(time/24);
% assignmentRule: variable = aa_input
	global_par_aa_input=piecewise(global_par_breakfast, (7 <= global_par_daytime) && (global_par_daytime <= 10), global_par_lunch, (12 <= global_par_daytime) && (global_par_daytime <= 15), global_par_dinner, (18 <= global_par_daytime) && (global_par_daytime <= 21), global_par_fasting);

% Reaction: id = b_gsh_decomp
	reaction_b_gsh_decomp=compartment_blood*90*x(25);

% Reaction: id = b_gsg_decomp
	reaction_b_gsg_decomp=compartment_blood*67.5*x(24);

% Reaction: id = b_cys_cystine_conv
	reaction_b_cys_cystine_conv=compartment_blood*0.25*x(23);

% Reaction: id = b_cys_loss
	reaction_b_cys_loss=compartment_blood*0.1*x(23);

% Reaction: id = b_glu_loss
	reaction_b_glu_loss=compartment_blood*0.1*x(22);

% Reaction: id = b_gly_loss
	reaction_b_gly_loss=compartment_blood*0.1*x(21);

% Reaction: id = b_gsh_loss
	reaction_b_gsh_loss=compartment_blood*0.7*x(25);

% Reaction: id = b_gsg_loss
	reaction_b_gsg_loss=compartment_blood*7.5*x(24);

% Reaction: id = b_cys_import
	reaction_b_cys_import=compartment_blood*global_par_V_oCys_b;

% Reaction: id = b_gly_import
	reaction_b_gly_import=compartment_blood*global_par_V_oGly_b;

% Reaction: id = b_glu_import
	reaction_b_glu_import=compartment_blood*global_par_V_oGlu_b;

% Reaction: id = V_c_gshHb
	reaction_V_c_gshHb=compartment_cytosol*MM(global_par_V_gshHb, global_par_K_gshHb, x(32));

% Reaction: id = V_c_gshLb
	reaction_V_c_gshLb=compartment_cytosol*global_par_V_gshLb*x(32)^global_par_h_gshLb/(global_par_K_gshLb^global_par_h_gshLb+x(32)^global_par_h_gshLb);

% Reaction: id = V_c_gsgHb
	reaction_V_c_gsgHb=compartment_cytosol*MM(global_par_V_gsgHb, global_par_K_gsgHb, x(31));

% Reaction: id = V_c_gsgLb
	reaction_V_c_gsgLb=compartment_cytosol*MM(global_par_V_gsgLb, global_par_K_gsgLb, x(31));

% Reaction: id = V_b_CYS_c
	reaction_V_b_CYS_c=compartment_cytosol*MM(global_par_V_bcysc, global_par_K_bcysc, x(23));

% Reaction: id = V_b_GLU_c
	reaction_V_b_GLU_c=compartment_cytosol*(MM(global_par_V_bglutc, global_par_K_bglutc, x(22))-global_par_k_out_glu*x(27));

% Reaction: id = V_b_GLY_c
	reaction_V_b_GLY_c=compartment_cytosol*(MM(global_par_V_bglyc, global_par_K_bglyc, x(21))-global_par_k_out_gly*x(30));

% Reaction: id = V_b_SER_c
	reaction_V_b_SER_c=compartment_cytosol*(MM(global_par_V_bserc, global_par_K_bserc, x(2))-global_par_k_out_ser*x(35));

% Reaction: id = V_b_MET_c
	reaction_V_b_MET_c=compartment_cytosol*(MM(global_par_V_bmetc, global_par_K_bmetc, x(1))-global_par_k_out_met*x(38));

% Reaction: id = VmFTD
	reaction_VmFTD=compartment_mito*MM(global_par_Vm_mFTD, global_par_K_10f_FTD, x(20));

% Reaction: id = VmSHMT
	reaction_VmSHMT=compartment_mito*(MM_twosubst(global_par_Vf_mSHMT, global_par_K_thf_SHMT, global_par_K_ser_SHMT, x(12), x(40))-MM_twosubst(global_par_Vr_mSHMT, global_par_K_gly_SHMT, global_par_K_2cf_SHMT, x(41), x(18)));

% Reaction: id = VmFTS
	reaction_VmFTS=compartment_mito*(MM_twosubst(global_par_Vf_mFTS, global_par_K_thf_mFTS, global_par_K_coo_mFTS, x(12), x(42))-MM(global_par_Vr_mFTS, global_par_K_10f_mFTS, x(20)));

% Reaction: id = VmNE
	reaction_VmNE=compartment_mito*(global_par_k1_mNE*x(12)*x(10)-global_par_k2_mNE*x(18));

% Reaction: id = V_GDC
	reaction_V_GDC=compartment_mito*MM_twosubst(global_par_Vm_GDC, global_par_K_thf_GDC, global_par_K_gly_GDC, x(12), x(41));

% Reaction: id = V_SDH
	reaction_V_SDH=compartment_mito*MM_twosubst(global_par_Vm_SDH, global_par_K_thf_SDH, global_par_K_src_SDH, x(12), x(43));

% Reaction: id = V_DMGD
	reaction_V_DMGD=compartment_mito*MM_twosubst(global_par_Vm_DMGD, global_par_K_thf_DMGD, global_par_K_dmg_DMGD, x(12), x(44));

% Reaction: id = VmMTD
	reaction_VmMTD=compartment_mito*(MM(global_par_Vf_mMTD, global_par_K_2cf_MTD, x(18))-MM(global_par_Vr_MTD, global_par_K_1cf_MTD, x(19)));

% Reaction: id = VmMTCH
	reaction_VmMTCH=compartment_mito*(MM(global_par_Vf_mMTCH, global_par_K_1cf_MTCH, x(19))-MM(global_par_Vr_MTCH, global_par_K_10f_MTCH, x(20)));

% Reaction: id = VmSERc
	reaction_VmSERc=(MM(global_par_V_mser, global_par_K_mser, x(40))*compartment_mito/3-MM(global_par_V_cser, global_par_K_cser, x(35)))*compartment_cytosol;

% Reaction: id = VmHCOOHc
	reaction_VmHCOOHc=global_par_k_in_coo*x(42)*compartment_mito/3-global_par_k_out_coo*x(39)*compartment_cytosol;

% Reaction: id = VmGLYc
	reaction_VmGLYc=MM(global_par_V_mgly, global_par_K_mgly, x(41))*compartment_mito*1/3-MM(global_par_V_cgly, global_par_K_cgly, x(30))*compartment_cytosol;

% Reaction: id = V_MS
	reaction_V_MS=compartment_cytosol*MM_twosubst(global_par_Vm_MS, global_par_K_5mf_MS, global_par_K_hcy_MS, x(13), x(34))*(global_par_ssH2O2+global_par_Ki_MS)/(x(8)+global_par_Ki_MS);

% Reaction: id = V_DHFR
	reaction_V_DHFR=compartment_cytosol*MM_twosubst(global_par_Vm_DHFR, global_par_K_dhf_DHFR, global_par_K_NADPH_DHFR, x(17), x(4));

% Reaction: id = VcFTD
	reaction_VcFTD=compartment_cytosol*MM(global_par_Vm_cFTD, global_par_K_10f_FTD, x(16));

% Reaction: id = V_PGT
	reaction_V_PGT=compartment_cytosol*MM_twosubst(global_par_Vm_PGT, global_par_K_10f_PGT, global_par_K_GAR_PGT, x(16), x(3));

% Reaction: id = VcFTS
	reaction_VcFTS=compartment_cytosol*MM_twosubst(global_par_Vm_cFTS, global_par_K_thf_cFTS, global_par_K_coo_cFTS, x(11), x(39));

% Reaction: id = VcSHMT
	reaction_VcSHMT=compartment_cytosol*(MM_twosubst(global_par_Vf_cSHMT, global_par_K_thf_SHMT, global_par_K_ser_SHMT, x(11), x(35))-MM_twosubst(global_par_Vr_cSHMT, global_par_K_gly_SHMT, global_par_K_2cf_SHMT, x(30), x(14)));

% Reaction: id = VcNE
	reaction_VcNE=compartment_cytosol*(global_par_k1_cNE*x(11)*x(10)-global_par_k2_cNE*x(14));

% Reaction: id = V_TS
	reaction_V_TS=compartment_cytosol*MM_twosubst(global_par_Vm_TS, global_par_K_DUMP_TS, global_par_K_2cf_TS, x(6), x(14));

% Reaction: id = V_MTHFR
	reaction_V_MTHFR=compartment_cytosol*MM_twosubst(global_par_Vm_MTHFR, global_par_K_2cf_MTHFR, global_par_K_NADPH_MTHFR, x(14), x(4))*72/(10+x(37)-x(36));

% Reaction: id = VcMTD
	reaction_VcMTD=compartment_cytosol*(MM(global_par_Vf_cMTD, global_par_K_2cf_MTD, x(14))-MM(global_par_Vr_cMTD, global_par_K_1cf_MTD, x(15)));

% Reaction: id = VcMTCH
	reaction_VcMTCH=compartment_cytosol*(MM(global_par_Vf_cMTCH, global_par_K_1cf_MTCH, x(15))-MM(global_par_Vr_MTCH, global_par_K_10f_MTCH, x(16)));

% Reaction: id = V_ART
	reaction_V_ART=compartment_cytosol*MM_twosubst(global_par_Vm_ART, global_par_K_10f_ART, global_par_K_aic_ART, x(16), x(26));

% Reaction: id = V_BHMT
	reaction_V_BHMT=compartment_cytosol*exp((-0.0021)*(x(37)+x(36)))*exp(0.0021*102.6)*MM_twosubst(global_par_Vm_BHMT, global_par_K_hcy_BHMT, global_par_K_bet_BHMT, x(34), x(5))*(global_par_ssH2O2+global_par_Ki_BHMT)/(x(8)+global_par_Ki_BHMT);

% Reaction: id = V_MATI
	reaction_V_MATI=compartment_cytosol*global_par_Vm_MAT1*x(38)/(global_par_Km_MAT1+x(38))*(0.23+0.8*exp((-0.0026)*x(37)))*(global_par_Ki_MAT1+66.71)/(global_par_Ki_MAT1+x(31));

% Reaction: id = V_MATIII
	reaction_V_MATIII=compartment_cytosol*global_par_Vm_MAT3*x(38)^1.21/(global_par_Km_MAT3+x(38)^1.21)*(1+7.2*x(37)^2/(global_par_Ka_MAT3^2+x(37)^2))*(global_par_Ki_MAT3+66.71)/(global_par_Ki_MAT3+x(31));

% Reaction: id = V_GNMT
	reaction_V_GNMT=compartment_cytosol*MM_twosubst(global_par_Vm_GNMT, global_par_K_sam_GNMT, global_par_K_gly_GNMT, x(37), x(30))*1/(1+x(36)/global_par_Ki_GNMT)*4.8/(0.35+x(13));

% Reaction: id = V_DNMT
	reaction_V_DNMT=compartment_cytosol*global_par_Vm_DNMT*x(37)/(global_par_Km_DNMT*(1+x(36)/global_par_Ki_DNMT)+x(37));

% Reaction: id = V_SAHH
	reaction_V_SAHH=compartment_cytosol*(MM(global_par_Vf_SAHH, global_par_K_sah_SAHH, x(36))-MM(global_par_Vr_SAHH, global_par_K_hcy_SAHH, x(34)));

% Reaction: id = gluconeogenesis_ser
	reaction_gluconeogenesis_ser=compartment_cytosol*1.2*x(35);

% Reaction: id = V_CBS
	reaction_V_CBS=compartment_cytosol*MM_twosubst(global_par_Vm_CBS, global_par_K_hcy_CBS, global_par_K_ser_CBS, x(34), x(35))*((30/102.59)^2+1)/((30/(x(37)+x(36)))^2+1)*(x(8)+global_par_Ka_CBS)/(global_par_ssH2O2+global_par_Ka_CBS);

% Reaction: id = V_CTGL
	reaction_V_CTGL=compartment_cytosol*MM(global_par_Vm_CTGL, global_par_K_cyt_CTGL, x(33));

% Reaction: id = V_GCS
	reaction_V_GCS=compartment_cytosol*global_par_Vm_GCS*(x(28)*x(27)-x(29)/global_par_Ke_GCS)/(global_par_K_cys_GCS*global_par_K_glu_GCS+x(27)*global_par_K_cys_GCS+x(28)*(global_par_K_glu_GCS*(1+x(32)/global_par_Ki_GCS)+x(27))+x(29)/global_par_Kp_GCS+x(32)/global_par_Ki_GCS)*(x(8)+global_par_Ka_GCS)/(global_par_ssH2O2+global_par_Ka_GCS);

% Reaction: id = cys_usage
	reaction_cys_usage=compartment_cytosol*0.35*x(28)^2/200;

% Reaction: id = c_glu_usage
	reaction_c_glu_usage=compartment_cytosol*0.07*x(27);

% Reaction: id = V_GS
	reaction_V_GS=compartment_cytosol*global_par_Vm_GS*(x(30)*x(29)-x(32)/global_par_Ke_GS)/(global_par_K_gly_GS*global_par_K_glc_GS+x(29)*global_par_K_gly_GS+x(30)*(global_par_K_glc_GS+x(29))+x(32)/global_par_Kp_GS);

% Reaction: id = V_GPX
	reaction_V_GPX=compartment_cytosol*global_par_Vm_GPX*(x(32)/(global_par_K_gsh_GPX+x(32)))^2*x(8)/(global_par_K_H2O2_GPX+x(8));

% Reaction: id = V_GR
	reaction_V_GR=compartment_cytosol*MM_twosubst(global_par_Vm_GR, global_par_K_gsg_GR, global_par_K_NADPH_GR, x(31), x(4));

% Reaction: id = c_gsh_degr
	reaction_c_gsh_degr=compartment_cytosol*0.002*x(32);

% Reaction: id = c_gsg_degr
	reaction_c_gsg_degr=compartment_cytosol*0.1*x(31);

	xdot=zeros(44,1);
	
% Species:   id = b_met, name = b_Met, involved in a rule 	xdot(1) = x(1);
	
% Species:   id = b_ser, name = b_Ser, involved in a rule 	xdot(2) = x(2);
	
% Species:   id = GAR, name = GAR
%WARNING speciesID: GAR, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(3) = 0.0;
	
% Species:   id = NADPH, name = NADPH
%WARNING speciesID: NADPH, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(4) = 0.0;
	
% Species:   id = BET, name = Betaine
%WARNING speciesID: BET, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(5) = 0.0;
	
% Species:   id = DUMP, name = dUMP
%WARNING speciesID: DUMP, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(6) = 0.0;
	
% Species:   id = Fol, name = Folate
%WARNING speciesID: Fol, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(7) = 0.0;
	
% Species:   id = H2O2, name = H2O2
%WARNING speciesID: H2O2, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(8) = 0.0;
	
% Species:   id = CO, name = CO2
%WARNING speciesID: CO, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(9) = 0.0;
	
% Species:   id = HCHO, name = Formaldehyde
%WARNING speciesID: HCHO, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(10) = 0.0;
	
% Species:   id = c_thf, name = c_THF, affected by kineticLaw
	xdot(11) = (1/(compartment_cytosol))*(( 1.0 * reaction_V_MS) + ( 1.0 * reaction_V_DHFR) + ( 1.0 * reaction_VcFTD) + ( 1.0 * reaction_V_PGT) + (-1.0 * reaction_VcFTS) + (-1.0 * reaction_VcSHMT) + (-1.0 * reaction_VcNE) + ( 1.0 * reaction_V_ART));
	
% Species:   id = m_thf, name = m_THF, affected by kineticLaw
	xdot(12) = (1/(compartment_mito))*(( 1.0 * reaction_VmFTD) + (-1.0 * reaction_VmSHMT) + (-1.0 * reaction_VmFTS) + (-1.0 * reaction_VmNE) + (-1.0 * reaction_V_GDC) + (-1.0 * reaction_V_SDH) + (-1.0 * reaction_V_DMGD));
	
% Species:   id = c_5mf, name = c_5-methyl-THF, affected by kineticLaw
	xdot(13) = (1/(compartment_cytosol))*((-1.0 * reaction_V_MS) + ( 1.0 * reaction_V_MTHFR));
	
% Species:   id = c_2cf, name = c_5-10-methylene-THF, affected by kineticLaw
	xdot(14) = (1/(compartment_cytosol))*(( 1.0 * reaction_VcSHMT) + ( 1.0 * reaction_VcNE) + (-1.0 * reaction_V_TS) + (-1.0 * reaction_V_MTHFR) + (-1.0 * reaction_VcMTD));
	
% Species:   id = c_1cf, name = c_5-10-methenyl-THF, affected by kineticLaw
	xdot(15) = (1/(compartment_cytosol))*(( 1.0 * reaction_VcMTD) + (-1.0 * reaction_VcMTCH));
	
% Species:   id = c_10f, name = c_10-formyl-THF, affected by kineticLaw
	xdot(16) = (1/(compartment_cytosol))*((-1.0 * reaction_VcFTD) + (-1.0 * reaction_V_PGT) + ( 1.0 * reaction_VcFTS) + ( 1.0 * reaction_VcMTCH) + (-1.0 * reaction_V_ART));
	
% Species:   id = c_dhf, name = c_DHF, affected by kineticLaw
	xdot(17) = (1/(compartment_cytosol))*((-1.0 * reaction_V_DHFR) + ( 1.0 * reaction_V_TS));
	
% Species:   id = m_2cf, name = m_5-10-methylene-THF, affected by kineticLaw
	xdot(18) = (1/(compartment_mito))*(( 1.0 * reaction_VmSHMT) + ( 1.0 * reaction_VmNE) + ( 1.0 * reaction_V_GDC) + ( 1.0 * reaction_V_SDH) + ( 1.0 * reaction_V_DMGD) + (-1.0 * reaction_VmMTD));
	
% Species:   id = m_1cf, name = m_5-10-methenyl-THF, affected by kineticLaw
	xdot(19) = (1/(compartment_mito))*(( 1.0 * reaction_VmMTD) + (-1.0 * reaction_VmMTCH));
	
% Species:   id = m_10f, name = m_10-formyl-THF, affected by kineticLaw
	xdot(20) = (1/(compartment_mito))*((-1.0 * reaction_VmFTD) + ( 1.0 * reaction_VmFTS) + ( 1.0 * reaction_VmMTCH));
	
% Species:   id = b_gly, name = b_Glycine, affected by kineticLaw
	xdot(21) = (1/(compartment_blood))*(( 1.0 * reaction_b_gsh_decomp) + ( 2.0 * reaction_b_gsg_decomp) + (-1.0 * reaction_b_gly_loss) + ( 1.0 * reaction_b_gly_import) + (-1.0 * reaction_V_b_GLY_c));
	
% Species:   id = b_glu, name = b_Glutamate, affected by kineticLaw
	xdot(22) = (1/(compartment_blood))*(( 1.0 * reaction_b_gsh_decomp) + ( 2.0 * reaction_b_gsg_decomp) + (-1.0 * reaction_b_glu_loss) + ( 1.0 * reaction_b_glu_import) + (-1.0 * reaction_V_b_GLU_c));
	
% Species:   id = b_cys, name = b_Cysteine, affected by kineticLaw
	xdot(23) = (1/(compartment_blood))*(( 1.0 * reaction_b_gsh_decomp) + ( 2.0 * reaction_b_gsg_decomp) + (-1.0 * reaction_b_cys_cystine_conv) + (-1.0 * reaction_b_cys_loss) + ( 1.0 * reaction_b_cys_import) + (-1.0 * reaction_V_b_CYS_c));
	
% Species:   id = b_gsg, name = b_GSSG, affected by kineticLaw
	xdot(24) = (1/(compartment_blood))*((-1.0 * reaction_b_gsg_decomp) + (-1.0 * reaction_b_gsg_loss) + ( 1.0 * reaction_V_c_gsgHb) + ( 1.0 * reaction_V_c_gsgLb));
	
% Species:   id = b_gsh, name = b_GSH, affected by kineticLaw
	xdot(25) = (1/(compartment_blood))*((-1.0 * reaction_b_gsh_decomp) + (-1.0 * reaction_b_gsh_loss) + ( 1.0 * reaction_V_c_gshHb) + ( 1.0 * reaction_V_c_gshLb));
	
% Species:   id = aic, name = AICAR, affected by kineticLaw
	xdot(26) = (1/(compartment_cytosol))*(( 1.0 * reaction_V_PGT) + (-1.0 * reaction_V_ART));
	
% Species:   id = c_glu, name = c_Glutamate, affected by kineticLaw
	xdot(27) = (1/(compartment_cytosol))*(( 1.0 * reaction_V_b_GLU_c) + (-1.0 * reaction_V_GCS) + (-1.0 * reaction_c_glu_usage));
	
% Species:   id = c_cys, name = c_Cysteine, affected by kineticLaw
	xdot(28) = (1/(compartment_cytosol))*(( 1.0 * reaction_V_b_CYS_c) + ( 1.0 * reaction_V_CTGL) + (-1.0 * reaction_V_GCS) + (-1.0 * reaction_cys_usage));
	
% Species:   id = glc, name = Glutamyl-Cysteine, affected by kineticLaw
	xdot(29) = (1/(compartment_cytosol))*(( 1.0 * reaction_V_GCS) + (-1.0 * reaction_V_GS));
	
% Species:   id = c_gly, name = c_Glycine, affected by kineticLaw
	xdot(30) = (1/(compartment_cytosol))*(( 1.0 * reaction_V_b_GLY_c) + ( 1.0 * reaction_VmGLYc) + ( 1.0 * reaction_VcSHMT) + (-1.0 * reaction_V_GNMT) + (-1.0 * reaction_V_GS));
	
% Species:   id = c_gsg, name = c_GSSG, affected by kineticLaw
	xdot(31) = (1/(compartment_cytosol))*((-1.0 * reaction_V_c_gsgHb) + (-1.0 * reaction_V_c_gsgLb) + ( 1.0 * reaction_V_GPX) + (-1.0 * reaction_V_GR) + (-1.0 * reaction_c_gsg_degr));
	
% Species:   id = c_gsh, name = c_GSH, affected by kineticLaw
	xdot(32) = (1/(compartment_cytosol))*((-1.0 * reaction_V_c_gshHb) + (-1.0 * reaction_V_c_gshLb) + ( 1.0 * reaction_V_GS) + (-2.0 * reaction_V_GPX) + ( 2.0 * reaction_V_GR) + (-1.0 * reaction_c_gsh_degr));
	
% Species:   id = cyt, name = Cystathione, affected by kineticLaw
	xdot(33) = (1/(compartment_cytosol))*(( 1.0 * reaction_V_CBS) + (-1.0 * reaction_V_CTGL));
	
% Species:   id = hcy, name = Homocysteine, affected by kineticLaw
	xdot(34) = (1/(compartment_cytosol))*((-1.0 * reaction_V_MS) + (-1.0 * reaction_V_BHMT) + ( 1.0 * reaction_V_SAHH) + (-1.0 * reaction_V_CBS));
	
% Species:   id = c_ser, name = c_Serine, affected by kineticLaw
	xdot(35) = (1/(compartment_cytosol))*(( 1.0 * reaction_V_b_SER_c) + ( 1.0 * reaction_VmSERc) + (-1.0 * reaction_VcSHMT) + (-1.0 * reaction_gluconeogenesis_ser) + (-1.0 * reaction_V_CBS));
	
% Species:   id = sah, name = S-adenosylhomocysteine, affected by kineticLaw
	xdot(36) = (1/(compartment_cytosol))*(( 1.0 * reaction_V_GNMT) + ( 1.0 * reaction_V_DNMT) + (-1.0 * reaction_V_SAHH));
	
% Species:   id = sam, name = S-adenosylmethionine, affected by kineticLaw
	xdot(37) = (1/(compartment_cytosol))*(( 1.0 * reaction_V_MATI) + ( 1.0 * reaction_V_MATIII) + (-1.0 * reaction_V_GNMT) + (-1.0 * reaction_V_DNMT));
	
% Species:   id = met, name = c_Methionine, affected by kineticLaw
	xdot(38) = (1/(compartment_cytosol))*(( 1.0 * reaction_V_b_MET_c) + ( 1.0 * reaction_V_MS) + ( 1.0 * reaction_V_BHMT) + (-1.0 * reaction_V_MATI) + (-1.0 * reaction_V_MATIII));
	
% Species:   id = c_coo, name = c_formate, affected by kineticLaw
	xdot(39) = (1/(compartment_cytosol))*(( 1.0 * reaction_VmHCOOHc) + (-1.0 * reaction_VcFTS));
	
% Species:   id = m_ser, name = m_Serine, affected by kineticLaw
	xdot(40) = (1/(compartment_mito))*((-1.0 * reaction_VmSHMT) + (-3.0 * reaction_VmSERc));
	
% Species:   id = m_gly, name = m_Glycine, affected by kineticLaw
	xdot(41) = (1/(compartment_mito))*(( 1.0 * reaction_VmSHMT) + (-1.0 * reaction_V_GDC) + ( 1.0 * reaction_V_SDH) + (-3.0 * reaction_VmGLYc));
	
% Species:   id = m_coo, name = m_Formate, affected by kineticLaw
	xdot(42) = (1/(compartment_mito))*((-1.0 * reaction_VmFTS) + (-3.0 * reaction_VmHCOOHc));
	
% Species:   id = src, name = Sarcosine, affected by kineticLaw
	xdot(43) = (1/(compartment_cell))*((-1.0 * reaction_V_SDH) + ( 1.0 * reaction_V_DMGD) + ( 1.0 * reaction_V_GNMT));
	
% Species:   id = dmg, name = Dimethylglycine, affected by kineticLaw
	xdot(44) = (1/(compartment_cell))*((-1.0 * reaction_V_DMGD) + ( 1.0 * reaction_V_BHMT));
end

function z=MM(Vmax,Km,S), z=(Vmax*S/(Km+S));end

function z=MM_twosubst(Vmax,Km1,Km2,S1,S2), z=(Vmax*S1*S2/((Km1+S1)*(Km2+S2)));end

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


