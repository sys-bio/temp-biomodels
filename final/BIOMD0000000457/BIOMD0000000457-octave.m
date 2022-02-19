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
% Model name = Firczuk2013 - Eukaryotic mRNA translation machinery
%
% is http://identifiers.org/biomodels.db/MODEL1205190000
% is http://identifiers.org/biomodels.db/BIOMD0000000457
% isDescribedBy http://identifiers.org/pubmed/23340841
%


function main()
%Initial conditions vector
	x0=zeros(163,1);
	x0(1) = 1.17510804502861E-6;
	x0(2) = 2.26917415591732E-7;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 9.31982242608899E-7;
	x0(7) = 8.10419341399042E-7;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 1.53979674865818E-6;
	x0(11) = 0.0;
	x0(12) = 7.69898374329091E-6;
	x0(13) = 2.30969512298727E-6;
	x0(14) = 0.0;
	x0(15) = 0.0;
	x0(16) = 3.24167736559617E-6;
	x0(17) = 8.91461275538947E-7;
	x0(18) = 0.0;
	x0(19) = 7.16464328895E-7;
	x0(20) = 1.78292255107789E-6;
	x0(21) = 0.0;
	x0(22) = 0.0;
	x0(23) = 9.72503209678849E-6;
	x0(24) = 1.13458707795866E-6;
	x0(25) = 0.0;
	x0(26) = 0.0;
	x0(27) = 0.0;
	x0(28) = 1.13458707795866E-6;
	x0(29) = 0.0;
	x0(30) = 1.9450064193577E-7;
	x0(31) = 0.0;
	x0(32) = 0.0;
	x0(33) = 7.6989833745501E-6;
	x0(34) = 4.05209670699521E-5;
	x0(35) = 3.20115639852622E-6;
	x0(36) = 0.0;
	x0(37) = 0.0;
	x0(38) = 0.0;
	x0(39) = 5.6729353897933E-6;
	x0(40) = 0.0;
	x0(41) = 4.45730637769471E-6;
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
	x0(158) = 5.6729353897933E-7;
	x0(159) = 0.0;
	x0(160) = 8.91461275538947E-7;
	x0(161) = 0.0;
	x0(162) = 0.0;
	x0(163) = 0.0;


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

% Compartment: id = compartment_1, name = cytoplasm, constant
	compartment_compartment_1=4.0E-14;
% Parameter:   id =  parameter_1, name = mRNA_tot
	global_par_parameter_1=7.16464328895E-7;
% Parameter:   id =  parameter_2, name = k22f
	global_par_parameter_2=8.10035535716195E9;
% Parameter:   id =  parameter_3, name = k22b
	global_par_parameter_3=0.284007213965168;
% Parameter:   id =  parameter_4, name = k23f
	global_par_parameter_4=28324.3562938545;
% Parameter:   id =  parameter_5, name = k25f
	global_par_parameter_5=3.10377169466493E9;
% Parameter:   id =  parameter_6, name = k25b
	global_par_parameter_6=0.00322599;
% Parameter:   id =  parameter_7, name = k26f
	global_par_parameter_7=2306950.0;
% Parameter:   id =  parameter_8, name = k28f
	global_par_parameter_8=2.24052E9;
% Parameter:   id =  parameter_9, name = k29f
	global_par_parameter_9=72911.6740026381;
% Parameter:   id =  parameter_10, name = mRNA_bound
% Parameter:   id =  parameter_11, name = mRNA_free
% Parameter:   id =  parameter_12, name = mRNA_tot_Molar
	global_par_parameter_12=2.86585731558E-20;
% assignmentRule: variable = parameter_10
	global_par_parameter_10=x(43)+x(47)+x(53)+x(59)+x(65)+x(71)+x(77)+x(83)+x(89)+x(95)+x(101)+x(107)+x(113)+x(119)+x(125)+x(131)+x(137)+x(143)+x(149)+x(155)+x(44)+x(48)+x(54)+x(60)+x(66)+x(72)+x(78)+x(84)+x(90)+x(96)+x(102)+x(108)+x(114)+x(120)+x(126)+x(132)+x(138)+x(144)+x(150)+x(45)+x(49)+x(55)+x(61)+x(67)+x(73)+x(79)+x(85)+x(91)+x(97)+x(103)+x(109)+x(115)+x(121)+x(127)+x(133)+x(139)+x(145)+x(151)+x(46)+x(50)+x(56)+x(62)+x(68)+x(74)+x(80)+x(86)+x(92)+x(98)+x(104)+x(110)+x(116)+x(122)+x(128)+x(134)+x(140)+x(146)+x(152)+x(51)+x(57)+x(63)+x(69)+x(75)+x(81)+x(87)+x(93)+x(99)+x(105)+x(111)+x(117)+x(123)+x(129)+x(135)+x(141)+x(147)+x(153)+x(156)+x(52)+x(58)+x(64)+x(70)+x(76)+x(82)+x(88)+x(94)+x(100)+x(106)+x(112)+x(118)+x(124)+x(130)+x(136)+x(142)+x(148)+x(154)+x(157)+x(162);
% assignmentRule: variable = parameter_11
	global_par_parameter_11=global_par_parameter_1-global_par_parameter_10;

% Reaction: id = reaction_1, name = reaction1	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_1_k1=1.96096E7;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_1_k2=34.8025;

	reaction_reaction_1=compartment_compartment_1*(reaction_reaction_1_k1*x(1)*x(2)-reaction_reaction_1_k2*x(3));

% Reaction: id = reaction_2, name = reaction2	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_2_k1=533.26;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_2_k2=3.97698;

	reaction_reaction_2=compartment_compartment_1*(reaction_reaction_2_k1*x(3)-reaction_reaction_2_k2*x(4)*x(2));

% Reaction: id = reaction_3, name = reaction3	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_3_k1=104798.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_3_k2=6.32998;

	reaction_reaction_3=compartment_compartment_1*(reaction_reaction_3_k1*x(4)*const_species_species_5-reaction_reaction_3_k2*x(5));

% Reaction: id = reaction_4, name = reaction4	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_4_k1=2.00245E7;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_4_k2=0.406929;

	reaction_reaction_4=compartment_compartment_1*(reaction_reaction_4_k1*x(6)*x(7)-reaction_reaction_4_k2*x(8));

% Reaction: id = reaction_5, name = reaction5	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_5_k1=1.60265E8;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_5_k2=57.1854;

	reaction_reaction_5=compartment_compartment_1*(reaction_reaction_5_k1*x(5)*x(8)-reaction_reaction_5_k2*x(9));

% Reaction: id = reaction_6, name = reaction6	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_6_k1=3865650.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_6_k2=31.1969;

	reaction_reaction_6=compartment_compartment_1*(reaction_reaction_6_k1*x(10)*x(9)-reaction_reaction_6_k2*x(11));

% Reaction: id = reaction_7, name = reaction7	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_7_k1=814356.0;

	reaction_reaction_7=compartment_compartment_1*reaction_reaction_7_k1*x(12)*x(13);

% Reaction: id = reaction_8, name = reaction8	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_8_k1=1.97254E7;

	reaction_reaction_8=compartment_compartment_1*reaction_reaction_8_k1*x(11)*x(14);

% Reaction: id = reaction_9, name = reaction9	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_9_k1=4.33274E7;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_9_k2=1977.92;

	reaction_reaction_9=compartment_compartment_1*(reaction_reaction_9_k1*x(16)*x(17)-reaction_reaction_9_k2*x(18));

% Reaction: id = reaction_10, name = reaction10	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_10_k1=5026500.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_10_k2=0.00774034;

	reaction_reaction_10=compartment_compartment_1*(reaction_reaction_10_k1*x(19)*x(20)-reaction_reaction_10_k2*x(21));

% Reaction: id = reaction_11, name = reaction11	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_11_k1=5.79912E7;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_11_k2=2.70026;

	reaction_reaction_11=compartment_compartment_1*(reaction_reaction_11_k1*x(18)*x(21)-reaction_reaction_11_k2*x(22));

% Reaction: id = reaction_12, name = reaction12	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_12_k1=307831.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_12_k2=2.38184;

	reaction_reaction_12=compartment_compartment_1*(reaction_reaction_12_k1*x(23)*x(22)-reaction_reaction_12_k2*x(163));

% Reaction: id = reaction_13, name = reaction13	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_13_k1=3.5208E14;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_13_k2=0.785013;

	reaction_reaction_13=compartment_compartment_1*(reaction_reaction_13_k1*x(24)*x(163)-reaction_reaction_13_k2*x(26));

% Reaction: id = reaction_14, name = reaction14	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_14_k1=1.06204E9;

	reaction_reaction_14=compartment_compartment_1*reaction_reaction_14_k1*x(15)*x(26);

% Reaction: id = reaction_15, name = reaction15	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_15_k1=8.7134E10;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_15_k2=1.2395;

	reaction_reaction_15=compartment_compartment_1*(reaction_reaction_15_k1*x(27)*x(28)-reaction_reaction_15_k2*x(29));

% Reaction: id = reaction_16, name = reaction16	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_16_k1=304.768;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_16_k2=45.4082;

	reaction_reaction_16=compartment_compartment_1*(reaction_reaction_16_k1*x(30)-reaction_reaction_16_k2*x(31));

% Reaction: id = reaction_17, name = reaction17	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_17_k1=5.61005E8;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_17_k2=47.8215;

	reaction_reaction_17=compartment_compartment_1*(reaction_reaction_17_k1*x(29)*x(31)-reaction_reaction_17_k2*x(32));

% Reaction: id = reaction_18, name = reaction18	% Local Parameter:   id =  k, name = k
	reaction_reaction_18_k=1.3072E13;

	reaction_reaction_18=compartment_compartment_1*function_1(reaction_reaction_18_k, x(33), x(32), global_par_parameter_1, x(43), x(44), x(45), x(46), x(47), x(48), x(49), x(50), x(51), x(52), x(53), x(54), x(55), x(56), x(57), x(58), x(59), x(60), x(61), x(62), x(63), x(64), x(65), x(66), x(67), x(68), x(69), x(70), x(71), x(72), x(73), x(74), x(75), x(76), x(77), x(78), x(79), x(80), x(81), x(82), x(83), x(84), x(85), x(86), x(87), x(88), x(89), x(90), x(91), x(92), x(93), x(94), x(95), x(96), x(97), x(98), x(99), x(100), x(101), x(102), x(103), x(104), x(105), x(106), x(107), x(108), x(109), x(110), x(111), x(112), x(113), x(114), x(115), x(116), x(117), x(118), x(119), x(120), x(121), x(122), x(123), x(124), x(125), x(126), x(127), x(128), x(129), x(130));

% Reaction: id = reaction_19, name = reaction19	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_19_k1=1170250.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_19_k2=14.2912;

	reaction_reaction_19=compartment_compartment_1*(reaction_reaction_19_k1*x(34)*x(35)-reaction_reaction_19_k2*x(36));

% Reaction: id = reaction_20, name = reaction20	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_20_k1=13.295;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_20_k2=4.33541E7;

	reaction_reaction_20=compartment_compartment_1*(reaction_reaction_20_k1*x(36)-reaction_reaction_20_k2*x(37)*x(35));

% Reaction: id = reaction_21, name = reaction21	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_21_k1=39591.9;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_21_k2=8.80234E-6;

	reaction_reaction_21=compartment_compartment_1*(reaction_reaction_21_k1*x(37)*const_species_species_39-reaction_reaction_21_k2*x(38));

% Reaction: id = reaction_22, name = reaction24	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_22_k1=1.80542;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_22_k2=1.29513;

	reaction_reaction_22=compartment_compartment_1*(reaction_reaction_22_k1*x(39)-reaction_reaction_22_k2*x(40));

% Reaction: id = reaction_23, name = reaction27	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_23_k1=93.5995;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_23_k2=43714.4;

	reaction_reaction_23=compartment_compartment_1*(reaction_reaction_23_k1*x(41)-reaction_reaction_23_k2*x(42));

% Reaction: id = reaction_24, name = reaction22_1
	reaction_reaction_24=compartment_compartment_1*(global_par_parameter_2*x(38)*x(43)-global_par_parameter_3*x(44));

% Reaction: id = reaction_25, name = reaction23_1
	reaction_reaction_25=compartment_compartment_1*global_par_parameter_4*x(44);

% Reaction: id = reaction_26, name = reaction25_1
	reaction_reaction_26=compartment_compartment_1*(global_par_parameter_5*x(40)*x(45)-global_par_parameter_6*x(46));

% Reaction: id = reaction_27, name = reaction26_1
	reaction_reaction_27=compartment_compartment_1*function_2(global_par_parameter_7, x(46), global_par_parameter_1, x(47), x(48), x(49), x(50), x(51), x(52), x(53), x(54), x(55), x(56), x(57), x(58), x(59), x(60), x(61), x(62), x(63), x(64), x(65), x(66), x(67), x(68), x(69), x(70), x(71), x(72), x(73), x(74), x(75), x(76), x(77), x(78), x(79), x(80), x(81), x(82), x(83), x(84), x(85), x(86), x(87), x(88), x(89), x(90), x(91), x(92), x(93), x(94), x(95), x(96), x(97), x(98), x(99), x(100), x(101), x(102), x(103), x(104), x(105), x(106), x(107), x(108), x(109), x(110), x(111), x(112), x(113), x(114), x(115), x(116), x(117), x(118), x(119), x(120), x(121), x(122), x(123), x(124), x(125), x(126), x(127), x(128), x(129), x(130), x(131), x(132), x(133), x(134), x(135), x(136));

% Reaction: id = reaction_28, name = reaction22_2
	reaction_reaction_28=compartment_compartment_1*(global_par_parameter_2*x(38)*x(47)-global_par_parameter_3*x(48));

% Reaction: id = reaction_29, name = reaction23_2
	reaction_reaction_29=compartment_compartment_1*global_par_parameter_4*x(48);

% Reaction: id = reaction_30, name = reaction25_2
	reaction_reaction_30=compartment_compartment_1*(global_par_parameter_5*x(40)*x(49)-global_par_parameter_6*x(50));

% Reaction: id = reaction_31, name = reaction26_2
	reaction_reaction_31=compartment_compartment_1*function_2(global_par_parameter_7, x(50), global_par_parameter_1, x(53), x(54), x(55), x(56), x(57), x(58), x(59), x(60), x(61), x(62), x(63), x(64), x(65), x(66), x(67), x(68), x(69), x(70), x(71), x(72), x(73), x(74), x(75), x(76), x(77), x(78), x(79), x(80), x(81), x(82), x(83), x(84), x(85), x(86), x(87), x(88), x(89), x(90), x(91), x(92), x(93), x(94), x(95), x(96), x(97), x(98), x(99), x(100), x(101), x(102), x(103), x(104), x(105), x(106), x(107), x(108), x(109), x(110), x(111), x(112), x(113), x(114), x(115), x(116), x(117), x(118), x(119), x(120), x(121), x(122), x(123), x(124), x(125), x(126), x(127), x(128), x(129), x(130), x(131), x(132), x(133), x(134), x(135), x(136), x(137), x(138), x(139), x(140), x(141), x(142));

% Reaction: id = reaction_32, name = reaction28_2
	reaction_reaction_32=compartment_compartment_1*global_par_parameter_8*x(51)*x(42);

% Reaction: id = reaction_33, name = reaction29_2
	reaction_reaction_33=compartment_compartment_1*global_par_parameter_9*x(52);

% Reaction: id = reaction_34, name = reaction22_3
	reaction_reaction_34=compartment_compartment_1*(global_par_parameter_2*x(38)*x(53)-global_par_parameter_3*x(54));

% Reaction: id = reaction_35, name = reaction23_3
	reaction_reaction_35=compartment_compartment_1*global_par_parameter_4*x(54);

% Reaction: id = reaction_36, name = reaction25_3
	reaction_reaction_36=compartment_compartment_1*(global_par_parameter_5*x(40)*x(55)-global_par_parameter_6*x(56));

% Reaction: id = reaction_37, name = reaction26_3
	reaction_reaction_37=compartment_compartment_1*function_2(global_par_parameter_7, x(56), global_par_parameter_1, x(59), x(60), x(61), x(62), x(63), x(64), x(65), x(66), x(67), x(68), x(69), x(70), x(71), x(72), x(73), x(74), x(75), x(76), x(77), x(78), x(79), x(80), x(81), x(82), x(83), x(84), x(85), x(86), x(87), x(88), x(89), x(90), x(91), x(92), x(93), x(94), x(95), x(96), x(97), x(98), x(99), x(100), x(101), x(102), x(103), x(104), x(105), x(106), x(107), x(108), x(109), x(110), x(111), x(112), x(113), x(114), x(115), x(116), x(117), x(118), x(119), x(120), x(121), x(122), x(123), x(124), x(125), x(126), x(127), x(128), x(129), x(130), x(131), x(132), x(133), x(134), x(135), x(136), x(137), x(138), x(139), x(140), x(141), x(142), x(143), x(144), x(145), x(146), x(147), x(148));

% Reaction: id = reaction_38, name = reaction28_3
	reaction_reaction_38=compartment_compartment_1*global_par_parameter_8*x(57)*x(42);

% Reaction: id = reaction_39, name = reaction29_3
	reaction_reaction_39=compartment_compartment_1*global_par_parameter_9*x(58);

% Reaction: id = reaction_40, name = reaction22_4
	reaction_reaction_40=compartment_compartment_1*(global_par_parameter_2*x(38)*x(59)-global_par_parameter_3*x(60));

% Reaction: id = reaction_41, name = reaction23_4
	reaction_reaction_41=compartment_compartment_1*global_par_parameter_4*x(60);

% Reaction: id = reaction_42, name = reaction25_4
	reaction_reaction_42=compartment_compartment_1*(global_par_parameter_5*x(40)*x(61)-global_par_parameter_6*x(62));

% Reaction: id = reaction_43, name = reaction26_4
	reaction_reaction_43=compartment_compartment_1*function_2(global_par_parameter_7, x(62), global_par_parameter_1, x(65), x(66), x(67), x(68), x(69), x(70), x(71), x(72), x(73), x(74), x(75), x(76), x(77), x(78), x(79), x(80), x(81), x(82), x(83), x(84), x(85), x(86), x(87), x(88), x(89), x(90), x(91), x(92), x(93), x(94), x(95), x(96), x(97), x(98), x(99), x(100), x(101), x(102), x(103), x(104), x(105), x(106), x(107), x(108), x(109), x(110), x(111), x(112), x(113), x(114), x(115), x(116), x(117), x(118), x(119), x(120), x(121), x(122), x(123), x(124), x(125), x(126), x(127), x(128), x(129), x(130), x(131), x(132), x(133), x(134), x(135), x(136), x(137), x(138), x(139), x(140), x(141), x(142), x(143), x(144), x(145), x(146), x(147), x(148), x(149), x(150), x(151), x(152), x(153), x(154));

% Reaction: id = reaction_44, name = reaction28_4
	reaction_reaction_44=compartment_compartment_1*global_par_parameter_8*x(63)*x(42);

% Reaction: id = reaction_45, name = reaction29_4
	reaction_reaction_45=compartment_compartment_1*global_par_parameter_9*x(64);

% Reaction: id = reaction_46, name = reaction22_5
	reaction_reaction_46=compartment_compartment_1*(global_par_parameter_2*x(38)*x(65)-global_par_parameter_3*x(66));

% Reaction: id = reaction_47, name = reaction23_5
	reaction_reaction_47=compartment_compartment_1*global_par_parameter_4*x(66);

% Reaction: id = reaction_48, name = reaction25_5
	reaction_reaction_48=compartment_compartment_1*(global_par_parameter_5*x(40)*x(67)-global_par_parameter_6*x(68));

% Reaction: id = reaction_49, name = reaction26_5
	reaction_reaction_49=compartment_compartment_1*function_3(global_par_parameter_7, x(68), global_par_parameter_1, x(71), x(72), x(73), x(74), x(75), x(76), x(77), x(78), x(79), x(80), x(81), x(82), x(83), x(84), x(85), x(86), x(87), x(88), x(89), x(90), x(91), x(92), x(93), x(94), x(95), x(96), x(97), x(98), x(99), x(100), x(101), x(102), x(103), x(104), x(105), x(106), x(107), x(108), x(109), x(110), x(111), x(112), x(113), x(114), x(115), x(116), x(117), x(118), x(119), x(120), x(121), x(122), x(123), x(124), x(125), x(126), x(127), x(128), x(129), x(130), x(131), x(132), x(133), x(134), x(135), x(136), x(137), x(138), x(139), x(140), x(141), x(142), x(143), x(144), x(145), x(146), x(147), x(148), x(149), x(150), x(151), x(152), x(153), x(154), x(155), x(156), x(157));

% Reaction: id = reaction_50, name = reaction28_5
	reaction_reaction_50=compartment_compartment_1*global_par_parameter_8*x(69)*x(42);

% Reaction: id = reaction_51, name = reaction29_5
	reaction_reaction_51=compartment_compartment_1*global_par_parameter_9*x(70);

% Reaction: id = reaction_52, name = reaction22_6
	reaction_reaction_52=compartment_compartment_1*(global_par_parameter_2*x(38)*x(71)-global_par_parameter_3*x(72));

% Reaction: id = reaction_53, name = reaction23_6
	reaction_reaction_53=compartment_compartment_1*global_par_parameter_4*x(72);

% Reaction: id = reaction_54, name = reaction25_6
	reaction_reaction_54=compartment_compartment_1*(global_par_parameter_5*x(40)*x(73)-global_par_parameter_6*x(74));

% Reaction: id = reaction_55, name = reaction26_6
	reaction_reaction_55=compartment_compartment_1*global_par_parameter_7*x(74);

% Reaction: id = reaction_56, name = reaction28_6
	reaction_reaction_56=compartment_compartment_1*global_par_parameter_8*x(75)*x(42);

% Reaction: id = reaction_57, name = reaction29_6
	reaction_reaction_57=compartment_compartment_1*global_par_parameter_9*x(76);

% Reaction: id = reaction_58, name = reaction22_7
	reaction_reaction_58=compartment_compartment_1*(global_par_parameter_2*x(38)*x(77)-global_par_parameter_3*x(78));

% Reaction: id = reaction_59, name = reaction23_7
	reaction_reaction_59=compartment_compartment_1*global_par_parameter_4*x(78);

% Reaction: id = reaction_60, name = reaction25_7
	reaction_reaction_60=compartment_compartment_1*(global_par_parameter_5*x(40)*x(79)-global_par_parameter_6*x(80));

% Reaction: id = reaction_61, name = reaction26_7
	reaction_reaction_61=compartment_compartment_1*global_par_parameter_7*x(80);

% Reaction: id = reaction_62, name = reaction28_7
	reaction_reaction_62=compartment_compartment_1*global_par_parameter_8*x(81)*x(42);

% Reaction: id = reaction_63, name = reaction29_7
	reaction_reaction_63=compartment_compartment_1*global_par_parameter_9*x(82);

% Reaction: id = reaction_64, name = reaction22_8
	reaction_reaction_64=compartment_compartment_1*(global_par_parameter_2*x(38)*x(83)-global_par_parameter_3*x(84));

% Reaction: id = reaction_65, name = reaction23_8
	reaction_reaction_65=compartment_compartment_1*global_par_parameter_4*x(84);

% Reaction: id = reaction_66, name = reaction25_8
	reaction_reaction_66=compartment_compartment_1*(global_par_parameter_5*x(40)*x(85)-global_par_parameter_6*x(86));

% Reaction: id = reaction_67, name = reaction26_8
	reaction_reaction_67=compartment_compartment_1*global_par_parameter_7*x(86);

% Reaction: id = reaction_68, name = reaction28_8
	reaction_reaction_68=compartment_compartment_1*global_par_parameter_8*x(87)*x(42);

% Reaction: id = reaction_69, name = reaction29_8
	reaction_reaction_69=compartment_compartment_1*global_par_parameter_9*x(88);

% Reaction: id = reaction_70, name = reaction22_9
	reaction_reaction_70=compartment_compartment_1*(global_par_parameter_2*x(38)*x(89)-global_par_parameter_3*x(90));

% Reaction: id = reaction_71, name = reaction23_9
	reaction_reaction_71=compartment_compartment_1*global_par_parameter_4*x(90);

% Reaction: id = reaction_72, name = reaction25_9
	reaction_reaction_72=compartment_compartment_1*(global_par_parameter_5*x(40)*x(91)-global_par_parameter_6*x(92));

% Reaction: id = reaction_73, name = reaction26_9
	reaction_reaction_73=compartment_compartment_1*global_par_parameter_7*x(92);

% Reaction: id = reaction_74, name = reaction28_9
	reaction_reaction_74=compartment_compartment_1*global_par_parameter_8*x(93)*x(42);

% Reaction: id = reaction_75, name = reaction29_9
	reaction_reaction_75=compartment_compartment_1*global_par_parameter_9*x(94);

% Reaction: id = reaction_76, name = reaction22_10
	reaction_reaction_76=compartment_compartment_1*(global_par_parameter_2*x(38)*x(95)-global_par_parameter_3*x(96));

% Reaction: id = reaction_77, name = reaction23_10
	reaction_reaction_77=compartment_compartment_1*global_par_parameter_4*x(96);

% Reaction: id = reaction_78, name = reaction25_10
	reaction_reaction_78=compartment_compartment_1*(global_par_parameter_5*x(40)*x(97)-global_par_parameter_6*x(98));

% Reaction: id = reaction_79, name = reaction26_10
	reaction_reaction_79=compartment_compartment_1*global_par_parameter_7*x(98);

% Reaction: id = reaction_80, name = reaction28_10
	reaction_reaction_80=compartment_compartment_1*global_par_parameter_8*x(99)*x(42);

% Reaction: id = reaction_81, name = reaction29_10
	reaction_reaction_81=compartment_compartment_1*global_par_parameter_9*x(100);

% Reaction: id = reaction_82, name = reaction22_11
	reaction_reaction_82=compartment_compartment_1*(global_par_parameter_2*x(38)*x(101)-global_par_parameter_3*x(102));

% Reaction: id = reaction_83, name = reaction23_11
	reaction_reaction_83=compartment_compartment_1*global_par_parameter_4*x(102);

% Reaction: id = reaction_84, name = reaction25_11
	reaction_reaction_84=compartment_compartment_1*(global_par_parameter_5*x(40)*x(103)-global_par_parameter_6*x(104));

% Reaction: id = reaction_85, name = reaction26_11
	reaction_reaction_85=compartment_compartment_1*global_par_parameter_7*x(104);

% Reaction: id = reaction_86, name = reaction28_11
	reaction_reaction_86=compartment_compartment_1*global_par_parameter_8*x(105)*x(42);

% Reaction: id = reaction_87, name = reaction29_11
	reaction_reaction_87=compartment_compartment_1*global_par_parameter_9*x(106);

% Reaction: id = reaction_88, name = reaction22_12
	reaction_reaction_88=compartment_compartment_1*(global_par_parameter_2*x(38)*x(107)-global_par_parameter_3*x(108));

% Reaction: id = reaction_89, name = reaction23_12
	reaction_reaction_89=compartment_compartment_1*global_par_parameter_4*x(108);

% Reaction: id = reaction_90, name = reaction25_12
	reaction_reaction_90=compartment_compartment_1*(global_par_parameter_5*x(40)*x(109)-global_par_parameter_6*x(110));

% Reaction: id = reaction_91, name = reaction26_12
	reaction_reaction_91=compartment_compartment_1*global_par_parameter_7*x(110);

% Reaction: id = reaction_92, name = reaction28_12
	reaction_reaction_92=compartment_compartment_1*global_par_parameter_8*x(111)*x(42);

% Reaction: id = reaction_93, name = reaction29_12
	reaction_reaction_93=compartment_compartment_1*global_par_parameter_9*x(112);

% Reaction: id = reaction_94, name = reaction22_13
	reaction_reaction_94=compartment_compartment_1*(global_par_parameter_2*x(38)*x(113)-global_par_parameter_3*x(114));

% Reaction: id = reaction_95, name = reaction23_13
	reaction_reaction_95=compartment_compartment_1*global_par_parameter_4*x(114);

% Reaction: id = reaction_96, name = reaction25_13
	reaction_reaction_96=compartment_compartment_1*(global_par_parameter_5*x(40)*x(115)-global_par_parameter_6*x(116));

% Reaction: id = reaction_97, name = reaction26_13
	reaction_reaction_97=compartment_compartment_1*global_par_parameter_7*x(116);

% Reaction: id = reaction_98, name = reaction28_13
	reaction_reaction_98=compartment_compartment_1*global_par_parameter_8*x(117)*x(42);

% Reaction: id = reaction_99, name = reaction29_13
	reaction_reaction_99=compartment_compartment_1*global_par_parameter_9*x(118);

% Reaction: id = reaction_100, name = reaction22_14
	reaction_reaction_100=compartment_compartment_1*(global_par_parameter_2*x(38)*x(119)-global_par_parameter_3*x(120));

% Reaction: id = reaction_101, name = reaction23_14
	reaction_reaction_101=compartment_compartment_1*global_par_parameter_4*x(120);

% Reaction: id = reaction_102, name = reaction25_14
	reaction_reaction_102=compartment_compartment_1*(global_par_parameter_5*x(40)*x(121)-global_par_parameter_6*x(122));

% Reaction: id = reaction_103, name = reaction26_14
	reaction_reaction_103=compartment_compartment_1*global_par_parameter_7*x(122);

% Reaction: id = reaction_104, name = reaction28_14
	reaction_reaction_104=compartment_compartment_1*global_par_parameter_8*x(123)*x(42);

% Reaction: id = reaction_105, name = reaction29_14
	reaction_reaction_105=compartment_compartment_1*global_par_parameter_9*x(124);

% Reaction: id = reaction_106, name = reaction22_15
	reaction_reaction_106=compartment_compartment_1*(global_par_parameter_2*x(38)*x(125)-global_par_parameter_3*x(126));

% Reaction: id = reaction_107, name = reaction23_15
	reaction_reaction_107=compartment_compartment_1*global_par_parameter_4*x(126);

% Reaction: id = reaction_108, name = reaction25_15
	reaction_reaction_108=compartment_compartment_1*(global_par_parameter_5*x(40)*x(127)-global_par_parameter_6*x(128));

% Reaction: id = reaction_109, name = reaction26_15
	reaction_reaction_109=compartment_compartment_1*global_par_parameter_7*x(128);

% Reaction: id = reaction_110, name = reaction28_15
	reaction_reaction_110=compartment_compartment_1*global_par_parameter_8*x(129)*x(42);

% Reaction: id = reaction_111, name = reaction29_15
	reaction_reaction_111=compartment_compartment_1*global_par_parameter_9*x(130);

% Reaction: id = reaction_112, name = reaction22_16
	reaction_reaction_112=compartment_compartment_1*(global_par_parameter_2*x(38)*x(131)-global_par_parameter_3*x(132));

% Reaction: id = reaction_113, name = reaction23_16
	reaction_reaction_113=compartment_compartment_1*global_par_parameter_4*x(132);

% Reaction: id = reaction_114, name = reaction25_16
	reaction_reaction_114=compartment_compartment_1*(global_par_parameter_5*x(40)*x(133)-global_par_parameter_6*x(134));

% Reaction: id = reaction_115, name = reaction26_16
	reaction_reaction_115=compartment_compartment_1*global_par_parameter_7*x(134);

% Reaction: id = reaction_116, name = reaction28_16
	reaction_reaction_116=compartment_compartment_1*global_par_parameter_8*x(135)*x(42);

% Reaction: id = reaction_117, name = reaction29_16
	reaction_reaction_117=compartment_compartment_1*global_par_parameter_9*x(136);

% Reaction: id = reaction_118, name = reaction22_17
	reaction_reaction_118=compartment_compartment_1*(global_par_parameter_2*x(38)*x(137)-global_par_parameter_3*x(138));

% Reaction: id = reaction_119, name = reaction23_17
	reaction_reaction_119=compartment_compartment_1*global_par_parameter_4*x(138);

% Reaction: id = reaction_120, name = reaction25_17
	reaction_reaction_120=compartment_compartment_1*(global_par_parameter_5*x(40)*x(139)-global_par_parameter_6*x(140));

% Reaction: id = reaction_121, name = reaction26_17
	reaction_reaction_121=compartment_compartment_1*global_par_parameter_7*x(140);

% Reaction: id = reaction_122, name = reaction28_17
	reaction_reaction_122=compartment_compartment_1*global_par_parameter_8*x(141)*x(42);

% Reaction: id = reaction_123, name = reaction29_17
	reaction_reaction_123=compartment_compartment_1*global_par_parameter_9*x(142);

% Reaction: id = reaction_124, name = reaction22_18
	reaction_reaction_124=compartment_compartment_1*(global_par_parameter_2*x(38)*x(143)-global_par_parameter_3*x(144));

% Reaction: id = reaction_125, name = reaction23_18
	reaction_reaction_125=compartment_compartment_1*global_par_parameter_4*x(144);

% Reaction: id = reaction_126, name = reaction25_18
	reaction_reaction_126=compartment_compartment_1*(global_par_parameter_5*x(40)*x(145)-global_par_parameter_6*x(146));

% Reaction: id = reaction_127, name = reaction26_18
	reaction_reaction_127=compartment_compartment_1*global_par_parameter_7*x(146);

% Reaction: id = reaction_128, name = reaction28_18
	reaction_reaction_128=compartment_compartment_1*global_par_parameter_8*x(147)*x(42);

% Reaction: id = reaction_129, name = reaction29_18
	reaction_reaction_129=compartment_compartment_1*global_par_parameter_9*x(148);

% Reaction: id = reaction_130, name = reaction22_19
	reaction_reaction_130=compartment_compartment_1*(global_par_parameter_2*x(38)*x(149)-global_par_parameter_3*x(150));

% Reaction: id = reaction_131, name = reaction23_19
	reaction_reaction_131=compartment_compartment_1*global_par_parameter_4*x(150);

% Reaction: id = reaction_132, name = reaction25_19
	reaction_reaction_132=compartment_compartment_1*(global_par_parameter_5*x(40)*x(151)-global_par_parameter_6*x(152));

% Reaction: id = reaction_133, name = reaction26_19
	reaction_reaction_133=compartment_compartment_1*global_par_parameter_7*x(152);

% Reaction: id = reaction_134, name = reaction28_19
	reaction_reaction_134=compartment_compartment_1*global_par_parameter_8*x(153)*x(42);

% Reaction: id = reaction_135, name = reaction29_19
	reaction_reaction_135=compartment_compartment_1*global_par_parameter_9*x(154);

% Reaction: id = reaction_136, name = reaction28_20
	reaction_reaction_136=compartment_compartment_1*global_par_parameter_8*x(156)*x(42);

% Reaction: id = reaction_137, name = reaction29_20
	reaction_reaction_137=compartment_compartment_1*global_par_parameter_9*x(157);

% Reaction: id = reaction_138, name = reaction30	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_138_k1=14200.8;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_138_k2=18032.6;

	reaction_reaction_138=compartment_compartment_1*(reaction_reaction_138_k1*x(158)-reaction_reaction_138_k2*x(159));

% Reaction: id = reaction_139, name = reaction31	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_139_k1=1.6E9;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_139_k2=35378.1;

	reaction_reaction_139=compartment_compartment_1*(reaction_reaction_139_k1*x(160)*x(159)-reaction_reaction_139_k2*x(161));

% Reaction: id = reaction_140, name = reaction32	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_140_k1=1.53068E8;

	reaction_reaction_140=compartment_compartment_1*reaction_reaction_140_k1*x(161)*x(155);

% Reaction: id = reaction_141, name = reaction33	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_141_k1=3.5491E9;

	reaction_reaction_141=compartment_compartment_1*reaction_reaction_141_k1*x(162);

% Species:   id = species_5, name = Met-tRNA, constant	const_species_species_5=2.59334189247694E-5;

% Species:   id = species_39, name = aa-tRNA, constant	const_species_species_39=5.18668391964828E-4;

% Species:   id = species_45, name = tRNA, constant	const_species_species_45=2.59333683546025E-4;

	xdot=zeros(163,1);
	
% Species:   id = species_1, name = eIF2_GDP, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_1) + ( 1.0 * reaction_reaction_18));
	
% Species:   id = species_2, name = eIF2B, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_1) + ( 1.0 * reaction_reaction_2));
	
% Species:   id = species_3, name = eIF2_GDP_eIF2B, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_2));
	
% Species:   id = species_4, name = eIF2_GTP, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_3));
	
% Species:   id = species_6, name = eIF2_GTP_Met-tRNA, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_5));
	
% Species:   id = species_7, name = eIF3, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_4) + ( 1.0 * reaction_reaction_18));
	
% Species:   id = species_8, name = eIF5, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_4) + ( 1.0 * reaction_reaction_18));
	
% Species:   id = species_9, name = eIF3_eIF5, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_4) + (-1.0 * reaction_reaction_5));
	
% Species:   id = species_10, name = eIF3_eIF5_eIF2_GTP_Met-tRNA, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_5) + (-1.0 * reaction_reaction_6));
	
% Species:   id = species_11, name = eIF1, affected by kineticLaw
	xdot(10) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_6) + ( 1.0 * reaction_reaction_18));
	
% Species:   id = species_12, name = eIF1_eIF3_eIF5_eIF2_GTP_Met-tRNA, affected by kineticLaw
	xdot(11) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_6) + (-1.0 * reaction_reaction_8));
	
% Species:   id = species_13, name = 40S, affected by kineticLaw
	xdot(12) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_7) + ( 1.0 * reaction_reaction_141));
	
% Species:   id = species_14, name = eIF1A, affected by kineticLaw
	xdot(13) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_7) + ( 1.0 * reaction_reaction_18));
	
% Species:   id = species_15, name = 40S_eIF1A, affected by kineticLaw
	xdot(14) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_7) + (-1.0 * reaction_reaction_8));
	
% Species:   id = species_16, name = 43S, affected by kineticLaw
	xdot(15) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_8) + (-1.0 * reaction_reaction_14));
	
% Species:   id = species_17, name = eIF4E, affected by kineticLaw
	xdot(16) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_9) + ( 1.0 * reaction_reaction_18));
	
% Species:   id = species_18, name = eIF4G, affected by kineticLaw
	xdot(17) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_9) + ( 1.0 * reaction_reaction_18));
	
% Species:   id = species_19, name = eIF4E_eIF4G, affected by kineticLaw
	xdot(18) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_9) + (-1.0 * reaction_reaction_11));
	
% Species:   id = species_20, name = mRNA_cap, affected by kineticLaw
	xdot(19) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_10) + ( 1.0 * reaction_reaction_18));
	
% Species:   id = species_21, name = Pab1, affected by kineticLaw
	xdot(20) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_10) + ( 1.0 * reaction_reaction_18));
	
% Species:   id = species_22, name = mRNA_Pab1, affected by kineticLaw
	xdot(21) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_10) + (-1.0 * reaction_reaction_11));
	
% Species:   id = species_23, name = eIF4E_eIF4G_mRNA_Pab1, affected by kineticLaw
	xdot(22) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_11) + (-1.0 * reaction_reaction_12));
	
% Species:   id = species_24, name = eIF4A, affected by kineticLaw
	xdot(23) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_12) + ( 1.0 * reaction_reaction_18));
	
% Species:   id = species_25, name = eIF4B, affected by kineticLaw
	xdot(24) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_13) + ( 1.0 * reaction_reaction_18));
	
% Species:   id = species_26, name = eIF4A_eIF4B
% Warning species is not changed by either rules or reactions
	xdot(25) = ;
	
% Species:   id = species_27, name = eIF4E_eIF4G_mRNA_Pab1_eIF4A_eIF4B, affected by kineticLaw
	xdot(26) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_13) + (-1.0 * reaction_reaction_14));
	
% Species:   id = species_28, name = 48S, affected by kineticLaw
	xdot(27) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_14) + (-1.0 * reaction_reaction_15));
	
% Species:   id = species_29, name = Ded1, affected by kineticLaw
	xdot(28) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_15) + ( 1.0 * reaction_reaction_18));
	
% Species:   id = species_30, name = 48S_Ded1, affected by kineticLaw
	xdot(29) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_15) + (-1.0 * reaction_reaction_17));
	
% Species:   id = species_31, name = eIF5B_GDP, affected by kineticLaw
	xdot(30) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_16) + ( 1.0 * reaction_reaction_18));
	
% Species:   id = species_32, name = eIF5B_GTP, affected by kineticLaw
	xdot(31) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_16) + (-1.0 * reaction_reaction_17));
	
% Species:   id = species_33, name = 48S_Ded1_eIF5B_GTP, affected by kineticLaw
	xdot(32) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_17) + (-1.0 * reaction_reaction_18));
	
% Species:   id = species_34, name = 60S, affected by kineticLaw
	xdot(33) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_18) + ( 1.0 * reaction_reaction_141));
	
% Species:   id = species_35, name = eEF1A_GDP, affected by kineticLaw
	xdot(34) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_19) + ( 1.0 * reaction_reaction_25) + ( 1.0 * reaction_reaction_29) + ( 1.0 * reaction_reaction_35) + ( 1.0 * reaction_reaction_41) + ( 1.0 * reaction_reaction_47) + ( 1.0 * reaction_reaction_53) + ( 1.0 * reaction_reaction_59) + ( 1.0 * reaction_reaction_65) + ( 1.0 * reaction_reaction_71) + ( 1.0 * reaction_reaction_77) + ( 1.0 * reaction_reaction_83) + ( 1.0 * reaction_reaction_89) + ( 1.0 * reaction_reaction_95) + ( 1.0 * reaction_reaction_101) + ( 1.0 * reaction_reaction_107) + ( 1.0 * reaction_reaction_113) + ( 1.0 * reaction_reaction_119) + ( 1.0 * reaction_reaction_125) + ( 1.0 * reaction_reaction_131));
	
% Species:   id = species_36, name = eEF1B, affected by kineticLaw
	xdot(35) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_19) + ( 1.0 * reaction_reaction_20));
	
% Species:   id = species_37, name = eEF1A_GDP_eEF1B, affected by kineticLaw
	xdot(36) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_19) + (-1.0 * reaction_reaction_20));
	
% Species:   id = species_38, name = eEF1A_GTP, affected by kineticLaw
	xdot(37) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_20) + (-1.0 * reaction_reaction_21));
	
% Species:   id = species_40, name = aa-tRNA_eEF1A_GTP, affected by kineticLaw
	xdot(38) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_21) + (-1.0 * reaction_reaction_24) + (-1.0 * reaction_reaction_28) + (-1.0 * reaction_reaction_34) + (-1.0 * reaction_reaction_40) + (-1.0 * reaction_reaction_46) + (-1.0 * reaction_reaction_52) + (-1.0 * reaction_reaction_58) + (-1.0 * reaction_reaction_64) + (-1.0 * reaction_reaction_70) + (-1.0 * reaction_reaction_76) + (-1.0 * reaction_reaction_82) + (-1.0 * reaction_reaction_88) + (-1.0 * reaction_reaction_94) + (-1.0 * reaction_reaction_100) + (-1.0 * reaction_reaction_106) + (-1.0 * reaction_reaction_112) + (-1.0 * reaction_reaction_118) + (-1.0 * reaction_reaction_124) + (-1.0 * reaction_reaction_130));
	
% Species:   id = species_41, name = eEF2_GDP, affected by kineticLaw
	xdot(39) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_22) + ( 1.0 * reaction_reaction_27) + ( 1.0 * reaction_reaction_31) + ( 1.0 * reaction_reaction_37) + ( 1.0 * reaction_reaction_43) + ( 1.0 * reaction_reaction_49) + ( 1.0 * reaction_reaction_55) + ( 1.0 * reaction_reaction_61) + ( 1.0 * reaction_reaction_67) + ( 1.0 * reaction_reaction_73) + ( 1.0 * reaction_reaction_79) + ( 1.0 * reaction_reaction_85) + ( 1.0 * reaction_reaction_91) + ( 1.0 * reaction_reaction_97) + ( 1.0 * reaction_reaction_103) + ( 1.0 * reaction_reaction_109) + ( 1.0 * reaction_reaction_115) + ( 1.0 * reaction_reaction_121) + ( 1.0 * reaction_reaction_127) + ( 1.0 * reaction_reaction_133));
	
% Species:   id = species_42, name = eEF2_GTP, affected by kineticLaw
	xdot(40) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_22) + (-1.0 * reaction_reaction_26) + (-1.0 * reaction_reaction_30) + (-1.0 * reaction_reaction_36) + (-1.0 * reaction_reaction_42) + (-1.0 * reaction_reaction_48) + (-1.0 * reaction_reaction_54) + (-1.0 * reaction_reaction_60) + (-1.0 * reaction_reaction_66) + (-1.0 * reaction_reaction_72) + (-1.0 * reaction_reaction_78) + (-1.0 * reaction_reaction_84) + (-1.0 * reaction_reaction_90) + (-1.0 * reaction_reaction_96) + (-1.0 * reaction_reaction_102) + (-1.0 * reaction_reaction_108) + (-1.0 * reaction_reaction_114) + (-1.0 * reaction_reaction_120) + (-1.0 * reaction_reaction_126) + (-1.0 * reaction_reaction_132));
	
% Species:   id = species_43, name = eEF3_GDP, affected by kineticLaw
	xdot(41) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_23) + ( 1.0 * reaction_reaction_33) + ( 1.0 * reaction_reaction_39) + ( 1.0 * reaction_reaction_45) + ( 1.0 * reaction_reaction_51) + ( 1.0 * reaction_reaction_57) + ( 1.0 * reaction_reaction_63) + ( 1.0 * reaction_reaction_69) + ( 1.0 * reaction_reaction_75) + ( 1.0 * reaction_reaction_81) + ( 1.0 * reaction_reaction_87) + ( 1.0 * reaction_reaction_93) + ( 1.0 * reaction_reaction_99) + ( 1.0 * reaction_reaction_105) + ( 1.0 * reaction_reaction_111) + ( 1.0 * reaction_reaction_117) + ( 1.0 * reaction_reaction_123) + ( 1.0 * reaction_reaction_129) + ( 1.0 * reaction_reaction_135) + ( 1.0 * reaction_reaction_137));
	
% Species:   id = species_44, name = eEF3_GTP, affected by kineticLaw
	xdot(42) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_23) + (-1.0 * reaction_reaction_32) + (-1.0 * reaction_reaction_38) + (-1.0 * reaction_reaction_44) + (-1.0 * reaction_reaction_50) + (-1.0 * reaction_reaction_56) + (-1.0 * reaction_reaction_62) + (-1.0 * reaction_reaction_68) + (-1.0 * reaction_reaction_74) + (-1.0 * reaction_reaction_80) + (-1.0 * reaction_reaction_86) + (-1.0 * reaction_reaction_92) + (-1.0 * reaction_reaction_98) + (-1.0 * reaction_reaction_104) + (-1.0 * reaction_reaction_110) + (-1.0 * reaction_reaction_116) + (-1.0 * reaction_reaction_122) + (-1.0 * reaction_reaction_128) + (-1.0 * reaction_reaction_134) + (-1.0 * reaction_reaction_136));
	
% Species:   id = species_46, name = 80S_1, affected by kineticLaw
	xdot(43) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_18) + (-1.0 * reaction_reaction_24));
	
% Species:   id = species_47, name = 80S_aa-tRNA_eEF1A_GTP_1, affected by kineticLaw
	xdot(44) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_24) + (-1.0 * reaction_reaction_25));
	
% Species:   id = species_48, name = 80S_aa-tRNA_1, affected by kineticLaw
	xdot(45) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_25) + (-1.0 * reaction_reaction_26));
	
% Species:   id = species_49, name = 80S_aa-tRNA_eEF2_GTP_1, affected by kineticLaw
	xdot(46) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_26) + (-1.0 * reaction_reaction_27));
	
% Species:   id = species_50, name = 80S_2, affected by kineticLaw
	xdot(47) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_28) + ( 1.0 * reaction_reaction_33));
	
% Species:   id = species_51, name = 80S_aa-tRNA_eEF1A_GTP_2, affected by kineticLaw
	xdot(48) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_28) + (-1.0 * reaction_reaction_29));
	
% Species:   id = species_52, name = 80S_aa-tRNA_2, affected by kineticLaw
	xdot(49) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_29) + (-1.0 * reaction_reaction_30));
	
% Species:   id = species_53, name = 80S_aa-tRNA_eEF2_GTP_2, affected by kineticLaw
	xdot(50) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_30) + (-1.0 * reaction_reaction_31));
	
% Species:   id = species_54, name = 80S_tRNA_2, affected by kineticLaw
	xdot(51) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_27) + (-1.0 * reaction_reaction_32));
	
% Species:   id = species_55, name = 80S_tRNA_eEF3_GTP_2, affected by kineticLaw
	xdot(52) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_32) + (-1.0 * reaction_reaction_33));
	
% Species:   id = species_56, name = 80S_3, affected by kineticLaw
	xdot(53) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_34) + ( 1.0 * reaction_reaction_39));
	
% Species:   id = species_57, name = 80S_aa-tRNA_eEF1A_GTP_3, affected by kineticLaw
	xdot(54) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_34) + (-1.0 * reaction_reaction_35));
	
% Species:   id = species_58, name = 80S_aa-tRNA_3, affected by kineticLaw
	xdot(55) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_35) + (-1.0 * reaction_reaction_36));
	
% Species:   id = species_59, name = 80S_aa-tRNA_eEF2_GTP_3, affected by kineticLaw
	xdot(56) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_36) + (-1.0 * reaction_reaction_37));
	
% Species:   id = species_60, name = 80S_tRNA_3, affected by kineticLaw
	xdot(57) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_31) + (-1.0 * reaction_reaction_38));
	
% Species:   id = species_61, name = 80S_tRNA_eEF3_GTP_3, affected by kineticLaw
	xdot(58) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_38) + (-1.0 * reaction_reaction_39));
	
% Species:   id = species_62, name = 80S_4, affected by kineticLaw
	xdot(59) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_40) + ( 1.0 * reaction_reaction_45));
	
% Species:   id = species_63, name = 80S_aa-tRNA_eEF1A_GTP_4, affected by kineticLaw
	xdot(60) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_40) + (-1.0 * reaction_reaction_41));
	
% Species:   id = species_64, name = 80S_aa-tRNA_4, affected by kineticLaw
	xdot(61) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_41) + (-1.0 * reaction_reaction_42));
	
% Species:   id = species_65, name = 80S_aa-tRNA_eEF2_GTP_4, affected by kineticLaw
	xdot(62) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_42) + (-1.0 * reaction_reaction_43));
	
% Species:   id = species_66, name = 80S_tRNA_4, affected by kineticLaw
	xdot(63) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_37) + (-1.0 * reaction_reaction_44));
	
% Species:   id = species_67, name = 80S_tRNA_eEF3_GTP_4, affected by kineticLaw
	xdot(64) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_44) + (-1.0 * reaction_reaction_45));
	
% Species:   id = species_68, name = 80S_5, affected by kineticLaw
	xdot(65) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_46) + ( 1.0 * reaction_reaction_51));
	
% Species:   id = species_69, name = 80S_aa-tRNA_eEF1A_GTP_5, affected by kineticLaw
	xdot(66) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_46) + (-1.0 * reaction_reaction_47));
	
% Species:   id = species_70, name = 80S_aa-tRNA_5, affected by kineticLaw
	xdot(67) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_47) + (-1.0 * reaction_reaction_48));
	
% Species:   id = species_71, name = 80S_aa-tRNA_eEF2_GTP_5, affected by kineticLaw
	xdot(68) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_48) + (-1.0 * reaction_reaction_49));
	
% Species:   id = species_72, name = 80S_tRNA_5, affected by kineticLaw
	xdot(69) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_43) + (-1.0 * reaction_reaction_50));
	
% Species:   id = species_73, name = 80S_tRNA_eEF3_GTP_5, affected by kineticLaw
	xdot(70) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_50) + (-1.0 * reaction_reaction_51));
	
% Species:   id = species_74, name = 80S_6, affected by kineticLaw
	xdot(71) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_52) + ( 1.0 * reaction_reaction_57));
	
% Species:   id = species_75, name = 80S_aa-tRNA_eEF1A_GTP_6, affected by kineticLaw
	xdot(72) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_52) + (-1.0 * reaction_reaction_53));
	
% Species:   id = species_76, name = 80S_aa-tRNA_6, affected by kineticLaw
	xdot(73) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_53) + (-1.0 * reaction_reaction_54));
	
% Species:   id = species_77, name = 80S_aa-tRNA_eEF2_GTP_6, affected by kineticLaw
	xdot(74) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_54) + (-1.0 * reaction_reaction_55));
	
% Species:   id = species_78, name = 80S_tRNA_6, affected by kineticLaw
	xdot(75) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_49) + (-1.0 * reaction_reaction_56));
	
% Species:   id = species_79, name = 80S_tRNA_eEF3_GTP_6, affected by kineticLaw
	xdot(76) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_56) + (-1.0 * reaction_reaction_57));
	
% Species:   id = species_80, name = 80S_7, affected by kineticLaw
	xdot(77) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_58) + ( 1.0 * reaction_reaction_63));
	
% Species:   id = species_81, name = 80S_aa-tRNA_eEF1A_GTP_7, affected by kineticLaw
	xdot(78) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_58) + (-1.0 * reaction_reaction_59));
	
% Species:   id = species_82, name = 80S_aa-tRNA_7, affected by kineticLaw
	xdot(79) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_59) + (-1.0 * reaction_reaction_60));
	
% Species:   id = species_83, name = 80S_aa-tRNA_eEF2_GTP_7, affected by kineticLaw
	xdot(80) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_60) + (-1.0 * reaction_reaction_61));
	
% Species:   id = species_84, name = 80S_tRNA_7, affected by kineticLaw
	xdot(81) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_55) + (-1.0 * reaction_reaction_62));
	
% Species:   id = species_85, name = 80S_tRNA_eEF3_GTP_7, affected by kineticLaw
	xdot(82) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_62) + (-1.0 * reaction_reaction_63));
	
% Species:   id = species_86, name = 80S_8, affected by kineticLaw
	xdot(83) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_64) + ( 1.0 * reaction_reaction_69));
	
% Species:   id = species_87, name = 80S_aa-tRNA_eEF1A_GTP_8, affected by kineticLaw
	xdot(84) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_64) + (-1.0 * reaction_reaction_65));
	
% Species:   id = species_88, name = 80S_aa-tRNA_8, affected by kineticLaw
	xdot(85) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_65) + (-1.0 * reaction_reaction_66));
	
% Species:   id = species_89, name = 80S_aa-tRNA_eEF2_GTP_8, affected by kineticLaw
	xdot(86) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_66) + (-1.0 * reaction_reaction_67));
	
% Species:   id = species_90, name = 80S_tRNA_8, affected by kineticLaw
	xdot(87) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_61) + (-1.0 * reaction_reaction_68));
	
% Species:   id = species_91, name = 80S_tRNA_eEF3_GTP_8, affected by kineticLaw
	xdot(88) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_68) + (-1.0 * reaction_reaction_69));
	
% Species:   id = species_92, name = 80S_9, affected by kineticLaw
	xdot(89) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_70) + ( 1.0 * reaction_reaction_75));
	
% Species:   id = species_93, name = 80S_aa-tRNA_eEF1A_GTP_9, affected by kineticLaw
	xdot(90) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_70) + (-1.0 * reaction_reaction_71));
	
% Species:   id = species_94, name = 80S_aa-tRNA_9, affected by kineticLaw
	xdot(91) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_71) + (-1.0 * reaction_reaction_72));
	
% Species:   id = species_95, name = 80S_aa-tRNA_eEF2_GTP_9, affected by kineticLaw
	xdot(92) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_72) + (-1.0 * reaction_reaction_73));
	
% Species:   id = species_96, name = 80S_tRNA_9, affected by kineticLaw
	xdot(93) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_67) + (-1.0 * reaction_reaction_74));
	
% Species:   id = species_97, name = 80S_tRNA_eEF3_GTP_9, affected by kineticLaw
	xdot(94) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_74) + (-1.0 * reaction_reaction_75));
	
% Species:   id = species_98, name = 80S_10, affected by kineticLaw
	xdot(95) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_76) + ( 1.0 * reaction_reaction_81));
	
% Species:   id = species_99, name = 80S_aa-tRNA_eEF1A_GTP_10, affected by kineticLaw
	xdot(96) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_76) + (-1.0 * reaction_reaction_77));
	
% Species:   id = species_100, name = 80S_aa-tRNA_10, affected by kineticLaw
	xdot(97) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_77) + (-1.0 * reaction_reaction_78));
	
% Species:   id = species_101, name = 80S_aa-tRNA_eEF2_GTP_10, affected by kineticLaw
	xdot(98) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_78) + (-1.0 * reaction_reaction_79));
	
% Species:   id = species_102, name = 80S_tRNA_10, affected by kineticLaw
	xdot(99) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_73) + (-1.0 * reaction_reaction_80));
	
% Species:   id = species_103, name = 80S_tRNA_eEF3_GTP_10, affected by kineticLaw
	xdot(100) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_80) + (-1.0 * reaction_reaction_81));
	
% Species:   id = species_104, name = 80S_11, affected by kineticLaw
	xdot(101) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_82) + ( 1.0 * reaction_reaction_87));
	
% Species:   id = species_105, name = 80S_aa-tRNA_eEF1A_GTP_11, affected by kineticLaw
	xdot(102) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_82) + (-1.0 * reaction_reaction_83));
	
% Species:   id = species_106, name = 80S_aa-tRNA_11, affected by kineticLaw
	xdot(103) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_83) + (-1.0 * reaction_reaction_84));
	
% Species:   id = species_107, name = 80S_aa-tRNA_eEF2_GTP_11, affected by kineticLaw
	xdot(104) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_84) + (-1.0 * reaction_reaction_85));
	
% Species:   id = species_108, name = 80S_tRNA_11, affected by kineticLaw
	xdot(105) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_79) + (-1.0 * reaction_reaction_86));
	
% Species:   id = species_109, name = 80S_tRNA_eEF3_GTP_11, affected by kineticLaw
	xdot(106) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_86) + (-1.0 * reaction_reaction_87));
	
% Species:   id = species_110, name = 80S_12, affected by kineticLaw
	xdot(107) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_88) + ( 1.0 * reaction_reaction_93));
	
% Species:   id = species_111, name = 80S_aa-tRNA_eEF1A_GTP_12, affected by kineticLaw
	xdot(108) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_88) + (-1.0 * reaction_reaction_89));
	
% Species:   id = species_112, name = 80S_aa-tRNA_12, affected by kineticLaw
	xdot(109) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_89) + (-1.0 * reaction_reaction_90));
	
% Species:   id = species_113, name = 80S_aa-tRNA_eEF2_GTP_12, affected by kineticLaw
	xdot(110) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_90) + (-1.0 * reaction_reaction_91));
	
% Species:   id = species_114, name = 80S_tRNA_12, affected by kineticLaw
	xdot(111) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_85) + (-1.0 * reaction_reaction_92));
	
% Species:   id = species_115, name = 80S_tRNA_eEF3_GTP_12, affected by kineticLaw
	xdot(112) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_92) + (-1.0 * reaction_reaction_93));
	
% Species:   id = species_116, name = 80S_13, affected by kineticLaw
	xdot(113) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_94) + ( 1.0 * reaction_reaction_99));
	
% Species:   id = species_117, name = 80S_aa-tRNA_eEF1A_GTP_13, affected by kineticLaw
	xdot(114) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_94) + (-1.0 * reaction_reaction_95));
	
% Species:   id = species_118, name = 80S_aa-tRNA_13, affected by kineticLaw
	xdot(115) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_95) + (-1.0 * reaction_reaction_96));
	
% Species:   id = species_119, name = 80S_aa-tRNA_eEF2_GTP_13, affected by kineticLaw
	xdot(116) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_96) + (-1.0 * reaction_reaction_97));
	
% Species:   id = species_120, name = 80S_tRNA_13, affected by kineticLaw
	xdot(117) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_91) + (-1.0 * reaction_reaction_98));
	
% Species:   id = species_121, name = 80S_tRNA_eEF3_GTP_13, affected by kineticLaw
	xdot(118) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_98) + (-1.0 * reaction_reaction_99));
	
% Species:   id = species_122, name = 80S_14, affected by kineticLaw
	xdot(119) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_100) + ( 1.0 * reaction_reaction_105));
	
% Species:   id = species_123, name = 80S_aa-tRNA_eEF1A_GTP_14, affected by kineticLaw
	xdot(120) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_100) + (-1.0 * reaction_reaction_101));
	
% Species:   id = species_124, name = 80S_aa-tRNA_14, affected by kineticLaw
	xdot(121) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_101) + (-1.0 * reaction_reaction_102));
	
% Species:   id = species_125, name = 80S_aa-tRNA_eEF2_GTP_14, affected by kineticLaw
	xdot(122) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_102) + (-1.0 * reaction_reaction_103));
	
% Species:   id = species_126, name = 80S_tRNA_14, affected by kineticLaw
	xdot(123) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_97) + (-1.0 * reaction_reaction_104));
	
% Species:   id = species_127, name = 80S_tRNA_eEF3_GTP_14, affected by kineticLaw
	xdot(124) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_104) + (-1.0 * reaction_reaction_105));
	
% Species:   id = species_128, name = 80S_15, affected by kineticLaw
	xdot(125) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_106) + ( 1.0 * reaction_reaction_111));
	
% Species:   id = species_129, name = 80S_aa-tRNA_eEF1A_GTP_15, affected by kineticLaw
	xdot(126) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_106) + (-1.0 * reaction_reaction_107));
	
% Species:   id = species_130, name = 80S_aa-tRNA_15, affected by kineticLaw
	xdot(127) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_107) + (-1.0 * reaction_reaction_108));
	
% Species:   id = species_131, name = 80S_aa-tRNA_eEF2_GTP_15, affected by kineticLaw
	xdot(128) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_108) + (-1.0 * reaction_reaction_109));
	
% Species:   id = species_132, name = 80S_tRNA_15, affected by kineticLaw
	xdot(129) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_103) + (-1.0 * reaction_reaction_110));
	
% Species:   id = species_133, name = 80S_tRNA_eEF3_GTP_15, affected by kineticLaw
	xdot(130) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_110) + (-1.0 * reaction_reaction_111));
	
% Species:   id = species_134, name = 80S_16, affected by kineticLaw
	xdot(131) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_112) + ( 1.0 * reaction_reaction_117));
	
% Species:   id = species_135, name = 80S_aa-tRNA_eEF1A_GTP_16, affected by kineticLaw
	xdot(132) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_112) + (-1.0 * reaction_reaction_113));
	
% Species:   id = species_136, name = 80S_aa-tRNA_16, affected by kineticLaw
	xdot(133) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_113) + (-1.0 * reaction_reaction_114));
	
% Species:   id = species_137, name = 80S_aa-tRNA_eEF2_GTP_16, affected by kineticLaw
	xdot(134) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_114) + (-1.0 * reaction_reaction_115));
	
% Species:   id = species_138, name = 80S_tRNA_16, affected by kineticLaw
	xdot(135) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_109) + (-1.0 * reaction_reaction_116));
	
% Species:   id = species_139, name = 80S_tRNA_eEF3_GTP_16, affected by kineticLaw
	xdot(136) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_116) + (-1.0 * reaction_reaction_117));
	
% Species:   id = species_140, name = 80S_17, affected by kineticLaw
	xdot(137) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_118) + ( 1.0 * reaction_reaction_123));
	
% Species:   id = species_141, name = 80S_aa-tRNA_eEF1A_GTP_17, affected by kineticLaw
	xdot(138) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_118) + (-1.0 * reaction_reaction_119));
	
% Species:   id = species_142, name = 80S_aa-tRNA_17, affected by kineticLaw
	xdot(139) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_119) + (-1.0 * reaction_reaction_120));
	
% Species:   id = species_143, name = 80S_aa-tRNA_eEF2_GTP_17, affected by kineticLaw
	xdot(140) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_120) + (-1.0 * reaction_reaction_121));
	
% Species:   id = species_144, name = 80S_tRNA_17, affected by kineticLaw
	xdot(141) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_115) + (-1.0 * reaction_reaction_122));
	
% Species:   id = species_145, name = 80S_tRNA_eEF3_GTP_17, affected by kineticLaw
	xdot(142) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_122) + (-1.0 * reaction_reaction_123));
	
% Species:   id = species_146, name = 80S_18, affected by kineticLaw
	xdot(143) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_124) + ( 1.0 * reaction_reaction_129));
	
% Species:   id = species_147, name = 80S_aa-tRNA_eEF1A_GTP_18, affected by kineticLaw
	xdot(144) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_124) + (-1.0 * reaction_reaction_125));
	
% Species:   id = species_148, name = 80S_aa-tRNA_18, affected by kineticLaw
	xdot(145) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_125) + (-1.0 * reaction_reaction_126));
	
% Species:   id = species_149, name = 80S_aa-tRNA_eEF2_GTP_18, affected by kineticLaw
	xdot(146) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_126) + (-1.0 * reaction_reaction_127));
	
% Species:   id = species_150, name = 80S_tRNA_18, affected by kineticLaw
	xdot(147) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_121) + (-1.0 * reaction_reaction_128));
	
% Species:   id = species_151, name = 80S_tRNA_eEF3_GTP_18, affected by kineticLaw
	xdot(148) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_128) + (-1.0 * reaction_reaction_129));
	
% Species:   id = species_152, name = 80S_19, affected by kineticLaw
	xdot(149) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_130) + ( 1.0 * reaction_reaction_135));
	
% Species:   id = species_153, name = 80S_aa-tRNA_eEF1A_GTP_19, affected by kineticLaw
	xdot(150) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_130) + (-1.0 * reaction_reaction_131));
	
% Species:   id = species_154, name = 80S_aa-tRNA_19, affected by kineticLaw
	xdot(151) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_131) + (-1.0 * reaction_reaction_132));
	
% Species:   id = species_155, name = 80S_aa-tRNA_eEF2_GTP_19, affected by kineticLaw
	xdot(152) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_132) + (-1.0 * reaction_reaction_133));
	
% Species:   id = species_156, name = 80S_tRNA_19, affected by kineticLaw
	xdot(153) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_127) + (-1.0 * reaction_reaction_134));
	
% Species:   id = species_157, name = 80S_tRNA_eEF3_GTP_19, affected by kineticLaw
	xdot(154) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_134) + (-1.0 * reaction_reaction_135));
	
% Species:   id = species_158, name = 80S_20, affected by kineticLaw
	xdot(155) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_137) + (-1.0 * reaction_reaction_140));
	
% Species:   id = species_159, name = 80S_tRNA_20, affected by kineticLaw
	xdot(156) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_133) + (-1.0 * reaction_reaction_136));
	
% Species:   id = species_160, name = 80S_tRNA_eEF3_GTP_20, affected by kineticLaw
	xdot(157) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_136) + (-1.0 * reaction_reaction_137));
	
% Species:   id = species_161, name = eRF3_GDP, affected by kineticLaw
	xdot(158) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_138) + ( 1.0 * reaction_reaction_141));
	
% Species:   id = species_162, name = eRF3_GTP, affected by kineticLaw
	xdot(159) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_138) + (-1.0 * reaction_reaction_139));
	
% Species:   id = species_163, name = eRF1, affected by kineticLaw
	xdot(160) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_139) + ( 1.0 * reaction_reaction_141));
	
% Species:   id = species_164, name = eRF1_eRF3_GTP, affected by kineticLaw
	xdot(161) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_139) + (-1.0 * reaction_reaction_140));
	
% Species:   id = species_165, name = 80S_eRF1_eRF3_GTP, affected by kineticLaw
	xdot(162) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_140) + (-1.0 * reaction_reaction_141));
	
% Species:   id = species_166, name = eIF4A_eIF4E_eIF4G_mRNA_Pab1, affected by kineticLaw
	xdot(163) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_12) + (-1.0 * reaction_reaction_13));
end

function z=function_1(k,substrate1,substrate2,mRNA_tot,A1,B1,C1,D1,A2,B2,C2,D2,E2,F2,A3,B3,C3,D3,E3,F3,A4,B4,C4,D4,E4,F4,A5,B5,C5,D5,E5,F5,A6,B6,C6,D6,E6,F6,A7,B7,C7,D7,E7,F7,A8,B8,C8,D8,E8,F8,A9,B9,C9,D9,E9,F9,A10,B10,C10,D10,E10,F10,A11,B11,C11,D11,E11,F11,A12,B12,C12,D12,E12,F12,A13,B13,C13,D13,E13,F13,A14,B14,C14,D14,E14,F14,A15,B15,C15,D15,E15,F15), z=(k*substrate1*substrate2*(mRNA_tot-(A1+B1+C1+D1+A2+B2+C2+D2+E2+F2+A3+B3+C3+D3+E3+F3+A4+B4+C4+D4+E4+F4+A5+B5+C5+D5+E5+F5+A6+B6+C6+D6+E6+F6+A7+B7+C7+D7+E7+F7+A8+B8+C8+D8+E8+F8+A9+B9+C9+D9+E9+F9+A10+B10+C10+D10+E10+F10+A11+B11+C11+D11+E11+F11+A12+B12+C12+D12+E12+F12+A13+B13+C13+D13+E13+F13+A14+B14+C14+D14+E14+F14+A15+B15+C15+D15+E15+F15)));end

function z=function_2(k,substrate,mRNA_tot,A1,B1,C1,D1,E1,F1,A2,B2,C2,D2,E2,F2,A3,B3,C3,D3,E3,F3,A4,B4,C4,D4,E4,F4,A5,B5,C5,D5,E5,F5,A6,B6,C6,D6,E6,F6,A7,B7,C7,D7,E7,F7,A8,B8,C8,D8,E8,F8,A9,B9,C9,D9,E9,F9,A10,B10,C10,D10,E10,F10,A11,B11,C11,D11,E11,F11,A12,B12,C12,D12,E12,F12,A13,B13,C13,D13,E13,F13,A14,B14,C14,D14,E14,F14,A15,B15,C15,D15,E15,F15), z=(k*substrate*(mRNA_tot-(A1+B1+C1+D1+E1+F1+A2+B2+C2+D2+E2+F2+A3+B3+C3+D3+E3+F3+A4+B4+C4+D4+E4+F4+A5+B5+C5+D5+E5+F5+A6+B6+C6+D6+E6+F6+A7+B7+C7+D7+E7+F7+A8+B8+C8+D8+E8+F8+A9+B9+C9+D9+E9+F9+A10+B10+C10+D10+E10+F10+A11+B11+C11+D11+E11+F11+A12+B12+C12+D12+E12+F12+A13+B13+C13+D13+E13+F13+A14+B14+C14+D14+E14+F14+A15+B15+C15+D15+E15+F15))/(mRNA_tot-(A1+B1+C1+D1+E1+F1+A2+B2+C2+D2+E2+F2+A3+B3+C3+D3+E3+F3+A4+B4+C4+D4+E4+F4+A5+B5+C5+D5+E5+F5+A6+B6+C6+D6+E6+F6+A7+B7+C7+D7+E7+F7+A8+B8+C8+D8+E8+F8+A9+B9+C9+D9+E9+F9+A10+B10+C10+D10+E10+F10+A11+B11+C11+D11+E11+F11+A12+B12+C12+D12+E12+F12+A13+B13+C13+D13+E13+F13+A14+B14+C14+D14+E14+F14)));end

function z=function_3(k,substrate,mRNA_tot,A1,B1,C1,D1,E1,F1,A2,B2,C2,D2,E2,F2,A3,B3,C3,D3,E3,F3,A4,B4,C4,D4,E4,F4,A5,B5,C5,D5,E5,F5,A6,B6,C6,D6,E6,F6,A7,B7,C7,D7,E7,F7,A8,B8,C8,D8,E8,F8,A9,B9,C9,D9,E9,F9,A10,B10,C10,D10,E10,F10,A11,B11,C11,D11,E11,F11,A12,B12,C12,D12,E12,F12,A13,B13,C13,D13,E13,F13,A14,B14,C14,D14,E14,F14,A15,E15,F15), z=(k*substrate*(mRNA_tot-(A1+B1+C1+D1+E1+F1+A2+B2+C2+D2+E2+F2+A3+B3+C3+D3+E3+F3+A4+B4+C4+D4+E4+F4+A5+B5+C5+D5+E5+F5+A6+B6+C6+D6+E6+F6+A7+B7+C7+D7+E7+F7+A8+B8+C8+D8+E8+F8+A9+B9+C9+D9+E9+F9+A10+B10+C10+D10+E10+F10+A11+B11+C11+D11+E11+F11+A12+B12+C12+D12+E12+F12+A13+B13+C13+D13+E13+F13+A14+B14+C14+D14+E14+F14+A15+E15+F15))/(mRNA_tot-(A1+B1+C1+D1+E1+F1+A2+B2+C2+D2+E2+F2+A3+B3+C3+D3+E3+F3+A4+B4+C4+D4+E4+F4+A5+B5+C5+D5+E5+F5+A6+B6+C6+D6+E6+F6+A7+B7+C7+D7+E7+F7+A8+B8+C8+D8+E8+F8+A9+B9+C9+D9+E9+F9+A10+B10+C10+D10+E10+F10+A11+B11+C11+D11+E11+F11+A12+B12+C12+D12+E12+F12+A13+B13+C13+D13+E13+F13+A14+B14+C14+D14+E14+F14)));end

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


