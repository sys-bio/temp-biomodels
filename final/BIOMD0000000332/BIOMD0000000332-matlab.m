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
% Model name = Bungay2006_Plasma
%
% is http://identifiers.org/biomodels.db/MODEL1105090001
% is http://identifiers.org/biomodels.db/BIOMD0000000332
% isDescribedBy http://identifiers.org/pubmed/16838084
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000334
%


function main()
%Initial conditions vector
	x0=zeros(78,1);
	x0(1) = 1400.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 20.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 10.0;
	x0(10) = 0.0;
	x0(11) = 0.1;
	x0(12) = 0.0;
	x0(13) = 0.7;
	x0(14) = 0.0;
	x0(15) = 0.0;
	x0(16) = 0.0;
	x0(17) = 90.0;
	x0(18) = 0.0;
	x0(19) = 0.0;
	x0(20) = 0.0;
	x0(21) = 170.0;
	x0(22) = 0.0;
	x0(23) = 0.0;
	x0(24) = 0.0;
	x0(25) = 0.0;
	x0(26) = 0.0;
	x0(27) = 300.0;
	x0(28) = 0.0;
	x0(29) = 0.0;
	x0(30) = 0.0;
	x0(31) = 0.0;
	x0(32) = 0.0;
	x0(33) = 60.0;
	x0(34) = 0.0;
	x0(35) = 0.005;
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
	x0(53) = 30.0;
	x0(54) = 0.0;
	x0(55) = 0.0;
	x0(56) = 0.0;
	x0(57) = 0.0;
	x0(58) = 2.5;
	x0(59) = 3400.0;
	x0(60) = 0.0;
	x0(61) = 0.0;
	x0(62) = 0.0;
	x0(63) = 0.0;
	x0(64) = 0.0;
	x0(65) = 0.0;
	x0(66) = 0.0;
	x0(67) = 0.0;
	x0(68) = 0.0;
	x0(69) = 1.0;
	x0(70) = 0.0;
	x0(71) = 0.0;
	x0(72) = 0.0;
	x0(73) = 0.0;
	x0(74) = 170000.0;
	x0(75) = 2600.0;
	x0(76) = 0.0;
	x0(77) = 0.0;
	x0(78) = 0.0;


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

% Compartment: id = compartment, name = Cell, constant
	compartment_compartment=1.0;
% Parameter:   id =  konII, name = konII
	global_par_konII=0.0043;
% Parameter:   id =  nva, name = nva
	global_par_nva=100.0;
% Parameter:   id =  koffII, name = koffII
	global_par_koffII=1.0;
% Parameter:   id =  konmIIa, name = konmIIa
	global_par_konmIIa=0.05;
% Parameter:   id =  koffmIIa, name = koffmIIa
	global_par_koffmIIa=0.475;
% Parameter:   id =  konV, name = konV
	global_par_konV=0.05;
% Parameter:   id =  koffV, name = koffV
	global_par_koffV=0.145;
% Parameter:   id =  konVa, name = konVa
	global_par_konVa=0.057;
% Parameter:   id =  koffVa, name = koffVa
	global_par_koffVa=0.17;
% Parameter:   id =  konVII, name = konVII
	global_par_konVII=0.05;
% Parameter:   id =  koffVII, name = koffVII
	global_par_koffVII=0.66;
% Parameter:   id =  konVIIa, name = konVIIa
	global_par_konVIIa=0.05;
% Parameter:   id =  koffVIIa, name = koffVIIa
	global_par_koffVIIa=0.227;
% Parameter:   id =  konVIII, name = konVIII
	global_par_konVIII=0.05;
% Parameter:   id =  koffVIII, name = koffVIII
	global_par_koffVIII=0.1;
% Parameter:   id =  konVIIIa, name = konVIIIa
	global_par_konVIIIa=0.05;
% Parameter:   id =  koffVIIIa, name = koffVIIIa
	global_par_koffVIIIa=0.335;
% Parameter:   id =  konIX, name = konIX
	global_par_konIX=0.05;
% Parameter:   id =  koffIX, name = koffIX
	global_par_koffIX=0.115;
% Parameter:   id =  konIXa, name = konIXa
	global_par_konIXa=0.05;
% Parameter:   id =  koffIXa, name = koffIXa
	global_par_koffIXa=0.115;
% Parameter:   id =  konX, name = konX
	global_par_konX=0.01;
% Parameter:   id =  koffX, name = koffX
	global_par_koffX=1.9;
% Parameter:   id =  konXa, name = konXa
	global_par_konXa=0.029;
% Parameter:   id =  koffXa, name = koffXa
	global_par_koffXa=3.3;
% Parameter:   id =  konAPC, name = konAPC
	global_par_konAPC=0.05;
% Parameter:   id =  koffAPC, name = koffAPC
	global_par_koffAPC=3.5;
% Parameter:   id =  konPS, name = konPS
	global_par_konPS=0.05;
% Parameter:   id =  koffPS, name = koffPS
	global_par_koffPS=0.2;
% Parameter:   id =  konVIIIai, name = konVIIIai
	global_par_konVIIIai=0.05;
% Parameter:   id =  koffVIIIai, name = koffVIIIai
	global_par_koffVIIIai=0.335;
% Parameter:   id =  konVai, name = konVai
	global_par_konVai=0.057;
% Parameter:   id =  koffVai, name = koffVai
	global_par_koffVai=0.17;
% Parameter:   id =  konPC, name = konPC
	global_par_konPC=0.05;
% Parameter:   id =  koffPC, name = koffPC
	global_par_koffPC=11.5;
% Parameter:   id =  k1, name = k1
	global_par_k1=0.5;
% Parameter:   id =  k2, name = k2
	global_par_k2=0.005;
% Parameter:   id =  k3, name = k3
	global_par_k3=0.005;
% Parameter:   id =  k4, name = k4
	global_par_k4=0.005;
% Parameter:   id =  k5, name = k5
	global_par_k5=0.01;
% Parameter:   id =  k6, name = k6
	global_par_k6=2.09;
% Parameter:   id =  k7, name = k7
	global_par_k7=0.34;
% Parameter:   id =  k8, name = k8
	global_par_k8=0.1;
% Parameter:   id =  k9, name = k9
	global_par_k9=32.5;
% Parameter:   id =  k10, name = k10
	global_par_k10=1.5;
% Parameter:   id =  k11, name = k11
	global_par_k11=0.05;
% Parameter:   id =  k12, name = k12
	global_par_k12=44.8;
% Parameter:   id =  k13, name = k13
	global_par_k13=15.2;
% Parameter:   id =  k14, name = k14
	global_par_k14=0.1;
% Parameter:   id =  k15, name = k15
	global_par_k15=0.2;
% Parameter:   id =  k16, name = k16
	global_par_k16=1.0;
% Parameter:   id =  k17, name = k17
	global_par_k17=1.0;
% Parameter:   id =  k18, name = k18
	global_par_k18=0.1;
% Parameter:   id =  k19, name = k19
	global_par_k19=10.7;
% Parameter:   id =  k20, name = k20
	global_par_k20=8.3;
% Parameter:   id =  k21, name = k21
	global_par_k21=0.1;
% Parameter:   id =  k22, name = k22
	global_par_k22=1.0;
% Parameter:   id =  k23, name = k23
	global_par_k23=0.043;
% Parameter:   id =  k24, name = k24
	global_par_k24=0.1;
% Parameter:   id =  k25, name = k25
	global_par_k25=2.1;
% Parameter:   id =  k26, name = k26
	global_par_k26=0.023;
% Parameter:   id =  k27, name = k27
	global_par_k27=0.1;
% Parameter:   id =  k28, name = k28
	global_par_k28=6.94;
% Parameter:   id =  k29, name = k29
	global_par_k29=0.23;
% Parameter:   id =  k30, name = k30
	global_par_k30=0.1;
% Parameter:   id =  k31, name = k31
	global_par_k31=13.8;
% Parameter:   id =  k32, name = k32
	global_par_k32=0.9;
% Parameter:   id =  k33, name = k33
	global_par_k33=0.1;
% Parameter:   id =  k34, name = k34
	global_par_k34=100.0;
% Parameter:   id =  k35, name = k35
	global_par_k35=0.1;
% Parameter:   id =  k36, name = k36
	global_par_k36=66.0;
% Parameter:   id =  k37, name = k37
	global_par_k37=13.0;
% Parameter:   id =  k38, name = k38
	global_par_k38=15.0;
% Parameter:   id =  k39, name = k39
	global_par_k39=0.05;
% Parameter:   id =  k40, name = k40
	global_par_k40=44.8;
% Parameter:   id =  k41, name = k41
	global_par_k41=15.2;
% Parameter:   id =  k42, name = k42
	global_par_k42=0.1;
% Parameter:   id =  k43, name = k43
	global_par_k43=10.0;
% Parameter:   id =  k44, name = k44
	global_par_k44=1.43;
% Parameter:   id =  k45, name = k45
	global_par_k45=0.1;
% Parameter:   id =  k46, name = k46
	global_par_k46=1.6;
% Parameter:   id =  k47, name = k47
	global_par_k47=0.4;
% Parameter:   id =  k48, name = k48
	global_par_k48=0.1;
% Parameter:   id =  k49, name = k49
	global_par_k49=1.6;
% Parameter:   id =  k50, name = k50
	global_par_k50=0.4;
% Parameter:   id =  k51, name = k51
	global_par_k51=0.016;
% Parameter:   id =  k52, name = k52
	global_par_k52=3.3E-4;
% Parameter:   id =  k53, name = k53
	global_par_k53=0.01;
% Parameter:   id =  k54, name = k54
	global_par_k54=0.0011;
% Parameter:   id =  k55, name = k55
	global_par_k55=4.9E-7;
% Parameter:   id =  k56, name = k56
	global_par_k56=2.3E-6;
% Parameter:   id =  k57, name = k57
	global_par_k57=6.83E-6;
% Parameter:   id =  k58, name = k58
	global_par_k58=0.1;
% Parameter:   id =  k59, name = k59
	global_par_k59=6.94;
% Parameter:   id =  k60, name = k60
	global_par_k60=1.035;
% Parameter:   id =  k61, name = k61
	global_par_k61=0.1;
% Parameter:   id =  k62, name = k62
	global_par_k62=13.8;
% Parameter:   id =  k63, name = k63
	global_par_k63=0.9;
% Parameter:   id =  k64, name = k64
	global_par_k64=1.0;
% Parameter:   id =  k65, name = k65
	global_par_k65=0.5;
% Parameter:   id =  k66, name = k66
	global_par_k66=0.1;
% Parameter:   id =  k67, name = k67
	global_par_k67=6.4;
% Parameter:   id =  k68, name = k68
	global_par_k68=3.6;
% Parameter:   id =  k69, name = k69
	global_par_k69=6.83E-6;
% Parameter:   id =  k70, name = k70
	global_par_k70=0.1;
% Parameter:   id =  k71, name = k71
	global_par_k71=0.5;
% Parameter:   id =  k72, name = k72
	global_par_k72=0.01;
% Parameter:   id =  k73, name = k73
	global_par_k73=1.417;
% Parameter:   id =  k74, name = k74
	global_par_k74=0.183;
% Parameter:   id =  k75, name = k75
	global_par_k75=1.0;
% Parameter:   id =  k76, name = k76
	global_par_k76=2.3E-6;
% Parameter:   id =  k77, name = k77
	global_par_k77=2.5E-6;
% Parameter:   id =  k78, name = k78
	global_par_k78=1.4E-6;

% Reaction: id = LB1, name = Factor II lipid binding
	reaction_LB1=compartment_compartment*(global_par_konII*x(1)*x(74)/global_par_nva-global_par_koffII*x(2));

% Reaction: id = LB2, name = Factor mIIa lipid binding
	reaction_LB2=compartment_compartment*(global_par_konmIIa*x(3)*x(74)/global_par_nva-global_par_koffmIIa*x(4));

% Reaction: id = LB3, name = Factor V lipid binding
	reaction_LB3=compartment_compartment*(global_par_konV*x(5)*x(74)/global_par_nva-global_par_koffV*x(6));

% Reaction: id = LB4, name = Factor Va lipid binding
	reaction_LB4=compartment_compartment*(global_par_konVa*x(7)*x(74)/global_par_nva-global_par_koffVa*x(8));

% Reaction: id = LB5, name = Factor VII lipid binding
	reaction_LB5=compartment_compartment*(global_par_konVII*x(9)*x(74)/global_par_nva-global_par_koffVII*x(10));

% Reaction: id = LB6, name = Factor VIIa lipid binding
	reaction_LB6=compartment_compartment*(global_par_konVIIa*x(11)*x(74)/global_par_nva-global_par_koffVIIa*x(12));

% Reaction: id = LB7, name = Factor VIII lipid binding
	reaction_LB7=compartment_compartment*(global_par_konVIII*x(13)*x(74)/global_par_nva-global_par_koffVIII*x(14));

% Reaction: id = LB8, name = Factor VIIIa lipid binding
	reaction_LB8=compartment_compartment*(global_par_konVIIIa*x(15)*x(74)/global_par_nva-global_par_koffVIIIa*x(16));

% Reaction: id = LB9, name = Factor IX lipid binding
	reaction_LB9=compartment_compartment*(global_par_konIX*x(17)*x(74)/global_par_nva-global_par_koffIX*x(18));

% Reaction: id = LB10, name = Factor IXa lipid binding
	reaction_LB10=compartment_compartment*(global_par_konIXa*x(19)*x(74)/global_par_nva-global_par_koffIXa*x(20));

% Reaction: id = LB11, name = Factor X lipid binding
	reaction_LB11=compartment_compartment*(global_par_konX*x(21)*x(74)/global_par_nva-global_par_koffX*x(22));

% Reaction: id = LB12, name = Factor Xa lipid binding
	reaction_LB12=global_par_konXa*x(23)*x(74)/global_par_nva-global_par_koffXa*x(24);

% Reaction: id = LB13, name = APC lipid binding
	reaction_LB13=compartment_compartment*(global_par_konAPC*x(25)*x(74)/global_par_nva-global_par_koffAPC*x(26));

% Reaction: id = LB14, name = PS lipid binding
	reaction_LB14=compartment_compartment*(global_par_konPS*x(27)*x(74)/global_par_nva-global_par_koffPS*x(28));

% Reaction: id = LB15, name = Factor VIIIai lipid binding
	reaction_LB15=compartment_compartment*(global_par_konVIIIai*x(29)*x(74)/global_par_nva-global_par_koffVIIIai*x(30));

% Reaction: id = LB16, name = Factor Vai lipid binding
	reaction_LB16=compartment_compartment*(global_par_konVai*x(31)*x(74)/global_par_nva-global_par_koffVai*x(32));

% Reaction: id = LB17, name = PC lipid binding
	reaction_LB17=compartment_compartment*(global_par_konPC*x(33)*x(74)/global_par_nva-global_par_koffPC*x(34));

% Reaction: id = R1, name = TF_VIIa binding
	reaction_R1=compartment_compartment*(global_par_k1*x(35)*x(12)-global_par_k2*x(36));

% Reaction: id = R2, name = TF_VII binding
	reaction_R2=compartment_compartment*(global_par_k3*x(35)*x(10)-global_par_k4*x(37));

% Reaction: id = R3, name = IX_TF_VIIa binding
	reaction_R3=compartment_compartment*(global_par_k5*x(36)*x(18)-global_par_k6*x(38));

% Reaction: id = R3b, name = Factor IX activation
	reaction_R3b=compartment_compartment*global_par_k7*x(38);

% Reaction: id = R4, name = X_TF_VIIa complex formation
	reaction_R4=compartment_compartment*(global_par_k8*x(36)*x(22)-global_par_k9*x(40));

% Reaction: id = R4b, name = Factor X activation
	reaction_R4b=compartment_compartment*global_par_k10*x(40);

% Reaction: id = R4c, name = Factor Xa release
	reaction_R4c=compartment_compartment*global_par_k75*x(41);

% Reaction: id = R5, name = Xa_TF_VII binding
	reaction_R5=compartment_compartment*(global_par_k11*x(37)*x(24)-global_par_k12*x(42));

% Reaction: id = R5b, name = TF_VII activation
	reaction_R5b=compartment_compartment*global_par_k13*x(42);

% Reaction: id = R6, name = VIIIa_IXa binding
	reaction_R6=compartment_compartment*(global_par_k14*x(20)*x(16)-global_par_k15*x(43));

% Reaction: id = R7, name = Va_Xa binding
	reaction_R7=compartment_compartment*(global_par_k16*x(24)*x(8)-global_par_k17*x(44));

% Reaction: id = R8, name = X_IXa_VIIIa complex formation
	reaction_R8=compartment_compartment*(global_par_k18*x(43)*x(22)-global_par_k19*x(45));

% Reaction: id = R8b, name = Factor X activation
	reaction_R8b=compartment_compartment*global_par_k20*x(45);

% Reaction: id = R9, name = V_Xa binding
	reaction_R9=compartment_compartment*(global_par_k21*x(6)*x(24)-global_par_k22*x(46));

% Reaction: id = R9b, name = Factor V activation
	reaction_R9b=compartment_compartment*global_par_k23*x(46);

% Reaction: id = R10, name = Xa_VIII binding
	reaction_R10=global_par_k24*x(14)*x(24)-global_par_k25*x(47);

% Reaction: id = R10b, name = Factor VIII activation
	reaction_R10b=compartment_compartment*global_par_k26*x(47);

% Reaction: id = R11
	reaction_R11=compartment_compartment*(global_par_k27*x(6)*x(48)-global_par_k28*x(49));

% Reaction: id = R11b
	reaction_R11b=compartment_compartment*global_par_k29*x(49);

% Reaction: id = R12
	reaction_R12=compartment_compartment*(global_par_k30*x(14)*x(48)-global_par_k31*x(50));

% Reaction: id = R12b
	reaction_R12b=compartment_compartment*global_par_k32*x(50);

% Reaction: id = R13
	reaction_R13=compartment_compartment*(global_par_k33*x(44)*x(2)-global_par_k34*x(51));

% Reaction: id = R14
	reaction_R14=compartment_compartment*(global_par_k35*x(44)*x(4)-global_par_k36*x(52));

% Reaction: id = R15
	reaction_R15=compartment_compartment*global_par_k37*x(51);

% Reaction: id = R15b
	reaction_R15b=compartment_compartment*global_par_k38*x(52);

% Reaction: id = R16
	reaction_R16=compartment_compartment*(global_par_k39*x(10)*x(24)-global_par_k40*x(66));

% Reaction: id = R16b
	reaction_R16b=compartment_compartment*global_par_k41*x(66);

% Reaction: id = R17
	reaction_R17=compartment_compartment*(global_par_k42*x(53)*x(48)-global_par_k43*x(54));

% Reaction: id = R17b
	reaction_R17b=compartment_compartment*global_par_k44*x(54);

% Reaction: id = R18
	reaction_R18=compartment_compartment*(global_par_k45*x(56)*x(16)-global_par_k46*x(57));

% Reaction: id = R18b
	reaction_R18b=compartment_compartment*global_par_k47*x(57);

% Reaction: id = R19
	reaction_R19=compartment_compartment*(global_par_k48*x(56)*x(8)-global_par_k49*x(63));

% Reaction: id = R19b
	reaction_R19b=compartment_compartment*global_par_k50*x(63);

% Reaction: id = R20
	reaction_R20=compartment_compartment*(global_par_k51*x(58)*x(23)-global_par_k52*x(61));

% Reaction: id = R21
	reaction_R21=compartment_compartment*(global_par_k53*x(61)*x(36)-global_par_k54*x(62));

% Reaction: id = R22
	reaction_R22=compartment_compartment*global_par_k55*x(19)*x(59);

% Reaction: id = R23
	reaction_R23=compartment_compartment*global_par_k56*x(23)*x(59);

% Reaction: id = R24
	reaction_R24=compartment_compartment*global_par_k57*x(48)*x(59);

% Reaction: id = R25
	reaction_R25=compartment_compartment*(global_par_k58*x(6)*x(4)-global_par_k59*x(67));

% Reaction: id = R25b
	reaction_R25b=compartment_compartment*global_par_k60*x(67);

% Reaction: id = R26
	reaction_R26=compartment_compartment*(global_par_k61*x(14)*x(4)-global_par_k62*x(68));

% Reaction: id = R26b
	reaction_R26b=compartment_compartment*global_par_k63*x(68);

% Reaction: id = R27
	reaction_R27=compartment_compartment*(global_par_k64*x(48)*x(69)-global_par_k65*x(70));

% Reaction: id = R28
	reaction_R28=compartment_compartment*(global_par_k66*x(70)*x(34)-global_par_k67*x(71));

% Reaction: id = R28b
	reaction_R28b=compartment_compartment*global_par_k68*x(71);

% Reaction: id = R29
	reaction_R29=compartment_compartment*global_par_k69*x(3)*x(59);

% Reaction: id = R30
	reaction_R30=compartment_compartment*(global_par_k70*x(26)*x(28)-global_par_k71*x(56));

% Reaction: id = R31
	reaction_R31=compartment_compartment*(global_par_k72*x(55)*x(18)-global_par_k73*x(73));

% Reaction: id = R31b
	reaction_R31b=compartment_compartment*global_par_k74*x(73);

% Reaction: id = R32, name = R32
	reaction_R32=compartment_compartment*global_par_k76*x(59)*x(55);

% Reaction: id = R33, name = R33
	reaction_R33=compartment_compartment*global_par_k77*x(75)*x(48);

% Reaction: id = R34, name = R34
	reaction_R34=compartment_compartment*global_par_k78*x(75)*x(23);

	xdot=zeros(78,1);
	
% Species:   id = II_f, name = II_f, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*((-1.0 * reaction_LB1));
	
% Species:   id = II_l, name = II_l, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_LB1) + (-1.0 * reaction_R13));
	
% Species:   id = mIIa_f, name = mIIa_f, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*((-1.0 * reaction_LB2) + (-1.0 * reaction_R29));
	
% Species:   id = mIIa_l, name = mIIa_l, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_LB2) + (-1.0 * reaction_R14) + (-1.0 * reaction_R25) + ( 1.0 * reaction_R25b) + (-1.0 * reaction_R26) + ( 1.0 * reaction_R26b));
	
% Species:   id = V_f, name = V_f, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*((-1.0 * reaction_LB3));
	
% Species:   id = V_l, name = V_l, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*(( 1.0 * reaction_LB3) + (-1.0 * reaction_R9) + (-1.0 * reaction_R11) + (-1.0 * reaction_R25));
	
% Species:   id = Va_f, name = Va_f, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment))*((-1.0 * reaction_LB4));
	
% Species:   id = Va_l, name = Va_l, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment))*(( 1.0 * reaction_LB4) + (-1.0 * reaction_R7) + ( 1.0 * reaction_R9b) + ( 1.0 * reaction_R11b) + (-1.0 * reaction_R19) + ( 1.0 * reaction_R25b));
	
% Species:   id = VII_f, name = VII_f, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment))*((-1.0 * reaction_LB5));
	
% Species:   id = VII_l, name = VII_l, affected by kineticLaw
	xdot(10) = (1/(compartment_compartment))*(( 1.0 * reaction_LB5) + (-1.0 * reaction_R2) + (-1.0 * reaction_R16));
	
% Species:   id = VIIa_f, name = VIIa_f, affected by kineticLaw
	xdot(11) = (1/(compartment_compartment))*((-1.0 * reaction_LB6));
	
% Species:   id = VIIa_l, name = VIIa_l, affected by kineticLaw
	xdot(12) = (1/(compartment_compartment))*(( 1.0 * reaction_LB6) + (-1.0 * reaction_R1) + ( 1.0 * reaction_R16b));
	
% Species:   id = VIII_f, name = VIII_f, affected by kineticLaw
	xdot(13) = (1/(compartment_compartment))*((-1.0 * reaction_LB7));
	
% Species:   id = VIII_l, name = VIII_l, affected by kineticLaw
	xdot(14) = (1/(compartment_compartment))*(( 1.0 * reaction_LB7) + (-1.0 * reaction_R10) + (-1.0 * reaction_R12) + (-1.0 * reaction_R26));
	
% Species:   id = VIIIa_f, name = VIIIa_f, affected by kineticLaw
	xdot(15) = (1/(compartment_compartment))*((-1.0 * reaction_LB8));
	
% Species:   id = VIIIa_l, name = VIIIa_l, affected by kineticLaw
	xdot(16) = (1/(compartment_compartment))*(( 1.0 * reaction_LB8) + (-1.0 * reaction_R6) + ( 1.0 * reaction_R10b) + ( 1.0 * reaction_R12b) + (-1.0 * reaction_R18) + ( 1.0 * reaction_R26b));
	
% Species:   id = IX_f, name = IX_f, affected by kineticLaw
	xdot(17) = (1/(compartment_compartment))*((-1.0 * reaction_LB9));
	
% Species:   id = IX_l, name = IX_l, affected by kineticLaw
	xdot(18) = (1/(compartment_compartment))*(( 1.0 * reaction_LB9) + (-1.0 * reaction_R3) + (-1.0 * reaction_R31));
	
% Species:   id = IXa_f, name = IXa_f, affected by kineticLaw
	xdot(19) = (1/(compartment_compartment))*((-1.0 * reaction_LB10) + (-1.0 * reaction_R22));
	
% Species:   id = IXa_l, name = IXa_l, affected by kineticLaw
	xdot(20) = (1/(compartment_compartment))*(( 1.0 * reaction_LB10) + ( 1.0 * reaction_R3b) + (-1.0 * reaction_R6) + ( 1.0 * reaction_R31b));
	
% Species:   id = X_f, name = X_f, affected by kineticLaw
	xdot(21) = (1/(compartment_compartment))*((-1.0 * reaction_LB11));
	
% Species:   id = X_l, name = X_l, affected by kineticLaw
	xdot(22) = (1/(compartment_compartment))*(( 1.0 * reaction_LB11) + (-1.0 * reaction_R4) + (-1.0 * reaction_R8));
	
% Species:   id = Xa_f, name = Xa_f, affected by kineticLaw
	xdot(23) = (1/(compartment_compartment))*((-1.0 * reaction_LB12) + (-1.0 * reaction_R20) + (-1.0 * reaction_R23) + (-1.0 * reaction_R34));
	
% Species:   id = Xa_l, name = Xa_l, affected by kineticLaw
	xdot(24) = (1/(compartment_compartment))*(( 1.0 * reaction_LB12) + ( 1.0 * reaction_R4c) + (-1.0 * reaction_R5) + ( 1.0 * reaction_R5b) + (-1.0 * reaction_R7) + ( 1.0 * reaction_R8b) + (-1.0 * reaction_R9) + ( 1.0 * reaction_R9b) + (-1.0 * reaction_R10) + ( 1.0 * reaction_R10b) + (-1.0 * reaction_R16) + ( 1.0 * reaction_R16b));
	
% Species:   id = APC_f, name = APC_f, affected by kineticLaw
	xdot(25) = (1/(compartment_compartment))*((-1.0 * reaction_LB13));
	
% Species:   id = APC_l, name = APC_l, affected by kineticLaw
	xdot(26) = (1/(compartment_compartment))*(( 1.0 * reaction_LB13) + ( 1.0 * reaction_R28b) + (-1.0 * reaction_R30));
	
% Species:   id = PS_f, name = PS_f, affected by kineticLaw
	xdot(27) = (1/(compartment_compartment))*((-1.0 * reaction_LB14));
	
% Species:   id = PS_l, name = PS_l, affected by kineticLaw
	xdot(28) = (1/(compartment_compartment))*(( 1.0 * reaction_LB14) + (-1.0 * reaction_R30));
	
% Species:   id = VIIIai_f, name = VIIIai_f, affected by kineticLaw
	xdot(29) = (1/(compartment_compartment))*((-1.0 * reaction_LB15));
	
% Species:   id = VIIIai_l, name = VIIIai_l, affected by kineticLaw
	xdot(30) = (1/(compartment_compartment))*(( 1.0 * reaction_LB15) + ( 1.0 * reaction_R18b));
	
% Species:   id = Vai_f, name = Vai_f, affected by kineticLaw
	xdot(31) = (1/(compartment_compartment))*((-1.0 * reaction_LB16));
	
% Species:   id = Vai_l, name = Vai_l, affected by kineticLaw
	xdot(32) = (1/(compartment_compartment))*(( 1.0 * reaction_LB16) + ( 1.0 * reaction_R19b));
	
% Species:   id = PC_f, name = PC_f, affected by kineticLaw
	xdot(33) = (1/(compartment_compartment))*((-1.0 * reaction_LB17));
	
% Species:   id = PC_l, name = PC_l, affected by kineticLaw
	xdot(34) = (1/(compartment_compartment))*(( 1.0 * reaction_LB17) + (-1.0 * reaction_R28));
	
% Species:   id = TF_l, name = TF_l, affected by kineticLaw
	xdot(35) = (1/(compartment_compartment))*((-1.0 * reaction_R1) + (-1.0 * reaction_R2));
	
% Species:   id = TF_VIIa_l, name = TF_VIIa_l, affected by kineticLaw
	xdot(36) = (1/(compartment_compartment))*(( 1.0 * reaction_R1) + (-1.0 * reaction_R3) + ( 1.0 * reaction_R3b) + (-1.0 * reaction_R4) + ( 1.0 * reaction_R4c) + ( 1.0 * reaction_R5b) + (-1.0 * reaction_R21));
	
% Species:   id = TF_VII_l, name = TF_VII_l, affected by kineticLaw
	xdot(37) = (1/(compartment_compartment))*(( 1.0 * reaction_R2) + (-1.0 * reaction_R5));
	
% Species:   id = TF_VIIa_IX_l, name = TF_VIIa_IX_l, affected by kineticLaw
	xdot(38) = (1/(compartment_compartment))*(( 1.0 * reaction_R3) + (-1.0 * reaction_R3b));
	
% Species:   id = TF_VIIa_IXa_l, name = TF_VIIa_IXa_l
% Warning species is not changed by either rules or reactions
	xdot(39) = ;
	
% Species:   id = TF_VIIa_X_l, name = TF_VIIa_X_l, affected by kineticLaw
	xdot(40) = (1/(compartment_compartment))*(( 1.0 * reaction_R4) + (-1.0 * reaction_R4b));
	
% Species:   id = TF_VIIa_Xa_l, name = TF_VIIa_Xa_l, affected by kineticLaw
	xdot(41) = (1/(compartment_compartment))*(( 1.0 * reaction_R4b) + (-1.0 * reaction_R4c));
	
% Species:   id = TF_VII_Xa_l, name = TF_VII_Xa_l, affected by kineticLaw
	xdot(42) = (1/(compartment_compartment))*(( 1.0 * reaction_R5) + (-1.0 * reaction_R5b));
	
% Species:   id = IXa_VIIIa_l, name = IXa_VIIIa_l, affected by kineticLaw
	xdot(43) = (1/(compartment_compartment))*(( 1.0 * reaction_R6) + (-1.0 * reaction_R8) + ( 1.0 * reaction_R8b));
	
% Species:   id = Xa_Va_l, name = Xa_Va_l, affected by kineticLaw
	xdot(44) = (1/(compartment_compartment))*(( 1.0 * reaction_R7) + (-1.0 * reaction_R13) + (-1.0 * reaction_R14) + ( 1.0 * reaction_R15b));
	
% Species:   id = IXa_VIIIa_X_l, name = IXa_VIIIa_X_l, affected by kineticLaw
	xdot(45) = (1/(compartment_compartment))*(( 1.0 * reaction_R8) + (-1.0 * reaction_R8b));
	
% Species:   id = V_Xa_l, name = V_Xa_l, affected by kineticLaw
	xdot(46) = (1/(compartment_compartment))*(( 1.0 * reaction_R9) + (-1.0 * reaction_R9b));
	
% Species:   id = VIII_Xa_l, name = VIII_Xa_l, affected by kineticLaw
	xdot(47) = (1/(compartment_compartment))*(( 1.0 * reaction_R10) + (-1.0 * reaction_R10b));
	
% Species:   id = IIa_f, name = IIa_f, affected by kineticLaw
	xdot(48) = (1/(compartment_compartment))*((-1.0 * reaction_R11) + ( 1.0 * reaction_R11b) + (-1.0 * reaction_R12) + ( 1.0 * reaction_R12b) + ( 1.0 * reaction_R15b) + (-1.0 * reaction_R17) + ( 1.0 * reaction_R17b) + (-1.0 * reaction_R24) + (-1.0 * reaction_R27) + (-1.0 * reaction_R33));
	
% Species:   id = V_IIa_l, name = V_IIa_l, affected by kineticLaw
	xdot(49) = (1/(compartment_compartment))*(( 1.0 * reaction_R11) + (-1.0 * reaction_R11b));
	
% Species:   id = VIII_IIa_l, name = VIII_IIa_l, affected by kineticLaw
	xdot(50) = (1/(compartment_compartment))*(( 1.0 * reaction_R12) + (-1.0 * reaction_R12b));
	
% Species:   id = Xa_Va_II_l, name = Xa_Va_II_l, affected by kineticLaw
	xdot(51) = (1/(compartment_compartment))*(( 1.0 * reaction_R13) + (-1.0 * reaction_R15));
	
% Species:   id = Xa_Va_mIIa_l, name = Xa_Va_mIIa_l, affected by kineticLaw
	xdot(52) = (1/(compartment_compartment))*(( 1.0 * reaction_R14) + ( 1.0 * reaction_R15) + (-1.0 * reaction_R15b));
	
% Species:   id = XI_f, name = XI_f, affected by kineticLaw
	xdot(53) = (1/(compartment_compartment))*((-1.0 * reaction_R17));
	
% Species:   id = XI_IIa_l, name = XI_IIa_l, affected by kineticLaw
	xdot(54) = (1/(compartment_compartment))*(( 1.0 * reaction_R17) + (-1.0 * reaction_R17b));
	
% Species:   id = XIa_l, name = XIa_l, affected by kineticLaw
	xdot(55) = (1/(compartment_compartment))*(( 1.0 * reaction_R17b) + (-1.0 * reaction_R31) + ( 1.0 * reaction_R31b) + (-1.0 * reaction_R32));
	
% Species:   id = APC_PS_l, name = APC_PS_l, affected by kineticLaw
	xdot(56) = (1/(compartment_compartment))*((-1.0 * reaction_R18) + ( 1.0 * reaction_R18b) + (-1.0 * reaction_R19) + ( 1.0 * reaction_R19b) + ( 1.0 * reaction_R30));
	
% Species:   id = APC_PS_VIIIa_l, name = APC_PS_VIIIa_l, affected by kineticLaw
	xdot(57) = (1/(compartment_compartment))*(( 1.0 * reaction_R18) + (-1.0 * reaction_R18b));
	
% Species:   id = TFPI_f, name = TFPI_f, affected by kineticLaw
	xdot(58) = (1/(compartment_compartment))*((-1.0 * reaction_R20));
	
% Species:   id = AT_f, name = AT_f, affected by kineticLaw
	xdot(59) = (1/(compartment_compartment))*((-1.0 * reaction_R22) + (-1.0 * reaction_R23) + (-1.0 * reaction_R24) + (-1.0 * reaction_R29) + (-1.0 * reaction_R32));
	
% Species:   id = IIa_AT_f, name = IIa_AT_f, affected by kineticLaw
	xdot(60) = (1/(compartment_compartment))*(( 1.0 * reaction_R24));
	
% Species:   id = TFPI_Xa_l, name = TFPI_Xa_l, affected by kineticLaw
	xdot(61) = (1/(compartment_compartment))*(( 1.0 * reaction_R20) + (-1.0 * reaction_R21));
	
% Species:   id = TFPI_Xa_TF_VIIa_l, name = TFPI_Xa_TF_VIIa_l, affected by kineticLaw
	xdot(62) = (1/(compartment_compartment))*(( 1.0 * reaction_R21));
	
% Species:   id = APC_PS_Va_l, name = APC_PS_Va_l, affected by kineticLaw
	xdot(63) = (1/(compartment_compartment))*(( 1.0 * reaction_R19) + (-1.0 * reaction_R19b));
	
% Species:   id = IXa_AT_f, name = IXa_AT_f, affected by kineticLaw
	xdot(64) = (1/(compartment_compartment))*(( 1.0 * reaction_R22));
	
% Species:   id = Xa_AT_f, name = Xa_AT_f, affected by kineticLaw
	xdot(65) = (1/(compartment_compartment))*(( 1.0 * reaction_R23));
	
% Species:   id = VII_Xa_l, name = VII_Xa_l, affected by kineticLaw
	xdot(66) = (1/(compartment_compartment))*(( 1.0 * reaction_R16) + (-1.0 * reaction_R16b));
	
% Species:   id = V_mIIa_l, name = V_mIIa_l, affected by kineticLaw
	xdot(67) = (1/(compartment_compartment))*(( 1.0 * reaction_R25) + (-1.0 * reaction_R25b));
	
% Species:   id = VIII_mIIa_l, name = VIII_mIIa_l, affected by kineticLaw
	xdot(68) = (1/(compartment_compartment))*(( 1.0 * reaction_R26) + (-1.0 * reaction_R26b));
	
% Species:   id = TM_l, name = TM_l, affected by kineticLaw
	xdot(69) = (1/(compartment_compartment))*((-1.0 * reaction_R27));
	
% Species:   id = IIa_TM_l, name = IIa_TM_l, affected by kineticLaw
	xdot(70) = (1/(compartment_compartment))*(( 1.0 * reaction_R27) + (-1.0 * reaction_R28) + ( 1.0 * reaction_R28b));
	
% Species:   id = IIa_TM_PC_l, name = IIa_TM_PC_l, affected by kineticLaw
	xdot(71) = (1/(compartment_compartment))*(( 1.0 * reaction_R28) + (-1.0 * reaction_R28b));
	
% Species:   id = mIIa_AT_l, name = mIIa_AT_l, affected by kineticLaw
	xdot(72) = (1/(compartment_compartment))*(( 1.0 * reaction_R29));
	
% Species:   id = XIa_IX_l, name = XIa_IX_l, affected by kineticLaw
	xdot(73) = (1/(compartment_compartment))*(( 1.0 * reaction_R31) + (-1.0 * reaction_R31b));
	
% Species:   id = LIPID, name = LIPID, affected by kineticLaw
	xdot(74) = (1/(compartment_compartment))*((-100.0 * reaction_LB1) + (-100.0 * reaction_LB2) + (-100.0 * reaction_LB3) + (-100.0 * reaction_LB4) + (-100.0 * reaction_LB5) + (-100.0 * reaction_LB6) + (-100.0 * reaction_LB7) + (-100.0 * reaction_LB8) + (-100.0 * reaction_LB9) + (-100.0 * reaction_LB10) + (-100.0 * reaction_LB11) + (-100.0 * reaction_LB12) + (-100.0 * reaction_LB13) + (-100.0 * reaction_LB14) + (-100.0 * reaction_LB15) + (-100.0 * reaction_LB16) + (-100.0 * reaction_LB17) + ( 100.0 * reaction_R15b));
	
% Species:   id = alpha2M_l, name = alpha2M_l, affected by kineticLaw
	xdot(75) = (1/(compartment_compartment))*((-1.0 * reaction_R33) + (-1.0 * reaction_R34));
	
% Species:   id = alpha2M_IIa_l, name = alpha2M_IIa_l, affected by kineticLaw
	xdot(76) = (1/(compartment_compartment))*(( 1.0 * reaction_R33));
	
% Species:   id = alpha2M_Xa_l, name = alpha2M_Xa_l, affected by kineticLaw
	xdot(77) = (1/(compartment_compartment))*(( 1.0 * reaction_R34));
	
% Species:   id = AT_XIa_l, name = AT_XIa_l, affected by kineticLaw
	xdot(78) = (1/(compartment_compartment))*(( 1.0 * reaction_R32));
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


