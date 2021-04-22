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
% Model name = Hornberg2005 - MAPKsignalling
%
% is http://identifiers.org/biomodels.db/MODEL0848279215
% isDescribedBy http://identifiers.org/pubmed/16007170
% is http://identifiers.org/biomodels.db/BIOMD0000000667
%


function main()
%Initial conditions vector
	x0=zeros(103,1);
	x0(1) = 4.99999999999939E-8;
	x0(2) = 49999.9999999991;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 80999.9999999976;
	x0(13) = 0.0;
	x0(14) = 11999.9999999997;
	x0(15) = 0.0;
	x0(16) = 0.0;
	x0(17) = 0.0;
	x0(18) = 0.0;
	x0(19) = 0.0;
	x0(20) = 0.0;
	x0(21) = 0.0;
	x0(22) = 10999.9999999996;
	x0(23) = 0.0;
	x0(24) = 26299.9999999984;
	x0(25) = 0.0;
	x0(26) = 71999.9999999998;
	x0(27) = 0.0;
	x0(28) = 0.0;
	x0(29) = 0.0;
	x0(30) = 40000.0;
	x0(31) = 100999.999999999;
	x0(32) = 0.0;
	x0(33) = 0.0;
	x0(34) = 0.0;
	x0(35) = 0.0;
	x0(36) = 0.0;
	x0(37) = 0.0;
	x0(38) = 0.0;
	x0(39) = 0.0;
	x0(40) = 0.0;
	x0(41) = 40000.0;
	x0(42) = 0.0;
	x0(43) = 0.0;
	x0(44) = 40000.0;
	x0(45) = 0.0;
	x0(46) = 0.0;
	x0(47) = 2.09999999999994E7;
	x0(48) = 0.0;
	x0(49) = 0.0;
	x0(50) = 0.0;
	x0(51) = 0.0;
	x0(52) = 0.0;
	x0(53) = 40000.0;
	x0(54) = 0.0;
	x0(55) = 2.20999999999994E7;
	x0(56) = 0.0;
	x0(57) = 0.0;
	x0(58) = 0.0;
	x0(59) = 0.0;
	x0(60) = 9999999.99999974;
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
	x0(99) = 0.99999999999997;
	x0(100) = 0.999999999999972;
	x0(101) = 0.999999999999972;
	x0(102) = 0.999999999999972;
	x0(103) = 0.999999999999973;


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

% Compartment: id = Compartment, name = Compartment, constant
	compartment_Compartment=1.0;
% Parameter:   id =  k1, name = k1
	global_par_k1=3.0E7;
% Parameter:   id =  kd1, name = kd1
	global_par_kd1=0.00384;
% Parameter:   id =  k2, name = k2
	global_par_k2=1.66E-5;
% Parameter:   id =  kd2, name = kd2
	global_par_kd2=0.1;
% Parameter:   id =  k3, name = k3
	global_par_k3=1.0;
% Parameter:   id =  kd3, name = kd3
	global_par_kd3=0.01;
% Parameter:   id =  k4, name = k4
	global_par_k4=1.73E-7;
% Parameter:   id =  kd4, name = kd4
	global_par_kd4=0.00166;
% Parameter:   id =  kd5, name = kd5
	global_par_kd5=0.0146;
% Parameter:   id =  k6, name = k6
	global_par_k6=5.0E-4;
% Parameter:   id =  kd6, name = kd6
	global_par_kd6=0.005;
% Parameter:   id =  k8, name = k8
	global_par_k8=1.66E-6;
% Parameter:   id =  kd8, name = kd8
	global_par_kd8=0.2;
% Parameter:   id =  k10b, name = k10b
	global_par_k10b=0.0543;
% Parameter:   id =  kd10, name = kd10
	global_par_kd10=0.011;
% Parameter:   id =  k13, name = k13
	global_par_k13=2.17;
% Parameter:   id =  k15, name = k15
	global_par_k15=10000.0;
% Parameter:   id =  k16, name = k16
	global_par_k16=1.66E-5;
% Parameter:   id =  k17, name = k17
	global_par_k17=1.66E-5;
% Parameter:   id =  kd17, name = kd17
	global_par_kd17=0.06;
% Parameter:   id =  k18, name = k18
	global_par_k18=2.5E-5;
% Parameter:   id =  kd18, name = kd18
	global_par_kd18=1.3;
% Parameter:   id =  k19, name = k19
	global_par_k19=1.66E-7;
% Parameter:   id =  kd19, name = kd19
	global_par_kd19=0.5;
% Parameter:   id =  k20, name = k20
	global_par_k20=3.5E-6;
% Parameter:   id =  kd20, name = kd20
	global_par_kd20=0.4;
% Parameter:   id =  k21, name = k21
	global_par_k21=3.66E-7;
% Parameter:   id =  kd21, name = kd21
	global_par_kd21=0.023;
% Parameter:   id =  k22, name = k22
	global_par_k22=3.5E-5;
% Parameter:   id =  kd22, name = kd22
	global_par_kd22=0.1;
% Parameter:   id =  k23, name = k23
	global_par_k23=6.0;
% Parameter:   id =  kd23, name = kd23
	global_par_kd23=0.06;
% Parameter:   id =  kd24, name = kd24
	global_par_kd24=0.55;
% Parameter:   id =  k25, name = k25
	global_par_k25=1.66E-5;
% Parameter:   id =  kd25, name = kd25
	global_par_kd25=0.0214;
% Parameter:   id =  k28, name = k28
	global_par_k28=1.66E-6;
% Parameter:   id =  kd28, name = kd28
	global_par_kd28=0.0053;
% Parameter:   id =  k29, name = k29
	global_par_k29=1.17E-6;
% Parameter:   id =  kd29, name = kd29
	global_par_kd29=1.0;
% Parameter:   id =  k32, name = k32
	global_par_k32=4.0E-7;
% Parameter:   id =  kd32, name = kd32
	global_par_kd32=0.1;
% Parameter:   id =  k33, name = k33
	global_par_k33=3.5E-5;
% Parameter:   id =  kd33, name = kd33
	global_par_kd33=0.2;
% Parameter:   id =  k34, name = k34
	global_par_k34=7.5E-6;
% Parameter:   id =  kd34, name = kd34
	global_par_kd34=0.03;
% Parameter:   id =  k35, name = k35
	global_par_k35=7.5E-6;
% Parameter:   id =  kd35, name = kd35
	global_par_kd35=0.0015;
% Parameter:   id =  k36, name = k36
	global_par_k36=0.005;
% Parameter:   id =  kd36, name = kd36
	global_par_kd36=0.0;
% Parameter:   id =  k37, name = k37
	global_par_k37=1.5E-6;
% Parameter:   id =  kd37, name = kd37
	global_par_kd37=0.3;
% Parameter:   id =  k40, name = k40
	global_par_k40=5.0E-5;
% Parameter:   id =  kd40, name = kd40
	global_par_kd40=0.064;
% Parameter:   id =  k41, name = k41
	global_par_k41=5.0E-5;
% Parameter:   id =  kd41, name = kd41
	global_par_kd41=0.0429;
% Parameter:   id =  k42, name = k42
	global_par_k42=1.18E-4;
% Parameter:   id =  kd42, name = kd42
	global_par_kd42=0.2;
% Parameter:   id =  kd43, name = kd43
	global_par_kd43=1.0;
% Parameter:   id =  k44, name = k44
	global_par_k44=1.95E-5;
% Parameter:   id =  kd44, name = kd44
	global_par_kd44=0.0183;
% Parameter:   id =  kd45, name = kd45
	global_par_kd45=3.5;
% Parameter:   id =  kd47, name = kd47
	global_par_kd47=2.9;
% Parameter:   id =  k48, name = k48
	global_par_k48=2.38E-5;
% Parameter:   id =  kd48, name = kd48
	global_par_kd48=0.8;
% Parameter:   id =  kd49, name = kd49
	global_par_kd49=0.0568;
% Parameter:   id =  k50, name = k50
	global_par_k50=4.5E-7;
% Parameter:   id =  kd50, name = kd50
	global_par_kd50=0.5;
% Parameter:   id =  k52, name = k52
	global_par_k52=8.91E-5;
% Parameter:   id =  kd52, name = kd52
	global_par_kd52=0.033;
% Parameter:   id =  kd53, name = kd53
	global_par_kd53=16.0;
% Parameter:   id =  kd55, name = kd55
	global_par_kd55=5.7;
% Parameter:   id =  k56, name = k56
	global_par_k56=2.35E-5;
% Parameter:   id =  kd56, name = kd56
	global_par_kd56=0.6;
% Parameter:   id =  kd57, name = kd57
	global_par_kd57=0.246;
% Parameter:   id =  k58, name = k58
	global_par_k58=8.33E-6;
% Parameter:   id =  kd58, name = kd58
	global_par_kd58=0.5;
% Parameter:   id =  k60, name = k60
	global_par_k60=0.0055;
% Parameter:   id =  k61, name = k61
	global_par_k61=6.7E-4;
% Parameter:   id =  kd63, name = kd63
	global_par_kd63=0.275;
% Parameter:   id =  k126, name = k126
	global_par_k126=1.66E-7;
% Parameter:   id =  kd126, name = kd126
	global_par_kd126=2.0;
% Parameter:   id =  k127, name = k127
	global_par_k127=0.0;
% Parameter:   id =  kd127, name = kd127
	global_par_kd127=1.0E-4;

% Reaction: id = v1, name = v1
	reaction_v1=compartment_Compartment*function_for_v1_1(x(1), x(2), x(3), global_par_k1, global_par_kd1);

% Reaction: id = v2, name = v2
	reaction_v2=compartment_Compartment*(global_par_k2*x(3)^2-global_par_kd2*x(4));

% Reaction: id = v3, name = v3
	reaction_v3=compartment_Compartment*(global_par_k3*x(4)-global_par_kd3*x(5));

% Reaction: id = v4, name = v4
	reaction_v4=compartment_Compartment*(global_par_k4*x(23)*x(12)-global_par_kd4*x(7));

% Reaction: id = v5, name = v5
	reaction_v5=compartment_Compartment*global_par_kd5*x(7);

% Reaction: id = v6, name = v6
	reaction_v6=compartment_Compartment*(global_par_k6*x(2)-global_par_kd6*x(6));

% Reaction: id = v7, name = v7
	reaction_v7=compartment_Compartment*(global_par_k6*x(5)-global_par_kd6*x(8));

% Reaction: id = v8, name = v8
	reaction_v8=compartment_Compartment*(global_par_k8*x(5)*x(14)-global_par_kd8*x(15));

% Reaction: id = v9, name = v9
	reaction_v9=compartment_Compartment*global_par_k6*x(23);

% Reaction: id = v10, name = v10
	reaction_v10=compartment_Compartment*(global_par_k10b*x(6)*x(16)-global_par_kd10*x(10));

% Reaction: id = v11, name = v11
	reaction_v11=compartment_Compartment*(global_par_k2*x(10)^2-global_par_kd2*x(11));

% Reaction: id = v12, name = v12
	reaction_v12=compartment_Compartment*(global_par_k3*x(11)-global_par_kd3*x(8));

% Reaction: id = v14, name = v14
	reaction_v14=compartment_Compartment*(global_par_k8*x(8)*x(14)-global_par_kd8*x(17));

% Reaction: id = v15, name = v15
	reaction_v15=compartment_Compartment*global_par_k15*x(9);

% Reaction: id = v16, name = v16
	reaction_v16=compartment_Compartment*(global_par_k16*x(22)*x(15)-global_par_kd63*x(23));

% Reaction: id = v17, name = v17
	reaction_v17=compartment_Compartment*(global_par_k17*x(24)*x(23)-global_par_kd17*x(25));

% Reaction: id = v18, name = v18
	reaction_v18=compartment_Compartment*(global_par_k18*x(26)*x(25)-global_par_kd18*x(27));

% Reaction: id = v19, name = v19
	reaction_v19=compartment_Compartment*(global_par_k19*x(28)*x(25)-global_par_kd19*x(27));

% Reaction: id = v20, name = v20
	reaction_v20=compartment_Compartment*(global_par_k20*x(25)*x(43)-global_par_kd20*x(29));

% Reaction: id = v21, name = v21
	reaction_v21=compartment_Compartment*(global_par_k21*x(25)*x(26)-global_par_kd21*x(29));

% Reaction: id = v22, name = v22
	reaction_v22=compartment_Compartment*(global_par_k22*x(31)*x(15)-global_par_kd22*x(32));

% Reaction: id = v23, name = v23
	reaction_v23=compartment_Compartment*(global_par_k23*x(32)-global_par_kd23*x(33));

% Reaction: id = v24, name = v24
	reaction_v24=compartment_Compartment*(global_par_k16*x(22)*x(33)-global_par_kd24*x(34));

% Reaction: id = v25, name = v25
	reaction_v25=compartment_Compartment*(global_par_k25*x(24)*x(34)-global_par_kd25*x(35));

% Reaction: id = v26, name = v26
	reaction_v26=compartment_Compartment*(global_par_k18*x(26)*x(35)-global_par_kd18*x(36));

% Reaction: id = v27, name = v27
	reaction_v27=compartment_Compartment*(global_par_k19*x(35)*x(28)-global_par_kd19*x(36));

% Reaction: id = v28, name = v28
	reaction_v28=compartment_Compartment*(global_par_k28*x(28)*x(41)-global_par_kd28*x(42));

% Reaction: id = v29, name = v29
	reaction_v29=compartment_Compartment*(global_par_k29*x(43)*x(45)-global_par_kd29*x(42));

% Reaction: id = v30, name = v30
	reaction_v30=compartment_Compartment*(global_par_k20*x(35)*x(43)-global_par_kd20*x(37));

% Reaction: id = v31, name = v31
	reaction_v31=compartment_Compartment*(global_par_k21*x(35)*x(26)-global_par_kd21*x(37));

% Reaction: id = v32, name = v32
	reaction_v32=compartment_Compartment*(global_par_k32*x(38)*x(15)-global_par_kd32*x(35));

% Reaction: id = v33, name = v33
	reaction_v33=compartment_Compartment*(global_par_k33*x(40)*x(30)-global_par_kd33*x(38));

% Reaction: id = v34, name = v34
	reaction_v34=compartment_Compartment*(global_par_k34*x(15)*x(30)-global_par_kd34*x(25));

% Reaction: id = v35, name = v35
	reaction_v35=compartment_Compartment*(global_par_k35*x(24)*x(22)-global_par_kd35*x(30));

% Reaction: id = v36, name = v36
	reaction_v36=compartment_Compartment*(global_par_k36*x(40)-global_par_kd36*x(31));

% Reaction: id = v37, name = v37
	reaction_v37=compartment_Compartment*(global_par_k37*x(15)*x(40)-global_par_kd37*x(33));

% Reaction: id = v38, name = v38
	reaction_v38=compartment_Compartment*(global_par_k16*x(22)*x(40)-global_par_kd24*x(39));

% Reaction: id = v39, name = v39
	reaction_v39=compartment_Compartment*(global_par_k37*x(15)*x(39)-global_par_kd37*x(34));

% Reaction: id = v40, name = v40
	reaction_v40=compartment_Compartment*(global_par_k40*x(24)*x(39)-global_par_kd40*x(38));

% Reaction: id = v41, name = v41
	reaction_v41=compartment_Compartment*(global_par_k41*x(30)*x(33)-global_par_kd41*x(35));

% Reaction: id = v42, name = v42
	reaction_v42=compartment_Compartment*(global_par_k42*x(44)*x(45)-global_par_kd42*x(46));

% Reaction: id = v43, name = v43
	reaction_v43=compartment_Compartment*global_par_kd43*x(46);

% Reaction: id = v44, name = v44
	reaction_v44=compartment_Compartment*(global_par_k44*x(47)*x(45)-global_par_kd52*x(48));

% Reaction: id = v45, name = v45
	reaction_v45=compartment_Compartment*global_par_kd45*x(48);

% Reaction: id = v46, name = v46
	reaction_v46=compartment_Compartment*(global_par_k44*x(49)*x(45)-global_par_kd52*x(50));

% Reaction: id = v47, name = v47
	reaction_v47=compartment_Compartment*global_par_kd47*x(50);

% Reaction: id = v48, name = v48
	reaction_v48=compartment_Compartment*(global_par_k48*x(51)*x(53)-global_par_kd48*x(52));

% Reaction: id = v49, name = v49
	reaction_v49=compartment_Compartment*global_par_kd49*x(52);

% Reaction: id = v50, name = v50
	reaction_v50=compartment_Compartment*(global_par_k50*x(53)*x(49)-global_par_kd50*x(54));

% Reaction: id = v51, name = v51
	reaction_v51=compartment_Compartment*global_par_kd49*x(54);

% Reaction: id = v52, name = v52
	reaction_v52=compartment_Compartment*(global_par_k52*x(55)*x(51)-global_par_kd44*x(56));

% Reaction: id = v53, name = v53
	reaction_v53=compartment_Compartment*global_par_kd53*x(56);

% Reaction: id = v54, name = v54
	reaction_v54=compartment_Compartment*(global_par_k52*x(51)*x(57)-global_par_kd44*x(58));

% Reaction: id = v55, name = v55
	reaction_v55=compartment_Compartment*global_par_kd55*x(58);

% Reaction: id = v56, name = v56
	reaction_v56=compartment_Compartment*(global_par_k56*x(59)*x(60)-global_par_kd56*x(61));

% Reaction: id = v57, name = v57
	reaction_v57=compartment_Compartment*global_par_kd57*x(61);

% Reaction: id = v58, name = v58
	reaction_v58=compartment_Compartment*(global_par_k58*x(60)*x(57)-global_par_kd58*x(62));

% Reaction: id = v59, name = v59
	reaction_v59=compartment_Compartment*global_par_kd57*x(62);

% Reaction: id = v60, name = v60
	reaction_v60=compartment_Compartment*global_par_k60*x(6);

% Reaction: id = v61, name = v61
	reaction_v61=compartment_Compartment*global_par_k61*x(16);

% Reaction: id = v62, name = v62
	reaction_v62=compartment_Compartment*global_par_k60*x(8);

% Reaction: id = v63, name = v63
	reaction_v63=compartment_Compartment*(global_par_k16*x(17)*x(22)-global_par_kd63*x(18));

% Reaction: id = v64, name = v64
	reaction_v64=compartment_Compartment*(global_par_k17*x(24)*x(18)-global_par_kd17*x(19));

% Reaction: id = v65, name = v65
	reaction_v65=compartment_Compartment*(global_par_k18*x(26)*x(19)-global_par_kd18*x(20));

% Reaction: id = v66, name = v66
	reaction_v66=compartment_Compartment*(global_par_k19*x(69)*x(19)-global_par_kd19*x(20));

% Reaction: id = v67, name = v67
	reaction_v67=compartment_Compartment*(global_par_k20*x(71)*x(19)-global_par_kd20*x(21));

% Reaction: id = v68, name = v68
	reaction_v68=compartment_Compartment*(global_par_k21*x(19)*x(26)-global_par_kd21*x(21));

% Reaction: id = v69, name = v69
	reaction_v69=compartment_Compartment*(global_par_k22*x(31)*x(17)-global_par_kd22*x(63));

% Reaction: id = v70, name = v70
	reaction_v70=compartment_Compartment*(global_par_k23*x(63)-global_par_kd23*x(64));

% Reaction: id = v71, name = v71
	reaction_v71=compartment_Compartment*(global_par_k16*x(22)*x(64)-global_par_kd24*x(65));

% Reaction: id = v72, name = v72
	reaction_v72=compartment_Compartment*(global_par_k25*x(24)*x(65)-global_par_kd25*x(66));

% Reaction: id = v73, name = v73
	reaction_v73=compartment_Compartment*(global_par_k18*x(26)*x(66)-global_par_kd18*x(67));

% Reaction: id = v74, name = v74
	reaction_v74=compartment_Compartment*(global_par_k19*x(66)*x(69)-global_par_kd19*x(67));

% Reaction: id = v75, name = v75
	reaction_v75=compartment_Compartment*(global_par_k28*x(69)*x(41)-global_par_kd28*x(70));

% Reaction: id = v76, name = v76
	reaction_v76=compartment_Compartment*(global_par_k29*x(71)*x(72)-global_par_kd29*x(70));

% Reaction: id = v77, name = v77
	reaction_v77=compartment_Compartment*(global_par_k20*x(71)*x(66)-global_par_kd20*x(68));

% Reaction: id = v78, name = v78
	reaction_v78=compartment_Compartment*(global_par_k21*x(66)*x(26)-global_par_kd21*x(68));

% Reaction: id = v79, name = v79
	reaction_v79=compartment_Compartment*(global_par_k32*x(17)*x(38)-global_par_kd32*x(66));

% Reaction: id = v80, name = v80
	reaction_v80=compartment_Compartment*(global_par_k34*x(17)*x(30)-global_par_kd34*x(19));

% Reaction: id = v81, name = v81
	reaction_v81=compartment_Compartment*(global_par_k37*x(17)*x(40)-global_par_kd37*x(64));

% Reaction: id = v82, name = v82
	reaction_v82=compartment_Compartment*(global_par_k37*x(17)*x(39)-global_par_kd37*x(65));

% Reaction: id = v83, name = v83
	reaction_v83=compartment_Compartment*(global_par_k41*x(30)*x(64)-global_par_kd41*x(66));

% Reaction: id = v84, name = v84
	reaction_v84=compartment_Compartment*(global_par_k42*x(44)*x(72)-global_par_kd42*x(73));

% Reaction: id = v85, name = v85
	reaction_v85=compartment_Compartment*global_par_kd43*x(73);

% Reaction: id = v86, name = v86
	reaction_v86=compartment_Compartment*(global_par_k44*x(47)*x(72)-global_par_kd52*x(74));

% Reaction: id = v87, name = v87
	reaction_v87=compartment_Compartment*global_par_kd45*x(74);

% Reaction: id = v88, name = v88
	reaction_v88=compartment_Compartment*(global_par_k44*x(72)*x(75)-global_par_kd52*x(76));

% Reaction: id = v89, name = v89
	reaction_v89=compartment_Compartment*global_par_kd47*x(76);

% Reaction: id = v90, name = v90
	reaction_v90=compartment_Compartment*(global_par_k48*x(77)*x(53)-global_par_kd48*x(78));

% Reaction: id = v91, name = v91
	reaction_v91=compartment_Compartment*global_par_kd49*x(78);

% Reaction: id = v92, name = v92
	reaction_v92=compartment_Compartment*(global_par_k50*x(53)*x(75)-global_par_kd50*x(79));

% Reaction: id = v93, name = v93
	reaction_v93=compartment_Compartment*global_par_kd49*x(79);

% Reaction: id = v94, name = v94
	reaction_v94=compartment_Compartment*(global_par_k52*x(55)*x(77)-global_par_kd44*x(99));

% Reaction: id = v95, name = v95
	reaction_v95=compartment_Compartment*global_par_kd53*x(99);

% Reaction: id = v96, name = v96
	reaction_v96=compartment_Compartment*(global_par_k52*x(77)*x(80)-global_par_kd44*x(81));

% Reaction: id = v97, name = v97
	reaction_v97=compartment_Compartment*global_par_kd55*x(81);

% Reaction: id = v98, name = v98
	reaction_v98=compartment_Compartment*(global_par_k56*x(82)*x(60)-global_par_kd56*x(83));

% Reaction: id = v99, name = v99
	reaction_v99=compartment_Compartment*global_par_kd57*x(83);

% Reaction: id = v100, name = v100
	reaction_v100=compartment_Compartment*(global_par_k58*x(60)*x(80)-global_par_kd58*x(84));

% Reaction: id = v101, name = v101
	reaction_v101=compartment_Compartment*global_par_kd57*x(84);

% Reaction: id = v102, name = v102
	reaction_v102=compartment_Compartment*global_par_k6*x(15);

% Reaction: id = v103, name = v103
	reaction_v103=compartment_Compartment*global_par_k6*x(32);

% Reaction: id = v104, name = v104
	reaction_v104=compartment_Compartment*global_par_k6*x(33);

% Reaction: id = v105, name = v105
	reaction_v105=compartment_Compartment*global_par_k6*x(25);

% Reaction: id = v106, name = v106
	reaction_v106=compartment_Compartment*(global_par_k4*x(25)*x(12)-global_par_kd4*x(87));

% Reaction: id = v107, name = v107
	reaction_v107=compartment_Compartment*global_par_kd5*x(87);

% Reaction: id = v108, name = v108
	reaction_v108=compartment_Compartment*global_par_k6*x(27);

% Reaction: id = v109, name = v109
	reaction_v109=compartment_Compartment*(global_par_k4*x(27)*x(12)-global_par_kd4*x(88));

% Reaction: id = v110, name = v110
	reaction_v110=compartment_Compartment*global_par_kd5*x(88);

% Reaction: id = v111, name = v111
	reaction_v111=compartment_Compartment*global_par_k6*x(29);

% Reaction: id = v112, name = v112
	reaction_v112=compartment_Compartment*(global_par_k4*x(29)*x(12)-global_par_kd4*x(89));

% Reaction: id = v113, name = v113
	reaction_v113=compartment_Compartment*global_par_kd5*x(89);

% Reaction: id = v114, name = v114
	reaction_v114=compartment_Compartment*global_par_k6*x(34);

% Reaction: id = v115, name = v115
	reaction_v115=compartment_Compartment*(global_par_k4*x(34)*x(12)-global_par_kd4*x(100));

% Reaction: id = v116, name = v116
	reaction_v116=compartment_Compartment*global_par_kd5*x(100);

% Reaction: id = v117, name = v117
	reaction_v117=compartment_Compartment*global_par_k6*x(35);

% Reaction: id = v118, name = v118
	reaction_v118=compartment_Compartment*(global_par_k4*x(35)*x(12)-global_par_kd4*x(101));

% Reaction: id = v119, name = v119
	reaction_v119=compartment_Compartment*global_par_kd5*x(101);

% Reaction: id = v120, name = v120
	reaction_v120=compartment_Compartment*global_par_k6*x(36);

% Reaction: id = v121, name = v121
	reaction_v121=compartment_Compartment*(global_par_k4*x(36)*x(12)-global_par_kd4*x(102));

% Reaction: id = v122, name = v122
	reaction_v122=compartment_Compartment*global_par_kd5*x(102);

% Reaction: id = v123, name = v123
	reaction_v123=compartment_Compartment*global_par_k6*x(37);

% Reaction: id = v124, name = v124
	reaction_v124=compartment_Compartment*(global_par_k4*x(37)*x(12)-global_par_kd4*x(103));

% Reaction: id = v125, name = v125
	reaction_v125=compartment_Compartment*global_par_kd5*x(103);

% Reaction: id = v126, name = v126
	reaction_v126=compartment_Compartment*(global_par_k126*x(59)*x(25)-global_par_kd126*x(90));

% Reaction: id = v127, name = v127
	reaction_v127=compartment_Compartment*(global_par_k126*x(82)*x(19)-global_par_kd126*x(91));

% Reaction: id = v128, name = v128
	reaction_v128=compartment_Compartment*(global_par_k126*x(59)*x(35)-global_par_kd126*x(92));

% Reaction: id = v129, name = v129
	reaction_v129=compartment_Compartment*(global_par_k126*x(82)*x(66)-global_par_kd126*x(93));

% Reaction: id = v130, name = v130
	reaction_v130=compartment_Compartment*(global_par_k126*x(59)*x(24)-global_par_kd126*x(96));

% Reaction: id = v131, name = v131
	reaction_v131=compartment_Compartment*(global_par_k126*x(82)*x(24)-global_par_kd126*x(97));

% Reaction: id = v132, name = v132
	reaction_v132=compartment_Compartment*global_par_k60*x(17);

% Reaction: id = v133, name = v133
	reaction_v133=compartment_Compartment*global_par_k60*x(18);

% Reaction: id = v134, name = v134
	reaction_v134=compartment_Compartment*global_par_k60*x(19);

% Reaction: id = v135, name = v135
	reaction_v135=compartment_Compartment*global_par_k60*x(20);

% Reaction: id = v136, name = v136
	reaction_v136=compartment_Compartment*global_par_k60*x(21);

% Reaction: id = v137, name = v137
	reaction_v137=compartment_Compartment*global_par_k60*x(63);

% Reaction: id = v138, name = v138
	reaction_v138=compartment_Compartment*global_par_k60*x(64);

% Reaction: id = v139, name = v139
	reaction_v139=compartment_Compartment*global_par_k60*x(65);

% Reaction: id = v140, name = v140
	reaction_v140=compartment_Compartment*global_par_k60*x(66);

% Reaction: id = v141, name = v141
	reaction_v141=compartment_Compartment*global_par_k60*x(67);

% Reaction: id = v142, name = v142
	reaction_v142=compartment_Compartment*global_par_k60*x(68);

% Reaction: id = v143, name = v143
	reaction_v143=compartment_Compartment*(global_par_k127*x(59)*x(94)-global_par_kd127*x(90));

% Reaction: id = v144, name = v144
	reaction_v144=compartment_Compartment*(global_par_k127*x(59)*x(94)-global_par_kd127*x(92));

% Reaction: id = v145, name = v145
	reaction_v145=compartment_Compartment*(global_par_k127*x(59)*x(98)-global_par_kd127*x(96));

% Reaction: id = v146, name = v146
	reaction_v146=compartment_Compartment*(global_par_k127*x(82)*x(95)-global_par_kd127*x(91));

% Reaction: id = v147, name = v147
	reaction_v147=compartment_Compartment*(global_par_k127*x(82)*x(95)-global_par_kd127*x(93));

% Reaction: id = v148, name = v148
	reaction_v148=compartment_Compartment*(global_par_k127*x(82)*x(98)-global_par_kd127*x(97));

	xdot=zeros(103,1);
	
% Species:   id = EGF, name = EGF
% Warning species is not changed by either rules or reactions
	xdot(1) = ;
	
% Species:   id = EGFR, name = EGFR, affected by kineticLaw
	xdot(2) = (1/(compartment_Compartment))*((-1.0 * reaction_v1) + (-1.0 * reaction_v6) + ( 1.0 * reaction_v13));
	
% Species:   id = EGF_EGFR, name = EGF_EGFR, affected by kineticLaw
	xdot(3) = (1/(compartment_Compartment))*(( 1.0 * reaction_v1) + (-2.0 * reaction_v2));
	
% Species:   id = _EGF_EGFR_2, name = (EGF_EGFR)2, affected by kineticLaw
	xdot(4) = (1/(compartment_Compartment))*(( 1.0 * reaction_v2) + (-1.0 * reaction_v3));
	
% Species:   id = _EGF_EGFR__2, name = (EGF_EGFR*)2, affected by kineticLaw
	xdot(5) = (1/(compartment_Compartment))*(( 1.0 * reaction_v3) + (-1.0 * reaction_v7) + (-1.0 * reaction_v8));
	
% Species:   id = EGFRi, name = EGFRi, affected by kineticLaw
	xdot(6) = (1/(compartment_Compartment))*(( 1.0 * reaction_v6) + (-1.0 * reaction_v10) + (-1.0 * reaction_v60));
	
% Species:   id = _EGF_EGFR__2_GAP_Grb2_Prot, name = (EGF_EGFR*)2_GAP_Grb2_Prot, affected by kineticLaw
	xdot(7) = (1/(compartment_Compartment))*(( 1.0 * reaction_v4) + (-1.0 * reaction_v5));
	
% Species:   id = _EGF_EGFRi__2, name = (EGF-EGFRi*)2, affected by kineticLaw
	xdot(8) = (1/(compartment_Compartment))*(( 1.0 * reaction_v7) + ( 1.0 * reaction_v12) + (-1.0 * reaction_v14) + (-1.0 * reaction_v62));
	
% Species:   id = Proti, name = Proti, affected by kineticLaw
	xdot(9) = (1/(compartment_Compartment))*(( 1.0 * reaction_v5) + (-1.0 * reaction_v15) + ( 1.0 * reaction_v107) + ( 1.0 * reaction_v110) + ( 1.0 * reaction_v113) + ( 1.0 * reaction_v116) + ( 1.0 * reaction_v119) + ( 1.0 * reaction_v122) + ( 1.0 * reaction_v125));
	
% Species:   id = EGF_EGFRi, name = EGF_EGFRi, affected by kineticLaw
	xdot(10) = (1/(compartment_Compartment))*(( 1.0 * reaction_v10) + (-2.0 * reaction_v11));
	
% Species:   id = _EGF_EGFRi_2, name = (EGF-EGFRi)2, affected by kineticLaw
	xdot(11) = (1/(compartment_Compartment))*(( 1.0 * reaction_v11) + (-1.0 * reaction_v12));
	
% Species:   id = Prot, name = Prot, affected by kineticLaw
	xdot(12) = (1/(compartment_Compartment))*((-1.0 * reaction_v4) + ( 1.0 * reaction_v15) + (-1.0 * reaction_v106) + (-1.0 * reaction_v109) + (-1.0 * reaction_v112) + (-1.0 * reaction_v115) + (-1.0 * reaction_v118) + (-1.0 * reaction_v121) + (-1.0 * reaction_v124));
	
% Species:   id = EGFideg, name = EGFideg, affected by kineticLaw
	xdot(13) = (1/(compartment_Compartment))*(( 1.0 * reaction_v61));
	
% Species:   id = GAP, name = GAP, affected by kineticLaw
	xdot(14) = (1/(compartment_Compartment))*((-1.0 * reaction_v8) + (-1.0 * reaction_v14));
	
% Species:   id = _EGF_EGFR__2_GAP, name = (EGF_EGFR*)2_GAP, affected by kineticLaw
	xdot(15) = (1/(compartment_Compartment))*(( 1.0 * reaction_v8) + (-1.0 * reaction_v16) + (-1.0 * reaction_v22) + (-1.0 * reaction_v32) + (-1.0 * reaction_v34) + (-1.0 * reaction_v37) + (-1.0 * reaction_v39) + (-1.0 * reaction_v102));
	
% Species:   id = EGFi, name = EGFi, affected by kineticLaw
	xdot(16) = (1/(compartment_Compartment))*((-1.0 * reaction_v10) + (-1.0 * reaction_v61));
	
% Species:   id = _EGF_EGFRi__2_GAP, name = (EGF_EGFRi*)2_GAP, affected by kineticLaw
	xdot(17) = (1/(compartment_Compartment))*(( 1.0 * reaction_v14) + (-1.0 * reaction_v63) + (-1.0 * reaction_v69) + (-1.0 * reaction_v79) + (-1.0 * reaction_v80) + (-1.0 * reaction_v81) + (-1.0 * reaction_v82) + ( 1.0 * reaction_v102) + (-1.0 * reaction_v132));
	
% Species:   id = _EGF_EGFRi__2_GAP_Grb2, name = (EGF_EGFRi*)2_GAP_Grb2, affected by kineticLaw
	xdot(18) = (1/(compartment_Compartment))*(( 1.0 * reaction_v5) + ( 1.0 * reaction_v9) + ( 1.0 * reaction_v63) + (-1.0 * reaction_v64) + (-1.0 * reaction_v133));
	
% Species:   id = _EGF_EGFRi__2_GAP_Grb2_Sos, name = (EGF_EGFRi*)2_GAP_Grb2_Sos, affected by kineticLaw
	xdot(19) = (1/(compartment_Compartment))*(( 1.0 * reaction_v64) + (-1.0 * reaction_v65) + (-1.0 * reaction_v66) + (-1.0 * reaction_v67) + (-1.0 * reaction_v68) + ( 1.0 * reaction_v80) + ( 1.0 * reaction_v105) + ( 1.0 * reaction_v107) + (-1.0 * reaction_v127) + (-1.0 * reaction_v134));
	
% Species:   id = _EGF_EGFRi__2_GAP_Grb2_Sos_Ras_GDP, name = (EGF_EGFRi*)2_GAP_Grb2_Sos_Ras_GDP, affected by kineticLaw
	xdot(20) = (1/(compartment_Compartment))*(( 1.0 * reaction_v65) + ( 1.0 * reaction_v66) + ( 1.0 * reaction_v108) + ( 1.0 * reaction_v110) + (-1.0 * reaction_v135));
	
% Species:   id = _EGF_EGFRi__2_GAP_Grb2_Sos_Ras_GTP, name = (EGF_EGFRi*)2_GAP_Grb2_Sos_Ras_GTP, affected by kineticLaw
	xdot(21) = (1/(compartment_Compartment))*(( 1.0 * reaction_v67) + ( 1.0 * reaction_v68) + ( 1.0 * reaction_v111) + ( 1.0 * reaction_v113) + (-1.0 * reaction_v136));
	
% Species:   id = Grb2, name = Grb2, affected by kineticLaw
	xdot(22) = (1/(compartment_Compartment))*((-1.0 * reaction_v16) + (-1.0 * reaction_v24) + (-1.0 * reaction_v35) + (-1.0 * reaction_v38) + (-1.0 * reaction_v63) + (-1.0 * reaction_v71));
	
% Species:   id = _EGF_EGFR__2_GAP_Grb2, name = (EGF_EGFR*)2_GAP_Grb2, affected by kineticLaw
	xdot(23) = (1/(compartment_Compartment))*((-1.0 * reaction_v4) + (-1.0 * reaction_v9) + ( 1.0 * reaction_v16) + (-1.0 * reaction_v17));
	
% Species:   id = Sos, name = Sos, affected by kineticLaw
	xdot(24) = (1/(compartment_Compartment))*((-1.0 * reaction_v17) + (-1.0 * reaction_v25) + (-1.0 * reaction_v35) + (-1.0 * reaction_v40) + (-1.0 * reaction_v64) + (-1.0 * reaction_v72) + (-1.0 * reaction_v130) + (-1.0 * reaction_v131));
	
% Species:   id = _EGF_EGFR__2_GAP_Grb2_Sos, name = (EGF_EGFR*)2_GAP_Grb2_Sos, affected by kineticLaw
	xdot(25) = (1/(compartment_Compartment))*(( 1.0 * reaction_v17) + (-1.0 * reaction_v18) + (-1.0 * reaction_v19) + (-1.0 * reaction_v20) + (-1.0 * reaction_v21) + ( 1.0 * reaction_v34) + (-1.0 * reaction_v105) + (-1.0 * reaction_v106) + (-1.0 * reaction_v126));
	
% Species:   id = Ras_GDP, name = Ras_GDP, affected by kineticLaw
	xdot(26) = (1/(compartment_Compartment))*((-1.0 * reaction_v18) + (-1.0 * reaction_v21) + (-1.0 * reaction_v26) + (-1.0 * reaction_v31) + (-1.0 * reaction_v65) + (-1.0 * reaction_v68) + (-1.0 * reaction_v73) + (-1.0 * reaction_v78));
	
% Species:   id = _EGF_EGFR__2_GAP_Grb2_Sos_Ras_GDP, name = (EGF_EGFR*)2_GAP_Grb2_Sos_Ras_GDP, affected by kineticLaw
	xdot(27) = (1/(compartment_Compartment))*(( 1.0 * reaction_v18) + ( 1.0 * reaction_v19) + (-1.0 * reaction_v108) + (-1.0 * reaction_v109));
	
% Species:   id = Ras_GTP, name = Ras_GTP, affected by kineticLaw
	xdot(28) = (1/(compartment_Compartment))*((-1.0 * reaction_v19) + (-1.0 * reaction_v27) + (-1.0 * reaction_v28));
	
% Species:   id = _EGF_EGFR__2_GAP_Grb2_Sos_Ras_GTP, name = (EGF_EGFR*)2_GAP_Grb2_Sos_Ras_GTP, affected by kineticLaw
	xdot(29) = (1/(compartment_Compartment))*(( 1.0 * reaction_v20) + ( 1.0 * reaction_v21) + (-1.0 * reaction_v111) + (-1.0 * reaction_v112));
	
% Species:   id = Grb2_Sos, name = Grb2_Sos, affected by kineticLaw
	xdot(30) = (1/(compartment_Compartment))*((-1.0 * reaction_v33) + (-1.0 * reaction_v34) + ( 1.0 * reaction_v35) + (-1.0 * reaction_v41) + (-1.0 * reaction_v80) + (-1.0 * reaction_v83));
	
% Species:   id = Shc, name = Shc, affected by kineticLaw
	xdot(31) = (1/(compartment_Compartment))*((-1.0 * reaction_v22) + ( 1.0 * reaction_v36) + (-1.0 * reaction_v69));
	
% Species:   id = _EGF_EGFR__2_GAP_SHC, name = (EGF_EGFR*)2_GAP_SHC, affected by kineticLaw
	xdot(32) = (1/(compartment_Compartment))*(( 1.0 * reaction_v22) + (-1.0 * reaction_v23) + (-1.0 * reaction_v103));
	
% Species:   id = _EGF_EGFR__2_GAP_SHC_0, name = (EGF_EGFR*)2_GAP_SHC*, affected by kineticLaw
	xdot(33) = (1/(compartment_Compartment))*(( 1.0 * reaction_v23) + (-1.0 * reaction_v24) + ( 1.0 * reaction_v37) + (-1.0 * reaction_v41) + (-1.0 * reaction_v104));
	
% Species:   id = _EGF_EGFR__2_GAP_SHC__Grb2, name = (EGF_EGFR*)2_GAP_SHC*_Grb2, affected by kineticLaw
	xdot(34) = (1/(compartment_Compartment))*(( 1.0 * reaction_v24) + (-1.0 * reaction_v25) + ( 1.0 * reaction_v39) + (-1.0 * reaction_v114) + (-1.0 * reaction_v115));
	
% Species:   id = _EGF_EGFR__2_GAP_SHC__Grb2_Sos, name = (EGF_EGFR*)2_GAP_SHC*_Grb2_Sos, affected by kineticLaw
	xdot(35) = (1/(compartment_Compartment))*(( 1.0 * reaction_v25) + (-1.0 * reaction_v26) + (-1.0 * reaction_v27) + (-1.0 * reaction_v30) + (-1.0 * reaction_v31) + ( 1.0 * reaction_v32) + ( 1.0 * reaction_v41) + (-1.0 * reaction_v117) + (-1.0 * reaction_v118) + (-1.0 * reaction_v128));
	
% Species:   id = _EGF_EGFR__2_GAP_SHC__Grb2_Sos_Ras_GDP, name = (EGF_EGFR*)2_GAP_SHC*_Grb2_Sos_Ras_GDP, affected by kineticLaw
	xdot(36) = (1/(compartment_Compartment))*(( 1.0 * reaction_v26) + ( 1.0 * reaction_v27) + (-1.0 * reaction_v120) + (-1.0 * reaction_v121));
	
% Species:   id = _EGF_EGFR__2_GAP_SHC__Grb2_Sos_Ras_GTP, name = (EGF_EGFR*)2_GAP_SHC*_Grb2_Sos_Ras_GTP, affected by kineticLaw
	xdot(37) = (1/(compartment_Compartment))*(( 1.0 * reaction_v30) + ( 1.0 * reaction_v31) + (-1.0 * reaction_v123) + (-1.0 * reaction_v124));
	
% Species:   id = Shc__Grb2_Sos, name = Shc*_Grb2_Sos, affected by kineticLaw
	xdot(38) = (1/(compartment_Compartment))*((-1.0 * reaction_v32) + ( 1.0 * reaction_v33) + ( 1.0 * reaction_v40) + (-1.0 * reaction_v79));
	
% Species:   id = Shc__Grb2, name = Shc*_Grb2, affected by kineticLaw
	xdot(39) = (1/(compartment_Compartment))*(( 1.0 * reaction_v38) + (-1.0 * reaction_v39) + (-1.0 * reaction_v40) + (-1.0 * reaction_v82));
	
% Species:   id = Shc_0, name = Shc*, affected by kineticLaw
	xdot(40) = (1/(compartment_Compartment))*((-1.0 * reaction_v33) + (-1.0 * reaction_v36) + (-1.0 * reaction_v37) + (-1.0 * reaction_v38) + (-1.0 * reaction_v81));
	
% Species:   id = Raf, name = Raf, affected by kineticLaw
	xdot(41) = (1/(compartment_Compartment))*((-1.0 * reaction_v28) + ( 1.0 * reaction_v43) + (-1.0 * reaction_v75) + ( 1.0 * reaction_v85));
	
% Species:   id = Raf_Ras_GTP, name = Raf_Ras_GTP, affected by kineticLaw
	xdot(42) = (1/(compartment_Compartment))*(( 1.0 * reaction_v28) + ( 1.0 * reaction_v29));
	
% Species:   id = Ras_GTP_, name = Ras_GTP*, affected by kineticLaw
	xdot(43) = (1/(compartment_Compartment))*((-1.0 * reaction_v20) + (-1.0 * reaction_v29) + (-1.0 * reaction_v30));
	
% Species:   id = Phosphatase1, name = Phosphatase1, affected by kineticLaw
	xdot(44) = (1/(compartment_Compartment))*((-1.0 * reaction_v42) + ( 1.0 * reaction_v43) + (-1.0 * reaction_v84) + ( 1.0 * reaction_v85));
	
% Species:   id = Raf_0, name = Raf*, affected by kineticLaw
	xdot(45) = (1/(compartment_Compartment))*((-1.0 * reaction_v29) + (-1.0 * reaction_v42) + (-1.0 * reaction_v44) + ( 1.0 * reaction_v45) + (-1.0 * reaction_v46) + ( 1.0 * reaction_v47));
	
% Species:   id = Raf__phosphatase1, name = Raf*_phosphatase1, affected by kineticLaw
	xdot(46) = (1/(compartment_Compartment))*(( 1.0 * reaction_v42) + (-1.0 * reaction_v43));
	
% Species:   id = MEK, name = MEK, affected by kineticLaw
	xdot(47) = (1/(compartment_Compartment))*((-1.0 * reaction_v44) + ( 1.0 * reaction_v51) + (-1.0 * reaction_v86) + ( 1.0 * reaction_v93));
	
% Species:   id = MEK_Raf, name = MEK_Raf*, affected by kineticLaw
	xdot(48) = (1/(compartment_Compartment))*(( 1.0 * reaction_v44) + (-1.0 * reaction_v45));
	
% Species:   id = MEK_P, name = MEK_P, affected by kineticLaw
	xdot(49) = (1/(compartment_Compartment))*(( 1.0 * reaction_v45) + (-1.0 * reaction_v46) + ( 1.0 * reaction_v49) + (-1.0 * reaction_v50));
	
% Species:   id = MEK_P_Raf, name = MEK_P_Raf*, affected by kineticLaw
	xdot(50) = (1/(compartment_Compartment))*(( 1.0 * reaction_v46) + (-1.0 * reaction_v47));
	
% Species:   id = MEK_PP, name = MEK_PP, affected by kineticLaw
	xdot(51) = (1/(compartment_Compartment))*(( 1.0 * reaction_v47) + (-1.0 * reaction_v48) + (-1.0 * reaction_v52) + ( 1.0 * reaction_v53) + (-1.0 * reaction_v54) + ( 1.0 * reaction_v55));
	
% Species:   id = MEK_PP_phosphatase2, name = MEK_PP_phosphatase2, affected by kineticLaw
	xdot(52) = (1/(compartment_Compartment))*(( 1.0 * reaction_v48) + (-1.0 * reaction_v49));
	
% Species:   id = phosphatse2, name = phosphatse2, affected by kineticLaw
	xdot(53) = (1/(compartment_Compartment))*((-1.0 * reaction_v48) + ( 1.0 * reaction_v49) + (-1.0 * reaction_v50) + ( 1.0 * reaction_v51) + (-1.0 * reaction_v90) + ( 1.0 * reaction_v91) + (-1.0 * reaction_v92) + ( 1.0 * reaction_v93));
	
% Species:   id = MEK_P_phosphatase2, name = MEK_P_phosphatase2, affected by kineticLaw
	xdot(54) = (1/(compartment_Compartment))*(( 1.0 * reaction_v50) + (-1.0 * reaction_v51));
	
% Species:   id = ERK, name = ERK, affected by kineticLaw
	xdot(55) = (1/(compartment_Compartment))*((-1.0 * reaction_v52) + ( 1.0 * reaction_v59) + (-1.0 * reaction_v94) + ( 1.0 * reaction_v101));
	
% Species:   id = ERK_MEK_PP, name = ERK_MEK_PP, affected by kineticLaw
	xdot(56) = (1/(compartment_Compartment))*(( 1.0 * reaction_v52) + (-1.0 * reaction_v53));
	
% Species:   id = ERK_P, name = ERK_P, affected by kineticLaw
	xdot(57) = (1/(compartment_Compartment))*(( 1.0 * reaction_v53) + (-1.0 * reaction_v54) + ( 1.0 * reaction_v57) + (-1.0 * reaction_v58));
	
% Species:   id = ERK_P_MEKPP, name = ERK_P_MEKPP, affected by kineticLaw
	xdot(58) = (1/(compartment_Compartment))*(( 1.0 * reaction_v54) + (-1.0 * reaction_v55));
	
% Species:   id = ERK_PP, name = ERK_PP, affected by kineticLaw
	xdot(59) = (1/(compartment_Compartment))*(( 1.0 * reaction_v55) + (-1.0 * reaction_v56) + (-1.0 * reaction_v126) + (-1.0 * reaction_v128) + (-1.0 * reaction_v130) + (-1.0 * reaction_v143) + (-1.0 * reaction_v144) + (-1.0 * reaction_v145));
	
% Species:   id = phosphatase3, name = phosphatase3, affected by kineticLaw
	xdot(60) = (1/(compartment_Compartment))*((-1.0 * reaction_v56) + ( 1.0 * reaction_v57) + (-1.0 * reaction_v58) + ( 1.0 * reaction_v59) + (-1.0 * reaction_v98) + ( 1.0 * reaction_v99) + (-1.0 * reaction_v100) + ( 1.0 * reaction_v101));
	
% Species:   id = ERK_PP_phosphatase3, name = ERK_PP_phosphatase3, affected by kineticLaw
	xdot(61) = (1/(compartment_Compartment))*(( 1.0 * reaction_v56) + (-1.0 * reaction_v57));
	
% Species:   id = ERK_P_phosphatase3, name = ERK_P_phosphatase3, affected by kineticLaw
	xdot(62) = (1/(compartment_Compartment))*(( 1.0 * reaction_v58) + (-1.0 * reaction_v59));
	
% Species:   id = _EGF_EGFRi__2_GAP_SHC, name = (EGF_EGFRi*)2_GAP_SHC, affected by kineticLaw
	xdot(63) = (1/(compartment_Compartment))*(( 1.0 * reaction_v69) + (-1.0 * reaction_v70) + ( 1.0 * reaction_v103) + (-1.0 * reaction_v137));
	
% Species:   id = _EGF_EGFRi__2_GAP_SHC_0, name = (EGF_EGFRi*)2_GAP_SHC*, affected by kineticLaw
	xdot(64) = (1/(compartment_Compartment))*(( 1.0 * reaction_v70) + (-1.0 * reaction_v71) + ( 1.0 * reaction_v81) + (-1.0 * reaction_v83) + ( 1.0 * reaction_v104) + (-1.0 * reaction_v138));
	
% Species:   id = _EGF_EGFRi__2_GAP_SHC__Grb2, name = (EGF_EGFRi*)2_GAP_SHC*_Grb2, affected by kineticLaw
	xdot(65) = (1/(compartment_Compartment))*(( 1.0 * reaction_v71) + (-1.0 * reaction_v72) + ( 1.0 * reaction_v82) + ( 1.0 * reaction_v114) + ( 1.0 * reaction_v116) + (-1.0 * reaction_v139));
	
% Species:   id = _EGF_EGFRi__2_GAP_SHC__Grb2_Sos, name = (EGF_EGFRi*)2_GAP_SHC*_Grb2_Sos, affected by kineticLaw
	xdot(66) = (1/(compartment_Compartment))*(( 1.0 * reaction_v72) + (-1.0 * reaction_v73) + (-1.0 * reaction_v74) + (-1.0 * reaction_v77) + (-1.0 * reaction_v78) + ( 1.0 * reaction_v79) + ( 1.0 * reaction_v83) + ( 1.0 * reaction_v117) + ( 1.0 * reaction_v119) + (-1.0 * reaction_v129) + (-1.0 * reaction_v140));
	
% Species:   id = _EGF_EGFRi__2_GAP_SHC__Grb2_Sos_Ras_GDP, name = (EGF_EGFRi*)2_GAP_SHC*_Grb2_Sos_Ras_GDP, affected by kineticLaw
	xdot(67) = (1/(compartment_Compartment))*(( 1.0 * reaction_v73) + ( 1.0 * reaction_v74) + ( 1.0 * reaction_v120) + ( 1.0 * reaction_v122) + (-1.0 * reaction_v141));
	
% Species:   id = _EGF_EGFRi__2_GAP_SHC__Grb2_Sos_Ras_GTP, name = (EGF_EGFRi*)2_GAP_SHC*_Grb2_Sos_Ras_GTP, affected by kineticLaw
	xdot(68) = (1/(compartment_Compartment))*(( 1.0 * reaction_v77) + ( 1.0 * reaction_v78) + ( 1.0 * reaction_v123) + ( 1.0 * reaction_v125) + (-1.0 * reaction_v142));
	
% Species:   id = Ras_GTPi, name = Ras_GTPi, affected by kineticLaw
	xdot(69) = (1/(compartment_Compartment))*((-1.0 * reaction_v66) + (-1.0 * reaction_v74) + (-1.0 * reaction_v75));
	
% Species:   id = Raf_Ras_GTPi, name = Raf_Ras_GTPi, affected by kineticLaw
	xdot(70) = (1/(compartment_Compartment))*(( 1.0 * reaction_v75) + ( 1.0 * reaction_v76));
	
% Species:   id = Ras_GTPi_0, name = Ras_GTPi*, affected by kineticLaw
	xdot(71) = (1/(compartment_Compartment))*((-1.0 * reaction_v67) + (-1.0 * reaction_v76) + (-1.0 * reaction_v77));
	
% Species:   id = Rafi, name = Rafi*, affected by kineticLaw
	xdot(72) = (1/(compartment_Compartment))*((-1.0 * reaction_v76) + (-1.0 * reaction_v84) + (-1.0 * reaction_v86) + ( 1.0 * reaction_v87) + (-1.0 * reaction_v88) + ( 1.0 * reaction_v89));
	
% Species:   id = Rafi__phosphatase1, name = Rafi*_phosphatase1, affected by kineticLaw
	xdot(73) = (1/(compartment_Compartment))*(( 1.0 * reaction_v84) + (-1.0 * reaction_v85));
	
% Species:   id = MEK_Rafi, name = MEK_Rafi*, affected by kineticLaw
	xdot(74) = (1/(compartment_Compartment))*(( 1.0 * reaction_v86) + (-1.0 * reaction_v87));
	
% Species:   id = MEKi_P, name = MEKi_P, affected by kineticLaw
	xdot(75) = (1/(compartment_Compartment))*(( 1.0 * reaction_v87) + (-1.0 * reaction_v88) + ( 1.0 * reaction_v91) + (-1.0 * reaction_v92));
	
% Species:   id = MEK_P_Rafi, name = MEK_P_Rafi*, affected by kineticLaw
	xdot(76) = (1/(compartment_Compartment))*(( 1.0 * reaction_v88) + (-1.0 * reaction_v89));
	
% Species:   id = MEKi_PP, name = MEKi_PP, affected by kineticLaw
	xdot(77) = (1/(compartment_Compartment))*(( 1.0 * reaction_v89) + (-1.0 * reaction_v90) + (-1.0 * reaction_v94) + ( 1.0 * reaction_v95) + (-1.0 * reaction_v96) + ( 1.0 * reaction_v97));
	
% Species:   id = MEKi_PP_phosphatase2, name = MEKi_PP_phosphatase2, affected by kineticLaw
	xdot(78) = (1/(compartment_Compartment))*(( 1.0 * reaction_v90) + (-1.0 * reaction_v91));
	
% Species:   id = MEKi_P_phosphatase2, name = MEKi_P_phosphatase2, affected by kineticLaw
	xdot(79) = (1/(compartment_Compartment))*(( 1.0 * reaction_v92) + (-1.0 * reaction_v93));
	
% Species:   id = ERKi_P, name = ERKi_P, affected by kineticLaw
	xdot(80) = (1/(compartment_Compartment))*(( 1.0 * reaction_v95) + (-1.0 * reaction_v96) + ( 1.0 * reaction_v99) + (-1.0 * reaction_v100));
	
% Species:   id = ERKi_P_MEKi_PP, name = ERKi_P_MEKi_PP, affected by kineticLaw
	xdot(81) = (1/(compartment_Compartment))*(( 1.0 * reaction_v96) + (-1.0 * reaction_v97));
	
% Species:   id = ERKi_PP, name = ERKi_PP, affected by kineticLaw
	xdot(82) = (1/(compartment_Compartment))*(( 1.0 * reaction_v97) + (-1.0 * reaction_v98) + (-1.0 * reaction_v127) + (-1.0 * reaction_v129) + (-1.0 * reaction_v131) + (-1.0 * reaction_v146) + (-1.0 * reaction_v147) + (-1.0 * reaction_v148));
	
% Species:   id = ERKi_PP_phosphatase3, name = ERKi_PP_phosphatase3, affected by kineticLaw
	xdot(83) = (1/(compartment_Compartment))*(( 1.0 * reaction_v98) + (-1.0 * reaction_v99));
	
% Species:   id = ERKi_P_phosphatase3, name = ERKi_P_phosphatase3, affected by kineticLaw
	xdot(84) = (1/(compartment_Compartment))*(( 1.0 * reaction_v100) + (-1.0 * reaction_v101));
	
% Species:   id = EGFRidag, name = EGFRidag, affected by kineticLaw
	xdot(85) = (1/(compartment_Compartment))*(( 1.0 * reaction_v60));
	
% Species:   id = _EGF_EGFRi___2deg, name = (EGF_EGFRi*)*2deg, affected by kineticLaw
	xdot(86) = (1/(compartment_Compartment))*(( 1.0 * reaction_v62) + ( 1.0 * reaction_v132) + ( 1.0 * reaction_v133) + ( 1.0 * reaction_v134) + ( 1.0 * reaction_v135) + ( 1.0 * reaction_v136) + ( 1.0 * reaction_v137) + ( 1.0 * reaction_v138) + ( 1.0 * reaction_v139) + ( 1.0 * reaction_v140) + ( 1.0 * reaction_v141) + ( 1.0 * reaction_v142));
	
% Species:   id = _EGF_EGFR__2_GAP_Grb2_Sos_Prot, name = (EGF_EGFR*)2_GAP_Grb2_Sos_Prot, affected by kineticLaw
	xdot(87) = (1/(compartment_Compartment))*(( 1.0 * reaction_v106) + (-1.0 * reaction_v107));
	
% Species:   id = _EGF_EGFR__2_GAP_Grb2_Sos_Ras_GDP_Prot, name = (EGF_EGFR*)2_GAP_Grb2_Sos_Ras_GDP_Prot, affected by kineticLaw
	xdot(88) = (1/(compartment_Compartment))*(( 1.0 * reaction_v109) + (-1.0 * reaction_v110));
	
% Species:   id = _EGF_EGFR__2_GAP_Grb2_Sos_Ras_GTP_Prot, name = (EGF_EGFR*)2_GAP_Grb2_Sos_Ras_GTP_Prot, affected by kineticLaw
	xdot(89) = (1/(compartment_Compartment))*(( 1.0 * reaction_v112) + (-1.0 * reaction_v113));
	
% Species:   id = _EGF_EGFR__2_GAP_Grb2_Sos_ERK_PP, name = (EGF_EGFR*)2_GAP_Grb2_Sos_ERK_PP, affected by kineticLaw
	xdot(90) = (1/(compartment_Compartment))*(( 1.0 * reaction_v126) + ( 1.0 * reaction_v143));
	
% Species:   id = _EGF_EGFRi__2_GAP_Grb2_Sos_ERKi_PP, name = (EGF_EGFRi*)2_GAP_Grb2_Sos_ERKi_PP, affected by kineticLaw
	xdot(91) = (1/(compartment_Compartment))*(( 1.0 * reaction_v127) + ( 1.0 * reaction_v146));
	
% Species:   id = _EGF_EGFR__2_GAP_SHC__Grb2_Sos_ERK_PP, name = (EGF_EGFR*)2_GAP_SHC*_Grb2_Sos_ERK_PP, affected by kineticLaw
	xdot(92) = (1/(compartment_Compartment))*(( 1.0 * reaction_v128) + ( 1.0 * reaction_v144));
	
% Species:   id = _EGF_EGFRi__2_GAP_SHC__Grb2_Sos_ERKi_PP, name = (EGF_EGFRi*)2_GAP_SHC*_Grb2_Sos_ERKi_PP, affected by kineticLaw
	xdot(93) = (1/(compartment_Compartment))*(( 1.0 * reaction_v129) + ( 1.0 * reaction_v147));
	
% Species:   id = _EGF_EGFR__2_GAP_Grb2_Sos_deg, name = (EGF_EGFR*)2_GAP_Grb2_Sos deg, affected by kineticLaw
	xdot(94) = (1/(compartment_Compartment))*((-1.0 * reaction_v143) + (-1.0 * reaction_v144));
	
% Species:   id = _EGF_EGFRi__2_GAP_Grb2_Sos_deg, name = (EGF_EGFRi*)2_GAP_Grb2_Sos deg, affected by kineticLaw
	xdot(95) = (1/(compartment_Compartment))*((-1.0 * reaction_v146) + (-1.0 * reaction_v147));
	
% Species:   id = Sos_ERK_PP, name = Sos_ERK_PP, affected by kineticLaw
	xdot(96) = (1/(compartment_Compartment))*(( 1.0 * reaction_v130) + ( 1.0 * reaction_v145));
	
% Species:   id = Sos_ERKi_PP, name = Sos_ERKi_PP, affected by kineticLaw
	xdot(97) = (1/(compartment_Compartment))*(( 1.0 * reaction_v131) + ( 1.0 * reaction_v148));
	
% Species:   id = Sosi, name = Sosi, affected by kineticLaw
	xdot(98) = (1/(compartment_Compartment))*((-1.0 * reaction_v145) + (-1.0 * reaction_v148));
	
% Species:   id = ERKi_MEKi_PP_0, name = ERKi_MEKi_PP, affected by kineticLaw
	xdot(99) = (1/(compartment_Compartment))*(( 1.0 * reaction_v94) + (-1.0 * reaction_v95));
	
% Species:   id = _EGF_EGFR__2_GAP_SHC__Grb2_Prot_0, name = (EGF_EGFR*)2_GAP_SHC*_Grb2_Prot, affected by kineticLaw
	xdot(100) = (1/(compartment_Compartment))*(( 1.0 * reaction_v115) + (-1.0 * reaction_v116));
	
% Species:   id = _EGF_EGFR__2_GAP_SHC__Grb2_Sos_Prot_0, name = (EGF_EGFR*)2_GAP_SHC*_Grb2_Sos_Prot, affected by kineticLaw
	xdot(101) = (1/(compartment_Compartment))*(( 1.0 * reaction_v118) + (-1.0 * reaction_v119));
	
% Species:   id = _EGF_EGFR__2_GAP_SHC__Grb2_Sos_Ras_GDP_Prot_0, name = (EGF_EGFR*)2_GAP_SHC*_Grb2_Sos_Ras_GDP_Prot, affected by kineticLaw
	xdot(102) = (1/(compartment_Compartment))*(( 1.0 * reaction_v121) + (-1.0 * reaction_v122));
	
% Species:   id = _EGF_EGFR__2_GAP_SHC__Grb2_Sos_Ras_GTP_Prot_0, name = (EGF_EGFR*)2_GAP_SHC*_Grb2_Sos_Ras_GTP_Prot, affected by kineticLaw
	xdot(103) = (1/(compartment_Compartment))*(( 1.0 * reaction_v124) + (-1.0 * reaction_v125));
end

function z=Constant_flux__irreversible_0(v), z=(v);end

function z=function_for_v1_1(EGF,EGFR,EGF_EGFR,k1,kd1), z=(k1*EGF*EGFR-kd1*EGF_EGFR);end

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


