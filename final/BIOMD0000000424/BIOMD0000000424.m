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
% Model name = Faratian2009 - Role of PTEN in Trastuzumab resistance
%
% is http://identifiers.org/biomodels.db/MODEL1108180000
% is http://identifiers.org/biomodels.db/BIOMD0000000424
% isDescribedBy http://identifiers.org/pubmed/19638581
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000146
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000048
%


function main()
%Initial conditions vector
	x0=zeros(55,1);
	x0(1) = 80.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 100.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 100.0;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 100.0;
	x0(11) = 0.0;
	x0(12) = 0.0;
	x0(13) = 0.0;
	x0(14) = 120.0;
	x0(15) = 0.0;
	x0(16) = 100.0;
	x0(17) = 0.0;
	x0(18) = 10.0;
	x0(19) = 0.0;
	x0(20) = 10.0;
	x0(21) = 0.0;
	x0(22) = 0.0;
	x0(23) = 0.0;
	x0(24) = 0.0;
	x0(25) = 10.0;
	x0(26) = 0.0;
	x0(27) = 0.0;
	x0(28) = 200.0;
	x0(29) = 0.0;
	x0(30) = 0.0;
	x0(31) = 0.0;
	x0(32) = 300.0;
	x0(33) = 0.0;
	x0(34) = 42.7798;
	x0(35) = 8.05772E-12;
	x0(36) = 3.14554E-8;
	x0(37) = 5.02914E-8;
	x0(38) = 3.39885;
	x0(39) = 0.955337;
	x0(40) = 0.0;
	x0(41) = 100.0;
	x0(42) = 0.0;
	x0(43) = 0.955337;
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
	x0(55) = 3000.0;


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

% Compartment: id = Default, name = Default
% Warning compartment Default has no rule and is not constant
% Parameter:   id =  mu, name = mu
% Warning parameter mu is not constant, it should be controlled by a Rule and/or events
	global_par_mu=0.0;
% Parameter:   id =  scal, name = scal
% Warning parameter scal is not constant, it should be controlled by a Rule and/or events
	global_par_scal=1.0;
% Parameter:   id =  scall, name = scall
% Warning parameter scall is not constant, it should be controlled by a Rule and/or events
	global_par_scall=0.6;
% Parameter:   id =  scalll, name = scalll
% Warning parameter scalll is not constant, it should be controlled by a Rule and/or events
	global_par_scalll=30.0;
% Parameter:   id =  tE3P_max, name = tE3P_max
% Warning parameter tE3P_max is not constant, it should be controlled by a Rule and/or events
	global_par_tE3P_max=65.0;
% Parameter:   id =  tERKP_max, name = tERKP_max
% Warning parameter tERKP_max is not constant, it should be controlled by a Rule and/or events
	global_par_tERKP_max=10.0;
% Parameter:   id =  pAkt_max, name = pAkt_max
% Warning parameter pAkt_max is not constant, it should be controlled by a Rule and/or events
	global_par_pAkt_max=91.0;
% Parameter:   id =  E3_0, name = E3_0
% Warning parameter E3_0 is not constant, it should be controlled by a Rule and/or events
	global_par_E3_0=0.0;
% Parameter:   id =  PI0, name = PI0
% Warning parameter PI0 is not constant, it should be controlled by a Rule and/or events
	global_par_PI0=70.0;
% Parameter:   id =  Akt0, name = Akt0
% Warning parameter Akt0 is not constant, it should be controlled by a Rule and/or events
	global_par_Akt0=10.0;
% Parameter:   id =  bpV, name = bpV
% Warning parameter bpV is not constant, it should be controlled by a Rule and/or events
	global_par_bpV=0.0;
% Parameter:   id =  LY, name = LY
% Warning parameter LY is not constant, it should be controlled by a Rule and/or events
	global_par_LY=0.0;
% Parameter:   id =  PI3K_CY, name = PI3K_CY
% Warning parameter PI3K_CY is not constant, it should be controlled by a Rule and/or events
	global_par_PI3K_CY=0.0;
% Parameter:   id =  k1, name = k1
% Warning parameter k1 is not constant, it should be controlled by a Rule and/or events
	global_par_k1=0.005;
% Parameter:   id =  Kd_1, name = Kd_1
% Warning parameter Kd_1 is not constant, it should be controlled by a Rule and/or events
	global_par_Kd_1=600.0;
% Parameter:   id =  k2, name = k2
% Warning parameter k2 is not constant, it should be controlled by a Rule and/or events
	global_par_k2=10.0;
% Parameter:   id =  Kd_2, name = Kd_2
% Warning parameter Kd_2 is not constant, it should be controlled by a Rule and/or events
	global_par_Kd_2=10.0;
% Parameter:   id =  k51, name = k51
% Warning parameter k51 is not constant, it should be controlled by a Rule and/or events
	global_par_k51=0.01;
% Parameter:   id =  k53, name = k53
% Warning parameter k53 is not constant, it should be controlled by a Rule and/or events
	global_par_k53=0.01;
% Parameter:   id =  k3, name = k3
% Warning parameter k3 is not constant, it should be controlled by a Rule and/or events
	global_par_k3=1.0;
% Parameter:   id =  Kd_3, name = Kd_3
% Warning parameter Kd_3 is not constant, it should be controlled by a Rule and/or events
	global_par_Kd_3=0.1;
% Parameter:   id =  V4, name = V4
% Warning parameter V4 is not constant, it should be controlled by a Rule and/or events
	global_par_V4=10.0;
% Parameter:   id =  K4, name = K4
% Warning parameter K4 is not constant, it should be controlled by a Rule and/or events
	global_par_K4=50.0;
% Parameter:   id =  k5, name = k5
% Warning parameter k5 is not constant, it should be controlled by a Rule and/or events
	global_par_k5=0.06;
% Parameter:   id =  Kd_5, name = Kd_5
% Warning parameter Kd_5 is not constant, it should be controlled by a Rule and/or events
	global_par_Kd_5=1.0;
% Parameter:   id =  k6, name = k6
% Warning parameter k6 is not constant, it should be controlled by a Rule and/or events
	global_par_k6=12.0;
% Parameter:   id =  k_6, name = k_6
% Warning parameter k_6 is not constant, it should be controlled by a Rule and/or events
	global_par_k_6=3.0;
% Parameter:   id =  k7, name = k7
% Warning parameter k7 is not constant, it should be controlled by a Rule and/or events
	global_par_k7=36.0;
% Parameter:   id =  Kd_7, name = Kd_7
% Warning parameter Kd_7 is not constant, it should be controlled by a Rule and/or events
	global_par_Kd_7=9.0;
% Parameter:   id =  k8, name = k8
% Warning parameter k8 is not constant, it should be controlled by a Rule and/or events
	global_par_k8=12.0;
% Parameter:   id =  Kd_8, name = Kd_8
% Warning parameter Kd_8 is not constant, it should be controlled by a Rule and/or events
	global_par_Kd_8=0.1;
% Parameter:   id =  k9, name = k9
% Warning parameter k9 is not constant, it should be controlled by a Rule and/or events
	global_par_k9=35.0;
% Parameter:   id =  k_9, name = k_9
% Warning parameter k_9 is not constant, it should be controlled by a Rule and/or events
	global_par_k_9=0.0;
% Parameter:   id =  V10, name = V10
% Warning parameter V10 is not constant, it should be controlled by a Rule and/or events
	global_par_V10=0.0154;
% Parameter:   id =  K10, name = K10
% Warning parameter K10 is not constant, it should be controlled by a Rule and/or events
	global_par_K10=340.0;
% Parameter:   id =  k27, name = k27
% Warning parameter k27 is not constant, it should be controlled by a Rule and/or events
	global_par_k27=3.0;
% Parameter:   id =  Kd_27, name = Kd_27
% Warning parameter Kd_27 is not constant, it should be controlled by a Rule and/or events
	global_par_Kd_27=1.0;
% Parameter:   id =  k28, name = k28
% Warning parameter k28 is not constant, it should be controlled by a Rule and/or events
	global_par_k28=300.0;
% Parameter:   id =  k_28, name = k_28
% Warning parameter k_28 is not constant, it should be controlled by a Rule and/or events
	global_par_k_28=0.0;
% Parameter:   id =  k29, name = k29
% Warning parameter k29 is not constant, it should be controlled by a Rule and/or events
	global_par_k29=13520.0;
% Parameter:   id =  k_29, name = k_29
% Warning parameter k_29 is not constant, it should be controlled by a Rule and/or events
	global_par_k_29=0.0;
% Parameter:   id =  V30, name = V30
% Warning parameter V30 is not constant, it should be controlled by a Rule and/or events
	global_par_V30=900.0;
% Parameter:   id =  k11, name = k11
% Warning parameter k11 is not constant, it should be controlled by a Rule and/or events
	global_par_k11=6.0;
% Parameter:   id =  K11, name = K11
% Warning parameter K11 is not constant, it should be controlled by a Rule and/or events
	global_par_K11=0.18;
% Parameter:   id =  V12, name = V12
% Warning parameter V12 is not constant, it should be controlled by a Rule and/or events
	global_par_V12=3.0;
% Parameter:   id =  K12, name = K12
% Warning parameter K12 is not constant, it should be controlled by a Rule and/or events
	global_par_K12=0.1;
% Parameter:   id =  k13, name = k13
% Warning parameter k13 is not constant, it should be controlled by a Rule and/or events
	global_par_k13=1.0;
% Parameter:   id =  K13, name = K13
% Warning parameter K13 is not constant, it should be controlled by a Rule and/or events
	global_par_K13=11.7;
% Parameter:   id =  k14, name = k14
% Warning parameter k14 is not constant, it should be controlled by a Rule and/or events
	global_par_k14=0.6;
% Parameter:   id =  K14, name = K14
% Warning parameter K14 is not constant, it should be controlled by a Rule and/or events
	global_par_K14=50.0;
% Parameter:   id =  E_raf, name = E_raf
% Warning parameter E_raf is not constant, it should be controlled by a Rule and/or events
	global_par_E_raf=7.0;
% Parameter:   id =  k15, name = k15
% Warning parameter k15 is not constant, it should be controlled by a Rule and/or events
	global_par_k15=2.1;
% Parameter:   id =  K15, name = K15
% Warning parameter K15 is not constant, it should be controlled by a Rule and/or events
	global_par_K15=1.0;
% Parameter:   id =  k16, name = k16
% Warning parameter k16 is not constant, it should be controlled by a Rule and/or events
	global_par_k16=0.06;
% Parameter:   id =  Kd_16, name = Kd_16
% Warning parameter Kd_16 is not constant, it should be controlled by a Rule and/or events
	global_par_Kd_16=1.0;
% Parameter:   id =  k16_kat, name = k16_kat
% Warning parameter k16_kat is not constant, it should be controlled by a Rule and/or events
	global_par_k16_kat=0.6;
% Parameter:   id =  k18, name = k18
% Warning parameter k18 is not constant, it should be controlled by a Rule and/or events
	global_par_k18=0.6;
% Parameter:   id =  k22, name = k22
% Warning parameter k22 is not constant, it should be controlled by a Rule and/or events
	global_par_k22=0.06;
% Parameter:   id =  k23, name = k23
% Warning parameter k23 is not constant, it should be controlled by a Rule and/or events
	global_par_k23=1.2;
% Parameter:   id =  K23, name = K23
% Warning parameter K23 is not constant, it should be controlled by a Rule and/or events
	global_par_K23=10.0;
% Parameter:   id =  V24, name = V24
% Warning parameter V24 is not constant, it should be controlled by a Rule and/or events
	global_par_V24=1.8;
% Parameter:   id =  K24, name = K24
% Warning parameter K24 is not constant, it should be controlled by a Rule and/or events
	global_par_K24=10.0;
% Parameter:   id =  k31, name = k31
% Warning parameter k31 is not constant, it should be controlled by a Rule and/or events
	global_par_k31=0.03;
% Parameter:   id =  K_d31, name = K_d31
% Warning parameter K_d31 is not constant, it should be controlled by a Rule and/or events
	global_par_K_d31=100.0;
% Parameter:   id =  k55, name = k55
% Warning parameter k55 is not constant, it should be controlled by a Rule and/or events
	global_par_k55=30.0;
% Parameter:   id =  k56, name = k56
% Warning parameter k56 is not constant, it should be controlled by a Rule and/or events
	global_par_k56=30.0;
% Parameter:   id =  k32, name = k32
% Warning parameter k32 is not constant, it should be controlled by a Rule and/or events
	global_par_k32=8000.0;
% Parameter:   id =  Kd_32, name = Kd_32
% Warning parameter Kd_32 is not constant, it should be controlled by a Rule and/or events
	global_par_Kd_32=0.01;
% Parameter:   id =  k33, name = k33
% Warning parameter k33 is not constant, it should be controlled by a Rule and/or events
	global_par_k33=15.0;
% Parameter:   id =  k34, name = k34
% Warning parameter k34 is not constant, it should be controlled by a Rule and/or events
	global_par_k34=3.6;
% Parameter:   id =  V35, name = V35
% Warning parameter V35 is not constant, it should be controlled by a Rule and/or events
	global_par_V35=150.0;
% Parameter:   id =  K35, name = K35
% Warning parameter K35 is not constant, it should be controlled by a Rule and/or events
	global_par_K35=2.0;
% Parameter:   id =  k36, name = k36
% Warning parameter k36 is not constant, it should be controlled by a Rule and/or events
	global_par_k36=1.0;
% Parameter:   id =  Kd_36, name = Kd_36
% Warning parameter Kd_36 is not constant, it should be controlled by a Rule and/or events
	global_par_Kd_36=2.2;
% Parameter:   id =  k37, name = k37
% Warning parameter k37 is not constant, it should be controlled by a Rule and/or events
	global_par_k37=150.0;
% Parameter:   id =  k38, name = k38
% Warning parameter k38 is not constant, it should be controlled by a Rule and/or events
	global_par_k38=150.0;
% Parameter:   id =  k39, name = k39
% Warning parameter k39 is not constant, it should be controlled by a Rule and/or events
	global_par_k39=15000.0;
% Parameter:   id =  Kd_39, name = Kd_39
% Warning parameter Kd_39 is not constant, it should be controlled by a Rule and/or events
	global_par_Kd_39=20.0;
% Parameter:   id =  V40, name = V40
% Warning parameter V40 is not constant, it should be controlled by a Rule and/or events
	global_par_V40=15000.0;
% Parameter:   id =  K40, name = K40
% Warning parameter K40 is not constant, it should be controlled by a Rule and/or events
	global_par_K40=0.1;
% Parameter:   id =  k41, name = k41
% Warning parameter k41 is not constant, it should be controlled by a Rule and/or events
	global_par_k41=3.0;
% Parameter:   id =  Kd_41, name = Kd_41
% Warning parameter Kd_41 is not constant, it should be controlled by a Rule and/or events
	global_par_Kd_41=0.1;
% Parameter:   id =  k42, name = k42
% Warning parameter k42 is not constant, it should be controlled by a Rule and/or events
	global_par_k42=45.0;
% Parameter:   id =  k43, name = k43
% Warning parameter k43 is not constant, it should be controlled by a Rule and/or events
	global_par_k43=30.0;
% Parameter:   id =  k47, name = k47
% Warning parameter k47 is not constant, it should be controlled by a Rule and/or events
	global_par_k47=0.3;
% Parameter:   id =  k48, name = k48
% Warning parameter k48 is not constant, it should be controlled by a Rule and/or events
	global_par_k48=0.001;
% Parameter:   id =  k49, name = k49
% Warning parameter k49 is not constant, it should be controlled by a Rule and/or events
	global_par_k49=0.003;
% Parameter:   id =  Kd_49, name = Kd_49
% Warning parameter Kd_49 is not constant, it should be controlled by a Rule and/or events
	global_par_Kd_49=20000.0;
% Parameter:   id =  k50, name = k50
% Warning parameter k50 is not constant, it should be controlled by a Rule and/or events
	global_par_k50=0.6;
% Parameter:   id =  k_50, name = k_50
% Warning parameter k_50 is not constant, it should be controlled by a Rule and/or events
	global_par_k_50=0.012;
% Parameter:   id =  k57, name = k57
% Warning parameter k57 is not constant, it should be controlled by a Rule and/or events
	global_par_k57=100.0;
% Parameter:   id =  Kd_57, name = Kd_57
% Warning parameter Kd_57 is not constant, it should be controlled by a Rule and/or events
	global_par_Kd_57=10.0;
% Parameter:   id =  k58, name = k58
% Warning parameter k58 is not constant, it should be controlled by a Rule and/or events
	global_par_k58=100.0;
% Parameter:   id =  Kd_58, name = Kd_58
% Warning parameter Kd_58 is not constant, it should be controlled by a Rule and/or events
	global_par_Kd_58=80.0;
% Parameter:   id =  tPTEN, name = tPTEN
% Parameter:   id =  sens, name = sens
% Warning parameter sens is not constant, it should be controlled by a Rule and/or events
	global_par_sens=0.0;
% Parameter:   id =  pAkt, name = pAkt
% Parameter:   id =  tE3P, name = tE3P
% Parameter:   id =  tERKP, name = tERKP
% Parameter:   id =  tPTENP, name = tPTENP
% Parameter:   id =  Pool_1_, name = Pool_1_
% Warning parameter Pool_1_ is not constant, it should be controlled by a Rule and/or events
	global_par_Pool_1_=2900.0;
% Parameter:   id =  Pool_2_, name = Pool_2_
% Warning parameter Pool_2_ is not constant, it should be controlled by a Rule and/or events
	global_par_Pool_2_=-2920.0;
% Parameter:   id =  Pool_3_, name = Pool_3_
% Warning parameter Pool_3_ is not constant, it should be controlled by a Rule and/or events
	global_par_Pool_3_=200.0;
% Parameter:   id =  Pool_4_, name = Pool_4_
% Warning parameter Pool_4_ is not constant, it should be controlled by a Rule and/or events
	global_par_Pool_4_=50.0;
% Parameter:   id =  Pool_5_, name = Pool_5_
% Warning parameter Pool_5_ is not constant, it should be controlled by a Rule and/or events
	global_par_Pool_5_=300.0;
% Parameter:   id =  Pool_6_, name = Pool_6_
% Warning parameter Pool_6_ is not constant, it should be controlled by a Rule and/or events
	global_par_Pool_6_=0.0;
% Parameter:   id =  Pool_7_, name = Pool_7_
% Warning parameter Pool_7_ is not constant, it should be controlled by a Rule and/or events
	global_par_Pool_7_=10.0;
% Parameter:   id =  Pool_8_, name = Pool_8_
% Warning parameter Pool_8_ is not constant, it should be controlled by a Rule and/or events
	global_par_Pool_8_=100.0;
% Parameter:   id =  Pool_9_, name = Pool_9_
% Warning parameter Pool_9_ is not constant, it should be controlled by a Rule and/or events
	global_par_Pool_9_=10.0;
% Parameter:   id =  Pool_10_, name = Pool_10_
% Warning parameter Pool_10_ is not constant, it should be controlled by a Rule and/or events
	global_par_Pool_10_=10.0;
% Parameter:   id =  Pool_11_, name = Pool_11_
% Warning parameter Pool_11_ is not constant, it should be controlled by a Rule and/or events
	global_par_Pool_11_=100.0;
% Parameter:   id =  Pool_12_, name = Pool_12_
% Warning parameter Pool_12_ is not constant, it should be controlled by a Rule and/or events
	global_par_Pool_12_=120.0;
% Parameter:   id =  Pool_13_, name = Pool_13_
% Warning parameter Pool_13_ is not constant, it should be controlled by a Rule and/or events
	global_par_Pool_13_=100.0;
% Parameter:   id =  Pool_14_, name = Pool_14_
% Warning parameter Pool_14_ is not constant, it should be controlled by a Rule and/or events
	global_par_Pool_14_=100.0;
% assignmentRule: variable = tE3P
	global_par_tE3P=(x(6)+x(29)+x(42)+x(8)+x(9)+x(11))/global_par_tE3P_max;
% assignmentRule: variable = tPTEN
	global_par_tPTEN=x(38)+x(34)+x(39)+x(43)+x(36)+x(37);
% assignmentRule: variable = tPTENP
	global_par_tPTENP=x(38)/7.6;
% assignmentRule: variable = pAkt
	global_par_pAkt=(x(46)+x(40)+x(47)+x(33))/global_par_pAkt_max;
% assignmentRule: variable = tERKP
	global_par_tERKP=(x(26)+x(51))/global_par_tERKP_max;

% Reaction: id = R1, name = R1
	reaction_R1=global_par_k1*(x(1)*x(55)-global_par_Kd_1*x(3));

% Reaction: id = R2, name = R2
	reaction_R2=global_par_k2*(x(3)*x(4)-global_par_Kd_2*x(5));

% Reaction: id = R3, name = R3
	reaction_R3=global_par_k3*(x(5)-global_par_Kd_3*x(6));

% Reaction: id = R4, name = R4
	reaction_R4=global_par_V4*x(6)/(global_par_K4+x(6));

% Reaction: id = R5, name = R5
	reaction_R5=global_par_k5*(x(6)*x(7)-global_par_Kd_5*x(8));

% Reaction: id = R6, name = R6
	reaction_R6=global_par_k6*x(8)-global_par_k_6*x(9);

% Reaction: id = R7, name = R7
	reaction_R7=global_par_k7*(x(9)*x(10)-global_par_Kd_7*x(11));

% Reaction: id = R8, name = R8
	reaction_R8=global_par_k8*(x(11)-global_par_Kd_8*x(6)*x(49));

% Reaction: id = R9, name = R9
	reaction_R9=global_par_k9*(x(49)-global_par_k_9*x(54)*x(10));

% Reaction: id = R10, name = R10
	reaction_R10=global_par_V10*x(54)/(global_par_K10+x(54));

% Reaction: id = R11, name = R11
	reaction_R11=global_par_k11*x(14)*x(49)/(global_par_K11+x(14));

% Reaction: id = R12, name = R12
	reaction_R12=global_par_V12*x(53)/(global_par_K12+x(53));

% Reaction: id = R13, name = R13
	reaction_R13=global_par_k13*x(16)*x(53)/(global_par_K13+x(16));

% Reaction: id = R14, name = R14
	reaction_R14=global_par_k14*x(52)*(x(46)+global_par_E_raf)/(x(52)+global_par_K14);

% Reaction: id = R15, name = R15
	reaction_R15=global_par_k15*x(18)*x(52)/(global_par_K15+x(18));

% Reaction: id = R16_1, name = R16_1
	reaction_R16_1=global_par_k16*x(19)*x(20);

% Reaction: id = R16_2, name = R16_2
	reaction_R16_2=global_par_k16_kat*x(21);

% Reaction: id = R16_3, name = R16_3
	reaction_R16_3=global_par_k18*x(22);

% Reaction: id = R17_1, name = R17_1
	reaction_R17_1=global_par_k15*x(19)*x(52)/(global_par_K15+x(19));

% Reaction: id = R18_1, name = R18_1
	reaction_R18_1=global_par_k16*(x(20)*x(45)-global_par_Kd_16*x(24));

% Reaction: id = R18_2, name = R18_2
	reaction_R18_2=global_par_k16_kat*x(24);

% Reaction: id = R18_3, name = R18_3
	reaction_R18_3=global_par_k22*x(21);

% Reaction: id = R19, name = R19
	reaction_R19=global_par_k23*x(25)*x(45)/(global_par_K23+x(25));

% Reaction: id = R20, name = R20
	reaction_R20=global_par_V24*x(26)/(global_par_K24+x(26));

% Reaction: id = R21, name = R21
	reaction_R21=global_par_k23*x(26)*x(45)/(global_par_K23+x(26));

% Reaction: id = R22, name = R22
	reaction_R22=global_par_V24*x(51)/(global_par_K24+x(51));

% Reaction: id = R23, name = R23
	reaction_R23=global_par_k27*(x(6)*x(28)-global_par_Kd_27*x(29));

% Reaction: id = R24, name = R24
	reaction_R24=global_par_k28*(x(29)-global_par_k_28*x(42));

% Reaction: id = R25, name = R25
	reaction_R25=global_par_k29*x(42)-global_par_k_29*x(6)*x(31);

% Reaction: id = R26, name = R26
	reaction_R26=global_par_V30*x(31);

% Reaction: id = R27_1, name = R27_1
	reaction_R27_1=global_par_k31*(x(32)*x(31)-global_par_K_d31*x(44));

% Reaction: id = R28_1, name = R28_1
	reaction_R28_1=global_par_k32*(x(35)*x(34)-global_par_Kd_32*x(36));

% Reaction: id = R28_2, name = R28_2
	reaction_R28_2=global_par_k33*x(36);

% Reaction: id = R28_3, name = R28_3
	reaction_R28_3=global_par_k34*x(37);

% Reaction: id = R28_4, name = R28_4
	reaction_R28_4=global_par_V35*x(34)/(global_par_K35+x(34));

% Reaction: id = R28_5, name = R28_5
	reaction_R28_5=global_par_k36*(x(34)*x(38)-global_par_Kd_36*x(39));

% Reaction: id = R28_6, name = R28_6
	reaction_R28_6=global_par_k37*x(39);

% Reaction: id = R28_7, name = R28_7
	reaction_R28_7=global_par_k38*x(43);

% Reaction: id = R29, name = R29
	reaction_R29=global_par_k39*(x(35)*x(41)-global_par_Kd_39*x(30));

% Reaction: id = R30, name = R30
	reaction_R30=global_par_V40*x(30)/(global_par_K40+x(30));

% Reaction: id = R31_1, name = R31_1
	reaction_R31_1=global_par_k41*x(40)*x(20);

% Reaction: id = R31_2, name = R31_2
	reaction_R31_2=global_par_k42*x(33);

% Reaction: id = R31_3, name = R31_3
	reaction_R31_3=global_par_k43*x(23);

% Reaction: id = R32, name = R32
	reaction_R32=global_par_V40*x(40)/(global_par_K40+x(40));

% Reaction: id = R33_1, name = R33_1
	reaction_R33_1=global_par_k41*(x(46)*x(20)-global_par_Kd_41*x(47));

% Reaction: id = R33_2, name = R33_2
	reaction_R33_2=global_par_k42*x(47);

% Reaction: id = R33_3, name = R33_3
	reaction_R33_3=global_par_k47*x(33);

% Reaction: id = R34, name = R34
	reaction_R34=global_par_k48*x(6);

% Reaction: id = R35, name = R35
	reaction_R35=global_par_k49*(x(48)*x(4)-global_par_Kd_49*x(12));

% Reaction: id = R36, name = R36
	reaction_R36=global_par_k50*x(12)-global_par_k_50*x(50);

% Reaction: id = R37, name = R37
	reaction_R37=global_par_k51*x(3);

% Reaction: id = R38, name = R38
	reaction_R38=global_par_k2*(x(27)*x(4)-global_par_Kd_2*x(5));

% Reaction: id = R39, name = R39
	reaction_R39=global_par_k53*x(5);

% Reaction: id = R40, name = R40
	reaction_R40=global_par_k3*(x(17)-global_par_Kd_3*x(6));

% Reaction: id = R41, name = R41
	reaction_R41=global_par_k55*x(44);

% Reaction: id = R42, name = R42
	reaction_R42=global_par_k56*x(15);

% Reaction: id = R43, name = R43
	reaction_R43=global_par_k57*(x(34)*global_par_bpV-global_par_Kd_57*x(13));

% Reaction: id = R44, name = R44
	reaction_R44=global_par_k58*(x(28)*global_par_LY-global_par_Kd_58*x(2));

	xdot=zeros(55,1);
	
% Species:   id = E3, name = E3, affected by kineticLaw
	xdot(1) = (1/(compartment_Default))*((-1.0 * reaction_R1));
	
% Species:   id = PI3K_LY, name = PI3K_LY, affected by kineticLaw
	xdot(2) = (1/(compartment_Default))*(( 1.0 * reaction_R44));
	
% Species:   id = E3H, name = E3H, affected by kineticLaw
	xdot(3) = (1/(compartment_Default))*(( 1.0 * reaction_R1) + (-1.0 * reaction_R2) + (-1.0 * reaction_R37));
	
% Species:   id = E2, name = E2, affected by kineticLaw
	xdot(4) = (1/(compartment_Default))*((-1.0 * reaction_R2) + (-1.0 * reaction_R35) + (-1.0 * reaction_R38));
	
% Species:   id = E23H, name = E23H, affected by kineticLaw
	xdot(5) = (1/(compartment_Default))*(( 1.0 * reaction_R2) + (-1.0 * reaction_R3) + ( 1.0 * reaction_R4) + ( 1.0 * reaction_R38) + (-1.0 * reaction_R39));
	
% Species:   id = E23HP, name = E23HP, affected by kineticLaw
	xdot(6) = (1/(compartment_Default))*(( 1.0 * reaction_R3) + (-1.0 * reaction_R4) + (-1.0 * reaction_R5) + ( 1.0 * reaction_R8) + (-1.0 * reaction_R23) + ( 1.0 * reaction_R25) + (-1.0 * reaction_R34) + ( 1.0 * reaction_R40));
	
% Species:   id = Shc, name = Shc, affected by kineticLaw
	xdot(7) = (1/(compartment_Default))*((-1.0 * reaction_R5) + ( 1.0 * reaction_R10));
	
% Species:   id = E23HP_Shc, name = E23HP_Shc, affected by kineticLaw
	xdot(8) = (1/(compartment_Default))*(( 1.0 * reaction_R5) + (-1.0 * reaction_R6));
	
% Species:   id = E23HP_ShcP, name = E23HP_ShcP, affected by kineticLaw
	xdot(9) = (1/(compartment_Default))*(( 1.0 * reaction_R6) + (-1.0 * reaction_R7));
	
% Species:   id = GS, name = GS, affected by kineticLaw
	xdot(10) = (1/(compartment_Default))*((-1.0 * reaction_R7) + ( 1.0 * reaction_R9));
	
% Species:   id = E23HP_ShGS, name = E23HP_ShGS, affected by kineticLaw
	xdot(11) = (1/(compartment_Default))*(( 1.0 * reaction_R7) + (-1.0 * reaction_R8));
	
% Species:   id = E2_Per, name = E2_Per, affected by kineticLaw
	xdot(12) = (1/(compartment_Default))*(( 1.0 * reaction_R35) + (-1.0 * reaction_R36));
	
% Species:   id = PTEN_bpV, name = PTEN_bpV, affected by kineticLaw
	xdot(13) = (1/(compartment_Default))*(( 1.0 * reaction_R43));
	
% Species:   id = RasGDP, name = RasGDP, affected by kineticLaw
	xdot(14) = (1/(compartment_Default))*((-1.0 * reaction_R11) + ( 1.0 * reaction_R12));
	
% Species:   id = PI3Ka_PIP3, name = PI3Ka_PIP3, affected by kineticLaw
	xdot(15) = (1/(compartment_Default))*(( 1.0 * reaction_R41) + (-1.0 * reaction_R42));
	
% Species:   id = Raf, name = Raf, affected by kineticLaw
	xdot(16) = (1/(compartment_Default))*((-1.0 * reaction_R13) + ( 1.0 * reaction_R14));
	
% Species:   id = E23H_C, name = E23H_C, affected by kineticLaw
	xdot(17) = (1/(compartment_Default))*(( 1.0 * reaction_R39) + (-1.0 * reaction_R40));
	
% Species:   id = MEK, name = MEK, affected by kineticLaw
	xdot(18) = (1/(compartment_Default))*((-1.0 * reaction_R15) + ( 1.0 * reaction_R16_3));
	
% Species:   id = MEKP, name = MEKP, affected by kineticLaw
	xdot(19) = (1/(compartment_Default))*(( 1.0 * reaction_R15) + (-1.0 * reaction_R16_1) + (-1.0 * reaction_R17_1) + ( 1.0 * reaction_R18_3));
	
% Species:   id = PP2A, name = PP2A, affected by kineticLaw
	xdot(20) = (1/(compartment_Default))*((-1.0 * reaction_R16_1) + ( 1.0 * reaction_R16_3) + (-1.0 * reaction_R18_1) + ( 1.0 * reaction_R18_3) + (-1.0 * reaction_R31_1) + ( 1.0 * reaction_R31_3) + (-1.0 * reaction_R33_1) + ( 1.0 * reaction_R33_3));
	
% Species:   id = MEKP_PP2A, name = MEKP_PP2A, affected by kineticLaw
	xdot(21) = (1/(compartment_Default))*(( 1.0 * reaction_R16_1) + (-1.0 * reaction_R16_2) + ( 1.0 * reaction_R18_2) + (-1.0 * reaction_R18_3));
	
% Species:   id = MEK_PP2A, name = MEK_PP2A, affected by kineticLaw
	xdot(22) = (1/(compartment_Default))*(( 1.0 * reaction_R16_2) + (-1.0 * reaction_R16_3));
	
% Species:   id = Akt_PIP3_PP2A, name = Akt_PIP3_PP2A, affected by kineticLaw
	xdot(23) = (1/(compartment_Default))*(( 1.0 * reaction_R31_2) + (-1.0 * reaction_R31_3));
	
% Species:   id = MEKPP_PP2A, name = MEKPP_PP2A, affected by kineticLaw
	xdot(24) = (1/(compartment_Default))*(( 1.0 * reaction_R18_1) + (-1.0 * reaction_R18_2));
	
% Species:   id = ERK, name = ERK, affected by kineticLaw
	xdot(25) = (1/(compartment_Default))*((-1.0 * reaction_R19) + ( 1.0 * reaction_R20));
	
% Species:   id = ERKP, name = ERKP, affected by kineticLaw
	xdot(26) = (1/(compartment_Default))*(( 1.0 * reaction_R19) + (-1.0 * reaction_R20) + (-1.0 * reaction_R21) + ( 1.0 * reaction_R22));
	
% Species:   id = E3H_C, name = E3H_C, affected by kineticLaw
	xdot(27) = (1/(compartment_Default))*(( 1.0 * reaction_R37) + (-1.0 * reaction_R38));
	
% Species:   id = PI3K, name = PI3K, affected by kineticLaw
	xdot(28) = (1/(compartment_Default))*((-1.0 * reaction_R23) + ( 1.0 * reaction_R26) + (-1.0 * reaction_R44));
	
% Species:   id = E23HP_PI3K, name = E23HP_PI3K, affected by kineticLaw
	xdot(29) = (1/(compartment_Default))*(( 1.0 * reaction_R23) + (-1.0 * reaction_R24));
	
% Species:   id = Akt_PIP3, name = Akt_PIP3, affected by kineticLaw
	xdot(30) = (1/(compartment_Default))*(( 1.0 * reaction_R29) + (-1.0 * reaction_R30) + ( 1.0 * reaction_R31_3));
	
% Species:   id = PI3Ka, name = PI3Ka, affected by kineticLaw
	xdot(31) = (1/(compartment_Default))*(( 1.0 * reaction_R25) + (-1.0 * reaction_R26) + (-1.0 * reaction_R27_1) + ( 1.0 * reaction_R42));
	
% Species:   id = PI2, name = PI2, affected by kineticLaw
	xdot(32) = (1/(compartment_Default))*((-1.0 * reaction_R27_1) + ( 1.0 * reaction_R28_3));
	
% Species:   id = Akt_PI_P_PP2A, name = Akt_PI_P_PP2A, affected by kineticLaw
	xdot(33) = (1/(compartment_Default))*(( 1.0 * reaction_R31_1) + (-1.0 * reaction_R31_2) + ( 1.0 * reaction_R33_2) + (-1.0 * reaction_R33_3));
	
% Species:   id = PTEN, name = PTEN, affected by kineticLaw
	xdot(34) = (1/(compartment_Default))*((-1.0 * reaction_R28_1) + ( 1.0 * reaction_R28_3) + (-1.0 * reaction_R28_4) + (-1.0 * reaction_R28_5) + ( 2.0 * reaction_R28_7) + (-1.0 * reaction_R43));
	
% Species:   id = PIP3, name = PIP3, affected by kineticLaw
	xdot(35) = (1/(compartment_Default))*((-1.0 * reaction_R28_1) + (-1.0 * reaction_R29) + ( 1.0 * reaction_R42));
	
% Species:   id = PTEN_PIP3, name = PTEN_PIP3, affected by kineticLaw
	xdot(36) = (1/(compartment_Default))*(( 1.0 * reaction_R28_1) + (-1.0 * reaction_R28_2));
	
% Species:   id = PTEN_PI, name = PTEN_PI, affected by kineticLaw
	xdot(37) = (1/(compartment_Default))*(( 1.0 * reaction_R28_2) + (-1.0 * reaction_R28_3));
	
% Species:   id = PTENP, name = PTENP, affected by kineticLaw
	xdot(38) = (1/(compartment_Default))*(( 1.0 * reaction_R28_4) + (-1.0 * reaction_R28_5));
	
% Species:   id = PTENP_PTEN, name = PTENP_PTEN, affected by kineticLaw
	xdot(39) = (1/(compartment_Default))*(( 1.0 * reaction_R28_5) + (-1.0 * reaction_R28_6));
	
% Species:   id = Akt_PI_P, name = Akt_PI_P, affected by kineticLaw
	xdot(40) = (1/(compartment_Default))*(( 1.0 * reaction_R30) + (-1.0 * reaction_R31_1) + (-1.0 * reaction_R32) + ( 1.0 * reaction_R33_3));
	
% Species:   id = Akt, name = Akt, affected by kineticLaw
	xdot(41) = (1/(compartment_Default))*((-1.0 * reaction_R29));
	
% Species:   id = E23HP_PI3Ka, name = E23HP_PI3Ka, affected by kineticLaw
	xdot(42) = (1/(compartment_Default))*(( 1.0 * reaction_R24) + (-1.0 * reaction_R25));
	
% Species:   id = PTEN_PTEN, name = PTEN_PTEN, affected by kineticLaw
	xdot(43) = (1/(compartment_Default))*(( 1.0 * reaction_R28_6) + (-1.0 * reaction_R28_7));
	
% Species:   id = PI3Ka_PI, name = PI3Ka_PI, affected by kineticLaw
	xdot(44) = (1/(compartment_Default))*(( 1.0 * reaction_R27_1) + (-1.0 * reaction_R41));
	
% Species:   id = MEKPP, name = MEKPP, affected by kineticLaw
	xdot(45) = (1/(compartment_Default))*(( 1.0 * reaction_R17_1) + (-1.0 * reaction_R18_1));
	
% Species:   id = Akt_PI_PP, name = Akt_PI_PP, affected by kineticLaw
	xdot(46) = (1/(compartment_Default))*(( 1.0 * reaction_R32) + (-1.0 * reaction_R33_1));
	
% Species:   id = Akt_PI_PP_PP2A, name = Akt_PI_PP_PP2A, affected by kineticLaw
	xdot(47) = (1/(compartment_Default))*(( 1.0 * reaction_R33_1) + (-1.0 * reaction_R33_2));
	
% Species:   id = Per, name = Per, affected by kineticLaw
	xdot(48) = (1/(compartment_Default))*((-1.0 * reaction_R35));
	
% Species:   id = ShGS, name = ShGS, affected by kineticLaw
	xdot(49) = (1/(compartment_Default))*(( 1.0 * reaction_R8) + (-1.0 * reaction_R9));
	
% Species:   id = E2Per, name = E2Per, affected by kineticLaw
	xdot(50) = (1/(compartment_Default))*(( 1.0 * reaction_R36));
	
% Species:   id = ERKPP, name = ERKPP, affected by kineticLaw
	xdot(51) = (1/(compartment_Default))*(( 1.0 * reaction_R21) + (-1.0 * reaction_R22));
	
% Species:   id = Rafa, name = Rafa, affected by kineticLaw
	xdot(52) = (1/(compartment_Default))*(( 1.0 * reaction_R13) + (-1.0 * reaction_R14));
	
% Species:   id = RasGTP, name = RasGTP, affected by kineticLaw
	xdot(53) = (1/(compartment_Default))*(( 1.0 * reaction_R11) + (-1.0 * reaction_R12));
	
% Species:   id = ShcP, name = ShcP, affected by kineticLaw
	xdot(54) = (1/(compartment_Default))*(( 1.0 * reaction_R9) + (-1.0 * reaction_R10));
	
% Species:   id = HRG, name = HRG, affected by kineticLaw
	xdot(55) = (1/(compartment_Default))*((-1.0 * reaction_R1));
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


