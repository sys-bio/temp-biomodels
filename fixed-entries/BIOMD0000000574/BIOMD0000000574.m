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
% Model name = Lai2014 - Hemiconcerted MWC model of intact calmodulin with two targets
%
% is http://identifiers.org/biomodels.db/MODEL1405060000
% is http://identifiers.org/biomodels.db/BIOMD0000000574
% isDescribedBy http://identifiers.org/pubmed/25611683
%


function main()
%Initial conditions vector
	x0=zeros(194,1);
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 0.0;
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
	x0(132) = 0.0;
	x0(133) = 0.0;
	x0(134) = 0.0;
	x0(135) = 0.0;
	x0(136) = 0.0;
	x0(137) = 0.0;
	x0(138) = 0.0;
	x0(139) = 0.0;
	x0(140) = 0.0;
	x0(141) = 0.0;
	x0(142) = 0.0;
	x0(143) = 0.0;
	x0(144) = 0.0;
	x0(145) = 3.3E-5;
	x0(146) = 0.0;
	x0(147) = 0.0;
	x0(148) = 0.0;
	x0(149) = 0.0;
	x0(150) = 0.0;
	x0(151) = 0.0;
	x0(152) = 0.0;
	x0(153) = 0.0;
	x0(154) = 0.0;
	x0(155) = 0.0;
	x0(156) = 0.0;
	x0(157) = 0.0;
	x0(158) = 0.0;
	x0(159) = 0.0;
	x0(160) = 0.0;
	x0(161) = 0.0;
	x0(162) = 0.0;
	x0(163) = 0.0;
	x0(164) = 0.0;
	x0(165) = 0.0;
	x0(166) = 0.0;
	x0(167) = 0.0;
	x0(168) = 0.0;
	x0(169) = 0.0;
	x0(170) = 0.0;
	x0(171) = 0.0;
	x0(172) = 0.0;
	x0(173) = 0.0;
	x0(174) = 0.0;
	x0(175) = 0.0;
	x0(176) = 0.0;
	x0(177) = 0.0;
	x0(178) = 0.0;
	x0(179) = 0.0;
	x0(180) = 0.0;
	x0(181) = 0.0;
	x0(182) = 0.0;
	x0(183) = 0.0;
	x0(184) = 0.0;
	x0(185) = 0.0;
	x0(186) = 0.0;
	x0(187) = 0.0;
	x0(188) = 0.0;
	x0(189) = 0.0;
	x0(190) = 0.0;
	x0(191) = 0.0;
	x0(192) = 0.0;
	x0(193) = 1.46E-4;
	x0(194) = 0.0;


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

% Compartment: id = cytosol, name = cytosol, constant
	compartment_cytosol=1.0;
% Parameter:   id =  lC, name = lC
	global_par_lC=8616.61;
% Parameter:   id =  lN, name = lN
	global_par_lN=322686.0;
% Parameter:   id =  Kd_rbp_TT, name = Kd_rbp_TT
	global_par_Kd_rbp_TT=6.0E-4;
% Parameter:   id =  kon_tbp, name = kon_tbp
	global_par_kon_tbp=1.0E8;
% Parameter:   id =  Kd_rbp_RT, name = Kd_rbp_RT
	global_par_Kd_rbp_RT=6.0E-4;
% Parameter:   id =  kon_AT, name = kon_AT
	global_par_kon_AT=1.0E9;
% Parameter:   id =  kon_AR, name = kon_AR
	global_par_kon_AR=1.0E9;
% Parameter:   id =  kon_CR, name = kon_CR
	global_par_kon_CR=1.0E7;
% Parameter:   id =  cN, name = cN
	global_par_cN=2.15E-4;
% Parameter:   id =  k_R2T_C, name = k_R2T_C
	global_par_k_R2T_C=10000.0;
% Parameter:   id =  cC, name = cC
	global_par_cC=3.17E-4;
% Parameter:   id =  kon_CT, name = kon_CT
	global_par_kon_CT=1.0E7;
% Parameter:   id =  k_R2T_N, name = k_R2T_N
	global_par_k_R2T_N=10000.0;
% Parameter:   id =  Kd_tbp_RT, name = Kd_tbp_RT
	global_par_Kd_tbp_RT=1.0;
% Parameter:   id =  KDT, name = KDT
	global_par_KDT=6.242E-5;
% Parameter:   id =  conc_rbp, name = conc_rbp
	global_par_conc_rbp=1.0E-6;
% Parameter:   id =  KBT, name = KBT
	global_par_KBT=9.192E-5;
% Parameter:   id =  Kd_rbp_RR, name = Kd_rbp_RR
	global_par_Kd_rbp_RR=5.0E-11;
% Parameter:   id =  Kd_rbp_TR, name = Kd_rbp_TR
	global_par_Kd_rbp_TR=7.0E-8;
% Parameter:   id =  Kd_tbp_TT, name = Kd_tbp_TT
	global_par_Kd_tbp_TT=1.0;
% Parameter:   id =  Kd_tbp_TR, name = Kd_tbp_TR
	global_par_Kd_tbp_TR=1.0;
% Parameter:   id =  conc_cam, name = conc_cam
	global_par_conc_cam=1.0E-6;
% Parameter:   id =  Kd_tbp_RR, name = Kd_tbp_RR
	global_par_Kd_tbp_RR=1.0E-9;
% Parameter:   id =  conc_tbp, name = conc_tbp
	global_par_conc_tbp=1.0E-6;
% Parameter:   id =  kon_rbp, name = kon_rbp
	global_par_kon_rbp=1.0E8;
% Parameter:   id =  KCT, name = KCT
	global_par_KCT=6.242E-5;
% Parameter:   id =  KAT, name = KAT
	global_par_KAT=9.192E-5;
% Parameter:   id =  kon_DR, name = kon_DR
% Parameter:   id =  kon_BR, name = kon_BR
% Parameter:   id =  koff_tbp_RR, name = koff_tbp_RR
% Parameter:   id =  k_T2R_N2, name = k_T2R_N2
% Parameter:   id =  k_T2R_N1, name = k_T2R_N1
% Parameter:   id =  koff_AT, name = koff_AT
% Parameter:   id =  koff_tbp_TR, name = koff_tbp_TR
% Parameter:   id =  kon_BT, name = kon_BT
% Parameter:   id =  koff_tbp_TT, name = koff_tbp_TT
% Parameter:   id =  koff_DR, name = koff_DR
% Parameter:   id =  k_R2T_C1, name = k_R2T_C1
% Parameter:   id =  k_R2T_C2, name = k_R2T_C2
% Parameter:   id =  koff_rbp_RT, name = koff_rbp_RT
% Parameter:   id =  koff_DT, name = koff_DT
% Parameter:   id =  kon_DT, name = kon_DT
% Parameter:   id =  koff_rbp_RR, name = koff_rbp_RR
% Parameter:   id =  k_T2R_C, name = k_T2R_C
% Parameter:   id =  koff_tbp_RT, name = koff_tbp_RT
% Parameter:   id =  koff_CT, name = koff_CT
% Parameter:   id =  koff_BT, name = koff_BT
% Parameter:   id =  k_T2R_C1, name = k_T2R_C1
% Parameter:   id =  k_T2R_C2, name = k_T2R_C2
% Parameter:   id =  koff_AR, name = koff_AR
% Parameter:   id =  koff_CR, name = koff_CR
% Parameter:   id =  koff_BR, name = koff_BR
% Parameter:   id =  KAR, name = KAR
% Parameter:   id =  koff_rbp_TR, name = koff_rbp_TR
% Parameter:   id =  k_R2T_N1, name = k_R2T_N1
% Parameter:   id =  KCR, name = KCR
% Parameter:   id =  KBR, name = KBR
% Parameter:   id =  k_T2R_N, name = k_T2R_N
% Parameter:   id =  k_R2T_N2, name = k_R2T_N2
% Parameter:   id =  KDR, name = KDR
% Parameter:   id =  koff_rbp_TT, name = koff_rbp_TT
% Parameter:   id =  cam_tbp_tot, name = cam_tbp_tot
% Parameter:   id =  ybarN_0, name = ybarN_0
% Parameter:   id =  ybar_rbp, name = ybar_rbp
% Parameter:   id =  cam_tot, name = cam_tot
% Parameter:   id =  ybar_tot, name = ybar_tot
% Parameter:   id =  cam_tbp_bound_fraction, name = cam_tbp_bound_fraction
% Parameter:   id =  ybar_tbp, name = ybar_tbp
% Parameter:   id =  cam_0_tot, name = cam_0_tot
% Parameter:   id =  ybarN_tot, name = ybarN_tot
% Parameter:   id =  cam_0_bound_fraction, name = cam_0_bound_fraction
% Parameter:   id =  ybar_0, name = ybar_0
% Parameter:   id =  cam_rbp_bound_fraction, name = cam_rbp_bound_fraction
% Parameter:   id =  ybarC_0, name = ybarC_0
% Parameter:   id =  ybarN_rbp, name = ybarN_rbp
% Parameter:   id =  ybarC_rbp, name = ybarC_rbp
% Parameter:   id =  ybarN_tbp, name = ybarN_tbp
% Parameter:   id =  ybarC_tbp, name = ybarC_tbp
% Parameter:   id =  ybarC_tot, name = ybarC_tot
% Parameter:   id =  cam_rbp_tot, name = cam_rbp_tot
% assignmentRule: variable = kon_DR
	global_par_kon_DR=global_par_kon_CR;
% assignmentRule: variable = kon_BR
	global_par_kon_BR=global_par_kon_AR;
% assignmentRule: variable = koff_tbp_RR
	global_par_koff_tbp_RR=global_par_Kd_tbp_RR*global_par_kon_tbp;
% assignmentRule: variable = koff_AT
	global_par_koff_AT=global_par_KAT*global_par_kon_AT;
% assignmentRule: variable = koff_tbp_TR
	global_par_koff_tbp_TR=global_par_Kd_tbp_TR*global_par_kon_tbp;
% assignmentRule: variable = kon_BT
	global_par_kon_BT=global_par_kon_AT;
% assignmentRule: variable = koff_tbp_TT
	global_par_koff_tbp_TT=global_par_Kd_tbp_TT*global_par_kon_tbp;
% assignmentRule: variable = k_R2T_C1
	global_par_k_R2T_C1=global_par_k_R2T_C;
% assignmentRule: variable = k_R2T_C2
	global_par_k_R2T_C2=global_par_k_R2T_C;
% assignmentRule: variable = koff_rbp_RT
	global_par_koff_rbp_RT=global_par_Kd_rbp_RT*global_par_kon_rbp;
% assignmentRule: variable = kon_DT
	global_par_kon_DT=global_par_kon_CT;
% assignmentRule: variable = koff_DT
	global_par_koff_DT=global_par_KDT*global_par_kon_DT;
% assignmentRule: variable = koff_rbp_RR
	global_par_koff_rbp_RR=global_par_Kd_rbp_RR*global_par_kon_rbp;
% assignmentRule: variable = k_T2R_C
	global_par_k_T2R_C=global_par_k_R2T_C/global_par_lC;
% assignmentRule: variable = koff_tbp_RT
	global_par_koff_tbp_RT=global_par_Kd_tbp_RT*global_par_kon_tbp;
% assignmentRule: variable = koff_CT
	global_par_koff_CT=global_par_KCT*global_par_kon_CT;
% assignmentRule: variable = koff_BT
	global_par_koff_BT=global_par_KBT*global_par_kon_BT;
% assignmentRule: variable = k_T2R_C1
	global_par_k_T2R_C1=global_par_k_R2T_C1/(global_par_lC*global_par_cC);
% assignmentRule: variable = k_T2R_C2
	global_par_k_T2R_C2=global_par_k_R2T_C2/(global_par_lC*global_par_cC*global_par_cC);
% assignmentRule: variable = KAR
	global_par_KAR=global_par_KAT*global_par_cN;
% assignmentRule: variable = koff_AR
	global_par_koff_AR=global_par_KAR*global_par_kon_AR;
% assignmentRule: variable = koff_rbp_TR
	global_par_koff_rbp_TR=global_par_Kd_rbp_TR*global_par_kon_rbp;
% assignmentRule: variable = k_R2T_N1
	global_par_k_R2T_N1=global_par_k_R2T_N;
% assignmentRule: variable = k_T2R_N1
	global_par_k_T2R_N1=global_par_k_R2T_N1/(global_par_lN*global_par_cN);
% assignmentRule: variable = KCR
	global_par_KCR=global_par_KCT*global_par_cC;
% assignmentRule: variable = koff_CR
	global_par_koff_CR=global_par_KCR*global_par_kon_CR;
% assignmentRule: variable = KBR
	global_par_KBR=global_par_KBT*global_par_cN;
% assignmentRule: variable = koff_BR
	global_par_koff_BR=global_par_KBR*global_par_kon_BR;
% assignmentRule: variable = k_T2R_N
	global_par_k_T2R_N=global_par_k_R2T_N/global_par_lN;
% assignmentRule: variable = k_R2T_N2
	global_par_k_R2T_N2=global_par_k_R2T_N;
% assignmentRule: variable = k_T2R_N2
	global_par_k_T2R_N2=global_par_k_R2T_N2/(global_par_lN*global_par_cN*global_par_cN);
% assignmentRule: variable = KDR
	global_par_KDR=global_par_KDT*global_par_cC;
% assignmentRule: variable = koff_DR
	global_par_koff_DR=global_par_KDR*global_par_kon_DR;
% assignmentRule: variable = koff_rbp_TT
	global_par_koff_rbp_TT=global_par_Kd_rbp_TT*global_par_kon_rbp;
% assignmentRule: variable = cam_tbp_tot
	global_par_cam_tbp_tot=x(3)+x(6)+x(9)+x(12)+x(15)+x(18)+x(21)+x(24)+x(27)+x(30)+x(33)+x(36)+x(39)+x(42)+x(45)+x(48)+x(51)+x(54)+x(57)+x(60)+x(63)+x(66)+x(69)+x(72)+x(75)+x(78)+x(81)+x(84)+x(87)+x(90)+x(93)+x(96)+x(99)+x(102)+x(105)+x(108)+x(111)+x(114)+x(117)+x(120)+x(123)+x(126)+x(129)+x(132)+x(135)+x(138)+x(141)+x(144)+x(147)+x(150)+x(153)+x(156)+x(159)+x(162)+x(165)+x(168)+x(171)+x(174)+x(177)+x(180)+x(183)+x(186)+x(189)+x(192);
% assignmentRule: variable = cam_tot
	global_par_cam_tot=x(1)+x(2)+x(3)+x(4)+x(5)+x(6)+x(7)+x(8)+x(9)+x(10)+x(11)+x(12)+x(13)+x(14)+x(15)+x(16)+x(17)+x(18)+x(19)+x(20)+x(21)+x(22)+x(23)+x(24)+x(25)+x(26)+x(27)+x(28)+x(29)+x(30)+x(31)+x(32)+x(33)+x(34)+x(35)+x(36)+x(37)+x(38)+x(39)+x(40)+x(41)+x(42)+x(43)+x(44)+x(45)+x(46)+x(47)+x(48)+x(49)+x(50)+x(51)+x(52)+x(53)+x(54)+x(55)+x(56)+x(57)+x(58)+x(59)+x(60)+x(61)+x(62)+x(63)+x(64)+x(65)+x(66)+x(67)+x(68)+x(69)+x(70)+x(71)+x(72)+x(73)+x(74)+x(75)+x(76)+x(77)+x(78)+x(79)+x(80)+x(81)+x(82)+x(83)+x(84)+x(85)+x(86)+x(87)+x(88)+x(89)+x(90)+x(91)+x(92)+x(93)+x(94)+x(95)+x(96)+x(97)+x(98)+x(99)+x(100)+x(101)+x(102)+x(103)+x(104)+x(105)+x(106)+x(107)+x(108)+x(109)+x(110)+x(111)+x(112)+x(113)+x(114)+x(115)+x(116)+x(117)+x(118)+x(119)+x(120)+x(121)+x(122)+x(123)+x(124)+x(125)+x(126)+x(127)+x(128)+x(129)+x(130)+x(131)+x(132)+x(133)+x(134)+x(135)+x(136)+x(137)+x(138)+x(139)+x(140)+x(141)+x(142)+x(143)+x(144)+x(145)+x(146)+x(147)+x(148)+x(149)+x(150)+x(151)+x(152)+x(153)+x(154)+x(155)+x(156)+x(157)+x(158)+x(159)+x(160)+x(161)+x(162)+x(163)+x(164)+x(165)+x(166)+x(167)+x(168)+x(169)+x(170)+x(171)+x(172)+x(173)+x(174)+x(175)+x(176)+x(177)+x(178)+x(179)+x(180)+x(181)+x(182)+x(183)+x(184)+x(185)+x(186)+x(187)+x(188)+x(189)+x(190)+x(191)+x(192);
% assignmentRule: variable = ybar_tot
	global_par_ybar_tot=(1*x(4)+1*x(5)+1*x(6)+1*x(7)+1*x(8)+1*x(9)+1*x(10)+1*x(11)+1*x(12)+1*x(13)+1*x(14)+1*x(15)+2*x(16)+2*x(17)+2*x(18)+2*x(19)+2*x(20)+2*x(21)+2*x(22)+2*x(23)+2*x(24)+2*x(25)+2*x(26)+2*x(27)+2*x(28)+2*x(29)+2*x(30)+2*x(31)+2*x(32)+2*x(33)+3*x(34)+3*x(35)+3*x(36)+3*x(37)+3*x(38)+3*x(39)+3*x(40)+3*x(41)+3*x(42)+3*x(43)+3*x(44)+3*x(45)+4*x(46)+4*x(47)+4*x(48)+1*x(52)+1*x(53)+1*x(54)+1*x(55)+1*x(56)+1*x(57)+1*x(58)+1*x(59)+1*x(60)+1*x(61)+1*x(62)+1*x(63)+2*x(64)+2*x(65)+2*x(66)+2*x(67)+2*x(68)+2*x(69)+2*x(70)+2*x(71)+2*x(72)+2*x(73)+2*x(74)+2*x(75)+2*x(76)+2*x(77)+2*x(78)+2*x(79)+2*x(80)+2*x(81)+3*x(82)+3*x(83)+3*x(84)+3*x(85)+3*x(86)+3*x(87)+3*x(88)+3*x(89)+3*x(90)+3*x(91)+3*x(92)+3*x(93)+4*x(94)+4*x(95)+4*x(96)+1*x(100)+1*x(101)+1*x(102)+1*x(103)+1*x(104)+1*x(105)+1*x(106)+1*x(107)+1*x(108)+1*x(109)+1*x(110)+1*x(111)+2*x(112)+2*x(113)+2*x(114)+2*x(115)+2*x(116)+2*x(117)+2*x(118)+2*x(119)+2*x(120)+2*x(121)+2*x(122)+2*x(123)+2*x(124)+2*x(125)+2*x(126)+2*x(127)+2*x(128)+2*x(129)+3*x(130)+3*x(131)+3*x(132)+3*x(133)+3*x(134)+3*x(135)+3*x(136)+3*x(137)+3*x(138)+3*x(139)+3*x(140)+3*x(141)+4*x(142)+4*x(143)+4*x(144)+1*x(148)+1*x(149)+1*x(150)+1*x(151)+1*x(152)+1*x(153)+1*x(154)+1*x(155)+1*x(156)+1*x(157)+1*x(158)+1*x(159)+2*x(160)+2*x(161)+2*x(162)+2*x(163)+2*x(164)+2*x(165)+2*x(166)+2*x(167)+2*x(168)+2*x(169)+2*x(170)+2*x(171)+2*x(172)+2*x(173)+2*x(174)+2*x(175)+2*x(176)+2*x(177)+3*x(178)+3*x(179)+3*x(180)+3*x(181)+3*x(182)+3*x(183)+3*x(184)+3*x(185)+3*x(186)+3*x(187)+3*x(188)+3*x(189)+4*x(190)+4*x(191)+4*x(192))/(4*global_par_cam_tot);
% assignmentRule: variable = cam_tbp_bound_fraction
	global_par_cam_tbp_bound_fraction=(x(3)+x(6)+x(9)+x(12)+x(15)+x(18)+x(21)+x(24)+x(27)+x(30)+x(33)+x(36)+x(39)+x(42)+x(45)+x(48)+x(51)+x(54)+x(57)+x(60)+x(63)+x(66)+x(69)+x(72)+x(75)+x(78)+x(81)+x(84)+x(87)+x(90)+x(93)+x(96)+x(99)+x(102)+x(105)+x(108)+x(111)+x(114)+x(117)+x(120)+x(123)+x(126)+x(129)+x(132)+x(135)+x(138)+x(141)+x(144)+x(147)+x(150)+x(153)+x(156)+x(159)+x(162)+x(165)+x(168)+x(171)+x(174)+x(177)+x(180)+x(183)+x(186)+x(189)+x(192))/global_par_cam_tot;
% assignmentRule: variable = ybar_tbp
	global_par_ybar_tbp=(1*x(6)+1*x(9)+1*x(12)+1*x(15)+2*x(18)+2*x(21)+2*x(24)+2*x(27)+2*x(30)+2*x(33)+3*x(36)+3*x(39)+3*x(42)+3*x(45)+4*x(48)+1*x(54)+1*x(57)+1*x(60)+1*x(63)+2*x(66)+2*x(69)+2*x(72)+2*x(75)+2*x(78)+2*x(81)+3*x(84)+3*x(87)+3*x(90)+3*x(93)+4*x(96)+1*x(102)+1*x(105)+1*x(108)+1*x(111)+2*x(114)+2*x(117)+2*x(120)+2*x(123)+2*x(126)+2*x(129)+3*x(132)+3*x(135)+3*x(138)+3*x(141)+4*x(144)+1*x(150)+1*x(153)+1*x(156)+1*x(159)+2*x(162)+2*x(165)+2*x(168)+2*x(171)+2*x(174)+2*x(177)+3*x(180)+3*x(183)+3*x(186)+3*x(189)+4*x(192))/(4*global_par_cam_tbp_tot);
% assignmentRule: variable = cam_0_tot
	global_par_cam_0_tot=x(1)+x(4)+x(7)+x(10)+x(13)+x(16)+x(19)+x(22)+x(25)+x(28)+x(31)+x(34)+x(37)+x(40)+x(43)+x(46)+x(49)+x(52)+x(55)+x(58)+x(61)+x(64)+x(67)+x(70)+x(73)+x(76)+x(79)+x(82)+x(85)+x(88)+x(91)+x(94)+x(97)+x(100)+x(103)+x(106)+x(109)+x(112)+x(115)+x(118)+x(121)+x(124)+x(127)+x(130)+x(133)+x(136)+x(139)+x(142)+x(145)+x(148)+x(151)+x(154)+x(157)+x(160)+x(163)+x(166)+x(169)+x(172)+x(175)+x(178)+x(181)+x(184)+x(187)+x(190);
% assignmentRule: variable = ybarN_0
	global_par_ybarN_0=(1*x(4)+1*x(7)+2*x(16)+1*x(19)+1*x(22)+1*x(25)+1*x(28)+2*x(34)+2*x(37)+1*x(40)+1*x(43)+2*x(46)+1*x(52)+1*x(55)+2*x(64)+1*x(67)+1*x(70)+1*x(73)+1*x(76)+2*x(82)+2*x(85)+1*x(88)+1*x(91)+2*x(94)+1*x(100)+1*x(103)+2*x(112)+1*x(115)+1*x(118)+1*x(121)+1*x(124)+2*x(130)+2*x(133)+1*x(136)+1*x(139)+2*x(142)+1*x(148)+1*x(151)+2*x(160)+1*x(163)+1*x(166)+1*x(169)+1*x(172)+2*x(178)+2*x(181)+1*x(184)+1*x(187)+2*x(190))/(2*global_par_cam_0_tot);
% assignmentRule: variable = ybarN_tot
	global_par_ybarN_tot=(1*x(4)+1*x(5)+1*x(6)+1*x(7)+1*x(8)+1*x(9)+2*x(16)+2*x(17)+2*x(18)+1*x(19)+1*x(20)+1*x(21)+1*x(22)+1*x(23)+1*x(24)+1*x(25)+1*x(26)+1*x(27)+1*x(28)+1*x(29)+1*x(30)+2*x(34)+2*x(35)+2*x(36)+2*x(37)+2*x(38)+2*x(39)+1*x(40)+1*x(41)+1*x(42)+1*x(43)+1*x(44)+1*x(45)+2*x(46)+2*x(47)+2*x(48)+1*x(52)+1*x(53)+1*x(54)+1*x(55)+1*x(56)+1*x(57)+2*x(64)+2*x(65)+2*x(66)+1*x(67)+1*x(68)+1*x(69)+1*x(70)+1*x(71)+1*x(72)+1*x(73)+1*x(74)+1*x(75)+1*x(76)+1*x(77)+1*x(78)+2*x(82)+2*x(83)+2*x(84)+2*x(85)+2*x(86)+2*x(87)+1*x(88)+1*x(89)+1*x(90)+1*x(91)+1*x(92)+1*x(93)+2*x(94)+2*x(95)+2*x(96)+1*x(100)+1*x(101)+1*x(102)+1*x(103)+1*x(104)+1*x(105)+2*x(112)+2*x(113)+2*x(114)+1*x(115)+1*x(116)+1*x(117)+1*x(118)+1*x(119)+1*x(120)+1*x(121)+1*x(122)+1*x(123)+1*x(124)+1*x(125)+1*x(126)+2*x(130)+2*x(131)+2*x(132)+2*x(133)+2*x(134)+2*x(135)+1*x(136)+1*x(137)+1*x(138)+1*x(139)+1*x(140)+1*x(141)+2*x(142)+2*x(143)+2*x(144)+1*x(148)+1*x(149)+1*x(150)+1*x(151)+1*x(152)+1*x(153)+2*x(160)+2*x(161)+2*x(162)+1*x(163)+1*x(164)+1*x(165)+1*x(166)+1*x(167)+1*x(168)+1*x(169)+1*x(170)+1*x(171)+1*x(172)+1*x(173)+1*x(174)+2*x(178)+2*x(179)+2*x(180)+2*x(181)+2*x(182)+2*x(183)+1*x(184)+1*x(185)+1*x(186)+1*x(187)+1*x(188)+1*x(189)+2*x(190)+2*x(191)+2*x(192))/(2*global_par_cam_tot);
% assignmentRule: variable = cam_0_bound_fraction
	global_par_cam_0_bound_fraction=(x(1)+x(4)+x(7)+x(10)+x(13)+x(16)+x(19)+x(22)+x(25)+x(28)+x(31)+x(34)+x(37)+x(40)+x(43)+x(46)+x(49)+x(52)+x(55)+x(58)+x(61)+x(64)+x(67)+x(70)+x(73)+x(76)+x(79)+x(82)+x(85)+x(88)+x(91)+x(94)+x(97)+x(100)+x(103)+x(106)+x(109)+x(112)+x(115)+x(118)+x(121)+x(124)+x(127)+x(130)+x(133)+x(136)+x(139)+x(142)+x(145)+x(148)+x(151)+x(154)+x(157)+x(160)+x(163)+x(166)+x(169)+x(172)+x(175)+x(178)+x(181)+x(184)+x(187)+x(190))/global_par_cam_tot;
% assignmentRule: variable = ybar_0
	global_par_ybar_0=(1*x(4)+1*x(7)+1*x(10)+1*x(13)+2*x(16)+2*x(19)+2*x(22)+2*x(25)+2*x(28)+2*x(31)+3*x(34)+3*x(37)+3*x(40)+3*x(43)+4*x(46)+1*x(52)+1*x(55)+1*x(58)+1*x(61)+2*x(64)+2*x(67)+2*x(70)+2*x(73)+2*x(76)+2*x(79)+3*x(82)+3*x(85)+3*x(88)+3*x(91)+4*x(94)+1*x(100)+1*x(103)+1*x(106)+1*x(109)+2*x(112)+2*x(115)+2*x(118)+2*x(121)+2*x(124)+2*x(127)+3*x(130)+3*x(133)+3*x(136)+3*x(139)+4*x(142)+1*x(148)+1*x(151)+1*x(154)+1*x(157)+2*x(160)+2*x(163)+2*x(166)+2*x(169)+2*x(172)+2*x(175)+3*x(178)+3*x(181)+3*x(184)+3*x(187)+4*x(190))/(4*global_par_cam_0_tot);
% assignmentRule: variable = cam_rbp_bound_fraction
	global_par_cam_rbp_bound_fraction=(x(2)+x(5)+x(8)+x(11)+x(14)+x(17)+x(20)+x(23)+x(26)+x(29)+x(32)+x(35)+x(38)+x(41)+x(44)+x(47)+x(50)+x(53)+x(56)+x(59)+x(62)+x(65)+x(68)+x(71)+x(74)+x(77)+x(80)+x(83)+x(86)+x(89)+x(92)+x(95)+x(98)+x(101)+x(104)+x(107)+x(110)+x(113)+x(116)+x(119)+x(122)+x(125)+x(128)+x(131)+x(134)+x(137)+x(140)+x(143)+x(146)+x(149)+x(152)+x(155)+x(158)+x(161)+x(164)+x(167)+x(170)+x(173)+x(176)+x(179)+x(182)+x(185)+x(188)+x(191))/global_par_cam_tot;
% assignmentRule: variable = ybarC_0
	global_par_ybarC_0=(1*x(10)+1*x(13)+1*x(19)+1*x(22)+1*x(25)+1*x(28)+2*x(31)+1*x(34)+1*x(37)+2*x(40)+2*x(43)+2*x(46)+1*x(58)+1*x(61)+1*x(67)+1*x(70)+1*x(73)+1*x(76)+2*x(79)+1*x(82)+1*x(85)+2*x(88)+2*x(91)+2*x(94)+1*x(106)+1*x(109)+1*x(115)+1*x(118)+1*x(121)+1*x(124)+2*x(127)+1*x(130)+1*x(133)+2*x(136)+2*x(139)+2*x(142)+1*x(154)+1*x(157)+1*x(163)+1*x(166)+1*x(169)+1*x(172)+2*x(175)+1*x(178)+1*x(181)+2*x(184)+2*x(187)+2*x(190))/(2*global_par_cam_0_tot);
% assignmentRule: variable = ybarN_tbp
	global_par_ybarN_tbp=(1*x(6)+1*x(9)+2*x(18)+1*x(21)+1*x(24)+1*x(27)+1*x(30)+2*x(36)+2*x(39)+1*x(42)+1*x(45)+2*x(48)+1*x(54)+1*x(57)+2*x(66)+1*x(69)+1*x(72)+1*x(75)+1*x(78)+2*x(84)+2*x(87)+1*x(90)+1*x(93)+2*x(96)+1*x(102)+1*x(105)+2*x(114)+1*x(117)+1*x(120)+1*x(123)+1*x(126)+2*x(132)+2*x(135)+1*x(138)+1*x(141)+2*x(144)+1*x(150)+1*x(153)+2*x(162)+1*x(165)+1*x(168)+1*x(171)+1*x(174)+2*x(180)+2*x(183)+1*x(186)+1*x(189)+2*x(192))/(2*global_par_cam_tbp_tot);
% assignmentRule: variable = ybarC_tbp
	global_par_ybarC_tbp=(1*x(12)+1*x(15)+1*x(21)+1*x(24)+1*x(27)+1*x(30)+2*x(33)+1*x(36)+1*x(39)+2*x(42)+2*x(45)+2*x(48)+1*x(60)+1*x(63)+1*x(69)+1*x(72)+1*x(75)+1*x(78)+2*x(81)+1*x(84)+1*x(87)+2*x(90)+2*x(93)+2*x(96)+1*x(108)+1*x(111)+1*x(117)+1*x(120)+1*x(123)+1*x(126)+2*x(129)+1*x(132)+1*x(135)+2*x(138)+2*x(141)+2*x(144)+1*x(156)+1*x(159)+1*x(165)+1*x(168)+1*x(171)+1*x(174)+2*x(177)+1*x(180)+1*x(183)+2*x(186)+2*x(189)+2*x(192))/(2*global_par_cam_tbp_tot);
% assignmentRule: variable = ybarC_tot
	global_par_ybarC_tot=(1*x(10)+1*x(11)+1*x(12)+1*x(13)+1*x(14)+1*x(15)+1*x(19)+1*x(20)+1*x(21)+1*x(22)+1*x(23)+1*x(24)+1*x(25)+1*x(26)+1*x(27)+1*x(28)+1*x(29)+1*x(30)+2*x(31)+2*x(32)+2*x(33)+1*x(34)+1*x(35)+1*x(36)+1*x(37)+1*x(38)+1*x(39)+2*x(40)+2*x(41)+2*x(42)+2*x(43)+2*x(44)+2*x(45)+2*x(46)+2*x(47)+2*x(48)+1*x(58)+1*x(59)+1*x(60)+1*x(61)+1*x(62)+1*x(63)+1*x(67)+1*x(68)+1*x(69)+1*x(70)+1*x(71)+1*x(72)+1*x(73)+1*x(74)+1*x(75)+1*x(76)+1*x(77)+1*x(78)+2*x(79)+2*x(80)+2*x(81)+1*x(82)+1*x(83)+1*x(84)+1*x(85)+1*x(86)+1*x(87)+2*x(88)+2*x(89)+2*x(90)+2*x(91)+2*x(92)+2*x(93)+2*x(94)+2*x(95)+2*x(96)+1*x(106)+1*x(107)+1*x(108)+1*x(109)+1*x(110)+1*x(111)+1*x(115)+1*x(116)+1*x(117)+1*x(118)+1*x(119)+1*x(120)+1*x(121)+1*x(122)+1*x(123)+1*x(124)+1*x(125)+1*x(126)+2*x(127)+2*x(128)+2*x(129)+1*x(130)+1*x(131)+1*x(132)+1*x(133)+1*x(134)+1*x(135)+2*x(136)+2*x(137)+2*x(138)+2*x(139)+2*x(140)+2*x(141)+2*x(142)+2*x(143)+2*x(144)+1*x(154)+1*x(155)+1*x(156)+1*x(157)+1*x(158)+1*x(159)+1*x(163)+1*x(164)+1*x(165)+1*x(166)+1*x(167)+1*x(168)+1*x(169)+1*x(170)+1*x(171)+1*x(172)+1*x(173)+1*x(174)+2*x(175)+2*x(176)+2*x(177)+1*x(178)+1*x(179)+1*x(180)+1*x(181)+1*x(182)+1*x(183)+2*x(184)+2*x(185)+2*x(186)+2*x(187)+2*x(188)+2*x(189)+2*x(190)+2*x(191)+2*x(192))/(2*global_par_cam_tot);
% assignmentRule: variable = cam_rbp_tot
	global_par_cam_rbp_tot=x(2)+x(5)+x(8)+x(11)+x(14)+x(17)+x(20)+x(23)+x(26)+x(29)+x(32)+x(35)+x(38)+x(41)+x(44)+x(47)+x(50)+x(53)+x(56)+x(59)+x(62)+x(65)+x(68)+x(71)+x(74)+x(77)+x(80)+x(83)+x(86)+x(89)+x(92)+x(95)+x(98)+x(101)+x(104)+x(107)+x(110)+x(113)+x(116)+x(119)+x(122)+x(125)+x(128)+x(131)+x(134)+x(137)+x(140)+x(143)+x(146)+x(149)+x(152)+x(155)+x(158)+x(161)+x(164)+x(167)+x(170)+x(173)+x(176)+x(179)+x(182)+x(185)+x(188)+x(191);
% assignmentRule: variable = ybar_rbp
	global_par_ybar_rbp=(1*x(5)+1*x(8)+1*x(11)+1*x(14)+2*x(17)+2*x(20)+2*x(23)+2*x(26)+2*x(29)+2*x(32)+3*x(35)+3*x(38)+3*x(41)+3*x(44)+4*x(47)+1*x(53)+1*x(56)+1*x(59)+1*x(62)+2*x(65)+2*x(68)+2*x(71)+2*x(74)+2*x(77)+2*x(80)+3*x(83)+3*x(86)+3*x(89)+3*x(92)+4*x(95)+1*x(101)+1*x(104)+1*x(107)+1*x(110)+2*x(113)+2*x(116)+2*x(119)+2*x(122)+2*x(125)+2*x(128)+3*x(131)+3*x(134)+3*x(137)+3*x(140)+4*x(143)+1*x(149)+1*x(152)+1*x(155)+1*x(158)+2*x(161)+2*x(164)+2*x(167)+2*x(170)+2*x(173)+2*x(176)+3*x(179)+3*x(182)+3*x(185)+3*x(188)+4*x(191))/(4*global_par_cam_rbp_tot);
% assignmentRule: variable = ybarN_rbp
	global_par_ybarN_rbp=(1*x(5)+1*x(8)+2*x(17)+1*x(20)+1*x(23)+1*x(26)+1*x(29)+2*x(35)+2*x(38)+1*x(41)+1*x(44)+2*x(47)+1*x(53)+1*x(56)+2*x(65)+1*x(68)+1*x(71)+1*x(74)+1*x(77)+2*x(83)+2*x(86)+1*x(89)+1*x(92)+2*x(95)+1*x(101)+1*x(104)+2*x(113)+1*x(116)+1*x(119)+1*x(122)+1*x(125)+2*x(131)+2*x(134)+1*x(137)+1*x(140)+2*x(143)+1*x(149)+1*x(152)+2*x(161)+1*x(164)+1*x(167)+1*x(170)+1*x(173)+2*x(179)+2*x(182)+1*x(185)+1*x(188)+2*x(191))/(2*global_par_cam_rbp_tot);
% assignmentRule: variable = ybarC_rbp
	global_par_ybarC_rbp=(1*x(11)+1*x(14)+1*x(20)+1*x(23)+1*x(26)+1*x(29)+2*x(32)+1*x(35)+1*x(38)+2*x(41)+2*x(44)+2*x(47)+1*x(59)+1*x(62)+1*x(68)+1*x(71)+1*x(74)+1*x(77)+2*x(80)+1*x(83)+1*x(86)+2*x(89)+2*x(92)+2*x(95)+1*x(107)+1*x(110)+1*x(116)+1*x(119)+1*x(122)+1*x(125)+2*x(128)+1*x(131)+1*x(134)+2*x(137)+2*x(140)+2*x(143)+1*x(155)+1*x(158)+1*x(164)+1*x(167)+1*x(170)+1*x(173)+2*x(176)+1*x(179)+1*x(182)+2*x(185)+2*x(188)+2*x(191))/(2*global_par_cam_rbp_tot);

% Reaction: id = rbp_binding_to_cam_RR_0_0, name = rbp binding to cam_RR_0_0
	reaction_rbp_binding_to_cam_RR_0_0=compartment_cytosol*(global_par_kon_rbp*x(193)*x(1)-global_par_koff_rbp_RR*x(2));

% Reaction: id = tbp_binding_to_cam_RR_0_0, name = tbp binding to cam_RR_0_0
	reaction_tbp_binding_to_cam_RR_0_0=compartment_cytosol*(global_par_kon_tbp*x(194)*x(1)-global_par_koff_tbp_RR*x(3));

% Reaction: id = ca_binding_to_cam_RR_0_0_on_site_A, name = ca binding to cam_RR_0_0 on site A
	reaction_ca_binding_to_cam_RR_0_0_on_site_A=compartment_cytosol*(global_par_kon_AR*const_species_ca*x(1)-global_par_koff_AR*x(4));

% Reaction: id = rbp_binding_to_cam_RR_A_0, name = rbp binding to cam_RR_A_0
	reaction_rbp_binding_to_cam_RR_A_0=compartment_cytosol*(global_par_kon_rbp*x(193)*x(4)-global_par_koff_rbp_RR*x(5));

% Reaction: id = ca_binding_to_cam_RR_0_rbp_on_site_A, name = ca binding to cam_RR_0_rbp on site A
	reaction_ca_binding_to_cam_RR_0_rbp_on_site_A=compartment_cytosol*(global_par_kon_AR*const_species_ca*x(2)-global_par_koff_AR*x(5));

% Reaction: id = tbp_binding_to_cam_RR_A_0, name = tbp binding to cam_RR_A_0
	reaction_tbp_binding_to_cam_RR_A_0=compartment_cytosol*(global_par_kon_tbp*x(194)*x(4)-global_par_koff_tbp_RR*x(6));

% Reaction: id = ca_binding_to_cam_RR_0_tbp_on_site_A, name = ca binding to cam_RR_0_tbp on site A
	reaction_ca_binding_to_cam_RR_0_tbp_on_site_A=compartment_cytosol*(global_par_kon_AR*const_species_ca*x(3)-global_par_koff_AR*x(6));

% Reaction: id = ca_binding_to_cam_RR_0_0_on_site_B, name = ca binding to cam_RR_0_0 on site B
	reaction_ca_binding_to_cam_RR_0_0_on_site_B=compartment_cytosol*(global_par_kon_BR*const_species_ca*x(1)-global_par_koff_BR*x(7));

% Reaction: id = rbp_binding_to_cam_RR_B_0, name = rbp binding to cam_RR_B_0
	reaction_rbp_binding_to_cam_RR_B_0=compartment_cytosol*(global_par_kon_rbp*x(193)*x(7)-global_par_koff_rbp_RR*x(8));

% Reaction: id = ca_binding_to_cam_RR_0_rbp_on_site_B, name = ca binding to cam_RR_0_rbp on site B
	reaction_ca_binding_to_cam_RR_0_rbp_on_site_B=compartment_cytosol*(global_par_kon_BR*const_species_ca*x(2)-global_par_koff_BR*x(8));

% Reaction: id = tbp_binding_to_cam_RR_B_0, name = tbp binding to cam_RR_B_0
	reaction_tbp_binding_to_cam_RR_B_0=compartment_cytosol*(global_par_kon_tbp*x(194)*x(7)-global_par_koff_tbp_RR*x(9));

% Reaction: id = ca_binding_to_cam_RR_0_tbp_on_site_B, name = ca binding to cam_RR_0_tbp on site B
	reaction_ca_binding_to_cam_RR_0_tbp_on_site_B=compartment_cytosol*(global_par_kon_BR*const_species_ca*x(3)-global_par_koff_BR*x(9));

% Reaction: id = ca_binding_to_cam_RR_0_0_on_site_C, name = ca binding to cam_RR_0_0 on site C
	reaction_ca_binding_to_cam_RR_0_0_on_site_C=compartment_cytosol*(global_par_kon_CR*const_species_ca*x(1)-global_par_koff_CR*x(10));

% Reaction: id = rbp_binding_to_cam_RR_C_0, name = rbp binding to cam_RR_C_0
	reaction_rbp_binding_to_cam_RR_C_0=compartment_cytosol*(global_par_kon_rbp*x(193)*x(10)-global_par_koff_rbp_RR*x(11));

% Reaction: id = ca_binding_to_cam_RR_0_rbp_on_site_C, name = ca binding to cam_RR_0_rbp on site C
	reaction_ca_binding_to_cam_RR_0_rbp_on_site_C=compartment_cytosol*(global_par_kon_CR*const_species_ca*x(2)-global_par_koff_CR*x(11));

% Reaction: id = tbp_binding_to_cam_RR_C_0, name = tbp binding to cam_RR_C_0
	reaction_tbp_binding_to_cam_RR_C_0=compartment_cytosol*(global_par_kon_tbp*x(194)*x(10)-global_par_koff_tbp_RR*x(12));

% Reaction: id = ca_binding_to_cam_RR_0_tbp_on_site_C, name = ca binding to cam_RR_0_tbp on site C
	reaction_ca_binding_to_cam_RR_0_tbp_on_site_C=compartment_cytosol*(global_par_kon_CR*const_species_ca*x(3)-global_par_koff_CR*x(12));

% Reaction: id = ca_binding_to_cam_RR_0_0_on_site_D, name = ca binding to cam_RR_0_0 on site D
	reaction_ca_binding_to_cam_RR_0_0_on_site_D=compartment_cytosol*(global_par_kon_DR*const_species_ca*x(1)-global_par_koff_DR*x(13));

% Reaction: id = rbp_binding_to_cam_RR_D_0, name = rbp binding to cam_RR_D_0
	reaction_rbp_binding_to_cam_RR_D_0=compartment_cytosol*(global_par_kon_rbp*x(193)*x(13)-global_par_koff_rbp_RR*x(14));

% Reaction: id = ca_binding_to_cam_RR_0_rbp_on_site_D, name = ca binding to cam_RR_0_rbp on site D
	reaction_ca_binding_to_cam_RR_0_rbp_on_site_D=compartment_cytosol*(global_par_kon_DR*const_species_ca*x(2)-global_par_koff_DR*x(14));

% Reaction: id = tbp_binding_to_cam_RR_D_0, name = tbp binding to cam_RR_D_0
	reaction_tbp_binding_to_cam_RR_D_0=compartment_cytosol*(global_par_kon_tbp*x(194)*x(13)-global_par_koff_tbp_RR*x(15));

% Reaction: id = ca_binding_to_cam_RR_0_tbp_on_site_D, name = ca binding to cam_RR_0_tbp on site D
	reaction_ca_binding_to_cam_RR_0_tbp_on_site_D=compartment_cytosol*(global_par_kon_DR*const_species_ca*x(3)-global_par_koff_DR*x(15));

% Reaction: id = ca_binding_to_cam_RR_B_0_on_site_A, name = ca binding to cam_RR_B_0 on site A
	reaction_ca_binding_to_cam_RR_B_0_on_site_A=compartment_cytosol*(global_par_kon_AR*const_species_ca*x(7)-global_par_koff_AR*x(16));

% Reaction: id = ca_binding_to_cam_RR_A_0_on_site_B, name = ca binding to cam_RR_A_0 on site B
	reaction_ca_binding_to_cam_RR_A_0_on_site_B=compartment_cytosol*(global_par_kon_BR*const_species_ca*x(4)-global_par_koff_BR*x(16));

% Reaction: id = rbp_binding_to_cam_RR_AB_0, name = rbp binding to cam_RR_AB_0
	reaction_rbp_binding_to_cam_RR_AB_0=compartment_cytosol*(global_par_kon_rbp*x(193)*x(16)-global_par_koff_rbp_RR*x(17));

% Reaction: id = ca_binding_to_cam_RR_B_rbp_on_site_A, name = ca binding to cam_RR_B_rbp on site A
	reaction_ca_binding_to_cam_RR_B_rbp_on_site_A=compartment_cytosol*(global_par_kon_AR*const_species_ca*x(8)-global_par_koff_AR*x(17));

% Reaction: id = ca_binding_to_cam_RR_A_rbp_on_site_B, name = ca binding to cam_RR_A_rbp on site B
	reaction_ca_binding_to_cam_RR_A_rbp_on_site_B=compartment_cytosol*(global_par_kon_BR*const_species_ca*x(5)-global_par_koff_BR*x(17));

% Reaction: id = tbp_binding_to_cam_RR_AB_0, name = tbp binding to cam_RR_AB_0
	reaction_tbp_binding_to_cam_RR_AB_0=compartment_cytosol*(global_par_kon_tbp*x(194)*x(16)-global_par_koff_tbp_RR*x(18));

% Reaction: id = ca_binding_to_cam_RR_B_tbp_on_site_A, name = ca binding to cam_RR_B_tbp on site A
	reaction_ca_binding_to_cam_RR_B_tbp_on_site_A=compartment_cytosol*(global_par_kon_AR*const_species_ca*x(9)-global_par_koff_AR*x(18));

% Reaction: id = ca_binding_to_cam_RR_A_tbp_on_site_B, name = ca binding to cam_RR_A_tbp on site B
	reaction_ca_binding_to_cam_RR_A_tbp_on_site_B=compartment_cytosol*(global_par_kon_BR*const_species_ca*x(6)-global_par_koff_BR*x(18));

% Reaction: id = ca_binding_to_cam_RR_C_0_on_site_A, name = ca binding to cam_RR_C_0 on site A
	reaction_ca_binding_to_cam_RR_C_0_on_site_A=compartment_cytosol*(global_par_kon_AR*const_species_ca*x(10)-global_par_koff_AR*x(19));

% Reaction: id = ca_binding_to_cam_RR_A_0_on_site_C, name = ca binding to cam_RR_A_0 on site C
	reaction_ca_binding_to_cam_RR_A_0_on_site_C=compartment_cytosol*(global_par_kon_CR*const_species_ca*x(4)-global_par_koff_CR*x(19));

% Reaction: id = rbp_binding_to_cam_RR_AC_0, name = rbp binding to cam_RR_AC_0
	reaction_rbp_binding_to_cam_RR_AC_0=compartment_cytosol*(global_par_kon_rbp*x(193)*x(19)-global_par_koff_rbp_RR*x(20));

% Reaction: id = ca_binding_to_cam_RR_C_rbp_on_site_A, name = ca binding to cam_RR_C_rbp on site A
	reaction_ca_binding_to_cam_RR_C_rbp_on_site_A=compartment_cytosol*(global_par_kon_AR*const_species_ca*x(11)-global_par_koff_AR*x(20));

% Reaction: id = ca_binding_to_cam_RR_A_rbp_on_site_C, name = ca binding to cam_RR_A_rbp on site C
	reaction_ca_binding_to_cam_RR_A_rbp_on_site_C=compartment_cytosol*(global_par_kon_CR*const_species_ca*x(5)-global_par_koff_CR*x(20));

% Reaction: id = tbp_binding_to_cam_RR_AC_0, name = tbp binding to cam_RR_AC_0
	reaction_tbp_binding_to_cam_RR_AC_0=compartment_cytosol*(global_par_kon_tbp*x(194)*x(19)-global_par_koff_tbp_RR*x(21));

% Reaction: id = ca_binding_to_cam_RR_C_tbp_on_site_A, name = ca binding to cam_RR_C_tbp on site A
	reaction_ca_binding_to_cam_RR_C_tbp_on_site_A=compartment_cytosol*(global_par_kon_AR*const_species_ca*x(12)-global_par_koff_AR*x(21));

% Reaction: id = ca_binding_to_cam_RR_A_tbp_on_site_C, name = ca binding to cam_RR_A_tbp on site C
	reaction_ca_binding_to_cam_RR_A_tbp_on_site_C=compartment_cytosol*(global_par_kon_CR*const_species_ca*x(6)-global_par_koff_CR*x(21));

% Reaction: id = ca_binding_to_cam_RR_D_0_on_site_A, name = ca binding to cam_RR_D_0 on site A
	reaction_ca_binding_to_cam_RR_D_0_on_site_A=compartment_cytosol*(global_par_kon_AR*const_species_ca*x(13)-global_par_koff_AR*x(22));

% Reaction: id = ca_binding_to_cam_RR_A_0_on_site_D, name = ca binding to cam_RR_A_0 on site D
	reaction_ca_binding_to_cam_RR_A_0_on_site_D=compartment_cytosol*(global_par_kon_DR*const_species_ca*x(4)-global_par_koff_DR*x(22));

% Reaction: id = rbp_binding_to_cam_RR_AD_0, name = rbp binding to cam_RR_AD_0
	reaction_rbp_binding_to_cam_RR_AD_0=compartment_cytosol*(global_par_kon_rbp*x(193)*x(22)-global_par_koff_rbp_RR*x(23));

% Reaction: id = ca_binding_to_cam_RR_D_rbp_on_site_A, name = ca binding to cam_RR_D_rbp on site A
	reaction_ca_binding_to_cam_RR_D_rbp_on_site_A=compartment_cytosol*(global_par_kon_AR*const_species_ca*x(14)-global_par_koff_AR*x(23));

% Reaction: id = ca_binding_to_cam_RR_A_rbp_on_site_D, name = ca binding to cam_RR_A_rbp on site D
	reaction_ca_binding_to_cam_RR_A_rbp_on_site_D=compartment_cytosol*(global_par_kon_DR*const_species_ca*x(5)-global_par_koff_DR*x(23));

% Reaction: id = tbp_binding_to_cam_RR_AD_0, name = tbp binding to cam_RR_AD_0
	reaction_tbp_binding_to_cam_RR_AD_0=compartment_cytosol*(global_par_kon_tbp*x(194)*x(22)-global_par_koff_tbp_RR*x(24));

% Reaction: id = ca_binding_to_cam_RR_D_tbp_on_site_A, name = ca binding to cam_RR_D_tbp on site A
	reaction_ca_binding_to_cam_RR_D_tbp_on_site_A=compartment_cytosol*(global_par_kon_AR*const_species_ca*x(15)-global_par_koff_AR*x(24));

% Reaction: id = ca_binding_to_cam_RR_A_tbp_on_site_D, name = ca binding to cam_RR_A_tbp on site D
	reaction_ca_binding_to_cam_RR_A_tbp_on_site_D=compartment_cytosol*(global_par_kon_DR*const_species_ca*x(6)-global_par_koff_DR*x(24));

% Reaction: id = ca_binding_to_cam_RR_C_0_on_site_B, name = ca binding to cam_RR_C_0 on site B
	reaction_ca_binding_to_cam_RR_C_0_on_site_B=compartment_cytosol*(global_par_kon_BR*const_species_ca*x(10)-global_par_koff_BR*x(25));

% Reaction: id = ca_binding_to_cam_RR_B_0_on_site_C, name = ca binding to cam_RR_B_0 on site C
	reaction_ca_binding_to_cam_RR_B_0_on_site_C=compartment_cytosol*(global_par_kon_CR*const_species_ca*x(7)-global_par_koff_CR*x(25));

% Reaction: id = rbp_binding_to_cam_RR_BC_0, name = rbp binding to cam_RR_BC_0
	reaction_rbp_binding_to_cam_RR_BC_0=compartment_cytosol*(global_par_kon_rbp*x(193)*x(25)-global_par_koff_rbp_RR*x(26));

% Reaction: id = ca_binding_to_cam_RR_C_rbp_on_site_B, name = ca binding to cam_RR_C_rbp on site B
	reaction_ca_binding_to_cam_RR_C_rbp_on_site_B=compartment_cytosol*(global_par_kon_BR*const_species_ca*x(11)-global_par_koff_BR*x(26));

% Reaction: id = ca_binding_to_cam_RR_B_rbp_on_site_C, name = ca binding to cam_RR_B_rbp on site C
	reaction_ca_binding_to_cam_RR_B_rbp_on_site_C=compartment_cytosol*(global_par_kon_CR*const_species_ca*x(8)-global_par_koff_CR*x(26));

% Reaction: id = tbp_binding_to_cam_RR_BC_0, name = tbp binding to cam_RR_BC_0
	reaction_tbp_binding_to_cam_RR_BC_0=compartment_cytosol*(global_par_kon_tbp*x(194)*x(25)-global_par_koff_tbp_RR*x(27));

% Reaction: id = ca_binding_to_cam_RR_C_tbp_on_site_B, name = ca binding to cam_RR_C_tbp on site B
	reaction_ca_binding_to_cam_RR_C_tbp_on_site_B=compartment_cytosol*(global_par_kon_BR*const_species_ca*x(12)-global_par_koff_BR*x(27));

% Reaction: id = ca_binding_to_cam_RR_B_tbp_on_site_C, name = ca binding to cam_RR_B_tbp on site C
	reaction_ca_binding_to_cam_RR_B_tbp_on_site_C=compartment_cytosol*(global_par_kon_CR*const_species_ca*x(9)-global_par_koff_CR*x(27));

% Reaction: id = ca_binding_to_cam_RR_D_0_on_site_B, name = ca binding to cam_RR_D_0 on site B
	reaction_ca_binding_to_cam_RR_D_0_on_site_B=compartment_cytosol*(global_par_kon_BR*const_species_ca*x(13)-global_par_koff_BR*x(28));

% Reaction: id = ca_binding_to_cam_RR_B_0_on_site_D, name = ca binding to cam_RR_B_0 on site D
	reaction_ca_binding_to_cam_RR_B_0_on_site_D=compartment_cytosol*(global_par_kon_DR*const_species_ca*x(7)-global_par_koff_DR*x(28));

% Reaction: id = rbp_binding_to_cam_RR_BD_0, name = rbp binding to cam_RR_BD_0
	reaction_rbp_binding_to_cam_RR_BD_0=compartment_cytosol*(global_par_kon_rbp*x(193)*x(28)-global_par_koff_rbp_RR*x(29));

% Reaction: id = ca_binding_to_cam_RR_D_rbp_on_site_B, name = ca binding to cam_RR_D_rbp on site B
	reaction_ca_binding_to_cam_RR_D_rbp_on_site_B=compartment_cytosol*(global_par_kon_BR*const_species_ca*x(14)-global_par_koff_BR*x(29));

% Reaction: id = ca_binding_to_cam_RR_B_rbp_on_site_D, name = ca binding to cam_RR_B_rbp on site D
	reaction_ca_binding_to_cam_RR_B_rbp_on_site_D=compartment_cytosol*(global_par_kon_DR*const_species_ca*x(8)-global_par_koff_DR*x(29));

% Reaction: id = tbp_binding_to_cam_RR_BD_0, name = tbp binding to cam_RR_BD_0
	reaction_tbp_binding_to_cam_RR_BD_0=compartment_cytosol*(global_par_kon_tbp*x(194)*x(28)-global_par_koff_tbp_RR*x(30));

% Reaction: id = ca_binding_to_cam_RR_D_tbp_on_site_B, name = ca binding to cam_RR_D_tbp on site B
	reaction_ca_binding_to_cam_RR_D_tbp_on_site_B=compartment_cytosol*(global_par_kon_BR*const_species_ca*x(15)-global_par_koff_BR*x(30));

% Reaction: id = ca_binding_to_cam_RR_B_tbp_on_site_D, name = ca binding to cam_RR_B_tbp on site D
	reaction_ca_binding_to_cam_RR_B_tbp_on_site_D=compartment_cytosol*(global_par_kon_DR*const_species_ca*x(9)-global_par_koff_DR*x(30));

% Reaction: id = ca_binding_to_cam_RR_D_0_on_site_C, name = ca binding to cam_RR_D_0 on site C
	reaction_ca_binding_to_cam_RR_D_0_on_site_C=compartment_cytosol*(global_par_kon_CR*const_species_ca*x(13)-global_par_koff_CR*x(31));

% Reaction: id = ca_binding_to_cam_RR_C_0_on_site_D, name = ca binding to cam_RR_C_0 on site D
	reaction_ca_binding_to_cam_RR_C_0_on_site_D=compartment_cytosol*(global_par_kon_DR*const_species_ca*x(10)-global_par_koff_DR*x(31));

% Reaction: id = rbp_binding_to_cam_RR_CD_0, name = rbp binding to cam_RR_CD_0
	reaction_rbp_binding_to_cam_RR_CD_0=compartment_cytosol*(global_par_kon_rbp*x(193)*x(31)-global_par_koff_rbp_RR*x(32));

% Reaction: id = ca_binding_to_cam_RR_D_rbp_on_site_C, name = ca binding to cam_RR_D_rbp on site C
	reaction_ca_binding_to_cam_RR_D_rbp_on_site_C=compartment_cytosol*(global_par_kon_CR*const_species_ca*x(14)-global_par_koff_CR*x(32));

% Reaction: id = ca_binding_to_cam_RR_C_rbp_on_site_D, name = ca binding to cam_RR_C_rbp on site D
	reaction_ca_binding_to_cam_RR_C_rbp_on_site_D=compartment_cytosol*(global_par_kon_DR*const_species_ca*x(11)-global_par_koff_DR*x(32));

% Reaction: id = tbp_binding_to_cam_RR_CD_0, name = tbp binding to cam_RR_CD_0
	reaction_tbp_binding_to_cam_RR_CD_0=compartment_cytosol*(global_par_kon_tbp*x(194)*x(31)-global_par_koff_tbp_RR*x(33));

% Reaction: id = ca_binding_to_cam_RR_D_tbp_on_site_C, name = ca binding to cam_RR_D_tbp on site C
	reaction_ca_binding_to_cam_RR_D_tbp_on_site_C=compartment_cytosol*(global_par_kon_CR*const_species_ca*x(15)-global_par_koff_CR*x(33));

% Reaction: id = ca_binding_to_cam_RR_C_tbp_on_site_D, name = ca binding to cam_RR_C_tbp on site D
	reaction_ca_binding_to_cam_RR_C_tbp_on_site_D=compartment_cytosol*(global_par_kon_DR*const_species_ca*x(12)-global_par_koff_DR*x(33));

% Reaction: id = ca_binding_to_cam_RR_BC_0_on_site_A, name = ca binding to cam_RR_BC_0 on site A
	reaction_ca_binding_to_cam_RR_BC_0_on_site_A=compartment_cytosol*(global_par_kon_AR*const_species_ca*x(25)-global_par_koff_AR*x(34));

% Reaction: id = ca_binding_to_cam_RR_AC_0_on_site_B, name = ca binding to cam_RR_AC_0 on site B
	reaction_ca_binding_to_cam_RR_AC_0_on_site_B=compartment_cytosol*(global_par_kon_BR*const_species_ca*x(19)-global_par_koff_BR*x(34));

% Reaction: id = ca_binding_to_cam_RR_AB_0_on_site_C, name = ca binding to cam_RR_AB_0 on site C
	reaction_ca_binding_to_cam_RR_AB_0_on_site_C=compartment_cytosol*(global_par_kon_CR*const_species_ca*x(16)-global_par_koff_CR*x(34));

% Reaction: id = rbp_binding_to_cam_RR_ABC_0, name = rbp binding to cam_RR_ABC_0
	reaction_rbp_binding_to_cam_RR_ABC_0=compartment_cytosol*(global_par_kon_rbp*x(193)*x(34)-global_par_koff_rbp_RR*x(35));

% Reaction: id = ca_binding_to_cam_RR_BC_rbp_on_site_A, name = ca binding to cam_RR_BC_rbp on site A
	reaction_ca_binding_to_cam_RR_BC_rbp_on_site_A=compartment_cytosol*(global_par_kon_AR*const_species_ca*x(26)-global_par_koff_AR*x(35));

% Reaction: id = ca_binding_to_cam_RR_AC_rbp_on_site_B, name = ca binding to cam_RR_AC_rbp on site B
	reaction_ca_binding_to_cam_RR_AC_rbp_on_site_B=compartment_cytosol*(global_par_kon_BR*const_species_ca*x(20)-global_par_koff_BR*x(35));

% Reaction: id = ca_binding_to_cam_RR_AB_rbp_on_site_C, name = ca binding to cam_RR_AB_rbp on site C
	reaction_ca_binding_to_cam_RR_AB_rbp_on_site_C=compartment_cytosol*(global_par_kon_CR*const_species_ca*x(17)-global_par_koff_CR*x(35));

% Reaction: id = tbp_binding_to_cam_RR_ABC_0, name = tbp binding to cam_RR_ABC_0
	reaction_tbp_binding_to_cam_RR_ABC_0=compartment_cytosol*(global_par_kon_tbp*x(194)*x(34)-global_par_koff_tbp_RR*x(36));

% Reaction: id = ca_binding_to_cam_RR_BC_tbp_on_site_A, name = ca binding to cam_RR_BC_tbp on site A
	reaction_ca_binding_to_cam_RR_BC_tbp_on_site_A=compartment_cytosol*(global_par_kon_AR*const_species_ca*x(27)-global_par_koff_AR*x(36));

% Reaction: id = ca_binding_to_cam_RR_AC_tbp_on_site_B, name = ca binding to cam_RR_AC_tbp on site B
	reaction_ca_binding_to_cam_RR_AC_tbp_on_site_B=compartment_cytosol*(global_par_kon_BR*const_species_ca*x(21)-global_par_koff_BR*x(36));

% Reaction: id = ca_binding_to_cam_RR_AB_tbp_on_site_C, name = ca binding to cam_RR_AB_tbp on site C
	reaction_ca_binding_to_cam_RR_AB_tbp_on_site_C=compartment_cytosol*(global_par_kon_CR*const_species_ca*x(18)-global_par_koff_CR*x(36));

% Reaction: id = ca_binding_to_cam_RR_BD_0_on_site_A, name = ca binding to cam_RR_BD_0 on site A
	reaction_ca_binding_to_cam_RR_BD_0_on_site_A=compartment_cytosol*(global_par_kon_AR*const_species_ca*x(28)-global_par_koff_AR*x(37));

% Reaction: id = ca_binding_to_cam_RR_AD_0_on_site_B, name = ca binding to cam_RR_AD_0 on site B
	reaction_ca_binding_to_cam_RR_AD_0_on_site_B=compartment_cytosol*(global_par_kon_BR*const_species_ca*x(22)-global_par_koff_BR*x(37));

% Reaction: id = ca_binding_to_cam_RR_AB_0_on_site_D, name = ca binding to cam_RR_AB_0 on site D
	reaction_ca_binding_to_cam_RR_AB_0_on_site_D=compartment_cytosol*(global_par_kon_DR*const_species_ca*x(16)-global_par_koff_DR*x(37));

% Reaction: id = rbp_binding_to_cam_RR_ABD_0, name = rbp binding to cam_RR_ABD_0
	reaction_rbp_binding_to_cam_RR_ABD_0=compartment_cytosol*(global_par_kon_rbp*x(193)*x(37)-global_par_koff_rbp_RR*x(38));

% Reaction: id = ca_binding_to_cam_RR_BD_rbp_on_site_A, name = ca binding to cam_RR_BD_rbp on site A
	reaction_ca_binding_to_cam_RR_BD_rbp_on_site_A=compartment_cytosol*(global_par_kon_AR*const_species_ca*x(29)-global_par_koff_AR*x(38));

% Reaction: id = ca_binding_to_cam_RR_AD_rbp_on_site_B, name = ca binding to cam_RR_AD_rbp on site B
	reaction_ca_binding_to_cam_RR_AD_rbp_on_site_B=compartment_cytosol*(global_par_kon_BR*const_species_ca*x(23)-global_par_koff_BR*x(38));

% Reaction: id = ca_binding_to_cam_RR_AB_rbp_on_site_D, name = ca binding to cam_RR_AB_rbp on site D
	reaction_ca_binding_to_cam_RR_AB_rbp_on_site_D=compartment_cytosol*(global_par_kon_DR*const_species_ca*x(17)-global_par_koff_DR*x(38));

% Reaction: id = tbp_binding_to_cam_RR_ABD_0, name = tbp binding to cam_RR_ABD_0
	reaction_tbp_binding_to_cam_RR_ABD_0=compartment_cytosol*(global_par_kon_tbp*x(194)*x(37)-global_par_koff_tbp_RR*x(39));

% Reaction: id = ca_binding_to_cam_RR_BD_tbp_on_site_A, name = ca binding to cam_RR_BD_tbp on site A
	reaction_ca_binding_to_cam_RR_BD_tbp_on_site_A=compartment_cytosol*(global_par_kon_AR*const_species_ca*x(30)-global_par_koff_AR*x(39));

% Reaction: id = ca_binding_to_cam_RR_AD_tbp_on_site_B, name = ca binding to cam_RR_AD_tbp on site B
	reaction_ca_binding_to_cam_RR_AD_tbp_on_site_B=compartment_cytosol*(global_par_kon_BR*const_species_ca*x(24)-global_par_koff_BR*x(39));

% Reaction: id = ca_binding_to_cam_RR_AB_tbp_on_site_D, name = ca binding to cam_RR_AB_tbp on site D
	reaction_ca_binding_to_cam_RR_AB_tbp_on_site_D=compartment_cytosol*(global_par_kon_DR*const_species_ca*x(18)-global_par_koff_DR*x(39));

% Reaction: id = ca_binding_to_cam_RR_CD_0_on_site_A, name = ca binding to cam_RR_CD_0 on site A
	reaction_ca_binding_to_cam_RR_CD_0_on_site_A=compartment_cytosol*(global_par_kon_AR*const_species_ca*x(31)-global_par_koff_AR*x(40));

% Reaction: id = ca_binding_to_cam_RR_AD_0_on_site_C, name = ca binding to cam_RR_AD_0 on site C
	reaction_ca_binding_to_cam_RR_AD_0_on_site_C=compartment_cytosol*(global_par_kon_CR*const_species_ca*x(22)-global_par_koff_CR*x(40));

% Reaction: id = ca_binding_to_cam_RR_AC_0_on_site_D, name = ca binding to cam_RR_AC_0 on site D
	reaction_ca_binding_to_cam_RR_AC_0_on_site_D=compartment_cytosol*(global_par_kon_DR*const_species_ca*x(19)-global_par_koff_DR*x(40));

% Reaction: id = rbp_binding_to_cam_RR_ACD_0, name = rbp binding to cam_RR_ACD_0
	reaction_rbp_binding_to_cam_RR_ACD_0=compartment_cytosol*(global_par_kon_rbp*x(193)*x(40)-global_par_koff_rbp_RR*x(41));

% Reaction: id = ca_binding_to_cam_RR_CD_rbp_on_site_A, name = ca binding to cam_RR_CD_rbp on site A
	reaction_ca_binding_to_cam_RR_CD_rbp_on_site_A=compartment_cytosol*(global_par_kon_AR*const_species_ca*x(32)-global_par_koff_AR*x(41));

% Reaction: id = ca_binding_to_cam_RR_AD_rbp_on_site_C, name = ca binding to cam_RR_AD_rbp on site C
	reaction_ca_binding_to_cam_RR_AD_rbp_on_site_C=compartment_cytosol*(global_par_kon_CR*const_species_ca*x(23)-global_par_koff_CR*x(41));

% Reaction: id = ca_binding_to_cam_RR_AC_rbp_on_site_D, name = ca binding to cam_RR_AC_rbp on site D
	reaction_ca_binding_to_cam_RR_AC_rbp_on_site_D=compartment_cytosol*(global_par_kon_DR*const_species_ca*x(20)-global_par_koff_DR*x(41));

% Reaction: id = tbp_binding_to_cam_RR_ACD_0, name = tbp binding to cam_RR_ACD_0
	reaction_tbp_binding_to_cam_RR_ACD_0=compartment_cytosol*(global_par_kon_tbp*x(194)*x(40)-global_par_koff_tbp_RR*x(42));

% Reaction: id = ca_binding_to_cam_RR_CD_tbp_on_site_A, name = ca binding to cam_RR_CD_tbp on site A
	reaction_ca_binding_to_cam_RR_CD_tbp_on_site_A=compartment_cytosol*(global_par_kon_AR*const_species_ca*x(33)-global_par_koff_AR*x(42));

% Reaction: id = ca_binding_to_cam_RR_AD_tbp_on_site_C, name = ca binding to cam_RR_AD_tbp on site C
	reaction_ca_binding_to_cam_RR_AD_tbp_on_site_C=compartment_cytosol*(global_par_kon_CR*const_species_ca*x(24)-global_par_koff_CR*x(42));

% Reaction: id = ca_binding_to_cam_RR_AC_tbp_on_site_D, name = ca binding to cam_RR_AC_tbp on site D
	reaction_ca_binding_to_cam_RR_AC_tbp_on_site_D=compartment_cytosol*(global_par_kon_DR*const_species_ca*x(21)-global_par_koff_DR*x(42));

% Reaction: id = ca_binding_to_cam_RR_CD_0_on_site_B, name = ca binding to cam_RR_CD_0 on site B
	reaction_ca_binding_to_cam_RR_CD_0_on_site_B=compartment_cytosol*(global_par_kon_BR*const_species_ca*x(31)-global_par_koff_BR*x(43));

% Reaction: id = ca_binding_to_cam_RR_BD_0_on_site_C, name = ca binding to cam_RR_BD_0 on site C
	reaction_ca_binding_to_cam_RR_BD_0_on_site_C=compartment_cytosol*(global_par_kon_CR*const_species_ca*x(28)-global_par_koff_CR*x(43));

% Reaction: id = ca_binding_to_cam_RR_BC_0_on_site_D, name = ca binding to cam_RR_BC_0 on site D
	reaction_ca_binding_to_cam_RR_BC_0_on_site_D=compartment_cytosol*(global_par_kon_DR*const_species_ca*x(25)-global_par_koff_DR*x(43));

% Reaction: id = rbp_binding_to_cam_RR_BCD_0, name = rbp binding to cam_RR_BCD_0
	reaction_rbp_binding_to_cam_RR_BCD_0=compartment_cytosol*(global_par_kon_rbp*x(193)*x(43)-global_par_koff_rbp_RR*x(44));

% Reaction: id = ca_binding_to_cam_RR_CD_rbp_on_site_B, name = ca binding to cam_RR_CD_rbp on site B
	reaction_ca_binding_to_cam_RR_CD_rbp_on_site_B=compartment_cytosol*(global_par_kon_BR*const_species_ca*x(32)-global_par_koff_BR*x(44));

% Reaction: id = ca_binding_to_cam_RR_BD_rbp_on_site_C, name = ca binding to cam_RR_BD_rbp on site C
	reaction_ca_binding_to_cam_RR_BD_rbp_on_site_C=compartment_cytosol*(global_par_kon_CR*const_species_ca*x(29)-global_par_koff_CR*x(44));

% Reaction: id = ca_binding_to_cam_RR_BC_rbp_on_site_D, name = ca binding to cam_RR_BC_rbp on site D
	reaction_ca_binding_to_cam_RR_BC_rbp_on_site_D=compartment_cytosol*(global_par_kon_DR*const_species_ca*x(26)-global_par_koff_DR*x(44));

% Reaction: id = tbp_binding_to_cam_RR_BCD_0, name = tbp binding to cam_RR_BCD_0
	reaction_tbp_binding_to_cam_RR_BCD_0=compartment_cytosol*(global_par_kon_tbp*x(194)*x(43)-global_par_koff_tbp_RR*x(45));

% Reaction: id = ca_binding_to_cam_RR_CD_tbp_on_site_B, name = ca binding to cam_RR_CD_tbp on site B
	reaction_ca_binding_to_cam_RR_CD_tbp_on_site_B=compartment_cytosol*(global_par_kon_BR*const_species_ca*x(33)-global_par_koff_BR*x(45));

% Reaction: id = ca_binding_to_cam_RR_BD_tbp_on_site_C, name = ca binding to cam_RR_BD_tbp on site C
	reaction_ca_binding_to_cam_RR_BD_tbp_on_site_C=compartment_cytosol*(global_par_kon_CR*const_species_ca*x(30)-global_par_koff_CR*x(45));

% Reaction: id = ca_binding_to_cam_RR_BC_tbp_on_site_D, name = ca binding to cam_RR_BC_tbp on site D
	reaction_ca_binding_to_cam_RR_BC_tbp_on_site_D=compartment_cytosol*(global_par_kon_DR*const_species_ca*x(27)-global_par_koff_DR*x(45));

% Reaction: id = ca_binding_to_cam_RR_BCD_0_on_site_A, name = ca binding to cam_RR_BCD_0 on site A
	reaction_ca_binding_to_cam_RR_BCD_0_on_site_A=compartment_cytosol*(global_par_kon_AR*const_species_ca*x(43)-global_par_koff_AR*x(46));

% Reaction: id = ca_binding_to_cam_RR_ACD_0_on_site_B, name = ca binding to cam_RR_ACD_0 on site B
	reaction_ca_binding_to_cam_RR_ACD_0_on_site_B=compartment_cytosol*(global_par_kon_BR*const_species_ca*x(40)-global_par_koff_BR*x(46));

% Reaction: id = ca_binding_to_cam_RR_ABD_0_on_site_C, name = ca binding to cam_RR_ABD_0 on site C
	reaction_ca_binding_to_cam_RR_ABD_0_on_site_C=compartment_cytosol*(global_par_kon_CR*const_species_ca*x(37)-global_par_koff_CR*x(46));

% Reaction: id = ca_binding_to_cam_RR_ABC_0_on_site_D, name = ca binding to cam_RR_ABC_0 on site D
	reaction_ca_binding_to_cam_RR_ABC_0_on_site_D=compartment_cytosol*(global_par_kon_DR*const_species_ca*x(34)-global_par_koff_DR*x(46));

% Reaction: id = rbp_binding_to_cam_RR_ABCD_0, name = rbp binding to cam_RR_ABCD_0
	reaction_rbp_binding_to_cam_RR_ABCD_0=compartment_cytosol*(global_par_kon_rbp*x(193)*x(46)-global_par_koff_rbp_RR*x(47));

% Reaction: id = ca_binding_to_cam_RR_BCD_rbp_on_site_A, name = ca binding to cam_RR_BCD_rbp on site A
	reaction_ca_binding_to_cam_RR_BCD_rbp_on_site_A=compartment_cytosol*(global_par_kon_AR*const_species_ca*x(44)-global_par_koff_AR*x(47));

% Reaction: id = ca_binding_to_cam_RR_ACD_rbp_on_site_B, name = ca binding to cam_RR_ACD_rbp on site B
	reaction_ca_binding_to_cam_RR_ACD_rbp_on_site_B=compartment_cytosol*(global_par_kon_BR*const_species_ca*x(41)-global_par_koff_BR*x(47));

% Reaction: id = ca_binding_to_cam_RR_ABD_rbp_on_site_C, name = ca binding to cam_RR_ABD_rbp on site C
	reaction_ca_binding_to_cam_RR_ABD_rbp_on_site_C=compartment_cytosol*(global_par_kon_CR*const_species_ca*x(38)-global_par_koff_CR*x(47));

% Reaction: id = ca_binding_to_cam_RR_ABC_rbp_on_site_D, name = ca binding to cam_RR_ABC_rbp on site D
	reaction_ca_binding_to_cam_RR_ABC_rbp_on_site_D=compartment_cytosol*(global_par_kon_DR*const_species_ca*x(35)-global_par_koff_DR*x(47));

% Reaction: id = tbp_binding_to_cam_RR_ABCD_0, name = tbp binding to cam_RR_ABCD_0
	reaction_tbp_binding_to_cam_RR_ABCD_0=compartment_cytosol*(global_par_kon_tbp*x(194)*x(46)-global_par_koff_tbp_RR*x(48));

% Reaction: id = ca_binding_to_cam_RR_BCD_tbp_on_site_A, name = ca binding to cam_RR_BCD_tbp on site A
	reaction_ca_binding_to_cam_RR_BCD_tbp_on_site_A=compartment_cytosol*(global_par_kon_AR*const_species_ca*x(45)-global_par_koff_AR*x(48));

% Reaction: id = ca_binding_to_cam_RR_ACD_tbp_on_site_B, name = ca binding to cam_RR_ACD_tbp on site B
	reaction_ca_binding_to_cam_RR_ACD_tbp_on_site_B=compartment_cytosol*(global_par_kon_BR*const_species_ca*x(42)-global_par_koff_BR*x(48));

% Reaction: id = ca_binding_to_cam_RR_ABD_tbp_on_site_C, name = ca binding to cam_RR_ABD_tbp on site C
	reaction_ca_binding_to_cam_RR_ABD_tbp_on_site_C=compartment_cytosol*(global_par_kon_CR*const_species_ca*x(39)-global_par_koff_CR*x(48));

% Reaction: id = ca_binding_to_cam_RR_ABC_tbp_on_site_D, name = ca binding to cam_RR_ABC_tbp on site D
	reaction_ca_binding_to_cam_RR_ABC_tbp_on_site_D=compartment_cytosol*(global_par_kon_DR*const_species_ca*x(36)-global_par_koff_DR*x(48));

% Reaction: id = rbp_binding_to_cam_RT_0_0, name = rbp binding to cam_RT_0_0
	reaction_rbp_binding_to_cam_RT_0_0=compartment_cytosol*(global_par_kon_rbp*x(193)*x(49)-global_par_koff_rbp_RT*x(50));

% Reaction: id = tbp_binding_to_cam_RT_0_0, name = tbp binding to cam_RT_0_0
	reaction_tbp_binding_to_cam_RT_0_0=compartment_cytosol*(global_par_kon_tbp*x(194)*x(49)-global_par_koff_tbp_RT*x(51));

% Reaction: id = ca_binding_to_cam_RT_0_0_on_site_A, name = ca binding to cam_RT_0_0 on site A
	reaction_ca_binding_to_cam_RT_0_0_on_site_A=compartment_cytosol*(global_par_kon_AR*const_species_ca*x(49)-global_par_koff_AR*x(52));

% Reaction: id = rbp_binding_to_cam_RT_A_0, name = rbp binding to cam_RT_A_0
	reaction_rbp_binding_to_cam_RT_A_0=compartment_cytosol*(global_par_kon_rbp*x(193)*x(52)-global_par_koff_rbp_RT*x(53));

% Reaction: id = ca_binding_to_cam_RT_0_rbp_on_site_A, name = ca binding to cam_RT_0_rbp on site A
	reaction_ca_binding_to_cam_RT_0_rbp_on_site_A=compartment_cytosol*(global_par_kon_AR*const_species_ca*x(50)-global_par_koff_AR*x(53));

% Reaction: id = tbp_binding_to_cam_RT_A_0, name = tbp binding to cam_RT_A_0
	reaction_tbp_binding_to_cam_RT_A_0=compartment_cytosol*(global_par_kon_tbp*x(194)*x(52)-global_par_koff_tbp_RT*x(54));

% Reaction: id = ca_binding_to_cam_RT_0_tbp_on_site_A, name = ca binding to cam_RT_0_tbp on site A
	reaction_ca_binding_to_cam_RT_0_tbp_on_site_A=compartment_cytosol*(global_par_kon_AR*const_species_ca*x(51)-global_par_koff_AR*x(54));

% Reaction: id = ca_binding_to_cam_RT_0_0_on_site_B, name = ca binding to cam_RT_0_0 on site B
	reaction_ca_binding_to_cam_RT_0_0_on_site_B=compartment_cytosol*(global_par_kon_BR*const_species_ca*x(49)-global_par_koff_BR*x(55));

% Reaction: id = rbp_binding_to_cam_RT_B_0, name = rbp binding to cam_RT_B_0
	reaction_rbp_binding_to_cam_RT_B_0=compartment_cytosol*(global_par_kon_rbp*x(193)*x(55)-global_par_koff_rbp_RT*x(56));

% Reaction: id = ca_binding_to_cam_RT_0_rbp_on_site_B, name = ca binding to cam_RT_0_rbp on site B
	reaction_ca_binding_to_cam_RT_0_rbp_on_site_B=compartment_cytosol*(global_par_kon_BR*const_species_ca*x(50)-global_par_koff_BR*x(56));

% Reaction: id = tbp_binding_to_cam_RT_B_0, name = tbp binding to cam_RT_B_0
	reaction_tbp_binding_to_cam_RT_B_0=compartment_cytosol*(global_par_kon_tbp*x(194)*x(55)-global_par_koff_tbp_RT*x(57));

% Reaction: id = ca_binding_to_cam_RT_0_tbp_on_site_B, name = ca binding to cam_RT_0_tbp on site B
	reaction_ca_binding_to_cam_RT_0_tbp_on_site_B=compartment_cytosol*(global_par_kon_BR*const_species_ca*x(51)-global_par_koff_BR*x(57));

% Reaction: id = ca_binding_to_cam_RT_0_0_on_site_C, name = ca binding to cam_RT_0_0 on site C
	reaction_ca_binding_to_cam_RT_0_0_on_site_C=compartment_cytosol*(global_par_kon_CT*const_species_ca*x(49)-global_par_koff_CT*x(58));

% Reaction: id = rbp_binding_to_cam_RT_C_0, name = rbp binding to cam_RT_C_0
	reaction_rbp_binding_to_cam_RT_C_0=compartment_cytosol*(global_par_kon_rbp*x(193)*x(58)-global_par_koff_rbp_RT*x(59));

% Reaction: id = ca_binding_to_cam_RT_0_rbp_on_site_C, name = ca binding to cam_RT_0_rbp on site C
	reaction_ca_binding_to_cam_RT_0_rbp_on_site_C=compartment_cytosol*(global_par_kon_CT*const_species_ca*x(50)-global_par_koff_CT*x(59));

% Reaction: id = tbp_binding_to_cam_RT_C_0, name = tbp binding to cam_RT_C_0
	reaction_tbp_binding_to_cam_RT_C_0=compartment_cytosol*(global_par_kon_tbp*x(194)*x(58)-global_par_koff_tbp_RT*x(60));

% Reaction: id = ca_binding_to_cam_RT_0_tbp_on_site_C, name = ca binding to cam_RT_0_tbp on site C
	reaction_ca_binding_to_cam_RT_0_tbp_on_site_C=compartment_cytosol*(global_par_kon_CT*const_species_ca*x(51)-global_par_koff_CT*x(60));

% Reaction: id = ca_binding_to_cam_RT_0_0_on_site_D, name = ca binding to cam_RT_0_0 on site D
	reaction_ca_binding_to_cam_RT_0_0_on_site_D=compartment_cytosol*(global_par_kon_DT*const_species_ca*x(49)-global_par_koff_DT*x(61));

% Reaction: id = rbp_binding_to_cam_RT_D_0, name = rbp binding to cam_RT_D_0
	reaction_rbp_binding_to_cam_RT_D_0=compartment_cytosol*(global_par_kon_rbp*x(193)*x(61)-global_par_koff_rbp_RT*x(62));

% Reaction: id = ca_binding_to_cam_RT_0_rbp_on_site_D, name = ca binding to cam_RT_0_rbp on site D
	reaction_ca_binding_to_cam_RT_0_rbp_on_site_D=compartment_cytosol*(global_par_kon_DT*const_species_ca*x(50)-global_par_koff_DT*x(62));

% Reaction: id = tbp_binding_to_cam_RT_D_0, name = tbp binding to cam_RT_D_0
	reaction_tbp_binding_to_cam_RT_D_0=compartment_cytosol*(global_par_kon_tbp*x(194)*x(61)-global_par_koff_tbp_RT*x(63));

% Reaction: id = ca_binding_to_cam_RT_0_tbp_on_site_D, name = ca binding to cam_RT_0_tbp on site D
	reaction_ca_binding_to_cam_RT_0_tbp_on_site_D=compartment_cytosol*(global_par_kon_DT*const_species_ca*x(51)-global_par_koff_DT*x(63));

% Reaction: id = ca_binding_to_cam_RT_B_0_on_site_A, name = ca binding to cam_RT_B_0 on site A
	reaction_ca_binding_to_cam_RT_B_0_on_site_A=compartment_cytosol*(global_par_kon_AR*const_species_ca*x(55)-global_par_koff_AR*x(64));

% Reaction: id = ca_binding_to_cam_RT_A_0_on_site_B, name = ca binding to cam_RT_A_0 on site B
	reaction_ca_binding_to_cam_RT_A_0_on_site_B=compartment_cytosol*(global_par_kon_BR*const_species_ca*x(52)-global_par_koff_BR*x(64));

% Reaction: id = rbp_binding_to_cam_RT_AB_0, name = rbp binding to cam_RT_AB_0
	reaction_rbp_binding_to_cam_RT_AB_0=compartment_cytosol*(global_par_kon_rbp*x(193)*x(64)-global_par_koff_rbp_RT*x(65));

% Reaction: id = ca_binding_to_cam_RT_B_rbp_on_site_A, name = ca binding to cam_RT_B_rbp on site A
	reaction_ca_binding_to_cam_RT_B_rbp_on_site_A=compartment_cytosol*(global_par_kon_AR*const_species_ca*x(56)-global_par_koff_AR*x(65));

% Reaction: id = ca_binding_to_cam_RT_A_rbp_on_site_B, name = ca binding to cam_RT_A_rbp on site B
	reaction_ca_binding_to_cam_RT_A_rbp_on_site_B=compartment_cytosol*(global_par_kon_BR*const_species_ca*x(53)-global_par_koff_BR*x(65));

% Reaction: id = tbp_binding_to_cam_RT_AB_0, name = tbp binding to cam_RT_AB_0
	reaction_tbp_binding_to_cam_RT_AB_0=compartment_cytosol*(global_par_kon_tbp*x(194)*x(64)-global_par_koff_tbp_RT*x(66));

% Reaction: id = ca_binding_to_cam_RT_B_tbp_on_site_A, name = ca binding to cam_RT_B_tbp on site A
	reaction_ca_binding_to_cam_RT_B_tbp_on_site_A=compartment_cytosol*(global_par_kon_AR*const_species_ca*x(57)-global_par_koff_AR*x(66));

% Reaction: id = ca_binding_to_cam_RT_A_tbp_on_site_B, name = ca binding to cam_RT_A_tbp on site B
	reaction_ca_binding_to_cam_RT_A_tbp_on_site_B=compartment_cytosol*(global_par_kon_BR*const_species_ca*x(54)-global_par_koff_BR*x(66));

% Reaction: id = ca_binding_to_cam_RT_C_0_on_site_A, name = ca binding to cam_RT_C_0 on site A
	reaction_ca_binding_to_cam_RT_C_0_on_site_A=compartment_cytosol*(global_par_kon_AR*const_species_ca*x(58)-global_par_koff_AR*x(67));

% Reaction: id = ca_binding_to_cam_RT_A_0_on_site_C, name = ca binding to cam_RT_A_0 on site C
	reaction_ca_binding_to_cam_RT_A_0_on_site_C=compartment_cytosol*(global_par_kon_CT*const_species_ca*x(52)-global_par_koff_CT*x(67));

% Reaction: id = rbp_binding_to_cam_RT_AC_0, name = rbp binding to cam_RT_AC_0
	reaction_rbp_binding_to_cam_RT_AC_0=compartment_cytosol*(global_par_kon_rbp*x(193)*x(67)-global_par_koff_rbp_RT*x(68));

% Reaction: id = ca_binding_to_cam_RT_C_rbp_on_site_A, name = ca binding to cam_RT_C_rbp on site A
	reaction_ca_binding_to_cam_RT_C_rbp_on_site_A=compartment_cytosol*(global_par_kon_AR*const_species_ca*x(59)-global_par_koff_AR*x(68));

% Reaction: id = ca_binding_to_cam_RT_A_rbp_on_site_C, name = ca binding to cam_RT_A_rbp on site C
	reaction_ca_binding_to_cam_RT_A_rbp_on_site_C=compartment_cytosol*(global_par_kon_CT*const_species_ca*x(53)-global_par_koff_CT*x(68));

% Reaction: id = tbp_binding_to_cam_RT_AC_0, name = tbp binding to cam_RT_AC_0
	reaction_tbp_binding_to_cam_RT_AC_0=compartment_cytosol*(global_par_kon_tbp*x(194)*x(67)-global_par_koff_tbp_RT*x(69));

% Reaction: id = ca_binding_to_cam_RT_C_tbp_on_site_A, name = ca binding to cam_RT_C_tbp on site A
	reaction_ca_binding_to_cam_RT_C_tbp_on_site_A=compartment_cytosol*(global_par_kon_AR*const_species_ca*x(60)-global_par_koff_AR*x(69));

% Reaction: id = ca_binding_to_cam_RT_A_tbp_on_site_C, name = ca binding to cam_RT_A_tbp on site C
	reaction_ca_binding_to_cam_RT_A_tbp_on_site_C=compartment_cytosol*(global_par_kon_CT*const_species_ca*x(54)-global_par_koff_CT*x(69));

% Reaction: id = ca_binding_to_cam_RT_D_0_on_site_A, name = ca binding to cam_RT_D_0 on site A
	reaction_ca_binding_to_cam_RT_D_0_on_site_A=compartment_cytosol*(global_par_kon_AR*const_species_ca*x(61)-global_par_koff_AR*x(70));

% Reaction: id = ca_binding_to_cam_RT_A_0_on_site_D, name = ca binding to cam_RT_A_0 on site D
	reaction_ca_binding_to_cam_RT_A_0_on_site_D=compartment_cytosol*(global_par_kon_DT*const_species_ca*x(52)-global_par_koff_DT*x(70));

% Reaction: id = rbp_binding_to_cam_RT_AD_0, name = rbp binding to cam_RT_AD_0
	reaction_rbp_binding_to_cam_RT_AD_0=compartment_cytosol*(global_par_kon_rbp*x(193)*x(70)-global_par_koff_rbp_RT*x(71));

% Reaction: id = ca_binding_to_cam_RT_D_rbp_on_site_A, name = ca binding to cam_RT_D_rbp on site A
	reaction_ca_binding_to_cam_RT_D_rbp_on_site_A=compartment_cytosol*(global_par_kon_AR*const_species_ca*x(62)-global_par_koff_AR*x(71));

% Reaction: id = ca_binding_to_cam_RT_A_rbp_on_site_D, name = ca binding to cam_RT_A_rbp on site D
	reaction_ca_binding_to_cam_RT_A_rbp_on_site_D=compartment_cytosol*(global_par_kon_DT*const_species_ca*x(53)-global_par_koff_DT*x(71));

% Reaction: id = tbp_binding_to_cam_RT_AD_0, name = tbp binding to cam_RT_AD_0
	reaction_tbp_binding_to_cam_RT_AD_0=compartment_cytosol*(global_par_kon_tbp*x(194)*x(70)-global_par_koff_tbp_RT*x(72));

% Reaction: id = ca_binding_to_cam_RT_D_tbp_on_site_A, name = ca binding to cam_RT_D_tbp on site A
	reaction_ca_binding_to_cam_RT_D_tbp_on_site_A=compartment_cytosol*(global_par_kon_AR*const_species_ca*x(63)-global_par_koff_AR*x(72));

% Reaction: id = ca_binding_to_cam_RT_A_tbp_on_site_D, name = ca binding to cam_RT_A_tbp on site D
	reaction_ca_binding_to_cam_RT_A_tbp_on_site_D=compartment_cytosol*(global_par_kon_DT*const_species_ca*x(54)-global_par_koff_DT*x(72));

% Reaction: id = ca_binding_to_cam_RT_C_0_on_site_B, name = ca binding to cam_RT_C_0 on site B
	reaction_ca_binding_to_cam_RT_C_0_on_site_B=compartment_cytosol*(global_par_kon_BR*const_species_ca*x(58)-global_par_koff_BR*x(73));

% Reaction: id = ca_binding_to_cam_RT_B_0_on_site_C, name = ca binding to cam_RT_B_0 on site C
	reaction_ca_binding_to_cam_RT_B_0_on_site_C=compartment_cytosol*(global_par_kon_CT*const_species_ca*x(55)-global_par_koff_CT*x(73));

% Reaction: id = rbp_binding_to_cam_RT_BC_0, name = rbp binding to cam_RT_BC_0
	reaction_rbp_binding_to_cam_RT_BC_0=compartment_cytosol*(global_par_kon_rbp*x(193)*x(73)-global_par_koff_rbp_RT*x(74));

% Reaction: id = ca_binding_to_cam_RT_C_rbp_on_site_B, name = ca binding to cam_RT_C_rbp on site B
	reaction_ca_binding_to_cam_RT_C_rbp_on_site_B=compartment_cytosol*(global_par_kon_BR*const_species_ca*x(59)-global_par_koff_BR*x(74));

% Reaction: id = ca_binding_to_cam_RT_B_rbp_on_site_C, name = ca binding to cam_RT_B_rbp on site C
	reaction_ca_binding_to_cam_RT_B_rbp_on_site_C=compartment_cytosol*(global_par_kon_CT*const_species_ca*x(56)-global_par_koff_CT*x(74));

% Reaction: id = tbp_binding_to_cam_RT_BC_0, name = tbp binding to cam_RT_BC_0
	reaction_tbp_binding_to_cam_RT_BC_0=compartment_cytosol*(global_par_kon_tbp*x(194)*x(73)-global_par_koff_tbp_RT*x(75));

% Reaction: id = ca_binding_to_cam_RT_C_tbp_on_site_B, name = ca binding to cam_RT_C_tbp on site B
	reaction_ca_binding_to_cam_RT_C_tbp_on_site_B=compartment_cytosol*(global_par_kon_BR*const_species_ca*x(60)-global_par_koff_BR*x(75));

% Reaction: id = ca_binding_to_cam_RT_B_tbp_on_site_C, name = ca binding to cam_RT_B_tbp on site C
	reaction_ca_binding_to_cam_RT_B_tbp_on_site_C=compartment_cytosol*(global_par_kon_CT*const_species_ca*x(57)-global_par_koff_CT*x(75));

% Reaction: id = ca_binding_to_cam_RT_D_0_on_site_B, name = ca binding to cam_RT_D_0 on site B
	reaction_ca_binding_to_cam_RT_D_0_on_site_B=compartment_cytosol*(global_par_kon_BR*const_species_ca*x(61)-global_par_koff_BR*x(76));

% Reaction: id = ca_binding_to_cam_RT_B_0_on_site_D, name = ca binding to cam_RT_B_0 on site D
	reaction_ca_binding_to_cam_RT_B_0_on_site_D=compartment_cytosol*(global_par_kon_DT*const_species_ca*x(55)-global_par_koff_DT*x(76));

% Reaction: id = rbp_binding_to_cam_RT_BD_0, name = rbp binding to cam_RT_BD_0
	reaction_rbp_binding_to_cam_RT_BD_0=compartment_cytosol*(global_par_kon_rbp*x(193)*x(76)-global_par_koff_rbp_RT*x(77));

% Reaction: id = ca_binding_to_cam_RT_D_rbp_on_site_B, name = ca binding to cam_RT_D_rbp on site B
	reaction_ca_binding_to_cam_RT_D_rbp_on_site_B=compartment_cytosol*(global_par_kon_BR*const_species_ca*x(62)-global_par_koff_BR*x(77));

% Reaction: id = ca_binding_to_cam_RT_B_rbp_on_site_D, name = ca binding to cam_RT_B_rbp on site D
	reaction_ca_binding_to_cam_RT_B_rbp_on_site_D=compartment_cytosol*(global_par_kon_DT*const_species_ca*x(56)-global_par_koff_DT*x(77));

% Reaction: id = tbp_binding_to_cam_RT_BD_0, name = tbp binding to cam_RT_BD_0
	reaction_tbp_binding_to_cam_RT_BD_0=compartment_cytosol*(global_par_kon_tbp*x(194)*x(76)-global_par_koff_tbp_RT*x(78));

% Reaction: id = ca_binding_to_cam_RT_D_tbp_on_site_B, name = ca binding to cam_RT_D_tbp on site B
	reaction_ca_binding_to_cam_RT_D_tbp_on_site_B=compartment_cytosol*(global_par_kon_BR*const_species_ca*x(63)-global_par_koff_BR*x(78));

% Reaction: id = ca_binding_to_cam_RT_B_tbp_on_site_D, name = ca binding to cam_RT_B_tbp on site D
	reaction_ca_binding_to_cam_RT_B_tbp_on_site_D=compartment_cytosol*(global_par_kon_DT*const_species_ca*x(57)-global_par_koff_DT*x(78));

% Reaction: id = ca_binding_to_cam_RT_D_0_on_site_C, name = ca binding to cam_RT_D_0 on site C
	reaction_ca_binding_to_cam_RT_D_0_on_site_C=compartment_cytosol*(global_par_kon_CT*const_species_ca*x(61)-global_par_koff_CT*x(79));

% Reaction: id = ca_binding_to_cam_RT_C_0_on_site_D, name = ca binding to cam_RT_C_0 on site D
	reaction_ca_binding_to_cam_RT_C_0_on_site_D=compartment_cytosol*(global_par_kon_DT*const_species_ca*x(58)-global_par_koff_DT*x(79));

% Reaction: id = rbp_binding_to_cam_RT_CD_0, name = rbp binding to cam_RT_CD_0
	reaction_rbp_binding_to_cam_RT_CD_0=compartment_cytosol*(global_par_kon_rbp*x(193)*x(79)-global_par_koff_rbp_RT*x(80));

% Reaction: id = ca_binding_to_cam_RT_D_rbp_on_site_C, name = ca binding to cam_RT_D_rbp on site C
	reaction_ca_binding_to_cam_RT_D_rbp_on_site_C=compartment_cytosol*(global_par_kon_CT*const_species_ca*x(62)-global_par_koff_CT*x(80));

% Reaction: id = ca_binding_to_cam_RT_C_rbp_on_site_D, name = ca binding to cam_RT_C_rbp on site D
	reaction_ca_binding_to_cam_RT_C_rbp_on_site_D=compartment_cytosol*(global_par_kon_DT*const_species_ca*x(59)-global_par_koff_DT*x(80));

% Reaction: id = tbp_binding_to_cam_RT_CD_0, name = tbp binding to cam_RT_CD_0
	reaction_tbp_binding_to_cam_RT_CD_0=compartment_cytosol*(global_par_kon_tbp*x(194)*x(79)-global_par_koff_tbp_RT*x(81));

% Reaction: id = ca_binding_to_cam_RT_D_tbp_on_site_C, name = ca binding to cam_RT_D_tbp on site C
	reaction_ca_binding_to_cam_RT_D_tbp_on_site_C=compartment_cytosol*(global_par_kon_CT*const_species_ca*x(63)-global_par_koff_CT*x(81));

% Reaction: id = ca_binding_to_cam_RT_C_tbp_on_site_D, name = ca binding to cam_RT_C_tbp on site D
	reaction_ca_binding_to_cam_RT_C_tbp_on_site_D=compartment_cytosol*(global_par_kon_DT*const_species_ca*x(60)-global_par_koff_DT*x(81));

% Reaction: id = ca_binding_to_cam_RT_BC_0_on_site_A, name = ca binding to cam_RT_BC_0 on site A
	reaction_ca_binding_to_cam_RT_BC_0_on_site_A=compartment_cytosol*(global_par_kon_AR*const_species_ca*x(73)-global_par_koff_AR*x(82));

% Reaction: id = ca_binding_to_cam_RT_AC_0_on_site_B, name = ca binding to cam_RT_AC_0 on site B
	reaction_ca_binding_to_cam_RT_AC_0_on_site_B=compartment_cytosol*(global_par_kon_BR*const_species_ca*x(67)-global_par_koff_BR*x(82));

% Reaction: id = ca_binding_to_cam_RT_AB_0_on_site_C, name = ca binding to cam_RT_AB_0 on site C
	reaction_ca_binding_to_cam_RT_AB_0_on_site_C=compartment_cytosol*(global_par_kon_CT*const_species_ca*x(64)-global_par_koff_CT*x(82));

% Reaction: id = rbp_binding_to_cam_RT_ABC_0, name = rbp binding to cam_RT_ABC_0
	reaction_rbp_binding_to_cam_RT_ABC_0=compartment_cytosol*(global_par_kon_rbp*x(193)*x(82)-global_par_koff_rbp_RT*x(83));

% Reaction: id = ca_binding_to_cam_RT_BC_rbp_on_site_A, name = ca binding to cam_RT_BC_rbp on site A
	reaction_ca_binding_to_cam_RT_BC_rbp_on_site_A=compartment_cytosol*(global_par_kon_AR*const_species_ca*x(74)-global_par_koff_AR*x(83));

% Reaction: id = ca_binding_to_cam_RT_AC_rbp_on_site_B, name = ca binding to cam_RT_AC_rbp on site B
	reaction_ca_binding_to_cam_RT_AC_rbp_on_site_B=compartment_cytosol*(global_par_kon_BR*const_species_ca*x(68)-global_par_koff_BR*x(83));

% Reaction: id = ca_binding_to_cam_RT_AB_rbp_on_site_C, name = ca binding to cam_RT_AB_rbp on site C
	reaction_ca_binding_to_cam_RT_AB_rbp_on_site_C=compartment_cytosol*(global_par_kon_CT*const_species_ca*x(65)-global_par_koff_CT*x(83));

% Reaction: id = tbp_binding_to_cam_RT_ABC_0, name = tbp binding to cam_RT_ABC_0
	reaction_tbp_binding_to_cam_RT_ABC_0=compartment_cytosol*(global_par_kon_tbp*x(194)*x(82)-global_par_koff_tbp_RT*x(84));

% Reaction: id = ca_binding_to_cam_RT_BC_tbp_on_site_A, name = ca binding to cam_RT_BC_tbp on site A
	reaction_ca_binding_to_cam_RT_BC_tbp_on_site_A=compartment_cytosol*(global_par_kon_AR*const_species_ca*x(75)-global_par_koff_AR*x(84));

% Reaction: id = ca_binding_to_cam_RT_AC_tbp_on_site_B, name = ca binding to cam_RT_AC_tbp on site B
	reaction_ca_binding_to_cam_RT_AC_tbp_on_site_B=compartment_cytosol*(global_par_kon_BR*const_species_ca*x(69)-global_par_koff_BR*x(84));

% Reaction: id = ca_binding_to_cam_RT_AB_tbp_on_site_C, name = ca binding to cam_RT_AB_tbp on site C
	reaction_ca_binding_to_cam_RT_AB_tbp_on_site_C=compartment_cytosol*(global_par_kon_CT*const_species_ca*x(66)-global_par_koff_CT*x(84));

% Reaction: id = ca_binding_to_cam_RT_BD_0_on_site_A, name = ca binding to cam_RT_BD_0 on site A
	reaction_ca_binding_to_cam_RT_BD_0_on_site_A=compartment_cytosol*(global_par_kon_AR*const_species_ca*x(76)-global_par_koff_AR*x(85));

% Reaction: id = ca_binding_to_cam_RT_AD_0_on_site_B, name = ca binding to cam_RT_AD_0 on site B
	reaction_ca_binding_to_cam_RT_AD_0_on_site_B=compartment_cytosol*(global_par_kon_BR*const_species_ca*x(70)-global_par_koff_BR*x(85));

% Reaction: id = ca_binding_to_cam_RT_AB_0_on_site_D, name = ca binding to cam_RT_AB_0 on site D
	reaction_ca_binding_to_cam_RT_AB_0_on_site_D=compartment_cytosol*(global_par_kon_DT*const_species_ca*x(64)-global_par_koff_DT*x(85));

% Reaction: id = rbp_binding_to_cam_RT_ABD_0, name = rbp binding to cam_RT_ABD_0
	reaction_rbp_binding_to_cam_RT_ABD_0=compartment_cytosol*(global_par_kon_rbp*x(193)*x(85)-global_par_koff_rbp_RT*x(86));

% Reaction: id = ca_binding_to_cam_RT_BD_rbp_on_site_A, name = ca binding to cam_RT_BD_rbp on site A
	reaction_ca_binding_to_cam_RT_BD_rbp_on_site_A=compartment_cytosol*(global_par_kon_AR*const_species_ca*x(77)-global_par_koff_AR*x(86));

% Reaction: id = ca_binding_to_cam_RT_AD_rbp_on_site_B, name = ca binding to cam_RT_AD_rbp on site B
	reaction_ca_binding_to_cam_RT_AD_rbp_on_site_B=compartment_cytosol*(global_par_kon_BR*const_species_ca*x(71)-global_par_koff_BR*x(86));

% Reaction: id = ca_binding_to_cam_RT_AB_rbp_on_site_D, name = ca binding to cam_RT_AB_rbp on site D
	reaction_ca_binding_to_cam_RT_AB_rbp_on_site_D=compartment_cytosol*(global_par_kon_DT*const_species_ca*x(65)-global_par_koff_DT*x(86));

% Reaction: id = tbp_binding_to_cam_RT_ABD_0, name = tbp binding to cam_RT_ABD_0
	reaction_tbp_binding_to_cam_RT_ABD_0=compartment_cytosol*(global_par_kon_tbp*x(194)*x(85)-global_par_koff_tbp_RT*x(87));

% Reaction: id = ca_binding_to_cam_RT_BD_tbp_on_site_A, name = ca binding to cam_RT_BD_tbp on site A
	reaction_ca_binding_to_cam_RT_BD_tbp_on_site_A=compartment_cytosol*(global_par_kon_AR*const_species_ca*x(78)-global_par_koff_AR*x(87));

% Reaction: id = ca_binding_to_cam_RT_AD_tbp_on_site_B, name = ca binding to cam_RT_AD_tbp on site B
	reaction_ca_binding_to_cam_RT_AD_tbp_on_site_B=compartment_cytosol*(global_par_kon_BR*const_species_ca*x(72)-global_par_koff_BR*x(87));

% Reaction: id = ca_binding_to_cam_RT_AB_tbp_on_site_D, name = ca binding to cam_RT_AB_tbp on site D
	reaction_ca_binding_to_cam_RT_AB_tbp_on_site_D=compartment_cytosol*(global_par_kon_DT*const_species_ca*x(66)-global_par_koff_DT*x(87));

% Reaction: id = ca_binding_to_cam_RT_CD_0_on_site_A, name = ca binding to cam_RT_CD_0 on site A
	reaction_ca_binding_to_cam_RT_CD_0_on_site_A=compartment_cytosol*(global_par_kon_AR*const_species_ca*x(79)-global_par_koff_AR*x(88));

% Reaction: id = ca_binding_to_cam_RT_AD_0_on_site_C, name = ca binding to cam_RT_AD_0 on site C
	reaction_ca_binding_to_cam_RT_AD_0_on_site_C=compartment_cytosol*(global_par_kon_CT*const_species_ca*x(70)-global_par_koff_CT*x(88));

% Reaction: id = ca_binding_to_cam_RT_AC_0_on_site_D, name = ca binding to cam_RT_AC_0 on site D
	reaction_ca_binding_to_cam_RT_AC_0_on_site_D=compartment_cytosol*(global_par_kon_DT*const_species_ca*x(67)-global_par_koff_DT*x(88));

% Reaction: id = rbp_binding_to_cam_RT_ACD_0, name = rbp binding to cam_RT_ACD_0
	reaction_rbp_binding_to_cam_RT_ACD_0=compartment_cytosol*(global_par_kon_rbp*x(193)*x(88)-global_par_koff_rbp_RT*x(89));

% Reaction: id = ca_binding_to_cam_RT_CD_rbp_on_site_A, name = ca binding to cam_RT_CD_rbp on site A
	reaction_ca_binding_to_cam_RT_CD_rbp_on_site_A=compartment_cytosol*(global_par_kon_AR*const_species_ca*x(80)-global_par_koff_AR*x(89));

% Reaction: id = ca_binding_to_cam_RT_AD_rbp_on_site_C, name = ca binding to cam_RT_AD_rbp on site C
	reaction_ca_binding_to_cam_RT_AD_rbp_on_site_C=compartment_cytosol*(global_par_kon_CT*const_species_ca*x(71)-global_par_koff_CT*x(89));

% Reaction: id = ca_binding_to_cam_RT_AC_rbp_on_site_D, name = ca binding to cam_RT_AC_rbp on site D
	reaction_ca_binding_to_cam_RT_AC_rbp_on_site_D=compartment_cytosol*(global_par_kon_DT*const_species_ca*x(68)-global_par_koff_DT*x(89));

% Reaction: id = tbp_binding_to_cam_RT_ACD_0, name = tbp binding to cam_RT_ACD_0
	reaction_tbp_binding_to_cam_RT_ACD_0=compartment_cytosol*(global_par_kon_tbp*x(194)*x(88)-global_par_koff_tbp_RT*x(90));

% Reaction: id = ca_binding_to_cam_RT_CD_tbp_on_site_A, name = ca binding to cam_RT_CD_tbp on site A
	reaction_ca_binding_to_cam_RT_CD_tbp_on_site_A=compartment_cytosol*(global_par_kon_AR*const_species_ca*x(81)-global_par_koff_AR*x(90));

% Reaction: id = ca_binding_to_cam_RT_AD_tbp_on_site_C, name = ca binding to cam_RT_AD_tbp on site C
	reaction_ca_binding_to_cam_RT_AD_tbp_on_site_C=compartment_cytosol*(global_par_kon_CT*const_species_ca*x(72)-global_par_koff_CT*x(90));

% Reaction: id = ca_binding_to_cam_RT_AC_tbp_on_site_D, name = ca binding to cam_RT_AC_tbp on site D
	reaction_ca_binding_to_cam_RT_AC_tbp_on_site_D=compartment_cytosol*(global_par_kon_DT*const_species_ca*x(69)-global_par_koff_DT*x(90));

% Reaction: id = ca_binding_to_cam_RT_CD_0_on_site_B, name = ca binding to cam_RT_CD_0 on site B
	reaction_ca_binding_to_cam_RT_CD_0_on_site_B=compartment_cytosol*(global_par_kon_BR*const_species_ca*x(79)-global_par_koff_BR*x(91));

% Reaction: id = ca_binding_to_cam_RT_BD_0_on_site_C, name = ca binding to cam_RT_BD_0 on site C
	reaction_ca_binding_to_cam_RT_BD_0_on_site_C=compartment_cytosol*(global_par_kon_CT*const_species_ca*x(76)-global_par_koff_CT*x(91));

% Reaction: id = ca_binding_to_cam_RT_BC_0_on_site_D, name = ca binding to cam_RT_BC_0 on site D
	reaction_ca_binding_to_cam_RT_BC_0_on_site_D=compartment_cytosol*(global_par_kon_DT*const_species_ca*x(73)-global_par_koff_DT*x(91));

% Reaction: id = rbp_binding_to_cam_RT_BCD_0, name = rbp binding to cam_RT_BCD_0
	reaction_rbp_binding_to_cam_RT_BCD_0=compartment_cytosol*(global_par_kon_rbp*x(193)*x(91)-global_par_koff_rbp_RT*x(92));

% Reaction: id = ca_binding_to_cam_RT_CD_rbp_on_site_B, name = ca binding to cam_RT_CD_rbp on site B
	reaction_ca_binding_to_cam_RT_CD_rbp_on_site_B=compartment_cytosol*(global_par_kon_BR*const_species_ca*x(80)-global_par_koff_BR*x(92));

% Reaction: id = ca_binding_to_cam_RT_BD_rbp_on_site_C, name = ca binding to cam_RT_BD_rbp on site C
	reaction_ca_binding_to_cam_RT_BD_rbp_on_site_C=compartment_cytosol*(global_par_kon_CT*const_species_ca*x(77)-global_par_koff_CT*x(92));

% Reaction: id = ca_binding_to_cam_RT_BC_rbp_on_site_D, name = ca binding to cam_RT_BC_rbp on site D
	reaction_ca_binding_to_cam_RT_BC_rbp_on_site_D=compartment_cytosol*(global_par_kon_DT*const_species_ca*x(74)-global_par_koff_DT*x(92));

% Reaction: id = tbp_binding_to_cam_RT_BCD_0, name = tbp binding to cam_RT_BCD_0
	reaction_tbp_binding_to_cam_RT_BCD_0=compartment_cytosol*(global_par_kon_tbp*x(194)*x(91)-global_par_koff_tbp_RT*x(93));

% Reaction: id = ca_binding_to_cam_RT_CD_tbp_on_site_B, name = ca binding to cam_RT_CD_tbp on site B
	reaction_ca_binding_to_cam_RT_CD_tbp_on_site_B=compartment_cytosol*(global_par_kon_BR*const_species_ca*x(81)-global_par_koff_BR*x(93));

% Reaction: id = ca_binding_to_cam_RT_BD_tbp_on_site_C, name = ca binding to cam_RT_BD_tbp on site C
	reaction_ca_binding_to_cam_RT_BD_tbp_on_site_C=compartment_cytosol*(global_par_kon_CT*const_species_ca*x(78)-global_par_koff_CT*x(93));

% Reaction: id = ca_binding_to_cam_RT_BC_tbp_on_site_D, name = ca binding to cam_RT_BC_tbp on site D
	reaction_ca_binding_to_cam_RT_BC_tbp_on_site_D=compartment_cytosol*(global_par_kon_DT*const_species_ca*x(75)-global_par_koff_DT*x(93));

% Reaction: id = ca_binding_to_cam_RT_BCD_0_on_site_A, name = ca binding to cam_RT_BCD_0 on site A
	reaction_ca_binding_to_cam_RT_BCD_0_on_site_A=compartment_cytosol*(global_par_kon_AR*const_species_ca*x(91)-global_par_koff_AR*x(94));

% Reaction: id = ca_binding_to_cam_RT_ACD_0_on_site_B, name = ca binding to cam_RT_ACD_0 on site B
	reaction_ca_binding_to_cam_RT_ACD_0_on_site_B=compartment_cytosol*(global_par_kon_BR*const_species_ca*x(88)-global_par_koff_BR*x(94));

% Reaction: id = ca_binding_to_cam_RT_ABD_0_on_site_C, name = ca binding to cam_RT_ABD_0 on site C
	reaction_ca_binding_to_cam_RT_ABD_0_on_site_C=compartment_cytosol*(global_par_kon_CT*const_species_ca*x(85)-global_par_koff_CT*x(94));

% Reaction: id = ca_binding_to_cam_RT_ABC_0_on_site_D, name = ca binding to cam_RT_ABC_0 on site D
	reaction_ca_binding_to_cam_RT_ABC_0_on_site_D=compartment_cytosol*(global_par_kon_DT*const_species_ca*x(82)-global_par_koff_DT*x(94));

% Reaction: id = rbp_binding_to_cam_RT_ABCD_0, name = rbp binding to cam_RT_ABCD_0
	reaction_rbp_binding_to_cam_RT_ABCD_0=compartment_cytosol*(global_par_kon_rbp*x(193)*x(94)-global_par_koff_rbp_RT*x(95));

% Reaction: id = ca_binding_to_cam_RT_BCD_rbp_on_site_A, name = ca binding to cam_RT_BCD_rbp on site A
	reaction_ca_binding_to_cam_RT_BCD_rbp_on_site_A=compartment_cytosol*(global_par_kon_AR*const_species_ca*x(92)-global_par_koff_AR*x(95));

% Reaction: id = ca_binding_to_cam_RT_ACD_rbp_on_site_B, name = ca binding to cam_RT_ACD_rbp on site B
	reaction_ca_binding_to_cam_RT_ACD_rbp_on_site_B=compartment_cytosol*(global_par_kon_BR*const_species_ca*x(89)-global_par_koff_BR*x(95));

% Reaction: id = ca_binding_to_cam_RT_ABD_rbp_on_site_C, name = ca binding to cam_RT_ABD_rbp on site C
	reaction_ca_binding_to_cam_RT_ABD_rbp_on_site_C=compartment_cytosol*(global_par_kon_CT*const_species_ca*x(86)-global_par_koff_CT*x(95));

% Reaction: id = ca_binding_to_cam_RT_ABC_rbp_on_site_D, name = ca binding to cam_RT_ABC_rbp on site D
	reaction_ca_binding_to_cam_RT_ABC_rbp_on_site_D=compartment_cytosol*(global_par_kon_DT*const_species_ca*x(83)-global_par_koff_DT*x(95));

% Reaction: id = tbp_binding_to_cam_RT_ABCD_0, name = tbp binding to cam_RT_ABCD_0
	reaction_tbp_binding_to_cam_RT_ABCD_0=compartment_cytosol*(global_par_kon_tbp*x(194)*x(94)-global_par_koff_tbp_RT*x(96));

% Reaction: id = ca_binding_to_cam_RT_BCD_tbp_on_site_A, name = ca binding to cam_RT_BCD_tbp on site A
	reaction_ca_binding_to_cam_RT_BCD_tbp_on_site_A=compartment_cytosol*(global_par_kon_AR*const_species_ca*x(93)-global_par_koff_AR*x(96));

% Reaction: id = ca_binding_to_cam_RT_ACD_tbp_on_site_B, name = ca binding to cam_RT_ACD_tbp on site B
	reaction_ca_binding_to_cam_RT_ACD_tbp_on_site_B=compartment_cytosol*(global_par_kon_BR*const_species_ca*x(90)-global_par_koff_BR*x(96));

% Reaction: id = ca_binding_to_cam_RT_ABD_tbp_on_site_C, name = ca binding to cam_RT_ABD_tbp on site C
	reaction_ca_binding_to_cam_RT_ABD_tbp_on_site_C=compartment_cytosol*(global_par_kon_CT*const_species_ca*x(87)-global_par_koff_CT*x(96));

% Reaction: id = ca_binding_to_cam_RT_ABC_tbp_on_site_D, name = ca binding to cam_RT_ABC_tbp on site D
	reaction_ca_binding_to_cam_RT_ABC_tbp_on_site_D=compartment_cytosol*(global_par_kon_DT*const_species_ca*x(84)-global_par_koff_DT*x(96));

% Reaction: id = rbp_binding_to_cam_TR_0_0, name = rbp binding to cam_TR_0_0
	reaction_rbp_binding_to_cam_TR_0_0=compartment_cytosol*(global_par_kon_rbp*x(193)*x(97)-global_par_koff_rbp_TR*x(98));

% Reaction: id = tbp_binding_to_cam_TR_0_0, name = tbp binding to cam_TR_0_0
	reaction_tbp_binding_to_cam_TR_0_0=compartment_cytosol*(global_par_kon_tbp*x(194)*x(97)-global_par_koff_tbp_TR*x(99));

% Reaction: id = ca_binding_to_cam_TR_0_0_on_site_A, name = ca binding to cam_TR_0_0 on site A
	reaction_ca_binding_to_cam_TR_0_0_on_site_A=compartment_cytosol*(global_par_kon_AT*const_species_ca*x(97)-global_par_koff_AT*x(100));

% Reaction: id = rbp_binding_to_cam_TR_A_0, name = rbp binding to cam_TR_A_0
	reaction_rbp_binding_to_cam_TR_A_0=compartment_cytosol*(global_par_kon_rbp*x(193)*x(100)-global_par_koff_rbp_TR*x(101));

% Reaction: id = ca_binding_to_cam_TR_0_rbp_on_site_A, name = ca binding to cam_TR_0_rbp on site A
	reaction_ca_binding_to_cam_TR_0_rbp_on_site_A=compartment_cytosol*(global_par_kon_AT*const_species_ca*x(98)-global_par_koff_AT*x(101));

% Reaction: id = tbp_binding_to_cam_TR_A_0, name = tbp binding to cam_TR_A_0
	reaction_tbp_binding_to_cam_TR_A_0=compartment_cytosol*(global_par_kon_tbp*x(194)*x(100)-global_par_koff_tbp_TR*x(102));

% Reaction: id = ca_binding_to_cam_TR_0_tbp_on_site_A, name = ca binding to cam_TR_0_tbp on site A
	reaction_ca_binding_to_cam_TR_0_tbp_on_site_A=compartment_cytosol*(global_par_kon_AT*const_species_ca*x(99)-global_par_koff_AT*x(102));

% Reaction: id = ca_binding_to_cam_TR_0_0_on_site_B, name = ca binding to cam_TR_0_0 on site B
	reaction_ca_binding_to_cam_TR_0_0_on_site_B=compartment_cytosol*(global_par_kon_BT*const_species_ca*x(97)-global_par_koff_BT*x(103));

% Reaction: id = rbp_binding_to_cam_TR_B_0, name = rbp binding to cam_TR_B_0
	reaction_rbp_binding_to_cam_TR_B_0=compartment_cytosol*(global_par_kon_rbp*x(193)*x(103)-global_par_koff_rbp_TR*x(104));

% Reaction: id = ca_binding_to_cam_TR_0_rbp_on_site_B, name = ca binding to cam_TR_0_rbp on site B
	reaction_ca_binding_to_cam_TR_0_rbp_on_site_B=compartment_cytosol*(global_par_kon_BT*const_species_ca*x(98)-global_par_koff_BT*x(104));

% Reaction: id = tbp_binding_to_cam_TR_B_0, name = tbp binding to cam_TR_B_0
	reaction_tbp_binding_to_cam_TR_B_0=compartment_cytosol*(global_par_kon_tbp*x(194)*x(103)-global_par_koff_tbp_TR*x(105));

% Reaction: id = ca_binding_to_cam_TR_0_tbp_on_site_B, name = ca binding to cam_TR_0_tbp on site B
	reaction_ca_binding_to_cam_TR_0_tbp_on_site_B=compartment_cytosol*(global_par_kon_BT*const_species_ca*x(99)-global_par_koff_BT*x(105));

% Reaction: id = ca_binding_to_cam_TR_0_0_on_site_C, name = ca binding to cam_TR_0_0 on site C
	reaction_ca_binding_to_cam_TR_0_0_on_site_C=compartment_cytosol*(global_par_kon_CR*const_species_ca*x(97)-global_par_koff_CR*x(106));

% Reaction: id = rbp_binding_to_cam_TR_C_0, name = rbp binding to cam_TR_C_0
	reaction_rbp_binding_to_cam_TR_C_0=compartment_cytosol*(global_par_kon_rbp*x(193)*x(106)-global_par_koff_rbp_TR*x(107));

% Reaction: id = ca_binding_to_cam_TR_0_rbp_on_site_C, name = ca binding to cam_TR_0_rbp on site C
	reaction_ca_binding_to_cam_TR_0_rbp_on_site_C=compartment_cytosol*(global_par_kon_CR*const_species_ca*x(98)-global_par_koff_CR*x(107));

% Reaction: id = tbp_binding_to_cam_TR_C_0, name = tbp binding to cam_TR_C_0
	reaction_tbp_binding_to_cam_TR_C_0=compartment_cytosol*(global_par_kon_tbp*x(194)*x(106)-global_par_koff_tbp_TR*x(108));

% Reaction: id = ca_binding_to_cam_TR_0_tbp_on_site_C, name = ca binding to cam_TR_0_tbp on site C
	reaction_ca_binding_to_cam_TR_0_tbp_on_site_C=compartment_cytosol*(global_par_kon_CR*const_species_ca*x(99)-global_par_koff_CR*x(108));

% Reaction: id = ca_binding_to_cam_TR_0_0_on_site_D, name = ca binding to cam_TR_0_0 on site D
	reaction_ca_binding_to_cam_TR_0_0_on_site_D=compartment_cytosol*(global_par_kon_DR*const_species_ca*x(97)-global_par_koff_DR*x(109));

% Reaction: id = rbp_binding_to_cam_TR_D_0, name = rbp binding to cam_TR_D_0
	reaction_rbp_binding_to_cam_TR_D_0=compartment_cytosol*(global_par_kon_rbp*x(193)*x(109)-global_par_koff_rbp_TR*x(110));

% Reaction: id = ca_binding_to_cam_TR_0_rbp_on_site_D, name = ca binding to cam_TR_0_rbp on site D
	reaction_ca_binding_to_cam_TR_0_rbp_on_site_D=compartment_cytosol*(global_par_kon_DR*const_species_ca*x(98)-global_par_koff_DR*x(110));

% Reaction: id = tbp_binding_to_cam_TR_D_0, name = tbp binding to cam_TR_D_0
	reaction_tbp_binding_to_cam_TR_D_0=compartment_cytosol*(global_par_kon_tbp*x(194)*x(109)-global_par_koff_tbp_TR*x(111));

% Reaction: id = ca_binding_to_cam_TR_0_tbp_on_site_D, name = ca binding to cam_TR_0_tbp on site D
	reaction_ca_binding_to_cam_TR_0_tbp_on_site_D=compartment_cytosol*(global_par_kon_DR*const_species_ca*x(99)-global_par_koff_DR*x(111));

% Reaction: id = ca_binding_to_cam_TR_B_0_on_site_A, name = ca binding to cam_TR_B_0 on site A
	reaction_ca_binding_to_cam_TR_B_0_on_site_A=compartment_cytosol*(global_par_kon_AT*const_species_ca*x(103)-global_par_koff_AT*x(112));

% Reaction: id = ca_binding_to_cam_TR_A_0_on_site_B, name = ca binding to cam_TR_A_0 on site B
	reaction_ca_binding_to_cam_TR_A_0_on_site_B=compartment_cytosol*(global_par_kon_BT*const_species_ca*x(100)-global_par_koff_BT*x(112));

% Reaction: id = rbp_binding_to_cam_TR_AB_0, name = rbp binding to cam_TR_AB_0
	reaction_rbp_binding_to_cam_TR_AB_0=compartment_cytosol*(global_par_kon_rbp*x(193)*x(112)-global_par_koff_rbp_TR*x(113));

% Reaction: id = ca_binding_to_cam_TR_B_rbp_on_site_A, name = ca binding to cam_TR_B_rbp on site A
	reaction_ca_binding_to_cam_TR_B_rbp_on_site_A=compartment_cytosol*(global_par_kon_AT*const_species_ca*x(104)-global_par_koff_AT*x(113));

% Reaction: id = ca_binding_to_cam_TR_A_rbp_on_site_B, name = ca binding to cam_TR_A_rbp on site B
	reaction_ca_binding_to_cam_TR_A_rbp_on_site_B=compartment_cytosol*(global_par_kon_BT*const_species_ca*x(101)-global_par_koff_BT*x(113));

% Reaction: id = tbp_binding_to_cam_TR_AB_0, name = tbp binding to cam_TR_AB_0
	reaction_tbp_binding_to_cam_TR_AB_0=compartment_cytosol*(global_par_kon_tbp*x(194)*x(112)-global_par_koff_tbp_TR*x(114));

% Reaction: id = ca_binding_to_cam_TR_B_tbp_on_site_A, name = ca binding to cam_TR_B_tbp on site A
	reaction_ca_binding_to_cam_TR_B_tbp_on_site_A=compartment_cytosol*(global_par_kon_AT*const_species_ca*x(105)-global_par_koff_AT*x(114));

% Reaction: id = ca_binding_to_cam_TR_A_tbp_on_site_B, name = ca binding to cam_TR_A_tbp on site B
	reaction_ca_binding_to_cam_TR_A_tbp_on_site_B=compartment_cytosol*(global_par_kon_BT*const_species_ca*x(102)-global_par_koff_BT*x(114));

% Reaction: id = ca_binding_to_cam_TR_C_0_on_site_A, name = ca binding to cam_TR_C_0 on site A
	reaction_ca_binding_to_cam_TR_C_0_on_site_A=compartment_cytosol*(global_par_kon_AT*const_species_ca*x(106)-global_par_koff_AT*x(115));

% Reaction: id = ca_binding_to_cam_TR_A_0_on_site_C, name = ca binding to cam_TR_A_0 on site C
	reaction_ca_binding_to_cam_TR_A_0_on_site_C=compartment_cytosol*(global_par_kon_CR*const_species_ca*x(100)-global_par_koff_CR*x(115));

% Reaction: id = rbp_binding_to_cam_TR_AC_0, name = rbp binding to cam_TR_AC_0
	reaction_rbp_binding_to_cam_TR_AC_0=compartment_cytosol*(global_par_kon_rbp*x(193)*x(115)-global_par_koff_rbp_TR*x(116));

% Reaction: id = ca_binding_to_cam_TR_C_rbp_on_site_A, name = ca binding to cam_TR_C_rbp on site A
	reaction_ca_binding_to_cam_TR_C_rbp_on_site_A=compartment_cytosol*(global_par_kon_AT*const_species_ca*x(107)-global_par_koff_AT*x(116));

% Reaction: id = ca_binding_to_cam_TR_A_rbp_on_site_C, name = ca binding to cam_TR_A_rbp on site C
	reaction_ca_binding_to_cam_TR_A_rbp_on_site_C=compartment_cytosol*(global_par_kon_CR*const_species_ca*x(101)-global_par_koff_CR*x(116));

% Reaction: id = tbp_binding_to_cam_TR_AC_0, name = tbp binding to cam_TR_AC_0
	reaction_tbp_binding_to_cam_TR_AC_0=compartment_cytosol*(global_par_kon_tbp*x(194)*x(115)-global_par_koff_tbp_TR*x(117));

% Reaction: id = ca_binding_to_cam_TR_C_tbp_on_site_A, name = ca binding to cam_TR_C_tbp on site A
	reaction_ca_binding_to_cam_TR_C_tbp_on_site_A=compartment_cytosol*(global_par_kon_AT*const_species_ca*x(108)-global_par_koff_AT*x(117));

% Reaction: id = ca_binding_to_cam_TR_A_tbp_on_site_C, name = ca binding to cam_TR_A_tbp on site C
	reaction_ca_binding_to_cam_TR_A_tbp_on_site_C=compartment_cytosol*(global_par_kon_CR*const_species_ca*x(102)-global_par_koff_CR*x(117));

% Reaction: id = ca_binding_to_cam_TR_D_0_on_site_A, name = ca binding to cam_TR_D_0 on site A
	reaction_ca_binding_to_cam_TR_D_0_on_site_A=compartment_cytosol*(global_par_kon_AT*const_species_ca*x(109)-global_par_koff_AT*x(118));

% Reaction: id = ca_binding_to_cam_TR_A_0_on_site_D, name = ca binding to cam_TR_A_0 on site D
	reaction_ca_binding_to_cam_TR_A_0_on_site_D=compartment_cytosol*(global_par_kon_DR*const_species_ca*x(100)-global_par_koff_DR*x(118));

% Reaction: id = rbp_binding_to_cam_TR_AD_0, name = rbp binding to cam_TR_AD_0
	reaction_rbp_binding_to_cam_TR_AD_0=compartment_cytosol*(global_par_kon_rbp*x(193)*x(118)-global_par_koff_rbp_TR*x(119));

% Reaction: id = ca_binding_to_cam_TR_D_rbp_on_site_A, name = ca binding to cam_TR_D_rbp on site A
	reaction_ca_binding_to_cam_TR_D_rbp_on_site_A=compartment_cytosol*(global_par_kon_AT*const_species_ca*x(110)-global_par_koff_AT*x(119));

% Reaction: id = ca_binding_to_cam_TR_A_rbp_on_site_D, name = ca binding to cam_TR_A_rbp on site D
	reaction_ca_binding_to_cam_TR_A_rbp_on_site_D=compartment_cytosol*(global_par_kon_DR*const_species_ca*x(101)-global_par_koff_DR*x(119));

% Reaction: id = tbp_binding_to_cam_TR_AD_0, name = tbp binding to cam_TR_AD_0
	reaction_tbp_binding_to_cam_TR_AD_0=compartment_cytosol*(global_par_kon_tbp*x(194)*x(118)-global_par_koff_tbp_TR*x(120));

% Reaction: id = ca_binding_to_cam_TR_D_tbp_on_site_A, name = ca binding to cam_TR_D_tbp on site A
	reaction_ca_binding_to_cam_TR_D_tbp_on_site_A=compartment_cytosol*(global_par_kon_AT*const_species_ca*x(111)-global_par_koff_AT*x(120));

% Reaction: id = ca_binding_to_cam_TR_A_tbp_on_site_D, name = ca binding to cam_TR_A_tbp on site D
	reaction_ca_binding_to_cam_TR_A_tbp_on_site_D=compartment_cytosol*(global_par_kon_DR*const_species_ca*x(102)-global_par_koff_DR*x(120));

% Reaction: id = ca_binding_to_cam_TR_C_0_on_site_B, name = ca binding to cam_TR_C_0 on site B
	reaction_ca_binding_to_cam_TR_C_0_on_site_B=compartment_cytosol*(global_par_kon_BT*const_species_ca*x(106)-global_par_koff_BT*x(121));

% Reaction: id = ca_binding_to_cam_TR_B_0_on_site_C, name = ca binding to cam_TR_B_0 on site C
	reaction_ca_binding_to_cam_TR_B_0_on_site_C=compartment_cytosol*(global_par_kon_CR*const_species_ca*x(103)-global_par_koff_CR*x(121));

% Reaction: id = rbp_binding_to_cam_TR_BC_0, name = rbp binding to cam_TR_BC_0
	reaction_rbp_binding_to_cam_TR_BC_0=compartment_cytosol*(global_par_kon_rbp*x(193)*x(121)-global_par_koff_rbp_TR*x(122));

% Reaction: id = ca_binding_to_cam_TR_C_rbp_on_site_B, name = ca binding to cam_TR_C_rbp on site B
	reaction_ca_binding_to_cam_TR_C_rbp_on_site_B=compartment_cytosol*(global_par_kon_BT*const_species_ca*x(107)-global_par_koff_BT*x(122));

% Reaction: id = ca_binding_to_cam_TR_B_rbp_on_site_C, name = ca binding to cam_TR_B_rbp on site C
	reaction_ca_binding_to_cam_TR_B_rbp_on_site_C=compartment_cytosol*(global_par_kon_CR*const_species_ca*x(104)-global_par_koff_CR*x(122));

% Reaction: id = tbp_binding_to_cam_TR_BC_0, name = tbp binding to cam_TR_BC_0
	reaction_tbp_binding_to_cam_TR_BC_0=compartment_cytosol*(global_par_kon_tbp*x(194)*x(121)-global_par_koff_tbp_TR*x(123));

% Reaction: id = ca_binding_to_cam_TR_C_tbp_on_site_B, name = ca binding to cam_TR_C_tbp on site B
	reaction_ca_binding_to_cam_TR_C_tbp_on_site_B=compartment_cytosol*(global_par_kon_BT*const_species_ca*x(108)-global_par_koff_BT*x(123));

% Reaction: id = ca_binding_to_cam_TR_B_tbp_on_site_C, name = ca binding to cam_TR_B_tbp on site C
	reaction_ca_binding_to_cam_TR_B_tbp_on_site_C=compartment_cytosol*(global_par_kon_CR*const_species_ca*x(105)-global_par_koff_CR*x(123));

% Reaction: id = ca_binding_to_cam_TR_D_0_on_site_B, name = ca binding to cam_TR_D_0 on site B
	reaction_ca_binding_to_cam_TR_D_0_on_site_B=compartment_cytosol*(global_par_kon_BT*const_species_ca*x(109)-global_par_koff_BT*x(124));

% Reaction: id = ca_binding_to_cam_TR_B_0_on_site_D, name = ca binding to cam_TR_B_0 on site D
	reaction_ca_binding_to_cam_TR_B_0_on_site_D=compartment_cytosol*(global_par_kon_DR*const_species_ca*x(103)-global_par_koff_DR*x(124));

% Reaction: id = rbp_binding_to_cam_TR_BD_0, name = rbp binding to cam_TR_BD_0
	reaction_rbp_binding_to_cam_TR_BD_0=compartment_cytosol*(global_par_kon_rbp*x(193)*x(124)-global_par_koff_rbp_TR*x(125));

% Reaction: id = ca_binding_to_cam_TR_D_rbp_on_site_B, name = ca binding to cam_TR_D_rbp on site B
	reaction_ca_binding_to_cam_TR_D_rbp_on_site_B=compartment_cytosol*(global_par_kon_BT*const_species_ca*x(110)-global_par_koff_BT*x(125));

% Reaction: id = ca_binding_to_cam_TR_B_rbp_on_site_D, name = ca binding to cam_TR_B_rbp on site D
	reaction_ca_binding_to_cam_TR_B_rbp_on_site_D=compartment_cytosol*(global_par_kon_DR*const_species_ca*x(104)-global_par_koff_DR*x(125));

% Reaction: id = tbp_binding_to_cam_TR_BD_0, name = tbp binding to cam_TR_BD_0
	reaction_tbp_binding_to_cam_TR_BD_0=compartment_cytosol*(global_par_kon_tbp*x(194)*x(124)-global_par_koff_tbp_TR*x(126));

% Reaction: id = ca_binding_to_cam_TR_D_tbp_on_site_B, name = ca binding to cam_TR_D_tbp on site B
	reaction_ca_binding_to_cam_TR_D_tbp_on_site_B=compartment_cytosol*(global_par_kon_BT*const_species_ca*x(111)-global_par_koff_BT*x(126));

% Reaction: id = ca_binding_to_cam_TR_B_tbp_on_site_D, name = ca binding to cam_TR_B_tbp on site D
	reaction_ca_binding_to_cam_TR_B_tbp_on_site_D=compartment_cytosol*(global_par_kon_DR*const_species_ca*x(105)-global_par_koff_DR*x(126));

% Reaction: id = ca_binding_to_cam_TR_D_0_on_site_C, name = ca binding to cam_TR_D_0 on site C
	reaction_ca_binding_to_cam_TR_D_0_on_site_C=compartment_cytosol*(global_par_kon_CR*const_species_ca*x(109)-global_par_koff_CR*x(127));

% Reaction: id = ca_binding_to_cam_TR_C_0_on_site_D, name = ca binding to cam_TR_C_0 on site D
	reaction_ca_binding_to_cam_TR_C_0_on_site_D=compartment_cytosol*(global_par_kon_DR*const_species_ca*x(106)-global_par_koff_DR*x(127));

% Reaction: id = rbp_binding_to_cam_TR_CD_0, name = rbp binding to cam_TR_CD_0
	reaction_rbp_binding_to_cam_TR_CD_0=compartment_cytosol*(global_par_kon_rbp*x(193)*x(127)-global_par_koff_rbp_TR*x(128));

% Reaction: id = ca_binding_to_cam_TR_D_rbp_on_site_C, name = ca binding to cam_TR_D_rbp on site C
	reaction_ca_binding_to_cam_TR_D_rbp_on_site_C=compartment_cytosol*(global_par_kon_CR*const_species_ca*x(110)-global_par_koff_CR*x(128));

% Reaction: id = ca_binding_to_cam_TR_C_rbp_on_site_D, name = ca binding to cam_TR_C_rbp on site D
	reaction_ca_binding_to_cam_TR_C_rbp_on_site_D=compartment_cytosol*(global_par_kon_DR*const_species_ca*x(107)-global_par_koff_DR*x(128));

% Reaction: id = tbp_binding_to_cam_TR_CD_0, name = tbp binding to cam_TR_CD_0
	reaction_tbp_binding_to_cam_TR_CD_0=compartment_cytosol*(global_par_kon_tbp*x(194)*x(127)-global_par_koff_tbp_TR*x(129));

% Reaction: id = ca_binding_to_cam_TR_D_tbp_on_site_C, name = ca binding to cam_TR_D_tbp on site C
	reaction_ca_binding_to_cam_TR_D_tbp_on_site_C=compartment_cytosol*(global_par_kon_CR*const_species_ca*x(111)-global_par_koff_CR*x(129));

% Reaction: id = ca_binding_to_cam_TR_C_tbp_on_site_D, name = ca binding to cam_TR_C_tbp on site D
	reaction_ca_binding_to_cam_TR_C_tbp_on_site_D=compartment_cytosol*(global_par_kon_DR*const_species_ca*x(108)-global_par_koff_DR*x(129));

% Reaction: id = ca_binding_to_cam_TR_BC_0_on_site_A, name = ca binding to cam_TR_BC_0 on site A
	reaction_ca_binding_to_cam_TR_BC_0_on_site_A=compartment_cytosol*(global_par_kon_AT*const_species_ca*x(121)-global_par_koff_AT*x(130));

% Reaction: id = ca_binding_to_cam_TR_AC_0_on_site_B, name = ca binding to cam_TR_AC_0 on site B
	reaction_ca_binding_to_cam_TR_AC_0_on_site_B=compartment_cytosol*(global_par_kon_BT*const_species_ca*x(115)-global_par_koff_BT*x(130));

% Reaction: id = ca_binding_to_cam_TR_AB_0_on_site_C, name = ca binding to cam_TR_AB_0 on site C
	reaction_ca_binding_to_cam_TR_AB_0_on_site_C=compartment_cytosol*(global_par_kon_CR*const_species_ca*x(112)-global_par_koff_CR*x(130));

% Reaction: id = rbp_binding_to_cam_TR_ABC_0, name = rbp binding to cam_TR_ABC_0
	reaction_rbp_binding_to_cam_TR_ABC_0=compartment_cytosol*(global_par_kon_rbp*x(193)*x(130)-global_par_koff_rbp_TR*x(131));

% Reaction: id = ca_binding_to_cam_TR_BC_rbp_on_site_A, name = ca binding to cam_TR_BC_rbp on site A
	reaction_ca_binding_to_cam_TR_BC_rbp_on_site_A=compartment_cytosol*(global_par_kon_AT*const_species_ca*x(122)-global_par_koff_AT*x(131));

% Reaction: id = ca_binding_to_cam_TR_AC_rbp_on_site_B, name = ca binding to cam_TR_AC_rbp on site B
	reaction_ca_binding_to_cam_TR_AC_rbp_on_site_B=compartment_cytosol*(global_par_kon_BT*const_species_ca*x(116)-global_par_koff_BT*x(131));

% Reaction: id = ca_binding_to_cam_TR_AB_rbp_on_site_C, name = ca binding to cam_TR_AB_rbp on site C
	reaction_ca_binding_to_cam_TR_AB_rbp_on_site_C=compartment_cytosol*(global_par_kon_CR*const_species_ca*x(113)-global_par_koff_CR*x(131));

% Reaction: id = tbp_binding_to_cam_TR_ABC_0, name = tbp binding to cam_TR_ABC_0
	reaction_tbp_binding_to_cam_TR_ABC_0=compartment_cytosol*(global_par_kon_tbp*x(194)*x(130)-global_par_koff_tbp_TR*x(132));

% Reaction: id = ca_binding_to_cam_TR_BC_tbp_on_site_A, name = ca binding to cam_TR_BC_tbp on site A
	reaction_ca_binding_to_cam_TR_BC_tbp_on_site_A=compartment_cytosol*(global_par_kon_AT*const_species_ca*x(123)-global_par_koff_AT*x(132));

% Reaction: id = ca_binding_to_cam_TR_AC_tbp_on_site_B, name = ca binding to cam_TR_AC_tbp on site B
	reaction_ca_binding_to_cam_TR_AC_tbp_on_site_B=compartment_cytosol*(global_par_kon_BT*const_species_ca*x(117)-global_par_koff_BT*x(132));

% Reaction: id = ca_binding_to_cam_TR_AB_tbp_on_site_C, name = ca binding to cam_TR_AB_tbp on site C
	reaction_ca_binding_to_cam_TR_AB_tbp_on_site_C=compartment_cytosol*(global_par_kon_CR*const_species_ca*x(114)-global_par_koff_CR*x(132));

% Reaction: id = ca_binding_to_cam_TR_BD_0_on_site_A, name = ca binding to cam_TR_BD_0 on site A
	reaction_ca_binding_to_cam_TR_BD_0_on_site_A=compartment_cytosol*(global_par_kon_AT*const_species_ca*x(124)-global_par_koff_AT*x(133));

% Reaction: id = ca_binding_to_cam_TR_AD_0_on_site_B, name = ca binding to cam_TR_AD_0 on site B
	reaction_ca_binding_to_cam_TR_AD_0_on_site_B=compartment_cytosol*(global_par_kon_BT*const_species_ca*x(118)-global_par_koff_BT*x(133));

% Reaction: id = ca_binding_to_cam_TR_AB_0_on_site_D, name = ca binding to cam_TR_AB_0 on site D
	reaction_ca_binding_to_cam_TR_AB_0_on_site_D=compartment_cytosol*(global_par_kon_DR*const_species_ca*x(112)-global_par_koff_DR*x(133));

% Reaction: id = rbp_binding_to_cam_TR_ABD_0, name = rbp binding to cam_TR_ABD_0
	reaction_rbp_binding_to_cam_TR_ABD_0=compartment_cytosol*(global_par_kon_rbp*x(193)*x(133)-global_par_koff_rbp_TR*x(134));

% Reaction: id = ca_binding_to_cam_TR_BD_rbp_on_site_A, name = ca binding to cam_TR_BD_rbp on site A
	reaction_ca_binding_to_cam_TR_BD_rbp_on_site_A=compartment_cytosol*(global_par_kon_AT*const_species_ca*x(125)-global_par_koff_AT*x(134));

% Reaction: id = ca_binding_to_cam_TR_AD_rbp_on_site_B, name = ca binding to cam_TR_AD_rbp on site B
	reaction_ca_binding_to_cam_TR_AD_rbp_on_site_B=compartment_cytosol*(global_par_kon_BT*const_species_ca*x(119)-global_par_koff_BT*x(134));

% Reaction: id = ca_binding_to_cam_TR_AB_rbp_on_site_D, name = ca binding to cam_TR_AB_rbp on site D
	reaction_ca_binding_to_cam_TR_AB_rbp_on_site_D=compartment_cytosol*(global_par_kon_DR*const_species_ca*x(113)-global_par_koff_DR*x(134));

% Reaction: id = tbp_binding_to_cam_TR_ABD_0, name = tbp binding to cam_TR_ABD_0
	reaction_tbp_binding_to_cam_TR_ABD_0=compartment_cytosol*(global_par_kon_tbp*x(194)*x(133)-global_par_koff_tbp_TR*x(135));

% Reaction: id = ca_binding_to_cam_TR_BD_tbp_on_site_A, name = ca binding to cam_TR_BD_tbp on site A
	reaction_ca_binding_to_cam_TR_BD_tbp_on_site_A=compartment_cytosol*(global_par_kon_AT*const_species_ca*x(126)-global_par_koff_AT*x(135));

% Reaction: id = ca_binding_to_cam_TR_AD_tbp_on_site_B, name = ca binding to cam_TR_AD_tbp on site B
	reaction_ca_binding_to_cam_TR_AD_tbp_on_site_B=compartment_cytosol*(global_par_kon_BT*const_species_ca*x(120)-global_par_koff_BT*x(135));

% Reaction: id = ca_binding_to_cam_TR_AB_tbp_on_site_D, name = ca binding to cam_TR_AB_tbp on site D
	reaction_ca_binding_to_cam_TR_AB_tbp_on_site_D=compartment_cytosol*(global_par_kon_DR*const_species_ca*x(114)-global_par_koff_DR*x(135));

% Reaction: id = ca_binding_to_cam_TR_CD_0_on_site_A, name = ca binding to cam_TR_CD_0 on site A
	reaction_ca_binding_to_cam_TR_CD_0_on_site_A=compartment_cytosol*(global_par_kon_AT*const_species_ca*x(127)-global_par_koff_AT*x(136));

% Reaction: id = ca_binding_to_cam_TR_AD_0_on_site_C, name = ca binding to cam_TR_AD_0 on site C
	reaction_ca_binding_to_cam_TR_AD_0_on_site_C=compartment_cytosol*(global_par_kon_CR*const_species_ca*x(118)-global_par_koff_CR*x(136));

% Reaction: id = ca_binding_to_cam_TR_AC_0_on_site_D, name = ca binding to cam_TR_AC_0 on site D
	reaction_ca_binding_to_cam_TR_AC_0_on_site_D=compartment_cytosol*(global_par_kon_DR*const_species_ca*x(115)-global_par_koff_DR*x(136));

% Reaction: id = rbp_binding_to_cam_TR_ACD_0, name = rbp binding to cam_TR_ACD_0
	reaction_rbp_binding_to_cam_TR_ACD_0=compartment_cytosol*(global_par_kon_rbp*x(193)*x(136)-global_par_koff_rbp_TR*x(137));

% Reaction: id = ca_binding_to_cam_TR_CD_rbp_on_site_A, name = ca binding to cam_TR_CD_rbp on site A
	reaction_ca_binding_to_cam_TR_CD_rbp_on_site_A=compartment_cytosol*(global_par_kon_AT*const_species_ca*x(128)-global_par_koff_AT*x(137));

% Reaction: id = ca_binding_to_cam_TR_AD_rbp_on_site_C, name = ca binding to cam_TR_AD_rbp on site C
	reaction_ca_binding_to_cam_TR_AD_rbp_on_site_C=compartment_cytosol*(global_par_kon_CR*const_species_ca*x(119)-global_par_koff_CR*x(137));

% Reaction: id = ca_binding_to_cam_TR_AC_rbp_on_site_D, name = ca binding to cam_TR_AC_rbp on site D
	reaction_ca_binding_to_cam_TR_AC_rbp_on_site_D=compartment_cytosol*(global_par_kon_DR*const_species_ca*x(116)-global_par_koff_DR*x(137));

% Reaction: id = tbp_binding_to_cam_TR_ACD_0, name = tbp binding to cam_TR_ACD_0
	reaction_tbp_binding_to_cam_TR_ACD_0=compartment_cytosol*(global_par_kon_tbp*x(194)*x(136)-global_par_koff_tbp_TR*x(138));

% Reaction: id = ca_binding_to_cam_TR_CD_tbp_on_site_A, name = ca binding to cam_TR_CD_tbp on site A
	reaction_ca_binding_to_cam_TR_CD_tbp_on_site_A=compartment_cytosol*(global_par_kon_AT*const_species_ca*x(129)-global_par_koff_AT*x(138));

% Reaction: id = ca_binding_to_cam_TR_AD_tbp_on_site_C, name = ca binding to cam_TR_AD_tbp on site C
	reaction_ca_binding_to_cam_TR_AD_tbp_on_site_C=compartment_cytosol*(global_par_kon_CR*const_species_ca*x(120)-global_par_koff_CR*x(138));

% Reaction: id = ca_binding_to_cam_TR_AC_tbp_on_site_D, name = ca binding to cam_TR_AC_tbp on site D
	reaction_ca_binding_to_cam_TR_AC_tbp_on_site_D=compartment_cytosol*(global_par_kon_DR*const_species_ca*x(117)-global_par_koff_DR*x(138));

% Reaction: id = ca_binding_to_cam_TR_CD_0_on_site_B, name = ca binding to cam_TR_CD_0 on site B
	reaction_ca_binding_to_cam_TR_CD_0_on_site_B=compartment_cytosol*(global_par_kon_BT*const_species_ca*x(127)-global_par_koff_BT*x(139));

% Reaction: id = ca_binding_to_cam_TR_BD_0_on_site_C, name = ca binding to cam_TR_BD_0 on site C
	reaction_ca_binding_to_cam_TR_BD_0_on_site_C=compartment_cytosol*(global_par_kon_CR*const_species_ca*x(124)-global_par_koff_CR*x(139));

% Reaction: id = ca_binding_to_cam_TR_BC_0_on_site_D, name = ca binding to cam_TR_BC_0 on site D
	reaction_ca_binding_to_cam_TR_BC_0_on_site_D=compartment_cytosol*(global_par_kon_DR*const_species_ca*x(121)-global_par_koff_DR*x(139));

% Reaction: id = rbp_binding_to_cam_TR_BCD_0, name = rbp binding to cam_TR_BCD_0
	reaction_rbp_binding_to_cam_TR_BCD_0=compartment_cytosol*(global_par_kon_rbp*x(193)*x(139)-global_par_koff_rbp_TR*x(140));

% Reaction: id = ca_binding_to_cam_TR_CD_rbp_on_site_B, name = ca binding to cam_TR_CD_rbp on site B
	reaction_ca_binding_to_cam_TR_CD_rbp_on_site_B=compartment_cytosol*(global_par_kon_BT*const_species_ca*x(128)-global_par_koff_BT*x(140));

% Reaction: id = ca_binding_to_cam_TR_BD_rbp_on_site_C, name = ca binding to cam_TR_BD_rbp on site C
	reaction_ca_binding_to_cam_TR_BD_rbp_on_site_C=compartment_cytosol*(global_par_kon_CR*const_species_ca*x(125)-global_par_koff_CR*x(140));

% Reaction: id = ca_binding_to_cam_TR_BC_rbp_on_site_D, name = ca binding to cam_TR_BC_rbp on site D
	reaction_ca_binding_to_cam_TR_BC_rbp_on_site_D=compartment_cytosol*(global_par_kon_DR*const_species_ca*x(122)-global_par_koff_DR*x(140));

% Reaction: id = tbp_binding_to_cam_TR_BCD_0, name = tbp binding to cam_TR_BCD_0
	reaction_tbp_binding_to_cam_TR_BCD_0=compartment_cytosol*(global_par_kon_tbp*x(194)*x(139)-global_par_koff_tbp_TR*x(141));

% Reaction: id = ca_binding_to_cam_TR_CD_tbp_on_site_B, name = ca binding to cam_TR_CD_tbp on site B
	reaction_ca_binding_to_cam_TR_CD_tbp_on_site_B=compartment_cytosol*(global_par_kon_BT*const_species_ca*x(129)-global_par_koff_BT*x(141));

% Reaction: id = ca_binding_to_cam_TR_BD_tbp_on_site_C, name = ca binding to cam_TR_BD_tbp on site C
	reaction_ca_binding_to_cam_TR_BD_tbp_on_site_C=compartment_cytosol*(global_par_kon_CR*const_species_ca*x(126)-global_par_koff_CR*x(141));

% Reaction: id = ca_binding_to_cam_TR_BC_tbp_on_site_D, name = ca binding to cam_TR_BC_tbp on site D
	reaction_ca_binding_to_cam_TR_BC_tbp_on_site_D=compartment_cytosol*(global_par_kon_DR*const_species_ca*x(123)-global_par_koff_DR*x(141));

% Reaction: id = ca_binding_to_cam_TR_BCD_0_on_site_A, name = ca binding to cam_TR_BCD_0 on site A
	reaction_ca_binding_to_cam_TR_BCD_0_on_site_A=compartment_cytosol*(global_par_kon_AT*const_species_ca*x(139)-global_par_koff_AT*x(142));

% Reaction: id = ca_binding_to_cam_TR_ACD_0_on_site_B, name = ca binding to cam_TR_ACD_0 on site B
	reaction_ca_binding_to_cam_TR_ACD_0_on_site_B=compartment_cytosol*(global_par_kon_BT*const_species_ca*x(136)-global_par_koff_BT*x(142));

% Reaction: id = ca_binding_to_cam_TR_ABD_0_on_site_C, name = ca binding to cam_TR_ABD_0 on site C
	reaction_ca_binding_to_cam_TR_ABD_0_on_site_C=compartment_cytosol*(global_par_kon_CR*const_species_ca*x(133)-global_par_koff_CR*x(142));

% Reaction: id = ca_binding_to_cam_TR_ABC_0_on_site_D, name = ca binding to cam_TR_ABC_0 on site D
	reaction_ca_binding_to_cam_TR_ABC_0_on_site_D=compartment_cytosol*(global_par_kon_DR*const_species_ca*x(130)-global_par_koff_DR*x(142));

% Reaction: id = rbp_binding_to_cam_TR_ABCD_0, name = rbp binding to cam_TR_ABCD_0
	reaction_rbp_binding_to_cam_TR_ABCD_0=compartment_cytosol*(global_par_kon_rbp*x(193)*x(142)-global_par_koff_rbp_TR*x(143));

% Reaction: id = ca_binding_to_cam_TR_BCD_rbp_on_site_A, name = ca binding to cam_TR_BCD_rbp on site A
	reaction_ca_binding_to_cam_TR_BCD_rbp_on_site_A=compartment_cytosol*(global_par_kon_AT*const_species_ca*x(140)-global_par_koff_AT*x(143));

% Reaction: id = ca_binding_to_cam_TR_ACD_rbp_on_site_B, name = ca binding to cam_TR_ACD_rbp on site B
	reaction_ca_binding_to_cam_TR_ACD_rbp_on_site_B=compartment_cytosol*(global_par_kon_BT*const_species_ca*x(137)-global_par_koff_BT*x(143));

% Reaction: id = ca_binding_to_cam_TR_ABD_rbp_on_site_C, name = ca binding to cam_TR_ABD_rbp on site C
	reaction_ca_binding_to_cam_TR_ABD_rbp_on_site_C=compartment_cytosol*(global_par_kon_CR*const_species_ca*x(134)-global_par_koff_CR*x(143));

% Reaction: id = ca_binding_to_cam_TR_ABC_rbp_on_site_D, name = ca binding to cam_TR_ABC_rbp on site D
	reaction_ca_binding_to_cam_TR_ABC_rbp_on_site_D=compartment_cytosol*(global_par_kon_DR*const_species_ca*x(131)-global_par_koff_DR*x(143));

% Reaction: id = tbp_binding_to_cam_TR_ABCD_0, name = tbp binding to cam_TR_ABCD_0
	reaction_tbp_binding_to_cam_TR_ABCD_0=compartment_cytosol*(global_par_kon_tbp*x(194)*x(142)-global_par_koff_tbp_TR*x(144));

% Reaction: id = ca_binding_to_cam_TR_BCD_tbp_on_site_A, name = ca binding to cam_TR_BCD_tbp on site A
	reaction_ca_binding_to_cam_TR_BCD_tbp_on_site_A=compartment_cytosol*(global_par_kon_AT*const_species_ca*x(141)-global_par_koff_AT*x(144));

% Reaction: id = ca_binding_to_cam_TR_ACD_tbp_on_site_B, name = ca binding to cam_TR_ACD_tbp on site B
	reaction_ca_binding_to_cam_TR_ACD_tbp_on_site_B=compartment_cytosol*(global_par_kon_BT*const_species_ca*x(138)-global_par_koff_BT*x(144));

% Reaction: id = ca_binding_to_cam_TR_ABD_tbp_on_site_C, name = ca binding to cam_TR_ABD_tbp on site C
	reaction_ca_binding_to_cam_TR_ABD_tbp_on_site_C=compartment_cytosol*(global_par_kon_CR*const_species_ca*x(135)-global_par_koff_CR*x(144));

% Reaction: id = ca_binding_to_cam_TR_ABC_tbp_on_site_D, name = ca binding to cam_TR_ABC_tbp on site D
	reaction_ca_binding_to_cam_TR_ABC_tbp_on_site_D=compartment_cytosol*(global_par_kon_DR*const_species_ca*x(132)-global_par_koff_DR*x(144));

% Reaction: id = rbp_binding_to_cam_TT_0_0, name = rbp binding to cam_TT_0_0
	reaction_rbp_binding_to_cam_TT_0_0=compartment_cytosol*(global_par_kon_rbp*x(193)*x(145)-global_par_koff_rbp_TT*x(146));

% Reaction: id = tbp_binding_to_cam_TT_0_0, name = tbp binding to cam_TT_0_0
	reaction_tbp_binding_to_cam_TT_0_0=compartment_cytosol*(global_par_kon_tbp*x(194)*x(145)-global_par_koff_tbp_TT*x(147));

% Reaction: id = ca_binding_to_cam_TT_0_0_on_site_A, name = ca binding to cam_TT_0_0 on site A
	reaction_ca_binding_to_cam_TT_0_0_on_site_A=compartment_cytosol*(global_par_kon_AT*const_species_ca*x(145)-global_par_koff_AT*x(148));

% Reaction: id = rbp_binding_to_cam_TT_A_0, name = rbp binding to cam_TT_A_0
	reaction_rbp_binding_to_cam_TT_A_0=compartment_cytosol*(global_par_kon_rbp*x(193)*x(148)-global_par_koff_rbp_TT*x(149));

% Reaction: id = ca_binding_to_cam_TT_0_rbp_on_site_A, name = ca binding to cam_TT_0_rbp on site A
	reaction_ca_binding_to_cam_TT_0_rbp_on_site_A=compartment_cytosol*(global_par_kon_AT*const_species_ca*x(146)-global_par_koff_AT*x(149));

% Reaction: id = tbp_binding_to_cam_TT_A_0, name = tbp binding to cam_TT_A_0
	reaction_tbp_binding_to_cam_TT_A_0=compartment_cytosol*(global_par_kon_tbp*x(194)*x(148)-global_par_koff_tbp_TT*x(150));

% Reaction: id = ca_binding_to_cam_TT_0_tbp_on_site_A, name = ca binding to cam_TT_0_tbp on site A
	reaction_ca_binding_to_cam_TT_0_tbp_on_site_A=compartment_cytosol*(global_par_kon_AT*const_species_ca*x(147)-global_par_koff_AT*x(150));

% Reaction: id = ca_binding_to_cam_TT_0_0_on_site_B, name = ca binding to cam_TT_0_0 on site B
	reaction_ca_binding_to_cam_TT_0_0_on_site_B=compartment_cytosol*(global_par_kon_BT*const_species_ca*x(145)-global_par_koff_BT*x(151));

% Reaction: id = rbp_binding_to_cam_TT_B_0, name = rbp binding to cam_TT_B_0
	reaction_rbp_binding_to_cam_TT_B_0=compartment_cytosol*(global_par_kon_rbp*x(193)*x(151)-global_par_koff_rbp_TT*x(152));

% Reaction: id = ca_binding_to_cam_TT_0_rbp_on_site_B, name = ca binding to cam_TT_0_rbp on site B
	reaction_ca_binding_to_cam_TT_0_rbp_on_site_B=compartment_cytosol*(global_par_kon_BT*const_species_ca*x(146)-global_par_koff_BT*x(152));

% Reaction: id = tbp_binding_to_cam_TT_B_0, name = tbp binding to cam_TT_B_0
	reaction_tbp_binding_to_cam_TT_B_0=compartment_cytosol*(global_par_kon_tbp*x(194)*x(151)-global_par_koff_tbp_TT*x(153));

% Reaction: id = ca_binding_to_cam_TT_0_tbp_on_site_B, name = ca binding to cam_TT_0_tbp on site B
	reaction_ca_binding_to_cam_TT_0_tbp_on_site_B=compartment_cytosol*(global_par_kon_BT*const_species_ca*x(147)-global_par_koff_BT*x(153));

% Reaction: id = ca_binding_to_cam_TT_0_0_on_site_C, name = ca binding to cam_TT_0_0 on site C
	reaction_ca_binding_to_cam_TT_0_0_on_site_C=compartment_cytosol*(global_par_kon_CT*const_species_ca*x(145)-global_par_koff_CT*x(154));

% Reaction: id = rbp_binding_to_cam_TT_C_0, name = rbp binding to cam_TT_C_0
	reaction_rbp_binding_to_cam_TT_C_0=compartment_cytosol*(global_par_kon_rbp*x(193)*x(154)-global_par_koff_rbp_TT*x(155));

% Reaction: id = ca_binding_to_cam_TT_0_rbp_on_site_C, name = ca binding to cam_TT_0_rbp on site C
	reaction_ca_binding_to_cam_TT_0_rbp_on_site_C=compartment_cytosol*(global_par_kon_CT*const_species_ca*x(146)-global_par_koff_CT*x(155));

% Reaction: id = tbp_binding_to_cam_TT_C_0, name = tbp binding to cam_TT_C_0
	reaction_tbp_binding_to_cam_TT_C_0=compartment_cytosol*(global_par_kon_tbp*x(194)*x(154)-global_par_koff_tbp_TT*x(156));

% Reaction: id = ca_binding_to_cam_TT_0_tbp_on_site_C, name = ca binding to cam_TT_0_tbp on site C
	reaction_ca_binding_to_cam_TT_0_tbp_on_site_C=compartment_cytosol*(global_par_kon_CT*const_species_ca*x(147)-global_par_koff_CT*x(156));

% Reaction: id = ca_binding_to_cam_TT_0_0_on_site_D, name = ca binding to cam_TT_0_0 on site D
	reaction_ca_binding_to_cam_TT_0_0_on_site_D=compartment_cytosol*(global_par_kon_DT*const_species_ca*x(145)-global_par_koff_DT*x(157));

% Reaction: id = rbp_binding_to_cam_TT_D_0, name = rbp binding to cam_TT_D_0
	reaction_rbp_binding_to_cam_TT_D_0=compartment_cytosol*(global_par_kon_rbp*x(193)*x(157)-global_par_koff_rbp_TT*x(158));

% Reaction: id = ca_binding_to_cam_TT_0_rbp_on_site_D, name = ca binding to cam_TT_0_rbp on site D
	reaction_ca_binding_to_cam_TT_0_rbp_on_site_D=compartment_cytosol*(global_par_kon_DT*const_species_ca*x(146)-global_par_koff_DT*x(158));

% Reaction: id = tbp_binding_to_cam_TT_D_0, name = tbp binding to cam_TT_D_0
	reaction_tbp_binding_to_cam_TT_D_0=compartment_cytosol*(global_par_kon_tbp*x(194)*x(157)-global_par_koff_tbp_TT*x(159));

% Reaction: id = ca_binding_to_cam_TT_0_tbp_on_site_D, name = ca binding to cam_TT_0_tbp on site D
	reaction_ca_binding_to_cam_TT_0_tbp_on_site_D=compartment_cytosol*(global_par_kon_DT*const_species_ca*x(147)-global_par_koff_DT*x(159));

% Reaction: id = ca_binding_to_cam_TT_B_0_on_site_A, name = ca binding to cam_TT_B_0 on site A
	reaction_ca_binding_to_cam_TT_B_0_on_site_A=compartment_cytosol*(global_par_kon_AT*const_species_ca*x(151)-global_par_koff_AT*x(160));

% Reaction: id = ca_binding_to_cam_TT_A_0_on_site_B, name = ca binding to cam_TT_A_0 on site B
	reaction_ca_binding_to_cam_TT_A_0_on_site_B=compartment_cytosol*(global_par_kon_BT*const_species_ca*x(148)-global_par_koff_BT*x(160));

% Reaction: id = rbp_binding_to_cam_TT_AB_0, name = rbp binding to cam_TT_AB_0
	reaction_rbp_binding_to_cam_TT_AB_0=compartment_cytosol*(global_par_kon_rbp*x(193)*x(160)-global_par_koff_rbp_TT*x(161));

% Reaction: id = ca_binding_to_cam_TT_B_rbp_on_site_A, name = ca binding to cam_TT_B_rbp on site A
	reaction_ca_binding_to_cam_TT_B_rbp_on_site_A=compartment_cytosol*(global_par_kon_AT*const_species_ca*x(152)-global_par_koff_AT*x(161));

% Reaction: id = ca_binding_to_cam_TT_A_rbp_on_site_B, name = ca binding to cam_TT_A_rbp on site B
	reaction_ca_binding_to_cam_TT_A_rbp_on_site_B=compartment_cytosol*(global_par_kon_BT*const_species_ca*x(149)-global_par_koff_BT*x(161));

% Reaction: id = tbp_binding_to_cam_TT_AB_0, name = tbp binding to cam_TT_AB_0
	reaction_tbp_binding_to_cam_TT_AB_0=compartment_cytosol*(global_par_kon_tbp*x(194)*x(160)-global_par_koff_tbp_TT*x(162));

% Reaction: id = ca_binding_to_cam_TT_B_tbp_on_site_A, name = ca binding to cam_TT_B_tbp on site A
	reaction_ca_binding_to_cam_TT_B_tbp_on_site_A=compartment_cytosol*(global_par_kon_AT*const_species_ca*x(153)-global_par_koff_AT*x(162));

% Reaction: id = ca_binding_to_cam_TT_A_tbp_on_site_B, name = ca binding to cam_TT_A_tbp on site B
	reaction_ca_binding_to_cam_TT_A_tbp_on_site_B=compartment_cytosol*(global_par_kon_BT*const_species_ca*x(150)-global_par_koff_BT*x(162));

% Reaction: id = ca_binding_to_cam_TT_C_0_on_site_A, name = ca binding to cam_TT_C_0 on site A
	reaction_ca_binding_to_cam_TT_C_0_on_site_A=compartment_cytosol*(global_par_kon_AT*const_species_ca*x(154)-global_par_koff_AT*x(163));

% Reaction: id = ca_binding_to_cam_TT_A_0_on_site_C, name = ca binding to cam_TT_A_0 on site C
	reaction_ca_binding_to_cam_TT_A_0_on_site_C=compartment_cytosol*(global_par_kon_CT*const_species_ca*x(148)-global_par_koff_CT*x(163));

% Reaction: id = rbp_binding_to_cam_TT_AC_0, name = rbp binding to cam_TT_AC_0
	reaction_rbp_binding_to_cam_TT_AC_0=compartment_cytosol*(global_par_kon_rbp*x(193)*x(163)-global_par_koff_rbp_TT*x(164));

% Reaction: id = ca_binding_to_cam_TT_C_rbp_on_site_A, name = ca binding to cam_TT_C_rbp on site A
	reaction_ca_binding_to_cam_TT_C_rbp_on_site_A=compartment_cytosol*(global_par_kon_AT*const_species_ca*x(155)-global_par_koff_AT*x(164));

% Reaction: id = ca_binding_to_cam_TT_A_rbp_on_site_C, name = ca binding to cam_TT_A_rbp on site C
	reaction_ca_binding_to_cam_TT_A_rbp_on_site_C=compartment_cytosol*(global_par_kon_CT*const_species_ca*x(149)-global_par_koff_CT*x(164));

% Reaction: id = tbp_binding_to_cam_TT_AC_0, name = tbp binding to cam_TT_AC_0
	reaction_tbp_binding_to_cam_TT_AC_0=compartment_cytosol*(global_par_kon_tbp*x(194)*x(163)-global_par_koff_tbp_TT*x(165));

% Reaction: id = ca_binding_to_cam_TT_C_tbp_on_site_A, name = ca binding to cam_TT_C_tbp on site A
	reaction_ca_binding_to_cam_TT_C_tbp_on_site_A=compartment_cytosol*(global_par_kon_AT*const_species_ca*x(156)-global_par_koff_AT*x(165));

% Reaction: id = ca_binding_to_cam_TT_A_tbp_on_site_C, name = ca binding to cam_TT_A_tbp on site C
	reaction_ca_binding_to_cam_TT_A_tbp_on_site_C=compartment_cytosol*(global_par_kon_CT*const_species_ca*x(150)-global_par_koff_CT*x(165));

% Reaction: id = ca_binding_to_cam_TT_D_0_on_site_A, name = ca binding to cam_TT_D_0 on site A
	reaction_ca_binding_to_cam_TT_D_0_on_site_A=compartment_cytosol*(global_par_kon_AT*const_species_ca*x(157)-global_par_koff_AT*x(166));

% Reaction: id = ca_binding_to_cam_TT_A_0_on_site_D, name = ca binding to cam_TT_A_0 on site D
	reaction_ca_binding_to_cam_TT_A_0_on_site_D=compartment_cytosol*(global_par_kon_DT*const_species_ca*x(148)-global_par_koff_DT*x(166));

% Reaction: id = rbp_binding_to_cam_TT_AD_0, name = rbp binding to cam_TT_AD_0
	reaction_rbp_binding_to_cam_TT_AD_0=compartment_cytosol*(global_par_kon_rbp*x(193)*x(166)-global_par_koff_rbp_TT*x(167));

% Reaction: id = ca_binding_to_cam_TT_D_rbp_on_site_A, name = ca binding to cam_TT_D_rbp on site A
	reaction_ca_binding_to_cam_TT_D_rbp_on_site_A=compartment_cytosol*(global_par_kon_AT*const_species_ca*x(158)-global_par_koff_AT*x(167));

% Reaction: id = ca_binding_to_cam_TT_A_rbp_on_site_D, name = ca binding to cam_TT_A_rbp on site D
	reaction_ca_binding_to_cam_TT_A_rbp_on_site_D=compartment_cytosol*(global_par_kon_DT*const_species_ca*x(149)-global_par_koff_DT*x(167));

% Reaction: id = tbp_binding_to_cam_TT_AD_0, name = tbp binding to cam_TT_AD_0
	reaction_tbp_binding_to_cam_TT_AD_0=compartment_cytosol*(global_par_kon_tbp*x(194)*x(166)-global_par_koff_tbp_TT*x(168));

% Reaction: id = ca_binding_to_cam_TT_D_tbp_on_site_A, name = ca binding to cam_TT_D_tbp on site A
	reaction_ca_binding_to_cam_TT_D_tbp_on_site_A=compartment_cytosol*(global_par_kon_AT*const_species_ca*x(159)-global_par_koff_AT*x(168));

% Reaction: id = ca_binding_to_cam_TT_A_tbp_on_site_D, name = ca binding to cam_TT_A_tbp on site D
	reaction_ca_binding_to_cam_TT_A_tbp_on_site_D=compartment_cytosol*(global_par_kon_DT*const_species_ca*x(150)-global_par_koff_DT*x(168));

% Reaction: id = ca_binding_to_cam_TT_C_0_on_site_B, name = ca binding to cam_TT_C_0 on site B
	reaction_ca_binding_to_cam_TT_C_0_on_site_B=compartment_cytosol*(global_par_kon_BT*const_species_ca*x(154)-global_par_koff_BT*x(169));

% Reaction: id = ca_binding_to_cam_TT_B_0_on_site_C, name = ca binding to cam_TT_B_0 on site C
	reaction_ca_binding_to_cam_TT_B_0_on_site_C=compartment_cytosol*(global_par_kon_CT*const_species_ca*x(151)-global_par_koff_CT*x(169));

% Reaction: id = rbp_binding_to_cam_TT_BC_0, name = rbp binding to cam_TT_BC_0
	reaction_rbp_binding_to_cam_TT_BC_0=compartment_cytosol*(global_par_kon_rbp*x(193)*x(169)-global_par_koff_rbp_TT*x(170));

% Reaction: id = ca_binding_to_cam_TT_C_rbp_on_site_B, name = ca binding to cam_TT_C_rbp on site B
	reaction_ca_binding_to_cam_TT_C_rbp_on_site_B=compartment_cytosol*(global_par_kon_BT*const_species_ca*x(155)-global_par_koff_BT*x(170));

% Reaction: id = ca_binding_to_cam_TT_B_rbp_on_site_C, name = ca binding to cam_TT_B_rbp on site C
	reaction_ca_binding_to_cam_TT_B_rbp_on_site_C=compartment_cytosol*(global_par_kon_CT*const_species_ca*x(152)-global_par_koff_CT*x(170));

% Reaction: id = tbp_binding_to_cam_TT_BC_0, name = tbp binding to cam_TT_BC_0
	reaction_tbp_binding_to_cam_TT_BC_0=compartment_cytosol*(global_par_kon_tbp*x(194)*x(169)-global_par_koff_tbp_TT*x(171));

% Reaction: id = ca_binding_to_cam_TT_C_tbp_on_site_B, name = ca binding to cam_TT_C_tbp on site B
	reaction_ca_binding_to_cam_TT_C_tbp_on_site_B=compartment_cytosol*(global_par_kon_BT*const_species_ca*x(156)-global_par_koff_BT*x(171));

% Reaction: id = ca_binding_to_cam_TT_B_tbp_on_site_C, name = ca binding to cam_TT_B_tbp on site C
	reaction_ca_binding_to_cam_TT_B_tbp_on_site_C=compartment_cytosol*(global_par_kon_CT*const_species_ca*x(153)-global_par_koff_CT*x(171));

% Reaction: id = ca_binding_to_cam_TT_D_0_on_site_B, name = ca binding to cam_TT_D_0 on site B
	reaction_ca_binding_to_cam_TT_D_0_on_site_B=compartment_cytosol*(global_par_kon_BT*const_species_ca*x(157)-global_par_koff_BT*x(172));

% Reaction: id = ca_binding_to_cam_TT_B_0_on_site_D, name = ca binding to cam_TT_B_0 on site D
	reaction_ca_binding_to_cam_TT_B_0_on_site_D=compartment_cytosol*(global_par_kon_DT*const_species_ca*x(151)-global_par_koff_DT*x(172));

% Reaction: id = rbp_binding_to_cam_TT_BD_0, name = rbp binding to cam_TT_BD_0
	reaction_rbp_binding_to_cam_TT_BD_0=compartment_cytosol*(global_par_kon_rbp*x(193)*x(172)-global_par_koff_rbp_TT*x(173));

% Reaction: id = ca_binding_to_cam_TT_D_rbp_on_site_B, name = ca binding to cam_TT_D_rbp on site B
	reaction_ca_binding_to_cam_TT_D_rbp_on_site_B=compartment_cytosol*(global_par_kon_BT*const_species_ca*x(158)-global_par_koff_BT*x(173));

% Reaction: id = ca_binding_to_cam_TT_B_rbp_on_site_D, name = ca binding to cam_TT_B_rbp on site D
	reaction_ca_binding_to_cam_TT_B_rbp_on_site_D=compartment_cytosol*(global_par_kon_DT*const_species_ca*x(152)-global_par_koff_DT*x(173));

% Reaction: id = tbp_binding_to_cam_TT_BD_0, name = tbp binding to cam_TT_BD_0
	reaction_tbp_binding_to_cam_TT_BD_0=compartment_cytosol*(global_par_kon_tbp*x(194)*x(172)-global_par_koff_tbp_TT*x(174));

% Reaction: id = ca_binding_to_cam_TT_D_tbp_on_site_B, name = ca binding to cam_TT_D_tbp on site B
	reaction_ca_binding_to_cam_TT_D_tbp_on_site_B=compartment_cytosol*(global_par_kon_BT*const_species_ca*x(159)-global_par_koff_BT*x(174));

% Reaction: id = ca_binding_to_cam_TT_B_tbp_on_site_D, name = ca binding to cam_TT_B_tbp on site D
	reaction_ca_binding_to_cam_TT_B_tbp_on_site_D=compartment_cytosol*(global_par_kon_DT*const_species_ca*x(153)-global_par_koff_DT*x(174));

% Reaction: id = ca_binding_to_cam_TT_D_0_on_site_C, name = ca binding to cam_TT_D_0 on site C
	reaction_ca_binding_to_cam_TT_D_0_on_site_C=compartment_cytosol*(global_par_kon_CT*const_species_ca*x(157)-global_par_koff_CT*x(175));

% Reaction: id = ca_binding_to_cam_TT_C_0_on_site_D, name = ca binding to cam_TT_C_0 on site D
	reaction_ca_binding_to_cam_TT_C_0_on_site_D=compartment_cytosol*(global_par_kon_DT*const_species_ca*x(154)-global_par_koff_DT*x(175));

% Reaction: id = rbp_binding_to_cam_TT_CD_0, name = rbp binding to cam_TT_CD_0
	reaction_rbp_binding_to_cam_TT_CD_0=compartment_cytosol*(global_par_kon_rbp*x(193)*x(175)-global_par_koff_rbp_TT*x(176));

% Reaction: id = ca_binding_to_cam_TT_D_rbp_on_site_C, name = ca binding to cam_TT_D_rbp on site C
	reaction_ca_binding_to_cam_TT_D_rbp_on_site_C=compartment_cytosol*(global_par_kon_CT*const_species_ca*x(158)-global_par_koff_CT*x(176));

% Reaction: id = ca_binding_to_cam_TT_C_rbp_on_site_D, name = ca binding to cam_TT_C_rbp on site D
	reaction_ca_binding_to_cam_TT_C_rbp_on_site_D=compartment_cytosol*(global_par_kon_DT*const_species_ca*x(155)-global_par_koff_DT*x(176));

% Reaction: id = tbp_binding_to_cam_TT_CD_0, name = tbp binding to cam_TT_CD_0
	reaction_tbp_binding_to_cam_TT_CD_0=compartment_cytosol*(global_par_kon_tbp*x(194)*x(175)-global_par_koff_tbp_TT*x(177));

% Reaction: id = ca_binding_to_cam_TT_D_tbp_on_site_C, name = ca binding to cam_TT_D_tbp on site C
	reaction_ca_binding_to_cam_TT_D_tbp_on_site_C=compartment_cytosol*(global_par_kon_CT*const_species_ca*x(159)-global_par_koff_CT*x(177));

% Reaction: id = ca_binding_to_cam_TT_C_tbp_on_site_D, name = ca binding to cam_TT_C_tbp on site D
	reaction_ca_binding_to_cam_TT_C_tbp_on_site_D=compartment_cytosol*(global_par_kon_DT*const_species_ca*x(156)-global_par_koff_DT*x(177));

% Reaction: id = ca_binding_to_cam_TT_BC_0_on_site_A, name = ca binding to cam_TT_BC_0 on site A
	reaction_ca_binding_to_cam_TT_BC_0_on_site_A=compartment_cytosol*(global_par_kon_AT*const_species_ca*x(169)-global_par_koff_AT*x(178));

% Reaction: id = ca_binding_to_cam_TT_AC_0_on_site_B, name = ca binding to cam_TT_AC_0 on site B
	reaction_ca_binding_to_cam_TT_AC_0_on_site_B=compartment_cytosol*(global_par_kon_BT*const_species_ca*x(163)-global_par_koff_BT*x(178));

% Reaction: id = ca_binding_to_cam_TT_AB_0_on_site_C, name = ca binding to cam_TT_AB_0 on site C
	reaction_ca_binding_to_cam_TT_AB_0_on_site_C=compartment_cytosol*(global_par_kon_CT*const_species_ca*x(160)-global_par_koff_CT*x(178));

% Reaction: id = rbp_binding_to_cam_TT_ABC_0, name = rbp binding to cam_TT_ABC_0
	reaction_rbp_binding_to_cam_TT_ABC_0=compartment_cytosol*(global_par_kon_rbp*x(193)*x(178)-global_par_koff_rbp_TT*x(179));

% Reaction: id = ca_binding_to_cam_TT_BC_rbp_on_site_A, name = ca binding to cam_TT_BC_rbp on site A
	reaction_ca_binding_to_cam_TT_BC_rbp_on_site_A=compartment_cytosol*(global_par_kon_AT*const_species_ca*x(170)-global_par_koff_AT*x(179));

% Reaction: id = ca_binding_to_cam_TT_AC_rbp_on_site_B, name = ca binding to cam_TT_AC_rbp on site B
	reaction_ca_binding_to_cam_TT_AC_rbp_on_site_B=compartment_cytosol*(global_par_kon_BT*const_species_ca*x(164)-global_par_koff_BT*x(179));

% Reaction: id = ca_binding_to_cam_TT_AB_rbp_on_site_C, name = ca binding to cam_TT_AB_rbp on site C
	reaction_ca_binding_to_cam_TT_AB_rbp_on_site_C=compartment_cytosol*(global_par_kon_CT*const_species_ca*x(161)-global_par_koff_CT*x(179));

% Reaction: id = tbp_binding_to_cam_TT_ABC_0, name = tbp binding to cam_TT_ABC_0
	reaction_tbp_binding_to_cam_TT_ABC_0=compartment_cytosol*(global_par_kon_tbp*x(194)*x(178)-global_par_koff_tbp_TT*x(180));

% Reaction: id = ca_binding_to_cam_TT_BC_tbp_on_site_A, name = ca binding to cam_TT_BC_tbp on site A
	reaction_ca_binding_to_cam_TT_BC_tbp_on_site_A=compartment_cytosol*(global_par_kon_AT*const_species_ca*x(171)-global_par_koff_AT*x(180));

% Reaction: id = ca_binding_to_cam_TT_AC_tbp_on_site_B, name = ca binding to cam_TT_AC_tbp on site B
	reaction_ca_binding_to_cam_TT_AC_tbp_on_site_B=compartment_cytosol*(global_par_kon_BT*const_species_ca*x(165)-global_par_koff_BT*x(180));

% Reaction: id = ca_binding_to_cam_TT_AB_tbp_on_site_C, name = ca binding to cam_TT_AB_tbp on site C
	reaction_ca_binding_to_cam_TT_AB_tbp_on_site_C=compartment_cytosol*(global_par_kon_CT*const_species_ca*x(162)-global_par_koff_CT*x(180));

% Reaction: id = ca_binding_to_cam_TT_BD_0_on_site_A, name = ca binding to cam_TT_BD_0 on site A
	reaction_ca_binding_to_cam_TT_BD_0_on_site_A=compartment_cytosol*(global_par_kon_AT*const_species_ca*x(172)-global_par_koff_AT*x(181));

% Reaction: id = ca_binding_to_cam_TT_AD_0_on_site_B, name = ca binding to cam_TT_AD_0 on site B
	reaction_ca_binding_to_cam_TT_AD_0_on_site_B=compartment_cytosol*(global_par_kon_BT*const_species_ca*x(166)-global_par_koff_BT*x(181));

% Reaction: id = ca_binding_to_cam_TT_AB_0_on_site_D, name = ca binding to cam_TT_AB_0 on site D
	reaction_ca_binding_to_cam_TT_AB_0_on_site_D=compartment_cytosol*(global_par_kon_DT*const_species_ca*x(160)-global_par_koff_DT*x(181));

% Reaction: id = rbp_binding_to_cam_TT_ABD_0, name = rbp binding to cam_TT_ABD_0
	reaction_rbp_binding_to_cam_TT_ABD_0=compartment_cytosol*(global_par_kon_rbp*x(193)*x(181)-global_par_koff_rbp_TT*x(182));

% Reaction: id = ca_binding_to_cam_TT_BD_rbp_on_site_A, name = ca binding to cam_TT_BD_rbp on site A
	reaction_ca_binding_to_cam_TT_BD_rbp_on_site_A=compartment_cytosol*(global_par_kon_AT*const_species_ca*x(173)-global_par_koff_AT*x(182));

% Reaction: id = ca_binding_to_cam_TT_AD_rbp_on_site_B, name = ca binding to cam_TT_AD_rbp on site B
	reaction_ca_binding_to_cam_TT_AD_rbp_on_site_B=compartment_cytosol*(global_par_kon_BT*const_species_ca*x(167)-global_par_koff_BT*x(182));

% Reaction: id = ca_binding_to_cam_TT_AB_rbp_on_site_D, name = ca binding to cam_TT_AB_rbp on site D
	reaction_ca_binding_to_cam_TT_AB_rbp_on_site_D=compartment_cytosol*(global_par_kon_DT*const_species_ca*x(161)-global_par_koff_DT*x(182));

% Reaction: id = tbp_binding_to_cam_TT_ABD_0, name = tbp binding to cam_TT_ABD_0
	reaction_tbp_binding_to_cam_TT_ABD_0=compartment_cytosol*(global_par_kon_tbp*x(194)*x(181)-global_par_koff_tbp_TT*x(183));

% Reaction: id = ca_binding_to_cam_TT_BD_tbp_on_site_A, name = ca binding to cam_TT_BD_tbp on site A
	reaction_ca_binding_to_cam_TT_BD_tbp_on_site_A=compartment_cytosol*(global_par_kon_AT*const_species_ca*x(174)-global_par_koff_AT*x(183));

% Reaction: id = ca_binding_to_cam_TT_AD_tbp_on_site_B, name = ca binding to cam_TT_AD_tbp on site B
	reaction_ca_binding_to_cam_TT_AD_tbp_on_site_B=compartment_cytosol*(global_par_kon_BT*const_species_ca*x(168)-global_par_koff_BT*x(183));

% Reaction: id = ca_binding_to_cam_TT_AB_tbp_on_site_D, name = ca binding to cam_TT_AB_tbp on site D
	reaction_ca_binding_to_cam_TT_AB_tbp_on_site_D=compartment_cytosol*(global_par_kon_DT*const_species_ca*x(162)-global_par_koff_DT*x(183));

% Reaction: id = ca_binding_to_cam_TT_CD_0_on_site_A, name = ca binding to cam_TT_CD_0 on site A
	reaction_ca_binding_to_cam_TT_CD_0_on_site_A=compartment_cytosol*(global_par_kon_AT*const_species_ca*x(175)-global_par_koff_AT*x(184));

% Reaction: id = ca_binding_to_cam_TT_AD_0_on_site_C, name = ca binding to cam_TT_AD_0 on site C
	reaction_ca_binding_to_cam_TT_AD_0_on_site_C=compartment_cytosol*(global_par_kon_CT*const_species_ca*x(166)-global_par_koff_CT*x(184));

% Reaction: id = ca_binding_to_cam_TT_AC_0_on_site_D, name = ca binding to cam_TT_AC_0 on site D
	reaction_ca_binding_to_cam_TT_AC_0_on_site_D=compartment_cytosol*(global_par_kon_DT*const_species_ca*x(163)-global_par_koff_DT*x(184));

% Reaction: id = rbp_binding_to_cam_TT_ACD_0, name = rbp binding to cam_TT_ACD_0
	reaction_rbp_binding_to_cam_TT_ACD_0=compartment_cytosol*(global_par_kon_rbp*x(193)*x(184)-global_par_koff_rbp_TT*x(185));

% Reaction: id = ca_binding_to_cam_TT_CD_rbp_on_site_A, name = ca binding to cam_TT_CD_rbp on site A
	reaction_ca_binding_to_cam_TT_CD_rbp_on_site_A=compartment_cytosol*(global_par_kon_AT*const_species_ca*x(176)-global_par_koff_AT*x(185));

% Reaction: id = ca_binding_to_cam_TT_AD_rbp_on_site_C, name = ca binding to cam_TT_AD_rbp on site C
	reaction_ca_binding_to_cam_TT_AD_rbp_on_site_C=compartment_cytosol*(global_par_kon_CT*const_species_ca*x(167)-global_par_koff_CT*x(185));

% Reaction: id = ca_binding_to_cam_TT_AC_rbp_on_site_D, name = ca binding to cam_TT_AC_rbp on site D
	reaction_ca_binding_to_cam_TT_AC_rbp_on_site_D=compartment_cytosol*(global_par_kon_DT*const_species_ca*x(164)-global_par_koff_DT*x(185));

% Reaction: id = tbp_binding_to_cam_TT_ACD_0, name = tbp binding to cam_TT_ACD_0
	reaction_tbp_binding_to_cam_TT_ACD_0=compartment_cytosol*(global_par_kon_tbp*x(194)*x(184)-global_par_koff_tbp_TT*x(186));

% Reaction: id = ca_binding_to_cam_TT_CD_tbp_on_site_A, name = ca binding to cam_TT_CD_tbp on site A
	reaction_ca_binding_to_cam_TT_CD_tbp_on_site_A=compartment_cytosol*(global_par_kon_AT*const_species_ca*x(177)-global_par_koff_AT*x(186));

% Reaction: id = ca_binding_to_cam_TT_AD_tbp_on_site_C, name = ca binding to cam_TT_AD_tbp on site C
	reaction_ca_binding_to_cam_TT_AD_tbp_on_site_C=compartment_cytosol*(global_par_kon_CT*const_species_ca*x(168)-global_par_koff_CT*x(186));

% Reaction: id = ca_binding_to_cam_TT_AC_tbp_on_site_D, name = ca binding to cam_TT_AC_tbp on site D
	reaction_ca_binding_to_cam_TT_AC_tbp_on_site_D=compartment_cytosol*(global_par_kon_DT*const_species_ca*x(165)-global_par_koff_DT*x(186));

% Reaction: id = ca_binding_to_cam_TT_CD_0_on_site_B, name = ca binding to cam_TT_CD_0 on site B
	reaction_ca_binding_to_cam_TT_CD_0_on_site_B=compartment_cytosol*(global_par_kon_BT*const_species_ca*x(175)-global_par_koff_BT*x(187));

% Reaction: id = ca_binding_to_cam_TT_BD_0_on_site_C, name = ca binding to cam_TT_BD_0 on site C
	reaction_ca_binding_to_cam_TT_BD_0_on_site_C=compartment_cytosol*(global_par_kon_CT*const_species_ca*x(172)-global_par_koff_CT*x(187));

% Reaction: id = ca_binding_to_cam_TT_BC_0_on_site_D, name = ca binding to cam_TT_BC_0 on site D
	reaction_ca_binding_to_cam_TT_BC_0_on_site_D=compartment_cytosol*(global_par_kon_DT*const_species_ca*x(169)-global_par_koff_DT*x(187));

% Reaction: id = rbp_binding_to_cam_TT_BCD_0, name = rbp binding to cam_TT_BCD_0
	reaction_rbp_binding_to_cam_TT_BCD_0=compartment_cytosol*(global_par_kon_rbp*x(193)*x(187)-global_par_koff_rbp_TT*x(188));

% Reaction: id = ca_binding_to_cam_TT_CD_rbp_on_site_B, name = ca binding to cam_TT_CD_rbp on site B
	reaction_ca_binding_to_cam_TT_CD_rbp_on_site_B=compartment_cytosol*(global_par_kon_BT*const_species_ca*x(176)-global_par_koff_BT*x(188));

% Reaction: id = ca_binding_to_cam_TT_BD_rbp_on_site_C, name = ca binding to cam_TT_BD_rbp on site C
	reaction_ca_binding_to_cam_TT_BD_rbp_on_site_C=compartment_cytosol*(global_par_kon_CT*const_species_ca*x(173)-global_par_koff_CT*x(188));

% Reaction: id = ca_binding_to_cam_TT_BC_rbp_on_site_D, name = ca binding to cam_TT_BC_rbp on site D
	reaction_ca_binding_to_cam_TT_BC_rbp_on_site_D=compartment_cytosol*(global_par_kon_DT*const_species_ca*x(170)-global_par_koff_DT*x(188));

% Reaction: id = tbp_binding_to_cam_TT_BCD_0, name = tbp binding to cam_TT_BCD_0
	reaction_tbp_binding_to_cam_TT_BCD_0=compartment_cytosol*(global_par_kon_tbp*x(194)*x(187)-global_par_koff_tbp_TT*x(189));

% Reaction: id = ca_binding_to_cam_TT_CD_tbp_on_site_B, name = ca binding to cam_TT_CD_tbp on site B
	reaction_ca_binding_to_cam_TT_CD_tbp_on_site_B=compartment_cytosol*(global_par_kon_BT*const_species_ca*x(177)-global_par_koff_BT*x(189));

% Reaction: id = ca_binding_to_cam_TT_BD_tbp_on_site_C, name = ca binding to cam_TT_BD_tbp on site C
	reaction_ca_binding_to_cam_TT_BD_tbp_on_site_C=compartment_cytosol*(global_par_kon_CT*const_species_ca*x(174)-global_par_koff_CT*x(189));

% Reaction: id = ca_binding_to_cam_TT_BC_tbp_on_site_D, name = ca binding to cam_TT_BC_tbp on site D
	reaction_ca_binding_to_cam_TT_BC_tbp_on_site_D=compartment_cytosol*(global_par_kon_DT*const_species_ca*x(171)-global_par_koff_DT*x(189));

% Reaction: id = ca_binding_to_cam_TT_BCD_0_on_site_A, name = ca binding to cam_TT_BCD_0 on site A
	reaction_ca_binding_to_cam_TT_BCD_0_on_site_A=compartment_cytosol*(global_par_kon_AT*const_species_ca*x(187)-global_par_koff_AT*x(190));

% Reaction: id = ca_binding_to_cam_TT_ACD_0_on_site_B, name = ca binding to cam_TT_ACD_0 on site B
	reaction_ca_binding_to_cam_TT_ACD_0_on_site_B=compartment_cytosol*(global_par_kon_BT*const_species_ca*x(184)-global_par_koff_BT*x(190));

% Reaction: id = ca_binding_to_cam_TT_ABD_0_on_site_C, name = ca binding to cam_TT_ABD_0 on site C
	reaction_ca_binding_to_cam_TT_ABD_0_on_site_C=compartment_cytosol*(global_par_kon_CT*const_species_ca*x(181)-global_par_koff_CT*x(190));

% Reaction: id = ca_binding_to_cam_TT_ABC_0_on_site_D, name = ca binding to cam_TT_ABC_0 on site D
	reaction_ca_binding_to_cam_TT_ABC_0_on_site_D=compartment_cytosol*(global_par_kon_DT*const_species_ca*x(178)-global_par_koff_DT*x(190));

% Reaction: id = rbp_binding_to_cam_TT_ABCD_0, name = rbp binding to cam_TT_ABCD_0
	reaction_rbp_binding_to_cam_TT_ABCD_0=compartment_cytosol*(global_par_kon_rbp*x(193)*x(190)-global_par_koff_rbp_TT*x(191));

% Reaction: id = ca_binding_to_cam_TT_BCD_rbp_on_site_A, name = ca binding to cam_TT_BCD_rbp on site A
	reaction_ca_binding_to_cam_TT_BCD_rbp_on_site_A=compartment_cytosol*(global_par_kon_AT*const_species_ca*x(188)-global_par_koff_AT*x(191));

% Reaction: id = ca_binding_to_cam_TT_ACD_rbp_on_site_B, name = ca binding to cam_TT_ACD_rbp on site B
	reaction_ca_binding_to_cam_TT_ACD_rbp_on_site_B=compartment_cytosol*(global_par_kon_BT*const_species_ca*x(185)-global_par_koff_BT*x(191));

% Reaction: id = ca_binding_to_cam_TT_ABD_rbp_on_site_C, name = ca binding to cam_TT_ABD_rbp on site C
	reaction_ca_binding_to_cam_TT_ABD_rbp_on_site_C=compartment_cytosol*(global_par_kon_CT*const_species_ca*x(182)-global_par_koff_CT*x(191));

% Reaction: id = ca_binding_to_cam_TT_ABC_rbp_on_site_D, name = ca binding to cam_TT_ABC_rbp on site D
	reaction_ca_binding_to_cam_TT_ABC_rbp_on_site_D=compartment_cytosol*(global_par_kon_DT*const_species_ca*x(179)-global_par_koff_DT*x(191));

% Reaction: id = tbp_binding_to_cam_TT_ABCD_0, name = tbp binding to cam_TT_ABCD_0
	reaction_tbp_binding_to_cam_TT_ABCD_0=compartment_cytosol*(global_par_kon_tbp*x(194)*x(190)-global_par_koff_tbp_TT*x(192));

% Reaction: id = ca_binding_to_cam_TT_BCD_tbp_on_site_A, name = ca binding to cam_TT_BCD_tbp on site A
	reaction_ca_binding_to_cam_TT_BCD_tbp_on_site_A=compartment_cytosol*(global_par_kon_AT*const_species_ca*x(189)-global_par_koff_AT*x(192));

% Reaction: id = ca_binding_to_cam_TT_ACD_tbp_on_site_B, name = ca binding to cam_TT_ACD_tbp on site B
	reaction_ca_binding_to_cam_TT_ACD_tbp_on_site_B=compartment_cytosol*(global_par_kon_BT*const_species_ca*x(186)-global_par_koff_BT*x(192));

% Reaction: id = ca_binding_to_cam_TT_ABD_tbp_on_site_C, name = ca binding to cam_TT_ABD_tbp on site C
	reaction_ca_binding_to_cam_TT_ABD_tbp_on_site_C=compartment_cytosol*(global_par_kon_CT*const_species_ca*x(183)-global_par_koff_CT*x(192));

% Reaction: id = ca_binding_to_cam_TT_ABC_tbp_on_site_D, name = ca binding to cam_TT_ABC_tbp on site D
	reaction_ca_binding_to_cam_TT_ABC_tbp_on_site_D=compartment_cytosol*(global_par_kon_DT*const_species_ca*x(180)-global_par_koff_DT*x(192));

% Reaction: id = Transition_from_cam_RT_0_0_to_cam_RR_0_0, name = Transition from cam_RT_0_0 to cam_RR_0_0
	reaction_Transition_from_cam_RT_0_0_to_cam_RR_0_0=compartment_cytosol*(global_par_k_T2R_C*x(49)-global_par_k_R2T_C*x(1));

% Reaction: id = Transition_from_cam_RT_A_0_to_cam_RR_A_0, name = Transition from cam_RT_A_0 to cam_RR_A_0
	reaction_Transition_from_cam_RT_A_0_to_cam_RR_A_0=compartment_cytosol*(global_par_k_T2R_C*x(52)-global_par_k_R2T_C*x(4));

% Reaction: id = Transition_from_cam_RT_B_0_to_cam_RR_B_0, name = Transition from cam_RT_B_0 to cam_RR_B_0
	reaction_Transition_from_cam_RT_B_0_to_cam_RR_B_0=compartment_cytosol*(global_par_k_T2R_C*x(55)-global_par_k_R2T_C*x(7));

% Reaction: id = Transition_from_cam_RT_C_0_to_cam_RR_C_0, name = Transition from cam_RT_C_0 to cam_RR_C_0
	reaction_Transition_from_cam_RT_C_0_to_cam_RR_C_0=compartment_cytosol*(global_par_k_T2R_C1*x(58)-global_par_k_R2T_C1*x(10));

% Reaction: id = Transition_from_cam_RT_D_0_to_cam_RR_D_0, name = Transition from cam_RT_D_0 to cam_RR_D_0
	reaction_Transition_from_cam_RT_D_0_to_cam_RR_D_0=compartment_cytosol*(global_par_k_T2R_C1*x(61)-global_par_k_R2T_C1*x(13));

% Reaction: id = Transition_from_cam_RT_AB_0_to_cam_RR_AB_0, name = Transition from cam_RT_AB_0 to cam_RR_AB_0
	reaction_Transition_from_cam_RT_AB_0_to_cam_RR_AB_0=compartment_cytosol*(global_par_k_T2R_C*x(64)-global_par_k_R2T_C*x(16));

% Reaction: id = Transition_from_cam_RT_AC_0_to_cam_RR_AC_0, name = Transition from cam_RT_AC_0 to cam_RR_AC_0
	reaction_Transition_from_cam_RT_AC_0_to_cam_RR_AC_0=compartment_cytosol*(global_par_k_T2R_C1*x(67)-global_par_k_R2T_C1*x(19));

% Reaction: id = Transition_from_cam_RT_AD_0_to_cam_RR_AD_0, name = Transition from cam_RT_AD_0 to cam_RR_AD_0
	reaction_Transition_from_cam_RT_AD_0_to_cam_RR_AD_0=compartment_cytosol*(global_par_k_T2R_C1*x(70)-global_par_k_R2T_C1*x(22));

% Reaction: id = Transition_from_cam_RT_BC_0_to_cam_RR_BC_0, name = Transition from cam_RT_BC_0 to cam_RR_BC_0
	reaction_Transition_from_cam_RT_BC_0_to_cam_RR_BC_0=compartment_cytosol*(global_par_k_T2R_C1*x(73)-global_par_k_R2T_C1*x(25));

% Reaction: id = Transition_from_cam_RT_BD_0_to_cam_RR_BD_0, name = Transition from cam_RT_BD_0 to cam_RR_BD_0
	reaction_Transition_from_cam_RT_BD_0_to_cam_RR_BD_0=compartment_cytosol*(global_par_k_T2R_C1*x(76)-global_par_k_R2T_C1*x(28));

% Reaction: id = Transition_from_cam_RT_CD_0_to_cam_RR_CD_0, name = Transition from cam_RT_CD_0 to cam_RR_CD_0
	reaction_Transition_from_cam_RT_CD_0_to_cam_RR_CD_0=compartment_cytosol*(global_par_k_T2R_C2*x(79)-global_par_k_R2T_C2*x(31));

% Reaction: id = Transition_from_cam_RT_ABC_0_to_cam_RR_ABC_0, name = Transition from cam_RT_ABC_0 to cam_RR_ABC_0
	reaction_Transition_from_cam_RT_ABC_0_to_cam_RR_ABC_0=compartment_cytosol*(global_par_k_T2R_C1*x(82)-global_par_k_R2T_C1*x(34));

% Reaction: id = Transition_from_cam_RT_ABD_0_to_cam_RR_ABD_0, name = Transition from cam_RT_ABD_0 to cam_RR_ABD_0
	reaction_Transition_from_cam_RT_ABD_0_to_cam_RR_ABD_0=compartment_cytosol*(global_par_k_T2R_C1*x(85)-global_par_k_R2T_C1*x(37));

% Reaction: id = Transition_from_cam_RT_ACD_0_to_cam_RR_ACD_0, name = Transition from cam_RT_ACD_0 to cam_RR_ACD_0
	reaction_Transition_from_cam_RT_ACD_0_to_cam_RR_ACD_0=compartment_cytosol*(global_par_k_T2R_C2*x(88)-global_par_k_R2T_C2*x(40));

% Reaction: id = Transition_from_cam_RT_BCD_0_to_cam_RR_BCD_0, name = Transition from cam_RT_BCD_0 to cam_RR_BCD_0
	reaction_Transition_from_cam_RT_BCD_0_to_cam_RR_BCD_0=compartment_cytosol*(global_par_k_T2R_C2*x(91)-global_par_k_R2T_C2*x(43));

% Reaction: id = Transition_from_cam_RT_ABCD_0_to_cam_RR_ABCD_0, name = Transition from cam_RT_ABCD_0 to cam_RR_ABCD_0
	reaction_Transition_from_cam_RT_ABCD_0_to_cam_RR_ABCD_0=compartment_cytosol*(global_par_k_T2R_C2*x(94)-global_par_k_R2T_C2*x(46));

% Reaction: id = Transition_from_cam_TR_0_0_to_cam_RR_0_0, name = Transition from cam_TR_0_0 to cam_RR_0_0
	reaction_Transition_from_cam_TR_0_0_to_cam_RR_0_0=compartment_cytosol*(global_par_k_T2R_N*x(97)-global_par_k_R2T_N*x(1));

% Reaction: id = Transition_from_cam_TR_A_0_to_cam_RR_A_0, name = Transition from cam_TR_A_0 to cam_RR_A_0
	reaction_Transition_from_cam_TR_A_0_to_cam_RR_A_0=compartment_cytosol*(global_par_k_T2R_N1*x(100)-global_par_k_R2T_N1*x(4));

% Reaction: id = Transition_from_cam_TR_B_0_to_cam_RR_B_0, name = Transition from cam_TR_B_0 to cam_RR_B_0
	reaction_Transition_from_cam_TR_B_0_to_cam_RR_B_0=compartment_cytosol*(global_par_k_T2R_N1*x(103)-global_par_k_R2T_N1*x(7));

% Reaction: id = Transition_from_cam_TR_C_0_to_cam_RR_C_0, name = Transition from cam_TR_C_0 to cam_RR_C_0
	reaction_Transition_from_cam_TR_C_0_to_cam_RR_C_0=compartment_cytosol*(global_par_k_T2R_N*x(106)-global_par_k_R2T_N*x(10));

% Reaction: id = Transition_from_cam_TR_D_0_to_cam_RR_D_0, name = Transition from cam_TR_D_0 to cam_RR_D_0
	reaction_Transition_from_cam_TR_D_0_to_cam_RR_D_0=compartment_cytosol*(global_par_k_T2R_N*x(109)-global_par_k_R2T_N*x(13));

% Reaction: id = Transition_from_cam_TR_AB_0_to_cam_RR_AB_0, name = Transition from cam_TR_AB_0 to cam_RR_AB_0
	reaction_Transition_from_cam_TR_AB_0_to_cam_RR_AB_0=compartment_cytosol*(global_par_k_T2R_N2*x(112)-global_par_k_R2T_N2*x(16));

% Reaction: id = Transition_from_cam_TR_AC_0_to_cam_RR_AC_0, name = Transition from cam_TR_AC_0 to cam_RR_AC_0
	reaction_Transition_from_cam_TR_AC_0_to_cam_RR_AC_0=compartment_cytosol*(global_par_k_T2R_N1*x(115)-global_par_k_R2T_N1*x(19));

% Reaction: id = Transition_from_cam_TR_AD_0_to_cam_RR_AD_0, name = Transition from cam_TR_AD_0 to cam_RR_AD_0
	reaction_Transition_from_cam_TR_AD_0_to_cam_RR_AD_0=compartment_cytosol*(global_par_k_T2R_N1*x(118)-global_par_k_R2T_N1*x(22));

% Reaction: id = Transition_from_cam_TR_BC_0_to_cam_RR_BC_0, name = Transition from cam_TR_BC_0 to cam_RR_BC_0
	reaction_Transition_from_cam_TR_BC_0_to_cam_RR_BC_0=compartment_cytosol*(global_par_k_T2R_N1*x(121)-global_par_k_R2T_N1*x(25));

% Reaction: id = Transition_from_cam_TR_BD_0_to_cam_RR_BD_0, name = Transition from cam_TR_BD_0 to cam_RR_BD_0
	reaction_Transition_from_cam_TR_BD_0_to_cam_RR_BD_0=compartment_cytosol*(global_par_k_T2R_N1*x(124)-global_par_k_R2T_N1*x(28));

% Reaction: id = Transition_from_cam_TR_CD_0_to_cam_RR_CD_0, name = Transition from cam_TR_CD_0 to cam_RR_CD_0
	reaction_Transition_from_cam_TR_CD_0_to_cam_RR_CD_0=compartment_cytosol*(global_par_k_T2R_N*x(127)-global_par_k_R2T_N*x(31));

% Reaction: id = Transition_from_cam_TR_ABC_0_to_cam_RR_ABC_0, name = Transition from cam_TR_ABC_0 to cam_RR_ABC_0
	reaction_Transition_from_cam_TR_ABC_0_to_cam_RR_ABC_0=compartment_cytosol*(global_par_k_T2R_N2*x(130)-global_par_k_R2T_N2*x(34));

% Reaction: id = Transition_from_cam_TR_ABD_0_to_cam_RR_ABD_0, name = Transition from cam_TR_ABD_0 to cam_RR_ABD_0
	reaction_Transition_from_cam_TR_ABD_0_to_cam_RR_ABD_0=compartment_cytosol*(global_par_k_T2R_N2*x(133)-global_par_k_R2T_N2*x(37));

% Reaction: id = Transition_from_cam_TR_ACD_0_to_cam_RR_ACD_0, name = Transition from cam_TR_ACD_0 to cam_RR_ACD_0
	reaction_Transition_from_cam_TR_ACD_0_to_cam_RR_ACD_0=compartment_cytosol*(global_par_k_T2R_N1*x(136)-global_par_k_R2T_N1*x(40));

% Reaction: id = Transition_from_cam_TR_BCD_0_to_cam_RR_BCD_0, name = Transition from cam_TR_BCD_0 to cam_RR_BCD_0
	reaction_Transition_from_cam_TR_BCD_0_to_cam_RR_BCD_0=compartment_cytosol*(global_par_k_T2R_N1*x(139)-global_par_k_R2T_N1*x(43));

% Reaction: id = Transition_from_cam_TR_ABCD_0_to_cam_RR_ABCD_0, name = Transition from cam_TR_ABCD_0 to cam_RR_ABCD_0
	reaction_Transition_from_cam_TR_ABCD_0_to_cam_RR_ABCD_0=compartment_cytosol*(global_par_k_T2R_N2*x(142)-global_par_k_R2T_N2*x(46));

% Reaction: id = Transition_from_cam_TT_0_0_to_cam_RT_0_0, name = Transition from cam_TT_0_0 to cam_RT_0_0
	reaction_Transition_from_cam_TT_0_0_to_cam_RT_0_0=compartment_cytosol*(global_par_k_T2R_N*x(145)-global_par_k_R2T_N*x(49));

% Reaction: id = Transition_from_cam_TT_0_0_to_cam_TR_0_0, name = Transition from cam_TT_0_0 to cam_TR_0_0
	reaction_Transition_from_cam_TT_0_0_to_cam_TR_0_0=compartment_cytosol*(global_par_k_T2R_C*x(145)-global_par_k_R2T_C*x(97));

% Reaction: id = Transition_from_cam_TT_A_0_to_cam_RT_A_0, name = Transition from cam_TT_A_0 to cam_RT_A_0
	reaction_Transition_from_cam_TT_A_0_to_cam_RT_A_0=compartment_cytosol*(global_par_k_T2R_N1*x(148)-global_par_k_R2T_N1*x(52));

% Reaction: id = Transition_from_cam_TT_A_0_to_cam_TR_A_0, name = Transition from cam_TT_A_0 to cam_TR_A_0
	reaction_Transition_from_cam_TT_A_0_to_cam_TR_A_0=compartment_cytosol*(global_par_k_T2R_C*x(148)-global_par_k_R2T_C*x(100));

% Reaction: id = Transition_from_cam_TT_B_0_to_cam_RT_B_0, name = Transition from cam_TT_B_0 to cam_RT_B_0
	reaction_Transition_from_cam_TT_B_0_to_cam_RT_B_0=compartment_cytosol*(global_par_k_T2R_N1*x(151)-global_par_k_R2T_N1*x(55));

% Reaction: id = Transition_from_cam_TT_B_0_to_cam_TR_B_0, name = Transition from cam_TT_B_0 to cam_TR_B_0
	reaction_Transition_from_cam_TT_B_0_to_cam_TR_B_0=compartment_cytosol*(global_par_k_T2R_C*x(151)-global_par_k_R2T_C*x(103));

% Reaction: id = Transition_from_cam_TT_C_0_to_cam_RT_C_0, name = Transition from cam_TT_C_0 to cam_RT_C_0
	reaction_Transition_from_cam_TT_C_0_to_cam_RT_C_0=compartment_cytosol*(global_par_k_T2R_N*x(154)-global_par_k_R2T_N*x(58));

% Reaction: id = Transition_from_cam_TT_C_0_to_cam_TR_C_0, name = Transition from cam_TT_C_0 to cam_TR_C_0
	reaction_Transition_from_cam_TT_C_0_to_cam_TR_C_0=compartment_cytosol*(global_par_k_T2R_C1*x(154)-global_par_k_R2T_C1*x(106));

% Reaction: id = Transition_from_cam_TT_D_0_to_cam_RT_D_0, name = Transition from cam_TT_D_0 to cam_RT_D_0
	reaction_Transition_from_cam_TT_D_0_to_cam_RT_D_0=compartment_cytosol*(global_par_k_T2R_N*x(157)-global_par_k_R2T_N*x(61));

% Reaction: id = Transition_from_cam_TT_D_0_to_cam_TR_D_0, name = Transition from cam_TT_D_0 to cam_TR_D_0
	reaction_Transition_from_cam_TT_D_0_to_cam_TR_D_0=compartment_cytosol*(global_par_k_T2R_C1*x(157)-global_par_k_R2T_C1*x(109));

% Reaction: id = Transition_from_cam_TT_AB_0_to_cam_RT_AB_0, name = Transition from cam_TT_AB_0 to cam_RT_AB_0
	reaction_Transition_from_cam_TT_AB_0_to_cam_RT_AB_0=compartment_cytosol*(global_par_k_T2R_N2*x(160)-global_par_k_R2T_N2*x(64));

% Reaction: id = Transition_from_cam_TT_AB_0_to_cam_TR_AB_0, name = Transition from cam_TT_AB_0 to cam_TR_AB_0
	reaction_Transition_from_cam_TT_AB_0_to_cam_TR_AB_0=compartment_cytosol*(global_par_k_T2R_C*x(160)-global_par_k_R2T_C*x(112));

% Reaction: id = Transition_from_cam_TT_AC_0_to_cam_RT_AC_0, name = Transition from cam_TT_AC_0 to cam_RT_AC_0
	reaction_Transition_from_cam_TT_AC_0_to_cam_RT_AC_0=compartment_cytosol*(global_par_k_T2R_N1*x(163)-global_par_k_R2T_N1*x(67));

% Reaction: id = Transition_from_cam_TT_AC_0_to_cam_TR_AC_0, name = Transition from cam_TT_AC_0 to cam_TR_AC_0
	reaction_Transition_from_cam_TT_AC_0_to_cam_TR_AC_0=compartment_cytosol*(global_par_k_T2R_C1*x(163)-global_par_k_R2T_C1*x(115));

% Reaction: id = Transition_from_cam_TT_AD_0_to_cam_RT_AD_0, name = Transition from cam_TT_AD_0 to cam_RT_AD_0
	reaction_Transition_from_cam_TT_AD_0_to_cam_RT_AD_0=compartment_cytosol*(global_par_k_T2R_N1*x(166)-global_par_k_R2T_N1*x(70));

% Reaction: id = Transition_from_cam_TT_AD_0_to_cam_TR_AD_0, name = Transition from cam_TT_AD_0 to cam_TR_AD_0
	reaction_Transition_from_cam_TT_AD_0_to_cam_TR_AD_0=compartment_cytosol*(global_par_k_T2R_C1*x(166)-global_par_k_R2T_C1*x(118));

% Reaction: id = Transition_from_cam_TT_BC_0_to_cam_RT_BC_0, name = Transition from cam_TT_BC_0 to cam_RT_BC_0
	reaction_Transition_from_cam_TT_BC_0_to_cam_RT_BC_0=compartment_cytosol*(global_par_k_T2R_N1*x(169)-global_par_k_R2T_N1*x(73));

% Reaction: id = Transition_from_cam_TT_BC_0_to_cam_TR_BC_0, name = Transition from cam_TT_BC_0 to cam_TR_BC_0
	reaction_Transition_from_cam_TT_BC_0_to_cam_TR_BC_0=compartment_cytosol*(global_par_k_T2R_C1*x(169)-global_par_k_R2T_C1*x(121));

% Reaction: id = Transition_from_cam_TT_BD_0_to_cam_RT_BD_0, name = Transition from cam_TT_BD_0 to cam_RT_BD_0
	reaction_Transition_from_cam_TT_BD_0_to_cam_RT_BD_0=compartment_cytosol*(global_par_k_T2R_N1*x(172)-global_par_k_R2T_N1*x(76));

% Reaction: id = Transition_from_cam_TT_BD_0_to_cam_TR_BD_0, name = Transition from cam_TT_BD_0 to cam_TR_BD_0
	reaction_Transition_from_cam_TT_BD_0_to_cam_TR_BD_0=compartment_cytosol*(global_par_k_T2R_C1*x(172)-global_par_k_R2T_C1*x(124));

% Reaction: id = Transition_from_cam_TT_CD_0_to_cam_RT_CD_0, name = Transition from cam_TT_CD_0 to cam_RT_CD_0
	reaction_Transition_from_cam_TT_CD_0_to_cam_RT_CD_0=compartment_cytosol*(global_par_k_T2R_N*x(175)-global_par_k_R2T_N*x(79));

% Reaction: id = Transition_from_cam_TT_CD_0_to_cam_TR_CD_0, name = Transition from cam_TT_CD_0 to cam_TR_CD_0
	reaction_Transition_from_cam_TT_CD_0_to_cam_TR_CD_0=compartment_cytosol*(global_par_k_T2R_C2*x(175)-global_par_k_R2T_C2*x(127));

% Reaction: id = Transition_from_cam_TT_ABC_0_to_cam_RT_ABC_0, name = Transition from cam_TT_ABC_0 to cam_RT_ABC_0
	reaction_Transition_from_cam_TT_ABC_0_to_cam_RT_ABC_0=compartment_cytosol*(global_par_k_T2R_N2*x(178)-global_par_k_R2T_N2*x(82));

% Reaction: id = Transition_from_cam_TT_ABC_0_to_cam_TR_ABC_0, name = Transition from cam_TT_ABC_0 to cam_TR_ABC_0
	reaction_Transition_from_cam_TT_ABC_0_to_cam_TR_ABC_0=compartment_cytosol*(global_par_k_T2R_C1*x(178)-global_par_k_R2T_C1*x(130));

% Reaction: id = Transition_from_cam_TT_ABD_0_to_cam_RT_ABD_0, name = Transition from cam_TT_ABD_0 to cam_RT_ABD_0
	reaction_Transition_from_cam_TT_ABD_0_to_cam_RT_ABD_0=compartment_cytosol*(global_par_k_T2R_N2*x(181)-global_par_k_R2T_N2*x(85));

% Reaction: id = Transition_from_cam_TT_ABD_0_to_cam_TR_ABD_0, name = Transition from cam_TT_ABD_0 to cam_TR_ABD_0
	reaction_Transition_from_cam_TT_ABD_0_to_cam_TR_ABD_0=compartment_cytosol*(global_par_k_T2R_C1*x(181)-global_par_k_R2T_C1*x(133));

% Reaction: id = Transition_from_cam_TT_ACD_0_to_cam_RT_ACD_0, name = Transition from cam_TT_ACD_0 to cam_RT_ACD_0
	reaction_Transition_from_cam_TT_ACD_0_to_cam_RT_ACD_0=compartment_cytosol*(global_par_k_T2R_N1*x(184)-global_par_k_R2T_N1*x(88));

% Reaction: id = Transition_from_cam_TT_ACD_0_to_cam_TR_ACD_0, name = Transition from cam_TT_ACD_0 to cam_TR_ACD_0
	reaction_Transition_from_cam_TT_ACD_0_to_cam_TR_ACD_0=compartment_cytosol*(global_par_k_T2R_C2*x(184)-global_par_k_R2T_C2*x(136));

% Reaction: id = Transition_from_cam_TT_BCD_0_to_cam_RT_BCD_0, name = Transition from cam_TT_BCD_0 to cam_RT_BCD_0
	reaction_Transition_from_cam_TT_BCD_0_to_cam_RT_BCD_0=compartment_cytosol*(global_par_k_T2R_N1*x(187)-global_par_k_R2T_N1*x(91));

% Reaction: id = Transition_from_cam_TT_BCD_0_to_cam_TR_BCD_0, name = Transition from cam_TT_BCD_0 to cam_TR_BCD_0
	reaction_Transition_from_cam_TT_BCD_0_to_cam_TR_BCD_0=compartment_cytosol*(global_par_k_T2R_C2*x(187)-global_par_k_R2T_C2*x(139));

% Reaction: id = Transition_from_cam_TT_ABCD_0_to_cam_RT_ABCD_0, name = Transition from cam_TT_ABCD_0 to cam_RT_ABCD_0
	reaction_Transition_from_cam_TT_ABCD_0_to_cam_RT_ABCD_0=compartment_cytosol*(global_par_k_T2R_N2*x(190)-global_par_k_R2T_N2*x(94));

% Reaction: id = Transition_from_cam_TT_ABCD_0_to_cam_TR_ABCD_0, name = Transition from cam_TT_ABCD_0 to cam_TR_ABCD_0
	reaction_Transition_from_cam_TT_ABCD_0_to_cam_TR_ABCD_0=compartment_cytosol*(global_par_k_T2R_C2*x(190)-global_par_k_R2T_C2*x(142));

% Species:   id = ca, name = ca, constant	const_species_ca=0.0;

	xdot=zeros(194,1);
	
% Species:   id = cam_RR_0_0, name = cam_RR_0_0, affected by kineticLaw
	xdot(1) = (1/(compartment_cytosol))*((-1.0 * reaction_rbp_binding_to_cam_RR_0_0) + (-1.0 * reaction_tbp_binding_to_cam_RR_0_0) + (-1.0 * reaction_ca_binding_to_cam_RR_0_0_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_RR_0_0_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_RR_0_0_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_RR_0_0_on_site_D) + ( 1.0 * reaction_Transition_from_cam_RT_0_0_to_cam_RR_0_0) + ( 1.0 * reaction_Transition_from_cam_TR_0_0_to_cam_RR_0_0));
	
% Species:   id = cam_RR_0_rbp, name = cam_RR_0_rbp, affected by kineticLaw
	xdot(2) = (1/(compartment_cytosol))*(( 1.0 * reaction_rbp_binding_to_cam_RR_0_0) + (-1.0 * reaction_ca_binding_to_cam_RR_0_rbp_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_RR_0_rbp_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_RR_0_rbp_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_RR_0_rbp_on_site_D));
	
% Species:   id = cam_RR_0_tbp, name = cam_RR_0_tbp, affected by kineticLaw
	xdot(3) = (1/(compartment_cytosol))*(( 1.0 * reaction_tbp_binding_to_cam_RR_0_0) + (-1.0 * reaction_ca_binding_to_cam_RR_0_tbp_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_RR_0_tbp_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_RR_0_tbp_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_RR_0_tbp_on_site_D));
	
% Species:   id = cam_RR_A_0, name = cam_RR_A_0, affected by kineticLaw
	xdot(4) = (1/(compartment_cytosol))*(( 1.0 * reaction_ca_binding_to_cam_RR_0_0_on_site_A) + (-1.0 * reaction_rbp_binding_to_cam_RR_A_0) + (-1.0 * reaction_tbp_binding_to_cam_RR_A_0) + (-1.0 * reaction_ca_binding_to_cam_RR_A_0_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_RR_A_0_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_RR_A_0_on_site_D) + ( 1.0 * reaction_Transition_from_cam_RT_A_0_to_cam_RR_A_0) + ( 1.0 * reaction_Transition_from_cam_TR_A_0_to_cam_RR_A_0));
	
% Species:   id = cam_RR_A_rbp, name = cam_RR_A_rbp, affected by kineticLaw
	xdot(5) = (1/(compartment_cytosol))*(( 1.0 * reaction_rbp_binding_to_cam_RR_A_0) + ( 1.0 * reaction_ca_binding_to_cam_RR_0_rbp_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_RR_A_rbp_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_RR_A_rbp_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_RR_A_rbp_on_site_D));
	
% Species:   id = cam_RR_A_tbp, name = cam_RR_A_tbp, affected by kineticLaw
	xdot(6) = (1/(compartment_cytosol))*(( 1.0 * reaction_tbp_binding_to_cam_RR_A_0) + ( 1.0 * reaction_ca_binding_to_cam_RR_0_tbp_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_RR_A_tbp_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_RR_A_tbp_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_RR_A_tbp_on_site_D));
	
% Species:   id = cam_RR_B_0, name = cam_RR_B_0, affected by kineticLaw
	xdot(7) = (1/(compartment_cytosol))*(( 1.0 * reaction_ca_binding_to_cam_RR_0_0_on_site_B) + (-1.0 * reaction_rbp_binding_to_cam_RR_B_0) + (-1.0 * reaction_tbp_binding_to_cam_RR_B_0) + (-1.0 * reaction_ca_binding_to_cam_RR_B_0_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_RR_B_0_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_RR_B_0_on_site_D) + ( 1.0 * reaction_Transition_from_cam_RT_B_0_to_cam_RR_B_0) + ( 1.0 * reaction_Transition_from_cam_TR_B_0_to_cam_RR_B_0));
	
% Species:   id = cam_RR_B_rbp, name = cam_RR_B_rbp, affected by kineticLaw
	xdot(8) = (1/(compartment_cytosol))*(( 1.0 * reaction_rbp_binding_to_cam_RR_B_0) + ( 1.0 * reaction_ca_binding_to_cam_RR_0_rbp_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_RR_B_rbp_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_RR_B_rbp_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_RR_B_rbp_on_site_D));
	
% Species:   id = cam_RR_B_tbp, name = cam_RR_B_tbp, affected by kineticLaw
	xdot(9) = (1/(compartment_cytosol))*(( 1.0 * reaction_tbp_binding_to_cam_RR_B_0) + ( 1.0 * reaction_ca_binding_to_cam_RR_0_tbp_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_RR_B_tbp_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_RR_B_tbp_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_RR_B_tbp_on_site_D));
	
% Species:   id = cam_RR_C_0, name = cam_RR_C_0, affected by kineticLaw
	xdot(10) = (1/(compartment_cytosol))*(( 1.0 * reaction_ca_binding_to_cam_RR_0_0_on_site_C) + (-1.0 * reaction_rbp_binding_to_cam_RR_C_0) + (-1.0 * reaction_tbp_binding_to_cam_RR_C_0) + (-1.0 * reaction_ca_binding_to_cam_RR_C_0_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_RR_C_0_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_RR_C_0_on_site_D) + ( 1.0 * reaction_Transition_from_cam_RT_C_0_to_cam_RR_C_0) + ( 1.0 * reaction_Transition_from_cam_TR_C_0_to_cam_RR_C_0));
	
% Species:   id = cam_RR_C_rbp, name = cam_RR_C_rbp, affected by kineticLaw
	xdot(11) = (1/(compartment_cytosol))*(( 1.0 * reaction_rbp_binding_to_cam_RR_C_0) + ( 1.0 * reaction_ca_binding_to_cam_RR_0_rbp_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_RR_C_rbp_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_RR_C_rbp_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_RR_C_rbp_on_site_D));
	
% Species:   id = cam_RR_C_tbp, name = cam_RR_C_tbp, affected by kineticLaw
	xdot(12) = (1/(compartment_cytosol))*(( 1.0 * reaction_tbp_binding_to_cam_RR_C_0) + ( 1.0 * reaction_ca_binding_to_cam_RR_0_tbp_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_RR_C_tbp_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_RR_C_tbp_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_RR_C_tbp_on_site_D));
	
% Species:   id = cam_RR_D_0, name = cam_RR_D_0, affected by kineticLaw
	xdot(13) = (1/(compartment_cytosol))*(( 1.0 * reaction_ca_binding_to_cam_RR_0_0_on_site_D) + (-1.0 * reaction_rbp_binding_to_cam_RR_D_0) + (-1.0 * reaction_tbp_binding_to_cam_RR_D_0) + (-1.0 * reaction_ca_binding_to_cam_RR_D_0_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_RR_D_0_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_RR_D_0_on_site_C) + ( 1.0 * reaction_Transition_from_cam_RT_D_0_to_cam_RR_D_0) + ( 1.0 * reaction_Transition_from_cam_TR_D_0_to_cam_RR_D_0));
	
% Species:   id = cam_RR_D_rbp, name = cam_RR_D_rbp, affected by kineticLaw
	xdot(14) = (1/(compartment_cytosol))*(( 1.0 * reaction_rbp_binding_to_cam_RR_D_0) + ( 1.0 * reaction_ca_binding_to_cam_RR_0_rbp_on_site_D) + (-1.0 * reaction_ca_binding_to_cam_RR_D_rbp_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_RR_D_rbp_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_RR_D_rbp_on_site_C));
	
% Species:   id = cam_RR_D_tbp, name = cam_RR_D_tbp, affected by kineticLaw
	xdot(15) = (1/(compartment_cytosol))*(( 1.0 * reaction_tbp_binding_to_cam_RR_D_0) + ( 1.0 * reaction_ca_binding_to_cam_RR_0_tbp_on_site_D) + (-1.0 * reaction_ca_binding_to_cam_RR_D_tbp_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_RR_D_tbp_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_RR_D_tbp_on_site_C));
	
% Species:   id = cam_RR_AB_0, name = cam_RR_AB_0, affected by kineticLaw
	xdot(16) = (1/(compartment_cytosol))*(( 1.0 * reaction_ca_binding_to_cam_RR_B_0_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_RR_A_0_on_site_B) + (-1.0 * reaction_rbp_binding_to_cam_RR_AB_0) + (-1.0 * reaction_tbp_binding_to_cam_RR_AB_0) + (-1.0 * reaction_ca_binding_to_cam_RR_AB_0_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_RR_AB_0_on_site_D) + ( 1.0 * reaction_Transition_from_cam_RT_AB_0_to_cam_RR_AB_0) + ( 1.0 * reaction_Transition_from_cam_TR_AB_0_to_cam_RR_AB_0));
	
% Species:   id = cam_RR_AB_rbp, name = cam_RR_AB_rbp, affected by kineticLaw
	xdot(17) = (1/(compartment_cytosol))*(( 1.0 * reaction_rbp_binding_to_cam_RR_AB_0) + ( 1.0 * reaction_ca_binding_to_cam_RR_B_rbp_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_RR_A_rbp_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_RR_AB_rbp_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_RR_AB_rbp_on_site_D));
	
% Species:   id = cam_RR_AB_tbp, name = cam_RR_AB_tbp, affected by kineticLaw
	xdot(18) = (1/(compartment_cytosol))*(( 1.0 * reaction_tbp_binding_to_cam_RR_AB_0) + ( 1.0 * reaction_ca_binding_to_cam_RR_B_tbp_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_RR_A_tbp_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_RR_AB_tbp_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_RR_AB_tbp_on_site_D));
	
% Species:   id = cam_RR_AC_0, name = cam_RR_AC_0, affected by kineticLaw
	xdot(19) = (1/(compartment_cytosol))*(( 1.0 * reaction_ca_binding_to_cam_RR_C_0_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_RR_A_0_on_site_C) + (-1.0 * reaction_rbp_binding_to_cam_RR_AC_0) + (-1.0 * reaction_tbp_binding_to_cam_RR_AC_0) + (-1.0 * reaction_ca_binding_to_cam_RR_AC_0_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_RR_AC_0_on_site_D) + ( 1.0 * reaction_Transition_from_cam_RT_AC_0_to_cam_RR_AC_0) + ( 1.0 * reaction_Transition_from_cam_TR_AC_0_to_cam_RR_AC_0));
	
% Species:   id = cam_RR_AC_rbp, name = cam_RR_AC_rbp, affected by kineticLaw
	xdot(20) = (1/(compartment_cytosol))*(( 1.0 * reaction_rbp_binding_to_cam_RR_AC_0) + ( 1.0 * reaction_ca_binding_to_cam_RR_C_rbp_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_RR_A_rbp_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_RR_AC_rbp_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_RR_AC_rbp_on_site_D));
	
% Species:   id = cam_RR_AC_tbp, name = cam_RR_AC_tbp, affected by kineticLaw
	xdot(21) = (1/(compartment_cytosol))*(( 1.0 * reaction_tbp_binding_to_cam_RR_AC_0) + ( 1.0 * reaction_ca_binding_to_cam_RR_C_tbp_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_RR_A_tbp_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_RR_AC_tbp_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_RR_AC_tbp_on_site_D));
	
% Species:   id = cam_RR_AD_0, name = cam_RR_AD_0, affected by kineticLaw
	xdot(22) = (1/(compartment_cytosol))*(( 1.0 * reaction_ca_binding_to_cam_RR_D_0_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_RR_A_0_on_site_D) + (-1.0 * reaction_rbp_binding_to_cam_RR_AD_0) + (-1.0 * reaction_tbp_binding_to_cam_RR_AD_0) + (-1.0 * reaction_ca_binding_to_cam_RR_AD_0_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_RR_AD_0_on_site_C) + ( 1.0 * reaction_Transition_from_cam_RT_AD_0_to_cam_RR_AD_0) + ( 1.0 * reaction_Transition_from_cam_TR_AD_0_to_cam_RR_AD_0));
	
% Species:   id = cam_RR_AD_rbp, name = cam_RR_AD_rbp, affected by kineticLaw
	xdot(23) = (1/(compartment_cytosol))*(( 1.0 * reaction_rbp_binding_to_cam_RR_AD_0) + ( 1.0 * reaction_ca_binding_to_cam_RR_D_rbp_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_RR_A_rbp_on_site_D) + (-1.0 * reaction_ca_binding_to_cam_RR_AD_rbp_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_RR_AD_rbp_on_site_C));
	
% Species:   id = cam_RR_AD_tbp, name = cam_RR_AD_tbp, affected by kineticLaw
	xdot(24) = (1/(compartment_cytosol))*(( 1.0 * reaction_tbp_binding_to_cam_RR_AD_0) + ( 1.0 * reaction_ca_binding_to_cam_RR_D_tbp_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_RR_A_tbp_on_site_D) + (-1.0 * reaction_ca_binding_to_cam_RR_AD_tbp_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_RR_AD_tbp_on_site_C));
	
% Species:   id = cam_RR_BC_0, name = cam_RR_BC_0, affected by kineticLaw
	xdot(25) = (1/(compartment_cytosol))*(( 1.0 * reaction_ca_binding_to_cam_RR_C_0_on_site_B) + ( 1.0 * reaction_ca_binding_to_cam_RR_B_0_on_site_C) + (-1.0 * reaction_rbp_binding_to_cam_RR_BC_0) + (-1.0 * reaction_tbp_binding_to_cam_RR_BC_0) + (-1.0 * reaction_ca_binding_to_cam_RR_BC_0_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_RR_BC_0_on_site_D) + ( 1.0 * reaction_Transition_from_cam_RT_BC_0_to_cam_RR_BC_0) + ( 1.0 * reaction_Transition_from_cam_TR_BC_0_to_cam_RR_BC_0));
	
% Species:   id = cam_RR_BC_rbp, name = cam_RR_BC_rbp, affected by kineticLaw
	xdot(26) = (1/(compartment_cytosol))*(( 1.0 * reaction_rbp_binding_to_cam_RR_BC_0) + ( 1.0 * reaction_ca_binding_to_cam_RR_C_rbp_on_site_B) + ( 1.0 * reaction_ca_binding_to_cam_RR_B_rbp_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_RR_BC_rbp_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_RR_BC_rbp_on_site_D));
	
% Species:   id = cam_RR_BC_tbp, name = cam_RR_BC_tbp, affected by kineticLaw
	xdot(27) = (1/(compartment_cytosol))*(( 1.0 * reaction_tbp_binding_to_cam_RR_BC_0) + ( 1.0 * reaction_ca_binding_to_cam_RR_C_tbp_on_site_B) + ( 1.0 * reaction_ca_binding_to_cam_RR_B_tbp_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_RR_BC_tbp_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_RR_BC_tbp_on_site_D));
	
% Species:   id = cam_RR_BD_0, name = cam_RR_BD_0, affected by kineticLaw
	xdot(28) = (1/(compartment_cytosol))*(( 1.0 * reaction_ca_binding_to_cam_RR_D_0_on_site_B) + ( 1.0 * reaction_ca_binding_to_cam_RR_B_0_on_site_D) + (-1.0 * reaction_rbp_binding_to_cam_RR_BD_0) + (-1.0 * reaction_tbp_binding_to_cam_RR_BD_0) + (-1.0 * reaction_ca_binding_to_cam_RR_BD_0_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_RR_BD_0_on_site_C) + ( 1.0 * reaction_Transition_from_cam_RT_BD_0_to_cam_RR_BD_0) + ( 1.0 * reaction_Transition_from_cam_TR_BD_0_to_cam_RR_BD_0));
	
% Species:   id = cam_RR_BD_rbp, name = cam_RR_BD_rbp, affected by kineticLaw
	xdot(29) = (1/(compartment_cytosol))*(( 1.0 * reaction_rbp_binding_to_cam_RR_BD_0) + ( 1.0 * reaction_ca_binding_to_cam_RR_D_rbp_on_site_B) + ( 1.0 * reaction_ca_binding_to_cam_RR_B_rbp_on_site_D) + (-1.0 * reaction_ca_binding_to_cam_RR_BD_rbp_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_RR_BD_rbp_on_site_C));
	
% Species:   id = cam_RR_BD_tbp, name = cam_RR_BD_tbp, affected by kineticLaw
	xdot(30) = (1/(compartment_cytosol))*(( 1.0 * reaction_tbp_binding_to_cam_RR_BD_0) + ( 1.0 * reaction_ca_binding_to_cam_RR_D_tbp_on_site_B) + ( 1.0 * reaction_ca_binding_to_cam_RR_B_tbp_on_site_D) + (-1.0 * reaction_ca_binding_to_cam_RR_BD_tbp_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_RR_BD_tbp_on_site_C));
	
% Species:   id = cam_RR_CD_0, name = cam_RR_CD_0, affected by kineticLaw
	xdot(31) = (1/(compartment_cytosol))*(( 1.0 * reaction_ca_binding_to_cam_RR_D_0_on_site_C) + ( 1.0 * reaction_ca_binding_to_cam_RR_C_0_on_site_D) + (-1.0 * reaction_rbp_binding_to_cam_RR_CD_0) + (-1.0 * reaction_tbp_binding_to_cam_RR_CD_0) + (-1.0 * reaction_ca_binding_to_cam_RR_CD_0_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_RR_CD_0_on_site_B) + ( 1.0 * reaction_Transition_from_cam_RT_CD_0_to_cam_RR_CD_0) + ( 1.0 * reaction_Transition_from_cam_TR_CD_0_to_cam_RR_CD_0));
	
% Species:   id = cam_RR_CD_rbp, name = cam_RR_CD_rbp, affected by kineticLaw
	xdot(32) = (1/(compartment_cytosol))*(( 1.0 * reaction_rbp_binding_to_cam_RR_CD_0) + ( 1.0 * reaction_ca_binding_to_cam_RR_D_rbp_on_site_C) + ( 1.0 * reaction_ca_binding_to_cam_RR_C_rbp_on_site_D) + (-1.0 * reaction_ca_binding_to_cam_RR_CD_rbp_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_RR_CD_rbp_on_site_B));
	
% Species:   id = cam_RR_CD_tbp, name = cam_RR_CD_tbp, affected by kineticLaw
	xdot(33) = (1/(compartment_cytosol))*(( 1.0 * reaction_tbp_binding_to_cam_RR_CD_0) + ( 1.0 * reaction_ca_binding_to_cam_RR_D_tbp_on_site_C) + ( 1.0 * reaction_ca_binding_to_cam_RR_C_tbp_on_site_D) + (-1.0 * reaction_ca_binding_to_cam_RR_CD_tbp_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_RR_CD_tbp_on_site_B));
	
% Species:   id = cam_RR_ABC_0, name = cam_RR_ABC_0, affected by kineticLaw
	xdot(34) = (1/(compartment_cytosol))*(( 1.0 * reaction_ca_binding_to_cam_RR_BC_0_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_RR_AC_0_on_site_B) + ( 1.0 * reaction_ca_binding_to_cam_RR_AB_0_on_site_C) + (-1.0 * reaction_rbp_binding_to_cam_RR_ABC_0) + (-1.0 * reaction_tbp_binding_to_cam_RR_ABC_0) + (-1.0 * reaction_ca_binding_to_cam_RR_ABC_0_on_site_D) + ( 1.0 * reaction_Transition_from_cam_RT_ABC_0_to_cam_RR_ABC_0) + ( 1.0 * reaction_Transition_from_cam_TR_ABC_0_to_cam_RR_ABC_0));
	
% Species:   id = cam_RR_ABC_rbp, name = cam_RR_ABC_rbp, affected by kineticLaw
	xdot(35) = (1/(compartment_cytosol))*(( 1.0 * reaction_rbp_binding_to_cam_RR_ABC_0) + ( 1.0 * reaction_ca_binding_to_cam_RR_BC_rbp_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_RR_AC_rbp_on_site_B) + ( 1.0 * reaction_ca_binding_to_cam_RR_AB_rbp_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_RR_ABC_rbp_on_site_D));
	
% Species:   id = cam_RR_ABC_tbp, name = cam_RR_ABC_tbp, affected by kineticLaw
	xdot(36) = (1/(compartment_cytosol))*(( 1.0 * reaction_tbp_binding_to_cam_RR_ABC_0) + ( 1.0 * reaction_ca_binding_to_cam_RR_BC_tbp_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_RR_AC_tbp_on_site_B) + ( 1.0 * reaction_ca_binding_to_cam_RR_AB_tbp_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_RR_ABC_tbp_on_site_D));
	
% Species:   id = cam_RR_ABD_0, name = cam_RR_ABD_0, affected by kineticLaw
	xdot(37) = (1/(compartment_cytosol))*(( 1.0 * reaction_ca_binding_to_cam_RR_BD_0_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_RR_AD_0_on_site_B) + ( 1.0 * reaction_ca_binding_to_cam_RR_AB_0_on_site_D) + (-1.0 * reaction_rbp_binding_to_cam_RR_ABD_0) + (-1.0 * reaction_tbp_binding_to_cam_RR_ABD_0) + (-1.0 * reaction_ca_binding_to_cam_RR_ABD_0_on_site_C) + ( 1.0 * reaction_Transition_from_cam_RT_ABD_0_to_cam_RR_ABD_0) + ( 1.0 * reaction_Transition_from_cam_TR_ABD_0_to_cam_RR_ABD_0));
	
% Species:   id = cam_RR_ABD_rbp, name = cam_RR_ABD_rbp, affected by kineticLaw
	xdot(38) = (1/(compartment_cytosol))*(( 1.0 * reaction_rbp_binding_to_cam_RR_ABD_0) + ( 1.0 * reaction_ca_binding_to_cam_RR_BD_rbp_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_RR_AD_rbp_on_site_B) + ( 1.0 * reaction_ca_binding_to_cam_RR_AB_rbp_on_site_D) + (-1.0 * reaction_ca_binding_to_cam_RR_ABD_rbp_on_site_C));
	
% Species:   id = cam_RR_ABD_tbp, name = cam_RR_ABD_tbp, affected by kineticLaw
	xdot(39) = (1/(compartment_cytosol))*(( 1.0 * reaction_tbp_binding_to_cam_RR_ABD_0) + ( 1.0 * reaction_ca_binding_to_cam_RR_BD_tbp_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_RR_AD_tbp_on_site_B) + ( 1.0 * reaction_ca_binding_to_cam_RR_AB_tbp_on_site_D) + (-1.0 * reaction_ca_binding_to_cam_RR_ABD_tbp_on_site_C));
	
% Species:   id = cam_RR_ACD_0, name = cam_RR_ACD_0, affected by kineticLaw
	xdot(40) = (1/(compartment_cytosol))*(( 1.0 * reaction_ca_binding_to_cam_RR_CD_0_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_RR_AD_0_on_site_C) + ( 1.0 * reaction_ca_binding_to_cam_RR_AC_0_on_site_D) + (-1.0 * reaction_rbp_binding_to_cam_RR_ACD_0) + (-1.0 * reaction_tbp_binding_to_cam_RR_ACD_0) + (-1.0 * reaction_ca_binding_to_cam_RR_ACD_0_on_site_B) + ( 1.0 * reaction_Transition_from_cam_RT_ACD_0_to_cam_RR_ACD_0) + ( 1.0 * reaction_Transition_from_cam_TR_ACD_0_to_cam_RR_ACD_0));
	
% Species:   id = cam_RR_ACD_rbp, name = cam_RR_ACD_rbp, affected by kineticLaw
	xdot(41) = (1/(compartment_cytosol))*(( 1.0 * reaction_rbp_binding_to_cam_RR_ACD_0) + ( 1.0 * reaction_ca_binding_to_cam_RR_CD_rbp_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_RR_AD_rbp_on_site_C) + ( 1.0 * reaction_ca_binding_to_cam_RR_AC_rbp_on_site_D) + (-1.0 * reaction_ca_binding_to_cam_RR_ACD_rbp_on_site_B));
	
% Species:   id = cam_RR_ACD_tbp, name = cam_RR_ACD_tbp, affected by kineticLaw
	xdot(42) = (1/(compartment_cytosol))*(( 1.0 * reaction_tbp_binding_to_cam_RR_ACD_0) + ( 1.0 * reaction_ca_binding_to_cam_RR_CD_tbp_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_RR_AD_tbp_on_site_C) + ( 1.0 * reaction_ca_binding_to_cam_RR_AC_tbp_on_site_D) + (-1.0 * reaction_ca_binding_to_cam_RR_ACD_tbp_on_site_B));
	
% Species:   id = cam_RR_BCD_0, name = cam_RR_BCD_0, affected by kineticLaw
	xdot(43) = (1/(compartment_cytosol))*(( 1.0 * reaction_ca_binding_to_cam_RR_CD_0_on_site_B) + ( 1.0 * reaction_ca_binding_to_cam_RR_BD_0_on_site_C) + ( 1.0 * reaction_ca_binding_to_cam_RR_BC_0_on_site_D) + (-1.0 * reaction_rbp_binding_to_cam_RR_BCD_0) + (-1.0 * reaction_tbp_binding_to_cam_RR_BCD_0) + (-1.0 * reaction_ca_binding_to_cam_RR_BCD_0_on_site_A) + ( 1.0 * reaction_Transition_from_cam_RT_BCD_0_to_cam_RR_BCD_0) + ( 1.0 * reaction_Transition_from_cam_TR_BCD_0_to_cam_RR_BCD_0));
	
% Species:   id = cam_RR_BCD_rbp, name = cam_RR_BCD_rbp, affected by kineticLaw
	xdot(44) = (1/(compartment_cytosol))*(( 1.0 * reaction_rbp_binding_to_cam_RR_BCD_0) + ( 1.0 * reaction_ca_binding_to_cam_RR_CD_rbp_on_site_B) + ( 1.0 * reaction_ca_binding_to_cam_RR_BD_rbp_on_site_C) + ( 1.0 * reaction_ca_binding_to_cam_RR_BC_rbp_on_site_D) + (-1.0 * reaction_ca_binding_to_cam_RR_BCD_rbp_on_site_A));
	
% Species:   id = cam_RR_BCD_tbp, name = cam_RR_BCD_tbp, affected by kineticLaw
	xdot(45) = (1/(compartment_cytosol))*(( 1.0 * reaction_tbp_binding_to_cam_RR_BCD_0) + ( 1.0 * reaction_ca_binding_to_cam_RR_CD_tbp_on_site_B) + ( 1.0 * reaction_ca_binding_to_cam_RR_BD_tbp_on_site_C) + ( 1.0 * reaction_ca_binding_to_cam_RR_BC_tbp_on_site_D) + (-1.0 * reaction_ca_binding_to_cam_RR_BCD_tbp_on_site_A));
	
% Species:   id = cam_RR_ABCD_0, name = cam_RR_ABCD_0, affected by kineticLaw
	xdot(46) = (1/(compartment_cytosol))*(( 1.0 * reaction_ca_binding_to_cam_RR_BCD_0_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_RR_ACD_0_on_site_B) + ( 1.0 * reaction_ca_binding_to_cam_RR_ABD_0_on_site_C) + ( 1.0 * reaction_ca_binding_to_cam_RR_ABC_0_on_site_D) + (-1.0 * reaction_rbp_binding_to_cam_RR_ABCD_0) + (-1.0 * reaction_tbp_binding_to_cam_RR_ABCD_0) + ( 1.0 * reaction_Transition_from_cam_RT_ABCD_0_to_cam_RR_ABCD_0) + ( 1.0 * reaction_Transition_from_cam_TR_ABCD_0_to_cam_RR_ABCD_0));
	
% Species:   id = cam_RR_ABCD_rbp, name = cam_RR_ABCD_rbp, affected by kineticLaw
	xdot(47) = (1/(compartment_cytosol))*(( 1.0 * reaction_rbp_binding_to_cam_RR_ABCD_0) + ( 1.0 * reaction_ca_binding_to_cam_RR_BCD_rbp_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_RR_ACD_rbp_on_site_B) + ( 1.0 * reaction_ca_binding_to_cam_RR_ABD_rbp_on_site_C) + ( 1.0 * reaction_ca_binding_to_cam_RR_ABC_rbp_on_site_D));
	
% Species:   id = cam_RR_ABCD_tbp, name = cam_RR_ABCD_tbp, affected by kineticLaw
	xdot(48) = (1/(compartment_cytosol))*(( 1.0 * reaction_tbp_binding_to_cam_RR_ABCD_0) + ( 1.0 * reaction_ca_binding_to_cam_RR_BCD_tbp_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_RR_ACD_tbp_on_site_B) + ( 1.0 * reaction_ca_binding_to_cam_RR_ABD_tbp_on_site_C) + ( 1.0 * reaction_ca_binding_to_cam_RR_ABC_tbp_on_site_D));
	
% Species:   id = cam_RT_0_0, name = cam_RT_0_0, affected by kineticLaw
	xdot(49) = (1/(compartment_cytosol))*((-1.0 * reaction_rbp_binding_to_cam_RT_0_0) + (-1.0 * reaction_tbp_binding_to_cam_RT_0_0) + (-1.0 * reaction_ca_binding_to_cam_RT_0_0_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_RT_0_0_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_RT_0_0_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_RT_0_0_on_site_D) + (-1.0 * reaction_Transition_from_cam_RT_0_0_to_cam_RR_0_0) + ( 1.0 * reaction_Transition_from_cam_TT_0_0_to_cam_RT_0_0));
	
% Species:   id = cam_RT_0_rbp, name = cam_RT_0_rbp, affected by kineticLaw
	xdot(50) = (1/(compartment_cytosol))*(( 1.0 * reaction_rbp_binding_to_cam_RT_0_0) + (-1.0 * reaction_ca_binding_to_cam_RT_0_rbp_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_RT_0_rbp_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_RT_0_rbp_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_RT_0_rbp_on_site_D));
	
% Species:   id = cam_RT_0_tbp, name = cam_RT_0_tbp, affected by kineticLaw
	xdot(51) = (1/(compartment_cytosol))*(( 1.0 * reaction_tbp_binding_to_cam_RT_0_0) + (-1.0 * reaction_ca_binding_to_cam_RT_0_tbp_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_RT_0_tbp_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_RT_0_tbp_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_RT_0_tbp_on_site_D));
	
% Species:   id = cam_RT_A_0, name = cam_RT_A_0, affected by kineticLaw
	xdot(52) = (1/(compartment_cytosol))*(( 1.0 * reaction_ca_binding_to_cam_RT_0_0_on_site_A) + (-1.0 * reaction_rbp_binding_to_cam_RT_A_0) + (-1.0 * reaction_tbp_binding_to_cam_RT_A_0) + (-1.0 * reaction_ca_binding_to_cam_RT_A_0_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_RT_A_0_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_RT_A_0_on_site_D) + (-1.0 * reaction_Transition_from_cam_RT_A_0_to_cam_RR_A_0) + ( 1.0 * reaction_Transition_from_cam_TT_A_0_to_cam_RT_A_0));
	
% Species:   id = cam_RT_A_rbp, name = cam_RT_A_rbp, affected by kineticLaw
	xdot(53) = (1/(compartment_cytosol))*(( 1.0 * reaction_rbp_binding_to_cam_RT_A_0) + ( 1.0 * reaction_ca_binding_to_cam_RT_0_rbp_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_RT_A_rbp_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_RT_A_rbp_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_RT_A_rbp_on_site_D));
	
% Species:   id = cam_RT_A_tbp, name = cam_RT_A_tbp, affected by kineticLaw
	xdot(54) = (1/(compartment_cytosol))*(( 1.0 * reaction_tbp_binding_to_cam_RT_A_0) + ( 1.0 * reaction_ca_binding_to_cam_RT_0_tbp_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_RT_A_tbp_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_RT_A_tbp_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_RT_A_tbp_on_site_D));
	
% Species:   id = cam_RT_B_0, name = cam_RT_B_0, affected by kineticLaw
	xdot(55) = (1/(compartment_cytosol))*(( 1.0 * reaction_ca_binding_to_cam_RT_0_0_on_site_B) + (-1.0 * reaction_rbp_binding_to_cam_RT_B_0) + (-1.0 * reaction_tbp_binding_to_cam_RT_B_0) + (-1.0 * reaction_ca_binding_to_cam_RT_B_0_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_RT_B_0_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_RT_B_0_on_site_D) + (-1.0 * reaction_Transition_from_cam_RT_B_0_to_cam_RR_B_0) + ( 1.0 * reaction_Transition_from_cam_TT_B_0_to_cam_RT_B_0));
	
% Species:   id = cam_RT_B_rbp, name = cam_RT_B_rbp, affected by kineticLaw
	xdot(56) = (1/(compartment_cytosol))*(( 1.0 * reaction_rbp_binding_to_cam_RT_B_0) + ( 1.0 * reaction_ca_binding_to_cam_RT_0_rbp_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_RT_B_rbp_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_RT_B_rbp_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_RT_B_rbp_on_site_D));
	
% Species:   id = cam_RT_B_tbp, name = cam_RT_B_tbp, affected by kineticLaw
	xdot(57) = (1/(compartment_cytosol))*(( 1.0 * reaction_tbp_binding_to_cam_RT_B_0) + ( 1.0 * reaction_ca_binding_to_cam_RT_0_tbp_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_RT_B_tbp_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_RT_B_tbp_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_RT_B_tbp_on_site_D));
	
% Species:   id = cam_RT_C_0, name = cam_RT_C_0, affected by kineticLaw
	xdot(58) = (1/(compartment_cytosol))*(( 1.0 * reaction_ca_binding_to_cam_RT_0_0_on_site_C) + (-1.0 * reaction_rbp_binding_to_cam_RT_C_0) + (-1.0 * reaction_tbp_binding_to_cam_RT_C_0) + (-1.0 * reaction_ca_binding_to_cam_RT_C_0_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_RT_C_0_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_RT_C_0_on_site_D) + (-1.0 * reaction_Transition_from_cam_RT_C_0_to_cam_RR_C_0) + ( 1.0 * reaction_Transition_from_cam_TT_C_0_to_cam_RT_C_0));
	
% Species:   id = cam_RT_C_rbp, name = cam_RT_C_rbp, affected by kineticLaw
	xdot(59) = (1/(compartment_cytosol))*(( 1.0 * reaction_rbp_binding_to_cam_RT_C_0) + ( 1.0 * reaction_ca_binding_to_cam_RT_0_rbp_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_RT_C_rbp_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_RT_C_rbp_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_RT_C_rbp_on_site_D));
	
% Species:   id = cam_RT_C_tbp, name = cam_RT_C_tbp, affected by kineticLaw
	xdot(60) = (1/(compartment_cytosol))*(( 1.0 * reaction_tbp_binding_to_cam_RT_C_0) + ( 1.0 * reaction_ca_binding_to_cam_RT_0_tbp_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_RT_C_tbp_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_RT_C_tbp_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_RT_C_tbp_on_site_D));
	
% Species:   id = cam_RT_D_0, name = cam_RT_D_0, affected by kineticLaw
	xdot(61) = (1/(compartment_cytosol))*(( 1.0 * reaction_ca_binding_to_cam_RT_0_0_on_site_D) + (-1.0 * reaction_rbp_binding_to_cam_RT_D_0) + (-1.0 * reaction_tbp_binding_to_cam_RT_D_0) + (-1.0 * reaction_ca_binding_to_cam_RT_D_0_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_RT_D_0_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_RT_D_0_on_site_C) + (-1.0 * reaction_Transition_from_cam_RT_D_0_to_cam_RR_D_0) + ( 1.0 * reaction_Transition_from_cam_TT_D_0_to_cam_RT_D_0));
	
% Species:   id = cam_RT_D_rbp, name = cam_RT_D_rbp, affected by kineticLaw
	xdot(62) = (1/(compartment_cytosol))*(( 1.0 * reaction_rbp_binding_to_cam_RT_D_0) + ( 1.0 * reaction_ca_binding_to_cam_RT_0_rbp_on_site_D) + (-1.0 * reaction_ca_binding_to_cam_RT_D_rbp_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_RT_D_rbp_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_RT_D_rbp_on_site_C));
	
% Species:   id = cam_RT_D_tbp, name = cam_RT_D_tbp, affected by kineticLaw
	xdot(63) = (1/(compartment_cytosol))*(( 1.0 * reaction_tbp_binding_to_cam_RT_D_0) + ( 1.0 * reaction_ca_binding_to_cam_RT_0_tbp_on_site_D) + (-1.0 * reaction_ca_binding_to_cam_RT_D_tbp_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_RT_D_tbp_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_RT_D_tbp_on_site_C));
	
% Species:   id = cam_RT_AB_0, name = cam_RT_AB_0, affected by kineticLaw
	xdot(64) = (1/(compartment_cytosol))*(( 1.0 * reaction_ca_binding_to_cam_RT_B_0_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_RT_A_0_on_site_B) + (-1.0 * reaction_rbp_binding_to_cam_RT_AB_0) + (-1.0 * reaction_tbp_binding_to_cam_RT_AB_0) + (-1.0 * reaction_ca_binding_to_cam_RT_AB_0_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_RT_AB_0_on_site_D) + (-1.0 * reaction_Transition_from_cam_RT_AB_0_to_cam_RR_AB_0) + ( 1.0 * reaction_Transition_from_cam_TT_AB_0_to_cam_RT_AB_0));
	
% Species:   id = cam_RT_AB_rbp, name = cam_RT_AB_rbp, affected by kineticLaw
	xdot(65) = (1/(compartment_cytosol))*(( 1.0 * reaction_rbp_binding_to_cam_RT_AB_0) + ( 1.0 * reaction_ca_binding_to_cam_RT_B_rbp_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_RT_A_rbp_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_RT_AB_rbp_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_RT_AB_rbp_on_site_D));
	
% Species:   id = cam_RT_AB_tbp, name = cam_RT_AB_tbp, affected by kineticLaw
	xdot(66) = (1/(compartment_cytosol))*(( 1.0 * reaction_tbp_binding_to_cam_RT_AB_0) + ( 1.0 * reaction_ca_binding_to_cam_RT_B_tbp_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_RT_A_tbp_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_RT_AB_tbp_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_RT_AB_tbp_on_site_D));
	
% Species:   id = cam_RT_AC_0, name = cam_RT_AC_0, affected by kineticLaw
	xdot(67) = (1/(compartment_cytosol))*(( 1.0 * reaction_ca_binding_to_cam_RT_C_0_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_RT_A_0_on_site_C) + (-1.0 * reaction_rbp_binding_to_cam_RT_AC_0) + (-1.0 * reaction_tbp_binding_to_cam_RT_AC_0) + (-1.0 * reaction_ca_binding_to_cam_RT_AC_0_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_RT_AC_0_on_site_D) + (-1.0 * reaction_Transition_from_cam_RT_AC_0_to_cam_RR_AC_0) + ( 1.0 * reaction_Transition_from_cam_TT_AC_0_to_cam_RT_AC_0));
	
% Species:   id = cam_RT_AC_rbp, name = cam_RT_AC_rbp, affected by kineticLaw
	xdot(68) = (1/(compartment_cytosol))*(( 1.0 * reaction_rbp_binding_to_cam_RT_AC_0) + ( 1.0 * reaction_ca_binding_to_cam_RT_C_rbp_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_RT_A_rbp_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_RT_AC_rbp_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_RT_AC_rbp_on_site_D));
	
% Species:   id = cam_RT_AC_tbp, name = cam_RT_AC_tbp, affected by kineticLaw
	xdot(69) = (1/(compartment_cytosol))*(( 1.0 * reaction_tbp_binding_to_cam_RT_AC_0) + ( 1.0 * reaction_ca_binding_to_cam_RT_C_tbp_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_RT_A_tbp_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_RT_AC_tbp_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_RT_AC_tbp_on_site_D));
	
% Species:   id = cam_RT_AD_0, name = cam_RT_AD_0, affected by kineticLaw
	xdot(70) = (1/(compartment_cytosol))*(( 1.0 * reaction_ca_binding_to_cam_RT_D_0_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_RT_A_0_on_site_D) + (-1.0 * reaction_rbp_binding_to_cam_RT_AD_0) + (-1.0 * reaction_tbp_binding_to_cam_RT_AD_0) + (-1.0 * reaction_ca_binding_to_cam_RT_AD_0_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_RT_AD_0_on_site_C) + (-1.0 * reaction_Transition_from_cam_RT_AD_0_to_cam_RR_AD_0) + ( 1.0 * reaction_Transition_from_cam_TT_AD_0_to_cam_RT_AD_0));
	
% Species:   id = cam_RT_AD_rbp, name = cam_RT_AD_rbp, affected by kineticLaw
	xdot(71) = (1/(compartment_cytosol))*(( 1.0 * reaction_rbp_binding_to_cam_RT_AD_0) + ( 1.0 * reaction_ca_binding_to_cam_RT_D_rbp_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_RT_A_rbp_on_site_D) + (-1.0 * reaction_ca_binding_to_cam_RT_AD_rbp_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_RT_AD_rbp_on_site_C));
	
% Species:   id = cam_RT_AD_tbp, name = cam_RT_AD_tbp, affected by kineticLaw
	xdot(72) = (1/(compartment_cytosol))*(( 1.0 * reaction_tbp_binding_to_cam_RT_AD_0) + ( 1.0 * reaction_ca_binding_to_cam_RT_D_tbp_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_RT_A_tbp_on_site_D) + (-1.0 * reaction_ca_binding_to_cam_RT_AD_tbp_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_RT_AD_tbp_on_site_C));
	
% Species:   id = cam_RT_BC_0, name = cam_RT_BC_0, affected by kineticLaw
	xdot(73) = (1/(compartment_cytosol))*(( 1.0 * reaction_ca_binding_to_cam_RT_C_0_on_site_B) + ( 1.0 * reaction_ca_binding_to_cam_RT_B_0_on_site_C) + (-1.0 * reaction_rbp_binding_to_cam_RT_BC_0) + (-1.0 * reaction_tbp_binding_to_cam_RT_BC_0) + (-1.0 * reaction_ca_binding_to_cam_RT_BC_0_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_RT_BC_0_on_site_D) + (-1.0 * reaction_Transition_from_cam_RT_BC_0_to_cam_RR_BC_0) + ( 1.0 * reaction_Transition_from_cam_TT_BC_0_to_cam_RT_BC_0));
	
% Species:   id = cam_RT_BC_rbp, name = cam_RT_BC_rbp, affected by kineticLaw
	xdot(74) = (1/(compartment_cytosol))*(( 1.0 * reaction_rbp_binding_to_cam_RT_BC_0) + ( 1.0 * reaction_ca_binding_to_cam_RT_C_rbp_on_site_B) + ( 1.0 * reaction_ca_binding_to_cam_RT_B_rbp_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_RT_BC_rbp_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_RT_BC_rbp_on_site_D));
	
% Species:   id = cam_RT_BC_tbp, name = cam_RT_BC_tbp, affected by kineticLaw
	xdot(75) = (1/(compartment_cytosol))*(( 1.0 * reaction_tbp_binding_to_cam_RT_BC_0) + ( 1.0 * reaction_ca_binding_to_cam_RT_C_tbp_on_site_B) + ( 1.0 * reaction_ca_binding_to_cam_RT_B_tbp_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_RT_BC_tbp_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_RT_BC_tbp_on_site_D));
	
% Species:   id = cam_RT_BD_0, name = cam_RT_BD_0, affected by kineticLaw
	xdot(76) = (1/(compartment_cytosol))*(( 1.0 * reaction_ca_binding_to_cam_RT_D_0_on_site_B) + ( 1.0 * reaction_ca_binding_to_cam_RT_B_0_on_site_D) + (-1.0 * reaction_rbp_binding_to_cam_RT_BD_0) + (-1.0 * reaction_tbp_binding_to_cam_RT_BD_0) + (-1.0 * reaction_ca_binding_to_cam_RT_BD_0_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_RT_BD_0_on_site_C) + (-1.0 * reaction_Transition_from_cam_RT_BD_0_to_cam_RR_BD_0) + ( 1.0 * reaction_Transition_from_cam_TT_BD_0_to_cam_RT_BD_0));
	
% Species:   id = cam_RT_BD_rbp, name = cam_RT_BD_rbp, affected by kineticLaw
	xdot(77) = (1/(compartment_cytosol))*(( 1.0 * reaction_rbp_binding_to_cam_RT_BD_0) + ( 1.0 * reaction_ca_binding_to_cam_RT_D_rbp_on_site_B) + ( 1.0 * reaction_ca_binding_to_cam_RT_B_rbp_on_site_D) + (-1.0 * reaction_ca_binding_to_cam_RT_BD_rbp_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_RT_BD_rbp_on_site_C));
	
% Species:   id = cam_RT_BD_tbp, name = cam_RT_BD_tbp, affected by kineticLaw
	xdot(78) = (1/(compartment_cytosol))*(( 1.0 * reaction_tbp_binding_to_cam_RT_BD_0) + ( 1.0 * reaction_ca_binding_to_cam_RT_D_tbp_on_site_B) + ( 1.0 * reaction_ca_binding_to_cam_RT_B_tbp_on_site_D) + (-1.0 * reaction_ca_binding_to_cam_RT_BD_tbp_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_RT_BD_tbp_on_site_C));
	
% Species:   id = cam_RT_CD_0, name = cam_RT_CD_0, affected by kineticLaw
	xdot(79) = (1/(compartment_cytosol))*(( 1.0 * reaction_ca_binding_to_cam_RT_D_0_on_site_C) + ( 1.0 * reaction_ca_binding_to_cam_RT_C_0_on_site_D) + (-1.0 * reaction_rbp_binding_to_cam_RT_CD_0) + (-1.0 * reaction_tbp_binding_to_cam_RT_CD_0) + (-1.0 * reaction_ca_binding_to_cam_RT_CD_0_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_RT_CD_0_on_site_B) + (-1.0 * reaction_Transition_from_cam_RT_CD_0_to_cam_RR_CD_0) + ( 1.0 * reaction_Transition_from_cam_TT_CD_0_to_cam_RT_CD_0));
	
% Species:   id = cam_RT_CD_rbp, name = cam_RT_CD_rbp, affected by kineticLaw
	xdot(80) = (1/(compartment_cytosol))*(( 1.0 * reaction_rbp_binding_to_cam_RT_CD_0) + ( 1.0 * reaction_ca_binding_to_cam_RT_D_rbp_on_site_C) + ( 1.0 * reaction_ca_binding_to_cam_RT_C_rbp_on_site_D) + (-1.0 * reaction_ca_binding_to_cam_RT_CD_rbp_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_RT_CD_rbp_on_site_B));
	
% Species:   id = cam_RT_CD_tbp, name = cam_RT_CD_tbp, affected by kineticLaw
	xdot(81) = (1/(compartment_cytosol))*(( 1.0 * reaction_tbp_binding_to_cam_RT_CD_0) + ( 1.0 * reaction_ca_binding_to_cam_RT_D_tbp_on_site_C) + ( 1.0 * reaction_ca_binding_to_cam_RT_C_tbp_on_site_D) + (-1.0 * reaction_ca_binding_to_cam_RT_CD_tbp_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_RT_CD_tbp_on_site_B));
	
% Species:   id = cam_RT_ABC_0, name = cam_RT_ABC_0, affected by kineticLaw
	xdot(82) = (1/(compartment_cytosol))*(( 1.0 * reaction_ca_binding_to_cam_RT_BC_0_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_RT_AC_0_on_site_B) + ( 1.0 * reaction_ca_binding_to_cam_RT_AB_0_on_site_C) + (-1.0 * reaction_rbp_binding_to_cam_RT_ABC_0) + (-1.0 * reaction_tbp_binding_to_cam_RT_ABC_0) + (-1.0 * reaction_ca_binding_to_cam_RT_ABC_0_on_site_D) + (-1.0 * reaction_Transition_from_cam_RT_ABC_0_to_cam_RR_ABC_0) + ( 1.0 * reaction_Transition_from_cam_TT_ABC_0_to_cam_RT_ABC_0));
	
% Species:   id = cam_RT_ABC_rbp, name = cam_RT_ABC_rbp, affected by kineticLaw
	xdot(83) = (1/(compartment_cytosol))*(( 1.0 * reaction_rbp_binding_to_cam_RT_ABC_0) + ( 1.0 * reaction_ca_binding_to_cam_RT_BC_rbp_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_RT_AC_rbp_on_site_B) + ( 1.0 * reaction_ca_binding_to_cam_RT_AB_rbp_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_RT_ABC_rbp_on_site_D));
	
% Species:   id = cam_RT_ABC_tbp, name = cam_RT_ABC_tbp, affected by kineticLaw
	xdot(84) = (1/(compartment_cytosol))*(( 1.0 * reaction_tbp_binding_to_cam_RT_ABC_0) + ( 1.0 * reaction_ca_binding_to_cam_RT_BC_tbp_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_RT_AC_tbp_on_site_B) + ( 1.0 * reaction_ca_binding_to_cam_RT_AB_tbp_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_RT_ABC_tbp_on_site_D));
	
% Species:   id = cam_RT_ABD_0, name = cam_RT_ABD_0, affected by kineticLaw
	xdot(85) = (1/(compartment_cytosol))*(( 1.0 * reaction_ca_binding_to_cam_RT_BD_0_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_RT_AD_0_on_site_B) + ( 1.0 * reaction_ca_binding_to_cam_RT_AB_0_on_site_D) + (-1.0 * reaction_rbp_binding_to_cam_RT_ABD_0) + (-1.0 * reaction_tbp_binding_to_cam_RT_ABD_0) + (-1.0 * reaction_ca_binding_to_cam_RT_ABD_0_on_site_C) + (-1.0 * reaction_Transition_from_cam_RT_ABD_0_to_cam_RR_ABD_0) + ( 1.0 * reaction_Transition_from_cam_TT_ABD_0_to_cam_RT_ABD_0));
	
% Species:   id = cam_RT_ABD_rbp, name = cam_RT_ABD_rbp, affected by kineticLaw
	xdot(86) = (1/(compartment_cytosol))*(( 1.0 * reaction_rbp_binding_to_cam_RT_ABD_0) + ( 1.0 * reaction_ca_binding_to_cam_RT_BD_rbp_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_RT_AD_rbp_on_site_B) + ( 1.0 * reaction_ca_binding_to_cam_RT_AB_rbp_on_site_D) + (-1.0 * reaction_ca_binding_to_cam_RT_ABD_rbp_on_site_C));
	
% Species:   id = cam_RT_ABD_tbp, name = cam_RT_ABD_tbp, affected by kineticLaw
	xdot(87) = (1/(compartment_cytosol))*(( 1.0 * reaction_tbp_binding_to_cam_RT_ABD_0) + ( 1.0 * reaction_ca_binding_to_cam_RT_BD_tbp_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_RT_AD_tbp_on_site_B) + ( 1.0 * reaction_ca_binding_to_cam_RT_AB_tbp_on_site_D) + (-1.0 * reaction_ca_binding_to_cam_RT_ABD_tbp_on_site_C));
	
% Species:   id = cam_RT_ACD_0, name = cam_RT_ACD_0, affected by kineticLaw
	xdot(88) = (1/(compartment_cytosol))*(( 1.0 * reaction_ca_binding_to_cam_RT_CD_0_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_RT_AD_0_on_site_C) + ( 1.0 * reaction_ca_binding_to_cam_RT_AC_0_on_site_D) + (-1.0 * reaction_rbp_binding_to_cam_RT_ACD_0) + (-1.0 * reaction_tbp_binding_to_cam_RT_ACD_0) + (-1.0 * reaction_ca_binding_to_cam_RT_ACD_0_on_site_B) + (-1.0 * reaction_Transition_from_cam_RT_ACD_0_to_cam_RR_ACD_0) + ( 1.0 * reaction_Transition_from_cam_TT_ACD_0_to_cam_RT_ACD_0));
	
% Species:   id = cam_RT_ACD_rbp, name = cam_RT_ACD_rbp, affected by kineticLaw
	xdot(89) = (1/(compartment_cytosol))*(( 1.0 * reaction_rbp_binding_to_cam_RT_ACD_0) + ( 1.0 * reaction_ca_binding_to_cam_RT_CD_rbp_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_RT_AD_rbp_on_site_C) + ( 1.0 * reaction_ca_binding_to_cam_RT_AC_rbp_on_site_D) + (-1.0 * reaction_ca_binding_to_cam_RT_ACD_rbp_on_site_B));
	
% Species:   id = cam_RT_ACD_tbp, name = cam_RT_ACD_tbp, affected by kineticLaw
	xdot(90) = (1/(compartment_cytosol))*(( 1.0 * reaction_tbp_binding_to_cam_RT_ACD_0) + ( 1.0 * reaction_ca_binding_to_cam_RT_CD_tbp_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_RT_AD_tbp_on_site_C) + ( 1.0 * reaction_ca_binding_to_cam_RT_AC_tbp_on_site_D) + (-1.0 * reaction_ca_binding_to_cam_RT_ACD_tbp_on_site_B));
	
% Species:   id = cam_RT_BCD_0, name = cam_RT_BCD_0, affected by kineticLaw
	xdot(91) = (1/(compartment_cytosol))*(( 1.0 * reaction_ca_binding_to_cam_RT_CD_0_on_site_B) + ( 1.0 * reaction_ca_binding_to_cam_RT_BD_0_on_site_C) + ( 1.0 * reaction_ca_binding_to_cam_RT_BC_0_on_site_D) + (-1.0 * reaction_rbp_binding_to_cam_RT_BCD_0) + (-1.0 * reaction_tbp_binding_to_cam_RT_BCD_0) + (-1.0 * reaction_ca_binding_to_cam_RT_BCD_0_on_site_A) + (-1.0 * reaction_Transition_from_cam_RT_BCD_0_to_cam_RR_BCD_0) + ( 1.0 * reaction_Transition_from_cam_TT_BCD_0_to_cam_RT_BCD_0));
	
% Species:   id = cam_RT_BCD_rbp, name = cam_RT_BCD_rbp, affected by kineticLaw
	xdot(92) = (1/(compartment_cytosol))*(( 1.0 * reaction_rbp_binding_to_cam_RT_BCD_0) + ( 1.0 * reaction_ca_binding_to_cam_RT_CD_rbp_on_site_B) + ( 1.0 * reaction_ca_binding_to_cam_RT_BD_rbp_on_site_C) + ( 1.0 * reaction_ca_binding_to_cam_RT_BC_rbp_on_site_D) + (-1.0 * reaction_ca_binding_to_cam_RT_BCD_rbp_on_site_A));
	
% Species:   id = cam_RT_BCD_tbp, name = cam_RT_BCD_tbp, affected by kineticLaw
	xdot(93) = (1/(compartment_cytosol))*(( 1.0 * reaction_tbp_binding_to_cam_RT_BCD_0) + ( 1.0 * reaction_ca_binding_to_cam_RT_CD_tbp_on_site_B) + ( 1.0 * reaction_ca_binding_to_cam_RT_BD_tbp_on_site_C) + ( 1.0 * reaction_ca_binding_to_cam_RT_BC_tbp_on_site_D) + (-1.0 * reaction_ca_binding_to_cam_RT_BCD_tbp_on_site_A));
	
% Species:   id = cam_RT_ABCD_0, name = cam_RT_ABCD_0, affected by kineticLaw
	xdot(94) = (1/(compartment_cytosol))*(( 1.0 * reaction_ca_binding_to_cam_RT_BCD_0_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_RT_ACD_0_on_site_B) + ( 1.0 * reaction_ca_binding_to_cam_RT_ABD_0_on_site_C) + ( 1.0 * reaction_ca_binding_to_cam_RT_ABC_0_on_site_D) + (-1.0 * reaction_rbp_binding_to_cam_RT_ABCD_0) + (-1.0 * reaction_tbp_binding_to_cam_RT_ABCD_0) + (-1.0 * reaction_Transition_from_cam_RT_ABCD_0_to_cam_RR_ABCD_0) + ( 1.0 * reaction_Transition_from_cam_TT_ABCD_0_to_cam_RT_ABCD_0));
	
% Species:   id = cam_RT_ABCD_rbp, name = cam_RT_ABCD_rbp, affected by kineticLaw
	xdot(95) = (1/(compartment_cytosol))*(( 1.0 * reaction_rbp_binding_to_cam_RT_ABCD_0) + ( 1.0 * reaction_ca_binding_to_cam_RT_BCD_rbp_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_RT_ACD_rbp_on_site_B) + ( 1.0 * reaction_ca_binding_to_cam_RT_ABD_rbp_on_site_C) + ( 1.0 * reaction_ca_binding_to_cam_RT_ABC_rbp_on_site_D));
	
% Species:   id = cam_RT_ABCD_tbp, name = cam_RT_ABCD_tbp, affected by kineticLaw
	xdot(96) = (1/(compartment_cytosol))*(( 1.0 * reaction_tbp_binding_to_cam_RT_ABCD_0) + ( 1.0 * reaction_ca_binding_to_cam_RT_BCD_tbp_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_RT_ACD_tbp_on_site_B) + ( 1.0 * reaction_ca_binding_to_cam_RT_ABD_tbp_on_site_C) + ( 1.0 * reaction_ca_binding_to_cam_RT_ABC_tbp_on_site_D));
	
% Species:   id = cam_TR_0_0, name = cam_TR_0_0, affected by kineticLaw
	xdot(97) = (1/(compartment_cytosol))*((-1.0 * reaction_rbp_binding_to_cam_TR_0_0) + (-1.0 * reaction_tbp_binding_to_cam_TR_0_0) + (-1.0 * reaction_ca_binding_to_cam_TR_0_0_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_TR_0_0_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_TR_0_0_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_TR_0_0_on_site_D) + (-1.0 * reaction_Transition_from_cam_TR_0_0_to_cam_RR_0_0) + ( 1.0 * reaction_Transition_from_cam_TT_0_0_to_cam_TR_0_0));
	
% Species:   id = cam_TR_0_rbp, name = cam_TR_0_rbp, affected by kineticLaw
	xdot(98) = (1/(compartment_cytosol))*(( 1.0 * reaction_rbp_binding_to_cam_TR_0_0) + (-1.0 * reaction_ca_binding_to_cam_TR_0_rbp_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_TR_0_rbp_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_TR_0_rbp_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_TR_0_rbp_on_site_D));
	
% Species:   id = cam_TR_0_tbp, name = cam_TR_0_tbp, affected by kineticLaw
	xdot(99) = (1/(compartment_cytosol))*(( 1.0 * reaction_tbp_binding_to_cam_TR_0_0) + (-1.0 * reaction_ca_binding_to_cam_TR_0_tbp_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_TR_0_tbp_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_TR_0_tbp_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_TR_0_tbp_on_site_D));
	
% Species:   id = cam_TR_A_0, name = cam_TR_A_0, affected by kineticLaw
	xdot(100) = (1/(compartment_cytosol))*(( 1.0 * reaction_ca_binding_to_cam_TR_0_0_on_site_A) + (-1.0 * reaction_rbp_binding_to_cam_TR_A_0) + (-1.0 * reaction_tbp_binding_to_cam_TR_A_0) + (-1.0 * reaction_ca_binding_to_cam_TR_A_0_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_TR_A_0_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_TR_A_0_on_site_D) + (-1.0 * reaction_Transition_from_cam_TR_A_0_to_cam_RR_A_0) + ( 1.0 * reaction_Transition_from_cam_TT_A_0_to_cam_TR_A_0));
	
% Species:   id = cam_TR_A_rbp, name = cam_TR_A_rbp, affected by kineticLaw
	xdot(101) = (1/(compartment_cytosol))*(( 1.0 * reaction_rbp_binding_to_cam_TR_A_0) + ( 1.0 * reaction_ca_binding_to_cam_TR_0_rbp_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_TR_A_rbp_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_TR_A_rbp_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_TR_A_rbp_on_site_D));
	
% Species:   id = cam_TR_A_tbp, name = cam_TR_A_tbp, affected by kineticLaw
	xdot(102) = (1/(compartment_cytosol))*(( 1.0 * reaction_tbp_binding_to_cam_TR_A_0) + ( 1.0 * reaction_ca_binding_to_cam_TR_0_tbp_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_TR_A_tbp_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_TR_A_tbp_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_TR_A_tbp_on_site_D));
	
% Species:   id = cam_TR_B_0, name = cam_TR_B_0, affected by kineticLaw
	xdot(103) = (1/(compartment_cytosol))*(( 1.0 * reaction_ca_binding_to_cam_TR_0_0_on_site_B) + (-1.0 * reaction_rbp_binding_to_cam_TR_B_0) + (-1.0 * reaction_tbp_binding_to_cam_TR_B_0) + (-1.0 * reaction_ca_binding_to_cam_TR_B_0_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_TR_B_0_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_TR_B_0_on_site_D) + (-1.0 * reaction_Transition_from_cam_TR_B_0_to_cam_RR_B_0) + ( 1.0 * reaction_Transition_from_cam_TT_B_0_to_cam_TR_B_0));
	
% Species:   id = cam_TR_B_rbp, name = cam_TR_B_rbp, affected by kineticLaw
	xdot(104) = (1/(compartment_cytosol))*(( 1.0 * reaction_rbp_binding_to_cam_TR_B_0) + ( 1.0 * reaction_ca_binding_to_cam_TR_0_rbp_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_TR_B_rbp_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_TR_B_rbp_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_TR_B_rbp_on_site_D));
	
% Species:   id = cam_TR_B_tbp, name = cam_TR_B_tbp, affected by kineticLaw
	xdot(105) = (1/(compartment_cytosol))*(( 1.0 * reaction_tbp_binding_to_cam_TR_B_0) + ( 1.0 * reaction_ca_binding_to_cam_TR_0_tbp_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_TR_B_tbp_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_TR_B_tbp_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_TR_B_tbp_on_site_D));
	
% Species:   id = cam_TR_C_0, name = cam_TR_C_0, affected by kineticLaw
	xdot(106) = (1/(compartment_cytosol))*(( 1.0 * reaction_ca_binding_to_cam_TR_0_0_on_site_C) + (-1.0 * reaction_rbp_binding_to_cam_TR_C_0) + (-1.0 * reaction_tbp_binding_to_cam_TR_C_0) + (-1.0 * reaction_ca_binding_to_cam_TR_C_0_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_TR_C_0_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_TR_C_0_on_site_D) + (-1.0 * reaction_Transition_from_cam_TR_C_0_to_cam_RR_C_0) + ( 1.0 * reaction_Transition_from_cam_TT_C_0_to_cam_TR_C_0));
	
% Species:   id = cam_TR_C_rbp, name = cam_TR_C_rbp, affected by kineticLaw
	xdot(107) = (1/(compartment_cytosol))*(( 1.0 * reaction_rbp_binding_to_cam_TR_C_0) + ( 1.0 * reaction_ca_binding_to_cam_TR_0_rbp_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_TR_C_rbp_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_TR_C_rbp_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_TR_C_rbp_on_site_D));
	
% Species:   id = cam_TR_C_tbp, name = cam_TR_C_tbp, affected by kineticLaw
	xdot(108) = (1/(compartment_cytosol))*(( 1.0 * reaction_tbp_binding_to_cam_TR_C_0) + ( 1.0 * reaction_ca_binding_to_cam_TR_0_tbp_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_TR_C_tbp_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_TR_C_tbp_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_TR_C_tbp_on_site_D));
	
% Species:   id = cam_TR_D_0, name = cam_TR_D_0, affected by kineticLaw
	xdot(109) = (1/(compartment_cytosol))*(( 1.0 * reaction_ca_binding_to_cam_TR_0_0_on_site_D) + (-1.0 * reaction_rbp_binding_to_cam_TR_D_0) + (-1.0 * reaction_tbp_binding_to_cam_TR_D_0) + (-1.0 * reaction_ca_binding_to_cam_TR_D_0_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_TR_D_0_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_TR_D_0_on_site_C) + (-1.0 * reaction_Transition_from_cam_TR_D_0_to_cam_RR_D_0) + ( 1.0 * reaction_Transition_from_cam_TT_D_0_to_cam_TR_D_0));
	
% Species:   id = cam_TR_D_rbp, name = cam_TR_D_rbp, affected by kineticLaw
	xdot(110) = (1/(compartment_cytosol))*(( 1.0 * reaction_rbp_binding_to_cam_TR_D_0) + ( 1.0 * reaction_ca_binding_to_cam_TR_0_rbp_on_site_D) + (-1.0 * reaction_ca_binding_to_cam_TR_D_rbp_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_TR_D_rbp_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_TR_D_rbp_on_site_C));
	
% Species:   id = cam_TR_D_tbp, name = cam_TR_D_tbp, affected by kineticLaw
	xdot(111) = (1/(compartment_cytosol))*(( 1.0 * reaction_tbp_binding_to_cam_TR_D_0) + ( 1.0 * reaction_ca_binding_to_cam_TR_0_tbp_on_site_D) + (-1.0 * reaction_ca_binding_to_cam_TR_D_tbp_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_TR_D_tbp_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_TR_D_tbp_on_site_C));
	
% Species:   id = cam_TR_AB_0, name = cam_TR_AB_0, affected by kineticLaw
	xdot(112) = (1/(compartment_cytosol))*(( 1.0 * reaction_ca_binding_to_cam_TR_B_0_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_TR_A_0_on_site_B) + (-1.0 * reaction_rbp_binding_to_cam_TR_AB_0) + (-1.0 * reaction_tbp_binding_to_cam_TR_AB_0) + (-1.0 * reaction_ca_binding_to_cam_TR_AB_0_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_TR_AB_0_on_site_D) + (-1.0 * reaction_Transition_from_cam_TR_AB_0_to_cam_RR_AB_0) + ( 1.0 * reaction_Transition_from_cam_TT_AB_0_to_cam_TR_AB_0));
	
% Species:   id = cam_TR_AB_rbp, name = cam_TR_AB_rbp, affected by kineticLaw
	xdot(113) = (1/(compartment_cytosol))*(( 1.0 * reaction_rbp_binding_to_cam_TR_AB_0) + ( 1.0 * reaction_ca_binding_to_cam_TR_B_rbp_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_TR_A_rbp_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_TR_AB_rbp_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_TR_AB_rbp_on_site_D));
	
% Species:   id = cam_TR_AB_tbp, name = cam_TR_AB_tbp, affected by kineticLaw
	xdot(114) = (1/(compartment_cytosol))*(( 1.0 * reaction_tbp_binding_to_cam_TR_AB_0) + ( 1.0 * reaction_ca_binding_to_cam_TR_B_tbp_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_TR_A_tbp_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_TR_AB_tbp_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_TR_AB_tbp_on_site_D));
	
% Species:   id = cam_TR_AC_0, name = cam_TR_AC_0, affected by kineticLaw
	xdot(115) = (1/(compartment_cytosol))*(( 1.0 * reaction_ca_binding_to_cam_TR_C_0_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_TR_A_0_on_site_C) + (-1.0 * reaction_rbp_binding_to_cam_TR_AC_0) + (-1.0 * reaction_tbp_binding_to_cam_TR_AC_0) + (-1.0 * reaction_ca_binding_to_cam_TR_AC_0_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_TR_AC_0_on_site_D) + (-1.0 * reaction_Transition_from_cam_TR_AC_0_to_cam_RR_AC_0) + ( 1.0 * reaction_Transition_from_cam_TT_AC_0_to_cam_TR_AC_0));
	
% Species:   id = cam_TR_AC_rbp, name = cam_TR_AC_rbp, affected by kineticLaw
	xdot(116) = (1/(compartment_cytosol))*(( 1.0 * reaction_rbp_binding_to_cam_TR_AC_0) + ( 1.0 * reaction_ca_binding_to_cam_TR_C_rbp_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_TR_A_rbp_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_TR_AC_rbp_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_TR_AC_rbp_on_site_D));
	
% Species:   id = cam_TR_AC_tbp, name = cam_TR_AC_tbp, affected by kineticLaw
	xdot(117) = (1/(compartment_cytosol))*(( 1.0 * reaction_tbp_binding_to_cam_TR_AC_0) + ( 1.0 * reaction_ca_binding_to_cam_TR_C_tbp_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_TR_A_tbp_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_TR_AC_tbp_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_TR_AC_tbp_on_site_D));
	
% Species:   id = cam_TR_AD_0, name = cam_TR_AD_0, affected by kineticLaw
	xdot(118) = (1/(compartment_cytosol))*(( 1.0 * reaction_ca_binding_to_cam_TR_D_0_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_TR_A_0_on_site_D) + (-1.0 * reaction_rbp_binding_to_cam_TR_AD_0) + (-1.0 * reaction_tbp_binding_to_cam_TR_AD_0) + (-1.0 * reaction_ca_binding_to_cam_TR_AD_0_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_TR_AD_0_on_site_C) + (-1.0 * reaction_Transition_from_cam_TR_AD_0_to_cam_RR_AD_0) + ( 1.0 * reaction_Transition_from_cam_TT_AD_0_to_cam_TR_AD_0));
	
% Species:   id = cam_TR_AD_rbp, name = cam_TR_AD_rbp, affected by kineticLaw
	xdot(119) = (1/(compartment_cytosol))*(( 1.0 * reaction_rbp_binding_to_cam_TR_AD_0) + ( 1.0 * reaction_ca_binding_to_cam_TR_D_rbp_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_TR_A_rbp_on_site_D) + (-1.0 * reaction_ca_binding_to_cam_TR_AD_rbp_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_TR_AD_rbp_on_site_C));
	
% Species:   id = cam_TR_AD_tbp, name = cam_TR_AD_tbp, affected by kineticLaw
	xdot(120) = (1/(compartment_cytosol))*(( 1.0 * reaction_tbp_binding_to_cam_TR_AD_0) + ( 1.0 * reaction_ca_binding_to_cam_TR_D_tbp_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_TR_A_tbp_on_site_D) + (-1.0 * reaction_ca_binding_to_cam_TR_AD_tbp_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_TR_AD_tbp_on_site_C));
	
% Species:   id = cam_TR_BC_0, name = cam_TR_BC_0, affected by kineticLaw
	xdot(121) = (1/(compartment_cytosol))*(( 1.0 * reaction_ca_binding_to_cam_TR_C_0_on_site_B) + ( 1.0 * reaction_ca_binding_to_cam_TR_B_0_on_site_C) + (-1.0 * reaction_rbp_binding_to_cam_TR_BC_0) + (-1.0 * reaction_tbp_binding_to_cam_TR_BC_0) + (-1.0 * reaction_ca_binding_to_cam_TR_BC_0_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_TR_BC_0_on_site_D) + (-1.0 * reaction_Transition_from_cam_TR_BC_0_to_cam_RR_BC_0) + ( 1.0 * reaction_Transition_from_cam_TT_BC_0_to_cam_TR_BC_0));
	
% Species:   id = cam_TR_BC_rbp, name = cam_TR_BC_rbp, affected by kineticLaw
	xdot(122) = (1/(compartment_cytosol))*(( 1.0 * reaction_rbp_binding_to_cam_TR_BC_0) + ( 1.0 * reaction_ca_binding_to_cam_TR_C_rbp_on_site_B) + ( 1.0 * reaction_ca_binding_to_cam_TR_B_rbp_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_TR_BC_rbp_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_TR_BC_rbp_on_site_D));
	
% Species:   id = cam_TR_BC_tbp, name = cam_TR_BC_tbp, affected by kineticLaw
	xdot(123) = (1/(compartment_cytosol))*(( 1.0 * reaction_tbp_binding_to_cam_TR_BC_0) + ( 1.0 * reaction_ca_binding_to_cam_TR_C_tbp_on_site_B) + ( 1.0 * reaction_ca_binding_to_cam_TR_B_tbp_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_TR_BC_tbp_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_TR_BC_tbp_on_site_D));
	
% Species:   id = cam_TR_BD_0, name = cam_TR_BD_0, affected by kineticLaw
	xdot(124) = (1/(compartment_cytosol))*(( 1.0 * reaction_ca_binding_to_cam_TR_D_0_on_site_B) + ( 1.0 * reaction_ca_binding_to_cam_TR_B_0_on_site_D) + (-1.0 * reaction_rbp_binding_to_cam_TR_BD_0) + (-1.0 * reaction_tbp_binding_to_cam_TR_BD_0) + (-1.0 * reaction_ca_binding_to_cam_TR_BD_0_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_TR_BD_0_on_site_C) + (-1.0 * reaction_Transition_from_cam_TR_BD_0_to_cam_RR_BD_0) + ( 1.0 * reaction_Transition_from_cam_TT_BD_0_to_cam_TR_BD_0));
	
% Species:   id = cam_TR_BD_rbp, name = cam_TR_BD_rbp, affected by kineticLaw
	xdot(125) = (1/(compartment_cytosol))*(( 1.0 * reaction_rbp_binding_to_cam_TR_BD_0) + ( 1.0 * reaction_ca_binding_to_cam_TR_D_rbp_on_site_B) + ( 1.0 * reaction_ca_binding_to_cam_TR_B_rbp_on_site_D) + (-1.0 * reaction_ca_binding_to_cam_TR_BD_rbp_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_TR_BD_rbp_on_site_C));
	
% Species:   id = cam_TR_BD_tbp, name = cam_TR_BD_tbp, affected by kineticLaw
	xdot(126) = (1/(compartment_cytosol))*(( 1.0 * reaction_tbp_binding_to_cam_TR_BD_0) + ( 1.0 * reaction_ca_binding_to_cam_TR_D_tbp_on_site_B) + ( 1.0 * reaction_ca_binding_to_cam_TR_B_tbp_on_site_D) + (-1.0 * reaction_ca_binding_to_cam_TR_BD_tbp_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_TR_BD_tbp_on_site_C));
	
% Species:   id = cam_TR_CD_0, name = cam_TR_CD_0, affected by kineticLaw
	xdot(127) = (1/(compartment_cytosol))*(( 1.0 * reaction_ca_binding_to_cam_TR_D_0_on_site_C) + ( 1.0 * reaction_ca_binding_to_cam_TR_C_0_on_site_D) + (-1.0 * reaction_rbp_binding_to_cam_TR_CD_0) + (-1.0 * reaction_tbp_binding_to_cam_TR_CD_0) + (-1.0 * reaction_ca_binding_to_cam_TR_CD_0_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_TR_CD_0_on_site_B) + (-1.0 * reaction_Transition_from_cam_TR_CD_0_to_cam_RR_CD_0) + ( 1.0 * reaction_Transition_from_cam_TT_CD_0_to_cam_TR_CD_0));
	
% Species:   id = cam_TR_CD_rbp, name = cam_TR_CD_rbp, affected by kineticLaw
	xdot(128) = (1/(compartment_cytosol))*(( 1.0 * reaction_rbp_binding_to_cam_TR_CD_0) + ( 1.0 * reaction_ca_binding_to_cam_TR_D_rbp_on_site_C) + ( 1.0 * reaction_ca_binding_to_cam_TR_C_rbp_on_site_D) + (-1.0 * reaction_ca_binding_to_cam_TR_CD_rbp_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_TR_CD_rbp_on_site_B));
	
% Species:   id = cam_TR_CD_tbp, name = cam_TR_CD_tbp, affected by kineticLaw
	xdot(129) = (1/(compartment_cytosol))*(( 1.0 * reaction_tbp_binding_to_cam_TR_CD_0) + ( 1.0 * reaction_ca_binding_to_cam_TR_D_tbp_on_site_C) + ( 1.0 * reaction_ca_binding_to_cam_TR_C_tbp_on_site_D) + (-1.0 * reaction_ca_binding_to_cam_TR_CD_tbp_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_TR_CD_tbp_on_site_B));
	
% Species:   id = cam_TR_ABC_0, name = cam_TR_ABC_0, affected by kineticLaw
	xdot(130) = (1/(compartment_cytosol))*(( 1.0 * reaction_ca_binding_to_cam_TR_BC_0_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_TR_AC_0_on_site_B) + ( 1.0 * reaction_ca_binding_to_cam_TR_AB_0_on_site_C) + (-1.0 * reaction_rbp_binding_to_cam_TR_ABC_0) + (-1.0 * reaction_tbp_binding_to_cam_TR_ABC_0) + (-1.0 * reaction_ca_binding_to_cam_TR_ABC_0_on_site_D) + (-1.0 * reaction_Transition_from_cam_TR_ABC_0_to_cam_RR_ABC_0) + ( 1.0 * reaction_Transition_from_cam_TT_ABC_0_to_cam_TR_ABC_0));
	
% Species:   id = cam_TR_ABC_rbp, name = cam_TR_ABC_rbp, affected by kineticLaw
	xdot(131) = (1/(compartment_cytosol))*(( 1.0 * reaction_rbp_binding_to_cam_TR_ABC_0) + ( 1.0 * reaction_ca_binding_to_cam_TR_BC_rbp_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_TR_AC_rbp_on_site_B) + ( 1.0 * reaction_ca_binding_to_cam_TR_AB_rbp_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_TR_ABC_rbp_on_site_D));
	
% Species:   id = cam_TR_ABC_tbp, name = cam_TR_ABC_tbp, affected by kineticLaw
	xdot(132) = (1/(compartment_cytosol))*(( 1.0 * reaction_tbp_binding_to_cam_TR_ABC_0) + ( 1.0 * reaction_ca_binding_to_cam_TR_BC_tbp_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_TR_AC_tbp_on_site_B) + ( 1.0 * reaction_ca_binding_to_cam_TR_AB_tbp_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_TR_ABC_tbp_on_site_D));
	
% Species:   id = cam_TR_ABD_0, name = cam_TR_ABD_0, affected by kineticLaw
	xdot(133) = (1/(compartment_cytosol))*(( 1.0 * reaction_ca_binding_to_cam_TR_BD_0_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_TR_AD_0_on_site_B) + ( 1.0 * reaction_ca_binding_to_cam_TR_AB_0_on_site_D) + (-1.0 * reaction_rbp_binding_to_cam_TR_ABD_0) + (-1.0 * reaction_tbp_binding_to_cam_TR_ABD_0) + (-1.0 * reaction_ca_binding_to_cam_TR_ABD_0_on_site_C) + (-1.0 * reaction_Transition_from_cam_TR_ABD_0_to_cam_RR_ABD_0) + ( 1.0 * reaction_Transition_from_cam_TT_ABD_0_to_cam_TR_ABD_0));
	
% Species:   id = cam_TR_ABD_rbp, name = cam_TR_ABD_rbp, affected by kineticLaw
	xdot(134) = (1/(compartment_cytosol))*(( 1.0 * reaction_rbp_binding_to_cam_TR_ABD_0) + ( 1.0 * reaction_ca_binding_to_cam_TR_BD_rbp_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_TR_AD_rbp_on_site_B) + ( 1.0 * reaction_ca_binding_to_cam_TR_AB_rbp_on_site_D) + (-1.0 * reaction_ca_binding_to_cam_TR_ABD_rbp_on_site_C));
	
% Species:   id = cam_TR_ABD_tbp, name = cam_TR_ABD_tbp, affected by kineticLaw
	xdot(135) = (1/(compartment_cytosol))*(( 1.0 * reaction_tbp_binding_to_cam_TR_ABD_0) + ( 1.0 * reaction_ca_binding_to_cam_TR_BD_tbp_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_TR_AD_tbp_on_site_B) + ( 1.0 * reaction_ca_binding_to_cam_TR_AB_tbp_on_site_D) + (-1.0 * reaction_ca_binding_to_cam_TR_ABD_tbp_on_site_C));
	
% Species:   id = cam_TR_ACD_0, name = cam_TR_ACD_0, affected by kineticLaw
	xdot(136) = (1/(compartment_cytosol))*(( 1.0 * reaction_ca_binding_to_cam_TR_CD_0_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_TR_AD_0_on_site_C) + ( 1.0 * reaction_ca_binding_to_cam_TR_AC_0_on_site_D) + (-1.0 * reaction_rbp_binding_to_cam_TR_ACD_0) + (-1.0 * reaction_tbp_binding_to_cam_TR_ACD_0) + (-1.0 * reaction_ca_binding_to_cam_TR_ACD_0_on_site_B) + (-1.0 * reaction_Transition_from_cam_TR_ACD_0_to_cam_RR_ACD_0) + ( 1.0 * reaction_Transition_from_cam_TT_ACD_0_to_cam_TR_ACD_0));
	
% Species:   id = cam_TR_ACD_rbp, name = cam_TR_ACD_rbp, affected by kineticLaw
	xdot(137) = (1/(compartment_cytosol))*(( 1.0 * reaction_rbp_binding_to_cam_TR_ACD_0) + ( 1.0 * reaction_ca_binding_to_cam_TR_CD_rbp_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_TR_AD_rbp_on_site_C) + ( 1.0 * reaction_ca_binding_to_cam_TR_AC_rbp_on_site_D) + (-1.0 * reaction_ca_binding_to_cam_TR_ACD_rbp_on_site_B));
	
% Species:   id = cam_TR_ACD_tbp, name = cam_TR_ACD_tbp, affected by kineticLaw
	xdot(138) = (1/(compartment_cytosol))*(( 1.0 * reaction_tbp_binding_to_cam_TR_ACD_0) + ( 1.0 * reaction_ca_binding_to_cam_TR_CD_tbp_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_TR_AD_tbp_on_site_C) + ( 1.0 * reaction_ca_binding_to_cam_TR_AC_tbp_on_site_D) + (-1.0 * reaction_ca_binding_to_cam_TR_ACD_tbp_on_site_B));
	
% Species:   id = cam_TR_BCD_0, name = cam_TR_BCD_0, affected by kineticLaw
	xdot(139) = (1/(compartment_cytosol))*(( 1.0 * reaction_ca_binding_to_cam_TR_CD_0_on_site_B) + ( 1.0 * reaction_ca_binding_to_cam_TR_BD_0_on_site_C) + ( 1.0 * reaction_ca_binding_to_cam_TR_BC_0_on_site_D) + (-1.0 * reaction_rbp_binding_to_cam_TR_BCD_0) + (-1.0 * reaction_tbp_binding_to_cam_TR_BCD_0) + (-1.0 * reaction_ca_binding_to_cam_TR_BCD_0_on_site_A) + (-1.0 * reaction_Transition_from_cam_TR_BCD_0_to_cam_RR_BCD_0) + ( 1.0 * reaction_Transition_from_cam_TT_BCD_0_to_cam_TR_BCD_0));
	
% Species:   id = cam_TR_BCD_rbp, name = cam_TR_BCD_rbp, affected by kineticLaw
	xdot(140) = (1/(compartment_cytosol))*(( 1.0 * reaction_rbp_binding_to_cam_TR_BCD_0) + ( 1.0 * reaction_ca_binding_to_cam_TR_CD_rbp_on_site_B) + ( 1.0 * reaction_ca_binding_to_cam_TR_BD_rbp_on_site_C) + ( 1.0 * reaction_ca_binding_to_cam_TR_BC_rbp_on_site_D) + (-1.0 * reaction_ca_binding_to_cam_TR_BCD_rbp_on_site_A));
	
% Species:   id = cam_TR_BCD_tbp, name = cam_TR_BCD_tbp, affected by kineticLaw
	xdot(141) = (1/(compartment_cytosol))*(( 1.0 * reaction_tbp_binding_to_cam_TR_BCD_0) + ( 1.0 * reaction_ca_binding_to_cam_TR_CD_tbp_on_site_B) + ( 1.0 * reaction_ca_binding_to_cam_TR_BD_tbp_on_site_C) + ( 1.0 * reaction_ca_binding_to_cam_TR_BC_tbp_on_site_D) + (-1.0 * reaction_ca_binding_to_cam_TR_BCD_tbp_on_site_A));
	
% Species:   id = cam_TR_ABCD_0, name = cam_TR_ABCD_0, affected by kineticLaw
	xdot(142) = (1/(compartment_cytosol))*(( 1.0 * reaction_ca_binding_to_cam_TR_BCD_0_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_TR_ACD_0_on_site_B) + ( 1.0 * reaction_ca_binding_to_cam_TR_ABD_0_on_site_C) + ( 1.0 * reaction_ca_binding_to_cam_TR_ABC_0_on_site_D) + (-1.0 * reaction_rbp_binding_to_cam_TR_ABCD_0) + (-1.0 * reaction_tbp_binding_to_cam_TR_ABCD_0) + (-1.0 * reaction_Transition_from_cam_TR_ABCD_0_to_cam_RR_ABCD_0) + ( 1.0 * reaction_Transition_from_cam_TT_ABCD_0_to_cam_TR_ABCD_0));
	
% Species:   id = cam_TR_ABCD_rbp, name = cam_TR_ABCD_rbp, affected by kineticLaw
	xdot(143) = (1/(compartment_cytosol))*(( 1.0 * reaction_rbp_binding_to_cam_TR_ABCD_0) + ( 1.0 * reaction_ca_binding_to_cam_TR_BCD_rbp_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_TR_ACD_rbp_on_site_B) + ( 1.0 * reaction_ca_binding_to_cam_TR_ABD_rbp_on_site_C) + ( 1.0 * reaction_ca_binding_to_cam_TR_ABC_rbp_on_site_D));
	
% Species:   id = cam_TR_ABCD_tbp, name = cam_TR_ABCD_tbp, affected by kineticLaw
	xdot(144) = (1/(compartment_cytosol))*(( 1.0 * reaction_tbp_binding_to_cam_TR_ABCD_0) + ( 1.0 * reaction_ca_binding_to_cam_TR_BCD_tbp_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_TR_ACD_tbp_on_site_B) + ( 1.0 * reaction_ca_binding_to_cam_TR_ABD_tbp_on_site_C) + ( 1.0 * reaction_ca_binding_to_cam_TR_ABC_tbp_on_site_D));
	
% Species:   id = cam_TT_0_0, name = cam_TT_0_0, affected by kineticLaw
	xdot(145) = (1/(compartment_cytosol))*((-1.0 * reaction_rbp_binding_to_cam_TT_0_0) + (-1.0 * reaction_tbp_binding_to_cam_TT_0_0) + (-1.0 * reaction_ca_binding_to_cam_TT_0_0_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_TT_0_0_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_TT_0_0_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_TT_0_0_on_site_D) + (-1.0 * reaction_Transition_from_cam_TT_0_0_to_cam_RT_0_0) + (-1.0 * reaction_Transition_from_cam_TT_0_0_to_cam_TR_0_0));
	
% Species:   id = cam_TT_0_rbp, name = cam_TT_0_rbp, affected by kineticLaw
	xdot(146) = (1/(compartment_cytosol))*(( 1.0 * reaction_rbp_binding_to_cam_TT_0_0) + (-1.0 * reaction_ca_binding_to_cam_TT_0_rbp_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_TT_0_rbp_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_TT_0_rbp_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_TT_0_rbp_on_site_D));
	
% Species:   id = cam_TT_0_tbp, name = cam_TT_0_tbp, affected by kineticLaw
	xdot(147) = (1/(compartment_cytosol))*(( 1.0 * reaction_tbp_binding_to_cam_TT_0_0) + (-1.0 * reaction_ca_binding_to_cam_TT_0_tbp_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_TT_0_tbp_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_TT_0_tbp_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_TT_0_tbp_on_site_D));
	
% Species:   id = cam_TT_A_0, name = cam_TT_A_0, affected by kineticLaw
	xdot(148) = (1/(compartment_cytosol))*(( 1.0 * reaction_ca_binding_to_cam_TT_0_0_on_site_A) + (-1.0 * reaction_rbp_binding_to_cam_TT_A_0) + (-1.0 * reaction_tbp_binding_to_cam_TT_A_0) + (-1.0 * reaction_ca_binding_to_cam_TT_A_0_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_TT_A_0_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_TT_A_0_on_site_D) + (-1.0 * reaction_Transition_from_cam_TT_A_0_to_cam_RT_A_0) + (-1.0 * reaction_Transition_from_cam_TT_A_0_to_cam_TR_A_0));
	
% Species:   id = cam_TT_A_rbp, name = cam_TT_A_rbp, affected by kineticLaw
	xdot(149) = (1/(compartment_cytosol))*(( 1.0 * reaction_rbp_binding_to_cam_TT_A_0) + ( 1.0 * reaction_ca_binding_to_cam_TT_0_rbp_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_TT_A_rbp_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_TT_A_rbp_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_TT_A_rbp_on_site_D));
	
% Species:   id = cam_TT_A_tbp, name = cam_TT_A_tbp, affected by kineticLaw
	xdot(150) = (1/(compartment_cytosol))*(( 1.0 * reaction_tbp_binding_to_cam_TT_A_0) + ( 1.0 * reaction_ca_binding_to_cam_TT_0_tbp_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_TT_A_tbp_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_TT_A_tbp_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_TT_A_tbp_on_site_D));
	
% Species:   id = cam_TT_B_0, name = cam_TT_B_0, affected by kineticLaw
	xdot(151) = (1/(compartment_cytosol))*(( 1.0 * reaction_ca_binding_to_cam_TT_0_0_on_site_B) + (-1.0 * reaction_rbp_binding_to_cam_TT_B_0) + (-1.0 * reaction_tbp_binding_to_cam_TT_B_0) + (-1.0 * reaction_ca_binding_to_cam_TT_B_0_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_TT_B_0_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_TT_B_0_on_site_D) + (-1.0 * reaction_Transition_from_cam_TT_B_0_to_cam_RT_B_0) + (-1.0 * reaction_Transition_from_cam_TT_B_0_to_cam_TR_B_0));
	
% Species:   id = cam_TT_B_rbp, name = cam_TT_B_rbp, affected by kineticLaw
	xdot(152) = (1/(compartment_cytosol))*(( 1.0 * reaction_rbp_binding_to_cam_TT_B_0) + ( 1.0 * reaction_ca_binding_to_cam_TT_0_rbp_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_TT_B_rbp_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_TT_B_rbp_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_TT_B_rbp_on_site_D));
	
% Species:   id = cam_TT_B_tbp, name = cam_TT_B_tbp, affected by kineticLaw
	xdot(153) = (1/(compartment_cytosol))*(( 1.0 * reaction_tbp_binding_to_cam_TT_B_0) + ( 1.0 * reaction_ca_binding_to_cam_TT_0_tbp_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_TT_B_tbp_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_TT_B_tbp_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_TT_B_tbp_on_site_D));
	
% Species:   id = cam_TT_C_0, name = cam_TT_C_0, affected by kineticLaw
	xdot(154) = (1/(compartment_cytosol))*(( 1.0 * reaction_ca_binding_to_cam_TT_0_0_on_site_C) + (-1.0 * reaction_rbp_binding_to_cam_TT_C_0) + (-1.0 * reaction_tbp_binding_to_cam_TT_C_0) + (-1.0 * reaction_ca_binding_to_cam_TT_C_0_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_TT_C_0_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_TT_C_0_on_site_D) + (-1.0 * reaction_Transition_from_cam_TT_C_0_to_cam_RT_C_0) + (-1.0 * reaction_Transition_from_cam_TT_C_0_to_cam_TR_C_0));
	
% Species:   id = cam_TT_C_rbp, name = cam_TT_C_rbp, affected by kineticLaw
	xdot(155) = (1/(compartment_cytosol))*(( 1.0 * reaction_rbp_binding_to_cam_TT_C_0) + ( 1.0 * reaction_ca_binding_to_cam_TT_0_rbp_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_TT_C_rbp_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_TT_C_rbp_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_TT_C_rbp_on_site_D));
	
% Species:   id = cam_TT_C_tbp, name = cam_TT_C_tbp, affected by kineticLaw
	xdot(156) = (1/(compartment_cytosol))*(( 1.0 * reaction_tbp_binding_to_cam_TT_C_0) + ( 1.0 * reaction_ca_binding_to_cam_TT_0_tbp_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_TT_C_tbp_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_TT_C_tbp_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_TT_C_tbp_on_site_D));
	
% Species:   id = cam_TT_D_0, name = cam_TT_D_0, affected by kineticLaw
	xdot(157) = (1/(compartment_cytosol))*(( 1.0 * reaction_ca_binding_to_cam_TT_0_0_on_site_D) + (-1.0 * reaction_rbp_binding_to_cam_TT_D_0) + (-1.0 * reaction_tbp_binding_to_cam_TT_D_0) + (-1.0 * reaction_ca_binding_to_cam_TT_D_0_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_TT_D_0_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_TT_D_0_on_site_C) + (-1.0 * reaction_Transition_from_cam_TT_D_0_to_cam_RT_D_0) + (-1.0 * reaction_Transition_from_cam_TT_D_0_to_cam_TR_D_0));
	
% Species:   id = cam_TT_D_rbp, name = cam_TT_D_rbp, affected by kineticLaw
	xdot(158) = (1/(compartment_cytosol))*(( 1.0 * reaction_rbp_binding_to_cam_TT_D_0) + ( 1.0 * reaction_ca_binding_to_cam_TT_0_rbp_on_site_D) + (-1.0 * reaction_ca_binding_to_cam_TT_D_rbp_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_TT_D_rbp_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_TT_D_rbp_on_site_C));
	
% Species:   id = cam_TT_D_tbp, name = cam_TT_D_tbp, affected by kineticLaw
	xdot(159) = (1/(compartment_cytosol))*(( 1.0 * reaction_tbp_binding_to_cam_TT_D_0) + ( 1.0 * reaction_ca_binding_to_cam_TT_0_tbp_on_site_D) + (-1.0 * reaction_ca_binding_to_cam_TT_D_tbp_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_TT_D_tbp_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_TT_D_tbp_on_site_C));
	
% Species:   id = cam_TT_AB_0, name = cam_TT_AB_0, affected by kineticLaw
	xdot(160) = (1/(compartment_cytosol))*(( 1.0 * reaction_ca_binding_to_cam_TT_B_0_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_TT_A_0_on_site_B) + (-1.0 * reaction_rbp_binding_to_cam_TT_AB_0) + (-1.0 * reaction_tbp_binding_to_cam_TT_AB_0) + (-1.0 * reaction_ca_binding_to_cam_TT_AB_0_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_TT_AB_0_on_site_D) + (-1.0 * reaction_Transition_from_cam_TT_AB_0_to_cam_RT_AB_0) + (-1.0 * reaction_Transition_from_cam_TT_AB_0_to_cam_TR_AB_0));
	
% Species:   id = cam_TT_AB_rbp, name = cam_TT_AB_rbp, affected by kineticLaw
	xdot(161) = (1/(compartment_cytosol))*(( 1.0 * reaction_rbp_binding_to_cam_TT_AB_0) + ( 1.0 * reaction_ca_binding_to_cam_TT_B_rbp_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_TT_A_rbp_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_TT_AB_rbp_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_TT_AB_rbp_on_site_D));
	
% Species:   id = cam_TT_AB_tbp, name = cam_TT_AB_tbp, affected by kineticLaw
	xdot(162) = (1/(compartment_cytosol))*(( 1.0 * reaction_tbp_binding_to_cam_TT_AB_0) + ( 1.0 * reaction_ca_binding_to_cam_TT_B_tbp_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_TT_A_tbp_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_TT_AB_tbp_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_TT_AB_tbp_on_site_D));
	
% Species:   id = cam_TT_AC_0, name = cam_TT_AC_0, affected by kineticLaw
	xdot(163) = (1/(compartment_cytosol))*(( 1.0 * reaction_ca_binding_to_cam_TT_C_0_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_TT_A_0_on_site_C) + (-1.0 * reaction_rbp_binding_to_cam_TT_AC_0) + (-1.0 * reaction_tbp_binding_to_cam_TT_AC_0) + (-1.0 * reaction_ca_binding_to_cam_TT_AC_0_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_TT_AC_0_on_site_D) + (-1.0 * reaction_Transition_from_cam_TT_AC_0_to_cam_RT_AC_0) + (-1.0 * reaction_Transition_from_cam_TT_AC_0_to_cam_TR_AC_0));
	
% Species:   id = cam_TT_AC_rbp, name = cam_TT_AC_rbp, affected by kineticLaw
	xdot(164) = (1/(compartment_cytosol))*(( 1.0 * reaction_rbp_binding_to_cam_TT_AC_0) + ( 1.0 * reaction_ca_binding_to_cam_TT_C_rbp_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_TT_A_rbp_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_TT_AC_rbp_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_TT_AC_rbp_on_site_D));
	
% Species:   id = cam_TT_AC_tbp, name = cam_TT_AC_tbp, affected by kineticLaw
	xdot(165) = (1/(compartment_cytosol))*(( 1.0 * reaction_tbp_binding_to_cam_TT_AC_0) + ( 1.0 * reaction_ca_binding_to_cam_TT_C_tbp_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_TT_A_tbp_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_TT_AC_tbp_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_TT_AC_tbp_on_site_D));
	
% Species:   id = cam_TT_AD_0, name = cam_TT_AD_0, affected by kineticLaw
	xdot(166) = (1/(compartment_cytosol))*(( 1.0 * reaction_ca_binding_to_cam_TT_D_0_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_TT_A_0_on_site_D) + (-1.0 * reaction_rbp_binding_to_cam_TT_AD_0) + (-1.0 * reaction_tbp_binding_to_cam_TT_AD_0) + (-1.0 * reaction_ca_binding_to_cam_TT_AD_0_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_TT_AD_0_on_site_C) + (-1.0 * reaction_Transition_from_cam_TT_AD_0_to_cam_RT_AD_0) + (-1.0 * reaction_Transition_from_cam_TT_AD_0_to_cam_TR_AD_0));
	
% Species:   id = cam_TT_AD_rbp, name = cam_TT_AD_rbp, affected by kineticLaw
	xdot(167) = (1/(compartment_cytosol))*(( 1.0 * reaction_rbp_binding_to_cam_TT_AD_0) + ( 1.0 * reaction_ca_binding_to_cam_TT_D_rbp_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_TT_A_rbp_on_site_D) + (-1.0 * reaction_ca_binding_to_cam_TT_AD_rbp_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_TT_AD_rbp_on_site_C));
	
% Species:   id = cam_TT_AD_tbp, name = cam_TT_AD_tbp, affected by kineticLaw
	xdot(168) = (1/(compartment_cytosol))*(( 1.0 * reaction_tbp_binding_to_cam_TT_AD_0) + ( 1.0 * reaction_ca_binding_to_cam_TT_D_tbp_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_TT_A_tbp_on_site_D) + (-1.0 * reaction_ca_binding_to_cam_TT_AD_tbp_on_site_B) + (-1.0 * reaction_ca_binding_to_cam_TT_AD_tbp_on_site_C));
	
% Species:   id = cam_TT_BC_0, name = cam_TT_BC_0, affected by kineticLaw
	xdot(169) = (1/(compartment_cytosol))*(( 1.0 * reaction_ca_binding_to_cam_TT_C_0_on_site_B) + ( 1.0 * reaction_ca_binding_to_cam_TT_B_0_on_site_C) + (-1.0 * reaction_rbp_binding_to_cam_TT_BC_0) + (-1.0 * reaction_tbp_binding_to_cam_TT_BC_0) + (-1.0 * reaction_ca_binding_to_cam_TT_BC_0_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_TT_BC_0_on_site_D) + (-1.0 * reaction_Transition_from_cam_TT_BC_0_to_cam_RT_BC_0) + (-1.0 * reaction_Transition_from_cam_TT_BC_0_to_cam_TR_BC_0));
	
% Species:   id = cam_TT_BC_rbp, name = cam_TT_BC_rbp, affected by kineticLaw
	xdot(170) = (1/(compartment_cytosol))*(( 1.0 * reaction_rbp_binding_to_cam_TT_BC_0) + ( 1.0 * reaction_ca_binding_to_cam_TT_C_rbp_on_site_B) + ( 1.0 * reaction_ca_binding_to_cam_TT_B_rbp_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_TT_BC_rbp_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_TT_BC_rbp_on_site_D));
	
% Species:   id = cam_TT_BC_tbp, name = cam_TT_BC_tbp, affected by kineticLaw
	xdot(171) = (1/(compartment_cytosol))*(( 1.0 * reaction_tbp_binding_to_cam_TT_BC_0) + ( 1.0 * reaction_ca_binding_to_cam_TT_C_tbp_on_site_B) + ( 1.0 * reaction_ca_binding_to_cam_TT_B_tbp_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_TT_BC_tbp_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_TT_BC_tbp_on_site_D));
	
% Species:   id = cam_TT_BD_0, name = cam_TT_BD_0, affected by kineticLaw
	xdot(172) = (1/(compartment_cytosol))*(( 1.0 * reaction_ca_binding_to_cam_TT_D_0_on_site_B) + ( 1.0 * reaction_ca_binding_to_cam_TT_B_0_on_site_D) + (-1.0 * reaction_rbp_binding_to_cam_TT_BD_0) + (-1.0 * reaction_tbp_binding_to_cam_TT_BD_0) + (-1.0 * reaction_ca_binding_to_cam_TT_BD_0_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_TT_BD_0_on_site_C) + (-1.0 * reaction_Transition_from_cam_TT_BD_0_to_cam_RT_BD_0) + (-1.0 * reaction_Transition_from_cam_TT_BD_0_to_cam_TR_BD_0));
	
% Species:   id = cam_TT_BD_rbp, name = cam_TT_BD_rbp, affected by kineticLaw
	xdot(173) = (1/(compartment_cytosol))*(( 1.0 * reaction_rbp_binding_to_cam_TT_BD_0) + ( 1.0 * reaction_ca_binding_to_cam_TT_D_rbp_on_site_B) + ( 1.0 * reaction_ca_binding_to_cam_TT_B_rbp_on_site_D) + (-1.0 * reaction_ca_binding_to_cam_TT_BD_rbp_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_TT_BD_rbp_on_site_C));
	
% Species:   id = cam_TT_BD_tbp, name = cam_TT_BD_tbp, affected by kineticLaw
	xdot(174) = (1/(compartment_cytosol))*(( 1.0 * reaction_tbp_binding_to_cam_TT_BD_0) + ( 1.0 * reaction_ca_binding_to_cam_TT_D_tbp_on_site_B) + ( 1.0 * reaction_ca_binding_to_cam_TT_B_tbp_on_site_D) + (-1.0 * reaction_ca_binding_to_cam_TT_BD_tbp_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_TT_BD_tbp_on_site_C));
	
% Species:   id = cam_TT_CD_0, name = cam_TT_CD_0, affected by kineticLaw
	xdot(175) = (1/(compartment_cytosol))*(( 1.0 * reaction_ca_binding_to_cam_TT_D_0_on_site_C) + ( 1.0 * reaction_ca_binding_to_cam_TT_C_0_on_site_D) + (-1.0 * reaction_rbp_binding_to_cam_TT_CD_0) + (-1.0 * reaction_tbp_binding_to_cam_TT_CD_0) + (-1.0 * reaction_ca_binding_to_cam_TT_CD_0_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_TT_CD_0_on_site_B) + (-1.0 * reaction_Transition_from_cam_TT_CD_0_to_cam_RT_CD_0) + (-1.0 * reaction_Transition_from_cam_TT_CD_0_to_cam_TR_CD_0));
	
% Species:   id = cam_TT_CD_rbp, name = cam_TT_CD_rbp, affected by kineticLaw
	xdot(176) = (1/(compartment_cytosol))*(( 1.0 * reaction_rbp_binding_to_cam_TT_CD_0) + ( 1.0 * reaction_ca_binding_to_cam_TT_D_rbp_on_site_C) + ( 1.0 * reaction_ca_binding_to_cam_TT_C_rbp_on_site_D) + (-1.0 * reaction_ca_binding_to_cam_TT_CD_rbp_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_TT_CD_rbp_on_site_B));
	
% Species:   id = cam_TT_CD_tbp, name = cam_TT_CD_tbp, affected by kineticLaw
	xdot(177) = (1/(compartment_cytosol))*(( 1.0 * reaction_tbp_binding_to_cam_TT_CD_0) + ( 1.0 * reaction_ca_binding_to_cam_TT_D_tbp_on_site_C) + ( 1.0 * reaction_ca_binding_to_cam_TT_C_tbp_on_site_D) + (-1.0 * reaction_ca_binding_to_cam_TT_CD_tbp_on_site_A) + (-1.0 * reaction_ca_binding_to_cam_TT_CD_tbp_on_site_B));
	
% Species:   id = cam_TT_ABC_0, name = cam_TT_ABC_0, affected by kineticLaw
	xdot(178) = (1/(compartment_cytosol))*(( 1.0 * reaction_ca_binding_to_cam_TT_BC_0_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_TT_AC_0_on_site_B) + ( 1.0 * reaction_ca_binding_to_cam_TT_AB_0_on_site_C) + (-1.0 * reaction_rbp_binding_to_cam_TT_ABC_0) + (-1.0 * reaction_tbp_binding_to_cam_TT_ABC_0) + (-1.0 * reaction_ca_binding_to_cam_TT_ABC_0_on_site_D) + (-1.0 * reaction_Transition_from_cam_TT_ABC_0_to_cam_RT_ABC_0) + (-1.0 * reaction_Transition_from_cam_TT_ABC_0_to_cam_TR_ABC_0));
	
% Species:   id = cam_TT_ABC_rbp, name = cam_TT_ABC_rbp, affected by kineticLaw
	xdot(179) = (1/(compartment_cytosol))*(( 1.0 * reaction_rbp_binding_to_cam_TT_ABC_0) + ( 1.0 * reaction_ca_binding_to_cam_TT_BC_rbp_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_TT_AC_rbp_on_site_B) + ( 1.0 * reaction_ca_binding_to_cam_TT_AB_rbp_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_TT_ABC_rbp_on_site_D));
	
% Species:   id = cam_TT_ABC_tbp, name = cam_TT_ABC_tbp, affected by kineticLaw
	xdot(180) = (1/(compartment_cytosol))*(( 1.0 * reaction_tbp_binding_to_cam_TT_ABC_0) + ( 1.0 * reaction_ca_binding_to_cam_TT_BC_tbp_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_TT_AC_tbp_on_site_B) + ( 1.0 * reaction_ca_binding_to_cam_TT_AB_tbp_on_site_C) + (-1.0 * reaction_ca_binding_to_cam_TT_ABC_tbp_on_site_D));
	
% Species:   id = cam_TT_ABD_0, name = cam_TT_ABD_0, affected by kineticLaw
	xdot(181) = (1/(compartment_cytosol))*(( 1.0 * reaction_ca_binding_to_cam_TT_BD_0_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_TT_AD_0_on_site_B) + ( 1.0 * reaction_ca_binding_to_cam_TT_AB_0_on_site_D) + (-1.0 * reaction_rbp_binding_to_cam_TT_ABD_0) + (-1.0 * reaction_tbp_binding_to_cam_TT_ABD_0) + (-1.0 * reaction_ca_binding_to_cam_TT_ABD_0_on_site_C) + (-1.0 * reaction_Transition_from_cam_TT_ABD_0_to_cam_RT_ABD_0) + (-1.0 * reaction_Transition_from_cam_TT_ABD_0_to_cam_TR_ABD_0));
	
% Species:   id = cam_TT_ABD_rbp, name = cam_TT_ABD_rbp, affected by kineticLaw
	xdot(182) = (1/(compartment_cytosol))*(( 1.0 * reaction_rbp_binding_to_cam_TT_ABD_0) + ( 1.0 * reaction_ca_binding_to_cam_TT_BD_rbp_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_TT_AD_rbp_on_site_B) + ( 1.0 * reaction_ca_binding_to_cam_TT_AB_rbp_on_site_D) + (-1.0 * reaction_ca_binding_to_cam_TT_ABD_rbp_on_site_C));
	
% Species:   id = cam_TT_ABD_tbp, name = cam_TT_ABD_tbp, affected by kineticLaw
	xdot(183) = (1/(compartment_cytosol))*(( 1.0 * reaction_tbp_binding_to_cam_TT_ABD_0) + ( 1.0 * reaction_ca_binding_to_cam_TT_BD_tbp_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_TT_AD_tbp_on_site_B) + ( 1.0 * reaction_ca_binding_to_cam_TT_AB_tbp_on_site_D) + (-1.0 * reaction_ca_binding_to_cam_TT_ABD_tbp_on_site_C));
	
% Species:   id = cam_TT_ACD_0, name = cam_TT_ACD_0, affected by kineticLaw
	xdot(184) = (1/(compartment_cytosol))*(( 1.0 * reaction_ca_binding_to_cam_TT_CD_0_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_TT_AD_0_on_site_C) + ( 1.0 * reaction_ca_binding_to_cam_TT_AC_0_on_site_D) + (-1.0 * reaction_rbp_binding_to_cam_TT_ACD_0) + (-1.0 * reaction_tbp_binding_to_cam_TT_ACD_0) + (-1.0 * reaction_ca_binding_to_cam_TT_ACD_0_on_site_B) + (-1.0 * reaction_Transition_from_cam_TT_ACD_0_to_cam_RT_ACD_0) + (-1.0 * reaction_Transition_from_cam_TT_ACD_0_to_cam_TR_ACD_0));
	
% Species:   id = cam_TT_ACD_rbp, name = cam_TT_ACD_rbp, affected by kineticLaw
	xdot(185) = (1/(compartment_cytosol))*(( 1.0 * reaction_rbp_binding_to_cam_TT_ACD_0) + ( 1.0 * reaction_ca_binding_to_cam_TT_CD_rbp_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_TT_AD_rbp_on_site_C) + ( 1.0 * reaction_ca_binding_to_cam_TT_AC_rbp_on_site_D) + (-1.0 * reaction_ca_binding_to_cam_TT_ACD_rbp_on_site_B));
	
% Species:   id = cam_TT_ACD_tbp, name = cam_TT_ACD_tbp, affected by kineticLaw
	xdot(186) = (1/(compartment_cytosol))*(( 1.0 * reaction_tbp_binding_to_cam_TT_ACD_0) + ( 1.0 * reaction_ca_binding_to_cam_TT_CD_tbp_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_TT_AD_tbp_on_site_C) + ( 1.0 * reaction_ca_binding_to_cam_TT_AC_tbp_on_site_D) + (-1.0 * reaction_ca_binding_to_cam_TT_ACD_tbp_on_site_B));
	
% Species:   id = cam_TT_BCD_0, name = cam_TT_BCD_0, affected by kineticLaw
	xdot(187) = (1/(compartment_cytosol))*(( 1.0 * reaction_ca_binding_to_cam_TT_CD_0_on_site_B) + ( 1.0 * reaction_ca_binding_to_cam_TT_BD_0_on_site_C) + ( 1.0 * reaction_ca_binding_to_cam_TT_BC_0_on_site_D) + (-1.0 * reaction_rbp_binding_to_cam_TT_BCD_0) + (-1.0 * reaction_tbp_binding_to_cam_TT_BCD_0) + (-1.0 * reaction_ca_binding_to_cam_TT_BCD_0_on_site_A) + (-1.0 * reaction_Transition_from_cam_TT_BCD_0_to_cam_RT_BCD_0) + (-1.0 * reaction_Transition_from_cam_TT_BCD_0_to_cam_TR_BCD_0));
	
% Species:   id = cam_TT_BCD_rbp, name = cam_TT_BCD_rbp, affected by kineticLaw
	xdot(188) = (1/(compartment_cytosol))*(( 1.0 * reaction_rbp_binding_to_cam_TT_BCD_0) + ( 1.0 * reaction_ca_binding_to_cam_TT_CD_rbp_on_site_B) + ( 1.0 * reaction_ca_binding_to_cam_TT_BD_rbp_on_site_C) + ( 1.0 * reaction_ca_binding_to_cam_TT_BC_rbp_on_site_D) + (-1.0 * reaction_ca_binding_to_cam_TT_BCD_rbp_on_site_A));
	
% Species:   id = cam_TT_BCD_tbp, name = cam_TT_BCD_tbp, affected by kineticLaw
	xdot(189) = (1/(compartment_cytosol))*(( 1.0 * reaction_tbp_binding_to_cam_TT_BCD_0) + ( 1.0 * reaction_ca_binding_to_cam_TT_CD_tbp_on_site_B) + ( 1.0 * reaction_ca_binding_to_cam_TT_BD_tbp_on_site_C) + ( 1.0 * reaction_ca_binding_to_cam_TT_BC_tbp_on_site_D) + (-1.0 * reaction_ca_binding_to_cam_TT_BCD_tbp_on_site_A));
	
% Species:   id = cam_TT_ABCD_0, name = cam_TT_ABCD_0, affected by kineticLaw
	xdot(190) = (1/(compartment_cytosol))*(( 1.0 * reaction_ca_binding_to_cam_TT_BCD_0_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_TT_ACD_0_on_site_B) + ( 1.0 * reaction_ca_binding_to_cam_TT_ABD_0_on_site_C) + ( 1.0 * reaction_ca_binding_to_cam_TT_ABC_0_on_site_D) + (-1.0 * reaction_rbp_binding_to_cam_TT_ABCD_0) + (-1.0 * reaction_tbp_binding_to_cam_TT_ABCD_0) + (-1.0 * reaction_Transition_from_cam_TT_ABCD_0_to_cam_RT_ABCD_0) + (-1.0 * reaction_Transition_from_cam_TT_ABCD_0_to_cam_TR_ABCD_0));
	
% Species:   id = cam_TT_ABCD_rbp, name = cam_TT_ABCD_rbp, affected by kineticLaw
	xdot(191) = (1/(compartment_cytosol))*(( 1.0 * reaction_rbp_binding_to_cam_TT_ABCD_0) + ( 1.0 * reaction_ca_binding_to_cam_TT_BCD_rbp_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_TT_ACD_rbp_on_site_B) + ( 1.0 * reaction_ca_binding_to_cam_TT_ABD_rbp_on_site_C) + ( 1.0 * reaction_ca_binding_to_cam_TT_ABC_rbp_on_site_D));
	
% Species:   id = cam_TT_ABCD_tbp, name = cam_TT_ABCD_tbp, affected by kineticLaw
	xdot(192) = (1/(compartment_cytosol))*(( 1.0 * reaction_tbp_binding_to_cam_TT_ABCD_0) + ( 1.0 * reaction_ca_binding_to_cam_TT_BCD_tbp_on_site_A) + ( 1.0 * reaction_ca_binding_to_cam_TT_ACD_tbp_on_site_B) + ( 1.0 * reaction_ca_binding_to_cam_TT_ABD_tbp_on_site_C) + ( 1.0 * reaction_ca_binding_to_cam_TT_ABC_tbp_on_site_D));
	
% Species:   id = rbp, name = rbp, affected by kineticLaw
	xdot(193) = (1/(compartment_cytosol))*((-1.0 * reaction_rbp_binding_to_cam_RR_0_0) + (-1.0 * reaction_rbp_binding_to_cam_RR_A_0) + (-1.0 * reaction_rbp_binding_to_cam_RR_B_0) + (-1.0 * reaction_rbp_binding_to_cam_RR_C_0) + (-1.0 * reaction_rbp_binding_to_cam_RR_D_0) + (-1.0 * reaction_rbp_binding_to_cam_RR_AB_0) + (-1.0 * reaction_rbp_binding_to_cam_RR_AC_0) + (-1.0 * reaction_rbp_binding_to_cam_RR_AD_0) + (-1.0 * reaction_rbp_binding_to_cam_RR_BC_0) + (-1.0 * reaction_rbp_binding_to_cam_RR_BD_0) + (-1.0 * reaction_rbp_binding_to_cam_RR_CD_0) + (-1.0 * reaction_rbp_binding_to_cam_RR_ABC_0) + (-1.0 * reaction_rbp_binding_to_cam_RR_ABD_0) + (-1.0 * reaction_rbp_binding_to_cam_RR_ACD_0) + (-1.0 * reaction_rbp_binding_to_cam_RR_BCD_0) + (-1.0 * reaction_rbp_binding_to_cam_RR_ABCD_0) + (-1.0 * reaction_rbp_binding_to_cam_RT_0_0) + (-1.0 * reaction_rbp_binding_to_cam_RT_A_0) + (-1.0 * reaction_rbp_binding_to_cam_RT_B_0) + (-1.0 * reaction_rbp_binding_to_cam_RT_C_0) + (-1.0 * reaction_rbp_binding_to_cam_RT_D_0) + (-1.0 * reaction_rbp_binding_to_cam_RT_AB_0) + (-1.0 * reaction_rbp_binding_to_cam_RT_AC_0) + (-1.0 * reaction_rbp_binding_to_cam_RT_AD_0) + (-1.0 * reaction_rbp_binding_to_cam_RT_BC_0) + (-1.0 * reaction_rbp_binding_to_cam_RT_BD_0) + (-1.0 * reaction_rbp_binding_to_cam_RT_CD_0) + (-1.0 * reaction_rbp_binding_to_cam_RT_ABC_0) + (-1.0 * reaction_rbp_binding_to_cam_RT_ABD_0) + (-1.0 * reaction_rbp_binding_to_cam_RT_ACD_0) + (-1.0 * reaction_rbp_binding_to_cam_RT_BCD_0) + (-1.0 * reaction_rbp_binding_to_cam_RT_ABCD_0) + (-1.0 * reaction_rbp_binding_to_cam_TR_0_0) + (-1.0 * reaction_rbp_binding_to_cam_TR_A_0) + (-1.0 * reaction_rbp_binding_to_cam_TR_B_0) + (-1.0 * reaction_rbp_binding_to_cam_TR_C_0) + (-1.0 * reaction_rbp_binding_to_cam_TR_D_0) + (-1.0 * reaction_rbp_binding_to_cam_TR_AB_0) + (-1.0 * reaction_rbp_binding_to_cam_TR_AC_0) + (-1.0 * reaction_rbp_binding_to_cam_TR_AD_0) + (-1.0 * reaction_rbp_binding_to_cam_TR_BC_0) + (-1.0 * reaction_rbp_binding_to_cam_TR_BD_0) + (-1.0 * reaction_rbp_binding_to_cam_TR_CD_0) + (-1.0 * reaction_rbp_binding_to_cam_TR_ABC_0) + (-1.0 * reaction_rbp_binding_to_cam_TR_ABD_0) + (-1.0 * reaction_rbp_binding_to_cam_TR_ACD_0) + (-1.0 * reaction_rbp_binding_to_cam_TR_BCD_0) + (-1.0 * reaction_rbp_binding_to_cam_TR_ABCD_0) + (-1.0 * reaction_rbp_binding_to_cam_TT_0_0) + (-1.0 * reaction_rbp_binding_to_cam_TT_A_0) + (-1.0 * reaction_rbp_binding_to_cam_TT_B_0) + (-1.0 * reaction_rbp_binding_to_cam_TT_C_0) + (-1.0 * reaction_rbp_binding_to_cam_TT_D_0) + (-1.0 * reaction_rbp_binding_to_cam_TT_AB_0) + (-1.0 * reaction_rbp_binding_to_cam_TT_AC_0) + (-1.0 * reaction_rbp_binding_to_cam_TT_AD_0) + (-1.0 * reaction_rbp_binding_to_cam_TT_BC_0) + (-1.0 * reaction_rbp_binding_to_cam_TT_BD_0) + (-1.0 * reaction_rbp_binding_to_cam_TT_CD_0) + (-1.0 * reaction_rbp_binding_to_cam_TT_ABC_0) + (-1.0 * reaction_rbp_binding_to_cam_TT_ABD_0) + (-1.0 * reaction_rbp_binding_to_cam_TT_ACD_0) + (-1.0 * reaction_rbp_binding_to_cam_TT_BCD_0) + (-1.0 * reaction_rbp_binding_to_cam_TT_ABCD_0));
	
% Species:   id = tbp, name = tbp, affected by kineticLaw
	xdot(194) = (1/(compartment_cytosol))*((-1.0 * reaction_tbp_binding_to_cam_RR_0_0) + (-1.0 * reaction_tbp_binding_to_cam_RR_A_0) + (-1.0 * reaction_tbp_binding_to_cam_RR_B_0) + (-1.0 * reaction_tbp_binding_to_cam_RR_C_0) + (-1.0 * reaction_tbp_binding_to_cam_RR_D_0) + (-1.0 * reaction_tbp_binding_to_cam_RR_AB_0) + (-1.0 * reaction_tbp_binding_to_cam_RR_AC_0) + (-1.0 * reaction_tbp_binding_to_cam_RR_AD_0) + (-1.0 * reaction_tbp_binding_to_cam_RR_BC_0) + (-1.0 * reaction_tbp_binding_to_cam_RR_BD_0) + (-1.0 * reaction_tbp_binding_to_cam_RR_CD_0) + (-1.0 * reaction_tbp_binding_to_cam_RR_ABC_0) + (-1.0 * reaction_tbp_binding_to_cam_RR_ABD_0) + (-1.0 * reaction_tbp_binding_to_cam_RR_ACD_0) + (-1.0 * reaction_tbp_binding_to_cam_RR_BCD_0) + (-1.0 * reaction_tbp_binding_to_cam_RR_ABCD_0) + (-1.0 * reaction_tbp_binding_to_cam_RT_0_0) + (-1.0 * reaction_tbp_binding_to_cam_RT_A_0) + (-1.0 * reaction_tbp_binding_to_cam_RT_B_0) + (-1.0 * reaction_tbp_binding_to_cam_RT_C_0) + (-1.0 * reaction_tbp_binding_to_cam_RT_D_0) + (-1.0 * reaction_tbp_binding_to_cam_RT_AB_0) + (-1.0 * reaction_tbp_binding_to_cam_RT_AC_0) + (-1.0 * reaction_tbp_binding_to_cam_RT_AD_0) + (-1.0 * reaction_tbp_binding_to_cam_RT_BC_0) + (-1.0 * reaction_tbp_binding_to_cam_RT_BD_0) + (-1.0 * reaction_tbp_binding_to_cam_RT_CD_0) + (-1.0 * reaction_tbp_binding_to_cam_RT_ABC_0) + (-1.0 * reaction_tbp_binding_to_cam_RT_ABD_0) + (-1.0 * reaction_tbp_binding_to_cam_RT_ACD_0) + (-1.0 * reaction_tbp_binding_to_cam_RT_BCD_0) + (-1.0 * reaction_tbp_binding_to_cam_RT_ABCD_0) + (-1.0 * reaction_tbp_binding_to_cam_TR_0_0) + (-1.0 * reaction_tbp_binding_to_cam_TR_A_0) + (-1.0 * reaction_tbp_binding_to_cam_TR_B_0) + (-1.0 * reaction_tbp_binding_to_cam_TR_C_0) + (-1.0 * reaction_tbp_binding_to_cam_TR_D_0) + (-1.0 * reaction_tbp_binding_to_cam_TR_AB_0) + (-1.0 * reaction_tbp_binding_to_cam_TR_AC_0) + (-1.0 * reaction_tbp_binding_to_cam_TR_AD_0) + (-1.0 * reaction_tbp_binding_to_cam_TR_BC_0) + (-1.0 * reaction_tbp_binding_to_cam_TR_BD_0) + (-1.0 * reaction_tbp_binding_to_cam_TR_CD_0) + (-1.0 * reaction_tbp_binding_to_cam_TR_ABC_0) + (-1.0 * reaction_tbp_binding_to_cam_TR_ABD_0) + (-1.0 * reaction_tbp_binding_to_cam_TR_ACD_0) + (-1.0 * reaction_tbp_binding_to_cam_TR_BCD_0) + (-1.0 * reaction_tbp_binding_to_cam_TR_ABCD_0) + (-1.0 * reaction_tbp_binding_to_cam_TT_0_0) + (-1.0 * reaction_tbp_binding_to_cam_TT_A_0) + (-1.0 * reaction_tbp_binding_to_cam_TT_B_0) + (-1.0 * reaction_tbp_binding_to_cam_TT_C_0) + (-1.0 * reaction_tbp_binding_to_cam_TT_D_0) + (-1.0 * reaction_tbp_binding_to_cam_TT_AB_0) + (-1.0 * reaction_tbp_binding_to_cam_TT_AC_0) + (-1.0 * reaction_tbp_binding_to_cam_TT_AD_0) + (-1.0 * reaction_tbp_binding_to_cam_TT_BC_0) + (-1.0 * reaction_tbp_binding_to_cam_TT_BD_0) + (-1.0 * reaction_tbp_binding_to_cam_TT_CD_0) + (-1.0 * reaction_tbp_binding_to_cam_TT_ABC_0) + (-1.0 * reaction_tbp_binding_to_cam_TT_ABD_0) + (-1.0 * reaction_tbp_binding_to_cam_TT_ACD_0) + (-1.0 * reaction_tbp_binding_to_cam_TT_BCD_0) + (-1.0 * reaction_tbp_binding_to_cam_TT_ABCD_0));
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


