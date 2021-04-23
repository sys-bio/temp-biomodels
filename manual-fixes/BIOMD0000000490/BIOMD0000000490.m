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
% Model name = Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors
%
% is http://identifiers.org/biomodels.db/MODEL1309160000
% is http://identifiers.org/biomodels.db/BIOMD0000000490
% isDescribedBy http://identifiers.org/pubmed/24026253
% isDerivedFrom http://identifiers.org/pubmed/23146124
% isDerivedFrom http://identifiers.org/pubmed/22020181
% isDerivedFrom http://identifiers.org/pubmed/21560018
%


function main()
%Initial conditions vector
	x0=zeros(33,1);
	x0(1) = 0.2890944;
	x0(2) = 0.2965837;
	x0(3) = 5.037703;
	x0(4) = 1.081167;
	x0(5) = 0.8869873;
	x0(6) = 2168.571;
	x0(7) = 1308.488;
	x0(8) = 2053.137;
	x0(9) = 4.68114E-7;
	x0(10) = 5.479176E-8;
	x0(11) = 5.383185E-4;
	x0(12) = 1.358698E-7;
	x0(13) = 0.001358713;
	x0(14) = 1.176558E-6;
	x0(15) = 14995.88;
	x0(16) = 0.5994857;
	x0(17) = 0.4023394;
	x0(18) = 1.637391E-6;
	x0(19) = 0.1304887;
	x0(20) = 1.780604;
	x0(21) = 1.960926;
	x0(22) = 41.69257;
	x0(23) = 6.806687;
	x0(24) = 359.9744;
	x0(25) = 205.7602;
	x0(26) = 322.6366;
	x0(27) = 14162.15;
	x0(28) = 0.6627439;
	x0(29) = 0.0;
	x0(30) = 0.0;
	x0(31) = 0.0;
	x0(32) = 0.0;
	x0(33) = 0.0;


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

% Compartment: id = Default, name = Default, constant
	compartment_Default=1.0;
% Compartment: id = Vd_LTC, name = Vd_LTC, constant
	compartment_Vd_LTC=9.47999954223633;
% Compartment: id = Vd_LTD, name = Vd_LTD, constant
	compartment_Vd_LTD=9.47999954223633;
% Compartment: id = Vd_LTE, name = Vd_LTE, constant
	compartment_Vd_LTE=9.47999954223633;
% Compartment: id = V_B, name = V_B, constant
	compartment_V_B=2.80999994277954;
% Compartment: id = V_AW, name = V_AW, constant
	compartment_V_AW=0.209999993443489;
% Compartment: id = Vd_Hn, name = Vd_Hn, constant
	compartment_Vd_Hn=78100.0;
% Compartment: id = Vd_IL5, name = Vd_IL5, constant
	compartment_Vd_IL5=10.1999998092651;
% Compartment: id = V_BM, name = V_BM, constant
	compartment_V_BM=0.824999988079071;
% Compartment: id = Vd_AW_LTC, name = Vd_AW_LTC, constant
	compartment_Vd_AW_LTC=1.53999996185303;
% Compartment: id = Vd_AW_LTD, name = Vd_AW_LTD, constant
	compartment_Vd_AW_LTD=1.53999996185303;
% Compartment: id = Vd_AW_LTE, name = Vd_AW_LTE, constant
	compartment_Vd_AW_LTE=1.53999996185303;
% Compartment: id = Vd_AW_Hn, name = Vd_AW_Hn, constant
	compartment_Vd_AW_Hn=5640.0;
% Compartment: id = Vd_ZF, name = Vd_ZF, constant
	compartment_Vd_ZF=9.44999980926514;
% Compartment: id = Vd_AW_ZF, name = Vd_AW_ZF, constant
	compartment_Vd_AW_ZF=3.25999999046326;
% Compartment: id = Vd_ML, name = Vd_ML, constant
	compartment_Vd_ML=10.0;
% Parameter:   id =  Ca, name = Ca
% Warning parameter Ca is not constant, it should be controlled by a Rule and/or events
	global_par_Ca=1.0;
% Parameter:   id =  Ca_FEV_ex, name = Ca_FEV_ex
% Warning parameter Ca_FEV_ex is not constant, it should be controlled by a Rule and/or events
	global_par_Ca_FEV_ex=10000.0;
% Parameter:   id =  Cao_FEV, name = Cao_FEV
% Warning parameter Cao_FEV is not constant, it should be controlled by a Rule and/or events
	global_par_Cao_FEV=10000.0;
% Parameter:   id =  DOSE_ml, name = DOSE_ml
% Warning parameter DOSE_ml is not constant, it should be controlled by a Rule and/or events
	global_par_DOSE_ml=0.0;
% Parameter:   id =  DOSE_zf, name = DOSE_zf
% Warning parameter DOSE_zf is not constant, it should be controlled by a Rule and/or events
	global_par_DOSE_zf=0.0;
% Parameter:   id =  EC50_ML_FEV, name = EC50_ML_FEV
% Warning parameter EC50_ML_FEV is not constant, it should be controlled by a Rule and/or events
	global_par_EC50_ML_FEV=500.0;
% Parameter:   id =  EC50_act, name = EC50_act
% Warning parameter EC50_act is not constant, it should be controlled by a Rule and/or events
	global_par_EC50_act=0.75;
% Parameter:   id =  EC50_migr, name = EC50_migr
% Warning parameter EC50_migr is not constant, it should be controlled by a Rule and/or events
	global_par_EC50_migr=0.115;
% Parameter:   id =  Et_LTCs, name = Et_LTCs
% Warning parameter Et_LTCs is not constant, it should be controlled by a Rule and/or events
	global_par_Et_LTCs=1.0;
% Parameter:   id =  FLOa, name = FLOa
% Warning parameter FLOa is not constant, it should be controlled by a Rule and/or events
	global_par_FLOa=1.5;
% Parameter:   id =  F_ml, name = F_ml
% Warning parameter F_ml is not constant, it should be controlled by a Rule and/or events
	global_par_F_ml=0.660688;
% Parameter:   id =  F_zf, name = F_zf
% Warning parameter F_zf is not constant, it should be controlled by a Rule and/or events
	global_par_F_zf=0.082;
% Parameter:   id =  GPx, name = GPx
% Warning parameter GPx is not constant, it should be controlled by a Rule and/or events
	global_par_GPx=1.6;
% Parameter:   id =  GSH_aw, name = GSH_aw
% Warning parameter GSH_aw is not constant, it should be controlled by a Rule and/or events
	global_par_GSH_aw=1000.0;
% Parameter:   id =  GSH_b, name = GSH_b
% Warning parameter GSH_b is not constant, it should be controlled by a Rule and/or events
	global_par_GSH_b=5000.0;
% Parameter:   id =  GS_pool_aw, name = GS_pool_aw
% Warning parameter GS_pool_aw is not constant, it should be controlled by a Rule and/or events
	global_par_GS_pool_aw=10000.0;
% Parameter:   id =  GS_pool_b, name = GS_pool_b
% Warning parameter GS_pool_b is not constant, it should be controlled by a Rule and/or events
	global_par_GS_pool_b=10000.0;
% Parameter:   id =  HEDH5, name = HEDH5
% Warning parameter HEDH5 is not constant, it should be controlled by a Rule and/or events
	global_par_HEDH5=0.5;
% Parameter:   id =  J_AW_lymfl, name = J_AW_lymfl
% Warning parameter J_AW_lymfl is not constant, it should be controlled by a Rule and/or events
	global_par_J_AW_lymfl=0.00115;
% Parameter:   id =  J_BM_lymfl, name = J_BM_lymfl
% Warning parameter J_BM_lymfl is not constant, it should be controlled by a Rule and/or events
	global_par_J_BM_lymfl=4.9E-4;
% Parameter:   id =  K_AA, name = K_AA
% Warning parameter K_AA is not constant, it should be controlled by a Rule and/or events
	global_par_K_AA=10.74959;
% Parameter:   id =  K_Ca2, name = K_Ca2
% Warning parameter K_Ca2 is not constant, it should be controlled by a Rule and/or events
	global_par_K_Ca2=14.36738;
% Parameter:   id =  K_Ca3, name = K_Ca3
% Warning parameter K_Ca3 is not constant, it should be controlled by a Rule and/or events
	global_par_K_Ca3=7116.527;
% Parameter:   id =  K_Ca_FEV, name = K_Ca_FEV
% Warning parameter K_Ca_FEV is not constant, it should be controlled by a Rule and/or events
	global_par_K_Ca_FEV=150000.0;
% Parameter:   id =  K_GSH, name = K_GSH
% Warning parameter K_GSH is not constant, it should be controlled by a Rule and/or events
	global_par_K_GSH=744.9176;
% Parameter:   id =  K_LTA, name = K_LTA
% Warning parameter K_LTA is not constant, it should be controlled by a Rule and/or events
	global_par_K_LTA=1.75951;
% Parameter:   id =  K_LTA_GSH, name = K_LTA_GSH
% Warning parameter K_LTA_GSH is not constant, it should be controlled by a Rule and/or events
	global_par_K_LTA_GSH=1696.6;
% Parameter:   id =  K_LTC, name = K_LTC
% Warning parameter K_LTC is not constant, it should be controlled by a Rule and/or events
	global_par_K_LTC=0.1951215;
% Parameter:   id =  K_PLA2_Ca, name = K_PLA2_Ca
% Warning parameter K_PLA2_Ca is not constant, it should be controlled by a Rule and/or events
	global_par_K_PLA2_Ca=0.1;
% Parameter:   id =  Kd12, name = Kd12
% Warning parameter Kd12 is not constant, it should be controlled by a Rule and/or events
	global_par_Kd12=0.007;
% Parameter:   id =  Kd50, name = Kd50
% Warning parameter Kd50 is not constant, it should be controlled by a Rule and/or events
	global_par_Kd50=0.43;
% Parameter:   id =  KdZ, name = KdZ
% Warning parameter KdZ is not constant, it should be controlled by a Rule and/or events
	global_par_KdZ=20.0;
% Parameter:   id =  Kd_Hn_FEV, name = Kd_Hn_FEV
% Warning parameter Kd_Hn_FEV is not constant, it should be controlled by a Rule and/or events
	global_par_Kd_Hn_FEV=6300000.0;
% Parameter:   id =  Kd_IL_migr, name = Kd_IL_migr
% Warning parameter Kd_IL_migr is not constant, it should be controlled by a Rule and/or events
	global_par_Kd_IL_migr=50.0;
% Parameter:   id =  Kd_LT, name = Kd_LT
% Warning parameter Kd_LT is not constant, it should be controlled by a Rule and/or events
	global_par_Kd_LT=1000.0;
% Parameter:   id =  Kd_LTE_migr, name = Kd_LTE_migr
% Warning parameter Kd_LTE_migr is not constant, it should be controlled by a Rule and/or events
	global_par_Kd_LTE_migr=50000.0;
% Parameter:   id =  Kd_LTR1_FEV, name = Kd_LTR1_FEV
% Warning parameter Kd_LTR1_FEV is not constant, it should be controlled by a Rule and/or events
	global_par_Kd_LTR1_FEV=1000.0;
% Parameter:   id =  Kd_LTR2_FEV, name = Kd_LTR2_FEV
% Warning parameter Kd_LTR2_FEV is not constant, it should be controlled by a Rule and/or events
	global_par_Kd_LTR2_FEV=10000.0;
% Parameter:   id =  Kd_LT_2, name = Kd_LT_2
% Warning parameter Kd_LT_2 is not constant, it should be controlled by a Rule and/or events
	global_par_Kd_LT_2=10000.0;
% Parameter:   id =  Kd_gpx_GSSG, name = Kd_gpx_GSSG
% Warning parameter Kd_gpx_GSSG is not constant, it should be controlled by a Rule and/or events
	global_par_Kd_gpx_GSSG=0.07154222;
% Parameter:   id =  Kd_gpx_HETE5, name = Kd_gpx_HETE5
% Warning parameter Kd_gpx_HETE5 is not constant, it should be controlled by a Rule and/or events
	global_par_Kd_gpx_HETE5=6.043446;
% Parameter:   id =  Kd_hedh_HETE5, name = Kd_hedh_HETE5
% Warning parameter Kd_hedh_HETE5 is not constant, it should be controlled by a Rule and/or events
	global_par_Kd_hedh_HETE5=0.331696;
% Parameter:   id =  Kd_hedh_NADP, name = Kd_hedh_NADP
% Warning parameter Kd_hedh_NADP is not constant, it should be controlled by a Rule and/or events
	global_par_Kd_hedh_NADP=2.895899;
% Parameter:   id =  Kd_hedh_NADPH, name = Kd_hedh_NADPH
% Warning parameter Kd_hedh_NADPH is not constant, it should be controlled by a Rule and/or events
	global_par_Kd_hedh_NADPH=2.685581;
% Parameter:   id =  Kd_hedh_oxoETE5, name = Kd_hedh_oxoETE5
% Warning parameter Kd_hedh_oxoETE5 is not constant, it should be controlled by a Rule and/or events
	global_par_Kd_hedh_oxoETE5=1.667019;
% Parameter:   id =  Ke_ox, name = Ke_ox
% Warning parameter Ke_ox is not constant, it should be controlled by a Rule and/or events
	global_par_Ke_ox=99.99979;
% Parameter:   id =  Ke_red, name = Ke_red
% Warning parameter Ke_red is not constant, it should be controlled by a Rule and/or events
	global_par_Ke_red=5.761955E-7;
% Parameter:   id =  Ki_AA, name = Ki_AA
% Warning parameter Ki_AA is not constant, it should be controlled by a Rule and/or events
	global_par_Ki_AA=551.8748;
% Parameter:   id =  Ki_HETE, name = Ki_HETE
% Warning parameter Ki_HETE is not constant, it should be controlled by a Rule and/or events
	global_par_Ki_HETE=0.5408177;
% Parameter:   id =  Ki_ML_EOa, name = Ki_ML_EOa
% Warning parameter Ki_ML_EOa is not constant, it should be controlled by a Rule and/or events
	global_par_Ki_ML_EOa=500.0;
% Parameter:   id =  Km_1, name = Km_1
% Warning parameter Km_1 is not constant, it should be controlled by a Rule and/or events
	global_par_Km_1=2.0;
% Parameter:   id =  Km_CoA_AA, name = Km_CoA_AA
% Warning parameter Km_CoA_AA is not constant, it should be controlled by a Rule and/or events
	global_par_Km_CoA_AA=0.005;
% Parameter:   id =  Km_PLA2_APC, name = Km_PLA2_APC
% Warning parameter Km_PLA2_APC is not constant, it should be controlled by a Rule and/or events
	global_par_Km_PLA2_APC=20.0;
% Parameter:   id =  Km_gpx_GSH, name = Km_gpx_GSH
% Warning parameter Km_gpx_GSH is not constant, it should be controlled by a Rule and/or events
	global_par_Km_gpx_GSH=600.0;
% Parameter:   id =  Km_gpx_HPETE5, name = Km_gpx_HPETE5
% Warning parameter Km_gpx_HPETE5 is not constant, it should be controlled by a Rule and/or events
	global_par_Km_gpx_HPETE5=5.974381;
% Parameter:   id =  Kp_Hn_AW, name = Kp_Hn_AW
% Warning parameter Kp_Hn_AW is not constant, it should be controlled by a Rule and/or events
	global_par_Kp_Hn_AW=3950.0;
% Parameter:   id =  Kp_LTC_AW, name = Kp_LTC_AW
% Warning parameter Kp_LTC_AW is not constant, it should be controlled by a Rule and/or events
	global_par_Kp_LTC_AW=0.22;
% Parameter:   id =  Kp_LTD_AW, name = Kp_LTD_AW
% Warning parameter Kp_LTD_AW is not constant, it should be controlled by a Rule and/or events
	global_par_Kp_LTD_AW=0.22;
% Parameter:   id =  Kp_LTE_AW, name = Kp_LTE_AW
% Warning parameter Kp_LTE_AW is not constant, it should be controlled by a Rule and/or events
	global_par_Kp_LTE_AW=0.22;
% Parameter:   id =  Kp_ZF_AW, name = Kp_ZF_AW
% Warning parameter Kp_ZF_AW is not constant, it should be controlled by a Rule and/or events
	global_par_Kp_ZF_AW=0.204;
% Parameter:   id =  Kp_ZF_IW, name = Kp_ZF_IW
% Warning parameter Kp_ZF_IW is not constant, it should be controlled by a Rule and/or events
	global_par_Kp_ZF_IW=0.631;
% Parameter:   id =  LOH_aw, name = LOH_aw
% Warning parameter LOH_aw is not constant, it should be controlled by a Rule and/or events
	global_par_LOH_aw=0.0;
% Parameter:   id =  LOH_b, name = LOH_b
% Warning parameter LOH_b is not constant, it should be controlled by a Rule and/or events
	global_par_LOH_b=0.0;
% Parameter:   id =  LOOH_aw, name = LOOH_aw
% Warning parameter LOOH_aw is not constant, it should be controlled by a Rule and/or events
	global_par_LOOH_aw=20.0;
% Parameter:   id =  LOOH_b, name = LOOH_b
% Warning parameter LOOH_b is not constant, it should be controlled by a Rule and/or events
	global_par_LOOH_b=1.0;
% Parameter:   id =  MAX_FEV, name = MAX_FEV
% Warning parameter MAX_FEV is not constant, it should be controlled by a Rule and/or events
	global_par_MAX_FEV=4.94;
% Parameter:   id =  ML_airways, name = ML_airways
% Warning parameter ML_airways is not constant, it should be controlled by a Rule and/or events
	global_par_ML_airways=0.0;
% Parameter:   id =  ML_ex, name = ML_ex
% Warning parameter ML_ex is not constant, it should be controlled by a Rule and/or events
	global_par_ML_ex=0.0;
% Parameter:   id =  M_Hn, name = M_Hn
% Warning parameter M_Hn is not constant, it should be controlled by a Rule and/or events
	global_par_M_Hn=111.2;
% Parameter:   id =  M_IL5, name = M_IL5
% Warning parameter M_IL5 is not constant, it should be controlled by a Rule and/or events
	global_par_M_IL5=45000.0;
% Parameter:   id =  M_LTC, name = M_LTC
% Warning parameter M_LTC is not constant, it should be controlled by a Rule and/or events
	global_par_M_LTC=625.8;
% Parameter:   id =  M_LTD, name = M_LTD
% Warning parameter M_LTD is not constant, it should be controlled by a Rule and/or events
	global_par_M_LTD=496.7;
% Parameter:   id =  M_LTE, name = M_LTE
% Warning parameter M_LTE is not constant, it should be controlled by a Rule and/or events
	global_par_M_LTE=439.6;
% Parameter:   id =  M_ML, name = M_ML
% Warning parameter M_ML is not constant, it should be controlled by a Rule and/or events
	global_par_M_ML=586.18;
% Parameter:   id =  M_ZF, name = M_ZF
% Warning parameter M_ZF is not constant, it should be controlled by a Rule and/or events
	global_par_M_ZF=236.0;
% Parameter:   id =  NADP_aw, name = NADP_aw
% Warning parameter NADP_aw is not constant, it should be controlled by a Rule and/or events
	global_par_NADP_aw=2900.0;
% Parameter:   id =  NADP_b, name = NADP_b
% Warning parameter NADP_b is not constant, it should be controlled by a Rule and/or events
	global_par_NADP_b=2000.0;
% Parameter:   id =  NP_pool_aw, name = NP_pool_aw
% Warning parameter NP_pool_aw is not constant, it should be controlled by a Rule and/or events
	global_par_NP_pool_aw=3000.0;
% Parameter:   id =  NP_pool_b, name = NP_pool_b
% Warning parameter NP_pool_b is not constant, it should be controlled by a Rule and/or events
	global_par_NP_pool_b=3000.0;
% Parameter:   id =  N_A_pmole, name = N_A_pmole
% Warning parameter N_A_pmole is not constant, it should be controlled by a Rule and/or events
	global_par_N_A_pmole=6.02E11;
% Parameter:   id =  OL_b_ex, name = OL_b_ex
% Warning parameter OL_b_ex is not constant, it should be controlled by a Rule and/or events
	global_par_OL_b_ex=0.0;
% Parameter:   id =  PL, name = PL
% Warning parameter PL is not constant, it should be controlled by a Rule and/or events
	global_par_PL=110.0;
% Parameter:   id =  Q_AW_blf, name = Q_AW_blf
% Warning parameter Q_AW_blf is not constant, it should be controlled by a Rule and/or events
	global_par_Q_AW_blf=5.23;
% Parameter:   id =  R1_portion_EOa, name = R1_portion_EOa
% Warning parameter R1_portion_EOa is not constant, it should be controlled by a Rule and/or events
	global_par_R1_portion_EOa=0.39;
% Parameter:   id =  R1_portion_FEV, name = R1_portion_FEV
% Warning parameter R1_portion_FEV is not constant, it should be controlled by a Rule and/or events
	global_par_R1_portion_FEV=0.016;
% Parameter:   id =  R2_portion_FEV, name = R2_portion_FEV
% Warning parameter R2_portion_FEV is not constant, it should be controlled by a Rule and/or events
	global_par_R2_portion_FEV=0.037;
% Parameter:   id =  R_FEV, name = R_FEV
% Warning parameter R_FEV is not constant, it should be controlled by a Rule and/or events
	global_par_R_FEV=3.007;
% Parameter:   id =  R_Hn_AW, name = R_Hn_AW
% Warning parameter R_Hn_AW is not constant, it should be controlled by a Rule and/or events
	global_par_R_Hn_AW=5130.0;
% Parameter:   id =  R_Hn_B, name = R_Hn_B
% Warning parameter R_Hn_B is not constant, it should be controlled by a Rule and/or events
	global_par_R_Hn_B=141.0;
% Parameter:   id =  R_LTC_AW, name = R_LTC_AW
% Warning parameter R_LTC_AW is not constant, it should be controlled by a Rule and/or events
	global_par_R_LTC_AW=1.4;
% Parameter:   id =  R_LTC_B, name = R_LTC_B
% Warning parameter R_LTC_B is not constant, it should be controlled by a Rule and/or events
	global_par_R_LTC_B=0.538;
% Parameter:   id =  R_LTD_AW, name = R_LTD_AW
% Warning parameter R_LTD_AW is not constant, it should be controlled by a Rule and/or events
	global_par_R_LTD_AW=1.4;
% Parameter:   id =  R_LTD_B, name = R_LTD_B
% Warning parameter R_LTD_B is not constant, it should be controlled by a Rule and/or events
	global_par_R_LTD_B=0.538;
% Parameter:   id =  R_LTE_AW, name = R_LTE_AW
% Warning parameter R_LTE_AW is not constant, it should be controlled by a Rule and/or events
	global_par_R_LTE_AW=1.4;
% Parameter:   id =  R_LTE_B, name = R_LTE_B
% Warning parameter R_LTE_B is not constant, it should be controlled by a Rule and/or events
	global_par_R_LTE_B=0.538;
% Parameter:   id =  R_ZF_AW, name = R_ZF_AW
% Warning parameter R_ZF_AW is not constant, it should be controlled by a Rule and/or events
	global_par_R_ZF_AW=2.96;
% Parameter:   id =  R_ZF_B, name = R_ZF_B
% Warning parameter R_ZF_B is not constant, it should be controlled by a Rule and/or events
	global_par_R_ZF_B=0.533;
% Parameter:   id =  R_in_relax_FEV, name = R_in_relax_FEV
% Warning parameter R_in_relax_FEV is not constant, it should be controlled by a Rule and/or events
	global_par_R_in_relax_FEV=2.073;
% Parameter:   id =  T, name = T
% Warning parameter T is not constant, it should be controlled by a Rule and/or events
	global_par_T=1440.0;
% Parameter:   id =  TSN_0, name = TSN_0
% Warning parameter TSN_0 is not constant, it should be controlled by a Rule and/or events
	global_par_TSN_0=15.5;
% Parameter:   id =  V_CoA, name = V_CoA
% Warning parameter V_CoA is not constant, it should be controlled by a Rule and/or events
	global_par_V_CoA=350.0;
% Parameter:   id =  Vmax_PLA2, name = Vmax_PLA2
% Warning parameter Vmax_PLA2 is not constant, it should be controlled by a Rule and/or events
	global_par_Vmax_PLA2=450.0;
% Parameter:   id =  a, name = a
% Warning parameter a is not constant, it should be controlled by a Rule and/or events
	global_par_a=1.0;
% Parameter:   id =  al, name = al
% Warning parameter al is not constant, it should be controlled by a Rule and/or events
	global_par_al=1.0;
% Parameter:   id =  ca, name = ca
% Warning parameter ca is not constant, it should be controlled by a Rule and/or events
	global_par_ca=10.0;
% Parameter:   id =  diam_EO, name = diam_EO
% Warning parameter diam_EO is not constant, it should be controlled by a Rule and/or events
	global_par_diam_EO=1.2E-4;
% Parameter:   id =  fup_Hn, name = fup_Hn
% Warning parameter fup_Hn is not constant, it should be controlled by a Rule and/or events
	global_par_fup_Hn=0.77;
% Parameter:   id =  fup_LT, name = fup_LT
% Warning parameter fup_LT is not constant, it should be controlled by a Rule and/or events
	global_par_fup_LT=0.16;
% Parameter:   id =  fup_ML, name = fup_ML
% Warning parameter fup_ML is not constant, it should be controlled by a Rule and/or events
	global_par_fup_ML=0.004;
% Parameter:   id =  fup_ZF, name = fup_ZF
% Warning parameter fup_ZF is not constant, it should be controlled by a Rule and/or events
	global_par_fup_ZF=0.069;
% Parameter:   id =  h_act, name = h_act
% Warning parameter h_act is not constant, it should be controlled by a Rule and/or events
	global_par_h_act=3.0;
% Parameter:   id =  h_matur, name = h_matur
% Warning parameter h_matur is not constant, it should be controlled by a Rule and/or events
	global_par_h_matur=1.0;
% Parameter:   id =  h_migr, name = h_migr
% Warning parameter h_migr is not constant, it should be controlled by a Rule and/or events
	global_par_h_migr=3.0;
% Parameter:   id =  k1, name = k1
% Warning parameter k1 is not constant, it should be controlled by a Rule and/or events
	global_par_k1=1.0E-6;
% Parameter:   id =  k1_min, name = k1_min
% Warning parameter k1_min is not constant, it should be controlled by a Rule and/or events
	global_par_k1_min=1.6E-7;
% Parameter:   id =  k3, name = k3
% Warning parameter k3 is not constant, it should be controlled by a Rule and/or events
	global_par_k3=34.0;
% Parameter:   id =  k_3, name = k_3
% Warning parameter k_3 is not constant, it should be controlled by a Rule and/or events
	global_par_k_3=263640.0;
% Parameter:   id =  k_EO_a_d, name = k_EO_a_d
% Warning parameter k_EO_a_d is not constant, it should be controlled by a Rule and/or events
	global_par_k_EO_a_d=1.5E-4;
% Parameter:   id =  k_EO_d, name = k_EO_d
% Warning parameter k_EO_d is not constant, it should be controlled by a Rule and/or events
	global_par_k_EO_d=3.0E-4;
% Parameter:   id =  k_EO_m, name = k_EO_m
% Warning parameter k_EO_m is not constant, it should be controlled by a Rule and/or events
	global_par_k_EO_m=10.0;
% Parameter:   id =  k_EO_t_baw, name = k_EO_t_baw
% Warning parameter k_EO_t_baw is not constant, it should be controlled by a Rule and/or events
	global_par_k_EO_t_baw=0.04;
% Parameter:   id =  k_EO_t_bmb, name = k_EO_t_bmb
% Warning parameter k_EO_t_bmb is not constant, it should be controlled by a Rule and/or events
	global_par_k_EO_t_bmb=0.02;
% Parameter:   id =  k_Hn_d, name = k_Hn_d
% Warning parameter k_Hn_d is not constant, it should be controlled by a Rule and/or events
	global_par_k_Hn_d=0.033;
% Parameter:   id =  k_Hn_p, name = k_Hn_p
% Warning parameter k_Hn_p is not constant, it should be controlled by a Rule and/or events
	global_par_k_Hn_p=1.8E10;
% Parameter:   id =  k_IL_d, name = k_IL_d
% Warning parameter k_IL_d is not constant, it should be controlled by a Rule and/or events
	global_par_k_IL_d=0.0046;
% Parameter:   id =  k_IL_p, name = k_IL_p
% Warning parameter k_IL_p is not constant, it should be controlled by a Rule and/or events
	global_par_k_IL_p=16.0;
% Parameter:   id =  k_IL_t_awb, name = k_IL_t_awb
% Warning parameter k_IL_t_awb is not constant, it should be controlled by a Rule and/or events
	global_par_k_IL_t_awb=0.05;
% Parameter:   id =  k_IL_t_bbm, name = k_IL_t_bbm
% Warning parameter k_IL_t_bbm is not constant, it should be controlled by a Rule and/or events
	global_par_k_IL_t_bbm=0.001;
% Parameter:   id =  k_LTCs_back, name = k_LTCs_back
% Warning parameter k_LTCs_back is not constant, it should be controlled by a Rule and/or events
	global_par_k_LTCs_back=1003.709;
% Parameter:   id =  k_LTCs_fow, name = k_LTCs_fow
% Warning parameter k_LTCs_fow is not constant, it should be controlled by a Rule and/or events
	global_par_k_LTCs_fow=1068016.0;
% Parameter:   id =  k_abs_ml, name = k_abs_ml
% Warning parameter k_abs_ml is not constant, it should be controlled by a Rule and/or events
	global_par_k_abs_ml=0.012;
% Parameter:   id =  k_abs_zf, name = k_abs_zf
% Warning parameter k_abs_zf is not constant, it should be controlled by a Rule and/or events
	global_par_k_abs_zf=0.018;
% Parameter:   id =  k_acet, name = k_acet
% Warning parameter k_acet is not constant, it should be controlled by a Rule and/or events
	global_par_k_acet=0.002703885;
% Parameter:   id =  k_dp, name = k_dp
% Warning parameter k_dp is not constant, it should be controlled by a Rule and/or events
	global_par_k_dp=0.067;
% Parameter:   id =  k_elim_ml, name = k_elim_ml
% Warning parameter k_elim_ml is not constant, it should be controlled by a Rule and/or events
	global_par_k_elim_ml=0.00225;
% Parameter:   id =  k_elim_zf, name = k_elim_zf
% Warning parameter k_elim_zf is not constant, it should be controlled by a Rule and/or events
	global_par_k_elim_zf=0.004;
% Parameter:   id =  k_fev_eff, name = k_fev_eff
% Warning parameter k_fev_eff is not constant, it should be controlled by a Rule and/or events
	global_par_k_fev_eff=3000000.0;
% Parameter:   id =  k_ggt, name = k_ggt
% Warning parameter k_ggt is not constant, it should be controlled by a Rule and/or events
	global_par_k_ggt=0.1;
% Parameter:   id =  k_gpx_cat, name = k_gpx_cat
% Warning parameter k_gpx_cat is not constant, it should be controlled by a Rule and/or events
	global_par_k_gpx_cat=0.4884995;
% Parameter:   id =  k_hedh_1, name = k_hedh_1
% Warning parameter k_hedh_1 is not constant, it should be controlled by a Rule and/or events
	global_par_k_hedh_1=88.33768;
% Parameter:   id =  k_hedh_2, name = k_hedh_2
% Warning parameter k_hedh_2 is not constant, it should be controlled by a Rule and/or events
	global_par_k_hedh_2=1724.404;
% Parameter:   id =  k_hedh_3, name = k_hedh_3
% Warning parameter k_hedh_3 is not constant, it should be controlled by a Rule and/or events
	global_par_k_hedh_3=31.49749;
% Parameter:   id =  k_hedh_4, name = k_hedh_4
% Warning parameter k_hedh_4 is not constant, it should be controlled by a Rule and/or events
	global_par_k_hedh_4=8.077531;
% Parameter:   id =  k_lo, name = k_lo
% Warning parameter k_lo is not constant, it should be controlled by a Rule and/or events
	global_par_k_lo=4642.68;
% Parameter:   id =  k_lta_syn, name = k_lta_syn
% Warning parameter k_lta_syn is not constant, it should be controlled by a Rule and/or events
	global_par_k_lta_syn=54420.0;
% Parameter:   id =  k_ltc_ltd_el, name = k_ltc_ltd_el
% Warning parameter k_ltc_ltd_el is not constant, it should be controlled by a Rule and/or events
	global_par_k_ltc_ltd_el=0.1;
% Parameter:   id =  k_lte_el, name = k_lte_el
% Warning parameter k_lte_el is not constant, it should be controlled by a Rule and/or events
	global_par_k_lte_el=0.04;
% Parameter:   id =  k_ox, name = k_ox
% Warning parameter k_ox is not constant, it should be controlled by a Rule and/or events
	global_par_k_ox=2.658E-4;
% Parameter:   id =  k_ox2, name = k_ox2
% Warning parameter k_ox2 is not constant, it should be controlled by a Rule and/or events
	global_par_k_ox2=67.2;
% Parameter:   id =  k_red, name = k_red
% Warning parameter k_red is not constant, it should be controlled by a Rule and/or events
	global_par_k_red=2.538E-4;
% Parameter:   id =  k_red2, name = k_red2
% Warning parameter k_red2 is not constant, it should be controlled by a Rule and/or events
	global_par_k_red2=4.428E-5;
% Parameter:   id =  ka, name = ka
% Warning parameter ka is not constant, it should be controlled by a Rule and/or events
	global_par_ka=500.0;
% Parameter:   id =  ki, name = ki
% Warning parameter ki is not constant, it should be controlled by a Rule and/or events
	global_par_ki=25000.0;
% Parameter:   id =  kia, name = kia
% Warning parameter kia is not constant, it should be controlled by a Rule and/or events
	global_par_kia=0.001;
% Parameter:   id =  n_FEV, name = n_FEV
% Warning parameter n_FEV is not constant, it should be controlled by a Rule and/or events
	global_par_n_FEV=1.0;
% Parameter:   id =  naEO_LTCsyn, name = naEO_LTCsyn
% Warning parameter naEO_LTCsyn is not constant, it should be controlled by a Rule and/or events
	global_par_naEO_LTCsyn=0.0;
% Parameter:   id =  npi, name = npi
% Warning parameter npi is not constant, it should be controlled by a Rule and/or events
	global_par_npi=3.14;
% Parameter:   id =  oral, name = oral
% Warning parameter oral is not constant, it should be controlled by a Rule and/or events
	global_par_oral=1.0;
% Parameter:   id =  oxoETE_aw, name = oxoETE_aw
% Warning parameter oxoETE_aw is not constant, it should be controlled by a Rule and/or events
	global_par_oxoETE_aw=0.0;
% Parameter:   id =  oxoETE_b, name = oxoETE_b
% Warning parameter oxoETE_b is not constant, it should be controlled by a Rule and/or events
	global_par_oxoETE_b=0.0;
% Parameter:   id =  portion_migr, name = portion_migr
% Warning parameter portion_migr is not constant, it should be controlled by a Rule and/or events
	global_par_portion_migr=0.3;
% Parameter:   id =  zf_inh, name = zf_inh
% Warning parameter zf_inh is not constant, it should be controlled by a Rule and/or events
	global_par_zf_inh=0.0;
% Parameter:   id =  ft_zf, name = ft_zf
% Parameter:   id =  ft_ml, name = ft_ml
% Parameter:   id =  ZF_blood_conc, name = ZF_blood_conc
% Parameter:   id =  ZF_airways_conc, name = ZF_airways_conc
% Parameter:   id =  ML_blood_conc, name = ML_blood_conc
% Parameter:   id =  ML_airways_conc, name = ML_airways_conc
% Parameter:   id =  w_EO, name = w_EO
% Parameter:   id =  V_CB, name = V_CB
% Parameter:   id =  V_aCB, name = V_aCB
% Parameter:   id =  V_LTC_CB, name = V_LTC_CB
% Parameter:   id =  V_CAW, name = V_CAW
% Parameter:   id =  V_aCAW, name = V_aCAW
% Parameter:   id =  V_LTC_CAW, name = V_LTC_CAW
% Parameter:   id =  GSSG_b, name = GSSG_b
% Parameter:   id =  NADPH_b, name = NADPH_b
% Parameter:   id =  PLA2_D, name = PLA2_D
% Parameter:   id =  PLA2_Ca, name = PLA2_Ca
% Parameter:   id =  Ki_AA_AA, name = Ki_AA_AA
% Parameter:   id =  K_AA_HETE, name = K_AA_HETE
% Parameter:   id =  Ki_HPETE_AA, name = Ki_HPETE_AA
% Parameter:   id =  OOH_b, name = OOH_b
% Parameter:   id =  OH_b, name = OH_b
% Parameter:   id =  r1, name = r1
% Parameter:   id =  r2, name = r2
% Parameter:   id =  REDOX_b, name = REDOX_b
% Parameter:   id =  RELFLO5_b, name = RELFLO5_b
% Parameter:   id =  DFLOa_b, name = DFLOa_b
% Parameter:   id =  FLO3_b, name = FLO3_b
% Parameter:   id =  FLO2_b, name = FLO2_b
% Parameter:   id =  FLO3t_b, name = FLO3t_b
% Parameter:   id =  FLO2t_b, name = FLO2t_b
% Parameter:   id =  FLO5HP_b, name = FLO5HP_b
% Parameter:   id =  C_b, name = C_b
% Parameter:   id =  A_b, name = A_b
% Parameter:   id =  B_b, name = B_b
% Parameter:   id =  delta_LTCs_b, name = delta_LTCs_b
% Parameter:   id =  nom_LTCs_b, name = nom_LTCs_b
% Parameter:   id =  den_LTCs_b, name = den_LTCs_b
% Parameter:   id =  C_hedh_b, name = C_hedh_b
% Parameter:   id =  A_hedh_b, name = A_hedh_b
% Parameter:   id =  B_hedh_b, name = B_hedh_b
% Parameter:   id =  GSSG_aw, name = GSSG_aw
% Parameter:   id =  NADPH_aw, name = NADPH_aw
% Parameter:   id =  OOH_aw, name = OOH_aw
% Parameter:   id =  OH_aw, name = OH_aw
% Parameter:   id =  REDOX_aw, name = REDOX_aw
% Parameter:   id =  RELFLO5_aw, name = RELFLO5_aw
% Parameter:   id =  DFLOa_aw, name = DFLOa_aw
% Parameter:   id =  FLO3_aw, name = FLO3_aw
% Parameter:   id =  FLO2_aw, name = FLO2_aw
% Parameter:   id =  FLO3t_aw, name = FLO3t_aw
% Parameter:   id =  FLO2t_aw, name = FLO2t_aw
% Parameter:   id =  FLO5HP_aw, name = FLO5HP_aw
% Parameter:   id =  C_aw, name = C_aw
% Parameter:   id =  A_aw, name = A_aw
% Parameter:   id =  B_aw, name = B_aw
% Parameter:   id =  delta_LTCs_aw, name = delta_LTCs_aw
% Parameter:   id =  nom_LTCs_aw, name = nom_LTCs_aw
% Parameter:   id =  den_LTCs_aw, name = den_LTCs_aw
% Parameter:   id =  C_hedh_aw, name = C_hedh_aw
% Parameter:   id =  A_hedh_aw, name = A_hedh_aw
% Parameter:   id =  B_hedh_aw, name = B_hedh_aw
% Parameter:   id =  OL_b, name = OL_b
% Parameter:   id =  OL_aw, name = OL_aw
% Parameter:   id =  Rec_occup_migr, name = Rec_occup_migr
% Parameter:   id =  Ca_FEV, name = Ca_FEV
% Parameter:   id =  r_out_FEV, name = r_out_FEV
% Parameter:   id =  r_in_FEV, name = r_in_FEV
% Parameter:   id =  FEV1, name = FEV1
% Parameter:   id =  TSN, name = TSN
% Parameter:   id =  TSN_Hn, name = TSN_Hn
% Parameter:   id =  FEV1_percent, name = FEV1_percent
% Parameter:   id =  time_hour, name = time_hour
% Parameter:   id =  time_day, name = time_day
% Parameter:   id =  N_EO_bm, name = N_EO_bm
% Parameter:   id =  N_EO_b, name = N_EO_b
% Parameter:   id =  N_EO_i_b, name = N_EO_i_b
% Parameter:   id =  N_EO_a_b, name = N_EO_a_b
% Parameter:   id =  EO_b_tot, name = EO_b_tot
% Parameter:   id =  N_EO_b_tot, name = N_EO_b_tot
% Parameter:   id =  N_EO_aw, name = N_EO_aw
% Parameter:   id =  N_EO_i_aw, name = N_EO_i_aw
% Parameter:   id =  N_EO_a_aw, name = N_EO_a_aw
% Parameter:   id =  EO_aw_tot, name = EO_aw_tot
% Parameter:   id =  N_EO_aw_tot, name = N_EO_aw_tot
% Parameter:   id =  EO_b_tot_per_ss, name = EO_b_tot_per_ss
% Parameter:   id =  N_EO_aw_tot_perc, name = N_EO_aw_tot_perc
% Parameter:   id =  N_EO_b_tot_perc, name = N_EO_b_tot_perc
% Parameter:   id =  N_EO, name = N_EO
% Parameter:   id =  N_EO_a, name = N_EO_a
% Parameter:   id =  LTC4_b_pM, name = LTC4_b_pM
% Parameter:   id =  LTs_aw_pg, name = LTs_aw_pg
% Parameter:   id =  LTD4_b_free, name = LTD4_b_free
% Parameter:   id =  ML_uM, name = ML_uM
% Parameter:   id =  LTD4_aw_pers, name = LTD4_aw_pers
% Parameter:   id =  N_EO_perc, name = N_EO_perc
% Parameter:   id =  Hn_aw_perc, name = Hn_aw_perc
% Parameter:   id =  N_EO_aw_perc, name = N_EO_aw_perc
% Parameter:   id =  Ca_FEV_LTR1, name = Ca_FEV_LTR1
% Parameter:   id =  Ca_FEV_LTR2, name = Ca_FEV_LTR2
% Parameter:   id =  OL_ASM, name = OL_ASM
% assignmentRule: variable = ft_zf
	global_par_ft_zf=ceil(time/global_par_T)+ceil((time-3.6E2)/global_par_T)+ceil((time-6.6E2)/global_par_T)+ceil((time-9.6E2)/global_par_T);
% assignmentRule: variable = ft_ml
	global_par_ft_ml=ceil(time/global_par_T);
% assignmentRule: variable = ZF_blood_conc
	global_par_ZF_blood_conc=global_par_fup_ZF*x(30);
% assignmentRule: variable = ZF_airways_conc
	global_par_ZF_airways_conc=x(31);
% assignmentRule: variable = ML_blood_conc
	global_par_ML_blood_conc=global_par_fup_ML*x(33);
% assignmentRule: variable = ML_airways_conc
	global_par_ML_airways_conc=global_par_fup_ML*x(33);
% assignmentRule: variable = w_EO
	global_par_w_EO=global_par_npi*global_par_diam_EO^3.0/6.0;
% assignmentRule: variable = V_CB
	global_par_V_CB=(x(11)+x(9)+x(10))*global_par_N_A_pmole*global_par_w_EO*compartment_V_B;
% assignmentRule: variable = V_aCB
	global_par_V_aCB=x(11)*global_par_N_A_pmole*global_par_w_EO*compartment_V_B;
% assignmentRule: variable = V_LTC_CB
	global_par_V_LTC_CB=(global_par_naEO_LTCsyn*(x(9)+x(10))+x(11))*global_par_N_A_pmole*global_par_w_EO*compartment_V_B;
% assignmentRule: variable = V_CAW
	global_par_V_CAW=(x(13)+x(14)+x(12))*global_par_N_A_pmole*global_par_w_EO*compartment_V_AW;
% assignmentRule: variable = V_aCAW
	global_par_V_aCAW=x(13)*global_par_N_A_pmole*global_par_w_EO*compartment_V_AW;
% assignmentRule: variable = V_LTC_CAW
	global_par_V_LTC_CAW=(global_par_naEO_LTCsyn*(x(14)+x(12))+x(13))*global_par_N_A_pmole*global_par_w_EO*compartment_V_AW;
% assignmentRule: variable = GSSG_b
	global_par_GSSG_b=(global_par_GS_pool_b-global_par_GSH_b)/2.0;
% assignmentRule: variable = NADPH_b
	global_par_NADPH_b=global_par_NP_pool_b-global_par_NADP_b;
% assignmentRule: variable = PLA2_D
	global_par_PLA2_D=1.0+global_par_Ca/global_par_K_PLA2_Ca;
% assignmentRule: variable = PLA2_Ca
	global_par_PLA2_Ca=global_par_Ca/global_par_K_PLA2_Ca/global_par_PLA2_D;
% assignmentRule: variable = Ki_AA_AA
	global_par_Ki_AA_AA=global_par_Ki_AA;
% assignmentRule: variable = K_AA_HETE
	global_par_K_AA_HETE=global_par_Ki_HETE;
% assignmentRule: variable = Ki_HPETE_AA
	global_par_Ki_HPETE_AA=global_par_Ki_AA;
% assignmentRule: variable = OOH_b
	global_par_OOH_b=x(2)+global_par_LOOH_b;
% assignmentRule: variable = OH_b
	global_par_OH_b=x(3)+global_par_LOH_b;
% assignmentRule: variable = r1
	global_par_r1=global_par_k_ox+global_par_k_ox2*global_par_Ca/global_par_K_Ca2;
% assignmentRule: variable = r2
	global_par_r2=global_par_k_red+global_par_k_red2*global_par_Ca/global_par_K_Ca2;
% assignmentRule: variable = REDOX_b
	global_par_REDOX_b=(global_par_r2/global_par_Ke_red+global_par_r1*global_par_OH_b/global_par_Ke_ox+global_par_al*global_par_ki*global_par_ZF_blood_conc/global_par_KdZ*(1.0+global_par_Ca/global_par_K_Ca3))/(global_par_r2+global_par_r1*global_par_OOH_b);
% assignmentRule: variable = RELFLO5_b
	global_par_RELFLO5_b=(global_par_k_lo*x(1)/global_par_K_AA+global_par_k3*x(2)*(1.0+x(1)/global_par_Ki_AA))/(global_par_k_lta_syn+global_par_k_3*(1.0+x(1)/global_par_Ki_HPETE_AA));
% assignmentRule: variable = DFLOa_b
	global_par_DFLOa_b=(1.0+global_par_Ca/global_par_K_Ca3)*(1.0+global_par_REDOX_b*(1.0+global_par_Ca/global_par_K_Ca2)/(1.0+global_par_Ca/global_par_K_Ca3)+x(1)/global_par_K_AA*(1.0+x(1)/global_par_Ki_AA_AA)+x(1)/global_par_Ki_AA*(1.0+x(3)/global_par_K_AA_HETE)+global_par_RELFLO5_b*(1.0+x(1)/global_par_Ki_HPETE_AA)+x(3)/global_par_Ki_HETE+global_par_al*global_par_ZF_blood_conc/global_par_KdZ);
% assignmentRule: variable = FLO3_b
	global_par_FLO3_b=global_par_FLOa/global_par_DFLOa_b;
% assignmentRule: variable = FLO2_b
	global_par_FLO2_b=global_par_FLO3_b*global_par_REDOX_b;
% assignmentRule: variable = FLO3t_b
	global_par_FLO3t_b=global_par_FLO3_b*(1.0+global_par_Ca/global_par_K_Ca3);
% assignmentRule: variable = FLO2t_b
	global_par_FLO2t_b=global_par_FLO2_b*(1.0+global_par_Ca/global_par_K_Ca2);
% assignmentRule: variable = FLO5HP_b
	global_par_FLO5HP_b=global_par_FLO3t_b*global_par_RELFLO5_b;
% assignmentRule: variable = C_b
	global_par_C_b=x(2)*global_par_GSH_b*global_par_GSH_b/(global_par_Km_gpx_HPETE5*global_par_Km_gpx_GSH*global_par_Km_gpx_GSH);
% assignmentRule: variable = A_b
	global_par_A_b=global_par_GSH_b*global_par_GSH_b/(global_par_Km_gpx_GSH*global_par_Km_gpx_GSH)*(1.0+global_par_GSSG_b/global_par_Kd_gpx_GSSG)+x(2)/global_par_Km_gpx_HPETE5*(1.0+x(3)/global_par_Kd_gpx_HETE5)+global_par_C_b;
% assignmentRule: variable = B_b
	global_par_B_b=global_par_k_gpx_cat*x(2)*global_par_GSH_b*global_par_GSH_b/(global_par_Km_gpx_HPETE5*global_par_Km_gpx_GSH*global_par_Km_gpx_GSH);
% assignmentRule: variable = delta_LTCs_b
	global_par_delta_LTCs_b=1.0+x(4)/global_par_K_LTA+global_par_GSH_b/global_par_K_GSH+x(4)*global_par_GSH_b/global_par_K_LTA/global_par_K_LTA_GSH+x(5)/global_par_K_LTC;
% assignmentRule: variable = nom_LTCs_b
	global_par_nom_LTCs_b=global_par_Et_LTCs*(global_par_K_LTC*global_par_k_LTCs_fow*x(4)*global_par_GSH_b-global_par_k_LTCs_back*global_par_K_LTA_GSH*global_par_K_GSH*x(5));
% assignmentRule: variable = den_LTCs_b
	global_par_den_LTCs_b=global_par_delta_LTCs_b*global_par_K_LTA_GSH*global_par_K_GSH*global_par_K_LTC;
% assignmentRule: variable = C_hedh_b
	global_par_C_hedh_b=(1.0+x(3)/global_par_Kd_hedh_HETE5+global_par_NADPH_b/global_par_Kd_hedh_NADPH)*(global_par_k_hedh_3*global_par_oxoETE_b/global_par_Kd_hedh_oxoETE5+global_par_k_hedh_2*global_par_NADP_b/global_par_Kd_hedh_NADP);
% assignmentRule: variable = A_hedh_b
	global_par_A_hedh_b=(1.0+global_par_NADP_b/global_par_Kd_hedh_NADP+global_par_oxoETE_b/global_par_Kd_hedh_oxoETE5)*(global_par_k_hedh_1*x(3)/global_par_Kd_hedh_HETE5+global_par_k_hedh_4*global_par_NADPH_b/global_par_Kd_hedh_NADPH)+global_par_C_hedh_b;
% assignmentRule: variable = B_hedh_b
	global_par_B_hedh_b=global_par_k_hedh_1*global_par_k_hedh_2*x(3)*global_par_NADP_b/(global_par_Kd_hedh_HETE5*global_par_Kd_hedh_NADP)-global_par_oxoETE_b*global_par_NADPH_b*global_par_k_hedh_3*global_par_k_hedh_4/(global_par_Kd_hedh_oxoETE5*global_par_Kd_hedh_NADPH);
% assignmentRule: variable = GSSG_aw
	global_par_GSSG_aw=(global_par_GS_pool_aw-global_par_GSH_aw)/2.0;
% assignmentRule: variable = NADPH_aw
	global_par_NADPH_aw=global_par_NP_pool_aw-global_par_NADP_aw;
% assignmentRule: variable = OOH_aw
	global_par_OOH_aw=x(20)+global_par_LOOH_aw;
% assignmentRule: variable = OH_aw
	global_par_OH_aw=x(21)+global_par_LOH_aw;
% assignmentRule: variable = REDOX_aw
	global_par_REDOX_aw=(global_par_r2/global_par_Ke_red+global_par_r1*global_par_OH_aw/global_par_Ke_ox+global_par_al*global_par_ki*global_par_ZF_airways_conc/global_par_KdZ*(1.0+global_par_Ca/global_par_K_Ca3))/(global_par_r2+global_par_r1*global_par_OOH_aw);
% assignmentRule: variable = RELFLO5_aw
	global_par_RELFLO5_aw=(global_par_k_lo*x(19)/global_par_K_AA+global_par_k3*x(20)*(1.0+x(19)/global_par_Ki_AA))/(global_par_k_lta_syn+global_par_k_3*(1.0+x(19)/global_par_Ki_HPETE_AA));
% assignmentRule: variable = DFLOa_aw
	global_par_DFLOa_aw=(1.0+global_par_Ca/global_par_K_Ca3)*(1.0+global_par_REDOX_aw*(1.0+global_par_Ca/global_par_K_Ca2)/(1.0+global_par_Ca/global_par_K_Ca3)+x(19)/global_par_K_AA*(1.0+x(19)/global_par_Ki_AA_AA)+x(19)/global_par_Ki_AA*(1.0+x(21)/global_par_K_AA_HETE)+global_par_RELFLO5_aw*(1.0+x(19)/global_par_Ki_HPETE_AA)+x(21)/global_par_Ki_HETE+global_par_al*global_par_ZF_airways_conc/global_par_KdZ);
% assignmentRule: variable = FLO3_aw
	global_par_FLO3_aw=global_par_FLOa/global_par_DFLOa_aw;
% assignmentRule: variable = FLO2_aw
	global_par_FLO2_aw=global_par_FLO3_aw*global_par_REDOX_aw;
% assignmentRule: variable = FLO3t_aw
	global_par_FLO3t_aw=global_par_FLO3_aw*(1.0+global_par_Ca/global_par_K_Ca3);
% assignmentRule: variable = FLO2t_aw
	global_par_FLO2t_aw=global_par_FLO2_aw*(1.0+global_par_Ca/global_par_K_Ca2);
% assignmentRule: variable = FLO5HP_aw
	global_par_FLO5HP_aw=global_par_FLO3t_aw*global_par_RELFLO5_aw;
% assignmentRule: variable = C_aw
	global_par_C_aw=x(20)*global_par_GSH_aw*global_par_GSH_aw/(global_par_Km_gpx_HPETE5*global_par_Km_gpx_GSH*global_par_Km_gpx_GSH);
% assignmentRule: variable = A_aw
	global_par_A_aw=global_par_GSH_aw*global_par_GSH_aw/(global_par_Km_gpx_GSH*global_par_Km_gpx_GSH)*(1.0+global_par_GSSG_aw/global_par_Kd_gpx_GSSG)+x(20)/global_par_Km_gpx_HPETE5*(1.0+x(21)/global_par_Kd_gpx_HETE5)+global_par_C_aw;
% assignmentRule: variable = B_aw
	global_par_B_aw=global_par_k_gpx_cat*x(20)*global_par_GSH_aw*global_par_GSH_aw/(global_par_Km_gpx_HPETE5*global_par_Km_gpx_GSH*global_par_Km_gpx_GSH);
% assignmentRule: variable = delta_LTCs_aw
	global_par_delta_LTCs_aw=1.0+x(22)/global_par_K_LTA+global_par_GSH_aw/global_par_K_GSH+x(22)*global_par_GSH_aw/global_par_K_LTA/global_par_K_LTA_GSH+x(23)/global_par_K_LTC;
% assignmentRule: variable = nom_LTCs_aw
	global_par_nom_LTCs_aw=global_par_Et_LTCs*(global_par_K_LTC*global_par_k_LTCs_fow*x(22)*global_par_GSH_aw-global_par_k_LTCs_back*global_par_K_LTA_GSH*global_par_K_GSH*x(23));
% assignmentRule: variable = den_LTCs_aw
	global_par_den_LTCs_aw=global_par_delta_LTCs_aw*global_par_K_LTA_GSH*global_par_K_GSH*global_par_K_LTC;
% assignmentRule: variable = C_hedh_aw
	global_par_C_hedh_aw=(1.0+x(21)/global_par_Kd_hedh_HETE5+global_par_NADPH_aw/global_par_Kd_hedh_NADPH)*(global_par_k_hedh_3*global_par_oxoETE_aw/global_par_Kd_hedh_oxoETE5+global_par_k_hedh_2*global_par_NADP_aw/global_par_Kd_hedh_NADP);
% assignmentRule: variable = A_hedh_aw
	global_par_A_hedh_aw=(1.0+global_par_NADP_aw/global_par_Kd_hedh_NADP+global_par_oxoETE_aw/global_par_Kd_hedh_oxoETE5)*(global_par_k_hedh_1*x(21)/global_par_Kd_hedh_HETE5+global_par_k_hedh_4*global_par_NADPH_aw/global_par_Kd_hedh_NADPH)+global_par_C_hedh_aw;
% assignmentRule: variable = B_hedh_aw
	global_par_B_hedh_aw=global_par_k_hedh_1*global_par_k_hedh_2*x(21)*global_par_NADP_aw/(global_par_Kd_hedh_HETE5*global_par_Kd_hedh_NADP)-global_par_oxoETE_aw*global_par_NADPH_aw*global_par_k_hedh_3*global_par_k_hedh_4/(global_par_Kd_hedh_oxoETE5*global_par_Kd_hedh_NADPH);
% assignmentRule: variable = OL_b
	global_par_OL_b=global_par_R1_portion_EOa*global_par_fup_LT*x(7)/global_par_Kd_LT/(1.0+global_par_fup_LT*x(7)/global_par_Kd_LT+global_par_ML_blood_conc/global_par_Ki_ML_EOa)+(1.0-global_par_R1_portion_EOa)*global_par_fup_LT*(x(6)+x(7))/global_par_Kd_LT_2/(1.0+global_par_fup_LT*(x(6)+x(7))/global_par_Kd_LT_2);
% assignmentRule: variable = OL_aw
	global_par_OL_aw=global_par_R1_portion_EOa*x(25)/global_par_Kd_LT/(1.0+x(25)/global_par_Kd_LT+global_par_ML_airways_conc/global_par_Ki_ML_EOa)+(1.0-global_par_R1_portion_EOa)*(x(24)+x(25))/global_par_Kd_LT_2/(1.0+(x(24)+x(25))/global_par_Kd_LT_2);
% assignmentRule: variable = Rec_occup_migr
	global_par_Rec_occup_migr=global_par_portion_migr*global_par_fup_LT*x(8)/(global_par_Kd_LTE_migr+global_par_fup_LT*x(8))+(1.0-global_par_portion_migr)*x(16)/(global_par_Kd_IL_migr+x(16));
% assignmentRule: variable = Ca_FEV
	global_par_Ca_FEV=global_par_Cao_FEV+global_par_k_fev_eff*(global_par_R1_portion_FEV*x(25)/global_par_Kd_LTR1_FEV/(1.0+x(25)/global_par_Kd_LTR1_FEV+global_par_ML_airways_conc/global_par_EC50_ML_FEV)+global_par_R2_portion_FEV*(x(25)+x(24))/global_par_Kd_LTR2_FEV/(1.0+(x(25)+x(24))/global_par_Kd_LTR2_FEV)+(1.0-global_par_R1_portion_FEV-global_par_R2_portion_FEV)*x(27)/global_par_Kd_Hn_FEV/(1.0+x(27)/global_par_Kd_Hn_FEV));
% assignmentRule: variable = r_out_FEV
	global_par_r_out_FEV=global_par_R_FEV-(global_par_R_FEV-(global_par_R_FEV*(global_par_R_FEV-global_par_R_in_relax_FEV)^2.0)^(1.0/3.0))*global_par_Ca_FEV^global_par_n_FEV/(global_par_K_Ca_FEV^global_par_n_FEV+global_par_Ca_FEV^global_par_n_FEV);
% assignmentRule: variable = r_in_FEV
	global_par_r_in_FEV=global_par_r_out_FEV-(global_par_R_FEV-global_par_R_in_relax_FEV)*(global_par_R_FEV/global_par_r_out_FEV)^(5E-1);
% assignmentRule: variable = FEV1
	global_par_FEV1=global_par_MAX_FEV*(global_par_r_in_FEV/global_par_R_in_relax_FEV)^2.0;
% assignmentRule: variable = TSN
	global_par_TSN=global_par_TSN_0*(global_par_R_FEV-(global_par_R_FEV*(global_par_R_FEV-global_par_R_in_relax_FEV)^2.0)^(1.0/3.0))*global_par_Ca_FEV_ex^global_par_n_FEV/(global_par_K_Ca_FEV^global_par_n_FEV+global_par_Ca_FEV_ex^global_par_n_FEV);
% assignmentRule: variable = TSN_Hn
	global_par_TSN_Hn=global_par_TSN_0*(global_par_R_FEV-(global_par_R_FEV*(global_par_R_FEV-global_par_R_in_relax_FEV)^2.0)^(1.0/3.0))*global_par_Ca_FEV^global_par_n_FEV/(global_par_K_Ca_FEV^global_par_n_FEV+global_par_Ca_FEV^global_par_n_FEV);
% assignmentRule: variable = FEV1_percent
	global_par_FEV1_percent=(global_par_FEV1-3.528)/3.528*1E2;
% assignmentRule: variable = time_hour
	global_par_time_hour=time/6E1;
% assignmentRule: variable = time_day
	global_par_time_day=time/1.44E3;
% assignmentRule: variable = N_EO_bm
	global_par_N_EO_bm=x(18)*6.02*1E1^8.0;
% assignmentRule: variable = N_EO_b
	global_par_N_EO_b=x(9)*6.02*1E1^8.0;
% assignmentRule: variable = N_EO_i_b
	global_par_N_EO_i_b=x(10)*6.02*1E1^8.0;
% assignmentRule: variable = N_EO_a_b
	global_par_N_EO_a_b=x(11)*6.02*1E1^8.0;
% assignmentRule: variable = EO_b_tot
	global_par_EO_b_tot=x(9)+x(10)+x(11);
% assignmentRule: variable = N_EO_b_tot
	global_par_N_EO_b_tot=(x(9)+x(10)+x(11))*6.02*1E1^8.0;
% assignmentRule: variable = N_EO_aw
	global_par_N_EO_aw=x(14)*6.02*1E1^8.0;
% assignmentRule: variable = N_EO_i_aw
	global_par_N_EO_i_aw=x(12)*6.02*1E1^8.0;
% assignmentRule: variable = N_EO_a_aw
	global_par_N_EO_a_aw=x(13)*6.02*1E1^8.0;
% assignmentRule: variable = EO_aw_tot
	global_par_EO_aw_tot=x(14)+x(12)+x(13);
% assignmentRule: variable = N_EO_aw_tot
	global_par_N_EO_aw_tot=(x(14)+x(12)+x(13))*6.02*1E1^8.0;
% assignmentRule: variable = EO_b_tot_per_ss
	global_par_EO_b_tot_per_ss=1E2*(global_par_EO_b_tot-5.33E-4)/5.33E-4;
% assignmentRule: variable = N_EO_aw_tot_perc
	global_par_N_EO_aw_tot_perc=global_par_N_EO_aw_tot/8.18735E5*1E2;
% assignmentRule: variable = N_EO_b_tot_perc
	global_par_N_EO_b_tot_perc=global_par_N_EO_b_tot/4.266021E6*1E2;
% assignmentRule: variable = N_EO
	global_par_N_EO=(global_par_N_EO_b_tot*compartment_V_B+global_par_N_EO_aw_tot*compartment_V_AW)/(compartment_V_B+compartment_V_AW);
% assignmentRule: variable = N_EO_a
	global_par_N_EO_a=(global_par_N_EO_a_b*compartment_V_B+global_par_N_EO_a_aw*compartment_V_AW)/(compartment_V_B+compartment_V_AW);
% assignmentRule: variable = LTC4_b_pM
	global_par_LTC4_b_pM=x(5)*1E6;
% assignmentRule: variable = LTs_aw_pg
	global_par_LTs_aw_pg=(x(24)/global_par_fup_LT*global_par_M_LTC+x(25)/global_par_fup_LT*global_par_M_LTD+x(26)/global_par_fup_LT*global_par_M_LTE)/1E3;
% assignmentRule: variable = LTD4_b_free
	global_par_LTD4_b_free=x(7)*global_par_fup_LT;
% assignmentRule: variable = ML_uM
	global_par_ML_uM=x(33)/1E6;
% assignmentRule: variable = LTD4_aw_pers
	global_par_LTD4_aw_pers=1E2*x(25)/2.0576E2;
% assignmentRule: variable = N_EO_perc
	global_par_N_EO_perc=1E2*global_par_N_EO/3.58758E5;
% assignmentRule: variable = Hn_aw_perc
	global_par_Hn_aw_perc=1E2*x(27)/1.4162E4;
% assignmentRule: variable = N_EO_aw_perc
	global_par_N_EO_aw_perc=1E2*global_par_N_EO_aw_tot/8.18735E5;
% assignmentRule: variable = Ca_FEV_LTR1
	global_par_Ca_FEV_LTR1=global_par_k_fev_eff*global_par_R1_portion_FEV*x(25)/global_par_Kd_LTR1_FEV/(1.0+x(25)/global_par_Kd_LTR1_FEV+global_par_ML_airways_conc/global_par_EC50_ML_FEV)/(global_par_Ca_FEV-global_par_Cao_FEV);
% assignmentRule: variable = Ca_FEV_LTR2
	global_par_Ca_FEV_LTR2=global_par_k_fev_eff*(global_par_R2_portion_FEV*(x(25)+x(24))/global_par_Kd_LTR2_FEV/(1.0+(x(25)+x(24))/global_par_Kd_LTR2_FEV)+(1.0-global_par_R1_portion_FEV-global_par_R2_portion_FEV)*x(27)/global_par_Kd_Hn_FEV/(1.0+x(27)/global_par_Kd_Hn_FEV))/(global_par_Ca_FEV-global_par_Cao_FEV);
% assignmentRule: variable = OL_ASM
	global_par_OL_ASM=global_par_R1_portion_FEV*x(25)/global_par_Kd_LTR1_FEV/(1.0+x(25)/global_par_Kd_LTR1_FEV+global_par_ML_airways_conc/global_par_EC50_ML_FEV)+global_par_R2_portion_FEV*(x(25)+x(24))/global_par_Kd_LTR2_FEV/(1.0+(x(25)+x(24))/global_par_Kd_LTR2_FEV)+(1.0-global_par_R1_portion_FEV-global_par_R2_portion_FEV)*x(27)/global_par_Kd_Hn_FEV/(1.0+x(27)/global_par_Kd_Hn_FEV);

% Reaction: id = v1, name = v1
	reaction_v1=compartment_Default*(global_par_Vmax_PLA2*global_par_PLA2_Ca*global_par_PL/(global_par_Km_PLA2_APC+global_par_PL)-global_par_V_CoA*x(1)/(global_par_Km_CoA_AA+x(1)));

% Reaction: id = v2, name = v2
	reaction_v2=compartment_Default*global_par_k_lo*x(1)*global_par_FLO3t_b/global_par_K_AA;

% Reaction: id = v3, name = v3
	reaction_v3=compartment_Default*(global_par_k_3*global_par_FLO5HP_b-global_par_k3*global_par_FLO3t_b*x(2))*(1.0+x(1)/global_par_Ki_AA);

% Reaction: id = v4, name = v4
	reaction_v4=compartment_Default*global_par_r1*(x(2)*global_par_FLO2_b-x(3)*global_par_FLO3_b/global_par_Ke_ox);

% Reaction: id = v5, name = v5
	reaction_v5=compartment_Default*global_par_GPx*global_par_B_b/global_par_A_b;

% Reaction: id = v6, name = v6
	reaction_v6=compartment_Default*global_par_k_lta_syn*global_par_FLO5HP_b;

% Reaction: id = v7, name = v7
	reaction_v7=compartment_Default*global_par_nom_LTCs_b/global_par_den_LTCs_b;

% Reaction: id = v8, name = v8
	reaction_v8=compartment_Default*global_par_HEDH5*global_par_B_hedh_b/global_par_A_hedh_b;

% Reaction: id = v9, name = v9
	reaction_v9=compartment_Default*global_par_Kd12*x(4);

% Reaction: id = v10in, name = v10in
	reaction_v10in=compartment_Default*global_par_Kd50*x(5);

% Reaction: id = v10out, name = v10out
	reaction_v10out=compartment_Default*global_par_Kd50*x(5)*global_par_V_LTC_CB*1E1^6.0;

% Reaction: id = v11, name = v11
	reaction_v11=compartment_Vd_LTC*global_par_k_ggt*global_par_fup_LT*x(6);

% Reaction: id = v12, name = v12
	reaction_v12=compartment_Vd_LTD*global_par_k_dp*global_par_fup_LT*x(7);

% Reaction: id = v13, name = v13
	reaction_v13=compartment_Vd_LTC*global_par_k_ltc_ltd_el*global_par_fup_LT*x(6);

% Reaction: id = v14, name = v14
	reaction_v14=compartment_Vd_LTD*global_par_k_ltc_ltd_el*global_par_fup_LT*x(7);

% Reaction: id = v15, name = v15
	reaction_v15=compartment_Vd_LTE*(global_par_k_lte_el+global_par_k_acet)*global_par_fup_LT*x(8);

% Reaction: id = v16, name = v16
	reaction_v16=global_par_ca*compartment_V_B*global_par_ka*x(9)*global_par_OL_b^global_par_h_act/(global_par_EC50_act^global_par_h_act+global_par_OL_b^global_par_h_act);

% Reaction: id = v17, name = v17
	reaction_v17=global_par_ca*compartment_V_B*global_par_k_EO_m*x(10);

% Reaction: id = v18, name = v18
	reaction_v18=global_par_ca*compartment_V_B*global_par_kia*x(11);

% Reaction: id = v19, name = v19
	reaction_v19=compartment_V_B*global_par_k_EO_d*x(9);

% Reaction: id = v20, name = v20
	reaction_v20=compartment_V_B*global_par_k_EO_a_d*x(11);

% Reaction: id = v21, name = v21
	reaction_v21=compartment_V_B*global_par_k_EO_t_baw*x(10)*global_par_Rec_occup_migr^global_par_h_migr/(global_par_EC50_migr^global_par_h_migr+global_par_Rec_occup_migr^global_par_h_migr);

% Reaction: id = v22, name = v22
	reaction_v22=compartment_V_B*global_par_k_EO_t_baw*x(11)*global_par_Rec_occup_migr^global_par_h_migr/(global_par_EC50_migr^global_par_h_migr+global_par_Rec_occup_migr^global_par_h_migr);

% Reaction: id = v23, name = v23
	reaction_v23=compartment_V_B*global_par_k_EO_t_baw*x(9)*global_par_Rec_occup_migr^global_par_h_migr/(global_par_EC50_migr^global_par_h_migr+global_par_Rec_occup_migr^global_par_h_migr);

% Reaction: id = v24, name = v24
	reaction_v24=compartment_V_B*global_par_k_Hn_p*(x(9)+x(10)+x(11));

% Reaction: id = v25, name = v25
	reaction_v25=compartment_Vd_Hn*global_par_k_Hn_d*global_par_fup_Hn*x(15);

% Reaction: id = v26, name = v26
	reaction_v26=compartment_V_B*global_par_k_IL_p*x(11);

% Reaction: id = v27, name = v27
	reaction_v27=compartment_Vd_IL5*global_par_k_IL_d*x(16);

% Reaction: id = v28, name = v28
	reaction_v28=global_par_k_IL_t_bbm*(x(16)-x(17))-global_par_J_BM_lymfl*x(17);

% Reaction: id = v29, name = v29
	reaction_v29=compartment_V_BM*(global_par_k1*x(17)^global_par_h_matur/(global_par_Km_1^global_par_h_matur+x(17)^global_par_h_matur)+global_par_k1_min);

% Reaction: id = v30, name = v30
	reaction_v30=global_par_ca*compartment_V_BM*global_par_k_EO_t_bmb*x(18);

% Reaction: id = v31, name = v31
	reaction_v31=compartment_Default*(global_par_Vmax_PLA2*global_par_PLA2_Ca*global_par_PL/(global_par_Km_PLA2_APC+global_par_PL)-global_par_V_CoA*x(19)/(global_par_Km_CoA_AA+x(19)));

% Reaction: id = v32, name = v32
	reaction_v32=compartment_Default*global_par_k_lo*x(19)*global_par_FLO3t_aw/global_par_K_AA;

% Reaction: id = v33, name = v33
	reaction_v33=compartment_Default*(global_par_k_3*global_par_FLO5HP_aw-global_par_k3*global_par_FLO3t_aw*x(20))*(1.0+x(19)/global_par_Ki_AA);

% Reaction: id = v34, name = v34
	reaction_v34=compartment_Default*global_par_r1*(x(20)*global_par_FLO2_aw-x(21)*global_par_FLO3_aw/global_par_Ke_ox);

% Reaction: id = v35, name = v35
	reaction_v35=compartment_Default*global_par_GPx*global_par_B_aw/global_par_A_aw;

% Reaction: id = v36, name = v36
	reaction_v36=compartment_Default*global_par_k_lta_syn*global_par_FLO5HP_aw;

% Reaction: id = v37, name = v37
	reaction_v37=compartment_Default*global_par_nom_LTCs_aw/global_par_den_LTCs_aw;

% Reaction: id = v38, name = v38
	reaction_v38=compartment_Default*global_par_HEDH5*global_par_B_hedh_aw/global_par_A_hedh_aw;

% Reaction: id = v39, name = v39
	reaction_v39=compartment_Default*global_par_Kd12*x(22);

% Reaction: id = v40in, name = v40in
	reaction_v40in=compartment_Default*global_par_Kd50*x(23);

% Reaction: id = v40out, name = v40out
	reaction_v40out=compartment_Default*global_par_Kd50*x(23)*global_par_V_LTC_CAW*1E1^6.0;

% Reaction: id = v41, name = v41
	reaction_v41=compartment_Vd_AW_LTC*global_par_k_ggt*x(24);

% Reaction: id = v42, name = v42
	reaction_v42=compartment_Vd_AW_LTD*global_par_k_dp*x(25);

% Reaction: id = v43, name = v43
	reaction_v43=global_par_Q_AW_blf*global_par_R_LTE_B*(x(26)*global_par_R_LTE_AW/global_par_Kp_LTE_AW-x(8));

% Reaction: id = v44, name = v44
	reaction_v44=global_par_Q_AW_blf*global_par_R_LTD_B*(x(25)*global_par_R_LTD_AW/global_par_Kp_LTD_AW-x(7));

% Reaction: id = v45, name = v45
	reaction_v45=global_par_Q_AW_blf*global_par_R_LTC_B*(x(24)*global_par_R_LTC_AW/global_par_Kp_LTC_AW-x(6));

% Reaction: id = v46, name = v46
	reaction_v46=global_par_ca*compartment_V_AW*global_par_ka*x(14)*global_par_OL_aw^global_par_h_act/(global_par_EC50_act^global_par_h_act+global_par_OL_aw^global_par_h_act);

% Reaction: id = v47, name = v47
	reaction_v47=global_par_ca*compartment_V_AW*global_par_k_EO_m*x(12);

% Reaction: id = v48, name = v48
	reaction_v48=global_par_ca*compartment_V_AW*global_par_kia*x(13);

% Reaction: id = v49, name = v49
	reaction_v49=compartment_V_AW*global_par_k_EO_d*x(14);

% Reaction: id = v50, name = v50
	reaction_v50=compartment_V_AW*global_par_k_EO_a_d*x(13);

% Reaction: id = v51, name = v51
	reaction_v51=compartment_V_AW*global_par_k_Hn_p*(x(13)+x(12)+x(14));

% Reaction: id = v52, name = v52
	reaction_v52=global_par_Q_AW_blf*global_par_R_Hn_B*(x(27)*global_par_R_Hn_AW/global_par_Kp_Hn_AW-x(15));

% Reaction: id = v53, name = v53
	reaction_v53=compartment_V_AW*global_par_k_IL_p*x(13);

% Reaction: id = v54, name = v54
	reaction_v54=global_par_k_IL_t_awb*(x(28)-x(16))+global_par_J_AW_lymfl*x(28);

% Reaction: id = v55, name = v55
	reaction_v55=compartment_Vd_AW_LTE*(global_par_k_lte_el+global_par_k_acet)*x(26);

% Reaction: id = v56, name = v56
	reaction_v56=compartment_Vd_AW_LTD*global_par_k_ltc_ltd_el*x(25);

% Reaction: id = v57, name = v57
	reaction_v57=compartment_Vd_AW_LTC*global_par_k_ltc_ltd_el*x(24);

% Reaction: id = v58, name = v58
	reaction_v58=compartment_V_AW*global_par_k_IL_d*x(28);

% Reaction: id = v59, name = v59
	reaction_v59=compartment_Vd_AW_Hn*global_par_k_Hn_d*x(27);

% Reaction: id = v60, name = v60
	reaction_v60=compartment_Default*global_par_k_abs_zf*(x(29)+global_par_oral*global_par_F_zf*(global_par_a*global_par_ft_zf+(1.0-global_par_a))*global_par_DOSE_zf*1E3/global_par_M_ZF);

% Reaction: id = v61, name = v61
	reaction_v61=global_par_Q_AW_blf*global_par_R_ZF_B*(x(30)-x(31)*global_par_R_ZF_AW/global_par_Kp_ZF_AW);

% Reaction: id = v62, name = v62
	reaction_v62=compartment_Vd_ZF*global_par_k_elim_zf*x(30);

% Reaction: id = v63, name = v63
	reaction_v63=compartment_Default*global_par_k_abs_ml*(x(32)+global_par_oral*global_par_F_ml*(global_par_a*global_par_ft_ml+(1.0-global_par_a))*global_par_DOSE_ml*1E9/global_par_M_ML);

% Reaction: id = v64, name = v64
	reaction_v64=compartment_Vd_ML*global_par_k_elim_ml*x(33);

	xdot=zeros(33,1);
	
% Species:   id = AA_b, name = AA_b, affected by kineticLaw
	xdot(1) = (1/(compartment_Default))*(( 1.0 * reaction_v1) + (-1.0 * reaction_v2));
	
% Species:   id = HPETE_b, name = HPETE_b, affected by kineticLaw
	xdot(2) = (1/(compartment_Default))*(( 1.0 * reaction_v3) + (-1.0 * reaction_v4) + (-1.0 * reaction_v5));
	
% Species:   id = HETE_b, name = HETE_b, affected by kineticLaw
	xdot(3) = (1/(compartment_Default))*(( 1.0 * reaction_v4) + ( 1.0 * reaction_v5) + (-1.0 * reaction_v8));
	
% Species:   id = LTA4_b, name = LTA4_b, affected by kineticLaw
	xdot(4) = (1/(compartment_Default))*(( 1.0 * reaction_v6) + (-1.0 * reaction_v7) + (-1.0 * reaction_v9));
	
% Species:   id = LTC4_b, name = LTC4_b, affected by kineticLaw
	xdot(5) = (1/(compartment_Default))*(( 1.0 * reaction_v7) + (-1.0 * reaction_v10in));
	
% Species:   id = LTC4_b_out, name = LTC4_b_out, affected by kineticLaw
	xdot(6) = (1/(compartment_Vd_LTC))*(( 1.0 * reaction_v10out) + (-1.0 * reaction_v11) + (-1.0 * reaction_v13) + ( 1.0 * reaction_v45));
	
% Species:   id = LTD4_b, name = LTD4_b, affected by kineticLaw
	xdot(7) = (1/(compartment_Vd_LTD))*(( 1.0 * reaction_v11) + (-1.0 * reaction_v12) + (-1.0 * reaction_v14) + ( 1.0 * reaction_v44));
	
% Species:   id = LTE4_b, name = LTE4_b, affected by kineticLaw
	xdot(8) = (1/(compartment_Vd_LTE))*(( 1.0 * reaction_v12) + (-1.0 * reaction_v15) + ( 1.0 * reaction_v43));
	
% Species:   id = EO_b, name = EO_b, affected by kineticLaw
	xdot(9) = (1/(compartment_V_B))*((-1.0 * reaction_v16) + ( 1.0 * reaction_v18) + (-1.0 * reaction_v19) + (-1.0 * reaction_v23) + ( 1.0 * reaction_v30));
	
% Species:   id = EO_i_b, name = EO_i_b, affected by kineticLaw
	xdot(10) = (1/(compartment_V_B))*(( 1.0 * reaction_v16) + (-1.0 * reaction_v17) + (-1.0 * reaction_v21));
	
% Species:   id = EO_a_b, name = EO_a_b, affected by kineticLaw
	xdot(11) = (1/(compartment_V_B))*(( 1.0 * reaction_v17) + (-1.0 * reaction_v18) + (-1.0 * reaction_v20) + (-1.0 * reaction_v22));
	
% Species:   id = EO_i_aw, name = EO_i_aw, affected by kineticLaw
	xdot(12) = (1/(compartment_V_AW))*(( 1.0 * reaction_v21) + ( 1.0 * reaction_v46) + (-1.0 * reaction_v47));
	
% Species:   id = EO_a_aw, name = EO_a_aw, affected by kineticLaw
	xdot(13) = (1/(compartment_V_AW))*(( 1.0 * reaction_v22) + ( 1.0 * reaction_v47) + (-1.0 * reaction_v48) + (-1.0 * reaction_v50));
	
% Species:   id = EO_aw, name = EO_aw, affected by kineticLaw
	xdot(14) = (1/(compartment_V_AW))*(( 1.0 * reaction_v23) + (-1.0 * reaction_v46) + ( 1.0 * reaction_v48) + (-1.0 * reaction_v49));
	
% Species:   id = Hn_b, name = Hn_b, affected by kineticLaw
	xdot(15) = (1/(compartment_Vd_Hn))*(( 1.0 * reaction_v24) + (-1.0 * reaction_v25) + ( 1.0 * reaction_v52));
	
% Species:   id = IL_b, name = IL_b, affected by kineticLaw
	xdot(16) = (1/(compartment_Vd_IL5))*(( 1.0 * reaction_v26) + (-1.0 * reaction_v27) + (-1.0 * reaction_v28) + ( 1.0 * reaction_v54));
	
% Species:   id = IL_bm, name = IL_bm, affected by kineticLaw
	xdot(17) = (1/(compartment_V_BM))*(( 1.0 * reaction_v28));
	
% Species:   id = EO_bm, name = EO_bm, affected by kineticLaw
	xdot(18) = (1/(compartment_V_BM))*(( 1.0 * reaction_v29) + (-1.0 * reaction_v30));
	
% Species:   id = AA_aw, name = AA_aw, affected by kineticLaw
	xdot(19) = (1/(compartment_Default))*(( 1.0 * reaction_v31) + (-1.0 * reaction_v32));
	
% Species:   id = HPETE_aw, name = HPETE_aw, affected by kineticLaw
	xdot(20) = (1/(compartment_Default))*(( 1.0 * reaction_v33) + (-1.0 * reaction_v34) + (-1.0 * reaction_v35));
	
% Species:   id = HETE_aw, name = HETE_aw, affected by kineticLaw
	xdot(21) = (1/(compartment_Default))*(( 1.0 * reaction_v34) + ( 1.0 * reaction_v35) + (-1.0 * reaction_v38));
	
% Species:   id = LTA4_aw, name = LTA4_aw, affected by kineticLaw
	xdot(22) = (1/(compartment_Default))*(( 1.0 * reaction_v36) + (-1.0 * reaction_v37) + (-1.0 * reaction_v39));
	
% Species:   id = LTC4_aw, name = LTC4_aw, affected by kineticLaw
	xdot(23) = (1/(compartment_Default))*(( 1.0 * reaction_v37) + (-1.0 * reaction_v40in));
	
% Species:   id = LTC4_aw_out, name = LTC4_aw_out, affected by kineticLaw
	xdot(24) = (1/(compartment_Vd_AW_LTC))*(( 1.0 * reaction_v40out) + (-1.0 * reaction_v41) + (-1.0 * reaction_v45) + (-1.0 * reaction_v57));
	
% Species:   id = LTD4_aw, name = LTD4_aw, affected by kineticLaw
	xdot(25) = (1/(compartment_Vd_AW_LTD))*(( 1.0 * reaction_v41) + (-1.0 * reaction_v42) + (-1.0 * reaction_v44) + (-1.0 * reaction_v56));
	
% Species:   id = LTE4_aw, name = LTE4_aw, affected by kineticLaw
	xdot(26) = (1/(compartment_Vd_AW_LTE))*(( 1.0 * reaction_v42) + (-1.0 * reaction_v43) + (-1.0 * reaction_v55));
	
% Species:   id = Hn_aw, name = Hn_aw, affected by kineticLaw
	xdot(27) = (1/(compartment_Vd_AW_Hn))*(( 1.0 * reaction_v51) + (-1.0 * reaction_v52) + (-1.0 * reaction_v59));
	
% Species:   id = IL_aw, name = IL_aw, affected by kineticLaw
	xdot(28) = (1/(compartment_V_AW))*(( 1.0 * reaction_v53) + (-1.0 * reaction_v54) + (-1.0 * reaction_v58));
	
% Species:   id = ZF_intes, name = ZF_intes, affected by kineticLaw
	xdot(29) = (1/(compartment_Default))*((-1.0 * reaction_v60));
	
% Species:   id = ZF_blood, name = ZF_blood, affected by kineticLaw
	xdot(30) = (1/(compartment_Vd_ZF))*(( 1.0 * reaction_v60) + (-1.0 * reaction_v61) + (-1.0 * reaction_v62));
	
% Species:   id = ZF_airways, name = ZF_airways, affected by kineticLaw
	xdot(31) = (1/(compartment_Vd_AW_ZF))*(( 1.0 * reaction_v61));
	
% Species:   id = ML_intes, name = ML_intes, affected by kineticLaw
	xdot(32) = (1/(compartment_Default))*((-1.0 * reaction_v63));
	
% Species:   id = ML_blood, name = ML_blood, affected by kineticLaw
	xdot(33) = (1/(compartment_Vd_ML))*(( 1.0 * reaction_v63) + (-1.0 * reaction_v64));
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


