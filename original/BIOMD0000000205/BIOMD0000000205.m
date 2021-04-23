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
% Model name = Ung2008_EGFR_Endocytosis
%
% is http://identifiers.org/biomodels.db/MODEL7802538336
% is http://identifiers.org/biomodels.db/BIOMD0000000205
% isDescribedBy http://identifiers.org/pubmed/18505685
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000019
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000048
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000049
% isDerivedFrom http://identifiers.org/pubmed/11024454
% isDerivedFrom http://identifiers.org/pubmed/16687399
% isDerivedFrom http://identifiers.org/pubmed/14751248
%


function main()
%Initial conditions vector
	x0=zeros(194,1);
	x0(1) = 0.0081967;
	x0(2) = 0.3;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.1;
	x0(7) = 0.0;
	x0(8) = 1.0;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 0.0;
	x0(13) = 1.0;
	x0(14) = 0.0;
	x0(15) = 0.3;
	x0(16) = 0.0;
	x0(17) = 0.0;
	x0(18) = 0.15;
	x0(19) = 0.0;
	x0(20) = 0.0;
	x0(21) = 0.0;
	x0(22) = 0.0;
	x0(23) = 0.0;
	x0(24) = 0.5;
	x0(25) = 0.0;
	x0(26) = 0.0;
	x0(27) = 0.68;
	x0(28) = 0.0;
	x0(29) = 0.0;
	x0(30) = 0.0;
	x0(31) = 0.0;
	x0(32) = 0.4;
	x0(33) = 0.0;
	x0(34) = 0.0;
	x0(35) = 0.0;
	x0(36) = 0.0;
	x0(37) = 0.5;
	x0(38) = 0.0;
	x0(39) = 0.02;
	x0(40) = 0.0;
	x0(41) = 0.0;
	x0(42) = 0.002;
	x0(43) = 0.0;
	x0(44) = 0.0;
	x0(45) = 0.1;
	x0(46) = 0.0;
	x0(47) = 0.0;
	x0(48) = 0.0;
	x0(49) = 0.0;
	x0(50) = 0.01;
	x0(51) = 0.0;
	x0(52) = 0.0;
	x0(53) = 0.0;
	x0(54) = 0.2;
	x0(55) = 0.0;
	x0(56) = 0.5;
	x0(57) = 0.0;
	x0(58) = 0.5;
	x0(59) = 0.1;
	x0(60) = 0.0;
	x0(61) = 0.1;
	x0(62) = 0.0;
	x0(63) = 0.0;
	x0(64) = 0.0;
	x0(65) = 0.1;
	x0(66) = 0.0;
	x0(67) = 0.0;
	x0(68) = 0.0;
	x0(69) = 0.0;
	x0(70) = 0.1;
	x0(71) = 0.0;
	x0(72) = 0.0;
	x0(73) = 0.0;
	x0(74) = 0.1;
	x0(75) = 0.0;
	x0(76) = 0.2;
	x0(77) = 0.0;
	x0(78) = 0.0;
	x0(79) = 0.1;
	x0(80) = 0.0;
	x0(81) = 0.1;
	x0(82) = 0.0;
	x0(83) = 0.15;
	x0(84) = 0.0;
	x0(85) = 0.0;
	x0(86) = 0.0;
	x0(87) = 0.0;
	x0(88) = 0.0;
	x0(89) = 0.0;
	x0(90) = 0.0;
	x0(91) = 0.1;
	x0(92) = 0.0;
	x0(93) = 0.0;
	x0(94) = 0.0;
	x0(95) = 0.1;
	x0(96) = 0.0;
	x0(97) = 0.0;
	x0(98) = 0.5;
	x0(99) = 0.0;
	x0(100) = 0.0;
	x0(101) = 0.0;
	x0(102) = 0.0;
	x0(103) = 0.0;
	x0(104) = 0.0;
	x0(105) = 0.0;
	x0(106) = 0.68;
	x0(107) = 0.0;
	x0(108) = 0.518;
	x0(109) = 0.0;
	x0(110) = 0.0;
	x0(111) = 0.0;
	x0(112) = 0.518;
	x0(113) = 0.0;
	x0(114) = 0.0;
	x0(115) = 0.8;
	x0(116) = 0.0;
	x0(117) = 0.0;
	x0(118) = 0.5;
	x0(119) = 0.0;
	x0(120) = 0.0;
	x0(121) = 0.0;
	x0(122) = 0.0;
	x0(123) = 3000.0;
	x0(124) = 0.0;
	x0(125) = 0.0;
	x0(126) = 1.0;
	x0(127) = 0.0;
	x0(128) = 0.0;
	x0(129) = 0.0;
	x0(130) = 0.0;
	x0(131) = 0.5;
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
	x0(145) = 0.0;
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
	x0(193) = 0.0;
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

% Compartment: id = compartment_0, name = Cell, constant
	compartment_compartment_0=1.0;

% Reaction: id = reaction_0, name = R1	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_0_k1=100.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_0_k2=0.0038;

	reaction_reaction_0=compartment_compartment_0*(reaction_reaction_0_k1*x(1)*x(2)-reaction_reaction_0_k2*x(3));

% Reaction: id = reaction_1, name = R2	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_1_k1=10.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_1_k2=0.02;

	reaction_reaction_1=compartment_compartment_0*(reaction_reaction_1_k1*x(3)*x(3)-reaction_reaction_1_k2*x(4));

% Reaction: id = reaction_2, name = R3	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_2_k1=2.014;

	reaction_reaction_2=compartment_compartment_0*reaction_reaction_2_k1*x(4);

% Reaction: id = reaction_3, name = R4	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_3_k1=3.14;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_3_k2=0.2;

	reaction_reaction_3=compartment_compartment_0*(reaction_reaction_3_k1*x(5)*x(6)-reaction_reaction_3_k2*x(7));

% Reaction: id = reaction_4, name = R5	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_4_k1=0.2661;

	reaction_reaction_4=compartment_compartment_0*reaction_reaction_4_k1*x(7);

% Reaction: id = reaction_5, name = R6	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_5_k1=90.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_5_k2=0.6;

	reaction_reaction_5=compartment_compartment_0*(reaction_reaction_5_k1*x(5)*x(8)-reaction_reaction_5_k2*x(9));

% Reaction: id = reaction_6, name = R7	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_6_k1=0.5838;

	reaction_reaction_6=compartment_compartment_0*reaction_reaction_6_k1*x(9);

% Reaction: id = reaction_7, name = R8	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_7_k1=4.481;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_7_k2=0.3;

	reaction_reaction_7=compartment_compartment_0*(reaction_reaction_7_k1*x(10)-reaction_reaction_7_k2*x(5)*x(11));

% Reaction: id = reaction_8, name = R9	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_8_k1=3.114;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_8_k2=0.2;

	reaction_reaction_8=compartment_compartment_0*(reaction_reaction_8_k1*x(11)*x(6)-reaction_reaction_8_k2*x(12));

% Reaction: id = reaction_9, name = R10	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_9_k1=0.2661;

	reaction_reaction_9=compartment_compartment_0*reaction_reaction_9_k1*x(12);

% Reaction: id = reaction_10, name = R11	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_10_k1=3.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_10_k2=0.1;

	reaction_reaction_10=compartment_compartment_0*(reaction_reaction_10_k1*x(10)*x(13)-reaction_reaction_10_k2*x(14));

% Reaction: id = reaction_11, name = R12	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_11_k1=10.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_11_k2=0.0214;

	reaction_reaction_11=compartment_compartment_0*(reaction_reaction_11_k1*x(14)*x(15)-reaction_reaction_11_k2*x(16));

% Reaction: id = reaction_12, name = R13	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_12_k1=0.1;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_12_k2=0.0015;

	reaction_reaction_12=compartment_compartment_0*(reaction_reaction_12_k1*x(13)*x(15)-reaction_reaction_12_k2*x(17));

% Reaction: id = reaction_13, name = R14	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_13_k1=10.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_13_k2=0.045;

	reaction_reaction_13=compartment_compartment_0*(reaction_reaction_13_k1*x(10)*x(17)-reaction_reaction_13_k2*x(16));

% Reaction: id = reaction_14, name = R15	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_14_k1=202.9;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_14_k2=0.18;

	reaction_reaction_14=compartment_compartment_0*(reaction_reaction_14_k1*x(16)*x(18)-reaction_reaction_14_k2*x(19));

% Reaction: id = reaction_15, name = R16	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_15_k1=0.1434;

	reaction_reaction_15=compartment_compartment_0*reaction_reaction_15_k1*x(19);

% Reaction: id = reaction_16, name = R17	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_16_k1=3.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_16_k2=0.05;

	reaction_reaction_16=compartment_compartment_0*(reaction_reaction_16_k1*x(5)*x(13)-reaction_reaction_16_k2*x(21));

% Reaction: id = reaction_17, name = R18	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_17_k1=10.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_17_k2=0.06;

	reaction_reaction_17=compartment_compartment_0*(reaction_reaction_17_k1*x(21)*x(15)-reaction_reaction_17_k2*x(22));

% Reaction: id = reaction_18, name = R19	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_18_k1=2.734;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_18_k2=0.025;

	reaction_reaction_18=compartment_compartment_0*(reaction_reaction_18_k1*x(5)*x(17)-reaction_reaction_18_k2*x(22));

% Reaction: id = reaction_19, name = R20	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_19_k1=202.9;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_19_k2=0.18;

	reaction_reaction_19=compartment_compartment_0*(reaction_reaction_19_k1*x(22)*x(18)-reaction_reaction_19_k2*x(23));

% Reaction: id = reaction_20, name = R21	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_20_k1=0.1434;

	reaction_reaction_20=compartment_compartment_0*reaction_reaction_20_k1*x(23);

% Reaction: id = reaction_21, name = R22	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_21_k1=1.754;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_21_k2=0.05;

	reaction_reaction_21=compartment_compartment_0*(reaction_reaction_21_k1*x(24)*x(20)-reaction_reaction_21_k2*x(25));

% Reaction: id = reaction_22, name = R23	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_22_k1=0.7624;

	reaction_reaction_22=compartment_compartment_0*reaction_reaction_22_k1*x(25);

% Reaction: id = reaction_23, name = R24	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_23_k1=4.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_23_k2=0.01833;

	reaction_reaction_23=compartment_compartment_0*(reaction_reaction_23_k1*x(26)*x(27)-reaction_reaction_23_k2*x(28));

% Reaction: id = reaction_24, name = R25	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_24_k1=3.5;

	reaction_reaction_24=compartment_compartment_0*reaction_reaction_24_k1*x(28);

% Reaction: id = reaction_25, name = R26	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_25_k1=4.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_25_k2=0.01833;

	reaction_reaction_25=compartment_compartment_0*(reaction_reaction_25_k1*x(26)*x(29)-reaction_reaction_25_k2*x(30));

% Reaction: id = reaction_26, name = R27	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_26_k1=2.9;

	reaction_reaction_26=compartment_compartment_0*reaction_reaction_26_k1*x(30);

% Reaction: id = reaction_27, name = R28	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_27_k1=3.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_27_k2=0.033;

	reaction_reaction_27=compartment_compartment_0*(reaction_reaction_27_k1*x(31)*x(32)-reaction_reaction_27_k2*x(33));

% Reaction: id = reaction_28, name = R29	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_28_k1=16.0;

	reaction_reaction_28=compartment_compartment_0*reaction_reaction_28_k1*x(33);

% Reaction: id = reaction_29, name = R30	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_29_k1=3.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_29_k2=0.033;

	reaction_reaction_29=compartment_compartment_0*(reaction_reaction_29_k1*x(31)*x(34)-reaction_reaction_29_k2*x(35));

% Reaction: id = reaction_30, name = R31	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_30_k1=5.7;

	reaction_reaction_30=compartment_compartment_0*reaction_reaction_30_k1*x(35);

% Reaction: id = reaction_31, name = R32	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_31_k1=71.7;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_31_k2=0.2;

	reaction_reaction_31=compartment_compartment_0*(reaction_reaction_31_k1*x(26)*x(37)-reaction_reaction_31_k2*x(38));

% Reaction: id = reaction_32, name = R33	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_32_k1=1.0;

	reaction_reaction_32=compartment_compartment_0*reaction_reaction_32_k1*x(38);

% Reaction: id = reaction_33, name = R34	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_33_k1=14.3;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_33_k2=0.8;

	reaction_reaction_33=compartment_compartment_0*(reaction_reaction_33_k1*x(31)*x(39)-reaction_reaction_33_k2*x(40));

% Reaction: id = reaction_34, name = R35	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_34_k1=0.058;

	reaction_reaction_34=compartment_compartment_0*reaction_reaction_34_k1*x(40);

% Reaction: id = reaction_35, name = R36	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_35_k1=0.25;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_35_k2=0.5;

	reaction_reaction_35=compartment_compartment_0*(reaction_reaction_35_k1*x(29)*x(39)-reaction_reaction_35_k2*x(41));

% Reaction: id = reaction_36, name = R37	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_36_k1=0.058;

	reaction_reaction_36=compartment_compartment_0*reaction_reaction_36_k1*x(41);

% Reaction: id = reaction_37, name = R38	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_37_k1=7.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_37_k2=0.6;

	reaction_reaction_37=compartment_compartment_0*(reaction_reaction_37_k1*x(36)*x(42)-reaction_reaction_37_k2*x(43));

% Reaction: id = reaction_38, name = R39	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_38_k1=0.27;

	reaction_reaction_38=compartment_compartment_0*reaction_reaction_38_k1*x(43);

% Reaction: id = reaction_39, name = R40	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_39_k1=5.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_39_k2=0.5;

	reaction_reaction_39=compartment_compartment_0*(reaction_reaction_39_k1*x(34)*x(42)-reaction_reaction_39_k2*x(44));

% Reaction: id = reaction_40, name = R41	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_40_k1=0.3;

	reaction_reaction_40=compartment_compartment_0*reaction_reaction_40_k1*x(44);

% Reaction: id = reaction_41, name = R42	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_41_k1=1.667E-5;

	reaction_reaction_41=compartment_compartment_0*reaction_reaction_41_k1*x(20);

% Reaction: id = reaction_42, name = R43	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_42_k1=2.854;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_42_k2=0.96;

	reaction_reaction_42=compartment_compartment_0*(reaction_reaction_42_k1*x(20)*x(45)-reaction_reaction_42_k2*x(46));

% Reaction: id = reaction_43, name = R44	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_43_k1=7.6;

	reaction_reaction_43=compartment_compartment_0*reaction_reaction_43_k1*x(46);

% Reaction: id = reaction_44, name = R45	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_44_k1=8.898;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_44_k2=0.1;

	reaction_reaction_44=compartment_compartment_0*(reaction_reaction_44_k1*x(36)*x(16)-reaction_reaction_44_k2*x(47));

% Reaction: id = reaction_45, name = R46	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_45_k1=0.426;

	reaction_reaction_45=compartment_compartment_0*reaction_reaction_45_k1*x(47);

% Reaction: id = reaction_46, name = R47	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_46_k1=8.898;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_46_k2=0.1;

	reaction_reaction_46=compartment_compartment_0*(reaction_reaction_46_k1*x(36)*x(22)-reaction_reaction_46_k2*x(49));

% Reaction: id = reaction_47, name = R48	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_47_k1=0.426;

	reaction_reaction_47=compartment_compartment_0*reaction_reaction_47_k1*x(49);

% Reaction: id = reaction_48, name = R49	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_48_k1=0.002;

	reaction_reaction_48=compartment_compartment_0*reaction_reaction_48_k1*x(48);

% Reaction: id = reaction_49, name = R50	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_49_k1=14.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_49_k2=0.1743;

	reaction_reaction_49=compartment_compartment_0*(reaction_reaction_49_k1*x(5)*x(50)-reaction_reaction_49_k2*x(51));

% Reaction: id = reaction_50, name = R51	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_50_k1=33.72;

	reaction_reaction_50=compartment_compartment_0*reaction_reaction_50_k1*x(51);

% Reaction: id = reaction_51, name = R52	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_51_k1=1.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_51_k2=0.038;

	reaction_reaction_51=compartment_compartment_0*(reaction_reaction_51_k1*x(53)*x(54)-reaction_reaction_51_k2*x(55));

% Reaction: id = reaction_52, name = R53	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_52_k1=0.595;

	reaction_reaction_52=compartment_compartment_0*reaction_reaction_52_k1*x(55);

% Reaction: id = reaction_53, name = R54	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_53_k1=25.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_53_k2=3.5;

	reaction_reaction_53=compartment_compartment_0*(reaction_reaction_53_k1*x(53)*x(56)-reaction_reaction_53_k2*x(57));

% Reaction: id = reaction_54, name = R55	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_54_k1=25.0;

	reaction_reaction_54=compartment_compartment_0*reaction_reaction_54_k1*x(57);

% Reaction: id = reaction_55, name = R56	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_55_k1=3.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_55_k2=1.0;

	reaction_reaction_55=compartment_compartment_0*(reaction_reaction_55_k1*x(59)*x(58)-reaction_reaction_55_k2*x(60));

% Reaction: id = reaction_56, name = R57	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_56_k1=3.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_56_k2=1.0;

	reaction_reaction_56=compartment_compartment_0*(reaction_reaction_56_k1*x(60)*x(61)-reaction_reaction_56_k2*x(62));

% Reaction: id = reaction_57, name = R58	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_57_k1=3.0;

	reaction_reaction_57=compartment_compartment_0*reaction_reaction_57_k1*x(62);

% Reaction: id = reaction_58, name = R59	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_58_k1=0.001;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_58_k2=10.0;

	reaction_reaction_58=compartment_compartment_0*(reaction_reaction_58_k1*x(63)-reaction_reaction_58_k2*x(64)*x(58));

% Reaction: id = reaction_59, name = R60	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_59_k1=1.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_59_k2=0.9;

	reaction_reaction_59=compartment_compartment_0*(reaction_reaction_59_k1*x(63)*x(65)-reaction_reaction_59_k2*x(66));

% Reaction: id = reaction_60, name = R61	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_60_k1=0.001;

	reaction_reaction_60=compartment_compartment_0*reaction_reaction_60_k1*x(66);

% Reaction: id = reaction_61, name = R62	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_61_k1=3.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_61_k2=0.5;

	reaction_reaction_61=compartment_compartment_0*(reaction_reaction_61_k1*x(26)*x(63)-reaction_reaction_61_k2*x(67));

% Reaction: id = reaction_62, name = R63	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_62_k1=3.0;

	reaction_reaction_62=compartment_compartment_0*reaction_reaction_62_k1*x(67);

% Reaction: id = reaction_63, name = R64	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_63_k1=0.001;

	reaction_reaction_63=compartment_compartment_0*reaction_reaction_63_k1*x(68);

% Reaction: id = reaction_64, name = R65	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_64_k1=1.1;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_64_k2=0.033;

	reaction_reaction_64=compartment_compartment_0*(reaction_reaction_64_k1*x(69)*x(70)-reaction_reaction_64_k2*x(71));

% Reaction: id = reaction_65, name = R66	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_65_k1=16.0;

	reaction_reaction_65=compartment_compartment_0*reaction_reaction_65_k1*x(71);

% Reaction: id = reaction_66, name = R67	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_66_k1=5.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_66_k2=0.5;

	reaction_reaction_66=compartment_compartment_0*(reaction_reaction_66_k1*x(72)*x(58)-reaction_reaction_66_k2*x(73));

% Reaction: id = reaction_67, name = R68	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_67_k1=5.0;

	reaction_reaction_67=compartment_compartment_0*reaction_reaction_67_k1*x(73);

% Reaction: id = reaction_68, name = R69	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_68_k1=0.1298;

	reaction_reaction_68=compartment_compartment_0*reaction_reaction_68_k1*x(72);

% Reaction: id = reaction_69, name = R70	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_69_k1=17.0;

	reaction_reaction_69=compartment_compartment_0*reaction_reaction_69_k1*x(58);

% Reaction: id = reaction_70, name = R71	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_70_k1=10.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_70_k2=0.0214;

	reaction_reaction_70=compartment_compartment_0*(reaction_reaction_70_k1*x(58)*x(74)-reaction_reaction_70_k2*x(75));

% Reaction: id = reaction_71, name = R72	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_71_k1=2.029;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_71_k2=0.18;

	reaction_reaction_71=compartment_compartment_0*(reaction_reaction_71_k1*x(75)*x(76)-reaction_reaction_71_k2*x(77));

% Reaction: id = reaction_72, name = R73	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_72_k1=0.1434;

	reaction_reaction_72=compartment_compartment_0*reaction_reaction_72_k1*x(77);

% Reaction: id = reaction_73, name = R74	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_73_k1=2.845;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_73_k2=0.96;

	reaction_reaction_73=compartment_compartment_0*(reaction_reaction_73_k1*x(79)*x(76)-reaction_reaction_73_k2*x(80));

% Reaction: id = reaction_74, name = R75	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_74_k1=0.262;

	reaction_reaction_74=compartment_compartment_0*reaction_reaction_74_k1*x(78);

% Reaction: id = reaction_75, name = R76	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_75_k1=2.845;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_75_k2=0.96;

	reaction_reaction_75=compartment_compartment_0*(reaction_reaction_75_k1*x(78)*x(81)-reaction_reaction_75_k2*x(82));

% Reaction: id = reaction_76, name = R77	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_76_k1=1.205;

	reaction_reaction_76=compartment_compartment_0*reaction_reaction_76_k1*x(82);

% Reaction: id = reaction_77, name = R78	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_77_k1=20.29;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_77_k2=0.18;

	reaction_reaction_77=compartment_compartment_0*(reaction_reaction_77_k1*x(83)*x(79)-reaction_reaction_77_k2*x(84));

% Reaction: id = reaction_78, name = R79	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_78_k1=20.29;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_78_k2=0.18;

	reaction_reaction_78=compartment_compartment_0*(reaction_reaction_78_k1*x(83)*x(85)-reaction_reaction_78_k2*x(86));

% Reaction: id = reaction_79, name = R80	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_79_k1=4.98;

	reaction_reaction_79=compartment_compartment_0*reaction_reaction_79_k1*x(86);

% Reaction: id = reaction_80, name = R81	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_80_k1=0.262;

	reaction_reaction_80=compartment_compartment_0*reaction_reaction_80_k1*x(87);

% Reaction: id = reaction_81, name = R82	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_81_k1=0.1;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_81_k2=0.01;

	reaction_reaction_81=compartment_compartment_0*(reaction_reaction_81_k1*x(5)*x(45)-reaction_reaction_81_k2*x(88));

% Reaction: id = reaction_82, name = R83	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_82_k1=2.854;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_82_k2=0.96;

	reaction_reaction_82=compartment_compartment_0*(reaction_reaction_82_k1*x(88)*x(20)-reaction_reaction_82_k2*x(89));

% Reaction: id = reaction_83, name = R84	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_83_k1=7.76;

	reaction_reaction_83=compartment_compartment_0*reaction_reaction_83_k1*x(89);

% Reaction: id = reaction_84, name = R85	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_84_k1=10.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_84_k2=1.0;

	reaction_reaction_84=compartment_compartment_0*(reaction_reaction_84_k1*x(14)*x(91)-reaction_reaction_84_k2*x(92));

% Reaction: id = reaction_85, name = R86	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_85_k1=10.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_85_k2=1.0;

	reaction_reaction_85=compartment_compartment_0*(reaction_reaction_85_k1*x(21)*x(91)-reaction_reaction_85_k2*x(93));

% Reaction: id = reaction_86, name = R87	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_86_k1=2.661;

	reaction_reaction_86=compartment_compartment_0*reaction_reaction_86_k1*x(92);

% Reaction: id = reaction_87, name = R88	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_87_k1=2.661;

	reaction_reaction_87=compartment_compartment_0*reaction_reaction_87_k1*x(93);

% Reaction: id = reaction_88, name = R89	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_88_k1=3.114;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_88_k2=0.2;

	reaction_reaction_88=compartment_compartment_0*(reaction_reaction_88_k1*x(92)*x(85)-reaction_reaction_88_k2*x(94));

% Reaction: id = reaction_89, name = R90	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_89_k1=2.661;

	reaction_reaction_89=compartment_compartment_0*reaction_reaction_89_k1*x(94);

% Reaction: id = reaction_90, name = R91	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_90_k1=3.114;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_90_k2=0.2;

	reaction_reaction_90=compartment_compartment_0*(reaction_reaction_90_k1*x(92)*x(96)-reaction_reaction_90_k2*x(97));

% Reaction: id = reaction_91, name = R92	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_91_k1=2.661;

	reaction_reaction_91=compartment_compartment_0*reaction_reaction_91_k1*x(97);

% Reaction: id = reaction_92, name = R93	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_92_k1=3.114;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_92_k2=0.2;

	reaction_reaction_92=compartment_compartment_0*(reaction_reaction_92_k1*x(93)*x(85)-reaction_reaction_92_k2*x(99));

% Reaction: id = reaction_93, name = R94	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_93_k1=2.661;

	reaction_reaction_93=compartment_compartment_0*reaction_reaction_93_k1*x(99);

% Reaction: id = reaction_94, name = R95	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_94_k1=3.114;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_94_k2=0.2;

	reaction_reaction_94=compartment_compartment_0*(reaction_reaction_94_k1*x(93)*x(96)-reaction_reaction_94_k2*x(100));

% Reaction: id = reaction_95, name = R96	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_95_k1=2.661;

	reaction_reaction_95=compartment_compartment_0*reaction_reaction_95_k1*x(100);

% Reaction: id = reaction_96, name = R97	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_96_k1=3.114;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_96_k2=0.2;

	reaction_reaction_96=compartment_compartment_0*(reaction_reaction_96_k1*x(88)*x(91)-reaction_reaction_96_k2*x(101));

% Reaction: id = reaction_97, name = R98	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_97_k1=2.661;

	reaction_reaction_97=compartment_compartment_0*reaction_reaction_97_k1*x(101);

% Reaction: id = reaction_98, name = R99	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_98_k1=40.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_98_k2=0.9356;

	reaction_reaction_98=compartment_compartment_0*(reaction_reaction_98_k1*x(102)*x(95)-reaction_reaction_98_k2*x(103));

% Reaction: id = reaction_99, name = R100	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_99_k1=10.0;

	reaction_reaction_99=compartment_compartment_0*reaction_reaction_99_k1*x(103);

% Reaction: id = reaction_100, name = R101	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_100_k1=0.1298;

	reaction_reaction_100=compartment_compartment_0*reaction_reaction_100_k1*x(85);

% Reaction: id = reaction_101, name = R102	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_101_k1=40.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_101_k2=0.9356;

	reaction_reaction_101=compartment_compartment_0*(reaction_reaction_101_k1*x(102)*x(98)-reaction_reaction_101_k2*x(104));

% Reaction: id = reaction_102, name = R103	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_102_k1=10.0;

	reaction_reaction_102=compartment_compartment_0*reaction_reaction_102_k1*x(104);

% Reaction: id = reaction_103, name = R104	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_103_k1=2.845;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_103_k2=0.96;

	reaction_reaction_103=compartment_compartment_0*(reaction_reaction_103_k1*x(96)*x(87)-reaction_reaction_103_k2*x(105));

% Reaction: id = reaction_104, name = R105	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_104_k1=1.205;

	reaction_reaction_104=compartment_compartment_0*reaction_reaction_104_k1*x(105);

% Reaction: id = reaction_105, name = R106	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_105_k1=1.754;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_105_k2=0.5;

	reaction_reaction_105=compartment_compartment_0*(reaction_reaction_105_k1*x(87)*x(106)-reaction_reaction_105_k2*x(107));

% Reaction: id = reaction_106, name = R107	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_106_k1=7.624;

	reaction_reaction_106=compartment_compartment_0*reaction_reaction_106_k1*x(107);

% Reaction: id = reaction_107, name = R108	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_107_k1=40.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_107_k2=0.9356;

	reaction_reaction_107=compartment_compartment_0*(reaction_reaction_107_k1*x(5)*x(108)-reaction_reaction_107_k2*x(109));

% Reaction: id = reaction_108, name = R109	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_108_k1=40.0;

	reaction_reaction_108=compartment_compartment_0*reaction_reaction_108_k1*x(109);

% Reaction: id = reaction_109, name = R110	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_109_k1=0.001;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_109_k2=3.302E-4;

	reaction_reaction_109=compartment_compartment_0*(reaction_reaction_109_k1*x(5)-reaction_reaction_109_k2*x(111)*x(102));

% Reaction: id = reaction_110, name = R111	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_110_k1=1.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_110_k2=1.0;

	reaction_reaction_110=compartment_compartment_0*(reaction_reaction_110_k1*x(102)*x(112)-reaction_reaction_110_k2*x(113));

% Reaction: id = reaction_111, name = R112	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_111_k1=0.01;

	reaction_reaction_111=compartment_compartment_0*reaction_reaction_111_k1*x(113);

% Reaction: id = reaction_112, name = R113	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_112_k1=0.1;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_112_k2=1.2987;

	reaction_reaction_112=compartment_compartment_0*(reaction_reaction_112_k1*x(114)-reaction_reaction_112_k2*x(108)*x(112));

% Reaction: id = reaction_113, name = R114	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_113_k1=0.5;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_113_k2=0.005;

	reaction_reaction_113=compartment_compartment_0*(reaction_reaction_113_k1*x(16)*x(115)-reaction_reaction_113_k2*x(116));

% Reaction: id = reaction_114, name = R115	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_114_k1=0.5;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_114_k2=0.005;

	reaction_reaction_114=compartment_compartment_0*(reaction_reaction_114_k1*x(22)*x(115)-reaction_reaction_114_k2*x(117));

% Reaction: id = reaction_115, name = R116	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_115_k1=5.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_115_k2=0.01;

	reaction_reaction_115=compartment_compartment_0*(reaction_reaction_115_k1*x(116)*x(118)-reaction_reaction_115_k2*x(119));

% Reaction: id = reaction_116, name = R117	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_116_k1=5.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_116_k2=0.01;

	reaction_reaction_116=compartment_compartment_0*(reaction_reaction_116_k1*x(117)*x(118)-reaction_reaction_116_k2*x(120));

% Reaction: id = reaction_117, name = R118	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_117_k1=0.001;

	reaction_reaction_117=compartment_compartment_0*reaction_reaction_117_k1*x(119);

% Reaction: id = reaction_118, name = R119	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_118_k1=0.001;

	reaction_reaction_118=compartment_compartment_0*reaction_reaction_118_k1*x(120);

% Reaction: id = reaction_119, name = R120	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_119_k1=0.005;

	reaction_reaction_119=compartment_compartment_0*reaction_reaction_119_k1*x(123);

% Reaction: id = reaction_120, name = R121	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_120_k1=1.1;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_120_k2=0.033;

	reaction_reaction_120=compartment_compartment_0*(reaction_reaction_120_k1*x(69)*x(118)-reaction_reaction_120_k2*x(124));

% Reaction: id = reaction_121, name = R122	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_121_k1=16.0;

	reaction_reaction_121=compartment_compartment_0*reaction_reaction_121_k1*x(124);

% Reaction: id = reaction_122, name = R123	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_122_k1=10.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_122_k2=0.005;

	reaction_reaction_122=compartment_compartment_0*(reaction_reaction_122_k1*x(125)*x(126)-reaction_reaction_122_k2*x(127));

% Reaction: id = reaction_123, name = R124	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_123_k1=129.8;

	reaction_reaction_123=compartment_compartment_0*reaction_reaction_123_k1*x(128);

% Reaction: id = reaction_124, name = R125	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_124_k1=1.754;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_124_k2=0.05;

	reaction_reaction_124=compartment_compartment_0*(reaction_reaction_124_k1*x(20)*x(95)-reaction_reaction_124_k2*x(129));

% Reaction: id = reaction_125, name = R126	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_125_k1=0.07624;

	reaction_reaction_125=compartment_compartment_0*reaction_reaction_125_k1*x(129);

% Reaction: id = reaction_126, name = R127	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_126_k1=8.898;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_126_k2=1.0;

	reaction_reaction_126=compartment_compartment_0*(reaction_reaction_126_k1*x(36)*x(69)-reaction_reaction_126_k2*x(130));

% Reaction: id = reaction_127, name = R128	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_127_k1=0.426;

	reaction_reaction_127=compartment_compartment_0*reaction_reaction_127_k1*x(130);

% Reaction: id = reaction_128, name = R129	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_128_k1=3.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_128_k2=0.05;

	reaction_reaction_128=compartment_compartment_0*(reaction_reaction_128_k1*x(13)*x(131)-reaction_reaction_128_k2*x(132));

% Reaction: id = reaction_129, name = R130	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_129_k1=3.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_129_k2=0.1;

	reaction_reaction_129=compartment_compartment_0*(reaction_reaction_129_k1*x(10)*x(132)-reaction_reaction_129_k2*x(133));

% Reaction: id = reaction_130, name = R131	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_130_k1=3.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_130_k2=0.5;

	reaction_reaction_130=compartment_compartment_0*(reaction_reaction_130_k1*x(5)*x(132)-reaction_reaction_130_k2*x(134));

% Reaction: id = reaction_131, name = R132	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_131_k1=5.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_131_k2=1.67;

	reaction_reaction_131=compartment_compartment_0*(reaction_reaction_131_k1*x(133)*x(27)-reaction_reaction_131_k2*x(135));

% Reaction: id = reaction_132, name = R133	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_132_k1=1.693;

	reaction_reaction_132=compartment_compartment_0*reaction_reaction_132_k1*x(135);

% Reaction: id = reaction_133, name = R134	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_133_k1=1.693;

	reaction_reaction_133=compartment_compartment_0*reaction_reaction_133_k1*x(136);

% Reaction: id = reaction_134, name = R135	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_134_k1=1.67;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_134_k2=5.0;

	reaction_reaction_134=compartment_compartment_0*(reaction_reaction_134_k1*x(137)-reaction_reaction_134_k2*x(133)*x(31));

% Reaction: id = reaction_135, name = R136	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_135_k1=5.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_135_k2=1.67;

	reaction_reaction_135=compartment_compartment_0*(reaction_reaction_135_k1*x(134)*x(27)-reaction_reaction_135_k2*x(138));

% Reaction: id = reaction_136, name = R137	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_136_k1=1.693;

	reaction_reaction_136=compartment_compartment_0*reaction_reaction_136_k1*x(138);

% Reaction: id = reaction_137, name = R138	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_137_k1=1.693;

	reaction_reaction_137=compartment_compartment_0*reaction_reaction_137_k1*x(139);

% Reaction: id = reaction_138, name = R139	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_138_k1=1.67;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_138_k2=5.0;

	reaction_reaction_138=compartment_compartment_0*(reaction_reaction_138_k1*x(140)-reaction_reaction_138_k2*x(134)*x(31));

% Reaction: id = reaction_139, name = R140	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_139_k1=1.667;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_139_k2=0.5;

	reaction_reaction_139=compartment_compartment_0*(reaction_reaction_139_k1*x(133)*x(24)-reaction_reaction_139_k2*x(141));

% Reaction: id = reaction_140, name = R141	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_140_k1=5.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_140_k2=1.67;

	reaction_reaction_140=compartment_compartment_0*(reaction_reaction_140_k1*x(141)*x(27)-reaction_reaction_140_k2*x(142));

% Reaction: id = reaction_141, name = R142	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_141_k1=1.693;

	reaction_reaction_141=compartment_compartment_0*reaction_reaction_141_k1*x(142);

% Reaction: id = reaction_142, name = R143	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_142_k1=1.693;

	reaction_reaction_142=compartment_compartment_0*reaction_reaction_142_k1*x(143);

% Reaction: id = reaction_143, name = R144	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_143_k1=1.67;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_143_k2=5.0;

	reaction_reaction_143=compartment_compartment_0*(reaction_reaction_143_k1*x(144)-reaction_reaction_143_k2*x(141)*x(31));

% Reaction: id = reaction_144, name = R145	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_144_k1=1.667;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_144_k2=0.5;

	reaction_reaction_144=compartment_compartment_0*(reaction_reaction_144_k1*x(134)*x(24)-reaction_reaction_144_k2*x(145));

% Reaction: id = reaction_145, name = R146	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_145_k1=5.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_145_k2=1.67;

	reaction_reaction_145=compartment_compartment_0*(reaction_reaction_145_k1*x(145)*x(27)-reaction_reaction_145_k2*x(146));

% Reaction: id = reaction_146, name = R147	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_146_k1=1.693;

	reaction_reaction_146=compartment_compartment_0*reaction_reaction_146_k1*x(146);

% Reaction: id = reaction_147, name = R148	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_147_k1=1.693;

	reaction_reaction_147=compartment_compartment_0*reaction_reaction_147_k1*x(147);

% Reaction: id = reaction_148, name = R149	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_148_k1=1.67;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_148_k2=5.0;

	reaction_reaction_148=compartment_compartment_0*(reaction_reaction_148_k1*x(148)-reaction_reaction_148_k2*x(145)*x(31));

% Reaction: id = reaction_149, name = R150	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_149_k1=1.667;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_149_k2=0.5;

	reaction_reaction_149=compartment_compartment_0*(reaction_reaction_149_k1*x(133)*x(20)-reaction_reaction_149_k2*x(149));

% Reaction: id = reaction_150, name = R151	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_150_k1=5.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_150_k2=1.67;

	reaction_reaction_150=compartment_compartment_0*(reaction_reaction_150_k1*x(149)*x(27)-reaction_reaction_150_k2*x(150));

% Reaction: id = reaction_151, name = R152	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_151_k1=1.693;

	reaction_reaction_151=compartment_compartment_0*reaction_reaction_151_k1*x(150);

% Reaction: id = reaction_152, name = R153	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_152_k1=1.693;

	reaction_reaction_152=compartment_compartment_0*reaction_reaction_152_k1*x(151);

% Reaction: id = reaction_153, name = R154	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_153_k1=1.67;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_153_k2=5.0;

	reaction_reaction_153=compartment_compartment_0*(reaction_reaction_153_k1*x(152)-reaction_reaction_153_k2*x(149)*x(31));

% Reaction: id = reaction_154, name = R155	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_154_k1=1.667;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_154_k2=0.5;

	reaction_reaction_154=compartment_compartment_0*(reaction_reaction_154_k1*x(134)*x(20)-reaction_reaction_154_k2*x(153));

% Reaction: id = reaction_155, name = R156	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_155_k1=5.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_155_k2=1.67;

	reaction_reaction_155=compartment_compartment_0*(reaction_reaction_155_k1*x(153)*x(27)-reaction_reaction_155_k2*x(154));

% Reaction: id = reaction_156, name = R157	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_156_k1=1.693;

	reaction_reaction_156=compartment_compartment_0*reaction_reaction_156_k1*x(154);

% Reaction: id = reaction_157, name = R158	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_157_k1=1.693;

	reaction_reaction_157=compartment_compartment_0*reaction_reaction_157_k1*x(155);

% Reaction: id = reaction_158, name = R159	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_158_k1=1.67;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_158_k2=5.0;

	reaction_reaction_158=compartment_compartment_0*(reaction_reaction_158_k1*x(156)-reaction_reaction_158_k2*x(153)*x(31));

% Reaction: id = reaction_159, name = R160	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_159_k1=5.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_159_k2=1.67;

	reaction_reaction_159=compartment_compartment_0*(reaction_reaction_159_k1*x(152)*x(32)-reaction_reaction_159_k2*x(157));

% Reaction: id = reaction_160, name = R161	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_160_k1=0.1002;

	reaction_reaction_160=compartment_compartment_0*reaction_reaction_160_k1*x(157);

% Reaction: id = reaction_161, name = R162	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_161_k1=0.1002;

	reaction_reaction_161=compartment_compartment_0*reaction_reaction_161_k1*x(158);

% Reaction: id = reaction_162, name = R163	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_162_k1=1.67;

	reaction_reaction_162=compartment_compartment_0*reaction_reaction_162_k1*x(159);

% Reaction: id = reaction_163, name = R164	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_163_k1=5.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_163_k2=1.67;

	reaction_reaction_163=compartment_compartment_0*(reaction_reaction_163_k1*x(156)*x(32)-reaction_reaction_163_k2*x(160));

% Reaction: id = reaction_164, name = R165	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_164_k1=0.1002;

	reaction_reaction_164=compartment_compartment_0*reaction_reaction_164_k1*x(160);

% Reaction: id = reaction_165, name = R166	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_165_k1=0.1002;

	reaction_reaction_165=compartment_compartment_0*reaction_reaction_165_k1*x(161);

% Reaction: id = reaction_166, name = R167	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_166_k1=1.67;

	reaction_reaction_166=compartment_compartment_0*reaction_reaction_166_k1*x(162);

% Reaction: id = reaction_167, name = R168	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_167_k1=1.667;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_167_k2=0.5;

	reaction_reaction_167=compartment_compartment_0*(reaction_reaction_167_k1*x(133)*x(26)-reaction_reaction_167_k2*x(163));

% Reaction: id = reaction_168, name = R169	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_168_k1=5.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_168_k2=1.67;

	reaction_reaction_168=compartment_compartment_0*(reaction_reaction_168_k1*x(163)*x(27)-reaction_reaction_168_k2*x(164));

% Reaction: id = reaction_169, name = R170	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_169_k1=1.693;

	reaction_reaction_169=compartment_compartment_0*reaction_reaction_169_k1*x(164);

% Reaction: id = reaction_170, name = R171	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_170_k1=1.693;

	reaction_reaction_170=compartment_compartment_0*reaction_reaction_170_k1*x(165);

% Reaction: id = reaction_171, name = R172	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_171_k1=1.67;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_171_k2=5.0;

	reaction_reaction_171=compartment_compartment_0*(reaction_reaction_171_k1*x(166)-reaction_reaction_171_k2*x(163)*x(31));

% Reaction: id = reaction_172, name = R173	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_172_k1=1.667;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_172_k2=0.5;

	reaction_reaction_172=compartment_compartment_0*(reaction_reaction_172_k1*x(134)*x(26)-reaction_reaction_172_k2*x(167));

% Reaction: id = reaction_173, name = R174	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_173_k1=5.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_173_k2=1.67;

	reaction_reaction_173=compartment_compartment_0*(reaction_reaction_173_k1*x(167)*x(27)-reaction_reaction_173_k2*x(168));

% Reaction: id = reaction_174, name = R175	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_174_k1=1.693;

	reaction_reaction_174=compartment_compartment_0*reaction_reaction_174_k1*x(168);

% Reaction: id = reaction_175, name = R176	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_175_k1=1.693;

	reaction_reaction_175=compartment_compartment_0*reaction_reaction_175_k1*x(169);

% Reaction: id = reaction_176, name = R177	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_176_k1=1.67;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_176_k2=5.0;

	reaction_reaction_176=compartment_compartment_0*(reaction_reaction_176_k1*x(170)-reaction_reaction_176_k2*x(167)*x(31));

% Reaction: id = reaction_177, name = R178	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_177_k1=16.67;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_177_k2=0.05;

	reaction_reaction_177=compartment_compartment_0*(reaction_reaction_177_k1*x(135)*x(87)-reaction_reaction_177_k2*x(171));

% Reaction: id = reaction_178, name = R179	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_178_k1=16.67;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_178_k2=0.05;

	reaction_reaction_178=compartment_compartment_0*(reaction_reaction_178_k1*x(138)*x(87)-reaction_reaction_178_k2*x(173));

% Reaction: id = reaction_179, name = R180	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_179_k1=16.67;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_179_k2=0.05;

	reaction_reaction_179=compartment_compartment_0*(reaction_reaction_179_k1*x(142)*x(87)-reaction_reaction_179_k2*x(175));

% Reaction: id = reaction_180, name = R181	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_180_k1=16.67;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_180_k2=0.05;

	reaction_reaction_180=compartment_compartment_0*(reaction_reaction_180_k1*x(146)*x(87)-reaction_reaction_180_k2*x(177));

% Reaction: id = reaction_181, name = R182	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_181_k1=5.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_181_k2=1.67;

	reaction_reaction_181=compartment_compartment_0*(reaction_reaction_181_k1*x(137)*x(32)-reaction_reaction_181_k2*x(179));

% Reaction: id = reaction_182, name = R183	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_182_k1=0.1002;

	reaction_reaction_182=compartment_compartment_0*reaction_reaction_182_k1*x(179);

% Reaction: id = reaction_183, name = R184	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_183_k1=0.1002;

	reaction_reaction_183=compartment_compartment_0*reaction_reaction_183_k1*x(180);

% Reaction: id = reaction_184, name = R185	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_184_k1=1.67;

	reaction_reaction_184=compartment_compartment_0*reaction_reaction_184_k1*x(181);

% Reaction: id = reaction_185, name = R186	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_185_k1=5.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_185_k2=1.67;

	reaction_reaction_185=compartment_compartment_0*(reaction_reaction_185_k1*x(140)*x(32)-reaction_reaction_185_k2*x(182));

% Reaction: id = reaction_186, name = R187	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_186_k1=0.1002;

	reaction_reaction_186=compartment_compartment_0*reaction_reaction_186_k1*x(182);

% Reaction: id = reaction_187, name = R188	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_187_k1=0.1002;

	reaction_reaction_187=compartment_compartment_0*reaction_reaction_187_k1*x(183);

% Reaction: id = reaction_188, name = R189	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_188_k1=1.67;

	reaction_reaction_188=compartment_compartment_0*reaction_reaction_188_k1*x(184);

% Reaction: id = reaction_189, name = R190	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_189_k1=5.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_189_k2=1.67;

	reaction_reaction_189=compartment_compartment_0*(reaction_reaction_189_k1*x(144)*x(32)-reaction_reaction_189_k2*x(185));

% Reaction: id = reaction_190, name = R191	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_190_k1=0.1002;

	reaction_reaction_190=compartment_compartment_0*reaction_reaction_190_k1*x(185);

% Reaction: id = reaction_191, name = R192	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_191_k1=0.1002;

	reaction_reaction_191=compartment_compartment_0*reaction_reaction_191_k1*x(186);

% Reaction: id = reaction_192, name = R193	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_192_k1=1.67;

	reaction_reaction_192=compartment_compartment_0*reaction_reaction_192_k1*x(187);

% Reaction: id = reaction_193, name = R194	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_193_k1=5.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_193_k2=1.67;

	reaction_reaction_193=compartment_compartment_0*(reaction_reaction_193_k1*x(148)*x(32)-reaction_reaction_193_k2*x(188));

% Reaction: id = reaction_194, name = R195	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_194_k1=0.1002;

	reaction_reaction_194=compartment_compartment_0*reaction_reaction_194_k1*x(188);

% Reaction: id = reaction_195, name = R196	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_195_k1=0.1002;

	reaction_reaction_195=compartment_compartment_0*reaction_reaction_195_k1*x(189);

% Reaction: id = reaction_196, name = R197	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_196_k1=1.67;

	reaction_reaction_196=compartment_compartment_0*reaction_reaction_196_k1*x(190);

% Reaction: id = reaction_197, name = R198	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_197_k1=1.667;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_197_k2=0.5;

	reaction_reaction_197=compartment_compartment_0*(reaction_reaction_197_k1*x(172)*x(96)-reaction_reaction_197_k2*x(191));

% Reaction: id = reaction_198, name = R199	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_198_k1=1.205;

	reaction_reaction_198=compartment_compartment_0*reaction_reaction_198_k1*x(191);

% Reaction: id = reaction_199, name = R200	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_199_k1=1.667;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_199_k2=0.5;

	reaction_reaction_199=compartment_compartment_0*(reaction_reaction_199_k1*x(174)*x(96)-reaction_reaction_199_k2*x(192));

% Reaction: id = reaction_200, name = R201	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_200_k1=1.205;

	reaction_reaction_200=compartment_compartment_0*reaction_reaction_200_k1*x(192);

% Reaction: id = reaction_201, name = R202	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_201_k1=1.667;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_201_k2=0.5;

	reaction_reaction_201=compartment_compartment_0*(reaction_reaction_201_k1*x(176)*x(96)-reaction_reaction_201_k2*x(193));

% Reaction: id = reaction_202, name = R203	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_202_k1=1.205;

	reaction_reaction_202=compartment_compartment_0*reaction_reaction_202_k1*x(193);

% Reaction: id = reaction_203, name = R204	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_203_k1=1.667;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_203_k2=0.5;

	reaction_reaction_203=compartment_compartment_0*(reaction_reaction_203_k1*x(178)*x(96)-reaction_reaction_203_k2*x(194));

% Reaction: id = reaction_204, name = R205	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_204_k1=1.205;

	reaction_reaction_204=compartment_compartment_0*reaction_reaction_204_k1*x(194);

	xdot=zeros(194,1);
	
% Species:   id = species_0, name = EGF, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_0));
	
% Species:   id = species_1, name = EGFR, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_0) + ( 1.0 * reaction_reaction_119));
	
% Species:   id = species_2, name = EGF-EGFR, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_0) + (-2.0 * reaction_reaction_1));
	
% Species:   id = species_3, name = EGF-EGFR-2, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_2) + ( 1.0 * reaction_reaction_4) + ( 1.0 * reaction_reaction_86) + ( 1.0 * reaction_reaction_87) + ( 1.0 * reaction_reaction_97));
	
% Species:   id = species_4, name = EGF-pEGFR-2, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_5) + ( 1.0 * reaction_reaction_7) + (-1.0 * reaction_reaction_16) + (-1.0 * reaction_reaction_18) + ( 1.0 * reaction_reaction_45) + ( 1.0 * reaction_reaction_47) + (-1.0 * reaction_reaction_49) + (-1.0 * reaction_reaction_81) + (-1.0 * reaction_reaction_107) + (-1.0 * reaction_reaction_109) + (-1.0 * reaction_reaction_130));
	
% Species:   id = species_5, name = SHP, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_3) + ( 1.0 * reaction_reaction_4) + (-1.0 * reaction_reaction_8) + ( 1.0 * reaction_reaction_9));
	
% Species:   id = species_6, name = EGF-pEGFR-2-SHP, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_4));
	
% Species:   id = species_7, name = Shc, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_5) + ( 1.0 * reaction_reaction_9));
	
% Species:   id = species_8, name = EGF-pEGFR-2-Shc, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_5) + (-1.0 * reaction_reaction_6));
	
% Species:   id = species_9, name = EGF-pEGFR-2-pShc, affected by kineticLaw
	xdot(10) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_6) + (-1.0 * reaction_reaction_7) + (-1.0 * reaction_reaction_10) + (-1.0 * reaction_reaction_13) + (-1.0 * reaction_reaction_129));
	
% Species:   id = species_10, name = pShc, affected by kineticLaw
	xdot(11) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_7) + (-1.0 * reaction_reaction_8) + ( 1.0 * reaction_reaction_45) + ( 1.0 * reaction_reaction_86));
	
% Species:   id = species_11, name = pShc-SHP, affected by kineticLaw
	xdot(12) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_8) + (-1.0 * reaction_reaction_9));
	
% Species:   id = species_12, name = Grb2, affected by kineticLaw
	xdot(13) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_10) + (-1.0 * reaction_reaction_12) + (-1.0 * reaction_reaction_16) + ( 1.0 * reaction_reaction_45) + ( 1.0 * reaction_reaction_47) + ( 1.0 * reaction_reaction_86) + ( 1.0 * reaction_reaction_87) + (-1.0 * reaction_reaction_128));
	
% Species:   id = species_13, name = EGF-pEGFR-2-pShc-Grb2, affected by kineticLaw
	xdot(14) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_10) + (-1.0 * reaction_reaction_11) + (-1.0 * reaction_reaction_84));
	
% Species:   id = species_14, name = SOS, affected by kineticLaw
	xdot(15) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_11) + (-1.0 * reaction_reaction_12) + (-1.0 * reaction_reaction_17) + ( 1.0 * reaction_reaction_48));
	
% Species:   id = species_15, name = EGF-pEGFR-2-pShc-Grb2-SOS, affected by kineticLaw
	xdot(16) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_11) + ( 1.0 * reaction_reaction_13) + (-1.0 * reaction_reaction_14) + ( 1.0 * reaction_reaction_15) + (-1.0 * reaction_reaction_44) + (-1.0 * reaction_reaction_113));
	
% Species:   id = species_16, name = Grb2-SOS, affected by kineticLaw
	xdot(17) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_12) + (-1.0 * reaction_reaction_13) + (-1.0 * reaction_reaction_18) + ( 1.0 * reaction_reaction_118));
	
% Species:   id = species_17, name = RasGDP, affected by kineticLaw
	xdot(18) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_14) + (-1.0 * reaction_reaction_19) + ( 1.0 * reaction_reaction_41) + ( 1.0 * reaction_reaction_43) + ( 1.0 * reaction_reaction_83));
	
% Species:   id = species_18, name = EGF-pEGFR-2-pShc-Grb2-SOS-RasGDP, affected by kineticLaw
	xdot(19) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_14) + (-1.0 * reaction_reaction_15));
	
% Species:   id = species_19, name = RasGTP, affected by kineticLaw
	xdot(20) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_15) + ( 1.0 * reaction_reaction_20) + (-1.0 * reaction_reaction_21) + ( 1.0 * reaction_reaction_22) + (-1.0 * reaction_reaction_41) + (-1.0 * reaction_reaction_42) + (-1.0 * reaction_reaction_82) + (-1.0 * reaction_reaction_124) + ( 1.0 * reaction_reaction_125) + (-1.0 * reaction_reaction_149) + (-1.0 * reaction_reaction_154));
	
% Species:   id = species_20, name = EGF-pEGFR-2-Grb2, affected by kineticLaw
	xdot(21) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_16) + (-1.0 * reaction_reaction_17) + (-1.0 * reaction_reaction_85));
	
% Species:   id = species_21, name = EGF-pEGFR-2-Grb2-SOS, affected by kineticLaw
	xdot(22) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_17) + ( 1.0 * reaction_reaction_18) + (-1.0 * reaction_reaction_19) + ( 1.0 * reaction_reaction_20) + (-1.0 * reaction_reaction_46) + (-1.0 * reaction_reaction_114));
	
% Species:   id = species_22, name = EGF-pEGFR-2-Grb2-SOS-RasGDP, affected by kineticLaw
	xdot(23) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_19) + (-1.0 * reaction_reaction_20));
	
% Species:   id = species_23, name = Raf, affected by kineticLaw
	xdot(24) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_21) + ( 1.0 * reaction_reaction_32) + (-1.0 * reaction_reaction_139) + (-1.0 * reaction_reaction_144));
	
% Species:   id = species_24, name = Raf-RasGTP, affected by kineticLaw
	xdot(25) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_21) + (-1.0 * reaction_reaction_22));
	
% Species:   id = species_25, name = pRaf, affected by kineticLaw
	xdot(26) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_22) + (-1.0 * reaction_reaction_23) + ( 1.0 * reaction_reaction_24) + (-1.0 * reaction_reaction_25) + ( 1.0 * reaction_reaction_26) + (-1.0 * reaction_reaction_31) + (-1.0 * reaction_reaction_61) + ( 1.0 * reaction_reaction_63) + (-1.0 * reaction_reaction_167) + (-1.0 * reaction_reaction_172));
	
% Species:   id = species_26, name = MEK, affected by kineticLaw
	xdot(27) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_23) + ( 1.0 * reaction_reaction_36) + (-1.0 * reaction_reaction_131) + (-1.0 * reaction_reaction_135) + (-1.0 * reaction_reaction_140) + (-1.0 * reaction_reaction_145) + (-1.0 * reaction_reaction_150) + (-1.0 * reaction_reaction_155) + (-1.0 * reaction_reaction_168) + (-1.0 * reaction_reaction_173));
	
% Species:   id = species_27, name = pRaf-MEK, affected by kineticLaw
	xdot(28) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_23) + (-1.0 * reaction_reaction_24));
	
% Species:   id = species_28, name = pMEK, affected by kineticLaw
	xdot(29) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_24) + (-1.0 * reaction_reaction_25) + ( 1.0 * reaction_reaction_34) + (-1.0 * reaction_reaction_35));
	
% Species:   id = species_29, name = pRaf-pMEK, affected by kineticLaw
	xdot(30) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_25) + (-1.0 * reaction_reaction_26));
	
% Species:   id = species_30, name = ppMEK, affected by kineticLaw
	xdot(31) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_26) + (-1.0 * reaction_reaction_27) + ( 1.0 * reaction_reaction_28) + (-1.0 * reaction_reaction_29) + ( 1.0 * reaction_reaction_30) + (-1.0 * reaction_reaction_33) + ( 1.0 * reaction_reaction_134) + ( 1.0 * reaction_reaction_138) + ( 1.0 * reaction_reaction_143) + ( 1.0 * reaction_reaction_148) + ( 1.0 * reaction_reaction_153) + ( 1.0 * reaction_reaction_158) + ( 1.0 * reaction_reaction_171) + ( 1.0 * reaction_reaction_176));
	
% Species:   id = species_31, name = ERK, affected by kineticLaw
	xdot(32) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_27) + ( 1.0 * reaction_reaction_40) + (-1.0 * reaction_reaction_159) + (-1.0 * reaction_reaction_163) + (-1.0 * reaction_reaction_181) + (-1.0 * reaction_reaction_185) + (-1.0 * reaction_reaction_189) + (-1.0 * reaction_reaction_193));
	
% Species:   id = species_32, name = ppMEK-ERK, affected by kineticLaw
	xdot(33) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_27) + (-1.0 * reaction_reaction_28));
	
% Species:   id = species_33, name = pERK, affected by kineticLaw
	xdot(34) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_28) + (-1.0 * reaction_reaction_29) + ( 1.0 * reaction_reaction_38) + (-1.0 * reaction_reaction_39));
	
% Species:   id = species_34, name = ppMEK-pERK, affected by kineticLaw
	xdot(35) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_29) + (-1.0 * reaction_reaction_30));
	
% Species:   id = species_35, name = ppERK, affected by kineticLaw
	xdot(36) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_30) + (-1.0 * reaction_reaction_37) + (-1.0 * reaction_reaction_44) + ( 1.0 * reaction_reaction_45) + (-1.0 * reaction_reaction_46) + ( 1.0 * reaction_reaction_47) + (-1.0 * reaction_reaction_126) + ( 1.0 * reaction_reaction_127) + ( 1.0 * reaction_reaction_162) + ( 1.0 * reaction_reaction_166) + ( 1.0 * reaction_reaction_184) + ( 1.0 * reaction_reaction_188) + ( 1.0 * reaction_reaction_192) + ( 1.0 * reaction_reaction_196));
	
% Species:   id = species_36, name = Pase, affected by kineticLaw
	xdot(37) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_31) + ( 1.0 * reaction_reaction_32));
	
% Species:   id = species_37, name = pRaf-Pase, affected by kineticLaw
	xdot(38) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_31) + (-1.0 * reaction_reaction_32));
	
% Species:   id = species_38, name = PP2A, affected by kineticLaw
	xdot(39) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_33) + ( 1.0 * reaction_reaction_34) + (-1.0 * reaction_reaction_35) + ( 1.0 * reaction_reaction_36));
	
% Species:   id = species_39, name = ppMEK-PP2A, affected by kineticLaw
	xdot(40) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_33) + (-1.0 * reaction_reaction_34));
	
% Species:   id = species_40, name = pMEK-PP2A, affected by kineticLaw
	xdot(41) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_35) + (-1.0 * reaction_reaction_36));
	
% Species:   id = species_41, name = MKP3, affected by kineticLaw
	xdot(42) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_37) + ( 1.0 * reaction_reaction_38) + (-1.0 * reaction_reaction_39) + ( 1.0 * reaction_reaction_40));
	
% Species:   id = species_42, name = ppERK-MKP3, affected by kineticLaw
	xdot(43) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_37) + (-1.0 * reaction_reaction_38));
	
% Species:   id = species_43, name = pERK-MKP3, affected by kineticLaw
	xdot(44) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_39) + (-1.0 * reaction_reaction_40));
	
% Species:   id = species_44, name = RasGAP, affected by kineticLaw
	xdot(45) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_42) + ( 1.0 * reaction_reaction_43) + (-1.0 * reaction_reaction_81) + ( 1.0 * reaction_reaction_97));
	
% Species:   id = species_45, name = RasGTP-RasGAP, affected by kineticLaw
	xdot(46) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_42) + (-1.0 * reaction_reaction_43));
	
% Species:   id = species_46, name = ppERK-EGF-pEGFR-2-pShc-Grb2-SOS, affected by kineticLaw
	xdot(47) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_44) + (-1.0 * reaction_reaction_45));
	
% Species:   id = species_47, name = pSOS, affected by kineticLaw
	xdot(48) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_45) + ( 1.0 * reaction_reaction_47) + (-1.0 * reaction_reaction_48));
	
% Species:   id = species_48, name = ppERK-EGF-pEGFR-2-Grb2-SOS, affected by kineticLaw
	xdot(49) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_46) + (-1.0 * reaction_reaction_47));
	
% Species:   id = species_49, name = PI3K, affected by kineticLaw
	xdot(50) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_49) + ( 1.0 * reaction_reaction_52));
	
% Species:   id = species_50, name = EGF-pEGFR-2-PI3K, affected by kineticLaw
	xdot(51) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_49) + (-1.0 * reaction_reaction_50));
	
% Species:   id = species_51, name = EGF-pEGFF-2, affected by kineticLaw
	xdot(52) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_50));
	
% Species:   id = species_52, name = pPI3K, affected by kineticLaw
	xdot(53) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_50) + (-1.0 * reaction_reaction_51) + (-1.0 * reaction_reaction_53) + ( 1.0 * reaction_reaction_54));
	
% Species:   id = species_53, name = TP4, affected by kineticLaw
	xdot(54) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_51) + ( 1.0 * reaction_reaction_52));
	
% Species:   id = species_54, name = pPI3K-TP4, affected by kineticLaw
	xdot(55) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_51) + (-1.0 * reaction_reaction_52));
	
% Species:   id = species_55, name = PIP2, affected by kineticLaw
	xdot(56) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_53) + ( 1.0 * reaction_reaction_67) + ( 1.0 * reaction_reaction_69));
	
% Species:   id = species_56, name = pPI3K-PIP2, affected by kineticLaw
	xdot(57) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_53) + (-1.0 * reaction_reaction_54));
	
% Species:   id = species_57, name = PIP3, affected by kineticLaw
	xdot(58) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_54) + (-1.0 * reaction_reaction_55) + ( 1.0 * reaction_reaction_58) + (-1.0 * reaction_reaction_66) + (-1.0 * reaction_reaction_69) + (-1.0 * reaction_reaction_70));
	
% Species:   id = species_58, name = Akt, affected by kineticLaw
	xdot(59) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_55));
	
% Species:   id = species_59, name = Akt-PIP3, affected by kineticLaw
	xdot(60) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_55) + (-1.0 * reaction_reaction_56) + ( 1.0 * reaction_reaction_60));
	
% Species:   id = species_60, name = PDK1, affected by kineticLaw
	xdot(61) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_56) + ( 1.0 * reaction_reaction_57));
	
% Species:   id = species_61, name = Akt-PIP3-PDK1, affected by kineticLaw
	xdot(62) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_56) + (-1.0 * reaction_reaction_57));
	
% Species:   id = species_62, name = pAkt-PIP3, affected by kineticLaw
	xdot(63) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_57) + (-1.0 * reaction_reaction_58) + (-1.0 * reaction_reaction_59) + (-1.0 * reaction_reaction_61) + ( 1.0 * reaction_reaction_62));
	
% Species:   id = species_63, name = pAkt, affected by kineticLaw
	xdot(64) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_58));
	
% Species:   id = species_64, name = Takt, affected by kineticLaw
	xdot(65) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_59) + ( 1.0 * reaction_reaction_60));
	
% Species:   id = species_65, name = pAkt-PIP3-Takt, affected by kineticLaw
	xdot(66) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_59) + (-1.0 * reaction_reaction_60));
	
% Species:   id = species_66, name = pRaf-pAkt-PIP3, affected by kineticLaw
	xdot(67) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_61) + (-1.0 * reaction_reaction_62));
	
% Species:   id = species_67, name = ppRaf, affected by kineticLaw
	xdot(68) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_62) + (-1.0 * reaction_reaction_63));
	
% Species:   id = species_68, name = pROK, affected by kineticLaw
	xdot(69) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_64) + ( 1.0 * reaction_reaction_65) + ( 1.0 * reaction_reaction_106) + (-1.0 * reaction_reaction_120) + ( 1.0 * reaction_reaction_121) + (-1.0 * reaction_reaction_126));
	
% Species:   id = species_69, name = PTEN, affected by kineticLaw
	xdot(70) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_64) + ( 1.0 * reaction_reaction_68));
	
% Species:   id = species_70, name = pROK-PTEN, affected by kineticLaw
	xdot(71) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_64) + (-1.0 * reaction_reaction_65));
	
% Species:   id = species_71, name = pPTEN, affected by kineticLaw
	xdot(72) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_65) + (-1.0 * reaction_reaction_66) + ( 1.0 * reaction_reaction_67) + (-1.0 * reaction_reaction_68));
	
% Species:   id = species_72, name = pPTEN-PIP3, affected by kineticLaw
	xdot(73) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_66) + (-1.0 * reaction_reaction_67));
	
% Species:   id = species_73, name = RacGEF, affected by kineticLaw
	xdot(74) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_70));
	
% Species:   id = species_74, name = PIP3-RacGEF, affected by kineticLaw
	xdot(75) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_70) + (-1.0 * reaction_reaction_71) + ( 1.0 * reaction_reaction_72));
	
% Species:   id = species_75, name = RacGDP, affected by kineticLaw
	xdot(76) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_71) + (-1.0 * reaction_reaction_73) + ( 1.0 * reaction_reaction_74) + ( 1.0 * reaction_reaction_76));
	
% Species:   id = species_76, name = PIP3-RacGEF-RacGDP, affected by kineticLaw
	xdot(77) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_71) + (-1.0 * reaction_reaction_72));
	
% Species:   id = species_77, name = RacGTP, affected by kineticLaw
	xdot(78) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_72) + (-1.0 * reaction_reaction_74) + (-1.0 * reaction_reaction_75));
	
% Species:   id = species_78, name = RhoGDI, affected by kineticLaw
	xdot(79) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_73) + (-1.0 * reaction_reaction_77));
	
% Species:   id = species_79, name = RhoGDI-RacGDP, affected by kineticLaw
	xdot(80) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_73));
	
% Species:   id = species_80, name = RacGAP, affected by kineticLaw
	xdot(81) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_75) + ( 1.0 * reaction_reaction_76));
	
% Species:   id = species_81, name = RacGTP-RacGAP, affected by kineticLaw
	xdot(82) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_75) + (-1.0 * reaction_reaction_76));
	
% Species:   id = species_82, name = RhoGDP, affected by kineticLaw
	xdot(83) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_77) + (-1.0 * reaction_reaction_78) + ( 1.0 * reaction_reaction_80) + ( 1.0 * reaction_reaction_104) + ( 1.0 * reaction_reaction_198) + ( 1.0 * reaction_reaction_200) + ( 1.0 * reaction_reaction_202) + ( 1.0 * reaction_reaction_204));
	
% Species:   id = species_83, name = RhoGDP-RhoGDI, affected by kineticLaw
	xdot(84) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_77));
	
% Species:   id = species_84, name = pRhoGEF, affected by kineticLaw
	xdot(85) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_78) + ( 1.0 * reaction_reaction_79) + (-1.0 * reaction_reaction_88) + (-1.0 * reaction_reaction_92) + ( 1.0 * reaction_reaction_99) + (-1.0 * reaction_reaction_100) + ( 1.0 * reaction_reaction_125));
	
% Species:   id = species_85, name = RhoGDP-pRhoGEF, affected by kineticLaw
	xdot(86) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_78) + (-1.0 * reaction_reaction_79));
	
% Species:   id = species_86, name = RhoGTP, affected by kineticLaw
	xdot(87) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_79) + (-1.0 * reaction_reaction_80) + (-1.0 * reaction_reaction_103) + (-1.0 * reaction_reaction_105) + ( 1.0 * reaction_reaction_106) + (-1.0 * reaction_reaction_177) + (-1.0 * reaction_reaction_178) + (-1.0 * reaction_reaction_179) + (-1.0 * reaction_reaction_180));
	
% Species:   id = species_87, name = EGF-pEGFR-2-RasGAP, affected by kineticLaw
	xdot(88) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_81) + (-1.0 * reaction_reaction_82) + (-1.0 * reaction_reaction_96));
	
% Species:   id = species_88, name = EGF-pEGFR-2-RasGAP-RasGTP, affected by kineticLaw
	xdot(89) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_82) + (-1.0 * reaction_reaction_83));
	
% Species:   id = species_89, name = EGF-pEGFR2-RasGAP, affected by kineticLaw
	xdot(90) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_83));
	
% Species:   id = species_90, name = SHP2, affected by kineticLaw
	xdot(91) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_84) + (-1.0 * reaction_reaction_85) + ( 1.0 * reaction_reaction_86) + ( 1.0 * reaction_reaction_87) + (-1.0 * reaction_reaction_96) + ( 1.0 * reaction_reaction_97));
	
% Species:   id = species_91, name = EGF-pEGFR-2-pShc-Grb2-SHP2, affected by kineticLaw
	xdot(92) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_84) + (-1.0 * reaction_reaction_86) + (-1.0 * reaction_reaction_88) + ( 1.0 * reaction_reaction_89) + (-1.0 * reaction_reaction_90) + ( 1.0 * reaction_reaction_91));
	
% Species:   id = species_92, name = EGF-pEGFR-2-Grb2-SHP2, affected by kineticLaw
	xdot(93) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_85) + (-1.0 * reaction_reaction_87) + (-1.0 * reaction_reaction_92) + ( 1.0 * reaction_reaction_93) + (-1.0 * reaction_reaction_94) + ( 1.0 * reaction_reaction_95));
	
% Species:   id = species_93, name = EGF-pEGFR-2-pShc-Grb2-SHP2-pRhoGEF, affected by kineticLaw
	xdot(94) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_88) + (-1.0 * reaction_reaction_89));
	
% Species:   id = species_94, name = RhoGEF, affected by kineticLaw
	xdot(95) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_89) + ( 1.0 * reaction_reaction_93) + (-1.0 * reaction_reaction_98) + ( 1.0 * reaction_reaction_100) + (-1.0 * reaction_reaction_124));
	
% Species:   id = species_95, name = pRhoGAP, affected by kineticLaw
	xdot(96) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_90) + (-1.0 * reaction_reaction_94) + ( 1.0 * reaction_reaction_102) + (-1.0 * reaction_reaction_103) + ( 1.0 * reaction_reaction_104) + (-1.0 * reaction_reaction_197) + ( 1.0 * reaction_reaction_198) + (-1.0 * reaction_reaction_199) + ( 1.0 * reaction_reaction_200) + (-1.0 * reaction_reaction_201) + ( 1.0 * reaction_reaction_202) + (-1.0 * reaction_reaction_203) + ( 1.0 * reaction_reaction_204));
	
% Species:   id = species_96, name = EGF-pEGFR-2-pShc-Grb2-SHP2-pRhoGAP, affected by kineticLaw
	xdot(97) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_90) + (-1.0 * reaction_reaction_91));
	
% Species:   id = species_97, name = RhoGAP, affected by kineticLaw
	xdot(98) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_91) + ( 1.0 * reaction_reaction_95) + (-1.0 * reaction_reaction_101));
	
% Species:   id = species_98, name = EGF-pEGFR-2-Grb2-SHP2-pRhoGEF, affected by kineticLaw
	xdot(99) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_92) + (-1.0 * reaction_reaction_93));
	
% Species:   id = species_99, name = EGF-pEGFR-2-Grb2-SHP2-pRhoGAP, affected by kineticLaw
	xdot(100) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_94) + (-1.0 * reaction_reaction_95));
	
% Species:   id = species_100, name = EGF-pEGFR-2-RasGAP-SHP2, affected by kineticLaw
	xdot(101) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_96) + (-1.0 * reaction_reaction_97));
	
% Species:   id = species_101, name = pSrc, affected by kineticLaw
	xdot(102) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_98) + ( 1.0 * reaction_reaction_99) + (-1.0 * reaction_reaction_101) + ( 1.0 * reaction_reaction_102) + ( 1.0 * reaction_reaction_109) + (-1.0 * reaction_reaction_110));
	
% Species:   id = species_102, name = pSrc-RhoGEF, affected by kineticLaw
	xdot(103) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_98) + (-1.0 * reaction_reaction_99));
	
% Species:   id = species_103, name = pSrc-RhoGAP, affected by kineticLaw
	xdot(104) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_101) + (-1.0 * reaction_reaction_102));
	
% Species:   id = species_104, name = pRhoGAP-RhoGTP, affected by kineticLaw
	xdot(105) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_103) + (-1.0 * reaction_reaction_104));
	
% Species:   id = species_105, name = ROK, affected by kineticLaw
	xdot(106) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_105) + ( 1.0 * reaction_reaction_127));
	
% Species:   id = species_106, name = RhoGTP-ROK, affected by kineticLaw
	xdot(107) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_105) + (-1.0 * reaction_reaction_106));
	
% Species:   id = species_107, name = Src, affected by kineticLaw
	xdot(108) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_107) + ( 1.0 * reaction_reaction_112));
	
% Species:   id = species_108, name = EGF-pEGFR-2-Src, affected by kineticLaw
	xdot(109) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_107) + (-1.0 * reaction_reaction_108));
	
% Species:   id = species_109, name = EGF-pEGFR-2-pSrc, affected by kineticLaw
	xdot(110) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_108));
	
% Species:   id = species_110, name = EGF-pEGRF-2, affected by kineticLaw
	xdot(111) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_109));
	
% Species:   id = species_111, name = TP7, affected by kineticLaw
	xdot(112) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_110) + ( 1.0 * reaction_reaction_112));
	
% Species:   id = species_112, name = pSrc-TP7, affected by kineticLaw
	xdot(113) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_110) + (-1.0 * reaction_reaction_111));
	
% Species:   id = species_113, name = Src-TP7, affected by kineticLaw
	xdot(114) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_111) + (-1.0 * reaction_reaction_112));
	
% Species:   id = species_114, name = Cbl-CIN85, affected by kineticLaw
	xdot(115) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_113) + (-1.0 * reaction_reaction_114) + ( 1.0 * reaction_reaction_117) + ( 1.0 * reaction_reaction_118));
	
% Species:   id = species_115, name = EGF-pEGFR-2-pShc-Grb2-SOS-Cbl-CIN85, affected by kineticLaw
	xdot(116) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_113) + (-1.0 * reaction_reaction_115));
	
% Species:   id = species_116, name = EGF-pEGFR-2-Grb2-SOS-Cbl-CIN85, affected by kineticLaw
	xdot(117) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_114) + (-1.0 * reaction_reaction_116));
	
% Species:   id = species_117, name = EPn, affected by kineticLaw
	xdot(118) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_115) + (-1.0 * reaction_reaction_116) + ( 1.0 * reaction_reaction_117) + ( 1.0 * reaction_reaction_118) + (-1.0 * reaction_reaction_120) + ( 1.0 * reaction_reaction_123));
	
% Species:   id = species_118, name = EGF-pEGFR-2-pShc-Grb2-SOS-Cbl-CIN85-EPn, affected by kineticLaw
	xdot(119) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_115) + (-1.0 * reaction_reaction_117));
	
% Species:   id = species_119, name = EGF-pEGFR-2-Grb2-SOS-Cbl-CIN85-EPn, affected by kineticLaw
	xdot(120) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_116) + (-1.0 * reaction_reaction_118));
	
% Species:   id = species_120, name = EGF-pEGFR-2-degrade, affected by kineticLaw
	xdot(121) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_117) + ( 1.0 * reaction_reaction_118));
	
% Species:   id = species_121, name = pShc-Grb2-SOS, affected by kineticLaw
	xdot(122) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_117));
	
% Species:   id = species_122, name = Pro-EGFR, affected by kineticLaw
	xdot(123) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_119));
	
% Species:   id = species_123, name = pROK-EPn, affected by kineticLaw
	xdot(124) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_120) + (-1.0 * reaction_reaction_121));
	
% Species:   id = species_124, name = pEPn, affected by kineticLaw
	xdot(125) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_121) + (-1.0 * reaction_reaction_122));
	
% Species:   id = species_125, name = MPase, affected by kineticLaw
	xdot(126) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_122) + ( 1.0 * reaction_reaction_123));
	
% Species:   id = species_126, name = pEPn-MPase, affected by kineticLaw
	xdot(127) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_122));
	
% Species:   id = species_127, name = pEPn-Mpase, affected by kineticLaw
	xdot(128) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_123));
	
% Species:   id = species_128, name = Ras-GTP-RhoGEF, affected by kineticLaw
	xdot(129) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_124) + (-1.0 * reaction_reaction_125));
	
% Species:   id = species_129, name = ppERK-pROK, affected by kineticLaw
	xdot(130) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_126) + (-1.0 * reaction_reaction_127));
	
% Species:   id = species_130, name = MEKK1abcdef, affected by kineticLaw
	xdot(131) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_128));
	
% Species:   id = species_131, name = Grb2-MEKK1abcdef, affected by kineticLaw
	xdot(132) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_128) + (-1.0 * reaction_reaction_129) + (-1.0 * reaction_reaction_130));
	
% Species:   id = species_132, name = EGF-pEGFR-2-pShc-Grb2-MEKK1abcdef, affected by kineticLaw
	xdot(133) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_129) + (-1.0 * reaction_reaction_131) + ( 1.0 * reaction_reaction_134) + (-1.0 * reaction_reaction_139) + (-1.0 * reaction_reaction_149) + (-1.0 * reaction_reaction_167));
	
% Species:   id = species_133, name = EGF-pEGFR-2-Grb2-MEKK1abcdef, affected by kineticLaw
	xdot(134) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_130) + (-1.0 * reaction_reaction_135) + ( 1.0 * reaction_reaction_138) + (-1.0 * reaction_reaction_144) + (-1.0 * reaction_reaction_154) + (-1.0 * reaction_reaction_172));
	
% Species:   id = species_134, name = EGF-pEGFR-2-pShc-Grb2-MEKK1abMEKcdef, affected by kineticLaw
	xdot(135) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_131) + (-1.0 * reaction_reaction_132) + (-1.0 * reaction_reaction_177));
	
% Species:   id = species_135, name = EGF-pEGFR-2-pShc-Grb2-MEKK1abpMEKcdef, affected by kineticLaw
	xdot(136) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_132) + (-1.0 * reaction_reaction_133));
	
% Species:   id = species_136, name = EGF-pEGFR-2-pShc-Grb2-MEKK1abppMEKcdef, affected by kineticLaw
	xdot(137) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_133) + (-1.0 * reaction_reaction_134) + (-1.0 * reaction_reaction_181) + ( 1.0 * reaction_reaction_184));
	
% Species:   id = species_137, name = EGF-pEGFR-2-Grb2-MEKK1abMEKcdef, affected by kineticLaw
	xdot(138) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_135) + (-1.0 * reaction_reaction_136) + (-1.0 * reaction_reaction_178));
	
% Species:   id = species_138, name = EGF-pEGFR-2-Grb2-MEKK1abpMEKcdef, affected by kineticLaw
	xdot(139) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_136) + (-1.0 * reaction_reaction_137));
	
% Species:   id = species_139, name = EGF-pEGFR-2-Grb2-MEKK1abppMEKcdef, affected by kineticLaw
	xdot(140) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_137) + (-1.0 * reaction_reaction_138) + (-1.0 * reaction_reaction_185) + ( 1.0 * reaction_reaction_188));
	
% Species:   id = species_140, name = EGF-pEGFR-2-pShc-Grb2-MEKK1aRafbcdef, affected by kineticLaw
	xdot(141) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_139) + (-1.0 * reaction_reaction_140) + ( 1.0 * reaction_reaction_143) + ( 1.0 * reaction_reaction_202));
	
% Species:   id = species_141, name = EGF-pEGFR-2-pShc-Grb2-MEKK1aRafbMEKcdef, affected by kineticLaw
	xdot(142) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_140) + (-1.0 * reaction_reaction_141) + (-1.0 * reaction_reaction_179));
	
% Species:   id = species_142, name = EGF-pEGFR-2-pShc-Grb2-MEKK1aRafbpMEKcdef, affected by kineticLaw
	xdot(143) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_141) + (-1.0 * reaction_reaction_142));
	
% Species:   id = species_143, name = EGF-pEGFR-2-pShc-Grb2-MEKK1aRafbppMEKcdef, affected by kineticLaw
	xdot(144) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_142) + (-1.0 * reaction_reaction_143) + (-1.0 * reaction_reaction_189) + ( 1.0 * reaction_reaction_192) + ( 1.0 * reaction_reaction_198));
	
% Species:   id = species_144, name = EGF-pEGFR-2-Grb2-MEKK1aRafbcdef, affected by kineticLaw
	xdot(145) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_144) + (-1.0 * reaction_reaction_145) + ( 1.0 * reaction_reaction_148) + ( 1.0 * reaction_reaction_204));
	
% Species:   id = species_145, name = EGF-pEGFR-2-Grb2-MEKK1aRafbMEKcdef, affected by kineticLaw
	xdot(146) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_145) + (-1.0 * reaction_reaction_146) + (-1.0 * reaction_reaction_180));
	
% Species:   id = species_146, name = EGF-pEGFR-2-Grb2-MEKK1aRafbpMEKcdef, affected by kineticLaw
	xdot(147) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_146) + (-1.0 * reaction_reaction_147));
	
% Species:   id = species_147, name = EGF-pEGFR-2-Grb2-MEKK1aRafbppMEKcdef, affected by kineticLaw
	xdot(148) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_147) + (-1.0 * reaction_reaction_148) + (-1.0 * reaction_reaction_193) + ( 1.0 * reaction_reaction_196) + ( 1.0 * reaction_reaction_200));
	
% Species:   id = species_148, name = EGF-pEGFR-2-pShc-Grb2-MEKK1abcdefRasGTP, affected by kineticLaw
	xdot(149) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_149) + (-1.0 * reaction_reaction_150) + ( 1.0 * reaction_reaction_153));
	
% Species:   id = species_149, name = EGF-pEGFR-2-pShc-Grb2-MEKK1abMEKcdefRasGTP, affected by kineticLaw
	xdot(150) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_150) + (-1.0 * reaction_reaction_151));
	
% Species:   id = species_150, name = EGF-pEGFR-2-pShc-Grb2-MEKK1abpMEKcdefRasGTP, affected by kineticLaw
	xdot(151) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_151) + (-1.0 * reaction_reaction_152));
	
% Species:   id = species_151, name = EGF-pEGFR-2-pShc-Grb2-MEKK1abppMEKcdefRasGTP, affected by kineticLaw
	xdot(152) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_152) + (-1.0 * reaction_reaction_153) + (-1.0 * reaction_reaction_159) + ( 1.0 * reaction_reaction_162));
	
% Species:   id = species_152, name = EGF-pEGFR-2-Grb2-MEKK1abcdefRasGTP, affected by kineticLaw
	xdot(153) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_154) + (-1.0 * reaction_reaction_155) + ( 1.0 * reaction_reaction_158));
	
% Species:   id = species_153, name = EGF-pEGFR-2-Grb2-MEKK1abMEKcdefRasGTP, affected by kineticLaw
	xdot(154) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_155) + (-1.0 * reaction_reaction_156));
	
% Species:   id = species_154, name = EGF-pEGFR-2-Grb2-MEKK1abpMEKcdefRasGTP, affected by kineticLaw
	xdot(155) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_156) + (-1.0 * reaction_reaction_157));
	
% Species:   id = species_155, name = EGF-pEGFR-2-Grb2-MEKK1abppMEKcdefRasGTP, affected by kineticLaw
	xdot(156) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_157) + (-1.0 * reaction_reaction_158) + (-1.0 * reaction_reaction_163) + ( 1.0 * reaction_reaction_166));
	
% Species:   id = species_156, name = EGF-pEGFR-2-pShc-Grb2-MEKK1abppMEKcERKdefRasGTP, affected by kineticLaw
	xdot(157) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_159) + (-1.0 * reaction_reaction_160));
	
% Species:   id = species_157, name = EGF-pEGFR-2-pShc-Grb2-MEKK1abppMEKcpERKdefRasGTP, affected by kineticLaw
	xdot(158) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_160) + (-1.0 * reaction_reaction_161));
	
% Species:   id = species_158, name = EGF-pEGFR-2-pShc-Grb2-MEKK1abppMEKcppERKdefRasGTP, affected by kineticLaw
	xdot(159) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_161) + (-1.0 * reaction_reaction_162));
	
% Species:   id = species_159, name = EGF-pEGFR-2-Grb2-MEKK1abppMEKcERKdefRasGTP, affected by kineticLaw
	xdot(160) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_163) + (-1.0 * reaction_reaction_164));
	
% Species:   id = species_160, name = EGF-pEGFR-2-Grb2-MEKK1abppMEKcpERKdefRasGTP, affected by kineticLaw
	xdot(161) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_164) + (-1.0 * reaction_reaction_165));
	
% Species:   id = species_161, name = EGF-pEGFR-2-Grb2-MEKK1abppMEKcppERKdefRasGTP, affected by kineticLaw
	xdot(162) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_165) + (-1.0 * reaction_reaction_166));
	
% Species:   id = species_162, name = EGF-pEGFR-2-pShc-Grb2-MEKK1apRafbcdef, affected by kineticLaw
	xdot(163) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_167) + (-1.0 * reaction_reaction_168) + ( 1.0 * reaction_reaction_171));
	
% Species:   id = species_163, name = EGF-pEGFR-2-pShc-Grb2-MEKK1apRafbMEKcdef, affected by kineticLaw
	xdot(164) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_168) + (-1.0 * reaction_reaction_169));
	
% Species:   id = species_164, name = EGF-pEGFR-2-pShc-Grb2-MEKK1apRafbpMEKcdef, affected by kineticLaw
	xdot(165) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_169) + (-1.0 * reaction_reaction_170));
	
% Species:   id = species_165, name = EGF-pEGFR-2-pShc-Grb2-MEKK1apRafbppMEKcdef, affected by kineticLaw
	xdot(166) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_170) + (-1.0 * reaction_reaction_171));
	
% Species:   id = species_166, name = EGF-pEGFR-2-Grb2-MEKK1apRafbcdef, affected by kineticLaw
	xdot(167) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_172) + (-1.0 * reaction_reaction_173) + ( 1.0 * reaction_reaction_176));
	
% Species:   id = species_167, name = EGF-pEGFR-2-Grb2-MEKK1apRafbMEKcdef, affected by kineticLaw
	xdot(168) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_173) + (-1.0 * reaction_reaction_174));
	
% Species:   id = species_168, name = EGF-pEGFR-2-Grb2-MEKK1apRafbpMEKcdef, affected by kineticLaw
	xdot(169) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_174) + (-1.0 * reaction_reaction_175));
	
% Species:   id = species_169, name = EGF-pEGFR-2-Grb2-MEKK1apRafbppMEKcdef, affected by kineticLaw
	xdot(170) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_175) + (-1.0 * reaction_reaction_176));
	
% Species:   id = species_170, name = EGF-pEGFR-2-pShc-Grb2-MEKK1abMEKcdRhoGTPef, affected by kineticLaw
	xdot(171) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_177));
	
% Species:   id = species_171, name = EGF-pEGFR-2-pShc-Grb2-MEKK1abppMEKcdRhoGTPef, affected by kineticLaw
	xdot(172) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_197));
	
% Species:   id = species_172, name = EGF-pEGFR-2-Grb2-MEKK1abMEKcdRhoGTPef, affected by kineticLaw
	xdot(173) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_178));
	
% Species:   id = species_173, name = EGF-pEGFR-2-Grb2-MEKK1abppMEKcdRhoGTPef, affected by kineticLaw
	xdot(174) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_199));
	
% Species:   id = species_174, name = EGF-pEGFR-2-pShc-Grb2-MEKK1aRafbMEKcdRhoGTPef, affected by kineticLaw
	xdot(175) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_179));
	
% Species:   id = species_175, name = EGF-pEGFR-2-pShc-Grb2-MEKK1aRafbcdRhoGTPef, affected by kineticLaw
	xdot(176) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_201));
	
% Species:   id = species_176, name = EGF-pEGFR-2-Grb2-MEKK1aRafbMEKcdRhoGTPef, affected by kineticLaw
	xdot(177) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_180));
	
% Species:   id = species_177, name = EGF-pEGFR-2-Grb2-MEKK1aRafbcdRhoGTPef, affected by kineticLaw
	xdot(178) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_203));
	
% Species:   id = species_178, name = EGF-pEGFR-2-pShc-Grb2-MEKK1abppMEKcERKdef, affected by kineticLaw
	xdot(179) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_181) + (-1.0 * reaction_reaction_182));
	
% Species:   id = species_179, name = EGF-pEGFR-2-pShc-Grb2-MEKK1abppMEKcpERKdef, affected by kineticLaw
	xdot(180) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_182) + (-1.0 * reaction_reaction_183));
	
% Species:   id = species_180, name = EGF-pEGFR-2-pShc-Grb2-MEKK1abppMEKcppERKdef, affected by kineticLaw
	xdot(181) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_183) + (-1.0 * reaction_reaction_184));
	
% Species:   id = species_181, name = EGF-pEGFR-2-Grb2-MEKK1abppMEKcERKdef, affected by kineticLaw
	xdot(182) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_185) + (-1.0 * reaction_reaction_186));
	
% Species:   id = species_182, name = EGF-pEGFR-2-Grb2-MEKK1abppMEKcpERKdef, affected by kineticLaw
	xdot(183) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_186) + (-1.0 * reaction_reaction_187));
	
% Species:   id = species_183, name = EGF-pEGFR-2-Grb2-MEKK1abppMEKcppERKdef, affected by kineticLaw
	xdot(184) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_187) + (-1.0 * reaction_reaction_188));
	
% Species:   id = species_184, name = EGF-pEGFR-2-pShc-Grb2-MEKK1aRafbppMEKcERKdef, affected by kineticLaw
	xdot(185) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_189) + (-1.0 * reaction_reaction_190));
	
% Species:   id = species_185, name = EGF-pEGFR-2-pShc-Grb2-MEKK1aRafbppMEKcpERKdef, affected by kineticLaw
	xdot(186) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_190) + (-1.0 * reaction_reaction_191));
	
% Species:   id = species_186, name = EGF-pEGFR-2-pShc-Grb2-MEKK1aRafbppMEKcppERKdef, affected by kineticLaw
	xdot(187) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_191) + (-1.0 * reaction_reaction_192));
	
% Species:   id = species_187, name = EGF-pEGFR-2-Grb2-MEKK1aRafbppMEKcERKdef, affected by kineticLaw
	xdot(188) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_193) + (-1.0 * reaction_reaction_194));
	
% Species:   id = species_188, name = EGF-pEGFR-2-Grb2-MEKK1aRafbppMEKcpERKdef, affected by kineticLaw
	xdot(189) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_194) + (-1.0 * reaction_reaction_195));
	
% Species:   id = species_189, name = EGF-pEGFR-2-Grb2-MEKK1aRafbppMEKcppERKdef, affected by kineticLaw
	xdot(190) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_195) + (-1.0 * reaction_reaction_196));
	
% Species:   id = species_190, name = EGF-pEGFR-2-pShc-Grb2-MEKK1aRafbppMEKcdRhoGTPepRhoGAPf, affected by kineticLaw
	xdot(191) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_197) + (-1.0 * reaction_reaction_198));
	
% Species:   id = species_191, name = EGF-pEGFR-2-Grb2-MEKK1aRafbppMEKcdRhoGTPepRhoGAPf, affected by kineticLaw
	xdot(192) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_199) + (-1.0 * reaction_reaction_200));
	
% Species:   id = species_192, name = EGF-pEGFR-2-pShc-Grb2-MEKK1aRafbcdRhoGTPepRhoGAPf, affected by kineticLaw
	xdot(193) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_201) + (-1.0 * reaction_reaction_202));
	
% Species:   id = species_193, name = EGF-pEGFR-2-Grb2-MEKK1aRafbcdRhoGTPepRhoGAPf, affected by kineticLaw
	xdot(194) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_203) + (-1.0 * reaction_reaction_204));
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


