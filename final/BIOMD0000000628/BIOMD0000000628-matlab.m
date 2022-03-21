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
% Model name = Li2012 Calcium mediated synaptic plasticity
%
% is http://identifiers.org/biomodels.db/MODEL1703070000
% is http://identifiers.org/biomodels.db/BIOMD0000000628
% isDescribedBy http://identifiers.org/pubmed/22962589
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000183
%


function main()
%Initial conditions vector
	x0=zeros(135,1);
	x0(1) = 1.45E-9;
	x0(2) = 3.0E-5;
	x0(3) = 1.0E-8;
	x0(4) = 7.0E-5;
	x0(5) = 0.0;
	x0(6) = 3.0E-6;
	x0(7) = 1.2E-8;
	x0(8) = 2.0E-6;
	x0(9) = 8.0E-5;
	x0(10) = 8.0E-5;
	x0(11) = 2.0E-5;
	x0(12) = 2.0E-5;
	x0(13) = 0.0;
	x0(14) = 0.0;
	x0(15) = 0.0;
	x0(16) = 0.0;
	x0(17) = 0.0;
	x0(18) = 0.0;
	x0(19) = 0.0;
	x0(20) = 0.0;
	x0(21) = 0.0;
	x0(22) = 0.0;
	x0(23) = 0.0;
	x0(24) = 0.0;
	x0(25) = 0.0;
	x0(26) = 0.0;
	x0(27) = 0.0;
	x0(28) = 0.0;
	x0(29) = 0.0;
	x0(30) = 0.0;
	x0(31) = 0.0;
	x0(32) = 0.0;
	x0(33) = 0.0;
	x0(34) = 0.0;
	x0(35) = 0.0;
	x0(36) = 0.0;
	x0(37) = 0.0;
	x0(38) = 0.0;
	x0(39) = 0.0;
	x0(40) = 0.0;
	x0(41) = 0.0;
	x0(42) = 0.0;
	x0(43) = 0.0;
	x0(44) = 0.0;
	x0(45) = 0.0;
	x0(46) = 0.0;
	x0(47) = 0.0;
	x0(48) = 0.0;
	x0(49) = 0.0;
	x0(50) = 0.0;
	x0(51) = 0.0;
	x0(52) = 0.0;
	x0(53) = 0.0;
	x0(54) = 0.0;
	x0(55) = 0.0;
	x0(56) = 0.0;
	x0(57) = 0.0;
	x0(58) = 0.0;
	x0(59) = 0.0;
	x0(60) = 0.0;
	x0(61) = 0.0;
	x0(62) = 0.0;
	x0(63) = 0.0;
	x0(64) = 0.0;
	x0(65) = 0.0;
	x0(66) = 0.0;
	x0(67) = 0.0;
	x0(68) = 0.0;
	x0(69) = 0.0;
	x0(70) = 0.0;
	x0(71) = 0.0;
	x0(72) = 0.0;
	x0(73) = 0.0;
	x0(74) = 0.0;
	x0(75) = 0.0;
	x0(76) = 0.0;
	x0(77) = 0.0;
	x0(78) = 0.0;
	x0(79) = 0.0;
	x0(80) = 0.0;
	x0(81) = 0.0;
	x0(82) = 0.0;
	x0(83) = 0.0;
	x0(84) = 0.0;
	x0(85) = 0.0;
	x0(86) = 0.0;
	x0(87) = 0.0;
	x0(88) = 0.0;
	x0(89) = 0.0;
	x0(90) = 0.0;
	x0(91) = 0.0;
	x0(92) = 0.0;
	x0(93) = 0.0;
	x0(94) = 0.0;
	x0(95) = 0.0;
	x0(96) = 0.0;
	x0(97) = 0.0;
	x0(98) = 0.0;
	x0(99) = 0.0;
	x0(100) = 0.0;
	x0(101) = 0.0;
	x0(102) = 0.0;
	x0(103) = 0.0;
	x0(104) = 0.0;
	x0(105) = 0.0;
	x0(106) = 0.0;
	x0(107) = 0.0;
	x0(108) = 0.0;
	x0(109) = 0.0;
	x0(110) = 0.0;
	x0(111) = 0.0;
	x0(112) = 0.0;
	x0(113) = 0.0;
	x0(114) = 0.0;
	x0(115) = 0.0;
	x0(116) = 0.0;
	x0(117) = 0.0;
	x0(118) = 0.0;
	x0(119) = 0.0;
	x0(120) = 0.0;
	x0(121) = 0.0;
	x0(122) = 0.0;
	x0(123) = 0.0;
	x0(124) = 0.0;
	x0(125) = 0.0;
	x0(126) = 0.0;
	x0(127) = 0.0;
	x0(128) = 0.0;
	x0(129) = 0.0;
	x0(130) = 0.0;
	x0(131) = 0.0;
	x0(132) = 6.0E-6;
	x0(133) = 0.0;
	x0(134) = 0.0;
	x0(135) = 0.0;


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

% Compartment: id = Spine, name = Spine, constant
	compartment_Spine=1.0E-15;
% Parameter:   id =  Cam_Ca0_total_0, name = Cam_Ca0_total
% Parameter:   id =  Cam_Ca0_total_ratio, name = Cam_Ca0_total_ratio
% Parameter:   id =  Cam_total, name = Cam_total
	global_par_Cam_total=3.000145E-5;
% Parameter:   id =  Cam_Ca1_total, name = Cam_Ca1_total
% Parameter:   id =  Cam_Ca1_total_ratio, name = Cam_Ca1_total_ratio
% Parameter:   id =  Cam_Ca2_total, name = Cam_Ca2_total
% Parameter:   id =  Cam_Ca2_total_ratio, name = Cam_Ca2_total_ratio
% Parameter:   id =  Cam_Ca3_total, name = Cam_Ca3_total
% Parameter:   id =  Cam_Ca3_total_ratio, name = Cam_Ca3_total_ratio
% Parameter:   id =  Cam_Ca4_total, name = Cam_Ca4_total
% Parameter:   id =  Cam_Ca4_total_ratio, name = Cam_Ca4_total_ratio
% Parameter:   id =  CamCaMKII_bar, name = CamCaMKII_bar
% Parameter:   id =  CaMKII_CamR_Ca1_total, name = CaMKII_CamR_Ca1_total
% Parameter:   id =  CaMKII_CamR_Ca2_total, name = CaMKII_CamR_Ca2_total
% Parameter:   id =  CaMKII_CamR_Ca3_total, name = CaMKII_CamR_Ca3_total
% Parameter:   id =  CaMKII_active_ratio, name = CaMKII_active_ratio
% Parameter:   id =  CaMKIIp_bar, name = CaMKIIp_bar
% Parameter:   id =  CamPP2B_bar, name = CamPP2B_bar
% Parameter:   id =  CamR_Ca0_ratio, name = CamR_Ca0_ratio
% Parameter:   id =  CamR_Ca0_total, name = CamR_Ca0_total
% Parameter:   id =  CamR_Ca2_ratio, name = CamR_Ca2_ratio
% Parameter:   id =  CamR_Ca2_total, name = CamR_Ca2_total
% Parameter:   id =  CamR_Ca3_ratio, name = CamR_Ca3_ratio
% Parameter:   id =  CamR_Ca3_total, name = CamR_Ca3_total
% Parameter:   id =  CamR_Ca4_ratio, name = CamR_Ca4_ratio
% Parameter:   id =  CamR_Ca4_total, name = CamR_Ca4_total
% Parameter:   id =  CamR_unbound, name = CamR_unbound
% Parameter:   id =  CBP_fast_bar, name = CBP_fast_bar
% Parameter:   id =  CBP_fast_total, name = CBP_fast_total
% Parameter:   id =  CBP_media_bar, name = CBP_media_bar
% Parameter:   id =  CBP_media_total, name = CBP_media_total
% Parameter:   id =  CBP_slow_bar, name = CBP_slow_bar
% Parameter:   id =  CBP_slow_total, name = CBP_slow_total
% Parameter:   id =  CBP_vslow_bar, name = CBP_vslow_bar
% Parameter:   id =  CBP_vslow_total, name = CBP_vslow_total
% Parameter:   id =  Dp_bar, name = Dp_bar
% Parameter:   id =  Epsilon, name = Epsilon
% Parameter:   id =  Free_Cam_Ca0_total, name = Free_Cam_Ca0_total
% Parameter:   id =  Free_Cam_Ca1_total, name = Free_Cam_Ca1_total
% Parameter:   id =  Free_Cam_Ca2_total, name = Free_Cam_Ca2_total
% Parameter:   id =  Free_Cam_Ca3_total, name = Free_Cam_Ca3_total
% Parameter:   id =  Free_Cam_Ca4_total, name = Free_Cam_Ca4_total
% Parameter:   id =  Free_CamR_Ca1_total, name = Free_CamR_Ca1_total
% Parameter:   id =  Free_CamR_Ca2_total, name = Free_CamR_Ca2_total
% Parameter:   id =  Free_CamR_Ca3_total, name = Free_CamR_Ca3_total
% Parameter:   id =  Free_CamT_Ca1_total, name = Free_CamT_Ca1_total
% Parameter:   id =  Free_CamT_Ca2_total, name = Free_CamT_Ca2_total
% Parameter:   id =  Free_CamT_Ca3_total, name = Free_CamT_Ca3_total
% Parameter:   id =  moles_bound_Ca_per_moles_Cam, name = moles_bound_Ca_per_moles_Cam
% Parameter:   id =  PKA_bar, name = PKA_bar
% Parameter:   id =  PKA_inmodel, name = PKA_inmodel
% Parameter:   id =  PP1a_bar, name = PP1a_bar
% Parameter:   id =  Dp_0_PP2B_CamR_Ca1, name = Dp_boundOrnot_PP2B_CamR_Ca1
% Parameter:   id =  Dp_0_PP2B_CamR_Ca2, name = Dp_boundOrnot_PP2B_CamR_Ca2
% Parameter:   id =  Dp_0_PP2B_CamR_Ca3, name = Dp_boundOrnot_PP2B_CamR_Ca3
% Parameter:   id =  PP2B_bar, name = PP2B_bar
% Parameter:   id =  CamR_ratio, name = CamR_ratio
% Parameter:   id =  CaMKII_bound_total, name = CaMKII_bound_total
% Parameter:   id =  CaMKIIp_total, name = CaMKIIp_total
% Parameter:   id =  PP2B_bound_total, name = PP2B_bound_total
% Parameter:   id =  CamR_total, name = CamR_total
% Parameter:   id =  CamT_total, name = CamT_total
% Parameter:   id =  PP2B_total, name = PP2B_total
% Parameter:   id =  D_total, name = D_total
% Parameter:   id =  Dp_total, name = Dp_total
% Parameter:   id =  PKA_total, name = PKA_total
	global_par_PKA_total=1.2E-6;
% Parameter:   id =  PP1a_total, name = PP1a_total
% Parameter:   id =  y_bar, name = y_bar
% Parameter:   id =  y_bar_div_1_minus_ybar, name = y_bar_div_1_minus_ybar
% Parameter:   id =  CamR_Ca1_ratio, name = CamR_Ca1_ratio
% Parameter:   id =  CamR_Ca1_total, name = CamR_Ca1_total
% Parameter:   id =  PP1_total, name = PP1_total
% Parameter:   id =  K_CBPslow_Ca_off, name = koff_CBPslow_Ca
	global_par_K_CBPslow_Ca_off=10.0;
% Parameter:   id =  K_CamR_CaMKII_p_on, name = kon_CamR_CaMKII
	global_par_K_CamR_CaMKII_p_on=3200000.0;
% Parameter:   id =  K_D_PKA_off_p, name = kcat_D_PKA
	global_par_K_D_PKA_off_p=2.7;
% Parameter:   id =  K_CamMKIIp_PP1a_on, name = kon_CamMKIIp_PP1a
	global_par_K_CamMKIIp_PP1a_on=3000000.0;
% Parameter:   id =  K_CamMKIIp_PP1a_off, name = koff_CamMKIIp_PP1a
	global_par_K_CamMKIIp_PP1a_off=0.5;
% Parameter:   id =  K_CamMKIIp_PP1a_p_off, name = kcat_CaMKIIp_PP1a
	global_par_K_CamMKIIp_PP1a_p_off=2.0;
% Parameter:   id =  K_CBPslow_Ca_on, name = kon_CBPslow_Ca
	global_par_K_CBPslow_Ca_on=1.0E7;
% Parameter:   id =  K_CBPvslow_Ca_off, name = koff_CBPvslow_Ca
	global_par_K_CBPvslow_Ca_off=1.0;
% Parameter:   id =  K_CBPvslow_Ca_on, name = kon_CBPvslow_Ca
	global_par_K_CBPvslow_Ca_on=1000000.0;
% Parameter:   id =  K_Cam_Ca_on, name = kon_Cam_Ca
	global_par_K_Cam_Ca_on=1400000.0;
% Parameter:   id =  K_CamT_Ca_A_off, name = koff_CamT_Ca_A
% Parameter:   id =  K_CamT_Ca_B_off, name = koff_CamT_Ca_B
% Parameter:   id =  K_CamT_Ca_C_off, name = koff_CamT_Ca_C
% Parameter:   id =  K_CamT_Ca_D_off, name = koff_CamT_Ca_D
% Parameter:   id =  K_CamR_T, name = k_CamR_T
% Parameter:   id =  K_CamT_R, name = k_CamT_R
	global_par_K_CamT_R=48.379294;
% Parameter:   id =  K_CamR_CaMKII_off, name = koff_CamR_CaMKII
	global_par_K_CamR_CaMKII_off=0.343;
% Parameter:   id =  K_CamR_PP2B_on, name = kon_CamR_PP2B
	global_par_K_CamR_PP2B_on=4.6E7;
% Parameter:   id =  K_CamR_PP2B_off, name = koff_CamR_PP2B
	global_par_K_CamR_PP2B_off=0.4;
% Parameter:   id =  K_CamR_Ca_C_off, name = koff_CamR_Ca_C
% Parameter:   id =  K_CamR_Ca_D_off, name = koff_CamR_Ca_D
% Parameter:   id =  K_CamR_Ca_A_off, name = koff_CamR_Ca_A
% Parameter:   id =  K_CamR_Ca_B_off, name = koff_CamR_Ca_B
% Parameter:   id =  K_CamR_CaMKIIp_off, name = koff_CamR_CaMKIIp
	global_par_K_CamR_CaMKIIp_off=0.001;
% Parameter:   id =  K_D_PKA_on, name = kon_D_PKA
	global_par_K_D_PKA_on=5600000.0;
% Parameter:   id =  K_D_PKA_off, name = koff_D_PKA
	global_par_K_D_PKA_off=10.8;
% Parameter:   id =  K_CamR_PP2B_Dp_on, name = kon_CamR_PP2B_Dp
	global_par_K_CamR_PP2B_Dp_on=4100000.0;
% Parameter:   id =  K_CamR_PP2B_Dp_off, name = koff_CamR_PP2B_Dp
	global_par_K_CamR_PP2B_Dp_off=6.4;
% Parameter:   id =  K_CamR_PP2B_D_off, name = kcat_CamR_PP2B_Dp
	global_par_K_CamR_PP2B_D_off=0.2;
% Parameter:   id =  K_PP1a_Dp_on, name = kon_PP1a_Dp
	global_par_K_PP1a_Dp_on=4000000.0;
% Parameter:   id =  K_PP1a_Dp_off, name = koff_PP1a_Dp
	global_par_K_PP1a_Dp_off=0.4;
% Parameter:   id =  K_CBP_fast_on, name = kon_CBPfast_Ca
	global_par_K_CBP_fast_on=1.0E9;
% Parameter:   id =  K_CBP_fast_off, name = koff_CBPfast_Ca
	global_par_K_CBP_fast_off=1000.0;
% Parameter:   id =  K_CBP_media_on, name = kon_CBPmedia_Ca
	global_par_K_CBP_media_on=1.0E8;
% Parameter:   id =  K_CBP_media_off, name = koff_CBPmedia_Ca
	global_par_K_CBP_media_off=100.0;
% Parameter:   id =  K_PP2Bi_Ca_on, name = kon_PP2Bi_Ca
	global_par_K_PP2Bi_Ca_on=2.0E7;
% Parameter:   id =  K_PP2Bi_Ca1_Ca_off, name = koff_PP2Bi_Ca
	global_par_K_PP2Bi_Ca1_Ca_off=0.0092;
% Parameter:   id =  K_PP2Bi_Ca2_Ca_off, name = koff_PP2Bi_Ca1_Ca
	global_par_K_PP2Bi_Ca2_Ca_off=0.0312;
% Parameter:   id =  K_PP2Bi_Ca3_Ca_off, name = koff_PP2Bi_Ca2_Ca
	global_par_K_PP2Bi_Ca3_Ca_off=0.352;
% Parameter:   id =  K_PP2B_Ca_off, name = koff_PP2Bi_Ca3_Ca
	global_par_K_PP2B_Ca_off=0.9;
% Parameter:   id =  K_CamR_to_T_Ca2, name = k_CamR_to_T_Ca2
% Parameter:   id =  C_A_B_C_D, name = C_ABCD
	global_par_C_A_B_C_D=0.00396;
% Parameter:   id =  K_CamT_to_R_Ca2, name = k_CamT_to_R_Ca2
% Parameter:   id =  K_CamR_to_T_Ca1, name = k_CamR_to_T_Ca1
% Parameter:   id =  K_CamT_to_R_Ca1, name = k_CamT_to_R_Ca1
% Parameter:   id =  K_CamR_to_T_Ca3, name = k_CamR_to_T_Ca3
% Parameter:   id =  K_CamT_to_R_Ca3, name = k_CamT_to_R_Ca3
% Parameter:   id =  K_CamR_to_T_Ca4, name = k_CamR_to_T_Ca4
% Parameter:   id =  K_CamT_to_R_Ca4, name = k_CamT_to_R_Ca4
% Parameter:   id =  PKA_initial, name = PKA_initial
% Parameter:   id =  K_CaMKII_autoPhosphorylation, name = k_CaMKII_autoPhosphorylation
% Parameter:   id =  k_for_CaMKII_autophosphorylation, name = kmax_CaMKII_autophosphorylation
	global_par_k_for_CaMKII_autophosphorylation=6.3;
% Parameter:   id =  CaMKII_total, name = CaMKII_total
% Parameter:   id =  CaMKII_active_total, name = CaMKII_active_total
% Parameter:   id =  PP2B_non_i, name = PP2B_non_i
% Parameter:   id =  parameter_1, name = k_Ca_in
	global_par_parameter_1=0.0;
% Parameter:   id =  parameter_2, name = equilibriumTime
	global_par_parameter_2=300.0;
% Parameter:   id =  parameter_3, name = spikeCounter
	global_par_parameter_3=0.0;
% Parameter:   id =  parameter_4, name = spikeNumber
	global_par_parameter_4=100.0;
% Parameter:   id =  parameter_5, name = spikeFrequency
	global_par_parameter_5=52.8;
% Parameter:   id =  parameter_6, name = spikeOn
	global_par_parameter_6=0.0;
% Parameter:   id =  parameter_7, name = startTime
	global_par_parameter_7=0.0;
% Parameter:   id =  parameter_8, name = spikeInput
% Parameter:   id =  parameter_9, name = spikeInputDuration
% Parameter:   id =  parameter_10, name = KRA
	global_par_parameter_10=8.32E-6;
% Parameter:   id =  parameter_11, name = KRB
	global_par_parameter_11=1.66E-8;
% Parameter:   id =  parameter_12, name = KRC
	global_par_parameter_12=1.74E-5;
% Parameter:   id =  parameter_13, name = KRD
	global_par_parameter_13=1.45E-8;
% Parameter:   id =  parameter_14, name = L
	global_par_parameter_14=20670.0;
% Parameter:   id =  Metabolite_8, name = Initial for CBP_fast
	global_par_Metabolite_8=8.0E-5;
% Parameter:   id =  Metabolite_9, name = Initial for CBP_media
	global_par_Metabolite_9=8.0E-5;
% Parameter:   id =  Metabolite_10, name = Initial for CBP_slow
	global_par_Metabolite_10=2.0E-5;
% Parameter:   id =  Metabolite_11, name = Initial for CBP_vslow
	global_par_Metabolite_11=2.0E-5;
% Parameter:   id =  Metabolite_6, name = Initial for PKA
	global_par_Metabolite_6=1.2E-8;
% Parameter:   id =  ModelValue_128, name = Initial for equilibriumTime
	global_par_ModelValue_128=300.0;
% Parameter:   id =  ModelValue_131, name = Initial for spikeFrequency
	global_par_ModelValue_131=52.8;
% Parameter:   id =  ModelValue_130, name = Initial for spikeNumber
	global_par_ModelValue_130=100.0;
% assignmentRule: variable = Cam_Ca0_total_0
	global_par_Cam_Ca0_total_0=x(1)+x(2)+x(80)+x(47)+x(63)+x(98)+x(116);
% assignmentRule: variable = Cam_Ca0_total_ratio
	global_par_Cam_Ca0_total_ratio=global_par_Cam_Ca0_total_0/global_par_Cam_total;
% assignmentRule: variable = Cam_Ca4_total
	global_par_Cam_Ca4_total=x(31)+x(46)+x(62)+x(78)+x(95)+x(113)+x(131);
% assignmentRule: variable = Cam_Ca4_total_ratio
	global_par_Cam_Ca4_total_ratio=global_par_Cam_Ca4_total/global_par_Cam_total;
% assignmentRule: variable = CaMKII_CamR_Ca1_total
	global_par_CaMKII_CamR_Ca1_total=x(48)+x(49)+x(50)+x(51)+x(81)+x(82)+x(83)+x(84)+x(117)+x(118)+x(119)+x(120);
% assignmentRule: variable = CaMKII_CamR_Ca2_total
	global_par_CaMKII_CamR_Ca2_total=x(52)+x(53)+x(54)+x(55)+x(56)+x(57)+x(85)+x(86)+x(87)+x(88)+x(89)+x(90)+x(121)+x(122)+x(123)+x(124)+x(125)+x(126);
% assignmentRule: variable = CaMKII_CamR_Ca3_total
	global_par_CaMKII_CamR_Ca3_total=x(58)+x(59)+x(60)+x(61)+x(91)+x(92)+x(93)+x(94)+x(127)+x(128)+x(129)+x(130);
% assignmentRule: variable = CamR_Ca0_total
	global_par_CamR_Ca0_total=x(1)+x(47)+x(63)+x(80)+x(98)+x(116);
% assignmentRule: variable = CamR_Ca0_ratio
	global_par_CamR_Ca0_ratio=global_par_CamR_Ca0_total/global_par_Cam_total;
% assignmentRule: variable = CamR_Ca4_total
	global_par_CamR_Ca4_total=x(31)+x(62)+x(78)+x(95)+x(113)+x(131);
% assignmentRule: variable = CamR_Ca4_ratio
	global_par_CamR_Ca4_ratio=global_par_CamR_Ca4_total/global_par_Cam_total;
% assignmentRule: variable = CamR_unbound
	global_par_CamR_unbound=x(1)+x(17)+x(18)+x(19)+x(20)+x(21)+x(22)+x(23)+x(24)+x(25)+x(26)+x(27)+x(28)+x(29)+x(30)+x(31);
% assignmentRule: variable = CBP_fast_total
	global_par_CBP_fast_total=global_par_Metabolite_8;
% assignmentRule: variable = CBP_fast_bar
	global_par_CBP_fast_bar=x(13)/global_par_CBP_fast_total;
% assignmentRule: variable = CBP_media_total
	global_par_CBP_media_total=global_par_Metabolite_9;
% assignmentRule: variable = CBP_media_bar
	global_par_CBP_media_bar=x(14)/global_par_CBP_media_total;
% assignmentRule: variable = CBP_slow_total
	global_par_CBP_slow_total=global_par_Metabolite_10;
% assignmentRule: variable = CBP_slow_bar
	global_par_CBP_slow_bar=x(15)/global_par_CBP_slow_total;
% assignmentRule: variable = CBP_vslow_total
	global_par_CBP_vslow_total=global_par_Metabolite_11;
% assignmentRule: variable = CBP_vslow_bar
	global_par_CBP_vslow_bar=x(16)/global_par_CBP_vslow_total;
% assignmentRule: variable = Epsilon
	global_par_Epsilon=x(1)/(x(1)+x(2));
% assignmentRule: variable = Free_Cam_Ca0_total
	global_par_Free_Cam_Ca0_total=x(1)+x(2);
% assignmentRule: variable = Free_Cam_Ca4_total
	global_par_Free_Cam_Ca4_total=x(31)+x(46);
% assignmentRule: variable = Free_CamR_Ca1_total
	global_par_Free_CamR_Ca1_total=x(17)+x(18)+x(19)+x(20);
% assignmentRule: variable = Free_CamR_Ca2_total
	global_par_Free_CamR_Ca2_total=x(21)+x(22)+x(23)+x(24)+x(25)+x(26);
% assignmentRule: variable = Free_CamR_Ca3_total
	global_par_Free_CamR_Ca3_total=x(27)+x(28)+x(29)+x(30);
% assignmentRule: variable = Free_CamT_Ca1_total
	global_par_Free_CamT_Ca1_total=x(32)+x(33)+x(34)+x(35);
% assignmentRule: variable = Free_Cam_Ca1_total
	global_par_Free_Cam_Ca1_total=global_par_Free_CamR_Ca1_total+global_par_Free_CamT_Ca1_total;
% assignmentRule: variable = Free_CamT_Ca2_total
	global_par_Free_CamT_Ca2_total=x(36)+x(37)+x(38)+x(39)+x(40)+x(41);
% assignmentRule: variable = Free_Cam_Ca2_total
	global_par_Free_Cam_Ca2_total=global_par_Free_CamR_Ca2_total+global_par_Free_CamT_Ca2_total;
% assignmentRule: variable = Free_CamT_Ca3_total
	global_par_Free_CamT_Ca3_total=x(42)+x(43)+x(44)+x(45);
% assignmentRule: variable = Free_Cam_Ca3_total
	global_par_Free_Cam_Ca3_total=global_par_Free_CamR_Ca3_total+global_par_Free_CamT_Ca3_total;
% assignmentRule: variable = PKA_inmodel
	global_par_PKA_inmodel=x(7)+x(97);
% assignmentRule: variable = PKA_bar
	global_par_PKA_bar=global_par_PKA_inmodel/global_par_PKA_total;
% assignmentRule: variable = Dp_0_PP2B_CamR_Ca1
	global_par_Dp_0_PP2B_CamR_Ca1=x(64)+x(65)+x(66)+x(67)+x(99)+x(100)+x(101)+x(102);
% assignmentRule: variable = Cam_Ca1_total
	global_par_Cam_Ca1_total=global_par_Free_Cam_Ca1_total+global_par_CaMKII_CamR_Ca1_total+global_par_Dp_0_PP2B_CamR_Ca1;
% assignmentRule: variable = Cam_Ca1_total_ratio
	global_par_Cam_Ca1_total_ratio=global_par_Cam_Ca1_total/global_par_Cam_total;
% assignmentRule: variable = Dp_0_PP2B_CamR_Ca2
	global_par_Dp_0_PP2B_CamR_Ca2=x(68)+x(69)+x(70)+x(71)+x(72)+x(73)+x(103)+x(104)+x(105)+x(106)+x(107)+x(108);
% assignmentRule: variable = Cam_Ca2_total
	global_par_Cam_Ca2_total=global_par_Free_Cam_Ca2_total+global_par_CaMKII_CamR_Ca2_total+global_par_Dp_0_PP2B_CamR_Ca2;
% assignmentRule: variable = Cam_Ca2_total_ratio
	global_par_Cam_Ca2_total_ratio=global_par_Cam_Ca2_total/global_par_Cam_total;
% assignmentRule: variable = CamR_Ca2_total
	global_par_CamR_Ca2_total=global_par_Free_CamR_Ca2_total+global_par_CaMKII_CamR_Ca2_total+global_par_Dp_0_PP2B_CamR_Ca2;
% assignmentRule: variable = CamR_Ca2_ratio
	global_par_CamR_Ca2_ratio=global_par_CamR_Ca2_total/global_par_Cam_total;
% assignmentRule: variable = Dp_0_PP2B_CamR_Ca3
	global_par_Dp_0_PP2B_CamR_Ca3=x(74)+x(75)+x(76)+x(77)+x(109)+x(110)+x(111)+x(112);
% assignmentRule: variable = Cam_Ca3_total
	global_par_Cam_Ca3_total=global_par_Free_CamR_Ca3_total+global_par_Dp_0_PP2B_CamR_Ca3+global_par_CaMKII_CamR_Ca3_total;
% assignmentRule: variable = Cam_Ca3_total_ratio
	global_par_Cam_Ca3_total_ratio=global_par_Cam_Ca3_total/global_par_Cam_total;
% assignmentRule: variable = CamR_Ca3_total
	global_par_CamR_Ca3_total=global_par_Free_CamR_Ca3_total+global_par_Dp_0_PP2B_CamR_Ca3+global_par_CaMKII_CamR_Ca3_total;
% assignmentRule: variable = CamR_Ca3_ratio
	global_par_CamR_Ca3_ratio=global_par_CamR_Ca3_total/global_par_Cam_total;
% assignmentRule: variable = moles_bound_Ca_per_moles_Cam
	global_par_moles_bound_Ca_per_moles_Cam=(4*global_par_Cam_Ca4_total+3*global_par_Cam_Ca3_total+2*global_par_Cam_Ca2_total+global_par_Cam_Ca1_total)/global_par_Cam_total;
% assignmentRule: variable = CaMKII_bound_total
	global_par_CaMKII_bound_total=x(47)+global_par_CaMKII_CamR_Ca1_total+global_par_CaMKII_CamR_Ca2_total+global_par_CaMKII_CamR_Ca3_total+x(62)+x(80)+x(116)+x(95)+x(131);
% assignmentRule: variable = CamCaMKII_bar
	global_par_CamCaMKII_bar=global_par_CaMKII_bound_total/global_par_Cam_total;
% assignmentRule: variable = CaMKIIp_total
	global_par_CaMKIIp_total=x(79)+x(115)+x(80)+x(116)+x(81)+x(82)+x(83)+x(84)+x(117)+x(118)+x(119)+x(120)+x(85)+x(86)+x(87)+x(88)+x(89)+x(90)+x(121)+x(122)+x(123)+x(124)+x(125)+x(126)+x(91)+x(92)+x(93)+x(94)+x(127)+x(128)+x(129)+x(130)+x(95)+x(131);
% assignmentRule: variable = PP2B_bound_total
	global_par_PP2B_bound_total=x(63)+global_par_Dp_0_PP2B_CamR_Ca1+global_par_Dp_0_PP2B_CamR_Ca2+global_par_Dp_0_PP2B_CamR_Ca3+x(78)+x(98)+x(113);
% assignmentRule: variable = CamPP2B_bar
	global_par_CamPP2B_bar=global_par_PP2B_bound_total/global_par_Cam_total;
% assignmentRule: variable = CamR_total
	global_par_CamR_total=global_par_CamR_unbound+global_par_CaMKII_bound_total+global_par_PP2B_bound_total;
% assignmentRule: variable = CamT_total
	global_par_CamT_total=x(2)+x(32)+x(33)+x(34)+x(35)+x(36)+x(37)+x(38)+x(39)+x(40)+x(41)+x(42)+x(43)+x(44)+x(45)+x(46);
% assignmentRule: variable = CamR_ratio
	global_par_CamR_ratio=global_par_CamR_total/(global_par_CamR_total+global_par_CamT_total);
% assignmentRule: variable = PP2B_total
	global_par_PP2B_total=x(5)+x(133)+x(132)+x(134)+x(135)+global_par_PP2B_bound_total;
% assignmentRule: variable = PP2B_bar
	global_par_PP2B_bar=global_par_PP2B_bound_total/global_par_PP2B_total;
% assignmentRule: variable = D_total
	global_par_D_total=x(6)+x(114)+x(96)+x(97)+x(98)+x(99)+x(100)+x(101)+x(102)+x(103)+x(104)+x(105)+x(106)+x(107)+x(108)+x(109)+x(110)+x(111)+x(112)+x(113);
% assignmentRule: variable = Dp_total
	global_par_Dp_total=x(96)+x(114)+x(98)+x(99)+x(100)+x(101)+x(102)+x(103)+x(104)+x(105)+x(106)+x(107)+x(108)+x(109)+x(110)+x(111)+x(112)+x(113);
% assignmentRule: variable = Dp_bar
	global_par_Dp_bar=global_par_Dp_total/global_par_D_total;
% assignmentRule: variable = PP1a_total
	global_par_PP1a_total=x(8)+x(115)+x(116)+x(117)+x(118)+x(119)+x(120)+x(121)+x(122)+x(123)+x(124)+x(125)+x(126)+x(127)+x(128)+x(129)+x(130)+x(131);
% assignmentRule: variable = y_bar
	global_par_y_bar=global_par_moles_bound_Ca_per_moles_Cam/4;
% assignmentRule: variable = y_bar_div_1_minus_ybar
	global_par_y_bar_div_1_minus_ybar=global_par_y_bar/(1-global_par_y_bar);
% assignmentRule: variable = CamR_Ca1_total
	global_par_CamR_Ca1_total=global_par_Free_CamR_Ca1_total+global_par_CaMKII_CamR_Ca1_total+global_par_Dp_0_PP2B_CamR_Ca1;
% assignmentRule: variable = CamR_Ca1_ratio
	global_par_CamR_Ca1_ratio=global_par_CamR_Ca1_total/global_par_Cam_total;
% assignmentRule: variable = PP1_total
	global_par_PP1_total=x(8)+x(114)+x(115)+x(116)+x(117)+x(118)+x(119)+x(120)+x(121)+x(122)+x(123)+x(124)+x(125)+x(126)+x(127)+x(128)+x(129)+x(130)+x(131);
% assignmentRule: variable = PP1a_bar
	global_par_PP1a_bar=global_par_PP1a_total/global_par_PP1_total;
% assignmentRule: variable = K_CamR_T
	global_par_K_CamR_T=global_par_K_CamT_R*global_par_parameter_14;
% assignmentRule: variable = K_CamR_Ca_C_off
	global_par_K_CamR_Ca_C_off=global_par_parameter_12*global_par_K_Cam_Ca_on;
% assignmentRule: variable = K_CamT_Ca_C_off
	global_par_K_CamT_Ca_C_off=global_par_K_CamR_Ca_C_off/global_par_C_A_B_C_D;
% assignmentRule: variable = K_CamR_Ca_D_off
	global_par_K_CamR_Ca_D_off=global_par_parameter_13*global_par_K_Cam_Ca_on;
% assignmentRule: variable = K_CamT_Ca_D_off
	global_par_K_CamT_Ca_D_off=global_par_K_CamR_Ca_D_off/global_par_C_A_B_C_D;
% assignmentRule: variable = K_CamR_Ca_A_off
	global_par_K_CamR_Ca_A_off=global_par_parameter_10*global_par_K_Cam_Ca_on;
% assignmentRule: variable = K_CamT_Ca_A_off
	global_par_K_CamT_Ca_A_off=global_par_K_CamR_Ca_A_off/global_par_C_A_B_C_D;
% assignmentRule: variable = K_CamR_Ca_B_off
	global_par_K_CamR_Ca_B_off=global_par_parameter_11*global_par_K_Cam_Ca_on;
% assignmentRule: variable = K_CamT_Ca_B_off
	global_par_K_CamT_Ca_B_off=global_par_K_CamR_Ca_B_off/global_par_C_A_B_C_D;
% assignmentRule: variable = K_CamR_to_T_Ca2
	global_par_K_CamR_to_T_Ca2=global_par_C_A_B_C_D*global_par_K_CamR_T;
% assignmentRule: variable = K_CamT_to_R_Ca2
	global_par_K_CamT_to_R_Ca2=global_par_K_CamT_R/global_par_C_A_B_C_D;
% assignmentRule: variable = K_CamR_to_T_Ca1
	global_par_K_CamR_to_T_Ca1=global_par_K_CamR_T*global_par_C_A_B_C_D^(1/2);
% assignmentRule: variable = K_CamT_to_R_Ca1
	global_par_K_CamT_to_R_Ca1=global_par_K_CamT_R/global_par_C_A_B_C_D^(1/2);
% assignmentRule: variable = K_CamR_to_T_Ca3
	global_par_K_CamR_to_T_Ca3=global_par_K_CamR_T*global_par_C_A_B_C_D^(3/2);
% assignmentRule: variable = K_CamT_to_R_Ca3
	global_par_K_CamT_to_R_Ca3=global_par_K_CamT_R/global_par_C_A_B_C_D^(3/2);
% assignmentRule: variable = K_CamR_to_T_Ca4
	global_par_K_CamR_to_T_Ca4=global_par_K_CamR_T*global_par_C_A_B_C_D^2;
% assignmentRule: variable = K_CamT_to_R_Ca4
	global_par_K_CamT_to_R_Ca4=global_par_K_CamT_R/global_par_C_A_B_C_D^2;
% assignmentRule: variable = PKA_initial
	global_par_PKA_initial=global_par_Metabolite_6;
% assignmentRule: variable = CaMKII_total
	global_par_CaMKII_total=x(47)+x(48)+x(49)+x(50)+x(51)+x(81)+x(82)+x(83)+x(84)+x(117)+x(118)+x(119)+x(120)+x(52)+x(53)+x(54)+x(55)+x(56)+x(57)+x(85)+x(86)+x(87)+x(88)+x(89)+x(90)+x(121)+x(122)+x(123)+x(124)+x(125)+x(126)+x(58)+x(59)+x(60)+x(61)+x(91)+x(92)+x(93)+x(94)+x(127)+x(128)+x(129)+x(130)+x(62)+x(80)+x(116)+x(95)+x(131)+x(4)+x(79)+x(115);
% assignmentRule: variable = CaMKIIp_bar
	global_par_CaMKIIp_bar=global_par_CaMKIIp_total/global_par_CaMKII_total;
% assignmentRule: variable = CaMKII_active_total
	global_par_CaMKII_active_total=x(47)+x(48)+x(49)+x(50)+x(51)+x(81)+x(82)+x(83)+x(84)+x(117)+x(118)+x(119)+x(120)+x(52)+x(53)+x(54)+x(55)+x(56)+x(57)+x(85)+x(86)+x(87)+x(88)+x(89)+x(90)+x(121)+x(122)+x(123)+x(124)+x(125)+x(126)+x(58)+x(59)+x(60)+x(61)+x(91)+x(92)+x(93)+x(94)+x(127)+x(128)+x(129)+x(130)+x(62)+x(80)+x(116)+x(95)+x(131)+x(79)+x(115);
% assignmentRule: variable = CaMKII_active_ratio
	global_par_CaMKII_active_ratio=global_par_CaMKII_active_total/global_par_CaMKII_total;
% assignmentRule: variable = K_CaMKII_autoPhosphorylation
	global_par_K_CaMKII_autoPhosphorylation=MAX((-0.929)*global_par_CaMKII_active_ratio^5+3.128*global_par_CaMKII_active_ratio^4-4.249*global_par_CaMKII_active_ratio^3+2.998*global_par_CaMKII_active_ratio^2+0.05152*global_par_CaMKII_active_ratio-0.001008, 0)*global_par_k_for_CaMKII_autophosphorylation;
% assignmentRule: variable = PP2B_non_i
	global_par_PP2B_non_i=global_par_PP2B_total-x(133)-x(134)-x(135)-x(132);
% assignmentRule: variable = parameter_9
	global_par_parameter_9=piecewise(1/global_par_parameter_5, (1/global_par_parameter_5) < 0.008, 0.008);
% assignmentRule: variable = parameter_8
	global_par_parameter_8=piecewise(0.00717*0.008*global_par_parameter_5, (1/global_par_parameter_5) < 0.008, 0.00717);

% Reaction: id = Ca_pump, name = Ca_pump	% Local Parameter:   id =  km, name = km
	reaction_Ca_pump_km=1.0E-6;
	% Local Parameter:   id =  vmax, name = vmax
	reaction_Ca_pump_vmax=0.004;

	reaction_Ca_pump=compartment_Spine*Function_for_Ca_pump(x(3), reaction_Ca_pump_km, reaction_Ca_pump_vmax);

% Reaction: id = CBPslow_Ca_on, name = Ca binding to CBPslow
	reaction_CBPslow_Ca_on=compartment_Spine*global_par_K_CBPslow_Ca_on*x(11)*x(3);

% Reaction: id = CBPslow_Ca_off, name = Ca dissociating from CBPslow_Ca
	reaction_CBPslow_Ca_off=compartment_Spine*global_par_K_CBPslow_Ca_off*x(15);

% Reaction: id = CBPvslow_Ca_on, name = Ca binding to CBPvslow
	reaction_CBPvslow_Ca_on=compartment_Spine*global_par_K_CBPvslow_Ca_on*x(12)*x(3);

% Reaction: id = CBPvslow_Ca_off, name = Ca dissociating from CBPvslow_Ca
	reaction_CBPvslow_Ca_off=compartment_Spine*global_par_K_CBPvslow_Ca_off*x(16);

% Reaction: id = reaction_0, name = Ca binding to CamR site A
	reaction_reaction_0=compartment_Spine*global_par_K_Cam_Ca_on*x(1)*x(3);

% Reaction: id = reaction_1, name = Ca binding to CamR site B
	reaction_reaction_1=compartment_Spine*global_par_K_Cam_Ca_on*x(1)*x(3);

% Reaction: id = reaction_2, name = Ca binding to CamR site C
	reaction_reaction_2=compartment_Spine*global_par_K_Cam_Ca_on*x(1)*x(3);

% Reaction: id = reaction_3, name = Ca binding to CamR site D 
	reaction_reaction_3=compartment_Spine*global_par_K_Cam_Ca_on*x(1)*x(3);

% Reaction: id = reaction_4, name = Ca dissociating from CamR_Ca1_A site A 
	reaction_reaction_4=compartment_Spine*global_par_K_CamR_Ca_A_off*x(17);

% Reaction: id = reaction_5, name = Ca dissociating from CamR_Ca1_B site B 
	reaction_reaction_5=compartment_Spine*global_par_K_CamR_Ca_B_off*x(18);

% Reaction: id = reaction_6, name = Ca dissociating from CamR_Ca1_C site C 
	reaction_reaction_6=compartment_Spine*global_par_K_CamR_Ca_C_off*x(19);

% Reaction: id = reaction_7, name = Ca dissociating from CamR_Ca1_D site D 
	reaction_reaction_7=compartment_Spine*global_par_K_CamR_Ca_D_off*x(20);

% Reaction: id = reaction_8, name = Ca binding to CamR_Ca1_A site B 
	reaction_reaction_8=compartment_Spine*global_par_K_Cam_Ca_on*x(17)*x(3);

% Reaction: id = reaction_9, name = Ca binding to CamR_Ca1_A site C 
	reaction_reaction_9=compartment_Spine*global_par_K_Cam_Ca_on*x(17)*x(3);

% Reaction: id = reaction_10, name = Ca binding to CamR_Ca1_A site D
	reaction_reaction_10=compartment_Spine*global_par_K_Cam_Ca_on*x(17)*x(3);

% Reaction: id = reaction_11, name = Ca binding to CamR_Ca1_B site A 
	reaction_reaction_11=compartment_Spine*global_par_K_Cam_Ca_on*x(18)*x(3);

% Reaction: id = reaction_12, name = Ca binding to CamR_Ca1_B site C 
	reaction_reaction_12=compartment_Spine*global_par_K_Cam_Ca_on*x(18)*x(3);

% Reaction: id = reaction_13, name = Ca binding to CamR_Ca1_B site D 
	reaction_reaction_13=compartment_Spine*global_par_K_Cam_Ca_on*x(18)*x(3);

% Reaction: id = reaction_14, name = Ca binding to CamR_Ca1_C site A 
	reaction_reaction_14=compartment_Spine*global_par_K_Cam_Ca_on*x(19)*x(3);

% Reaction: id = reaction_15, name = Ca binding to CamR_Ca1_C site B 
	reaction_reaction_15=compartment_Spine*global_par_K_Cam_Ca_on*x(19)*x(3);

% Reaction: id = reaction_16, name = Ca binding to CamR_Ca1_C site D 
	reaction_reaction_16=compartment_Spine*global_par_K_Cam_Ca_on*x(19)*x(3);

% Reaction: id = reaction_17, name = Ca binding to CamR_Ca1_D site A 
	reaction_reaction_17=compartment_Spine*global_par_K_Cam_Ca_on*x(20)*x(3);

% Reaction: id = reaction_18, name = Ca binding to CamR_Ca1_D site B 
	reaction_reaction_18=compartment_Spine*global_par_K_Cam_Ca_on*x(20)*x(3);

% Reaction: id = reaction_19, name = Ca binding to CamR_Ca1_D site C 
	reaction_reaction_19=compartment_Spine*global_par_K_Cam_Ca_on*x(20)*x(3);

% Reaction: id = reaction_20, name = Ca dissociating from CamR_Ca2_AB site B 
	reaction_reaction_20=compartment_Spine*global_par_K_CamR_Ca_B_off*x(21);

% Reaction: id = reaction_21, name = Ca dissociating from CamR_Ca2_AC site C 
	reaction_reaction_21=compartment_Spine*global_par_K_CamR_Ca_C_off*x(22);

% Reaction: id = reaction_22, name = Ca dissociating from CamR_Ca2_AD site D 
	reaction_reaction_22=compartment_Spine*global_par_K_CamR_Ca_D_off*x(23);

% Reaction: id = reaction_23, name = Ca dissociating from CamR_Ca2_AB site A 
	reaction_reaction_23=compartment_Spine*global_par_K_CamR_Ca_A_off*x(21);

% Reaction: id = reaction_24, name = Ca dissociating from CamR_Ca2_BC site C 
	reaction_reaction_24=compartment_Spine*global_par_K_CamR_Ca_C_off*x(24);

% Reaction: id = reaction_25, name = Ca dissociating from CamR_Ca2_BD site D 
	reaction_reaction_25=compartment_Spine*global_par_K_CamR_Ca_D_off*x(25);

% Reaction: id = reaction_26, name = Ca dissociating from CamR_Ca2_AC site A 
	reaction_reaction_26=compartment_Spine*global_par_K_CamR_Ca_A_off*x(22);

% Reaction: id = reaction_27, name = Ca dissociating from CamR_Ca2_BC site B 
	reaction_reaction_27=compartment_Spine*global_par_K_CamR_Ca_B_off*x(24);

% Reaction: id = reaction_28, name = Ca dissociating from CamR_Ca2_CD site D 
	reaction_reaction_28=compartment_Spine*global_par_K_CamR_Ca_D_off*x(26);

% Reaction: id = reaction_29, name = Ca dissociating from CamR_Ca2_AD site A 
	reaction_reaction_29=compartment_Spine*global_par_K_CamR_Ca_A_off*x(23);

% Reaction: id = reaction_30, name = Ca dissociating from CamR_Ca2_BD site B 
	reaction_reaction_30=compartment_Spine*global_par_K_CamR_Ca_B_off*x(25);

% Reaction: id = reaction_31, name = Ca dissociating from CamR_Ca2_CD site C 
	reaction_reaction_31=compartment_Spine*global_par_K_CamR_Ca_C_off*x(26);

% Reaction: id = reaction_32, name = Ca binding to CamR_Ca2_AB site C 
	reaction_reaction_32=compartment_Spine*global_par_K_Cam_Ca_on*x(21)*x(3);

% Reaction: id = reaction_33, name = Ca binding to CamR_Ca2_AB site D 
	reaction_reaction_33=compartment_Spine*global_par_K_Cam_Ca_on*x(21)*x(3);

% Reaction: id = reaction_34, name = Ca binding to CamR_Ca2_AC site B 
	reaction_reaction_34=compartment_Spine*global_par_K_Cam_Ca_on*x(22)*x(3);

% Reaction: id = reaction_35, name = Ca binding to CamR_Ca2_AC site D 
	reaction_reaction_35=compartment_Spine*global_par_K_Cam_Ca_on*x(22)*x(3);

% Reaction: id = reaction_36, name = Ca binding to CamR_Ca2_AD site B 
	reaction_reaction_36=compartment_Spine*global_par_K_Cam_Ca_on*x(23)*x(3);

% Reaction: id = reaction_37, name = Ca binding to CamR_Ca2_AD site C 
	reaction_reaction_37=compartment_Spine*global_par_K_Cam_Ca_on*x(23)*x(3);

% Reaction: id = reaction_38, name = Ca binding to CamR_Ca2_BC site A 
	reaction_reaction_38=compartment_Spine*global_par_K_Cam_Ca_on*x(24)*x(3);

% Reaction: id = reaction_39, name = Ca binding to CamR_Ca2_BC site D 
	reaction_reaction_39=compartment_Spine*global_par_K_Cam_Ca_on*x(24)*x(3);

% Reaction: id = reaction_40, name = Ca binding to CamR_Ca2_BD site A 
	reaction_reaction_40=compartment_Spine*global_par_K_Cam_Ca_on*x(25)*x(3);

% Reaction: id = reaction_41, name = Ca binding to CamR_Ca2_BD site C 
	reaction_reaction_41=compartment_Spine*global_par_K_Cam_Ca_on*x(25)*x(3);

% Reaction: id = reaction_42, name = Ca binding to CamR_Ca2_CD site A 
	reaction_reaction_42=compartment_Spine*global_par_K_Cam_Ca_on*x(26)*x(3);

% Reaction: id = reaction_43, name = Ca binding to CamR_Ca2_CD site B 
	reaction_reaction_43=compartment_Spine*global_par_K_Cam_Ca_on*x(26)*x(3);

% Reaction: id = reaction_44, name = Ca dissociating from CamR_Ca3_ABC site A 
	reaction_reaction_44=compartment_Spine*global_par_K_CamR_Ca_A_off*x(27);

% Reaction: id = reaction_45, name = Ca dissociating from CamR_Ca3_ABC site B 
	reaction_reaction_45=compartment_Spine*global_par_K_CamR_Ca_B_off*x(27);

% Reaction: id = reaction_46, name = Ca dissociating from CamR_Ca3_ABC site C 
	reaction_reaction_46=compartment_Spine*global_par_K_CamR_Ca_C_off*x(27);

% Reaction: id = reaction_47, name = Ca dissociating from CamR_Ca3_ABD site A 
	reaction_reaction_47=compartment_Spine*global_par_K_CamR_Ca_A_off*x(28);

% Reaction: id = reaction_48, name = Ca dissociating from CamR_Ca3_ABD site B 
	reaction_reaction_48=compartment_Spine*global_par_K_CamR_Ca_B_off*x(28);

% Reaction: id = reaction_49, name = Ca dissociating from CamR_Ca3_ABD site D 
	reaction_reaction_49=compartment_Spine*global_par_K_CamR_Ca_D_off*x(28);

% Reaction: id = reaction_50, name = Ca dissociating from CamR_Ca3_ACD site A 
	reaction_reaction_50=compartment_Spine*global_par_K_CamR_Ca_A_off*x(29);

% Reaction: id = reaction_51, name = Ca dissociating from CamR_Ca3_ACD site C 
	reaction_reaction_51=compartment_Spine*global_par_K_CamR_Ca_C_off*x(29);

% Reaction: id = reaction_52, name = Ca dissociating from CamR_Ca3_ACD site D 
	reaction_reaction_52=compartment_Spine*global_par_K_CamR_Ca_D_off*x(29);

% Reaction: id = reaction_53, name = Ca dissociating from CamR_Ca3_BCD site B 
	reaction_reaction_53=compartment_Spine*global_par_K_CamR_Ca_B_off*x(30);

% Reaction: id = reaction_54, name = Ca dissociating from CamR_Ca3_BCD site C 
	reaction_reaction_54=compartment_Spine*global_par_K_CamR_Ca_C_off*x(30);

% Reaction: id = reaction_55, name = Ca dissociating from CamR_Ca3_BCD site D 
	reaction_reaction_55=compartment_Spine*global_par_K_CamR_Ca_D_off*x(30);

% Reaction: id = reaction_56, name = Ca binding to CamR_Ca3_ABC site D 
	reaction_reaction_56=compartment_Spine*global_par_K_Cam_Ca_on*x(27)*x(3);

% Reaction: id = reaction_57, name = Ca binding to CamR_Ca3_ABD site C 
	reaction_reaction_57=compartment_Spine*global_par_K_Cam_Ca_on*x(28)*x(3);

% Reaction: id = reaction_58, name = Ca binding to CamR_Ca3_ACD site B 
	reaction_reaction_58=compartment_Spine*global_par_K_Cam_Ca_on*x(29)*x(3);

% Reaction: id = reaction_59, name = Ca binding to CamR_Ca3_BCD site A 
	reaction_reaction_59=compartment_Spine*global_par_K_Cam_Ca_on*x(30)*x(3);

% Reaction: id = reaction_60, name = Ca dissociating from CamR_Ca4_ABCD site D 
	reaction_reaction_60=compartment_Spine*global_par_K_CamR_Ca_D_off*x(31);

% Reaction: id = reaction_61, name = Ca dissociating from CamR_Ca4_ABCD site C 
	reaction_reaction_61=compartment_Spine*global_par_K_CamR_Ca_C_off*x(31);

% Reaction: id = reaction_62, name = Ca dissociating from CamR_Ca4_ABCD site B 
	reaction_reaction_62=compartment_Spine*global_par_K_CamR_Ca_B_off*x(31);

% Reaction: id = reaction_63, name = Ca dissociating from CamR_Ca4_ABCD site A 
	reaction_reaction_63=compartment_Spine*global_par_K_CamR_Ca_A_off*x(31);

% Reaction: id = reaction_64, name = Ca binding to camT site A 
	reaction_reaction_64=compartment_Spine*global_par_K_Cam_Ca_on*x(2)*x(3);

% Reaction: id = reaction_65, name = Ca binding to camT site B 
	reaction_reaction_65=compartment_Spine*global_par_K_Cam_Ca_on*x(2)*x(3);

% Reaction: id = reaction_66, name = Ca binding to camT site C 
	reaction_reaction_66=compartment_Spine*global_par_K_Cam_Ca_on*x(2)*x(3);

% Reaction: id = reaction_67, name = Ca binding to camT site D 
	reaction_reaction_67=compartment_Spine*global_par_K_Cam_Ca_on*x(2)*x(3);

% Reaction: id = reaction_68, name = Ca dissociating from camT_ca1_A site A 
	reaction_reaction_68=compartment_Spine*global_par_K_CamT_Ca_A_off*x(32);

% Reaction: id = reaction_69, name = Ca dissociating from camT_ca1_B site B 
	reaction_reaction_69=compartment_Spine*global_par_K_CamT_Ca_B_off*x(33);

% Reaction: id = reaction_70, name = Ca dissociating from camT_ca1_C site C 
	reaction_reaction_70=compartment_Spine*global_par_K_CamT_Ca_C_off*x(34);

% Reaction: id = reaction_71, name = Ca dissociating from camT_ca1_D site D 
	reaction_reaction_71=compartment_Spine*global_par_K_CamT_Ca_D_off*x(35);

% Reaction: id = reaction_72, name = Ca binding to camT_ca1_A site B
	reaction_reaction_72=compartment_Spine*global_par_K_Cam_Ca_on*x(32)*x(3);

% Reaction: id = reaction_73, name = Ca binding to camT_ca1_A site C 
	reaction_reaction_73=compartment_Spine*global_par_K_Cam_Ca_on*x(32)*x(3);

% Reaction: id = reaction_74, name = Ca binding to camT_ca1_A site D 
	reaction_reaction_74=compartment_Spine*global_par_K_Cam_Ca_on*x(32)*x(3);

% Reaction: id = reaction_75, name = Ca binding to camT_ca1_B site A 
	reaction_reaction_75=compartment_Spine*global_par_K_Cam_Ca_on*x(33)*x(3);

% Reaction: id = reaction_76, name = Ca binding to camT_ca1_B site C 
	reaction_reaction_76=compartment_Spine*global_par_K_Cam_Ca_on*x(33)*x(3);

% Reaction: id = reaction_77, name = Ca binding to camT_ca1_B site D 
	reaction_reaction_77=compartment_Spine*global_par_K_Cam_Ca_on*x(33)*x(3);

% Reaction: id = reaction_78, name = Ca binding to camT_ca1_C site A 
	reaction_reaction_78=compartment_Spine*global_par_K_Cam_Ca_on*x(34)*x(3);

% Reaction: id = reaction_79, name = Ca binding to camT_ca1_C site B 
	reaction_reaction_79=compartment_Spine*global_par_K_Cam_Ca_on*x(34)*x(3);

% Reaction: id = reaction_80, name = Ca binding to CamT_ca1_C site D 
	reaction_reaction_80=compartment_Spine*global_par_K_Cam_Ca_on*x(34)*x(3);

% Reaction: id = reaction_81, name = Ca binding to CamT_ca1_D site A 
	reaction_reaction_81=compartment_Spine*global_par_K_Cam_Ca_on*x(35)*x(3);

% Reaction: id = reaction_82, name = Ca binding to CamT_ca1_D site B 
	reaction_reaction_82=compartment_Spine*global_par_K_Cam_Ca_on*x(35)*x(3);

% Reaction: id = reaction_83, name = Ca binding to CamT_ca1_D site C 
	reaction_reaction_83=compartment_Spine*global_par_K_Cam_Ca_on*x(35)*x(3);

% Reaction: id = reaction_84, name = Ca dissociating from CamT_ca2_AB site A 
	reaction_reaction_84=compartment_Spine*global_par_K_CamT_Ca_A_off*x(36);

% Reaction: id = reaction_85, name = Ca dissociating from CamT_ca2_AB site B 
	reaction_reaction_85=compartment_Spine*global_par_K_CamT_Ca_B_off*x(36);

% Reaction: id = reaction_86, name = Ca dissociating from CamT_ca2_AC site A 
	reaction_reaction_86=compartment_Spine*global_par_K_CamT_Ca_A_off*x(37);

% Reaction: id = reaction_87, name = Ca dissociating from CamT_ca2_AC site C 
	reaction_reaction_87=compartment_Spine*global_par_K_CamT_Ca_C_off*x(37);

% Reaction: id = reaction_88, name = Ca dissociating from CamT_ca2_AD site A 
	reaction_reaction_88=compartment_Spine*global_par_K_CamT_Ca_A_off*x(38);

% Reaction: id = reaction_89, name = Ca dissociating from CamT_ca2_AD site D 
	reaction_reaction_89=compartment_Spine*global_par_K_CamT_Ca_D_off*x(38);

% Reaction: id = reaction_90, name = Ca dissociating from CamT_ca2_BC site B 
	reaction_reaction_90=compartment_Spine*global_par_K_CamT_Ca_B_off*x(39);

% Reaction: id = reaction_91, name = Ca dissociating from CamT_ca2_BC site C 
	reaction_reaction_91=compartment_Spine*global_par_K_CamT_Ca_C_off*x(39);

% Reaction: id = reaction_92, name = Ca dissociating from CamT_ca2_BD site B 
	reaction_reaction_92=compartment_Spine*global_par_K_CamT_Ca_B_off*x(40);

% Reaction: id = reaction_93, name = Ca dissociating from CamT_ca2_BD site D 
	reaction_reaction_93=compartment_Spine*global_par_K_CamT_Ca_D_off*x(40);

% Reaction: id = reaction_94, name = Ca dissociating from CamT_ca2_CD site C 
	reaction_reaction_94=compartment_Spine*global_par_K_CamT_Ca_C_off*x(41);

% Reaction: id = reaction_95, name = Ca dissociating from CamT_ca2_CD site D 
	reaction_reaction_95=compartment_Spine*global_par_K_CamT_Ca_D_off*x(41);

% Reaction: id = reaction_96, name = Ca binding to CamT_ca2_AB site C 
	reaction_reaction_96=compartment_Spine*global_par_K_Cam_Ca_on*x(36)*x(3);

% Reaction: id = reaction_97, name = Ca binding to CamT_ca2_AB site D 
	reaction_reaction_97=compartment_Spine*global_par_K_Cam_Ca_on*x(36)*x(3);

% Reaction: id = reaction_98, name = Ca binding to CamT_ca2_AC site B 
	reaction_reaction_98=compartment_Spine*global_par_K_Cam_Ca_on*x(37)*x(3);

% Reaction: id = reaction_99, name = Ca binding to CamT_ca2_AC site D 
	reaction_reaction_99=compartment_Spine*global_par_K_Cam_Ca_on*x(37)*x(3);

% Reaction: id = reaction_100, name = Ca binding to CamT_Ca2_AD site B 
	reaction_reaction_100=compartment_Spine*global_par_K_Cam_Ca_on*x(38)*x(3);

% Reaction: id = reaction_101, name = Ca binding to CamT_Ca2_AD site C 
	reaction_reaction_101=compartment_Spine*global_par_K_Cam_Ca_on*x(38)*x(3);

% Reaction: id = reaction_102, name = Ca binding to CamT_Ca2_BC site A 
	reaction_reaction_102=compartment_Spine*global_par_K_Cam_Ca_on*x(39)*x(3);

% Reaction: id = reaction_103, name = Ca binding to CamT_Ca2_BC site D 
	reaction_reaction_103=compartment_Spine*global_par_K_Cam_Ca_on*x(39)*x(3);

% Reaction: id = reaction_104, name = Ca binding to CamT_Ca2_BD site A 
	reaction_reaction_104=compartment_Spine*global_par_K_Cam_Ca_on*x(40)*x(3);

% Reaction: id = reaction_105, name = Ca binding to CamT_Ca2_BD site C 
	reaction_reaction_105=compartment_Spine*global_par_K_Cam_Ca_on*x(40)*x(3);

% Reaction: id = reaction_106, name = Ca binding to CamT_Ca2_CD site A 
	reaction_reaction_106=compartment_Spine*global_par_K_Cam_Ca_on*x(41)*x(3);

% Reaction: id = reaction_107, name = Ca binding to CamT_Ca2_CD site B 
	reaction_reaction_107=compartment_Spine*global_par_K_Cam_Ca_on*x(41)*x(3);

% Reaction: id = reaction_108, name = Ca dissociating from CamT_Ca3_ABC site B 
	reaction_reaction_108=compartment_Spine*global_par_K_CamT_Ca_B_off*x(42);

% Reaction: id = reaction_109, name = Ca dissociating from CamT_Ca3_ABC site A 
	reaction_reaction_109=compartment_Spine*global_par_K_CamT_Ca_A_off*x(42);

% Reaction: id = reaction_110, name = Ca dissociating from CamT_Ca3_ABD site D 
	reaction_reaction_110=compartment_Spine*global_par_K_CamT_Ca_D_off*x(43);

% Reaction: id = reaction_111, name = Ca dissociating from CamT_Ca3_ABD site B 
	reaction_reaction_111=compartment_Spine*global_par_K_CamT_Ca_B_off*x(43);

% Reaction: id = reaction_112, name = Ca dissociating from CamT_Ca3_ABD site A 
	reaction_reaction_112=compartment_Spine*global_par_K_CamT_Ca_A_off*x(43);

% Reaction: id = reaction_113, name = Ca dissociating from CamT_Ca3_ACD site D 
	reaction_reaction_113=compartment_Spine*global_par_K_CamT_Ca_D_off*x(44);

% Reaction: id = reaction_114, name = Ca dissociating from CamT_Ca3_ACD site C 
	reaction_reaction_114=compartment_Spine*global_par_K_CamT_Ca_C_off*x(44);

% Reaction: id = reaction_115, name = Ca dissociating from CamT_Ca3_ACD site A 
	reaction_reaction_115=compartment_Spine*global_par_K_CamT_Ca_A_off*x(44);

% Reaction: id = reaction_116, name = Ca dissociating from CamT_Ca3_BCD site D 
	reaction_reaction_116=compartment_Spine*global_par_K_CamT_Ca_D_off*x(45);

% Reaction: id = reaction_117, name = Ca dissociating from CamT_Ca3_BCD site C 
	reaction_reaction_117=compartment_Spine*global_par_K_CamT_Ca_C_off*x(45);

% Reaction: id = reaction_118, name = Ca dissociating from CamT_Ca3_BCD site B 
	reaction_reaction_118=compartment_Spine*global_par_K_CamT_Ca_B_off*x(45);

% Reaction: id = reaction_119, name = Ca binding to CamT_Ca3_ABC site D 
	reaction_reaction_119=compartment_Spine*global_par_K_Cam_Ca_on*x(42)*x(3);

% Reaction: id = reaction_120, name = Ca binding to CamT_Ca3_ABD site C 
	reaction_reaction_120=compartment_Spine*global_par_K_Cam_Ca_on*x(43)*x(3);

% Reaction: id = reaction_121, name = Ca binding to CamT_Ca3_ACD site B 
	reaction_reaction_121=compartment_Spine*global_par_K_Cam_Ca_on*x(44)*x(3);

% Reaction: id = reaction_122, name = Ca binding to CamT_Ca3_BCD site A 
	reaction_reaction_122=compartment_Spine*global_par_K_Cam_Ca_on*x(45)*x(3);

% Reaction: id = reaction_123, name = Ca dissociating from CamT_Ca4_ABCD site D 
	reaction_reaction_123=compartment_Spine*global_par_K_CamT_Ca_D_off*x(46);

% Reaction: id = reaction_124, name = Ca dissociating from CamT_Ca4_ABCD site C 
	reaction_reaction_124=compartment_Spine*global_par_K_CamT_Ca_C_off*x(46);

% Reaction: id = reaction_125, name = Ca dissociating from CamT_Ca4_ABCD site B 
	reaction_reaction_125=compartment_Spine*global_par_K_CamT_Ca_B_off*x(46);

% Reaction: id = reaction_126, name = Ca dissociating from CamT_Ca4_ABCD site A 
	reaction_reaction_126=compartment_Spine*global_par_K_CamT_Ca_A_off*x(46);

% Reaction: id = reaction_127, name = Transition CamR to CamT 
	reaction_reaction_127=compartment_Spine*global_par_K_CamR_T*x(1);

% Reaction: id = reaction_128, name = Transition CamT to CamR 
	reaction_reaction_128=compartment_Spine*global_par_K_CamT_R*x(2);

% Reaction: id = reaction_129, name = Transition CamR_Ca1_A to CamT_Ca1_A 
	reaction_reaction_129=compartment_Spine*global_par_K_CamR_to_T_Ca1*x(17);

% Reaction: id = reaction_130, name = Transition CamR_Ca1_B to CamT_Ca1_B 
	reaction_reaction_130=compartment_Spine*global_par_K_CamR_to_T_Ca1*x(18);

% Reaction: id = reaction_131, name = Transition CamR_Ca1_C to CamT_Ca1_C 
	reaction_reaction_131=compartment_Spine*global_par_K_CamR_to_T_Ca1*x(19);

% Reaction: id = reaction_132, name = Transition CamR_Ca1_D to CamT_Ca1_D 
	reaction_reaction_132=compartment_Spine*global_par_K_CamR_to_T_Ca1*x(20);

% Reaction: id = reaction_133, name = Transition CamT_Ca1_A to CamR_Ca1_A 
	reaction_reaction_133=compartment_Spine*global_par_K_CamT_to_R_Ca1*x(32);

% Reaction: id = reaction_134, name = Transition CamT_Ca1_B to CamR_Ca1_B 
	reaction_reaction_134=compartment_Spine*global_par_K_CamT_to_R_Ca1*x(33);

% Reaction: id = reaction_135, name = Transition CamT_Ca1_C to CamR_Ca1_C 
	reaction_reaction_135=compartment_Spine*global_par_K_CamT_to_R_Ca1*x(34);

% Reaction: id = reaction_136, name = Transition CamT_Ca1_D to CamR_Ca1_D 
	reaction_reaction_136=compartment_Spine*global_par_K_CamT_to_R_Ca1*x(35);

% Reaction: id = reaction_137, name = Transition CamR_Ca2_AB to CamT_Ca2_AB 
	reaction_reaction_137=compartment_Spine*global_par_K_CamR_to_T_Ca2*x(21);

% Reaction: id = reaction_138, name = Transition CamR_Ca2_AC to CamT_Ca2_AC 
	reaction_reaction_138=compartment_Spine*global_par_K_CamR_to_T_Ca2*x(22);

% Reaction: id = reaction_139, name = Transition CamR_Ca2_AD to CamT_Ca2_AD 
	reaction_reaction_139=compartment_Spine*global_par_K_CamR_to_T_Ca2*x(23);

% Reaction: id = reaction_140, name = Transition CamR_Ca2_BC to CamT_Ca2_BC 
	reaction_reaction_140=compartment_Spine*global_par_K_CamR_to_T_Ca2*x(24);

% Reaction: id = reaction_141, name = Transition CamR_Ca2_BD to CamT_Ca2_BD 
	reaction_reaction_141=compartment_Spine*global_par_K_CamR_to_T_Ca2*x(25);

% Reaction: id = reaction_142, name = Transition CamR_Ca2_CD to CamT_Ca2_CD 
	reaction_reaction_142=compartment_Spine*global_par_K_CamR_to_T_Ca2*x(26);

% Reaction: id = reaction_143, name = Transition CamT_Ca2_AB to CamR_Ca2_AB 
	reaction_reaction_143=compartment_Spine*global_par_K_CamT_to_R_Ca2*x(36);

% Reaction: id = reaction_144, name = Transition CamT_Ca2_AC to CamR_Ca2_AC 
	reaction_reaction_144=compartment_Spine*global_par_K_CamT_to_R_Ca2*x(37);

% Reaction: id = reaction_145, name = Transition CamT_Ca2_AD to CamR_Ca2_AD 
	reaction_reaction_145=compartment_Spine*global_par_K_CamT_to_R_Ca2*x(38);

% Reaction: id = reaction_146, name = Transition CamT_Ca2_BC to CamR_Ca2_BC 
	reaction_reaction_146=compartment_Spine*global_par_K_CamT_to_R_Ca2*x(39);

% Reaction: id = reaction_147, name = Transition CamT_Ca2_BD to CamR_Ca2_BD 
	reaction_reaction_147=compartment_Spine*global_par_K_CamT_to_R_Ca2*x(40);

% Reaction: id = reaction_148, name = Transition CamT_Ca2_CD to CamR_Ca2_CD 
	reaction_reaction_148=compartment_Spine*global_par_K_CamT_to_R_Ca2*x(41);

% Reaction: id = reaction_149, name = Transition CamR_Ca3_ABC to CamT_Ca3_ABC 
	reaction_reaction_149=compartment_Spine*global_par_K_CamR_to_T_Ca3*x(27);

% Reaction: id = reaction_150, name = Transition CamR_Ca3_ABD to CamT_Ca3_ABD 
	reaction_reaction_150=compartment_Spine*global_par_K_CamR_to_T_Ca3*x(28);

% Reaction: id = reaction_151, name = Transition CamR_Ca3_ACD to CamT_Ca3_ACD 
	reaction_reaction_151=compartment_Spine*global_par_K_CamR_to_T_Ca3*x(29);

% Reaction: id = reaction_152, name = Transition CamR_Ca3_BCD to CamT_Ca3_BCD 
	reaction_reaction_152=compartment_Spine*global_par_K_CamR_to_T_Ca3*x(30);

% Reaction: id = reaction_153, name = Transition CamT_Ca3_ABC to CamR_Ca3_ABC 
	reaction_reaction_153=compartment_Spine*global_par_K_CamT_to_R_Ca3*x(42);

% Reaction: id = reaction_154, name = Transition CamT_Ca3_ABD to CamR_Ca3_ABD 
	reaction_reaction_154=compartment_Spine*global_par_K_CamT_to_R_Ca3*x(43);

% Reaction: id = reaction_155, name = Transition CamT_Ca3_ACD to CamR_Ca3_ACD 
	reaction_reaction_155=compartment_Spine*global_par_K_CamT_to_R_Ca3*x(44);

% Reaction: id = reaction_156, name = Transition CamT_Ca3_BCD to CamR_Ca3_BCD 
	reaction_reaction_156=compartment_Spine*global_par_K_CamT_to_R_Ca3*x(45);

% Reaction: id = reaction_157, name = Transition CamR_Ca4_ABCD to CamT_Ca4_ABCD 
	reaction_reaction_157=compartment_Spine*global_par_K_CamR_to_T_Ca4*x(31);

% Reaction: id = reaction_158, name = Transition CamT_Ca4_ABCD to CamR_Ca4_ABCD 
	reaction_reaction_158=compartment_Spine*global_par_K_CamT_to_R_Ca4*x(46);

% Reaction: id = reaction_159, name = CamKII binding to CamR 
	reaction_reaction_159=compartment_Spine*global_par_K_CamR_CaMKII_p_on*x(1)*x(4);

% Reaction: id = reaction_160, name = CamKII binding to CamR_Ca1_A 
	reaction_reaction_160=compartment_Spine*global_par_K_CamR_CaMKII_p_on*x(17)*x(4);

% Reaction: id = reaction_161, name = CamKII binding to CamR_Ca1_B 
	reaction_reaction_161=compartment_Spine*global_par_K_CamR_CaMKII_p_on*x(18)*x(4);

% Reaction: id = reaction_162, name = CamKII binding to CamR_Ca1_C 
	reaction_reaction_162=compartment_Spine*global_par_K_CamR_CaMKII_p_on*x(19)*x(4);

% Reaction: id = reaction_163, name = CamKII binding to CamR_Ca1_D 
	reaction_reaction_163=compartment_Spine*global_par_K_CamR_CaMKII_p_on*x(20)*x(4);

% Reaction: id = reaction_164, name = CamKII binding to CamR_Ca2_AB 
	reaction_reaction_164=compartment_Spine*global_par_K_CamR_CaMKII_p_on*x(21)*x(4);

% Reaction: id = reaction_165, name = CamKII binding to CamR_Ca2_AC 
	reaction_reaction_165=compartment_Spine*global_par_K_CamR_CaMKII_p_on*x(22)*x(4);

% Reaction: id = reaction_166, name = CamKII binding to CamR_Ca2_AD 
	reaction_reaction_166=compartment_Spine*global_par_K_CamR_CaMKII_p_on*x(23)*x(4);

% Reaction: id = reaction_167, name = CamKII binding to CamR_Ca2_BC 
	reaction_reaction_167=compartment_Spine*global_par_K_CamR_CaMKII_p_on*x(24)*x(4);

% Reaction: id = reaction_168, name = CamKII binding to CamR_Ca2_BD 
	reaction_reaction_168=compartment_Spine*global_par_K_CamR_CaMKII_p_on*x(25)*x(4);

% Reaction: id = reaction_169, name = CamKII binding to CamR_Ca2_CD 
	reaction_reaction_169=compartment_Spine*global_par_K_CamR_CaMKII_p_on*x(26)*x(4);

% Reaction: id = reaction_170, name = CamKII binding to CamR_Ca3_ABC 
	reaction_reaction_170=compartment_Spine*global_par_K_CamR_CaMKII_p_on*x(27)*x(4);

% Reaction: id = reaction_171, name = CamKII binding to CamR_Ca3_ABD 
	reaction_reaction_171=compartment_Spine*global_par_K_CamR_CaMKII_p_on*x(28)*x(4);

% Reaction: id = reaction_172, name = CamKII binding to CamR_Ca3_ACD 
	reaction_reaction_172=compartment_Spine*global_par_K_CamR_CaMKII_p_on*x(29)*x(4);

% Reaction: id = reaction_173, name = CamKII binding to CamR_Ca3_BCD 
	reaction_reaction_173=compartment_Spine*global_par_K_CamR_CaMKII_p_on*x(30)*x(4);

% Reaction: id = reaction_174, name = CamKII binding to CamR_Ca4_ABCD 
	reaction_reaction_174=compartment_Spine*global_par_K_CamR_CaMKII_p_on*x(31)*x(4);

% Reaction: id = reaction_175, name = CamKII dissociating from CamR 
	reaction_reaction_175=compartment_Spine*global_par_K_CamR_CaMKII_off*x(47);

% Reaction: id = reaction_176, name = CamKII dissociating from CamR_Ca1_A 
	reaction_reaction_176=compartment_Spine*global_par_K_CamR_CaMKII_off*x(48);

% Reaction: id = reaction_177, name = CamKII dissociating from CamR_Ca1_B 
	reaction_reaction_177=compartment_Spine*global_par_K_CamR_CaMKII_off*x(49);

% Reaction: id = reaction_178, name = CamKII dissociating from CamR_Ca1_C 
	reaction_reaction_178=compartment_Spine*global_par_K_CamR_CaMKII_off*x(50);

% Reaction: id = reaction_179, name = CamKII dissociating from CamR_Ca1_D 
	reaction_reaction_179=compartment_Spine*global_par_K_CamR_CaMKII_off*x(51);

% Reaction: id = reaction_180, name = CamKII dissociating from CamR_Ca2_AB 
	reaction_reaction_180=compartment_Spine*global_par_K_CamR_CaMKII_off*x(52);

% Reaction: id = reaction_181, name = CamKII dissociating from CamR_Ca2_AC 
	reaction_reaction_181=compartment_Spine*global_par_K_CamR_CaMKII_off*x(53);

% Reaction: id = reaction_182, name = CamKII dissociating from CamR_Ca2_AD 
	reaction_reaction_182=compartment_Spine*global_par_K_CamR_CaMKII_off*x(54);

% Reaction: id = reaction_183, name = CamKII dissociating from CamR_Ca2_BC 
	reaction_reaction_183=compartment_Spine*global_par_K_CamR_CaMKII_off*x(55);

% Reaction: id = reaction_184, name = CamKII dissociating from CamR_Ca2_BD 
	reaction_reaction_184=compartment_Spine*global_par_K_CamR_CaMKII_off*x(56);

% Reaction: id = reaction_185, name = CamKII dissociating from CamR_Ca2_CD 
	reaction_reaction_185=compartment_Spine*global_par_K_CamR_CaMKII_off*x(57);

% Reaction: id = reaction_186, name = CamKII dissociating from CamR_Ca3_ABC 
	reaction_reaction_186=compartment_Spine*global_par_K_CamR_CaMKII_off*x(58);

% Reaction: id = reaction_187, name = CamKII dissociating from CamR_Ca3_ABD 
	reaction_reaction_187=compartment_Spine*global_par_K_CamR_CaMKII_off*x(59);

% Reaction: id = reaction_188, name = CamKII dissociating from CamR_Ca3_ACD 
	reaction_reaction_188=compartment_Spine*global_par_K_CamR_CaMKII_off*x(60);

% Reaction: id = reaction_189, name = CamKII dissociating from CamR_Ca3_BCD 
	reaction_reaction_189=compartment_Spine*global_par_K_CamR_CaMKII_off*x(61);

% Reaction: id = reaction_190, name = CamKII dissociating from CamR_Ca4_ABCD 
	reaction_reaction_190=compartment_Spine*global_par_K_CamR_CaMKII_off*x(62);

% Reaction: id = reaction_191, name = PP2B binding to CamR 
	reaction_reaction_191=compartment_Spine*global_par_K_CamR_PP2B_on*x(1)*x(5);

% Reaction: id = reaction_192, name = PP2B binding to CamR_Ca1_A 
	reaction_reaction_192=compartment_Spine*global_par_K_CamR_PP2B_on*x(17)*x(5);

% Reaction: id = reaction_193, name = PP2B binding to CamR_Ca1_B 
	reaction_reaction_193=compartment_Spine*global_par_K_CamR_PP2B_on*x(18)*x(5);

% Reaction: id = reaction_194, name = PP2B binding to CamR_Ca1_C 
	reaction_reaction_194=compartment_Spine*global_par_K_CamR_PP2B_on*x(19)*x(5);

% Reaction: id = reaction_195, name = PP2B binding to CamR_Ca1_D 
	reaction_reaction_195=compartment_Spine*global_par_K_CamR_PP2B_on*x(20)*x(5);

% Reaction: id = reaction_196, name = PP2B binding to CamR_Ca2_AB 
	reaction_reaction_196=compartment_Spine*global_par_K_CamR_PP2B_on*x(21)*x(5);

% Reaction: id = reaction_198, name = PP2B binding to CamR_Ca2_AD
	reaction_reaction_198=compartment_Spine*global_par_K_CamR_PP2B_on*x(23)*x(5);

% Reaction: id = reaction_199, name = PP2B binding to CamR_Ca2_BC
	reaction_reaction_199=compartment_Spine*global_par_K_CamR_PP2B_on*x(24)*x(5);

% Reaction: id = reaction_200, name = PP2B binding to CamR_Ca2_BD
	reaction_reaction_200=compartment_Spine*global_par_K_CamR_PP2B_on*x(25)*x(5);

% Reaction: id = reaction_201, name = PP2B binding to CamR_Ca2_CD
	reaction_reaction_201=compartment_Spine*global_par_K_CamR_PP2B_on*x(26)*x(5);

% Reaction: id = reaction_202, name = PP2B binding to CamR_Ca3_ABC
	reaction_reaction_202=compartment_Spine*global_par_K_CamR_PP2B_on*x(27)*x(5);

% Reaction: id = reaction_203, name = PP2B binding to CamR_Ca3_ABD
	reaction_reaction_203=compartment_Spine*global_par_K_CamR_PP2B_on*x(28)*x(5);

% Reaction: id = reaction_204, name = PP2B binding to CamR_Ca3_ACD 
	reaction_reaction_204=compartment_Spine*global_par_K_CamR_PP2B_on*x(29)*x(5);

% Reaction: id = reaction_205, name = PP2B binding to CamR_Ca3_BCD 
	reaction_reaction_205=compartment_Spine*global_par_K_CamR_PP2B_on*x(30)*x(5);

% Reaction: id = reaction_206, name = PP2B binding to CamR_Ca4_ABCD 
	reaction_reaction_206=compartment_Spine*global_par_K_CamR_PP2B_on*x(31)*x(5);

% Reaction: id = reaction_207, name = PP2B dissociating from CamR 
	reaction_reaction_207=compartment_Spine*global_par_K_CamR_PP2B_off*x(63);

% Reaction: id = reaction_208, name = PP2B dissociating from CamR_Ca1_A 
	reaction_reaction_208=compartment_Spine*global_par_K_CamR_PP2B_off*x(64);

% Reaction: id = reaction_209, name = PP2B dissociating from CamR_Ca1_B
	reaction_reaction_209=compartment_Spine*global_par_K_CamR_PP2B_off*x(65);

% Reaction: id = reaction_210, name = PP2B dissociating from CamR_Ca1_C 
	reaction_reaction_210=compartment_Spine*global_par_K_CamR_PP2B_off*x(66);

% Reaction: id = reaction_211, name = PP2B dissociating from CamR_Ca1_D 
	reaction_reaction_211=compartment_Spine*global_par_K_CamR_PP2B_off*x(67);

% Reaction: id = reaction_212, name = PP2B dissociating from CamR_Ca2_AB
	reaction_reaction_212=compartment_Spine*global_par_K_CamR_PP2B_off*x(68);

% Reaction: id = reaction_213, name = PP2B dissociating from CamR_Ca2_AC 
	reaction_reaction_213=compartment_Spine*global_par_K_CamR_PP2B_off*x(69);

% Reaction: id = reaction_214, name = PP2B dissociating from CamR_Ca2_AD 
	reaction_reaction_214=compartment_Spine*global_par_K_CamR_PP2B_off*x(70);

% Reaction: id = reaction_215, name = PP2B dissociating from CamR_Ca2_BC 
	reaction_reaction_215=compartment_Spine*global_par_K_CamR_PP2B_off*x(71);

% Reaction: id = reaction_216, name = PP2B dissociating from CamR_Ca2_BD 
	reaction_reaction_216=compartment_Spine*global_par_K_CamR_PP2B_off*x(72);

% Reaction: id = reaction_217, name = PP2B dissociating from CamR_Ca2_CD 
	reaction_reaction_217=compartment_Spine*global_par_K_CamR_PP2B_off*x(73);

% Reaction: id = reaction_218, name = PP2B dissociating from CamR_Ca3_ABC 
	reaction_reaction_218=compartment_Spine*global_par_K_CamR_PP2B_off*x(74);

% Reaction: id = reaction_219, name = PP2B dissociating from CamR_Ca3_ABD 
	reaction_reaction_219=compartment_Spine*global_par_K_CamR_PP2B_off*x(75);

% Reaction: id = reaction_220, name = PP2B dissociating from CamR_Ca3_ACD 
	reaction_reaction_220=compartment_Spine*global_par_K_CamR_PP2B_off*x(76);

% Reaction: id = reaction_221, name = PP2B dissociating from CamR_Ca3_BCD 
	reaction_reaction_221=compartment_Spine*global_par_K_CamR_PP2B_off*x(77);

% Reaction: id = reaction_222, name = PP2B dissociating from CamR_Ca4_ABCD 
	reaction_reaction_222=compartment_Spine*global_par_K_CamR_PP2B_off*x(78);

% Reaction: id = reaction_223, name = Ca binding to CamR_CamKII site A 
	reaction_reaction_223=compartment_Spine*global_par_K_Cam_Ca_on*x(47)*x(3);

% Reaction: id = reaction_224, name = Ca binding to CamR_CamKII site B 
	reaction_reaction_224=compartment_Spine*global_par_K_Cam_Ca_on*x(47)*x(3);

% Reaction: id = reaction_225, name = Ca binding to CamR_CamKII site C 
	reaction_reaction_225=compartment_Spine*global_par_K_Cam_Ca_on*x(47)*x(3);

% Reaction: id = reaction_226, name = Ca binding to CamR_CamKII site D 
	reaction_reaction_226=compartment_Spine*global_par_K_Cam_Ca_on*x(47)*x(3);

% Reaction: id = reaction_227, name = Ca dissociating from CamR_Ca1_CamKII site A 
	reaction_reaction_227=compartment_Spine*global_par_K_CamR_Ca_A_off*x(48);

% Reaction: id = reaction_228, name = Ca dissociating from CamR_Ca1_CamKII site C 
	reaction_reaction_228=compartment_Spine*global_par_K_CamR_Ca_C_off*x(50);

% Reaction: id = reaction_229, name = Ca dissociating from CamR_Ca1_CamKII site D 
	reaction_reaction_229=compartment_Spine*global_par_K_CamR_Ca_D_off*x(51);

% Reaction: id = reaction_230, name = Ca binding to CamR_Ca1_A_CamKII site B 
	reaction_reaction_230=compartment_Spine*global_par_K_Cam_Ca_on*x(48)*x(3);

% Reaction: id = reaction_231, name = Ca binding to CamR_Ca1_A_CamKII site C 
	reaction_reaction_231=compartment_Spine*global_par_K_Cam_Ca_on*x(48)*x(3);

% Reaction: id = reaction_232, name = Ca binding to CamR_Ca1_A_CamKII site D 
	reaction_reaction_232=compartment_Spine*global_par_K_Cam_Ca_on*x(48)*x(3);

% Reaction: id = reaction_233, name = Ca binding to CamR_Ca1_B_CamKII site A 
	reaction_reaction_233=compartment_Spine*global_par_K_Cam_Ca_on*x(49)*x(3);

% Reaction: id = reaction_234, name = Ca binding to CamR_Ca1_B_CamKII site C 
	reaction_reaction_234=compartment_Spine*global_par_K_Cam_Ca_on*x(49)*x(3);

% Reaction: id = reaction_235, name = Ca binding to CamR_Ca1_B_CamKII site D 
	reaction_reaction_235=compartment_Spine*global_par_K_Cam_Ca_on*x(49)*x(3);

% Reaction: id = reaction_236, name = Ca binding to CamR_Ca1_C_CamKII site A 
	reaction_reaction_236=compartment_Spine*global_par_K_Cam_Ca_on*x(50)*x(3);

% Reaction: id = reaction_237, name = Ca binding to CamR_Ca1_C_CamKII site B 
	reaction_reaction_237=compartment_Spine*global_par_K_Cam_Ca_on*x(50)*x(3);

% Reaction: id = reaction_238, name = Ca binding to CamR_Ca1_C_CamKII site D 
	reaction_reaction_238=compartment_Spine*global_par_K_Cam_Ca_on*x(50)*x(3);

% Reaction: id = reaction_239, name = Ca binding to CamR_Ca1_D_CamKII site A 
	reaction_reaction_239=compartment_Spine*global_par_K_Cam_Ca_on*x(51)*x(3);

% Reaction: id = reaction_240, name = Ca binding to CamR_Ca1_D_CamKII site B 
	reaction_reaction_240=compartment_Spine*global_par_K_Cam_Ca_on*x(51)*x(3);

% Reaction: id = reaction_241, name = Ca binding to CamR_Ca1_D_CamKII site C 
	reaction_reaction_241=compartment_Spine*global_par_K_Cam_Ca_on*x(51)*x(3);

% Reaction: id = reaction_242, name = Ca dissociating from CamR_Ca2_AB_CamKII site A 
	reaction_reaction_242=compartment_Spine*global_par_K_CamR_Ca_A_off*x(52);

% Reaction: id = reaction_243, name = Ca dissociating from CamR_Ca2_AB_CamKII site B 
	reaction_reaction_243=compartment_Spine*global_par_K_CamR_Ca_B_off*x(52);

% Reaction: id = reaction_244, name = Ca dissociating from CamR_Ca2_AC_CamKII site A 
	reaction_reaction_244=compartment_Spine*global_par_K_CamR_Ca_A_off*x(53);

% Reaction: id = reaction_245, name = Ca dissociating from CamR_Ca2_AC_CamKII site C 
	reaction_reaction_245=compartment_Spine*global_par_K_CamR_Ca_C_off*x(53);

% Reaction: id = reaction_246, name = Ca dissociating from CamR_Ca2_AD_CamKII site A 
	reaction_reaction_246=compartment_Spine*global_par_K_CamR_Ca_A_off*x(54);

% Reaction: id = reaction_247, name = Ca dissociating from CamR_Ca2_AD_CamKII site D 
	reaction_reaction_247=compartment_Spine*global_par_K_CamR_Ca_D_off*x(54);

% Reaction: id = reaction_248, name = Ca dissociating from CamR_Ca2_BC_CamKII site B 
	reaction_reaction_248=compartment_Spine*global_par_K_CamR_Ca_B_off*x(55);

% Reaction: id = reaction_249, name = Ca dissociating from CamR_Ca2_BC_CamKII site C 
	reaction_reaction_249=compartment_Spine*global_par_K_CamR_Ca_C_off*x(55);

% Reaction: id = reaction_250, name = Ca dissociating from CamR_Ca2_BD_CamKII site B 
	reaction_reaction_250=compartment_Spine*global_par_K_CamR_Ca_B_off*x(56);

% Reaction: id = reaction_251, name = Ca dissociating from CamR_Ca2_BD_CamKII site D 
	reaction_reaction_251=compartment_Spine*global_par_K_CamR_Ca_D_off*x(56);

% Reaction: id = reaction_252, name = Ca dissociating from CamR_Ca2_CD_CamKII site C 
	reaction_reaction_252=compartment_Spine*global_par_K_CamR_Ca_C_off*x(57);

% Reaction: id = reaction_253, name = Ca dissociating from CamR_Ca2_CD_CamKII site D 
	reaction_reaction_253=compartment_Spine*global_par_K_CamR_Ca_D_off*x(57);

% Reaction: id = reaction_254, name = Ca binding to CamR_Ca2_AB_CamKII site C 
	reaction_reaction_254=compartment_Spine*global_par_K_Cam_Ca_on*x(52)*x(3);

% Reaction: id = reaction_255, name = Ca binding to CamR_Ca2_AB_CamKII site D 
	reaction_reaction_255=compartment_Spine*global_par_K_Cam_Ca_on*x(52)*x(3);

% Reaction: id = reaction_256, name = Ca binding to CamR_Ca2_AC_CamKII site B 
	reaction_reaction_256=compartment_Spine*global_par_K_Cam_Ca_on*x(53)*x(3);

% Reaction: id = reaction_257, name = Ca binding to CamR_Ca2_AC_CamKII site D 
	reaction_reaction_257=compartment_Spine*global_par_K_Cam_Ca_on*x(53)*x(3);

% Reaction: id = reaction_258, name = Ca binding to CamR_Ca2_AD_CamKII site B 
	reaction_reaction_258=compartment_Spine*global_par_K_Cam_Ca_on*x(54)*x(3);

% Reaction: id = reaction_259, name = Ca binding to CamR_Ca2_AD_CamKII site C 
	reaction_reaction_259=compartment_Spine*global_par_K_Cam_Ca_on*x(54)*x(3);

% Reaction: id = reaction_260, name = Ca binding to CamR_Ca2_BC_CamKII site A 
	reaction_reaction_260=compartment_Spine*global_par_K_Cam_Ca_on*x(55)*x(3);

% Reaction: id = reaction_261, name = Ca binding to CamR_Ca2_BC_CamKII site D 
	reaction_reaction_261=compartment_Spine*global_par_K_Cam_Ca_on*x(55)*x(3);

% Reaction: id = reaction_262, name = Ca binding to CamR_Ca2_BD_CamKII site A 
	reaction_reaction_262=compartment_Spine*global_par_K_Cam_Ca_on*x(56)*x(3);

% Reaction: id = reaction_263, name = Ca binding to CamR_Ca2_BD_CamKII site C 
	reaction_reaction_263=compartment_Spine*global_par_K_Cam_Ca_on*x(56)*x(3);

% Reaction: id = reaction_264, name = Ca binding to CamR_Ca2_CD_CamKII site A 
	reaction_reaction_264=compartment_Spine*global_par_K_Cam_Ca_on*x(57)*x(3);

% Reaction: id = reaction_265, name = Ca binding to CamR_Ca2_CD_CamKII site B 
	reaction_reaction_265=compartment_Spine*global_par_K_Cam_Ca_on*x(57)*x(3);

% Reaction: id = reaction_266, name = Ca dissociating from CamR_Ca3_ABC_CamKII site C 
	reaction_reaction_266=compartment_Spine*global_par_K_CamR_Ca_C_off*x(58);

% Reaction: id = reaction_267, name = Ca dissociating from CamR_Ca3_ABC_CamKII site B 
	reaction_reaction_267=compartment_Spine*global_par_K_CamR_Ca_B_off*x(58);

% Reaction: id = reaction_268, name = Ca dissociating from CamR_Ca3_ABC_CamKII site A 
	reaction_reaction_268=compartment_Spine*global_par_K_CamR_Ca_A_off*x(58);

% Reaction: id = reaction_269, name = Ca dissociating from CamR_Ca3_ABD_CamKII site D 
	reaction_reaction_269=compartment_Spine*global_par_K_CamR_Ca_D_off*x(59);

% Reaction: id = reaction_270, name = Ca dissociating from CamR_Ca3_ABD_CamKII site B 
	reaction_reaction_270=compartment_Spine*global_par_K_CamR_Ca_B_off*x(59);

% Reaction: id = reaction_271, name = Ca dissociating from CamR_Ca3_ABD_CamKII site A 
	reaction_reaction_271=compartment_Spine*global_par_K_CamR_Ca_A_off*x(59);

% Reaction: id = reaction_272, name = Ca dissociating from CamR_Ca3_ACD_CamKII site D 
	reaction_reaction_272=compartment_Spine*global_par_K_CamR_Ca_D_off*x(60);

% Reaction: id = reaction_273, name = Ca dissociating from CamR_Ca3_ACD_CamKII site C 
	reaction_reaction_273=compartment_Spine*global_par_K_CamR_Ca_C_off*x(60);

% Reaction: id = reaction_274, name = Ca dissociating from CamR_Ca3_ACD_CamKII site A 
	reaction_reaction_274=compartment_Spine*global_par_K_CamR_Ca_A_off*x(60);

% Reaction: id = reaction_275, name = Ca dissociating from CamR_Ca3_BCD_CamKII site D 
	reaction_reaction_275=compartment_Spine*global_par_K_CamR_Ca_D_off*x(61);

% Reaction: id = reaction_276, name = Ca dissociating from CamR_Ca3_BCD_CamKII site C 
	reaction_reaction_276=compartment_Spine*global_par_K_CamR_Ca_C_off*x(61);

% Reaction: id = reaction_277, name = Ca dissociating from CamR_Ca3_BCD_CamKII site B 
	reaction_reaction_277=compartment_Spine*global_par_K_CamR_Ca_B_off*x(61);

% Reaction: id = reaction_278, name = Ca binding to CamR_Ca3_BCD_CamKII site A 
	reaction_reaction_278=compartment_Spine*global_par_K_Cam_Ca_on*x(61)*x(3);

% Reaction: id = reaction_279, name = Ca binding to CamR_Ca3_ACD_CamKII site B 
	reaction_reaction_279=compartment_Spine*global_par_K_Cam_Ca_on*x(60)*x(3);

% Reaction: id = reaction_280, name = Ca binding to CamR_Ca3_ABD_CamKII site C 
	reaction_reaction_280=compartment_Spine*global_par_K_Cam_Ca_on*x(59)*x(3);

% Reaction: id = reaction_281, name = Ca binding to CamR_Ca3_ABC_CamKII site D 
	reaction_reaction_281=compartment_Spine*global_par_K_Cam_Ca_on*x(58)*x(3);

% Reaction: id = reaction_282, name = Ca dissociating from CamR_Ca4_ABCD_CamKII site A 
	reaction_reaction_282=compartment_Spine*global_par_K_CamR_Ca_A_off*x(62);

% Reaction: id = reaction_283, name = Ca dissociating from CamR_Ca4_ABCD_CamKII site B 
	reaction_reaction_283=compartment_Spine*global_par_K_CamR_Ca_B_off*x(62);

% Reaction: id = reaction_284, name = Ca dissociating from CamR_Ca4_ABCD_CamKII site C 
	reaction_reaction_284=compartment_Spine*global_par_K_CamR_Ca_C_off*x(62);

% Reaction: id = reaction_285, name = Ca dissociating from CamR_Ca4_ABCD_CamKII site D 
	reaction_reaction_285=compartment_Spine*global_par_K_CamR_Ca_D_off*x(62);

% Reaction: id = reaction_286, name = Ca binding to CamR_PP2B site A 
	reaction_reaction_286=compartment_Spine*global_par_K_Cam_Ca_on*x(63)*x(3);

% Reaction: id = reaction_287, name = Ca binding to CamR_PP2B site B 
	reaction_reaction_287=compartment_Spine*global_par_K_Cam_Ca_on*x(63)*x(3);

% Reaction: id = reaction_288, name = Ca binding to CamR_PP2B site C 
	reaction_reaction_288=compartment_Spine*global_par_K_Cam_Ca_on*x(63)*x(3);

% Reaction: id = reaction_289, name = Ca binding to CamR_PP2B site D 
	reaction_reaction_289=compartment_Spine*global_par_K_Cam_Ca_on*x(63)*x(3);

% Reaction: id = reaction_290, name = Ca dissociating from CamR_Ca1_A_PP2B site A 
	reaction_reaction_290=compartment_Spine*global_par_K_CamR_Ca_A_off*x(64);

% Reaction: id = reaction_291, name = Ca dissociating from CamR_Ca1_B_PP2B site B 
	reaction_reaction_291=compartment_Spine*global_par_K_CamR_Ca_B_off*x(65);

% Reaction: id = reaction_292, name = Ca dissociating from CamR_Ca1_C_PP2B site C 
	reaction_reaction_292=compartment_Spine*global_par_K_CamR_Ca_C_off*x(66);

% Reaction: id = reaction_293, name = Ca dissociating from CamR_Ca1_D_PP2B site D 
	reaction_reaction_293=compartment_Spine*global_par_K_CamR_Ca_D_off*x(67);

% Reaction: id = reaction_294, name = Ca binding to CamR_Ca1_A_PP2B site B 
	reaction_reaction_294=compartment_Spine*global_par_K_Cam_Ca_on*x(64)*x(3);

% Reaction: id = reaction_295, name = Ca binding to CamR_Ca1_A_PP2B site C 
	reaction_reaction_295=compartment_Spine*global_par_K_Cam_Ca_on*x(64)*x(3);

% Reaction: id = reaction_296, name = Ca binding to CamR_Ca1_A_PP2B site D 
	reaction_reaction_296=compartment_Spine*global_par_K_Cam_Ca_on*x(64)*x(3);

% Reaction: id = reaction_297, name = Ca binding to CamR_Ca1_B_PP2B site A 
	reaction_reaction_297=compartment_Spine*global_par_K_Cam_Ca_on*x(65)*x(3);

% Reaction: id = reaction_298, name = Ca binding to CamR_Ca1_B_PP2B site C 
	reaction_reaction_298=compartment_Spine*global_par_K_Cam_Ca_on*x(65)*x(3);

% Reaction: id = reaction_299, name = Ca binding to CamR_Ca1_B_PP2B site D 
	reaction_reaction_299=compartment_Spine*global_par_K_Cam_Ca_on*x(65)*x(3);

% Reaction: id = reaction_300, name = Ca binding to CamR_Ca1_C_PP2B site A 
	reaction_reaction_300=compartment_Spine*global_par_K_Cam_Ca_on*x(66)*x(3);

% Reaction: id = reaction_301, name = Ca binding to CamR_Ca1_C_PP2B site B 
	reaction_reaction_301=compartment_Spine*global_par_K_Cam_Ca_on*x(66)*x(3);

% Reaction: id = reaction_302, name = Ca binding to CamR_Ca1_C_PP2B site D 
	reaction_reaction_302=compartment_Spine*global_par_K_Cam_Ca_on*x(66)*x(3);

% Reaction: id = reaction_303, name = Ca binding to CamR_Ca1_D_PP2B site A 
	reaction_reaction_303=compartment_Spine*global_par_K_Cam_Ca_on*x(67)*x(3);

% Reaction: id = reaction_304, name = Ca binding to CamR_Ca1_D_PP2B site B 
	reaction_reaction_304=compartment_Spine*global_par_K_Cam_Ca_on*x(67)*x(3);

% Reaction: id = reaction_305, name = Ca binding to CamR_Ca1_D_PP2B site C 
	reaction_reaction_305=compartment_Spine*global_par_K_Cam_Ca_on*x(67)*x(3);

% Reaction: id = reaction_306, name = Ca dissociating from CamR_Ca2_AB_PP2B site A 
	reaction_reaction_306=compartment_Spine*global_par_K_CamR_Ca_A_off*x(68);

% Reaction: id = reaction_307, name = Ca dissociating from CamR_Ca2_AB_PP2B site B 
	reaction_reaction_307=compartment_Spine*global_par_K_CamR_Ca_B_off*x(68);

% Reaction: id = reaction_308, name = Ca dissociating from CamR_Ca2_AC_PP2B site A 
	reaction_reaction_308=compartment_Spine*global_par_K_CamR_Ca_A_off*x(69);

% Reaction: id = reaction_309, name = Ca dissociating from CamR_Ca2_AC_PP2B site C 
	reaction_reaction_309=compartment_Spine*global_par_K_CamR_Ca_C_off*x(69);

% Reaction: id = reaction_310, name = Ca dissociating from CamR_Ca2_AD_PP2B site A 
	reaction_reaction_310=compartment_Spine*global_par_K_CamR_Ca_A_off*x(70);

% Reaction: id = reaction_311, name = Ca dissociating from CamR_Ca2_AD_PP2B site D 
	reaction_reaction_311=compartment_Spine*global_par_K_CamR_Ca_D_off*x(70);

% Reaction: id = reaction_312, name = Ca dissociating from CamR_Ca2_BC_PP2B site B 
	reaction_reaction_312=compartment_Spine*global_par_K_CamR_Ca_B_off*x(71);

% Reaction: id = reaction_313, name = Ca dissociating from CamR_Ca2_BC_PP2B site C 
	reaction_reaction_313=compartment_Spine*global_par_K_CamR_Ca_C_off*x(71);

% Reaction: id = reaction_314, name = Ca dissociating from CamR_Ca2_BD_PP2B site B 
	reaction_reaction_314=compartment_Spine*global_par_K_CamR_Ca_B_off*x(72);

% Reaction: id = reaction_315, name = Ca dissociating from CamR_Ca2_BD_PP2B site D 
	reaction_reaction_315=compartment_Spine*global_par_K_CamR_Ca_D_off*x(72);

% Reaction: id = reaction_316, name = Ca dissociating from CamR_Ca2_CD_PP2B site C 
	reaction_reaction_316=compartment_Spine*global_par_K_CamR_Ca_C_off*x(73);

% Reaction: id = reaction_317, name = Ca dissociating from CamR_Ca2_CD_PP2B site D 
	reaction_reaction_317=compartment_Spine*global_par_K_CamR_Ca_D_off*x(73);

% Reaction: id = reaction_318, name = Ca binding to CamR_Ca2_AB_PP2B site C 
	reaction_reaction_318=compartment_Spine*global_par_K_Cam_Ca_on*x(68)*x(3);

% Reaction: id = reaction_319, name = Ca binding to CamR_Ca2_AB_PP2B site D 
	reaction_reaction_319=compartment_Spine*global_par_K_Cam_Ca_on*x(68)*x(3);

% Reaction: id = reaction_320, name = Ca binding to CamR_Ca2_AC_PP2B site B 
	reaction_reaction_320=compartment_Spine*global_par_K_Cam_Ca_on*x(69)*x(3);

% Reaction: id = reaction_321, name = Ca binding to CamR_Ca2_AC_PP2B site D 
	reaction_reaction_321=compartment_Spine*global_par_K_Cam_Ca_on*x(69)*x(3);

% Reaction: id = reaction_322, name = Ca binding to CamR_Ca2_AD_PP2B site B 
	reaction_reaction_322=compartment_Spine*global_par_K_Cam_Ca_on*x(70)*x(3);

% Reaction: id = reaction_323, name = Ca binding to CamR_Ca2_AD_PP2B site C 
	reaction_reaction_323=compartment_Spine*global_par_K_Cam_Ca_on*x(70)*x(3);

% Reaction: id = reaction_324, name = Ca binding to CamR_Ca2_BC_PP2B site A 
	reaction_reaction_324=compartment_Spine*global_par_K_Cam_Ca_on*x(71)*x(3);

% Reaction: id = reaction_325, name = Ca binding to CamR_Ca2_BC_PP2B site D 
	reaction_reaction_325=compartment_Spine*global_par_K_Cam_Ca_on*x(71)*x(3);

% Reaction: id = reaction_326, name = Ca binding to CamR_Ca2_BD_PP2B site A 
	reaction_reaction_326=compartment_Spine*global_par_K_Cam_Ca_on*x(72)*x(3);

% Reaction: id = reaction_327, name = Ca binding to CamR_Ca2_BD_PP2B site C 
	reaction_reaction_327=compartment_Spine*global_par_K_Cam_Ca_on*x(72)*x(3);

% Reaction: id = reaction_328, name = Ca binding to CamR_Ca2_CD_PP2B site A 
	reaction_reaction_328=compartment_Spine*global_par_K_Cam_Ca_on*x(73)*x(3);

% Reaction: id = reaction_329, name = Ca binding to CamR_Ca2_CD_PP2B site B 
	reaction_reaction_329=compartment_Spine*global_par_K_Cam_Ca_on*x(73)*x(3);

% Reaction: id = reaction_330, name = Ca dissociating from CamR_Ca3_ABC_PP2B site A 
	reaction_reaction_330=compartment_Spine*global_par_K_CamR_Ca_A_off*x(74);

% Reaction: id = reaction_331, name = Ca dissociating from CamR_Ca3_ABC_PP2B site B 
	reaction_reaction_331=compartment_Spine*global_par_K_CamR_Ca_B_off*x(74);

% Reaction: id = reaction_332, name = Ca dissociating from CamR_Ca3_ABC_PP2B site C 
	reaction_reaction_332=compartment_Spine*global_par_K_CamR_Ca_C_off*x(74);

% Reaction: id = reaction_333, name = Ca dissociating from CamR_Ca3_ABD_PP2B site A 
	reaction_reaction_333=compartment_Spine*global_par_K_CamR_Ca_A_off*x(75);

% Reaction: id = reaction_334, name = Ca dissociating from CamR_Ca3_ABD_PP2B site B 
	reaction_reaction_334=compartment_Spine*global_par_K_CamR_Ca_B_off*x(75);

% Reaction: id = reaction_335, name = Ca dissociating from CamR_Ca3_ABD_PP2B site D 
	reaction_reaction_335=compartment_Spine*global_par_K_CamR_Ca_D_off*x(75);

% Reaction: id = reaction_336, name = Ca dissociating from CamR_Ca3_ACD_PP2B site A 
	reaction_reaction_336=compartment_Spine*global_par_K_CamR_Ca_A_off*x(76);

% Reaction: id = reaction_337, name = Ca dissociating from CamR_Ca3_ACD_PP2B site C 
	reaction_reaction_337=compartment_Spine*global_par_K_CamR_Ca_C_off*x(76);

% Reaction: id = reaction_338, name = Ca dissociating from CamR_Ca3_ACD_PP2B site D 
	reaction_reaction_338=compartment_Spine*global_par_K_CamR_Ca_D_off*x(76);

% Reaction: id = reaction_339, name = Ca dissociating from CamR_Ca3_BCD_PP2B site B 
	reaction_reaction_339=compartment_Spine*global_par_K_CamR_Ca_B_off*x(77);

% Reaction: id = reaction_340, name = Ca dissociating from CamR_Ca3_BCD_PP2B site C 
	reaction_reaction_340=compartment_Spine*global_par_K_CamR_Ca_C_off*x(77);

% Reaction: id = reaction_341, name = Ca dissociating from CamR_Ca3_BCD_PP2B site D 
	reaction_reaction_341=compartment_Spine*global_par_K_CamR_Ca_D_off*x(77);

% Reaction: id = reaction_342, name = Ca binding to CamR_Ca3_ABC_PP2B site D 
	reaction_reaction_342=compartment_Spine*global_par_K_Cam_Ca_on*x(74)*x(3);

% Reaction: id = reaction_343, name = Ca binding to CamR_Ca3_ABD_PP2B site C 
	reaction_reaction_343=compartment_Spine*global_par_K_Cam_Ca_on*x(75)*x(3);

% Reaction: id = reaction_344, name = Ca binding to CamR_Ca3_ACD_PP2B site B 
	reaction_reaction_344=compartment_Spine*global_par_K_Cam_Ca_on*x(76)*x(3);

% Reaction: id = reaction_345, name = Ca binding to CamR_Ca3_BCD_PP2B site A 
	reaction_reaction_345=compartment_Spine*global_par_K_Cam_Ca_on*x(77)*x(3);

% Reaction: id = reaction_346, name = Ca dissociating from CamR_Ca4_ABCD_PP2B site A 
	reaction_reaction_346=compartment_Spine*global_par_K_CamR_Ca_A_off*x(78);

% Reaction: id = reaction_347, name = Ca dissociating from CamR_Ca4_ABCD_PP2B site B 
	reaction_reaction_347=compartment_Spine*global_par_K_CamR_Ca_B_off*x(78);

% Reaction: id = reaction_348, name = Ca dissociating from CamR_Ca4_ABCD_PP2B site C 
	reaction_reaction_348=compartment_Spine*global_par_K_CamR_Ca_C_off*x(78);

% Reaction: id = reaction_349, name = Ca dissociating from CamR_Ca4_ABCD_PP2B site D 
	reaction_reaction_349=compartment_Spine*global_par_K_CamR_Ca_D_off*x(78);

% Reaction: id = reaction_350, name = Ca dissociating from CamR_Ca1_CamKII site B 
	reaction_reaction_350=compartment_Spine*global_par_K_CamR_Ca_B_off*x(49);

% Reaction: id = reaction_351, name = Ca dissociating from CamT_Ca3_ABC site C 
	reaction_reaction_351=compartment_Spine*global_par_K_CamT_Ca_C_off*x(42);

% Reaction: id = reaction_352, name = CamR_CaMKII Phosphorylation 
	reaction_reaction_352=compartment_Spine*global_par_K_CaMKII_autoPhosphorylation*x(47);

% Reaction: id = reaction_353, name = CamR_Ca1_A_CaMKII phosphorylation   
	reaction_reaction_353=compartment_Spine*global_par_K_CaMKII_autoPhosphorylation*x(48);

% Reaction: id = reaction_354, name = CamR_Ca1_B_CaMKII Phosphorylation  
	reaction_reaction_354=compartment_Spine*global_par_K_CaMKII_autoPhosphorylation*x(49);

% Reaction: id = reaction_355, name = CamR_Ca1_C_CaMKII phosphorylation   
	reaction_reaction_355=compartment_Spine*global_par_K_CaMKII_autoPhosphorylation*x(50);

% Reaction: id = reaction_356, name = CamR_Ca1_D_CaMKII phosphorylation   
	reaction_reaction_356=compartment_Spine*global_par_K_CaMKII_autoPhosphorylation*x(51);

% Reaction: id = reaction_357, name = CamR_Ca2_AB_CaMKII phosphorylation   
	reaction_reaction_357=compartment_Spine*global_par_K_CaMKII_autoPhosphorylation*x(52);

% Reaction: id = reaction_358, name = CamR_Ca2_AC_CaMKII phosphorylation   
	reaction_reaction_358=compartment_Spine*global_par_K_CaMKII_autoPhosphorylation*x(53);

% Reaction: id = reaction_359, name = CamR_Ca2_AD_CaMKII phosphorylation   
	reaction_reaction_359=compartment_Spine*global_par_K_CaMKII_autoPhosphorylation*x(54);

% Reaction: id = reaction_360, name = CamR_Ca2_BC_CaMKII phosphorylation   
	reaction_reaction_360=compartment_Spine*global_par_K_CaMKII_autoPhosphorylation*x(55);

% Reaction: id = reaction_361, name = CamR_Ca2_BD_CaMKII phosphorylation   
	reaction_reaction_361=compartment_Spine*global_par_K_CaMKII_autoPhosphorylation*x(56);

% Reaction: id = reaction_362, name = CamR_Ca2_CD_CaMKII phosphorylation   
	reaction_reaction_362=compartment_Spine*global_par_K_CaMKII_autoPhosphorylation*x(57);

% Reaction: id = reaction_363, name = CamR_Ca3_ABC_CaMKII phosphorylation   
	reaction_reaction_363=compartment_Spine*global_par_K_CaMKII_autoPhosphorylation*x(58);

% Reaction: id = reaction_364, name = CamR_Ca3_ABD_CaMKII phosphorylation   
	reaction_reaction_364=compartment_Spine*global_par_K_CaMKII_autoPhosphorylation*x(59);

% Reaction: id = reaction_365, name = CamR_Ca3_ACD_CaMKII phosphorylation   
	reaction_reaction_365=compartment_Spine*global_par_K_CaMKII_autoPhosphorylation*x(60);

% Reaction: id = reaction_366, name = CamR_Ca3_BCD_CaMKII phosphorylation   
	reaction_reaction_366=compartment_Spine*global_par_K_CaMKII_autoPhosphorylation*x(61);

% Reaction: id = reaction_367, name = CamR_Ca4_ABCD_CaMKII phosphorylation   
	reaction_reaction_367=compartment_Spine*global_par_K_CaMKII_autoPhosphorylation*x(62);

% Reaction: id = reaction_368, name = CaMKIIp binding to CamR 
	reaction_reaction_368=compartment_Spine*global_par_K_CamR_CaMKII_p_on*x(1)*x(79);

% Reaction: id = reaction_369, name = CaMKIIp dissociating from CamR_CaMKIIp 
	reaction_reaction_369=compartment_Spine*global_par_K_CamR_CaMKIIp_off*x(80);

% Reaction: id = reaction_370, name = CaMKIIp binding to CamR_Ca1_A 
	reaction_reaction_370=compartment_Spine*global_par_K_CamR_CaMKII_p_on*x(17)*x(79);

% Reaction: id = reaction_371, name = CaMKIIp dissociating from CamR_Ca1_A_CaMKIIp 
	reaction_reaction_371=compartment_Spine*global_par_K_CamR_CaMKIIp_off*x(81);

% Reaction: id = reaction_372, name = CaMKIIp binding to CamR_Ca1_B 
	reaction_reaction_372=compartment_Spine*global_par_K_CamR_CaMKII_p_on*x(18)*x(79);

% Reaction: id = reaction_373, name = CaMKIIp dissociating from CamR_Ca1_B_CaMKIIp 
	reaction_reaction_373=compartment_Spine*global_par_K_CamR_CaMKIIp_off*x(82);

% Reaction: id = reaction_374, name = CaMKIIp binding to CamR_Ca1_C 
	reaction_reaction_374=compartment_Spine*global_par_K_CamR_CaMKII_p_on*x(19)*x(79);

% Reaction: id = reaction_375, name = CaMKIIp dissociating from CamR_Ca1_C_CaMKIIp 
	reaction_reaction_375=compartment_Spine*global_par_K_CamR_CaMKIIp_off*x(83);

% Reaction: id = reaction_376, name = CaMKIIp binding to CamR_Ca1_D 
	reaction_reaction_376=compartment_Spine*global_par_K_CamR_CaMKII_p_on*x(20)*x(79);

% Reaction: id = reaction_377, name = CaMKIIp dissociating from CamR_Ca1_D_CaMKIIp 
	reaction_reaction_377=compartment_Spine*global_par_K_CamR_CaMKIIp_off*x(84);

% Reaction: id = reaction_378, name = CaMKIIp binding to CamR_Ca2_AB 
	reaction_reaction_378=compartment_Spine*global_par_K_CamR_CaMKII_p_on*x(21)*x(79);

% Reaction: id = reaction_379, name = CaMKIIp dissociating from CamR_Ca2_AB_CaMKIIp 
	reaction_reaction_379=compartment_Spine*global_par_K_CamR_CaMKIIp_off*x(85);

% Reaction: id = reaction_380, name = CaMKIIp binding to CamR_Ca2_AC 
	reaction_reaction_380=compartment_Spine*global_par_K_CamR_CaMKII_p_on*x(22)*x(79);

% Reaction: id = reaction_381, name = CaMKIIp dissociating from CamR_Ca2_AC_CaMKIIp 
	reaction_reaction_381=compartment_Spine*global_par_K_CamR_CaMKIIp_off*x(86);

% Reaction: id = reaction_382, name = CaMKIIp binding to CamR_Ca2_AD 
	reaction_reaction_382=compartment_Spine*global_par_K_CamR_CaMKII_p_on*x(23)*x(79);

% Reaction: id = reaction_383, name = CaMKIIp dissociating from CamR_Ca2_AD_CaMKIIp 
	reaction_reaction_383=compartment_Spine*global_par_K_CamR_CaMKIIp_off*x(87);

% Reaction: id = reaction_384, name = CaMKIIp binding to CamR_Ca2_BC 
	reaction_reaction_384=compartment_Spine*global_par_K_CamR_CaMKII_p_on*x(24)*x(79);

% Reaction: id = reaction_385, name = CaMKIIp dissociating from CamR_Ca2_BC_CaMKIIp 
	reaction_reaction_385=compartment_Spine*global_par_K_CamR_CaMKIIp_off*x(88);

% Reaction: id = reaction_386, name = CaMKIIp binding to CamR_Ca2_BD 
	reaction_reaction_386=compartment_Spine*global_par_K_CamR_CaMKII_p_on*x(25)*x(79);

% Reaction: id = reaction_387, name = CaMKIIp dissociating from CamR_Ca2_BD_CaMKIIp 
	reaction_reaction_387=compartment_Spine*global_par_K_CamR_CaMKIIp_off*x(89);

% Reaction: id = reaction_388, name = CaMKIIp binding to CamR_Ca2_CD 
	reaction_reaction_388=compartment_Spine*global_par_K_CamR_CaMKII_p_on*x(26)*x(79);

% Reaction: id = reaction_389, name = CaMKIIp dissociating from CamR_Ca2_CD_CaMKIIp 
	reaction_reaction_389=compartment_Spine*global_par_K_CamR_CaMKIIp_off*x(90);

% Reaction: id = reaction_390, name = CaMKIIp binding to CamR_Ca3_ABC 
	reaction_reaction_390=compartment_Spine*global_par_K_CamR_CaMKII_p_on*x(27)*x(79);

% Reaction: id = reaction_391, name = CaMKIIp dissociating from CamR_Ca3_ABC_CaMKIIp 
	reaction_reaction_391=compartment_Spine*global_par_K_CamR_CaMKIIp_off*x(91);

% Reaction: id = reaction_392, name = CaMKIIp binding to CamR_Ca3_ABD 
	reaction_reaction_392=compartment_Spine*global_par_K_CamR_CaMKII_p_on*x(28)*x(79);

% Reaction: id = reaction_393, name = CaMKIIp dissociating from CamR_Ca3_ABD_CaMKIIp 
	reaction_reaction_393=compartment_Spine*global_par_K_CamR_CaMKIIp_off*x(92);

% Reaction: id = reaction_394, name = CaMKIIp binding to CamR_Ca3_ACD 
	reaction_reaction_394=compartment_Spine*global_par_K_CamR_CaMKII_p_on*x(29)*x(79);

% Reaction: id = reaction_395, name = CaMKIIp dissociating from CamR_Ca3_ACD_CaMKIIp 
	reaction_reaction_395=compartment_Spine*global_par_K_CamR_CaMKIIp_off*x(93);

% Reaction: id = reaction_396, name = CaMKIIp binding to CamR_Ca3_BCD 
	reaction_reaction_396=compartment_Spine*global_par_K_CamR_CaMKII_p_on*x(30)*x(79);

% Reaction: id = reaction_397, name = CaMKIIp dissociating from CamR_Ca3_BCD_CaMKIIp 
	reaction_reaction_397=compartment_Spine*global_par_K_CamR_CaMKIIp_off*x(94);

% Reaction: id = reaction_398, name = CaMKIIp binding to CamR_Ca4_ABCD 
	reaction_reaction_398=compartment_Spine*global_par_K_CamR_CaMKII_p_on*x(31)*x(79);

% Reaction: id = reaction_399, name = CaMKIIp dissociating from CamR_Ca4_ABCD_CaMKIIp 
	reaction_reaction_399=compartment_Spine*global_par_K_CamR_CaMKIIp_off*x(95);

% Reaction: id = reaction_504, name = Ca binding to CamR_CaMKIIp site A 
	reaction_reaction_504=compartment_Spine*global_par_K_Cam_Ca_on*x(80)*x(3);

% Reaction: id = reaction_505, name = Ca binding to CamR_CaMKIIp site B 
	reaction_reaction_505=compartment_Spine*global_par_K_Cam_Ca_on*x(80)*x(3);

% Reaction: id = reaction_506, name = Ca binding to CamR_CaMKIIp site C 
	reaction_reaction_506=compartment_Spine*global_par_K_Cam_Ca_on*x(80)*x(3);

% Reaction: id = reaction_507, name = Ca binding to CamR_CaMKIIp site D 
	reaction_reaction_507=compartment_Spine*global_par_K_Cam_Ca_on*x(80)*x(3);

% Reaction: id = reaction_508, name = Ca dissociating from CamR_Ca1_A_CaMKIIp site A 
	reaction_reaction_508=compartment_Spine*global_par_K_CamR_Ca_A_off*x(81);

% Reaction: id = reaction_567, name = Ca dissociating from CamR_Ca1_B_CaMKIIp site B 
	reaction_reaction_567=compartment_Spine*global_par_K_CamR_Ca_B_off*x(82);

% Reaction: id = reaction_509, name = Ca dissociating from CamR_Ca1_C_CaMKIIp site C 
	reaction_reaction_509=compartment_Spine*global_par_K_CamR_Ca_C_off*x(83);

% Reaction: id = reaction_510, name = Ca dissociating from CamR_Ca1_D_CaMKIIp site D 
	reaction_reaction_510=compartment_Spine*global_par_K_CamR_Ca_D_off*x(84);

% Reaction: id = reaction_511, name = Ca binding to CamR_Ca1_A_CaMKIIp site B 
	reaction_reaction_511=compartment_Spine*global_par_K_Cam_Ca_on*x(81)*x(3);

% Reaction: id = reaction_512, name = Ca binding to CamR_Ca1_A_CaMKIIp site C 
	reaction_reaction_512=compartment_Spine*global_par_K_Cam_Ca_on*x(81)*x(3);

% Reaction: id = reaction_513, name = Ca binding to CamR_Ca1_A_CaMKIIp site D 
	reaction_reaction_513=compartment_Spine*global_par_K_Cam_Ca_on*x(81)*x(3);

% Reaction: id = reaction_514, name = Ca binding to CamR_Ca1_B_CaMKIIp site A 
	reaction_reaction_514=compartment_Spine*global_par_K_Cam_Ca_on*x(82)*x(3);

% Reaction: id = reaction_515, name = Ca binding to CamR_Ca1_B_CaMKIIp site C 
	reaction_reaction_515=compartment_Spine*global_par_K_Cam_Ca_on*x(82)*x(3);

% Reaction: id = reaction_516, name = Ca binding to CamR_Ca1_B_CaMKIIp site D 
	reaction_reaction_516=compartment_Spine*global_par_K_Cam_Ca_on*x(82)*x(3);

% Reaction: id = reaction_517, name = Ca binding to CamR_Ca1_C_CaMKIIp site A 
	reaction_reaction_517=compartment_Spine*global_par_K_Cam_Ca_on*x(83)*x(3);

% Reaction: id = reaction_518, name = Ca binding to CamR_Ca1_C_CaMKIIp site B 
	reaction_reaction_518=compartment_Spine*global_par_K_Cam_Ca_on*x(83)*x(3);

% Reaction: id = reaction_519, name = Ca binding to CamR_Ca1_C_CaMKIIp site D 
	reaction_reaction_519=compartment_Spine*global_par_K_Cam_Ca_on*x(83)*x(3);

% Reaction: id = reaction_520, name = Ca binding to CamR_Ca1_D_CaMKIIp site A 
	reaction_reaction_520=compartment_Spine*global_par_K_Cam_Ca_on*x(84)*x(3);

% Reaction: id = reaction_521, name = Ca binding to CamR_Ca1_D_CaMKIIp site B 
	reaction_reaction_521=compartment_Spine*global_par_K_Cam_Ca_on*x(84)*x(3);

% Reaction: id = reaction_522, name = Ca binding to CamR_Ca1_D_CaMKIIp site C 
	reaction_reaction_522=compartment_Spine*global_par_K_Cam_Ca_on*x(84)*x(3);

% Reaction: id = reaction_523, name = Ca dissociating from CamR_Ca2_AB_CaMKIIp site A 
	reaction_reaction_523=compartment_Spine*global_par_K_CamR_Ca_A_off*x(85);

% Reaction: id = reaction_524, name = Ca dissociating from CamR_Ca2_AB_CaMKIIp site B 
	reaction_reaction_524=compartment_Spine*global_par_K_CamR_Ca_B_off*x(85);

% Reaction: id = reaction_525, name = Ca dissociating from CamR_Ca2_AC_CaMKIIp site A 
	reaction_reaction_525=compartment_Spine*global_par_K_CamR_Ca_A_off*x(86);

% Reaction: id = reaction_526, name = Ca dissociating from CamR_Ca2_AC_CaMKIIp site C 
	reaction_reaction_526=compartment_Spine*global_par_K_CamR_Ca_C_off*x(86);

% Reaction: id = reaction_527, name = Ca dissociating from CamR_Ca2_AD_CaMKIIp site A 
	reaction_reaction_527=compartment_Spine*global_par_K_CamR_Ca_A_off*x(87);

% Reaction: id = reaction_528, name = Ca dissociating from CamR_Ca2_AD_CaMKIIp site D 
	reaction_reaction_528=compartment_Spine*global_par_K_CamR_Ca_D_off*x(87);

% Reaction: id = reaction_529, name = Ca dissociating from CamR_Ca2_BC_CaMKIIp site B 
	reaction_reaction_529=compartment_Spine*global_par_K_CamR_Ca_B_off*x(88);

% Reaction: id = reaction_530, name = Ca dissociating from CamR_Ca2_BC_CaMKIIp site C 
	reaction_reaction_530=compartment_Spine*global_par_K_CamR_Ca_C_off*x(88);

% Reaction: id = reaction_531, name = Ca dissociating from CamR_Ca2_BD_CaMKIIp site B 
	reaction_reaction_531=compartment_Spine*global_par_K_CamR_Ca_B_off*x(89);

% Reaction: id = reaction_532, name = Ca dissociating from CamR_Ca2_BD_CaMKIIp site D 
	reaction_reaction_532=compartment_Spine*global_par_K_CamR_Ca_D_off*x(89);

% Reaction: id = reaction_533, name = Ca dissociating from CamR_Ca2_CD_CaMKIIp site C 
	reaction_reaction_533=compartment_Spine*global_par_K_CamR_Ca_C_off*x(90);

% Reaction: id = reaction_534, name = Ca dissociating from CamR_Ca2_CD_CaMKIIp site D 
	reaction_reaction_534=compartment_Spine*global_par_K_CamR_Ca_D_off*x(90);

% Reaction: id = reaction_535, name = Ca binding to CamR_Ca2_AB_CaMKIIp site C 
	reaction_reaction_535=compartment_Spine*global_par_K_Cam_Ca_on*x(85)*x(3);

% Reaction: id = reaction_536, name = Ca binding to CamR_Ca2_AB_CaMKIIp site D 
	reaction_reaction_536=compartment_Spine*global_par_K_Cam_Ca_on*x(85)*x(3);

% Reaction: id = reaction_537, name = Ca binding to CamR_Ca2_AC_CaMKIIp site B 
	reaction_reaction_537=compartment_Spine*global_par_K_Cam_Ca_on*x(86)*x(3);

% Reaction: id = reaction_538, name = Ca binding to CamR_Ca2_AC_CaMKIIp site D 
	reaction_reaction_538=compartment_Spine*global_par_K_Cam_Ca_on*x(86)*x(3);

% Reaction: id = reaction_539, name = Ca binding to CamR_Ca2_AD_CaMKIIp site B 
	reaction_reaction_539=compartment_Spine*global_par_K_Cam_Ca_on*x(87)*x(3);

% Reaction: id = reaction_540, name = Ca binding to CamR_Ca2_AD_CaMKIIp site C 
	reaction_reaction_540=compartment_Spine*global_par_K_Cam_Ca_on*x(87)*x(3);

% Reaction: id = reaction_541, name = Ca binding to CamR_Ca2_BC_CaMKIIp site A 
	reaction_reaction_541=compartment_Spine*global_par_K_Cam_Ca_on*x(88)*x(3);

% Reaction: id = reaction_542, name = Ca binding to CamR_Ca2_BC_CaMKIIp site D 
	reaction_reaction_542=compartment_Spine*global_par_K_Cam_Ca_on*x(88)*x(3);

% Reaction: id = reaction_543, name = Ca binding to CamR_Ca2_BD_CaMKIIp site A 
	reaction_reaction_543=compartment_Spine*global_par_K_Cam_Ca_on*x(89)*x(3);

% Reaction: id = reaction_544, name = Ca binding to CamR_Ca2_BD_CaMKIIp site C 
	reaction_reaction_544=compartment_Spine*global_par_K_Cam_Ca_on*x(89)*x(3);

% Reaction: id = reaction_545, name = Ca binding to CamR_Ca2_CD_CaMKIIp site A 
	reaction_reaction_545=compartment_Spine*global_par_K_Cam_Ca_on*x(90)*x(3);

% Reaction: id = reaction_546, name = Ca binding to CamR_Ca2_CD_CaMKIIp site B 
	reaction_reaction_546=compartment_Spine*global_par_K_Cam_Ca_on*x(90)*x(3);

% Reaction: id = reaction_547, name = Ca dissociating from CamR_Ca3_ABC_CaMKIIp site C 
	reaction_reaction_547=compartment_Spine*global_par_K_CamR_Ca_C_off*x(91);

% Reaction: id = reaction_548, name = Ca dissociating from CamR_Ca3_ABC_CaMKIIp site B 
	reaction_reaction_548=compartment_Spine*global_par_K_CamR_Ca_B_off*x(91);

% Reaction: id = reaction_549, name = Ca dissociating from CamR_Ca3_ABC_CaMKIIp site A 
	reaction_reaction_549=compartment_Spine*global_par_K_CamR_Ca_A_off*x(91);

% Reaction: id = reaction_550, name = Ca dissociating from CamR_Ca3_ABD_CaMKIIp site D 
	reaction_reaction_550=compartment_Spine*global_par_K_CamR_Ca_D_off*x(92);

% Reaction: id = reaction_551, name = Ca dissociating from CamR_Ca3_ABD_CaMKIIp site B 
	reaction_reaction_551=compartment_Spine*global_par_K_CamR_Ca_B_off*x(92);

% Reaction: id = reaction_552, name = Ca dissociating from CamR_Ca3_ABD_CaMKIIp site A 
	reaction_reaction_552=compartment_Spine*global_par_K_CamR_Ca_A_off*x(92);

% Reaction: id = reaction_553, name = Ca dissociating from CamR_Ca3_ACD_CaMKIIp site D 
	reaction_reaction_553=compartment_Spine*global_par_K_CamR_Ca_D_off*x(93);

% Reaction: id = reaction_554, name = Ca dissociating from CamR_Ca3_ACD_CaMKIIp site C 
	reaction_reaction_554=compartment_Spine*global_par_K_CamR_Ca_C_off*x(93);

% Reaction: id = reaction_555, name = Ca dissociating from CamR_Ca3_ACD_CaMKIIp site A 
	reaction_reaction_555=compartment_Spine*global_par_K_CamR_Ca_A_off*x(93);

% Reaction: id = reaction_556, name = Ca dissociating from CamR_Ca3_BCD_CaMKIIp site D 
	reaction_reaction_556=compartment_Spine*global_par_K_CamR_Ca_D_off*x(94);

% Reaction: id = reaction_557, name = Ca dissociating from CamR_Ca3_BCD_CaMKIIp site C 
	reaction_reaction_557=compartment_Spine*global_par_K_CamR_Ca_C_off*x(94);

% Reaction: id = reaction_558, name = Ca dissociating from CamR_Ca3_BCD_CaMKIIp site B 
	reaction_reaction_558=compartment_Spine*global_par_K_CamR_Ca_B_off*x(94);

% Reaction: id = reaction_559, name = Ca binding to CamR_Ca3_BCD_CaMKIIp site A 
	reaction_reaction_559=compartment_Spine*global_par_K_Cam_Ca_on*x(94)*x(3);

% Reaction: id = reaction_560, name = Ca binding to CamR_Ca3_ACD_CaMKIIp site B 
	reaction_reaction_560=compartment_Spine*global_par_K_Cam_Ca_on*x(93)*x(3);

% Reaction: id = reaction_561, name = Ca binding to CamR_Ca3_ABD_CaMKIIp site C 
	reaction_reaction_561=compartment_Spine*global_par_K_Cam_Ca_on*x(92)*x(3);

% Reaction: id = reaction_562, name = Ca binding to CamR_Ca3_ABC_CaMKIIp site D 
	reaction_reaction_562=compartment_Spine*global_par_K_Cam_Ca_on*x(91)*x(3);

% Reaction: id = reaction_563, name = Ca dissociating from CamR_Ca4_ABCD_CaMKIIp site A 
	reaction_reaction_563=compartment_Spine*global_par_K_CamR_Ca_A_off*x(95);

% Reaction: id = reaction_564, name = Ca dissociating from CamR_Ca4_ABCD_CaMKIIp site B 
	reaction_reaction_564=compartment_Spine*global_par_K_CamR_Ca_B_off*x(95);

% Reaction: id = reaction_565, name = Ca dissociating from CamR_Ca4_ABCD_CaMKIIp site C 
	reaction_reaction_565=compartment_Spine*global_par_K_CamR_Ca_C_off*x(95);

% Reaction: id = reaction_566, name = Ca dissociating from CamR_Ca4_ABCD_CaMKIIp site D 
	reaction_reaction_566=compartment_Spine*global_par_K_CamR_Ca_D_off*x(95);

% Reaction: id = reaction_400, name = D binding to PKA 
	reaction_reaction_400=compartment_Spine*global_par_K_D_PKA_on*x(6)*x(7);

% Reaction: id = reaction_401, name = D dissociating from D_PKA  
	reaction_reaction_401=compartment_Spine*global_par_K_D_PKA_off*x(97);

% Reaction: id = reaction_402, name = Dp dissociating from D_PKA 
	reaction_reaction_402=compartment_Spine*global_par_K_D_PKA_off_p*x(97);

% Reaction: id = reaction_403, name = Dp binding to CamR_PP2B 
	reaction_reaction_403=compartment_Spine*global_par_K_CamR_PP2B_Dp_on*x(96)*x(63);

% Reaction: id = reaction_404, name = Dp dissociating from Dp_CamR_PP2B 
	reaction_reaction_404=compartment_Spine*global_par_K_CamR_PP2B_Dp_off*x(98);

% Reaction: id = reaction_405, name = D dissociating from Dp_CamR_PP2B 
	reaction_reaction_405=compartment_Spine*global_par_K_CamR_PP2B_D_off*x(98);

% Reaction: id = reaction_406, name = Dp binding to CamR_Ca1_A_PP2B 
	reaction_reaction_406=compartment_Spine*global_par_K_CamR_PP2B_Dp_on*x(96)*x(64);

% Reaction: id = reaction_407, name = Dp dissociating from Dp_CamR_Ca1_A_PP2B 
	reaction_reaction_407=compartment_Spine*global_par_K_CamR_PP2B_Dp_off*x(99);

% Reaction: id = reaction_408, name = D dissociating from Dp_CamR_Ca1_A_PP2B 
	reaction_reaction_408=compartment_Spine*global_par_K_CamR_PP2B_D_off*x(99);

% Reaction: id = reaction_409, name = Dp binding to CamR_Ca1_B_PP2B 
	reaction_reaction_409=compartment_Spine*global_par_K_CamR_PP2B_Dp_on*x(96)*x(65);

% Reaction: id = reaction_410, name = Dp dissociating from Dp_CamR_Ca1_B_PP2B 
	reaction_reaction_410=compartment_Spine*global_par_K_CamR_PP2B_Dp_off*x(100);

% Reaction: id = reaction_411, name = D dissociating from Dp_CamR_Ca1_B_PP2B 
	reaction_reaction_411=compartment_Spine*global_par_K_CamR_PP2B_D_off*x(100);

% Reaction: id = reaction_412, name = Dp binding to CamR_Ca1_C_PP2B 
	reaction_reaction_412=compartment_Spine*global_par_K_CamR_PP2B_Dp_on*x(96)*x(66);

% Reaction: id = reaction_413, name = Dp dissociating from Dp_CamR_Ca1_C_PP2B 
	reaction_reaction_413=compartment_Spine*global_par_K_CamR_PP2B_Dp_off*x(101);

% Reaction: id = reaction_414, name = D dissociating from Dp_CamR_Ca1_C_PP2B 
	reaction_reaction_414=compartment_Spine*global_par_K_CamR_PP2B_D_off*x(101);

% Reaction: id = reaction_415, name = Dp binding to CamR_Ca1_D_PP2B
	reaction_reaction_415=compartment_Spine*global_par_K_CamR_PP2B_Dp_on*x(96)*x(67);

% Reaction: id = reaction_416, name = Dp dissociating from Dp_CamR_Ca1_D_PP2B 
	reaction_reaction_416=compartment_Spine*global_par_K_CamR_PP2B_Dp_off*x(102);

% Reaction: id = reaction_417, name = D dissociating from Dp_CamR_Ca1_D_PP2B 
	reaction_reaction_417=compartment_Spine*global_par_K_CamR_PP2B_D_off*x(102);

% Reaction: id = reaction_418, name = Dp binding to CamR_Ca2_AB_PP2B 
	reaction_reaction_418=compartment_Spine*global_par_K_CamR_PP2B_Dp_on*x(96)*x(68);

% Reaction: id = reaction_419, name = Dp dissociating from Dp_CamR_Ca2_AB_PP2B 
	reaction_reaction_419=compartment_Spine*global_par_K_CamR_PP2B_Dp_off*x(103);

% Reaction: id = reaction_420, name = D dissociating from Dp_CamR_Ca2_AB_PP2B 
	reaction_reaction_420=compartment_Spine*global_par_K_CamR_PP2B_D_off*x(103);

% Reaction: id = reaction_421, name = Dp binding to CamR_Ca2_AC_PP2B 
	reaction_reaction_421=compartment_Spine*global_par_K_CamR_PP2B_Dp_on*x(96)*x(69);

% Reaction: id = reaction_422, name = Dp dissociating from Dp_CamR_Ca2_AC_PP2B 
	reaction_reaction_422=compartment_Spine*global_par_K_CamR_PP2B_Dp_off*x(104);

% Reaction: id = reaction_423, name = D dissociating from Dp_CamR_Ca2_AC_PP2B 
	reaction_reaction_423=compartment_Spine*global_par_K_CamR_PP2B_D_off*x(104);

% Reaction: id = reaction_424, name = Dp binding to CamR_Ca2_AD_PP2B 
	reaction_reaction_424=compartment_Spine*global_par_K_CamR_PP2B_Dp_on*x(96)*x(70);

% Reaction: id = reaction_425, name = Dp dissociating from Dp_CamR_Ca2_AD_PP2B 
	reaction_reaction_425=compartment_Spine*global_par_K_CamR_PP2B_Dp_off*x(105);

% Reaction: id = reaction_426, name = D dissociating from Dp_CamR_Ca2_AD_PP2B 
	reaction_reaction_426=compartment_Spine*global_par_K_CamR_PP2B_D_off*x(105);

% Reaction: id = reaction_427, name = Dp binding to CamR_Ca2_BC_PP2B 
	reaction_reaction_427=compartment_Spine*global_par_K_CamR_PP2B_Dp_on*x(96)*x(71);

% Reaction: id = reaction_428, name = Dp dissociating from Dp_CamR_Ca2_BC_PP2B 
	reaction_reaction_428=compartment_Spine*global_par_K_CamR_PP2B_Dp_off*x(106);

% Reaction: id = reaction_429, name = D dissociating from Dp_CamR_Ca2_BC_PP2B 
	reaction_reaction_429=compartment_Spine*global_par_K_CamR_PP2B_D_off*x(106);

% Reaction: id = reaction_430, name = Dp binding to CamR_Ca2_BD_PP2B 
	reaction_reaction_430=compartment_Spine*global_par_K_CamR_PP2B_Dp_on*x(96)*x(72);

% Reaction: id = reaction_431, name = Dp dissociating from Dp_CamR_Ca2_BD_PP2B 
	reaction_reaction_431=compartment_Spine*global_par_K_CamR_PP2B_Dp_off*x(107);

% Reaction: id = reaction_432, name = D dissociating from Dp_CamR_Ca2_BD_PP2B 
	reaction_reaction_432=compartment_Spine*global_par_K_CamR_PP2B_D_off*x(107);

% Reaction: id = reaction_433, name = Dp binding to CamR_Ca2_CD_PP2B 
	reaction_reaction_433=compartment_Spine*global_par_K_CamR_PP2B_Dp_on*x(96)*x(73);

% Reaction: id = reaction_434, name = Dp dissociating from Dp_CamR_Ca2_CD_PP2B 
	reaction_reaction_434=compartment_Spine*global_par_K_CamR_PP2B_Dp_off*x(108);

% Reaction: id = reaction_435, name = D dissociating from Dp_CamR_Ca2_CD_PP2B 
	reaction_reaction_435=compartment_Spine*global_par_K_CamR_PP2B_D_off*x(108);

% Reaction: id = reaction_436, name = Dp binding to CamR_Ca3_ABC_PP2B 
	reaction_reaction_436=compartment_Spine*global_par_K_CamR_PP2B_Dp_on*x(96)*x(74);

% Reaction: id = reaction_437, name = Dp dissociating from Dp_CamR_Ca3_ABC_PP2B 
	reaction_reaction_437=compartment_Spine*global_par_K_CamR_PP2B_Dp_off*x(109);

% Reaction: id = reaction_438, name = D dissociating from Dp_CamR_Ca3_ABC_PP2B 
	reaction_reaction_438=compartment_Spine*global_par_K_CamR_PP2B_D_off*x(109);

% Reaction: id = reaction_439, name = Dp binding to CamR_Ca3_ABD_PP2B 
	reaction_reaction_439=compartment_Spine*global_par_K_CamR_PP2B_Dp_on*x(96)*x(75);

% Reaction: id = reaction_440, name = Dp dissociating from Dp_CamR_Ca3_ABD_PP2B 
	reaction_reaction_440=compartment_Spine*global_par_K_CamR_PP2B_Dp_off*x(110);

% Reaction: id = reaction_441, name = D dissociating from Dp_CamR_Ca3_ABD_PP2B 
	reaction_reaction_441=compartment_Spine*global_par_K_CamR_PP2B_D_off*x(110);

% Reaction: id = reaction_442, name = Dp binding to CamR_Ca3_ACD_PP2B 
	reaction_reaction_442=compartment_Spine*global_par_K_CamR_PP2B_Dp_on*x(96)*x(76);

% Reaction: id = reaction_443, name = Dp dissociating from Dp_CamR_Ca3_ACD_PP2B 
	reaction_reaction_443=compartment_Spine*global_par_K_CamR_PP2B_Dp_off*x(111);

% Reaction: id = reaction_444, name = D dissociating from Dp_CamR_Ca3_ACD_PP2B 
	reaction_reaction_444=compartment_Spine*global_par_K_CamR_PP2B_D_off*x(111);

% Reaction: id = reaction_445, name = Dp binding to CamR_Ca3_BCD_PP2B 
	reaction_reaction_445=compartment_Spine*global_par_K_CamR_PP2B_Dp_on*x(96)*x(77);

% Reaction: id = reaction_446, name = Dp dissociating from Dp_CamR_Ca3_BCD_PP2B 
	reaction_reaction_446=compartment_Spine*global_par_K_CamR_PP2B_Dp_off*x(112);

% Reaction: id = reaction_447, name = D dissociating from Dp_CamR_Ca3_BCD_PP2B 
	reaction_reaction_447=compartment_Spine*global_par_K_CamR_PP2B_D_off*x(112);

% Reaction: id = reaction_448, name = Dp binding to CamR_Ca4_ABCD_PP2B 
	reaction_reaction_448=compartment_Spine*global_par_K_CamR_PP2B_Dp_on*x(96)*x(78);

% Reaction: id = reaction_449, name = Dp dissociating from Dp_CamR_Ca4_ABCD_PP2B 
	reaction_reaction_449=compartment_Spine*global_par_K_CamR_PP2B_Dp_off*x(113);

% Reaction: id = reaction_450, name = D dissociating from Dp_CamR_Ca4_ABCD_PP2B 
	reaction_reaction_450=compartment_Spine*global_par_K_CamR_PP2B_D_off*x(113);

% Reaction: id = reaction_451, name = Dp binding to PP1a 
	reaction_reaction_451=compartment_Spine*global_par_K_PP1a_Dp_on*x(8)*x(96);

% Reaction: id = reaction_452, name = Dp dissociating from PP1a 
	reaction_reaction_452=compartment_Spine*global_par_K_PP1a_Dp_off*x(114);

% Reaction: id = reaction_453, name = CaMKIIp binding to PP1a 
	reaction_reaction_453=compartment_Spine*global_par_K_CamMKIIp_PP1a_on*x(79)*x(8);

% Reaction: id = reaction_454, name = CaMKIIp dissociating from CaMKIIp_PP1a 
	reaction_reaction_454=compartment_Spine*global_par_K_CamMKIIp_PP1a_off*x(115);

% Reaction: id = reaction_455, name = CaMKII dissociating from CaMKIIp_PP1a 
	reaction_reaction_455=compartment_Spine*global_par_K_CamMKIIp_PP1a_p_off*x(115);

% Reaction: id = reaction_456, name = CamR_CaMKIIp binding to PP1a 
	reaction_reaction_456=compartment_Spine*global_par_K_CamMKIIp_PP1a_on*x(80)*x(8);

% Reaction: id = reaction_457, name = CamR_CaMKIIp dissociating from CamR_CaMKIIp_PP1a 
	reaction_reaction_457=compartment_Spine*global_par_K_CamMKIIp_PP1a_off*x(116);

% Reaction: id = reaction_458, name = CamR_CaMKIIp_PP1a dephosphorylation
	reaction_reaction_458=compartment_Spine*global_par_K_CamMKIIp_PP1a_p_off*x(116);

% Reaction: id = reaction_459, name = CamR_Ca1_A_CaMKIIp binding to PP1a 
	reaction_reaction_459=compartment_Spine*global_par_K_CamMKIIp_PP1a_on*x(81)*x(8);

% Reaction: id = reaction_460, name = CamR_Ca1_A_CaMKIIp dissociating from CamR_Ca1_A_CaMKIIp_PP1a 
	reaction_reaction_460=compartment_Spine*global_par_K_CamMKIIp_PP1a_off*x(117);

% Reaction: id = reaction_461, name = CamR_Ca1_A_CaMKIIp_PP1a dephosphorylation 
	reaction_reaction_461=compartment_Spine*global_par_K_CamMKIIp_PP1a_p_off*x(117);

% Reaction: id = reaction_462, name = CamR_Ca1_B_CaMKIIp binding to PP1a 
	reaction_reaction_462=compartment_Spine*global_par_K_CamMKIIp_PP1a_on*x(82)*x(8);

% Reaction: id = reaction_463, name = CamR_Ca1_B_CaMKIIp dissociating from CamR_Ca1_B_CaMKIIp_PP1a 
	reaction_reaction_463=compartment_Spine*global_par_K_CamMKIIp_PP1a_off*x(118);

% Reaction: id = reaction_464, name = CamR_Ca1_B_CaMKIIp_PP1a dephosphorylation 
	reaction_reaction_464=compartment_Spine*global_par_K_CamMKIIp_PP1a_p_off*x(118);

% Reaction: id = reaction_465, name = CamR_Ca1_C_CaMKIIp binding to PP1a 
	reaction_reaction_465=compartment_Spine*global_par_K_CamMKIIp_PP1a_on*x(83)*x(8);

% Reaction: id = reaction_466, name = CamR_Ca1_C_CaMKIIp dissociating from CamR_Ca1_C_CaMKIIp_PP1a 
	reaction_reaction_466=compartment_Spine*global_par_K_CamMKIIp_PP1a_off*x(119);

% Reaction: id = reaction_467, name = CamR_Ca1_C_CaMKIIp_PP1a dephosphorylation
	reaction_reaction_467=compartment_Spine*global_par_K_CamMKIIp_PP1a_p_off*x(119);

% Reaction: id = reaction_468, name = CamR_Ca1_D_CaMKIIp binding to PP1a 
	reaction_reaction_468=compartment_Spine*global_par_K_CamMKIIp_PP1a_on*x(84)*x(8);

% Reaction: id = reaction_469, name = CamR_Ca1_D_CaMKIIp dissociating from CamR_Ca1_D_CaMKIIp_PP1a 
	reaction_reaction_469=compartment_Spine*global_par_K_CamMKIIp_PP1a_off*x(120);

% Reaction: id = reaction_470, name = CamR_Ca1_D_CaMKIIp_PP1a dephosphorylation
	reaction_reaction_470=compartment_Spine*global_par_K_CamMKIIp_PP1a_p_off*x(120);

% Reaction: id = reaction_471, name = CamR_Ca2_AB_CaMKIIp binding to PP1a 
	reaction_reaction_471=compartment_Spine*global_par_K_CamMKIIp_PP1a_on*x(85)*x(8);

% Reaction: id = reaction_472, name = CamR_Ca2_AB_CaMKIIp dissociating from CamR_Ca2_AB_CaMKIIp_PP1a 
	reaction_reaction_472=compartment_Spine*global_par_K_CamMKIIp_PP1a_off*x(121);

% Reaction: id = reaction_473, name = CamR_Ca2_AB_CaMKIIp_PP1a dephosphorylation
	reaction_reaction_473=compartment_Spine*global_par_K_CamMKIIp_PP1a_p_off*x(121);

% Reaction: id = reaction_474, name = CamR_Ca2_AC_CaMKIIp binding to PP1a 
	reaction_reaction_474=compartment_Spine*global_par_K_CamMKIIp_PP1a_on*x(86)*x(8);

% Reaction: id = reaction_475, name = CamR_Ca2_AC_CaMKIIp dissociating from CamR_Ca2_AC_CaMKIIp_PP1a 
	reaction_reaction_475=compartment_Spine*global_par_K_CamMKIIp_PP1a_off*x(122);

% Reaction: id = reaction_476, name = CamR_Ca2_AC_CaMKIIp_PP1a dephosphorylation
	reaction_reaction_476=compartment_Spine*global_par_K_CamMKIIp_PP1a_p_off*x(122);

% Reaction: id = reaction_477, name = CamR_Ca2_AD_CaMKIIp binding to PP1a 
	reaction_reaction_477=compartment_Spine*global_par_K_CamMKIIp_PP1a_on*x(87)*x(8);

% Reaction: id = reaction_478, name = CamR_Ca2_AD_CaMKIIp dissociating from CamR_Ca2_AD_CaMKIIp_PP1a 
	reaction_reaction_478=compartment_Spine*global_par_K_CamMKIIp_PP1a_off*x(123);

% Reaction: id = reaction_479, name = CamR_Ca2_AD_CaMKIIp_PP1a dephosphorylation
	reaction_reaction_479=compartment_Spine*global_par_K_CamMKIIp_PP1a_p_off*x(123);

% Reaction: id = reaction_480, name = CamR_Ca2_BC_CaMKIIp binding to PP1a 
	reaction_reaction_480=compartment_Spine*global_par_K_CamMKIIp_PP1a_on*x(88)*x(8);

% Reaction: id = reaction_481, name = CamR_Ca2_BC_CaMKIIp dissociating from CamR_Ca2_BC_CaMKIIp_PP1a 
	reaction_reaction_481=compartment_Spine*global_par_K_CamMKIIp_PP1a_off*x(124);

% Reaction: id = reaction_482, name = CamR_Ca2_BC_CaMKIIp_PP1a dephosphorylation
	reaction_reaction_482=compartment_Spine*global_par_K_CamMKIIp_PP1a_p_off*x(124);

% Reaction: id = reaction_483, name = CamR_Ca2_BD_CaMKIIp binding to PP1a 
	reaction_reaction_483=compartment_Spine*global_par_K_CamMKIIp_PP1a_on*x(89)*x(8);

% Reaction: id = reaction_484, name = CamR_Ca2_BD_CaMKIIp dissociating from CamR_Ca2_BD_CaMKIIp_PP1a 
	reaction_reaction_484=compartment_Spine*global_par_K_CamMKIIp_PP1a_off*x(125);

% Reaction: id = reaction_485, name = CamR_Ca2_BD_CaMKIIp_PP1a dephosphorylation
	reaction_reaction_485=compartment_Spine*global_par_K_CamMKIIp_PP1a_p_off*x(125);

% Reaction: id = reaction_486, name = CamR_Ca2_CD_CaMKIIp binding to PP1a 
	reaction_reaction_486=compartment_Spine*global_par_K_CamMKIIp_PP1a_on*x(90)*x(8);

% Reaction: id = reaction_487, name = CamR_Ca2_CD_CaMKIIp dissociating from CamR_Ca2_CD_CaMKIIp_PP1a 
	reaction_reaction_487=compartment_Spine*global_par_K_CamMKIIp_PP1a_off*x(126);

% Reaction: id = reaction_488, name = CamR_Ca2_CD_CaMKIIp_PP1a dephosphorylation
	reaction_reaction_488=compartment_Spine*global_par_K_CamMKIIp_PP1a_p_off*x(126);

% Reaction: id = reaction_489, name = CamR_Ca3_ABC_CaMKIIp binding to PP1a 
	reaction_reaction_489=compartment_Spine*global_par_K_CamMKIIp_PP1a_on*x(91)*x(8);

% Reaction: id = reaction_490, name = CamR_Ca3_ABC_CaMKIIp dissociating from CamR_Ca3_ABC_CaMKIIp_PP1a 
	reaction_reaction_490=compartment_Spine*global_par_K_CamMKIIp_PP1a_off*x(127);

% Reaction: id = reaction_491, name = CamR_Ca3_ABC_CaMKIIp_PP1a dephosphorylation
	reaction_reaction_491=compartment_Spine*global_par_K_CamMKIIp_PP1a_p_off*x(127);

% Reaction: id = reaction_492, name = CamR_Ca3_ABD_CaMKIIp binding to PP1a 
	reaction_reaction_492=compartment_Spine*global_par_K_CamMKIIp_PP1a_on*x(92)*x(8);

% Reaction: id = reaction_493, name = CamR_Ca3_ABD_CaMKIIp dissociating from CamR_Ca3_ABD_CaMKIIp_PP1a 
	reaction_reaction_493=compartment_Spine*global_par_K_CamMKIIp_PP1a_off*x(128);

% Reaction: id = reaction_494, name = CamR_Ca3_ABD_CaMKIIp_PP1a dephosphorylation
	reaction_reaction_494=compartment_Spine*global_par_K_CamMKIIp_PP1a_p_off*x(128);

% Reaction: id = reaction_495, name = CamR_Ca3_ACD_CaMKIIp binding to PP1a 
	reaction_reaction_495=compartment_Spine*global_par_K_CamMKIIp_PP1a_on*x(93)*x(8);

% Reaction: id = reaction_496, name = CamR_Ca3_ACD_CaMKIIp dissociating from CamR_Ca3_ACD_CaMKIIp_PP1a 
	reaction_reaction_496=compartment_Spine*global_par_K_CamMKIIp_PP1a_off*x(129);

% Reaction: id = reaction_497, name = CamR_Ca3_ACD_CaMKIIp_PP1a dephosphorylation
	reaction_reaction_497=compartment_Spine*global_par_K_CamMKIIp_PP1a_p_off*x(129);

% Reaction: id = reaction_498, name = CamR_Ca3_BCD_CaMKIIp binding to PP1a 
	reaction_reaction_498=compartment_Spine*global_par_K_CamMKIIp_PP1a_on*x(94)*x(8);

% Reaction: id = reaction_499, name = CamR_Ca3_BCD_CaMKIIp dissociating from CamR_Ca3_BCD_CaMKIIp_PP1a 
	reaction_reaction_499=compartment_Spine*global_par_K_CamMKIIp_PP1a_off*x(130);

% Reaction: id = reaction_500, name = CamR_Ca3_BCD_CaMKIIp_PP1a dephosphorylation
	reaction_reaction_500=compartment_Spine*global_par_K_CamMKIIp_PP1a_p_off*x(130);

% Reaction: id = reaction_501, name = CamR_Ca4_ABCD_CaMKIIp binding to PP1a 
	reaction_reaction_501=compartment_Spine*global_par_K_CamMKIIp_PP1a_on*x(95)*x(8);

% Reaction: id = reaction_502, name = CamR_Ca4_ABCD_CaMKIIp dissociating from CamR_Ca4_ABCD_CaMKIIp_PP1a 
	reaction_reaction_502=compartment_Spine*global_par_K_CamMKIIp_PP1a_off*x(131);

% Reaction: id = reaction_503, name = CamR_Ca4_ABCD_CaMKIIp_PP1a dephosphorylation
	reaction_reaction_503=compartment_Spine*global_par_K_CamMKIIp_PP1a_p_off*x(131);

% Reaction: id = PP2B_binding_to_CamR_Ca2_AC, name = PP2B binding to CamR_Ca2_AC
	reaction_PP2B_binding_to_CamR_Ca2_AC=compartment_Spine*global_par_K_CamR_PP2B_on*x(22)*x(5);

% Reaction: id = Ca_binding_to_CBP_fast, name = Ca binding to CBP_fast
	reaction_Ca_binding_to_CBP_fast=compartment_Spine*global_par_K_CBP_fast_on*x(9)*x(3);

% Reaction: id = Ca_dissociating_from_CBP_fast_Ca, name = Ca dissociating from CBP_fast_Ca
	reaction_Ca_dissociating_from_CBP_fast_Ca=compartment_Spine*global_par_K_CBP_fast_off*x(13);

% Reaction: id = Ca_binding_to_CBP_media, name = Ca binding to CBP_media
	reaction_Ca_binding_to_CBP_media=compartment_Spine*global_par_K_CBP_media_on*x(10)*x(3);

% Reaction: id = Ca_dissociating_from_CBP_media_Ca, name = Ca dissociating from CBP_media_Ca
	reaction_Ca_dissociating_from_CBP_media_Ca=compartment_Spine*global_par_K_CBP_media_off*x(14);

% Reaction: id = Ca_binding_to_PP2Bi, name = Ca binding to PP2Bi
	reaction_Ca_binding_to_PP2Bi=compartment_Spine*global_par_K_PP2Bi_Ca_on*x(132)*x(3);

% Reaction: id = Ca_binding_to_PP2Bi_Ca1, name = Ca binding to PP2Bi_Ca1
	reaction_Ca_binding_to_PP2Bi_Ca1=compartment_Spine*global_par_K_PP2Bi_Ca_on*x(133)*x(3);

% Reaction: id = Ca_binding_to_PP2Bi_Ca2, name = Ca binding to PP2Bi_Ca2
	reaction_Ca_binding_to_PP2Bi_Ca2=compartment_Spine*global_par_K_PP2Bi_Ca_on*x(134)*x(3);

% Reaction: id = Ca_binding_to_PP2Bi_Ca3, name = Ca binding to PP2Bi_Ca3
	reaction_Ca_binding_to_PP2Bi_Ca3=compartment_Spine*global_par_K_PP2Bi_Ca_on*x(135)*x(3);

% Reaction: id = Ca_dissociating_from_PP2Bi_Ca2, name = Ca dissociating from PP2Bi_Ca2
	reaction_Ca_dissociating_from_PP2Bi_Ca2=compartment_Spine*global_par_K_PP2Bi_Ca2_Ca_off*x(134);

% Reaction: id = Ca_dissociating_from_PP2Bi_Ca3, name = Ca dissociating from PP2Bi_Ca3
	reaction_Ca_dissociating_from_PP2Bi_Ca3=compartment_Spine*global_par_K_PP2Bi_Ca3_Ca_off*x(135);

% Reaction: id = Ca_dissociating_from_PP2B, name = Ca dissociating from PP2B
	reaction_Ca_dissociating_from_PP2B=compartment_Spine*global_par_K_PP2B_Ca_off*x(5);

% Reaction: id = Ca_dissociating_from_PP2Bi_Ca1, name = Ca dissociating from PP2Bi_Ca1
	reaction_Ca_dissociating_from_PP2Bi_Ca1=compartment_Spine*global_par_K_PP2Bi_Ca1_Ca_off*x(133);

%Event: id=event_1
	event_event_1=global_par_parameter_6 == 1;

	if(event_event_1) 
		global_par_parameter_1=global_par_parameter_8;
		global_par_parameter_7=time;
	end

%Event: id=event_2
	event_event_2=(global_par_parameter_6 == 1) && (time == (global_par_parameter_7+global_par_parameter_9));

	if(event_event_2) 
		global_par_parameter_1=0;
		global_par_parameter_6=0;
		global_par_parameter_7=0;
	end

%Event: id=event_3
	event_event_3=(time == global_par_ModelValue_128) || ((time == (global_par_ModelValue_128+global_par_parameter_3/global_par_ModelValue_131)) && (time < (global_par_ModelValue_128+global_par_ModelValue_130/global_par_ModelValue_131)));

	if(event_event_3) 
		global_par_parameter_6=1;
		global_par_parameter_3=global_par_parameter_3+1;
	end

	xdot=zeros(135,1);
	
% Species:   id = CamR, name = CamR, affected by kineticLaw
	xdot(1) = (1/(compartment_Spine))*((-1.0 * reaction_reaction_0) + (-1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_3) + ( 1.0 * reaction_reaction_4) + ( 1.0 * reaction_reaction_5) + ( 1.0 * reaction_reaction_6) + ( 1.0 * reaction_reaction_7) + (-1.0 * reaction_reaction_127) + ( 1.0 * reaction_reaction_128) + (-1.0 * reaction_reaction_159) + ( 1.0 * reaction_reaction_175) + (-1.0 * reaction_reaction_191) + ( 1.0 * reaction_reaction_207) + (-1.0 * reaction_reaction_368) + ( 1.0 * reaction_reaction_369));
	
% Species:   id = CamT, name = CamT, affected by kineticLaw
	xdot(2) = (1/(compartment_Spine))*((-1.0 * reaction_reaction_64) + (-1.0 * reaction_reaction_65) + (-1.0 * reaction_reaction_66) + (-1.0 * reaction_reaction_67) + ( 1.0 * reaction_reaction_68) + ( 1.0 * reaction_reaction_69) + ( 1.0 * reaction_reaction_70) + ( 1.0 * reaction_reaction_71) + ( 1.0 * reaction_reaction_127) + (-1.0 * reaction_reaction_128));
	
% Species:   id = Ca, name = Ca, affected by kineticLaw
	xdot(3) = (1/(compartment_Spine))*((-1.0 * reaction_Ca_pump) + ( 1.0 * reaction_Ca_leak) + (-1.0 * reaction_CBPslow_Ca_on) + ( 1.0 * reaction_CBPslow_Ca_off) + (-1.0 * reaction_CBPvslow_Ca_on) + ( 1.0 * reaction_CBPvslow_Ca_off) + (-1.0 * reaction_reaction_0) + (-1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_3) + ( 1.0 * reaction_reaction_4) + ( 1.0 * reaction_reaction_5) + ( 1.0 * reaction_reaction_6) + ( 1.0 * reaction_reaction_7) + (-1.0 * reaction_reaction_8) + (-1.0 * reaction_reaction_9) + (-1.0 * reaction_reaction_10) + (-1.0 * reaction_reaction_11) + (-1.0 * reaction_reaction_12) + (-1.0 * reaction_reaction_13) + (-1.0 * reaction_reaction_14) + (-1.0 * reaction_reaction_15) + (-1.0 * reaction_reaction_16) + (-1.0 * reaction_reaction_17) + (-1.0 * reaction_reaction_18) + (-1.0 * reaction_reaction_19) + ( 1.0 * reaction_reaction_20) + ( 1.0 * reaction_reaction_21) + ( 1.0 * reaction_reaction_22) + ( 1.0 * reaction_reaction_23) + ( 1.0 * reaction_reaction_24) + ( 1.0 * reaction_reaction_25) + ( 1.0 * reaction_reaction_26) + ( 1.0 * reaction_reaction_27) + ( 1.0 * reaction_reaction_28) + ( 1.0 * reaction_reaction_29) + ( 1.0 * reaction_reaction_30) + ( 1.0 * reaction_reaction_31) + (-1.0 * reaction_reaction_32) + (-1.0 * reaction_reaction_33) + (-1.0 * reaction_reaction_34) + (-1.0 * reaction_reaction_35) + (-1.0 * reaction_reaction_36) + (-1.0 * reaction_reaction_37) + (-1.0 * reaction_reaction_38) + (-1.0 * reaction_reaction_39) + (-1.0 * reaction_reaction_40) + (-1.0 * reaction_reaction_41) + (-1.0 * reaction_reaction_42) + (-1.0 * reaction_reaction_43) + ( 1.0 * reaction_reaction_44) + ( 1.0 * reaction_reaction_45) + ( 1.0 * reaction_reaction_46) + ( 1.0 * reaction_reaction_47) + ( 1.0 * reaction_reaction_48) + ( 1.0 * reaction_reaction_49) + ( 1.0 * reaction_reaction_50) + ( 1.0 * reaction_reaction_51) + ( 1.0 * reaction_reaction_52) + ( 1.0 * reaction_reaction_53) + ( 1.0 * reaction_reaction_54) + ( 1.0 * reaction_reaction_55) + (-1.0 * reaction_reaction_56) + (-1.0 * reaction_reaction_57) + (-1.0 * reaction_reaction_58) + (-1.0 * reaction_reaction_59) + ( 1.0 * reaction_reaction_60) + ( 1.0 * reaction_reaction_61) + ( 1.0 * reaction_reaction_62) + ( 1.0 * reaction_reaction_63) + (-1.0 * reaction_reaction_64) + (-1.0 * reaction_reaction_65) + (-1.0 * reaction_reaction_66) + (-1.0 * reaction_reaction_67) + ( 1.0 * reaction_reaction_68) + ( 1.0 * reaction_reaction_69) + ( 1.0 * reaction_reaction_70) + ( 1.0 * reaction_reaction_71) + (-1.0 * reaction_reaction_72) + (-1.0 * reaction_reaction_73) + (-1.0 * reaction_reaction_74) + (-1.0 * reaction_reaction_75) + (-1.0 * reaction_reaction_76) + (-1.0 * reaction_reaction_77) + (-1.0 * reaction_reaction_78) + (-1.0 * reaction_reaction_79) + (-1.0 * reaction_reaction_80) + (-1.0 * reaction_reaction_81) + (-1.0 * reaction_reaction_82) + (-1.0 * reaction_reaction_83) + ( 1.0 * reaction_reaction_84) + ( 1.0 * reaction_reaction_85) + ( 1.0 * reaction_reaction_86) + ( 1.0 * reaction_reaction_87) + ( 1.0 * reaction_reaction_88) + ( 1.0 * reaction_reaction_89) + ( 1.0 * reaction_reaction_90) + ( 1.0 * reaction_reaction_91) + ( 1.0 * reaction_reaction_92) + ( 1.0 * reaction_reaction_93) + ( 1.0 * reaction_reaction_94) + ( 1.0 * reaction_reaction_95) + (-1.0 * reaction_reaction_96) + (-1.0 * reaction_reaction_97) + (-1.0 * reaction_reaction_98) + (-1.0 * reaction_reaction_99) + (-1.0 * reaction_reaction_100) + (-1.0 * reaction_reaction_101) + (-1.0 * reaction_reaction_102) + (-1.0 * reaction_reaction_103) + (-1.0 * reaction_reaction_104) + (-1.0 * reaction_reaction_105) + (-1.0 * reaction_reaction_106) + (-1.0 * reaction_reaction_107) + ( 1.0 * reaction_reaction_108) + ( 1.0 * reaction_reaction_109) + ( 1.0 * reaction_reaction_110) + ( 1.0 * reaction_reaction_111) + ( 1.0 * reaction_reaction_112) + ( 1.0 * reaction_reaction_113) + ( 1.0 * reaction_reaction_114) + ( 1.0 * reaction_reaction_115) + ( 1.0 * reaction_reaction_116) + ( 1.0 * reaction_reaction_117) + ( 1.0 * reaction_reaction_118) + (-1.0 * reaction_reaction_119) + (-1.0 * reaction_reaction_120) + (-1.0 * reaction_reaction_121) + (-1.0 * reaction_reaction_122) + ( 1.0 * reaction_reaction_123) + ( 1.0 * reaction_reaction_124) + ( 1.0 * reaction_reaction_125) + ( 1.0 * reaction_reaction_126) + (-1.0 * reaction_reaction_223) + (-1.0 * reaction_reaction_224) + (-1.0 * reaction_reaction_225) + (-1.0 * reaction_reaction_226) + ( 1.0 * reaction_reaction_227) + ( 1.0 * reaction_reaction_228) + ( 1.0 * reaction_reaction_229) + (-1.0 * reaction_reaction_230) + (-1.0 * reaction_reaction_231) + (-1.0 * reaction_reaction_232) + (-1.0 * reaction_reaction_233) + (-1.0 * reaction_reaction_234) + (-1.0 * reaction_reaction_235) + (-1.0 * reaction_reaction_236) + (-1.0 * reaction_reaction_237) + (-1.0 * reaction_reaction_238) + (-1.0 * reaction_reaction_239) + (-1.0 * reaction_reaction_240) + (-1.0 * reaction_reaction_241) + ( 1.0 * reaction_reaction_242) + ( 1.0 * reaction_reaction_243) + ( 1.0 * reaction_reaction_244) + ( 1.0 * reaction_reaction_245) + ( 1.0 * reaction_reaction_246) + ( 1.0 * reaction_reaction_247) + ( 1.0 * reaction_reaction_248) + ( 1.0 * reaction_reaction_249) + ( 1.0 * reaction_reaction_250) + ( 1.0 * reaction_reaction_251) + ( 1.0 * reaction_reaction_252) + ( 1.0 * reaction_reaction_253) + (-1.0 * reaction_reaction_254) + (-1.0 * reaction_reaction_255) + (-1.0 * reaction_reaction_256) + (-1.0 * reaction_reaction_257) + (-1.0 * reaction_reaction_258) + (-1.0 * reaction_reaction_259) + (-1.0 * reaction_reaction_260) + (-1.0 * reaction_reaction_261) + (-1.0 * reaction_reaction_262) + (-1.0 * reaction_reaction_263) + (-1.0 * reaction_reaction_264) + (-1.0 * reaction_reaction_265) + ( 1.0 * reaction_reaction_266) + ( 1.0 * reaction_reaction_267) + ( 1.0 * reaction_reaction_268) + ( 1.0 * reaction_reaction_269) + ( 1.0 * reaction_reaction_270) + ( 1.0 * reaction_reaction_271) + ( 1.0 * reaction_reaction_272) + ( 1.0 * reaction_reaction_273) + ( 1.0 * reaction_reaction_274) + ( 1.0 * reaction_reaction_275) + ( 1.0 * reaction_reaction_276) + ( 1.0 * reaction_reaction_277) + (-1.0 * reaction_reaction_278) + (-1.0 * reaction_reaction_279) + (-1.0 * reaction_reaction_280) + (-1.0 * reaction_reaction_281) + ( 1.0 * reaction_reaction_282) + ( 1.0 * reaction_reaction_283) + ( 1.0 * reaction_reaction_284) + ( 1.0 * reaction_reaction_285) + (-1.0 * reaction_reaction_286) + (-1.0 * reaction_reaction_287) + (-1.0 * reaction_reaction_288) + (-1.0 * reaction_reaction_289) + ( 1.0 * reaction_reaction_290) + ( 1.0 * reaction_reaction_291) + ( 1.0 * reaction_reaction_292) + ( 1.0 * reaction_reaction_293) + (-1.0 * reaction_reaction_294) + (-1.0 * reaction_reaction_295) + (-1.0 * reaction_reaction_296) + (-1.0 * reaction_reaction_297) + (-1.0 * reaction_reaction_298) + (-1.0 * reaction_reaction_299) + (-1.0 * reaction_reaction_300) + (-1.0 * reaction_reaction_301) + (-1.0 * reaction_reaction_302) + (-1.0 * reaction_reaction_303) + (-1.0 * reaction_reaction_304) + (-1.0 * reaction_reaction_305) + ( 1.0 * reaction_reaction_306) + ( 1.0 * reaction_reaction_307) + ( 1.0 * reaction_reaction_308) + ( 1.0 * reaction_reaction_309) + ( 1.0 * reaction_reaction_310) + ( 1.0 * reaction_reaction_311) + ( 1.0 * reaction_reaction_312) + ( 1.0 * reaction_reaction_313) + ( 1.0 * reaction_reaction_314) + ( 1.0 * reaction_reaction_315) + ( 1.0 * reaction_reaction_316) + ( 1.0 * reaction_reaction_317) + (-1.0 * reaction_reaction_318) + (-1.0 * reaction_reaction_319) + (-1.0 * reaction_reaction_320) + (-1.0 * reaction_reaction_321) + (-1.0 * reaction_reaction_322) + (-1.0 * reaction_reaction_323) + (-1.0 * reaction_reaction_324) + (-1.0 * reaction_reaction_325) + (-1.0 * reaction_reaction_326) + (-1.0 * reaction_reaction_327) + (-1.0 * reaction_reaction_328) + (-1.0 * reaction_reaction_329) + ( 1.0 * reaction_reaction_330) + ( 1.0 * reaction_reaction_331) + ( 1.0 * reaction_reaction_332) + ( 1.0 * reaction_reaction_333) + ( 1.0 * reaction_reaction_334) + ( 1.0 * reaction_reaction_335) + ( 1.0 * reaction_reaction_336) + ( 1.0 * reaction_reaction_337) + ( 1.0 * reaction_reaction_338) + ( 1.0 * reaction_reaction_339) + ( 1.0 * reaction_reaction_340) + ( 1.0 * reaction_reaction_341) + (-1.0 * reaction_reaction_342) + (-1.0 * reaction_reaction_343) + (-1.0 * reaction_reaction_344) + (-1.0 * reaction_reaction_345) + ( 1.0 * reaction_reaction_346) + ( 1.0 * reaction_reaction_347) + ( 1.0 * reaction_reaction_348) + ( 1.0 * reaction_reaction_349) + ( 1.0 * reaction_reaction_350) + ( 1.0 * reaction_reaction_351) + (-1.0 * reaction_reaction_504) + (-1.0 * reaction_reaction_505) + (-1.0 * reaction_reaction_506) + (-1.0 * reaction_reaction_507) + ( 1.0 * reaction_reaction_508) + ( 1.0 * reaction_reaction_567) + ( 1.0 * reaction_reaction_509) + ( 1.0 * reaction_reaction_510) + (-1.0 * reaction_reaction_511) + (-1.0 * reaction_reaction_512) + (-1.0 * reaction_reaction_513) + (-1.0 * reaction_reaction_514) + (-1.0 * reaction_reaction_515) + (-1.0 * reaction_reaction_516) + (-1.0 * reaction_reaction_517) + (-1.0 * reaction_reaction_518) + (-1.0 * reaction_reaction_519) + (-1.0 * reaction_reaction_520) + (-1.0 * reaction_reaction_521) + (-1.0 * reaction_reaction_522) + ( 1.0 * reaction_reaction_523) + ( 1.0 * reaction_reaction_524) + ( 1.0 * reaction_reaction_525) + ( 1.0 * reaction_reaction_526) + ( 1.0 * reaction_reaction_527) + ( 1.0 * reaction_reaction_528) + ( 1.0 * reaction_reaction_529) + ( 1.0 * reaction_reaction_530) + ( 1.0 * reaction_reaction_531) + ( 1.0 * reaction_reaction_532) + ( 1.0 * reaction_reaction_533) + ( 1.0 * reaction_reaction_534) + (-1.0 * reaction_reaction_535) + (-1.0 * reaction_reaction_536) + (-1.0 * reaction_reaction_537) + (-1.0 * reaction_reaction_538) + (-1.0 * reaction_reaction_539) + (-1.0 * reaction_reaction_540) + (-1.0 * reaction_reaction_541) + (-1.0 * reaction_reaction_542) + (-1.0 * reaction_reaction_543) + (-1.0 * reaction_reaction_544) + (-1.0 * reaction_reaction_545) + (-1.0 * reaction_reaction_546) + ( 1.0 * reaction_reaction_547) + ( 1.0 * reaction_reaction_548) + ( 1.0 * reaction_reaction_549) + ( 1.0 * reaction_reaction_550) + ( 1.0 * reaction_reaction_551) + ( 1.0 * reaction_reaction_552) + ( 1.0 * reaction_reaction_553) + ( 1.0 * reaction_reaction_554) + ( 1.0 * reaction_reaction_555) + ( 1.0 * reaction_reaction_556) + ( 1.0 * reaction_reaction_557) + ( 1.0 * reaction_reaction_558) + (-1.0 * reaction_reaction_559) + (-1.0 * reaction_reaction_560) + (-1.0 * reaction_reaction_561) + (-1.0 * reaction_reaction_562) + ( 1.0 * reaction_reaction_563) + ( 1.0 * reaction_reaction_564) + ( 1.0 * reaction_reaction_565) + ( 1.0 * reaction_reaction_566) + (-1.0 * reaction_Ca_binding_to_CBP_fast) + ( 1.0 * reaction_Ca_dissociating_from_CBP_fast_Ca) + (-1.0 * reaction_Ca_binding_to_CBP_media) + ( 1.0 * reaction_Ca_dissociating_from_CBP_media_Ca) + (-1.0 * reaction_Ca_binding_to_PP2Bi) + (-1.0 * reaction_Ca_binding_to_PP2Bi_Ca1) + (-1.0 * reaction_Ca_binding_to_PP2Bi_Ca2) + (-1.0 * reaction_Ca_binding_to_PP2Bi_Ca3) + ( 1.0 * reaction_Ca_dissociating_from_PP2Bi_Ca2) + ( 1.0 * reaction_Ca_dissociating_from_PP2Bi_Ca3) + ( 1.0 * reaction_Ca_dissociating_from_PP2B) + ( 1.0 * reaction_Ca_dissociating_from_PP2Bi_Ca1) + ( 1.0 * reaction_reaction_197));
	
% Species:   id = CaMKII, name = CaMKII, affected by kineticLaw
	xdot(4) = (1/(compartment_Spine))*((-1.0 * reaction_reaction_159) + (-1.0 * reaction_reaction_160) + (-1.0 * reaction_reaction_161) + (-1.0 * reaction_reaction_162) + (-1.0 * reaction_reaction_163) + (-1.0 * reaction_reaction_164) + (-1.0 * reaction_reaction_165) + (-1.0 * reaction_reaction_166) + (-1.0 * reaction_reaction_167) + (-1.0 * reaction_reaction_168) + (-1.0 * reaction_reaction_169) + (-1.0 * reaction_reaction_170) + (-1.0 * reaction_reaction_171) + (-1.0 * reaction_reaction_172) + (-1.0 * reaction_reaction_173) + (-1.0 * reaction_reaction_174) + ( 1.0 * reaction_reaction_175) + ( 1.0 * reaction_reaction_176) + ( 1.0 * reaction_reaction_177) + ( 1.0 * reaction_reaction_178) + ( 1.0 * reaction_reaction_179) + ( 1.0 * reaction_reaction_180) + ( 1.0 * reaction_reaction_181) + ( 1.0 * reaction_reaction_182) + ( 1.0 * reaction_reaction_183) + ( 1.0 * reaction_reaction_184) + ( 1.0 * reaction_reaction_185) + ( 1.0 * reaction_reaction_186) + ( 1.0 * reaction_reaction_187) + ( 1.0 * reaction_reaction_188) + ( 1.0 * reaction_reaction_189) + ( 1.0 * reaction_reaction_190) + ( 1.0 * reaction_reaction_455));
	
% Species:   id = PP2B, name = PP2B, affected by kineticLaw
	xdot(5) = (1/(compartment_Spine))*((-1.0 * reaction_reaction_191) + (-1.0 * reaction_reaction_192) + (-1.0 * reaction_reaction_193) + (-1.0 * reaction_reaction_194) + (-1.0 * reaction_reaction_195) + (-1.0 * reaction_reaction_196) + (-1.0 * reaction_reaction_198) + (-1.0 * reaction_reaction_199) + (-1.0 * reaction_reaction_200) + (-1.0 * reaction_reaction_201) + (-1.0 * reaction_reaction_202) + (-1.0 * reaction_reaction_203) + (-1.0 * reaction_reaction_204) + (-1.0 * reaction_reaction_205) + (-1.0 * reaction_reaction_206) + ( 1.0 * reaction_reaction_207) + ( 1.0 * reaction_reaction_208) + ( 1.0 * reaction_reaction_209) + ( 1.0 * reaction_reaction_210) + ( 1.0 * reaction_reaction_211) + ( 1.0 * reaction_reaction_212) + ( 1.0 * reaction_reaction_213) + ( 1.0 * reaction_reaction_214) + ( 1.0 * reaction_reaction_215) + ( 1.0 * reaction_reaction_216) + ( 1.0 * reaction_reaction_217) + ( 1.0 * reaction_reaction_218) + ( 1.0 * reaction_reaction_219) + ( 1.0 * reaction_reaction_220) + ( 1.0 * reaction_reaction_221) + ( 1.0 * reaction_reaction_222) + (-1.0 * reaction_PP2B_binding_to_CamR_Ca2_AC) + ( 1.0 * reaction_Ca_binding_to_PP2Bi_Ca3) + (-1.0 * reaction_Ca_dissociating_from_PP2B));
	
% Species:   id = D, name = D, affected by kineticLaw
	xdot(6) = (1/(compartment_Spine))*((-1.0 * reaction_reaction_400) + ( 1.0 * reaction_reaction_401) + ( 1.0 * reaction_reaction_405) + ( 1.0 * reaction_reaction_408) + ( 1.0 * reaction_reaction_411) + ( 1.0 * reaction_reaction_414) + ( 1.0 * reaction_reaction_417) + ( 1.0 * reaction_reaction_420) + ( 1.0 * reaction_reaction_423) + ( 1.0 * reaction_reaction_426) + ( 1.0 * reaction_reaction_429) + ( 1.0 * reaction_reaction_432) + ( 1.0 * reaction_reaction_435) + ( 1.0 * reaction_reaction_438) + ( 1.0 * reaction_reaction_441) + ( 1.0 * reaction_reaction_444) + ( 1.0 * reaction_reaction_447) + ( 1.0 * reaction_reaction_450));
	
% Species:   id = PKA, name = PKA, affected by kineticLaw
	xdot(7) = (1/(compartment_Spine))*((-1.0 * reaction_reaction_400) + ( 1.0 * reaction_reaction_401) + ( 1.0 * reaction_reaction_402));
	
% Species:   id = PP1a, name = PP1a, affected by kineticLaw
	xdot(8) = (1/(compartment_Spine))*((-1.0 * reaction_reaction_451) + ( 1.0 * reaction_reaction_452) + (-1.0 * reaction_reaction_453) + ( 1.0 * reaction_reaction_454) + ( 1.0 * reaction_reaction_455) + (-1.0 * reaction_reaction_456) + ( 1.0 * reaction_reaction_457) + ( 1.0 * reaction_reaction_458) + (-1.0 * reaction_reaction_459) + ( 1.0 * reaction_reaction_460) + ( 1.0 * reaction_reaction_461) + (-1.0 * reaction_reaction_462) + ( 1.0 * reaction_reaction_463) + ( 1.0 * reaction_reaction_464) + (-1.0 * reaction_reaction_465) + ( 1.0 * reaction_reaction_466) + ( 1.0 * reaction_reaction_467) + (-1.0 * reaction_reaction_468) + ( 1.0 * reaction_reaction_469) + ( 1.0 * reaction_reaction_470) + (-1.0 * reaction_reaction_471) + ( 1.0 * reaction_reaction_472) + ( 1.0 * reaction_reaction_473) + (-1.0 * reaction_reaction_474) + ( 1.0 * reaction_reaction_475) + ( 1.0 * reaction_reaction_476) + (-1.0 * reaction_reaction_477) + ( 1.0 * reaction_reaction_478) + ( 1.0 * reaction_reaction_479) + (-1.0 * reaction_reaction_480) + ( 1.0 * reaction_reaction_481) + ( 1.0 * reaction_reaction_482) + (-1.0 * reaction_reaction_483) + ( 1.0 * reaction_reaction_484) + ( 1.0 * reaction_reaction_485) + (-1.0 * reaction_reaction_486) + ( 1.0 * reaction_reaction_487) + ( 1.0 * reaction_reaction_488) + (-1.0 * reaction_reaction_489) + ( 1.0 * reaction_reaction_490) + ( 1.0 * reaction_reaction_491) + (-1.0 * reaction_reaction_492) + ( 1.0 * reaction_reaction_493) + ( 1.0 * reaction_reaction_494) + (-1.0 * reaction_reaction_495) + ( 1.0 * reaction_reaction_496) + ( 1.0 * reaction_reaction_497) + (-1.0 * reaction_reaction_498) + ( 1.0 * reaction_reaction_499) + ( 1.0 * reaction_reaction_500) + (-1.0 * reaction_reaction_501) + ( 1.0 * reaction_reaction_502) + ( 1.0 * reaction_reaction_503));
	
% Species:   id = CBPfast, name = CBP_fast, affected by kineticLaw
	xdot(9) = (1/(compartment_Spine))*((-1.0 * reaction_Ca_binding_to_CBP_fast) + ( 1.0 * reaction_Ca_dissociating_from_CBP_fast_Ca));
	
% Species:   id = CBPmedia, name = CBP_media, affected by kineticLaw
	xdot(10) = (1/(compartment_Spine))*((-1.0 * reaction_Ca_binding_to_CBP_media) + ( 1.0 * reaction_Ca_dissociating_from_CBP_media_Ca));
	
% Species:   id = CBPslow, name = CBP_slow, affected by kineticLaw
	xdot(11) = (1/(compartment_Spine))*((-1.0 * reaction_CBPslow_Ca_on) + ( 1.0 * reaction_CBPslow_Ca_off));
	
% Species:   id = CBPvslow, name = CBP_vslow, affected by kineticLaw
	xdot(12) = (1/(compartment_Spine))*((-1.0 * reaction_CBPvslow_Ca_on) + ( 1.0 * reaction_CBPvslow_Ca_off));
	
% Species:   id = CBPfastCa, name = CBP_fast_Ca, affected by kineticLaw
	xdot(13) = (1/(compartment_Spine))*(( 1.0 * reaction_Ca_binding_to_CBP_fast) + (-1.0 * reaction_Ca_dissociating_from_CBP_fast_Ca));
	
% Species:   id = CBPmediaCa, name = CBP_media_Ca, affected by kineticLaw
	xdot(14) = (1/(compartment_Spine))*(( 1.0 * reaction_Ca_binding_to_CBP_media) + (-1.0 * reaction_Ca_dissociating_from_CBP_media_Ca));
	
% Species:   id = CBPslowCa, name = CBP_slow_Ca, affected by kineticLaw
	xdot(15) = (1/(compartment_Spine))*(( 1.0 * reaction_CBPslow_Ca_on) + (-1.0 * reaction_CBPslow_Ca_off));
	
% Species:   id = CBPvslowCa, name = CBP_vslow_Ca, affected by kineticLaw
	xdot(16) = (1/(compartment_Spine))*(( 1.0 * reaction_CBPvslow_Ca_on) + (-1.0 * reaction_CBPvslow_Ca_off));
	
% Species:   id = CamR_Ca1_A, name = CamR_Ca1_A, affected by kineticLaw
	xdot(17) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_0) + (-1.0 * reaction_reaction_4) + (-1.0 * reaction_reaction_8) + (-1.0 * reaction_reaction_9) + (-1.0 * reaction_reaction_10) + ( 1.0 * reaction_reaction_20) + ( 1.0 * reaction_reaction_21) + ( 1.0 * reaction_reaction_22) + (-1.0 * reaction_reaction_129) + ( 1.0 * reaction_reaction_133) + (-1.0 * reaction_reaction_160) + ( 1.0 * reaction_reaction_176) + (-1.0 * reaction_reaction_192) + ( 1.0 * reaction_reaction_208) + (-1.0 * reaction_reaction_370) + ( 1.0 * reaction_reaction_371));
	
% Species:   id = CamR_Ca1_B, name = CamR_Ca1_B, affected by kineticLaw
	xdot(18) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_5) + (-1.0 * reaction_reaction_11) + (-1.0 * reaction_reaction_12) + (-1.0 * reaction_reaction_13) + ( 1.0 * reaction_reaction_23) + ( 1.0 * reaction_reaction_24) + ( 1.0 * reaction_reaction_25) + (-1.0 * reaction_reaction_130) + ( 1.0 * reaction_reaction_134) + (-1.0 * reaction_reaction_161) + ( 1.0 * reaction_reaction_177) + (-1.0 * reaction_reaction_193) + ( 1.0 * reaction_reaction_209) + (-1.0 * reaction_reaction_372) + ( 1.0 * reaction_reaction_373));
	
% Species:   id = CamR_Ca1_C, name = CamR_Ca1_C, affected by kineticLaw
	xdot(19) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_6) + (-1.0 * reaction_reaction_14) + (-1.0 * reaction_reaction_15) + (-1.0 * reaction_reaction_16) + ( 1.0 * reaction_reaction_26) + ( 1.0 * reaction_reaction_27) + ( 1.0 * reaction_reaction_28) + (-1.0 * reaction_reaction_131) + ( 1.0 * reaction_reaction_135) + (-1.0 * reaction_reaction_162) + ( 1.0 * reaction_reaction_178) + (-1.0 * reaction_reaction_194) + ( 1.0 * reaction_reaction_210) + (-1.0 * reaction_reaction_374) + ( 1.0 * reaction_reaction_375));
	
% Species:   id = CamR_Ca1_D, name = CamR_Ca1_D, affected by kineticLaw
	xdot(20) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_7) + (-1.0 * reaction_reaction_17) + (-1.0 * reaction_reaction_18) + (-1.0 * reaction_reaction_19) + ( 1.0 * reaction_reaction_29) + ( 1.0 * reaction_reaction_30) + ( 1.0 * reaction_reaction_31) + (-1.0 * reaction_reaction_132) + ( 1.0 * reaction_reaction_136) + (-1.0 * reaction_reaction_163) + ( 1.0 * reaction_reaction_179) + (-1.0 * reaction_reaction_195) + ( 1.0 * reaction_reaction_211) + (-1.0 * reaction_reaction_376) + ( 1.0 * reaction_reaction_377));
	
% Species:   id = CamR_Ca2_AB, name = CamR_Ca2_AB, affected by kineticLaw
	xdot(21) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_8) + ( 1.0 * reaction_reaction_11) + (-1.0 * reaction_reaction_20) + (-1.0 * reaction_reaction_23) + (-1.0 * reaction_reaction_32) + (-1.0 * reaction_reaction_33) + ( 1.0 * reaction_reaction_46) + ( 1.0 * reaction_reaction_49) + (-1.0 * reaction_reaction_137) + ( 1.0 * reaction_reaction_143) + (-1.0 * reaction_reaction_164) + ( 1.0 * reaction_reaction_180) + (-1.0 * reaction_reaction_196) + ( 1.0 * reaction_reaction_212) + (-1.0 * reaction_reaction_378) + ( 1.0 * reaction_reaction_379));
	
% Species:   id = CamR_Ca2_AC, name = CamR_Ca2_AC, affected by kineticLaw
	xdot(22) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_9) + ( 1.0 * reaction_reaction_14) + (-1.0 * reaction_reaction_21) + (-1.0 * reaction_reaction_26) + (-1.0 * reaction_reaction_34) + (-1.0 * reaction_reaction_35) + ( 1.0 * reaction_reaction_45) + ( 1.0 * reaction_reaction_52) + (-1.0 * reaction_reaction_138) + ( 1.0 * reaction_reaction_144) + (-1.0 * reaction_reaction_165) + ( 1.0 * reaction_reaction_181) + ( 1.0 * reaction_reaction_213) + (-1.0 * reaction_reaction_380) + ( 1.0 * reaction_reaction_381) + (-1.0 * reaction_PP2B_binding_to_CamR_Ca2_AC));
	
% Species:   id = CamR_Ca2_AD, name = CamR_Ca2_AD, affected by kineticLaw
	xdot(23) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_10) + ( 1.0 * reaction_reaction_17) + (-1.0 * reaction_reaction_22) + (-1.0 * reaction_reaction_29) + (-1.0 * reaction_reaction_36) + (-1.0 * reaction_reaction_37) + ( 1.0 * reaction_reaction_48) + ( 1.0 * reaction_reaction_51) + (-1.0 * reaction_reaction_139) + ( 1.0 * reaction_reaction_145) + (-1.0 * reaction_reaction_166) + ( 1.0 * reaction_reaction_182) + (-1.0 * reaction_reaction_198) + ( 1.0 * reaction_reaction_214) + (-1.0 * reaction_reaction_382) + ( 1.0 * reaction_reaction_383));
	
% Species:   id = CamR_Ca2_BC, name = CamR_Ca2_BC, affected by kineticLaw
	xdot(24) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_12) + ( 1.0 * reaction_reaction_15) + (-1.0 * reaction_reaction_24) + (-1.0 * reaction_reaction_27) + (-1.0 * reaction_reaction_38) + (-1.0 * reaction_reaction_39) + ( 1.0 * reaction_reaction_44) + ( 1.0 * reaction_reaction_55) + (-1.0 * reaction_reaction_140) + ( 1.0 * reaction_reaction_146) + (-1.0 * reaction_reaction_167) + ( 1.0 * reaction_reaction_183) + (-1.0 * reaction_reaction_199) + ( 1.0 * reaction_reaction_215) + (-1.0 * reaction_reaction_384) + ( 1.0 * reaction_reaction_385));
	
% Species:   id = CamR_Ca2_BD, name = CamR_Ca2_BD, affected by kineticLaw
	xdot(25) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_13) + ( 1.0 * reaction_reaction_18) + (-1.0 * reaction_reaction_25) + (-1.0 * reaction_reaction_30) + (-1.0 * reaction_reaction_40) + (-1.0 * reaction_reaction_41) + ( 1.0 * reaction_reaction_47) + ( 1.0 * reaction_reaction_54) + (-1.0 * reaction_reaction_141) + ( 1.0 * reaction_reaction_147) + (-1.0 * reaction_reaction_168) + ( 1.0 * reaction_reaction_184) + (-1.0 * reaction_reaction_200) + ( 1.0 * reaction_reaction_216) + (-1.0 * reaction_reaction_386) + ( 1.0 * reaction_reaction_387));
	
% Species:   id = CamR_Ca2_CD, name = CamR_Ca2_CD, affected by kineticLaw
	xdot(26) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_16) + ( 1.0 * reaction_reaction_19) + (-1.0 * reaction_reaction_28) + (-1.0 * reaction_reaction_31) + (-1.0 * reaction_reaction_42) + (-1.0 * reaction_reaction_43) + ( 1.0 * reaction_reaction_50) + ( 1.0 * reaction_reaction_53) + (-1.0 * reaction_reaction_142) + ( 1.0 * reaction_reaction_148) + (-1.0 * reaction_reaction_169) + ( 1.0 * reaction_reaction_185) + (-1.0 * reaction_reaction_201) + ( 1.0 * reaction_reaction_217) + (-1.0 * reaction_reaction_388) + ( 1.0 * reaction_reaction_389));
	
% Species:   id = CamR_Ca3_ABC, name = CamR_Ca3_ABC, affected by kineticLaw
	xdot(27) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_32) + ( 1.0 * reaction_reaction_34) + ( 1.0 * reaction_reaction_38) + (-1.0 * reaction_reaction_44) + (-1.0 * reaction_reaction_45) + (-1.0 * reaction_reaction_46) + (-1.0 * reaction_reaction_56) + ( 1.0 * reaction_reaction_60) + (-1.0 * reaction_reaction_149) + ( 1.0 * reaction_reaction_153) + (-1.0 * reaction_reaction_170) + ( 1.0 * reaction_reaction_186) + (-1.0 * reaction_reaction_202) + ( 1.0 * reaction_reaction_218) + (-1.0 * reaction_reaction_390) + ( 1.0 * reaction_reaction_391));
	
% Species:   id = CamR_Ca3_ABD, name = CamR_Ca3_ABD, affected by kineticLaw
	xdot(28) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_33) + ( 1.0 * reaction_reaction_36) + ( 1.0 * reaction_reaction_40) + (-1.0 * reaction_reaction_47) + (-1.0 * reaction_reaction_48) + (-1.0 * reaction_reaction_49) + (-1.0 * reaction_reaction_57) + ( 1.0 * reaction_reaction_61) + (-1.0 * reaction_reaction_150) + ( 1.0 * reaction_reaction_154) + (-1.0 * reaction_reaction_171) + ( 1.0 * reaction_reaction_187) + (-1.0 * reaction_reaction_203) + ( 1.0 * reaction_reaction_219) + (-1.0 * reaction_reaction_392) + ( 1.0 * reaction_reaction_393));
	
% Species:   id = CamR_Ca3_ACD, name = CamR_Ca3_ACD, affected by kineticLaw
	xdot(29) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_35) + ( 1.0 * reaction_reaction_37) + ( 1.0 * reaction_reaction_42) + (-1.0 * reaction_reaction_50) + (-1.0 * reaction_reaction_51) + (-1.0 * reaction_reaction_52) + (-1.0 * reaction_reaction_58) + ( 1.0 * reaction_reaction_62) + (-1.0 * reaction_reaction_151) + ( 1.0 * reaction_reaction_155) + (-1.0 * reaction_reaction_172) + ( 1.0 * reaction_reaction_188) + (-1.0 * reaction_reaction_204) + ( 1.0 * reaction_reaction_220) + (-1.0 * reaction_reaction_394) + ( 1.0 * reaction_reaction_395));
	
% Species:   id = CamR_Ca3_BCD, name = CamR_Ca3_BCD, affected by kineticLaw
	xdot(30) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_39) + ( 1.0 * reaction_reaction_41) + ( 1.0 * reaction_reaction_43) + (-1.0 * reaction_reaction_53) + (-1.0 * reaction_reaction_54) + (-1.0 * reaction_reaction_55) + (-1.0 * reaction_reaction_59) + ( 1.0 * reaction_reaction_63) + (-1.0 * reaction_reaction_152) + ( 1.0 * reaction_reaction_156) + (-1.0 * reaction_reaction_173) + ( 1.0 * reaction_reaction_189) + (-1.0 * reaction_reaction_205) + ( 1.0 * reaction_reaction_221) + (-1.0 * reaction_reaction_396) + ( 1.0 * reaction_reaction_397));
	
% Species:   id = CamR_Ca4_ABCD, name = CamR_Ca4_ABCD, affected by kineticLaw
	xdot(31) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_56) + ( 1.0 * reaction_reaction_57) + ( 1.0 * reaction_reaction_58) + ( 1.0 * reaction_reaction_59) + (-1.0 * reaction_reaction_60) + (-1.0 * reaction_reaction_61) + (-1.0 * reaction_reaction_62) + (-1.0 * reaction_reaction_63) + (-1.0 * reaction_reaction_157) + ( 1.0 * reaction_reaction_158) + (-1.0 * reaction_reaction_174) + ( 1.0 * reaction_reaction_190) + (-1.0 * reaction_reaction_206) + ( 1.0 * reaction_reaction_222) + (-1.0 * reaction_reaction_398) + ( 1.0 * reaction_reaction_399));
	
% Species:   id = CamT_Ca1_A, name = CamT_Ca1_A, affected by kineticLaw
	xdot(32) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_64) + (-1.0 * reaction_reaction_68) + (-1.0 * reaction_reaction_72) + (-1.0 * reaction_reaction_73) + (-1.0 * reaction_reaction_74) + ( 1.0 * reaction_reaction_85) + ( 1.0 * reaction_reaction_87) + ( 1.0 * reaction_reaction_89) + ( 1.0 * reaction_reaction_129) + (-1.0 * reaction_reaction_133));
	
% Species:   id = CamT_Ca1_B, name = CamT_Ca1_B, affected by kineticLaw
	xdot(33) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_65) + (-1.0 * reaction_reaction_69) + (-1.0 * reaction_reaction_75) + (-1.0 * reaction_reaction_76) + (-1.0 * reaction_reaction_77) + ( 1.0 * reaction_reaction_84) + ( 1.0 * reaction_reaction_91) + ( 1.0 * reaction_reaction_93) + ( 1.0 * reaction_reaction_130) + (-1.0 * reaction_reaction_134));
	
% Species:   id = CamT_Ca1_C, name = CamT_Ca1_C, affected by kineticLaw
	xdot(34) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_66) + (-1.0 * reaction_reaction_70) + (-1.0 * reaction_reaction_78) + (-1.0 * reaction_reaction_79) + (-1.0 * reaction_reaction_80) + ( 1.0 * reaction_reaction_86) + ( 1.0 * reaction_reaction_90) + ( 1.0 * reaction_reaction_95) + ( 1.0 * reaction_reaction_131) + (-1.0 * reaction_reaction_135));
	
% Species:   id = CamT_Ca1_D, name = CamT_Ca1_D, affected by kineticLaw
	xdot(35) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_67) + (-1.0 * reaction_reaction_71) + (-1.0 * reaction_reaction_81) + (-1.0 * reaction_reaction_82) + (-1.0 * reaction_reaction_83) + ( 1.0 * reaction_reaction_88) + ( 1.0 * reaction_reaction_92) + ( 1.0 * reaction_reaction_94) + ( 1.0 * reaction_reaction_132) + (-1.0 * reaction_reaction_136));
	
% Species:   id = CamT_Ca2_AB, name = CamT_Ca2_AB, affected by kineticLaw
	xdot(36) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_72) + ( 1.0 * reaction_reaction_75) + (-1.0 * reaction_reaction_84) + (-1.0 * reaction_reaction_85) + (-1.0 * reaction_reaction_96) + (-1.0 * reaction_reaction_97) + ( 1.0 * reaction_reaction_110) + ( 1.0 * reaction_reaction_137) + (-1.0 * reaction_reaction_143) + ( 1.0 * reaction_reaction_351));
	
% Species:   id = CamT_Ca2_AC, name = CamT_Ca2_AC, affected by kineticLaw
	xdot(37) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_73) + ( 1.0 * reaction_reaction_78) + (-1.0 * reaction_reaction_86) + (-1.0 * reaction_reaction_87) + (-1.0 * reaction_reaction_98) + (-1.0 * reaction_reaction_99) + ( 1.0 * reaction_reaction_108) + ( 1.0 * reaction_reaction_113) + ( 1.0 * reaction_reaction_138) + (-1.0 * reaction_reaction_144));
	
% Species:   id = CamT_Ca2_AD, name = CamT_Ca2_AD, affected by kineticLaw
	xdot(38) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_74) + ( 1.0 * reaction_reaction_81) + (-1.0 * reaction_reaction_88) + (-1.0 * reaction_reaction_89) + (-1.0 * reaction_reaction_100) + (-1.0 * reaction_reaction_101) + ( 1.0 * reaction_reaction_111) + ( 1.0 * reaction_reaction_114) + ( 1.0 * reaction_reaction_139) + (-1.0 * reaction_reaction_145));
	
% Species:   id = CamT_Ca2_BC, name = CamT_Ca2_BC, affected by kineticLaw
	xdot(39) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_76) + ( 1.0 * reaction_reaction_79) + (-1.0 * reaction_reaction_90) + (-1.0 * reaction_reaction_91) + (-1.0 * reaction_reaction_102) + (-1.0 * reaction_reaction_103) + ( 1.0 * reaction_reaction_109) + ( 1.0 * reaction_reaction_116) + ( 1.0 * reaction_reaction_140) + (-1.0 * reaction_reaction_146));
	
% Species:   id = CamT_Ca2_BD, name = CamT_Ca2_BD, affected by kineticLaw
	xdot(40) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_77) + ( 1.0 * reaction_reaction_82) + (-1.0 * reaction_reaction_92) + (-1.0 * reaction_reaction_93) + (-1.0 * reaction_reaction_104) + (-1.0 * reaction_reaction_105) + ( 1.0 * reaction_reaction_112) + ( 1.0 * reaction_reaction_117) + ( 1.0 * reaction_reaction_141) + (-1.0 * reaction_reaction_147));
	
% Species:   id = CamT_Ca2_CD, name = CamT_Ca2_CD, affected by kineticLaw
	xdot(41) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_80) + ( 1.0 * reaction_reaction_83) + (-1.0 * reaction_reaction_94) + (-1.0 * reaction_reaction_95) + (-1.0 * reaction_reaction_106) + (-1.0 * reaction_reaction_107) + ( 1.0 * reaction_reaction_115) + ( 1.0 * reaction_reaction_118) + ( 1.0 * reaction_reaction_142) + (-1.0 * reaction_reaction_148));
	
% Species:   id = CamT_Ca3_ABC, name = CamT_Ca3_ABC, affected by kineticLaw
	xdot(42) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_96) + ( 1.0 * reaction_reaction_98) + ( 1.0 * reaction_reaction_102) + (-1.0 * reaction_reaction_108) + (-1.0 * reaction_reaction_109) + (-1.0 * reaction_reaction_119) + ( 1.0 * reaction_reaction_123) + ( 1.0 * reaction_reaction_149) + (-1.0 * reaction_reaction_153) + (-1.0 * reaction_reaction_351));
	
% Species:   id = CamT_Ca3_ABD, name = CamT_Ca3_ABD, affected by kineticLaw
	xdot(43) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_97) + ( 1.0 * reaction_reaction_100) + ( 1.0 * reaction_reaction_104) + (-1.0 * reaction_reaction_110) + (-1.0 * reaction_reaction_111) + (-1.0 * reaction_reaction_112) + (-1.0 * reaction_reaction_120) + ( 1.0 * reaction_reaction_124) + ( 1.0 * reaction_reaction_150) + (-1.0 * reaction_reaction_154));
	
% Species:   id = CamT_Ca3_ACD, name = CamT_Ca3_ACD, affected by kineticLaw
	xdot(44) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_99) + ( 1.0 * reaction_reaction_101) + ( 1.0 * reaction_reaction_106) + (-1.0 * reaction_reaction_113) + (-1.0 * reaction_reaction_114) + (-1.0 * reaction_reaction_115) + (-1.0 * reaction_reaction_121) + ( 1.0 * reaction_reaction_125) + ( 1.0 * reaction_reaction_151) + (-1.0 * reaction_reaction_155));
	
% Species:   id = CamT_Ca3_BCD, name = CamT_Ca3_BCD, affected by kineticLaw
	xdot(45) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_103) + ( 1.0 * reaction_reaction_105) + ( 1.0 * reaction_reaction_107) + (-1.0 * reaction_reaction_116) + (-1.0 * reaction_reaction_117) + (-1.0 * reaction_reaction_118) + (-1.0 * reaction_reaction_122) + ( 1.0 * reaction_reaction_126) + ( 1.0 * reaction_reaction_152) + (-1.0 * reaction_reaction_156));
	
% Species:   id = CamT_Ca4_ABCD, name = CamT_Ca4_ABCD, affected by kineticLaw
	xdot(46) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_119) + ( 1.0 * reaction_reaction_120) + ( 1.0 * reaction_reaction_121) + ( 1.0 * reaction_reaction_122) + (-1.0 * reaction_reaction_123) + (-1.0 * reaction_reaction_124) + (-1.0 * reaction_reaction_125) + (-1.0 * reaction_reaction_126) + ( 1.0 * reaction_reaction_157) + (-1.0 * reaction_reaction_158));
	
% Species:   id = CamR_CaMKII, name = CamR_CaMKII, affected by kineticLaw
	xdot(47) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_159) + (-1.0 * reaction_reaction_175) + (-1.0 * reaction_reaction_223) + (-1.0 * reaction_reaction_224) + (-1.0 * reaction_reaction_225) + (-1.0 * reaction_reaction_226) + ( 1.0 * reaction_reaction_227) + ( 1.0 * reaction_reaction_228) + ( 1.0 * reaction_reaction_229) + ( 1.0 * reaction_reaction_350) + (-1.0 * reaction_reaction_352) + ( 1.0 * reaction_reaction_458));
	
% Species:   id = CamR_Ca1_A_CaMKII, name = CamR_Ca1_A_CaMKII, affected by kineticLaw
	xdot(48) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_160) + (-1.0 * reaction_reaction_176) + ( 1.0 * reaction_reaction_223) + (-1.0 * reaction_reaction_227) + (-1.0 * reaction_reaction_230) + (-1.0 * reaction_reaction_231) + (-1.0 * reaction_reaction_232) + ( 1.0 * reaction_reaction_243) + ( 1.0 * reaction_reaction_245) + ( 1.0 * reaction_reaction_247) + (-1.0 * reaction_reaction_353) + ( 1.0 * reaction_reaction_461));
	
% Species:   id = CamR_Ca1_B_CaMKII, name = CamR_Ca1_B_CaMKII, affected by kineticLaw
	xdot(49) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_161) + (-1.0 * reaction_reaction_177) + ( 1.0 * reaction_reaction_224) + (-1.0 * reaction_reaction_233) + (-1.0 * reaction_reaction_234) + (-1.0 * reaction_reaction_235) + ( 1.0 * reaction_reaction_242) + ( 1.0 * reaction_reaction_249) + ( 1.0 * reaction_reaction_251) + (-1.0 * reaction_reaction_350) + (-1.0 * reaction_reaction_354) + ( 1.0 * reaction_reaction_464));
	
% Species:   id = CamR_Ca1_C_CaMKII, name = CamR_Ca1_C_CaMKII, affected by kineticLaw
	xdot(50) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_162) + (-1.0 * reaction_reaction_178) + ( 1.0 * reaction_reaction_225) + (-1.0 * reaction_reaction_228) + (-1.0 * reaction_reaction_236) + (-1.0 * reaction_reaction_237) + (-1.0 * reaction_reaction_238) + ( 1.0 * reaction_reaction_244) + ( 1.0 * reaction_reaction_248) + ( 1.0 * reaction_reaction_253) + (-1.0 * reaction_reaction_355) + ( 1.0 * reaction_reaction_467));
	
% Species:   id = CamR_Ca1_D_CaMKII, name = CamR_Ca1_D_CaMKII, affected by kineticLaw
	xdot(51) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_163) + (-1.0 * reaction_reaction_179) + ( 1.0 * reaction_reaction_226) + (-1.0 * reaction_reaction_229) + (-1.0 * reaction_reaction_239) + (-1.0 * reaction_reaction_240) + (-1.0 * reaction_reaction_241) + ( 1.0 * reaction_reaction_246) + ( 1.0 * reaction_reaction_250) + ( 1.0 * reaction_reaction_252) + (-1.0 * reaction_reaction_356) + ( 1.0 * reaction_reaction_470));
	
% Species:   id = CamR_Ca2_AB_CaMKII, name = CamR_Ca2_AB_CaMKII, affected by kineticLaw
	xdot(52) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_164) + (-1.0 * reaction_reaction_180) + ( 1.0 * reaction_reaction_230) + ( 1.0 * reaction_reaction_233) + (-1.0 * reaction_reaction_242) + (-1.0 * reaction_reaction_243) + (-1.0 * reaction_reaction_254) + (-1.0 * reaction_reaction_255) + ( 1.0 * reaction_reaction_266) + ( 1.0 * reaction_reaction_269) + (-1.0 * reaction_reaction_357) + ( 1.0 * reaction_reaction_473));
	
% Species:   id = CamR_Ca2_AC_CaMKII, name = CamR_Ca2_AC_CaMKII, affected by kineticLaw
	xdot(53) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_165) + (-1.0 * reaction_reaction_181) + ( 1.0 * reaction_reaction_231) + ( 1.0 * reaction_reaction_236) + (-1.0 * reaction_reaction_244) + (-1.0 * reaction_reaction_245) + (-1.0 * reaction_reaction_256) + (-1.0 * reaction_reaction_257) + ( 1.0 * reaction_reaction_267) + ( 1.0 * reaction_reaction_272) + (-1.0 * reaction_reaction_358) + ( 1.0 * reaction_reaction_476));
	
% Species:   id = CamR_Ca2_AD_CaMKII, name = CamR_Ca2_AD_CaMKII, affected by kineticLaw
	xdot(54) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_166) + (-1.0 * reaction_reaction_182) + ( 1.0 * reaction_reaction_232) + ( 1.0 * reaction_reaction_239) + (-1.0 * reaction_reaction_246) + (-1.0 * reaction_reaction_247) + (-1.0 * reaction_reaction_258) + (-1.0 * reaction_reaction_259) + ( 1.0 * reaction_reaction_270) + ( 1.0 * reaction_reaction_273) + (-1.0 * reaction_reaction_359) + ( 1.0 * reaction_reaction_479));
	
% Species:   id = CamR_Ca2_BC_CaMKII, name = CamR_Ca2_BC_CaMKII, affected by kineticLaw
	xdot(55) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_167) + (-1.0 * reaction_reaction_183) + ( 1.0 * reaction_reaction_234) + ( 1.0 * reaction_reaction_237) + (-1.0 * reaction_reaction_248) + (-1.0 * reaction_reaction_249) + (-1.0 * reaction_reaction_260) + (-1.0 * reaction_reaction_261) + ( 1.0 * reaction_reaction_268) + ( 1.0 * reaction_reaction_275) + (-1.0 * reaction_reaction_360) + ( 1.0 * reaction_reaction_482));
	
% Species:   id = CamR_Ca2_BD_CaMKII, name = CamR_Ca2_BD_CaMKII, affected by kineticLaw
	xdot(56) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_168) + (-1.0 * reaction_reaction_184) + ( 1.0 * reaction_reaction_235) + ( 1.0 * reaction_reaction_240) + (-1.0 * reaction_reaction_250) + (-1.0 * reaction_reaction_251) + (-1.0 * reaction_reaction_262) + (-1.0 * reaction_reaction_263) + ( 1.0 * reaction_reaction_271) + ( 1.0 * reaction_reaction_276) + (-1.0 * reaction_reaction_361) + ( 1.0 * reaction_reaction_485));
	
% Species:   id = CamR_Ca2_CD_CaMKII, name = CamR_Ca2_CD_CaMKII, affected by kineticLaw
	xdot(57) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_169) + (-1.0 * reaction_reaction_185) + ( 1.0 * reaction_reaction_238) + ( 1.0 * reaction_reaction_241) + (-1.0 * reaction_reaction_252) + (-1.0 * reaction_reaction_253) + (-1.0 * reaction_reaction_264) + (-1.0 * reaction_reaction_265) + ( 1.0 * reaction_reaction_274) + ( 1.0 * reaction_reaction_277) + (-1.0 * reaction_reaction_362) + ( 1.0 * reaction_reaction_488));
	
% Species:   id = CamR_Ca3_ABC_CaMKII, name = CamR_Ca3_ABC_CaMKII, affected by kineticLaw
	xdot(58) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_170) + (-1.0 * reaction_reaction_186) + ( 1.0 * reaction_reaction_254) + ( 1.0 * reaction_reaction_256) + ( 1.0 * reaction_reaction_260) + (-1.0 * reaction_reaction_266) + (-1.0 * reaction_reaction_267) + (-1.0 * reaction_reaction_268) + (-1.0 * reaction_reaction_281) + ( 1.0 * reaction_reaction_285) + (-1.0 * reaction_reaction_363) + ( 1.0 * reaction_reaction_491));
	
% Species:   id = CamR_Ca3_ABD_CaMKII, name = CamR_Ca3_ABD_CaMKII, affected by kineticLaw
	xdot(59) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_171) + (-1.0 * reaction_reaction_187) + ( 1.0 * reaction_reaction_255) + ( 1.0 * reaction_reaction_258) + ( 1.0 * reaction_reaction_262) + (-1.0 * reaction_reaction_269) + (-1.0 * reaction_reaction_270) + (-1.0 * reaction_reaction_271) + (-1.0 * reaction_reaction_280) + ( 1.0 * reaction_reaction_284) + (-1.0 * reaction_reaction_364) + ( 1.0 * reaction_reaction_494));
	
% Species:   id = CamR_Ca3_ACD_CaMKII, name = CamR_Ca3_ACD_CaMKII, affected by kineticLaw
	xdot(60) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_172) + (-1.0 * reaction_reaction_188) + ( 1.0 * reaction_reaction_257) + ( 1.0 * reaction_reaction_259) + ( 1.0 * reaction_reaction_264) + (-1.0 * reaction_reaction_272) + (-1.0 * reaction_reaction_273) + (-1.0 * reaction_reaction_274) + (-1.0 * reaction_reaction_279) + ( 1.0 * reaction_reaction_283) + (-1.0 * reaction_reaction_365) + ( 1.0 * reaction_reaction_497));
	
% Species:   id = CamR_Ca3_BCD_CaMKII, name = CamR_Ca3_BCD_CaMKII, affected by kineticLaw
	xdot(61) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_173) + (-1.0 * reaction_reaction_189) + ( 1.0 * reaction_reaction_261) + ( 1.0 * reaction_reaction_263) + ( 1.0 * reaction_reaction_265) + (-1.0 * reaction_reaction_275) + (-1.0 * reaction_reaction_276) + (-1.0 * reaction_reaction_277) + (-1.0 * reaction_reaction_278) + ( 1.0 * reaction_reaction_282) + (-1.0 * reaction_reaction_366) + ( 1.0 * reaction_reaction_500));
	
% Species:   id = CamR_Ca4_ABCD_CaMKII, name = CamR_Ca4_ABCD_CaMKII, affected by kineticLaw
	xdot(62) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_174) + (-1.0 * reaction_reaction_190) + ( 1.0 * reaction_reaction_278) + ( 1.0 * reaction_reaction_279) + ( 1.0 * reaction_reaction_280) + ( 1.0 * reaction_reaction_281) + (-1.0 * reaction_reaction_282) + (-1.0 * reaction_reaction_283) + (-1.0 * reaction_reaction_284) + (-1.0 * reaction_reaction_285) + (-1.0 * reaction_reaction_367) + ( 1.0 * reaction_reaction_503));
	
% Species:   id = CamR_PP2B, name = CamR_PP2B, affected by kineticLaw
	xdot(63) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_191) + (-1.0 * reaction_reaction_207) + (-1.0 * reaction_reaction_286) + (-1.0 * reaction_reaction_287) + (-1.0 * reaction_reaction_288) + (-1.0 * reaction_reaction_289) + ( 1.0 * reaction_reaction_290) + ( 1.0 * reaction_reaction_291) + ( 1.0 * reaction_reaction_292) + ( 1.0 * reaction_reaction_293) + (-1.0 * reaction_reaction_403) + ( 1.0 * reaction_reaction_404) + ( 1.0 * reaction_reaction_405));
	
% Species:   id = CamR_Ca1_A_PP2B, name = CamR_Ca1_A_PP2B, affected by kineticLaw
	xdot(64) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_192) + (-1.0 * reaction_reaction_208) + ( 1.0 * reaction_reaction_286) + (-1.0 * reaction_reaction_290) + (-1.0 * reaction_reaction_294) + (-1.0 * reaction_reaction_295) + (-1.0 * reaction_reaction_296) + ( 1.0 * reaction_reaction_307) + ( 1.0 * reaction_reaction_309) + ( 1.0 * reaction_reaction_311) + (-1.0 * reaction_reaction_406) + ( 1.0 * reaction_reaction_407) + ( 1.0 * reaction_reaction_408));
	
% Species:   id = CamR_Ca1_B_PP2B, name = CamR_Ca1_B_PP2B, affected by kineticLaw
	xdot(65) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_193) + (-1.0 * reaction_reaction_209) + ( 1.0 * reaction_reaction_287) + (-1.0 * reaction_reaction_291) + (-1.0 * reaction_reaction_297) + (-1.0 * reaction_reaction_298) + (-1.0 * reaction_reaction_299) + ( 1.0 * reaction_reaction_306) + ( 1.0 * reaction_reaction_313) + ( 1.0 * reaction_reaction_315) + (-1.0 * reaction_reaction_409) + ( 1.0 * reaction_reaction_410) + ( 1.0 * reaction_reaction_411));
	
% Species:   id = CamR_Ca1_C_PP2B, name = CamR_Ca1_C_PP2B, affected by kineticLaw
	xdot(66) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_194) + (-1.0 * reaction_reaction_210) + ( 1.0 * reaction_reaction_288) + (-1.0 * reaction_reaction_292) + (-1.0 * reaction_reaction_300) + (-1.0 * reaction_reaction_301) + (-1.0 * reaction_reaction_302) + ( 1.0 * reaction_reaction_308) + ( 1.0 * reaction_reaction_312) + ( 1.0 * reaction_reaction_317) + (-1.0 * reaction_reaction_412) + ( 1.0 * reaction_reaction_413) + ( 1.0 * reaction_reaction_414));
	
% Species:   id = CamR_Ca1_D_PP2B, name = CamR_Ca1_D_PP2B, affected by kineticLaw
	xdot(67) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_195) + (-1.0 * reaction_reaction_211) + ( 1.0 * reaction_reaction_289) + (-1.0 * reaction_reaction_293) + (-1.0 * reaction_reaction_303) + (-1.0 * reaction_reaction_304) + (-1.0 * reaction_reaction_305) + ( 1.0 * reaction_reaction_310) + ( 1.0 * reaction_reaction_314) + ( 1.0 * reaction_reaction_316) + (-1.0 * reaction_reaction_415) + ( 1.0 * reaction_reaction_416) + ( 1.0 * reaction_reaction_417));
	
% Species:   id = CamR_Ca2_AB_PP2B, name = CamR_Ca2_AB_PP2B, affected by kineticLaw
	xdot(68) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_196) + (-1.0 * reaction_reaction_212) + ( 1.0 * reaction_reaction_294) + ( 1.0 * reaction_reaction_297) + (-1.0 * reaction_reaction_306) + (-1.0 * reaction_reaction_307) + (-1.0 * reaction_reaction_318) + (-1.0 * reaction_reaction_319) + ( 1.0 * reaction_reaction_332) + ( 1.0 * reaction_reaction_335) + (-1.0 * reaction_reaction_418) + ( 1.0 * reaction_reaction_419) + ( 1.0 * reaction_reaction_420));
	
% Species:   id = CamR_Ca2_AC_PP2B, name = CamR_Ca2_AC_PP2B, affected by kineticLaw
	xdot(69) = (1/(compartment_Spine))*((-1.0 * reaction_reaction_213) + ( 1.0 * reaction_reaction_295) + ( 1.0 * reaction_reaction_300) + (-1.0 * reaction_reaction_308) + (-1.0 * reaction_reaction_309) + (-1.0 * reaction_reaction_320) + (-1.0 * reaction_reaction_321) + ( 1.0 * reaction_reaction_331) + ( 1.0 * reaction_reaction_338) + (-1.0 * reaction_reaction_421) + ( 1.0 * reaction_reaction_422) + ( 1.0 * reaction_reaction_423) + ( 1.0 * reaction_PP2B_binding_to_CamR_Ca2_AC));
	
% Species:   id = CamR_Ca2_AD_PP2B, name = CamR_Ca2_AD_PP2B, affected by kineticLaw
	xdot(70) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_198) + (-1.0 * reaction_reaction_214) + ( 1.0 * reaction_reaction_296) + ( 1.0 * reaction_reaction_303) + (-1.0 * reaction_reaction_310) + (-1.0 * reaction_reaction_311) + (-1.0 * reaction_reaction_322) + (-1.0 * reaction_reaction_323) + ( 1.0 * reaction_reaction_334) + ( 1.0 * reaction_reaction_337) + (-1.0 * reaction_reaction_424) + ( 1.0 * reaction_reaction_425) + ( 1.0 * reaction_reaction_426));
	
% Species:   id = CamR_Ca2_BC_PP2B, name = CamR_Ca2_BC_PP2B, affected by kineticLaw
	xdot(71) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_199) + (-1.0 * reaction_reaction_215) + ( 1.0 * reaction_reaction_298) + ( 1.0 * reaction_reaction_301) + (-1.0 * reaction_reaction_312) + (-1.0 * reaction_reaction_313) + (-1.0 * reaction_reaction_324) + (-1.0 * reaction_reaction_325) + ( 1.0 * reaction_reaction_330) + ( 1.0 * reaction_reaction_341) + (-1.0 * reaction_reaction_427) + ( 1.0 * reaction_reaction_428) + ( 1.0 * reaction_reaction_429));
	
% Species:   id = CamR_Ca2_BD_PP2B, name = CamR_Ca2_BD_PP2B, affected by kineticLaw
	xdot(72) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_200) + (-1.0 * reaction_reaction_216) + ( 1.0 * reaction_reaction_299) + ( 1.0 * reaction_reaction_304) + (-1.0 * reaction_reaction_314) + (-1.0 * reaction_reaction_315) + (-1.0 * reaction_reaction_326) + (-1.0 * reaction_reaction_327) + ( 1.0 * reaction_reaction_333) + ( 1.0 * reaction_reaction_340) + (-1.0 * reaction_reaction_430) + ( 1.0 * reaction_reaction_431) + ( 1.0 * reaction_reaction_432));
	
% Species:   id = CamR_Ca2_CD_PP2B, name = CamR_Ca2_CD_PP2B, affected by kineticLaw
	xdot(73) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_201) + (-1.0 * reaction_reaction_217) + ( 1.0 * reaction_reaction_302) + ( 1.0 * reaction_reaction_305) + (-1.0 * reaction_reaction_316) + (-1.0 * reaction_reaction_317) + (-1.0 * reaction_reaction_328) + (-1.0 * reaction_reaction_329) + ( 1.0 * reaction_reaction_336) + ( 1.0 * reaction_reaction_339) + (-1.0 * reaction_reaction_433) + ( 1.0 * reaction_reaction_434) + ( 1.0 * reaction_reaction_435));
	
% Species:   id = CamR_Ca3_ABC_PP2B, name = CamR_Ca3_ABC_PP2B, affected by kineticLaw
	xdot(74) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_202) + (-1.0 * reaction_reaction_218) + ( 1.0 * reaction_reaction_318) + ( 1.0 * reaction_reaction_320) + ( 1.0 * reaction_reaction_324) + (-1.0 * reaction_reaction_330) + (-1.0 * reaction_reaction_331) + (-1.0 * reaction_reaction_332) + (-1.0 * reaction_reaction_342) + ( 1.0 * reaction_reaction_349) + (-1.0 * reaction_reaction_436) + ( 1.0 * reaction_reaction_437) + ( 1.0 * reaction_reaction_438));
	
% Species:   id = CamR_Ca3_ABD_PP2B, name = CamR_Ca3_ABD_PP2B, affected by kineticLaw
	xdot(75) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_203) + (-1.0 * reaction_reaction_219) + ( 1.0 * reaction_reaction_319) + ( 1.0 * reaction_reaction_322) + ( 1.0 * reaction_reaction_326) + (-1.0 * reaction_reaction_333) + (-1.0 * reaction_reaction_334) + (-1.0 * reaction_reaction_335) + (-1.0 * reaction_reaction_343) + ( 1.0 * reaction_reaction_348) + (-1.0 * reaction_reaction_439) + ( 1.0 * reaction_reaction_440) + ( 1.0 * reaction_reaction_441));
	
% Species:   id = CamR_Ca3_ACD_PP2B, name = CamR_Ca3_ACD_PP2B, affected by kineticLaw
	xdot(76) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_204) + (-1.0 * reaction_reaction_220) + ( 1.0 * reaction_reaction_321) + ( 1.0 * reaction_reaction_323) + ( 1.0 * reaction_reaction_328) + (-1.0 * reaction_reaction_336) + (-1.0 * reaction_reaction_337) + (-1.0 * reaction_reaction_338) + (-1.0 * reaction_reaction_344) + ( 1.0 * reaction_reaction_347) + (-1.0 * reaction_reaction_442) + ( 1.0 * reaction_reaction_443) + ( 1.0 * reaction_reaction_444));
	
% Species:   id = CamR_Ca3_BCD_PP2B, name = CamR_Ca3_BCD_PP2B, affected by kineticLaw
	xdot(77) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_205) + (-1.0 * reaction_reaction_221) + ( 1.0 * reaction_reaction_325) + ( 1.0 * reaction_reaction_327) + ( 1.0 * reaction_reaction_329) + (-1.0 * reaction_reaction_339) + (-1.0 * reaction_reaction_340) + (-1.0 * reaction_reaction_341) + (-1.0 * reaction_reaction_345) + ( 1.0 * reaction_reaction_346) + (-1.0 * reaction_reaction_445) + ( 1.0 * reaction_reaction_446) + ( 1.0 * reaction_reaction_447));
	
% Species:   id = CamR_Ca4_ABCD_PP2B, name = CamR_Ca4_ABCD_PP2B, affected by kineticLaw
	xdot(78) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_206) + (-1.0 * reaction_reaction_222) + ( 1.0 * reaction_reaction_342) + ( 1.0 * reaction_reaction_343) + ( 1.0 * reaction_reaction_344) + ( 1.0 * reaction_reaction_345) + (-1.0 * reaction_reaction_346) + (-1.0 * reaction_reaction_347) + (-1.0 * reaction_reaction_348) + (-1.0 * reaction_reaction_349) + (-1.0 * reaction_reaction_448) + ( 1.0 * reaction_reaction_449) + ( 1.0 * reaction_reaction_450));
	
% Species:   id = CaMKIIp, name = CaMKIIp, affected by kineticLaw
	xdot(79) = (1/(compartment_Spine))*((-1.0 * reaction_reaction_368) + ( 1.0 * reaction_reaction_369) + (-1.0 * reaction_reaction_370) + ( 1.0 * reaction_reaction_371) + (-1.0 * reaction_reaction_372) + ( 1.0 * reaction_reaction_373) + (-1.0 * reaction_reaction_374) + ( 1.0 * reaction_reaction_375) + (-1.0 * reaction_reaction_376) + ( 1.0 * reaction_reaction_377) + (-1.0 * reaction_reaction_378) + ( 1.0 * reaction_reaction_379) + (-1.0 * reaction_reaction_380) + ( 1.0 * reaction_reaction_381) + (-1.0 * reaction_reaction_382) + ( 1.0 * reaction_reaction_383) + (-1.0 * reaction_reaction_384) + ( 1.0 * reaction_reaction_385) + (-1.0 * reaction_reaction_386) + ( 1.0 * reaction_reaction_387) + (-1.0 * reaction_reaction_388) + ( 1.0 * reaction_reaction_389) + (-1.0 * reaction_reaction_390) + ( 1.0 * reaction_reaction_391) + (-1.0 * reaction_reaction_392) + ( 1.0 * reaction_reaction_393) + (-1.0 * reaction_reaction_394) + ( 1.0 * reaction_reaction_395) + (-1.0 * reaction_reaction_396) + ( 1.0 * reaction_reaction_397) + (-1.0 * reaction_reaction_398) + ( 1.0 * reaction_reaction_399) + (-1.0 * reaction_reaction_453) + ( 1.0 * reaction_reaction_454));
	
% Species:   id = CamR_CaMKIIp, name = CamR_CaMKIIp, affected by kineticLaw
	xdot(80) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_352) + ( 1.0 * reaction_reaction_368) + (-1.0 * reaction_reaction_369) + (-1.0 * reaction_reaction_504) + (-1.0 * reaction_reaction_505) + (-1.0 * reaction_reaction_506) + (-1.0 * reaction_reaction_507) + ( 1.0 * reaction_reaction_508) + ( 1.0 * reaction_reaction_567) + ( 1.0 * reaction_reaction_509) + ( 1.0 * reaction_reaction_510) + (-1.0 * reaction_reaction_456) + ( 1.0 * reaction_reaction_457));
	
% Species:   id = CamR_Ca1_A_CaMKIIp, name = CamR_Ca1_A_CaMKIIp, affected by kineticLaw
	xdot(81) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_353) + ( 1.0 * reaction_reaction_370) + (-1.0 * reaction_reaction_371) + ( 1.0 * reaction_reaction_504) + (-1.0 * reaction_reaction_508) + (-1.0 * reaction_reaction_511) + (-1.0 * reaction_reaction_512) + (-1.0 * reaction_reaction_513) + ( 1.0 * reaction_reaction_524) + ( 1.0 * reaction_reaction_526) + ( 1.0 * reaction_reaction_528) + (-1.0 * reaction_reaction_459) + ( 1.0 * reaction_reaction_460));
	
% Species:   id = CamR_Ca1_B_CaMKIIp, name = CamR_Ca1_B_CaMKIIp, affected by kineticLaw
	xdot(82) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_354) + ( 1.0 * reaction_reaction_372) + (-1.0 * reaction_reaction_373) + ( 1.0 * reaction_reaction_505) + (-1.0 * reaction_reaction_567) + (-1.0 * reaction_reaction_514) + (-1.0 * reaction_reaction_515) + (-1.0 * reaction_reaction_516) + ( 1.0 * reaction_reaction_523) + ( 1.0 * reaction_reaction_530) + ( 1.0 * reaction_reaction_532) + (-1.0 * reaction_reaction_462) + ( 1.0 * reaction_reaction_463));
	
% Species:   id = CamR_Ca1_C_CaMKIIp, name = CamR_Ca1_C_CaMKIIp, affected by kineticLaw
	xdot(83) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_355) + ( 1.0 * reaction_reaction_374) + (-1.0 * reaction_reaction_375) + ( 1.0 * reaction_reaction_506) + (-1.0 * reaction_reaction_509) + (-1.0 * reaction_reaction_517) + (-1.0 * reaction_reaction_518) + (-1.0 * reaction_reaction_519) + ( 1.0 * reaction_reaction_525) + ( 1.0 * reaction_reaction_529) + ( 1.0 * reaction_reaction_534) + (-1.0 * reaction_reaction_465) + ( 1.0 * reaction_reaction_466));
	
% Species:   id = CamR_Ca1_D_CaMKIIp, name = CamR_Ca1_D_CaMKIIp, affected by kineticLaw
	xdot(84) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_356) + ( 1.0 * reaction_reaction_376) + (-1.0 * reaction_reaction_377) + ( 1.0 * reaction_reaction_507) + (-1.0 * reaction_reaction_510) + (-1.0 * reaction_reaction_520) + (-1.0 * reaction_reaction_521) + (-1.0 * reaction_reaction_522) + ( 1.0 * reaction_reaction_527) + ( 1.0 * reaction_reaction_531) + ( 1.0 * reaction_reaction_533) + (-1.0 * reaction_reaction_468) + ( 1.0 * reaction_reaction_469));
	
% Species:   id = CamR_Ca2_AB_CaMKIIp, name = CamR_Ca2_AB_CaMKIIp, affected by kineticLaw
	xdot(85) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_357) + ( 1.0 * reaction_reaction_378) + (-1.0 * reaction_reaction_379) + ( 1.0 * reaction_reaction_511) + ( 1.0 * reaction_reaction_514) + (-1.0 * reaction_reaction_523) + (-1.0 * reaction_reaction_524) + (-1.0 * reaction_reaction_535) + (-1.0 * reaction_reaction_536) + ( 1.0 * reaction_reaction_547) + ( 1.0 * reaction_reaction_550) + (-1.0 * reaction_reaction_471) + ( 1.0 * reaction_reaction_472));
	
% Species:   id = CamR_Ca2_AC_CaMKIIp, name = CamR_Ca2_AC_CaMKIIp, affected by kineticLaw
	xdot(86) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_358) + ( 1.0 * reaction_reaction_380) + (-1.0 * reaction_reaction_381) + ( 1.0 * reaction_reaction_512) + ( 1.0 * reaction_reaction_517) + (-1.0 * reaction_reaction_525) + (-1.0 * reaction_reaction_526) + (-1.0 * reaction_reaction_537) + (-1.0 * reaction_reaction_538) + ( 1.0 * reaction_reaction_548) + ( 1.0 * reaction_reaction_553) + (-1.0 * reaction_reaction_474) + ( 1.0 * reaction_reaction_475));
	
% Species:   id = CamR_Ca2_AD_CaMKIIp, name = CamR_Ca2_AD_CaMKIIp, affected by kineticLaw
	xdot(87) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_359) + ( 1.0 * reaction_reaction_382) + (-1.0 * reaction_reaction_383) + ( 1.0 * reaction_reaction_513) + ( 1.0 * reaction_reaction_520) + (-1.0 * reaction_reaction_527) + (-1.0 * reaction_reaction_528) + (-1.0 * reaction_reaction_539) + (-1.0 * reaction_reaction_540) + ( 1.0 * reaction_reaction_551) + ( 1.0 * reaction_reaction_554) + (-1.0 * reaction_reaction_477) + ( 1.0 * reaction_reaction_478));
	
% Species:   id = CamR_Ca2_BC_CaMKIIp, name = CamR_Ca2_BC_CaMKIIp, affected by kineticLaw
	xdot(88) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_360) + ( 1.0 * reaction_reaction_384) + (-1.0 * reaction_reaction_385) + ( 1.0 * reaction_reaction_515) + ( 1.0 * reaction_reaction_518) + (-1.0 * reaction_reaction_529) + (-1.0 * reaction_reaction_530) + (-1.0 * reaction_reaction_541) + (-1.0 * reaction_reaction_542) + ( 1.0 * reaction_reaction_549) + ( 1.0 * reaction_reaction_556) + (-1.0 * reaction_reaction_480) + ( 1.0 * reaction_reaction_481));
	
% Species:   id = CamR_Ca2_BD_CaMKIIp, name = CamR_Ca2_BD_CaMKIIp, affected by kineticLaw
	xdot(89) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_361) + ( 1.0 * reaction_reaction_386) + (-1.0 * reaction_reaction_387) + ( 1.0 * reaction_reaction_516) + ( 1.0 * reaction_reaction_521) + (-1.0 * reaction_reaction_531) + (-1.0 * reaction_reaction_532) + (-1.0 * reaction_reaction_543) + (-1.0 * reaction_reaction_544) + ( 1.0 * reaction_reaction_552) + ( 1.0 * reaction_reaction_557) + (-1.0 * reaction_reaction_483) + ( 1.0 * reaction_reaction_484));
	
% Species:   id = CamR_Ca2_CD_CaMKIIp, name = CamR_Ca2_CD_CaMKIIp, affected by kineticLaw
	xdot(90) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_362) + ( 1.0 * reaction_reaction_388) + (-1.0 * reaction_reaction_389) + ( 1.0 * reaction_reaction_519) + ( 1.0 * reaction_reaction_522) + (-1.0 * reaction_reaction_533) + (-1.0 * reaction_reaction_534) + (-1.0 * reaction_reaction_545) + (-1.0 * reaction_reaction_546) + ( 1.0 * reaction_reaction_555) + ( 1.0 * reaction_reaction_558) + (-1.0 * reaction_reaction_486) + ( 1.0 * reaction_reaction_487));
	
% Species:   id = CamR_Ca3_ABC_CaMKIIp, name = CamR_Ca3_ABC_CaMKIIp, affected by kineticLaw
	xdot(91) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_363) + ( 1.0 * reaction_reaction_390) + (-1.0 * reaction_reaction_391) + ( 1.0 * reaction_reaction_535) + ( 1.0 * reaction_reaction_537) + ( 1.0 * reaction_reaction_541) + (-1.0 * reaction_reaction_547) + (-1.0 * reaction_reaction_548) + (-1.0 * reaction_reaction_549) + (-1.0 * reaction_reaction_562) + ( 1.0 * reaction_reaction_566) + (-1.0 * reaction_reaction_489) + ( 1.0 * reaction_reaction_490));
	
% Species:   id = CamR_Ca3_ABD_CaMKIIp, name = CamR_Ca3_ABD_CaMKIIp, affected by kineticLaw
	xdot(92) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_364) + ( 1.0 * reaction_reaction_392) + (-1.0 * reaction_reaction_393) + ( 1.0 * reaction_reaction_536) + ( 1.0 * reaction_reaction_539) + ( 1.0 * reaction_reaction_543) + (-1.0 * reaction_reaction_550) + (-1.0 * reaction_reaction_551) + (-1.0 * reaction_reaction_552) + (-1.0 * reaction_reaction_561) + ( 1.0 * reaction_reaction_565) + (-1.0 * reaction_reaction_492) + ( 1.0 * reaction_reaction_493));
	
% Species:   id = CamR_Ca3_ACD_CaMKIIp, name = CamR_Ca3_ACD_CaMKIIp, affected by kineticLaw
	xdot(93) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_365) + ( 1.0 * reaction_reaction_394) + (-1.0 * reaction_reaction_395) + ( 1.0 * reaction_reaction_538) + ( 1.0 * reaction_reaction_540) + ( 1.0 * reaction_reaction_545) + (-1.0 * reaction_reaction_553) + (-1.0 * reaction_reaction_554) + (-1.0 * reaction_reaction_555) + (-1.0 * reaction_reaction_560) + ( 1.0 * reaction_reaction_564) + (-1.0 * reaction_reaction_495) + ( 1.0 * reaction_reaction_496));
	
% Species:   id = CamR_Ca3_BCD_CaMKIIp, name = CamR_Ca3_BCD_CaMKIIp, affected by kineticLaw
	xdot(94) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_366) + ( 1.0 * reaction_reaction_396) + (-1.0 * reaction_reaction_397) + ( 1.0 * reaction_reaction_542) + ( 1.0 * reaction_reaction_544) + ( 1.0 * reaction_reaction_546) + (-1.0 * reaction_reaction_556) + (-1.0 * reaction_reaction_557) + (-1.0 * reaction_reaction_558) + (-1.0 * reaction_reaction_559) + ( 1.0 * reaction_reaction_563) + (-1.0 * reaction_reaction_498) + ( 1.0 * reaction_reaction_499));
	
% Species:   id = CamR_Ca4_ABCD_CaMKIIp, name = CamR_Ca4_ABCD_CaMKIIp, affected by kineticLaw
	xdot(95) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_367) + ( 1.0 * reaction_reaction_398) + (-1.0 * reaction_reaction_399) + ( 1.0 * reaction_reaction_559) + ( 1.0 * reaction_reaction_560) + ( 1.0 * reaction_reaction_561) + ( 1.0 * reaction_reaction_562) + (-1.0 * reaction_reaction_563) + (-1.0 * reaction_reaction_564) + (-1.0 * reaction_reaction_565) + (-1.0 * reaction_reaction_566) + (-1.0 * reaction_reaction_501) + ( 1.0 * reaction_reaction_502));
	
% Species:   id = Dp, name = Dp, affected by kineticLaw
	xdot(96) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_402) + (-1.0 * reaction_reaction_403) + ( 1.0 * reaction_reaction_404) + (-1.0 * reaction_reaction_406) + ( 1.0 * reaction_reaction_407) + (-1.0 * reaction_reaction_409) + ( 1.0 * reaction_reaction_410) + (-1.0 * reaction_reaction_412) + ( 1.0 * reaction_reaction_413) + (-1.0 * reaction_reaction_415) + ( 1.0 * reaction_reaction_416) + (-1.0 * reaction_reaction_418) + ( 1.0 * reaction_reaction_419) + (-1.0 * reaction_reaction_421) + ( 1.0 * reaction_reaction_422) + (-1.0 * reaction_reaction_424) + ( 1.0 * reaction_reaction_425) + (-1.0 * reaction_reaction_427) + ( 1.0 * reaction_reaction_428) + (-1.0 * reaction_reaction_430) + ( 1.0 * reaction_reaction_431) + (-1.0 * reaction_reaction_433) + ( 1.0 * reaction_reaction_434) + (-1.0 * reaction_reaction_436) + ( 1.0 * reaction_reaction_437) + (-1.0 * reaction_reaction_439) + ( 1.0 * reaction_reaction_440) + (-1.0 * reaction_reaction_442) + ( 1.0 * reaction_reaction_443) + (-1.0 * reaction_reaction_445) + ( 1.0 * reaction_reaction_446) + (-1.0 * reaction_reaction_448) + ( 1.0 * reaction_reaction_449) + (-1.0 * reaction_reaction_451) + ( 1.0 * reaction_reaction_452));
	
% Species:   id = D_PKA, name = D_PKA, affected by kineticLaw
	xdot(97) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_400) + (-1.0 * reaction_reaction_401) + (-1.0 * reaction_reaction_402));
	
% Species:   id = Dp_CamR_PP2B, name = Dp_CamR_PP2B, affected by kineticLaw
	xdot(98) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_403) + (-1.0 * reaction_reaction_404) + (-1.0 * reaction_reaction_405));
	
% Species:   id = Dp_CamR_Ca1_A_PP2B, name = Dp_CamR_Ca1_A_PP2B, affected by kineticLaw
	xdot(99) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_406) + (-1.0 * reaction_reaction_407) + (-1.0 * reaction_reaction_408));
	
% Species:   id = Dp_CamR_Ca1_B_PP2B, name = Dp_CamR_Ca1_B_PP2B, affected by kineticLaw
	xdot(100) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_409) + (-1.0 * reaction_reaction_410) + (-1.0 * reaction_reaction_411));
	
% Species:   id = Dp_CamR_Ca1_C_PP2B, name = Dp_CamR_Ca1_C_PP2B, affected by kineticLaw
	xdot(101) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_412) + (-1.0 * reaction_reaction_413) + (-1.0 * reaction_reaction_414));
	
% Species:   id = Dp_CamR_Ca1_D_PP2B, name = Dp_CamR_Ca1_D_PP2B, affected by kineticLaw
	xdot(102) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_415) + (-1.0 * reaction_reaction_416) + (-1.0 * reaction_reaction_417));
	
% Species:   id = Dp_CamR_Ca2_AB_PP2B, name = Dp_CamR_Ca2_AB_PP2B, affected by kineticLaw
	xdot(103) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_418) + (-1.0 * reaction_reaction_419) + (-1.0 * reaction_reaction_420));
	
% Species:   id = Dp_CamR_Ca2_AC_PP2B, name = Dp_CamR_Ca2_AC_PP2B, affected by kineticLaw
	xdot(104) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_421) + (-1.0 * reaction_reaction_422) + (-1.0 * reaction_reaction_423));
	
% Species:   id = Dp_CamR_Ca2_AD_PP2B, name = Dp_CamR_Ca2_AD_PP2B, affected by kineticLaw
	xdot(105) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_424) + (-1.0 * reaction_reaction_425) + (-1.0 * reaction_reaction_426));
	
% Species:   id = Dp_CamR_Ca2_BC_PP2B, name = Dp_CamR_Ca2_BC_PP2B, affected by kineticLaw
	xdot(106) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_427) + (-1.0 * reaction_reaction_428) + (-1.0 * reaction_reaction_429));
	
% Species:   id = Dp_CamR_Ca2_BD_PP2B, name = Dp_CamR_Ca2_BD_PP2B, affected by kineticLaw
	xdot(107) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_430) + (-1.0 * reaction_reaction_431) + (-1.0 * reaction_reaction_432));
	
% Species:   id = Dp_CamR_Ca2_CD_PP2B, name = Dp_CamR_Ca2_CD_PP2B, affected by kineticLaw
	xdot(108) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_433) + (-1.0 * reaction_reaction_434) + (-1.0 * reaction_reaction_435));
	
% Species:   id = Dp_CamR_Ca3_ABC_PP2B, name = Dp_CamR_Ca3_ABC_PP2B, affected by kineticLaw
	xdot(109) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_436) + (-1.0 * reaction_reaction_437) + (-1.0 * reaction_reaction_438));
	
% Species:   id = Dp_CamR_Ca3_ABD_PP2B, name = Dp_CamR_Ca3_ABD_PP2B, affected by kineticLaw
	xdot(110) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_439) + (-1.0 * reaction_reaction_440) + (-1.0 * reaction_reaction_441));
	
% Species:   id = Dp_CamR_Ca3_ACD_PP2B, name = Dp_CamR_Ca3_ACD_PP2B, affected by kineticLaw
	xdot(111) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_442) + (-1.0 * reaction_reaction_443) + (-1.0 * reaction_reaction_444));
	
% Species:   id = Dp_CamR_Ca3_BCD_PP2B, name = Dp_CamR_Ca3_BCD_PP2B, affected by kineticLaw
	xdot(112) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_445) + (-1.0 * reaction_reaction_446) + (-1.0 * reaction_reaction_447));
	
% Species:   id = Dp_CamR_Ca4_ABCD_PP2B, name = Dp_CamR_Ca4_ABCD_PP2B, affected by kineticLaw
	xdot(113) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_448) + (-1.0 * reaction_reaction_449) + (-1.0 * reaction_reaction_450));
	
% Species:   id = PP1a_Dp, name = PP1a_Dp, affected by kineticLaw
	xdot(114) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_451) + (-1.0 * reaction_reaction_452));
	
% Species:   id = CaMKIIp_PP1a, name = CaMKIIp_PP1a, affected by kineticLaw
	xdot(115) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_453) + (-1.0 * reaction_reaction_454) + (-1.0 * reaction_reaction_455));
	
% Species:   id = CamR_CaMKIIp_PP1a, name = CamR_CaMKIIp_PP1a, affected by kineticLaw
	xdot(116) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_456) + (-1.0 * reaction_reaction_457) + (-1.0 * reaction_reaction_458));
	
% Species:   id = CamR_Ca1_A_CaMKIIp_PP1a, name = CamR_Ca1_A_CaMKIIp_PP1a, affected by kineticLaw
	xdot(117) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_459) + (-1.0 * reaction_reaction_460) + (-1.0 * reaction_reaction_461));
	
% Species:   id = CamR_Ca1_B_CaMKIIp_PP1a, name = CamR_Ca1_B_CaMKIIp_PP1a, affected by kineticLaw
	xdot(118) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_462) + (-1.0 * reaction_reaction_463) + (-1.0 * reaction_reaction_464));
	
% Species:   id = CamR_Ca1_C_CaMKIIp_PP1a, name = CamR_Ca1_C_CaMKIIp_PP1a, affected by kineticLaw
	xdot(119) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_465) + (-1.0 * reaction_reaction_466) + (-1.0 * reaction_reaction_467));
	
% Species:   id = CamR_Ca1_D_CaMKIIp_PP1a, name = CamR_Ca1_D_CaMKIIp_PP1a, affected by kineticLaw
	xdot(120) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_468) + (-1.0 * reaction_reaction_469) + (-1.0 * reaction_reaction_470));
	
% Species:   id = CamR_Ca2_AB_CaMKIIp_PP1a, name = CamR_Ca2_AB_CaMKIIp_PP1a, affected by kineticLaw
	xdot(121) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_471) + (-1.0 * reaction_reaction_472) + (-1.0 * reaction_reaction_473));
	
% Species:   id = CamR_Ca2_AC_CaMKIIp_PP1a, name = CamR_Ca2_AC_CaMKIIp_PP1a, affected by kineticLaw
	xdot(122) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_474) + (-1.0 * reaction_reaction_475) + (-1.0 * reaction_reaction_476));
	
% Species:   id = CamR_Ca2_AD_CaMKIIp_PP1a, name = CamR_Ca2_AD_CaMKIIp_PP1a, affected by kineticLaw
	xdot(123) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_477) + (-1.0 * reaction_reaction_478) + (-1.0 * reaction_reaction_479));
	
% Species:   id = CamR_Ca2_BC_CaMKIIp_PP1a, name = CamR_Ca2_BC_CaMKIIp_PP1a, affected by kineticLaw
	xdot(124) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_480) + (-1.0 * reaction_reaction_481) + (-1.0 * reaction_reaction_482));
	
% Species:   id = CamR_Ca2_BD_CaMKIIp_PP1a, name = CamR_Ca2_BD_CaMKIIp_PP1a, affected by kineticLaw
	xdot(125) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_483) + (-1.0 * reaction_reaction_484) + (-1.0 * reaction_reaction_485));
	
% Species:   id = CamR_Ca2_CD_CaMKIIp_PP1a, name = CamR_Ca2_CD_CaMKIIp_PP1a, affected by kineticLaw
	xdot(126) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_486) + (-1.0 * reaction_reaction_487) + (-1.0 * reaction_reaction_488));
	
% Species:   id = CamR_Ca3_ABC_CaMKIIp_PP1a, name = CamR_Ca3_ABC_CaMKIIp_PP1a, affected by kineticLaw
	xdot(127) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_489) + (-1.0 * reaction_reaction_490) + (-1.0 * reaction_reaction_491));
	
% Species:   id = CamR_Ca3_ABD_CaMKIIp_PP1a, name = CamR_Ca3_ABD_CaMKIIp_PP1a, affected by kineticLaw
	xdot(128) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_492) + (-1.0 * reaction_reaction_493) + (-1.0 * reaction_reaction_494));
	
% Species:   id = CamR_Ca3_ACD_CaMKIIp_PP1a, name = CamR_Ca3_ACD_CaMKIIp_PP1a, affected by kineticLaw
	xdot(129) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_495) + (-1.0 * reaction_reaction_496) + (-1.0 * reaction_reaction_497));
	
% Species:   id = CamR_Ca3_BCD_CaMKIIp_PP1a, name = CamR_Ca3_BCD_CaMKIIp_PP1a, affected by kineticLaw
	xdot(130) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_498) + (-1.0 * reaction_reaction_499) + (-1.0 * reaction_reaction_500));
	
% Species:   id = CamR_Ca4_ABCD_CaMKIIp_PP1a, name = CamR_Ca4_ABCD_CaMKIIp_PP1a, affected by kineticLaw
	xdot(131) = (1/(compartment_Spine))*(( 1.0 * reaction_reaction_501) + (-1.0 * reaction_reaction_502) + (-1.0 * reaction_reaction_503));
	
% Species:   id = PP2Bi, name = PP2Bi, affected by kineticLaw
	xdot(132) = (1/(compartment_Spine))*((-1.0 * reaction_Ca_binding_to_PP2Bi) + ( 1.0 * reaction_Ca_dissociating_from_PP2Bi_Ca1));
	
% Species:   id = PP2Bi_Ca1, name = PP2Bi_Ca1, affected by kineticLaw
	xdot(133) = (1/(compartment_Spine))*(( 1.0 * reaction_Ca_binding_to_PP2Bi) + (-1.0 * reaction_Ca_binding_to_PP2Bi_Ca1) + ( 1.0 * reaction_Ca_dissociating_from_PP2Bi_Ca2) + (-1.0 * reaction_Ca_dissociating_from_PP2Bi_Ca1));
	
% Species:   id = PP2Bi_Ca2, name = PP2Bi_Ca2, affected by kineticLaw
	xdot(134) = (1/(compartment_Spine))*(( 1.0 * reaction_Ca_binding_to_PP2Bi_Ca1) + (-1.0 * reaction_Ca_binding_to_PP2Bi_Ca2) + (-1.0 * reaction_Ca_dissociating_from_PP2Bi_Ca2) + ( 1.0 * reaction_Ca_dissociating_from_PP2Bi_Ca3));
	
% Species:   id = PP2Bi_Ca3, name = PP2Bi_Ca3, affected by kineticLaw
	xdot(135) = (1/(compartment_Spine))*(( 1.0 * reaction_Ca_binding_to_PP2Bi_Ca2) + (-1.0 * reaction_Ca_binding_to_PP2Bi_Ca3) + (-1.0 * reaction_Ca_dissociating_from_PP2Bi_Ca3) + ( 1.0 * reaction_Ca_dissociating_from_PP2B));
end

function z=MAX(a,b,piecewise(a), z=(a >= b,b));end

function z=function_1(v), z=(v);end

function z=Function_for_Ca_pump(Ca,km,vmax), z=(vmax*Ca/(Ca+km));end

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


