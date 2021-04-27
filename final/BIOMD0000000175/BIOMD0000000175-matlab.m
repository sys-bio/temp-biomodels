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
% Model name = Birtwistle2007_ErbB_Signalling
%
% is http://identifiers.org/biomodels.db/MODEL5563731079
% is http://identifiers.org/biomodels.db/BIOMD0000000175
% isDescribedBy http://identifiers.org/pubmed/18004277
%


function main()
%Initial conditions vector
	x0=zeros(120,1);
	x0(1) = 274.0;
	x0(2) = 158.0;
	x0(3) = 294.0;
	x0(4) = 399.0;
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
	x0(20) = 82.4;
	x0(21) = 11.5;
	x0(22) = 46.4;
	x0(23) = 93.6;
	x0(24) = 82.3;
	x0(25) = 43.1;
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
	x0(63) = 197.0;
	x0(64) = 0.0;
	x0(65) = 444.0;
	x0(66) = 95.7;
	x0(67) = 0.0;
	x0(68) = 0.0;
	x0(69) = 743.0;
	x0(70) = 0.0;
	x0(71) = 772.0;
	x0(72) = 0.0;
	x0(73) = 750.0;
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
	x0(93) = 500.0;
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
	x0(110) = 10.0;
	x0(111) = 10.0;
	x0(112) = 0.0;
	x0(113) = 0.0;
	x0(114) = 0.0;
	x0(115) = 0.0;
	x0(116) = 0.0;
	x0(117) = 0.0;
	x0(118) = 35.0;
	x0(119) = 0;
	x0(120) = 0;


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

% Compartment: id = membrane, name = membrane, constant
	compartment_membrane=1.0;
% Parameter:   id =  ErbB1_Abund, name = ErbB1_Abund
	global_par_ErbB1_Abund=274.0;
% Parameter:   id =  ErbB2_Abund, name = ErbB2_Abund
	global_par_ErbB2_Abund=158.0;
% Parameter:   id =  ErbB3_Abund, name = ErbB3_Abund
	global_par_ErbB3_Abund=294.0;
% Parameter:   id =  ErbB4_Abund, name = ErbB4_Abund
	global_par_ErbB4_Abund=399.0;
% Parameter:   id =  Grb2_Abund, name = Grb2_Abund
	global_par_Grb2_Abund=82.4;
% Parameter:   id =  Shc_Abund, name = Shc_Abund
	global_par_Shc_Abund=11.5;
% Parameter:   id =  PI3K_Abund, name = PI3K_Abund
	global_par_PI3K_Abund=46.4;
% Parameter:   id =  RasGAP_Abund, name = RasGAP_Abund
	global_par_RasGAP_Abund=93.6;
% Parameter:   id =  SOS_Abund, name = SOS_Abund
	global_par_SOS_Abund=82.3;
% Parameter:   id =  Gab1_Abund, name = Gab1_Abund
	global_par_Gab1_Abund=43.1;
% Parameter:   id =  PIP2_Abund, name = PIP2_Abund
	global_par_PIP2_Abund=197.0;
% Parameter:   id =  Akt_Abund, name = Akt_Abund
	global_par_Akt_Abund=444.2921;
% Parameter:   id =  Ras_Abund, name = Ras_Abund
	global_par_Ras_Abund=95.7;
% Parameter:   id =  Raf_Abund, name = Raf_Abund
	global_par_Raf_Abund=743.0;
% Parameter:   id =  MEK_Abund, name = MEK_Abund
	global_par_MEK_Abund=772.0;
% Parameter:   id =  ERK_Abund, name = ERK_Abund
	global_par_ERK_Abund=749.9716;
% Parameter:   id =  VmaxPY, name = VmaxPY
	global_par_VmaxPY=223.8776;
% Parameter:   id =  KmPY, name = KmPY
	global_par_KmPY=486.1398;
% Parameter:   id =  kdeg, name = kdeg
	global_par_kdeg=0.0259;
% Parameter:   id =  kf47, name = kf47
	global_par_kf47=24.6048;
% Parameter:   id =  Vmaxr47, name = Vmaxr47
	global_par_Vmaxr47=590.5058;
% Parameter:   id =  Kmf47, name = Kmf47
	global_par_Kmf47=698.6022;
% Parameter:   id =  Kmr47, name = Kmr47
	global_par_Kmr47=483.8622;
% Parameter:   id =  kf48, name = kf48
	global_par_kf48=16.833;
% Parameter:   id =  Kmf48, name = Kmf48
	global_par_Kmf48=715.5688;
% Parameter:   id =  Kmr48, name = Kmr48
	global_par_Kmr48=324.9294;
% Parameter:   id =  PTEN, name = PTEN
	global_par_PTEN=693.5786;
% Parameter:   id =  kf49, name = kf49
	global_par_kf49=44.3501;
% Parameter:   id =  kr49, name = kr49
	global_par_kr49=552.6746;
% Parameter:   id =  Kmf49, name = Kmf49
	global_par_Kmf49=343.2483;
% Parameter:   id =  Kmr49, name = Kmr49
	global_par_Kmr49=753.1667;
% Parameter:   id =  Kmr49b, name = Kmr49b
	global_par_Kmr49b=381.2208;
% Parameter:   id =  kr49b, name = kr49b
	global_par_kr49b=640.8212;
% Parameter:   id =  kf51, name = kf51
	global_par_kf51=3.6515;
% Parameter:   id =  kr51, name = kr51
	global_par_kr51=0.0;
% Parameter:   id =  Vmaxr51, name = Vmaxr51
	global_par_Vmaxr51=16.737;
% Parameter:   id =  Kmf51, name = Kmf51
	global_par_Kmf51=599.7076;
% Parameter:   id =  Kmr51, name = Kmr51
	global_par_Kmr51=346.4779;
% Parameter:   id =  Kmrb51, name = Kmrb51
	global_par_Kmrb51=988.4496;
% Parameter:   id =  kf52, name = kf52
	global_par_kf52=0.7745;
% Parameter:   id =  Vmaxr52, name = Vmaxr52
	global_par_Vmaxr52=199.2773;
% Parameter:   id =  Kmf52, name = Kmf52
	global_par_Kmf52=545.4408;
% Parameter:   id =  Kmr52, name = Kmr52
	global_par_Kmr52=675.2994;
% Parameter:   id =  kf53, name = kf53
	global_par_kf53=0.6094;
% Parameter:   id =  Vmaxr53, name = Vmaxr53
	global_par_Vmaxr53=59.2314;
% Parameter:   id =  Kmf53, name = Kmf53
	global_par_Kmf53=812.254;
% Parameter:   id =  Kmr53, name = Kmr53
	global_par_Kmr53=944.7692;
% Parameter:   id =  kf54, name = kf54
	global_par_kf54=0.0538;
% Parameter:   id =  Vmaxr54, name = Vmaxr54
	global_par_Vmaxr54=588.2671;
% Parameter:   id =  Kmf54, name = Kmf54
	global_par_Kmf54=457.9645;
% Parameter:   id =  Kmr54, name = Kmr54
	global_par_Kmr54=336.183;
% Parameter:   id =  kf55, name = kf55
	global_par_kf55=0.2256;
% Parameter:   id =  Vmaxr55, name = Vmaxr55
	global_par_Vmaxr55=646.9003;
% Parameter:   id =  Kmf55, name = Kmf55
	global_par_Kmf55=460.9446;
% Parameter:   id =  Kmr55, name = Kmr55
	global_par_Kmr55=643.9247;
% Parameter:   id =  kf38, name = kf38
	global_par_kf38=279.9929;
% Parameter:   id =  kf39, name = kf39
	global_par_kf39=385.7428;
% Parameter:   id =  kf50, name = kf50
	global_par_kf50=389.1061;
% Parameter:   id =  a98, name = a98
	global_par_a98=0.0849;
% Parameter:   id =  b98, name = b98
	global_par_b98=0.1833;
% Parameter:   id =  koff46, name = koff46
	global_par_koff46=0.5194;
% Parameter:   id =  EGF_off, name = EGF_off
	global_par_EGF_off=0.0175;
% Parameter:   id =  HRGoff_3, name = HRGoff_3
	global_par_HRGoff_3=9.0E-4;
% Parameter:   id =  HRGoff_4, name = HRGoff_4
	global_par_HRGoff_4=0.0973;
% Parameter:   id =  koff4, name = koff4
	global_par_koff4=0.1717;
% Parameter:   id =  koff5, name = koff5
	global_par_koff5=4.3985;
% Parameter:   id =  koff6, name = koff6
	global_par_koff6=2.6619;
% Parameter:   id =  koff7, name = koff7
	global_par_koff7=8.0557;
% Parameter:   id =  koff8, name = koff8
	global_par_koff8=9.1034;
% Parameter:   id =  koff9, name = koff9
	global_par_koff9=5.5425;
% Parameter:   id =  koff57, name = koff57
	global_par_koff57=0.4526;
% Parameter:   id =  koff16, name = koff16
	global_par_koff16=0.5737;
% Parameter:   id =  koff17, name = koff17
	global_par_koff17=4.6874;
% Parameter:   id =  koff18, name = koff18
	global_par_koff18=2.2768;
% Parameter:   id =  koff19, name = koff19
	global_par_koff19=2.3361;
% Parameter:   id =  koff20, name = koff20
	global_par_koff20=0.6761;
% Parameter:   id =  koff21, name = koff21
	global_par_koff21=4.7291;
% Parameter:   id =  koff22, name = koff22
	global_par_koff22=3.6962;
% Parameter:   id =  koff23, name = koff23
	global_par_koff23=2.3619;
% Parameter:   id =  koff24, name = koff24
	global_par_koff24=4.4226;
% Parameter:   id =  koff25, name = koff25
	global_par_koff25=2.225;
% Parameter:   id =  koff26, name = koff26
	global_par_koff26=0.0103;
% Parameter:   id =  koff27, name = koff27
	global_par_koff27=1.8922;
% Parameter:   id =  koff28, name = koff28
	global_par_koff28=4.6432;
% Parameter:   id =  koff29, name = koff29
	global_par_koff29=2.0148;
% Parameter:   id =  koff30, name = koff30
	global_par_koff30=4.9936;
% Parameter:   id =  koff31, name = koff31
	global_par_koff31=1.2204;
% Parameter:   id =  koff32, name = koff32
	global_par_koff32=3.8752;
% Parameter:   id =  koff33, name = koff33
	global_par_koff33=1.2817;
% Parameter:   id =  koff34, name = koff34
	global_par_koff34=3.2036;
% Parameter:   id =  koff35, name = koff35
	global_par_koff35=1.8696;
% Parameter:   id =  koff36, name = koff36
	global_par_koff36=1.2567;
% Parameter:   id =  koff37, name = koff37
	global_par_koff37=0.4059;
% Parameter:   id =  koff65, name = koff65
	global_par_koff65=0.1185;
% Parameter:   id =  koff66, name = koff66
	global_par_koff66=2.2988;
% Parameter:   id =  koff67, name = koff67
	global_par_koff67=1.6142;
% Parameter:   id =  koff40, name = koff40
	global_par_koff40=3.1051;
% Parameter:   id =  koff41, name = koff41
	global_par_koff41=7.0487;
% Parameter:   id =  koff42, name = koff42
	global_par_koff42=3.5195;
% Parameter:   id =  koff43, name = koff43
	global_par_koff43=0.5441;
% Parameter:   id =  koff44, name = koff44
	global_par_koff44=0.4265;
% Parameter:   id =  koff45, name = koff45
	global_par_koff45=3.9967;
% Parameter:   id =  koff58, name = koff58
	global_par_koff58=6.3059;
% Parameter:   id =  koff59, name = koff59
	global_par_koff59=9.172;
% Parameter:   id =  koff68, name = koff68
	global_par_koff68=2.8871;
% Parameter:   id =  PTP1B_Abund, name = PTP1B_Abund
	global_par_PTP1B_Abund=500.0;
% Parameter:   id =  kPTP10, name = kPTP10
	global_par_kPTP10=29.8531;
% Parameter:   id =  kPTP11, name = kPTP11
	global_par_kPTP11=78.204;
% Parameter:   id =  kPTP12, name = kPTP12
	global_par_kPTP12=11.4211;
% Parameter:   id =  kPTP13, name = kPTP13
	global_par_kPTP13=55.2104;
% Parameter:   id =  kPTP14, name = kPTP14
	global_par_kPTP14=57.7506;
% Parameter:   id =  kPTP15, name = kPTP15
	global_par_kPTP15=60.2628;
% Parameter:   id =  kPTP63, name = kPTP63
	global_par_kPTP63=7.4766;
% Parameter:   id =  kPTP64, name = kPTP64
	global_par_kPTP64=48.6335;
% Parameter:   id =  koff73, name = koff73
	global_par_koff73=3.0048;
% Parameter:   id =  koff74, name = koff74
	global_par_koff74=1.2496;
% Parameter:   id =  koff75, name = koff75
	global_par_koff75=1.4323;
% Parameter:   id =  koff76, name = koff76
	global_par_koff76=2.1542;
% Parameter:   id =  koff77, name = koff77
	global_par_koff77=1.2237;
% Parameter:   id =  koff78, name = koff78
	global_par_koff78=0.2007;
% Parameter:   id =  koff79, name = koff79
	global_par_koff79=1.1852;
% Parameter:   id =  koff80, name = koff80
	global_par_koff80=2.9373;
% Parameter:   id =  kPTP38, name = kPTP38
	global_par_kPTP38=83.4465;
% Parameter:   id =  kPTP39, name = kPTP39
	global_par_kPTP39=79.6132;
% Parameter:   id =  koff88, name = koff88
	global_par_koff88=3.9255;
% Parameter:   id =  kPTP50, name = kPTP50
	global_par_kPTP50=96.5716;
% Parameter:   id =  kf81, name = kf81
	global_par_kf81=1.361;
% Parameter:   id =  Vmaxr81, name = Vmaxr81
	global_par_Vmaxr81=242.6034;
% Parameter:   id =  Kmf81, name = Kmf81
	global_par_Kmf81=485.2626;
% Parameter:   id =  Kmr81, name = Kmr81
	global_par_Kmr81=323.4012;
% Parameter:   id =  kf82, name = kf82
	global_par_kf82=6.9987;
% Parameter:   id =  Vmaxr82, name = Vmaxr82
	global_par_Vmaxr82=398.1931;
% Parameter:   id =  Kmf82, name = Kmf82
	global_par_Kmf82=781.4374;
% Parameter:   id =  Kmr82, name = Kmr82
	global_par_Kmr82=595.8395;
% Parameter:   id =  kf83, name = kf83
	global_par_kf83=1.7628;
% Parameter:   id =  Vmaxr83, name = Vmaxr83
	global_par_Vmaxr83=534.0531;
% Parameter:   id =  Kmf83, name = Kmf83
	global_par_Kmf83=609.4766;
% Parameter:   id =  Kmr83, name = Kmr83
	global_par_Kmr83=653.5184;
% Parameter:   id =  kf84, name = kf84
	global_par_kf84=4.6894;
% Parameter:   id =  Vmaxr84, name = Vmaxr84
	global_par_Vmaxr84=634.1626;
% Parameter:   id =  Kmf84, name = Kmf84
	global_par_Kmf84=622.3847;
% Parameter:   id =  Kmr84, name = Kmr84
	global_par_Kmr84=258.4637;
% Parameter:   id =  kf85, name = kf85
	global_par_kf85=6.7591;
% Parameter:   id =  Vmaxr85, name = Vmaxr85
	global_par_Vmaxr85=369.2261;
% Parameter:   id =  Kmf85, name = Kmf85
	global_par_Kmf85=179.6486;
% Parameter:   id =  Kmr85, name = Kmr85
	global_par_Kmr85=290.7667;
% Parameter:   id =  kcon49, name = kcon49
	global_par_kcon49=9.9783;
% Parameter:   id =  kon1, name = kon1
	global_par_kon1=1.0086E-4;
% Parameter:   id =  kon86, name = kon86
	global_par_kon86=0.0038;
% Parameter:   id =  kon2, name = kon2
	global_par_kon2=0.0059;
% Parameter:   id =  kon3, name = kon3
	global_par_kon3=0.0334;
% Parameter:   id =  kon87, name = kon87
	global_par_kon87=8.0E-4;
% Parameter:   id =  kon4, name = kon4
	global_par_kon4=0.5005;
% Parameter:   id =  kon5, name = kon5
	global_par_kon5=2.5427;
% Parameter:   id =  kon6, name = kon6
	global_par_kon6=0.2283;
% Parameter:   id =  kon7, name = kon7
	global_par_kon7=1.0606;
% Parameter:   id =  kon8, name = kon8
	global_par_kon8=1.0259;
% Parameter:   id =  kon9, name = kon9
	global_par_kon9=2.2868;
% Parameter:   id =  kon57, name = kon57
	global_par_kon57=0.0039;
% Parameter:   id =  kf10, name = kf10
	global_par_kf10=0.6496;
% Parameter:   id =  kf11, name = kf11
	global_par_kf11=0.3721;
% Parameter:   id =  kf12, name = kf12
	global_par_kf12=1.8012;
% Parameter:   id =  kf13, name = kf13
	global_par_kf13=0.8875;
% Parameter:   id =  kf14, name = kf14
	global_par_kf14=6.1726;
% Parameter:   id =  kf15, name = kf15
	global_par_kf15=1.3565;
% Parameter:   id =  kf63, name = kf63
	global_par_kf63=0.9297;
% Parameter:   id =  kf64, name = kf64
	global_par_kf64=1.2083;
% Parameter:   id =  kon16, name = kon16
	global_par_kon16=0.0097;
% Parameter:   id =  kon17, name = kon17
	global_par_kon17=0.0049;
% Parameter:   id =  kon18, name = kon18
	global_par_kon18=0.0117;
% Parameter:   id =  kon73, name = kon73
	global_par_kon73=0.0116;
% Parameter:   id =  kon19, name = kon19
	global_par_kon19=0.0896;
% Parameter:   id =  kon20, name = kon20
	global_par_kon20=0.0478;
% Parameter:   id =  kon21, name = kon21
	global_par_kon21=0.0114;
% Parameter:   id =  kon74, name = kon74
	global_par_kon74=0.0133;
% Parameter:   id =  kon22, name = kon22
	global_par_kon22=7.0E-4;
% Parameter:   id =  kon23, name = kon23
	global_par_kon23=0.0138;
% Parameter:   id =  kon24, name = kon24
	global_par_kon24=0.005;
% Parameter:   id =  kon25, name = kon25
	global_par_kon25=0.0995;
% Parameter:   id =  kon75, name = kon75
	global_par_kon75=0.0137;
% Parameter:   id =  kon26, name = kon26
	global_par_kon26=0.0355;
% Parameter:   id =  kon27, name = kon27
	global_par_kon27=0.0201;
% Parameter:   id =  kon28, name = kon28
	global_par_kon28=0.0074;
% Parameter:   id =  kon29, name = kon29
	global_par_kon29=0.0346;
% Parameter:   id =  kon76, name = kon76
	global_par_kon76=0.0053;
% Parameter:   id =  kon30, name = kon30
	global_par_kon30=0.002;
% Parameter:   id =  kon31, name = kon31
	global_par_kon31=0.0032;
% Parameter:   id =  kon32, name = kon32
	global_par_kon32=9.0E-4;
% Parameter:   id =  kon33, name = kon33
	global_par_kon33=0.0335;
% Parameter:   id =  kon77, name = kon77
	global_par_kon77=0.0101;
% Parameter:   id =  kon34, name = kon34
	global_par_kon34=1.0E-4;
% Parameter:   id =  kon35, name = kon35
	global_par_kon35=0.0602;
% Parameter:   id =  kon36, name = kon36
	global_par_kon36=0.0043;
% Parameter:   id =  kon37, name = kon37
	global_par_kon37=0.0791;
% Parameter:   id =  kon78, name = kon78
	global_par_kon78=0.0076;
% Parameter:   id =  kon79, name = kon79
	global_par_kon79=0.0078;
% Parameter:   id =  kon65, name = kon65
	global_par_kon65=0.0123;
% Parameter:   id =  kon66, name = kon66
	global_par_kon66=1.9264E-4;
% Parameter:   id =  kon67, name = kon67
	global_par_kon67=6.6667E-5;
% Parameter:   id =  kon80, name = kon80
	global_par_kon80=2.0E-4;
% Parameter:   id =  kon40, name = kon40
	global_par_kon40=0.0191;
% Parameter:   id =  kon41, name = kon41
	global_par_kon41=0.0051;
% Parameter:   id =  kon42, name = kon42
	global_par_kon42=0.0023;
% Parameter:   id =  kon43, name = kon43
	global_par_kon43=0.0127;
% Parameter:   id =  kon44, name = kon44
	global_par_kon44=0.0122;
% Parameter:   id =  kon45, name = kon45
	global_par_kon45=0.0028;
% Parameter:   id =  kon88, name = kon88
	global_par_kon88=0.0108;
% Parameter:   id =  kon46, name = kon46
	global_par_kon46=0.0148;
% Parameter:   id =  kon58, name = kon58
	global_par_kon58=0.0215;
% Parameter:   id =  kon59, name = kon59
	global_par_kon59=0.0077;
% Parameter:   id =  kon60, name = kon60
	global_par_kon60=1.1994E-4;
% Parameter:   id =  VeVc, name = VeVc
	global_par_VeVc=33.3;
% Parameter:   id =  koff60, name = koff60
	global_par_koff60=4.9981;
% Parameter:   id =  koff61, name = koff61
	global_par_koff61=5.229;
% Parameter:   id =  kon61, name = kon61
	global_par_kon61=0.8048;
% Parameter:   id =  kon62, name = kon62
	global_par_kon62=1.782;
% Parameter:   id =  koff62, name = koff62
	global_par_koff62=5.5142;
% Parameter:   id =  kon68, name = kon68
	global_par_kon68=0.0045;
% Parameter:   id =  kon69, name = kon69
	global_par_kon69=0.0084;
% Parameter:   id =  koff69, name = koff69
	global_par_koff69=3.97;
% Parameter:   id =  kon70, name = kon70
	global_par_kon70=0.0116;
% Parameter:   id =  koff70, name = koff70
	global_par_koff70=2.6069;
% Parameter:   id =  kon71, name = kon71
	global_par_kon71=0.0078;
% Parameter:   id =  koff71, name = koff71
	global_par_koff71=2.2988;
% Parameter:   id =  kon72, name = kon72
	global_par_kon72=0.0355;
% Parameter:   id =  koff72, name = koff72
	global_par_koff72=0.907;
% Parameter:   id =  eps, name = eps
	global_par_eps=1.0E-16;
% Parameter:   id =  kon89, name = kon89
	global_par_kon89=0.1997;
% Parameter:   id =  koff89, name = koff89
	global_par_koff89=99.9637;
% Parameter:   id =  kcat90, name = kcat90
	global_par_kcat90=20.0037;
% Parameter:   id =  kon91, name = kon91
	global_par_kon91=0.1966;
% Parameter:   id =  koff91, name = koff91
	global_par_koff91=99.9983;
% Parameter:   id =  kcat92, name = kcat92
	global_par_kcat92=0.2004;
% Parameter:   id =  kon93, name = kon93
	global_par_kon93=0.2003;
% Parameter:   id =  koff93, name = koff93
	global_par_koff93=100.0037;
% Parameter:   id =  kcat94, name = kcat94
	global_par_kcat94=0.9966;
% Parameter:   id =  kon95, name = kon95
	global_par_kon95=0.1993;
% Parameter:   id =  koff95, name = koff95
	global_par_koff95=100.0023;
% Parameter:   id =  kcat96, name = kcat96
	global_par_kcat96=19.9851;
% Parameter:   id =  ERKPpase_Abund, name = ERKPpase_Abund
	global_par_ERKPpase_Abund=35.005;
% assignmentRule: variable = norm_Akt_star
	x(119)=x(108)/18.8;
% assignmentRule: variable = norm_Erk_star
	x(120)=(x(74)+x(118))/589.5;

% Reaction: id = EGF_Binding_to_ErbB1, name = EGF Binding to ErbB1
	reaction_EGF_Binding_to_ErbB1=compartment_membrane*(global_par_kon1*x(110)*x(1)-global_par_EGF_off*x(5));

% Reaction: id = HRG_Binding_to_ErbB3, name = HRG Binding to ErbB3
	reaction_HRG_Binding_to_ErbB3=compartment_membrane*(global_par_kon2*x(111)*x(3)-global_par_HRGoff_3*x(6));

% Reaction: id = HRG_Binding_to_ErbB4, name = HRG Binding to ErbB4
	reaction_HRG_Binding_to_ErbB4=compartment_membrane*(global_par_kon3*x(111)*x(4)-global_par_HRGoff_4*x(7));

% Reaction: id = ErbB1_Dimerization, name = ErbB1 Dimerization
	reaction_ErbB1_Dimerization=compartment_membrane*(global_par_kon4*x(5)*x(5)-global_par_koff4*x(8));

% Reaction: id = ErbB1ErbB2_Heterodimerization, name = ErbB1/ErbB2 Heterodimerization
	reaction_ErbB1ErbB2_Heterodimerization=compartment_membrane*(global_par_kon5*x(5)*x(2)-global_par_koff5*x(9));

% Reaction: id = ErbB2ErbB3_Heterodimerization, name = ErbB2/ErbB3 Heterodimerization
	reaction_ErbB2ErbB3_Heterodimerization=compartment_membrane*(global_par_kon6*x(6)*x(2)-global_par_koff6*x(10));

% Reaction: id = ErbB3ErbB4_Heterodimerization, name = ErbB3/ErbB4 Heterodimerization
	reaction_ErbB3ErbB4_Heterodimerization=compartment_membrane*(global_par_kon7*x(6)*x(7)-global_par_koff7*x(11));

% Reaction: id = ErbB2ErbB4_Heterodimerization, name = ErbB2/ErbB4 Heterodimerization
	reaction_ErbB2ErbB4_Heterodimerization=global_par_kon8*x(7)*x(2)-global_par_koff8*x(12);

% Reaction: id = ErbB4_Homodimerization, name = ErbB4 Homodimerization
	reaction_ErbB4_Homodimerization=compartment_membrane*(global_par_kon9*x(7)*x(7)-global_par_koff9*x(13));

% Reaction: id = Net_E11_Phosphorylation, name = Net E11 Phosphorylation
	reaction_Net_E11_Phosphorylation=compartment_membrane*(global_par_kf10*x(8)-global_par_VmaxPY*x(14)/(global_par_KmPY+x(14))-global_par_kPTP10*x(102)*x(14));

% Reaction: id = Net_E12_Phosphorylation, name = Net E12 Phosphorylation
	reaction_Net_E12_Phosphorylation=compartment_membrane*(global_par_kf11*x(9)-global_par_VmaxPY*x(15)/(global_par_KmPY+x(15))-global_par_kPTP11*x(102)*x(15));

% Reaction: id = Net_E23_Phosphorylation, name = Net E23 Phosphorylation
	reaction_Net_E23_Phosphorylation=compartment_membrane*(global_par_kf12*x(10)-global_par_VmaxPY*x(16)/(global_par_KmPY+x(16))-global_par_kPTP12*x(102)*x(16));

% Reaction: id = Net_E34_Phosphorylation, name = Net E34 Phosphorylation
	reaction_Net_E34_Phosphorylation=compartment_membrane*(global_par_kf13*x(11)-global_par_VmaxPY*x(17)/(global_par_KmPY+x(17))-global_par_kPTP13*x(102)*x(17));

% Reaction: id = Net_E24_Phosphorylation, name = Net E24 Phosphorylation
	reaction_Net_E24_Phosphorylation=compartment_membrane*(global_par_kf14*x(12)-global_par_VmaxPY*x(18)/(global_par_KmPY+x(18))-global_par_kPTP14*x(102)*x(18));

% Reaction: id = Net_E44_Phosphorylation, name = Net E44 Phosphorylation
	reaction_Net_E44_Phosphorylation=compartment_membrane*(global_par_kf15*x(13)-global_par_VmaxPY*x(19)/(global_par_KmPY+x(19))-global_par_kPTP15*x(102)*x(19));

% Reaction: id = Net_E11PGrb2_binding, name = Net E11P/Grb2 binding
	reaction_Net_E11PGrb2_binding=compartment_membrane*(4*global_par_kon16*x(14)*x(20)-global_par_koff16*x(48)/(x(48)+x(56)+x(55)+x(77)+global_par_eps)*x(26));

% Reaction: id = Net_E11PShc_binding, name = Net E11P/Shc binding
	reaction_Net_E11PShc_binding=compartment_membrane*(8*global_par_kon17*x(14)*x(21)-global_par_koff17*x(49)/(x(49)+x(53)+x(57)+global_par_eps)*x(27));

% Reaction: id = Net_E11PRasGAP_binding, name = Net E11P/RasGAP binding
	reaction_Net_E11PRasGAP_binding=compartment_membrane*(2*global_par_kon18*x(14)*x(23)-global_par_koff18*x(51)/(x(51)+x(68)+global_par_eps)*x(28));

% Reaction: id = Net_E12PGrb2_binding, name = Net E12P/Grb2 binding
	reaction_Net_E12PGrb2_binding=compartment_membrane*(3*global_par_kon19*x(15)*x(20)-global_par_koff19*x(48)/(x(48)+x(56)+x(55)+x(77)+global_par_eps)*x(29));

% Reaction: id = Net_E12PShc_binding, name = Net E12P/Shc binding
	reaction_Net_E12PShc_binding=compartment_membrane*(6*global_par_kon20*x(15)*x(21)-global_par_koff20*x(49)/(x(49)+x(53)+x(57)+global_par_eps)*x(30));

% Reaction: id = Net_E12PRasGAP_binding, name = Net E12P/RasGAP binding
	reaction_Net_E12PRasGAP_binding=compartment_membrane*(2*global_par_kon21*x(15)*x(23)-global_par_koff21*x(51)/(x(51)+x(68)+global_par_eps)*x(31));

% Reaction: id = Net_E23PGrb2_binding, name = Net E23P/Grb2 binding
	reaction_Net_E23PGrb2_binding=compartment_membrane*(3*global_par_kon22*x(16)*x(20)-global_par_koff22*x(48)/(x(48)+x(56)+x(55)+x(77)+global_par_eps)*x(32));

% Reaction: id = Net_E23PShc_binding, name = Net E23P/Shc binding
	reaction_Net_E23PShc_binding=compartment_membrane*(3*global_par_kon23*x(16)*x(21)-global_par_koff23*x(49)/(x(49)+x(53)+x(57)+global_par_eps)*x(33));

% Reaction: id = Net_E23PPI3K_binding, name = Net E23P/PI3K binding
	reaction_Net_E23PPI3K_binding=compartment_membrane*(3*global_par_kon24*x(16)*x(22)-global_par_koff24*x(34));

% Reaction: id = Net_E23PRasGAP_binding, name = Net E23P/RasGAP binding
	reaction_Net_E23PRasGAP_binding=compartment_membrane*(2*global_par_kon25*x(16)*x(23)-global_par_koff25*x(51)/(x(51)+x(68)+global_par_eps)*x(35));

% Reaction: id = Net_E34PGrb2_binding, name = Net E34P/Grb2 binding
	reaction_Net_E34PGrb2_binding=compartment_membrane*(4*global_par_kon26*x(17)*x(20)-global_par_koff26*x(48)/(x(48)+x(56)+x(55)+x(77)+global_par_eps)*x(36));

% Reaction: id = Net_E34PShc_binding, name = Net E34P/Shc binding
	reaction_Net_E34PShc_binding=compartment_membrane*(3*global_par_kon27*x(17)*x(21)-global_par_koff27*x(49)/(x(49)+x(53)+x(57)+global_par_eps)*x(37));

% Reaction: id = Net_E34PPI3K_binding, name = Net E34P/PI3K binding
	reaction_Net_E34PPI3K_binding=compartment_membrane*(4*global_par_kon28*x(17)*x(22)-global_par_koff28*x(38));

% Reaction: id = Net_E34PRasGAP_binding, name = Net E34P/RasGAP binding
	reaction_Net_E34PRasGAP_binding=compartment_membrane*(2*global_par_kon29*x(17)*x(23)-global_par_koff29*x(51)/(x(51)+x(68)+global_par_eps)*x(39));

% Reaction: id = Net_E24PGrb2_binding, name = Net E24P/Grb2 binding
	reaction_Net_E24PGrb2_binding=compartment_membrane*(3*global_par_kon30*x(18)*x(20)-global_par_koff30*x(48)/(x(48)+x(56)+x(55)+x(77)+global_par_eps)*x(40));

% Reaction: id = Net_E24PShc_binding, name = Net E24P/Shc binding
	reaction_Net_E24PShc_binding=compartment_membrane*(4*global_par_kon31*x(18)*x(21)-global_par_koff31*x(49)/(x(49)+x(53)+x(57)+global_par_eps)*x(41));

% Reaction: id = Net_E24PPI3K_binding, name = Net E24P/PI3K binding
	reaction_Net_E24PPI3K_binding=compartment_membrane*(1*global_par_kon32*x(18)*x(22)-global_par_koff32*x(42));

% Reaction: id = Net_E24PRasGAP_binding, name = Net E24P/RasGAP binding
	reaction_Net_E24PRasGAP_binding=compartment_membrane*(2*global_par_kon33*x(18)*x(23)-global_par_koff33*x(51)/(x(51)+x(68)+global_par_eps)*x(43));

% Reaction: id = Net_E44PRasGAP_binding_1, name = Net E44P/RasGAP binding
	reaction_Net_E44PRasGAP_binding_1=compartment_membrane*(4*global_par_kon34*x(19)*x(20)-global_par_koff34*x(48)/(x(48)+x(56)+x(55)+x(77)+global_par_eps)*x(44));

% Reaction: id = Net_E44PShc_binding, name = Net E44P/Shc binding
	reaction_Net_E44PShc_binding=compartment_membrane*(4*global_par_kon35*x(19)*x(21)-global_par_koff35*x(49)/(x(49)+x(53)+x(57)+global_par_eps)*x(45));

% Reaction: id = Net_E44PPI3K_binding, name = Net E44P/PI3K binding
	reaction_Net_E44PPI3K_binding=compartment_membrane*(2*global_par_kon36*x(19)*x(22)-global_par_koff36*x(46));

% Reaction: id = Net_E44PRasGAP_binding_2, name = Net E44P/RasGAP binding
	reaction_Net_E44PRasGAP_binding_2=compartment_membrane*(2*global_par_kon37*x(19)*x(23)-global_par_koff37*x(51)/(x(51)+x(68)+global_par_eps)*x(47));

% Reaction: id = Net_Shc_Phosphorylation, name = Net Shc Phosphorylation
	reaction_Net_Shc_Phosphorylation=compartment_membrane*(global_par_kf38*x(49)*(x(14)+x(15)+x(16)+x(18)+x(17)+x(19)+x(83)+x(84))-global_par_VmaxPY*x(53)/(global_par_KmPY+x(53))-global_par_kPTP38*x(102)*x(53));

% Reaction: id = Net_Gab1_Phosphorylation, name = Net Gab1 Phosphorylation
	reaction_Net_Gab1_Phosphorylation=compartment_membrane*(global_par_kf39*x(52)*(x(14)+x(15)+x(16)+x(18)+x(17)+x(19)+x(83)+x(84))-global_par_VmaxPY*x(54)/(global_par_KmPY+x(54))-global_par_kPTP39*x(102)*x(54));

% Reaction: id = Net_Grb2SOS_binding, name = Net Grb2/SOS binding
	reaction_Net_Grb2SOS_binding=compartment_membrane*(global_par_kon40*x(48)*x(24)-global_par_koff40*x(55));

% Reaction: id = Net_Grb2Gab1_binding, name = Net Grb2/Gab1 binding
	reaction_Net_Grb2Gab1_binding=compartment_membrane*(global_par_kon41*x(48)*x(25)-global_par_koff41*x(56)*x(52)/(global_par_eps+x(52)+x(54)+x(58)+x(60)+x(59)+x(109)));

% Reaction: id = Net_ShcGrb2_binding, name = Net Shc/Grb2 binding
	reaction_Net_ShcGrb2_binding=compartment_membrane*(global_par_kon42*x(53)*x(20)-global_par_koff42*x(57)*x(48)/(x(48)+x(56)+x(55)+x(77)+global_par_eps));

% Reaction: id = Net_Gab1Shc_binding, name = Net Gab1/Shc binding
	reaction_Net_Gab1Shc_binding=compartment_membrane*(3*global_par_kon43*x(54)*x(21)-global_par_koff43*x(58)*x(49)/(x(49)+x(53)+x(57)+global_par_eps));

% Reaction: id = Net_Gab1PI3K_binding, name = Net Gab1/PI3K binding
	reaction_Net_Gab1PI3K_binding=compartment_membrane*(3*global_par_kon44*x(54)*x(22)-global_par_koff44*x(59));

% Reaction: id = Net_Gab1RasGAP_binding, name = Net Gab1/RasGAP binding
	reaction_Net_Gab1RasGAP_binding=compartment_membrane*(2*global_par_kon45*x(54)*x(23)-global_par_koff45*x(60)*x(51)/(x(51)+x(68)+global_par_eps));

% Reaction: id = Net_Gab1PIP3_binding, name = Net Gab1/PIP3 binding
	reaction_Net_Gab1PIP3_binding=compartment_membrane*(global_par_kon46*x(64)*x(25)-global_par_koff46*x(62)*x(52)/(global_par_eps+x(52)+x(54)+x(58)+x(60)+x(59)+x(109)));

% Reaction: id = Net_Akt_Activation, name = Net Akt Activation
	reaction_Net_Akt_Activation=compartment_membrane*(global_par_kf47*x(64)*x(65)/(global_par_Kmf47+x(65))-global_par_Vmaxr47*x(108)/(global_par_Kmr47+x(108)));

% Reaction: id = Net_PIP3_Production, name = Net PIP3 Production
	reaction_Net_PIP3_Production=compartment_membrane*(global_par_kf48*(1-x(112)*x(14)/(x(14)+x(15)+x(16)+x(18)+x(17)+x(19)+x(83)+x(84)+global_par_eps))*x(50)*x(63)/(global_par_Kmf48+x(63))-3*global_par_PTEN*x(64)/(global_par_Kmr48+x(64)));

% Reaction: id = Net_RasGTP_Production, name = Net RasGTP Production
	reaction_Net_RasGTP_Production=compartment_membrane*(global_par_kf49*x(80)*x(66)/(global_par_Kmf49+x(66))-global_par_kr49*x(51)*x(67)/(global_par_Kmr49+x(67))-global_par_kr49b*x(68)*x(67)/(global_par_Kmr49b+x(67))-global_par_kcon49*x(67));

% Reaction: id = Net_RasGAP_Phosphorylation, name = Net RasGAP Phosphorylation
	reaction_Net_RasGAP_Phosphorylation=compartment_membrane*(global_par_kf50*x(51)*(x(14)+x(15)+x(16)+x(18)+x(17)+x(19)+x(83)+x(84))-global_par_VmaxPY*x(68)/(global_par_KmPY+x(68))-global_par_kPTP50*x(102)*x(68));

% Reaction: id = Net_Raf_Activation, name = Net Raf Activation
	reaction_Net_Raf_Activation=compartment_membrane*(global_par_kf51*x(67)*x(69)/(global_par_Kmf51+x(69))-global_par_Vmaxr51*x(70)/(global_par_Kmrb51+x(70)));

% Reaction: id = Net_MEK_Activation, name = Net MEK Activation
	reaction_Net_MEK_Activation=compartment_membrane*(global_par_kf52*x(70)*x(71)/(global_par_Kmf52+x(71))-global_par_Vmaxr52*x(72)/(global_par_Kmr52+x(72)));

% Reaction: id = Net_SOS_ST_Phosphorylation, name = Net SOS S/T Phosphorylation
	reaction_Net_SOS_ST_Phosphorylation=compartment_membrane*(global_par_kf54*x(24)*x(74)/(global_par_Kmf54+x(24))-global_par_Vmaxr54*x(75)/(global_par_Kmr54+x(75)));

% Reaction: id = Net_Gab1_ST_Phosphorylation, name = Net Gab1 S/T Phosphorylation
	reaction_Net_Gab1_ST_Phosphorylation=compartment_membrane*(global_par_kf55*x(25)*x(74)/(global_par_Kmf55+x(25))-global_par_Vmaxr55*x(76)/(global_par_Kmr55+x(76)));

% Reaction: id = Grb2_binding_to_P3_A, name = Grb2 binding to P3_A
	reaction_Grb2_binding_to_P3_A=compartment_membrane*(global_par_kon57*x(62)*x(20)-global_par_koff57*x(78));

% Reaction: id = SOS_binding_to_SigAG, name = SOS binding to SigA-G
	reaction_SOS_binding_to_SigAG=compartment_membrane*(global_par_kon58*x(78)*x(24)-global_par_koff58*x(79));

% Reaction: id = Gab1_binding_to_SigGO, name = Gab1 binding to SigG-O
	reaction_Gab1_binding_to_SigGO=compartment_membrane*(global_par_kon59*x(55)*x(25)-global_par_koff59*x(77)*x(52)/(global_par_eps+x(52)+x(54)+x(58)+x(60)+x(59)+x(109)));

% Reaction: id = SOS_binding_to_SigGA, name = SOS binding to SigG-A
	reaction_SOS_binding_to_SigGA=compartment_membrane*(global_par_kon60*x(56)*x(24)-global_par_koff60*x(77));

% Reaction: id = ErbB1ErbB3_Heterodimerization, name = ErbB1/ErbB3 Heterodimerization
	reaction_ErbB1ErbB3_Heterodimerization=compartment_membrane*(global_par_kon61*x(6)*x(5)-global_par_koff61*x(81));

% Reaction: id = ErbB1ErbB4_Heterodimerization, name = ErbB1/ErbB4 Heterodimerization
	reaction_ErbB1ErbB4_Heterodimerization=compartment_membrane*(global_par_kon62*x(7)*x(5)-global_par_koff62*x(82));

% Reaction: id = Net_E13_Phosphorylation, name = Net E13 Phosphorylation
	reaction_Net_E13_Phosphorylation=compartment_membrane*(global_par_kf63*x(81)-global_par_VmaxPY*x(83)/(global_par_KmPY+x(83))-global_par_kPTP63*x(102)*x(83));

% Reaction: id = Net_E14_Phosphorylation, name = Net E14 Phosphorylation
	reaction_Net_E14_Phosphorylation=compartment_membrane*(global_par_kf64*x(82)-global_par_VmaxPY*x(84)/(global_par_KmPY+x(84))-global_par_kPTP64*x(102)*x(84));

% Reaction: id = Net_E13Grb2_Binding, name = Net E13/Grb2 Binding
	reaction_Net_E13Grb2_Binding=compartment_membrane*(4*global_par_kon65*x(83)*x(20)-global_par_koff65*x(48)/(x(48)+x(56)+x(55)+x(77)+global_par_eps)*x(85));

% Reaction: id = Net_E13Shc_Binding, name = Net E13/Shc Binding
	reaction_Net_E13Shc_Binding=compartment_membrane*(5*global_par_kon66*x(83)*x(21)-global_par_koff66*x(49)/(x(49)+x(53)+x(57)+global_par_eps)*x(86));

% Reaction: id = Net_E13PI3K_Binding, name = Net E13/PI3K Binding
	reaction_Net_E13PI3K_Binding=compartment_membrane*(3*global_par_kon67*x(83)*x(22)-global_par_koff67*x(87));

% Reaction: id = Net_E13RasGAP_Binding, name = Net E13/RasGAP Binding
	reaction_Net_E13RasGAP_Binding=compartment_membrane*(2*global_par_kon68*x(83)*x(23)-global_par_koff68*x(51)/(x(51)+x(68)+global_par_eps)*x(88));

% Reaction: id = Net_E14Grb2_Binding, name = Net E14/Grb2 Binding
	reaction_Net_E14Grb2_Binding=compartment_membrane*(4*global_par_kon69*x(84)*x(20)-global_par_koff69*x(48)/(x(48)+x(56)+x(55)+x(77)+global_par_eps)*x(89));

% Reaction: id = Net_E14Shc_Binding, name = Net E14/Shc Binding
	reaction_Net_E14Shc_Binding=compartment_membrane*(6*global_par_kon70*x(84)*x(21)-global_par_koff70*x(49)/(x(49)+x(53)+x(57)+global_par_eps)*x(90));

% Reaction: id = Net_E14PI3K_Binding, name = Net E14/PI3K Binding
	reaction_Net_E14PI3K_Binding=compartment_membrane*(1*global_par_kon71*x(84)*x(22)-global_par_koff71*x(91));

% Reaction: id = Net_E14RasGAP_Binding, name = Net E14/RasGAP Binding
	reaction_Net_E14RasGAP_Binding=compartment_membrane*(2*global_par_kon72*x(84)*x(23)-global_par_koff72*x(51)/(x(51)+x(68)+global_par_eps)*x(92));

% Reaction: id = Net_E11PTP1B_Binding, name = Net E11/PTP1B Binding
	reaction_Net_E11PTP1B_Binding=compartment_membrane*(4*global_par_kon73*x(14)*x(93)-global_par_koff73*x(94));

% Reaction: id = Net_E12PTP1B_Binding, name = Net E12/PTP1B Binding
	reaction_Net_E12PTP1B_Binding=compartment_membrane*(3*global_par_kon74*x(15)*x(93)-global_par_koff74*x(95));

% Reaction: id = Net_E23PTP1B_Binding, name = Net E23/PTP1B Binding
	reaction_Net_E23PTP1B_Binding=compartment_membrane*(2*global_par_kon75*x(16)*x(93)-global_par_koff75*x(96));

% Reaction: id = Net_E34PTP1B_Binding, name = Net E34/PTP1B Binding
	reaction_Net_E34PTP1B_Binding=compartment_membrane*(2*global_par_kon76*x(17)*x(93)-global_par_koff76*x(97));

% Reaction: id = Net_E24PTP1B_Binding, name = Net E24/PTP1B Binding
	reaction_Net_E24PTP1B_Binding=compartment_membrane*(2*global_par_kon77*x(18)*x(93)-global_par_koff77*x(98));

% Reaction: id = Net_E44PTP1B_Binding, name = Net E44/PTP1B Binding
	reaction_Net_E44PTP1B_Binding=compartment_membrane*(2*global_par_kon78*x(19)*x(93)-global_par_koff78*x(99));

% Reaction: id = Net_E13PTP1B_Binding, name = Net E13/PTP1B Binding
	reaction_Net_E13PTP1B_Binding=compartment_membrane*(3*global_par_kon79*x(83)*x(93)-global_par_koff79*x(100));

% Reaction: id = Net_E14PTP1B_Binding, name = Net E14/PTP1B Binding
	reaction_Net_E14PTP1B_Binding=compartment_membrane*(3*global_par_kon80*x(84)*x(93)-global_par_koff80*x(101));

% Reaction: id = Net_E1_ST_Phosphorylation, name = Net E1 S/T Phosphorylation
	reaction_Net_E1_ST_Phosphorylation=compartment_membrane*(global_par_kf81*x(1)*x(74)/(global_par_Kmf81+x(1))-global_par_Vmaxr81*x(103)/(global_par_Kmr81+x(103)));

% Reaction: id = Net_E2_ST_Phosphorylation, name = Net E2 S/T Phosphorylation
	reaction_Net_E2_ST_Phosphorylation=compartment_membrane*(global_par_kf82*x(2)*x(74)/(global_par_Kmf82+x(2))-global_par_Vmaxr82*x(104)/(global_par_Kmr82+x(104)));

% Reaction: id = Net_E4_ST_Phosphorylation, name = Net E4 S/T Phosphorylation
	reaction_Net_E4_ST_Phosphorylation=compartment_membrane*(global_par_kf83*x(4)*x(74)/(global_par_Kmf83+x(4))-global_par_Vmaxr83*x(105)/(global_par_Kmr83+x(105)));

% Reaction: id = Net_E_E1_ST_Phosphorylation, name = Net E_E1 S/T Phosphorylation
	reaction_Net_E_E1_ST_Phosphorylation=compartment_membrane*(global_par_kf84*x(5)*x(74)/(global_par_Kmf84+x(5))-global_par_Vmaxr84*x(106)/(global_par_Kmr84+x(106)));

% Reaction: id = Net_H_E4_ST_Phosphorylation, name = Net H_E4 S/T Phosphorylation
	reaction_Net_H_E4_ST_Phosphorylation=compartment_membrane*(global_par_kf85*x(7)*x(74)/(global_par_Kmf85+x(7))-global_par_Vmaxr85*x(107)/(global_par_Kmr85+x(107)));

% Reaction: id = EGF_binding_to_E1PT, name = EGF binding to E1-PT
	reaction_EGF_binding_to_E1PT=compartment_membrane*(global_par_kon86*x(110)*x(103)-global_par_EGF_off*x(106));

% Reaction: id = HRG_binding_to_E4PT, name = HRG binding to E4-PT
	reaction_HRG_binding_to_E4PT=compartment_membrane*(global_par_kon87*x(111)*x(105)-global_par_HRGoff_4*x(107));

% Reaction: id = PTP1B_binding_to_SigAP, name = PTP1B binding to SigAP
	reaction_PTP1B_binding_to_SigAP=compartment_membrane*(2*global_par_kon88*x(54)*x(93)-global_par_koff88*x(109));

% Reaction: id = E11P_Degradation, name = E11P Degradation
	reaction_E11P_Degradation=compartment_membrane*global_par_kdeg*x(14);

% Reaction: id = E11G_Degradation, name = E11G Degradation
	reaction_E11G_Degradation=compartment_membrane*global_par_kdeg*x(26);

% Reaction: id = E11S_Degradation, name = E11S Degradation
	reaction_E11S_Degradation=compartment_membrane*global_par_kdeg*x(27);

% Reaction: id = E11R_Degradation, name = E11R Degradation
	reaction_E11R_Degradation=compartment_membrane*global_par_kdeg*x(28);

% Reaction: id = E11T_Degradation, name = E11T Degradation
	reaction_E11T_Degradation=compartment_membrane*global_par_kdeg*x(94);

% Reaction: id = mwbbde76d1_155c_4264_8447_4457527547cb, name = 1-1 Dimer Internalization Fraction
	reaction_mwbbde76d1_155c_4264_8447_4457527547cb=compartment_membrane*global_par_a98*(-x(112)+global_par_b98);

% Reaction: id = EGF_in_EC_compartment, name = EGF in EC compartment
	reaction_EGF_in_EC_compartment=compartment_membrane*(global_par_kon1*x(110)*x(1)-global_par_EGF_off*x(5)+global_par_kon86*x(110)*x(103)-global_par_EGF_off*x(106))/global_par_VeVc;

% Reaction: id = HRG_in_EC_compartment, name = HRG in EC compartment
	reaction_HRG_in_EC_compartment=compartment_membrane*(global_par_kon87*x(111)*x(105)-global_par_HRGoff_4*x(107)+global_par_kon2*x(111)*x(3)-global_par_HRGoff_3*x(6)+global_par_kon3*x(111)*x(4)-global_par_HRGoff_4*x(7))/global_par_VeVc;

% Reaction: id = ERK_binding_to_MEKstar_1, name = ERK binding to MEKstar
	reaction_ERK_binding_to_MEKstar_1=compartment_membrane*(global_par_kon89*x(73)*x(72)-global_par_koff89*x(114));

% Reaction: id = pERK_production, name = pERK production
	reaction_pERK_production=compartment_membrane*global_par_kcat90*x(114);

% Reaction: id = ERK_binding_to_MEKstar_2, name = ERK binding to MEKstar
	reaction_ERK_binding_to_MEKstar_2=compartment_membrane*(global_par_kon91*x(113)*x(72)-global_par_koff91*x(115));

% Reaction: id = ERKstar_production, name = ERKstar production
	reaction_ERKstar_production=compartment_membrane*global_par_kcat92*x(115);

% Reaction: id = ERKstar_binding_to_Phosphatase, name = ERKstar binding to Phosphatase
	reaction_ERKstar_binding_to_Phosphatase=compartment_membrane*(global_par_kon93*x(74)*x(117)-global_par_koff93*x(118));

% Reaction: id = ERKstar_dephosphorylation, name = ERKstar dephosphorylation
	reaction_ERKstar_dephosphorylation=compartment_membrane*global_par_kcat94*x(118);

% Reaction: id = pERK_binding_to_Phosphatase, name = pERK binding to Phosphatase
	reaction_pERK_binding_to_Phosphatase=compartment_membrane*(global_par_kon95*x(113)*x(117)-global_par_koff95*x(116));

% Reaction: id = pERK_dephosphorylation, name = pERK dephosphorylation
	reaction_pERK_dephosphorylation=compartment_membrane*global_par_kcat96*x(116);

	xdot=zeros(120,1);
	
% Species:   id = E1, name = ErbB1, affected by kineticLaw
	xdot(1) = (1/(compartment_membrane))*((-1.0 * reaction_EGF_Binding_to_ErbB1) + (-1.0 * reaction_Net_E1_ST_Phosphorylation));
	
% Species:   id = E2, name = ErbB2, affected by kineticLaw
	xdot(2) = (1/(compartment_membrane))*((-1.0 * reaction_ErbB1ErbB2_Heterodimerization) + (-1.0 * reaction_ErbB2ErbB3_Heterodimerization) + (-1.0 * reaction_ErbB2ErbB4_Heterodimerization) + (-1.0 * reaction_Net_E2_ST_Phosphorylation));
	
% Species:   id = E3, name = ErbB3, affected by kineticLaw
	xdot(3) = (1/(compartment_membrane))*((-1.0 * reaction_HRG_Binding_to_ErbB3));
	
% Species:   id = E4, name = ErbB4, affected by kineticLaw
	xdot(4) = (1/(compartment_membrane))*((-1.0 * reaction_HRG_Binding_to_ErbB4) + (-1.0 * reaction_Net_E4_ST_Phosphorylation));
	
% Species:   id = E_E1, name = EGF-ErbB1, affected by kineticLaw
	xdot(5) = (1/(compartment_membrane))*(( 1.0 * reaction_EGF_Binding_to_ErbB1) + (-1.0 * reaction_ErbB1_Dimerization) + (-1.0 * reaction_ErbB1_Dimerization) + (-1.0 * reaction_ErbB1ErbB2_Heterodimerization) + (-1.0 * reaction_ErbB1ErbB3_Heterodimerization) + (-1.0 * reaction_ErbB1ErbB4_Heterodimerization) + (-1.0 * reaction_Net_E_E1_ST_Phosphorylation));
	
% Species:   id = H_E3, name = HRG-ErbB3, affected by kineticLaw
	xdot(6) = (1/(compartment_membrane))*(( 1.0 * reaction_HRG_Binding_to_ErbB3) + (-1.0 * reaction_ErbB2ErbB3_Heterodimerization) + (-1.0 * reaction_ErbB3ErbB4_Heterodimerization) + (-1.0 * reaction_ErbB1ErbB3_Heterodimerization));
	
% Species:   id = H_E4, name = HRG-ErbB4, affected by kineticLaw
	xdot(7) = (1/(compartment_membrane))*(( 1.0 * reaction_HRG_Binding_to_ErbB4) + (-1.0 * reaction_ErbB3ErbB4_Heterodimerization) + (-1.0 * reaction_ErbB2ErbB4_Heterodimerization) + (-1.0 * reaction_ErbB4_Homodimerization) + (-1.0 * reaction_ErbB4_Homodimerization) + (-1.0 * reaction_ErbB1ErbB4_Heterodimerization) + (-1.0 * reaction_Net_H_E4_ST_Phosphorylation));
	
% Species:   id = E11, name = (EGF-ErbB1)2, affected by kineticLaw
	xdot(8) = (1/(compartment_membrane))*(( 1.0 * reaction_ErbB1_Dimerization) + (-1.0 * reaction_Net_E11_Phosphorylation));
	
% Species:   id = E12, name = EGF-ErbB1-ErbB2, affected by kineticLaw
	xdot(9) = (1/(compartment_membrane))*(( 1.0 * reaction_ErbB1ErbB2_Heterodimerization) + (-1.0 * reaction_Net_E12_Phosphorylation));
	
% Species:   id = E23, name = HRG-ErbB3-ErbB2, affected by kineticLaw
	xdot(10) = (1/(compartment_membrane))*(( 1.0 * reaction_ErbB2ErbB3_Heterodimerization) + (-1.0 * reaction_Net_E23_Phosphorylation));
	
% Species:   id = E34, name = (HRG-ErbB3/4)2, affected by kineticLaw
	xdot(11) = (1/(compartment_membrane))*(( 1.0 * reaction_ErbB3ErbB4_Heterodimerization) + (-1.0 * reaction_Net_E34_Phosphorylation));
	
% Species:   id = E24, name = HRG-Erb4-ErbB2, affected by kineticLaw
	xdot(12) = (1/(compartment_membrane))*(( 1.0 * reaction_ErbB2ErbB4_Heterodimerization) + (-1.0 * reaction_Net_E24_Phosphorylation));
	
% Species:   id = E44, name = (HRG-Erb4)2, affected by kineticLaw
	xdot(13) = (1/(compartment_membrane))*(( 1.0 * reaction_ErbB4_Homodimerization) + (-1.0 * reaction_Net_E44_Phosphorylation));
	
% Species:   id = E11P, name = E11_p, affected by kineticLaw
	xdot(14) = (1/(compartment_membrane))*(( 1.0 * reaction_Net_E11_Phosphorylation) + (-1.0 * reaction_Net_E11PGrb2_binding) + (-1.0 * reaction_Net_E11PShc_binding) + (-1.0 * reaction_Net_E11PRasGAP_binding) + (-1.0 * reaction_Net_E11PTP1B_Binding) + (-1.0 * reaction_E11P_Degradation));
	
% Species:   id = E12P, name = E12_p, affected by kineticLaw
	xdot(15) = (1/(compartment_membrane))*(( 1.0 * reaction_Net_E12_Phosphorylation) + (-1.0 * reaction_Net_E12PGrb2_binding) + (-1.0 * reaction_Net_E12PShc_binding) + (-1.0 * reaction_Net_E12PRasGAP_binding) + (-1.0 * reaction_Net_E12PTP1B_Binding));
	
% Species:   id = E23P, name = E23_p, affected by kineticLaw
	xdot(16) = (1/(compartment_membrane))*(( 1.0 * reaction_Net_E23_Phosphorylation) + (-1.0 * reaction_Net_E23PGrb2_binding) + (-1.0 * reaction_Net_E23PShc_binding) + (-1.0 * reaction_Net_E23PPI3K_binding) + (-1.0 * reaction_Net_E23PRasGAP_binding) + (-1.0 * reaction_Net_E23PTP1B_Binding));
	
% Species:   id = E34P, name = E34_p, affected by kineticLaw
	xdot(17) = (1/(compartment_membrane))*(( 1.0 * reaction_Net_E34_Phosphorylation) + (-1.0 * reaction_Net_E34PGrb2_binding) + (-1.0 * reaction_Net_E34PShc_binding) + (-1.0 * reaction_Net_E34PPI3K_binding) + (-1.0 * reaction_Net_E34PRasGAP_binding) + (-1.0 * reaction_Net_E34PTP1B_Binding));
	
% Species:   id = E24P, name = E24_p, affected by kineticLaw
	xdot(18) = (1/(compartment_membrane))*(( 1.0 * reaction_Net_E24_Phosphorylation) + (-1.0 * reaction_Net_E24PGrb2_binding) + (-1.0 * reaction_Net_E24PShc_binding) + (-1.0 * reaction_Net_E24PPI3K_binding) + (-1.0 * reaction_Net_E24PRasGAP_binding) + (-1.0 * reaction_Net_E24PTP1B_Binding));
	
% Species:   id = E44P, name = E44_p, affected by kineticLaw
	xdot(19) = (1/(compartment_membrane))*(( 1.0 * reaction_Net_E44_Phosphorylation) + (-1.0 * reaction_Net_E44PRasGAP_binding_1) + (-1.0 * reaction_Net_E44PShc_binding) + (-1.0 * reaction_Net_E44PPI3K_binding) + (-1.0 * reaction_Net_E44PRasGAP_binding_2) + (-1.0 * reaction_Net_E44PTP1B_Binding));
	
% Species:   id = G, name = Grb2, affected by kineticLaw
	xdot(20) = (1/(compartment_membrane))*((-1.0 * reaction_Net_E11PGrb2_binding) + (-1.0 * reaction_Net_E12PGrb2_binding) + (-1.0 * reaction_Net_E23PGrb2_binding) + (-1.0 * reaction_Net_E34PGrb2_binding) + (-1.0 * reaction_Net_E24PGrb2_binding) + (-1.0 * reaction_Net_E44PRasGAP_binding_1) + (-1.0 * reaction_Net_ShcGrb2_binding) + (-1.0 * reaction_Grb2_binding_to_P3_A) + (-1.0 * reaction_Net_E13Grb2_Binding) + (-1.0 * reaction_Net_E14Grb2_Binding) + ( 1.0 * reaction_E11G_Degradation));
	
% Species:   id = S, name = Shc, affected by kineticLaw
	xdot(21) = (1/(compartment_membrane))*((-1.0 * reaction_Net_E11PShc_binding) + (-1.0 * reaction_Net_E12PShc_binding) + (-1.0 * reaction_Net_E23PShc_binding) + (-1.0 * reaction_Net_E34PShc_binding) + (-1.0 * reaction_Net_E24PShc_binding) + (-1.0 * reaction_Net_E44PShc_binding) + (-1.0 * reaction_Net_Gab1Shc_binding) + (-1.0 * reaction_Net_E13Shc_Binding) + (-1.0 * reaction_Net_E14Shc_Binding) + ( 1.0 * reaction_E11S_Degradation));
	
% Species:   id = I, name = PI-3K, affected by kineticLaw
	xdot(22) = (1/(compartment_membrane))*((-1.0 * reaction_Net_E23PPI3K_binding) + (-1.0 * reaction_Net_E34PPI3K_binding) + (-1.0 * reaction_Net_E24PPI3K_binding) + (-1.0 * reaction_Net_E44PPI3K_binding) + (-1.0 * reaction_Net_Gab1PI3K_binding) + (-1.0 * reaction_Net_E13PI3K_Binding) + (-1.0 * reaction_Net_E14PI3K_Binding));
	
% Species:   id = R, name = RasGAP, affected by kineticLaw
	xdot(23) = (1/(compartment_membrane))*((-1.0 * reaction_Net_E11PRasGAP_binding) + (-1.0 * reaction_Net_E12PRasGAP_binding) + (-1.0 * reaction_Net_E23PRasGAP_binding) + (-1.0 * reaction_Net_E34PRasGAP_binding) + (-1.0 * reaction_Net_E24PRasGAP_binding) + (-1.0 * reaction_Net_E44PRasGAP_binding_2) + (-1.0 * reaction_Net_Gab1RasGAP_binding) + (-1.0 * reaction_Net_E13RasGAP_Binding) + (-1.0 * reaction_Net_E14RasGAP_Binding) + ( 1.0 * reaction_E11R_Degradation));
	
% Species:   id = O, name = SOS, affected by kineticLaw
	xdot(24) = (1/(compartment_membrane))*((-1.0 * reaction_Net_Grb2SOS_binding) + (-1.0 * reaction_Net_SOS_ST_Phosphorylation) + (-1.0 * reaction_SOS_binding_to_SigAG) + (-1.0 * reaction_SOS_binding_to_SigGA));
	
% Species:   id = A, name = Gab1, affected by kineticLaw
	xdot(25) = (1/(compartment_membrane))*((-1.0 * reaction_Net_Grb2Gab1_binding) + (-1.0 * reaction_Net_Gab1PIP3_binding) + (-1.0 * reaction_Net_Gab1_ST_Phosphorylation) + (-1.0 * reaction_Gab1_binding_to_SigGO));
	
% Species:   id = E11G, name = E11-Grb2, affected by kineticLaw
	xdot(26) = (1/(compartment_membrane))*(( 1.0 * reaction_Net_E11PGrb2_binding) + (-1.0 * reaction_E11G_Degradation));
	
% Species:   id = E11S, name = E11-Shc, affected by kineticLaw
	xdot(27) = (1/(compartment_membrane))*(( 1.0 * reaction_Net_E11PShc_binding) + (-1.0 * reaction_E11S_Degradation));
	
% Species:   id = E11R, name = E11-RasGAP, affected by kineticLaw
	xdot(28) = (1/(compartment_membrane))*(( 1.0 * reaction_Net_E11PRasGAP_binding) + (-1.0 * reaction_E11R_Degradation));
	
% Species:   id = E12G, name = E12-Grb2, affected by kineticLaw
	xdot(29) = (1/(compartment_membrane))*(( 1.0 * reaction_Net_E12PGrb2_binding));
	
% Species:   id = E12S, name = E12-Shc, affected by kineticLaw
	xdot(30) = (1/(compartment_membrane))*(( 1.0 * reaction_Net_E12PShc_binding));
	
% Species:   id = E12R, name = E12-RasGAP, affected by kineticLaw
	xdot(31) = (1/(compartment_membrane))*(( 1.0 * reaction_Net_E12PRasGAP_binding));
	
% Species:   id = E23G, name = E23-Grb2, affected by kineticLaw
	xdot(32) = (1/(compartment_membrane))*(( 1.0 * reaction_Net_E23PGrb2_binding));
	
% Species:   id = E23S, name = E23-Shc, affected by kineticLaw
	xdot(33) = (1/(compartment_membrane))*(( 1.0 * reaction_Net_E23PShc_binding));
	
% Species:   id = E23I, name = E23-PI-3K, affected by kineticLaw
	xdot(34) = (1/(compartment_membrane))*(( 1.0 * reaction_Net_E23PPI3K_binding));
	
% Species:   id = E23R, name = E23-RasGAP, affected by kineticLaw
	xdot(35) = (1/(compartment_membrane))*(( 1.0 * reaction_Net_E23PRasGAP_binding));
	
% Species:   id = E34G, name = E34-Grb2, affected by kineticLaw
	xdot(36) = (1/(compartment_membrane))*(( 1.0 * reaction_Net_E34PGrb2_binding));
	
% Species:   id = E34S, name = E34-Shc, affected by kineticLaw
	xdot(37) = (1/(compartment_membrane))*(( 1.0 * reaction_Net_E34PShc_binding));
	
% Species:   id = E34I, name = E34-PI-3K, affected by kineticLaw
	xdot(38) = (1/(compartment_membrane))*(( 1.0 * reaction_Net_E34PPI3K_binding));
	
% Species:   id = E34R, name = E34-RasGAP, affected by kineticLaw
	xdot(39) = (1/(compartment_membrane))*(( 1.0 * reaction_Net_E34PRasGAP_binding));
	
% Species:   id = E24G, name = E24-Grb2, affected by kineticLaw
	xdot(40) = (1/(compartment_membrane))*(( 1.0 * reaction_Net_E24PGrb2_binding));
	
% Species:   id = E24S, name = E24-Shc, affected by kineticLaw
	xdot(41) = (1/(compartment_membrane))*(( 1.0 * reaction_Net_E24PShc_binding));
	
% Species:   id = E24I, name = E24-PI-3K, affected by kineticLaw
	xdot(42) = (1/(compartment_membrane))*(( 1.0 * reaction_Net_E24PPI3K_binding));
	
% Species:   id = E24R, name = E24-RasGAP, affected by kineticLaw
	xdot(43) = (1/(compartment_membrane))*(( 1.0 * reaction_Net_E24PRasGAP_binding));
	
% Species:   id = E44G, name = E44-Grb2, affected by kineticLaw
	xdot(44) = (1/(compartment_membrane))*(( 1.0 * reaction_Net_E44PRasGAP_binding_1));
	
% Species:   id = E44S, name = E44-Shc, affected by kineticLaw
	xdot(45) = (1/(compartment_membrane))*(( 1.0 * reaction_Net_E44PShc_binding));
	
% Species:   id = E44I, name = E44-PI-3K, affected by kineticLaw
	xdot(46) = (1/(compartment_membrane))*(( 1.0 * reaction_Net_E44PPI3K_binding));
	
% Species:   id = E44R, name = E44-RasGAP, affected by kineticLaw
	xdot(47) = (1/(compartment_membrane))*(( 1.0 * reaction_Net_E44PRasGAP_binding_2));
	
% Species:   id = SigG, name = Sum Grb2, affected by kineticLaw
	xdot(48) = (1/(compartment_membrane))*(( 1.0 * reaction_Net_E11PGrb2_binding) + ( 1.0 * reaction_Net_E12PGrb2_binding) + ( 1.0 * reaction_Net_E23PGrb2_binding) + ( 1.0 * reaction_Net_E34PGrb2_binding) + ( 1.0 * reaction_Net_E24PGrb2_binding) + ( 1.0 * reaction_Net_E44PRasGAP_binding_1) + (-1.0 * reaction_Net_Grb2SOS_binding) + (-1.0 * reaction_Net_Grb2Gab1_binding) + ( 1.0 * reaction_Net_ShcGrb2_binding) + ( 1.0 * reaction_Net_E13Grb2_Binding) + ( 1.0 * reaction_Net_E14Grb2_Binding) + (-1.0 * reaction_E11G_Degradation));
	
% Species:   id = SigS, name = Sum Shc, affected by kineticLaw
	xdot(49) = (1/(compartment_membrane))*(( 1.0 * reaction_Net_E11PShc_binding) + ( 1.0 * reaction_Net_E12PShc_binding) + ( 1.0 * reaction_Net_E23PShc_binding) + ( 1.0 * reaction_Net_E34PShc_binding) + ( 1.0 * reaction_Net_E24PShc_binding) + ( 1.0 * reaction_Net_E44PShc_binding) + (-1.0 * reaction_Net_Shc_Phosphorylation) + ( 1.0 * reaction_Net_Gab1Shc_binding) + ( 1.0 * reaction_Net_E13Shc_Binding) + ( 1.0 * reaction_Net_E14Shc_Binding) + (-1.0 * reaction_E11S_Degradation));
	
% Species:   id = SigI, name = Sum PI-3K, affected by kineticLaw
	xdot(50) = (1/(compartment_membrane))*(( 1.0 * reaction_Net_E23PPI3K_binding) + ( 1.0 * reaction_Net_E34PPI3K_binding) + ( 1.0 * reaction_Net_E24PPI3K_binding) + ( 1.0 * reaction_Net_E44PPI3K_binding) + ( 1.0 * reaction_Net_Gab1PI3K_binding) + ( 1.0 * reaction_Net_E13PI3K_Binding) + ( 1.0 * reaction_Net_E14PI3K_Binding));
	
% Species:   id = SigR, name = Sum RasGAP, affected by kineticLaw
	xdot(51) = (1/(compartment_membrane))*(( 1.0 * reaction_Net_E11PRasGAP_binding) + ( 1.0 * reaction_Net_E12PRasGAP_binding) + ( 1.0 * reaction_Net_E23PRasGAP_binding) + ( 1.0 * reaction_Net_E34PRasGAP_binding) + ( 1.0 * reaction_Net_E24PRasGAP_binding) + ( 1.0 * reaction_Net_E44PRasGAP_binding_2) + ( 1.0 * reaction_Net_Gab1RasGAP_binding) + (-1.0 * reaction_Net_RasGAP_Phosphorylation) + ( 1.0 * reaction_Net_E13RasGAP_Binding) + ( 1.0 * reaction_Net_E14RasGAP_Binding) + (-1.0 * reaction_E11R_Degradation));
	
% Species:   id = SigA, name = Sum Gab1, affected by kineticLaw
	xdot(52) = (1/(compartment_membrane))*((-1.0 * reaction_Net_Gab1_Phosphorylation) + ( 1.0 * reaction_Net_Grb2Gab1_binding) + ( 1.0 * reaction_Net_Gab1PIP3_binding) + ( 1.0 * reaction_Gab1_binding_to_SigGO));
	
% Species:   id = SigSP, name = Sum Shc_p, affected by kineticLaw
	xdot(53) = (1/(compartment_membrane))*(( 1.0 * reaction_Net_Shc_Phosphorylation) + (-1.0 * reaction_Net_ShcGrb2_binding));
	
% Species:   id = SigAP, name = Sum Gab1_p, affected by kineticLaw
	xdot(54) = (1/(compartment_membrane))*(( 1.0 * reaction_Net_Gab1_Phosphorylation) + (-1.0 * reaction_Net_Gab1Shc_binding) + (-1.0 * reaction_Net_Gab1PI3K_binding) + (-1.0 * reaction_Net_Gab1RasGAP_binding) + (-1.0 * reaction_PTP1B_binding_to_SigAP));
	
% Species:   id = SigG_O, name = Sum Grb2-SOS, affected by kineticLaw
	xdot(55) = (1/(compartment_membrane))*(( 1.0 * reaction_Net_Grb2SOS_binding) + (-1.0 * reaction_Gab1_binding_to_SigGO));
	
% Species:   id = SigG_A, name = Sum Grb2-Gab1, affected by kineticLaw
	xdot(56) = (1/(compartment_membrane))*(( 1.0 * reaction_Net_Grb2Gab1_binding) + (-1.0 * reaction_SOS_binding_to_SigGA));
	
% Species:   id = SigSP_G, name = Sum Shc_p-Grb2, affected by kineticLaw
	xdot(57) = (1/(compartment_membrane))*(( 1.0 * reaction_Net_ShcGrb2_binding));
	
% Species:   id = SigAP_S, name = Sum Gab1_p-Shc, affected by kineticLaw
	xdot(58) = (1/(compartment_membrane))*(( 1.0 * reaction_Net_Gab1Shc_binding));
	
% Species:   id = SigAP_I, name = Sum Gab1_p-PI-3K, affected by kineticLaw
	xdot(59) = (1/(compartment_membrane))*(( 1.0 * reaction_Net_Gab1PI3K_binding));
	
% Species:   id = SigAP_R, name = Sum Gab1_p-RasGAP, affected by kineticLaw
	xdot(60) = (1/(compartment_membrane))*(( 1.0 * reaction_Net_Gab1RasGAP_binding));
	
% Species:   id = Empty, name = Empty, affected by kineticLaw
	xdot(61) = (1/(compartment_membrane))*(( 1.0 * reaction_E11P_Degradation) + (-1.0 * reaction_mwbbde76d1_155c_4264_8447_4457527547cb) + ( 1.0 * reaction_EGF_in_EC_compartment) + ( 1.0 * reaction_HRG_in_EC_compartment));
	
% Species:   id = P3_A, name = PIP3-Gab1, affected by kineticLaw
	xdot(62) = (1/(compartment_membrane))*(( 1.0 * reaction_Net_Gab1PIP3_binding) + (-1.0 * reaction_Grb2_binding_to_P3_A));
	
% Species:   id = P2, name = PIP2, affected by kineticLaw
	xdot(63) = (1/(compartment_membrane))*((-1.0 * reaction_Net_PIP3_Production));
	
% Species:   id = P3, name = PIP3, affected by kineticLaw
	xdot(64) = (1/(compartment_membrane))*((-1.0 * reaction_Net_Gab1PIP3_binding) + ( 1.0 * reaction_Net_PIP3_Production));
	
% Species:   id = Akt, name = Akt, affected by kineticLaw
	xdot(65) = (1/(compartment_membrane))*((-1.0 * reaction_Net_Akt_Activation));
	
% Species:   id = RsD, name = RasGDP, affected by kineticLaw
	xdot(66) = (1/(compartment_membrane))*((-1.0 * reaction_Net_RasGTP_Production));
	
% Species:   id = RsT, name = RasGTP, affected by kineticLaw
	xdot(67) = (1/(compartment_membrane))*(( 1.0 * reaction_Net_RasGTP_Production));
	
% Species:   id = SigRP, name = Sum RasGAP_p, affected by kineticLaw
	xdot(68) = (1/(compartment_membrane))*(( 1.0 * reaction_Net_RasGAP_Phosphorylation));
	
% Species:   id = Raf, name = Raf, affected by kineticLaw
	xdot(69) = (1/(compartment_membrane))*((-1.0 * reaction_Net_Raf_Activation));
	
% Species:   id = Rafstar, name = Raf*, affected by kineticLaw
	xdot(70) = (1/(compartment_membrane))*(( 1.0 * reaction_Net_Raf_Activation));
	
% Species:   id = MEK, name = MEK, affected by kineticLaw
	xdot(71) = (1/(compartment_membrane))*((-1.0 * reaction_Net_MEK_Activation));
	
% Species:   id = MEKstar, name = MEK*, affected by kineticLaw
	xdot(72) = (1/(compartment_membrane))*(( 1.0 * reaction_Net_MEK_Activation) + (-1.0 * reaction_ERK_binding_to_MEKstar_1) + ( 1.0 * reaction_pERK_production) + (-1.0 * reaction_ERK_binding_to_MEKstar_2) + ( 1.0 * reaction_ERKstar_production));
	
% Species:   id = ERK, name = ERK, affected by kineticLaw
	xdot(73) = (1/(compartment_membrane))*((-1.0 * reaction_ERK_binding_to_MEKstar_1) + ( 1.0 * reaction_pERK_dephosphorylation));
	
% Species:   id = ERKstar, name = ERK*, affected by kineticLaw
	xdot(74) = (1/(compartment_membrane))*(( 1.0 * reaction_ERKstar_production) + (-1.0 * reaction_ERKstar_binding_to_Phosphatase));
	
% Species:   id = OP, name = SOS_p, affected by kineticLaw
	xdot(75) = (1/(compartment_membrane))*(( 1.0 * reaction_Net_SOS_ST_Phosphorylation));
	
% Species:   id = AP, name = Gab1_p, affected by kineticLaw
	xdot(76) = (1/(compartment_membrane))*(( 1.0 * reaction_Net_Gab1_ST_Phosphorylation));
	
% Species:   id = A_SigG_O, name = Gab1_SumGrb2-SOS, affected by kineticLaw
	xdot(77) = (1/(compartment_membrane))*(( 1.0 * reaction_Gab1_binding_to_SigGO) + ( 1.0 * reaction_SOS_binding_to_SigGA));
	
% Species:   id = SigA_G, name = Sum PIP3-Gab1-Grb2, affected by kineticLaw
	xdot(78) = (1/(compartment_membrane))*(( 1.0 * reaction_Grb2_binding_to_P3_A) + (-1.0 * reaction_SOS_binding_to_SigAG));
	
% Species:   id = SigA_G_O, name = Sum PIP3-Gab1-Grb2_SOS, affected by kineticLaw
	xdot(79) = (1/(compartment_membrane))*(( 1.0 * reaction_SOS_binding_to_SigAG));
	
% Species:   id = SigO, name = Sum SOS, affected by kineticLaw
	xdot(80) = (1/(compartment_membrane))*(( 1.0 * reaction_Net_Grb2SOS_binding) + ( 1.0 * reaction_SOS_binding_to_SigAG) + ( 1.0 * reaction_SOS_binding_to_SigGA));
	
% Species:   id = E13, name = ErbB1-ErbB3, affected by kineticLaw
	xdot(81) = (1/(compartment_membrane))*(( 1.0 * reaction_ErbB1ErbB3_Heterodimerization) + (-1.0 * reaction_Net_E13_Phosphorylation));
	
% Species:   id = E14, name = ErbB1-ErbB4, affected by kineticLaw
	xdot(82) = (1/(compartment_membrane))*(( 1.0 * reaction_ErbB1ErbB4_Heterodimerization) + (-1.0 * reaction_Net_E14_Phosphorylation));
	
% Species:   id = E13P, name = ErbB1-ErbB3_p, affected by kineticLaw
	xdot(83) = (1/(compartment_membrane))*(( 1.0 * reaction_Net_E13_Phosphorylation) + (-1.0 * reaction_Net_E13Grb2_Binding) + (-1.0 * reaction_Net_E13Shc_Binding) + (-1.0 * reaction_Net_E13PI3K_Binding) + (-1.0 * reaction_Net_E13RasGAP_Binding) + (-1.0 * reaction_Net_E13PTP1B_Binding));
	
% Species:   id = E14P, name = ErbB1-ErbB3_p, affected by kineticLaw
	xdot(84) = (1/(compartment_membrane))*(( 1.0 * reaction_Net_E14_Phosphorylation) + (-1.0 * reaction_Net_E14Grb2_Binding) + (-1.0 * reaction_Net_E14Shc_Binding) + (-1.0 * reaction_Net_E14PI3K_Binding) + (-1.0 * reaction_Net_E14RasGAP_Binding) + (-1.0 * reaction_Net_E14PTP1B_Binding));
	
% Species:   id = E13G, name = E13-Grb2, affected by kineticLaw
	xdot(85) = (1/(compartment_membrane))*(( 1.0 * reaction_Net_E13Grb2_Binding));
	
% Species:   id = E13S, name = E13-Shc, affected by kineticLaw
	xdot(86) = (1/(compartment_membrane))*(( 1.0 * reaction_Net_E13Shc_Binding));
	
% Species:   id = E13I, name = E13-PI-3K, affected by kineticLaw
	xdot(87) = (1/(compartment_membrane))*(( 1.0 * reaction_Net_E13PI3K_Binding));
	
% Species:   id = E13R, name = E13-RasGAP, affected by kineticLaw
	xdot(88) = (1/(compartment_membrane))*(( 1.0 * reaction_Net_E13RasGAP_Binding));
	
% Species:   id = E14G, name = E14-Grb2, affected by kineticLaw
	xdot(89) = (1/(compartment_membrane))*(( 1.0 * reaction_Net_E14Grb2_Binding));
	
% Species:   id = E14S, name = E14-Shc, affected by kineticLaw
	xdot(90) = (1/(compartment_membrane))*(( 1.0 * reaction_Net_E14Shc_Binding));
	
% Species:   id = E14I, name = E14-PI-3K, affected by kineticLaw
	xdot(91) = (1/(compartment_membrane))*(( 1.0 * reaction_Net_E14PI3K_Binding));
	
% Species:   id = E14R, name = E14-RasGAP, affected by kineticLaw
	xdot(92) = (1/(compartment_membrane))*(( 1.0 * reaction_Net_E14RasGAP_Binding));
	
% Species:   id = T, name = PTP-1B, affected by kineticLaw
	xdot(93) = (1/(compartment_membrane))*((-1.0 * reaction_Net_E11PTP1B_Binding) + (-1.0 * reaction_Net_E12PTP1B_Binding) + (-1.0 * reaction_Net_E23PTP1B_Binding) + (-1.0 * reaction_Net_E34PTP1B_Binding) + (-1.0 * reaction_Net_E24PTP1B_Binding) + (-1.0 * reaction_Net_E44PTP1B_Binding) + (-1.0 * reaction_Net_E13PTP1B_Binding) + (-1.0 * reaction_Net_E14PTP1B_Binding) + (-1.0 * reaction_PTP1B_binding_to_SigAP) + ( 1.0 * reaction_E11T_Degradation));
	
% Species:   id = E11T, name = E11-PTP-1B, affected by kineticLaw
	xdot(94) = (1/(compartment_membrane))*(( 1.0 * reaction_Net_E11PTP1B_Binding) + (-1.0 * reaction_E11T_Degradation));
	
% Species:   id = E12T, name = E12-PTP-1B, affected by kineticLaw
	xdot(95) = (1/(compartment_membrane))*(( 1.0 * reaction_Net_E12PTP1B_Binding));
	
% Species:   id = E23T, name = E23-PTP-1B, affected by kineticLaw
	xdot(96) = (1/(compartment_membrane))*(( 1.0 * reaction_Net_E23PTP1B_Binding));
	
% Species:   id = E34T, name = E34-PTP-1B, affected by kineticLaw
	xdot(97) = (1/(compartment_membrane))*(( 1.0 * reaction_Net_E34PTP1B_Binding));
	
% Species:   id = E24T, name = E24-PTP-1B, affected by kineticLaw
	xdot(98) = (1/(compartment_membrane))*(( 1.0 * reaction_Net_E24PTP1B_Binding));
	
% Species:   id = E44T, name = E44-PTP-1B, affected by kineticLaw
	xdot(99) = (1/(compartment_membrane))*(( 1.0 * reaction_Net_E44PTP1B_Binding));
	
% Species:   id = E13T, name = E13-PTP-1B, affected by kineticLaw
	xdot(100) = (1/(compartment_membrane))*(( 1.0 * reaction_Net_E13PTP1B_Binding));
	
% Species:   id = E14T, name = E14-PTP-1B, affected by kineticLaw
	xdot(101) = (1/(compartment_membrane))*(( 1.0 * reaction_Net_E14PTP1B_Binding));
	
% Species:   id = SigT, name = Sig-PTP-1B, affected by kineticLaw
	xdot(102) = (1/(compartment_membrane))*(( 1.0 * reaction_Net_E11PTP1B_Binding) + ( 1.0 * reaction_Net_E12PTP1B_Binding) + ( 1.0 * reaction_Net_E23PTP1B_Binding) + ( 1.0 * reaction_Net_E34PTP1B_Binding) + ( 1.0 * reaction_Net_E24PTP1B_Binding) + ( 1.0 * reaction_Net_E44PTP1B_Binding) + ( 1.0 * reaction_Net_E13PTP1B_Binding) + ( 1.0 * reaction_Net_E14PTP1B_Binding) + ( 1.0 * reaction_PTP1B_binding_to_SigAP) + (-1.0 * reaction_E11T_Degradation));
	
% Species:   id = E1_PT, name = E1_p-PTP-1B, affected by kineticLaw
	xdot(103) = (1/(compartment_membrane))*(( 1.0 * reaction_Net_E1_ST_Phosphorylation) + (-1.0 * reaction_EGF_binding_to_E1PT));
	
% Species:   id = E2_PT, name = E2_p-PTP-1B, affected by kineticLaw
	xdot(104) = (1/(compartment_membrane))*(( 1.0 * reaction_Net_E2_ST_Phosphorylation));
	
% Species:   id = E4_PT, name = E4_p-PTP-1B, affected by kineticLaw
	xdot(105) = (1/(compartment_membrane))*(( 1.0 * reaction_Net_E4_ST_Phosphorylation) + (-1.0 * reaction_HRG_binding_to_E4PT));
	
% Species:   id = E_E1_PT, name = E_E1_p-PTP-1B, affected by kineticLaw
	xdot(106) = (1/(compartment_membrane))*(( 1.0 * reaction_Net_E_E1_ST_Phosphorylation) + ( 1.0 * reaction_EGF_binding_to_E1PT));
	
% Species:   id = H_E4_PT, name = H_E4_p-PTP-1B, affected by kineticLaw
	xdot(107) = (1/(compartment_membrane))*(( 1.0 * reaction_Net_H_E4_ST_Phosphorylation) + ( 1.0 * reaction_HRG_binding_to_E4PT));
	
% Species:   id = Aktstar, name = Aktstar, affected by kineticLaw
	xdot(108) = (1/(compartment_membrane))*(( 1.0 * reaction_Net_Akt_Activation));
	
% Species:   id = SigAP_T, name = SumGab1_p-PTP-1B, affected by kineticLaw
	xdot(109) = (1/(compartment_membrane))*(( 1.0 * reaction_PTP1B_binding_to_SigAP));
	
% Species:   id = E, name = EGF, affected by kineticLaw
	xdot(110) = (1/(compartment_membrane))*((-1.0 * reaction_EGF_in_EC_compartment));
	
% Species:   id = H, name = HRG, affected by kineticLaw
	xdot(111) = (1/(compartment_membrane))*((-1.0 * reaction_HRG_in_EC_compartment));
	
% Species:   id = fint, name = fint, affected by kineticLaw
	xdot(112) = (1/(compartment_membrane))*(( 1.0 * reaction_mwbbde76d1_155c_4264_8447_4457527547cb));
	
% Species:   id = pERK, name = p_ERK, affected by kineticLaw
	xdot(113) = (1/(compartment_membrane))*(( 1.0 * reaction_pERK_production) + (-1.0 * reaction_ERK_binding_to_MEKstar_2) + ( 1.0 * reaction_ERKstar_dephosphorylation) + (-1.0 * reaction_pERK_binding_to_Phosphatase));
	
% Species:   id = ERK_MEKstar, name = ERK-MEK*, affected by kineticLaw
	xdot(114) = (1/(compartment_membrane))*(( 1.0 * reaction_ERK_binding_to_MEKstar_1) + (-1.0 * reaction_pERK_production));
	
% Species:   id = pERK_MEKstar, name = p_ERK-MEK*, affected by kineticLaw
	xdot(115) = (1/(compartment_membrane))*(( 1.0 * reaction_ERK_binding_to_MEKstar_2) + (-1.0 * reaction_ERKstar_production));
	
% Species:   id = pERK_ERKpase, name = p_ERK-ERKpase, affected by kineticLaw
	xdot(116) = (1/(compartment_membrane))*(( 1.0 * reaction_pERK_binding_to_Phosphatase) + (-1.0 * reaction_pERK_dephosphorylation));
	
% Species:   id = ERKpase, name = ERKpase, affected by kineticLaw
	xdot(117) = (1/(compartment_membrane))*((-1.0 * reaction_ERKstar_binding_to_Phosphatase) + ( 1.0 * reaction_ERKstar_dephosphorylation) + (-1.0 * reaction_pERK_binding_to_Phosphatase) + ( 1.0 * reaction_pERK_dephosphorylation));
	
% Species:   id = ERKstar_ERKpase, name = ERK*-ERKpase, affected by kineticLaw
	xdot(118) = (1/(compartment_membrane))*(( 1.0 * reaction_ERKstar_binding_to_Phosphatase) + (-1.0 * reaction_ERKstar_dephosphorylation));
	
% Species:   id = norm_Akt_star, name = normalized Akt*, involved in a rule 	xdot(119) = x(119);
	
% Species:   id = norm_Erk_star, name = normalized Erk*, involved in a rule 	xdot(120) = x(120);
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


