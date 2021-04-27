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
% Model name = Smallbone2013 - Yeast metabolic model with modular rate law
%
% is http://identifiers.org/biomodels.db/MODEL1302140004
% is http://identifiers.org/biomodels.db/BIOMD0000000472
% isDescribedBy http://identifiers.org/doi/10.1089/ind.2013.0003
%


function main()
%Initial conditions vector
	x0=zeros(303,1);
	x0(1) = 0.1;
	x0(2) = 0.1;
	x0(3) = 0.1;
	x0(4) = 0.1;
	x0(5) = 0.1;
	x0(6) = 0.1;
	x0(7) = 0.1;
	x0(8) = 0.1;
	x0(9) = 0.1;
	x0(10) = 0.1;
	x0(11) = 0.1;
	x0(12) = 0.1;
	x0(13) = 0.1;
	x0(14) = 0.1;
	x0(15) = 0.1;
	x0(16) = 0.1;
	x0(17) = 0.1;
	x0(18) = 0.1;
	x0(19) = 0.1;
	x0(20) = 0.1;
	x0(21) = 0.1;
	x0(22) = 0.1;
	x0(23) = 0.1;
	x0(24) = 0.1;
	x0(25) = 0.1;
	x0(26) = 0.1;
	x0(27) = 0.1;
	x0(28) = 0.1;
	x0(29) = 0.1;
	x0(30) = 0.1;
	x0(31) = 0.1;
	x0(32) = 0.1;
	x0(33) = 0.1;
	x0(34) = 0.1;
	x0(35) = 0.1;
	x0(36) = 0.1;
	x0(37) = 0.1;
	x0(38) = 0.1;
	x0(39) = 0.1;
	x0(40) = 0.1;
	x0(41) = 0.1;
	x0(42) = 0.1;
	x0(43) = 0.1;
	x0(44) = 0.1;
	x0(45) = 0.1;
	x0(46) = 0.1;
	x0(47) = 0.1;
	x0(48) = 0.1;
	x0(49) = 0.1;
	x0(50) = 0.1;
	x0(51) = 0.1;
	x0(52) = 0.1;
	x0(53) = 0.1;
	x0(54) = 0.1;
	x0(55) = 0.1;
	x0(56) = 0.1;
	x0(57) = 0.1;
	x0(58) = 0.1;
	x0(59) = 0.1;
	x0(60) = 0.1;
	x0(61) = 0.1;
	x0(62) = 0.1;
	x0(63) = 0.1;
	x0(64) = 0.1;
	x0(65) = 0.1;
	x0(66) = 0.1;
	x0(67) = 0.1;
	x0(68) = 0.1;
	x0(69) = 0.1;
	x0(70) = 0.1;
	x0(71) = 0.1;
	x0(72) = 0.1;
	x0(73) = 0.1;
	x0(74) = 0.1;
	x0(75) = 0.1;
	x0(76) = 0.1;
	x0(77) = 0.1;
	x0(78) = 0.1;
	x0(79) = 0.1;
	x0(80) = 0.1;
	x0(81) = 0.1;
	x0(82) = 0.1;
	x0(83) = 0.1;
	x0(84) = 0.1;
	x0(85) = 0.1;
	x0(86) = 0.1;
	x0(87) = 0.1;
	x0(88) = 0.1;
	x0(89) = 0.1;
	x0(90) = 0.1;
	x0(91) = 0.1;
	x0(92) = 0.1;
	x0(93) = 0.1;
	x0(94) = 0.1;
	x0(95) = 0.1;
	x0(96) = 0.1;
	x0(97) = 0.1;
	x0(98) = 0.1;
	x0(99) = 0.1;
	x0(100) = 0.1;
	x0(101) = 0.1;
	x0(102) = 0.1;
	x0(103) = 0.1;
	x0(104) = 0.1;
	x0(105) = 0.1;
	x0(106) = 0.1;
	x0(107) = 0.1;
	x0(108) = 0.1;
	x0(109) = 0.1;
	x0(110) = 0.1;
	x0(111) = 0.1;
	x0(112) = 0.1;
	x0(113) = 0.1;
	x0(114) = 0.1;
	x0(115) = 0.1;
	x0(116) = 0.1;
	x0(117) = 0.1;
	x0(118) = 0.1;
	x0(119) = 0.1;
	x0(120) = 0.1;
	x0(121) = 0.1;
	x0(122) = 0.1;
	x0(123) = 0.1;
	x0(124) = 0.1;
	x0(125) = 0.1;
	x0(126) = 0.1;
	x0(127) = 0.1;
	x0(128) = 0.1;
	x0(129) = 0.1;
	x0(130) = 0.1;
	x0(131) = 0.1;
	x0(132) = 0.1;
	x0(133) = 0.1;
	x0(134) = 0.1;
	x0(135) = 0.1;
	x0(136) = 0.1;
	x0(137) = 0.1;
	x0(138) = 0.1;
	x0(139) = 0.1;
	x0(140) = 0.1;
	x0(141) = 0.1;
	x0(142) = 0.1;
	x0(143) = 0.1;
	x0(144) = 0.1;
	x0(145) = 0.1;
	x0(146) = 0.1;
	x0(147) = 0.1;
	x0(148) = 0.1;
	x0(149) = 0.1;
	x0(150) = 0.1;
	x0(151) = 0.1;
	x0(152) = 0.1;
	x0(153) = 0.1;
	x0(154) = 0.1;
	x0(155) = 0.1;
	x0(156) = 0.1;
	x0(157) = 0.1;
	x0(158) = 0.1;
	x0(159) = 0.1;
	x0(160) = 0.1;
	x0(161) = 0.1;
	x0(162) = 0.1;
	x0(163) = 0.1;
	x0(164) = 0.1;
	x0(165) = 0.1;
	x0(166) = 0.1;
	x0(167) = 0.1;
	x0(168) = 0.1;
	x0(169) = 0.1;
	x0(170) = 0.1;
	x0(171) = 0.1;
	x0(172) = 0.1;
	x0(173) = 0.1;
	x0(174) = 0.1;
	x0(175) = 0.1;
	x0(176) = 0.1;
	x0(177) = 0.1;
	x0(178) = 0.1;
	x0(179) = 0.1;
	x0(180) = 0.1;
	x0(181) = 0.1;
	x0(182) = 0.1;
	x0(183) = 0.1;
	x0(184) = 0.1;
	x0(185) = 0.1;
	x0(186) = 0.1;
	x0(187) = 0.1;
	x0(188) = 0.1;
	x0(189) = 0.1;
	x0(190) = 0.1;
	x0(191) = 0.1;
	x0(192) = 0.1;
	x0(193) = 0.1;
	x0(194) = 0.1;
	x0(195) = 0.1;
	x0(196) = 0.1;
	x0(197) = 0.1;
	x0(198) = 0.1;
	x0(199) = 0.1;
	x0(200) = 0.1;
	x0(201) = 0.1;
	x0(202) = 0.1;
	x0(203) = 0.1;
	x0(204) = 0.1;
	x0(205) = 0.1;
	x0(206) = 0.1;
	x0(207) = 0.1;
	x0(208) = 0.1;
	x0(209) = 0.1;
	x0(210) = 0.1;
	x0(211) = 0.1;
	x0(212) = 0.1;
	x0(213) = 0.1;
	x0(214) = 0.1;
	x0(215) = 0.1;
	x0(216) = 0.1;
	x0(217) = 0.1;
	x0(218) = 0.1;
	x0(219) = 0.1;
	x0(220) = 0.1;
	x0(221) = 0.1;
	x0(222) = 0.1;
	x0(223) = 0.1;
	x0(224) = 0.1;
	x0(225) = 0.1;
	x0(226) = 0.1;
	x0(227) = 0.1;
	x0(228) = 0.1;
	x0(229) = 0.1;
	x0(230) = 0.1;
	x0(231) = 0.1;
	x0(232) = 0.1;
	x0(233) = 0.1;
	x0(234) = 0.1;
	x0(235) = 0.1;
	x0(236) = 0.1;
	x0(237) = 0.1;
	x0(238) = 0.1;
	x0(239) = 0.1;
	x0(240) = 0.1;
	x0(241) = 0.1;
	x0(242) = 0.1;
	x0(243) = 0.1;
	x0(244) = 0.1;
	x0(245) = 0.1;
	x0(246) = 0.1;
	x0(247) = 0.1;
	x0(248) = 0.1;
	x0(249) = 0.1;
	x0(250) = 0.1;
	x0(251) = 0.1;
	x0(252) = 0.1;
	x0(253) = 0.1;
	x0(254) = 0.1;
	x0(255) = 0.1;
	x0(256) = 0.1;
	x0(257) = 0.1;
	x0(258) = 0.1;
	x0(259) = 0.1;
	x0(260) = 0.1;
	x0(261) = 0.1;
	x0(262) = 0.1;
	x0(263) = 0.1;
	x0(264) = 0.1;
	x0(265) = 0.1;
	x0(266) = 0.1;
	x0(267) = 0.1;
	x0(268) = 0.1;
	x0(269) = 0.1;
	x0(270) = 0.1;
	x0(271) = 0.1;
	x0(272) = 0.1;
	x0(273) = 0.1;
	x0(274) = 0.1;
	x0(275) = 0.1;
	x0(276) = 0.1;
	x0(277) = 0.1;
	x0(278) = 0.1;
	x0(279) = 0.1;
	x0(280) = 0.1;
	x0(281) = 0.1;
	x0(282) = 0.1;
	x0(283) = 0.1;
	x0(284) = 0.1;
	x0(285) = 0.1;
	x0(286) = 0.1;
	x0(287) = 0.1;
	x0(288) = 0.1;
	x0(289) = 0.1;
	x0(290) = 0.1;
	x0(291) = 0.1;
	x0(292) = 0.1;
	x0(293) = 0.1;
	x0(294) = 0.1;
	x0(295) = 0.1;
	x0(296) = 0.1;
	x0(297) = 0.1;
	x0(298) = 0.1;
	x0(299) = 0.1;
	x0(300) = 0.1;
	x0(301) = 0.1;
	x0(302) = 0.1;
	x0(303) = 0.1;


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

% Compartment: id = cell, name = cell, constant
	compartment_cell=1.0;
% Compartment: id = extracellular, name = extracellular, constant
	compartment_extracellular=1.0;

% Reaction: id = r_0005, name = 1,3-beta-glucan synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0005_FLUX_VALUE=0.0430685067991607;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0005_Vmax=0.430685067991607;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0005_Keq=0.2;
	% Local Parameter:   id =  Km1543, name = Km1543
	reaction_r_0005_Km1543=0.1;
	% Local Parameter:   id =  Km0002, name = Km0002
	reaction_r_0005_Km0002=0.1;
	% Local Parameter:   id =  Km1538, name = Km1538
	reaction_r_0005_Km1538=0.1;

	reaction_r_0005=compartment_cell*reaction_r_0005_Vmax*(x(272)-x(1)*x(271)/reaction_r_0005_Keq)/reaction_r_0005_Km1543/(1+x(272)/reaction_r_0005_Km1543+(1+x(1)/reaction_r_0005_Km0002)*(1+x(271)/reaction_r_0005_Km1538)-1);

% Reaction: id = r_0006, name = 1,6-beta-glucan synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0006_FLUX_VALUE=0.0430685067991607;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0006_Vmax=0.430685067991607;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0006_Keq=0.2;
	% Local Parameter:   id =  Km1543, name = Km1543
	reaction_r_0006_Km1543=0.1;
	% Local Parameter:   id =  Km0004, name = Km0004
	reaction_r_0006_Km0004=0.1;
	% Local Parameter:   id =  Km1538, name = Km1538
	reaction_r_0006_Km1538=0.1;

	reaction_r_0006=compartment_cell*reaction_r_0006_Vmax*(x(272)-x(2)*x(271)/reaction_r_0006_Keq)/reaction_r_0006_Km1543/(1+x(272)/reaction_r_0006_Km1543+(1+x(2)/reaction_r_0006_Km0004)*(1+x(271)/reaction_r_0006_Km1538)-1);

% Reaction: id = r_0007, name = 1-(5-phosphoribosyl)-5-[(5-phosphoribosylamino)methylideneamino)imidazole-4-carboxamide isomerase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0007_FLUX_VALUE=0.00251625132250899;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0007_Vmax=0.0150975079350539;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0007_Keq=2.0;
	% Local Parameter:   id =  Km0077, name = Km0077
	reaction_r_0007_Km0077=0.1;
	% Local Parameter:   id =  Km0312, name = Km0312
	reaction_r_0007_Km0312=0.1;

	reaction_r_0007=compartment_cell*reaction_r_0007_Vmax*(x(18)-x(64)/reaction_r_0007_Keq)/reaction_r_0007_Km0077/(1+x(18)/reaction_r_0007_Km0077+1+x(64)/reaction_r_0007_Km0312-1);

% Reaction: id = r_0008, name = 1-acyl-sn-gylcerol-3-phosphate acyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0008_FLUX_VALUE=2.40277332169094E-4;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0008_Vmax=0.00336388265036732;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0008_Keq=2.0;
	% Local Parameter:   id =  Km0082, name = Km0082
	reaction_r_0008_Km0082=0.1;
	% Local Parameter:   id =  Km0380, name = Km0380
	reaction_r_0008_Km0380=0.1;
	% Local Parameter:   id =  Km0529, name = Km0529
	reaction_r_0008_Km0529=0.1;
	% Local Parameter:   id =  Km1331, name = Km1331
	reaction_r_0008_Km1331=0.1;

	reaction_r_0008=compartment_cell*reaction_r_0008_Vmax*(x(20)*x(77)-x(106)*x(235)/reaction_r_0008_Keq)/(reaction_r_0008_Km0082*reaction_r_0008_Km0380)/((1+x(20)/reaction_r_0008_Km0082)*(1+x(77)/reaction_r_0008_Km0380)+(1+x(106)/reaction_r_0008_Km0529)*(1+x(235)/reaction_r_0008_Km1331)-1);

% Reaction: id = r_0012, name = 1-pyrroline-5-carboxylate dehydrogenase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0012_FLUX_VALUE=0.00625077817220527;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0012_Vmax=0.0875108944108738;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0012_Keq=2.0;
	% Local Parameter:   id =  Km0991, name = Km0991
	reaction_r_0012_Km0991=0.1;
	% Local Parameter:   id =  Km1203, name = Km1203
	reaction_r_0012_Km1203=0.1;
	% Local Parameter:   id =  Km0118, name = Km0118
	reaction_r_0012_Km0118=0.1;
	% Local Parameter:   id =  Km1198, name = Km1198
	reaction_r_0012_Km1198=0.1;

	reaction_r_0012=compartment_cell*reaction_r_0012_Vmax*(x(182)*x(220)-x(23)*x(219)/reaction_r_0012_Keq)/(reaction_r_0012_Km0991*reaction_r_0012_Km1203)/((1+x(182)/reaction_r_0012_Km0991)*(1+x(220)/reaction_r_0012_Km1203)+(1+x(23)/reaction_r_0012_Km0118)*(1+x(219)/reaction_r_0012_Km1198)-1);

% Reaction: id = r_0014, name = 2,5-diamino-6-ribitylamino-4(3H)-pyrimidinone 5'-phosphate deaminase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0014_FLUX_VALUE=3.75729835487922E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0014_Vmax=3.75729835487922E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0014_Keq=0.2;
	% Local Parameter:   id =  Km0142, name = Km0142
	reaction_r_0014_Km0142=0.1;
	% Local Parameter:   id =  Km0313, name = Km0313
	reaction_r_0014_Km0313=0.1;
	% Local Parameter:   id =  Km0419, name = Km0419
	reaction_r_0014_Km0419=0.1;

	reaction_r_0014=compartment_cell*reaction_r_0014_Vmax*(x(28)-x(65)*x(85)/reaction_r_0014_Keq)/reaction_r_0014_Km0142/(1+x(28)/reaction_r_0014_Km0142+(1+x(65)/reaction_r_0014_Km0313)*(1+x(85)/reaction_r_0014_Km0419)-1);

% Reaction: id = r_0015, name = 2,5-diamino-6-ribosylamino-4(3H)-pyrimidinone 5'-phosphate reductase (NADPH)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0015_FLUX_VALUE=3.75729835487922E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0015_Vmax=5.26021769683091E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0015_Keq=2.0;
	% Local Parameter:   id =  Km0141, name = Km0141
	reaction_r_0015_Km0141=0.1;
	% Local Parameter:   id =  Km1212, name = Km1212
	reaction_r_0015_Km1212=0.1;
	% Local Parameter:   id =  Km0142, name = Km0142
	reaction_r_0015_Km0142=0.1;
	% Local Parameter:   id =  Km1207, name = Km1207
	reaction_r_0015_Km1207=0.1;

	reaction_r_0015=compartment_cell*reaction_r_0015_Vmax*(x(27)*x(222)-x(28)*x(221)/reaction_r_0015_Keq)/(reaction_r_0015_Km0141*reaction_r_0015_Km1212)/((1+x(27)/reaction_r_0015_Km0141)*(1+x(222)/reaction_r_0015_Km1212)+(1+x(28)/reaction_r_0015_Km0142)*(1+x(221)/reaction_r_0015_Km1207)-1);

% Reaction: id = r_0016, name = 2-aceto-2-hydroxybutanoate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0016_FLUX_VALUE=0.00965062714996943;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0016_Vmax=0.135108780099572;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0016_Keq=2.0;
	% Local Parameter:   id =  Km0178, name = Km0178
	reaction_r_0016_Km0178=0.1;
	% Local Parameter:   id =  Km1399, name = Km1399
	reaction_r_0016_Km1399=0.1;
	% Local Parameter:   id =  Km0039, name = Km0039
	reaction_r_0016_Km0039=0.1;
	% Local Parameter:   id =  Km0456, name = Km0456
	reaction_r_0016_Km0456=0.1;

	reaction_r_0016=compartment_cell*reaction_r_0016_Vmax*(x(35)*x(249)-x(12)*x(95)/reaction_r_0016_Keq)/(reaction_r_0016_Km0178*reaction_r_0016_Km1399)/((1+x(35)/reaction_r_0016_Km0178)*(1+x(249)/reaction_r_0016_Km1399)+(1+x(12)/reaction_r_0016_Km0039)*(1+x(95)/reaction_r_0016_Km0456)-1);

% Reaction: id = r_0018, name = 2-aminoadipate transaminase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0018_FLUX_VALUE=0.01086200797138;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0018_Vmax=0.15206811159932;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0018_Keq=2.0;
	% Local Parameter:   id =  Km0176, name = Km0176
	reaction_r_0018_Km0176=0.1;
	% Local Parameter:   id =  Km0991, name = Km0991
	reaction_r_0018_Km0991=0.1;
	% Local Parameter:   id =  Km0180, name = Km0180
	reaction_r_0018_Km0180=0.1;
	% Local Parameter:   id =  Km0953, name = Km0953
	reaction_r_0018_Km0953=0.1;

	reaction_r_0018=compartment_cell*reaction_r_0018_Vmax*(x(34)*x(182)-x(36)*x(172)/reaction_r_0018_Keq)/(reaction_r_0018_Km0176*reaction_r_0018_Km0991)/((1+x(34)/reaction_r_0018_Km0176)*(1+x(182)/reaction_r_0018_Km0991)+(1+x(36)/reaction_r_0018_Km0180)*(1+x(172)/reaction_r_0018_Km0953)-1);

% Reaction: id = r_0020, name = 2-deoxy-D-arabino-heptulosonate 7-phosphate synthetase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0020_FLUX_VALUE=0.0100308480322675;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0020_Vmax=0.140431872451745;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0020_Keq=2.0;
	% Local Parameter:   id =  Km0551, name = Km0551
	reaction_r_0020_Km0551=0.1;
	% Local Parameter:   id =  Km1360, name = Km1360
	reaction_r_0020_Km1360=0.1;
	% Local Parameter:   id =  Km0349, name = Km0349
	reaction_r_0020_Km0349=0.1;
	% Local Parameter:   id =  Km1322, name = Km1322
	reaction_r_0020_Km1322=0.1;

	reaction_r_0020=compartment_cell*reaction_r_0020_Vmax*(x(110)*x(241)-x(73)*x(234)/reaction_r_0020_Keq)/(reaction_r_0020_Km0551*reaction_r_0020_Km1360)/((1+x(110)/reaction_r_0020_Km0551)*(1+x(241)/reaction_r_0020_Km1360)+(1+x(73)/reaction_r_0020_Km0349)*(1+x(234)/reaction_r_0020_Km1322)-1);

% Reaction: id = r_0023, name = 2-isopropylmalate hydratase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0023_FLUX_VALUE=0.0112491235594474;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0023_Vmax=0.0674947413566844;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0023_Keq=2.0;
	% Local Parameter:   id =  Km0162, name = Km0162
	reaction_r_0023_Km0162=0.1;
	% Local Parameter:   id =  Km0165, name = Km0165
	reaction_r_0023_Km0165=0.1;

	reaction_r_0023=compartment_cell*reaction_r_0023_Vmax*(x(32)-x(33)/reaction_r_0023_Keq)/reaction_r_0023_Km0162/(1+x(32)/reaction_r_0023_Km0162+1+x(33)/reaction_r_0023_Km0165-1);

% Reaction: id = r_0024, name = 2-isopropylmalate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0024_FLUX_VALUE=0.0112491235594486;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0024_Vmax=0.15748772983228;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0024_Keq=2.0;
	% Local Parameter:   id =  Km0232, name = Km0232
	reaction_r_0024_Km0232=0.1;
	% Local Parameter:   id =  Km0373, name = Km0373
	reaction_r_0024_Km0373=0.1;
	% Local Parameter:   id =  Km0162, name = Km0162
	reaction_r_0024_Km0162=0.1;
	% Local Parameter:   id =  Km0529, name = Km0529
	reaction_r_0024_Km0529=0.1;

	reaction_r_0024=compartment_cell*reaction_r_0024_Vmax*(x(47)*x(76)-x(32)*x(106)/reaction_r_0024_Keq)/(reaction_r_0024_Km0232*reaction_r_0024_Km0373)/((1+x(47)/reaction_r_0024_Km0232)*(1+x(76)/reaction_r_0024_Km0373)+(1+x(32)/reaction_r_0024_Km0162)*(1+x(106)/reaction_r_0024_Km0529)-1);

% Reaction: id = r_0027, name = 2-methylcitrate dehydratase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0027_FLUX_VALUE=0.01086200797138;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0027_Vmax=0.06517204782828;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0027_Keq=2.0;
	% Local Parameter:   id =  Km0835, name = Km0835
	reaction_r_0027_Km0835=0.1;
	% Local Parameter:   id =  Km0454, name = Km0454
	reaction_r_0027_Km0454=0.1;

	reaction_r_0027=compartment_cell*reaction_r_0027_Vmax*(x(162)-x(93)/reaction_r_0027_Keq)/reaction_r_0027_Km0835/(1+x(162)/reaction_r_0027_Km0835+1+x(93)/reaction_r_0027_Km0454-1);

% Reaction: id = r_0029, name = 2-oxo-4-methyl-3-carboxypentanoate decarboxylation	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0029_FLUX_VALUE=0.0112491235594566;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0029_Vmax=0.112491235594566;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0029_Keq=0.2;
	% Local Parameter:   id =  Km0010, name = Km0010
	reaction_r_0029_Km0010=0.1;
	% Local Parameter:   id =  Km0291, name = Km0291
	reaction_r_0029_Km0291=0.1;
	% Local Parameter:   id =  Km0456, name = Km0456
	reaction_r_0029_Km0456=0.1;

	reaction_r_0029=compartment_cell*reaction_r_0029_Vmax*(x(5)-x(53)*x(95)/reaction_r_0029_Keq)/reaction_r_0029_Km0010/(1+x(5)/reaction_r_0029_Km0010+(1+x(53)/reaction_r_0029_Km0291)*(1+x(95)/reaction_r_0029_Km0456)-1);

% Reaction: id = r_0032, name = 3',5'-bisphosphate nucleotidase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0032_FLUX_VALUE=0.00217467874479323;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0032_Vmax=0.0217467874479323;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0032_Keq=0.2;
	% Local Parameter:   id =  Km0390, name = Km0390
	reaction_r_0032_Km0390=0.1;
	% Local Parameter:   id =  Km0423, name = Km0423
	reaction_r_0032_Km0423=0.1;
	% Local Parameter:   id =  Km1322, name = Km1322
	reaction_r_0032_Km1322=0.1;

	reaction_r_0032=compartment_cell*reaction_r_0032_Vmax*(x(79)-x(86)*x(234)/reaction_r_0032_Keq)/reaction_r_0032_Km0390/(1+x(79)/reaction_r_0032_Km0390+(1+x(86)/reaction_r_0032_Km0423)*(1+x(234)/reaction_r_0032_Km1322)-1);

% Reaction: id = r_0038, name = 3,4-dihydroxy-2-butanone-4-phosphate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0038_FLUX_VALUE=7.51459670975844E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0038_Vmax=7.51459670975844E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0038_Keq=0.2;
	% Local Parameter:   id =  Km0577, name = Km0577
	reaction_r_0038_Km0577=0.1;
	% Local Parameter:   id =  Km0158, name = Km0158
	reaction_r_0038_Km0158=0.1;
	% Local Parameter:   id =  Km0722, name = Km0722
	reaction_r_0038_Km0722=0.1;

	reaction_r_0038=compartment_cell*reaction_r_0038_Vmax*(x(118)-x(31)*x(146)/reaction_r_0038_Keq)/reaction_r_0038_Km0577/(1+x(118)/reaction_r_0038_Km0577+(1+x(31)/reaction_r_0038_Km0158)*(1+x(146)/reaction_r_0038_Km0722)-1);

% Reaction: id = r_0039, name = 3-dehydroquinate dehydratase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0039_FLUX_VALUE=0.0100308480322675;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0039_Vmax=0.060185088193605;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0039_Keq=2.0;
	% Local Parameter:   id =  Km0210, name = Km0210
	reaction_r_0039_Km0210=0.1;
	% Local Parameter:   id =  Km0211, name = Km0211
	reaction_r_0039_Km0211=0.1;

	reaction_r_0039=compartment_cell*reaction_r_0039_Vmax*(x(43)-x(44)/reaction_r_0039_Keq)/reaction_r_0039_Km0210/(1+x(43)/reaction_r_0039_Km0210+1+x(44)/reaction_r_0039_Km0211-1);

% Reaction: id = r_0040, name = 3-dehydroquinate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0040_FLUX_VALUE=0.0100308480322675;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0040_Vmax=0.100308480322675;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0040_Keq=0.2;
	% Local Parameter:   id =  Km0349, name = Km0349
	reaction_r_0040_Km0349=0.1;
	% Local Parameter:   id =  Km0210, name = Km0210
	reaction_r_0040_Km0210=0.1;
	% Local Parameter:   id =  Km1322, name = Km1322
	reaction_r_0040_Km1322=0.1;

	reaction_r_0040=compartment_cell*reaction_r_0040_Vmax*(x(73)-x(43)*x(234)/reaction_r_0040_Keq)/reaction_r_0040_Km0349/(1+x(73)/reaction_r_0040_Km0349+(1+x(43)/reaction_r_0040_Km0210)*(1+x(234)/reaction_r_0040_Km1322)-1);

% Reaction: id = r_0041, name = 3-dehydrosphinganine reductase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0041_FLUX_VALUE=2.04421699920047E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0041_Vmax=2.86190379888066E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0041_Keq=2.0;
	% Local Parameter:   id =  Km0231, name = Km0231
	reaction_r_0041_Km0231=0.1;
	% Local Parameter:   id =  Km1212, name = Km1212
	reaction_r_0041_Km1212=0.1;
	% Local Parameter:   id =  Km1207, name = Km1207
	reaction_r_0041_Km1207=0.1;
	% Local Parameter:   id =  Km1445, name = Km1445
	reaction_r_0041_Km1445=0.1;

	reaction_r_0041=compartment_cell*reaction_r_0041_Vmax*(x(46)*x(222)-x(221)*x(257)/reaction_r_0041_Keq)/(reaction_r_0041_Km0231*reaction_r_0041_Km1212)/((1+x(46)/reaction_r_0041_Km0231)*(1+x(222)/reaction_r_0041_Km1212)+(1+x(221)/reaction_r_0041_Km1207)*(1+x(257)/reaction_r_0041_Km1445)-1);

% Reaction: id = r_0060, name = 3-isopropylmalate dehydratase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0060_FLUX_VALUE=0.0112491235594474;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0060_Vmax=0.0674947413566844;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0060_Keq=2.0;
	% Local Parameter:   id =  Km0165, name = Km0165
	reaction_r_0060_Km0165=0.1;
	% Local Parameter:   id =  Km0009, name = Km0009
	reaction_r_0060_Km0009=0.1;

	reaction_r_0060=compartment_cell*reaction_r_0060_Vmax*(x(33)-x(4)/reaction_r_0060_Keq)/reaction_r_0060_Km0165/(1+x(33)/reaction_r_0060_Km0165+1+x(4)/reaction_r_0060_Km0009-1);

% Reaction: id = r_0061, name = 3-isopropylmalate dehydrogenase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0061_FLUX_VALUE=0.0112491235594474;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0061_Vmax=0.157487729832264;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0061_Keq=2.0;
	% Local Parameter:   id =  Km0009, name = Km0009
	reaction_r_0061_Km0009=0.1;
	% Local Parameter:   id =  Km1198, name = Km1198
	reaction_r_0061_Km1198=0.1;
	% Local Parameter:   id =  Km0010, name = Km0010
	reaction_r_0061_Km0010=0.1;
	% Local Parameter:   id =  Km1203, name = Km1203
	reaction_r_0061_Km1203=0.1;

	reaction_r_0061=compartment_cell*reaction_r_0061_Vmax*(x(4)*x(219)-x(5)*x(220)/reaction_r_0061_Keq)/(reaction_r_0061_Km0009*reaction_r_0061_Km1198)/((1+x(4)/reaction_r_0061_Km0009)*(1+x(219)/reaction_r_0061_Km1198)+(1+x(5)/reaction_r_0061_Km0010)*(1+x(220)/reaction_r_0061_Km1203)-1);

% Reaction: id = r_0065, name = 3-phosphoshikimate 1-carboxyvinyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0065_FLUX_VALUE=0.0100308480322675;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0065_Vmax=0.140431872451745;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0065_Keq=2.0;
	% Local Parameter:   id =  Km0261, name = Km0261
	reaction_r_0065_Km0261=0.1;
	% Local Parameter:   id =  Km1360, name = Km1360
	reaction_r_0065_Km1360=0.1;
	% Local Parameter:   id =  Km0324, name = Km0324
	reaction_r_0065_Km0324=0.1;
	% Local Parameter:   id =  Km1322, name = Km1322
	reaction_r_0065_Km1322=0.1;

	reaction_r_0065=compartment_cell*reaction_r_0065_Vmax*(x(51)*x(241)-x(68)*x(234)/reaction_r_0065_Keq)/(reaction_r_0065_Km0261*reaction_r_0065_Km1360)/((1+x(51)/reaction_r_0065_Km0261)*(1+x(241)/reaction_r_0065_Km1360)+(1+x(68)/reaction_r_0065_Km0324)*(1+x(234)/reaction_r_0065_Km1322)-1);

% Reaction: id = r_0079, name = 5'-phosphoribosylformyl glycinamidine synthetase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0079_FLUX_VALUE=0.00375691882979276;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0079_Vmax=0.172818266170467;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0079_Keq=0.2;
	% Local Parameter:   id =  Km0301, name = Km0301
	reaction_r_0079_Km0301=0.1;
	% Local Parameter:   id =  Km0434, name = Km0434
	reaction_r_0079_Km0434=0.1;
	% Local Parameter:   id =  Km0999, name = Km0999
	reaction_r_0079_Km0999=0.1;
	% Local Parameter:   id =  Km0302, name = Km0302
	reaction_r_0079_Km0302=0.1;
	% Local Parameter:   id =  Km0394, name = Km0394
	reaction_r_0079_Km0394=0.1;
	% Local Parameter:   id =  Km0991, name = Km0991
	reaction_r_0079_Km0991=0.1;
	% Local Parameter:   id =  Km1322, name = Km1322
	reaction_r_0079_Km1322=0.1;

	reaction_r_0079=compartment_cell*reaction_r_0079_Vmax*(x(60)*x(91)*x(183)-x(61)*x(81)*x(182)*x(234)/reaction_r_0079_Keq)/(reaction_r_0079_Km0301*reaction_r_0079_Km0434*reaction_r_0079_Km0999)/((1+x(60)/reaction_r_0079_Km0301)*(1+x(91)/reaction_r_0079_Km0434)*(1+x(183)/reaction_r_0079_Km0999)+(1+x(61)/reaction_r_0079_Km0302)*(1+x(81)/reaction_r_0079_Km0394)*(1+x(182)/reaction_r_0079_Km0991)*(1+x(234)/reaction_r_0079_Km1322)-1);

% Reaction: id = r_0080, name = 5,10-methylenetetrahydrofolate reductase (NADPH)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0080_FLUX_VALUE=0.00250816743817059;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0080_Vmax=0.0351143441343883;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0080_Keq=2.0;
	% Local Parameter:   id =  Km0306, name = Km0306
	reaction_r_0080_Km0306=0.1;
	% Local Parameter:   id =  Km1212, name = Km1212
	reaction_r_0080_Km1212=0.1;
	% Local Parameter:   id =  Km0322, name = Km0322
	reaction_r_0080_Km0322=0.1;
	% Local Parameter:   id =  Km1207, name = Km1207
	reaction_r_0080_Km1207=0.1;

	reaction_r_0080=compartment_cell*reaction_r_0080_Vmax*(x(63)*x(222)-x(67)*x(221)/reaction_r_0080_Keq)/(reaction_r_0080_Km0306*reaction_r_0080_Km1212)/((1+x(63)/reaction_r_0080_Km0306)*(1+x(222)/reaction_r_0080_Km1212)+(1+x(67)/reaction_r_0080_Km0322)*(1+x(221)/reaction_r_0080_Km1207)-1);

% Reaction: id = r_0096, name = acetohydroxy acid isomeroreductase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0096_FLUX_VALUE=0.0212913573443156;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0096_Vmax=0.298079002820418;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0096_Keq=2.0;
	% Local Parameter:   id =  Km0146, name = Km0146
	reaction_r_0096_Km0146=0.1;
	% Local Parameter:   id =  Km1212, name = Km1212
	reaction_r_0096_Km1212=0.1;
	% Local Parameter:   id =  Km0016, name = Km0016
	reaction_r_0096_Km0016=0.1;
	% Local Parameter:   id =  Km1207, name = Km1207
	reaction_r_0096_Km1207=0.1;

	reaction_r_0096=compartment_cell*reaction_r_0096_Vmax*(x(30)*x(222)-x(7)*x(221)/reaction_r_0096_Keq)/(reaction_r_0096_Km0146*reaction_r_0096_Km1212)/((1+x(30)/reaction_r_0096_Km0146)*(1+x(222)/reaction_r_0096_Km1212)+(1+x(7)/reaction_r_0096_Km0016)*(1+x(221)/reaction_r_0096_Km1207)-1);

% Reaction: id = r_0097, name = acetolactate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0097_FLUX_VALUE=0.0212913573443156;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0097_Vmax=0.298079002820418;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0097_Keq=2.0;
	% Local Parameter:   id =  Km1399, name = Km1399
	reaction_r_0097_Km1399=0.1;
	% Local Parameter:   id =  Km0146, name = Km0146
	reaction_r_0097_Km0146=0.1;
	% Local Parameter:   id =  Km0456, name = Km0456
	reaction_r_0097_Km0456=0.1;

	reaction_r_0097=compartment_cell*reaction_r_0097_Vmax*(x(249)^2-x(30)*x(95)/reaction_r_0097_Keq)/reaction_r_0097_Km1399^2/((1+x(249)/reaction_r_0097_Km1399)^2+(1+x(30)/reaction_r_0097_Km0146)*(1+x(95)/reaction_r_0097_Km0456)-1);

% Reaction: id = r_0103, name = acetyl-CoA C-acetyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0103_FLUX_VALUE=0.00155984810490327;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0103_Vmax=0.0218378734686458;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0103_Keq=2.0;
	% Local Parameter:   id =  Km0373, name = Km0373
	reaction_r_0103_Km0373=0.1;
	% Local Parameter:   id =  Km0367, name = Km0367
	reaction_r_0103_Km0367=0.1;
	% Local Parameter:   id =  Km0529, name = Km0529
	reaction_r_0103_Km0529=0.1;

	reaction_r_0103=compartment_cell*reaction_r_0103_Vmax*(x(76)^2-x(75)*x(106)/reaction_r_0103_Keq)/reaction_r_0103_Km0373^2/((1+x(76)/reaction_r_0103_Km0373)^2+(1+x(75)/reaction_r_0103_Km0367)*(1+x(106)/reaction_r_0103_Km0529)-1);

% Reaction: id = r_0108, name = acetyl-Coa carboxylase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0108_FLUX_VALUE=3.6795905905662E-4;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0108_Vmax=0.0110387717716986;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0108_Keq=2.0;
	% Local Parameter:   id =  Km0373, name = Km0373
	reaction_r_0108_Km0373=0.1;
	% Local Parameter:   id =  Km0434, name = Km0434
	reaction_r_0108_Km0434=0.1;
	% Local Parameter:   id =  Km0445, name = Km0445
	reaction_r_0108_Km0445=0.1;
	% Local Parameter:   id =  Km0394, name = Km0394
	reaction_r_0108_Km0394=0.1;
	% Local Parameter:   id =  Km1101, name = Km1101
	reaction_r_0108_Km1101=0.1;
	% Local Parameter:   id =  Km1322, name = Km1322
	reaction_r_0108_Km1322=0.1;

	reaction_r_0108=compartment_cell*reaction_r_0108_Vmax*(x(76)*x(91)*x(92)-x(81)*x(208)*x(234)/reaction_r_0108_Keq)/(reaction_r_0108_Km0373*reaction_r_0108_Km0434*reaction_r_0108_Km0445)/((1+x(76)/reaction_r_0108_Km0373)*(1+x(91)/reaction_r_0108_Km0434)*(1+x(92)/reaction_r_0108_Km0445)+(1+x(81)/reaction_r_0108_Km0394)*(1+x(208)/reaction_r_0108_Km1101)*(1+x(234)/reaction_r_0108_Km1322)-1);

% Reaction: id = r_0110, name = acetyl-CoA hydrolase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0110_FLUX_VALUE=0.0115748193382789;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0110_Vmax=0.115748193382789;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0110_Keq=20.0;
	% Local Parameter:   id =  Km0362, name = Km0362
	reaction_r_0110_Km0362=0.1;
	% Local Parameter:   id =  Km0529, name = Km0529
	reaction_r_0110_Km0529=0.1;
	% Local Parameter:   id =  Km0373, name = Km0373
	reaction_r_0110_Km0373=0.1;

	reaction_r_0110=compartment_cell*reaction_r_0110_Vmax*(x(74)*x(106)-x(76)/reaction_r_0110_Keq)/(reaction_r_0110_Km0362*reaction_r_0110_Km0529)/((1+x(74)/reaction_r_0110_Km0362)*(1+x(106)/reaction_r_0110_Km0529)+1+x(76)/reaction_r_0110_Km0373-1);

% Reaction: id = r_0115, name = acetylglutamate kinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0115_FLUX_VALUE=0.00609896813767666;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0115_Vmax=0.0853855539274732;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0115_Keq=2.0;
	% Local Parameter:   id =  Km0434, name = Km0434
	reaction_r_0115_Km0434=0.1;
	% Local Parameter:   id =  Km1192, name = Km1192
	reaction_r_0115_Km1192=0.1;
	% Local Parameter:   id =  Km0394, name = Km0394
	reaction_r_0115_Km0394=0.1;
	% Local Parameter:   id =  Km1191, name = Km1191
	reaction_r_0115_Km1191=0.1;

	reaction_r_0115=compartment_cell*reaction_r_0115_Vmax*(x(91)*x(217)-x(81)*x(216)/reaction_r_0115_Keq)/(reaction_r_0115_Km0434*reaction_r_0115_Km1192)/((1+x(91)/reaction_r_0115_Km0434)*(1+x(217)/reaction_r_0115_Km1192)+(1+x(81)/reaction_r_0115_Km0394)*(1+x(216)/reaction_r_0115_Km1191)-1);

% Reaction: id = r_0118, name = acteylornithine transaminase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0118_FLUX_VALUE=0.00609896813767666;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0118_Vmax=0.0853855539274732;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0118_Keq=2.0;
	% Local Parameter:   id =  Km0145, name = Km0145
	reaction_r_0118_Km0145=0.1;
	% Local Parameter:   id =  Km0991, name = Km0991
	reaction_r_0118_Km0991=0.1;
	% Local Parameter:   id =  Km0180, name = Km0180
	reaction_r_0118_Km0180=0.1;
	% Local Parameter:   id =  Km1182, name = Km1182
	reaction_r_0118_Km1182=0.1;

	reaction_r_0118=compartment_cell*reaction_r_0118_Vmax*(x(29)*x(182)-x(36)*x(214)/reaction_r_0118_Keq)/(reaction_r_0118_Km0145*reaction_r_0118_Km0991)/((1+x(29)/reaction_r_0118_Km0145)*(1+x(182)/reaction_r_0118_Km0991)+(1+x(36)/reaction_r_0118_Km0180)*(1+x(214)/reaction_r_0118_Km1182)-1);

% Reaction: id = r_0142, name = adenosine kinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0142_FLUX_VALUE=5.83975250318604E-4;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0142_Vmax=0.00817565350446046;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0142_Keq=2.0;
	% Local Parameter:   id =  Km0386, name = Km0386
	reaction_r_0142_Km0386=0.1;
	% Local Parameter:   id =  Km0434, name = Km0434
	reaction_r_0142_Km0434=0.1;
	% Local Parameter:   id =  Km0394, name = Km0394
	reaction_r_0142_Km0394=0.1;
	% Local Parameter:   id =  Km0423, name = Km0423
	reaction_r_0142_Km0423=0.1;

	reaction_r_0142=compartment_cell*reaction_r_0142_Vmax*(x(78)*x(91)-x(81)*x(86)/reaction_r_0142_Keq)/(reaction_r_0142_Km0386*reaction_r_0142_Km0434)/((1+x(78)/reaction_r_0142_Km0386)*(1+x(91)/reaction_r_0142_Km0434)+(1+x(81)/reaction_r_0142_Km0394)*(1+x(86)/reaction_r_0142_Km0423)-1);

% Reaction: id = r_0144, name = adenosylhomocysteinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0144_FLUX_VALUE=5.83975250368712E-4;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0144_Vmax=0.00583975250368712;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0144_Keq=0.2;
	% Local Parameter:   id =  Km1413, name = Km1413
	reaction_r_0144_Km1413=0.1;
	% Local Parameter:   id =  Km0386, name = Km0386
	reaction_r_0144_Km0386=0.1;
	% Local Parameter:   id =  Km1012, name = Km1012
	reaction_r_0144_Km1012=0.1;

	reaction_r_0144=compartment_cell*reaction_r_0144_Vmax*(x(252)-x(78)*x(188)/reaction_r_0144_Keq)/reaction_r_0144_Km1413/(1+x(252)/reaction_r_0144_Km1413+(1+x(78)/reaction_r_0144_Km0386)*(1+x(188)/reaction_r_0144_Km1012)-1);

% Reaction: id = r_0148, name = adenylate kinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0148_FLUX_VALUE=0.168650639524106;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0148_Vmax=2.36110895333748;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0148_Keq=2.0;
	% Local Parameter:   id =  Km0423, name = Km0423
	reaction_r_0148_Km0423=0.1;
	% Local Parameter:   id =  Km0434, name = Km0434
	reaction_r_0148_Km0434=0.1;
	% Local Parameter:   id =  Km0394, name = Km0394
	reaction_r_0148_Km0394=0.1;

	reaction_r_0148=compartment_cell*reaction_r_0148_Vmax*(x(86)*x(91)-x(81)^2/reaction_r_0148_Keq)/(reaction_r_0148_Km0423*reaction_r_0148_Km0434)/((1+x(86)/reaction_r_0148_Km0423)*(1+x(91)/reaction_r_0148_Km0434)+(1+x(81)/reaction_r_0148_Km0394)^2-1);

% Reaction: id = r_0151, name = adenylosuccinate lyase (AICAR)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0151_FLUX_VALUE=0.00375691882979276;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0151_Vmax=0.0375691882979276;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0151_Keq=0.2;
	% Local Parameter:   id =  Km0299, name = Km0299
	reaction_r_0151_Km0299=0.1;
	% Local Parameter:   id =  Km0403, name = Km0403
	reaction_r_0151_Km0403=0.1;
	% Local Parameter:   id =  Km0725, name = Km0725
	reaction_r_0151_Km0725=0.1;

	reaction_r_0151=compartment_cell*reaction_r_0151_Vmax*(x(58)-x(82)*x(147)/reaction_r_0151_Keq)/reaction_r_0151_Km0299/(1+x(58)/reaction_r_0151_Km0299+(1+x(82)/reaction_r_0151_Km0403)*(1+x(147)/reaction_r_0151_Km0725)-1);

% Reaction: id = r_0152, name = adenylosuccinate lyase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0152_FLUX_VALUE=0.00439869575080998;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0152_Vmax=0.0439869575080998;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0152_Keq=0.2;
	% Local Parameter:   id =  Km0393, name = Km0393
	reaction_r_0152_Km0393=0.1;
	% Local Parameter:   id =  Km0423, name = Km0423
	reaction_r_0152_Km0423=0.1;
	% Local Parameter:   id =  Km0725, name = Km0725
	reaction_r_0152_Km0725=0.1;

	reaction_r_0152=compartment_cell*reaction_r_0152_Vmax*(x(80)-x(86)*x(147)/reaction_r_0152_Keq)/reaction_r_0152_Km0393/(1+x(80)/reaction_r_0152_Km0393+(1+x(86)/reaction_r_0152_Km0423)*(1+x(147)/reaction_r_0152_Km0725)-1);

% Reaction: id = r_0153, name = adenylosuccinate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0153_FLUX_VALUE=0.00439869575080998;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0153_Vmax=0.131960872524299;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0153_Keq=2.0;
	% Local Parameter:   id =  Km0785, name = Km0785
	reaction_r_0153_Km0785=0.1;
	% Local Parameter:   id =  Km0849, name = Km0849
	reaction_r_0153_Km0849=0.1;
	% Local Parameter:   id =  Km0973, name = Km0973
	reaction_r_0153_Km0973=0.1;
	% Local Parameter:   id =  Km0393, name = Km0393
	reaction_r_0153_Km0393=0.1;
	% Local Parameter:   id =  Km0739, name = Km0739
	reaction_r_0153_Km0739=0.1;
	% Local Parameter:   id =  Km1322, name = Km1322
	reaction_r_0153_Km1322=0.1;

	reaction_r_0153=compartment_cell*reaction_r_0153_Vmax*(x(160)*x(167)*x(177)-x(80)*x(148)*x(234)/reaction_r_0153_Keq)/(reaction_r_0153_Km0785*reaction_r_0153_Km0849*reaction_r_0153_Km0973)/((1+x(160)/reaction_r_0153_Km0785)*(1+x(167)/reaction_r_0153_Km0849)*(1+x(177)/reaction_r_0153_Km0973)+(1+x(80)/reaction_r_0153_Km0393)*(1+x(148)/reaction_r_0153_Km0739)*(1+x(234)/reaction_r_0153_Km1322)-1);

% Reaction: id = r_0154, name = adenylyl-sulfate kinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0154_FLUX_VALUE=0.00217467874478967;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0154_Vmax=0.0304455024270554;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0154_Keq=2.0;
	% Local Parameter:   id =  Km0298, name = Km0298
	reaction_r_0154_Km0298=0.1;
	% Local Parameter:   id =  Km0434, name = Km0434
	reaction_r_0154_Km0434=0.1;
	% Local Parameter:   id =  Km0201, name = Km0201
	reaction_r_0154_Km0201=0.1;
	% Local Parameter:   id =  Km0394, name = Km0394
	reaction_r_0154_Km0394=0.1;

	reaction_r_0154=compartment_cell*reaction_r_0154_Vmax*(x(57)*x(91)-x(39)*x(81)/reaction_r_0154_Keq)/(reaction_r_0154_Km0298*reaction_r_0154_Km0434)/((1+x(57)/reaction_r_0154_Km0298)*(1+x(91)/reaction_r_0154_Km0434)+(1+x(39)/reaction_r_0154_Km0201)*(1+x(81)/reaction_r_0154_Km0394)-1);

% Reaction: id = r_0157, name = alanyl-tRNA synthetase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0157_FLUX_VALUE=0.0174126109618039;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0157_Vmax=0.522378328854117;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0157_Keq=2.0;
	% Local Parameter:   id =  Km0434, name = Km0434
	reaction_r_0157_Km0434=0.1;
	% Local Parameter:   id =  Km0955, name = Km0955
	reaction_r_0157_Km0955=0.1;
	% Local Parameter:   id =  Km1582, name = Km1582
	reaction_r_0157_Km1582=0.1;
	% Local Parameter:   id =  Km0404, name = Km0404
	reaction_r_0157_Km0404=0.1;
	% Local Parameter:   id =  Km0423, name = Km0423
	reaction_r_0157_Km0423=0.1;
	% Local Parameter:   id =  Km0633, name = Km0633
	reaction_r_0157_Km0633=0.1;

	reaction_r_0157=compartment_cell*reaction_r_0157_Vmax*(x(91)*x(173)*x(282)-x(83)*x(86)*x(132)/reaction_r_0157_Keq)/(reaction_r_0157_Km0434*reaction_r_0157_Km0955*reaction_r_0157_Km1582)/((1+x(91)/reaction_r_0157_Km0434)*(1+x(173)/reaction_r_0157_Km0955)*(1+x(282)/reaction_r_0157_Km1582)+(1+x(83)/reaction_r_0157_Km0404)*(1+x(86)/reaction_r_0157_Km0423)*(1+x(132)/reaction_r_0157_Km0633)-1);

% Reaction: id = r_0195, name = alpha,alpha-trehalose-phosphate synthase (UDP-forming)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0195_FLUX_VALUE=8.88088702058448E-4;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0195_Vmax=0.0124332418288183;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0195_Keq=2.0;
	% Local Parameter:   id =  Km0568, name = Km0568
	reaction_r_0195_Km0568=0.1;
	% Local Parameter:   id =  Km1543, name = Km1543
	reaction_r_0195_Km1543=0.1;
	% Local Parameter:   id =  Km0409, name = Km0409
	reaction_r_0195_Km0409=0.1;
	% Local Parameter:   id =  Km1538, name = Km1538
	reaction_r_0195_Km1538=0.1;

	reaction_r_0195=compartment_cell*reaction_r_0195_Vmax*(x(115)*x(272)-x(84)*x(271)/reaction_r_0195_Keq)/(reaction_r_0195_Km0568*reaction_r_0195_Km1543)/((1+x(115)/reaction_r_0195_Km0568)*(1+x(272)/reaction_r_0195_Km1543)+(1+x(84)/reaction_r_0195_Km0409)*(1+x(271)/reaction_r_0195_Km1538)-1);

% Reaction: id = r_0202, name = anthranilate phosphoribosyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0202_FLUX_VALUE=0.00107785124523996;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0202_Vmax=0.0150899174333594;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0202_Keq=2.0;
	% Local Parameter:   id =  Km0427, name = Km0427
	reaction_r_0202_Km0427=0.1;
	% Local Parameter:   id =  Km1386, name = Km1386
	reaction_r_0202_Km1386=0.1;
	% Local Parameter:   id =  Km0633, name = Km0633
	reaction_r_0202_Km0633=0.1;
	% Local Parameter:   id =  Km1187, name = Km1187
	reaction_r_0202_Km1187=0.1;

	reaction_r_0202=compartment_cell*reaction_r_0202_Vmax*(x(87)*x(248)-x(132)*x(215)/reaction_r_0202_Keq)/(reaction_r_0202_Km0427*reaction_r_0202_Km1386)/((1+x(87)/reaction_r_0202_Km0427)*(1+x(248)/reaction_r_0202_Km1386)+(1+x(132)/reaction_r_0202_Km0633)*(1+x(215)/reaction_r_0202_Km1187)-1);

% Reaction: id = r_0203, name = anthranilate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0203_FLUX_VALUE=0.00107785124523716;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0203_Vmax=0.0237127273952175;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0203_Keq=0.2;
	% Local Parameter:   id =  Km0515, name = Km0515
	reaction_r_0203_Km0515=0.1;
	% Local Parameter:   id =  Km0999, name = Km0999
	reaction_r_0203_Km0999=0.1;
	% Local Parameter:   id =  Km0427, name = Km0427
	reaction_r_0203_Km0427=0.1;
	% Local Parameter:   id =  Km0991, name = Km0991
	reaction_r_0203_Km0991=0.1;
	% Local Parameter:   id =  Km1399, name = Km1399
	reaction_r_0203_Km1399=0.1;

	reaction_r_0203=compartment_cell*reaction_r_0203_Vmax*(x(102)*x(183)-x(87)*x(182)*x(249)/reaction_r_0203_Keq)/(reaction_r_0203_Km0515*reaction_r_0203_Km0999)/((1+x(102)/reaction_r_0203_Km0515)*(1+x(183)/reaction_r_0203_Km0999)+(1+x(87)/reaction_r_0203_Km0427)*(1+x(182)/reaction_r_0203_Km0991)*(1+x(249)/reaction_r_0203_Km1399)-1);

% Reaction: id = r_0207, name = argininosuccinate lyase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0207_FLUX_VALUE=0.00609896813766667;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0207_Vmax=0.0609896813766667;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0207_Keq=0.2;
	% Local Parameter:   id =  Km0015, name = Km0015
	reaction_r_0207_Km0015=0.1;
	% Local Parameter:   id =  Km0725, name = Km0725
	reaction_r_0207_Km0725=0.1;
	% Local Parameter:   id =  Km0965, name = Km0965
	reaction_r_0207_Km0965=0.1;

	reaction_r_0207=compartment_cell*reaction_r_0207_Vmax*(x(6)-x(147)*x(175)/reaction_r_0207_Keq)/reaction_r_0207_Km0015/(1+x(6)/reaction_r_0207_Km0015+(1+x(147)/reaction_r_0207_Km0725)*(1+x(175)/reaction_r_0207_Km0965)-1);

% Reaction: id = r_0208, name = argininosuccinate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0208_FLUX_VALUE=0.00609896813766667;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0208_Vmax=0.18296904413;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0208_Keq=2.0;
	% Local Parameter:   id =  Km0434, name = Km0434
	reaction_r_0208_Km0434=0.1;
	% Local Parameter:   id =  Km0973, name = Km0973
	reaction_r_0208_Km0973=0.1;
	% Local Parameter:   id =  Km0979, name = Km0979
	reaction_r_0208_Km0979=0.1;
	% Local Parameter:   id =  Km0015, name = Km0015
	reaction_r_0208_Km0015=0.1;
	% Local Parameter:   id =  Km0423, name = Km0423
	reaction_r_0208_Km0423=0.1;
	% Local Parameter:   id =  Km0633, name = Km0633
	reaction_r_0208_Km0633=0.1;

	reaction_r_0208=compartment_cell*reaction_r_0208_Vmax*(x(91)*x(177)*x(179)-x(6)*x(86)*x(132)/reaction_r_0208_Keq)/(reaction_r_0208_Km0434*reaction_r_0208_Km0973*reaction_r_0208_Km0979)/((1+x(91)/reaction_r_0208_Km0434)*(1+x(177)/reaction_r_0208_Km0973)*(1+x(179)/reaction_r_0208_Km0979)+(1+x(6)/reaction_r_0208_Km0015)*(1+x(86)/reaction_r_0208_Km0423)*(1+x(132)/reaction_r_0208_Km0633)-1);

% Reaction: id = r_0209, name = arginyl-tRNA synthetase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0209_FLUX_VALUE=0.00609896813766758;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0209_Vmax=0.182969044130027;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0209_Keq=2.0;
	% Local Parameter:   id =  Km0434, name = Km0434
	reaction_r_0209_Km0434=0.1;
	% Local Parameter:   id =  Km0965, name = Km0965
	reaction_r_0209_Km0965=0.1;
	% Local Parameter:   id =  Km1583, name = Km1583
	reaction_r_0209_Km1583=0.1;
	% Local Parameter:   id =  Km0423, name = Km0423
	reaction_r_0209_Km0423=0.1;
	% Local Parameter:   id =  Km0428, name = Km0428
	reaction_r_0209_Km0428=0.1;
	% Local Parameter:   id =  Km0633, name = Km0633
	reaction_r_0209_Km0633=0.1;

	reaction_r_0209=compartment_cell*reaction_r_0209_Vmax*(x(91)*x(175)*x(283)-x(86)*x(88)*x(132)/reaction_r_0209_Keq)/(reaction_r_0209_Km0434*reaction_r_0209_Km0965*reaction_r_0209_Km1583)/((1+x(91)/reaction_r_0209_Km0434)*(1+x(175)/reaction_r_0209_Km0965)*(1+x(283)/reaction_r_0209_Km1583)+(1+x(86)/reaction_r_0209_Km0423)*(1+x(88)/reaction_r_0209_Km0428)*(1+x(132)/reaction_r_0209_Km0633)-1);

% Reaction: id = r_0211, name = asparagine synthase (glutamine-hydrolysing)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0211_FLUX_VALUE=0.00385977012819758;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0211_Vmax=0.177549425897089;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0211_Keq=0.2;
	% Local Parameter:   id =  Km0434, name = Km0434
	reaction_r_0211_Km0434=0.1;
	% Local Parameter:   id =  Km0973, name = Km0973
	reaction_r_0211_Km0973=0.1;
	% Local Parameter:   id =  Km0999, name = Km0999
	reaction_r_0211_Km0999=0.1;
	% Local Parameter:   id =  Km0423, name = Km0423
	reaction_r_0211_Km0423=0.1;
	% Local Parameter:   id =  Km0633, name = Km0633
	reaction_r_0211_Km0633=0.1;
	% Local Parameter:   id =  Km0969, name = Km0969
	reaction_r_0211_Km0969=0.1;
	% Local Parameter:   id =  Km0991, name = Km0991
	reaction_r_0211_Km0991=0.1;

	reaction_r_0211=compartment_cell*reaction_r_0211_Vmax*(x(91)*x(177)*x(183)-x(86)*x(132)*x(176)*x(182)/reaction_r_0211_Keq)/(reaction_r_0211_Km0434*reaction_r_0211_Km0973*reaction_r_0211_Km0999)/((1+x(91)/reaction_r_0211_Km0434)*(1+x(177)/reaction_r_0211_Km0973)*(1+x(183)/reaction_r_0211_Km0999)+(1+x(86)/reaction_r_0211_Km0423)*(1+x(132)/reaction_r_0211_Km0633)*(1+x(176)/reaction_r_0211_Km0969)*(1+x(182)/reaction_r_0211_Km0991)-1);

% Reaction: id = r_0212, name = Asparaginyl-tRNA synthetase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0212_FLUX_VALUE=0.00385977012819411;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0212_Vmax=0.115793103845823;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0212_Keq=2.0;
	% Local Parameter:   id =  Km0434, name = Km0434
	reaction_r_0212_Km0434=0.1;
	% Local Parameter:   id =  Km0969, name = Km0969
	reaction_r_0212_Km0969=0.1;
	% Local Parameter:   id =  Km1585, name = Km1585
	reaction_r_0212_Km1585=0.1;
	% Local Parameter:   id =  Km0423, name = Km0423
	reaction_r_0212_Km0423=0.1;
	% Local Parameter:   id =  Km0430, name = Km0430
	reaction_r_0212_Km0430=0.1;
	% Local Parameter:   id =  Km0633, name = Km0633
	reaction_r_0212_Km0633=0.1;

	reaction_r_0212=compartment_cell*reaction_r_0212_Vmax*(x(91)*x(176)*x(284)-x(86)*x(89)*x(132)/reaction_r_0212_Keq)/(reaction_r_0212_Km0434*reaction_r_0212_Km0969*reaction_r_0212_Km1585)/((1+x(91)/reaction_r_0212_Km0434)*(1+x(176)/reaction_r_0212_Km0969)*(1+x(284)/reaction_r_0212_Km1585)+(1+x(86)/reaction_r_0212_Km0423)*(1+x(89)/reaction_r_0212_Km0430)*(1+x(132)/reaction_r_0212_Km0633)-1);

% Reaction: id = r_0214, name = aspartate carbamoyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0214_FLUX_VALUE=0.00419754745504612;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0214_Vmax=0.0587656643706457;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0214_Keq=2.0;
	% Local Parameter:   id =  Km0455, name = Km0455
	reaction_r_0214_Km0455=0.1;
	% Local Parameter:   id =  Km0973, name = Km0973
	reaction_r_0214_Km0973=0.1;
	% Local Parameter:   id =  Km1194, name = Km1194
	reaction_r_0214_Km1194=0.1;
	% Local Parameter:   id =  Km1322, name = Km1322
	reaction_r_0214_Km1322=0.1;

	reaction_r_0214=compartment_cell*reaction_r_0214_Vmax*(x(94)*x(177)-x(218)*x(234)/reaction_r_0214_Keq)/(reaction_r_0214_Km0455*reaction_r_0214_Km0973)/((1+x(94)/reaction_r_0214_Km0455)*(1+x(177)/reaction_r_0214_Km0973)+(1+x(218)/reaction_r_0214_Km1194)*(1+x(234)/reaction_r_0214_Km1322)-1);

% Reaction: id = r_0215, name = aspartate kinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0215_FLUX_VALUE=0.0188389294905409;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0215_Vmax=0.263745012867573;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0215_Keq=2.0;
	% Local Parameter:   id =  Km0434, name = Km0434
	reaction_r_0215_Km0434=0.1;
	% Local Parameter:   id =  Km0973, name = Km0973
	reaction_r_0215_Km0973=0.1;
	% Local Parameter:   id =  Km0295, name = Km0295
	reaction_r_0215_Km0295=0.1;
	% Local Parameter:   id =  Km0394, name = Km0394
	reaction_r_0215_Km0394=0.1;

	reaction_r_0215=compartment_cell*reaction_r_0215_Vmax*(x(91)*x(177)-x(54)*x(81)/reaction_r_0215_Keq)/(reaction_r_0215_Km0434*reaction_r_0215_Km0973)/((1+x(91)/reaction_r_0215_Km0434)*(1+x(177)/reaction_r_0215_Km0973)+(1+x(54)/reaction_r_0215_Km0295)*(1+x(81)/reaction_r_0215_Km0394)-1);

% Reaction: id = r_0216, name = aspartate transaminase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0216_FLUX_VALUE=0.0524417011110143;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0216_Vmax=0.7341838155542;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0216_Keq=2.0;
	% Local Parameter:   id =  Km0991, name = Km0991
	reaction_r_0216_Km0991=0.1;
	% Local Parameter:   id =  Km1271, name = Km1271
	reaction_r_0216_Km1271=0.1;
	% Local Parameter:   id =  Km0180, name = Km0180
	reaction_r_0216_Km0180=0.1;
	% Local Parameter:   id =  Km0973, name = Km0973
	reaction_r_0216_Km0973=0.1;

	reaction_r_0216=compartment_cell*reaction_r_0216_Vmax*(x(182)*x(229)-x(36)*x(177)/reaction_r_0216_Keq)/(reaction_r_0216_Km0991*reaction_r_0216_Km1271)/((1+x(182)/reaction_r_0216_Km0991)*(1+x(229)/reaction_r_0216_Km1271)+(1+x(36)/reaction_r_0216_Km0180)*(1+x(177)/reaction_r_0216_Km0973)-1);

% Reaction: id = r_0219, name = aspartate-semialdehyde dehydrogenase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0219_FLUX_VALUE=0.0188389294905409;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0219_Vmax=0.4144564487919;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0219_Keq=0.2;
	% Local Parameter:   id =  Km0295, name = Km0295
	reaction_r_0219_Km0295=0.1;
	% Local Parameter:   id =  Km1212, name = Km1212
	reaction_r_0219_Km1212=0.1;
	% Local Parameter:   id =  Km0978, name = Km0978
	reaction_r_0219_Km0978=0.1;
	% Local Parameter:   id =  Km1207, name = Km1207
	reaction_r_0219_Km1207=0.1;
	% Local Parameter:   id =  Km1322, name = Km1322
	reaction_r_0219_Km1322=0.1;

	reaction_r_0219=compartment_cell*reaction_r_0219_Vmax*(x(54)*x(222)-x(178)*x(221)*x(234)/reaction_r_0219_Keq)/(reaction_r_0219_Km0295*reaction_r_0219_Km1212)/((1+x(54)/reaction_r_0219_Km0295)*(1+x(222)/reaction_r_0219_Km1212)+(1+x(178)/reaction_r_0219_Km0978)*(1+x(221)/reaction_r_0219_Km1207)*(1+x(234)/reaction_r_0219_Km1322)-1);

% Reaction: id = r_0220, name = Aspartyl-tRNA synthetase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0220_FLUX_VALUE=0.0112908713189552;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0220_Vmax=0.338726139568656;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0220_Keq=2.0;
	% Local Parameter:   id =  Km0434, name = Km0434
	reaction_r_0220_Km0434=0.1;
	% Local Parameter:   id =  Km0973, name = Km0973
	reaction_r_0220_Km0973=0.1;
	% Local Parameter:   id =  Km1587, name = Km1587
	reaction_r_0220_Km1587=0.1;
	% Local Parameter:   id =  Km0423, name = Km0423
	reaction_r_0220_Km0423=0.1;
	% Local Parameter:   id =  Km0432, name = Km0432
	reaction_r_0220_Km0432=0.1;
	% Local Parameter:   id =  Km0633, name = Km0633
	reaction_r_0220_Km0633=0.1;

	reaction_r_0220=compartment_cell*reaction_r_0220_Vmax*(x(91)*x(177)*x(285)-x(86)*x(90)*x(132)/reaction_r_0220_Keq)/(reaction_r_0220_Km0434*reaction_r_0220_Km0973*reaction_r_0220_Km1587)/((1+x(91)/reaction_r_0220_Km0434)*(1+x(177)/reaction_r_0220_Km0973)*(1+x(285)/reaction_r_0220_Km1587)+(1+x(86)/reaction_r_0220_Km0423)*(1+x(90)/reaction_r_0220_Km0432)*(1+x(132)/reaction_r_0220_Km0633)-1);

% Reaction: id = r_0225, name = ATP phosphoribosyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0225_FLUX_VALUE=0.00251625132250899;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0225_Vmax=0.0352275185151259;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0225_Keq=2.0;
	% Local Parameter:   id =  Km0434, name = Km0434
	reaction_r_0225_Km0434=0.1;
	% Local Parameter:   id =  Km1386, name = Km1386
	reaction_r_0225_Km1386=0.1;
	% Local Parameter:   id =  Km0326, name = Km0326
	reaction_r_0225_Km0326=0.1;
	% Local Parameter:   id =  Km0633, name = Km0633
	reaction_r_0225_Km0633=0.1;

	reaction_r_0225=compartment_cell*reaction_r_0225_Vmax*(x(91)*x(248)-x(70)*x(132)/reaction_r_0225_Keq)/(reaction_r_0225_Km0434*reaction_r_0225_Km1386)/((1+x(91)/reaction_r_0225_Km0434)*(1+x(248)/reaction_r_0225_Km1386)+(1+x(70)/reaction_r_0225_Km0326)*(1+x(132)/reaction_r_0225_Km0633)-1);

% Reaction: id = r_0231, name = C-14 sterol reductase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0231_FLUX_VALUE=2.58760203874159E-4;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0231_Vmax=0.00362264285423823;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0231_Keq=2.0;
	% Local Parameter:   id =  Km0262, name = Km0262
	reaction_r_0231_Km0262=0.1;
	% Local Parameter:   id =  Km1212, name = Km1212
	reaction_r_0231_Km1212=0.1;
	% Local Parameter:   id =  Km0122, name = Km0122
	reaction_r_0231_Km0122=0.1;
	% Local Parameter:   id =  Km1207, name = Km1207
	reaction_r_0231_Km1207=0.1;

	reaction_r_0231=compartment_cell*reaction_r_0231_Vmax*(x(52)*x(222)-x(25)*x(221)/reaction_r_0231_Keq)/(reaction_r_0231_Km0262*reaction_r_0231_Km1212)/((1+x(52)/reaction_r_0231_Km0262)*(1+x(222)/reaction_r_0231_Km1212)+(1+x(25)/reaction_r_0231_Km0122)*(1+x(221)/reaction_r_0231_Km1207)-1);

% Reaction: id = r_0233, name = C-22 sterol desaturase (NADP)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0233_FLUX_VALUE=2.48095549098117E-4;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0233_Vmax=0.00545810208015857;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0233_Keq=20.0;
	% Local Parameter:   id =  Km0664, name = Km0664
	reaction_r_0233_Km0664=0.1;
	% Local Parameter:   id =  Km1212, name = Km1212
	reaction_r_0233_Km1212=0.1;
	% Local Parameter:   id =  Km1275, name = Km1275
	reaction_r_0233_Km1275=0.1;
	% Local Parameter:   id =  Km0662, name = Km0662
	reaction_r_0233_Km0662=0.1;
	% Local Parameter:   id =  Km1207, name = Km1207
	reaction_r_0233_Km1207=0.1;

	reaction_r_0233=compartment_cell*reaction_r_0233_Vmax*(x(140)*x(222)*x(230)-x(139)*x(221)/reaction_r_0233_Keq)/(reaction_r_0233_Km0664*reaction_r_0233_Km1212*reaction_r_0233_Km1275)/((1+x(140)/reaction_r_0233_Km0664)*(1+x(222)/reaction_r_0233_Km1212)*(1+x(230)/reaction_r_0233_Km1275)+(1+x(139)/reaction_r_0233_Km0662)*(1+x(221)/reaction_r_0233_Km1207)-1);

% Reaction: id = r_0234, name = C-3 sterol dehydrogenase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0234_FLUX_VALUE=2.56634863390825E-4;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0234_Vmax=0.00564596699459815;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0234_Keq=0.2;
	% Local Parameter:   id =  Km1207, name = Km1207
	reaction_r_0234_Km1207=0.1;
	% Local Parameter:   id =  Km1578, name = Km1578
	reaction_r_0234_Km1578=0.1;
	% Local Parameter:   id =  Km0456, name = Km0456
	reaction_r_0234_Km0456=0.1;
	% Local Parameter:   id =  Km1212, name = Km1212
	reaction_r_0234_Km1212=0.1;
	% Local Parameter:   id =  Km1579, name = Km1579
	reaction_r_0234_Km1579=0.1;

	reaction_r_0234=compartment_cell*reaction_r_0234_Vmax*(x(221)*x(280)-x(95)*x(222)*x(281)/reaction_r_0234_Keq)/(reaction_r_0234_Km1207*reaction_r_0234_Km1578)/((1+x(221)/reaction_r_0234_Km1207)*(1+x(280)/reaction_r_0234_Km1578)+(1+x(95)/reaction_r_0234_Km0456)*(1+x(222)/reaction_r_0234_Km1212)*(1+x(281)/reaction_r_0234_Km1579)-1);

% Reaction: id = r_0235, name = C-3 sterol dehydrogenase (4-methylzymosterol)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0235_FLUX_VALUE=2.56634863390825E-4;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0235_Vmax=0.00564596699459815;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0235_Keq=0.2;
	% Local Parameter:   id =  Km0297, name = Km0297
	reaction_r_0235_Km0297=0.1;
	% Local Parameter:   id =  Km1198, name = Km1198
	reaction_r_0235_Km1198=0.1;
	% Local Parameter:   id =  Km0209, name = Km0209
	reaction_r_0235_Km0209=0.1;
	% Local Parameter:   id =  Km0456, name = Km0456
	reaction_r_0235_Km0456=0.1;
	% Local Parameter:   id =  Km1203, name = Km1203
	reaction_r_0235_Km1203=0.1;

	reaction_r_0235=compartment_cell*reaction_r_0235_Vmax*(x(56)*x(219)-x(42)*x(95)*x(220)/reaction_r_0235_Keq)/(reaction_r_0235_Km0297*reaction_r_0235_Km1198)/((1+x(56)/reaction_r_0235_Km0297)*(1+x(219)/reaction_r_0235_Km1198)+(1+x(42)/reaction_r_0235_Km0209)*(1+x(95)/reaction_r_0235_Km0456)*(1+x(220)/reaction_r_0235_Km1203)-1);

% Reaction: id = r_0236, name = C-3 sterol keto reductase (4-methylzymosterol)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0236_FLUX_VALUE=2.56634863390825E-4;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0236_Vmax=0.00359288808747155;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0236_Keq=2.0;
	% Local Parameter:   id =  Km0209, name = Km0209
	reaction_r_0236_Km0209=0.1;
	% Local Parameter:   id =  Km1212, name = Km1212
	reaction_r_0236_Km1212=0.1;
	% Local Parameter:   id =  Km0296, name = Km0296
	reaction_r_0236_Km0296=0.1;
	% Local Parameter:   id =  Km1207, name = Km1207
	reaction_r_0236_Km1207=0.1;

	reaction_r_0236=compartment_cell*reaction_r_0236_Vmax*(x(42)*x(222)-x(55)*x(221)/reaction_r_0236_Keq)/(reaction_r_0236_Km0209*reaction_r_0236_Km1212)/((1+x(42)/reaction_r_0236_Km0209)*(1+x(222)/reaction_r_0236_Km1212)+(1+x(55)/reaction_r_0236_Km0296)*(1+x(221)/reaction_r_0236_Km1207)-1);

% Reaction: id = r_0237, name = C-3 sterol keto reductase (zymosterol)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0237_FLUX_VALUE=2.56634863390825E-4;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0237_Vmax=0.00359288808747155;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0237_Keq=2.0;
	% Local Parameter:   id =  Km1212, name = Km1212
	reaction_r_0237_Km1212=0.1;
	% Local Parameter:   id =  Km1579, name = Km1579
	reaction_r_0237_Km1579=0.1;
	% Local Parameter:   id =  Km1207, name = Km1207
	reaction_r_0237_Km1207=0.1;
	% Local Parameter:   id =  Km1569, name = Km1569
	reaction_r_0237_Km1569=0.1;

	reaction_r_0237=compartment_cell*reaction_r_0237_Vmax*(x(222)*x(281)-x(221)*x(277)/reaction_r_0237_Keq)/(reaction_r_0237_Km1212*reaction_r_0237_Km1579)/((1+x(222)/reaction_r_0237_Km1212)*(1+x(281)/reaction_r_0237_Km1579)+(1+x(221)/reaction_r_0237_Km1207)*(1+x(277)/reaction_r_0237_Km1569)-1);

% Reaction: id = r_0238, name = C-4 methyl sterol oxidase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0238_FLUX_VALUE=2.56634863390825E-4;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0238_Vmax=0.00564596699459815;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0238_Keq=20.0;
	% Local Parameter:   id =  Km0296, name = Km0296
	reaction_r_0238_Km0296=0.1;
	% Local Parameter:   id =  Km1212, name = Km1212
	reaction_r_0238_Km1212=0.1;
	% Local Parameter:   id =  Km1275, name = Km1275
	reaction_r_0238_Km1275=0.1;
	% Local Parameter:   id =  Km1207, name = Km1207
	reaction_r_0238_Km1207=0.1;
	% Local Parameter:   id =  Km1576, name = Km1576
	reaction_r_0238_Km1576=0.1;

	reaction_r_0238=compartment_cell*reaction_r_0238_Vmax*(x(55)*x(222)*x(230)-x(221)*x(278)/reaction_r_0238_Keq)/(reaction_r_0238_Km0296*reaction_r_0238_Km1212*reaction_r_0238_Km1275)/((1+x(55)/reaction_r_0238_Km0296)*(1+x(222)/reaction_r_0238_Km1212)*(1+x(230)/reaction_r_0238_Km1275)+(1+x(221)/reaction_r_0238_Km1207)*(1+x(278)/reaction_r_0238_Km1576)-1);

% Reaction: id = r_0239, name = C-4 methyl sterol oxidase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0239_FLUX_VALUE=2.56634863390825E-4;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0239_Vmax=0.00564596699459815;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0239_Keq=20.0;
	% Local Parameter:   id =  Km1212, name = Km1212
	reaction_r_0239_Km1212=0.1;
	% Local Parameter:   id =  Km1275, name = Km1275
	reaction_r_0239_Km1275=0.1;
	% Local Parameter:   id =  Km1576, name = Km1576
	reaction_r_0239_Km1576=0.1;
	% Local Parameter:   id =  Km1207, name = Km1207
	reaction_r_0239_Km1207=0.1;
	% Local Parameter:   id =  Km1577, name = Km1577
	reaction_r_0239_Km1577=0.1;

	reaction_r_0239=compartment_cell*reaction_r_0239_Vmax*(x(222)*x(230)*x(278)-x(221)*x(279)/reaction_r_0239_Keq)/(reaction_r_0239_Km1212*reaction_r_0239_Km1275*reaction_r_0239_Km1576)/((1+x(222)/reaction_r_0239_Km1212)*(1+x(230)/reaction_r_0239_Km1275)*(1+x(278)/reaction_r_0239_Km1576)+(1+x(221)/reaction_r_0239_Km1207)*(1+x(279)/reaction_r_0239_Km1577)-1);

% Reaction: id = r_0240, name = C-4 methyl sterol oxidase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0240_FLUX_VALUE=2.56634863390825E-4;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0240_Vmax=0.00564596699459815;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0240_Keq=20.0;
	% Local Parameter:   id =  Km1212, name = Km1212
	reaction_r_0240_Km1212=0.1;
	% Local Parameter:   id =  Km1275, name = Km1275
	reaction_r_0240_Km1275=0.1;
	% Local Parameter:   id =  Km1577, name = Km1577
	reaction_r_0240_Km1577=0.1;
	% Local Parameter:   id =  Km1207, name = Km1207
	reaction_r_0240_Km1207=0.1;
	% Local Parameter:   id =  Km1578, name = Km1578
	reaction_r_0240_Km1578=0.1;

	reaction_r_0240=compartment_cell*reaction_r_0240_Vmax*(x(222)*x(230)*x(279)-x(221)*x(280)/reaction_r_0240_Keq)/(reaction_r_0240_Km1212*reaction_r_0240_Km1275*reaction_r_0240_Km1577)/((1+x(222)/reaction_r_0240_Km1212)*(1+x(230)/reaction_r_0240_Km1275)*(1+x(279)/reaction_r_0240_Km1577)+(1+x(221)/reaction_r_0240_Km1207)*(1+x(280)/reaction_r_0240_Km1578)-1);

% Reaction: id = r_0241, name = C-4 sterol methyl oxidase (4,4-dimethylzymosterol)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0241_FLUX_VALUE=2.56634863390825E-4;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0241_Vmax=0.0733975709297759;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0241_Keq=2000.0;
	% Local Parameter:   id =  Km0122, name = Km0122
	reaction_r_0241_Km0122=0.1;
	% Local Parameter:   id =  Km1212, name = Km1212
	reaction_r_0241_Km1212=0.1;
	% Local Parameter:   id =  Km1275, name = Km1275
	reaction_r_0241_Km1275=0.1;
	% Local Parameter:   id =  Km0297, name = Km0297
	reaction_r_0241_Km0297=0.1;
	% Local Parameter:   id =  Km1207, name = Km1207
	reaction_r_0241_Km1207=0.1;

	reaction_r_0241=compartment_cell*reaction_r_0241_Vmax*(x(25)*x(222)^3*x(230)^3-x(56)*x(221)^3/reaction_r_0241_Keq)/(reaction_r_0241_Km0122*reaction_r_0241_Km1212^3*reaction_r_0241_Km1275^3)/((1+x(25)/reaction_r_0241_Km0122)*(1+x(222)/reaction_r_0241_Km1212)^3*(1+x(230)/reaction_r_0241_Km1275)^3+(1+x(56)/reaction_r_0241_Km0297)*(1+x(221)/reaction_r_0241_Km1207)^3-1);

% Reaction: id = r_0242, name = C-5 sterol desaturase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0242_FLUX_VALUE=2.48095549098117E-4;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0242_Vmax=0.00545810208015857;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0242_Keq=20.0;
	% Local Parameter:   id =  Km0657, name = Km0657
	reaction_r_0242_Km0657=0.1;
	% Local Parameter:   id =  Km1212, name = Km1212
	reaction_r_0242_Km1212=0.1;
	% Local Parameter:   id =  Km1275, name = Km1275
	reaction_r_0242_Km1275=0.1;
	% Local Parameter:   id =  Km0664, name = Km0664
	reaction_r_0242_Km0664=0.1;
	% Local Parameter:   id =  Km1207, name = Km1207
	reaction_r_0242_Km1207=0.1;

	reaction_r_0242=compartment_cell*reaction_r_0242_Vmax*(x(138)*x(222)*x(230)-x(140)*x(221)/reaction_r_0242_Keq)/(reaction_r_0242_Km0657*reaction_r_0242_Km1212*reaction_r_0242_Km1275)/((1+x(138)/reaction_r_0242_Km0657)*(1+x(222)/reaction_r_0242_Km1212)*(1+x(230)/reaction_r_0242_Km1275)+(1+x(140)/reaction_r_0242_Km0664)*(1+x(221)/reaction_r_0242_Km1207)-1);

% Reaction: id = r_0243, name = C-8 sterol isomerase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0243_FLUX_VALUE=2.5173898992709E-4;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0243_Vmax=0.00151043393956254;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0243_Keq=2.0;
	% Local Parameter:   id =  Km0700, name = Km0700
	reaction_r_0243_Km0700=0.1;
	% Local Parameter:   id =  Km0657, name = Km0657
	reaction_r_0243_Km0657=0.1;

	reaction_r_0243=compartment_cell*reaction_r_0243_Vmax*(x(143)-x(138)/reaction_r_0243_Keq)/reaction_r_0243_Km0700/(1+x(143)/reaction_r_0243_Km0700+1+x(138)/reaction_r_0243_Km0657-1);

% Reaction: id = r_0244, name = C-s24 sterol reductase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0244_FLUX_VALUE=2.43351485368152E-4;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0244_Vmax=0.00340692079515413;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0244_Keq=2.0;
	% Local Parameter:   id =  Km0662, name = Km0662
	reaction_r_0244_Km0662=0.1;
	% Local Parameter:   id =  Km1212, name = Km1212
	reaction_r_0244_Km1212=0.1;
	% Local Parameter:   id =  Km0666, name = Km0666
	reaction_r_0244_Km0666=0.1;
	% Local Parameter:   id =  Km1207, name = Km1207
	reaction_r_0244_Km1207=0.1;

	reaction_r_0244=compartment_cell*reaction_r_0244_Vmax*(x(139)*x(222)-x(141)*x(221)/reaction_r_0244_Keq)/(reaction_r_0244_Km0662*reaction_r_0244_Km1212)/((1+x(139)/reaction_r_0244_Km0662)*(1+x(222)/reaction_r_0244_Km1212)+(1+x(141)/reaction_r_0244_Km0666)*(1+x(221)/reaction_r_0244_Km1207)-1);

% Reaction: id = r_0250, name = carbamoyl-phosphate synthase (glutamine-hydrolysing)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0250_FLUX_VALUE=0.0102965155927141;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0250_Vmax=0.967872465715125;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0250_Keq=0.2;
	% Local Parameter:   id =  Km0434, name = Km0434
	reaction_r_0250_Km0434=0.1;
	% Local Parameter:   id =  Km0445, name = Km0445
	reaction_r_0250_Km0445=0.1;
	% Local Parameter:   id =  Km0999, name = Km0999
	reaction_r_0250_Km0999=0.1;
	% Local Parameter:   id =  Km0394, name = Km0394
	reaction_r_0250_Km0394=0.1;
	% Local Parameter:   id =  Km0455, name = Km0455
	reaction_r_0250_Km0455=0.1;
	% Local Parameter:   id =  Km0991, name = Km0991
	reaction_r_0250_Km0991=0.1;
	% Local Parameter:   id =  Km1322, name = Km1322
	reaction_r_0250_Km1322=0.1;

	reaction_r_0250=compartment_cell*reaction_r_0250_Vmax*(x(91)^2*x(92)*x(183)-x(81)^2*x(94)*x(182)*x(234)/reaction_r_0250_Keq)/(reaction_r_0250_Km0434^2*reaction_r_0250_Km0445*reaction_r_0250_Km0999)/((1+x(91)/reaction_r_0250_Km0434)^2*(1+x(92)/reaction_r_0250_Km0445)*(1+x(183)/reaction_r_0250_Km0999)+(1+x(81)/reaction_r_0250_Km0394)^2*(1+x(94)/reaction_r_0250_Km0455)*(1+x(182)/reaction_r_0250_Km0991)*(1+x(234)/reaction_r_0250_Km1322)-1);

% Reaction: id = r_0257, name = CDP-diacylglycerol synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0257_FLUX_VALUE=2.3107859282821E-4;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0257_Vmax=0.00323510029959494;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0257_Keq=2.0;
	% Local Parameter:   id =  Km0539, name = Km0539
	reaction_r_0257_Km0539=0.1;
	% Local Parameter:   id =  Km1331, name = Km1331
	reaction_r_0257_Km1331=0.1;
	% Local Parameter:   id =  Km0471, name = Km0471
	reaction_r_0257_Km0471=0.1;
	% Local Parameter:   id =  Km0633, name = Km0633
	reaction_r_0257_Km0633=0.1;

	reaction_r_0257=compartment_cell*reaction_r_0257_Vmax*(x(107)*x(235)-x(97)*x(132)/reaction_r_0257_Keq)/(reaction_r_0257_Km0539*reaction_r_0257_Km1331)/((1+x(107)/reaction_r_0257_Km0539)*(1+x(235)/reaction_r_0257_Km1331)+(1+x(97)/reaction_r_0257_Km0471)*(1+x(132)/reaction_r_0257_Km0633)-1);

% Reaction: id = r_0259, name = ceramide-1 hydroxylase (24C)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0259_FLUX_VALUE=1.02210849818021E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0259_Vmax=2.24863869599646E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0259_Keq=20.0;
	% Local Parameter:   id =  Km0475, name = Km0475
	reaction_r_0259_Km0475=0.1;
	% Local Parameter:   id =  Km1212, name = Km1212
	reaction_r_0259_Km1212=0.1;
	% Local Parameter:   id =  Km1275, name = Km1275
	reaction_r_0259_Km1275=0.1;
	% Local Parameter:   id =  Km0481, name = Km0481
	reaction_r_0259_Km0481=0.1;
	% Local Parameter:   id =  Km1207, name = Km1207
	reaction_r_0259_Km1207=0.1;

	reaction_r_0259=compartment_cell*reaction_r_0259_Vmax*(x(98)*x(222)*x(230)-x(99)*x(221)/reaction_r_0259_Keq)/(reaction_r_0259_Km0475*reaction_r_0259_Km1212*reaction_r_0259_Km1275)/((1+x(98)/reaction_r_0259_Km0475)*(1+x(222)/reaction_r_0259_Km1212)*(1+x(230)/reaction_r_0259_Km1275)+(1+x(99)/reaction_r_0259_Km0481)*(1+x(221)/reaction_r_0259_Km1207)-1);

% Reaction: id = r_0267, name = ceramide-3 synthase (24C)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0267_FLUX_VALUE=2.04421701081157E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0267_Vmax=4.49727742378545E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0267_Keq=20.0;
	% Local Parameter:   id =  Km0481, name = Km0481
	reaction_r_0267_Km0481=0.1;
	% Local Parameter:   id =  Km1212, name = Km1212
	reaction_r_0267_Km1212=0.1;
	% Local Parameter:   id =  Km1275, name = Km1275
	reaction_r_0267_Km1275=0.1;
	% Local Parameter:   id =  Km0493, name = Km0493
	reaction_r_0267_Km0493=0.1;
	% Local Parameter:   id =  Km1207, name = Km1207
	reaction_r_0267_Km1207=0.1;

	reaction_r_0267=compartment_cell*reaction_r_0267_Vmax*(x(99)*x(222)*x(230)-x(100)*x(221)/reaction_r_0267_Keq)/(reaction_r_0267_Km0481*reaction_r_0267_Km1212*reaction_r_0267_Km1275)/((1+x(99)/reaction_r_0267_Km0481)*(1+x(222)/reaction_r_0267_Km1212)*(1+x(230)/reaction_r_0267_Km1275)+(1+x(100)/reaction_r_0267_Km0493)*(1+x(221)/reaction_r_0267_Km1207)-1);

% Reaction: id = r_0269, name = ceramide-4 synthase (24C)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0269_FLUX_VALUE=2.04421702621944E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0269_Vmax=4.49727745768277E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0269_Keq=20.0;
	% Local Parameter:   id =  Km0493, name = Km0493
	reaction_r_0269_Km0493=0.1;
	% Local Parameter:   id =  Km1212, name = Km1212
	reaction_r_0269_Km1212=0.1;
	% Local Parameter:   id =  Km1275, name = Km1275
	reaction_r_0269_Km1275=0.1;
	% Local Parameter:   id =  Km0499, name = Km0499
	reaction_r_0269_Km0499=0.1;
	% Local Parameter:   id =  Km1207, name = Km1207
	reaction_r_0269_Km1207=0.1;

	reaction_r_0269=compartment_cell*reaction_r_0269_Vmax*(x(100)*x(222)*x(230)-x(101)*x(221)/reaction_r_0269_Keq)/(reaction_r_0269_Km0493*reaction_r_0269_Km1212*reaction_r_0269_Km1275)/((1+x(100)/reaction_r_0269_Km0493)*(1+x(222)/reaction_r_0269_Km1212)*(1+x(230)/reaction_r_0269_Km1275)+(1+x(101)/reaction_r_0269_Km0499)*(1+x(221)/reaction_r_0269_Km1207)-1);

% Reaction: id = r_0278, name = chorismate mutase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0278_FLUX_VALUE=0.00895299678702938;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0278_Vmax=0.0537179807221763;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0278_Keq=2.0;
	% Local Parameter:   id =  Km0515, name = Km0515
	reaction_r_0278_Km0515=0.1;
	% Local Parameter:   id =  Km1377, name = Km1377
	reaction_r_0278_Km1377=0.1;

	reaction_r_0278=compartment_cell*reaction_r_0278_Vmax*(x(102)-x(246)/reaction_r_0278_Keq)/reaction_r_0278_Km0515/(1+x(102)/reaction_r_0278_Km0515+1+x(246)/reaction_r_0278_Km1377-1);

% Reaction: id = r_0279, name = chorismate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0279_FLUX_VALUE=0.0100308480322675;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0279_Vmax=0.100308480322675;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0279_Keq=0.2;
	% Local Parameter:   id =  Km0324, name = Km0324
	reaction_r_0279_Km0324=0.1;
	% Local Parameter:   id =  Km0515, name = Km0515
	reaction_r_0279_Km0515=0.1;
	% Local Parameter:   id =  Km1322, name = Km1322
	reaction_r_0279_Km1322=0.1;

	reaction_r_0279=compartment_cell*reaction_r_0279_Vmax*(x(68)-x(102)*x(234)/reaction_r_0279_Keq)/reaction_r_0279_Km0324/(1+x(68)/reaction_r_0279_Km0324+(1+x(102)/reaction_r_0279_Km0515)*(1+x(234)/reaction_r_0279_Km1322)-1);

% Reaction: id = r_0280, name = cis-aconitate(3-) to isocitrate	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0280_FLUX_VALUE=0.0386660157978829;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0280_Vmax=0.231996094787297;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0280_Keq=2.0;
	% Local Parameter:   id =  Km0516, name = Km0516
	reaction_r_0280_Km0516=0.1;
	% Local Parameter:   id =  Km0940, name = Km0940
	reaction_r_0280_Km0940=0.1;

	reaction_r_0280=compartment_cell*reaction_r_0280_Vmax*(x(103)-x(169)/reaction_r_0280_Keq)/reaction_r_0280_Km0516/(1+x(103)/reaction_r_0280_Km0516+1+x(169)/reaction_r_0280_Km0940-1);

% Reaction: id = r_0300, name = citrate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0300_FLUX_VALUE=0.0386660157978829;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0300_Vmax=0.54132422117036;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0300_Keq=2.0;
	% Local Parameter:   id =  Km0373, name = Km0373
	reaction_r_0300_Km0373=0.1;
	% Local Parameter:   id =  Km1271, name = Km1271
	reaction_r_0300_Km1271=0.1;
	% Local Parameter:   id =  Km0522, name = Km0522
	reaction_r_0300_Km0522=0.1;
	% Local Parameter:   id =  Km0529, name = Km0529
	reaction_r_0300_Km0529=0.1;

	reaction_r_0300=compartment_cell*reaction_r_0300_Vmax*(x(76)*x(229)-x(104)*x(106)/reaction_r_0300_Keq)/(reaction_r_0300_Km0373*reaction_r_0300_Km1271)/((1+x(76)/reaction_r_0300_Km0373)*(1+x(229)/reaction_r_0300_Km1271)+(1+x(104)/reaction_r_0300_Km0522)*(1+x(106)/reaction_r_0300_Km0529)-1);

% Reaction: id = r_0302, name = citrate to cis-aconitate(3-)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0302_FLUX_VALUE=0.0386660157978829;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0302_Vmax=0.231996094787297;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0302_Keq=2.0;
	% Local Parameter:   id =  Km0522, name = Km0522
	reaction_r_0302_Km0522=0.1;
	% Local Parameter:   id =  Km0516, name = Km0516
	reaction_r_0302_Km0516=0.1;

	reaction_r_0302=compartment_cell*reaction_r_0302_Vmax*(x(104)-x(103)/reaction_r_0302_Keq)/reaction_r_0302_Km0522/(1+x(104)/reaction_r_0302_Km0522+1+x(103)/reaction_r_0302_Km0516-1);

% Reaction: id = r_0307, name = CTP synthase (NH3)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0307_FLUX_VALUE=0.00179092669763194;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0307_Vmax=0.0537278009289582;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0307_Keq=2.0;
	% Local Parameter:   id =  Km0419, name = Km0419
	reaction_r_0307_Km0419=0.1;
	% Local Parameter:   id =  Km0434, name = Km0434
	reaction_r_0307_Km0434=0.1;
	% Local Parameter:   id =  Km1559, name = Km1559
	reaction_r_0307_Km1559=0.1;
	% Local Parameter:   id =  Km0394, name = Km0394
	reaction_r_0307_Km0394=0.1;
	% Local Parameter:   id =  Km0539, name = Km0539
	reaction_r_0307_Km0539=0.1;
	% Local Parameter:   id =  Km1322, name = Km1322
	reaction_r_0307_Km1322=0.1;

	reaction_r_0307=compartment_cell*reaction_r_0307_Vmax*(x(85)*x(91)*x(274)-x(81)*x(107)*x(234)/reaction_r_0307_Keq)/(reaction_r_0307_Km0419*reaction_r_0307_Km0434*reaction_r_0307_Km1559)/((1+x(85)/reaction_r_0307_Km0419)*(1+x(91)/reaction_r_0307_Km0434)*(1+x(274)/reaction_r_0307_Km1559)+(1+x(81)/reaction_r_0307_Km0394)*(1+x(107)/reaction_r_0307_Km0539)*(1+x(234)/reaction_r_0307_Km1322)-1);

% Reaction: id = r_0309, name = cystathionine beta-synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0309_FLUX_VALUE=2.50486556092046E-4;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0309_Vmax=0.00250486556092046;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0309_Keq=20.0;
	% Local Parameter:   id =  Km1012, name = Km1012
	reaction_r_0309_Km1012=0.1;
	% Local Parameter:   id =  Km1039, name = Km1039
	reaction_r_0309_Km1039=0.1;
	% Local Parameter:   id =  Km0980, name = Km0980
	reaction_r_0309_Km0980=0.1;

	reaction_r_0309=compartment_cell*reaction_r_0309_Vmax*(x(188)*x(197)-x(180)/reaction_r_0309_Keq)/(reaction_r_0309_Km1012*reaction_r_0309_Km1039)/((1+x(188)/reaction_r_0309_Km1012)*(1+x(197)/reaction_r_0309_Km1039)+1+x(180)/reaction_r_0309_Km0980-1);

% Reaction: id = r_0310, name = cystathionine g-lyase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0310_FLUX_VALUE=0.00965062714998262;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0310_Vmax=0.173711288699687;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0310_Keq=0.02;
	% Local Parameter:   id =  Km0980, name = Km0980
	reaction_r_0310_Km0980=0.1;
	% Local Parameter:   id =  Km0178, name = Km0178
	reaction_r_0310_Km0178=0.1;
	% Local Parameter:   id =  Km0419, name = Km0419
	reaction_r_0310_Km0419=0.1;
	% Local Parameter:   id =  Km0981, name = Km0981
	reaction_r_0310_Km0981=0.1;

	reaction_r_0310=compartment_cell*reaction_r_0310_Vmax*(x(180)-x(35)*x(85)*x(181)/reaction_r_0310_Keq)/reaction_r_0310_Km0980/(1+x(180)/reaction_r_0310_Km0980+(1+x(35)/reaction_r_0310_Km0178)*(1+x(85)/reaction_r_0310_Km0419)*(1+x(181)/reaction_r_0310_Km0981)-1);

% Reaction: id = r_0311, name = cystathionine gamma-synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0311_FLUX_VALUE=0.0094001405938857;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0311_Vmax=0.1316019683144;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0311_Keq=2.0;
	% Local Parameter:   id =  Km0981, name = Km0981
	reaction_r_0311_Km0981=0.1;
	% Local Parameter:   id =  Km1233, name = Km1233
	reaction_r_0311_Km1233=0.1;
	% Local Parameter:   id =  Km0362, name = Km0362
	reaction_r_0311_Km0362=0.1;
	% Local Parameter:   id =  Km0980, name = Km0980
	reaction_r_0311_Km0980=0.1;

	reaction_r_0311=compartment_cell*reaction_r_0311_Vmax*(x(181)*x(223)-x(74)*x(180)/reaction_r_0311_Keq)/(reaction_r_0311_Km0981*reaction_r_0311_Km1233)/((1+x(181)/reaction_r_0311_Km0981)*(1+x(223)/reaction_r_0311_Km1233)+(1+x(74)/reaction_r_0311_Km0362)*(1+x(180)/reaction_r_0311_Km0980)-1);

% Reaction: id = r_0313, name = cysteinyl-tRNA synthetase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0313_FLUX_VALUE=2.50486556991948E-4;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0313_Vmax=0.00751459670975844;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0313_Keq=2.0;
	% Local Parameter:   id =  Km0434, name = Km0434
	reaction_r_0313_Km0434=0.1;
	% Local Parameter:   id =  Km0981, name = Km0981
	reaction_r_0313_Km0981=0.1;
	% Local Parameter:   id =  Km1589, name = Km1589
	reaction_r_0313_Km1589=0.1;
	% Local Parameter:   id =  Km0423, name = Km0423
	reaction_r_0313_Km0423=0.1;
	% Local Parameter:   id =  Km0542, name = Km0542
	reaction_r_0313_Km0542=0.1;
	% Local Parameter:   id =  Km0633, name = Km0633
	reaction_r_0313_Km0633=0.1;

	reaction_r_0313=compartment_cell*reaction_r_0313_Vmax*(x(91)*x(181)*x(286)-x(86)*x(108)*x(132)/reaction_r_0313_Keq)/(reaction_r_0313_Km0434*reaction_r_0313_Km0981*reaction_r_0313_Km1589)/((1+x(91)/reaction_r_0313_Km0434)*(1+x(181)/reaction_r_0313_Km0981)*(1+x(286)/reaction_r_0313_Km1589)+(1+x(86)/reaction_r_0313_Km0423)*(1+x(108)/reaction_r_0313_Km0542)*(1+x(132)/reaction_r_0313_Km0633)-1);

% Reaction: id = r_0317, name = cytochrome P450 lanosterol 14-alpha-demethylase (NADP)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0317_FLUX_VALUE=2.58760203874159E-4;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0317_Vmax=0.0822857448319826;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0317_Keq=200.0;
	% Local Parameter:   id =  Km1059, name = Km1059
	reaction_r_0317_Km1059=0.1;
	% Local Parameter:   id =  Km1212, name = Km1212
	reaction_r_0317_Km1212=0.1;
	% Local Parameter:   id =  Km1275, name = Km1275
	reaction_r_0317_Km1275=0.1;
	% Local Parameter:   id =  Km0262, name = Km0262
	reaction_r_0317_Km0262=0.1;
	% Local Parameter:   id =  Km0722, name = Km0722
	reaction_r_0317_Km0722=0.1;
	% Local Parameter:   id =  Km1207, name = Km1207
	reaction_r_0317_Km1207=0.1;

	reaction_r_0317=compartment_cell*reaction_r_0317_Vmax*(x(202)*x(222)^3*x(230)^3-x(52)*x(146)*x(221)^3/reaction_r_0317_Keq)/(reaction_r_0317_Km1059*reaction_r_0317_Km1212^3*reaction_r_0317_Km1275^3)/((1+x(202)/reaction_r_0317_Km1059)*(1+x(222)/reaction_r_0317_Km1212)^3*(1+x(230)/reaction_r_0317_Km1275)^3+(1+x(52)/reaction_r_0317_Km0262)*(1+x(146)/reaction_r_0317_Km0722)*(1+x(221)/reaction_r_0317_Km1207)^3-1);

% Reaction: id = r_0326, name = dCMP deaminase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0326_FLUX_VALUE=3.36354094523684E-6;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0326_Vmax=3.36354094523684E-5;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0326_Keq=0.2;
	% Local Parameter:   id =  Km0589, name = Km0589
	reaction_r_0326_Km0589=0.1;
	% Local Parameter:   id =  Km0419, name = Km0419
	reaction_r_0326_Km0419=0.1;
	% Local Parameter:   id =  Km0654, name = Km0654
	reaction_r_0326_Km0654=0.1;

	reaction_r_0326=compartment_cell*reaction_r_0326_Vmax*(x(124)-x(85)*x(136)/reaction_r_0326_Keq)/reaction_r_0326_Km0589/(1+x(124)/reaction_r_0326_Km0589+(1+x(85)/reaction_r_0326_Km0419)*(1+x(136)/reaction_r_0326_Km0654)-1);

% Reaction: id = r_0330, name = deoxyguanylate kinase (dGMP:ATP)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0330_FLUX_VALUE=9.10860206737184E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0330_Vmax=0.00127520428943206;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0330_Keq=2.0;
	% Local Parameter:   id =  Km0394, name = Km0394
	reaction_r_0330_Km0394=0.1;
	% Local Parameter:   id =  Km0613, name = Km0613
	reaction_r_0330_Km0613=0.1;
	% Local Parameter:   id =  Km0434, name = Km0434
	reaction_r_0330_Km0434=0.1;
	% Local Parameter:   id =  Km0615, name = Km0615
	reaction_r_0330_Km0615=0.1;

	reaction_r_0330=compartment_cell*reaction_r_0330_Vmax*(x(81)*x(127)-x(91)*x(128)/reaction_r_0330_Keq)/(reaction_r_0330_Km0394*reaction_r_0330_Km0613)/((1+x(81)/reaction_r_0330_Km0394)*(1+x(127)/reaction_r_0330_Km0613)+(1+x(91)/reaction_r_0330_Km0434)*(1+x(128)/reaction_r_0330_Km0615)-1);

% Reaction: id = r_0336, name = diacylglycerol acyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0336_FLUX_VALUE=4.80554664340808E-4;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0336_Vmax=0.00672776530077131;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0336_Keq=2.0;
	% Local Parameter:   id =  Km0529, name = Km0529
	reaction_r_0336_Km0529=0.1;
	% Local Parameter:   id =  Km1524, name = Km1524
	reaction_r_0336_Km1524=0.1;
	% Local Parameter:   id =  Km0380, name = Km0380
	reaction_r_0336_Km0380=0.1;
	% Local Parameter:   id =  Km0619, name = Km0619
	reaction_r_0336_Km0619=0.1;

	reaction_r_0336=compartment_cell*reaction_r_0336_Vmax*(x(106)*x(266)-x(77)*x(129)/reaction_r_0336_Keq)/(reaction_r_0336_Km0529*reaction_r_0336_Km1524)/((1+x(106)/reaction_r_0336_Km0529)*(1+x(266)/reaction_r_0336_Km1524)+(1+x(77)/reaction_r_0336_Km0380)*(1+x(129)/reaction_r_0336_Km0619)-1);

% Reaction: id = r_0337, name = diacylglycerol pyrophosphate phosphatase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0337_FLUX_VALUE=9.19873934027924E-6;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0337_Vmax=9.19873934027924E-5;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0337_Keq=0.2;
	% Local Parameter:   id =  Km1331, name = Km1331
	reaction_r_0337_Km1331=0.1;
	% Local Parameter:   id =  Km0619, name = Km0619
	reaction_r_0337_Km0619=0.1;
	% Local Parameter:   id =  Km1322, name = Km1322
	reaction_r_0337_Km1322=0.1;

	reaction_r_0337=compartment_cell*reaction_r_0337_Vmax*(x(235)-x(129)*x(234)/reaction_r_0337_Keq)/reaction_r_0337_Km1331/(1+x(235)/reaction_r_0337_Km1331+(1+x(129)/reaction_r_0337_Km0619)*(1+x(234)/reaction_r_0337_Km1322)-1);

% Reaction: id = r_0339, name = dihydoorotic acid dehydrogenase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0339_FLUX_VALUE=0.00419754745533934;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0339_Vmax=0.0587656643747508;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0339_Keq=2.0;
	% Local Parameter:   id =  Km0061, name = Km0061
	reaction_r_0339_Km0061=0.1;
	% Local Parameter:   id =  Km1275, name = Km1275
	reaction_r_0339_Km1275=0.1;
	% Local Parameter:   id =  Km0837, name = Km0837
	reaction_r_0339_Km0837=0.1;
	% Local Parameter:   id =  Km1269, name = Km1269
	reaction_r_0339_Km1269=0.1;

	reaction_r_0339=compartment_cell*reaction_r_0339_Vmax*(x(14)*x(230)-x(164)*x(227)/reaction_r_0339_Keq)/(reaction_r_0339_Km0061*reaction_r_0339_Km1275)/((1+x(14)/reaction_r_0339_Km0061)*(1+x(230)/reaction_r_0339_Km1275)+(1+x(164)/reaction_r_0339_Km0837)*(1+x(227)/reaction_r_0339_Km1269)-1);

% Reaction: id = r_0340, name = dihydroceramidase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0340_FLUX_VALUE=1.02210849818021E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0340_Vmax=1.02210849818021E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0340_Keq=20.0;
	% Local Parameter:   id =  Km1084, name = Km1084
	reaction_r_0340_Km1084=0.1;
	% Local Parameter:   id =  Km1445, name = Km1445
	reaction_r_0340_Km1445=0.1;
	% Local Parameter:   id =  Km0475, name = Km0475
	reaction_r_0340_Km0475=0.1;

	reaction_r_0340=compartment_cell*reaction_r_0340_Vmax*(x(206)*x(257)-x(98)/reaction_r_0340_Keq)/(reaction_r_0340_Km1084*reaction_r_0340_Km1445)/((1+x(206)/reaction_r_0340_Km1084)*(1+x(257)/reaction_r_0340_Km1445)+1+x(98)/reaction_r_0340_Km0475-1);

% Reaction: id = r_0344, name = dihydrofolate reductase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0344_FLUX_VALUE=1.36629031089924E-4;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0344_Vmax=0.00191280643525894;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0344_Keq=2.0;
	% Local Parameter:   id =  Km0625, name = Km0625
	reaction_r_0344_Km0625=0.1;
	% Local Parameter:   id =  Km1212, name = Km1212
	reaction_r_0344_Km1212=0.1;
	% Local Parameter:   id =  Km1207, name = Km1207
	reaction_r_0344_Km1207=0.1;
	% Local Parameter:   id =  Km1487, name = Km1487
	reaction_r_0344_Km1487=0.1;

	reaction_r_0344=compartment_cell*reaction_r_0344_Vmax*(x(130)*x(222)-x(221)*x(263)/reaction_r_0344_Keq)/(reaction_r_0344_Km0625*reaction_r_0344_Km1212)/((1+x(130)/reaction_r_0344_Km0625)*(1+x(222)/reaction_r_0344_Km1212)+(1+x(221)/reaction_r_0344_Km1207)*(1+x(263)/reaction_r_0344_Km1487)-1);

% Reaction: id = r_0349, name = dihydroorotase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0349_FLUX_VALUE=0.00419754745504612;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0349_Vmax=0.0251852847302767;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0349_Keq=2.0;
	% Local Parameter:   id =  Km1194, name = Km1194
	reaction_r_0349_Km1194=0.1;
	% Local Parameter:   id =  Km0061, name = Km0061
	reaction_r_0349_Km0061=0.1;

	reaction_r_0349=compartment_cell*reaction_r_0349_Vmax*(x(218)-x(14)/reaction_r_0349_Keq)/reaction_r_0349_Km1194/(1+x(218)/reaction_r_0349_Km1194+1+x(14)/reaction_r_0349_Km0061-1);

% Reaction: id = r_0352, name = dihydroxy-acid dehydratase (2,3-dihydroxy-3-methylbutanoate)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0352_FLUX_VALUE=0.0212913573443156;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0352_Vmax=0.127748144065894;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0352_Keq=2.0;
	% Local Parameter:   id =  Km0016, name = Km0016
	reaction_r_0352_Km0016=0.1;
	% Local Parameter:   id =  Km0232, name = Km0232
	reaction_r_0352_Km0232=0.1;

	reaction_r_0352=compartment_cell*reaction_r_0352_Vmax*(x(7)-x(47)/reaction_r_0352_Keq)/reaction_r_0352_Km0016/(1+x(7)/reaction_r_0352_Km0016+1+x(47)/reaction_r_0352_Km0232-1);

% Reaction: id = r_0353, name = dihydroxy-acid dehydratase (2,3-dihydroxy-3-methylpentanoate)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0353_FLUX_VALUE=0.00965062714996943;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0353_Vmax=0.0579037628998166;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0353_Keq=2.0;
	% Local Parameter:   id =  Km0008, name = Km0008
	reaction_r_0353_Km0008=0.1;
	% Local Parameter:   id =  Km0056, name = Km0056
	reaction_r_0353_Km0056=0.1;

	reaction_r_0353=compartment_cell*reaction_r_0353_Vmax*(x(3)-x(13)/reaction_r_0353_Keq)/reaction_r_0353_Km0008/(1+x(3)/reaction_r_0353_Km0008+1+x(13)/reaction_r_0353_Km0056-1);

% Reaction: id = r_0355, name = dimethylallyltranstransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0355_FLUX_VALUE=5.19949368301002E-4;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0355_Vmax=0.00727929115621403;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0355_Keq=2.0;
	% Local Parameter:   id =  Km0943, name = Km0943
	reaction_r_0355_Km0943=0.1;
	% Local Parameter:   id =  Km1376, name = Km1376
	reaction_r_0355_Km1376=0.1;
	% Local Parameter:   id =  Km0633, name = Km0633
	reaction_r_0355_Km0633=0.1;
	% Local Parameter:   id =  Km0745, name = Km0745
	reaction_r_0355_Km0745=0.1;

	reaction_r_0355=compartment_cell*reaction_r_0355_Vmax*(x(170)*x(245)-x(132)*x(150)/reaction_r_0355_Keq)/(reaction_r_0355_Km0943*reaction_r_0355_Km1376)/((1+x(170)/reaction_r_0355_Km0943)*(1+x(245)/reaction_r_0355_Km1376)+(1+x(132)/reaction_r_0355_Km0633)*(1+x(150)/reaction_r_0355_Km0745)-1);

% Reaction: id = r_0361, name = dolichyl-phosphate D-mannosyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0361_FLUX_VALUE=0.0306618317263326;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0361_Vmax=0.429265644168656;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0361_Keq=2.0;
	% Local Parameter:   id =  Km0645, name = Km0645
	reaction_r_0361_Km0645=0.1;
	% Local Parameter:   id =  Km0743, name = Km0743
	reaction_r_0361_Km0743=0.1;
	% Local Parameter:   id =  Km0644, name = Km0644
	reaction_r_0361_Km0644=0.1;
	% Local Parameter:   id =  Km0739, name = Km0739
	reaction_r_0361_Km0739=0.1;

	reaction_r_0361=compartment_cell*reaction_r_0361_Vmax*(x(134)*x(149)-x(133)*x(148)/reaction_r_0361_Keq)/(reaction_r_0361_Km0645*reaction_r_0361_Km0743)/((1+x(134)/reaction_r_0361_Km0645)*(1+x(149)/reaction_r_0361_Km0743)+(1+x(133)/reaction_r_0361_Km0644)*(1+x(148)/reaction_r_0361_Km0739)-1);

% Reaction: id = r_0362, name = dolichyl-phosphate-mannose--protein mannosyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0362_FLUX_VALUE=0.0306618317263326;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0362_Vmax=0.306618317263326;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0362_Keq=0.2;
	% Local Parameter:   id =  Km0644, name = Km0644
	reaction_r_0362_Km0644=0.1;
	% Local Parameter:   id =  Km0645, name = Km0645
	reaction_r_0362_Km0645=0.1;
	% Local Parameter:   id =  Km1107, name = Km1107
	reaction_r_0362_Km1107=0.1;

	reaction_r_0362=compartment_cell*reaction_r_0362_Vmax*(x(133)-x(134)*x(209)/reaction_r_0362_Keq)/reaction_r_0362_Km0644/(1+x(133)/reaction_r_0362_Km0644+(1+x(134)/reaction_r_0362_Km0645)*(1+x(209)/reaction_r_0362_Km1107)-1);

% Reaction: id = r_0364, name = dUTP diphosphatase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0364_FLUX_VALUE=1.33265490575614E-4;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0364_Vmax=0.00133265490575614;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0364_Keq=0.2;
	% Local Parameter:   id =  Km0656, name = Km0656
	reaction_r_0364_Km0656=0.1;
	% Local Parameter:   id =  Km0633, name = Km0633
	reaction_r_0364_Km0633=0.1;
	% Local Parameter:   id =  Km0654, name = Km0654
	reaction_r_0364_Km0654=0.1;

	reaction_r_0364=compartment_cell*reaction_r_0364_Vmax*(x(137)-x(132)*x(136)/reaction_r_0364_Keq)/reaction_r_0364_Km0656/(1+x(137)/reaction_r_0364_Km0656+(1+x(132)/reaction_r_0364_Km0633)*(1+x(136)/reaction_r_0364_Km0654)-1);

% Reaction: id = r_0366, name = enolase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0366_FLUX_VALUE=0.231348466852626;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0366_Vmax=1.38809080111576;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0366_Keq=2.0;
	% Local Parameter:   id =  Km0188, name = Km0188
	reaction_r_0366_Km0188=0.1;
	% Local Parameter:   id =  Km1360, name = Km1360
	reaction_r_0366_Km1360=0.1;

	reaction_r_0366=compartment_cell*reaction_r_0366_Vmax*(x(37)-x(241)/reaction_r_0366_Keq)/reaction_r_0366_Km0188/(1+x(37)/reaction_r_0366_Km0188+1+x(241)/reaction_r_0366_Km1360-1);

% Reaction: id = r_0386, name = fatty acid synthase (n-C12:0)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0386_FLUX_VALUE=1.02210849110579E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0386_Vmax=9.60781981639442E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0386_Keq=0.2;
	% Local Parameter:   id =  Km0595, name = Km0595
	reaction_r_0386_Km0595=0.1;
	% Local Parameter:   id =  Km1101, name = Km1101
	reaction_r_0386_Km1101=0.1;
	% Local Parameter:   id =  Km1212, name = Km1212
	reaction_r_0386_Km1212=0.1;
	% Local Parameter:   id =  Km0456, name = Km0456
	reaction_r_0386_Km0456=0.1;
	% Local Parameter:   id =  Km0529, name = Km0529
	reaction_r_0386_Km0529=0.1;
	% Local Parameter:   id =  Km1065, name = Km1065
	reaction_r_0386_Km1065=0.1;
	% Local Parameter:   id =  Km1207, name = Km1207
	reaction_r_0386_Km1207=0.1;

	reaction_r_0386=compartment_cell*reaction_r_0386_Vmax*(x(125)*x(208)*x(222)^2-x(95)*x(106)*x(203)*x(221)^2/reaction_r_0386_Keq)/(reaction_r_0386_Km0595*reaction_r_0386_Km1101*reaction_r_0386_Km1212^2)/((1+x(125)/reaction_r_0386_Km0595)*(1+x(208)/reaction_r_0386_Km1101)*(1+x(222)/reaction_r_0386_Km1212)^2+(1+x(95)/reaction_r_0386_Km0456)*(1+x(106)/reaction_r_0386_Km0529)*(1+x(203)/reaction_r_0386_Km1065)*(1+x(221)/reaction_r_0386_Km1207)^2-1);

% Reaction: id = r_0387, name = fatty acid synthase (n-C14:0)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0387_FLUX_VALUE=1.02210846264081E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0387_Vmax=9.60781954882361E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0387_Keq=0.2;
	% Local Parameter:   id =  Km1065, name = Km1065
	reaction_r_0387_Km1065=0.1;
	% Local Parameter:   id =  Km1101, name = Km1101
	reaction_r_0387_Km1101=0.1;
	% Local Parameter:   id =  Km1212, name = Km1212
	reaction_r_0387_Km1212=0.1;
	% Local Parameter:   id =  Km0456, name = Km0456
	reaction_r_0387_Km0456=0.1;
	% Local Parameter:   id =  Km0529, name = Km0529
	reaction_r_0387_Km0529=0.1;
	% Local Parameter:   id =  Km1161, name = Km1161
	reaction_r_0387_Km1161=0.1;
	% Local Parameter:   id =  Km1207, name = Km1207
	reaction_r_0387_Km1207=0.1;

	reaction_r_0387=compartment_cell*reaction_r_0387_Vmax*(x(203)*x(208)*x(222)^2-x(95)*x(106)*x(212)*x(221)^2/reaction_r_0387_Keq)/(reaction_r_0387_Km1065*reaction_r_0387_Km1101*reaction_r_0387_Km1212^2)/((1+x(203)/reaction_r_0387_Km1065)*(1+x(208)/reaction_r_0387_Km1101)*(1+x(222)/reaction_r_0387_Km1212)^2+(1+x(95)/reaction_r_0387_Km0456)*(1+x(106)/reaction_r_0387_Km0529)*(1+x(212)/reaction_r_0387_Km1161)*(1+x(221)/reaction_r_0387_Km1207)^2-1);

% Reaction: id = r_0389, name = fatty acid synthase (n-C16:0)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0389_FLUX_VALUE=1.02210846264081E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0389_Vmax=9.60781954882362E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0389_Keq=0.2;
	% Local Parameter:   id =  Km1101, name = Km1101
	reaction_r_0389_Km1101=0.1;
	% Local Parameter:   id =  Km1161, name = Km1161
	reaction_r_0389_Km1161=0.1;
	% Local Parameter:   id =  Km1212, name = Km1212
	reaction_r_0389_Km1212=0.1;
	% Local Parameter:   id =  Km0456, name = Km0456
	reaction_r_0389_Km0456=0.1;
	% Local Parameter:   id =  Km0529, name = Km0529
	reaction_r_0389_Km0529=0.1;
	% Local Parameter:   id =  Km1207, name = Km1207
	reaction_r_0389_Km1207=0.1;
	% Local Parameter:   id =  Km1286, name = Km1286
	reaction_r_0389_Km1286=0.1;

	reaction_r_0389=compartment_cell*reaction_r_0389_Vmax*(x(208)*x(212)*x(222)^2-x(95)*x(106)*x(221)^2*x(231)/reaction_r_0389_Keq)/(reaction_r_0389_Km1101*reaction_r_0389_Km1161*reaction_r_0389_Km1212^2)/((1+x(208)/reaction_r_0389_Km1101)*(1+x(212)/reaction_r_0389_Km1161)*(1+x(222)/reaction_r_0389_Km1212)^2+(1+x(95)/reaction_r_0389_Km0456)*(1+x(106)/reaction_r_0389_Km0529)*(1+x(221)/reaction_r_0389_Km1207)^2*(1+x(231)/reaction_r_0389_Km1286)-1);

% Reaction: id = r_0391, name = fatty acid synthase (n-C18:0)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0391_FLUX_VALUE=1.02210846264081E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0391_Vmax=9.60781954882362E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0391_Keq=0.2;
	% Local Parameter:   id =  Km1101, name = Km1101
	reaction_r_0391_Km1101=0.1;
	% Local Parameter:   id =  Km1212, name = Km1212
	reaction_r_0391_Km1212=0.1;
	% Local Parameter:   id =  Km1286, name = Km1286
	reaction_r_0391_Km1286=0.1;
	% Local Parameter:   id =  Km0456, name = Km0456
	reaction_r_0391_Km0456=0.1;
	% Local Parameter:   id =  Km0529, name = Km0529
	reaction_r_0391_Km0529=0.1;
	% Local Parameter:   id =  Km1207, name = Km1207
	reaction_r_0391_Km1207=0.1;
	% Local Parameter:   id =  Km1449, name = Km1449
	reaction_r_0391_Km1449=0.1;

	reaction_r_0391=compartment_cell*reaction_r_0391_Vmax*(x(208)*x(222)^2*x(231)-x(95)*x(106)*x(221)^2*x(259)/reaction_r_0391_Keq)/(reaction_r_0391_Km1101*reaction_r_0391_Km1212^2*reaction_r_0391_Km1286)/((1+x(208)/reaction_r_0391_Km1101)*(1+x(222)/reaction_r_0391_Km1212)^2*(1+x(231)/reaction_r_0391_Km1286)+(1+x(95)/reaction_r_0391_Km0456)*(1+x(106)/reaction_r_0391_Km0529)*(1+x(221)/reaction_r_0391_Km1207)^2*(1+x(259)/reaction_r_0391_Km1449)-1);

% Reaction: id = r_0393, name = fatty acid synthase (n-C24:0), lumped reaction	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0393_FLUX_VALUE=2.04421699980673E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0393_Vmax=0.37674919306438;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0393_Keq=0.002;
	% Local Parameter:   id =  Km1101, name = Km1101
	reaction_r_0393_Km1101=0.1;
	% Local Parameter:   id =  Km1212, name = Km1212
	reaction_r_0393_Km1212=0.1;
	% Local Parameter:   id =  Km1449, name = Km1449
	reaction_r_0393_Km1449=0.1;
	% Local Parameter:   id =  Km0456, name = Km0456
	reaction_r_0393_Km0456=0.1;
	% Local Parameter:   id =  Km0529, name = Km0529
	reaction_r_0393_Km0529=0.1;
	% Local Parameter:   id =  Km1084, name = Km1084
	reaction_r_0393_Km1084=0.1;
	% Local Parameter:   id =  Km1207, name = Km1207
	reaction_r_0393_Km1207=0.1;

	reaction_r_0393=compartment_cell*reaction_r_0393_Vmax*(x(208)^3*x(222)^6*x(259)-x(95)^3*x(106)^3*x(206)*x(221)^6/reaction_r_0393_Keq)/(reaction_r_0393_Km1101^3*reaction_r_0393_Km1212^6*reaction_r_0393_Km1449)/((1+x(208)/reaction_r_0393_Km1101)^3*(1+x(222)/reaction_r_0393_Km1212)^6*(1+x(259)/reaction_r_0393_Km1449)+(1+x(95)/reaction_r_0393_Km0456)^3*(1+x(106)/reaction_r_0393_Km0529)^3*(1+x(206)/reaction_r_0393_Km1084)*(1+x(221)/reaction_r_0393_Km1207)^6-1);

% Reaction: id = r_0397, name = fatty acyl-CoA synthase (n-C10:0CoA)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0397_FLUX_VALUE=4.0884339927971E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0397_Vmax=0.00384312795322927;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0397_Keq=0.2;
	% Local Parameter:   id =  Km1101, name = Km1101
	reaction_r_0397_Km1101=0.1;
	% Local Parameter:   id =  Km1212, name = Km1212
	reaction_r_0397_Km1212=0.1;
	% Local Parameter:   id =  Km1255, name = Km1255
	reaction_r_0397_Km1255=0.1;
	% Local Parameter:   id =  Km0456, name = Km0456
	reaction_r_0397_Km0456=0.1;
	% Local Parameter:   id =  Km0529, name = Km0529
	reaction_r_0397_Km0529=0.1;
	% Local Parameter:   id =  Km0602, name = Km0602
	reaction_r_0397_Km0602=0.1;
	% Local Parameter:   id =  Km1207, name = Km1207
	reaction_r_0397_Km1207=0.1;

	reaction_r_0397=compartment_cell*reaction_r_0397_Vmax*(x(208)*x(222)^2*x(225)-x(95)*x(106)*x(126)*x(221)^2/reaction_r_0397_Keq)/(reaction_r_0397_Km1101*reaction_r_0397_Km1212^2*reaction_r_0397_Km1255)/((1+x(208)/reaction_r_0397_Km1101)*(1+x(222)/reaction_r_0397_Km1212)^2*(1+x(225)/reaction_r_0397_Km1255)+(1+x(95)/reaction_r_0397_Km0456)*(1+x(106)/reaction_r_0397_Km0529)*(1+x(126)/reaction_r_0397_Km0602)*(1+x(221)/reaction_r_0397_Km1207)^2-1);

% Reaction: id = r_0398, name = fatty acyl-CoA synthase (n-C8:0CoA), lumped reaction	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0398_FLUX_VALUE=4.08843399368032E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0398_Vmax=0.753498385035283;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0398_Keq=0.002;
	% Local Parameter:   id =  Km0373, name = Km0373
	reaction_r_0398_Km0373=0.1;
	% Local Parameter:   id =  Km1101, name = Km1101
	reaction_r_0398_Km1101=0.1;
	% Local Parameter:   id =  Km1212, name = Km1212
	reaction_r_0398_Km1212=0.1;
	% Local Parameter:   id =  Km0456, name = Km0456
	reaction_r_0398_Km0456=0.1;
	% Local Parameter:   id =  Km0529, name = Km0529
	reaction_r_0398_Km0529=0.1;
	% Local Parameter:   id =  Km1207, name = Km1207
	reaction_r_0398_Km1207=0.1;
	% Local Parameter:   id =  Km1255, name = Km1255
	reaction_r_0398_Km1255=0.1;

	reaction_r_0398=compartment_cell*reaction_r_0398_Vmax*(x(76)*x(208)^3*x(222)^6-x(95)^3*x(106)^3*x(221)^6*x(225)/reaction_r_0398_Keq)/(reaction_r_0398_Km0373*reaction_r_0398_Km1101^3*reaction_r_0398_Km1212^6)/((1+x(76)/reaction_r_0398_Km0373)*(1+x(208)/reaction_r_0398_Km1101)^3*(1+x(222)/reaction_r_0398_Km1212)^6+(1+x(95)/reaction_r_0398_Km0456)^3*(1+x(106)/reaction_r_0398_Km0529)^3*(1+x(221)/reaction_r_0398_Km1207)^6*(1+x(225)/reaction_r_0398_Km1255)-1);

% Reaction: id = r_0399, name = fatty-acid--CoA ligase (decanoate)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0399_FLUX_VALUE=1.02210849110579E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0399_Vmax=3.06632547331737E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0399_Keq=2.0;
	% Local Parameter:   id =  Km0423, name = Km0423
	reaction_r_0399_Km0423=0.1;
	% Local Parameter:   id =  Km0602, name = Km0602
	reaction_r_0399_Km0602=0.1;
	% Local Parameter:   id =  Km0633, name = Km0633
	reaction_r_0399_Km0633=0.1;
	% Local Parameter:   id =  Km0434, name = Km0434
	reaction_r_0399_Km0434=0.1;
	% Local Parameter:   id =  Km0529, name = Km0529
	reaction_r_0399_Km0529=0.1;
	% Local Parameter:   id =  Km0595, name = Km0595
	reaction_r_0399_Km0595=0.1;

	reaction_r_0399=compartment_cell*reaction_r_0399_Vmax*(x(86)*x(126)*x(132)-x(91)*x(106)*x(125)/reaction_r_0399_Keq)/(reaction_r_0399_Km0423*reaction_r_0399_Km0602*reaction_r_0399_Km0633)/((1+x(86)/reaction_r_0399_Km0423)*(1+x(126)/reaction_r_0399_Km0602)*(1+x(132)/reaction_r_0399_Km0633)+(1+x(91)/reaction_r_0399_Km0434)*(1+x(106)/reaction_r_0399_Km0529)*(1+x(125)/reaction_r_0399_Km0595)-1);

% Reaction: id = r_0400, name = fatty-acid--CoA ligase (dodecanoate)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0400_FLUX_VALUE=1.32100771565048E-12;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0400_Vmax=3.96302314695144E-11;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0400_Keq=2.0;
	% Local Parameter:   id =  Km0423, name = Km0423
	reaction_r_0400_Km0423=0.1;
	% Local Parameter:   id =  Km0633, name = Km0633
	reaction_r_0400_Km0633=0.1;
	% Local Parameter:   id =  Km1073, name = Km1073
	reaction_r_0400_Km1073=0.1;
	% Local Parameter:   id =  Km0434, name = Km0434
	reaction_r_0400_Km0434=0.1;
	% Local Parameter:   id =  Km0529, name = Km0529
	reaction_r_0400_Km0529=0.1;
	% Local Parameter:   id =  Km1065, name = Km1065
	reaction_r_0400_Km1065=0.1;

	reaction_r_0400=compartment_cell*reaction_r_0400_Vmax*(x(86)*x(132)*x(204)-x(91)*x(106)*x(203)/reaction_r_0400_Keq)/(reaction_r_0400_Km0423*reaction_r_0400_Km0633*reaction_r_0400_Km1073)/((1+x(86)/reaction_r_0400_Km0423)*(1+x(132)/reaction_r_0400_Km0633)*(1+x(204)/reaction_r_0400_Km1073)+(1+x(91)/reaction_r_0400_Km0434)*(1+x(106)/reaction_r_0400_Km0529)*(1+x(203)/reaction_r_0400_Km1065)-1);

% Reaction: id = r_0407, name = fatty-acid--CoA ligase (octadecanoate)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0407_FLUX_VALUE=1.02210853716592E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0407_Vmax=3.06632561149776E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0407_Keq=2.0;
	% Local Parameter:   id =  Km0423, name = Km0423
	reaction_r_0407_Km0423=0.1;
	% Local Parameter:   id =  Km0633, name = Km0633
	reaction_r_0407_Km0633=0.1;
	% Local Parameter:   id =  Km1454, name = Km1454
	reaction_r_0407_Km1454=0.1;
	% Local Parameter:   id =  Km0434, name = Km0434
	reaction_r_0407_Km0434=0.1;
	% Local Parameter:   id =  Km0529, name = Km0529
	reaction_r_0407_Km0529=0.1;
	% Local Parameter:   id =  Km1449, name = Km1449
	reaction_r_0407_Km1449=0.1;

	reaction_r_0407=compartment_cell*reaction_r_0407_Vmax*(x(86)*x(132)*x(260)-x(91)*x(106)*x(259)/reaction_r_0407_Keq)/(reaction_r_0407_Km0423*reaction_r_0407_Km0633*reaction_r_0407_Km1454)/((1+x(86)/reaction_r_0407_Km0423)*(1+x(132)/reaction_r_0407_Km0633)*(1+x(260)/reaction_r_0407_Km1454)+(1+x(91)/reaction_r_0407_Km0434)*(1+x(106)/reaction_r_0407_Km0529)*(1+x(259)/reaction_r_0407_Km1449)-1);

% Reaction: id = r_0432, name = fatty-acyl-CoA synthase (n-C12:0CoA)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0432_FLUX_VALUE=3.06632550169132E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0432_Vmax=0.00288234597158984;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0432_Keq=0.2;
	% Local Parameter:   id =  Km0602, name = Km0602
	reaction_r_0432_Km0602=0.1;
	% Local Parameter:   id =  Km1101, name = Km1101
	reaction_r_0432_Km1101=0.1;
	% Local Parameter:   id =  Km1212, name = Km1212
	reaction_r_0432_Km1212=0.1;
	% Local Parameter:   id =  Km0456, name = Km0456
	reaction_r_0432_Km0456=0.1;
	% Local Parameter:   id =  Km0529, name = Km0529
	reaction_r_0432_Km0529=0.1;
	% Local Parameter:   id =  Km1073, name = Km1073
	reaction_r_0432_Km1073=0.1;
	% Local Parameter:   id =  Km1207, name = Km1207
	reaction_r_0432_Km1207=0.1;

	reaction_r_0432=compartment_cell*reaction_r_0432_Vmax*(x(126)*x(208)*x(222)^2-x(95)*x(106)*x(204)*x(221)^2/reaction_r_0432_Keq)/(reaction_r_0432_Km0602*reaction_r_0432_Km1101*reaction_r_0432_Km1212^2)/((1+x(126)/reaction_r_0432_Km0602)*(1+x(208)/reaction_r_0432_Km1101)*(1+x(222)/reaction_r_0432_Km1212)^2+(1+x(95)/reaction_r_0432_Km0456)*(1+x(106)/reaction_r_0432_Km0529)*(1+x(204)/reaction_r_0432_Km1073)*(1+x(221)/reaction_r_0432_Km1207)^2-1);

% Reaction: id = r_0433, name = fatty-acyl-CoA synthase (n-C14:0CoA)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0433_FLUX_VALUE=3.06632551696157E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0433_Vmax=0.00288234598594387;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0433_Keq=0.2;
	% Local Parameter:   id =  Km1073, name = Km1073
	reaction_r_0433_Km1073=0.1;
	% Local Parameter:   id =  Km1101, name = Km1101
	reaction_r_0433_Km1101=0.1;
	% Local Parameter:   id =  Km1212, name = Km1212
	reaction_r_0433_Km1212=0.1;
	% Local Parameter:   id =  Km0456, name = Km0456
	reaction_r_0433_Km0456=0.1;
	% Local Parameter:   id =  Km0529, name = Km0529
	reaction_r_0433_Km0529=0.1;
	% Local Parameter:   id =  Km1176, name = Km1176
	reaction_r_0433_Km1176=0.1;
	% Local Parameter:   id =  Km1207, name = Km1207
	reaction_r_0433_Km1207=0.1;

	reaction_r_0433=compartment_cell*reaction_r_0433_Vmax*(x(204)*x(208)*x(222)^2-x(95)*x(106)*x(213)*x(221)^2/reaction_r_0433_Keq)/(reaction_r_0433_Km1073*reaction_r_0433_Km1101*reaction_r_0433_Km1212^2)/((1+x(204)/reaction_r_0433_Km1073)*(1+x(208)/reaction_r_0433_Km1101)*(1+x(222)/reaction_r_0433_Km1212)^2+(1+x(95)/reaction_r_0433_Km0456)*(1+x(106)/reaction_r_0433_Km0529)*(1+x(213)/reaction_r_0433_Km1176)*(1+x(221)/reaction_r_0433_Km1207)^2-1);

% Reaction: id = r_0434, name = fatty-acyl-CoA synthase (n-C16:0CoA)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0434_FLUX_VALUE=3.06632551696157E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0434_Vmax=0.00288234598594388;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0434_Keq=0.2;
	% Local Parameter:   id =  Km1101, name = Km1101
	reaction_r_0434_Km1101=0.1;
	% Local Parameter:   id =  Km1176, name = Km1176
	reaction_r_0434_Km1176=0.1;
	% Local Parameter:   id =  Km1212, name = Km1212
	reaction_r_0434_Km1212=0.1;
	% Local Parameter:   id =  Km0456, name = Km0456
	reaction_r_0434_Km0456=0.1;
	% Local Parameter:   id =  Km0529, name = Km0529
	reaction_r_0434_Km0529=0.1;
	% Local Parameter:   id =  Km1207, name = Km1207
	reaction_r_0434_Km1207=0.1;
	% Local Parameter:   id =  Km1302, name = Km1302
	reaction_r_0434_Km1302=0.1;

	reaction_r_0434=compartment_cell*reaction_r_0434_Vmax*(x(208)*x(213)*x(222)^2-x(95)*x(106)*x(221)^2*x(232)/reaction_r_0434_Keq)/(reaction_r_0434_Km1101*reaction_r_0434_Km1176*reaction_r_0434_Km1212^2)/((1+x(208)/reaction_r_0434_Km1101)*(1+x(213)/reaction_r_0434_Km1176)*(1+x(222)/reaction_r_0434_Km1212)^2+(1+x(95)/reaction_r_0434_Km0456)*(1+x(106)/reaction_r_0434_Km0529)*(1+x(221)/reaction_r_0434_Km1207)^2*(1+x(232)/reaction_r_0434_Km1302)-1);

% Reaction: id = r_0435, name = fatty-acyl-CoA synthase (n-C18:0CoA)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0435_FLUX_VALUE=1.0221085177611E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0435_Vmax=9.60782006695434E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0435_Keq=0.2;
	% Local Parameter:   id =  Km1101, name = Km1101
	reaction_r_0435_Km1101=0.1;
	% Local Parameter:   id =  Km1212, name = Km1212
	reaction_r_0435_Km1212=0.1;
	% Local Parameter:   id =  Km1302, name = Km1302
	reaction_r_0435_Km1302=0.1;
	% Local Parameter:   id =  Km0456, name = Km0456
	reaction_r_0435_Km0456=0.1;
	% Local Parameter:   id =  Km0529, name = Km0529
	reaction_r_0435_Km0529=0.1;
	% Local Parameter:   id =  Km1207, name = Km1207
	reaction_r_0435_Km1207=0.1;
	% Local Parameter:   id =  Km1454, name = Km1454
	reaction_r_0435_Km1454=0.1;

	reaction_r_0435=compartment_cell*reaction_r_0435_Vmax*(x(208)*x(222)^2*x(232)-x(95)*x(106)*x(221)^2*x(260)/reaction_r_0435_Keq)/(reaction_r_0435_Km1101*reaction_r_0435_Km1212^2*reaction_r_0435_Km1302)/((1+x(208)/reaction_r_0435_Km1101)*(1+x(222)/reaction_r_0435_Km1212)^2*(1+x(232)/reaction_r_0435_Km1302)+(1+x(95)/reaction_r_0435_Km0456)*(1+x(106)/reaction_r_0435_Km0529)*(1+x(221)/reaction_r_0435_Km1207)^2*(1+x(260)/reaction_r_0435_Km1454)-1);

% Reaction: id = r_0438, name = ferrocytochrome-c:oxygen oxidoreductase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0438_FLUX_VALUE=2.93389817698765;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0438_Vmax=275.786428636839;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0438_Keq=20.0;
	% Local Parameter:   id =  Km0710, name = Km0710
	reaction_r_0438_Km0710=0.1;
	% Local Parameter:   id =  Km1275, name = Km1275
	reaction_r_0438_Km1275=0.1;
	% Local Parameter:   id =  Km0709, name = Km0709
	reaction_r_0438_Km0709=0.1;

	reaction_r_0438=compartment_cell*reaction_r_0438_Vmax*(x(145)^4*x(230)-x(144)^4/reaction_r_0438_Keq)/(reaction_r_0438_Km0710^4*reaction_r_0438_Km1275)/((1+x(145)/reaction_r_0438_Km0710)^4*(1+x(230)/reaction_r_0438_Km1275)+(1+x(144)/reaction_r_0438_Km0709)^4-1);

% Reaction: id = r_0439, name = ferrocytochrome-c:oxygen oxidoreductase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0439_FLUX_VALUE=5.86779635397514;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0439_Vmax=176.033890619254;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0439_Keq=2.0;
	% Local Parameter:   id =  Km0709, name = Km0709
	reaction_r_0439_Km0709=0.1;
	% Local Parameter:   id =  Km1535, name = Km1535
	reaction_r_0439_Km1535=0.1;
	% Local Parameter:   id =  Km0710, name = Km0710
	reaction_r_0439_Km0710=0.1;
	% Local Parameter:   id =  Km1537, name = Km1537
	reaction_r_0439_Km1537=0.1;

	reaction_r_0439=compartment_cell*reaction_r_0439_Vmax*(x(144)^2*x(269)-x(145)^2*x(270)/reaction_r_0439_Keq)/(reaction_r_0439_Km0709^2*reaction_r_0439_Km1535)/((1+x(144)/reaction_r_0439_Km0709)^2*(1+x(269)/reaction_r_0439_Km1535)+(1+x(145)/reaction_r_0439_Km0710)^2*(1+x(270)/reaction_r_0439_Km1537)-1);

% Reaction: id = r_0446, name = formate-tetrahydrofolate ligase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0446_FLUX_VALUE=2.87562321404181;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0446_Vmax=86.2686964212543;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0446_Keq=2.0;
	% Local Parameter:   id =  Km0120, name = Km0120
	reaction_r_0446_Km0120=0.1;
	% Local Parameter:   id =  Km0394, name = Km0394
	reaction_r_0446_Km0394=0.1;
	% Local Parameter:   id =  Km1322, name = Km1322
	reaction_r_0446_Km1322=0.1;
	% Local Parameter:   id =  Km0434, name = Km0434
	reaction_r_0446_Km0434=0.1;
	% Local Parameter:   id =  Km0722, name = Km0722
	reaction_r_0446_Km0722=0.1;
	% Local Parameter:   id =  Km1487, name = Km1487
	reaction_r_0446_Km1487=0.1;

	reaction_r_0446=compartment_cell*reaction_r_0446_Vmax*(x(24)*x(81)*x(234)-x(91)*x(146)*x(263)/reaction_r_0446_Keq)/(reaction_r_0446_Km0120*reaction_r_0446_Km0394*reaction_r_0446_Km1322)/((1+x(24)/reaction_r_0446_Km0120)*(1+x(81)/reaction_r_0446_Km0394)*(1+x(234)/reaction_r_0446_Km1322)+(1+x(91)/reaction_r_0446_Km0434)*(1+x(146)/reaction_r_0446_Km0722)*(1+x(263)/reaction_r_0446_Km1487)-1);

% Reaction: id = r_0450, name = fructose-bisphosphate aldolase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0450_FLUX_VALUE=0.850573321329957;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0450_Vmax=8.50573321329957;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0450_Keq=0.2;
	% Local Parameter:   id =  Km0555, name = Km0555
	reaction_r_0450_Km0555=0.1;
	% Local Parameter:   id =  Km0629, name = Km0629
	reaction_r_0450_Km0629=0.1;
	% Local Parameter:   id =  Km0764, name = Km0764
	reaction_r_0450_Km0764=0.1;

	reaction_r_0450=compartment_cell*reaction_r_0450_Vmax*(x(111)-x(131)*x(156)/reaction_r_0450_Keq)/reaction_r_0450_Km0555/(1+x(111)/reaction_r_0450_Km0555+(1+x(131)/reaction_r_0450_Km0629)*(1+x(156)/reaction_r_0450_Km0764)-1);

% Reaction: id = r_0451, name = fumarase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0451_FLUX_VALUE=0.0142545827184152;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0451_Vmax=0.0855274963104912;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0451_Keq=2.0;
	% Local Parameter:   id =  Km0725, name = Km0725
	reaction_r_0451_Km0725=0.1;
	% Local Parameter:   id =  Km0066, name = Km0066
	reaction_r_0451_Km0066=0.1;

	reaction_r_0451=compartment_cell*reaction_r_0451_Vmax*(x(147)-x(15)/reaction_r_0451_Keq)/reaction_r_0451_Km0725/(1+x(147)/reaction_r_0451_Km0725+1+x(15)/reaction_r_0451_Km0066-1);

% Reaction: id = r_0462, name = geranyltranstransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0462_FLUX_VALUE=5.19949368301002E-4;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0462_Vmax=0.00727929115621403;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0462_Keq=2.0;
	% Local Parameter:   id =  Km0745, name = Km0745
	reaction_r_0462_Km0745=0.1;
	% Local Parameter:   id =  Km0943, name = Km0943
	reaction_r_0462_Km0943=0.1;
	% Local Parameter:   id =  Km0190, name = Km0190
	reaction_r_0462_Km0190=0.1;
	% Local Parameter:   id =  Km0633, name = Km0633
	reaction_r_0462_Km0633=0.1;

	reaction_r_0462=compartment_cell*reaction_r_0462_Vmax*(x(150)*x(170)-x(38)*x(132)/reaction_r_0462_Keq)/(reaction_r_0462_Km0745*reaction_r_0462_Km0943)/((1+x(150)/reaction_r_0462_Km0745)*(1+x(170)/reaction_r_0462_Km0943)+(1+x(38)/reaction_r_0462_Km0190)*(1+x(132)/reaction_r_0462_Km0633)-1);

% Reaction: id = r_0467, name = glucose-6-phosphate isomerase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0467_FLUX_VALUE=0.892327912279146;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0467_Vmax=5.35396747367488;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0467_Keq=2.0;
	% Local Parameter:   id =  Km0568, name = Km0568
	reaction_r_0467_Km0568=0.1;
	% Local Parameter:   id =  Km0557, name = Km0557
	reaction_r_0467_Km0557=0.1;

	reaction_r_0467=compartment_cell*reaction_r_0467_Vmax*(x(115)-x(112)/reaction_r_0467_Keq)/reaction_r_0467_Km0568/(1+x(115)/reaction_r_0467_Km0568+1+x(112)/reaction_r_0467_Km0557-1);

% Reaction: id = r_0470, name = glutamate dehydrogenase (NAD)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0470_FLUX_VALUE=0.812814651968887;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0470_Vmax=17.8819223433155;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0470_Keq=20.0;
	% Local Parameter:   id =  Km0180, name = Km0180
	reaction_r_0470_Km0180=0.1;
	% Local Parameter:   id =  Km0419, name = Km0419
	reaction_r_0470_Km0419=0.1;
	% Local Parameter:   id =  Km1203, name = Km1203
	reaction_r_0470_Km1203=0.1;
	% Local Parameter:   id =  Km0991, name = Km0991
	reaction_r_0470_Km0991=0.1;
	% Local Parameter:   id =  Km1198, name = Km1198
	reaction_r_0470_Km1198=0.1;

	reaction_r_0470=compartment_cell*reaction_r_0470_Vmax*(x(36)*x(85)*x(220)-x(182)*x(219)/reaction_r_0470_Keq)/(reaction_r_0470_Km0180*reaction_r_0470_Km0419*reaction_r_0470_Km1203)/((1+x(36)/reaction_r_0470_Km0180)*(1+x(85)/reaction_r_0470_Km0419)*(1+x(220)/reaction_r_0470_Km1203)+(1+x(182)/reaction_r_0470_Km0991)*(1+x(219)/reaction_r_0470_Km1198)-1);

% Reaction: id = r_0471, name = glutamate dehydrogenase (NADP)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0471_FLUX_VALUE=0.812814651968585;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0471_Vmax=17.8819223433089;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0471_Keq=20.0;
	% Local Parameter:   id =  Km0180, name = Km0180
	reaction_r_0471_Km0180=0.1;
	% Local Parameter:   id =  Km0419, name = Km0419
	reaction_r_0471_Km0419=0.1;
	% Local Parameter:   id =  Km1212, name = Km1212
	reaction_r_0471_Km1212=0.1;
	% Local Parameter:   id =  Km0991, name = Km0991
	reaction_r_0471_Km0991=0.1;
	% Local Parameter:   id =  Km1207, name = Km1207
	reaction_r_0471_Km1207=0.1;

	reaction_r_0471=compartment_cell*reaction_r_0471_Vmax*(x(36)*x(85)*x(222)-x(182)*x(221)/reaction_r_0471_Keq)/(reaction_r_0471_Km0180*reaction_r_0471_Km0419*reaction_r_0471_Km1212)/((1+x(36)/reaction_r_0471_Km0180)*(1+x(85)/reaction_r_0471_Km0419)*(1+x(222)/reaction_r_0471_Km1212)+(1+x(182)/reaction_r_0471_Km0991)*(1+x(221)/reaction_r_0471_Km1207)-1);

% Reaction: id = r_0476, name = glutamine synthetase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0476_FLUX_VALUE=0.0311388947598679;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0476_Vmax=0.934166842796037;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0476_Keq=2.0;
	% Local Parameter:   id =  Km0419, name = Km0419
	reaction_r_0476_Km0419=0.1;
	% Local Parameter:   id =  Km0434, name = Km0434
	reaction_r_0476_Km0434=0.1;
	% Local Parameter:   id =  Km0991, name = Km0991
	reaction_r_0476_Km0991=0.1;
	% Local Parameter:   id =  Km0394, name = Km0394
	reaction_r_0476_Km0394=0.1;
	% Local Parameter:   id =  Km0999, name = Km0999
	reaction_r_0476_Km0999=0.1;
	% Local Parameter:   id =  Km1322, name = Km1322
	reaction_r_0476_Km1322=0.1;

	reaction_r_0476=compartment_cell*reaction_r_0476_Vmax*(x(85)*x(91)*x(182)-x(81)*x(183)*x(234)/reaction_r_0476_Keq)/(reaction_r_0476_Km0419*reaction_r_0476_Km0434*reaction_r_0476_Km0991)/((1+x(85)/reaction_r_0476_Km0419)*(1+x(91)/reaction_r_0476_Km0434)*(1+x(182)/reaction_r_0476_Km0991)+(1+x(81)/reaction_r_0476_Km0394)*(1+x(183)/reaction_r_0476_Km0999)*(1+x(234)/reaction_r_0476_Km1322)-1);

% Reaction: id = r_0478, name = glutaminyl-tRNA synthetase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0478_FLUX_VALUE=0.00400019441014414;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0478_Vmax=0.120005832304324;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0478_Keq=2.0;
	% Local Parameter:   id =  Km0434, name = Km0434
	reaction_r_0478_Km0434=0.1;
	% Local Parameter:   id =  Km0999, name = Km0999
	reaction_r_0478_Km0999=0.1;
	% Local Parameter:   id =  Km1590, name = Km1590
	reaction_r_0478_Km1590=0.1;
	% Local Parameter:   id =  Km0423, name = Km0423
	reaction_r_0478_Km0423=0.1;
	% Local Parameter:   id =  Km0633, name = Km0633
	reaction_r_0478_Km0633=0.1;
	% Local Parameter:   id =  Km0747, name = Km0747
	reaction_r_0478_Km0747=0.1;

	reaction_r_0478=compartment_cell*reaction_r_0478_Vmax*(x(91)*x(183)*x(287)-x(86)*x(132)*x(151)/reaction_r_0478_Keq)/(reaction_r_0478_Km0434*reaction_r_0478_Km0999*reaction_r_0478_Km1590)/((1+x(91)/reaction_r_0478_Km0434)*(1+x(183)/reaction_r_0478_Km0999)*(1+x(287)/reaction_r_0478_Km1590)+(1+x(86)/reaction_r_0478_Km0423)*(1+x(132)/reaction_r_0478_Km0633)*(1+x(151)/reaction_r_0478_Km0747)-1);

% Reaction: id = r_0479, name = glutamyl-tRNA synthetase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0479_FLUX_VALUE=0.0114540671060863;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0479_Vmax=0.343622013182589;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0479_Keq=2.0;
	% Local Parameter:   id =  Km0434, name = Km0434
	reaction_r_0479_Km0434=0.1;
	% Local Parameter:   id =  Km0991, name = Km0991
	reaction_r_0479_Km0991=0.1;
	% Local Parameter:   id =  Km1591, name = Km1591
	reaction_r_0479_Km1591=0.1;
	% Local Parameter:   id =  Km0423, name = Km0423
	reaction_r_0479_Km0423=0.1;
	% Local Parameter:   id =  Km0633, name = Km0633
	reaction_r_0479_Km0633=0.1;
	% Local Parameter:   id =  Km0748, name = Km0748
	reaction_r_0479_Km0748=0.1;

	reaction_r_0479=compartment_cell*reaction_r_0479_Vmax*(x(91)*x(182)*x(288)-x(86)*x(132)*x(152)/reaction_r_0479_Keq)/(reaction_r_0479_Km0434*reaction_r_0479_Km0991*reaction_r_0479_Km1591)/((1+x(91)/reaction_r_0479_Km0434)*(1+x(182)/reaction_r_0479_Km0991)*(1+x(288)/reaction_r_0479_Km1591)+(1+x(86)/reaction_r_0479_Km0423)*(1+x(132)/reaction_r_0479_Km0633)*(1+x(152)/reaction_r_0479_Km0748)-1);

% Reaction: id = r_0481, name = glutathione oxidoreductase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0481_FLUX_VALUE=0.00209877372752306;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0481_Vmax=0.0461730220055073;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0481_Keq=0.2;
	% Local Parameter:   id =  Km0754, name = Km0754
	reaction_r_0481_Km0754=0.1;
	% Local Parameter:   id =  Km1212, name = Km1212
	reaction_r_0481_Km1212=0.1;
	% Local Parameter:   id =  Km0750, name = Km0750
	reaction_r_0481_Km0750=0.1;
	% Local Parameter:   id =  Km1207, name = Km1207
	reaction_r_0481_Km1207=0.1;

	reaction_r_0481=compartment_cell*reaction_r_0481_Vmax*(x(154)*x(222)-x(153)^2*x(221)/reaction_r_0481_Keq)/(reaction_r_0481_Km0754*reaction_r_0481_Km1212)/((1+x(154)/reaction_r_0481_Km0754)*(1+x(222)/reaction_r_0481_Km1212)+(1+x(153)/reaction_r_0481_Km0750)^2*(1+x(221)/reaction_r_0481_Km1207)-1);

% Reaction: id = r_0483, name = glutathione peridoxase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0483_FLUX_VALUE=0.00209877372752306;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0483_Vmax=0.0377779270954151;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0483_Keq=200.0;
	% Local Parameter:   id =  Km0750, name = Km0750
	reaction_r_0483_Km0750=0.1;
	% Local Parameter:   id =  Km0837, name = Km0837
	reaction_r_0483_Km0837=0.1;
	% Local Parameter:   id =  Km0754, name = Km0754
	reaction_r_0483_Km0754=0.1;

	reaction_r_0483=compartment_cell*reaction_r_0483_Vmax*(x(153)^2*x(164)-x(154)/reaction_r_0483_Keq)/(reaction_r_0483_Km0750^2*reaction_r_0483_Km0837)/((1+x(153)/reaction_r_0483_Km0750)^2*(1+x(164)/reaction_r_0483_Km0837)+1+x(154)/reaction_r_0483_Km0754-1);

% Reaction: id = r_0486, name = glyceraldehyde-3-phosphate dehydrogenase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0486_FLUX_VALUE=1.69142241294296;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0486_Vmax=37.2112930847451;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0486_Keq=20.0;
	% Local Parameter:   id =  Km0764, name = Km0764
	reaction_r_0486_Km0764=0.1;
	% Local Parameter:   id =  Km1198, name = Km1198
	reaction_r_0486_Km1198=0.1;
	% Local Parameter:   id =  Km1322, name = Km1322
	reaction_r_0486_Km1322=0.1;
	% Local Parameter:   id =  Km0075, name = Km0075
	reaction_r_0486_Km0075=0.1;
	% Local Parameter:   id =  Km1203, name = Km1203
	reaction_r_0486_Km1203=0.1;

	reaction_r_0486=compartment_cell*reaction_r_0486_Vmax*(x(156)*x(219)*x(234)-x(16)*x(220)/reaction_r_0486_Keq)/(reaction_r_0486_Km0764*reaction_r_0486_Km1198*reaction_r_0486_Km1322)/((1+x(156)/reaction_r_0486_Km0764)*(1+x(219)/reaction_r_0486_Km1198)*(1+x(234)/reaction_r_0486_Km1322)+(1+x(16)/reaction_r_0486_Km0075)*(1+x(220)/reaction_r_0486_Km1203)-1);

% Reaction: id = r_0491, name = glycerol-3-phosphate dehydrogenase (NAD)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0491_FLUX_VALUE=2.40277331835412E-4;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0491_Vmax=0.00336388264569577;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0491_Keq=2.0;
	% Local Parameter:   id =  Km0629, name = Km0629
	reaction_r_0491_Km0629=0.1;
	% Local Parameter:   id =  Km1203, name = Km1203
	reaction_r_0491_Km1203=0.1;
	% Local Parameter:   id =  Km0767, name = Km0767
	reaction_r_0491_Km0767=0.1;
	% Local Parameter:   id =  Km1198, name = Km1198
	reaction_r_0491_Km1198=0.1;

	reaction_r_0491=compartment_cell*reaction_r_0491_Vmax*(x(131)*x(220)-x(157)*x(219)/reaction_r_0491_Keq)/(reaction_r_0491_Km0629*reaction_r_0491_Km1203)/((1+x(131)/reaction_r_0491_Km0629)*(1+x(220)/reaction_r_0491_Km1203)+(1+x(157)/reaction_r_0491_Km0767)*(1+x(219)/reaction_r_0491_Km1198)-1);

% Reaction: id = r_0495, name = glycerol-3-phosphate/dihydroxyacetone phosphate acyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0495_FLUX_VALUE=2.40277332169094E-4;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0495_Vmax=0.00336388265036732;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0495_Keq=2.0;
	% Local Parameter:   id =  Km0380, name = Km0380
	reaction_r_0495_Km0380=0.1;
	% Local Parameter:   id =  Km0767, name = Km0767
	reaction_r_0495_Km0767=0.1;
	% Local Parameter:   id =  Km0082, name = Km0082
	reaction_r_0495_Km0082=0.1;
	% Local Parameter:   id =  Km0529, name = Km0529
	reaction_r_0495_Km0529=0.1;

	reaction_r_0495=compartment_cell*reaction_r_0495_Vmax*(x(77)*x(157)-x(20)*x(106)/reaction_r_0495_Keq)/(reaction_r_0495_Km0380*reaction_r_0495_Km0767)/((1+x(77)/reaction_r_0495_Km0380)*(1+x(157)/reaction_r_0495_Km0767)+(1+x(20)/reaction_r_0495_Km0082)*(1+x(106)/reaction_r_0495_Km0529)-1);

% Reaction: id = r_0499, name = glycinamide ribotide transformylase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0499_FLUX_VALUE=0.00375691882979276;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0499_Vmax=0.0525968636170986;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0499_Keq=2.0;
	% Local Parameter:   id =  Km0120, name = Km0120
	reaction_r_0499_Km0120=0.1;
	% Local Parameter:   id =  Km0325, name = Km0325
	reaction_r_0499_Km0325=0.1;
	% Local Parameter:   id =  Km0301, name = Km0301
	reaction_r_0499_Km0301=0.1;
	% Local Parameter:   id =  Km1487, name = Km1487
	reaction_r_0499_Km1487=0.1;

	reaction_r_0499=compartment_cell*reaction_r_0499_Vmax*(x(24)*x(69)-x(60)*x(263)/reaction_r_0499_Keq)/(reaction_r_0499_Km0120*reaction_r_0499_Km0325)/((1+x(24)/reaction_r_0499_Km0120)*(1+x(69)/reaction_r_0499_Km0325)+(1+x(60)/reaction_r_0499_Km0301)*(1+x(263)/reaction_r_0499_Km1487)-1);

% Reaction: id = r_0501, name = glycine cleavage system	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0501_FLUX_VALUE=1.43675988607776;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0501_Vmax=66.090954759577;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0501_Keq=0.2;
	% Local Parameter:   id =  Km1003, name = Km1003
	reaction_r_0501_Km1003=0.1;
	% Local Parameter:   id =  Km1198, name = Km1198
	reaction_r_0501_Km1198=0.1;
	% Local Parameter:   id =  Km1487, name = Km1487
	reaction_r_0501_Km1487=0.1;
	% Local Parameter:   id =  Km0306, name = Km0306
	reaction_r_0501_Km0306=0.1;
	% Local Parameter:   id =  Km0419, name = Km0419
	reaction_r_0501_Km0419=0.1;
	% Local Parameter:   id =  Km0456, name = Km0456
	reaction_r_0501_Km0456=0.1;
	% Local Parameter:   id =  Km1203, name = Km1203
	reaction_r_0501_Km1203=0.1;

	reaction_r_0501=compartment_cell*reaction_r_0501_Vmax*(x(184)*x(219)*x(263)-x(63)*x(85)*x(95)*x(220)/reaction_r_0501_Keq)/(reaction_r_0501_Km1003*reaction_r_0501_Km1198*reaction_r_0501_Km1487)/((1+x(184)/reaction_r_0501_Km1003)*(1+x(219)/reaction_r_0501_Km1198)*(1+x(263)/reaction_r_0501_Km1487)+(1+x(63)/reaction_r_0501_Km0306)*(1+x(85)/reaction_r_0501_Km0419)*(1+x(95)/reaction_r_0501_Km0456)*(1+x(220)/reaction_r_0501_Km1203)-1);

% Reaction: id = r_0502, name = glycine hydroxymethyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0502_FLUX_VALUE=1.45153821341539;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0502_Vmax=20.3215349878155;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0502_Keq=2.0;
	% Local Parameter:   id =  Km1039, name = Km1039
	reaction_r_0502_Km1039=0.1;
	% Local Parameter:   id =  Km1487, name = Km1487
	reaction_r_0502_Km1487=0.1;
	% Local Parameter:   id =  Km0306, name = Km0306
	reaction_r_0502_Km0306=0.1;
	% Local Parameter:   id =  Km1003, name = Km1003
	reaction_r_0502_Km1003=0.1;

	reaction_r_0502=compartment_cell*reaction_r_0502_Vmax*(x(197)*x(263)-x(63)*x(184)/reaction_r_0502_Keq)/(reaction_r_0502_Km1039*reaction_r_0502_Km1487)/((1+x(197)/reaction_r_0502_Km1039)*(1+x(263)/reaction_r_0502_Km1487)+(1+x(63)/reaction_r_0502_Km0306)*(1+x(184)/reaction_r_0502_Km1003)-1);

% Reaction: id = r_0510, name = glycogen (starch) synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0510_FLUX_VALUE=0.0196783757273199;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0510_Vmax=0.196783757273199;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0510_Keq=0.2;
	% Local Parameter:   id =  Km1543, name = Km1543
	reaction_r_0510_Km1543=0.1;
	% Local Parameter:   id =  Km0773, name = Km0773
	reaction_r_0510_Km0773=0.1;
	% Local Parameter:   id =  Km1538, name = Km1538
	reaction_r_0510_Km1538=0.1;

	reaction_r_0510=compartment_cell*reaction_r_0510_Vmax*(x(272)-x(158)*x(271)/reaction_r_0510_Keq)/reaction_r_0510_Km1543/(1+x(272)/reaction_r_0510_Km1543+(1+x(158)/reaction_r_0510_Km0773)*(1+x(271)/reaction_r_0510_Km1538)-1);

% Reaction: id = r_0512, name = glycyl-tRNA synthetase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0512_FLUX_VALUE=0.0110214085076458;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0512_Vmax=0.330642255229374;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0512_Keq=2.0;
	% Local Parameter:   id =  Km0434, name = Km0434
	reaction_r_0512_Km0434=0.1;
	% Local Parameter:   id =  Km1003, name = Km1003
	reaction_r_0512_Km1003=0.1;
	% Local Parameter:   id =  Km1593, name = Km1593
	reaction_r_0512_Km1593=0.1;
	% Local Parameter:   id =  Km0423, name = Km0423
	reaction_r_0512_Km0423=0.1;
	% Local Parameter:   id =  Km0633, name = Km0633
	reaction_r_0512_Km0633=0.1;
	% Local Parameter:   id =  Km0757, name = Km0757
	reaction_r_0512_Km0757=0.1;

	reaction_r_0512=compartment_cell*reaction_r_0512_Vmax*(x(91)*x(184)*x(289)-x(86)*x(132)*x(155)/reaction_r_0512_Keq)/(reaction_r_0512_Km0434*reaction_r_0512_Km1003*reaction_r_0512_Km1593)/((1+x(91)/reaction_r_0512_Km0434)*(1+x(184)/reaction_r_0512_Km1003)*(1+x(289)/reaction_r_0512_Km1593)+(1+x(86)/reaction_r_0512_Km0423)*(1+x(132)/reaction_r_0512_Km0633)*(1+x(155)/reaction_r_0512_Km0757)-1);

% Reaction: id = r_0514, name = GMP synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0514_FLUX_VALUE=0.00187447440148675;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0514_Vmax=0.0862258224683905;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0514_Keq=0.2;
	% Local Parameter:   id =  Km0434, name = Km0434
	reaction_r_0514_Km0434=0.1;
	% Local Parameter:   id =  Km0999, name = Km0999
	reaction_r_0514_Km0999=0.1;
	% Local Parameter:   id =  Km1565, name = Km1565
	reaction_r_0514_Km1565=0.1;
	% Local Parameter:   id =  Km0423, name = Km0423
	reaction_r_0514_Km0423=0.1;
	% Local Parameter:   id =  Km0633, name = Km0633
	reaction_r_0514_Km0633=0.1;
	% Local Parameter:   id =  Km0782, name = Km0782
	reaction_r_0514_Km0782=0.1;
	% Local Parameter:   id =  Km0991, name = Km0991
	reaction_r_0514_Km0991=0.1;

	reaction_r_0514=compartment_cell*reaction_r_0514_Vmax*(x(91)*x(183)*x(276)-x(86)*x(132)*x(159)*x(182)/reaction_r_0514_Keq)/(reaction_r_0514_Km0434*reaction_r_0514_Km0999*reaction_r_0514_Km1565)/((1+x(91)/reaction_r_0514_Km0434)*(1+x(183)/reaction_r_0514_Km0999)*(1+x(276)/reaction_r_0514_Km1565)+(1+x(86)/reaction_r_0514_Km0423)*(1+x(132)/reaction_r_0514_Km0633)*(1+x(159)/reaction_r_0514_Km0782)*(1+x(182)/reaction_r_0514_Km0991)-1);

% Reaction: id = r_0525, name = GTP cyclohydrolase II	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0525_FLUX_VALUE=3.75729835487922E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0525_Vmax=6.7631370387826E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0525_Keq=0.02;
	% Local Parameter:   id =  Km0785, name = Km0785
	reaction_r_0525_Km0785=0.1;
	% Local Parameter:   id =  Km0141, name = Km0141
	reaction_r_0525_Km0141=0.1;
	% Local Parameter:   id =  Km0633, name = Km0633
	reaction_r_0525_Km0633=0.1;
	% Local Parameter:   id =  Km0722, name = Km0722
	reaction_r_0525_Km0722=0.1;

	reaction_r_0525=compartment_cell*reaction_r_0525_Vmax*(x(160)-x(27)*x(132)*x(146)/reaction_r_0525_Keq)/reaction_r_0525_Km0785/(1+x(160)/reaction_r_0525_Km0785+(1+x(27)/reaction_r_0525_Km0141)*(1+x(132)/reaction_r_0525_Km0633)*(1+x(146)/reaction_r_0525_Km0722)-1);

% Reaction: id = r_0528, name = guanylate kinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0528_FLUX_VALUE=6.43295020859241E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0528_Vmax=9.00613029202938E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0528_Keq=2.0;
	% Local Parameter:   id =  Km0434, name = Km0434
	reaction_r_0528_Km0434=0.1;
	% Local Parameter:   id =  Km0782, name = Km0782
	reaction_r_0528_Km0782=0.1;
	% Local Parameter:   id =  Km0394, name = Km0394
	reaction_r_0528_Km0394=0.1;
	% Local Parameter:   id =  Km0739, name = Km0739
	reaction_r_0528_Km0739=0.1;

	reaction_r_0528=compartment_cell*reaction_r_0528_Vmax*(x(91)*x(159)-x(81)*x(148)/reaction_r_0528_Keq)/(reaction_r_0528_Km0434*reaction_r_0528_Km0782)/((1+x(91)/reaction_r_0528_Km0434)*(1+x(159)/reaction_r_0528_Km0782)+(1+x(81)/reaction_r_0528_Km0394)*(1+x(148)/reaction_r_0528_Km0739)-1);

% Reaction: id = r_0529, name = guanylate kinase (GMP:dATP)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0529_FLUX_VALUE=6.43295039602845E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0529_Vmax=9.00613055443983E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0529_Keq=2.0;
	% Local Parameter:   id =  Km0586, name = Km0586
	reaction_r_0529_Km0586=0.1;
	% Local Parameter:   id =  Km0782, name = Km0782
	reaction_r_0529_Km0782=0.1;
	% Local Parameter:   id =  Km0582, name = Km0582
	reaction_r_0529_Km0582=0.1;
	% Local Parameter:   id =  Km0739, name = Km0739
	reaction_r_0529_Km0739=0.1;

	reaction_r_0529=compartment_cell*reaction_r_0529_Vmax*(x(122)*x(159)-x(120)*x(148)/reaction_r_0529_Keq)/(reaction_r_0529_Km0586*reaction_r_0529_Km0782)/((1+x(122)/reaction_r_0529_Km0586)*(1+x(159)/reaction_r_0529_Km0782)+(1+x(120)/reaction_r_0529_Km0582)*(1+x(148)/reaction_r_0529_Km0739)-1);

% Reaction: id = r_0534, name = hexokinase (D-glucose:ATP)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0534_FLUX_VALUE=0.999999999999993;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0534_Vmax=13.9999999999999;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0534_Keq=2.0;
	% Local Parameter:   id =  Km0434, name = Km0434
	reaction_r_0534_Km0434=0.1;
	% Local Parameter:   id =  Km0563, name = Km0563
	reaction_r_0534_Km0563=0.1;
	% Local Parameter:   id =  Km0394, name = Km0394
	reaction_r_0534_Km0394=0.1;
	% Local Parameter:   id =  Km0568, name = Km0568
	reaction_r_0534_Km0568=0.1;

	reaction_r_0534=compartment_cell*reaction_r_0534_Vmax*(x(91)*x(113)-x(81)*x(115)/reaction_r_0534_Keq)/(reaction_r_0534_Km0434*reaction_r_0534_Km0563)/((1+x(91)/reaction_r_0534_Km0434)*(1+x(113)/reaction_r_0534_Km0563)+(1+x(81)/reaction_r_0534_Km0394)*(1+x(115)/reaction_r_0534_Km0568)-1);

% Reaction: id = r_0536, name = histidinol dehydrogenase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0536_FLUX_VALUE=0.00251625132250899;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0536_Vmax=0.0754875396752697;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0536_Keq=2.0;
	% Local Parameter:   id =  Km1010, name = Km1010
	reaction_r_0536_Km1010=0.1;
	% Local Parameter:   id =  Km1198, name = Km1198
	reaction_r_0536_Km1198=0.1;
	% Local Parameter:   id =  Km1006, name = Km1006
	reaction_r_0536_Km1006=0.1;
	% Local Parameter:   id =  Km1203, name = Km1203
	reaction_r_0536_Km1203=0.1;

	reaction_r_0536=compartment_cell*reaction_r_0536_Vmax*(x(186)*x(219)^2-x(185)*x(220)^2/reaction_r_0536_Keq)/(reaction_r_0536_Km1010*reaction_r_0536_Km1198^2)/((1+x(186)/reaction_r_0536_Km1010)*(1+x(219)/reaction_r_0536_Km1198)^2+(1+x(185)/reaction_r_0536_Km1006)*(1+x(220)/reaction_r_0536_Km1203)^2-1);

% Reaction: id = r_0537, name = histidinol-phosphatase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0537_FLUX_VALUE=0.00251625132250899;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0537_Vmax=0.0251625132250899;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0537_Keq=0.2;
	% Local Parameter:   id =  Km1011, name = Km1011
	reaction_r_0537_Km1011=0.1;
	% Local Parameter:   id =  Km1010, name = Km1010
	reaction_r_0537_Km1010=0.1;
	% Local Parameter:   id =  Km1322, name = Km1322
	reaction_r_0537_Km1322=0.1;

	reaction_r_0537=compartment_cell*reaction_r_0537_Vmax*(x(187)-x(186)*x(234)/reaction_r_0537_Keq)/reaction_r_0537_Km1011/(1+x(187)/reaction_r_0537_Km1011+(1+x(186)/reaction_r_0537_Km1010)*(1+x(234)/reaction_r_0537_Km1322)-1);

% Reaction: id = r_0538, name = histidinol-phosphate transaminase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0538_FLUX_VALUE=0.00251625132250899;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0538_Vmax=0.0352275185151259;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0538_Keq=2.0;
	% Local Parameter:   id =  Km0207, name = Km0207
	reaction_r_0538_Km0207=0.1;
	% Local Parameter:   id =  Km0991, name = Km0991
	reaction_r_0538_Km0991=0.1;
	% Local Parameter:   id =  Km0180, name = Km0180
	reaction_r_0538_Km0180=0.1;
	% Local Parameter:   id =  Km1011, name = Km1011
	reaction_r_0538_Km1011=0.1;

	reaction_r_0538=compartment_cell*reaction_r_0538_Vmax*(x(41)*x(182)-x(36)*x(187)/reaction_r_0538_Keq)/(reaction_r_0538_Km0207*reaction_r_0538_Km0991)/((1+x(41)/reaction_r_0538_Km0207)*(1+x(182)/reaction_r_0538_Km0991)+(1+x(36)/reaction_r_0538_Km0180)*(1+x(187)/reaction_r_0538_Km1011)-1);

% Reaction: id = r_0539, name = histidyl-tRNA synthetase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0539_FLUX_VALUE=0.00251625132251002;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0539_Vmax=0.0754875396753006;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0539_Keq=2.0;
	% Local Parameter:   id =  Km0434, name = Km0434
	reaction_r_0539_Km0434=0.1;
	% Local Parameter:   id =  Km1006, name = Km1006
	reaction_r_0539_Km1006=0.1;
	% Local Parameter:   id =  Km1594, name = Km1594
	reaction_r_0539_Km1594=0.1;
	% Local Parameter:   id =  Km0423, name = Km0423
	reaction_r_0539_Km0423=0.1;
	% Local Parameter:   id =  Km0633, name = Km0633
	reaction_r_0539_Km0633=0.1;
	% Local Parameter:   id =  Km0832, name = Km0832
	reaction_r_0539_Km0832=0.1;

	reaction_r_0539=compartment_cell*reaction_r_0539_Vmax*(x(91)*x(185)*x(290)-x(86)*x(132)*x(161)/reaction_r_0539_Keq)/(reaction_r_0539_Km0434*reaction_r_0539_Km1006*reaction_r_0539_Km1594)/((1+x(91)/reaction_r_0539_Km0434)*(1+x(185)/reaction_r_0539_Km1006)*(1+x(290)/reaction_r_0539_Km1594)+(1+x(86)/reaction_r_0539_Km0423)*(1+x(132)/reaction_r_0539_Km0633)*(1+x(161)/reaction_r_0539_Km0832)-1);

% Reaction: id = r_0542, name = homoacontinate hydratase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0542_FLUX_VALUE=0.01086200797138;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0542_Vmax=0.06517204782828;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0542_Keq=2.0;
	% Local Parameter:   id =  Km0454, name = Km0454
	reaction_r_0542_Km0454=0.1;
	% Local Parameter:   id =  Km0836, name = Km0836
	reaction_r_0542_Km0836=0.1;

	reaction_r_0542=compartment_cell*reaction_r_0542_Vmax*(x(93)-x(163)/reaction_r_0542_Keq)/reaction_r_0542_Km0454/(1+x(93)/reaction_r_0542_Km0454+1+x(163)/reaction_r_0542_Km0836-1);

% Reaction: id = r_0543, name = homocitrate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0543_FLUX_VALUE=0.01086200797138;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0543_Vmax=0.15206811159932;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0543_Keq=2.0;
	% Local Parameter:   id =  Km0180, name = Km0180
	reaction_r_0543_Km0180=0.1;
	% Local Parameter:   id =  Km0373, name = Km0373
	reaction_r_0543_Km0373=0.1;
	% Local Parameter:   id =  Km0529, name = Km0529
	reaction_r_0543_Km0529=0.1;
	% Local Parameter:   id =  Km0835, name = Km0835
	reaction_r_0543_Km0835=0.1;

	reaction_r_0543=compartment_cell*reaction_r_0543_Vmax*(x(36)*x(76)-x(106)*x(162)/reaction_r_0543_Keq)/(reaction_r_0543_Km0180*reaction_r_0543_Km0373)/((1+x(36)/reaction_r_0543_Km0180)*(1+x(76)/reaction_r_0543_Km0373)+(1+x(106)/reaction_r_0543_Km0529)*(1+x(162)/reaction_r_0543_Km0835)-1);

% Reaction: id = r_0545, name = homoisocitrate dehydrogenase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0545_FLUX_VALUE=0.01086200797138;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0545_Vmax=0.23896417537036;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0545_Keq=0.2;
	% Local Parameter:   id =  Km0836, name = Km0836
	reaction_r_0545_Km0836=0.1;
	% Local Parameter:   id =  Km1198, name = Km1198
	reaction_r_0545_Km1198=0.1;
	% Local Parameter:   id =  Km0176, name = Km0176
	reaction_r_0545_Km0176=0.1;
	% Local Parameter:   id =  Km1203, name = Km1203
	reaction_r_0545_Km1203=0.1;
	% Local Parameter:   id =  Km0456, name = Km0456
	reaction_r_0545_Km0456=0.1;

	reaction_r_0545=compartment_cell*reaction_r_0545_Vmax*(x(163)*x(219)-x(34)*x(220)*x(95)/reaction_r_0545_Keq)/(reaction_r_0545_Km0836*reaction_r_0545_Km1198)/((1+x(163)/reaction_r_0545_Km0836)*(1+x(219)/reaction_r_0545_Km1198)+(1+x(34)/reaction_r_0545_Km0176)*(1+x(220)/reaction_r_0545_Km1203)*(1+x(95)/reaction_r_0545_Km0456)-1);

% Reaction: id = r_0547, name = homoserine dehydrogenase (NADP)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0547_FLUX_VALUE=0.0188389294905409;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0547_Vmax=0.263745012867573;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0547_Keq=2.0;
	% Local Parameter:   id =  Km0978, name = Km0978
	reaction_r_0547_Km0978=0.1;
	% Local Parameter:   id =  Km1212, name = Km1212
	reaction_r_0547_Km1212=0.1;
	% Local Parameter:   id =  Km1014, name = Km1014
	reaction_r_0547_Km1014=0.1;
	% Local Parameter:   id =  Km1207, name = Km1207
	reaction_r_0547_Km1207=0.1;

	reaction_r_0547=compartment_cell*reaction_r_0547_Vmax*(x(178)*x(222)-x(189)*x(221)/reaction_r_0547_Keq)/(reaction_r_0547_Km0978*reaction_r_0547_Km1212)/((1+x(178)/reaction_r_0547_Km0978)*(1+x(222)/reaction_r_0547_Km1212)+(1+x(189)/reaction_r_0547_Km1014)*(1+x(221)/reaction_r_0547_Km1207)-1);

% Reaction: id = r_0548, name = homoserine kinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0548_FLUX_VALUE=0.00726411015276989;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0548_Vmax=0.101697542138778;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0548_Keq=2.0;
	% Local Parameter:   id =  Km0434, name = Km0434
	reaction_r_0548_Km0434=0.1;
	% Local Parameter:   id =  Km1014, name = Km1014
	reaction_r_0548_Km1014=0.1;
	% Local Parameter:   id =  Km0394, name = Km0394
	reaction_r_0548_Km0394=0.1;
	% Local Parameter:   id =  Km1238, name = Km1238
	reaction_r_0548_Km1238=0.1;

	reaction_r_0548=compartment_cell*reaction_r_0548_Vmax*(x(91)*x(189)-x(81)*x(224)/reaction_r_0548_Keq)/(reaction_r_0548_Km0434*reaction_r_0548_Km1014)/((1+x(91)/reaction_r_0548_Km0434)*(1+x(189)/reaction_r_0548_Km1014)+(1+x(81)/reaction_r_0548_Km0394)*(1+x(224)/reaction_r_0548_Km1238)-1);

% Reaction: id = r_0549, name = homoserine O-trans-acetylase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0549_FLUX_VALUE=0.0115748193375687;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0549_Vmax=0.162047470725962;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0549_Keq=2.0;
	% Local Parameter:   id =  Km0373, name = Km0373
	reaction_r_0549_Km0373=0.1;
	% Local Parameter:   id =  Km1014, name = Km1014
	reaction_r_0549_Km1014=0.1;
	% Local Parameter:   id =  Km0529, name = Km0529
	reaction_r_0549_Km0529=0.1;
	% Local Parameter:   id =  Km1233, name = Km1233
	reaction_r_0549_Km1233=0.1;

	reaction_r_0549=compartment_cell*reaction_r_0549_Vmax*(x(76)*x(189)-x(106)*x(223)/reaction_r_0549_Keq)/(reaction_r_0549_Km0373*reaction_r_0549_Km1014)/((1+x(76)/reaction_r_0549_Km0373)*(1+x(189)/reaction_r_0549_Km1014)+(1+x(106)/reaction_r_0549_Km0529)*(1+x(223)/reaction_r_0549_Km1233)-1);

% Reaction: id = r_0550, name = hydrogen peroxide reductase (thioredoxin)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0550_FLUX_VALUE=0.00209877372781628;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0550_Vmax=0.0209877372781628;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0550_Keq=20.0;
	% Local Parameter:   id =  Km0837, name = Km0837
	reaction_r_0550_Km0837=0.1;
	% Local Parameter:   id =  Km1616, name = Km1616
	reaction_r_0550_Km1616=0.1;
	% Local Parameter:   id =  Km1620, name = Km1620
	reaction_r_0550_Km1620=0.1;

	reaction_r_0550=compartment_cell*reaction_r_0550_Vmax*(x(164)*x(302)-x(303)/reaction_r_0550_Keq)/(reaction_r_0550_Km0837*reaction_r_0550_Km1616)/((1+x(164)/reaction_r_0550_Km0837)*(1+x(302)/reaction_r_0550_Km1616)+1+x(303)/reaction_r_0550_Km1620-1);

% Reaction: id = r_0558, name = hydroxymethylglutaryl CoA reductase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0558_FLUX_VALUE=0.00155984810490327;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0558_Vmax=0.0717530128255505;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0558_Keq=0.2;
	% Local Parameter:   id =  Km0218, name = Km0218
	reaction_r_0558_Km0218=0.1;
	% Local Parameter:   id =  Km1212, name = Km1212
	reaction_r_0558_Km1212=0.1;
	% Local Parameter:   id =  Km0028, name = Km0028
	reaction_r_0558_Km0028=0.1;
	% Local Parameter:   id =  Km0529, name = Km0529
	reaction_r_0558_Km0529=0.1;
	% Local Parameter:   id =  Km1207, name = Km1207
	reaction_r_0558_Km1207=0.1;

	reaction_r_0558=compartment_cell*reaction_r_0558_Vmax*(x(45)*x(222)^2-x(10)*x(106)*x(221)^2/reaction_r_0558_Keq)/(reaction_r_0558_Km0218*reaction_r_0558_Km1212^2)/((1+x(45)/reaction_r_0558_Km0218)*(1+x(222)/reaction_r_0558_Km1212)^2+(1+x(10)/reaction_r_0558_Km0028)*(1+x(106)/reaction_r_0558_Km0529)*(1+x(221)/reaction_r_0558_Km1207)^2-1);

% Reaction: id = r_0559, name = hydroxymethylglutaryl CoA synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0559_FLUX_VALUE=0.00155984810490327;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0559_Vmax=0.0218378734686458;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0559_Keq=2.0;
	% Local Parameter:   id =  Km0367, name = Km0367
	reaction_r_0559_Km0367=0.1;
	% Local Parameter:   id =  Km0373, name = Km0373
	reaction_r_0559_Km0373=0.1;
	% Local Parameter:   id =  Km0218, name = Km0218
	reaction_r_0559_Km0218=0.1;
	% Local Parameter:   id =  Km0529, name = Km0529
	reaction_r_0559_Km0529=0.1;

	reaction_r_0559=compartment_cell*reaction_r_0559_Vmax*(x(75)*x(76)-x(45)*x(106)/reaction_r_0559_Keq)/(reaction_r_0559_Km0367*reaction_r_0559_Km0373)/((1+x(75)/reaction_r_0559_Km0367)*(1+x(76)/reaction_r_0559_Km0373)+(1+x(45)/reaction_r_0559_Km0218)*(1+x(106)/reaction_r_0559_Km0529)-1);

% Reaction: id = r_0563, name = Imidazole-glycerol-3-phosphate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0563_FLUX_VALUE=0.00251625132250899;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0563_Vmax=0.0553575290951978;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0563_Keq=0.2;
	% Local Parameter:   id =  Km0312, name = Km0312
	reaction_r_0563_Km0312=0.1;
	% Local Parameter:   id =  Km0999, name = Km0999
	reaction_r_0563_Km0999=0.1;
	% Local Parameter:   id =  Km0403, name = Km0403
	reaction_r_0563_Km0403=0.1;
	% Local Parameter:   id =  Km0550, name = Km0550
	reaction_r_0563_Km0550=0.1;
	% Local Parameter:   id =  Km0991, name = Km0991
	reaction_r_0563_Km0991=0.1;

	reaction_r_0563=compartment_cell*reaction_r_0563_Vmax*(x(64)*x(183)-x(82)*x(109)*x(182)/reaction_r_0563_Keq)/(reaction_r_0563_Km0312*reaction_r_0563_Km0999)/((1+x(64)/reaction_r_0563_Km0312)*(1+x(183)/reaction_r_0563_Km0999)+(1+x(82)/reaction_r_0563_Km0403)*(1+x(109)/reaction_r_0563_Km0550)*(1+x(182)/reaction_r_0563_Km0991)-1);

% Reaction: id = r_0564, name = imidazoleglycerol-phosphate dehydratase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0564_FLUX_VALUE=0.00251625132250899;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0564_Vmax=0.0150975079350539;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0564_Keq=2.0;
	% Local Parameter:   id =  Km0550, name = Km0550
	reaction_r_0564_Km0550=0.1;
	% Local Parameter:   id =  Km0207, name = Km0207
	reaction_r_0564_Km0207=0.1;

	reaction_r_0564=compartment_cell*reaction_r_0564_Vmax*(x(109)-x(41)/reaction_r_0564_Keq)/reaction_r_0564_Km0550/(1+x(109)/reaction_r_0564_Km0550+1+x(41)/reaction_r_0564_Km0207-1);

% Reaction: id = r_0565, name = IMP dehydrogenase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0565_FLUX_VALUE=0.00187447440148864;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0565_Vmax=0.026242641620841;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0565_Keq=2.0;
	% Local Parameter:   id =  Km0849, name = Km0849
	reaction_r_0565_Km0849=0.1;
	% Local Parameter:   id =  Km1198, name = Km1198
	reaction_r_0565_Km1198=0.1;
	% Local Parameter:   id =  Km1203, name = Km1203
	reaction_r_0565_Km1203=0.1;
	% Local Parameter:   id =  Km1565, name = Km1565
	reaction_r_0565_Km1565=0.1;

	reaction_r_0565=compartment_cell*reaction_r_0565_Vmax*(x(167)*x(219)-x(220)*x(276)/reaction_r_0565_Keq)/(reaction_r_0565_Km0849*reaction_r_0565_Km1198)/((1+x(167)/reaction_r_0565_Km0849)*(1+x(219)/reaction_r_0565_Km1198)+(1+x(220)/reaction_r_0565_Km1203)*(1+x(276)/reaction_r_0565_Km1565)-1);

% Reaction: id = r_0566, name = indole-3-glycerol-phosphate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0566_FLUX_VALUE=0.00107785124523996;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0566_Vmax=0.0107785124523996;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0566_Keq=0.2;
	% Local Parameter:   id =  Km0076, name = Km0076
	reaction_r_0566_Km0076=0.1;
	% Local Parameter:   id =  Km0086, name = Km0086
	reaction_r_0566_Km0086=0.1;
	% Local Parameter:   id =  Km0456, name = Km0456
	reaction_r_0566_Km0456=0.1;

	reaction_r_0566=compartment_cell*reaction_r_0566_Vmax*(x(17)-x(21)*x(95)/reaction_r_0566_Keq)/reaction_r_0566_Km0076/(1+x(17)/reaction_r_0566_Km0076+(1+x(21)/reaction_r_0566_Km0086)*(1+x(95)/reaction_r_0566_Km0456)-1);

% Reaction: id = r_0568, name = inorganic diphosphatase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0568_FLUX_VALUE=0.305666406674421;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0568_Vmax=3.05666406674421;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0568_Keq=0.2;
	% Local Parameter:   id =  Km0633, name = Km0633
	reaction_r_0568_Km0633=0.1;
	% Local Parameter:   id =  Km1322, name = Km1322
	reaction_r_0568_Km1322=0.1;

	reaction_r_0568=compartment_cell*reaction_r_0568_Vmax*(x(132)-x(234)^2/reaction_r_0568_Keq)/reaction_r_0568_Km0633/(1+x(132)/reaction_r_0568_Km0633+(1+x(234)/reaction_r_0568_Km1322)^2-1);

% Reaction: id = r_0570, name = inosine monophosphate cyclohydrolase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0570_FLUX_VALUE=0.00627317015230181;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0570_Vmax=0.0376390209138109;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0570_Keq=2.0;
	% Local Parameter:   id =  Km1365, name = Km1365
	reaction_r_0570_Km1365=0.1;
	% Local Parameter:   id =  Km0849, name = Km0849
	reaction_r_0570_Km0849=0.1;

	reaction_r_0570=compartment_cell*reaction_r_0570_Vmax*(x(243)-x(167)/reaction_r_0570_Keq)/reaction_r_0570_Km1365/(1+x(243)/reaction_r_0570_Km1365+1+x(167)/reaction_r_0570_Km0849-1);

% Reaction: id = r_0594, name = IPC synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0594_FLUX_VALUE=2.04421705708177E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0594_Vmax=2.86190387991448E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0594_Keq=2.0;
	% Local Parameter:   id =  Km0089, name = Km0089
	reaction_r_0594_Km0089=0.1;
	% Local Parameter:   id =  Km0499, name = Km0499
	reaction_r_0594_Km0499=0.1;
	% Local Parameter:   id =  Km0619, name = Km0619
	reaction_r_0594_Km0619=0.1;
	% Local Parameter:   id =  Km0918, name = Km0918
	reaction_r_0594_Km0918=0.1;

	reaction_r_0594=compartment_cell*reaction_r_0594_Vmax*(x(22)*x(101)-x(129)*x(168)/reaction_r_0594_Keq)/(reaction_r_0594_Km0089*reaction_r_0594_Km0499)/((1+x(22)/reaction_r_0594_Km0089)*(1+x(101)/reaction_r_0594_Km0499)+(1+x(129)/reaction_r_0594_Km0619)*(1+x(168)/reaction_r_0594_Km0918)-1);

% Reaction: id = r_0658, name = isocitrate dehydrogenase (NAD+)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0658_FLUX_VALUE=0.0193330078987431;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0658_Vmax=0.425326173772348;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0658_Keq=0.2;
	% Local Parameter:   id =  Km0940, name = Km0940
	reaction_r_0658_Km0940=0.1;
	% Local Parameter:   id =  Km1198, name = Km1198
	reaction_r_0658_Km1198=0.1;
	% Local Parameter:   id =  Km0180, name = Km0180
	reaction_r_0658_Km0180=0.1;
	% Local Parameter:   id =  Km0456, name = Km0456
	reaction_r_0658_Km0456=0.1;
	% Local Parameter:   id =  Km1203, name = Km1203
	reaction_r_0658_Km1203=0.1;

	reaction_r_0658=compartment_cell*reaction_r_0658_Vmax*(x(169)*x(219)-x(36)*x(95)*x(220)/reaction_r_0658_Keq)/(reaction_r_0658_Km0940*reaction_r_0658_Km1198)/((1+x(169)/reaction_r_0658_Km0940)*(1+x(219)/reaction_r_0658_Km1198)+(1+x(36)/reaction_r_0658_Km0180)*(1+x(95)/reaction_r_0658_Km0456)*(1+x(220)/reaction_r_0658_Km1203)-1);

% Reaction: id = r_0661, name = isocitrate dehydrogenase (NADP+), peroxisomal	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0661_FLUX_VALUE=0.0193330078983478;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0661_Vmax=0.425326173763652;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0661_Keq=0.2;
	% Local Parameter:   id =  Km0940, name = Km0940
	reaction_r_0661_Km0940=0.1;
	% Local Parameter:   id =  Km1207, name = Km1207
	reaction_r_0661_Km1207=0.1;
	% Local Parameter:   id =  Km0180, name = Km0180
	reaction_r_0661_Km0180=0.1;
	% Local Parameter:   id =  Km0456, name = Km0456
	reaction_r_0661_Km0456=0.1;
	% Local Parameter:   id =  Km1212, name = Km1212
	reaction_r_0661_Km1212=0.1;

	reaction_r_0661=compartment_cell*reaction_r_0661_Vmax*(x(169)*x(221)-x(36)*x(95)*x(222)/reaction_r_0661_Keq)/(reaction_r_0661_Km0940*reaction_r_0661_Km1207)/((1+x(169)/reaction_r_0661_Km0940)*(1+x(221)/reaction_r_0661_Km1207)+(1+x(36)/reaction_r_0661_Km0180)*(1+x(95)/reaction_r_0661_Km0456)*(1+x(222)/reaction_r_0661_Km1212)-1);

% Reaction: id = r_0663, name = isoleucine transaminase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0663_FLUX_VALUE=0.00731344841399458;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0663_Vmax=0.102388277795924;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0663_Keq=2.0;
	% Local Parameter:   id =  Km0056, name = Km0056
	reaction_r_0663_Km0056=0.1;
	% Local Parameter:   id =  Km0991, name = Km0991
	reaction_r_0663_Km0991=0.1;
	% Local Parameter:   id =  Km0180, name = Km0180
	reaction_r_0663_Km0180=0.1;
	% Local Parameter:   id =  Km1016, name = Km1016
	reaction_r_0663_Km1016=0.1;

	reaction_r_0663=compartment_cell*reaction_r_0663_Vmax*(x(13)*x(182)-x(36)*x(190)/reaction_r_0663_Keq)/(reaction_r_0663_Km0056*reaction_r_0663_Km0991)/((1+x(13)/reaction_r_0663_Km0056)*(1+x(182)/reaction_r_0663_Km0991)+(1+x(36)/reaction_r_0663_Km0180)*(1+x(190)/reaction_r_0663_Km1016)-1);

% Reaction: id = r_0665, name = isoleucyl-tRNA synthetase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0665_FLUX_VALUE=0.00731344841399218;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0665_Vmax=0.219403452419765;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0665_Keq=2.0;
	% Local Parameter:   id =  Km0434, name = Km0434
	reaction_r_0665_Km0434=0.1;
	% Local Parameter:   id =  Km1016, name = Km1016
	reaction_r_0665_Km1016=0.1;
	% Local Parameter:   id =  Km1596, name = Km1596
	reaction_r_0665_Km1596=0.1;
	% Local Parameter:   id =  Km0423, name = Km0423
	reaction_r_0665_Km0423=0.1;
	% Local Parameter:   id =  Km0633, name = Km0633
	reaction_r_0665_Km0633=0.1;
	% Local Parameter:   id =  Km0847, name = Km0847
	reaction_r_0665_Km0847=0.1;

	reaction_r_0665=compartment_cell*reaction_r_0665_Vmax*(x(91)*x(190)*x(291)-x(86)*x(132)*x(166)/reaction_r_0665_Keq)/(reaction_r_0665_Km0434*reaction_r_0665_Km1016*reaction_r_0665_Km1596)/((1+x(91)/reaction_r_0665_Km0434)*(1+x(190)/reaction_r_0665_Km1016)*(1+x(291)/reaction_r_0665_Km1596)+(1+x(86)/reaction_r_0665_Km0423)*(1+x(132)/reaction_r_0665_Km0633)*(1+x(166)/reaction_r_0665_Km0847)-1);

% Reaction: id = r_0667, name = isopentenyl-diphosphate D-isomerase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0667_FLUX_VALUE=5.19949368301002E-4;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0667_Vmax=0.00311969620980601;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0667_Keq=2.0;
	% Local Parameter:   id =  Km0943, name = Km0943
	reaction_r_0667_Km0943=0.1;
	% Local Parameter:   id =  Km1376, name = Km1376
	reaction_r_0667_Km1376=0.1;

	reaction_r_0667=compartment_cell*reaction_r_0667_Vmax*(x(170)-x(245)/reaction_r_0667_Keq)/reaction_r_0667_Km0943/(1+x(170)/reaction_r_0667_Km0943+1+x(245)/reaction_r_0667_Km1376-1);

% Reaction: id = r_0669, name = ketol-acid reductoisomerase (2-aceto-2-hydroxybutanoate)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0669_FLUX_VALUE=0.00965062714996943;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0669_Vmax=0.135108780099572;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0669_Keq=2.0;
	% Local Parameter:   id =  Km0039, name = Km0039
	reaction_r_0669_Km0039=0.1;
	% Local Parameter:   id =  Km1212, name = Km1212
	reaction_r_0669_Km1212=0.1;
	% Local Parameter:   id =  Km0008, name = Km0008
	reaction_r_0669_Km0008=0.1;
	% Local Parameter:   id =  Km1207, name = Km1207
	reaction_r_0669_Km1207=0.1;

	reaction_r_0669=compartment_cell*reaction_r_0669_Vmax*(x(12)*x(222)-x(3)*x(221)/reaction_r_0669_Keq)/(reaction_r_0669_Km0039*reaction_r_0669_Km1212)/((1+x(12)/reaction_r_0669_Km0039)*(1+x(222)/reaction_r_0669_Km1212)+(1+x(3)/reaction_r_0669_Km0008)*(1+x(221)/reaction_r_0669_Km1207)-1);

% Reaction: id = r_0674, name = L-alanine transaminase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0674_FLUX_VALUE=0.0174126109617655;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0674_Vmax=0.243776553464717;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0674_Keq=2.0;
	% Local Parameter:   id =  Km0991, name = Km0991
	reaction_r_0674_Km0991=0.1;
	% Local Parameter:   id =  Km1399, name = Km1399
	reaction_r_0674_Km1399=0.1;
	% Local Parameter:   id =  Km0180, name = Km0180
	reaction_r_0674_Km0180=0.1;
	% Local Parameter:   id =  Km0955, name = Km0955
	reaction_r_0674_Km0955=0.1;

	reaction_r_0674=compartment_cell*reaction_r_0674_Vmax*(x(182)*x(249)-x(36)*x(173)/reaction_r_0674_Keq)/(reaction_r_0674_Km0991*reaction_r_0674_Km1399)/((1+x(182)/reaction_r_0674_Km0991)*(1+x(249)/reaction_r_0674_Km1399)+(1+x(36)/reaction_r_0674_Km0180)*(1+x(173)/reaction_r_0674_Km0955)-1);

% Reaction: id = r_0678, name = L-aminoadipate-semialdehyde dehydrogenase (NADPH)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0678_FLUX_VALUE=0.01086200797138;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0678_Vmax=0.15206811159932;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0678_Keq=2.0;
	% Local Parameter:   id =  Km0953, name = Km0953
	reaction_r_0678_Km0953=0.1;
	% Local Parameter:   id =  Km1212, name = Km1212
	reaction_r_0678_Km1212=0.1;
	% Local Parameter:   id =  Km0959, name = Km0959
	reaction_r_0678_Km0959=0.1;
	% Local Parameter:   id =  Km1207, name = Km1207
	reaction_r_0678_Km1207=0.1;

	reaction_r_0678=compartment_cell*reaction_r_0678_Vmax*(x(172)*x(222)-x(174)*x(221)/reaction_r_0678_Keq)/(reaction_r_0678_Km0953*reaction_r_0678_Km1212)/((1+x(172)/reaction_r_0678_Km0953)*(1+x(222)/reaction_r_0678_Km1212)+(1+x(174)/reaction_r_0678_Km0959)*(1+x(221)/reaction_r_0678_Km1207)-1);

% Reaction: id = r_0698, name = lanosterol synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0698_FLUX_VALUE=2.59974684150501E-4;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0698_Vmax=0.00155984810490301;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0698_Keq=2.0;
	% Local Parameter:   id =  Km0037, name = Km0037
	reaction_r_0698_Km0037=0.1;
	% Local Parameter:   id =  Km1059, name = Km1059
	reaction_r_0698_Km1059=0.1;

	reaction_r_0698=compartment_cell*reaction_r_0698_Vmax*(x(11)-x(202)/reaction_r_0698_Keq)/reaction_r_0698_Km0037/(1+x(11)/reaction_r_0698_Km0037+1+x(202)/reaction_r_0698_Km1059-1);

% Reaction: id = r_0699, name = leucine transaminase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0699_FLUX_VALUE=0.0112491235594554;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0699_Vmax=0.157487729832376;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0699_Keq=2.0;
	% Local Parameter:   id =  Km0291, name = Km0291
	reaction_r_0699_Km0291=0.1;
	% Local Parameter:   id =  Km0991, name = Km0991
	reaction_r_0699_Km0991=0.1;
	% Local Parameter:   id =  Km0180, name = Km0180
	reaction_r_0699_Km0180=0.1;
	% Local Parameter:   id =  Km1021, name = Km1021
	reaction_r_0699_Km1021=0.1;

	reaction_r_0699=compartment_cell*reaction_r_0699_Vmax*(x(53)*x(182)-x(36)*x(191)/reaction_r_0699_Keq)/(reaction_r_0699_Km0291*reaction_r_0699_Km0991)/((1+x(53)/reaction_r_0699_Km0291)*(1+x(182)/reaction_r_0699_Km0991)+(1+x(36)/reaction_r_0699_Km0180)*(1+x(191)/reaction_r_0699_Km1021)-1);

% Reaction: id = r_0701, name = leucyl-tRNA synthetase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0701_FLUX_VALUE=0.0112491235594566;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0701_Vmax=0.337473706783698;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0701_Keq=2.0;
	% Local Parameter:   id =  Km0434, name = Km0434
	reaction_r_0701_Km0434=0.1;
	% Local Parameter:   id =  Km1021, name = Km1021
	reaction_r_0701_Km1021=0.1;
	% Local Parameter:   id =  Km1598, name = Km1598
	reaction_r_0701_Km1598=0.1;
	% Local Parameter:   id =  Km0423, name = Km0423
	reaction_r_0701_Km0423=0.1;
	% Local Parameter:   id =  Km0633, name = Km0633
	reaction_r_0701_Km0633=0.1;
	% Local Parameter:   id =  Km1077, name = Km1077
	reaction_r_0701_Km1077=0.1;

	reaction_r_0701=compartment_cell*reaction_r_0701_Vmax*(x(91)*x(191)*x(292)-x(86)*x(132)*x(205)/reaction_r_0701_Keq)/(reaction_r_0701_Km0434*reaction_r_0701_Km1021*reaction_r_0701_Km1598)/((1+x(91)/reaction_r_0701_Km0434)*(1+x(191)/reaction_r_0701_Km1021)*(1+x(292)/reaction_r_0701_Km1598)+(1+x(86)/reaction_r_0701_Km0423)*(1+x(132)/reaction_r_0701_Km0633)*(1+x(205)/reaction_r_0701_Km1077)-1);

% Reaction: id = r_0711, name = lysyl-tRNA synthetase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0711_FLUX_VALUE=0.0108620079713781;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0711_Vmax=0.325860239141343;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0711_Keq=2.0;
	% Local Parameter:   id =  Km0434, name = Km0434
	reaction_r_0711_Km0434=0.1;
	% Local Parameter:   id =  Km1025, name = Km1025
	reaction_r_0711_Km1025=0.1;
	% Local Parameter:   id =  Km1600, name = Km1600
	reaction_r_0711_Km1600=0.1;
	% Local Parameter:   id =  Km0423, name = Km0423
	reaction_r_0711_Km0423=0.1;
	% Local Parameter:   id =  Km0633, name = Km0633
	reaction_r_0711_Km0633=0.1;
	% Local Parameter:   id =  Km1099, name = Km1099
	reaction_r_0711_Km1099=0.1;

	reaction_r_0711=compartment_cell*reaction_r_0711_Vmax*(x(91)*x(192)*x(293)-x(86)*x(132)*x(207)/reaction_r_0711_Keq)/(reaction_r_0711_Km0434*reaction_r_0711_Km1025*reaction_r_0711_Km1600)/((1+x(91)/reaction_r_0711_Km0434)*(1+x(192)/reaction_r_0711_Km1025)*(1+x(293)/reaction_r_0711_Km1600)+(1+x(86)/reaction_r_0711_Km0423)*(1+x(132)/reaction_r_0711_Km0633)*(1+x(207)/reaction_r_0711_Km1099)-1);

% Reaction: id = r_0713, name = malate dehydrogenase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0713_FLUX_VALUE=0.0142545827185181;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0713_Vmax=0.199564158059253;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0713_Keq=2.0;
	% Local Parameter:   id =  Km0066, name = Km0066
	reaction_r_0713_Km0066=0.1;
	% Local Parameter:   id =  Km1198, name = Km1198
	reaction_r_0713_Km1198=0.1;
	% Local Parameter:   id =  Km1203, name = Km1203
	reaction_r_0713_Km1203=0.1;
	% Local Parameter:   id =  Km1271, name = Km1271
	reaction_r_0713_Km1271=0.1;

	reaction_r_0713=compartment_cell*reaction_r_0713_Vmax*(x(15)*x(219)-x(220)*x(229)/reaction_r_0713_Keq)/(reaction_r_0713_Km0066*reaction_r_0713_Km1198)/((1+x(15)/reaction_r_0713_Km0066)*(1+x(219)/reaction_r_0713_Km1198)+(1+x(220)/reaction_r_0713_Km1203)*(1+x(229)/reaction_r_0713_Km1271)-1);

% Reaction: id = r_0722, name = mannose-1-phosphate guanylyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0722_FLUX_VALUE=0.0306618317263325;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0722_Vmax=0.429265644168655;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0722_Keq=2.0;
	% Local Parameter:   id =  Km0573, name = Km0573
	reaction_r_0722_Km0573=0.1;
	% Local Parameter:   id =  Km0785, name = Km0785
	reaction_r_0722_Km0785=0.1;
	% Local Parameter:   id =  Km0633, name = Km0633
	reaction_r_0722_Km0633=0.1;
	% Local Parameter:   id =  Km0743, name = Km0743
	reaction_r_0722_Km0743=0.1;

	reaction_r_0722=compartment_cell*reaction_r_0722_Vmax*(x(116)*x(160)-x(132)*x(149)/reaction_r_0722_Keq)/(reaction_r_0722_Km0573*reaction_r_0722_Km0785)/((1+x(116)/reaction_r_0722_Km0573)*(1+x(160)/reaction_r_0722_Km0785)+(1+x(132)/reaction_r_0722_Km0633)*(1+x(149)/reaction_r_0722_Km0743)-1);

% Reaction: id = r_0723, name = mannose-6-phosphate isomerase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0723_FLUX_VALUE=0.0306618317263325;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0723_Vmax=0.183970990357995;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0723_Keq=2.0;
	% Local Parameter:   id =  Km0557, name = Km0557
	reaction_r_0723_Km0557=0.1;
	% Local Parameter:   id =  Km0574, name = Km0574
	reaction_r_0723_Km0574=0.1;

	reaction_r_0723=compartment_cell*reaction_r_0723_Vmax*(x(112)-x(117)/reaction_r_0723_Keq)/reaction_r_0723_Km0557/(1+x(112)/reaction_r_0723_Km0557+1+x(117)/reaction_r_0723_Km0574-1);

% Reaction: id = r_0724, name = methenyltetrahydrifikate cyclohydrolase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0724_FLUX_VALUE=2.88565330302391;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0724_Vmax=17.3139198181435;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0724_Keq=2.0;
	% Local Parameter:   id =  Km0304, name = Km0304
	reaction_r_0724_Km0304=0.1;
	% Local Parameter:   id =  Km0120, name = Km0120
	reaction_r_0724_Km0120=0.1;

	reaction_r_0724=compartment_cell*reaction_r_0724_Vmax*(x(62)-x(24)/reaction_r_0724_Keq)/reaction_r_0724_Km0304/(1+x(62)/reaction_r_0724_Km0304+1+x(24)/reaction_r_0724_Km0120-1);

% Reaction: id = r_0726, name = methionine adenosyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0726_FLUX_VALUE=5.83975250367414E-4;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0726_Vmax=0.0128474555080831;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0726_Keq=0.2;
	% Local Parameter:   id =  Km0434, name = Km0434
	reaction_r_0726_Km0434=0.1;
	% Local Parameter:   id =  Km1029, name = Km1029
	reaction_r_0726_Km1029=0.1;
	% Local Parameter:   id =  Km0633, name = Km0633
	reaction_r_0726_Km0633=0.1;
	% Local Parameter:   id =  Km1322, name = Km1322
	reaction_r_0726_Km1322=0.1;
	% Local Parameter:   id =  Km1416, name = Km1416
	reaction_r_0726_Km1416=0.1;

	reaction_r_0726=compartment_cell*reaction_r_0726_Vmax*(x(91)*x(193)-x(132)*x(234)*x(253)/reaction_r_0726_Keq)/(reaction_r_0726_Km0434*reaction_r_0726_Km1029)/((1+x(91)/reaction_r_0726_Km0434)*(1+x(193)/reaction_r_0726_Km1029)+(1+x(132)/reaction_r_0726_Km0633)*(1+x(234)/reaction_r_0726_Km1322)*(1+x(253)/reaction_r_0726_Km1416)-1);

% Reaction: id = r_0727, name = methionine synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0727_FLUX_VALUE=0.00250816743817059;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0727_Vmax=0.0351143441343883;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0727_Keq=2.0;
	% Local Parameter:   id =  Km0322, name = Km0322
	reaction_r_0727_Km0322=0.1;
	% Local Parameter:   id =  Km1012, name = Km1012
	reaction_r_0727_Km1012=0.1;
	% Local Parameter:   id =  Km1029, name = Km1029
	reaction_r_0727_Km1029=0.1;
	% Local Parameter:   id =  Km1487, name = Km1487
	reaction_r_0727_Km1487=0.1;

	reaction_r_0727=compartment_cell*reaction_r_0727_Vmax*(x(67)*x(188)-x(193)*x(263)/reaction_r_0727_Keq)/(reaction_r_0727_Km0322*reaction_r_0727_Km1012)/((1+x(67)/reaction_r_0727_Km0322)*(1+x(188)/reaction_r_0727_Km1012)+(1+x(193)/reaction_r_0727_Km1029)*(1+x(263)/reaction_r_0727_Km1487)-1);

% Reaction: id = r_0729, name = methionyl-tRNA synthetase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0729_FLUX_VALUE=0.00192419218780178;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0729_Vmax=0.0577257656340534;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0729_Keq=2.0;
	% Local Parameter:   id =  Km0434, name = Km0434
	reaction_r_0729_Km0434=0.1;
	% Local Parameter:   id =  Km1029, name = Km1029
	reaction_r_0729_Km1029=0.1;
	% Local Parameter:   id =  Km1602, name = Km1602
	reaction_r_0729_Km1602=0.1;
	% Local Parameter:   id =  Km0423, name = Km0423
	reaction_r_0729_Km0423=0.1;
	% Local Parameter:   id =  Km0633, name = Km0633
	reaction_r_0729_Km0633=0.1;
	% Local Parameter:   id =  Km1148, name = Km1148
	reaction_r_0729_Km1148=0.1;

	reaction_r_0729=compartment_cell*reaction_r_0729_Vmax*(x(91)*x(193)*x(294)-x(86)*x(132)*x(210)/reaction_r_0729_Keq)/(reaction_r_0729_Km0434*reaction_r_0729_Km1029*reaction_r_0729_Km1602)/((1+x(91)/reaction_r_0729_Km0434)*(1+x(193)/reaction_r_0729_Km1029)*(1+x(294)/reaction_r_0729_Km1602)+(1+x(86)/reaction_r_0729_Km0423)*(1+x(132)/reaction_r_0729_Km0633)*(1+x(210)/reaction_r_0729_Km1148)-1);

% Reaction: id = r_0731, name = methylenetetrahydrofolate dehydrogenase (NAD)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0731_FLUX_VALUE=1.95938592660585;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0731_Vmax=27.4314029724819;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0731_Keq=2.0;
	% Local Parameter:   id =  Km0306, name = Km0306
	reaction_r_0731_Km0306=0.1;
	% Local Parameter:   id =  Km1198, name = Km1198
	reaction_r_0731_Km1198=0.1;
	% Local Parameter:   id =  Km0304, name = Km0304
	reaction_r_0731_Km0304=0.1;
	% Local Parameter:   id =  Km1203, name = Km1203
	reaction_r_0731_Km1203=0.1;

	reaction_r_0731=compartment_cell*reaction_r_0731_Vmax*(x(63)*x(219)-x(62)*x(220)/reaction_r_0731_Keq)/(reaction_r_0731_Km0306*reaction_r_0731_Km1198)/((1+x(63)/reaction_r_0731_Km0306)*(1+x(219)/reaction_r_0731_Km1198)+(1+x(62)/reaction_r_0731_Km0304)*(1+x(220)/reaction_r_0731_Km1203)-1);

% Reaction: id = r_0732, name = methylenetetrahydrofolate dehydrogenase (NADP)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0732_FLUX_VALUE=0.926267376418038;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0732_Vmax=12.9677432698525;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0732_Keq=2.0;
	% Local Parameter:   id =  Km0306, name = Km0306
	reaction_r_0732_Km0306=0.1;
	% Local Parameter:   id =  Km1207, name = Km1207
	reaction_r_0732_Km1207=0.1;
	% Local Parameter:   id =  Km0304, name = Km0304
	reaction_r_0732_Km0304=0.1;
	% Local Parameter:   id =  Km1212, name = Km1212
	reaction_r_0732_Km1212=0.1;

	reaction_r_0732=compartment_cell*reaction_r_0732_Vmax*(x(63)*x(221)-x(62)*x(222)/reaction_r_0732_Keq)/(reaction_r_0732_Km0306*reaction_r_0732_Km1207)/((1+x(63)/reaction_r_0732_Km0306)*(1+x(221)/reaction_r_0732_Km1207)+(1+x(62)/reaction_r_0732_Km0304)*(1+x(222)/reaction_r_0732_Km1212)-1);

% Reaction: id = r_0736, name = mevalonate kinase (ctp)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0736_FLUX_VALUE=0.00155984810489089;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0736_Vmax=0.0218378734684725;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0736_Keq=2.0;
	% Local Parameter:   id =  Km0028, name = Km0028
	reaction_r_0736_Km0028=0.1;
	% Local Parameter:   id =  Km0539, name = Km0539
	reaction_r_0736_Km0539=0.1;
	% Local Parameter:   id =  Km0019, name = Km0019
	reaction_r_0736_Km0019=0.1;
	% Local Parameter:   id =  Km0467, name = Km0467
	reaction_r_0736_Km0467=0.1;

	reaction_r_0736=compartment_cell*reaction_r_0736_Vmax*(x(10)*x(107)-x(9)*x(96)/reaction_r_0736_Keq)/(reaction_r_0736_Km0028*reaction_r_0736_Km0539)/((1+x(10)/reaction_r_0736_Km0028)*(1+x(107)/reaction_r_0736_Km0539)+(1+x(9)/reaction_r_0736_Km0019)*(1+x(96)/reaction_r_0736_Km0467)-1);

% Reaction: id = r_0739, name = mevalonate pyrophoshate decarboxylase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0739_FLUX_VALUE=0.00155984810490301;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0739_Vmax=0.0592742279863144;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0739_Keq=0.02;
	% Local Parameter:   id =  Km0018, name = Km0018
	reaction_r_0739_Km0018=0.1;
	% Local Parameter:   id =  Km0434, name = Km0434
	reaction_r_0739_Km0434=0.1;
	% Local Parameter:   id =  Km0394, name = Km0394
	reaction_r_0739_Km0394=0.1;
	% Local Parameter:   id =  Km0456, name = Km0456
	reaction_r_0739_Km0456=0.1;
	% Local Parameter:   id =  Km0943, name = Km0943
	reaction_r_0739_Km0943=0.1;
	% Local Parameter:   id =  Km1322, name = Km1322
	reaction_r_0739_Km1322=0.1;

	reaction_r_0739=compartment_cell*reaction_r_0739_Vmax*(x(8)*x(91)-x(81)*x(95)*x(170)*x(234)/reaction_r_0739_Keq)/(reaction_r_0739_Km0018*reaction_r_0739_Km0434)/((1+x(8)/reaction_r_0739_Km0018)*(1+x(91)/reaction_r_0739_Km0434)+(1+x(81)/reaction_r_0739_Km0394)*(1+x(95)/reaction_r_0739_Km0456)*(1+x(170)/reaction_r_0739_Km0943)*(1+x(234)/reaction_r_0739_Km1322)-1);

% Reaction: id = r_0757, name = myo-inositol 1-phosphatase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0757_FLUX_VALUE=8.05209910738368E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0757_Vmax=8.05209910738368E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0757_Keq=0.2;
	% Local Parameter:   id =  Km0126, name = Km0126
	reaction_r_0757_Km0126=0.1;
	% Local Parameter:   id =  Km1153, name = Km1153
	reaction_r_0757_Km1153=0.1;
	% Local Parameter:   id =  Km1322, name = Km1322
	reaction_r_0757_Km1322=0.1;

	reaction_r_0757=compartment_cell*reaction_r_0757_Vmax*(x(26)-x(211)*x(234)/reaction_r_0757_Keq)/reaction_r_0757_Km0126/(1+x(26)/reaction_r_0757_Km0126+(1+x(211)/reaction_r_0757_Km1153)*(1+x(234)/reaction_r_0757_Km1322)-1);

% Reaction: id = r_0758, name = myo-inositol-1-phosphate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0758_FLUX_VALUE=8.05209911324267E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0758_Vmax=4.8312594679456E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0758_Keq=2.0;
	% Local Parameter:   id =  Km0568, name = Km0568
	reaction_r_0758_Km0568=0.1;
	% Local Parameter:   id =  Km0126, name = Km0126
	reaction_r_0758_Km0126=0.1;

	reaction_r_0758=compartment_cell*reaction_r_0758_Vmax*(x(115)-x(26)/reaction_r_0758_Keq)/reaction_r_0758_Km0568/(1+x(115)/reaction_r_0758_Km0568+1+x(26)/reaction_r_0758_Km0126-1);

% Reaction: id = r_0759, name = N-acetyl-g-glutamyl-phosphate reductase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0759_FLUX_VALUE=0.00609896813767666;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0759_Vmax=0.134177299028887;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0759_Keq=0.2;
	% Local Parameter:   id =  Km1191, name = Km1191
	reaction_r_0759_Km1191=0.1;
	% Local Parameter:   id =  Km1212, name = Km1212
	reaction_r_0759_Km1212=0.1;
	% Local Parameter:   id =  Km0145, name = Km0145
	reaction_r_0759_Km0145=0.1;
	% Local Parameter:   id =  Km1207, name = Km1207
	reaction_r_0759_Km1207=0.1;
	% Local Parameter:   id =  Km1322, name = Km1322
	reaction_r_0759_Km1322=0.1;

	reaction_r_0759=compartment_cell*reaction_r_0759_Vmax*(x(216)*x(222)-x(29)*x(221)*x(234)/reaction_r_0759_Keq)/(reaction_r_0759_Km1191*reaction_r_0759_Km1212)/((1+x(216)/reaction_r_0759_Km1191)*(1+x(222)/reaction_r_0759_Km1212)+(1+x(29)/reaction_r_0759_Km0145)*(1+x(221)/reaction_r_0759_Km1207)*(1+x(234)/reaction_r_0759_Km1322)-1);

% Reaction: id = r_0770, name = NADH dehydrogenase, cytosolic/mitochondrial	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0770_FLUX_VALUE=5.86779635397505;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0770_Vmax=82.1491489556507;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0770_Keq=2.0;
	% Local Parameter:   id =  Km1203, name = Km1203
	reaction_r_0770_Km1203=0.1;
	% Local Parameter:   id =  Km1537, name = Km1537
	reaction_r_0770_Km1537=0.1;
	% Local Parameter:   id =  Km1198, name = Km1198
	reaction_r_0770_Km1198=0.1;
	% Local Parameter:   id =  Km1535, name = Km1535
	reaction_r_0770_Km1535=0.1;

	reaction_r_0770=compartment_cell*reaction_r_0770_Vmax*(x(220)*x(270)-x(219)*x(269)/reaction_r_0770_Keq)/(reaction_r_0770_Km1203*reaction_r_0770_Km1537)/((1+x(220)/reaction_r_0770_Km1203)*(1+x(270)/reaction_r_0770_Km1537)+(1+x(219)/reaction_r_0770_Km1198)*(1+x(269)/reaction_r_0770_Km1535)-1);

% Reaction: id = r_0792, name = nucleoside diphosphatase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0792_FLUX_VALUE=0.0014653985431621;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0792_Vmax=0.014653985431621;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0792_Keq=0.2;
	% Local Parameter:   id =  Km0467, name = Km0467
	reaction_r_0792_Km0467=0.1;
	% Local Parameter:   id =  Km0526, name = Km0526
	reaction_r_0792_Km0526=0.1;
	% Local Parameter:   id =  Km1322, name = Km1322
	reaction_r_0792_Km1322=0.1;

	reaction_r_0792=compartment_cell*reaction_r_0792_Vmax*(x(96)-x(105)*x(234)/reaction_r_0792_Keq)/reaction_r_0792_Km0467/(1+x(96)/reaction_r_0792_Km0467+(1+x(105)/reaction_r_0792_Km0526)*(1+x(234)/reaction_r_0792_Km1322)-1);

% Reaction: id = r_0800, name = nucleoside diphosphate kinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0800_FLUX_VALUE=0.0350981004584189;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0800_Vmax=0.491373406417865;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0800_Keq=2.0;
	% Local Parameter:   id =  Km0434, name = Km0434
	reaction_r_0800_Km0434=0.1;
	% Local Parameter:   id =  Km0739, name = Km0739
	reaction_r_0800_Km0739=0.1;
	% Local Parameter:   id =  Km0394, name = Km0394
	reaction_r_0800_Km0394=0.1;
	% Local Parameter:   id =  Km0785, name = Km0785
	reaction_r_0800_Km0785=0.1;

	reaction_r_0800=compartment_cell*reaction_r_0800_Vmax*(x(91)*x(148)-x(81)*x(160)/reaction_r_0800_Keq)/(reaction_r_0800_Km0434*reaction_r_0800_Km0739)/((1+x(91)/reaction_r_0800_Km0434)*(1+x(148)/reaction_r_0800_Km0739)+(1+x(81)/reaction_r_0800_Km0394)*(1+x(160)/reaction_r_0800_Km0785)-1);

% Reaction: id = r_0811, name = nucleoside-diphosphate kinase (ATP:UDP)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0811_FLUX_VALUE=0.10862767021555;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0811_Vmax=1.5207873830177;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0811_Keq=2.0;
	% Local Parameter:   id =  Km0434, name = Km0434
	reaction_r_0811_Km0434=0.1;
	% Local Parameter:   id =  Km1538, name = Km1538
	reaction_r_0811_Km1538=0.1;
	% Local Parameter:   id =  Km0394, name = Km0394
	reaction_r_0811_Km0394=0.1;
	% Local Parameter:   id =  Km1559, name = Km1559
	reaction_r_0811_Km1559=0.1;

	reaction_r_0811=compartment_cell*reaction_r_0811_Vmax*(x(91)*x(271)-x(81)*x(274)/reaction_r_0811_Keq)/(reaction_r_0811_Km0434*reaction_r_0811_Km1538)/((1+x(91)/reaction_r_0811_Km0434)*(1+x(271)/reaction_r_0811_Km1538)+(1+x(81)/reaction_r_0811_Km0394)*(1+x(274)/reaction_r_0811_Km1559)-1);

% Reaction: id = r_0813, name = O-acetylhomoserine (thiol)-lyase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0813_FLUX_VALUE=0.00217467874388578;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0813_Vmax=0.0304455024144009;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0813_Keq=2.0;
	% Local Parameter:   id =  Km0841, name = Km0841
	reaction_r_0813_Km0841=0.1;
	% Local Parameter:   id =  Km1233, name = Km1233
	reaction_r_0813_Km1233=0.1;
	% Local Parameter:   id =  Km0362, name = Km0362
	reaction_r_0813_Km0362=0.1;
	% Local Parameter:   id =  Km1012, name = Km1012
	reaction_r_0813_Km1012=0.1;

	reaction_r_0813=compartment_cell*reaction_r_0813_Vmax*(x(165)*x(223)-x(74)*x(188)/reaction_r_0813_Keq)/(reaction_r_0813_Km0841*reaction_r_0813_Km1233)/((1+x(165)/reaction_r_0813_Km0841)*(1+x(223)/reaction_r_0813_Km1233)+(1+x(74)/reaction_r_0813_Km0362)*(1+x(188)/reaction_r_0813_Km1012)-1);

% Reaction: id = r_0816, name = ornithine carbamoyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0816_FLUX_VALUE=0.00609896813766667;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0816_Vmax=0.0853855539273334;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0816_Keq=2.0;
	% Local Parameter:   id =  Km0455, name = Km0455
	reaction_r_0816_Km0455=0.1;
	% Local Parameter:   id =  Km1266, name = Km1266
	reaction_r_0816_Km1266=0.1;
	% Local Parameter:   id =  Km0979, name = Km0979
	reaction_r_0816_Km0979=0.1;
	% Local Parameter:   id =  Km1322, name = Km1322
	reaction_r_0816_Km1322=0.1;

	reaction_r_0816=compartment_cell*reaction_r_0816_Vmax*(x(94)*x(226)-x(179)*x(234)/reaction_r_0816_Keq)/(reaction_r_0816_Km0455*reaction_r_0816_Km1266)/((1+x(94)/reaction_r_0816_Km0455)*(1+x(226)/reaction_r_0816_Km1266)+(1+x(179)/reaction_r_0816_Km0979)*(1+x(234)/reaction_r_0816_Km1322)-1);

% Reaction: id = r_0818, name = ornithine transacetylase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0818_FLUX_VALUE=0.00609896813767666;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0818_Vmax=0.0853855539274732;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0818_Keq=2.0;
	% Local Parameter:   id =  Km0991, name = Km0991
	reaction_r_0818_Km0991=0.1;
	% Local Parameter:   id =  Km1182, name = Km1182
	reaction_r_0818_Km1182=0.1;
	% Local Parameter:   id =  Km1192, name = Km1192
	reaction_r_0818_Km1192=0.1;
	% Local Parameter:   id =  Km1266, name = Km1266
	reaction_r_0818_Km1266=0.1;

	reaction_r_0818=compartment_cell*reaction_r_0818_Vmax*(x(182)*x(214)-x(217)*x(226)/reaction_r_0818_Keq)/(reaction_r_0818_Km0991*reaction_r_0818_Km1182)/((1+x(182)/reaction_r_0818_Km0991)*(1+x(214)/reaction_r_0818_Km1182)+(1+x(217)/reaction_r_0818_Km1192)*(1+x(226)/reaction_r_0818_Km1266)-1);

% Reaction: id = r_0820, name = orotate phosphoribosyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0820_FLUX_VALUE=0.00419754745504612;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0820_Vmax=0.0587656643706457;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0820_Keq=2.0;
	% Local Parameter:   id =  Km1269, name = Km1269
	reaction_r_0820_Km1269=0.1;
	% Local Parameter:   id =  Km1386, name = Km1386
	reaction_r_0820_Km1386=0.1;
	% Local Parameter:   id =  Km0633, name = Km0633
	reaction_r_0820_Km0633=0.1;
	% Local Parameter:   id =  Km1270, name = Km1270
	reaction_r_0820_Km1270=0.1;

	reaction_r_0820=compartment_cell*reaction_r_0820_Vmax*(x(227)*x(248)-x(132)*x(228)/reaction_r_0820_Keq)/(reaction_r_0820_Km1269*reaction_r_0820_Km1386)/((1+x(227)/reaction_r_0820_Km1269)*(1+x(248)/reaction_r_0820_Km1386)+(1+x(132)/reaction_r_0820_Km0633)*(1+x(228)/reaction_r_0820_Km1270)-1);

% Reaction: id = r_0821, name = orotidine-5'-phosphate decarboxylase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0821_FLUX_VALUE=0.00419754745504612;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0821_Vmax=0.0419754745504612;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0821_Keq=0.2;
	% Local Parameter:   id =  Km1270, name = Km1270
	reaction_r_0821_Km1270=0.1;
	% Local Parameter:   id =  Km0456, name = Km0456
	reaction_r_0821_Km0456=0.1;
	% Local Parameter:   id =  Km1545, name = Km1545
	reaction_r_0821_Km1545=0.1;

	reaction_r_0821=compartment_cell*reaction_r_0821_Vmax*(x(228)-x(95)*x(273)/reaction_r_0821_Keq)/reaction_r_0821_Km1270/(1+x(228)/reaction_r_0821_Km1270+(1+x(95)/reaction_r_0821_Km0456)*(1+x(273)/reaction_r_0821_Km1545)-1);

% Reaction: id = r_0851, name = phenylalanine transaminase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0851_FLUX_VALUE=0.00508184090605392;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0851_Vmax=0.0711457726847549;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0851_Keq=2.0;
	% Local Parameter:   id =  Km0951, name = Km0951
	reaction_r_0851_Km0951=0.1;
	% Local Parameter:   id =  Km0991, name = Km0991
	reaction_r_0851_Km0991=0.1;
	% Local Parameter:   id =  Km0180, name = Km0180
	reaction_r_0851_Km0180=0.1;
	% Local Parameter:   id =  Km1032, name = Km1032
	reaction_r_0851_Km1032=0.1;

	reaction_r_0851=compartment_cell*reaction_r_0851_Vmax*(x(171)*x(182)-x(36)*x(194)/reaction_r_0851_Keq)/(reaction_r_0851_Km0951*reaction_r_0851_Km0991)/((1+x(171)/reaction_r_0851_Km0951)*(1+x(182)/reaction_r_0851_Km0991)+(1+x(36)/reaction_r_0851_Km0180)*(1+x(194)/reaction_r_0851_Km1032)-1);

% Reaction: id = r_0852, name = phenylalanyl-tRNA synthetase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0852_FLUX_VALUE=0.00508184090624576;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0852_Vmax=0.152455227187373;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0852_Keq=2.0;
	% Local Parameter:   id =  Km0434, name = Km0434
	reaction_r_0852_Km0434=0.1;
	% Local Parameter:   id =  Km1032, name = Km1032
	reaction_r_0852_Km1032=0.1;
	% Local Parameter:   id =  Km1604, name = Km1604
	reaction_r_0852_Km1604=0.1;
	% Local Parameter:   id =  Km0423, name = Km0423
	reaction_r_0852_Km0423=0.1;
	% Local Parameter:   id =  Km0633, name = Km0633
	reaction_r_0852_Km0633=0.1;
	% Local Parameter:   id =  Km1314, name = Km1314
	reaction_r_0852_Km1314=0.1;

	reaction_r_0852=compartment_cell*reaction_r_0852_Vmax*(x(91)*x(194)*x(295)-x(86)*x(132)*x(233)/reaction_r_0852_Keq)/(reaction_r_0852_Km0434*reaction_r_0852_Km1032*reaction_r_0852_Km1604)/((1+x(91)/reaction_r_0852_Km0434)*(1+x(194)/reaction_r_0852_Km1032)*(1+x(295)/reaction_r_0852_Km1604)+(1+x(86)/reaction_r_0852_Km0423)*(1+x(132)/reaction_r_0852_Km0633)*(1+x(233)/reaction_r_0852_Km1314)-1);

% Reaction: id = r_0855, name = phopshoribosylaminoimidazole synthetase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0855_FLUX_VALUE=0.00375691882979276;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0855_Vmax=0.0826522142554407;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0855_Keq=0.2;
	% Local Parameter:   id =  Km0302, name = Km0302
	reaction_r_0855_Km0302=0.1;
	% Local Parameter:   id =  Km0434, name = Km0434
	reaction_r_0855_Km0434=0.1;
	% Local Parameter:   id =  Km0300, name = Km0300
	reaction_r_0855_Km0300=0.1;
	% Local Parameter:   id =  Km0394, name = Km0394
	reaction_r_0855_Km0394=0.1;
	% Local Parameter:   id =  Km1322, name = Km1322
	reaction_r_0855_Km1322=0.1;

	reaction_r_0855=compartment_cell*reaction_r_0855_Vmax*(x(61)*x(91)-x(59)*x(81)*x(234)/reaction_r_0855_Keq)/(reaction_r_0855_Km0302*reaction_r_0855_Km0434)/((1+x(61)/reaction_r_0855_Km0302)*(1+x(91)/reaction_r_0855_Km0434)+(1+x(59)/reaction_r_0855_Km0300)*(1+x(81)/reaction_r_0855_Km0394)*(1+x(234)/reaction_r_0855_Km1322)-1);

% Reaction: id = r_0858, name = phosphatidylethanolamine methyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0858_FLUX_VALUE=1.09303224869629E-4;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0858_Vmax=0.00153024514817481;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0858_Keq=2.0;
	% Local Parameter:   id =  Km1351, name = Km1351
	reaction_r_0858_Km1351=0.1;
	% Local Parameter:   id =  Km1416, name = Km1416
	reaction_r_0858_Km1416=0.1;
	% Local Parameter:   id =  Km1343, name = Km1343
	reaction_r_0858_Km1343=0.1;
	% Local Parameter:   id =  Km1413, name = Km1413
	reaction_r_0858_Km1413=0.1;

	reaction_r_0858=compartment_cell*reaction_r_0858_Vmax*(x(240)*x(253)-x(238)*x(252)/reaction_r_0858_Keq)/(reaction_r_0858_Km1351*reaction_r_0858_Km1416)/((1+x(240)/reaction_r_0858_Km1351)*(1+x(253)/reaction_r_0858_Km1416)+(1+x(238)/reaction_r_0858_Km1343)*(1+x(252)/reaction_r_0858_Km1413)-1);

% Reaction: id = r_0874, name = phosphatidylinositol synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0874_FLUX_VALUE=8.05209910738368E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0874_Vmax=0.00112729387503372;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0874_Keq=2.0;
	% Local Parameter:   id =  Km0471, name = Km0471
	reaction_r_0874_Km0471=0.1;
	% Local Parameter:   id =  Km1153, name = Km1153
	reaction_r_0874_Km1153=0.1;
	% Local Parameter:   id =  Km0089, name = Km0089
	reaction_r_0874_Km0089=0.1;
	% Local Parameter:   id =  Km0526, name = Km0526
	reaction_r_0874_Km0526=0.1;

	reaction_r_0874=compartment_cell*reaction_r_0874_Vmax*(x(97)*x(211)-x(22)*x(105)/reaction_r_0874_Keq)/(reaction_r_0874_Km0471*reaction_r_0874_Km1153)/((1+x(97)/reaction_r_0874_Km0471)*(1+x(211)/reaction_r_0874_Km1153)+(1+x(22)/reaction_r_0874_Km0089)*(1+x(105)/reaction_r_0874_Km0526)-1);

% Reaction: id = r_0877, name = phosphatidylserine decarboxylase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0877_FLUX_VALUE=1.3575612338737E-4;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0877_Vmax=0.0013575612338737;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0877_Keq=0.2;
	% Local Parameter:   id =  Km1337, name = Km1337
	reaction_r_0877_Km1337=0.1;
	% Local Parameter:   id =  Km0456, name = Km0456
	reaction_r_0877_Km0456=0.1;
	% Local Parameter:   id =  Km1351, name = Km1351
	reaction_r_0877_Km1351=0.1;

	reaction_r_0877=compartment_cell*reaction_r_0877_Vmax*(x(236)-x(95)*x(240)/reaction_r_0877_Keq)/reaction_r_0877_Km1337/(1+x(236)/reaction_r_0877_Km1337+(1+x(95)/reaction_r_0877_Km0456)*(1+x(240)/reaction_r_0877_Km1351)-1);

% Reaction: id = r_0880, name = phosphatidylserine synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0880_FLUX_VALUE=1.50557601754342E-4;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0880_Vmax=0.00210780642456079;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0880_Keq=2.0;
	% Local Parameter:   id =  Km0471, name = Km0471
	reaction_r_0880_Km0471=0.1;
	% Local Parameter:   id =  Km1039, name = Km1039
	reaction_r_0880_Km1039=0.1;
	% Local Parameter:   id =  Km0526, name = Km0526
	reaction_r_0880_Km0526=0.1;
	% Local Parameter:   id =  Km1337, name = Km1337
	reaction_r_0880_Km1337=0.1;

	reaction_r_0880=compartment_cell*reaction_r_0880_Vmax*(x(97)*x(197)-x(105)*x(236)/reaction_r_0880_Keq)/(reaction_r_0880_Km0471*reaction_r_0880_Km1039)/((1+x(97)/reaction_r_0880_Km0471)*(1+x(197)/reaction_r_0880_Km1039)+(1+x(105)/reaction_r_0880_Km0526)*(1+x(236)/reaction_r_0880_Km1337)-1);

% Reaction: id = r_0883, name = phosphoadenylyl-sulfate reductase (thioredoxin)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0883_FLUX_VALUE=0.00217467874478967;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0883_Vmax=0.0478429323853727;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0883_Keq=0.2;
	% Local Parameter:   id =  Km0201, name = Km0201
	reaction_r_0883_Km0201=0.1;
	% Local Parameter:   id =  Km1616, name = Km1616
	reaction_r_0883_Km1616=0.1;
	% Local Parameter:   id =  Km0390, name = Km0390
	reaction_r_0883_Km0390=0.1;
	% Local Parameter:   id =  Km1469, name = Km1469
	reaction_r_0883_Km1469=0.1;
	% Local Parameter:   id =  Km1620, name = Km1620
	reaction_r_0883_Km1620=0.1;

	reaction_r_0883=compartment_cell*reaction_r_0883_Vmax*(x(39)*x(302)-x(79)*x(262)*x(303)/reaction_r_0883_Keq)/(reaction_r_0883_Km0201*reaction_r_0883_Km1616)/((1+x(39)/reaction_r_0883_Km0201)*(1+x(302)/reaction_r_0883_Km1616)+(1+x(79)/reaction_r_0883_Km0390)*(1+x(262)/reaction_r_0883_Km1469)*(1+x(303)/reaction_r_0883_Km1620)-1);

% Reaction: id = r_0886, name = phosphofructokinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0886_FLUX_VALUE=0.850573321329957;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0886_Vmax=11.9080264986194;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0886_Keq=2.0;
	% Local Parameter:   id =  Km0434, name = Km0434
	reaction_r_0886_Km0434=0.1;
	% Local Parameter:   id =  Km0557, name = Km0557
	reaction_r_0886_Km0557=0.1;
	% Local Parameter:   id =  Km0394, name = Km0394
	reaction_r_0886_Km0394=0.1;
	% Local Parameter:   id =  Km0555, name = Km0555
	reaction_r_0886_Km0555=0.1;

	reaction_r_0886=compartment_cell*reaction_r_0886_Vmax*(x(91)*x(112)-x(81)*x(111)/reaction_r_0886_Keq)/(reaction_r_0886_Km0434*reaction_r_0886_Km0557)/((1+x(91)/reaction_r_0886_Km0434)*(1+x(112)/reaction_r_0886_Km0557)+(1+x(81)/reaction_r_0886_Km0394)*(1+x(111)/reaction_r_0886_Km0555)-1);

% Reaction: id = r_0888, name = phosphoglucomutase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0888_FLUX_VALUE=0.106703478027702;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0888_Vmax=0.640220868166212;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0888_Keq=2.0;
	% Local Parameter:   id =  Km0568, name = Km0568
	reaction_r_0888_Km0568=0.1;
	% Local Parameter:   id =  Km0567, name = Km0567
	reaction_r_0888_Km0567=0.1;

	reaction_r_0888=compartment_cell*reaction_r_0888_Vmax*(x(115)-x(114)/reaction_r_0888_Keq)/reaction_r_0888_Km0568/(1+x(115)/reaction_r_0888_Km0568+1+x(114)/reaction_r_0888_Km0567-1);

% Reaction: id = r_0891, name = phosphoglycerate dehydrogenase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0891_FLUX_VALUE=1.46007394609031;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0891_Vmax=20.4410352452643;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0891_Keq=2.0;
	% Local Parameter:   id =  Km0260, name = Km0260
	reaction_r_0891_Km0260=0.1;
	% Local Parameter:   id =  Km1198, name = Km1198
	reaction_r_0891_Km1198=0.1;
	% Local Parameter:   id =  Km0258, name = Km0258
	reaction_r_0891_Km0258=0.1;
	% Local Parameter:   id =  Km1203, name = Km1203
	reaction_r_0891_Km1203=0.1;

	reaction_r_0891=compartment_cell*reaction_r_0891_Vmax*(x(50)*x(219)-x(48)*x(220)/reaction_r_0891_Keq)/(reaction_r_0891_Km0260*reaction_r_0891_Km1198)/((1+x(50)/reaction_r_0891_Km0260)*(1+x(219)/reaction_r_0891_Km1198)+(1+x(48)/reaction_r_0891_Km0258)*(1+x(220)/reaction_r_0891_Km1203)-1);

% Reaction: id = r_0892, name = phosphoglycerate kinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0892_FLUX_VALUE=1.69142241294296;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0892_Vmax=23.6799137812014;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0892_Keq=2.0;
	% Local Parameter:   id =  Km0075, name = Km0075
	reaction_r_0892_Km0075=0.1;
	% Local Parameter:   id =  Km0394, name = Km0394
	reaction_r_0892_Km0394=0.1;
	% Local Parameter:   id =  Km0260, name = Km0260
	reaction_r_0892_Km0260=0.1;
	% Local Parameter:   id =  Km0434, name = Km0434
	reaction_r_0892_Km0434=0.1;

	reaction_r_0892=compartment_cell*reaction_r_0892_Vmax*(x(16)*x(81)-x(50)*x(91)/reaction_r_0892_Keq)/(reaction_r_0892_Km0075*reaction_r_0892_Km0394)/((1+x(16)/reaction_r_0892_Km0075)*(1+x(81)/reaction_r_0892_Km0394)+(1+x(50)/reaction_r_0892_Km0260)*(1+x(91)/reaction_r_0892_Km0434)-1);

% Reaction: id = r_0893, name = phosphoglycerate mutase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0893_FLUX_VALUE=0.231348466852626;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0893_Vmax=1.38809080111576;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0893_Keq=2.0;
	% Local Parameter:   id =  Km0260, name = Km0260
	reaction_r_0893_Km0260=0.1;
	% Local Parameter:   id =  Km0188, name = Km0188
	reaction_r_0893_Km0188=0.1;

	reaction_r_0893=compartment_cell*reaction_r_0893_Vmax*(x(50)-x(37)/reaction_r_0893_Keq)/reaction_r_0893_Km0260/(1+x(50)/reaction_r_0893_Km0260+1+x(37)/reaction_r_0893_Km0188-1);

% Reaction: id = r_0900, name = phospholipid methyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0900_FLUX_VALUE=1.09303224869629E-4;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0900_Vmax=0.00153024514817481;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0900_Keq=2.0;
	% Local Parameter:   id =  Km1342, name = Km1342
	reaction_r_0900_Km1342=0.1;
	% Local Parameter:   id =  Km1416, name = Km1416
	reaction_r_0900_Km1416=0.1;
	% Local Parameter:   id =  Km1346, name = Km1346
	reaction_r_0900_Km1346=0.1;
	% Local Parameter:   id =  Km1413, name = Km1413
	reaction_r_0900_Km1413=0.1;

	reaction_r_0900=compartment_cell*reaction_r_0900_Vmax*(x(237)*x(253)-x(239)*x(252)/reaction_r_0900_Keq)/(reaction_r_0900_Km1342*reaction_r_0900_Km1416)/((1+x(237)/reaction_r_0900_Km1342)*(1+x(253)/reaction_r_0900_Km1416)+(1+x(239)/reaction_r_0900_Km1346)*(1+x(252)/reaction_r_0900_Km1413)-1);

% Reaction: id = r_0901, name = phospholipid methyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0901_FLUX_VALUE=1.09303224869629E-4;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0901_Vmax=0.00153024514817481;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0901_Keq=2.0;
	% Local Parameter:   id =  Km1343, name = Km1343
	reaction_r_0901_Km1343=0.1;
	% Local Parameter:   id =  Km1416, name = Km1416
	reaction_r_0901_Km1416=0.1;
	% Local Parameter:   id =  Km1342, name = Km1342
	reaction_r_0901_Km1342=0.1;
	% Local Parameter:   id =  Km1413, name = Km1413
	reaction_r_0901_Km1413=0.1;

	reaction_r_0901=compartment_cell*reaction_r_0901_Vmax*(x(238)*x(253)-x(237)*x(252)/reaction_r_0901_Keq)/(reaction_r_0901_Km1343*reaction_r_0901_Km1416)/((1+x(238)/reaction_r_0901_Km1343)*(1+x(253)/reaction_r_0901_Km1416)+(1+x(237)/reaction_r_0901_Km1342)*(1+x(252)/reaction_r_0901_Km1413)-1);

% Reaction: id = r_0902, name = phosphomannomutase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0902_FLUX_VALUE=0.0306618317263325;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0902_Vmax=0.183970990357995;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0902_Keq=2.0;
	% Local Parameter:   id =  Km0574, name = Km0574
	reaction_r_0902_Km0574=0.1;
	% Local Parameter:   id =  Km0573, name = Km0573
	reaction_r_0902_Km0573=0.1;

	reaction_r_0902=compartment_cell*reaction_r_0902_Vmax*(x(117)-x(116)/reaction_r_0902_Keq)/reaction_r_0902_Km0574/(1+x(117)/reaction_r_0902_Km0574+1+x(116)/reaction_r_0902_Km0573-1);

% Reaction: id = r_0904, name = phosphomevalonate kinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0904_FLUX_VALUE=0.00155984810490301;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0904_Vmax=0.0218378734686421;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0904_Keq=2.0;
	% Local Parameter:   id =  Km0019, name = Km0019
	reaction_r_0904_Km0019=0.1;
	% Local Parameter:   id =  Km0434, name = Km0434
	reaction_r_0904_Km0434=0.1;
	% Local Parameter:   id =  Km0018, name = Km0018
	reaction_r_0904_Km0018=0.1;
	% Local Parameter:   id =  Km0394, name = Km0394
	reaction_r_0904_Km0394=0.1;

	reaction_r_0904=compartment_cell*reaction_r_0904_Vmax*(x(9)*x(91)-x(8)*x(81)/reaction_r_0904_Keq)/(reaction_r_0904_Km0019*reaction_r_0904_Km0434)/((1+x(9)/reaction_r_0904_Km0019)*(1+x(91)/reaction_r_0904_Km0434)+(1+x(8)/reaction_r_0904_Km0018)*(1+x(81)/reaction_r_0904_Km0394)-1);

% Reaction: id = r_0908, name = phosphoribosyl amino imidazolesuccinocarbozamide synthetase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0908_FLUX_VALUE=0.00375691882979276;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0908_Vmax=0.112707564893783;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0908_Keq=2.0;
	% Local Parameter:   id =  Km0434, name = Km0434
	reaction_r_0908_Km0434=0.1;
	% Local Parameter:   id =  Km0973, name = Km0973
	reaction_r_0908_Km0973=0.1;
	% Local Parameter:   id =  Km1364, name = Km1364
	reaction_r_0908_Km1364=0.1;
	% Local Parameter:   id =  Km0299, name = Km0299
	reaction_r_0908_Km0299=0.1;
	% Local Parameter:   id =  Km0394, name = Km0394
	reaction_r_0908_Km0394=0.1;
	% Local Parameter:   id =  Km1322, name = Km1322
	reaction_r_0908_Km1322=0.1;

	reaction_r_0908=compartment_cell*reaction_r_0908_Vmax*(x(91)*x(177)*x(242)-x(58)*x(81)*x(234)/reaction_r_0908_Keq)/(reaction_r_0908_Km0434*reaction_r_0908_Km0973*reaction_r_0908_Km1364)/((1+x(91)/reaction_r_0908_Km0434)*(1+x(177)/reaction_r_0908_Km0973)*(1+x(242)/reaction_r_0908_Km1364)+(1+x(58)/reaction_r_0908_Km0299)*(1+x(81)/reaction_r_0908_Km0394)*(1+x(234)/reaction_r_0908_Km1322)-1);

% Reaction: id = r_0909, name = phosphoribosyl-AMP cyclohydrolase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0909_FLUX_VALUE=0.00251625132250899;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0909_Vmax=0.0150975079350539;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0909_Keq=2.0;
	% Local Parameter:   id =  Km0078, name = Km0078
	reaction_r_0909_Km0078=0.1;
	% Local Parameter:   id =  Km0077, name = Km0077
	reaction_r_0909_Km0077=0.1;

	reaction_r_0909=compartment_cell*reaction_r_0909_Vmax*(x(19)-x(18)/reaction_r_0909_Keq)/reaction_r_0909_Km0078/(1+x(19)/reaction_r_0909_Km0078+1+x(18)/reaction_r_0909_Km0077-1);

% Reaction: id = r_0910, name = phosphoribosyl-ATP pyrophosphatase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0910_FLUX_VALUE=0.00251625132250899;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0910_Vmax=0.0251625132250899;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0910_Keq=0.2;
	% Local Parameter:   id =  Km0326, name = Km0326
	reaction_r_0910_Km0326=0.1;
	% Local Parameter:   id =  Km0078, name = Km0078
	reaction_r_0910_Km0078=0.1;
	% Local Parameter:   id =  Km0633, name = Km0633
	reaction_r_0910_Km0633=0.1;

	reaction_r_0910=compartment_cell*reaction_r_0910_Vmax*(x(70)-x(19)*x(132)/reaction_r_0910_Keq)/reaction_r_0910_Km0326/(1+x(70)/reaction_r_0910_Km0326+(1+x(19)/reaction_r_0910_Km0078)*(1+x(132)/reaction_r_0910_Km0633)-1);

% Reaction: id = r_0911, name = phosphoribosylaminoimidazole-carboxylase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0911_FLUX_VALUE=0.00375691882979276;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0911_Vmax=0.112707564893783;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0911_Keq=2.0;
	% Local Parameter:   id =  Km0300, name = Km0300
	reaction_r_0911_Km0300=0.1;
	% Local Parameter:   id =  Km0456, name = Km0456
	reaction_r_0911_Km0456=0.1;
	% Local Parameter:   id =  Km0434, name = Km0434
	reaction_r_0911_Km0434=0.1;
	% Local Parameter:   id =  Km1364, name = Km1364
	reaction_r_0911_Km1364=0.1;
	% Local Parameter:   id =  Km0394, name = Km0394
	reaction_r_0911_Km0394=0.1;
	% Local Parameter:   id =  Km1322, name = Km1322
	reaction_r_0911_Km1322=0.1;

	reaction_r_0911=compartment_cell*reaction_r_0911_Vmax*(x(59)*x(95)*x(91)-x(242)*x(81)*x(234)/reaction_r_0911_Keq)/(reaction_r_0911_Km0300*reaction_r_0911_Km0456*reaction_r_0911_Km0434)/((1+x(59)/reaction_r_0911_Km0300)*(1+x(95)/reaction_r_0911_Km0456)*(1+x(91)/reaction_r_0911_Km0434)+(1+x(242)/reaction_r_0911_Km1364)*(1+x(81)/reaction_r_0911_Km0394)*(1+x(234)/reaction_r_0911_Km1322)-1);

% Reaction: id = r_0912, name = phosphoribosylaminoimidazolecarboxamide formyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0912_FLUX_VALUE=0.00627317015230181;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0912_Vmax=0.0878243821322253;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0912_Keq=2.0;
	% Local Parameter:   id =  Km0120, name = Km0120
	reaction_r_0912_Km0120=0.1;
	% Local Parameter:   id =  Km0403, name = Km0403
	reaction_r_0912_Km0403=0.1;
	% Local Parameter:   id =  Km1365, name = Km1365
	reaction_r_0912_Km1365=0.1;
	% Local Parameter:   id =  Km1487, name = Km1487
	reaction_r_0912_Km1487=0.1;

	reaction_r_0912=compartment_cell*reaction_r_0912_Vmax*(x(24)*x(82)-x(243)*x(263)/reaction_r_0912_Keq)/(reaction_r_0912_Km0120*reaction_r_0912_Km0403)/((1+x(24)/reaction_r_0912_Km0120)*(1+x(82)/reaction_r_0912_Km0403)+(1+x(243)/reaction_r_0912_Km1365)*(1+x(263)/reaction_r_0912_Km1487)-1);

% Reaction: id = r_0913, name = phosphoribosylanthranilate isomerase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0913_FLUX_VALUE=0.00107785124523996;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0913_Vmax=0.00646710747143976;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0913_Keq=2.0;
	% Local Parameter:   id =  Km1187, name = Km1187
	reaction_r_0913_Km1187=0.1;
	% Local Parameter:   id =  Km0076, name = Km0076
	reaction_r_0913_Km0076=0.1;

	reaction_r_0913=compartment_cell*reaction_r_0913_Vmax*(x(215)-x(17)/reaction_r_0913_Keq)/reaction_r_0913_Km1187/(1+x(215)/reaction_r_0913_Km1187+1+x(17)/reaction_r_0913_Km0076-1);

% Reaction: id = r_0914, name = phosphoribosylglycinamidine synthetase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0914_FLUX_VALUE=0.00375691882979276;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0914_Vmax=0.112707564893783;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0914_Keq=2.0;
	% Local Parameter:   id =  Km0327, name = Km0327
	reaction_r_0914_Km0327=0.1;
	% Local Parameter:   id =  Km0434, name = Km0434
	reaction_r_0914_Km0434=0.1;
	% Local Parameter:   id =  Km1003, name = Km1003
	reaction_r_0914_Km1003=0.1;
	% Local Parameter:   id =  Km0325, name = Km0325
	reaction_r_0914_Km0325=0.1;
	% Local Parameter:   id =  Km0394, name = Km0394
	reaction_r_0914_Km0394=0.1;
	% Local Parameter:   id =  Km1322, name = Km1322
	reaction_r_0914_Km1322=0.1;

	reaction_r_0914=compartment_cell*reaction_r_0914_Vmax*(x(71)*x(91)*x(184)-x(69)*x(81)*x(234)/reaction_r_0914_Keq)/(reaction_r_0914_Km0327*reaction_r_0914_Km0434*reaction_r_0914_Km1003)/((1+x(71)/reaction_r_0914_Km0327)*(1+x(91)/reaction_r_0914_Km0434)*(1+x(184)/reaction_r_0914_Km1003)+(1+x(69)/reaction_r_0914_Km0325)*(1+x(81)/reaction_r_0914_Km0394)*(1+x(234)/reaction_r_0914_Km1322)-1);

% Reaction: id = r_0915, name = phosphoribosylpyrophosphate amidotransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0915_FLUX_VALUE=0.00375691882979276;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0915_Vmax=0.0826522142554407;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0915_Keq=0.2;
	% Local Parameter:   id =  Km0999, name = Km0999
	reaction_r_0915_Km0999=0.1;
	% Local Parameter:   id =  Km1386, name = Km1386
	reaction_r_0915_Km1386=0.1;
	% Local Parameter:   id =  Km0327, name = Km0327
	reaction_r_0915_Km0327=0.1;
	% Local Parameter:   id =  Km0633, name = Km0633
	reaction_r_0915_Km0633=0.1;
	% Local Parameter:   id =  Km0991, name = Km0991
	reaction_r_0915_Km0991=0.1;

	reaction_r_0915=compartment_cell*reaction_r_0915_Vmax*(x(183)*x(248)-x(71)*x(132)*x(182)/reaction_r_0915_Keq)/(reaction_r_0915_Km0999*reaction_r_0915_Km1386)/((1+x(183)/reaction_r_0915_Km0999)*(1+x(248)/reaction_r_0915_Km1386)+(1+x(71)/reaction_r_0915_Km0327)*(1+x(132)/reaction_r_0915_Km0633)*(1+x(182)/reaction_r_0915_Km0991)-1);

% Reaction: id = r_0916, name = phosphoribosylpyrophosphate synthetase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0916_FLUX_VALUE=0.0115485688525797;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0916_Vmax=0.161679963936116;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0916_Keq=2.0;
	% Local Parameter:   id =  Km0434, name = Km0434
	reaction_r_0916_Km0434=0.1;
	% Local Parameter:   id =  Km1408, name = Km1408
	reaction_r_0916_Km1408=0.1;
	% Local Parameter:   id =  Km0423, name = Km0423
	reaction_r_0916_Km0423=0.1;
	% Local Parameter:   id =  Km1386, name = Km1386
	reaction_r_0916_Km1386=0.1;

	reaction_r_0916=compartment_cell*reaction_r_0916_Vmax*(x(91)*x(251)-x(86)*x(248)/reaction_r_0916_Keq)/(reaction_r_0916_Km0434*reaction_r_0916_Km1408)/((1+x(91)/reaction_r_0916_Km0434)*(1+x(251)/reaction_r_0916_Km1408)+(1+x(86)/reaction_r_0916_Km0423)*(1+x(248)/reaction_r_0916_Km1386)-1);

% Reaction: id = r_0917, name = phosphoserine phosphatase (L-serine)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0917_FLUX_VALUE=1.46007394609031;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0917_Vmax=14.6007394609031;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0917_Keq=0.2;
	% Local Parameter:   id =  Km0259, name = Km0259
	reaction_r_0917_Km0259=0.1;
	% Local Parameter:   id =  Km1039, name = Km1039
	reaction_r_0917_Km1039=0.1;
	% Local Parameter:   id =  Km1322, name = Km1322
	reaction_r_0917_Km1322=0.1;

	reaction_r_0917=compartment_cell*reaction_r_0917_Vmax*(x(49)-x(197)*x(234)/reaction_r_0917_Keq)/reaction_r_0917_Km0259/(1+x(49)/reaction_r_0917_Km0259+(1+x(197)/reaction_r_0917_Km1039)*(1+x(234)/reaction_r_0917_Km1322)-1);

% Reaction: id = r_0918, name = phosphoserine transaminase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0918_FLUX_VALUE=1.46007394609031;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0918_Vmax=20.4410352452643;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0918_Keq=2.0;
	% Local Parameter:   id =  Km0258, name = Km0258
	reaction_r_0918_Km0258=0.1;
	% Local Parameter:   id =  Km0991, name = Km0991
	reaction_r_0918_Km0991=0.1;
	% Local Parameter:   id =  Km0180, name = Km0180
	reaction_r_0918_Km0180=0.1;
	% Local Parameter:   id =  Km0259, name = Km0259
	reaction_r_0918_Km0259=0.1;

	reaction_r_0918=compartment_cell*reaction_r_0918_Vmax*(x(48)*x(182)-x(36)*x(49)/reaction_r_0918_Keq)/(reaction_r_0918_Km0258*reaction_r_0918_Km0991)/((1+x(48)/reaction_r_0918_Km0258)*(1+x(182)/reaction_r_0918_Km0991)+(1+x(36)/reaction_r_0918_Km0180)*(1+x(49)/reaction_r_0918_Km0259)-1);

% Reaction: id = r_0919, name = phytoceramidase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0919_FLUX_VALUE=1.02210851263136E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0919_Vmax=1.02210851263136E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0919_Keq=20.0;
	% Local Parameter:   id =  Km1084, name = Km1084
	reaction_r_0919_Km1084=0.1;
	% Local Parameter:   id =  Km1366, name = Km1366
	reaction_r_0919_Km1366=0.1;
	% Local Parameter:   id =  Km0481, name = Km0481
	reaction_r_0919_Km0481=0.1;

	reaction_r_0919=compartment_cell*reaction_r_0919_Vmax*(x(206)*x(244)-x(99)/reaction_r_0919_Keq)/(reaction_r_0919_Km1084*reaction_r_0919_Km1366)/((1+x(206)/reaction_r_0919_Km1084)*(1+x(244)/reaction_r_0919_Km1366)+1+x(99)/reaction_r_0919_Km0481-1);

% Reaction: id = r_0922, name = phytosphingosine synthesis	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0922_FLUX_VALUE=1.02210838883012E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0922_Vmax=2.24863845542626E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0922_Keq=20.0;
	% Local Parameter:   id =  Km1212, name = Km1212
	reaction_r_0922_Km1212=0.1;
	% Local Parameter:   id =  Km1275, name = Km1275
	reaction_r_0922_Km1275=0.1;
	% Local Parameter:   id =  Km1445, name = Km1445
	reaction_r_0922_Km1445=0.1;
	% Local Parameter:   id =  Km1207, name = Km1207
	reaction_r_0922_Km1207=0.1;
	% Local Parameter:   id =  Km1366, name = Km1366
	reaction_r_0922_Km1366=0.1;

	reaction_r_0922=compartment_cell*reaction_r_0922_Vmax*(x(222)*x(230)*x(257)-x(221)*x(244)/reaction_r_0922_Keq)/(reaction_r_0922_Km1212*reaction_r_0922_Km1275*reaction_r_0922_Km1445)/((1+x(222)/reaction_r_0922_Km1212)*(1+x(230)/reaction_r_0922_Km1275)*(1+x(257)/reaction_r_0922_Km1445)+(1+x(221)/reaction_r_0922_Km1207)*(1+x(244)/reaction_r_0922_Km1366)-1);

% Reaction: id = r_0938, name = prephenate dehydratase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0938_FLUX_VALUE=0.00508184090624473;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0938_Vmax=0.0508184090624473;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0938_Keq=0.2;
	% Local Parameter:   id =  Km1377, name = Km1377
	reaction_r_0938_Km1377=0.1;
	% Local Parameter:   id =  Km0456, name = Km0456
	reaction_r_0938_Km0456=0.1;
	% Local Parameter:   id =  Km0951, name = Km0951
	reaction_r_0938_Km0951=0.1;

	reaction_r_0938=compartment_cell*reaction_r_0938_Vmax*(x(246)-x(95)*x(171)/reaction_r_0938_Keq)/reaction_r_0938_Km1377/(1+x(246)/reaction_r_0938_Km1377+(1+x(95)/reaction_r_0938_Km0456)*(1+x(171)/reaction_r_0938_Km0951)-1);

% Reaction: id = r_0939, name = prephenate dehydrogenase (NADP)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0939_FLUX_VALUE=0.00387115588078458;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0939_Vmax=0.0851654293772608;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0939_Keq=0.2;
	% Local Parameter:   id =  Km1207, name = Km1207
	reaction_r_0939_Km1207=0.1;
	% Local Parameter:   id =  Km1377, name = Km1377
	reaction_r_0939_Km1377=0.1;
	% Local Parameter:   id =  Km0204, name = Km0204
	reaction_r_0939_Km0204=0.1;
	% Local Parameter:   id =  Km0456, name = Km0456
	reaction_r_0939_Km0456=0.1;
	% Local Parameter:   id =  Km1212, name = Km1212
	reaction_r_0939_Km1212=0.1;

	reaction_r_0939=compartment_cell*reaction_r_0939_Vmax*(x(221)*x(246)-x(40)*x(95)*x(222)/reaction_r_0939_Keq)/(reaction_r_0939_Km1207*reaction_r_0939_Km1377)/((1+x(221)/reaction_r_0939_Km1207)*(1+x(246)/reaction_r_0939_Km1377)+(1+x(40)/reaction_r_0939_Km0204)*(1+x(95)/reaction_r_0939_Km0456)*(1+x(222)/reaction_r_0939_Km1212)-1);

% Reaction: id = r_0941, name = prolyl-tRNA synthetase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0941_FLUX_VALUE=0.00625077817220815;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0941_Vmax=0.187523345166245;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0941_Keq=2.0;
	% Local Parameter:   id =  Km0434, name = Km0434
	reaction_r_0941_Km0434=0.1;
	% Local Parameter:   id =  Km1035, name = Km1035
	reaction_r_0941_Km1035=0.1;
	% Local Parameter:   id =  Km1606, name = Km1606
	reaction_r_0941_Km1606=0.1;
	% Local Parameter:   id =  Km0423, name = Km0423
	reaction_r_0941_Km0423=0.1;
	% Local Parameter:   id =  Km0633, name = Km0633
	reaction_r_0941_Km0633=0.1;
	% Local Parameter:   id =  Km1379, name = Km1379
	reaction_r_0941_Km1379=0.1;

	reaction_r_0941=compartment_cell*reaction_r_0941_Vmax*(x(91)*x(195)*x(296)-x(86)*x(132)*x(247)/reaction_r_0941_Keq)/(reaction_r_0941_Km0434*reaction_r_0941_Km1035*reaction_r_0941_Km1606)/((1+x(91)/reaction_r_0941_Km0434)*(1+x(195)/reaction_r_0941_Km1035)*(1+x(296)/reaction_r_0941_Km1606)+(1+x(86)/reaction_r_0941_Km0423)*(1+x(132)/reaction_r_0941_Km0633)*(1+x(247)/reaction_r_0941_Km1379)-1);

% Reaction: id = r_0957, name = pyrroline-5-carboxylate reductase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0957_FLUX_VALUE=0.00625077817220671;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0957_Vmax=0.0875108944108939;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0957_Keq=2.0;
	% Local Parameter:   id =  Km0118, name = Km0118
	reaction_r_0957_Km0118=0.1;
	% Local Parameter:   id =  Km1212, name = Km1212
	reaction_r_0957_Km1212=0.1;
	% Local Parameter:   id =  Km1035, name = Km1035
	reaction_r_0957_Km1035=0.1;
	% Local Parameter:   id =  Km1207, name = Km1207
	reaction_r_0957_Km1207=0.1;

	reaction_r_0957=compartment_cell*reaction_r_0957_Vmax*(x(23)*x(222)-x(195)*x(221)/reaction_r_0957_Keq)/(reaction_r_0957_Km0118*reaction_r_0957_Km1212)/((1+x(23)/reaction_r_0957_Km0118)*(1+x(222)/reaction_r_0957_Km1212)+(1+x(195)/reaction_r_0957_Km1035)*(1+x(221)/reaction_r_0957_Km1207)-1);

% Reaction: id = r_0958, name = pyruvate carboxylase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0958_FLUX_VALUE=0.0768531341901953;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0958_Vmax=2.30559402570586;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0958_Keq=2.0;
	% Local Parameter:   id =  Km0434, name = Km0434
	reaction_r_0958_Km0434=0.1;
	% Local Parameter:   id =  Km0445, name = Km0445
	reaction_r_0958_Km0445=0.1;
	% Local Parameter:   id =  Km1399, name = Km1399
	reaction_r_0958_Km1399=0.1;
	% Local Parameter:   id =  Km0394, name = Km0394
	reaction_r_0958_Km0394=0.1;
	% Local Parameter:   id =  Km1271, name = Km1271
	reaction_r_0958_Km1271=0.1;
	% Local Parameter:   id =  Km1322, name = Km1322
	reaction_r_0958_Km1322=0.1;

	reaction_r_0958=compartment_cell*reaction_r_0958_Vmax*(x(91)*x(92)*x(249)-x(81)*x(229)*x(234)/reaction_r_0958_Keq)/(reaction_r_0958_Km0434*reaction_r_0958_Km0445*reaction_r_0958_Km1399)/((1+x(91)/reaction_r_0958_Km0434)*(1+x(92)/reaction_r_0958_Km0445)*(1+x(249)/reaction_r_0958_Km1399)+(1+x(81)/reaction_r_0958_Km0394)*(1+x(229)/reaction_r_0958_Km1271)*(1+x(234)/reaction_r_0958_Km1322)-1);

% Reaction: id = r_0961, name = pyruvate dehydrogenase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0961_FLUX_VALUE=0.0658655350433608;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0961_Vmax=1.97596605130082;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0961_Keq=2.0;
	% Local Parameter:   id =  Km0529, name = Km0529
	reaction_r_0961_Km0529=0.1;
	% Local Parameter:   id =  Km1198, name = Km1198
	reaction_r_0961_Km1198=0.1;
	% Local Parameter:   id =  Km1399, name = Km1399
	reaction_r_0961_Km1399=0.1;
	% Local Parameter:   id =  Km0373, name = Km0373
	reaction_r_0961_Km0373=0.1;
	% Local Parameter:   id =  Km0456, name = Km0456
	reaction_r_0961_Km0456=0.1;
	% Local Parameter:   id =  Km1203, name = Km1203
	reaction_r_0961_Km1203=0.1;

	reaction_r_0961=compartment_cell*reaction_r_0961_Vmax*(x(106)*x(219)*x(249)-x(76)*x(95)*x(220)/reaction_r_0961_Keq)/(reaction_r_0961_Km0529*reaction_r_0961_Km1198*reaction_r_0961_Km1399)/((1+x(106)/reaction_r_0961_Km0529)*(1+x(219)/reaction_r_0961_Km1198)*(1+x(249)/reaction_r_0961_Km1399)+(1+x(76)/reaction_r_0961_Km0373)*(1+x(95)/reaction_r_0961_Km0456)*(1+x(220)/reaction_r_0961_Km1203)-1);

% Reaction: id = r_0962, name = pyruvate kinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0962_FLUX_VALUE=0.211286770788091;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0962_Vmax=2.95801479103327;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0962_Keq=2.0;
	% Local Parameter:   id =  Km0394, name = Km0394
	reaction_r_0962_Km0394=0.1;
	% Local Parameter:   id =  Km1360, name = Km1360
	reaction_r_0962_Km1360=0.1;
	% Local Parameter:   id =  Km0434, name = Km0434
	reaction_r_0962_Km0434=0.1;
	% Local Parameter:   id =  Km1399, name = Km1399
	reaction_r_0962_Km1399=0.1;

	reaction_r_0962=compartment_cell*reaction_r_0962_Vmax*(x(81)*x(241)-x(91)*x(249)/reaction_r_0962_Keq)/(reaction_r_0962_Km0394*reaction_r_0962_Km1360)/((1+x(81)/reaction_r_0962_Km0394)*(1+x(241)/reaction_r_0962_Km1360)+(1+x(91)/reaction_r_0962_Km0434)*(1+x(249)/reaction_r_0962_Km1399)-1);

% Reaction: id = r_0967, name = riboflavin synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0967_FLUX_VALUE=7.51459670975844E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0967_Vmax=0.00105204353936618;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0967_Keq=2.0;
	% Local Parameter:   id =  Km0158, name = Km0158
	reaction_r_0967_Km0158=0.1;
	% Local Parameter:   id =  Km0314, name = Km0314
	reaction_r_0967_Km0314=0.1;
	% Local Parameter:   id =  Km0328, name = Km0328
	reaction_r_0967_Km0328=0.1;
	% Local Parameter:   id =  Km1322, name = Km1322
	reaction_r_0967_Km1322=0.1;

	reaction_r_0967=compartment_cell*reaction_r_0967_Vmax*(x(31)*x(66)-x(72)*x(234)/reaction_r_0967_Keq)/(reaction_r_0967_Km0158*reaction_r_0967_Km0314)/((1+x(31)/reaction_r_0967_Km0158)*(1+x(66)/reaction_r_0967_Km0314)+(1+x(72)/reaction_r_0967_Km0328)*(1+x(234)/reaction_r_0967_Km1322)-1);

% Reaction: id = r_0968, name = riboflavin synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0968_FLUX_VALUE=3.75729835487922E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0968_Vmax=5.26021769683091E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0968_Keq=2.0;
	% Local Parameter:   id =  Km0328, name = Km0328
	reaction_r_0968_Km0328=0.1;
	% Local Parameter:   id =  Km0314, name = Km0314
	reaction_r_0968_Km0314=0.1;
	% Local Parameter:   id =  Km1405, name = Km1405
	reaction_r_0968_Km1405=0.1;

	reaction_r_0968=compartment_cell*reaction_r_0968_Vmax*(x(72)^2-x(66)*x(250)/reaction_r_0968_Keq)/reaction_r_0968_Km0328^2/((1+x(72)/reaction_r_0968_Km0328)^2+(1+x(66)/reaction_r_0968_Km0314)*(1+x(250)/reaction_r_0968_Km1405)-1);

% Reaction: id = r_0970, name = ribonucleoside-triphosphate reductase (ATP)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0970_FLUX_VALUE=6.43295039602845E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0970_Vmax=9.00613055443983E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0970_Keq=2.0;
	% Local Parameter:   id =  Km0434, name = Km0434
	reaction_r_0970_Km0434=0.1;
	% Local Parameter:   id =  Km1616, name = Km1616
	reaction_r_0970_Km1616=0.1;
	% Local Parameter:   id =  Km0586, name = Km0586
	reaction_r_0970_Km0586=0.1;
	% Local Parameter:   id =  Km1620, name = Km1620
	reaction_r_0970_Km1620=0.1;

	reaction_r_0970=compartment_cell*reaction_r_0970_Vmax*(x(91)*x(302)-x(122)*x(303)/reaction_r_0970_Keq)/(reaction_r_0970_Km0434*reaction_r_0970_Km1616)/((1+x(91)/reaction_r_0970_Km0434)*(1+x(302)/reaction_r_0970_Km1616)+(1+x(122)/reaction_r_0970_Km0586)*(1+x(303)/reaction_r_0970_Km1620)-1);

% Reaction: id = r_0973, name = ribonucleoside-triphosphate reductase (UTP)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0973_FLUX_VALUE=1.33265490575614E-4;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0973_Vmax=0.0018657168680586;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0973_Keq=2.0;
	% Local Parameter:   id =  Km1559, name = Km1559
	reaction_r_0973_Km1559=0.1;
	% Local Parameter:   id =  Km1616, name = Km1616
	reaction_r_0973_Km1616=0.1;
	% Local Parameter:   id =  Km0656, name = Km0656
	reaction_r_0973_Km0656=0.1;
	% Local Parameter:   id =  Km1620, name = Km1620
	reaction_r_0973_Km1620=0.1;

	reaction_r_0973=compartment_cell*reaction_r_0973_Vmax*(x(274)*x(302)-x(137)*x(303)/reaction_r_0973_Keq)/(reaction_r_0973_Km1559*reaction_r_0973_Km1616)/((1+x(274)/reaction_r_0973_Km1559)*(1+x(302)/reaction_r_0973_Km1616)+(1+x(137)/reaction_r_0973_Km0656)*(1+x(303)/reaction_r_0973_Km1620)-1);

% Reaction: id = r_0974, name = ribonucleotide reductase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0974_FLUX_VALUE=7.22995270761245E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0974_Vmax=0.00101219337906574;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0974_Keq=2.0;
	% Local Parameter:   id =  Km0394, name = Km0394
	reaction_r_0974_Km0394=0.1;
	% Local Parameter:   id =  Km1616, name = Km1616
	reaction_r_0974_Km1616=0.1;
	% Local Parameter:   id =  Km0582, name = Km0582
	reaction_r_0974_Km0582=0.1;
	% Local Parameter:   id =  Km1620, name = Km1620
	reaction_r_0974_Km1620=0.1;

	reaction_r_0974=compartment_cell*reaction_r_0974_Vmax*(x(81)*x(302)-x(120)*x(303)/reaction_r_0974_Keq)/(reaction_r_0974_Km0394*reaction_r_0974_Km1616)/((1+x(81)/reaction_r_0974_Km0394)*(1+x(302)/reaction_r_0974_Km1616)+(1+x(120)/reaction_r_0974_Km0582)*(1+x(303)/reaction_r_0974_Km1620)-1);

% Reaction: id = r_0976, name = ribonucleotide reductase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0976_FLUX_VALUE=9.44495616410234E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0976_Vmax=0.00132229386297433;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0976_Keq=2.0;
	% Local Parameter:   id =  Km0467, name = Km0467
	reaction_r_0976_Km0467=0.1;
	% Local Parameter:   id =  Km1616, name = Km1616
	reaction_r_0976_Km1616=0.1;
	% Local Parameter:   id =  Km0587, name = Km0587
	reaction_r_0976_Km0587=0.1;
	% Local Parameter:   id =  Km1620, name = Km1620
	reaction_r_0976_Km1620=0.1;

	reaction_r_0976=compartment_cell*reaction_r_0976_Vmax*(x(96)*x(302)-x(123)*x(303)/reaction_r_0976_Keq)/(reaction_r_0976_Km0467*reaction_r_0976_Km1616)/((1+x(96)/reaction_r_0976_Km0467)*(1+x(302)/reaction_r_0976_Km1616)+(1+x(123)/reaction_r_0976_Km0587)*(1+x(303)/reaction_r_0976_Km1620)-1);

% Reaction: id = r_0978, name = ribonucleotide reductase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0978_FLUX_VALUE=9.10860206851083E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0978_Vmax=0.00127520428959152;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0978_Keq=2.0;
	% Local Parameter:   id =  Km0739, name = Km0739
	reaction_r_0978_Km0739=0.1;
	% Local Parameter:   id =  Km1616, name = Km1616
	reaction_r_0978_Km1616=0.1;
	% Local Parameter:   id =  Km0613, name = Km0613
	reaction_r_0978_Km0613=0.1;
	% Local Parameter:   id =  Km1620, name = Km1620
	reaction_r_0978_Km1620=0.1;

	reaction_r_0978=compartment_cell*reaction_r_0978_Vmax*(x(148)*x(302)-x(127)*x(303)/reaction_r_0978_Keq)/(reaction_r_0978_Km0739*reaction_r_0978_Km1616)/((1+x(148)/reaction_r_0978_Km0739)*(1+x(302)/reaction_r_0978_Km1616)+(1+x(127)/reaction_r_0978_Km0613)*(1+x(303)/reaction_r_0978_Km1620)-1);

% Reaction: id = r_0982, name = ribose-5-phosphate isomerase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0982_FLUX_VALUE=0.0110176132567827;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0982_Vmax=0.0661056795406962;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0982_Keq=2.0;
	% Local Parameter:   id =  Km0577, name = Km0577
	reaction_r_0982_Km0577=0.1;
	% Local Parameter:   id =  Km1408, name = Km1408
	reaction_r_0982_Km1408=0.1;

	reaction_r_0982=compartment_cell*reaction_r_0982_Vmax*(x(118)-x(251)/reaction_r_0982_Keq)/reaction_r_0982_Km0577/(1+x(118)/reaction_r_0982_Km0577+1+x(251)/reaction_r_0982_Km1408-1);

% Reaction: id = r_0984, name = ribulose 5-phosphate 3-epimerase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0984_FLUX_VALUE=0.0110927592238809;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0984_Vmax=0.0665565553432854;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0984_Keq=2.0;
	% Local Parameter:   id =  Km0581, name = Km0581
	reaction_r_0984_Km0581=0.1;
	% Local Parameter:   id =  Km0577, name = Km0577
	reaction_r_0984_Km0577=0.1;

	reaction_r_0984=compartment_cell*reaction_r_0984_Vmax*(x(119)-x(118)/reaction_r_0984_Keq)/reaction_r_0984_Km0581/(1+x(119)/reaction_r_0984_Km0581+1+x(118)/reaction_r_0984_Km0577-1);

% Reaction: id = r_0986, name = S-adenosyl-methionine delta-24-sterol-c-methyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0986_FLUX_VALUE=2.56065575909038E-4;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0986_Vmax=0.00358491806272653;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0986_Keq=2.0;
	% Local Parameter:   id =  Km1416, name = Km1416
	reaction_r_0986_Km1416=0.1;
	% Local Parameter:   id =  Km1569, name = Km1569
	reaction_r_0986_Km1569=0.1;
	% Local Parameter:   id =  Km0700, name = Km0700
	reaction_r_0986_Km0700=0.1;
	% Local Parameter:   id =  Km1413, name = Km1413
	reaction_r_0986_Km1413=0.1;

	reaction_r_0986=compartment_cell*reaction_r_0986_Vmax*(x(253)*x(277)-x(143)*x(252)/reaction_r_0986_Keq)/(reaction_r_0986_Km1416*reaction_r_0986_Km1569)/((1+x(253)/reaction_r_0986_Km1416)*(1+x(277)/reaction_r_0986_Km1569)+(1+x(143)/reaction_r_0986_Km0700)*(1+x(252)/reaction_r_0986_Km1413)-1);

% Reaction: id = r_0988, name = saccharopine dehydrogenase (NAD, L-lysine forming)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0988_FLUX_VALUE=0.01086200797138;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0988_Vmax=0.23896417537036;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0988_Keq=0.2;
	% Local Parameter:   id =  Km1038, name = Km1038
	reaction_r_0988_Km1038=0.1;
	% Local Parameter:   id =  Km1198, name = Km1198
	reaction_r_0988_Km1198=0.1;
	% Local Parameter:   id =  Km0180, name = Km0180
	reaction_r_0988_Km0180=0.1;
	% Local Parameter:   id =  Km1025, name = Km1025
	reaction_r_0988_Km1025=0.1;
	% Local Parameter:   id =  Km1203, name = Km1203
	reaction_r_0988_Km1203=0.1;

	reaction_r_0988=compartment_cell*reaction_r_0988_Vmax*(x(196)*x(219)-x(36)*x(192)*x(220)/reaction_r_0988_Keq)/(reaction_r_0988_Km1038*reaction_r_0988_Km1198)/((1+x(196)/reaction_r_0988_Km1038)*(1+x(219)/reaction_r_0988_Km1198)+(1+x(36)/reaction_r_0988_Km0180)*(1+x(192)/reaction_r_0988_Km1025)*(1+x(220)/reaction_r_0988_Km1203)-1);

% Reaction: id = r_0989, name = saccharopine dehydrogenase (NADP, L-glutamate forming)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0989_FLUX_VALUE=0.01086200797138;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0989_Vmax=0.23896417537036;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0989_Keq=20.0;
	% Local Parameter:   id =  Km0959, name = Km0959
	reaction_r_0989_Km0959=0.1;
	% Local Parameter:   id =  Km0991, name = Km0991
	reaction_r_0989_Km0991=0.1;
	% Local Parameter:   id =  Km1212, name = Km1212
	reaction_r_0989_Km1212=0.1;
	% Local Parameter:   id =  Km1038, name = Km1038
	reaction_r_0989_Km1038=0.1;
	% Local Parameter:   id =  Km1207, name = Km1207
	reaction_r_0989_Km1207=0.1;

	reaction_r_0989=compartment_cell*reaction_r_0989_Vmax*(x(174)*x(182)*x(222)-x(196)*x(221)/reaction_r_0989_Keq)/(reaction_r_0989_Km0959*reaction_r_0989_Km0991*reaction_r_0989_Km1212)/((1+x(174)/reaction_r_0989_Km0959)*(1+x(182)/reaction_r_0989_Km0991)*(1+x(222)/reaction_r_0989_Km1212)+(1+x(196)/reaction_r_0989_Km1038)*(1+x(221)/reaction_r_0989_Km1207)-1);

% Reaction: id = r_0993, name = serine palmitotransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0993_FLUX_VALUE=2.04421699920047E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0993_Vmax=4.49727739824103E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0993_Keq=0.2;
	% Local Parameter:   id =  Km1039, name = Km1039
	reaction_r_0993_Km1039=0.1;
	% Local Parameter:   id =  Km1302, name = Km1302
	reaction_r_0993_Km1302=0.1;
	% Local Parameter:   id =  Km0231, name = Km0231
	reaction_r_0993_Km0231=0.1;
	% Local Parameter:   id =  Km0456, name = Km0456
	reaction_r_0993_Km0456=0.1;
	% Local Parameter:   id =  Km0529, name = Km0529
	reaction_r_0993_Km0529=0.1;

	reaction_r_0993=compartment_cell*reaction_r_0993_Vmax*(x(197)*x(232)-x(46)*x(95)*x(106)/reaction_r_0993_Keq)/(reaction_r_0993_Km1039*reaction_r_0993_Km1302)/((1+x(197)/reaction_r_0993_Km1039)*(1+x(232)/reaction_r_0993_Km1302)+(1+x(46)/reaction_r_0993_Km0231)*(1+x(95)/reaction_r_0993_Km0456)*(1+x(106)/reaction_r_0993_Km0529)-1);

% Reaction: id = r_0995, name = seryl-tRNA synthetase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0995_FLUX_VALUE=0.00703639510095562;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0995_Vmax=0.211091853028669;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0995_Keq=2.0;
	% Local Parameter:   id =  Km0434, name = Km0434
	reaction_r_0995_Km0434=0.1;
	% Local Parameter:   id =  Km1039, name = Km1039
	reaction_r_0995_Km1039=0.1;
	% Local Parameter:   id =  Km1607, name = Km1607
	reaction_r_0995_Km1607=0.1;
	% Local Parameter:   id =  Km0423, name = Km0423
	reaction_r_0995_Km0423=0.1;
	% Local Parameter:   id =  Km0633, name = Km0633
	reaction_r_0995_Km0633=0.1;
	% Local Parameter:   id =  Km1428, name = Km1428
	reaction_r_0995_Km1428=0.1;

	reaction_r_0995=compartment_cell*reaction_r_0995_Vmax*(x(91)*x(197)*x(297)-x(86)*x(132)*x(255)/reaction_r_0995_Keq)/(reaction_r_0995_Km0434*reaction_r_0995_Km1039*reaction_r_0995_Km1607)/((1+x(91)/reaction_r_0995_Km0434)*(1+x(197)/reaction_r_0995_Km1039)*(1+x(297)/reaction_r_0995_Km1607)+(1+x(86)/reaction_r_0995_Km0423)*(1+x(132)/reaction_r_0995_Km0633)*(1+x(255)/reaction_r_0995_Km1428)-1);

% Reaction: id = r_0996, name = shikimate dehydrogenase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0996_FLUX_VALUE=0.0100308480322675;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0996_Vmax=0.140431872451745;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0996_Keq=2.0;
	% Local Parameter:   id =  Km0211, name = Km0211
	reaction_r_0996_Km0211=0.1;
	% Local Parameter:   id =  Km1212, name = Km1212
	reaction_r_0996_Km1212=0.1;
	% Local Parameter:   id =  Km1207, name = Km1207
	reaction_r_0996_Km1207=0.1;
	% Local Parameter:   id =  Km1429, name = Km1429
	reaction_r_0996_Km1429=0.1;

	reaction_r_0996=compartment_cell*reaction_r_0996_Vmax*(x(44)*x(222)-x(221)*x(256)/reaction_r_0996_Keq)/(reaction_r_0996_Km0211*reaction_r_0996_Km1212)/((1+x(44)/reaction_r_0996_Km0211)*(1+x(222)/reaction_r_0996_Km1212)+(1+x(221)/reaction_r_0996_Km1207)*(1+x(256)/reaction_r_0996_Km1429)-1);

% Reaction: id = r_0997, name = shikimate kinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0997_FLUX_VALUE=0.0100308480322675;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0997_Vmax=0.140431872451745;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0997_Keq=2.0;
	% Local Parameter:   id =  Km0434, name = Km0434
	reaction_r_0997_Km0434=0.1;
	% Local Parameter:   id =  Km1429, name = Km1429
	reaction_r_0997_Km1429=0.1;
	% Local Parameter:   id =  Km0261, name = Km0261
	reaction_r_0997_Km0261=0.1;
	% Local Parameter:   id =  Km0394, name = Km0394
	reaction_r_0997_Km0394=0.1;

	reaction_r_0997=compartment_cell*reaction_r_0997_Vmax*(x(91)*x(256)-x(51)*x(81)/reaction_r_0997_Keq)/(reaction_r_0997_Km0434*reaction_r_0997_Km1429)/((1+x(91)/reaction_r_0997_Km0434)*(1+x(256)/reaction_r_0997_Km1429)+(1+x(51)/reaction_r_0997_Km0261)*(1+x(81)/reaction_r_0997_Km0394)-1);

% Reaction: id = r_1010, name = squalene epoxidase (NAD)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1010_FLUX_VALUE=1.29987342075721E-4;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1010_Vmax=0.00285972152566586;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1010_Keq=20.0;
	% Local Parameter:   id =  Km1203, name = Km1203
	reaction_r_1010_Km1203=0.1;
	% Local Parameter:   id =  Km1275, name = Km1275
	reaction_r_1010_Km1275=0.1;
	% Local Parameter:   id =  Km1447, name = Km1447
	reaction_r_1010_Km1447=0.1;
	% Local Parameter:   id =  Km0037, name = Km0037
	reaction_r_1010_Km0037=0.1;
	% Local Parameter:   id =  Km1198, name = Km1198
	reaction_r_1010_Km1198=0.1;

	reaction_r_1010=compartment_cell*reaction_r_1010_Vmax*(x(220)*x(230)*x(258)-x(11)*x(219)/reaction_r_1010_Keq)/(reaction_r_1010_Km1203*reaction_r_1010_Km1275*reaction_r_1010_Km1447)/((1+x(220)/reaction_r_1010_Km1203)*(1+x(230)/reaction_r_1010_Km1275)*(1+x(258)/reaction_r_1010_Km1447)+(1+x(11)/reaction_r_1010_Km0037)*(1+x(219)/reaction_r_1010_Km1198)-1);

% Reaction: id = r_1011, name = squalene epoxidase (NADP)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1011_FLUX_VALUE=1.2998734207478E-4;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1011_Vmax=0.00285972152564516;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1011_Keq=20.0;
	% Local Parameter:   id =  Km1212, name = Km1212
	reaction_r_1011_Km1212=0.1;
	% Local Parameter:   id =  Km1275, name = Km1275
	reaction_r_1011_Km1275=0.1;
	% Local Parameter:   id =  Km1447, name = Km1447
	reaction_r_1011_Km1447=0.1;
	% Local Parameter:   id =  Km0037, name = Km0037
	reaction_r_1011_Km0037=0.1;
	% Local Parameter:   id =  Km1207, name = Km1207
	reaction_r_1011_Km1207=0.1;

	reaction_r_1011=compartment_cell*reaction_r_1011_Vmax*(x(222)*x(230)*x(258)-x(11)*x(221)/reaction_r_1011_Keq)/(reaction_r_1011_Km1212*reaction_r_1011_Km1275*reaction_r_1011_Km1447)/((1+x(222)/reaction_r_1011_Km1212)*(1+x(230)/reaction_r_1011_Km1275)*(1+x(258)/reaction_r_1011_Km1447)+(1+x(11)/reaction_r_1011_Km0037)*(1+x(221)/reaction_r_1011_Km1207)-1);

% Reaction: id = r_1012, name = squalene synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1012_FLUX_VALUE=2.59974684150501E-4;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1012_Vmax=0.011958835470923;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1012_Keq=0.2;
	% Local Parameter:   id =  Km0190, name = Km0190
	reaction_r_1012_Km0190=0.1;
	% Local Parameter:   id =  Km1212, name = Km1212
	reaction_r_1012_Km1212=0.1;
	% Local Parameter:   id =  Km0633, name = Km0633
	reaction_r_1012_Km0633=0.1;
	% Local Parameter:   id =  Km1207, name = Km1207
	reaction_r_1012_Km1207=0.1;
	% Local Parameter:   id =  Km1447, name = Km1447
	reaction_r_1012_Km1447=0.1;

	reaction_r_1012=compartment_cell*reaction_r_1012_Vmax*(x(38)^2*x(222)-x(132)^2*x(221)*x(258)/reaction_r_1012_Keq)/(reaction_r_1012_Km0190^2*reaction_r_1012_Km1212)/((1+x(38)/reaction_r_1012_Km0190)^2*(1+x(222)/reaction_r_1012_Km1212)+(1+x(132)/reaction_r_1012_Km0633)^2*(1+x(221)/reaction_r_1012_Km1207)*(1+x(258)/reaction_r_1012_Km1447)-1);

% Reaction: id = r_1014, name = steryl ester hydrolase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1014_FLUX_VALUE=3.08174379214594E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1014_Vmax=0.00104779288932962;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1014_Keq=2000.0;
	% Local Parameter:   id =  Km0666, name = Km0666
	reaction_r_1014_Km0666=0.1;
	% Local Parameter:   id =  Km0056, name = Km0056
	reaction_r_1014_Km0056=0.1;
	% Local Parameter:   id =  Km0672, name = Km0672
	reaction_r_1014_Km0672=0.1;

	reaction_r_1014=compartment_cell*reaction_r_1014_Vmax*(x(141)*x(13)^3-x(142)/reaction_r_1014_Keq)/(reaction_r_1014_Km0666*reaction_r_1014_Km0056^3)/((1+x(141)/reaction_r_1014_Km0666)*(1+x(13)/reaction_r_1014_Km0056)^3+1+x(142)/reaction_r_1014_Km0672-1);

% Reaction: id = r_1026, name = sulfate adenylyltransferase (ADP)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1026_FLUX_VALUE=0.00217467874480193;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1026_Vmax=0.030445502427227;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1026_Keq=2.0;
	% Local Parameter:   id =  Km0394, name = Km0394
	reaction_r_1026_Km0394=0.1;
	% Local Parameter:   id =  Km1467, name = Km1467
	reaction_r_1026_Km1467=0.1;
	% Local Parameter:   id =  Km0298, name = Km0298
	reaction_r_1026_Km0298=0.1;
	% Local Parameter:   id =  Km1322, name = Km1322
	reaction_r_1026_Km1322=0.1;

	reaction_r_1026=compartment_cell*reaction_r_1026_Vmax*(x(81)*x(261)-x(57)*x(234)/reaction_r_1026_Keq)/(reaction_r_1026_Km0394*reaction_r_1026_Km1467)/((1+x(81)/reaction_r_1026_Km0394)*(1+x(261)/reaction_r_1026_Km1467)+(1+x(57)/reaction_r_1026_Km0298)*(1+x(234)/reaction_r_1026_Km1322)-1);

% Reaction: id = r_1027, name = sulfite reductase (NADPH2)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1027_FLUX_VALUE=0.00217467874480475;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1027_Vmax=0.134830082177894;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1027_Keq=2.0;
	% Local Parameter:   id =  Km1212, name = Km1212
	reaction_r_1027_Km1212=0.1;
	% Local Parameter:   id =  Km1469, name = Km1469
	reaction_r_1027_Km1469=0.1;
	% Local Parameter:   id =  Km0841, name = Km0841
	reaction_r_1027_Km0841=0.1;
	% Local Parameter:   id =  Km1207, name = Km1207
	reaction_r_1027_Km1207=0.1;

	reaction_r_1027=compartment_cell*reaction_r_1027_Vmax*(x(222)^3*x(262)-x(165)*x(221)^3/reaction_r_1027_Keq)/(reaction_r_1027_Km1212^3*reaction_r_1027_Km1469)/((1+x(222)/reaction_r_1027_Km1212)^3*(1+x(262)/reaction_r_1027_Km1469)+(1+x(165)/reaction_r_1027_Km0841)*(1+x(221)/reaction_r_1027_Km1207)^3-1);

% Reaction: id = r_1038, name = thioredoxin reductase (NADPH)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1038_FLUX_VALUE=0.0047288825765441;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1038_Vmax=0.0662043560716174;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1038_Keq=2.0;
	% Local Parameter:   id =  Km1212, name = Km1212
	reaction_r_1038_Km1212=0.1;
	% Local Parameter:   id =  Km1620, name = Km1620
	reaction_r_1038_Km1620=0.1;
	% Local Parameter:   id =  Km1207, name = Km1207
	reaction_r_1038_Km1207=0.1;
	% Local Parameter:   id =  Km1616, name = Km1616
	reaction_r_1038_Km1616=0.1;

	reaction_r_1038=compartment_cell*reaction_r_1038_Vmax*(x(222)*x(303)-x(221)*x(302)/reaction_r_1038_Keq)/(reaction_r_1038_Km1212*reaction_r_1038_Km1620)/((1+x(222)/reaction_r_1038_Km1212)*(1+x(303)/reaction_r_1038_Km1620)+(1+x(221)/reaction_r_1038_Km1207)*(1+x(302)/reaction_r_1038_Km1616)-1);

% Reaction: id = r_1041, name = threonine synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1041_FLUX_VALUE=0.00726411015276989;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1041_Vmax=0.0726411015276989;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1041_Keq=0.2;
	% Local Parameter:   id =  Km1238, name = Km1238
	reaction_r_1041_Km1238=0.1;
	% Local Parameter:   id =  Km1045, name = Km1045
	reaction_r_1041_Km1045=0.1;
	% Local Parameter:   id =  Km1322, name = Km1322
	reaction_r_1041_Km1322=0.1;

	reaction_r_1041=compartment_cell*reaction_r_1041_Vmax*(x(224)-x(198)*x(234)/reaction_r_1041_Keq)/reaction_r_1041_Km1238/(1+x(224)/reaction_r_1041_Km1238+(1+x(198)/reaction_r_1041_Km1045)*(1+x(234)/reaction_r_1041_Km1322)-1);

% Reaction: id = r_1042, name = threonyl-tRNA synthetase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1042_FLUX_VALUE=0.00726411015276649;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1042_Vmax=0.217923304582995;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1042_Keq=2.0;
	% Local Parameter:   id =  Km0434, name = Km0434
	reaction_r_1042_Km0434=0.1;
	% Local Parameter:   id =  Km1045, name = Km1045
	reaction_r_1042_Km1045=0.1;
	% Local Parameter:   id =  Km1608, name = Km1608
	reaction_r_1042_Km1608=0.1;
	% Local Parameter:   id =  Km0423, name = Km0423
	reaction_r_1042_Km0423=0.1;
	% Local Parameter:   id =  Km0633, name = Km0633
	reaction_r_1042_Km0633=0.1;
	% Local Parameter:   id =  Km1491, name = Km1491
	reaction_r_1042_Km1491=0.1;

	reaction_r_1042=compartment_cell*reaction_r_1042_Vmax*(x(91)*x(198)*x(298)-x(86)*x(132)*x(264)/reaction_r_1042_Keq)/(reaction_r_1042_Km0434*reaction_r_1042_Km1045*reaction_r_1042_Km1608)/((1+x(91)/reaction_r_1042_Km0434)*(1+x(198)/reaction_r_1042_Km1045)*(1+x(298)/reaction_r_1042_Km1608)+(1+x(86)/reaction_r_1042_Km0423)*(1+x(132)/reaction_r_1042_Km0633)*(1+x(264)/reaction_r_1042_Km1491)-1);

% Reaction: id = r_1045, name = thymidylate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1045_FLUX_VALUE=1.36629031085814E-4;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1045_Vmax=0.0019128064352014;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1045_Keq=2.0;
	% Local Parameter:   id =  Km0306, name = Km0306
	reaction_r_1045_Km0306=0.1;
	% Local Parameter:   id =  Km0654, name = Km0654
	reaction_r_1045_Km0654=0.1;
	% Local Parameter:   id =  Km0625, name = Km0625
	reaction_r_1045_Km0625=0.1;
	% Local Parameter:   id =  Km0649, name = Km0649
	reaction_r_1045_Km0649=0.1;

	reaction_r_1045=compartment_cell*reaction_r_1045_Vmax*(x(63)*x(136)-x(130)*x(135)/reaction_r_1045_Keq)/(reaction_r_1045_Km0306*reaction_r_1045_Km0654)/((1+x(63)/reaction_r_1045_Km0306)*(1+x(136)/reaction_r_1045_Km0654)+(1+x(130)/reaction_r_1045_Km0625)*(1+x(135)/reaction_r_1045_Km0649)-1);

% Reaction: id = r_1048, name = transaldolase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1048_FLUX_VALUE=5.30955594768567E-4;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1048_Vmax=0.00743337832675994;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1048_Keq=2.0;
	% Local Parameter:   id =  Km0551, name = Km0551
	reaction_r_1048_Km0551=0.1;
	% Local Parameter:   id =  Km0557, name = Km0557
	reaction_r_1048_Km0557=0.1;
	% Local Parameter:   id =  Km0764, name = Km0764
	reaction_r_1048_Km0764=0.1;
	% Local Parameter:   id =  Km1427, name = Km1427
	reaction_r_1048_Km1427=0.1;

	reaction_r_1048=compartment_cell*reaction_r_1048_Vmax*(x(110)*x(112)-x(156)*x(254)/reaction_r_1048_Keq)/(reaction_r_1048_Km0551*reaction_r_1048_Km0557)/((1+x(110)/reaction_r_1048_Km0551)*(1+x(112)/reaction_r_1048_Km0557)+(1+x(156)/reaction_r_1048_Km0764)*(1+x(254)/reaction_r_1048_Km1427)-1);

% Reaction: id = r_1049, name = transketolase 1	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1049_FLUX_VALUE=5.30955595806181E-4;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1049_Vmax=0.00743337834128653;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1049_Keq=2.0;
	% Local Parameter:   id =  Km0764, name = Km0764
	reaction_r_1049_Km0764=0.1;
	% Local Parameter:   id =  Km1427, name = Km1427
	reaction_r_1049_Km1427=0.1;
	% Local Parameter:   id =  Km0581, name = Km0581
	reaction_r_1049_Km0581=0.1;
	% Local Parameter:   id =  Km1408, name = Km1408
	reaction_r_1049_Km1408=0.1;

	reaction_r_1049=compartment_cell*reaction_r_1049_Vmax*(x(156)*x(254)-x(119)*x(251)/reaction_r_1049_Keq)/(reaction_r_1049_Km0764*reaction_r_1049_Km1427)/((1+x(156)/reaction_r_1049_Km0764)*(1+x(254)/reaction_r_1049_Km1427)+(1+x(119)/reaction_r_1049_Km0581)*(1+x(251)/reaction_r_1049_Km1408)-1);

% Reaction: id = r_1050, name = transketolase 2	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1050_FLUX_VALUE=0.0105618036280732;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1050_Vmax=0.147865250793025;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1050_Keq=2.0;
	% Local Parameter:   id =  Km0557, name = Km0557
	reaction_r_1050_Km0557=0.1;
	% Local Parameter:   id =  Km0764, name = Km0764
	reaction_r_1050_Km0764=0.1;
	% Local Parameter:   id =  Km0551, name = Km0551
	reaction_r_1050_Km0551=0.1;
	% Local Parameter:   id =  Km0581, name = Km0581
	reaction_r_1050_Km0581=0.1;

	reaction_r_1050=compartment_cell*reaction_r_1050_Vmax*(x(112)*x(156)-x(110)*x(119)/reaction_r_1050_Keq)/(reaction_r_1050_Km0557*reaction_r_1050_Km0764)/((1+x(112)/reaction_r_1050_Km0557)*(1+x(156)/reaction_r_1050_Km0764)+(1+x(110)/reaction_r_1050_Km0551)*(1+x(119)/reaction_r_1050_Km0581)-1);

% Reaction: id = r_1051, name = trehalose-phosphatase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1051_FLUX_VALUE=8.88088702062361E-4;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1051_Vmax=0.00888088702062361;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1051_Keq=0.2;
	% Local Parameter:   id =  Km0409, name = Km0409
	reaction_r_1051_Km0409=0.1;
	% Local Parameter:   id =  Km1322, name = Km1322
	reaction_r_1051_Km1322=0.1;
	% Local Parameter:   id =  Km1520, name = Km1520
	reaction_r_1051_Km1520=0.1;

	reaction_r_1051=compartment_cell*reaction_r_1051_Vmax*(x(84)-x(234)*x(265)/reaction_r_1051_Keq)/reaction_r_1051_Km0409/(1+x(84)/reaction_r_1051_Km0409+(1+x(234)/reaction_r_1051_Km1322)*(1+x(265)/reaction_r_1051_Km1520)-1);

% Reaction: id = r_1052, name = triacylglycerol lipase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1052_FLUX_VALUE=5.10195573579038E-4;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1052_Vmax=0.00510195573579038;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1052_Keq=20.0;
	% Local Parameter:   id =  Km0619, name = Km0619
	reaction_r_1052_Km0619=0.1;
	% Local Parameter:   id =  Km0056, name = Km0056
	reaction_r_1052_Km0056=0.1;
	% Local Parameter:   id =  Km1524, name = Km1524
	reaction_r_1052_Km1524=0.1;

	reaction_r_1052=compartment_cell*reaction_r_1052_Vmax*(x(129)*x(13)-x(266)/reaction_r_1052_Keq)/(reaction_r_1052_Km0619*reaction_r_1052_Km0056)/((1+x(129)/reaction_r_1052_Km0619)*(1+x(13)/reaction_r_1052_Km0056)+1+x(266)/reaction_r_1052_Km1524-1);

% Reaction: id = r_1054, name = triose-phosphate isomerase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1054_FLUX_VALUE=0.850333043996831;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1054_Vmax=5.10199826398099;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1054_Keq=2.0;
	% Local Parameter:   id =  Km0629, name = Km0629
	reaction_r_1054_Km0629=0.1;
	% Local Parameter:   id =  Km0764, name = Km0764
	reaction_r_1054_Km0764=0.1;

	reaction_r_1054=compartment_cell*reaction_r_1054_Vmax*(x(131)-x(156)/reaction_r_1054_Keq)/reaction_r_1054_Km0629/(1+x(131)/reaction_r_1054_Km0629+1+x(156)/reaction_r_1054_Km0764-1);

% Reaction: id = r_1055, name = tryptophan synthase (indoleglycerol phosphate)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1055_FLUX_VALUE=0.00107785124523996;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1055_Vmax=0.0150899174333594;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1055_Keq=2.0;
	% Local Parameter:   id =  Km0086, name = Km0086
	reaction_r_1055_Km0086=0.1;
	% Local Parameter:   id =  Km1039, name = Km1039
	reaction_r_1055_Km1039=0.1;
	% Local Parameter:   id =  Km0764, name = Km0764
	reaction_r_1055_Km0764=0.1;
	% Local Parameter:   id =  Km1048, name = Km1048
	reaction_r_1055_Km1048=0.1;

	reaction_r_1055=compartment_cell*reaction_r_1055_Vmax*(x(21)*x(197)-x(156)*x(199)/reaction_r_1055_Keq)/(reaction_r_1055_Km0086*reaction_r_1055_Km1039)/((1+x(21)/reaction_r_1055_Km0086)*(1+x(197)/reaction_r_1055_Km1039)+(1+x(156)/reaction_r_1055_Km0764)*(1+x(199)/reaction_r_1055_Km1048)-1);

% Reaction: id = r_1057, name = tryptophanyl-tRNA synthetase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1057_FLUX_VALUE=0.00107785124523807;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1057_Vmax=0.0323355373571421;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1057_Keq=2.0;
	% Local Parameter:   id =  Km0434, name = Km0434
	reaction_r_1057_Km0434=0.1;
	% Local Parameter:   id =  Km1048, name = Km1048
	reaction_r_1057_Km1048=0.1;
	% Local Parameter:   id =  Km1610, name = Km1610
	reaction_r_1057_Km1610=0.1;
	% Local Parameter:   id =  Km0423, name = Km0423
	reaction_r_1057_Km0423=0.1;
	% Local Parameter:   id =  Km0633, name = Km0633
	reaction_r_1057_Km0633=0.1;
	% Local Parameter:   id =  Km1527, name = Km1527
	reaction_r_1057_Km1527=0.1;

	reaction_r_1057=compartment_cell*reaction_r_1057_Vmax*(x(91)*x(199)*x(299)-x(86)*x(132)*x(267)/reaction_r_1057_Keq)/(reaction_r_1057_Km0434*reaction_r_1057_Km1048*reaction_r_1057_Km1610)/((1+x(91)/reaction_r_1057_Km0434)*(1+x(199)/reaction_r_1057_Km1048)*(1+x(299)/reaction_r_1057_Km1610)+(1+x(86)/reaction_r_1057_Km0423)*(1+x(132)/reaction_r_1057_Km0633)*(1+x(267)/reaction_r_1057_Km1527)-1);

% Reaction: id = r_1063, name = tyrosine transaminase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1063_FLUX_VALUE=0.00387115588138798;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1063_Vmax=0.0541961823394317;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1063_Keq=2.0;
	% Local Parameter:   id =  Km0204, name = Km0204
	reaction_r_1063_Km0204=0.1;
	% Local Parameter:   id =  Km0991, name = Km0991
	reaction_r_1063_Km0991=0.1;
	% Local Parameter:   id =  Km0180, name = Km0180
	reaction_r_1063_Km0180=0.1;
	% Local Parameter:   id =  Km1051, name = Km1051
	reaction_r_1063_Km1051=0.1;

	reaction_r_1063=compartment_cell*reaction_r_1063_Vmax*(x(40)*x(182)-x(36)*x(200)/reaction_r_1063_Keq)/(reaction_r_1063_Km0204*reaction_r_1063_Km0991)/((1+x(40)/reaction_r_1063_Km0204)*(1+x(182)/reaction_r_1063_Km0991)+(1+x(36)/reaction_r_1063_Km0180)*(1+x(200)/reaction_r_1063_Km1051)-1);

% Reaction: id = r_1066, name = tyrosyl-tRNA synthetase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1066_FLUX_VALUE=0.00387115588078469;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1066_Vmax=0.116134676423541;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1066_Keq=2.0;
	% Local Parameter:   id =  Km0434, name = Km0434
	reaction_r_1066_Km0434=0.1;
	% Local Parameter:   id =  Km1051, name = Km1051
	reaction_r_1066_Km1051=0.1;
	% Local Parameter:   id =  Km1612, name = Km1612
	reaction_r_1066_Km1612=0.1;
	% Local Parameter:   id =  Km0423, name = Km0423
	reaction_r_1066_Km0423=0.1;
	% Local Parameter:   id =  Km0633, name = Km0633
	reaction_r_1066_Km0633=0.1;
	% Local Parameter:   id =  Km1533, name = Km1533
	reaction_r_1066_Km1533=0.1;

	reaction_r_1066=compartment_cell*reaction_r_1066_Vmax*(x(91)*x(200)*x(300)-x(86)*x(132)*x(268)/reaction_r_1066_Keq)/(reaction_r_1066_Km0434*reaction_r_1066_Km1051*reaction_r_1066_Km1612)/((1+x(91)/reaction_r_1066_Km0434)*(1+x(200)/reaction_r_1066_Km1051)*(1+x(300)/reaction_r_1066_Km1612)+(1+x(86)/reaction_r_1066_Km0423)*(1+x(132)/reaction_r_1066_Km0633)*(1+x(268)/reaction_r_1066_Km1533)-1);

% Reaction: id = r_1072, name = UMP kinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1072_FLUX_VALUE=0.00192419218784248;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1072_Vmax=0.0269386906297947;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1072_Keq=2.0;
	% Local Parameter:   id =  Km0434, name = Km0434
	reaction_r_1072_Km0434=0.1;
	% Local Parameter:   id =  Km1545, name = Km1545
	reaction_r_1072_Km1545=0.1;
	% Local Parameter:   id =  Km0394, name = Km0394
	reaction_r_1072_Km0394=0.1;
	% Local Parameter:   id =  Km1538, name = Km1538
	reaction_r_1072_Km1538=0.1;

	reaction_r_1072=compartment_cell*reaction_r_1072_Vmax*(x(91)*x(273)-x(81)*x(271)/reaction_r_1072_Keq)/(reaction_r_1072_Km0434*reaction_r_1072_Km1545)/((1+x(91)/reaction_r_1072_Km0434)*(1+x(273)/reaction_r_1072_Km1545)+(1+x(81)/reaction_r_1072_Km0394)*(1+x(271)/reaction_r_1072_Km1538)-1);

% Reaction: id = r_1084, name = UTP-glucose-1-phosphate uridylyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1084_FLUX_VALUE=0.106703478028585;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1084_Vmax=1.49384869240019;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1084_Keq=2.0;
	% Local Parameter:   id =  Km0567, name = Km0567
	reaction_r_1084_Km0567=0.1;
	% Local Parameter:   id =  Km1559, name = Km1559
	reaction_r_1084_Km1559=0.1;
	% Local Parameter:   id =  Km0633, name = Km0633
	reaction_r_1084_Km0633=0.1;
	% Local Parameter:   id =  Km1543, name = Km1543
	reaction_r_1084_Km1543=0.1;

	reaction_r_1084=compartment_cell*reaction_r_1084_Vmax*(x(114)*x(274)-x(132)*x(272)/reaction_r_1084_Keq)/(reaction_r_1084_Km0567*reaction_r_1084_Km1559)/((1+x(114)/reaction_r_1084_Km0567)*(1+x(274)/reaction_r_1084_Km1559)+(1+x(132)/reaction_r_1084_Km0633)*(1+x(272)/reaction_r_1084_Km1543)-1);

% Reaction: id = r_1087, name = valine transaminase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1087_FLUX_VALUE=0.01004223378483;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1087_Vmax=0.14059127298762;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1087_Keq=2.0;
	% Local Parameter:   id =  Km0232, name = Km0232
	reaction_r_1087_Km0232=0.1;
	% Local Parameter:   id =  Km0991, name = Km0991
	reaction_r_1087_Km0991=0.1;
	% Local Parameter:   id =  Km0180, name = Km0180
	reaction_r_1087_Km0180=0.1;
	% Local Parameter:   id =  Km1056, name = Km1056
	reaction_r_1087_Km1056=0.1;

	reaction_r_1087=compartment_cell*reaction_r_1087_Vmax*(x(47)*x(182)-x(36)*x(201)/reaction_r_1087_Keq)/(reaction_r_1087_Km0232*reaction_r_1087_Km0991)/((1+x(47)/reaction_r_1087_Km0232)*(1+x(182)/reaction_r_1087_Km0991)+(1+x(36)/reaction_r_1087_Km0180)*(1+x(201)/reaction_r_1087_Km1056)-1);

% Reaction: id = r_1089, name = valyl-tRNA synthetase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1089_FLUX_VALUE=0.010042233784859;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1089_Vmax=0.30126701354577;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1089_Keq=2.0;
	% Local Parameter:   id =  Km0434, name = Km0434
	reaction_r_1089_Km0434=0.1;
	% Local Parameter:   id =  Km1056, name = Km1056
	reaction_r_1089_Km1056=0.1;
	% Local Parameter:   id =  Km1614, name = Km1614
	reaction_r_1089_Km1614=0.1;
	% Local Parameter:   id =  Km0423, name = Km0423
	reaction_r_1089_Km0423=0.1;
	% Local Parameter:   id =  Km0633, name = Km0633
	reaction_r_1089_Km0633=0.1;
	% Local Parameter:   id =  Km1561, name = Km1561
	reaction_r_1089_Km1561=0.1;

	reaction_r_1089=compartment_cell*reaction_r_1089_Vmax*(x(91)*x(201)*x(301)-x(86)*x(132)*x(275)/reaction_r_1089_Keq)/(reaction_r_1089_Km0434*reaction_r_1089_Km1056*reaction_r_1089_Km1614)/((1+x(91)/reaction_r_1089_Km0434)*(1+x(201)/reaction_r_1089_Km1056)*(1+x(301)/reaction_r_1089_Km1614)+(1+x(86)/reaction_r_1089_Km0423)*(1+x(132)/reaction_r_1089_Km0633)*(1+x(275)/reaction_r_1089_Km1561)-1);

% Reaction: id = r_1115, name = ammonia transport	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1115_FLUX_VALUE=0.212107675642733;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1115_Vmax=0.707025585475777;
	% Local Parameter:   id =  Km0420, name = Km0420
	reaction_r_1115_Km0420=1.0;
	% Local Parameter:   id =  Km0419, name = Km0419
	reaction_r_1115_Km0419=0.1;

	reaction_r_1115=compartment_cell*reaction_r_1115_Vmax*(const_species_s_0420-x(85))/reaction_r_1115_Km0420/(1+const_species_s_0420/reaction_r_1115_Km0420+1+x(85)/reaction_r_1115_Km0419-1);

% Reaction: id = r_1166, name = glucose transport	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1166_FLUX_VALUE=1.0;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1166_Vmax=3.33333333333333;
	% Local Parameter:   id =  Km0565, name = Km0565
	reaction_r_1166_Km0565=1.0;
	% Local Parameter:   id =  Km0563, name = Km0563
	reaction_r_1166_Km0563=0.1;

	reaction_r_1166=compartment_cell*reaction_r_1166_Vmax*(const_species_s_0565-x(113))/reaction_r_1166_Km0565/(1+const_species_s_0565/reaction_r_1166_Km0565+1+x(113)/reaction_r_1166_Km0563-1);

% Reaction: id = r_1244, name = phosphate transport	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1244_FLUX_VALUE=0.0300082373429098;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1244_Vmax=0.100027457809699;
	% Local Parameter:   id =  Km1324, name = Km1324
	reaction_r_1244_Km1324=1.0;
	% Local Parameter:   id =  Km1322, name = Km1322
	reaction_r_1244_Km1322=0.1;

	reaction_r_1244=compartment_cell*reaction_r_1244_Vmax*(const_species_s_1324-x(234))/reaction_r_1244_Km1324/(1+const_species_s_1324/reaction_r_1244_Km1324+1+x(234)/reaction_r_1244_Km1322-1);

% Reaction: id = r_1266, name = sulfate uniport	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1266_FLUX_VALUE=0.00293372891749683;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1266_Vmax=0.0097790963916561;
	% Local Parameter:   id =  Km1468, name = Km1468
	reaction_r_1266_Km1468=1.0;
	% Local Parameter:   id =  Km1467, name = Km1467
	reaction_r_1266_Km1467=0.1;

	reaction_r_1266=compartment_cell*reaction_r_1266_Vmax*(const_species_s_1468-x(261))/reaction_r_1266_Km1468/(1+const_species_s_1468/reaction_r_1266_Km1468+1+x(261)/reaction_r_1266_Km1467-1);

% Reaction: id = r_1664, name = bicarbonate formation	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1664_FLUX_VALUE=0.087517608841966;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1664_Vmax=0.525105653051796;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1664_Keq=2.0;
	% Local Parameter:   id =  Km0456, name = Km0456
	reaction_r_1664_Km0456=0.1;
	% Local Parameter:   id =  Km0445, name = Km0445
	reaction_r_1664_Km0445=0.1;

	reaction_r_1664=compartment_cell*reaction_r_1664_Vmax*(x(95)-x(92)/reaction_r_1664_Keq)/reaction_r_1664_Km0456/(1+x(95)/reaction_r_1664_Km0456+1+x(92)/reaction_r_1664_Km0445-1);

% Reaction: id = r_1697, name = CO2 transport	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1697_FLUX_VALUE=1.51989569594335;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1697_Vmax=3.0397913918867;
	% Local Parameter:   id =  Km0456, name = Km0456
	reaction_r_1697_Km0456=0.1;

	reaction_r_1697=compartment_cell*reaction_r_1697_Vmax*x(95)/reaction_r_1697_Km0456/(1+x(95)/reaction_r_1697_Km0456);

% Reaction: id = r_1704, name = cytidylate kinase (dCMP)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1704_FLUX_VALUE=9.44495616916319E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1704_Vmax=0.00132229386368285;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1704_Keq=2.0;
	% Local Parameter:   id =  Km0394, name = Km0394
	reaction_r_1704_Km0394=0.1;
	% Local Parameter:   id =  Km0587, name = Km0587
	reaction_r_1704_Km0587=0.1;
	% Local Parameter:   id =  Km0434, name = Km0434
	reaction_r_1704_Km0434=0.1;
	% Local Parameter:   id =  Km0589, name = Km0589
	reaction_r_1704_Km0589=0.1;

	reaction_r_1704=compartment_cell*reaction_r_1704_Vmax*(x(81)*x(123)-x(91)*x(124)/reaction_r_1704_Keq)/(reaction_r_1704_Km0394*reaction_r_1704_Km0587)/((1+x(81)/reaction_r_1704_Km0394)*(1+x(123)/reaction_r_1704_Km0587)+(1+x(91)/reaction_r_1704_Km0434)*(1+x(124)/reaction_r_1704_Km0589)-1);

% Reaction: id = r_1729, name = deoxyadenylate kinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1729_FLUX_VALUE=1.36629031036409E-4;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1729_Vmax=0.00191280643450973;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1729_Keq=2.0;
	% Local Parameter:   id =  Km0394, name = Km0394
	reaction_r_1729_Km0394=0.1;
	% Local Parameter:   id =  Km0582, name = Km0582
	reaction_r_1729_Km0582=0.1;
	% Local Parameter:   id =  Km0434, name = Km0434
	reaction_r_1729_Km0434=0.1;
	% Local Parameter:   id =  Km0584, name = Km0584
	reaction_r_1729_Km0584=0.1;

	reaction_r_1729=compartment_cell*reaction_r_1729_Vmax*(x(81)*x(120)-x(91)*x(121)/reaction_r_1729_Keq)/(reaction_r_1729_Km0394*reaction_r_1729_Km0582)/((1+x(81)/reaction_r_1729_Km0394)*(1+x(120)/reaction_r_1729_Km0582)+(1+x(91)/reaction_r_1729_Km0434)*(1+x(121)/reaction_r_1729_Km0584)-1);

% Reaction: id = r_1795, name = formate transport	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1795_FLUX_VALUE=2.87599469319674;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1795_Vmax=5.75198938639348;
	% Local Parameter:   id =  Km0722, name = Km0722
	reaction_r_1795_Km0722=0.1;

	reaction_r_1795=compartment_cell*reaction_r_1795_Vmax*x(146)/reaction_r_1795_Km0722/(1+x(146)/reaction_r_1795_Km0722);

% Reaction: id = r_1979, name = O2 transport	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1979_FLUX_VALUE=2.94122930652654;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1979_Vmax=9.8040976884218;
	% Local Parameter:   id =  Km1277, name = Km1277
	reaction_r_1979_Km1277=1.0;
	% Local Parameter:   id =  Km1275, name = Km1275
	reaction_r_1979_Km1275=0.1;

	reaction_r_1979=compartment_cell*reaction_r_1979_Vmax*(const_species_s_1277-x(230))/reaction_r_1979_Km1277/(1+const_species_s_1277/reaction_r_1979_Km1277+1+x(230)/reaction_r_1979_Km1275-1);

% Reaction: id = r_2030, name = pyrimidine phosphatase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_2030_FLUX_VALUE=3.75729835487922E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_2030_Vmax=3.75729835487922E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_2030_Keq=0.2;
	% Local Parameter:   id =  Km0313, name = Km0313
	reaction_r_2030_Km0313=0.1;
	% Local Parameter:   id =  Km0314, name = Km0314
	reaction_r_2030_Km0314=0.1;
	% Local Parameter:   id =  Km1322, name = Km1322
	reaction_r_2030_Km1322=0.1;

	reaction_r_2030=compartment_cell*reaction_r_2030_Vmax*(x(65)-x(66)*x(234)/reaction_r_2030_Keq)/reaction_r_2030_Km0313/(1+x(65)/reaction_r_2030_Km0313+(1+x(66)/reaction_r_2030_Km0314)*(1+x(234)/reaction_r_2030_Km1322)-1);

% Reaction: id = r_2111, name = growth	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_2111_FLUX_VALUE=0.0379525086351436;
	% Local Parameter:   id =  zero_flux, name = zero_flux
	reaction_r_2111_zero_flux=0.0;
	% Local Parameter:   id =  V0, name = V0
	reaction_r_2111_V0=0.0379525086351872;
	% Local Parameter:   id =  ic0002, name = ic0002
	reaction_r_2111_ic0002=0.1;
	% Local Parameter:   id =  ep0002, name = ep0002
	reaction_r_2111_ep0002=1.1348;
	% Local Parameter:   id =  ic0423, name = ic0423
	reaction_r_2111_ic0423=0.1;
	% Local Parameter:   id =  ep0423, name = ep0423
	reaction_r_2111_ep0423=0.046;
	% Local Parameter:   id =  ic0434, name = ic0434
	reaction_r_2111_ic0434=0.1;
	% Local Parameter:   id =  ep0434, name = ep0434
	reaction_r_2111_ep0434=59.276;
	% Local Parameter:   id =  ic0526, name = ic0526
	reaction_r_2111_ic0526=0.1;
	% Local Parameter:   id =  ep0526, name = ep0526
	reaction_r_2111_ep0526=0.0447;
	% Local Parameter:   id =  ic0584, name = ic0584
	reaction_r_2111_ic0584=0.1;
	% Local Parameter:   id =  ep0584, name = ep0584
	reaction_r_2111_ep0584=0.0036;
	% Local Parameter:   id =  ic0589, name = ic0589
	reaction_r_2111_ic0589=0.1;
	% Local Parameter:   id =  ep0589, name = ep0589
	reaction_r_2111_ep0589=0.0024;
	% Local Parameter:   id =  ic0615, name = ic0615
	reaction_r_2111_ic0615=0.1;
	% Local Parameter:   id =  ep0615, name = ep0615
	reaction_r_2111_ep0615=0.0024;
	% Local Parameter:   id =  ic0649, name = ic0649
	reaction_r_2111_ic0649=0.1;
	% Local Parameter:   id =  ep0649, name = ep0649
	reaction_r_2111_ep0649=0.0036;
	% Local Parameter:   id =  ic0773, name = ic0773
	reaction_r_2111_ic0773=0.1;
	% Local Parameter:   id =  ep0773, name = ep0773
	reaction_r_2111_ep0773=0.5185;
	% Local Parameter:   id =  ic0782, name = ic0782
	reaction_r_2111_ic0782=0.1;
	% Local Parameter:   id =  ep0782, name = ep0782
	reaction_r_2111_ep0782=0.046;
	% Local Parameter:   id =  ic1107, name = ic1107
	reaction_r_2111_ic1107=0.1;
	% Local Parameter:   id =  ep1107, name = ep1107
	reaction_r_2111_ep1107=0.8079;
	% Local Parameter:   id =  ic1405, name = ic1405
	reaction_r_2111_ic1405=0.1;
	% Local Parameter:   id =  ep1405, name = ep1405
	reaction_r_2111_ep1405=9.9E-4;
	% Local Parameter:   id =  ic1467, name = ic1467
	reaction_r_2111_ic1467=0.1;
	% Local Parameter:   id =  ep1467, name = ep1467
	reaction_r_2111_ep1467=0.02;
	% Local Parameter:   id =  ic1520, name = ic1520
	reaction_r_2111_ic1520=0.1;
	% Local Parameter:   id =  ep1520, name = ep1520
	reaction_r_2111_ep1520=0.0234;
	% Local Parameter:   id =  ic1545, name = ic1545
	reaction_r_2111_ic1545=0.1;
	% Local Parameter:   id =  ep1545, name = ep1545
	reaction_r_2111_ep1545=0.0599;
	% Local Parameter:   id =  ic0004, name = ic0004
	reaction_r_2111_ic0004=0.1;
	% Local Parameter:   id =  ep0004, name = ep0004
	reaction_r_2111_ep0004=1.1348;
	% Local Parameter:   id =  ic0404, name = ic0404
	reaction_r_2111_ic0404=0.1;
	% Local Parameter:   id =  ep0404, name = ep0404
	reaction_r_2111_ep0404=0.4588;
	% Local Parameter:   id =  ic0428, name = ic0428
	reaction_r_2111_ic0428=0.1;
	% Local Parameter:   id =  ep0428, name = ep0428
	reaction_r_2111_ep0428=0.1607;
	% Local Parameter:   id =  ic0430, name = ic0430
	reaction_r_2111_ic0430=0.1;
	% Local Parameter:   id =  ep0430, name = ep0430
	reaction_r_2111_ep0430=0.1017;
	% Local Parameter:   id =  ic0432, name = ic0432
	reaction_r_2111_ic0432=0.1;
	% Local Parameter:   id =  ep0432, name = ep0432
	reaction_r_2111_ep0432=0.2975;
	% Local Parameter:   id =  ic0542, name = ic0542
	reaction_r_2111_ic0542=0.1;
	% Local Parameter:   id =  ep0542, name = ep0542
	reaction_r_2111_ep0542=0.0066;
	% Local Parameter:   id =  ic0747, name = ic0747
	reaction_r_2111_ic0747=0.1;
	% Local Parameter:   id =  ep0747, name = ep0747
	reaction_r_2111_ep0747=0.1054;
	% Local Parameter:   id =  ic0748, name = ic0748
	reaction_r_2111_ic0748=0.1;
	% Local Parameter:   id =  ep0748, name = ep0748
	reaction_r_2111_ep0748=0.3018;
	% Local Parameter:   id =  ic0757, name = ic0757
	reaction_r_2111_ic0757=0.1;
	% Local Parameter:   id =  ep0757, name = ep0757
	reaction_r_2111_ep0757=0.2904;
	% Local Parameter:   id =  ic0832, name = ic0832
	reaction_r_2111_ic0832=0.1;
	% Local Parameter:   id =  ep0832, name = ep0832
	reaction_r_2111_ep0832=0.0663;
	% Local Parameter:   id =  ic0847, name = ic0847
	reaction_r_2111_ic0847=0.1;
	% Local Parameter:   id =  ep0847, name = ep0847
	reaction_r_2111_ep0847=0.1927;
	% Local Parameter:   id =  ic1077, name = ic1077
	reaction_r_2111_ic1077=0.1;
	% Local Parameter:   id =  ep1077, name = ep1077
	reaction_r_2111_ep1077=0.2964;
	% Local Parameter:   id =  ic1099, name = ic1099
	reaction_r_2111_ic1099=0.1;
	% Local Parameter:   id =  ep1099, name = ep1099
	reaction_r_2111_ep1099=0.2862;
	% Local Parameter:   id =  ic1148, name = ic1148
	reaction_r_2111_ic1148=0.1;
	% Local Parameter:   id =  ep1148, name = ep1148
	reaction_r_2111_ep1148=0.0507;
	% Local Parameter:   id =  ic1314, name = ic1314
	reaction_r_2111_ic1314=0.1;
	% Local Parameter:   id =  ep1314, name = ep1314
	reaction_r_2111_ep1314=0.1339;
	% Local Parameter:   id =  ic1379, name = ic1379
	reaction_r_2111_ic1379=0.1;
	% Local Parameter:   id =  ep1379, name = ep1379
	reaction_r_2111_ep1379=0.1647;
	% Local Parameter:   id =  ic1337, name = ic1337
	reaction_r_2111_ic1337=0.1;
	% Local Parameter:   id =  ep1337, name = ep1337
	reaction_r_2111_ep1337=3.9E-4;
	% Local Parameter:   id =  ic0089, name = ic0089
	reaction_r_2111_ic0089=0.1;
	% Local Parameter:   id =  ep0089, name = ep0089
	reaction_r_2111_ep0089=0.001583;
	% Local Parameter:   id =  ic1428, name = ic1428
	reaction_r_2111_ic1428=0.1;
	% Local Parameter:   id =  ep1428, name = ep1428
	reaction_r_2111_ep1428=0.1854;
	% Local Parameter:   id =  ic1491, name = ic1491
	reaction_r_2111_ic1491=0.1;
	% Local Parameter:   id =  ep1491, name = ep1491
	reaction_r_2111_ep1491=0.1914;
	% Local Parameter:   id =  ic1527, name = ic1527
	reaction_r_2111_ic1527=0.1;
	% Local Parameter:   id =  ep1527, name = ep1527
	reaction_r_2111_ep1527=0.0284;
	% Local Parameter:   id =  ic1533, name = ic1533
	reaction_r_2111_ic1533=0.1;
	% Local Parameter:   id =  ep1533, name = ep1533
	reaction_r_2111_ep1533=0.102;
	% Local Parameter:   id =  ic1561, name = ic1561
	reaction_r_2111_ic1561=0.1;
	% Local Parameter:   id =  ep1561, name = ep1561
	reaction_r_2111_ep1561=0.2646;
	% Local Parameter:   id =  ic0122, name = ic0122
	reaction_r_2111_ic0122=0.1;
	% Local Parameter:   id =  ep0122, name = ep0122
	reaction_r_2111_ep0122=5.6E-5;
	% Local Parameter:   id =  ic0918, name = ic0918
	reaction_r_2111_ic0918=0.1;
	% Local Parameter:   id =  ep0918, name = ep0918
	reaction_r_2111_ep0918=5.38625E-4;
	% Local Parameter:   id =  ic0657, name = ic0657
	reaction_r_2111_ic0657=0.1;
	% Local Parameter:   id =  ep0657, name = ep0657
	reaction_r_2111_ep0657=9.6E-5;
	% Local Parameter:   id =  ic0662, name = ic0662
	reaction_r_2111_ic0662=0.1;
	% Local Parameter:   id =  ep0662, name = ep0662
	reaction_r_2111_ep0662=1.25E-4;
	% Local Parameter:   id =  ic0666, name = ic0666
	reaction_r_2111_ic0666=0.1;
	% Local Parameter:   id =  ep0666, name = ep0666
	reaction_r_2111_ep0666=0.0056;
	% Local Parameter:   id =  ic0672, name = ic0672
	reaction_r_2111_ic0672=0.1;
	% Local Parameter:   id =  ep0672, name = ep0672
	reaction_r_2111_ep0672=8.12E-4;
	% Local Parameter:   id =  ic0056, name = ic0056
	reaction_r_2111_ic0056=0.1;
	% Local Parameter:   id =  ep0056, name = ep0056
	reaction_r_2111_ep0056=8.92666666666666E-4;
	% Local Parameter:   id =  ic0700, name = ic0700
	reaction_r_2111_ic0700=0.1;
	% Local Parameter:   id =  ep0700, name = ep0700
	reaction_r_2111_ep0700=1.14E-4;
	% Local Parameter:   id =  ic1059, name = ic1059
	reaction_r_2111_ic1059=0.1;
	% Local Parameter:   id =  ep1059, name = ep1059
	reaction_r_2111_ep1059=3.2E-5;
	% Local Parameter:   id =  ic1346, name = ic1346
	reaction_r_2111_ic1346=0.1;
	% Local Parameter:   id =  ep1346, name = ep1346
	reaction_r_2111_ep1346=0.00288;
	% Local Parameter:   id =  ic1351, name = ic1351
	reaction_r_2111_ic1351=0.1;
	% Local Parameter:   id =  ep1351, name = ep1351
	reaction_r_2111_ep1351=6.97E-4;
	% Local Parameter:   id =  ic1524, name = ic1524
	reaction_r_2111_ic1524=0.1;
	% Local Parameter:   id =  ep1524, name = ep1524
	reaction_r_2111_ep1524=7.81E-4;
	% Local Parameter:   id =  ic1569, name = ic1569
	reaction_r_2111_ic1569=0.1;
	% Local Parameter:   id =  ep1569, name = ep1569
	reaction_r_2111_ep1569=1.5E-5;

	reaction_r_2111=compartment_cell*max(reaction_r_2111_V0*(1+reaction_r_2111_ep0002*log(x(1)/reaction_r_2111_ic0002)+reaction_r_2111_ep0423*log(x(86)/reaction_r_2111_ic0423)+reaction_r_2111_ep0434*log(x(91)/reaction_r_2111_ic0434)+reaction_r_2111_ep0526*log(x(105)/reaction_r_2111_ic0526)+reaction_r_2111_ep0584*log(x(121)/reaction_r_2111_ic0584)+reaction_r_2111_ep0589*log(x(124)/reaction_r_2111_ic0589)+reaction_r_2111_ep0615*log(x(128)/reaction_r_2111_ic0615)+reaction_r_2111_ep0649*log(x(135)/reaction_r_2111_ic0649)+reaction_r_2111_ep0773*log(x(158)/reaction_r_2111_ic0773)+reaction_r_2111_ep0782*log(x(159)/reaction_r_2111_ic0782)+reaction_r_2111_ep1107*log(x(209)/reaction_r_2111_ic1107)+reaction_r_2111_ep1405*log(x(250)/reaction_r_2111_ic1405)+reaction_r_2111_ep1467*log(x(261)/reaction_r_2111_ic1467)+reaction_r_2111_ep1520*log(x(265)/reaction_r_2111_ic1520)+reaction_r_2111_ep1545*log(x(273)/reaction_r_2111_ic1545)+reaction_r_2111_ep0004*log(x(2)/reaction_r_2111_ic0004)+reaction_r_2111_ep0404*log(x(83)/reaction_r_2111_ic0404)+reaction_r_2111_ep0428*log(x(88)/reaction_r_2111_ic0428)+reaction_r_2111_ep0430*log(x(89)/reaction_r_2111_ic0430)+reaction_r_2111_ep0432*log(x(90)/reaction_r_2111_ic0432)+reaction_r_2111_ep0542*log(x(108)/reaction_r_2111_ic0542)+reaction_r_2111_ep0747*log(x(151)/reaction_r_2111_ic0747)+reaction_r_2111_ep0748*log(x(152)/reaction_r_2111_ic0748)+reaction_r_2111_ep0757*log(x(155)/reaction_r_2111_ic0757)+reaction_r_2111_ep0832*log(x(161)/reaction_r_2111_ic0832)+reaction_r_2111_ep0847*log(x(166)/reaction_r_2111_ic0847)+reaction_r_2111_ep1077*log(x(205)/reaction_r_2111_ic1077)+reaction_r_2111_ep1099*log(x(207)/reaction_r_2111_ic1099)+reaction_r_2111_ep1148*log(x(210)/reaction_r_2111_ic1148)+reaction_r_2111_ep1314*log(x(233)/reaction_r_2111_ic1314)+reaction_r_2111_ep1379*log(x(247)/reaction_r_2111_ic1379)+reaction_r_2111_ep1337*log(x(236)/reaction_r_2111_ic1337)+reaction_r_2111_ep0089*log(x(22)/reaction_r_2111_ic0089)+reaction_r_2111_ep1428*log(x(255)/reaction_r_2111_ic1428)+reaction_r_2111_ep1491*log(x(264)/reaction_r_2111_ic1491)+reaction_r_2111_ep1527*log(x(267)/reaction_r_2111_ic1527)+reaction_r_2111_ep1533*log(x(268)/reaction_r_2111_ic1533)+reaction_r_2111_ep1561*log(x(275)/reaction_r_2111_ic1561)+reaction_r_2111_ep0122*log(x(25)/reaction_r_2111_ic0122)+reaction_r_2111_ep0918*log(x(168)/reaction_r_2111_ic0918)+reaction_r_2111_ep0657*log(x(138)/reaction_r_2111_ic0657)+reaction_r_2111_ep0662*log(x(139)/reaction_r_2111_ic0662)+reaction_r_2111_ep0666*log(x(141)/reaction_r_2111_ic0666)+reaction_r_2111_ep0672*log(x(142)/reaction_r_2111_ic0672)+reaction_r_2111_ep0056*log(x(13)/reaction_r_2111_ic0056)+reaction_r_2111_ep0700*log(x(143)/reaction_r_2111_ic0700)+reaction_r_2111_ep1059*log(x(202)/reaction_r_2111_ic1059)+reaction_r_2111_ep1346*log(x(239)/reaction_r_2111_ic1346)+reaction_r_2111_ep1351*log(x(240)/reaction_r_2111_ic1351)+reaction_r_2111_ep1524*log(x(266)/reaction_r_2111_ic1524)+reaction_r_2111_ep1569*log(x(277)/reaction_r_2111_ic1569)), reaction_r_2111_zero_flux);

% Species:   id = s_0420, name = ammonium, constant	const_species_s_0420=1.0;

% Species:   id = s_0458, name = carbon dioxide, constant	const_species_s_0458=0.0;

% Species:   id = s_0565, name = D-glucose, constant	const_species_s_0565=1.0;

% Species:   id = s_0723, name = formate, constant	const_species_s_0723=0.0;

% Species:   id = s_1277, name = oxygen, constant	const_species_s_1277=1.0;

% Species:   id = s_1324, name = phosphate, constant	const_species_s_1324=1.0;

% Species:   id = s_1468, name = sulphate, constant	const_species_s_1468=1.0;

% Species:   id = e_0001, name = COX1, constant	const_species_e_0001=0.001;

% Species:   id = e_0004, name = COB, constant	const_species_e_0004=0.001;

% Species:   id = e_0006, name = COX2, constant	const_species_e_0006=0.001;

% Species:   id = e_0007, name = COX3, constant	const_species_e_0007=0.001;

% Species:   id = e_0008, name = CYS3, constant	const_species_e_0008=0.001;

% Species:   id = e_0010, name = PMT2, constant	const_species_e_0010=0.001;

% Species:   id = e_0011, name = CDC19, constant	const_species_e_0011=0.001;

% Species:   id = e_0012, name = GCV3, constant	const_species_e_0012=0.001;

% Species:   id = e_0016, name = GDH3, constant	const_species_e_0016=0.001;

% Species:   id = e_0017, name = ADE1, constant	const_species_e_0017=0.001;

% Species:   id = e_0020, name = SCT1, constant	const_species_e_0020=0.001;

% Species:   id = e_0022, name = ACH1, constant	const_species_e_0022=0.001;

% Species:   id = e_0025, name = RIB1, constant	const_species_e_0025=0.001;

% Species:   id = e_0026, name = URA7, constant	const_species_e_0026=0.001;

% Species:   id = e_0028, name = COR1, constant	const_species_e_0028=0.001;

% Species:   id = e_0029, name = PRX1, constant	const_species_e_0029=0.001;

% Species:   id = e_0030, name = PRS4, constant	const_species_e_0030=0.001;

% Species:   id = e_0031, name = ILS1, constant	const_species_e_0031=0.001;

% Species:   id = e_0038, name = IPP1, constant	const_species_e_0038=0.001;

% Species:   id = e_0045, name = CDS1, constant	const_species_e_0045=0.001;

% Species:   id = e_0054, name = TSC3, constant	const_species_e_0054=0.001;

% Species:   id = e_0057, name = MIS1, constant	const_species_e_0057=0.001;

% Species:   id = e_0062, name = LYS2, constant	const_species_e_0062=0.001;

% Species:   id = e_0063, name = TKL2, constant	const_species_e_0063=0.001;

% Species:   id = e_0064, name = GRS1, constant	const_species_e_0064=0.001;

% Species:   id = e_0065, name = TPS1, constant	const_species_e_0065=0.001;

% Species:   id = e_0071, name = RIB7, constant	const_species_e_0071=0.001;

% Species:   id = e_0074, name = TYR1, constant	const_species_e_0074=0.001;

% Species:   id = e_0077, name = YPC1, constant	const_species_e_0077=0.001;

% Species:   id = e_0079, name = PGI1, constant	const_species_e_0079=0.001;

% Species:   id = e_0084, name = PYC2, constant	const_species_e_0084=0.001;

% Species:   id = e_0085, name = PDB1, constant	const_species_e_0085=0.001;

% Species:   id = e_0086, name = GPX2, constant	const_species_e_0086=0.001;

% Species:   id = e_0087, name = HIS7, constant	const_species_e_0087=0.001;

% Species:   id = e_0088, name = ARO4, constant	const_species_e_0088=0.001;

% Species:   id = e_0089, name = DUT1, constant	const_species_e_0089=0.001;

% Species:   id = e_0090, name = RIB5, constant	const_species_e_0090=0.001;

% Species:   id = e_0091, name = SHM1, constant	const_species_e_0091=0.001;

% Species:   id = e_0092, name = TSC10, constant	const_species_e_0092=0.001;

% Species:   id = e_0100, name = ILV6, constant	const_species_e_0100=0.001;

% Species:   id = e_0101, name = LEU2, constant	const_species_e_0101=0.001;

% Species:   id = e_0103, name = HIS4, constant	const_species_e_0103=0.001;

% Species:   id = e_0104, name = GRX1, constant	const_species_e_0104=0.001;

% Species:   id = e_0106, name = GLK1, constant	const_species_e_0106=0.001;

% Species:   id = e_0107, name = APA1, constant	const_species_e_0107=0.001;

% Species:   id = e_0111, name = CIT2, constant	const_species_e_0111=0.001;

% Species:   id = e_0113, name = PGK1, constant	const_species_e_0113=0.001;

% Species:   id = e_0117, name = FEN1, constant	const_species_e_0117=0.001;

% Species:   id = e_0122, name = THR4, constant	const_species_e_0122=0.001;

% Species:   id = e_0124, name = TRX3, constant	const_species_e_0124=0.001;

% Species:   id = e_0128, name = TSC13, constant	const_species_e_0128=0.001;

% Species:   id = e_0129, name = GPD1, constant	const_species_e_0129=0.001;

% Species:   id = e_0133, name = SLC1, constant	const_species_e_0133=0.001;

% Species:   id = e_0134, name = PSA1, constant	const_species_e_0134=0.001;

% Species:   id = e_0135, name = IDP1, constant	const_species_e_0135=0.001;

% Species:   id = e_0136, name = COX9, constant	const_species_e_0136=0.001;

% Species:   id = e_0137, name = MDH3, constant	const_species_e_0137=0.001;

% Species:   id = e_0139, name = NDE2, constant	const_species_e_0139=0.001;

% Species:   id = e_0141, name = PMT5, constant	const_species_e_0141=0.001;

% Species:   id = e_0142, name = PMT1, constant	const_species_e_0142=0.001;

% Species:   id = e_0146, name = LYS21, constant	const_species_e_0146=0.001;

% Species:   id = e_0154, name = LYS20, constant	const_species_e_0154=0.001;

% Species:   id = e_0160, name = GDH2, constant	const_species_e_0160=0.001;

% Species:   id = e_0165, name = TRP1, constant	const_species_e_0165=0.001;

% Species:   id = e_0167, name = GCV1, constant	const_species_e_0167=0.001;

% Species:   id = e_0168, name = SES1, constant	const_species_e_0168=0.001;

% Species:   id = e_0169, name = ARO3, constant	const_species_e_0169=0.001;

% Species:   id = e_0171, name = KRS1, constant	const_species_e_0171=0.001;

% Species:   id = e_0175, name = TPI1, constant	const_species_e_0175=0.001;

% Species:   id = e_0176, name = TGL2, constant	const_species_e_0176=0.001;

% Species:   id = e_0177, name = LCB2, constant	const_species_e_0177=0.001;

% Species:   id = e_0179, name = TPS2, constant	const_species_e_0179=0.001;

% Species:   id = e_0181, name = GRX3, constant	const_species_e_0181=0.001;

% Species:   id = e_0182, name = ARO1, constant	const_species_e_0182=0.001;

% Species:   id = e_0186, name = HOM2, constant	const_species_e_0186=0.001;

% Species:   id = e_0194, name = ADK1, constant	const_species_e_0194=0.001;

% Species:   id = e_0196, name = LYS4, constant	const_species_e_0196=0.001;

% Species:   id = e_0203, name = DPP1, constant	const_species_e_0203=0.001;

% Species:   id = e_0204, name = INM2, constant	const_species_e_0204=0.001;

% Species:   id = e_0206, name = SUR2, constant	const_species_e_0206=0.001;

% Species:   id = e_0214, name = YDR341C, constant	const_species_e_0214=0.001;

% Species:   id = e_0218, name = TRR1, constant	const_species_e_0218=0.001;

% Species:   id = e_0219, name = TRP4, constant	const_species_e_0219=0.001;

% Species:   id = e_0220, name = KEI1, constant	const_species_e_0220=0.001;

% Species:   id = e_0231, name = ADE8, constant	const_species_e_0231=0.001;

% Species:   id = e_0233, name = TSA2, constant	const_species_e_0233=0.001;

% Species:   id = e_0234, name = GUK1, constant	const_species_e_0234=0.001;

% Species:   id = e_0237, name = RIB3, constant	const_species_e_0237=0.001;

% Species:   id = e_0239, name = SAM2, constant	const_species_e_0239=0.001;

% Species:   id = e_0242, name = GRX2, constant	const_species_e_0242=0.001;

% Species:   id = e_0243, name = QCR7, constant	const_species_e_0243=0.001;

% Species:   id = e_0249, name = URA3, constant	const_species_e_0249=0.001;

% Species:   id = e_0250, name = RIP1, constant	const_species_e_0250=0.001;

% Species:   id = e_0255, name = CYC7, constant	const_species_e_0255=0.001;

% Species:   id = e_0269, name = PMI40, constant	const_species_e_0269=0.001;

% Species:   id = e_0271, name = YND1, constant	const_species_e_0271=0.001;

% Species:   id = e_0273, name = FAA2, constant	const_species_e_0273=0.001;

% Species:   id = e_0276, name = PRO3, constant	const_species_e_0276=0.001;

% Species:   id = e_0278, name = CHO1, constant	const_species_e_0278=0.001;

% Species:   id = e_0280, name = SAH1, constant	const_species_e_0280=0.001;

% Species:   id = e_0281, name = HOM3, constant	const_species_e_0281=0.001;

% Species:   id = e_0283, name = HIS1, constant	const_species_e_0283=0.001;

% Species:   id = e_0290, name = ARG5,6, constant	const_species_e_0290=0.001;

% Species:   id = e_0291, name = RNR1, constant	const_species_e_0291=0.001;

% Species:   id = e_0294, name = SER3, constant	const_species_e_0294=0.001;

% Species:   id = e_0296, name = AIM10, constant	const_species_e_0296=0.001;

% Species:   id = e_0297, name = TRP2, constant	const_species_e_0297=0.001;

% Species:   id = e_0298, name = MET6, constant	const_species_e_0298=0.001;

% Species:   id = e_0299, name = PRS2, constant	const_species_e_0299=0.001;

% Species:   id = e_0303, name = ADK2, constant	const_species_e_0303=0.001;

% Species:   id = e_0304, name = GRX4, constant	const_species_e_0304=0.001;

% Species:   id = e_0306, name = PDA1, constant	const_species_e_0306=0.001;

% Species:   id = e_0311, name = LPD1, constant	const_species_e_0311=0.001;

% Species:   id = e_0312, name = FRS2, constant	const_species_e_0312=0.001;

% Species:   id = e_0314, name = SEC53, constant	const_species_e_0314=0.001;

% Species:   id = e_0317, name = GSY1, constant	const_species_e_0317=0.001;

% Species:   id = e_0320, name = HIS2, constant	const_species_e_0320=0.001;

% Species:   id = e_0321, name = MET10, constant	const_species_e_0321=0.001;

% Species:   id = e_0322, name = QCR6, constant	const_species_e_0322=0.001;

% Species:   id = e_0325, name = HXK1, constant	const_species_e_0325=0.001;

% Species:   id = e_0326, name = ERG26, constant	const_species_e_0326=0.001;

% Species:   id = e_0328, name = LEU1, constant	const_species_e_0328=0.001;

% Species:   id = e_0329, name = ERG4, constant	const_species_e_0329=0.001;

% Species:   id = e_0330, name = TRP5, constant	const_species_e_0330=0.001;

% Species:   id = e_0334, name = PYC1, constant	const_species_e_0334=0.001;

% Species:   id = e_0340, name = MET13, constant	const_species_e_0340=0.001;

% Species:   id = e_0342, name = ARO2, constant	const_species_e_0342=0.001;

% Species:   id = e_0343, name = LYS5, constant	const_species_e_0343=0.001;

% Species:   id = e_0346, name = COX4, constant	const_species_e_0346=0.001;

% Species:   id = e_0347, name = COX13, constant	const_species_e_0347=0.001;

% Species:   id = e_0348, name = ARO8, constant	const_species_e_0348=0.001;

% Species:   id = e_0352, name = ADE5,7, constant	const_species_e_0352=0.001;

% Species:   id = e_0353, name = GUS1, constant	const_species_e_0353=0.001;

% Species:   id = e_0355, name = HXK2, constant	const_species_e_0355=0.001;

% Species:   id = e_0364, name = GSC2, constant	const_species_e_0364=0.001;

% Species:   id = e_0365, name = ACB1, constant	const_species_e_0365=0.001;

% Species:   id = e_0367, name = ERG25, constant	const_species_e_0367=0.001;

% Species:   id = e_0368, name = ADE6, constant	const_species_e_0368=0.001;

% Species:   id = e_0372, name = VAS1, constant	const_species_e_0372=0.001;

% Species:   id = e_0376, name = ASN2, constant	const_species_e_0376=0.001;

% Species:   id = e_0379, name = SKN1, constant	const_species_e_0379=0.001;

% Species:   id = e_0380, name = CYS4, constant	const_species_e_0380=0.001;

% Species:   id = e_0381, name = CHO2, constant	const_species_e_0381=0.001;

% Species:   id = e_0382, name = PSD2, constant	const_species_e_0382=0.001;

% Species:   id = e_0385, name = ERG1, constant	const_species_e_0385=0.001;

% Species:   id = e_0387, name = RNR4, constant	const_species_e_0387=0.001;

% Species:   id = e_0389, name = QCR9, constant	const_species_e_0389=0.001;

% Species:   id = e_0390, name = TYS1, constant	const_species_e_0390=0.001;

% Species:   id = e_0392, name = TDH3, constant	const_species_e_0392=0.001;

% Species:   id = e_0393, name = PDX1, constant	const_species_e_0393=0.001;

% Species:   id = e_0396, name = ADE3, constant	const_species_e_0396=0.001;

% Species:   id = e_0397, name = SER2, constant	const_species_e_0397=0.001;

% Species:   id = e_0398, name = TRX2, constant	const_species_e_0398=0.001;

% Species:   id = e_0401, name = PFK1, constant	const_species_e_0401=0.001;

% Species:   id = e_0405, name = ENO1, constant	const_species_e_0405=0.001;

% Species:   id = e_0409, name = MES1, constant	const_species_e_0409=0.001;

% Species:   id = e_0418, name = PRS3, constant	const_species_e_0418=0.001;

% Species:   id = e_0422, name = QCR10, constant	const_species_e_0422=0.001;

% Species:   id = e_0424, name = ERG11, constant	const_species_e_0424=0.001;

% Species:   id = e_0425, name = DIA4, constant	const_species_e_0425=0.001;

% Species:   id = e_0426, name = ARG4, constant	const_species_e_0426=0.001;

% Species:   id = e_0427, name = DED81, constant	const_species_e_0427=0.001;

% Species:   id = e_0428, name = THR1, constant	const_species_e_0428=0.001;

% Species:   id = e_0431, name = PUT2, constant	const_species_e_0431=0.001;

% Species:   id = e_0434, name = NCP1, constant	const_species_e_0434=0.001;

% Species:   id = e_0435, name = INM1, constant	const_species_e_0435=0.001;

% Species:   id = e_0436, name = COX6, constant	const_species_e_0436=0.001;

% Species:   id = e_0440, name = ERG7, constant	const_species_e_0440=0.001;

% Species:   id = e_0448, name = TRR2, constant	const_species_e_0448=0.001;

% Species:   id = e_0452, name = DCD1, constant	const_species_e_0452=0.001;

% Species:   id = e_0454, name = ENO2, constant	const_species_e_0454=0.001;

% Species:   id = e_0456, name = ERG9, constant	const_species_e_0456=0.001;

% Species:   id = e_0457, name = BAT1, constant	const_species_e_0457=0.001;

% Species:   id = e_0458, name = IMD2, constant	const_species_e_0458=0.001;

% Species:   id = e_0462, name = FAA3, constant	const_species_e_0462=0.001;

% Species:   id = e_0463, name = DOT5, constant	const_species_e_0463=0.001;

% Species:   id = e_0465, name = HIS6, constant	const_species_e_0465=0.001;

% Species:   id = e_0467, name = RNR3, constant	const_species_e_0467=0.001;

% Species:   id = e_0469, name = SER33, constant	const_species_e_0469=0.001;

% Species:   id = e_0470, name = THS1, constant	const_species_e_0470=0.001;

% Species:   id = e_0472, name = LYS12, constant	const_species_e_0472=0.001;

% Species:   id = e_0475, name = COX5B, constant	const_species_e_0475=0.001;

% Species:   id = e_0476, name = HIS5, constant	const_species_e_0476=0.001;

% Species:   id = e_0489, name = LYS1, constant	const_species_e_0489=0.001;

% Species:   id = e_0490, name = HYR1, constant	const_species_e_0490=0.001;

% Species:   id = e_0492, name = RNR2, constant	const_species_e_0492=0.001;

% Species:   id = e_0495, name = TDH1, constant	const_species_e_0495=0.001;

% Species:   id = e_0496, name = BNA3, constant	const_species_e_0496=0.001;

% Species:   id = e_0499, name = ARG3, constant	const_species_e_0499=0.001;

% Species:   id = e_0506, name = RPE1, constant	const_species_e_0506=0.001;

% Species:   id = e_0508, name = URA2, constant	const_species_e_0508=0.001;

% Species:   id = e_0510, name = GLG2, constant	const_species_e_0510=0.001;

% Species:   id = e_0512, name = INO1, constant	const_species_e_0512=0.001;

% Species:   id = e_0514, name = QCR8, constant	const_species_e_0514=0.001;

% Species:   id = e_0515, name = ERG20, constant	const_species_e_0515=0.001;

% Species:   id = e_0525, name = TDH2, constant	const_species_e_0525=0.001;

% Species:   id = e_0528, name = ILV3, constant	const_species_e_0528=0.001;

% Species:   id = e_0531, name = CYC1, constant	const_species_e_0531=0.001;

% Species:   id = e_0536, name = OPI3, constant	const_species_e_0536=0.001;

% Species:   id = e_0540, name = URA8, constant	const_species_e_0540=0.001;

% Species:   id = e_0541, name = ADO1, constant	const_species_e_0541=0.001;

% Species:   id = e_0542, name = CPA2, constant	const_species_e_0542=0.001;

% Species:   id = e_0545, name = STR2, constant	const_species_e_0545=0.001;

% Species:   id = e_0547, name = MET5, constant	const_species_e_0547=0.001;

% Species:   id = e_0548, name = HOM6, constant	const_species_e_0548=0.001;

% Species:   id = e_0549, name = PMT4, constant	const_species_e_0549=0.001;

% Species:   id = e_0550, name = BAT2, constant	const_species_e_0550=0.001;

% Species:   id = e_0556, name = MET14, constant	const_species_e_0556=0.001;

% Species:   id = e_0557, name = AUR1, constant	const_species_e_0557=0.001;

% Species:   id = e_0561, name = URA6, constant	const_species_e_0561=0.001;

% Species:   id = e_0563, name = GPX1, constant	const_species_e_0563=0.001;

% Species:   id = e_0565, name = UGP1, constant	const_species_e_0565=0.001;

% Species:   id = e_0567, name = FBA1, constant	const_species_e_0567=0.001;

% Species:   id = e_0568, name = YNK1, constant	const_species_e_0568=0.001;

% Species:   id = e_0571, name = MDH1, constant	const_species_e_0571=0.001;

% Species:   id = e_0574, name = AAT1, constant	const_species_e_0574=0.001;

% Species:   id = e_0576, name = PGM1, constant	const_species_e_0576=0.001;

% Species:   id = e_0578, name = TGL1, constant	const_species_e_0578=0.001;

% Species:   id = e_0582, name = GPM1, constant	const_species_e_0582=0.001;

% Species:   id = e_0585, name = PRS1, constant	const_species_e_0585=0.001;

% Species:   id = e_0586, name = FAS1, constant	const_species_e_0586=0.001;

% Species:   id = e_0591, name = TRP3, constant	const_species_e_0591=0.001;

% Species:   id = e_0594, name = URA1, constant	const_species_e_0594=0.001;

% Species:   id = e_0603, name = GLG1, constant	const_species_e_0603=0.001;

% Species:   id = e_0607, name = GPT2, constant	const_species_e_0607=0.001;

% Species:   id = e_0610, name = MTD1, constant	const_species_e_0610=0.001;

% Species:   id = e_0611, name = TGL4, constant	const_species_e_0611=0.001;

% Species:   id = e_0613, name = YEH1, constant	const_species_e_0613=0.001;

% Species:   id = e_0615, name = DPS1, constant	const_species_e_0615=0.001;

% Species:   id = e_0629, name = AAT2, constant	const_species_e_0629=0.001;

% Species:   id = e_0631, name = ADE16, constant	const_species_e_0631=0.001;

% Species:   id = e_0632, name = COX12, constant	const_species_e_0632=0.001;

% Species:   id = e_0633, name = TRX1, constant	const_species_e_0633=0.001;

% Species:   id = e_0637, name = ERG3, constant	const_species_e_0637=0.001;

% Species:   id = e_0638, name = SHM2, constant	const_species_e_0638=0.001;

% Species:   id = e_0639, name = FRS1, constant	const_species_e_0639=0.001;

% Species:   id = e_0642, name = ALT1, constant	const_species_e_0642=0.001;

% Species:   id = e_0644, name = ERG27, constant	const_species_e_0644=0.001;

% Species:   id = e_0645, name = AHP1, constant	const_species_e_0645=0.001;

% Species:   id = e_0658, name = SAM1, constant	const_species_e_0658=0.001;

% Species:   id = e_0667, name = GSY2, constant	const_species_e_0667=0.001;

% Species:   id = e_0674, name = MET17, constant	const_species_e_0674=0.001;

% Species:   id = e_0675, name = ACO1, constant	const_species_e_0675=0.001;

% Species:   id = e_0682, name = FKS1, constant	const_species_e_0682=0.001;

% Species:   id = e_0684, name = TAL1, constant	const_species_e_0684=0.001;

% Species:   id = e_0685, name = ILV5, constant	const_species_e_0685=0.001;

% Species:   id = e_0686, name = ADE13, constant	const_species_e_0686=0.001;

% Species:   id = e_0687, name = SUR4, constant	const_species_e_0687=0.001;

% Species:   id = e_0690, name = COX8, constant	const_species_e_0690=0.001;

% Species:   id = e_0692, name = URA4, constant	const_species_e_0692=0.001;

% Species:   id = e_0693, name = IMD3, constant	const_species_e_0693=0.001;

% Species:   id = e_0697, name = HMG2, constant	const_species_e_0697=0.001;

% Species:   id = e_0699, name = ERG6, constant	const_species_e_0699=0.001;

% Species:   id = e_0705, name = IMD4, constant	const_species_e_0705=0.001;

% Species:   id = e_0708, name = HMG1, constant	const_species_e_0708=0.001;

% Species:   id = e_0711, name = TSL1, constant	const_species_e_0711=0.001;

% Species:   id = e_0712, name = URA5, constant	const_species_e_0712=0.001;

% Species:   id = e_0714, name = NDI1, constant	const_species_e_0714=0.001;

% Species:   id = e_0716, name = ERG13, constant	const_species_e_0716=0.001;

% Species:   id = e_0724, name = ERG5, constant	const_species_e_0724=0.001;

% Species:   id = e_0729, name = ARG7, constant	const_species_e_0729=0.001;

% Species:   id = e_0733, name = PGM2, constant	const_species_e_0733=0.001;

% Species:   id = e_0734, name = ILV2, constant	const_species_e_0734=0.001;

% Species:   id = e_0736, name = ADE17, constant	const_species_e_0736=0.001;

% Species:   id = e_0737, name = NDE1, constant	const_species_e_0737=0.001;

% Species:   id = e_0741, name = GCV2, constant	const_species_e_0741=0.001;

% Species:   id = e_0742, name = ERG2, constant	const_species_e_0742=0.001;

% Species:   id = e_0743, name = PFK2, constant	const_species_e_0743=0.001;

% Species:   id = e_0744, name = HFA1, constant	const_species_e_0744=0.001;

% Species:   id = e_0745, name = ERG12, constant	const_species_e_0745=0.001;

% Species:   id = e_0746, name = GUA1, constant	const_species_e_0746=0.001;

% Species:   id = e_0747, name = ERG8, constant	const_species_e_0747=0.001;

% Species:   id = e_0750, name = FAA4, constant	const_species_e_0750=0.001;

% Species:   id = e_0752, name = COX7, constant	const_species_e_0752=0.001;

% Species:   id = e_0753, name = TPS3, constant	const_species_e_0753=0.001;

% Species:   id = e_0754, name = PPA2, constant	const_species_e_0754=0.001;

% Species:   id = e_0755, name = URA10, constant	const_species_e_0755=0.001;

% Species:   id = e_0756, name = SCS7, constant	const_species_e_0756=0.001;

% Species:   id = e_0757, name = PGM3, constant	const_species_e_0757=0.001;

% Species:   id = e_0761, name = LCB1, constant	const_species_e_0761=0.001;

% Species:   id = e_0763, name = ADE4, constant	const_species_e_0763=0.001;

% Species:   id = e_0765, name = TGL3, constant	const_species_e_0765=0.001;

% Species:   id = e_0769, name = IDP3, constant	const_species_e_0769=0.001;

% Species:   id = e_0771, name = IDH1, constant	const_species_e_0771=0.001;

% Species:   id = e_0774, name = COX5A, constant	const_species_e_0774=0.001;

% Species:   id = e_0775, name = LAT1, constant	const_species_e_0775=0.001;

% Species:   id = e_0778, name = LEU4, constant	const_species_e_0778=0.001;

% Species:   id = e_0788, name = PSD1, constant	const_species_e_0788=0.001;

% Species:   id = e_0791, name = ADE12, constant	const_species_e_0791=0.001;

% Species:   id = e_0793, name = YNL247W, constant	const_species_e_0793=0.001;

% Species:   id = e_0799, name = MET2, constant	const_species_e_0799=0.001;

% Species:   id = e_0800, name = ERG24, constant	const_species_e_0800=0.001;

% Species:   id = e_0802, name = PHA2, constant	const_species_e_0802=0.001;

% Species:   id = e_0805, name = CIT1, constant	const_species_e_0805=0.001;

% Species:   id = e_0808, name = ACC1, constant	const_species_e_0808=0.001;

% Species:   id = e_0812, name = MVD1, constant	const_species_e_0812=0.001;

% Species:   id = e_0813, name = LYS9, constant	const_species_e_0813=0.001;

% Species:   id = e_0826, name = ARG1, constant	const_species_e_0826=0.001;

% Species:   id = e_0827, name = GPD2, constant	const_species_e_0827=0.001;

% Species:   id = e_0829, name = PRS5, constant	const_species_e_0829=0.001;

% Species:   id = e_0830, name = MET22, constant	const_species_e_0830=0.001;

% Species:   id = e_0832, name = RIB2, constant	const_species_e_0832=0.001;

% Species:   id = e_0836, name = WRS1, constant	const_species_e_0836=0.001;

% Species:   id = e_0838, name = MDH2, constant	const_species_e_0838=0.001;

% Species:   id = e_0840, name = ARG8, constant	const_species_e_0840=0.001;

% Species:   id = e_0841, name = RIB4, constant	const_species_e_0841=0.001;

% Species:   id = e_0848, name = CYT1, constant	const_species_e_0848=0.001;

% Species:   id = e_0850, name = CDC21, constant	const_species_e_0850=0.001;

% Species:   id = e_0851, name = TGL5, constant	const_species_e_0851=0.001;

% Species:   id = e_0852, name = RKI1, constant	const_species_e_0852=0.001;

% Species:   id = e_0855, name = LEU9, constant	const_species_e_0855=0.001;

% Species:   id = e_0860, name = ADE2, constant	const_species_e_0860=0.001;

% Species:   id = e_0862, name = IDH2, constant	const_species_e_0862=0.001;

% Species:   id = e_0867, name = GLN4, constant	const_species_e_0867=0.001;

% Species:   id = e_0869, name = ALE1, constant	const_species_e_0869=0.001;

% Species:   id = e_0872, name = SER1, constant	const_species_e_0872=0.001;

% Species:   id = e_0875, name = HIS3, constant	const_species_e_0875=0.001;

% Species:   id = e_0880, name = DFR1, constant	const_species_e_0880=0.001;

% Species:   id = e_0883, name = DGA1, constant	const_species_e_0883=0.001;

% Species:   id = e_0888, name = CPA1, constant	const_species_e_0888=0.001;

% Species:   id = e_0889, name = FAA1, constant	const_species_e_0889=0.001;

% Species:   id = e_0890, name = PMT3, constant	const_species_e_0890=0.001;

% Species:   id = e_0894, name = ALA1, constant	const_species_e_0894=0.001;

% Species:   id = e_0895, name = PYK2, constant	const_species_e_0895=0.001;

% Species:   id = e_0899, name = GDH1, constant	const_species_e_0899=0.001;

% Species:   id = e_0903, name = MET12, constant	const_species_e_0903=0.001;

% Species:   id = e_0904, name = ERG10, constant	const_species_e_0904=0.001;

% Species:   id = e_0910, name = GRX5, constant	const_species_e_0910=0.001;

% Species:   id = e_0914, name = YDC1, constant	const_species_e_0914=0.001;

% Species:   id = e_0915, name = GLR1, constant	const_species_e_0915=0.001;

% Species:   id = e_0922, name = IDI1, constant	const_species_e_0922=0.001;

% Species:   id = e_0926, name = CDC60, constant	const_species_e_0926=0.001;

% Species:   id = e_0934, name = FAS2, constant	const_species_e_0934=0.001;

% Species:   id = e_0940, name = FUM1, constant	const_species_e_0940=0.001;

% Species:   id = e_0947, name = CIT3, constant	const_species_e_0947=0.001;

% Species:   id = e_0953, name = HTS1, constant	const_species_e_0953=0.001;

% Species:   id = e_0955, name = GLN1, constant	const_species_e_0955=0.001;

% Species:   id = e_0959, name = ARO7, constant	const_species_e_0959=0.001;

% Species:   id = e_0962, name = TKL1, constant	const_species_e_0962=0.001;

% Species:   id = e_0963, name = GRS2, constant	const_species_e_0963=0.001;

% Species:   id = e_0964, name = PIS1, constant	const_species_e_0964=0.001;

% Species:   id = e_0970, name = ASN1, constant	const_species_e_0970=0.001;

% Species:   id = e_0973, name = KRE6, constant	const_species_e_0973=0.001;

% Species:   id = e_0975, name = MET16, constant	const_species_e_0975=0.001;

% Species:   id = e_0976, name = DPM1, constant	const_species_e_0976=0.001;

% Species:   id = e_0978, name = QCR2, constant	const_species_e_0978=0.001;

% Species:   id = e_0980, name = YER152C, constant	const_species_e_0980=0.001;

	xdot=zeros(303,1);
	
% Species:   id = s_0002, name = (1->3)-beta-D-glucan, affected by kineticLaw
	xdot(1) = (1/(compartment_cell))*(( 1.0 * reaction_r_0005) + (-1.1348 * reaction_r_2111));
	
% Species:   id = s_0004, name = (1->6)-beta-D-glucan, affected by kineticLaw
	xdot(2) = (1/(compartment_cell))*(( 1.0 * reaction_r_0006) + (-1.1348 * reaction_r_2111));
	
% Species:   id = s_0008, name = (2R,3R)-2,3-dihydroxy-3-methylpentanoate, affected by kineticLaw
	xdot(3) = (1/(compartment_cell))*((-1.0 * reaction_r_0353) + ( 1.0 * reaction_r_0669));
	
% Species:   id = s_0009, name = (2R,3S)-3-isopropylmalate, affected by kineticLaw
	xdot(4) = (1/(compartment_cell))*(( 1.0 * reaction_r_0060) + (-1.0 * reaction_r_0061));
	
% Species:   id = s_0010, name = (2S)-2-isopropyl-3-oxosuccinate, affected by kineticLaw
	xdot(5) = (1/(compartment_cell))*((-1.0 * reaction_r_0029) + ( 1.0 * reaction_r_0061));
	
% Species:   id = s_0015, name = (N(omega)-L-arginino)succinic acid, affected by kineticLaw
	xdot(6) = (1/(compartment_cell))*((-1.0 * reaction_r_0207) + ( 1.0 * reaction_r_0208));
	
% Species:   id = s_0016, name = (R)-2,3-dihydroxy-3-methylbutanoate, affected by kineticLaw
	xdot(7) = (1/(compartment_cell))*(( 1.0 * reaction_r_0096) + (-1.0 * reaction_r_0352));
	
% Species:   id = s_0018, name = (R)-5-diphosphomevalonic acid, affected by kineticLaw
	xdot(8) = (1/(compartment_cell))*((-1.0 * reaction_r_0739) + ( 1.0 * reaction_r_0904));
	
% Species:   id = s_0019, name = (R)-5-phosphomevalonic acid, affected by kineticLaw
	xdot(9) = (1/(compartment_cell))*(( 1.0 * reaction_r_0736) + (-1.0 * reaction_r_0904));
	
% Species:   id = s_0028, name = (R)-mevalonate, affected by kineticLaw
	xdot(10) = (1/(compartment_cell))*(( 1.0 * reaction_r_0558) + (-1.0 * reaction_r_0736));
	
% Species:   id = s_0037, name = (S)-2,3-epoxysqualene, affected by kineticLaw
	xdot(11) = (1/(compartment_cell))*((-1.0 * reaction_r_0698) + ( 1.0 * reaction_r_1010) + ( 1.0 * reaction_r_1011));
	
% Species:   id = s_0039, name = (S)-2-acetyl-2-hydroxybutanoate, affected by kineticLaw
	xdot(12) = (1/(compartment_cell))*(( 1.0 * reaction_r_0016) + (-1.0 * reaction_r_0669));
	
% Species:   id = s_0056, name = (S)-3-methyl-2-oxopentanoate, affected by kineticLaw
	xdot(13) = (1/(compartment_cell))*(( 1.0 * reaction_r_0353) + (-1.0 * reaction_r_0663) + (-3.0 * reaction_r_1014) + (-4.33333333333333 * reaction_r_1052) + (-8.92666666666666E-4 * reaction_r_2111));
	
% Species:   id = s_0061, name = (S)-dihydroorotate, affected by kineticLaw
	xdot(14) = (1/(compartment_cell))*((-1.0 * reaction_r_0339) + ( 1.0 * reaction_r_0349));
	
% Species:   id = s_0066, name = (S)-malate, affected by kineticLaw
	xdot(15) = (1/(compartment_cell))*(( 1.0 * reaction_r_0451) + (-1.0 * reaction_r_0713));
	
% Species:   id = s_0075, name = 1,3-bisphospho-D-glycerate, affected by kineticLaw
	xdot(16) = (1/(compartment_cell))*(( 1.0 * reaction_r_0486) + (-1.0 * reaction_r_0892));
	
% Species:   id = s_0076, name = 1-(2-carboxyphenylamino)-1-deoxy-D-ribulose 5-phosphate, affected by kineticLaw
	xdot(17) = (1/(compartment_cell))*((-1.0 * reaction_r_0566) + ( 1.0 * reaction_r_0913));
	
% Species:   id = s_0077, name = 1-(5-phospho-D-ribosyl)-5-[(5-phospho-D-ribosylamino)methylideneamino]imidazole-4-carboxamide, affected by kineticLaw
	xdot(18) = (1/(compartment_cell))*((-1.0 * reaction_r_0007) + ( 1.0 * reaction_r_0909));
	
% Species:   id = s_0078, name = 1-(5-phosphoribosyl)-5'-AMP, affected by kineticLaw
	xdot(19) = (1/(compartment_cell))*((-1.0 * reaction_r_0909) + ( 1.0 * reaction_r_0910));
	
% Species:   id = s_0082, name = 1-acyl-sn-glycerol 3-phosphate, affected by kineticLaw
	xdot(20) = (1/(compartment_cell))*((-1.0 * reaction_r_0008) + ( 1.0 * reaction_r_0495));
	
% Species:   id = s_0086, name = 1-C-(indol-3-yl)glycerol 3-phosphate, affected by kineticLaw
	xdot(21) = (1/(compartment_cell))*(( 1.0 * reaction_r_0566) + (-1.0 * reaction_r_1055));
	
% Species:   id = s_0089, name = 1-phosphatidyl-1D-myo-inositol, affected by kineticLaw
	xdot(22) = (1/(compartment_cell))*((-1.0 * reaction_r_0594) + ( 1.0 * reaction_r_0874) + (-0.001583 * reaction_r_2111));
	
% Species:   id = s_0118, name = 1-pyrroline-5-carboxylate, affected by kineticLaw
	xdot(23) = (1/(compartment_cell))*(( 1.0 * reaction_r_0012) + (-1.0 * reaction_r_0957));
	
% Species:   id = s_0120, name = 10-formyl-THF, affected by kineticLaw
	xdot(24) = (1/(compartment_cell))*((-1.0 * reaction_r_0446) + (-1.0 * reaction_r_0499) + ( 1.0 * reaction_r_0724) + (-1.0 * reaction_r_0912));
	
% Species:   id = s_0122, name = 14-demethyllanosterol, affected by kineticLaw
	xdot(25) = (1/(compartment_cell))*(( 1.0 * reaction_r_0231) + (-1.0 * reaction_r_0241) + (-5.6E-5 * reaction_r_2111));
	
% Species:   id = s_0126, name = 1D-myo-inositol 1-phosphate, affected by kineticLaw
	xdot(26) = (1/(compartment_cell))*((-1.0 * reaction_r_0757) + ( 1.0 * reaction_r_0758));
	
% Species:   id = s_0141, name = 2,5-diamino-4-hydroxy-6-(5-phosphoribosylamino)pyrimidine, affected by kineticLaw
	xdot(27) = (1/(compartment_cell))*((-1.0 * reaction_r_0015) + ( 1.0 * reaction_r_0525));
	
% Species:   id = s_0142, name = 2,5-diamino-6-(5-phosphono)ribitylamino-4(3H)-pyrimidinone, affected by kineticLaw
	xdot(28) = (1/(compartment_cell))*((-1.0 * reaction_r_0014) + ( 1.0 * reaction_r_0015));
	
% Species:   id = s_0145, name = 2-acetamido-5-oxopentanoate, affected by kineticLaw
	xdot(29) = (1/(compartment_cell))*((-1.0 * reaction_r_0118) + ( 1.0 * reaction_r_0759));
	
% Species:   id = s_0146, name = 2-acetyllactic acid, affected by kineticLaw
	xdot(30) = (1/(compartment_cell))*((-1.0 * reaction_r_0096) + ( 1.0 * reaction_r_0097));
	
% Species:   id = s_0158, name = 2-hydroxy-3-oxobutyl phosphate, affected by kineticLaw
	xdot(31) = (1/(compartment_cell))*(( 1.0 * reaction_r_0038) + (-1.0 * reaction_r_0967));
	
% Species:   id = s_0162, name = 2-isopropylmalate, affected by kineticLaw
	xdot(32) = (1/(compartment_cell))*((-1.0 * reaction_r_0023) + ( 1.0 * reaction_r_0024));
	
% Species:   id = s_0165, name = 2-isopropylmaleic acid, affected by kineticLaw
	xdot(33) = (1/(compartment_cell))*(( 1.0 * reaction_r_0023) + (-1.0 * reaction_r_0060));
	
% Species:   id = s_0176, name = 2-oxoadipic acid, affected by kineticLaw
	xdot(34) = (1/(compartment_cell))*((-1.0 * reaction_r_0018) + ( 1.0 * reaction_r_0545));
	
% Species:   id = s_0178, name = 2-oxobutanoate, affected by kineticLaw
	xdot(35) = (1/(compartment_cell))*((-1.0 * reaction_r_0016) + ( 1.0 * reaction_r_0310));
	
% Species:   id = s_0180, name = 2-oxoglutarate, affected by kineticLaw
	xdot(36) = (1/(compartment_cell))*(( 1.0 * reaction_r_0018) + ( 1.0 * reaction_r_0118) + ( 1.0 * reaction_r_0216) + (-1.0 * reaction_r_0470) + (-1.0 * reaction_r_0471) + ( 1.0 * reaction_r_0538) + (-1.0 * reaction_r_0543) + ( 1.0 * reaction_r_0658) + ( 1.0 * reaction_r_0661) + ( 1.0 * reaction_r_0663) + ( 1.0 * reaction_r_0674) + ( 1.0 * reaction_r_0699) + ( 1.0 * reaction_r_0851) + ( 1.0 * reaction_r_0918) + ( 1.0 * reaction_r_0988) + ( 1.0 * reaction_r_1063) + ( 1.0 * reaction_r_1087));
	
% Species:   id = s_0188, name = 2-phospho-D-glyceric acid, affected by kineticLaw
	xdot(37) = (1/(compartment_cell))*((-1.0 * reaction_r_0366) + ( 1.0 * reaction_r_0893));
	
% Species:   id = s_0190, name = farnesyl diphosphate, affected by kineticLaw
	xdot(38) = (1/(compartment_cell))*(( 1.0 * reaction_r_0462) + (-2.0 * reaction_r_1012));
	
% Species:   id = s_0201, name = 3'-phospho-5'-adenylyl sulfate, affected by kineticLaw
	xdot(39) = (1/(compartment_cell))*(( 1.0 * reaction_r_0154) + (-1.0 * reaction_r_0883));
	
% Species:   id = s_0204, name = 3-(4-hydroxyphenyl)pyruvate, affected by kineticLaw
	xdot(40) = (1/(compartment_cell))*(( 1.0 * reaction_r_0939) + (-1.0 * reaction_r_1063));
	
% Species:   id = s_0207, name = 3-(imidazol-4-yl)-2-oxopropyl dihydrogen phosphate, affected by kineticLaw
	xdot(41) = (1/(compartment_cell))*((-1.0 * reaction_r_0538) + ( 1.0 * reaction_r_0564));
	
% Species:   id = s_0209, name = 3-dehydro-4-methylzymosterol, affected by kineticLaw
	xdot(42) = (1/(compartment_cell))*(( 1.0 * reaction_r_0235) + (-1.0 * reaction_r_0236));
	
% Species:   id = s_0210, name = 3-dehydroquinate, affected by kineticLaw
	xdot(43) = (1/(compartment_cell))*((-1.0 * reaction_r_0039) + ( 1.0 * reaction_r_0040));
	
% Species:   id = s_0211, name = 3-dehydroshikimate, affected by kineticLaw
	xdot(44) = (1/(compartment_cell))*(( 1.0 * reaction_r_0039) + (-1.0 * reaction_r_0996));
	
% Species:   id = s_0218, name = 3-hydroxy-3-methylglutaryl-CoA, affected by kineticLaw
	xdot(45) = (1/(compartment_cell))*((-1.0 * reaction_r_0558) + ( 1.0 * reaction_r_0559));
	
% Species:   id = s_0231, name = 3-ketosphinganine, affected by kineticLaw
	xdot(46) = (1/(compartment_cell))*((-1.0 * reaction_r_0041) + ( 1.0 * reaction_r_0993));
	
% Species:   id = s_0232, name = 3-methyl-2-oxobutanoate, affected by kineticLaw
	xdot(47) = (1/(compartment_cell))*((-1.0 * reaction_r_0024) + ( 1.0 * reaction_r_0352) + (-1.0 * reaction_r_1087));
	
% Species:   id = s_0258, name = 3-phospho-hydroxypyruvate, affected by kineticLaw
	xdot(48) = (1/(compartment_cell))*(( 1.0 * reaction_r_0891) + (-1.0 * reaction_r_0918));
	
% Species:   id = s_0259, name = 3-phospho-serine, affected by kineticLaw
	xdot(49) = (1/(compartment_cell))*((-1.0 * reaction_r_0917) + ( 1.0 * reaction_r_0918));
	
% Species:   id = s_0260, name = 3-phosphoglycerate, affected by kineticLaw
	xdot(50) = (1/(compartment_cell))*((-1.0 * reaction_r_0891) + ( 1.0 * reaction_r_0892) + (-1.0 * reaction_r_0893));
	
% Species:   id = s_0261, name = 3-phosphoshikimic acid, affected by kineticLaw
	xdot(51) = (1/(compartment_cell))*((-1.0 * reaction_r_0065) + ( 1.0 * reaction_r_0997));
	
% Species:   id = s_0262, name = 4,4-dimethyl-5alpha-cholesta-8,14,24-trien-3beta-ol, affected by kineticLaw
	xdot(52) = (1/(compartment_cell))*((-1.0 * reaction_r_0231) + ( 1.0 * reaction_r_0317));
	
% Species:   id = s_0291, name = 4-methyl-2-oxopentanoate, affected by kineticLaw
	xdot(53) = (1/(compartment_cell))*(( 1.0 * reaction_r_0029) + (-1.0 * reaction_r_0699));
	
% Species:   id = s_0295, name = 4-phospho-L-aspartate, affected by kineticLaw
	xdot(54) = (1/(compartment_cell))*(( 1.0 * reaction_r_0215) + (-1.0 * reaction_r_0219));
	
% Species:   id = s_0296, name = 4alpha-methylzymosterol, affected by kineticLaw
	xdot(55) = (1/(compartment_cell))*(( 1.0 * reaction_r_0236) + (-1.0 * reaction_r_0238));
	
% Species:   id = s_0297, name = 4beta-methylzymosterol-4alpha-carboxylic acid, affected by kineticLaw
	xdot(56) = (1/(compartment_cell))*((-1.0 * reaction_r_0235) + ( 1.0 * reaction_r_0241));
	
% Species:   id = s_0298, name = 5'-adenylyl sulfate, affected by kineticLaw
	xdot(57) = (1/(compartment_cell))*((-1.0 * reaction_r_0154) + ( 1.0 * reaction_r_1026));
	
% Species:   id = s_0299, name = 5'-phosphoribosyl-4-(N-succinocarboxamide)-5-aminoimidazole, affected by kineticLaw
	xdot(58) = (1/(compartment_cell))*((-1.0 * reaction_r_0151) + ( 1.0 * reaction_r_0908));
	
% Species:   id = s_0300, name = 5'-phosphoribosyl-5-aminoimidazole, affected by kineticLaw
	xdot(59) = (1/(compartment_cell))*(( 1.0 * reaction_r_0855) + (-1.0 * reaction_r_0911));
	
% Species:   id = s_0301, name = 5'-phosphoribosyl-N-formylglycineamide, affected by kineticLaw
	xdot(60) = (1/(compartment_cell))*((-1.0 * reaction_r_0079) + ( 1.0 * reaction_r_0499));
	
% Species:   id = s_0302, name = 5'-phosphoribosyl-N-formylglycineamidine, affected by kineticLaw
	xdot(61) = (1/(compartment_cell))*(( 1.0 * reaction_r_0079) + (-1.0 * reaction_r_0855));
	
% Species:   id = s_0304, name = 5,10-methenyl-THF, affected by kineticLaw
	xdot(62) = (1/(compartment_cell))*((-1.0 * reaction_r_0724) + ( 1.0 * reaction_r_0731) + ( 1.0 * reaction_r_0732));
	
% Species:   id = s_0306, name = 5,10-methylenetetrahydrofolate, affected by kineticLaw
	xdot(63) = (1/(compartment_cell))*((-1.0 * reaction_r_0080) + ( 1.0 * reaction_r_0501) + ( 1.0 * reaction_r_0502) + (-1.0 * reaction_r_0731) + (-1.0 * reaction_r_0732) + (-1.0 * reaction_r_1045));
	
% Species:   id = s_0312, name = 5-[(5-phospho-1-deoxy-D-ribulos-1-ylamino)methylideneamino]-1-(5-phospho-D-ribosyl)imidazole-4-carboxamide, affected by kineticLaw
	xdot(64) = (1/(compartment_cell))*(( 1.0 * reaction_r_0007) + (-1.0 * reaction_r_0563));
	
% Species:   id = s_0313, name = 5-amino-6-(5-phosphoribitylamino)uracil, affected by kineticLaw
	xdot(65) = (1/(compartment_cell))*(( 1.0 * reaction_r_0014) + (-1.0 * reaction_r_2030));
	
% Species:   id = s_0314, name = 5-amino-6-(D-ribitylamino)uracil, affected by kineticLaw
	xdot(66) = (1/(compartment_cell))*((-1.0 * reaction_r_0967) + ( 1.0 * reaction_r_0968) + ( 1.0 * reaction_r_2030));
	
% Species:   id = s_0322, name = 5-methyltetrahydrofolate, affected by kineticLaw
	xdot(67) = (1/(compartment_cell))*(( 1.0 * reaction_r_0080) + (-1.0 * reaction_r_0727));
	
% Species:   id = s_0324, name = 5-O-(1-carboxyvinyl)-3-phosphoshikimic acid, affected by kineticLaw
	xdot(68) = (1/(compartment_cell))*(( 1.0 * reaction_r_0065) + (-1.0 * reaction_r_0279));
	
% Species:   id = s_0325, name = 5-phospho-ribosyl-glycineamide, affected by kineticLaw
	xdot(69) = (1/(compartment_cell))*((-1.0 * reaction_r_0499) + ( 1.0 * reaction_r_0914));
	
% Species:   id = s_0326, name = 5-phosphoribosyl-ATP, affected by kineticLaw
	xdot(70) = (1/(compartment_cell))*(( 1.0 * reaction_r_0225) + (-1.0 * reaction_r_0910));
	
% Species:   id = s_0327, name = 5-phosphoribosylamine, affected by kineticLaw
	xdot(71) = (1/(compartment_cell))*((-1.0 * reaction_r_0914) + ( 1.0 * reaction_r_0915));
	
% Species:   id = s_0328, name = 6,7-dimethyl-8-(1-D-ribityl)lumazine, affected by kineticLaw
	xdot(72) = (1/(compartment_cell))*(( 1.0 * reaction_r_0967) + (-2.0 * reaction_r_0968));
	
% Species:   id = s_0349, name = 7-phospho-2-dehydro-3-deoxy-D-arabino-heptonic acid, affected by kineticLaw
	xdot(73) = (1/(compartment_cell))*(( 1.0 * reaction_r_0020) + (-1.0 * reaction_r_0040));
	
% Species:   id = s_0362, name = acetate, affected by kineticLaw
	xdot(74) = (1/(compartment_cell))*((-1.0 * reaction_r_0110) + ( 1.0 * reaction_r_0311) + ( 1.0 * reaction_r_0813));
	
% Species:   id = s_0367, name = acetoacetyl-CoA, affected by kineticLaw
	xdot(75) = (1/(compartment_cell))*(( 1.0 * reaction_r_0103) + (-1.0 * reaction_r_0559));
	
% Species:   id = s_0373, name = acetyl-CoA, affected by kineticLaw
	xdot(76) = (1/(compartment_cell))*((-1.0 * reaction_r_0024) + (-2.0 * reaction_r_0103) + (-1.0 * reaction_r_0108) + ( 1.0 * reaction_r_0110) + (-1.0 * reaction_r_0300) + (-1.0 * reaction_r_0398) + (-1.0 * reaction_r_0543) + (-1.0 * reaction_r_0549) + (-1.0 * reaction_r_0559) + ( 1.0 * reaction_r_0961));
	
% Species:   id = s_0380, name = acyl-CoA, affected by kineticLaw
	xdot(77) = (1/(compartment_cell))*((-1.0 * reaction_r_0008) + ( 1.0 * reaction_r_0336) + (-1.0 * reaction_r_0495));
	
% Species:   id = s_0386, name = adenosine, affected by kineticLaw
	xdot(78) = (1/(compartment_cell))*((-1.0 * reaction_r_0142) + ( 1.0 * reaction_r_0144));
	
% Species:   id = s_0390, name = adenosine 3',5'-bismonophosphate, affected by kineticLaw
	xdot(79) = (1/(compartment_cell))*((-1.0 * reaction_r_0032) + ( 1.0 * reaction_r_0883));
	
% Species:   id = s_0393, name = adenylo-succinate, affected by kineticLaw
	xdot(80) = (1/(compartment_cell))*((-1.0 * reaction_r_0152) + ( 1.0 * reaction_r_0153));
	
% Species:   id = s_0394, name = ADP, affected by kineticLaw
	xdot(81) = (1/(compartment_cell))*(( 1.0 * reaction_r_0079) + ( 1.0 * reaction_r_0108) + ( 1.0 * reaction_r_0115) + ( 1.0 * reaction_r_0142) + ( 2.0 * reaction_r_0148) + ( 1.0 * reaction_r_0154) + ( 1.0 * reaction_r_0215) + ( 2.0 * reaction_r_0250) + ( 1.0 * reaction_r_0307) + (-1.0 * reaction_r_0330) + (-1.0 * reaction_r_0446) + ( 1.0 * reaction_r_0476) + ( 1.0 * reaction_r_0528) + ( 1.0 * reaction_r_0534) + ( 1.0 * reaction_r_0548) + ( 1.0 * reaction_r_0739) + ( 1.0 * reaction_r_0800) + ( 1.0 * reaction_r_0811) + ( 1.0 * reaction_r_0855) + ( 1.0 * reaction_r_0886) + (-1.0 * reaction_r_0892) + ( 1.0 * reaction_r_0904) + ( 1.0 * reaction_r_0908) + ( 1.0 * reaction_r_0911) + ( 1.0 * reaction_r_0914) + ( 1.0 * reaction_r_0958) + (-1.0 * reaction_r_0962) + (-1.0 * reaction_r_0974) + ( 1.0 * reaction_r_0997) + (-1.0 * reaction_r_1026) + ( 1.0 * reaction_r_1072) + (-1.0 * reaction_r_1704) + (-1.0 * reaction_r_1729) + ( 59.276 * reaction_r_2111));
	
% Species:   id = s_0403, name = AICAR, affected by kineticLaw
	xdot(82) = (1/(compartment_cell))*(( 1.0 * reaction_r_0151) + ( 1.0 * reaction_r_0563) + (-1.0 * reaction_r_0912));
	
% Species:   id = s_0404, name = Ala-tRNA(Ala), affected by kineticLaw
	xdot(83) = (1/(compartment_cell))*(( 1.0 * reaction_r_0157) + (-0.4588 * reaction_r_2111));
	
% Species:   id = s_0409, name = alpha,alpha-trehalose 6-phosphate, affected by kineticLaw
	xdot(84) = (1/(compartment_cell))*(( 1.0 * reaction_r_0195) + (-1.0 * reaction_r_1051));
	
% Species:   id = s_0419, name = ammonium, affected by kineticLaw
	xdot(85) = (1/(compartment_cell))*(( 1.0 * reaction_r_0014) + (-1.0 * reaction_r_0307) + ( 1.0 * reaction_r_0310) + ( 1.0 * reaction_r_0326) + (-1.0 * reaction_r_0470) + (-1.0 * reaction_r_0471) + (-1.0 * reaction_r_0476) + ( 1.0 * reaction_r_0501) + ( 1.0 * reaction_r_1115));
	
% Species:   id = s_0423, name = AMP, affected by kineticLaw
	xdot(86) = (1/(compartment_cell))*(( 1.0 * reaction_r_0032) + ( 1.0 * reaction_r_0142) + (-1.0 * reaction_r_0148) + ( 1.0 * reaction_r_0152) + ( 1.0 * reaction_r_0157) + ( 1.0 * reaction_r_0208) + ( 1.0 * reaction_r_0209) + ( 1.0 * reaction_r_0211) + ( 1.0 * reaction_r_0212) + ( 1.0 * reaction_r_0220) + ( 1.0 * reaction_r_0313) + (-1.0 * reaction_r_0399) + (-1.0 * reaction_r_0400) + (-1.0 * reaction_r_0407) + ( 1.0 * reaction_r_0478) + ( 1.0 * reaction_r_0479) + ( 1.0 * reaction_r_0512) + ( 1.0 * reaction_r_0514) + ( 1.0 * reaction_r_0539) + ( 1.0 * reaction_r_0665) + ( 1.0 * reaction_r_0701) + ( 1.0 * reaction_r_0711) + ( 1.0 * reaction_r_0729) + ( 1.0 * reaction_r_0852) + ( 1.0 * reaction_r_0916) + ( 1.0 * reaction_r_0941) + ( 1.0 * reaction_r_0995) + ( 1.0 * reaction_r_1042) + ( 1.0 * reaction_r_1057) + ( 1.0 * reaction_r_1066) + ( 1.0 * reaction_r_1089) + (-0.046 * reaction_r_2111));
	
% Species:   id = s_0427, name = anthranilate, affected by kineticLaw
	xdot(87) = (1/(compartment_cell))*((-1.0 * reaction_r_0202) + ( 1.0 * reaction_r_0203));
	
% Species:   id = s_0428, name = Arg-tRNA(Arg), affected by kineticLaw
	xdot(88) = (1/(compartment_cell))*(( 1.0 * reaction_r_0209) + (-0.1607 * reaction_r_2111));
	
% Species:   id = s_0430, name = Asn-tRNA(Asn), affected by kineticLaw
	xdot(89) = (1/(compartment_cell))*(( 1.0 * reaction_r_0212) + (-0.1017 * reaction_r_2111));
	
% Species:   id = s_0432, name = Asp-tRNA(Asp), affected by kineticLaw
	xdot(90) = (1/(compartment_cell))*(( 1.0 * reaction_r_0220) + (-0.2975 * reaction_r_2111));
	
% Species:   id = s_0434, name = ATP, affected by kineticLaw
	xdot(91) = (1/(compartment_cell))*((-1.0 * reaction_r_0079) + (-1.0 * reaction_r_0108) + (-1.0 * reaction_r_0115) + (-1.0 * reaction_r_0142) + (-1.0 * reaction_r_0148) + (-1.0 * reaction_r_0154) + (-1.0 * reaction_r_0157) + (-1.0 * reaction_r_0208) + (-1.0 * reaction_r_0209) + (-1.0 * reaction_r_0211) + (-1.0 * reaction_r_0212) + (-1.0 * reaction_r_0215) + (-1.0 * reaction_r_0220) + (-1.0 * reaction_r_0225) + (-2.0 * reaction_r_0250) + (-1.0 * reaction_r_0307) + (-1.0 * reaction_r_0313) + ( 1.0 * reaction_r_0330) + ( 1.0 * reaction_r_0399) + ( 1.0 * reaction_r_0400) + ( 1.0 * reaction_r_0407) + ( 1.0 * reaction_r_0446) + (-1.0 * reaction_r_0476) + (-1.0 * reaction_r_0478) + (-1.0 * reaction_r_0479) + (-1.0 * reaction_r_0512) + (-1.0 * reaction_r_0514) + (-1.0 * reaction_r_0528) + (-1.0 * reaction_r_0534) + (-1.0 * reaction_r_0539) + (-1.0 * reaction_r_0548) + (-1.0 * reaction_r_0665) + (-1.0 * reaction_r_0701) + (-1.0 * reaction_r_0711) + (-1.0 * reaction_r_0726) + (-1.0 * reaction_r_0729) + (-1.0 * reaction_r_0739) + (-1.0 * reaction_r_0800) + (-1.0 * reaction_r_0811) + (-1.0 * reaction_r_0852) + (-1.0 * reaction_r_0855) + (-1.0 * reaction_r_0886) + ( 1.0 * reaction_r_0892) + (-1.0 * reaction_r_0904) + (-1.0 * reaction_r_0908) + (-1.0 * reaction_r_0911) + (-1.0 * reaction_r_0914) + (-1.0 * reaction_r_0916) + (-1.0 * reaction_r_0941) + (-1.0 * reaction_r_0958) + ( 1.0 * reaction_r_0962) + (-1.0 * reaction_r_0970) + (-1.0 * reaction_r_0995) + (-1.0 * reaction_r_0997) + (-1.0 * reaction_r_1042) + (-1.0 * reaction_r_1057) + (-1.0 * reaction_r_1066) + (-1.0 * reaction_r_1072) + (-1.0 * reaction_r_1089) + ( 1.0 * reaction_r_1704) + ( 1.0 * reaction_r_1729) + (-59.276 * reaction_r_2111));
	
% Species:   id = s_0445, name = bicarbonate, affected by kineticLaw
	xdot(92) = (1/(compartment_cell))*((-1.0 * reaction_r_0108) + (-1.0 * reaction_r_0250) + (-1.0 * reaction_r_0958) + ( 1.0 * reaction_r_1664));
	
% Species:   id = s_0454, name = but-1-ene-1,2,4-tricarboxylic acid, affected by kineticLaw
	xdot(93) = (1/(compartment_cell))*(( 1.0 * reaction_r_0027) + (-1.0 * reaction_r_0542));
	
% Species:   id = s_0455, name = carbamoyl phosphate, affected by kineticLaw
	xdot(94) = (1/(compartment_cell))*((-1.0 * reaction_r_0214) + ( 1.0 * reaction_r_0250) + (-1.0 * reaction_r_0816));
	
% Species:   id = s_0456, name = carbon dioxide, affected by kineticLaw
	xdot(95) = (1/(compartment_cell))*(( 1.0 * reaction_r_0016) + ( 1.0 * reaction_r_0029) + ( 1.0 * reaction_r_0097) + ( 1.0 * reaction_r_0234) + ( 1.0 * reaction_r_0235) + ( 1.0 * reaction_r_0386) + ( 1.0 * reaction_r_0387) + ( 1.0 * reaction_r_0389) + ( 1.0 * reaction_r_0391) + ( 3.0 * reaction_r_0393) + ( 1.0 * reaction_r_0397) + ( 3.0 * reaction_r_0398) + ( 1.0 * reaction_r_0432) + ( 1.0 * reaction_r_0433) + ( 1.0 * reaction_r_0434) + ( 1.0 * reaction_r_0435) + ( 1.0 * reaction_r_0501) + ( 1.0 * reaction_r_0545) + ( 1.0 * reaction_r_0566) + ( 1.0 * reaction_r_0658) + ( 1.0 * reaction_r_0661) + ( 1.0 * reaction_r_0739) + ( 1.0 * reaction_r_0821) + ( 1.0 * reaction_r_0877) + (-1.0 * reaction_r_0911) + ( 1.0 * reaction_r_0938) + ( 1.0 * reaction_r_0939) + ( 1.0 * reaction_r_0961) + ( 1.0 * reaction_r_0993) + (-1.0 * reaction_r_1664) + (-1.0 * reaction_r_1697));
	
% Species:   id = s_0467, name = CDP, affected by kineticLaw
	xdot(96) = (1/(compartment_cell))*(( 1.0 * reaction_r_0736) + (-1.0 * reaction_r_0792) + (-1.0 * reaction_r_0976));
	
% Species:   id = s_0471, name = CDP-diacylglycerol, affected by kineticLaw
	xdot(97) = (1/(compartment_cell))*(( 1.0 * reaction_r_0257) + (-1.0 * reaction_r_0874) + (-1.0 * reaction_r_0880));
	
% Species:   id = s_0475, name = ceramide-1 (C24), affected by kineticLaw
	xdot(98) = (1/(compartment_cell))*((-1.0 * reaction_r_0259) + ( 1.0 * reaction_r_0340));
	
% Species:   id = s_0481, name = ceramide-2 (C24), affected by kineticLaw
	xdot(99) = (1/(compartment_cell))*(( 1.0 * reaction_r_0259) + (-1.0 * reaction_r_0267) + ( 1.0 * reaction_r_0919));
	
% Species:   id = s_0493, name = ceramide-3 (C24), affected by kineticLaw
	xdot(100) = (1/(compartment_cell))*(( 1.0 * reaction_r_0267) + (-1.0 * reaction_r_0269));
	
% Species:   id = s_0499, name = ceramide-4 (C24), affected by kineticLaw
	xdot(101) = (1/(compartment_cell))*(( 1.0 * reaction_r_0269) + (-1.0 * reaction_r_0594));
	
% Species:   id = s_0515, name = chorismate, affected by kineticLaw
	xdot(102) = (1/(compartment_cell))*((-1.0 * reaction_r_0203) + (-1.0 * reaction_r_0278) + ( 1.0 * reaction_r_0279));
	
% Species:   id = s_0516, name = cis-aconitate, affected by kineticLaw
	xdot(103) = (1/(compartment_cell))*((-1.0 * reaction_r_0280) + ( 1.0 * reaction_r_0302));
	
% Species:   id = s_0522, name = citrate, affected by kineticLaw
	xdot(104) = (1/(compartment_cell))*(( 1.0 * reaction_r_0300) + (-1.0 * reaction_r_0302));
	
% Species:   id = s_0526, name = CMP, affected by kineticLaw
	xdot(105) = (1/(compartment_cell))*(( 1.0 * reaction_r_0792) + ( 1.0 * reaction_r_0874) + ( 1.0 * reaction_r_0880) + (-0.0447 * reaction_r_2111));
	
% Species:   id = s_0529, name = coenzyme A, affected by kineticLaw
	xdot(106) = (1/(compartment_cell))*(( 1.0 * reaction_r_0008) + ( 1.0 * reaction_r_0024) + ( 1.0 * reaction_r_0103) + (-1.0 * reaction_r_0110) + ( 1.0 * reaction_r_0300) + (-1.0 * reaction_r_0336) + ( 1.0 * reaction_r_0386) + ( 1.0 * reaction_r_0387) + ( 1.0 * reaction_r_0389) + ( 1.0 * reaction_r_0391) + ( 3.0 * reaction_r_0393) + ( 1.0 * reaction_r_0397) + ( 3.0 * reaction_r_0398) + ( 1.0 * reaction_r_0399) + ( 1.0 * reaction_r_0400) + ( 1.0 * reaction_r_0407) + ( 1.0 * reaction_r_0432) + ( 1.0 * reaction_r_0433) + ( 1.0 * reaction_r_0434) + ( 1.0 * reaction_r_0435) + ( 1.0 * reaction_r_0495) + ( 1.0 * reaction_r_0543) + ( 1.0 * reaction_r_0549) + ( 1.0 * reaction_r_0558) + ( 1.0 * reaction_r_0559) + (-1.0 * reaction_r_0961) + ( 1.0 * reaction_r_0993));
	
% Species:   id = s_0539, name = CTP, affected by kineticLaw
	xdot(107) = (1/(compartment_cell))*((-1.0 * reaction_r_0257) + ( 1.0 * reaction_r_0307) + (-1.0 * reaction_r_0736));
	
% Species:   id = s_0542, name = Cys-tRNA(Cys), affected by kineticLaw
	xdot(108) = (1/(compartment_cell))*(( 1.0 * reaction_r_0313) + (-0.0066 * reaction_r_2111));
	
% Species:   id = s_0550, name = D-erythro-1-(imidazol-4-yl)glycerol 3-phosphate, affected by kineticLaw
	xdot(109) = (1/(compartment_cell))*(( 1.0 * reaction_r_0563) + (-1.0 * reaction_r_0564));
	
% Species:   id = s_0551, name = D-erythrose 4-phosphate, affected by kineticLaw
	xdot(110) = (1/(compartment_cell))*((-1.0 * reaction_r_0020) + (-1.0 * reaction_r_1048) + ( 1.0 * reaction_r_1050));
	
% Species:   id = s_0555, name = D-fructose 1,6-bisphosphate, affected by kineticLaw
	xdot(111) = (1/(compartment_cell))*((-1.0 * reaction_r_0450) + ( 1.0 * reaction_r_0886));
	
% Species:   id = s_0557, name = D-fructose 6-phosphate, affected by kineticLaw
	xdot(112) = (1/(compartment_cell))*(( 1.0 * reaction_r_0467) + (-1.0 * reaction_r_0723) + (-1.0 * reaction_r_0886) + (-1.0 * reaction_r_1048) + (-1.0 * reaction_r_1050));
	
% Species:   id = s_0563, name = D-glucose, affected by kineticLaw
	xdot(113) = (1/(compartment_cell))*((-1.0 * reaction_r_0534) + ( 1.0 * reaction_r_1166));
	
% Species:   id = s_0567, name = D-glucose 1-phosphate, affected by kineticLaw
	xdot(114) = (1/(compartment_cell))*(( 1.0 * reaction_r_0888) + (-1.0 * reaction_r_1084));
	
% Species:   id = s_0568, name = D-glucose 6-phosphate, affected by kineticLaw
	xdot(115) = (1/(compartment_cell))*((-1.0 * reaction_r_0195) + (-1.0 * reaction_r_0467) + ( 1.0 * reaction_r_0534) + (-1.0 * reaction_r_0758) + (-1.0 * reaction_r_0888));
	
% Species:   id = s_0573, name = D-mannose 1-phosphate, affected by kineticLaw
	xdot(116) = (1/(compartment_cell))*((-1.0 * reaction_r_0722) + ( 1.0 * reaction_r_0902));
	
% Species:   id = s_0574, name = D-mannose 6-phosphate, affected by kineticLaw
	xdot(117) = (1/(compartment_cell))*(( 1.0 * reaction_r_0723) + (-1.0 * reaction_r_0902));
	
% Species:   id = s_0577, name = D-ribulose 5-phosphate, affected by kineticLaw
	xdot(118) = (1/(compartment_cell))*((-1.0 * reaction_r_0038) + (-1.0 * reaction_r_0982) + ( 1.0 * reaction_r_0984));
	
% Species:   id = s_0581, name = D-xylulose 5-phosphate, affected by kineticLaw
	xdot(119) = (1/(compartment_cell))*((-1.0 * reaction_r_0984) + ( 1.0 * reaction_r_1049) + ( 1.0 * reaction_r_1050));
	
% Species:   id = s_0582, name = dADP, affected by kineticLaw
	xdot(120) = (1/(compartment_cell))*(( 1.0 * reaction_r_0529) + ( 1.0 * reaction_r_0974) + (-1.0 * reaction_r_1729));
	
% Species:   id = s_0584, name = dAMP, affected by kineticLaw
	xdot(121) = (1/(compartment_cell))*(( 1.0 * reaction_r_1729) + (-0.0036 * reaction_r_2111));
	
% Species:   id = s_0586, name = dATP, affected by kineticLaw
	xdot(122) = (1/(compartment_cell))*((-1.0 * reaction_r_0529) + ( 1.0 * reaction_r_0970));
	
% Species:   id = s_0587, name = dCDP, affected by kineticLaw
	xdot(123) = (1/(compartment_cell))*(( 1.0 * reaction_r_0976) + (-1.0 * reaction_r_1704));
	
% Species:   id = s_0589, name = dCMP, affected by kineticLaw
	xdot(124) = (1/(compartment_cell))*((-1.0 * reaction_r_0326) + ( 1.0 * reaction_r_1704) + (-0.0024 * reaction_r_2111));
	
% Species:   id = s_0595, name = decanoate, affected by kineticLaw
	xdot(125) = (1/(compartment_cell))*((-1.0 * reaction_r_0386) + ( 1.0 * reaction_r_0399));
	
% Species:   id = s_0602, name = decanoyl-CoA, affected by kineticLaw
	xdot(126) = (1/(compartment_cell))*(( 1.0 * reaction_r_0397) + (-1.0 * reaction_r_0399) + (-1.0 * reaction_r_0432));
	
% Species:   id = s_0613, name = dGDP, affected by kineticLaw
	xdot(127) = (1/(compartment_cell))*((-1.0 * reaction_r_0330) + ( 1.0 * reaction_r_0978));
	
% Species:   id = s_0615, name = dGMP, affected by kineticLaw
	xdot(128) = (1/(compartment_cell))*(( 1.0 * reaction_r_0330) + (-0.0024 * reaction_r_2111));
	
% Species:   id = s_0619, name = diglyceride, affected by kineticLaw
	xdot(129) = (1/(compartment_cell))*(( 1.0 * reaction_r_0336) + ( 1.0 * reaction_r_0337) + ( 1.0 * reaction_r_0594) + (-1.0 * reaction_r_1052));
	
% Species:   id = s_0625, name = dihydrofolic acid, affected by kineticLaw
	xdot(130) = (1/(compartment_cell))*((-1.0 * reaction_r_0344) + ( 1.0 * reaction_r_1045));
	
% Species:   id = s_0629, name = dihydroxyacetone phosphate, affected by kineticLaw
	xdot(131) = (1/(compartment_cell))*(( 1.0 * reaction_r_0450) + (-1.0 * reaction_r_0491) + (-1.0 * reaction_r_1054));
	
% Species:   id = s_0633, name = diphosphate, affected by kineticLaw
	xdot(132) = (1/(compartment_cell))*(( 1.0 * reaction_r_0157) + ( 1.0 * reaction_r_0202) + ( 1.0 * reaction_r_0208) + ( 1.0 * reaction_r_0209) + ( 1.0 * reaction_r_0211) + ( 1.0 * reaction_r_0212) + ( 1.0 * reaction_r_0220) + ( 1.0 * reaction_r_0225) + ( 1.0 * reaction_r_0257) + ( 1.0 * reaction_r_0313) + ( 1.0 * reaction_r_0355) + ( 1.0 * reaction_r_0364) + (-1.0 * reaction_r_0399) + (-1.0 * reaction_r_0400) + (-1.0 * reaction_r_0407) + ( 1.0 * reaction_r_0462) + ( 1.0 * reaction_r_0478) + ( 1.0 * reaction_r_0479) + ( 1.0 * reaction_r_0512) + ( 1.0 * reaction_r_0514) + ( 1.0 * reaction_r_0525) + ( 1.0 * reaction_r_0539) + (-1.0 * reaction_r_0568) + ( 1.0 * reaction_r_0665) + ( 1.0 * reaction_r_0701) + ( 1.0 * reaction_r_0711) + ( 1.0 * reaction_r_0722) + ( 1.0 * reaction_r_0726) + ( 1.0 * reaction_r_0729) + ( 1.0 * reaction_r_0820) + ( 1.0 * reaction_r_0852) + ( 1.0 * reaction_r_0910) + ( 1.0 * reaction_r_0915) + ( 1.0 * reaction_r_0941) + ( 1.0 * reaction_r_0995) + ( 2.0 * reaction_r_1012) + ( 1.0 * reaction_r_1042) + ( 1.0 * reaction_r_1057) + ( 1.0 * reaction_r_1066) + ( 1.0 * reaction_r_1084) + ( 1.0 * reaction_r_1089));
	
% Species:   id = s_0644, name = dolichyl D-mannosyl phosphate, affected by kineticLaw
	xdot(133) = (1/(compartment_cell))*(( 1.0 * reaction_r_0361) + (-1.0 * reaction_r_0362));
	
% Species:   id = s_0645, name = dolichyl phosphate, affected by kineticLaw
	xdot(134) = (1/(compartment_cell))*((-1.0 * reaction_r_0361) + ( 1.0 * reaction_r_0362));
	
% Species:   id = s_0649, name = dTMP, affected by kineticLaw
	xdot(135) = (1/(compartment_cell))*(( 1.0 * reaction_r_1045) + (-0.0036 * reaction_r_2111));
	
% Species:   id = s_0654, name = dUMP, affected by kineticLaw
	xdot(136) = (1/(compartment_cell))*(( 1.0 * reaction_r_0326) + ( 1.0 * reaction_r_0364) + (-1.0 * reaction_r_1045));
	
% Species:   id = s_0656, name = dUTP, affected by kineticLaw
	xdot(137) = (1/(compartment_cell))*((-1.0 * reaction_r_0364) + ( 1.0 * reaction_r_0973));
	
% Species:   id = s_0657, name = episterol, affected by kineticLaw
	xdot(138) = (1/(compartment_cell))*((-1.0 * reaction_r_0242) + ( 1.0 * reaction_r_0243) + (-9.6E-5 * reaction_r_2111));
	
% Species:   id = s_0662, name = ergosta-5,7,22,24(28)-tetraen-3beta-ol, affected by kineticLaw
	xdot(139) = (1/(compartment_cell))*(( 1.0 * reaction_r_0233) + (-1.0 * reaction_r_0244) + (-1.25E-4 * reaction_r_2111));
	
% Species:   id = s_0664, name = ergosta-5,7,24(28)-trien-3beta-ol, affected by kineticLaw
	xdot(140) = (1/(compartment_cell))*((-1.0 * reaction_r_0233) + ( 1.0 * reaction_r_0242));
	
% Species:   id = s_0666, name = ergosterol, affected by kineticLaw
	xdot(141) = (1/(compartment_cell))*(( 1.0 * reaction_r_0244) + (-1.0 * reaction_r_1014) + (-0.0056 * reaction_r_2111));
	
% Species:   id = s_0672, name = ergosterol ester, affected by kineticLaw
	xdot(142) = (1/(compartment_cell))*(( 1.0 * reaction_r_1014) + (-8.12E-4 * reaction_r_2111));
	
% Species:   id = s_0700, name = fecosterol, affected by kineticLaw
	xdot(143) = (1/(compartment_cell))*((-1.0 * reaction_r_0243) + ( 1.0 * reaction_r_0986) + (-1.14E-4 * reaction_r_2111));
	
% Species:   id = s_0709, name = ferricytochrome c, affected by kineticLaw
	xdot(144) = (1/(compartment_cell))*(( 4.0 * reaction_r_0438) + (-2.0 * reaction_r_0439));
	
% Species:   id = s_0710, name = ferrocytochrome c, affected by kineticLaw
	xdot(145) = (1/(compartment_cell))*((-4.0 * reaction_r_0438) + ( 2.0 * reaction_r_0439));
	
% Species:   id = s_0722, name = formate, affected by kineticLaw
	xdot(146) = (1/(compartment_cell))*(( 1.0 * reaction_r_0038) + ( 1.0 * reaction_r_0317) + ( 1.0 * reaction_r_0446) + ( 1.0 * reaction_r_0525) + (-1.0 * reaction_r_1795));
	
% Species:   id = s_0725, name = fumarate, affected by kineticLaw
	xdot(147) = (1/(compartment_cell))*(( 1.0 * reaction_r_0151) + ( 1.0 * reaction_r_0152) + ( 1.0 * reaction_r_0207) + (-1.0 * reaction_r_0451));
	
% Species:   id = s_0739, name = GDP, affected by kineticLaw
	xdot(148) = (1/(compartment_cell))*(( 1.0 * reaction_r_0153) + ( 1.0 * reaction_r_0361) + ( 1.0 * reaction_r_0528) + ( 1.0 * reaction_r_0529) + (-1.0 * reaction_r_0800) + (-1.0 * reaction_r_0978));
	
% Species:   id = s_0743, name = GDP-alpha-D-mannose, affected by kineticLaw
	xdot(149) = (1/(compartment_cell))*((-1.0 * reaction_r_0361) + ( 1.0 * reaction_r_0722));
	
% Species:   id = s_0745, name = geranyl diphosphate, affected by kineticLaw
	xdot(150) = (1/(compartment_cell))*(( 1.0 * reaction_r_0355) + (-1.0 * reaction_r_0462));
	
% Species:   id = s_0747, name = Gln-tRNA(Gln), affected by kineticLaw
	xdot(151) = (1/(compartment_cell))*(( 1.0 * reaction_r_0478) + (-0.1054 * reaction_r_2111));
	
% Species:   id = s_0748, name = Glu-tRNA(Glu), affected by kineticLaw
	xdot(152) = (1/(compartment_cell))*(( 1.0 * reaction_r_0479) + (-0.3018 * reaction_r_2111));
	
% Species:   id = s_0750, name = glutathione, affected by kineticLaw
	xdot(153) = (1/(compartment_cell))*(( 2.0 * reaction_r_0481) + (-2.0 * reaction_r_0483));
	
% Species:   id = s_0754, name = glutathione disulfide, affected by kineticLaw
	xdot(154) = (1/(compartment_cell))*((-1.0 * reaction_r_0481) + ( 1.0 * reaction_r_0483));
	
% Species:   id = s_0757, name = Gly-tRNA(Gly), affected by kineticLaw
	xdot(155) = (1/(compartment_cell))*(( 1.0 * reaction_r_0512) + (-0.2904 * reaction_r_2111));
	
% Species:   id = s_0764, name = glyceraldehyde 3-phosphate, affected by kineticLaw
	xdot(156) = (1/(compartment_cell))*(( 1.0 * reaction_r_0450) + (-1.0 * reaction_r_0486) + ( 1.0 * reaction_r_1048) + (-1.0 * reaction_r_1049) + (-1.0 * reaction_r_1050) + ( 1.0 * reaction_r_1054) + ( 1.0 * reaction_r_1055));
	
% Species:   id = s_0767, name = glycerol 3-phosphate, affected by kineticLaw
	xdot(157) = (1/(compartment_cell))*(( 1.0 * reaction_r_0491) + (-1.0 * reaction_r_0495));
	
% Species:   id = s_0773, name = glycogen, affected by kineticLaw
	xdot(158) = (1/(compartment_cell))*(( 1.0 * reaction_r_0510) + (-0.5185 * reaction_r_2111));
	
% Species:   id = s_0782, name = GMP, affected by kineticLaw
	xdot(159) = (1/(compartment_cell))*(( 1.0 * reaction_r_0514) + (-1.0 * reaction_r_0528) + (-1.0 * reaction_r_0529) + (-0.046 * reaction_r_2111));
	
% Species:   id = s_0785, name = GTP, affected by kineticLaw
	xdot(160) = (1/(compartment_cell))*((-1.0 * reaction_r_0153) + (-1.0 * reaction_r_0525) + (-1.0 * reaction_r_0722) + ( 1.0 * reaction_r_0800));
	
% Species:   id = s_0832, name = His-tRNA(His), affected by kineticLaw
	xdot(161) = (1/(compartment_cell))*(( 1.0 * reaction_r_0539) + (-0.0663 * reaction_r_2111));
	
% Species:   id = s_0835, name = homocitrate, affected by kineticLaw
	xdot(162) = (1/(compartment_cell))*((-1.0 * reaction_r_0027) + ( 1.0 * reaction_r_0543));
	
% Species:   id = s_0836, name = homoisocitrate, affected by kineticLaw
	xdot(163) = (1/(compartment_cell))*(( 1.0 * reaction_r_0542) + (-1.0 * reaction_r_0545));
	
% Species:   id = s_0837, name = hydrogen peroxide, affected by kineticLaw
	xdot(164) = (1/(compartment_cell))*(( 1.0 * reaction_r_0339) + (-1.0 * reaction_r_0483) + (-1.0 * reaction_r_0550));
	
% Species:   id = s_0841, name = hydrogen sulfide, affected by kineticLaw
	xdot(165) = (1/(compartment_cell))*((-1.0 * reaction_r_0813) + ( 1.0 * reaction_r_1027));
	
% Species:   id = s_0847, name = Ile-tRNA(Ile), affected by kineticLaw
	xdot(166) = (1/(compartment_cell))*(( 1.0 * reaction_r_0665) + (-0.1927 * reaction_r_2111));
	
% Species:   id = s_0849, name = IMP, affected by kineticLaw
	xdot(167) = (1/(compartment_cell))*((-1.0 * reaction_r_0153) + (-1.0 * reaction_r_0565) + ( 1.0 * reaction_r_0570));
	
% Species:   id = s_0918, name = inositol-P-ceramide D (C24), affected by kineticLaw
	xdot(168) = (1/(compartment_cell))*(( 1.0 * reaction_r_0594) + (-5.38625E-4 * reaction_r_2111));
	
% Species:   id = s_0940, name = isocitrate, affected by kineticLaw
	xdot(169) = (1/(compartment_cell))*(( 1.0 * reaction_r_0280) + (-1.0 * reaction_r_0658) + (-1.0 * reaction_r_0661));
	
% Species:   id = s_0943, name = isopentenyl diphosphate, affected by kineticLaw
	xdot(170) = (1/(compartment_cell))*((-1.0 * reaction_r_0355) + (-1.0 * reaction_r_0462) + (-1.0 * reaction_r_0667) + ( 1.0 * reaction_r_0739));
	
% Species:   id = s_0951, name = keto-phenylpyruvate, affected by kineticLaw
	xdot(171) = (1/(compartment_cell))*((-1.0 * reaction_r_0851) + ( 1.0 * reaction_r_0938));
	
% Species:   id = s_0953, name = L-2-aminoadipate, affected by kineticLaw
	xdot(172) = (1/(compartment_cell))*(( 1.0 * reaction_r_0018) + (-1.0 * reaction_r_0678));
	
% Species:   id = s_0955, name = L-alanine, affected by kineticLaw
	xdot(173) = (1/(compartment_cell))*((-1.0 * reaction_r_0157) + ( 1.0 * reaction_r_0674));
	
% Species:   id = s_0959, name = L-allysine, affected by kineticLaw
	xdot(174) = (1/(compartment_cell))*(( 1.0 * reaction_r_0678) + (-1.0 * reaction_r_0989));
	
% Species:   id = s_0965, name = L-arginine, affected by kineticLaw
	xdot(175) = (1/(compartment_cell))*(( 1.0 * reaction_r_0207) + (-1.0 * reaction_r_0209));
	
% Species:   id = s_0969, name = L-asparagine, affected by kineticLaw
	xdot(176) = (1/(compartment_cell))*(( 1.0 * reaction_r_0211) + (-1.0 * reaction_r_0212));
	
% Species:   id = s_0973, name = L-aspartate, affected by kineticLaw
	xdot(177) = (1/(compartment_cell))*((-1.0 * reaction_r_0153) + (-1.0 * reaction_r_0208) + (-1.0 * reaction_r_0211) + (-1.0 * reaction_r_0214) + (-1.0 * reaction_r_0215) + ( 1.0 * reaction_r_0216) + (-1.0 * reaction_r_0220) + (-1.0 * reaction_r_0908));
	
% Species:   id = s_0978, name = L-aspartate 4-semialdehyde, affected by kineticLaw
	xdot(178) = (1/(compartment_cell))*(( 1.0 * reaction_r_0219) + (-1.0 * reaction_r_0547));
	
% Species:   id = s_0979, name = L-citrulline, affected by kineticLaw
	xdot(179) = (1/(compartment_cell))*((-1.0 * reaction_r_0208) + ( 1.0 * reaction_r_0816));
	
% Species:   id = s_0980, name = L-cystathionine, affected by kineticLaw
	xdot(180) = (1/(compartment_cell))*(( 1.0 * reaction_r_0309) + (-1.0 * reaction_r_0310) + ( 1.0 * reaction_r_0311));
	
% Species:   id = s_0981, name = L-cysteine, affected by kineticLaw
	xdot(181) = (1/(compartment_cell))*(( 1.0 * reaction_r_0310) + (-1.0 * reaction_r_0311) + (-1.0 * reaction_r_0313));
	
% Species:   id = s_0991, name = L-glutamate, affected by kineticLaw
	xdot(182) = (1/(compartment_cell))*((-1.0 * reaction_r_0012) + (-1.0 * reaction_r_0018) + ( 1.0 * reaction_r_0079) + (-1.0 * reaction_r_0118) + ( 1.0 * reaction_r_0203) + ( 1.0 * reaction_r_0211) + (-1.0 * reaction_r_0216) + ( 1.0 * reaction_r_0250) + ( 1.0 * reaction_r_0470) + ( 1.0 * reaction_r_0471) + (-1.0 * reaction_r_0476) + (-1.0 * reaction_r_0479) + ( 1.0 * reaction_r_0514) + (-1.0 * reaction_r_0538) + ( 1.0 * reaction_r_0563) + (-1.0 * reaction_r_0663) + (-1.0 * reaction_r_0674) + (-1.0 * reaction_r_0699) + (-1.0 * reaction_r_0818) + (-1.0 * reaction_r_0851) + ( 1.0 * reaction_r_0915) + (-1.0 * reaction_r_0918) + (-1.0 * reaction_r_0989) + (-1.0 * reaction_r_1063) + (-1.0 * reaction_r_1087));
	
% Species:   id = s_0999, name = L-glutamine, affected by kineticLaw
	xdot(183) = (1/(compartment_cell))*((-1.0 * reaction_r_0079) + (-1.0 * reaction_r_0203) + (-1.0 * reaction_r_0211) + (-1.0 * reaction_r_0250) + ( 1.0 * reaction_r_0476) + (-1.0 * reaction_r_0478) + (-1.0 * reaction_r_0514) + (-1.0 * reaction_r_0563) + (-1.0 * reaction_r_0915));
	
% Species:   id = s_1003, name = L-glycine, affected by kineticLaw
	xdot(184) = (1/(compartment_cell))*((-1.0 * reaction_r_0501) + ( 1.0 * reaction_r_0502) + (-1.0 * reaction_r_0512) + (-1.0 * reaction_r_0914));
	
% Species:   id = s_1006, name = L-histidine, affected by kineticLaw
	xdot(185) = (1/(compartment_cell))*(( 1.0 * reaction_r_0536) + (-1.0 * reaction_r_0539));
	
% Species:   id = s_1010, name = L-histidinol, affected by kineticLaw
	xdot(186) = (1/(compartment_cell))*((-1.0 * reaction_r_0536) + ( 1.0 * reaction_r_0537));
	
% Species:   id = s_1011, name = L-histidinol phosphate, affected by kineticLaw
	xdot(187) = (1/(compartment_cell))*((-1.0 * reaction_r_0537) + ( 1.0 * reaction_r_0538));
	
% Species:   id = s_1012, name = L-homocysteine, affected by kineticLaw
	xdot(188) = (1/(compartment_cell))*(( 1.0 * reaction_r_0144) + (-1.0 * reaction_r_0309) + (-1.0 * reaction_r_0727) + ( 1.0 * reaction_r_0813));
	
% Species:   id = s_1014, name = L-homoserine, affected by kineticLaw
	xdot(189) = (1/(compartment_cell))*(( 1.0 * reaction_r_0547) + (-1.0 * reaction_r_0548) + (-1.0 * reaction_r_0549));
	
% Species:   id = s_1016, name = L-isoleucine, affected by kineticLaw
	xdot(190) = (1/(compartment_cell))*(( 1.0 * reaction_r_0663) + (-1.0 * reaction_r_0665));
	
% Species:   id = s_1021, name = L-leucine, affected by kineticLaw
	xdot(191) = (1/(compartment_cell))*(( 1.0 * reaction_r_0699) + (-1.0 * reaction_r_0701));
	
% Species:   id = s_1025, name = L-lysine, affected by kineticLaw
	xdot(192) = (1/(compartment_cell))*((-1.0 * reaction_r_0711) + ( 1.0 * reaction_r_0988));
	
% Species:   id = s_1029, name = L-methionine, affected by kineticLaw
	xdot(193) = (1/(compartment_cell))*((-1.0 * reaction_r_0726) + ( 1.0 * reaction_r_0727) + (-1.0 * reaction_r_0729));
	
% Species:   id = s_1032, name = L-phenylalanine, affected by kineticLaw
	xdot(194) = (1/(compartment_cell))*(( 1.0 * reaction_r_0851) + (-1.0 * reaction_r_0852));
	
% Species:   id = s_1035, name = L-proline, affected by kineticLaw
	xdot(195) = (1/(compartment_cell))*((-1.0 * reaction_r_0941) + ( 1.0 * reaction_r_0957));
	
% Species:   id = s_1038, name = L-saccharopine, affected by kineticLaw
	xdot(196) = (1/(compartment_cell))*((-1.0 * reaction_r_0988) + ( 1.0 * reaction_r_0989));
	
% Species:   id = s_1039, name = L-serine, affected by kineticLaw
	xdot(197) = (1/(compartment_cell))*((-1.0 * reaction_r_0309) + (-1.0 * reaction_r_0502) + (-1.0 * reaction_r_0880) + ( 1.0 * reaction_r_0917) + (-1.0 * reaction_r_0993) + (-1.0 * reaction_r_0995) + (-1.0 * reaction_r_1055));
	
% Species:   id = s_1045, name = L-threonine, affected by kineticLaw
	xdot(198) = (1/(compartment_cell))*(( 1.0 * reaction_r_1041) + (-1.0 * reaction_r_1042));
	
% Species:   id = s_1048, name = L-tryptophan, affected by kineticLaw
	xdot(199) = (1/(compartment_cell))*(( 1.0 * reaction_r_1055) + (-1.0 * reaction_r_1057));
	
% Species:   id = s_1051, name = L-tyrosine, affected by kineticLaw
	xdot(200) = (1/(compartment_cell))*(( 1.0 * reaction_r_1063) + (-1.0 * reaction_r_1066));
	
% Species:   id = s_1056, name = L-valine, affected by kineticLaw
	xdot(201) = (1/(compartment_cell))*(( 1.0 * reaction_r_1087) + (-1.0 * reaction_r_1089));
	
% Species:   id = s_1059, name = lanosterol, affected by kineticLaw
	xdot(202) = (1/(compartment_cell))*((-1.0 * reaction_r_0317) + ( 1.0 * reaction_r_0698) + (-3.2E-5 * reaction_r_2111));
	
% Species:   id = s_1065, name = laurate, affected by kineticLaw
	xdot(203) = (1/(compartment_cell))*(( 1.0 * reaction_r_0386) + (-1.0 * reaction_r_0387) + ( 1.0 * reaction_r_0400));
	
% Species:   id = s_1073, name = lauroyl-CoA, affected by kineticLaw
	xdot(204) = (1/(compartment_cell))*((-1.0 * reaction_r_0400) + ( 1.0 * reaction_r_0432) + (-1.0 * reaction_r_0433));
	
% Species:   id = s_1077, name = Leu-tRNA(Leu), affected by kineticLaw
	xdot(205) = (1/(compartment_cell))*(( 1.0 * reaction_r_0701) + (-0.2964 * reaction_r_2111));
	
% Species:   id = s_1084, name = lignoceric acid, affected by kineticLaw
	xdot(206) = (1/(compartment_cell))*((-1.0 * reaction_r_0340) + ( 1.0 * reaction_r_0393) + (-1.0 * reaction_r_0919));
	
% Species:   id = s_1099, name = Lys-tRNA(Lys), affected by kineticLaw
	xdot(207) = (1/(compartment_cell))*(( 1.0 * reaction_r_0711) + (-0.2862 * reaction_r_2111));
	
% Species:   id = s_1101, name = malonyl-CoA, affected by kineticLaw
	xdot(208) = (1/(compartment_cell))*(( 1.0 * reaction_r_0108) + (-1.0 * reaction_r_0386) + (-1.0 * reaction_r_0387) + (-1.0 * reaction_r_0389) + (-1.0 * reaction_r_0391) + (-3.0 * reaction_r_0393) + (-1.0 * reaction_r_0397) + (-3.0 * reaction_r_0398) + (-1.0 * reaction_r_0432) + (-1.0 * reaction_r_0433) + (-1.0 * reaction_r_0434) + (-1.0 * reaction_r_0435));
	
% Species:   id = s_1107, name = mannan, affected by kineticLaw
	xdot(209) = (1/(compartment_cell))*(( 1.0 * reaction_r_0362) + (-0.8079 * reaction_r_2111));
	
% Species:   id = s_1148, name = Met-tRNA(Met), affected by kineticLaw
	xdot(210) = (1/(compartment_cell))*(( 1.0 * reaction_r_0729) + (-0.0507 * reaction_r_2111));
	
% Species:   id = s_1153, name = myo-inositol, affected by kineticLaw
	xdot(211) = (1/(compartment_cell))*(( 1.0 * reaction_r_0757) + (-1.0 * reaction_r_0874));
	
% Species:   id = s_1161, name = myristate, affected by kineticLaw
	xdot(212) = (1/(compartment_cell))*(( 1.0 * reaction_r_0387) + (-1.0 * reaction_r_0389));
	
% Species:   id = s_1176, name = myristoyl-CoA, affected by kineticLaw
	xdot(213) = (1/(compartment_cell))*(( 1.0 * reaction_r_0433) + (-1.0 * reaction_r_0434));
	
% Species:   id = s_1182, name = N(2)-acetyl-L-ornithine, affected by kineticLaw
	xdot(214) = (1/(compartment_cell))*(( 1.0 * reaction_r_0118) + (-1.0 * reaction_r_0818));
	
% Species:   id = s_1187, name = N-(5-phospho-beta-D-ribosyl)anthranilate, affected by kineticLaw
	xdot(215) = (1/(compartment_cell))*(( 1.0 * reaction_r_0202) + (-1.0 * reaction_r_0913));
	
% Species:   id = s_1191, name = N-acetyl-L-gamma-glutamyl phosphate, affected by kineticLaw
	xdot(216) = (1/(compartment_cell))*(( 1.0 * reaction_r_0115) + (-1.0 * reaction_r_0759));
	
% Species:   id = s_1192, name = N-acetyl-L-glutamate, affected by kineticLaw
	xdot(217) = (1/(compartment_cell))*((-1.0 * reaction_r_0115) + ( 1.0 * reaction_r_0818));
	
% Species:   id = s_1194, name = N-carbamoyl-L-aspartate, affected by kineticLaw
	xdot(218) = (1/(compartment_cell))*(( 1.0 * reaction_r_0214) + (-1.0 * reaction_r_0349));
	
% Species:   id = s_1198, name = NAD, affected by kineticLaw
	xdot(219) = (1/(compartment_cell))*(( 1.0 * reaction_r_0012) + (-1.0 * reaction_r_0061) + (-1.0 * reaction_r_0235) + ( 1.0 * reaction_r_0470) + (-1.0 * reaction_r_0486) + ( 1.0 * reaction_r_0491) + (-1.0 * reaction_r_0501) + (-2.0 * reaction_r_0536) + (-1.0 * reaction_r_0545) + (-1.0 * reaction_r_0565) + (-1.0 * reaction_r_0658) + (-1.0 * reaction_r_0713) + (-1.0 * reaction_r_0731) + ( 1.0 * reaction_r_0770) + (-1.0 * reaction_r_0891) + (-1.0 * reaction_r_0961) + (-1.0 * reaction_r_0988) + ( 1.0 * reaction_r_1010));
	
% Species:   id = s_1203, name = NADH, affected by kineticLaw
	xdot(220) = (1/(compartment_cell))*((-1.0 * reaction_r_0012) + ( 1.0 * reaction_r_0061) + ( 1.0 * reaction_r_0235) + (-1.0 * reaction_r_0470) + ( 1.0 * reaction_r_0486) + (-1.0 * reaction_r_0491) + ( 1.0 * reaction_r_0501) + ( 2.0 * reaction_r_0536) + ( 1.0 * reaction_r_0545) + ( 1.0 * reaction_r_0565) + ( 1.0 * reaction_r_0658) + ( 1.0 * reaction_r_0713) + ( 1.0 * reaction_r_0731) + (-1.0 * reaction_r_0770) + ( 1.0 * reaction_r_0891) + ( 1.0 * reaction_r_0961) + ( 1.0 * reaction_r_0988) + (-1.0 * reaction_r_1010));
	
% Species:   id = s_1207, name = NADP(+), affected by kineticLaw
	xdot(221) = (1/(compartment_cell))*(( 1.0 * reaction_r_0015) + ( 1.0 * reaction_r_0041) + ( 1.0 * reaction_r_0080) + ( 1.0 * reaction_r_0096) + ( 1.0 * reaction_r_0219) + ( 1.0 * reaction_r_0231) + ( 1.0 * reaction_r_0233) + (-1.0 * reaction_r_0234) + ( 1.0 * reaction_r_0236) + ( 1.0 * reaction_r_0237) + ( 1.0 * reaction_r_0238) + ( 1.0 * reaction_r_0239) + ( 1.0 * reaction_r_0240) + ( 3.0 * reaction_r_0241) + ( 1.0 * reaction_r_0242) + ( 1.0 * reaction_r_0244) + ( 1.0 * reaction_r_0259) + ( 1.0 * reaction_r_0267) + ( 1.0 * reaction_r_0269) + ( 3.0 * reaction_r_0317) + ( 1.0 * reaction_r_0344) + ( 2.0 * reaction_r_0386) + ( 2.0 * reaction_r_0387) + ( 2.0 * reaction_r_0389) + ( 2.0 * reaction_r_0391) + ( 6.0 * reaction_r_0393) + ( 2.0 * reaction_r_0397) + ( 6.0 * reaction_r_0398) + ( 2.0 * reaction_r_0432) + ( 2.0 * reaction_r_0433) + ( 2.0 * reaction_r_0434) + ( 2.0 * reaction_r_0435) + ( 1.0 * reaction_r_0471) + ( 1.0 * reaction_r_0481) + ( 1.0 * reaction_r_0547) + ( 2.0 * reaction_r_0558) + (-1.0 * reaction_r_0661) + ( 1.0 * reaction_r_0669) + ( 1.0 * reaction_r_0678) + (-1.0 * reaction_r_0732) + ( 1.0 * reaction_r_0759) + ( 1.0 * reaction_r_0922) + (-1.0 * reaction_r_0939) + ( 1.0 * reaction_r_0957) + ( 1.0 * reaction_r_0989) + ( 1.0 * reaction_r_0996) + ( 1.0 * reaction_r_1011) + ( 1.0 * reaction_r_1012) + ( 3.0 * reaction_r_1027) + ( 1.0 * reaction_r_1038));
	
% Species:   id = s_1212, name = NADPH, affected by kineticLaw
	xdot(222) = (1/(compartment_cell))*((-1.0 * reaction_r_0015) + (-1.0 * reaction_r_0041) + (-1.0 * reaction_r_0080) + (-1.0 * reaction_r_0096) + (-1.0 * reaction_r_0219) + (-1.0 * reaction_r_0231) + (-1.0 * reaction_r_0233) + ( 1.0 * reaction_r_0234) + (-1.0 * reaction_r_0236) + (-1.0 * reaction_r_0237) + (-1.0 * reaction_r_0238) + (-1.0 * reaction_r_0239) + (-1.0 * reaction_r_0240) + (-3.0 * reaction_r_0241) + (-1.0 * reaction_r_0242) + (-1.0 * reaction_r_0244) + (-1.0 * reaction_r_0259) + (-1.0 * reaction_r_0267) + (-1.0 * reaction_r_0269) + (-3.0 * reaction_r_0317) + (-1.0 * reaction_r_0344) + (-2.0 * reaction_r_0386) + (-2.0 * reaction_r_0387) + (-2.0 * reaction_r_0389) + (-2.0 * reaction_r_0391) + (-6.0 * reaction_r_0393) + (-2.0 * reaction_r_0397) + (-6.0 * reaction_r_0398) + (-2.0 * reaction_r_0432) + (-2.0 * reaction_r_0433) + (-2.0 * reaction_r_0434) + (-2.0 * reaction_r_0435) + (-1.0 * reaction_r_0471) + (-1.0 * reaction_r_0481) + (-1.0 * reaction_r_0547) + (-2.0 * reaction_r_0558) + ( 1.0 * reaction_r_0661) + (-1.0 * reaction_r_0669) + (-1.0 * reaction_r_0678) + ( 1.0 * reaction_r_0732) + (-1.0 * reaction_r_0759) + (-1.0 * reaction_r_0922) + ( 1.0 * reaction_r_0939) + (-1.0 * reaction_r_0957) + (-1.0 * reaction_r_0989) + (-1.0 * reaction_r_0996) + (-1.0 * reaction_r_1011) + (-1.0 * reaction_r_1012) + (-3.0 * reaction_r_1027) + (-1.0 * reaction_r_1038));
	
% Species:   id = s_1233, name = O-acetyl-L-homoserine, affected by kineticLaw
	xdot(223) = (1/(compartment_cell))*((-1.0 * reaction_r_0311) + ( 1.0 * reaction_r_0549) + (-1.0 * reaction_r_0813));
	
% Species:   id = s_1238, name = O-phospho-L-homoserine, affected by kineticLaw
	xdot(224) = (1/(compartment_cell))*(( 1.0 * reaction_r_0548) + (-1.0 * reaction_r_1041));
	
% Species:   id = s_1255, name = octanoyl-CoA, affected by kineticLaw
	xdot(225) = (1/(compartment_cell))*((-1.0 * reaction_r_0397) + ( 1.0 * reaction_r_0398));
	
% Species:   id = s_1266, name = ornithine, affected by kineticLaw
	xdot(226) = (1/(compartment_cell))*((-1.0 * reaction_r_0816) + ( 1.0 * reaction_r_0818));
	
% Species:   id = s_1269, name = orotate, affected by kineticLaw
	xdot(227) = (1/(compartment_cell))*(( 1.0 * reaction_r_0339) + (-1.0 * reaction_r_0820));
	
% Species:   id = s_1270, name = orotidine 5'-(dihydrogen phosphate), affected by kineticLaw
	xdot(228) = (1/(compartment_cell))*(( 1.0 * reaction_r_0820) + (-1.0 * reaction_r_0821));
	
% Species:   id = s_1271, name = oxaloacetate, affected by kineticLaw
	xdot(229) = (1/(compartment_cell))*((-1.0 * reaction_r_0216) + (-1.0 * reaction_r_0300) + ( 1.0 * reaction_r_0713) + ( 1.0 * reaction_r_0958));
	
% Species:   id = s_1275, name = oxygen, affected by kineticLaw
	xdot(230) = (1/(compartment_cell))*((-1.0 * reaction_r_0233) + (-1.0 * reaction_r_0238) + (-1.0 * reaction_r_0239) + (-1.0 * reaction_r_0240) + (-3.0 * reaction_r_0241) + (-1.0 * reaction_r_0242) + (-1.0 * reaction_r_0259) + (-1.0 * reaction_r_0267) + (-1.0 * reaction_r_0269) + (-3.0 * reaction_r_0317) + (-1.0 * reaction_r_0339) + (-1.0 * reaction_r_0438) + (-1.0 * reaction_r_0922) + (-1.0 * reaction_r_1010) + (-1.0 * reaction_r_1011) + ( 1.0 * reaction_r_1979));
	
% Species:   id = s_1286, name = palmitate, affected by kineticLaw
	xdot(231) = (1/(compartment_cell))*(( 1.0 * reaction_r_0389) + (-1.0 * reaction_r_0391));
	
% Species:   id = s_1302, name = palmitoyl-CoA, affected by kineticLaw
	xdot(232) = (1/(compartment_cell))*(( 1.0 * reaction_r_0434) + (-1.0 * reaction_r_0435) + (-1.0 * reaction_r_0993));
	
% Species:   id = s_1314, name = Phe-tRNA(Phe), affected by kineticLaw
	xdot(233) = (1/(compartment_cell))*(( 1.0 * reaction_r_0852) + (-0.1339 * reaction_r_2111));
	
% Species:   id = s_1322, name = phosphate, affected by kineticLaw
	xdot(234) = (1/(compartment_cell))*(( 1.0 * reaction_r_0020) + ( 1.0 * reaction_r_0032) + ( 1.0 * reaction_r_0040) + ( 1.0 * reaction_r_0065) + ( 1.0 * reaction_r_0079) + ( 1.0 * reaction_r_0108) + ( 1.0 * reaction_r_0153) + ( 1.0 * reaction_r_0214) + ( 1.0 * reaction_r_0219) + ( 1.0 * reaction_r_0250) + ( 1.0 * reaction_r_0279) + ( 1.0 * reaction_r_0307) + ( 1.0 * reaction_r_0337) + (-1.0 * reaction_r_0446) + ( 1.0 * reaction_r_0476) + (-1.0 * reaction_r_0486) + ( 1.0 * reaction_r_0537) + ( 2.0 * reaction_r_0568) + ( 1.0 * reaction_r_0726) + ( 1.0 * reaction_r_0739) + ( 1.0 * reaction_r_0757) + ( 1.0 * reaction_r_0759) + ( 1.0 * reaction_r_0792) + ( 1.0 * reaction_r_0816) + ( 1.0 * reaction_r_0855) + ( 1.0 * reaction_r_0908) + ( 1.0 * reaction_r_0911) + ( 1.0 * reaction_r_0914) + ( 1.0 * reaction_r_0917) + ( 1.0 * reaction_r_0958) + ( 1.0 * reaction_r_0967) + ( 1.0 * reaction_r_1026) + ( 1.0 * reaction_r_1041) + ( 1.0 * reaction_r_1051) + ( 1.0 * reaction_r_1244) + ( 1.0 * reaction_r_2030) + ( 58.70001 * reaction_r_2111));
	
% Species:   id = s_1331, name = phosphatidate, affected by kineticLaw
	xdot(235) = (1/(compartment_cell))*(( 1.0 * reaction_r_0008) + (-1.0 * reaction_r_0257) + (-1.0 * reaction_r_0337));
	
% Species:   id = s_1337, name = phosphatidyl-L-serine, affected by kineticLaw
	xdot(236) = (1/(compartment_cell))*((-1.0 * reaction_r_0877) + ( 1.0 * reaction_r_0880) + (-3.9E-4 * reaction_r_2111));
	
% Species:   id = s_1342, name = phosphatidyl-N,N-dimethylethanolamine, affected by kineticLaw
	xdot(237) = (1/(compartment_cell))*((-1.0 * reaction_r_0900) + ( 1.0 * reaction_r_0901));
	
% Species:   id = s_1343, name = phosphatidyl-N-methylethanolamine, affected by kineticLaw
	xdot(238) = (1/(compartment_cell))*(( 1.0 * reaction_r_0858) + (-1.0 * reaction_r_0901));
	
% Species:   id = s_1346, name = phosphatidylcholine, affected by kineticLaw
	xdot(239) = (1/(compartment_cell))*(( 1.0 * reaction_r_0900) + (-0.00288 * reaction_r_2111));
	
% Species:   id = s_1351, name = phosphatidylethanolamine, affected by kineticLaw
	xdot(240) = (1/(compartment_cell))*((-1.0 * reaction_r_0858) + ( 1.0 * reaction_r_0877) + (-6.97E-4 * reaction_r_2111));
	
% Species:   id = s_1360, name = phosphoenolpyruvate, affected by kineticLaw
	xdot(241) = (1/(compartment_cell))*((-1.0 * reaction_r_0020) + (-1.0 * reaction_r_0065) + ( 1.0 * reaction_r_0366) + (-1.0 * reaction_r_0962));
	
% Species:   id = s_1364, name = phosphoribosyl-carboxy-aminoimidazole, affected by kineticLaw
	xdot(242) = (1/(compartment_cell))*((-1.0 * reaction_r_0908) + ( 1.0 * reaction_r_0911));
	
% Species:   id = s_1365, name = phosphoribosyl-formamido-carboxamide, affected by kineticLaw
	xdot(243) = (1/(compartment_cell))*((-1.0 * reaction_r_0570) + ( 1.0 * reaction_r_0912));
	
% Species:   id = s_1366, name = phytosphingosine, affected by kineticLaw
	xdot(244) = (1/(compartment_cell))*((-1.0 * reaction_r_0919) + ( 1.0 * reaction_r_0922));
	
% Species:   id = s_1376, name = prenyl diphosphate, affected by kineticLaw
	xdot(245) = (1/(compartment_cell))*((-1.0 * reaction_r_0355) + ( 1.0 * reaction_r_0667));
	
% Species:   id = s_1377, name = prephenate, affected by kineticLaw
	xdot(246) = (1/(compartment_cell))*(( 1.0 * reaction_r_0278) + (-1.0 * reaction_r_0938) + (-1.0 * reaction_r_0939));
	
% Species:   id = s_1379, name = Pro-tRNA(Pro), affected by kineticLaw
	xdot(247) = (1/(compartment_cell))*(( 1.0 * reaction_r_0941) + (-0.1647 * reaction_r_2111));
	
% Species:   id = s_1386, name = PRPP, affected by kineticLaw
	xdot(248) = (1/(compartment_cell))*((-1.0 * reaction_r_0202) + (-1.0 * reaction_r_0225) + (-1.0 * reaction_r_0820) + (-1.0 * reaction_r_0915) + ( 1.0 * reaction_r_0916));
	
% Species:   id = s_1399, name = pyruvate, affected by kineticLaw
	xdot(249) = (1/(compartment_cell))*((-1.0 * reaction_r_0016) + (-2.0 * reaction_r_0097) + ( 1.0 * reaction_r_0203) + (-1.0 * reaction_r_0674) + (-1.0 * reaction_r_0958) + (-1.0 * reaction_r_0961) + ( 1.0 * reaction_r_0962));
	
% Species:   id = s_1405, name = riboflavin, affected by kineticLaw
	xdot(250) = (1/(compartment_cell))*(( 1.0 * reaction_r_0968) + (-9.9E-4 * reaction_r_2111));
	
% Species:   id = s_1408, name = ribose-5-phosphate, affected by kineticLaw
	xdot(251) = (1/(compartment_cell))*((-1.0 * reaction_r_0916) + ( 1.0 * reaction_r_0982) + ( 1.0 * reaction_r_1049));
	
% Species:   id = s_1413, name = S-adenosyl-L-homocysteine, affected by kineticLaw
	xdot(252) = (1/(compartment_cell))*((-1.0 * reaction_r_0144) + ( 1.0 * reaction_r_0858) + ( 1.0 * reaction_r_0900) + ( 1.0 * reaction_r_0901) + ( 1.0 * reaction_r_0986));
	
% Species:   id = s_1416, name = S-adenosyl-L-methionine, affected by kineticLaw
	xdot(253) = (1/(compartment_cell))*(( 1.0 * reaction_r_0726) + (-1.0 * reaction_r_0858) + (-1.0 * reaction_r_0900) + (-1.0 * reaction_r_0901) + (-1.0 * reaction_r_0986));
	
% Species:   id = s_1427, name = sedoheptulose 7-phosphate, affected by kineticLaw
	xdot(254) = (1/(compartment_cell))*(( 1.0 * reaction_r_1048) + (-1.0 * reaction_r_1049));
	
% Species:   id = s_1428, name = Ser-tRNA(Ser), affected by kineticLaw
	xdot(255) = (1/(compartment_cell))*(( 1.0 * reaction_r_0995) + (-0.1854 * reaction_r_2111));
	
% Species:   id = s_1429, name = shikimate, affected by kineticLaw
	xdot(256) = (1/(compartment_cell))*(( 1.0 * reaction_r_0996) + (-1.0 * reaction_r_0997));
	
% Species:   id = s_1445, name = sphinganine, affected by kineticLaw
	xdot(257) = (1/(compartment_cell))*(( 1.0 * reaction_r_0041) + (-1.0 * reaction_r_0340) + (-1.0 * reaction_r_0922));
	
% Species:   id = s_1447, name = squalene, affected by kineticLaw
	xdot(258) = (1/(compartment_cell))*((-1.0 * reaction_r_1010) + (-1.0 * reaction_r_1011) + ( 1.0 * reaction_r_1012));
	
% Species:   id = s_1449, name = stearate, affected by kineticLaw
	xdot(259) = (1/(compartment_cell))*(( 1.0 * reaction_r_0391) + (-1.0 * reaction_r_0393) + ( 1.0 * reaction_r_0407));
	
% Species:   id = s_1454, name = stearoyl-CoA, affected by kineticLaw
	xdot(260) = (1/(compartment_cell))*((-1.0 * reaction_r_0407) + ( 1.0 * reaction_r_0435));
	
% Species:   id = s_1467, name = sulphate, affected by kineticLaw
	xdot(261) = (1/(compartment_cell))*((-1.0 * reaction_r_1026) + ( 1.0 * reaction_r_1266) + (-0.02 * reaction_r_2111));
	
% Species:   id = s_1469, name = sulphite, affected by kineticLaw
	xdot(262) = (1/(compartment_cell))*(( 1.0 * reaction_r_0883) + (-1.0 * reaction_r_1027));
	
% Species:   id = s_1487, name = THF, affected by kineticLaw
	xdot(263) = (1/(compartment_cell))*(( 1.0 * reaction_r_0344) + ( 1.0 * reaction_r_0446) + ( 1.0 * reaction_r_0499) + (-1.0 * reaction_r_0501) + (-1.0 * reaction_r_0502) + ( 1.0 * reaction_r_0727) + ( 1.0 * reaction_r_0912));
	
% Species:   id = s_1491, name = Thr-tRNA(Thr), affected by kineticLaw
	xdot(264) = (1/(compartment_cell))*(( 1.0 * reaction_r_1042) + (-0.1914 * reaction_r_2111));
	
% Species:   id = s_1520, name = trehalose, affected by kineticLaw
	xdot(265) = (1/(compartment_cell))*(( 1.0 * reaction_r_1051) + (-0.0234 * reaction_r_2111));
	
% Species:   id = s_1524, name = triglyceride, affected by kineticLaw
	xdot(266) = (1/(compartment_cell))*((-1.0 * reaction_r_0336) + ( 1.0 * reaction_r_1052) + (-7.81E-4 * reaction_r_2111));
	
% Species:   id = s_1527, name = Trp-tRNA(Trp), affected by kineticLaw
	xdot(267) = (1/(compartment_cell))*(( 1.0 * reaction_r_1057) + (-0.0284 * reaction_r_2111));
	
% Species:   id = s_1533, name = Tyr-tRNA(Tyr), affected by kineticLaw
	xdot(268) = (1/(compartment_cell))*(( 1.0 * reaction_r_1066) + (-0.102 * reaction_r_2111));
	
% Species:   id = s_1535, name = ubiquinol-6, affected by kineticLaw
	xdot(269) = (1/(compartment_cell))*((-1.0 * reaction_r_0439) + ( 1.0 * reaction_r_0770));
	
% Species:   id = s_1537, name = ubiquinone-6, affected by kineticLaw
	xdot(270) = (1/(compartment_cell))*(( 1.0 * reaction_r_0439) + (-1.0 * reaction_r_0770));
	
% Species:   id = s_1538, name = UDP, affected by kineticLaw
	xdot(271) = (1/(compartment_cell))*(( 1.0 * reaction_r_0005) + ( 1.0 * reaction_r_0006) + ( 1.0 * reaction_r_0195) + ( 1.0 * reaction_r_0510) + (-1.0 * reaction_r_0811) + ( 1.0 * reaction_r_1072));
	
% Species:   id = s_1543, name = UDP-D-glucose, affected by kineticLaw
	xdot(272) = (1/(compartment_cell))*((-1.0 * reaction_r_0005) + (-1.0 * reaction_r_0006) + (-1.0 * reaction_r_0195) + (-1.0 * reaction_r_0510) + ( 1.0 * reaction_r_1084));
	
% Species:   id = s_1545, name = UMP, affected by kineticLaw
	xdot(273) = (1/(compartment_cell))*(( 1.0 * reaction_r_0821) + (-1.0 * reaction_r_1072) + (-0.0599 * reaction_r_2111));
	
% Species:   id = s_1559, name = UTP, affected by kineticLaw
	xdot(274) = (1/(compartment_cell))*((-1.0 * reaction_r_0307) + ( 1.0 * reaction_r_0811) + (-1.0 * reaction_r_0973) + (-1.0 * reaction_r_1084));
	
% Species:   id = s_1561, name = Val-tRNA(Val), affected by kineticLaw
	xdot(275) = (1/(compartment_cell))*(( 1.0 * reaction_r_1089) + (-0.2646 * reaction_r_2111));
	
% Species:   id = s_1565, name = xanthosine-5-phosphate, affected by kineticLaw
	xdot(276) = (1/(compartment_cell))*((-1.0 * reaction_r_0514) + ( 1.0 * reaction_r_0565));
	
% Species:   id = s_1569, name = zymosterol, affected by kineticLaw
	xdot(277) = (1/(compartment_cell))*(( 1.0 * reaction_r_0237) + (-1.0 * reaction_r_0986) + (-1.5E-5 * reaction_r_2111));
	
% Species:   id = s_1576, name = zymosterol intermediate 1a, affected by kineticLaw
	xdot(278) = (1/(compartment_cell))*(( 1.0 * reaction_r_0238) + (-1.0 * reaction_r_0239));
	
% Species:   id = s_1577, name = zymosterol intermediate 1b, affected by kineticLaw
	xdot(279) = (1/(compartment_cell))*(( 1.0 * reaction_r_0239) + (-1.0 * reaction_r_0240));
	
% Species:   id = s_1578, name = zymosterol intermediate 1c, affected by kineticLaw
	xdot(280) = (1/(compartment_cell))*((-1.0 * reaction_r_0234) + ( 1.0 * reaction_r_0240));
	
% Species:   id = s_1579, name = zymosterol intermediate 2, affected by kineticLaw
	xdot(281) = (1/(compartment_cell))*(( 1.0 * reaction_r_0234) + (-1.0 * reaction_r_0237));
	
% Species:   id = s_1582, name = tRNA(Ala), affected by kineticLaw
	xdot(282) = (1/(compartment_cell))*((-1.0 * reaction_r_0157) + ( 0.4588 * reaction_r_2111));
	
% Species:   id = s_1583, name = tRNA(Arg), affected by kineticLaw
	xdot(283) = (1/(compartment_cell))*((-1.0 * reaction_r_0209) + ( 0.1607 * reaction_r_2111));
	
% Species:   id = s_1585, name = tRNA(Asn), affected by kineticLaw
	xdot(284) = (1/(compartment_cell))*((-1.0 * reaction_r_0212) + ( 0.1017 * reaction_r_2111));
	
% Species:   id = s_1587, name = tRNA(Asp), affected by kineticLaw
	xdot(285) = (1/(compartment_cell))*((-1.0 * reaction_r_0220) + ( 0.2975 * reaction_r_2111));
	
% Species:   id = s_1589, name = tRNA(Cys), affected by kineticLaw
	xdot(286) = (1/(compartment_cell))*((-1.0 * reaction_r_0313) + ( 0.0066 * reaction_r_2111));
	
% Species:   id = s_1590, name = tRNA(Gln), affected by kineticLaw
	xdot(287) = (1/(compartment_cell))*((-1.0 * reaction_r_0478) + ( 0.1054 * reaction_r_2111));
	
% Species:   id = s_1591, name = tRNA(Glu), affected by kineticLaw
	xdot(288) = (1/(compartment_cell))*((-1.0 * reaction_r_0479) + ( 0.3018 * reaction_r_2111));
	
% Species:   id = s_1593, name = tRNA(Gly), affected by kineticLaw
	xdot(289) = (1/(compartment_cell))*((-1.0 * reaction_r_0512) + ( 0.2904 * reaction_r_2111));
	
% Species:   id = s_1594, name = tRNA(His), affected by kineticLaw
	xdot(290) = (1/(compartment_cell))*((-1.0 * reaction_r_0539) + ( 0.0663 * reaction_r_2111));
	
% Species:   id = s_1596, name = tRNA(Ile), affected by kineticLaw
	xdot(291) = (1/(compartment_cell))*((-1.0 * reaction_r_0665) + ( 0.1927 * reaction_r_2111));
	
% Species:   id = s_1598, name = tRNA(Leu), affected by kineticLaw
	xdot(292) = (1/(compartment_cell))*((-1.0 * reaction_r_0701) + ( 0.2964 * reaction_r_2111));
	
% Species:   id = s_1600, name = tRNA(Lys), affected by kineticLaw
	xdot(293) = (1/(compartment_cell))*((-1.0 * reaction_r_0711) + ( 0.2862 * reaction_r_2111));
	
% Species:   id = s_1602, name = tRNA(Met), affected by kineticLaw
	xdot(294) = (1/(compartment_cell))*((-1.0 * reaction_r_0729) + ( 0.0507 * reaction_r_2111));
	
% Species:   id = s_1604, name = tRNA(Phe), affected by kineticLaw
	xdot(295) = (1/(compartment_cell))*((-1.0 * reaction_r_0852) + ( 0.1339 * reaction_r_2111));
	
% Species:   id = s_1606, name = tRNA(Pro), affected by kineticLaw
	xdot(296) = (1/(compartment_cell))*((-1.0 * reaction_r_0941) + ( 0.1647 * reaction_r_2111));
	
% Species:   id = s_1607, name = tRNA(Ser), affected by kineticLaw
	xdot(297) = (1/(compartment_cell))*((-1.0 * reaction_r_0995) + ( 0.1854 * reaction_r_2111));
	
% Species:   id = s_1608, name = tRNA(Thr), affected by kineticLaw
	xdot(298) = (1/(compartment_cell))*((-1.0 * reaction_r_1042) + ( 0.1914 * reaction_r_2111));
	
% Species:   id = s_1610, name = tRNA(Trp), affected by kineticLaw
	xdot(299) = (1/(compartment_cell))*((-1.0 * reaction_r_1057) + ( 0.0284 * reaction_r_2111));
	
% Species:   id = s_1612, name = tRNA(Tyr), affected by kineticLaw
	xdot(300) = (1/(compartment_cell))*((-1.0 * reaction_r_1066) + ( 0.102 * reaction_r_2111));
	
% Species:   id = s_1614, name = tRNA(Val), affected by kineticLaw
	xdot(301) = (1/(compartment_cell))*((-1.0 * reaction_r_1089) + ( 0.2646 * reaction_r_2111));
	
% Species:   id = s_1616, name = TRX1, affected by kineticLaw
	xdot(302) = (1/(compartment_cell))*((-1.0 * reaction_r_0550) + (-1.0 * reaction_r_0883) + (-1.0 * reaction_r_0970) + (-1.0 * reaction_r_0973) + (-1.0 * reaction_r_0974) + (-1.0 * reaction_r_0976) + (-1.0 * reaction_r_0978) + ( 1.0 * reaction_r_1038));
	
% Species:   id = s_1620, name = TRX1 disulphide, affected by kineticLaw
	xdot(303) = (1/(compartment_cell))*(( 1.0 * reaction_r_0550) + ( 1.0 * reaction_r_0883) + ( 1.0 * reaction_r_0970) + ( 1.0 * reaction_r_0973) + ( 1.0 * reaction_r_0974) + ( 1.0 * reaction_r_0976) + ( 1.0 * reaction_r_0978) + (-1.0 * reaction_r_1038));
end

function z=max(x,y), z=((x+y+abs(x-y))/2);end

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


