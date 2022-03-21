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
% Model name = Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1
%
% is http://identifiers.org/biomodels.db/MODEL1305060000
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000268
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000190
% isDescribedBy http://identifiers.org/pubmed/21814788
% is http://identifiers.org/biomodels.db/BIOMD0000000674
%


function main()
%Initial conditions vector
	x0=zeros(48,1);
	x0(45) = 72.2557178994351;
	x0(46) = 42.2853792055417;
	x0(47) = 21.1340139923629;
	x0(48) = 0.58497831332261;
	x0(1) = 7.5;
	x0(2) = 37.5;
	x0(3) = 218.733171504338;
	x0(4) = 60.4651616225031;
	x0(5) = 183.099466381356;
	x0(6) = 0.472632922783833;
	x0(7) = 12.5470655822207;
	x0(8) = 4.0250933022918;
	x0(9) = 5.36079859230553;
	x0(10) = 0.463962655701761;
	x0(11) = 0.259497676806752;
	x0(12) = 3.25539505319571;
	x0(13) = 0.0352527196984464;
	x0(14) = 0.944676738309717;
	x0(15) = 3236.78229408139;
	x0(16) = 179.792196767939;
	x0(17) = 9.60706615144005;
	x0(18) = 927.560131015361;
	x0(19) = 59.8062682413464;
	x0(20) = 6272.51492720171;
	x0(21) = 32.3047581589977;
	x0(22) = 1.02425194863179;
	x0(23) = 571.225285800751;
	x0(24) = 15.5626693211634;
	x0(25) = 65.0613824844853;
	x0(26) = 50.6006924474774;
	x0(27) = 13.9758110645557;
	x0(28) = 0.011178638638793;
	x0(29) = 98.2036296721139;
	x0(30) = 61.3595114874529;
	x0(31) = 79.5917525310194;
	x0(32) = 0.0272742537826481;
	x0(33) = 0.903751442137693;
	x0(34) = 38.833390762794;
	x0(35) = 160.666609237206;
	x0(36) = 20.989363966111;
	x0(37) = 1.66729681864136;
	x0(38) = 1.55022131198345;
	x0(39) = 15.9931179032642;
	x0(40) = 2150.05782513217;
	x0(41) = 2043.470284255;
	x0(42) = 58.3710073680041;
	x0(43) = 8.25411023033989;
	x0(44) = 0.677559463168903;


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
% Parameter:   id =  parameter_1, name = Vm_ODC
% Parameter:   id =  parameter_2, name = Vm_SSAT
% Parameter:   id =  parameter_3, name = Vm_SAMDC
% Parameter:   id =  parameter_4, name = ANTZ
% Parameter:   id =  parameter_5, name = Ke_POL
	global_par_parameter_5=1.0;
% Parameter:   id =  parameter_6, name = Kd_ODC
	global_par_parameter_6=3.0;
% Parameter:   id =  parameter_7, name = Ks_ODC
	global_par_parameter_7=300.0;
% Parameter:   id =  parameter_8, name = Kd_SSAT
	global_par_parameter_8=12.0;
% Parameter:   id =  parameter_9, name = Ks_SSAT
	global_par_parameter_9=0.06;
% Parameter:   id =  parameter_10, name = Kd_SAMDC
	global_par_parameter_10=1.2;
% Parameter:   id =  parameter_11, name = Ks_SAMDC
	global_par_parameter_11=60.0;
% Parameter:   id =  parameter_12, name = Kd_ANTZ
	global_par_parameter_12=0.02;
% Parameter:   id =  parameter_13, name = Ks_ANTZ
	global_par_parameter_13=0.02;
% Parameter:   id =  parameter_14, name = K_accoa
% Parameter:   id =  parameter_15, name = K_coa
% Parameter:   id =  parameter_16, name = R
	global_par_parameter_16=0.24;
% Parameter:   id =  parameter_17, name = S+D
% Parameter:   id =  parameter_18, name = R_percent
% assignmentRule: variable = tot_cfol
	global_par_tot_cfol=x(9)+x(10)+x(11)+x(12)+x(13)+x(8);
% assignmentRule: variable = tot_mfol
	global_par_tot_mfol=x(36)+x(37)+x(38)+x(39);
% assignmentRule: variable = daytime
	global_par_daytime=time-24*floor(time/24);
% assignmentRule: variable = aa_input
	global_par_aa_input=piecewise(global_par_breakfast, (7 <= global_par_daytime) && (global_par_daytime <= 10), piecewise(global_par_lunch, (12 <= global_par_daytime) && (global_par_daytime <= 15), piecewise(global_par_dinner, (18 <= global_par_daytime) && (global_par_daytime <= 21), global_par_fasting)));
% assignmentRule: variable = b_met
	x(1)=global_par_aa_input*global_par_b_met_basal;
% assignmentRule: variable = b_ser
	x(2)=global_par_aa_input*global_par_b_ser_basal;
% assignmentRule: variable = V_oGly_b
	global_par_V_oGly_b=global_par_aa_input*global_par_V_oGly_b_basal;
% assignmentRule: variable = V_oCys_b
	global_par_V_oCys_b=global_par_aa_input*global_par_V_oCys_b_basal;
% assignmentRule: variable = V_oGlu_b
	global_par_V_oGlu_b=global_par_aa_input*global_par_V_oGlu_b_basal;
% assignmentRule: variable = parameter_14
	global_par_parameter_14=global_par_parameter_16;
% assignmentRule: variable = parameter_15
	global_par_parameter_15=3*global_par_parameter_16;
% assignmentRule: variable = parameter_17
	global_par_parameter_17=x(30)+x(31);
% assignmentRule: variable = parameter_18
	global_par_parameter_18=100*global_par_parameter_16/0.24;
% rateRule: variable = parameter_1
global_par_parameter_1 = x(45);
% rateRule: variable = parameter_2
global_par_parameter_2 = x(46);
% rateRule: variable = parameter_3
global_par_parameter_3 = x(47);
% rateRule: variable = parameter_4
global_par_parameter_4 = x(48);

% Reaction: id = b_gsh_decomp, name = b_gsh_decomp
	reaction_b_gsh_decomp=compartment_blood*function_4_b_gsh_decomp_1(x(7));

% Reaction: id = b_gsg_decomp, name = b_gsg_decomp
	reaction_b_gsg_decomp=compartment_blood*function_4_b_gsg_decomp_1(x(6));

% Reaction: id = b_cys_cystine_conv, name = b_cys_cystine_conv
	reaction_b_cys_cystine_conv=compartment_blood*function_4_b_cys_cystine_conv_1(x(5));

% Reaction: id = b_cys_loss, name = b_cys_loss
	reaction_b_cys_loss=compartment_blood*function_4_b_cys_loss_1(x(5));

% Reaction: id = b_glu_loss, name = b_glu_loss
	reaction_b_glu_loss=compartment_blood*function_4_b_glu_loss_1(x(4));

% Reaction: id = b_gly_loss, name = b_gly_loss
	reaction_b_gly_loss=compartment_blood*function_4_b_gly_loss_1(x(3));

% Reaction: id = b_gsh_loss, name = b_gsh_loss
	reaction_b_gsh_loss=compartment_blood*function_4_b_gsh_loss_1(x(7));

% Reaction: id = b_gsg_loss, name = b_gsg_loss
	reaction_b_gsg_loss=compartment_blood*function_4_b_gsg_loss_1(x(6));

% Reaction: id = V_c_gshHb, name = V_c_gshHb
	reaction_V_c_gshHb=function_4_V_c_gshHb_1(global_par_K_gshHb, global_par_V_gshHb, x(20), compartment_cytosol);

% Reaction: id = V_c_gshLb, name = V_c_gshLb
	reaction_V_c_gshLb=function_4_V_c_gshLb_1(global_par_K_gshLb, global_par_V_gshLb, x(20), compartment_cytosol, global_par_h_gshLb);

% Reaction: id = V_c_gsgHb, name = V_c_gsgHb
	reaction_V_c_gsgHb=function_4_V_c_gsgHb_1(global_par_K_gsgHb, global_par_V_gsgHb, x(19), compartment_cytosol);

% Reaction: id = V_c_gsgLb, name = V_c_gsgLb
	reaction_V_c_gsgLb=function_4_V_c_gsgLb_1(global_par_K_gsgLb, global_par_V_gsgLb, x(19), compartment_cytosol);

% Reaction: id = V_b_CYS_c, name = V_b_CYS_c
	reaction_V_b_CYS_c=function_4_V_b_CYS_c_1(global_par_K_bcysc, global_par_V_bcysc, x(5), compartment_cytosol);

% Reaction: id = V_b_GLU_c, name = V_b_GLU_c
	reaction_V_b_GLU_c=function_4_V_b_GLU_c_1(global_par_K_bglutc, global_par_V_bglutc, x(4), x(15), compartment_cytosol, global_par_k_out_glu);

% Reaction: id = V_b_GLY_c, name = V_b_GLY_c
	reaction_V_b_GLY_c=function_4_V_b_GLY_c_1(global_par_K_bglyc, global_par_V_bglyc, x(3), x(18), compartment_cytosol, global_par_k_out_gly);

% Reaction: id = V_b_SER_c, name = V_b_SER_c
	reaction_V_b_SER_c=function_4_V_b_SER_c_1(global_par_K_bserc, global_par_V_bserc, x(2), x(23), compartment_cytosol, global_par_k_out_ser);

% Reaction: id = V_b_MET_c, name = V_b_MET_c
	reaction_V_b_MET_c=function_4_V_b_MET_c_1(global_par_K_bmetc, global_par_V_bmetc, x(1), compartment_cytosol, global_par_k_out_met, x(26));

% Reaction: id = VmFTD, name = VmFTD
	reaction_VmFTD=compartment_mito*function_4_VmFTD_1(global_par_K_10f_FTD, global_par_Vm_mFTD, x(39));

% Reaction: id = VmSHMT, name = VmSHMT
	reaction_VmSHMT=compartment_mito*function_4_VmSHMT_1(global_par_K_2cf_SHMT, global_par_K_gly_SHMT, global_par_K_ser_SHMT, global_par_K_thf_SHMT, global_par_Vf_mSHMT, global_par_Vr_mSHMT, x(37), x(41), x(40), x(36));

% Reaction: id = VmFTS, name = VmFTS
	reaction_VmFTS=compartment_mito*function_4_VmFTS_1(global_par_K_10f_mFTS, global_par_K_coo_mFTS, global_par_K_thf_mFTS, global_par_Vf_mFTS, global_par_Vr_mFTS, x(39), x(42), x(36));

% Reaction: id = VmNE, name = VmNE
	reaction_VmNE=function_4_VmNE_1(const_species_HCHO, global_par_k1_mNE, global_par_k2_mNE, x(37), x(36), compartment_mito);

% Reaction: id = V_GDC, name = V_GDC
	reaction_V_GDC=compartment_mito*function_4_V_GDC_1(global_par_K_gly_GDC, global_par_K_thf_GDC, global_par_Vm_GDC, x(41), x(36));

% Reaction: id = V_SDH, name = V_SDH
	reaction_V_SDH=function_4_V_SDH_1(global_par_K_src_SDH, global_par_K_thf_SDH, global_par_Vm_SDH, x(36), compartment_mito, x(43));

% Reaction: id = V_DMGD, name = V_DMGD
	reaction_V_DMGD=function_4_V_DMGD_1(global_par_K_dmg_DMGD, global_par_K_thf_DMGD, global_par_Vm_DMGD, x(44), x(36), compartment_mito);

% Reaction: id = VmMTD, name = VmMTD
	reaction_VmMTD=compartment_mito*function_4_VmMTD_1(global_par_K_1cf_MTD, global_par_K_2cf_MTD, global_par_Vf_mMTD, global_par_Vr_MTD, x(38), x(37));

% Reaction: id = VmMTCH, name = VmMTCH
	reaction_VmMTCH=compartment_mito*function_4_VmMTCH_1(global_par_K_10f_MTCH, global_par_K_1cf_MTCH, global_par_Vf_mMTCH, global_par_Vr_MTCH, x(39), x(38));

% Reaction: id = VmSERc, name = VmSERc
	reaction_VmSERc=function_4_VmSERc_1(global_par_K_cser, global_par_K_mser, global_par_V_cser, global_par_V_mser, x(23), compartment_cytosol, x(40), compartment_mito);

% Reaction: id = VmHCOOHc, name = VmHCOOHc
	reaction_VmHCOOHc=function_4_VmHCOOHc_1(x(27), compartment_cytosol, global_par_k_in_coo, global_par_k_out_coo, x(42), compartment_mito);

% Reaction: id = VmGLYc, name = VmGLYc
	reaction_VmGLYc=function_4_VmGLYc_1(global_par_K_cgly, global_par_K_mgly, global_par_V_cgly, global_par_V_mgly, x(18), compartment_cytosol, x(41), compartment_mito);

% Reaction: id = V_MS, name = V_MS
	reaction_V_MS=compartment_cytosol*function_4_V_MS_1(const_species_H2O2, global_par_K_5mf_MS, global_par_K_hcy_MS, global_par_Ki_MS, global_par_Vm_MS, x(9), x(22), global_par_ssH2O2);

% Reaction: id = V_DHFR, name = V_DHFR
	reaction_V_DHFR=compartment_cytosol*function_4_V_DHFR_1(global_par_K_NADPH_DHFR, global_par_K_dhf_DHFR, const_species_NADPH, global_par_Vm_DHFR, x(13));

% Reaction: id = VcFTD, name = VcFTD
	reaction_VcFTD=compartment_cytosol*function_4_VcFTD_1(global_par_K_10f_FTD, global_par_Vm_cFTD, x(12));

% Reaction: id = V_PGT, name = V_PGT
	reaction_V_PGT=compartment_cytosol*function_4_V_PGT_1(const_species_GAR, global_par_K_10f_PGT, global_par_K_GAR_PGT, global_par_Vm_PGT, x(12));

% Reaction: id = VcFTS, name = VcFTS
	reaction_VcFTS=compartment_cytosol*function_4_VcFTS_1(global_par_K_coo_cFTS, global_par_K_thf_cFTS, global_par_Vm_cFTS, x(27), x(8));

% Reaction: id = VcSHMT, name = VcSHMT
	reaction_VcSHMT=compartment_cytosol*function_4_VcSHMT_1(global_par_K_2cf_SHMT, global_par_K_gly_SHMT, global_par_K_ser_SHMT, global_par_K_thf_SHMT, global_par_Vf_cSHMT, global_par_Vr_cSHMT, x(10), x(18), x(23), x(8));

% Reaction: id = VcNE, name = VcNE
	reaction_VcNE=function_4_VcNE_1(const_species_HCHO, x(10), x(8), compartment_cytosol, global_par_k1_cNE, global_par_k2_cNE);

% Reaction: id = V_TS, name = V_TS
	reaction_V_TS=compartment_cytosol*function_4_V_TS_1(const_species_DUMP, global_par_K_2cf_TS, global_par_K_DUMP_TS, global_par_Vm_TS, x(10));

% Reaction: id = V_MTHFR, name = V_MTHFR
	reaction_V_MTHFR=compartment_cytosol*function_4_V_MTHFR_1(global_par_K_2cf_MTHFR, global_par_K_NADPH_MTHFR, const_species_NADPH, global_par_Vm_MTHFR, x(10), x(24), x(25));

% Reaction: id = VcMTD, name = VcMTD
	reaction_VcMTD=compartment_cytosol*function_4_VcMTD_1(global_par_K_1cf_MTD, global_par_K_2cf_MTD, global_par_Vf_cMTD, global_par_Vr_cMTD, x(11), x(10));

% Reaction: id = VcMTCH, name = VcMTCH
	reaction_VcMTCH=compartment_cytosol*function_4_VcMTCH_1(global_par_K_10f_MTCH, global_par_K_1cf_MTCH, global_par_Vf_cMTCH, global_par_Vr_MTCH, x(12), x(11));

% Reaction: id = V_ART, name = V_ART
	reaction_V_ART=compartment_cytosol*function_4_V_ART_1(global_par_K_10f_ART, global_par_K_aic_ART, global_par_Vm_ART, x(14), x(12));

% Reaction: id = V_BHMT, name = V_BHMT
	reaction_V_BHMT=function_4_V_BHMT_1(const_species_BET, const_species_H2O2, global_par_K_bet_BHMT, global_par_K_hcy_BHMT, global_par_Ki_BHMT, global_par_Vm_BHMT, compartment_cytosol, x(22), x(24), x(25), global_par_ssH2O2);

% Reaction: id = V_MATI, name = V_MATI
	reaction_V_MATI=compartment_cytosol*function_4_V_MATI_1(global_par_Ki_MAT1, global_par_Km_MAT1, global_par_Vm_MAT1, x(19), x(26), x(25));

% Reaction: id = V_MATIII, name = V_MATIII
	reaction_V_MATIII=compartment_cytosol*function_4_V_MATIII_1(global_par_Ka_MAT3, global_par_Ki_MAT3, global_par_Km_MAT3, global_par_Vm_MAT3, x(19), x(26), x(25));

% Reaction: id = V_GNMT, name = V_GNMT
	reaction_V_GNMT=function_4_V_GNMT_1(global_par_K_gly_GNMT, global_par_K_sam_GNMT, global_par_Ki_GNMT, global_par_Vm_GNMT, x(9), x(18), compartment_cytosol, x(24), x(25));

% Reaction: id = V_DNMT, name = V_DNMT
	reaction_V_DNMT=compartment_cytosol*function_4_V_DNMT_1(global_par_Ki_DNMT, global_par_Km_DNMT, global_par_Vm_DNMT, x(24), x(25));

% Reaction: id = V_SAHH, name = V_SAHH
	reaction_V_SAHH=compartment_cytosol*function_4_V_SAHH_1(global_par_K_hcy_SAHH, global_par_K_sah_SAHH, global_par_Vf_SAHH, global_par_Vr_SAHH, x(22), x(24));

% Reaction: id = gluconeogenesis_ser, name = gluconeogenesis_ser
	reaction_gluconeogenesis_ser=compartment_cytosol*function_4_gluconeogenesis_ser_1(x(23));

% Reaction: id = V_CBS, name = V_CBS
	reaction_V_CBS=compartment_cytosol*function_4_V_CBS_1(const_species_H2O2, global_par_K_hcy_CBS, global_par_K_ser_CBS, global_par_Ka_CBS, global_par_Vm_CBS, x(23), x(22), x(24), x(25), global_par_ssH2O2);

% Reaction: id = V_CTGL, name = V_CTGL
	reaction_V_CTGL=compartment_cytosol*function_4_V_CTGL_1(global_par_K_cyt_CTGL, global_par_Vm_CTGL, x(21));

% Reaction: id = V_GCS, name = V_GCS
	reaction_V_GCS=compartment_cytosol*function_4_V_GCS_1(const_species_H2O2, global_par_K_cys_GCS, global_par_K_glu_GCS, global_par_Ka_GCS, global_par_Ke_GCS, global_par_Ki_GCS, global_par_Kp_GCS, global_par_Vm_GCS, x(16), x(15), x(20), x(17), global_par_ssH2O2);

% Reaction: id = cys_usage, name = cys_usage
	reaction_cys_usage=compartment_cytosol*function_4_cys_usage_1(x(16));

% Reaction: id = c_glu_usage, name = c_glu_usage
	reaction_c_glu_usage=compartment_cytosol*function_4_c_glu_usage_1(x(15));

% Reaction: id = V_GS, name = V_GS
	reaction_V_GS=compartment_cytosol*function_4_V_GS_1(global_par_K_glc_GS, global_par_K_gly_GS, global_par_Ke_GS, global_par_Kp_GS, global_par_Vm_GS, x(18), x(20), x(17));

% Reaction: id = V_GPX, name = V_GPX
	reaction_V_GPX=compartment_cytosol*function_4_V_GPX_1(const_species_H2O2, global_par_K_H2O2_GPX, global_par_K_gsh_GPX, global_par_Vm_GPX, x(20));

% Reaction: id = V_GR, name = V_GR
	reaction_V_GR=compartment_cytosol*function_4_V_GR_1(global_par_K_NADPH_GR, global_par_K_gsg_GR, const_species_NADPH, global_par_Vm_GR, x(19));

% Reaction: id = c_gsh_degr, name = c_gsh_degr
	reaction_c_gsh_degr=compartment_cytosol*function_4_c_gsh_degr_1(x(20));

% Reaction: id = c_gsg_degr, name = c_gsg_degr
	reaction_c_gsg_degr=compartment_cytosol*function_4_c_gsg_degr_1(x(19));

% Reaction: id = reaction_1, name = V_ODC	% Local Parameter:   id =  Kipodc, name = Kipodc
	reaction_reaction_1_Kipodc=1300.0;
	% Local Parameter:   id =  Kmodc, name = Kmodc
	reaction_reaction_1_Kmodc=60.0;

	reaction_reaction_1=compartment_cytosol*function_4_V_ODC_1(reaction_reaction_1_Kipodc, reaction_reaction_1_Kmodc, global_par_parameter_1, x(29), const_species_species_7);

% Reaction: id = reaction_2, name = V_SAMDC	% Local Parameter:   id =  Kapsamdc, name = Kapsamdc
	reaction_reaction_2_Kapsamdc=0.5;
	% Local Parameter:   id =  Kiasamdc, name = Kiasamdc
	reaction_reaction_2_Kiasamdc=2.5;
	% Local Parameter:   id =  Kissamdc, name = Kissamdc
	reaction_reaction_2_Kissamdc=500.0;
	% Local Parameter:   id =  Kmsamdc, name = Kmsamdc
	reaction_reaction_2_Kmsamdc=50.0;

	reaction_reaction_2=compartment_cytosol*function_4_V_SAMDC_1(reaction_reaction_2_Kapsamdc, reaction_reaction_2_Kiasamdc, reaction_reaction_2_Kissamdc, reaction_reaction_2_Kmsamdc, global_par_parameter_3, x(25), x(28), x(29), x(30));

% Reaction: id = reaction_3, name = V_SSAT_S	% Local Parameter:   id =  C, name = C
	reaction_reaction_3_C=4.44;
	% Local Parameter:   id =  Kmaccoassat, name = Kmaccoassat
	reaction_reaction_3_Kmaccoassat=1.5;
	% Local Parameter:   id =  Kmcoassat, name = Kmcoassat
	reaction_reaction_3_Kmcoassat=40.0;
	% Local Parameter:   id =  Kmdssat, name = Kmdssat
	reaction_reaction_3_Kmdssat=130.0;
	% Local Parameter:   id =  Kmsssat, name = Kmsssat
	reaction_reaction_3_Kmsssat=35.0;

	reaction_reaction_3=compartment_cytosol*function_4_V_SSAT_S_1(reaction_reaction_3_C, reaction_reaction_3_Kmaccoassat, reaction_reaction_3_Kmcoassat, reaction_reaction_3_Kmdssat, reaction_reaction_3_Kmsssat, global_par_parameter_2, x(30), x(31), x(34), x(35));

% Reaction: id = reaction_4, name = V_SSAT_D	% Local Parameter:   id =  Kmaccoassat, name = Kmaccoassat
	reaction_reaction_4_Kmaccoassat=1.5;
	% Local Parameter:   id =  Kmcoassat, name = Kmcoassat
	reaction_reaction_4_Kmcoassat=40.0;
	% Local Parameter:   id =  Kmdssat, name = Kmdssat
	reaction_reaction_4_Kmdssat=130.0;
	% Local Parameter:   id =  Kmsssat, name = Kmsssat
	reaction_reaction_4_Kmsssat=35.0;

	reaction_reaction_4=compartment_cytosol*function_4_V_SSAT_D_1(reaction_reaction_4_Kmaccoassat, reaction_reaction_4_Kmcoassat, reaction_reaction_4_Kmdssat, reaction_reaction_4_Kmsssat, global_par_parameter_2, x(30), x(31), x(34), x(35));

% Reaction: id = reaction_5, name = V_PAO_AD	% Local Parameter:   id =  Kmadpao, name = Kmadpao
	reaction_reaction_5_Kmadpao=14.0;
	% Local Parameter:   id =  Kmaspao, name = Kmaspao
	reaction_reaction_5_Kmaspao=0.6;
	% Local Parameter:   id =  Kmdpao, name = Kmdpao
	reaction_reaction_5_Kmdpao=50.0;
	% Local Parameter:   id =  Kmspao, name = Kmspao
	reaction_reaction_5_Kmspao=15.0;
	% Local Parameter:   id =  Vmpao, name = Vmpao
	reaction_reaction_5_Vmpao=621.0;

	reaction_reaction_5=compartment_cytosol*function_4_V_PAO_AD_1(reaction_reaction_5_Kmadpao, reaction_reaction_5_Kmaspao, reaction_reaction_5_Kmdpao, reaction_reaction_5_Kmspao, reaction_reaction_5_Vmpao, x(30), x(31), x(32), x(33));

% Reaction: id = reaction_6, name = V_PAO_AS	% Local Parameter:   id =  Kmadpao, name = Kmadpao
	reaction_reaction_6_Kmadpao=14.0;
	% Local Parameter:   id =  Kmaspao, name = Kmaspao
	reaction_reaction_6_Kmaspao=0.6;
	% Local Parameter:   id =  Kmdpao, name = Kmdpao
	reaction_reaction_6_Kmdpao=50.0;
	% Local Parameter:   id =  Kmspao, name = Kmspao
	reaction_reaction_6_Kmspao=15.0;
	% Local Parameter:   id =  Vmpao, name = Vmpao
	reaction_reaction_6_Vmpao=621.0;

	reaction_reaction_6=compartment_cytosol*function_4_V_PAO_AS_1(reaction_reaction_6_Kmadpao, reaction_reaction_6_Kmaspao, reaction_reaction_6_Kmdpao, reaction_reaction_6_Kmspao, reaction_reaction_6_Vmpao, x(30), x(31), x(32), x(33));

% Reaction: id = reaction_7, name = V_SPDS	% Local Parameter:   id =  KaSpds, name = KaSpds
	reaction_reaction_7_KaSpds=0.3;
	% Local Parameter:   id =  Kiaspds, name = Kiaspds
	reaction_reaction_7_Kiaspds=0.8;
	% Local Parameter:   id =  Kidspds, name = Kidspds
	reaction_reaction_7_Kidspds=100.0;
	% Local Parameter:   id =  Kpspds, name = Kpspds
	reaction_reaction_7_Kpspds=40.0;
	% Local Parameter:   id =  Vmspds, name = Vmspds
	reaction_reaction_7_Vmspds=657.0;

	reaction_reaction_7=compartment_cytosol*function_4_V_SPDS_1(reaction_reaction_7_KaSpds, reaction_reaction_7_Kiaspds, reaction_reaction_7_Kidspds, reaction_reaction_7_Kpspds, reaction_reaction_7_Vmspds, x(28), x(29), x(31));

% Reaction: id = reaction_8, name = V_SPMS	% Local Parameter:   id =  Kaspms, name = Kaspms
	reaction_reaction_8_Kaspms=0.1;
	% Local Parameter:   id =  Kdspms, name = Kdspms
	reaction_reaction_8_Kdspms=60.0;
	% Local Parameter:   id =  Kiaspms, name = Kiaspms
	reaction_reaction_8_Kiaspms=0.06;
	% Local Parameter:   id =  Kisspms, name = Kisspms
	reaction_reaction_8_Kisspms=25.0;
	% Local Parameter:   id =  Vmspms, name = Vmspms
	reaction_reaction_8_Vmspms=193.8;

	reaction_reaction_8=compartment_cytosol*function_4_V_SPMS_1(reaction_reaction_8_Kaspms, reaction_reaction_8_Kdspms, reaction_reaction_8_Kiaspms, reaction_reaction_8_Kisspms, reaction_reaction_8_Vmspms, x(28), x(30), x(31));

% Reaction: id = reaction_9, name = V_COA
	reaction_reaction_9=compartment_cytosol*global_par_parameter_15*x(34);

% Reaction: id = reaction_10, name = V_ACCOA
	reaction_reaction_10=compartment_cytosol*global_par_parameter_14*x(35);

% Reaction: id = reaction_11, name = V_PUT_efflux	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_11_k1=0.6;

	reaction_reaction_11=compartment_cytosol*reaction_reaction_11_k1*x(29);

% Reaction: id = reaction_12, name = V_AD_efflux	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_12_k1=0.6;

	reaction_reaction_12=compartment_cytosol*reaction_reaction_12_k1*x(33);

% Species:   id = GAR, name = GAR, constant	const_species_GAR=10.0;

% Species:   id = NADPH, name = NADPH, constant	const_species_NADPH=50.0;

% Species:   id = BET, name = Betaine, constant	const_species_BET=50.0;

% Species:   id = DUMP, name = dUMP, constant	const_species_DUMP=20.0;

% Species:   id = H2O2, name = H2O2, constant	const_species_H2O2=0.01;

% Species:   id = species_7, name = Ornithine, constant	const_species_species_7=300.0;

% Species:   id = CO, name = CO2, constant	const_species_CO=0.0;

% Species:   id = Fol, name = Folate, constant	const_species_Fol=20.1;

% Species:   id = HCHO, name = Formaldehyde, constant	const_species_HCHO=500.0;

	xdot=zeros(48,1);
	% rateRule: variable = parameter_1
	xdot(45) = 60*global_par_parameter_7*1/(1+global_par_parameter_5*(x(31)+x(30)))-global_par_parameter_6*global_par_parameter_4*global_par_parameter_1;
	% rateRule: variable = parameter_2
	xdot(46) = 60*global_par_parameter_9*(1-1/(1+global_par_parameter_5*(x(31)+x(30))))-global_par_parameter_8*1/(1+global_par_parameter_5*(x(31)+x(30)))*global_par_parameter_2;
	% rateRule: variable = parameter_3
	xdot(47) = 60*global_par_parameter_11*1/(1+global_par_parameter_5*(x(31)+x(30)))-global_par_parameter_10*global_par_parameter_3;
	% rateRule: variable = parameter_4
	xdot(48) = 1*global_par_parameter_13*(1-1/(1+global_par_parameter_5*0.01*(x(31)+x(30))))-global_par_parameter_12*global_par_parameter_4;
	
% Species:   id = b_met, name = b_Methionine, involved in a rule 	xdot(1) = x(1);
	
% Species:   id = b_ser, name = b_Serine, involved in a rule 	xdot(2) = x(2);
	
% Species:   id = b_gly, name = b_Glycine, affected by kineticLaw
	xdot(3) = (1/(compartment_blood))*(( 1.0 * reaction_b_gsh_decomp) + ( 2.0 * reaction_b_gsg_decomp) + (-1.0 * reaction_b_gly_loss) + ( 1.0 * reaction_b_gly_import) + (-1.0 * reaction_V_b_GLY_c));
	
% Species:   id = b_glu, name = b_Glutamate, affected by kineticLaw
	xdot(4) = (1/(compartment_blood))*(( 1.0 * reaction_b_gsh_decomp) + ( 2.0 * reaction_b_gsg_decomp) + (-1.0 * reaction_b_glu_loss) + ( 1.0 * reaction_b_glu_import) + (-1.0 * reaction_V_b_GLU_c));
	
% Species:   id = b_cys, name = b_Cysteine, affected by kineticLaw
	xdot(5) = (1/(compartment_blood))*(( 1.0 * reaction_b_gsh_decomp) + ( 2.0 * reaction_b_gsg_decomp) + (-1.0 * reaction_b_cys_cystine_conv) + (-1.0 * reaction_b_cys_loss) + ( 1.0 * reaction_b_cys_import) + (-1.0 * reaction_V_b_CYS_c));
	
% Species:   id = b_gsg, name = b_GSSG, affected by kineticLaw
	xdot(6) = (1/(compartment_blood))*((-1.0 * reaction_b_gsg_decomp) + (-1.0 * reaction_b_gsg_loss) + ( 1.0 * reaction_V_c_gsgHb) + ( 1.0 * reaction_V_c_gsgLb));
	
% Species:   id = b_gsh, name = b_GSH, affected by kineticLaw
	xdot(7) = (1/(compartment_blood))*((-1.0 * reaction_b_gsh_decomp) + (-1.0 * reaction_b_gsh_loss) + ( 1.0 * reaction_V_c_gshHb) + ( 1.0 * reaction_V_c_gshLb));
	
% Species:   id = c_thf, name = c_THF, affected by kineticLaw
	xdot(8) = (1/(compartment_cytosol))*(( 1.0 * reaction_V_MS) + ( 1.0 * reaction_V_DHFR) + ( 1.0 * reaction_VcFTD) + ( 1.0 * reaction_V_PGT) + (-1.0 * reaction_VcFTS) + (-1.0 * reaction_VcSHMT) + (-1.0 * reaction_VcNE) + ( 1.0 * reaction_V_ART));
	
% Species:   id = c_5mf, name = c_5-methyl-THF, affected by kineticLaw
	xdot(9) = (1/(compartment_cytosol))*((-1.0 * reaction_V_MS) + ( 1.0 * reaction_V_MTHFR));
	
% Species:   id = c_2cf, name = c_5-10-methylene-THF, affected by kineticLaw
	xdot(10) = (1/(compartment_cytosol))*(( 1.0 * reaction_VcSHMT) + ( 1.0 * reaction_VcNE) + (-1.0 * reaction_V_TS) + (-1.0 * reaction_V_MTHFR) + (-1.0 * reaction_VcMTD));
	
% Species:   id = c_1cf, name = c_5-10-methenyl-THF, affected by kineticLaw
	xdot(11) = (1/(compartment_cytosol))*(( 1.0 * reaction_VcMTD) + (-1.0 * reaction_VcMTCH));
	
% Species:   id = c_10f, name = c_10-formyl-THF, affected by kineticLaw
	xdot(12) = (1/(compartment_cytosol))*((-1.0 * reaction_VcFTD) + (-1.0 * reaction_V_PGT) + ( 1.0 * reaction_VcFTS) + ( 1.0 * reaction_VcMTCH) + (-1.0 * reaction_V_ART));
	
% Species:   id = c_dhf, name = c_DHF, affected by kineticLaw
	xdot(13) = (1/(compartment_cytosol))*((-1.0 * reaction_V_DHFR) + ( 1.0 * reaction_V_TS));
	
% Species:   id = aic, name = AICAR, affected by kineticLaw
	xdot(14) = (1/(compartment_cytosol))*(( 1.0 * reaction_V_PGT) + (-1.0 * reaction_V_ART));
	
% Species:   id = c_glu, name = c_Glutamate, affected by kineticLaw
	xdot(15) = (1/(compartment_cytosol))*(( 1.0 * reaction_V_b_GLU_c) + (-1.0 * reaction_V_GCS) + (-1.0 * reaction_c_glu_usage));
	
% Species:   id = c_cys, name = c_Cysteine, affected by kineticLaw
	xdot(16) = (1/(compartment_cytosol))*(( 1.0 * reaction_V_b_CYS_c) + ( 1.0 * reaction_V_CTGL) + (-1.0 * reaction_V_GCS) + (-1.0 * reaction_cys_usage));
	
% Species:   id = glc, name = Glutamyl-Cysteine, affected by kineticLaw
	xdot(17) = (1/(compartment_cytosol))*(( 1.0 * reaction_V_GCS) + (-1.0 * reaction_V_GS));
	
% Species:   id = c_gly, name = c_Glycine, affected by kineticLaw
	xdot(18) = (1/(compartment_cytosol))*(( 1.0 * reaction_V_b_GLY_c) + ( 1.0 * reaction_VmGLYc) + ( 1.0 * reaction_VcSHMT) + (-1.0 * reaction_V_GNMT) + (-1.0 * reaction_V_GS));
	
% Species:   id = c_gsg, name = c_GSSG, affected by kineticLaw
	xdot(19) = (1/(compartment_cytosol))*((-1.0 * reaction_V_c_gsgHb) + (-1.0 * reaction_V_c_gsgLb) + ( 1.0 * reaction_V_GPX) + (-1.0 * reaction_V_GR) + (-1.0 * reaction_c_gsg_degr));
	
% Species:   id = c_gsh, name = c_GSH, affected by kineticLaw
	xdot(20) = (1/(compartment_cytosol))*((-1.0 * reaction_V_c_gshHb) + (-1.0 * reaction_V_c_gshLb) + ( 1.0 * reaction_V_GS) + (-2.0 * reaction_V_GPX) + ( 2.0 * reaction_V_GR) + (-1.0 * reaction_c_gsh_degr));
	
% Species:   id = cyt, name = Cystathionine, affected by kineticLaw
	xdot(21) = (1/(compartment_cytosol))*(( 1.0 * reaction_V_CBS) + (-1.0 * reaction_V_CTGL));
	
% Species:   id = hcy, name = Homocysteine, affected by kineticLaw
	xdot(22) = (1/(compartment_cytosol))*((-1.0 * reaction_V_MS) + (-1.0 * reaction_V_BHMT) + ( 1.0 * reaction_V_SAHH) + (-1.0 * reaction_V_CBS));
	
% Species:   id = c_ser, name = c_Serine, affected by kineticLaw
	xdot(23) = (1/(compartment_cytosol))*(( 1.0 * reaction_V_b_SER_c) + ( 1.0 * reaction_VmSERc) + (-1.0 * reaction_VcSHMT) + (-1.0 * reaction_gluconeogenesis_ser) + (-1.0 * reaction_V_CBS));
	
% Species:   id = sah, name = SAH, affected by kineticLaw
	xdot(24) = (1/(compartment_cytosol))*(( 1.0 * reaction_V_GNMT) + ( 1.0 * reaction_V_DNMT) + (-1.0 * reaction_V_SAHH));
	
% Species:   id = sam, name = SAM, affected by kineticLaw
	xdot(25) = (1/(compartment_cytosol))*(( 1.0 * reaction_V_MATI) + ( 1.0 * reaction_V_MATIII) + (-1.0 * reaction_V_GNMT) + (-1.0 * reaction_V_DNMT) + (-1.0 * reaction_reaction_2));
	
% Species:   id = met, name = c_Methionine, affected by kineticLaw
	xdot(26) = (1/(compartment_cytosol))*(( 1.0 * reaction_V_b_MET_c) + ( 1.0 * reaction_V_MS) + ( 1.0 * reaction_V_BHMT) + (-1.0 * reaction_V_MATI) + (-1.0 * reaction_V_MATIII));
	
% Species:   id = c_coo, name = c_Formate, affected by kineticLaw
	xdot(27) = (1/(compartment_cytosol))*(( 1.0 * reaction_VmHCOOHc) + (-1.0 * reaction_VcFTS));
	
% Species:   id = species_1, name = dcSAM, affected by kineticLaw
	xdot(28) = (1/(compartment_cytosol))*(( 1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_7) + (-1.0 * reaction_reaction_8));
	
% Species:   id = species_2, name = Putrescine, affected by kineticLaw
	xdot(29) = (1/(compartment_cytosol))*(( 1.0 * reaction_reaction_1) + ( 1.0 * reaction_reaction_5) + (-1.0 * reaction_reaction_7) + (-1.0 * reaction_reaction_11));
	
% Species:   id = species_3, name = Spermine, affected by kineticLaw
	xdot(30) = (1/(compartment_cytosol))*((-1.0 * reaction_reaction_3) + ( 1.0 * reaction_reaction_8));
	
% Species:   id = species_4, name = Spermidine, affected by kineticLaw
	xdot(31) = (1/(compartment_cytosol))*((-1.0 * reaction_reaction_4) + ( 1.0 * reaction_reaction_6) + ( 1.0 * reaction_reaction_7) + (-1.0 * reaction_reaction_8));
	
% Species:   id = species_5, name = Acetylspermine, affected by kineticLaw
	xdot(32) = (1/(compartment_cytosol))*(( 1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_6));
	
% Species:   id = species_6, name = Acetylspermidine, affected by kineticLaw
	xdot(33) = (1/(compartment_cytosol))*(( 1.0 * reaction_reaction_4) + (-1.0 * reaction_reaction_5) + (-1.0 * reaction_reaction_12));
	
% Species:   id = species_8, name = Acetyl-CoA, affected by kineticLaw
	xdot(34) = (1/(compartment_cytosol))*((-1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_4) + (-1.0 * reaction_reaction_9) + ( 1.0 * reaction_reaction_10));
	
% Species:   id = species_9, name = CoA, affected by kineticLaw
	xdot(35) = (1/(compartment_cytosol))*(( 1.0 * reaction_reaction_3) + ( 1.0 * reaction_reaction_4) + ( 1.0 * reaction_reaction_9) + (-1.0 * reaction_reaction_10));
	
% Species:   id = m_thf, name = m_THF, affected by kineticLaw
	xdot(36) = (1/(compartment_mito))*(( 1.0 * reaction_VmFTD) + (-1.0 * reaction_VmSHMT) + (-1.0 * reaction_VmFTS) + (-1.0 * reaction_VmNE) + (-1.0 * reaction_V_GDC) + (-1.0 * reaction_V_SDH) + (-1.0 * reaction_V_DMGD));
	
% Species:   id = m_2cf, name = m_5-10-methylene-THF, affected by kineticLaw
	xdot(37) = (1/(compartment_mito))*(( 1.0 * reaction_VmSHMT) + ( 1.0 * reaction_VmNE) + ( 1.0 * reaction_V_GDC) + ( 1.0 * reaction_V_SDH) + ( 1.0 * reaction_V_DMGD) + (-1.0 * reaction_VmMTD));
	
% Species:   id = m_1cf, name = m_5-10-methenyl-THF, affected by kineticLaw
	xdot(38) = (1/(compartment_mito))*(( 1.0 * reaction_VmMTD) + (-1.0 * reaction_VmMTCH));
	
% Species:   id = m_10f, name = m_10-formyl-THF, affected by kineticLaw
	xdot(39) = (1/(compartment_mito))*((-1.0 * reaction_VmFTD) + ( 1.0 * reaction_VmFTS) + ( 1.0 * reaction_VmMTCH));
	
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

function z=Constant_flux__reversible(v), z=(v);end

function z=function_4_VmNE_1(HCHO,k1_mNE,k2_mNE,m_2cf,m_thf,mito), z=(mito*(k1_mNE*m_thf*HCHO-k2_mNE*m_2cf));end

function z=function_4_b_cys_loss_1(b_cys), z=(0.1*b_cys);end

function z=function_4_V_ODC_1(Kipodc,Kmodc,parameter_1,species_2,species_7), z=(parameter_1*species_7/(Kmodc*(1+species_2/Kipodc)+species_7));end

function z=function_4_V_PAO_AS_1(Kmadpao,Kmaspao,Kmdpao,Kmspao,Vmpao,species_3,species_4,species_5,species_6), z=(Vmpao*species_5/(Kmaspao*(1+species_6/Kmadpao+species_5/Kmaspao+species_4/Kmdpao+species_3/Kmspao)));end

function z=function_4_gluconeogenesis_ser_1(c_ser), z=(1.2*c_ser);end

function z=function_4_V_CTGL_1(K_cyt_CTGL,Vm_CTGL,cyt), z=(Vm_CTGL*cyt/(K_cyt_CTGL+cyt));end

function z=function_4_V_GR_1(K_NADPH_GR,K_gsg_GR,NADPH,Vm_GR,c_gsg), z=(Vm_GR*c_gsg*NADPH/((K_gsg_GR+c_gsg)*(K_NADPH_GR+NADPH)));end

function z=function_4_V_GCS_1(H2O2,K_cys_GCS,K_glu_GCS,Ka_GCS,Ke_GCS,Ki_GCS,Kp_GCS,Vm_GCS,c_cys,c_glu,c_gsh,glc,ssH2O2), z=(Vm_GCS*(c_cys*c_glu-glc/Ke_GCS)/(K_cys_GCS*K_glu_GCS+c_glu*K_cys_GCS+c_cys*(K_glu_GCS*(1+c_gsh/Ki_GCS)+c_glu)+glc/Kp_GCS+c_gsh/Ki_GCS)*(H2O2+Ka_GCS)/(ssH2O2+Ka_GCS));end

function z=function_4_b_glu_loss_1(b_glu), z=(0.1*b_glu);end

function z=function_4_V_GS_1(K_glc_GS,K_gly_GS,Ke_GS,Kp_GS,Vm_GS,c_gly,c_gsh,glc), z=(Vm_GS*(c_gly*glc-c_gsh/Ke_GS)/(K_gly_GS*K_glc_GS+glc*K_gly_GS+c_gly*(K_glc_GS+glc)+c_gsh/Kp_GS));end

function z=function_4_V_DNMT_1(Ki_DNMT,Km_DNMT,Vm_DNMT,sah,sam), z=(Vm_DNMT*sam/(Km_DNMT*(1+sah/Ki_DNMT)+sam));end

function z=function_4_V_ART_1(K_10f_ART,K_aic_ART,Vm_ART,aic,c_10f), z=(Vm_ART*c_10f*aic/((K_10f_ART+c_10f)*(K_aic_ART+aic)));end

function z=function_4_b_gsg_loss_1(b_gsg), z=(7.5*b_gsg);end

function z=function_4_VcFTD_1(K_10f_FTD,Vm_cFTD,c_10f), z=(Vm_cFTD*c_10f/(K_10f_FTD+c_10f));end

function z=function_4_V_MATI_1(Ki_MAT1,Km_MAT1,Vm_MAT1,c_gsg,met,sam), z=(Vm_MAT1*met/(Km_MAT1+met)*(0.23+0.8*exp((-0.0026)*sam))*(Ki_MAT1+66.71)/(Ki_MAT1+c_gsg));end

function z=function_4_V_SAMDC_1(Kapsamdc,Kiasamdc,Kissamdc,Kmsamdc,parameter_3,sam,species_1,species_2,species_3), z=(parameter_3/(1+species_3/Kissamdc)*sam/(Kmsamdc*(1+Kapsamdc/species_2+species_1/Kiasamdc)+sam));end

function z=function_4_V_GDC_1(K_gly_GDC,K_thf_GDC,Vm_GDC,m_gly,m_thf), z=(Vm_GDC*m_thf*m_gly/((K_thf_GDC+m_thf)*(K_gly_GDC+m_gly)));end

function z=function_4_cys_usage_1(c_cys), z=(0.35*c_cys^2/200);end

function z=function_4_c_glu_usage_1(c_glu), z=(0.07*c_glu);end

function z=function_4_V_DHFR_1(K_NADPH_DHFR,K_dhf_DHFR,NADPH,Vm_DHFR,c_dhf), z=(Vm_DHFR*c_dhf*NADPH/((K_dhf_DHFR+c_dhf)*(K_NADPH_DHFR+NADPH)));end

function z=function_4_V_MATIII_1(Ka_MAT3,Ki_MAT3,Km_MAT3,Vm_MAT3,c_gsg,met,sam), z=(Vm_MAT3*met^1.21/(Km_MAT3+met^1.21)*(1+7.2*sam^2/(Ka_MAT3^2+sam^2))*(Ki_MAT3+66.71)/(Ki_MAT3+c_gsg));end

function z=function_4_b_cys_cystine_conv_1(b_cys), z=(0.25*b_cys);end

function z=function_4_V_GPX_1(H2O2,K_H2O2_GPX,K_gsh_GPX,Vm_GPX,c_gsh), z=(Vm_GPX*(c_gsh/(K_gsh_GPX+c_gsh))^2*H2O2/(K_H2O2_GPX+H2O2));end

function z=function_4_b_gsh_loss_1(b_gsh), z=(0.7*b_gsh);end

function z=function_4_V_SSAT_S_1(C,Kmaccoassat,Kmcoassat,Kmdssat,Kmsssat,parameter_2,species_3,species_4,species_8,species_9), z=(1/C*parameter_2*species_3*species_8/(Kmsssat*(1+species_4/Kmdssat)*Kmaccoassat*(1+species_9/Kmcoassat)+Kmaccoassat*(1+species_9/Kmcoassat)*species_3+Kmsssat*(1+species_4/Kmdssat)*species_8+species_3*species_8));end

function z=function_4_b_gsg_decomp_1(b_gsg), z=(67.5*b_gsg);end

function z=function_4_b_gly_loss_1(b_gly), z=(0.1*b_gly);end

function z=function_4_VmFTD_1(K_10f_FTD,Vm_mFTD,m_10f), z=(Vm_mFTD*m_10f/(K_10f_FTD+m_10f));end

function z=function_4_b_gsh_decomp_1(b_gsh), z=(90*b_gsh);end

function z=function_4_V_TS_1(DUMP,K_2cf_TS,K_DUMP_TS,Vm_TS,c_2cf), z=(Vm_TS*DUMP*c_2cf/((K_DUMP_TS+DUMP)*(K_2cf_TS+c_2cf)));end

function z=function_4_V_PGT_1(GAR,K_10f_PGT,K_GAR_PGT,Vm_PGT,c_10f), z=(Vm_PGT*c_10f*GAR/((K_10f_PGT+c_10f)*(K_GAR_PGT+GAR)));end

function z=function_4_VcNE_1(HCHO,c_2cf,c_thf,cytosol,k1_cNE,k2_cNE), z=(cytosol*(k1_cNE*c_thf*HCHO-k2_cNE*c_2cf));end

function z=function_4_VmHCOOHc_1(c_coo,cytosol,k_in_coo,k_out_coo,m_coo,mito), z=(k_in_coo*m_coo*mito/3-k_out_coo*c_coo*cytosol);end

function z=function_4_c_gsg_degr_1(c_gsg), z=(0.1*c_gsg);end

function z=function_4_c_gsh_degr_1(c_gsh), z=(0.002*c_gsh);end

function z=function_4_V_SSAT_D_1(Kmaccoassat,Kmcoassat,Kmdssat,Kmsssat,parameter_2,species_3,species_4,species_8,species_9), z=(parameter_2*species_4*species_8/(Kmdssat*(1+species_3/Kmsssat)*Kmaccoassat*(1+species_9/Kmcoassat)+Kmaccoassat*(1+species_9/Kmcoassat)*species_4+Kmdssat*(1+species_3/Kmsssat)*species_8+species_4*species_8));end

function z=function_4_VcFTS_1(K_coo_cFTS,K_thf_cFTS,Vm_cFTS,c_coo,c_thf), z=(Vm_cFTS*c_thf*c_coo/((K_thf_cFTS+c_thf)*(K_coo_cFTS+c_coo)));end

function z=function_4_V_c_gshLb_1(K_gshLb,V_gshLb,c_gsh,cytosol,h_gshLb), z=(cytosol*V_gshLb*c_gsh^h_gshLb/(K_gshLb^h_gshLb+c_gsh^h_gshLb));end

function z=function_4_V_PAO_AD_1(Kmadpao,Kmaspao,Kmdpao,Kmspao,Vmpao,species_3,species_4,species_5,species_6), z=(Vmpao*species_6/(Kmadpao*(1+species_6/Kmadpao+species_5/Kmaspao+species_4/Kmdpao+species_3/Kmspao)));end

function z=function_4_V_SPDS_1(KaSpds,Kiaspds,Kidspds,Kpspds,Vmspds,species_1,species_2,species_4), z=(Vmspds*species_1*species_2/(Kiaspds*Kpspds*(1+species_4/Kidspds)+Kpspds*species_1+KaSpds*(1+species_4/Kidspds)*species_2+species_1*species_2));end

function z=function_4_V_SPMS_1(Kaspms,Kdspms,Kiaspms,Kisspms,Vmspms,species_1,species_3,species_4), z=(Vmspms*species_1*species_4/(Kiaspms*Kdspms*(1+species_3/Kisspms)+Kdspms*species_1+Kaspms*(1+species_3/Kisspms)*species_4+species_1*species_4));end

function z=MM(Vmax,Km,S), z=(Vmax*S/(Km+S));end

function z=MM_twosubst(Vmax,Km1,Km2,S1,S2), z=(Vmax*S1*S2/((Km1+S1)*(Km2+S2)));end

function z=function_4_V_b_MET_c_1(K_bmetc,V_bmetc,b_met,cytosol,k_out_met,met,cytosol*(MM(V_bmetc,K_bmetc), z=(b_met)-k_out_met*met));end

function z=function_4_VmMTCH_1(K_10f_MTCH,K_1cf_MTCH,Vf_mMTCH,Vr_MTCH,m_10f,m_1cf,MM(Vf_mMTCH,K_1cf_MTCH,K_10f_MTCH), z=(m_1cf)-MM(Vr_MTCH,m_10f));end

function z=function_4_VmFTS_1(K_10f_mFTS,K_coo_mFTS,K_thf_mFTS,Vf_mFTS,Vr_mFTS,m_10f,m_coo,m_thf,MM_twosubst(Vf_mFTS,K_thf_mFTS,K_coo_mFTS,m_thf,K_10f_mFTS), z=(m_coo)-MM(Vr_mFTS,m_10f));end

function z=function_4_VmSERc_1(K_cser,K_mser,V_cser,V_mser,c_ser,cytosol,m_ser,mito,(MM(V_mser,K_mser,K_cser), z=(m_ser)*mito/3-MM(V_cser,c_ser))*cytosol);end

function z=function_4_V_DMGD_1(K_dmg_DMGD,K_thf_DMGD,Vm_DMGD,dmg,m_thf,mito,mito*MM_twosubst(Vm_DMGD,K_thf_DMGD,K_dmg_DMGD,m_thf), z=(dmg));end

function z=function_4_V_MTHFR_1(K_2cf_MTHFR,K_NADPH_MTHFR,NADPH,Vm_MTHFR,c_2cf,sah,sam,MM_twosubst(Vm_MTHFR,K_2cf_MTHFR,K_NADPH_MTHFR,c_2cf), z=(NADPH)*72/(10+sam-sah));end

function z=function_4_V_SAHH_1(K_hcy_SAHH,K_sah_SAHH,Vf_SAHH,Vr_SAHH,hcy,sah,MM(Vf_SAHH,K_sah_SAHH,K_hcy_SAHH), z=(sah)-MM(Vr_SAHH,hcy));end

function z=function_4_V_c_gsgHb_1(K_gsgHb,V_gsgHb,c_gsg,cytosol,cytosol*MM(V_gsgHb,K_gsgHb), z=(c_gsg));end

function z=function_4_VmGLYc_1(K_cgly,K_mgly,V_cgly,V_mgly,c_gly,cytosol,m_gly,mito,MM(V_mgly,K_mgly,K_cgly), z=(m_gly)*mito*1/3-MM(V_cgly,c_gly)*cytosol);end

function z=function_4_VcSHMT_1(K_2cf_SHMT,K_gly_SHMT,K_ser_SHMT,K_thf_SHMT,Vf_cSHMT,Vr_cSHMT,c_2cf,c_gly,c_ser,c_thf,MM_twosubst(Vf_cSHMT,K_thf_SHMT,K_ser_SHMT,c_thf,K_gly_SHMT,K_2cf_SHMT,c_gly), z=(c_ser)-MM_twosubst(Vr_cSHMT,c_2cf));end

function z=function_4_V_BHMT_1(BET,H2O2,K_bet_BHMT,K_hcy_BHMT,Ki_BHMT,Vm_BHMT,cytosol,hcy,sah,sam,ssH2O2,K_hcy_BHMT,K_bet_BHMT,hcy), z=(cytosol*exp((-0.0021)*(sam+sah))*exp(0.0021*102.6)*MM_twosubst(Vm_BHMT,BET)*(ssH2O2+Ki_BHMT)/(H2O2+Ki_BHMT));end

function z=function_4_V_CBS_1(H2O2,K_hcy_CBS,K_ser_CBS,Ka_CBS,Vm_CBS,c_ser,hcy,sah,sam,ssH2O2,MM_twosubst(Vm_CBS,K_hcy_CBS,K_ser_CBS,hcy), z=(c_ser)*((30/102.59)^2+1)/((30/(sam+sah))^2+1)*(H2O2+Ka_CBS)/(ssH2O2+Ka_CBS));end

function z=function_4_V_c_gshHb_1(K_gshHb,V_gshHb,c_gsh,cytosol,cytosol*MM(V_gshHb,K_gshHb), z=(c_gsh));end

function z=function_4_V_b_SER_c_1(K_bserc,V_bserc,b_ser,c_ser,cytosol,k_out_ser,cytosol*(MM(V_bserc,K_bserc), z=(b_ser)-k_out_ser*c_ser));end

function z=function_4_V_b_GLY_c_1(K_bglyc,V_bglyc,b_gly,c_gly,cytosol,k_out_gly,cytosol*(MM(V_bglyc,K_bglyc), z=(b_gly)-k_out_gly*c_gly));end

function z=function_4_VmMTD_1(K_1cf_MTD,K_2cf_MTD,Vf_mMTD,Vr_MTD,m_1cf,m_2cf,MM(Vf_mMTD,K_2cf_MTD,K_1cf_MTD), z=(m_2cf)-MM(Vr_MTD,m_1cf));end

function z=function_4_VmSHMT_1(K_2cf_SHMT,K_gly_SHMT,K_ser_SHMT,K_thf_SHMT,Vf_mSHMT,Vr_mSHMT,m_2cf,m_gly,m_ser,m_thf,MM_twosubst(Vf_mSHMT,K_thf_SHMT,K_ser_SHMT,m_thf,K_gly_SHMT,K_2cf_SHMT,m_gly), z=(m_ser)-MM_twosubst(Vr_mSHMT,m_2cf));end

function z=function_4_V_b_GLU_c_1(K_bglutc,V_bglutc,b_glu,c_glu,cytosol,k_out_glu,cytosol*(MM(V_bglutc,K_bglutc), z=(b_glu)-k_out_glu*c_glu));end

function z=function_4_VcMTD_1(K_1cf_MTD,K_2cf_MTD,Vf_cMTD,Vr_cMTD,c_1cf,c_2cf,MM(Vf_cMTD,K_2cf_MTD,K_1cf_MTD), z=(c_2cf)-MM(Vr_cMTD,c_1cf));end

function z=function_4_V_b_CYS_c_1(K_bcysc,V_bcysc,b_cys,cytosol,cytosol*MM(V_bcysc,K_bcysc), z=(b_cys));end

function z=function_4_VcMTCH_1(K_10f_MTCH,K_1cf_MTCH,Vf_cMTCH,Vr_MTCH,c_10f,c_1cf,MM(Vf_cMTCH,K_1cf_MTCH,K_10f_MTCH), z=(c_1cf)-MM(Vr_MTCH,c_10f));end

function z=function_4_V_c_gsgLb_1(K_gsgLb,V_gsgLb,c_gsg,cytosol,cytosol*MM(V_gsgLb,K_gsgLb), z=(c_gsg));end

function z=function_4_V_GNMT_1(K_gly_GNMT,K_sam_GNMT,Ki_GNMT,Vm_GNMT,c_5mf,c_gly,cytosol,sah,sam,cytosol*MM_twosubst(Vm_GNMT,K_sam_GNMT,K_gly_GNMT,sam), z=(c_gly)*1/(1+sah/Ki_GNMT)*4.8/(0.35+c_5mf));end

function z=function_4_V_MS_1(H2O2,K_5mf_MS,K_hcy_MS,Ki_MS,Vm_MS,c_5mf,hcy,ssH2O2,MM_twosubst(Vm_MS,K_5mf_MS,K_hcy_MS,c_5mf), z=(hcy)*(ssH2O2+Ki_MS)/(H2O2+Ki_MS));end

function z=function_4_V_SDH_1(K_src_SDH,K_thf_SDH,Vm_SDH,m_thf,mito,src,mito*MM_twosubst(Vm_SDH,K_thf_SDH,K_src_SDH,m_thf), z=(src));end

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


