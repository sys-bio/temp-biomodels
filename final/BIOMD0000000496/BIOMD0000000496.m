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
% Model name = Stanford2013 - Kinetic model of yeast metabolic network (standard)
%
% is http://identifiers.org/biomodels.db/MODEL1204270000
% is http://identifiers.org/biomodels.db/BIOMD0000000496
% isDescribedBy http://identifiers.org/pubmed/24324546
%


function main()
%Initial conditions vector
	x0=zeros(281,1);
	x0(1) = 0.549000001186;
	x0(2) = 0.549000001219;
	x0(3) = 0.548999999216;
	x0(4) = 0.549000001219;
	x0(5) = 0.548999996568;
	x0(6) = 0.548999996435;
	x0(7) = 0.549000001219;
	x0(8) = 0.548999999216;
	x0(9) = 0.548999996063;
	x0(10) = 0.548999996395;
	x0(11) = 0.548999996568;
	x0(12) = 0.548999999216;
	x0(13) = 0.548999999216;
	x0(14) = 0.548999999216;
	x0(15) = 0.548999999216;
	x0(16) = 0.548999999216;
	x0(17) = 0.548999999216;
	x0(18) = 0.548999996435;
	x0(19) = 0.549000001219;
	x0(20) = 0.548999996529;
	x0(21) = 0.548999999216;
	x0(22) = 0.5489999965;
	x0(23) = 0.548999995995;
	x0(24) = 0.548999996529;
	x0(25) = 0.548999996262;
	x0(26) = 0.548999996262;
	x0(27) = 0.549000001186;
	x0(28) = 0.548999996383;
	x0(29) = 0.548999999216;
	x0(30) = 0.5489999965;
	x0(31) = 0.54900000196;
	x0(32) = 0.54900000196;
	x0(33) = 0.548999996435;
	x0(34) = 0.54900000196;
	x0(35) = 0.54899999593;
	x0(36) = 0.549000001186;
	x0(37) = 0.549000001219;
	x0(38) = 0.548999999216;
	x0(39) = 0.548999995536;
	x0(40) = 0.548999996435;
	x0(41) = 0.549000000846;
	x0(42) = 0.548999999216;
	x0(43) = 0.05150660046;
	x0(44) = 0.548999999216;
	x0(45) = 0.548999996343;
	x0(46) = 0.548999996529;
	x0(47) = 0.548999996435;
	x0(48) = 0.54899999551;
	x0(49) = 0.549000001219;
	x0(50) = 0.548999999216;
	x0(51) = 0.549000001826;
	x0(52) = 0.549000001866;
	x0(53) = 0.548999999216;
	x0(54) = 0.549000001999;
	x0(55) = 0.549000000915;
	x0(56) = 0.549000000915;
	x0(57) = 0.549000000915;
	x0(58) = 0.549000000915;
	x0(59) = 0.363387999607;
	x0(60) = 1.08759000085E-4;
	x0(61) = 0.548999997773;
	x0(62) = 0.54900000196;
	x0(63) = 0.548999999216;
	x0(64) = 0.548999999216;
	x0(65) = 0.548999999216;
	x0(66) = 0.54899999551;
	x0(67) = 0.548999996343;
	x0(68) = 0.549000002154;
	x0(69) = 0.549000001826;
	x0(70) = 0.548999999216;
	x0(71) = 0.548999999216;
	x0(72) = 0.548999996168;
	x0(73) = 0.548999999216;
	x0(74) = 0.548999999216;
	x0(75) = 0.548999999216;
	x0(76) = 0.548999999216;
	x0(77) = 0.549000001219;
	x0(78) = 0.548999999216;
	x0(79) = 0.548999999216;
	x0(80) = 0.548999996435;
	x0(81) = 0.548999996435;
	x0(82) = 0.548999999216;
	x0(83) = 0.548999996262;
	x0(84) = 0.548999999216;
	x0(85) = 0.120104000134;
	x0(86) = 0.54900000196;
	x0(87) = 0.548999999216;
	x0(88) = 0.548999996435;
	x0(89) = 0.548999995995;
	x0(90) = 0.548999996273999;
	x0(91) = 0.548999996619;
	x0(92) = 1.71906998614;
	x0(93) = 0.548999996395;
	x0(94) = 0.548999999216;
	x0(95) = 0.548999996395;
	x0(96) = 0.548999996273999;
	x0(97) = 0.548999999216;
	x0(98) = 1.25955999733;
	x0(99) = 0.549000001219;
	x0(100) = 0.548999996435;
	x0(101) = 1.09207999161;
	x0(102) = 0.496413999333;
	x0(103) = 0.548999996101;
	x0(104) = 0.548999999216;
	x0(105) = 0.548999999216;
	x0(106) = 0.548999996395;
	x0(107) = 0.99999999807;
	x0(108) = 0.54899999608;
	x0(109) = 0.548999999216;
	x0(110) = 0.548999995879;
	x0(111) = 0.5489999965;
	x0(112) = 0.548999996435;
	x0(113) = 0.548999999216;
	x0(114) = 0.548999995995;
	x0(115) = 0.54900000196;
	x0(116) = 0.549000000915;
	x0(117) = 0.548999999216;
	x0(118) = 0.548999996369;
	x0(119) = 0.549000000621;
	x0(120) = 1.34278000007;
	x0(121) = 0.104554999996;
	x0(122) = 0.09875869957;
	x0(123) = 0.548999999216;
	x0(124) = 0.54900000196;
	x0(125) = 0.548999999216;
	x0(126) = 0.549000001186;
	x0(127) = 0.548999999216;
	x0(128) = 0.54899999608;
	x0(129) = 0.548999999216;
	x0(130) = 0.548999996435;
	x0(131) = 0.548999996395;
	x0(132) = 0.54899999668;
	x0(133) = 0.54899999668;
	x0(134) = 0.54899999608;
	x0(135) = 0.548999999216;
	x0(136) = 0.548999995995;
	x0(137) = 0.54900000196;
	x0(138) = 0.548999996218;
	x0(139) = 0.548999999216;
	x0(140) = 0.548999996435;
	x0(141) = 0.548999999216;
	x0(142) = 0.548999996395;
	x0(143) = 0.548999996395;
	x0(144) = 0.548999999216;
	x0(145) = 0.54900000196;
	x0(146) = 0.548999999216;
	x0(147) = 0.548999999216;
	x0(148) = 49.9999997395;
	x0(149) = 0.548999999216;
	x0(150) = 0.548999996435;
	x0(151) = 0.548999996435;
	x0(152) = 0.548999999216;
	x0(153) = 0.548999999216;
	x0(154) = 0.548999999216;
	x0(155) = 0.548999996111;
	x0(156) = 0.548999996435;
	x0(157) = 0.548999999216;
	x0(158) = 0.0436363000303;
	x0(159) = 0.149999999336;
	x0(160) = 0.54899999611;
	x0(161) = 0.601872999094;
	x0(162) = 0.548999999216;
	x0(163) = 0.548999999216;
	x0(164) = 0.548999995944;
	x0(165) = 0.548999996279;
	x0(166) = 0.548999999216;
	x0(167) = 0.549000001219;
	x0(168) = 0.548999999216;
	x0(169) = 0.549000001219;
	x0(170) = 0.548999996395;
	x0(171) = 0.548999996273;
	x0(172) = 0.548999999216;
	x0(173) = 0.548999999216;
	x0(174) = 0.548999999216;
	x0(175) = 0.548999996435;
	x0(176) = 0.548999996435;
	x0(177) = 0.548999999216;
	x0(178) = 0.548999995944;
	x0(179) = 0.548999999216;
	x0(180) = 0.548999999216;
	x0(181) = 0.548999999216;
	x0(182) = 0.548999996273;
	x0(183) = 0.548999996435;
	x0(184) = 0.548999996406;
	x0(185) = 0.548999999216;
	x0(186) = 0.548999999216;
	x0(187) = 0.548999999216;
	x0(188) = 0.548999996435;
	x0(189) = 0.54899999748;
	x0(190) = 0.548999995879;
	x0(191) = 0.548999999216;
	x0(192) = 0.549000003759;
	x0(193) = 0.548999996435;
	x0(194) = 0.548999999216;
	x0(195) = 0.548999999216;
	x0(196) = 0.548999999216;
	x0(197) = 0.548999999216;
	x0(198) = 0.548999999216;
	x0(199) = 0.548999996434;
	x0(200) = 0.548999999216;
	x0(201) = 0.548999999216;
	x0(202) = 0.549000002886;
	x0(203) = 0.548999996435;
	x0(204) = 1.00000000123;
	x0(205) = 0.99999999807;
	x0(206) = 0.548999999216;
	x0(207) = 0.99999999807;
	x0(208) = 0.548999999685;
	x0(209) = 0.54899999668;
	x0(210) = 0.54899999668;
	x0(211) = 0.548999997213;
	x0(212) = 0.548999999216;
	x0(213) = 0.548999999216;
	x0(214) = 0.548999999216;
	x0(215) = 0.548999999216;
	x0(216) = 0.54899999668;
	x0(217) = 0.54899999668;
	x0(218) = 0.548999996395;
	x0(219) = 0.548999999216;
	x0(220) = 0.548999996413;
	x0(221) = 0.548999999216;
	x0(222) = 0.548999996463;
	x0(223) = 0.548999999216;
	x0(224) = 0.548999999216;
	x0(225) = 0.548999996383;
	x0(226) = 0.548999999216;
	x0(227) = 0.549000001971;
	x0(228) = 1.50325999658;
	x0(229) = 0.0867352997424;
	x0(230) = 0.548999999216;
	x0(231) = 0.548999996474;
	x0(232) = 0.548999996395;
	x0(233) = 0.548999999216;
	x0(234) = 0.54899999668;
	x0(235) = 0.54899999668;
	x0(236) = 0.548999996395;
	x0(237) = 0.548999999216;
	x0(238) = 0.548999999216;
	x0(239) = 0.548999996435;
	x0(240) = 0.548999996463;
	x0(241) = 0.548999999216;
	x0(242) = 0.548999999216;
	x0(243) = 0.548999999216;
	x0(244) = 0.549000001352;
	x0(245) = 0.548999996435;
	x0(246) = 0.548999999216;
	x0(247) = 0.548999999216;
	x0(248) = 0.548999996395;
	x0(249) = 0.0271092999605;
	x0(250) = 0.548999996435;
	x0(251) = 0.548999999216;
	x0(252) = 0.0605904998459;
	x0(253) = 0.548999999216;
	x0(254) = 0.548999996435;
	x0(255) = 0.548999996273;
	x0(256) = 0.548999999216;
	x0(257) = 0.548999999216;
	x0(258) = 12.8510998429;
	x0(259) = 0.548999999216;
	x0(260) = 0.548999996687;
	x0(261) = 0.548999999216;
	x0(262) = 0.548999996435;
	x0(263) = 0.548999999216;
	x0(264) = 0.548999999216;
	x0(265) = 0.548999996474;
	x0(266) = 0.548999999216;
	x0(267) = 0.548999996395;
	x0(268) = 0.548999996262;
	x0(269) = 0.548999999216;
	x0(270) = 0.549000001186;
	x0(271) = 0.548999999216;
	x0(272) = 0.548999995967;
	x0(273) = 0.548999999216;
	x0(274) = 0.548999999216;
	x0(275) = 0.548999999216;
	x0(276) = 0.548999996369;
	x0(277) = 0.548999999216;
	x0(278) = 0.548999999216;
	x0(279) = 0.548999996236;
	x0(280) = 1.0;
	x0(281) = 11.1;


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

% Compartment: id = intracellular, name = intracellular, constant
	compartment_intracellular=1.0;
% Compartment: id = extracellular, name = extracellular, constant
	compartment_extracellular=1.0;

% Reaction: id = r_0005, name = 1,3-beta-glucan synthase	% Local Parameter:   id =  Keq_r_0005, name = Keq_r_0005
	reaction_r_0005_Keq_r_0005=0.331541;
	% Local Parameter:   id =  Vmax_r_0005, name = Vmax_r_0005
	reaction_r_0005_Vmax_r_0005=6.24684;
	% Local Parameter:   id =  kmp_s_0001r_0005, name = kmp_s_0001r_0005
	reaction_r_0005_kmp_s_0001r_0005=0.549;
	% Local Parameter:   id =  kmp_s_0763_br_0005, name = kmp_s_0763_br_0005
	reaction_r_0005_kmp_s_0763_br_0005=0.549;
	% Local Parameter:   id =  kmp_s_1411r_0005, name = kmp_s_1411r_0005
	reaction_r_0005_kmp_s_1411r_0005=0.549;
	% Local Parameter:   id =  kms_s_1415r_0005, name = kms_s_1415r_0005
	reaction_r_0005_kms_s_1415r_0005=0.549;

	reaction_r_0005=compartment_intracellular*function_1(reaction_r_0005_Keq_r_0005, reaction_r_0005_Vmax_r_0005, compartment_intracellular, reaction_r_0005_kmp_s_0001r_0005, reaction_r_0005_kmp_s_0763_br_0005, reaction_r_0005_kmp_s_1411r_0005, reaction_r_0005_kms_s_1415r_0005, x(1), const_species_s_0763_b, x(269), x(270));

% Reaction: id = r_0006, name = 1,4-alpha-glucan branching enzyme	% Local Parameter:   id =  Keq_r_0006, name = Keq_r_0006
	reaction_r_0006_Keq_r_0006=0.6039;
	% Local Parameter:   id =  Vmax_r_0006, name = Vmax_r_0006
	reaction_r_0006_Vmax_r_0006=1.58399;
	% Local Parameter:   id =  kmp_s_0743r_0006, name = kmp_s_0743r_0006
	reaction_r_0006_kmp_s_0743r_0006=0.549;
	% Local Parameter:   id =  kmp_s_1434_br_0006, name = kmp_s_1434_br_0006
	reaction_r_0006_kmp_s_1434_br_0006=0.549;
	% Local Parameter:   id =  kms_s_0438r_0006, name = kms_s_0438r_0006
	reaction_r_0006_kms_s_0438r_0006=0.549;

	reaction_r_0006=compartment_intracellular*function_2(reaction_r_0006_Keq_r_0006, reaction_r_0006_Vmax_r_0006, compartment_intracellular, reaction_r_0006_kmp_s_0743r_0006, reaction_r_0006_kmp_s_1434_br_0006, reaction_r_0006_kms_s_0438r_0006, x(99), x(163), const_species_s_1434_b);

% Reaction: id = r_0008, name = 1-(5-phosphoribosyl)-5-[(5-phosphoribosylamino)methylideneamino)imidazole-4-carboxamide isomerase	% Local Parameter:   id =  Keq_r_0008, name = Keq_r_0008
	reaction_r_0008_Keq_r_0008=1.1;
	% Local Parameter:   id =  Vmax_r_0008, name = Vmax_r_0008
	reaction_r_0008_Vmax_r_0008=0.13761;
	% Local Parameter:   id =  kmp_s_0315r_0008, name = kmp_s_0315r_0008
	reaction_r_0008_kmp_s_0315r_0008=0.549;
	% Local Parameter:   id =  kms_s_0079r_0008, name = kms_s_0079r_0008
	reaction_r_0008_kms_s_0079r_0008=0.549;

	reaction_r_0008=compartment_intracellular*function_3(reaction_r_0008_Keq_r_0008, reaction_r_0008_Vmax_r_0008, compartment_intracellular, reaction_r_0008_kmp_s_0315r_0008, reaction_r_0008_kms_s_0079r_0008, x(21), x(71));

% Reaction: id = r_0009, name = 1-acyl-sn-gylcerol-3-phosphate acyltransferase	% Local Parameter:   id =  Keq_r_0009, name = Keq_r_0009
	reaction_r_0009_Keq_r_0009=0.0999269;
	% Local Parameter:   id =  Vmax_r_0009, name = Vmax_r_0009
	reaction_r_0009_Vmax_r_0009=0.0421078;
	% Local Parameter:   id =  kmp_s_0514r_0009, name = kmp_s_0514r_0009
	reaction_r_0009_kmp_s_0514r_0009=0.549;
	% Local Parameter:   id =  kmp_s_0763_br_0009, name = kmp_s_0763_br_0009
	reaction_r_0009_kmp_s_0763_br_0009=0.549;
	% Local Parameter:   id =  kmp_s_1215r_0009, name = kmp_s_1215r_0009
	reaction_r_0009_kmp_s_1215r_0009=0.549;
	% Local Parameter:   id =  kms_s_0083r_0009, name = kms_s_0083r_0009
	reaction_r_0009_kms_s_0083r_0009=0.549;
	% Local Parameter:   id =  kms_s_0386r_0009, name = kms_s_0386r_0009
	reaction_r_0009_kms_s_0386r_0009=0.549;

	reaction_r_0009=compartment_intracellular*function_4(reaction_r_0009_Keq_r_0009, reaction_r_0009_Vmax_r_0009, compartment_intracellular, reaction_r_0009_kmp_s_0514r_0009, reaction_r_0009_kmp_s_0763_br_0009, reaction_r_0009_kmp_s_1215r_0009, reaction_r_0009_kms_s_0083r_0009, reaction_r_0009_kms_s_0386r_0009, x(23), x(89), x(114), const_species_s_0763_b, x(243));

% Reaction: id = r_0014, name = 2,5-diamino-6-ribitylamino-4(3H)-pyrimidinone 5'-phosphate deaminase	% Local Parameter:   id =  Keq_r_0014, name = Keq_r_0014
	reaction_r_0014_Keq_r_0014=2.00364;
	% Local Parameter:   id =  Vmax_r_0014, name = Vmax_r_0014
	reaction_r_0014_Vmax_r_0014=0.00605002;
	% Local Parameter:   id =  kmp_s_0319r_0014, name = kmp_s_0319r_0014
	reaction_r_0014_kmp_s_0319r_0014=0.549;
	% Local Parameter:   id =  kmp_s_0430r_0014, name = kmp_s_0430r_0014
	reaction_r_0014_kmp_s_0430r_0014=0.549;
	% Local Parameter:   id =  kms_s_0146r_0014, name = kms_s_0146r_0014
	reaction_r_0014_kms_s_0146r_0014=0.549;
	% Local Parameter:   id =  kms_s_0763_br_0014, name = kms_s_0763_br_0014
	reaction_r_0014_kms_s_0763_br_0014=0.549;
	% Local Parameter:   id =  kms_s_1434_br_0014, name = kms_s_1434_br_0014
	reaction_r_0014_kms_s_1434_br_0014=0.549;

	reaction_r_0014=compartment_intracellular*function_5(reaction_r_0014_Keq_r_0014, reaction_r_0014_Vmax_r_0014, compartment_intracellular, reaction_r_0014_kmp_s_0319r_0014, reaction_r_0014_kmp_s_0430r_0014, reaction_r_0014_kms_s_0146r_0014, reaction_r_0014_kms_s_0763_br_0014, reaction_r_0014_kms_s_1434_br_0014, x(32), x(75), x(97), const_species_s_0763_b, const_species_s_1434_b);

% Reaction: id = r_0015, name = 2,5-diamino-6-ribosylamino-4(3H)-pyrimidinone 5'-phosphate reductase (NADPH)	% Local Parameter:   id =  Keq_r_0015, name = Keq_r_0015
	reaction_r_0015_Keq_r_0015=2.00364;
	% Local Parameter:   id =  Vmax_r_0015, name = Vmax_r_0015
	reaction_r_0015_Vmax_r_0015=0.00605002;
	% Local Parameter:   id =  kmp_s_0146r_0015, name = kmp_s_0146r_0015
	reaction_r_0015_kmp_s_0146r_0015=0.549;
	% Local Parameter:   id =  kmp_s_1091r_0015, name = kmp_s_1091r_0015
	reaction_r_0015_kmp_s_1091r_0015=0.549;
	% Local Parameter:   id =  kms_s_0145r_0015, name = kms_s_0145r_0015
	reaction_r_0015_kms_s_0145r_0015=0.549;
	% Local Parameter:   id =  kms_s_0763_br_0015, name = kms_s_0763_br_0015
	reaction_r_0015_kms_s_0763_br_0015=0.549;
	% Local Parameter:   id =  kms_s_1096r_0015, name = kms_s_1096r_0015
	reaction_r_0015_kms_s_1096r_0015=0.549;

	reaction_r_0015=compartment_intracellular*function_6(reaction_r_0015_Keq_r_0015, reaction_r_0015_Vmax_r_0015, compartment_intracellular, reaction_r_0015_kmp_s_0146r_0015, reaction_r_0015_kmp_s_1091r_0015, reaction_r_0015_kms_s_0145r_0015, reaction_r_0015_kms_s_0763_br_0015, reaction_r_0015_kms_s_1096r_0015, x(31), x(32), const_species_s_0763_b, x(230), x(231));

% Reaction: id = r_0016, name = 2-aceto-2-hydroxybutanoate synthase	% Local Parameter:   id =  Keq_r_0016, name = Keq_r_0016
	reaction_r_0016_Keq_r_0016=33.0686;
	% Local Parameter:   id =  Vmax_r_0016, name = Vmax_r_0016
	reaction_r_0016_Vmax_r_0016=1.15193;
	% Local Parameter:   id =  kmp_s_0042r_0016, name = kmp_s_0042r_0016
	reaction_r_0016_kmp_s_0042r_0016=0.549;
	% Local Parameter:   id =  kmp_s_0470r_0016, name = kmp_s_0470r_0016
	reaction_r_0016_kmp_s_0470r_0016=1.0;
	% Local Parameter:   id =  kms_s_0183r_0016, name = kms_s_0183r_0016
	reaction_r_0016_kms_s_0183r_0016=0.549;
	% Local Parameter:   id =  kms_s_0763_br_0016, name = kms_s_0763_br_0016
	reaction_r_0016_kms_s_0763_br_0016=0.549;
	% Local Parameter:   id =  kms_s_1277r_0016, name = kms_s_1277r_0016
	reaction_r_0016_kms_s_1277r_0016=0.0605905;

	reaction_r_0016=compartment_intracellular*function_7(reaction_r_0016_Keq_r_0016, reaction_r_0016_Vmax_r_0016, compartment_intracellular, reaction_r_0016_kmp_s_0042r_0016, reaction_r_0016_kmp_s_0470r_0016, reaction_r_0016_kms_s_0183r_0016, reaction_r_0016_kms_s_0763_br_0016, reaction_r_0016_kms_s_1277r_0016, x(13), x(41), x(107), const_species_s_0763_b, x(252));

% Reaction: id = r_0018, name = 2-aminoadipate transaminase	% Local Parameter:   id =  Keq_r_0018, name = Keq_r_0018
	reaction_r_0018_Keq_r_0018=1.1;
	% Local Parameter:   id =  Vmax_r_0018, name = Vmax_r_0018
	reaction_r_0018_Vmax_r_0018=1.0241;
	% Local Parameter:   id =  kmp_s_0185r_0018, name = kmp_s_0185r_0018
	reaction_r_0018_kmp_s_0185r_0018=0.549;
	% Local Parameter:   id =  kmp_s_0861r_0018, name = kmp_s_0861r_0018
	reaction_r_0018_kmp_s_0861r_0018=0.549;
	% Local Parameter:   id =  kms_s_0181r_0018, name = kms_s_0181r_0018
	reaction_r_0018_kms_s_0181r_0018=0.549;
	% Local Parameter:   id =  kms_s_0899r_0018, name = kms_s_0899r_0018
	reaction_r_0018_kms_s_0899r_0018=0.549;

	reaction_r_0018=compartment_intracellular*function_8(reaction_r_0018_Keq_r_0018, reaction_r_0018_Vmax_r_0018, compartment_intracellular, reaction_r_0018_kmp_s_0185r_0018, reaction_r_0018_kmp_s_0861r_0018, reaction_r_0018_kms_s_0181r_0018, reaction_r_0018_kms_s_0899r_0018, x(40), x(42), x(177), x(188));

% Reaction: id = r_0021, name = 2-deoxy-D-arabino-heptulosonate 7-phosphate synthetase	% Local Parameter:   id =  Keq_r_0021, name = Keq_r_0021
	reaction_r_0021_Keq_r_0021=40.5765;
	% Local Parameter:   id =  Vmax_r_0021, name = Vmax_r_0021
	reaction_r_0021_Vmax_r_0021=1.60931;
	% Local Parameter:   id =  kmp_s_0356r_0021, name = kmp_s_0356r_0021
	reaction_r_0021_kmp_s_0356r_0021=0.549;
	% Local Parameter:   id =  kmp_s_1207r_0021, name = kmp_s_1207r_0021
	reaction_r_0021_kmp_s_1207r_0021=0.549;
	% Local Parameter:   id =  kms_s_0533r_0021, name = kms_s_0533r_0021
	reaction_r_0021_kms_s_0533r_0021=0.549;
	% Local Parameter:   id =  kms_s_1243r_0021, name = kms_s_1243r_0021
	reaction_r_0021_kms_s_1243r_0021=0.0271093;
	% Local Parameter:   id =  kms_s_1434_br_0021, name = kms_s_1434_br_0021
	reaction_r_0021_kms_s_1434_br_0021=0.549;

	reaction_r_0021=compartment_intracellular*function_9(reaction_r_0021_Keq_r_0021, reaction_r_0021_Vmax_r_0021, compartment_intracellular, reaction_r_0021_kmp_s_0356r_0021, reaction_r_0021_kmp_s_1207r_0021, reaction_r_0021_kms_s_0533r_0021, reaction_r_0021_kms_s_1243r_0021, reaction_r_0021_kms_s_1434_br_0021, x(84), x(119), const_species_s_1207, x(249), const_species_s_1434_b);

% Reaction: id = r_0025, name = 2-isopropylmalate hydratase	% Local Parameter:   id =  Keq_r_0025, name = Keq_r_0025
	reaction_r_0025_Keq_r_0025=0.6039;
	% Local Parameter:   id =  Vmax_r_0025, name = Vmax_r_0025
	reaction_r_0025_Vmax_r_0025=0.764496;
	% Local Parameter:   id =  kmp_s_0170r_0025, name = kmp_s_0170r_0025
	reaction_r_0025_kmp_s_0170r_0025=0.549;
	% Local Parameter:   id =  kmp_s_1434_br_0025, name = kmp_s_1434_br_0025
	reaction_r_0025_kmp_s_1434_br_0025=0.549;
	% Local Parameter:   id =  kms_s_0167r_0025, name = kms_s_0167r_0025
	reaction_r_0025_kms_s_0167r_0025=0.549;

	reaction_r_0025=compartment_intracellular*function_10(reaction_r_0025_Keq_r_0025, reaction_r_0025_Vmax_r_0025, compartment_intracellular, reaction_r_0025_kmp_s_0170r_0025, reaction_r_0025_kmp_s_1434_br_0025, reaction_r_0025_kms_s_0167r_0025, x(37), x(38), const_species_s_1434_b);

% Reaction: id = r_0026, name = 2-isopropylmalate synthase	% Local Parameter:   id =  Keq_r_0026, name = Keq_r_0026
	reaction_r_0026_Keq_r_0026=1.1;
	% Local Parameter:   id =  Vmax_r_0026, name = Vmax_r_0026
	reaction_r_0026_Vmax_r_0026=2.2935;
	% Local Parameter:   id =  kmp_s_0167r_0026, name = kmp_s_0167r_0026
	reaction_r_0026_kmp_s_0167r_0026=0.549;
	% Local Parameter:   id =  kmp_s_0514r_0026, name = kmp_s_0514r_0026
	reaction_r_0026_kmp_s_0514r_0026=0.549;
	% Local Parameter:   id =  kmp_s_0763_br_0026, name = kmp_s_0763_br_0026
	reaction_r_0026_kmp_s_0763_br_0026=0.549;
	% Local Parameter:   id =  kms_s_0238r_0026, name = kms_s_0238r_0026
	reaction_r_0026_kms_s_0238r_0026=0.549;
	% Local Parameter:   id =  kms_s_0380r_0026, name = kms_s_0380r_0026
	reaction_r_0026_kms_s_0380r_0026=0.549;
	% Local Parameter:   id =  kms_s_1434_br_0026, name = kms_s_1434_br_0026
	reaction_r_0026_kms_s_1434_br_0026=0.549;

	reaction_r_0026=compartment_intracellular*function_11(reaction_r_0026_Keq_r_0026, reaction_r_0026_Vmax_r_0026, compartment_intracellular, reaction_r_0026_kmp_s_0167r_0026, reaction_r_0026_kmp_s_0514r_0026, reaction_r_0026_kmp_s_0763_br_0026, reaction_r_0026_kms_s_0238r_0026, reaction_r_0026_kms_s_0380r_0026, reaction_r_0026_kms_s_1434_br_0026, x(37), x(54), x(88), x(114), const_species_s_0763_b, const_species_s_1434_b);

% Reaction: id = r_0029, name = 2-methylcitrate dehydratase	% Local Parameter:   id =  Keq_r_0029, name = Keq_r_0029
	reaction_r_0029_Keq_r_0029=0.6039;
	% Local Parameter:   id =  Vmax_r_0029, name = Vmax_r_0029
	reaction_r_0029_Vmax_r_0029=0.731496;
	% Local Parameter:   id =  kmp_s_0468r_0029, name = kmp_s_0468r_0029
	reaction_r_0029_kmp_s_0468r_0029=0.549;
	% Local Parameter:   id =  kmp_s_1434_br_0029, name = kmp_s_1434_br_0029
	reaction_r_0029_kmp_s_1434_br_0029=0.549;
	% Local Parameter:   id =  kms_s_0798r_0029, name = kms_s_0798r_0029
	reaction_r_0029_kms_s_0798r_0029=0.549;

	reaction_r_0029=compartment_intracellular*function_12(reaction_r_0029_Keq_r_0029, reaction_r_0029_Vmax_r_0029, compartment_intracellular, reaction_r_0029_kmp_s_0468r_0029, reaction_r_0029_kmp_s_1434_br_0029, reaction_r_0029_kms_s_0798r_0029, x(105), x(167), const_species_s_1434_b);

% Reaction: id = r_0031, name = 2-oxo-4-methyl-3-carboxypentanoate decarboxylation	% Local Parameter:   id =  Keq_r_0031, name = Keq_r_0031
	reaction_r_0031_Keq_r_0031=2.00364;
	% Local Parameter:   id =  Vmax_r_0031, name = Vmax_r_0031
	reaction_r_0031_Vmax_r_0031=1.0703;
	% Local Parameter:   id =  kmp_s_0297r_0031, name = kmp_s_0297r_0031
	reaction_r_0031_kmp_s_0297r_0031=0.549;
	% Local Parameter:   id =  kmp_s_0470r_0031, name = kmp_s_0470r_0031
	reaction_r_0031_kmp_s_0470r_0031=1.0;
	% Local Parameter:   id =  kms_s_0010r_0031, name = kms_s_0010r_0031
	reaction_r_0031_kms_s_0010r_0031=0.549;
	% Local Parameter:   id =  kms_s_0763_br_0031, name = kms_s_0763_br_0031
	reaction_r_0031_kms_s_0763_br_0031=0.549;

	reaction_r_0031=compartment_intracellular*function_13(reaction_r_0031_Keq_r_0031, reaction_r_0031_Vmax_r_0031, compartment_intracellular, reaction_r_0031_kmp_s_0297r_0031, reaction_r_0031_kmp_s_0470r_0031, reaction_r_0031_kms_s_0010r_0031, reaction_r_0031_kms_s_0763_br_0031, x(5), x(63), x(107), const_species_s_0763_b);

% Reaction: id = r_0034, name = 3',5'-bisphosphate nucleotidase	% Local Parameter:   id =  Keq_r_0034, name = Keq_r_0034
	reaction_r_0034_Keq_r_0034=2.52371;
	% Local Parameter:   id =  Vmax_r_0034, name = Vmax_r_0034
	reaction_r_0034_Vmax_r_0034=0.39732;
	% Local Parameter:   id =  kmp_s_0434r_0034, name = kmp_s_0434r_0034
	reaction_r_0034_kmp_s_0434r_0034=1.25956;
	% Local Parameter:   id =  kmp_s_1207r_0034, name = kmp_s_1207r_0034
	reaction_r_0034_kmp_s_1207r_0034=0.549;
	% Local Parameter:   id =  kms_s_0397r_0034, name = kms_s_0397r_0034
	reaction_r_0034_kms_s_0397r_0034=0.549;
	% Local Parameter:   id =  kms_s_1434_br_0034, name = kms_s_1434_br_0034
	reaction_r_0034_kms_s_1434_br_0034=0.549;

	reaction_r_0034=compartment_intracellular*function_14(reaction_r_0034_Keq_r_0034, reaction_r_0034_Vmax_r_0034, compartment_intracellular, reaction_r_0034_kmp_s_0434r_0034, reaction_r_0034_kmp_s_1207r_0034, reaction_r_0034_kms_s_0397r_0034, reaction_r_0034_kms_s_1434_br_0034, x(91), x(98), const_species_s_1207, const_species_s_1434_b);

% Reaction: id = r_0040, name = 3,4-dihydroxy-2-butanone-4-phosphate synthase	% Local Parameter:   id =  Keq_r_0040, name = Keq_r_0040
	reaction_r_0040_Keq_r_0040=0.331541;
	% Local Parameter:   id =  Vmax_r_0040, name = Vmax_r_0040
	reaction_r_0040_Vmax_r_0040=0.00989001;
	% Local Parameter:   id =  kmp_s_0163r_0040, name = kmp_s_0163r_0040
	reaction_r_0040_kmp_s_0163r_0040=0.549;
	% Local Parameter:   id =  kmp_s_0689r_0040, name = kmp_s_0689r_0040
	reaction_r_0040_kmp_s_0689r_0040=0.549;
	% Local Parameter:   id =  kmp_s_0763_br_0040, name = kmp_s_0763_br_0040
	reaction_r_0040_kmp_s_0763_br_0040=0.549;
	% Local Parameter:   id =  kms_s_0557r_0040, name = kms_s_0557r_0040
	reaction_r_0040_kms_s_0557r_0040=0.549;

	reaction_r_0040=compartment_intracellular*function_15(reaction_r_0040_Keq_r_0040, reaction_r_0040_Vmax_r_0040, compartment_intracellular, reaction_r_0040_kmp_s_0163r_0040, reaction_r_0040_kmp_s_0689r_0040, reaction_r_0040_kmp_s_0763_br_0040, reaction_r_0040_kms_s_0557r_0040, x(36), x(126), x(153), const_species_s_0763_b);

% Reaction: id = r_0042, name = 3-dehydroquinate dehydratase	% Local Parameter:   id =  Keq_r_0042, name = Keq_r_0042
	reaction_r_0042_Keq_r_0042=0.6039;
	% Local Parameter:   id =  Vmax_r_0042, name = Vmax_r_0042
	reaction_r_0042_Vmax_r_0042=0.731496;
	% Local Parameter:   id =  kmp_s_0217r_0042, name = kmp_s_0217r_0042
	reaction_r_0042_kmp_s_0217r_0042=0.549;
	% Local Parameter:   id =  kmp_s_1434_br_0042, name = kmp_s_1434_br_0042
	reaction_r_0042_kmp_s_1434_br_0042=0.549;
	% Local Parameter:   id =  kms_s_0216r_0042, name = kms_s_0216r_0042
	reaction_r_0042_kms_s_0216r_0042=0.549;

	reaction_r_0042=compartment_intracellular*function_16(reaction_r_0042_Keq_r_0042, reaction_r_0042_Vmax_r_0042, compartment_intracellular, reaction_r_0042_kmp_s_0217r_0042, reaction_r_0042_kmp_s_1434_br_0042, reaction_r_0042_kms_s_0216r_0042, x(49), x(50), const_species_s_1434_b);

% Reaction: id = r_0043, name = 3-dehydroquinate synthase	% Local Parameter:   id =  Keq_r_0043, name = Keq_r_0043
	reaction_r_0043_Keq_r_0043=0.6039;
	% Local Parameter:   id =  Vmax_r_0043, name = Vmax_r_0043
	reaction_r_0043_Vmax_r_0043=0.731496;
	% Local Parameter:   id =  kmp_s_0216r_0043, name = kmp_s_0216r_0043
	reaction_r_0043_kmp_s_0216r_0043=0.549;
	% Local Parameter:   id =  kmp_s_1207r_0043, name = kmp_s_1207r_0043
	reaction_r_0043_kmp_s_1207r_0043=0.549;
	% Local Parameter:   id =  kms_s_0356r_0043, name = kms_s_0356r_0043
	reaction_r_0043_kms_s_0356r_0043=0.549;

	reaction_r_0043=compartment_intracellular*function_17(reaction_r_0043_Keq_r_0043, reaction_r_0043_Vmax_r_0043, compartment_intracellular, reaction_r_0043_kmp_s_0216r_0043, reaction_r_0043_kmp_s_1207r_0043, reaction_r_0043_kms_s_0356r_0043, x(49), x(84), const_species_s_1207);

% Reaction: id = r_0044, name = 3-dehydrosphinganine reductase	% Local Parameter:   id =  Keq_r_0044, name = Keq_r_0044
	reaction_r_0044_Keq_r_0044=3.64962;
	% Local Parameter:   id =  Vmax_r_0044, name = Vmax_r_0044
	reaction_r_0044_Vmax_r_0044=0.00279511;
	% Local Parameter:   id =  kmp_s_1091r_0044, name = kmp_s_1091r_0044
	reaction_r_0044_kmp_s_1091r_0044=0.549;
	% Local Parameter:   id =  kmp_s_1325r_0044, name = kmp_s_1325r_0044
	reaction_r_0044_kmp_s_1325r_0044=0.549;
	% Local Parameter:   id =  kms_s_0218r_0044, name = kms_s_0218r_0044
	reaction_r_0044_kms_s_0218r_0044=0.549;
	% Local Parameter:   id =  kms_s_0763_br_0044, name = kms_s_0763_br_0044
	reaction_r_0044_kms_s_0763_br_0044=0.549;
	% Local Parameter:   id =  kms_s_1096r_0044, name = kms_s_1096r_0044
	reaction_r_0044_kms_s_1096r_0044=0.549;

	reaction_r_0044=compartment_intracellular*function_18(reaction_r_0044_Keq_r_0044, reaction_r_0044_Vmax_r_0044, compartment_intracellular, reaction_r_0044_kmp_s_1091r_0044, reaction_r_0044_kmp_s_1325r_0044, reaction_r_0044_kms_s_0218r_0044, reaction_r_0044_kms_s_0763_br_0044, reaction_r_0044_kms_s_1096r_0044, x(51), const_species_s_0763_b, x(230), x(231), x(259));

% Reaction: id = r_0057, name = 3-hydroxyacyl-CoA dehydrogenase (3-oxohexacosyl-CoA)	% Local Parameter:   id =  Keq_r_0057, name = Keq_r_0057
	reaction_r_0057_Keq_r_0057=34.7263;
	% Local Parameter:   id =  Vmax_r_0057, name = Vmax_r_0057
	reaction_r_0057_Vmax_r_0057=3.30332;
	% Local Parameter:   id =  kmp_s_0046r_0057, name = kmp_s_0046r_0057
	reaction_r_0057_kmp_s_0046r_0057=0.549;
	% Local Parameter:   id =  kmp_s_1082r_0057, name = kmp_s_1082r_0057
	reaction_r_0057_kmp_s_1082r_0057=1.50326;
	% Local Parameter:   id =  kms_s_0247r_0057, name = kms_s_0247r_0057
	reaction_r_0057_kms_s_0247r_0057=0.549;
	% Local Parameter:   id =  kms_s_0763_br_0057, name = kms_s_0763_br_0057
	reaction_r_0057_kms_s_0763_br_0057=0.549;
	% Local Parameter:   id =  kms_s_1087r_0057, name = kms_s_1087r_0057
	reaction_r_0057_kms_s_1087r_0057=0.0867353;

	reaction_r_0057=compartment_intracellular*function_19(reaction_r_0057_Keq_r_0057, reaction_r_0057_Vmax_r_0057, compartment_intracellular, reaction_r_0057_kmp_s_0046r_0057, reaction_r_0057_kmp_s_1082r_0057, reaction_r_0057_kms_s_0247r_0057, reaction_r_0057_kms_s_0763_br_0057, reaction_r_0057_kms_s_1087r_0057, x(14), x(55), const_species_s_0763_b, x(228), x(229));

% Reaction: id = r_0058, name = 3-hydroxyacyl-CoA dehydrogenase (3-oxohexadecanoyl-CoA)	% Local Parameter:   id =  Keq_r_0058, name = Keq_r_0058
	reaction_r_0058_Keq_r_0058=34.7263;
	% Local Parameter:   id =  Vmax_r_0058, name = Vmax_r_0058
	reaction_r_0058_Vmax_r_0058=3.30332;
	% Local Parameter:   id =  kmp_s_0052r_0058, name = kmp_s_0052r_0058
	reaction_r_0058_kmp_s_0052r_0058=0.549;
	% Local Parameter:   id =  kmp_s_1082r_0058, name = kmp_s_1082r_0058
	reaction_r_0058_kmp_s_1082r_0058=1.50326;
	% Local Parameter:   id =  kms_s_0257r_0058, name = kms_s_0257r_0058
	reaction_r_0058_kms_s_0257r_0058=0.549;
	% Local Parameter:   id =  kms_s_0763_br_0058, name = kms_s_0763_br_0058
	reaction_r_0058_kms_s_0763_br_0058=0.549;
	% Local Parameter:   id =  kms_s_1087r_0058, name = kms_s_1087r_0058
	reaction_r_0058_kms_s_1087r_0058=0.0867353;

	reaction_r_0058=compartment_intracellular*function_20(reaction_r_0058_Keq_r_0058, reaction_r_0058_Vmax_r_0058, compartment_intracellular, reaction_r_0058_kmp_s_0052r_0058, reaction_r_0058_kmp_s_1082r_0058, reaction_r_0058_kms_s_0257r_0058, reaction_r_0058_kms_s_0763_br_0058, reaction_r_0058_kms_s_1087r_0058, x(15), x(57), const_species_s_0763_b, x(228), x(229));

% Reaction: id = r_0059, name = 3-hydroxyacyl-CoA dehydrogenase (3-oxooctadecanoyl-CoA)	% Local Parameter:   id =  Keq_r_0059, name = Keq_r_0059
	reaction_r_0059_Keq_r_0059=34.7263;
	% Local Parameter:   id =  Vmax_r_0059, name = Vmax_r_0059
	reaction_r_0059_Vmax_r_0059=3.30332;
	% Local Parameter:   id =  kmp_s_0234r_0059, name = kmp_s_0234r_0059
	reaction_r_0059_kmp_s_0234r_0059=0.549;
	% Local Parameter:   id =  kmp_s_1082r_0059, name = kmp_s_1082r_0059
	reaction_r_0059_kmp_s_1082r_0059=1.50326;
	% Local Parameter:   id =  kms_s_0254r_0059, name = kms_s_0254r_0059
	reaction_r_0059_kms_s_0254r_0059=0.549;
	% Local Parameter:   id =  kms_s_0763_br_0059, name = kms_s_0763_br_0059
	reaction_r_0059_kms_s_0763_br_0059=0.549;
	% Local Parameter:   id =  kms_s_1087r_0059, name = kms_s_1087r_0059
	reaction_r_0059_kms_s_1087r_0059=0.0867353;

	reaction_r_0059=compartment_intracellular*function_21(reaction_r_0059_Keq_r_0059, reaction_r_0059_Vmax_r_0059, compartment_intracellular, reaction_r_0059_kmp_s_0234r_0059, reaction_r_0059_kmp_s_1082r_0059, reaction_r_0059_kms_s_0254r_0059, reaction_r_0059_kms_s_0763_br_0059, reaction_r_0059_kms_s_1087r_0059, x(53), x(56), const_species_s_0763_b, x(228), x(229));

% Reaction: id = r_0060, name = 3-hydroxyacyl-CoA dehydrogenase (3-oxotetradecanoyl-CoA)	% Local Parameter:   id =  Keq_r_0060, name = Keq_r_0060
	reaction_r_0060_Keq_r_0060=34.7263;
	% Local Parameter:   id =  Vmax_r_0060, name = Vmax_r_0060
	reaction_r_0060_Vmax_r_0060=3.30332;
	% Local Parameter:   id =  kmp_s_0055r_0060, name = kmp_s_0055r_0060
	reaction_r_0060_kmp_s_0055r_0060=0.549;
	% Local Parameter:   id =  kmp_s_1082r_0060, name = kmp_s_1082r_0060
	reaction_r_0060_kmp_s_1082r_0060=1.50326;
	% Local Parameter:   id =  kms_s_0261r_0060, name = kms_s_0261r_0060
	reaction_r_0060_kms_s_0261r_0060=0.549;
	% Local Parameter:   id =  kms_s_0763_br_0060, name = kms_s_0763_br_0060
	reaction_r_0060_kms_s_0763_br_0060=0.549;
	% Local Parameter:   id =  kms_s_1087r_0060, name = kms_s_1087r_0060
	reaction_r_0060_kms_s_1087r_0060=0.0867353;

	reaction_r_0060=compartment_intracellular*function_22(reaction_r_0060_Keq_r_0060, reaction_r_0060_Vmax_r_0060, compartment_intracellular, reaction_r_0060_kmp_s_0055r_0060, reaction_r_0060_kmp_s_1082r_0060, reaction_r_0060_kms_s_0261r_0060, reaction_r_0060_kms_s_0763_br_0060, reaction_r_0060_kms_s_1087r_0060, x(16), x(58), const_species_s_0763_b, x(228), x(229));

% Reaction: id = r_0063, name = 3-isopropylmalate dehydratase	% Local Parameter:   id =  Keq_r_0063, name = Keq_r_0063
	reaction_r_0063_Keq_r_0063=2.00364;
	% Local Parameter:   id =  Vmax_r_0063, name = Vmax_r_0063
	reaction_r_0063_Vmax_r_0063=0.764505;
	% Local Parameter:   id =  kmp_s_0008r_0063, name = kmp_s_0008r_0063
	reaction_r_0063_kmp_s_0008r_0063=0.549;
	% Local Parameter:   id =  kms_s_0170r_0063, name = kms_s_0170r_0063
	reaction_r_0063_kms_s_0170r_0063=0.549;
	% Local Parameter:   id =  kms_s_1434_br_0063, name = kms_s_1434_br_0063
	reaction_r_0063_kms_s_1434_br_0063=0.549;

	reaction_r_0063=compartment_intracellular*function_23(reaction_r_0063_Keq_r_0063, reaction_r_0063_Vmax_r_0063, compartment_intracellular, reaction_r_0063_kmp_s_0008r_0063, reaction_r_0063_kms_s_0170r_0063, reaction_r_0063_kms_s_1434_br_0063, x(3), x(38), const_species_s_1434_b);

% Reaction: id = r_0064, name = 3-isopropylmalate dehydrogenase	% Local Parameter:   id =  Keq_r_0064, name = Keq_r_0064
	reaction_r_0064_Keq_r_0064=0.0348439;
	% Local Parameter:   id =  Vmax_r_0064, name = Vmax_r_0064
	reaction_r_0064_Vmax_r_0064=1.68189;
	% Local Parameter:   id =  kmp_s_0010r_0064, name = kmp_s_0010r_0064
	reaction_r_0064_kmp_s_0010r_0064=0.549;
	% Local Parameter:   id =  kmp_s_0763_br_0064, name = kmp_s_0763_br_0064
	reaction_r_0064_kmp_s_0763_br_0064=0.549;
	% Local Parameter:   id =  kmp_s_1087r_0064, name = kmp_s_1087r_0064
	reaction_r_0064_kmp_s_1087r_0064=0.0867353;
	% Local Parameter:   id =  kms_s_0008r_0064, name = kms_s_0008r_0064
	reaction_r_0064_kms_s_0008r_0064=0.549;
	% Local Parameter:   id =  kms_s_1082r_0064, name = kms_s_1082r_0064
	reaction_r_0064_kms_s_1082r_0064=1.50326;

	reaction_r_0064=compartment_intracellular*function_24(reaction_r_0064_Keq_r_0064, reaction_r_0064_Vmax_r_0064, compartment_intracellular, reaction_r_0064_kmp_s_0010r_0064, reaction_r_0064_kmp_s_0763_br_0064, reaction_r_0064_kmp_s_1087r_0064, reaction_r_0064_kms_s_0008r_0064, reaction_r_0064_kms_s_1082r_0064, x(3), x(5), const_species_s_0763_b, x(228), x(229));

% Reaction: id = r_0068, name = 3-phosphoshikimate 1-carboxyvinyltransferase	% Local Parameter:   id =  Keq_r_0068, name = Keq_r_0068
	reaction_r_0068_Keq_r_0068=22.2765;
	% Local Parameter:   id =  Vmax_r_0068, name = Vmax_r_0068
	reaction_r_0068_Vmax_r_0068=1.0241;
	% Local Parameter:   id =  kmp_s_0330r_0068, name = kmp_s_0330r_0068
	reaction_r_0068_kmp_s_0330r_0068=0.549;
	% Local Parameter:   id =  kmp_s_1207r_0068, name = kmp_s_1207r_0068
	reaction_r_0068_kmp_s_1207r_0068=0.549;
	% Local Parameter:   id =  kms_s_0267r_0068, name = kms_s_0267r_0068
	reaction_r_0068_kms_s_0267r_0068=0.549;
	% Local Parameter:   id =  kms_s_1243r_0068, name = kms_s_1243r_0068
	reaction_r_0068_kms_s_1243r_0068=0.0271093;

	reaction_r_0068=compartment_intracellular*function_25(reaction_r_0068_Keq_r_0068, reaction_r_0068_Vmax_r_0068, compartment_intracellular, reaction_r_0068_kmp_s_0330r_0068, reaction_r_0068_kmp_s_1207r_0068, reaction_r_0068_kms_s_0267r_0068, reaction_r_0068_kms_s_1243r_0068, x(61), x(79), const_species_s_1207, x(249));

% Reaction: id = r_0093, name = 5,10-methylenetetrahydrofolatereductase (NADPH)	% Local Parameter:   id =  Keq_r_0093, name = Keq_r_0093
	reaction_r_0093_Keq_r_0093=3.64962;
	% Local Parameter:   id =  Vmax_r_0093, name = Vmax_r_0093
	reaction_r_0093_Vmax_r_0093=0.439232;
	% Local Parameter:   id =  kmp_s_0328r_0093, name = kmp_s_0328r_0093
	reaction_r_0093_kmp_s_0328r_0093=0.549;
	% Local Parameter:   id =  kmp_s_1091r_0093, name = kmp_s_1091r_0093
	reaction_r_0093_kmp_s_1091r_0093=0.549;
	% Local Parameter:   id =  kms_s_0307r_0093, name = kms_s_0307r_0093
	reaction_r_0093_kms_s_0307r_0093=0.549;
	% Local Parameter:   id =  kms_s_0763_br_0093, name = kms_s_0763_br_0093
	reaction_r_0093_kms_s_0763_br_0093=0.549;
	% Local Parameter:   id =  kms_s_1096r_0093, name = kms_s_1096r_0093
	reaction_r_0093_kms_s_1096r_0093=0.549;

	reaction_r_0093=compartment_intracellular*function_26(reaction_r_0093_Keq_r_0093, reaction_r_0093_Vmax_r_0093, compartment_intracellular, reaction_r_0093_kmp_s_0328r_0093, reaction_r_0093_kmp_s_1091r_0093, reaction_r_0093_kms_s_0307r_0093, reaction_r_0093_kms_s_0763_br_0093, reaction_r_0093_kms_s_1096r_0093, x(69), x(78), const_species_s_0763_b, x(230), x(231));

% Reaction: id = r_0111, name = acetohydroxy acid isomeroreductase	% Local Parameter:   id =  Keq_r_0111, name = Keq_r_0111
	reaction_r_0111_Keq_r_0111=2.00364;
	% Local Parameter:   id =  Vmax_r_0111, name = Vmax_r_0111
	reaction_r_0111_Vmax_r_0111=3.41221;
	% Local Parameter:   id =  kmp_s_0018r_0111, name = kmp_s_0018r_0111
	reaction_r_0111_kmp_s_0018r_0111=0.549;
	% Local Parameter:   id =  kmp_s_1091r_0111, name = kmp_s_1091r_0111
	reaction_r_0111_kmp_s_1091r_0111=0.549;
	% Local Parameter:   id =  kms_s_0150r_0111, name = kms_s_0150r_0111
	reaction_r_0111_kms_s_0150r_0111=0.549;
	% Local Parameter:   id =  kms_s_0763_br_0111, name = kms_s_0763_br_0111
	reaction_r_0111_kms_s_0763_br_0111=0.549;
	% Local Parameter:   id =  kms_s_1096r_0111, name = kms_s_1096r_0111
	reaction_r_0111_kms_s_1096r_0111=0.549;

	reaction_r_0111=compartment_intracellular*function_27(reaction_r_0111_Keq_r_0111, reaction_r_0111_Vmax_r_0111, compartment_intracellular, reaction_r_0111_kmp_s_0018r_0111, reaction_r_0111_kmp_s_1091r_0111, reaction_r_0111_kms_s_0150r_0111, reaction_r_0111_kms_s_0763_br_0111, reaction_r_0111_kms_s_1096r_0111, x(8), x(34), const_species_s_0763_b, x(230), x(231));

% Reaction: id = r_0112, name = acetolactate synthase	% Local Parameter:   id =  Keq_r_0112, name = Keq_r_0112
	reaction_r_0112_Keq_r_0112=299.629;
	% Local Parameter:   id =  Vmax_r_0112, name = Vmax_r_0112
	reaction_r_0112_Vmax_r_0112=2.1714;
	% Local Parameter:   id =  kmp_s_0150r_0112, name = kmp_s_0150r_0112
	reaction_r_0112_kmp_s_0150r_0112=0.549;
	% Local Parameter:   id =  kmp_s_0470r_0112, name = kmp_s_0470r_0112
	reaction_r_0112_kmp_s_0470r_0112=1.0;
	% Local Parameter:   id =  kms_s_0763_br_0112, name = kms_s_0763_br_0112
	reaction_r_0112_kms_s_0763_br_0112=0.549;
	% Local Parameter:   id =  kms_s_1277r_0112, name = kms_s_1277r_0112
	reaction_r_0112_kms_s_1277r_0112=0.0605905;

	reaction_r_0112=compartment_intracellular*function_28(reaction_r_0112_Keq_r_0112, reaction_r_0112_Vmax_r_0112, compartment_intracellular, reaction_r_0112_kmp_s_0150r_0112, reaction_r_0112_kmp_s_0470r_0112, reaction_r_0112_kms_s_0763_br_0112, reaction_r_0112_kms_s_1277r_0112, x(34), x(107), const_species_s_0763_b, x(252));

% Reaction: id = r_0118, name = acetyl-CoA C-acetyltransferase	% Local Parameter:   id =  Keq_r_0118, name = Keq_r_0118
	reaction_r_0118_Keq_r_0118=1.1;
	% Local Parameter:   id =  Vmax_r_0118, name = Vmax_r_0118
	reaction_r_0118_Vmax_r_0118=0.125399;
	% Local Parameter:   id =  kmp_s_0374r_0118, name = kmp_s_0374r_0118
	reaction_r_0118_kmp_s_0374r_0118=0.549;
	% Local Parameter:   id =  kmp_s_0514r_0118, name = kmp_s_0514r_0118
	reaction_r_0118_kmp_s_0514r_0118=0.549;
	% Local Parameter:   id =  kms_s_0380r_0118, name = kms_s_0380r_0118
	reaction_r_0118_kms_s_0380r_0118=0.549;

	reaction_r_0118=compartment_intracellular*function_29(reaction_r_0118_Keq_r_0118, reaction_r_0118_Vmax_r_0118, compartment_intracellular, reaction_r_0118_kmp_s_0374r_0118, reaction_r_0118_kmp_s_0514r_0118, reaction_r_0118_kms_s_0380r_0118, x(87), x(88), x(114));

% Reaction: id = r_0123, name = acetyl-Coa carboxylase	% Local Parameter:   id =  Keq_r_0123, name = Keq_r_0123
	reaction_r_0123_Keq_r_0123=0.950614;
	% Local Parameter:   id =  Vmax_r_0123, name = Vmax_r_0123
	reaction_r_0123_Vmax_r_0123=0.105501;
	% Local Parameter:   id =  kmp_s_0400r_0123, name = kmp_s_0400r_0123
	reaction_r_0123_kmp_s_0400r_0123=1.71907;
	% Local Parameter:   id =  kmp_s_0763_br_0123, name = kmp_s_0763_br_0123
	reaction_r_0123_kmp_s_0763_br_0123=0.549;
	% Local Parameter:   id =  kmp_s_1005r_0123, name = kmp_s_1005r_0123
	reaction_r_0123_kmp_s_1005r_0123=0.549;
	% Local Parameter:   id =  kmp_s_1207r_0123, name = kmp_s_1207r_0123
	reaction_r_0123_kmp_s_1207r_0123=0.549;
	% Local Parameter:   id =  kms_s_0380r_0123, name = kms_s_0380r_0123
	reaction_r_0123_kms_s_0380r_0123=0.549;
	% Local Parameter:   id =  kms_s_0446r_0123, name = kms_s_0446r_0123
	reaction_r_0123_kms_s_0446r_0123=1.09208;
	% Local Parameter:   id =  kms_s_0458r_0123, name = kms_s_0458r_0123
	reaction_r_0123_kms_s_0458r_0123=0.549;

	reaction_r_0123=compartment_intracellular*function_30(reaction_r_0123_Keq_r_0123, reaction_r_0123_Vmax_r_0123, compartment_intracellular, reaction_r_0123_kmp_s_0400r_0123, reaction_r_0123_kmp_s_0763_br_0123, reaction_r_0123_kmp_s_1005r_0123, reaction_r_0123_kmp_s_1207r_0123, reaction_r_0123_kms_s_0380r_0123, reaction_r_0123_kms_s_0446r_0123, reaction_r_0123_kms_s_0458r_0123, x(88), x(92), x(101), x(103), const_species_s_0763_b, x(212), const_species_s_1207);

% Reaction: id = r_0125, name = acetyl-CoA hydrolase	% Local Parameter:   id =  Keq_r_0125, name = Keq_r_0125
	reaction_r_0125_Keq_r_0125=2.00364;
	% Local Parameter:   id =  Vmax_r_0125, name = Vmax_r_0125
	reaction_r_0125_Vmax_r_0125=26.9831;
	% Local Parameter:   id =  kmp_s_0380r_0125, name = kmp_s_0380r_0125
	reaction_r_0125_kmp_s_0380r_0125=0.549;
	% Local Parameter:   id =  kmp_s_1434_br_0125, name = kmp_s_1434_br_0125
	reaction_r_0125_kmp_s_1434_br_0125=0.549;
	% Local Parameter:   id =  kms_s_0369r_0125, name = kms_s_0369r_0125
	reaction_r_0125_kms_s_0369r_0125=0.549;
	% Local Parameter:   id =  kms_s_0514r_0125, name = kms_s_0514r_0125
	reaction_r_0125_kms_s_0514r_0125=0.549;
	% Local Parameter:   id =  kms_s_0763_br_0125, name = kms_s_0763_br_0125
	reaction_r_0125_kms_s_0763_br_0125=0.549;

	reaction_r_0125=compartment_intracellular*function_31(reaction_r_0125_Keq_r_0125, reaction_r_0125_Vmax_r_0125, compartment_intracellular, reaction_r_0125_kmp_s_0380r_0125, reaction_r_0125_kmp_s_1434_br_0125, reaction_r_0125_kms_s_0369r_0125, reaction_r_0125_kms_s_0514r_0125, reaction_r_0125_kms_s_0763_br_0125, x(86), x(88), x(114), const_species_s_0763_b, const_species_s_1434_b);

% Reaction: id = r_0127, name = acetyl-CoA synthetase	% Local Parameter:   id =  Keq_r_0127, name = Keq_r_0127
	reaction_r_0127_Keq_r_0127=0.953736;
	% Local Parameter:   id =  Vmax_r_0127, name = Vmax_r_0127
	reaction_r_0127_Vmax_r_0127=25.905;
	% Local Parameter:   id =  kmp_s_0369r_0127, name = kmp_s_0369r_0127
	reaction_r_0127_kmp_s_0369r_0127=0.549;
	% Local Parameter:   id =  kmp_s_0446r_0127, name = kmp_s_0446r_0127
	reaction_r_0127_kmp_s_0446r_0127=1.09208;
	% Local Parameter:   id =  kmp_s_0514r_0127, name = kmp_s_0514r_0127
	reaction_r_0127_kmp_s_0514r_0127=0.549;
	% Local Parameter:   id =  kms_s_0380r_0127, name = kms_s_0380r_0127
	reaction_r_0127_kms_s_0380r_0127=0.549;
	% Local Parameter:   id =  kms_s_0434r_0127, name = kms_s_0434r_0127
	reaction_r_0127_kms_s_0434r_0127=1.25956;
	% Local Parameter:   id =  kms_s_0605r_0127, name = kms_s_0605r_0127
	reaction_r_0127_kms_s_0605r_0127=0.549;

	reaction_r_0127=compartment_intracellular*function_32(reaction_r_0127_Keq_r_0127, reaction_r_0127_Vmax_r_0127, compartment_intracellular, reaction_r_0127_kmp_s_0369r_0127, reaction_r_0127_kmp_s_0446r_0127, reaction_r_0127_kmp_s_0514r_0127, reaction_r_0127_kms_s_0380r_0127, reaction_r_0127_kms_s_0434r_0127, reaction_r_0127_kms_s_0605r_0127, x(86), x(88), x(98), x(101), x(114), x(138));

% Reaction: id = r_0130, name = acetylglutamate kinase	% Local Parameter:   id =  Keq_r_0130, name = Keq_r_0130
	reaction_r_0130_Keq_r_0130=1.73154;
	% Local Parameter:   id =  Vmax_r_0130, name = Vmax_r_0130
	reaction_r_0130_Vmax_r_0130=0.58058;
	% Local Parameter:   id =  kmp_s_0400r_0130, name = kmp_s_0400r_0130
	reaction_r_0130_kmp_s_0400r_0130=1.71907;
	% Local Parameter:   id =  kmp_s_1070r_0130, name = kmp_s_1070r_0130
	reaction_r_0130_kmp_s_1070r_0130=0.549;
	% Local Parameter:   id =  kms_s_0446r_0130, name = kms_s_0446r_0130
	reaction_r_0130_kms_s_0446r_0130=1.09208;
	% Local Parameter:   id =  kms_s_1071r_0130, name = kms_s_1071r_0130
	reaction_r_0130_kms_s_1071r_0130=0.549;

	reaction_r_0130=compartment_intracellular*function_33(reaction_r_0130_Keq_r_0130, reaction_r_0130_Vmax_r_0130, compartment_intracellular, reaction_r_0130_kmp_s_0400r_0130, reaction_r_0130_kmp_s_1070r_0130, reaction_r_0130_kms_s_0446r_0130, reaction_r_0130_kms_s_1071r_0130, x(92), x(101), x(224), x(225));

% Reaction: id = r_0133, name = acteylornithine transaminase	% Local Parameter:   id =  Keq_r_0133, name = Keq_r_0133
	reaction_r_0133_Keq_r_0133=1.1;
	% Local Parameter:   id =  Vmax_r_0133, name = Vmax_r_0133
	reaction_r_0133_Vmax_r_0133=0.58058;
	% Local Parameter:   id =  kmp_s_0185r_0133, name = kmp_s_0185r_0133
	reaction_r_0133_kmp_s_0185r_0133=0.549;
	% Local Parameter:   id =  kmp_s_1051r_0133, name = kmp_s_1051r_0133
	reaction_r_0133_kmp_s_1051r_0133=0.549;
	% Local Parameter:   id =  kms_s_0149r_0133, name = kms_s_0149r_0133
	reaction_r_0133_kms_s_0149r_0133=0.549;
	% Local Parameter:   id =  kms_s_0899r_0133, name = kms_s_0899r_0133
	reaction_r_0133_kms_s_0899r_0133=0.549;

	reaction_r_0133=compartment_intracellular*function_34(reaction_r_0133_Keq_r_0133, reaction_r_0133_Vmax_r_0133, compartment_intracellular, reaction_r_0133_kmp_s_0185r_0133, reaction_r_0133_kmp_s_1051r_0133, reaction_r_0133_kms_s_0149r_0133, reaction_r_0133_kms_s_0899r_0133, x(33), x(42), x(188), x(219));

% Reaction: id = r_0157, name = adenosine kinase	% Local Parameter:   id =  Keq_r_0157, name = Keq_r_0157
	reaction_r_0157_Keq_r_0157=2.18098;
	% Local Parameter:   id =  Vmax_r_0157, name = Vmax_r_0157
	reaction_r_0157_Vmax_r_0157=0.103455;
	% Local Parameter:   id =  kmp_s_0400r_0157, name = kmp_s_0400r_0157
	reaction_r_0157_kmp_s_0400r_0157=1.71907;
	% Local Parameter:   id =  kmp_s_0434r_0157, name = kmp_s_0434r_0157
	reaction_r_0157_kmp_s_0434r_0157=1.25956;
	% Local Parameter:   id =  kmp_s_0763_br_0157, name = kmp_s_0763_br_0157
	reaction_r_0157_kmp_s_0763_br_0157=0.549;
	% Local Parameter:   id =  kms_s_0393r_0157, name = kms_s_0393r_0157
	reaction_r_0157_kms_s_0393r_0157=0.549;
	% Local Parameter:   id =  kms_s_0446r_0157, name = kms_s_0446r_0157
	reaction_r_0157_kms_s_0446r_0157=1.09208;

	reaction_r_0157=compartment_intracellular*function_35(reaction_r_0157_Keq_r_0157, reaction_r_0157_Vmax_r_0157, compartment_intracellular, reaction_r_0157_kmp_s_0400r_0157, reaction_r_0157_kmp_s_0434r_0157, reaction_r_0157_kmp_s_0763_br_0157, reaction_r_0157_kms_s_0393r_0157, reaction_r_0157_kms_s_0446r_0157, x(90), x(92), x(98), x(101), const_species_s_0763_b);

% Reaction: id = r_0159, name = adenosylhomocysteinase	% Local Parameter:   id =  Keq_r_0159, name = Keq_r_0159
	reaction_r_0159_Keq_r_0159=1.1;
	% Local Parameter:   id =  Vmax_r_0159, name = Vmax_r_0159
	reaction_r_0159_Vmax_r_0159=0.065835;
	% Local Parameter:   id =  kmp_s_0393r_0159, name = kmp_s_0393r_0159
	reaction_r_0159_kmp_s_0393r_0159=0.549;
	% Local Parameter:   id =  kmp_s_0917r_0159, name = kmp_s_0917r_0159
	reaction_r_0159_kmp_s_0917r_0159=0.549;
	% Local Parameter:   id =  kms_s_1290r_0159, name = kms_s_1290r_0159
	reaction_r_0159_kms_s_1290r_0159=0.549;
	% Local Parameter:   id =  kms_s_1434_br_0159, name = kms_s_1434_br_0159
	reaction_r_0159_kms_s_1434_br_0159=0.549;

	reaction_r_0159=compartment_intracellular*function_36(reaction_r_0159_Keq_r_0159, reaction_r_0159_Vmax_r_0159, compartment_intracellular, reaction_r_0159_kmp_s_0393r_0159, reaction_r_0159_kmp_s_0917r_0159, reaction_r_0159_kms_s_1290r_0159, reaction_r_0159_kms_s_1434_br_0159, x(90), x(194), x(254), const_species_s_1434_b);

% Reaction: id = r_0163, name = adenylate kinase	% Local Parameter:   id =  Keq_r_0163, name = Keq_r_0163
	reaction_r_0163_Keq_r_0163=0.512011;
	% Local Parameter:   id =  Vmax_r_0163, name = Vmax_r_0163
	reaction_r_0163_Vmax_r_0163=2.28799;
	% Local Parameter:   id =  kmp_s_0434r_0163, name = kmp_s_0434r_0163
	reaction_r_0163_kmp_s_0434r_0163=1.25956;
	% Local Parameter:   id =  kmp_s_0446r_0163, name = kmp_s_0446r_0163
	reaction_r_0163_kmp_s_0446r_0163=1.09208;
	% Local Parameter:   id =  kms_s_0400r_0163, name = kms_s_0400r_0163
	reaction_r_0163_kms_s_0400r_0163=1.71907;

	reaction_r_0163=compartment_intracellular*function_37(reaction_r_0163_Keq_r_0163, reaction_r_0163_Vmax_r_0163, compartment_intracellular, reaction_r_0163_kmp_s_0434r_0163, reaction_r_0163_kmp_s_0446r_0163, reaction_r_0163_kms_s_0400r_0163, x(92), x(98), x(101));

% Reaction: id = r_0165, name = adenylate kinase (GTP)	% Local Parameter:   id =  Keq_r_0165, name = Keq_r_0165
	reaction_r_0165_Keq_r_0165=0.805968;
	% Local Parameter:   id =  Vmax_r_0165, name = Vmax_r_0165
	reaction_r_0165_Vmax_r_0165=4.0656;
	% Local Parameter:   id =  kmp_s_0434r_0165, name = kmp_s_0434r_0165
	reaction_r_0165_kmp_s_0434r_0165=1.25956;
	% Local Parameter:   id =  kmp_s_0755r_0165, name = kmp_s_0755r_0165
	reaction_r_0165_kmp_s_0755r_0165=0.549;
	% Local Parameter:   id =  kms_s_0400r_0165, name = kms_s_0400r_0165
	reaction_r_0165_kms_s_0400r_0165=1.71907;
	% Local Parameter:   id =  kms_s_0706r_0165, name = kms_s_0706r_0165
	reaction_r_0165_kms_s_0706r_0165=0.549;

	reaction_r_0165=compartment_intracellular*function_38(reaction_r_0165_Keq_r_0165, reaction_r_0165_Vmax_r_0165, compartment_intracellular, reaction_r_0165_kmp_s_0434r_0165, reaction_r_0165_kmp_s_0755r_0165, reaction_r_0165_kms_s_0400r_0165, reaction_r_0165_kms_s_0706r_0165, x(92), x(98), x(155), x(166));

% Reaction: id = r_0169, name = adenylosuccinate lyase	% Local Parameter:   id =  Keq_r_0169, name = Keq_r_0169
	reaction_r_0169_Keq_r_0169=0.6039;
	% Local Parameter:   id =  Vmax_r_0169, name = Vmax_r_0169
	reaction_r_0169_Vmax_r_0169=0.333848;
	% Local Parameter:   id =  kmp_s_0317r_0169, name = kmp_s_0317r_0169
	reaction_r_0169_kmp_s_0317r_0169=0.549;
	% Local Parameter:   id =  kmp_s_0692r_0169, name = kmp_s_0692r_0169
	reaction_r_0169_kmp_s_0692r_0169=0.549;
	% Local Parameter:   id =  kms_s_0009r_0169, name = kms_s_0009r_0169
	reaction_r_0169_kms_s_0009r_0169=0.549;

	reaction_r_0169=compartment_intracellular*function_39(reaction_r_0169_Keq_r_0169, reaction_r_0169_Vmax_r_0169, compartment_intracellular, reaction_r_0169_kmp_s_0317r_0169, reaction_r_0169_kmp_s_0692r_0169, reaction_r_0169_kms_s_0009r_0169, x(4), x(73), x(154));

% Reaction: id = r_0170, name = adenylosuccinate synthase	% Local Parameter:   id =  Keq_r_0170, name = Keq_r_0170
	reaction_r_0170_Keq_r_0170=0.331541;
	% Local Parameter:   id =  Vmax_r_0170, name = Vmax_r_0170
	reaction_r_0170_Vmax_r_0170=1.8216;
	% Local Parameter:   id =  kmp_s_0706r_0170, name = kmp_s_0706r_0170
	reaction_r_0170_kmp_s_0706r_0170=0.549;
	% Local Parameter:   id =  kmp_s_0763_br_0170, name = kmp_s_0763_br_0170
	reaction_r_0170_kmp_s_0763_br_0170=0.549;
	% Local Parameter:   id =  kmp_s_1053r_0170, name = kmp_s_1053r_0170
	reaction_r_0170_kmp_s_1053r_0170=0.549;
	% Local Parameter:   id =  kmp_s_1207r_0170, name = kmp_s_1207r_0170
	reaction_r_0170_kmp_s_1207r_0170=0.549;
	% Local Parameter:   id =  kms_s_0755r_0170, name = kms_s_0755r_0170
	reaction_r_0170_kms_s_0755r_0170=0.549;
	% Local Parameter:   id =  kms_s_0816r_0170, name = kms_s_0816r_0170
	reaction_r_0170_kms_s_0816r_0170=0.549;
	% Local Parameter:   id =  kms_s_0881r_0170, name = kms_s_0881r_0170
	reaction_r_0170_kms_s_0881r_0170=0.549;

	reaction_r_0170=compartment_intracellular*function_40(reaction_r_0170_Keq_r_0170, reaction_r_0170_Vmax_r_0170, compartment_intracellular, reaction_r_0170_kmp_s_0706r_0170, reaction_r_0170_kmp_s_0763_br_0170, reaction_r_0170_kmp_s_1053r_0170, reaction_r_0170_kmp_s_1207r_0170, reaction_r_0170_kms_s_0755r_0170, reaction_r_0170_kms_s_0816r_0170, reaction_r_0170_kms_s_0881r_0170, x(155), x(166), const_species_s_0763_b, x(171), x(182), x(221), const_species_s_1207);

% Reaction: id = r_0171, name = adenylsuccinate lyase	% Local Parameter:   id =  Keq_r_0171, name = Keq_r_0171
	reaction_r_0171_Keq_r_0171=1.38552;
	% Local Parameter:   id =  Vmax_r_0171, name = Vmax_r_0171
	reaction_r_0171_Vmax_r_0171=0.395998;
	% Local Parameter:   id =  kmp_s_0434r_0171, name = kmp_s_0434r_0171
	reaction_r_0171_kmp_s_0434r_0171=1.25956;
	% Local Parameter:   id =  kmp_s_0692r_0171, name = kmp_s_0692r_0171
	reaction_r_0171_kmp_s_0692r_0171=0.549;
	% Local Parameter:   id =  kms_s_1053r_0171, name = kms_s_1053r_0171
	reaction_r_0171_kms_s_1053r_0171=0.549;

	reaction_r_0171=compartment_intracellular*function_41(reaction_r_0171_Keq_r_0171, reaction_r_0171_Vmax_r_0171, compartment_intracellular, reaction_r_0171_kmp_s_0434r_0171, reaction_r_0171_kmp_s_0692r_0171, reaction_r_0171_kms_s_1053r_0171, x(98), x(154), x(221));

% Reaction: id = r_0172, name = adenylyl-sulfate kinase	% Local Parameter:   id =  Keq_r_0172, name = Keq_r_0172
	reaction_r_0172_Keq_r_0172=0.950614;
	% Local Parameter:   id =  Vmax_r_0172, name = Vmax_r_0172
	reaction_r_0172_Vmax_r_0172=0.624358;
	% Local Parameter:   id =  kmp_s_0206r_0172, name = kmp_s_0206r_0172
	reaction_r_0172_kmp_s_0206r_0172=0.549;
	% Local Parameter:   id =  kmp_s_0400r_0172, name = kmp_s_0400r_0172
	reaction_r_0172_kmp_s_0400r_0172=1.71907;
	% Local Parameter:   id =  kmp_s_0763_br_0172, name = kmp_s_0763_br_0172
	reaction_r_0172_kmp_s_0763_br_0172=0.549;
	% Local Parameter:   id =  kms_s_0304r_0172, name = kms_s_0304r_0172
	reaction_r_0172_kms_s_0304r_0172=0.549;
	% Local Parameter:   id =  kms_s_0446r_0172, name = kms_s_0446r_0172
	reaction_r_0172_kms_s_0446r_0172=1.09208;

	reaction_r_0172=compartment_intracellular*function_42(reaction_r_0172_Keq_r_0172, reaction_r_0172_Vmax_r_0172, compartment_intracellular, reaction_r_0172_kmp_s_0206r_0172, reaction_r_0172_kmp_s_0400r_0172, reaction_r_0172_kmp_s_0763_br_0172, reaction_r_0172_kms_s_0304r_0172, reaction_r_0172_kms_s_0446r_0172, x(45), x(67), x(92), x(101), const_species_s_0763_b);

% Reaction: id = r_0174, name = alanine glyoxylate aminotransferase	% Local Parameter:   id =  Keq_r_0174, name = Keq_r_0174
	reaction_r_0174_Keq_r_0174=0.121402;
	% Local Parameter:   id =  Vmax_r_0174, name = Vmax_r_0174
	reaction_r_0174_Vmax_r_0174=1.7171;
	% Local Parameter:   id =  kmp_s_0740r_0174, name = kmp_s_0740r_0174
	reaction_r_0174_kmp_s_0740r_0174=0.549;
	% Local Parameter:   id =  kmp_s_1277r_0174, name = kmp_s_1277r_0174
	reaction_r_0174_kmp_s_1277r_0174=0.0605905;
	% Local Parameter:   id =  kms_s_0749r_0174, name = kms_s_0749r_0174
	reaction_r_0174_kms_s_0749r_0174=0.549;
	% Local Parameter:   id =  kms_s_0863r_0174, name = kms_s_0863r_0174
	reaction_r_0174_kms_s_0863r_0174=0.549;

	reaction_r_0174=compartment_intracellular*function_43(reaction_r_0174_Keq_r_0174, reaction_r_0174_Vmax_r_0174, compartment_intracellular, reaction_r_0174_kmp_s_0740r_0174, reaction_r_0174_kmp_s_1277r_0174, reaction_r_0174_kms_s_0749r_0174, reaction_r_0174_kms_s_0863r_0174, x(162), x(164), x(178), x(252));

% Reaction: id = r_0183, name = alcohol dehydrogenase, reverse rxn (acetaldehyde -> ethanol)	% Local Parameter:   id =  Keq_r_0183, name = Keq_r_0183
	reaction_r_0183_Keq_r_0183=14456.7;
	% Local Parameter:   id =  Vmax_r_0183, name = Vmax_r_0183
	reaction_r_0183_Vmax_r_0183=99.1;
	% Local Parameter:   id =  kmp_s_0650r_0183, name = kmp_s_0650r_0183
	reaction_r_0183_kmp_s_0650r_0183=50.0;
	% Local Parameter:   id =  kmp_s_1082r_0183, name = kmp_s_1082r_0183
	reaction_r_0183_kmp_s_1082r_0183=1.50326;
	% Local Parameter:   id =  kms_s_0366r_0183, name = kms_s_0366r_0183
	reaction_r_0183_kms_s_0366r_0183=0.120104;
	% Local Parameter:   id =  kms_s_0763_br_0183, name = kms_s_0763_br_0183
	reaction_r_0183_kms_s_0763_br_0183=0.549;
	% Local Parameter:   id =  kms_s_1087r_0183, name = kms_s_1087r_0183
	reaction_r_0183_kms_s_1087r_0183=0.0867353;

	reaction_r_0183=compartment_intracellular*function_44(reaction_r_0183_Keq_r_0183, reaction_r_0183_Vmax_r_0183, compartment_intracellular, reaction_r_0183_kmp_s_0650r_0183, reaction_r_0183_kmp_s_1082r_0183, reaction_r_0183_kms_s_0366r_0183, reaction_r_0183_kms_s_0763_br_0183, reaction_r_0183_kms_s_1087r_0183, x(85), x(148), const_species_s_0763_b, x(228), x(229));

% Reaction: id = r_0191, name = aldehyde dehydrogenase (acetaldehyde, NADP)	% Local Parameter:   id =  Keq_r_0191, name = Keq_r_0191
	reaction_r_0191_Keq_r_0191=2.76045;
	% Local Parameter:   id =  Vmax_r_0191, name = Vmax_r_0191
	reaction_r_0191_Vmax_r_0191=9.45451;
	% Local Parameter:   id =  kmp_s_0369r_0191, name = kmp_s_0369r_0191
	reaction_r_0191_kmp_s_0369r_0191=0.549;
	% Local Parameter:   id =  kmp_s_0763_br_0191, name = kmp_s_0763_br_0191
	reaction_r_0191_kmp_s_0763_br_0191=0.549;
	% Local Parameter:   id =  kmp_s_1096r_0191, name = kmp_s_1096r_0191
	reaction_r_0191_kmp_s_1096r_0191=0.549;
	% Local Parameter:   id =  kms_s_0366r_0191, name = kms_s_0366r_0191
	reaction_r_0191_kms_s_0366r_0191=0.120104;
	% Local Parameter:   id =  kms_s_1091r_0191, name = kms_s_1091r_0191
	reaction_r_0191_kms_s_1091r_0191=0.549;
	% Local Parameter:   id =  kms_s_1434_br_0191, name = kms_s_1434_br_0191
	reaction_r_0191_kms_s_1434_br_0191=0.549;

	reaction_r_0191=compartment_intracellular*function_45(reaction_r_0191_Keq_r_0191, reaction_r_0191_Vmax_r_0191, compartment_intracellular, reaction_r_0191_kmp_s_0369r_0191, reaction_r_0191_kmp_s_0763_br_0191, reaction_r_0191_kmp_s_1096r_0191, reaction_r_0191_kms_s_0366r_0191, reaction_r_0191_kms_s_1091r_0191, reaction_r_0191_kms_s_1434_br_0191, x(85), x(86), const_species_s_0763_b, x(230), x(231), const_species_s_1434_b);

% Reaction: id = r_0213, name = alpha,alpha-trehalose-phosphate synthase (UDP-forming)	% Local Parameter:   id =  Keq_r_0213, name = Keq_r_0213
	reaction_r_0213_Keq_r_0213=0.6039;
	% Local Parameter:   id =  Vmax_r_0213, name = Vmax_r_0213
	reaction_r_0213_Vmax_r_0213=0.157299;
	% Local Parameter:   id =  kmp_s_0419r_0213, name = kmp_s_0419r_0213
	reaction_r_0213_kmp_s_0419r_0213=0.549;
	% Local Parameter:   id =  kmp_s_0763_br_0213, name = kmp_s_0763_br_0213
	reaction_r_0213_kmp_s_0763_br_0213=0.549;
	% Local Parameter:   id =  kmp_s_1411r_0213, name = kmp_s_1411r_0213
	reaction_r_0213_kmp_s_1411r_0213=0.549;
	% Local Parameter:   id =  kms_s_0410r_0213, name = kms_s_0410r_0213
	reaction_r_0213_kms_s_0410r_0213=0.549;
	% Local Parameter:   id =  kms_s_1415r_0213, name = kms_s_1415r_0213
	reaction_r_0213_kms_s_1415r_0213=0.549;

	reaction_r_0213=compartment_intracellular*function_46(reaction_r_0213_Keq_r_0213, reaction_r_0213_Vmax_r_0213, compartment_intracellular, reaction_r_0213_kmp_s_0419r_0213, reaction_r_0213_kmp_s_0763_br_0213, reaction_r_0213_kmp_s_1411r_0213, reaction_r_0213_kms_s_0410r_0213, reaction_r_0213_kms_s_1415r_0213, x(93), x(95), const_species_s_0763_b, x(269), x(270));

% Reaction: id = r_0220, name = anthranilate phosphoribosyltransferase	% Local Parameter:   id =  Keq_r_0220, name = Keq_r_0220
	reaction_r_0220_Keq_r_0220=1.1;
	% Local Parameter:   id =  Vmax_r_0220, name = Vmax_r_0220
	reaction_r_0220_Vmax_r_0220=0.11935;
	% Local Parameter:   id =  kmp_s_0605r_0220, name = kmp_s_0605r_0220
	reaction_r_0220_kmp_s_0605r_0220=0.549;
	% Local Parameter:   id =  kmp_s_1066r_0220, name = kmp_s_1066r_0220
	reaction_r_0220_kmp_s_1066r_0220=0.549;
	% Local Parameter:   id =  kms_s_0331r_0220, name = kms_s_0331r_0220
	reaction_r_0220_kms_s_0331r_0220=0.549;
	% Local Parameter:   id =  kms_s_0439r_0220, name = kms_s_0439r_0220
	reaction_r_0220_kms_s_0439r_0220=0.549;

	reaction_r_0220=compartment_intracellular*function_47(reaction_r_0220_Keq_r_0220, reaction_r_0220_Vmax_r_0220, compartment_intracellular, reaction_r_0220_kmp_s_0605r_0220, reaction_r_0220_kmp_s_1066r_0220, reaction_r_0220_kms_s_0331r_0220, reaction_r_0220_kms_s_0439r_0220, x(80), x(100), x(138), x(223));

% Reaction: id = r_0221, name = anthranilate synthase	% Local Parameter:   id =  Keq_r_0221, name = Keq_r_0221
	reaction_r_0221_Keq_r_0221=0.0365906;
	% Local Parameter:   id =  Vmax_r_0221, name = Vmax_r_0221
	reaction_r_0221_Vmax_r_0221=0.323947;
	% Local Parameter:   id =  kmp_s_0439r_0221, name = kmp_s_0439r_0221
	reaction_r_0221_kmp_s_0439r_0221=0.549;
	% Local Parameter:   id =  kmp_s_0763_br_0221, name = kmp_s_0763_br_0221
	reaction_r_0221_kmp_s_0763_br_0221=0.549;
	% Local Parameter:   id =  kmp_s_0899r_0221, name = kmp_s_0899r_0221
	reaction_r_0221_kmp_s_0899r_0221=0.549;
	% Local Parameter:   id =  kmp_s_1277r_0221, name = kmp_s_1277r_0221
	reaction_r_0221_kmp_s_1277r_0221=0.0605905;
	% Local Parameter:   id =  kms_s_0500r_0221, name = kms_s_0500r_0221
	reaction_r_0221_kms_s_0500r_0221=0.549;
	% Local Parameter:   id =  kms_s_0907r_0221, name = kms_s_0907r_0221
	reaction_r_0221_kms_s_0907r_0221=0.549;

	reaction_r_0221=compartment_intracellular*function_48(reaction_r_0221_Keq_r_0221, reaction_r_0221_Vmax_r_0221, compartment_intracellular, reaction_r_0221_kmp_s_0439r_0221, reaction_r_0221_kmp_s_0763_br_0221, reaction_r_0221_kmp_s_0899r_0221, reaction_r_0221_kmp_s_1277r_0221, reaction_r_0221_kms_s_0500r_0221, reaction_r_0221_kms_s_0907r_0221, x(100), x(110), const_species_s_0763_b, x(188), x(190), x(252));

% Reaction: id = r_0225, name = argininosuccinate lyase	% Local Parameter:   id =  Keq_r_0225, name = Keq_r_0225
	reaction_r_0225_Keq_r_0225=0.6039;
	% Local Parameter:   id =  Vmax_r_0225, name = Vmax_r_0225
	reaction_r_0225_Vmax_r_0225=0.414697;
	% Local Parameter:   id =  kmp_s_0692r_0225, name = kmp_s_0692r_0225
	reaction_r_0225_kmp_s_0692r_0225=0.549;
	% Local Parameter:   id =  kmp_s_0873r_0225, name = kmp_s_0873r_0225
	reaction_r_0225_kmp_s_0873r_0225=0.549;
	% Local Parameter:   id =  kms_s_0017r_0225, name = kms_s_0017r_0225
	reaction_r_0225_kms_s_0017r_0225=0.549;

	reaction_r_0225=compartment_intracellular*function_49(reaction_r_0225_Keq_r_0225, reaction_r_0225_Vmax_r_0225, compartment_intracellular, reaction_r_0225_kmp_s_0692r_0225, reaction_r_0225_kmp_s_0873r_0225, reaction_r_0225_kms_s_0017r_0225, x(7), x(154), x(180));

% Reaction: id = r_0226, name = argininosuccinate synthase	% Local Parameter:   id =  Keq_r_0226, name = Keq_r_0226
	reaction_r_0226_Keq_r_0226=0.696513;
	% Local Parameter:   id =  Vmax_r_0226, name = Vmax_r_0226
	reaction_r_0226_Vmax_r_0226=1.90762;
	% Local Parameter:   id =  kmp_s_0017r_0226, name = kmp_s_0017r_0226
	reaction_r_0226_kmp_s_0017r_0226=0.549;
	% Local Parameter:   id =  kmp_s_0434r_0226, name = kmp_s_0434r_0226
	reaction_r_0226_kmp_s_0434r_0226=1.25956;
	% Local Parameter:   id =  kmp_s_0605r_0226, name = kmp_s_0605r_0226
	reaction_r_0226_kmp_s_0605r_0226=0.549;
	% Local Parameter:   id =  kmp_s_0763_br_0226, name = kmp_s_0763_br_0226
	reaction_r_0226_kmp_s_0763_br_0226=0.549;
	% Local Parameter:   id =  kms_s_0446r_0226, name = kms_s_0446r_0226
	reaction_r_0226_kms_s_0446r_0226=1.09208;
	% Local Parameter:   id =  kms_s_0881r_0226, name = kms_s_0881r_0226
	reaction_r_0226_kms_s_0881r_0226=0.549;
	% Local Parameter:   id =  kms_s_0887r_0226, name = kms_s_0887r_0226
	reaction_r_0226_kms_s_0887r_0226=0.549;

	reaction_r_0226=compartment_intracellular*function_50(reaction_r_0226_Keq_r_0226, reaction_r_0226_Vmax_r_0226, compartment_intracellular, reaction_r_0226_kmp_s_0017r_0226, reaction_r_0226_kmp_s_0434r_0226, reaction_r_0226_kmp_s_0605r_0226, reaction_r_0226_kmp_s_0763_br_0226, reaction_r_0226_kms_s_0446r_0226, reaction_r_0226_kms_s_0881r_0226, reaction_r_0226_kms_s_0887r_0226, x(7), x(98), x(101), x(138), const_species_s_0763_b, x(182), x(184));

% Reaction: id = r_0229, name = asparagine synthase (glutamine-hydrolysing)	% Local Parameter:   id =  Keq_r_0229, name = Keq_r_0229
	reaction_r_0229_Keq_r_0229=0.696513;
	% Local Parameter:   id =  Vmax_r_0229, name = Vmax_r_0229
	reaction_r_0229_Vmax_r_0229=4.92183;
	% Local Parameter:   id =  kmp_s_0434r_0229, name = kmp_s_0434r_0229
	reaction_r_0229_kmp_s_0434r_0229=1.25956;
	% Local Parameter:   id =  kmp_s_0605r_0229, name = kmp_s_0605r_0229
	reaction_r_0229_kmp_s_0605r_0229=0.549;
	% Local Parameter:   id =  kmp_s_0763_br_0229, name = kmp_s_0763_br_0229
	reaction_r_0229_kmp_s_0763_br_0229=0.549;
	% Local Parameter:   id =  kmp_s_0877r_0229, name = kmp_s_0877r_0229
	reaction_r_0229_kmp_s_0877r_0229=0.549;
	% Local Parameter:   id =  kmp_s_0899r_0229, name = kmp_s_0899r_0229
	reaction_r_0229_kmp_s_0899r_0229=0.549;
	% Local Parameter:   id =  kms_s_0446r_0229, name = kms_s_0446r_0229
	reaction_r_0229_kms_s_0446r_0229=1.09208;
	% Local Parameter:   id =  kms_s_0881r_0229, name = kms_s_0881r_0229
	reaction_r_0229_kms_s_0881r_0229=0.549;
	% Local Parameter:   id =  kms_s_0907r_0229, name = kms_s_0907r_0229
	reaction_r_0229_kms_s_0907r_0229=0.549;
	% Local Parameter:   id =  kms_s_1434_br_0229, name = kms_s_1434_br_0229
	reaction_r_0229_kms_s_1434_br_0229=0.549;

	reaction_r_0229=compartment_intracellular*function_51(reaction_r_0229_Keq_r_0229, reaction_r_0229_Vmax_r_0229, compartment_intracellular, reaction_r_0229_kmp_s_0434r_0229, reaction_r_0229_kmp_s_0605r_0229, reaction_r_0229_kmp_s_0763_br_0229, reaction_r_0229_kmp_s_0877r_0229, reaction_r_0229_kmp_s_0899r_0229, reaction_r_0229_kms_s_0446r_0229, reaction_r_0229_kms_s_0881r_0229, reaction_r_0229_kms_s_0907r_0229, reaction_r_0229_kms_s_1434_br_0229, x(98), x(101), x(138), const_species_s_0763_b, x(181), x(182), x(188), x(190), const_species_s_1434_b);

% Reaction: id = r_0232, name = aspartate carbamoyltransferase	% Local Parameter:   id =  Keq_r_0232, name = Keq_r_0232
	reaction_r_0232_Keq_r_0232=0.6039;
	% Local Parameter:   id =  Vmax_r_0232, name = Vmax_r_0232
	reaction_r_0232_Vmax_r_0232=0.826427;
	% Local Parameter:   id =  kmp_s_0763_br_0232, name = kmp_s_0763_br_0232
	reaction_r_0232_kmp_s_0763_br_0232=0.549;
	% Local Parameter:   id =  kmp_s_1073r_0232, name = kmp_s_1073r_0232
	reaction_r_0232_kmp_s_1073r_0232=0.549;
	% Local Parameter:   id =  kmp_s_1207r_0232, name = kmp_s_1207r_0232
	reaction_r_0232_kmp_s_1207r_0232=0.549;
	% Local Parameter:   id =  kms_s_0469r_0232, name = kms_s_0469r_0232
	reaction_r_0232_kms_s_0469r_0232=0.549;
	% Local Parameter:   id =  kms_s_0881r_0232, name = kms_s_0881r_0232
	reaction_r_0232_kms_s_0881r_0232=0.549;

	reaction_r_0232=compartment_intracellular*function_52(reaction_r_0232_Keq_r_0232, reaction_r_0232_Vmax_r_0232, compartment_intracellular, reaction_r_0232_kmp_s_0763_br_0232, reaction_r_0232_kmp_s_1073r_0232, reaction_r_0232_kmp_s_1207r_0232, reaction_r_0232_kms_s_0469r_0232, reaction_r_0232_kms_s_0881r_0232, x(106), const_species_s_0763_b, x(182), x(226), const_species_s_1207);

% Reaction: id = r_0233, name = aspartate kinase	% Local Parameter:   id =  Keq_r_0233, name = Keq_r_0233
	reaction_r_0233_Keq_r_0233=1.73154;
	% Local Parameter:   id =  Vmax_r_0233, name = Vmax_r_0233
	reaction_r_0233_Vmax_r_0233=6.2447;
	% Local Parameter:   id =  kmp_s_0301r_0233, name = kmp_s_0301r_0233
	reaction_r_0233_kmp_s_0301r_0233=0.549;
	% Local Parameter:   id =  kmp_s_0400r_0233, name = kmp_s_0400r_0233
	reaction_r_0233_kmp_s_0400r_0233=1.71907;
	% Local Parameter:   id =  kms_s_0446r_0233, name = kms_s_0446r_0233
	reaction_r_0233_kms_s_0446r_0233=1.09208;
	% Local Parameter:   id =  kms_s_0881r_0233, name = kms_s_0881r_0233
	reaction_r_0233_kms_s_0881r_0233=0.549;

	reaction_r_0233=compartment_intracellular*function_53(reaction_r_0233_Keq_r_0233, reaction_r_0233_Vmax_r_0233, compartment_intracellular, reaction_r_0233_kmp_s_0301r_0233, reaction_r_0233_kmp_s_0400r_0233, reaction_r_0233_kms_s_0446r_0233, reaction_r_0233_kms_s_0881r_0233, x(64), x(92), x(101), x(182));

% Reaction: id = r_0235, name = aspartate transaminase	% Local Parameter:   id =  Keq_r_0235, name = Keq_r_0235
	reaction_r_0235_Keq_r_0235=1.1;
	% Local Parameter:   id =  Vmax_r_0235, name = Vmax_r_0235
	reaction_r_0235_Vmax_r_0235=9.856;
	% Local Parameter:   id =  kmp_s_0185r_0235, name = kmp_s_0185r_0235
	reaction_r_0235_kmp_s_0185r_0235=0.549;
	% Local Parameter:   id =  kmp_s_0881r_0235, name = kmp_s_0881r_0235
	reaction_r_0235_kmp_s_0881r_0235=0.549;
	% Local Parameter:   id =  kms_s_0899r_0235, name = kms_s_0899r_0235
	reaction_r_0235_kms_s_0899r_0235=0.549;
	% Local Parameter:   id =  kms_s_1156r_0235, name = kms_s_1156r_0235
	reaction_r_0235_kms_s_1156r_0235=0.549;

	reaction_r_0235=compartment_intracellular*function_54(reaction_r_0235_Keq_r_0235, reaction_r_0235_Vmax_r_0235, compartment_intracellular, reaction_r_0235_kmp_s_0185r_0235, reaction_r_0235_kmp_s_0881r_0235, reaction_r_0235_kms_s_0899r_0235, reaction_r_0235_kms_s_1156r_0235, x(42), x(182), x(188), x(239));

% Reaction: id = r_0238, name = aspartate-semialdehyde dehydrogenase	% Local Parameter:   id =  Keq_r_0238, name = Keq_r_0238
	reaction_r_0238_Keq_r_0238=1.1;
	% Local Parameter:   id =  Vmax_r_0238, name = Vmax_r_0238
	reaction_r_0238_Vmax_r_0238=13.3815;
	% Local Parameter:   id =  kmp_s_0886r_0238, name = kmp_s_0886r_0238
	reaction_r_0238_kmp_s_0886r_0238=0.549;
	% Local Parameter:   id =  kmp_s_1091r_0238, name = kmp_s_1091r_0238
	reaction_r_0238_kmp_s_1091r_0238=0.549;
	% Local Parameter:   id =  kmp_s_1207r_0238, name = kmp_s_1207r_0238
	reaction_r_0238_kmp_s_1207r_0238=0.549;
	% Local Parameter:   id =  kms_s_0301r_0238, name = kms_s_0301r_0238
	reaction_r_0238_kms_s_0301r_0238=0.549;
	% Local Parameter:   id =  kms_s_0763_br_0238, name = kms_s_0763_br_0238
	reaction_r_0238_kms_s_0763_br_0238=0.549;
	% Local Parameter:   id =  kms_s_1096r_0238, name = kms_s_1096r_0238
	reaction_r_0238_kms_s_1096r_0238=0.549;

	reaction_r_0238=compartment_intracellular*function_55(reaction_r_0238_Keq_r_0238, reaction_r_0238_Vmax_r_0238, compartment_intracellular, reaction_r_0238_kmp_s_0886r_0238, reaction_r_0238_kmp_s_1091r_0238, reaction_r_0238_kmp_s_1207r_0238, reaction_r_0238_kms_s_0301r_0238, reaction_r_0238_kms_s_0763_br_0238, reaction_r_0238_kms_s_1096r_0238, x(64), const_species_s_0763_b, x(183), x(230), x(231), const_species_s_1207);

% Reaction: id = r_0245, name = ATP phosphoribosyltransferase	% Local Parameter:   id =  Keq_r_0245, name = Keq_r_0245
	reaction_r_0245_Keq_r_0245=0.552981;
	% Local Parameter:   id =  Vmax_r_0245, name = Vmax_r_0245
	reaction_r_0245_Vmax_r_0245=0.32109;
	% Local Parameter:   id =  kmp_s_0334r_0245, name = kmp_s_0334r_0245
	reaction_r_0245_kmp_s_0334r_0245=0.549;
	% Local Parameter:   id =  kmp_s_0605r_0245, name = kmp_s_0605r_0245
	reaction_r_0245_kmp_s_0605r_0245=0.549;
	% Local Parameter:   id =  kms_s_0331r_0245, name = kms_s_0331r_0245
	reaction_r_0245_kms_s_0331r_0245=0.549;
	% Local Parameter:   id =  kms_s_0446r_0245, name = kms_s_0446r_0245
	reaction_r_0245_kms_s_0446r_0245=1.09208;

	reaction_r_0245=compartment_intracellular*function_56(reaction_r_0245_Keq_r_0245, reaction_r_0245_Vmax_r_0245, compartment_intracellular, reaction_r_0245_kmp_s_0334r_0245, reaction_r_0245_kmp_s_0605r_0245, reaction_r_0245_kms_s_0331r_0245, reaction_r_0245_kms_s_0446r_0245, x(80), x(82), x(101), x(138));

% Reaction: id = r_0246, name = ATP synthase	% Local Parameter:   id =  Keq_r_0246, name = Keq_r_0246
	reaction_r_0246_Keq_r_0246=3.47564;
	% Local Parameter:   id =  Vmax_r_0246, name = Vmax_r_0246
	reaction_r_0246_Vmax_r_0246=76.0041;
	% Local Parameter:   id =  kmp_s_0446r_0246, name = kmp_s_0446r_0246
	reaction_r_0246_kmp_s_0446r_0246=1.09208;
	% Local Parameter:   id =  kmp_s_0763_br_0246, name = kmp_s_0763_br_0246
	reaction_r_0246_kmp_s_0763_br_0246=0.549;
	% Local Parameter:   id =  kmp_s_1434_br_0246, name = kmp_s_1434_br_0246
	reaction_r_0246_kmp_s_1434_br_0246=0.549;
	% Local Parameter:   id =  kms_s_0400r_0246, name = kms_s_0400r_0246
	reaction_r_0246_kms_s_0400r_0246=1.71907;
	% Local Parameter:   id =  kms_s_0763_br_0246, name = kms_s_0763_br_0246
	reaction_r_0246_kms_s_0763_br_0246=0.549;
	% Local Parameter:   id =  kms_s_1207r_0246, name = kms_s_1207r_0246
	reaction_r_0246_kms_s_1207r_0246=0.549;

	reaction_r_0246=compartment_intracellular*function_57(reaction_r_0246_Keq_r_0246, reaction_r_0246_Vmax_r_0246, compartment_intracellular, reaction_r_0246_kmp_s_0446r_0246, reaction_r_0246_kmp_s_0763_br_0246, reaction_r_0246_kmp_s_1434_br_0246, reaction_r_0246_kms_s_0400r_0246, reaction_r_0246_kms_s_0763_br_0246, reaction_r_0246_kms_s_1207r_0246, x(92), x(101), const_species_s_0763_b, const_species_s_1207, const_species_s_1434_b);

% Reaction: id = r_0249, name = ATPase, cytosolic	% Local Parameter:   id =  Keq_r_0249, name = Keq_r_0249
	reaction_r_0249_Keq_r_0249=0.173154;
	% Local Parameter:   id =  Vmax_r_0249, name = Vmax_r_0249
	reaction_r_0249_Vmax_r_0249=50.4568;
	% Local Parameter:   id =  kmp_s_0400r_0249, name = kmp_s_0400r_0249
	reaction_r_0249_kmp_s_0400r_0249=1.71907;
	% Local Parameter:   id =  kmp_s_0766_br_0249, name = kmp_s_0766_br_0249
	reaction_r_0249_kmp_s_0766_br_0249=0.1;
	% Local Parameter:   id =  kmp_s_1207r_0249, name = kmp_s_1207r_0249
	reaction_r_0249_kmp_s_1207r_0249=0.549;
	% Local Parameter:   id =  kms_s_0446r_0249, name = kms_s_0446r_0249
	reaction_r_0249_kms_s_0446r_0249=1.09208;
	% Local Parameter:   id =  kms_s_1434_br_0249, name = kms_s_1434_br_0249
	reaction_r_0249_kms_s_1434_br_0249=0.549;

	reaction_r_0249=function_58(reaction_r_0249_Keq_r_0249, reaction_r_0249_Vmax_r_0249, reaction_r_0249_kmp_s_0400r_0249, reaction_r_0249_kmp_s_0766_br_0249, reaction_r_0249_kmp_s_1207r_0249, reaction_r_0249_kms_s_0446r_0249, reaction_r_0249_kms_s_1434_br_0249, x(92), x(101), const_species_s_0766_b, const_species_s_1207, const_species_s_1434_b);

% Reaction: id = r_0251, name = bicarbonate formation	% Local Parameter:   id =  Keq_r_0251, name = Keq_r_0251
	reaction_r_0251_Keq_r_0251=0.6039;
	% Local Parameter:   id =  Vmax_r_0251, name = Vmax_r_0251
	reaction_r_0251_Vmax_r_0251=20.097;
	% Local Parameter:   id =  kmp_s_0458r_0251, name = kmp_s_0458r_0251
	reaction_r_0251_kmp_s_0458r_0251=0.549;
	% Local Parameter:   id =  kmp_s_0763_br_0251, name = kmp_s_0763_br_0251
	reaction_r_0251_kmp_s_0763_br_0251=0.549;
	% Local Parameter:   id =  kms_s_0470r_0251, name = kms_s_0470r_0251
	reaction_r_0251_kms_s_0470r_0251=1.0;
	% Local Parameter:   id =  kms_s_1434_br_0251, name = kms_s_1434_br_0251
	reaction_r_0251_kms_s_1434_br_0251=0.549;

	reaction_r_0251=compartment_intracellular*function_59(reaction_r_0251_Keq_r_0251, reaction_r_0251_Vmax_r_0251, compartment_intracellular, reaction_r_0251_kmp_s_0458r_0251, reaction_r_0251_kmp_s_0763_br_0251, reaction_r_0251_kms_s_0470r_0251, reaction_r_0251_kms_s_1434_br_0251, x(103), x(107), const_species_s_0763_b, const_species_s_1434_b);

% Reaction: id = r_0258, name = C-14 sterol reductase	% Local Parameter:   id =  Keq_r_0258, name = Keq_r_0258
	reaction_r_0258_Keq_r_0258=2.00364;
	% Local Parameter:   id =  Vmax_r_0258, name = Vmax_r_0258
	reaction_r_0258_Vmax_r_0258=0.0458592;
	% Local Parameter:   id =  kmp_s_0124r_0258, name = kmp_s_0124r_0258
	reaction_r_0258_kmp_s_0124r_0258=0.549;
	% Local Parameter:   id =  kmp_s_1091r_0258, name = kmp_s_1091r_0258
	reaction_r_0258_kmp_s_1091r_0258=0.549;
	% Local Parameter:   id =  kms_s_0268r_0258, name = kms_s_0268r_0258
	reaction_r_0258_kms_s_0268r_0258=0.549;
	% Local Parameter:   id =  kms_s_0763_br_0258, name = kms_s_0763_br_0258
	reaction_r_0258_kms_s_0763_br_0258=0.549;
	% Local Parameter:   id =  kms_s_1096r_0258, name = kms_s_1096r_0258
	reaction_r_0258_kms_s_1096r_0258=0.549;

	reaction_r_0258=compartment_intracellular*function_60(reaction_r_0258_Keq_r_0258, reaction_r_0258_Vmax_r_0258, compartment_intracellular, reaction_r_0258_kmp_s_0124r_0258, reaction_r_0258_kmp_s_1091r_0258, reaction_r_0258_kms_s_0268r_0258, reaction_r_0258_kms_s_0763_br_0258, reaction_r_0258_kms_s_1096r_0258, x(29), x(62), const_species_s_0763_b, x(230), x(231));

% Reaction: id = r_0261, name = C-3 sterol dehydrogenase	% Local Parameter:   id =  Keq_r_0261, name = Keq_r_0261
	reaction_r_0261_Keq_r_0261=0.6039;
	% Local Parameter:   id =  Vmax_r_0261, name = Vmax_r_0261
	reaction_r_0261_Vmax_r_0261=0.0785835;
	% Local Parameter:   id =  kmp_s_0470r_0261, name = kmp_s_0470r_0261
	reaction_r_0261_kmp_s_0470r_0261=1.0;
	% Local Parameter:   id =  kmp_s_0763_br_0261, name = kmp_s_0763_br_0261
	reaction_r_0261_kmp_s_0763_br_0261=0.549;
	% Local Parameter:   id =  kmp_s_1096r_0261, name = kmp_s_1096r_0261
	reaction_r_0261_kmp_s_1096r_0261=0.549;
	% Local Parameter:   id =  kmp_s_1458r_0261, name = kmp_s_1458r_0261
	reaction_r_0261_kmp_s_1458r_0261=0.549;
	% Local Parameter:   id =  kms_s_1091r_0261, name = kms_s_1091r_0261
	reaction_r_0261_kms_s_1091r_0261=0.549;
	% Local Parameter:   id =  kms_s_1457r_0261, name = kms_s_1457r_0261
	reaction_r_0261_kms_s_1457r_0261=0.549;

	reaction_r_0261=compartment_intracellular*function_61(reaction_r_0261_Keq_r_0261, reaction_r_0261_Vmax_r_0261, compartment_intracellular, reaction_r_0261_kmp_s_0470r_0261, reaction_r_0261_kmp_s_0763_br_0261, reaction_r_0261_kmp_s_1096r_0261, reaction_r_0261_kmp_s_1458r_0261, reaction_r_0261_kms_s_1091r_0261, reaction_r_0261_kms_s_1457r_0261, x(107), const_species_s_0763_b, x(230), x(231), x(276), x(277));

% Reaction: id = r_0262, name = C-3 sterol dehydrogenase (4-methylzymosterol)	% Local Parameter:   id =  Keq_r_0262, name = Keq_r_0262
	reaction_r_0262_Keq_r_0262=0.0348439;
	% Local Parameter:   id =  Vmax_r_0262, name = Vmax_r_0262
	reaction_r_0262_Vmax_r_0262=0.0785834;
	% Local Parameter:   id =  kmp_s_0215r_0262, name = kmp_s_0215r_0262
	reaction_r_0262_kmp_s_0215r_0262=0.549;
	% Local Parameter:   id =  kmp_s_0470r_0262, name = kmp_s_0470r_0262
	reaction_r_0262_kmp_s_0470r_0262=1.0;
	% Local Parameter:   id =  kmp_s_0763_br_0262, name = kmp_s_0763_br_0262
	reaction_r_0262_kmp_s_0763_br_0262=0.549;
	% Local Parameter:   id =  kmp_s_1087r_0262, name = kmp_s_1087r_0262
	reaction_r_0262_kmp_s_1087r_0262=0.0867353;
	% Local Parameter:   id =  kms_s_0303r_0262, name = kms_s_0303r_0262
	reaction_r_0262_kms_s_0303r_0262=0.549;
	% Local Parameter:   id =  kms_s_1082r_0262, name = kms_s_1082r_0262
	reaction_r_0262_kms_s_1082r_0262=1.50326;

	reaction_r_0262=compartment_intracellular*function_62(reaction_r_0262_Keq_r_0262, reaction_r_0262_Vmax_r_0262, compartment_intracellular, reaction_r_0262_kmp_s_0215r_0262, reaction_r_0262_kmp_s_0470r_0262, reaction_r_0262_kmp_s_0763_br_0262, reaction_r_0262_kmp_s_1087r_0262, reaction_r_0262_kms_s_0303r_0262, reaction_r_0262_kms_s_1082r_0262, x(48), x(66), x(107), const_species_s_0763_b, x(228), x(229));

% Reaction: id = r_0263, name = C-3 sterol keto reductase (4-methylzymosterol)	% Local Parameter:   id =  Keq_r_0263, name = Keq_r_0263
	reaction_r_0263_Keq_r_0263=2.00364;
	% Local Parameter:   id =  Vmax_r_0263, name = Vmax_r_0263
	reaction_r_0263_Vmax_r_0263=0.0454962;
	% Local Parameter:   id =  kmp_s_0302r_0263, name = kmp_s_0302r_0263
	reaction_r_0263_kmp_s_0302r_0263=0.549;
	% Local Parameter:   id =  kmp_s_1091r_0263, name = kmp_s_1091r_0263
	reaction_r_0263_kmp_s_1091r_0263=0.549;
	% Local Parameter:   id =  kms_s_0215r_0263, name = kms_s_0215r_0263
	reaction_r_0263_kms_s_0215r_0263=0.549;
	% Local Parameter:   id =  kms_s_0763_br_0263, name = kms_s_0763_br_0263
	reaction_r_0263_kms_s_0763_br_0263=0.549;
	% Local Parameter:   id =  kms_s_1096r_0263, name = kms_s_1096r_0263
	reaction_r_0263_kms_s_1096r_0263=0.549;

	reaction_r_0263=compartment_intracellular*function_63(reaction_r_0263_Keq_r_0263, reaction_r_0263_Vmax_r_0263, compartment_intracellular, reaction_r_0263_kmp_s_0302r_0263, reaction_r_0263_kmp_s_1091r_0263, reaction_r_0263_kms_s_0215r_0263, reaction_r_0263_kms_s_0763_br_0263, reaction_r_0263_kms_s_1096r_0263, x(48), x(65), const_species_s_0763_b, x(230), x(231));

% Reaction: id = r_0264, name = C-3 sterol keto reductase (zymosterol)	% Local Parameter:   id =  Keq_r_0264, name = Keq_r_0264
	reaction_r_0264_Keq_r_0264=2.00364;
	% Local Parameter:   id =  Vmax_r_0264, name = Vmax_r_0264
	reaction_r_0264_Vmax_r_0264=0.0454962;
	% Local Parameter:   id =  kmp_s_1091r_0264, name = kmp_s_1091r_0264
	reaction_r_0264_kmp_s_1091r_0264=0.549;
	% Local Parameter:   id =  kmp_s_1447r_0264, name = kmp_s_1447r_0264
	reaction_r_0264_kmp_s_1447r_0264=0.549;
	% Local Parameter:   id =  kms_s_0763_br_0264, name = kms_s_0763_br_0264
	reaction_r_0264_kms_s_0763_br_0264=0.549;
	% Local Parameter:   id =  kms_s_1096r_0264, name = kms_s_1096r_0264
	reaction_r_0264_kms_s_1096r_0264=0.549;
	% Local Parameter:   id =  kms_s_1458r_0264, name = kms_s_1458r_0264
	reaction_r_0264_kms_s_1458r_0264=0.549;

	reaction_r_0264=compartment_intracellular*function_64(reaction_r_0264_Keq_r_0264, reaction_r_0264_Vmax_r_0264, compartment_intracellular, reaction_r_0264_kmp_s_1091r_0264, reaction_r_0264_kmp_s_1447r_0264, reaction_r_0264_kms_s_0763_br_0264, reaction_r_0264_kms_s_1096r_0264, reaction_r_0264_kms_s_1458r_0264, const_species_s_0763_b, x(230), x(231), x(273), x(277));

% Reaction: id = r_0265, name = C-4 methyl sterol oxidase	% Local Parameter:   id =  Keq_r_0265, name = Keq_r_0265
	reaction_r_0265_Keq_r_0265=2.00364;
	% Local Parameter:   id =  Vmax_r_0265, name = Vmax_r_0265
	reaction_r_0265_Vmax_r_0265=0.0951282;
	% Local Parameter:   id =  kmp_s_1091r_0265, name = kmp_s_1091r_0265
	reaction_r_0265_kmp_s_1091r_0265=0.549;
	% Local Parameter:   id =  kmp_s_1434_br_0265, name = kmp_s_1434_br_0265
	reaction_r_0265_kmp_s_1434_br_0265=0.549;
	% Local Parameter:   id =  kmp_s_1455r_0265, name = kmp_s_1455r_0265
	reaction_r_0265_kmp_s_1455r_0265=0.549;
	% Local Parameter:   id =  kms_s_0302r_0265, name = kms_s_0302r_0265
	reaction_r_0265_kms_s_0302r_0265=0.549;
	% Local Parameter:   id =  kms_s_0763_br_0265, name = kms_s_0763_br_0265
	reaction_r_0265_kms_s_0763_br_0265=0.549;
	% Local Parameter:   id =  kms_s_1096r_0265, name = kms_s_1096r_0265
	reaction_r_0265_kms_s_1096r_0265=0.549;
	% Local Parameter:   id =  kms_s_1160r_0265, name = kms_s_1160r_0265
	reaction_r_0265_kms_s_1160r_0265=0.549;

	reaction_r_0265=compartment_intracellular*function_65(reaction_r_0265_Keq_r_0265, reaction_r_0265_Vmax_r_0265, compartment_intracellular, reaction_r_0265_kmp_s_1091r_0265, reaction_r_0265_kmp_s_1434_br_0265, reaction_r_0265_kmp_s_1455r_0265, reaction_r_0265_kms_s_0302r_0265, reaction_r_0265_kms_s_0763_br_0265, reaction_r_0265_kms_s_1096r_0265, reaction_r_0265_kms_s_1160r_0265, x(65), const_species_s_0763_b, x(230), x(231), x(240), const_species_s_1434_b, x(274));

% Reaction: id = r_0266, name = C-4 methyl sterol oxidase_2	% Local Parameter:   id =  Keq_r_0266, name = Keq_r_0266
	reaction_r_0266_Keq_r_0266=1.1;
	% Local Parameter:   id =  Vmax_r_0266, name = Vmax_r_0266
	reaction_r_0266_Vmax_r_0266=0.0951282;
	% Local Parameter:   id =  kmp_s_1091r_0266, name = kmp_s_1091r_0266
	reaction_r_0266_kmp_s_1091r_0266=0.549;
	% Local Parameter:   id =  kmp_s_1434_br_0266, name = kmp_s_1434_br_0266
	reaction_r_0266_kmp_s_1434_br_0266=0.549;
	% Local Parameter:   id =  kmp_s_1456r_0266, name = kmp_s_1456r_0266
	reaction_r_0266_kmp_s_1456r_0266=0.549;
	% Local Parameter:   id =  kms_s_0763_br_0266, name = kms_s_0763_br_0266
	reaction_r_0266_kms_s_0763_br_0266=0.549;
	% Local Parameter:   id =  kms_s_1096r_0266, name = kms_s_1096r_0266
	reaction_r_0266_kms_s_1096r_0266=0.549;
	% Local Parameter:   id =  kms_s_1160r_0266, name = kms_s_1160r_0266
	reaction_r_0266_kms_s_1160r_0266=0.549;
	% Local Parameter:   id =  kms_s_1455r_0266, name = kms_s_1455r_0266
	reaction_r_0266_kms_s_1455r_0266=0.549;

	reaction_r_0266=compartment_intracellular*function_66(reaction_r_0266_Keq_r_0266, reaction_r_0266_Vmax_r_0266, compartment_intracellular, reaction_r_0266_kmp_s_1091r_0266, reaction_r_0266_kmp_s_1434_br_0266, reaction_r_0266_kmp_s_1456r_0266, reaction_r_0266_kms_s_0763_br_0266, reaction_r_0266_kms_s_1096r_0266, reaction_r_0266_kms_s_1160r_0266, reaction_r_0266_kms_s_1455r_0266, const_species_s_0763_b, x(230), x(231), x(240), const_species_s_1434_b, x(274), x(275));

% Reaction: id = r_0267, name = C-4 methyl sterol oxidase_3	% Local Parameter:   id =  Keq_r_0267, name = Keq_r_0267
	reaction_r_0267_Keq_r_0267=2.00364;
	% Local Parameter:   id =  Vmax_r_0267, name = Vmax_r_0267
	reaction_r_0267_Vmax_r_0267=0.0951282;
	% Local Parameter:   id =  kmp_s_1091r_0267, name = kmp_s_1091r_0267
	reaction_r_0267_kmp_s_1091r_0267=0.549;
	% Local Parameter:   id =  kmp_s_1434_br_0267, name = kmp_s_1434_br_0267
	reaction_r_0267_kmp_s_1434_br_0267=0.549;
	% Local Parameter:   id =  kmp_s_1457r_0267, name = kmp_s_1457r_0267
	reaction_r_0267_kmp_s_1457r_0267=0.549;
	% Local Parameter:   id =  kms_s_0763_br_0267, name = kms_s_0763_br_0267
	reaction_r_0267_kms_s_0763_br_0267=0.549;
	% Local Parameter:   id =  kms_s_1096r_0267, name = kms_s_1096r_0267
	reaction_r_0267_kms_s_1096r_0267=0.549;
	% Local Parameter:   id =  kms_s_1160r_0267, name = kms_s_1160r_0267
	reaction_r_0267_kms_s_1160r_0267=0.549;
	% Local Parameter:   id =  kms_s_1456r_0267, name = kms_s_1456r_0267
	reaction_r_0267_kms_s_1456r_0267=0.549;

	reaction_r_0267=compartment_intracellular*function_67(reaction_r_0267_Keq_r_0267, reaction_r_0267_Vmax_r_0267, compartment_intracellular, reaction_r_0267_kmp_s_1091r_0267, reaction_r_0267_kmp_s_1434_br_0267, reaction_r_0267_kmp_s_1457r_0267, reaction_r_0267_kms_s_0763_br_0267, reaction_r_0267_kms_s_1096r_0267, reaction_r_0267_kms_s_1160r_0267, reaction_r_0267_kms_s_1456r_0267, const_species_s_0763_b, x(230), x(231), x(240), const_species_s_1434_b, x(275), x(276));

% Reaction: id = r_0268, name = C-4 sterol methyl oxidase (4,4-dimethylzymosterol)	% Local Parameter:   id =  Keq_r_0268, name = Keq_r_0268
	reaction_r_0268_Keq_r_0268=3.64962;
	% Local Parameter:   id =  Vmax_r_0268, name = Vmax_r_0268
	reaction_r_0268_Vmax_r_0268=0.0951282;
	% Local Parameter:   id =  kmp_s_0303r_0268, name = kmp_s_0303r_0268
	reaction_r_0268_kmp_s_0303r_0268=0.549;
	% Local Parameter:   id =  kmp_s_1091r_0268, name = kmp_s_1091r_0268
	reaction_r_0268_kmp_s_1091r_0268=0.549;
	% Local Parameter:   id =  kmp_s_1434_br_0268, name = kmp_s_1434_br_0268
	reaction_r_0268_kmp_s_1434_br_0268=0.549;
	% Local Parameter:   id =  kms_s_0124r_0268, name = kms_s_0124r_0268
	reaction_r_0268_kms_s_0124r_0268=0.549;
	% Local Parameter:   id =  kms_s_0763_br_0268, name = kms_s_0763_br_0268
	reaction_r_0268_kms_s_0763_br_0268=0.549;
	% Local Parameter:   id =  kms_s_1096r_0268, name = kms_s_1096r_0268
	reaction_r_0268_kms_s_1096r_0268=0.549;
	% Local Parameter:   id =  kms_s_1160r_0268, name = kms_s_1160r_0268
	reaction_r_0268_kms_s_1160r_0268=0.549;

	reaction_r_0268=compartment_intracellular*function_68(reaction_r_0268_Keq_r_0268, reaction_r_0268_Vmax_r_0268, compartment_intracellular, reaction_r_0268_kmp_s_0303r_0268, reaction_r_0268_kmp_s_1091r_0268, reaction_r_0268_kmp_s_1434_br_0268, reaction_r_0268_kms_s_0124r_0268, reaction_r_0268_kms_s_0763_br_0268, reaction_r_0268_kms_s_1096r_0268, reaction_r_0268_kms_s_1160r_0268, x(29), x(66), const_species_s_0763_b, x(230), x(231), x(240), const_species_s_1434_b);

% Reaction: id = r_0270, name = C-8 sterol isomerase	% Local Parameter:   id =  Keq_r_0270, name = Keq_r_0270
	reaction_r_0270_Keq_r_0270=1.1;
	% Local Parameter:   id =  Vmax_r_0270, name = Vmax_r_0270
	reaction_r_0270_Vmax_r_0270=1.7589E-4;
	% Local Parameter:   id =  kmp_s_0627r_0270, name = kmp_s_0627r_0270
	reaction_r_0270_kmp_s_0627r_0270=0.549;
	% Local Parameter:   id =  kms_s_0669r_0270, name = kms_s_0669r_0270
	reaction_r_0270_kms_s_0669r_0270=0.549;

	reaction_r_0270=compartment_intracellular*function_69(reaction_r_0270_Keq_r_0270, reaction_r_0270_Vmax_r_0270, compartment_intracellular, reaction_r_0270_kmp_s_0627r_0270, reaction_r_0270_kms_s_0669r_0270, x(144), x(152));

% Reaction: id = r_0271, name = C-s24 sterol reductase	% Local Parameter:   id =  Keq_r_0271, name = Keq_r_0271
	reaction_r_0271_Keq_r_0271=2.00364;
	% Local Parameter:   id =  Vmax_r_0271, name = Vmax_r_0271
	reaction_r_0271_Vmax_r_0271=0.0430762;
	% Local Parameter:   id =  kmp_s_0635r_0271, name = kmp_s_0635r_0271
	reaction_r_0271_kmp_s_0635r_0271=0.549;
	% Local Parameter:   id =  kmp_s_1091r_0271, name = kmp_s_1091r_0271
	reaction_r_0271_kmp_s_1091r_0271=0.549;
	% Local Parameter:   id =  kms_s_0632r_0271, name = kms_s_0632r_0271
	reaction_r_0271_kms_s_0632r_0271=0.549;
	% Local Parameter:   id =  kms_s_0763_br_0271, name = kms_s_0763_br_0271
	reaction_r_0271_kms_s_0763_br_0271=0.549;
	% Local Parameter:   id =  kms_s_1096r_0271, name = kms_s_1096r_0271
	reaction_r_0271_kms_s_1096r_0271=0.549;

	reaction_r_0271=compartment_intracellular*function_70(reaction_r_0271_Keq_r_0271, reaction_r_0271_Vmax_r_0271, compartment_intracellular, reaction_r_0271_kmp_s_0635r_0271, reaction_r_0271_kmp_s_1091r_0271, reaction_r_0271_kms_s_0632r_0271, reaction_r_0271_kms_s_0763_br_0271, reaction_r_0271_kms_s_1096r_0271, x(145), x(146), const_species_s_0763_b, x(230), x(231));

% Reaction: id = r_0277, name = carbamoyl-phosphate synthase (glutamine-hydrolysing)	% Local Parameter:   id =  Keq_r_0277, name = Keq_r_0277
	reaction_r_0277_Keq_r_0277=0.821515;
	% Local Parameter:   id =  Vmax_r_0277, name = Vmax_r_0277
	reaction_r_0277_Vmax_r_0277=7.44478;
	% Local Parameter:   id =  kmp_s_0400r_0277, name = kmp_s_0400r_0277
	reaction_r_0277_kmp_s_0400r_0277=1.71907;
	% Local Parameter:   id =  kmp_s_0469r_0277, name = kmp_s_0469r_0277
	reaction_r_0277_kmp_s_0469r_0277=0.549;
	% Local Parameter:   id =  kmp_s_0763_br_0277, name = kmp_s_0763_br_0277
	reaction_r_0277_kmp_s_0763_br_0277=0.549;
	% Local Parameter:   id =  kmp_s_0899r_0277, name = kmp_s_0899r_0277
	reaction_r_0277_kmp_s_0899r_0277=0.549;
	% Local Parameter:   id =  kmp_s_1207r_0277, name = kmp_s_1207r_0277
	reaction_r_0277_kmp_s_1207r_0277=0.549;
	% Local Parameter:   id =  kms_s_0446r_0277, name = kms_s_0446r_0277
	reaction_r_0277_kms_s_0446r_0277=1.09208;
	% Local Parameter:   id =  kms_s_0458r_0277, name = kms_s_0458r_0277
	reaction_r_0277_kms_s_0458r_0277=0.549;
	% Local Parameter:   id =  kms_s_0907r_0277, name = kms_s_0907r_0277
	reaction_r_0277_kms_s_0907r_0277=0.549;
	% Local Parameter:   id =  kms_s_1434_br_0277, name = kms_s_1434_br_0277
	reaction_r_0277_kms_s_1434_br_0277=0.549;

	reaction_r_0277=compartment_intracellular*function_71(reaction_r_0277_Keq_r_0277, reaction_r_0277_Vmax_r_0277, compartment_intracellular, reaction_r_0277_kmp_s_0400r_0277, reaction_r_0277_kmp_s_0469r_0277, reaction_r_0277_kmp_s_0763_br_0277, reaction_r_0277_kmp_s_0899r_0277, reaction_r_0277_kmp_s_1207r_0277, reaction_r_0277_kms_s_0446r_0277, reaction_r_0277_kms_s_0458r_0277, reaction_r_0277_kms_s_0907r_0277, reaction_r_0277_kms_s_1434_br_0277, x(92), x(101), x(103), x(106), const_species_s_0763_b, x(188), x(190), const_species_s_1207, const_species_s_1434_b);

% Reaction: id = r_0282, name = catalase	% Local Parameter:   id =  Keq_r_0282, name = Keq_r_0282
	reaction_r_0282_Keq_r_0282=0.6039;
	% Local Parameter:   id =  Vmax_r_0282, name = Vmax_r_0282
	reaction_r_0282_Vmax_r_0282=0.187549;
	% Local Parameter:   id =  kmp_s_1160r_0282, name = kmp_s_1160r_0282
	reaction_r_0282_kmp_s_1160r_0282=0.549;
	% Local Parameter:   id =  kmp_s_1434_br_0282, name = kmp_s_1434_br_0282
	reaction_r_0282_kmp_s_1434_br_0282=0.549;
	% Local Parameter:   id =  kms_s_0801r_0282, name = kms_s_0801r_0282
	reaction_r_0282_kms_s_0801r_0282=0.549;

	reaction_r_0282=compartment_intracellular*function_72(reaction_r_0282_Keq_r_0282, reaction_r_0282_Vmax_r_0282, compartment_intracellular, reaction_r_0282_kmp_s_1160r_0282, reaction_r_0282_kmp_s_1434_br_0282, reaction_r_0282_kms_s_0801r_0282, x(169), x(240), const_species_s_1434_b);

% Reaction: id = r_0284, name = CDP-diacylglycerol synthase	% Local Parameter:   id =  Keq_r_0284, name = Keq_r_0284
	reaction_r_0284_Keq_r_0284=2.00364;
	% Local Parameter:   id =  Vmax_r_0284, name = Vmax_r_0284
	reaction_r_0284_Vmax_r_0284=0.0367841;
	% Local Parameter:   id =  kmp_s_0485r_0284, name = kmp_s_0485r_0284
	reaction_r_0284_kmp_s_0485r_0284=0.549;
	% Local Parameter:   id =  kmp_s_0605r_0284, name = kmp_s_0605r_0284
	reaction_r_0284_kmp_s_0605r_0284=0.549;
	% Local Parameter:   id =  kms_s_0521r_0284, name = kms_s_0521r_0284
	reaction_r_0284_kms_s_0521r_0284=0.549;
	% Local Parameter:   id =  kms_s_0763_br_0284, name = kms_s_0763_br_0284
	reaction_r_0284_kms_s_0763_br_0284=0.549;
	% Local Parameter:   id =  kms_s_1215r_0284, name = kms_s_1215r_0284
	reaction_r_0284_kms_s_1215r_0284=0.549;

	reaction_r_0284=compartment_intracellular*function_73(reaction_r_0284_Keq_r_0284, reaction_r_0284_Vmax_r_0284, compartment_intracellular, reaction_r_0284_kmp_s_0485r_0284, reaction_r_0284_kmp_s_0605r_0284, reaction_r_0284_kms_s_0521r_0284, reaction_r_0284_kms_s_0763_br_0284, reaction_r_0284_kms_s_1215r_0284, x(109), x(115), x(138), const_species_s_0763_b, x(243));

% Reaction: id = r_0287, name = ceramide-1 hydroxylase (24C)	% Local Parameter:   id =  Keq_r_0287, name = Keq_r_0287
	reaction_r_0287_Keq_r_0287=2.00364;
	% Local Parameter:   id =  Vmax_r_0287, name = Vmax_r_0287
	reaction_r_0287_Vmax_r_0287=0.00584431;
	% Local Parameter:   id =  kmp_s_1060r_0287, name = kmp_s_1060r_0287
	reaction_r_0287_kmp_s_1060r_0287=0.549;
	% Local Parameter:   id =  kmp_s_1091r_0287, name = kmp_s_1091r_0287
	reaction_r_0287_kmp_s_1091r_0287=0.549;
	% Local Parameter:   id =  kmp_s_1434_br_0287, name = kmp_s_1434_br_0287
	reaction_r_0287_kmp_s_1434_br_0287=0.549;
	% Local Parameter:   id =  kms_s_0763_br_0287, name = kms_s_0763_br_0287
	reaction_r_0287_kms_s_0763_br_0287=0.549;
	% Local Parameter:   id =  kms_s_1080r_0287, name = kms_s_1080r_0287
	reaction_r_0287_kms_s_1080r_0287=0.549;
	% Local Parameter:   id =  kms_s_1096r_0287, name = kms_s_1096r_0287
	reaction_r_0287_kms_s_1096r_0287=0.549;
	% Local Parameter:   id =  kms_s_1160r_0287, name = kms_s_1160r_0287
	reaction_r_0287_kms_s_1160r_0287=0.549;

	reaction_r_0287=compartment_intracellular*function_74(reaction_r_0287_Keq_r_0287, reaction_r_0287_Vmax_r_0287, compartment_intracellular, reaction_r_0287_kmp_s_1060r_0287, reaction_r_0287_kmp_s_1091r_0287, reaction_r_0287_kmp_s_1434_br_0287, reaction_r_0287_kms_s_0763_br_0287, reaction_r_0287_kms_s_1080r_0287, reaction_r_0287_kms_s_1096r_0287, reaction_r_0287_kms_s_1160r_0287, const_species_s_0763_b, x(222), x(227), x(230), x(231), x(240), const_species_s_1434_b);

% Reaction: id = r_0290, name = ceramide-1 synthase (24C)	% Local Parameter:   id =  Keq_r_0290, name = Keq_r_0290
	reaction_r_0290_Keq_r_0290=0.6039;
	% Local Parameter:   id =  Vmax_r_0290, name = Vmax_r_0290
	reaction_r_0290_Vmax_r_0290=0.00279509;
	% Local Parameter:   id =  kmp_s_0514r_0290, name = kmp_s_0514r_0290
	reaction_r_0290_kmp_s_0514r_0290=0.549;
	% Local Parameter:   id =  kmp_s_0763_br_0290, name = kmp_s_0763_br_0290
	reaction_r_0290_kmp_s_0763_br_0290=0.549;
	% Local Parameter:   id =  kmp_s_1080r_0290, name = kmp_s_1080r_0290
	reaction_r_0290_kmp_s_1080r_0290=0.549;
	% Local Parameter:   id =  kms_s_1325r_0290, name = kms_s_1325r_0290
	reaction_r_0290_kms_s_1325r_0290=0.549;
	% Local Parameter:   id =  kms_s_1355r_0290, name = kms_s_1355r_0290
	reaction_r_0290_kms_s_1355r_0290=0.549;

	reaction_r_0290=compartment_intracellular*function_75(reaction_r_0290_Keq_r_0290, reaction_r_0290_Vmax_r_0290, compartment_intracellular, reaction_r_0290_kmp_s_0514r_0290, reaction_r_0290_kmp_s_0763_br_0290, reaction_r_0290_kmp_s_1080r_0290, reaction_r_0290_kms_s_1325r_0290, reaction_r_0290_kms_s_1355r_0290, x(114), const_species_s_0763_b, x(227), x(259), x(267));

% Reaction: id = r_0298, name = cholestenol delta-isomerase, lumped reaction	% Local Parameter:   id =  Keq_r_0298, name = Keq_r_0298
	reaction_r_0298_Keq_r_0298=0.331541;
	% Local Parameter:   id =  Vmax_r_0298, name = Vmax_r_0298
	reaction_r_0298_Vmax_r_0298=0.0918388;
	% Local Parameter:   id =  kmp_s_0632r_0298, name = kmp_s_0632r_0298
	reaction_r_0298_kmp_s_0632r_0298=0.549;
	% Local Parameter:   id =  kmp_s_0763_br_0298, name = kmp_s_0763_br_0298
	reaction_r_0298_kmp_s_0763_br_0298=0.549;
	% Local Parameter:   id =  kmp_s_1290r_0298, name = kmp_s_1290r_0298
	reaction_r_0298_kmp_s_1290r_0298=0.549;
	% Local Parameter:   id =  kmp_s_1434_br_0298, name = kmp_s_1434_br_0298
	reaction_r_0298_kmp_s_1434_br_0298=0.549;
	% Local Parameter:   id =  kms_s_1160r_0298, name = kms_s_1160r_0298
	reaction_r_0298_kms_s_1160r_0298=0.549;
	% Local Parameter:   id =  kms_s_1293r_0298, name = kms_s_1293r_0298
	reaction_r_0298_kms_s_1293r_0298=0.549;
	% Local Parameter:   id =  kms_s_1447r_0298, name = kms_s_1447r_0298
	reaction_r_0298_kms_s_1447r_0298=0.549;

	reaction_r_0298=compartment_intracellular*function_76(reaction_r_0298_Keq_r_0298, reaction_r_0298_Vmax_r_0298, compartment_intracellular, reaction_r_0298_kmp_s_0632r_0298, reaction_r_0298_kmp_s_0763_br_0298, reaction_r_0298_kmp_s_1290r_0298, reaction_r_0298_kmp_s_1434_br_0298, reaction_r_0298_kms_s_1160r_0298, reaction_r_0298_kms_s_1293r_0298, reaction_r_0298_kms_s_1447r_0298, x(145), const_species_s_0763_b, x(240), x(254), x(255), const_species_s_1434_b, x(273));

% Reaction: id = r_0304, name = chorismate mutase	% Local Parameter:   id =  Keq_r_0304, name = Keq_r_0304
	reaction_r_0304_Keq_r_0304=1.1;
	% Local Parameter:   id =  Vmax_r_0304, name = Vmax_r_0304
	reaction_r_0304_Vmax_r_0304=0.3861;
	% Local Parameter:   id =  kmp_s_1258r_0304, name = kmp_s_1258r_0304
	reaction_r_0304_kmp_s_1258r_0304=0.549;
	% Local Parameter:   id =  kms_s_0500r_0304, name = kms_s_0500r_0304
	reaction_r_0304_kms_s_0500r_0304=0.549;

	reaction_r_0304=compartment_intracellular*function_77(reaction_r_0304_Keq_r_0304, reaction_r_0304_Vmax_r_0304, compartment_intracellular, reaction_r_0304_kmp_s_1258r_0304, reaction_r_0304_kms_s_0500r_0304, x(110), x(251));

% Reaction: id = r_0306, name = chorismate synthase	% Local Parameter:   id =  Keq_r_0306, name = Keq_r_0306
	reaction_r_0306_Keq_r_0306=0.6039;
	% Local Parameter:   id =  Vmax_r_0306, name = Vmax_r_0306
	reaction_r_0306_Vmax_r_0306=0.731496;
	% Local Parameter:   id =  kmp_s_0500r_0306, name = kmp_s_0500r_0306
	reaction_r_0306_kmp_s_0500r_0306=0.549;
	% Local Parameter:   id =  kmp_s_1207r_0306, name = kmp_s_1207r_0306
	reaction_r_0306_kmp_s_1207r_0306=0.549;
	% Local Parameter:   id =  kms_s_0330r_0306, name = kms_s_0330r_0306
	reaction_r_0306_kms_s_0330r_0306=0.549;

	reaction_r_0306=compartment_intracellular*function_78(reaction_r_0306_Keq_r_0306, reaction_r_0306_Vmax_r_0306, compartment_intracellular, reaction_r_0306_kmp_s_0500r_0306, reaction_r_0306_kmp_s_1207r_0306, reaction_r_0306_kms_s_0330r_0306, x(79), x(110), const_species_s_1207);

% Reaction: id = r_0307, name = cis-aconitate(3-) to isocitrate	% Local Parameter:   id =  Keq_r_0307, name = Keq_r_0307
	reaction_r_0307_Keq_r_0307=2.00364;
	% Local Parameter:   id =  Vmax_r_0307, name = Vmax_r_0307
	reaction_r_0307_Vmax_r_0307=4.40553;
	% Local Parameter:   id =  kmp_s_0847r_0307, name = kmp_s_0847r_0307
	reaction_r_0307_kmp_s_0847r_0307=0.549;
	% Local Parameter:   id =  kms_s_0501r_0307, name = kms_s_0501r_0307
	reaction_r_0307_kms_s_0501r_0307=0.549;
	% Local Parameter:   id =  kms_s_1434_br_0307, name = kms_s_1434_br_0307
	reaction_r_0307_kms_s_1434_br_0307=0.549;

	reaction_r_0307=compartment_intracellular*function_79(reaction_r_0307_Keq_r_0307, reaction_r_0307_Vmax_r_0307, compartment_intracellular, reaction_r_0307_kmp_s_0847r_0307, reaction_r_0307_kms_s_0501r_0307, reaction_r_0307_kms_s_1434_br_0307, x(111), x(174), const_species_s_1434_b);

% Reaction: id = r_0328, name = citrate synthase	% Local Parameter:   id =  Keq_r_0328, name = Keq_r_0328
	reaction_r_0328_Keq_r_0328=1.1;
	% Local Parameter:   id =  Vmax_r_0328, name = Vmax_r_0328
	reaction_r_0328_Vmax_r_0328=13.2165;
	% Local Parameter:   id =  kmp_s_0507r_0328, name = kmp_s_0507r_0328
	reaction_r_0328_kmp_s_0507r_0328=0.549;
	% Local Parameter:   id =  kmp_s_0514r_0328, name = kmp_s_0514r_0328
	reaction_r_0328_kmp_s_0514r_0328=0.549;
	% Local Parameter:   id =  kmp_s_0763_br_0328, name = kmp_s_0763_br_0328
	reaction_r_0328_kmp_s_0763_br_0328=0.549;
	% Local Parameter:   id =  kms_s_0380r_0328, name = kms_s_0380r_0328
	reaction_r_0328_kms_s_0380r_0328=0.549;
	% Local Parameter:   id =  kms_s_1156r_0328, name = kms_s_1156r_0328
	reaction_r_0328_kms_s_1156r_0328=0.549;
	% Local Parameter:   id =  kms_s_1434_br_0328, name = kms_s_1434_br_0328
	reaction_r_0328_kms_s_1434_br_0328=0.549;

	reaction_r_0328=compartment_intracellular*function_80(reaction_r_0328_Keq_r_0328, reaction_r_0328_Vmax_r_0328, compartment_intracellular, reaction_r_0328_kmp_s_0507r_0328, reaction_r_0328_kmp_s_0514r_0328, reaction_r_0328_kmp_s_0763_br_0328, reaction_r_0328_kms_s_0380r_0328, reaction_r_0328_kms_s_1156r_0328, reaction_r_0328_kms_s_1434_br_0328, x(88), x(112), x(114), const_species_s_0763_b, x(239), const_species_s_1434_b);

% Reaction: id = r_0330, name = citrate to cis-aconitate(3-)	% Local Parameter:   id =  Keq_r_0330, name = Keq_r_0330
	reaction_r_0330_Keq_r_0330=0.6039;
	% Local Parameter:   id =  Vmax_r_0330, name = Vmax_r_0330
	reaction_r_0330_Vmax_r_0330=4.40547;
	% Local Parameter:   id =  kmp_s_0501r_0330, name = kmp_s_0501r_0330
	reaction_r_0330_kmp_s_0501r_0330=0.549;
	% Local Parameter:   id =  kmp_s_1434_br_0330, name = kmp_s_1434_br_0330
	reaction_r_0330_kmp_s_1434_br_0330=0.549;
	% Local Parameter:   id =  kms_s_0507r_0330, name = kms_s_0507r_0330
	reaction_r_0330_kms_s_0507r_0330=0.549;

	reaction_r_0330=compartment_intracellular*function_81(reaction_r_0330_Keq_r_0330, reaction_r_0330_Vmax_r_0330, compartment_intracellular, reaction_r_0330_kmp_s_0501r_0330, reaction_r_0330_kmp_s_1434_br_0330, reaction_r_0330_kms_s_0507r_0330, x(111), x(112), const_species_s_1434_b);

% Reaction: id = r_0336, name = CTP synthase (NH3)	% Local Parameter:   id =  Keq_r_0336, name = Keq_r_0336
	reaction_r_0336_Keq_r_0336=0.521887;
	% Local Parameter:   id =  Vmax_r_0336, name = Vmax_r_0336
	reaction_r_0336_Vmax_r_0336=0.703339;
	% Local Parameter:   id =  kmp_s_0400r_0336, name = kmp_s_0400r_0336
	reaction_r_0336_kmp_s_0400r_0336=1.71907;
	% Local Parameter:   id =  kmp_s_0521r_0336, name = kmp_s_0521r_0336
	reaction_r_0336_kmp_s_0521r_0336=0.549;
	% Local Parameter:   id =  kmp_s_0763_br_0336, name = kmp_s_0763_br_0336
	reaction_r_0336_kmp_s_0763_br_0336=0.549;
	% Local Parameter:   id =  kmp_s_1207r_0336, name = kmp_s_1207r_0336
	reaction_r_0336_kmp_s_1207r_0336=0.549;
	% Local Parameter:   id =  kms_s_0430r_0336, name = kms_s_0430r_0336
	reaction_r_0336_kms_s_0430r_0336=0.549;
	% Local Parameter:   id =  kms_s_0446r_0336, name = kms_s_0446r_0336
	reaction_r_0336_kms_s_0446r_0336=1.09208;
	% Local Parameter:   id =  kms_s_1430r_0336, name = kms_s_1430r_0336
	reaction_r_0336_kms_s_1430r_0336=0.549;

	reaction_r_0336=compartment_intracellular*function_82(reaction_r_0336_Keq_r_0336, reaction_r_0336_Vmax_r_0336, compartment_intracellular, reaction_r_0336_kmp_s_0400r_0336, reaction_r_0336_kmp_s_0521r_0336, reaction_r_0336_kmp_s_0763_br_0336, reaction_r_0336_kmp_s_1207r_0336, reaction_r_0336_kms_s_0430r_0336, reaction_r_0336_kms_s_0446r_0336, reaction_r_0336_kms_s_1430r_0336, x(92), x(97), x(101), x(115), const_species_s_0763_b, const_species_s_1207, x(272));

% Reaction: id = r_0338, name = cystathionine beta-synthase	% Local Parameter:   id =  Keq_r_0338, name = Keq_r_0338
	reaction_r_0338_Keq_r_0338=1.1;
	% Local Parameter:   id =  Vmax_r_0338, name = Vmax_r_0338
	reaction_r_0338_Vmax_r_0338=0.18326;
	% Local Parameter:   id =  kmp_s_0888r_0338, name = kmp_s_0888r_0338
	reaction_r_0338_kmp_s_0888r_0338=0.549;
	% Local Parameter:   id =  kmp_s_1434_br_0338, name = kmp_s_1434_br_0338
	reaction_r_0338_kmp_s_1434_br_0338=0.549;
	% Local Parameter:   id =  kms_s_0917r_0338, name = kms_s_0917r_0338
	reaction_r_0338_kms_s_0917r_0338=0.549;
	% Local Parameter:   id =  kms_s_0943r_0338, name = kms_s_0943r_0338
	reaction_r_0338_kms_s_0943r_0338=0.549;

	reaction_r_0338=compartment_intracellular*function_83(reaction_r_0338_Keq_r_0338, reaction_r_0338_Vmax_r_0338, compartment_intracellular, reaction_r_0338_kmp_s_0888r_0338, reaction_r_0338_kmp_s_1434_br_0338, reaction_r_0338_kms_s_0917r_0338, reaction_r_0338_kms_s_0943r_0338, x(185), x(194), x(203), const_species_s_1434_b);

% Reaction: id = r_0339, name = cystathionine g-lyase	% Local Parameter:   id =  Keq_r_0339, name = Keq_r_0339
	reaction_r_0339_Keq_r_0339=0.6039;
	% Local Parameter:   id =  Vmax_r_0339, name = Vmax_r_0339
	reaction_r_0339_Vmax_r_0339=0.719947;
	% Local Parameter:   id =  kmp_s_0183r_0339, name = kmp_s_0183r_0339
	reaction_r_0339_kmp_s_0183r_0339=0.549;
	% Local Parameter:   id =  kmp_s_0430r_0339, name = kmp_s_0430r_0339
	reaction_r_0339_kmp_s_0430r_0339=0.549;
	% Local Parameter:   id =  kmp_s_0889r_0339, name = kmp_s_0889r_0339
	reaction_r_0339_kmp_s_0889r_0339=0.549;
	% Local Parameter:   id =  kms_s_0888r_0339, name = kms_s_0888r_0339
	reaction_r_0339_kms_s_0888r_0339=0.549;
	% Local Parameter:   id =  kms_s_1434_br_0339, name = kms_s_1434_br_0339
	reaction_r_0339_kms_s_1434_br_0339=0.549;

	reaction_r_0339=compartment_intracellular*function_84(reaction_r_0339_Keq_r_0339, reaction_r_0339_Vmax_r_0339, compartment_intracellular, reaction_r_0339_kmp_s_0183r_0339, reaction_r_0339_kmp_s_0430r_0339, reaction_r_0339_kmp_s_0889r_0339, reaction_r_0339_kms_s_0888r_0339, reaction_r_0339_kms_s_1434_br_0339, x(41), x(97), x(185), x(186), const_species_s_1434_b);

% Reaction: id = r_0340, name = cystathionine gamma-synthase	% Local Parameter:   id =  Keq_r_0340, name = Keq_r_0340
	reaction_r_0340_Keq_r_0340=0.6039;
	% Local Parameter:   id =  Vmax_r_0340, name = Vmax_r_0340
	reaction_r_0340_Vmax_r_0340=0.431968;
	% Local Parameter:   id =  kmp_s_0369r_0340, name = kmp_s_0369r_0340
	reaction_r_0340_kmp_s_0369r_0340=0.549;
	% Local Parameter:   id =  kmp_s_0763_br_0340, name = kmp_s_0763_br_0340
	reaction_r_0340_kmp_s_0763_br_0340=0.549;
	% Local Parameter:   id =  kmp_s_0888r_0340, name = kmp_s_0888r_0340
	reaction_r_0340_kmp_s_0888r_0340=0.549;
	% Local Parameter:   id =  kms_s_0889r_0340, name = kms_s_0889r_0340
	reaction_r_0340_kms_s_0889r_0340=0.549;
	% Local Parameter:   id =  kms_s_1117r_0340, name = kms_s_1117r_0340
	reaction_r_0340_kms_s_1117r_0340=0.549;

	reaction_r_0340=compartment_intracellular*function_85(reaction_r_0340_Keq_r_0340, reaction_r_0340_Vmax_r_0340, compartment_intracellular, reaction_r_0340_kmp_s_0369r_0340, reaction_r_0340_kmp_s_0763_br_0340, reaction_r_0340_kmp_s_0888r_0340, reaction_r_0340_kms_s_0889r_0340, reaction_r_0340_kms_s_1117r_0340, x(86), const_species_s_0763_b, x(185), x(186), x(232));

% Reaction: id = r_0345, name = cytidylate kinase (CMP)	% Local Parameter:   id =  Keq_r_0345, name = Keq_r_0345
	reaction_r_0345_Keq_r_0345=0.698801;
	% Local Parameter:   id =  Vmax_r_0345, name = Vmax_r_0345
	reaction_r_0345_Vmax_r_0345=0.19019;
	% Local Parameter:   id =  kmp_s_0446r_0345, name = kmp_s_0446r_0345
	reaction_r_0345_kmp_s_0446r_0345=1.09208;
	% Local Parameter:   id =  kmp_s_0511r_0345, name = kmp_s_0511r_0345
	reaction_r_0345_kmp_s_0511r_0345=0.549;
	% Local Parameter:   id =  kms_s_0400r_0345, name = kms_s_0400r_0345
	reaction_r_0345_kms_s_0400r_0345=1.71907;
	% Local Parameter:   id =  kms_s_0481r_0345, name = kms_s_0481r_0345
	reaction_r_0345_kms_s_0481r_0345=0.549;

	reaction_r_0345=compartment_intracellular*function_86(reaction_r_0345_Keq_r_0345, reaction_r_0345_Vmax_r_0345, compartment_intracellular, reaction_r_0345_kmp_s_0446r_0345, reaction_r_0345_kmp_s_0511r_0345, reaction_r_0345_kms_s_0400r_0345, reaction_r_0345_kms_s_0481r_0345, x(92), x(101), x(108), x(113));

% Reaction: id = r_0347, name = cytochrome P450 lanosterol 14-alpha-demethylase (NAD)	% Local Parameter:   id =  Keq_r_0347, name = Keq_r_0347
	reaction_r_0347_Keq_r_0347=5726.73;
	% Local Parameter:   id =  Vmax_r_0347, name = Vmax_r_0347
	reaction_r_0347_Vmax_r_0347=0.12924;
	% Local Parameter:   id =  kmp_s_0268r_0347, name = kmp_s_0268r_0347
	reaction_r_0347_kmp_s_0268r_0347=0.549;
	% Local Parameter:   id =  kmp_s_0689r_0347, name = kmp_s_0689r_0347
	reaction_r_0347_kmp_s_0689r_0347=0.549;
	% Local Parameter:   id =  kmp_s_1082r_0347, name = kmp_s_1082r_0347
	reaction_r_0347_kmp_s_1082r_0347=1.50326;
	% Local Parameter:   id =  kmp_s_1434_br_0347, name = kmp_s_1434_br_0347
	reaction_r_0347_kmp_s_1434_br_0347=0.549;
	% Local Parameter:   id =  kms_s_0763_br_0347, name = kms_s_0763_br_0347
	reaction_r_0347_kms_s_0763_br_0347=0.549;
	% Local Parameter:   id =  kms_s_0963r_0347, name = kms_s_0963r_0347
	reaction_r_0347_kms_s_0963r_0347=0.549;
	% Local Parameter:   id =  kms_s_1087r_0347, name = kms_s_1087r_0347
	reaction_r_0347_kms_s_1087r_0347=0.0867353;
	% Local Parameter:   id =  kms_s_1160r_0347, name = kms_s_1160r_0347
	reaction_r_0347_kms_s_1160r_0347=0.549;

	reaction_r_0347=compartment_intracellular*function_87(reaction_r_0347_Keq_r_0347, reaction_r_0347_Vmax_r_0347, compartment_intracellular, reaction_r_0347_kmp_s_0268r_0347, reaction_r_0347_kmp_s_0689r_0347, reaction_r_0347_kmp_s_1082r_0347, reaction_r_0347_kmp_s_1434_br_0347, reaction_r_0347_kms_s_0763_br_0347, reaction_r_0347_kms_s_0963r_0347, reaction_r_0347_kms_s_1087r_0347, reaction_r_0347_kms_s_1160r_0347, x(62), x(153), const_species_s_0763_b, x(208), x(228), x(229), x(240), const_species_s_1434_b);

% Reaction: id = r_0351, name = D-arabinose 1-dehydrogenase (NAD)	% Local Parameter:   id =  Keq_r_0351, name = Keq_r_0351
	reaction_r_0351_Keq_r_0351=34.7263;
	% Local Parameter:   id =  Vmax_r_0351, name = Vmax_r_0351
	reaction_r_0351_Vmax_r_0351=3.30331;
	% Local Parameter:   id =  kmp_s_0530r_0351, name = kmp_s_0530r_0351
	reaction_r_0351_kmp_s_0530r_0351=0.549;
	% Local Parameter:   id =  kmp_s_1082r_0351, name = kmp_s_1082r_0351
	reaction_r_0351_kmp_s_1082r_0351=1.50326;
	% Local Parameter:   id =  kms_s_0529r_0351, name = kms_s_0529r_0351
	reaction_r_0351_kms_s_0529r_0351=0.549;
	% Local Parameter:   id =  kms_s_0763_br_0351, name = kms_s_0763_br_0351
	reaction_r_0351_kms_s_0763_br_0351=0.549;
	% Local Parameter:   id =  kms_s_1087r_0351, name = kms_s_1087r_0351
	reaction_r_0351_kms_s_1087r_0351=0.0867353;

	reaction_r_0351=compartment_intracellular*function_88(reaction_r_0351_Keq_r_0351, reaction_r_0351_Vmax_r_0351, compartment_intracellular, reaction_r_0351_kmp_s_0530r_0351, reaction_r_0351_kmp_s_1082r_0351, reaction_r_0351_kms_s_0529r_0351, reaction_r_0351_kms_s_0763_br_0351, reaction_r_0351_kms_s_1087r_0351, x(116), x(117), const_species_s_0763_b, x(228), x(229));

% Reaction: id = r_0352, name = D-arabinose 1-dehydrogenase (NADP)	% Local Parameter:   id =  Keq_r_0352, name = Keq_r_0352
	reaction_r_0352_Keq_r_0352=0.6039;
	% Local Parameter:   id =  Vmax_r_0352, name = Vmax_r_0352
	reaction_r_0352_Vmax_r_0352=3.30329;
	% Local Parameter:   id =  kmp_s_0529r_0352, name = kmp_s_0529r_0352
	reaction_r_0352_kmp_s_0529r_0352=0.549;
	% Local Parameter:   id =  kmp_s_0763_br_0352, name = kmp_s_0763_br_0352
	reaction_r_0352_kmp_s_0763_br_0352=0.549;
	% Local Parameter:   id =  kmp_s_1096r_0352, name = kmp_s_1096r_0352
	reaction_r_0352_kmp_s_1096r_0352=0.549;
	% Local Parameter:   id =  kms_s_0530r_0352, name = kms_s_0530r_0352
	reaction_r_0352_kms_s_0530r_0352=0.549;
	% Local Parameter:   id =  kms_s_1091r_0352, name = kms_s_1091r_0352
	reaction_r_0352_kms_s_1091r_0352=0.549;

	reaction_r_0352=compartment_intracellular*function_89(reaction_r_0352_Keq_r_0352, reaction_r_0352_Vmax_r_0352, compartment_intracellular, reaction_r_0352_kmp_s_0529r_0352, reaction_r_0352_kmp_s_0763_br_0352, reaction_r_0352_kmp_s_1096r_0352, reaction_r_0352_kms_s_0530r_0352, reaction_r_0352_kms_s_1091r_0352, x(116), x(117), const_species_s_0763_b, x(230), x(231));

% Reaction: id = r_0357, name = dCMP deaminase	% Local Parameter:   id =  Keq_r_0357, name = Keq_r_0357
	reaction_r_0357_Keq_r_0357=0.6039;
	% Local Parameter:   id =  Vmax_r_0357, name = Vmax_r_0357
	reaction_r_0357_Vmax_r_0357=0.0163349;
	% Local Parameter:   id =  kmp_s_0569r_0357, name = kmp_s_0569r_0357
	reaction_r_0357_kmp_s_0569r_0357=0.549;
	% Local Parameter:   id =  kmp_s_0763_br_0357, name = kmp_s_0763_br_0357
	reaction_r_0357_kmp_s_0763_br_0357=0.549;
	% Local Parameter:   id =  kmp_s_1434_br_0357, name = kmp_s_1434_br_0357
	reaction_r_0357_kmp_s_1434_br_0357=0.549;
	% Local Parameter:   id =  kms_s_0430r_0357, name = kms_s_0430r_0357
	reaction_r_0357_kms_s_0430r_0357=0.549;
	% Local Parameter:   id =  kms_s_0624r_0357, name = kms_s_0624r_0357
	reaction_r_0357_kms_s_0624r_0357=0.549;

	reaction_r_0357=compartment_intracellular*function_90(reaction_r_0357_Keq_r_0357, reaction_r_0357_Vmax_r_0357, compartment_intracellular, reaction_r_0357_kmp_s_0569r_0357, reaction_r_0357_kmp_s_0763_br_0357, reaction_r_0357_kmp_s_1434_br_0357, reaction_r_0357_kms_s_0430r_0357, reaction_r_0357_kms_s_0624r_0357, x(97), x(131), x(143), const_species_s_0763_b, const_species_s_1434_b);

% Reaction: id = r_0360, name = deoxyadenylate kinase	% Local Parameter:   id =  Keq_r_0360, name = Keq_r_0360
	reaction_r_0360_Keq_r_0360=0.698801;
	% Local Parameter:   id =  Vmax_r_0360, name = Vmax_r_0360
	reaction_r_0360_Vmax_r_0360=0.015323;
	% Local Parameter:   id =  kmp_s_0446r_0360, name = kmp_s_0446r_0360
	reaction_r_0360_kmp_s_0446r_0360=1.09208;
	% Local Parameter:   id =  kmp_s_0564r_0360, name = kmp_s_0564r_0360
	reaction_r_0360_kmp_s_0564r_0360=0.549;
	% Local Parameter:   id =  kms_s_0400r_0360, name = kms_s_0400r_0360
	reaction_r_0360_kms_s_0400r_0360=1.71907;
	% Local Parameter:   id =  kms_s_0562r_0360, name = kms_s_0562r_0360
	reaction_r_0360_kms_s_0562r_0360=0.549;

	reaction_r_0360=compartment_intracellular*function_91(reaction_r_0360_Keq_r_0360, reaction_r_0360_Vmax_r_0360, compartment_intracellular, reaction_r_0360_kmp_s_0446r_0360, reaction_r_0360_kmp_s_0564r_0360, reaction_r_0360_kms_s_0400r_0360, reaction_r_0360_kms_s_0562r_0360, x(92), x(101), x(128), x(129));

% Reaction: id = r_0362, name = deoxyguanylate kinase (dGMP:ATP)	% Local Parameter:   id =  Keq_r_0362, name = Keq_r_0362
	reaction_r_0362_Keq_r_0362=0.698801;
	% Local Parameter:   id =  Vmax_r_0362, name = Vmax_r_0362
	reaction_r_0362_Vmax_r_0362=0.010395;
	% Local Parameter:   id =  kmp_s_0446r_0362, name = kmp_s_0446r_0362
	reaction_r_0362_kmp_s_0446r_0362=1.09208;
	% Local Parameter:   id =  kmp_s_0593r_0362, name = kmp_s_0593r_0362
	reaction_r_0362_kmp_s_0593r_0362=0.549;
	% Local Parameter:   id =  kms_s_0400r_0362, name = kms_s_0400r_0362
	reaction_r_0362_kms_s_0400r_0362=1.71907;
	% Local Parameter:   id =  kms_s_0591r_0362, name = kms_s_0591r_0362
	reaction_r_0362_kms_s_0591r_0362=0.549;

	reaction_r_0362=compartment_intracellular*function_92(reaction_r_0362_Keq_r_0362, reaction_r_0362_Vmax_r_0362, compartment_intracellular, reaction_r_0362_kmp_s_0446r_0362, reaction_r_0362_kmp_s_0593r_0362, reaction_r_0362_kms_s_0400r_0362, reaction_r_0362_kms_s_0591r_0362, x(92), x(101), x(134), x(135));

% Reaction: id = r_0370, name = diacylglycerol acyltransferase	% Local Parameter:   id =  Keq_r_0370, name = Keq_r_0370
	reaction_r_0370_Keq_r_0370=0.0999269;
	% Local Parameter:   id =  Vmax_r_0370, name = Vmax_r_0370
	reaction_r_0370_Vmax_r_0370=0.0120878;
	% Local Parameter:   id =  kmp_s_0514r_0370, name = kmp_s_0514r_0370
	reaction_r_0370_kmp_s_0514r_0370=0.549;
	% Local Parameter:   id =  kmp_s_0763_br_0370, name = kmp_s_0763_br_0370
	reaction_r_0370_kmp_s_0763_br_0370=0.549;
	% Local Parameter:   id =  kmp_s_1399r_0370, name = kmp_s_1399r_0370
	reaction_r_0370_kmp_s_1399r_0370=0.549;
	% Local Parameter:   id =  kms_s_0386r_0370, name = kms_s_0386r_0370
	reaction_r_0370_kms_s_0386r_0370=0.549;
	% Local Parameter:   id =  kms_s_0596r_0370, name = kms_s_0596r_0370
	reaction_r_0370_kms_s_0596r_0370=0.549;

	reaction_r_0370=compartment_intracellular*function_93(reaction_r_0370_Keq_r_0370, reaction_r_0370_Vmax_r_0370, compartment_intracellular, reaction_r_0370_kmp_s_0514r_0370, reaction_r_0370_kmp_s_0763_br_0370, reaction_r_0370_kmp_s_1399r_0370, reaction_r_0370_kms_s_0386r_0370, reaction_r_0370_kms_s_0596r_0370, x(89), x(114), x(136), const_species_s_0763_b, const_species_s_1399);

% Reaction: id = r_0371, name = diacylglycerol pyrophosphate phosphatase	% Local Parameter:   id =  Keq_r_0371, name = Keq_r_0371
	reaction_r_0371_Keq_r_0371=0.331541;
	% Local Parameter:   id =  Vmax_r_0371, name = Vmax_r_0371
	reaction_r_0371_Vmax_r_0371=0.00525138;
	% Local Parameter:   id =  kmp_s_0596r_0371, name = kmp_s_0596r_0371
	reaction_r_0371_kmp_s_0596r_0371=0.549;
	% Local Parameter:   id =  kmp_s_0763_br_0371, name = kmp_s_0763_br_0371
	reaction_r_0371_kmp_s_0763_br_0371=0.549;
	% Local Parameter:   id =  kmp_s_1207r_0371, name = kmp_s_1207r_0371
	reaction_r_0371_kmp_s_1207r_0371=0.549;
	% Local Parameter:   id =  kms_s_1215r_0371, name = kms_s_1215r_0371
	reaction_r_0371_kms_s_1215r_0371=0.549;
	% Local Parameter:   id =  kms_s_1434_br_0371, name = kms_s_1434_br_0371
	reaction_r_0371_kms_s_1434_br_0371=0.549;

	reaction_r_0371=compartment_intracellular*function_94(reaction_r_0371_Keq_r_0371, reaction_r_0371_Vmax_r_0371, compartment_intracellular, reaction_r_0371_kmp_s_0596r_0371, reaction_r_0371_kmp_s_0763_br_0371, reaction_r_0371_kmp_s_1207r_0371, reaction_r_0371_kms_s_1215r_0371, reaction_r_0371_kms_s_1434_br_0371, x(136), const_species_s_0763_b, const_species_s_1207, x(243), const_species_s_1434_b);

% Reaction: id = r_0374, name = dihydoorotic acid dehydrogenase	% Local Parameter:   id =  Keq_r_0374, name = Keq_r_0374
	reaction_r_0374_Keq_r_0374=1.1;
	% Local Parameter:   id =  Vmax_r_0374, name = Vmax_r_0374
	reaction_r_0374_Vmax_r_0374=0.52591;
	% Local Parameter:   id =  kmp_s_0801r_0374, name = kmp_s_0801r_0374
	reaction_r_0374_kmp_s_0801r_0374=0.549;
	% Local Parameter:   id =  kmp_s_1154r_0374, name = kmp_s_1154r_0374
	reaction_r_0374_kmp_s_1154r_0374=0.549;
	% Local Parameter:   id =  kms_s_0064r_0374, name = kms_s_0064r_0374
	reaction_r_0374_kms_s_0064r_0374=0.549;
	% Local Parameter:   id =  kms_s_1160r_0374, name = kms_s_1160r_0374
	reaction_r_0374_kms_s_1160r_0374=0.549;

	reaction_r_0374=compartment_intracellular*function_95(reaction_r_0374_Keq_r_0374, reaction_r_0374_Vmax_r_0374, compartment_intracellular, reaction_r_0374_kmp_s_0801r_0374, reaction_r_0374_kmp_s_1154r_0374, reaction_r_0374_kms_s_0064r_0374, reaction_r_0374_kms_s_1160r_0374, x(18), x(169), x(237), x(240));

% Reaction: id = r_0375, name = dihydrofolate reductase	% Local Parameter:   id =  Keq_r_0375, name = Keq_r_0375
	reaction_r_0375_Keq_r_0375=2.00364;
	% Local Parameter:   id =  Vmax_r_0375, name = Vmax_r_0375
	reaction_r_0375_Vmax_r_0375=0.0240791;
	% Local Parameter:   id =  kmp_s_0309r_0375, name = kmp_s_0309r_0375
	reaction_r_0375_kmp_s_0309r_0375=0.549;
	% Local Parameter:   id =  kmp_s_1091r_0375, name = kmp_s_1091r_0375
	reaction_r_0375_kmp_s_1091r_0375=0.549;
	% Local Parameter:   id =  kms_s_0601r_0375, name = kms_s_0601r_0375
	reaction_r_0375_kms_s_0601r_0375=0.549;
	% Local Parameter:   id =  kms_s_0763_br_0375, name = kms_s_0763_br_0375
	reaction_r_0375_kms_s_0763_br_0375=0.549;
	% Local Parameter:   id =  kms_s_1096r_0375, name = kms_s_1096r_0375
	reaction_r_0375_kms_s_1096r_0375=0.549;

	reaction_r_0375=compartment_intracellular*function_96(reaction_r_0375_Keq_r_0375, reaction_r_0375_Vmax_r_0375, compartment_intracellular, reaction_r_0375_kmp_s_0309r_0375, reaction_r_0375_kmp_s_1091r_0375, reaction_r_0375_kms_s_0601r_0375, reaction_r_0375_kms_s_0763_br_0375, reaction_r_0375_kms_s_1096r_0375, x(70), x(137), const_species_s_0763_b, x(230), x(231));

% Reaction: id = r_0381, name = dihydroorotase	% Local Parameter:   id =  Keq_r_0381, name = Keq_r_0381
	reaction_r_0381_Keq_r_0381=1.1;
	% Local Parameter:   id =  Vmax_r_0381, name = Vmax_r_0381
	reaction_r_0381_Vmax_r_0381=0.52591;
	% Local Parameter:   id =  kmp_s_0064r_0381, name = kmp_s_0064r_0381
	reaction_r_0381_kmp_s_0064r_0381=0.549;
	% Local Parameter:   id =  kmp_s_1434_br_0381, name = kmp_s_1434_br_0381
	reaction_r_0381_kmp_s_1434_br_0381=0.549;
	% Local Parameter:   id =  kms_s_0763_br_0381, name = kms_s_0763_br_0381
	reaction_r_0381_kms_s_0763_br_0381=0.549;
	% Local Parameter:   id =  kms_s_1073r_0381, name = kms_s_1073r_0381
	reaction_r_0381_kms_s_1073r_0381=0.549;

	reaction_r_0381=compartment_intracellular*function_97(reaction_r_0381_Keq_r_0381, reaction_r_0381_Vmax_r_0381, compartment_intracellular, reaction_r_0381_kmp_s_0064r_0381, reaction_r_0381_kmp_s_1434_br_0381, reaction_r_0381_kms_s_0763_br_0381, reaction_r_0381_kms_s_1073r_0381, x(18), const_species_s_0763_b, x(226), const_species_s_1434_b);

% Reaction: id = r_0384, name = dihydroxy-acid dehydratase (2,3-dihydroxy-3-methylbutanoate)	% Local Parameter:   id =  Keq_r_0384, name = Keq_r_0384
	reaction_r_0384_Keq_r_0384=0.6039;
	% Local Parameter:   id =  Vmax_r_0384, name = Vmax_r_0384
	reaction_r_0384_Vmax_r_0384=1.55099;
	% Local Parameter:   id =  kmp_s_0238r_0384, name = kmp_s_0238r_0384
	reaction_r_0384_kmp_s_0238r_0384=0.549;
	% Local Parameter:   id =  kmp_s_1434_br_0384, name = kmp_s_1434_br_0384
	reaction_r_0384_kmp_s_1434_br_0384=0.549;
	% Local Parameter:   id =  kms_s_0018r_0384, name = kms_s_0018r_0384
	reaction_r_0384_kms_s_0018r_0384=0.549;

	reaction_r_0384=compartment_intracellular*function_98(reaction_r_0384_Keq_r_0384, reaction_r_0384_Vmax_r_0384, compartment_intracellular, reaction_r_0384_kmp_s_0238r_0384, reaction_r_0384_kmp_s_1434_br_0384, reaction_r_0384_kms_s_0018r_0384, x(8), x(54), const_species_s_1434_b);

% Reaction: id = r_0385, name = dihydroxy-acid dehydratase (2,3-dihydroxy-3-methylpentanoate)	% Local Parameter:   id =  Keq_r_0385, name = Keq_r_0385
	reaction_r_0385_Keq_r_0385=0.6039;
	% Local Parameter:   id =  Vmax_r_0385, name = Vmax_r_0385
	reaction_r_0385_Vmax_r_0385=0.523597;
	% Local Parameter:   id =  kmp_s_0058r_0385, name = kmp_s_0058r_0385
	reaction_r_0385_kmp_s_0058r_0385=0.549;
	% Local Parameter:   id =  kmp_s_1434_br_0385, name = kmp_s_1434_br_0385
	reaction_r_0385_kmp_s_1434_br_0385=0.549;
	% Local Parameter:   id =  kms_s_0007r_0385, name = kms_s_0007r_0385
	reaction_r_0385_kms_s_0007r_0385=0.549;

	reaction_r_0385=compartment_intracellular*function_99(reaction_r_0385_Keq_r_0385, reaction_r_0385_Vmax_r_0385, compartment_intracellular, reaction_r_0385_kmp_s_0058r_0385, reaction_r_0385_kmp_s_1434_br_0385, reaction_r_0385_kms_s_0007r_0385, x(2), x(17), const_species_s_1434_b);

% Reaction: id = r_0386, name = dihydroxyacetone kinase	% Local Parameter:   id =  Keq_r_0386, name = Keq_r_0386
	reaction_r_0386_Keq_r_0386=1.04217;
	% Local Parameter:   id =  Vmax_r_0386, name = Vmax_r_0386
	reaction_r_0386_Vmax_r_0386=5.48128;
	% Local Parameter:   id =  kmp_s_0400r_0386, name = kmp_s_0400r_0386
	reaction_r_0386_kmp_s_0400r_0386=1.71907;
	% Local Parameter:   id =  kmp_s_0735r_0386, name = kmp_s_0735r_0386
	reaction_r_0386_kmp_s_0735r_0386=0.601873;
	% Local Parameter:   id =  kmp_s_0763_br_0386, name = kmp_s_0763_br_0386
	reaction_r_0386_kmp_s_0763_br_0386=0.549;
	% Local Parameter:   id =  kms_s_0446r_0386, name = kms_s_0446r_0386
	reaction_r_0386_kms_s_0446r_0386=1.09208;
	% Local Parameter:   id =  kms_s_0734r_0386, name = kms_s_0734r_0386
	reaction_r_0386_kms_s_0734r_0386=0.549;

	reaction_r_0386=compartment_intracellular*function_100(reaction_r_0386_Keq_r_0386, reaction_r_0386_Vmax_r_0386, compartment_intracellular, reaction_r_0386_kmp_s_0400r_0386, reaction_r_0386_kmp_s_0735r_0386, reaction_r_0386_kmp_s_0763_br_0386, reaction_r_0386_kms_s_0446r_0386, reaction_r_0386_kms_s_0734r_0386, x(92), x(101), x(160), x(161), const_species_s_0763_b);

% Reaction: id = r_0387, name = dimethylallyltranstransferase	% Local Parameter:   id =  Keq_r_0387, name = Keq_r_0387
	reaction_r_0387_Keq_r_0387=1.1;
	% Local Parameter:   id =  Vmax_r_0387, name = Vmax_r_0387
	reaction_r_0387_Vmax_r_0387=0.058597;
	% Local Parameter:   id =  kmp_s_0605r_0387, name = kmp_s_0605r_0387
	reaction_r_0387_kmp_s_0605r_0387=0.549;
	% Local Parameter:   id =  kmp_s_0712r_0387, name = kmp_s_0712r_0387
	reaction_r_0387_kmp_s_0712r_0387=0.549;
	% Local Parameter:   id =  kms_s_0850r_0387, name = kms_s_0850r_0387
	reaction_r_0387_kms_s_0850r_0387=0.549;
	% Local Parameter:   id =  kms_s_1257r_0387, name = kms_s_1257r_0387
	reaction_r_0387_kms_s_1257r_0387=0.549;

	reaction_r_0387=compartment_intracellular*function_101(reaction_r_0387_Keq_r_0387, reaction_r_0387_Vmax_r_0387, compartment_intracellular, reaction_r_0387_kmp_s_0605r_0387, reaction_r_0387_kmp_s_0712r_0387, reaction_r_0387_kms_s_0850r_0387, reaction_r_0387_kms_s_1257r_0387, x(138), x(157), x(175), x(250));

% Reaction: id = r_0393, name = dolichyl-phosphate D-mannosyltransferase	% Local Parameter:   id =  Keq_r_0393, name = Keq_r_0393
	reaction_r_0393_Keq_r_0393=1.1;
	% Local Parameter:   id =  Vmax_r_0393, name = Vmax_r_0393
	reaction_r_0393_Vmax_r_0393=3.5112;
	% Local Parameter:   id =  kmp_s_0615r_0393, name = kmp_s_0615r_0393
	reaction_r_0393_kmp_s_0615r_0393=0.549;
	% Local Parameter:   id =  kmp_s_0706r_0393, name = kmp_s_0706r_0393
	reaction_r_0393_kmp_s_0706r_0393=0.549;
	% Local Parameter:   id =  kms_s_0616r_0393, name = kms_s_0616r_0393
	reaction_r_0393_kms_s_0616r_0393=0.549;
	% Local Parameter:   id =  kms_s_0710r_0393, name = kms_s_0710r_0393
	reaction_r_0393_kms_s_0710r_0393=0.549;

	reaction_r_0393=compartment_intracellular*function_102(reaction_r_0393_Keq_r_0393, reaction_r_0393_Vmax_r_0393, compartment_intracellular, reaction_r_0393_kmp_s_0615r_0393, reaction_r_0393_kmp_s_0706r_0393, reaction_r_0393_kms_s_0616r_0393, reaction_r_0393_kms_s_0710r_0393, x(139), x(140), x(155), x(156));

% Reaction: id = r_0394, name = dolichyl-phosphate-mannose--protein mannosyltransferase	% Local Parameter:   id =  Keq_r_0394, name = Keq_r_0394
	reaction_r_0394_Keq_r_0394=0.331541;
	% Local Parameter:   id =  Vmax_r_0394, name = Vmax_r_0394
	reaction_r_0394_Vmax_r_0394=4.51436;
	% Local Parameter:   id =  kmp_s_0616r_0394, name = kmp_s_0616r_0394
	reaction_r_0394_kmp_s_0616r_0394=0.549;
	% Local Parameter:   id =  kmp_s_0763_br_0394, name = kmp_s_0763_br_0394
	reaction_r_0394_kmp_s_0763_br_0394=0.549;
	% Local Parameter:   id =  kmp_s_1011r_0394, name = kmp_s_1011r_0394
	reaction_r_0394_kmp_s_1011r_0394=0.549;
	% Local Parameter:   id =  kms_s_0615r_0394, name = kms_s_0615r_0394
	reaction_r_0394_kms_s_0615r_0394=0.549;

	reaction_r_0394=compartment_intracellular*function_103(reaction_r_0394_Keq_r_0394, reaction_r_0394_Vmax_r_0394, compartment_intracellular, reaction_r_0394_kmp_s_0616r_0394, reaction_r_0394_kmp_s_0763_br_0394, reaction_r_0394_kmp_s_1011r_0394, reaction_r_0394_kms_s_0615r_0394, x(139), x(140), const_species_s_0763_b, x(213));

% Reaction: id = r_0398, name = enolase	% Local Parameter:   id =  Keq_r_0398, name = Keq_r_0398
	reaction_r_0398_Keq_r_0398=6500.0;
	% Local Parameter:   id =  Vmax_r_0398, name = Vmax_r_0398
	reaction_r_0398_Vmax_r_0398=6.15027;
	% Local Parameter:   id =  kmp_s_1243r_0398, name = kmp_s_1243r_0398
	reaction_r_0398_kmp_s_1243r_0398=0.0271093;
	% Local Parameter:   id =  kmp_s_1434_br_0398, name = kmp_s_1434_br_0398
	reaction_r_0398_kmp_s_1434_br_0398=0.549;
	% Local Parameter:   id =  kms_s_0193r_0398, name = kms_s_0193r_0398
	reaction_r_0398_kms_s_0193r_0398=0.0515066;

	reaction_r_0398=compartment_intracellular*function_104(reaction_r_0398_Keq_r_0398, reaction_r_0398_Vmax_r_0398, compartment_intracellular, reaction_r_0398_kmp_s_1243r_0398, reaction_r_0398_kmp_s_1434_br_0398, reaction_r_0398_kms_s_0193r_0398, x(43), x(249), const_species_s_1434_b);

% Reaction: id = r_0417, name = fatty acid synthase (n-C10:0)	% Local Parameter:   id =  Keq_r_0417, name = Keq_r_0417
	reaction_r_0417_Keq_r_0417=3.64962;
	% Local Parameter:   id =  Vmax_r_0417, name = Vmax_r_0417
	reaction_r_0417_Vmax_r_0417=0.00599719;
	% Local Parameter:   id =  kmp_s_0470r_0417, name = kmp_s_0470r_0417
	reaction_r_0417_kmp_s_0470r_0417=1.0;
	% Local Parameter:   id =  kmp_s_0514r_0417, name = kmp_s_0514r_0417
	reaction_r_0417_kmp_s_0514r_0417=0.549;
	% Local Parameter:   id =  kmp_s_0574r_0417, name = kmp_s_0574r_0417
	reaction_r_0417_kmp_s_0574r_0417=0.549;
	% Local Parameter:   id =  kmp_s_1091r_0417, name = kmp_s_1091r_0417
	reaction_r_0417_kmp_s_1091r_0417=0.549;
	% Local Parameter:   id =  kmp_s_1434_br_0417, name = kmp_s_1434_br_0417
	reaction_r_0417_kmp_s_1434_br_0417=0.549;
	% Local Parameter:   id =  kms_s_0763_br_0417, name = kms_s_0763_br_0417
	reaction_r_0417_kms_s_0763_br_0417=0.549;
	% Local Parameter:   id =  kms_s_1005r_0417, name = kms_s_1005r_0417
	reaction_r_0417_kms_s_1005r_0417=0.549;
	% Local Parameter:   id =  kms_s_1096r_0417, name = kms_s_1096r_0417
	reaction_r_0417_kms_s_1096r_0417=0.549;
	% Local Parameter:   id =  kms_s_1132r_0417, name = kms_s_1132r_0417
	reaction_r_0417_kms_s_1132r_0417=0.549;

	reaction_r_0417=compartment_intracellular*function_105(reaction_r_0417_Keq_r_0417, reaction_r_0417_Vmax_r_0417, compartment_intracellular, reaction_r_0417_kmp_s_0470r_0417, reaction_r_0417_kmp_s_0514r_0417, reaction_r_0417_kmp_s_0574r_0417, reaction_r_0417_kmp_s_1091r_0417, reaction_r_0417_kmp_s_1434_br_0417, reaction_r_0417_kms_s_0763_br_0417, reaction_r_0417_kms_s_1005r_0417, reaction_r_0417_kms_s_1096r_0417, reaction_r_0417_kms_s_1132r_0417, x(107), x(114), x(132), const_species_s_0763_b, x(212), x(230), x(231), x(234), const_species_s_1434_b);

% Reaction: id = r_0418, name = fatty acid synthase (n-C12:0)	% Local Parameter:   id =  Keq_r_0418, name = Keq_r_0418
	reaction_r_0418_Keq_r_0418=3.64962;
	% Local Parameter:   id =  Vmax_r_0418, name = Vmax_r_0418
	reaction_r_0418_Vmax_r_0418=0.00599719;
	% Local Parameter:   id =  kmp_s_0470r_0418, name = kmp_s_0470r_0418
	reaction_r_0418_kmp_s_0470r_0418=1.0;
	% Local Parameter:   id =  kmp_s_0514r_0418, name = kmp_s_0514r_0418
	reaction_r_0418_kmp_s_0514r_0418=0.549;
	% Local Parameter:   id =  kmp_s_0968r_0418, name = kmp_s_0968r_0418
	reaction_r_0418_kmp_s_0968r_0418=0.549;
	% Local Parameter:   id =  kmp_s_1091r_0418, name = kmp_s_1091r_0418
	reaction_r_0418_kmp_s_1091r_0418=0.549;
	% Local Parameter:   id =  kmp_s_1434_br_0418, name = kmp_s_1434_br_0418
	reaction_r_0418_kmp_s_1434_br_0418=0.549;
	% Local Parameter:   id =  kms_s_0574r_0418, name = kms_s_0574r_0418
	reaction_r_0418_kms_s_0574r_0418=0.549;
	% Local Parameter:   id =  kms_s_0763_br_0418, name = kms_s_0763_br_0418
	reaction_r_0418_kms_s_0763_br_0418=0.549;
	% Local Parameter:   id =  kms_s_1005r_0418, name = kms_s_1005r_0418
	reaction_r_0418_kms_s_1005r_0418=0.549;
	% Local Parameter:   id =  kms_s_1096r_0418, name = kms_s_1096r_0418
	reaction_r_0418_kms_s_1096r_0418=0.549;

	reaction_r_0418=compartment_intracellular*function_106(reaction_r_0418_Keq_r_0418, reaction_r_0418_Vmax_r_0418, compartment_intracellular, reaction_r_0418_kmp_s_0470r_0418, reaction_r_0418_kmp_s_0514r_0418, reaction_r_0418_kmp_s_0968r_0418, reaction_r_0418_kmp_s_1091r_0418, reaction_r_0418_kmp_s_1434_br_0418, reaction_r_0418_kms_s_0574r_0418, reaction_r_0418_kms_s_0763_br_0418, reaction_r_0418_kms_s_1005r_0418, reaction_r_0418_kms_s_1096r_0418, x(107), x(114), x(132), const_species_s_0763_b, x(209), x(212), x(230), x(231), const_species_s_1434_b);

% Reaction: id = r_0419, name = fatty acid synthase (n-C14:0)	% Local Parameter:   id =  Keq_r_0419, name = Keq_r_0419
	reaction_r_0419_Keq_r_0419=3.64962;
	% Local Parameter:   id =  Vmax_r_0419, name = Vmax_r_0419
	reaction_r_0419_Vmax_r_0419=0.00599719;
	% Local Parameter:   id =  kmp_s_0470r_0419, name = kmp_s_0470r_0419
	reaction_r_0419_kmp_s_0470r_0419=1.0;
	% Local Parameter:   id =  kmp_s_0514r_0419, name = kmp_s_0514r_0419
	reaction_r_0419_kmp_s_0514r_0419=0.549;
	% Local Parameter:   id =  kmp_s_1028r_0419, name = kmp_s_1028r_0419
	reaction_r_0419_kmp_s_1028r_0419=0.549;
	% Local Parameter:   id =  kmp_s_1091r_0419, name = kmp_s_1091r_0419
	reaction_r_0419_kmp_s_1091r_0419=0.549;
	% Local Parameter:   id =  kmp_s_1434_br_0419, name = kmp_s_1434_br_0419
	reaction_r_0419_kmp_s_1434_br_0419=0.549;
	% Local Parameter:   id =  kms_s_0763_br_0419, name = kms_s_0763_br_0419
	reaction_r_0419_kms_s_0763_br_0419=0.549;
	% Local Parameter:   id =  kms_s_0968r_0419, name = kms_s_0968r_0419
	reaction_r_0419_kms_s_0968r_0419=0.549;
	% Local Parameter:   id =  kms_s_1005r_0419, name = kms_s_1005r_0419
	reaction_r_0419_kms_s_1005r_0419=0.549;
	% Local Parameter:   id =  kms_s_1096r_0419, name = kms_s_1096r_0419
	reaction_r_0419_kms_s_1096r_0419=0.549;

	reaction_r_0419=compartment_intracellular*function_107(reaction_r_0419_Keq_r_0419, reaction_r_0419_Vmax_r_0419, compartment_intracellular, reaction_r_0419_kmp_s_0470r_0419, reaction_r_0419_kmp_s_0514r_0419, reaction_r_0419_kmp_s_1028r_0419, reaction_r_0419_kmp_s_1091r_0419, reaction_r_0419_kmp_s_1434_br_0419, reaction_r_0419_kms_s_0763_br_0419, reaction_r_0419_kms_s_0968r_0419, reaction_r_0419_kms_s_1005r_0419, reaction_r_0419_kms_s_1096r_0419, x(107), x(114), const_species_s_0763_b, x(209), x(212), x(216), x(230), x(231), const_species_s_1434_b);

% Reaction: id = r_0421, name = fatty acid synthase (n-C16:0)	% Local Parameter:   id =  Keq_r_0421, name = Keq_r_0421
	reaction_r_0421_Keq_r_0421=3.64962;
	% Local Parameter:   id =  Vmax_r_0421, name = Vmax_r_0421
	reaction_r_0421_Vmax_r_0421=0.00599719;
	% Local Parameter:   id =  kmp_s_0470r_0421, name = kmp_s_0470r_0421
	reaction_r_0421_kmp_s_0470r_0421=1.0;
	% Local Parameter:   id =  kmp_s_0514r_0421, name = kmp_s_0514r_0421
	reaction_r_0421_kmp_s_0514r_0421=0.549;
	% Local Parameter:   id =  kmp_s_1091r_0421, name = kmp_s_1091r_0421
	reaction_r_0421_kmp_s_1091r_0421=0.549;
	% Local Parameter:   id =  kmp_s_1170r_0421, name = kmp_s_1170r_0421
	reaction_r_0421_kmp_s_1170r_0421=0.549;
	% Local Parameter:   id =  kmp_s_1434_br_0421, name = kmp_s_1434_br_0421
	reaction_r_0421_kmp_s_1434_br_0421=0.549;
	% Local Parameter:   id =  kms_s_0763_br_0421, name = kms_s_0763_br_0421
	reaction_r_0421_kms_s_0763_br_0421=0.549;
	% Local Parameter:   id =  kms_s_1005r_0421, name = kms_s_1005r_0421
	reaction_r_0421_kms_s_1005r_0421=0.549;
	% Local Parameter:   id =  kms_s_1028r_0421, name = kms_s_1028r_0421
	reaction_r_0421_kms_s_1028r_0421=0.549;
	% Local Parameter:   id =  kms_s_1096r_0421, name = kms_s_1096r_0421
	reaction_r_0421_kms_s_1096r_0421=0.549;

	reaction_r_0421=compartment_intracellular*function_108(reaction_r_0421_Keq_r_0421, reaction_r_0421_Vmax_r_0421, compartment_intracellular, reaction_r_0421_kmp_s_0470r_0421, reaction_r_0421_kmp_s_0514r_0421, reaction_r_0421_kmp_s_1091r_0421, reaction_r_0421_kmp_s_1170r_0421, reaction_r_0421_kmp_s_1434_br_0421, reaction_r_0421_kms_s_0763_br_0421, reaction_r_0421_kms_s_1005r_0421, reaction_r_0421_kms_s_1028r_0421, reaction_r_0421_kms_s_1096r_0421, x(107), x(114), const_species_s_0763_b, x(212), x(216), x(230), x(231), x(241), const_species_s_1434_b);

% Reaction: id = r_0423, name = fatty acid synthase (n-C18:0)	% Local Parameter:   id =  Keq_r_0423, name = Keq_r_0423
	reaction_r_0423_Keq_r_0423=3.64962;
	% Local Parameter:   id =  Vmax_r_0423, name = Vmax_r_0423
	reaction_r_0423_Vmax_r_0423=0.00599718;
	% Local Parameter:   id =  kmp_s_0470r_0423, name = kmp_s_0470r_0423
	reaction_r_0423_kmp_s_0470r_0423=1.0;
	% Local Parameter:   id =  kmp_s_0514r_0423, name = kmp_s_0514r_0423
	reaction_r_0423_kmp_s_0514r_0423=0.549;
	% Local Parameter:   id =  kmp_s_1091r_0423, name = kmp_s_1091r_0423
	reaction_r_0423_kmp_s_1091r_0423=0.549;
	% Local Parameter:   id =  kmp_s_1329r_0423, name = kmp_s_1329r_0423
	reaction_r_0423_kmp_s_1329r_0423=0.549;
	% Local Parameter:   id =  kmp_s_1434_br_0423, name = kmp_s_1434_br_0423
	reaction_r_0423_kmp_s_1434_br_0423=0.549;
	% Local Parameter:   id =  kms_s_0763_br_0423, name = kms_s_0763_br_0423
	reaction_r_0423_kms_s_0763_br_0423=0.549;
	% Local Parameter:   id =  kms_s_1005r_0423, name = kms_s_1005r_0423
	reaction_r_0423_kms_s_1005r_0423=0.549;
	% Local Parameter:   id =  kms_s_1096r_0423, name = kms_s_1096r_0423
	reaction_r_0423_kms_s_1096r_0423=0.549;
	% Local Parameter:   id =  kms_s_1170r_0423, name = kms_s_1170r_0423
	reaction_r_0423_kms_s_1170r_0423=0.549;

	reaction_r_0423=compartment_intracellular*function_109(reaction_r_0423_Keq_r_0423, reaction_r_0423_Vmax_r_0423, compartment_intracellular, reaction_r_0423_kmp_s_0470r_0423, reaction_r_0423_kmp_s_0514r_0423, reaction_r_0423_kmp_s_1091r_0423, reaction_r_0423_kmp_s_1329r_0423, reaction_r_0423_kmp_s_1434_br_0423, reaction_r_0423_kms_s_0763_br_0423, reaction_r_0423_kms_s_1005r_0423, reaction_r_0423_kms_s_1096r_0423, reaction_r_0423_kms_s_1170r_0423, x(107), x(114), const_species_s_0763_b, x(212), x(230), x(231), x(241), x(261), const_species_s_1434_b);

% Reaction: id = r_0425, name = fatty acid synthase (n-C24:0), lumped reaction	% Local Parameter:   id =  Keq_r_0425, name = Keq_r_0425
	reaction_r_0425_Keq_r_0425=40.2;
	% Local Parameter:   id =  Vmax_r_0425, name = Vmax_r_0425
	reaction_r_0425_Vmax_r_0425=0.0118696;
	% Local Parameter:   id =  kmp_s_0470r_0425, name = kmp_s_0470r_0425
	reaction_r_0425_kmp_s_0470r_0425=1.0;
	% Local Parameter:   id =  kmp_s_0514r_0425, name = kmp_s_0514r_0425
	reaction_r_0425_kmp_s_0514r_0425=0.549;
	% Local Parameter:   id =  kmp_s_0987r_0425, name = kmp_s_0987r_0425
	reaction_r_0425_kmp_s_0987r_0425=0.549;
	% Local Parameter:   id =  kmp_s_1091r_0425, name = kmp_s_1091r_0425
	reaction_r_0425_kmp_s_1091r_0425=0.549;
	% Local Parameter:   id =  kmp_s_1434_br_0425, name = kmp_s_1434_br_0425
	reaction_r_0425_kmp_s_1434_br_0425=0.549;
	% Local Parameter:   id =  kms_s_0763_br_0425, name = kms_s_0763_br_0425
	reaction_r_0425_kms_s_0763_br_0425=0.549;
	% Local Parameter:   id =  kms_s_1005r_0425, name = kms_s_1005r_0425
	reaction_r_0425_kms_s_1005r_0425=0.549;
	% Local Parameter:   id =  kms_s_1096r_0425, name = kms_s_1096r_0425
	reaction_r_0425_kms_s_1096r_0425=0.549;
	% Local Parameter:   id =  kms_s_1329r_0425, name = kms_s_1329r_0425
	reaction_r_0425_kms_s_1329r_0425=0.549;

	reaction_r_0425=compartment_intracellular*function_110(reaction_r_0425_Keq_r_0425, reaction_r_0425_Vmax_r_0425, compartment_intracellular, reaction_r_0425_kmp_s_0470r_0425, reaction_r_0425_kmp_s_0514r_0425, reaction_r_0425_kmp_s_0987r_0425, reaction_r_0425_kmp_s_1091r_0425, reaction_r_0425_kmp_s_1434_br_0425, reaction_r_0425_kms_s_0763_br_0425, reaction_r_0425_kms_s_1005r_0425, reaction_r_0425_kms_s_1096r_0425, reaction_r_0425_kms_s_1329r_0425, x(107), x(114), const_species_s_0763_b, x(211), x(212), x(230), x(231), x(261), const_species_s_1434_b);

% Reaction: id = r_0429, name = fatty acyl-CoA synthase (n-C10:0CoA)	% Local Parameter:   id =  Keq_r_0429, name = Keq_r_0429
	reaction_r_0429_Keq_r_0429=3.64962;
	% Local Parameter:   id =  Vmax_r_0429, name = Vmax_r_0429
	reaction_r_0429_Vmax_r_0429=0.0179399;
	% Local Parameter:   id =  kmp_s_0470r_0429, name = kmp_s_0470r_0429
	reaction_r_0429_kmp_s_0470r_0429=1.0;
	% Local Parameter:   id =  kmp_s_0514r_0429, name = kmp_s_0514r_0429
	reaction_r_0429_kmp_s_0514r_0429=0.549;
	% Local Parameter:   id =  kmp_s_0582r_0429, name = kmp_s_0582r_0429
	reaction_r_0429_kmp_s_0582r_0429=0.549;
	% Local Parameter:   id =  kmp_s_1091r_0429, name = kmp_s_1091r_0429
	reaction_r_0429_kmp_s_1091r_0429=0.549;
	% Local Parameter:   id =  kmp_s_1434_br_0429, name = kmp_s_1434_br_0429
	reaction_r_0429_kmp_s_1434_br_0429=0.549;
	% Local Parameter:   id =  kms_s_0763_br_0429, name = kms_s_0763_br_0429
	reaction_r_0429_kms_s_0763_br_0429=0.549;
	% Local Parameter:   id =  kms_s_1005r_0429, name = kms_s_1005r_0429
	reaction_r_0429_kms_s_1005r_0429=0.549;
	% Local Parameter:   id =  kms_s_1096r_0429, name = kms_s_1096r_0429
	reaction_r_0429_kms_s_1096r_0429=0.549;
	% Local Parameter:   id =  kms_s_1140r_0429, name = kms_s_1140r_0429
	reaction_r_0429_kms_s_1140r_0429=0.549;

	reaction_r_0429=compartment_intracellular*function_111(reaction_r_0429_Keq_r_0429, reaction_r_0429_Vmax_r_0429, compartment_intracellular, reaction_r_0429_kmp_s_0470r_0429, reaction_r_0429_kmp_s_0514r_0429, reaction_r_0429_kmp_s_0582r_0429, reaction_r_0429_kmp_s_1091r_0429, reaction_r_0429_kmp_s_1434_br_0429, reaction_r_0429_kms_s_0763_br_0429, reaction_r_0429_kms_s_1005r_0429, reaction_r_0429_kms_s_1096r_0429, reaction_r_0429_kms_s_1140r_0429, x(107), x(114), x(133), const_species_s_0763_b, x(212), x(230), x(231), x(235), const_species_s_1434_b);

% Reaction: id = r_0430, name = fatty acyl-CoA synthase (n-C8:0CoA), lumped reaction	% Local Parameter:   id =  Keq_r_0430, name = Keq_r_0430
	reaction_r_0430_Keq_r_0430=40.2;
	% Local Parameter:   id =  Vmax_r_0430, name = Vmax_r_0430
	reaction_r_0430_Vmax_r_0430=0.0237906;
	% Local Parameter:   id =  kmp_s_0470r_0430, name = kmp_s_0470r_0430
	reaction_r_0430_kmp_s_0470r_0430=1.0;
	% Local Parameter:   id =  kmp_s_0514r_0430, name = kmp_s_0514r_0430
	reaction_r_0430_kmp_s_0514r_0430=0.549;
	% Local Parameter:   id =  kmp_s_1091r_0430, name = kmp_s_1091r_0430
	reaction_r_0430_kmp_s_1091r_0430=0.549;
	% Local Parameter:   id =  kmp_s_1140r_0430, name = kmp_s_1140r_0430
	reaction_r_0430_kmp_s_1140r_0430=0.549;
	% Local Parameter:   id =  kmp_s_1434_br_0430, name = kmp_s_1434_br_0430
	reaction_r_0430_kmp_s_1434_br_0430=0.549;
	% Local Parameter:   id =  kms_s_0380r_0430, name = kms_s_0380r_0430
	reaction_r_0430_kms_s_0380r_0430=0.549;
	% Local Parameter:   id =  kms_s_0763_br_0430, name = kms_s_0763_br_0430
	reaction_r_0430_kms_s_0763_br_0430=0.549;
	% Local Parameter:   id =  kms_s_1005r_0430, name = kms_s_1005r_0430
	reaction_r_0430_kms_s_1005r_0430=0.549;
	% Local Parameter:   id =  kms_s_1096r_0430, name = kms_s_1096r_0430
	reaction_r_0430_kms_s_1096r_0430=0.549;

	reaction_r_0430=compartment_intracellular*function_112(reaction_r_0430_Keq_r_0430, reaction_r_0430_Vmax_r_0430, compartment_intracellular, reaction_r_0430_kmp_s_0470r_0430, reaction_r_0430_kmp_s_0514r_0430, reaction_r_0430_kmp_s_1091r_0430, reaction_r_0430_kmp_s_1140r_0430, reaction_r_0430_kmp_s_1434_br_0430, reaction_r_0430_kms_s_0380r_0430, reaction_r_0430_kms_s_0763_br_0430, reaction_r_0430_kms_s_1005r_0430, reaction_r_0430_kms_s_1096r_0430, x(88), x(107), x(114), const_species_s_0763_b, x(212), x(230), x(231), x(235), const_species_s_1434_b);

% Reaction: id = r_0437, name = fatty-acid--CoA ligase (n-C24:0)	% Local Parameter:   id =  Keq_r_0437, name = Keq_r_0437
	reaction_r_0437_Keq_r_0437=1.26869;
	% Local Parameter:   id =  Vmax_r_0437, name = Vmax_r_0437
	reaction_r_0437_Vmax_r_0437=0.0038115;
	% Local Parameter:   id =  kmp_s_0434r_0437, name = kmp_s_0434r_0437
	reaction_r_0437_kmp_s_0434r_0437=1.25956;
	% Local Parameter:   id =  kmp_s_0605r_0437, name = kmp_s_0605r_0437
	reaction_r_0437_kmp_s_0605r_0437=0.549;
	% Local Parameter:   id =  kmp_s_1355r_0437, name = kmp_s_1355r_0437
	reaction_r_0437_kmp_s_1355r_0437=0.549;
	% Local Parameter:   id =  kms_s_0446r_0437, name = kms_s_0446r_0437
	reaction_r_0437_kms_s_0446r_0437=1.09208;
	% Local Parameter:   id =  kms_s_0514r_0437, name = kms_s_0514r_0437
	reaction_r_0437_kms_s_0514r_0437=0.549;
	% Local Parameter:   id =  kms_s_0987r_0437, name = kms_s_0987r_0437
	reaction_r_0437_kms_s_0987r_0437=0.549;

	reaction_r_0437=compartment_intracellular*function_113(reaction_r_0437_Keq_r_0437, reaction_r_0437_Vmax_r_0437, compartment_intracellular, reaction_r_0437_kmp_s_0434r_0437, reaction_r_0437_kmp_s_0605r_0437, reaction_r_0437_kmp_s_1355r_0437, reaction_r_0437_kms_s_0446r_0437, reaction_r_0437_kms_s_0514r_0437, reaction_r_0437_kms_s_0987r_0437, x(98), x(101), x(114), x(138), x(211), x(267));

% Reaction: id = r_0439, name = fatty-acid--CoA ligase (octadecanoate)	% Local Parameter:   id =  Keq_r_0439, name = Keq_r_0439
	reaction_r_0439_Keq_r_0439=0.953736;
	% Local Parameter:   id =  Vmax_r_0439, name = Vmax_r_0439
	reaction_r_0439_Vmax_r_0439=0.001914;
	% Local Parameter:   id =  kmp_s_0446r_0439, name = kmp_s_0446r_0439
	reaction_r_0439_kmp_s_0446r_0439=1.09208;
	% Local Parameter:   id =  kmp_s_0514r_0439, name = kmp_s_0514r_0439
	reaction_r_0439_kmp_s_0514r_0439=0.549;
	% Local Parameter:   id =  kmp_s_1329r_0439, name = kmp_s_1329r_0439
	reaction_r_0439_kmp_s_1329r_0439=0.549;
	% Local Parameter:   id =  kms_s_0434r_0439, name = kms_s_0434r_0439
	reaction_r_0439_kms_s_0434r_0439=1.25956;
	% Local Parameter:   id =  kms_s_0605r_0439, name = kms_s_0605r_0439
	reaction_r_0439_kms_s_0605r_0439=0.549;
	% Local Parameter:   id =  kms_s_1334r_0439, name = kms_s_1334r_0439
	reaction_r_0439_kms_s_1334r_0439=0.549;

	reaction_r_0439=compartment_intracellular*function_114(reaction_r_0439_Keq_r_0439, reaction_r_0439_Vmax_r_0439, compartment_intracellular, reaction_r_0439_kmp_s_0446r_0439, reaction_r_0439_kmp_s_0514r_0439, reaction_r_0439_kmp_s_1329r_0439, reaction_r_0439_kms_s_0434r_0439, reaction_r_0439_kms_s_0605r_0439, reaction_r_0439_kms_s_1334r_0439, x(98), x(101), x(114), x(138), x(261), x(262));

% Reaction: id = r_0442, name = fatty-acid--CoA ligase (octanoate)	% Local Parameter:   id =  Keq_r_0442, name = Keq_r_0442
	reaction_r_0442_Keq_r_0442=0.953736;
	% Local Parameter:   id =  Vmax_r_0442, name = Vmax_r_0442
	reaction_r_0442_Vmax_r_0442=0.001914;
	% Local Parameter:   id =  kmp_s_0446r_0442, name = kmp_s_0446r_0442
	reaction_r_0442_kmp_s_0446r_0442=1.09208;
	% Local Parameter:   id =  kmp_s_0514r_0442, name = kmp_s_0514r_0442
	reaction_r_0442_kmp_s_0514r_0442=0.549;
	% Local Parameter:   id =  kmp_s_1132r_0442, name = kmp_s_1132r_0442
	reaction_r_0442_kmp_s_1132r_0442=0.549;
	% Local Parameter:   id =  kms_s_0434r_0442, name = kms_s_0434r_0442
	reaction_r_0442_kms_s_0434r_0442=1.25956;
	% Local Parameter:   id =  kms_s_0605r_0442, name = kms_s_0605r_0442
	reaction_r_0442_kms_s_0605r_0442=0.549;
	% Local Parameter:   id =  kms_s_1140r_0442, name = kms_s_1140r_0442
	reaction_r_0442_kms_s_1140r_0442=0.549;

	reaction_r_0442=compartment_intracellular*function_115(reaction_r_0442_Keq_r_0442, reaction_r_0442_Vmax_r_0442, compartment_intracellular, reaction_r_0442_kmp_s_0446r_0442, reaction_r_0442_kmp_s_0514r_0442, reaction_r_0442_kmp_s_1132r_0442, reaction_r_0442_kms_s_0434r_0442, reaction_r_0442_kms_s_0605r_0442, reaction_r_0442_kms_s_1140r_0442, x(98), x(101), x(114), x(138), x(234), x(235));

% Reaction: id = r_0464, name = fatty-acyl-CoA synthase (n-C12:0CoA)	% Local Parameter:   id =  Keq_r_0464, name = Keq_r_0464
	reaction_r_0464_Keq_r_0464=3.64962;
	% Local Parameter:   id =  Vmax_r_0464, name = Vmax_r_0464
	reaction_r_0464_Vmax_r_0464=0.0179399;
	% Local Parameter:   id =  kmp_s_0470r_0464, name = kmp_s_0470r_0464
	reaction_r_0464_kmp_s_0470r_0464=1.0;
	% Local Parameter:   id =  kmp_s_0514r_0464, name = kmp_s_0514r_0464
	reaction_r_0464_kmp_s_0514r_0464=0.549;
	% Local Parameter:   id =  kmp_s_0977r_0464, name = kmp_s_0977r_0464
	reaction_r_0464_kmp_s_0977r_0464=0.549;
	% Local Parameter:   id =  kmp_s_1091r_0464, name = kmp_s_1091r_0464
	reaction_r_0464_kmp_s_1091r_0464=0.549;
	% Local Parameter:   id =  kmp_s_1434_br_0464, name = kmp_s_1434_br_0464
	reaction_r_0464_kmp_s_1434_br_0464=0.549;
	% Local Parameter:   id =  kms_s_0582r_0464, name = kms_s_0582r_0464
	reaction_r_0464_kms_s_0582r_0464=0.549;
	% Local Parameter:   id =  kms_s_0763_br_0464, name = kms_s_0763_br_0464
	reaction_r_0464_kms_s_0763_br_0464=0.549;
	% Local Parameter:   id =  kms_s_1005r_0464, name = kms_s_1005r_0464
	reaction_r_0464_kms_s_1005r_0464=0.549;
	% Local Parameter:   id =  kms_s_1096r_0464, name = kms_s_1096r_0464
	reaction_r_0464_kms_s_1096r_0464=0.549;

	reaction_r_0464=compartment_intracellular*function_116(reaction_r_0464_Keq_r_0464, reaction_r_0464_Vmax_r_0464, compartment_intracellular, reaction_r_0464_kmp_s_0470r_0464, reaction_r_0464_kmp_s_0514r_0464, reaction_r_0464_kmp_s_0977r_0464, reaction_r_0464_kmp_s_1091r_0464, reaction_r_0464_kmp_s_1434_br_0464, reaction_r_0464_kms_s_0582r_0464, reaction_r_0464_kms_s_0763_br_0464, reaction_r_0464_kms_s_1005r_0464, reaction_r_0464_kms_s_1096r_0464, x(107), x(114), x(133), const_species_s_0763_b, x(210), x(212), x(230), x(231), const_species_s_1434_b);

% Reaction: id = r_0465, name = fatty-acyl-CoA synthase (n-C14:0CoA)	% Local Parameter:   id =  Keq_r_0465, name = Keq_r_0465
	reaction_r_0465_Keq_r_0465=3.64962;
	% Local Parameter:   id =  Vmax_r_0465, name = Vmax_r_0465
	reaction_r_0465_Vmax_r_0465=0.0179399;
	% Local Parameter:   id =  kmp_s_0470r_0465, name = kmp_s_0470r_0465
	reaction_r_0465_kmp_s_0470r_0465=1.0;
	% Local Parameter:   id =  kmp_s_0514r_0465, name = kmp_s_0514r_0465
	reaction_r_0465_kmp_s_0514r_0465=0.549;
	% Local Parameter:   id =  kmp_s_1044r_0465, name = kmp_s_1044r_0465
	reaction_r_0465_kmp_s_1044r_0465=0.549;
	% Local Parameter:   id =  kmp_s_1091r_0465, name = kmp_s_1091r_0465
	reaction_r_0465_kmp_s_1091r_0465=0.549;
	% Local Parameter:   id =  kmp_s_1434_br_0465, name = kmp_s_1434_br_0465
	reaction_r_0465_kmp_s_1434_br_0465=0.549;
	% Local Parameter:   id =  kms_s_0763_br_0465, name = kms_s_0763_br_0465
	reaction_r_0465_kms_s_0763_br_0465=0.549;
	% Local Parameter:   id =  kms_s_0977r_0465, name = kms_s_0977r_0465
	reaction_r_0465_kms_s_0977r_0465=0.549;
	% Local Parameter:   id =  kms_s_1005r_0465, name = kms_s_1005r_0465
	reaction_r_0465_kms_s_1005r_0465=0.549;
	% Local Parameter:   id =  kms_s_1096r_0465, name = kms_s_1096r_0465
	reaction_r_0465_kms_s_1096r_0465=0.549;

	reaction_r_0465=compartment_intracellular*function_117(reaction_r_0465_Keq_r_0465, reaction_r_0465_Vmax_r_0465, compartment_intracellular, reaction_r_0465_kmp_s_0470r_0465, reaction_r_0465_kmp_s_0514r_0465, reaction_r_0465_kmp_s_1044r_0465, reaction_r_0465_kmp_s_1091r_0465, reaction_r_0465_kmp_s_1434_br_0465, reaction_r_0465_kms_s_0763_br_0465, reaction_r_0465_kms_s_0977r_0465, reaction_r_0465_kms_s_1005r_0465, reaction_r_0465_kms_s_1096r_0465, x(107), x(114), const_species_s_0763_b, x(210), x(212), x(217), x(230), x(231), const_species_s_1434_b);

% Reaction: id = r_0466, name = fatty-acyl-CoA synthase (n-C16:0CoA)	% Local Parameter:   id =  Keq_r_0466, name = Keq_r_0466
	reaction_r_0466_Keq_r_0466=3.64962;
	% Local Parameter:   id =  Vmax_r_0466, name = Vmax_r_0466
	reaction_r_0466_Vmax_r_0466=0.0179399;
	% Local Parameter:   id =  kmp_s_0470r_0466, name = kmp_s_0470r_0466
	reaction_r_0466_kmp_s_0470r_0466=1.0;
	% Local Parameter:   id =  kmp_s_0514r_0466, name = kmp_s_0514r_0466
	reaction_r_0466_kmp_s_0514r_0466=0.549;
	% Local Parameter:   id =  kmp_s_1091r_0466, name = kmp_s_1091r_0466
	reaction_r_0466_kmp_s_1091r_0466=0.549;
	% Local Parameter:   id =  kmp_s_1187r_0466, name = kmp_s_1187r_0466
	reaction_r_0466_kmp_s_1187r_0466=0.549;
	% Local Parameter:   id =  kmp_s_1434_br_0466, name = kmp_s_1434_br_0466
	reaction_r_0466_kmp_s_1434_br_0466=0.549;
	% Local Parameter:   id =  kms_s_0763_br_0466, name = kms_s_0763_br_0466
	reaction_r_0466_kms_s_0763_br_0466=0.549;
	% Local Parameter:   id =  kms_s_1005r_0466, name = kms_s_1005r_0466
	reaction_r_0466_kms_s_1005r_0466=0.549;
	% Local Parameter:   id =  kms_s_1044r_0466, name = kms_s_1044r_0466
	reaction_r_0466_kms_s_1044r_0466=0.549;
	% Local Parameter:   id =  kms_s_1096r_0466, name = kms_s_1096r_0466
	reaction_r_0466_kms_s_1096r_0466=0.549;

	reaction_r_0466=compartment_intracellular*function_118(reaction_r_0466_Keq_r_0466, reaction_r_0466_Vmax_r_0466, compartment_intracellular, reaction_r_0466_kmp_s_0470r_0466, reaction_r_0466_kmp_s_0514r_0466, reaction_r_0466_kmp_s_1091r_0466, reaction_r_0466_kmp_s_1187r_0466, reaction_r_0466_kmp_s_1434_br_0466, reaction_r_0466_kms_s_0763_br_0466, reaction_r_0466_kms_s_1005r_0466, reaction_r_0466_kms_s_1044r_0466, reaction_r_0466_kms_s_1096r_0466, x(107), x(114), const_species_s_0763_b, x(212), x(217), x(230), x(231), x(242), const_species_s_1434_b);

% Reaction: id = r_0467, name = fatty-acyl-CoA synthase (n-C18:0CoA)	% Local Parameter:   id =  Keq_r_0467, name = Keq_r_0467
	reaction_r_0467_Keq_r_0467=3.64962;
	% Local Parameter:   id =  Vmax_r_0467, name = Vmax_r_0467
	reaction_r_0467_Vmax_r_0467=0.00599719;
	% Local Parameter:   id =  kmp_s_0470r_0467, name = kmp_s_0470r_0467
	reaction_r_0467_kmp_s_0470r_0467=1.0;
	% Local Parameter:   id =  kmp_s_0514r_0467, name = kmp_s_0514r_0467
	reaction_r_0467_kmp_s_0514r_0467=0.549;
	% Local Parameter:   id =  kmp_s_1091r_0467, name = kmp_s_1091r_0467
	reaction_r_0467_kmp_s_1091r_0467=0.549;
	% Local Parameter:   id =  kmp_s_1334r_0467, name = kmp_s_1334r_0467
	reaction_r_0467_kmp_s_1334r_0467=0.549;
	% Local Parameter:   id =  kmp_s_1434_br_0467, name = kmp_s_1434_br_0467
	reaction_r_0467_kmp_s_1434_br_0467=0.549;
	% Local Parameter:   id =  kms_s_0763_br_0467, name = kms_s_0763_br_0467
	reaction_r_0467_kms_s_0763_br_0467=0.549;
	% Local Parameter:   id =  kms_s_1005r_0467, name = kms_s_1005r_0467
	reaction_r_0467_kms_s_1005r_0467=0.549;
	% Local Parameter:   id =  kms_s_1096r_0467, name = kms_s_1096r_0467
	reaction_r_0467_kms_s_1096r_0467=0.549;
	% Local Parameter:   id =  kms_s_1187r_0467, name = kms_s_1187r_0467
	reaction_r_0467_kms_s_1187r_0467=0.549;

	reaction_r_0467=compartment_intracellular*function_119(reaction_r_0467_Keq_r_0467, reaction_r_0467_Vmax_r_0467, compartment_intracellular, reaction_r_0467_kmp_s_0470r_0467, reaction_r_0467_kmp_s_0514r_0467, reaction_r_0467_kmp_s_1091r_0467, reaction_r_0467_kmp_s_1334r_0467, reaction_r_0467_kmp_s_1434_br_0467, reaction_r_0467_kms_s_0763_br_0467, reaction_r_0467_kms_s_1005r_0467, reaction_r_0467_kms_s_1096r_0467, reaction_r_0467_kms_s_1187r_0467, x(107), x(114), const_species_s_0763_b, x(212), x(230), x(231), x(242), x(262), const_species_s_1434_b);

% Reaction: id = r_0479, name = formate-tetrahydrofolate ligase	% Local Parameter:   id =  Keq_r_0479, name = Keq_r_0479
	reaction_r_0479_Keq_r_0479=1.73154;
	% Local Parameter:   id =  Vmax_r_0479, name = Vmax_r_0479
	reaction_r_0479_Vmax_r_0479=0.087285;
	% Local Parameter:   id =  kmp_s_0122r_0479, name = kmp_s_0122r_0479
	reaction_r_0479_kmp_s_0122r_0479=0.549;
	% Local Parameter:   id =  kmp_s_0400r_0479, name = kmp_s_0400r_0479
	reaction_r_0479_kmp_s_0400r_0479=1.71907;
	% Local Parameter:   id =  kmp_s_1207r_0479, name = kmp_s_1207r_0479
	reaction_r_0479_kmp_s_1207r_0479=0.549;
	% Local Parameter:   id =  kms_s_0309r_0479, name = kms_s_0309r_0479
	reaction_r_0479_kms_s_0309r_0479=0.549;
	% Local Parameter:   id =  kms_s_0446r_0479, name = kms_s_0446r_0479
	reaction_r_0479_kms_s_0446r_0479=1.09208;
	% Local Parameter:   id =  kms_s_0689r_0479, name = kms_s_0689r_0479
	reaction_r_0479_kms_s_0689r_0479=0.549;

	reaction_r_0479=compartment_intracellular*function_120(reaction_r_0479_Keq_r_0479, reaction_r_0479_Vmax_r_0479, compartment_intracellular, reaction_r_0479_kmp_s_0122r_0479, reaction_r_0479_kmp_s_0400r_0479, reaction_r_0479_kmp_s_1207r_0479, reaction_r_0479_kms_s_0309r_0479, reaction_r_0479_kms_s_0446r_0479, reaction_r_0479_kms_s_0689r_0479, x(28), x(70), x(92), x(101), x(153), const_species_s_1207);

% Reaction: id = r_0484, name = fructose-bisphosphate aldolase	% Local Parameter:   id =  Keq_r_0484, name = Keq_r_0484
	reaction_r_0484_Keq_r_0484=0.045;
	% Local Parameter:   id =  Vmax_r_0484, name = Vmax_r_0484
	reaction_r_0484_Vmax_r_0484=5.50982;
	% Local Parameter:   id =  kmp_s_0731r_0484, name = kmp_s_0731r_0484
	reaction_r_0484_kmp_s_0731r_0484=0.0436363;
	% Local Parameter:   id =  kmp_s_0735r_0484, name = kmp_s_0735r_0484
	reaction_r_0484_kmp_s_0735r_0484=0.601873;
	% Local Parameter:   id =  kms_s_0537r_0484, name = kms_s_0537r_0484
	reaction_r_0484_kms_s_0537r_0484=1.34278;

	reaction_r_0484=compartment_intracellular*function_121(reaction_r_0484_Keq_r_0484, reaction_r_0484_Vmax_r_0484, compartment_intracellular, reaction_r_0484_kmp_s_0731r_0484, reaction_r_0484_kmp_s_0735r_0484, reaction_r_0484_kms_s_0537r_0484, x(120), x(158), x(161));

% Reaction: id = r_0485, name = fumarase	% Local Parameter:   id =  Keq_r_0485, name = Keq_r_0485
	reaction_r_0485_Keq_r_0485=0.6039;
	% Local Parameter:   id =  Vmax_r_0485, name = Vmax_r_0485
	reaction_r_0485_Vmax_r_0485=2.08449;
	% Local Parameter:   id =  kmp_s_0692r_0485, name = kmp_s_0692r_0485
	reaction_r_0485_kmp_s_0692r_0485=0.549;
	% Local Parameter:   id =  kmp_s_1434_br_0485, name = kmp_s_1434_br_0485
	reaction_r_0485_kmp_s_1434_br_0485=0.549;
	% Local Parameter:   id =  kms_s_0069r_0485, name = kms_s_0069r_0485
	reaction_r_0485_kms_s_0069r_0485=0.549;

	reaction_r_0485=compartment_intracellular*function_122(reaction_r_0485_Keq_r_0485, reaction_r_0485_Vmax_r_0485, compartment_intracellular, reaction_r_0485_kmp_s_0692r_0485, reaction_r_0485_kmp_s_1434_br_0485, reaction_r_0485_kms_s_0069r_0485, x(19), x(154), const_species_s_1434_b);

% Reaction: id = r_0488, name = fumarate reductase	% Local Parameter:   id =  Keq_r_0488, name = Keq_r_0488
	reaction_r_0488_Keq_r_0488=1.1;
	% Local Parameter:   id =  Vmax_r_0488, name = Vmax_r_0488
	reaction_r_0488_Vmax_r_0488=4.5199;
	% Local Parameter:   id =  kmp_s_0657r_0488, name = kmp_s_0657r_0488
	reaction_r_0488_kmp_s_0657r_0488=0.549;
	% Local Parameter:   id =  kmp_s_1338r_0488, name = kmp_s_1338r_0488
	reaction_r_0488_kmp_s_1338r_0488=0.549;
	% Local Parameter:   id =  kms_s_0659r_0488, name = kms_s_0659r_0488
	reaction_r_0488_kms_s_0659r_0488=0.549;
	% Local Parameter:   id =  kms_s_0692r_0488, name = kms_s_0692r_0488
	reaction_r_0488_kms_s_0692r_0488=0.549;

	reaction_r_0488=compartment_intracellular*function_123(reaction_r_0488_Keq_r_0488, reaction_r_0488_Vmax_r_0488, compartment_intracellular, reaction_r_0488_kmp_s_0657r_0488, reaction_r_0488_kmp_s_1338r_0488, reaction_r_0488_kms_s_0659r_0488, reaction_r_0488_kms_s_0692r_0488, x(149), x(150), x(154), x(263));

% Reaction: id = r_0496, name = geranyltranstransferase	% Local Parameter:   id =  Keq_r_0496, name = Keq_r_0496
	reaction_r_0496_Keq_r_0496=1.1;
	% Local Parameter:   id =  Vmax_r_0496, name = Vmax_r_0496
	reaction_r_0496_Vmax_r_0496=0.058597;
	% Local Parameter:   id =  kmp_s_0195r_0496, name = kmp_s_0195r_0496
	reaction_r_0496_kmp_s_0195r_0496=0.549;
	% Local Parameter:   id =  kmp_s_0605r_0496, name = kmp_s_0605r_0496
	reaction_r_0496_kmp_s_0605r_0496=0.549;
	% Local Parameter:   id =  kms_s_0712r_0496, name = kms_s_0712r_0496
	reaction_r_0496_kms_s_0712r_0496=0.549;
	% Local Parameter:   id =  kms_s_0850r_0496, name = kms_s_0850r_0496
	reaction_r_0496_kms_s_0850r_0496=0.549;

	reaction_r_0496=compartment_intracellular*function_124(reaction_r_0496_Keq_r_0496, reaction_r_0496_Vmax_r_0496, compartment_intracellular, reaction_r_0496_kmp_s_0195r_0496, reaction_r_0496_kmp_s_0605r_0496, reaction_r_0496_kms_s_0712r_0496, reaction_r_0496_kms_s_0850r_0496, x(44), x(138), x(157), x(175));

% Reaction: id = r_0499, name = glucokinase	% Local Parameter:   id =  Keq_r_0499, name = Keq_r_0499
	reaction_r_0499_Keq_r_0499=4.77829;
	% Local Parameter:   id =  Vmax_r_0499, name = Vmax_r_0499
	reaction_r_0499_Vmax_r_0499=72.4789;
	% Local Parameter:   id =  kmp_s_0400r_0499, name = kmp_s_0400r_0499
	reaction_r_0499_kmp_s_0400r_0499=1.71907;
	% Local Parameter:   id =  kmp_s_0455r_0499, name = kmp_s_0455r_0499
	reaction_r_0499_kmp_s_0455r_0499=0.496414;
	% Local Parameter:   id =  kmp_s_0763_br_0499, name = kmp_s_0763_br_0499
	reaction_r_0499_kmp_s_0763_br_0499=0.549;
	% Local Parameter:   id =  kms_s_0446r_0499, name = kms_s_0446r_0499
	reaction_r_0499_kms_s_0446r_0499=1.09208;
	% Local Parameter:   id =  kms_s_0545r_0499, name = kms_s_0545r_0499
	reaction_r_0499_kms_s_0545r_0499=0.0987587;

	reaction_r_0499=compartment_intracellular*function_125(reaction_r_0499_Keq_r_0499, reaction_r_0499_Vmax_r_0499, compartment_intracellular, reaction_r_0499_kmp_s_0400r_0499, reaction_r_0499_kmp_s_0455r_0499, reaction_r_0499_kmp_s_0763_br_0499, reaction_r_0499_kms_s_0446r_0499, reaction_r_0499_kms_s_0545r_0499, x(92), x(101), x(102), x(122), const_species_s_0763_b);

% Reaction: id = r_0504, name = glucose-6-phosphate isomerase	% Local Parameter:   id =  Keq_r_0504, name = Keq_r_0504
	reaction_r_0504_Keq_r_0504=0.29;
	% Local Parameter:   id =  Vmax_r_0504, name = Vmax_r_0504
	reaction_r_0504_Vmax_r_0504=6.56505;
	% Local Parameter:   id =  kmp_s_0539r_0504, name = kmp_s_0539r_0504
	reaction_r_0504_kmp_s_0539r_0504=0.104555;
	% Local Parameter:   id =  kms_s_0455r_0504, name = kms_s_0455r_0504
	reaction_r_0504_kms_s_0455r_0504=0.496414;

	reaction_r_0504=compartment_intracellular*function_126(reaction_r_0504_Keq_r_0504, reaction_r_0504_Vmax_r_0504, compartment_intracellular, reaction_r_0504_kmp_s_0539r_0504, reaction_r_0504_kms_s_0455r_0504, x(102), x(121));

% Reaction: id = r_0505, name = glucose-6-phosphate isomerase_2	% Local Parameter:   id =  Keq_r_0505, name = Keq_r_0505
	reaction_r_0505_Keq_r_0505=0.29;
	% Local Parameter:   id =  Vmax_r_0505, name = Vmax_r_0505
	reaction_r_0505_Vmax_r_0505=0.753302;
	% Local Parameter:   id =  kmp_s_0539r_0505, name = kmp_s_0539r_0505
	reaction_r_0505_kmp_s_0539r_0505=0.104555;
	% Local Parameter:   id =  kms_s_0410r_0505, name = kms_s_0410r_0505
	reaction_r_0505_kms_s_0410r_0505=0.549;

	reaction_r_0505=compartment_intracellular*function_127(reaction_r_0505_Keq_r_0505, reaction_r_0505_Vmax_r_0505, compartment_intracellular, reaction_r_0505_kmp_s_0539r_0505, reaction_r_0505_kms_s_0410r_0505, x(93), x(121));

% Reaction: id = r_0506, name = glutamate 5-kinase	% Local Parameter:   id =  Keq_r_0506, name = Keq_r_0506
	reaction_r_0506_Keq_r_0506=1.73154;
	% Local Parameter:   id =  Vmax_r_0506, name = Vmax_r_0506
	reaction_r_0506_Vmax_r_0506=0.54978;
	% Local Parameter:   id =  kmp_s_0400r_0506, name = kmp_s_0400r_0506
	reaction_r_0506_kmp_s_0400r_0506=1.71907;
	% Local Parameter:   id =  kmp_s_0894r_0506, name = kmp_s_0894r_0506
	reaction_r_0506_kmp_s_0894r_0506=0.549;
	% Local Parameter:   id =  kms_s_0446r_0506, name = kms_s_0446r_0506
	reaction_r_0506_kms_s_0446r_0506=1.09208;
	% Local Parameter:   id =  kms_s_0899r_0506, name = kms_s_0899r_0506
	reaction_r_0506_kms_s_0899r_0506=0.549;

	reaction_r_0506=compartment_intracellular*function_128(reaction_r_0506_Keq_r_0506, reaction_r_0506_Vmax_r_0506, compartment_intracellular, reaction_r_0506_kmp_s_0400r_0506, reaction_r_0506_kmp_s_0894r_0506, reaction_r_0506_kms_s_0446r_0506, reaction_r_0506_kms_s_0899r_0506, x(92), x(101), x(187), x(188));

% Reaction: id = r_0509, name = glutamate dehydrogenase (NADP)	% Local Parameter:   id =  Keq_r_0509, name = Keq_r_0509
	reaction_r_0509_Keq_r_0509=2.00364;
	% Local Parameter:   id =  Vmax_r_0509, name = Vmax_r_0509
	reaction_r_0509_Vmax_r_0509=38.2031;
	% Local Parameter:   id =  kmp_s_0899r_0509, name = kmp_s_0899r_0509
	reaction_r_0509_kmp_s_0899r_0509=0.549;
	% Local Parameter:   id =  kmp_s_1091r_0509, name = kmp_s_1091r_0509
	reaction_r_0509_kmp_s_1091r_0509=0.549;
	% Local Parameter:   id =  kmp_s_1434_br_0509, name = kmp_s_1434_br_0509
	reaction_r_0509_kmp_s_1434_br_0509=0.549;
	% Local Parameter:   id =  kms_s_0185r_0509, name = kms_s_0185r_0509
	reaction_r_0509_kms_s_0185r_0509=0.549;
	% Local Parameter:   id =  kms_s_0430r_0509, name = kms_s_0430r_0509
	reaction_r_0509_kms_s_0430r_0509=0.549;
	% Local Parameter:   id =  kms_s_0763_br_0509, name = kms_s_0763_br_0509
	reaction_r_0509_kms_s_0763_br_0509=0.549;
	% Local Parameter:   id =  kms_s_1096r_0509, name = kms_s_1096r_0509
	reaction_r_0509_kms_s_1096r_0509=0.549;

	reaction_r_0509=compartment_intracellular*function_129(reaction_r_0509_Keq_r_0509, reaction_r_0509_Vmax_r_0509, compartment_intracellular, reaction_r_0509_kmp_s_0899r_0509, reaction_r_0509_kmp_s_1091r_0509, reaction_r_0509_kmp_s_1434_br_0509, reaction_r_0509_kms_s_0185r_0509, reaction_r_0509_kms_s_0430r_0509, reaction_r_0509_kms_s_0763_br_0509, reaction_r_0509_kms_s_1096r_0509, x(42), x(97), const_species_s_0763_b, x(188), x(230), x(231), const_species_s_1434_b);

% Reaction: id = r_0510, name = glutamate synthase (NADH2)	% Local Parameter:   id =  Keq_r_0510, name = Keq_r_0510
	reaction_r_0510_Keq_r_0510=34.7263;
	% Local Parameter:   id =  Vmax_r_0510, name = Vmax_r_0510
	reaction_r_0510_Vmax_r_0510=31.5593;
	% Local Parameter:   id =  kmp_s_0899r_0510, name = kmp_s_0899r_0510
	reaction_r_0510_kmp_s_0899r_0510=0.549;
	% Local Parameter:   id =  kmp_s_1082r_0510, name = kmp_s_1082r_0510
	reaction_r_0510_kmp_s_1082r_0510=1.50326;
	% Local Parameter:   id =  kms_s_0185r_0510, name = kms_s_0185r_0510
	reaction_r_0510_kms_s_0185r_0510=0.549;
	% Local Parameter:   id =  kms_s_0763_br_0510, name = kms_s_0763_br_0510
	reaction_r_0510_kms_s_0763_br_0510=0.549;
	% Local Parameter:   id =  kms_s_0907r_0510, name = kms_s_0907r_0510
	reaction_r_0510_kms_s_0907r_0510=0.549;
	% Local Parameter:   id =  kms_s_1087r_0510, name = kms_s_1087r_0510
	reaction_r_0510_kms_s_1087r_0510=0.0867353;

	reaction_r_0510=compartment_intracellular*function_130(reaction_r_0510_Keq_r_0510, reaction_r_0510_Vmax_r_0510, compartment_intracellular, reaction_r_0510_kmp_s_0899r_0510, reaction_r_0510_kmp_s_1082r_0510, reaction_r_0510_kms_s_0185r_0510, reaction_r_0510_kms_s_0763_br_0510, reaction_r_0510_kms_s_0907r_0510, reaction_r_0510_kms_s_1087r_0510, x(42), const_species_s_0763_b, x(188), x(190), x(228), x(229));

% Reaction: id = r_0512, name = glutamate-5-semialdehyde dehydrogenase	% Local Parameter:   id =  Keq_r_0512, name = Keq_r_0512
	reaction_r_0512_Keq_r_0512=19.0647;
	% Local Parameter:   id =  Vmax_r_0512, name = Vmax_r_0512
	reaction_r_0512_Vmax_r_0512=1.1781;
	% Local Parameter:   id =  kmp_s_0905r_0512, name = kmp_s_0905r_0512
	reaction_r_0512_kmp_s_0905r_0512=0.549;
	% Local Parameter:   id =  kmp_s_1082r_0512, name = kmp_s_1082r_0512
	reaction_r_0512_kmp_s_1082r_0512=1.50326;
	% Local Parameter:   id =  kmp_s_1207r_0512, name = kmp_s_1207r_0512
	reaction_r_0512_kmp_s_1207r_0512=0.549;
	% Local Parameter:   id =  kms_s_0763_br_0512, name = kms_s_0763_br_0512
	reaction_r_0512_kms_s_0763_br_0512=0.549;
	% Local Parameter:   id =  kms_s_0894r_0512, name = kms_s_0894r_0512
	reaction_r_0512_kms_s_0894r_0512=0.549;
	% Local Parameter:   id =  kms_s_1087r_0512, name = kms_s_1087r_0512
	reaction_r_0512_kms_s_1087r_0512=0.0867353;

	reaction_r_0512=compartment_intracellular*function_131(reaction_r_0512_Keq_r_0512, reaction_r_0512_Vmax_r_0512, compartment_intracellular, reaction_r_0512_kmp_s_0905r_0512, reaction_r_0512_kmp_s_1082r_0512, reaction_r_0512_kmp_s_1207r_0512, reaction_r_0512_kms_s_0763_br_0512, reaction_r_0512_kms_s_0894r_0512, reaction_r_0512_kms_s_1087r_0512, const_species_s_0763_b, x(187), x(189), x(228), x(229), const_species_s_1207);

% Reaction: id = r_0514, name = glutamine phosphoribosyldiphosphate amidotransferase	% Local Parameter:   id =  Keq_r_0514, name = Keq_r_0514
	reaction_r_0514_Keq_r_0514=1.1;
	% Local Parameter:   id =  Vmax_r_0514, name = Vmax_r_0514
	reaction_r_0514_Vmax_r_0514=1.00155;
	% Local Parameter:   id =  kmp_s_0333r_0514, name = kmp_s_0333r_0514
	reaction_r_0514_kmp_s_0333r_0514=0.549;
	% Local Parameter:   id =  kmp_s_0605r_0514, name = kmp_s_0605r_0514
	reaction_r_0514_kmp_s_0605r_0514=0.549;
	% Local Parameter:   id =  kmp_s_0899r_0514, name = kmp_s_0899r_0514
	reaction_r_0514_kmp_s_0899r_0514=0.549;
	% Local Parameter:   id =  kms_s_0331r_0514, name = kms_s_0331r_0514
	reaction_r_0514_kms_s_0331r_0514=0.549;
	% Local Parameter:   id =  kms_s_0907r_0514, name = kms_s_0907r_0514
	reaction_r_0514_kms_s_0907r_0514=0.549;
	% Local Parameter:   id =  kms_s_1434_br_0514, name = kms_s_1434_br_0514
	reaction_r_0514_kms_s_1434_br_0514=0.549;

	reaction_r_0514=compartment_intracellular*function_132(reaction_r_0514_Keq_r_0514, reaction_r_0514_Vmax_r_0514, compartment_intracellular, reaction_r_0514_kmp_s_0333r_0514, reaction_r_0514_kmp_s_0605r_0514, reaction_r_0514_kmp_s_0899r_0514, reaction_r_0514_kms_s_0331r_0514, reaction_r_0514_kms_s_0907r_0514, reaction_r_0514_kms_s_1434_br_0514, x(80), x(81), x(138), x(188), x(190), const_species_s_1434_b);

% Reaction: id = r_0515, name = glutamine synthetase	% Local Parameter:   id =  Keq_r_0515, name = Keq_r_0515
	reaction_r_0515_Keq_r_0515=0.950614;
	% Local Parameter:   id =  Vmax_r_0515, name = Vmax_r_0515
	reaction_r_0515_Vmax_r_0515=53.3829;
	% Local Parameter:   id =  kmp_s_0400r_0515, name = kmp_s_0400r_0515
	reaction_r_0515_kmp_s_0400r_0515=1.71907;
	% Local Parameter:   id =  kmp_s_0763_br_0515, name = kmp_s_0763_br_0515
	reaction_r_0515_kmp_s_0763_br_0515=0.549;
	% Local Parameter:   id =  kmp_s_0907r_0515, name = kmp_s_0907r_0515
	reaction_r_0515_kmp_s_0907r_0515=0.549;
	% Local Parameter:   id =  kmp_s_1207r_0515, name = kmp_s_1207r_0515
	reaction_r_0515_kmp_s_1207r_0515=0.549;
	% Local Parameter:   id =  kms_s_0430r_0515, name = kms_s_0430r_0515
	reaction_r_0515_kms_s_0430r_0515=0.549;
	% Local Parameter:   id =  kms_s_0446r_0515, name = kms_s_0446r_0515
	reaction_r_0515_kms_s_0446r_0515=1.09208;
	% Local Parameter:   id =  kms_s_0899r_0515, name = kms_s_0899r_0515
	reaction_r_0515_kms_s_0899r_0515=0.549;

	reaction_r_0515=compartment_intracellular*function_133(reaction_r_0515_Keq_r_0515, reaction_r_0515_Vmax_r_0515, compartment_intracellular, reaction_r_0515_kmp_s_0400r_0515, reaction_r_0515_kmp_s_0763_br_0515, reaction_r_0515_kmp_s_0907r_0515, reaction_r_0515_kmp_s_1207r_0515, reaction_r_0515_kms_s_0430r_0515, reaction_r_0515_kms_s_0446r_0515, reaction_r_0515_kms_s_0899r_0515, x(92), x(97), x(101), const_species_s_0763_b, x(188), x(190), const_species_s_1207);

% Reaction: id = r_0525, name = glyceraldehyde-3-phosphate dehydrogenase	% Local Parameter:   id =  Keq_r_0525, name = Keq_r_0525
	reaction_r_0525_Keq_r_0525=3200.0;
	% Local Parameter:   id =  Vmax_r_0525, name = Vmax_r_0525
	reaction_r_0525_Vmax_r_0525=18.45;
	% Local Parameter:   id =  kmp_s_0265r_0525, name = kmp_s_0265r_0525
	reaction_r_0525_kmp_s_0265r_0525=1.08759E-4;
	% Local Parameter:   id =  kmp_s_0763_br_0525, name = kmp_s_0763_br_0525
	reaction_r_0525_kmp_s_0763_br_0525=0.549;
	% Local Parameter:   id =  kmp_s_1087r_0525, name = kmp_s_1087r_0525
	reaction_r_0525_kmp_s_1087r_0525=0.0867353;
	% Local Parameter:   id =  kms_s_0731r_0525, name = kms_s_0731r_0525
	reaction_r_0525_kms_s_0731r_0525=0.0436363;
	% Local Parameter:   id =  kms_s_1082r_0525, name = kms_s_1082r_0525
	reaction_r_0525_kms_s_1082r_0525=1.50326;
	% Local Parameter:   id =  kms_s_1207r_0525, name = kms_s_1207r_0525
	reaction_r_0525_kms_s_1207r_0525=0.549;

	reaction_r_0525=compartment_intracellular*function_134(reaction_r_0525_Keq_r_0525, reaction_r_0525_Vmax_r_0525, compartment_intracellular, reaction_r_0525_kmp_s_0265r_0525, reaction_r_0525_kmp_s_0763_br_0525, reaction_r_0525_kmp_s_1087r_0525, reaction_r_0525_kms_s_0731r_0525, reaction_r_0525_kms_s_1082r_0525, reaction_r_0525_kms_s_1207r_0525, x(60), x(158), const_species_s_0763_b, x(228), x(229), const_species_s_1207);

% Reaction: id = r_0526, name = glycerol dehydrogenase (NADP-dependent)	% Local Parameter:   id =  Keq_r_0526, name = Keq_r_0526
	reaction_r_0526_Keq_r_0526=2.21027;
	% Local Parameter:   id =  Vmax_r_0526, name = Vmax_r_0526
	reaction_r_0526_Vmax_r_0526=5.48128;
	% Local Parameter:   id =  kmp_s_0734r_0526, name = kmp_s_0734r_0526
	reaction_r_0526_kmp_s_0734r_0526=0.549;
	% Local Parameter:   id =  kmp_s_0763_br_0526, name = kmp_s_0763_br_0526
	reaction_r_0526_kmp_s_0763_br_0526=0.549;
	% Local Parameter:   id =  kmp_s_1096r_0526, name = kmp_s_1096r_0526
	reaction_r_0526_kmp_s_1096r_0526=0.549;
	% Local Parameter:   id =  kms_s_0732r_0526, name = kms_s_0732r_0526
	reaction_r_0526_kms_s_0732r_0526=0.15;
	% Local Parameter:   id =  kms_s_1091r_0526, name = kms_s_1091r_0526
	reaction_r_0526_kms_s_1091r_0526=0.549;

	reaction_r_0526=compartment_intracellular*function_135(reaction_r_0526_Keq_r_0526, reaction_r_0526_Vmax_r_0526, compartment_intracellular, reaction_r_0526_kmp_s_0734r_0526, reaction_r_0526_kmp_s_0763_br_0526, reaction_r_0526_kmp_s_1096r_0526, reaction_r_0526_kms_s_0732r_0526, reaction_r_0526_kms_s_1091r_0526, x(159), x(160), const_species_s_0763_b, x(230), x(231));

% Reaction: id = r_0528, name = glycerol-3-phosphatase	% Local Parameter:   id =  Keq_r_0528, name = Keq_r_0528
	reaction_r_0528_Keq_r_0528=0.0128394;
	% Local Parameter:   id =  Vmax_r_0528, name = Vmax_r_0528
	reaction_r_0528_Vmax_r_0528=3.48809;
	% Local Parameter:   id =  kmp_s_0732r_0528, name = kmp_s_0732r_0528
	reaction_r_0528_kmp_s_0732r_0528=0.15;
	% Local Parameter:   id =  kmp_s_1207r_0528, name = kmp_s_1207r_0528
	reaction_r_0528_kmp_s_1207r_0528=0.549;
	% Local Parameter:   id =  kms_s_1315r_0528, name = kms_s_1315r_0528
	reaction_r_0528_kms_s_1315r_0528=12.8511;
	% Local Parameter:   id =  kms_s_1434_br_0528, name = kms_s_1434_br_0528
	reaction_r_0528_kms_s_1434_br_0528=0.549;

	reaction_r_0528=compartment_intracellular*function_136(reaction_r_0528_Keq_r_0528, reaction_r_0528_Vmax_r_0528, compartment_intracellular, reaction_r_0528_kmp_s_0732r_0528, reaction_r_0528_kmp_s_1207r_0528, reaction_r_0528_kms_s_1315r_0528, reaction_r_0528_kms_s_1434_br_0528, x(159), const_species_s_1207, x(258), const_species_s_1434_b);

% Reaction: id = r_0529, name = glycerol-3-phosphate dehydrogenase (fad)	% Local Parameter:   id =  Keq_r_0529, name = Keq_r_0529
	reaction_r_0529_Keq_r_0529=0.0515178;
	% Local Parameter:   id =  Vmax_r_0529, name = Vmax_r_0529
	reaction_r_0529_Vmax_r_0529=4.51989;
	% Local Parameter:   id =  kmp_s_0659r_0529, name = kmp_s_0659r_0529
	reaction_r_0529_kmp_s_0659r_0529=0.549;
	% Local Parameter:   id =  kmp_s_0735r_0529, name = kmp_s_0735r_0529
	reaction_r_0529_kmp_s_0735r_0529=0.601873;
	% Local Parameter:   id =  kms_s_0657r_0529, name = kms_s_0657r_0529
	reaction_r_0529_kms_s_0657r_0529=0.549;
	% Local Parameter:   id =  kms_s_1315r_0529, name = kms_s_1315r_0529
	reaction_r_0529_kms_s_1315r_0529=12.8511;

	reaction_r_0529=compartment_intracellular*function_137(reaction_r_0529_Keq_r_0529, reaction_r_0529_Vmax_r_0529, compartment_intracellular, reaction_r_0529_kmp_s_0659r_0529, reaction_r_0529_kmp_s_0735r_0529, reaction_r_0529_kms_s_0657r_0529, reaction_r_0529_kms_s_1315r_0529, x(149), x(150), x(161), x(258));

% Reaction: id = r_0530, name = glycerol-3-phosphate dehydrogenase (NAD)	% Local Parameter:   id =  Keq_r_0530, name = Keq_r_0530
	reaction_r_0530_Keq_r_0530=741.47;
	% Local Parameter:   id =  Vmax_r_0530, name = Vmax_r_0530
	reaction_r_0530_Vmax_r_0530=12.5841;
	% Local Parameter:   id =  kmp_s_1082r_0530, name = kmp_s_1082r_0530
	reaction_r_0530_kmp_s_1082r_0530=1.50326;
	% Local Parameter:   id =  kmp_s_1315r_0530, name = kmp_s_1315r_0530
	reaction_r_0530_kmp_s_1315r_0530=12.8511;
	% Local Parameter:   id =  kms_s_0735r_0530, name = kms_s_0735r_0530
	reaction_r_0530_kms_s_0735r_0530=0.601873;
	% Local Parameter:   id =  kms_s_0763_br_0530, name = kms_s_0763_br_0530
	reaction_r_0530_kms_s_0763_br_0530=0.549;
	% Local Parameter:   id =  kms_s_1087r_0530, name = kms_s_1087r_0530
	reaction_r_0530_kms_s_1087r_0530=0.0867353;

	reaction_r_0530=compartment_intracellular*function_138(reaction_r_0530_Keq_r_0530, reaction_r_0530_Vmax_r_0530, compartment_intracellular, reaction_r_0530_kmp_s_1082r_0530, reaction_r_0530_kmp_s_1315r_0530, reaction_r_0530_kms_s_0735r_0530, reaction_r_0530_kms_s_0763_br_0530, reaction_r_0530_kms_s_1087r_0530, x(161), const_species_s_0763_b, x(228), x(229), x(258));

% Reaction: id = r_0534, name = glycerol-3-phosphate/dihydroxyacetone phosphate acyltransferase	% Local Parameter:   id =  Keq_r_0534, name = Keq_r_0534
	reaction_r_0534_Keq_r_0534=0.0141635;
	% Local Parameter:   id =  Vmax_r_0534, name = Vmax_r_0534
	reaction_r_0534_Vmax_r_0534=0.0421077;
	% Local Parameter:   id =  kmp_s_0083r_0534, name = kmp_s_0083r_0534
	reaction_r_0534_kmp_s_0083r_0534=0.549;
	% Local Parameter:   id =  kmp_s_0514r_0534, name = kmp_s_0514r_0534
	reaction_r_0534_kmp_s_0514r_0534=0.549;
	% Local Parameter:   id =  kmp_s_0763_br_0534, name = kmp_s_0763_br_0534
	reaction_r_0534_kmp_s_0763_br_0534=0.549;
	% Local Parameter:   id =  kms_s_0386r_0534, name = kms_s_0386r_0534
	reaction_r_0534_kms_s_0386r_0534=0.549;
	% Local Parameter:   id =  kms_s_1315r_0534, name = kms_s_1315r_0534
	reaction_r_0534_kms_s_1315r_0534=12.8511;

	reaction_r_0534=compartment_intracellular*function_139(reaction_r_0534_Keq_r_0534, reaction_r_0534_Vmax_r_0534, compartment_intracellular, reaction_r_0534_kmp_s_0083r_0534, reaction_r_0534_kmp_s_0514r_0534, reaction_r_0534_kmp_s_0763_br_0534, reaction_r_0534_kms_s_0386r_0534, reaction_r_0534_kms_s_1315r_0534, x(23), x(89), x(114), const_species_s_0763_b, x(258));

% Reaction: id = r_0538, name = glycine cleavage system	% Local Parameter:   id =  Keq_r_0538, name = Keq_r_0538
	reaction_r_0538_Keq_r_0538=0.063468;
	% Local Parameter:   id =  Vmax_r_0538, name = Vmax_r_0538
	reaction_r_0538_Vmax_r_0538=9.5887;
	% Local Parameter:   id =  kmp_s_0307r_0538, name = kmp_s_0307r_0538
	reaction_r_0538_kmp_s_0307r_0538=0.549;
	% Local Parameter:   id =  kmp_s_0430r_0538, name = kmp_s_0430r_0538
	reaction_r_0538_kmp_s_0430r_0538=0.549;
	% Local Parameter:   id =  kmp_s_0470r_0538, name = kmp_s_0470r_0538
	reaction_r_0538_kmp_s_0470r_0538=1.0;
	% Local Parameter:   id =  kmp_s_1087r_0538, name = kmp_s_1087r_0538
	reaction_r_0538_kmp_s_1087r_0538=0.0867353;
	% Local Parameter:   id =  kms_s_0309r_0538, name = kms_s_0309r_0538
	reaction_r_0538_kms_s_0309r_0538=0.549;
	% Local Parameter:   id =  kms_s_0740r_0538, name = kms_s_0740r_0538
	reaction_r_0538_kms_s_0740r_0538=0.549;
	% Local Parameter:   id =  kms_s_1082r_0538, name = kms_s_1082r_0538
	reaction_r_0538_kms_s_1082r_0538=1.50326;

	reaction_r_0538=compartment_intracellular*function_140(reaction_r_0538_Keq_r_0538, reaction_r_0538_Vmax_r_0538, compartment_intracellular, reaction_r_0538_kmp_s_0307r_0538, reaction_r_0538_kmp_s_0430r_0538, reaction_r_0538_kmp_s_0470r_0538, reaction_r_0538_kmp_s_1087r_0538, reaction_r_0538_kms_s_0309r_0538, reaction_r_0538_kms_s_0740r_0538, reaction_r_0538_kms_s_1082r_0538, x(69), x(70), x(97), x(107), x(162), x(228), x(229));

% Reaction: id = r_0539, name = glycine hydroxymethyltransferase	% Local Parameter:   id =  Keq_r_0539, name = Keq_r_0539
	reaction_r_0539_Keq_r_0539=2.00364;
	% Local Parameter:   id =  Vmax_r_0539, name = Vmax_r_0539
	reaction_r_0539_Vmax_r_0539=2.21431;
	% Local Parameter:   id =  kmp_s_0309r_0539, name = kmp_s_0309r_0539
	reaction_r_0539_kmp_s_0309r_0539=0.549;
	% Local Parameter:   id =  kmp_s_0943r_0539, name = kmp_s_0943r_0539
	reaction_r_0539_kmp_s_0943r_0539=0.549;
	% Local Parameter:   id =  kms_s_0307r_0539, name = kms_s_0307r_0539
	reaction_r_0539_kms_s_0307r_0539=0.549;
	% Local Parameter:   id =  kms_s_0740r_0539, name = kms_s_0740r_0539
	reaction_r_0539_kms_s_0740r_0539=0.549;
	% Local Parameter:   id =  kms_s_1434_br_0539, name = kms_s_1434_br_0539
	reaction_r_0539_kms_s_1434_br_0539=0.549;

	reaction_r_0539=compartment_intracellular*function_141(reaction_r_0539_Keq_r_0539, reaction_r_0539_Vmax_r_0539, compartment_intracellular, reaction_r_0539_kmp_s_0309r_0539, reaction_r_0539_kmp_s_0943r_0539, reaction_r_0539_kms_s_0307r_0539, reaction_r_0539_kms_s_0740r_0539, reaction_r_0539_kms_s_1434_br_0539, x(69), x(70), x(162), x(203), const_species_s_1434_b);

% Reaction: id = r_0547, name = glycogen (starch) synthase	% Local Parameter:   id =  Keq_r_0547, name = Keq_r_0547
	reaction_r_0547_Keq_r_0547=0.6039;
	% Local Parameter:   id =  Vmax_r_0547, name = Vmax_r_0547
	reaction_r_0547_Vmax_r_0547=3.48479;
	% Local Parameter:   id =  kmp_s_0438r_0547, name = kmp_s_0438r_0547
	reaction_r_0547_kmp_s_0438r_0547=0.549;
	% Local Parameter:   id =  kmp_s_0763_br_0547, name = kmp_s_0763_br_0547
	reaction_r_0547_kmp_s_0763_br_0547=0.549;
	% Local Parameter:   id =  kmp_s_1411r_0547, name = kmp_s_1411r_0547
	reaction_r_0547_kmp_s_1411r_0547=0.549;
	% Local Parameter:   id =  kms_s_1415r_0547, name = kms_s_1415r_0547
	reaction_r_0547_kms_s_1415r_0547=0.549;
	% Local Parameter:   id =  kms_s_1434_br_0547, name = kms_s_1434_br_0547
	reaction_r_0547_kms_s_1434_br_0547=0.549;

	reaction_r_0547=compartment_intracellular*function_142(reaction_r_0547_Keq_r_0547, reaction_r_0547_Vmax_r_0547, compartment_intracellular, reaction_r_0547_kmp_s_0438r_0547, reaction_r_0547_kmp_s_0763_br_0547, reaction_r_0547_kmp_s_1411r_0547, reaction_r_0547_kms_s_1415r_0547, reaction_r_0547_kms_s_1434_br_0547, x(99), const_species_s_0763_b, x(269), x(270), const_species_s_1434_b);

% Reaction: id = r_0551, name = GMP synthase	% Local Parameter:   id =  Keq_r_0551, name = Keq_r_0551
	reaction_r_0551_Keq_r_0551=0.382386;
	% Local Parameter:   id =  Vmax_r_0551, name = Vmax_r_0551
	reaction_r_0551_Vmax_r_0551=1.57168;
	% Local Parameter:   id =  kmp_s_0434r_0551, name = kmp_s_0434r_0551
	reaction_r_0551_kmp_s_0434r_0551=1.25956;
	% Local Parameter:   id =  kmp_s_0605r_0551, name = kmp_s_0605r_0551
	reaction_r_0551_kmp_s_0605r_0551=0.549;
	% Local Parameter:   id =  kmp_s_0752r_0551, name = kmp_s_0752r_0551
	reaction_r_0551_kmp_s_0752r_0551=0.549;
	% Local Parameter:   id =  kmp_s_0763_br_0551, name = kmp_s_0763_br_0551
	reaction_r_0551_kmp_s_0763_br_0551=0.549;
	% Local Parameter:   id =  kmp_s_0899r_0551, name = kmp_s_0899r_0551
	reaction_r_0551_kmp_s_0899r_0551=0.549;
	% Local Parameter:   id =  kms_s_0306r_0551, name = kms_s_0306r_0551
	reaction_r_0551_kms_s_0306r_0551=0.549;
	% Local Parameter:   id =  kms_s_0446r_0551, name = kms_s_0446r_0551
	reaction_r_0551_kms_s_0446r_0551=1.09208;
	% Local Parameter:   id =  kms_s_0907r_0551, name = kms_s_0907r_0551
	reaction_r_0551_kms_s_0907r_0551=0.549;
	% Local Parameter:   id =  kms_s_1434_br_0551, name = kms_s_1434_br_0551
	reaction_r_0551_kms_s_1434_br_0551=0.549;

	reaction_r_0551=compartment_intracellular*function_143(reaction_r_0551_Keq_r_0551, reaction_r_0551_Vmax_r_0551, compartment_intracellular, reaction_r_0551_kmp_s_0434r_0551, reaction_r_0551_kmp_s_0605r_0551, reaction_r_0551_kmp_s_0752r_0551, reaction_r_0551_kmp_s_0763_br_0551, reaction_r_0551_kmp_s_0899r_0551, reaction_r_0551_kms_s_0306r_0551, reaction_r_0551_kms_s_0446r_0551, reaction_r_0551_kms_s_0907r_0551, reaction_r_0551_kms_s_1434_br_0551, x(68), x(98), x(101), x(138), x(165), const_species_s_0763_b, x(188), x(190), const_species_s_1434_b);

% Reaction: id = r_0562, name = GTP cyclohydrolase II	% Local Parameter:   id =  Keq_r_0562, name = Keq_r_0562
	reaction_r_0562_Keq_r_0562=0.6039;
	% Local Parameter:   id =  Vmax_r_0562, name = Vmax_r_0562
	reaction_r_0562_Vmax_r_0562=0.0104499;
	% Local Parameter:   id =  kmp_s_0145r_0562, name = kmp_s_0145r_0562
	reaction_r_0562_kmp_s_0145r_0562=0.549;
	% Local Parameter:   id =  kmp_s_0605r_0562, name = kmp_s_0605r_0562
	reaction_r_0562_kmp_s_0605r_0562=0.549;
	% Local Parameter:   id =  kmp_s_0689r_0562, name = kmp_s_0689r_0562
	reaction_r_0562_kmp_s_0689r_0562=0.549;
	% Local Parameter:   id =  kmp_s_0763_br_0562, name = kmp_s_0763_br_0562
	reaction_r_0562_kmp_s_0763_br_0562=0.549;
	% Local Parameter:   id =  kms_s_0755r_0562, name = kms_s_0755r_0562
	reaction_r_0562_kms_s_0755r_0562=0.549;
	% Local Parameter:   id =  kms_s_1434_br_0562, name = kms_s_1434_br_0562
	reaction_r_0562_kms_s_1434_br_0562=0.549;

	reaction_r_0562=compartment_intracellular*function_144(reaction_r_0562_Keq_r_0562, reaction_r_0562_Vmax_r_0562, compartment_intracellular, reaction_r_0562_kmp_s_0145r_0562, reaction_r_0562_kmp_s_0605r_0562, reaction_r_0562_kmp_s_0689r_0562, reaction_r_0562_kmp_s_0763_br_0562, reaction_r_0562_kms_s_0755r_0562, reaction_r_0562_kms_s_1434_br_0562, x(31), x(138), x(153), x(166), const_species_s_0763_b, const_species_s_1434_b);

% Reaction: id = r_0567, name = guanylate kinase (GMP:ATP)	% Local Parameter:   id =  Keq_r_0567, name = Keq_r_0567
	reaction_r_0567_Keq_r_0567=1.73154;
	% Local Parameter:   id =  Vmax_r_0567, name = Vmax_r_0567
	reaction_r_0567_Vmax_r_0567=0.008393;
	% Local Parameter:   id =  kmp_s_0400r_0567, name = kmp_s_0400r_0567
	reaction_r_0567_kmp_s_0400r_0567=1.71907;
	% Local Parameter:   id =  kmp_s_0706r_0567, name = kmp_s_0706r_0567
	reaction_r_0567_kmp_s_0706r_0567=0.549;
	% Local Parameter:   id =  kms_s_0446r_0567, name = kms_s_0446r_0567
	reaction_r_0567_kms_s_0446r_0567=1.09208;
	% Local Parameter:   id =  kms_s_0752r_0567, name = kms_s_0752r_0567
	reaction_r_0567_kms_s_0752r_0567=0.549;

	reaction_r_0567=compartment_intracellular*function_145(reaction_r_0567_Keq_r_0567, reaction_r_0567_Vmax_r_0567, compartment_intracellular, reaction_r_0567_kmp_s_0400r_0567, reaction_r_0567_kmp_s_0706r_0567, reaction_r_0567_kms_s_0446r_0567, reaction_r_0567_kms_s_0752r_0567, x(92), x(101), x(155), x(165));

% Reaction: id = r_0568, name = guanylate kinase (GMP:dATP)	% Local Parameter:   id =  Keq_r_0568, name = Keq_r_0568
	reaction_r_0568_Keq_r_0568=1.1;
	% Local Parameter:   id =  Vmax_r_0568, name = Vmax_r_0568
	reaction_r_0568_Vmax_r_0568=0.0076692;
	% Local Parameter:   id =  kmp_s_0562r_0568, name = kmp_s_0562r_0568
	reaction_r_0568_kmp_s_0562r_0568=0.549;
	% Local Parameter:   id =  kmp_s_0706r_0568, name = kmp_s_0706r_0568
	reaction_r_0568_kmp_s_0706r_0568=0.549;
	% Local Parameter:   id =  kms_s_0566r_0568, name = kms_s_0566r_0568
	reaction_r_0568_kms_s_0566r_0568=0.549;
	% Local Parameter:   id =  kms_s_0752r_0568, name = kms_s_0752r_0568
	reaction_r_0568_kms_s_0752r_0568=0.549;

	reaction_r_0568=compartment_intracellular*function_146(reaction_r_0568_Keq_r_0568, reaction_r_0568_Vmax_r_0568, compartment_intracellular, reaction_r_0568_kmp_s_0562r_0568, reaction_r_0568_kmp_s_0706r_0568, reaction_r_0568_kms_s_0566r_0568, reaction_r_0568_kms_s_0752r_0568, x(128), x(130), x(155), x(165));

% Reaction: id = r_0573, name = hexokinase (D-glucose:ATP)	% Local Parameter:   id =  Keq_r_0573, name = Keq_r_0573
	reaction_r_0573_Keq_r_0573=2000.0;
	% Local Parameter:   id =  Vmax_r_0573, name = Vmax_r_0573
	reaction_r_0573_Vmax_r_0573=1.99579;
	% Local Parameter:   id =  kmp_s_0400r_0573, name = kmp_s_0400r_0573
	reaction_r_0573_kmp_s_0400r_0573=1.71907;
	% Local Parameter:   id =  kmp_s_0410r_0573, name = kmp_s_0410r_0573
	reaction_r_0573_kmp_s_0410r_0573=0.549;
	% Local Parameter:   id =  kmp_s_0763_br_0573, name = kmp_s_0763_br_0573
	reaction_r_0573_kmp_s_0763_br_0573=0.549;
	% Local Parameter:   id =  kms_s_0446r_0573, name = kms_s_0446r_0573
	reaction_r_0573_kms_s_0446r_0573=1.09208;
	% Local Parameter:   id =  kms_s_0545r_0573, name = kms_s_0545r_0573
	reaction_r_0573_kms_s_0545r_0573=0.0987587;

	reaction_r_0573=compartment_intracellular*function_147(reaction_r_0573_Keq_r_0573, reaction_r_0573_Vmax_r_0573, compartment_intracellular, reaction_r_0573_kmp_s_0400r_0573, reaction_r_0573_kmp_s_0410r_0573, reaction_r_0573_kmp_s_0763_br_0573, reaction_r_0573_kms_s_0446r_0573, reaction_r_0573_kms_s_0545r_0573, x(92), x(93), x(101), x(122), const_species_s_0763_b);

% Reaction: id = r_0575, name = histidinol dehydrogenase	% Local Parameter:   id =  Keq_r_0575, name = Keq_r_0575
	reaction_r_0575_Keq_r_0575=0.00110373;
	% Local Parameter:   id =  Vmax_r_0575, name = Vmax_r_0575
	reaction_r_0575_Vmax_r_0575=0.688047;
	% Local Parameter:   id =  kmp_s_0763_br_0575, name = kmp_s_0763_br_0575
	reaction_r_0575_kmp_s_0763_br_0575=0.549;
	% Local Parameter:   id =  kmp_s_0911r_0575, name = kmp_s_0911r_0575
	reaction_r_0575_kmp_s_0911r_0575=0.549;
	% Local Parameter:   id =  kmp_s_1087r_0575, name = kmp_s_1087r_0575
	reaction_r_0575_kmp_s_1087r_0575=0.0867353;
	% Local Parameter:   id =  kms_s_0915r_0575, name = kms_s_0915r_0575
	reaction_r_0575_kms_s_0915r_0575=0.549;
	% Local Parameter:   id =  kms_s_1082r_0575, name = kms_s_1082r_0575
	reaction_r_0575_kms_s_1082r_0575=1.50326;
	% Local Parameter:   id =  kms_s_1434_br_0575, name = kms_s_1434_br_0575
	reaction_r_0575_kms_s_1434_br_0575=0.549;

	reaction_r_0575=compartment_intracellular*function_148(reaction_r_0575_Keq_r_0575, reaction_r_0575_Vmax_r_0575, compartment_intracellular, reaction_r_0575_kmp_s_0763_br_0575, reaction_r_0575_kmp_s_0911r_0575, reaction_r_0575_kmp_s_1087r_0575, reaction_r_0575_kms_s_0915r_0575, reaction_r_0575_kms_s_1082r_0575, reaction_r_0575_kms_s_1434_br_0575, const_species_s_0763_b, x(191), x(192), x(228), x(229), const_species_s_1434_b);

% Reaction: id = r_0576, name = histidinol-phosphatase	% Local Parameter:   id =  Keq_r_0576, name = Keq_r_0576
	reaction_r_0576_Keq_r_0576=1.1;
	% Local Parameter:   id =  Vmax_r_0576, name = Vmax_r_0576
	reaction_r_0576_Vmax_r_0576=0.32109;
	% Local Parameter:   id =  kmp_s_0915r_0576, name = kmp_s_0915r_0576
	reaction_r_0576_kmp_s_0915r_0576=0.549;
	% Local Parameter:   id =  kmp_s_1207r_0576, name = kmp_s_1207r_0576
	reaction_r_0576_kmp_s_1207r_0576=0.549;
	% Local Parameter:   id =  kms_s_0916r_0576, name = kms_s_0916r_0576
	reaction_r_0576_kms_s_0916r_0576=0.549;
	% Local Parameter:   id =  kms_s_1434_br_0576, name = kms_s_1434_br_0576
	reaction_r_0576_kms_s_1434_br_0576=0.549;

	reaction_r_0576=compartment_intracellular*function_149(reaction_r_0576_Keq_r_0576, reaction_r_0576_Vmax_r_0576, compartment_intracellular, reaction_r_0576_kmp_s_0915r_0576, reaction_r_0576_kmp_s_1207r_0576, reaction_r_0576_kms_s_0916r_0576, reaction_r_0576_kms_s_1434_br_0576, x(192), x(193), const_species_s_1207, const_species_s_1434_b);

% Reaction: id = r_0577, name = histidinol-phosphate transaminase	% Local Parameter:   id =  Keq_r_0577, name = Keq_r_0577
	reaction_r_0577_Keq_r_0577=1.1;
	% Local Parameter:   id =  Vmax_r_0577, name = Vmax_r_0577
	reaction_r_0577_Vmax_r_0577=0.32109;
	% Local Parameter:   id =  kmp_s_0185r_0577, name = kmp_s_0185r_0577
	reaction_r_0577_kmp_s_0185r_0577=0.549;
	% Local Parameter:   id =  kmp_s_0916r_0577, name = kmp_s_0916r_0577
	reaction_r_0577_kmp_s_0916r_0577=0.549;
	% Local Parameter:   id =  kms_s_0212r_0577, name = kms_s_0212r_0577
	reaction_r_0577_kms_s_0212r_0577=0.549;
	% Local Parameter:   id =  kms_s_0899r_0577, name = kms_s_0899r_0577
	reaction_r_0577_kms_s_0899r_0577=0.549;

	reaction_r_0577=compartment_intracellular*function_150(reaction_r_0577_Keq_r_0577, reaction_r_0577_Vmax_r_0577, compartment_intracellular, reaction_r_0577_kmp_s_0185r_0577, reaction_r_0577_kmp_s_0916r_0577, reaction_r_0577_kms_s_0212r_0577, reaction_r_0577_kms_s_0899r_0577, x(42), x(47), x(188), x(193));

% Reaction: id = r_0581, name = homoacontinate hydratase	% Local Parameter:   id =  Keq_r_0581, name = Keq_r_0581
	reaction_r_0581_Keq_r_0581=2.00364;
	% Local Parameter:   id =  Vmax_r_0581, name = Vmax_r_0581
	reaction_r_0581_Vmax_r_0581=0.731504;
	% Local Parameter:   id =  kmp_s_0800r_0581, name = kmp_s_0800r_0581
	reaction_r_0581_kmp_s_0800r_0581=0.549;
	% Local Parameter:   id =  kms_s_0468r_0581, name = kms_s_0468r_0581
	reaction_r_0581_kms_s_0468r_0581=0.549;
	% Local Parameter:   id =  kms_s_1434_br_0581, name = kms_s_1434_br_0581
	reaction_r_0581_kms_s_1434_br_0581=0.549;

	reaction_r_0581=compartment_intracellular*function_151(reaction_r_0581_Keq_r_0581, reaction_r_0581_Vmax_r_0581, compartment_intracellular, reaction_r_0581_kmp_s_0800r_0581, reaction_r_0581_kms_s_0468r_0581, reaction_r_0581_kms_s_1434_br_0581, x(105), x(168), const_species_s_1434_b);

% Reaction: id = r_0582, name = homocitrate synthase	% Local Parameter:   id =  Keq_r_0582, name = Keq_r_0582
	reaction_r_0582_Keq_r_0582=1.1;
	% Local Parameter:   id =  Vmax_r_0582, name = Vmax_r_0582
	reaction_r_0582_Vmax_r_0582=2.1945;
	% Local Parameter:   id =  kmp_s_0514r_0582, name = kmp_s_0514r_0582
	reaction_r_0582_kmp_s_0514r_0582=0.549;
	% Local Parameter:   id =  kmp_s_0763_br_0582, name = kmp_s_0763_br_0582
	reaction_r_0582_kmp_s_0763_br_0582=0.549;
	% Local Parameter:   id =  kmp_s_0798r_0582, name = kmp_s_0798r_0582
	reaction_r_0582_kmp_s_0798r_0582=0.549;
	% Local Parameter:   id =  kms_s_0185r_0582, name = kms_s_0185r_0582
	reaction_r_0582_kms_s_0185r_0582=0.549;
	% Local Parameter:   id =  kms_s_0380r_0582, name = kms_s_0380r_0582
	reaction_r_0582_kms_s_0380r_0582=0.549;
	% Local Parameter:   id =  kms_s_1434_br_0582, name = kms_s_1434_br_0582
	reaction_r_0582_kms_s_1434_br_0582=0.549;

	reaction_r_0582=compartment_intracellular*function_152(reaction_r_0582_Keq_r_0582, reaction_r_0582_Vmax_r_0582, compartment_intracellular, reaction_r_0582_kmp_s_0514r_0582, reaction_r_0582_kmp_s_0763_br_0582, reaction_r_0582_kmp_s_0798r_0582, reaction_r_0582_kms_s_0185r_0582, reaction_r_0582_kms_s_0380r_0582, reaction_r_0582_kms_s_1434_br_0582, x(42), x(88), x(114), const_species_s_0763_b, x(167), const_species_s_1434_b);

% Reaction: id = r_0585, name = homoisocitrate dehydrogenase	% Local Parameter:   id =  Keq_r_0585, name = Keq_r_0585
	reaction_r_0585_Keq_r_0585=0.0348439;
	% Local Parameter:   id =  Vmax_r_0585, name = Vmax_r_0585
	reaction_r_0585_Vmax_r_0585=1.60929;
	% Local Parameter:   id =  kmp_s_0180r_0585, name = kmp_s_0180r_0585
	reaction_r_0585_kmp_s_0180r_0585=0.549;
	% Local Parameter:   id =  kmp_s_0763_br_0585, name = kmp_s_0763_br_0585
	reaction_r_0585_kmp_s_0763_br_0585=0.549;
	% Local Parameter:   id =  kmp_s_1087r_0585, name = kmp_s_1087r_0585
	reaction_r_0585_kmp_s_1087r_0585=0.0867353;
	% Local Parameter:   id =  kms_s_0800r_0585, name = kms_s_0800r_0585
	reaction_r_0585_kms_s_0800r_0585=0.549;
	% Local Parameter:   id =  kms_s_1082r_0585, name = kms_s_1082r_0585
	reaction_r_0585_kms_s_1082r_0585=1.50326;

	reaction_r_0585=compartment_intracellular*function_153(reaction_r_0585_Keq_r_0585, reaction_r_0585_Vmax_r_0585, compartment_intracellular, reaction_r_0585_kmp_s_0180r_0585, reaction_r_0585_kmp_s_0763_br_0585, reaction_r_0585_kmp_s_1087r_0585, reaction_r_0585_kms_s_0800r_0585, reaction_r_0585_kms_s_1082r_0585, x(39), const_species_s_0763_b, x(168), x(228), x(229));

% Reaction: id = r_0586, name = homoserine dehydrogenase (NADH)	% Local Parameter:   id =  Keq_r_0586, name = Keq_r_0586
	reaction_r_0586_Keq_r_0586=34.7263;
	% Local Parameter:   id =  Vmax_r_0586, name = Vmax_r_0586
	reaction_r_0586_Vmax_r_0586=9.81316;
	% Local Parameter:   id =  kmp_s_0919r_0586, name = kmp_s_0919r_0586
	reaction_r_0586_kmp_s_0919r_0586=0.549;
	% Local Parameter:   id =  kmp_s_1082r_0586, name = kmp_s_1082r_0586
	reaction_r_0586_kmp_s_1082r_0586=1.50326;
	% Local Parameter:   id =  kms_s_0763_br_0586, name = kms_s_0763_br_0586
	reaction_r_0586_kms_s_0763_br_0586=0.549;
	% Local Parameter:   id =  kms_s_0886r_0586, name = kms_s_0886r_0586
	reaction_r_0586_kms_s_0886r_0586=0.549;
	% Local Parameter:   id =  kms_s_1087r_0586, name = kms_s_1087r_0586
	reaction_r_0586_kms_s_1087r_0586=0.0867353;

	reaction_r_0586=compartment_intracellular*function_154(reaction_r_0586_Keq_r_0586, reaction_r_0586_Vmax_r_0586, compartment_intracellular, reaction_r_0586_kmp_s_0919r_0586, reaction_r_0586_kmp_s_1082r_0586, reaction_r_0586_kms_s_0763_br_0586, reaction_r_0586_kms_s_0886r_0586, reaction_r_0586_kms_s_1087r_0586, const_species_s_0763_b, x(183), x(195), x(228), x(229));

% Reaction: id = r_0588, name = homoserine kinase	% Local Parameter:   id =  Keq_r_0588, name = Keq_r_0588
	reaction_r_0588_Keq_r_0588=0.950614;
	% Local Parameter:   id =  Vmax_r_0588, name = Vmax_r_0588
	reaction_r_0588_Vmax_r_0588=8.76037;
	% Local Parameter:   id =  kmp_s_0400r_0588, name = kmp_s_0400r_0588
	reaction_r_0588_kmp_s_0400r_0588=1.71907;
	% Local Parameter:   id =  kmp_s_0763_br_0588, name = kmp_s_0763_br_0588
	reaction_r_0588_kmp_s_0763_br_0588=0.549;
	% Local Parameter:   id =  kmp_s_1122r_0588, name = kmp_s_1122r_0588
	reaction_r_0588_kmp_s_1122r_0588=0.549;
	% Local Parameter:   id =  kms_s_0446r_0588, name = kms_s_0446r_0588
	reaction_r_0588_kms_s_0446r_0588=1.09208;
	% Local Parameter:   id =  kms_s_0919r_0588, name = kms_s_0919r_0588
	reaction_r_0588_kms_s_0919r_0588=0.549;

	reaction_r_0588=compartment_intracellular*function_155(reaction_r_0588_Keq_r_0588, reaction_r_0588_Vmax_r_0588, compartment_intracellular, reaction_r_0588_kmp_s_0400r_0588, reaction_r_0588_kmp_s_0763_br_0588, reaction_r_0588_kmp_s_1122r_0588, reaction_r_0588_kms_s_0446r_0588, reaction_r_0588_kms_s_0919r_0588, x(92), x(101), const_species_s_0763_b, x(195), x(233));

% Reaction: id = r_0589, name = homoserine O-trans-acetylase	% Local Parameter:   id =  Keq_r_0589, name = Keq_r_0589
	reaction_r_0589_Keq_r_0589=1.1;
	% Local Parameter:   id =  Vmax_r_0589, name = Vmax_r_0589
	reaction_r_0589_Vmax_r_0589=0.67221;
	% Local Parameter:   id =  kmp_s_0514r_0589, name = kmp_s_0514r_0589
	reaction_r_0589_kmp_s_0514r_0589=0.549;
	% Local Parameter:   id =  kmp_s_1117r_0589, name = kmp_s_1117r_0589
	reaction_r_0589_kmp_s_1117r_0589=0.549;
	% Local Parameter:   id =  kms_s_0380r_0589, name = kms_s_0380r_0589
	reaction_r_0589_kms_s_0380r_0589=0.549;
	% Local Parameter:   id =  kms_s_0919r_0589, name = kms_s_0919r_0589
	reaction_r_0589_kms_s_0919r_0589=0.549;

	reaction_r_0589=compartment_intracellular*function_156(reaction_r_0589_Keq_r_0589, reaction_r_0589_Vmax_r_0589, compartment_intracellular, reaction_r_0589_kmp_s_0514r_0589, reaction_r_0589_kmp_s_1117r_0589, reaction_r_0589_kms_s_0380r_0589, reaction_r_0589_kms_s_0919r_0589, x(88), x(114), x(195), x(232));

% Reaction: id = r_0598, name = hydroxymethylglutaryl CoA reductase	% Local Parameter:   id =  Keq_r_0598, name = Keq_r_0598
	reaction_r_0598_Keq_r_0598=2.00364;
	% Local Parameter:   id =  Vmax_r_0598, name = Vmax_r_0598
	reaction_r_0598_Vmax_r_0598=0.3762;
	% Local Parameter:   id =  kmp_s_0031r_0598, name = kmp_s_0031r_0598
	reaction_r_0598_kmp_s_0031r_0598=0.549;
	% Local Parameter:   id =  kmp_s_0514r_0598, name = kmp_s_0514r_0598
	reaction_r_0598_kmp_s_0514r_0598=0.549;
	% Local Parameter:   id =  kmp_s_1091r_0598, name = kmp_s_1091r_0598
	reaction_r_0598_kmp_s_1091r_0598=0.549;
	% Local Parameter:   id =  kms_s_0225r_0598, name = kms_s_0225r_0598
	reaction_r_0598_kms_s_0225r_0598=0.549;
	% Local Parameter:   id =  kms_s_0763_br_0598, name = kms_s_0763_br_0598
	reaction_r_0598_kms_s_0763_br_0598=0.549;
	% Local Parameter:   id =  kms_s_1096r_0598, name = kms_s_1096r_0598
	reaction_r_0598_kms_s_1096r_0598=0.549;

	reaction_r_0598=compartment_intracellular*function_157(reaction_r_0598_Keq_r_0598, reaction_r_0598_Vmax_r_0598, compartment_intracellular, reaction_r_0598_kmp_s_0031r_0598, reaction_r_0598_kmp_s_0514r_0598, reaction_r_0598_kmp_s_1091r_0598, reaction_r_0598_kms_s_0225r_0598, reaction_r_0598_kms_s_0763_br_0598, reaction_r_0598_kms_s_1096r_0598, x(11), x(52), x(114), const_species_s_0763_b, x(230), x(231));

% Reaction: id = r_0599, name = hydroxymethylglutaryl CoA synthase	% Local Parameter:   id =  Keq_r_0599, name = Keq_r_0599
	reaction_r_0599_Keq_r_0599=1.1;
	% Local Parameter:   id =  Vmax_r_0599, name = Vmax_r_0599
	reaction_r_0599_Vmax_r_0599=0.3762;
	% Local Parameter:   id =  kmp_s_0225r_0599, name = kmp_s_0225r_0599
	reaction_r_0599_kmp_s_0225r_0599=0.549;
	% Local Parameter:   id =  kmp_s_0514r_0599, name = kmp_s_0514r_0599
	reaction_r_0599_kmp_s_0514r_0599=0.549;
	% Local Parameter:   id =  kmp_s_0763_br_0599, name = kmp_s_0763_br_0599
	reaction_r_0599_kmp_s_0763_br_0599=0.549;
	% Local Parameter:   id =  kms_s_0374r_0599, name = kms_s_0374r_0599
	reaction_r_0599_kms_s_0374r_0599=0.549;
	% Local Parameter:   id =  kms_s_0380r_0599, name = kms_s_0380r_0599
	reaction_r_0599_kms_s_0380r_0599=0.549;
	% Local Parameter:   id =  kms_s_1434_br_0599, name = kms_s_1434_br_0599
	reaction_r_0599_kms_s_1434_br_0599=0.549;

	reaction_r_0599=compartment_intracellular*function_158(reaction_r_0599_Keq_r_0599, reaction_r_0599_Vmax_r_0599, compartment_intracellular, reaction_r_0599_kmp_s_0225r_0599, reaction_r_0599_kmp_s_0514r_0599, reaction_r_0599_kmp_s_0763_br_0599, reaction_r_0599_kms_s_0374r_0599, reaction_r_0599_kms_s_0380r_0599, reaction_r_0599_kms_s_1434_br_0599, x(52), x(87), x(88), x(114), const_species_s_0763_b, const_species_s_1434_b);

% Reaction: id = r_0604, name = Imidazole-glycerol-3-phosphate synthase	% Local Parameter:   id =  Keq_r_0604, name = Keq_r_0604
	reaction_r_0604_Keq_r_0604=0.331541;
	% Local Parameter:   id =  Vmax_r_0604, name = Vmax_r_0604
	reaction_r_0604_Vmax_r_0604=0.871524;
	% Local Parameter:   id =  kmp_s_0317r_0604, name = kmp_s_0317r_0604
	reaction_r_0604_kmp_s_0317r_0604=0.549;
	% Local Parameter:   id =  kmp_s_0532r_0604, name = kmp_s_0532r_0604
	reaction_r_0604_kmp_s_0532r_0604=0.549;
	% Local Parameter:   id =  kmp_s_0763_br_0604, name = kmp_s_0763_br_0604
	reaction_r_0604_kmp_s_0763_br_0604=0.549;
	% Local Parameter:   id =  kmp_s_0899r_0604, name = kmp_s_0899r_0604
	reaction_r_0604_kmp_s_0899r_0604=0.549;
	% Local Parameter:   id =  kms_s_0315r_0604, name = kms_s_0315r_0604
	reaction_r_0604_kms_s_0315r_0604=0.549;
	% Local Parameter:   id =  kms_s_0907r_0604, name = kms_s_0907r_0604
	reaction_r_0604_kms_s_0907r_0604=0.549;

	reaction_r_0604=compartment_intracellular*function_159(reaction_r_0604_Keq_r_0604, reaction_r_0604_Vmax_r_0604, compartment_intracellular, reaction_r_0604_kmp_s_0317r_0604, reaction_r_0604_kmp_s_0532r_0604, reaction_r_0604_kmp_s_0763_br_0604, reaction_r_0604_kmp_s_0899r_0604, reaction_r_0604_kms_s_0315r_0604, reaction_r_0604_kms_s_0907r_0604, x(71), x(73), x(118), const_species_s_0763_b, x(188), x(190));

% Reaction: id = r_0605, name = imidazoleglycerol-phosphate dehydratase	% Local Parameter:   id =  Keq_r_0605, name = Keq_r_0605
	reaction_r_0605_Keq_r_0605=0.6039;
	% Local Parameter:   id =  Vmax_r_0605, name = Vmax_r_0605
	reaction_r_0605_Vmax_r_0605=0.229349;
	% Local Parameter:   id =  kmp_s_0212r_0605, name = kmp_s_0212r_0605
	reaction_r_0605_kmp_s_0212r_0605=0.549;
	% Local Parameter:   id =  kmp_s_1434_br_0605, name = kmp_s_1434_br_0605
	reaction_r_0605_kmp_s_1434_br_0605=0.549;
	% Local Parameter:   id =  kms_s_0532r_0605, name = kms_s_0532r_0605
	reaction_r_0605_kms_s_0532r_0605=0.549;

	reaction_r_0605=compartment_intracellular*function_160(reaction_r_0605_Keq_r_0605, reaction_r_0605_Vmax_r_0605, compartment_intracellular, reaction_r_0605_kmp_s_0212r_0605, reaction_r_0605_kmp_s_1434_br_0605, reaction_r_0605_kms_s_0532r_0605, x(47), x(118), const_species_s_1434_b);

% Reaction: id = r_0606, name = IMP cyclohydrolase	% Local Parameter:   id =  Keq_r_0606, name = Keq_r_0606
	reaction_r_0606_Keq_r_0606=0.6039;
	% Local Parameter:   id =  Vmax_r_0606, name = Vmax_r_0606
	reaction_r_0606_Vmax_r_0606=0.560996;
	% Local Parameter:   id =  kmp_s_0816r_0606, name = kmp_s_0816r_0606
	reaction_r_0606_kmp_s_0816r_0606=0.549;
	% Local Parameter:   id =  kmp_s_1434_br_0606, name = kmp_s_1434_br_0606
	reaction_r_0606_kmp_s_1434_br_0606=0.549;
	% Local Parameter:   id =  kms_s_0325r_0606, name = kms_s_0325r_0606
	reaction_r_0606_kms_s_0325r_0606=0.549;

	reaction_r_0606=compartment_intracellular*function_161(reaction_r_0606_Keq_r_0606, reaction_r_0606_Vmax_r_0606, compartment_intracellular, reaction_r_0606_kmp_s_0816r_0606, reaction_r_0606_kmp_s_1434_br_0606, reaction_r_0606_kms_s_0325r_0606, x(77), x(171), const_species_s_1434_b);

% Reaction: id = r_0607, name = IMP dehydrogenase	% Local Parameter:   id =  Keq_r_0607, name = Keq_r_0607
	reaction_r_0607_Keq_r_0607=0.063468;
	% Local Parameter:   id =  Vmax_r_0607, name = Vmax_r_0607
	reaction_r_0607_Vmax_r_0607=0.501598;
	% Local Parameter:   id =  kmp_s_0306r_0607, name = kmp_s_0306r_0607
	reaction_r_0607_kmp_s_0306r_0607=0.549;
	% Local Parameter:   id =  kmp_s_0763_br_0607, name = kmp_s_0763_br_0607
	reaction_r_0607_kmp_s_0763_br_0607=0.549;
	% Local Parameter:   id =  kmp_s_1087r_0607, name = kmp_s_1087r_0607
	reaction_r_0607_kmp_s_1087r_0607=0.0867353;
	% Local Parameter:   id =  kms_s_0816r_0607, name = kms_s_0816r_0607
	reaction_r_0607_kms_s_0816r_0607=0.549;
	% Local Parameter:   id =  kms_s_1082r_0607, name = kms_s_1082r_0607
	reaction_r_0607_kms_s_1082r_0607=1.50326;
	% Local Parameter:   id =  kms_s_1434_br_0607, name = kms_s_1434_br_0607
	reaction_r_0607_kms_s_1434_br_0607=0.549;

	reaction_r_0607=compartment_intracellular*function_162(reaction_r_0607_Keq_r_0607, reaction_r_0607_Vmax_r_0607, compartment_intracellular, reaction_r_0607_kmp_s_0306r_0607, reaction_r_0607_kmp_s_0763_br_0607, reaction_r_0607_kmp_s_1087r_0607, reaction_r_0607_kms_s_0816r_0607, reaction_r_0607_kms_s_1082r_0607, reaction_r_0607_kms_s_1434_br_0607, x(68), const_species_s_0763_b, x(171), x(228), x(229), const_species_s_1434_b);

% Reaction: id = r_0608, name = indole-3-glycerol-phosphate synthase	% Local Parameter:   id =  Keq_r_0608, name = Keq_r_0608
	reaction_r_0608_Keq_r_0608=1.1;
	% Local Parameter:   id =  Vmax_r_0608, name = Vmax_r_0608
	reaction_r_0608_Vmax_r_0608=0.187549;
	% Local Parameter:   id =  kmp_s_0088r_0608, name = kmp_s_0088r_0608
	reaction_r_0608_kmp_s_0088r_0608=0.549;
	% Local Parameter:   id =  kmp_s_0470r_0608, name = kmp_s_0470r_0608
	reaction_r_0608_kmp_s_0470r_0608=1.0;
	% Local Parameter:   id =  kmp_s_1434_br_0608, name = kmp_s_1434_br_0608
	reaction_r_0608_kmp_s_1434_br_0608=0.549;
	% Local Parameter:   id =  kms_s_0078r_0608, name = kms_s_0078r_0608
	reaction_r_0608_kms_s_0078r_0608=0.549;
	% Local Parameter:   id =  kms_s_0763_br_0608, name = kms_s_0763_br_0608
	reaction_r_0608_kms_s_0763_br_0608=0.549;

	reaction_r_0608=compartment_intracellular*function_163(reaction_r_0608_Keq_r_0608, reaction_r_0608_Vmax_r_0608, compartment_intracellular, reaction_r_0608_kmp_s_0088r_0608, reaction_r_0608_kmp_s_0470r_0608, reaction_r_0608_kmp_s_1434_br_0608, reaction_r_0608_kms_s_0078r_0608, reaction_r_0608_kms_s_0763_br_0608, x(20), x(24), x(107), const_species_s_0763_b, const_species_s_1434_b);

% Reaction: id = r_0610, name = inorganic diphosphatase	% Local Parameter:   id =  Keq_r_0610, name = Keq_r_0610
	reaction_r_0610_Keq_r_0610=0.6039;
	% Local Parameter:   id =  Vmax_r_0610, name = Vmax_r_0610
	reaction_r_0610_Vmax_r_0610=3.2032;
	% Local Parameter:   id =  kmp_s_0763_br_0610, name = kmp_s_0763_br_0610
	reaction_r_0610_kmp_s_0763_br_0610=0.549;
	% Local Parameter:   id =  kmp_s_1207r_0610, name = kmp_s_1207r_0610
	reaction_r_0610_kmp_s_1207r_0610=0.549;
	% Local Parameter:   id =  kms_s_0605r_0610, name = kms_s_0605r_0610
	reaction_r_0610_kms_s_0605r_0610=0.549;
	% Local Parameter:   id =  kms_s_1434_br_0610, name = kms_s_1434_br_0610
	reaction_r_0610_kms_s_1434_br_0610=0.549;

	reaction_r_0610=compartment_intracellular*function_164(reaction_r_0610_Keq_r_0610, reaction_r_0610_Vmax_r_0610, compartment_intracellular, reaction_r_0610_kmp_s_0763_br_0610, reaction_r_0610_kmp_s_1207r_0610, reaction_r_0610_kms_s_0605r_0610, reaction_r_0610_kms_s_1434_br_0610, x(138), const_species_s_0763_b, const_species_s_1207, const_species_s_1434_b);

% Reaction: id = r_0618, name = inositolphosphotransferase	% Local Parameter:   id =  Keq_r_0618, name = Keq_r_0618
	reaction_r_0618_Keq_r_0618=2.00364;
	% Local Parameter:   id =  Vmax_r_0618, name = Vmax_r_0618
	reaction_r_0618_Vmax_r_0618=0.00127051;
	% Local Parameter:   id =  kmp_s_0824r_0618, name = kmp_s_0824r_0618
	reaction_r_0618_kmp_s_0824r_0618=0.549;
	% Local Parameter:   id =  kms_s_0128r_0618, name = kms_s_0128r_0618
	reaction_r_0618_kms_s_0128r_0618=0.549;
	% Local Parameter:   id =  kms_s_1013r_0618, name = kms_s_1013r_0618
	reaction_r_0618_kms_s_1013r_0618=0.549;

	reaction_r_0618=compartment_intracellular*function_165(reaction_r_0618_Keq_r_0618, reaction_r_0618_Vmax_r_0618, compartment_intracellular, reaction_r_0618_kmp_s_0824r_0618, reaction_r_0618_kms_s_0128r_0618, reaction_r_0618_kms_s_1013r_0618, x(30), x(172), x(214));

% Reaction: id = r_0621, name = IPC synthase	% Local Parameter:   id =  Keq_r_0621, name = Keq_r_0621
	reaction_r_0621_Keq_r_0621=2.00364;
	% Local Parameter:   id =  Vmax_r_0621, name = Vmax_r_0621
	reaction_r_0621_Vmax_r_0621=0.00127051;
	% Local Parameter:   id =  kmp_s_0828r_0621, name = kmp_s_0828r_0621
	reaction_r_0621_kmp_s_0828r_0621=0.549;
	% Local Parameter:   id =  kms_s_0128r_0621, name = kms_s_0128r_0621
	reaction_r_0621_kms_s_0128r_0621=0.549;
	% Local Parameter:   id =  kms_s_1060r_0621, name = kms_s_1060r_0621
	reaction_r_0621_kms_s_1060r_0621=0.549;

	reaction_r_0621=compartment_intracellular*function_166(reaction_r_0621_Keq_r_0621, reaction_r_0621_Vmax_r_0621, compartment_intracellular, reaction_r_0621_kmp_s_0828r_0621, reaction_r_0621_kms_s_0128r_0621, reaction_r_0621_kms_s_1060r_0621, x(30), x(173), x(222));

% Reaction: id = r_0630, name = isocitrate dehydrogenase (NADP)	% Local Parameter:   id =  Keq_r_0630, name = Keq_r_0630
	reaction_r_0630_Keq_r_0630=1.1;
	% Local Parameter:   id =  Vmax_r_0630, name = Vmax_r_0630
	reaction_r_0630_Vmax_r_0630=6.98167;
	% Local Parameter:   id =  kmp_s_0185r_0630, name = kmp_s_0185r_0630
	reaction_r_0630_kmp_s_0185r_0630=0.549;
	% Local Parameter:   id =  kmp_s_0470r_0630, name = kmp_s_0470r_0630
	reaction_r_0630_kmp_s_0470r_0630=1.0;
	% Local Parameter:   id =  kmp_s_1096r_0630, name = kmp_s_1096r_0630
	reaction_r_0630_kmp_s_1096r_0630=0.549;
	% Local Parameter:   id =  kms_s_0847r_0630, name = kms_s_0847r_0630
	reaction_r_0630_kms_s_0847r_0630=0.549;
	% Local Parameter:   id =  kms_s_1091r_0630, name = kms_s_1091r_0630
	reaction_r_0630_kms_s_1091r_0630=0.549;

	reaction_r_0630=compartment_intracellular*function_167(reaction_r_0630_Keq_r_0630, reaction_r_0630_Vmax_r_0630, compartment_intracellular, reaction_r_0630_kmp_s_0185r_0630, reaction_r_0630_kmp_s_0470r_0630, reaction_r_0630_kmp_s_1096r_0630, reaction_r_0630_kms_s_0847r_0630, reaction_r_0630_kms_s_1091r_0630, x(42), x(107), x(174), x(230), x(231));

% Reaction: id = r_0633, name = isocitrate lyase	% Local Parameter:   id =  Keq_r_0633, name = Keq_r_0633
	reaction_r_0633_Keq_r_0633=0.6039;
	% Local Parameter:   id =  Vmax_r_0633, name = Vmax_r_0633
	reaction_r_0633_Vmax_r_0633=1.22649;
	% Local Parameter:   id =  kmp_s_0749r_0633, name = kmp_s_0749r_0633
	reaction_r_0633_kmp_s_0749r_0633=0.549;
	% Local Parameter:   id =  kmp_s_1338r_0633, name = kmp_s_1338r_0633
	reaction_r_0633_kmp_s_1338r_0633=0.549;
	% Local Parameter:   id =  kms_s_0847r_0633, name = kms_s_0847r_0633
	reaction_r_0633_kms_s_0847r_0633=0.549;

	reaction_r_0633=compartment_intracellular*function_168(reaction_r_0633_Keq_r_0633, reaction_r_0633_Vmax_r_0633, compartment_intracellular, reaction_r_0633_kmp_s_0749r_0633, reaction_r_0633_kmp_s_1338r_0633, reaction_r_0633_kms_s_0847r_0633, x(164), x(174), x(263));

% Reaction: id = r_0634, name = isoleucine transaminase	% Local Parameter:   id =  Keq_r_0634, name = Keq_r_0634
	reaction_r_0634_Keq_r_0634=1.1;
	% Local Parameter:   id =  Vmax_r_0634, name = Vmax_r_0634
	reaction_r_0634_Vmax_r_0634=0.73304;
	% Local Parameter:   id =  kmp_s_0185r_0634, name = kmp_s_0185r_0634
	reaction_r_0634_kmp_s_0185r_0634=0.549;
	% Local Parameter:   id =  kmp_s_0920r_0634, name = kmp_s_0920r_0634
	reaction_r_0634_kmp_s_0920r_0634=0.549;
	% Local Parameter:   id =  kms_s_0058r_0634, name = kms_s_0058r_0634
	reaction_r_0634_kms_s_0058r_0634=0.549;
	% Local Parameter:   id =  kms_s_0899r_0634, name = kms_s_0899r_0634
	reaction_r_0634_kms_s_0899r_0634=0.549;

	reaction_r_0634=compartment_intracellular*function_169(reaction_r_0634_Keq_r_0634, reaction_r_0634_Vmax_r_0634, compartment_intracellular, reaction_r_0634_kmp_s_0185r_0634, reaction_r_0634_kmp_s_0920r_0634, reaction_r_0634_kms_s_0058r_0634, reaction_r_0634_kms_s_0899r_0634, x(17), x(42), x(188), x(196));

% Reaction: id = r_0638, name = isopentenyl-diphosphate D-isomerase	% Local Parameter:   id =  Keq_r_0638, name = Keq_r_0638
	reaction_r_0638_Keq_r_0638=1.1;
	% Local Parameter:   id =  Vmax_r_0638, name = Vmax_r_0638
	reaction_r_0638_Vmax_r_0638=0.025113;
	% Local Parameter:   id =  kmp_s_1257r_0638, name = kmp_s_1257r_0638
	reaction_r_0638_kmp_s_1257r_0638=0.549;
	% Local Parameter:   id =  kms_s_0850r_0638, name = kms_s_0850r_0638
	reaction_r_0638_kms_s_0850r_0638=0.549;

	reaction_r_0638=compartment_intracellular*function_170(reaction_r_0638_Keq_r_0638, reaction_r_0638_Vmax_r_0638, compartment_intracellular, reaction_r_0638_kmp_s_1257r_0638, reaction_r_0638_kms_s_0850r_0638, x(175), x(250));

% Reaction: id = r_0640, name = ketol-acid reductoisomerase (2-aceto-2-hydroxybutanoate)	% Local Parameter:   id =  Keq_r_0640, name = Keq_r_0640
	reaction_r_0640_Keq_r_0640=2.00364;
	% Local Parameter:   id =  Vmax_r_0640, name = Vmax_r_0640
	reaction_r_0640_Vmax_r_0640=1.15192;
	% Local Parameter:   id =  kmp_s_0007r_0640, name = kmp_s_0007r_0640
	reaction_r_0640_kmp_s_0007r_0640=0.549;
	% Local Parameter:   id =  kmp_s_1091r_0640, name = kmp_s_1091r_0640
	reaction_r_0640_kmp_s_1091r_0640=0.549;
	% Local Parameter:   id =  kms_s_0042r_0640, name = kms_s_0042r_0640
	reaction_r_0640_kms_s_0042r_0640=0.549;
	% Local Parameter:   id =  kms_s_0763_br_0640, name = kms_s_0763_br_0640
	reaction_r_0640_kms_s_0763_br_0640=0.549;
	% Local Parameter:   id =  kms_s_1096r_0640, name = kms_s_1096r_0640
	reaction_r_0640_kms_s_1096r_0640=0.549;

	reaction_r_0640=compartment_intracellular*function_171(reaction_r_0640_Keq_r_0640, reaction_r_0640_Vmax_r_0640, compartment_intracellular, reaction_r_0640_kmp_s_0007r_0640, reaction_r_0640_kmp_s_1091r_0640, reaction_r_0640_kms_s_0042r_0640, reaction_r_0640_kms_s_0763_br_0640, reaction_r_0640_kms_s_1096r_0640, x(2), x(13), const_species_s_0763_b, x(230), x(231));

% Reaction: id = r_0647, name = L-alanine transaminase	% Local Parameter:   id =  Keq_r_0647, name = Keq_r_0647
	reaction_r_0647_Keq_r_0647=9.96691;
	% Local Parameter:   id =  Vmax_r_0647, name = Vmax_r_0647
	reaction_r_0647_Vmax_r_0647=3.2494;
	% Local Parameter:   id =  kmp_s_0185r_0647, name = kmp_s_0185r_0647
	reaction_r_0647_kmp_s_0185r_0647=0.549;
	% Local Parameter:   id =  kmp_s_0863r_0647, name = kmp_s_0863r_0647
	reaction_r_0647_kmp_s_0863r_0647=0.549;
	% Local Parameter:   id =  kms_s_0899r_0647, name = kms_s_0899r_0647
	reaction_r_0647_kms_s_0899r_0647=0.549;
	% Local Parameter:   id =  kms_s_1277r_0647, name = kms_s_1277r_0647
	reaction_r_0647_kms_s_1277r_0647=0.0605905;

	reaction_r_0647=compartment_intracellular*function_172(reaction_r_0647_Keq_r_0647, reaction_r_0647_Vmax_r_0647, compartment_intracellular, reaction_r_0647_kmp_s_0185r_0647, reaction_r_0647_kmp_s_0863r_0647, reaction_r_0647_kms_s_0899r_0647, reaction_r_0647_kms_s_1277r_0647, x(42), x(178), x(188), x(252));

% Reaction: id = r_0650, name = L-aminoadipate-semialdehyde dehydrogenase (NADH)	% Local Parameter:   id =  Keq_r_0650, name = Keq_r_0650
	reaction_r_0650_Keq_r_0650=21.9885;
	% Local Parameter:   id =  Vmax_r_0650, name = Vmax_r_0650
	reaction_r_0650_Vmax_r_0650=4.53532;
	% Local Parameter:   id =  kmp_s_0434r_0650, name = kmp_s_0434r_0650
	reaction_r_0650_kmp_s_0434r_0650=1.25956;
	% Local Parameter:   id =  kmp_s_0605r_0650, name = kmp_s_0605r_0650
	reaction_r_0650_kmp_s_0605r_0650=0.549;
	% Local Parameter:   id =  kmp_s_0867r_0650, name = kmp_s_0867r_0650
	reaction_r_0650_kmp_s_0867r_0650=0.549;
	% Local Parameter:   id =  kmp_s_1082r_0650, name = kmp_s_1082r_0650
	reaction_r_0650_kmp_s_1082r_0650=1.50326;
	% Local Parameter:   id =  kms_s_0446r_0650, name = kms_s_0446r_0650
	reaction_r_0650_kms_s_0446r_0650=1.09208;
	% Local Parameter:   id =  kms_s_0763_br_0650, name = kms_s_0763_br_0650
	reaction_r_0650_kms_s_0763_br_0650=0.549;
	% Local Parameter:   id =  kms_s_0861r_0650, name = kms_s_0861r_0650
	reaction_r_0650_kms_s_0861r_0650=0.549;
	% Local Parameter:   id =  kms_s_1087r_0650, name = kms_s_1087r_0650
	reaction_r_0650_kms_s_1087r_0650=0.0867353;

	reaction_r_0650=compartment_intracellular*function_173(reaction_r_0650_Keq_r_0650, reaction_r_0650_Vmax_r_0650, compartment_intracellular, reaction_r_0650_kmp_s_0434r_0650, reaction_r_0650_kmp_s_0605r_0650, reaction_r_0650_kmp_s_0867r_0650, reaction_r_0650_kmp_s_1082r_0650, reaction_r_0650_kms_s_0446r_0650, reaction_r_0650_kms_s_0763_br_0650, reaction_r_0650_kms_s_0861r_0650, reaction_r_0650_kms_s_1087r_0650, x(98), x(101), x(138), const_species_s_0763_b, x(177), x(179), x(228), x(229));

% Reaction: id = r_0657, name = L-glutamate 5-semialdehyde dehydratase	% Local Parameter:   id =  Keq_r_0657, name = Keq_r_0657
	reaction_r_0657_Keq_r_0657=0.331541;
	% Local Parameter:   id =  Vmax_r_0657, name = Vmax_r_0657
	reaction_r_0657_Vmax_r_0657=0.706853;
	% Local Parameter:   id =  kmp_s_0120r_0657, name = kmp_s_0120r_0657
	reaction_r_0657_kmp_s_0120r_0657=0.549;
	% Local Parameter:   id =  kmp_s_0763_br_0657, name = kmp_s_0763_br_0657
	reaction_r_0657_kmp_s_0763_br_0657=0.549;
	% Local Parameter:   id =  kmp_s_1434_br_0657, name = kmp_s_1434_br_0657
	reaction_r_0657_kmp_s_1434_br_0657=0.549;
	% Local Parameter:   id =  kms_s_0905r_0657, name = kms_s_0905r_0657
	reaction_r_0657_kms_s_0905r_0657=0.549;

	reaction_r_0657=compartment_intracellular*function_174(reaction_r_0657_Keq_r_0657, reaction_r_0657_Vmax_r_0657, compartment_intracellular, reaction_r_0657_kmp_s_0120r_0657, reaction_r_0657_kmp_s_0763_br_0657, reaction_r_0657_kmp_s_1434_br_0657, reaction_r_0657_kms_s_0905r_0657, x(27), const_species_s_0763_b, x(189), const_species_s_1434_b);

% Reaction: id = r_0660, name = L-hydroxyproline dehydrogenase (NADP)	% Local Parameter:   id =  Keq_r_0660, name = Keq_r_0660
	reaction_r_0660_Keq_r_0660=0.331541;
	% Local Parameter:   id =  Vmax_r_0660, name = Vmax_r_0660
	reaction_r_0660_Vmax_r_0660=3.30329;
	% Local Parameter:   id =  kmp_s_0118r_0660, name = kmp_s_0118r_0660
	reaction_r_0660_kmp_s_0118r_0660=0.549;
	% Local Parameter:   id =  kmp_s_0763_br_0660, name = kmp_s_0763_br_0660
	reaction_r_0660_kmp_s_0763_br_0660=0.549;
	% Local Parameter:   id =  kmp_s_1096r_0660, name = kmp_s_1096r_0660
	reaction_r_0660_kmp_s_1096r_0660=0.549;
	% Local Parameter:   id =  kms_s_1091r_0660, name = kms_s_1091r_0660
	reaction_r_0660_kms_s_1091r_0660=0.549;
	% Local Parameter:   id =  kms_s_1379r_0660, name = kms_s_1379r_0660
	reaction_r_0660_kms_s_1379r_0660=0.549;

	reaction_r_0660=compartment_intracellular*function_175(reaction_r_0660_Keq_r_0660, reaction_r_0660_Vmax_r_0660, compartment_intracellular, reaction_r_0660_kmp_s_0118r_0660, reaction_r_0660_kmp_s_0763_br_0660, reaction_r_0660_kmp_s_1096r_0660, reaction_r_0660_kms_s_1091r_0660, reaction_r_0660_kms_s_1379r_0660, x(26), const_species_s_0763_b, x(230), x(231), x(268));

% Reaction: id = r_0661, name = L-hydroxyproline reductase (NAD)	% Local Parameter:   id =  Keq_r_0661, name = Keq_r_0661
	reaction_r_0661_Keq_r_0661=63.2537;
	% Local Parameter:   id =  Vmax_r_0661, name = Vmax_r_0661
	reaction_r_0661_Vmax_r_0661=3.30332;
	% Local Parameter:   id =  kmp_s_1082r_0661, name = kmp_s_1082r_0661
	reaction_r_0661_kmp_s_1082r_0661=1.50326;
	% Local Parameter:   id =  kmp_s_1379r_0661, name = kmp_s_1379r_0661
	reaction_r_0661_kmp_s_1379r_0661=0.549;
	% Local Parameter:   id =  kms_s_0118r_0661, name = kms_s_0118r_0661
	reaction_r_0661_kms_s_0118r_0661=0.549;
	% Local Parameter:   id =  kms_s_0763_br_0661, name = kms_s_0763_br_0661
	reaction_r_0661_kms_s_0763_br_0661=0.549;
	% Local Parameter:   id =  kms_s_1087r_0661, name = kms_s_1087r_0661
	reaction_r_0661_kms_s_1087r_0661=0.0867353;

	reaction_r_0661=compartment_intracellular*function_176(reaction_r_0661_Keq_r_0661, reaction_r_0661_Vmax_r_0661, compartment_intracellular, reaction_r_0661_kmp_s_1082r_0661, reaction_r_0661_kmp_s_1379r_0661, reaction_r_0661_kms_s_0118r_0661, reaction_r_0661_kms_s_0763_br_0661, reaction_r_0661_kms_s_1087r_0661, x(26), const_species_s_0763_b, x(228), x(229), x(268));

% Reaction: id = r_0667, name = L-threonine deaminase	% Local Parameter:   id =  Keq_r_0667, name = Keq_r_0667
	reaction_r_0667_Keq_r_0667=0.331541;
	% Local Parameter:   id =  Vmax_r_0667, name = Vmax_r_0667
	reaction_r_0667_Vmax_r_0667=0.196349;
	% Local Parameter:   id =  kmp_s_0183r_0667, name = kmp_s_0183r_0667
	reaction_r_0667_kmp_s_0183r_0667=0.549;
	% Local Parameter:   id =  kmp_s_0430r_0667, name = kmp_s_0430r_0667
	reaction_r_0667_kmp_s_0430r_0667=0.549;
	% Local Parameter:   id =  kms_s_0949r_0667, name = kms_s_0949r_0667
	reaction_r_0667_kms_s_0949r_0667=1.0;

	reaction_r_0667=compartment_intracellular*function_177(reaction_r_0667_Keq_r_0667, reaction_r_0667_Vmax_r_0667, compartment_intracellular, reaction_r_0667_kmp_s_0183r_0667, reaction_r_0667_kmp_s_0430r_0667, reaction_r_0667_kms_s_0949r_0667, x(41), x(97), x(204));

% Reaction: id = r_0673, name = lanosterol synthase	% Local Parameter:   id =  Keq_r_0673, name = Keq_r_0673
	reaction_r_0673_Keq_r_0673=1.1;
	% Local Parameter:   id =  Vmax_r_0673, name = Vmax_r_0673
	reaction_r_0673_Vmax_r_0673=0.01254;
	% Local Parameter:   id =  kmp_s_0963r_0673, name = kmp_s_0963r_0673
	reaction_r_0673_kmp_s_0963r_0673=0.549;
	% Local Parameter:   id =  kms_s_0040r_0673, name = kms_s_0040r_0673
	reaction_r_0673_kms_s_0040r_0673=0.549;

	reaction_r_0673=compartment_intracellular*function_178(reaction_r_0673_Keq_r_0673, reaction_r_0673_Vmax_r_0673, compartment_intracellular, reaction_r_0673_kmp_s_0963r_0673, reaction_r_0673_kms_s_0040r_0673, x(12), x(208));

% Reaction: id = r_0674, name = leucine transaminase	% Local Parameter:   id =  Keq_r_0674, name = Keq_r_0674
	reaction_r_0674_Keq_r_0674=1.1;
	% Local Parameter:   id =  Vmax_r_0674, name = Vmax_r_0674
	reaction_r_0674_Vmax_r_0674=1.0703;
	% Local Parameter:   id =  kmp_s_0185r_0674, name = kmp_s_0185r_0674
	reaction_r_0674_kmp_s_0185r_0674=0.549;
	% Local Parameter:   id =  kmp_s_0925r_0674, name = kmp_s_0925r_0674
	reaction_r_0674_kmp_s_0925r_0674=0.549;
	% Local Parameter:   id =  kms_s_0297r_0674, name = kms_s_0297r_0674
	reaction_r_0674_kms_s_0297r_0674=0.549;
	% Local Parameter:   id =  kms_s_0899r_0674, name = kms_s_0899r_0674
	reaction_r_0674_kms_s_0899r_0674=0.549;

	reaction_r_0674=compartment_intracellular*function_179(reaction_r_0674_Keq_r_0674, reaction_r_0674_Vmax_r_0674, compartment_intracellular, reaction_r_0674_kmp_s_0185r_0674, reaction_r_0674_kmp_s_0925r_0674, reaction_r_0674_kms_s_0297r_0674, reaction_r_0674_kms_s_0899r_0674, x(42), x(63), x(188), x(197));

% Reaction: id = r_0688, name = malate dehydrogenase	% Local Parameter:   id =  Keq_r_0688, name = Keq_r_0688
	reaction_r_0688_Keq_r_0688=34.7263;
	% Local Parameter:   id =  Vmax_r_0688, name = Vmax_r_0688
	reaction_r_0688_Vmax_r_0688=4.58593;
	% Local Parameter:   id =  kmp_s_0069r_0688, name = kmp_s_0069r_0688
	reaction_r_0688_kmp_s_0069r_0688=0.549;
	% Local Parameter:   id =  kmp_s_1082r_0688, name = kmp_s_1082r_0688
	reaction_r_0688_kmp_s_1082r_0688=1.50326;
	% Local Parameter:   id =  kms_s_0763_br_0688, name = kms_s_0763_br_0688
	reaction_r_0688_kms_s_0763_br_0688=0.549;
	% Local Parameter:   id =  kms_s_1087r_0688, name = kms_s_1087r_0688
	reaction_r_0688_kms_s_1087r_0688=0.0867353;
	% Local Parameter:   id =  kms_s_1156r_0688, name = kms_s_1156r_0688
	reaction_r_0688_kms_s_1156r_0688=0.549;

	reaction_r_0688=compartment_intracellular*function_180(reaction_r_0688_Keq_r_0688, reaction_r_0688_Vmax_r_0688, compartment_intracellular, reaction_r_0688_kmp_s_0069r_0688, reaction_r_0688_kmp_s_1082r_0688, reaction_r_0688_kms_s_0763_br_0688, reaction_r_0688_kms_s_1087r_0688, reaction_r_0688_kms_s_1156r_0688, x(19), const_species_s_0763_b, x(228), x(229), x(239));

% Reaction: id = r_0697, name = mannose-1-phosphate guanylyltransferase	% Local Parameter:   id =  Keq_r_0697, name = Keq_r_0697
	reaction_r_0697_Keq_r_0697=2.00364;
	% Local Parameter:   id =  Vmax_r_0697, name = Vmax_r_0697
	reaction_r_0697_Vmax_r_0697=5.51762;
	% Local Parameter:   id =  kmp_s_0605r_0697, name = kmp_s_0605r_0697
	reaction_r_0697_kmp_s_0605r_0697=0.549;
	% Local Parameter:   id =  kmp_s_0710r_0697, name = kmp_s_0710r_0697
	reaction_r_0697_kmp_s_0710r_0697=0.549;
	% Local Parameter:   id =  kms_s_0553r_0697, name = kms_s_0553r_0697
	reaction_r_0697_kms_s_0553r_0697=0.549;
	% Local Parameter:   id =  kms_s_0755r_0697, name = kms_s_0755r_0697
	reaction_r_0697_kms_s_0755r_0697=0.549;
	% Local Parameter:   id =  kms_s_0763_br_0697, name = kms_s_0763_br_0697
	reaction_r_0697_kms_s_0763_br_0697=0.549;

	reaction_r_0697=compartment_intracellular*function_181(reaction_r_0697_Keq_r_0697, reaction_r_0697_Vmax_r_0697, compartment_intracellular, reaction_r_0697_kmp_s_0605r_0697, reaction_r_0697_kmp_s_0710r_0697, reaction_r_0697_kms_s_0553r_0697, reaction_r_0697_kms_s_0755r_0697, reaction_r_0697_kms_s_0763_br_0697, x(124), x(138), x(156), x(166), const_species_s_0763_b);

% Reaction: id = r_0698, name = mannose-6-phosphate isomerase	% Local Parameter:   id =  Keq_r_0698, name = Keq_r_0698
	reaction_r_0698_Keq_r_0698=5.77591;
	% Local Parameter:   id =  Vmax_r_0698, name = Vmax_r_0698
	reaction_r_0698_Vmax_r_0698=1.5048;
	% Local Parameter:   id =  kmp_s_0554r_0698, name = kmp_s_0554r_0698
	reaction_r_0698_kmp_s_0554r_0698=0.549;
	% Local Parameter:   id =  kms_s_0539r_0698, name = kms_s_0539r_0698
	reaction_r_0698_kms_s_0539r_0698=0.104555;

	reaction_r_0698=compartment_intracellular*function_182(reaction_r_0698_Keq_r_0698, reaction_r_0698_Vmax_r_0698, compartment_intracellular, reaction_r_0698_kmp_s_0554r_0698, reaction_r_0698_kms_s_0539r_0698, x(121), x(125));

% Reaction: id = r_0699, name = methenyltetrahydrifikate cyclohydrolase	% Local Parameter:   id =  Keq_r_0699, name = Keq_r_0699
	reaction_r_0699_Keq_r_0699=1.1;
	% Local Parameter:   id =  Vmax_r_0699, name = Vmax_r_0699
	reaction_r_0699_Vmax_r_0699=1.2166;
	% Local Parameter:   id =  kmp_s_0122r_0699, name = kmp_s_0122r_0699
	reaction_r_0699_kmp_s_0122r_0699=0.549;
	% Local Parameter:   id =  kmp_s_0763_br_0699, name = kmp_s_0763_br_0699
	reaction_r_0699_kmp_s_0763_br_0699=0.549;
	% Local Parameter:   id =  kms_s_0015r_0699, name = kms_s_0015r_0699
	reaction_r_0699_kms_s_0015r_0699=0.549;
	% Local Parameter:   id =  kms_s_1434_br_0699, name = kms_s_1434_br_0699
	reaction_r_0699_kms_s_1434_br_0699=0.549;

	reaction_r_0699=compartment_intracellular*function_183(reaction_r_0699_Keq_r_0699, reaction_r_0699_Vmax_r_0699, compartment_intracellular, reaction_r_0699_kmp_s_0122r_0699, reaction_r_0699_kmp_s_0763_br_0699, reaction_r_0699_kms_s_0015r_0699, reaction_r_0699_kms_s_1434_br_0699, x(6), x(28), const_species_s_0763_b, const_species_s_1434_b);

% Reaction: id = r_0701, name = methionine adenosyltransferase	% Local Parameter:   id =  Keq_r_0701, name = Keq_r_0701
	reaction_r_0701_Keq_r_0701=0.552982;
	% Local Parameter:   id =  Vmax_r_0701, name = Vmax_r_0701
	reaction_r_0701_Vmax_r_0701=0.141075;
	% Local Parameter:   id =  kmp_s_0605r_0701, name = kmp_s_0605r_0701
	reaction_r_0701_kmp_s_0605r_0701=0.549;
	% Local Parameter:   id =  kmp_s_1207r_0701, name = kmp_s_1207r_0701
	reaction_r_0701_kmp_s_1207r_0701=0.549;
	% Local Parameter:   id =  kmp_s_1293r_0701, name = kmp_s_1293r_0701
	reaction_r_0701_kmp_s_1293r_0701=0.549;
	% Local Parameter:   id =  kms_s_0446r_0701, name = kms_s_0446r_0701
	reaction_r_0701_kms_s_0446r_0701=1.09208;
	% Local Parameter:   id =  kms_s_0933r_0701, name = kms_s_0933r_0701
	reaction_r_0701_kms_s_0933r_0701=0.549;
	% Local Parameter:   id =  kms_s_1434_br_0701, name = kms_s_1434_br_0701
	reaction_r_0701_kms_s_1434_br_0701=0.549;

	reaction_r_0701=compartment_intracellular*function_184(reaction_r_0701_Keq_r_0701, reaction_r_0701_Vmax_r_0701, compartment_intracellular, reaction_r_0701_kmp_s_0605r_0701, reaction_r_0701_kmp_s_1207r_0701, reaction_r_0701_kmp_s_1293r_0701, reaction_r_0701_kms_s_0446r_0701, reaction_r_0701_kms_s_0933r_0701, reaction_r_0701_kms_s_1434_br_0701, x(101), x(138), x(199), const_species_s_1207, x(255), const_species_s_1434_b);

% Reaction: id = r_0702, name = methionine synthase	% Local Parameter:   id =  Keq_r_0702, name = Keq_r_0702
	reaction_r_0702_Keq_r_0702=0.6039;
	% Local Parameter:   id =  Vmax_r_0702, name = Vmax_r_0702
	reaction_r_0702_Vmax_r_0702=0.439228;
	% Local Parameter:   id =  kmp_s_0309r_0702, name = kmp_s_0309r_0702
	reaction_r_0702_kmp_s_0309r_0702=0.549;
	% Local Parameter:   id =  kmp_s_0763_br_0702, name = kmp_s_0763_br_0702
	reaction_r_0702_kmp_s_0763_br_0702=0.549;
	% Local Parameter:   id =  kmp_s_0933r_0702, name = kmp_s_0933r_0702
	reaction_r_0702_kmp_s_0933r_0702=0.549;
	% Local Parameter:   id =  kms_s_0328r_0702, name = kms_s_0328r_0702
	reaction_r_0702_kms_s_0328r_0702=0.549;
	% Local Parameter:   id =  kms_s_0917r_0702, name = kms_s_0917r_0702
	reaction_r_0702_kms_s_0917r_0702=0.549;

	reaction_r_0702=compartment_intracellular*function_185(reaction_r_0702_Keq_r_0702, reaction_r_0702_Vmax_r_0702, compartment_intracellular, reaction_r_0702_kmp_s_0309r_0702, reaction_r_0702_kmp_s_0763_br_0702, reaction_r_0702_kmp_s_0933r_0702, reaction_r_0702_kms_s_0328r_0702, reaction_r_0702_kms_s_0917r_0702, x(70), x(78), const_species_s_0763_b, x(194), x(199));

% Reaction: id = r_0707, name = methylenetetrahydrofolate dehydrogenase (NADP)	% Local Parameter:   id =  Keq_r_0707, name = Keq_r_0707
	reaction_r_0707_Keq_r_0707=1.1;
	% Local Parameter:   id =  Vmax_r_0707, name = Vmax_r_0707
	reaction_r_0707_Vmax_r_0707=1.2166;
	% Local Parameter:   id =  kmp_s_0015r_0707, name = kmp_s_0015r_0707
	reaction_r_0707_kmp_s_0015r_0707=0.549;
	% Local Parameter:   id =  kmp_s_1096r_0707, name = kmp_s_1096r_0707
	reaction_r_0707_kmp_s_1096r_0707=0.549;
	% Local Parameter:   id =  kms_s_0307r_0707, name = kms_s_0307r_0707
	reaction_r_0707_kms_s_0307r_0707=0.549;
	% Local Parameter:   id =  kms_s_1091r_0707, name = kms_s_1091r_0707
	reaction_r_0707_kms_s_1091r_0707=0.549;

	reaction_r_0707=compartment_intracellular*function_186(reaction_r_0707_Keq_r_0707, reaction_r_0707_Vmax_r_0707, compartment_intracellular, reaction_r_0707_kmp_s_0015r_0707, reaction_r_0707_kmp_s_1096r_0707, reaction_r_0707_kms_s_0307r_0707, reaction_r_0707_kms_s_1091r_0707, x(6), x(69), x(230), x(231));

% Reaction: id = r_0712, name = mevalonate kinase (ctp)	% Local Parameter:   id =  Keq_r_0712, name = Keq_r_0712
	reaction_r_0712_Keq_r_0712=0.6039;
	% Local Parameter:   id =  Vmax_r_0712, name = Vmax_r_0712
	reaction_r_0712_Vmax_r_0712=0.275879;
	% Local Parameter:   id =  kmp_s_0022r_0712, name = kmp_s_0022r_0712
	reaction_r_0712_kmp_s_0022r_0712=0.549;
	% Local Parameter:   id =  kmp_s_0481r_0712, name = kmp_s_0481r_0712
	reaction_r_0712_kmp_s_0481r_0712=0.549;
	% Local Parameter:   id =  kmp_s_0763_br_0712, name = kmp_s_0763_br_0712
	reaction_r_0712_kmp_s_0763_br_0712=0.549;
	% Local Parameter:   id =  kms_s_0031r_0712, name = kms_s_0031r_0712
	reaction_r_0712_kms_s_0031r_0712=0.549;
	% Local Parameter:   id =  kms_s_0521r_0712, name = kms_s_0521r_0712
	reaction_r_0712_kms_s_0521r_0712=0.549;

	reaction_r_0712=compartment_intracellular*function_187(reaction_r_0712_Keq_r_0712, reaction_r_0712_Vmax_r_0712, compartment_intracellular, reaction_r_0712_kmp_s_0022r_0712, reaction_r_0712_kmp_s_0481r_0712, reaction_r_0712_kmp_s_0763_br_0712, reaction_r_0712_kms_s_0031r_0712, reaction_r_0712_kms_s_0521r_0712, x(10), x(11), x(108), x(115), const_species_s_0763_b);

% Reaction: id = r_0715, name = mevalonate pyrophoshate decarboxylase	% Local Parameter:   id =  Keq_r_0715, name = Keq_r_0715
	reaction_r_0715_Keq_r_0715=0.950614;
	% Local Parameter:   id =  Vmax_r_0715, name = Vmax_r_0715
	reaction_r_0715_Vmax_r_0715=0.476517;
	% Local Parameter:   id =  kmp_s_0400r_0715, name = kmp_s_0400r_0715
	reaction_r_0715_kmp_s_0400r_0715=1.71907;
	% Local Parameter:   id =  kmp_s_0470r_0715, name = kmp_s_0470r_0715
	reaction_r_0715_kmp_s_0470r_0715=1.0;
	% Local Parameter:   id =  kmp_s_0850r_0715, name = kmp_s_0850r_0715
	reaction_r_0715_kmp_s_0850r_0715=0.549;
	% Local Parameter:   id =  kmp_s_1207r_0715, name = kmp_s_1207r_0715
	reaction_r_0715_kmp_s_1207r_0715=0.549;
	% Local Parameter:   id =  kms_s_0021r_0715, name = kms_s_0021r_0715
	reaction_r_0715_kms_s_0021r_0715=0.549;
	% Local Parameter:   id =  kms_s_0446r_0715, name = kms_s_0446r_0715
	reaction_r_0715_kms_s_0446r_0715=1.09208;

	reaction_r_0715=compartment_intracellular*function_188(reaction_r_0715_Keq_r_0715, reaction_r_0715_Vmax_r_0715, compartment_intracellular, reaction_r_0715_kmp_s_0400r_0715, reaction_r_0715_kmp_s_0470r_0715, reaction_r_0715_kmp_s_0850r_0715, reaction_r_0715_kmp_s_1207r_0715, reaction_r_0715_kms_s_0021r_0715, reaction_r_0715_kms_s_0446r_0715, x(9), x(92), x(101), x(107), x(175), const_species_s_1207);

% Reaction: id = r_0719, name = microsomal beta-keto-reductase	% Local Parameter:   id =  Keq_r_0719, name = Keq_r_0719
	reaction_r_0719_Keq_r_0719=0.6039;
	% Local Parameter:   id =  Vmax_r_0719, name = Vmax_r_0719
	reaction_r_0719_Vmax_r_0719=3.30329;
	% Local Parameter:   id =  kmp_s_0247r_0719, name = kmp_s_0247r_0719
	reaction_r_0719_kmp_s_0247r_0719=0.549;
	% Local Parameter:   id =  kmp_s_0763_br_0719, name = kmp_s_0763_br_0719
	reaction_r_0719_kmp_s_0763_br_0719=0.549;
	% Local Parameter:   id =  kmp_s_1096r_0719, name = kmp_s_1096r_0719
	reaction_r_0719_kmp_s_1096r_0719=0.549;
	% Local Parameter:   id =  kms_s_0046r_0719, name = kms_s_0046r_0719
	reaction_r_0719_kms_s_0046r_0719=0.549;
	% Local Parameter:   id =  kms_s_1091r_0719, name = kms_s_1091r_0719
	reaction_r_0719_kms_s_1091r_0719=0.549;

	reaction_r_0719=compartment_intracellular*function_189(reaction_r_0719_Keq_r_0719, reaction_r_0719_Vmax_r_0719, compartment_intracellular, reaction_r_0719_kmp_s_0247r_0719, reaction_r_0719_kmp_s_0763_br_0719, reaction_r_0719_kmp_s_1096r_0719, reaction_r_0719_kms_s_0046r_0719, reaction_r_0719_kms_s_1091r_0719, x(14), x(55), const_species_s_0763_b, x(230), x(231));

% Reaction: id = r_0720, name = microsomal beta-keto-reductase_2	% Local Parameter:   id =  Keq_r_0720, name = Keq_r_0720
	reaction_r_0720_Keq_r_0720=0.6039;
	% Local Parameter:   id =  Vmax_r_0720, name = Vmax_r_0720
	reaction_r_0720_Vmax_r_0720=3.30329;
	% Local Parameter:   id =  kmp_s_0257r_0720, name = kmp_s_0257r_0720
	reaction_r_0720_kmp_s_0257r_0720=0.549;
	% Local Parameter:   id =  kmp_s_0763_br_0720, name = kmp_s_0763_br_0720
	reaction_r_0720_kmp_s_0763_br_0720=0.549;
	% Local Parameter:   id =  kmp_s_1096r_0720, name = kmp_s_1096r_0720
	reaction_r_0720_kmp_s_1096r_0720=0.549;
	% Local Parameter:   id =  kms_s_0052r_0720, name = kms_s_0052r_0720
	reaction_r_0720_kms_s_0052r_0720=0.549;
	% Local Parameter:   id =  kms_s_1091r_0720, name = kms_s_1091r_0720
	reaction_r_0720_kms_s_1091r_0720=0.549;

	reaction_r_0720=compartment_intracellular*function_190(reaction_r_0720_Keq_r_0720, reaction_r_0720_Vmax_r_0720, compartment_intracellular, reaction_r_0720_kmp_s_0257r_0720, reaction_r_0720_kmp_s_0763_br_0720, reaction_r_0720_kmp_s_1096r_0720, reaction_r_0720_kms_s_0052r_0720, reaction_r_0720_kms_s_1091r_0720, x(15), x(57), const_species_s_0763_b, x(230), x(231));

% Reaction: id = r_0721, name = microsomal beta-keto-reductase_3	% Local Parameter:   id =  Keq_r_0721, name = Keq_r_0721
	reaction_r_0721_Keq_r_0721=0.6039;
	% Local Parameter:   id =  Vmax_r_0721, name = Vmax_r_0721
	reaction_r_0721_Vmax_r_0721=3.30329;
	% Local Parameter:   id =  kmp_s_0254r_0721, name = kmp_s_0254r_0721
	reaction_r_0721_kmp_s_0254r_0721=0.549;
	% Local Parameter:   id =  kmp_s_0763_br_0721, name = kmp_s_0763_br_0721
	reaction_r_0721_kmp_s_0763_br_0721=0.549;
	% Local Parameter:   id =  kmp_s_1096r_0721, name = kmp_s_1096r_0721
	reaction_r_0721_kmp_s_1096r_0721=0.549;
	% Local Parameter:   id =  kms_s_0234r_0721, name = kms_s_0234r_0721
	reaction_r_0721_kms_s_0234r_0721=0.549;
	% Local Parameter:   id =  kms_s_1091r_0721, name = kms_s_1091r_0721
	reaction_r_0721_kms_s_1091r_0721=0.549;

	reaction_r_0721=compartment_intracellular*function_191(reaction_r_0721_Keq_r_0721, reaction_r_0721_Vmax_r_0721, compartment_intracellular, reaction_r_0721_kmp_s_0254r_0721, reaction_r_0721_kmp_s_0763_br_0721, reaction_r_0721_kmp_s_1096r_0721, reaction_r_0721_kms_s_0234r_0721, reaction_r_0721_kms_s_1091r_0721, x(53), x(56), const_species_s_0763_b, x(230), x(231));

% Reaction: id = r_0722, name = microsomal beta-keto-reductase_4	% Local Parameter:   id =  Keq_r_0722, name = Keq_r_0722
	reaction_r_0722_Keq_r_0722=0.6039;
	% Local Parameter:   id =  Vmax_r_0722, name = Vmax_r_0722
	reaction_r_0722_Vmax_r_0722=3.30329;
	% Local Parameter:   id =  kmp_s_0261r_0722, name = kmp_s_0261r_0722
	reaction_r_0722_kmp_s_0261r_0722=0.549;
	% Local Parameter:   id =  kmp_s_0763_br_0722, name = kmp_s_0763_br_0722
	reaction_r_0722_kmp_s_0763_br_0722=0.549;
	% Local Parameter:   id =  kmp_s_1096r_0722, name = kmp_s_1096r_0722
	reaction_r_0722_kmp_s_1096r_0722=0.549;
	% Local Parameter:   id =  kms_s_0055r_0722, name = kms_s_0055r_0722
	reaction_r_0722_kms_s_0055r_0722=0.549;
	% Local Parameter:   id =  kms_s_1091r_0722, name = kms_s_1091r_0722
	reaction_r_0722_kms_s_1091r_0722=0.549;

	reaction_r_0722=compartment_intracellular*function_192(reaction_r_0722_Keq_r_0722, reaction_r_0722_Vmax_r_0722, compartment_intracellular, reaction_r_0722_kmp_s_0261r_0722, reaction_r_0722_kmp_s_0763_br_0722, reaction_r_0722_kmp_s_1096r_0722, reaction_r_0722_kms_s_0055r_0722, reaction_r_0722_kms_s_1091r_0722, x(16), x(58), const_species_s_0763_b, x(230), x(231));

% Reaction: id = r_0723, name = MIPC synthase	% Local Parameter:   id =  Keq_r_0723, name = Keq_r_0723
	reaction_r_0723_Keq_r_0723=2.00364;
	% Local Parameter:   id =  Vmax_r_0723, name = Vmax_r_0723
	reaction_r_0723_Vmax_r_0723=0.00127051;
	% Local Parameter:   id =  kmp_s_1013r_0723, name = kmp_s_1013r_0723
	reaction_r_0723_kmp_s_1013r_0723=0.549;
	% Local Parameter:   id =  kms_s_0710r_0723, name = kms_s_0710r_0723
	reaction_r_0723_kms_s_0710r_0723=0.549;
	% Local Parameter:   id =  kms_s_0828r_0723, name = kms_s_0828r_0723
	reaction_r_0723_kms_s_0828r_0723=0.549;

	reaction_r_0723=compartment_intracellular*function_193(reaction_r_0723_Keq_r_0723, reaction_r_0723_Vmax_r_0723, compartment_intracellular, reaction_r_0723_kmp_s_1013r_0723, reaction_r_0723_kms_s_0710r_0723, reaction_r_0723_kms_s_0828r_0723, x(156), x(173), x(214));

% Reaction: id = r_0725, name = myo-inositol 1-phosphatase	% Local Parameter:   id =  Keq_r_0725, name = Keq_r_0725
	reaction_r_0725_Keq_r_0725=1.1;
	% Local Parameter:   id =  Vmax_r_0725, name = Vmax_r_0725
	reaction_r_0725_Vmax_r_0725=0.006545;
	% Local Parameter:   id =  kmp_s_1020r_0725, name = kmp_s_1020r_0725
	reaction_r_0725_kmp_s_1020r_0725=0.549;
	% Local Parameter:   id =  kmp_s_1207r_0725, name = kmp_s_1207r_0725
	reaction_r_0725_kmp_s_1207r_0725=0.549;
	% Local Parameter:   id =  kms_s_0128r_0725, name = kms_s_0128r_0725
	reaction_r_0725_kms_s_0128r_0725=0.549;
	% Local Parameter:   id =  kms_s_1434_br_0725, name = kms_s_1434_br_0725
	reaction_r_0725_kms_s_1434_br_0725=0.549;

	reaction_r_0725=compartment_intracellular*function_194(reaction_r_0725_Keq_r_0725, reaction_r_0725_Vmax_r_0725, compartment_intracellular, reaction_r_0725_kmp_s_1020r_0725, reaction_r_0725_kmp_s_1207r_0725, reaction_r_0725_kms_s_0128r_0725, reaction_r_0725_kms_s_1434_br_0725, x(30), x(215), const_species_s_1207, const_species_s_1434_b);

% Reaction: id = r_0726, name = myo-inositol-1-phosphate synthase	% Local Parameter:   id =  Keq_r_0726, name = Keq_r_0726
	reaction_r_0726_Keq_r_0726=1.1;
	% Local Parameter:   id =  Vmax_r_0726, name = Vmax_r_0726
	reaction_r_0726_Vmax_r_0726=0.004323;
	% Local Parameter:   id =  kmp_s_0128r_0726, name = kmp_s_0128r_0726
	reaction_r_0726_kmp_s_0128r_0726=0.549;
	% Local Parameter:   id =  kms_s_0410r_0726, name = kms_s_0410r_0726
	reaction_r_0726_kms_s_0410r_0726=0.549;

	reaction_r_0726=compartment_intracellular*function_195(reaction_r_0726_Keq_r_0726, reaction_r_0726_Vmax_r_0726, compartment_intracellular, reaction_r_0726_kmp_s_0128r_0726, reaction_r_0726_kms_s_0410r_0726, x(30), x(93));

% Reaction: id = r_0728, name = N-acetyl-g-glutamyl-phosphate reductase	% Local Parameter:   id =  Keq_r_0728, name = Keq_r_0728
	reaction_r_0728_Keq_r_0728=1.1;
	% Local Parameter:   id =  Vmax_r_0728, name = Vmax_r_0728
	reaction_r_0728_Vmax_r_0728=1.2441;
	% Local Parameter:   id =  kmp_s_0149r_0728, name = kmp_s_0149r_0728
	reaction_r_0728_kmp_s_0149r_0728=0.549;
	% Local Parameter:   id =  kmp_s_1091r_0728, name = kmp_s_1091r_0728
	reaction_r_0728_kmp_s_1091r_0728=0.549;
	% Local Parameter:   id =  kmp_s_1207r_0728, name = kmp_s_1207r_0728
	reaction_r_0728_kmp_s_1207r_0728=0.549;
	% Local Parameter:   id =  kms_s_0763_br_0728, name = kms_s_0763_br_0728
	reaction_r_0728_kms_s_0763_br_0728=0.549;
	% Local Parameter:   id =  kms_s_1070r_0728, name = kms_s_1070r_0728
	reaction_r_0728_kms_s_1070r_0728=0.549;
	% Local Parameter:   id =  kms_s_1096r_0728, name = kms_s_1096r_0728
	reaction_r_0728_kms_s_1096r_0728=0.549;

	reaction_r_0728=compartment_intracellular*function_196(reaction_r_0728_Keq_r_0728, reaction_r_0728_Vmax_r_0728, compartment_intracellular, reaction_r_0728_kmp_s_0149r_0728, reaction_r_0728_kmp_s_1091r_0728, reaction_r_0728_kmp_s_1207r_0728, reaction_r_0728_kms_s_0763_br_0728, reaction_r_0728_kms_s_1070r_0728, reaction_r_0728_kms_s_1096r_0728, x(33), const_species_s_0763_b, x(224), x(230), x(231), const_species_s_1207);

% Reaction: id = r_0765, name = non-enzymatic reaction	% Local Parameter:   id =  Keq_r_0765, name = Keq_r_0765
	reaction_r_0765_Keq_r_0765=2.00364;
	% Local Parameter:   id =  Vmax_r_0765, name = Vmax_r_0765
	reaction_r_0765_Vmax_r_0765=1.0241;
	% Local Parameter:   id =  kmp_s_0181r_0765, name = kmp_s_0181r_0765
	reaction_r_0765_kmp_s_0181r_0765=0.549;
	% Local Parameter:   id =  kmp_s_0470r_0765, name = kmp_s_0470r_0765
	reaction_r_0765_kmp_s_0470r_0765=1.0;
	% Local Parameter:   id =  kms_s_0180r_0765, name = kms_s_0180r_0765
	reaction_r_0765_kms_s_0180r_0765=0.549;
	% Local Parameter:   id =  kms_s_0763_br_0765, name = kms_s_0763_br_0765
	reaction_r_0765_kms_s_0763_br_0765=0.549;

	reaction_r_0765=compartment_intracellular*function_197(reaction_r_0765_Keq_r_0765, reaction_r_0765_Vmax_r_0765, compartment_intracellular, reaction_r_0765_kmp_s_0181r_0765, reaction_r_0765_kmp_s_0470r_0765, reaction_r_0765_kms_s_0180r_0765, reaction_r_0765_kms_s_0763_br_0765, x(39), x(40), x(107), const_species_s_0763_b);

% Reaction: id = r_0771, name = nucleoside-diphosphate kinase (ATP:CDP)	% Local Parameter:   id =  Keq_r_0771, name = Keq_r_0771
	reaction_r_0771_Keq_r_0771=0.698801;
	% Local Parameter:   id =  Vmax_r_0771, name = Vmax_r_0771
	reaction_r_0771_Vmax_r_0771=0.014553;
	% Local Parameter:   id =  kmp_s_0446r_0771, name = kmp_s_0446r_0771
	reaction_r_0771_kmp_s_0446r_0771=1.09208;
	% Local Parameter:   id =  kmp_s_0481r_0771, name = kmp_s_0481r_0771
	reaction_r_0771_kmp_s_0481r_0771=0.549;
	% Local Parameter:   id =  kms_s_0400r_0771, name = kms_s_0400r_0771
	reaction_r_0771_kms_s_0400r_0771=1.71907;
	% Local Parameter:   id =  kms_s_0521r_0771, name = kms_s_0521r_0771
	reaction_r_0771_kms_s_0521r_0771=0.549;

	reaction_r_0771=compartment_intracellular*function_198(reaction_r_0771_Keq_r_0771, reaction_r_0771_Vmax_r_0771, compartment_intracellular, reaction_r_0771_kmp_s_0446r_0771, reaction_r_0771_kmp_s_0481r_0771, reaction_r_0771_kms_s_0400r_0771, reaction_r_0771_kms_s_0521r_0771, x(92), x(101), x(108), x(115));

% Reaction: id = r_0779, name = nucleoside-diphosphate kinase (ATP:UDP)	% Local Parameter:   id =  Keq_r_0779, name = Keq_r_0779
	reaction_r_0779_Keq_r_0779=1.73154;
	% Local Parameter:   id =  Vmax_r_0779, name = Vmax_r_0779
	reaction_r_0779_Vmax_r_0779=7.3843;
	% Local Parameter:   id =  kmp_s_0400r_0779, name = kmp_s_0400r_0779
	reaction_r_0779_kmp_s_0400r_0779=1.71907;
	% Local Parameter:   id =  kmp_s_1430r_0779, name = kmp_s_1430r_0779
	reaction_r_0779_kmp_s_1430r_0779=0.549;
	% Local Parameter:   id =  kms_s_0446r_0779, name = kms_s_0446r_0779
	reaction_r_0779_kms_s_0446r_0779=1.09208;
	% Local Parameter:   id =  kms_s_1411r_0779, name = kms_s_1411r_0779
	reaction_r_0779_kms_s_1411r_0779=0.549;

	reaction_r_0779=compartment_intracellular*function_199(reaction_r_0779_Keq_r_0779, reaction_r_0779_Vmax_r_0779, compartment_intracellular, reaction_r_0779_kmp_s_0400r_0779, reaction_r_0779_kmp_s_1430r_0779, reaction_r_0779_kms_s_0446r_0779, reaction_r_0779_kms_s_1411r_0779, x(92), x(101), x(269), x(272));

% Reaction: id = r_0783, name = O-acetylhomoserine (thiol)-lyase	% Local Parameter:   id =  Keq_r_0783, name = Keq_r_0783
	reaction_r_0783_Keq_r_0783=0.6039;
	% Local Parameter:   id =  Vmax_r_0783, name = Vmax_r_0783
	reaction_r_0783_Vmax_r_0783=0.624358;
	% Local Parameter:   id =  kmp_s_0369r_0783, name = kmp_s_0369r_0783
	reaction_r_0783_kmp_s_0369r_0783=0.549;
	% Local Parameter:   id =  kmp_s_0763_br_0783, name = kmp_s_0763_br_0783
	reaction_r_0783_kmp_s_0763_br_0783=0.549;
	% Local Parameter:   id =  kmp_s_0917r_0783, name = kmp_s_0917r_0783
	reaction_r_0783_kmp_s_0917r_0783=0.549;
	% Local Parameter:   id =  kms_s_0805r_0783, name = kms_s_0805r_0783
	reaction_r_0783_kms_s_0805r_0783=0.549;
	% Local Parameter:   id =  kms_s_1117r_0783, name = kms_s_1117r_0783
	reaction_r_0783_kms_s_1117r_0783=0.549;

	reaction_r_0783=compartment_intracellular*function_200(reaction_r_0783_Keq_r_0783, reaction_r_0783_Vmax_r_0783, compartment_intracellular, reaction_r_0783_kmp_s_0369r_0783, reaction_r_0783_kmp_s_0763_br_0783, reaction_r_0783_kmp_s_0917r_0783, reaction_r_0783_kms_s_0805r_0783, reaction_r_0783_kms_s_1117r_0783, x(86), const_species_s_0763_b, x(170), x(194), x(232));

% Reaction: id = r_0789, name = ornithine carbamoyltransferase	% Local Parameter:   id =  Keq_r_0789, name = Keq_r_0789
	reaction_r_0789_Keq_r_0789=0.6039;
	% Local Parameter:   id =  Vmax_r_0789, name = Vmax_r_0789
	reaction_r_0789_Vmax_r_0789=0.912336;
	% Local Parameter:   id =  kmp_s_0763_br_0789, name = kmp_s_0763_br_0789
	reaction_r_0789_kmp_s_0763_br_0789=0.549;
	% Local Parameter:   id =  kmp_s_0887r_0789, name = kmp_s_0887r_0789
	reaction_r_0789_kmp_s_0887r_0789=0.549;
	% Local Parameter:   id =  kmp_s_1207r_0789, name = kmp_s_1207r_0789
	reaction_r_0789_kmp_s_1207r_0789=0.549;
	% Local Parameter:   id =  kms_s_0469r_0789, name = kms_s_0469r_0789
	reaction_r_0789_kms_s_0469r_0789=0.549;
	% Local Parameter:   id =  kms_s_1151r_0789, name = kms_s_1151r_0789
	reaction_r_0789_kms_s_1151r_0789=0.549;

	reaction_r_0789=compartment_intracellular*function_201(reaction_r_0789_Keq_r_0789, reaction_r_0789_Vmax_r_0789, compartment_intracellular, reaction_r_0789_kmp_s_0763_br_0789, reaction_r_0789_kmp_s_0887r_0789, reaction_r_0789_kmp_s_1207r_0789, reaction_r_0789_kms_s_0469r_0789, reaction_r_0789_kms_s_1151r_0789, x(106), const_species_s_0763_b, x(184), x(236), const_species_s_1207);

% Reaction: id = r_0791, name = ornithine transacetylase	% Local Parameter:   id =  Keq_r_0791, name = Keq_r_0791
	reaction_r_0791_Keq_r_0791=1.1;
	% Local Parameter:   id =  Vmax_r_0791, name = Vmax_r_0791
	reaction_r_0791_Vmax_r_0791=0.58058;
	% Local Parameter:   id =  kmp_s_1071r_0791, name = kmp_s_1071r_0791
	reaction_r_0791_kmp_s_1071r_0791=0.549;
	% Local Parameter:   id =  kmp_s_1151r_0791, name = kmp_s_1151r_0791
	reaction_r_0791_kmp_s_1151r_0791=0.549;
	% Local Parameter:   id =  kms_s_0899r_0791, name = kms_s_0899r_0791
	reaction_r_0791_kms_s_0899r_0791=0.549;
	% Local Parameter:   id =  kms_s_1051r_0791, name = kms_s_1051r_0791
	reaction_r_0791_kms_s_1051r_0791=0.549;

	reaction_r_0791=compartment_intracellular*function_202(reaction_r_0791_Keq_r_0791, reaction_r_0791_Vmax_r_0791, compartment_intracellular, reaction_r_0791_kmp_s_1071r_0791, reaction_r_0791_kmp_s_1151r_0791, reaction_r_0791_kms_s_0899r_0791, reaction_r_0791_kms_s_1051r_0791, x(188), x(219), x(225), x(236));

% Reaction: id = r_0793, name = orotate phosphoribosyltransferase	% Local Parameter:   id =  Keq_r_0793, name = Keq_r_0793
	reaction_r_0793_Keq_r_0793=1.1;
	% Local Parameter:   id =  Vmax_r_0793, name = Vmax_r_0793
	reaction_r_0793_Vmax_r_0793=0.52591;
	% Local Parameter:   id =  kmp_s_0605r_0793, name = kmp_s_0605r_0793
	reaction_r_0793_kmp_s_0605r_0793=0.549;
	% Local Parameter:   id =  kmp_s_1155r_0793, name = kmp_s_1155r_0793
	reaction_r_0793_kmp_s_1155r_0793=0.549;
	% Local Parameter:   id =  kms_s_0331r_0793, name = kms_s_0331r_0793
	reaction_r_0793_kms_s_0331r_0793=0.549;
	% Local Parameter:   id =  kms_s_1154r_0793, name = kms_s_1154r_0793
	reaction_r_0793_kms_s_1154r_0793=0.549;

	reaction_r_0793=compartment_intracellular*function_203(reaction_r_0793_Keq_r_0793, reaction_r_0793_Vmax_r_0793, compartment_intracellular, reaction_r_0793_kmp_s_0605r_0793, reaction_r_0793_kmp_s_1155r_0793, reaction_r_0793_kms_s_0331r_0793, reaction_r_0793_kms_s_1154r_0793, x(80), x(138), x(237), x(238));

% Reaction: id = r_0794, name = orotidine-5'-phosphate decarboxylase	% Local Parameter:   id =  Keq_r_0794, name = Keq_r_0794
	reaction_r_0794_Keq_r_0794=2.00364;
	% Local Parameter:   id =  Vmax_r_0794, name = Vmax_r_0794
	reaction_r_0794_Vmax_r_0794=0.52591;
	% Local Parameter:   id =  kmp_s_0470r_0794, name = kmp_s_0470r_0794
	reaction_r_0794_kmp_s_0470r_0794=1.0;
	% Local Parameter:   id =  kmp_s_1417r_0794, name = kmp_s_1417r_0794
	reaction_r_0794_kmp_s_1417r_0794=0.549;
	% Local Parameter:   id =  kms_s_0763_br_0794, name = kms_s_0763_br_0794
	reaction_r_0794_kms_s_0763_br_0794=0.549;
	% Local Parameter:   id =  kms_s_1155r_0794, name = kms_s_1155r_0794
	reaction_r_0794_kms_s_1155r_0794=0.549;

	reaction_r_0794=compartment_intracellular*function_204(reaction_r_0794_Keq_r_0794, reaction_r_0794_Vmax_r_0794, compartment_intracellular, reaction_r_0794_kmp_s_0470r_0794, reaction_r_0794_kmp_s_1417r_0794, reaction_r_0794_kms_s_0763_br_0794, reaction_r_0794_kms_s_1155r_0794, x(107), const_species_s_0763_b, x(238), x(271));

% Reaction: id = r_0825, name = phenylalanine transaminase	% Local Parameter:   id =  Keq_r_0825, name = Keq_r_0825
	reaction_r_0825_Keq_r_0825=1.1;
	% Local Parameter:   id =  Vmax_r_0825, name = Vmax_r_0825
	reaction_r_0825_Vmax_r_0825=0.48895;
	% Local Parameter:   id =  kmp_s_0185r_0825, name = kmp_s_0185r_0825
	reaction_r_0825_kmp_s_0185r_0825=0.549;
	% Local Parameter:   id =  kmp_s_0936r_0825, name = kmp_s_0936r_0825
	reaction_r_0825_kmp_s_0936r_0825=0.549;
	% Local Parameter:   id =  kms_s_0859r_0825, name = kms_s_0859r_0825
	reaction_r_0825_kms_s_0859r_0825=0.549;
	% Local Parameter:   id =  kms_s_0899r_0825, name = kms_s_0899r_0825
	reaction_r_0825_kms_s_0899r_0825=0.549;

	reaction_r_0825=compartment_intracellular*function_205(reaction_r_0825_Keq_r_0825, reaction_r_0825_Vmax_r_0825, compartment_intracellular, reaction_r_0825_kmp_s_0185r_0825, reaction_r_0825_kmp_s_0936r_0825, reaction_r_0825_kms_s_0859r_0825, reaction_r_0825_kms_s_0899r_0825, x(42), x(176), x(188), x(200));

% Reaction: id = r_0831, name = phosphatidylethanolamine methyltransferase	% Local Parameter:   id =  Keq_r_0831, name = Keq_r_0831
	reaction_r_0831_Keq_r_0831=0.6039;
	% Local Parameter:   id =  Vmax_r_0831, name = Vmax_r_0831
	reaction_r_0831_Vmax_r_0831=0.0193599;
	% Local Parameter:   id =  kmp_s_0763_br_0831, name = kmp_s_0763_br_0831
	reaction_r_0831_kmp_s_0763_br_0831=0.549;
	% Local Parameter:   id =  kmp_s_1226r_0831, name = kmp_s_1226r_0831
	reaction_r_0831_kmp_s_1226r_0831=0.549;
	% Local Parameter:   id =  kmp_s_1290r_0831, name = kmp_s_1290r_0831
	reaction_r_0831_kmp_s_1290r_0831=0.549;
	% Local Parameter:   id =  kms_s_1233r_0831, name = kms_s_1233r_0831
	reaction_r_0831_kms_s_1233r_0831=0.549;
	% Local Parameter:   id =  kms_s_1293r_0831, name = kms_s_1293r_0831
	reaction_r_0831_kms_s_1293r_0831=0.549;

	reaction_r_0831=compartment_intracellular*function_206(reaction_r_0831_Keq_r_0831, reaction_r_0831_Vmax_r_0831, compartment_intracellular, reaction_r_0831_kmp_s_0763_br_0831, reaction_r_0831_kmp_s_1226r_0831, reaction_r_0831_kmp_s_1290r_0831, reaction_r_0831_kms_s_1233r_0831, reaction_r_0831_kms_s_1293r_0831, const_species_s_0763_b, x(246), x(248), x(254), x(255));

% Reaction: id = r_0847, name = phosphatidylinositol synthase	% Local Parameter:   id =  Keq_r_0847, name = Keq_r_0847
	reaction_r_0847_Keq_r_0847=0.331541;
	% Local Parameter:   id =  Vmax_r_0847, name = Vmax_r_0847
	reaction_r_0847_Vmax_r_0847=0.010285;
	% Local Parameter:   id =  kmp_s_0090r_0847, name = kmp_s_0090r_0847
	reaction_r_0847_kmp_s_0090r_0847=0.549;
	% Local Parameter:   id =  kmp_s_0511r_0847, name = kmp_s_0511r_0847
	reaction_r_0847_kmp_s_0511r_0847=0.549;
	% Local Parameter:   id =  kmp_s_0763_br_0847, name = kmp_s_0763_br_0847
	reaction_r_0847_kmp_s_0763_br_0847=0.549;
	% Local Parameter:   id =  kms_s_0485r_0847, name = kms_s_0485r_0847
	reaction_r_0847_kms_s_0485r_0847=0.549;
	% Local Parameter:   id =  kms_s_1020r_0847, name = kms_s_1020r_0847
	reaction_r_0847_kms_s_1020r_0847=0.549;

	reaction_r_0847=compartment_intracellular*function_207(reaction_r_0847_Keq_r_0847, reaction_r_0847_Vmax_r_0847, compartment_intracellular, reaction_r_0847_kmp_s_0090r_0847, reaction_r_0847_kmp_s_0511r_0847, reaction_r_0847_kmp_s_0763_br_0847, reaction_r_0847_kms_s_0485r_0847, reaction_r_0847_kms_s_1020r_0847, x(25), x(109), x(113), const_species_s_0763_b, x(215));

% Reaction: id = r_0850, name = phosphatidylserine decarboxylase	% Local Parameter:   id =  Keq_r_0850, name = Keq_r_0850
	reaction_r_0850_Keq_r_0850=1.1;
	% Local Parameter:   id =  Vmax_r_0850, name = Vmax_r_0850
	reaction_r_0850_Vmax_r_0850=0.0109449;
	% Local Parameter:   id =  kmp_s_0470r_0850, name = kmp_s_0470r_0850
	reaction_r_0850_kmp_s_0470r_0850=1.0;
	% Local Parameter:   id =  kmp_s_1233r_0850, name = kmp_s_1233r_0850
	reaction_r_0850_kmp_s_1233r_0850=0.549;
	% Local Parameter:   id =  kms_s_1219r_0850, name = kms_s_1219r_0850
	reaction_r_0850_kms_s_1219r_0850=0.549;

	reaction_r_0850=compartment_intracellular*function_208(reaction_r_0850_Keq_r_0850, reaction_r_0850_Vmax_r_0850, compartment_intracellular, reaction_r_0850_kmp_s_0470r_0850, reaction_r_0850_kmp_s_1233r_0850, reaction_r_0850_kms_s_1219r_0850, x(107), x(244), x(248));

% Reaction: id = r_0853, name = phosphatidylserine synthase	% Local Parameter:   id =  Keq_r_0853, name = Keq_r_0853
	reaction_r_0853_Keq_r_0853=0.331541;
	% Local Parameter:   id =  Vmax_r_0853, name = Vmax_r_0853
	reaction_r_0853_Vmax_r_0853=0.0266199;
	% Local Parameter:   id =  kmp_s_0511r_0853, name = kmp_s_0511r_0853
	reaction_r_0853_kmp_s_0511r_0853=0.549;
	% Local Parameter:   id =  kmp_s_0763_br_0853, name = kmp_s_0763_br_0853
	reaction_r_0853_kmp_s_0763_br_0853=0.549;
	% Local Parameter:   id =  kmp_s_1219r_0853, name = kmp_s_1219r_0853
	reaction_r_0853_kmp_s_1219r_0853=0.549;
	% Local Parameter:   id =  kms_s_0485r_0853, name = kms_s_0485r_0853
	reaction_r_0853_kms_s_0485r_0853=0.549;
	% Local Parameter:   id =  kms_s_0943r_0853, name = kms_s_0943r_0853
	reaction_r_0853_kms_s_0943r_0853=0.549;

	reaction_r_0853=compartment_intracellular*function_209(reaction_r_0853_Keq_r_0853, reaction_r_0853_Vmax_r_0853, compartment_intracellular, reaction_r_0853_kmp_s_0511r_0853, reaction_r_0853_kmp_s_0763_br_0853, reaction_r_0853_kmp_s_1219r_0853, reaction_r_0853_kms_s_0485r_0853, reaction_r_0853_kms_s_0943r_0853, x(109), x(113), const_species_s_0763_b, x(203), x(244));

% Reaction: id = r_0856, name = phosphoadenylyl-sulfate reductase (thioredoxin)	% Local Parameter:   id =  Keq_r_0856, name = Keq_r_0856
	reaction_r_0856_Keq_r_0856=0.182016;
	% Local Parameter:   id =  Vmax_r_0856, name = Vmax_r_0856
	reaction_r_0856_Vmax_r_0856=1.07843;
	% Local Parameter:   id =  kmp_s_0397r_0856, name = kmp_s_0397r_0856
	reaction_r_0856_kmp_s_0397r_0856=0.549;
	% Local Parameter:   id =  kmp_s_0763_br_0856, name = kmp_s_0763_br_0856
	reaction_r_0856_kmp_s_0763_br_0856=0.549;
	% Local Parameter:   id =  kmp_s_1349r_0856, name = kmp_s_1349r_0856
	reaction_r_0856_kmp_s_1349r_0856=0.549;
	% Local Parameter:   id =  kmp_s_1517r_0856, name = kmp_s_1517r_0856
	reaction_r_0856_kmp_s_1517r_0856=0.549;
	% Local Parameter:   id =  kms_s_0206r_0856, name = kms_s_0206r_0856
	reaction_r_0856_kms_s_0206r_0856=0.549;
	% Local Parameter:   id =  kms_s_1521r_0856, name = kms_s_1521r_0856
	reaction_r_0856_kms_s_1521r_0856=0.549;

	reaction_r_0856=compartment_intracellular*function_210(reaction_r_0856_Keq_r_0856, reaction_r_0856_Vmax_r_0856, compartment_intracellular, reaction_r_0856_kmp_s_0397r_0856, reaction_r_0856_kmp_s_0763_br_0856, reaction_r_0856_kmp_s_1349r_0856, reaction_r_0856_kmp_s_1517r_0856, reaction_r_0856_kms_s_0206r_0856, reaction_r_0856_kms_s_1521r_0856, x(45), x(91), const_species_s_0763_b, x(266), x(278), x(279));

% Reaction: id = r_0859, name = phosphofructokinase	% Local Parameter:   id =  Keq_r_0859, name = Keq_r_0859
	reaction_r_0859_Keq_r_0859=12.2086;
	% Local Parameter:   id =  Vmax_r_0859, name = Vmax_r_0859
	reaction_r_0859_Vmax_r_0859=75.3828;
	% Local Parameter:   id =  kmp_s_0400r_0859, name = kmp_s_0400r_0859
	reaction_r_0859_kmp_s_0400r_0859=1.71907;
	% Local Parameter:   id =  kmp_s_0537r_0859, name = kmp_s_0537r_0859
	reaction_r_0859_kmp_s_0537r_0859=1.34278;
	% Local Parameter:   id =  kmp_s_0763_br_0859, name = kmp_s_0763_br_0859
	reaction_r_0859_kmp_s_0763_br_0859=0.549;
	% Local Parameter:   id =  kms_s_0446r_0859, name = kms_s_0446r_0859
	reaction_r_0859_kms_s_0446r_0859=1.09208;
	% Local Parameter:   id =  kms_s_0539r_0859, name = kms_s_0539r_0859
	reaction_r_0859_kms_s_0539r_0859=0.104555;

	reaction_r_0859=compartment_intracellular*function_211(reaction_r_0859_Keq_r_0859, reaction_r_0859_Vmax_r_0859, compartment_intracellular, reaction_r_0859_kmp_s_0400r_0859, reaction_r_0859_kmp_s_0537r_0859, reaction_r_0859_kmp_s_0763_br_0859, reaction_r_0859_kms_s_0446r_0859, reaction_r_0859_kms_s_0539r_0859, x(92), x(101), x(120), x(121), const_species_s_0763_b);

% Reaction: id = r_0861, name = phosphoglucomutase	% Local Parameter:   id =  Keq_r_0861, name = Keq_r_0861
	reaction_r_0861_Keq_r_0861=1.1;
	% Local Parameter:   id =  Vmax_r_0861, name = Vmax_r_0861
	reaction_r_0861_Vmax_r_0861=3.0723;
	% Local Parameter:   id =  kmp_s_0549r_0861, name = kmp_s_0549r_0861
	reaction_r_0861_kmp_s_0549r_0861=0.549;
	% Local Parameter:   id =  kms_s_0410r_0861, name = kms_s_0410r_0861
	reaction_r_0861_kms_s_0410r_0861=0.549;

	reaction_r_0861=compartment_intracellular*function_212(reaction_r_0861_Keq_r_0861, reaction_r_0861_Vmax_r_0861, compartment_intracellular, reaction_r_0861_kmp_s_0549r_0861, reaction_r_0861_kms_s_0410r_0861, x(93), x(123));

% Reaction: id = r_0865, name = phosphoglycerate kinase	% Local Parameter:   id =  Keq_r_0865, name = Keq_r_0865
	reaction_r_0865_Keq_r_0865=2334.85;
	% Local Parameter:   id =  Vmax_r_0865, name = Vmax_r_0865
	reaction_r_0865_Vmax_r_0865=94.7102;
	% Local Parameter:   id =  kmp_s_0264r_0865, name = kmp_s_0264r_0865
	reaction_r_0865_kmp_s_0264r_0865=0.363388;
	% Local Parameter:   id =  kmp_s_0446r_0865, name = kmp_s_0446r_0865
	reaction_r_0865_kmp_s_0446r_0865=1.09208;
	% Local Parameter:   id =  kms_s_0265r_0865, name = kms_s_0265r_0865
	reaction_r_0865_kms_s_0265r_0865=1.08759E-4;
	% Local Parameter:   id =  kms_s_0400r_0865, name = kms_s_0400r_0865
	reaction_r_0865_kms_s_0400r_0865=1.71907;

	reaction_r_0865=compartment_intracellular*function_213(reaction_r_0865_Keq_r_0865, reaction_r_0865_Vmax_r_0865, compartment_intracellular, reaction_r_0865_kmp_s_0264r_0865, reaction_r_0865_kmp_s_0446r_0865, reaction_r_0865_kms_s_0265r_0865, reaction_r_0865_kms_s_0400r_0865, x(59), x(60), x(92), x(101));

% Reaction: id = r_0866, name = phosphoglycerate mutase	% Local Parameter:   id =  Keq_r_0866, name = Keq_r_0866
	reaction_r_0866_Keq_r_0866=6.7;
	% Local Parameter:   id =  Vmax_r_0866, name = Vmax_r_0866
	reaction_r_0866_Vmax_r_0866=3.76975;
	% Local Parameter:   id =  kmp_s_0193r_0866, name = kmp_s_0193r_0866
	reaction_r_0866_kmp_s_0193r_0866=0.0515066;
	% Local Parameter:   id =  kms_s_0264r_0866, name = kms_s_0264r_0866
	reaction_r_0866_kms_s_0264r_0866=0.363388;

	reaction_r_0866=compartment_intracellular*function_214(reaction_r_0866_Keq_r_0866, reaction_r_0866_Vmax_r_0866, compartment_intracellular, reaction_r_0866_kmp_s_0193r_0866, reaction_r_0866_kms_s_0264r_0866, x(43), x(59));

% Reaction: id = r_0873, name = phospholipid methyltransferase	% Local Parameter:   id =  Keq_r_0873, name = Keq_r_0873
	reaction_r_0873_Keq_r_0873=1.1;
	% Local Parameter:   id =  Vmax_r_0873, name = Vmax_r_0873
	reaction_r_0873_Vmax_r_0873=0.01232;
	% Local Parameter:   id =  kmp_s_1228r_0873, name = kmp_s_1228r_0873
	reaction_r_0873_kmp_s_1228r_0873=0.549;
	% Local Parameter:   id =  kmp_s_1290r_0873, name = kmp_s_1290r_0873
	reaction_r_0873_kmp_s_1290r_0873=0.549;
	% Local Parameter:   id =  kms_s_1225r_0873, name = kms_s_1225r_0873
	reaction_r_0873_kms_s_1225r_0873=0.549;
	% Local Parameter:   id =  kms_s_1293r_0873, name = kms_s_1293r_0873
	reaction_r_0873_kms_s_1293r_0873=0.549;

	reaction_r_0873=compartment_intracellular*function_215(reaction_r_0873_Keq_r_0873, reaction_r_0873_Vmax_r_0873, compartment_intracellular, reaction_r_0873_kmp_s_1228r_0873, reaction_r_0873_kmp_s_1290r_0873, reaction_r_0873_kms_s_1225r_0873, reaction_r_0873_kms_s_1293r_0873, x(245), x(247), x(254), x(255));

% Reaction: id = r_0874, name = phospholipid methyltransferase_2	% Local Parameter:   id =  Keq_r_0874, name = Keq_r_0874
	reaction_r_0874_Keq_r_0874=0.6039;
	% Local Parameter:   id =  Vmax_r_0874, name = Vmax_r_0874
	reaction_r_0874_Vmax_r_0874=0.0193599;
	% Local Parameter:   id =  kmp_s_0763_br_0874, name = kmp_s_0763_br_0874
	reaction_r_0874_kmp_s_0763_br_0874=0.549;
	% Local Parameter:   id =  kmp_s_1225r_0874, name = kmp_s_1225r_0874
	reaction_r_0874_kmp_s_1225r_0874=0.549;
	% Local Parameter:   id =  kmp_s_1290r_0874, name = kmp_s_1290r_0874
	reaction_r_0874_kmp_s_1290r_0874=0.549;
	% Local Parameter:   id =  kms_s_1226r_0874, name = kms_s_1226r_0874
	reaction_r_0874_kms_s_1226r_0874=0.549;
	% Local Parameter:   id =  kms_s_1293r_0874, name = kms_s_1293r_0874
	reaction_r_0874_kms_s_1293r_0874=0.549;

	reaction_r_0874=compartment_intracellular*function_216(reaction_r_0874_Keq_r_0874, reaction_r_0874_Vmax_r_0874, compartment_intracellular, reaction_r_0874_kmp_s_0763_br_0874, reaction_r_0874_kmp_s_1225r_0874, reaction_r_0874_kmp_s_1290r_0874, reaction_r_0874_kms_s_1226r_0874, reaction_r_0874_kms_s_1293r_0874, const_species_s_0763_b, x(245), x(246), x(254), x(255));

% Reaction: id = r_0875, name = phosphomannomutase	% Local Parameter:   id =  Keq_r_0875, name = Keq_r_0875
	reaction_r_0875_Keq_r_0875=1.1;
	% Local Parameter:   id =  Vmax_r_0875, name = Vmax_r_0875
	reaction_r_0875_Vmax_r_0875=1.5048;
	% Local Parameter:   id =  kmp_s_0553r_0875, name = kmp_s_0553r_0875
	reaction_r_0875_kmp_s_0553r_0875=0.549;
	% Local Parameter:   id =  kms_s_0554r_0875, name = kms_s_0554r_0875
	reaction_r_0875_kms_s_0554r_0875=0.549;

	reaction_r_0875=compartment_intracellular*function_217(reaction_r_0875_Keq_r_0875, reaction_r_0875_Vmax_r_0875, compartment_intracellular, reaction_r_0875_kmp_s_0553r_0875, reaction_r_0875_kms_s_0554r_0875, x(124), x(125));

% Reaction: id = r_0877, name = phosphomevalonate kinase	% Local Parameter:   id =  Keq_r_0877, name = Keq_r_0877
	reaction_r_0877_Keq_r_0877=1.73154;
	% Local Parameter:   id =  Vmax_r_0877, name = Vmax_r_0877
	reaction_r_0877_Vmax_r_0877=0.17556;
	% Local Parameter:   id =  kmp_s_0021r_0877, name = kmp_s_0021r_0877
	reaction_r_0877_kmp_s_0021r_0877=0.549;
	% Local Parameter:   id =  kmp_s_0400r_0877, name = kmp_s_0400r_0877
	reaction_r_0877_kmp_s_0400r_0877=1.71907;
	% Local Parameter:   id =  kms_s_0022r_0877, name = kms_s_0022r_0877
	reaction_r_0877_kms_s_0022r_0877=0.549;
	% Local Parameter:   id =  kms_s_0446r_0877, name = kms_s_0446r_0877
	reaction_r_0877_kms_s_0446r_0877=1.09208;

	reaction_r_0877=compartment_intracellular*function_218(reaction_r_0877_Keq_r_0877, reaction_r_0877_Vmax_r_0877, compartment_intracellular, reaction_r_0877_kmp_s_0021r_0877, reaction_r_0877_kmp_s_0400r_0877, reaction_r_0877_kms_s_0022r_0877, reaction_r_0877_kms_s_0446r_0877, x(9), x(10), x(92), x(101));

% Reaction: id = r_0881, name = phosphoribosyl-AMP cyclohydrolase	% Local Parameter:   id =  Keq_r_0881, name = Keq_r_0881
	reaction_r_0881_Keq_r_0881=2.00364;
	% Local Parameter:   id =  Vmax_r_0881, name = Vmax_r_0881
	reaction_r_0881_Vmax_r_0881=0.229351;
	% Local Parameter:   id =  kmp_s_0079r_0881, name = kmp_s_0079r_0881
	reaction_r_0881_kmp_s_0079r_0881=0.549;
	% Local Parameter:   id =  kms_s_0080r_0881, name = kms_s_0080r_0881
	reaction_r_0881_kms_s_0080r_0881=0.549;
	% Local Parameter:   id =  kms_s_1434_br_0881, name = kms_s_1434_br_0881
	reaction_r_0881_kms_s_1434_br_0881=0.549;

	reaction_r_0881=compartment_intracellular*function_219(reaction_r_0881_Keq_r_0881, reaction_r_0881_Vmax_r_0881, compartment_intracellular, reaction_r_0881_kmp_s_0079r_0881, reaction_r_0881_kms_s_0080r_0881, reaction_r_0881_kms_s_1434_br_0881, x(21), x(22), const_species_s_1434_b);

% Reaction: id = r_0882, name = phosphoribosyl-ATP pyrophosphatase	% Local Parameter:   id =  Keq_r_0882, name = Keq_r_0882
	reaction_r_0882_Keq_r_0882=0.6039;
	% Local Parameter:   id =  Vmax_r_0882, name = Vmax_r_0882
	reaction_r_0882_Vmax_r_0882=0.504568;
	% Local Parameter:   id =  kmp_s_0080r_0882, name = kmp_s_0080r_0882
	reaction_r_0882_kmp_s_0080r_0882=0.549;
	% Local Parameter:   id =  kmp_s_0605r_0882, name = kmp_s_0605r_0882
	reaction_r_0882_kmp_s_0605r_0882=0.549;
	% Local Parameter:   id =  kmp_s_0763_br_0882, name = kmp_s_0763_br_0882
	reaction_r_0882_kmp_s_0763_br_0882=0.549;
	% Local Parameter:   id =  kms_s_0334r_0882, name = kms_s_0334r_0882
	reaction_r_0882_kms_s_0334r_0882=0.549;
	% Local Parameter:   id =  kms_s_1434_br_0882, name = kms_s_1434_br_0882
	reaction_r_0882_kms_s_1434_br_0882=0.549;

	reaction_r_0882=compartment_intracellular*function_220(reaction_r_0882_Keq_r_0882, reaction_r_0882_Vmax_r_0882, compartment_intracellular, reaction_r_0882_kmp_s_0080r_0882, reaction_r_0882_kmp_s_0605r_0882, reaction_r_0882_kmp_s_0763_br_0882, reaction_r_0882_kms_s_0334r_0882, reaction_r_0882_kms_s_1434_br_0882, x(22), x(82), x(138), const_species_s_0763_b, const_species_s_1434_b);

% Reaction: id = r_0883, name = phosphoribosylaminoimidazole carboxylase	% Local Parameter:   id =  Keq_r_0883, name = Keq_r_0883
	reaction_r_0883_Keq_r_0883=0.6039;
	% Local Parameter:   id =  Vmax_r_0883, name = Vmax_r_0883
	reaction_r_0883_Vmax_r_0883=0.46739;
	% Local Parameter:   id =  kmp_s_0318r_0883, name = kmp_s_0318r_0883
	reaction_r_0883_kmp_s_0318r_0883=0.549;
	% Local Parameter:   id =  kmp_s_0763_br_0883, name = kmp_s_0763_br_0883
	reaction_r_0883_kmp_s_0763_br_0883=0.549;
	% Local Parameter:   id =  kms_s_0316r_0883, name = kms_s_0316r_0883
	reaction_r_0883_kms_s_0316r_0883=0.549;
	% Local Parameter:   id =  kms_s_0470r_0883, name = kms_s_0470r_0883
	reaction_r_0883_kms_s_0470r_0883=1.0;

	reaction_r_0883=compartment_intracellular*function_221(reaction_r_0883_Keq_r_0883, reaction_r_0883_Vmax_r_0883, compartment_intracellular, reaction_r_0883_kmp_s_0318r_0883, reaction_r_0883_kmp_s_0763_br_0883, reaction_r_0883_kms_s_0316r_0883, reaction_r_0883_kms_s_0470r_0883, x(72), x(74), x(107), const_species_s_0763_b);

% Reaction: id = r_0884, name = phosphoribosylaminoimidazole synthase	% Local Parameter:   id =  Keq_r_0884, name = Keq_r_0884
	reaction_r_0884_Keq_r_0884=0.286516;
	% Local Parameter:   id =  Vmax_r_0884, name = Vmax_r_0884
	reaction_r_0884_Vmax_r_0884=1.26862;
	% Local Parameter:   id =  kmp_s_0316r_0884, name = kmp_s_0316r_0884
	reaction_r_0884_kmp_s_0316r_0884=0.549;
	% Local Parameter:   id =  kmp_s_0400r_0884, name = kmp_s_0400r_0884
	reaction_r_0884_kmp_s_0400r_0884=1.71907;
	% Local Parameter:   id =  kmp_s_0763_br_0884, name = kmp_s_0763_br_0884
	reaction_r_0884_kmp_s_0763_br_0884=0.549;
	% Local Parameter:   id =  kmp_s_1207r_0884, name = kmp_s_1207r_0884
	reaction_r_0884_kmp_s_1207r_0884=0.549;
	% Local Parameter:   id =  kms_s_0158r_0884, name = kms_s_0158r_0884
	reaction_r_0884_kms_s_0158r_0884=0.549;
	% Local Parameter:   id =  kms_s_0446r_0884, name = kms_s_0446r_0884
	reaction_r_0884_kms_s_0446r_0884=1.09208;

	reaction_r_0884=compartment_intracellular*function_222(reaction_r_0884_Keq_r_0884, reaction_r_0884_Vmax_r_0884, compartment_intracellular, reaction_r_0884_kmp_s_0316r_0884, reaction_r_0884_kmp_s_0400r_0884, reaction_r_0884_kmp_s_0763_br_0884, reaction_r_0884_kmp_s_1207r_0884, reaction_r_0884_kms_s_0158r_0884, reaction_r_0884_kms_s_0446r_0884, x(35), x(72), x(92), x(101), const_species_s_0763_b, const_species_s_1207);

% Reaction: id = r_0885, name = phosphoribosylaminoimidazolecarboxamide formyltransferase	% Local Parameter:   id =  Keq_r_0885, name = Keq_r_0885
	reaction_r_0885_Keq_r_0885=1.1;
	% Local Parameter:   id =  Vmax_r_0885, name = Vmax_r_0885
	reaction_r_0885_Vmax_r_0885=0.7854;
	% Local Parameter:   id =  kmp_s_0309r_0885, name = kmp_s_0309r_0885
	reaction_r_0885_kmp_s_0309r_0885=0.549;
	% Local Parameter:   id =  kmp_s_0325r_0885, name = kmp_s_0325r_0885
	reaction_r_0885_kmp_s_0325r_0885=0.549;
	% Local Parameter:   id =  kms_s_0122r_0885, name = kms_s_0122r_0885
	reaction_r_0885_kms_s_0122r_0885=0.549;
	% Local Parameter:   id =  kms_s_0317r_0885, name = kms_s_0317r_0885
	reaction_r_0885_kms_s_0317r_0885=0.549;

	reaction_r_0885=compartment_intracellular*function_223(reaction_r_0885_Keq_r_0885, reaction_r_0885_Vmax_r_0885, compartment_intracellular, reaction_r_0885_kmp_s_0309r_0885, reaction_r_0885_kmp_s_0325r_0885, reaction_r_0885_kms_s_0122r_0885, reaction_r_0885_kms_s_0317r_0885, x(28), x(70), x(73), x(77));

% Reaction: id = r_0886, name = phosphoribosylaminoimidazolesuccinocarboxamide synthase	% Local Parameter:   id =  Keq_r_0886, name = Keq_r_0886
	reaction_r_0886_Keq_r_0886=0.950614;
	% Local Parameter:   id =  Vmax_r_0886, name = Vmax_r_0886
	reaction_r_0886_Vmax_r_0886=1.53571;
	% Local Parameter:   id =  kmp_s_0009r_0886, name = kmp_s_0009r_0886
	reaction_r_0886_kmp_s_0009r_0886=0.549;
	% Local Parameter:   id =  kmp_s_0400r_0886, name = kmp_s_0400r_0886
	reaction_r_0886_kmp_s_0400r_0886=1.71907;
	% Local Parameter:   id =  kmp_s_0763_br_0886, name = kmp_s_0763_br_0886
	reaction_r_0886_kmp_s_0763_br_0886=0.549;
	% Local Parameter:   id =  kmp_s_1207r_0886, name = kmp_s_1207r_0886
	reaction_r_0886_kmp_s_1207r_0886=0.549;
	% Local Parameter:   id =  kms_s_0318r_0886, name = kms_s_0318r_0886
	reaction_r_0886_kms_s_0318r_0886=0.549;
	% Local Parameter:   id =  kms_s_0446r_0886, name = kms_s_0446r_0886
	reaction_r_0886_kms_s_0446r_0886=1.09208;
	% Local Parameter:   id =  kms_s_0881r_0886, name = kms_s_0881r_0886
	reaction_r_0886_kms_s_0881r_0886=0.549;

	reaction_r_0886=compartment_intracellular*function_224(reaction_r_0886_Keq_r_0886, reaction_r_0886_Vmax_r_0886, compartment_intracellular, reaction_r_0886_kmp_s_0009r_0886, reaction_r_0886_kmp_s_0400r_0886, reaction_r_0886_kmp_s_0763_br_0886, reaction_r_0886_kmp_s_1207r_0886, reaction_r_0886_kms_s_0318r_0886, reaction_r_0886_kms_s_0446r_0886, reaction_r_0886_kms_s_0881r_0886, x(4), x(74), x(92), x(101), const_species_s_0763_b, x(182), const_species_s_1207);

% Reaction: id = r_0887, name = phosphoribosylanthranilate isomerase	% Local Parameter:   id =  Keq_r_0887, name = Keq_r_0887
	reaction_r_0887_Keq_r_0887=1.1;
	% Local Parameter:   id =  Vmax_r_0887, name = Vmax_r_0887
	reaction_r_0887_Vmax_r_0887=0.05115;
	% Local Parameter:   id =  kmp_s_0078r_0887, name = kmp_s_0078r_0887
	reaction_r_0887_kmp_s_0078r_0887=0.549;
	% Local Parameter:   id =  kms_s_1066r_0887, name = kms_s_1066r_0887
	reaction_r_0887_kms_s_1066r_0887=0.549;

	reaction_r_0887=compartment_intracellular*function_225(reaction_r_0887_Keq_r_0887, reaction_r_0887_Vmax_r_0887, compartment_intracellular, reaction_r_0887_kmp_s_0078r_0887, reaction_r_0887_kms_s_1066r_0887, x(20), x(223));

% Reaction: id = r_0888, name = phosphoribosylformylglycinamidine synthase	% Local Parameter:   id =  Keq_r_0888, name = Keq_r_0888
	reaction_r_0888_Keq_r_0888=0.950614;
	% Local Parameter:   id =  Vmax_r_0888, name = Vmax_r_0888
	reaction_r_0888_Vmax_r_0888=3.13818;
	% Local Parameter:   id =  kmp_s_0158r_0888, name = kmp_s_0158r_0888
	reaction_r_0888_kmp_s_0158r_0888=0.549;
	% Local Parameter:   id =  kmp_s_0400r_0888, name = kmp_s_0400r_0888
	reaction_r_0888_kmp_s_0400r_0888=1.71907;
	% Local Parameter:   id =  kmp_s_0763_br_0888, name = kmp_s_0763_br_0888
	reaction_r_0888_kmp_s_0763_br_0888=0.549;
	% Local Parameter:   id =  kmp_s_0899r_0888, name = kmp_s_0899r_0888
	reaction_r_0888_kmp_s_0899r_0888=0.549;
	% Local Parameter:   id =  kmp_s_1207r_0888, name = kmp_s_1207r_0888
	reaction_r_0888_kmp_s_1207r_0888=0.549;
	% Local Parameter:   id =  kms_s_0446r_0888, name = kms_s_0446r_0888
	reaction_r_0888_kms_s_0446r_0888=1.09208;
	% Local Parameter:   id =  kms_s_0907r_0888, name = kms_s_0907r_0888
	reaction_r_0888_kms_s_0907r_0888=0.549;
	% Local Parameter:   id =  kms_s_1052r_0888, name = kms_s_1052r_0888
	reaction_r_0888_kms_s_1052r_0888=0.549;
	% Local Parameter:   id =  kms_s_1434_br_0888, name = kms_s_1434_br_0888
	reaction_r_0888_kms_s_1434_br_0888=0.549;

	reaction_r_0888=compartment_intracellular*function_226(reaction_r_0888_Keq_r_0888, reaction_r_0888_Vmax_r_0888, compartment_intracellular, reaction_r_0888_kmp_s_0158r_0888, reaction_r_0888_kmp_s_0400r_0888, reaction_r_0888_kmp_s_0763_br_0888, reaction_r_0888_kmp_s_0899r_0888, reaction_r_0888_kmp_s_1207r_0888, reaction_r_0888_kms_s_0446r_0888, reaction_r_0888_kms_s_0907r_0888, reaction_r_0888_kms_s_1052r_0888, reaction_r_0888_kms_s_1434_br_0888, x(35), x(92), x(101), const_species_s_0763_b, x(188), x(190), x(220), const_species_s_1207, const_species_s_1434_b);

% Reaction: id = r_0889, name = phosphoribosylglycinamide formyltransferase	% Local Parameter:   id =  Keq_r_0889, name = Keq_r_0889
	reaction_r_0889_Keq_r_0889=0.6039;
	% Local Parameter:   id =  Vmax_r_0889, name = Vmax_r_0889
	reaction_r_0889_Vmax_r_0889=0.734467;
	% Local Parameter:   id =  kmp_s_0309r_0889, name = kmp_s_0309r_0889
	reaction_r_0889_kmp_s_0309r_0889=0.549;
	% Local Parameter:   id =  kmp_s_0763_br_0889, name = kmp_s_0763_br_0889
	reaction_r_0889_kmp_s_0763_br_0889=0.549;
	% Local Parameter:   id =  kmp_s_1052r_0889, name = kmp_s_1052r_0889
	reaction_r_0889_kmp_s_1052r_0889=0.549;
	% Local Parameter:   id =  kms_s_0122r_0889, name = kms_s_0122r_0889
	reaction_r_0889_kms_s_0122r_0889=0.549;
	% Local Parameter:   id =  kms_s_1048r_0889, name = kms_s_1048r_0889
	reaction_r_0889_kms_s_1048r_0889=0.549;

	reaction_r_0889=compartment_intracellular*function_227(reaction_r_0889_Keq_r_0889, reaction_r_0889_Vmax_r_0889, compartment_intracellular, reaction_r_0889_kmp_s_0309r_0889, reaction_r_0889_kmp_s_0763_br_0889, reaction_r_0889_kmp_s_1052r_0889, reaction_r_0889_kms_s_0122r_0889, reaction_r_0889_kms_s_1048r_0889, x(28), x(70), const_species_s_0763_b, x(218), x(220));

% Reaction: id = r_0890, name = phosphoribosylglycinamide synthase	% Local Parameter:   id =  Keq_r_0890, name = Keq_r_0890
	reaction_r_0890_Keq_r_0890=0.950614;
	% Local Parameter:   id =  Vmax_r_0890, name = Vmax_r_0890
	reaction_r_0890_Vmax_r_0890=1.53571;
	% Local Parameter:   id =  kmp_s_0400r_0890, name = kmp_s_0400r_0890
	reaction_r_0890_kmp_s_0400r_0890=1.71907;
	% Local Parameter:   id =  kmp_s_0763_br_0890, name = kmp_s_0763_br_0890
	reaction_r_0890_kmp_s_0763_br_0890=0.549;
	% Local Parameter:   id =  kmp_s_1048r_0890, name = kmp_s_1048r_0890
	reaction_r_0890_kmp_s_1048r_0890=0.549;
	% Local Parameter:   id =  kmp_s_1207r_0890, name = kmp_s_1207r_0890
	reaction_r_0890_kmp_s_1207r_0890=0.549;
	% Local Parameter:   id =  kms_s_0333r_0890, name = kms_s_0333r_0890
	reaction_r_0890_kms_s_0333r_0890=0.549;
	% Local Parameter:   id =  kms_s_0446r_0890, name = kms_s_0446r_0890
	reaction_r_0890_kms_s_0446r_0890=1.09208;
	% Local Parameter:   id =  kms_s_0740r_0890, name = kms_s_0740r_0890
	reaction_r_0890_kms_s_0740r_0890=0.549;

	reaction_r_0890=compartment_intracellular*function_228(reaction_r_0890_Keq_r_0890, reaction_r_0890_Vmax_r_0890, compartment_intracellular, reaction_r_0890_kmp_s_0400r_0890, reaction_r_0890_kmp_s_0763_br_0890, reaction_r_0890_kmp_s_1048r_0890, reaction_r_0890_kmp_s_1207r_0890, reaction_r_0890_kms_s_0333r_0890, reaction_r_0890_kms_s_0446r_0890, reaction_r_0890_kms_s_0740r_0890, x(81), x(92), x(101), x(162), const_species_s_0763_b, x(218), const_species_s_1207);

% Reaction: id = r_0891, name = phosphoribosylpyrophosphate synthetase	% Local Parameter:   id =  Keq_r_0891, name = Keq_r_0891
	reaction_r_0891_Keq_r_0891=0.696514;
	% Local Parameter:   id =  Vmax_r_0891, name = Vmax_r_0891
	reaction_r_0891_Vmax_r_0891=2.25059;
	% Local Parameter:   id =  kmp_s_0331r_0891, name = kmp_s_0331r_0891
	reaction_r_0891_kmp_s_0331r_0891=0.549;
	% Local Parameter:   id =  kmp_s_0434r_0891, name = kmp_s_0434r_0891
	reaction_r_0891_kmp_s_0434r_0891=1.25956;
	% Local Parameter:   id =  kmp_s_0763_br_0891, name = kmp_s_0763_br_0891
	reaction_r_0891_kmp_s_0763_br_0891=0.549;
	% Local Parameter:   id =  kms_s_0427r_0891, name = kms_s_0427r_0891
	reaction_r_0891_kms_s_0427r_0891=0.549;
	% Local Parameter:   id =  kms_s_0446r_0891, name = kms_s_0446r_0891
	reaction_r_0891_kms_s_0446r_0891=1.09208;

	reaction_r_0891=compartment_intracellular*function_229(reaction_r_0891_Keq_r_0891, reaction_r_0891_Vmax_r_0891, compartment_intracellular, reaction_r_0891_kmp_s_0331r_0891, reaction_r_0891_kmp_s_0434r_0891, reaction_r_0891_kmp_s_0763_br_0891, reaction_r_0891_kms_s_0427r_0891, reaction_r_0891_kms_s_0446r_0891, x(80), x(96), x(98), x(101), const_species_s_0763_b);

% Reaction: id = r_0911, name = prephenate dehydratase	% Local Parameter:   id =  Keq_r_0911, name = Keq_r_0911
	reaction_r_0911_Keq_r_0911=1.1;
	% Local Parameter:   id =  Vmax_r_0911, name = Vmax_r_0911
	reaction_r_0911_Vmax_r_0911=0.768347;
	% Local Parameter:   id =  kmp_s_0470r_0911, name = kmp_s_0470r_0911
	reaction_r_0911_kmp_s_0470r_0911=1.0;
	% Local Parameter:   id =  kmp_s_0859r_0911, name = kmp_s_0859r_0911
	reaction_r_0911_kmp_s_0859r_0911=0.549;
	% Local Parameter:   id =  kmp_s_1434_br_0911, name = kmp_s_1434_br_0911
	reaction_r_0911_kmp_s_1434_br_0911=0.549;
	% Local Parameter:   id =  kms_s_0763_br_0911, name = kms_s_0763_br_0911
	reaction_r_0911_kms_s_0763_br_0911=0.549;
	% Local Parameter:   id =  kms_s_1258r_0911, name = kms_s_1258r_0911
	reaction_r_0911_kms_s_1258r_0911=0.549;

	reaction_r_0911=compartment_intracellular*function_230(reaction_r_0911_Keq_r_0911, reaction_r_0911_Vmax_r_0911, compartment_intracellular, reaction_r_0911_kmp_s_0470r_0911, reaction_r_0911_kmp_s_0859r_0911, reaction_r_0911_kmp_s_1434_br_0911, reaction_r_0911_kms_s_0763_br_0911, reaction_r_0911_kms_s_1258r_0911, x(107), const_species_s_0763_b, x(176), x(251), const_species_s_1434_b);

% Reaction: id = r_0913, name = prephenate dehydrogenase (NADP)	% Local Parameter:   id =  Keq_r_0913, name = Keq_r_0913
	reaction_r_0913_Keq_r_0913=1.1;
	% Local Parameter:   id =  Vmax_r_0913, name = Vmax_r_0913
	reaction_r_0913_Vmax_r_0913=0.648558;
	% Local Parameter:   id =  kmp_s_0209r_0913, name = kmp_s_0209r_0913
	reaction_r_0913_kmp_s_0209r_0913=0.549;
	% Local Parameter:   id =  kmp_s_0470r_0913, name = kmp_s_0470r_0913
	reaction_r_0913_kmp_s_0470r_0913=1.0;
	% Local Parameter:   id =  kmp_s_1096r_0913, name = kmp_s_1096r_0913
	reaction_r_0913_kmp_s_1096r_0913=0.549;
	% Local Parameter:   id =  kms_s_1091r_0913, name = kms_s_1091r_0913
	reaction_r_0913_kms_s_1091r_0913=0.549;
	% Local Parameter:   id =  kms_s_1258r_0913, name = kms_s_1258r_0913
	reaction_r_0913_kms_s_1258r_0913=0.549;

	reaction_r_0913=compartment_intracellular*function_231(reaction_r_0913_Keq_r_0913, reaction_r_0913_Vmax_r_0913, compartment_intracellular, reaction_r_0913_kmp_s_0209r_0913, reaction_r_0913_kmp_s_0470r_0913, reaction_r_0913_kmp_s_1096r_0913, reaction_r_0913_kms_s_1091r_0913, reaction_r_0913_kms_s_1258r_0913, x(46), x(107), x(230), x(231), x(251));

% Reaction: id = r_0934, name = pyrimidine phosphatase	% Local Parameter:   id =  Keq_r_0934, name = Keq_r_0934
	reaction_r_0934_Keq_r_0934=1.1;
	% Local Parameter:   id =  Vmax_r_0934, name = Vmax_r_0934
	reaction_r_0934_Vmax_r_0934=0.00385;
	% Local Parameter:   id =  kmp_s_0320r_0934, name = kmp_s_0320r_0934
	reaction_r_0934_kmp_s_0320r_0934=0.549;
	% Local Parameter:   id =  kmp_s_1207r_0934, name = kmp_s_1207r_0934
	reaction_r_0934_kmp_s_1207r_0934=0.549;
	% Local Parameter:   id =  kms_s_0319r_0934, name = kms_s_0319r_0934
	reaction_r_0934_kms_s_0319r_0934=0.549;
	% Local Parameter:   id =  kms_s_1434_br_0934, name = kms_s_1434_br_0934
	reaction_r_0934_kms_s_1434_br_0934=0.549;

	reaction_r_0934=compartment_intracellular*function_232(reaction_r_0934_Keq_r_0934, reaction_r_0934_Vmax_r_0934, compartment_intracellular, reaction_r_0934_kmp_s_0320r_0934, reaction_r_0934_kmp_s_1207r_0934, reaction_r_0934_kms_s_0319r_0934, reaction_r_0934_kms_s_1434_br_0934, x(75), x(76), const_species_s_1207, const_species_s_1434_b);

% Reaction: id = r_0936, name = pyrroline-5-carboxylate reductase	% Local Parameter:   id =  Keq_r_0936, name = Keq_r_0936
	reaction_r_0936_Keq_r_0936=3.64962;
	% Local Parameter:   id =  Vmax_r_0936, name = Vmax_r_0936
	reaction_r_0936_Vmax_r_0936=0.863944;
	% Local Parameter:   id =  kmp_s_0939r_0936, name = kmp_s_0939r_0936
	reaction_r_0936_kmp_s_0939r_0936=0.549;
	% Local Parameter:   id =  kmp_s_1091r_0936, name = kmp_s_1091r_0936
	reaction_r_0936_kmp_s_1091r_0936=0.549;
	% Local Parameter:   id =  kms_s_0120r_0936, name = kms_s_0120r_0936
	reaction_r_0936_kms_s_0120r_0936=0.549;
	% Local Parameter:   id =  kms_s_0763_br_0936, name = kms_s_0763_br_0936
	reaction_r_0936_kms_s_0763_br_0936=0.549;
	% Local Parameter:   id =  kms_s_1096r_0936, name = kms_s_1096r_0936
	reaction_r_0936_kms_s_1096r_0936=0.549;

	reaction_r_0936=compartment_intracellular*function_233(reaction_r_0936_Keq_r_0936, reaction_r_0936_Vmax_r_0936, compartment_intracellular, reaction_r_0936_kmp_s_0939r_0936, reaction_r_0936_kmp_s_1091r_0936, reaction_r_0936_kms_s_0120r_0936, reaction_r_0936_kms_s_0763_br_0936, reaction_r_0936_kms_s_1096r_0936, x(27), const_species_s_0763_b, x(201), x(230), x(231));

% Reaction: id = r_0937, name = pyruvate carboxylase	% Local Parameter:   id =  Keq_r_0937, name = Keq_r_0937
	reaction_r_0937_Keq_r_0937=8.61335;
	% Local Parameter:   id =  Vmax_r_0937, name = Vmax_r_0937
	reaction_r_0937_Vmax_r_0937=62.2377;
	% Local Parameter:   id =  kmp_s_0400r_0937, name = kmp_s_0400r_0937
	reaction_r_0937_kmp_s_0400r_0937=1.71907;
	% Local Parameter:   id =  kmp_s_0763_br_0937, name = kmp_s_0763_br_0937
	reaction_r_0937_kmp_s_0763_br_0937=0.549;
	% Local Parameter:   id =  kmp_s_1156r_0937, name = kmp_s_1156r_0937
	reaction_r_0937_kmp_s_1156r_0937=0.549;
	% Local Parameter:   id =  kmp_s_1207r_0937, name = kmp_s_1207r_0937
	reaction_r_0937_kmp_s_1207r_0937=0.549;
	% Local Parameter:   id =  kms_s_0446r_0937, name = kms_s_0446r_0937
	reaction_r_0937_kms_s_0446r_0937=1.09208;
	% Local Parameter:   id =  kms_s_0458r_0937, name = kms_s_0458r_0937
	reaction_r_0937_kms_s_0458r_0937=0.549;
	% Local Parameter:   id =  kms_s_1277r_0937, name = kms_s_1277r_0937
	reaction_r_0937_kms_s_1277r_0937=0.0605905;

	reaction_r_0937=compartment_intracellular*function_234(reaction_r_0937_Keq_r_0937, reaction_r_0937_Vmax_r_0937, compartment_intracellular, reaction_r_0937_kmp_s_0400r_0937, reaction_r_0937_kmp_s_0763_br_0937, reaction_r_0937_kmp_s_1156r_0937, reaction_r_0937_kmp_s_1207r_0937, reaction_r_0937_kms_s_0446r_0937, reaction_r_0937_kms_s_0458r_0937, reaction_r_0937_kms_s_1277r_0937, x(92), x(101), x(103), const_species_s_0763_b, x(239), const_species_s_1207, x(252));

% Reaction: id = r_0938, name = pyruvate decarboxylase	% Local Parameter:   id =  Keq_r_0938, name = Keq_r_0938
	reaction_r_0938_Keq_r_0938=3.97167;
	% Local Parameter:   id =  Vmax_r_0938, name = Vmax_r_0938
	reaction_r_0938_Vmax_r_0938=62.986;
	% Local Parameter:   id =  kmp_s_0366r_0938, name = kmp_s_0366r_0938
	reaction_r_0938_kmp_s_0366r_0938=0.120104;
	% Local Parameter:   id =  kmp_s_0470r_0938, name = kmp_s_0470r_0938
	reaction_r_0938_kmp_s_0470r_0938=1.0;
	% Local Parameter:   id =  kms_s_0763_br_0938, name = kms_s_0763_br_0938
	reaction_r_0938_kms_s_0763_br_0938=0.549;
	% Local Parameter:   id =  kms_s_1277r_0938, name = kms_s_1277r_0938
	reaction_r_0938_kms_s_1277r_0938=0.0605905;

	reaction_r_0938=compartment_intracellular*function_235(reaction_r_0938_Keq_r_0938, reaction_r_0938_Vmax_r_0938, compartment_intracellular, reaction_r_0938_kmp_s_0366r_0938, reaction_r_0938_kmp_s_0470r_0938, reaction_r_0938_kms_s_0763_br_0938, reaction_r_0938_kms_s_1277r_0938, x(85), x(107), const_species_s_0763_b, x(252));

% Reaction: id = r_0940, name = pyruvate dehydrogenase	% Local Parameter:   id =  Keq_r_0940, name = Keq_r_0940
	reaction_r_0940_Keq_r_0940=1.04749;
	% Local Parameter:   id =  Vmax_r_0940, name = Vmax_r_0940
	reaction_r_0940_Vmax_r_0940=9.4545;
	% Local Parameter:   id =  kmp_s_0380r_0940, name = kmp_s_0380r_0940
	reaction_r_0940_kmp_s_0380r_0940=0.549;
	% Local Parameter:   id =  kmp_s_0470r_0940, name = kmp_s_0470r_0940
	reaction_r_0940_kmp_s_0470r_0940=1.0;
	% Local Parameter:   id =  kmp_s_1087r_0940, name = kmp_s_1087r_0940
	reaction_r_0940_kmp_s_1087r_0940=0.0867353;
	% Local Parameter:   id =  kms_s_0514r_0940, name = kms_s_0514r_0940
	reaction_r_0940_kms_s_0514r_0940=0.549;
	% Local Parameter:   id =  kms_s_1082r_0940, name = kms_s_1082r_0940
	reaction_r_0940_kms_s_1082r_0940=1.50326;
	% Local Parameter:   id =  kms_s_1277r_0940, name = kms_s_1277r_0940
	reaction_r_0940_kms_s_1277r_0940=0.0605905;

	reaction_r_0940=compartment_intracellular*function_236(reaction_r_0940_Keq_r_0940, reaction_r_0940_Vmax_r_0940, compartment_intracellular, reaction_r_0940_kmp_s_0380r_0940, reaction_r_0940_kmp_s_0470r_0940, reaction_r_0940_kmp_s_1087r_0940, reaction_r_0940_kms_s_0514r_0940, reaction_r_0940_kms_s_1082r_0940, reaction_r_0940_kms_s_1277r_0940, x(88), x(107), x(114), x(228), x(229), x(252));

% Reaction: id = r_0941, name = pyruvate kinase	% Local Parameter:   id =  Keq_r_0941, name = Keq_r_0941
	reaction_r_0941_Keq_r_0941=2.8449;
	% Local Parameter:   id =  Vmax_r_0941, name = Vmax_r_0941
	reaction_r_0941_Vmax_r_0941=146.411;
	% Local Parameter:   id =  kmp_s_0446r_0941, name = kmp_s_0446r_0941
	reaction_r_0941_kmp_s_0446r_0941=1.09208;
	% Local Parameter:   id =  kmp_s_1277r_0941, name = kmp_s_1277r_0941
	reaction_r_0941_kmp_s_1277r_0941=0.0605905;
	% Local Parameter:   id =  kms_s_0400r_0941, name = kms_s_0400r_0941
	reaction_r_0941_kms_s_0400r_0941=1.71907;
	% Local Parameter:   id =  kms_s_0763_br_0941, name = kms_s_0763_br_0941
	reaction_r_0941_kms_s_0763_br_0941=0.549;
	% Local Parameter:   id =  kms_s_1243r_0941, name = kms_s_1243r_0941
	reaction_r_0941_kms_s_1243r_0941=0.0271093;

	reaction_r_0941=compartment_intracellular*function_237(reaction_r_0941_Keq_r_0941, reaction_r_0941_Vmax_r_0941, compartment_intracellular, reaction_r_0941_kmp_s_0446r_0941, reaction_r_0941_kmp_s_1277r_0941, reaction_r_0941_kms_s_0400r_0941, reaction_r_0941_kms_s_0763_br_0941, reaction_r_0941_kms_s_1243r_0941, x(92), x(101), const_species_s_0763_b, x(249), x(252));

% Reaction: id = r_0948, name = riboflavin synthase	% Local Parameter:   id =  Keq_r_0948, name = Keq_r_0948
	reaction_r_0948_Keq_r_0948=0.331541;
	% Local Parameter:   id =  Vmax_r_0948, name = Vmax_r_0948
	reaction_r_0948_Vmax_r_0948=0.0120878;
	% Local Parameter:   id =  kmp_s_0335r_0948, name = kmp_s_0335r_0948
	reaction_r_0948_kmp_s_0335r_0948=0.549;
	% Local Parameter:   id =  kmp_s_1207r_0948, name = kmp_s_1207r_0948
	reaction_r_0948_kmp_s_1207r_0948=0.549;
	% Local Parameter:   id =  kmp_s_1434_br_0948, name = kmp_s_1434_br_0948
	reaction_r_0948_kmp_s_1434_br_0948=0.549;
	% Local Parameter:   id =  kms_s_0163r_0948, name = kms_s_0163r_0948
	reaction_r_0948_kms_s_0163r_0948=0.549;
	% Local Parameter:   id =  kms_s_0320r_0948, name = kms_s_0320r_0948
	reaction_r_0948_kms_s_0320r_0948=0.549;

	reaction_r_0948=compartment_intracellular*function_238(reaction_r_0948_Keq_r_0948, reaction_r_0948_Vmax_r_0948, compartment_intracellular, reaction_r_0948_kmp_s_0335r_0948, reaction_r_0948_kmp_s_1207r_0948, reaction_r_0948_kmp_s_1434_br_0948, reaction_r_0948_kms_s_0163r_0948, reaction_r_0948_kms_s_0320r_0948, x(36), x(76), x(83), const_species_s_1207, const_species_s_1434_b);

% Reaction: id = r_0949, name = riboflavin synthase_2	% Local Parameter:   id =  Keq_r_0949, name = Keq_r_0949
	reaction_r_0949_Keq_r_0949=1.1;
	% Local Parameter:   id =  Vmax_r_0949, name = Vmax_r_0949
	reaction_r_0949_Vmax_r_0949=0.00274998;
	% Local Parameter:   id =  kmp_s_0320r_0949, name = kmp_s_0320r_0949
	reaction_r_0949_kmp_s_0320r_0949=0.549;
	% Local Parameter:   id =  kmp_s_1283r_0949, name = kmp_s_1283r_0949
	reaction_r_0949_kmp_s_1283r_0949=0.549;
	% Local Parameter:   id =  kms_s_0335r_0949, name = kms_s_0335r_0949
	reaction_r_0949_kms_s_0335r_0949=0.549;

	reaction_r_0949=compartment_intracellular*function_239(reaction_r_0949_Keq_r_0949, reaction_r_0949_Vmax_r_0949, compartment_intracellular, reaction_r_0949_kmp_s_0320r_0949, reaction_r_0949_kmp_s_1283r_0949, reaction_r_0949_kms_s_0335r_0949, x(76), x(83), x(253));

% Reaction: id = r_0951, name = ribonucleoside-diphosphate reductase	% Local Parameter:   id =  Keq_r_0951, name = Keq_r_0951
	reaction_r_0951_Keq_r_0951=0.192861;
	% Local Parameter:   id =  Vmax_r_0951, name = Vmax_r_0951
	reaction_r_0951_Vmax_r_0951=0.0120515;
	% Local Parameter:   id =  kmp_s_0562r_0951, name = kmp_s_0562r_0951
	reaction_r_0951_kmp_s_0562r_0951=0.549;
	% Local Parameter:   id =  kmp_s_1434_br_0951, name = kmp_s_1434_br_0951
	reaction_r_0951_kmp_s_1434_br_0951=0.549;
	% Local Parameter:   id =  kmp_s_1517r_0951, name = kmp_s_1517r_0951
	reaction_r_0951_kmp_s_1517r_0951=0.549;
	% Local Parameter:   id =  kms_s_0400r_0951, name = kms_s_0400r_0951
	reaction_r_0951_kms_s_0400r_0951=1.71907;
	% Local Parameter:   id =  kms_s_1521r_0951, name = kms_s_1521r_0951
	reaction_r_0951_kms_s_1521r_0951=0.549;

	reaction_r_0951=compartment_intracellular*function_240(reaction_r_0951_Keq_r_0951, reaction_r_0951_Vmax_r_0951, compartment_intracellular, reaction_r_0951_kmp_s_0562r_0951, reaction_r_0951_kmp_s_1434_br_0951, reaction_r_0951_kmp_s_1517r_0951, reaction_r_0951_kms_s_0400r_0951, reaction_r_0951_kms_s_1521r_0951, x(92), x(128), const_species_s_1434_b, x(278), x(279));

% Reaction: id = r_0955, name = ribonucleoside-diphosphate reductase (GDP)	% Local Parameter:   id =  Keq_r_0955, name = Keq_r_0955
	reaction_r_0955_Keq_r_0955=0.6039;
	% Local Parameter:   id =  Vmax_r_0955, name = Vmax_r_0955
	reaction_r_0955_Vmax_r_0955=0.0163349;
	% Local Parameter:   id =  kmp_s_0591r_0955, name = kmp_s_0591r_0955
	reaction_r_0955_kmp_s_0591r_0955=0.549;
	% Local Parameter:   id =  kmp_s_1434_br_0955, name = kmp_s_1434_br_0955
	reaction_r_0955_kmp_s_1434_br_0955=0.549;
	% Local Parameter:   id =  kmp_s_1517r_0955, name = kmp_s_1517r_0955
	reaction_r_0955_kmp_s_1517r_0955=0.549;
	% Local Parameter:   id =  kms_s_0706r_0955, name = kms_s_0706r_0955
	reaction_r_0955_kms_s_0706r_0955=0.549;
	% Local Parameter:   id =  kms_s_1521r_0955, name = kms_s_1521r_0955
	reaction_r_0955_kms_s_1521r_0955=0.549;

	reaction_r_0955=compartment_intracellular*function_241(reaction_r_0955_Keq_r_0955, reaction_r_0955_Vmax_r_0955, compartment_intracellular, reaction_r_0955_kmp_s_0591r_0955, reaction_r_0955_kmp_s_1434_br_0955, reaction_r_0955_kmp_s_1517r_0955, reaction_r_0955_kms_s_0706r_0955, reaction_r_0955_kms_s_1521r_0955, x(134), x(155), const_species_s_1434_b, x(278), x(279));

% Reaction: id = r_0957, name = ribonucleoside-diphosphate reductase (UDP)	% Local Parameter:   id =  Keq_r_0957, name = Keq_r_0957
	reaction_r_0957_Keq_r_0957=0.6039;
	% Local Parameter:   id =  Vmax_r_0957, name = Vmax_r_0957
	reaction_r_0957_Vmax_r_0957=0.0404138;
	% Local Parameter:   id =  kmp_s_0622r_0957, name = kmp_s_0622r_0957
	reaction_r_0957_kmp_s_0622r_0957=0.549;
	% Local Parameter:   id =  kmp_s_1434_br_0957, name = kmp_s_1434_br_0957
	reaction_r_0957_kmp_s_1434_br_0957=0.549;
	% Local Parameter:   id =  kmp_s_1517r_0957, name = kmp_s_1517r_0957
	reaction_r_0957_kmp_s_1517r_0957=0.549;
	% Local Parameter:   id =  kms_s_1411r_0957, name = kms_s_1411r_0957
	reaction_r_0957_kms_s_1411r_0957=0.549;
	% Local Parameter:   id =  kms_s_1521r_0957, name = kms_s_1521r_0957
	reaction_r_0957_kms_s_1521r_0957=0.549;

	reaction_r_0957=compartment_intracellular*function_242(reaction_r_0957_Keq_r_0957, reaction_r_0957_Vmax_r_0957, compartment_intracellular, reaction_r_0957_kmp_s_0622r_0957, reaction_r_0957_kmp_s_1434_br_0957, reaction_r_0957_kmp_s_1517r_0957, reaction_r_0957_kms_s_1411r_0957, reaction_r_0957_kms_s_1521r_0957, x(142), x(269), const_species_s_1434_b, x(278), x(279));

% Reaction: id = r_0959, name = ribonucleoside-triphosphate reductase (ATP)	% Local Parameter:   id =  Keq_r_0959, name = Keq_r_0959
	reaction_r_0959_Keq_r_0959=0.303587;
	% Local Parameter:   id =  Vmax_r_0959, name = Vmax_r_0959
	reaction_r_0959_Vmax_r_0959=0.0120516;
	% Local Parameter:   id =  kmp_s_0566r_0959, name = kmp_s_0566r_0959
	reaction_r_0959_kmp_s_0566r_0959=0.549;
	% Local Parameter:   id =  kmp_s_1434_br_0959, name = kmp_s_1434_br_0959
	reaction_r_0959_kmp_s_1434_br_0959=0.549;
	% Local Parameter:   id =  kmp_s_1517r_0959, name = kmp_s_1517r_0959
	reaction_r_0959_kmp_s_1517r_0959=0.549;
	% Local Parameter:   id =  kms_s_0446r_0959, name = kms_s_0446r_0959
	reaction_r_0959_kms_s_0446r_0959=1.09208;
	% Local Parameter:   id =  kms_s_1521r_0959, name = kms_s_1521r_0959
	reaction_r_0959_kms_s_1521r_0959=0.549;

	reaction_r_0959=compartment_intracellular*function_243(reaction_r_0959_Keq_r_0959, reaction_r_0959_Vmax_r_0959, compartment_intracellular, reaction_r_0959_kmp_s_0566r_0959, reaction_r_0959_kmp_s_1434_br_0959, reaction_r_0959_kmp_s_1517r_0959, reaction_r_0959_kms_s_0446r_0959, reaction_r_0959_kms_s_1521r_0959, x(101), x(130), const_species_s_1434_b, x(278), x(279));

% Reaction: id = r_0963, name = ribose-5-phosphate isomerase	% Local Parameter:   id =  Keq_r_0963, name = Keq_r_0963
	reaction_r_0963_Keq_r_0963=1.1;
	% Local Parameter:   id =  Vmax_r_0963, name = Vmax_r_0963
	reaction_r_0963_Vmax_r_0963=0.5544;
	% Local Parameter:   id =  kmp_s_0427r_0963, name = kmp_s_0427r_0963
	reaction_r_0963_kmp_s_0427r_0963=0.549;
	% Local Parameter:   id =  kms_s_0557r_0963, name = kms_s_0557r_0963
	reaction_r_0963_kms_s_0557r_0963=0.549;

	reaction_r_0963=compartment_intracellular*function_244(reaction_r_0963_Keq_r_0963, reaction_r_0963_Vmax_r_0963, compartment_intracellular, reaction_r_0963_kmp_s_0427r_0963, reaction_r_0963_kms_s_0557r_0963, x(96), x(126));

% Reaction: id = r_0965, name = ribulose 5-phosphate 3-epimerase	% Local Parameter:   id =  Keq_r_0965, name = Keq_r_0965
	reaction_r_0965_Keq_r_0965=1.1;
	% Local Parameter:   id =  Vmax_r_0965, name = Vmax_r_0965
	reaction_r_0965_Vmax_r_0965=0.5577;
	% Local Parameter:   id =  kmp_s_0557r_0965, name = kmp_s_0557r_0965
	reaction_r_0965_kmp_s_0557r_0965=0.549;
	% Local Parameter:   id =  kms_s_0561r_0965, name = kms_s_0561r_0965
	reaction_r_0965_kms_s_0561r_0965=0.549;

	reaction_r_0965=compartment_intracellular*function_245(reaction_r_0965_Keq_r_0965, reaction_r_0965_Vmax_r_0965, compartment_intracellular, reaction_r_0965_kmp_s_0557r_0965, reaction_r_0965_kms_s_0561r_0965, x(126), x(127));

% Reaction: id = r_0967, name = S-adenosyl-methionine delta-24-sterol-c-methyltransferase	% Local Parameter:   id =  Keq_r_0967, name = Keq_r_0967
	reaction_r_0967_Keq_r_0967=0.6039;
	% Local Parameter:   id =  Vmax_r_0967, name = Vmax_r_0967
	reaction_r_0967_Vmax_r_0967=0.00141569;
	% Local Parameter:   id =  kmp_s_0669r_0967, name = kmp_s_0669r_0967
	reaction_r_0967_kmp_s_0669r_0967=0.549;
	% Local Parameter:   id =  kmp_s_0763_br_0967, name = kmp_s_0763_br_0967
	reaction_r_0967_kmp_s_0763_br_0967=0.549;
	% Local Parameter:   id =  kmp_s_1290r_0967, name = kmp_s_1290r_0967
	reaction_r_0967_kmp_s_1290r_0967=0.549;
	% Local Parameter:   id =  kms_s_1293r_0967, name = kms_s_1293r_0967
	reaction_r_0967_kms_s_1293r_0967=0.549;
	% Local Parameter:   id =  kms_s_1447r_0967, name = kms_s_1447r_0967
	reaction_r_0967_kms_s_1447r_0967=0.549;

	reaction_r_0967=compartment_intracellular*function_246(reaction_r_0967_Keq_r_0967, reaction_r_0967_Vmax_r_0967, compartment_intracellular, reaction_r_0967_kmp_s_0669r_0967, reaction_r_0967_kmp_s_0763_br_0967, reaction_r_0967_kmp_s_1290r_0967, reaction_r_0967_kms_s_1293r_0967, reaction_r_0967_kms_s_1447r_0967, x(152), const_species_s_0763_b, x(254), x(255), x(273));

% Reaction: id = r_0969, name = saccharopine dehydrogenase (NAD, L-lysine forming)	% Local Parameter:   id =  Keq_r_0969, name = Keq_r_0969
	reaction_r_0969_Keq_r_0969=0.0348439;
	% Local Parameter:   id =  Vmax_r_0969, name = Vmax_r_0969
	reaction_r_0969_Vmax_r_0969=3.3649;
	% Local Parameter:   id =  kmp_s_0185r_0969, name = kmp_s_0185r_0969
	reaction_r_0969_kmp_s_0185r_0969=0.549;
	% Local Parameter:   id =  kmp_s_0763_br_0969, name = kmp_s_0763_br_0969
	reaction_r_0969_kmp_s_0763_br_0969=0.549;
	% Local Parameter:   id =  kmp_s_0929r_0969, name = kmp_s_0929r_0969
	reaction_r_0969_kmp_s_0929r_0969=0.549;
	% Local Parameter:   id =  kmp_s_1087r_0969, name = kmp_s_1087r_0969
	reaction_r_0969_kmp_s_1087r_0969=0.0867353;
	% Local Parameter:   id =  kms_s_0942r_0969, name = kms_s_0942r_0969
	reaction_r_0969_kms_s_0942r_0969=0.549;
	% Local Parameter:   id =  kms_s_1082r_0969, name = kms_s_1082r_0969
	reaction_r_0969_kms_s_1082r_0969=1.50326;
	% Local Parameter:   id =  kms_s_1434_br_0969, name = kms_s_1434_br_0969
	reaction_r_0969_kms_s_1434_br_0969=0.549;

	reaction_r_0969=compartment_intracellular*function_247(reaction_r_0969_Keq_r_0969, reaction_r_0969_Vmax_r_0969, compartment_intracellular, reaction_r_0969_kmp_s_0185r_0969, reaction_r_0969_kmp_s_0763_br_0969, reaction_r_0969_kmp_s_0929r_0969, reaction_r_0969_kmp_s_1087r_0969, reaction_r_0969_kms_s_0942r_0969, reaction_r_0969_kms_s_1082r_0969, reaction_r_0969_kms_s_1434_br_0969, x(42), const_species_s_0763_b, x(198), x(202), x(228), x(229), const_species_s_1434_b);

% Reaction: id = r_0970, name = saccharopine dehydrogenase (NADP, L-glutamate forming)	% Local Parameter:   id =  Keq_r_0970, name = Keq_r_0970
	reaction_r_0970_Keq_r_0970=2.00364;
	% Local Parameter:   id =  Vmax_r_0970, name = Vmax_r_0970
	reaction_r_0970_Vmax_r_0970=3.3649;
	% Local Parameter:   id =  kmp_s_0942r_0970, name = kmp_s_0942r_0970
	reaction_r_0970_kmp_s_0942r_0970=0.549;
	% Local Parameter:   id =  kmp_s_1091r_0970, name = kmp_s_1091r_0970
	reaction_r_0970_kmp_s_1091r_0970=0.549;
	% Local Parameter:   id =  kmp_s_1434_br_0970, name = kmp_s_1434_br_0970
	reaction_r_0970_kmp_s_1434_br_0970=0.549;
	% Local Parameter:   id =  kms_s_0763_br_0970, name = kms_s_0763_br_0970
	reaction_r_0970_kms_s_0763_br_0970=0.549;
	% Local Parameter:   id =  kms_s_0867r_0970, name = kms_s_0867r_0970
	reaction_r_0970_kms_s_0867r_0970=0.549;
	% Local Parameter:   id =  kms_s_0899r_0970, name = kms_s_0899r_0970
	reaction_r_0970_kms_s_0899r_0970=0.549;
	% Local Parameter:   id =  kms_s_1096r_0970, name = kms_s_1096r_0970
	reaction_r_0970_kms_s_1096r_0970=0.549;

	reaction_r_0970=compartment_intracellular*function_248(reaction_r_0970_Keq_r_0970, reaction_r_0970_Vmax_r_0970, compartment_intracellular, reaction_r_0970_kmp_s_0942r_0970, reaction_r_0970_kmp_s_1091r_0970, reaction_r_0970_kmp_s_1434_br_0970, reaction_r_0970_kms_s_0763_br_0970, reaction_r_0970_kms_s_0867r_0970, reaction_r_0970_kms_s_0899r_0970, reaction_r_0970_kms_s_1096r_0970, const_species_s_0763_b, x(179), x(188), x(202), x(230), x(231), const_species_s_1434_b);

% Reaction: id = r_0972, name = serine C-palmitoyltransferase	% Local Parameter:   id =  Keq_r_0972, name = Keq_r_0972
	reaction_r_0972_Keq_r_0972=1.1;
	% Local Parameter:   id =  Vmax_r_0972, name = Vmax_r_0972
	reaction_r_0972_Vmax_r_0972=0.00279509;
	% Local Parameter:   id =  kmp_s_0218r_0972, name = kmp_s_0218r_0972
	reaction_r_0972_kmp_s_0218r_0972=0.549;
	% Local Parameter:   id =  kmp_s_0470r_0972, name = kmp_s_0470r_0972
	reaction_r_0972_kmp_s_0470r_0972=1.0;
	% Local Parameter:   id =  kmp_s_0514r_0972, name = kmp_s_0514r_0972
	reaction_r_0972_kmp_s_0514r_0972=0.549;
	% Local Parameter:   id =  kms_s_0943r_0972, name = kms_s_0943r_0972
	reaction_r_0972_kms_s_0943r_0972=0.549;
	% Local Parameter:   id =  kms_s_1187r_0972, name = kms_s_1187r_0972
	reaction_r_0972_kms_s_1187r_0972=0.549;

	reaction_r_0972=compartment_intracellular*function_249(reaction_r_0972_Keq_r_0972, reaction_r_0972_Vmax_r_0972, compartment_intracellular, reaction_r_0972_kmp_s_0218r_0972, reaction_r_0972_kmp_s_0470r_0972, reaction_r_0972_kmp_s_0514r_0972, reaction_r_0972_kms_s_0943r_0972, reaction_r_0972_kms_s_1187r_0972, x(51), x(107), x(114), x(203), x(242));

% Reaction: id = r_0976, name = shikimate dehydrogenase	% Local Parameter:   id =  Keq_r_0976, name = Keq_r_0976
	reaction_r_0976_Keq_r_0976=2.00364;
	% Local Parameter:   id =  Vmax_r_0976, name = Vmax_r_0976
	reaction_r_0976_Vmax_r_0976=1.60931;
	% Local Parameter:   id =  kmp_s_1091r_0976, name = kmp_s_1091r_0976
	reaction_r_0976_kmp_s_1091r_0976=0.549;
	% Local Parameter:   id =  kmp_s_1306r_0976, name = kmp_s_1306r_0976
	reaction_r_0976_kmp_s_1306r_0976=0.549;
	% Local Parameter:   id =  kms_s_0217r_0976, name = kms_s_0217r_0976
	reaction_r_0976_kms_s_0217r_0976=0.549;
	% Local Parameter:   id =  kms_s_0763_br_0976, name = kms_s_0763_br_0976
	reaction_r_0976_kms_s_0763_br_0976=0.549;
	% Local Parameter:   id =  kms_s_1096r_0976, name = kms_s_1096r_0976
	reaction_r_0976_kms_s_1096r_0976=0.549;

	reaction_r_0976=compartment_intracellular*function_250(reaction_r_0976_Keq_r_0976, reaction_r_0976_Vmax_r_0976, compartment_intracellular, reaction_r_0976_kmp_s_1091r_0976, reaction_r_0976_kmp_s_1306r_0976, reaction_r_0976_kms_s_0217r_0976, reaction_r_0976_kms_s_0763_br_0976, reaction_r_0976_kms_s_1096r_0976, x(50), const_species_s_0763_b, x(230), x(231), x(257));

% Reaction: id = r_0977, name = shikimate kinase	% Local Parameter:   id =  Keq_r_0977, name = Keq_r_0977
	reaction_r_0977_Keq_r_0977=0.950614;
	% Local Parameter:   id =  Vmax_r_0977, name = Vmax_r_0977
	reaction_r_0977_Vmax_r_0977=1.60929;
	% Local Parameter:   id =  kmp_s_0267r_0977, name = kmp_s_0267r_0977
	reaction_r_0977_kmp_s_0267r_0977=0.549;
	% Local Parameter:   id =  kmp_s_0400r_0977, name = kmp_s_0400r_0977
	reaction_r_0977_kmp_s_0400r_0977=1.71907;
	% Local Parameter:   id =  kmp_s_0763_br_0977, name = kmp_s_0763_br_0977
	reaction_r_0977_kmp_s_0763_br_0977=0.549;
	% Local Parameter:   id =  kms_s_0446r_0977, name = kms_s_0446r_0977
	reaction_r_0977_kms_s_0446r_0977=1.09208;
	% Local Parameter:   id =  kms_s_1306r_0977, name = kms_s_1306r_0977
	reaction_r_0977_kms_s_1306r_0977=0.549;

	reaction_r_0977=compartment_intracellular*function_251(reaction_r_0977_Keq_r_0977, reaction_r_0977_Vmax_r_0977, compartment_intracellular, reaction_r_0977_kmp_s_0267r_0977, reaction_r_0977_kmp_s_0400r_0977, reaction_r_0977_kmp_s_0763_br_0977, reaction_r_0977_kms_s_0446r_0977, reaction_r_0977_kms_s_1306r_0977, x(61), x(92), x(101), const_species_s_0763_b, x(257));

% Reaction: id = r_0991, name = squalene epoxidase (NAD)	% Local Parameter:   id =  Keq_r_0991, name = Keq_r_0991
	reaction_r_0991_Keq_r_0991=34.7263;
	% Local Parameter:   id =  Vmax_r_0991, name = Vmax_r_0991
	reaction_r_0991_Vmax_r_0991=0.0961402;
	% Local Parameter:   id =  kmp_s_0040r_0991, name = kmp_s_0040r_0991
	reaction_r_0991_kmp_s_0040r_0991=0.549;
	% Local Parameter:   id =  kmp_s_1082r_0991, name = kmp_s_1082r_0991
	reaction_r_0991_kmp_s_1082r_0991=1.50326;
	% Local Parameter:   id =  kmp_s_1434_br_0991, name = kmp_s_1434_br_0991
	reaction_r_0991_kmp_s_1434_br_0991=0.549;
	% Local Parameter:   id =  kms_s_0763_br_0991, name = kms_s_0763_br_0991
	reaction_r_0991_kms_s_0763_br_0991=0.549;
	% Local Parameter:   id =  kms_s_1087r_0991, name = kms_s_1087r_0991
	reaction_r_0991_kms_s_1087r_0991=0.0867353;
	% Local Parameter:   id =  kms_s_1160r_0991, name = kms_s_1160r_0991
	reaction_r_0991_kms_s_1160r_0991=0.549;
	% Local Parameter:   id =  kms_s_1327r_0991, name = kms_s_1327r_0991
	reaction_r_0991_kms_s_1327r_0991=0.549;

	reaction_r_0991=compartment_intracellular*function_252(reaction_r_0991_Keq_r_0991, reaction_r_0991_Vmax_r_0991, compartment_intracellular, reaction_r_0991_kmp_s_0040r_0991, reaction_r_0991_kmp_s_1082r_0991, reaction_r_0991_kmp_s_1434_br_0991, reaction_r_0991_kms_s_0763_br_0991, reaction_r_0991_kms_s_1087r_0991, reaction_r_0991_kms_s_1160r_0991, reaction_r_0991_kms_s_1327r_0991, x(12), const_species_s_0763_b, x(228), x(229), x(240), x(260), const_species_s_1434_b);

% Reaction: id = r_0993, name = squalene synthase	% Local Parameter:   id =  Keq_r_0993, name = Keq_r_0993
	reaction_r_0993_Keq_r_0993=1.1;
	% Local Parameter:   id =  Vmax_r_0993, name = Vmax_r_0993
	reaction_r_0993_Vmax_r_0993=0.0627;
	% Local Parameter:   id =  kmp_s_0605r_0993, name = kmp_s_0605r_0993
	reaction_r_0993_kmp_s_0605r_0993=0.549;
	% Local Parameter:   id =  kmp_s_1091r_0993, name = kmp_s_1091r_0993
	reaction_r_0993_kmp_s_1091r_0993=0.549;
	% Local Parameter:   id =  kmp_s_1327r_0993, name = kmp_s_1327r_0993
	reaction_r_0993_kmp_s_1327r_0993=0.549;
	% Local Parameter:   id =  kms_s_0195r_0993, name = kms_s_0195r_0993
	reaction_r_0993_kms_s_0195r_0993=0.549;
	% Local Parameter:   id =  kms_s_0763_br_0993, name = kms_s_0763_br_0993
	reaction_r_0993_kms_s_0763_br_0993=0.549;
	% Local Parameter:   id =  kms_s_1096r_0993, name = kms_s_1096r_0993
	reaction_r_0993_kms_s_1096r_0993=0.549;

	reaction_r_0993=compartment_intracellular*function_253(reaction_r_0993_Keq_r_0993, reaction_r_0993_Vmax_r_0993, compartment_intracellular, reaction_r_0993_kmp_s_0605r_0993, reaction_r_0993_kmp_s_1091r_0993, reaction_r_0993_kmp_s_1327r_0993, reaction_r_0993_kms_s_0195r_0993, reaction_r_0993_kms_s_0763_br_0993, reaction_r_0993_kms_s_1096r_0993, x(44), x(138), const_species_s_0763_b, x(230), x(231), x(260));

% Reaction: id = r_0995, name = steryl ester hydrolase	% Local Parameter:   id =  Keq_r_0995, name = Keq_r_0995
	reaction_r_0995_Keq_r_0995=1.1;
	% Local Parameter:   id =  Vmax_r_0995, name = Vmax_r_0995
	reaction_r_0995_Vmax_r_0995=0.0034727;
	% Local Parameter:   id =  kmp_s_0641r_0995, name = kmp_s_0641r_0995
	reaction_r_0995_kmp_s_0641r_0995=0.549;
	% Local Parameter:   id =  kmp_s_1434_br_0995, name = kmp_s_1434_br_0995
	reaction_r_0995_kmp_s_1434_br_0995=0.549;
	% Local Parameter:   id =  kms_s_0635r_0995, name = kms_s_0635r_0995
	reaction_r_0995_kms_s_0635r_0995=0.549;
	% Local Parameter:   id =  kms_s_0663r_0995, name = kms_s_0663r_0995
	reaction_r_0995_kms_s_0663r_0995=0.549;

	reaction_r_0995=compartment_intracellular*function_254(reaction_r_0995_Keq_r_0995, reaction_r_0995_Vmax_r_0995, compartment_intracellular, reaction_r_0995_kmp_s_0641r_0995, reaction_r_0995_kmp_s_1434_br_0995, reaction_r_0995_kms_s_0635r_0995, reaction_r_0995_kms_s_0663r_0995, x(146), x(147), x(151), const_species_s_1434_b);

% Reaction: id = r_1003, name = succinate-CoA ligase (ADP-forming)	% Local Parameter:   id =  Keq_r_1003, name = Keq_r_1003
	reaction_r_1003_Keq_r_1003=1.73154;
	% Local Parameter:   id =  Vmax_r_1003, name = Vmax_r_1003
	reaction_r_1003_Vmax_r_1003=0.13134;
	% Local Parameter:   id =  kmp_s_0400r_1003, name = kmp_s_0400r_1003
	reaction_r_1003_kmp_s_0400r_1003=1.71907;
	% Local Parameter:   id =  kmp_s_1207r_1003, name = kmp_s_1207r_1003
	reaction_r_1003_kmp_s_1207r_1003=0.549;
	% Local Parameter:   id =  kmp_s_1342r_1003, name = kmp_s_1342r_1003
	reaction_r_1003_kmp_s_1342r_1003=0.549;
	% Local Parameter:   id =  kms_s_0446r_1003, name = kms_s_0446r_1003
	reaction_r_1003_kms_s_0446r_1003=1.09208;
	% Local Parameter:   id =  kms_s_0514r_1003, name = kms_s_0514r_1003
	reaction_r_1003_kms_s_0514r_1003=0.549;
	% Local Parameter:   id =  kms_s_1338r_1003, name = kms_s_1338r_1003
	reaction_r_1003_kms_s_1338r_1003=0.549;

	reaction_r_1003=compartment_intracellular*function_255(reaction_r_1003_Keq_r_1003, reaction_r_1003_Vmax_r_1003, compartment_intracellular, reaction_r_1003_kmp_s_0400r_1003, reaction_r_1003_kmp_s_1207r_1003, reaction_r_1003_kmp_s_1342r_1003, reaction_r_1003_kms_s_0446r_1003, reaction_r_1003_kms_s_0514r_1003, reaction_r_1003_kms_s_1338r_1003, x(92), x(101), x(114), const_species_s_1207, x(263), x(264));

% Reaction: id = r_1007, name = sulfate adenylyltransferase (ADP)	% Local Parameter:   id =  Keq_r_1007, name = Keq_r_1007
	reaction_r_1007_Keq_r_1007=0.639881;
	% Local Parameter:   id =  Vmax_r_1007, name = Vmax_r_1007
	reaction_r_1007_Vmax_r_1007=0.624362;
	% Local Parameter:   id =  kmp_s_0304r_1007, name = kmp_s_0304r_1007
	reaction_r_1007_kmp_s_0304r_1007=0.549;
	% Local Parameter:   id =  kmp_s_1207r_1007, name = kmp_s_1207r_1007
	reaction_r_1007_kmp_s_1207r_1007=0.549;
	% Local Parameter:   id =  kms_s_0400r_1007, name = kms_s_0400r_1007
	reaction_r_1007_kms_s_0400r_1007=1.71907;
	% Local Parameter:   id =  kms_s_0763_br_1007, name = kms_s_0763_br_1007
	reaction_r_1007_kms_s_0763_br_1007=0.549;
	% Local Parameter:   id =  kms_s_1347r_1007, name = kms_s_1347r_1007
	reaction_r_1007_kms_s_1347r_1007=0.549;

	reaction_r_1007=compartment_intracellular*function_256(reaction_r_1007_Keq_r_1007, reaction_r_1007_Vmax_r_1007, compartment_intracellular, reaction_r_1007_kmp_s_0304r_1007, reaction_r_1007_kmp_s_1207r_1007, reaction_r_1007_kms_s_0400r_1007, reaction_r_1007_kms_s_0763_br_1007, reaction_r_1007_kms_s_1347r_1007, x(67), x(92), const_species_s_0763_b, const_species_s_1207, x(265));

% Reaction: id = r_1008, name = sulfite reductase (NADPH2)	% Local Parameter:   id =  Keq_r_1008, name = Keq_r_1008
	reaction_r_1008_Keq_r_1008=3.64962;
	% Local Parameter:   id =  Vmax_r_1008, name = Vmax_r_1008
	reaction_r_1008_Vmax_r_1008=0.851402;
	% Local Parameter:   id =  kmp_s_0805r_1008, name = kmp_s_0805r_1008
	reaction_r_1008_kmp_s_0805r_1008=0.549;
	% Local Parameter:   id =  kmp_s_1091r_1008, name = kmp_s_1091r_1008
	reaction_r_1008_kmp_s_1091r_1008=0.549;
	% Local Parameter:   id =  kmp_s_1434_br_1008, name = kmp_s_1434_br_1008
	reaction_r_1008_kmp_s_1434_br_1008=0.549;
	% Local Parameter:   id =  kms_s_0763_br_1008, name = kms_s_0763_br_1008
	reaction_r_1008_kms_s_0763_br_1008=0.549;
	% Local Parameter:   id =  kms_s_1096r_1008, name = kms_s_1096r_1008
	reaction_r_1008_kms_s_1096r_1008=0.549;
	% Local Parameter:   id =  kms_s_1349r_1008, name = kms_s_1349r_1008
	reaction_r_1008_kms_s_1349r_1008=0.549;

	reaction_r_1008=compartment_intracellular*function_257(reaction_r_1008_Keq_r_1008, reaction_r_1008_Vmax_r_1008, compartment_intracellular, reaction_r_1008_kmp_s_0805r_1008, reaction_r_1008_kmp_s_1091r_1008, reaction_r_1008_kmp_s_1434_br_1008, reaction_r_1008_kms_s_0763_br_1008, reaction_r_1008_kms_s_1096r_1008, reaction_r_1008_kms_s_1349r_1008, const_species_s_0763_b, x(170), x(230), x(231), x(266), const_species_s_1434_b);

% Reaction: id = r_1024, name = thioredoxin reductase (NADPH)	% Local Parameter:   id =  Keq_r_1024, name = Keq_r_1024
	reaction_r_1024_Keq_r_1024=2.00364;
	% Local Parameter:   id =  Vmax_r_1024, name = Vmax_r_1024
	reaction_r_1024_Vmax_r_1024=0.705433;
	% Local Parameter:   id =  kmp_s_1091r_1024, name = kmp_s_1091r_1024
	reaction_r_1024_kmp_s_1091r_1024=0.549;
	% Local Parameter:   id =  kmp_s_1521r_1024, name = kmp_s_1521r_1024
	reaction_r_1024_kmp_s_1521r_1024=0.549;
	% Local Parameter:   id =  kms_s_0763_br_1024, name = kms_s_0763_br_1024
	reaction_r_1024_kms_s_0763_br_1024=0.549;
	% Local Parameter:   id =  kms_s_1096r_1024, name = kms_s_1096r_1024
	reaction_r_1024_kms_s_1096r_1024=0.549;
	% Local Parameter:   id =  kms_s_1517r_1024, name = kms_s_1517r_1024
	reaction_r_1024_kms_s_1517r_1024=0.549;

	reaction_r_1024=compartment_intracellular*function_258(reaction_r_1024_Keq_r_1024, reaction_r_1024_Vmax_r_1024, compartment_intracellular, reaction_r_1024_kmp_s_1091r_1024, reaction_r_1024_kmp_s_1521r_1024, reaction_r_1024_kms_s_0763_br_1024, reaction_r_1024_kms_s_1096r_1024, reaction_r_1024_kms_s_1517r_1024, const_species_s_0763_b, x(230), x(231), x(278), x(279));

% Reaction: id = r_1026, name = threonine aldolase	% Local Parameter:   id =  Keq_r_1026, name = Keq_r_1026
	reaction_r_1026_Keq_r_1026=0.0725309;
	% Local Parameter:   id =  Vmax_r_1026, name = Vmax_r_1026
	reaction_r_1026_Vmax_r_1026=3.18448;
	% Local Parameter:   id =  kmp_s_0366r_1026, name = kmp_s_0366r_1026
	reaction_r_1026_kmp_s_0366r_1026=0.120104;
	% Local Parameter:   id =  kmp_s_0740r_1026, name = kmp_s_0740r_1026
	reaction_r_1026_kmp_s_0740r_1026=0.549;
	% Local Parameter:   id =  kms_s_0949r_1026, name = kms_s_0949r_1026
	reaction_r_1026_kms_s_0949r_1026=1.0;

	reaction_r_1026=compartment_intracellular*function_259(reaction_r_1026_Keq_r_1026, reaction_r_1026_Vmax_r_1026, compartment_intracellular, reaction_r_1026_kmp_s_0366r_1026, reaction_r_1026_kmp_s_0740r_1026, reaction_r_1026_kms_s_0949r_1026, x(85), x(162), x(204));

% Reaction: id = r_1027, name = threonine synthase	% Local Parameter:   id =  Keq_r_1027, name = Keq_r_1027
	reaction_r_1027_Keq_r_1027=2.00364;
	% Local Parameter:   id =  Vmax_r_1027, name = Vmax_r_1027
	reaction_r_1027_Vmax_r_1027=5.5748;
	% Local Parameter:   id =  kmp_s_0949r_1027, name = kmp_s_0949r_1027
	reaction_r_1027_kmp_s_0949r_1027=1.0;
	% Local Parameter:   id =  kmp_s_1207r_1027, name = kmp_s_1207r_1027
	reaction_r_1027_kmp_s_1207r_1027=0.549;
	% Local Parameter:   id =  kms_s_1122r_1027, name = kms_s_1122r_1027
	reaction_r_1027_kms_s_1122r_1027=0.549;
	% Local Parameter:   id =  kms_s_1434_br_1027, name = kms_s_1434_br_1027
	reaction_r_1027_kms_s_1434_br_1027=0.549;

	reaction_r_1027=compartment_intracellular*function_260(reaction_r_1027_Keq_r_1027, reaction_r_1027_Vmax_r_1027, compartment_intracellular, reaction_r_1027_kmp_s_0949r_1027, reaction_r_1027_kmp_s_1207r_1027, reaction_r_1027_kms_s_1122r_1027, reaction_r_1027_kms_s_1434_br_1027, x(204), x(233), const_species_s_1207, const_species_s_1434_b);

% Reaction: id = r_1032, name = thymidylate synthase	% Local Parameter:   id =  Keq_r_1032, name = Keq_r_1032
	reaction_r_1032_Keq_r_1032=1.1;
	% Local Parameter:   id =  Vmax_r_1032, name = Vmax_r_1032
	reaction_r_1032_Vmax_r_1032=0.015323;
	% Local Parameter:   id =  kmp_s_0601r_1032, name = kmp_s_0601r_1032
	reaction_r_1032_kmp_s_0601r_1032=0.549;
	% Local Parameter:   id =  kmp_s_0619r_1032, name = kmp_s_0619r_1032
	reaction_r_1032_kmp_s_0619r_1032=0.549;
	% Local Parameter:   id =  kms_s_0307r_1032, name = kms_s_0307r_1032
	reaction_r_1032_kms_s_0307r_1032=0.549;
	% Local Parameter:   id =  kms_s_0624r_1032, name = kms_s_0624r_1032
	reaction_r_1032_kms_s_0624r_1032=0.549;

	reaction_r_1032=compartment_intracellular*function_261(reaction_r_1032_Keq_r_1032, reaction_r_1032_Vmax_r_1032, compartment_intracellular, reaction_r_1032_kmp_s_0601r_1032, reaction_r_1032_kmp_s_0619r_1032, reaction_r_1032_kms_s_0307r_1032, reaction_r_1032_kms_s_0624r_1032, x(69), x(137), x(141), x(143));

% Reaction: id = r_1035, name = transaldolase	% Local Parameter:   id =  Keq_r_1035, name = Keq_r_1035
	reaction_r_1035_Keq_r_1035=0.459088;
	% Local Parameter:   id =  Vmax_r_1035, name = Vmax_r_1035
	reaction_r_1035_Vmax_r_1035=0.14014;
	% Local Parameter:   id =  kmp_s_0731r_1035, name = kmp_s_0731r_1035
	reaction_r_1035_kmp_s_0731r_1035=0.0436363;
	% Local Parameter:   id =  kmp_s_1304r_1035, name = kmp_s_1304r_1035
	reaction_r_1035_kmp_s_1304r_1035=0.549;
	% Local Parameter:   id =  kms_s_0533r_1035, name = kms_s_0533r_1035
	reaction_r_1035_kms_s_0533r_1035=0.549;
	% Local Parameter:   id =  kms_s_0539r_1035, name = kms_s_0539r_1035
	reaction_r_1035_kms_s_0539r_1035=0.104555;

	reaction_r_1035=compartment_intracellular*function_262(reaction_r_1035_Keq_r_1035, reaction_r_1035_Vmax_r_1035, compartment_intracellular, reaction_r_1035_kmp_s_0731r_1035, reaction_r_1035_kmp_s_1304r_1035, reaction_r_1035_kms_s_0533r_1035, reaction_r_1035_kms_s_0539r_1035, x(119), x(121), x(158), x(256));

% Reaction: id = r_1036, name = transketolase	% Local Parameter:   id =  Keq_r_1036, name = Keq_r_1036
	reaction_r_1036_Keq_r_1036=13.8394;
	% Local Parameter:   id =  Vmax_r_1036, name = Vmax_r_1036
	reaction_r_1036_Vmax_r_1036=0.14014;
	% Local Parameter:   id =  kmp_s_0427r_1036, name = kmp_s_0427r_1036
	reaction_r_1036_kmp_s_0427r_1036=0.549;
	% Local Parameter:   id =  kmp_s_0561r_1036, name = kmp_s_0561r_1036
	reaction_r_1036_kmp_s_0561r_1036=0.549;
	% Local Parameter:   id =  kms_s_0731r_1036, name = kms_s_0731r_1036
	reaction_r_1036_kms_s_0731r_1036=0.0436363;
	% Local Parameter:   id =  kms_s_1304r_1036, name = kms_s_1304r_1036
	reaction_r_1036_kms_s_1304r_1036=0.549;

	reaction_r_1036=compartment_intracellular*function_263(reaction_r_1036_Keq_r_1036, reaction_r_1036_Vmax_r_1036, compartment_intracellular, reaction_r_1036_kmp_s_0427r_1036, reaction_r_1036_kmp_s_0561r_1036, reaction_r_1036_kms_s_0731r_1036, reaction_r_1036_kms_s_1304r_1036, x(96), x(127), x(158), x(256));

% Reaction: id = r_1037, name = transketolase_2	% Local Parameter:   id =  Keq_r_1037, name = Keq_r_1037
	reaction_r_1037_Keq_r_1037=72.6682;
	% Local Parameter:   id =  Vmax_r_1037, name = Vmax_r_1037
	reaction_r_1037_Vmax_r_1037=1.1627;
	% Local Parameter:   id =  kmp_s_0533r_1037, name = kmp_s_0533r_1037
	reaction_r_1037_kmp_s_0533r_1037=0.549;
	% Local Parameter:   id =  kmp_s_0561r_1037, name = kmp_s_0561r_1037
	reaction_r_1037_kmp_s_0561r_1037=0.549;
	% Local Parameter:   id =  kms_s_0539r_1037, name = kms_s_0539r_1037
	reaction_r_1037_kms_s_0539r_1037=0.104555;
	% Local Parameter:   id =  kms_s_0731r_1037, name = kms_s_0731r_1037
	reaction_r_1037_kms_s_0731r_1037=0.0436363;

	reaction_r_1037=compartment_intracellular*function_264(reaction_r_1037_Keq_r_1037, reaction_r_1037_Vmax_r_1037, compartment_intracellular, reaction_r_1037_kmp_s_0533r_1037, reaction_r_1037_kmp_s_0561r_1037, reaction_r_1037_kms_s_0539r_1037, reaction_r_1037_kms_s_0731r_1037, x(119), x(121), x(127), x(158));

% Reaction: id = r_1038, name = trehalose-phosphatase	% Local Parameter:   id =  Keq_r_1038, name = Keq_r_1038
	reaction_r_1038_Keq_r_1038=1.1;
	% Local Parameter:   id =  Vmax_r_1038, name = Vmax_r_1038
	reaction_r_1038_Vmax_r_1038=0.1001;
	% Local Parameter:   id =  kmp_s_0416r_1038, name = kmp_s_0416r_1038
	reaction_r_1038_kmp_s_0416r_1038=0.549;
	% Local Parameter:   id =  kmp_s_1207r_1038, name = kmp_s_1207r_1038
	reaction_r_1038_kmp_s_1207r_1038=0.549;
	% Local Parameter:   id =  kms_s_0419r_1038, name = kms_s_0419r_1038
	reaction_r_1038_kms_s_0419r_1038=0.549;
	% Local Parameter:   id =  kms_s_1434_br_1038, name = kms_s_1434_br_1038
	reaction_r_1038_kms_s_1434_br_1038=0.549;

	reaction_r_1038=compartment_intracellular*function_265(reaction_r_1038_Keq_r_1038, reaction_r_1038_Vmax_r_1038, compartment_intracellular, reaction_r_1038_kmp_s_0416r_1038, reaction_r_1038_kmp_s_1207r_1038, reaction_r_1038_kms_s_0419r_1038, reaction_r_1038_kms_s_1434_br_1038, x(94), x(95), const_species_s_1207, const_species_s_1434_b);

% Reaction: id = r_1040, name = triacylglycerol lipase	% Local Parameter:   id =  Keq_r_1040, name = Keq_r_1040
	reaction_r_1040_Keq_r_1040=1.1;
	% Local Parameter:   id =  Vmax_r_1040, name = Vmax_r_1040
	reaction_r_1040_Vmax_r_1040=0.0043505;
	% Local Parameter:   id =  kmp_s_0596r_1040, name = kmp_s_0596r_1040
	reaction_r_1040_kmp_s_0596r_1040=0.549;
	% Local Parameter:   id =  kmp_s_0663r_1040, name = kmp_s_0663r_1040
	reaction_r_1040_kmp_s_0663r_1040=0.549;
	% Local Parameter:   id =  kms_s_1399r_1040, name = kms_s_1399r_1040
	reaction_r_1040_kms_s_1399r_1040=0.549;
	% Local Parameter:   id =  kms_s_1434_br_1040, name = kms_s_1434_br_1040
	reaction_r_1040_kms_s_1434_br_1040=0.549;

	reaction_r_1040=compartment_intracellular*function_266(reaction_r_1040_Keq_r_1040, reaction_r_1040_Vmax_r_1040, compartment_intracellular, reaction_r_1040_kmp_s_0596r_1040, reaction_r_1040_kmp_s_0663r_1040, reaction_r_1040_kms_s_1399r_1040, reaction_r_1040_kms_s_1434_br_1040, x(136), x(151), const_species_s_1399, const_species_s_1434_b);

% Reaction: id = r_1041, name = triose-phosphate isomerase	% Local Parameter:   id =  Keq_r_1041, name = Keq_r_1041
	reaction_r_1041_Keq_r_1041=0.0797509;
	% Local Parameter:   id =  Vmax_r_1041, name = Vmax_r_1041
	reaction_r_1041_Vmax_r_1041=20.559;
	% Local Parameter:   id =  kmp_s_0731r_1041, name = kmp_s_0731r_1041
	reaction_r_1041_kmp_s_0731r_1041=0.0436363;
	% Local Parameter:   id =  kms_s_0735r_1041, name = kms_s_0735r_1041
	reaction_r_1041_kms_s_0735r_1041=0.601873;

	reaction_r_1041=compartment_intracellular*function_267(reaction_r_1041_Keq_r_1041, reaction_r_1041_Vmax_r_1041, compartment_intracellular, reaction_r_1041_kmp_s_0731r_1041, reaction_r_1041_kms_s_0735r_1041, x(158), x(161));

% Reaction: id = r_1042, name = tryptophan synthase (indoleglycerol phosphate)	% Local Parameter:   id =  Keq_r_1042, name = Keq_r_1042
	reaction_r_1042_Keq_r_1042=0.0874316;
	% Local Parameter:   id =  Vmax_r_1042, name = Vmax_r_1042
	reaction_r_1042_Vmax_r_1042=0.187549;
	% Local Parameter:   id =  kmp_s_0731r_1042, name = kmp_s_0731r_1042
	reaction_r_1042_kmp_s_0731r_1042=0.0436363;
	% Local Parameter:   id =  kmp_s_0952r_1042, name = kmp_s_0952r_1042
	reaction_r_1042_kmp_s_0952r_1042=1.0;
	% Local Parameter:   id =  kmp_s_1434_br_1042, name = kmp_s_1434_br_1042
	reaction_r_1042_kmp_s_1434_br_1042=0.549;
	% Local Parameter:   id =  kms_s_0088r_1042, name = kms_s_0088r_1042
	reaction_r_1042_kms_s_0088r_1042=0.549;
	% Local Parameter:   id =  kms_s_0943r_1042, name = kms_s_0943r_1042
	reaction_r_1042_kms_s_0943r_1042=0.549;

	reaction_r_1042=compartment_intracellular*function_268(reaction_r_1042_Keq_r_1042, reaction_r_1042_Vmax_r_1042, compartment_intracellular, reaction_r_1042_kmp_s_0731r_1042, reaction_r_1042_kmp_s_0952r_1042, reaction_r_1042_kmp_s_1434_br_1042, reaction_r_1042_kms_s_0088r_1042, reaction_r_1042_kms_s_0943r_1042, x(24), x(158), x(203), x(205), const_species_s_1434_b);

% Reaction: id = r_1050, name = tyrosine transaminase	% Local Parameter:   id =  Keq_r_1050, name = Keq_r_1050
	reaction_r_1050_Keq_r_1050=1.1;
	% Local Parameter:   id =  Vmax_r_1050, name = Vmax_r_1050
	reaction_r_1050_Vmax_r_1050=0.41272;
	% Local Parameter:   id =  kmp_s_0185r_1050, name = kmp_s_0185r_1050
	reaction_r_1050_kmp_s_0185r_1050=0.549;
	% Local Parameter:   id =  kmp_s_0955r_1050, name = kmp_s_0955r_1050
	reaction_r_1050_kmp_s_0955r_1050=0.549;
	% Local Parameter:   id =  kms_s_0209r_1050, name = kms_s_0209r_1050
	reaction_r_1050_kms_s_0209r_1050=0.549;
	% Local Parameter:   id =  kms_s_0899r_1050, name = kms_s_0899r_1050
	reaction_r_1050_kms_s_0899r_1050=0.549;

	reaction_r_1050=compartment_intracellular*function_269(reaction_r_1050_Keq_r_1050, reaction_r_1050_Vmax_r_1050, compartment_intracellular, reaction_r_1050_kmp_s_0185r_1050, reaction_r_1050_kmp_s_0955r_1050, reaction_r_1050_kms_s_0209r_1050, reaction_r_1050_kms_s_0899r_1050, x(42), x(46), x(188), x(206));

% Reaction: id = r_1059, name = UMP kinase	% Local Parameter:   id =  Keq_r_1059, name = Keq_r_1059
	reaction_r_1059_Keq_r_1059=1.73154;
	% Local Parameter:   id =  Vmax_r_1059, name = Vmax_r_1059
	reaction_r_1059_Vmax_r_1059=0.23947;
	% Local Parameter:   id =  kmp_s_0400r_1059, name = kmp_s_0400r_1059
	reaction_r_1059_kmp_s_0400r_1059=1.71907;
	% Local Parameter:   id =  kmp_s_1411r_1059, name = kmp_s_1411r_1059
	reaction_r_1059_kmp_s_1411r_1059=0.549;
	% Local Parameter:   id =  kms_s_0446r_1059, name = kms_s_0446r_1059
	reaction_r_1059_kms_s_0446r_1059=1.09208;
	% Local Parameter:   id =  kms_s_1417r_1059, name = kms_s_1417r_1059
	reaction_r_1059_kms_s_1417r_1059=0.549;

	reaction_r_1059=compartment_intracellular*function_270(reaction_r_1059_Keq_r_1059, reaction_r_1059_Vmax_r_1059, compartment_intracellular, reaction_r_1059_kmp_s_0400r_1059, reaction_r_1059_kmp_s_1411r_1059, reaction_r_1059_kms_s_0446r_1059, reaction_r_1059_kms_s_1417r_1059, x(92), x(101), x(269), x(271));

% Reaction: id = r_1066, name = uridylate kinase (dUMP)	% Local Parameter:   id =  Keq_r_1066, name = Keq_r_1066
	reaction_r_1066_Keq_r_1066=0.698801;
	% Local Parameter:   id =  Vmax_r_1066, name = Vmax_r_1066
	reaction_r_1066_Vmax_r_1066=0.025718;
	% Local Parameter:   id =  kmp_s_0446r_1066, name = kmp_s_0446r_1066
	reaction_r_1066_kmp_s_0446r_1066=1.09208;
	% Local Parameter:   id =  kmp_s_0624r_1066, name = kmp_s_0624r_1066
	reaction_r_1066_kmp_s_0624r_1066=0.549;
	% Local Parameter:   id =  kms_s_0400r_1066, name = kms_s_0400r_1066
	reaction_r_1066_kms_s_0400r_1066=1.71907;
	% Local Parameter:   id =  kms_s_0622r_1066, name = kms_s_0622r_1066
	reaction_r_1066_kms_s_0622r_1066=0.549;

	reaction_r_1066=compartment_intracellular*function_271(reaction_r_1066_Keq_r_1066, reaction_r_1066_Vmax_r_1066, compartment_intracellular, reaction_r_1066_kmp_s_0446r_1066, reaction_r_1066_kmp_s_0624r_1066, reaction_r_1066_kms_s_0400r_1066, reaction_r_1066_kms_s_0622r_1066, x(92), x(101), x(142), x(143));

% Reaction: id = r_1072, name = UTP-glucose-1-phosphate uridylyltransferase	% Local Parameter:   id =  Keq_r_1072, name = Keq_r_1072
	reaction_r_1072_Keq_r_1072=2.00364;
	% Local Parameter:   id =  Vmax_r_1072, name = Vmax_r_1072
	reaction_r_1072_Vmax_r_1072=11.2651;
	% Local Parameter:   id =  kmp_s_0605r_1072, name = kmp_s_0605r_1072
	reaction_r_1072_kmp_s_0605r_1072=0.549;
	% Local Parameter:   id =  kmp_s_1415r_1072, name = kmp_s_1415r_1072
	reaction_r_1072_kmp_s_1415r_1072=0.549;
	% Local Parameter:   id =  kms_s_0549r_1072, name = kms_s_0549r_1072
	reaction_r_1072_kms_s_0549r_1072=0.549;
	% Local Parameter:   id =  kms_s_0763_br_1072, name = kms_s_0763_br_1072
	reaction_r_1072_kms_s_0763_br_1072=0.549;
	% Local Parameter:   id =  kms_s_1430r_1072, name = kms_s_1430r_1072
	reaction_r_1072_kms_s_1430r_1072=0.549;

	reaction_r_1072=compartment_intracellular*function_272(reaction_r_1072_Keq_r_1072, reaction_r_1072_Vmax_r_1072, compartment_intracellular, reaction_r_1072_kmp_s_0605r_1072, reaction_r_1072_kmp_s_1415r_1072, reaction_r_1072_kms_s_0549r_1072, reaction_r_1072_kms_s_0763_br_1072, reaction_r_1072_kms_s_1430r_1072, x(123), x(138), const_species_s_0763_b, x(270), x(272));

% Reaction: id = r_1073, name = valine transaminase	% Local Parameter:   id =  Keq_r_1073, name = Keq_r_1073
	reaction_r_1073_Keq_r_1073=2.00364;
	% Local Parameter:   id =  Vmax_r_1073, name = Vmax_r_1073
	reaction_r_1073_Vmax_r_1073=1.1011;
	% Local Parameter:   id =  kmp_s_0185r_1073, name = kmp_s_0185r_1073
	reaction_r_1073_kmp_s_0185r_1073=0.549;
	% Local Parameter:   id =  kmp_s_0960r_1073, name = kmp_s_0960r_1073
	reaction_r_1073_kmp_s_0960r_1073=1.0;
	% Local Parameter:   id =  kms_s_0238r_1073, name = kms_s_0238r_1073
	reaction_r_1073_kms_s_0238r_1073=0.549;
	% Local Parameter:   id =  kms_s_0899r_1073, name = kms_s_0899r_1073
	reaction_r_1073_kms_s_0899r_1073=0.549;

	reaction_r_1073=compartment_intracellular*function_273(reaction_r_1073_Keq_r_1073, reaction_r_1073_Vmax_r_1073, compartment_intracellular, reaction_r_1073_kmp_s_0185r_1073, reaction_r_1073_kmp_s_0960r_1073, reaction_r_1073_kms_s_0238r_1073, reaction_r_1073_kms_s_0899r_1073, x(42), x(54), x(188), x(207));

% Reaction: id = r_1157, name = ammonia transport	% Local Parameter:   id =  Keq_r_1157, name = Keq_r_1157
	reaction_r_1157_Keq_r_1157=1.0;
	% Local Parameter:   id =  Vmax_r_1157, name = Vmax_r_1157
	reaction_r_1157_Vmax_r_1157=0.964941;
	% Local Parameter:   id =  kmp_s_0430r_1157, name = kmp_s_0430r_1157
	reaction_r_1157_kmp_s_0430r_1157=0.549;
	% Local Parameter:   id =  kms_s_0431_br_1157, name = kms_s_0431_br_1157
	reaction_r_1157_kms_s_0431_br_1157=38.0;

	reaction_r_1157=function_274(reaction_r_1157_Keq_r_1157, reaction_r_1157_Vmax_r_1157, reaction_r_1157_kmp_s_0430r_1157, reaction_r_1157_kms_s_0431_br_1157, x(97), const_species_s_0431_b);

% Reaction: id = r_1194, name = CO2 transport	% Local Parameter:   id =  Keq_r_1194, name = Keq_r_1194
	reaction_r_1194_Keq_r_1194=1.0;
	% Local Parameter:   id =  Vmax_r_1194, name = Vmax_r_1194
	reaction_r_1194_Vmax_r_1194=2.37902;
	% Local Parameter:   id =  kmp_s_0472_br_1194, name = kmp_s_0472_br_1194
	reaction_r_1194_kmp_s_0472_br_1194=1.0E-5;
	% Local Parameter:   id =  kms_s_0470r_1194, name = kms_s_0470r_1194
	reaction_r_1194_kms_s_0470r_1194=1.0;

	reaction_r_1194=function_275(reaction_r_1194_Keq_r_1194, reaction_r_1194_Vmax_r_1194, reaction_r_1194_kmp_s_0472_br_1194, reaction_r_1194_kms_s_0470r_1194, x(107), const_species_s_0472_b);

% Reaction: id = r_1247, name = ethanol transport	% Local Parameter:   id =  Keq_r_1247, name = Keq_r_1247
	reaction_r_1247_Keq_r_1247=1.0;
	% Local Parameter:   id =  Vmax_r_1247, name = Vmax_r_1247
	reaction_r_1247_Vmax_r_1247=4.81765;
	% Local Parameter:   id =  kmp_s_0651_br_1247, name = kmp_s_0651_br_1247
	reaction_r_1247_kmp_s_0651_br_1247=24.5;
	% Local Parameter:   id =  kms_s_0650r_1247, name = kms_s_0650r_1247
	reaction_r_1247_kms_s_0650r_1247=50.0;

	reaction_r_1247=function_276(reaction_r_1247_Keq_r_1247, reaction_r_1247_Vmax_r_1247, reaction_r_1247_kmp_s_0651_br_1247, reaction_r_1247_kms_s_0650r_1247, x(148), const_species_s_0651_b);

% Reaction: id = r_1293, name = glucose transport	% Local Parameter:   id =  Keq_r_1293, name = Keq_r_1293
	reaction_r_1293_Keq_r_1293=1.0;
	% Local Parameter:   id =  Vmax_r_1293, name = Vmax_r_1293
	reaction_r_1293_Vmax_r_1293=2.36101;
	% Local Parameter:   id =  kmp_s_0545r_1293, name = kmp_s_0545r_1293
	reaction_r_1293_kmp_s_0545r_1293=0.0987587;
	% Local Parameter:   id =  kms_s_0547_br_1293, name = kms_s_0547_br_1293
	reaction_r_1293_kms_s_0547_br_1293=11.1;

	reaction_r_1293=function_277(reaction_r_1293_Keq_r_1293, reaction_r_1293_Vmax_r_1293, reaction_r_1293_kmp_s_0545r_1293, reaction_r_1293_kms_s_0547_br_1293, x(122), x(281));

% Reaction: id = r_1435, name = O2 transport	% Local Parameter:   id =  Keq_r_1435, name = Keq_r_1435
	reaction_r_1435_Keq_r_1435=1.0;
	% Local Parameter:   id =  Vmax_r_1435, name = Vmax_r_1435
	reaction_r_1435_Vmax_r_1435=0.0232306;
	% Local Parameter:   id =  kmp_s_1160r_1435, name = kmp_s_1160r_1435
	reaction_r_1435_kmp_s_1160r_1435=0.549;
	% Local Parameter:   id =  kms_s_1162_br_1435, name = kms_s_1162_br_1435
	reaction_r_1435_kms_s_1162_br_1435=24.5;

	reaction_r_1435=function_278(reaction_r_1435_Keq_r_1435, reaction_r_1435_Vmax_r_1435, reaction_r_1435_kmp_s_1160r_1435, reaction_r_1435_kms_s_1162_br_1435, x(240), const_species_s_1162_b);

% Reaction: id = r_1461, name = phosphate transport	% Local Parameter:   id =  Keq_r_1461, name = Keq_r_1461
	reaction_r_1461_Keq_r_1461=1.0;
	% Local Parameter:   id =  Vmax_r_1461, name = Vmax_r_1461
	reaction_r_1461_Vmax_r_1461=0.0925906;
	% Local Parameter:   id =  kmp_s_0763_br_1461, name = kmp_s_0763_br_1461
	reaction_r_1461_kmp_s_0763_br_1461=0.549;
	% Local Parameter:   id =  kmp_s_1207r_1461, name = kmp_s_1207r_1461
	reaction_r_1461_kmp_s_1207r_1461=0.549;
	% Local Parameter:   id =  kms_s_0766_br_1461, name = kms_s_0766_br_1461
	reaction_r_1461_kms_s_0766_br_1461=0.1;
	% Local Parameter:   id =  kms_s_1209_br_1461, name = kms_s_1209_br_1461
	reaction_r_1461_kms_s_1209_br_1461=24.5;

	reaction_r_1461=function_279(reaction_r_1461_Keq_r_1461, reaction_r_1461_Vmax_r_1461, reaction_r_1461_kmp_s_0763_br_1461, reaction_r_1461_kmp_s_1207r_1461, reaction_r_1461_kms_s_0766_br_1461, reaction_r_1461_kms_s_1209_br_1461, const_species_s_0763_b, const_species_s_0766_b, const_species_s_1207, const_species_s_1209_b);

% Reaction: id = r_1503, name = succinate transport	% Local Parameter:   id =  Keq_r_1503, name = Keq_r_1503
	reaction_r_1503_Keq_r_1503=1.0;
	% Local Parameter:   id =  Vmax_r_1503, name = Vmax_r_1503
	reaction_r_1503_Vmax_r_1503=0.840147;
	% Local Parameter:   id =  kmp_s_0766_br_1503, name = kmp_s_0766_br_1503
	reaction_r_1503_kmp_s_0766_br_1503=0.1;
	% Local Parameter:   id =  kmp_s_1339_br_1503, name = kmp_s_1339_br_1503
	reaction_r_1503_kmp_s_1339_br_1503=1.0;
	% Local Parameter:   id =  kms_s_0763_br_1503, name = kms_s_0763_br_1503
	reaction_r_1503_kms_s_0763_br_1503=0.549;
	% Local Parameter:   id =  kms_s_1338r_1503, name = kms_s_1338r_1503
	reaction_r_1503_kms_s_1338r_1503=0.549;

	reaction_r_1503=function_280(reaction_r_1503_Keq_r_1503, reaction_r_1503_Vmax_r_1503, reaction_r_1503_kmp_s_0766_br_1503, reaction_r_1503_kmp_s_1339_br_1503, reaction_r_1503_kms_s_0763_br_1503, reaction_r_1503_kms_s_1338r_1503, const_species_s_0763_b, const_species_s_0766_b, x(263), const_species_s_1339_b);

% Reaction: id = r_1507, name = sulfate uniport	% Local Parameter:   id =  Keq_r_1507, name = Keq_r_1507
	reaction_r_1507_Keq_r_1507=1.0;
	% Local Parameter:   id =  Vmax_r_1507, name = Vmax_r_1507
	reaction_r_1507_Vmax_r_1507=0.0190579;
	% Local Parameter:   id =  kmp_s_1347r_1507, name = kmp_s_1347r_1507
	reaction_r_1507_kmp_s_1347r_1507=0.549;
	% Local Parameter:   id =  kms_s_1348_br_1507, name = kms_s_1348_br_1507
	reaction_r_1507_kms_s_1348_br_1507=42.2;

	reaction_r_1507=function_281(reaction_r_1507_Keq_r_1507, reaction_r_1507_Vmax_r_1507, reaction_r_1507_kmp_s_1347r_1507, reaction_r_1507_kms_s_1348_br_1507, x(265), const_species_s_1348_b);

% Reaction: id = r_1672, name = isa acyl-CoA	% Local Parameter:   id =  Keq_r_1672, name = Keq_r_1672
	reaction_r_1672_Keq_r_1672=1.1;
	% Local Parameter:   id =  Vmax_r_1672, name = Vmax_r_1672
	reaction_r_1672_Vmax_r_1672=0.026268;
	% Local Parameter:   id =  kmp_s_0386r_1672, name = kmp_s_0386r_1672
	reaction_r_1672_kmp_s_0386r_1672=0.549;
	% Local Parameter:   id =  kms_s_1342r_1672, name = kms_s_1342r_1672
	reaction_r_1672_kms_s_1342r_1672=0.549;

	reaction_r_1672=compartment_intracellular*function_282(reaction_r_1672_Keq_r_1672, reaction_r_1672_Vmax_r_1672, compartment_intracellular, reaction_r_1672_kmp_s_0386r_1672, reaction_r_1672_kms_s_1342r_1672, x(89), x(264));

% Reaction: id = r_1812, name = biomass production	% Local Parameter:   id =  V_o, name = V_o
	reaction_r_1812_V_o=0.0555;
	% Local Parameter:   id =  a_s_0001r_1812, name = a_s_0001r_1812
	reaction_r_1812_a_s_0001r_1812=1.1358;
	% Local Parameter:   id =  a_s_0416r_1812, name = a_s_0416r_1812
	reaction_r_1812_a_s_0416r_1812=0.023371;
	% Local Parameter:   id =  a_s_0434r_1812, name = a_s_0434r_1812
	reaction_r_1812_a_s_0434r_1812=0.051;
	% Local Parameter:   id =  a_s_0446r_1812, name = a_s_0446r_1812
	reaction_r_1812_a_s_0446r_1812=59.276;
	% Local Parameter:   id =  a_s_0511r_1812, name = a_s_0511r_1812
	reaction_r_1812_a_s_0511r_1812=0.05;
	% Local Parameter:   id =  a_s_0564r_1812, name = a_s_0564r_1812
	reaction_r_1812_a_s_0564r_1812=0.003587;
	% Local Parameter:   id =  a_s_0569r_1812, name = a_s_0569r_1812
	reaction_r_1812_a_s_0569r_1812=0.002432;
	% Local Parameter:   id =  a_s_0593r_1812, name = a_s_0593r_1812
	reaction_r_1812_a_s_0593r_1812=0.002432;
	% Local Parameter:   id =  a_s_0619r_1812, name = a_s_0619r_1812
	reaction_r_1812_a_s_0619r_1812=0.003587;
	% Local Parameter:   id =  a_s_0740r_1812, name = a_s_0740r_1812
	reaction_r_1812_a_s_0740r_1812=0.32518;
	% Local Parameter:   id =  a_s_0743r_1812, name = a_s_0743r_1812
	reaction_r_1812_a_s_0743r_1812=0.51852;
	% Local Parameter:   id =  a_s_0752r_1812, name = a_s_0752r_1812
	reaction_r_1812_a_s_0752r_1812=0.051;
	% Local Parameter:   id =  a_s_0863r_1812, name = a_s_0863r_1812
	reaction_r_1812_a_s_0863r_1812=0.35734;
	% Local Parameter:   id =  a_s_0873r_1812, name = a_s_0873r_1812
	reaction_r_1812_a_s_0873r_1812=0.13579;
	% Local Parameter:   id =  a_s_0877r_1812, name = a_s_0877r_1812
	reaction_r_1812_a_s_0877r_1812=0.17152;
	% Local Parameter:   id =  a_s_0881r_1812, name = a_s_0881r_1812
	reaction_r_1812_a_s_0881r_1812=0.17152;
	% Local Parameter:   id =  a_s_0889r_1812, name = a_s_0889r_1812
	reaction_r_1812_a_s_0889r_1812=0.04288;
	% Local Parameter:   id =  a_s_0899r_1812, name = a_s_0899r_1812
	reaction_r_1812_a_s_0899r_1812=0.268;
	% Local Parameter:   id =  a_s_0907r_1812, name = a_s_0907r_1812
	reaction_r_1812_a_s_0907r_1812=0.268;
	% Local Parameter:   id =  a_s_0911r_1812, name = a_s_0911r_1812
	reaction_r_1812_a_s_0911r_1812=0.075041;
	% Local Parameter:   id =  a_s_0920r_1812, name = a_s_0920r_1812
	reaction_r_1812_a_s_0920r_1812=0.17152;
	% Local Parameter:   id =  a_s_0925r_1812, name = a_s_0925r_1812
	reaction_r_1812_a_s_0925r_1812=0.25014;
	% Local Parameter:   id =  a_s_0929r_1812, name = a_s_0929r_1812
	reaction_r_1812_a_s_0929r_1812=0.23942;
	% Local Parameter:   id =  a_s_0933r_1812, name = a_s_0933r_1812
	reaction_r_1812_a_s_0933r_1812=0.050027;
	% Local Parameter:   id =  a_s_0936r_1812, name = a_s_0936r_1812
	reaction_r_1812_a_s_0936r_1812=0.11435;
	% Local Parameter:   id =  a_s_0939r_1812, name = a_s_0939r_1812
	reaction_r_1812_a_s_0939r_1812=0.12864;
	% Local Parameter:   id =  a_s_0943r_1812, name = a_s_0943r_1812
	reaction_r_1812_a_s_0943r_1812=0.25371;
	% Local Parameter:   id =  a_s_0949r_1812, name = a_s_0949r_1812
	reaction_r_1812_a_s_0949r_1812=0.19653;
	% Local Parameter:   id =  a_s_0952r_1812, name = a_s_0952r_1812
	reaction_r_1812_a_s_0952r_1812=0.028;
	% Local Parameter:   id =  a_s_0955r_1812, name = a_s_0955r_1812
	reaction_r_1812_a_s_0955r_1812=0.096481;
	% Local Parameter:   id =  a_s_0960r_1812, name = a_s_0960r_1812
	reaction_r_1812_a_s_0960r_1812=0.25728;
	% Local Parameter:   id =  a_s_1000r_1812, name = a_s_1000r_1812
	reaction_r_1812_a_s_1000r_1812=1.0;
	% Local Parameter:   id =  a_s_1011r_1812, name = a_s_1011r_1812
	reaction_r_1812_a_s_1011r_1812=0.82099;
	% Local Parameter:   id =  a_s_1283r_1812, name = a_s_1283r_1812
	reaction_r_1812_a_s_1283r_1812=9.0E-4;
	% Local Parameter:   id =  a_s_1347r_1812, name = a_s_1347r_1812
	reaction_r_1812_a_s_1347r_1812=0.02;
	% Local Parameter:   id =  a_s_1417r_1812, name = a_s_1417r_1812
	reaction_r_1812_a_s_1417r_1812=0.067;
	% Local Parameter:   id =  s_0001_or_1812, name = s_0001_or_1812
	reaction_r_1812_s_0001_or_1812=0.549;
	% Local Parameter:   id =  s_0416_or_1812, name = s_0416_or_1812
	reaction_r_1812_s_0416_or_1812=0.549;
	% Local Parameter:   id =  s_0434_or_1812, name = s_0434_or_1812
	reaction_r_1812_s_0434_or_1812=1.25956;
	% Local Parameter:   id =  s_0446_or_1812, name = s_0446_or_1812
	reaction_r_1812_s_0446_or_1812=1.09208;
	% Local Parameter:   id =  s_0511_or_1812, name = s_0511_or_1812
	reaction_r_1812_s_0511_or_1812=0.549;
	% Local Parameter:   id =  s_0564_or_1812, name = s_0564_or_1812
	reaction_r_1812_s_0564_or_1812=0.549;
	% Local Parameter:   id =  s_0569_or_1812, name = s_0569_or_1812
	reaction_r_1812_s_0569_or_1812=0.549;
	% Local Parameter:   id =  s_0593_or_1812, name = s_0593_or_1812
	reaction_r_1812_s_0593_or_1812=0.549;
	% Local Parameter:   id =  s_0619_or_1812, name = s_0619_or_1812
	reaction_r_1812_s_0619_or_1812=0.549;
	% Local Parameter:   id =  s_0740_or_1812, name = s_0740_or_1812
	reaction_r_1812_s_0740_or_1812=0.549;
	% Local Parameter:   id =  s_0743_or_1812, name = s_0743_or_1812
	reaction_r_1812_s_0743_or_1812=0.549;
	% Local Parameter:   id =  s_0752_or_1812, name = s_0752_or_1812
	reaction_r_1812_s_0752_or_1812=0.549;
	% Local Parameter:   id =  s_0863_or_1812, name = s_0863_or_1812
	reaction_r_1812_s_0863_or_1812=0.549;
	% Local Parameter:   id =  s_0873_or_1812, name = s_0873_or_1812
	reaction_r_1812_s_0873_or_1812=0.549;
	% Local Parameter:   id =  s_0877_or_1812, name = s_0877_or_1812
	reaction_r_1812_s_0877_or_1812=0.549;
	% Local Parameter:   id =  s_0881_or_1812, name = s_0881_or_1812
	reaction_r_1812_s_0881_or_1812=0.549;
	% Local Parameter:   id =  s_0889_or_1812, name = s_0889_or_1812
	reaction_r_1812_s_0889_or_1812=0.549;
	% Local Parameter:   id =  s_0899_or_1812, name = s_0899_or_1812
	reaction_r_1812_s_0899_or_1812=0.549;
	% Local Parameter:   id =  s_0907_or_1812, name = s_0907_or_1812
	reaction_r_1812_s_0907_or_1812=0.549;
	% Local Parameter:   id =  s_0911_or_1812, name = s_0911_or_1812
	reaction_r_1812_s_0911_or_1812=0.549;
	% Local Parameter:   id =  s_0920_or_1812, name = s_0920_or_1812
	reaction_r_1812_s_0920_or_1812=0.549;
	% Local Parameter:   id =  s_0925_or_1812, name = s_0925_or_1812
	reaction_r_1812_s_0925_or_1812=0.549;
	% Local Parameter:   id =  s_0929_or_1812, name = s_0929_or_1812
	reaction_r_1812_s_0929_or_1812=0.549;
	% Local Parameter:   id =  s_0933_or_1812, name = s_0933_or_1812
	reaction_r_1812_s_0933_or_1812=0.549;
	% Local Parameter:   id =  s_0936_or_1812, name = s_0936_or_1812
	reaction_r_1812_s_0936_or_1812=0.549;
	% Local Parameter:   id =  s_0939_or_1812, name = s_0939_or_1812
	reaction_r_1812_s_0939_or_1812=0.549;
	% Local Parameter:   id =  s_0943_or_1812, name = s_0943_or_1812
	reaction_r_1812_s_0943_or_1812=0.549;
	% Local Parameter:   id =  s_0949_or_1812, name = s_0949_or_1812
	reaction_r_1812_s_0949_or_1812=1.0;
	% Local Parameter:   id =  s_0952_or_1812, name = s_0952_or_1812
	reaction_r_1812_s_0952_or_1812=1.0;
	% Local Parameter:   id =  s_0955_or_1812, name = s_0955_or_1812
	reaction_r_1812_s_0955_or_1812=0.549;
	% Local Parameter:   id =  s_0960_or_1812, name = s_0960_or_1812
	reaction_r_1812_s_0960_or_1812=1.0;
	% Local Parameter:   id =  s_1000_or_1812, name = s_1000_or_1812
	reaction_r_1812_s_1000_or_1812=0.549;
	% Local Parameter:   id =  s_1011_or_1812, name = s_1011_or_1812
	reaction_r_1812_s_1011_or_1812=0.549;
	% Local Parameter:   id =  s_1283_or_1812, name = s_1283_or_1812
	reaction_r_1812_s_1283_or_1812=0.549;
	% Local Parameter:   id =  s_1347_or_1812, name = s_1347_or_1812
	reaction_r_1812_s_1347_or_1812=0.549;
	% Local Parameter:   id =  s_1417_or_1812, name = s_1417_or_1812
	reaction_r_1812_s_1417_or_1812=0.549;
	% Local Parameter:   id =  zero_flux, name = zero_flux
	reaction_r_1812_zero_flux=0.0;

	reaction_r_1812=compartment_intracellular*function_283(reaction_r_1812_V_o, reaction_r_1812_a_s_0001r_1812, reaction_r_1812_a_s_0416r_1812, reaction_r_1812_a_s_0434r_1812, reaction_r_1812_a_s_0446r_1812, reaction_r_1812_a_s_0511r_1812, reaction_r_1812_a_s_0564r_1812, reaction_r_1812_a_s_0569r_1812, reaction_r_1812_a_s_0593r_1812, reaction_r_1812_a_s_0619r_1812, reaction_r_1812_a_s_0740r_1812, reaction_r_1812_a_s_0743r_1812, reaction_r_1812_a_s_0752r_1812, reaction_r_1812_a_s_0863r_1812, reaction_r_1812_a_s_0873r_1812, reaction_r_1812_a_s_0877r_1812, reaction_r_1812_a_s_0881r_1812, reaction_r_1812_a_s_0889r_1812, reaction_r_1812_a_s_0899r_1812, reaction_r_1812_a_s_0907r_1812, reaction_r_1812_a_s_0911r_1812, reaction_r_1812_a_s_0920r_1812, reaction_r_1812_a_s_0925r_1812, reaction_r_1812_a_s_0929r_1812, reaction_r_1812_a_s_0933r_1812, reaction_r_1812_a_s_0936r_1812, reaction_r_1812_a_s_0939r_1812, reaction_r_1812_a_s_0943r_1812, reaction_r_1812_a_s_0949r_1812, reaction_r_1812_a_s_0952r_1812, reaction_r_1812_a_s_0955r_1812, reaction_r_1812_a_s_0960r_1812, reaction_r_1812_a_s_1000r_1812, reaction_r_1812_a_s_1011r_1812, reaction_r_1812_a_s_1283r_1812, reaction_r_1812_a_s_1347r_1812, reaction_r_1812_a_s_1417r_1812, compartment_intracellular, x(1), reaction_r_1812_s_0001_or_1812, x(94), reaction_r_1812_s_0416_or_1812, x(98), reaction_r_1812_s_0434_or_1812, x(101), reaction_r_1812_s_0446_or_1812, x(113), reaction_r_1812_s_0511_or_1812, x(129), reaction_r_1812_s_0564_or_1812, x(131), reaction_r_1812_s_0569_or_1812, x(135), reaction_r_1812_s_0593_or_1812, x(141), reaction_r_1812_s_0619_or_1812, x(162), reaction_r_1812_s_0740_or_1812, x(163), reaction_r_1812_s_0743_or_1812, x(165), reaction_r_1812_s_0752_or_1812, x(178), reaction_r_1812_s_0863_or_1812, x(180), reaction_r_1812_s_0873_or_1812, x(181), reaction_r_1812_s_0877_or_1812, x(182), reaction_r_1812_s_0881_or_1812, x(186), reaction_r_1812_s_0889_or_1812, x(188), reaction_r_1812_s_0899_or_1812, x(190), reaction_r_1812_s_0907_or_1812, x(191), reaction_r_1812_s_0911_or_1812, x(196), reaction_r_1812_s_0920_or_1812, x(197), reaction_r_1812_s_0925_or_1812, x(198), reaction_r_1812_s_0929_or_1812, x(199), reaction_r_1812_s_0933_or_1812, x(200), reaction_r_1812_s_0936_or_1812, x(201), reaction_r_1812_s_0939_or_1812, x(203), reaction_r_1812_s_0943_or_1812, x(204), reaction_r_1812_s_0949_or_1812, x(205), reaction_r_1812_s_0952_or_1812, x(206), reaction_r_1812_s_0955_or_1812, x(207), reaction_r_1812_s_0960_or_1812, const_species_s_1000, reaction_r_1812_s_1000_or_1812, x(213), reaction_r_1812_s_1011_or_1812, x(253), reaction_r_1812_s_1283_or_1812, x(265), reaction_r_1812_s_1347_or_1812, x(271), reaction_r_1812_s_1417_or_1812, reaction_r_1812_zero_flux);

% Reaction: id = r_1814, name = growth	% Local Parameter:   id =  V_o, name = V_o
	reaction_r_1814_V_o=0.0555;
	% Local Parameter:   id =  a_s_0463r_1814, name = a_s_0463r_1814
	reaction_r_1814_a_s_0463r_1814=1.0;
	% Local Parameter:   id =  s_0463_or_1814, name = s_0463_or_1814
	reaction_r_1814_s_0463_or_1814=0.549;
	% Local Parameter:   id =  zero_flux, name = zero_flux
	reaction_r_1814_zero_flux=0.0;

	reaction_r_1814=function_284(reaction_r_1814_V_o, reaction_r_1814_a_s_0463r_1814, x(104), reaction_r_1814_s_0463_or_1814, reaction_r_1814_zero_flux);

% Reaction: id = r_1816, name = lipid production	% Local Parameter:   id =  V_o, name = V_o
	reaction_r_1816_V_o=0.0555;
	% Local Parameter:   id =  a_s_0090r_1816, name = a_s_0090r_1816
	reaction_r_1816_a_s_0090r_1816=0.001531;
	% Local Parameter:   id =  a_s_0124r_1816, name = a_s_0124r_1816
	reaction_r_1816_a_s_0124r_1816=5.6E-5;
	% Local Parameter:   id =  a_s_0627r_1816, name = a_s_0627r_1816
	reaction_r_1816_a_s_0627r_1816=9.6E-5;
	% Local Parameter:   id =  a_s_0632r_1816, name = a_s_0632r_1816
	reaction_r_1816_a_s_0632r_1816=1.25E-4;
	% Local Parameter:   id =  a_s_0635r_1816, name = a_s_0635r_1816
	reaction_r_1816_a_s_0635r_1816=0.005603;
	% Local Parameter:   id =  a_s_0641r_1816, name = a_s_0641r_1816
	reaction_r_1816_a_s_0641r_1816=8.12E-4;
	% Local Parameter:   id =  a_s_0663r_1816, name = a_s_0663r_1816
	reaction_r_1816_a_s_0663r_1816=2.06E-4;
	% Local Parameter:   id =  a_s_0669r_1816, name = a_s_0669r_1816
	reaction_r_1816_a_s_0669r_1816=1.14E-4;
	% Local Parameter:   id =  a_s_0824r_1816, name = a_s_0824r_1816
	reaction_r_1816_a_s_0824r_1816=4.17E-4;
	% Local Parameter:   id =  a_s_0963r_1816, name = a_s_0963r_1816
	reaction_r_1816_a_s_0963r_1816=3.2E-5;
	% Local Parameter:   id =  a_s_1219r_1816, name = a_s_1219r_1816
	reaction_r_1816_a_s_1219r_1816=3.73E-4;
	% Local Parameter:   id =  a_s_1228r_1816, name = a_s_1228r_1816
	reaction_r_1816_a_s_1228r_1816=0.002884;
	% Local Parameter:   id =  a_s_1233r_1816, name = a_s_1233r_1816
	reaction_r_1816_a_s_1233r_1816=6.97E-4;
	% Local Parameter:   id =  a_s_1399r_1816, name = a_s_1399r_1816
	reaction_r_1816_a_s_1399r_1816=7.81E-4;
	% Local Parameter:   id =  a_s_1447r_1816, name = a_s_1447r_1816
	reaction_r_1816_a_s_1447r_1816=1.5E-5;
	% Local Parameter:   id =  s_0090_or_1816, name = s_0090_or_1816
	reaction_r_1816_s_0090_or_1816=0.549;
	% Local Parameter:   id =  s_0124_or_1816, name = s_0124_or_1816
	reaction_r_1816_s_0124_or_1816=0.549;
	% Local Parameter:   id =  s_0627_or_1816, name = s_0627_or_1816
	reaction_r_1816_s_0627_or_1816=0.549;
	% Local Parameter:   id =  s_0632_or_1816, name = s_0632_or_1816
	reaction_r_1816_s_0632_or_1816=0.549;
	% Local Parameter:   id =  s_0635_or_1816, name = s_0635_or_1816
	reaction_r_1816_s_0635_or_1816=0.549;
	% Local Parameter:   id =  s_0641_or_1816, name = s_0641_or_1816
	reaction_r_1816_s_0641_or_1816=0.549;
	% Local Parameter:   id =  s_0663_or_1816, name = s_0663_or_1816
	reaction_r_1816_s_0663_or_1816=0.549;
	% Local Parameter:   id =  s_0669_or_1816, name = s_0669_or_1816
	reaction_r_1816_s_0669_or_1816=0.549;
	% Local Parameter:   id =  s_0824_or_1816, name = s_0824_or_1816
	reaction_r_1816_s_0824_or_1816=0.549;
	% Local Parameter:   id =  s_0963_or_1816, name = s_0963_or_1816
	reaction_r_1816_s_0963_or_1816=0.549;
	% Local Parameter:   id =  s_1219_or_1816, name = s_1219_or_1816
	reaction_r_1816_s_1219_or_1816=0.549;
	% Local Parameter:   id =  s_1228_or_1816, name = s_1228_or_1816
	reaction_r_1816_s_1228_or_1816=0.549;
	% Local Parameter:   id =  s_1233_or_1816, name = s_1233_or_1816
	reaction_r_1816_s_1233_or_1816=0.549;
	% Local Parameter:   id =  s_1399_or_1816, name = s_1399_or_1816
	reaction_r_1816_s_1399_or_1816=0.549;
	% Local Parameter:   id =  s_1447_or_1816, name = s_1447_or_1816
	reaction_r_1816_s_1447_or_1816=0.549;
	% Local Parameter:   id =  zero_flux, name = zero_flux
	reaction_r_1816_zero_flux=0.0;

	reaction_r_1816=compartment_intracellular*function_285(reaction_r_1816_V_o, reaction_r_1816_a_s_0090r_1816, reaction_r_1816_a_s_0124r_1816, reaction_r_1816_a_s_0627r_1816, reaction_r_1816_a_s_0632r_1816, reaction_r_1816_a_s_0635r_1816, reaction_r_1816_a_s_0641r_1816, reaction_r_1816_a_s_0663r_1816, reaction_r_1816_a_s_0669r_1816, reaction_r_1816_a_s_0824r_1816, reaction_r_1816_a_s_0963r_1816, reaction_r_1816_a_s_1219r_1816, reaction_r_1816_a_s_1228r_1816, reaction_r_1816_a_s_1233r_1816, reaction_r_1816_a_s_1399r_1816, reaction_r_1816_a_s_1447r_1816, compartment_intracellular, x(25), reaction_r_1816_s_0090_or_1816, x(29), reaction_r_1816_s_0124_or_1816, x(144), reaction_r_1816_s_0627_or_1816, x(145), reaction_r_1816_s_0632_or_1816, x(146), reaction_r_1816_s_0635_or_1816, x(147), reaction_r_1816_s_0641_or_1816, x(151), reaction_r_1816_s_0663_or_1816, x(152), reaction_r_1816_s_0669_or_1816, x(172), reaction_r_1816_s_0824_or_1816, x(208), reaction_r_1816_s_0963_or_1816, x(244), reaction_r_1816_s_1219_or_1816, x(247), reaction_r_1816_s_1228_or_1816, x(248), reaction_r_1816_s_1233_or_1816, const_species_s_1399, reaction_r_1816_s_1399_or_1816, x(273), reaction_r_1816_s_1447_or_1816, reaction_r_1816_zero_flux);

% Species:   id = s_1000, name = lipid [intracellular], constant	const_species_s_1000=0.54900000371;

% Species:   id = s_1207, name = phosphate [intracellular], constant	const_species_s_1207=0.548999999216;

% Species:   id = s_1399, name = triglyceride [intracellular], constant	const_species_s_1399=0.548999999216;

% Species:   id = s_0763_b, name = H+ [intracellular], constant	const_species_s_0763_b=0.548999999216;

% Species:   id = s_1434_b, name = water [intracellular], constant	const_species_s_1434_b=0.548999999216;

% Species:   id = s_0431_b, name = ammonium [extracellular], constant	const_species_s_0431_b=37.9999998108;

% Species:   id = s_0464_b, name = biomass [extracellular], constant	const_species_s_0464_b=24.499999887;

% Species:   id = s_0472_b, name = carbon dioxide [extracellular], constant	const_species_s_0472_b=1.00000027208E-5;

% Species:   id = s_0651_b, name = ethanol [extracellular], constant	const_species_s_0651_b=24.49999989;

% Species:   id = s_0766_b, name = H+ [extracellular], constant	const_species_s_0766_b=0.1;

% Species:   id = s_1162_b, name = oxygen [extracellular], constant	const_species_s_1162_b=24.49999989;

% Species:   id = s_1209_b, name = phosphate [extracellular], constant	const_species_s_1209_b=24.49999974;

% Species:   id = s_1339_b, name = succinate(2-) [extracellular], constant	const_species_s_1339_b=0.9999999981;

% Species:   id = s_1348_b, name = sulphate [extracellular], constant	const_species_s_1348_b=42.19999979;

%Event: id=event_1
	event_event_1=time > 1000;

	if(event_event_1) 
		x(281)=7.77;
	end

	xdot=zeros(281,1);
	
% Species:   id = s_0001, name = (1->3)-beta-D-glucan [intracellular], affected by kineticLaw
	xdot(1) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0005) + (-1.1358 * reaction_r_1812));
	
% Species:   id = s_0007, name = (2R,3R)-2,3-dihydroxy-3-methylpentanoate [intracellular], affected by kineticLaw
	xdot(2) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0385) + ( 1.0 * reaction_r_0640));
	
% Species:   id = s_0008, name = (2R,3S)-3-isopropylmalate(2-) [intracellular], affected by kineticLaw
	xdot(3) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0063) + (-1.0 * reaction_r_0064));
	
% Species:   id = s_0009, name = (2S)-2-[5-amino-1-(5-phospho-beta-D-ribosyl)imidazole-4-carboxamido]succinic acid [intracellular], affected by kineticLaw
	xdot(4) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0169) + ( 1.0 * reaction_r_0886));
	
% Species:   id = s_0010, name = (2S)-2-isopropyl-3-oxosuccinate(2-) [intracellular], affected by kineticLaw
	xdot(5) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0031) + ( 1.0 * reaction_r_0064));
	
% Species:   id = s_0015, name = (6R)-5,10-methenyltetrahydrofolic acid [intracellular], affected by kineticLaw
	xdot(6) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0699) + ( 1.0 * reaction_r_0707));
	
% Species:   id = s_0017, name = (N(omega)-L-arginino)succinic acid [intracellular], affected by kineticLaw
	xdot(7) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0225) + ( 1.0 * reaction_r_0226));
	
% Species:   id = s_0018, name = (R)-2,3-dihydroxy-3-methylbutanoate [intracellular], affected by kineticLaw
	xdot(8) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0111) + (-1.0 * reaction_r_0384));
	
% Species:   id = s_0021, name = (R)-5-diphosphomevalonic acid [intracellular], affected by kineticLaw
	xdot(9) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0715) + ( 1.0 * reaction_r_0877));
	
% Species:   id = s_0022, name = (R)-5-phosphomevalonic acid [intracellular], affected by kineticLaw
	xdot(10) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0712) + (-1.0 * reaction_r_0877));
	
% Species:   id = s_0031, name = (R)-mevalonate [intracellular], affected by kineticLaw
	xdot(11) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0598) + (-1.0 * reaction_r_0712));
	
% Species:   id = s_0040, name = (S)-2,3-epoxysqualene [intracellular], affected by kineticLaw
	xdot(12) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0673) + ( 1.0 * reaction_r_0991));
	
% Species:   id = s_0042, name = (S)-2-acetyl-2-hydroxybutanoate [intracellular], affected by kineticLaw
	xdot(13) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0016) + (-1.0 * reaction_r_0640));
	
% Species:   id = s_0046, name = (S)-3-hydroxyhexacosanoyl-CoA [intracellular], affected by kineticLaw
	xdot(14) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0057) + (-1.0 * reaction_r_0719));
	
% Species:   id = s_0052, name = (S)-3-hydroxypalmitoyl-CoA [intracellular], affected by kineticLaw
	xdot(15) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0058) + (-1.0 * reaction_r_0720));
	
% Species:   id = s_0055, name = (S)-3-hydroxytetradecanoyl-CoA [intracellular], affected by kineticLaw
	xdot(16) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0060) + (-1.0 * reaction_r_0722));
	
% Species:   id = s_0058, name = (S)-3-methyl-2-oxopentanoate [intracellular], affected by kineticLaw
	xdot(17) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0385) + (-1.0 * reaction_r_0634));
	
% Species:   id = s_0064, name = (S)-dihydroorotate [intracellular], affected by kineticLaw
	xdot(18) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0374) + ( 1.0 * reaction_r_0381));
	
% Species:   id = s_0069, name = (S)-malate(2-) [intracellular], affected by kineticLaw
	xdot(19) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0485) + ( 1.0 * reaction_r_0688));
	
% Species:   id = s_0078, name = 1-(2-carboxyphenylamino)-1-deoxy-D-ribulose 5-phosphate [intracellular], affected by kineticLaw
	xdot(20) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0608) + ( 1.0 * reaction_r_0887));
	
% Species:   id = s_0079, name = 1-(5-phospho-D-ribosyl)-5-[(5-phospho-D-ribosylamino)methylideneamino]imidazole-4-carboxamide [intracellular], affected by kineticLaw
	xdot(21) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0008) + ( 1.0 * reaction_r_0881));
	
% Species:   id = s_0080, name = 1-(5-phosphoribosyl)-5'-AMP [intracellular], affected by kineticLaw
	xdot(22) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0881) + ( 1.0 * reaction_r_0882));
	
% Species:   id = s_0083, name = 1-acyl-sn-glycerol 3-phosphate [intracellular], affected by kineticLaw
	xdot(23) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0009) + ( 1.0 * reaction_r_0534));
	
% Species:   id = s_0088, name = 1-C-(indol-3-yl)glycerol 3-phosphate [intracellular], affected by kineticLaw
	xdot(24) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0608) + (-1.0 * reaction_r_1042));
	
% Species:   id = s_0090, name = 1-phosphatidyl-1D-myo-inositol [intracellular], affected by kineticLaw
	xdot(25) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0847) + (-0.001531 * reaction_r_1816));
	
% Species:   id = s_0118, name = 1-pyrroline-3-hydroxy-5-carboxylic acid [intracellular], affected by kineticLaw
	xdot(26) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0660) + (-1.0 * reaction_r_0661));
	
% Species:   id = s_0120, name = 1-pyrroline-5-carboxylate [intracellular], affected by kineticLaw
	xdot(27) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0657) + (-1.0 * reaction_r_0936));
	
% Species:   id = s_0122, name = 10-formyltetrahydrofolic acid [intracellular], affected by kineticLaw
	xdot(28) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0479) + ( 1.0 * reaction_r_0699) + (-1.0 * reaction_r_0885) + (-1.0 * reaction_r_0889));
	
% Species:   id = s_0124, name = 14-demethyllanosterol [intracellular], affected by kineticLaw
	xdot(29) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0258) + (-1.0 * reaction_r_0268) + (-5.6E-5 * reaction_r_1816));
	
% Species:   id = s_0128, name = 1D-myo-inositol 1-phosphate [intracellular], affected by kineticLaw
	xdot(30) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0618) + (-1.0 * reaction_r_0621) + (-1.0 * reaction_r_0725) + ( 1.0 * reaction_r_0726));
	
% Species:   id = s_0145, name = 2,5-diamino-4-hydroxy-6-(5-phosphoribosylamino)pyrimidine [intracellular], affected by kineticLaw
	xdot(31) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0015) + ( 1.0 * reaction_r_0562));
	
% Species:   id = s_0146, name = 2,5-diamino-6-(5-phosphono)ribitylamino-4(3H)-pyrimidinone [intracellular], affected by kineticLaw
	xdot(32) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0014) + ( 1.0 * reaction_r_0015));
	
% Species:   id = s_0149, name = 2-acetamido-5-oxopentanoate [intracellular], affected by kineticLaw
	xdot(33) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0133) + ( 1.0 * reaction_r_0728));
	
% Species:   id = s_0150, name = 2-acetyllactic acid [intracellular], affected by kineticLaw
	xdot(34) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0111) + ( 1.0 * reaction_r_0112));
	
% Species:   id = s_0158, name = 2-formamido-N(1)-(5-phospho-D-ribosyl)acetamidine [intracellular], affected by kineticLaw
	xdot(35) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0884) + ( 1.0 * reaction_r_0888));
	
% Species:   id = s_0163, name = 2-hydroxy-3-oxobutyl phosphate [intracellular], affected by kineticLaw
	xdot(36) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0040) + (-1.0 * reaction_r_0948));
	
% Species:   id = s_0167, name = 2-isopropylmalate(2-) [intracellular], affected by kineticLaw
	xdot(37) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0025) + ( 1.0 * reaction_r_0026));
	
% Species:   id = s_0170, name = 2-isopropylmaleic acid [intracellular], affected by kineticLaw
	xdot(38) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0025) + (-1.0 * reaction_r_0063));
	
% Species:   id = s_0180, name = 2-oxaloglutaric acid [intracellular], affected by kineticLaw
	xdot(39) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0585) + (-1.0 * reaction_r_0765));
	
% Species:   id = s_0181, name = 2-oxoadipic acid [intracellular], affected by kineticLaw
	xdot(40) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0018) + ( 1.0 * reaction_r_0765));
	
% Species:   id = s_0183, name = 2-oxobutanoate [intracellular], affected by kineticLaw
	xdot(41) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0016) + ( 1.0 * reaction_r_0339) + ( 1.0 * reaction_r_0667));
	
% Species:   id = s_0185, name = 2-oxoglutarate [intracellular], affected by kineticLaw
	xdot(42) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0018) + ( 1.0 * reaction_r_0133) + ( 1.0 * reaction_r_0235) + (-1.0 * reaction_r_0509) + (-1.0 * reaction_r_0510) + ( 1.0 * reaction_r_0577) + (-1.0 * reaction_r_0582) + ( 1.0 * reaction_r_0630) + ( 1.0 * reaction_r_0634) + ( 1.0 * reaction_r_0647) + ( 1.0 * reaction_r_0674) + ( 1.0 * reaction_r_0825) + ( 1.0 * reaction_r_0969) + ( 1.0 * reaction_r_1050) + ( 1.0 * reaction_r_1073));
	
% Species:   id = s_0193, name = 2-phospho-D-glyceric acid [intracellular], affected by kineticLaw
	xdot(43) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0398) + ( 1.0 * reaction_r_0866));
	
% Species:   id = s_0195, name = 2-trans,6-trans-farnesyl diphosphate [intracellular], affected by kineticLaw
	xdot(44) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0496) + (-2.0 * reaction_r_0993));
	
% Species:   id = s_0206, name = 3'-phospho-5'-adenylyl sulfate [intracellular], affected by kineticLaw
	xdot(45) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0172) + (-1.0 * reaction_r_0856));
	
% Species:   id = s_0209, name = 3-(4-hydroxyphenyl)pyruvate [intracellular], affected by kineticLaw
	xdot(46) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0913) + (-1.0 * reaction_r_1050));
	
% Species:   id = s_0212, name = 3-(imidazol-4-yl)-2-oxopropyl dihydrogen phosphate [intracellular], affected by kineticLaw
	xdot(47) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0577) + ( 1.0 * reaction_r_0605));
	
% Species:   id = s_0215, name = 3-dehydro-4-methylzymosterol [intracellular], affected by kineticLaw
	xdot(48) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0262) + (-1.0 * reaction_r_0263));
	
% Species:   id = s_0216, name = 3-dehydroquinate [intracellular], affected by kineticLaw
	xdot(49) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0042) + ( 1.0 * reaction_r_0043));
	
% Species:   id = s_0217, name = 3-dehydroshikimate [intracellular], affected by kineticLaw
	xdot(50) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0042) + (-1.0 * reaction_r_0976));
	
% Species:   id = s_0218, name = 3-dehydrosphinganine [intracellular], affected by kineticLaw
	xdot(51) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0044) + ( 1.0 * reaction_r_0972));
	
% Species:   id = s_0225, name = 3-hydroxy-3-methylglutaryl-CoA [intracellular], affected by kineticLaw
	xdot(52) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0598) + ( 1.0 * reaction_r_0599));
	
% Species:   id = s_0234, name = 3-hydroxyoctadecanoyl-CoA [intracellular], affected by kineticLaw
	xdot(53) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0059) + (-1.0 * reaction_r_0721));
	
% Species:   id = s_0238, name = 3-methyl-2-oxobutanoate [intracellular], affected by kineticLaw
	xdot(54) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0026) + ( 1.0 * reaction_r_0384) + (-1.0 * reaction_r_1073));
	
% Species:   id = s_0247, name = 3-oxohexacosanoyl-CoA [intracellular], affected by kineticLaw
	xdot(55) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0057) + ( 1.0 * reaction_r_0719));
	
% Species:   id = s_0254, name = 3-oxooctadecanoyl-CoA [intracellular], affected by kineticLaw
	xdot(56) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0059) + ( 1.0 * reaction_r_0721));
	
% Species:   id = s_0257, name = 3-oxopalmitoyl-CoA [intracellular], affected by kineticLaw
	xdot(57) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0058) + ( 1.0 * reaction_r_0720));
	
% Species:   id = s_0261, name = 3-oxotetradecanoyl-CoA [intracellular], affected by kineticLaw
	xdot(58) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0060) + ( 1.0 * reaction_r_0722));
	
% Species:   id = s_0264, name = 3-phospho-D-glyceric acid [intracellular], affected by kineticLaw
	xdot(59) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0865) + (-1.0 * reaction_r_0866));
	
% Species:   id = s_0265, name = 3-phospho-D-glyceroyl dihydrogen phosphate [intracellular], affected by kineticLaw
	xdot(60) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0525) + (-1.0 * reaction_r_0865));
	
% Species:   id = s_0267, name = 3-phosphoshikimic acid [intracellular], affected by kineticLaw
	xdot(61) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0068) + ( 1.0 * reaction_r_0977));
	
% Species:   id = s_0268, name = 4,4-dimethyl-5alpha-cholesta-8,14,24-trien-3beta-ol [intracellular], affected by kineticLaw
	xdot(62) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0258) + ( 1.0 * reaction_r_0347));
	
% Species:   id = s_0297, name = 4-methyl-2-oxopentanoate [intracellular], affected by kineticLaw
	xdot(63) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0031) + (-1.0 * reaction_r_0674));
	
% Species:   id = s_0301, name = 4-phospho-L-aspartate [intracellular], affected by kineticLaw
	xdot(64) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0233) + (-1.0 * reaction_r_0238));
	
% Species:   id = s_0302, name = 4alpha-methylzymosterol [intracellular], affected by kineticLaw
	xdot(65) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0263) + (-1.0 * reaction_r_0265));
	
% Species:   id = s_0303, name = 4beta-methylzymosterol-4alpha-carboxylic acid [intracellular], affected by kineticLaw
	xdot(66) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0262) + ( 1.0 * reaction_r_0268));
	
% Species:   id = s_0304, name = 5'-adenylyl sulfate [intracellular], affected by kineticLaw
	xdot(67) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0172) + ( 1.0 * reaction_r_1007));
	
% Species:   id = s_0306, name = 5'-xanthylic acid [intracellular], affected by kineticLaw
	xdot(68) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0551) + ( 1.0 * reaction_r_0607));
	
% Species:   id = s_0307, name = 5,10-methylenetetrahydrofolate(2-) [intracellular], affected by kineticLaw
	xdot(69) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0093) + ( 1.0 * reaction_r_0538) + (-1.0 * reaction_r_0539) + (-1.0 * reaction_r_0707) + (-1.0 * reaction_r_1032));
	
% Species:   id = s_0309, name = 5,6,7,8-tetrahydrofolic acid [intracellular], affected by kineticLaw
	xdot(70) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0375) + (-1.0 * reaction_r_0479) + (-1.0 * reaction_r_0538) + ( 1.0 * reaction_r_0539) + ( 1.0 * reaction_r_0702) + ( 1.0 * reaction_r_0885) + ( 1.0 * reaction_r_0889));
	
% Species:   id = s_0315, name = 5-[(5-phospho-1-deoxy-D-ribulos-1-ylamino)methylideneamino]-1-(5-phospho-D-ribosyl)imidazole-4-carboxamide [intracellular], affected by kineticLaw
	xdot(71) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0008) + (-1.0 * reaction_r_0604));
	
% Species:   id = s_0316, name = 5-amino-1-(5-phospho-D-ribosyl)imidazole [intracellular], affected by kineticLaw
	xdot(72) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0883) + ( 1.0 * reaction_r_0884));
	
% Species:   id = s_0317, name = 5-amino-1-(5-phospho-D-ribosyl)imidazole-4-carboxamide [intracellular], affected by kineticLaw
	xdot(73) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0169) + ( 1.0 * reaction_r_0604) + (-1.0 * reaction_r_0885));
	
% Species:   id = s_0318, name = 5-amino-1-(5-phospho-D-ribosyl)imidazole-4-carboxylic acid [intracellular], affected by kineticLaw
	xdot(74) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0883) + (-1.0 * reaction_r_0886));
	
% Species:   id = s_0319, name = 5-amino-6-(5-phosphoribitylamino)uracil [intracellular], affected by kineticLaw
	xdot(75) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0014) + (-1.0 * reaction_r_0934));
	
% Species:   id = s_0320, name = 5-amino-6-(D-ribitylamino)uracil [intracellular], affected by kineticLaw
	xdot(76) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0934) + (-1.0 * reaction_r_0948) + ( 1.0 * reaction_r_0949));
	
% Species:   id = s_0325, name = 5-formamido-1-(5-phospho-D-ribosyl)imidazole-4-carboxamide [intracellular], affected by kineticLaw
	xdot(77) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0606) + ( 1.0 * reaction_r_0885));
	
% Species:   id = s_0328, name = 5-methyltetrahydrofolate(2-) [intracellular], affected by kineticLaw
	xdot(78) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0093) + (-1.0 * reaction_r_0702));
	
% Species:   id = s_0330, name = 5-O-(1-carboxyvinyl)-3-phosphoshikimic acid [intracellular], affected by kineticLaw
	xdot(79) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0068) + (-1.0 * reaction_r_0306));
	
% Species:   id = s_0331, name = 5-O-phosphono-alpha-D-ribofuranosyl diphosphate [intracellular], affected by kineticLaw
	xdot(80) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0220) + (-1.0 * reaction_r_0245) + (-1.0 * reaction_r_0514) + (-1.0 * reaction_r_0793) + ( 1.0 * reaction_r_0891));
	
% Species:   id = s_0333, name = 5-phospho-beta-D-ribosylamine [intracellular], affected by kineticLaw
	xdot(81) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0514) + (-1.0 * reaction_r_0890));
	
% Species:   id = s_0334, name = 5-phosphoribosyl-ATP [intracellular], affected by kineticLaw
	xdot(82) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0245) + (-1.0 * reaction_r_0882));
	
% Species:   id = s_0335, name = 6,7-dimethyl-8-(1-D-ribityl)lumazine [intracellular], affected by kineticLaw
	xdot(83) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0948) + (-2.0 * reaction_r_0949));
	
% Species:   id = s_0356, name = 7-phospho-2-dehydro-3-deoxy-D-arabino-heptonic acid [intracellular], affected by kineticLaw
	xdot(84) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0021) + (-1.0 * reaction_r_0043));
	
% Species:   id = s_0366, name = acetaldehyde [intracellular], affected by kineticLaw
	xdot(85) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0183) + (-1.0 * reaction_r_0191) + ( 1.0 * reaction_r_0938) + ( 1.0 * reaction_r_1026));
	
% Species:   id = s_0369, name = acetate [intracellular], affected by kineticLaw
	xdot(86) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0125) + ( 1.0 * reaction_r_0127) + ( 1.0 * reaction_r_0191) + ( 1.0 * reaction_r_0340) + ( 1.0 * reaction_r_0783));
	
% Species:   id = s_0374, name = acetoacetyl-CoA [intracellular], affected by kineticLaw
	xdot(87) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0118) + (-1.0 * reaction_r_0599));
	
% Species:   id = s_0380, name = acetyl-CoA [intracellular], affected by kineticLaw
	xdot(88) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0026) + (-2.0 * reaction_r_0118) + (-1.0 * reaction_r_0123) + ( 1.0 * reaction_r_0125) + (-1.0 * reaction_r_0127) + (-1.0 * reaction_r_0328) + (-1.0 * reaction_r_0430) + (-1.0 * reaction_r_0582) + (-1.0 * reaction_r_0589) + (-1.0 * reaction_r_0599) + ( 1.0 * reaction_r_0940));
	
% Species:   id = s_0386, name = acyl-CoA [intracellular], affected by kineticLaw
	xdot(89) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0009) + (-1.0 * reaction_r_0370) + (-1.0 * reaction_r_0534) + ( 1.0 * reaction_r_1672));
	
% Species:   id = s_0393, name = adenosine [intracellular], affected by kineticLaw
	xdot(90) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0157) + ( 1.0 * reaction_r_0159));
	
% Species:   id = s_0397, name = adenosine 3',5'-bismonophosphate [intracellular], affected by kineticLaw
	xdot(91) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0034) + ( 1.0 * reaction_r_0856));
	
% Species:   id = s_0400, name = ADP [intracellular], affected by kineticLaw
	xdot(92) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0123) + ( 1.0 * reaction_r_0130) + ( 1.0 * reaction_r_0157) + (-2.0 * reaction_r_0163) + (-1.0 * reaction_r_0165) + ( 1.0 * reaction_r_0172) + ( 1.0 * reaction_r_0233) + (-1.0 * reaction_r_0246) + ( 1.0 * reaction_r_0249) + ( 2.0 * reaction_r_0277) + ( 1.0 * reaction_r_0336) + (-1.0 * reaction_r_0345) + (-1.0 * reaction_r_0360) + (-1.0 * reaction_r_0362) + ( 1.0 * reaction_r_0386) + ( 1.0 * reaction_r_0479) + ( 1.0 * reaction_r_0499) + ( 1.0 * reaction_r_0506) + ( 1.0 * reaction_r_0515) + ( 1.0 * reaction_r_0567) + ( 1.0 * reaction_r_0573) + ( 1.0 * reaction_r_0588) + ( 1.0 * reaction_r_0715) + (-1.0 * reaction_r_0771) + ( 1.0 * reaction_r_0779) + ( 1.0 * reaction_r_0859) + (-1.0 * reaction_r_0865) + ( 1.0 * reaction_r_0877) + ( 1.0 * reaction_r_0884) + ( 1.0 * reaction_r_0886) + ( 1.0 * reaction_r_0888) + ( 1.0 * reaction_r_0890) + ( 1.0 * reaction_r_0937) + (-1.0 * reaction_r_0941) + (-1.0 * reaction_r_0951) + ( 1.0 * reaction_r_0977) + ( 1.0 * reaction_r_1003) + (-1.0 * reaction_r_1007) + ( 1.0 * reaction_r_1059) + (-1.0 * reaction_r_1066) + ( 59.276 * reaction_r_1812));
	
% Species:   id = s_0410, name = aldehydo-D-glucose 6-phosphate [intracellular], affected by kineticLaw
	xdot(93) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0213) + (-1.0 * reaction_r_0505) + ( 1.0 * reaction_r_0573) + (-1.0 * reaction_r_0726) + (-1.0 * reaction_r_0861));
	
% Species:   id = s_0416, name = alpha,alpha-trehalose [intracellular], affected by kineticLaw
	xdot(94) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_1038) + (-0.023371 * reaction_r_1812));
	
% Species:   id = s_0419, name = alpha,alpha-trehalose 6-phosphate [intracellular], affected by kineticLaw
	xdot(95) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0213) + (-1.0 * reaction_r_1038));
	
% Species:   id = s_0427, name = alpha-D-ribose 5-phosphate [intracellular], affected by kineticLaw
	xdot(96) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0891) + ( 1.0 * reaction_r_0963) + ( 1.0 * reaction_r_1036));
	
% Species:   id = s_0430, name = ammonium [intracellular], affected by kineticLaw
	xdot(97) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0014) + (-1.0 * reaction_r_0336) + ( 1.0 * reaction_r_0339) + (-1.0 * reaction_r_0357) + (-1.0 * reaction_r_0509) + (-1.0 * reaction_r_0515) + ( 1.0 * reaction_r_0538) + ( 1.0 * reaction_r_0667) + ( 1.0 * reaction_r_1157));
	
% Species:   id = s_0434, name = AMP [intracellular], affected by kineticLaw
	xdot(98) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0034) + (-1.0 * reaction_r_0127) + ( 1.0 * reaction_r_0157) + ( 1.0 * reaction_r_0163) + ( 1.0 * reaction_r_0165) + ( 1.0 * reaction_r_0171) + ( 1.0 * reaction_r_0226) + ( 1.0 * reaction_r_0229) + ( 1.0 * reaction_r_0437) + (-1.0 * reaction_r_0439) + (-1.0 * reaction_r_0442) + ( 1.0 * reaction_r_0551) + ( 1.0 * reaction_r_0650) + ( 1.0 * reaction_r_0891) + (-0.051 * reaction_r_1812));
	
% Species:   id = s_0438, name = amylose [intracellular], affected by kineticLaw
	xdot(99) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0006) + ( 1.0 * reaction_r_0547));
	
% Species:   id = s_0439, name = anthranilate [intracellular], affected by kineticLaw
	xdot(100) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0220) + ( 1.0 * reaction_r_0221));
	
% Species:   id = s_0446, name = ATP [intracellular], affected by kineticLaw
	xdot(101) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0123) + ( 1.0 * reaction_r_0127) + (-1.0 * reaction_r_0130) + (-1.0 * reaction_r_0157) + ( 1.0 * reaction_r_0163) + (-1.0 * reaction_r_0172) + (-1.0 * reaction_r_0226) + (-1.0 * reaction_r_0229) + (-1.0 * reaction_r_0233) + (-1.0 * reaction_r_0245) + ( 1.0 * reaction_r_0246) + (-1.0 * reaction_r_0249) + (-2.0 * reaction_r_0277) + (-1.0 * reaction_r_0336) + ( 1.0 * reaction_r_0345) + ( 1.0 * reaction_r_0360) + ( 1.0 * reaction_r_0362) + (-1.0 * reaction_r_0386) + (-1.0 * reaction_r_0437) + ( 1.0 * reaction_r_0439) + ( 1.0 * reaction_r_0442) + (-1.0 * reaction_r_0479) + (-1.0 * reaction_r_0499) + (-1.0 * reaction_r_0506) + (-1.0 * reaction_r_0515) + (-1.0 * reaction_r_0551) + (-1.0 * reaction_r_0567) + (-1.0 * reaction_r_0573) + (-1.0 * reaction_r_0588) + (-1.0 * reaction_r_0650) + (-1.0 * reaction_r_0701) + (-1.0 * reaction_r_0715) + ( 1.0 * reaction_r_0771) + (-1.0 * reaction_r_0779) + (-1.0 * reaction_r_0859) + ( 1.0 * reaction_r_0865) + (-1.0 * reaction_r_0877) + (-1.0 * reaction_r_0884) + (-1.0 * reaction_r_0886) + (-1.0 * reaction_r_0888) + (-1.0 * reaction_r_0890) + (-1.0 * reaction_r_0891) + (-1.0 * reaction_r_0937) + ( 1.0 * reaction_r_0941) + (-1.0 * reaction_r_0959) + (-1.0 * reaction_r_0977) + (-1.0 * reaction_r_1003) + (-1.0 * reaction_r_1059) + ( 1.0 * reaction_r_1066) + (-59.276 * reaction_r_1812));
	
% Species:   id = s_0455, name = beta-D-glucose 6-phosphate [intracellular], affected by kineticLaw
	xdot(102) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0499) + (-1.0 * reaction_r_0504));
	
% Species:   id = s_0458, name = bicarbonate [intracellular], affected by kineticLaw
	xdot(103) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0123) + ( 1.0 * reaction_r_0251) + (-1.0 * reaction_r_0277) + (-1.0 * reaction_r_0937));
	
% Species:   id = s_0463, name = biomass [intracellular], affected by kineticLaw
	xdot(104) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_1812) + (-1.0 * reaction_r_1814));
	
% Species:   id = s_0468, name = but-1-ene-1,2,4-tricarboxylic acid [intracellular], affected by kineticLaw
	xdot(105) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0029) + (-1.0 * reaction_r_0581));
	
% Species:   id = s_0469, name = carbamoyl phosphate [intracellular], affected by kineticLaw
	xdot(106) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0232) + ( 1.0 * reaction_r_0277) + (-1.0 * reaction_r_0789));
	
% Species:   id = s_0470, name = carbon dioxide [intracellular], affected by kineticLaw
	xdot(107) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0016) + ( 1.0 * reaction_r_0031) + ( 1.0 * reaction_r_0112) + (-1.0 * reaction_r_0251) + ( 1.0 * reaction_r_0261) + ( 1.0 * reaction_r_0262) + ( 1.0 * reaction_r_0417) + ( 1.0 * reaction_r_0418) + ( 1.0 * reaction_r_0419) + ( 1.0 * reaction_r_0421) + ( 1.0 * reaction_r_0423) + ( 3.0 * reaction_r_0425) + ( 1.0 * reaction_r_0429) + ( 3.0 * reaction_r_0430) + ( 1.0 * reaction_r_0464) + ( 1.0 * reaction_r_0465) + ( 1.0 * reaction_r_0466) + ( 1.0 * reaction_r_0467) + ( 1.0 * reaction_r_0538) + ( 1.0 * reaction_r_0608) + ( 1.0 * reaction_r_0630) + ( 1.0 * reaction_r_0715) + ( 1.0 * reaction_r_0765) + ( 1.0 * reaction_r_0794) + ( 1.0 * reaction_r_0850) + (-1.0 * reaction_r_0883) + ( 1.0 * reaction_r_0911) + ( 1.0 * reaction_r_0913) + ( 1.0 * reaction_r_0938) + ( 1.0 * reaction_r_0940) + ( 1.0 * reaction_r_0972) + (-1.0 * reaction_r_1194));
	
% Species:   id = s_0481, name = CDP [intracellular], affected by kineticLaw
	xdot(108) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0345) + ( 1.0 * reaction_r_0712) + ( 1.0 * reaction_r_0771));
	
% Species:   id = s_0485, name = CDP-diacylglycerol [intracellular], affected by kineticLaw
	xdot(109) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0284) + (-1.0 * reaction_r_0847) + (-1.0 * reaction_r_0853));
	
% Species:   id = s_0500, name = chorismate(2-) [intracellular], affected by kineticLaw
	xdot(110) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0221) + (-1.0 * reaction_r_0304) + ( 1.0 * reaction_r_0306));
	
% Species:   id = s_0501, name = cis-aconitate(3-) [intracellular], affected by kineticLaw
	xdot(111) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0307) + ( 1.0 * reaction_r_0330));
	
% Species:   id = s_0507, name = citrate(3-) [intracellular], affected by kineticLaw
	xdot(112) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0328) + (-1.0 * reaction_r_0330));
	
% Species:   id = s_0511, name = CMP [intracellular], affected by kineticLaw
	xdot(113) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0345) + ( 1.0 * reaction_r_0847) + ( 1.0 * reaction_r_0853) + (-0.05 * reaction_r_1812));
	
% Species:   id = s_0514, name = coenzyme A [intracellular], affected by kineticLaw
	xdot(114) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0009) + ( 1.0 * reaction_r_0026) + ( 1.0 * reaction_r_0118) + (-1.0 * reaction_r_0125) + ( 1.0 * reaction_r_0127) + ( 1.0 * reaction_r_0290) + ( 1.0 * reaction_r_0328) + ( 1.0 * reaction_r_0370) + ( 1.0 * reaction_r_0417) + ( 1.0 * reaction_r_0418) + ( 1.0 * reaction_r_0419) + ( 1.0 * reaction_r_0421) + ( 1.0 * reaction_r_0423) + ( 3.0 * reaction_r_0425) + ( 1.0 * reaction_r_0429) + ( 3.0 * reaction_r_0430) + (-1.0 * reaction_r_0437) + ( 1.0 * reaction_r_0439) + ( 1.0 * reaction_r_0442) + ( 1.0 * reaction_r_0464) + ( 1.0 * reaction_r_0465) + ( 1.0 * reaction_r_0466) + ( 1.0 * reaction_r_0467) + ( 1.0 * reaction_r_0534) + ( 1.0 * reaction_r_0582) + ( 1.0 * reaction_r_0589) + ( 1.0 * reaction_r_0598) + ( 1.0 * reaction_r_0599) + (-1.0 * reaction_r_0940) + ( 1.0 * reaction_r_0972) + (-1.0 * reaction_r_1003));
	
% Species:   id = s_0521, name = CTP [intracellular], affected by kineticLaw
	xdot(115) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0284) + ( 1.0 * reaction_r_0336) + (-1.0 * reaction_r_0712) + (-1.0 * reaction_r_0771));
	
% Species:   id = s_0529, name = D-arabinono-1,4-lactone [intracellular], affected by kineticLaw
	xdot(116) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0351) + ( 1.0 * reaction_r_0352));
	
% Species:   id = s_0530, name = D-arabinose [intracellular], affected by kineticLaw
	xdot(117) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0351) + (-1.0 * reaction_r_0352));
	
% Species:   id = s_0532, name = D-erythro-1-(imidazol-4-yl)glycerol 3-phosphate [intracellular], affected by kineticLaw
	xdot(118) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0604) + (-1.0 * reaction_r_0605));
	
% Species:   id = s_0533, name = D-erythrose 4-phosphate(2-) [intracellular], affected by kineticLaw
	xdot(119) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0021) + (-1.0 * reaction_r_1035) + ( 1.0 * reaction_r_1037));
	
% Species:   id = s_0537, name = D-fructose 1,6-bisphosphate [intracellular], affected by kineticLaw
	xdot(120) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0484) + ( 1.0 * reaction_r_0859));
	
% Species:   id = s_0539, name = D-fructose 6-phosphate [intracellular], affected by kineticLaw
	xdot(121) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0504) + ( 1.0 * reaction_r_0505) + (-1.0 * reaction_r_0698) + (-1.0 * reaction_r_0859) + (-1.0 * reaction_r_1035) + (-1.0 * reaction_r_1037));
	
% Species:   id = s_0545, name = D-glucose [intracellular], affected by kineticLaw
	xdot(122) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0499) + (-1.0 * reaction_r_0573) + ( 1.0 * reaction_r_1293));
	
% Species:   id = s_0549, name = D-glucose 1-phosphate [intracellular], affected by kineticLaw
	xdot(123) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0861) + (-1.0 * reaction_r_1072));
	
% Species:   id = s_0553, name = D-mannose 1-phosphate [intracellular], affected by kineticLaw
	xdot(124) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0697) + ( 1.0 * reaction_r_0875));
	
% Species:   id = s_0554, name = D-mannose 6-phosphate [intracellular], affected by kineticLaw
	xdot(125) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0698) + (-1.0 * reaction_r_0875));
	
% Species:   id = s_0557, name = D-ribulose 5-phosphate [intracellular], affected by kineticLaw
	xdot(126) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0040) + (-1.0 * reaction_r_0963) + ( 1.0 * reaction_r_0965));
	
% Species:   id = s_0561, name = D-xylulose 5-phosphate [intracellular], affected by kineticLaw
	xdot(127) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0965) + ( 1.0 * reaction_r_1036) + ( 1.0 * reaction_r_1037));
	
% Species:   id = s_0562, name = dADP [intracellular], affected by kineticLaw
	xdot(128) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0360) + ( 1.0 * reaction_r_0568) + ( 1.0 * reaction_r_0951));
	
% Species:   id = s_0564, name = dAMP [intracellular], affected by kineticLaw
	xdot(129) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0360) + (-0.003587 * reaction_r_1812));
	
% Species:   id = s_0566, name = dATP [intracellular], affected by kineticLaw
	xdot(130) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0568) + ( 1.0 * reaction_r_0959));
	
% Species:   id = s_0569, name = dCMP [intracellular], affected by kineticLaw
	xdot(131) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0357) + (-0.002432 * reaction_r_1812));
	
% Species:   id = s_0574, name = decanoate [intracellular], affected by kineticLaw
	xdot(132) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0417) + (-1.0 * reaction_r_0418));
	
% Species:   id = s_0582, name = decanoyl-CoA [intracellular], affected by kineticLaw
	xdot(133) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0429) + (-1.0 * reaction_r_0464));
	
% Species:   id = s_0591, name = dGDP [intracellular], affected by kineticLaw
	xdot(134) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0362) + ( 1.0 * reaction_r_0955));
	
% Species:   id = s_0593, name = dGMP [intracellular], affected by kineticLaw
	xdot(135) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0362) + (-0.002432 * reaction_r_1812));
	
% Species:   id = s_0596, name = diglyceride [intracellular], affected by kineticLaw
	xdot(136) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0370) + ( 1.0 * reaction_r_0371) + ( 1.0 * reaction_r_1040));
	
% Species:   id = s_0601, name = dihydrofolic acid [intracellular], affected by kineticLaw
	xdot(137) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0375) + ( 1.0 * reaction_r_1032));
	
% Species:   id = s_0605, name = diphosphate [intracellular], affected by kineticLaw
	xdot(138) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0127) + ( 1.0 * reaction_r_0220) + ( 1.0 * reaction_r_0226) + ( 1.0 * reaction_r_0229) + ( 1.0 * reaction_r_0245) + ( 1.0 * reaction_r_0284) + ( 1.0 * reaction_r_0387) + ( 1.0 * reaction_r_0437) + (-1.0 * reaction_r_0439) + (-1.0 * reaction_r_0442) + ( 1.0 * reaction_r_0496) + ( 1.0 * reaction_r_0514) + ( 1.0 * reaction_r_0551) + ( 1.0 * reaction_r_0562) + (-1.0 * reaction_r_0610) + ( 1.0 * reaction_r_0650) + ( 1.0 * reaction_r_0697) + ( 1.0 * reaction_r_0701) + ( 1.0 * reaction_r_0793) + ( 1.0 * reaction_r_0882) + ( 2.0 * reaction_r_0993) + ( 1.0 * reaction_r_1072));
	
% Species:   id = s_0615, name = dolichyl D-mannosyl phosphate [intracellular], affected by kineticLaw
	xdot(139) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0393) + (-1.0 * reaction_r_0394));
	
% Species:   id = s_0616, name = dolichyl phosphate [intracellular], affected by kineticLaw
	xdot(140) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0393) + ( 1.0 * reaction_r_0394));
	
% Species:   id = s_0619, name = dTMP [intracellular], affected by kineticLaw
	xdot(141) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_1032) + (-0.003587 * reaction_r_1812));
	
% Species:   id = s_0622, name = dUDP [intracellular], affected by kineticLaw
	xdot(142) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0957) + (-1.0 * reaction_r_1066));
	
% Species:   id = s_0624, name = dUMP [intracellular], affected by kineticLaw
	xdot(143) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0357) + (-1.0 * reaction_r_1032) + ( 1.0 * reaction_r_1066));
	
% Species:   id = s_0627, name = episterol [intracellular], affected by kineticLaw
	xdot(144) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0270) + (-9.6E-5 * reaction_r_1816));
	
% Species:   id = s_0632, name = ergosta-5,7,22,24(28)-tetraen-3beta-ol [intracellular], affected by kineticLaw
	xdot(145) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0271) + ( 1.0 * reaction_r_0298) + (-1.25E-4 * reaction_r_1816));
	
% Species:   id = s_0635, name = ergosterol [intracellular], affected by kineticLaw
	xdot(146) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0271) + (-1.0 * reaction_r_0995) + (-0.005603 * reaction_r_1816));
	
% Species:   id = s_0641, name = ergosterol ester [intracellular], affected by kineticLaw
	xdot(147) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0995) + (-8.12E-4 * reaction_r_1816));
	
% Species:   id = s_0650, name = ethanol [intracellular], affected by kineticLaw
	xdot(148) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0183) + (-1.0 * reaction_r_1247));
	
% Species:   id = s_0657, name = FAD [intracellular], affected by kineticLaw
	xdot(149) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0488) + (-1.0 * reaction_r_0529));
	
% Species:   id = s_0659, name = FADH2 [intracellular], affected by kineticLaw
	xdot(150) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0488) + ( 1.0 * reaction_r_0529));
	
% Species:   id = s_0663, name = fatty acid [intracellular], affected by kineticLaw
	xdot(151) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0995) + ( 1.0 * reaction_r_1040) + (-2.06E-4 * reaction_r_1816));
	
% Species:   id = s_0669, name = fecosterol [intracellular], affected by kineticLaw
	xdot(152) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0270) + ( 1.0 * reaction_r_0967) + (-1.14E-4 * reaction_r_1816));
	
% Species:   id = s_0689, name = formate [intracellular], affected by kineticLaw
	xdot(153) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0040) + ( 1.0 * reaction_r_0347) + (-1.0 * reaction_r_0479) + ( 1.0 * reaction_r_0562));
	
% Species:   id = s_0692, name = fumarate(2-) [intracellular], affected by kineticLaw
	xdot(154) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0169) + ( 1.0 * reaction_r_0171) + ( 1.0 * reaction_r_0225) + ( 1.0 * reaction_r_0485) + (-1.0 * reaction_r_0488));
	
% Species:   id = s_0706, name = GDP [intracellular], affected by kineticLaw
	xdot(155) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0165) + ( 1.0 * reaction_r_0170) + ( 1.0 * reaction_r_0393) + ( 1.0 * reaction_r_0567) + ( 1.0 * reaction_r_0568) + (-1.0 * reaction_r_0955));
	
% Species:   id = s_0710, name = GDP-alpha-D-mannose [intracellular], affected by kineticLaw
	xdot(156) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0393) + ( 1.0 * reaction_r_0697) + (-1.0 * reaction_r_0723));
	
% Species:   id = s_0712, name = geranyl diphosphate [intracellular], affected by kineticLaw
	xdot(157) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0387) + (-1.0 * reaction_r_0496));
	
% Species:   id = s_0731, name = glyceraldehyde 3-phosphate [intracellular], affected by kineticLaw
	xdot(158) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0484) + (-1.0 * reaction_r_0525) + ( 1.0 * reaction_r_1035) + (-1.0 * reaction_r_1036) + (-1.0 * reaction_r_1037) + ( 1.0 * reaction_r_1041) + ( 1.0 * reaction_r_1042));
	
% Species:   id = s_0732, name = glycerol [intracellular], affected by kineticLaw
	xdot(159) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0526) + ( 1.0 * reaction_r_0528));
	
% Species:   id = s_0734, name = glycerone [intracellular], affected by kineticLaw
	xdot(160) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0386) + ( 1.0 * reaction_r_0526));
	
% Species:   id = s_0735, name = glycerone phosphate [intracellular], affected by kineticLaw
	xdot(161) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0386) + ( 1.0 * reaction_r_0484) + ( 1.0 * reaction_r_0529) + (-1.0 * reaction_r_0530) + (-1.0 * reaction_r_1041));
	
% Species:   id = s_0740, name = glycine [intracellular], affected by kineticLaw
	xdot(162) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0174) + (-1.0 * reaction_r_0538) + (-1.0 * reaction_r_0539) + (-1.0 * reaction_r_0890) + ( 1.0 * reaction_r_1026) + (-0.32518 * reaction_r_1812));
	
% Species:   id = s_0743, name = glycogen [intracellular], affected by kineticLaw
	xdot(163) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0006) + (-0.51852 * reaction_r_1812));
	
% Species:   id = s_0749, name = glyoxylate [intracellular], affected by kineticLaw
	xdot(164) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0174) + ( 1.0 * reaction_r_0633));
	
% Species:   id = s_0752, name = GMP [intracellular], affected by kineticLaw
	xdot(165) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0551) + (-1.0 * reaction_r_0567) + (-1.0 * reaction_r_0568) + (-0.051 * reaction_r_1812));
	
% Species:   id = s_0755, name = GTP [intracellular], affected by kineticLaw
	xdot(166) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0165) + (-1.0 * reaction_r_0170) + (-1.0 * reaction_r_0562) + (-1.0 * reaction_r_0697));
	
% Species:   id = s_0798, name = homocitrate(3-) [intracellular], affected by kineticLaw
	xdot(167) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0029) + ( 1.0 * reaction_r_0582));
	
% Species:   id = s_0800, name = homoisocitrate(3-) [intracellular], affected by kineticLaw
	xdot(168) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0581) + (-1.0 * reaction_r_0585));
	
% Species:   id = s_0801, name = hydrogen peroxide [intracellular], affected by kineticLaw
	xdot(169) = (1/(compartment_intracellular))*((-2.0 * reaction_r_0282) + ( 1.0 * reaction_r_0374));
	
% Species:   id = s_0805, name = hydrogen sulfide [intracellular], affected by kineticLaw
	xdot(170) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0783) + ( 1.0 * reaction_r_1008));
	
% Species:   id = s_0816, name = IMP [intracellular], affected by kineticLaw
	xdot(171) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0170) + ( 1.0 * reaction_r_0606) + (-1.0 * reaction_r_0607));
	
% Species:   id = s_0824, name = inositol phosphomannosylinositol phosphoceramide [intracellular], affected by kineticLaw
	xdot(172) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0618) + (-4.17E-4 * reaction_r_1816));
	
% Species:   id = s_0828, name = inositol-P-ceramide B [intracellular], affected by kineticLaw
	xdot(173) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0621) + (-1.0 * reaction_r_0723));
	
% Species:   id = s_0847, name = isocitrate(3-) [intracellular], affected by kineticLaw
	xdot(174) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0307) + (-1.0 * reaction_r_0630) + (-1.0 * reaction_r_0633));
	
% Species:   id = s_0850, name = isopentenyl diphosphate [intracellular], affected by kineticLaw
	xdot(175) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0387) + (-1.0 * reaction_r_0496) + (-1.0 * reaction_r_0638) + ( 1.0 * reaction_r_0715));
	
% Species:   id = s_0859, name = keto-phenylpyruvate [intracellular], affected by kineticLaw
	xdot(176) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0825) + ( 1.0 * reaction_r_0911));
	
% Species:   id = s_0861, name = L-2-aminoadipate(2-) [intracellular], affected by kineticLaw
	xdot(177) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0018) + (-1.0 * reaction_r_0650));
	
% Species:   id = s_0863, name = L-alanine [intracellular], affected by kineticLaw
	xdot(178) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0174) + ( 1.0 * reaction_r_0647) + (-0.35734 * reaction_r_1812));
	
% Species:   id = s_0867, name = L-allysine [intracellular], affected by kineticLaw
	xdot(179) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0650) + (-1.0 * reaction_r_0970));
	
% Species:   id = s_0873, name = L-arginine [intracellular], affected by kineticLaw
	xdot(180) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0225) + (-0.13579 * reaction_r_1812));
	
% Species:   id = s_0877, name = L-asparagine [intracellular], affected by kineticLaw
	xdot(181) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0229) + (-0.17152 * reaction_r_1812));
	
% Species:   id = s_0881, name = L-aspartate [intracellular], affected by kineticLaw
	xdot(182) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0170) + (-1.0 * reaction_r_0226) + (-1.0 * reaction_r_0229) + (-1.0 * reaction_r_0232) + (-1.0 * reaction_r_0233) + ( 1.0 * reaction_r_0235) + (-1.0 * reaction_r_0886) + (-0.17152 * reaction_r_1812));
	
% Species:   id = s_0886, name = L-aspartate 4-semialdehyde [intracellular], affected by kineticLaw
	xdot(183) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0238) + (-1.0 * reaction_r_0586));
	
% Species:   id = s_0887, name = L-citrulline [intracellular], affected by kineticLaw
	xdot(184) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0226) + ( 1.0 * reaction_r_0789));
	
% Species:   id = s_0888, name = L-cystathionine [intracellular], affected by kineticLaw
	xdot(185) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0338) + (-1.0 * reaction_r_0339) + ( 1.0 * reaction_r_0340));
	
% Species:   id = s_0889, name = L-cysteine [intracellular], affected by kineticLaw
	xdot(186) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0339) + (-1.0 * reaction_r_0340) + (-0.04288 * reaction_r_1812));
	
% Species:   id = s_0894, name = L-gamma-glutamyl phosphate [intracellular], affected by kineticLaw
	xdot(187) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0506) + (-1.0 * reaction_r_0512));
	
% Species:   id = s_0899, name = L-glutamate [intracellular], affected by kineticLaw
	xdot(188) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0018) + (-1.0 * reaction_r_0133) + ( 1.0 * reaction_r_0221) + ( 1.0 * reaction_r_0229) + (-1.0 * reaction_r_0235) + ( 1.0 * reaction_r_0277) + (-1.0 * reaction_r_0506) + ( 1.0 * reaction_r_0509) + ( 2.0 * reaction_r_0510) + ( 1.0 * reaction_r_0514) + (-1.0 * reaction_r_0515) + ( 1.0 * reaction_r_0551) + (-1.0 * reaction_r_0577) + ( 1.0 * reaction_r_0604) + (-1.0 * reaction_r_0634) + (-1.0 * reaction_r_0647) + (-1.0 * reaction_r_0674) + (-1.0 * reaction_r_0791) + (-1.0 * reaction_r_0825) + ( 1.0 * reaction_r_0888) + (-1.0 * reaction_r_0970) + (-1.0 * reaction_r_1050) + (-1.0 * reaction_r_1073) + (-0.268 * reaction_r_1812));
	
% Species:   id = s_0905, name = L-glutamic 5-semialdehyde [intracellular], affected by kineticLaw
	xdot(189) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0512) + (-1.0 * reaction_r_0657));
	
% Species:   id = s_0907, name = L-glutamine [intracellular], affected by kineticLaw
	xdot(190) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0221) + (-1.0 * reaction_r_0229) + (-1.0 * reaction_r_0277) + (-1.0 * reaction_r_0510) + (-1.0 * reaction_r_0514) + ( 1.0 * reaction_r_0515) + (-1.0 * reaction_r_0551) + (-1.0 * reaction_r_0604) + (-1.0 * reaction_r_0888) + (-0.268 * reaction_r_1812));
	
% Species:   id = s_0911, name = L-histidine [intracellular], affected by kineticLaw
	xdot(191) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0575) + (-0.075041 * reaction_r_1812));
	
% Species:   id = s_0915, name = L-histidinol [intracellular], affected by kineticLaw
	xdot(192) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0575) + ( 1.0 * reaction_r_0576));
	
% Species:   id = s_0916, name = L-histidinol phosphate [intracellular], affected by kineticLaw
	xdot(193) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0576) + ( 1.0 * reaction_r_0577));
	
% Species:   id = s_0917, name = L-homocysteine [intracellular], affected by kineticLaw
	xdot(194) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0159) + (-1.0 * reaction_r_0338) + (-1.0 * reaction_r_0702) + ( 1.0 * reaction_r_0783));
	
% Species:   id = s_0919, name = L-homoserine [intracellular], affected by kineticLaw
	xdot(195) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0586) + (-1.0 * reaction_r_0588) + (-1.0 * reaction_r_0589));
	
% Species:   id = s_0920, name = L-isoleucine [intracellular], affected by kineticLaw
	xdot(196) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0634) + (-0.17152 * reaction_r_1812));
	
% Species:   id = s_0925, name = L-leucine [intracellular], affected by kineticLaw
	xdot(197) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0674) + (-0.25014 * reaction_r_1812));
	
% Species:   id = s_0929, name = L-lysine [intracellular], affected by kineticLaw
	xdot(198) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0969) + (-0.23942 * reaction_r_1812));
	
% Species:   id = s_0933, name = L-methionine [intracellular], affected by kineticLaw
	xdot(199) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0701) + ( 1.0 * reaction_r_0702) + (-0.050027 * reaction_r_1812));
	
% Species:   id = s_0936, name = L-phenylalanine [intracellular], affected by kineticLaw
	xdot(200) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0825) + (-0.11435 * reaction_r_1812));
	
% Species:   id = s_0939, name = L-proline [intracellular], affected by kineticLaw
	xdot(201) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0936) + (-0.12864 * reaction_r_1812));
	
% Species:   id = s_0942, name = L-saccharopine [intracellular], affected by kineticLaw
	xdot(202) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0969) + ( 1.0 * reaction_r_0970));
	
% Species:   id = s_0943, name = L-serine [intracellular], affected by kineticLaw
	xdot(203) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0338) + ( 1.0 * reaction_r_0539) + (-1.0 * reaction_r_0853) + (-1.0 * reaction_r_0972) + (-1.0 * reaction_r_1042) + (-0.25371 * reaction_r_1812));
	
% Species:   id = s_0949, name = L-threonine [intracellular], affected by kineticLaw
	xdot(204) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0667) + (-1.0 * reaction_r_1026) + ( 1.0 * reaction_r_1027) + (-0.19653 * reaction_r_1812));
	
% Species:   id = s_0952, name = L-tryptophan [intracellular], affected by kineticLaw
	xdot(205) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_1042) + (-0.028 * reaction_r_1812));
	
% Species:   id = s_0955, name = L-tyrosine [intracellular], affected by kineticLaw
	xdot(206) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_1050) + (-0.096481 * reaction_r_1812));
	
% Species:   id = s_0960, name = L-valine [intracellular], affected by kineticLaw
	xdot(207) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_1073) + (-0.25728 * reaction_r_1812));
	
% Species:   id = s_0963, name = lanosterol [intracellular], affected by kineticLaw
	xdot(208) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0347) + ( 1.0 * reaction_r_0673) + (-3.2E-5 * reaction_r_1816));
	
% Species:   id = s_0968, name = laurate [intracellular], affected by kineticLaw
	xdot(209) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0418) + (-1.0 * reaction_r_0419));
	
% Species:   id = s_0977, name = lauroyl-CoA [intracellular], affected by kineticLaw
	xdot(210) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0464) + (-1.0 * reaction_r_0465));
	
% Species:   id = s_0987, name = lignocerate [intracellular], affected by kineticLaw
	xdot(211) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0425) + (-1.0 * reaction_r_0437));
	
% Species:   id = s_1005, name = malonyl-CoA [intracellular], affected by kineticLaw
	xdot(212) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0123) + (-1.0 * reaction_r_0417) + (-1.0 * reaction_r_0418) + (-1.0 * reaction_r_0419) + (-1.0 * reaction_r_0421) + (-1.0 * reaction_r_0423) + (-3.0 * reaction_r_0425) + (-1.0 * reaction_r_0429) + (-3.0 * reaction_r_0430) + (-1.0 * reaction_r_0464) + (-1.0 * reaction_r_0465) + (-1.0 * reaction_r_0466) + (-1.0 * reaction_r_0467));
	
% Species:   id = s_1011, name = mannan [intracellular], affected by kineticLaw
	xdot(213) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0394) + (-0.82099 * reaction_r_1812));
	
% Species:   id = s_1013, name = mannosylinositol phosphorylceramide [intracellular], affected by kineticLaw
	xdot(214) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0618) + ( 1.0 * reaction_r_0723));
	
% Species:   id = s_1020, name = myo-inositol [intracellular], affected by kineticLaw
	xdot(215) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0725) + (-1.0 * reaction_r_0847));
	
% Species:   id = s_1028, name = myristate [intracellular], affected by kineticLaw
	xdot(216) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0419) + (-1.0 * reaction_r_0421));
	
% Species:   id = s_1044, name = myristoyl-CoA [intracellular], affected by kineticLaw
	xdot(217) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0465) + (-1.0 * reaction_r_0466));
	
% Species:   id = s_1048, name = N(1)-(5-phospho-D-ribosyl)glycinamide [intracellular], affected by kineticLaw
	xdot(218) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0889) + ( 1.0 * reaction_r_0890));
	
% Species:   id = s_1051, name = N(2)-acetyl-L-ornithine [intracellular], affected by kineticLaw
	xdot(219) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0133) + (-1.0 * reaction_r_0791));
	
% Species:   id = s_1052, name = N(2)-formyl-N(1)-(5-phospho-D-ribosyl)glycinamide [intracellular], affected by kineticLaw
	xdot(220) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0888) + ( 1.0 * reaction_r_0889));
	
% Species:   id = s_1053, name = N(6)-(1,2-dicarboxyethyl)-AMP [intracellular], affected by kineticLaw
	xdot(221) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0170) + (-1.0 * reaction_r_0171));
	
% Species:   id = s_1060, name = N-(24-hydroxytetracosanyl)sphinganine [intracellular], affected by kineticLaw
	xdot(222) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0287) + (-1.0 * reaction_r_0621));
	
% Species:   id = s_1066, name = N-(5-phospho-beta-D-ribosyl)anthranilate [intracellular], affected by kineticLaw
	xdot(223) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0220) + (-1.0 * reaction_r_0887));
	
% Species:   id = s_1070, name = N-acetyl-L-gamma-glutamyl phosphate [intracellular], affected by kineticLaw
	xdot(224) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0130) + (-1.0 * reaction_r_0728));
	
% Species:   id = s_1071, name = N-acetyl-L-glutamate(2-) [intracellular], affected by kineticLaw
	xdot(225) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0130) + ( 1.0 * reaction_r_0791));
	
% Species:   id = s_1073, name = N-carbamoyl-L-aspartate [intracellular], affected by kineticLaw
	xdot(226) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0232) + (-1.0 * reaction_r_0381));
	
% Species:   id = s_1080, name = N-tetracosanylsphinganine [intracellular], affected by kineticLaw
	xdot(227) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0287) + ( 1.0 * reaction_r_0290));
	
% Species:   id = s_1082, name = NAD(+) [intracellular], affected by kineticLaw
	xdot(228) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0057) + ( 1.0 * reaction_r_0058) + ( 1.0 * reaction_r_0059) + ( 1.0 * reaction_r_0060) + (-1.0 * reaction_r_0064) + ( 1.0 * reaction_r_0183) + (-1.0 * reaction_r_0262) + ( 3.0 * reaction_r_0347) + ( 1.0 * reaction_r_0351) + ( 1.0 * reaction_r_0510) + ( 1.0 * reaction_r_0512) + (-1.0 * reaction_r_0525) + ( 1.0 * reaction_r_0530) + (-1.0 * reaction_r_0538) + (-2.0 * reaction_r_0575) + (-1.0 * reaction_r_0585) + ( 1.0 * reaction_r_0586) + (-1.0 * reaction_r_0607) + ( 1.0 * reaction_r_0650) + ( 1.0 * reaction_r_0661) + ( 1.0 * reaction_r_0688) + (-1.0 * reaction_r_0940) + (-1.0 * reaction_r_0969) + ( 1.0 * reaction_r_0991));
	
% Species:   id = s_1087, name = NADH [intracellular], affected by kineticLaw
	xdot(229) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0057) + (-1.0 * reaction_r_0058) + (-1.0 * reaction_r_0059) + (-1.0 * reaction_r_0060) + ( 1.0 * reaction_r_0064) + (-1.0 * reaction_r_0183) + ( 1.0 * reaction_r_0262) + (-3.0 * reaction_r_0347) + (-1.0 * reaction_r_0351) + (-1.0 * reaction_r_0510) + (-1.0 * reaction_r_0512) + ( 1.0 * reaction_r_0525) + (-1.0 * reaction_r_0530) + ( 1.0 * reaction_r_0538) + ( 2.0 * reaction_r_0575) + ( 1.0 * reaction_r_0585) + (-1.0 * reaction_r_0586) + ( 1.0 * reaction_r_0607) + (-1.0 * reaction_r_0650) + (-1.0 * reaction_r_0661) + (-1.0 * reaction_r_0688) + ( 1.0 * reaction_r_0940) + ( 1.0 * reaction_r_0969) + (-1.0 * reaction_r_0991));
	
% Species:   id = s_1091, name = NADP(+) [intracellular], affected by kineticLaw
	xdot(230) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0015) + ( 1.0 * reaction_r_0044) + ( 1.0 * reaction_r_0093) + ( 1.0 * reaction_r_0111) + (-1.0 * reaction_r_0191) + ( 1.0 * reaction_r_0238) + ( 1.0 * reaction_r_0258) + (-1.0 * reaction_r_0261) + ( 1.0 * reaction_r_0263) + ( 1.0 * reaction_r_0264) + ( 1.0 * reaction_r_0265) + ( 1.0 * reaction_r_0266) + ( 1.0 * reaction_r_0267) + ( 3.0 * reaction_r_0268) + ( 1.0 * reaction_r_0271) + ( 1.0 * reaction_r_0287) + (-1.0 * reaction_r_0352) + ( 1.0 * reaction_r_0375) + ( 2.0 * reaction_r_0417) + ( 2.0 * reaction_r_0418) + ( 2.0 * reaction_r_0419) + ( 2.0 * reaction_r_0421) + ( 2.0 * reaction_r_0423) + ( 6.0 * reaction_r_0425) + ( 2.0 * reaction_r_0429) + ( 6.0 * reaction_r_0430) + ( 2.0 * reaction_r_0464) + ( 2.0 * reaction_r_0465) + ( 2.0 * reaction_r_0466) + ( 2.0 * reaction_r_0467) + ( 1.0 * reaction_r_0509) + (-1.0 * reaction_r_0526) + ( 2.0 * reaction_r_0598) + (-1.0 * reaction_r_0630) + ( 1.0 * reaction_r_0640) + (-1.0 * reaction_r_0660) + (-1.0 * reaction_r_0707) + (-1.0 * reaction_r_0719) + (-1.0 * reaction_r_0720) + (-1.0 * reaction_r_0721) + (-1.0 * reaction_r_0722) + ( 1.0 * reaction_r_0728) + (-1.0 * reaction_r_0913) + ( 1.0 * reaction_r_0936) + ( 1.0 * reaction_r_0970) + ( 1.0 * reaction_r_0976) + ( 1.0 * reaction_r_0993) + ( 3.0 * reaction_r_1008) + ( 1.0 * reaction_r_1024));
	
% Species:   id = s_1096, name = NADPH [intracellular], affected by kineticLaw
	xdot(231) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0015) + (-1.0 * reaction_r_0044) + (-1.0 * reaction_r_0093) + (-1.0 * reaction_r_0111) + ( 1.0 * reaction_r_0191) + (-1.0 * reaction_r_0238) + (-1.0 * reaction_r_0258) + ( 1.0 * reaction_r_0261) + (-1.0 * reaction_r_0263) + (-1.0 * reaction_r_0264) + (-1.0 * reaction_r_0265) + (-1.0 * reaction_r_0266) + (-1.0 * reaction_r_0267) + (-3.0 * reaction_r_0268) + (-1.0 * reaction_r_0271) + (-1.0 * reaction_r_0287) + ( 1.0 * reaction_r_0352) + (-1.0 * reaction_r_0375) + (-2.0 * reaction_r_0417) + (-2.0 * reaction_r_0418) + (-2.0 * reaction_r_0419) + (-2.0 * reaction_r_0421) + (-2.0 * reaction_r_0423) + (-6.0 * reaction_r_0425) + (-2.0 * reaction_r_0429) + (-6.0 * reaction_r_0430) + (-2.0 * reaction_r_0464) + (-2.0 * reaction_r_0465) + (-2.0 * reaction_r_0466) + (-2.0 * reaction_r_0467) + (-1.0 * reaction_r_0509) + ( 1.0 * reaction_r_0526) + (-2.0 * reaction_r_0598) + ( 1.0 * reaction_r_0630) + (-1.0 * reaction_r_0640) + ( 1.0 * reaction_r_0660) + ( 1.0 * reaction_r_0707) + ( 1.0 * reaction_r_0719) + ( 1.0 * reaction_r_0720) + ( 1.0 * reaction_r_0721) + ( 1.0 * reaction_r_0722) + (-1.0 * reaction_r_0728) + ( 1.0 * reaction_r_0913) + (-1.0 * reaction_r_0936) + (-1.0 * reaction_r_0970) + (-1.0 * reaction_r_0976) + (-1.0 * reaction_r_0993) + (-3.0 * reaction_r_1008) + (-1.0 * reaction_r_1024));
	
% Species:   id = s_1117, name = O-acetyl-L-homoserine [intracellular], affected by kineticLaw
	xdot(232) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0340) + ( 1.0 * reaction_r_0589) + (-1.0 * reaction_r_0783));
	
% Species:   id = s_1122, name = O-phospho-L-homoserine [intracellular], affected by kineticLaw
	xdot(233) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0588) + (-1.0 * reaction_r_1027));
	
% Species:   id = s_1132, name = octanoate [intracellular], affected by kineticLaw
	xdot(234) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0417) + ( 1.0 * reaction_r_0442));
	
% Species:   id = s_1140, name = octanoyl-CoA [intracellular], affected by kineticLaw
	xdot(235) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0429) + ( 1.0 * reaction_r_0430) + (-1.0 * reaction_r_0442));
	
% Species:   id = s_1151, name = ornithine [intracellular], affected by kineticLaw
	xdot(236) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0789) + ( 1.0 * reaction_r_0791));
	
% Species:   id = s_1154, name = orotate [intracellular], affected by kineticLaw
	xdot(237) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0374) + (-1.0 * reaction_r_0793));
	
% Species:   id = s_1155, name = orotidine 5'-(dihydrogen phosphate) [intracellular], affected by kineticLaw
	xdot(238) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0793) + (-1.0 * reaction_r_0794));
	
% Species:   id = s_1156, name = oxaloacetate(2-) [intracellular], affected by kineticLaw
	xdot(239) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0235) + (-1.0 * reaction_r_0328) + (-1.0 * reaction_r_0688) + ( 1.0 * reaction_r_0937));
	
% Species:   id = s_1160, name = oxygen [intracellular], affected by kineticLaw
	xdot(240) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0265) + (-1.0 * reaction_r_0266) + (-1.0 * reaction_r_0267) + (-3.0 * reaction_r_0268) + ( 1.0 * reaction_r_0282) + (-1.0 * reaction_r_0287) + (-1.0 * reaction_r_0298) + (-3.0 * reaction_r_0347) + (-1.0 * reaction_r_0374) + (-1.0 * reaction_r_0991) + ( 1.0 * reaction_r_1435));
	
% Species:   id = s_1170, name = palmitate [intracellular], affected by kineticLaw
	xdot(241) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0421) + (-1.0 * reaction_r_0423));
	
% Species:   id = s_1187, name = palmitoyl-CoA [intracellular], affected by kineticLaw
	xdot(242) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0466) + (-1.0 * reaction_r_0467) + (-1.0 * reaction_r_0972));
	
% Species:   id = s_1215, name = phosphatidate [intracellular], affected by kineticLaw
	xdot(243) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0009) + (-1.0 * reaction_r_0284) + (-1.0 * reaction_r_0371));
	
% Species:   id = s_1219, name = phosphatidyl-L-serine [intracellular], affected by kineticLaw
	xdot(244) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0850) + ( 1.0 * reaction_r_0853) + (-3.73E-4 * reaction_r_1816));
	
% Species:   id = s_1225, name = phosphatidyl-N,N-dimethylethanolamine [intracellular], affected by kineticLaw
	xdot(245) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0873) + ( 1.0 * reaction_r_0874));
	
% Species:   id = s_1226, name = phosphatidyl-N-methylethanolamine [intracellular], affected by kineticLaw
	xdot(246) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0831) + (-1.0 * reaction_r_0874));
	
% Species:   id = s_1228, name = phosphatidylcholine [intracellular], affected by kineticLaw
	xdot(247) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0873) + (-0.002884 * reaction_r_1816));
	
% Species:   id = s_1233, name = phosphatidylethanolamine [intracellular], affected by kineticLaw
	xdot(248) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0831) + ( 1.0 * reaction_r_0850) + (-6.97E-4 * reaction_r_1816));
	
% Species:   id = s_1243, name = phosphoenolpyruvate [intracellular], affected by kineticLaw
	xdot(249) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0021) + (-1.0 * reaction_r_0068) + ( 1.0 * reaction_r_0398) + (-1.0 * reaction_r_0941));
	
% Species:   id = s_1257, name = prenyl diphosphate [intracellular], affected by kineticLaw
	xdot(250) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0387) + ( 1.0 * reaction_r_0638));
	
% Species:   id = s_1258, name = prephenate(2-) [intracellular], affected by kineticLaw
	xdot(251) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0304) + (-1.0 * reaction_r_0911) + (-1.0 * reaction_r_0913));
	
% Species:   id = s_1277, name = pyruvate [intracellular], affected by kineticLaw
	xdot(252) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0016) + (-2.0 * reaction_r_0112) + ( 1.0 * reaction_r_0174) + ( 1.0 * reaction_r_0221) + (-1.0 * reaction_r_0647) + (-1.0 * reaction_r_0937) + (-1.0 * reaction_r_0938) + (-1.0 * reaction_r_0940) + ( 1.0 * reaction_r_0941));
	
% Species:   id = s_1283, name = riboflavin [intracellular], affected by kineticLaw
	xdot(253) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0949) + (-9.0E-4 * reaction_r_1812));
	
% Species:   id = s_1290, name = S-adenosyl-L-homocysteine [intracellular], affected by kineticLaw
	xdot(254) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0159) + ( 1.0 * reaction_r_0298) + ( 1.0 * reaction_r_0831) + ( 1.0 * reaction_r_0873) + ( 1.0 * reaction_r_0874) + ( 1.0 * reaction_r_0967));
	
% Species:   id = s_1293, name = S-adenosyl-L-methionine [intracellular], affected by kineticLaw
	xdot(255) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0298) + ( 1.0 * reaction_r_0701) + (-1.0 * reaction_r_0831) + (-1.0 * reaction_r_0873) + (-1.0 * reaction_r_0874) + (-1.0 * reaction_r_0967));
	
% Species:   id = s_1304, name = sedoheptulose 7-phosphate [intracellular], affected by kineticLaw
	xdot(256) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_1035) + (-1.0 * reaction_r_1036));
	
% Species:   id = s_1306, name = shikimate [intracellular], affected by kineticLaw
	xdot(257) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0976) + (-1.0 * reaction_r_0977));
	
% Species:   id = s_1315, name = sn-glycerol 3-phosphate [intracellular], affected by kineticLaw
	xdot(258) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0528) + (-1.0 * reaction_r_0529) + ( 1.0 * reaction_r_0530) + (-1.0 * reaction_r_0534));
	
% Species:   id = s_1325, name = sphinganine [intracellular], affected by kineticLaw
	xdot(259) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0044) + (-1.0 * reaction_r_0290));
	
% Species:   id = s_1327, name = squalene [intracellular], affected by kineticLaw
	xdot(260) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0991) + ( 1.0 * reaction_r_0993));
	
% Species:   id = s_1329, name = stearate [intracellular], affected by kineticLaw
	xdot(261) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0423) + (-1.0 * reaction_r_0425) + ( 1.0 * reaction_r_0439));
	
% Species:   id = s_1334, name = stearoyl-CoA [intracellular], affected by kineticLaw
	xdot(262) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0439) + ( 1.0 * reaction_r_0467));
	
% Species:   id = s_1338, name = succinate(2-) [intracellular], affected by kineticLaw
	xdot(263) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0488) + ( 1.0 * reaction_r_0633) + (-1.0 * reaction_r_1003) + (-1.0 * reaction_r_1503));
	
% Species:   id = s_1342, name = succinyl-CoA [intracellular], affected by kineticLaw
	xdot(264) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_1003) + (-1.0 * reaction_r_1672));
	
% Species:   id = s_1347, name = sulphate [intracellular], affected by kineticLaw
	xdot(265) = (1/(compartment_intracellular))*((-1.0 * reaction_r_1007) + ( 1.0 * reaction_r_1507) + (-0.02 * reaction_r_1812));
	
% Species:   id = s_1349, name = sulphite [intracellular], affected by kineticLaw
	xdot(266) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0856) + (-1.0 * reaction_r_1008));
	
% Species:   id = s_1355, name = tetracosanoyl-CoA [intracellular], affected by kineticLaw
	xdot(267) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0290) + ( 1.0 * reaction_r_0437));
	
% Species:   id = s_1379, name = trans-4-hydroxy-L-proline [intracellular], affected by kineticLaw
	xdot(268) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0660) + ( 1.0 * reaction_r_0661));
	
% Species:   id = s_1411, name = UDP [intracellular], affected by kineticLaw
	xdot(269) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0005) + ( 1.0 * reaction_r_0213) + ( 1.0 * reaction_r_0547) + (-1.0 * reaction_r_0779) + (-1.0 * reaction_r_0957) + ( 1.0 * reaction_r_1059));
	
% Species:   id = s_1415, name = UDP-D-glucose [intracellular], affected by kineticLaw
	xdot(270) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0005) + (-1.0 * reaction_r_0213) + (-1.0 * reaction_r_0547) + ( 1.0 * reaction_r_1072));
	
% Species:   id = s_1417, name = UMP [intracellular], affected by kineticLaw
	xdot(271) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0794) + (-1.0 * reaction_r_1059) + (-0.067 * reaction_r_1812));
	
% Species:   id = s_1430, name = UTP [intracellular], affected by kineticLaw
	xdot(272) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0336) + ( 1.0 * reaction_r_0779) + (-1.0 * reaction_r_1072));
	
% Species:   id = s_1447, name = zymosterol [intracellular], affected by kineticLaw
	xdot(273) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0264) + (-1.0 * reaction_r_0298) + (-1.0 * reaction_r_0967) + (-1.5E-5 * reaction_r_1816));
	
% Species:   id = s_1455, name = zymosterol intermediate 1a [intracellular], affected by kineticLaw
	xdot(274) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0265) + (-1.0 * reaction_r_0266));
	
% Species:   id = s_1456, name = zymosterol intermediate 1b [intracellular], affected by kineticLaw
	xdot(275) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0266) + (-1.0 * reaction_r_0267));
	
% Species:   id = s_1457, name = zymosterol intermediate 1c [intracellular], affected by kineticLaw
	xdot(276) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0261) + ( 1.0 * reaction_r_0267));
	
% Species:   id = s_1458, name = zymosterol intermediate 2 [intracellular], affected by kineticLaw
	xdot(277) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0261) + (-1.0 * reaction_r_0264));
	
% Species:   id = s_1517, name = thioredoxin disulfide [intracellular], affected by kineticLaw
	xdot(278) = (1/(compartment_intracellular))*(( 1.0 * reaction_r_0856) + ( 1.0 * reaction_r_0951) + ( 1.0 * reaction_r_0955) + ( 1.0 * reaction_r_0957) + ( 1.0 * reaction_r_0959) + (-1.0 * reaction_r_1024));
	
% Species:   id = s_1521, name = thioredoxin dithiol [intracellular], affected by kineticLaw
	xdot(279) = (1/(compartment_intracellular))*((-1.0 * reaction_r_0856) + (-1.0 * reaction_r_0951) + (-1.0 * reaction_r_0955) + (-1.0 * reaction_r_0957) + (-1.0 * reaction_r_0959) + ( 1.0 * reaction_r_1024));
	
% Species:   id = species_1, name = glucose [extracellular]
% Warning species is not changed by either rules or reactions
	xdot(280) = ;
	
% Species:   id = s_0547_b, name = D-glucose [extracellular]	xdot(281) = ;
end

function z=MAX(a,b,piecewise(a), z=(a >= b,b));end

function z=function_33(Keq_r_0130,Vmax_r_0130,intracellular,kmp_s_0400r_0130,kmp_s_1070r_0130,kms_s_0446r_0130,kms_s_1071r_0130,s_0400,s_0446,s_1070,s_1071), z=(Vmax_r_0130*1/kms_s_0446r_0130*1/kms_s_1071r_0130*(s_0446*s_1071-s_0400*s_1070/Keq_r_0130)/((1+s_0446/kms_s_0446r_0130)*(1+s_1071/kms_s_1071r_0130)+(1+s_0400/kmp_s_0400r_0130)*(1+s_1070/kmp_s_1070r_0130)-1)/intracellular);end

function z=function_34(Keq_r_0133,Vmax_r_0133,intracellular,kmp_s_0185r_0133,kmp_s_1051r_0133,kms_s_0149r_0133,kms_s_0899r_0133,s_0149,s_0185,s_0899,s_1051), z=(Vmax_r_0133*1/kms_s_0149r_0133*1/kms_s_0899r_0133*(s_0149*s_0899-s_0185*s_1051/Keq_r_0133)/((1+s_0149/kms_s_0149r_0133)*(1+s_0899/kms_s_0899r_0133)+(1+s_0185/kmp_s_0185r_0133)*(1+s_1051/kmp_s_1051r_0133)-1)/intracellular);end

function z=function_35(Keq_r_0157,Vmax_r_0157,intracellular,kmp_s_0400r_0157,kmp_s_0434r_0157,kmp_s_0763_br_0157,kms_s_0393r_0157,kms_s_0446r_0157,s_0393,s_0400,s_0434,s_0446,s_0763_b), z=(Vmax_r_0157*1/kms_s_0393r_0157*1/kms_s_0446r_0157*(s_0393*s_0446-s_0400*s_0434*s_0763_b/Keq_r_0157)/((1+s_0393/kms_s_0393r_0157)*(1+s_0446/kms_s_0446r_0157)+(1+s_0400/kmp_s_0400r_0157)*(1+s_0434/kmp_s_0434r_0157)*(1+s_0763_b/kmp_s_0763_br_0157)-1)/intracellular);end

function z=function_52(Keq_r_0232,Vmax_r_0232,intracellular,kmp_s_0763_br_0232,kmp_s_1073r_0232,kmp_s_1207r_0232,kms_s_0469r_0232,kms_s_0881r_0232,s_0469,s_0763_b,s_0881,s_1073,s_1207), z=(Vmax_r_0232*1/kms_s_0469r_0232*1/kms_s_0881r_0232*(s_0469*s_0881-s_0763_b*s_1073*s_1207/Keq_r_0232)/((1+s_0469/kms_s_0469r_0232)*(1+s_0881/kms_s_0881r_0232)+(1+s_0763_b/kmp_s_0763_br_0232)*(1+s_1073/kmp_s_1073r_0232)*(1+s_1207/kmp_s_1207r_0232)-1)/intracellular);end

function z=function_112(Keq_r_0430,Vmax_r_0430,intracellular,kmp_s_0470r_0430,kmp_s_0514r_0430,kmp_s_1091r_0430,kmp_s_1140r_0430,kmp_s_1434_br_0430,kms_s_0380r_0430,kms_s_0763_br_0430,kms_s_1005r_0430,kms_s_1096r_0430,s_0380,s_0470,s_0514,s_0763_b,s_1005,s_1091,s_1096,s_1140,s_1434_b), z=(Vmax_r_0430*1/kms_s_0380r_0430*(1/kms_s_0763_br_0430)^9*(1/kms_s_1005r_0430)^3*(1/kms_s_1096r_0430)^6*(s_0380*s_0763_b^9*s_1005^3*s_1096^6-s_0470^3*s_0514^3*s_1091^6*s_1140*s_1434_b^3/Keq_r_0430)/((1+s_0380/kms_s_0380r_0430)*(1+s_0763_b/kms_s_0763_br_0430)*(1+s_1005/kms_s_1005r_0430)*(1+s_1096/kms_s_1096r_0430)+(1+s_0470/kmp_s_0470r_0430)*(1+s_0514/kmp_s_0514r_0430)*(1+s_1091/kmp_s_1091r_0430)*(1+s_1140/kmp_s_1140r_0430)*(1+s_1434_b/kmp_s_1434_br_0430)-1)/intracellular);end

function z=function_113(Keq_r_0437,Vmax_r_0437,intracellular,kmp_s_0434r_0437,kmp_s_0605r_0437,kmp_s_1355r_0437,kms_s_0446r_0437,kms_s_0514r_0437,kms_s_0987r_0437,s_0434,s_0446,s_0514,s_0605,s_0987,s_1355), z=(Vmax_r_0437*1/kms_s_0446r_0437*1/kms_s_0514r_0437*1/kms_s_0987r_0437*(s_0446*s_0514*s_0987-s_0434*s_0605*s_1355/Keq_r_0437)/((1+s_0446/kms_s_0446r_0437)*(1+s_0514/kms_s_0514r_0437)*(1+s_0987/kms_s_0987r_0437)+(1+s_0434/kmp_s_0434r_0437)*(1+s_0605/kmp_s_0605r_0437)*(1+s_1355/kmp_s_1355r_0437)-1)/intracellular);end

function z=function_114(Keq_r_0439,Vmax_r_0439,intracellular,kmp_s_0446r_0439,kmp_s_0514r_0439,kmp_s_1329r_0439,kms_s_0434r_0439,kms_s_0605r_0439,kms_s_1334r_0439,s_0434,s_0446,s_0514,s_0605,s_1329,s_1334), z=(Vmax_r_0439*1/kms_s_0434r_0439*1/kms_s_0605r_0439*1/kms_s_1334r_0439*(s_0434*s_0605*s_1334-s_0446*s_0514*s_1329/Keq_r_0439)/((1+s_0434/kms_s_0434r_0439)*(1+s_0605/kms_s_0605r_0439)*(1+s_1334/kms_s_1334r_0439)+(1+s_0446/kmp_s_0446r_0439)*(1+s_0514/kmp_s_0514r_0439)*(1+s_1329/kmp_s_1329r_0439)-1)/intracellular);end

function z=function_115(Keq_r_0442,Vmax_r_0442,intracellular,kmp_s_0446r_0442,kmp_s_0514r_0442,kmp_s_1132r_0442,kms_s_0434r_0442,kms_s_0605r_0442,kms_s_1140r_0442,s_0434,s_0446,s_0514,s_0605,s_1132,s_1140), z=(Vmax_r_0442*1/kms_s_0434r_0442*1/kms_s_0605r_0442*1/kms_s_1140r_0442*(s_0434*s_0605*s_1140-s_0446*s_0514*s_1132/Keq_r_0442)/((1+s_0434/kms_s_0434r_0442)*(1+s_0605/kms_s_0605r_0442)*(1+s_1140/kms_s_1140r_0442)+(1+s_0446/kmp_s_0446r_0442)*(1+s_0514/kmp_s_0514r_0442)*(1+s_1132/kmp_s_1132r_0442)-1)/intracellular);end

function z=function_116(Keq_r_0464,Vmax_r_0464,intracellular,kmp_s_0470r_0464,kmp_s_0514r_0464,kmp_s_0977r_0464,kmp_s_1091r_0464,kmp_s_1434_br_0464,kms_s_0582r_0464,kms_s_0763_br_0464,kms_s_1005r_0464,kms_s_1096r_0464,s_0470,s_0514,s_0582,s_0763_b,s_0977,s_1005,s_1091,s_1096,s_1434_b), z=(Vmax_r_0464*1/kms_s_0582r_0464*(1/kms_s_0763_br_0464)^3*1/kms_s_1005r_0464*(1/kms_s_1096r_0464)^2*(s_0582*s_0763_b^3*s_1005*s_1096^2-s_0470*s_0514*s_0977*s_1091^2*s_1434_b/Keq_r_0464)/((1+s_0582/kms_s_0582r_0464)*(1+s_0763_b/kms_s_0763_br_0464)*(1+s_1005/kms_s_1005r_0464)*(1+s_1096/kms_s_1096r_0464)+(1+s_0470/kmp_s_0470r_0464)*(1+s_0514/kmp_s_0514r_0464)*(1+s_0977/kmp_s_0977r_0464)*(1+s_1091/kmp_s_1091r_0464)*(1+s_1434_b/kmp_s_1434_br_0464)-1)/intracellular);end

function z=function_77(Keq_r_0304,Vmax_r_0304,intracellular,kmp_s_1258r_0304,kms_s_0500r_0304,s_0500,s_1258), z=(Vmax_r_0304*1/kms_s_0500r_0304*(s_0500-s_1258/Keq_r_0304)/(1+s_0500/kms_s_0500r_0304+1+s_1258/kmp_s_1258r_0304-1)/intracellular);end

function z=function_78(Keq_r_0306,Vmax_r_0306,intracellular,kmp_s_0500r_0306,kmp_s_1207r_0306,kms_s_0330r_0306,s_0330,s_0500,s_1207), z=(Vmax_r_0306*1/kms_s_0330r_0306*(s_0330-s_0500*s_1207/Keq_r_0306)/(1+s_0330/kms_s_0330r_0306+(1+s_0500/kmp_s_0500r_0306)*(1+s_1207/kmp_s_1207r_0306)-1)/intracellular);end

function z=function_79(Keq_r_0307,Vmax_r_0307,intracellular,kmp_s_0847r_0307,kms_s_0501r_0307,kms_s_1434_br_0307,s_0501,s_0847,s_1434_b), z=(Vmax_r_0307*1/kms_s_0501r_0307*1/kms_s_1434_br_0307*(s_0501*s_1434_b-s_0847/Keq_r_0307)/((1+s_0501/kms_s_0501r_0307)*(1+s_1434_b/kms_s_1434_br_0307)+1+s_0847/kmp_s_0847r_0307-1)/intracellular);end

function z=function_80(Keq_r_0328,Vmax_r_0328,intracellular,kmp_s_0507r_0328,kmp_s_0514r_0328,kmp_s_0763_br_0328,kms_s_0380r_0328,kms_s_1156r_0328,kms_s_1434_br_0328,s_0380,s_0507,s_0514,s_0763_b,s_1156,s_1434_b), z=(Vmax_r_0328*1/kms_s_0380r_0328*1/kms_s_1156r_0328*1/kms_s_1434_br_0328*(s_0380*s_1156*s_1434_b-s_0507*s_0514*s_0763_b/Keq_r_0328)/((1+s_0380/kms_s_0380r_0328)*(1+s_1156/kms_s_1156r_0328)*(1+s_1434_b/kms_s_1434_br_0328)+(1+s_0507/kmp_s_0507r_0328)*(1+s_0514/kmp_s_0514r_0328)*(1+s_0763_b/kmp_s_0763_br_0328)-1)/intracellular);end

function z=function_81(Keq_r_0330,Vmax_r_0330,intracellular,kmp_s_0501r_0330,kmp_s_1434_br_0330,kms_s_0507r_0330,s_0501,s_0507,s_1434_b), z=(Vmax_r_0330*1/kms_s_0507r_0330*(s_0507-s_0501*s_1434_b/Keq_r_0330)/(1+s_0507/kms_s_0507r_0330+(1+s_0501/kmp_s_0501r_0330)*(1+s_1434_b/kmp_s_1434_br_0330)-1)/intracellular);end

function z=function_82(Keq_r_0336,Vmax_r_0336,intracellular,kmp_s_0400r_0336,kmp_s_0521r_0336,kmp_s_0763_br_0336,kmp_s_1207r_0336,kms_s_0430r_0336,kms_s_0446r_0336,kms_s_1430r_0336,s_0400,s_0430,s_0446,s_0521,s_0763_b,s_1207,s_1430), z=(Vmax_r_0336*1/kms_s_0430r_0336*1/kms_s_0446r_0336*1/kms_s_1430r_0336*(s_0430*s_0446*s_1430-s_0400*s_0521*s_0763_b^2*s_1207/Keq_r_0336)/((1+s_0430/kms_s_0430r_0336)*(1+s_0446/kms_s_0446r_0336)*(1+s_1430/kms_s_1430r_0336)+(1+s_0400/kmp_s_0400r_0336)*(1+s_0521/kmp_s_0521r_0336)*(1+s_0763_b/kmp_s_0763_br_0336)*(1+s_1207/kmp_s_1207r_0336)-1)/intracellular);end

function z=function_83(Keq_r_0338,Vmax_r_0338,intracellular,kmp_s_0888r_0338,kmp_s_1434_br_0338,kms_s_0917r_0338,kms_s_0943r_0338,s_0888,s_0917,s_0943,s_1434_b), z=(Vmax_r_0338*1/kms_s_0917r_0338*1/kms_s_0943r_0338*(s_0917*s_0943-s_0888*s_1434_b/Keq_r_0338)/((1+s_0917/kms_s_0917r_0338)*(1+s_0943/kms_s_0943r_0338)+(1+s_0888/kmp_s_0888r_0338)*(1+s_1434_b/kmp_s_1434_br_0338)-1)/intracellular);end

function z=function_84(Keq_r_0339,Vmax_r_0339,intracellular,kmp_s_0183r_0339,kmp_s_0430r_0339,kmp_s_0889r_0339,kms_s_0888r_0339,kms_s_1434_br_0339,s_0183,s_0430,s_0888,s_0889,s_1434_b), z=(Vmax_r_0339*1/kms_s_0888r_0339*1/kms_s_1434_br_0339*(s_0888*s_1434_b-s_0183*s_0430*s_0889/Keq_r_0339)/((1+s_0888/kms_s_0888r_0339)*(1+s_1434_b/kms_s_1434_br_0339)+(1+s_0183/kmp_s_0183r_0339)*(1+s_0430/kmp_s_0430r_0339)*(1+s_0889/kmp_s_0889r_0339)-1)/intracellular);end

function z=function_85(Keq_r_0340,Vmax_r_0340,intracellular,kmp_s_0369r_0340,kmp_s_0763_br_0340,kmp_s_0888r_0340,kms_s_0889r_0340,kms_s_1117r_0340,s_0369,s_0763_b,s_0888,s_0889,s_1117), z=(Vmax_r_0340*1/kms_s_0889r_0340*1/kms_s_1117r_0340*(s_0889*s_1117-s_0369*s_0763_b*s_0888/Keq_r_0340)/((1+s_0889/kms_s_0889r_0340)*(1+s_1117/kms_s_1117r_0340)+(1+s_0369/kmp_s_0369r_0340)*(1+s_0763_b/kmp_s_0763_br_0340)*(1+s_0888/kmp_s_0888r_0340)-1)/intracellular);end

function z=function_86(Keq_r_0345,Vmax_r_0345,intracellular,kmp_s_0446r_0345,kmp_s_0511r_0345,kms_s_0400r_0345,kms_s_0481r_0345,s_0400,s_0446,s_0481,s_0511), z=(Vmax_r_0345*1/kms_s_0400r_0345*1/kms_s_0481r_0345*(s_0400*s_0481-s_0446*s_0511/Keq_r_0345)/((1+s_0400/kms_s_0400r_0345)*(1+s_0481/kms_s_0481r_0345)+(1+s_0446/kmp_s_0446r_0345)*(1+s_0511/kmp_s_0511r_0345)-1)/intracellular);end

function z=function_87(Keq_r_0347,Vmax_r_0347,intracellular,kmp_s_0268r_0347,kmp_s_0689r_0347,kmp_s_1082r_0347,kmp_s_1434_br_0347,kms_s_0763_br_0347,kms_s_0963r_0347,kms_s_1087r_0347,kms_s_1160r_0347,s_0268,s_0689,s_0763_b,s_0963,s_1082,s_1087,s_1160,s_1434_b), z=(Vmax_r_0347*(1/kms_s_0763_br_0347)^2*1/kms_s_0963r_0347*(1/kms_s_1087r_0347)^3*(1/kms_s_1160r_0347)^3*(s_0763_b^2*s_0963*s_1087^3*s_1160^3-s_0268*s_0689*s_1082^3*s_1434_b^4/Keq_r_0347)/((1+s_0763_b/kms_s_0763_br_0347)*(1+s_0963/kms_s_0963r_0347)*(1+s_1087/kms_s_1087r_0347)*(1+s_1160/kms_s_1160r_0347)+(1+s_0268/kmp_s_0268r_0347)*(1+s_0689/kmp_s_0689r_0347)*(1+s_1082/kmp_s_1082r_0347)*(1+s_1434_b/kmp_s_1434_br_0347)-1)/intracellular);end

function z=function_88(Keq_r_0351,Vmax_r_0351,intracellular,kmp_s_0530r_0351,kmp_s_1082r_0351,kms_s_0529r_0351,kms_s_0763_br_0351,kms_s_1087r_0351,s_0529,s_0530,s_0763_b,s_1082,s_1087), z=(Vmax_r_0351*1/kms_s_0529r_0351*1/kms_s_0763_br_0351*1/kms_s_1087r_0351*(s_0529*s_0763_b*s_1087-s_0530*s_1082/Keq_r_0351)/((1+s_0529/kms_s_0529r_0351)*(1+s_0763_b/kms_s_0763_br_0351)*(1+s_1087/kms_s_1087r_0351)+(1+s_0530/kmp_s_0530r_0351)*(1+s_1082/kmp_s_1082r_0351)-1)/intracellular);end

function z=function_89(Keq_r_0352,Vmax_r_0352,intracellular,kmp_s_0529r_0352,kmp_s_0763_br_0352,kmp_s_1096r_0352,kms_s_0530r_0352,kms_s_1091r_0352,s_0529,s_0530,s_0763_b,s_1091,s_1096), z=(Vmax_r_0352*1/kms_s_0530r_0352*1/kms_s_1091r_0352*(s_0530*s_1091-s_0529*s_0763_b*s_1096/Keq_r_0352)/((1+s_0530/kms_s_0530r_0352)*(1+s_1091/kms_s_1091r_0352)+(1+s_0529/kmp_s_0529r_0352)*(1+s_0763_b/kmp_s_0763_br_0352)*(1+s_1096/kmp_s_1096r_0352)-1)/intracellular);end

function z=function_90(Keq_r_0357,Vmax_r_0357,intracellular,kmp_s_0569r_0357,kmp_s_0763_br_0357,kmp_s_1434_br_0357,kms_s_0430r_0357,kms_s_0624r_0357,s_0430,s_0569,s_0624,s_0763_b,s_1434_b), z=(Vmax_r_0357*1/kms_s_0430r_0357*1/kms_s_0624r_0357*(s_0430*s_0624-s_0569*s_0763_b*s_1434_b/Keq_r_0357)/((1+s_0430/kms_s_0430r_0357)*(1+s_0624/kms_s_0624r_0357)+(1+s_0569/kmp_s_0569r_0357)*(1+s_0763_b/kmp_s_0763_br_0357)*(1+s_1434_b/kmp_s_1434_br_0357)-1)/intracellular);end

function z=function_91(Keq_r_0360,Vmax_r_0360,intracellular,kmp_s_0446r_0360,kmp_s_0564r_0360,kms_s_0400r_0360,kms_s_0562r_0360,s_0400,s_0446,s_0562,s_0564), z=(Vmax_r_0360*1/kms_s_0400r_0360*1/kms_s_0562r_0360*(s_0400*s_0562-s_0446*s_0564/Keq_r_0360)/((1+s_0400/kms_s_0400r_0360)*(1+s_0562/kms_s_0562r_0360)+(1+s_0446/kmp_s_0446r_0360)*(1+s_0564/kmp_s_0564r_0360)-1)/intracellular);end

function z=function_92(Keq_r_0362,Vmax_r_0362,intracellular,kmp_s_0446r_0362,kmp_s_0593r_0362,kms_s_0400r_0362,kms_s_0591r_0362,s_0400,s_0446,s_0591,s_0593), z=(Vmax_r_0362*1/kms_s_0400r_0362*1/kms_s_0591r_0362*(s_0400*s_0591-s_0446*s_0593/Keq_r_0362)/((1+s_0400/kms_s_0400r_0362)*(1+s_0591/kms_s_0591r_0362)+(1+s_0446/kmp_s_0446r_0362)*(1+s_0593/kmp_s_0593r_0362)-1)/intracellular);end

function z=function_93(Keq_r_0370,Vmax_r_0370,intracellular,kmp_s_0514r_0370,kmp_s_0763_br_0370,kmp_s_1399r_0370,kms_s_0386r_0370,kms_s_0596r_0370,s_0386,s_0514,s_0596,s_0763_b,s_1399), z=(Vmax_r_0370*1/kms_s_0386r_0370*1/kms_s_0596r_0370*(s_0386*s_0596-s_0514*s_0763_b^4*s_1399/Keq_r_0370)/((1+s_0386/kms_s_0386r_0370)*(1+s_0596/kms_s_0596r_0370)+(1+s_0514/kmp_s_0514r_0370)*(1+s_0763_b/kmp_s_0763_br_0370)*(1+s_1399/kmp_s_1399r_0370)-1)/intracellular);end

function z=function_36(Keq_r_0159,Vmax_r_0159,intracellular,kmp_s_0393r_0159,kmp_s_0917r_0159,kms_s_1290r_0159,kms_s_1434_br_0159,s_0393,s_0917,s_1290,s_1434_b), z=(Vmax_r_0159*1/kms_s_1290r_0159*1/kms_s_1434_br_0159*(s_1290*s_1434_b-s_0393*s_0917/Keq_r_0159)/((1+s_1290/kms_s_1290r_0159)*(1+s_1434_b/kms_s_1434_br_0159)+(1+s_0393/kmp_s_0393r_0159)*(1+s_0917/kmp_s_0917r_0159)-1)/intracellular);end

function z=function_37(Keq_r_0163,Vmax_r_0163,intracellular,kmp_s_0434r_0163,kmp_s_0446r_0163,kms_s_0400r_0163,s_0400,s_0434,s_0446), z=(Vmax_r_0163*(1/kms_s_0400r_0163)^2*(s_0400^2-s_0434*s_0446/Keq_r_0163)/(1+s_0400/kms_s_0400r_0163+(1+s_0434/kmp_s_0434r_0163)*(1+s_0446/kmp_s_0446r_0163)-1)/intracellular);end

function z=function_38(Keq_r_0165,Vmax_r_0165,intracellular,kmp_s_0434r_0165,kmp_s_0755r_0165,kms_s_0400r_0165,kms_s_0706r_0165,s_0400,s_0434,s_0706,s_0755), z=(Vmax_r_0165*1/kms_s_0400r_0165*1/kms_s_0706r_0165*(s_0400*s_0706-s_0434*s_0755/Keq_r_0165)/((1+s_0400/kms_s_0400r_0165)*(1+s_0706/kms_s_0706r_0165)+(1+s_0434/kmp_s_0434r_0165)*(1+s_0755/kmp_s_0755r_0165)-1)/intracellular);end

function z=function_39(Keq_r_0169,Vmax_r_0169,intracellular,kmp_s_0317r_0169,kmp_s_0692r_0169,kms_s_0009r_0169,s_0009,s_0317,s_0692), z=(Vmax_r_0169*1/kms_s_0009r_0169*(s_0009-s_0317*s_0692/Keq_r_0169)/(1+s_0009/kms_s_0009r_0169+(1+s_0317/kmp_s_0317r_0169)*(1+s_0692/kmp_s_0692r_0169)-1)/intracellular);end

function z=function_40(Keq_r_0170,Vmax_r_0170,intracellular,kmp_s_0706r_0170,kmp_s_0763_br_0170,kmp_s_1053r_0170,kmp_s_1207r_0170,kms_s_0755r_0170,kms_s_0816r_0170,kms_s_0881r_0170,s_0706,s_0755,s_0763_b,s_0816,s_0881,s_1053,s_1207), z=(Vmax_r_0170*1/kms_s_0755r_0170*1/kms_s_0816r_0170*1/kms_s_0881r_0170*(s_0755*s_0816*s_0881-s_0706*s_0763_b^2*s_1053*s_1207/Keq_r_0170)/((1+s_0755/kms_s_0755r_0170)*(1+s_0816/kms_s_0816r_0170)*(1+s_0881/kms_s_0881r_0170)+(1+s_0706/kmp_s_0706r_0170)*(1+s_0763_b/kmp_s_0763_br_0170)*(1+s_1053/kmp_s_1053r_0170)*(1+s_1207/kmp_s_1207r_0170)-1)/intracellular);end

function z=function_41(Keq_r_0171,Vmax_r_0171,intracellular,kmp_s_0434r_0171,kmp_s_0692r_0171,kms_s_1053r_0171,s_0434,s_0692,s_1053), z=(Vmax_r_0171*1/kms_s_1053r_0171*(s_1053-s_0434*s_0692/Keq_r_0171)/(1+s_1053/kms_s_1053r_0171+(1+s_0434/kmp_s_0434r_0171)*(1+s_0692/kmp_s_0692r_0171)-1)/intracellular);end

function z=function_42(Keq_r_0172,Vmax_r_0172,intracellular,kmp_s_0206r_0172,kmp_s_0400r_0172,kmp_s_0763_br_0172,kms_s_0304r_0172,kms_s_0446r_0172,s_0206,s_0304,s_0400,s_0446,s_0763_b), z=(Vmax_r_0172*1/kms_s_0304r_0172*1/kms_s_0446r_0172*(s_0304*s_0446-s_0206*s_0400*s_0763_b/Keq_r_0172)/((1+s_0304/kms_s_0304r_0172)*(1+s_0446/kms_s_0446r_0172)+(1+s_0206/kmp_s_0206r_0172)*(1+s_0400/kmp_s_0400r_0172)*(1+s_0763_b/kmp_s_0763_br_0172)-1)/intracellular);end

function z=function_43(Keq_r_0174,Vmax_r_0174,intracellular,kmp_s_0740r_0174,kmp_s_1277r_0174,kms_s_0749r_0174,kms_s_0863r_0174,s_0740,s_0749,s_0863,s_1277), z=(Vmax_r_0174*1/kms_s_0749r_0174*1/kms_s_0863r_0174*(s_0749*s_0863-s_0740*s_1277/Keq_r_0174)/((1+s_0749/kms_s_0749r_0174)*(1+s_0863/kms_s_0863r_0174)+(1+s_0740/kmp_s_0740r_0174)*(1+s_1277/kmp_s_1277r_0174)-1)/intracellular);end

function z=function_44(Keq_r_0183,Vmax_r_0183,intracellular,kmp_s_0650r_0183,kmp_s_1082r_0183,kms_s_0366r_0183,kms_s_0763_br_0183,kms_s_1087r_0183,s_0366,s_0650,s_0763_b,s_1082,s_1087), z=(Vmax_r_0183*1/kms_s_0366r_0183*1/kms_s_0763_br_0183*1/kms_s_1087r_0183*(s_0366*s_0763_b*s_1087-s_0650*s_1082/Keq_r_0183)/((1+s_0366/kms_s_0366r_0183)*(1+s_0763_b/kms_s_0763_br_0183)*(1+s_1087/kms_s_1087r_0183)+(1+s_0650/kmp_s_0650r_0183)*(1+s_1082/kmp_s_1082r_0183)-1)/intracellular);end

function z=function_45(Keq_r_0191,Vmax_r_0191,intracellular,kmp_s_0369r_0191,kmp_s_0763_br_0191,kmp_s_1096r_0191,kms_s_0366r_0191,kms_s_1091r_0191,kms_s_1434_br_0191,s_0366,s_0369,s_0763_b,s_1091,s_1096,s_1434_b), z=(Vmax_r_0191*1/kms_s_0366r_0191*1/kms_s_1091r_0191*1/kms_s_1434_br_0191*(s_0366*s_1091*s_1434_b-s_0369*s_0763_b^2*s_1096/Keq_r_0191)/((1+s_0366/kms_s_0366r_0191)*(1+s_1091/kms_s_1091r_0191)*(1+s_1434_b/kms_s_1434_br_0191)+(1+s_0369/kmp_s_0369r_0191)*(1+s_0763_b/kmp_s_0763_br_0191)*(1+s_1096/kmp_s_1096r_0191)-1)/intracellular);end

function z=function_46(Keq_r_0213,Vmax_r_0213,intracellular,kmp_s_0419r_0213,kmp_s_0763_br_0213,kmp_s_1411r_0213,kms_s_0410r_0213,kms_s_1415r_0213,s_0410,s_0419,s_0763_b,s_1411,s_1415), z=(Vmax_r_0213*1/kms_s_0410r_0213*1/kms_s_1415r_0213*(s_0410*s_1415-s_0419*s_0763_b*s_1411/Keq_r_0213)/((1+s_0410/kms_s_0410r_0213)*(1+s_1415/kms_s_1415r_0213)+(1+s_0419/kmp_s_0419r_0213)*(1+s_0763_b/kmp_s_0763_br_0213)*(1+s_1411/kmp_s_1411r_0213)-1)/intracellular);end

function z=function_47(Keq_r_0220,Vmax_r_0220,intracellular,kmp_s_0605r_0220,kmp_s_1066r_0220,kms_s_0331r_0220,kms_s_0439r_0220,s_0331,s_0439,s_0605,s_1066), z=(Vmax_r_0220*1/kms_s_0331r_0220*1/kms_s_0439r_0220*(s_0331*s_0439-s_0605*s_1066/Keq_r_0220)/((1+s_0331/kms_s_0331r_0220)*(1+s_0439/kms_s_0439r_0220)+(1+s_0605/kmp_s_0605r_0220)*(1+s_1066/kmp_s_1066r_0220)-1)/intracellular);end

function z=function_48(Keq_r_0221,Vmax_r_0221,intracellular,kmp_s_0439r_0221,kmp_s_0763_br_0221,kmp_s_0899r_0221,kmp_s_1277r_0221,kms_s_0500r_0221,kms_s_0907r_0221,s_0439,s_0500,s_0763_b,s_0899,s_0907,s_1277), z=(Vmax_r_0221*1/kms_s_0500r_0221*1/kms_s_0907r_0221*(s_0500*s_0907-s_0439*s_0763_b*s_0899*s_1277/Keq_r_0221)/((1+s_0500/kms_s_0500r_0221)*(1+s_0907/kms_s_0907r_0221)+(1+s_0439/kmp_s_0439r_0221)*(1+s_0763_b/kmp_s_0763_br_0221)*(1+s_0899/kmp_s_0899r_0221)*(1+s_1277/kmp_s_1277r_0221)-1)/intracellular);end

function z=function_49(Keq_r_0225,Vmax_r_0225,intracellular,kmp_s_0692r_0225,kmp_s_0873r_0225,kms_s_0017r_0225,s_0017,s_0692,s_0873), z=(Vmax_r_0225*1/kms_s_0017r_0225*(s_0017-s_0692*s_0873/Keq_r_0225)/(1+s_0017/kms_s_0017r_0225+(1+s_0692/kmp_s_0692r_0225)*(1+s_0873/kmp_s_0873r_0225)-1)/intracellular);end

function z=function_50(Keq_r_0226,Vmax_r_0226,intracellular,kmp_s_0017r_0226,kmp_s_0434r_0226,kmp_s_0605r_0226,kmp_s_0763_br_0226,kms_s_0446r_0226,kms_s_0881r_0226,kms_s_0887r_0226,s_0017,s_0434,s_0446,s_0605,s_0763_b,s_0881,s_0887), z=(Vmax_r_0226*1/kms_s_0446r_0226*1/kms_s_0881r_0226*1/kms_s_0887r_0226*(s_0446*s_0881*s_0887-s_0017*s_0434*s_0605*s_0763_b/Keq_r_0226)/((1+s_0446/kms_s_0446r_0226)*(1+s_0881/kms_s_0881r_0226)*(1+s_0887/kms_s_0887r_0226)+(1+s_0017/kmp_s_0017r_0226)*(1+s_0434/kmp_s_0434r_0226)*(1+s_0605/kmp_s_0605r_0226)*(1+s_0763_b/kmp_s_0763_br_0226)-1)/intracellular);end

function z=function_51(Keq_r_0229,Vmax_r_0229,intracellular,kmp_s_0434r_0229,kmp_s_0605r_0229,kmp_s_0763_br_0229,kmp_s_0877r_0229,kmp_s_0899r_0229,kms_s_0446r_0229,kms_s_0881r_0229,kms_s_0907r_0229,kms_s_1434_br_0229,s_0434,s_0446,s_0605,s_0763_b,s_0877,s_0881,s_0899,s_0907,s_1434_b), z=(Vmax_r_0229*1/kms_s_0446r_0229*1/kms_s_0881r_0229*1/kms_s_0907r_0229*1/kms_s_1434_br_0229*(s_0446*s_0881*s_0907*s_1434_b-s_0434*s_0605*s_0763_b*s_0877*s_0899/Keq_r_0229)/((1+s_0446/kms_s_0446r_0229)*(1+s_0881/kms_s_0881r_0229)*(1+s_0907/kms_s_0907r_0229)*(1+s_1434_b/kms_s_1434_br_0229)+(1+s_0434/kmp_s_0434r_0229)*(1+s_0605/kmp_s_0605r_0229)*(1+s_0763_b/kmp_s_0763_br_0229)*(1+s_0877/kmp_s_0877r_0229)*(1+s_0899/kmp_s_0899r_0229)-1)/intracellular);end

function z=function_53(Keq_r_0233,Vmax_r_0233,intracellular,kmp_s_0301r_0233,kmp_s_0400r_0233,kms_s_0446r_0233,kms_s_0881r_0233,s_0301,s_0400,s_0446,s_0881), z=(Vmax_r_0233*1/kms_s_0446r_0233*1/kms_s_0881r_0233*(s_0446*s_0881-s_0301*s_0400/Keq_r_0233)/((1+s_0446/kms_s_0446r_0233)*(1+s_0881/kms_s_0881r_0233)+(1+s_0301/kmp_s_0301r_0233)*(1+s_0400/kmp_s_0400r_0233)-1)/intracellular);end

function z=function_54(Keq_r_0235,Vmax_r_0235,intracellular,kmp_s_0185r_0235,kmp_s_0881r_0235,kms_s_0899r_0235,kms_s_1156r_0235,s_0185,s_0881,s_0899,s_1156), z=(Vmax_r_0235*1/kms_s_0899r_0235*1/kms_s_1156r_0235*(s_0899*s_1156-s_0185*s_0881/Keq_r_0235)/((1+s_0899/kms_s_0899r_0235)*(1+s_1156/kms_s_1156r_0235)+(1+s_0185/kmp_s_0185r_0235)*(1+s_0881/kmp_s_0881r_0235)-1)/intracellular);end

function z=function_1(Keq_r_0005,Vmax_r_0005,intracellular,kmp_s_0001r_0005,kmp_s_0763_br_0005,kmp_s_1411r_0005,kms_s_1415r_0005,s_0001,s_0763_b,s_1411,s_1415), z=(Vmax_r_0005*1/kms_s_1415r_0005*(s_1415-s_0001*s_0763_b*s_1411/Keq_r_0005)/(1+s_1415/kms_s_1415r_0005+(1+s_0001/kmp_s_0001r_0005)*(1+s_0763_b/kmp_s_0763_br_0005)*(1+s_1411/kmp_s_1411r_0005)-1)/intracellular);end

function z=function_2(Keq_r_0006,Vmax_r_0006,intracellular,kmp_s_0743r_0006,kmp_s_1434_br_0006,kms_s_0438r_0006,s_0438,s_0743,s_1434_b), z=(Vmax_r_0006*1/kms_s_0438r_0006*(s_0438-s_0743*s_1434_b/Keq_r_0006)/(1+s_0438/kms_s_0438r_0006+(1+s_0743/kmp_s_0743r_0006)*(1+s_1434_b/kmp_s_1434_br_0006)-1)/intracellular);end

function z=function_3(Keq_r_0008,Vmax_r_0008,intracellular,kmp_s_0315r_0008,kms_s_0079r_0008,s_0079,s_0315), z=(Vmax_r_0008*1/kms_s_0079r_0008*(s_0079-s_0315/Keq_r_0008)/(1+s_0079/kms_s_0079r_0008+1+s_0315/kmp_s_0315r_0008-1)/intracellular);end

function z=function_4(Keq_r_0009,Vmax_r_0009,intracellular,kmp_s_0514r_0009,kmp_s_0763_br_0009,kmp_s_1215r_0009,kms_s_0083r_0009,kms_s_0386r_0009,s_0083,s_0386,s_0514,s_0763_b,s_1215), z=(Vmax_r_0009*1/kms_s_0083r_0009*1/kms_s_0386r_0009*(s_0083*s_0386-s_0514*s_0763_b^4*s_1215/Keq_r_0009)/((1+s_0083/kms_s_0083r_0009)*(1+s_0386/kms_s_0386r_0009)+(1+s_0514/kmp_s_0514r_0009)*(1+s_0763_b/kmp_s_0763_br_0009)*(1+s_1215/kmp_s_1215r_0009)-1)/intracellular);end

function z=function_5(Keq_r_0014,Vmax_r_0014,intracellular,kmp_s_0319r_0014,kmp_s_0430r_0014,kms_s_0146r_0014,kms_s_0763_br_0014,kms_s_1434_br_0014,s_0146,s_0319,s_0430,s_0763_b,s_1434_b), z=(Vmax_r_0014*1/kms_s_0146r_0014*1/kms_s_0763_br_0014*1/kms_s_1434_br_0014*(s_0146*s_0763_b*s_1434_b-s_0319*s_0430/Keq_r_0014)/((1+s_0146/kms_s_0146r_0014)*(1+s_0763_b/kms_s_0763_br_0014)*(1+s_1434_b/kms_s_1434_br_0014)+(1+s_0319/kmp_s_0319r_0014)*(1+s_0430/kmp_s_0430r_0014)-1)/intracellular);end

function z=function_6(Keq_r_0015,Vmax_r_0015,intracellular,kmp_s_0146r_0015,kmp_s_1091r_0015,kms_s_0145r_0015,kms_s_0763_br_0015,kms_s_1096r_0015,s_0145,s_0146,s_0763_b,s_1091,s_1096), z=(Vmax_r_0015*1/kms_s_0145r_0015*1/kms_s_0763_br_0015*1/kms_s_1096r_0015*(s_0145*s_0763_b*s_1096-s_0146*s_1091/Keq_r_0015)/((1+s_0145/kms_s_0145r_0015)*(1+s_0763_b/kms_s_0763_br_0015)*(1+s_1096/kms_s_1096r_0015)+(1+s_0146/kmp_s_0146r_0015)*(1+s_1091/kmp_s_1091r_0015)-1)/intracellular);end

function z=function_7(Keq_r_0016,Vmax_r_0016,intracellular,kmp_s_0042r_0016,kmp_s_0470r_0016,kms_s_0183r_0016,kms_s_0763_br_0016,kms_s_1277r_0016,s_0042,s_0183,s_0470,s_0763_b,s_1277), z=(Vmax_r_0016*1/kms_s_0183r_0016*1/kms_s_0763_br_0016*1/kms_s_1277r_0016*(s_0183*s_0763_b*s_1277-s_0042*s_0470/Keq_r_0016)/((1+s_0183/kms_s_0183r_0016)*(1+s_0763_b/kms_s_0763_br_0016)*(1+s_1277/kms_s_1277r_0016)+(1+s_0042/kmp_s_0042r_0016)*(1+s_0470/kmp_s_0470r_0016)-1)/intracellular);end

function z=function_8(Keq_r_0018,Vmax_r_0018,intracellular,kmp_s_0185r_0018,kmp_s_0861r_0018,kms_s_0181r_0018,kms_s_0899r_0018,s_0181,s_0185,s_0861,s_0899), z=(Vmax_r_0018*1/kms_s_0181r_0018*1/kms_s_0899r_0018*(s_0181*s_0899-s_0185*s_0861/Keq_r_0018)/((1+s_0181/kms_s_0181r_0018)*(1+s_0899/kms_s_0899r_0018)+(1+s_0185/kmp_s_0185r_0018)*(1+s_0861/kmp_s_0861r_0018)-1)/intracellular);end

function z=function_9(Keq_r_0021,Vmax_r_0021,intracellular,kmp_s_0356r_0021,kmp_s_1207r_0021,kms_s_0533r_0021,kms_s_1243r_0021,kms_s_1434_br_0021,s_0356,s_0533,s_1207,s_1243,s_1434_b), z=(Vmax_r_0021*1/kms_s_0533r_0021*1/kms_s_1243r_0021*1/kms_s_1434_br_0021*(s_0533*s_1243*s_1434_b-s_0356*s_1207/Keq_r_0021)/((1+s_0533/kms_s_0533r_0021)*(1+s_1243/kms_s_1243r_0021)*(1+s_1434_b/kms_s_1434_br_0021)+(1+s_0356/kmp_s_0356r_0021)*(1+s_1207/kmp_s_1207r_0021)-1)/intracellular);end

function z=function_10(Keq_r_0025,Vmax_r_0025,intracellular,kmp_s_0170r_0025,kmp_s_1434_br_0025,kms_s_0167r_0025,s_0167,s_0170,s_1434_b), z=(Vmax_r_0025*1/kms_s_0167r_0025*(s_0167-s_0170*s_1434_b/Keq_r_0025)/(1+s_0167/kms_s_0167r_0025+(1+s_0170/kmp_s_0170r_0025)*(1+s_1434_b/kmp_s_1434_br_0025)-1)/intracellular);end

function z=function_11(Keq_r_0026,Vmax_r_0026,intracellular,kmp_s_0167r_0026,kmp_s_0514r_0026,kmp_s_0763_br_0026,kms_s_0238r_0026,kms_s_0380r_0026,kms_s_1434_br_0026,s_0167,s_0238,s_0380,s_0514,s_0763_b,s_1434_b), z=(Vmax_r_0026*1/kms_s_0238r_0026*1/kms_s_0380r_0026*1/kms_s_1434_br_0026*(s_0238*s_0380*s_1434_b-s_0167*s_0514*s_0763_b/Keq_r_0026)/((1+s_0238/kms_s_0238r_0026)*(1+s_0380/kms_s_0380r_0026)*(1+s_1434_b/kms_s_1434_br_0026)+(1+s_0167/kmp_s_0167r_0026)*(1+s_0514/kmp_s_0514r_0026)*(1+s_0763_b/kmp_s_0763_br_0026)-1)/intracellular);end

function z=function_12(Keq_r_0029,Vmax_r_0029,intracellular,kmp_s_0468r_0029,kmp_s_1434_br_0029,kms_s_0798r_0029,s_0468,s_0798,s_1434_b), z=(Vmax_r_0029*1/kms_s_0798r_0029*(s_0798-s_0468*s_1434_b/Keq_r_0029)/(1+s_0798/kms_s_0798r_0029+(1+s_0468/kmp_s_0468r_0029)*(1+s_1434_b/kmp_s_1434_br_0029)-1)/intracellular);end

function z=function_13(Keq_r_0031,Vmax_r_0031,intracellular,kmp_s_0297r_0031,kmp_s_0470r_0031,kms_s_0010r_0031,kms_s_0763_br_0031,s_0010,s_0297,s_0470,s_0763_b), z=(Vmax_r_0031*1/kms_s_0010r_0031*1/kms_s_0763_br_0031*(s_0010*s_0763_b-s_0297*s_0470/Keq_r_0031)/((1+s_0010/kms_s_0010r_0031)*(1+s_0763_b/kms_s_0763_br_0031)+(1+s_0297/kmp_s_0297r_0031)*(1+s_0470/kmp_s_0470r_0031)-1)/intracellular);end

function z=function_14(Keq_r_0034,Vmax_r_0034,intracellular,kmp_s_0434r_0034,kmp_s_1207r_0034,kms_s_0397r_0034,kms_s_1434_br_0034,s_0397,s_0434,s_1207,s_1434_b), z=(Vmax_r_0034*1/kms_s_0397r_0034*1/kms_s_1434_br_0034*(s_0397*s_1434_b-s_0434*s_1207/Keq_r_0034)/((1+s_0397/kms_s_0397r_0034)*(1+s_1434_b/kms_s_1434_br_0034)+(1+s_0434/kmp_s_0434r_0034)*(1+s_1207/kmp_s_1207r_0034)-1)/intracellular);end

function z=function_15(Keq_r_0040,Vmax_r_0040,intracellular,kmp_s_0163r_0040,kmp_s_0689r_0040,kmp_s_0763_br_0040,kms_s_0557r_0040,s_0163,s_0557,s_0689,s_0763_b), z=(Vmax_r_0040*1/kms_s_0557r_0040*(s_0557-s_0163*s_0689*s_0763_b/Keq_r_0040)/(1+s_0557/kms_s_0557r_0040+(1+s_0163/kmp_s_0163r_0040)*(1+s_0689/kmp_s_0689r_0040)*(1+s_0763_b/kmp_s_0763_br_0040)-1)/intracellular);end

function z=function_16(Keq_r_0042,Vmax_r_0042,intracellular,kmp_s_0217r_0042,kmp_s_1434_br_0042,kms_s_0216r_0042,s_0216,s_0217,s_1434_b), z=(Vmax_r_0042*1/kms_s_0216r_0042*(s_0216-s_0217*s_1434_b/Keq_r_0042)/(1+s_0216/kms_s_0216r_0042+(1+s_0217/kmp_s_0217r_0042)*(1+s_1434_b/kmp_s_1434_br_0042)-1)/intracellular);end

function z=function_17(Keq_r_0043,Vmax_r_0043,intracellular,kmp_s_0216r_0043,kmp_s_1207r_0043,kms_s_0356r_0043,s_0216,s_0356,s_1207), z=(Vmax_r_0043*1/kms_s_0356r_0043*(s_0356-s_0216*s_1207/Keq_r_0043)/(1+s_0356/kms_s_0356r_0043+(1+s_0216/kmp_s_0216r_0043)*(1+s_1207/kmp_s_1207r_0043)-1)/intracellular);end

function z=function_18(Keq_r_0044,Vmax_r_0044,intracellular,kmp_s_1091r_0044,kmp_s_1325r_0044,kms_s_0218r_0044,kms_s_0763_br_0044,kms_s_1096r_0044,s_0218,s_0763_b,s_1091,s_1096,s_1325), z=(Vmax_r_0044*1/kms_s_0218r_0044*(1/kms_s_0763_br_0044)^2*1/kms_s_1096r_0044*(s_0218*s_0763_b^2*s_1096-s_1091*s_1325/Keq_r_0044)/((1+s_0218/kms_s_0218r_0044)*(1+s_0763_b/kms_s_0763_br_0044)*(1+s_1096/kms_s_1096r_0044)+(1+s_1091/kmp_s_1091r_0044)*(1+s_1325/kmp_s_1325r_0044)-1)/intracellular);end

function z=function_19(Keq_r_0057,Vmax_r_0057,intracellular,kmp_s_0046r_0057,kmp_s_1082r_0057,kms_s_0247r_0057,kms_s_0763_br_0057,kms_s_1087r_0057,s_0046,s_0247,s_0763_b,s_1082,s_1087), z=(Vmax_r_0057*1/kms_s_0247r_0057*1/kms_s_0763_br_0057*1/kms_s_1087r_0057*(s_0247*s_0763_b*s_1087-s_0046*s_1082/Keq_r_0057)/((1+s_0247/kms_s_0247r_0057)*(1+s_0763_b/kms_s_0763_br_0057)*(1+s_1087/kms_s_1087r_0057)+(1+s_0046/kmp_s_0046r_0057)*(1+s_1082/kmp_s_1082r_0057)-1)/intracellular);end

function z=function_20(Keq_r_0058,Vmax_r_0058,intracellular,kmp_s_0052r_0058,kmp_s_1082r_0058,kms_s_0257r_0058,kms_s_0763_br_0058,kms_s_1087r_0058,s_0052,s_0257,s_0763_b,s_1082,s_1087), z=(Vmax_r_0058*1/kms_s_0257r_0058*1/kms_s_0763_br_0058*1/kms_s_1087r_0058*(s_0257*s_0763_b*s_1087-s_0052*s_1082/Keq_r_0058)/((1+s_0257/kms_s_0257r_0058)*(1+s_0763_b/kms_s_0763_br_0058)*(1+s_1087/kms_s_1087r_0058)+(1+s_0052/kmp_s_0052r_0058)*(1+s_1082/kmp_s_1082r_0058)-1)/intracellular);end

function z=function_21(Keq_r_0059,Vmax_r_0059,intracellular,kmp_s_0234r_0059,kmp_s_1082r_0059,kms_s_0254r_0059,kms_s_0763_br_0059,kms_s_1087r_0059,s_0234,s_0254,s_0763_b,s_1082,s_1087), z=(Vmax_r_0059*1/kms_s_0254r_0059*1/kms_s_0763_br_0059*1/kms_s_1087r_0059*(s_0254*s_0763_b*s_1087-s_0234*s_1082/Keq_r_0059)/((1+s_0254/kms_s_0254r_0059)*(1+s_0763_b/kms_s_0763_br_0059)*(1+s_1087/kms_s_1087r_0059)+(1+s_0234/kmp_s_0234r_0059)*(1+s_1082/kmp_s_1082r_0059)-1)/intracellular);end

function z=function_22(Keq_r_0060,Vmax_r_0060,intracellular,kmp_s_0055r_0060,kmp_s_1082r_0060,kms_s_0261r_0060,kms_s_0763_br_0060,kms_s_1087r_0060,s_0055,s_0261,s_0763_b,s_1082,s_1087), z=(Vmax_r_0060*1/kms_s_0261r_0060*1/kms_s_0763_br_0060*1/kms_s_1087r_0060*(s_0261*s_0763_b*s_1087-s_0055*s_1082/Keq_r_0060)/((1+s_0261/kms_s_0261r_0060)*(1+s_0763_b/kms_s_0763_br_0060)*(1+s_1087/kms_s_1087r_0060)+(1+s_0055/kmp_s_0055r_0060)*(1+s_1082/kmp_s_1082r_0060)-1)/intracellular);end

function z=function_23(Keq_r_0063,Vmax_r_0063,intracellular,kmp_s_0008r_0063,kms_s_0170r_0063,kms_s_1434_br_0063,s_0008,s_0170,s_1434_b), z=(Vmax_r_0063*1/kms_s_0170r_0063*1/kms_s_1434_br_0063*(s_0170*s_1434_b-s_0008/Keq_r_0063)/((1+s_0170/kms_s_0170r_0063)*(1+s_1434_b/kms_s_1434_br_0063)+1+s_0008/kmp_s_0008r_0063-1)/intracellular);end

function z=function_24(Keq_r_0064,Vmax_r_0064,intracellular,kmp_s_0010r_0064,kmp_s_0763_br_0064,kmp_s_1087r_0064,kms_s_0008r_0064,kms_s_1082r_0064,s_0008,s_0010,s_0763_b,s_1082,s_1087), z=(Vmax_r_0064*1/kms_s_0008r_0064*1/kms_s_1082r_0064*(s_0008*s_1082-s_0010*s_0763_b*s_1087/Keq_r_0064)/((1+s_0008/kms_s_0008r_0064)*(1+s_1082/kms_s_1082r_0064)+(1+s_0010/kmp_s_0010r_0064)*(1+s_0763_b/kmp_s_0763_br_0064)*(1+s_1087/kmp_s_1087r_0064)-1)/intracellular);end

function z=function_25(Keq_r_0068,Vmax_r_0068,intracellular,kmp_s_0330r_0068,kmp_s_1207r_0068,kms_s_0267r_0068,kms_s_1243r_0068,s_0267,s_0330,s_1207,s_1243), z=(Vmax_r_0068*1/kms_s_0267r_0068*1/kms_s_1243r_0068*(s_0267*s_1243-s_0330*s_1207/Keq_r_0068)/((1+s_0267/kms_s_0267r_0068)*(1+s_1243/kms_s_1243r_0068)+(1+s_0330/kmp_s_0330r_0068)*(1+s_1207/kmp_s_1207r_0068)-1)/intracellular);end

function z=function_26(Keq_r_0093,Vmax_r_0093,intracellular,kmp_s_0328r_0093,kmp_s_1091r_0093,kms_s_0307r_0093,kms_s_0763_br_0093,kms_s_1096r_0093,s_0307,s_0328,s_0763_b,s_1091,s_1096), z=(Vmax_r_0093*1/kms_s_0307r_0093*(1/kms_s_0763_br_0093)^2*1/kms_s_1096r_0093*(s_0307*s_0763_b^2*s_1096-s_0328*s_1091/Keq_r_0093)/((1+s_0307/kms_s_0307r_0093)*(1+s_0763_b/kms_s_0763_br_0093)*(1+s_1096/kms_s_1096r_0093)+(1+s_0328/kmp_s_0328r_0093)*(1+s_1091/kmp_s_1091r_0093)-1)/intracellular);end

function z=function_27(Keq_r_0111,Vmax_r_0111,intracellular,kmp_s_0018r_0111,kmp_s_1091r_0111,kms_s_0150r_0111,kms_s_0763_br_0111,kms_s_1096r_0111,s_0018,s_0150,s_0763_b,s_1091,s_1096), z=(Vmax_r_0111*1/kms_s_0150r_0111*1/kms_s_0763_br_0111*1/kms_s_1096r_0111*(s_0150*s_0763_b*s_1096-s_0018*s_1091/Keq_r_0111)/((1+s_0150/kms_s_0150r_0111)*(1+s_0763_b/kms_s_0763_br_0111)*(1+s_1096/kms_s_1096r_0111)+(1+s_0018/kmp_s_0018r_0111)*(1+s_1091/kmp_s_1091r_0111)-1)/intracellular);end

function z=function_28(Keq_r_0112,Vmax_r_0112,intracellular,kmp_s_0150r_0112,kmp_s_0470r_0112,kms_s_0763_br_0112,kms_s_1277r_0112,s_0150,s_0470,s_0763_b,s_1277), z=(Vmax_r_0112*1/kms_s_0763_br_0112*(1/kms_s_1277r_0112)^2*(s_0763_b*s_1277^2-s_0150*s_0470/Keq_r_0112)/((1+s_0763_b/kms_s_0763_br_0112)*(1+s_1277/kms_s_1277r_0112)+(1+s_0150/kmp_s_0150r_0112)*(1+s_0470/kmp_s_0470r_0112)-1)/intracellular);end

function z=function_29(Keq_r_0118,Vmax_r_0118,intracellular,kmp_s_0374r_0118,kmp_s_0514r_0118,kms_s_0380r_0118,s_0374,s_0380,s_0514), z=(Vmax_r_0118*(1/kms_s_0380r_0118)^2*(s_0380^2-s_0374*s_0514/Keq_r_0118)/(1+s_0380/kms_s_0380r_0118+(1+s_0374/kmp_s_0374r_0118)*(1+s_0514/kmp_s_0514r_0118)-1)/intracellular);end

function z=function_30(Keq_r_0123,Vmax_r_0123,intracellular,kmp_s_0400r_0123,kmp_s_0763_br_0123,kmp_s_1005r_0123,kmp_s_1207r_0123,kms_s_0380r_0123,kms_s_0446r_0123,kms_s_0458r_0123,s_0380,s_0400,s_0446,s_0458,s_0763_b,s_1005,s_1207), z=(Vmax_r_0123*1/kms_s_0380r_0123*1/kms_s_0446r_0123*1/kms_s_0458r_0123*(s_0380*s_0446*s_0458-s_0400*s_0763_b*s_1005*s_1207/Keq_r_0123)/((1+s_0380/kms_s_0380r_0123)*(1+s_0446/kms_s_0446r_0123)*(1+s_0458/kms_s_0458r_0123)+(1+s_0400/kmp_s_0400r_0123)*(1+s_0763_b/kmp_s_0763_br_0123)*(1+s_1005/kmp_s_1005r_0123)*(1+s_1207/kmp_s_1207r_0123)-1)/intracellular);end

function z=function_31(Keq_r_0125,Vmax_r_0125,intracellular,kmp_s_0380r_0125,kmp_s_1434_br_0125,kms_s_0369r_0125,kms_s_0514r_0125,kms_s_0763_br_0125,s_0369,s_0380,s_0514,s_0763_b,s_1434_b), z=(Vmax_r_0125*1/kms_s_0369r_0125*1/kms_s_0514r_0125*1/kms_s_0763_br_0125*(s_0369*s_0514*s_0763_b-s_0380*s_1434_b/Keq_r_0125)/((1+s_0369/kms_s_0369r_0125)*(1+s_0514/kms_s_0514r_0125)*(1+s_0763_b/kms_s_0763_br_0125)+(1+s_0380/kmp_s_0380r_0125)*(1+s_1434_b/kmp_s_1434_br_0125)-1)/intracellular);end

function z=function_32(Keq_r_0127,Vmax_r_0127,intracellular,kmp_s_0369r_0127,kmp_s_0446r_0127,kmp_s_0514r_0127,kms_s_0380r_0127,kms_s_0434r_0127,kms_s_0605r_0127,s_0369,s_0380,s_0434,s_0446,s_0514,s_0605), z=(Vmax_r_0127*1/kms_s_0380r_0127*1/kms_s_0434r_0127*1/kms_s_0605r_0127*(s_0380*s_0434*s_0605-s_0369*s_0446*s_0514/Keq_r_0127)/((1+s_0380/kms_s_0380r_0127)*(1+s_0434/kms_s_0434r_0127)*(1+s_0605/kms_s_0605r_0127)+(1+s_0369/kmp_s_0369r_0127)*(1+s_0446/kmp_s_0446r_0127)*(1+s_0514/kmp_s_0514r_0127)-1)/intracellular);end

function z=function_117(Keq_r_0465,Vmax_r_0465,intracellular,kmp_s_0470r_0465,kmp_s_0514r_0465,kmp_s_1044r_0465,kmp_s_1091r_0465,kmp_s_1434_br_0465,kms_s_0763_br_0465,kms_s_0977r_0465,kms_s_1005r_0465,kms_s_1096r_0465,s_0470,s_0514,s_0763_b,s_0977,s_1005,s_1044,s_1091,s_1096,s_1434_b), z=(Vmax_r_0465*(1/kms_s_0763_br_0465)^3*1/kms_s_0977r_0465*1/kms_s_1005r_0465*(1/kms_s_1096r_0465)^2*(s_0763_b^3*s_0977*s_1005*s_1096^2-s_0470*s_0514*s_1044*s_1091^2*s_1434_b/Keq_r_0465)/((1+s_0763_b/kms_s_0763_br_0465)*(1+s_0977/kms_s_0977r_0465)*(1+s_1005/kms_s_1005r_0465)*(1+s_1096/kms_s_1096r_0465)+(1+s_0470/kmp_s_0470r_0465)*(1+s_0514/kmp_s_0514r_0465)*(1+s_1044/kmp_s_1044r_0465)*(1+s_1091/kmp_s_1091r_0465)*(1+s_1434_b/kmp_s_1434_br_0465)-1)/intracellular);end

function z=function_118(Keq_r_0466,Vmax_r_0466,intracellular,kmp_s_0470r_0466,kmp_s_0514r_0466,kmp_s_1091r_0466,kmp_s_1187r_0466,kmp_s_1434_br_0466,kms_s_0763_br_0466,kms_s_1005r_0466,kms_s_1044r_0466,kms_s_1096r_0466,s_0470,s_0514,s_0763_b,s_1005,s_1044,s_1091,s_1096,s_1187,s_1434_b), z=(Vmax_r_0466*(1/kms_s_0763_br_0466)^3*1/kms_s_1005r_0466*1/kms_s_1044r_0466*(1/kms_s_1096r_0466)^2*(s_0763_b^3*s_1005*s_1044*s_1096^2-s_0470*s_0514*s_1091^2*s_1187*s_1434_b/Keq_r_0466)/((1+s_0763_b/kms_s_0763_br_0466)*(1+s_1005/kms_s_1005r_0466)*(1+s_1044/kms_s_1044r_0466)*(1+s_1096/kms_s_1096r_0466)+(1+s_0470/kmp_s_0470r_0466)*(1+s_0514/kmp_s_0514r_0466)*(1+s_1091/kmp_s_1091r_0466)*(1+s_1187/kmp_s_1187r_0466)*(1+s_1434_b/kmp_s_1434_br_0466)-1)/intracellular);end

function z=function_119(Keq_r_0467,Vmax_r_0467,intracellular,kmp_s_0470r_0467,kmp_s_0514r_0467,kmp_s_1091r_0467,kmp_s_1334r_0467,kmp_s_1434_br_0467,kms_s_0763_br_0467,kms_s_1005r_0467,kms_s_1096r_0467,kms_s_1187r_0467,s_0470,s_0514,s_0763_b,s_1005,s_1091,s_1096,s_1187,s_1334,s_1434_b), z=(Vmax_r_0467*(1/kms_s_0763_br_0467)^3*1/kms_s_1005r_0467*(1/kms_s_1096r_0467)^2*1/kms_s_1187r_0467*(s_0763_b^3*s_1005*s_1096^2*s_1187-s_0470*s_0514*s_1091^2*s_1334*s_1434_b/Keq_r_0467)/((1+s_0763_b/kms_s_0763_br_0467)*(1+s_1005/kms_s_1005r_0467)*(1+s_1096/kms_s_1096r_0467)*(1+s_1187/kms_s_1187r_0467)+(1+s_0470/kmp_s_0470r_0467)*(1+s_0514/kmp_s_0514r_0467)*(1+s_1091/kmp_s_1091r_0467)*(1+s_1334/kmp_s_1334r_0467)*(1+s_1434_b/kmp_s_1434_br_0467)-1)/intracellular);end

function z=function_120(Keq_r_0479,Vmax_r_0479,intracellular,kmp_s_0122r_0479,kmp_s_0400r_0479,kmp_s_1207r_0479,kms_s_0309r_0479,kms_s_0446r_0479,kms_s_0689r_0479,s_0122,s_0309,s_0400,s_0446,s_0689,s_1207), z=(Vmax_r_0479*1/kms_s_0309r_0479*1/kms_s_0446r_0479*1/kms_s_0689r_0479*(s_0309*s_0446*s_0689-s_0122*s_0400*s_1207/Keq_r_0479)/((1+s_0309/kms_s_0309r_0479)*(1+s_0446/kms_s_0446r_0479)*(1+s_0689/kms_s_0689r_0479)+(1+s_0122/kmp_s_0122r_0479)*(1+s_0400/kmp_s_0400r_0479)*(1+s_1207/kmp_s_1207r_0479)-1)/intracellular);end

function z=function_121(Keq_r_0484,Vmax_r_0484,intracellular,kmp_s_0731r_0484,kmp_s_0735r_0484,kms_s_0537r_0484,s_0537,s_0731,s_0735), z=(Vmax_r_0484*1/kms_s_0537r_0484*(s_0537-s_0731*s_0735/Keq_r_0484)/(1+s_0537/kms_s_0537r_0484+(1+s_0731/kmp_s_0731r_0484)*(1+s_0735/kmp_s_0735r_0484)-1)/intracellular);end

function z=function_122(Keq_r_0485,Vmax_r_0485,intracellular,kmp_s_0692r_0485,kmp_s_1434_br_0485,kms_s_0069r_0485,s_0069,s_0692,s_1434_b), z=(Vmax_r_0485*1/kms_s_0069r_0485*(s_0069-s_0692*s_1434_b/Keq_r_0485)/(1+s_0069/kms_s_0069r_0485+(1+s_0692/kmp_s_0692r_0485)*(1+s_1434_b/kmp_s_1434_br_0485)-1)/intracellular);end

function z=function_123(Keq_r_0488,Vmax_r_0488,intracellular,kmp_s_0657r_0488,kmp_s_1338r_0488,kms_s_0659r_0488,kms_s_0692r_0488,s_0657,s_0659,s_0692,s_1338), z=(Vmax_r_0488*1/kms_s_0659r_0488*1/kms_s_0692r_0488*(s_0659*s_0692-s_0657*s_1338/Keq_r_0488)/((1+s_0659/kms_s_0659r_0488)*(1+s_0692/kms_s_0692r_0488)+(1+s_0657/kmp_s_0657r_0488)*(1+s_1338/kmp_s_1338r_0488)-1)/intracellular);end

function z=function_124(Keq_r_0496,Vmax_r_0496,intracellular,kmp_s_0195r_0496,kmp_s_0605r_0496,kms_s_0712r_0496,kms_s_0850r_0496,s_0195,s_0605,s_0712,s_0850), z=(Vmax_r_0496*1/kms_s_0712r_0496*1/kms_s_0850r_0496*(s_0712*s_0850-s_0195*s_0605/Keq_r_0496)/((1+s_0712/kms_s_0712r_0496)*(1+s_0850/kms_s_0850r_0496)+(1+s_0195/kmp_s_0195r_0496)*(1+s_0605/kmp_s_0605r_0496)-1)/intracellular);end

function z=function_125(Keq_r_0499,Vmax_r_0499,intracellular,kmp_s_0400r_0499,kmp_s_0455r_0499,kmp_s_0763_br_0499,kms_s_0446r_0499,kms_s_0545r_0499,s_0400,s_0446,s_0455,s_0545,s_0763_b), z=(Vmax_r_0499*1/kms_s_0446r_0499*1/kms_s_0545r_0499*(s_0446*s_0545-s_0400*s_0455*s_0763_b/Keq_r_0499)/((1+s_0446/kms_s_0446r_0499)*(1+s_0545/kms_s_0545r_0499)+(1+s_0400/kmp_s_0400r_0499)*(1+s_0455/kmp_s_0455r_0499)*(1+s_0763_b/kmp_s_0763_br_0499)-1)/intracellular);end

function z=function_126(Keq_r_0504,Vmax_r_0504,intracellular,kmp_s_0539r_0504,kms_s_0455r_0504,s_0455,s_0539), z=(Vmax_r_0504*1/kms_s_0455r_0504*(s_0455-s_0539/Keq_r_0504)/(1+s_0455/kms_s_0455r_0504+1+s_0539/kmp_s_0539r_0504-1)/intracellular);end

function z=function_127(Keq_r_0505,Vmax_r_0505,intracellular,kmp_s_0539r_0505,kms_s_0410r_0505,s_0410,s_0539), z=(Vmax_r_0505*1/kms_s_0410r_0505*(s_0410-s_0539/Keq_r_0505)/(1+s_0410/kms_s_0410r_0505+1+s_0539/kmp_s_0539r_0505-1)/intracellular);end

function z=function_128(Keq_r_0506,Vmax_r_0506,intracellular,kmp_s_0400r_0506,kmp_s_0894r_0506,kms_s_0446r_0506,kms_s_0899r_0506,s_0400,s_0446,s_0894,s_0899), z=(Vmax_r_0506*1/kms_s_0446r_0506*1/kms_s_0899r_0506*(s_0446*s_0899-s_0400*s_0894/Keq_r_0506)/((1+s_0446/kms_s_0446r_0506)*(1+s_0899/kms_s_0899r_0506)+(1+s_0400/kmp_s_0400r_0506)*(1+s_0894/kmp_s_0894r_0506)-1)/intracellular);end

function z=function_129(Keq_r_0509,Vmax_r_0509,intracellular,kmp_s_0899r_0509,kmp_s_1091r_0509,kmp_s_1434_br_0509,kms_s_0185r_0509,kms_s_0430r_0509,kms_s_0763_br_0509,kms_s_1096r_0509,s_0185,s_0430,s_0763_b,s_0899,s_1091,s_1096,s_1434_b), z=(Vmax_r_0509*1/kms_s_0185r_0509*1/kms_s_0430r_0509*1/kms_s_0763_br_0509*1/kms_s_1096r_0509*(s_0185*s_0430*s_0763_b*s_1096-s_0899*s_1091*s_1434_b/Keq_r_0509)/((1+s_0185/kms_s_0185r_0509)*(1+s_0430/kms_s_0430r_0509)*(1+s_0763_b/kms_s_0763_br_0509)*(1+s_1096/kms_s_1096r_0509)+(1+s_0899/kmp_s_0899r_0509)*(1+s_1091/kmp_s_1091r_0509)*(1+s_1434_b/kmp_s_1434_br_0509)-1)/intracellular);end

function z=function_130(Keq_r_0510,Vmax_r_0510,intracellular,kmp_s_0899r_0510,kmp_s_1082r_0510,kms_s_0185r_0510,kms_s_0763_br_0510,kms_s_0907r_0510,kms_s_1087r_0510,s_0185,s_0763_b,s_0899,s_0907,s_1082,s_1087), z=(Vmax_r_0510*1/kms_s_0185r_0510*1/kms_s_0763_br_0510*1/kms_s_0907r_0510*1/kms_s_1087r_0510*(s_0185*s_0763_b*s_0907*s_1087-s_0899^2*s_1082/Keq_r_0510)/((1+s_0185/kms_s_0185r_0510)*(1+s_0763_b/kms_s_0763_br_0510)*(1+s_0907/kms_s_0907r_0510)*(1+s_1087/kms_s_1087r_0510)+(1+s_0899/kmp_s_0899r_0510)*(1+s_1082/kmp_s_1082r_0510)-1)/intracellular);end

function z=function_55(Keq_r_0238,Vmax_r_0238,intracellular,kmp_s_0886r_0238,kmp_s_1091r_0238,kmp_s_1207r_0238,kms_s_0301r_0238,kms_s_0763_br_0238,kms_s_1096r_0238,s_0301,s_0763_b,s_0886,s_1091,s_1096,s_1207), z=(Vmax_r_0238*1/kms_s_0301r_0238*1/kms_s_0763_br_0238*1/kms_s_1096r_0238*(s_0301*s_0763_b*s_1096-s_0886*s_1091*s_1207/Keq_r_0238)/((1+s_0301/kms_s_0301r_0238)*(1+s_0763_b/kms_s_0763_br_0238)*(1+s_1096/kms_s_1096r_0238)+(1+s_0886/kmp_s_0886r_0238)*(1+s_1091/kmp_s_1091r_0238)*(1+s_1207/kmp_s_1207r_0238)-1)/intracellular);end

function z=function_56(Keq_r_0245,Vmax_r_0245,intracellular,kmp_s_0334r_0245,kmp_s_0605r_0245,kms_s_0331r_0245,kms_s_0446r_0245,s_0331,s_0334,s_0446,s_0605), z=(Vmax_r_0245*1/kms_s_0331r_0245*1/kms_s_0446r_0245*(s_0331*s_0446-s_0334*s_0605/Keq_r_0245)/((1+s_0331/kms_s_0331r_0245)*(1+s_0446/kms_s_0446r_0245)+(1+s_0334/kmp_s_0334r_0245)*(1+s_0605/kmp_s_0605r_0245)-1)/intracellular);end

function z=function_57(Keq_r_0246,Vmax_r_0246,intracellular,kmp_s_0446r_0246,kmp_s_0763_br_0246,kmp_s_1434_br_0246,kms_s_0400r_0246,kms_s_0763_br_0246,kms_s_1207r_0246,s_0400,s_0446,s_0763_b,s_1207,s_1434_b), z=(Vmax_r_0246*1/kms_s_0400r_0246*(1/kms_s_0763_br_0246)^3*1/kms_s_1207r_0246*(s_0400*s_0763_b^3*s_1207-s_0446*s_0763_b^2*s_1434_b/Keq_r_0246)/((1+s_0400/kms_s_0400r_0246)*(1+s_0763_b/kms_s_0763_br_0246)*(1+s_1207/kms_s_1207r_0246)+(1+s_0446/kmp_s_0446r_0246)*(1+s_0763_b/kmp_s_0763_br_0246)*(1+s_1434_b/kmp_s_1434_br_0246)-1)/intracellular);end

function z=function_58(Keq_r_0249,Vmax_r_0249,kmp_s_0400r_0249,kmp_s_0766_br_0249,kmp_s_1207r_0249,kms_s_0446r_0249,kms_s_1434_br_0249,s_0400,s_0446,s_0766_b,s_1207,s_1434_b), z=(Vmax_r_0249*1/kms_s_0446r_0249*1/kms_s_1434_br_0249*(s_0446*s_1434_b-s_0400*s_0766_b*s_1207/Keq_r_0249)/((1+s_0446/kms_s_0446r_0249)*(1+s_1434_b/kms_s_1434_br_0249)+(1+s_0400/kmp_s_0400r_0249)*(1+s_0766_b/kmp_s_0766_br_0249)*(1+s_1207/kmp_s_1207r_0249)-1));end

function z=function_59(Keq_r_0251,Vmax_r_0251,intracellular,kmp_s_0458r_0251,kmp_s_0763_br_0251,kms_s_0470r_0251,kms_s_1434_br_0251,s_0458,s_0470,s_0763_b,s_1434_b), z=(Vmax_r_0251*1/kms_s_0470r_0251*1/kms_s_1434_br_0251*(s_0470*s_1434_b-s_0458*s_0763_b/Keq_r_0251)/((1+s_0470/kms_s_0470r_0251)*(1+s_1434_b/kms_s_1434_br_0251)+(1+s_0458/kmp_s_0458r_0251)*(1+s_0763_b/kmp_s_0763_br_0251)-1)/intracellular);end

function z=function_60(Keq_r_0258,Vmax_r_0258,intracellular,kmp_s_0124r_0258,kmp_s_1091r_0258,kms_s_0268r_0258,kms_s_0763_br_0258,kms_s_1096r_0258,s_0124,s_0268,s_0763_b,s_1091,s_1096), z=(Vmax_r_0258*1/kms_s_0268r_0258*1/kms_s_0763_br_0258*1/kms_s_1096r_0258*(s_0268*s_0763_b*s_1096-s_0124*s_1091/Keq_r_0258)/((1+s_0268/kms_s_0268r_0258)*(1+s_0763_b/kms_s_0763_br_0258)*(1+s_1096/kms_s_1096r_0258)+(1+s_0124/kmp_s_0124r_0258)*(1+s_1091/kmp_s_1091r_0258)-1)/intracellular);end

function z=function_61(Keq_r_0261,Vmax_r_0261,intracellular,kmp_s_0470r_0261,kmp_s_0763_br_0261,kmp_s_1096r_0261,kmp_s_1458r_0261,kms_s_1091r_0261,kms_s_1457r_0261,s_0470,s_0763_b,s_1091,s_1096,s_1457,s_1458), z=(Vmax_r_0261*1/kms_s_1091r_0261*1/kms_s_1457r_0261*(s_1091*s_1457-s_0470*s_0763_b*s_1096*s_1458/Keq_r_0261)/((1+s_1091/kms_s_1091r_0261)*(1+s_1457/kms_s_1457r_0261)+(1+s_0470/kmp_s_0470r_0261)*(1+s_0763_b/kmp_s_0763_br_0261)*(1+s_1096/kmp_s_1096r_0261)*(1+s_1458/kmp_s_1458r_0261)-1)/intracellular);end

function z=function_62(Keq_r_0262,Vmax_r_0262,intracellular,kmp_s_0215r_0262,kmp_s_0470r_0262,kmp_s_0763_br_0262,kmp_s_1087r_0262,kms_s_0303r_0262,kms_s_1082r_0262,s_0215,s_0303,s_0470,s_0763_b,s_1082,s_1087), z=(Vmax_r_0262*1/kms_s_0303r_0262*1/kms_s_1082r_0262*(s_0303*s_1082-s_0215*s_0470*s_0763_b*s_1087/Keq_r_0262)/((1+s_0303/kms_s_0303r_0262)*(1+s_1082/kms_s_1082r_0262)+(1+s_0215/kmp_s_0215r_0262)*(1+s_0470/kmp_s_0470r_0262)*(1+s_0763_b/kmp_s_0763_br_0262)*(1+s_1087/kmp_s_1087r_0262)-1)/intracellular);end

function z=function_63(Keq_r_0263,Vmax_r_0263,intracellular,kmp_s_0302r_0263,kmp_s_1091r_0263,kms_s_0215r_0263,kms_s_0763_br_0263,kms_s_1096r_0263,s_0215,s_0302,s_0763_b,s_1091,s_1096), z=(Vmax_r_0263*1/kms_s_0215r_0263*1/kms_s_0763_br_0263*1/kms_s_1096r_0263*(s_0215*s_0763_b*s_1096-s_0302*s_1091/Keq_r_0263)/((1+s_0215/kms_s_0215r_0263)*(1+s_0763_b/kms_s_0763_br_0263)*(1+s_1096/kms_s_1096r_0263)+(1+s_0302/kmp_s_0302r_0263)*(1+s_1091/kmp_s_1091r_0263)-1)/intracellular);end

function z=function_64(Keq_r_0264,Vmax_r_0264,intracellular,kmp_s_1091r_0264,kmp_s_1447r_0264,kms_s_0763_br_0264,kms_s_1096r_0264,kms_s_1458r_0264,s_0763_b,s_1091,s_1096,s_1447,s_1458), z=(Vmax_r_0264*1/kms_s_0763_br_0264*1/kms_s_1096r_0264*1/kms_s_1458r_0264*(s_0763_b*s_1096*s_1458-s_1091*s_1447/Keq_r_0264)/((1+s_0763_b/kms_s_0763_br_0264)*(1+s_1096/kms_s_1096r_0264)*(1+s_1458/kms_s_1458r_0264)+(1+s_1091/kmp_s_1091r_0264)*(1+s_1447/kmp_s_1447r_0264)-1)/intracellular);end

function z=function_65(Keq_r_0265,Vmax_r_0265,intracellular,kmp_s_1091r_0265,kmp_s_1434_br_0265,kmp_s_1455r_0265,kms_s_0302r_0265,kms_s_0763_br_0265,kms_s_1096r_0265,kms_s_1160r_0265,s_0302,s_0763_b,s_1091,s_1096,s_1160,s_1434_b,s_1455), z=(Vmax_r_0265*1/kms_s_0302r_0265*1/kms_s_0763_br_0265*1/kms_s_1096r_0265*1/kms_s_1160r_0265*(s_0302*s_0763_b*s_1096*s_1160-s_1091*s_1434_b*s_1455/Keq_r_0265)/((1+s_0302/kms_s_0302r_0265)*(1+s_0763_b/kms_s_0763_br_0265)*(1+s_1096/kms_s_1096r_0265)*(1+s_1160/kms_s_1160r_0265)+(1+s_1091/kmp_s_1091r_0265)*(1+s_1434_b/kmp_s_1434_br_0265)*(1+s_1455/kmp_s_1455r_0265)-1)/intracellular);end

function z=function_66(Keq_r_0266,Vmax_r_0266,intracellular,kmp_s_1091r_0266,kmp_s_1434_br_0266,kmp_s_1456r_0266,kms_s_0763_br_0266,kms_s_1096r_0266,kms_s_1160r_0266,kms_s_1455r_0266,s_0763_b,s_1091,s_1096,s_1160,s_1434_b,s_1455,s_1456), z=(Vmax_r_0266*1/kms_s_0763_br_0266*1/kms_s_1096r_0266*1/kms_s_1160r_0266*1/kms_s_1455r_0266*(s_0763_b*s_1096*s_1160*s_1455-s_1091*s_1434_b^2*s_1456/Keq_r_0266)/((1+s_0763_b/kms_s_0763_br_0266)*(1+s_1096/kms_s_1096r_0266)*(1+s_1160/kms_s_1160r_0266)*(1+s_1455/kms_s_1455r_0266)+(1+s_1091/kmp_s_1091r_0266)*(1+s_1434_b/kmp_s_1434_br_0266)*(1+s_1456/kmp_s_1456r_0266)-1)/intracellular);end

function z=function_67(Keq_r_0267,Vmax_r_0267,intracellular,kmp_s_1091r_0267,kmp_s_1434_br_0267,kmp_s_1457r_0267,kms_s_0763_br_0267,kms_s_1096r_0267,kms_s_1160r_0267,kms_s_1456r_0267,s_0763_b,s_1091,s_1096,s_1160,s_1434_b,s_1456,s_1457), z=(Vmax_r_0267*1/kms_s_0763_br_0267*1/kms_s_1096r_0267*1/kms_s_1160r_0267*1/kms_s_1456r_0267*(s_0763_b*s_1096*s_1160*s_1456-s_1091*s_1434_b*s_1457/Keq_r_0267)/((1+s_0763_b/kms_s_0763_br_0267)*(1+s_1096/kms_s_1096r_0267)*(1+s_1160/kms_s_1160r_0267)*(1+s_1456/kms_s_1456r_0267)+(1+s_1091/kmp_s_1091r_0267)*(1+s_1434_b/kmp_s_1434_br_0267)*(1+s_1457/kmp_s_1457r_0267)-1)/intracellular);end

function z=function_68(Keq_r_0268,Vmax_r_0268,intracellular,kmp_s_0303r_0268,kmp_s_1091r_0268,kmp_s_1434_br_0268,kms_s_0124r_0268,kms_s_0763_br_0268,kms_s_1096r_0268,kms_s_1160r_0268,s_0124,s_0303,s_0763_b,s_1091,s_1096,s_1160,s_1434_b), z=(Vmax_r_0268*1/kms_s_0124r_0268*(1/kms_s_0763_br_0268)^3*(1/kms_s_1096r_0268)^3*(1/kms_s_1160r_0268)^3*(s_0124*s_0763_b^3*s_1096^3*s_1160^3-s_0303*s_1091^3*s_1434_b^4/Keq_r_0268)/((1+s_0124/kms_s_0124r_0268)*(1+s_0763_b/kms_s_0763_br_0268)*(1+s_1096/kms_s_1096r_0268)*(1+s_1160/kms_s_1160r_0268)+(1+s_0303/kmp_s_0303r_0268)*(1+s_1091/kmp_s_1091r_0268)*(1+s_1434_b/kmp_s_1434_br_0268)-1)/intracellular);end

function z=function_69(Keq_r_0270,Vmax_r_0270,intracellular,kmp_s_0627r_0270,kms_s_0669r_0270,s_0627,s_0669), z=(Vmax_r_0270*1/kms_s_0669r_0270*(s_0669-s_0627/Keq_r_0270)/(1+s_0669/kms_s_0669r_0270+1+s_0627/kmp_s_0627r_0270-1)/intracellular);end

function z=function_70(Keq_r_0271,Vmax_r_0271,intracellular,kmp_s_0635r_0271,kmp_s_1091r_0271,kms_s_0632r_0271,kms_s_0763_br_0271,kms_s_1096r_0271,s_0632,s_0635,s_0763_b,s_1091,s_1096), z=(Vmax_r_0271*1/kms_s_0632r_0271*1/kms_s_0763_br_0271*1/kms_s_1096r_0271*(s_0632*s_0763_b*s_1096-s_0635*s_1091/Keq_r_0271)/((1+s_0632/kms_s_0632r_0271)*(1+s_0763_b/kms_s_0763_br_0271)*(1+s_1096/kms_s_1096r_0271)+(1+s_0635/kmp_s_0635r_0271)*(1+s_1091/kmp_s_1091r_0271)-1)/intracellular);end

function z=function_71(Keq_r_0277,Vmax_r_0277,intracellular,kmp_s_0400r_0277,kmp_s_0469r_0277,kmp_s_0763_br_0277,kmp_s_0899r_0277,kmp_s_1207r_0277,kms_s_0446r_0277,kms_s_0458r_0277,kms_s_0907r_0277,kms_s_1434_br_0277,s_0400,s_0446,s_0458,s_0469,s_0763_b,s_0899,s_0907,s_1207,s_1434_b), z=(Vmax_r_0277*(1/kms_s_0446r_0277)^2*1/kms_s_0458r_0277*1/kms_s_0907r_0277*1/kms_s_1434_br_0277*(s_0446^2*s_0458*s_0907*s_1434_b-s_0400^2*s_0469*s_0763_b^2*s_0899*s_1207/Keq_r_0277)/((1+s_0446/kms_s_0446r_0277)*(1+s_0458/kms_s_0458r_0277)*(1+s_0907/kms_s_0907r_0277)*(1+s_1434_b/kms_s_1434_br_0277)+(1+s_0400/kmp_s_0400r_0277)*(1+s_0469/kmp_s_0469r_0277)*(1+s_0763_b/kmp_s_0763_br_0277)*(1+s_0899/kmp_s_0899r_0277)*(1+s_1207/kmp_s_1207r_0277)-1)/intracellular);end

function z=function_72(Keq_r_0282,Vmax_r_0282,intracellular,kmp_s_1160r_0282,kmp_s_1434_br_0282,kms_s_0801r_0282,s_0801,s_1160,s_1434_b), z=(Vmax_r_0282*(1/kms_s_0801r_0282)^2*(s_0801^2-s_1160*s_1434_b^2/Keq_r_0282)/(1+s_0801/kms_s_0801r_0282+(1+s_1160/kmp_s_1160r_0282)*(1+s_1434_b/kmp_s_1434_br_0282)-1)/intracellular);end

function z=function_73(Keq_r_0284,Vmax_r_0284,intracellular,kmp_s_0485r_0284,kmp_s_0605r_0284,kms_s_0521r_0284,kms_s_0763_br_0284,kms_s_1215r_0284,s_0485,s_0521,s_0605,s_0763_b,s_1215), z=(Vmax_r_0284*1/kms_s_0521r_0284*1/kms_s_0763_br_0284*1/kms_s_1215r_0284*(s_0521*s_0763_b*s_1215-s_0485*s_0605/Keq_r_0284)/((1+s_0521/kms_s_0521r_0284)*(1+s_0763_b/kms_s_0763_br_0284)*(1+s_1215/kms_s_1215r_0284)+(1+s_0485/kmp_s_0485r_0284)*(1+s_0605/kmp_s_0605r_0284)-1)/intracellular);end

function z=function_74(Keq_r_0287,Vmax_r_0287,intracellular,kmp_s_1060r_0287,kmp_s_1091r_0287,kmp_s_1434_br_0287,kms_s_0763_br_0287,kms_s_1080r_0287,kms_s_1096r_0287,kms_s_1160r_0287,s_0763_b,s_1060,s_1080,s_1091,s_1096,s_1160,s_1434_b), z=(Vmax_r_0287*1/kms_s_0763_br_0287*1/kms_s_1080r_0287*1/kms_s_1096r_0287*1/kms_s_1160r_0287*(s_0763_b*s_1080*s_1096*s_1160-s_1060*s_1091*s_1434_b/Keq_r_0287)/((1+s_0763_b/kms_s_0763_br_0287)*(1+s_1080/kms_s_1080r_0287)*(1+s_1096/kms_s_1096r_0287)*(1+s_1160/kms_s_1160r_0287)+(1+s_1060/kmp_s_1060r_0287)*(1+s_1091/kmp_s_1091r_0287)*(1+s_1434_b/kmp_s_1434_br_0287)-1)/intracellular);end

function z=function_75(Keq_r_0290,Vmax_r_0290,intracellular,kmp_s_0514r_0290,kmp_s_0763_br_0290,kmp_s_1080r_0290,kms_s_1325r_0290,kms_s_1355r_0290,s_0514,s_0763_b,s_1080,s_1325,s_1355), z=(Vmax_r_0290*1/kms_s_1325r_0290*1/kms_s_1355r_0290*(s_1325*s_1355-s_0514*s_0763_b*s_1080/Keq_r_0290)/((1+s_1325/kms_s_1325r_0290)*(1+s_1355/kms_s_1355r_0290)+(1+s_0514/kmp_s_0514r_0290)*(1+s_0763_b/kmp_s_0763_br_0290)*(1+s_1080/kmp_s_1080r_0290)-1)/intracellular);end

function z=function_76(Keq_r_0298,Vmax_r_0298,intracellular,kmp_s_0632r_0298,kmp_s_0763_br_0298,kmp_s_1290r_0298,kmp_s_1434_br_0298,kms_s_1160r_0298,kms_s_1293r_0298,kms_s_1447r_0298,s_0632,s_0763_b,s_1160,s_1290,s_1293,s_1434_b,s_1447), z=(Vmax_r_0298*1/kms_s_1160r_0298*1/kms_s_1293r_0298*1/kms_s_1447r_0298*(s_1160*s_1293*s_1447-s_0632*s_0763_b*s_1290*s_1434_b^2/Keq_r_0298)/((1+s_1160/kms_s_1160r_0298)*(1+s_1293/kms_s_1293r_0298)*(1+s_1447/kms_s_1447r_0298)+(1+s_0632/kmp_s_0632r_0298)*(1+s_0763_b/kmp_s_0763_br_0298)*(1+s_1290/kmp_s_1290r_0298)*(1+s_1434_b/kmp_s_1434_br_0298)-1)/intracellular);end

function z=function_175(Keq_r_0660,Vmax_r_0660,intracellular,kmp_s_0118r_0660,kmp_s_0763_br_0660,kmp_s_1096r_0660,kms_s_1091r_0660,kms_s_1379r_0660,s_0118,s_0763_b,s_1091,s_1096,s_1379), z=(Vmax_r_0660*1/kms_s_1091r_0660*1/kms_s_1379r_0660*(s_1091*s_1379-s_0118*s_0763_b^2*s_1096/Keq_r_0660)/((1+s_1091/kms_s_1091r_0660)*(1+s_1379/kms_s_1379r_0660)+(1+s_0118/kmp_s_0118r_0660)*(1+s_0763_b/kmp_s_0763_br_0660)*(1+s_1096/kmp_s_1096r_0660)-1)/intracellular);end

function z=function_176(Keq_r_0661,Vmax_r_0661,intracellular,kmp_s_1082r_0661,kmp_s_1379r_0661,kms_s_0118r_0661,kms_s_0763_br_0661,kms_s_1087r_0661,s_0118,s_0763_b,s_1082,s_1087,s_1379), z=(Vmax_r_0661*1/kms_s_0118r_0661*(1/kms_s_0763_br_0661)^2*1/kms_s_1087r_0661*(s_0118*s_0763_b^2*s_1087-s_1082*s_1379/Keq_r_0661)/((1+s_0118/kms_s_0118r_0661)*(1+s_0763_b/kms_s_0763_br_0661)*(1+s_1087/kms_s_1087r_0661)+(1+s_1082/kmp_s_1082r_0661)*(1+s_1379/kmp_s_1379r_0661)-1)/intracellular);end

function z=function_177(Keq_r_0667,Vmax_r_0667,intracellular,kmp_s_0183r_0667,kmp_s_0430r_0667,kms_s_0949r_0667,s_0183,s_0430,s_0949), z=(Vmax_r_0667*1/kms_s_0949r_0667*(s_0949-s_0183*s_0430/Keq_r_0667)/(1+s_0949/kms_s_0949r_0667+(1+s_0183/kmp_s_0183r_0667)*(1+s_0430/kmp_s_0430r_0667)-1)/intracellular);end

function z=function_178(Keq_r_0673,Vmax_r_0673,intracellular,kmp_s_0963r_0673,kms_s_0040r_0673,s_0040,s_0963), z=(Vmax_r_0673*1/kms_s_0040r_0673*(s_0040-s_0963/Keq_r_0673)/(1+s_0040/kms_s_0040r_0673+1+s_0963/kmp_s_0963r_0673-1)/intracellular);end

function z=function_179(Keq_r_0674,Vmax_r_0674,intracellular,kmp_s_0185r_0674,kmp_s_0925r_0674,kms_s_0297r_0674,kms_s_0899r_0674,s_0185,s_0297,s_0899,s_0925), z=(Vmax_r_0674*1/kms_s_0297r_0674*1/kms_s_0899r_0674*(s_0297*s_0899-s_0185*s_0925/Keq_r_0674)/((1+s_0297/kms_s_0297r_0674)*(1+s_0899/kms_s_0899r_0674)+(1+s_0185/kmp_s_0185r_0674)*(1+s_0925/kmp_s_0925r_0674)-1)/intracellular);end

function z=function_180(Keq_r_0688,Vmax_r_0688,intracellular,kmp_s_0069r_0688,kmp_s_1082r_0688,kms_s_0763_br_0688,kms_s_1087r_0688,kms_s_1156r_0688,s_0069,s_0763_b,s_1082,s_1087,s_1156), z=(Vmax_r_0688*1/kms_s_0763_br_0688*1/kms_s_1087r_0688*1/kms_s_1156r_0688*(s_0763_b*s_1087*s_1156-s_0069*s_1082/Keq_r_0688)/((1+s_0763_b/kms_s_0763_br_0688)*(1+s_1087/kms_s_1087r_0688)*(1+s_1156/kms_s_1156r_0688)+(1+s_0069/kmp_s_0069r_0688)*(1+s_1082/kmp_s_1082r_0688)-1)/intracellular);end

function z=function_181(Keq_r_0697,Vmax_r_0697,intracellular,kmp_s_0605r_0697,kmp_s_0710r_0697,kms_s_0553r_0697,kms_s_0755r_0697,kms_s_0763_br_0697,s_0553,s_0605,s_0710,s_0755,s_0763_b), z=(Vmax_r_0697*1/kms_s_0553r_0697*1/kms_s_0755r_0697*1/kms_s_0763_br_0697*(s_0553*s_0755*s_0763_b-s_0605*s_0710/Keq_r_0697)/((1+s_0553/kms_s_0553r_0697)*(1+s_0755/kms_s_0755r_0697)*(1+s_0763_b/kms_s_0763_br_0697)+(1+s_0605/kmp_s_0605r_0697)*(1+s_0710/kmp_s_0710r_0697)-1)/intracellular);end

function z=function_182(Keq_r_0698,Vmax_r_0698,intracellular,kmp_s_0554r_0698,kms_s_0539r_0698,s_0539,s_0554), z=(Vmax_r_0698*1/kms_s_0539r_0698*(s_0539-s_0554/Keq_r_0698)/(1+s_0539/kms_s_0539r_0698+1+s_0554/kmp_s_0554r_0698-1)/intracellular);end

function z=function_183(Keq_r_0699,Vmax_r_0699,intracellular,kmp_s_0122r_0699,kmp_s_0763_br_0699,kms_s_0015r_0699,kms_s_1434_br_0699,s_0015,s_0122,s_0763_b,s_1434_b), z=(Vmax_r_0699*1/kms_s_0015r_0699*1/kms_s_1434_br_0699*(s_0015*s_1434_b-s_0122*s_0763_b/Keq_r_0699)/((1+s_0015/kms_s_0015r_0699)*(1+s_1434_b/kms_s_1434_br_0699)+(1+s_0122/kmp_s_0122r_0699)*(1+s_0763_b/kmp_s_0763_br_0699)-1)/intracellular);end

function z=function_184(Keq_r_0701,Vmax_r_0701,intracellular,kmp_s_0605r_0701,kmp_s_1207r_0701,kmp_s_1293r_0701,kms_s_0446r_0701,kms_s_0933r_0701,kms_s_1434_br_0701,s_0446,s_0605,s_0933,s_1207,s_1293,s_1434_b), z=(Vmax_r_0701*1/kms_s_0446r_0701*1/kms_s_0933r_0701*1/kms_s_1434_br_0701*(s_0446*s_0933*s_1434_b-s_0605*s_1207*s_1293/Keq_r_0701)/((1+s_0446/kms_s_0446r_0701)*(1+s_0933/kms_s_0933r_0701)*(1+s_1434_b/kms_s_1434_br_0701)+(1+s_0605/kmp_s_0605r_0701)*(1+s_1207/kmp_s_1207r_0701)*(1+s_1293/kmp_s_1293r_0701)-1)/intracellular);end

function z=function_185(Keq_r_0702,Vmax_r_0702,intracellular,kmp_s_0309r_0702,kmp_s_0763_br_0702,kmp_s_0933r_0702,kms_s_0328r_0702,kms_s_0917r_0702,s_0309,s_0328,s_0763_b,s_0917,s_0933), z=(Vmax_r_0702*1/kms_s_0328r_0702*1/kms_s_0917r_0702*(s_0328*s_0917-s_0309*s_0763_b*s_0933/Keq_r_0702)/((1+s_0328/kms_s_0328r_0702)*(1+s_0917/kms_s_0917r_0702)+(1+s_0309/kmp_s_0309r_0702)*(1+s_0763_b/kmp_s_0763_br_0702)*(1+s_0933/kmp_s_0933r_0702)-1)/intracellular);end

function z=function_186(Keq_r_0707,Vmax_r_0707,intracellular,kmp_s_0015r_0707,kmp_s_1096r_0707,kms_s_0307r_0707,kms_s_1091r_0707,s_0015,s_0307,s_1091,s_1096), z=(Vmax_r_0707*1/kms_s_0307r_0707*1/kms_s_1091r_0707*(s_0307*s_1091-s_0015*s_1096/Keq_r_0707)/((1+s_0307/kms_s_0307r_0707)*(1+s_1091/kms_s_1091r_0707)+(1+s_0015/kmp_s_0015r_0707)*(1+s_1096/kmp_s_1096r_0707)-1)/intracellular);end

function z=function_187(Keq_r_0712,Vmax_r_0712,intracellular,kmp_s_0022r_0712,kmp_s_0481r_0712,kmp_s_0763_br_0712,kms_s_0031r_0712,kms_s_0521r_0712,s_0022,s_0031,s_0481,s_0521,s_0763_b), z=(Vmax_r_0712*1/kms_s_0031r_0712*1/kms_s_0521r_0712*(s_0031*s_0521-s_0022*s_0481*s_0763_b/Keq_r_0712)/((1+s_0031/kms_s_0031r_0712)*(1+s_0521/kms_s_0521r_0712)+(1+s_0022/kmp_s_0022r_0712)*(1+s_0481/kmp_s_0481r_0712)*(1+s_0763_b/kmp_s_0763_br_0712)-1)/intracellular);end

function z=function_188(Keq_r_0715,Vmax_r_0715,intracellular,kmp_s_0400r_0715,kmp_s_0470r_0715,kmp_s_0850r_0715,kmp_s_1207r_0715,kms_s_0021r_0715,kms_s_0446r_0715,s_0021,s_0400,s_0446,s_0470,s_0850,s_1207), z=(Vmax_r_0715*1/kms_s_0021r_0715*1/kms_s_0446r_0715*(s_0021*s_0446-s_0400*s_0470*s_0850*s_1207/Keq_r_0715)/((1+s_0021/kms_s_0021r_0715)*(1+s_0446/kms_s_0446r_0715)+(1+s_0400/kmp_s_0400r_0715)*(1+s_0470/kmp_s_0470r_0715)*(1+s_0850/kmp_s_0850r_0715)*(1+s_1207/kmp_s_1207r_0715)-1)/intracellular);end

function z=function_189(Keq_r_0719,Vmax_r_0719,intracellular,kmp_s_0247r_0719,kmp_s_0763_br_0719,kmp_s_1096r_0719,kms_s_0046r_0719,kms_s_1091r_0719,s_0046,s_0247,s_0763_b,s_1091,s_1096), z=(Vmax_r_0719*1/kms_s_0046r_0719*1/kms_s_1091r_0719*(s_0046*s_1091-s_0247*s_0763_b*s_1096/Keq_r_0719)/((1+s_0046/kms_s_0046r_0719)*(1+s_1091/kms_s_1091r_0719)+(1+s_0247/kmp_s_0247r_0719)*(1+s_0763_b/kmp_s_0763_br_0719)*(1+s_1096/kmp_s_1096r_0719)-1)/intracellular);end

function z=function_190(Keq_r_0720,Vmax_r_0720,intracellular,kmp_s_0257r_0720,kmp_s_0763_br_0720,kmp_s_1096r_0720,kms_s_0052r_0720,kms_s_1091r_0720,s_0052,s_0257,s_0763_b,s_1091,s_1096), z=(Vmax_r_0720*1/kms_s_0052r_0720*1/kms_s_1091r_0720*(s_0052*s_1091-s_0257*s_0763_b*s_1096/Keq_r_0720)/((1+s_0052/kms_s_0052r_0720)*(1+s_1091/kms_s_1091r_0720)+(1+s_0257/kmp_s_0257r_0720)*(1+s_0763_b/kmp_s_0763_br_0720)*(1+s_1096/kmp_s_1096r_0720)-1)/intracellular);end

function z=function_191(Keq_r_0721,Vmax_r_0721,intracellular,kmp_s_0254r_0721,kmp_s_0763_br_0721,kmp_s_1096r_0721,kms_s_0234r_0721,kms_s_1091r_0721,s_0234,s_0254,s_0763_b,s_1091,s_1096), z=(Vmax_r_0721*1/kms_s_0234r_0721*1/kms_s_1091r_0721*(s_0234*s_1091-s_0254*s_0763_b*s_1096/Keq_r_0721)/((1+s_0234/kms_s_0234r_0721)*(1+s_1091/kms_s_1091r_0721)+(1+s_0254/kmp_s_0254r_0721)*(1+s_0763_b/kmp_s_0763_br_0721)*(1+s_1096/kmp_s_1096r_0721)-1)/intracellular);end

function z=function_192(Keq_r_0722,Vmax_r_0722,intracellular,kmp_s_0261r_0722,kmp_s_0763_br_0722,kmp_s_1096r_0722,kms_s_0055r_0722,kms_s_1091r_0722,s_0055,s_0261,s_0763_b,s_1091,s_1096), z=(Vmax_r_0722*1/kms_s_0055r_0722*1/kms_s_1091r_0722*(s_0055*s_1091-s_0261*s_0763_b*s_1096/Keq_r_0722)/((1+s_0055/kms_s_0055r_0722)*(1+s_1091/kms_s_1091r_0722)+(1+s_0261/kmp_s_0261r_0722)*(1+s_0763_b/kmp_s_0763_br_0722)*(1+s_1096/kmp_s_1096r_0722)-1)/intracellular);end

function z=function_193(Keq_r_0723,Vmax_r_0723,intracellular,kmp_s_1013r_0723,kms_s_0710r_0723,kms_s_0828r_0723,s_0710,s_0828,s_1013), z=(Vmax_r_0723*1/kms_s_0710r_0723*1/kms_s_0828r_0723*(s_0710*s_0828-s_1013/Keq_r_0723)/((1+s_0710/kms_s_0710r_0723)*(1+s_0828/kms_s_0828r_0723)+1+s_1013/kmp_s_1013r_0723-1)/intracellular);end

function z=function_194(Keq_r_0725,Vmax_r_0725,intracellular,kmp_s_1020r_0725,kmp_s_1207r_0725,kms_s_0128r_0725,kms_s_1434_br_0725,s_0128,s_1020,s_1207,s_1434_b), z=(Vmax_r_0725*1/kms_s_0128r_0725*1/kms_s_1434_br_0725*(s_0128*s_1434_b-s_1020*s_1207/Keq_r_0725)/((1+s_0128/kms_s_0128r_0725)*(1+s_1434_b/kms_s_1434_br_0725)+(1+s_1020/kmp_s_1020r_0725)*(1+s_1207/kmp_s_1207r_0725)-1)/intracellular);end

function z=function_195(Keq_r_0726,Vmax_r_0726,intracellular,kmp_s_0128r_0726,kms_s_0410r_0726,s_0128,s_0410), z=(Vmax_r_0726*1/kms_s_0410r_0726*(s_0410-s_0128/Keq_r_0726)/(1+s_0410/kms_s_0410r_0726+1+s_0128/kmp_s_0128r_0726-1)/intracellular);end

function z=function_196(Keq_r_0728,Vmax_r_0728,intracellular,kmp_s_0149r_0728,kmp_s_1091r_0728,kmp_s_1207r_0728,kms_s_0763_br_0728,kms_s_1070r_0728,kms_s_1096r_0728,s_0149,s_0763_b,s_1070,s_1091,s_1096,s_1207), z=(Vmax_r_0728*1/kms_s_0763_br_0728*1/kms_s_1070r_0728*1/kms_s_1096r_0728*(s_0763_b*s_1070*s_1096-s_0149*s_1091*s_1207/Keq_r_0728)/((1+s_0763_b/kms_s_0763_br_0728)*(1+s_1070/kms_s_1070r_0728)*(1+s_1096/kms_s_1096r_0728)+(1+s_0149/kmp_s_0149r_0728)*(1+s_1091/kmp_s_1091r_0728)*(1+s_1207/kmp_s_1207r_0728)-1)/intracellular);end

function z=function_197(Keq_r_0765,Vmax_r_0765,intracellular,kmp_s_0181r_0765,kmp_s_0470r_0765,kms_s_0180r_0765,kms_s_0763_br_0765,s_0180,s_0181,s_0470,s_0763_b), z=(Vmax_r_0765*1/kms_s_0180r_0765*1/kms_s_0763_br_0765*(s_0180*s_0763_b-s_0181*s_0470/Keq_r_0765)/((1+s_0180/kms_s_0180r_0765)*(1+s_0763_b/kms_s_0763_br_0765)+(1+s_0181/kmp_s_0181r_0765)*(1+s_0470/kmp_s_0470r_0765)-1)/intracellular);end

function z=function_198(Keq_r_0771,Vmax_r_0771,intracellular,kmp_s_0446r_0771,kmp_s_0481r_0771,kms_s_0400r_0771,kms_s_0521r_0771,s_0400,s_0446,s_0481,s_0521), z=(Vmax_r_0771*1/kms_s_0400r_0771*1/kms_s_0521r_0771*(s_0400*s_0521-s_0446*s_0481/Keq_r_0771)/((1+s_0400/kms_s_0400r_0771)*(1+s_0521/kms_s_0521r_0771)+(1+s_0446/kmp_s_0446r_0771)*(1+s_0481/kmp_s_0481r_0771)-1)/intracellular);end

function z=function_199(Keq_r_0779,Vmax_r_0779,intracellular,kmp_s_0400r_0779,kmp_s_1430r_0779,kms_s_0446r_0779,kms_s_1411r_0779,s_0400,s_0446,s_1411,s_1430), z=(Vmax_r_0779*1/kms_s_0446r_0779*1/kms_s_1411r_0779*(s_0446*s_1411-s_0400*s_1430/Keq_r_0779)/((1+s_0446/kms_s_0446r_0779)*(1+s_1411/kms_s_1411r_0779)+(1+s_0400/kmp_s_0400r_0779)*(1+s_1430/kmp_s_1430r_0779)-1)/intracellular);end

function z=function_200(Keq_r_0783,Vmax_r_0783,intracellular,kmp_s_0369r_0783,kmp_s_0763_br_0783,kmp_s_0917r_0783,kms_s_0805r_0783,kms_s_1117r_0783,s_0369,s_0763_b,s_0805,s_0917,s_1117), z=(Vmax_r_0783*1/kms_s_0805r_0783*1/kms_s_1117r_0783*(s_0805*s_1117-s_0369*s_0763_b*s_0917/Keq_r_0783)/((1+s_0805/kms_s_0805r_0783)*(1+s_1117/kms_s_1117r_0783)+(1+s_0369/kmp_s_0369r_0783)*(1+s_0763_b/kmp_s_0763_br_0783)*(1+s_0917/kmp_s_0917r_0783)-1)/intracellular);end

function z=function_207(Keq_r_0847,Vmax_r_0847,intracellular,kmp_s_0090r_0847,kmp_s_0511r_0847,kmp_s_0763_br_0847,kms_s_0485r_0847,kms_s_1020r_0847,s_0090,s_0485,s_0511,s_0763_b,s_1020), z=(Vmax_r_0847*1/kms_s_0485r_0847*1/kms_s_1020r_0847*(s_0485*s_1020-s_0090*s_0511*s_0763_b^2/Keq_r_0847)/((1+s_0485/kms_s_0485r_0847)*(1+s_1020/kms_s_1020r_0847)+(1+s_0090/kmp_s_0090r_0847)*(1+s_0511/kmp_s_0511r_0847)*(1+s_0763_b/kmp_s_0763_br_0847)-1)/intracellular);end

function z=function_208(Keq_r_0850,Vmax_r_0850,intracellular,kmp_s_0470r_0850,kmp_s_1233r_0850,kms_s_1219r_0850,s_0470,s_1219,s_1233), z=(Vmax_r_0850*1/kms_s_1219r_0850*(s_1219-s_0470*s_1233/Keq_r_0850)/(1+s_1219/kms_s_1219r_0850+(1+s_0470/kmp_s_0470r_0850)*(1+s_1233/kmp_s_1233r_0850)-1)/intracellular);end

function z=function_209(Keq_r_0853,Vmax_r_0853,intracellular,kmp_s_0511r_0853,kmp_s_0763_br_0853,kmp_s_1219r_0853,kms_s_0485r_0853,kms_s_0943r_0853,s_0485,s_0511,s_0763_b,s_0943,s_1219), z=(Vmax_r_0853*1/kms_s_0485r_0853*1/kms_s_0943r_0853*(s_0485*s_0943-s_0511*s_0763_b^2*s_1219/Keq_r_0853)/((1+s_0485/kms_s_0485r_0853)*(1+s_0943/kms_s_0943r_0853)+(1+s_0511/kmp_s_0511r_0853)*(1+s_0763_b/kmp_s_0763_br_0853)*(1+s_1219/kmp_s_1219r_0853)-1)/intracellular);end

function z=function_210(Keq_r_0856,Vmax_r_0856,intracellular,kmp_s_0397r_0856,kmp_s_0763_br_0856,kmp_s_1349r_0856,kmp_s_1517r_0856,kms_s_0206r_0856,kms_s_1521r_0856,s_0206,s_0397,s_0763_b,s_1349,s_1517,s_1521), z=(Vmax_r_0856*1/kms_s_0206r_0856*1/kms_s_1521r_0856*(s_0206*s_1521-s_0397*s_0763_b^2*s_1349*s_1517/Keq_r_0856)/((1+s_0206/kms_s_0206r_0856)*(1+s_1521/kms_s_1521r_0856)+(1+s_0397/kmp_s_0397r_0856)*(1+s_0763_b/kmp_s_0763_br_0856)*(1+s_1349/kmp_s_1349r_0856)*(1+s_1517/kmp_s_1517r_0856)-1)/intracellular);end

function z=function_211(Keq_r_0859,Vmax_r_0859,intracellular,kmp_s_0400r_0859,kmp_s_0537r_0859,kmp_s_0763_br_0859,kms_s_0446r_0859,kms_s_0539r_0859,s_0400,s_0446,s_0537,s_0539,s_0763_b), z=(Vmax_r_0859*1/kms_s_0446r_0859*1/kms_s_0539r_0859*(s_0446*s_0539-s_0400*s_0537*s_0763_b/Keq_r_0859)/((1+s_0446/kms_s_0446r_0859)*(1+s_0539/kms_s_0539r_0859)+(1+s_0400/kmp_s_0400r_0859)*(1+s_0537/kmp_s_0537r_0859)*(1+s_0763_b/kmp_s_0763_br_0859)-1)/intracellular);end

function z=function_212(Keq_r_0861,Vmax_r_0861,intracellular,kmp_s_0549r_0861,kms_s_0410r_0861,s_0410,s_0549), z=(Vmax_r_0861*1/kms_s_0410r_0861*(s_0410-s_0549/Keq_r_0861)/(1+s_0410/kms_s_0410r_0861+1+s_0549/kmp_s_0549r_0861-1)/intracellular);end

function z=function_213(Keq_r_0865,Vmax_r_0865,intracellular,kmp_s_0264r_0865,kmp_s_0446r_0865,kms_s_0265r_0865,kms_s_0400r_0865,s_0264,s_0265,s_0400,s_0446), z=(Vmax_r_0865*1/kms_s_0265r_0865*1/kms_s_0400r_0865*(s_0265*s_0400-s_0264*s_0446/Keq_r_0865)/((1+s_0265/kms_s_0265r_0865)*(1+s_0400/kms_s_0400r_0865)+(1+s_0264/kmp_s_0264r_0865)*(1+s_0446/kmp_s_0446r_0865)-1)/intracellular);end

function z=function_94(Keq_r_0371,Vmax_r_0371,intracellular,kmp_s_0596r_0371,kmp_s_0763_br_0371,kmp_s_1207r_0371,kms_s_1215r_0371,kms_s_1434_br_0371,s_0596,s_0763_b,s_1207,s_1215,s_1434_b), z=(Vmax_r_0371*1/kms_s_1215r_0371*1/kms_s_1434_br_0371*(s_1215*s_1434_b-s_0596*s_0763_b^2*s_1207/Keq_r_0371)/((1+s_1215/kms_s_1215r_0371)*(1+s_1434_b/kms_s_1434_br_0371)+(1+s_0596/kmp_s_0596r_0371)*(1+s_0763_b/kmp_s_0763_br_0371)*(1+s_1207/kmp_s_1207r_0371)-1)/intracellular);end

function z=function_95(Keq_r_0374,Vmax_r_0374,intracellular,kmp_s_0801r_0374,kmp_s_1154r_0374,kms_s_0064r_0374,kms_s_1160r_0374,s_0064,s_0801,s_1154,s_1160), z=(Vmax_r_0374*1/kms_s_0064r_0374*1/kms_s_1160r_0374*(s_0064*s_1160-s_0801*s_1154/Keq_r_0374)/((1+s_0064/kms_s_0064r_0374)*(1+s_1160/kms_s_1160r_0374)+(1+s_0801/kmp_s_0801r_0374)*(1+s_1154/kmp_s_1154r_0374)-1)/intracellular);end

function z=function_96(Keq_r_0375,Vmax_r_0375,intracellular,kmp_s_0309r_0375,kmp_s_1091r_0375,kms_s_0601r_0375,kms_s_0763_br_0375,kms_s_1096r_0375,s_0309,s_0601,s_0763_b,s_1091,s_1096), z=(Vmax_r_0375*1/kms_s_0601r_0375*1/kms_s_0763_br_0375*1/kms_s_1096r_0375*(s_0601*s_0763_b*s_1096-s_0309*s_1091/Keq_r_0375)/((1+s_0601/kms_s_0601r_0375)*(1+s_0763_b/kms_s_0763_br_0375)*(1+s_1096/kms_s_1096r_0375)+(1+s_0309/kmp_s_0309r_0375)*(1+s_1091/kmp_s_1091r_0375)-1)/intracellular);end

function z=function_97(Keq_r_0381,Vmax_r_0381,intracellular,kmp_s_0064r_0381,kmp_s_1434_br_0381,kms_s_0763_br_0381,kms_s_1073r_0381,s_0064,s_0763_b,s_1073,s_1434_b), z=(Vmax_r_0381*1/kms_s_0763_br_0381*1/kms_s_1073r_0381*(s_0763_b*s_1073-s_0064*s_1434_b/Keq_r_0381)/((1+s_0763_b/kms_s_0763_br_0381)*(1+s_1073/kms_s_1073r_0381)+(1+s_0064/kmp_s_0064r_0381)*(1+s_1434_b/kmp_s_1434_br_0381)-1)/intracellular);end

function z=function_98(Keq_r_0384,Vmax_r_0384,intracellular,kmp_s_0238r_0384,kmp_s_1434_br_0384,kms_s_0018r_0384,s_0018,s_0238,s_1434_b), z=(Vmax_r_0384*1/kms_s_0018r_0384*(s_0018-s_0238*s_1434_b/Keq_r_0384)/(1+s_0018/kms_s_0018r_0384+(1+s_0238/kmp_s_0238r_0384)*(1+s_1434_b/kmp_s_1434_br_0384)-1)/intracellular);end

function z=function_99(Keq_r_0385,Vmax_r_0385,intracellular,kmp_s_0058r_0385,kmp_s_1434_br_0385,kms_s_0007r_0385,s_0007,s_0058,s_1434_b), z=(Vmax_r_0385*1/kms_s_0007r_0385*(s_0007-s_0058*s_1434_b/Keq_r_0385)/(1+s_0007/kms_s_0007r_0385+(1+s_0058/kmp_s_0058r_0385)*(1+s_1434_b/kmp_s_1434_br_0385)-1)/intracellular);end

function z=function_100(Keq_r_0386,Vmax_r_0386,intracellular,kmp_s_0400r_0386,kmp_s_0735r_0386,kmp_s_0763_br_0386,kms_s_0446r_0386,kms_s_0734r_0386,s_0400,s_0446,s_0734,s_0735,s_0763_b), z=(Vmax_r_0386*1/kms_s_0446r_0386*1/kms_s_0734r_0386*(s_0446*s_0734-s_0400*s_0735*s_0763_b/Keq_r_0386)/((1+s_0446/kms_s_0446r_0386)*(1+s_0734/kms_s_0734r_0386)+(1+s_0400/kmp_s_0400r_0386)*(1+s_0735/kmp_s_0735r_0386)*(1+s_0763_b/kmp_s_0763_br_0386)-1)/intracellular);end

function z=function_101(Keq_r_0387,Vmax_r_0387,intracellular,kmp_s_0605r_0387,kmp_s_0712r_0387,kms_s_0850r_0387,kms_s_1257r_0387,s_0605,s_0712,s_0850,s_1257), z=(Vmax_r_0387*1/kms_s_0850r_0387*1/kms_s_1257r_0387*(s_0850*s_1257-s_0605*s_0712/Keq_r_0387)/((1+s_0850/kms_s_0850r_0387)*(1+s_1257/kms_s_1257r_0387)+(1+s_0605/kmp_s_0605r_0387)*(1+s_0712/kmp_s_0712r_0387)-1)/intracellular);end

function z=function_102(Keq_r_0393,Vmax_r_0393,intracellular,kmp_s_0615r_0393,kmp_s_0706r_0393,kms_s_0616r_0393,kms_s_0710r_0393,s_0615,s_0616,s_0706,s_0710), z=(Vmax_r_0393*1/kms_s_0616r_0393*1/kms_s_0710r_0393*(s_0616*s_0710-s_0615*s_0706/Keq_r_0393)/((1+s_0616/kms_s_0616r_0393)*(1+s_0710/kms_s_0710r_0393)+(1+s_0615/kmp_s_0615r_0393)*(1+s_0706/kmp_s_0706r_0393)-1)/intracellular);end

function z=function_103(Keq_r_0394,Vmax_r_0394,intracellular,kmp_s_0616r_0394,kmp_s_0763_br_0394,kmp_s_1011r_0394,kms_s_0615r_0394,s_0615,s_0616,s_0763_b,s_1011), z=(Vmax_r_0394*1/kms_s_0615r_0394*(s_0615-s_0616*s_0763_b*s_1011/Keq_r_0394)/(1+s_0615/kms_s_0615r_0394+(1+s_0616/kmp_s_0616r_0394)*(1+s_0763_b/kmp_s_0763_br_0394)*(1+s_1011/kmp_s_1011r_0394)-1)/intracellular);end

function z=function_104(Keq_r_0398,Vmax_r_0398,intracellular,kmp_s_1243r_0398,kmp_s_1434_br_0398,kms_s_0193r_0398,s_0193,s_1243,s_1434_b), z=(Vmax_r_0398*1/kms_s_0193r_0398*(s_0193-s_1243*s_1434_b/Keq_r_0398)/(1+s_0193/kms_s_0193r_0398+(1+s_1243/kmp_s_1243r_0398)*(1+s_1434_b/kmp_s_1434_br_0398)-1)/intracellular);end

function z=function_105(Keq_r_0417,Vmax_r_0417,intracellular,kmp_s_0470r_0417,kmp_s_0514r_0417,kmp_s_0574r_0417,kmp_s_1091r_0417,kmp_s_1434_br_0417,kms_s_0763_br_0417,kms_s_1005r_0417,kms_s_1096r_0417,kms_s_1132r_0417,s_0470,s_0514,s_0574,s_0763_b,s_1005,s_1091,s_1096,s_1132,s_1434_b), z=(Vmax_r_0417*(1/kms_s_0763_br_0417)^3*1/kms_s_1005r_0417*(1/kms_s_1096r_0417)^2*1/kms_s_1132r_0417*(s_0763_b^3*s_1005*s_1096^2*s_1132-s_0470*s_0514*s_0574*s_1091^2*s_1434_b/Keq_r_0417)/((1+s_0763_b/kms_s_0763_br_0417)*(1+s_1005/kms_s_1005r_0417)*(1+s_1096/kms_s_1096r_0417)*(1+s_1132/kms_s_1132r_0417)+(1+s_0470/kmp_s_0470r_0417)*(1+s_0514/kmp_s_0514r_0417)*(1+s_0574/kmp_s_0574r_0417)*(1+s_1091/kmp_s_1091r_0417)*(1+s_1434_b/kmp_s_1434_br_0417)-1)/intracellular);end

function z=function_106(Keq_r_0418,Vmax_r_0418,intracellular,kmp_s_0470r_0418,kmp_s_0514r_0418,kmp_s_0968r_0418,kmp_s_1091r_0418,kmp_s_1434_br_0418,kms_s_0574r_0418,kms_s_0763_br_0418,kms_s_1005r_0418,kms_s_1096r_0418,s_0470,s_0514,s_0574,s_0763_b,s_0968,s_1005,s_1091,s_1096,s_1434_b), z=(Vmax_r_0418*1/kms_s_0574r_0418*(1/kms_s_0763_br_0418)^3*1/kms_s_1005r_0418*(1/kms_s_1096r_0418)^2*(s_0574*s_0763_b^3*s_1005*s_1096^2-s_0470*s_0514*s_0968*s_1091^2*s_1434_b/Keq_r_0418)/((1+s_0574/kms_s_0574r_0418)*(1+s_0763_b/kms_s_0763_br_0418)*(1+s_1005/kms_s_1005r_0418)*(1+s_1096/kms_s_1096r_0418)+(1+s_0470/kmp_s_0470r_0418)*(1+s_0514/kmp_s_0514r_0418)*(1+s_0968/kmp_s_0968r_0418)*(1+s_1091/kmp_s_1091r_0418)*(1+s_1434_b/kmp_s_1434_br_0418)-1)/intracellular);end

function z=function_107(Keq_r_0419,Vmax_r_0419,intracellular,kmp_s_0470r_0419,kmp_s_0514r_0419,kmp_s_1028r_0419,kmp_s_1091r_0419,kmp_s_1434_br_0419,kms_s_0763_br_0419,kms_s_0968r_0419,kms_s_1005r_0419,kms_s_1096r_0419,s_0470,s_0514,s_0763_b,s_0968,s_1005,s_1028,s_1091,s_1096,s_1434_b), z=(Vmax_r_0419*(1/kms_s_0763_br_0419)^3*1/kms_s_0968r_0419*1/kms_s_1005r_0419*(1/kms_s_1096r_0419)^2*(s_0763_b^3*s_0968*s_1005*s_1096^2-s_0470*s_0514*s_1028*s_1091^2*s_1434_b/Keq_r_0419)/((1+s_0763_b/kms_s_0763_br_0419)*(1+s_0968/kms_s_0968r_0419)*(1+s_1005/kms_s_1005r_0419)*(1+s_1096/kms_s_1096r_0419)+(1+s_0470/kmp_s_0470r_0419)*(1+s_0514/kmp_s_0514r_0419)*(1+s_1028/kmp_s_1028r_0419)*(1+s_1091/kmp_s_1091r_0419)*(1+s_1434_b/kmp_s_1434_br_0419)-1)/intracellular);end

function z=function_108(Keq_r_0421,Vmax_r_0421,intracellular,kmp_s_0470r_0421,kmp_s_0514r_0421,kmp_s_1091r_0421,kmp_s_1170r_0421,kmp_s_1434_br_0421,kms_s_0763_br_0421,kms_s_1005r_0421,kms_s_1028r_0421,kms_s_1096r_0421,s_0470,s_0514,s_0763_b,s_1005,s_1028,s_1091,s_1096,s_1170,s_1434_b), z=(Vmax_r_0421*(1/kms_s_0763_br_0421)^3*1/kms_s_1005r_0421*1/kms_s_1028r_0421*(1/kms_s_1096r_0421)^2*(s_0763_b^3*s_1005*s_1028*s_1096^2-s_0470*s_0514*s_1091^2*s_1170*s_1434_b/Keq_r_0421)/((1+s_0763_b/kms_s_0763_br_0421)*(1+s_1005/kms_s_1005r_0421)*(1+s_1028/kms_s_1028r_0421)*(1+s_1096/kms_s_1096r_0421)+(1+s_0470/kmp_s_0470r_0421)*(1+s_0514/kmp_s_0514r_0421)*(1+s_1091/kmp_s_1091r_0421)*(1+s_1170/kmp_s_1170r_0421)*(1+s_1434_b/kmp_s_1434_br_0421)-1)/intracellular);end

function z=function_109(Keq_r_0423,Vmax_r_0423,intracellular,kmp_s_0470r_0423,kmp_s_0514r_0423,kmp_s_1091r_0423,kmp_s_1329r_0423,kmp_s_1434_br_0423,kms_s_0763_br_0423,kms_s_1005r_0423,kms_s_1096r_0423,kms_s_1170r_0423,s_0470,s_0514,s_0763_b,s_1005,s_1091,s_1096,s_1170,s_1329,s_1434_b), z=(Vmax_r_0423*(1/kms_s_0763_br_0423)^3*1/kms_s_1005r_0423*(1/kms_s_1096r_0423)^2*1/kms_s_1170r_0423*(s_0763_b^3*s_1005*s_1096^2*s_1170-s_0470*s_0514*s_1091^2*s_1329*s_1434_b/Keq_r_0423)/((1+s_0763_b/kms_s_0763_br_0423)*(1+s_1005/kms_s_1005r_0423)*(1+s_1096/kms_s_1096r_0423)*(1+s_1170/kms_s_1170r_0423)+(1+s_0470/kmp_s_0470r_0423)*(1+s_0514/kmp_s_0514r_0423)*(1+s_1091/kmp_s_1091r_0423)*(1+s_1329/kmp_s_1329r_0423)*(1+s_1434_b/kmp_s_1434_br_0423)-1)/intracellular);end

function z=function_110(Keq_r_0425,Vmax_r_0425,intracellular,kmp_s_0470r_0425,kmp_s_0514r_0425,kmp_s_0987r_0425,kmp_s_1091r_0425,kmp_s_1434_br_0425,kms_s_0763_br_0425,kms_s_1005r_0425,kms_s_1096r_0425,kms_s_1329r_0425,s_0470,s_0514,s_0763_b,s_0987,s_1005,s_1091,s_1096,s_1329,s_1434_b), z=(Vmax_r_0425*(1/kms_s_0763_br_0425)^9*(1/kms_s_1005r_0425)^3*(1/kms_s_1096r_0425)^6*1/kms_s_1329r_0425*(s_0763_b^9*s_1005^3*s_1096^6*s_1329-s_0470^3*s_0514^3*s_0987*s_1091^6*s_1434_b^3/Keq_r_0425)/((1+s_0763_b/kms_s_0763_br_0425)*(1+s_1005/kms_s_1005r_0425)*(1+s_1096/kms_s_1096r_0425)*(1+s_1329/kms_s_1329r_0425)+(1+s_0470/kmp_s_0470r_0425)*(1+s_0514/kmp_s_0514r_0425)*(1+s_0987/kmp_s_0987r_0425)*(1+s_1091/kmp_s_1091r_0425)*(1+s_1434_b/kmp_s_1434_br_0425)-1)/intracellular);end

function z=function_111(Keq_r_0429,Vmax_r_0429,intracellular,kmp_s_0470r_0429,kmp_s_0514r_0429,kmp_s_0582r_0429,kmp_s_1091r_0429,kmp_s_1434_br_0429,kms_s_0763_br_0429,kms_s_1005r_0429,kms_s_1096r_0429,kms_s_1140r_0429,s_0470,s_0514,s_0582,s_0763_b,s_1005,s_1091,s_1096,s_1140,s_1434_b), z=(Vmax_r_0429*(1/kms_s_0763_br_0429)^3*1/kms_s_1005r_0429*(1/kms_s_1096r_0429)^2*1/kms_s_1140r_0429*(s_0763_b^3*s_1005*s_1096^2*s_1140-s_0470*s_0514*s_0582*s_1091^2*s_1434_b/Keq_r_0429)/((1+s_0763_b/kms_s_0763_br_0429)*(1+s_1005/kms_s_1005r_0429)*(1+s_1096/kms_s_1096r_0429)*(1+s_1140/kms_s_1140r_0429)+(1+s_0470/kmp_s_0470r_0429)*(1+s_0514/kmp_s_0514r_0429)*(1+s_0582/kmp_s_0582r_0429)*(1+s_1091/kmp_s_1091r_0429)*(1+s_1434_b/kmp_s_1434_br_0429)-1)/intracellular);end

function z=function_137(Keq_r_0529,Vmax_r_0529,intracellular,kmp_s_0659r_0529,kmp_s_0735r_0529,kms_s_0657r_0529,kms_s_1315r_0529,s_0657,s_0659,s_0735,s_1315), z=(Vmax_r_0529*1/kms_s_0657r_0529*1/kms_s_1315r_0529*(s_0657*s_1315-s_0659*s_0735/Keq_r_0529)/((1+s_0657/kms_s_0657r_0529)*(1+s_1315/kms_s_1315r_0529)+(1+s_0659/kmp_s_0659r_0529)*(1+s_0735/kmp_s_0735r_0529)-1)/intracellular);end

function z=function_138(Keq_r_0530,Vmax_r_0530,intracellular,kmp_s_1082r_0530,kmp_s_1315r_0530,kms_s_0735r_0530,kms_s_0763_br_0530,kms_s_1087r_0530,s_0735,s_0763_b,s_1082,s_1087,s_1315), z=(Vmax_r_0530*1/kms_s_0735r_0530*1/kms_s_0763_br_0530*1/kms_s_1087r_0530*(s_0735*s_0763_b*s_1087-s_1082*s_1315/Keq_r_0530)/((1+s_0735/kms_s_0735r_0530)*(1+s_0763_b/kms_s_0763_br_0530)*(1+s_1087/kms_s_1087r_0530)+(1+s_1082/kmp_s_1082r_0530)*(1+s_1315/kmp_s_1315r_0530)-1)/intracellular);end

function z=function_170(Keq_r_0638,Vmax_r_0638,intracellular,kmp_s_1257r_0638,kms_s_0850r_0638,s_0850,s_1257), z=(Vmax_r_0638*1/kms_s_0850r_0638*(s_0850-s_1257/Keq_r_0638)/(1+s_0850/kms_s_0850r_0638+1+s_1257/kmp_s_1257r_0638-1)/intracellular);end

function z=function_171(Keq_r_0640,Vmax_r_0640,intracellular,kmp_s_0007r_0640,kmp_s_1091r_0640,kms_s_0042r_0640,kms_s_0763_br_0640,kms_s_1096r_0640,s_0007,s_0042,s_0763_b,s_1091,s_1096), z=(Vmax_r_0640*1/kms_s_0042r_0640*1/kms_s_0763_br_0640*1/kms_s_1096r_0640*(s_0042*s_0763_b*s_1096-s_0007*s_1091/Keq_r_0640)/((1+s_0042/kms_s_0042r_0640)*(1+s_0763_b/kms_s_0763_br_0640)*(1+s_1096/kms_s_1096r_0640)+(1+s_0007/kmp_s_0007r_0640)*(1+s_1091/kmp_s_1091r_0640)-1)/intracellular);end

function z=function_172(Keq_r_0647,Vmax_r_0647,intracellular,kmp_s_0185r_0647,kmp_s_0863r_0647,kms_s_0899r_0647,kms_s_1277r_0647,s_0185,s_0863,s_0899,s_1277), z=(Vmax_r_0647*1/kms_s_0899r_0647*1/kms_s_1277r_0647*(s_0899*s_1277-s_0185*s_0863/Keq_r_0647)/((1+s_0899/kms_s_0899r_0647)*(1+s_1277/kms_s_1277r_0647)+(1+s_0185/kmp_s_0185r_0647)*(1+s_0863/kmp_s_0863r_0647)-1)/intracellular);end

function z=function_173(Keq_r_0650,Vmax_r_0650,intracellular,kmp_s_0434r_0650,kmp_s_0605r_0650,kmp_s_0867r_0650,kmp_s_1082r_0650,kms_s_0446r_0650,kms_s_0763_br_0650,kms_s_0861r_0650,kms_s_1087r_0650,s_0434,s_0446,s_0605,s_0763_b,s_0861,s_0867,s_1082,s_1087), z=(Vmax_r_0650*1/kms_s_0446r_0650*1/kms_s_0763_br_0650*1/kms_s_0861r_0650*1/kms_s_1087r_0650*(s_0446*s_0763_b*s_0861*s_1087-s_0434*s_0605*s_0867*s_1082/Keq_r_0650)/((1+s_0446/kms_s_0446r_0650)*(1+s_0763_b/kms_s_0763_br_0650)*(1+s_0861/kms_s_0861r_0650)*(1+s_1087/kms_s_1087r_0650)+(1+s_0434/kmp_s_0434r_0650)*(1+s_0605/kmp_s_0605r_0650)*(1+s_0867/kmp_s_0867r_0650)*(1+s_1082/kmp_s_1082r_0650)-1)/intracellular);end

function z=function_174(Keq_r_0657,Vmax_r_0657,intracellular,kmp_s_0120r_0657,kmp_s_0763_br_0657,kmp_s_1434_br_0657,kms_s_0905r_0657,s_0120,s_0763_b,s_0905,s_1434_b), z=(Vmax_r_0657*1/kms_s_0905r_0657*(s_0905-s_0120*s_0763_b*s_1434_b/Keq_r_0657)/(1+s_0905/kms_s_0905r_0657+(1+s_0120/kmp_s_0120r_0657)*(1+s_0763_b/kmp_s_0763_br_0657)*(1+s_1434_b/kmp_s_1434_br_0657)-1)/intracellular);end

function z=function_201(Keq_r_0789,Vmax_r_0789,intracellular,kmp_s_0763_br_0789,kmp_s_0887r_0789,kmp_s_1207r_0789,kms_s_0469r_0789,kms_s_1151r_0789,s_0469,s_0763_b,s_0887,s_1151,s_1207), z=(Vmax_r_0789*1/kms_s_0469r_0789*1/kms_s_1151r_0789*(s_0469*s_1151-s_0763_b*s_0887*s_1207/Keq_r_0789)/((1+s_0469/kms_s_0469r_0789)*(1+s_1151/kms_s_1151r_0789)+(1+s_0763_b/kmp_s_0763_br_0789)*(1+s_0887/kmp_s_0887r_0789)*(1+s_1207/kmp_s_1207r_0789)-1)/intracellular);end

function z=function_202(Keq_r_0791,Vmax_r_0791,intracellular,kmp_s_1071r_0791,kmp_s_1151r_0791,kms_s_0899r_0791,kms_s_1051r_0791,s_0899,s_1051,s_1071,s_1151), z=(Vmax_r_0791*1/kms_s_0899r_0791*1/kms_s_1051r_0791*(s_0899*s_1051-s_1071*s_1151/Keq_r_0791)/((1+s_0899/kms_s_0899r_0791)*(1+s_1051/kms_s_1051r_0791)+(1+s_1071/kmp_s_1071r_0791)*(1+s_1151/kmp_s_1151r_0791)-1)/intracellular);end

function z=function_203(Keq_r_0793,Vmax_r_0793,intracellular,kmp_s_0605r_0793,kmp_s_1155r_0793,kms_s_0331r_0793,kms_s_1154r_0793,s_0331,s_0605,s_1154,s_1155), z=(Vmax_r_0793*1/kms_s_0331r_0793*1/kms_s_1154r_0793*(s_0331*s_1154-s_0605*s_1155/Keq_r_0793)/((1+s_0331/kms_s_0331r_0793)*(1+s_1154/kms_s_1154r_0793)+(1+s_0605/kmp_s_0605r_0793)*(1+s_1155/kmp_s_1155r_0793)-1)/intracellular);end

function z=function_204(Keq_r_0794,Vmax_r_0794,intracellular,kmp_s_0470r_0794,kmp_s_1417r_0794,kms_s_0763_br_0794,kms_s_1155r_0794,s_0470,s_0763_b,s_1155,s_1417), z=(Vmax_r_0794*1/kms_s_0763_br_0794*1/kms_s_1155r_0794*(s_0763_b*s_1155-s_0470*s_1417/Keq_r_0794)/((1+s_0763_b/kms_s_0763_br_0794)*(1+s_1155/kms_s_1155r_0794)+(1+s_0470/kmp_s_0470r_0794)*(1+s_1417/kmp_s_1417r_0794)-1)/intracellular);end

function z=function_205(Keq_r_0825,Vmax_r_0825,intracellular,kmp_s_0185r_0825,kmp_s_0936r_0825,kms_s_0859r_0825,kms_s_0899r_0825,s_0185,s_0859,s_0899,s_0936), z=(Vmax_r_0825*1/kms_s_0859r_0825*1/kms_s_0899r_0825*(s_0859*s_0899-s_0185*s_0936/Keq_r_0825)/((1+s_0859/kms_s_0859r_0825)*(1+s_0899/kms_s_0899r_0825)+(1+s_0185/kmp_s_0185r_0825)*(1+s_0936/kmp_s_0936r_0825)-1)/intracellular);end

function z=function_206(Keq_r_0831,Vmax_r_0831,intracellular,kmp_s_0763_br_0831,kmp_s_1226r_0831,kmp_s_1290r_0831,kms_s_1233r_0831,kms_s_1293r_0831,s_0763_b,s_1226,s_1233,s_1290,s_1293), z=(Vmax_r_0831*1/kms_s_1233r_0831*1/kms_s_1293r_0831*(s_1233*s_1293-s_0763_b*s_1226*s_1290/Keq_r_0831)/((1+s_1233/kms_s_1233r_0831)*(1+s_1293/kms_s_1293r_0831)+(1+s_0763_b/kmp_s_0763_br_0831)*(1+s_1226/kmp_s_1226r_0831)*(1+s_1290/kmp_s_1290r_0831)-1)/intracellular);end

function z=function_235(Keq_r_0938,Vmax_r_0938,intracellular,kmp_s_0366r_0938,kmp_s_0470r_0938,kms_s_0763_br_0938,kms_s_1277r_0938,s_0366,s_0470,s_0763_b,s_1277), z=(Vmax_r_0938*1/kms_s_0763_br_0938*1/kms_s_1277r_0938*(s_0763_b*s_1277-s_0366*s_0470/Keq_r_0938)/((1+s_0763_b/kms_s_0763_br_0938)*(1+s_1277/kms_s_1277r_0938)+(1+s_0366/kmp_s_0366r_0938)*(1+s_0470/kmp_s_0470r_0938)-1)/intracellular);end

function z=function_236(Keq_r_0940,Vmax_r_0940,intracellular,kmp_s_0380r_0940,kmp_s_0470r_0940,kmp_s_1087r_0940,kms_s_0514r_0940,kms_s_1082r_0940,kms_s_1277r_0940,s_0380,s_0470,s_0514,s_1082,s_1087,s_1277), z=(Vmax_r_0940*1/kms_s_0514r_0940*1/kms_s_1082r_0940*1/kms_s_1277r_0940*(s_0514*s_1082*s_1277-s_0380*s_0470*s_1087/Keq_r_0940)/((1+s_0514/kms_s_0514r_0940)*(1+s_1082/kms_s_1082r_0940)*(1+s_1277/kms_s_1277r_0940)+(1+s_0380/kmp_s_0380r_0940)*(1+s_0470/kmp_s_0470r_0940)*(1+s_1087/kmp_s_1087r_0940)-1)/intracellular);end

function z=function_237(Keq_r_0941,Vmax_r_0941,intracellular,kmp_s_0446r_0941,kmp_s_1277r_0941,kms_s_0400r_0941,kms_s_0763_br_0941,kms_s_1243r_0941,s_0400,s_0446,s_0763_b,s_1243,s_1277), z=(Vmax_r_0941*1/kms_s_0400r_0941*1/kms_s_0763_br_0941*1/kms_s_1243r_0941*(s_0400*s_0763_b*s_1243-s_0446*s_1277/Keq_r_0941)/((1+s_0400/kms_s_0400r_0941)*(1+s_0763_b/kms_s_0763_br_0941)*(1+s_1243/kms_s_1243r_0941)+(1+s_0446/kmp_s_0446r_0941)*(1+s_1277/kmp_s_1277r_0941)-1)/intracellular);end

function z=function_238(Keq_r_0948,Vmax_r_0948,intracellular,kmp_s_0335r_0948,kmp_s_1207r_0948,kmp_s_1434_br_0948,kms_s_0163r_0948,kms_s_0320r_0948,s_0163,s_0320,s_0335,s_1207,s_1434_b), z=(Vmax_r_0948*1/kms_s_0163r_0948*1/kms_s_0320r_0948*(s_0163*s_0320-s_0335*s_1207*s_1434_b^2/Keq_r_0948)/((1+s_0163/kms_s_0163r_0948)*(1+s_0320/kms_s_0320r_0948)+(1+s_0335/kmp_s_0335r_0948)*(1+s_1207/kmp_s_1207r_0948)*(1+s_1434_b/kmp_s_1434_br_0948)-1)/intracellular);end

function z=function_239(Keq_r_0949,Vmax_r_0949,intracellular,kmp_s_0320r_0949,kmp_s_1283r_0949,kms_s_0335r_0949,s_0320,s_0335,s_1283), z=(Vmax_r_0949*(1/kms_s_0335r_0949)^2*(s_0335^2-s_0320*s_1283/Keq_r_0949)/(1+s_0335/kms_s_0335r_0949+(1+s_0320/kmp_s_0320r_0949)*(1+s_1283/kmp_s_1283r_0949)-1)/intracellular);end

function z=function_240(Keq_r_0951,Vmax_r_0951,intracellular,kmp_s_0562r_0951,kmp_s_1434_br_0951,kmp_s_1517r_0951,kms_s_0400r_0951,kms_s_1521r_0951,s_0400,s_0562,s_1434_b,s_1517,s_1521), z=(Vmax_r_0951*1/kms_s_0400r_0951*1/kms_s_1521r_0951*(s_0400*s_1521-s_0562*s_1434_b*s_1517/Keq_r_0951)/((1+s_0400/kms_s_0400r_0951)*(1+s_1521/kms_s_1521r_0951)+(1+s_0562/kmp_s_0562r_0951)*(1+s_1434_b/kmp_s_1434_br_0951)*(1+s_1517/kmp_s_1517r_0951)-1)/intracellular);end

function z=function_241(Keq_r_0955,Vmax_r_0955,intracellular,kmp_s_0591r_0955,kmp_s_1434_br_0955,kmp_s_1517r_0955,kms_s_0706r_0955,kms_s_1521r_0955,s_0591,s_0706,s_1434_b,s_1517,s_1521), z=(Vmax_r_0955*1/kms_s_0706r_0955*1/kms_s_1521r_0955*(s_0706*s_1521-s_0591*s_1434_b*s_1517/Keq_r_0955)/((1+s_0706/kms_s_0706r_0955)*(1+s_1521/kms_s_1521r_0955)+(1+s_0591/kmp_s_0591r_0955)*(1+s_1434_b/kmp_s_1434_br_0955)*(1+s_1517/kmp_s_1517r_0955)-1)/intracellular);end

function z=function_242(Keq_r_0957,Vmax_r_0957,intracellular,kmp_s_0622r_0957,kmp_s_1434_br_0957,kmp_s_1517r_0957,kms_s_1411r_0957,kms_s_1521r_0957,s_0622,s_1411,s_1434_b,s_1517,s_1521), z=(Vmax_r_0957*1/kms_s_1411r_0957*1/kms_s_1521r_0957*(s_1411*s_1521-s_0622*s_1434_b*s_1517/Keq_r_0957)/((1+s_1411/kms_s_1411r_0957)*(1+s_1521/kms_s_1521r_0957)+(1+s_0622/kmp_s_0622r_0957)*(1+s_1434_b/kmp_s_1434_br_0957)*(1+s_1517/kmp_s_1517r_0957)-1)/intracellular);end

function z=function_243(Keq_r_0959,Vmax_r_0959,intracellular,kmp_s_0566r_0959,kmp_s_1434_br_0959,kmp_s_1517r_0959,kms_s_0446r_0959,kms_s_1521r_0959,s_0446,s_0566,s_1434_b,s_1517,s_1521), z=(Vmax_r_0959*1/kms_s_0446r_0959*1/kms_s_1521r_0959*(s_0446*s_1521-s_0566*s_1434_b*s_1517/Keq_r_0959)/((1+s_0446/kms_s_0446r_0959)*(1+s_1521/kms_s_1521r_0959)+(1+s_0566/kmp_s_0566r_0959)*(1+s_1434_b/kmp_s_1434_br_0959)*(1+s_1517/kmp_s_1517r_0959)-1)/intracellular);end

function z=function_244(Keq_r_0963,Vmax_r_0963,intracellular,kmp_s_0427r_0963,kms_s_0557r_0963,s_0427,s_0557), z=(Vmax_r_0963*1/kms_s_0557r_0963*(s_0557-s_0427/Keq_r_0963)/(1+s_0557/kms_s_0557r_0963+1+s_0427/kmp_s_0427r_0963-1)/intracellular);end

function z=function_245(Keq_r_0965,Vmax_r_0965,intracellular,kmp_s_0557r_0965,kms_s_0561r_0965,s_0557,s_0561), z=(Vmax_r_0965*1/kms_s_0561r_0965*(s_0561-s_0557/Keq_r_0965)/(1+s_0561/kms_s_0561r_0965+1+s_0557/kmp_s_0557r_0965-1)/intracellular);end

function z=function_246(Keq_r_0967,Vmax_r_0967,intracellular,kmp_s_0669r_0967,kmp_s_0763_br_0967,kmp_s_1290r_0967,kms_s_1293r_0967,kms_s_1447r_0967,s_0669,s_0763_b,s_1290,s_1293,s_1447), z=(Vmax_r_0967*1/kms_s_1293r_0967*1/kms_s_1447r_0967*(s_1293*s_1447-s_0669*s_0763_b*s_1290/Keq_r_0967)/((1+s_1293/kms_s_1293r_0967)*(1+s_1447/kms_s_1447r_0967)+(1+s_0669/kmp_s_0669r_0967)*(1+s_0763_b/kmp_s_0763_br_0967)*(1+s_1290/kmp_s_1290r_0967)-1)/intracellular);end

function z=function_247(Keq_r_0969,Vmax_r_0969,intracellular,kmp_s_0185r_0969,kmp_s_0763_br_0969,kmp_s_0929r_0969,kmp_s_1087r_0969,kms_s_0942r_0969,kms_s_1082r_0969,kms_s_1434_br_0969,s_0185,s_0763_b,s_0929,s_0942,s_1082,s_1087,s_1434_b), z=(Vmax_r_0969*1/kms_s_0942r_0969*1/kms_s_1082r_0969*1/kms_s_1434_br_0969*(s_0942*s_1082*s_1434_b-s_0185*s_0763_b*s_0929*s_1087/Keq_r_0969)/((1+s_0942/kms_s_0942r_0969)*(1+s_1082/kms_s_1082r_0969)*(1+s_1434_b/kms_s_1434_br_0969)+(1+s_0185/kmp_s_0185r_0969)*(1+s_0763_b/kmp_s_0763_br_0969)*(1+s_0929/kmp_s_0929r_0969)*(1+s_1087/kmp_s_1087r_0969)-1)/intracellular);end

function z=function_248(Keq_r_0970,Vmax_r_0970,intracellular,kmp_s_0942r_0970,kmp_s_1091r_0970,kmp_s_1434_br_0970,kms_s_0763_br_0970,kms_s_0867r_0970,kms_s_0899r_0970,kms_s_1096r_0970,s_0763_b,s_0867,s_0899,s_0942,s_1091,s_1096,s_1434_b), z=(Vmax_r_0970*1/kms_s_0763_br_0970*1/kms_s_0867r_0970*1/kms_s_0899r_0970*1/kms_s_1096r_0970*(s_0763_b*s_0867*s_0899*s_1096-s_0942*s_1091*s_1434_b/Keq_r_0970)/((1+s_0763_b/kms_s_0763_br_0970)*(1+s_0867/kms_s_0867r_0970)*(1+s_0899/kms_s_0899r_0970)*(1+s_1096/kms_s_1096r_0970)+(1+s_0942/kmp_s_0942r_0970)*(1+s_1091/kmp_s_1091r_0970)*(1+s_1434_b/kmp_s_1434_br_0970)-1)/intracellular);end

function z=function_249(Keq_r_0972,Vmax_r_0972,intracellular,kmp_s_0218r_0972,kmp_s_0470r_0972,kmp_s_0514r_0972,kms_s_0943r_0972,kms_s_1187r_0972,s_0218,s_0470,s_0514,s_0943,s_1187), z=(Vmax_r_0972*1/kms_s_0943r_0972*1/kms_s_1187r_0972*(s_0943*s_1187-s_0218*s_0470*s_0514/Keq_r_0972)/((1+s_0943/kms_s_0943r_0972)*(1+s_1187/kms_s_1187r_0972)+(1+s_0218/kmp_s_0218r_0972)*(1+s_0470/kmp_s_0470r_0972)*(1+s_0514/kmp_s_0514r_0972)-1)/intracellular);end

function z=function_250(Keq_r_0976,Vmax_r_0976,intracellular,kmp_s_1091r_0976,kmp_s_1306r_0976,kms_s_0217r_0976,kms_s_0763_br_0976,kms_s_1096r_0976,s_0217,s_0763_b,s_1091,s_1096,s_1306), z=(Vmax_r_0976*1/kms_s_0217r_0976*1/kms_s_0763_br_0976*1/kms_s_1096r_0976*(s_0217*s_0763_b*s_1096-s_1091*s_1306/Keq_r_0976)/((1+s_0217/kms_s_0217r_0976)*(1+s_0763_b/kms_s_0763_br_0976)*(1+s_1096/kms_s_1096r_0976)+(1+s_1091/kmp_s_1091r_0976)*(1+s_1306/kmp_s_1306r_0976)-1)/intracellular);end

function z=function_251(Keq_r_0977,Vmax_r_0977,intracellular,kmp_s_0267r_0977,kmp_s_0400r_0977,kmp_s_0763_br_0977,kms_s_0446r_0977,kms_s_1306r_0977,s_0267,s_0400,s_0446,s_0763_b,s_1306), z=(Vmax_r_0977*1/kms_s_0446r_0977*1/kms_s_1306r_0977*(s_0446*s_1306-s_0267*s_0400*s_0763_b/Keq_r_0977)/((1+s_0446/kms_s_0446r_0977)*(1+s_1306/kms_s_1306r_0977)+(1+s_0267/kmp_s_0267r_0977)*(1+s_0400/kmp_s_0400r_0977)*(1+s_0763_b/kmp_s_0763_br_0977)-1)/intracellular);end

function z=function_252(Keq_r_0991,Vmax_r_0991,intracellular,kmp_s_0040r_0991,kmp_s_1082r_0991,kmp_s_1434_br_0991,kms_s_0763_br_0991,kms_s_1087r_0991,kms_s_1160r_0991,kms_s_1327r_0991,s_0040,s_0763_b,s_1082,s_1087,s_1160,s_1327,s_1434_b), z=(Vmax_r_0991*1/kms_s_0763_br_0991*1/kms_s_1087r_0991*1/kms_s_1160r_0991*1/kms_s_1327r_0991*(s_0763_b*s_1087*s_1160*s_1327-s_0040*s_1082*s_1434_b/Keq_r_0991)/((1+s_0763_b/kms_s_0763_br_0991)*(1+s_1087/kms_s_1087r_0991)*(1+s_1160/kms_s_1160r_0991)*(1+s_1327/kms_s_1327r_0991)+(1+s_0040/kmp_s_0040r_0991)*(1+s_1082/kmp_s_1082r_0991)*(1+s_1434_b/kmp_s_1434_br_0991)-1)/intracellular);end

function z=function_131(Keq_r_0512,Vmax_r_0512,intracellular,kmp_s_0905r_0512,kmp_s_1082r_0512,kmp_s_1207r_0512,kms_s_0763_br_0512,kms_s_0894r_0512,kms_s_1087r_0512,s_0763_b,s_0894,s_0905,s_1082,s_1087,s_1207), z=(Vmax_r_0512*1/kms_s_0763_br_0512*1/kms_s_0894r_0512*1/kms_s_1087r_0512*(s_0763_b*s_0894*s_1087-s_0905*s_1082*s_1207/Keq_r_0512)/((1+s_0763_b/kms_s_0763_br_0512)*(1+s_0894/kms_s_0894r_0512)*(1+s_1087/kms_s_1087r_0512)+(1+s_0905/kmp_s_0905r_0512)*(1+s_1082/kmp_s_1082r_0512)*(1+s_1207/kmp_s_1207r_0512)-1)/intracellular);end

function z=function_132(Keq_r_0514,Vmax_r_0514,intracellular,kmp_s_0333r_0514,kmp_s_0605r_0514,kmp_s_0899r_0514,kms_s_0331r_0514,kms_s_0907r_0514,kms_s_1434_br_0514,s_0331,s_0333,s_0605,s_0899,s_0907,s_1434_b), z=(Vmax_r_0514*1/kms_s_0331r_0514*1/kms_s_0907r_0514*1/kms_s_1434_br_0514*(s_0331*s_0907*s_1434_b-s_0333*s_0605*s_0899/Keq_r_0514)/((1+s_0331/kms_s_0331r_0514)*(1+s_0907/kms_s_0907r_0514)*(1+s_1434_b/kms_s_1434_br_0514)+(1+s_0333/kmp_s_0333r_0514)*(1+s_0605/kmp_s_0605r_0514)*(1+s_0899/kmp_s_0899r_0514)-1)/intracellular);end

function z=function_133(Keq_r_0515,Vmax_r_0515,intracellular,kmp_s_0400r_0515,kmp_s_0763_br_0515,kmp_s_0907r_0515,kmp_s_1207r_0515,kms_s_0430r_0515,kms_s_0446r_0515,kms_s_0899r_0515,s_0400,s_0430,s_0446,s_0763_b,s_0899,s_0907,s_1207), z=(Vmax_r_0515*1/kms_s_0430r_0515*1/kms_s_0446r_0515*1/kms_s_0899r_0515*(s_0430*s_0446*s_0899-s_0400*s_0763_b*s_0907*s_1207/Keq_r_0515)/((1+s_0430/kms_s_0430r_0515)*(1+s_0446/kms_s_0446r_0515)*(1+s_0899/kms_s_0899r_0515)+(1+s_0400/kmp_s_0400r_0515)*(1+s_0763_b/kmp_s_0763_br_0515)*(1+s_0907/kmp_s_0907r_0515)*(1+s_1207/kmp_s_1207r_0515)-1)/intracellular);end

function z=function_134(Keq_r_0525,Vmax_r_0525,intracellular,kmp_s_0265r_0525,kmp_s_0763_br_0525,kmp_s_1087r_0525,kms_s_0731r_0525,kms_s_1082r_0525,kms_s_1207r_0525,s_0265,s_0731,s_0763_b,s_1082,s_1087,s_1207), z=(Vmax_r_0525*1/kms_s_0731r_0525*1/kms_s_1082r_0525*1/kms_s_1207r_0525*(s_0731*s_1082*s_1207-s_0265*s_0763_b*s_1087/Keq_r_0525)/((1+s_0731/kms_s_0731r_0525)*(1+s_1082/kms_s_1082r_0525)*(1+s_1207/kms_s_1207r_0525)+(1+s_0265/kmp_s_0265r_0525)*(1+s_0763_b/kmp_s_0763_br_0525)*(1+s_1087/kmp_s_1087r_0525)-1)/intracellular);end

function z=function_135(Keq_r_0526,Vmax_r_0526,intracellular,kmp_s_0734r_0526,kmp_s_0763_br_0526,kmp_s_1096r_0526,kms_s_0732r_0526,kms_s_1091r_0526,s_0732,s_0734,s_0763_b,s_1091,s_1096), z=(Vmax_r_0526*1/kms_s_0732r_0526*1/kms_s_1091r_0526*(s_0732*s_1091-s_0734*s_0763_b*s_1096/Keq_r_0526)/((1+s_0732/kms_s_0732r_0526)*(1+s_1091/kms_s_1091r_0526)+(1+s_0734/kmp_s_0734r_0526)*(1+s_0763_b/kmp_s_0763_br_0526)*(1+s_1096/kmp_s_1096r_0526)-1)/intracellular);end

function z=function_136(Keq_r_0528,Vmax_r_0528,intracellular,kmp_s_0732r_0528,kmp_s_1207r_0528,kms_s_1315r_0528,kms_s_1434_br_0528,s_0732,s_1207,s_1315,s_1434_b), z=(Vmax_r_0528*1/kms_s_1315r_0528*1/kms_s_1434_br_0528*(s_1315*s_1434_b-s_0732*s_1207/Keq_r_0528)/((1+s_1315/kms_s_1315r_0528)*(1+s_1434_b/kms_s_1434_br_0528)+(1+s_0732/kmp_s_0732r_0528)*(1+s_1207/kmp_s_1207r_0528)-1)/intracellular);end

function z=function_139(Keq_r_0534,Vmax_r_0534,intracellular,kmp_s_0083r_0534,kmp_s_0514r_0534,kmp_s_0763_br_0534,kms_s_0386r_0534,kms_s_1315r_0534,s_0083,s_0386,s_0514,s_0763_b,s_1315), z=(Vmax_r_0534*1/kms_s_0386r_0534*1/kms_s_1315r_0534*(s_0386*s_1315-s_0083*s_0514*s_0763_b^2/Keq_r_0534)/((1+s_0386/kms_s_0386r_0534)*(1+s_1315/kms_s_1315r_0534)+(1+s_0083/kmp_s_0083r_0534)*(1+s_0514/kmp_s_0514r_0534)*(1+s_0763_b/kmp_s_0763_br_0534)-1)/intracellular);end

function z=function_140(Keq_r_0538,Vmax_r_0538,intracellular,kmp_s_0307r_0538,kmp_s_0430r_0538,kmp_s_0470r_0538,kmp_s_1087r_0538,kms_s_0309r_0538,kms_s_0740r_0538,kms_s_1082r_0538,s_0307,s_0309,s_0430,s_0470,s_0740,s_1082,s_1087), z=(Vmax_r_0538*1/kms_s_0309r_0538*1/kms_s_0740r_0538*1/kms_s_1082r_0538*(s_0309*s_0740*s_1082-s_0307*s_0430*s_0470*s_1087/Keq_r_0538)/((1+s_0309/kms_s_0309r_0538)*(1+s_0740/kms_s_0740r_0538)*(1+s_1082/kms_s_1082r_0538)+(1+s_0307/kmp_s_0307r_0538)*(1+s_0430/kmp_s_0430r_0538)*(1+s_0470/kmp_s_0470r_0538)*(1+s_1087/kmp_s_1087r_0538)-1)/intracellular);end

function z=function_141(Keq_r_0539,Vmax_r_0539,intracellular,kmp_s_0309r_0539,kmp_s_0943r_0539,kms_s_0307r_0539,kms_s_0740r_0539,kms_s_1434_br_0539,s_0307,s_0309,s_0740,s_0943,s_1434_b), z=(Vmax_r_0539*1/kms_s_0307r_0539*1/kms_s_0740r_0539*1/kms_s_1434_br_0539*(s_0307*s_0740*s_1434_b-s_0309*s_0943/Keq_r_0539)/((1+s_0307/kms_s_0307r_0539)*(1+s_0740/kms_s_0740r_0539)*(1+s_1434_b/kms_s_1434_br_0539)+(1+s_0309/kmp_s_0309r_0539)*(1+s_0943/kmp_s_0943r_0539)-1)/intracellular);end

function z=function_142(Keq_r_0547,Vmax_r_0547,intracellular,kmp_s_0438r_0547,kmp_s_0763_br_0547,kmp_s_1411r_0547,kms_s_1415r_0547,kms_s_1434_br_0547,s_0438,s_0763_b,s_1411,s_1415,s_1434_b), z=(Vmax_r_0547*1/kms_s_1415r_0547*1/kms_s_1434_br_0547*(s_1415*s_1434_b-s_0438*s_0763_b*s_1411/Keq_r_0547)/((1+s_1415/kms_s_1415r_0547)*(1+s_1434_b/kms_s_1434_br_0547)+(1+s_0438/kmp_s_0438r_0547)*(1+s_0763_b/kmp_s_0763_br_0547)*(1+s_1411/kmp_s_1411r_0547)-1)/intracellular);end

function z=function_143(Keq_r_0551,Vmax_r_0551,intracellular,kmp_s_0434r_0551,kmp_s_0605r_0551,kmp_s_0752r_0551,kmp_s_0763_br_0551,kmp_s_0899r_0551,kms_s_0306r_0551,kms_s_0446r_0551,kms_s_0907r_0551,kms_s_1434_br_0551,s_0306,s_0434,s_0446,s_0605,s_0752,s_0763_b,s_0899,s_0907,s_1434_b), z=(Vmax_r_0551*1/kms_s_0306r_0551*1/kms_s_0446r_0551*1/kms_s_0907r_0551*1/kms_s_1434_br_0551*(s_0306*s_0446*s_0907*s_1434_b-s_0434*s_0605*s_0752*s_0763_b^2*s_0899/Keq_r_0551)/((1+s_0306/kms_s_0306r_0551)*(1+s_0446/kms_s_0446r_0551)*(1+s_0907/kms_s_0907r_0551)*(1+s_1434_b/kms_s_1434_br_0551)+(1+s_0434/kmp_s_0434r_0551)*(1+s_0605/kmp_s_0605r_0551)*(1+s_0752/kmp_s_0752r_0551)*(1+s_0763_b/kmp_s_0763_br_0551)*(1+s_0899/kmp_s_0899r_0551)-1)/intracellular);end

function z=function_144(Keq_r_0562,Vmax_r_0562,intracellular,kmp_s_0145r_0562,kmp_s_0605r_0562,kmp_s_0689r_0562,kmp_s_0763_br_0562,kms_s_0755r_0562,kms_s_1434_br_0562,s_0145,s_0605,s_0689,s_0755,s_0763_b,s_1434_b), z=(Vmax_r_0562*1/kms_s_0755r_0562*(1/kms_s_1434_br_0562)^3*(s_0755*s_1434_b^3-s_0145*s_0605*s_0689*s_0763_b^2/Keq_r_0562)/((1+s_0755/kms_s_0755r_0562)*(1+s_1434_b/kms_s_1434_br_0562)+(1+s_0145/kmp_s_0145r_0562)*(1+s_0605/kmp_s_0605r_0562)*(1+s_0689/kmp_s_0689r_0562)*(1+s_0763_b/kmp_s_0763_br_0562)-1)/intracellular);end

function z=function_145(Keq_r_0567,Vmax_r_0567,intracellular,kmp_s_0400r_0567,kmp_s_0706r_0567,kms_s_0446r_0567,kms_s_0752r_0567,s_0400,s_0446,s_0706,s_0752), z=(Vmax_r_0567*1/kms_s_0446r_0567*1/kms_s_0752r_0567*(s_0446*s_0752-s_0400*s_0706/Keq_r_0567)/((1+s_0446/kms_s_0446r_0567)*(1+s_0752/kms_s_0752r_0567)+(1+s_0400/kmp_s_0400r_0567)*(1+s_0706/kmp_s_0706r_0567)-1)/intracellular);end

function z=function_146(Keq_r_0568,Vmax_r_0568,intracellular,kmp_s_0562r_0568,kmp_s_0706r_0568,kms_s_0566r_0568,kms_s_0752r_0568,s_0562,s_0566,s_0706,s_0752), z=(Vmax_r_0568*1/kms_s_0566r_0568*1/kms_s_0752r_0568*(s_0566*s_0752-s_0562*s_0706/Keq_r_0568)/((1+s_0566/kms_s_0566r_0568)*(1+s_0752/kms_s_0752r_0568)+(1+s_0562/kmp_s_0562r_0568)*(1+s_0706/kmp_s_0706r_0568)-1)/intracellular);end

function z=function_147(Keq_r_0573,Vmax_r_0573,intracellular,kmp_s_0400r_0573,kmp_s_0410r_0573,kmp_s_0763_br_0573,kms_s_0446r_0573,kms_s_0545r_0573,s_0400,s_0410,s_0446,s_0545,s_0763_b), z=(Vmax_r_0573*1/kms_s_0446r_0573*1/kms_s_0545r_0573*(s_0446*s_0545-s_0400*s_0410*s_0763_b/Keq_r_0573)/((1+s_0446/kms_s_0446r_0573)*(1+s_0545/kms_s_0545r_0573)+(1+s_0400/kmp_s_0400r_0573)*(1+s_0410/kmp_s_0410r_0573)*(1+s_0763_b/kmp_s_0763_br_0573)-1)/intracellular);end

function z=function_148(Keq_r_0575,Vmax_r_0575,intracellular,kmp_s_0763_br_0575,kmp_s_0911r_0575,kmp_s_1087r_0575,kms_s_0915r_0575,kms_s_1082r_0575,kms_s_1434_br_0575,s_0763_b,s_0911,s_0915,s_1082,s_1087,s_1434_b), z=(Vmax_r_0575*1/kms_s_0915r_0575*(1/kms_s_1082r_0575)^2*1/kms_s_1434_br_0575*(s_0915*s_1082^2*s_1434_b-s_0763_b^3*s_0911*s_1087^2/Keq_r_0575)/((1+s_0915/kms_s_0915r_0575)*(1+s_1082/kms_s_1082r_0575)*(1+s_1434_b/kms_s_1434_br_0575)+(1+s_0763_b/kmp_s_0763_br_0575)*(1+s_0911/kmp_s_0911r_0575)*(1+s_1087/kmp_s_1087r_0575)-1)/intracellular);end

function z=function_149(Keq_r_0576,Vmax_r_0576,intracellular,kmp_s_0915r_0576,kmp_s_1207r_0576,kms_s_0916r_0576,kms_s_1434_br_0576,s_0915,s_0916,s_1207,s_1434_b), z=(Vmax_r_0576*1/kms_s_0916r_0576*1/kms_s_1434_br_0576*(s_0916*s_1434_b-s_0915*s_1207/Keq_r_0576)/((1+s_0916/kms_s_0916r_0576)*(1+s_1434_b/kms_s_1434_br_0576)+(1+s_0915/kmp_s_0915r_0576)*(1+s_1207/kmp_s_1207r_0576)-1)/intracellular);end

function z=function_150(Keq_r_0577,Vmax_r_0577,intracellular,kmp_s_0185r_0577,kmp_s_0916r_0577,kms_s_0212r_0577,kms_s_0899r_0577,s_0185,s_0212,s_0899,s_0916), z=(Vmax_r_0577*1/kms_s_0212r_0577*1/kms_s_0899r_0577*(s_0212*s_0899-s_0185*s_0916/Keq_r_0577)/((1+s_0212/kms_s_0212r_0577)*(1+s_0899/kms_s_0899r_0577)+(1+s_0185/kmp_s_0185r_0577)*(1+s_0916/kmp_s_0916r_0577)-1)/intracellular);end

function z=function_151(Keq_r_0581,Vmax_r_0581,intracellular,kmp_s_0800r_0581,kms_s_0468r_0581,kms_s_1434_br_0581,s_0468,s_0800,s_1434_b), z=(Vmax_r_0581*1/kms_s_0468r_0581*1/kms_s_1434_br_0581*(s_0468*s_1434_b-s_0800/Keq_r_0581)/((1+s_0468/kms_s_0468r_0581)*(1+s_1434_b/kms_s_1434_br_0581)+1+s_0800/kmp_s_0800r_0581-1)/intracellular);end

function z=function_152(Keq_r_0582,Vmax_r_0582,intracellular,kmp_s_0514r_0582,kmp_s_0763_br_0582,kmp_s_0798r_0582,kms_s_0185r_0582,kms_s_0380r_0582,kms_s_1434_br_0582,s_0185,s_0380,s_0514,s_0763_b,s_0798,s_1434_b), z=(Vmax_r_0582*1/kms_s_0185r_0582*1/kms_s_0380r_0582*1/kms_s_1434_br_0582*(s_0185*s_0380*s_1434_b-s_0514*s_0763_b*s_0798/Keq_r_0582)/((1+s_0185/kms_s_0185r_0582)*(1+s_0380/kms_s_0380r_0582)*(1+s_1434_b/kms_s_1434_br_0582)+(1+s_0514/kmp_s_0514r_0582)*(1+s_0763_b/kmp_s_0763_br_0582)*(1+s_0798/kmp_s_0798r_0582)-1)/intracellular);end

function z=function_153(Keq_r_0585,Vmax_r_0585,intracellular,kmp_s_0180r_0585,kmp_s_0763_br_0585,kmp_s_1087r_0585,kms_s_0800r_0585,kms_s_1082r_0585,s_0180,s_0763_b,s_0800,s_1082,s_1087), z=(Vmax_r_0585*1/kms_s_0800r_0585*1/kms_s_1082r_0585*(s_0800*s_1082-s_0180*s_0763_b*s_1087/Keq_r_0585)/((1+s_0800/kms_s_0800r_0585)*(1+s_1082/kms_s_1082r_0585)+(1+s_0180/kmp_s_0180r_0585)*(1+s_0763_b/kmp_s_0763_br_0585)*(1+s_1087/kmp_s_1087r_0585)-1)/intracellular);end

function z=function_154(Keq_r_0586,Vmax_r_0586,intracellular,kmp_s_0919r_0586,kmp_s_1082r_0586,kms_s_0763_br_0586,kms_s_0886r_0586,kms_s_1087r_0586,s_0763_b,s_0886,s_0919,s_1082,s_1087), z=(Vmax_r_0586*1/kms_s_0763_br_0586*1/kms_s_0886r_0586*1/kms_s_1087r_0586*(s_0763_b*s_0886*s_1087-s_0919*s_1082/Keq_r_0586)/((1+s_0763_b/kms_s_0763_br_0586)*(1+s_0886/kms_s_0886r_0586)*(1+s_1087/kms_s_1087r_0586)+(1+s_0919/kmp_s_0919r_0586)*(1+s_1082/kmp_s_1082r_0586)-1)/intracellular);end

function z=function_155(Keq_r_0588,Vmax_r_0588,intracellular,kmp_s_0400r_0588,kmp_s_0763_br_0588,kmp_s_1122r_0588,kms_s_0446r_0588,kms_s_0919r_0588,s_0400,s_0446,s_0763_b,s_0919,s_1122), z=(Vmax_r_0588*1/kms_s_0446r_0588*1/kms_s_0919r_0588*(s_0446*s_0919-s_0400*s_0763_b*s_1122/Keq_r_0588)/((1+s_0446/kms_s_0446r_0588)*(1+s_0919/kms_s_0919r_0588)+(1+s_0400/kmp_s_0400r_0588)*(1+s_0763_b/kmp_s_0763_br_0588)*(1+s_1122/kmp_s_1122r_0588)-1)/intracellular);end

function z=function_156(Keq_r_0589,Vmax_r_0589,intracellular,kmp_s_0514r_0589,kmp_s_1117r_0589,kms_s_0380r_0589,kms_s_0919r_0589,s_0380,s_0514,s_0919,s_1117), z=(Vmax_r_0589*1/kms_s_0380r_0589*1/kms_s_0919r_0589*(s_0380*s_0919-s_0514*s_1117/Keq_r_0589)/((1+s_0380/kms_s_0380r_0589)*(1+s_0919/kms_s_0919r_0589)+(1+s_0514/kmp_s_0514r_0589)*(1+s_1117/kmp_s_1117r_0589)-1)/intracellular);end

function z=function_157(Keq_r_0598,Vmax_r_0598,intracellular,kmp_s_0031r_0598,kmp_s_0514r_0598,kmp_s_1091r_0598,kms_s_0225r_0598,kms_s_0763_br_0598,kms_s_1096r_0598,s_0031,s_0225,s_0514,s_0763_b,s_1091,s_1096), z=(Vmax_r_0598*1/kms_s_0225r_0598*(1/kms_s_0763_br_0598)^2*(1/kms_s_1096r_0598)^2*(s_0225*s_0763_b^2*s_1096^2-s_0031*s_0514*s_1091^2/Keq_r_0598)/((1+s_0225/kms_s_0225r_0598)*(1+s_0763_b/kms_s_0763_br_0598)*(1+s_1096/kms_s_1096r_0598)+(1+s_0031/kmp_s_0031r_0598)*(1+s_0514/kmp_s_0514r_0598)*(1+s_1091/kmp_s_1091r_0598)-1)/intracellular);end

function z=function_158(Keq_r_0599,Vmax_r_0599,intracellular,kmp_s_0225r_0599,kmp_s_0514r_0599,kmp_s_0763_br_0599,kms_s_0374r_0599,kms_s_0380r_0599,kms_s_1434_br_0599,s_0225,s_0374,s_0380,s_0514,s_0763_b,s_1434_b), z=(Vmax_r_0599*1/kms_s_0374r_0599*1/kms_s_0380r_0599*1/kms_s_1434_br_0599*(s_0374*s_0380*s_1434_b-s_0225*s_0514*s_0763_b/Keq_r_0599)/((1+s_0374/kms_s_0374r_0599)*(1+s_0380/kms_s_0380r_0599)*(1+s_1434_b/kms_s_1434_br_0599)+(1+s_0225/kmp_s_0225r_0599)*(1+s_0514/kmp_s_0514r_0599)*(1+s_0763_b/kmp_s_0763_br_0599)-1)/intracellular);end

function z=function_159(Keq_r_0604,Vmax_r_0604,intracellular,kmp_s_0317r_0604,kmp_s_0532r_0604,kmp_s_0763_br_0604,kmp_s_0899r_0604,kms_s_0315r_0604,kms_s_0907r_0604,s_0315,s_0317,s_0532,s_0763_b,s_0899,s_0907), z=(Vmax_r_0604*1/kms_s_0315r_0604*1/kms_s_0907r_0604*(s_0315*s_0907-s_0317*s_0532*s_0763_b*s_0899/Keq_r_0604)/((1+s_0315/kms_s_0315r_0604)*(1+s_0907/kms_s_0907r_0604)+(1+s_0317/kmp_s_0317r_0604)*(1+s_0532/kmp_s_0532r_0604)*(1+s_0763_b/kmp_s_0763_br_0604)*(1+s_0899/kmp_s_0899r_0604)-1)/intracellular);end

function z=function_160(Keq_r_0605,Vmax_r_0605,intracellular,kmp_s_0212r_0605,kmp_s_1434_br_0605,kms_s_0532r_0605,s_0212,s_0532,s_1434_b), z=(Vmax_r_0605*1/kms_s_0532r_0605*(s_0532-s_0212*s_1434_b/Keq_r_0605)/(1+s_0532/kms_s_0532r_0605+(1+s_0212/kmp_s_0212r_0605)*(1+s_1434_b/kmp_s_1434_br_0605)-1)/intracellular);end

function z=function_161(Keq_r_0606,Vmax_r_0606,intracellular,kmp_s_0816r_0606,kmp_s_1434_br_0606,kms_s_0325r_0606,s_0325,s_0816,s_1434_b), z=(Vmax_r_0606*1/kms_s_0325r_0606*(s_0325-s_0816*s_1434_b/Keq_r_0606)/(1+s_0325/kms_s_0325r_0606+(1+s_0816/kmp_s_0816r_0606)*(1+s_1434_b/kmp_s_1434_br_0606)-1)/intracellular);end

function z=function_162(Keq_r_0607,Vmax_r_0607,intracellular,kmp_s_0306r_0607,kmp_s_0763_br_0607,kmp_s_1087r_0607,kms_s_0816r_0607,kms_s_1082r_0607,kms_s_1434_br_0607,s_0306,s_0763_b,s_0816,s_1082,s_1087,s_1434_b), z=(Vmax_r_0607*1/kms_s_0816r_0607*1/kms_s_1082r_0607*1/kms_s_1434_br_0607*(s_0816*s_1082*s_1434_b-s_0306*s_0763_b*s_1087/Keq_r_0607)/((1+s_0816/kms_s_0816r_0607)*(1+s_1082/kms_s_1082r_0607)*(1+s_1434_b/kms_s_1434_br_0607)+(1+s_0306/kmp_s_0306r_0607)*(1+s_0763_b/kmp_s_0763_br_0607)*(1+s_1087/kmp_s_1087r_0607)-1)/intracellular);end

function z=function_163(Keq_r_0608,Vmax_r_0608,intracellular,kmp_s_0088r_0608,kmp_s_0470r_0608,kmp_s_1434_br_0608,kms_s_0078r_0608,kms_s_0763_br_0608,s_0078,s_0088,s_0470,s_0763_b,s_1434_b), z=(Vmax_r_0608*1/kms_s_0078r_0608*1/kms_s_0763_br_0608*(s_0078*s_0763_b-s_0088*s_0470*s_1434_b/Keq_r_0608)/((1+s_0078/kms_s_0078r_0608)*(1+s_0763_b/kms_s_0763_br_0608)+(1+s_0088/kmp_s_0088r_0608)*(1+s_0470/kmp_s_0470r_0608)*(1+s_1434_b/kmp_s_1434_br_0608)-1)/intracellular);end

function z=function_164(Keq_r_0610,Vmax_r_0610,intracellular,kmp_s_0763_br_0610,kmp_s_1207r_0610,kms_s_0605r_0610,kms_s_1434_br_0610,s_0605,s_0763_b,s_1207,s_1434_b), z=(Vmax_r_0610*1/kms_s_0605r_0610*1/kms_s_1434_br_0610*(s_0605*s_1434_b-s_0763_b*s_1207^2/Keq_r_0610)/((1+s_0605/kms_s_0605r_0610)*(1+s_1434_b/kms_s_1434_br_0610)+(1+s_0763_b/kmp_s_0763_br_0610)*(1+s_1207/kmp_s_1207r_0610)-1)/intracellular);end

function z=function_165(Keq_r_0618,Vmax_r_0618,intracellular,kmp_s_0824r_0618,kms_s_0128r_0618,kms_s_1013r_0618,s_0128,s_0824,s_1013), z=(Vmax_r_0618*1/kms_s_0128r_0618*1/kms_s_1013r_0618*(s_0128*s_1013-s_0824/Keq_r_0618)/((1+s_0128/kms_s_0128r_0618)*(1+s_1013/kms_s_1013r_0618)+1+s_0824/kmp_s_0824r_0618-1)/intracellular);end

function z=function_166(Keq_r_0621,Vmax_r_0621,intracellular,kmp_s_0828r_0621,kms_s_0128r_0621,kms_s_1060r_0621,s_0128,s_0828,s_1060), z=(Vmax_r_0621*1/kms_s_0128r_0621*1/kms_s_1060r_0621*(s_0128*s_1060-s_0828/Keq_r_0621)/((1+s_0128/kms_s_0128r_0621)*(1+s_1060/kms_s_1060r_0621)+1+s_0828/kmp_s_0828r_0621-1)/intracellular);end

function z=function_167(Keq_r_0630,Vmax_r_0630,intracellular,kmp_s_0185r_0630,kmp_s_0470r_0630,kmp_s_1096r_0630,kms_s_0847r_0630,kms_s_1091r_0630,s_0185,s_0470,s_0847,s_1091,s_1096), z=(Vmax_r_0630*1/kms_s_0847r_0630*1/kms_s_1091r_0630*(s_0847*s_1091-s_0185*s_0470*s_1096/Keq_r_0630)/((1+s_0847/kms_s_0847r_0630)*(1+s_1091/kms_s_1091r_0630)+(1+s_0185/kmp_s_0185r_0630)*(1+s_0470/kmp_s_0470r_0630)*(1+s_1096/kmp_s_1096r_0630)-1)/intracellular);end

function z=function_168(Keq_r_0633,Vmax_r_0633,intracellular,kmp_s_0749r_0633,kmp_s_1338r_0633,kms_s_0847r_0633,s_0749,s_0847,s_1338), z=(Vmax_r_0633*1/kms_s_0847r_0633*(s_0847-s_0749*s_1338/Keq_r_0633)/(1+s_0847/kms_s_0847r_0633+(1+s_0749/kmp_s_0749r_0633)*(1+s_1338/kmp_s_1338r_0633)-1)/intracellular);end

function z=function_169(Keq_r_0634,Vmax_r_0634,intracellular,kmp_s_0185r_0634,kmp_s_0920r_0634,kms_s_0058r_0634,kms_s_0899r_0634,s_0058,s_0185,s_0899,s_0920), z=(Vmax_r_0634*1/kms_s_0058r_0634*1/kms_s_0899r_0634*(s_0058*s_0899-s_0185*s_0920/Keq_r_0634)/((1+s_0058/kms_s_0058r_0634)*(1+s_0899/kms_s_0899r_0634)+(1+s_0185/kmp_s_0185r_0634)*(1+s_0920/kmp_s_0920r_0634)-1)/intracellular);end

function z=function_214(Keq_r_0866,Vmax_r_0866,intracellular,kmp_s_0193r_0866,kms_s_0264r_0866,s_0193,s_0264), z=(Vmax_r_0866*1/kms_s_0264r_0866*(s_0264-s_0193/Keq_r_0866)/(1+s_0264/kms_s_0264r_0866+1+s_0193/kmp_s_0193r_0866-1)/intracellular);end

function z=function_215(Keq_r_0873,Vmax_r_0873,intracellular,kmp_s_1228r_0873,kmp_s_1290r_0873,kms_s_1225r_0873,kms_s_1293r_0873,s_1225,s_1228,s_1290,s_1293), z=(Vmax_r_0873*1/kms_s_1225r_0873*1/kms_s_1293r_0873*(s_1225*s_1293-s_1228*s_1290/Keq_r_0873)/((1+s_1225/kms_s_1225r_0873)*(1+s_1293/kms_s_1293r_0873)+(1+s_1228/kmp_s_1228r_0873)*(1+s_1290/kmp_s_1290r_0873)-1)/intracellular);end

function z=function_216(Keq_r_0874,Vmax_r_0874,intracellular,kmp_s_0763_br_0874,kmp_s_1225r_0874,kmp_s_1290r_0874,kms_s_1226r_0874,kms_s_1293r_0874,s_0763_b,s_1225,s_1226,s_1290,s_1293), z=(Vmax_r_0874*1/kms_s_1226r_0874*1/kms_s_1293r_0874*(s_1226*s_1293-s_0763_b*s_1225*s_1290/Keq_r_0874)/((1+s_1226/kms_s_1226r_0874)*(1+s_1293/kms_s_1293r_0874)+(1+s_0763_b/kmp_s_0763_br_0874)*(1+s_1225/kmp_s_1225r_0874)*(1+s_1290/kmp_s_1290r_0874)-1)/intracellular);end

function z=function_217(Keq_r_0875,Vmax_r_0875,intracellular,kmp_s_0553r_0875,kms_s_0554r_0875,s_0553,s_0554), z=(Vmax_r_0875*1/kms_s_0554r_0875*(s_0554-s_0553/Keq_r_0875)/(1+s_0554/kms_s_0554r_0875+1+s_0553/kmp_s_0553r_0875-1)/intracellular);end

function z=function_218(Keq_r_0877,Vmax_r_0877,intracellular,kmp_s_0021r_0877,kmp_s_0400r_0877,kms_s_0022r_0877,kms_s_0446r_0877,s_0021,s_0022,s_0400,s_0446), z=(Vmax_r_0877*1/kms_s_0022r_0877*1/kms_s_0446r_0877*(s_0022*s_0446-s_0021*s_0400/Keq_r_0877)/((1+s_0022/kms_s_0022r_0877)*(1+s_0446/kms_s_0446r_0877)+(1+s_0021/kmp_s_0021r_0877)*(1+s_0400/kmp_s_0400r_0877)-1)/intracellular);end

function z=function_219(Keq_r_0881,Vmax_r_0881,intracellular,kmp_s_0079r_0881,kms_s_0080r_0881,kms_s_1434_br_0881,s_0079,s_0080,s_1434_b), z=(Vmax_r_0881*1/kms_s_0080r_0881*1/kms_s_1434_br_0881*(s_0080*s_1434_b-s_0079/Keq_r_0881)/((1+s_0080/kms_s_0080r_0881)*(1+s_1434_b/kms_s_1434_br_0881)+1+s_0079/kmp_s_0079r_0881-1)/intracellular);end

function z=function_220(Keq_r_0882,Vmax_r_0882,intracellular,kmp_s_0080r_0882,kmp_s_0605r_0882,kmp_s_0763_br_0882,kms_s_0334r_0882,kms_s_1434_br_0882,s_0080,s_0334,s_0605,s_0763_b,s_1434_b), z=(Vmax_r_0882*1/kms_s_0334r_0882*1/kms_s_1434_br_0882*(s_0334*s_1434_b-s_0080*s_0605*s_0763_b/Keq_r_0882)/((1+s_0334/kms_s_0334r_0882)*(1+s_1434_b/kms_s_1434_br_0882)+(1+s_0080/kmp_s_0080r_0882)*(1+s_0605/kmp_s_0605r_0882)*(1+s_0763_b/kmp_s_0763_br_0882)-1)/intracellular);end

function z=function_221(Keq_r_0883,Vmax_r_0883,intracellular,kmp_s_0318r_0883,kmp_s_0763_br_0883,kms_s_0316r_0883,kms_s_0470r_0883,s_0316,s_0318,s_0470,s_0763_b), z=(Vmax_r_0883*1/kms_s_0316r_0883*1/kms_s_0470r_0883*(s_0316*s_0470-s_0318*s_0763_b/Keq_r_0883)/((1+s_0316/kms_s_0316r_0883)*(1+s_0470/kms_s_0470r_0883)+(1+s_0318/kmp_s_0318r_0883)*(1+s_0763_b/kmp_s_0763_br_0883)-1)/intracellular);end

function z=function_222(Keq_r_0884,Vmax_r_0884,intracellular,kmp_s_0316r_0884,kmp_s_0400r_0884,kmp_s_0763_br_0884,kmp_s_1207r_0884,kms_s_0158r_0884,kms_s_0446r_0884,s_0158,s_0316,s_0400,s_0446,s_0763_b,s_1207), z=(Vmax_r_0884*1/kms_s_0158r_0884*1/kms_s_0446r_0884*(s_0158*s_0446-s_0316*s_0400*s_0763_b^2*s_1207/Keq_r_0884)/((1+s_0158/kms_s_0158r_0884)*(1+s_0446/kms_s_0446r_0884)+(1+s_0316/kmp_s_0316r_0884)*(1+s_0400/kmp_s_0400r_0884)*(1+s_0763_b/kmp_s_0763_br_0884)*(1+s_1207/kmp_s_1207r_0884)-1)/intracellular);end

function z=function_223(Keq_r_0885,Vmax_r_0885,intracellular,kmp_s_0309r_0885,kmp_s_0325r_0885,kms_s_0122r_0885,kms_s_0317r_0885,s_0122,s_0309,s_0317,s_0325), z=(Vmax_r_0885*1/kms_s_0122r_0885*1/kms_s_0317r_0885*(s_0122*s_0317-s_0309*s_0325/Keq_r_0885)/((1+s_0122/kms_s_0122r_0885)*(1+s_0317/kms_s_0317r_0885)+(1+s_0309/kmp_s_0309r_0885)*(1+s_0325/kmp_s_0325r_0885)-1)/intracellular);end

function z=function_224(Keq_r_0886,Vmax_r_0886,intracellular,kmp_s_0009r_0886,kmp_s_0400r_0886,kmp_s_0763_br_0886,kmp_s_1207r_0886,kms_s_0318r_0886,kms_s_0446r_0886,kms_s_0881r_0886,s_0009,s_0318,s_0400,s_0446,s_0763_b,s_0881,s_1207), z=(Vmax_r_0886*1/kms_s_0318r_0886*1/kms_s_0446r_0886*1/kms_s_0881r_0886*(s_0318*s_0446*s_0881-s_0009*s_0400*s_0763_b*s_1207/Keq_r_0886)/((1+s_0318/kms_s_0318r_0886)*(1+s_0446/kms_s_0446r_0886)*(1+s_0881/kms_s_0881r_0886)+(1+s_0009/kmp_s_0009r_0886)*(1+s_0400/kmp_s_0400r_0886)*(1+s_0763_b/kmp_s_0763_br_0886)*(1+s_1207/kmp_s_1207r_0886)-1)/intracellular);end

function z=function_225(Keq_r_0887,Vmax_r_0887,intracellular,kmp_s_0078r_0887,kms_s_1066r_0887,s_0078,s_1066), z=(Vmax_r_0887*1/kms_s_1066r_0887*(s_1066-s_0078/Keq_r_0887)/(1+s_1066/kms_s_1066r_0887+1+s_0078/kmp_s_0078r_0887-1)/intracellular);end

function z=function_226(Keq_r_0888,Vmax_r_0888,intracellular,kmp_s_0158r_0888,kmp_s_0400r_0888,kmp_s_0763_br_0888,kmp_s_0899r_0888,kmp_s_1207r_0888,kms_s_0446r_0888,kms_s_0907r_0888,kms_s_1052r_0888,kms_s_1434_br_0888,s_0158,s_0400,s_0446,s_0763_b,s_0899,s_0907,s_1052,s_1207,s_1434_b), z=(Vmax_r_0888*1/kms_s_0446r_0888*1/kms_s_0907r_0888*1/kms_s_1052r_0888*1/kms_s_1434_br_0888*(s_0446*s_0907*s_1052*s_1434_b-s_0158*s_0400*s_0763_b*s_0899*s_1207/Keq_r_0888)/((1+s_0446/kms_s_0446r_0888)*(1+s_0907/kms_s_0907r_0888)*(1+s_1052/kms_s_1052r_0888)*(1+s_1434_b/kms_s_1434_br_0888)+(1+s_0158/kmp_s_0158r_0888)*(1+s_0400/kmp_s_0400r_0888)*(1+s_0763_b/kmp_s_0763_br_0888)*(1+s_0899/kmp_s_0899r_0888)*(1+s_1207/kmp_s_1207r_0888)-1)/intracellular);end

function z=function_227(Keq_r_0889,Vmax_r_0889,intracellular,kmp_s_0309r_0889,kmp_s_0763_br_0889,kmp_s_1052r_0889,kms_s_0122r_0889,kms_s_1048r_0889,s_0122,s_0309,s_0763_b,s_1048,s_1052), z=(Vmax_r_0889*1/kms_s_0122r_0889*1/kms_s_1048r_0889*(s_0122*s_1048-s_0309*s_0763_b*s_1052/Keq_r_0889)/((1+s_0122/kms_s_0122r_0889)*(1+s_1048/kms_s_1048r_0889)+(1+s_0309/kmp_s_0309r_0889)*(1+s_0763_b/kmp_s_0763_br_0889)*(1+s_1052/kmp_s_1052r_0889)-1)/intracellular);end

function z=function_228(Keq_r_0890,Vmax_r_0890,intracellular,kmp_s_0400r_0890,kmp_s_0763_br_0890,kmp_s_1048r_0890,kmp_s_1207r_0890,kms_s_0333r_0890,kms_s_0446r_0890,kms_s_0740r_0890,s_0333,s_0400,s_0446,s_0740,s_0763_b,s_1048,s_1207), z=(Vmax_r_0890*1/kms_s_0333r_0890*1/kms_s_0446r_0890*1/kms_s_0740r_0890*(s_0333*s_0446*s_0740-s_0400*s_0763_b*s_1048*s_1207/Keq_r_0890)/((1+s_0333/kms_s_0333r_0890)*(1+s_0446/kms_s_0446r_0890)*(1+s_0740/kms_s_0740r_0890)+(1+s_0400/kmp_s_0400r_0890)*(1+s_0763_b/kmp_s_0763_br_0890)*(1+s_1048/kmp_s_1048r_0890)*(1+s_1207/kmp_s_1207r_0890)-1)/intracellular);end

function z=function_229(Keq_r_0891,Vmax_r_0891,intracellular,kmp_s_0331r_0891,kmp_s_0434r_0891,kmp_s_0763_br_0891,kms_s_0427r_0891,kms_s_0446r_0891,s_0331,s_0427,s_0434,s_0446,s_0763_b), z=(Vmax_r_0891*1/kms_s_0427r_0891*1/kms_s_0446r_0891*(s_0427*s_0446-s_0331*s_0434*s_0763_b/Keq_r_0891)/((1+s_0427/kms_s_0427r_0891)*(1+s_0446/kms_s_0446r_0891)+(1+s_0331/kmp_s_0331r_0891)*(1+s_0434/kmp_s_0434r_0891)*(1+s_0763_b/kmp_s_0763_br_0891)-1)/intracellular);end

function z=function_230(Keq_r_0911,Vmax_r_0911,intracellular,kmp_s_0470r_0911,kmp_s_0859r_0911,kmp_s_1434_br_0911,kms_s_0763_br_0911,kms_s_1258r_0911,s_0470,s_0763_b,s_0859,s_1258,s_1434_b), z=(Vmax_r_0911*1/kms_s_0763_br_0911*1/kms_s_1258r_0911*(s_0763_b*s_1258-s_0470*s_0859*s_1434_b/Keq_r_0911)/((1+s_0763_b/kms_s_0763_br_0911)*(1+s_1258/kms_s_1258r_0911)+(1+s_0470/kmp_s_0470r_0911)*(1+s_0859/kmp_s_0859r_0911)*(1+s_1434_b/kmp_s_1434_br_0911)-1)/intracellular);end

function z=function_231(Keq_r_0913,Vmax_r_0913,intracellular,kmp_s_0209r_0913,kmp_s_0470r_0913,kmp_s_1096r_0913,kms_s_1091r_0913,kms_s_1258r_0913,s_0209,s_0470,s_1091,s_1096,s_1258), z=(Vmax_r_0913*1/kms_s_1091r_0913*1/kms_s_1258r_0913*(s_1091*s_1258-s_0209*s_0470*s_1096/Keq_r_0913)/((1+s_1091/kms_s_1091r_0913)*(1+s_1258/kms_s_1258r_0913)+(1+s_0209/kmp_s_0209r_0913)*(1+s_0470/kmp_s_0470r_0913)*(1+s_1096/kmp_s_1096r_0913)-1)/intracellular);end

function z=function_232(Keq_r_0934,Vmax_r_0934,intracellular,kmp_s_0320r_0934,kmp_s_1207r_0934,kms_s_0319r_0934,kms_s_1434_br_0934,s_0319,s_0320,s_1207,s_1434_b), z=(Vmax_r_0934*1/kms_s_0319r_0934*1/kms_s_1434_br_0934*(s_0319*s_1434_b-s_0320*s_1207/Keq_r_0934)/((1+s_0319/kms_s_0319r_0934)*(1+s_1434_b/kms_s_1434_br_0934)+(1+s_0320/kmp_s_0320r_0934)*(1+s_1207/kmp_s_1207r_0934)-1)/intracellular);end

function z=function_233(Keq_r_0936,Vmax_r_0936,intracellular,kmp_s_0939r_0936,kmp_s_1091r_0936,kms_s_0120r_0936,kms_s_0763_br_0936,kms_s_1096r_0936,s_0120,s_0763_b,s_0939,s_1091,s_1096), z=(Vmax_r_0936*1/kms_s_0120r_0936*(1/kms_s_0763_br_0936)^2*1/kms_s_1096r_0936*(s_0120*s_0763_b^2*s_1096-s_0939*s_1091/Keq_r_0936)/((1+s_0120/kms_s_0120r_0936)*(1+s_0763_b/kms_s_0763_br_0936)*(1+s_1096/kms_s_1096r_0936)+(1+s_0939/kmp_s_0939r_0936)*(1+s_1091/kmp_s_1091r_0936)-1)/intracellular);end

function z=function_234(Keq_r_0937,Vmax_r_0937,intracellular,kmp_s_0400r_0937,kmp_s_0763_br_0937,kmp_s_1156r_0937,kmp_s_1207r_0937,kms_s_0446r_0937,kms_s_0458r_0937,kms_s_1277r_0937,s_0400,s_0446,s_0458,s_0763_b,s_1156,s_1207,s_1277), z=(Vmax_r_0937*1/kms_s_0446r_0937*1/kms_s_0458r_0937*1/kms_s_1277r_0937*(s_0446*s_0458*s_1277-s_0400*s_0763_b*s_1156*s_1207/Keq_r_0937)/((1+s_0446/kms_s_0446r_0937)*(1+s_0458/kms_s_0458r_0937)*(1+s_1277/kms_s_1277r_0937)+(1+s_0400/kmp_s_0400r_0937)*(1+s_0763_b/kmp_s_0763_br_0937)*(1+s_1156/kmp_s_1156r_0937)*(1+s_1207/kmp_s_1207r_0937)-1)/intracellular);end

function z=function_254(Keq_r_0995,Vmax_r_0995,intracellular,kmp_s_0641r_0995,kmp_s_1434_br_0995,kms_s_0635r_0995,kms_s_0663r_0995,s_0635,s_0641,s_0663,s_1434_b), z=(Vmax_r_0995*1/kms_s_0635r_0995*1/kms_s_0663r_0995*(s_0635*s_0663-s_0641*s_1434_b/Keq_r_0995)/((1+s_0635/kms_s_0635r_0995)*(1+s_0663/kms_s_0663r_0995)+(1+s_0641/kmp_s_0641r_0995)*(1+s_1434_b/kmp_s_1434_br_0995)-1)/intracellular);end

function z=function_255(Keq_r_1003,Vmax_r_1003,intracellular,kmp_s_0400r_1003,kmp_s_1207r_1003,kmp_s_1342r_1003,kms_s_0446r_1003,kms_s_0514r_1003,kms_s_1338r_1003,s_0400,s_0446,s_0514,s_1207,s_1338,s_1342), z=(Vmax_r_1003*1/kms_s_0446r_1003*1/kms_s_0514r_1003*1/kms_s_1338r_1003*(s_0446*s_0514*s_1338-s_0400*s_1207*s_1342/Keq_r_1003)/((1+s_0446/kms_s_0446r_1003)*(1+s_0514/kms_s_0514r_1003)*(1+s_1338/kms_s_1338r_1003)+(1+s_0400/kmp_s_0400r_1003)*(1+s_1207/kmp_s_1207r_1003)*(1+s_1342/kmp_s_1342r_1003)-1)/intracellular);end

function z=function_256(Keq_r_1007,Vmax_r_1007,intracellular,kmp_s_0304r_1007,kmp_s_1207r_1007,kms_s_0400r_1007,kms_s_0763_br_1007,kms_s_1347r_1007,s_0304,s_0400,s_0763_b,s_1207,s_1347), z=(Vmax_r_1007*1/kms_s_0400r_1007*1/kms_s_0763_br_1007*1/kms_s_1347r_1007*(s_0400*s_0763_b*s_1347-s_0304*s_1207/Keq_r_1007)/((1+s_0400/kms_s_0400r_1007)*(1+s_0763_b/kms_s_0763_br_1007)*(1+s_1347/kms_s_1347r_1007)+(1+s_0304/kmp_s_0304r_1007)*(1+s_1207/kmp_s_1207r_1007)-1)/intracellular);end

function z=function_257(Keq_r_1008,Vmax_r_1008,intracellular,kmp_s_0805r_1008,kmp_s_1091r_1008,kmp_s_1434_br_1008,kms_s_0763_br_1008,kms_s_1096r_1008,kms_s_1349r_1008,s_0763_b,s_0805,s_1091,s_1096,s_1349,s_1434_b), z=(Vmax_r_1008*(1/kms_s_0763_br_1008)^5*(1/kms_s_1096r_1008)^3*1/kms_s_1349r_1008*(s_0763_b^5*s_1096^3*s_1349-s_0805*s_1091^3*s_1434_b^3/Keq_r_1008)/((1+s_0763_b/kms_s_0763_br_1008)*(1+s_1096/kms_s_1096r_1008)*(1+s_1349/kms_s_1349r_1008)+(1+s_0805/kmp_s_0805r_1008)*(1+s_1091/kmp_s_1091r_1008)*(1+s_1434_b/kmp_s_1434_br_1008)-1)/intracellular);end

function z=function_258(Keq_r_1024,Vmax_r_1024,intracellular,kmp_s_1091r_1024,kmp_s_1521r_1024,kms_s_0763_br_1024,kms_s_1096r_1024,kms_s_1517r_1024,s_0763_b,s_1091,s_1096,s_1517,s_1521), z=(Vmax_r_1024*1/kms_s_0763_br_1024*1/kms_s_1096r_1024*1/kms_s_1517r_1024*(s_0763_b*s_1096*s_1517-s_1091*s_1521/Keq_r_1024)/((1+s_0763_b/kms_s_0763_br_1024)*(1+s_1096/kms_s_1096r_1024)*(1+s_1517/kms_s_1517r_1024)+(1+s_1091/kmp_s_1091r_1024)*(1+s_1521/kmp_s_1521r_1024)-1)/intracellular);end

function z=function_259(Keq_r_1026,Vmax_r_1026,intracellular,kmp_s_0366r_1026,kmp_s_0740r_1026,kms_s_0949r_1026,s_0366,s_0740,s_0949), z=(Vmax_r_1026*1/kms_s_0949r_1026*(s_0949-s_0366*s_0740/Keq_r_1026)/(1+s_0949/kms_s_0949r_1026+(1+s_0366/kmp_s_0366r_1026)*(1+s_0740/kmp_s_0740r_1026)-1)/intracellular);end

function z=function_260(Keq_r_1027,Vmax_r_1027,intracellular,kmp_s_0949r_1027,kmp_s_1207r_1027,kms_s_1122r_1027,kms_s_1434_br_1027,s_0949,s_1122,s_1207,s_1434_b), z=(Vmax_r_1027*1/kms_s_1122r_1027*1/kms_s_1434_br_1027*(s_1122*s_1434_b-s_0949*s_1207/Keq_r_1027)/((1+s_1122/kms_s_1122r_1027)*(1+s_1434_b/kms_s_1434_br_1027)+(1+s_0949/kmp_s_0949r_1027)*(1+s_1207/kmp_s_1207r_1027)-1)/intracellular);end

function z=function_261(Keq_r_1032,Vmax_r_1032,intracellular,kmp_s_0601r_1032,kmp_s_0619r_1032,kms_s_0307r_1032,kms_s_0624r_1032,s_0307,s_0601,s_0619,s_0624), z=(Vmax_r_1032*1/kms_s_0307r_1032*1/kms_s_0624r_1032*(s_0307*s_0624-s_0601*s_0619/Keq_r_1032)/((1+s_0307/kms_s_0307r_1032)*(1+s_0624/kms_s_0624r_1032)+(1+s_0601/kmp_s_0601r_1032)*(1+s_0619/kmp_s_0619r_1032)-1)/intracellular);end

function z=function_262(Keq_r_1035,Vmax_r_1035,intracellular,kmp_s_0731r_1035,kmp_s_1304r_1035,kms_s_0533r_1035,kms_s_0539r_1035,s_0533,s_0539,s_0731,s_1304), z=(Vmax_r_1035*1/kms_s_0533r_1035*1/kms_s_0539r_1035*(s_0533*s_0539-s_0731*s_1304/Keq_r_1035)/((1+s_0533/kms_s_0533r_1035)*(1+s_0539/kms_s_0539r_1035)+(1+s_0731/kmp_s_0731r_1035)*(1+s_1304/kmp_s_1304r_1035)-1)/intracellular);end

function z=function_263(Keq_r_1036,Vmax_r_1036,intracellular,kmp_s_0427r_1036,kmp_s_0561r_1036,kms_s_0731r_1036,kms_s_1304r_1036,s_0427,s_0561,s_0731,s_1304), z=(Vmax_r_1036*1/kms_s_0731r_1036*1/kms_s_1304r_1036*(s_0731*s_1304-s_0427*s_0561/Keq_r_1036)/((1+s_0731/kms_s_0731r_1036)*(1+s_1304/kms_s_1304r_1036)+(1+s_0427/kmp_s_0427r_1036)*(1+s_0561/kmp_s_0561r_1036)-1)/intracellular);end

function z=function_264(Keq_r_1037,Vmax_r_1037,intracellular,kmp_s_0533r_1037,kmp_s_0561r_1037,kms_s_0539r_1037,kms_s_0731r_1037,s_0533,s_0539,s_0561,s_0731), z=(Vmax_r_1037*1/kms_s_0539r_1037*1/kms_s_0731r_1037*(s_0539*s_0731-s_0533*s_0561/Keq_r_1037)/((1+s_0539/kms_s_0539r_1037)*(1+s_0731/kms_s_0731r_1037)+(1+s_0533/kmp_s_0533r_1037)*(1+s_0561/kmp_s_0561r_1037)-1)/intracellular);end

function z=function_265(Keq_r_1038,Vmax_r_1038,intracellular,kmp_s_0416r_1038,kmp_s_1207r_1038,kms_s_0419r_1038,kms_s_1434_br_1038,s_0416,s_0419,s_1207,s_1434_b), z=(Vmax_r_1038*1/kms_s_0419r_1038*1/kms_s_1434_br_1038*(s_0419*s_1434_b-s_0416*s_1207/Keq_r_1038)/((1+s_0419/kms_s_0419r_1038)*(1+s_1434_b/kms_s_1434_br_1038)+(1+s_0416/kmp_s_0416r_1038)*(1+s_1207/kmp_s_1207r_1038)-1)/intracellular);end

function z=function_270(Keq_r_1059,Vmax_r_1059,intracellular,kmp_s_0400r_1059,kmp_s_1411r_1059,kms_s_0446r_1059,kms_s_1417r_1059,s_0400,s_0446,s_1411,s_1417), z=(Vmax_r_1059*1/kms_s_0446r_1059*1/kms_s_1417r_1059*(s_0446*s_1417-s_0400*s_1411/Keq_r_1059)/((1+s_0446/kms_s_0446r_1059)*(1+s_1417/kms_s_1417r_1059)+(1+s_0400/kmp_s_0400r_1059)*(1+s_1411/kmp_s_1411r_1059)-1)/intracellular);end

function z=function_271(Keq_r_1066,Vmax_r_1066,intracellular,kmp_s_0446r_1066,kmp_s_0624r_1066,kms_s_0400r_1066,kms_s_0622r_1066,s_0400,s_0446,s_0622,s_0624), z=(Vmax_r_1066*1/kms_s_0400r_1066*1/kms_s_0622r_1066*(s_0400*s_0622-s_0446*s_0624/Keq_r_1066)/((1+s_0400/kms_s_0400r_1066)*(1+s_0622/kms_s_0622r_1066)+(1+s_0446/kmp_s_0446r_1066)*(1+s_0624/kmp_s_0624r_1066)-1)/intracellular);end

function z=function_272(Keq_r_1072,Vmax_r_1072,intracellular,kmp_s_0605r_1072,kmp_s_1415r_1072,kms_s_0549r_1072,kms_s_0763_br_1072,kms_s_1430r_1072,s_0549,s_0605,s_0763_b,s_1415,s_1430), z=(Vmax_r_1072*1/kms_s_0549r_1072*1/kms_s_0763_br_1072*1/kms_s_1430r_1072*(s_0549*s_0763_b*s_1430-s_0605*s_1415/Keq_r_1072)/((1+s_0549/kms_s_0549r_1072)*(1+s_0763_b/kms_s_0763_br_1072)*(1+s_1430/kms_s_1430r_1072)+(1+s_0605/kmp_s_0605r_1072)*(1+s_1415/kmp_s_1415r_1072)-1)/intracellular);end

function z=function_273(Keq_r_1073,Vmax_r_1073,intracellular,kmp_s_0185r_1073,kmp_s_0960r_1073,kms_s_0238r_1073,kms_s_0899r_1073,s_0185,s_0238,s_0899,s_0960), z=(Vmax_r_1073*1/kms_s_0238r_1073*1/kms_s_0899r_1073*(s_0238*s_0899-s_0185*s_0960/Keq_r_1073)/((1+s_0238/kms_s_0238r_1073)*(1+s_0899/kms_s_0899r_1073)+(1+s_0185/kmp_s_0185r_1073)*(1+s_0960/kmp_s_0960r_1073)-1)/intracellular);end

function z=function_274(Keq_r_1157,Vmax_r_1157,kmp_s_0430r_1157,kms_s_0431_br_1157,s_0430,s_0431_b), z=(Vmax_r_1157*1/kms_s_0431_br_1157*(s_0431_b-s_0430/Keq_r_1157)/(1+s_0431_b/kms_s_0431_br_1157+1+s_0430/kmp_s_0430r_1157-1));end

function z=function_275(Keq_r_1194,Vmax_r_1194,kmp_s_0472_br_1194,kms_s_0470r_1194,s_0470,s_0472_b), z=(Vmax_r_1194*1/kms_s_0470r_1194*(s_0470-s_0472_b/Keq_r_1194)/(1+s_0470/kms_s_0470r_1194+1+s_0472_b/kmp_s_0472_br_1194-1));end

function z=function_276(Keq_r_1247,Vmax_r_1247,kmp_s_0651_br_1247,kms_s_0650r_1247,s_0650,s_0651_b), z=(Vmax_r_1247*1/kms_s_0650r_1247*(s_0650-s_0651_b/Keq_r_1247)/(1+s_0650/kms_s_0650r_1247+1+s_0651_b/kmp_s_0651_br_1247-1));end

function z=function_277(Keq_r_1293,Vmax_r_1293,kmp_s_0545r_1293,kms_s_0547_br_1293,s_0545,s_0547_b), z=(Vmax_r_1293*1/kms_s_0547_br_1293*(s_0547_b-s_0545/Keq_r_1293)/(1+s_0547_b/kms_s_0547_br_1293+1+s_0545/kmp_s_0545r_1293-1));end

function z=function_278(Keq_r_1435,Vmax_r_1435,kmp_s_1160r_1435,kms_s_1162_br_1435,s_1160,s_1162_b), z=(Vmax_r_1435*1/kms_s_1162_br_1435*(s_1162_b-s_1160/Keq_r_1435)/(1+s_1162_b/kms_s_1162_br_1435+1+s_1160/kmp_s_1160r_1435-1));end

function z=function_279(Keq_r_1461,Vmax_r_1461,kmp_s_0763_br_1461,kmp_s_1207r_1461,kms_s_0766_br_1461,kms_s_1209_br_1461,s_0763_b,s_0766_b,s_1207,s_1209_b), z=(Vmax_r_1461*1/kms_s_0766_br_1461*1/kms_s_1209_br_1461*(s_0766_b*s_1209_b-s_0763_b*s_1207/Keq_r_1461)/((1+s_0766_b/kms_s_0766_br_1461)*(1+s_1209_b/kms_s_1209_br_1461)+(1+s_0763_b/kmp_s_0763_br_1461)*(1+s_1207/kmp_s_1207r_1461)-1));end

function z=function_280(Keq_r_1503,Vmax_r_1503,kmp_s_0766_br_1503,kmp_s_1339_br_1503,kms_s_0763_br_1503,kms_s_1338r_1503,s_0763_b,s_0766_b,s_1338,s_1339_b), z=(Vmax_r_1503*1/kms_s_0763_br_1503*1/kms_s_1338r_1503*(s_0763_b*s_1338-s_0766_b*s_1339_b/Keq_r_1503)/((1+s_0763_b/kms_s_0763_br_1503)*(1+s_1338/kms_s_1338r_1503)+(1+s_0766_b/kmp_s_0766_br_1503)*(1+s_1339_b/kmp_s_1339_br_1503)-1));end

function z=function_281(Keq_r_1507,Vmax_r_1507,kmp_s_1347r_1507,kms_s_1348_br_1507,s_1347,s_1348_b), z=(Vmax_r_1507*1/kms_s_1348_br_1507*(s_1348_b-s_1347/Keq_r_1507)/(1+s_1348_b/kms_s_1348_br_1507+1+s_1347/kmp_s_1347r_1507-1));end

function z=function_282(Keq_r_1672,Vmax_r_1672,intracellular,kmp_s_0386r_1672,kms_s_1342r_1672,s_0386,s_1342), z=(Vmax_r_1672*1/kms_s_1342r_1672*(s_1342-s_0386/Keq_r_1672)/(1+s_1342/kms_s_1342r_1672+1+s_0386/kmp_s_0386r_1672-1)/intracellular);end

function z=function_283(V_o,a_s_0001r_1812,a_s_0416r_1812,a_s_0434r_1812,a_s_0446r_1812,a_s_0511r_1812,a_s_0564r_1812,a_s_0569r_1812,a_s_0593r_1812,a_s_0619r_1812,a_s_0740r_1812,a_s_0743r_1812,a_s_0752r_1812,a_s_0863r_1812,a_s_0873r_1812,a_s_0877r_1812,a_s_0881r_1812,a_s_0889r_1812,a_s_0899r_1812,a_s_0907r_1812,a_s_0911r_1812,a_s_0920r_1812,a_s_0925r_1812,a_s_0929r_1812,a_s_0933r_1812,a_s_0936r_1812,a_s_0939r_1812,a_s_0943r_1812,a_s_0949r_1812,a_s_0952r_1812,a_s_0955r_1812,a_s_0960r_1812,a_s_1000r_1812,a_s_1011r_1812,a_s_1283r_1812,a_s_1347r_1812,a_s_1417r_1812,intracellular,s_0001,s_0001_or_1812,s_0416,s_0416_or_1812,s_0434,s_0434_or_1812,s_0446,s_0446_or_1812,s_0511,s_0511_or_1812,s_0564,s_0564_or_1812,s_0569,s_0569_or_1812,s_0593,s_0593_or_1812,s_0619,s_0619_or_1812,s_0740,s_0740_or_1812,s_0743,s_0743_or_1812,s_0752,s_0752_or_1812,s_0863,s_0863_or_1812,s_0873,s_0873_or_1812,s_0877,s_0877_or_1812,s_0881,s_0881_or_1812,s_0889,s_0889_or_1812,s_0899,s_0899_or_1812,s_0907,s_0907_or_1812,s_0911,s_0911_or_1812,s_0920,s_0920_or_1812,s_0925,s_0925_or_1812,s_0929,s_0929_or_1812,s_0933,s_0933_or_1812,s_0936,s_0936_or_1812,s_0939,s_0939_or_1812,s_0943,s_0943_or_1812,s_0949,s_0949_or_1812,s_0952,s_0952_or_1812,s_0955,s_0955_or_1812,s_0960,s_0960_or_1812,s_1000,s_1000_or_1812,s_1011,s_1011_or_1812,s_1283,s_1283_or_1812,s_1347,s_1347_or_1812,s_1417,s_1417_or_1812,zero_flux), z=(MAX(V_o*(1+a_s_0001r_1812*log(s_0001/s_0001_or_1812)+a_s_0416r_1812*log(s_0416/s_0416_or_1812)+a_s_0434r_1812*log(s_0434/s_0434_or_1812)+a_s_0446r_1812*log(s_0446/s_0446_or_1812)+a_s_0511r_1812*log(s_0511/s_0511_or_1812)+a_s_0564r_1812*log(s_0564/s_0564_or_1812)+a_s_0569r_1812*log(s_0569/s_0569_or_1812)+a_s_0593r_1812*log(s_0593/s_0593_or_1812)+a_s_0619r_1812*log(s_0619/s_0619_or_1812)+a_s_0740r_1812*log(s_0740/s_0740_or_1812)+a_s_0743r_1812*log(s_0743/s_0743_or_1812)+a_s_0752r_1812*log(s_0752/s_0752_or_1812)+a_s_0863r_1812*log(s_0863/s_0863_or_1812)+a_s_0873r_1812*log(s_0873/s_0873_or_1812)+a_s_0877r_1812*log(s_0877/s_0877_or_1812)+a_s_0881r_1812*log(s_0881/s_0881_or_1812)+a_s_0889r_1812*log(s_0889/s_0889_or_1812)+a_s_0899r_1812*log(s_0899/s_0899_or_1812)+a_s_0907r_1812*log(s_0907/s_0907_or_1812)+a_s_0911r_1812*log(s_0911/s_0911_or_1812)+a_s_0920r_1812*log(s_0920/s_0920_or_1812)+a_s_0925r_1812*log(s_0925/s_0925_or_1812)+a_s_0929r_1812*log(s_0929/s_0929_or_1812)+a_s_0933r_1812*log(s_0933/s_0933_or_1812)+a_s_0936r_1812*log(s_0936/s_0936_or_1812)+a_s_0939r_1812*log(s_0939/s_0939_or_1812)+a_s_0943r_1812*log(s_0943/s_0943_or_1812)+a_s_0949r_1812*log(s_0949/s_0949_or_1812)+a_s_0952r_1812*log(s_0952/s_0952_or_1812)+a_s_0955r_1812*log(s_0955/s_0955_or_1812)+a_s_0960r_1812*log(s_0960/s_0960_or_1812)+a_s_1000r_1812*log(s_1000/s_1000_or_1812)+a_s_1011r_1812*log(s_1011/s_1011_or_1812)+a_s_1347r_1812*log(s_1347/s_1347_or_1812)+a_s_1417r_1812*log(s_1417/s_1417_or_1812)+a_s_1283r_1812*log(s_1283/s_1283_or_1812)),zero_flux)/intracellular);end

function z=function_284(V_o,a_s_0463r_1814,s_0463,s_0463_or_1814,zero_flux), z=(MAX(V_o*(1+a_s_0463r_1814*log(s_0463/s_0463_or_1814)),zero_flux));end

function z=function_285(V_o,a_s_0090r_1816,a_s_0124r_1816,a_s_0627r_1816,a_s_0632r_1816,a_s_0635r_1816,a_s_0641r_1816,a_s_0663r_1816,a_s_0669r_1816,a_s_0824r_1816,a_s_0963r_1816,a_s_1219r_1816,a_s_1228r_1816,a_s_1233r_1816,a_s_1399r_1816,a_s_1447r_1816,intracellular,s_0090,s_0090_or_1816,s_0124,s_0124_or_1816,s_0627,s_0627_or_1816,s_0632,s_0632_or_1816,s_0635,s_0635_or_1816,s_0641,s_0641_or_1816,s_0663,s_0663_or_1816,s_0669,s_0669_or_1816,s_0824,s_0824_or_1816,s_0963,s_0963_or_1816,s_1219,s_1219_or_1816,s_1228,s_1228_or_1816,s_1233,s_1233_or_1816,s_1399,s_1399_or_1816,s_1447,s_1447_or_1816,zero_flux), z=(MAX(V_o*(1+a_s_0090r_1816*log(s_0090/s_0090_or_1816)+a_s_0124r_1816*log(s_0124/s_0124_or_1816)+a_s_0627r_1816*log(s_0627/s_0627_or_1816)+a_s_0632r_1816*log(s_0632/s_0632_or_1816)+a_s_0635r_1816*log(s_0635/s_0635_or_1816)+a_s_0641r_1816*log(s_0641/s_0641_or_1816)+a_s_0663r_1816*log(s_0663/s_0663_or_1816)+a_s_0669r_1816*log(s_0669/s_0669_or_1816)+a_s_0824r_1816*log(s_0824/s_0824_or_1816)+a_s_0963r_1816*log(s_0963/s_0963_or_1816)+a_s_1219r_1816*log(s_1219/s_1219_or_1816)+a_s_1228r_1816*log(s_1228/s_1228_or_1816)+a_s_1233r_1816*log(s_1233/s_1233_or_1816)+a_s_1399r_1816*log(s_1399/s_1399_or_1816)+a_s_1447r_1816*log(s_1447/s_1447_or_1816)),zero_flux)/intracellular);end

function z=function_253(Keq_r_0993,Vmax_r_0993,intracellular,kmp_s_0605r_0993,kmp_s_1091r_0993,kmp_s_1327r_0993,kms_s_0195r_0993,kms_s_0763_br_0993,kms_s_1096r_0993,s_0195,s_0605,s_0763_b,s_1091,s_1096,s_1327), z=(Vmax_r_0993*(1/kms_s_0195r_0993)^2*1/kms_s_0763_br_0993*1/kms_s_1096r_0993*(s_0195^2*s_0763_b*s_1096-s_0605^2*s_1091*s_1327/Keq_r_0993)/((1+s_0195/kms_s_0195r_0993)*(1+s_0763_b/kms_s_0763_br_0993)*(1+s_1096/kms_s_1096r_0993)+(1+s_0605/kmp_s_0605r_0993)*(1+s_1091/kmp_s_1091r_0993)*(1+s_1327/kmp_s_1327r_0993)-1)/intracellular);end

function z=function_266(Keq_r_1040,Vmax_r_1040,intracellular,kmp_s_0596r_1040,kmp_s_0663r_1040,kms_s_1399r_1040,kms_s_1434_br_1040,s_0596,s_0663,s_1399,s_1434_b), z=(Vmax_r_1040*1/kms_s_1399r_1040*1/kms_s_1434_br_1040*(s_1399*s_1434_b-s_0596*s_0663/Keq_r_1040)/((1+s_1399/kms_s_1399r_1040)*(1+s_1434_b/kms_s_1434_br_1040)+(1+s_0596/kmp_s_0596r_1040)*(1+s_0663/kmp_s_0663r_1040)-1)/intracellular);end

function z=function_267(Keq_r_1041,Vmax_r_1041,intracellular,kmp_s_0731r_1041,kms_s_0735r_1041,s_0731,s_0735), z=(Vmax_r_1041*1/kms_s_0735r_1041*(s_0735-s_0731/Keq_r_1041)/(1+s_0735/kms_s_0735r_1041+1+s_0731/kmp_s_0731r_1041-1)/intracellular);end

function z=function_268(Keq_r_1042,Vmax_r_1042,intracellular,kmp_s_0731r_1042,kmp_s_0952r_1042,kmp_s_1434_br_1042,kms_s_0088r_1042,kms_s_0943r_1042,s_0088,s_0731,s_0943,s_0952,s_1434_b), z=(Vmax_r_1042*1/kms_s_0088r_1042*1/kms_s_0943r_1042*(s_0088*s_0943-s_0731*s_0952*s_1434_b/Keq_r_1042)/((1+s_0088/kms_s_0088r_1042)*(1+s_0943/kms_s_0943r_1042)+(1+s_0731/kmp_s_0731r_1042)*(1+s_0952/kmp_s_0952r_1042)*(1+s_1434_b/kmp_s_1434_br_1042)-1)/intracellular);end

function z=function_269(Keq_r_1050,Vmax_r_1050,intracellular,kmp_s_0185r_1050,kmp_s_0955r_1050,kms_s_0209r_1050,kms_s_0899r_1050,s_0185,s_0209,s_0899,s_0955), z=(Vmax_r_1050*1/kms_s_0209r_1050*1/kms_s_0899r_1050*(s_0209*s_0899-s_0185*s_0955/Keq_r_1050)/((1+s_0209/kms_s_0209r_1050)*(1+s_0899/kms_s_0899r_1050)+(1+s_0185/kmp_s_0185r_1050)*(1+s_0955/kmp_s_0955r_1050)-1)/intracellular);end

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


