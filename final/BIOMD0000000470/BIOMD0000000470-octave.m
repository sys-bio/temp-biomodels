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
% Model name = Smallbone2013 - E.coli metabolic model with modular rate law
%
% is http://identifiers.org/biomodels.db/MODEL1302140002
% is http://identifiers.org/biomodels.db/BIOMD0000000470
% isDescribedBy http://identifiers.org/doi/10.1089/ind.2013.0003
%


function main()
%Initial conditions vector
	x0=zeros(402,1);
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
	x0(304) = 0.1;
	x0(305) = 0.1;
	x0(306) = 0.1;
	x0(307) = 0.1;
	x0(308) = 0.1;
	x0(309) = 0.1;
	x0(310) = 0.1;
	x0(311) = 0.1;
	x0(312) = 0.1;
	x0(313) = 0.1;
	x0(314) = 0.1;
	x0(315) = 0.1;
	x0(316) = 0.1;
	x0(317) = 0.1;
	x0(318) = 0.1;
	x0(319) = 0.1;
	x0(320) = 0.1;
	x0(321) = 0.1;
	x0(322) = 0.1;
	x0(323) = 0.1;
	x0(324) = 0.1;
	x0(325) = 0.1;
	x0(326) = 0.1;
	x0(327) = 0.1;
	x0(328) = 0.1;
	x0(329) = 0.1;
	x0(330) = 0.1;
	x0(331) = 0.1;
	x0(332) = 0.1;
	x0(333) = 0.1;
	x0(334) = 0.1;
	x0(335) = 0.1;
	x0(336) = 0.1;
	x0(337) = 0.1;
	x0(338) = 0.1;
	x0(339) = 0.1;
	x0(340) = 0.1;
	x0(341) = 0.1;
	x0(342) = 0.1;
	x0(343) = 0.1;
	x0(344) = 0.1;
	x0(345) = 0.1;
	x0(346) = 0.1;
	x0(347) = 0.1;
	x0(348) = 0.1;
	x0(349) = 0.1;
	x0(350) = 0.1;
	x0(351) = 0.1;
	x0(352) = 0.1;
	x0(353) = 0.1;
	x0(354) = 0.1;
	x0(355) = 0.1;
	x0(356) = 0.1;
	x0(357) = 0.1;
	x0(358) = 0.1;
	x0(359) = 0.1;
	x0(360) = 0.1;
	x0(361) = 0.1;
	x0(362) = 0.1;
	x0(363) = 0.1;
	x0(364) = 0.1;
	x0(365) = 0.1;
	x0(366) = 0.1;
	x0(367) = 0.1;
	x0(368) = 0.1;
	x0(369) = 0.1;
	x0(370) = 0.1;
	x0(371) = 0.1;
	x0(372) = 0.1;
	x0(373) = 0.1;
	x0(374) = 0.1;
	x0(375) = 0.1;
	x0(376) = 0.1;
	x0(377) = 0.1;
	x0(378) = 0.1;
	x0(379) = 0.1;
	x0(380) = 0.1;
	x0(381) = 0.1;
	x0(382) = 0.1;
	x0(383) = 0.1;
	x0(384) = 0.1;
	x0(385) = 0.1;
	x0(386) = 0.1;
	x0(387) = 0.1;
	x0(388) = 0.1;
	x0(389) = 0.1;
	x0(390) = 0.1;
	x0(391) = 0.1;
	x0(392) = 0.1;
	x0(393) = 0.1;
	x0(394) = 0.1;
	x0(395) = 0.1;
	x0(396) = 0.1;
	x0(397) = 0.1;
	x0(398) = 0.1;
	x0(399) = 0.1;
	x0(400) = 0.1;
	x0(401) = 0.1;
	x0(402) = 0.1;


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

% Compartment: id = cell, name = cell, constant
	compartment_cell=1.0;
% Compartment: id = extracellular, name = extracellular, constant
	compartment_extracellular=1.0;

% Reaction: id = r_0001, name = (2R,4S)-2-methyl-2,3,3,4-tetrahydroxytetrahydrofuran synthesis (spontaneous)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0001_FLUX_VALUE=6.20554969142397E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0001_Vmax=3.72332981485438E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0001_Keq=2.0;
	% Local Parameter:   id =  Km0004, name = Km0004
	reaction_r_0001_Km0004=0.1;
	% Local Parameter:   id =  Km0003, name = Km0003
	reaction_r_0001_Km0003=0.1;

	reaction_r_0001=compartment_cell*reaction_r_0001_Vmax*(x(2)-x(1)/reaction_r_0001_Keq)/reaction_r_0001_Km0004/(1+x(2)/reaction_r_0001_Km0004+1+x(1)/reaction_r_0001_Km0003-1);

% Reaction: id = r_0008, name = 1-(5-phosphoribosyl)-5-[(5-phosphoribosylamino)methylideneamino)imidazole-4-carboxamide isomerase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0008_FLUX_VALUE=0.0131230753965474;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0008_Vmax=0.0787384523792844;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0008_Keq=2.0;
	% Local Parameter:   id =  Km0097, name = Km0097
	reaction_r_0008_Km0097=0.1;
	% Local Parameter:   id =  Km0341, name = Km0341
	reaction_r_0008_Km0341=0.1;

	reaction_r_0008=compartment_cell*reaction_r_0008_Vmax*(x(24)-x(97)/reaction_r_0008_Keq)/reaction_r_0008_Km0097/(1+x(24)/reaction_r_0008_Km0097+1+x(97)/reaction_r_0008_Km0341-1);

% Reaction: id = r_0009, name = 1-deoxy-D-xylulose 5-phosphate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0009_FLUX_VALUE=3.92694941408386E-4;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0009_Vmax=0.0054977291797174;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0009_Keq=2.0;
	% Local Parameter:   id =  Km0913, name = Km0913
	reaction_r_0009_Km0913=0.1;
	% Local Parameter:   id =  Km1531, name = Km1531
	reaction_r_0009_Km1531=0.1;
	% Local Parameter:   id =  Km0543, name = Km0543
	reaction_r_0009_Km0543=0.1;
	% Local Parameter:   id =  Km0116, name = Km0116
	reaction_r_0009_Km0116=0.1;

	reaction_r_0009=compartment_cell*reaction_r_0009_Vmax*(x(222)*x(352)-x(160)*x(27)/reaction_r_0009_Keq)/(reaction_r_0009_Km0913*reaction_r_0009_Km1531)/((1+x(222)/reaction_r_0009_Km0913)*(1+x(352)/reaction_r_0009_Km1531)+(1+x(160)/reaction_r_0009_Km0543)*(1+x(27)/reaction_r_0009_Km0116)-1);

% Reaction: id = r_0011, name = 1-deoxy-D-xylulose reductoisomerase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0011_FLUX_VALUE=3.30916477964549E-4;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0011_Vmax=0.00463283069150369;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0011_Keq=2.0;
	% Local Parameter:   id =  Km0116, name = Km0116
	reaction_r_0011_Km0116=0.1;
	% Local Parameter:   id =  Km1336, name = Km1336
	reaction_r_0011_Km1336=0.1;
	% Local Parameter:   id =  Km0194, name = Km0194
	reaction_r_0011_Km0194=0.1;
	% Local Parameter:   id =  Km1335, name = Km1335
	reaction_r_0011_Km1335=0.1;

	reaction_r_0011=compartment_cell*reaction_r_0011_Vmax*(x(27)*x(317)-x(41)*x(316)/reaction_r_0011_Keq)/(reaction_r_0011_Km0116*reaction_r_0011_Km1336)/((1+x(27)/reaction_r_0011_Km0116)*(1+x(317)/reaction_r_0011_Km1336)+(1+x(41)/reaction_r_0011_Km0194)*(1+x(316)/reaction_r_0011_Km1335)-1);

% Reaction: id = r_0012, name = 1-hexadec-7-enoyl-sn-glycerol 3-phosphate O-acyltransferase (n-C16:1)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0012_FLUX_VALUE=0.0104178435779621;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0012_Vmax=0.145849810091469;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0012_Keq=2.0;
	% Local Parameter:   id =  Km0119, name = Km0119
	reaction_r_0012_Km0119=0.1;
	% Local Parameter:   id =  Km0533, name = Km0533
	reaction_r_0012_Km0533=0.1;
	% Local Parameter:   id =  Km0397, name = Km0397
	reaction_r_0012_Km0397=0.1;
	% Local Parameter:   id =  Km0073, name = Km0073
	reaction_r_0012_Km0073=0.1;

	reaction_r_0012=compartment_cell*reaction_r_0012_Vmax*(x(28)*x(156)-x(126)*x(21)/reaction_r_0012_Keq)/(reaction_r_0012_Km0119*reaction_r_0012_Km0533)/((1+x(28)/reaction_r_0012_Km0119)*(1+x(156)/reaction_r_0012_Km0533)+(1+x(126)/reaction_r_0012_Km0397)*(1+x(21)/reaction_r_0012_Km0073)-1);

% Reaction: id = r_0013, name = 1-hexadecanoyl-sn-glycerol 3-phosphate O-acyltransferase (n-C16:0)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0013_FLUX_VALUE=0.00884013797559913;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0013_Vmax=0.123761931658388;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0013_Keq=2.0;
	% Local Parameter:   id =  Km0121, name = Km0121
	reaction_r_0013_Km0121=0.1;
	% Local Parameter:   id =  Km1411, name = Km1411
	reaction_r_0013_Km1411=0.1;
	% Local Parameter:   id =  Km0397, name = Km0397
	reaction_r_0013_Km0397=0.1;
	% Local Parameter:   id =  Km0075, name = Km0075
	reaction_r_0013_Km0075=0.1;

	reaction_r_0013=compartment_cell*reaction_r_0013_Vmax*(x(29)*x(332)-x(126)*x(22)/reaction_r_0013_Keq)/(reaction_r_0013_Km0121*reaction_r_0013_Km1411)/((1+x(29)/reaction_r_0013_Km0121)*(1+x(332)/reaction_r_0013_Km1411)+(1+x(126)/reaction_r_0013_Km0397)*(1+x(22)/reaction_r_0013_Km0075)-1);

% Reaction: id = r_0014, name = 1-hydroxy-2-methyl-2-(E)-butenyl 4-diphosphate reductase (dmpp)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0014_FLUX_VALUE=3.85076520790662E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0014_Vmax=5.39107129106927E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0014_Keq=2.0;
	% Local Parameter:   id =  Km0123, name = Km0123
	reaction_r_0014_Km0123=0.1;
	% Local Parameter:   id =  Km1334, name = Km1334
	reaction_r_0014_Km1334=0.1;
	% Local Parameter:   id =  Km0779, name = Km0779
	reaction_r_0014_Km0779=0.1;
	% Local Parameter:   id =  Km1333, name = Km1333
	reaction_r_0014_Km1333=0.1;

	reaction_r_0014=compartment_cell*reaction_r_0014_Vmax*(x(30)*x(315)-x(197)*x(314)/reaction_r_0014_Keq)/(reaction_r_0014_Km0123*reaction_r_0014_Km1334)/((1+x(30)/reaction_r_0014_Km0123)*(1+x(315)/reaction_r_0014_Km1334)+(1+x(197)/reaction_r_0014_Km0779)*(1+x(314)/reaction_r_0014_Km1333)-1);

% Reaction: id = r_0015, name = 1-hydroxy-2-methyl-2-(E)-butenyl 4-diphosphate reductase (ipdp)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0015_FLUX_VALUE=2.92408825885483E-4;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0015_Vmax=0.00409372356239676;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0015_Keq=2.0;
	% Local Parameter:   id =  Km0123, name = Km0123
	reaction_r_0015_Km0123=0.1;
	% Local Parameter:   id =  Km1334, name = Km1334
	reaction_r_0015_Km1334=0.1;
	% Local Parameter:   id =  Km1028, name = Km1028
	reaction_r_0015_Km1028=0.1;
	% Local Parameter:   id =  Km1333, name = Km1333
	reaction_r_0015_Km1333=0.1;

	reaction_r_0015=compartment_cell*reaction_r_0015_Vmax*(x(30)*x(315)-x(247)*x(314)/reaction_r_0015_Keq)/(reaction_r_0015_Km0123*reaction_r_0015_Km1334)/((1+x(30)/reaction_r_0015_Km0123)*(1+x(315)/reaction_r_0015_Km1334)+(1+x(247)/reaction_r_0015_Km1028)*(1+x(314)/reaction_r_0015_Km1333)-1);

% Reaction: id = r_0038, name = 2-aceto-2-hydroxybutanoate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0038_FLUX_VALUE=0.0402391112803253;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0038_Vmax=0.563347557924554;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0038_Keq=2.0;
	% Local Parameter:   id =  Km0232, name = Km0232
	reaction_r_0038_Km0232=0.1;
	% Local Parameter:   id =  Km1531, name = Km1531
	reaction_r_0038_Km1531=0.1;
	% Local Parameter:   id =  Km0041, name = Km0041
	reaction_r_0038_Km0041=0.1;
	% Local Parameter:   id =  Km0543, name = Km0543
	reaction_r_0038_Km0543=0.1;

	reaction_r_0038=compartment_cell*reaction_r_0038_Vmax*(x(51)*x(352)-x(10)*x(160)/reaction_r_0038_Keq)/(reaction_r_0038_Km0232*reaction_r_0038_Km1531)/((1+x(51)/reaction_r_0038_Km0232)*(1+x(352)/reaction_r_0038_Km1531)+(1+x(10)/reaction_r_0038_Km0041)*(1+x(160)/reaction_r_0038_Km0543)-1);

% Reaction: id = r_0053, name = 2-C-methyl-D-erythritol 2,4-cyclodiphosphate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0053_FLUX_VALUE=3.30916477964549E-4;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0053_Vmax=0.00330916477964549;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0053_Keq=0.2;
	% Local Parameter:   id =  Km0237, name = Km0237
	reaction_r_0053_Km0237=0.1;
	% Local Parameter:   id =  Km0193, name = Km0193
	reaction_r_0053_Km0193=0.1;
	% Local Parameter:   id =  Km0539, name = Km0539
	reaction_r_0053_Km0539=0.1;

	reaction_r_0053=compartment_cell*reaction_r_0053_Vmax*(x(53)-x(40)*x(158)/reaction_r_0053_Keq)/reaction_r_0053_Km0237/(1+x(53)/reaction_r_0053_Km0237+(1+x(40)/reaction_r_0053_Km0193)*(1+x(158)/reaction_r_0053_Km0539)-1);

% Reaction: id = r_0054, name = 2-C-methyl-D-erythritol 4-phosphate cytidylyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0054_FLUX_VALUE=3.30916477964549E-4;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0054_Vmax=0.00463283069150369;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0054_Keq=2.0;
	% Local Parameter:   id =  Km0194, name = Km0194
	reaction_r_0054_Km0194=0.1;
	% Local Parameter:   id =  Km0575, name = Km0575
	reaction_r_0054_Km0575=0.1;
	% Local Parameter:   id =  Km0312, name = Km0312
	reaction_r_0054_Km0312=0.1;
	% Local Parameter:   id =  Km0783, name = Km0783
	reaction_r_0054_Km0783=0.1;

	reaction_r_0054=compartment_cell*reaction_r_0054_Vmax*(x(41)*x(165)-x(83)*x(198)/reaction_r_0054_Keq)/(reaction_r_0054_Km0194*reaction_r_0054_Km0575)/((1+x(41)/reaction_r_0054_Km0194)*(1+x(165)/reaction_r_0054_Km0575)+(1+x(83)/reaction_r_0054_Km0312)*(1+x(198)/reaction_r_0054_Km0783)-1);

% Reaction: id = r_0056, name = 2-dehydro-3-deoxy-phosphogluconate aldolase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0056_FLUX_VALUE=0.87986351299776;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0056_Vmax=8.7986351299776;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0056_Keq=0.2;
	% Local Parameter:   id =  Km0201, name = Km0201
	reaction_r_0056_Km0201=0.1;
	% Local Parameter:   id =  Km0913, name = Km0913
	reaction_r_0056_Km0913=0.1;
	% Local Parameter:   id =  Km1531, name = Km1531
	reaction_r_0056_Km1531=0.1;

	reaction_r_0056=compartment_cell*reaction_r_0056_Vmax*(x(43)-x(222)*x(352)/reaction_r_0056_Keq)/reaction_r_0056_Km0201/(1+x(43)/reaction_r_0056_Km0201+(1+x(222)/reaction_r_0056_Km0913)*(1+x(352)/reaction_r_0056_Km1531)-1);

% Reaction: id = r_0063, name = 2-dehydropantoate 2-reductase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0063_FLUX_VALUE=7.97856388884133E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0063_Vmax=0.00111699894443779;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0063_Keq=2.0;
	% Local Parameter:   id =  Km0203, name = Km0203
	reaction_r_0063_Km0203=0.1;
	% Local Parameter:   id =  Km1336, name = Km1336
	reaction_r_0063_Km1336=0.1;
	% Local Parameter:   id =  Km1335, name = Km1335
	reaction_r_0063_Km1335=0.1;
	% Local Parameter:   id =  Km0032, name = Km0032
	reaction_r_0063_Km0032=0.1;

	reaction_r_0063=compartment_cell*reaction_r_0063_Vmax*(x(44)*x(317)-x(316)*x(7)/reaction_r_0063_Keq)/(reaction_r_0063_Km0203*reaction_r_0063_Km1336)/((1+x(44)/reaction_r_0063_Km0203)*(1+x(317)/reaction_r_0063_Km1336)+(1+x(316)/reaction_r_0063_Km1335)*(1+x(7)/reaction_r_0063_Km0032)-1);

% Reaction: id = r_0066, name = 2-isopropylmalate hydratase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0066_FLUX_VALUE=0.0624017887496972;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0066_Vmax=0.374410732498183;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0066_Keq=2.0;
	% Local Parameter:   id =  Km0266, name = Km0266
	reaction_r_0066_Km0266=0.1;
	% Local Parameter:   id =  Km0217, name = Km0217
	reaction_r_0066_Km0217=0.1;

	reaction_r_0066=compartment_cell*reaction_r_0066_Vmax*(x(59)-x(46)/reaction_r_0066_Keq)/reaction_r_0066_Km0266/(1+x(59)/reaction_r_0066_Km0266+1+x(46)/reaction_r_0066_Km0217-1);

% Reaction: id = r_0067, name = 2-isopropylmalate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0067_FLUX_VALUE=0.0624017887496972;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0067_Vmax=0.873625042495761;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0067_Keq=2.0;
	% Local Parameter:   id =  Km0282, name = Km0282
	reaction_r_0067_Km0282=0.1;
	% Local Parameter:   id =  Km0395, name = Km0395
	reaction_r_0067_Km0395=0.1;
	% Local Parameter:   id =  Km0266, name = Km0266
	reaction_r_0067_Km0266=0.1;
	% Local Parameter:   id =  Km0555, name = Km0555
	reaction_r_0067_Km0555=0.1;

	reaction_r_0067=compartment_cell*reaction_r_0067_Vmax*(x(67)*x(125)-x(59)*x(162)/reaction_r_0067_Keq)/(reaction_r_0067_Km0282*reaction_r_0067_Km0395)/((1+x(67)/reaction_r_0067_Km0282)*(1+x(125)/reaction_r_0067_Km0395)+(1+x(59)/reaction_r_0067_Km0266)*(1+x(162)/reaction_r_0067_Km0555)-1);

% Reaction: id = r_0078, name = 2-Oxo-4-methyl-3-carboxypentanoate decarboxylation	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0078_FLUX_VALUE=0.0624017887496972;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0078_Vmax=0.624017887496972;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0078_Keq=0.2;
	% Local Parameter:   id =  Km0267, name = Km0267
	reaction_r_0078_Km0267=0.1;
	% Local Parameter:   id =  Km0328, name = Km0328
	reaction_r_0078_Km0328=0.1;
	% Local Parameter:   id =  Km0543, name = Km0543
	reaction_r_0078_Km0543=0.1;

	reaction_r_0078=compartment_cell*reaction_r_0078_Vmax*(x(60)-x(88)*x(160)/reaction_r_0078_Keq)/reaction_r_0078_Km0267/(1+x(60)/reaction_r_0078_Km0267+(1+x(88)/reaction_r_0078_Km0328)*(1+x(160)/reaction_r_0078_Km0543)-1);

% Reaction: id = r_0084, name = 2C-methyl-D-erythritol 2,4 cyclodiphosphate dehydratase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0084_FLUX_VALUE=3.30916477964549E-4;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0084_Vmax=0.00992749433893647;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0084_Keq=2.0;
	% Local Parameter:   id =  Km0193, name = Km0193
	reaction_r_0084_Km0193=0.1;
	% Local Parameter:   id =  Km0861, name = Km0861
	reaction_r_0084_Km0861=0.1;
	% Local Parameter:   id =  Km0862, name = Km0862
	reaction_r_0084_Km0862=0.1;
	% Local Parameter:   id =  Km0123, name = Km0123
	reaction_r_0084_Km0123=0.1;

	reaction_r_0084=compartment_cell*reaction_r_0084_Vmax*(x(40)*x(214)^2-x(215)^2*x(30)/reaction_r_0084_Keq)/(reaction_r_0084_Km0193*reaction_r_0084_Km0861^2)/((1+x(40)/reaction_r_0084_Km0193)*(1+x(214)/reaction_r_0084_Km0861)^2+(1+x(215)/reaction_r_0084_Km0862)^2*(1+x(30)/reaction_r_0084_Km0123)-1);

% Reaction: id = r_0085, name = 3',5'-bisphosphate nucleotidase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0085_FLUX_VALUE=0.0343363591697952;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0085_Vmax=0.343363591697952;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0085_Keq=0.2;
	% Local Parameter:   id =  Km0411, name = Km0411
	reaction_r_0085_Km0411=0.1;
	% Local Parameter:   id =  Km0454, name = Km0454
	reaction_r_0085_Km0454=0.1;
	% Local Parameter:   id =  Km1430, name = Km1430
	reaction_r_0085_Km1430=0.1;

	reaction_r_0085=compartment_cell*reaction_r_0085_Vmax*(x(129)-x(137)*x(336)/reaction_r_0085_Keq)/reaction_r_0085_Km0411/(1+x(129)/reaction_r_0085_Km0411+(1+x(137)/reaction_r_0085_Km0454)*(1+x(336)/reaction_r_0085_Km1430)-1);

% Reaction: id = r_0092, name = 3,4-Dihydroxy-2-butanone-4-phosphate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0092_FLUX_VALUE=1.23556926891731E-4;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0092_Vmax=0.00123556926891731;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0092_Keq=0.2;
	% Local Parameter:   id =  Km0704, name = Km0704
	reaction_r_0092_Km0704=0.1;
	% Local Parameter:   id =  Km0255, name = Km0255
	reaction_r_0092_Km0255=0.1;
	% Local Parameter:   id =  Km0867, name = Km0867
	reaction_r_0092_Km0867=0.1;

	reaction_r_0092=compartment_cell*reaction_r_0092_Vmax*(x(182)-x(55)*x(217)/reaction_r_0092_Keq)/reaction_r_0092_Km0704/(1+x(182)/reaction_r_0092_Km0704+(1+x(55)/reaction_r_0092_Km0255)*(1+x(217)/reaction_r_0092_Km0867)-1);

% Reaction: id = r_0096, name = 3-cis-2-trans-enoyl-CoA isomerase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0096_FLUX_VALUE=0.0208356871558827;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0096_Vmax=0.125014122935296;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0096_Keq=2.0;
	% Local Parameter:   id =  Km1674, name = Km1674
	reaction_r_0096_Km1674=0.1;
	% Local Parameter:   id =  Km0979, name = Km0979
	reaction_r_0096_Km0979=0.1;

	reaction_r_0096=compartment_cell*reaction_r_0096_Vmax*(x(375)-x(232)/reaction_r_0096_Keq)/reaction_r_0096_Km1674/(1+x(375)/reaction_r_0096_Km1674+1+x(232)/reaction_r_0096_Km0979-1);

% Reaction: id = r_0098, name = 3-dehydroquinate dehydratase, irreversible	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0098_FLUX_VALUE=0.052796345817737;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0098_Vmax=0.316778074906422;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0098_Keq=2.0;
	% Local Parameter:   id =  Km0269, name = Km0269
	reaction_r_0098_Km0269=0.1;
	% Local Parameter:   id =  Km0270, name = Km0270
	reaction_r_0098_Km0270=0.1;

	reaction_r_0098=compartment_cell*reaction_r_0098_Vmax*(x(61)-x(62)/reaction_r_0098_Keq)/reaction_r_0098_Km0269/(1+x(61)/reaction_r_0098_Km0269+1+x(62)/reaction_r_0098_Km0270-1);

% Reaction: id = r_0099, name = 3-dehydroquinate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0099_FLUX_VALUE=0.052796345817737;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0099_Vmax=0.52796345817737;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0099_Keq=0.2;
	% Local Parameter:   id =  Km0195, name = Km0195
	reaction_r_0099_Km0195=0.1;
	% Local Parameter:   id =  Km0269, name = Km0269
	reaction_r_0099_Km0269=0.1;
	% Local Parameter:   id =  Km1430, name = Km1430
	reaction_r_0099_Km1430=0.1;

	reaction_r_0099=compartment_cell*reaction_r_0099_Vmax*(x(42)-x(61)*x(336)/reaction_r_0099_Keq)/reaction_r_0099_Km0195/(1+x(42)/reaction_r_0099_Km0195+(1+x(61)/reaction_r_0099_Km0269)*(1+x(336)/reaction_r_0099_Km1430)-1);

% Reaction: id = r_0100, name = 3-deoxy -D-manno-octulosonic -acid 8-phosphate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0100_FLUX_VALUE=0.00539107129442444;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0100_Vmax=0.0754749981219422;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0100_Keq=2.0;
	% Local Parameter:   id =  Km0611, name = Km0611
	reaction_r_0100_Km0611=0.1;
	% Local Parameter:   id =  Km1484, name = Km1484
	reaction_r_0100_Km1484=0.1;
	% Local Parameter:   id =  Km0272, name = Km0272
	reaction_r_0100_Km0272=0.1;
	% Local Parameter:   id =  Km1430, name = Km1430
	reaction_r_0100_Km1430=0.1;

	reaction_r_0100=compartment_cell*reaction_r_0100_Vmax*(x(171)*x(341)-x(64)*x(336)/reaction_r_0100_Keq)/(reaction_r_0100_Km0611*reaction_r_0100_Km1484)/((1+x(171)/reaction_r_0100_Km0611)*(1+x(341)/reaction_r_0100_Km1484)+(1+x(64)/reaction_r_0100_Km0272)*(1+x(336)/reaction_r_0100_Km1430)-1);

% Reaction: id = r_0101, name = 3-deoxy-D-arabino-heptulosonate 7-phosphate synthetase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0101_FLUX_VALUE=0.052796345817737;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0101_Vmax=0.739148841448318;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0101_Keq=2.0;
	% Local Parameter:   id =  Km0621, name = Km0621
	reaction_r_0101_Km0621=0.1;
	% Local Parameter:   id =  Km1484, name = Km1484
	reaction_r_0101_Km1484=0.1;
	% Local Parameter:   id =  Km0195, name = Km0195
	reaction_r_0101_Km0195=0.1;
	% Local Parameter:   id =  Km1430, name = Km1430
	reaction_r_0101_Km1430=0.1;

	reaction_r_0101=compartment_cell*reaction_r_0101_Vmax*(x(173)*x(341)-x(42)*x(336)/reaction_r_0101_Keq)/(reaction_r_0101_Km0621*reaction_r_0101_Km1484)/((1+x(173)/reaction_r_0101_Km0621)*(1+x(341)/reaction_r_0101_Km1484)+(1+x(42)/reaction_r_0101_Km0195)*(1+x(336)/reaction_r_0101_Km1430)-1);

% Reaction: id = r_0102, name = 3-deoxy-D-manno-octulosonic acid transferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0102_FLUX_VALUE=0.00269553564721213;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0102_Vmax=0.0377374990609698;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0102_Keq=2.0;
	% Local Parameter:   id =  Km0542, name = Km0542
	reaction_r_0102_Km0542=0.1;
	% Local Parameter:   id =  Km0147, name = Km0147
	reaction_r_0102_Km0147=0.1;
	% Local Parameter:   id =  Km0539, name = Km0539
	reaction_r_0102_Km0539=0.1;
	% Local Parameter:   id =  Km1038, name = Km1038
	reaction_r_0102_Km1038=0.1;

	reaction_r_0102=compartment_cell*reaction_r_0102_Vmax*(x(159)*x(33)-x(158)*x(249)/reaction_r_0102_Keq)/(reaction_r_0102_Km0542*reaction_r_0102_Km0147)/((1+x(159)/reaction_r_0102_Km0542)*(1+x(33)/reaction_r_0102_Km0147)+(1+x(158)/reaction_r_0102_Km0539)*(1+x(249)/reaction_r_0102_Km1038)-1);

% Reaction: id = r_0103, name = 3-deoxy-D-manno-octulosonic acid transferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0103_FLUX_VALUE=0.00269553564721213;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0103_Vmax=0.0377374990609698;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0103_Keq=2.0;
	% Local Parameter:   id =  Km0542, name = Km0542
	reaction_r_0103_Km0542=0.1;
	% Local Parameter:   id =  Km1038, name = Km1038
	reaction_r_0103_Km1038=0.1;
	% Local Parameter:   id =  Km0539, name = Km0539
	reaction_r_0103_Km0539=0.1;
	% Local Parameter:   id =  Km1033, name = Km1033
	reaction_r_0103_Km1033=0.1;

	reaction_r_0103=compartment_cell*reaction_r_0103_Vmax*(x(159)*x(249)-x(158)*x(248)/reaction_r_0103_Keq)/(reaction_r_0103_Km0542*reaction_r_0103_Km1038)/((1+x(159)/reaction_r_0103_Km0542)*(1+x(249)/reaction_r_0103_Km1038)+(1+x(158)/reaction_r_0103_Km0539)*(1+x(248)/reaction_r_0103_Km1033)-1);

% Reaction: id = r_0105, name = 3-deoxy-manno-octulosonate cytidylyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0105_FLUX_VALUE=0.00539107129442444;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0105_Vmax=0.0754749981219422;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0105_Keq=2.0;
	% Local Parameter:   id =  Km0575, name = Km0575
	reaction_r_0105_Km0575=0.1;
	% Local Parameter:   id =  Km0271, name = Km0271
	reaction_r_0105_Km0271=0.1;
	% Local Parameter:   id =  Km0542, name = Km0542
	reaction_r_0105_Km0542=0.1;
	% Local Parameter:   id =  Km0783, name = Km0783
	reaction_r_0105_Km0783=0.1;

	reaction_r_0105=compartment_cell*reaction_r_0105_Vmax*(x(165)*x(63)-x(159)*x(198)/reaction_r_0105_Keq)/(reaction_r_0105_Km0575*reaction_r_0105_Km0271)/((1+x(165)/reaction_r_0105_Km0575)*(1+x(63)/reaction_r_0105_Km0271)+(1+x(159)/reaction_r_0105_Km0542)*(1+x(198)/reaction_r_0105_Km0783)-1);

% Reaction: id = r_0106, name = 3-deoxy-manno-octulosonate-8-phosphatase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0106_FLUX_VALUE=0.00539107129442444;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0106_Vmax=0.0539107129442444;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0106_Keq=0.2;
	% Local Parameter:   id =  Km0272, name = Km0272
	reaction_r_0106_Km0272=0.1;
	% Local Parameter:   id =  Km0271, name = Km0271
	reaction_r_0106_Km0271=0.1;
	% Local Parameter:   id =  Km1430, name = Km1430
	reaction_r_0106_Km1430=0.1;

	reaction_r_0106=compartment_cell*reaction_r_0106_Vmax*(x(64)-x(63)*x(336)/reaction_r_0106_Keq)/reaction_r_0106_Km0272/(1+x(64)/reaction_r_0106_Km0272+(1+x(63)/reaction_r_0106_Km0271)*(1+x(336)/reaction_r_0106_Km1430)-1);

% Reaction: id = r_0120, name = 3-hydroxyacyl-CoA dehydratase (3-hydroxybutanoyl-CoA)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0120_FLUX_VALUE=0.0492981056959303;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0120_Vmax=0.295788634175582;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0120_Keq=2.0;
	% Local Parameter:   id =  Km0043, name = Km0043
	reaction_r_0120_Km0043=0.1;
	% Local Parameter:   id =  Km0574, name = Km0574
	reaction_r_0120_Km0574=0.1;

	reaction_r_0120=compartment_cell*reaction_r_0120_Vmax*(x(12)-x(164)/reaction_r_0120_Keq)/reaction_r_0120_Km0043/(1+x(12)/reaction_r_0120_Km0043+1+x(164)/reaction_r_0120_Km0574-1);

% Reaction: id = r_0121, name = 3-hydroxyacyl-CoA dehydratase (3-hydroxydecanoyl-CoA)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0121_FLUX_VALUE=0.0492981056959448;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0121_Vmax=0.295788634175669;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0121_Keq=2.0;
	% Local Parameter:   id =  Km0044, name = Km0044
	reaction_r_0121_Km0044=0.1;
	% Local Parameter:   id =  Km1668, name = Km1668
	reaction_r_0121_Km1668=0.1;

	reaction_r_0121=compartment_cell*reaction_r_0121_Vmax*(x(13)-x(372)/reaction_r_0121_Keq)/reaction_r_0121_Km0044/(1+x(13)/reaction_r_0121_Km0044+1+x(372)/reaction_r_0121_Km1668-1);

% Reaction: id = r_0122, name = 3-hydroxyacyl-CoA dehydratase (3-hydroxydodecanoyl-CoA)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0122_FLUX_VALUE=0.0492981056959429;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0122_Vmax=0.295788634175657;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0122_Keq=2.0;
	% Local Parameter:   id =  Km0045, name = Km0045
	reaction_r_0122_Km0045=0.1;
	% Local Parameter:   id =  Km1670, name = Km1670
	reaction_r_0122_Km1670=0.1;

	reaction_r_0122=compartment_cell*reaction_r_0122_Vmax*(x(14)-x(373)/reaction_r_0122_Keq)/reaction_r_0122_Km0045/(1+x(14)/reaction_r_0122_Km0045+1+x(373)/reaction_r_0122_Km1670-1);

% Reaction: id = r_0123, name = 3-hydroxyacyl-CoA dehydratase (3-hydroxyhexadecanoyl-CoA)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0123_FLUX_VALUE=0.0385159631070915;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0123_Vmax=0.231095778642549;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0123_Keq=2.0;
	% Local Parameter:   id =  Km0046, name = Km0046
	reaction_r_0123_Km0046=0.1;
	% Local Parameter:   id =  Km1674, name = Km1674
	reaction_r_0123_Km1674=0.1;

	reaction_r_0123=compartment_cell*reaction_r_0123_Vmax*(x(15)-x(375)/reaction_r_0123_Keq)/reaction_r_0123_Km0046/(1+x(15)/reaction_r_0123_Km0046+1+x(375)/reaction_r_0123_Km1674-1);

% Reaction: id = r_0124, name = 3-hydroxyacyl-CoA dehydratase (3-hydroxyhexanoyl-CoA)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0124_FLUX_VALUE=0.0492981056959303;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0124_Vmax=0.295788634175582;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0124_Keq=2.0;
	% Local Parameter:   id =  Km0047, name = Km0047
	reaction_r_0124_Km0047=0.1;
	% Local Parameter:   id =  Km1672, name = Km1672
	reaction_r_0124_Km1672=0.1;

	reaction_r_0124=compartment_cell*reaction_r_0124_Vmax*(x(16)-x(374)/reaction_r_0124_Keq)/reaction_r_0124_Km0047/(1+x(16)/reaction_r_0124_Km0047+1+x(374)/reaction_r_0124_Km1672-1);

% Reaction: id = r_0126, name = 3-hydroxyacyl-CoA dehydratase (3-hydroxyoctanoyl-CoA)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0126_FLUX_VALUE=0.0492981056959303;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0126_Vmax=0.295788634175582;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0126_Keq=2.0;
	% Local Parameter:   id =  Km0049, name = Km0049
	reaction_r_0126_Km0049=0.1;
	% Local Parameter:   id =  Km1676, name = Km1676
	reaction_r_0126_Km1676=0.1;

	reaction_r_0126=compartment_cell*reaction_r_0126_Vmax*(x(17)-x(376)/reaction_r_0126_Keq)/reaction_r_0126_Km0049/(1+x(17)/reaction_r_0126_Km0049+1+x(376)/reaction_r_0126_Km1676-1);

% Reaction: id = r_0127, name = 3-hydroxyacyl-CoA dehydratase (3-hydroxytetradecanoyl-CoA)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0127_FLUX_VALUE=0.0385159631070598;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0127_Vmax=0.231095778642359;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0127_Keq=2.0;
	% Local Parameter:   id =  Km0050, name = Km0050
	reaction_r_0127_Km0050=0.1;
	% Local Parameter:   id =  Km1680, name = Km1680
	reaction_r_0127_Km1680=0.1;

	reaction_r_0127=compartment_cell*reaction_r_0127_Vmax*(x(18)-x(377)/reaction_r_0127_Keq)/reaction_r_0127_Km0050/(1+x(18)/reaction_r_0127_Km0050+1+x(377)/reaction_r_0127_Km1680-1);

% Reaction: id = r_0128, name = 3-hydroxyacyl-CoA dehydrogenase (3-oxodecanoyl-CoA)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0128_FLUX_VALUE=0.0492981056959448;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0128_Vmax=0.690173479743227;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0128_Keq=2.0;
	% Local Parameter:   id =  Km0293, name = Km0293
	reaction_r_0128_Km0293=0.1;
	% Local Parameter:   id =  Km1334, name = Km1334
	reaction_r_0128_Km1334=0.1;
	% Local Parameter:   id =  Km0044, name = Km0044
	reaction_r_0128_Km0044=0.1;
	% Local Parameter:   id =  Km1333, name = Km1333
	reaction_r_0128_Km1333=0.1;

	reaction_r_0128=compartment_cell*reaction_r_0128_Vmax*(x(71)*x(315)-x(13)*x(314)/reaction_r_0128_Keq)/(reaction_r_0128_Km0293*reaction_r_0128_Km1334)/((1+x(71)/reaction_r_0128_Km0293)*(1+x(315)/reaction_r_0128_Km1334)+(1+x(13)/reaction_r_0128_Km0044)*(1+x(314)/reaction_r_0128_Km1333)-1);

% Reaction: id = r_0129, name = 3-hydroxyacyl-CoA dehydrogenase (3-oxododecanoyl-CoA)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0129_FLUX_VALUE=0.0492981056959429;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0129_Vmax=0.690173479743201;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0129_Keq=2.0;
	% Local Parameter:   id =  Km0295, name = Km0295
	reaction_r_0129_Km0295=0.1;
	% Local Parameter:   id =  Km1334, name = Km1334
	reaction_r_0129_Km1334=0.1;
	% Local Parameter:   id =  Km0045, name = Km0045
	reaction_r_0129_Km0045=0.1;
	% Local Parameter:   id =  Km1333, name = Km1333
	reaction_r_0129_Km1333=0.1;

	reaction_r_0129=compartment_cell*reaction_r_0129_Vmax*(x(72)*x(315)-x(14)*x(314)/reaction_r_0129_Keq)/(reaction_r_0129_Km0295*reaction_r_0129_Km1334)/((1+x(72)/reaction_r_0129_Km0295)*(1+x(315)/reaction_r_0129_Km1334)+(1+x(14)/reaction_r_0129_Km0045)*(1+x(314)/reaction_r_0129_Km1333)-1);

% Reaction: id = r_0130, name = 3-hydroxyacyl-CoA dehydrogenase (3-oxohexadecanoyl-CoA)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0130_FLUX_VALUE=0.0385159631070915;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0130_Vmax=0.539223483499281;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0130_Keq=2.0;
	% Local Parameter:   id =  Km0297, name = Km0297
	reaction_r_0130_Km0297=0.1;
	% Local Parameter:   id =  Km1334, name = Km1334
	reaction_r_0130_Km1334=0.1;
	% Local Parameter:   id =  Km0046, name = Km0046
	reaction_r_0130_Km0046=0.1;
	% Local Parameter:   id =  Km1333, name = Km1333
	reaction_r_0130_Km1333=0.1;

	reaction_r_0130=compartment_cell*reaction_r_0130_Vmax*(x(73)*x(315)-x(15)*x(314)/reaction_r_0130_Keq)/(reaction_r_0130_Km0297*reaction_r_0130_Km1334)/((1+x(73)/reaction_r_0130_Km0297)*(1+x(315)/reaction_r_0130_Km1334)+(1+x(15)/reaction_r_0130_Km0046)*(1+x(314)/reaction_r_0130_Km1333)-1);

% Reaction: id = r_0131, name = 3-hydroxyacyl-CoA dehydrogenase (3-oxohexanoyl-CoA)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0131_FLUX_VALUE=0.0492981056959303;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0131_Vmax=0.690173479743024;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0131_Keq=2.0;
	% Local Parameter:   id =  Km0299, name = Km0299
	reaction_r_0131_Km0299=0.1;
	% Local Parameter:   id =  Km1334, name = Km1334
	reaction_r_0131_Km1334=0.1;
	% Local Parameter:   id =  Km0047, name = Km0047
	reaction_r_0131_Km0047=0.1;
	% Local Parameter:   id =  Km1333, name = Km1333
	reaction_r_0131_Km1333=0.1;

	reaction_r_0131=compartment_cell*reaction_r_0131_Vmax*(x(74)*x(315)-x(16)*x(314)/reaction_r_0131_Keq)/(reaction_r_0131_Km0299*reaction_r_0131_Km1334)/((1+x(74)/reaction_r_0131_Km0299)*(1+x(315)/reaction_r_0131_Km1334)+(1+x(16)/reaction_r_0131_Km0047)*(1+x(314)/reaction_r_0131_Km1333)-1);

% Reaction: id = r_0133, name = 3-hydroxyacyl-CoA dehydrogenase (3-oxooctanoyl-CoA)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0133_FLUX_VALUE=0.0492981056959303;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0133_Vmax=0.690173479743024;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0133_Keq=2.0;
	% Local Parameter:   id =  Km0303, name = Km0303
	reaction_r_0133_Km0303=0.1;
	% Local Parameter:   id =  Km1334, name = Km1334
	reaction_r_0133_Km1334=0.1;
	% Local Parameter:   id =  Km0049, name = Km0049
	reaction_r_0133_Km0049=0.1;
	% Local Parameter:   id =  Km1333, name = Km1333
	reaction_r_0133_Km1333=0.1;

	reaction_r_0133=compartment_cell*reaction_r_0133_Vmax*(x(75)*x(315)-x(17)*x(314)/reaction_r_0133_Keq)/(reaction_r_0133_Km0303*reaction_r_0133_Km1334)/((1+x(75)/reaction_r_0133_Km0303)*(1+x(315)/reaction_r_0133_Km1334)+(1+x(17)/reaction_r_0133_Km0049)*(1+x(314)/reaction_r_0133_Km1333)-1);

% Reaction: id = r_0134, name = 3-hydroxyacyl-CoA dehydrogenase (3-oxotetradecanoyl-CoA)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0134_FLUX_VALUE=0.0385159631070598;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0134_Vmax=0.539223483498837;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0134_Keq=2.0;
	% Local Parameter:   id =  Km0305, name = Km0305
	reaction_r_0134_Km0305=0.1;
	% Local Parameter:   id =  Km1334, name = Km1334
	reaction_r_0134_Km1334=0.1;
	% Local Parameter:   id =  Km0050, name = Km0050
	reaction_r_0134_Km0050=0.1;
	% Local Parameter:   id =  Km1333, name = Km1333
	reaction_r_0134_Km1333=0.1;

	reaction_r_0134=compartment_cell*reaction_r_0134_Vmax*(x(77)*x(315)-x(18)*x(314)/reaction_r_0134_Keq)/(reaction_r_0134_Km0305*reaction_r_0134_Km1334)/((1+x(77)/reaction_r_0134_Km0305)*(1+x(315)/reaction_r_0134_Km1334)+(1+x(18)/reaction_r_0134_Km0050)*(1+x(314)/reaction_r_0134_Km1333)-1);

% Reaction: id = r_0135, name = 3-hydroxyacyl-CoA dehydrogenase (acetoacetyl-CoA)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0135_FLUX_VALUE=0.0492981056959303;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0135_Vmax=0.690173479743024;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0135_Keq=2.0;
	% Local Parameter:   id =  Km0391, name = Km0391
	reaction_r_0135_Km0391=0.1;
	% Local Parameter:   id =  Km1334, name = Km1334
	reaction_r_0135_Km1334=0.1;
	% Local Parameter:   id =  Km0043, name = Km0043
	reaction_r_0135_Km0043=0.1;
	% Local Parameter:   id =  Km1333, name = Km1333
	reaction_r_0135_Km1333=0.1;

	reaction_r_0135=compartment_cell*reaction_r_0135_Vmax*(x(123)*x(315)-x(12)*x(314)/reaction_r_0135_Keq)/(reaction_r_0135_Km0391*reaction_r_0135_Km1334)/((1+x(123)/reaction_r_0135_Km0391)*(1+x(315)/reaction_r_0135_Km1334)+(1+x(12)/reaction_r_0135_Km0043)*(1+x(314)/reaction_r_0135_Km1333)-1);

% Reaction: id = r_0138, name = 3-isopropylmalate dehydratase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0138_FLUX_VALUE=0.0624017887496972;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0138_Vmax=0.374410732498183;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0138_Keq=2.0;
	% Local Parameter:   id =  Km0217, name = Km0217
	reaction_r_0138_Km0217=0.1;
	% Local Parameter:   id =  Km0265, name = Km0265
	reaction_r_0138_Km0265=0.1;

	reaction_r_0138=compartment_cell*reaction_r_0138_Vmax*(x(46)-x(58)/reaction_r_0138_Keq)/reaction_r_0138_Km0217/(1+x(46)/reaction_r_0138_Km0217+1+x(58)/reaction_r_0138_Km0265-1);

% Reaction: id = r_0139, name = 3-isopropylmalate dehydrogenase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0139_FLUX_VALUE=0.0624017887496972;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0139_Vmax=0.873625042495761;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0139_Keq=2.0;
	% Local Parameter:   id =  Km0265, name = Km0265
	reaction_r_0139_Km0265=0.1;
	% Local Parameter:   id =  Km1333, name = Km1333
	reaction_r_0139_Km1333=0.1;
	% Local Parameter:   id =  Km0267, name = Km0267
	reaction_r_0139_Km0267=0.1;
	% Local Parameter:   id =  Km1334, name = Km1334
	reaction_r_0139_Km1334=0.1;

	reaction_r_0139=compartment_cell*reaction_r_0139_Vmax*(x(58)*x(314)-x(60)*x(315)/reaction_r_0139_Keq)/(reaction_r_0139_Km0265*reaction_r_0139_Km1333)/((1+x(58)/reaction_r_0139_Km0265)*(1+x(314)/reaction_r_0139_Km1333)+(1+x(60)/reaction_r_0139_Km0267)*(1+x(315)/reaction_r_0139_Km1334)-1);

% Reaction: id = r_0143, name = 3-methyl-2-oxobutanoate hydroxymethyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0143_FLUX_VALUE=7.97856388884133E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0143_Vmax=0.00111699894443779;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0143_Keq=2.0;
	% Local Parameter:   id =  Km0282, name = Km0282
	reaction_r_0143_Km0282=0.1;
	% Local Parameter:   id =  Km0336, name = Km0336
	reaction_r_0143_Km0336=0.1;
	% Local Parameter:   id =  Km0203, name = Km0203
	reaction_r_0143_Km0203=0.1;
	% Local Parameter:   id =  Km0337, name = Km0337
	reaction_r_0143_Km0337=0.1;

	reaction_r_0143=compartment_cell*reaction_r_0143_Vmax*(x(67)*x(95)-x(44)*x(96)/reaction_r_0143_Keq)/(reaction_r_0143_Km0282*reaction_r_0143_Km0336)/((1+x(67)/reaction_r_0143_Km0282)*(1+x(95)/reaction_r_0143_Km0336)+(1+x(44)/reaction_r_0143_Km0203)*(1+x(96)/reaction_r_0143_Km0337)-1);

% Reaction: id = r_0145, name = 3-Oxo-glutaryl-[ACP] methyl ester dehydratase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0145_FLUX_VALUE=2.77033467884759E-7;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0145_Vmax=1.66220080730855E-6;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0145_Keq=2.0;
	% Local Parameter:   id =  Km0276, name = Km0276
	reaction_r_0145_Km0276=0.1;
	% Local Parameter:   id =  Km0812, name = Km0812
	reaction_r_0145_Km0812=0.1;

	reaction_r_0145=compartment_cell*reaction_r_0145_Vmax*(x(65)-x(207)/reaction_r_0145_Keq)/reaction_r_0145_Km0276/(1+x(65)/reaction_r_0145_Km0276+1+x(207)/reaction_r_0145_Km0812-1);

% Reaction: id = r_0146, name = 3-Oxo-glutaryl-[ACP] methyl ester reductase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0146_FLUX_VALUE=2.77033467884759E-7;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0146_Vmax=3.87846855038663E-6;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0146_Keq=2.0;
	% Local Parameter:   id =  Km1336, name = Km1336
	reaction_r_0146_Km1336=0.1;
	% Local Parameter:   id =  Km0289, name = Km0289
	reaction_r_0146_Km0289=0.1;
	% Local Parameter:   id =  Km0276, name = Km0276
	reaction_r_0146_Km0276=0.1;
	% Local Parameter:   id =  Km1335, name = Km1335
	reaction_r_0146_Km1335=0.1;

	reaction_r_0146=compartment_cell*reaction_r_0146_Vmax*(x(317)*x(69)-x(65)*x(316)/reaction_r_0146_Keq)/(reaction_r_0146_Km1336*reaction_r_0146_Km0289)/((1+x(317)/reaction_r_0146_Km1336)*(1+x(69)/reaction_r_0146_Km0289)+(1+x(65)/reaction_r_0146_Km0276)*(1+x(316)/reaction_r_0146_Km1335)-1);

% Reaction: id = r_0147, name = 3-Oxo-glutaryl-[ACP] methyl ester synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0147_FLUX_VALUE=2.77033467884759E-7;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0147_Vmax=6.0947362934647E-6;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0147_Keq=0.2;
	% Local Parameter:   id =  Km1216, name = Km1216
	reaction_r_0147_Km1216=0.1;
	% Local Parameter:   id =  Km1218, name = Km1218
	reaction_r_0147_Km1218=0.1;
	% Local Parameter:   id =  Km0543, name = Km0543
	reaction_r_0147_Km0543=0.1;
	% Local Parameter:   id =  Km0555, name = Km0555
	reaction_r_0147_Km0555=0.1;
	% Local Parameter:   id =  Km0289, name = Km0289
	reaction_r_0147_Km0289=0.1;

	reaction_r_0147=compartment_cell*reaction_r_0147_Vmax*(x(285)*x(287)-x(160)*x(162)*x(69)/reaction_r_0147_Keq)/(reaction_r_0147_Km1216*reaction_r_0147_Km1218)/((1+x(285)/reaction_r_0147_Km1216)*(1+x(287)/reaction_r_0147_Km1218)+(1+x(160)/reaction_r_0147_Km0543)*(1+x(162)/reaction_r_0147_Km0555)*(1+x(69)/reaction_r_0147_Km0289)-1);

% Reaction: id = r_0148, name = 3-Oxo-pimeloyl-[ACP] methyl ester dehydratase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0148_FLUX_VALUE=2.77033467884759E-7;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0148_Vmax=1.66220080730855E-6;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0148_Keq=2.0;
	% Local Parameter:   id =  Km0277, name = Km0277
	reaction_r_0148_Km0277=0.1;
	% Local Parameter:   id =  Km0813, name = Km0813
	reaction_r_0148_Km0813=0.1;

	reaction_r_0148=compartment_cell*reaction_r_0148_Vmax*(x(66)-x(208)/reaction_r_0148_Keq)/reaction_r_0148_Km0277/(1+x(66)/reaction_r_0148_Km0277+1+x(208)/reaction_r_0148_Km0813-1);

% Reaction: id = r_0149, name = 3-Oxo-pimeloyl-[ACP] methyl ester reductase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0149_FLUX_VALUE=2.77033467884759E-7;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0149_Vmax=3.87846855038663E-6;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0149_Keq=2.0;
	% Local Parameter:   id =  Km1336, name = Km1336
	reaction_r_0149_Km1336=0.1;
	% Local Parameter:   id =  Km0290, name = Km0290
	reaction_r_0149_Km0290=0.1;
	% Local Parameter:   id =  Km0277, name = Km0277
	reaction_r_0149_Km0277=0.1;
	% Local Parameter:   id =  Km1335, name = Km1335
	reaction_r_0149_Km1335=0.1;

	reaction_r_0149=compartment_cell*reaction_r_0149_Vmax*(x(317)*x(70)-x(66)*x(316)/reaction_r_0149_Keq)/(reaction_r_0149_Km1336*reaction_r_0149_Km0290)/((1+x(317)/reaction_r_0149_Km1336)*(1+x(70)/reaction_r_0149_Km0290)+(1+x(66)/reaction_r_0149_Km0277)*(1+x(316)/reaction_r_0149_Km1335)-1);

% Reaction: id = r_0150, name = 3-Oxo-pimeloyl-[ACP] methyl ester synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0150_FLUX_VALUE=2.77033467884759E-7;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0150_Vmax=6.0947362934647E-6;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0150_Keq=0.2;
	% Local Parameter:   id =  Km0910, name = Km0910
	reaction_r_0150_Km0910=0.1;
	% Local Parameter:   id =  Km1216, name = Km1216
	reaction_r_0150_Km1216=0.1;
	% Local Parameter:   id =  Km0397, name = Km0397
	reaction_r_0150_Km0397=0.1;
	% Local Parameter:   id =  Km0543, name = Km0543
	reaction_r_0150_Km0543=0.1;
	% Local Parameter:   id =  Km0290, name = Km0290
	reaction_r_0150_Km0290=0.1;

	reaction_r_0150=compartment_cell*reaction_r_0150_Vmax*(x(221)*x(285)-x(126)*x(160)*x(70)/reaction_r_0150_Keq)/(reaction_r_0150_Km0910*reaction_r_0150_Km1216)/((1+x(221)/reaction_r_0150_Km0910)*(1+x(285)/reaction_r_0150_Km1216)+(1+x(126)/reaction_r_0150_Km0397)*(1+x(160)/reaction_r_0150_Km0543)*(1+x(70)/reaction_r_0150_Km0290)-1);

% Reaction: id = r_0154, name = 3-oxoacyl-[acyl-carrier-protein] reductase (n-C14:0)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0154_FLUX_VALUE=0.0107821425888488;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0154_Vmax=0.150949996243883;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0154_Keq=2.0;
	% Local Parameter:   id =  Km0304, name = Km0304
	reaction_r_0154_Km0304=0.1;
	% Local Parameter:   id =  Km1336, name = Km1336
	reaction_r_0154_Km1336=0.1;
	% Local Parameter:   id =  Km0028, name = Km0028
	reaction_r_0154_Km0028=0.1;
	% Local Parameter:   id =  Km1335, name = Km1335
	reaction_r_0154_Km1335=0.1;

	reaction_r_0154=compartment_cell*reaction_r_0154_Vmax*(x(76)*x(317)-x(5)*x(316)/reaction_r_0154_Keq)/(reaction_r_0154_Km0304*reaction_r_0154_Km1336)/((1+x(76)/reaction_r_0154_Km0304)*(1+x(317)/reaction_r_0154_Km1336)+(1+x(5)/reaction_r_0154_Km0028)*(1+x(316)/reaction_r_0154_Km1335)-1);

% Reaction: id = r_0166, name = 3-oxoacyl-[acyl-carrier-protein] synthase (n-C14:0)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0166_FLUX_VALUE=0.0107821425888488;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0166_Vmax=0.237207136954674;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0166_Keq=0.2;
	% Local Parameter:   id =  Km0789, name = Km0789
	reaction_r_0166_Km0789=0.1;
	% Local Parameter:   id =  Km1216, name = Km1216
	reaction_r_0166_Km1216=0.1;
	% Local Parameter:   id =  Km0304, name = Km0304
	reaction_r_0166_Km0304=0.1;
	% Local Parameter:   id =  Km0397, name = Km0397
	reaction_r_0166_Km0397=0.1;
	% Local Parameter:   id =  Km0543, name = Km0543
	reaction_r_0166_Km0543=0.1;

	reaction_r_0166=compartment_cell*reaction_r_0166_Vmax*(x(200)*x(285)-x(76)*x(126)*x(160)/reaction_r_0166_Keq)/(reaction_r_0166_Km0789*reaction_r_0166_Km1216)/((1+x(200)/reaction_r_0166_Km0789)*(1+x(285)/reaction_r_0166_Km1216)+(1+x(76)/reaction_r_0166_Km0304)*(1+x(126)/reaction_r_0166_Km0397)*(1+x(160)/reaction_r_0166_Km0543)-1);

% Reaction: id = r_0175, name = 3-phosphoshikimate 1-carboxyvinyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0175_FLUX_VALUE=0.0527963458177373;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0175_Vmax=0.739148841448322;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0175_Keq=2.0;
	% Local Parameter:   id =  Km1484, name = Km1484
	reaction_r_0175_Km1484=0.1;
	% Local Parameter:   id =  Km1574, name = Km1574
	reaction_r_0175_Km1574=0.1;
	% Local Parameter:   id =  Km0359, name = Km0359
	reaction_r_0175_Km0359=0.1;
	% Local Parameter:   id =  Km1430, name = Km1430
	reaction_r_0175_Km1430=0.1;

	reaction_r_0175=compartment_cell*reaction_r_0175_Vmax*(x(341)*x(362)-x(106)*x(336)/reaction_r_0175_Keq)/(reaction_r_0175_Km1484*reaction_r_0175_Km1574)/((1+x(341)/reaction_r_0175_Km1484)*(1+x(362)/reaction_r_0175_Km1574)+(1+x(106)/reaction_r_0175_Km0359)*(1+x(336)/reaction_r_0175_Km1430)-1);

% Reaction: id = r_0176, name = 4,5-dihydroxy-2,3-pentanedione cyclization (spontaneous)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0176_FLUX_VALUE=6.20554969142397E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0176_Vmax=3.72332981485438E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0176_Keq=2.0;
	% Local Parameter:   id =  Km0310, name = Km0310
	reaction_r_0176_Km0310=0.1;
	% Local Parameter:   id =  Km0004, name = Km0004
	reaction_r_0176_Km0004=0.1;

	reaction_r_0176=compartment_cell*reaction_r_0176_Vmax*(x(81)-x(2)/reaction_r_0176_Keq)/reaction_r_0176_Km0310/(1+x(81)/reaction_r_0176_Km0310+1+x(2)/reaction_r_0176_Km0004-1);

% Reaction: id = r_0178, name = 4-(cytidine 5'-diphospho)-2-C-methyl-D-erythritol kinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0178_FLUX_VALUE=3.30916477964549E-4;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0178_Vmax=0.00463283069150369;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0178_Keq=2.0;
	% Local Parameter:   id =  Km0312, name = Km0312
	reaction_r_0178_Km0312=0.1;
	% Local Parameter:   id =  Km0467, name = Km0467
	reaction_r_0178_Km0467=0.1;
	% Local Parameter:   id =  Km0237, name = Km0237
	reaction_r_0178_Km0237=0.1;
	% Local Parameter:   id =  Km0421, name = Km0421
	reaction_r_0178_Km0421=0.1;

	reaction_r_0178=compartment_cell*reaction_r_0178_Vmax*(x(83)*x(139)-x(53)*x(132)/reaction_r_0178_Keq)/(reaction_r_0178_Km0312*reaction_r_0178_Km0467)/((1+x(83)/reaction_r_0178_Km0312)*(1+x(139)/reaction_r_0178_Km0467)+(1+x(53)/reaction_r_0178_Km0237)*(1+x(132)/reaction_r_0178_Km0421)-1);

% Reaction: id = r_0179, name = 4-amino-2-methyl-5-phosphomethylpyrimidine synthetase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0179_FLUX_VALUE=3.08892317229363E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0179_Vmax=0.00117379080547158;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0179_Keq=0.02;
	% Local Parameter:   id =  Km0342, name = Km0342
	reaction_r_0179_Km0342=0.1;
	% Local Parameter:   id =  Km1333, name = Km1333
	reaction_r_0179_Km1333=0.1;
	% Local Parameter:   id =  Km0313, name = Km0313
	reaction_r_0179_Km0313=0.1;
	% Local Parameter:   id =  Km0867, name = Km0867
	reaction_r_0179_Km0867=0.1;
	% Local Parameter:   id =  Km1334, name = Km1334
	reaction_r_0179_Km1334=0.1;

	reaction_r_0179=compartment_cell*reaction_r_0179_Vmax*(x(98)*x(314)-x(84)*x(217)^2*x(315)/reaction_r_0179_Keq)/(reaction_r_0179_Km0342*reaction_r_0179_Km1333)/((1+x(98)/reaction_r_0179_Km0342)*(1+x(314)/reaction_r_0179_Km1333)+(1+x(84)/reaction_r_0179_Km0313)*(1+x(217)/reaction_r_0179_Km0867)^2*(1+x(315)/reaction_r_0179_Km1334)-1);

% Reaction: id = r_0181, name = 4-amino-4-deoxychorismate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0181_FLUX_VALUE=9.26676951688061E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0181_Vmax=0.00129734773236329;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0181_Keq=2.0;
	% Local Parameter:   id =  Km0526, name = Km0526
	reaction_r_0181_Km0526=0.1;
	% Local Parameter:   id =  Km1101, name = Km1101
	reaction_r_0181_Km1101=0.1;
	% Local Parameter:   id =  Km0316, name = Km0316
	reaction_r_0181_Km0316=0.1;
	% Local Parameter:   id =  Km1095, name = Km1095
	reaction_r_0181_Km1095=0.1;

	reaction_r_0181=compartment_cell*reaction_r_0181_Vmax*(x(154)*x(263)-x(85)*x(259)/reaction_r_0181_Keq)/(reaction_r_0181_Km0526*reaction_r_0181_Km1101)/((1+x(154)/reaction_r_0181_Km0526)*(1+x(263)/reaction_r_0181_Km1101)+(1+x(85)/reaction_r_0181_Km0316)*(1+x(259)/reaction_r_0181_Km1095)-1);

% Reaction: id = r_0182, name = 4-aminobenzoate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0182_FLUX_VALUE=9.26676951688061E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0182_Vmax=9.26676951688061E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0182_Keq=0.2;
	% Local Parameter:   id =  Km0316, name = Km0316
	reaction_r_0182_Km0316=0.1;
	% Local Parameter:   id =  Km0318, name = Km0318
	reaction_r_0182_Km0318=0.1;
	% Local Parameter:   id =  Km1531, name = Km1531
	reaction_r_0182_Km1531=0.1;

	reaction_r_0182=compartment_cell*reaction_r_0182_Vmax*(x(85)-x(86)*x(352)/reaction_r_0182_Keq)/reaction_r_0182_Km0316/(1+x(85)/reaction_r_0182_Km0316+(1+x(86)/reaction_r_0182_Km0318)*(1+x(352)/reaction_r_0182_Km1531)-1);

% Reaction: id = r_0186, name = 5'-deoxyadenosine nuclosidase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0186_FLUX_VALUE=3.11662651885034E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0186_Vmax=3.11662651885034E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0186_Keq=0.2;
	% Local Parameter:   id =  Km0333, name = Km0333
	reaction_r_0186_Km0333=0.1;
	% Local Parameter:   id =  Km0334, name = Km0334
	reaction_r_0186_Km0334=0.1;
	% Local Parameter:   id =  Km0405, name = Km0405
	reaction_r_0186_Km0405=0.1;

	reaction_r_0186=compartment_cell*reaction_r_0186_Vmax*(x(92)-x(93)*x(127)/reaction_r_0186_Keq)/reaction_r_0186_Km0333/(1+x(92)/reaction_r_0186_Km0333+(1+x(93)/reaction_r_0186_Km0334)*(1+x(127)/reaction_r_0186_Km0405)-1);

% Reaction: id = r_0211, name = 5,10-methylenetetrahydrofolate reductase (NADH)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0211_FLUX_VALUE=0.0213832438061183;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0211_Vmax=0.299365413285656;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0211_Keq=2.0;
	% Local Parameter:   id =  Km0336, name = Km0336
	reaction_r_0211_Km0336=0.1;
	% Local Parameter:   id =  Km1334, name = Km1334
	reaction_r_0211_Km1334=0.1;
	% Local Parameter:   id =  Km0354, name = Km0354
	reaction_r_0211_Km0354=0.1;
	% Local Parameter:   id =  Km1333, name = Km1333
	reaction_r_0211_Km1333=0.1;

	reaction_r_0211=compartment_cell*reaction_r_0211_Vmax*(x(95)*x(315)-x(105)*x(314)/reaction_r_0211_Keq)/(reaction_r_0211_Km0336*reaction_r_0211_Km1334)/((1+x(95)/reaction_r_0211_Km0336)*(1+x(315)/reaction_r_0211_Km1334)+(1+x(105)/reaction_r_0211_Km0354)*(1+x(314)/reaction_r_0211_Km1333)-1);

% Reaction: id = r_0212, name = 5-amino-6-(5-phosphoribosylamino)uracil reductase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0212_FLUX_VALUE=6.17784634458656E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0212_Vmax=8.64898488242119E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0212_Keq=2.0;
	% Local Parameter:   id =  Km0347, name = Km0347
	reaction_r_0212_Km0347=0.1;
	% Local Parameter:   id =  Km1336, name = Km1336
	reaction_r_0212_Km1336=0.1;
	% Local Parameter:   id =  Km0346, name = Km0346
	reaction_r_0212_Km0346=0.1;
	% Local Parameter:   id =  Km1335, name = Km1335
	reaction_r_0212_Km1335=0.1;

	reaction_r_0212=compartment_cell*reaction_r_0212_Vmax*(x(103)*x(317)-x(102)*x(316)/reaction_r_0212_Keq)/(reaction_r_0212_Km0347*reaction_r_0212_Km1336)/((1+x(103)/reaction_r_0212_Km0347)*(1+x(317)/reaction_r_0212_Km1336)+(1+x(102)/reaction_r_0212_Km0346)*(1+x(316)/reaction_r_0212_Km1335)-1);

% Reaction: id = r_0216, name = 6-hydroxymethyl-dihydropterin pyrophosphokinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0216_FLUX_VALUE=9.26676951688061E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0216_Vmax=0.00129734773236329;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0216_Keq=2.0;
	% Local Parameter:   id =  Km0367, name = Km0367
	reaction_r_0216_Km0367=0.1;
	% Local Parameter:   id =  Km0467, name = Km0467
	reaction_r_0216_Km0467=0.1;
	% Local Parameter:   id =  Km0368, name = Km0368
	reaction_r_0216_Km0368=0.1;
	% Local Parameter:   id =  Km0454, name = Km0454
	reaction_r_0216_Km0454=0.1;

	reaction_r_0216=compartment_cell*reaction_r_0216_Vmax*(x(111)*x(139)-x(112)*x(137)/reaction_r_0216_Keq)/(reaction_r_0216_Km0367*reaction_r_0216_Km0467)/((1+x(111)/reaction_r_0216_Km0367)*(1+x(139)/reaction_r_0216_Km0467)+(1+x(112)/reaction_r_0216_Km0368)*(1+x(137)/reaction_r_0216_Km0454)-1);

% Reaction: id = r_0217, name = 6-phosphogluconate dehydratase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0217_FLUX_VALUE=0.87986351299775;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0217_Vmax=5.2791810779865;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0217_Keq=2.0;
	% Local Parameter:   id =  Km0369, name = Km0369
	reaction_r_0217_Km0369=0.1;
	% Local Parameter:   id =  Km0201, name = Km0201
	reaction_r_0217_Km0201=0.1;

	reaction_r_0217=compartment_cell*reaction_r_0217_Vmax*(x(113)-x(43)/reaction_r_0217_Keq)/reaction_r_0217_Km0369/(1+x(113)/reaction_r_0217_Km0369+1+x(43)/reaction_r_0217_Km0201-1);

% Reaction: id = r_0218, name = 6-phosphogluconolactonase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0218_FLUX_VALUE=0.879863512997714;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0218_Vmax=5.27918107798628;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0218_Keq=2.0;
	% Local Parameter:   id =  Km0370, name = Km0370
	reaction_r_0218_Km0370=0.1;
	% Local Parameter:   id =  Km0369, name = Km0369
	reaction_r_0218_Km0369=0.1;

	reaction_r_0218=compartment_cell*reaction_r_0218_Vmax*(x(114)-x(113)/reaction_r_0218_Keq)/reaction_r_0218_Km0370/(1+x(114)/reaction_r_0218_Km0370+1+x(113)/reaction_r_0218_Km0369-1);

% Reaction: id = r_0222, name = 8-amino-7-oxononanoate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0222_FLUX_VALUE=2.77033467884759E-7;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0222_Vmax=6.0947362934647E-6;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0222_Keq=0.2;
	% Local Parameter:   id =  Km1041, name = Km1041
	reaction_r_0222_Km1041=0.1;
	% Local Parameter:   id =  Km1491, name = Km1491
	reaction_r_0222_Km1491=0.1;
	% Local Parameter:   id =  Km0376, name = Km0376
	reaction_r_0222_Km0376=0.1;
	% Local Parameter:   id =  Km0397, name = Km0397
	reaction_r_0222_Km0397=0.1;
	% Local Parameter:   id =  Km0543, name = Km0543
	reaction_r_0222_Km0543=0.1;

	reaction_r_0222=compartment_cell*reaction_r_0222_Vmax*(x(251)*x(342)-x(117)*x(126)*x(160)/reaction_r_0222_Keq)/(reaction_r_0222_Km1041*reaction_r_0222_Km1491)/((1+x(251)/reaction_r_0222_Km1041)*(1+x(342)/reaction_r_0222_Km1491)+(1+x(117)/reaction_r_0222_Km0376)*(1+x(126)/reaction_r_0222_Km0397)*(1+x(160)/reaction_r_0222_Km0543)-1);

% Reaction: id = r_0224, name = acetaldehyde dehydrogenase (acetylating)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0224_FLUX_VALUE=0.0414265806134143;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0224_Vmax=0.911384773495115;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0224_Keq=20.0;
	% Local Parameter:   id =  Km0381, name = Km0381
	reaction_r_0224_Km0381=0.1;
	% Local Parameter:   id =  Km0555, name = Km0555
	reaction_r_0224_Km0555=0.1;
	% Local Parameter:   id =  Km1333, name = Km1333
	reaction_r_0224_Km1333=0.1;
	% Local Parameter:   id =  Km0395, name = Km0395
	reaction_r_0224_Km0395=0.1;
	% Local Parameter:   id =  Km1334, name = Km1334
	reaction_r_0224_Km1334=0.1;

	reaction_r_0224=compartment_cell*reaction_r_0224_Vmax*(x(121)*x(162)*x(314)-x(125)*x(315)/reaction_r_0224_Keq)/(reaction_r_0224_Km0381*reaction_r_0224_Km0555*reaction_r_0224_Km1333)/((1+x(121)/reaction_r_0224_Km0381)*(1+x(162)/reaction_r_0224_Km0555)*(1+x(314)/reaction_r_0224_Km1333)+(1+x(125)/reaction_r_0224_Km0395)*(1+x(315)/reaction_r_0224_Km1334)-1);

% Reaction: id = r_0225, name = acetate kinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0225_FLUX_VALUE=0.0807006804356794;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0225_Vmax=1.12980952609951;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0225_Keq=2.0;
	% Local Parameter:   id =  Km0384, name = Km0384
	reaction_r_0225_Km0384=0.1;
	% Local Parameter:   id =  Km0467, name = Km0467
	reaction_r_0225_Km0467=0.1;
	% Local Parameter:   id =  Km0393, name = Km0393
	reaction_r_0225_Km0393=0.1;
	% Local Parameter:   id =  Km0421, name = Km0421
	reaction_r_0225_Km0421=0.1;

	reaction_r_0225=compartment_cell*reaction_r_0225_Vmax*(x(122)*x(139)-x(124)*x(132)/reaction_r_0225_Keq)/(reaction_r_0225_Km0384*reaction_r_0225_Km0467)/((1+x(122)/reaction_r_0225_Km0384)*(1+x(139)/reaction_r_0225_Km0467)+(1+x(124)/reaction_r_0225_Km0393)*(1+x(132)/reaction_r_0225_Km0421)-1);

% Reaction: id = r_0227, name = acetolactate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0227_FLUX_VALUE=0.121101856295072;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0227_Vmax=1.69542598813101;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0227_Keq=2.0;
	% Local Parameter:   id =  Km1531, name = Km1531
	reaction_r_0227_Km1531=0.1;
	% Local Parameter:   id =  Km0042, name = Km0042
	reaction_r_0227_Km0042=0.1;
	% Local Parameter:   id =  Km0543, name = Km0543
	reaction_r_0227_Km0543=0.1;

	reaction_r_0227=compartment_cell*reaction_r_0227_Vmax*(x(352)^2-x(11)*x(160)/reaction_r_0227_Keq)/reaction_r_0227_Km1531^2/((1+x(352)/reaction_r_0227_Km1531)^2+(1+x(11)/reaction_r_0227_Km0042)*(1+x(160)/reaction_r_0227_Km0543)-1);

% Reaction: id = r_0230, name = acetyl-CoA C-acetyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0230_FLUX_VALUE=0.0492981056959303;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0230_Vmax=0.690173479743024;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0230_Keq=2.0;
	% Local Parameter:   id =  Km0395, name = Km0395
	reaction_r_0230_Km0395=0.1;
	% Local Parameter:   id =  Km0391, name = Km0391
	reaction_r_0230_Km0391=0.1;
	% Local Parameter:   id =  Km0555, name = Km0555
	reaction_r_0230_Km0555=0.1;

	reaction_r_0230=compartment_cell*reaction_r_0230_Vmax*(x(125)^2-x(123)*x(162)/reaction_r_0230_Keq)/reaction_r_0230_Km0395^2/((1+x(125)/reaction_r_0230_Km0395)^2+(1+x(123)/reaction_r_0230_Km0391)*(1+x(162)/reaction_r_0230_Km0555)-1);

% Reaction: id = r_0231, name = acetyl-CoA C-acyltransferase (butanoyl-CoA) (r)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0231_FLUX_VALUE=0.0492981056959303;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0231_Vmax=0.690173479743024;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0231_Keq=2.0;
	% Local Parameter:   id =  Km0395, name = Km0395
	reaction_r_0231_Km0395=0.1;
	% Local Parameter:   id =  Km0488, name = Km0488
	reaction_r_0231_Km0488=0.1;
	% Local Parameter:   id =  Km0299, name = Km0299
	reaction_r_0231_Km0299=0.1;
	% Local Parameter:   id =  Km0555, name = Km0555
	reaction_r_0231_Km0555=0.1;

	reaction_r_0231=compartment_cell*reaction_r_0231_Vmax*(x(125)*x(146)-x(74)*x(162)/reaction_r_0231_Keq)/(reaction_r_0231_Km0395*reaction_r_0231_Km0488)/((1+x(125)/reaction_r_0231_Km0395)*(1+x(146)/reaction_r_0231_Km0488)+(1+x(74)/reaction_r_0231_Km0299)*(1+x(162)/reaction_r_0231_Km0555)-1);

% Reaction: id = r_0232, name = acetyl-CoA C-acyltransferase (decanoyl-CoA) (r)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0232_FLUX_VALUE=0.0492981056959429;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0232_Vmax=0.690173479743201;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0232_Keq=2.0;
	% Local Parameter:   id =  Km0395, name = Km0395
	reaction_r_0232_Km0395=0.1;
	% Local Parameter:   id =  Km0737, name = Km0737
	reaction_r_0232_Km0737=0.1;
	% Local Parameter:   id =  Km0295, name = Km0295
	reaction_r_0232_Km0295=0.1;
	% Local Parameter:   id =  Km0555, name = Km0555
	reaction_r_0232_Km0555=0.1;

	reaction_r_0232=compartment_cell*reaction_r_0232_Vmax*(x(125)*x(187)-x(72)*x(162)/reaction_r_0232_Keq)/(reaction_r_0232_Km0395*reaction_r_0232_Km0737)/((1+x(125)/reaction_r_0232_Km0395)*(1+x(187)/reaction_r_0232_Km0737)+(1+x(72)/reaction_r_0232_Km0295)*(1+x(162)/reaction_r_0232_Km0555)-1);

% Reaction: id = r_0233, name = acetyl-CoA C-acyltransferase (dodecanoyl-CoA) (r)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0233_FLUX_VALUE=0.0385159631070598;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0233_Vmax=0.539223483498837;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0233_Keq=2.0;
	% Local Parameter:   id =  Km0395, name = Km0395
	reaction_r_0233_Km0395=0.1;
	% Local Parameter:   id =  Km0790, name = Km0790
	reaction_r_0233_Km0790=0.1;
	% Local Parameter:   id =  Km0305, name = Km0305
	reaction_r_0233_Km0305=0.1;
	% Local Parameter:   id =  Km0555, name = Km0555
	reaction_r_0233_Km0555=0.1;

	reaction_r_0233=compartment_cell*reaction_r_0233_Vmax*(x(125)*x(201)-x(77)*x(162)/reaction_r_0233_Keq)/(reaction_r_0233_Km0395*reaction_r_0233_Km0790)/((1+x(125)/reaction_r_0233_Km0395)*(1+x(201)/reaction_r_0233_Km0790)+(1+x(77)/reaction_r_0233_Km0305)*(1+x(162)/reaction_r_0233_Km0555)-1);

% Reaction: id = r_0234, name = acetyl-CoA C-acyltransferase (hexanoyl-CoA) (r)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0234_FLUX_VALUE=0.0492981056959303;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0234_Vmax=0.690173479743024;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0234_Keq=2.0;
	% Local Parameter:   id =  Km0395, name = Km0395
	reaction_r_0234_Km0395=0.1;
	% Local Parameter:   id =  Km0984, name = Km0984
	reaction_r_0234_Km0984=0.1;
	% Local Parameter:   id =  Km0303, name = Km0303
	reaction_r_0234_Km0303=0.1;
	% Local Parameter:   id =  Km0555, name = Km0555
	reaction_r_0234_Km0555=0.1;

	reaction_r_0234=compartment_cell*reaction_r_0234_Vmax*(x(125)*x(233)-x(75)*x(162)/reaction_r_0234_Keq)/(reaction_r_0234_Km0395*reaction_r_0234_Km0984)/((1+x(125)/reaction_r_0234_Km0395)*(1+x(233)/reaction_r_0234_Km0984)+(1+x(75)/reaction_r_0234_Km0303)*(1+x(162)/reaction_r_0234_Km0555)-1);

% Reaction: id = r_0235, name = acetyl-CoA C-acyltransferase (octanoyl-CoA) (r)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0235_FLUX_VALUE=0.0492981056959448;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0235_Vmax=0.690173479743227;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0235_Keq=2.0;
	% Local Parameter:   id =  Km0395, name = Km0395
	reaction_r_0235_Km0395=0.1;
	% Local Parameter:   id =  Km1390, name = Km1390
	reaction_r_0235_Km1390=0.1;
	% Local Parameter:   id =  Km0293, name = Km0293
	reaction_r_0235_Km0293=0.1;
	% Local Parameter:   id =  Km0555, name = Km0555
	reaction_r_0235_Km0555=0.1;

	reaction_r_0235=compartment_cell*reaction_r_0235_Vmax*(x(125)*x(325)-x(71)*x(162)/reaction_r_0235_Keq)/(reaction_r_0235_Km0395*reaction_r_0235_Km1390)/((1+x(125)/reaction_r_0235_Km0395)*(1+x(325)/reaction_r_0235_Km1390)+(1+x(71)/reaction_r_0235_Km0293)*(1+x(162)/reaction_r_0235_Km0555)-1);

% Reaction: id = r_0236, name = acetyl-CoA C-acyltransferase (tetradecanoyl-CoA) (r)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0236_FLUX_VALUE=0.0385159631070916;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0236_Vmax=0.539223483499282;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0236_Keq=2.0;
	% Local Parameter:   id =  Km0395, name = Km0395
	reaction_r_0236_Km0395=0.1;
	% Local Parameter:   id =  Km1632, name = Km1632
	reaction_r_0236_Km1632=0.1;
	% Local Parameter:   id =  Km0297, name = Km0297
	reaction_r_0236_Km0297=0.1;
	% Local Parameter:   id =  Km0555, name = Km0555
	reaction_r_0236_Km0555=0.1;

	reaction_r_0236=compartment_cell*reaction_r_0236_Vmax*(x(125)*x(369)-x(73)*x(162)/reaction_r_0236_Keq)/(reaction_r_0236_Km0395*reaction_r_0236_Km1632)/((1+x(125)/reaction_r_0236_Km0395)*(1+x(369)/reaction_r_0236_Km1632)+(1+x(73)/reaction_r_0236_Km0297)*(1+x(162)/reaction_r_0236_Km0555)-1);

% Reaction: id = r_0237, name = acetyl-CoA carboxylase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0237_FLUX_VALUE=0.0107829736892899;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0237_Vmax=0.323489210678697;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0237_Keq=2.0;
	% Local Parameter:   id =  Km0395, name = Km0395
	reaction_r_0237_Km0395=0.1;
	% Local Parameter:   id =  Km0467, name = Km0467
	reaction_r_0237_Km0467=0.1;
	% Local Parameter:   id =  Km0474, name = Km0474
	reaction_r_0237_Km0474=0.1;
	% Local Parameter:   id =  Km0421, name = Km0421
	reaction_r_0237_Km0421=0.1;
	% Local Parameter:   id =  Km1217, name = Km1217
	reaction_r_0237_Km1217=0.1;
	% Local Parameter:   id =  Km1430, name = Km1430
	reaction_r_0237_Km1430=0.1;

	reaction_r_0237=compartment_cell*reaction_r_0237_Vmax*(x(125)*x(139)*x(141)-x(132)*x(286)*x(336)/reaction_r_0237_Keq)/(reaction_r_0237_Km0395*reaction_r_0237_Km0467*reaction_r_0237_Km0474)/((1+x(125)/reaction_r_0237_Km0395)*(1+x(139)/reaction_r_0237_Km0467)*(1+x(141)/reaction_r_0237_Km0474)+(1+x(132)/reaction_r_0237_Km0421)*(1+x(286)/reaction_r_0237_Km1217)*(1+x(336)/reaction_r_0237_Km1430)-1);

% Reaction: id = r_0243, name = acetylglutamate kinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0243_FLUX_VALUE=0.0409732499715063;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0243_Vmax=0.573625499601088;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0243_Keq=2.0;
	% Local Parameter:   id =  Km1302, name = Km1302
	reaction_r_0243_Km1302=0.1;
	% Local Parameter:   id =  Km0467, name = Km0467
	reaction_r_0243_Km0467=0.1;
	% Local Parameter:   id =  Km1304, name = Km1304
	reaction_r_0243_Km1304=0.1;
	% Local Parameter:   id =  Km0421, name = Km0421
	reaction_r_0243_Km0421=0.1;

	reaction_r_0243=compartment_cell*reaction_r_0243_Vmax*(x(303)*x(139)-x(305)*x(132)/reaction_r_0243_Keq)/(reaction_r_0243_Km1302*reaction_r_0243_Km0467)/((1+x(303)/reaction_r_0243_Km1302)*(1+x(139)/reaction_r_0243_Km0467)+(1+x(305)/reaction_r_0243_Km1304)*(1+x(132)/reaction_r_0243_Km0421)-1);

% Reaction: id = r_0244, name = acetylornithine deacetylase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0244_FLUX_VALUE=0.040973249971501;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0244_Vmax=0.40973249971501;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0244_Keq=0.2;
	% Local Parameter:   id =  Km1321, name = Km1321
	reaction_r_0244_Km1321=0.1;
	% Local Parameter:   id =  Km0384, name = Km0384
	reaction_r_0244_Km0384=0.1;
	% Local Parameter:   id =  Km1391, name = Km1391
	reaction_r_0244_Km1391=0.1;

	reaction_r_0244=compartment_cell*reaction_r_0244_Vmax*(x(310)-x(122)*x(326)/reaction_r_0244_Keq)/reaction_r_0244_Km1321/(1+x(310)/reaction_r_0244_Km1321+(1+x(122)/reaction_r_0244_Km0384)*(1+x(326)/reaction_r_0244_Km1391)-1);

% Reaction: id = r_0245, name = acetylornithine transaminase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0245_FLUX_VALUE=0.040973249971501;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0245_Vmax=0.573625499601014;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0245_Keq=2.0;
	% Local Parameter:   id =  Km1303, name = Km1303
	reaction_r_0245_Km1303=0.1;
	% Local Parameter:   id =  Km1095, name = Km1095
	reaction_r_0245_Km1095=0.1;
	% Local Parameter:   id =  Km1321, name = Km1321
	reaction_r_0245_Km1321=0.1;
	% Local Parameter:   id =  Km0233, name = Km0233
	reaction_r_0245_Km0233=0.1;

	reaction_r_0245=compartment_cell*reaction_r_0245_Vmax*(x(304)*x(259)-x(310)*x(52)/reaction_r_0245_Keq)/(reaction_r_0245_Km1303*reaction_r_0245_Km1095)/((1+x(304)/reaction_r_0245_Km1303)*(1+x(259)/reaction_r_0245_Km1095)+(1+x(310)/reaction_r_0245_Km1321)*(1+x(52)/reaction_r_0245_Km0233)-1);

% Reaction: id = r_0246, name = aconitase (half-reaction A, Citrate hydro-lyase)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0246_FLUX_VALUE=0.148949399052035;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0246_Vmax=0.89369639431221;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0246_Keq=2.0;
	% Local Parameter:   id =  Km0536, name = Km0536
	reaction_r_0246_Km0536=0.1;
	% Local Parameter:   id =  Km0530, name = Km0530
	reaction_r_0246_Km0530=0.1;

	reaction_r_0246=compartment_cell*reaction_r_0246_Vmax*(x(157)-x(155)/reaction_r_0246_Keq)/reaction_r_0246_Km0536/(1+x(157)/reaction_r_0246_Km0536+1+x(155)/reaction_r_0246_Km0530-1);

% Reaction: id = r_0247, name = aconitase (half-reaction B, Isocitrate hydro-lyase)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0247_FLUX_VALUE=0.148949399052035;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0247_Vmax=0.89369639431221;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0247_Keq=2.0;
	% Local Parameter:   id =  Km0530, name = Km0530
	reaction_r_0247_Km0530=0.1;
	% Local Parameter:   id =  Km1027, name = Km1027
	reaction_r_0247_Km1027=0.1;

	reaction_r_0247=compartment_cell*reaction_r_0247_Vmax*(x(155)-x(246)/reaction_r_0247_Keq)/reaction_r_0247_Km0530/(1+x(155)/reaction_r_0247_Km0530+1+x(246)/reaction_r_0247_Km1027-1);

% Reaction: id = r_0257, name = acyl-[acyl-carrier-protein] synthetase  (n-C12:0)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0257_FLUX_VALUE=0.0107821425888425;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0257_Vmax=0.323464277665275;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0257_Keq=2.0;
	% Local Parameter:   id =  Km0397, name = Km0397
	reaction_r_0257_Km0397=0.1;
	% Local Parameter:   id =  Km0467, name = Km0467
	reaction_r_0257_Km0467=0.1;
	% Local Parameter:   id =  Km0785, name = Km0785
	reaction_r_0257_Km0785=0.1;
	% Local Parameter:   id =  Km0454, name = Km0454
	reaction_r_0257_Km0454=0.1;
	% Local Parameter:   id =  Km0789, name = Km0789
	reaction_r_0257_Km0789=0.1;
	% Local Parameter:   id =  Km0783, name = Km0783
	reaction_r_0257_Km0783=0.1;

	reaction_r_0257=compartment_cell*reaction_r_0257_Vmax*(x(126)*x(139)*x(199)-x(137)*x(200)*x(198)/reaction_r_0257_Keq)/(reaction_r_0257_Km0397*reaction_r_0257_Km0467*reaction_r_0257_Km0785)/((1+x(126)/reaction_r_0257_Km0397)*(1+x(139)/reaction_r_0257_Km0467)*(1+x(199)/reaction_r_0257_Km0785)+(1+x(137)/reaction_r_0257_Km0454)*(1+x(200)/reaction_r_0257_Km0789)*(1+x(198)/reaction_r_0257_Km0783)-1);

% Reaction: id = r_0259, name = acyl-[acyl-carrier-protein] synthetase  (n-C16:0)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0259_FLUX_VALUE=0.0176802759511862;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0259_Vmax=0.530408278535586;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0259_Keq=2.0;
	% Local Parameter:   id =  Km0397, name = Km0397
	reaction_r_0259_Km0397=0.1;
	% Local Parameter:   id =  Km0467, name = Km0467
	reaction_r_0259_Km0467=0.1;
	% Local Parameter:   id =  Km0971, name = Km0971
	reaction_r_0259_Km0971=0.1;
	% Local Parameter:   id =  Km0454, name = Km0454
	reaction_r_0259_Km0454=0.1;
	% Local Parameter:   id =  Km1411, name = Km1411
	reaction_r_0259_Km1411=0.1;
	% Local Parameter:   id =  Km0783, name = Km0783
	reaction_r_0259_Km0783=0.1;

	reaction_r_0259=compartment_cell*reaction_r_0259_Vmax*(x(126)*x(139)*x(230)-x(137)*x(332)*x(198)/reaction_r_0259_Keq)/(reaction_r_0259_Km0397*reaction_r_0259_Km0467*reaction_r_0259_Km0971)/((1+x(126)/reaction_r_0259_Km0397)*(1+x(139)/reaction_r_0259_Km0467)*(1+x(230)/reaction_r_0259_Km0971)+(1+x(137)/reaction_r_0259_Km0454)*(1+x(332)/reaction_r_0259_Km1411)*(1+x(198)/reaction_r_0259_Km0783)-1);

% Reaction: id = r_0260, name = acyl-[acyl-carrier-protein] synthetase  (n-C16:1)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0260_FLUX_VALUE=0.0208356871559117;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0260_Vmax=0.625070614677351;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0260_Keq=2.0;
	% Local Parameter:   id =  Km0397, name = Km0397
	reaction_r_0260_Km0397=0.1;
	% Local Parameter:   id =  Km0467, name = Km0467
	reaction_r_0260_Km0467=0.1;
	% Local Parameter:   id =  Km0976, name = Km0976
	reaction_r_0260_Km0976=0.1;
	% Local Parameter:   id =  Km0454, name = Km0454
	reaction_r_0260_Km0454=0.1;
	% Local Parameter:   id =  Km0533, name = Km0533
	reaction_r_0260_Km0533=0.1;
	% Local Parameter:   id =  Km0783, name = Km0783
	reaction_r_0260_Km0783=0.1;

	reaction_r_0260=compartment_cell*reaction_r_0260_Vmax*(x(126)*x(139)*x(231)-x(137)*x(156)*x(198)/reaction_r_0260_Keq)/(reaction_r_0260_Km0397*reaction_r_0260_Km0467*reaction_r_0260_Km0976)/((1+x(126)/reaction_r_0260_Km0397)*(1+x(139)/reaction_r_0260_Km0467)*(1+x(231)/reaction_r_0260_Km0976)+(1+x(137)/reaction_r_0260_Km0454)*(1+x(156)/reaction_r_0260_Km0533)*(1+x(198)/reaction_r_0260_Km0783)-1);

% Reaction: id = r_0266, name = acyl-CoA dehydrogenase (butanoyl-CoA)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0266_FLUX_VALUE=0.0492981056959303;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0266_Vmax=0.690173479743024;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0266_Keq=2.0;
	% Local Parameter:   id =  Km0574, name = Km0574
	reaction_r_0266_Km0574=0.1;
	% Local Parameter:   id =  Km0860, name = Km0860
	reaction_r_0266_Km0860=0.1;
	% Local Parameter:   id =  Km0488, name = Km0488
	reaction_r_0266_Km0488=0.1;
	% Local Parameter:   id =  Km0859, name = Km0859
	reaction_r_0266_Km0859=0.1;

	reaction_r_0266=compartment_cell*reaction_r_0266_Vmax*(x(164)*x(213)-x(146)*x(212)/reaction_r_0266_Keq)/(reaction_r_0266_Km0574*reaction_r_0266_Km0860)/((1+x(164)/reaction_r_0266_Km0574)*(1+x(213)/reaction_r_0266_Km0860)+(1+x(146)/reaction_r_0266_Km0488)*(1+x(212)/reaction_r_0266_Km0859)-1);

% Reaction: id = r_0267, name = acyl-CoA dehydrogenase (decanoyl-CoA)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0267_FLUX_VALUE=0.0492981056959448;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0267_Vmax=0.690173479743227;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0267_Keq=2.0;
	% Local Parameter:   id =  Km1668, name = Km1668
	reaction_r_0267_Km1668=0.1;
	% Local Parameter:   id =  Km0860, name = Km0860
	reaction_r_0267_Km0860=0.1;
	% Local Parameter:   id =  Km0737, name = Km0737
	reaction_r_0267_Km0737=0.1;
	% Local Parameter:   id =  Km0859, name = Km0859
	reaction_r_0267_Km0859=0.1;

	reaction_r_0267=compartment_cell*reaction_r_0267_Vmax*(x(372)*x(213)-x(187)*x(212)/reaction_r_0267_Keq)/(reaction_r_0267_Km1668*reaction_r_0267_Km0860)/((1+x(372)/reaction_r_0267_Km1668)*(1+x(213)/reaction_r_0267_Km0860)+(1+x(187)/reaction_r_0267_Km0737)*(1+x(212)/reaction_r_0267_Km0859)-1);

% Reaction: id = r_0268, name = acyl-CoA dehydrogenase (dodecanoyl-CoA)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0268_FLUX_VALUE=0.0492981056959429;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0268_Vmax=0.690173479743201;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0268_Keq=2.0;
	% Local Parameter:   id =  Km1670, name = Km1670
	reaction_r_0268_Km1670=0.1;
	% Local Parameter:   id =  Km0860, name = Km0860
	reaction_r_0268_Km0860=0.1;
	% Local Parameter:   id =  Km0790, name = Km0790
	reaction_r_0268_Km0790=0.1;
	% Local Parameter:   id =  Km0859, name = Km0859
	reaction_r_0268_Km0859=0.1;

	reaction_r_0268=compartment_cell*reaction_r_0268_Vmax*(x(373)*x(213)-x(201)*x(212)/reaction_r_0268_Keq)/(reaction_r_0268_Km1670*reaction_r_0268_Km0860)/((1+x(373)/reaction_r_0268_Km1670)*(1+x(213)/reaction_r_0268_Km0860)+(1+x(201)/reaction_r_0268_Km0790)*(1+x(212)/reaction_r_0268_Km0859)-1);

% Reaction: id = r_0269, name = acyl-CoA dehydrogenase (hexadecanoyl-CoA)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0269_FLUX_VALUE=0.0176802759511649;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0269_Vmax=0.247523863316309;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0269_Keq=2.0;
	% Local Parameter:   id =  Km0860, name = Km0860
	reaction_r_0269_Km0860=0.1;
	% Local Parameter:   id =  Km1674, name = Km1674
	reaction_r_0269_Km1674=0.1;
	% Local Parameter:   id =  Km0859, name = Km0859
	reaction_r_0269_Km0859=0.1;
	% Local Parameter:   id =  Km1412, name = Km1412
	reaction_r_0269_Km1412=0.1;

	reaction_r_0269=compartment_cell*reaction_r_0269_Vmax*(x(213)*x(375)-x(212)*x(333)/reaction_r_0269_Keq)/(reaction_r_0269_Km0860*reaction_r_0269_Km1674)/((1+x(213)/reaction_r_0269_Km0860)*(1+x(375)/reaction_r_0269_Km1674)+(1+x(212)/reaction_r_0269_Km0859)*(1+x(333)/reaction_r_0269_Km1412)-1);

% Reaction: id = r_0270, name = acyl-CoA dehydrogenase (hexanoyl-CoA)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0270_FLUX_VALUE=0.0492981056959303;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0270_Vmax=0.690173479743024;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0270_Keq=2.0;
	% Local Parameter:   id =  Km0860, name = Km0860
	reaction_r_0270_Km0860=0.1;
	% Local Parameter:   id =  Km1672, name = Km1672
	reaction_r_0270_Km1672=0.1;
	% Local Parameter:   id =  Km0859, name = Km0859
	reaction_r_0270_Km0859=0.1;
	% Local Parameter:   id =  Km0984, name = Km0984
	reaction_r_0270_Km0984=0.1;

	reaction_r_0270=compartment_cell*reaction_r_0270_Vmax*(x(213)*x(374)-x(212)*x(233)/reaction_r_0270_Keq)/(reaction_r_0270_Km0860*reaction_r_0270_Km1672)/((1+x(213)/reaction_r_0270_Km0860)*(1+x(374)/reaction_r_0270_Km1672)+(1+x(212)/reaction_r_0270_Km0859)*(1+x(233)/reaction_r_0270_Km0984)-1);

% Reaction: id = r_0272, name = acyl-CoA dehydrogenase (octanoyl-CoA)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0272_FLUX_VALUE=0.0492981056959303;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0272_Vmax=0.690173479743024;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0272_Keq=2.0;
	% Local Parameter:   id =  Km0860, name = Km0860
	reaction_r_0272_Km0860=0.1;
	% Local Parameter:   id =  Km1676, name = Km1676
	reaction_r_0272_Km1676=0.1;
	% Local Parameter:   id =  Km0859, name = Km0859
	reaction_r_0272_Km0859=0.1;
	% Local Parameter:   id =  Km1390, name = Km1390
	reaction_r_0272_Km1390=0.1;

	reaction_r_0272=compartment_cell*reaction_r_0272_Vmax*(x(213)*x(376)-x(212)*x(325)/reaction_r_0272_Keq)/(reaction_r_0272_Km0860*reaction_r_0272_Km1676)/((1+x(213)/reaction_r_0272_Km0860)*(1+x(376)/reaction_r_0272_Km1676)+(1+x(212)/reaction_r_0272_Km0859)*(1+x(325)/reaction_r_0272_Km1390)-1);

% Reaction: id = r_0273, name = acyl-CoA dehydrogenase (tetradecanoyl-CoA)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0273_FLUX_VALUE=0.0385159631070833;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0273_Vmax=0.539223483499166;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0273_Keq=2.0;
	% Local Parameter:   id =  Km0860, name = Km0860
	reaction_r_0273_Km0860=0.1;
	% Local Parameter:   id =  Km1680, name = Km1680
	reaction_r_0273_Km1680=0.1;
	% Local Parameter:   id =  Km0859, name = Km0859
	reaction_r_0273_Km0859=0.1;
	% Local Parameter:   id =  Km1632, name = Km1632
	reaction_r_0273_Km1632=0.1;

	reaction_r_0273=compartment_cell*reaction_r_0273_Vmax*(x(213)*x(377)-x(212)*x(369)/reaction_r_0273_Keq)/(reaction_r_0273_Km0860*reaction_r_0273_Km1680)/((1+x(213)/reaction_r_0273_Km0860)*(1+x(377)/reaction_r_0273_Km1680)+(1+x(212)/reaction_r_0273_Km0859)*(1+x(369)/reaction_r_0273_Km1632)-1);

% Reaction: id = r_0292, name = adenosine kinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0292_FLUX_VALUE=9.32217621027432E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0292_Vmax=0.0013051046694384;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0292_Keq=2.0;
	% Local Parameter:   id =  Km0408, name = Km0408
	reaction_r_0292_Km0408=0.1;
	% Local Parameter:   id =  Km0467, name = Km0467
	reaction_r_0292_Km0467=0.1;
	% Local Parameter:   id =  Km0421, name = Km0421
	reaction_r_0292_Km0421=0.1;
	% Local Parameter:   id =  Km0454, name = Km0454
	reaction_r_0292_Km0454=0.1;

	reaction_r_0292=compartment_cell*reaction_r_0292_Vmax*(x(128)*x(139)-x(132)*x(137)/reaction_r_0292_Keq)/(reaction_r_0292_Km0408*reaction_r_0292_Km0467)/((1+x(128)/reaction_r_0292_Km0408)*(1+x(139)/reaction_r_0292_Km0467)+(1+x(132)/reaction_r_0292_Km0421)*(1+x(137)/reaction_r_0292_Km0454)-1);

% Reaction: id = r_0297, name = adenosylmethionine-8-amino-7-oxononanoate transaminase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0297_FLUX_VALUE=2.77033467884759E-7;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0297_Vmax=3.87846855038663E-6;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0297_Keq=2.0;
	% Local Parameter:   id =  Km0376, name = Km0376
	reaction_r_0297_Km0376=0.1;
	% Local Parameter:   id =  Km1552, name = Km1552
	reaction_r_0297_Km1552=0.1;
	% Local Parameter:   id =  Km1550, name = Km1550
	reaction_r_0297_Km1550=0.1;
	% Local Parameter:   id =  Km0371, name = Km0371
	reaction_r_0297_Km0371=0.1;

	reaction_r_0297=compartment_cell*reaction_r_0297_Vmax*(x(117)*x(358)-x(356)*x(115)/reaction_r_0297_Keq)/(reaction_r_0297_Km0376*reaction_r_0297_Km1552)/((1+x(117)/reaction_r_0297_Km0376)*(1+x(358)/reaction_r_0297_Km1552)+(1+x(356)/reaction_r_0297_Km1550)*(1+x(115)/reaction_r_0297_Km0371)-1);

% Reaction: id = r_0301, name = adenylate kinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0301_FLUX_VALUE=0.362277497683991;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0301_Vmax=5.07188496757587;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0301_Keq=2.0;
	% Local Parameter:   id =  Km0454, name = Km0454
	reaction_r_0301_Km0454=0.1;
	% Local Parameter:   id =  Km0467, name = Km0467
	reaction_r_0301_Km0467=0.1;
	% Local Parameter:   id =  Km0421, name = Km0421
	reaction_r_0301_Km0421=0.1;

	reaction_r_0301=compartment_cell*reaction_r_0301_Vmax*(x(137)*x(139)-x(132)^2/reaction_r_0301_Keq)/(reaction_r_0301_Km0454*reaction_r_0301_Km0467)/((1+x(137)/reaction_r_0301_Km0454)*(1+x(139)/reaction_r_0301_Km0467)+(1+x(132)/reaction_r_0301_Km0421)^2-1);

% Reaction: id = r_0302, name = adenylosuccinate lyase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0302_FLUX_VALUE=0.0613899240064973;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0302_Vmax=0.613899240064973;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0302_Keq=0.2;
	% Local Parameter:   id =  Km0040, name = Km0040
	reaction_r_0302_Km0040=0.1;
	% Local Parameter:   id =  Km0343, name = Km0343
	reaction_r_0302_Km0343=0.1;
	% Local Parameter:   id =  Km0875, name = Km0875
	reaction_r_0302_Km0875=0.1;

	reaction_r_0302=compartment_cell*reaction_r_0302_Vmax*(x(9)-x(99)*x(218)/reaction_r_0302_Keq)/reaction_r_0302_Km0040/(1+x(9)/reaction_r_0302_Km0040+(1+x(99)/reaction_r_0302_Km0343)*(1+x(218)/reaction_r_0302_Km0875)-1);

% Reaction: id = r_0303, name = adenylosuccinate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0303_FLUX_VALUE=0.0407532853976299;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0303_Vmax=1.2225985619289;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0303_Keq=2.0;
	% Local Parameter:   id =  Km1072, name = Km1072
	reaction_r_0303_Km1072=0.1;
	% Local Parameter:   id =  Km0945, name = Km0945
	reaction_r_0303_Km0945=0.1;
	% Local Parameter:   id =  Km1006, name = Km1006
	reaction_r_0303_Km1006=0.1;
	% Local Parameter:   id =  Km1327, name = Km1327
	reaction_r_0303_Km1327=0.1;
	% Local Parameter:   id =  Km0896, name = Km0896
	reaction_r_0303_Km0896=0.1;
	% Local Parameter:   id =  Km1430, name = Km1430
	reaction_r_0303_Km1430=0.1;

	reaction_r_0303=compartment_cell*reaction_r_0303_Vmax*(x(254)*x(229)*x(238)-x(312)*x(219)*x(336)/reaction_r_0303_Keq)/(reaction_r_0303_Km1072*reaction_r_0303_Km0945*reaction_r_0303_Km1006)/((1+x(254)/reaction_r_0303_Km1072)*(1+x(229)/reaction_r_0303_Km0945)*(1+x(238)/reaction_r_0303_Km1006)+(1+x(312)/reaction_r_0303_Km1327)*(1+x(219)/reaction_r_0303_Km0896)*(1+x(336)/reaction_r_0303_Km1430)-1);

% Reaction: id = r_0304, name = adenylsuccinate lyase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0304_FLUX_VALUE=0.0407532853976299;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0304_Vmax=0.407532853976299;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0304_Keq=0.2;
	% Local Parameter:   id =  Km1327, name = Km1327
	reaction_r_0304_Km1327=0.1;
	% Local Parameter:   id =  Km0454, name = Km0454
	reaction_r_0304_Km0454=0.1;
	% Local Parameter:   id =  Km0875, name = Km0875
	reaction_r_0304_Km0875=0.1;

	reaction_r_0304=compartment_cell*reaction_r_0304_Vmax*(x(312)-x(137)*x(218)/reaction_r_0304_Keq)/reaction_r_0304_Km1327/(1+x(312)/reaction_r_0304_Km1327+(1+x(137)/reaction_r_0304_Km0454)*(1+x(218)/reaction_r_0304_Km0875)-1);

% Reaction: id = r_0305, name = adenylyl-sulfate kinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0305_FLUX_VALUE=0.0343363591697952;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0305_Vmax=0.480709028377133;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0305_Keq=2.0;
	% Local Parameter:   id =  Km0412, name = Km0412
	reaction_r_0305_Km0412=0.1;
	% Local Parameter:   id =  Km0467, name = Km0467
	reaction_r_0305_Km0467=0.1;
	% Local Parameter:   id =  Km0421, name = Km0421
	reaction_r_0305_Km0421=0.1;
	% Local Parameter:   id =  Km0252, name = Km0252
	reaction_r_0305_Km0252=0.1;

	reaction_r_0305=compartment_cell*reaction_r_0305_Vmax*(x(130)*x(139)-x(132)*x(54)/reaction_r_0305_Keq)/(reaction_r_0305_Km0412*reaction_r_0305_Km0467)/((1+x(130)/reaction_r_0305_Km0412)*(1+x(139)/reaction_r_0305_Km0467)+(1+x(132)/reaction_r_0305_Km0421)*(1+x(54)/reaction_r_0305_Km0252)-1);

% Reaction: id = r_0310, name = alanine racemase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0310_FLUX_VALUE=0.00577199231356107;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0310_Vmax=0.0346319538813664;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0310_Keq=2.0;
	% Local Parameter:   id =  Km1041, name = Km1041
	reaction_r_0310_Km1041=0.1;
	% Local Parameter:   id =  Km0600, name = Km0600
	reaction_r_0310_Km0600=0.1;

	reaction_r_0310=compartment_cell*reaction_r_0310_Vmax*(x(251)-x(169)/reaction_r_0310_Keq)/reaction_r_0310_Km1041/(1+x(251)/reaction_r_0310_Km1041+1+x(169)/reaction_r_0310_Km0600-1);

% Reaction: id = r_0348, name = anthranilate phosphoribosyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0348_FLUX_VALUE=0.00787329117099325;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0348_Vmax=0.110226076393905;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0348_Keq=2.0;
	% Local Parameter:   id =  Km0457, name = Km0457
	reaction_r_0348_Km0457=0.1;
	% Local Parameter:   id =  Km0360, name = Km0360
	reaction_r_0348_Km0360=0.1;
	% Local Parameter:   id =  Km0783, name = Km0783
	reaction_r_0348_Km0783=0.1;
	% Local Parameter:   id =  Km1278, name = Km1278
	reaction_r_0348_Km1278=0.1;

	reaction_r_0348=compartment_cell*reaction_r_0348_Vmax*(x(138)*x(107)-x(198)*x(301)/reaction_r_0348_Keq)/(reaction_r_0348_Km0457*reaction_r_0348_Km0360)/((1+x(138)/reaction_r_0348_Km0457)*(1+x(107)/reaction_r_0348_Km0360)+(1+x(198)/reaction_r_0348_Km0783)*(1+x(301)/reaction_r_0348_Km1278)-1);

% Reaction: id = r_0349, name = anthranilate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0349_FLUX_VALUE=0.00787329117099325;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0349_Vmax=0.173212405761852;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0349_Keq=0.2;
	% Local Parameter:   id =  Km0526, name = Km0526
	reaction_r_0349_Km0526=0.1;
	% Local Parameter:   id =  Km1101, name = Km1101
	reaction_r_0349_Km1101=0.1;
	% Local Parameter:   id =  Km0457, name = Km0457
	reaction_r_0349_Km0457=0.1;
	% Local Parameter:   id =  Km1095, name = Km1095
	reaction_r_0349_Km1095=0.1;
	% Local Parameter:   id =  Km1531, name = Km1531
	reaction_r_0349_Km1531=0.1;

	reaction_r_0349=compartment_cell*reaction_r_0349_Vmax*(x(154)*x(263)-x(138)*x(259)*x(352)/reaction_r_0349_Keq)/(reaction_r_0349_Km0526*reaction_r_0349_Km1101)/((1+x(154)/reaction_r_0349_Km0526)*(1+x(263)/reaction_r_0349_Km1101)+(1+x(138)/reaction_r_0349_Km0457)*(1+x(259)/reaction_r_0349_Km1095)*(1+x(352)/reaction_r_0349_Km1531)-1);

% Reaction: id = r_0355, name = arabinose-5-phosphate isomerase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0355_FLUX_VALUE=0.00539107129442444;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0355_Vmax=0.0323464277665466;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0355_Keq=2.0;
	% Local Parameter:   id =  Km0704, name = Km0704
	reaction_r_0355_Km0704=0.1;
	% Local Parameter:   id =  Km0611, name = Km0611
	reaction_r_0355_Km0611=0.1;

	reaction_r_0355=compartment_cell*reaction_r_0355_Vmax*(x(182)-x(171)/reaction_r_0355_Keq)/reaction_r_0355_Km0704/(1+x(182)/reaction_r_0355_Km0704+1+x(171)/reaction_r_0355_Km0611-1);

% Reaction: id = r_0360, name = argininosuccinate lyase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0360_FLUX_VALUE=0.0409732499715002;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0360_Vmax=0.409732499715002;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0360_Keq=0.2;
	% Local Parameter:   id =  Km1274, name = Km1274
	reaction_r_0360_Km1274=0.1;
	% Local Parameter:   id =  Km1061, name = Km1061
	reaction_r_0360_Km1061=0.1;
	% Local Parameter:   id =  Km0875, name = Km0875
	reaction_r_0360_Km0875=0.1;

	reaction_r_0360=compartment_cell*reaction_r_0360_Vmax*(x(299)-x(252)*x(218)/reaction_r_0360_Keq)/reaction_r_0360_Km1274/(1+x(299)/reaction_r_0360_Km1274+(1+x(252)/reaction_r_0360_Km1061)*(1+x(218)/reaction_r_0360_Km0875)-1);

% Reaction: id = r_0361, name = argininosuccinate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0361_FLUX_VALUE=0.040973249971501;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0361_Vmax=1.22919749914503;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0361_Keq=2.0;
	% Local Parameter:   id =  Km1072, name = Km1072
	reaction_r_0361_Km1072=0.1;
	% Local Parameter:   id =  Km0467, name = Km0467
	reaction_r_0361_Km0467=0.1;
	% Local Parameter:   id =  Km1081, name = Km1081
	reaction_r_0361_Km1081=0.1;
	% Local Parameter:   id =  Km0454, name = Km0454
	reaction_r_0361_Km0454=0.1;
	% Local Parameter:   id =  Km1274, name = Km1274
	reaction_r_0361_Km1274=0.1;
	% Local Parameter:   id =  Km0783, name = Km0783
	reaction_r_0361_Km0783=0.1;

	reaction_r_0361=compartment_cell*reaction_r_0361_Vmax*(x(254)*x(139)*x(256)-x(137)*x(299)*x(198)/reaction_r_0361_Keq)/(reaction_r_0361_Km1072*reaction_r_0361_Km0467*reaction_r_0361_Km1081)/((1+x(254)/reaction_r_0361_Km1072)*(1+x(139)/reaction_r_0361_Km0467)*(1+x(256)/reaction_r_0361_Km1081)+(1+x(137)/reaction_r_0361_Km0454)*(1+x(299)/reaction_r_0361_Km1274)*(1+x(198)/reaction_r_0361_Km0783)-1);

% Reaction: id = r_0365, name = asparagine synthetase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0365_FLUX_VALUE=0.033396384611683;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0365_Vmax=1.00189153835049;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0365_Keq=2.0;
	% Local Parameter:   id =  Km1072, name = Km1072
	reaction_r_0365_Km1072=0.1;
	% Local Parameter:   id =  Km0467, name = Km0467
	reaction_r_0365_Km0467=0.1;
	% Local Parameter:   id =  Km0451, name = Km0451
	reaction_r_0365_Km0451=0.1;
	% Local Parameter:   id =  Km0454, name = Km0454
	reaction_r_0365_Km0454=0.1;
	% Local Parameter:   id =  Km1068, name = Km1068
	reaction_r_0365_Km1068=0.1;
	% Local Parameter:   id =  Km0783, name = Km0783
	reaction_r_0365_Km0783=0.1;

	reaction_r_0365=compartment_cell*reaction_r_0365_Vmax*(x(254)*x(139)*x(136)-x(137)*x(253)*x(198)/reaction_r_0365_Keq)/(reaction_r_0365_Km1072*reaction_r_0365_Km0467*reaction_r_0365_Km0451)/((1+x(254)/reaction_r_0365_Km1072)*(1+x(139)/reaction_r_0365_Km0467)*(1+x(136)/reaction_r_0365_Km0451)+(1+x(137)/reaction_r_0365_Km0454)*(1+x(253)/reaction_r_0365_Km1068)*(1+x(198)/reaction_r_0365_Km0783)-1);

% Reaction: id = r_0367, name = aspartate 1-decarboxylase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0367_FLUX_VALUE=7.97856388811725E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0367_Vmax=7.97856388811725E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0367_Keq=0.2;
	% Local Parameter:   id =  Km1072, name = Km1072
	reaction_r_0367_Km1072=0.1;
	% Local Parameter:   id =  Km0470, name = Km0470
	reaction_r_0367_Km0470=0.1;
	% Local Parameter:   id =  Km0543, name = Km0543
	reaction_r_0367_Km0543=0.1;

	reaction_r_0367=compartment_cell*reaction_r_0367_Vmax*(x(254)-x(140)*x(160)/reaction_r_0367_Keq)/reaction_r_0367_Km1072/(1+x(254)/reaction_r_0367_Km1072+(1+x(140)/reaction_r_0367_Km0470)*(1+x(160)/reaction_r_0367_Km0543)-1);

% Reaction: id = r_0368, name = aspartate carbamoyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0368_FLUX_VALUE=0.0458199505005817;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0368_Vmax=0.641479307008144;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0368_Keq=2.0;
	% Local Parameter:   id =  Km1072, name = Km1072
	reaction_r_0368_Km1072=0.1;
	% Local Parameter:   id =  Km0502, name = Km0502
	reaction_r_0368_Km0502=0.1;
	% Local Parameter:   id =  Km1312, name = Km1312
	reaction_r_0368_Km1312=0.1;
	% Local Parameter:   id =  Km1430, name = Km1430
	reaction_r_0368_Km1430=0.1;

	reaction_r_0368=compartment_cell*reaction_r_0368_Vmax*(x(254)*x(149)-x(306)*x(336)/reaction_r_0368_Keq)/(reaction_r_0368_Km1072*reaction_r_0368_Km0502)/((1+x(254)/reaction_r_0368_Km1072)*(1+x(149)/reaction_r_0368_Km0502)+(1+x(306)/reaction_r_0368_Km1312)*(1+x(336)/reaction_r_0368_Km1430)-1);

% Reaction: id = r_0369, name = aspartate kinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0369_FLUX_VALUE=0.230942094325926;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0369_Vmax=3.23318932056296;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0369_Keq=2.0;
	% Local Parameter:   id =  Km1072, name = Km1072
	reaction_r_0369_Km1072=0.1;
	% Local Parameter:   id =  Km0467, name = Km0467
	reaction_r_0369_Km0467=0.1;
	% Local Parameter:   id =  Km0332, name = Km0332
	reaction_r_0369_Km0332=0.1;
	% Local Parameter:   id =  Km0421, name = Km0421
	reaction_r_0369_Km0421=0.1;

	reaction_r_0369=compartment_cell*reaction_r_0369_Vmax*(x(254)*x(139)-x(91)*x(132)/reaction_r_0369_Keq)/(reaction_r_0369_Km1072*reaction_r_0369_Km0467)/((1+x(254)/reaction_r_0369_Km1072)*(1+x(139)/reaction_r_0369_Km0467)+(1+x(91)/reaction_r_0369_Km0332)*(1+x(132)/reaction_r_0369_Km0421)-1);

% Reaction: id = r_0370, name = aspartate transaminase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0370_FLUX_VALUE=0.487066600184804;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0370_Vmax=6.81893240258726;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0370_Keq=2.0;
	% Local Parameter:   id =  Km1095, name = Km1095
	reaction_r_0370_Km1095=0.1;
	% Local Parameter:   id =  Km1399, name = Km1399
	reaction_r_0370_Km1399=0.1;
	% Local Parameter:   id =  Km0233, name = Km0233
	reaction_r_0370_Km0233=0.1;
	% Local Parameter:   id =  Km1072, name = Km1072
	reaction_r_0370_Km1072=0.1;

	reaction_r_0370=compartment_cell*reaction_r_0370_Vmax*(x(259)*x(329)-x(52)*x(254)/reaction_r_0370_Keq)/(reaction_r_0370_Km1095*reaction_r_0370_Km1399)/((1+x(259)/reaction_r_0370_Km1095)*(1+x(329)/reaction_r_0370_Km1399)+(1+x(52)/reaction_r_0370_Km0233)*(1+x(254)/reaction_r_0370_Km1072)-1);

% Reaction: id = r_0371, name = aspartate-semialdehyde dehydrogenase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0371_FLUX_VALUE=0.230942094325926;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0371_Vmax=5.08072607517037;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0371_Keq=0.2;
	% Local Parameter:   id =  Km0332, name = Km0332
	reaction_r_0371_Km0332=0.1;
	% Local Parameter:   id =  Km1336, name = Km1336
	reaction_r_0371_Km1336=0.1;
	% Local Parameter:   id =  Km1075, name = Km1075
	reaction_r_0371_Km1075=0.1;
	% Local Parameter:   id =  Km1335, name = Km1335
	reaction_r_0371_Km1335=0.1;
	% Local Parameter:   id =  Km1430, name = Km1430
	reaction_r_0371_Km1430=0.1;

	reaction_r_0371=compartment_cell*reaction_r_0371_Vmax*(x(91)*x(317)-x(255)*x(316)*x(336)/reaction_r_0371_Keq)/(reaction_r_0371_Km0332*reaction_r_0371_Km1336)/((1+x(91)/reaction_r_0371_Km0332)*(1+x(317)/reaction_r_0371_Km1336)+(1+x(255)/reaction_r_0371_Km1075)*(1+x(316)/reaction_r_0371_Km1335)*(1+x(336)/reaction_r_0371_Km1430)-1);

% Reaction: id = r_0374, name = ATP phosphoribosyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0374_FLUX_VALUE=0.0131230753965474;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0374_Vmax=0.183723055551664;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0374_Keq=2.0;
	% Local Parameter:   id =  Km0467, name = Km0467
	reaction_r_0374_Km0467=0.1;
	% Local Parameter:   id =  Km0360, name = Km0360
	reaction_r_0374_Km0360=0.1;
	% Local Parameter:   id =  Km0783, name = Km0783
	reaction_r_0374_Km0783=0.1;
	% Local Parameter:   id =  Km0099, name = Km0099
	reaction_r_0374_Km0099=0.1;

	reaction_r_0374=compartment_cell*reaction_r_0374_Vmax*(x(139)*x(107)-x(198)*x(26)/reaction_r_0374_Keq)/(reaction_r_0374_Km0467*reaction_r_0374_Km0360)/((1+x(139)/reaction_r_0374_Km0467)*(1+x(107)/reaction_r_0374_Km0360)+(1+x(198)/reaction_r_0374_Km0783)*(1+x(26)/reaction_r_0374_Km0099)-1);

% Reaction: id = r_0383, name = Biotin synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0383_FLUX_VALUE=2.77033467884759E-7;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0383_Vmax=1.27435395226989E-5;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0383_Keq=0.2;
	% Local Parameter:   id =  Km0378, name = Km0378
	reaction_r_0383_Km0378=0.1;
	% Local Parameter:   id =  Km1552, name = Km1552
	reaction_r_0383_Km1552=0.1;
	% Local Parameter:   id =  Km0755, name = Km0755
	reaction_r_0383_Km0755=0.1;
	% Local Parameter:   id =  Km0377, name = Km0377
	reaction_r_0383_Km0377=0.1;
	% Local Parameter:   id =  Km0476, name = Km0476
	reaction_r_0383_Km0476=0.1;
	% Local Parameter:   id =  Km0333, name = Km0333
	reaction_r_0383_Km0333=0.1;
	% Local Parameter:   id =  Km1141, name = Km1141
	reaction_r_0383_Km1141=0.1;

	reaction_r_0383=compartment_cell*reaction_r_0383_Vmax*(x(119)*x(358)*x(190)-x(118)*x(142)*x(92)*x(274)/reaction_r_0383_Keq)/(reaction_r_0383_Km0378*reaction_r_0383_Km1552*reaction_r_0383_Km0755)/((1+x(119)/reaction_r_0383_Km0378)*(1+x(358)/reaction_r_0383_Km1552)*(1+x(190)/reaction_r_0383_Km0755)+(1+x(118)/reaction_r_0383_Km0377)*(1+x(142)/reaction_r_0383_Km0476)*(1+x(92)/reaction_r_0383_Km0333)*(1+x(274)/reaction_r_0383_Km1141)-1);

% Reaction: id = r_0384, name = bis-molybdenum cofactor synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0384_FLUX_VALUE=1.68990415703956E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0384_Vmax=3.71778914548703E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0384_Keq=0.2;
	% Local Parameter:   id =  Km1264, name = Km1264
	reaction_r_0384_Km1264=0.1;
	% Local Parameter:   id =  Km0420, name = Km0420
	reaction_r_0384_Km0420=0.1;
	% Local Parameter:   id =  Km0454, name = Km0454
	reaction_r_0384_Km0454=0.1;
	% Local Parameter:   id =  Km0479, name = Km0479
	reaction_r_0384_Km0479=0.1;
	% Local Parameter:   id =  Km0579, name = Km0579
	reaction_r_0384_Km0579=0.1;

	reaction_r_0384=compartment_cell*reaction_r_0384_Vmax*(x(297)*x(131)-x(137)*x(143)*x(166)/reaction_r_0384_Keq)/(reaction_r_0384_Km1264*reaction_r_0384_Km0420)/((1+x(297)/reaction_r_0384_Km1264)*(1+x(131)/reaction_r_0384_Km0420)+(1+x(137)/reaction_r_0384_Km0454)*(1+x(143)/reaction_r_0384_Km0479)*(1+x(166)/reaction_r_0384_Km0579)-1);

% Reaction: id = r_0385, name = bis-molybdopterin guanine dinucleotide synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0385_FLUX_VALUE=1.68990415703956E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0385_Vmax=2.36586581985538E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0385_Keq=2.0;
	% Local Parameter:   id =  Km0481, name = Km0481
	reaction_r_0385_Km0481=0.1;
	% Local Parameter:   id =  Km0945, name = Km0945
	reaction_r_0385_Km0945=0.1;
	% Local Parameter:   id =  Km0480, name = Km0480
	reaction_r_0385_Km0480=0.1;
	% Local Parameter:   id =  Km0783, name = Km0783
	reaction_r_0385_Km0783=0.1;

	reaction_r_0385=compartment_cell*reaction_r_0385_Vmax*(x(145)*x(229)-x(144)*x(198)/reaction_r_0385_Keq)/(reaction_r_0385_Km0481*reaction_r_0385_Km0945)/((1+x(145)/reaction_r_0385_Km0481)*(1+x(229)/reaction_r_0385_Km0945)+(1+x(144)/reaction_r_0385_Km0480)*(1+x(198)/reaction_r_0385_Km0783)-1);

% Reaction: id = r_0386, name = bis-molybdopterin guanine dinucleotide synthase (single GDP)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0386_FLUX_VALUE=1.68990415703956E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0386_Vmax=2.36586581985538E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0386_Keq=2.0;
	% Local Parameter:   id =  Km0479, name = Km0479
	reaction_r_0386_Km0479=0.1;
	% Local Parameter:   id =  Km0945, name = Km0945
	reaction_r_0386_Km0945=0.1;
	% Local Parameter:   id =  Km0481, name = Km0481
	reaction_r_0386_Km0481=0.1;
	% Local Parameter:   id =  Km0783, name = Km0783
	reaction_r_0386_Km0783=0.1;

	reaction_r_0386=compartment_cell*reaction_r_0386_Vmax*(x(143)*x(229)-x(145)*x(198)/reaction_r_0386_Keq)/(reaction_r_0386_Km0479*reaction_r_0386_Km0945)/((1+x(143)/reaction_r_0386_Km0479)*(1+x(229)/reaction_r_0386_Km0945)+(1+x(145)/reaction_r_0386_Km0481)*(1+x(198)/reaction_r_0386_Km0783)-1);

% Reaction: id = r_0388, name = Carbamate kinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0388_FLUX_VALUE=0.0867932004720827;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0388_Vmax=1.90945041038582;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0388_Keq=20.0;
	% Local Parameter:   id =  Km0467, name = Km0467
	reaction_r_0388_Km0467=0.1;
	% Local Parameter:   id =  Km0543, name = Km0543
	reaction_r_0388_Km0543=0.1;
	% Local Parameter:   id =  Km0451, name = Km0451
	reaction_r_0388_Km0451=0.1;
	% Local Parameter:   id =  Km0421, name = Km0421
	reaction_r_0388_Km0421=0.1;
	% Local Parameter:   id =  Km0502, name = Km0502
	reaction_r_0388_Km0502=0.1;

	reaction_r_0388=compartment_cell*reaction_r_0388_Vmax*(x(139)*x(160)*x(136)-x(132)*x(149)/reaction_r_0388_Keq)/(reaction_r_0388_Km0467*reaction_r_0388_Km0543*reaction_r_0388_Km0451)/((1+x(139)/reaction_r_0388_Km0467)*(1+x(160)/reaction_r_0388_Km0543)*(1+x(136)/reaction_r_0388_Km0451)+(1+x(132)/reaction_r_0388_Km0421)*(1+x(149)/reaction_r_0388_Km0502)-1);

% Reaction: id = r_0418, name = CDP-diacylglycerol synthetase (n-C16:0)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0418_FLUX_VALUE=0.00884013797559549;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0418_Vmax=0.123761931658337;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0418_Keq=2.0;
	% Local Parameter:   id =  Km0575, name = Km0575
	reaction_r_0418_Km0575=0.1;
	% Local Parameter:   id =  Km0075, name = Km0075
	reaction_r_0418_Km0075=0.1;
	% Local Parameter:   id =  Km0513, name = Km0513
	reaction_r_0418_Km0513=0.1;
	% Local Parameter:   id =  Km0783, name = Km0783
	reaction_r_0418_Km0783=0.1;

	reaction_r_0418=compartment_cell*reaction_r_0418_Vmax*(x(165)*x(22)-x(152)*x(198)/reaction_r_0418_Keq)/(reaction_r_0418_Km0575*reaction_r_0418_Km0075)/((1+x(165)/reaction_r_0418_Km0575)*(1+x(22)/reaction_r_0418_Km0075)+(1+x(152)/reaction_r_0418_Km0513)*(1+x(198)/reaction_r_0418_Km0783)-1);

% Reaction: id = r_0419, name = CDP-diacylglycerol synthetase (n-C16:1)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0419_FLUX_VALUE=0.0104178435779464;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0419_Vmax=0.14584981009125;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0419_Keq=2.0;
	% Local Parameter:   id =  Km0575, name = Km0575
	reaction_r_0419_Km0575=0.1;
	% Local Parameter:   id =  Km0073, name = Km0073
	reaction_r_0419_Km0073=0.1;
	% Local Parameter:   id =  Km0512, name = Km0512
	reaction_r_0419_Km0512=0.1;
	% Local Parameter:   id =  Km0783, name = Km0783
	reaction_r_0419_Km0783=0.1;

	reaction_r_0419=compartment_cell*reaction_r_0419_Vmax*(x(165)*x(21)-x(151)*x(198)/reaction_r_0419_Keq)/(reaction_r_0419_Km0575*reaction_r_0419_Km0073)/((1+x(165)/reaction_r_0419_Km0575)*(1+x(21)/reaction_r_0419_Km0073)+(1+x(151)/reaction_r_0419_Km0512)*(1+x(198)/reaction_r_0419_Km0783)-1);

% Reaction: id = r_0423, name = chorismate mutase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0423_FLUX_VALUE=0.0447994977198517;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0423_Vmax=0.26879698631911;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0423_Keq=2.0;
	% Local Parameter:   id =  Km0526, name = Km0526
	reaction_r_0423_Km0526=0.1;
	% Local Parameter:   id =  Km1497, name = Km1497
	reaction_r_0423_Km1497=0.1;

	reaction_r_0423=compartment_cell*reaction_r_0423_Vmax*(x(154)-x(346)/reaction_r_0423_Keq)/reaction_r_0423_Km0526/(1+x(154)/reaction_r_0423_Km0526+1+x(346)/reaction_r_0423_Km1497-1);

% Reaction: id = r_0424, name = Chorismate pyruvate lyase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0424_FLUX_VALUE=3.08892317229363E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0424_Vmax=3.08892317229363E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0424_Keq=0.2;
	% Local Parameter:   id =  Km0526, name = Km0526
	reaction_r_0424_Km0526=0.1;
	% Local Parameter:   id =  Km0325, name = Km0325
	reaction_r_0424_Km0325=0.1;
	% Local Parameter:   id =  Km1531, name = Km1531
	reaction_r_0424_Km1531=0.1;

	reaction_r_0424=compartment_cell*reaction_r_0424_Vmax*(x(154)-x(87)*x(352)/reaction_r_0424_Keq)/reaction_r_0424_Km0526/(1+x(154)/reaction_r_0424_Km0526+(1+x(87)/reaction_r_0424_Km0325)*(1+x(352)/reaction_r_0424_Km1531)-1);

% Reaction: id = r_0425, name = chorismate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0425_FLUX_VALUE=0.0527963458177373;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0425_Vmax=0.527963458177373;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0425_Keq=0.2;
	% Local Parameter:   id =  Km0359, name = Km0359
	reaction_r_0425_Km0359=0.1;
	% Local Parameter:   id =  Km0526, name = Km0526
	reaction_r_0425_Km0526=0.1;
	% Local Parameter:   id =  Km1430, name = Km1430
	reaction_r_0425_Km1430=0.1;

	reaction_r_0425=compartment_cell*reaction_r_0425_Vmax*(x(106)-x(154)*x(336)/reaction_r_0425_Keq)/reaction_r_0425_Km0359/(1+x(106)/reaction_r_0425_Km0359+(1+x(154)/reaction_r_0425_Km0526)*(1+x(336)/reaction_r_0425_Km1430)-1);

% Reaction: id = r_0428, name = citrate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0428_FLUX_VALUE=0.148949399052133;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0428_Vmax=2.08529158672986;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0428_Keq=2.0;
	% Local Parameter:   id =  Km0395, name = Km0395
	reaction_r_0428_Km0395=0.1;
	% Local Parameter:   id =  Km1399, name = Km1399
	reaction_r_0428_Km1399=0.1;
	% Local Parameter:   id =  Km0536, name = Km0536
	reaction_r_0428_Km0536=0.1;
	% Local Parameter:   id =  Km0555, name = Km0555
	reaction_r_0428_Km0555=0.1;

	reaction_r_0428=compartment_cell*reaction_r_0428_Vmax*(x(125)*x(329)-x(157)*x(162)/reaction_r_0428_Keq)/(reaction_r_0428_Km0395*reaction_r_0428_Km1399)/((1+x(125)/reaction_r_0428_Km0395)*(1+x(329)/reaction_r_0428_Km1399)+(1+x(157)/reaction_r_0428_Km0536)*(1+x(162)/reaction_r_0428_Km0555)-1);

% Reaction: id = r_0436, name = coproporphyrinogen oxidase (O2 required)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0436_FLUX_VALUE=3.08892317225085E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0436_Vmax=6.79563097895187E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0436_Keq=0.2;
	% Local Parameter:   id =  Km0565, name = Km0565
	reaction_r_0436_Km0565=0.1;
	% Local Parameter:   id =  Km1372, name = Km1372
	reaction_r_0436_Km1372=0.1;
	% Local Parameter:   id =  Km0543, name = Km0543
	reaction_r_0436_Km0543=0.1;
	% Local Parameter:   id =  Km1512, name = Km1512
	reaction_r_0436_Km1512=0.1;

	reaction_r_0436=compartment_cell*reaction_r_0436_Vmax*(x(163)*x(324)-x(160)^2*x(349)/reaction_r_0436_Keq)/(reaction_r_0436_Km0565*reaction_r_0436_Km1372)/((1+x(163)/reaction_r_0436_Km0565)*(1+x(324)/reaction_r_0436_Km1372)+(1+x(160)/reaction_r_0436_Km0543)^2*(1+x(349)/reaction_r_0436_Km1512)-1);

% Reaction: id = r_0440, name = CTP synthase (glutamine)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0440_FLUX_VALUE=0.0222347061711993;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0440_Vmax=1.02279648387517;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0440_Keq=0.2;
	% Local Parameter:   id =  Km0467, name = Km0467
	reaction_r_0440_Km0467=0.1;
	% Local Parameter:   id =  Km1101, name = Km1101
	reaction_r_0440_Km1101=0.1;
	% Local Parameter:   id =  Km1792, name = Km1792
	reaction_r_0440_Km1792=0.1;
	% Local Parameter:   id =  Km0421, name = Km0421
	reaction_r_0440_Km0421=0.1;
	% Local Parameter:   id =  Km0575, name = Km0575
	reaction_r_0440_Km0575=0.1;
	% Local Parameter:   id =  Km1095, name = Km1095
	reaction_r_0440_Km1095=0.1;
	% Local Parameter:   id =  Km1430, name = Km1430
	reaction_r_0440_Km1430=0.1;

	reaction_r_0440=compartment_cell*reaction_r_0440_Vmax*(x(139)*x(263)*x(400)-x(132)*x(165)*x(259)*x(336)/reaction_r_0440_Keq)/(reaction_r_0440_Km0467*reaction_r_0440_Km1101*reaction_r_0440_Km1792)/((1+x(139)/reaction_r_0440_Km0467)*(1+x(263)/reaction_r_0440_Km1101)*(1+x(400)/reaction_r_0440_Km1792)+(1+x(132)/reaction_r_0440_Km0421)*(1+x(165)/reaction_r_0440_Km0575)*(1+x(259)/reaction_r_0440_Km1095)*(1+x(336)/reaction_r_0440_Km1430)-1);

% Reaction: id = r_0445, name = cyclic pyranopterin monophosphate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0445_FLUX_VALUE=3.37980831407913E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0445_Vmax=3.37980831407913E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0445_Keq=0.2;
	% Local Parameter:   id =  Km0945, name = Km0945
	reaction_r_0445_Km0945=0.1;
	% Local Parameter:   id =  Km0585, name = Km0585
	reaction_r_0445_Km0585=0.1;
	% Local Parameter:   id =  Km0783, name = Km0783
	reaction_r_0445_Km0783=0.1;

	reaction_r_0445=compartment_cell*reaction_r_0445_Vmax*(x(229)-x(167)*x(198)/reaction_r_0445_Keq)/reaction_r_0445_Km0945/(1+x(229)/reaction_r_0445_Km0945+(1+x(167)/reaction_r_0445_Km0585)*(1+x(198)/reaction_r_0445_Km0783)-1);

% Reaction: id = r_0450, name = cystathionine b-lyase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0450_FLUX_VALUE=0.0213211883092039;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0450_Vmax=0.38378138956567;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0450_Keq=0.02;
	% Local Parameter:   id =  Km1082, name = Km1082
	reaction_r_0450_Km1082=0.1;
	% Local Parameter:   id =  Km1112, name = Km1112
	reaction_r_0450_Km1112=0.1;
	% Local Parameter:   id =  Km0451, name = Km0451
	reaction_r_0450_Km0451=0.1;
	% Local Parameter:   id =  Km1531, name = Km1531
	reaction_r_0450_Km1531=0.1;

	reaction_r_0450=compartment_cell*reaction_r_0450_Vmax*(x(257)-x(268)*x(136)*x(352)/reaction_r_0450_Keq)/reaction_r_0450_Km1082/(1+x(257)/reaction_r_0450_Km1082+(1+x(268)/reaction_r_0450_Km1112)*(1+x(136)/reaction_r_0450_Km0451)*(1+x(352)/reaction_r_0450_Km1531)-1);

% Reaction: id = r_0452, name = cysteine synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0452_FLUX_VALUE=0.0343363591698377;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0452_Vmax=0.480709028377728;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0452_Keq=2.0;
	% Local Parameter:   id =  Km1358, name = Km1358
	reaction_r_0452_Km1358=0.1;
	% Local Parameter:   id =  Km0994, name = Km0994
	reaction_r_0452_Km0994=0.1;
	% Local Parameter:   id =  Km0384, name = Km0384
	reaction_r_0452_Km0384=0.1;
	% Local Parameter:   id =  Km1083, name = Km1083
	reaction_r_0452_Km1083=0.1;

	reaction_r_0452=compartment_cell*reaction_r_0452_Vmax*(x(319)*x(235)-x(122)*x(258)/reaction_r_0452_Keq)/(reaction_r_0452_Km1358*reaction_r_0452_Km0994)/((1+x(319)/reaction_r_0452_Km1358)*(1+x(235)/reaction_r_0452_Km0994)+(1+x(122)/reaction_r_0452_Km0384)*(1+x(258)/reaction_r_0452_Km1083)-1);

% Reaction: id = r_0457, name = cytidylate kinase (CMP)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0457_FLUX_VALUE=0.0250597549648415;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0457_Vmax=0.350836569507781;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0457_Keq=2.0;
	% Local Parameter:   id =  Km0467, name = Km0467
	reaction_r_0457_Km0467=0.1;
	% Local Parameter:   id =  Km0539, name = Km0539
	reaction_r_0457_Km0539=0.1;
	% Local Parameter:   id =  Km0421, name = Km0421
	reaction_r_0457_Km0421=0.1;
	% Local Parameter:   id =  Km0510, name = Km0510
	reaction_r_0457_Km0510=0.1;

	reaction_r_0457=compartment_cell*reaction_r_0457_Vmax*(x(139)*x(158)-x(132)*x(150)/reaction_r_0457_Keq)/(reaction_r_0457_Km0467*reaction_r_0457_Km0539)/((1+x(139)/reaction_r_0457_Km0467)*(1+x(158)/reaction_r_0457_Km0539)+(1+x(132)/reaction_r_0457_Km0421)*(1+x(150)/reaction_r_0457_Km0510)-1);

% Reaction: id = r_0463, name = D-alanine-D-alanine ligase (reversible)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0463_FLUX_VALUE=0.00384799487561516;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0463_Vmax=0.115439846268455;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0463_Keq=2.0;
	% Local Parameter:   id =  Km0600, name = Km0600
	reaction_r_0463_Km0600=0.1;
	% Local Parameter:   id =  Km0467, name = Km0467
	reaction_r_0463_Km0467=0.1;
	% Local Parameter:   id =  Km0421, name = Km0421
	reaction_r_0463_Km0421=0.1;
	% Local Parameter:   id =  Km0603, name = Km0603
	reaction_r_0463_Km0603=0.1;
	% Local Parameter:   id =  Km1430, name = Km1430
	reaction_r_0463_Km1430=0.1;

	reaction_r_0463=compartment_cell*reaction_r_0463_Vmax*(x(169)^2*x(139)-x(132)*x(170)*x(336)/reaction_r_0463_Keq)/(reaction_r_0463_Km0600^2*reaction_r_0463_Km0467)/((1+x(169)/reaction_r_0463_Km0600)^2*(1+x(139)/reaction_r_0463_Km0467)+(1+x(132)/reaction_r_0463_Km0421)*(1+x(170)/reaction_r_0463_Km0603)*(1+x(336)/reaction_r_0463_Km1430)-1);

% Reaction: id = r_0488, name = dephospho-CoA kinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0488_FLUX_VALUE=7.97856388897518E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0488_Vmax=0.00111699894445653;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0488_Keq=2.0;
	% Local Parameter:   id =  Km0467, name = Km0467
	reaction_r_0488_Km0467=0.1;
	% Local Parameter:   id =  Km0754, name = Km0754
	reaction_r_0488_Km0754=0.1;
	% Local Parameter:   id =  Km0421, name = Km0421
	reaction_r_0488_Km0421=0.1;
	% Local Parameter:   id =  Km0555, name = Km0555
	reaction_r_0488_Km0555=0.1;

	reaction_r_0488=compartment_cell*reaction_r_0488_Vmax*(x(139)*x(189)-x(132)*x(162)/reaction_r_0488_Keq)/(reaction_r_0488_Km0467*reaction_r_0488_Km0754)/((1+x(139)/reaction_r_0488_Km0467)*(1+x(189)/reaction_r_0488_Km0754)+(1+x(132)/reaction_r_0488_Km0421)*(1+x(162)/reaction_r_0488_Km0555)-1);

% Reaction: id = r_0489, name = dethiobiotin synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0489_FLUX_VALUE=2.77033467884759E-7;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0489_Vmax=8.31100403654277E-6;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0489_Keq=2.0;
	% Local Parameter:   id =  Km0467, name = Km0467
	reaction_r_0489_Km0467=0.1;
	% Local Parameter:   id =  Km0543, name = Km0543
	reaction_r_0489_Km0543=0.1;
	% Local Parameter:   id =  Km0371, name = Km0371
	reaction_r_0489_Km0371=0.1;
	% Local Parameter:   id =  Km0421, name = Km0421
	reaction_r_0489_Km0421=0.1;
	% Local Parameter:   id =  Km0755, name = Km0755
	reaction_r_0489_Km0755=0.1;
	% Local Parameter:   id =  Km1430, name = Km1430
	reaction_r_0489_Km1430=0.1;

	reaction_r_0489=compartment_cell*reaction_r_0489_Vmax*(x(139)*x(160)*x(115)-x(132)*x(190)*x(336)/reaction_r_0489_Keq)/(reaction_r_0489_Km0467*reaction_r_0489_Km0543*reaction_r_0489_Km0371)/((1+x(139)/reaction_r_0489_Km0467)*(1+x(160)/reaction_r_0489_Km0543)*(1+x(115)/reaction_r_0489_Km0371)+(1+x(132)/reaction_r_0489_Km0421)*(1+x(190)/reaction_r_0489_Km0755)*(1+x(336)/reaction_r_0489_Km1430)-1);

% Reaction: id = r_0498, name = diaminohydroxyphosphoribosylaminopryrimidine deaminase (25drapp)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0498_FLUX_VALUE=6.17784634458656E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0498_Vmax=6.17784634458656E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0498_Keq=0.2;
	% Local Parameter:   id =  Km0160, name = Km0160
	reaction_r_0498_Km0160=0.1;
	% Local Parameter:   id =  Km0347, name = Km0347
	reaction_r_0498_Km0347=0.1;
	% Local Parameter:   id =  Km0451, name = Km0451
	reaction_r_0498_Km0451=0.1;

	reaction_r_0498=compartment_cell*reaction_r_0498_Vmax*(x(37)-x(103)*x(136)/reaction_r_0498_Keq)/reaction_r_0498_Km0160/(1+x(37)/reaction_r_0498_Km0160+(1+x(103)/reaction_r_0498_Km0347)*(1+x(136)/reaction_r_0498_Km0451)-1);

% Reaction: id = r_0499, name = diaminopimelate decarboxylase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0499_FLUX_VALUE=0.0475389431717989;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0499_Vmax=0.475389431717989;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0499_Keq=0.2;
	% Local Parameter:   id =  Km1242, name = Km1242
	reaction_r_0499_Km1242=0.1;
	% Local Parameter:   id =  Km0543, name = Km0543
	reaction_r_0499_Km0543=0.1;
	% Local Parameter:   id =  Km1131, name = Km1131
	reaction_r_0499_Km1131=0.1;

	reaction_r_0499=compartment_cell*reaction_r_0499_Vmax*(x(290)-x(160)*x(272)/reaction_r_0499_Keq)/reaction_r_0499_Km1242/(1+x(290)/reaction_r_0499_Km1242+(1+x(160)/reaction_r_0499_Km0543)*(1+x(272)/reaction_r_0499_Km1131)-1);

% Reaction: id = r_0500, name = diaminopimelate epimerase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0500_FLUX_VALUE=0.0513869380474194;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0500_Vmax=0.308321628284516;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0500_Keq=2.0;
	% Local Parameter:   id =  Km1211, name = Km1211
	reaction_r_0500_Km1211=0.1;
	% Local Parameter:   id =  Km1242, name = Km1242
	reaction_r_0500_Km1242=0.1;

	reaction_r_0500=compartment_cell*reaction_r_0500_Vmax*(x(283)-x(290)/reaction_r_0500_Keq)/reaction_r_0500_Km1211/(1+x(283)/reaction_r_0500_Km1211+1+x(290)/reaction_r_0500_Km1242-1);

% Reaction: id = r_0501, name = dihydoorotic acid dehydrogenase (quinone8)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0501_FLUX_VALUE=0.0229099752504581;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0501_Vmax=0.320739653506413;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0501_Keq=2.0;
	% Local Parameter:   id =  Km0052, name = Km0052
	reaction_r_0501_Km0052=0.1;
	% Local Parameter:   id =  Km1732, name = Km1732
	reaction_r_0501_Km1732=0.1;
	% Local Parameter:   id =  Km1394, name = Km1394
	reaction_r_0501_Km1394=0.1;
	% Local Parameter:   id =  Km1731, name = Km1731
	reaction_r_0501_Km1731=0.1;

	reaction_r_0501=compartment_cell*reaction_r_0501_Vmax*(x(20)*x(382)-x(327)*x(381)/reaction_r_0501_Keq)/(reaction_r_0501_Km0052*reaction_r_0501_Km1732)/((1+x(20)/reaction_r_0501_Km0052)*(1+x(382)/reaction_r_0501_Km1732)+(1+x(327)/reaction_r_0501_Km1394)*(1+x(381)/reaction_r_0501_Km1731)-1);

% Reaction: id = r_0502, name = dihydrodipicolinate reductase (NADPH)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0502_FLUX_VALUE=0.0513869380474194;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0502_Vmax=0.719417132663872;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0502_Keq=2.0;
	% Local Parameter:   id =  Km0155, name = Km0155
	reaction_r_0502_Km0155=0.1;
	% Local Parameter:   id =  Km1336, name = Km1336
	reaction_r_0502_Km1336=0.1;
	% Local Parameter:   id =  Km1335, name = Km1335
	reaction_r_0502_Km1335=0.1;
	% Local Parameter:   id =  Km0148, name = Km0148
	reaction_r_0502_Km0148=0.1;

	reaction_r_0502=compartment_cell*reaction_r_0502_Vmax*(x(36)*x(317)-x(316)*x(34)/reaction_r_0502_Keq)/(reaction_r_0502_Km0155*reaction_r_0502_Km1336)/((1+x(36)/reaction_r_0502_Km0155)*(1+x(317)/reaction_r_0502_Km1336)+(1+x(316)/reaction_r_0502_Km1335)*(1+x(34)/reaction_r_0502_Km0148)-1);

% Reaction: id = r_0503, name = dihydrodipicolinate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0503_FLUX_VALUE=0.0513869380474194;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0503_Vmax=0.513869380474194;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0503_Keq=20.0;
	% Local Parameter:   id =  Km1075, name = Km1075
	reaction_r_0503_Km1075=0.1;
	% Local Parameter:   id =  Km1531, name = Km1531
	reaction_r_0503_Km1531=0.1;
	% Local Parameter:   id =  Km0155, name = Km0155
	reaction_r_0503_Km0155=0.1;

	reaction_r_0503=compartment_cell*reaction_r_0503_Vmax*(x(255)*x(352)-x(36)/reaction_r_0503_Keq)/(reaction_r_0503_Km1075*reaction_r_0503_Km1531)/((1+x(255)/reaction_r_0503_Km1075)*(1+x(352)/reaction_r_0503_Km1531)+1+x(36)/reaction_r_0503_Km0155-1);

% Reaction: id = r_0504, name = dihydrofolate reductase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0504_FLUX_VALUE=0.00371765062874906;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0504_Vmax=0.0520471088024868;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0504_Keq=2.0;
	% Local Parameter:   id =  Km0372, name = Km0372
	reaction_r_0504_Km0372=0.1;
	% Local Parameter:   id =  Km1336, name = Km1336
	reaction_r_0504_Km1336=0.1;
	% Local Parameter:   id =  Km1335, name = Km1335
	reaction_r_0504_Km1335=0.1;
	% Local Parameter:   id =  Km0337, name = Km0337
	reaction_r_0504_Km0337=0.1;

	reaction_r_0504=compartment_cell*reaction_r_0504_Vmax*(x(116)*x(317)-x(316)*x(96)/reaction_r_0504_Keq)/(reaction_r_0504_Km0372*reaction_r_0504_Km1336)/((1+x(116)/reaction_r_0504_Km0372)*(1+x(317)/reaction_r_0504_Km1336)+(1+x(316)/reaction_r_0504_Km1335)*(1+x(96)/reaction_r_0504_Km0337)-1);

% Reaction: id = r_0505, name = dihydrofolate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0505_FLUX_VALUE=9.26676951688061E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0505_Vmax=0.00278003085506418;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0505_Keq=2.0;
	% Local Parameter:   id =  Km0467, name = Km0467
	reaction_r_0505_Km0467=0.1;
	% Local Parameter:   id =  Km0767, name = Km0767
	reaction_r_0505_Km0767=0.1;
	% Local Parameter:   id =  Km1095, name = Km1095
	reaction_r_0505_Km1095=0.1;
	% Local Parameter:   id =  Km0421, name = Km0421
	reaction_r_0505_Km0421=0.1;
	% Local Parameter:   id =  Km0372, name = Km0372
	reaction_r_0505_Km0372=0.1;
	% Local Parameter:   id =  Km1430, name = Km1430
	reaction_r_0505_Km1430=0.1;

	reaction_r_0505=compartment_cell*reaction_r_0505_Vmax*(x(139)*x(194)*x(259)-x(132)*x(116)*x(336)/reaction_r_0505_Keq)/(reaction_r_0505_Km0467*reaction_r_0505_Km0767*reaction_r_0505_Km1095)/((1+x(139)/reaction_r_0505_Km0467)*(1+x(194)/reaction_r_0505_Km0767)*(1+x(259)/reaction_r_0505_Km1095)+(1+x(132)/reaction_r_0505_Km0421)*(1+x(116)/reaction_r_0505_Km0372)*(1+x(336)/reaction_r_0505_Km1430)-1);

% Reaction: id = r_0507, name = dihydroneopterin aldolase reversible	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0507_FLUX_VALUE=9.26676951688061E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0507_Vmax=9.26676951688061E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0507_Keq=0.2;
	% Local Parameter:   id =  Km0765, name = Km0765
	reaction_r_0507_Km0765=0.1;
	% Local Parameter:   id =  Km0367, name = Km0367
	reaction_r_0507_Km0367=0.1;
	% Local Parameter:   id =  Km0936, name = Km0936
	reaction_r_0507_Km0936=0.1;

	reaction_r_0507=compartment_cell*reaction_r_0507_Vmax*(x(192)-x(111)*x(225)/reaction_r_0507_Keq)/reaction_r_0507_Km0765/(1+x(192)/reaction_r_0507_Km0765+(1+x(111)/reaction_r_0507_Km0367)*(1+x(225)/reaction_r_0507_Km0936)-1);

% Reaction: id = r_0510, name = Dihydroneopterin triphosphate pyrophosphatase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0510_FLUX_VALUE=9.26676951688061E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0510_Vmax=9.26676951688061E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0510_Keq=0.2;
	% Local Parameter:   id =  Km0191, name = Km0191
	reaction_r_0510_Km0191=0.1;
	% Local Parameter:   id =  Km0766, name = Km0766
	reaction_r_0510_Km0766=0.1;
	% Local Parameter:   id =  Km0783, name = Km0783
	reaction_r_0510_Km0783=0.1;

	reaction_r_0510=compartment_cell*reaction_r_0510_Vmax*(x(39)-x(193)*x(198)/reaction_r_0510_Keq)/reaction_r_0510_Km0191/(1+x(39)/reaction_r_0510_Km0191+(1+x(193)/reaction_r_0510_Km0766)*(1+x(198)/reaction_r_0510_Km0783)-1);

% Reaction: id = r_0511, name = dihydroorotase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0511_FLUX_VALUE=0.0458199505005817;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0511_Vmax=0.27491970300349;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0511_Keq=2.0;
	% Local Parameter:   id =  Km1312, name = Km1312
	reaction_r_0511_Km1312=0.1;
	% Local Parameter:   id =  Km0052, name = Km0052
	reaction_r_0511_Km0052=0.1;

	reaction_r_0511=compartment_cell*reaction_r_0511_Vmax*(x(306)-x(20)/reaction_r_0511_Keq)/reaction_r_0511_Km1312/(1+x(306)/reaction_r_0511_Km1312+1+x(20)/reaction_r_0511_Km0052-1);

% Reaction: id = r_0512, name = dihydroorotic acid (menaquinone-8)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0512_FLUX_VALUE=0.0229099752501236;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0512_Vmax=0.32073965350173;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0512_Keq=2.0;
	% Local Parameter:   id =  Km0052, name = Km0052
	reaction_r_0512_Km0052=0.1;
	% Local Parameter:   id =  Km1240, name = Km1240
	reaction_r_0512_Km1240=0.1;
	% Local Parameter:   id =  Km1239, name = Km1239
	reaction_r_0512_Km1239=0.1;
	% Local Parameter:   id =  Km1394, name = Km1394
	reaction_r_0512_Km1394=0.1;

	reaction_r_0512=compartment_cell*reaction_r_0512_Vmax*(x(20)*x(289)-x(288)*x(327)/reaction_r_0512_Keq)/(reaction_r_0512_Km0052*reaction_r_0512_Km1240)/((1+x(20)/reaction_r_0512_Km0052)*(1+x(289)/reaction_r_0512_Km1240)+(1+x(288)/reaction_r_0512_Km1239)*(1+x(327)/reaction_r_0512_Km1394)-1);

% Reaction: id = r_0515, name = dihydropteroate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0515_FLUX_VALUE=9.26676951688061E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0515_Vmax=0.00129734773236329;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0515_Keq=2.0;
	% Local Parameter:   id =  Km0318, name = Km0318
	reaction_r_0515_Km0318=0.1;
	% Local Parameter:   id =  Km0368, name = Km0368
	reaction_r_0515_Km0368=0.1;
	% Local Parameter:   id =  Km0767, name = Km0767
	reaction_r_0515_Km0767=0.1;
	% Local Parameter:   id =  Km0783, name = Km0783
	reaction_r_0515_Km0783=0.1;

	reaction_r_0515=compartment_cell*reaction_r_0515_Vmax*(x(86)*x(112)-x(194)*x(198)/reaction_r_0515_Keq)/(reaction_r_0515_Km0318*reaction_r_0515_Km0368)/((1+x(86)/reaction_r_0515_Km0318)*(1+x(112)/reaction_r_0515_Km0368)+(1+x(194)/reaction_r_0515_Km0767)*(1+x(198)/reaction_r_0515_Km0783)-1);

% Reaction: id = r_0517, name = dihydroxy-acid dehydratase (2,3-dihydroxy-3-methylbutanoate)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0517_FLUX_VALUE=0.121101856295072;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0517_Vmax=0.726611137770432;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0517_Keq=2.0;
	% Local Parameter:   id =  Km0017, name = Km0017
	reaction_r_0517_Km0017=0.1;
	% Local Parameter:   id =  Km0282, name = Km0282
	reaction_r_0517_Km0282=0.1;

	reaction_r_0517=compartment_cell*reaction_r_0517_Vmax*(x(3)-x(67)/reaction_r_0517_Keq)/reaction_r_0517_Km0017/(1+x(3)/reaction_r_0517_Km0017+1+x(67)/reaction_r_0517_Km0282-1);

% Reaction: id = r_0518, name = Dihydroxy-acid dehydratase (2,3-dihydroxy-3-methylpentanoate)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0518_FLUX_VALUE=0.0402391112803253;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0518_Vmax=0.241434667681952;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0518_Keq=2.0;
	% Local Parameter:   id =  Km0018, name = Km0018
	reaction_r_0518_Km0018=0.1;
	% Local Parameter:   id =  Km0051, name = Km0051
	reaction_r_0518_Km0051=0.1;

	reaction_r_0518=compartment_cell*reaction_r_0518_Vmax*(x(4)-x(19)/reaction_r_0518_Keq)/reaction_r_0518_Km0018/(1+x(4)/reaction_r_0518_Km0018+1+x(19)/reaction_r_0518_Km0051-1);

% Reaction: id = r_0522, name = dimethylallyltranstransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0522_FLUX_VALUE=3.85076521030325E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0522_Vmax=5.39107129442455E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0522_Keq=2.0;
	% Local Parameter:   id =  Km0779, name = Km0779
	reaction_r_0522_Km0779=0.1;
	% Local Parameter:   id =  Km1028, name = Km1028
	reaction_r_0522_Km1028=0.1;
	% Local Parameter:   id =  Km0903, name = Km0903
	reaction_r_0522_Km0903=0.1;
	% Local Parameter:   id =  Km0783, name = Km0783
	reaction_r_0522_Km0783=0.1;

	reaction_r_0522=compartment_cell*reaction_r_0522_Vmax*(x(197)*x(247)-x(220)*x(198)/reaction_r_0522_Keq)/(reaction_r_0522_Km0779*reaction_r_0522_Km1028)/((1+x(197)/reaction_r_0522_Km0779)*(1+x(247)/reaction_r_0522_Km1028)+(1+x(220)/reaction_r_0522_Km0903)*(1+x(198)/reaction_r_0522_Km0783)-1);

% Reaction: id = r_0532, name = dTMP kinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0532_FLUX_VALUE=0.00362498293358209;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0532_Vmax=0.0507497610701493;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0532_Keq=2.0;
	% Local Parameter:   id =  Km0467, name = Km0467
	reaction_r_0532_Km0467=0.1;
	% Local Parameter:   id =  Km0802, name = Km0802
	reaction_r_0532_Km0802=0.1;
	% Local Parameter:   id =  Km0421, name = Km0421
	reaction_r_0532_Km0421=0.1;
	% Local Parameter:   id =  Km0795, name = Km0795
	reaction_r_0532_Km0795=0.1;

	reaction_r_0532=compartment_cell*reaction_r_0532_Vmax*(x(139)*x(203)-x(132)*x(202)/reaction_r_0532_Keq)/(reaction_r_0532_Km0467*reaction_r_0532_Km0802)/((1+x(139)/reaction_r_0532_Km0467)*(1+x(203)/reaction_r_0532_Km0802)+(1+x(132)/reaction_r_0532_Km0421)*(1+x(202)/reaction_r_0532_Km0795)-1);

% Reaction: id = r_0533, name = dUTP diphosphatase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0533_FLUX_VALUE=0.00362498293355932;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0533_Vmax=0.0362498293355932;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0533_Keq=0.2;
	% Local Parameter:   id =  Km0810, name = Km0810
	reaction_r_0533_Km0810=0.1;
	% Local Parameter:   id =  Km0807, name = Km0807
	reaction_r_0533_Km0807=0.1;
	% Local Parameter:   id =  Km0783, name = Km0783
	reaction_r_0533_Km0783=0.1;

	reaction_r_0533=compartment_cell*reaction_r_0533_Vmax*(x(206)-x(205)*x(198)/reaction_r_0533_Keq)/reaction_r_0533_Km0810/(1+x(206)/reaction_r_0533_Km0810+(1+x(205)/reaction_r_0533_Km0807)*(1+x(198)/reaction_r_0533_Km0783)-1);

% Reaction: id = r_0538, name = enolase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0538_FLUX_VALUE=0.640969334565238;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0538_Vmax=3.84581600739143;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0538_Keq=2.0;
	% Local Parameter:   id =  Km0675, name = Km0675
	reaction_r_0538_Km0675=0.1;
	% Local Parameter:   id =  Km1484, name = Km1484
	reaction_r_0538_Km1484=0.1;

	reaction_r_0538=compartment_cell*reaction_r_0538_Vmax*(x(181)-x(341)/reaction_r_0538_Keq)/reaction_r_0538_Km0675/(1+x(181)/reaction_r_0538_Km0675+1+x(341)/reaction_r_0538_Km1484-1);

% Reaction: id = r_0563, name = Enoylglutaryl-[ACP] methyl ester reductase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0563_FLUX_VALUE=2.77033467884759E-7;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0563_Vmax=3.87846855038663E-6;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0563_Keq=2.0;
	% Local Parameter:   id =  Km0812, name = Km0812
	reaction_r_0563_Km0812=0.1;
	% Local Parameter:   id =  Km1336, name = Km1336
	reaction_r_0563_Km1336=0.1;
	% Local Parameter:   id =  Km0910, name = Km0910
	reaction_r_0563_Km0910=0.1;
	% Local Parameter:   id =  Km1335, name = Km1335
	reaction_r_0563_Km1335=0.1;

	reaction_r_0563=compartment_cell*reaction_r_0563_Vmax*(x(207)*x(317)-x(221)*x(316)/reaction_r_0563_Keq)/(reaction_r_0563_Km0812*reaction_r_0563_Km1336)/((1+x(207)/reaction_r_0563_Km0812)*(1+x(317)/reaction_r_0563_Km1336)+(1+x(221)/reaction_r_0563_Km0910)*(1+x(316)/reaction_r_0563_Km1335)-1);

% Reaction: id = r_0564, name = Enoylpimeloyl-[ACP] methyl ester reductase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0564_FLUX_VALUE=2.77033467884759E-7;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0564_Vmax=3.87846855038663E-6;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0564_Keq=2.0;
	% Local Parameter:   id =  Km0813, name = Km0813
	reaction_r_0564_Km0813=0.1;
	% Local Parameter:   id =  Km1336, name = Km1336
	reaction_r_0564_Km1336=0.1;
	% Local Parameter:   id =  Km1335, name = Km1335
	reaction_r_0564_Km1335=0.1;
	% Local Parameter:   id =  Km1492, name = Km1492
	reaction_r_0564_Km1492=0.1;

	reaction_r_0564=compartment_cell*reaction_r_0564_Vmax*(x(208)*x(317)-x(316)*x(343)/reaction_r_0564_Keq)/(reaction_r_0564_Km0813*reaction_r_0564_Km1336)/((1+x(208)/reaction_r_0564_Km0813)*(1+x(317)/reaction_r_0564_Km1336)+(1+x(316)/reaction_r_0564_Km1335)*(1+x(343)/reaction_r_0564_Km1492)-1);

% Reaction: id = r_0573, name = Erythronate 4-phosphate (4per) dehydrogenase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0573_FLUX_VALUE=3.08892317222495E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0573_Vmax=4.32449244111493E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0573_Keq=2.0;
	% Local Parameter:   id =  Km0331, name = Km0331
	reaction_r_0573_Km0331=0.1;
	% Local Parameter:   id =  Km1333, name = Km1333
	reaction_r_0573_Km1333=0.1;
	% Local Parameter:   id =  Km1334, name = Km1334
	reaction_r_0573_Km1334=0.1;
	% Local Parameter:   id =  Km0231, name = Km0231
	reaction_r_0573_Km0231=0.1;

	reaction_r_0573=compartment_cell*reaction_r_0573_Vmax*(x(90)*x(314)-x(315)*x(50)/reaction_r_0573_Keq)/(reaction_r_0573_Km0331*reaction_r_0573_Km1333)/((1+x(90)/reaction_r_0573_Km0331)*(1+x(314)/reaction_r_0573_Km1333)+(1+x(315)/reaction_r_0573_Km1334)*(1+x(50)/reaction_r_0573_Km0231)-1);

% Reaction: id = r_0574, name = Erythrose 4-phosphate dehydrogenase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0574_FLUX_VALUE=3.08892317222495E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0574_Vmax=4.32449244111493E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0574_Keq=2.0;
	% Local Parameter:   id =  Km0621, name = Km0621
	reaction_r_0574_Km0621=0.1;
	% Local Parameter:   id =  Km1333, name = Km1333
	reaction_r_0574_Km1333=0.1;
	% Local Parameter:   id =  Km0331, name = Km0331
	reaction_r_0574_Km0331=0.1;
	% Local Parameter:   id =  Km1334, name = Km1334
	reaction_r_0574_Km1334=0.1;

	reaction_r_0574=compartment_cell*reaction_r_0574_Vmax*(x(173)*x(314)-x(90)*x(315)/reaction_r_0574_Keq)/(reaction_r_0574_Km0621*reaction_r_0574_Km1333)/((1+x(173)/reaction_r_0574_Km0621)*(1+x(314)/reaction_r_0574_Km1333)+(1+x(90)/reaction_r_0574_Km0331)*(1+x(315)/reaction_r_0574_Km1334)-1);

% Reaction: id = r_0576, name = FAD reductase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0576_FLUX_VALUE=0.302798412025661;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0576_Vmax=4.23917776835925;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0576_Keq=2.0;
	% Local Parameter:   id =  Km0859, name = Km0859
	reaction_r_0576_Km0859=0.1;
	% Local Parameter:   id =  Km1334, name = Km1334
	reaction_r_0576_Km1334=0.1;
	% Local Parameter:   id =  Km0860, name = Km0860
	reaction_r_0576_Km0860=0.1;
	% Local Parameter:   id =  Km1333, name = Km1333
	reaction_r_0576_Km1333=0.1;

	reaction_r_0576=compartment_cell*reaction_r_0576_Vmax*(x(212)*x(315)-x(213)*x(314)/reaction_r_0576_Keq)/(reaction_r_0576_Km0859*reaction_r_0576_Km1334)/((1+x(212)/reaction_r_0576_Km0859)*(1+x(315)/reaction_r_0576_Km1334)+(1+x(213)/reaction_r_0576_Km0860)*(1+x(314)/reaction_r_0576_Km1333)-1);

% Reaction: id = r_0579, name = fatty-acid-CoA thioesterase (dodecanoate)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0579_FLUX_VALUE=0.0107821425888423;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0579_Vmax=0.107821425888423;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0579_Keq=0.2;
	% Local Parameter:   id =  Km0790, name = Km0790
	reaction_r_0579_Km0790=0.1;
	% Local Parameter:   id =  Km0555, name = Km0555
	reaction_r_0579_Km0555=0.1;
	% Local Parameter:   id =  Km0785, name = Km0785
	reaction_r_0579_Km0785=0.1;

	reaction_r_0579=compartment_cell*reaction_r_0579_Vmax*(x(201)-x(162)*x(199)/reaction_r_0579_Keq)/reaction_r_0579_Km0790/(1+x(201)/reaction_r_0579_Km0790+(1+x(162)/reaction_r_0579_Km0555)*(1+x(199)/reaction_r_0579_Km0785)-1);

% Reaction: id = r_0580, name = fatty-acid-CoA thioesterase (hexadecanoate)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0580_FLUX_VALUE=0.0176802759511998;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0580_Vmax=0.176802759511998;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0580_Keq=0.2;
	% Local Parameter:   id =  Km1412, name = Km1412
	reaction_r_0580_Km1412=0.1;
	% Local Parameter:   id =  Km0555, name = Km0555
	reaction_r_0580_Km0555=0.1;
	% Local Parameter:   id =  Km0971, name = Km0971
	reaction_r_0580_Km0971=0.1;

	reaction_r_0580=compartment_cell*reaction_r_0580_Vmax*(x(333)-x(162)*x(230)/reaction_r_0580_Keq)/reaction_r_0580_Km1412/(1+x(333)/reaction_r_0580_Km1412+(1+x(162)/reaction_r_0580_Km0555)*(1+x(230)/reaction_r_0580_Km0971)-1);

% Reaction: id = r_0581, name = fatty-acid-CoA thioesterase (hexadecenoate)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0581_FLUX_VALUE=0.0208356871558925;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0581_Vmax=0.208356871558925;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0581_Keq=0.2;
	% Local Parameter:   id =  Km0979, name = Km0979
	reaction_r_0581_Km0979=0.1;
	% Local Parameter:   id =  Km0555, name = Km0555
	reaction_r_0581_Km0555=0.1;
	% Local Parameter:   id =  Km0976, name = Km0976
	reaction_r_0581_Km0976=0.1;

	reaction_r_0581=compartment_cell*reaction_r_0581_Vmax*(x(232)-x(162)*x(231)/reaction_r_0581_Keq)/reaction_r_0581_Km0979/(1+x(232)/reaction_r_0581_Km0979+(1+x(162)/reaction_r_0581_Km0555)*(1+x(231)/reaction_r_0581_Km0976)-1);

% Reaction: id = r_0602, name = Ferrochelatase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0602_FLUX_VALUE=3.08892317225085E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0602_Vmax=3.08892317225085E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0602_Keq=20.0;
	% Local Parameter:   id =  Km0838, name = Km0838
	reaction_r_0602_Km0838=0.1;
	% Local Parameter:   id =  Km1511, name = Km1511
	reaction_r_0602_Km1511=0.1;
	% Local Parameter:   id =  Km1508, name = Km1508
	reaction_r_0602_Km1508=0.1;

	reaction_r_0602=compartment_cell*reaction_r_0602_Vmax*(x(210)*x(348)-x(347)/reaction_r_0602_Keq)/(reaction_r_0602_Km0838*reaction_r_0602_Km1511)/((1+x(210)/reaction_r_0602_Km0838)*(1+x(348)/reaction_r_0602_Km1511)+1+x(347)/reaction_r_0602_Km1508-1);

% Reaction: id = r_0611, name = FMN adenylyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0611_FLUX_VALUE=3.08892317229329E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0611_Vmax=4.32449244121061E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0611_Keq=2.0;
	% Local Parameter:   id =  Km0467, name = Km0467
	reaction_r_0611_Km0467=0.1;
	% Local Parameter:   id =  Km0863, name = Km0863
	reaction_r_0611_Km0863=0.1;
	% Local Parameter:   id =  Km0859, name = Km0859
	reaction_r_0611_Km0859=0.1;
	% Local Parameter:   id =  Km0783, name = Km0783
	reaction_r_0611_Km0783=0.1;

	reaction_r_0611=compartment_cell*reaction_r_0611_Vmax*(x(139)*x(216)-x(212)*x(198)/reaction_r_0611_Keq)/(reaction_r_0611_Km0467*reaction_r_0611_Km0863)/((1+x(139)/reaction_r_0611_Km0467)*(1+x(216)/reaction_r_0611_Km0863)+(1+x(212)/reaction_r_0611_Km0859)*(1+x(198)/reaction_r_0611_Km0783)-1);

% Reaction: id = r_0622, name = formate-tetrahydrofolate ligase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0622_FLUX_VALUE=0.0362397868726823;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0622_Vmax=1.08719360618047;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0622_Keq=2.0;
	% Local Parameter:   id =  Km0467, name = Km0467
	reaction_r_0622_Km0467=0.1;
	% Local Parameter:   id =  Km0867, name = Km0867
	reaction_r_0622_Km0867=0.1;
	% Local Parameter:   id =  Km0337, name = Km0337
	reaction_r_0622_Km0337=0.1;
	% Local Parameter:   id =  Km0133, name = Km0133
	reaction_r_0622_Km0133=0.1;
	% Local Parameter:   id =  Km0421, name = Km0421
	reaction_r_0622_Km0421=0.1;
	% Local Parameter:   id =  Km1430, name = Km1430
	reaction_r_0622_Km1430=0.1;

	reaction_r_0622=compartment_cell*reaction_r_0622_Vmax*(x(139)*x(217)*x(96)-x(32)*x(132)*x(336)/reaction_r_0622_Keq)/(reaction_r_0622_Km0467*reaction_r_0622_Km0867*reaction_r_0622_Km0337)/((1+x(139)/reaction_r_0622_Km0467)*(1+x(217)/reaction_r_0622_Km0867)*(1+x(96)/reaction_r_0622_Km0337)+(1+x(32)/reaction_r_0622_Km0133)*(1+x(132)/reaction_r_0622_Km0421)*(1+x(336)/reaction_r_0622_Km1430)-1);

% Reaction: id = r_0632, name = fumarase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0632_FLUX_VALUE=0.143116459375637;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0632_Vmax=0.858698756253822;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0632_Keq=2.0;
	% Local Parameter:   id =  Km0875, name = Km0875
	reaction_r_0632_Km0875=0.1;
	% Local Parameter:   id =  Km1138, name = Km1138
	reaction_r_0632_Km1138=0.1;

	reaction_r_0632=compartment_cell*reaction_r_0632_Vmax*(x(218)-x(273)/reaction_r_0632_Keq)/reaction_r_0632_Km0875/(1+x(218)/reaction_r_0632_Km0875+1+x(273)/reaction_r_0632_Km1138-1);

% Reaction: id = r_0648, name = GAR transformylase-T	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0648_FLUX_VALUE=0.0614208132382477;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0648_Vmax=1.84262439714743;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0648_Keq=2.0;
	% Local Parameter:   id =  Km0467, name = Km0467
	reaction_r_0648_Km0467=0.1;
	% Local Parameter:   id =  Km0867, name = Km0867
	reaction_r_0648_Km0867=0.1;
	% Local Parameter:   id =  Km1318, name = Km1318
	reaction_r_0648_Km1318=0.1;
	% Local Parameter:   id =  Km0421, name = Km0421
	reaction_r_0648_Km0421=0.1;
	% Local Parameter:   id =  Km1322, name = Km1322
	reaction_r_0648_Km1322=0.1;
	% Local Parameter:   id =  Km1430, name = Km1430
	reaction_r_0648_Km1430=0.1;

	reaction_r_0648=compartment_cell*reaction_r_0648_Vmax*(x(139)*x(217)*x(309)-x(132)*x(311)*x(336)/reaction_r_0648_Keq)/(reaction_r_0648_Km0467*reaction_r_0648_Km0867*reaction_r_0648_Km1318)/((1+x(139)/reaction_r_0648_Km0467)*(1+x(217)/reaction_r_0648_Km0867)*(1+x(309)/reaction_r_0648_Km1318)+(1+x(132)/reaction_r_0648_Km0421)*(1+x(311)/reaction_r_0648_Km1322)*(1+x(336)/reaction_r_0648_Km1430)-1);

% Reaction: id = r_0655, name = geranyltranstransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0655_FLUX_VALUE=3.85076521030325E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0655_Vmax=5.39107129442455E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0655_Keq=2.0;
	% Local Parameter:   id =  Km0903, name = Km0903
	reaction_r_0655_Km0903=0.1;
	% Local Parameter:   id =  Km1028, name = Km1028
	reaction_r_0655_Km1028=0.1;
	% Local Parameter:   id =  Km0826, name = Km0826
	reaction_r_0655_Km0826=0.1;
	% Local Parameter:   id =  Km0783, name = Km0783
	reaction_r_0655_Km0783=0.1;

	reaction_r_0655=compartment_cell*reaction_r_0655_Vmax*(x(220)*x(247)-x(209)*x(198)/reaction_r_0655_Keq)/(reaction_r_0655_Km0903*reaction_r_0655_Km1028)/((1+x(220)/reaction_r_0655_Km0903)*(1+x(247)/reaction_r_0655_Km1028)+(1+x(209)/reaction_r_0655_Km0826)*(1+x(198)/reaction_r_0655_Km0783)-1);

% Reaction: id = r_0658, name = glucosamine-1-phosphate N-acetyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0658_FLUX_VALUE=0.0130870610456735;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0658_Vmax=0.183218854639429;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0658_Keq=2.0;
	% Local Parameter:   id =  Km0395, name = Km0395
	reaction_r_0658_Km0395=0.1;
	% Local Parameter:   id =  Km0653, name = Km0653
	reaction_r_0658_Km0653=0.1;
	% Local Parameter:   id =  Km1287, name = Km1287
	reaction_r_0658_Km1287=0.1;
	% Local Parameter:   id =  Km0555, name = Km0555
	reaction_r_0658_Km0555=0.1;

	reaction_r_0658=compartment_cell*reaction_r_0658_Vmax*(x(125)*x(176)-x(302)*x(162)/reaction_r_0658_Keq)/(reaction_r_0658_Km0395*reaction_r_0658_Km0653)/((1+x(125)/reaction_r_0658_Km0395)*(1+x(176)/reaction_r_0658_Km0653)+(1+x(302)/reaction_r_0658_Km1287)*(1+x(162)/reaction_r_0658_Km0555)-1);

% Reaction: id = r_0660, name = glucose 6-phosphate dehydrogenase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0660_FLUX_VALUE=0.879863512997714;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0660_Vmax=12.318089181968;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0660_Keq=2.0;
	% Local Parameter:   id =  Km0663, name = Km0663
	reaction_r_0660_Km0663=0.1;
	% Local Parameter:   id =  Km1335, name = Km1335
	reaction_r_0660_Km1335=0.1;
	% Local Parameter:   id =  Km0370, name = Km0370
	reaction_r_0660_Km0370=0.1;
	% Local Parameter:   id =  Km1336, name = Km1336
	reaction_r_0660_Km1336=0.1;

	reaction_r_0660=compartment_cell*reaction_r_0660_Vmax*(x(179)*x(316)-x(114)*x(317)/reaction_r_0660_Keq)/(reaction_r_0660_Km0663*reaction_r_0660_Km1335)/((1+x(179)/reaction_r_0660_Km0663)*(1+x(316)/reaction_r_0660_Km1335)+(1+x(114)/reaction_r_0660_Km0370)*(1+x(317)/reaction_r_0660_Km1336)-1);

% Reaction: id = r_0664, name = glucose-6-phosphate isomerase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0664_FLUX_VALUE=0.0545285720060003;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0664_Vmax=0.327171432036002;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0664_Keq=2.0;
	% Local Parameter:   id =  Km0663, name = Km0663
	reaction_r_0664_Km0663=0.1;
	% Local Parameter:   id =  Km0627, name = Km0627
	reaction_r_0664_Km0627=0.1;

	reaction_r_0664=compartment_cell*reaction_r_0664_Vmax*(x(179)-x(175)/reaction_r_0664_Keq)/reaction_r_0664_Km0663/(1+x(179)/reaction_r_0664_Km0663+1+x(175)/reaction_r_0664_Km0627-1);

% Reaction: id = r_0673, name = glutamate 5-kinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0673_FLUX_VALUE=0.0306260499279916;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0673_Vmax=0.428764698991882;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0673_Keq=2.0;
	% Local Parameter:   id =  Km0467, name = Km0467
	reaction_r_0673_Km0467=0.1;
	% Local Parameter:   id =  Km1095, name = Km1095
	reaction_r_0673_Km1095=0.1;
	% Local Parameter:   id =  Km0421, name = Km0421
	reaction_r_0673_Km0421=0.1;
	% Local Parameter:   id =  Km1099, name = Km1099
	reaction_r_0673_Km1099=0.1;

	reaction_r_0673=compartment_cell*reaction_r_0673_Vmax*(x(139)*x(259)-x(132)*x(261)/reaction_r_0673_Keq)/(reaction_r_0673_Km0467*reaction_r_0673_Km1095)/((1+x(139)/reaction_r_0673_Km0467)*(1+x(259)/reaction_r_0673_Km1095)+(1+x(132)/reaction_r_0673_Km0421)*(1+x(261)/reaction_r_0673_Km1099)-1);

% Reaction: id = r_0675, name = glutamate dehydrogenase (NADP)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0675_FLUX_VALUE=1.17502637474065;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0675_Vmax=25.8505802442943;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0675_Keq=20.0;
	% Local Parameter:   id =  Km0233, name = Km0233
	reaction_r_0675_Km0233=0.1;
	% Local Parameter:   id =  Km1336, name = Km1336
	reaction_r_0675_Km1336=0.1;
	% Local Parameter:   id =  Km0451, name = Km0451
	reaction_r_0675_Km0451=0.1;
	% Local Parameter:   id =  Km1095, name = Km1095
	reaction_r_0675_Km1095=0.1;
	% Local Parameter:   id =  Km1335, name = Km1335
	reaction_r_0675_Km1335=0.1;

	reaction_r_0675=compartment_cell*reaction_r_0675_Vmax*(x(52)*x(317)*x(136)-x(259)*x(316)/reaction_r_0675_Keq)/(reaction_r_0675_Km0233*reaction_r_0675_Km1336*reaction_r_0675_Km0451)/((1+x(52)/reaction_r_0675_Km0233)*(1+x(317)/reaction_r_0675_Km1336)*(1+x(136)/reaction_r_0675_Km0451)+(1+x(259)/reaction_r_0675_Km1095)*(1+x(316)/reaction_r_0675_Km1335)-1);

% Reaction: id = r_0676, name = glutamate racemase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0676_FLUX_VALUE=0.00384799487562186;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0676_Vmax=0.0230879692537312;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0676_Keq=2.0;
	% Local Parameter:   id =  Km1095, name = Km1095
	reaction_r_0676_Km1095=0.1;
	% Local Parameter:   id =  Km0671, name = Km0671
	reaction_r_0676_Km0671=0.1;

	reaction_r_0676=compartment_cell*reaction_r_0676_Vmax*(x(259)-x(180)/reaction_r_0676_Keq)/reaction_r_0676_Km1095/(1+x(259)/reaction_r_0676_Km1095+1+x(180)/reaction_r_0676_Km0671-1);

% Reaction: id = r_0678, name = glutamate-1-semialdehyde aminotransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0678_FLUX_VALUE=4.94227707563336E-4;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0678_Vmax=0.00296536624538002;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0678_Keq=2.0;
	% Local Parameter:   id =  Km1098, name = Km1098
	reaction_r_0678_Km1098=0.1;
	% Local Parameter:   id =  Km0345, name = Km0345
	reaction_r_0678_Km0345=0.1;

	reaction_r_0678=compartment_cell*reaction_r_0678_Vmax*(x(260)-x(101)/reaction_r_0678_Keq)/reaction_r_0678_Km1098/(1+x(260)/reaction_r_0678_Km1098+1+x(101)/reaction_r_0678_Km0345-1);

% Reaction: id = r_0679, name = glutamate-5-semialdehyde dehydrogenase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0679_FLUX_VALUE=0.0306260499279916;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0679_Vmax=0.673773098415815;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0679_Keq=0.2;
	% Local Parameter:   id =  Km1099, name = Km1099
	reaction_r_0679_Km1099=0.1;
	% Local Parameter:   id =  Km1336, name = Km1336
	reaction_r_0679_Km1336=0.1;
	% Local Parameter:   id =  Km1100, name = Km1100
	reaction_r_0679_Km1100=0.1;
	% Local Parameter:   id =  Km1335, name = Km1335
	reaction_r_0679_Km1335=0.1;
	% Local Parameter:   id =  Km1430, name = Km1430
	reaction_r_0679_Km1430=0.1;

	reaction_r_0679=compartment_cell*reaction_r_0679_Vmax*(x(261)*x(317)-x(262)*x(316)*x(336)/reaction_r_0679_Keq)/(reaction_r_0679_Km1099*reaction_r_0679_Km1336)/((1+x(261)/reaction_r_0679_Km1099)*(1+x(317)/reaction_r_0679_Km1336)+(1+x(262)/reaction_r_0679_Km1100)*(1+x(316)/reaction_r_0679_Km1335)*(1+x(336)/reaction_r_0679_Km1430)-1);

% Reaction: id = r_0682, name = glutamine phosphoribosyldiphosphate amidotransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0682_FLUX_VALUE=0.0614208132382202;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0682_Vmax=1.35125789124084;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0682_Keq=0.2;
	% Local Parameter:   id =  Km1101, name = Km1101
	reaction_r_0682_Km1101=0.1;
	% Local Parameter:   id =  Km0360, name = Km0360
	reaction_r_0682_Km0360=0.1;
	% Local Parameter:   id =  Km1095, name = Km1095
	reaction_r_0682_Km1095=0.1;
	% Local Parameter:   id =  Km0783, name = Km0783
	reaction_r_0682_Km0783=0.1;
	% Local Parameter:   id =  Km0361, name = Km0361
	reaction_r_0682_Km0361=0.1;

	reaction_r_0682=compartment_cell*reaction_r_0682_Vmax*(x(263)*x(107)-x(259)*x(198)*x(108)/reaction_r_0682_Keq)/(reaction_r_0682_Km1101*reaction_r_0682_Km0360)/((1+x(263)/reaction_r_0682_Km1101)*(1+x(107)/reaction_r_0682_Km0360)+(1+x(259)/reaction_r_0682_Km1095)*(1+x(198)/reaction_r_0682_Km0783)*(1+x(108)/reaction_r_0682_Km0361)-1);

% Reaction: id = r_0683, name = glutamine synthetase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0683_FLUX_VALUE=0.249469746398485;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0683_Vmax=7.48409239195455;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0683_Keq=2.0;
	% Local Parameter:   id =  Km0467, name = Km0467
	reaction_r_0683_Km0467=0.1;
	% Local Parameter:   id =  Km1095, name = Km1095
	reaction_r_0683_Km1095=0.1;
	% Local Parameter:   id =  Km0451, name = Km0451
	reaction_r_0683_Km0451=0.1;
	% Local Parameter:   id =  Km0421, name = Km0421
	reaction_r_0683_Km0421=0.1;
	% Local Parameter:   id =  Km1101, name = Km1101
	reaction_r_0683_Km1101=0.1;
	% Local Parameter:   id =  Km1430, name = Km1430
	reaction_r_0683_Km1430=0.1;

	reaction_r_0683=compartment_cell*reaction_r_0683_Vmax*(x(139)*x(259)*x(136)-x(132)*x(263)*x(336)/reaction_r_0683_Keq)/(reaction_r_0683_Km0467*reaction_r_0683_Km1095*reaction_r_0683_Km0451)/((1+x(139)/reaction_r_0683_Km0467)*(1+x(259)/reaction_r_0683_Km1095)*(1+x(136)/reaction_r_0683_Km0451)+(1+x(132)/reaction_r_0683_Km0421)*(1+x(263)/reaction_r_0683_Km1101)*(1+x(336)/reaction_r_0683_Km1430)-1);

% Reaction: id = r_0684, name = glutamine-fructose-6-phosphate transaminase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0684_FLUX_VALUE=0.0130870610456636;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0684_Vmax=0.18321885463929;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0684_Keq=2.0;
	% Local Parameter:   id =  Km0627, name = Km0627
	reaction_r_0684_Km0627=0.1;
	% Local Parameter:   id =  Km1101, name = Km1101
	reaction_r_0684_Km1101=0.1;
	% Local Parameter:   id =  Km0654, name = Km0654
	reaction_r_0684_Km0654=0.1;
	% Local Parameter:   id =  Km1095, name = Km1095
	reaction_r_0684_Km1095=0.1;

	reaction_r_0684=compartment_cell*reaction_r_0684_Vmax*(x(175)*x(263)-x(177)*x(259)/reaction_r_0684_Keq)/(reaction_r_0684_Km0627*reaction_r_0684_Km1101)/((1+x(175)/reaction_r_0684_Km0627)*(1+x(263)/reaction_r_0684_Km1101)+(1+x(177)/reaction_r_0684_Km0654)*(1+x(259)/reaction_r_0684_Km1095)-1);

% Reaction: id = r_0686, name = glutamyl-tRNA reductase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0686_FLUX_VALUE=4.94227707563336E-4;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0686_Vmax=0.0108730095663934;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0686_Keq=0.2;
	% Local Parameter:   id =  Km1105, name = Km1105
	reaction_r_0686_Km1105=0.1;
	% Local Parameter:   id =  Km1336, name = Km1336
	reaction_r_0686_Km1336=0.1;
	% Local Parameter:   id =  Km1098, name = Km1098
	reaction_r_0686_Km1098=0.1;
	% Local Parameter:   id =  Km1335, name = Km1335
	reaction_r_0686_Km1335=0.1;
	% Local Parameter:   id =  Km1690, name = Km1690
	reaction_r_0686_Km1690=0.1;

	reaction_r_0686=compartment_cell*reaction_r_0686_Vmax*(x(264)*x(317)-x(260)*x(316)*x(378)/reaction_r_0686_Keq)/(reaction_r_0686_Km1105*reaction_r_0686_Km1336)/((1+x(264)/reaction_r_0686_Km1105)*(1+x(317)/reaction_r_0686_Km1336)+(1+x(260)/reaction_r_0686_Km1098)*(1+x(316)/reaction_r_0686_Km1335)*(1+x(378)/reaction_r_0686_Km1690)-1);

% Reaction: id = r_0687, name = Glutamyl-tRNA synthetase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0687_FLUX_VALUE=4.94227707563336E-4;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0687_Vmax=0.0148268312269001;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0687_Keq=2.0;
	% Local Parameter:   id =  Km0467, name = Km0467
	reaction_r_0687_Km0467=0.1;
	% Local Parameter:   id =  Km1095, name = Km1095
	reaction_r_0687_Km1095=0.1;
	% Local Parameter:   id =  Km1690, name = Km1690
	reaction_r_0687_Km1690=0.1;
	% Local Parameter:   id =  Km0454, name = Km0454
	reaction_r_0687_Km0454=0.1;
	% Local Parameter:   id =  Km1105, name = Km1105
	reaction_r_0687_Km1105=0.1;
	% Local Parameter:   id =  Km0783, name = Km0783
	reaction_r_0687_Km0783=0.1;

	reaction_r_0687=compartment_cell*reaction_r_0687_Vmax*(x(139)*x(259)*x(378)-x(137)*x(264)*x(198)/reaction_r_0687_Keq)/(reaction_r_0687_Km0467*reaction_r_0687_Km1095*reaction_r_0687_Km1690)/((1+x(139)/reaction_r_0687_Km0467)*(1+x(259)/reaction_r_0687_Km1095)*(1+x(378)/reaction_r_0687_Km1690)+(1+x(137)/reaction_r_0687_Km0454)*(1+x(264)/reaction_r_0687_Km1105)*(1+x(198)/reaction_r_0687_Km0783)-1);

% Reaction: id = r_0695, name = glyceraldehyde-3-phosphate dehydrogenase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0695_FLUX_VALUE=0.787832256050213;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0695_Vmax=17.3323096331047;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0695_Keq=20.0;
	% Local Parameter:   id =  Km0913, name = Km0913
	reaction_r_0695_Km0913=0.1;
	% Local Parameter:   id =  Km1333, name = Km1333
	reaction_r_0695_Km1333=0.1;
	% Local Parameter:   id =  Km1430, name = Km1430
	reaction_r_0695_Km1430=0.1;
	% Local Parameter:   id =  Km0307, name = Km0307
	reaction_r_0695_Km0307=0.1;
	% Local Parameter:   id =  Km1334, name = Km1334
	reaction_r_0695_Km1334=0.1;

	reaction_r_0695=compartment_cell*reaction_r_0695_Vmax*(x(222)*x(314)*x(336)-x(79)*x(315)/reaction_r_0695_Keq)/(reaction_r_0695_Km0913*reaction_r_0695_Km1333*reaction_r_0695_Km1430)/((1+x(222)/reaction_r_0695_Km0913)*(1+x(314)/reaction_r_0695_Km1333)*(1+x(336)/reaction_r_0695_Km1430)+(1+x(79)/reaction_r_0695_Km0307)*(1+x(315)/reaction_r_0695_Km1334)-1);

% Reaction: id = r_0697, name = glycerate kinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0697_FLUX_VALUE=4.63338475844011E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0697_Vmax=6.48673866181615E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0697_Keq=2.0;
	% Local Parameter:   id =  Km0467, name = Km0467
	reaction_r_0697_Km0467=0.1;
	% Local Parameter:   id =  Km0029, name = Km0029
	reaction_r_0697_Km0029=0.1;
	% Local Parameter:   id =  Km0675, name = Km0675
	reaction_r_0697_Km0675=0.1;
	% Local Parameter:   id =  Km0421, name = Km0421
	reaction_r_0697_Km0421=0.1;

	reaction_r_0697=compartment_cell*reaction_r_0697_Vmax*(x(139)*x(6)-x(181)*x(132)/reaction_r_0697_Keq)/(reaction_r_0697_Km0467*reaction_r_0697_Km0029)/((1+x(139)/reaction_r_0697_Km0467)*(1+x(6)/reaction_r_0697_Km0029)+(1+x(181)/reaction_r_0697_Km0675)*(1+x(132)/reaction_r_0697_Km0421)-1);

% Reaction: id = r_0706, name = glycerol-3-phosphate acyltransferase (C16:0)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0706_FLUX_VALUE=0.00884013797513179;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0706_Vmax=0.123761931651845;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0706_Keq=2.0;
	% Local Parameter:   id =  Km0920, name = Km0920
	reaction_r_0706_Km0920=0.1;
	% Local Parameter:   id =  Km1411, name = Km1411
	reaction_r_0706_Km1411=0.1;
	% Local Parameter:   id =  Km0121, name = Km0121
	reaction_r_0706_Km0121=0.1;
	% Local Parameter:   id =  Km0397, name = Km0397
	reaction_r_0706_Km0397=0.1;

	reaction_r_0706=compartment_cell*reaction_r_0706_Vmax*(x(223)*x(332)-x(29)*x(126)/reaction_r_0706_Keq)/(reaction_r_0706_Km0920*reaction_r_0706_Km1411)/((1+x(223)/reaction_r_0706_Km0920)*(1+x(332)/reaction_r_0706_Km1411)+(1+x(29)/reaction_r_0706_Km0121)*(1+x(126)/reaction_r_0706_Km0397)-1);

% Reaction: id = r_0707, name = glycerol-3-phosphate acyltransferase (C16:1)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0707_FLUX_VALUE=0.0104178435776096;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0707_Vmax=0.145849810086534;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0707_Keq=2.0;
	% Local Parameter:   id =  Km0920, name = Km0920
	reaction_r_0707_Km0920=0.1;
	% Local Parameter:   id =  Km0533, name = Km0533
	reaction_r_0707_Km0533=0.1;
	% Local Parameter:   id =  Km0119, name = Km0119
	reaction_r_0707_Km0119=0.1;
	% Local Parameter:   id =  Km0397, name = Km0397
	reaction_r_0707_Km0397=0.1;

	reaction_r_0707=compartment_cell*reaction_r_0707_Vmax*(x(223)*x(156)-x(28)*x(126)/reaction_r_0707_Keq)/(reaction_r_0707_Km0920*reaction_r_0707_Km0533)/((1+x(223)/reaction_r_0707_Km0920)*(1+x(156)/reaction_r_0707_Km0533)+(1+x(28)/reaction_r_0707_Km0119)*(1+x(126)/reaction_r_0707_Km0397)-1);

% Reaction: id = r_0712, name = glycerol-3-phosphate dehydrogenase (NADP)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0712_FLUX_VALUE=0.0192579815535505;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0712_Vmax=0.269611741749707;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0712_Keq=2.0;
	% Local Parameter:   id =  Km0772, name = Km0772
	reaction_r_0712_Km0772=0.1;
	% Local Parameter:   id =  Km1336, name = Km1336
	reaction_r_0712_Km1336=0.1;
	% Local Parameter:   id =  Km0920, name = Km0920
	reaction_r_0712_Km0920=0.1;
	% Local Parameter:   id =  Km1335, name = Km1335
	reaction_r_0712_Km1335=0.1;

	reaction_r_0712=compartment_cell*reaction_r_0712_Vmax*(x(196)*x(317)-x(223)*x(316)/reaction_r_0712_Keq)/(reaction_r_0712_Km0772*reaction_r_0712_Km1336)/((1+x(196)/reaction_r_0712_Km0772)*(1+x(317)/reaction_r_0712_Km1336)+(1+x(223)/reaction_r_0712_Km0920)*(1+x(316)/reaction_r_0712_Km1335)-1);

% Reaction: id = r_0724, name = glycine C-acetyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0724_FLUX_VALUE=0.0414265806134066;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0724_Vmax=0.579972128587692;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0724_Keq=2.0;
	% Local Parameter:   id =  Km1040, name = Km1040
	reaction_r_0724_Km1040=0.1;
	% Local Parameter:   id =  Km0555, name = Km0555
	reaction_r_0724_Km0555=0.1;
	% Local Parameter:   id =  Km0395, name = Km0395
	reaction_r_0724_Km0395=0.1;
	% Local Parameter:   id =  Km0929, name = Km0929
	reaction_r_0724_Km0929=0.1;

	reaction_r_0724=compartment_cell*reaction_r_0724_Vmax*(x(250)*x(162)-x(125)*x(224)/reaction_r_0724_Keq)/(reaction_r_0724_Km1040*reaction_r_0724_Km0555)/((1+x(250)/reaction_r_0724_Km1040)*(1+x(162)/reaction_r_0724_Km0555)+(1+x(125)/reaction_r_0724_Km0395)*(1+x(224)/reaction_r_0724_Km0929)-1);

% Reaction: id = r_0726, name = glycine hydroxymethyltransferase, reversible	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0726_FLUX_VALUE=0.0634230033724642;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0726_Vmax=0.887922047214499;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0726_Keq=2.0;
	% Local Parameter:   id =  Km1170, name = Km1170
	reaction_r_0726_Km1170=0.1;
	% Local Parameter:   id =  Km0337, name = Km0337
	reaction_r_0726_Km0337=0.1;
	% Local Parameter:   id =  Km0929, name = Km0929
	reaction_r_0726_Km0929=0.1;
	% Local Parameter:   id =  Km0336, name = Km0336
	reaction_r_0726_Km0336=0.1;

	reaction_r_0726=compartment_cell*reaction_r_0726_Vmax*(x(277)*x(96)-x(224)*x(95)/reaction_r_0726_Keq)/(reaction_r_0726_Km1170*reaction_r_0726_Km0337)/((1+x(277)/reaction_r_0726_Km1170)*(1+x(96)/reaction_r_0726_Km0337)+(1+x(224)/reaction_r_0726_Km0929)*(1+x(95)/reaction_r_0726_Km0336)-1);

% Reaction: id = r_0731, name = Glycolaldehyde dehydrogenase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0731_FLUX_VALUE=9.26676951688061E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0731_Vmax=0.00129734773236329;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0731_Keq=2.0;
	% Local Parameter:   id =  Km0936, name = Km0936
	reaction_r_0731_Km0936=0.1;
	% Local Parameter:   id =  Km1333, name = Km1333
	reaction_r_0731_Km1333=0.1;
	% Local Parameter:   id =  Km0937, name = Km0937
	reaction_r_0731_Km0937=0.1;
	% Local Parameter:   id =  Km1334, name = Km1334
	reaction_r_0731_Km1334=0.1;

	reaction_r_0731=compartment_cell*reaction_r_0731_Vmax*(x(225)*x(314)-x(226)*x(315)/reaction_r_0731_Keq)/(reaction_r_0731_Km0936*reaction_r_0731_Km1333)/((1+x(225)/reaction_r_0731_Km0936)*(1+x(314)/reaction_r_0731_Km1333)+(1+x(226)/reaction_r_0731_Km0937)*(1+x(315)/reaction_r_0731_Km1334)-1);

% Reaction: id = r_0734, name = Glycolate oxidase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0734_FLUX_VALUE=4.63338477495988E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0734_Vmax=6.48673868494383E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0734_Keq=2.0;
	% Local Parameter:   id =  Km0937, name = Km0937
	reaction_r_0734_Km0937=0.1;
	% Local Parameter:   id =  Km1732, name = Km1732
	reaction_r_0734_Km1732=0.1;
	% Local Parameter:   id =  Km0941, name = Km0941
	reaction_r_0734_Km0941=0.1;
	% Local Parameter:   id =  Km1731, name = Km1731
	reaction_r_0734_Km1731=0.1;

	reaction_r_0734=compartment_cell*reaction_r_0734_Vmax*(x(226)*x(382)-x(227)*x(381)/reaction_r_0734_Keq)/(reaction_r_0734_Km0937*reaction_r_0734_Km1732)/((1+x(226)/reaction_r_0734_Km0937)*(1+x(382)/reaction_r_0734_Km1732)+(1+x(227)/reaction_r_0734_Km0941)*(1+x(381)/reaction_r_0734_Km1731)-1);

% Reaction: id = r_0735, name = Glycolate oxidase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0735_FLUX_VALUE=4.63338474145563E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0735_Vmax=6.48673863803788E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0735_Keq=2.0;
	% Local Parameter:   id =  Km0937, name = Km0937
	reaction_r_0735_Km0937=0.1;
	% Local Parameter:   id =  Km1240, name = Km1240
	reaction_r_0735_Km1240=0.1;
	% Local Parameter:   id =  Km0941, name = Km0941
	reaction_r_0735_Km0941=0.1;
	% Local Parameter:   id =  Km1239, name = Km1239
	reaction_r_0735_Km1239=0.1;

	reaction_r_0735=compartment_cell*reaction_r_0735_Vmax*(x(226)*x(289)-x(227)*x(288)/reaction_r_0735_Keq)/(reaction_r_0735_Km0937*reaction_r_0735_Km1240)/((1+x(226)/reaction_r_0735_Km0937)*(1+x(289)/reaction_r_0735_Km1240)+(1+x(227)/reaction_r_0735_Km0941)*(1+x(288)/reaction_r_0735_Km1239)-1);

% Reaction: id = r_0739, name = glyoxalate carboligase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0739_FLUX_VALUE=4.63338475820775E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0739_Vmax=6.48673866149085E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0739_Keq=2.0;
	% Local Parameter:   id =  Km0941, name = Km0941
	reaction_r_0739_Km0941=0.1;
	% Local Parameter:   id =  Km0214, name = Km0214
	reaction_r_0739_Km0214=0.1;
	% Local Parameter:   id =  Km0543, name = Km0543
	reaction_r_0739_Km0543=0.1;

	reaction_r_0739=compartment_cell*reaction_r_0739_Vmax*(x(227)^2-x(45)*x(160)/reaction_r_0739_Keq)/reaction_r_0739_Km0941^2/((1+x(227)/reaction_r_0739_Km0941)^2+(1+x(45)/reaction_r_0739_Km0214)*(1+x(160)/reaction_r_0739_Km0543)-1);

% Reaction: id = r_0741, name = GMP synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0741_FLUX_VALUE=0.0337597140054242;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0741_Vmax=1.55294684424951;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0741_Keq=0.2;
	% Local Parameter:   id =  Km0467, name = Km0467
	reaction_r_0741_Km0467=0.1;
	% Local Parameter:   id =  Km1101, name = Km1101
	reaction_r_0741_Km1101=0.1;
	% Local Parameter:   id =  Km1799, name = Km1799
	reaction_r_0741_Km1799=0.1;
	% Local Parameter:   id =  Km0454, name = Km0454
	reaction_r_0741_Km0454=0.1;
	% Local Parameter:   id =  Km1095, name = Km1095
	reaction_r_0741_Km1095=0.1;
	% Local Parameter:   id =  Km0942, name = Km0942
	reaction_r_0741_Km0942=0.1;
	% Local Parameter:   id =  Km0783, name = Km0783
	reaction_r_0741_Km0783=0.1;

	reaction_r_0741=compartment_cell*reaction_r_0741_Vmax*(x(139)*x(263)*x(401)-x(137)*x(259)*x(228)*x(198)/reaction_r_0741_Keq)/(reaction_r_0741_Km0467*reaction_r_0741_Km1101*reaction_r_0741_Km1799)/((1+x(139)/reaction_r_0741_Km0467)*(1+x(263)/reaction_r_0741_Km1101)*(1+x(401)/reaction_r_0741_Km1799)+(1+x(137)/reaction_r_0741_Km0454)*(1+x(259)/reaction_r_0741_Km1095)*(1+x(228)/reaction_r_0741_Km0942)*(1+x(198)/reaction_r_0741_Km0783)-1);

% Reaction: id = r_0744, name = GTP cyclohydrolase I	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0744_FLUX_VALUE=9.26676951688061E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0744_Vmax=9.26676951688061E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0744_Keq=0.2;
	% Local Parameter:   id =  Km0945, name = Km0945
	reaction_r_0744_Km0945=0.1;
	% Local Parameter:   id =  Km0191, name = Km0191
	reaction_r_0744_Km0191=0.1;
	% Local Parameter:   id =  Km0867, name = Km0867
	reaction_r_0744_Km0867=0.1;

	reaction_r_0744=compartment_cell*reaction_r_0744_Vmax*(x(229)-x(39)*x(217)/reaction_r_0744_Keq)/reaction_r_0744_Km0945/(1+x(229)/reaction_r_0744_Km0945+(1+x(39)/reaction_r_0744_Km0191)*(1+x(217)/reaction_r_0744_Km0867)-1);

% Reaction: id = r_0745, name = GTP cyclohydrolase II (25drapp)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0745_FLUX_VALUE=6.17784634458656E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0745_Vmax=0.00111201234202558;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0745_Keq=0.02;
	% Local Parameter:   id =  Km0945, name = Km0945
	reaction_r_0745_Km0945=0.1;
	% Local Parameter:   id =  Km0160, name = Km0160
	reaction_r_0745_Km0160=0.1;
	% Local Parameter:   id =  Km0867, name = Km0867
	reaction_r_0745_Km0867=0.1;
	% Local Parameter:   id =  Km0783, name = Km0783
	reaction_r_0745_Km0783=0.1;

	reaction_r_0745=compartment_cell*reaction_r_0745_Vmax*(x(229)-x(37)*x(217)*x(198)/reaction_r_0745_Keq)/reaction_r_0745_Km0945/(1+x(229)/reaction_r_0745_Km0945+(1+x(37)/reaction_r_0745_Km0160)*(1+x(217)/reaction_r_0745_Km0867)*(1+x(198)/reaction_r_0745_Km0783)-1);

% Reaction: id = r_0754, name = guanylate kinase (GMP:ATP)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0754_FLUX_VALUE=0.0337597140054224;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0754_Vmax=0.472635996075914;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0754_Keq=2.0;
	% Local Parameter:   id =  Km0467, name = Km0467
	reaction_r_0754_Km0467=0.1;
	% Local Parameter:   id =  Km0942, name = Km0942
	reaction_r_0754_Km0942=0.1;
	% Local Parameter:   id =  Km0421, name = Km0421
	reaction_r_0754_Km0421=0.1;
	% Local Parameter:   id =  Km0896, name = Km0896
	reaction_r_0754_Km0896=0.1;

	reaction_r_0754=compartment_cell*reaction_r_0754_Vmax*(x(139)*x(228)-x(132)*x(219)/reaction_r_0754_Keq)/(reaction_r_0754_Km0467*reaction_r_0754_Km0942)/((1+x(139)/reaction_r_0754_Km0467)*(1+x(228)/reaction_r_0754_Km0942)+(1+x(132)/reaction_r_0754_Km0421)*(1+x(219)/reaction_r_0754_Km0896)-1);

% Reaction: id = r_0755, name = HCO3 equilibration reaction	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0755_FLUX_VALUE=0.0721728976957654;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0755_Vmax=0.433037386174592;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0755_Keq=2.0;
	% Local Parameter:   id =  Km0543, name = Km0543
	reaction_r_0755_Km0543=0.1;
	% Local Parameter:   id =  Km0474, name = Km0474
	reaction_r_0755_Km0474=0.1;

	reaction_r_0755=compartment_cell*reaction_r_0755_Vmax*(x(160)-x(141)/reaction_r_0755_Keq)/reaction_r_0755_Km0543/(1+x(160)/reaction_r_0755_Km0543+1+x(141)/reaction_r_0755_Km0474-1);

% Reaction: id = r_0761, name = hexokinase (D-fructose:ATP)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0761_FLUX_VALUE=0.0545285700240656;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0761_Vmax=0.763399980336918;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0761_Keq=2.0;
	% Local Parameter:   id =  Km0467, name = Km0467
	reaction_r_0761_Km0467=0.1;
	% Local Parameter:   id =  Km0622, name = Km0622
	reaction_r_0761_Km0622=0.1;
	% Local Parameter:   id =  Km0421, name = Km0421
	reaction_r_0761_Km0421=0.1;
	% Local Parameter:   id =  Km0627, name = Km0627
	reaction_r_0761_Km0627=0.1;

	reaction_r_0761=compartment_cell*reaction_r_0761_Vmax*(x(139)*x(174)-x(132)*x(175)/reaction_r_0761_Keq)/(reaction_r_0761_Km0467*reaction_r_0761_Km0622)/((1+x(139)/reaction_r_0761_Km0467)*(1+x(174)/reaction_r_0761_Km0622)+(1+x(132)/reaction_r_0761_Km0421)*(1+x(175)/reaction_r_0761_Km0627)-1);

% Reaction: id = r_0762, name = hexokinase (D-glucose:ATP)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0762_FLUX_VALUE=0.912233393077452;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0762_Vmax=12.7712675030843;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0762_Keq=2.0;
	% Local Parameter:   id =  Km0467, name = Km0467
	reaction_r_0762_Km0467=0.1;
	% Local Parameter:   id =  Km0657, name = Km0657
	reaction_r_0762_Km0657=0.1;
	% Local Parameter:   id =  Km0421, name = Km0421
	reaction_r_0762_Km0421=0.1;
	% Local Parameter:   id =  Km0663, name = Km0663
	reaction_r_0762_Km0663=0.1;

	reaction_r_0762=compartment_cell*reaction_r_0762_Vmax*(x(139)*x(178)-x(132)*x(179)/reaction_r_0762_Keq)/(reaction_r_0762_Km0467*reaction_r_0762_Km0657)/((1+x(139)/reaction_r_0762_Km0467)*(1+x(178)/reaction_r_0762_Km0657)+(1+x(132)/reaction_r_0762_Km0421)*(1+x(179)/reaction_r_0762_Km0663)-1);

% Reaction: id = r_0763, name = histidinol dehydrogenase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0763_FLUX_VALUE=0.0131230753965474;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0763_Vmax=0.393692261896422;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0763_Keq=2.0;
	% Local Parameter:   id =  Km1109, name = Km1109
	reaction_r_0763_Km1109=0.1;
	% Local Parameter:   id =  Km1333, name = Km1333
	reaction_r_0763_Km1333=0.1;
	% Local Parameter:   id =  Km1106, name = Km1106
	reaction_r_0763_Km1106=0.1;
	% Local Parameter:   id =  Km1334, name = Km1334
	reaction_r_0763_Km1334=0.1;

	reaction_r_0763=compartment_cell*reaction_r_0763_Vmax*(x(266)*x(314)^2-x(265)*x(315)^2/reaction_r_0763_Keq)/(reaction_r_0763_Km1109*reaction_r_0763_Km1333^2)/((1+x(266)/reaction_r_0763_Km1109)*(1+x(314)/reaction_r_0763_Km1333)^2+(1+x(265)/reaction_r_0763_Km1106)*(1+x(315)/reaction_r_0763_Km1334)^2-1);

% Reaction: id = r_0764, name = histidinol-phosphatase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0764_FLUX_VALUE=0.0131230753965474;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0764_Vmax=0.131230753965474;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0764_Keq=0.2;
	% Local Parameter:   id =  Km1110, name = Km1110
	reaction_r_0764_Km1110=0.1;
	% Local Parameter:   id =  Km1109, name = Km1109
	reaction_r_0764_Km1109=0.1;
	% Local Parameter:   id =  Km1430, name = Km1430
	reaction_r_0764_Km1430=0.1;

	reaction_r_0764=compartment_cell*reaction_r_0764_Vmax*(x(267)-x(266)*x(336)/reaction_r_0764_Keq)/reaction_r_0764_Km1110/(1+x(267)/reaction_r_0764_Km1110+(1+x(266)/reaction_r_0764_Km1109)*(1+x(336)/reaction_r_0764_Km1430)-1);

% Reaction: id = r_0765, name = histidinol-phosphate transaminase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0765_FLUX_VALUE=0.0131230753965474;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0765_Vmax=0.183723055551664;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0765_Keq=2.0;
	% Local Parameter:   id =  Km1095, name = Km1095
	reaction_r_0765_Km1095=0.1;
	% Local Parameter:   id =  Km0263, name = Km0263
	reaction_r_0765_Km0263=0.1;
	% Local Parameter:   id =  Km0233, name = Km0233
	reaction_r_0765_Km0233=0.1;
	% Local Parameter:   id =  Km1110, name = Km1110
	reaction_r_0765_Km1110=0.1;

	reaction_r_0765=compartment_cell*reaction_r_0765_Vmax*(x(259)*x(57)-x(52)*x(267)/reaction_r_0765_Keq)/(reaction_r_0765_Km1095*reaction_r_0765_Km0263)/((1+x(259)/reaction_r_0765_Km1095)*(1+x(57)/reaction_r_0765_Km0263)+(1+x(52)/reaction_r_0765_Km0233)*(1+x(267)/reaction_r_0765_Km1110)-1);

% Reaction: id = r_0769, name = homoserine dehydrogenase (NADPH)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0769_FLUX_VALUE=0.179555156278507;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0769_Vmax=2.5137721878991;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0769_Keq=2.0;
	% Local Parameter:   id =  Km1075, name = Km1075
	reaction_r_0769_Km1075=0.1;
	% Local Parameter:   id =  Km1336, name = Km1336
	reaction_r_0769_Km1336=0.1;
	% Local Parameter:   id =  Km1113, name = Km1113
	reaction_r_0769_Km1113=0.1;
	% Local Parameter:   id =  Km1335, name = Km1335
	reaction_r_0769_Km1335=0.1;

	reaction_r_0769=compartment_cell*reaction_r_0769_Vmax*(x(255)*x(317)-x(269)*x(316)/reaction_r_0769_Keq)/(reaction_r_0769_Km1075*reaction_r_0769_Km1336)/((1+x(255)/reaction_r_0769_Km1075)*(1+x(317)/reaction_r_0769_Km1336)+(1+x(269)/reaction_r_0769_Km1113)*(1+x(316)/reaction_r_0769_Km1335)-1);

% Reaction: id = r_0770, name = homoserine kinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0770_FLUX_VALUE=0.158233967969303;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0770_Vmax=2.21527555157024;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0770_Keq=2.0;
	% Local Parameter:   id =  Km0467, name = Km0467
	reaction_r_0770_Km0467=0.1;
	% Local Parameter:   id =  Km1113, name = Km1113
	reaction_r_0770_Km1113=0.1;
	% Local Parameter:   id =  Km0421, name = Km0421
	reaction_r_0770_Km0421=0.1;
	% Local Parameter:   id =  Km1363, name = Km1363
	reaction_r_0770_Km1363=0.1;

	reaction_r_0770=compartment_cell*reaction_r_0770_Vmax*(x(139)*x(269)-x(132)*x(321)/reaction_r_0770_Keq)/(reaction_r_0770_Km0467*reaction_r_0770_Km1113)/((1+x(139)/reaction_r_0770_Km0467)*(1+x(269)/reaction_r_0770_Km1113)+(1+x(132)/reaction_r_0770_Km0421)*(1+x(321)/reaction_r_0770_Km1363)-1);

% Reaction: id = r_0771, name = homoserine O-succinyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0771_FLUX_VALUE=0.0213211883092039;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0771_Vmax=0.298496636328855;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0771_Keq=2.0;
	% Local Parameter:   id =  Km1113, name = Km1113
	reaction_r_0771_Km1113=0.1;
	% Local Parameter:   id =  Km1599, name = Km1599
	reaction_r_0771_Km1599=0.1;
	% Local Parameter:   id =  Km0555, name = Km0555
	reaction_r_0771_Km0555=0.1;
	% Local Parameter:   id =  Km1367, name = Km1367
	reaction_r_0771_Km1367=0.1;

	reaction_r_0771=compartment_cell*reaction_r_0771_Vmax*(x(269)*x(366)-x(162)*x(323)/reaction_r_0771_Keq)/(reaction_r_0771_Km1113*reaction_r_0771_Km1599)/((1+x(269)/reaction_r_0771_Km1113)*(1+x(366)/reaction_r_0771_Km1599)+(1+x(162)/reaction_r_0771_Km0555)*(1+x(323)/reaction_r_0771_Km1367)-1);

% Reaction: id = r_0775, name = Hydroxybenzoate octaprenyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0775_FLUX_VALUE=3.08892317229363E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0775_Vmax=4.32449244121108E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0775_Keq=2.0;
	% Local Parameter:   id =  Km0325, name = Km0325
	reaction_r_0775_Km0325=0.1;
	% Local Parameter:   id =  Km0435, name = Km0435
	reaction_r_0775_Km0435=0.1;
	% Local Parameter:   id =  Km0283, name = Km0283
	reaction_r_0775_Km0283=0.1;
	% Local Parameter:   id =  Km0783, name = Km0783
	reaction_r_0775_Km0783=0.1;

	reaction_r_0775=compartment_cell*reaction_r_0775_Vmax*(x(87)*x(133)-x(68)*x(198)/reaction_r_0775_Keq)/(reaction_r_0775_Km0325*reaction_r_0775_Km0435)/((1+x(87)/reaction_r_0775_Km0325)*(1+x(133)/reaction_r_0775_Km0435)+(1+x(68)/reaction_r_0775_Km0283)*(1+x(198)/reaction_r_0775_Km0783)-1);

% Reaction: id = r_0777, name = hydroxymethylbilane synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0777_FLUX_VALUE=6.1778463445417E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0777_Vmax=0.0058071755638692;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0777_Keq=0.2;
	% Local Parameter:   id =  Km1493, name = Km1493
	reaction_r_0777_Km1493=0.1;
	% Local Parameter:   id =  Km0998, name = Km0998
	reaction_r_0777_Km0998=0.1;
	% Local Parameter:   id =  Km0451, name = Km0451
	reaction_r_0777_Km0451=0.1;

	reaction_r_0777=compartment_cell*reaction_r_0777_Vmax*(x(344)^4-x(236)*x(136)^4/reaction_r_0777_Keq)/reaction_r_0777_Km1493^4/((1+x(344)/reaction_r_0777_Km1493)^4+(1+x(236)/reaction_r_0777_Km0998)*(1+x(136)/reaction_r_0777_Km0451)^4-1);

% Reaction: id = r_0784, name = Imidazole-glycerol-3-phosphate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0784_FLUX_VALUE=0.0131230753965474;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0784_Vmax=0.288707658724043;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0784_Keq=0.2;
	% Local Parameter:   id =  Km1101, name = Km1101
	reaction_r_0784_Km1101=0.1;
	% Local Parameter:   id =  Km0341, name = Km0341
	reaction_r_0784_Km0341=0.1;
	% Local Parameter:   id =  Km0343, name = Km0343
	reaction_r_0784_Km0343=0.1;
	% Local Parameter:   id =  Km0620, name = Km0620
	reaction_r_0784_Km0620=0.1;
	% Local Parameter:   id =  Km1095, name = Km1095
	reaction_r_0784_Km1095=0.1;

	reaction_r_0784=compartment_cell*reaction_r_0784_Vmax*(x(263)*x(97)-x(99)*x(172)*x(259)/reaction_r_0784_Keq)/(reaction_r_0784_Km1101*reaction_r_0784_Km0341)/((1+x(263)/reaction_r_0784_Km1101)*(1+x(97)/reaction_r_0784_Km0341)+(1+x(99)/reaction_r_0784_Km0343)*(1+x(172)/reaction_r_0784_Km0620)*(1+x(259)/reaction_r_0784_Km1095)-1);

% Reaction: id = r_0785, name = imidazoleglycerol-phosphate dehydratase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0785_FLUX_VALUE=0.0131230753965474;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0785_Vmax=0.0787384523792844;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0785_Keq=2.0;
	% Local Parameter:   id =  Km0620, name = Km0620
	reaction_r_0785_Km0620=0.1;
	% Local Parameter:   id =  Km0263, name = Km0263
	reaction_r_0785_Km0263=0.1;

	reaction_r_0785=compartment_cell*reaction_r_0785_Vmax*(x(172)-x(57)/reaction_r_0785_Keq)/reaction_r_0785_Km0620/(1+x(172)/reaction_r_0785_Km0620+1+x(57)/reaction_r_0785_Km0263-1);

% Reaction: id = r_0786, name = IMP cyclohydrolase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0786_FLUX_VALUE=0.0745129994030467;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0786_Vmax=0.44707799641828;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0786_Keq=2.0;
	% Local Parameter:   id =  Km0352, name = Km0352
	reaction_r_0786_Km0352=0.1;
	% Local Parameter:   id =  Km1006, name = Km1006
	reaction_r_0786_Km1006=0.1;

	reaction_r_0786=compartment_cell*reaction_r_0786_Vmax*(x(104)-x(238)/reaction_r_0786_Keq)/reaction_r_0786_Km0352/(1+x(104)/reaction_r_0786_Km0352+1+x(238)/reaction_r_0786_Km1006-1);

% Reaction: id = r_0787, name = IMP dehydrogenase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0787_FLUX_VALUE=0.0337597140054643;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0787_Vmax=0.4726359960765;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0787_Keq=2.0;
	% Local Parameter:   id =  Km1006, name = Km1006
	reaction_r_0787_Km1006=0.1;
	% Local Parameter:   id =  Km1333, name = Km1333
	reaction_r_0787_Km1333=0.1;
	% Local Parameter:   id =  Km1334, name = Km1334
	reaction_r_0787_Km1334=0.1;
	% Local Parameter:   id =  Km1799, name = Km1799
	reaction_r_0787_Km1799=0.1;

	reaction_r_0787=compartment_cell*reaction_r_0787_Vmax*(x(238)*x(314)-x(315)*x(401)/reaction_r_0787_Keq)/(reaction_r_0787_Km1006*reaction_r_0787_Km1333)/((1+x(238)/reaction_r_0787_Km1006)*(1+x(314)/reaction_r_0787_Km1333)+(1+x(315)/reaction_r_0787_Km1334)*(1+x(401)/reaction_r_0787_Km1799)-1);

% Reaction: id = r_0788, name = indole-3-glycerol-phosphate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0788_FLUX_VALUE=0.00787329117099325;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0788_Vmax=0.0787329117099325;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0788_Keq=0.2;
	% Local Parameter:   id =  Km0096, name = Km0096
	reaction_r_0788_Km0096=0.1;
	% Local Parameter:   id =  Km0493, name = Km0493
	reaction_r_0788_Km0493=0.1;
	% Local Parameter:   id =  Km0543, name = Km0543
	reaction_r_0788_Km0543=0.1;

	reaction_r_0788=compartment_cell*reaction_r_0788_Vmax*(x(23)-x(147)*x(160)/reaction_r_0788_Keq)/reaction_r_0788_Km0096/(1+x(23)/reaction_r_0788_Km0096+(1+x(147)/reaction_r_0788_Km0493)*(1+x(160)/reaction_r_0788_Km0543)-1);

% Reaction: id = r_0796, name = ISC [2Fe-2S] regeneration	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0796_FLUX_VALUE=2.77033467753811E-7;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0796_Vmax=6.09473629058384E-6;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0796_Keq=20.0;
	% Local Parameter:   id =  Km0377, name = Km0377
	reaction_r_0796_Km0377=0.1;
	% Local Parameter:   id =  Km1018, name = Km1018
	reaction_r_0796_Km1018=0.1;
	% Local Parameter:   id =  Km1019, name = Km1019
	reaction_r_0796_Km1019=0.1;
	% Local Parameter:   id =  Km1017, name = Km1017
	reaction_r_0796_Km1017=0.1;
	% Local Parameter:   id =  Km1020, name = Km1020
	reaction_r_0796_Km1020=0.1;

	reaction_r_0796=compartment_cell*reaction_r_0796_Vmax*(x(118)*x(241)*x(242)-x(240)*x(243)/reaction_r_0796_Keq)/(reaction_r_0796_Km0377*reaction_r_0796_Km1018*reaction_r_0796_Km1019)/((1+x(118)/reaction_r_0796_Km0377)*(1+x(241)/reaction_r_0796_Km1018)*(1+x(242)/reaction_r_0796_Km1019)+(1+x(240)/reaction_r_0796_Km1017)*(1+x(243)/reaction_r_0796_Km1020)-1);

% Reaction: id = r_0797, name = ISC [2Fe-2S] Synthesis	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0797_FLUX_VALUE=3.96157859771697E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0797_Vmax=0.00625929418439281;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0797_Keq=200.0;
	% Local Parameter:   id =  Km0860, name = Km0860
	reaction_r_0797_Km0860=0.1;
	% Local Parameter:   id =  Km0838, name = Km0838
	reaction_r_0797_Km0838=0.1;
	% Local Parameter:   id =  Km1018, name = Km1018
	reaction_r_0797_Km1018=0.1;
	% Local Parameter:   id =  Km1019, name = Km1019
	reaction_r_0797_Km1019=0.1;
	% Local Parameter:   id =  Km0859, name = Km0859
	reaction_r_0797_Km0859=0.1;
	% Local Parameter:   id =  Km1017, name = Km1017
	reaction_r_0797_Km1017=0.1;
	% Local Parameter:   id =  Km1020, name = Km1020
	reaction_r_0797_Km1020=0.1;

	reaction_r_0797=compartment_cell*reaction_r_0797_Vmax*(x(213)*x(210)^2*x(241)^2*x(242)-x(212)*x(240)^2*x(243)/reaction_r_0797_Keq)/(reaction_r_0797_Km0860*reaction_r_0797_Km0838^2*reaction_r_0797_Km1018^2*reaction_r_0797_Km1019)/((1+x(213)/reaction_r_0797_Km0860)*(1+x(210)/reaction_r_0797_Km0838)^2*(1+x(241)/reaction_r_0797_Km1018)^2*(1+x(242)/reaction_r_0797_Km1019)+(1+x(212)/reaction_r_0797_Km0859)*(1+x(240)/reaction_r_0797_Km1017)^2*(1+x(243)/reaction_r_0797_Km1020)-1);

% Reaction: id = r_0798, name = ISC [2Fe-2S] Synthesis II	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0798_FLUX_VALUE=3.60143508877284E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0798_Vmax=0.00569026744026109;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0798_Keq=200.0;
	% Local Parameter:   id =  Km0860, name = Km0860
	reaction_r_0798_Km0860=0.1;
	% Local Parameter:   id =  Km0838, name = Km0838
	reaction_r_0798_Km0838=0.1;
	% Local Parameter:   id =  Km1018, name = Km1018
	reaction_r_0798_Km1018=0.1;
	% Local Parameter:   id =  Km1020, name = Km1020
	reaction_r_0798_Km1020=0.1;
	% Local Parameter:   id =  Km0859, name = Km0859
	reaction_r_0798_Km0859=0.1;
	% Local Parameter:   id =  Km1017, name = Km1017
	reaction_r_0798_Km1017=0.1;
	% Local Parameter:   id =  Km1022, name = Km1022
	reaction_r_0798_Km1022=0.1;

	reaction_r_0798=compartment_cell*reaction_r_0798_Vmax*(x(213)*x(210)^2*x(241)^2*x(243)-x(212)*x(240)^2*x(245)/reaction_r_0798_Keq)/(reaction_r_0798_Km0860*reaction_r_0798_Km0838^2*reaction_r_0798_Km1018^2*reaction_r_0798_Km1020)/((1+x(213)/reaction_r_0798_Km0860)*(1+x(210)/reaction_r_0798_Km0838)^2*(1+x(241)/reaction_r_0798_Km1018)^2*(1+x(243)/reaction_r_0798_Km1020)+(1+x(212)/reaction_r_0798_Km0859)*(1+x(240)/reaction_r_0798_Km1017)^2*(1+x(245)/reaction_r_0798_Km1022)-1);

% Reaction: id = r_0799, name = ISC [2Fe-2S] Transfer	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0799_FLUX_VALUE=3.87846855703637E-6;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0799_Vmax=3.87846855703637E-5;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0799_Keq=0.2;
	% Local Parameter:   id =  Km1020, name = Km1020
	reaction_r_0799_Km1020=0.1;
	% Local Parameter:   id =  Km0378, name = Km0378
	reaction_r_0799_Km0378=0.1;
	% Local Parameter:   id =  Km1019, name = Km1019
	reaction_r_0799_Km1019=0.1;

	reaction_r_0799=compartment_cell*reaction_r_0799_Vmax*(x(243)-x(119)*x(242)/reaction_r_0799_Keq)/reaction_r_0799_Km1020/(1+x(243)/reaction_r_0799_Km1020+(1+x(119)/reaction_r_0799_Km0378)*(1+x(242)/reaction_r_0799_Km1019)-1);

% Reaction: id = r_0800, name = ISC [4Fe-4S] Reduction	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0800_FLUX_VALUE=3.60143508877284E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0800_Vmax=5.04200912428198E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0800_Keq=2.0;
	% Local Parameter:   id =  Km0860, name = Km0860
	reaction_r_0800_Km0860=0.1;
	% Local Parameter:   id =  Km1022, name = Km1022
	reaction_r_0800_Km1022=0.1;
	% Local Parameter:   id =  Km0859, name = Km0859
	reaction_r_0800_Km0859=0.1;
	% Local Parameter:   id =  Km1021, name = Km1021
	reaction_r_0800_Km1021=0.1;

	reaction_r_0800=compartment_cell*reaction_r_0800_Vmax*(x(213)*x(245)-x(212)*x(244)/reaction_r_0800_Keq)/(reaction_r_0800_Km0860*reaction_r_0800_Km1022)/((1+x(213)/reaction_r_0800_Km0860)*(1+x(245)/reaction_r_0800_Km1022)+(1+x(212)/reaction_r_0800_Km0859)*(1+x(244)/reaction_r_0800_Km1021)-1);

% Reaction: id = r_0801, name = ISC [4Fe-4S] Transfer	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0801_FLUX_VALUE=3.60143508877284E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0801_Vmax=3.60143508877284E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0801_Keq=0.2;
	% Local Parameter:   id =  Km1021, name = Km1021
	reaction_r_0801_Km1021=0.1;
	% Local Parameter:   id =  Km0380, name = Km0380
	reaction_r_0801_Km0380=0.1;
	% Local Parameter:   id =  Km1019, name = Km1019
	reaction_r_0801_Km1019=0.1;

	reaction_r_0801=compartment_cell*reaction_r_0801_Vmax*(x(244)-x(120)*x(242)/reaction_r_0801_Keq)/reaction_r_0801_Km1021/(1+x(244)/reaction_r_0801_Km1021+(1+x(120)/reaction_r_0801_Km0380)*(1+x(242)/reaction_r_0801_Km1019)-1);

% Reaction: id = r_0802, name = ISC Cysteine desulfuration	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0802_FLUX_VALUE=2.50022705200688E-4;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0802_Vmax=0.00350031787280963;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0802_Keq=2.0;
	% Local Parameter:   id =  Km1083, name = Km1083
	reaction_r_0802_Km1083=0.1;
	% Local Parameter:   id =  Km1017, name = Km1017
	reaction_r_0802_Km1017=0.1;
	% Local Parameter:   id =  Km1041, name = Km1041
	reaction_r_0802_Km1041=0.1;
	% Local Parameter:   id =  Km1018, name = Km1018
	reaction_r_0802_Km1018=0.1;

	reaction_r_0802=compartment_cell*reaction_r_0802_Vmax*(x(258)*x(240)-x(251)*x(241)/reaction_r_0802_Keq)/(reaction_r_0802_Km1083*reaction_r_0802_Km1017)/((1+x(258)/reaction_r_0802_Km1083)*(1+x(240)/reaction_r_0802_Km1017)+(1+x(251)/reaction_r_0802_Km1041)*(1+x(241)/reaction_r_0802_Km1018)-1);

% Reaction: id = r_0806, name = isocitrate dehydrogenase (NADP)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0806_FLUX_VALUE=0.148949399052035;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0806_Vmax=3.27688677914477;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0806_Keq=0.2;
	% Local Parameter:   id =  Km1027, name = Km1027
	reaction_r_0806_Km1027=0.1;
	% Local Parameter:   id =  Km1335, name = Km1335
	reaction_r_0806_Km1335=0.1;
	% Local Parameter:   id =  Km0233, name = Km0233
	reaction_r_0806_Km0233=0.1;
	% Local Parameter:   id =  Km0543, name = Km0543
	reaction_r_0806_Km0543=0.1;
	% Local Parameter:   id =  Km1336, name = Km1336
	reaction_r_0806_Km1336=0.1;

	reaction_r_0806=compartment_cell*reaction_r_0806_Vmax*(x(246)*x(316)-x(52)*x(160)*x(317)/reaction_r_0806_Keq)/(reaction_r_0806_Km1027*reaction_r_0806_Km1335)/((1+x(246)/reaction_r_0806_Km1027)*(1+x(316)/reaction_r_0806_Km1335)+(1+x(52)/reaction_r_0806_Km0233)*(1+x(160)/reaction_r_0806_Km0543)*(1+x(317)/reaction_r_0806_Km1336)-1);

% Reaction: id = r_0808, name = isoleucine transaminase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0808_FLUX_VALUE=0.0402391112803253;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0808_Vmax=0.563347557924554;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0808_Keq=2.0;
	% Local Parameter:   id =  Km0051, name = Km0051
	reaction_r_0808_Km0051=0.1;
	% Local Parameter:   id =  Km1095, name = Km1095
	reaction_r_0808_Km1095=0.1;
	% Local Parameter:   id =  Km0233, name = Km0233
	reaction_r_0808_Km0233=0.1;
	% Local Parameter:   id =  Km1119, name = Km1119
	reaction_r_0808_Km1119=0.1;

	reaction_r_0808=compartment_cell*reaction_r_0808_Vmax*(x(19)*x(259)-x(52)*x(270)/reaction_r_0808_Keq)/(reaction_r_0808_Km0051*reaction_r_0808_Km1095)/((1+x(19)/reaction_r_0808_Km0051)*(1+x(259)/reaction_r_0808_Km1095)+(1+x(52)/reaction_r_0808_Km0233)*(1+x(270)/reaction_r_0808_Km1119)-1);

% Reaction: id = r_0811, name = ketol-acid reductoisomerase (2,3-dihydroxy-3-methylbutanoate)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0811_FLUX_VALUE=0.121101856295072;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0811_Vmax=1.69542598813101;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0811_Keq=2.0;
	% Local Parameter:   id =  Km0042, name = Km0042
	reaction_r_0811_Km0042=0.1;
	% Local Parameter:   id =  Km1336, name = Km1336
	reaction_r_0811_Km1336=0.1;
	% Local Parameter:   id =  Km0017, name = Km0017
	reaction_r_0811_Km0017=0.1;
	% Local Parameter:   id =  Km1335, name = Km1335
	reaction_r_0811_Km1335=0.1;

	reaction_r_0811=compartment_cell*reaction_r_0811_Vmax*(x(11)*x(317)-x(3)*x(316)/reaction_r_0811_Keq)/(reaction_r_0811_Km0042*reaction_r_0811_Km1336)/((1+x(11)/reaction_r_0811_Km0042)*(1+x(317)/reaction_r_0811_Km1336)+(1+x(3)/reaction_r_0811_Km0017)*(1+x(316)/reaction_r_0811_Km1335)-1);

% Reaction: id = r_0812, name = ketol-acid reductoisomerase (2-Acetolactate)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0812_FLUX_VALUE=0.0402391112803253;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0812_Vmax=0.563347557924554;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0812_Keq=2.0;
	% Local Parameter:   id =  Km0041, name = Km0041
	reaction_r_0812_Km0041=0.1;
	% Local Parameter:   id =  Km1336, name = Km1336
	reaction_r_0812_Km1336=0.1;
	% Local Parameter:   id =  Km0018, name = Km0018
	reaction_r_0812_Km0018=0.1;
	% Local Parameter:   id =  Km1335, name = Km1335
	reaction_r_0812_Km1335=0.1;

	reaction_r_0812=compartment_cell*reaction_r_0812_Vmax*(x(10)*x(317)-x(4)*x(316)/reaction_r_0812_Keq)/(reaction_r_0812_Km0041*reaction_r_0812_Km1336)/((1+x(10)/reaction_r_0812_Km0041)*(1+x(317)/reaction_r_0812_Km1336)+(1+x(4)/reaction_r_0812_Km0018)*(1+x(316)/reaction_r_0812_Km1335)-1);

% Reaction: id = r_0815, name = L-alanine transaminase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0815_FLUX_VALUE=0.0805262878673574;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0815_Vmax=1.127368030143;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0815_Keq=2.0;
	% Local Parameter:   id =  Km1095, name = Km1095
	reaction_r_0815_Km1095=0.1;
	% Local Parameter:   id =  Km1531, name = Km1531
	reaction_r_0815_Km1531=0.1;
	% Local Parameter:   id =  Km0233, name = Km0233
	reaction_r_0815_Km0233=0.1;
	% Local Parameter:   id =  Km1041, name = Km1041
	reaction_r_0815_Km1041=0.1;

	reaction_r_0815=compartment_cell*reaction_r_0815_Vmax*(x(259)*x(352)-x(52)*x(251)/reaction_r_0815_Keq)/(reaction_r_0815_Km1095*reaction_r_0815_Km1531)/((1+x(259)/reaction_r_0815_Km1095)*(1+x(352)/reaction_r_0815_Km1531)+(1+x(52)/reaction_r_0815_Km0233)*(1+x(251)/reaction_r_0815_Km1041)-1);

% Reaction: id = r_0829, name = L-aspartate oxidase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0829_FLUX_VALUE=3.15541120488056E-4;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0829_Vmax=0.00441757568683278;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0829_Keq=2.0;
	% Local Parameter:   id =  Km1072, name = Km1072
	reaction_r_0829_Km1072=0.1;
	% Local Parameter:   id =  Km1372, name = Km1372
	reaction_r_0829_Km1372=0.1;
	% Local Parameter:   id =  Km0991, name = Km0991
	reaction_r_0829_Km0991=0.1;
	% Local Parameter:   id =  Km1005, name = Km1005
	reaction_r_0829_Km1005=0.1;

	reaction_r_0829=compartment_cell*reaction_r_0829_Vmax*(x(254)*x(324)-x(234)*x(237)/reaction_r_0829_Keq)/(reaction_r_0829_Km1072*reaction_r_0829_Km1372)/((1+x(254)/reaction_r_0829_Km1072)*(1+x(324)/reaction_r_0829_Km1372)+(1+x(234)/reaction_r_0829_Km0991)*(1+x(237)/reaction_r_0829_Km1005)-1);

% Reaction: id = r_0835, name = L-glutamate 5-semialdehyde dehydratase (spontaneous)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0835_FLUX_VALUE=0.0306260499280044;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0835_Vmax=0.183756299568026;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0835_Keq=2.0;
	% Local Parameter:   id =  Km1100, name = Km1100
	reaction_r_0835_Km1100=0.1;
	% Local Parameter:   id =  Km0128, name = Km0128
	reaction_r_0835_Km0128=0.1;

	reaction_r_0835=compartment_cell*reaction_r_0835_Vmax*(x(262)-x(31)/reaction_r_0835_Keq)/reaction_r_0835_Km1100/(1+x(262)/reaction_r_0835_Km1100+1+x(31)/reaction_r_0835_Km0128-1);

% Reaction: id = r_0847, name = L-threonine deaminase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0847_FLUX_VALUE=0.0402391112802679;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0847_Vmax=0.402391112802679;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0847_Keq=0.2;
	% Local Parameter:   id =  Km1179, name = Km1179
	reaction_r_0847_Km1179=0.1;
	% Local Parameter:   id =  Km0232, name = Km0232
	reaction_r_0847_Km0232=0.1;
	% Local Parameter:   id =  Km0451, name = Km0451
	reaction_r_0847_Km0451=0.1;

	reaction_r_0847=compartment_cell*reaction_r_0847_Vmax*(x(278)-x(51)*x(136)/reaction_r_0847_Keq)/reaction_r_0847_Km1179/(1+x(278)/reaction_r_0847_Km1179+(1+x(51)/reaction_r_0847_Km0232)*(1+x(136)/reaction_r_0847_Km0451)-1);

% Reaction: id = r_0848, name = L-threonine dehydrogenase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0848_FLUX_VALUE=0.0414265806134066;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0848_Vmax=0.579972128587692;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0848_Keq=2.0;
	% Local Parameter:   id =  Km1333, name = Km1333
	reaction_r_0848_Km1333=0.1;
	% Local Parameter:   id =  Km1179, name = Km1179
	reaction_r_0848_Km1179=0.1;
	% Local Parameter:   id =  Km1040, name = Km1040
	reaction_r_0848_Km1040=0.1;
	% Local Parameter:   id =  Km1334, name = Km1334
	reaction_r_0848_Km1334=0.1;

	reaction_r_0848=compartment_cell*reaction_r_0848_Vmax*(x(314)*x(278)-x(250)*x(315)/reaction_r_0848_Keq)/(reaction_r_0848_Km1333*reaction_r_0848_Km1179)/((1+x(314)/reaction_r_0848_Km1333)*(1+x(278)/reaction_r_0848_Km1179)+(1+x(250)/reaction_r_0848_Km1040)*(1+x(315)/reaction_r_0848_Km1334)-1);

% Reaction: id = r_0854, name = leucine transaminase (irreversible)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0854_FLUX_VALUE=0.0624017887496972;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0854_Vmax=0.873625042495761;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0854_Keq=2.0;
	% Local Parameter:   id =  Km0328, name = Km0328
	reaction_r_0854_Km0328=0.1;
	% Local Parameter:   id =  Km1095, name = Km1095
	reaction_r_0854_Km1095=0.1;
	% Local Parameter:   id =  Km0233, name = Km0233
	reaction_r_0854_Km0233=0.1;
	% Local Parameter:   id =  Km1127, name = Km1127
	reaction_r_0854_Km1127=0.1;

	reaction_r_0854=compartment_cell*reaction_r_0854_Vmax*(x(88)*x(259)-x(52)*x(271)/reaction_r_0854_Keq)/(reaction_r_0854_Km0328*reaction_r_0854_Km1095)/((1+x(88)/reaction_r_0854_Km0328)*(1+x(259)/reaction_r_0854_Km1095)+(1+x(52)/reaction_r_0854_Km0233)*(1+x(271)/reaction_r_0854_Km1127)-1);

% Reaction: id = r_0857, name = Lipid A disaccaride synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0857_FLUX_VALUE=0.00269553564721213;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0857_Vmax=0.0377374990609698;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0857_Keq=2.0;
	% Local Parameter:   id =  Km0149, name = Km0149
	reaction_r_0857_Km0149=0.1;
	% Local Parameter:   id =  Km1734, name = Km1734
	reaction_r_0857_Km1734=0.1;
	% Local Parameter:   id =  Km1204, name = Km1204
	reaction_r_0857_Km1204=0.1;
	% Local Parameter:   id =  Km1733, name = Km1733
	reaction_r_0857_Km1733=0.1;

	reaction_r_0857=compartment_cell*reaction_r_0857_Vmax*(x(35)*x(384)-x(282)*x(383)/reaction_r_0857_Keq)/(reaction_r_0857_Km0149*reaction_r_0857_Km1734)/((1+x(35)/reaction_r_0857_Km0149)*(1+x(384)/reaction_r_0857_Km1734)+(1+x(282)/reaction_r_0857_Km1204)*(1+x(383)/reaction_r_0857_Km1733)-1);

% Reaction: id = r_0925, name = malate dehydrogenase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0925_FLUX_VALUE=0.143432000495696;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0925_Vmax=2.00804800693974;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0925_Keq=2.0;
	% Local Parameter:   id =  Km1138, name = Km1138
	reaction_r_0925_Km1138=0.1;
	% Local Parameter:   id =  Km1333, name = Km1333
	reaction_r_0925_Km1333=0.1;
	% Local Parameter:   id =  Km1334, name = Km1334
	reaction_r_0925_Km1334=0.1;
	% Local Parameter:   id =  Km1399, name = Km1399
	reaction_r_0925_Km1399=0.1;

	reaction_r_0925=compartment_cell*reaction_r_0925_Vmax*(x(273)*x(314)-x(315)*x(329)/reaction_r_0925_Keq)/(reaction_r_0925_Km1138*reaction_r_0925_Km1333)/((1+x(273)/reaction_r_0925_Km1138)*(1+x(314)/reaction_r_0925_Km1333)+(1+x(315)/reaction_r_0925_Km1334)*(1+x(329)/reaction_r_0925_Km1399)-1);

% Reaction: id = r_0928, name = malate oxidase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0928_FLUX_VALUE=3.15541120779209E-4;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0928_Vmax=0.00441757569090893;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0928_Keq=2.0;
	% Local Parameter:   id =  Km0991, name = Km0991
	reaction_r_0928_Km0991=0.1;
	% Local Parameter:   id =  Km1399, name = Km1399
	reaction_r_0928_Km1399=0.1;
	% Local Parameter:   id =  Km1138, name = Km1138
	reaction_r_0928_Km1138=0.1;
	% Local Parameter:   id =  Km1372, name = Km1372
	reaction_r_0928_Km1372=0.1;

	reaction_r_0928=compartment_cell*reaction_r_0928_Vmax*(x(234)*x(329)-x(273)*x(324)/reaction_r_0928_Keq)/(reaction_r_0928_Km0991*reaction_r_0928_Km1399)/((1+x(234)/reaction_r_0928_Km0991)*(1+x(329)/reaction_r_0928_Km1399)+(1+x(273)/reaction_r_0928_Km1138)*(1+x(324)/reaction_r_0928_Km1372)-1);

% Reaction: id = r_0934, name = Malonyl-CoA methyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0934_FLUX_VALUE=2.77033467884759E-7;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0934_Vmax=3.87846855038663E-6;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0934_Keq=2.0;
	% Local Parameter:   id =  Km1552, name = Km1552
	reaction_r_0934_Km1552=0.1;
	% Local Parameter:   id =  Km1217, name = Km1217
	reaction_r_0934_Km1217=0.1;
	% Local Parameter:   id =  Km1551, name = Km1551
	reaction_r_0934_Km1551=0.1;
	% Local Parameter:   id =  Km1218, name = Km1218
	reaction_r_0934_Km1218=0.1;

	reaction_r_0934=compartment_cell*reaction_r_0934_Vmax*(x(358)*x(286)-x(357)*x(287)/reaction_r_0934_Keq)/(reaction_r_0934_Km1552*reaction_r_0934_Km1217)/((1+x(358)/reaction_r_0934_Km1552)*(1+x(286)/reaction_r_0934_Km1217)+(1+x(357)/reaction_r_0934_Km1551)*(1+x(287)/reaction_r_0934_Km1218)-1);

% Reaction: id = r_0935, name = Malonyl-CoA-ACP transacylase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0935_FLUX_VALUE=0.0107826966558221;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0935_Vmax=0.150957753181509;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0935_Keq=2.0;
	% Local Parameter:   id =  Km0397, name = Km0397
	reaction_r_0935_Km0397=0.1;
	% Local Parameter:   id =  Km1217, name = Km1217
	reaction_r_0935_Km1217=0.1;
	% Local Parameter:   id =  Km0555, name = Km0555
	reaction_r_0935_Km0555=0.1;
	% Local Parameter:   id =  Km1216, name = Km1216
	reaction_r_0935_Km1216=0.1;

	reaction_r_0935=compartment_cell*reaction_r_0935_Vmax*(x(126)*x(286)-x(162)*x(285)/reaction_r_0935_Keq)/(reaction_r_0935_Km0397*reaction_r_0935_Km1217)/((1+x(126)/reaction_r_0935_Km0397)*(1+x(286)/reaction_r_0935_Km1217)+(1+x(162)/reaction_r_0935_Km0555)*(1+x(285)/reaction_r_0935_Km1216)-1);

% Reaction: id = r_0950, name = methenyltetrahydrofolate cyclohydrolase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0950_FLUX_VALUE=0.0383041017619642;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0950_Vmax=0.229824610571785;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0950_Keq=2.0;
	% Local Parameter:   id =  Km0335, name = Km0335
	reaction_r_0950_Km0335=0.1;
	% Local Parameter:   id =  Km0133, name = Km0133
	reaction_r_0950_Km0133=0.1;

	reaction_r_0950=compartment_cell*reaction_r_0950_Vmax*(x(94)-x(32)/reaction_r_0950_Keq)/reaction_r_0950_Km0335/(1+x(94)/reaction_r_0950_Km0335+1+x(32)/reaction_r_0950_Km0133-1);

% Reaction: id = r_0951, name = methionine adenosyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0951_FLUX_VALUE=1.24388027294171E-4;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0951_Vmax=0.00273653660047176;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0951_Keq=0.2;
	% Local Parameter:   id =  Km0467, name = Km0467
	reaction_r_0951_Km0467=0.1;
	% Local Parameter:   id =  Km1141, name = Km1141
	reaction_r_0951_Km1141=0.1;
	% Local Parameter:   id =  Km1552, name = Km1552
	reaction_r_0951_Km1552=0.1;
	% Local Parameter:   id =  Km1430, name = Km1430
	reaction_r_0951_Km1430=0.1;
	% Local Parameter:   id =  Km0783, name = Km0783
	reaction_r_0951_Km0783=0.1;

	reaction_r_0951=compartment_cell*reaction_r_0951_Vmax*(x(139)*x(274)-x(358)*x(336)*x(198)/reaction_r_0951_Keq)/(reaction_r_0951_Km0467*reaction_r_0951_Km1141)/((1+x(139)/reaction_r_0951_Km0467)*(1+x(274)/reaction_r_0951_Km1141)+(1+x(358)/reaction_r_0951_Km1552)*(1+x(336)/reaction_r_0951_Km1430)*(1+x(198)/reaction_r_0951_Km0783)-1);

% Reaction: id = r_0954, name = methionine synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0954_FLUX_VALUE=0.0213832438061183;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0954_Vmax=0.299365413285656;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0954_Keq=2.0;
	% Local Parameter:   id =  Km0354, name = Km0354
	reaction_r_0954_Km0354=0.1;
	% Local Parameter:   id =  Km1112, name = Km1112
	reaction_r_0954_Km1112=0.1;
	% Local Parameter:   id =  Km1141, name = Km1141
	reaction_r_0954_Km1141=0.1;
	% Local Parameter:   id =  Km0337, name = Km0337
	reaction_r_0954_Km0337=0.1;

	reaction_r_0954=compartment_cell*reaction_r_0954_Vmax*(x(105)*x(268)-x(274)*x(96)/reaction_r_0954_Keq)/(reaction_r_0954_Km0354*reaction_r_0954_Km1112)/((1+x(105)/reaction_r_0954_Km0354)*(1+x(268)/reaction_r_0954_Km1112)+(1+x(274)/reaction_r_0954_Km1141)*(1+x(96)/reaction_r_0954_Km0337)-1);

% Reaction: id = r_0957, name = methylenetetrahydrofolate dehydrogenase (NADP)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0957_FLUX_VALUE=0.0383041017619642;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0957_Vmax=0.536257424667499;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0957_Keq=2.0;
	% Local Parameter:   id =  Km0336, name = Km0336
	reaction_r_0957_Km0336=0.1;
	% Local Parameter:   id =  Km1335, name = Km1335
	reaction_r_0957_Km1335=0.1;
	% Local Parameter:   id =  Km0335, name = Km0335
	reaction_r_0957_Km0335=0.1;
	% Local Parameter:   id =  Km1336, name = Km1336
	reaction_r_0957_Km1336=0.1;

	reaction_r_0957=compartment_cell*reaction_r_0957_Vmax*(x(95)*x(316)-x(94)*x(317)/reaction_r_0957_Keq)/(reaction_r_0957_Km0336*reaction_r_0957_Km1335)/((1+x(95)/reaction_r_0957_Km0336)*(1+x(316)/reaction_r_0957_Km1335)+(1+x(94)/reaction_r_0957_Km0335)*(1+x(317)/reaction_r_0957_Km1336)-1);

% Reaction: id = r_0963, name = MoaD sulfuration (nadh, assumed)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0963_FLUX_VALUE=6.75961662815825E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0963_Vmax=0.0031094236489528;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0963_Keq=0.2;
	% Local Parameter:   id =  Km1018, name = Km1018
	reaction_r_0963_Km1018=0.1;
	% Local Parameter:   id =  Km1258, name = Km1258
	reaction_r_0963_Km1258=0.1;
	% Local Parameter:   id =  Km1334, name = Km1334
	reaction_r_0963_Km1334=0.1;
	% Local Parameter:   id =  Km0454, name = Km0454
	reaction_r_0963_Km0454=0.1;
	% Local Parameter:   id =  Km1017, name = Km1017
	reaction_r_0963_Km1017=0.1;
	% Local Parameter:   id =  Km1260, name = Km1260
	reaction_r_0963_Km1260=0.1;
	% Local Parameter:   id =  Km1333, name = Km1333
	reaction_r_0963_Km1333=0.1;

	reaction_r_0963=compartment_cell*reaction_r_0963_Vmax*(x(241)*x(293)*x(315)-x(137)*x(240)*x(295)*x(314)/reaction_r_0963_Keq)/(reaction_r_0963_Km1018*reaction_r_0963_Km1258*reaction_r_0963_Km1334)/((1+x(241)/reaction_r_0963_Km1018)*(1+x(293)/reaction_r_0963_Km1258)*(1+x(315)/reaction_r_0963_Km1334)+(1+x(137)/reaction_r_0963_Km0454)*(1+x(240)/reaction_r_0963_Km1017)*(1+x(295)/reaction_r_0963_Km1260)*(1+x(314)/reaction_r_0963_Km1333)-1);

% Reaction: id = r_0964, name = molybdenum cofactor synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0964_FLUX_VALUE=1.68990415703956E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0964_Vmax=3.71778914548703E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0964_Keq=0.2;
	% Local Parameter:   id =  Km1261, name = Km1261
	reaction_r_0964_Km1261=0.1;
	% Local Parameter:   id =  Km0420, name = Km0420
	reaction_r_0964_Km0420=0.1;
	% Local Parameter:   id =  Km0454, name = Km0454
	reaction_r_0964_Km0454=0.1;
	% Local Parameter:   id =  Km0579, name = Km0579
	reaction_r_0964_Km0579=0.1;
	% Local Parameter:   id =  Km1264, name = Km1264
	reaction_r_0964_Km1264=0.1;

	reaction_r_0964=compartment_cell*reaction_r_0964_Vmax*(x(296)*x(131)-x(137)*x(166)*x(297)/reaction_r_0964_Keq)/(reaction_r_0964_Km1261*reaction_r_0964_Km0420)/((1+x(296)/reaction_r_0964_Km1261)*(1+x(131)/reaction_r_0964_Km0420)+(1+x(137)/reaction_r_0964_Km0454)*(1+x(166)/reaction_r_0964_Km0579)*(1+x(297)/reaction_r_0964_Km1264)-1);

% Reaction: id = r_0965, name = molybdopterin adenylyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0965_FLUX_VALUE=3.37980831407913E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0965_Vmax=4.73173163971078E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0965_Keq=2.0;
	% Local Parameter:   id =  Km0467, name = Km0467
	reaction_r_0965_Km0467=0.1;
	% Local Parameter:   id =  Km1265, name = Km1265
	reaction_r_0965_Km1265=0.1;
	% Local Parameter:   id =  Km0420, name = Km0420
	reaction_r_0965_Km0420=0.1;
	% Local Parameter:   id =  Km0783, name = Km0783
	reaction_r_0965_Km0783=0.1;

	reaction_r_0965=compartment_cell*reaction_r_0965_Vmax*(x(139)*x(298)-x(131)*x(198)/reaction_r_0965_Keq)/(reaction_r_0965_Km0467*reaction_r_0965_Km1265)/((1+x(139)/reaction_r_0965_Km0467)*(1+x(298)/reaction_r_0965_Km1265)+(1+x(131)/reaction_r_0965_Km0420)*(1+x(198)/reaction_r_0965_Km0783)-1);

% Reaction: id = r_0968, name = molybdopterin synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0968_FLUX_VALUE=3.37980831407913E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0968_Vmax=0.0015547118244764;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0968_Keq=20.0;
	% Local Parameter:   id =  Km0585, name = Km0585
	reaction_r_0968_Km0585=0.1;
	% Local Parameter:   id =  Km0579, name = Km0579
	reaction_r_0968_Km0579=0.1;
	% Local Parameter:   id =  Km1260, name = Km1260
	reaction_r_0968_Km1260=0.1;
	% Local Parameter:   id =  Km1259, name = Km1259
	reaction_r_0968_Km1259=0.1;
	% Local Parameter:   id =  Km1265, name = Km1265
	reaction_r_0968_Km1265=0.1;

	reaction_r_0968=compartment_cell*reaction_r_0968_Vmax*(x(167)*x(166)*x(295)^2-x(294)^2*x(298)/reaction_r_0968_Keq)/(reaction_r_0968_Km0585*reaction_r_0968_Km0579*reaction_r_0968_Km1260^2)/((1+x(167)/reaction_r_0968_Km0585)*(1+x(166)/reaction_r_0968_Km0579)*(1+x(295)/reaction_r_0968_Km1260)^2+(1+x(294)/reaction_r_0968_Km1259)^2*(1+x(298)/reaction_r_0968_Km1265)-1);

% Reaction: id = r_0969, name = molybdopterin synthase sulfurylase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0969_FLUX_VALUE=6.75961662815825E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0969_Vmax=9.46346327942155E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0969_Keq=2.0;
	% Local Parameter:   id =  Km0467, name = Km0467
	reaction_r_0969_Km0467=0.1;
	% Local Parameter:   id =  Km1259, name = Km1259
	reaction_r_0969_Km1259=0.1;
	% Local Parameter:   id =  Km1258, name = Km1258
	reaction_r_0969_Km1258=0.1;
	% Local Parameter:   id =  Km0783, name = Km0783
	reaction_r_0969_Km0783=0.1;

	reaction_r_0969=compartment_cell*reaction_r_0969_Vmax*(x(139)*x(294)-x(293)*x(198)/reaction_r_0969_Keq)/(reaction_r_0969_Km0467*reaction_r_0969_Km1259)/((1+x(139)/reaction_r_0969_Km0467)*(1+x(294)/reaction_r_0969_Km1259)+(1+x(293)/reaction_r_0969_Km1258)*(1+x(198)/reaction_r_0969_Km0783)-1);

% Reaction: id = r_0970, name = murein crosslinking transpeptidase 1A:(A2pm->D-ala) (periplasm)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0970_FLUX_VALUE=0.0019239974378098;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0970_Vmax=0.019239974378098;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0970_Keq=0.2;
	% Local Parameter:   id =  Km1725, name = Km1725
	reaction_r_0970_Km1725=0.1;
	% Local Parameter:   id =  Km0600, name = Km0600
	reaction_r_0970_Km0600=0.1;
	% Local Parameter:   id =  Km1719, name = Km1719
	reaction_r_0970_Km1719=0.1;

	reaction_r_0970=compartment_cell*reaction_r_0970_Vmax*(x(380)-x(169)*x(379)/reaction_r_0970_Keq)/reaction_r_0970_Km1725/(1+x(380)/reaction_r_0970_Km1725+(1+x(169)/reaction_r_0970_Km0600)*(1+x(379)/reaction_r_0970_Km1719)-1);

% Reaction: id = r_0996, name = N-acetyl-g-glutamyl-phosphate reductase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0996_FLUX_VALUE=0.0409732499715063;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0996_Vmax=0.901411499373139;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0996_Keq=0.2;
	% Local Parameter:   id =  Km1304, name = Km1304
	reaction_r_0996_Km1304=0.1;
	% Local Parameter:   id =  Km1336, name = Km1336
	reaction_r_0996_Km1336=0.1;
	% Local Parameter:   id =  Km1303, name = Km1303
	reaction_r_0996_Km1303=0.1;
	% Local Parameter:   id =  Km1335, name = Km1335
	reaction_r_0996_Km1335=0.1;
	% Local Parameter:   id =  Km1430, name = Km1430
	reaction_r_0996_Km1430=0.1;

	reaction_r_0996=compartment_cell*reaction_r_0996_Vmax*(x(305)*x(317)-x(304)*x(316)*x(336)/reaction_r_0996_Keq)/(reaction_r_0996_Km1304*reaction_r_0996_Km1336)/((1+x(305)/reaction_r_0996_Km1304)*(1+x(317)/reaction_r_0996_Km1336)+(1+x(304)/reaction_r_0996_Km1303)*(1+x(316)/reaction_r_0996_Km1335)*(1+x(336)/reaction_r_0996_Km1430)-1);

% Reaction: id = r_0999, name = N-acetylglutamate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0999_FLUX_VALUE=0.0409732499715063;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_0999_Vmax=0.573625499601088;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_0999_Keq=2.0;
	% Local Parameter:   id =  Km0395, name = Km0395
	reaction_r_0999_Km0395=0.1;
	% Local Parameter:   id =  Km1095, name = Km1095
	reaction_r_0999_Km1095=0.1;
	% Local Parameter:   id =  Km1302, name = Km1302
	reaction_r_0999_Km1302=0.1;
	% Local Parameter:   id =  Km0555, name = Km0555
	reaction_r_0999_Km0555=0.1;

	reaction_r_0999=compartment_cell*reaction_r_0999_Vmax*(x(125)*x(259)-x(303)*x(162)/reaction_r_0999_Keq)/(reaction_r_0999_Km0395*reaction_r_0999_Km1095)/((1+x(125)/reaction_r_0999_Km0395)*(1+x(259)/reaction_r_0999_Km1095)+(1+x(303)/reaction_r_0999_Km1302)*(1+x(162)/reaction_r_0999_Km0555)-1);

% Reaction: id = r_1006, name = NAD kinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1006_FLUX_VALUE=6.1916980210075E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1006_Vmax=8.6683772294105E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1006_Keq=2.0;
	% Local Parameter:   id =  Km0467, name = Km0467
	reaction_r_1006_Km0467=0.1;
	% Local Parameter:   id =  Km1333, name = Km1333
	reaction_r_1006_Km1333=0.1;
	% Local Parameter:   id =  Km0421, name = Km0421
	reaction_r_1006_Km0421=0.1;
	% Local Parameter:   id =  Km1335, name = Km1335
	reaction_r_1006_Km1335=0.1;

	reaction_r_1006=compartment_cell*reaction_r_1006_Vmax*(x(139)*x(314)-x(132)*x(316)/reaction_r_1006_Keq)/(reaction_r_1006_Km0467*reaction_r_1006_Km1333)/((1+x(139)/reaction_r_1006_Km0467)*(1+x(314)/reaction_r_1006_Km1333)+(1+x(132)/reaction_r_1006_Km0421)*(1+x(316)/reaction_r_1006_Km1335)-1);

% Reaction: id = r_1008, name = NAD synthase (nh3)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1008_FLUX_VALUE=3.15541120476312E-4;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1008_Vmax=0.00946623361428936;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1008_Keq=2.0;
	% Local Parameter:   id =  Km0467, name = Km0467
	reaction_r_1008_Km0467=0.1;
	% Local Parameter:   id =  Km0732, name = Km0732
	reaction_r_1008_Km0732=0.1;
	% Local Parameter:   id =  Km0451, name = Km0451
	reaction_r_1008_Km0451=0.1;
	% Local Parameter:   id =  Km0454, name = Km0454
	reaction_r_1008_Km0454=0.1;
	% Local Parameter:   id =  Km1333, name = Km1333
	reaction_r_1008_Km1333=0.1;
	% Local Parameter:   id =  Km0783, name = Km0783
	reaction_r_1008_Km0783=0.1;

	reaction_r_1008=compartment_cell*reaction_r_1008_Vmax*(x(139)*x(186)*x(136)-x(137)*x(314)*x(198)/reaction_r_1008_Keq)/(reaction_r_1008_Km0467*reaction_r_1008_Km0732*reaction_r_1008_Km0451)/((1+x(139)/reaction_r_1008_Km0467)*(1+x(186)/reaction_r_1008_Km0732)*(1+x(136)/reaction_r_1008_Km0451)+(1+x(137)/reaction_r_1008_Km0454)*(1+x(314)/reaction_r_1008_Km1333)*(1+x(198)/reaction_r_1008_Km0783)-1);

% Reaction: id = r_1019, name = nicotinate-nucleotide adenylyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1019_FLUX_VALUE=3.15541120469206E-4;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1019_Vmax=0.00441757568656888;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1019_Keq=2.0;
	% Local Parameter:   id =  Km0467, name = Km0467
	reaction_r_1019_Km0467=0.1;
	% Local Parameter:   id =  Km1340, name = Km1340
	reaction_r_1019_Km1340=0.1;
	% Local Parameter:   id =  Km0732, name = Km0732
	reaction_r_1019_Km0732=0.1;
	% Local Parameter:   id =  Km0783, name = Km0783
	reaction_r_1019_Km0783=0.1;

	reaction_r_1019=compartment_cell*reaction_r_1019_Vmax*(x(139)*x(318)-x(186)*x(198)/reaction_r_1019_Keq)/(reaction_r_1019_Km0467*reaction_r_1019_Km1340)/((1+x(139)/reaction_r_1019_Km0467)*(1+x(318)/reaction_r_1019_Km1340)+(1+x(186)/reaction_r_1019_Km0732)*(1+x(198)/reaction_r_1019_Km0783)-1);

% Reaction: id = r_1021, name = nicotinate-nucleotide diphosphorylase (carboxylating)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1021_FLUX_VALUE=3.15541120467916E-4;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1021_Vmax=0.00694190465029415;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1021_Keq=0.2;
	% Local Parameter:   id =  Km0360, name = Km0360
	reaction_r_1021_Km0360=0.1;
	% Local Parameter:   id =  Km1537, name = Km1537
	reaction_r_1021_Km1537=0.1;
	% Local Parameter:   id =  Km0543, name = Km0543
	reaction_r_1021_Km0543=0.1;
	% Local Parameter:   id =  Km1340, name = Km1340
	reaction_r_1021_Km1340=0.1;
	% Local Parameter:   id =  Km0783, name = Km0783
	reaction_r_1021_Km0783=0.1;

	reaction_r_1021=compartment_cell*reaction_r_1021_Vmax*(x(107)*x(353)-x(160)*x(318)*x(198)/reaction_r_1021_Keq)/(reaction_r_1021_Km0360*reaction_r_1021_Km1537)/((1+x(107)/reaction_r_1021_Km0360)*(1+x(353)/reaction_r_1021_Km1537)+(1+x(160)/reaction_r_1021_Km0543)*(1+x(318)/reaction_r_1021_Km1340)*(1+x(198)/reaction_r_1021_Km0783)-1);

% Reaction: id = r_1039, name = nucleoside-diphosphate kinase (ATP:CDP)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1039_FLUX_VALUE=0.0250597549647999;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1039_Vmax=0.350836569507199;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1039_Keq=2.0;
	% Local Parameter:   id =  Km0467, name = Km0467
	reaction_r_1039_Km0467=0.1;
	% Local Parameter:   id =  Km0510, name = Km0510
	reaction_r_1039_Km0510=0.1;
	% Local Parameter:   id =  Km0421, name = Km0421
	reaction_r_1039_Km0421=0.1;
	% Local Parameter:   id =  Km0575, name = Km0575
	reaction_r_1039_Km0575=0.1;

	reaction_r_1039=compartment_cell*reaction_r_1039_Vmax*(x(139)*x(150)-x(132)*x(165)/reaction_r_1039_Keq)/(reaction_r_1039_Km0467*reaction_r_1039_Km0510)/((1+x(139)/reaction_r_1039_Km0467)*(1+x(150)/reaction_r_1039_Km0510)+(1+x(132)/reaction_r_1039_Km0421)*(1+x(165)/reaction_r_1039_Km0575)-1);

% Reaction: id = r_1043, name = nucleoside-diphosphate kinase (ATP:dTDP)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1043_FLUX_VALUE=0.00362498293358405;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1043_Vmax=0.0507497610701767;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1043_Keq=2.0;
	% Local Parameter:   id =  Km0467, name = Km0467
	reaction_r_1043_Km0467=0.1;
	% Local Parameter:   id =  Km0795, name = Km0795
	reaction_r_1043_Km0795=0.1;
	% Local Parameter:   id =  Km0421, name = Km0421
	reaction_r_1043_Km0421=0.1;
	% Local Parameter:   id =  Km0805, name = Km0805
	reaction_r_1043_Km0805=0.1;

	reaction_r_1043=compartment_cell*reaction_r_1043_Vmax*(x(139)*x(202)-x(132)*x(204)/reaction_r_1043_Keq)/(reaction_r_1043_Km0467*reaction_r_1043_Km0795)/((1+x(139)/reaction_r_1043_Km0467)*(1+x(202)/reaction_r_1043_Km0795)+(1+x(132)/reaction_r_1043_Km0421)*(1+x(204)/reaction_r_1043_Km0805)-1);

% Reaction: id = r_1045, name = nucleoside-diphosphate kinase (ATP:GDP)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1045_FLUX_VALUE=0.10884935857298;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1045_Vmax=1.52389102002172;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1045_Keq=2.0;
	% Local Parameter:   id =  Km0467, name = Km0467
	reaction_r_1045_Km0467=0.1;
	% Local Parameter:   id =  Km0896, name = Km0896
	reaction_r_1045_Km0896=0.1;
	% Local Parameter:   id =  Km0421, name = Km0421
	reaction_r_1045_Km0421=0.1;
	% Local Parameter:   id =  Km0945, name = Km0945
	reaction_r_1045_Km0945=0.1;

	reaction_r_1045=compartment_cell*reaction_r_1045_Vmax*(x(139)*x(219)-x(132)*x(229)/reaction_r_1045_Keq)/(reaction_r_1045_Km0467*reaction_r_1045_Km0896)/((1+x(139)/reaction_r_1045_Km0467)*(1+x(219)/reaction_r_1045_Km0896)+(1+x(132)/reaction_r_1045_Km0421)*(1+x(229)/reaction_r_1045_Km0945)-1);

% Reaction: id = r_1046, name = nucleoside-diphosphate kinase (ATP:UDP)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1046_FLUX_VALUE=0.0589070115461784;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1046_Vmax=0.824698161646498;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1046_Keq=2.0;
	% Local Parameter:   id =  Km0467, name = Km0467
	reaction_r_1046_Km0467=0.1;
	% Local Parameter:   id =  Km1733, name = Km1733
	reaction_r_1046_Km1733=0.1;
	% Local Parameter:   id =  Km0421, name = Km0421
	reaction_r_1046_Km0421=0.1;
	% Local Parameter:   id =  Km1792, name = Km1792
	reaction_r_1046_Km1792=0.1;

	reaction_r_1046=compartment_cell*reaction_r_1046_Vmax*(x(139)*x(383)-x(132)*x(400)/reaction_r_1046_Keq)/(reaction_r_1046_Km0467*reaction_r_1046_Km1733)/((1+x(139)/reaction_r_1046_Km0467)*(1+x(383)/reaction_r_1046_Km1733)+(1+x(132)/reaction_r_1046_Km0421)*(1+x(400)/reaction_r_1046_Km1792)-1);

% Reaction: id = r_1047, name = nucleoside-triphosphatase (ATP)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1047_FLUX_VALUE=3.15000000000004;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1047_Vmax=31.5000000000004;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1047_Keq=0.2;
	% Local Parameter:   id =  Km0467, name = Km0467
	reaction_r_1047_Km0467=0.1;
	% Local Parameter:   id =  Km0421, name = Km0421
	reaction_r_1047_Km0421=0.1;
	% Local Parameter:   id =  Km1430, name = Km1430
	reaction_r_1047_Km1430=0.1;

	reaction_r_1047=compartment_cell*reaction_r_1047_Vmax*(x(139)-x(132)*x(336)/reaction_r_1047_Keq)/reaction_r_1047_Km0467/(1+x(139)/reaction_r_1047_Km0467+(1+x(132)/reaction_r_1047_Km0421)*(1+x(336)/reaction_r_1047_Km1430)-1);

% Reaction: id = r_1054, name = O-Phospho-4-hydroxy-L-threonine:2-oxoglutarate aminotransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1054_FLUX_VALUE=3.08892317222495E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1054_Vmax=4.32449244111493E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1054_Keq=2.0;
	% Local Parameter:   id =  Km1095, name = Km1095
	reaction_r_1054_Km1095=0.1;
	% Local Parameter:   id =  Km0231, name = Km0231
	reaction_r_1054_Km0231=0.1;
	% Local Parameter:   id =  Km0233, name = Km0233
	reaction_r_1054_Km0233=0.1;
	% Local Parameter:   id =  Km1362, name = Km1362
	reaction_r_1054_Km1362=0.1;

	reaction_r_1054=compartment_cell*reaction_r_1054_Vmax*(x(259)*x(50)-x(52)*x(320)/reaction_r_1054_Keq)/(reaction_r_1054_Km1095*reaction_r_1054_Km0231)/((1+x(259)/reaction_r_1054_Km1095)*(1+x(50)/reaction_r_1054_Km0231)+(1+x(52)/reaction_r_1054_Km0233)*(1+x(320)/reaction_r_1054_Km1362)-1);

% Reaction: id = r_1057, name = O-succinylhomoserine lyase (L-cysteine)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1057_FLUX_VALUE=0.0213211883092039;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1057_Vmax=0.298496636328855;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1057_Keq=2.0;
	% Local Parameter:   id =  Km1083, name = Km1083
	reaction_r_1057_Km1083=0.1;
	% Local Parameter:   id =  Km1367, name = Km1367
	reaction_r_1057_Km1367=0.1;
	% Local Parameter:   id =  Km1082, name = Km1082
	reaction_r_1057_Km1082=0.1;
	% Local Parameter:   id =  Km1595, name = Km1595
	reaction_r_1057_Km1595=0.1;

	reaction_r_1057=compartment_cell*reaction_r_1057_Vmax*(x(258)*x(323)-x(257)*x(365)/reaction_r_1057_Keq)/(reaction_r_1057_Km1083*reaction_r_1057_Km1367)/((1+x(258)/reaction_r_1057_Km1083)*(1+x(323)/reaction_r_1057_Km1367)+(1+x(257)/reaction_r_1057_Km1082)*(1+x(365)/reaction_r_1057_Km1595)-1);

% Reaction: id = r_1063, name = Octaprenyl pyrophosphate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1063_FLUX_VALUE=3.08892317229362E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1063_Vmax=0.00784586485762579;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1063_Keq=2.0;
	% Local Parameter:   id =  Km0826, name = Km0826
	reaction_r_1063_Km0826=0.1;
	% Local Parameter:   id =  Km1028, name = Km1028
	reaction_r_1063_Km1028=0.1;
	% Local Parameter:   id =  Km0435, name = Km0435
	reaction_r_1063_Km0435=0.1;
	% Local Parameter:   id =  Km0783, name = Km0783
	reaction_r_1063_Km0783=0.1;

	reaction_r_1063=compartment_cell*reaction_r_1063_Vmax*(x(209)*x(247)^5-x(133)*x(198)^5/reaction_r_1063_Keq)/(reaction_r_1063_Km0826*reaction_r_1063_Km1028^5)/((1+x(209)/reaction_r_1063_Km0826)*(1+x(247)/reaction_r_1063_Km1028)^5+(1+x(133)/reaction_r_1063_Km0435)*(1+x(198)/reaction_r_1063_Km0783)^5-1);

% Reaction: id = r_1064, name = Octaprenyl-hydroxybenzoate decarboxylase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1064_FLUX_VALUE=3.08892317229363E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1064_Vmax=3.08892317229363E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1064_Keq=0.2;
	% Local Parameter:   id =  Km0283, name = Km0283
	reaction_r_1064_Km0283=0.1;
	% Local Parameter:   id =  Km0229, name = Km0229
	reaction_r_1064_Km0229=0.1;
	% Local Parameter:   id =  Km0543, name = Km0543
	reaction_r_1064_Km0543=0.1;

	reaction_r_1064=compartment_cell*reaction_r_1064_Vmax*(x(68)-x(49)*x(160)/reaction_r_1064_Keq)/reaction_r_1064_Km0283/(1+x(68)/reaction_r_1064_Km0283+(1+x(49)/reaction_r_1064_Km0229)*(1+x(160)/reaction_r_1064_Km0543)-1);

% Reaction: id = r_1065, name = ornithine carbamoyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1065_FLUX_VALUE=0.040973249971501;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1065_Vmax=0.573625499601014;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1065_Keq=2.0;
	% Local Parameter:   id =  Km0502, name = Km0502
	reaction_r_1065_Km0502=0.1;
	% Local Parameter:   id =  Km1391, name = Km1391
	reaction_r_1065_Km1391=0.1;
	% Local Parameter:   id =  Km1081, name = Km1081
	reaction_r_1065_Km1081=0.1;
	% Local Parameter:   id =  Km1430, name = Km1430
	reaction_r_1065_Km1430=0.1;

	reaction_r_1065=compartment_cell*reaction_r_1065_Vmax*(x(149)*x(326)-x(256)*x(336)/reaction_r_1065_Keq)/(reaction_r_1065_Km0502*reaction_r_1065_Km1391)/((1+x(149)/reaction_r_1065_Km0502)*(1+x(326)/reaction_r_1065_Km1391)+(1+x(256)/reaction_r_1065_Km1081)*(1+x(336)/reaction_r_1065_Km1430)-1);

% Reaction: id = r_1067, name = orotate phosphoribosyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1067_FLUX_VALUE=0.0458199505005801;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1067_Vmax=0.641479307008121;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1067_Keq=2.0;
	% Local Parameter:   id =  Km1394, name = Km1394
	reaction_r_1067_Km1394=0.1;
	% Local Parameter:   id =  Km0360, name = Km0360
	reaction_r_1067_Km0360=0.1;
	% Local Parameter:   id =  Km1397, name = Km1397
	reaction_r_1067_Km1397=0.1;
	% Local Parameter:   id =  Km0783, name = Km0783
	reaction_r_1067_Km0783=0.1;

	reaction_r_1067=compartment_cell*reaction_r_1067_Vmax*(x(327)*x(107)-x(328)*x(198)/reaction_r_1067_Keq)/(reaction_r_1067_Km1394*reaction_r_1067_Km0360)/((1+x(327)/reaction_r_1067_Km1394)*(1+x(107)/reaction_r_1067_Km0360)+(1+x(328)/reaction_r_1067_Km1397)*(1+x(198)/reaction_r_1067_Km0783)-1);

% Reaction: id = r_1068, name = orotidine-5'-phosphate decarboxylase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1068_FLUX_VALUE=0.0458199505005801;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1068_Vmax=0.458199505005801;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1068_Keq=0.2;
	% Local Parameter:   id =  Km1397, name = Km1397
	reaction_r_1068_Km1397=0.1;
	% Local Parameter:   id =  Km0543, name = Km0543
	reaction_r_1068_Km0543=0.1;
	% Local Parameter:   id =  Km1762, name = Km1762
	reaction_r_1068_Km1762=0.1;

	reaction_r_1068=compartment_cell*reaction_r_1068_Vmax*(x(328)-x(160)*x(394)/reaction_r_1068_Keq)/reaction_r_1068_Km1397/(1+x(328)/reaction_r_1068_Km1397+(1+x(160)/reaction_r_1068_Km0543)*(1+x(394)/reaction_r_1068_Km1762)-1);

% Reaction: id = r_1074, name = pantetheine-phosphate adenylyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1074_FLUX_VALUE=7.97856388897518E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1074_Vmax=0.00111699894445653;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1074_Keq=2.0;
	% Local Parameter:   id =  Km0467, name = Km0467
	reaction_r_1074_Km0467=0.1;
	% Local Parameter:   id =  Km1413, name = Km1413
	reaction_r_1074_Km1413=0.1;
	% Local Parameter:   id =  Km0754, name = Km0754
	reaction_r_1074_Km0754=0.1;
	% Local Parameter:   id =  Km0783, name = Km0783
	reaction_r_1074_Km0783=0.1;

	reaction_r_1074=compartment_cell*reaction_r_1074_Vmax*(x(139)*x(334)-x(189)*x(198)/reaction_r_1074_Keq)/(reaction_r_1074_Km0467*reaction_r_1074_Km1413)/((1+x(139)/reaction_r_1074_Km0467)*(1+x(334)/reaction_r_1074_Km1413)+(1+x(189)/reaction_r_1074_Km0754)*(1+x(198)/reaction_r_1074_Km0783)-1);

% Reaction: id = r_1075, name = pantothenate kinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1075_FLUX_VALUE=7.97856388897518E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1075_Vmax=0.00111699894445653;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1075_Keq=2.0;
	% Local Parameter:   id =  Km0467, name = Km0467
	reaction_r_1075_Km0467=0.1;
	% Local Parameter:   id =  Km0033, name = Km0033
	reaction_r_1075_Km0033=0.1;
	% Local Parameter:   id =  Km0599, name = Km0599
	reaction_r_1075_Km0599=0.1;
	% Local Parameter:   id =  Km0421, name = Km0421
	reaction_r_1075_Km0421=0.1;

	reaction_r_1075=compartment_cell*reaction_r_1075_Vmax*(x(139)*x(8)-x(168)*x(132)/reaction_r_1075_Keq)/(reaction_r_1075_Km0467*reaction_r_1075_Km0033)/((1+x(139)/reaction_r_1075_Km0467)*(1+x(8)/reaction_r_1075_Km0033)+(1+x(168)/reaction_r_1075_Km0599)*(1+x(132)/reaction_r_1075_Km0421)-1);

% Reaction: id = r_1076, name = pantothenate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1076_FLUX_VALUE=7.97856388884133E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1076_Vmax=0.0023935691666524;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1076_Keq=2.0;
	% Local Parameter:   id =  Km0470, name = Km0470
	reaction_r_1076_Km0470=0.1;
	% Local Parameter:   id =  Km0467, name = Km0467
	reaction_r_1076_Km0467=0.1;
	% Local Parameter:   id =  Km0032, name = Km0032
	reaction_r_1076_Km0032=0.1;
	% Local Parameter:   id =  Km0454, name = Km0454
	reaction_r_1076_Km0454=0.1;
	% Local Parameter:   id =  Km0033, name = Km0033
	reaction_r_1076_Km0033=0.1;
	% Local Parameter:   id =  Km0783, name = Km0783
	reaction_r_1076_Km0783=0.1;

	reaction_r_1076=compartment_cell*reaction_r_1076_Vmax*(x(140)*x(139)*x(7)-x(137)*x(8)*x(198)/reaction_r_1076_Keq)/(reaction_r_1076_Km0470*reaction_r_1076_Km0467*reaction_r_1076_Km0032)/((1+x(140)/reaction_r_1076_Km0470)*(1+x(139)/reaction_r_1076_Km0467)*(1+x(7)/reaction_r_1076_Km0032)+(1+x(137)/reaction_r_1076_Km0454)*(1+x(8)/reaction_r_1076_Km0033)*(1+x(198)/reaction_r_1076_Km0783)-1);

% Reaction: id = r_1081, name = phenylalanine transaminase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1081_FLUX_VALUE=0.0256671508442138;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1081_Vmax=0.359340111818993;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1081_Keq=2.0;
	% Local Parameter:   id =  Km1095, name = Km1095
	reaction_r_1081_Km1095=0.1;
	% Local Parameter:   id =  Km1429, name = Km1429
	reaction_r_1081_Km1429=0.1;
	% Local Parameter:   id =  Km0233, name = Km0233
	reaction_r_1081_Km0233=0.1;
	% Local Parameter:   id =  Km1151, name = Km1151
	reaction_r_1081_Km1151=0.1;

	reaction_r_1081=compartment_cell*reaction_r_1081_Vmax*(x(259)*x(335)-x(52)*x(275)/reaction_r_1081_Keq)/(reaction_r_1081_Km1095*reaction_r_1081_Km1429)/((1+x(259)/reaction_r_1081_Km1095)*(1+x(335)/reaction_r_1081_Km1429)+(1+x(52)/reaction_r_1081_Km0233)*(1+x(275)/reaction_r_1081_Km1151)-1);

% Reaction: id = r_1123, name = Phosphatidylserine decarboxylase (n-C16:0)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1123_FLUX_VALUE=0.00884013797559549;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1123_Vmax=0.0884013797559549;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1123_Keq=0.2;
	% Local Parameter:   id =  Km1477, name = Km1477
	reaction_r_1123_Km1477=0.1;
	% Local Parameter:   id =  Km0543, name = Km0543
	reaction_r_1123_Km0543=0.1;
	% Local Parameter:   id =  Km1437, name = Km1437
	reaction_r_1123_Km1437=0.1;

	reaction_r_1123=compartment_cell*reaction_r_1123_Vmax*(x(340)-x(160)*x(338)/reaction_r_1123_Keq)/reaction_r_1123_Km1477/(1+x(340)/reaction_r_1123_Km1477+(1+x(160)/reaction_r_1123_Km0543)*(1+x(338)/reaction_r_1123_Km1437)-1);

% Reaction: id = r_1124, name = Phosphatidylserine decarboxylase (n-C16:1)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1124_FLUX_VALUE=0.0104178435779464;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1124_Vmax=0.104178435779464;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1124_Keq=0.2;
	% Local Parameter:   id =  Km1476, name = Km1476
	reaction_r_1124_Km1476=0.1;
	% Local Parameter:   id =  Km0543, name = Km0543
	reaction_r_1124_Km0543=0.1;
	% Local Parameter:   id =  Km1435, name = Km1435
	reaction_r_1124_Km1435=0.1;

	reaction_r_1124=compartment_cell*reaction_r_1124_Vmax*(x(339)-x(160)*x(337)/reaction_r_1124_Keq)/reaction_r_1124_Km1476/(1+x(339)/reaction_r_1124_Km1476+(1+x(160)/reaction_r_1124_Km0543)*(1+x(337)/reaction_r_1124_Km1435)-1);

% Reaction: id = r_1130, name = Phosphatidylserine syntase (n-C16:0)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1130_FLUX_VALUE=0.00884013797559936;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1130_Vmax=0.123761931658391;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1130_Keq=2.0;
	% Local Parameter:   id =  Km0513, name = Km0513
	reaction_r_1130_Km0513=0.1;
	% Local Parameter:   id =  Km1170, name = Km1170
	reaction_r_1130_Km1170=0.1;
	% Local Parameter:   id =  Km0539, name = Km0539
	reaction_r_1130_Km0539=0.1;
	% Local Parameter:   id =  Km1477, name = Km1477
	reaction_r_1130_Km1477=0.1;

	reaction_r_1130=compartment_cell*reaction_r_1130_Vmax*(x(152)*x(277)-x(158)*x(340)/reaction_r_1130_Keq)/(reaction_r_1130_Km0513*reaction_r_1130_Km1170)/((1+x(152)/reaction_r_1130_Km0513)*(1+x(277)/reaction_r_1130_Km1170)+(1+x(158)/reaction_r_1130_Km0539)*(1+x(340)/reaction_r_1130_Km1477)-1);

% Reaction: id = r_1131, name = Phosphatidylserine syntase (n-C16:1)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1131_FLUX_VALUE=0.0104178435779464;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1131_Vmax=0.14584981009125;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1131_Keq=2.0;
	% Local Parameter:   id =  Km0512, name = Km0512
	reaction_r_1131_Km0512=0.1;
	% Local Parameter:   id =  Km1170, name = Km1170
	reaction_r_1131_Km1170=0.1;
	% Local Parameter:   id =  Km0539, name = Km0539
	reaction_r_1131_Km0539=0.1;
	% Local Parameter:   id =  Km1476, name = Km1476
	reaction_r_1131_Km1476=0.1;

	reaction_r_1131=compartment_cell*reaction_r_1131_Vmax*(x(151)*x(277)-x(158)*x(339)/reaction_r_1131_Keq)/(reaction_r_1131_Km0512*reaction_r_1131_Km1170)/((1+x(151)/reaction_r_1131_Km0512)*(1+x(277)/reaction_r_1131_Km1170)+(1+x(158)/reaction_r_1131_Km0539)*(1+x(339)/reaction_r_1131_Km1476)-1);

% Reaction: id = r_1134, name = phospho-L-serine phosphatase (periplasmic)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1134_FLUX_VALUE=0.146909255332631;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1134_Vmax=1.46909255332631;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1134_Keq=0.2;
	% Local Parameter:   id =  Km1364, name = Km1364
	reaction_r_1134_Km1364=0.1;
	% Local Parameter:   id =  Km1430, name = Km1430
	reaction_r_1134_Km1430=0.1;
	% Local Parameter:   id =  Km1170, name = Km1170
	reaction_r_1134_Km1170=0.1;

	reaction_r_1134=compartment_cell*reaction_r_1134_Vmax*(x(322)-x(336)*x(277)/reaction_r_1134_Keq)/reaction_r_1134_Km1364/(1+x(322)/reaction_r_1134_Km1364+(1+x(336)/reaction_r_1134_Km1430)*(1+x(277)/reaction_r_1134_Km1170)-1);

% Reaction: id = r_1137, name = phospho-N-acetylmuramoyl-pentapeptide-transferase (meso-2,6-diaminopimelate)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1137_FLUX_VALUE=0.0038479948756196;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1137_Vmax=0.0538719282586744;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1137_Keq=2.0;
	% Local Parameter:   id =  Km1768, name = Km1768
	reaction_r_1137_Km1768=0.1;
	% Local Parameter:   id =  Km1755, name = Km1755
	reaction_r_1137_Km1755=0.1;
	% Local Parameter:   id =  Km1777, name = Km1777
	reaction_r_1137_Km1777=0.1;
	% Local Parameter:   id =  Km1762, name = Km1762
	reaction_r_1137_Km1762=0.1;

	reaction_r_1137=compartment_cell*reaction_r_1137_Vmax*(x(396)*x(393)-x(398)*x(394)/reaction_r_1137_Keq)/(reaction_r_1137_Km1768*reaction_r_1137_Km1755)/((1+x(396)/reaction_r_1137_Km1768)*(1+x(393)/reaction_r_1137_Km1755)+(1+x(398)/reaction_r_1137_Km1777)*(1+x(394)/reaction_r_1137_Km1762)-1);

% Reaction: id = r_1139, name = phosphoadenylyl-sulfate reductase (thioredoxin)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1139_FLUX_VALUE=0.0343363591697112;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1139_Vmax=0.755399901733646;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1139_Keq=0.2;
	% Local Parameter:   id =  Km0252, name = Km0252
	reaction_r_1139_Km0252=0.1;
	% Local Parameter:   id =  Km1544, name = Km1544
	reaction_r_1139_Km1544=0.1;
	% Local Parameter:   id =  Km0411, name = Km0411
	reaction_r_1139_Km0411=0.1;
	% Local Parameter:   id =  Km1612, name = Km1612
	reaction_r_1139_Km1612=0.1;
	% Local Parameter:   id =  Km1406, name = Km1406
	reaction_r_1139_Km1406=0.1;

	reaction_r_1139=compartment_cell*reaction_r_1139_Vmax*(x(54)*x(354)-x(129)*x(368)*x(330)/reaction_r_1139_Keq)/(reaction_r_1139_Km0252*reaction_r_1139_Km1544)/((1+x(54)/reaction_r_1139_Km0252)*(1+x(354)/reaction_r_1139_Km1544)+(1+x(129)/reaction_r_1139_Km0411)*(1+x(368)/reaction_r_1139_Km1612)*(1+x(330)/reaction_r_1139_Km1406)-1);

% Reaction: id = r_1141, name = phosphoenolpyruvate carboxylase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1141_FLUX_VALUE=0.492899539861318;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1141_Vmax=6.90059355805845;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1141_Keq=2.0;
	% Local Parameter:   id =  Km0543, name = Km0543
	reaction_r_1141_Km0543=0.1;
	% Local Parameter:   id =  Km1484, name = Km1484
	reaction_r_1141_Km1484=0.1;
	% Local Parameter:   id =  Km1399, name = Km1399
	reaction_r_1141_Km1399=0.1;
	% Local Parameter:   id =  Km1430, name = Km1430
	reaction_r_1141_Km1430=0.1;

	reaction_r_1141=compartment_cell*reaction_r_1141_Vmax*(x(160)*x(341)-x(329)*x(336)/reaction_r_1141_Keq)/(reaction_r_1141_Km0543*reaction_r_1141_Km1484)/((1+x(160)/reaction_r_1141_Km0543)*(1+x(341)/reaction_r_1141_Km1484)+(1+x(329)/reaction_r_1141_Km1399)*(1+x(336)/reaction_r_1141_Km1430)-1);

% Reaction: id = r_1150, name = phosphoglucosamine mutase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1150_FLUX_VALUE=0.0130870610456735;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1150_Vmax=0.078522366274041;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1150_Keq=2.0;
	% Local Parameter:   id =  Km0654, name = Km0654
	reaction_r_1150_Km0654=0.1;
	% Local Parameter:   id =  Km0653, name = Km0653
	reaction_r_1150_Km0653=0.1;

	reaction_r_1150=compartment_cell*reaction_r_1150_Vmax*(x(177)-x(176)/reaction_r_1150_Keq)/reaction_r_1150_Km0654/(1+x(177)/reaction_r_1150_Km0654+1+x(176)/reaction_r_1150_Km0653-1);

% Reaction: id = r_1151, name = phosphoglycerate dehydrogenase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1151_FLUX_VALUE=0.146909255332631;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1151_Vmax=2.05672957465683;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1151_Keq=2.0;
	% Local Parameter:   id =  Km0306, name = Km0306
	reaction_r_1151_Km0306=0.1;
	% Local Parameter:   id =  Km1333, name = Km1333
	reaction_r_1151_Km1333=0.1;
	% Local Parameter:   id =  Km0308, name = Km0308
	reaction_r_1151_Km0308=0.1;
	% Local Parameter:   id =  Km1334, name = Km1334
	reaction_r_1151_Km1334=0.1;

	reaction_r_1151=compartment_cell*reaction_r_1151_Vmax*(x(78)*x(314)-x(80)*x(315)/reaction_r_1151_Keq)/(reaction_r_1151_Km0306*reaction_r_1151_Km1333)/((1+x(78)/reaction_r_1151_Km0306)*(1+x(314)/reaction_r_1151_Km1333)+(1+x(80)/reaction_r_1151_Km0308)*(1+x(315)/reaction_r_1151_Km1334)-1);

% Reaction: id = r_1152, name = phosphoglycerate kinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1152_FLUX_VALUE=0.787832256050213;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1152_Vmax=11.029651584703;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1152_Keq=2.0;
	% Local Parameter:   id =  Km0307, name = Km0307
	reaction_r_1152_Km0307=0.1;
	% Local Parameter:   id =  Km0421, name = Km0421
	reaction_r_1152_Km0421=0.1;
	% Local Parameter:   id =  Km0306, name = Km0306
	reaction_r_1152_Km0306=0.1;
	% Local Parameter:   id =  Km0467, name = Km0467
	reaction_r_1152_Km0467=0.1;

	reaction_r_1152=compartment_cell*reaction_r_1152_Vmax*(x(79)*x(132)-x(78)*x(139)/reaction_r_1152_Keq)/(reaction_r_1152_Km0307*reaction_r_1152_Km0421)/((1+x(79)/reaction_r_1152_Km0307)*(1+x(132)/reaction_r_1152_Km0421)+(1+x(78)/reaction_r_1152_Km0306)*(1+x(139)/reaction_r_1152_Km0467)-1);

% Reaction: id = r_1153, name = phosphoglycerate mutase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1153_FLUX_VALUE=0.64092300071826;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1153_Vmax=3.84553800430956;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1153_Keq=2.0;
	% Local Parameter:   id =  Km0306, name = Km0306
	reaction_r_1153_Km0306=0.1;
	% Local Parameter:   id =  Km0675, name = Km0675
	reaction_r_1153_Km0675=0.1;

	reaction_r_1153=compartment_cell*reaction_r_1153_Vmax*(x(78)-x(181)/reaction_r_1153_Keq)/reaction_r_1153_Km0306/(1+x(78)/reaction_r_1153_Km0306+1+x(181)/reaction_r_1153_Km0675-1);

% Reaction: id = r_1198, name = phosphomethylpyrimidine kinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1198_FLUX_VALUE=3.08892317229363E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1198_Vmax=4.32449244121108E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1198_Keq=2.0;
	% Local Parameter:   id =  Km0313, name = Km0313
	reaction_r_1198_Km0313=0.1;
	% Local Parameter:   id =  Km0467, name = Km0467
	reaction_r_1198_Km0467=0.1;
	% Local Parameter:   id =  Km0218, name = Km0218
	reaction_r_1198_Km0218=0.1;
	% Local Parameter:   id =  Km0421, name = Km0421
	reaction_r_1198_Km0421=0.1;

	reaction_r_1198=compartment_cell*reaction_r_1198_Vmax*(x(84)*x(139)-x(47)*x(132)/reaction_r_1198_Keq)/(reaction_r_1198_Km0313*reaction_r_1198_Km0467)/((1+x(84)/reaction_r_1198_Km0313)*(1+x(139)/reaction_r_1198_Km0467)+(1+x(47)/reaction_r_1198_Km0218)*(1+x(132)/reaction_r_1198_Km0421)-1);

% Reaction: id = r_1200, name = phosphopantothenate-cysteine ligase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1200_FLUX_VALUE=7.97856388897518E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1200_Vmax=0.00239356916669255;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1200_Keq=2.0;
	% Local Parameter:   id =  Km0599, name = Km0599
	reaction_r_1200_Km0599=0.1;
	% Local Parameter:   id =  Km0575, name = Km0575
	reaction_r_1200_Km0575=0.1;
	% Local Parameter:   id =  Km1083, name = Km1083
	reaction_r_1200_Km1083=0.1;
	% Local Parameter:   id =  Km1277, name = Km1277
	reaction_r_1200_Km1277=0.1;
	% Local Parameter:   id =  Km0539, name = Km0539
	reaction_r_1200_Km0539=0.1;
	% Local Parameter:   id =  Km0783, name = Km0783
	reaction_r_1200_Km0783=0.1;

	reaction_r_1200=compartment_cell*reaction_r_1200_Vmax*(x(168)*x(165)*x(258)-x(300)*x(158)*x(198)/reaction_r_1200_Keq)/(reaction_r_1200_Km0599*reaction_r_1200_Km0575*reaction_r_1200_Km1083)/((1+x(168)/reaction_r_1200_Km0599)*(1+x(165)/reaction_r_1200_Km0575)*(1+x(258)/reaction_r_1200_Km1083)+(1+x(300)/reaction_r_1200_Km1277)*(1+x(158)/reaction_r_1200_Km0539)*(1+x(198)/reaction_r_1200_Km0783)-1);

% Reaction: id = r_1201, name = phosphopantothenoylcysteine decarboxylase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1201_FLUX_VALUE=7.97856388897518E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1201_Vmax=7.97856388897518E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1201_Keq=0.2;
	% Local Parameter:   id =  Km1277, name = Km1277
	reaction_r_1201_Km1277=0.1;
	% Local Parameter:   id =  Km0543, name = Km0543
	reaction_r_1201_Km0543=0.1;
	% Local Parameter:   id =  Km1413, name = Km1413
	reaction_r_1201_Km1413=0.1;

	reaction_r_1201=compartment_cell*reaction_r_1201_Vmax*(x(300)-x(160)*x(334)/reaction_r_1201_Keq)/reaction_r_1201_Km1277/(1+x(300)/reaction_r_1201_Km1277+(1+x(160)/reaction_r_1201_Km0543)*(1+x(334)/reaction_r_1201_Km1413)-1);

% Reaction: id = r_1202, name = phosphopentomutase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1202_FLUX_VALUE=9.32217621775477E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1202_Vmax=5.59330573065286E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1202_Keq=2.0;
	% Local Parameter:   id =  Km0446, name = Km0446
	reaction_r_1202_Km0446=0.1;
	% Local Parameter:   id =  Km0445, name = Km0445
	reaction_r_1202_Km0445=0.1;

	reaction_r_1202=compartment_cell*reaction_r_1202_Vmax*(x(135)-x(134)/reaction_r_1202_Keq)/reaction_r_1202_Km0446/(1+x(135)/reaction_r_1202_Km0446+1+x(134)/reaction_r_1202_Km0445-1);

% Reaction: id = r_1204, name = phosphoribosyl-AMP cyclohydrolase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1204_FLUX_VALUE=0.0131230753965474;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1204_Vmax=0.0787384523792844;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1204_Keq=2.0;
	% Local Parameter:   id =  Km0098, name = Km0098
	reaction_r_1204_Km0098=0.1;
	% Local Parameter:   id =  Km0097, name = Km0097
	reaction_r_1204_Km0097=0.1;

	reaction_r_1204=compartment_cell*reaction_r_1204_Vmax*(x(25)-x(24)/reaction_r_1204_Keq)/reaction_r_1204_Km0098/(1+x(25)/reaction_r_1204_Km0098+1+x(24)/reaction_r_1204_Km0097-1);

% Reaction: id = r_1205, name = phosphoribosyl-ATP pyrophosphatase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1205_FLUX_VALUE=0.0131230753965474;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1205_Vmax=0.131230753965474;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1205_Keq=0.2;
	% Local Parameter:   id =  Km0099, name = Km0099
	reaction_r_1205_Km0099=0.1;
	% Local Parameter:   id =  Km0783, name = Km0783
	reaction_r_1205_Km0783=0.1;
	% Local Parameter:   id =  Km0098, name = Km0098
	reaction_r_1205_Km0098=0.1;

	reaction_r_1205=compartment_cell*reaction_r_1205_Vmax*(x(26)-x(198)*x(25)/reaction_r_1205_Keq)/reaction_r_1205_Km0099/(1+x(26)/reaction_r_1205_Km0099+(1+x(198)/reaction_r_1205_Km0783)*(1+x(25)/reaction_r_1205_Km0098)-1);

% Reaction: id = r_1206, name = phosphoribosylaminoimidazole carboxylase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1206_FLUX_VALUE=0.0613899240064973;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1206_Vmax=1.84169772019492;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1206_Keq=2.0;
	% Local Parameter:   id =  Km0342, name = Km0342
	reaction_r_1206_Km0342=0.1;
	% Local Parameter:   id =  Km0467, name = Km0467
	reaction_r_1206_Km0467=0.1;
	% Local Parameter:   id =  Km0474, name = Km0474
	reaction_r_1206_Km0474=0.1;
	% Local Parameter:   id =  Km0362, name = Km0362
	reaction_r_1206_Km0362=0.1;
	% Local Parameter:   id =  Km0421, name = Km0421
	reaction_r_1206_Km0421=0.1;
	% Local Parameter:   id =  Km1430, name = Km1430
	reaction_r_1206_Km1430=0.1;

	reaction_r_1206=compartment_cell*reaction_r_1206_Vmax*(x(98)*x(139)*x(141)-x(109)*x(132)*x(336)/reaction_r_1206_Keq)/(reaction_r_1206_Km0342*reaction_r_1206_Km0467*reaction_r_1206_Km0474)/((1+x(98)/reaction_r_1206_Km0342)*(1+x(139)/reaction_r_1206_Km0467)*(1+x(141)/reaction_r_1206_Km0474)+(1+x(109)/reaction_r_1206_Km0362)*(1+x(132)/reaction_r_1206_Km0421)*(1+x(336)/reaction_r_1206_Km1430)-1);

% Reaction: id = r_1207, name = phosphoribosylaminoimidazole carboxylase (mutase rxn)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1207_FLUX_VALUE=0.0613899240064973;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1207_Vmax=0.368339544038984;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1207_Keq=2.0;
	% Local Parameter:   id =  Km0362, name = Km0362
	reaction_r_1207_Km0362=0.1;
	% Local Parameter:   id =  Km0344, name = Km0344
	reaction_r_1207_Km0344=0.1;

	reaction_r_1207=compartment_cell*reaction_r_1207_Vmax*(x(109)-x(100)/reaction_r_1207_Keq)/reaction_r_1207_Km0362/(1+x(109)/reaction_r_1207_Km0362+1+x(100)/reaction_r_1207_Km0344-1);

% Reaction: id = r_1208, name = phosphoribosylaminoimidazole synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1208_FLUX_VALUE=0.0614208132382202;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1208_Vmax=1.35125789124084;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1208_Keq=0.2;
	% Local Parameter:   id =  Km0467, name = Km0467
	reaction_r_1208_Km0467=0.1;
	% Local Parameter:   id =  Km0162, name = Km0162
	reaction_r_1208_Km0162=0.1;
	% Local Parameter:   id =  Km0421, name = Km0421
	reaction_r_1208_Km0421=0.1;
	% Local Parameter:   id =  Km0342, name = Km0342
	reaction_r_1208_Km0342=0.1;
	% Local Parameter:   id =  Km1430, name = Km1430
	reaction_r_1208_Km1430=0.1;

	reaction_r_1208=compartment_cell*reaction_r_1208_Vmax*(x(139)*x(38)-x(132)*x(98)*x(336)/reaction_r_1208_Keq)/(reaction_r_1208_Km0467*reaction_r_1208_Km0162)/((1+x(139)/reaction_r_1208_Km0467)*(1+x(38)/reaction_r_1208_Km0162)+(1+x(132)/reaction_r_1208_Km0421)*(1+x(98)/reaction_r_1208_Km0342)*(1+x(336)/reaction_r_1208_Km1430)-1);

% Reaction: id = r_1209, name = phosphoribosylaminoimidazolecarboxamide formyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1209_FLUX_VALUE=0.0745129994030467;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1209_Vmax=1.04318199164265;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1209_Keq=2.0;
	% Local Parameter:   id =  Km0133, name = Km0133
	reaction_r_1209_Km0133=0.1;
	% Local Parameter:   id =  Km0343, name = Km0343
	reaction_r_1209_Km0343=0.1;
	% Local Parameter:   id =  Km0352, name = Km0352
	reaction_r_1209_Km0352=0.1;
	% Local Parameter:   id =  Km0337, name = Km0337
	reaction_r_1209_Km0337=0.1;

	reaction_r_1209=compartment_cell*reaction_r_1209_Vmax*(x(32)*x(99)-x(104)*x(96)/reaction_r_1209_Keq)/(reaction_r_1209_Km0133*reaction_r_1209_Km0343)/((1+x(32)/reaction_r_1209_Km0133)*(1+x(99)/reaction_r_1209_Km0343)+(1+x(104)/reaction_r_1209_Km0352)*(1+x(96)/reaction_r_1209_Km0337)-1);

% Reaction: id = r_1210, name = phosphoribosylaminoimidazolesuccinocarboxamide synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1210_FLUX_VALUE=0.0613899240064973;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1210_Vmax=1.84169772019492;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1210_Keq=2.0;
	% Local Parameter:   id =  Km0344, name = Km0344
	reaction_r_1210_Km0344=0.1;
	% Local Parameter:   id =  Km1072, name = Km1072
	reaction_r_1210_Km1072=0.1;
	% Local Parameter:   id =  Km0467, name = Km0467
	reaction_r_1210_Km0467=0.1;
	% Local Parameter:   id =  Km0040, name = Km0040
	reaction_r_1210_Km0040=0.1;
	% Local Parameter:   id =  Km0421, name = Km0421
	reaction_r_1210_Km0421=0.1;
	% Local Parameter:   id =  Km1430, name = Km1430
	reaction_r_1210_Km1430=0.1;

	reaction_r_1210=compartment_cell*reaction_r_1210_Vmax*(x(100)*x(254)*x(139)-x(9)*x(132)*x(336)/reaction_r_1210_Keq)/(reaction_r_1210_Km0344*reaction_r_1210_Km1072*reaction_r_1210_Km0467)/((1+x(100)/reaction_r_1210_Km0344)*(1+x(254)/reaction_r_1210_Km1072)*(1+x(139)/reaction_r_1210_Km0467)+(1+x(9)/reaction_r_1210_Km0040)*(1+x(132)/reaction_r_1210_Km0421)*(1+x(336)/reaction_r_1210_Km1430)-1);

% Reaction: id = r_1211, name = phosphoribosylanthranilate isomerase (irreversible)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1211_FLUX_VALUE=0.00787329117099325;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1211_Vmax=0.0472397470259595;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1211_Keq=2.0;
	% Local Parameter:   id =  Km1278, name = Km1278
	reaction_r_1211_Km1278=0.1;
	% Local Parameter:   id =  Km0096, name = Km0096
	reaction_r_1211_Km0096=0.1;

	reaction_r_1211=compartment_cell*reaction_r_1211_Vmax*(x(301)-x(23)/reaction_r_1211_Keq)/reaction_r_1211_Km1278/(1+x(301)/reaction_r_1211_Km1278+1+x(23)/reaction_r_1211_Km0096-1);

% Reaction: id = r_1212, name = phosphoribosylformylglycinamidine synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1212_FLUX_VALUE=0.0614208132382202;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1212_Vmax=2.82535740895813;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1212_Keq=0.2;
	% Local Parameter:   id =  Km0467, name = Km0467
	reaction_r_1212_Km0467=0.1;
	% Local Parameter:   id =  Km1322, name = Km1322
	reaction_r_1212_Km1322=0.1;
	% Local Parameter:   id =  Km1101, name = Km1101
	reaction_r_1212_Km1101=0.1;
	% Local Parameter:   id =  Km0421, name = Km0421
	reaction_r_1212_Km0421=0.1;
	% Local Parameter:   id =  Km0162, name = Km0162
	reaction_r_1212_Km0162=0.1;
	% Local Parameter:   id =  Km1095, name = Km1095
	reaction_r_1212_Km1095=0.1;
	% Local Parameter:   id =  Km1430, name = Km1430
	reaction_r_1212_Km1430=0.1;

	reaction_r_1212=compartment_cell*reaction_r_1212_Vmax*(x(139)*x(311)*x(263)-x(132)*x(38)*x(259)*x(336)/reaction_r_1212_Keq)/(reaction_r_1212_Km0467*reaction_r_1212_Km1322*reaction_r_1212_Km1101)/((1+x(139)/reaction_r_1212_Km0467)*(1+x(311)/reaction_r_1212_Km1322)*(1+x(263)/reaction_r_1212_Km1101)+(1+x(132)/reaction_r_1212_Km0421)*(1+x(38)/reaction_r_1212_Km0162)*(1+x(259)/reaction_r_1212_Km1095)*(1+x(336)/reaction_r_1212_Km1430)-1);

% Reaction: id = r_1214, name = phosphoribosylglycinamide synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1214_FLUX_VALUE=0.0614208132382202;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1214_Vmax=1.84262439714661;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1214_Keq=2.0;
	% Local Parameter:   id =  Km0467, name = Km0467
	reaction_r_1214_Km0467=0.1;
	% Local Parameter:   id =  Km0929, name = Km0929
	reaction_r_1214_Km0929=0.1;
	% Local Parameter:   id =  Km0361, name = Km0361
	reaction_r_1214_Km0361=0.1;
	% Local Parameter:   id =  Km0421, name = Km0421
	reaction_r_1214_Km0421=0.1;
	% Local Parameter:   id =  Km1318, name = Km1318
	reaction_r_1214_Km1318=0.1;
	% Local Parameter:   id =  Km1430, name = Km1430
	reaction_r_1214_Km1430=0.1;

	reaction_r_1214=compartment_cell*reaction_r_1214_Vmax*(x(139)*x(224)*x(108)-x(132)*x(309)*x(336)/reaction_r_1214_Keq)/(reaction_r_1214_Km0467*reaction_r_1214_Km0929*reaction_r_1214_Km0361)/((1+x(139)/reaction_r_1214_Km0467)*(1+x(224)/reaction_r_1214_Km0929)*(1+x(108)/reaction_r_1214_Km0361)+(1+x(132)/reaction_r_1214_Km0421)*(1+x(309)/reaction_r_1214_Km1318)*(1+x(336)/reaction_r_1214_Km1430)-1);

% Reaction: id = r_1215, name = phosphoribosylpyrophosphate synthetase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1215_FLUX_VALUE=0.128552671426845;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1215_Vmax=1.79973739997583;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1215_Keq=2.0;
	% Local Parameter:   id =  Km0467, name = Km0467
	reaction_r_1215_Km0467=0.1;
	% Local Parameter:   id =  Km0446, name = Km0446
	reaction_r_1215_Km0446=0.1;
	% Local Parameter:   id =  Km0454, name = Km0454
	reaction_r_1215_Km0454=0.1;
	% Local Parameter:   id =  Km0360, name = Km0360
	reaction_r_1215_Km0360=0.1;

	reaction_r_1215=compartment_cell*reaction_r_1215_Vmax*(x(139)*x(135)-x(137)*x(107)/reaction_r_1215_Keq)/(reaction_r_1215_Km0467*reaction_r_1215_Km0446)/((1+x(139)/reaction_r_1215_Km0467)*(1+x(135)/reaction_r_1215_Km0446)+(1+x(137)/reaction_r_1215_Km0454)*(1+x(107)/reaction_r_1215_Km0360)-1);

% Reaction: id = r_1217, name = phosphoserine transaminase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1217_FLUX_VALUE=0.146909255332631;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1217_Vmax=2.05672957465683;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1217_Keq=2.0;
	% Local Parameter:   id =  Km0308, name = Km0308
	reaction_r_1217_Km0308=0.1;
	% Local Parameter:   id =  Km1095, name = Km1095
	reaction_r_1217_Km1095=0.1;
	% Local Parameter:   id =  Km0233, name = Km0233
	reaction_r_1217_Km0233=0.1;
	% Local Parameter:   id =  Km1364, name = Km1364
	reaction_r_1217_Km1364=0.1;

	reaction_r_1217=compartment_cell*reaction_r_1217_Vmax*(x(80)*x(259)-x(52)*x(322)/reaction_r_1217_Keq)/(reaction_r_1217_Km0308*reaction_r_1217_Km1095)/((1+x(80)/reaction_r_1217_Km0308)*(1+x(259)/reaction_r_1217_Km1095)+(1+x(52)/reaction_r_1217_Km0233)*(1+x(322)/reaction_r_1217_Km1364)-1);

% Reaction: id = r_1218, name = phosphotransacetylase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1218_FLUX_VALUE=0.0807006804356794;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1218_Vmax=1.12980952609951;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1218_Keq=2.0;
	% Local Parameter:   id =  Km0393, name = Km0393
	reaction_r_1218_Km0393=0.1;
	% Local Parameter:   id =  Km0555, name = Km0555
	reaction_r_1218_Km0555=0.1;
	% Local Parameter:   id =  Km0395, name = Km0395
	reaction_r_1218_Km0395=0.1;
	% Local Parameter:   id =  Km1430, name = Km1430
	reaction_r_1218_Km1430=0.1;

	reaction_r_1218=compartment_cell*reaction_r_1218_Vmax*(x(124)*x(162)-x(125)*x(336)/reaction_r_1218_Keq)/(reaction_r_1218_Km0393*reaction_r_1218_Km0555)/((1+x(124)/reaction_r_1218_Km0393)*(1+x(162)/reaction_r_1218_Km0555)+(1+x(125)/reaction_r_1218_Km0395)*(1+x(336)/reaction_r_1218_Km1430)-1);

% Reaction: id = r_1220, name = Pimeloyl-[ACP] methyl ester esterase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1220_FLUX_VALUE=2.77033467884759E-7;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1220_Vmax=2.77033467884759E-6;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1220_Keq=0.2;
	% Local Parameter:   id =  Km1492, name = Km1492
	reaction_r_1220_Km1492=0.1;
	% Local Parameter:   id =  Km1248, name = Km1248
	reaction_r_1220_Km1248=0.1;
	% Local Parameter:   id =  Km1491, name = Km1491
	reaction_r_1220_Km1491=0.1;

	reaction_r_1220=compartment_cell*reaction_r_1220_Vmax*(x(343)-x(291)*x(342)/reaction_r_1220_Keq)/reaction_r_1220_Km1492/(1+x(343)/reaction_r_1220_Km1492+(1+x(291)/reaction_r_1220_Km1248)*(1+x(342)/reaction_r_1220_Km1491)-1);

% Reaction: id = r_1222, name = polyphosphate kinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1222_FLUX_VALUE=0.484650799082247;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1222_Vmax=6.78511118715146;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1222_Keq=2.0;
	% Local Parameter:   id =  Km0421, name = Km0421
	reaction_r_1222_Km0421=0.1;
	% Local Parameter:   id =  Km0783, name = Km0783
	reaction_r_1222_Km0783=0.1;
	% Local Parameter:   id =  Km0467, name = Km0467
	reaction_r_1222_Km0467=0.1;
	% Local Parameter:   id =  Km1430, name = Km1430
	reaction_r_1222_Km1430=0.1;

	reaction_r_1222=compartment_cell*reaction_r_1222_Vmax*(x(132)*x(198)-x(139)*x(336)/reaction_r_1222_Keq)/(reaction_r_1222_Km0421*reaction_r_1222_Km0783)/((1+x(132)/reaction_r_1222_Km0421)*(1+x(198)/reaction_r_1222_Km0783)+(1+x(139)/reaction_r_1222_Km0467)*(1+x(336)/reaction_r_1222_Km1430)-1);

% Reaction: id = r_1223, name = porphobilinogen synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1223_FLUX_VALUE=2.47113853781668E-4;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1223_Vmax=0.00247113853781668;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1223_Keq=20.0;
	% Local Parameter:   id =  Km0345, name = Km0345
	reaction_r_1223_Km0345=0.1;
	% Local Parameter:   id =  Km1493, name = Km1493
	reaction_r_1223_Km1493=0.1;

	reaction_r_1223=compartment_cell*reaction_r_1223_Vmax*(x(101)^2-x(344)/reaction_r_1223_Keq)/reaction_r_1223_Km0345^2/((1+x(101)/reaction_r_1223_Km0345)^2+1+x(344)/reaction_r_1223_Km1493-1);

% Reaction: id = r_1224, name = prephenate dehydratase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1224_FLUX_VALUE=0.0256671508442138;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1224_Vmax=0.256671508442138;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1224_Keq=0.2;
	% Local Parameter:   id =  Km1497, name = Km1497
	reaction_r_1224_Km1497=0.1;
	% Local Parameter:   id =  Km0543, name = Km0543
	reaction_r_1224_Km0543=0.1;
	% Local Parameter:   id =  Km1429, name = Km1429
	reaction_r_1224_Km1429=0.1;

	reaction_r_1224=compartment_cell*reaction_r_1224_Vmax*(x(346)-x(160)*x(335)/reaction_r_1224_Keq)/reaction_r_1224_Km1497/(1+x(346)/reaction_r_1224_Km1497+(1+x(160)/reaction_r_1224_Km0543)*(1+x(335)/reaction_r_1224_Km1429)-1);

% Reaction: id = r_1225, name = prephenate dehydrogenase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1225_FLUX_VALUE=0.0191323468756361;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1225_Vmax=0.420911631263994;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1225_Keq=0.2;
	% Local Parameter:   id =  Km1333, name = Km1333
	reaction_r_1225_Km1333=0.1;
	% Local Parameter:   id =  Km1497, name = Km1497
	reaction_r_1225_Km1497=0.1;
	% Local Parameter:   id =  Km0262, name = Km0262
	reaction_r_1225_Km0262=0.1;
	% Local Parameter:   id =  Km0543, name = Km0543
	reaction_r_1225_Km0543=0.1;
	% Local Parameter:   id =  Km1334, name = Km1334
	reaction_r_1225_Km1334=0.1;

	reaction_r_1225=compartment_cell*reaction_r_1225_Vmax*(x(314)*x(346)-x(56)*x(160)*x(315)/reaction_r_1225_Keq)/(reaction_r_1225_Km1333*reaction_r_1225_Km1497)/((1+x(314)/reaction_r_1225_Km1333)*(1+x(346)/reaction_r_1225_Km1497)+(1+x(56)/reaction_r_1225_Km0262)*(1+x(160)/reaction_r_1225_Km0543)*(1+x(315)/reaction_r_1225_Km1334)-1);

% Reaction: id = r_1230, name = protoporphyrinogen oxidase (aerobic)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1230_FLUX_VALUE=3.08892317222945E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1230_Vmax=3.08892317222945E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1230_Keq=20.0;
	% Local Parameter:   id =  Km1372, name = Km1372
	reaction_r_1230_Km1372=0.1;
	% Local Parameter:   id =  Km1512, name = Km1512
	reaction_r_1230_Km1512=0.1;
	% Local Parameter:   id =  Km1511, name = Km1511
	reaction_r_1230_Km1511=0.1;

	reaction_r_1230=compartment_cell*reaction_r_1230_Vmax*(x(324)*x(349)-x(348)/reaction_r_1230_Keq)/(reaction_r_1230_Km1372*reaction_r_1230_Km1512)/((1+x(324)/reaction_r_1230_Km1372)*(1+x(349)/reaction_r_1230_Km1512)+1+x(348)/reaction_r_1230_Km1511-1);

% Reaction: id = r_1232, name = purine-nucleoside phosphorylase (Adenosine)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1232_FLUX_VALUE=9.32217619764956E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1232_Vmax=0.00130510466767094;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1232_Keq=2.0;
	% Local Parameter:   id =  Km0405, name = Km0405
	reaction_r_1232_Km0405=0.1;
	% Local Parameter:   id =  Km0445, name = Km0445
	reaction_r_1232_Km0445=0.1;
	% Local Parameter:   id =  Km0408, name = Km0408
	reaction_r_1232_Km0408=0.1;
	% Local Parameter:   id =  Km1430, name = Km1430
	reaction_r_1232_Km1430=0.1;

	reaction_r_1232=compartment_cell*reaction_r_1232_Vmax*(x(127)*x(134)-x(128)*x(336)/reaction_r_1232_Keq)/(reaction_r_1232_Km0405*reaction_r_1232_Km0445)/((1+x(127)/reaction_r_1232_Km0405)*(1+x(134)/reaction_r_1232_Km0445)+(1+x(128)/reaction_r_1232_Km0408)*(1+x(336)/reaction_r_1232_Km1430)-1);

% Reaction: id = r_1245, name = Pyridoxine 5'-phosphate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1245_FLUX_VALUE=3.08892317222495E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1245_Vmax=0.00142090465922348;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1245_Keq=0.2;
	% Local Parameter:   id =  Km0116, name = Km0116
	reaction_r_1245_Km0116=0.1;
	% Local Parameter:   id =  Km1333, name = Km1333
	reaction_r_1245_Km1333=0.1;
	% Local Parameter:   id =  Km1362, name = Km1362
	reaction_r_1245_Km1362=0.1;
	% Local Parameter:   id =  Km0543, name = Km0543
	reaction_r_1245_Km0543=0.1;
	% Local Parameter:   id =  Km1334, name = Km1334
	reaction_r_1245_Km1334=0.1;
	% Local Parameter:   id =  Km1530, name = Km1530
	reaction_r_1245_Km1530=0.1;
	% Local Parameter:   id =  Km1430, name = Km1430
	reaction_r_1245_Km1430=0.1;

	reaction_r_1245=compartment_cell*reaction_r_1245_Vmax*(x(27)*x(314)*x(320)-x(160)*x(315)*x(351)*x(336)/reaction_r_1245_Keq)/(reaction_r_1245_Km0116*reaction_r_1245_Km1333*reaction_r_1245_Km1362)/((1+x(27)/reaction_r_1245_Km0116)*(1+x(314)/reaction_r_1245_Km1333)*(1+x(320)/reaction_r_1245_Km1362)+(1+x(160)/reaction_r_1245_Km0543)*(1+x(315)/reaction_r_1245_Km1334)*(1+x(351)/reaction_r_1245_Km1530)*(1+x(336)/reaction_r_1245_Km1430)-1);

% Reaction: id = r_1250, name = pyrroline-5-carboxylate reductase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1250_FLUX_VALUE=0.0306260499280495;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1250_Vmax=0.428764698992693;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1250_Keq=2.0;
	% Local Parameter:   id =  Km0128, name = Km0128
	reaction_r_1250_Km0128=0.1;
	% Local Parameter:   id =  Km1336, name = Km1336
	reaction_r_1250_Km1336=0.1;
	% Local Parameter:   id =  Km1335, name = Km1335
	reaction_r_1250_Km1335=0.1;
	% Local Parameter:   id =  Km1155, name = Km1155
	reaction_r_1250_Km1155=0.1;

	reaction_r_1250=compartment_cell*reaction_r_1250_Vmax*(x(31)*x(317)-x(316)*x(276)/reaction_r_1250_Keq)/(reaction_r_1250_Km0128*reaction_r_1250_Km1336)/((1+x(31)/reaction_r_1250_Km0128)*(1+x(317)/reaction_r_1250_Km1336)+(1+x(316)/reaction_r_1250_Km1335)*(1+x(276)/reaction_r_1250_Km1155)-1);

% Reaction: id = r_1251, name = pyruvate dehydrogenase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1251_FLUX_VALUE=0.407410405183232;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1251_Vmax=12.222312155497;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1251_Keq=2.0;
	% Local Parameter:   id =  Km0555, name = Km0555
	reaction_r_1251_Km0555=0.1;
	% Local Parameter:   id =  Km1333, name = Km1333
	reaction_r_1251_Km1333=0.1;
	% Local Parameter:   id =  Km1531, name = Km1531
	reaction_r_1251_Km1531=0.1;
	% Local Parameter:   id =  Km0395, name = Km0395
	reaction_r_1251_Km0395=0.1;
	% Local Parameter:   id =  Km0543, name = Km0543
	reaction_r_1251_Km0543=0.1;
	% Local Parameter:   id =  Km1334, name = Km1334
	reaction_r_1251_Km1334=0.1;

	reaction_r_1251=compartment_cell*reaction_r_1251_Vmax*(x(162)*x(314)*x(352)-x(125)*x(160)*x(315)/reaction_r_1251_Keq)/(reaction_r_1251_Km0555*reaction_r_1251_Km1333*reaction_r_1251_Km1531)/((1+x(162)/reaction_r_1251_Km0555)*(1+x(314)/reaction_r_1251_Km1333)*(1+x(352)/reaction_r_1251_Km1531)+(1+x(125)/reaction_r_1251_Km0395)*(1+x(160)/reaction_r_1251_Km0543)*(1+x(315)/reaction_r_1251_Km1334)-1);

% Reaction: id = r_1252, name = pyruvate formate lyase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1252_FLUX_VALUE=0.0973208185619302;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1252_Vmax=1.36249145986702;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1252_Keq=2.0;
	% Local Parameter:   id =  Km0555, name = Km0555
	reaction_r_1252_Km0555=0.1;
	% Local Parameter:   id =  Km1531, name = Km1531
	reaction_r_1252_Km1531=0.1;
	% Local Parameter:   id =  Km0395, name = Km0395
	reaction_r_1252_Km0395=0.1;
	% Local Parameter:   id =  Km0867, name = Km0867
	reaction_r_1252_Km0867=0.1;

	reaction_r_1252=compartment_cell*reaction_r_1252_Vmax*(x(162)*x(352)-x(125)*x(217)/reaction_r_1252_Keq)/(reaction_r_1252_Km0555*reaction_r_1252_Km1531)/((1+x(162)/reaction_r_1252_Km0555)*(1+x(352)/reaction_r_1252_Km1531)+(1+x(125)/reaction_r_1252_Km0395)*(1+x(217)/reaction_r_1252_Km0867)-1);

% Reaction: id = r_1255, name = pyruvate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1255_FLUX_VALUE=0.0150663266603607;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1255_Vmax=0.934112252942364;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1255_Keq=2.0;
	% Local Parameter:   id =  Km0555, name = Km0555
	reaction_r_1255_Km0555=0.1;
	% Local Parameter:   id =  Km0862, name = Km0862
	reaction_r_1255_Km0862=0.1;
	% Local Parameter:   id =  Km1531, name = Km1531
	reaction_r_1255_Km1531=0.1;
	% Local Parameter:   id =  Km0395, name = Km0395
	reaction_r_1255_Km0395=0.1;
	% Local Parameter:   id =  Km0543, name = Km0543
	reaction_r_1255_Km0543=0.1;
	% Local Parameter:   id =  Km0861, name = Km0861
	reaction_r_1255_Km0861=0.1;

	reaction_r_1255=compartment_cell*reaction_r_1255_Vmax*(x(162)*x(215)^2*x(352)-x(125)*x(160)*x(214)^2/reaction_r_1255_Keq)/(reaction_r_1255_Km0555*reaction_r_1255_Km0862^2*reaction_r_1255_Km1531)/((1+x(162)/reaction_r_1255_Km0555)*(1+x(215)/reaction_r_1255_Km0862)^2*(1+x(352)/reaction_r_1255_Km1531)+(1+x(125)/reaction_r_1255_Km0395)*(1+x(160)/reaction_r_1255_Km0543)*(1+x(214)/reaction_r_1255_Km0861)^2-1);

% Reaction: id = r_1259, name = quinolinate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1259_FLUX_VALUE=3.15541120467916E-4;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1259_Vmax=0.00441757568655082;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1259_Keq=2.0;
	% Local Parameter:   id =  Km0772, name = Km0772
	reaction_r_1259_Km0772=0.1;
	% Local Parameter:   id =  Km1005, name = Km1005
	reaction_r_1259_Km1005=0.1;
	% Local Parameter:   id =  Km1430, name = Km1430
	reaction_r_1259_Km1430=0.1;
	% Local Parameter:   id =  Km1537, name = Km1537
	reaction_r_1259_Km1537=0.1;

	reaction_r_1259=compartment_cell*reaction_r_1259_Vmax*(x(196)*x(237)-x(336)*x(353)/reaction_r_1259_Keq)/(reaction_r_1259_Km0772*reaction_r_1259_Km1005)/((1+x(196)/reaction_r_1259_Km0772)*(1+x(237)/reaction_r_1259_Km1005)+(1+x(336)/reaction_r_1259_Km1430)*(1+x(353)/reaction_r_1259_Km1537)-1);

% Reaction: id = r_1264, name = riboflavin kinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1264_FLUX_VALUE=3.08892317229329E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1264_Vmax=4.32449244121061E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1264_Keq=2.0;
	% Local Parameter:   id =  Km0467, name = Km0467
	reaction_r_1264_Km0467=0.1;
	% Local Parameter:   id =  Km1546, name = Km1546
	reaction_r_1264_Km1546=0.1;
	% Local Parameter:   id =  Km0421, name = Km0421
	reaction_r_1264_Km0421=0.1;
	% Local Parameter:   id =  Km0863, name = Km0863
	reaction_r_1264_Km0863=0.1;

	reaction_r_1264=compartment_cell*reaction_r_1264_Vmax*(x(139)*x(355)-x(132)*x(216)/reaction_r_1264_Keq)/(reaction_r_1264_Km0467*reaction_r_1264_Km1546)/((1+x(139)/reaction_r_1264_Km0467)*(1+x(355)/reaction_r_1264_Km1546)+(1+x(132)/reaction_r_1264_Km0421)*(1+x(216)/reaction_r_1264_Km0863)-1);

% Reaction: id = r_1265, name = riboflavin synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1265_FLUX_VALUE=1.23556926891731E-4;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1265_Vmax=0.00172979697648423;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1265_Keq=2.0;
	% Local Parameter:   id =  Km0311, name = Km0311
	reaction_r_1265_Km0311=0.1;
	% Local Parameter:   id =  Km0255, name = Km0255
	reaction_r_1265_Km0255=0.1;
	% Local Parameter:   id =  Km0364, name = Km0364
	reaction_r_1265_Km0364=0.1;
	% Local Parameter:   id =  Km1430, name = Km1430
	reaction_r_1265_Km1430=0.1;

	reaction_r_1265=compartment_cell*reaction_r_1265_Vmax*(x(82)*x(55)-x(110)*x(336)/reaction_r_1265_Keq)/(reaction_r_1265_Km0311*reaction_r_1265_Km0255)/((1+x(82)/reaction_r_1265_Km0311)*(1+x(55)/reaction_r_1265_Km0255)+(1+x(110)/reaction_r_1265_Km0364)*(1+x(336)/reaction_r_1265_Km1430)-1);

% Reaction: id = r_1266, name = riboflavin synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1266_FLUX_VALUE=6.17784634458656E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1266_Vmax=8.64898488242119E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1266_Keq=2.0;
	% Local Parameter:   id =  Km0364, name = Km0364
	reaction_r_1266_Km0364=0.1;
	% Local Parameter:   id =  Km0311, name = Km0311
	reaction_r_1266_Km0311=0.1;
	% Local Parameter:   id =  Km1546, name = Km1546
	reaction_r_1266_Km1546=0.1;

	reaction_r_1266=compartment_cell*reaction_r_1266_Vmax*(x(110)^2-x(82)*x(355)/reaction_r_1266_Keq)/reaction_r_1266_Km0364^2/((1+x(110)/reaction_r_1266_Km0364)^2+(1+x(82)/reaction_r_1266_Km0311)*(1+x(355)/reaction_r_1266_Km1546)-1);

% Reaction: id = r_1276, name = ribonucleoside-triphosphate reductase (ATP) (flavodoxin)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1276_FLUX_VALUE=0.0036249829336045;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1276_Vmax=0.108749488008135;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1276_Keq=2.0;
	% Local Parameter:   id =  Km0467, name = Km0467
	reaction_r_1276_Km0467=0.1;
	% Local Parameter:   id =  Km0861, name = Km0861
	reaction_r_1276_Km0861=0.1;
	% Local Parameter:   id =  Km0726, name = Km0726
	reaction_r_1276_Km0726=0.1;
	% Local Parameter:   id =  Km0862, name = Km0862
	reaction_r_1276_Km0862=0.1;

	reaction_r_1276=compartment_cell*reaction_r_1276_Vmax*(x(139)*x(214)^2-x(184)*x(215)^2/reaction_r_1276_Keq)/(reaction_r_1276_Km0467*reaction_r_1276_Km0861^2)/((1+x(139)/reaction_r_1276_Km0467)*(1+x(214)/reaction_r_1276_Km0861)^2+(1+x(184)/reaction_r_1276_Km0726)*(1+x(215)/reaction_r_1276_Km0862)^2-1);

% Reaction: id = r_1277, name = ribonucleoside-triphosphate reductase (CTP) (flavodoxin)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1277_FLUX_VALUE=0.00374272215765511;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1277_Vmax=0.112281664729653;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1277_Keq=2.0;
	% Local Parameter:   id =  Km0575, name = Km0575
	reaction_r_1277_Km0575=0.1;
	% Local Parameter:   id =  Km0861, name = Km0861
	reaction_r_1277_Km0861=0.1;
	% Local Parameter:   id =  Km0731, name = Km0731
	reaction_r_1277_Km0731=0.1;
	% Local Parameter:   id =  Km0862, name = Km0862
	reaction_r_1277_Km0862=0.1;

	reaction_r_1277=compartment_cell*reaction_r_1277_Vmax*(x(165)*x(214)^2-x(185)*x(215)^2/reaction_r_1277_Keq)/(reaction_r_1277_Km0575*reaction_r_1277_Km0861^2)/((1+x(165)/reaction_r_1277_Km0575)*(1+x(214)/reaction_r_1277_Km0861)^2+(1+x(185)/reaction_r_1277_Km0731)*(1+x(215)/reaction_r_1277_Km0862)^2-1);

% Reaction: id = r_1278, name = ribonucleoside-triphosphate reductase (GTP) (flavodoxin)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1278_FLUX_VALUE=0.00374272215760098;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1278_Vmax=0.112281664728029;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1278_Keq=2.0;
	% Local Parameter:   id =  Km0861, name = Km0861
	reaction_r_1278_Km0861=0.1;
	% Local Parameter:   id =  Km0945, name = Km0945
	reaction_r_1278_Km0945=0.1;
	% Local Parameter:   id =  Km0760, name = Km0760
	reaction_r_1278_Km0760=0.1;
	% Local Parameter:   id =  Km0862, name = Km0862
	reaction_r_1278_Km0862=0.1;

	reaction_r_1278=compartment_cell*reaction_r_1278_Vmax*(x(214)^2*x(229)-x(191)*x(215)^2/reaction_r_1278_Keq)/(reaction_r_1278_Km0861^2*reaction_r_1278_Km0945)/((1+x(214)/reaction_r_1278_Km0861)^2*(1+x(229)/reaction_r_1278_Km0945)+(1+x(191)/reaction_r_1278_Km0760)*(1+x(215)/reaction_r_1278_Km0862)^2-1);

% Reaction: id = r_1279, name = ribonucleoside-triphosphate reductase (UTP) (flavodoxin)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1279_FLUX_VALUE=0.00362498293356975;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1279_Vmax=0.108749488007092;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1279_Keq=2.0;
	% Local Parameter:   id =  Km0861, name = Km0861
	reaction_r_1279_Km0861=0.1;
	% Local Parameter:   id =  Km1792, name = Km1792
	reaction_r_1279_Km1792=0.1;
	% Local Parameter:   id =  Km0810, name = Km0810
	reaction_r_1279_Km0810=0.1;
	% Local Parameter:   id =  Km0862, name = Km0862
	reaction_r_1279_Km0862=0.1;

	reaction_r_1279=compartment_cell*reaction_r_1279_Vmax*(x(214)^2*x(400)-x(206)*x(215)^2/reaction_r_1279_Keq)/(reaction_r_1279_Km0861^2*reaction_r_1279_Km1792)/((1+x(214)/reaction_r_1279_Km0861)^2*(1+x(400)/reaction_r_1279_Km1792)+(1+x(206)/reaction_r_1279_Km0810)*(1+x(215)/reaction_r_1279_Km0862)^2-1);

% Reaction: id = r_1284, name = ribose-5-phosphate isomerase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1284_FLUX_VALUE=0.101534797735323;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1284_Vmax=0.609208786411938;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1284_Keq=2.0;
	% Local Parameter:   id =  Km0704, name = Km0704
	reaction_r_1284_Km0704=0.1;
	% Local Parameter:   id =  Km0446, name = Km0446
	reaction_r_1284_Km0446=0.1;

	reaction_r_1284=compartment_cell*reaction_r_1284_Vmax*(x(182)-x(135)/reaction_r_1284_Keq)/reaction_r_1284_Km0704/(1+x(182)/reaction_r_1284_Km0704+1+x(135)/reaction_r_1284_Km0446-1);

% Reaction: id = r_1285, name = ribulose 5-phosphate 3-epimerase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1285_FLUX_VALUE=0.107049425956634;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1285_Vmax=0.642296555739804;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1285_Keq=2.0;
	% Local Parameter:   id =  Km0721, name = Km0721
	reaction_r_1285_Km0721=0.1;
	% Local Parameter:   id =  Km0704, name = Km0704
	reaction_r_1285_Km0704=0.1;

	reaction_r_1285=compartment_cell*reaction_r_1285_Vmax*(x(183)-x(182)/reaction_r_1285_Keq)/reaction_r_1285_Km0721/(1+x(183)/reaction_r_1285_Km0721+1+x(182)/reaction_r_1285_Km0704-1);

% Reaction: id = r_1288, name = S-adenosylhomocysteine nucleosidase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1288_FLUX_VALUE=6.20554969142397E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1288_Vmax=6.20554969142397E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1288_Keq=0.2;
	% Local Parameter:   id =  Km1551, name = Km1551
	reaction_r_1288_Km1551=0.1;
	% Local Parameter:   id =  Km0405, name = Km0405
	reaction_r_1288_Km0405=0.1;
	% Local Parameter:   id =  Km1558, name = Km1558
	reaction_r_1288_Km1558=0.1;

	reaction_r_1288=compartment_cell*reaction_r_1288_Vmax*(x(357)-x(127)*x(359)/reaction_r_1288_Keq)/reaction_r_1288_Km1551/(1+x(357)/reaction_r_1288_Km1551+(1+x(127)/reaction_r_1288_Km0405)*(1+x(359)/reaction_r_1288_Km1558)-1);

% Reaction: id = r_1291, name = S-ribosylhomocysteine cleavage enzyme	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1291_FLUX_VALUE=6.20554969142397E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1291_Vmax=6.20554969142397E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1291_Keq=0.2;
	% Local Parameter:   id =  Km1558, name = Km1558
	reaction_r_1291_Km1558=0.1;
	% Local Parameter:   id =  Km0310, name = Km0310
	reaction_r_1291_Km0310=0.1;
	% Local Parameter:   id =  Km1112, name = Km1112
	reaction_r_1291_Km1112=0.1;

	reaction_r_1291=compartment_cell*reaction_r_1291_Vmax*(x(359)-x(81)*x(268)/reaction_r_1291_Keq)/reaction_r_1291_Km1558/(1+x(359)/reaction_r_1291_Km1558+(1+x(81)/reaction_r_1291_Km0310)*(1+x(268)/reaction_r_1291_Km1112)-1);

% Reaction: id = r_1301, name = serine O-acetyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1301_FLUX_VALUE=0.0343363591698377;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1301_Vmax=0.480709028377728;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1301_Keq=2.0;
	% Local Parameter:   id =  Km0395, name = Km0395
	reaction_r_1301_Km0395=0.1;
	% Local Parameter:   id =  Km1170, name = Km1170
	reaction_r_1301_Km1170=0.1;
	% Local Parameter:   id =  Km1358, name = Km1358
	reaction_r_1301_Km1358=0.1;
	% Local Parameter:   id =  Km0555, name = Km0555
	reaction_r_1301_Km0555=0.1;

	reaction_r_1301=compartment_cell*reaction_r_1301_Vmax*(x(125)*x(277)-x(319)*x(162)/reaction_r_1301_Keq)/(reaction_r_1301_Km0395*reaction_r_1301_Km1170)/((1+x(125)/reaction_r_1301_Km0395)*(1+x(277)/reaction_r_1301_Km1170)+(1+x(319)/reaction_r_1301_Km1358)*(1+x(162)/reaction_r_1301_Km0555)-1);

% Reaction: id = r_1304, name = shikimate dehydrogenase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1304_FLUX_VALUE=0.052796345817737;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1304_Vmax=0.739148841448318;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1304_Keq=2.0;
	% Local Parameter:   id =  Km0270, name = Km0270
	reaction_r_1304_Km0270=0.1;
	% Local Parameter:   id =  Km1336, name = Km1336
	reaction_r_1304_Km1336=0.1;
	% Local Parameter:   id =  Km1335, name = Km1335
	reaction_r_1304_Km1335=0.1;
	% Local Parameter:   id =  Km1571, name = Km1571
	reaction_r_1304_Km1571=0.1;

	reaction_r_1304=compartment_cell*reaction_r_1304_Vmax*(x(62)*x(317)-x(316)*x(361)/reaction_r_1304_Keq)/(reaction_r_1304_Km0270*reaction_r_1304_Km1336)/((1+x(62)/reaction_r_1304_Km0270)*(1+x(317)/reaction_r_1304_Km1336)+(1+x(316)/reaction_r_1304_Km1335)*(1+x(361)/reaction_r_1304_Km1571)-1);

% Reaction: id = r_1305, name = shikimate kinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1305_FLUX_VALUE=0.0527963458177373;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1305_Vmax=0.739148841448322;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1305_Keq=2.0;
	% Local Parameter:   id =  Km0467, name = Km0467
	reaction_r_1305_Km0467=0.1;
	% Local Parameter:   id =  Km1571, name = Km1571
	reaction_r_1305_Km1571=0.1;
	% Local Parameter:   id =  Km0421, name = Km0421
	reaction_r_1305_Km0421=0.1;
	% Local Parameter:   id =  Km1574, name = Km1574
	reaction_r_1305_Km1574=0.1;

	reaction_r_1305=compartment_cell*reaction_r_1305_Vmax*(x(139)*x(361)-x(132)*x(362)/reaction_r_1305_Keq)/(reaction_r_1305_Km0467*reaction_r_1305_Km1571)/((1+x(139)/reaction_r_1305_Km0467)*(1+x(361)/reaction_r_1305_Km1571)+(1+x(132)/reaction_r_1305_Km0421)*(1+x(362)/reaction_r_1305_Km1574)-1);

% Reaction: id = r_1306, name = sirohydrochlorin dehydrogenase (NAD)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1306_FLUX_VALUE=3.08892317229363E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1306_Vmax=4.32449244121108E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1306_Keq=2.0;
	% Local Parameter:   id =  Km0768, name = Km0768
	reaction_r_1306_Km0768=0.1;
	% Local Parameter:   id =  Km1333, name = Km1333
	reaction_r_1306_Km1333=0.1;
	% Local Parameter:   id =  Km1334, name = Km1334
	reaction_r_1306_Km1334=0.1;
	% Local Parameter:   id =  Km1578, name = Km1578
	reaction_r_1306_Km1578=0.1;

	reaction_r_1306=compartment_cell*reaction_r_1306_Vmax*(x(195)*x(314)-x(315)*x(364)/reaction_r_1306_Keq)/(reaction_r_1306_Km0768*reaction_r_1306_Km1333)/((1+x(195)/reaction_r_1306_Km0768)*(1+x(314)/reaction_r_1306_Km1333)+(1+x(315)/reaction_r_1306_Km1334)*(1+x(364)/reaction_r_1306_Km1578)-1);

% Reaction: id = r_1307, name = sirohydrochlorin ferrochelatase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1307_FLUX_VALUE=3.08892317229363E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1307_Vmax=3.08892317229363E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1307_Keq=20.0;
	% Local Parameter:   id =  Km0838, name = Km0838
	reaction_r_1307_Km0838=0.1;
	% Local Parameter:   id =  Km1578, name = Km1578
	reaction_r_1307_Km1578=0.1;
	% Local Parameter:   id =  Km1577, name = Km1577
	reaction_r_1307_Km1577=0.1;

	reaction_r_1307=compartment_cell*reaction_r_1307_Vmax*(x(210)*x(364)-x(363)/reaction_r_1307_Keq)/(reaction_r_1307_Km0838*reaction_r_1307_Km1578)/((1+x(210)/reaction_r_1307_Km0838)*(1+x(364)/reaction_r_1307_Km1578)+1+x(363)/reaction_r_1307_Km1577-1);

% Reaction: id = r_1315, name = succinyl-CoA synthetase (ADP-forming)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1315_FLUX_VALUE=0.0727081263565024;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1315_Vmax=2.18124379069507;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1315_Keq=2.0;
	% Local Parameter:   id =  Km0467, name = Km0467
	reaction_r_1315_Km0467=0.1;
	% Local Parameter:   id =  Km0555, name = Km0555
	reaction_r_1315_Km0555=0.1;
	% Local Parameter:   id =  Km1595, name = Km1595
	reaction_r_1315_Km1595=0.1;
	% Local Parameter:   id =  Km0421, name = Km0421
	reaction_r_1315_Km0421=0.1;
	% Local Parameter:   id =  Km1430, name = Km1430
	reaction_r_1315_Km1430=0.1;
	% Local Parameter:   id =  Km1599, name = Km1599
	reaction_r_1315_Km1599=0.1;

	reaction_r_1315=compartment_cell*reaction_r_1315_Vmax*(x(139)*x(162)*x(365)-x(132)*x(336)*x(366)/reaction_r_1315_Keq)/(reaction_r_1315_Km0467*reaction_r_1315_Km0555*reaction_r_1315_Km1595)/((1+x(139)/reaction_r_1315_Km0467)*(1+x(162)/reaction_r_1315_Km0555)*(1+x(365)/reaction_r_1315_Km1595)+(1+x(132)/reaction_r_1315_Km0421)*(1+x(336)/reaction_r_1315_Km1430)*(1+x(366)/reaction_r_1315_Km1599)-1);

% Reaction: id = r_1316, name = succinyl-diaminopimelate desuccinylase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1316_FLUX_VALUE=0.0513869380474194;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1316_Vmax=0.513869380474194;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1316_Keq=0.2;
	% Local Parameter:   id =  Km1316, name = Km1316
	reaction_r_1316_Km1316=0.1;
	% Local Parameter:   id =  Km1211, name = Km1211
	reaction_r_1316_Km1211=0.1;
	% Local Parameter:   id =  Km1595, name = Km1595
	reaction_r_1316_Km1595=0.1;

	reaction_r_1316=compartment_cell*reaction_r_1316_Vmax*(x(308)-x(283)*x(365)/reaction_r_1316_Keq)/reaction_r_1316_Km1316/(1+x(308)/reaction_r_1316_Km1316+(1+x(283)/reaction_r_1316_Km1211)*(1+x(365)/reaction_r_1316_Km1595)-1);

% Reaction: id = r_1318, name = succinyldiaminopimelate transaminase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1318_FLUX_VALUE=0.0513869380474194;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1318_Vmax=0.719417132663872;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1318_Keq=2.0;
	% Local Parameter:   id =  Km1095, name = Km1095
	reaction_r_1318_Km1095=0.1;
	% Local Parameter:   id =  Km1315, name = Km1315
	reaction_r_1318_Km1315=0.1;
	% Local Parameter:   id =  Km0233, name = Km0233
	reaction_r_1318_Km0233=0.1;
	% Local Parameter:   id =  Km1316, name = Km1316
	reaction_r_1318_Km1316=0.1;

	reaction_r_1318=compartment_cell*reaction_r_1318_Vmax*(x(259)*x(307)-x(52)*x(308)/reaction_r_1318_Keq)/(reaction_r_1318_Km1095*reaction_r_1318_Km1315)/((1+x(259)/reaction_r_1318_Km1095)*(1+x(307)/reaction_r_1318_Km1315)+(1+x(52)/reaction_r_1318_Km0233)*(1+x(308)/reaction_r_1318_Km1316)-1);

% Reaction: id = r_1329, name = Sulfate adenyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1329_FLUX_VALUE=0.0343363591697952;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1329_Vmax=1.57947252181058;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1329_Keq=0.2;
	% Local Parameter:   id =  Km0467, name = Km0467
	reaction_r_1329_Km0467=0.1;
	% Local Parameter:   id =  Km0945, name = Km0945
	reaction_r_1329_Km0945=0.1;
	% Local Parameter:   id =  Km1609, name = Km1609
	reaction_r_1329_Km1609=0.1;
	% Local Parameter:   id =  Km0412, name = Km0412
	reaction_r_1329_Km0412=0.1;
	% Local Parameter:   id =  Km0896, name = Km0896
	reaction_r_1329_Km0896=0.1;
	% Local Parameter:   id =  Km1430, name = Km1430
	reaction_r_1329_Km1430=0.1;
	% Local Parameter:   id =  Km0783, name = Km0783
	reaction_r_1329_Km0783=0.1;

	reaction_r_1329=compartment_cell*reaction_r_1329_Vmax*(x(139)*x(229)*x(367)-x(130)*x(219)*x(336)*x(198)/reaction_r_1329_Keq)/(reaction_r_1329_Km0467*reaction_r_1329_Km0945*reaction_r_1329_Km1609)/((1+x(139)/reaction_r_1329_Km0467)*(1+x(229)/reaction_r_1329_Km0945)*(1+x(367)/reaction_r_1329_Km1609)+(1+x(130)/reaction_r_1329_Km0412)*(1+x(219)/reaction_r_1329_Km0896)*(1+x(336)/reaction_r_1329_Km1430)*(1+x(198)/reaction_r_1329_Km0783)-1);

% Reaction: id = r_1330, name = sulfite reductase (NADPH2)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1330_FLUX_VALUE=0.0343363591698208;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1330_Vmax=2.12885426852889;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1330_Keq=2.0;
	% Local Parameter:   id =  Km1336, name = Km1336
	reaction_r_1330_Km1336=0.1;
	% Local Parameter:   id =  Km1612, name = Km1612
	reaction_r_1330_Km1612=0.1;
	% Local Parameter:   id =  Km0994, name = Km0994
	reaction_r_1330_Km0994=0.1;
	% Local Parameter:   id =  Km1335, name = Km1335
	reaction_r_1330_Km1335=0.1;

	reaction_r_1330=compartment_cell*reaction_r_1330_Vmax*(x(317)^3*x(368)-x(235)*x(316)^3/reaction_r_1330_Keq)/(reaction_r_1330_Km1336^3*reaction_r_1330_Km1612)/((1+x(317)/reaction_r_1330_Km1336)^3*(1+x(368)/reaction_r_1330_Km1612)+(1+x(235)/reaction_r_1330_Km0994)*(1+x(316)/reaction_r_1330_Km1335)^3-1);

% Reaction: id = r_1335, name = tartronate semialdehyde reductase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1335_FLUX_VALUE=4.63338474645892E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1335_Vmax=6.48673864504249E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1335_Keq=2.0;
	% Local Parameter:   id =  Km0214, name = Km0214
	reaction_r_1335_Km0214=0.1;
	% Local Parameter:   id =  Km1334, name = Km1334
	reaction_r_1335_Km1334=0.1;
	% Local Parameter:   id =  Km0029, name = Km0029
	reaction_r_1335_Km0029=0.1;
	% Local Parameter:   id =  Km1333, name = Km1333
	reaction_r_1335_Km1333=0.1;

	reaction_r_1335=compartment_cell*reaction_r_1335_Vmax*(x(45)*x(315)-x(6)*x(314)/reaction_r_1335_Keq)/(reaction_r_1335_Km0214*reaction_r_1335_Km1334)/((1+x(45)/reaction_r_1335_Km0214)*(1+x(315)/reaction_r_1335_Km1334)+(1+x(6)/reaction_r_1335_Km0029)*(1+x(314)/reaction_r_1335_Km1333)-1);

% Reaction: id = r_1337, name = Tetraacyldisaccharide 4'kinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1337_FLUX_VALUE=0.00269553564721213;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1337_Vmax=0.0377374990609698;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1337_Keq=2.0;
	% Local Parameter:   id =  Km0467, name = Km0467
	reaction_r_1337_Km0467=0.1;
	% Local Parameter:   id =  Km1204, name = Km1204
	reaction_r_1337_Km1204=0.1;
	% Local Parameter:   id =  Km0421, name = Km0421
	reaction_r_1337_Km0421=0.1;
	% Local Parameter:   id =  Km0147, name = Km0147
	reaction_r_1337_Km0147=0.1;

	reaction_r_1337=compartment_cell*reaction_r_1337_Vmax*(x(139)*x(282)-x(132)*x(33)/reaction_r_1337_Keq)/(reaction_r_1337_Km0467*reaction_r_1337_Km1204)/((1+x(139)/reaction_r_1337_Km0467)*(1+x(282)/reaction_r_1337_Km1204)+(1+x(132)/reaction_r_1337_Km0421)*(1+x(33)/reaction_r_1337_Km0147)-1);

% Reaction: id = r_1338, name = tetrahydrodipicolinate succinylase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1338_FLUX_VALUE=0.0513869380474194;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1338_Vmax=0.719417132663872;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1338_Keq=2.0;
	% Local Parameter:   id =  Km1599, name = Km1599
	reaction_r_1338_Km1599=0.1;
	% Local Parameter:   id =  Km0148, name = Km0148
	reaction_r_1338_Km0148=0.1;
	% Local Parameter:   id =  Km0555, name = Km0555
	reaction_r_1338_Km0555=0.1;
	% Local Parameter:   id =  Km1315, name = Km1315
	reaction_r_1338_Km1315=0.1;

	reaction_r_1338=compartment_cell*reaction_r_1338_Vmax*(x(366)*x(34)-x(162)*x(307)/reaction_r_1338_Keq)/(reaction_r_1338_Km1599*reaction_r_1338_Km0148)/((1+x(366)/reaction_r_1338_Km1599)*(1+x(34)/reaction_r_1338_Km0148)+(1+x(162)/reaction_r_1338_Km0555)*(1+x(307)/reaction_r_1338_Km1315)-1);

% Reaction: id = r_1344, name = thiamine-phosphate diphosphorylase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1344_FLUX_VALUE=3.08892317229363E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1344_Vmax=4.32449244121108E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1344_Keq=2.0;
	% Local Parameter:   id =  Km0218, name = Km0218
	reaction_r_1344_Km0218=0.1;
	% Local Parameter:   id =  Km0330, name = Km0330
	reaction_r_1344_Km0330=0.1;
	% Local Parameter:   id =  Km0783, name = Km0783
	reaction_r_1344_Km0783=0.1;
	% Local Parameter:   id =  Km1643, name = Km1643
	reaction_r_1344_Km1643=0.1;

	reaction_r_1344=compartment_cell*reaction_r_1344_Vmax*(x(47)*x(89)-x(198)*x(370)/reaction_r_1344_Keq)/(reaction_r_1344_Km0218*reaction_r_1344_Km0330)/((1+x(47)/reaction_r_1344_Km0218)*(1+x(89)/reaction_r_1344_Km0330)+(1+x(198)/reaction_r_1344_Km0783)*(1+x(370)/reaction_r_1344_Km1643)-1);

% Reaction: id = r_1345, name = thiamine-phosphate kinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1345_FLUX_VALUE=3.08892317229363E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1345_Vmax=4.32449244121108E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1345_Keq=2.0;
	% Local Parameter:   id =  Km0467, name = Km0467
	reaction_r_1345_Km0467=0.1;
	% Local Parameter:   id =  Km1643, name = Km1643
	reaction_r_1345_Km1643=0.1;
	% Local Parameter:   id =  Km0421, name = Km0421
	reaction_r_1345_Km0421=0.1;
	% Local Parameter:   id =  Km1644, name = Km1644
	reaction_r_1345_Km1644=0.1;

	reaction_r_1345=compartment_cell*reaction_r_1345_Vmax*(x(139)*x(370)-x(132)*x(371)/reaction_r_1345_Keq)/(reaction_r_1345_Km0467*reaction_r_1345_Km1643)/((1+x(139)/reaction_r_1345_Km0467)*(1+x(370)/reaction_r_1345_Km1643)+(1+x(132)/reaction_r_1345_Km0421)*(1+x(371)/reaction_r_1345_Km1644)-1);

% Reaction: id = r_1346, name = thiazole phosphate synthesis	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1346_FLUX_VALUE=3.08892317229363E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1346_Vmax=0.0058689540273579;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1346_Keq=0.2;
	% Local Parameter:   id =  Km0467, name = Km0467
	reaction_r_1346_Km0467=0.1;
	% Local Parameter:   id =  Km0738, name = Km0738
	reaction_r_1346_Km0738=0.1;
	% Local Parameter:   id =  Km0116, name = Km0116
	reaction_r_1346_Km0116=0.1;
	% Local Parameter:   id =  Km1018, name = Km1018
	reaction_r_1346_Km1018=0.1;
	% Local Parameter:   id =  Km1336, name = Km1336
	reaction_r_1346_Km1336=0.1;
	% Local Parameter:   id =  Km0330, name = Km0330
	reaction_r_1346_Km0330=0.1;
	% Local Parameter:   id =  Km0454, name = Km0454
	reaction_r_1346_Km0454=0.1;
	% Local Parameter:   id =  Km0543, name = Km0543
	reaction_r_1346_Km0543=0.1;
	% Local Parameter:   id =  Km1017, name = Km1017
	reaction_r_1346_Km1017=0.1;
	% Local Parameter:   id =  Km1335, name = Km1335
	reaction_r_1346_Km1335=0.1;
	% Local Parameter:   id =  Km0783, name = Km0783
	reaction_r_1346_Km0783=0.1;

	reaction_r_1346=compartment_cell*reaction_r_1346_Vmax*(x(139)*x(188)*x(27)*x(241)*x(317)-x(89)*x(137)*x(160)*x(240)*x(316)*x(198)/reaction_r_1346_Keq)/(reaction_r_1346_Km0467*reaction_r_1346_Km0738*reaction_r_1346_Km0116*reaction_r_1346_Km1018*reaction_r_1346_Km1336)/((1+x(139)/reaction_r_1346_Km0467)*(1+x(188)/reaction_r_1346_Km0738)*(1+x(27)/reaction_r_1346_Km0116)*(1+x(241)/reaction_r_1346_Km1018)*(1+x(317)/reaction_r_1346_Km1336)+(1+x(89)/reaction_r_1346_Km0330)*(1+x(137)/reaction_r_1346_Km0454)*(1+x(160)/reaction_r_1346_Km0543)*(1+x(240)/reaction_r_1346_Km1017)*(1+x(316)/reaction_r_1346_Km1335)*(1+x(198)/reaction_r_1346_Km0783)-1);

% Reaction: id = r_1347, name = thioredoxin reductase (NADPH)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1347_FLUX_VALUE=0.034336359169748;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1347_Vmax=0.480709028376472;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1347_Keq=2.0;
	% Local Parameter:   id =  Km1336, name = Km1336
	reaction_r_1347_Km1336=0.1;
	% Local Parameter:   id =  Km1406, name = Km1406
	reaction_r_1347_Km1406=0.1;
	% Local Parameter:   id =  Km1335, name = Km1335
	reaction_r_1347_Km1335=0.1;
	% Local Parameter:   id =  Km1544, name = Km1544
	reaction_r_1347_Km1544=0.1;

	reaction_r_1347=compartment_cell*reaction_r_1347_Vmax*(x(317)*x(330)-x(316)*x(354)/reaction_r_1347_Keq)/(reaction_r_1347_Km1336*reaction_r_1347_Km1406)/((1+x(317)/reaction_r_1347_Km1336)*(1+x(330)/reaction_r_1347_Km1406)+(1+x(316)/reaction_r_1347_Km1335)*(1+x(354)/reaction_r_1347_Km1544)-1);

% Reaction: id = r_1348, name = Threonine aldolase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1348_FLUX_VALUE=0.0414265806134143;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1348_Vmax=0.414265806134143;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1348_Keq=0.2;
	% Local Parameter:   id =  Km1179, name = Km1179
	reaction_r_1348_Km1179=0.1;
	% Local Parameter:   id =  Km0381, name = Km0381
	reaction_r_1348_Km0381=0.1;
	% Local Parameter:   id =  Km0929, name = Km0929
	reaction_r_1348_Km0929=0.1;

	reaction_r_1348=compartment_cell*reaction_r_1348_Vmax*(x(278)-x(121)*x(224)/reaction_r_1348_Keq)/reaction_r_1348_Km1179/(1+x(278)/reaction_r_1348_Km1179+(1+x(121)/reaction_r_1348_Km0381)*(1+x(224)/reaction_r_1348_Km0929)-1);

% Reaction: id = r_1349, name = threonine synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1349_FLUX_VALUE=0.158233967969303;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1349_Vmax=1.58233967969303;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1349_Keq=0.2;
	% Local Parameter:   id =  Km1363, name = Km1363
	reaction_r_1349_Km1363=0.1;
	% Local Parameter:   id =  Km1430, name = Km1430
	reaction_r_1349_Km1430=0.1;
	% Local Parameter:   id =  Km1179, name = Km1179
	reaction_r_1349_Km1179=0.1;

	reaction_r_1349=compartment_cell*reaction_r_1349_Vmax*(x(321)-x(336)*x(278)/reaction_r_1349_Keq)/reaction_r_1349_Km1363/(1+x(321)/reaction_r_1349_Km1363+(1+x(336)/reaction_r_1349_Km1430)*(1+x(278)/reaction_r_1349_Km1179)-1);

% Reaction: id = r_1353, name = thymidylate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1353_FLUX_VALUE=0.00362498293358012;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1353_Vmax=0.0507497610701217;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1353_Keq=2.0;
	% Local Parameter:   id =  Km0807, name = Km0807
	reaction_r_1353_Km0807=0.1;
	% Local Parameter:   id =  Km0336, name = Km0336
	reaction_r_1353_Km0336=0.1;
	% Local Parameter:   id =  Km0372, name = Km0372
	reaction_r_1353_Km0372=0.1;
	% Local Parameter:   id =  Km0802, name = Km0802
	reaction_r_1353_Km0802=0.1;

	reaction_r_1353=compartment_cell*reaction_r_1353_Vmax*(x(205)*x(95)-x(116)*x(203)/reaction_r_1353_Keq)/(reaction_r_1353_Km0807*reaction_r_1353_Km0336)/((1+x(205)/reaction_r_1353_Km0807)*(1+x(95)/reaction_r_1353_Km0336)+(1+x(116)/reaction_r_1353_Km0372)*(1+x(203)/reaction_r_1353_Km0802)-1);

% Reaction: id = r_1356, name = transaldolase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1356_FLUX_VALUE=0.0271110954536016;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1356_Vmax=0.379555336350422;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1356_Keq=2.0;
	% Local Parameter:   id =  Km0621, name = Km0621
	reaction_r_1356_Km0621=0.1;
	% Local Parameter:   id =  Km0627, name = Km0627
	reaction_r_1356_Km0627=0.1;
	% Local Parameter:   id =  Km0913, name = Km0913
	reaction_r_1356_Km0913=0.1;
	% Local Parameter:   id =  Km1561, name = Km1561
	reaction_r_1356_Km1561=0.1;

	reaction_r_1356=compartment_cell*reaction_r_1356_Vmax*(x(173)*x(175)-x(222)*x(360)/reaction_r_1356_Keq)/(reaction_r_1356_Km0621*reaction_r_1356_Km0627)/((1+x(173)/reaction_r_1356_Km0621)*(1+x(175)/reaction_r_1356_Km0627)+(1+x(222)/reaction_r_1356_Km0913)*(1+x(360)/reaction_r_1356_Km1561)-1);

% Reaction: id = r_1357, name = transketolase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1357_FLUX_VALUE=0.0271110954535792;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1357_Vmax=0.379555336350109;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1357_Keq=2.0;
	% Local Parameter:   id =  Km0913, name = Km0913
	reaction_r_1357_Km0913=0.1;
	% Local Parameter:   id =  Km1561, name = Km1561
	reaction_r_1357_Km1561=0.1;
	% Local Parameter:   id =  Km0446, name = Km0446
	reaction_r_1357_Km0446=0.1;
	% Local Parameter:   id =  Km0721, name = Km0721
	reaction_r_1357_Km0721=0.1;

	reaction_r_1357=compartment_cell*reaction_r_1357_Vmax*(x(222)*x(360)-x(135)*x(183)/reaction_r_1357_Keq)/(reaction_r_1357_Km0913*reaction_r_1357_Km1561)/((1+x(222)/reaction_r_1357_Km0913)*(1+x(360)/reaction_r_1357_Km1561)+(1+x(135)/reaction_r_1357_Km0446)*(1+x(183)/reaction_r_1357_Km0721)-1);

% Reaction: id = r_1358, name = transketolase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1358_FLUX_VALUE=0.0799383305030384;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1358_Vmax=1.11913662704254;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1358_Keq=2.0;
	% Local Parameter:   id =  Km0627, name = Km0627
	reaction_r_1358_Km0627=0.1;
	% Local Parameter:   id =  Km0913, name = Km0913
	reaction_r_1358_Km0913=0.1;
	% Local Parameter:   id =  Km0621, name = Km0621
	reaction_r_1358_Km0621=0.1;
	% Local Parameter:   id =  Km0721, name = Km0721
	reaction_r_1358_Km0721=0.1;

	reaction_r_1358=compartment_cell*reaction_r_1358_Vmax*(x(175)*x(222)-x(173)*x(183)/reaction_r_1358_Keq)/(reaction_r_1358_Km0627*reaction_r_1358_Km0913)/((1+x(175)/reaction_r_1358_Km0627)*(1+x(222)/reaction_r_1358_Km0913)+(1+x(173)/reaction_r_1358_Km0621)*(1+x(183)/reaction_r_1358_Km0721)-1);

% Reaction: id = r_1363, name = triose-phosphate isomerase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1363_FLUX_VALUE=0.0195735226740616;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1363_Vmax=0.11744113604437;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1363_Keq=2.0;
	% Local Parameter:   id =  Km0913, name = Km0913
	reaction_r_1363_Km0913=0.1;
	% Local Parameter:   id =  Km0772, name = Km0772
	reaction_r_1363_Km0772=0.1;

	reaction_r_1363=compartment_cell*reaction_r_1363_Vmax*(x(222)-x(196)/reaction_r_1363_Keq)/reaction_r_1363_Km0913/(1+x(222)/reaction_r_1363_Km0913+1+x(196)/reaction_r_1363_Km0772-1);

% Reaction: id = r_1367, name = tryptophan synthase (indoleglycerol phosphate)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1367_FLUX_VALUE=0.00787329117099211;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1367_Vmax=0.0787329117099211;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1367_Keq=0.2;
	% Local Parameter:   id =  Km0493, name = Km0493
	reaction_r_1367_Km0493=0.1;
	% Local Parameter:   id =  Km0913, name = Km0913
	reaction_r_1367_Km0913=0.1;
	% Local Parameter:   id =  Km1009, name = Km1009
	reaction_r_1367_Km1009=0.1;

	reaction_r_1367=compartment_cell*reaction_r_1367_Vmax*(x(147)-x(222)*x(239)/reaction_r_1367_Keq)/reaction_r_1367_Km0493/(1+x(147)/reaction_r_1367_Km0493+(1+x(222)/reaction_r_1367_Km0913)*(1+x(239)/reaction_r_1367_Km1009)-1);

% Reaction: id = r_1368, name = Tryptophanase (L-tryptophan)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1368_FLUX_VALUE=0.00787329117099173;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1368_Vmax=0.141719241077851;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1368_Keq=200.0;
	% Local Parameter:   id =  Km1009, name = Km1009
	reaction_r_1368_Km1009=0.1;
	% Local Parameter:   id =  Km0451, name = Km0451
	reaction_r_1368_Km0451=0.1;
	% Local Parameter:   id =  Km1531, name = Km1531
	reaction_r_1368_Km1531=0.1;
	% Local Parameter:   id =  Km1185, name = Km1185
	reaction_r_1368_Km1185=0.1;

	reaction_r_1368=compartment_cell*reaction_r_1368_Vmax*(x(239)*x(136)*x(352)-x(279)/reaction_r_1368_Keq)/(reaction_r_1368_Km1009*reaction_r_1368_Km0451*reaction_r_1368_Km1531)/((1+x(239)/reaction_r_1368_Km1009)*(1+x(136)/reaction_r_1368_Km0451)*(1+x(352)/reaction_r_1368_Km1531)+1+x(279)/reaction_r_1368_Km1185-1);

% Reaction: id = r_1375, name = tyrosine lyase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1375_FLUX_VALUE=3.08892317229363E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1375_Vmax=0.00240936007438903;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1375_Keq=0.02;
	% Local Parameter:   id =  Km1552, name = Km1552
	reaction_r_1375_Km1552=0.1;
	% Local Parameter:   id =  Km1336, name = Km1336
	reaction_r_1375_Km1336=0.1;
	% Local Parameter:   id =  Km1189, name = Km1189
	reaction_r_1375_Km1189=0.1;
	% Local Parameter:   id =  Km1407, name = Km1407
	reaction_r_1375_Km1407=0.1;
	% Local Parameter:   id =  Km0333, name = Km0333
	reaction_r_1375_Km0333=0.1;
	% Local Parameter:   id =  Km0738, name = Km0738
	reaction_r_1375_Km0738=0.1;
	% Local Parameter:   id =  Km1141, name = Km1141
	reaction_r_1375_Km1141=0.1;
	% Local Parameter:   id =  Km1335, name = Km1335
	reaction_r_1375_Km1335=0.1;

	reaction_r_1375=compartment_cell*reaction_r_1375_Vmax*(x(358)*x(317)*x(280)-x(331)*x(92)*x(188)*x(274)*x(316)/reaction_r_1375_Keq)/(reaction_r_1375_Km1552*reaction_r_1375_Km1336*reaction_r_1375_Km1189)/((1+x(358)/reaction_r_1375_Km1552)*(1+x(317)/reaction_r_1375_Km1336)*(1+x(280)/reaction_r_1375_Km1189)+(1+x(331)/reaction_r_1375_Km1407)*(1+x(92)/reaction_r_1375_Km0333)*(1+x(188)/reaction_r_1375_Km0738)*(1+x(274)/reaction_r_1375_Km1141)*(1+x(316)/reaction_r_1375_Km1335)-1);

% Reaction: id = r_1376, name = tyrosine transaminase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1376_FLUX_VALUE=0.0191323468756361;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1376_Vmax=0.267852856258905;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1376_Keq=2.0;
	% Local Parameter:   id =  Km0262, name = Km0262
	reaction_r_1376_Km0262=0.1;
	% Local Parameter:   id =  Km1095, name = Km1095
	reaction_r_1376_Km1095=0.1;
	% Local Parameter:   id =  Km0233, name = Km0233
	reaction_r_1376_Km0233=0.1;
	% Local Parameter:   id =  Km1189, name = Km1189
	reaction_r_1376_Km1189=0.1;

	reaction_r_1376=compartment_cell*reaction_r_1376_Vmax*(x(56)*x(259)-x(52)*x(280)/reaction_r_1376_Keq)/(reaction_r_1376_Km0262*reaction_r_1376_Km1095)/((1+x(56)/reaction_r_1376_Km0262)*(1+x(259)/reaction_r_1376_Km1095)+(1+x(52)/reaction_r_1376_Km0233)*(1+x(280)/reaction_r_1376_Km1189)-1);

% Reaction: id = r_1378, name = UDP-3-O-(3-hydroxymyristoyl)glucosamine acyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1378_FLUX_VALUE=0.00539107129442425;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1378_Vmax=0.0754749981219395;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1378_Keq=2.0;
	% Local Parameter:   id =  Km0028, name = Km0028
	reaction_r_1378_Km0028=0.1;
	% Local Parameter:   id =  Km1735, name = Km1735
	reaction_r_1378_Km1735=0.1;
	% Local Parameter:   id =  Km0397, name = Km0397
	reaction_r_1378_Km0397=0.1;
	% Local Parameter:   id =  Km1734, name = Km1734
	reaction_r_1378_Km1734=0.1;

	reaction_r_1378=compartment_cell*reaction_r_1378_Vmax*(x(5)*x(385)-x(126)*x(384)/reaction_r_1378_Keq)/(reaction_r_1378_Km0028*reaction_r_1378_Km1735)/((1+x(5)/reaction_r_1378_Km0028)*(1+x(385)/reaction_r_1378_Km1735)+(1+x(126)/reaction_r_1378_Km0397)*(1+x(384)/reaction_r_1378_Km1734)-1);

% Reaction: id = r_1379, name = UDP-3-O-acetylglucosamine deacetylase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1379_FLUX_VALUE=0.00539107129442425;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1379_Vmax=0.0539107129442425;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1379_Keq=0.2;
	% Local Parameter:   id =  Km1736, name = Km1736
	reaction_r_1379_Km1736=0.1;
	% Local Parameter:   id =  Km0384, name = Km0384
	reaction_r_1379_Km0384=0.1;
	% Local Parameter:   id =  Km1735, name = Km1735
	reaction_r_1379_Km1735=0.1;

	reaction_r_1379=compartment_cell*reaction_r_1379_Vmax*(x(386)-x(122)*x(385)/reaction_r_1379_Keq)/reaction_r_1379_Km1736/(1+x(386)/reaction_r_1379_Km1736+(1+x(122)/reaction_r_1379_Km0384)*(1+x(385)/reaction_r_1379_Km1735)-1);

% Reaction: id = r_1388, name = UDP-N-acetylenolpyruvoylglucosamine reductase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1388_FLUX_VALUE=0.0038479948756196;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1388_Vmax=0.0538719282586744;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1388_Keq=2.0;
	% Local Parameter:   id =  Km1336, name = Km1336
	reaction_r_1388_Km1336=0.1;
	% Local Parameter:   id =  Km1742, name = Km1742
	reaction_r_1388_Km1742=0.1;
	% Local Parameter:   id =  Km1335, name = Km1335
	reaction_r_1388_Km1335=0.1;
	% Local Parameter:   id =  Km1750, name = Km1750
	reaction_r_1388_Km1750=0.1;

	reaction_r_1388=compartment_cell*reaction_r_1388_Vmax*(x(317)*x(387)-x(316)*x(389)/reaction_r_1388_Keq)/(reaction_r_1388_Km1336*reaction_r_1388_Km1742)/((1+x(317)/reaction_r_1388_Km1336)*(1+x(387)/reaction_r_1388_Km1742)+(1+x(316)/reaction_r_1388_Km1335)*(1+x(389)/reaction_r_1388_Km1750)-1);

% Reaction: id = r_1389, name = UDP-N-acetylglucosamine 1-carboxyvinyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1389_FLUX_VALUE=0.0038479948756196;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1389_Vmax=0.0538719282586744;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1389_Keq=2.0;
	% Local Parameter:   id =  Km1484, name = Km1484
	reaction_r_1389_Km1484=0.1;
	% Local Parameter:   id =  Km1745, name = Km1745
	reaction_r_1389_Km1745=0.1;
	% Local Parameter:   id =  Km1430, name = Km1430
	reaction_r_1389_Km1430=0.1;
	% Local Parameter:   id =  Km1742, name = Km1742
	reaction_r_1389_Km1742=0.1;

	reaction_r_1389=compartment_cell*reaction_r_1389_Vmax*(x(341)*x(388)-x(336)*x(387)/reaction_r_1389_Keq)/(reaction_r_1389_Km1484*reaction_r_1389_Km1745)/((1+x(341)/reaction_r_1389_Km1484)*(1+x(388)/reaction_r_1389_Km1745)+(1+x(336)/reaction_r_1389_Km1430)*(1+x(387)/reaction_r_1389_Km1742)-1);

% Reaction: id = r_1391, name = UDP-N-acetylglucosamine acyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1391_FLUX_VALUE=0.00539107129442425;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1391_Vmax=0.0754749981219395;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1391_Keq=2.0;
	% Local Parameter:   id =  Km0028, name = Km0028
	reaction_r_1391_Km0028=0.1;
	% Local Parameter:   id =  Km1745, name = Km1745
	reaction_r_1391_Km1745=0.1;
	% Local Parameter:   id =  Km0397, name = Km0397
	reaction_r_1391_Km0397=0.1;
	% Local Parameter:   id =  Km1736, name = Km1736
	reaction_r_1391_Km1736=0.1;

	reaction_r_1391=compartment_cell*reaction_r_1391_Vmax*(x(5)*x(388)-x(126)*x(386)/reaction_r_1391_Keq)/(reaction_r_1391_Km0028*reaction_r_1391_Km1745)/((1+x(5)/reaction_r_1391_Km0028)*(1+x(388)/reaction_r_1391_Km1745)+(1+x(126)/reaction_r_1391_Km0397)*(1+x(386)/reaction_r_1391_Km1736)-1);

% Reaction: id = r_1392, name = UDP-N-acetylglucosamine diphosphorylase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1392_FLUX_VALUE=0.0130870610456636;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1392_Vmax=0.18321885463929;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1392_Keq=2.0;
	% Local Parameter:   id =  Km1287, name = Km1287
	reaction_r_1392_Km1287=0.1;
	% Local Parameter:   id =  Km1792, name = Km1792
	reaction_r_1392_Km1792=0.1;
	% Local Parameter:   id =  Km0783, name = Km0783
	reaction_r_1392_Km0783=0.1;
	% Local Parameter:   id =  Km1745, name = Km1745
	reaction_r_1392_Km1745=0.1;

	reaction_r_1392=compartment_cell*reaction_r_1392_Vmax*(x(302)*x(400)-x(198)*x(388)/reaction_r_1392_Keq)/(reaction_r_1392_Km1287*reaction_r_1392_Km1792)/((1+x(302)/reaction_r_1392_Km1287)*(1+x(400)/reaction_r_1392_Km1792)+(1+x(198)/reaction_r_1392_Km0783)*(1+x(388)/reaction_r_1392_Km1745)-1);

% Reaction: id = r_1393, name = UDP-N-acetylglucosamine-N-acetylmuramyl-(pentapeptide)pyrophosphoryl-undecaprenol N-acetylglucosamine transferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1393_FLUX_VALUE=0.0038479948756196;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1393_Vmax=0.0538719282586744;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1393_Keq=2.0;
	% Local Parameter:   id =  Km1745, name = Km1745
	reaction_r_1393_Km1745=0.1;
	% Local Parameter:   id =  Km1777, name = Km1777
	reaction_r_1393_Km1777=0.1;
	% Local Parameter:   id =  Km1776, name = Km1776
	reaction_r_1393_Km1776=0.1;
	% Local Parameter:   id =  Km1733, name = Km1733
	reaction_r_1393_Km1733=0.1;

	reaction_r_1393=compartment_cell*reaction_r_1393_Vmax*(x(388)*x(398)-x(397)*x(383)/reaction_r_1393_Keq)/(reaction_r_1393_Km1745*reaction_r_1393_Km1777)/((1+x(388)/reaction_r_1393_Km1745)*(1+x(398)/reaction_r_1393_Km1777)+(1+x(397)/reaction_r_1393_Km1776)*(1+x(383)/reaction_r_1393_Km1733)-1);

% Reaction: id = r_1397, name = UDP-N-acetylmuramoyl-L-alanine synthetase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1397_FLUX_VALUE=0.00384799487562186;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1397_Vmax=0.115439846268656;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1397_Keq=2.0;
	% Local Parameter:   id =  Km1041, name = Km1041
	reaction_r_1397_Km1041=0.1;
	% Local Parameter:   id =  Km0467, name = Km0467
	reaction_r_1397_Km0467=0.1;
	% Local Parameter:   id =  Km1750, name = Km1750
	reaction_r_1397_Km1750=0.1;
	% Local Parameter:   id =  Km0421, name = Km0421
	reaction_r_1397_Km0421=0.1;
	% Local Parameter:   id =  Km1430, name = Km1430
	reaction_r_1397_Km1430=0.1;
	% Local Parameter:   id =  Km1751, name = Km1751
	reaction_r_1397_Km1751=0.1;

	reaction_r_1397=compartment_cell*reaction_r_1397_Vmax*(x(251)*x(139)*x(389)-x(132)*x(336)*x(390)/reaction_r_1397_Keq)/(reaction_r_1397_Km1041*reaction_r_1397_Km0467*reaction_r_1397_Km1750)/((1+x(251)/reaction_r_1397_Km1041)*(1+x(139)/reaction_r_1397_Km0467)*(1+x(389)/reaction_r_1397_Km1750)+(1+x(132)/reaction_r_1397_Km0421)*(1+x(336)/reaction_r_1397_Km1430)*(1+x(390)/reaction_r_1397_Km1751)-1);

% Reaction: id = r_1399, name = UDP-N-acetylmuramoyl-L-alanyl-D-glutamate synthetase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1399_FLUX_VALUE=0.00384799487562186;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1399_Vmax=0.115439846268656;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1399_Keq=2.0;
	% Local Parameter:   id =  Km0467, name = Km0467
	reaction_r_1399_Km0467=0.1;
	% Local Parameter:   id =  Km0671, name = Km0671
	reaction_r_1399_Km0671=0.1;
	% Local Parameter:   id =  Km1751, name = Km1751
	reaction_r_1399_Km1751=0.1;
	% Local Parameter:   id =  Km0421, name = Km0421
	reaction_r_1399_Km0421=0.1;
	% Local Parameter:   id =  Km1430, name = Km1430
	reaction_r_1399_Km1430=0.1;
	% Local Parameter:   id =  Km1754, name = Km1754
	reaction_r_1399_Km1754=0.1;

	reaction_r_1399=compartment_cell*reaction_r_1399_Vmax*(x(139)*x(180)*x(390)-x(132)*x(336)*x(392)/reaction_r_1399_Keq)/(reaction_r_1399_Km0467*reaction_r_1399_Km0671*reaction_r_1399_Km1751)/((1+x(139)/reaction_r_1399_Km0467)*(1+x(180)/reaction_r_1399_Km0671)*(1+x(390)/reaction_r_1399_Km1751)+(1+x(132)/reaction_r_1399_Km0421)*(1+x(336)/reaction_r_1399_Km1430)*(1+x(392)/reaction_r_1399_Km1754)-1);

% Reaction: id = r_1400, name = UDP-N-acetylmuramoyl-L-alanyl-D-glutamyl-meso-2,6-diaminopimelate synthetase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1400_FLUX_VALUE=0.00384799487562186;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1400_Vmax=0.115439846268656;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1400_Keq=2.0;
	% Local Parameter:   id =  Km1242, name = Km1242
	reaction_r_1400_Km1242=0.1;
	% Local Parameter:   id =  Km0467, name = Km0467
	reaction_r_1400_Km0467=0.1;
	% Local Parameter:   id =  Km1754, name = Km1754
	reaction_r_1400_Km1754=0.1;
	% Local Parameter:   id =  Km0421, name = Km0421
	reaction_r_1400_Km0421=0.1;
	% Local Parameter:   id =  Km1430, name = Km1430
	reaction_r_1400_Km1430=0.1;
	% Local Parameter:   id =  Km1752, name = Km1752
	reaction_r_1400_Km1752=0.1;

	reaction_r_1400=compartment_cell*reaction_r_1400_Vmax*(x(290)*x(139)*x(392)-x(132)*x(336)*x(391)/reaction_r_1400_Keq)/(reaction_r_1400_Km1242*reaction_r_1400_Km0467*reaction_r_1400_Km1754)/((1+x(290)/reaction_r_1400_Km1242)*(1+x(139)/reaction_r_1400_Km0467)*(1+x(392)/reaction_r_1400_Km1754)+(1+x(132)/reaction_r_1400_Km0421)*(1+x(336)/reaction_r_1400_Km1430)*(1+x(391)/reaction_r_1400_Km1752)-1);

% Reaction: id = r_1401, name = UDP-N-acetylmuramoyl-L-alanyl-D-glutamyl-meso-2,6-diaminopimeloyl-D-alanyl-D-alanine synthetase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1401_FLUX_VALUE=0.0038479948756196;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1401_Vmax=0.115439846268588;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1401_Keq=2.0;
	% Local Parameter:   id =  Km0603, name = Km0603
	reaction_r_1401_Km0603=0.1;
	% Local Parameter:   id =  Km0467, name = Km0467
	reaction_r_1401_Km0467=0.1;
	% Local Parameter:   id =  Km1752, name = Km1752
	reaction_r_1401_Km1752=0.1;
	% Local Parameter:   id =  Km0421, name = Km0421
	reaction_r_1401_Km0421=0.1;
	% Local Parameter:   id =  Km1430, name = Km1430
	reaction_r_1401_Km1430=0.1;
	% Local Parameter:   id =  Km1755, name = Km1755
	reaction_r_1401_Km1755=0.1;

	reaction_r_1401=compartment_cell*reaction_r_1401_Vmax*(x(170)*x(139)*x(391)-x(132)*x(336)*x(393)/reaction_r_1401_Keq)/(reaction_r_1401_Km0603*reaction_r_1401_Km0467*reaction_r_1401_Km1752)/((1+x(170)/reaction_r_1401_Km0603)*(1+x(139)/reaction_r_1401_Km0467)*(1+x(391)/reaction_r_1401_Km1752)+(1+x(132)/reaction_r_1401_Km0421)*(1+x(336)/reaction_r_1401_Km1430)*(1+x(393)/reaction_r_1401_Km1755)-1);

% Reaction: id = r_1402, name = UDP-sugar hydrolase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1402_FLUX_VALUE=0.00269553564721213;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1402_Vmax=0.0269553564721213;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1402_Keq=0.2;
	% Local Parameter:   id =  Km1734, name = Km1734
	reaction_r_1402_Km1734=0.1;
	% Local Parameter:   id =  Km0149, name = Km0149
	reaction_r_1402_Km0149=0.1;
	% Local Parameter:   id =  Km1762, name = Km1762
	reaction_r_1402_Km1762=0.1;

	reaction_r_1402=compartment_cell*reaction_r_1402_Vmax*(x(384)-x(35)*x(394)/reaction_r_1402_Keq)/reaction_r_1402_Km1734/(1+x(384)/reaction_r_1402_Km1734+(1+x(35)/reaction_r_1402_Km0149)*(1+x(394)/reaction_r_1402_Km1762)-1);

% Reaction: id = r_1409, name = UMP kinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1409_FLUX_VALUE=0.0523634810234329;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1409_Vmax=0.733088734328061;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1409_Keq=2.0;
	% Local Parameter:   id =  Km0467, name = Km0467
	reaction_r_1409_Km0467=0.1;
	% Local Parameter:   id =  Km1762, name = Km1762
	reaction_r_1409_Km1762=0.1;
	% Local Parameter:   id =  Km0421, name = Km0421
	reaction_r_1409_Km0421=0.1;
	% Local Parameter:   id =  Km1733, name = Km1733
	reaction_r_1409_Km1733=0.1;

	reaction_r_1409=compartment_cell*reaction_r_1409_Vmax*(x(139)*x(394)-x(132)*x(383)/reaction_r_1409_Keq)/(reaction_r_1409_Km0467*reaction_r_1409_Km1762)/((1+x(139)/reaction_r_1409_Km0467)*(1+x(394)/reaction_r_1409_Km1762)+(1+x(132)/reaction_r_1409_Km0421)*(1+x(383)/reaction_r_1409_Km1733)-1);

% Reaction: id = r_1410, name = Undecaprenyl diphosphate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1410_FLUX_VALUE=7.61842038009631E-6;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1410_Vmax=0.015587288097677;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1410_Keq=2.0;
	% Local Parameter:   id =  Km0826, name = Km0826
	reaction_r_1410_Km0826=0.1;
	% Local Parameter:   id =  Km1028, name = Km1028
	reaction_r_1410_Km1028=0.1;
	% Local Parameter:   id =  Km0783, name = Km0783
	reaction_r_1410_Km0783=0.1;
	% Local Parameter:   id =  Km1765, name = Km1765
	reaction_r_1410_Km1765=0.1;

	reaction_r_1410=compartment_cell*reaction_r_1410_Vmax*(x(209)*x(247)^8-x(198)^8*x(395)/reaction_r_1410_Keq)/(reaction_r_1410_Km0826*reaction_r_1410_Km1028^8)/((1+x(209)/reaction_r_1410_Km0826)*(1+x(247)/reaction_r_1410_Km1028)^8+(1+x(198)/reaction_r_1410_Km0783)^8*(1+x(395)/reaction_r_1410_Km1765)-1);

% Reaction: id = r_1413, name = undecaprenyl-diphosphatase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1413_FLUX_VALUE=0.0038479948756196;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1413_Vmax=0.038479948756196;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1413_Keq=0.2;
	% Local Parameter:   id =  Km1765, name = Km1765
	reaction_r_1413_Km1765=0.1;
	% Local Parameter:   id =  Km1430, name = Km1430
	reaction_r_1413_Km1430=0.1;
	% Local Parameter:   id =  Km1768, name = Km1768
	reaction_r_1413_Km1768=0.1;

	reaction_r_1413=compartment_cell*reaction_r_1413_Vmax*(x(395)-x(336)*x(396)/reaction_r_1413_Keq)/reaction_r_1413_Km1765/(1+x(395)/reaction_r_1413_Km1765+(1+x(336)/reaction_r_1413_Km1430)*(1+x(396)/reaction_r_1413_Km1768)-1);

% Reaction: id = r_1421, name = uroporphyrinogen decarboxylase (uroporphyrinogen III)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1421_FLUX_VALUE=3.08892317225085E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1421_Vmax=0.00203868929368556;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1421_Keq=2.0E-4;
	% Local Parameter:   id =  Km1791, name = Km1791
	reaction_r_1421_Km1791=0.1;
	% Local Parameter:   id =  Km0543, name = Km0543
	reaction_r_1421_Km0543=0.1;
	% Local Parameter:   id =  Km0565, name = Km0565
	reaction_r_1421_Km0565=0.1;

	reaction_r_1421=compartment_cell*reaction_r_1421_Vmax*(x(399)-x(160)^4*x(163)/reaction_r_1421_Keq)/reaction_r_1421_Km1791/(1+x(399)/reaction_r_1421_Km1791+(1+x(160)/reaction_r_1421_Km0543)^4*(1+x(163)/reaction_r_1421_Km0565)-1);

% Reaction: id = r_1422, name = uroporphyrinogen methyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1422_FLUX_VALUE=3.08892317229363E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1422_Vmax=9.26676951688089E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1422_Keq=2.0;
	% Local Parameter:   id =  Km1552, name = Km1552
	reaction_r_1422_Km1552=0.1;
	% Local Parameter:   id =  Km1791, name = Km1791
	reaction_r_1422_Km1791=0.1;
	% Local Parameter:   id =  Km1551, name = Km1551
	reaction_r_1422_Km1551=0.1;
	% Local Parameter:   id =  Km0768, name = Km0768
	reaction_r_1422_Km0768=0.1;

	reaction_r_1422=compartment_cell*reaction_r_1422_Vmax*(x(358)^2*x(399)-x(357)^2*x(195)/reaction_r_1422_Keq)/(reaction_r_1422_Km1552^2*reaction_r_1422_Km1791)/((1+x(358)/reaction_r_1422_Km1552)^2*(1+x(399)/reaction_r_1422_Km1791)+(1+x(357)/reaction_r_1422_Km1551)^2*(1+x(195)/reaction_r_1422_Km0768)-1);

% Reaction: id = r_1423, name = uroporphyrinogen-III synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1423_FLUX_VALUE=6.1778463445417E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1423_Vmax=3.70670780672502E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1423_Keq=2.0;
	% Local Parameter:   id =  Km0998, name = Km0998
	reaction_r_1423_Km0998=0.1;
	% Local Parameter:   id =  Km1791, name = Km1791
	reaction_r_1423_Km1791=0.1;

	reaction_r_1423=compartment_cell*reaction_r_1423_Vmax*(x(236)-x(399)/reaction_r_1423_Keq)/reaction_r_1423_Km0998/(1+x(236)/reaction_r_1423_Km0998+1+x(399)/reaction_r_1423_Km1791-1);

% Reaction: id = r_1425, name = valine transaminase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1425_FLUX_VALUE=0.0586202819065749;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1425_Vmax=0.820683946692049;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1425_Keq=2.0;
	% Local Parameter:   id =  Km0282, name = Km0282
	reaction_r_1425_Km0282=0.1;
	% Local Parameter:   id =  Km1095, name = Km1095
	reaction_r_1425_Km1095=0.1;
	% Local Parameter:   id =  Km0233, name = Km0233
	reaction_r_1425_Km0233=0.1;
	% Local Parameter:   id =  Km1193, name = Km1193
	reaction_r_1425_Km1193=0.1;

	reaction_r_1425=compartment_cell*reaction_r_1425_Vmax*(x(67)*x(259)-x(52)*x(281)/reaction_r_1425_Keq)/(reaction_r_1425_Km0282*reaction_r_1425_Km1095)/((1+x(67)/reaction_r_1425_Km0282)*(1+x(259)/reaction_r_1425_Km1095)+(1+x(52)/reaction_r_1425_Km0233)*(1+x(281)/reaction_r_1425_Km1193)-1);

% Reaction: id = r_1432, name = xylose isomerase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1432_FLUX_VALUE=0.0656079149963033;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1432_Vmax=0.39364748997782;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1432_Keq=2.0;
	% Local Parameter:   id =  Km0657, name = Km0657
	reaction_r_1432_Km0657=0.1;
	% Local Parameter:   id =  Km0622, name = Km0622
	reaction_r_1432_Km0622=0.1;

	reaction_r_1432=compartment_cell*reaction_r_1432_Vmax*(x(178)-x(174)/reaction_r_1432_Keq)/reaction_r_1432_Km0657/(1+x(178)/reaction_r_1432_Km0657+1+x(174)/reaction_r_1432_Km0622-1);

% Reaction: id = r_1511, name = ammonia transport via diffusion (extracellular to periplasm)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1511_FLUX_VALUE=1.49280744931915;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1511_Vmax=4.97602483106383;
	% Local Parameter:   id =  Km0453, name = Km0453
	reaction_r_1511_Km0453=1.0;
	% Local Parameter:   id =  Km0451, name = Km0451
	reaction_r_1511_Km0451=0.1;

	reaction_r_1511=compartment_cell*reaction_r_1511_Vmax*(const_species_s_0453-x(136))/reaction_r_1511_Km0453/(1+const_species_s_0453/reaction_r_1511_Km0453+1+x(136)/reaction_r_1511_Km0451-1);

% Reaction: id = r_1521, name = ATP synthase (four protons for one ATP) (periplasm)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1521_FLUX_VALUE=12.8512360032879;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1521_Vmax=128.512360032879;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1521_Keq=20.0;
	% Local Parameter:   id =  Km0421, name = Km0421
	reaction_r_1521_Km0421=0.1;
	% Local Parameter:   id =  Km1430, name = Km1430
	reaction_r_1521_Km1430=0.1;
	% Local Parameter:   id =  Km0467, name = Km0467
	reaction_r_1521_Km0467=0.1;

	reaction_r_1521=compartment_cell*reaction_r_1521_Vmax*(x(132)*x(336)-x(139)/reaction_r_1521_Keq)/(reaction_r_1521_Km0421*reaction_r_1521_Km1430)/((1+x(132)/reaction_r_1521_Km0421)*(1+x(336)/reaction_r_1521_Km1430)+1+x(139)/reaction_r_1521_Km0467-1);

% Reaction: id = r_1536, name = calcium (Ca+2) transport via diffusion (extracellular to periplasm)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1536_FLUX_VALUE=7.20979601425486E-4;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1536_Vmax=0.00240326533808495;
	% Local Parameter:   id =  Km0499, name = Km0499
	reaction_r_1536_Km0499=1.0;
	% Local Parameter:   id =  Km0497, name = Km0497
	reaction_r_1536_Km0497=0.1;

	reaction_r_1536=compartment_cell*reaction_r_1536_Vmax*(const_species_s_0499-x(148))/reaction_r_1536_Km0499/(1+const_species_s_0499/reaction_r_1536_Km0499+1+x(148)/reaction_r_1536_Km0497-1);

% Reaction: id = r_1543, name = chloride (Cl-1) transport via diffusion (extracellular to periplasm)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1543_FLUX_VALUE=7.20979601425486E-4;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1543_Vmax=0.00240326533808495;
	% Local Parameter:   id =  Km0522, name = Km0522
	reaction_r_1543_Km0522=1.0;
	% Local Parameter:   id =  Km0520, name = Km0520
	reaction_r_1543_Km0520=0.1;

	reaction_r_1543=compartment_cell*reaction_r_1543_Vmax*(const_species_s_0522-x(153))/reaction_r_1543_Km0522/(1+const_species_s_0522/reaction_r_1543_Km0522+1+x(153)/reaction_r_1543_Km0520-1);

% Reaction: id = r_1551, name = CO2 transport via diffusion (extracellular to periplasm)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1551_FLUX_VALUE=0.320567754236931;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1551_Vmax=0.641135508473862;
	% Local Parameter:   id =  Km0543, name = Km0543
	reaction_r_1551_Km0543=0.1;

	reaction_r_1551=compartment_cell*reaction_r_1551_Vmax*x(160)/reaction_r_1551_Km0543/(1+x(160)/reaction_r_1551_Km0543);

% Reaction: id = r_1557, name = cobalt (Co+2) transport via diffusion (extracellular to periplasm)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1557_FLUX_VALUE=3.46291835458927E-6;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1557_Vmax=1.15430611819642E-5;
	% Local Parameter:   id =  Km0548, name = Km0548
	reaction_r_1557_Km0548=1.0;
	% Local Parameter:   id =  Km0546, name = Km0546
	reaction_r_1557_Km0546=0.1;

	reaction_r_1557=compartment_cell*reaction_r_1557_Vmax*(const_species_s_0548-x(161))/reaction_r_1557_Km0548/(1+const_species_s_0548/reaction_r_1557_Km0548+1+x(161)/reaction_r_1557_Km0546-1);

% Reaction: id = r_1565, name = copper (Cu+2) transport via diffusion (extracellular to periplasm)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1565_FLUX_VALUE=9.82083645361517E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1565_Vmax=3.27361215120506E-4;
	% Local Parameter:   id =  Km0581, name = Km0581
	reaction_r_1565_Km0581=1.0;
	% Local Parameter:   id =  Km0579, name = Km0579
	reaction_r_1565_Km0579=0.1;

	reaction_r_1565=compartment_cell*reaction_r_1565_Vmax*(const_species_s_0581-x(166))/reaction_r_1565_Km0581/(1+const_species_s_0581/reaction_r_1565_Km0581+1+x(166)/reaction_r_1565_Km0579-1);

% Reaction: id = r_1581, name = cytochrome oxidase bd (menaquinol-8: 2 protons) (periplasm)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1581_FLUX_VALUE=0.0229563090982916;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1581_Vmax=0.229563090982916;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1581_Keq=20.0;
	% Local Parameter:   id =  Km1239, name = Km1239
	reaction_r_1581_Km1239=0.1;
	% Local Parameter:   id =  Km1372, name = Km1372
	reaction_r_1581_Km1372=0.1;
	% Local Parameter:   id =  Km1240, name = Km1240
	reaction_r_1581_Km1240=0.1;

	reaction_r_1581=compartment_cell*reaction_r_1581_Vmax*(x(288)*x(324)-x(289)/reaction_r_1581_Keq)/(reaction_r_1581_Km1239*reaction_r_1581_Km1372)/((1+x(288)/reaction_r_1581_Km1239)*(1+x(324)/reaction_r_1581_Km1372)+1+x(289)/reaction_r_1581_Km1240-1);

% Reaction: id = r_1582, name = cytochrome oxidase bd (ubiquinol-8: 2 protons) (periplasm)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1582_FLUX_VALUE=0.0229563090980402;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1582_Vmax=0.229563090980402;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1582_Keq=20.0;
	% Local Parameter:   id =  Km1372, name = Km1372
	reaction_r_1582_Km1372=0.1;
	% Local Parameter:   id =  Km1731, name = Km1731
	reaction_r_1582_Km1731=0.1;
	% Local Parameter:   id =  Km1732, name = Km1732
	reaction_r_1582_Km1732=0.1;

	reaction_r_1582=compartment_cell*reaction_r_1582_Vmax*(x(324)*x(381)-x(382)/reaction_r_1582_Keq)/(reaction_r_1582_Km1372*reaction_r_1582_Km1731)/((1+x(324)/reaction_r_1582_Km1372)*(1+x(381)/reaction_r_1582_Km1731)+1+x(382)/reaction_r_1582_Km1732-1);

% Reaction: id = r_1621, name = D-glucose transport via diffusion (extracellular to periplasm) irreversible	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1621_FLUX_VALUE=1.0;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1621_Vmax=3.33333333333333;
	% Local Parameter:   id =  Km0659, name = Km0659
	reaction_r_1621_Km0659=1.0;
	% Local Parameter:   id =  Km0657, name = Km0657
	reaction_r_1621_Km0657=0.1;

	reaction_r_1621=compartment_cell*reaction_r_1621_Vmax*(const_species_s_0659-x(178))/reaction_r_1621_Km0659/(1+const_species_s_0659/reaction_r_1621_Km0659+1+x(178)/reaction_r_1621_Km0657-1);

% Reaction: id = r_1622, name = D-glucose transport via PEP:Pyr PTS (periplasm)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1622_FLUX_VALUE=0.0221586919261637;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1622_Vmax=0.310221686966292;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1622_Keq=2.0;
	% Local Parameter:   id =  Km1484, name = Km1484
	reaction_r_1622_Km1484=0.1;
	% Local Parameter:   id =  Km0657, name = Km0657
	reaction_r_1622_Km0657=0.1;
	% Local Parameter:   id =  Km0663, name = Km0663
	reaction_r_1622_Km0663=0.1;
	% Local Parameter:   id =  Km1531, name = Km1531
	reaction_r_1622_Km1531=0.1;

	reaction_r_1622=compartment_cell*reaction_r_1622_Vmax*(x(341)*x(178)-x(179)*x(352)/reaction_r_1622_Keq)/(reaction_r_1622_Km1484*reaction_r_1622_Km0657)/((1+x(341)/reaction_r_1622_Km1484)*(1+x(178)/reaction_r_1622_Km0657)+(1+x(179)/reaction_r_1622_Km0663)*(1+x(352)/reaction_r_1622_Km1531)-1);

% Reaction: id = r_1714, name = Fructose transport via PEP:Pyr PTS (f6p generating) (periplasm)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1714_FLUX_VALUE=0.0110793449722376;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1714_Vmax=0.155110829611326;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1714_Keq=2.0;
	% Local Parameter:   id =  Km1484, name = Km1484
	reaction_r_1714_Km1484=0.1;
	% Local Parameter:   id =  Km0622, name = Km0622
	reaction_r_1714_Km0622=0.1;
	% Local Parameter:   id =  Km0627, name = Km0627
	reaction_r_1714_Km0627=0.1;
	% Local Parameter:   id =  Km1531, name = Km1531
	reaction_r_1714_Km1531=0.1;

	reaction_r_1714=compartment_cell*reaction_r_1714_Vmax*(x(341)*x(174)-x(175)*x(352)/reaction_r_1714_Keq)/(reaction_r_1714_Km1484*reaction_r_1714_Km0622)/((1+x(341)/reaction_r_1714_Km1484)*(1+x(174)/reaction_r_1714_Km0622)+(1+x(175)/reaction_r_1714_Km0627)*(1+x(352)/reaction_r_1714_Km1531)-1);

% Reaction: id = r_1792, name = iron (II) transport via diffusion (extracellular to periplasm)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1792_FLUX_VALUE=0.001143178607316;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1792_Vmax=0.00381059535772;
	% Local Parameter:   id =  Km0840, name = Km0840
	reaction_r_1792_Km0840=1.0;
	% Local Parameter:   id =  Km0838, name = Km0838
	reaction_r_1792_Km0838=0.1;

	reaction_r_1792=compartment_cell*reaction_r_1792_Vmax*(const_species_s_0840-x(210))/reaction_r_1792_Km0840/(1+const_species_s_0840/reaction_r_1792_Km0840+1+x(210)/reaction_r_1792_Km0838-1);

% Reaction: id = r_1793, name = iron (III) transport via diffusion (extracellular to periplasm)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1793_FLUX_VALUE=0.00108153866040612;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1793_Vmax=0.0036051288680204;
	% Local Parameter:   id =  Km0843, name = Km0843
	reaction_r_1793_Km0843=1.0;
	% Local Parameter:   id =  Km0841, name = Km0841
	reaction_r_1793_Km0841=0.1;

	reaction_r_1793=compartment_cell*reaction_r_1793_Vmax*(const_species_s_0843-x(211))/reaction_r_1793_Km0843/(1+const_species_s_0843/reaction_r_1793_Km0843+1+x(211)/reaction_r_1793_Km0841-1);

% Reaction: id = r_1906, name = magnesium (Mg+2) transport via diffusion (extracellular to periplasm)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1906_FLUX_VALUE=0.00120163266904248;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1906_Vmax=0.0040054422301416;
	% Local Parameter:   id =  Km1214, name = Km1214
	reaction_r_1906_Km1214=1.0;
	% Local Parameter:   id =  Km1212, name = Km1212
	reaction_r_1906_Km1212=0.1;

	reaction_r_1906=compartment_cell*reaction_r_1906_Vmax*(const_species_s_1214-x(284))/reaction_r_1906_Km1214/(1+const_species_s_1214/reaction_r_1906_Km1214+1+x(284)/reaction_r_1906_Km1212-1);

% Reaction: id = r_1923, name = Manganese (Mn+2) transport via diffusion (extracellular to periplasm)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1923_FLUX_VALUE=9.57150633208474E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1923_Vmax=3.19050211069491E-4;
	% Local Parameter:   id =  Km1257, name = Km1257
	reaction_r_1923_Km1257=1.0;
	% Local Parameter:   id =  Km1255, name = Km1255
	reaction_r_1923_Km1255=0.1;

	reaction_r_1923=compartment_cell*reaction_r_1923_Vmax*(const_species_s_1257-x(292))/reaction_r_1923_Km1257/(1+const_species_s_1257/reaction_r_1923_Km1257+1+x(292)/reaction_r_1923_Km1255-1);

% Reaction: id = r_1939, name = Methanol transport via diffusion (extracellular to periplasm)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1939_FLUX_VALUE=2.77033467884759E-7;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1939_Vmax=5.54066935769518E-7;
	% Local Parameter:   id =  Km1248, name = Km1248
	reaction_r_1939_Km1248=0.1;

	reaction_r_1939=compartment_cell*reaction_r_1939_Vmax*x(291)/reaction_r_1939_Km1248/(1+x(291)/reaction_r_1939_Km1248);

% Reaction: id = r_1943, name = molybdate transport via diffusion (extracellular to periplasm)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1943_FLUX_VALUE=1.78686587096806E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1943_Vmax=5.95621956989353E-5;
	% Local Parameter:   id =  Km1263, name = Km1263
	reaction_r_1943_Km1263=1.0;
	% Local Parameter:   id =  Km1261, name = Km1261
	reaction_r_1943_Km1261=0.1;

	reaction_r_1943=compartment_cell*reaction_r_1943_Vmax*(const_species_s_1263-x(296))/reaction_r_1943_Km1263/(1+const_species_s_1263/reaction_r_1943_Km1263+1+x(296)/reaction_r_1943_Km1261-1);

% Reaction: id = r_1944, name = murein polymerizing transglycosylase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1944_FLUX_VALUE=0.0019239974378098;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1944_Vmax=0.0423279436318156;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1944_Keq=0.2;
	% Local Parameter:   id =  Km1776, name = Km1776
	reaction_r_1944_Km1776=0.1;
	% Local Parameter:   id =  Km1765, name = Km1765
	reaction_r_1944_Km1765=0.1;
	% Local Parameter:   id =  Km1725, name = Km1725
	reaction_r_1944_Km1725=0.1;

	reaction_r_1944=compartment_cell*reaction_r_1944_Vmax*(x(397)^2-x(395)^2*x(380)/reaction_r_1944_Keq)/reaction_r_1944_Km1776^2/((1+x(397)/reaction_r_1944_Km1776)^2+(1+x(395)/reaction_r_1944_Km1765)^2*(1+x(380)/reaction_r_1944_Km1725)-1);

% Reaction: id = r_1962, name = NAD(P) transhydrogenase (periplasm)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1962_FLUX_VALUE=1.06213701401227;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1962_Vmax=14.8699181961718;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_1962_Keq=2.0;
	% Local Parameter:   id =  Km1334, name = Km1334
	reaction_r_1962_Km1334=0.1;
	% Local Parameter:   id =  Km1335, name = Km1335
	reaction_r_1962_Km1335=0.1;
	% Local Parameter:   id =  Km1333, name = Km1333
	reaction_r_1962_Km1333=0.1;
	% Local Parameter:   id =  Km1336, name = Km1336
	reaction_r_1962_Km1336=0.1;

	reaction_r_1962=compartment_cell*reaction_r_1962_Vmax*(x(315)*x(316)-x(314)*x(317)/reaction_r_1962_Keq)/(reaction_r_1962_Km1334*reaction_r_1962_Km1335)/((1+x(315)/reaction_r_1962_Km1334)*(1+x(316)/reaction_r_1962_Km1335)+(1+x(314)/reaction_r_1962_Km1333)*(1+x(317)/reaction_r_1962_Km1336)-1);

% Reaction: id = r_1968, name = nickel transport via diffusion (extracellular to periplasm)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1968_FLUX_VALUE=4.47409051412934E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_1968_Vmax=1.49136350470978E-4;
	% Local Parameter:   id =  Km1331, name = Km1331
	reaction_r_1968_Km1331=1.0;
	% Local Parameter:   id =  Km1329, name = Km1329
	reaction_r_1968_Km1329=0.1;

	reaction_r_1968=compartment_cell*reaction_r_1968_Vmax*(const_species_s_1331-x(313))/reaction_r_1968_Km1331/(1+const_species_s_1331/reaction_r_1968_Km1331+1+x(313)/reaction_r_1968_Km1329-1);

% Reaction: id = r_2002, name = oxygen transport via diffusion (extracellular to periplasm)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_2002_FLUX_VALUE=0.0230335321771807;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_2002_Vmax=0.0767784405906023;
	% Local Parameter:   id =  Km1374, name = Km1374
	reaction_r_2002_Km1374=1.0;
	% Local Parameter:   id =  Km1372, name = Km1372
	reaction_r_2002_Km1372=0.1;

	reaction_r_2002=compartment_cell*reaction_r_2002_Vmax*(const_species_s_1374-x(324))/reaction_r_2002_Km1374/(1+const_species_s_1374/reaction_r_2002_Km1374+1+x(324)/reaction_r_2002_Km1372-1);

% Reaction: id = r_2011, name = phosphate transport via diffusion (extracellular to periplasm)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_2011_FLUX_VALUE=0.131013836759781;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_2011_Vmax=0.43671278919927;
	% Local Parameter:   id =  Km1432, name = Km1432
	reaction_r_2011_Km1432=1.0;
	% Local Parameter:   id =  Km1430, name = Km1430
	reaction_r_2011_Km1430=0.1;

	reaction_r_2011=compartment_cell*reaction_r_2011_Vmax*(const_species_s_1432-x(336))/reaction_r_2011_Km1432/(1+const_species_s_1432/reaction_r_2011_Km1432+1+x(336)/reaction_r_2011_Km1430-1);

% Reaction: id = r_2047, name = potassium transport via diffusion (extracellular to periplasm)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_2047_FLUX_VALUE=0.027038466512633;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_2047_Vmax=0.0901282217087767;
	% Local Parameter:   id =  Km1496, name = Km1496
	reaction_r_2047_Km1496=1.0;
	% Local Parameter:   id =  Km1494, name = Km1494
	reaction_r_2047_Km1494=0.1;

	reaction_r_2047=compartment_cell*reaction_r_2047_Vmax*(const_species_s_1496-x(345))/reaction_r_2047_Km1496/(1+const_species_s_1496/reaction_r_2047_Km1496+1+x(345)/reaction_r_2047_Km1494-1);

% Reaction: id = r_2108, name = sulfate transport via diffusion (extracellular to periplasm)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_2108_FLUX_VALUE=0.0349372447626834;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_2108_Vmax=0.116457482542278;
	% Local Parameter:   id =  Km1611, name = Km1611
	reaction_r_2108_Km1611=1.0;
	% Local Parameter:   id =  Km1609, name = Km1609
	reaction_r_2108_Km1609=0.1;

	reaction_r_2108=compartment_cell*reaction_r_2108_Vmax*(const_species_s_1611-x(367))/reaction_r_2108_Km1611/(1+const_species_s_1611/reaction_r_2108_Km1611+1+x(367)/reaction_r_2108_Km1609-1);

% Reaction: id = r_2167, name = zinc (Zn+2) transport via diffusion (extracellular to periplasm)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_2167_FLUX_VALUE=4.72342063565976E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_2167_Vmax=1.57447354521992E-4;
	% Local Parameter:   id =  Km1806, name = Km1806
	reaction_r_2167_Km1806=1.0;
	% Local Parameter:   id =  Km1804, name = Km1804
	reaction_r_2167_Km1804=0.1;

	reaction_r_2167=compartment_cell*reaction_r_2167_Vmax*(const_species_s_1806-x(402))/reaction_r_2167_Km1806/(1+const_species_s_1806/reaction_r_2167_Km1806+1+x(402)/reaction_r_2167_Km1804-1);

% Reaction: id = r_2195, name = 2-Octaprenylphenol hydroxylase (anaerobic)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_2195_FLUX_VALUE=3.08892317453432E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_2195_Vmax=0.00488049861576423;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_2195_Keq=0.02;
	% Local Parameter:   id =  Km0229, name = Km0229
	reaction_r_2195_Km0229=0.1;
	% Local Parameter:   id =  Km0467, name = Km0467
	reaction_r_2195_Km0467=0.1;
	% Local Parameter:   id =  Km1333, name = Km1333
	reaction_r_2195_Km1333=0.1;
	% Local Parameter:   id =  Km0226, name = Km0226
	reaction_r_2195_Km0226=0.1;
	% Local Parameter:   id =  Km0421, name = Km0421
	reaction_r_2195_Km0421=0.1;
	% Local Parameter:   id =  Km1334, name = Km1334
	reaction_r_2195_Km1334=0.1;
	% Local Parameter:   id =  Km1430, name = Km1430
	reaction_r_2195_Km1430=0.1;

	reaction_r_2195=compartment_cell*reaction_r_2195_Vmax*(x(49)*x(139)^2*x(314)-x(48)*x(132)^2*x(315)*x(336)^2/reaction_r_2195_Keq)/(reaction_r_2195_Km0229*reaction_r_2195_Km0467^2*reaction_r_2195_Km1333)/((1+x(49)/reaction_r_2195_Km0229)*(1+x(139)/reaction_r_2195_Km0467)^2*(1+x(314)/reaction_r_2195_Km1333)+(1+x(48)/reaction_r_2195_Km0226)*(1+x(132)/reaction_r_2195_Km0421)^2*(1+x(315)/reaction_r_2195_Km1334)*(1+x(336)/reaction_r_2195_Km1430)^2-1);

% Reaction: id = r_2310, name = Dihydroneopterin monophosphate dephosphorylase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_2310_FLUX_VALUE=9.26676951688061E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_2310_Vmax=9.26676951688061E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_2310_Keq=0.2;
	% Local Parameter:   id =  Km0766, name = Km0766
	reaction_r_2310_Km0766=0.1;
	% Local Parameter:   id =  Km0765, name = Km0765
	reaction_r_2310_Km0765=0.1;
	% Local Parameter:   id =  Km1430, name = Km1430
	reaction_r_2310_Km1430=0.1;

	reaction_r_2310=compartment_cell*reaction_r_2310_Vmax*(x(193)-x(192)*x(336)/reaction_r_2310_Keq)/reaction_r_2310_Km0766/(1+x(193)/reaction_r_2310_Km0766+(1+x(192)/reaction_r_2310_Km0765)*(1+x(336)/reaction_r_2310_Km1430)-1);

% Reaction: id = r_2519, name = pyridoxine 5'-phosphate oxidase (anaerboic	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_2519_FLUX_VALUE=3.08892316991383E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_2519_Vmax=4.32449243787936E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_2519_Keq=2.0;
	% Local Parameter:   id =  Km1333, name = Km1333
	reaction_r_2519_Km1333=0.1;
	% Local Parameter:   id =  Km1530, name = Km1530
	reaction_r_2519_Km1530=0.1;
	% Local Parameter:   id =  Km1334, name = Km1334
	reaction_r_2519_Km1334=0.1;
	% Local Parameter:   id =  Km1522, name = Km1522
	reaction_r_2519_Km1522=0.1;

	reaction_r_2519=compartment_cell*reaction_r_2519_Vmax*(x(314)*x(351)-x(315)*x(350)/reaction_r_2519_Keq)/(reaction_r_2519_Km1333*reaction_r_2519_Km1530)/((1+x(314)/reaction_r_2519_Km1333)*(1+x(351)/reaction_r_2519_Km1530)+(1+x(315)/reaction_r_2519_Km1334)*(1+x(350)/reaction_r_2519_Km1522)-1);

% Reaction: id = r_2521, name = pyrimidine phosphatase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_2521_FLUX_VALUE=6.17784634458656E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_2521_Vmax=6.17784634458656E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_r_2521_Keq=0.2;
	% Local Parameter:   id =  Km0346, name = Km0346
	reaction_r_2521_Km0346=0.1;
	% Local Parameter:   id =  Km0311, name = Km0311
	reaction_r_2521_Km0311=0.1;
	% Local Parameter:   id =  Km1430, name = Km1430
	reaction_r_2521_Km1430=0.1;

	reaction_r_2521=compartment_cell*reaction_r_2521_Vmax*(x(102)-x(82)*x(336)/reaction_r_2521_Keq)/reaction_r_2521_Km0346/(1+x(102)/reaction_r_2521_Km0346+(1+x(82)/reaction_r_2521_Km0311)*(1+x(336)/reaction_r_2521_Km1430)-1);

% Reaction: id = r_2533, name = Sink needed to allow (2R,4S)-2-methyl-2,3,3,4-tetrahydroxytetrahydrofuran to leave system	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_2533_FLUX_VALUE=6.20554969142397E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_2533_Vmax=1.24110993828479E-4;
	% Local Parameter:   id =  Km0003, name = Km0003
	reaction_r_2533_Km0003=0.1;

	reaction_r_2533=compartment_cell*reaction_r_2533_Vmax*x(1)/reaction_r_2533_Km0003/(1+x(1)/reaction_r_2533_Km0003);

% Reaction: id = r_2534, name = Sink needed to allow 5'-deoxyribose to leave system	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_2534_FLUX_VALUE=3.11662651885034E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_2534_Vmax=6.23325303770068E-5;
	% Local Parameter:   id =  Km0334, name = Km0334
	reaction_r_2534_Km0334=0.1;

	reaction_r_2534=compartment_cell*reaction_r_2534_Vmax*x(93)/reaction_r_2534_Km0334/(1+x(93)/reaction_r_2534_Km0334);

% Reaction: id = r_2537, name = Sink needed to allow p-Cresol to leave system	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_2537_FLUX_VALUE=3.08892317229363E-5;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_2537_Vmax=6.17784634458726E-5;
	% Local Parameter:   id =  Km1407, name = Km1407
	reaction_r_2537_Km1407=0.1;

	reaction_r_2537=compartment_cell*reaction_r_2537_Vmax*x(331)/reaction_r_2537_Km1407/(1+x(331)/reaction_r_2537_Km1407);

% Reaction: id = r_2538, name = Sink needed to allow S-Adenosyl-4-methylthio-2-oxobutanoate to leave system	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_2538_FLUX_VALUE=2.77033467995043E-7;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_r_2538_Vmax=5.54066935990086E-7;
	% Local Parameter:   id =  Km1550, name = Km1550
	reaction_r_2538_Km1550=0.1;

	reaction_r_2538=compartment_cell*reaction_r_2538_Vmax*x(356)/reaction_r_2538_Km1550/(1+x(356)/reaction_r_2538_Km1550);

% Reaction: id = r_2584, name = growth	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_2584_FLUX_VALUE=0.138516734183571;
	% Local Parameter:   id =  zero_flux, name = zero_flux
	reaction_r_2584_zero_flux=0.0;
	% Local Parameter:   id =  V0, name = V0
	reaction_r_2584_V0=0.138516734183142;
	% Local Parameter:   id =  ic0133, name = ic0133
	reaction_r_2584_ic0133=0.1;
	% Local Parameter:   id =  ep0133, name = ep0133
	reaction_r_2584_ep0133=2.23E-4;
	% Local Parameter:   id =  ic0378, name = ic0378
	reaction_r_2584_ic0378=0.1;
	% Local Parameter:   id =  ep0378, name = ep0378
	reaction_r_2584_ep0378=2.6E-5;
	% Local Parameter:   id =  ic0226, name = ic0226
	reaction_r_2584_ic0226=0.1;
	% Local Parameter:   id =  ep0226, name = ep0226
	reaction_r_2584_ep0226=2.23E-4;
	% Local Parameter:   id =  ic0380, name = ic0380
	reaction_r_2584_ic0380=0.1;
	% Local Parameter:   id =  ep0380, name = ep0380
	reaction_r_2584_ep0380=2.6E-4;
	% Local Parameter:   id =  ic1041, name = ic1041
	reaction_r_2584_ic1041=0.1;
	% Local Parameter:   id =  ep1041, name = ep1041
	reaction_r_2584_ep1041=0.5137;
	% Local Parameter:   id =  ic1552, name = ic1552
	reaction_r_2584_ic1552=0.1;
	% Local Parameter:   id =  ep1552, name = ep1552
	reaction_r_2584_ep1552=2.23E-4;
	% Local Parameter:   id =  ic1061, name = ic1061
	reaction_r_2584_ic1061=0.1;
	% Local Parameter:   id =  ep1061, name = ep1061
	reaction_r_2584_ep1061=0.2958;
	% Local Parameter:   id =  ic1068, name = ic1068
	reaction_r_2584_ic1068=0.1;
	% Local Parameter:   id =  ep1068, name = ep1068
	reaction_r_2584_ep1068=0.2411;
	% Local Parameter:   id =  ic1072, name = ic1072
	reaction_r_2584_ic1072=0.1;
	% Local Parameter:   id =  ep1072, name = ep1072
	reaction_r_2584_ep1072=0.2411;
	% Local Parameter:   id =  ic0467, name = ic0467
	reaction_r_2584_ic0467=0.1;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_2584_ep0467=54.12;
	% Local Parameter:   id =  ic0480, name = ic0480
	reaction_r_2584_ic0480=0.1;
	% Local Parameter:   id =  ep0480, name = ep0480
	reaction_r_2584_ep0480=1.22E-4;
	% Local Parameter:   id =  ic0476, name = ic0476
	reaction_r_2584_ic0476=0.1;
	% Local Parameter:   id =  ep0476, name = ep0476
	reaction_r_2584_ep0476=2.0E-6;
	% Local Parameter:   id =  ic0497, name = ic0497
	reaction_r_2584_ic0497=0.1;
	% Local Parameter:   id =  ep0497, name = ep0497
	reaction_r_2584_ep0497=0.005205;
	% Local Parameter:   id =  ic0520, name = ic0520
	reaction_r_2584_ic0520=0.1;
	% Local Parameter:   id =  ep0520, name = ep0520
	reaction_r_2584_ep0520=0.005205;
	% Local Parameter:   id =  ic0555, name = ic0555
	reaction_r_2584_ic0555=0.1;
	% Local Parameter:   id =  ep0555, name = ep0555
	reaction_r_2584_ep0555=5.76E-4;
	% Local Parameter:   id =  ic0546, name = ic0546
	reaction_r_2584_ic0546=0.1;
	% Local Parameter:   id =  ep0546, name = ep0546
	reaction_r_2584_ep0546=2.5E-5;
	% Local Parameter:   id =  ic0575, name = ic0575
	reaction_r_2584_ic0575=0.1;
	% Local Parameter:   id =  ep0575, name = ep0575
	reaction_r_2584_ep0575=0.1335;
	% Local Parameter:   id =  ic0579, name = ic0579
	reaction_r_2584_ic0579=0.1;
	% Local Parameter:   id =  ep0579, name = ep0579
	reaction_r_2584_ep0579=7.09E-4;
	% Local Parameter:   id =  ic1083, name = ic1083
	reaction_r_2584_ic1083=0.1;
	% Local Parameter:   id =  ep1083, name = ep1083
	reaction_r_2584_ep1083=0.09158;
	% Local Parameter:   id =  ic0726, name = ic0726
	reaction_r_2584_ic0726=0.1;
	% Local Parameter:   id =  ep0726, name = ep0726
	reaction_r_2584_ep0726=0.02617;
	% Local Parameter:   id =  ic0731, name = ic0731
	reaction_r_2584_ic0731=0.1;
	% Local Parameter:   id =  ep0731, name = ep0731
	reaction_r_2584_ep0731=0.02702;
	% Local Parameter:   id =  ic0760, name = ic0760
	reaction_r_2584_ic0760=0.1;
	% Local Parameter:   id =  ep0760, name = ep0760
	reaction_r_2584_ep0760=0.02702;
	% Local Parameter:   id =  ic0805, name = ic0805
	reaction_r_2584_ic0805=0.1;
	% Local Parameter:   id =  ep0805, name = ep0805
	reaction_r_2584_ep0805=0.02617;
	% Local Parameter:   id =  ic0859, name = ic0859
	reaction_r_2584_ic0859=0.1;
	% Local Parameter:   id =  ep0859, name = ep0859
	reaction_r_2584_ep0859=2.23E-4;
	% Local Parameter:   id =  ic0838, name = ic0838
	reaction_r_2584_ic0838=0.1;
	% Local Parameter:   id =  ep0838, name = ep0838
	reaction_r_2584_ep0838=0.006715;
	% Local Parameter:   id =  ic0841, name = ic0841
	reaction_r_2584_ic0841=0.1;
	% Local Parameter:   id =  ep0841, name = ep0841
	reaction_r_2584_ep0841=0.007808;
	% Local Parameter:   id =  ic1101, name = ic1101
	reaction_r_2584_ic1101=0.1;
	% Local Parameter:   id =  ep1101, name = ep1101
	reaction_r_2584_ep1101=0.2632;
	% Local Parameter:   id =  ic1095, name = ic1095
	reaction_r_2584_ic1095=0.1;
	% Local Parameter:   id =  ep1095, name = ep1095
	reaction_r_2584_ep1095=0.2632;
	% Local Parameter:   id =  ic0929, name = ic0929
	reaction_r_2584_ic0929=0.1;
	% Local Parameter:   id =  ep0929, name = ep0929
	reaction_r_2584_ep0929=0.6126;
	% Local Parameter:   id =  ic0945, name = ic0945
	reaction_r_2584_ic0945=0.1;
	% Local Parameter:   id =  ep0945, name = ep0945
	reaction_r_2584_ep0945=0.2151;
	% Local Parameter:   id =  ic1106, name = ic1106
	reaction_r_2584_ic1106=0.1;
	% Local Parameter:   id =  ep1106, name = ep1106
	reaction_r_2584_ep1106=0.09474;
	% Local Parameter:   id =  ic1119, name = ic1119
	reaction_r_2584_ic1119=0.1;
	% Local Parameter:   id =  ep1119, name = ep1119
	reaction_r_2584_ep1119=0.2905;
	% Local Parameter:   id =  ic1494, name = ic1494
	reaction_r_2584_ic1494=0.1;
	% Local Parameter:   id =  ep1494, name = ep1494
	reaction_r_2584_ep1494=0.1952;
	% Local Parameter:   id =  ic1127, name = ic1127
	reaction_r_2584_ic1127=0.1;
	% Local Parameter:   id =  ep1127, name = ep1127
	reaction_r_2584_ep1127=0.4505;
	% Local Parameter:   id =  ic1131, name = ic1131
	reaction_r_2584_ic1131=0.1;
	% Local Parameter:   id =  ep1131, name = ep1131
	reaction_r_2584_ep1131=0.3432;
	% Local Parameter:   id =  ic1141, name = ic1141
	reaction_r_2584_ic1141=0.1;
	% Local Parameter:   id =  ep1141, name = ep1141
	reaction_r_2584_ep1141=0.1537;
	% Local Parameter:   id =  ic1212, name = ic1212
	reaction_r_2584_ic1212=0.1;
	% Local Parameter:   id =  ep1212, name = ep1212
	reaction_r_2584_ep1212=0.008675;
	% Local Parameter:   id =  ic0336, name = ic0336
	reaction_r_2584_ic0336=0.1;
	% Local Parameter:   id =  ep0336, name = ep0336
	reaction_r_2584_ep0336=2.23E-4;
	% Local Parameter:   id =  ic1255, name = ic1255
	reaction_r_2584_ic1255=0.1;
	% Local Parameter:   id =  ep1255, name = ep1255
	reaction_r_2584_ep1255=6.91E-4;
	% Local Parameter:   id =  ic1261, name = ic1261
	reaction_r_2584_ic1261=0.1;
	% Local Parameter:   id =  ep1261, name = ep1261
	reaction_r_2584_ep1261=7.0E-6;
	% Local Parameter:   id =  ic1333, name = ic1333
	reaction_r_2584_ic1333=0.1;
	% Local Parameter:   id =  ep1333, name = ep1333
	reaction_r_2584_ep1333=0.001831;
	% Local Parameter:   id =  ic1335, name = ic1335
	reaction_r_2584_ic1335=0.1;
	% Local Parameter:   id =  ep1335, name = ep1335
	reaction_r_2584_ep1335=4.47E-4;
	% Local Parameter:   id =  ic0451, name = ic0451
	reaction_r_2584_ic0451=0.1;
	% Local Parameter:   id =  ep0451, name = ep0451
	reaction_r_2584_ep0451=0.01301;
	% Local Parameter:   id =  ic1329, name = ic1329
	reaction_r_2584_ic1329=0.1;
	% Local Parameter:   id =  ep1329, name = ep1329
	reaction_r_2584_ep1329=3.23E-4;
	% Local Parameter:   id =  ic1437, name = ic1437
	reaction_r_2584_ic1437=0.1;
	% Local Parameter:   id =  ep1437, name = ep1437
	reaction_r_2584_ep1437=0.06382;
	% Local Parameter:   id =  ic1435, name = ic1435
	reaction_r_2584_ic1435=0.1;
	% Local Parameter:   id =  ep1435, name = ep1435
	reaction_r_2584_ep1435=0.07521;
	% Local Parameter:   id =  ic1151, name = ic1151
	reaction_r_2584_ic1151=0.1;
	% Local Parameter:   id =  ep1151, name = ep1151
	reaction_r_2584_ep1151=0.1853;
	% Local Parameter:   id =  ic1508, name = ic1508
	reaction_r_2584_ic1508=0.1;
	% Local Parameter:   id =  ep1508, name = ep1508
	reaction_r_2584_ep1508=2.23E-4;
	% Local Parameter:   id =  ic1155, name = ic1155
	reaction_r_2584_ic1155=0.1;
	% Local Parameter:   id =  ep1155, name = ep1155
	reaction_r_2584_ep1155=0.2211;
	% Local Parameter:   id =  ic1522, name = ic1522
	reaction_r_2584_ic1522=0.1;
	% Local Parameter:   id =  ep1522, name = ep1522
	reaction_r_2584_ep1522=2.23E-4;
	% Local Parameter:   id =  ic1546, name = ic1546
	reaction_r_2584_ic1546=0.1;
	% Local Parameter:   id =  ep1546, name = ep1546
	reaction_r_2584_ep1546=2.23E-4;
	% Local Parameter:   id =  ic1170, name = ic1170
	reaction_r_2584_ic1170=0.1;
	% Local Parameter:   id =  ep1170, name = ep1170
	reaction_r_2584_ep1170=0.2158;
	% Local Parameter:   id =  ic1577, name = ic1577
	reaction_r_2584_ic1577=0.1;
	% Local Parameter:   id =  ep1577, name = ep1577
	reaction_r_2584_ep1577=2.23E-4;
	% Local Parameter:   id =  ic1609, name = ic1609
	reaction_r_2584_ic1609=0.1;
	% Local Parameter:   id =  ep1609, name = ep1609
	reaction_r_2584_ep1609=0.004338;
	% Local Parameter:   id =  ic0337, name = ic0337
	reaction_r_2584_ic0337=0.1;
	% Local Parameter:   id =  ep0337, name = ep0337
	reaction_r_2584_ep0337=2.23E-4;
	% Local Parameter:   id =  ic1644, name = ic1644
	reaction_r_2584_ic1644=0.1;
	% Local Parameter:   id =  ep1644, name = ep1644
	reaction_r_2584_ep1644=2.23E-4;
	% Local Parameter:   id =  ic1179, name = ic1179
	reaction_r_2584_ic1179=0.1;
	% Local Parameter:   id =  ep1179, name = ep1179
	reaction_r_2584_ep1179=0.2537;
	% Local Parameter:   id =  ic1185, name = ic1185
	reaction_r_2584_ic1185=0.1;
	% Local Parameter:   id =  ep1185, name = ep1185
	reaction_r_2584_ep1185=0.05684;
	% Local Parameter:   id =  ic1189, name = ic1189
	reaction_r_2584_ic1189=0.1;
	% Local Parameter:   id =  ep1189, name = ep1189
	reaction_r_2584_ep1189=0.1379;
	% Local Parameter:   id =  ic1765, name = ic1765
	reaction_r_2584_ic1765=0.1;
	% Local Parameter:   id =  ep1765, name = ep1765
	reaction_r_2584_ep1765=5.5E-5;
	% Local Parameter:   id =  ic1792, name = ic1792
	reaction_r_2584_ic1792=0.1;
	% Local Parameter:   id =  ep1792, name = ep1792
	reaction_r_2584_ep1792=0.1441;
	% Local Parameter:   id =  ic1193, name = ic1193
	reaction_r_2584_ic1193=0.1;
	% Local Parameter:   id =  ep1193, name = ep1193
	reaction_r_2584_ep1193=0.4232;
	% Local Parameter:   id =  ic1804, name = ic1804
	reaction_r_2584_ic1804=0.1;
	% Local Parameter:   id =  ep1804, name = ep1804
	reaction_r_2584_ep1804=3.41E-4;
	% Local Parameter:   id =  ic1033, name = ic1033
	reaction_r_2584_ic1033=0.1;
	% Local Parameter:   id =  ep1033, name = ep1033
	reaction_r_2584_ep1033=0.01946;
	% Local Parameter:   id =  ic1719, name = ic1719
	reaction_r_2584_ic1719=0.1;
	% Local Parameter:   id =  ep1719, name = ep1719
	reaction_r_2584_ep1719=0.01389;

	reaction_r_2584=compartment_cell*max(reaction_r_2584_V0*(1+reaction_r_2584_ep0133*log(x(32)/reaction_r_2584_ic0133)+reaction_r_2584_ep0378*log(x(119)/reaction_r_2584_ic0378)+reaction_r_2584_ep0226*log(x(48)/reaction_r_2584_ic0226)+reaction_r_2584_ep0380*log(x(120)/reaction_r_2584_ic0380)+reaction_r_2584_ep1041*log(x(251)/reaction_r_2584_ic1041)+reaction_r_2584_ep1552*log(x(358)/reaction_r_2584_ic1552)+reaction_r_2584_ep1061*log(x(252)/reaction_r_2584_ic1061)+reaction_r_2584_ep1068*log(x(253)/reaction_r_2584_ic1068)+reaction_r_2584_ep1072*log(x(254)/reaction_r_2584_ic1072)+reaction_r_2584_ep0467*log(x(139)/reaction_r_2584_ic0467)+reaction_r_2584_ep0480*log(x(144)/reaction_r_2584_ic0480)+reaction_r_2584_ep0476*log(x(142)/reaction_r_2584_ic0476)+reaction_r_2584_ep0497*log(x(148)/reaction_r_2584_ic0497)+reaction_r_2584_ep0520*log(x(153)/reaction_r_2584_ic0520)+reaction_r_2584_ep0555*log(x(162)/reaction_r_2584_ic0555)+reaction_r_2584_ep0546*log(x(161)/reaction_r_2584_ic0546)+reaction_r_2584_ep0575*log(x(165)/reaction_r_2584_ic0575)+reaction_r_2584_ep0579*log(x(166)/reaction_r_2584_ic0579)+reaction_r_2584_ep1083*log(x(258)/reaction_r_2584_ic1083)+reaction_r_2584_ep0726*log(x(184)/reaction_r_2584_ic0726)+reaction_r_2584_ep0731*log(x(185)/reaction_r_2584_ic0731)+reaction_r_2584_ep0760*log(x(191)/reaction_r_2584_ic0760)+reaction_r_2584_ep0805*log(x(204)/reaction_r_2584_ic0805)+reaction_r_2584_ep0859*log(x(212)/reaction_r_2584_ic0859)+reaction_r_2584_ep0838*log(x(210)/reaction_r_2584_ic0838)+reaction_r_2584_ep0841*log(x(211)/reaction_r_2584_ic0841)+reaction_r_2584_ep1101*log(x(263)/reaction_r_2584_ic1101)+reaction_r_2584_ep1095*log(x(259)/reaction_r_2584_ic1095)+reaction_r_2584_ep0929*log(x(224)/reaction_r_2584_ic0929)+reaction_r_2584_ep0945*log(x(229)/reaction_r_2584_ic0945)+reaction_r_2584_ep1106*log(x(265)/reaction_r_2584_ic1106)+reaction_r_2584_ep1119*log(x(270)/reaction_r_2584_ic1119)+reaction_r_2584_ep1494*log(x(345)/reaction_r_2584_ic1494)+reaction_r_2584_ep1127*log(x(271)/reaction_r_2584_ic1127)+reaction_r_2584_ep1131*log(x(272)/reaction_r_2584_ic1131)+reaction_r_2584_ep1141*log(x(274)/reaction_r_2584_ic1141)+reaction_r_2584_ep1212*log(x(284)/reaction_r_2584_ic1212)+reaction_r_2584_ep0336*log(x(95)/reaction_r_2584_ic0336)+reaction_r_2584_ep1255*log(x(292)/reaction_r_2584_ic1255)+reaction_r_2584_ep1261*log(x(296)/reaction_r_2584_ic1261)+reaction_r_2584_ep1333*log(x(314)/reaction_r_2584_ic1333)+reaction_r_2584_ep1335*log(x(316)/reaction_r_2584_ic1335)+reaction_r_2584_ep0451*log(x(136)/reaction_r_2584_ic0451)+reaction_r_2584_ep1329*log(x(313)/reaction_r_2584_ic1329)+reaction_r_2584_ep1437*log(x(338)/reaction_r_2584_ic1437)+reaction_r_2584_ep1435*log(x(337)/reaction_r_2584_ic1435)+reaction_r_2584_ep1151*log(x(275)/reaction_r_2584_ic1151)+reaction_r_2584_ep1508*log(x(347)/reaction_r_2584_ic1508)+reaction_r_2584_ep1155*log(x(276)/reaction_r_2584_ic1155)+reaction_r_2584_ep1522*log(x(350)/reaction_r_2584_ic1522)+reaction_r_2584_ep1546*log(x(355)/reaction_r_2584_ic1546)+reaction_r_2584_ep1170*log(x(277)/reaction_r_2584_ic1170)+reaction_r_2584_ep1577*log(x(363)/reaction_r_2584_ic1577)+reaction_r_2584_ep1609*log(x(367)/reaction_r_2584_ic1609)+reaction_r_2584_ep0337*log(x(96)/reaction_r_2584_ic0337)+reaction_r_2584_ep1644*log(x(371)/reaction_r_2584_ic1644)+reaction_r_2584_ep1179*log(x(278)/reaction_r_2584_ic1179)+reaction_r_2584_ep1185*log(x(279)/reaction_r_2584_ic1185)+reaction_r_2584_ep1189*log(x(280)/reaction_r_2584_ic1189)+reaction_r_2584_ep1765*log(x(395)/reaction_r_2584_ic1765)+reaction_r_2584_ep1792*log(x(400)/reaction_r_2584_ic1792)+reaction_r_2584_ep1193*log(x(281)/reaction_r_2584_ic1193)+reaction_r_2584_ep1804*log(x(402)/reaction_r_2584_ic1804)+reaction_r_2584_ep1033*log(x(248)/reaction_r_2584_ic1033)+reaction_r_2584_ep1719*log(x(379)/reaction_r_2584_ic1719)), reaction_r_2584_zero_flux);

% Species:   id = s_0453, name = Ammonium, constant	const_species_s_0453=1.0;

% Species:   id = s_0499, name = Calcium, constant	const_species_s_0499=1.0;

% Species:   id = s_0522, name = Chloride, constant	const_species_s_0522=1.0;

% Species:   id = s_0545, name = CO2, constant	const_species_s_0545=0.0;

% Species:   id = s_0548, name = Co2+, constant	const_species_s_0548=1.0;

% Species:   id = s_0581, name = Cu2+, constant	const_species_s_0581=1.0;

% Species:   id = s_0659, name = D-Glucose, constant	const_species_s_0659=1.0;

% Species:   id = s_0840, name = Fe2+, constant	const_species_s_0840=1.0;

% Species:   id = s_0843, name = Fe3+, constant	const_species_s_0843=1.0;

% Species:   id = s_1214, name = magnesium, constant	const_species_s_1214=1.0;

% Species:   id = s_1250, name = Methanol, constant	const_species_s_1250=0.0;

% Species:   id = s_1257, name = Mn2+, constant	const_species_s_1257=1.0;

% Species:   id = s_1263, name = Molybdate, constant	const_species_s_1263=1.0;

% Species:   id = s_1331, name = nickel, constant	const_species_s_1331=1.0;

% Species:   id = s_1374, name = O2, constant	const_species_s_1374=1.0;

% Species:   id = s_1432, name = Phosphate, constant	const_species_s_1432=1.0;

% Species:   id = s_1496, name = potassium, constant	const_species_s_1496=1.0;

% Species:   id = s_1611, name = Sulfate, constant	const_species_s_1611=1.0;

% Species:   id = s_1806, name = Zinc, constant	const_species_s_1806=1.0;

% Species:   id = s_1807, name = (2R,4S)-2-methyl-2,3,3,4-tetrahydroxytetrahydrofuran, constant	const_species_s_1807=0.0;

% Species:   id = s_1835, name = 5'-deoxyribose, constant	const_species_s_1835=0.0;

% Species:   id = s_2072, name = p-Cresol, constant	const_species_s_2072=0.0;

% Species:   id = s_2093, name = S-Adenosyl-4-methylthio-2-oxobutanoate, constant	const_species_s_2093=0.0;

% Species:   id = e_0001, name = thrA, constant	const_species_e_0001=0.001;

% Species:   id = e_0002, name = thrB, constant	const_species_e_0002=0.001;

% Species:   id = e_0003, name = thrC, constant	const_species_e_0003=0.001;

% Species:   id = e_0005, name = talB, constant	const_species_e_0005=0.001;

% Species:   id = e_0006, name = mog, constant	const_species_e_0006=0.001;

% Species:   id = e_0008, name = ribF, constant	const_species_e_0008=0.001;

% Species:   id = e_0010, name = ispH, constant	const_species_e_0010=0.001;

% Species:   id = e_0012, name = dapB, constant	const_species_e_0012=0.001;

% Species:   id = e_0020, name = folA, constant	const_species_e_0020=0.001;

% Species:   id = e_0022, name = pdxA, constant	const_species_e_0022=0.001;

% Species:   id = e_0030, name = leuD, constant	const_species_e_0030=0.001;

% Species:   id = e_0031, name = leuC, constant	const_species_e_0031=0.001;

% Species:   id = e_0032, name = leuB, constant	const_species_e_0032=0.001;

% Species:   id = e_0033, name = leuA, constant	const_species_e_0033=0.001;

% Species:   id = e_0034, name = ilvI, constant	const_species_e_0034=0.001;

% Species:   id = e_0035, name = ilvH, constant	const_species_e_0035=0.001;

% Species:   id = e_0036, name = ftsI, constant	const_species_e_0036=0.001;

% Species:   id = e_0037, name = murE, constant	const_species_e_0037=0.001;

% Species:   id = e_0038, name = murF, constant	const_species_e_0038=0.001;

% Species:   id = e_0039, name = mraY, constant	const_species_e_0039=0.001;

% Species:   id = e_0040, name = murD, constant	const_species_e_0040=0.001;

% Species:   id = e_0041, name = murG, constant	const_species_e_0041=0.001;

% Species:   id = e_0042, name = murC, constant	const_species_e_0042=0.001;

% Species:   id = e_0043, name = ddlB, constant	const_species_e_0043=0.001;

% Species:   id = e_0044, name = lpxC, constant	const_species_e_0044=0.001;

% Species:   id = e_0045, name = mutT, constant	const_species_e_0045=0.001;

% Species:   id = e_0046, name = coaE, constant	const_species_e_0046=0.001;

% Species:   id = e_0048, name = nadC, constant	const_species_e_0048=0.001;

% Species:   id = e_0051, name = aceE, constant	const_species_e_0051=0.001;

% Species:   id = e_0052, name = aceF, constant	const_species_e_0052=0.001;

% Species:   id = e_0053, name = lpdA, constant	const_species_e_0053=0.001;

% Species:   id = e_0054, name = acnB, constant	const_species_e_0054=0.001;

% Species:   id = e_0060, name = can, constant	const_species_e_0060=0.001;

% Species:   id = e_0061, name = panD, constant	const_species_e_0061=0.001;

% Species:   id = e_0062, name = panC, constant	const_species_e_0062=0.001;

% Species:   id = e_0063, name = panB, constant	const_species_e_0063=0.001;

% Species:   id = e_0064, name = folK, constant	const_species_e_0064=0.001;

% Species:   id = e_0065, name = mrcB, constant	const_species_e_0065=0.001;

% Species:   id = e_0071, name = hemL, constant	const_species_e_0071=0.001;

% Species:   id = e_0074, name = mtnN, constant	const_species_e_0074=0.001;

% Species:   id = e_0076, name = dapD, constant	const_species_e_0076=0.001;

% Species:   id = e_0077, name = pyrH, constant	const_species_e_0077=0.001;

% Species:   id = e_0078, name = dxr, constant	const_species_e_0078=0.001;

% Species:   id = e_0079, name = uppS, constant	const_species_e_0079=0.001;

% Species:   id = e_0080, name = cdsA, constant	const_species_e_0080=0.001;

% Species:   id = e_0081, name = lpxD, constant	const_species_e_0081=0.001;

% Species:   id = e_0082, name = fabZ, constant	const_species_e_0082=0.001;

% Species:   id = e_0083, name = lpxA, constant	const_species_e_0083=0.001;

% Species:   id = e_0084, name = lpxB, constant	const_species_e_0084=0.001;

% Species:   id = e_0085, name = accA, constant	const_species_e_0085=0.001;

% Species:   id = e_0094, name = fadE, constant	const_species_e_0094=0.001;

% Species:   id = e_0099, name = proB, constant	const_species_e_0099=0.001;

% Species:   id = e_0100, name = proA, constant	const_species_e_0100=0.001;

% Species:   id = e_0103, name = argF, constant	const_species_e_0103=0.001;

% Species:   id = e_0110, name = yahI, constant	const_species_e_0110=0.001;

% Species:   id = e_0116, name = cynT, constant	const_species_e_0116=0.001;

% Species:   id = e_0125, name = mhpF, constant	const_species_e_0125=0.001;

% Species:   id = e_0134, name = hemB, constant	const_species_e_0134=0.001;

% Species:   id = e_0135, name = ddlA, constant	const_species_e_0135=0.001;

% Species:   id = e_0137, name = proC, constant	const_species_e_0137=0.001;

% Species:   id = e_0138, name = aroL, constant	const_species_e_0138=0.001;

% Species:   id = e_0139, name = mak, constant	const_species_e_0139=0.001;

% Species:   id = e_0144, name = ribD, constant	const_species_e_0144=0.001;

% Species:   id = e_0145, name = ribH, constant	const_species_e_0145=0.001;

% Species:   id = e_0146, name = thiL, constant	const_species_e_0146=0.001;

% Species:   id = e_0149, name = dxs, constant	const_species_e_0149=0.001;

% Species:   id = e_0150, name = ispA, constant	const_species_e_0150=0.001;

% Species:   id = e_0151, name = thiI, constant	const_species_e_0151=0.001;

% Species:   id = e_0152, name = panE, constant	const_species_e_0152=0.001;

% Species:   id = e_0162, name = tesB, constant	const_species_e_0162=0.001;

% Species:   id = e_0167, name = adk, constant	const_species_e_0167=0.001;

% Species:   id = e_0168, name = hemH, constant	const_species_e_0168=0.001;

% Species:   id = e_0175, name = gcl, constant	const_species_e_0175=0.001;

% Species:   id = e_0177, name = glxR, constant	const_species_e_0177=0.001;

% Species:   id = e_0183, name = arcC, constant	const_species_e_0183=0.001;

% Species:   id = e_0184, name = purK, constant	const_species_e_0184=0.001;

% Species:   id = e_0185, name = purE, constant	const_species_e_0185=0.001;

% Species:   id = e_0186, name = lpxH, constant	const_species_e_0186=0.001;

% Species:   id = e_0188, name = folD, constant	const_species_e_0188=0.001;

% Species:   id = e_0221, name = mrdA, constant	const_species_e_0221=0.001;

% Species:   id = e_0223, name = nadD, constant	const_species_e_0223=0.001;

% Species:   id = e_0225, name = hscC, constant	const_species_e_0225=0.001;

% Species:   id = e_0238, name = fldA, constant	const_species_e_0238=0.001;

% Species:   id = e_0246, name = gltA, constant	const_species_e_0246=0.001;

% Species:   id = e_0253, name = sucC, constant	const_species_e_0253=0.001;

% Species:   id = e_0254, name = sucD, constant	const_species_e_0254=0.001;

% Species:   id = e_0260, name = nadA, constant	const_species_e_0260=0.001;

% Species:   id = e_0263, name = aroG, constant	const_species_e_0263=0.001;

% Species:   id = e_0264, name = gpmA, constant	const_species_e_0264=0.001;

% Species:   id = e_0273, name = pgl, constant	const_species_e_0273=0.001;

% Species:   id = e_0274, name = bioA, constant	const_species_e_0274=0.001;

% Species:   id = e_0275, name = bioB, constant	const_species_e_0275=0.001;

% Species:   id = e_0276, name = bioF, constant	const_species_e_0276=0.001;

% Species:   id = e_0277, name = bioC, constant	const_species_e_0277=0.001;

% Species:   id = e_0278, name = bioD1, constant	const_species_e_0278=0.001;

% Species:   id = e_0279, name = moaA, constant	const_species_e_0279=0.001;

% Species:   id = e_0280, name = moaC, constant	const_species_e_0280=0.001;

% Species:   id = e_0281, name = moaD, constant	const_species_e_0281=0.001;

% Species:   id = e_0282, name = moaE, constant	const_species_e_0282=0.001;

% Species:   id = e_0291, name = moeB, constant	const_species_e_0291=0.001;

% Species:   id = e_0292, name = moeA, constant	const_species_e_0292=0.001;

% Species:   id = e_0300, name = ybjG, constant	const_species_e_0300=0.001;

% Species:   id = e_0313, name = ltaE, constant	const_species_e_0313=0.001;

% Species:   id = e_0318, name = trxB, constant	const_species_e_0318=0.001;

% Species:   id = e_0323, name = pflA, constant	const_species_e_0323=0.001;

% Species:   id = e_0324, name = pflB, constant	const_species_e_0324=0.001;

% Species:   id = e_0326, name = serC, constant	const_species_e_0326=0.001;

% Species:   id = e_0327, name = aroA, constant	const_species_e_0327=0.001;

% Species:   id = e_0328, name = cmk, constant	const_species_e_0328=0.001;

% Species:   id = e_0330, name = lpxK, constant	const_species_e_0330=0.001;

% Species:   id = e_0331, name = kdsB, constant	const_species_e_0331=0.001;

% Species:   id = e_0332, name = aspC, constant	const_species_e_0332=0.001;

% Species:   id = e_0342, name = pyrD, constant	const_species_e_0342=0.001;

% Species:   id = e_0368, name = pyrC, constant	const_species_e_0368=0.001;

% Species:   id = e_0372, name = fabH, constant	const_species_e_0372=0.001;

% Species:   id = e_0373, name = fabD, constant	const_species_e_0373=0.001;

% Species:   id = e_0374, name = fabG, constant	const_species_e_0374=0.001;

% Species:   id = e_0375, name = acpP, constant	const_species_e_0375=0.001;

% Species:   id = e_0376, name = fabF, constant	const_species_e_0376=0.001;

% Species:   id = e_0377, name = pabC, constant	const_species_e_0377=0.001;

% Species:   id = e_0378, name = tmk, constant	const_species_e_0378=0.001;

% Species:   id = e_0389, name = purB, constant	const_species_e_0389=0.001;

% Species:   id = e_0391, name = icd, constant	const_species_e_0391=0.001;

% Species:   id = e_0395, name = dadX, constant	const_species_e_0395=0.001;

% Species:   id = e_0403, name = prs, constant	const_species_e_0403=0.001;

% Species:   id = e_0404, name = ispE, constant	const_species_e_0404=0.001;

% Species:   id = e_0405, name = hemA, constant	const_species_e_0405=0.001;

% Species:   id = e_0406, name = kdsA, constant	const_species_e_0406=0.001;

% Species:   id = e_0416, name = adhE, constant	const_species_e_0416=0.001;

% Species:   id = e_0425, name = trpA, constant	const_species_e_0425=0.001;

% Species:   id = e_0426, name = trpB, constant	const_species_e_0426=0.001;

% Species:   id = e_0427, name = trpC, constant	const_species_e_0427=0.001;

% Species:   id = e_0428, name = trpD, constant	const_species_e_0428=0.001;

% Species:   id = e_0429, name = trpE, constant	const_species_e_0429=0.001;

% Species:   id = e_0431, name = acnA, constant	const_species_e_0431=0.001;

% Species:   id = e_0432, name = ribA, constant	const_species_e_0432=0.001;

% Species:   id = e_0433, name = pgpB, constant	const_species_e_0433=0.001;

% Species:   id = e_0435, name = pyrF, constant	const_species_e_0435=0.001;

% Species:   id = e_0436, name = fabI, constant	const_species_e_0436=0.001;

% Species:   id = e_0439, name = puuA, constant	const_species_e_0439=0.001;

% Species:   id = e_0451, name = ydbK, constant	const_species_e_0451=0.001;

% Species:   id = e_0466, name = aldA, constant	const_species_e_0466=0.001;

% Species:   id = e_0514, name = folM, constant	const_species_e_0514=0.001;

% Species:   id = e_0515, name = fumC, constant	const_species_e_0515=0.001;

% Species:   id = e_0516, name = fumA, constant	const_species_e_0516=0.001;

% Species:   id = e_0519, name = malY, constant	const_species_e_0519=0.001;

% Species:   id = e_0531, name = ribE, constant	const_species_e_0531=0.001;

% Species:   id = e_0540, name = ydiB, constant	const_species_e_0540=0.001;

% Species:   id = e_0541, name = aroD, constant	const_species_e_0541=0.001;

% Species:   id = e_0544, name = aroH, constant	const_species_e_0544=0.001;

% Species:   id = e_0554, name = nadE, constant	const_species_e_0554=0.001;

% Species:   id = e_0559, name = astC, constant	const_species_e_0559=0.001;

% Species:   id = e_0561, name = gdhA, constant	const_species_e_0561=0.001;

% Species:   id = e_0567, name = gapA, constant	const_species_e_0567=0.001;

% Species:   id = e_0572, name = pabB, constant	const_species_e_0572=0.001;

% Species:   id = e_0577, name = purT, constant	const_species_e_0577=0.001;

% Species:   id = e_0578, name = eda, constant	const_species_e_0578=0.001;

% Species:   id = e_0579, name = edd, constant	const_species_e_0579=0.001;

% Species:   id = e_0580, name = zwf, constant	const_species_e_0580=0.001;

% Species:   id = e_0586, name = nudB, constant	const_species_e_0586=0.001;

% Species:   id = e_0605, name = hisG, constant	const_species_e_0605=0.001;

% Species:   id = e_0606, name = hisD, constant	const_species_e_0606=0.001;

% Species:   id = e_0607, name = hisC, constant	const_species_e_0607=0.001;

% Species:   id = e_0608, name = hisB, constant	const_species_e_0608=0.001;

% Species:   id = e_0609, name = hisH, constant	const_species_e_0609=0.001;

% Species:   id = e_0610, name = hisA, constant	const_species_e_0610=0.001;

% Species:   id = e_0611, name = hisF, constant	const_species_e_0611=0.001;

% Species:   id = e_0612, name = hisI, constant	const_species_e_0612=0.001;

% Species:   id = e_0641, name = thiD, constant	const_species_e_0641=0.001;

% Species:   id = e_0657, name = folE, constant	const_species_e_0657=0.001;

% Species:   id = e_0682, name = atoB, constant	const_species_e_0682=0.001;

% Species:   id = e_0691, name = nudI, constant	const_species_e_0691=0.001;

% Species:   id = e_0717, name = yfbQ, constant	const_species_e_0717=0.001;

% Species:   id = e_0719, name = ackA, constant	const_species_e_0719=0.001;

% Species:   id = e_0720, name = pta, constant	const_species_e_0720=0.001;

% Species:   id = e_0727, name = ubiX, constant	const_species_e_0727=0.001;

% Species:   id = e_0728, name = purF, constant	const_species_e_0728=0.001;

% Species:   id = e_0729, name = folC, constant	const_species_e_0729=0.001;

% Species:   id = e_0730, name = accD, constant	const_species_e_0730=0.001;

% Species:   id = e_0731, name = pdxB, constant	const_species_e_0731=0.001;

% Species:   id = e_0732, name = fabB, constant	const_species_e_0732=0.001;

% Species:   id = e_0734, name = aroC, constant	const_species_e_0734=0.001;

% Species:   id = e_0735, name = fadJ, constant	const_species_e_0735=0.001;

% Species:   id = e_0736, name = fadI, constant	const_species_e_0736=0.001;

% Species:   id = e_0742, name = yfdZ, constant	const_species_e_0742=0.001;

% Species:   id = e_0743, name = glk, constant	const_species_e_0743=0.001;

% Species:   id = e_0746, name = gltX, constant	const_species_e_0746=0.001;

% Species:   id = e_0750, name = cysK, constant	const_species_e_0750=0.001;

% Species:   id = e_0757, name = cysM, constant	const_species_e_0757=0.001;

% Species:   id = e_0765, name = hemF, constant	const_species_e_0765=0.001;

% Species:   id = e_0768, name = eutD, constant	const_species_e_0768=0.001;

% Species:   id = e_0770, name = talA, constant	const_species_e_0770=0.001;

% Species:   id = e_0771, name = tktB, constant	const_species_e_0771=0.001;

% Species:   id = e_0774, name = dapE, constant	const_species_e_0774=0.001;

% Species:   id = e_0775, name = purC, constant	const_species_e_0775=0.001;

% Species:   id = e_0776, name = dapA, constant	const_species_e_0776=0.001;

% Species:   id = e_0791, name = purM, constant	const_species_e_0791=0.001;

% Species:   id = e_0793, name = ppk, constant	const_species_e_0793=0.001;

% Species:   id = e_0795, name = guaA, constant	const_species_e_0795=0.001;

% Species:   id = e_0796, name = guaB, constant	const_species_e_0796=0.001;

% Species:   id = e_0798, name = ispG, constant	const_species_e_0798=0.001;

% Species:   id = e_0799, name = ndk, constant	const_species_e_0799=0.001;

% Species:   id = e_0803, name = iscA, constant	const_species_e_0803=0.001;

% Species:   id = e_0804, name = nifU, constant	const_species_e_0804=0.001;

% Species:   id = e_0805, name = iscS, constant	const_species_e_0805=0.001;

% Species:   id = e_0813, name = glyA, constant	const_species_e_0813=0.001;

% Species:   id = e_0815, name = purL, constant	const_species_e_0815=0.001;

% Species:   id = e_0818, name = pdxJ, constant	const_species_e_0818=0.001;

% Species:   id = e_0819, name = nadB, constant	const_species_e_0819=0.001;

% Species:   id = e_0821, name = grcA, constant	const_species_e_0821=0.001;

% Species:   id = e_0822, name = trxC, constant	const_species_e_0822=0.001;

% Species:   id = e_0823, name = pssA, constant	const_species_e_0823=0.001;

% Species:   id = e_0825, name = pheA, constant	const_species_e_0825=0.001;

% Species:   id = e_0826, name = tyrA, constant	const_species_e_0826=0.001;

% Species:   id = e_0827, name = aroF, constant	const_species_e_0827=0.001;

% Species:   id = e_0828, name = ppnK, constant	const_species_e_0828=0.001;

% Species:   id = e_0839, name = luxS, constant	const_species_e_0839=0.001;

% Species:   id = e_0848, name = gutQ, constant	const_species_e_0848=0.001;

% Species:   id = e_0866, name = ispF, constant	const_species_e_0866=0.001;

% Species:   id = e_0867, name = ispD, constant	const_species_e_0867=0.001;

% Species:   id = e_0868, name = cysC, constant	const_species_e_0868=0.001;

% Species:   id = e_0869, name = cysN, constant	const_species_e_0869=0.001;

% Species:   id = e_0870, name = cysD, constant	const_species_e_0870=0.001;

% Species:   id = e_0871, name = cysH, constant	const_species_e_0871=0.001;

% Species:   id = e_0872, name = cysI, constant	const_species_e_0872=0.001;

% Species:   id = e_0873, name = cysJ, constant	const_species_e_0873=0.001;

% Species:   id = e_0875, name = eno, constant	const_species_e_0875=0.001;

% Species:   id = e_0876, name = pyrG, constant	const_species_e_0876=0.001;

% Species:   id = e_0893, name = argA, constant	const_species_e_0893=0.001;

% Species:   id = e_0894, name = thyA, constant	const_species_e_0894=0.001;

% Species:   id = e_0896, name = aas, constant	const_species_e_0896=0.001;

% Species:   id = e_0897, name = lysA, constant	const_species_e_0897=0.001;

% Species:   id = e_0903, name = yqeA, constant	const_species_e_0903=0.001;

% Species:   id = e_0911, name = fldB, constant	const_species_e_0911=0.001;

% Species:   id = e_0918, name = serA, constant	const_species_e_0918=0.001;

% Species:   id = e_0919, name = rpiA, constant	const_species_e_0919=0.001;

% Species:   id = e_0925, name = pgk, constant	const_species_e_0925=0.001;

% Species:   id = e_0926, name = epd, constant	const_species_e_0926=0.001;

% Species:   id = e_0928, name = tktA, constant	const_species_e_0928=0.001;

% Species:   id = e_0931, name = metK, constant	const_species_e_0931=0.001;

% Species:   id = e_0941, name = glcD, constant	const_species_e_0941=0.001;

% Species:   id = e_0951, name = metC, constant	const_species_e_0951=0.001;

% Species:   id = e_0953, name = plsC, constant	const_species_e_0953=0.001;

% Species:   id = e_0960, name = ribB, constant	const_species_e_0960=0.001;

% Species:   id = e_0962, name = uppP, constant	const_species_e_0962=0.001;

% Species:   id = e_0964, name = folB, constant	const_species_e_0964=0.001;

% Species:   id = e_0974, name = tdcE, constant	const_species_e_0974=0.001;

% Species:   id = e_0975, name = tdcD, constant	const_species_e_0975=0.001;

% Species:   id = e_0977, name = tdcB, constant	const_species_e_0977=0.001;

% Species:   id = e_0978, name = garK, constant	const_species_e_0978=0.001;

% Species:   id = e_0979, name = garR, constant	const_species_e_0979=0.001;

% Species:   id = e_0986, name = argG, constant	const_species_e_0986=0.001;

% Species:   id = e_0987, name = glmM, constant	const_species_e_0987=0.001;

% Species:   id = e_0988, name = folP, constant	const_species_e_0988=0.001;

% Species:   id = e_0990, name = ispB, constant	const_species_e_0990=0.001;

% Species:   id = e_0991, name = murA, constant	const_species_e_0991=0.001;

% Species:   id = e_0993, name = kdsD, constant	const_species_e_0993=0.001;

% Species:   id = e_0994, name = kdsC, constant	const_species_e_0994=0.001;

% Species:   id = e_1004, name = mdh, constant	const_species_e_1004=0.001;

% Species:   id = e_1005, name = accB, constant	const_species_e_1005=0.001;

% Species:   id = e_1006, name = accC, constant	const_species_e_1006=0.001;

% Species:   id = e_1010, name = aroE, constant	const_species_e_1010=0.001;

% Species:   id = e_1014, name = argD, constant	const_species_e_1014=0.001;

% Species:   id = e_1015, name = pabA, constant	const_species_e_1015=0.001;

% Species:   id = e_1019, name = cysG, constant	const_species_e_1019=0.001;

% Species:   id = e_1023, name = yhfW, constant	const_species_e_1023=0.001;

% Species:   id = e_1026, name = rpe, constant	const_species_e_1026=0.001;

% Species:   id = e_1027, name = aroB, constant	const_species_e_1027=0.001;

% Species:   id = e_1028, name = aroK, constant	const_species_e_1028=0.001;

% Species:   id = e_1029, name = mrcA, constant	const_species_e_1029=0.001;

% Species:   id = e_1034, name = bioH, constant	const_species_e_1034=0.001;

% Species:   id = e_1045, name = asd, constant	const_species_e_1045=0.001;

% Species:   id = e_1086, name = xylA, constant	const_species_e_1086=0.001;

% Species:   id = e_1105, name = cysE, constant	const_species_e_1105=0.001;

% Species:   id = e_1106, name = gpsA, constant	const_species_e_1106=0.001;

% Species:   id = e_1108, name = gpmI, constant	const_species_e_1108=0.001;

% Species:   id = e_1109, name = tdh, constant	const_species_e_1109=0.001;

% Species:   id = e_1110, name = kbl, constant	const_species_e_1110=0.001;

% Species:   id = e_1125, name = waaA, constant	const_species_e_1125=0.001;

% Species:   id = e_1126, name = coaD, constant	const_species_e_1126=0.001;

% Species:   id = e_1127, name = coaBC, constant	const_species_e_1127=0.001;

% Species:   id = e_1128, name = dut, constant	const_species_e_1128=0.001;

% Species:   id = e_1129, name = pyrE, constant	const_species_e_1129=0.001;

% Species:   id = e_1130, name = gmk, constant	const_species_e_1130=0.001;

% Species:   id = e_1136, name = ilvN, constant	const_species_e_1136=0.001;

% Species:   id = e_1137, name = ilvB, constant	const_species_e_1137=0.001;

% Species:   id = e_1141, name = tnaA, constant	const_species_e_1141=0.001;

% Species:   id = e_1149, name = glmS, constant	const_species_e_1149=0.001;

% Species:   id = e_1150, name = glmU, constant	const_species_e_1150=0.001;

% Species:   id = e_1160, name = asnA, constant	const_species_e_1160=0.001;

% Species:   id = e_1167, name = ilvE, constant	const_species_e_1167=0.001;

% Species:   id = e_1168, name = ilvD, constant	const_species_e_1168=0.001;

% Species:   id = e_1169, name = ilvA, constant	const_species_e_1169=0.001;

% Species:   id = e_1170, name = ilvC, constant	const_species_e_1170=0.001;

% Species:   id = e_1172, name = trxA, constant	const_species_e_1172=0.001;

% Species:   id = e_1184, name = hemX, constant	const_species_e_1184=0.001;

% Species:   id = e_1185, name = hemD, constant	const_species_e_1185=0.001;

% Species:   id = e_1186, name = hemC, constant	const_species_e_1186=0.001;

% Species:   id = e_1188, name = cyaY, constant	const_species_e_1188=0.001;

% Species:   id = e_1189, name = dapF, constant	const_species_e_1189=0.001;

% Species:   id = e_1196, name = metE, constant	const_species_e_1196=0.001;

% Species:   id = e_1200, name = ubiD, constant	const_species_e_1200=0.001;

% Species:   id = e_1201, name = fre, constant	const_species_e_1201=0.001;

% Species:   id = e_1202, name = fadA, constant	const_species_e_1202=0.001;

% Species:   id = e_1203, name = fadB, constant	const_species_e_1203=0.001;

% Species:   id = e_1205, name = hemG, constant	const_species_e_1205=0.001;

% Species:   id = e_1206, name = mobB, constant	const_species_e_1206=0.001;

% Species:   id = e_1207, name = mobA, constant	const_species_e_1207=0.001;

% Species:   id = e_1210, name = glnA, constant	const_species_e_1210=0.001;

% Species:   id = e_1226, name = tpiA, constant	const_species_e_1226=0.001;

% Species:   id = e_1227, name = fpr, constant	const_species_e_1227=0.001;

% Species:   id = e_1232, name = metB, constant	const_species_e_1232=0.001;

% Species:   id = e_1233, name = metL, constant	const_species_e_1233=0.001;

% Species:   id = e_1234, name = metF, constant	const_species_e_1234=0.001;

% Species:   id = e_1238, name = pflD, constant	const_species_e_1238=0.001;

% Species:   id = e_1239, name = pflC, constant	const_species_e_1239=0.001;

% Species:   id = e_1240, name = ppc, constant	const_species_e_1240=0.001;

% Species:   id = e_1241, name = argE, constant	const_species_e_1241=0.001;

% Species:   id = e_1242, name = argC, constant	const_species_e_1242=0.001;

% Species:   id = e_1243, name = argB, constant	const_species_e_1243=0.001;

% Species:   id = e_1244, name = argH, constant	const_species_e_1244=0.001;

% Species:   id = e_1247, name = murI, constant	const_species_e_1247=0.001;

% Species:   id = e_1248, name = murB, constant	const_species_e_1248=0.001;

% Species:   id = e_1249, name = coaA, constant	const_species_e_1249=0.001;

% Species:   id = e_1250, name = thiH, constant	const_species_e_1250=0.001;

% Species:   id = e_1251, name = thiG, constant	const_species_e_1251=0.001;

% Species:   id = e_1252, name = thiF, constant	const_species_e_1252=0.001;

% Species:   id = e_1253, name = thiE, constant	const_species_e_1253=0.001;

% Species:   id = e_1254, name = thiC, constant	const_species_e_1254=0.001;

% Species:   id = e_1256, name = hemE, constant	const_species_e_1256=0.001;

% Species:   id = e_1257, name = purD, constant	const_species_e_1257=0.001;

% Species:   id = e_1258, name = purH, constant	const_species_e_1258=0.001;

% Species:   id = e_1259, name = metA, constant	const_species_e_1259=0.001;

% Species:   id = e_1262, name = metH, constant	const_species_e_1262=0.001;

% Species:   id = e_1263, name = lysC, constant	const_species_e_1263=0.001;

% Species:   id = e_1264, name = pgi, constant	const_species_e_1264=0.001;

% Species:   id = e_1271, name = ubiC, constant	const_species_e_1271=0.001;

% Species:   id = e_1272, name = ubiA, constant	const_species_e_1272=0.001;

% Species:   id = e_1273, name = plsB, constant	const_species_e_1273=0.001;

% Species:   id = e_1275, name = alr, constant	const_species_e_1275=0.001;

% Species:   id = e_1276, name = tyrB, constant	const_species_e_1276=0.001;

% Species:   id = e_1277, name = aphA, constant	const_species_e_1277=0.001;

% Species:   id = e_1291, name = rpiB, constant	const_species_e_1291=0.001;

% Species:   id = e_1298, name = fumB, constant	const_species_e_1298=0.001;

% Species:   id = e_1312, name = psd, constant	const_species_e_1312=0.001;

% Species:   id = e_1313, name = rsgA, constant	const_species_e_1313=0.001;

% Species:   id = e_1315, name = purA, constant	const_species_e_1315=0.001;

% Species:   id = e_1326, name = cysQ, constant	const_species_e_1326=0.001;

% Species:   id = e_1334, name = nrdG, constant	const_species_e_1334=0.001;

% Species:   id = e_1335, name = nrdD, constant	const_species_e_1335=0.001;

% Species:   id = e_1339, name = pyrI, constant	const_species_e_1339=0.001;

% Species:   id = e_1340, name = pyrB, constant	const_species_e_1340=0.001;

% Species:   id = e_1341, name = argI, constant	const_species_e_1341=0.001;

% Species:   id = e_1355, name = sgcE, constant	const_species_e_1355=0.001;

% Species:   id = e_1366, name = deoB, constant	const_species_e_1366=0.001;

% Species:   id = e_1367, name = deoD, constant	const_species_e_1367=0.001;

% Species:   id = e_1369, name = serB, constant	const_species_e_1369=0.001;

% Species:   id = e_1373, name = gpmB, constant	const_species_e_1373=0.001;

% Species:   id = e_1374, name = thiS, constant	const_species_e_1374=0.001;

% Species:   id = e_1376, name = glcF, constant	const_species_e_1376=0.001;

% Species:   id = e_1377, name = glcE, constant	const_species_e_1377=0.001;

	xdot=zeros(402,1);
	
% Species:   id = s_0003, name = (2R,4S)-2-methyl-2,3,3,4-tetrahydroxytetrahydrofuran, affected by kineticLaw
	xdot(1) = (1/(compartment_cell))*(( 1.0 * reaction_r_0001) + (-1.0 * reaction_r_2533));
	
% Species:   id = s_0004, name = (2R,4S)-2-methyl-2,4-dihydroxydihydrofuran-3-one, affected by kineticLaw
	xdot(2) = (1/(compartment_cell))*((-1.0 * reaction_r_0001) + ( 1.0 * reaction_r_0176));
	
% Species:   id = s_0017, name = (R)-2,3-Dihydroxy-3-methylbutanoate, affected by kineticLaw
	xdot(3) = (1/(compartment_cell))*((-1.0 * reaction_r_0517) + ( 1.0 * reaction_r_0811));
	
% Species:   id = s_0018, name = (R)-2,3-Dihydroxy-3-methylpentanoate, affected by kineticLaw
	xdot(4) = (1/(compartment_cell))*((-1.0 * reaction_r_0518) + ( 1.0 * reaction_r_0812));
	
% Species:   id = s_0028, name = (R)-3-Hydroxytetradecanoyl-[acyl-carrier protein], affected by kineticLaw
	xdot(5) = (1/(compartment_cell))*(( 1.0 * reaction_r_0154) + (-1.0 * reaction_r_1378) + (-1.0 * reaction_r_1391));
	
% Species:   id = s_0029, name = (R)-Glycerate, affected by kineticLaw
	xdot(6) = (1/(compartment_cell))*((-1.0 * reaction_r_0697) + ( 1.0 * reaction_r_1335));
	
% Species:   id = s_0032, name = (R)-Pantoate, affected by kineticLaw
	xdot(7) = (1/(compartment_cell))*(( 1.0 * reaction_r_0063) + (-1.0 * reaction_r_1076));
	
% Species:   id = s_0033, name = (R)-Pantothenate, affected by kineticLaw
	xdot(8) = (1/(compartment_cell))*((-1.0 * reaction_r_1075) + ( 1.0 * reaction_r_1076));
	
% Species:   id = s_0040, name = (S)-2-[5-Amino-1-(5-phospho-D-ribosyl)imidazole-4-carboxamido]succinate, affected by kineticLaw
	xdot(9) = (1/(compartment_cell))*((-1.0 * reaction_r_0302) + ( 1.0 * reaction_r_1210));
	
% Species:   id = s_0041, name = (S)-2-Aceto-2-hydroxybutanoate, affected by kineticLaw
	xdot(10) = (1/(compartment_cell))*(( 1.0 * reaction_r_0038) + (-1.0 * reaction_r_0812));
	
% Species:   id = s_0042, name = (S)-2-Acetolactate, affected by kineticLaw
	xdot(11) = (1/(compartment_cell))*(( 1.0 * reaction_r_0227) + (-1.0 * reaction_r_0811));
	
% Species:   id = s_0043, name = (S)-3-Hydroxybutanoyl-CoA, affected by kineticLaw
	xdot(12) = (1/(compartment_cell))*((-1.0 * reaction_r_0120) + ( 1.0 * reaction_r_0135));
	
% Species:   id = s_0044, name = (S)-3-Hydroxydecanoyl-CoA, affected by kineticLaw
	xdot(13) = (1/(compartment_cell))*((-1.0 * reaction_r_0121) + ( 1.0 * reaction_r_0128));
	
% Species:   id = s_0045, name = (S)-3-Hydroxydodecanoyl-CoA, affected by kineticLaw
	xdot(14) = (1/(compartment_cell))*((-1.0 * reaction_r_0122) + ( 1.0 * reaction_r_0129));
	
% Species:   id = s_0046, name = (S)-3-Hydroxyhexadecanoyl-CoA, affected by kineticLaw
	xdot(15) = (1/(compartment_cell))*((-1.0 * reaction_r_0123) + ( 1.0 * reaction_r_0130));
	
% Species:   id = s_0047, name = (S)-3-Hydroxyhexanoyl-CoA, affected by kineticLaw
	xdot(16) = (1/(compartment_cell))*((-1.0 * reaction_r_0124) + ( 1.0 * reaction_r_0131));
	
% Species:   id = s_0049, name = (S)-3-Hydroxyoctanoyl-CoA, affected by kineticLaw
	xdot(17) = (1/(compartment_cell))*((-1.0 * reaction_r_0126) + ( 1.0 * reaction_r_0133));
	
% Species:   id = s_0050, name = (S)-3-Hydroxytetradecanoyl-CoA, affected by kineticLaw
	xdot(18) = (1/(compartment_cell))*((-1.0 * reaction_r_0127) + ( 1.0 * reaction_r_0134));
	
% Species:   id = s_0051, name = (S)-3-Methyl-2-oxopentanoate, affected by kineticLaw
	xdot(19) = (1/(compartment_cell))*(( 1.0 * reaction_r_0518) + (-1.0 * reaction_r_0808));
	
% Species:   id = s_0052, name = (S)-Dihydroorotate, affected by kineticLaw
	xdot(20) = (1/(compartment_cell))*((-1.0 * reaction_r_0501) + ( 1.0 * reaction_r_0511) + (-1.0 * reaction_r_0512));
	
% Species:   id = s_0073, name = 1,2-dihexadec-9-enoyl-sn-glycerol 3-phosphate, affected by kineticLaw
	xdot(21) = (1/(compartment_cell))*(( 1.0 * reaction_r_0012) + (-1.0 * reaction_r_0419));
	
% Species:   id = s_0075, name = 1,2-dihexadecanoyl-sn-glycerol 3-phosphate, affected by kineticLaw
	xdot(22) = (1/(compartment_cell))*(( 1.0 * reaction_r_0013) + (-1.0 * reaction_r_0418));
	
% Species:   id = s_0096, name = 1-(2-Carboxyphenylamino)-1-deoxy-D-ribulose 5-phosphate, affected by kineticLaw
	xdot(23) = (1/(compartment_cell))*((-1.0 * reaction_r_0788) + ( 1.0 * reaction_r_1211));
	
% Species:   id = s_0097, name = 1-(5-Phosphoribosyl)-5-[(5-phosphoribosylamino)methylideneamino]imidazole-4-carboxamide, affected by kineticLaw
	xdot(24) = (1/(compartment_cell))*((-1.0 * reaction_r_0008) + ( 1.0 * reaction_r_1204));
	
% Species:   id = s_0098, name = 1-(5-Phosphoribosyl)-AMP, affected by kineticLaw
	xdot(25) = (1/(compartment_cell))*((-1.0 * reaction_r_1204) + ( 1.0 * reaction_r_1205));
	
% Species:   id = s_0099, name = 1-(5-Phosphoribosyl)-ATP, affected by kineticLaw
	xdot(26) = (1/(compartment_cell))*(( 1.0 * reaction_r_0374) + (-1.0 * reaction_r_1205));
	
% Species:   id = s_0116, name = 1-deoxy-D-xylulose 5-phosphate, affected by kineticLaw
	xdot(27) = (1/(compartment_cell))*(( 1.0 * reaction_r_0009) + (-1.0 * reaction_r_0011) + (-1.0 * reaction_r_1245) + (-1.0 * reaction_r_1346));
	
% Species:   id = s_0119, name = 1-hexadec-9-enoyl-sn-glycerol 3-phosphate, affected by kineticLaw
	xdot(28) = (1/(compartment_cell))*((-1.0 * reaction_r_0012) + ( 1.0 * reaction_r_0707));
	
% Species:   id = s_0121, name = 1-hexadecanoyl-sn-glycerol 3-phosphate, affected by kineticLaw
	xdot(29) = (1/(compartment_cell))*((-1.0 * reaction_r_0013) + ( 1.0 * reaction_r_0706));
	
% Species:   id = s_0123, name = 1-hydroxy-2-methyl-2-(E)-butenyl 4-diphosphate, affected by kineticLaw
	xdot(30) = (1/(compartment_cell))*((-1.0 * reaction_r_0014) + (-1.0 * reaction_r_0015) + ( 1.0 * reaction_r_0084));
	
% Species:   id = s_0128, name = 1-Pyrroline-5-carboxylate, affected by kineticLaw
	xdot(31) = (1/(compartment_cell))*(( 1.0 * reaction_r_0835) + (-1.0 * reaction_r_1250));
	
% Species:   id = s_0133, name = 10-Formyltetrahydrofolate, affected by kineticLaw
	xdot(32) = (1/(compartment_cell))*(( 1.0 * reaction_r_0622) + ( 1.0 * reaction_r_0950) + (-1.0 * reaction_r_1209) + (-2.23E-4 * reaction_r_2584));
	
% Species:   id = s_0147, name = 2,3,2'3'-Tetrakis(beta-hydroxymyristoyl)-D-glucosaminyl-1,6-beta-D-glucosamine 1,4'-bisphosphate, affected by kineticLaw
	xdot(33) = (1/(compartment_cell))*((-1.0 * reaction_r_0102) + ( 1.0 * reaction_r_1337));
	
% Species:   id = s_0148, name = 2,3,4,5-Tetrahydrodipicolinate, affected by kineticLaw
	xdot(34) = (1/(compartment_cell))*(( 1.0 * reaction_r_0502) + (-1.0 * reaction_r_1338));
	
% Species:   id = s_0149, name = 2,3-Bis(3-hydroxytetradecanoyl)-beta-D-glucosaminyl 1-phosphate, affected by kineticLaw
	xdot(35) = (1/(compartment_cell))*((-1.0 * reaction_r_0857) + ( 1.0 * reaction_r_1402));
	
% Species:   id = s_0155, name = 2,3-Dihydrodipicolinate, affected by kineticLaw
	xdot(36) = (1/(compartment_cell))*((-1.0 * reaction_r_0502) + ( 1.0 * reaction_r_0503));
	
% Species:   id = s_0160, name = 2,5-Diamino-6-(ribosylamino)-4-(3H)-pyrimidinone 5'-phosphate, affected by kineticLaw
	xdot(37) = (1/(compartment_cell))*((-1.0 * reaction_r_0498) + ( 1.0 * reaction_r_0745));
	
% Species:   id = s_0162, name = 2-(Formamido)-N1-(5-phospho-D-ribosyl)acetamidine, affected by kineticLaw
	xdot(38) = (1/(compartment_cell))*((-1.0 * reaction_r_1208) + ( 1.0 * reaction_r_1212));
	
% Species:   id = s_0191, name = 2-Amino-4-hydroxy-6-(erythro-1,2,3-trihydroxypropyl)dihydropteridine triphosphate, affected by kineticLaw
	xdot(39) = (1/(compartment_cell))*((-1.0 * reaction_r_0510) + ( 1.0 * reaction_r_0744));
	
% Species:   id = s_0193, name = 2-C-methyl-D-erythritol 2,4-cyclodiphosphate, affected by kineticLaw
	xdot(40) = (1/(compartment_cell))*(( 1.0 * reaction_r_0053) + (-1.0 * reaction_r_0084));
	
% Species:   id = s_0194, name = 2-C-methyl-D-erythritol 4-phosphate, affected by kineticLaw
	xdot(41) = (1/(compartment_cell))*(( 1.0 * reaction_r_0011) + (-1.0 * reaction_r_0054));
	
% Species:   id = s_0195, name = 2-Dehydro-3-deoxy-D-arabino-heptonate 7-phosphate, affected by kineticLaw
	xdot(42) = (1/(compartment_cell))*((-1.0 * reaction_r_0099) + ( 1.0 * reaction_r_0101));
	
% Species:   id = s_0201, name = 2-Dehydro-3-deoxy-D-gluconate 6-phosphate, affected by kineticLaw
	xdot(43) = (1/(compartment_cell))*((-1.0 * reaction_r_0056) + ( 1.0 * reaction_r_0217));
	
% Species:   id = s_0203, name = 2-Dehydropantoate, affected by kineticLaw
	xdot(44) = (1/(compartment_cell))*((-1.0 * reaction_r_0063) + ( 1.0 * reaction_r_0143));
	
% Species:   id = s_0214, name = 2-Hydroxy-3-oxopropanoate, affected by kineticLaw
	xdot(45) = (1/(compartment_cell))*(( 1.0 * reaction_r_0739) + (-1.0 * reaction_r_1335));
	
% Species:   id = s_0217, name = 2-Isopropylmaleate, affected by kineticLaw
	xdot(46) = (1/(compartment_cell))*(( 1.0 * reaction_r_0066) + (-1.0 * reaction_r_0138));
	
% Species:   id = s_0218, name = 2-Methyl-4-amino-5-hydroxymethylpyrimidine diphosphate, affected by kineticLaw
	xdot(47) = (1/(compartment_cell))*(( 1.0 * reaction_r_1198) + (-1.0 * reaction_r_1344));
	
% Species:   id = s_0226, name = 2-Octaprenyl-6-hydroxyphenol, affected by kineticLaw
	xdot(48) = (1/(compartment_cell))*(( 1.0 * reaction_r_2195) + (-2.23E-4 * reaction_r_2584));
	
% Species:   id = s_0229, name = 2-Octaprenylphenol, affected by kineticLaw
	xdot(49) = (1/(compartment_cell))*(( 1.0 * reaction_r_1064) + (-1.0 * reaction_r_2195));
	
% Species:   id = s_0231, name = 2-Oxo-3-hydroxy-4-phosphobutanoate, affected by kineticLaw
	xdot(50) = (1/(compartment_cell))*(( 1.0 * reaction_r_0573) + (-1.0 * reaction_r_1054));
	
% Species:   id = s_0232, name = 2-Oxobutanoate, affected by kineticLaw
	xdot(51) = (1/(compartment_cell))*((-1.0 * reaction_r_0038) + ( 1.0 * reaction_r_0847));
	
% Species:   id = s_0233, name = 2-Oxoglutarate, affected by kineticLaw
	xdot(52) = (1/(compartment_cell))*(( 1.0 * reaction_r_0245) + ( 1.0 * reaction_r_0370) + (-1.0 * reaction_r_0675) + ( 1.0 * reaction_r_0765) + ( 1.0 * reaction_r_0806) + ( 1.0 * reaction_r_0808) + ( 1.0 * reaction_r_0815) + ( 1.0 * reaction_r_0854) + ( 1.0 * reaction_r_1054) + ( 1.0 * reaction_r_1081) + ( 1.0 * reaction_r_1217) + ( 1.0 * reaction_r_1318) + ( 1.0 * reaction_r_1376) + ( 1.0 * reaction_r_1425));
	
% Species:   id = s_0237, name = 2-phospho-4-(cytidine 5'-diphospho)-2-C-methyl-D-erythritol, affected by kineticLaw
	xdot(53) = (1/(compartment_cell))*((-1.0 * reaction_r_0053) + ( 1.0 * reaction_r_0178));
	
% Species:   id = s_0252, name = 3'-Phosphoadenylyl sulfate, affected by kineticLaw
	xdot(54) = (1/(compartment_cell))*(( 1.0 * reaction_r_0305) + (-1.0 * reaction_r_1139));
	
% Species:   id = s_0255, name = 3,4-dihydroxy-2-butanone 4-phosphate, affected by kineticLaw
	xdot(55) = (1/(compartment_cell))*(( 1.0 * reaction_r_0092) + (-1.0 * reaction_r_1265));
	
% Species:   id = s_0262, name = 3-(4-Hydroxyphenyl)pyruvate, affected by kineticLaw
	xdot(56) = (1/(compartment_cell))*(( 1.0 * reaction_r_1225) + (-1.0 * reaction_r_1376));
	
% Species:   id = s_0263, name = 3-(Imidazol-4-yl)-2-oxopropyl phosphate, affected by kineticLaw
	xdot(57) = (1/(compartment_cell))*((-1.0 * reaction_r_0765) + ( 1.0 * reaction_r_0785));
	
% Species:   id = s_0265, name = 3-Carboxy-2-hydroxy-4-methylpentanoate, affected by kineticLaw
	xdot(58) = (1/(compartment_cell))*(( 1.0 * reaction_r_0138) + (-1.0 * reaction_r_0139));
	
% Species:   id = s_0266, name = 3-Carboxy-3-hydroxy-4-methylpentanoate, affected by kineticLaw
	xdot(59) = (1/(compartment_cell))*((-1.0 * reaction_r_0066) + ( 1.0 * reaction_r_0067));
	
% Species:   id = s_0267, name = 3-Carboxy-4-methyl-2-oxopentanoate, affected by kineticLaw
	xdot(60) = (1/(compartment_cell))*((-1.0 * reaction_r_0078) + ( 1.0 * reaction_r_0139));
	
% Species:   id = s_0269, name = 3-Dehydroquinate, affected by kineticLaw
	xdot(61) = (1/(compartment_cell))*((-1.0 * reaction_r_0098) + ( 1.0 * reaction_r_0099));
	
% Species:   id = s_0270, name = 3-Dehydroshikimate, affected by kineticLaw
	xdot(62) = (1/(compartment_cell))*(( 1.0 * reaction_r_0098) + (-1.0 * reaction_r_1304));
	
% Species:   id = s_0271, name = 3-Deoxy-D-manno-2-octulosonate, affected by kineticLaw
	xdot(63) = (1/(compartment_cell))*((-1.0 * reaction_r_0105) + ( 1.0 * reaction_r_0106));
	
% Species:   id = s_0272, name = 3-Deoxy-D-manno-octulosonate 8-phosphate, affected by kineticLaw
	xdot(64) = (1/(compartment_cell))*(( 1.0 * reaction_r_0100) + (-1.0 * reaction_r_0106));
	
% Species:   id = s_0276, name = 3-Hydroxyglutaryl-[acyl-carrier protein] methyl ester, affected by kineticLaw
	xdot(65) = (1/(compartment_cell))*((-1.0 * reaction_r_0145) + ( 1.0 * reaction_r_0146));
	
% Species:   id = s_0277, name = 3-Hydroxypimeloyl-[acyl-carrier protein] methyl ester, affected by kineticLaw
	xdot(66) = (1/(compartment_cell))*((-1.0 * reaction_r_0148) + ( 1.0 * reaction_r_0149));
	
% Species:   id = s_0282, name = 3-Methyl-2-oxobutanoate, affected by kineticLaw
	xdot(67) = (1/(compartment_cell))*((-1.0 * reaction_r_0067) + (-1.0 * reaction_r_0143) + ( 1.0 * reaction_r_0517) + (-1.0 * reaction_r_1425));
	
% Species:   id = s_0283, name = 3-Octaprenyl-4-hydroxybenzoate, affected by kineticLaw
	xdot(68) = (1/(compartment_cell))*(( 1.0 * reaction_r_0775) + (-1.0 * reaction_r_1064));
	
% Species:   id = s_0289, name = 3-Oxo-glutaryl-[acyl-carrier protein] methyl ester, affected by kineticLaw
	xdot(69) = (1/(compartment_cell))*((-1.0 * reaction_r_0146) + ( 1.0 * reaction_r_0147));
	
% Species:   id = s_0290, name = 3-Oxo-pimeloyl-[acyl-carrier protein] methyl ester, affected by kineticLaw
	xdot(70) = (1/(compartment_cell))*((-1.0 * reaction_r_0149) + ( 1.0 * reaction_r_0150));
	
% Species:   id = s_0293, name = 3-Oxodecanoyl-CoA, affected by kineticLaw
	xdot(71) = (1/(compartment_cell))*((-1.0 * reaction_r_0128) + ( 1.0 * reaction_r_0235));
	
% Species:   id = s_0295, name = 3-Oxododecanoyl-CoA, affected by kineticLaw
	xdot(72) = (1/(compartment_cell))*((-1.0 * reaction_r_0129) + ( 1.0 * reaction_r_0232));
	
% Species:   id = s_0297, name = 3-Oxohexadecanoyl-CoA, affected by kineticLaw
	xdot(73) = (1/(compartment_cell))*((-1.0 * reaction_r_0130) + ( 1.0 * reaction_r_0236));
	
% Species:   id = s_0299, name = 3-Oxohexanoyl-CoA, affected by kineticLaw
	xdot(74) = (1/(compartment_cell))*((-1.0 * reaction_r_0131) + ( 1.0 * reaction_r_0231));
	
% Species:   id = s_0303, name = 3-Oxooctanoyl-CoA, affected by kineticLaw
	xdot(75) = (1/(compartment_cell))*((-1.0 * reaction_r_0133) + ( 1.0 * reaction_r_0234));
	
% Species:   id = s_0304, name = 3-Oxotetradecanoyl-[acyl-carrier protein], affected by kineticLaw
	xdot(76) = (1/(compartment_cell))*((-1.0 * reaction_r_0154) + ( 1.0 * reaction_r_0166));
	
% Species:   id = s_0305, name = 3-Oxotetradecanoyl-CoA, affected by kineticLaw
	xdot(77) = (1/(compartment_cell))*((-1.0 * reaction_r_0134) + ( 1.0 * reaction_r_0233));
	
% Species:   id = s_0306, name = 3-Phospho-D-glycerate, affected by kineticLaw
	xdot(78) = (1/(compartment_cell))*((-1.0 * reaction_r_1151) + ( 1.0 * reaction_r_1152) + (-1.0 * reaction_r_1153));
	
% Species:   id = s_0307, name = 3-Phospho-D-glyceroyl phosphate, affected by kineticLaw
	xdot(79) = (1/(compartment_cell))*(( 1.0 * reaction_r_0695) + (-1.0 * reaction_r_1152));
	
% Species:   id = s_0308, name = 3-Phosphohydroxypyruvate, affected by kineticLaw
	xdot(80) = (1/(compartment_cell))*(( 1.0 * reaction_r_1151) + (-1.0 * reaction_r_1217));
	
% Species:   id = s_0310, name = 4,5-dihydroxy-2,3-pentanedione, affected by kineticLaw
	xdot(81) = (1/(compartment_cell))*((-1.0 * reaction_r_0176) + ( 1.0 * reaction_r_1291));
	
% Species:   id = s_0311, name = 4-(1-D-Ribitylamino)-5-aminouracil, affected by kineticLaw
	xdot(82) = (1/(compartment_cell))*((-1.0 * reaction_r_1265) + ( 1.0 * reaction_r_1266) + ( 1.0 * reaction_r_2521));
	
% Species:   id = s_0312, name = 4-(cytidine 5'-diphospho)-2-C-methyl-D-erythritol, affected by kineticLaw
	xdot(83) = (1/(compartment_cell))*(( 1.0 * reaction_r_0054) + (-1.0 * reaction_r_0178));
	
% Species:   id = s_0313, name = 4-Amino-2-methyl-5-phosphomethylpyrimidine, affected by kineticLaw
	xdot(84) = (1/(compartment_cell))*(( 1.0 * reaction_r_0179) + (-1.0 * reaction_r_1198));
	
% Species:   id = s_0316, name = 4-amino-4-deoxychorismate, affected by kineticLaw
	xdot(85) = (1/(compartment_cell))*(( 1.0 * reaction_r_0181) + (-1.0 * reaction_r_0182));
	
% Species:   id = s_0318, name = 4-Aminobenzoate, affected by kineticLaw
	xdot(86) = (1/(compartment_cell))*(( 1.0 * reaction_r_0182) + (-1.0 * reaction_r_0515));
	
% Species:   id = s_0325, name = 4-Hydroxybenzoate, affected by kineticLaw
	xdot(87) = (1/(compartment_cell))*(( 1.0 * reaction_r_0424) + (-1.0 * reaction_r_0775));
	
% Species:   id = s_0328, name = 4-Methyl-2-oxopentanoate, affected by kineticLaw
	xdot(88) = (1/(compartment_cell))*(( 1.0 * reaction_r_0078) + (-1.0 * reaction_r_0854));
	
% Species:   id = s_0330, name = 4-Methyl-5-(2-phosphoethyl)-thiazole, affected by kineticLaw
	xdot(89) = (1/(compartment_cell))*((-1.0 * reaction_r_1344) + ( 1.0 * reaction_r_1346));
	
% Species:   id = s_0331, name = 4-Phospho-D-erythronate, affected by kineticLaw
	xdot(90) = (1/(compartment_cell))*((-1.0 * reaction_r_0573) + ( 1.0 * reaction_r_0574));
	
% Species:   id = s_0332, name = 4-Phospho-L-aspartate, affected by kineticLaw
	xdot(91) = (1/(compartment_cell))*(( 1.0 * reaction_r_0369) + (-1.0 * reaction_r_0371));
	
% Species:   id = s_0333, name = 5'-Deoxyadenosine, affected by kineticLaw
	xdot(92) = (1/(compartment_cell))*((-1.0 * reaction_r_0186) + ( 1.0 * reaction_r_0383) + ( 1.0 * reaction_r_1375));
	
% Species:   id = s_0334, name = 5'-deoxyribose, affected by kineticLaw
	xdot(93) = (1/(compartment_cell))*(( 1.0 * reaction_r_0186) + (-1.0 * reaction_r_2534));
	
% Species:   id = s_0335, name = 5,10-Methenyltetrahydrofolate, affected by kineticLaw
	xdot(94) = (1/(compartment_cell))*((-1.0 * reaction_r_0950) + ( 1.0 * reaction_r_0957));
	
% Species:   id = s_0336, name = 5,10-Methylenetetrahydrofolate, affected by kineticLaw
	xdot(95) = (1/(compartment_cell))*((-1.0 * reaction_r_0143) + (-1.0 * reaction_r_0211) + ( 1.0 * reaction_r_0726) + (-1.0 * reaction_r_0957) + (-1.0 * reaction_r_1353) + (-2.23E-4 * reaction_r_2584));
	
% Species:   id = s_0337, name = 5,6,7,8-Tetrahydrofolate, affected by kineticLaw
	xdot(96) = (1/(compartment_cell))*(( 1.0 * reaction_r_0143) + ( 1.0 * reaction_r_0504) + (-1.0 * reaction_r_0622) + (-1.0 * reaction_r_0726) + ( 1.0 * reaction_r_0954) + ( 1.0 * reaction_r_1209) + (-2.23E-4 * reaction_r_2584));
	
% Species:   id = s_0341, name = 5-[(5-phospho-1-deoxyribulos-1-ylamino)methylideneamino]-1-(5-phosphoribosyl)imidazole-4-carboxamide, affected by kineticLaw
	xdot(97) = (1/(compartment_cell))*(( 1.0 * reaction_r_0008) + (-1.0 * reaction_r_0784));
	
% Species:   id = s_0342, name = 5-amino-1-(5-phospho-D-ribosyl)imidazole, affected by kineticLaw
	xdot(98) = (1/(compartment_cell))*((-1.0 * reaction_r_0179) + (-1.0 * reaction_r_1206) + ( 1.0 * reaction_r_1208));
	
% Species:   id = s_0343, name = 5-Amino-1-(5-Phospho-D-ribosyl)imidazole-4-carboxamide, affected by kineticLaw
	xdot(99) = (1/(compartment_cell))*(( 1.0 * reaction_r_0302) + ( 1.0 * reaction_r_0784) + (-1.0 * reaction_r_1209));
	
% Species:   id = s_0344, name = 5-amino-1-(5-phospho-D-ribosyl)imidazole-4-carboxylate, affected by kineticLaw
	xdot(100) = (1/(compartment_cell))*(( 1.0 * reaction_r_1207) + (-1.0 * reaction_r_1210));
	
% Species:   id = s_0345, name = 5-Amino-4-oxopentanoate, affected by kineticLaw
	xdot(101) = (1/(compartment_cell))*(( 1.0 * reaction_r_0678) + (-2.0 * reaction_r_1223));
	
% Species:   id = s_0346, name = 5-Amino-6-(5'-phosphoribitylamino)uracil, affected by kineticLaw
	xdot(102) = (1/(compartment_cell))*(( 1.0 * reaction_r_0212) + (-1.0 * reaction_r_2521));
	
% Species:   id = s_0347, name = 5-Amino-6-(5'-phosphoribosylamino)uracil, affected by kineticLaw
	xdot(103) = (1/(compartment_cell))*((-1.0 * reaction_r_0212) + ( 1.0 * reaction_r_0498));
	
% Species:   id = s_0352, name = 5-Formamido-1-(5-phospho-D-ribosyl)imidazole-4-carboxamide, affected by kineticLaw
	xdot(104) = (1/(compartment_cell))*((-1.0 * reaction_r_0786) + ( 1.0 * reaction_r_1209));
	
% Species:   id = s_0354, name = 5-Methyltetrahydrofolate, affected by kineticLaw
	xdot(105) = (1/(compartment_cell))*(( 1.0 * reaction_r_0211) + (-1.0 * reaction_r_0954));
	
% Species:   id = s_0359, name = 5-O-(1-Carboxyvinyl)-3-phosphoshikimate, affected by kineticLaw
	xdot(106) = (1/(compartment_cell))*(( 1.0 * reaction_r_0175) + (-1.0 * reaction_r_0425));
	
% Species:   id = s_0360, name = 5-Phospho-alpha-D-ribose 1-diphosphate, affected by kineticLaw
	xdot(107) = (1/(compartment_cell))*((-1.0 * reaction_r_0348) + (-1.0 * reaction_r_0374) + (-1.0 * reaction_r_0682) + (-1.0 * reaction_r_1021) + (-1.0 * reaction_r_1067) + ( 1.0 * reaction_r_1215));
	
% Species:   id = s_0361, name = 5-Phospho-beta-D-ribosylamine, affected by kineticLaw
	xdot(108) = (1/(compartment_cell))*(( 1.0 * reaction_r_0682) + (-1.0 * reaction_r_1214));
	
% Species:   id = s_0362, name = 5-phosphoribosyl-5-carboxyaminoimidazole, affected by kineticLaw
	xdot(109) = (1/(compartment_cell))*(( 1.0 * reaction_r_1206) + (-1.0 * reaction_r_1207));
	
% Species:   id = s_0364, name = 6,7-Dimethyl-8-(1-D-ribityl)lumazine, affected by kineticLaw
	xdot(110) = (1/(compartment_cell))*(( 1.0 * reaction_r_1265) + (-2.0 * reaction_r_1266));
	
% Species:   id = s_0367, name = 6-hydroxymethyl dihydropterin, affected by kineticLaw
	xdot(111) = (1/(compartment_cell))*((-1.0 * reaction_r_0216) + ( 1.0 * reaction_r_0507));
	
% Species:   id = s_0368, name = 6-hydroxymethyl-dihydropterin pyrophosphate, affected by kineticLaw
	xdot(112) = (1/(compartment_cell))*(( 1.0 * reaction_r_0216) + (-1.0 * reaction_r_0515));
	
% Species:   id = s_0369, name = 6-Phospho-D-gluconate, affected by kineticLaw
	xdot(113) = (1/(compartment_cell))*((-1.0 * reaction_r_0217) + ( 1.0 * reaction_r_0218));
	
% Species:   id = s_0370, name = 6-phospho-D-glucono-1,5-lactone, affected by kineticLaw
	xdot(114) = (1/(compartment_cell))*((-1.0 * reaction_r_0218) + ( 1.0 * reaction_r_0660));
	
% Species:   id = s_0371, name = 7,8-Diaminononanoate, affected by kineticLaw
	xdot(115) = (1/(compartment_cell))*(( 1.0 * reaction_r_0297) + (-1.0 * reaction_r_0489));
	
% Species:   id = s_0372, name = 7,8-Dihydrofolate, affected by kineticLaw
	xdot(116) = (1/(compartment_cell))*((-1.0 * reaction_r_0504) + ( 1.0 * reaction_r_0505) + ( 1.0 * reaction_r_1353));
	
% Species:   id = s_0376, name = 8-Amino-7-oxononanoate, affected by kineticLaw
	xdot(117) = (1/(compartment_cell))*(( 1.0 * reaction_r_0222) + (-1.0 * reaction_r_0297));
	
% Species:   id = s_0377, name = [2Fe-1S] desulfurated iron-sulfur cluster, affected by kineticLaw
	xdot(118) = (1/(compartment_cell))*(( 1.0 * reaction_r_0383) + (-1.0 * reaction_r_0796));
	
% Species:   id = s_0378, name = [2Fe-2S] iron-sulfur cluster, affected by kineticLaw
	xdot(119) = (1/(compartment_cell))*((-1.0 * reaction_r_0383) + ( 1.0 * reaction_r_0799) + (-2.6E-5 * reaction_r_2584));
	
% Species:   id = s_0380, name = [4Fe-4S] iron-sulfur cluster, affected by kineticLaw
	xdot(120) = (1/(compartment_cell))*(( 1.0 * reaction_r_0801) + (-2.6E-4 * reaction_r_2584));
	
% Species:   id = s_0381, name = Acetaldehyde, affected by kineticLaw
	xdot(121) = (1/(compartment_cell))*((-1.0 * reaction_r_0224) + ( 1.0 * reaction_r_1348));
	
% Species:   id = s_0384, name = Acetate, affected by kineticLaw
	xdot(122) = (1/(compartment_cell))*((-1.0 * reaction_r_0225) + ( 1.0 * reaction_r_0244) + ( 1.0 * reaction_r_0452) + ( 1.0 * reaction_r_1379));
	
% Species:   id = s_0391, name = Acetoacetyl-CoA, affected by kineticLaw
	xdot(123) = (1/(compartment_cell))*((-1.0 * reaction_r_0135) + ( 1.0 * reaction_r_0230));
	
% Species:   id = s_0393, name = Acetyl phosphate, affected by kineticLaw
	xdot(124) = (1/(compartment_cell))*(( 1.0 * reaction_r_0225) + (-1.0 * reaction_r_1218));
	
% Species:   id = s_0395, name = Acetyl-CoA, affected by kineticLaw
	xdot(125) = (1/(compartment_cell))*((-1.0 * reaction_r_0067) + ( 1.0 * reaction_r_0224) + (-2.0 * reaction_r_0230) + (-1.0 * reaction_r_0231) + (-1.0 * reaction_r_0232) + (-1.0 * reaction_r_0233) + (-1.0 * reaction_r_0234) + (-1.0 * reaction_r_0235) + (-1.0 * reaction_r_0236) + (-1.0 * reaction_r_0237) + (-1.0 * reaction_r_0428) + (-1.0 * reaction_r_0658) + ( 1.0 * reaction_r_0724) + (-1.0 * reaction_r_0999) + ( 1.0 * reaction_r_1218) + ( 1.0 * reaction_r_1251) + ( 1.0 * reaction_r_1252) + ( 1.0 * reaction_r_1255) + (-1.0 * reaction_r_1301));
	
% Species:   id = s_0397, name = acyl carrier protein, affected by kineticLaw
	xdot(126) = (1/(compartment_cell))*(( 1.0 * reaction_r_0012) + ( 1.0 * reaction_r_0013) + ( 1.0 * reaction_r_0150) + ( 1.0 * reaction_r_0166) + ( 1.0 * reaction_r_0222) + (-1.0 * reaction_r_0257) + (-1.0 * reaction_r_0259) + (-1.0 * reaction_r_0260) + ( 1.0 * reaction_r_0706) + ( 1.0 * reaction_r_0707) + (-1.0 * reaction_r_0935) + ( 1.0 * reaction_r_1378) + ( 1.0 * reaction_r_1391));
	
% Species:   id = s_0405, name = Adenine, affected by kineticLaw
	xdot(127) = (1/(compartment_cell))*(( 1.0 * reaction_r_0186) + (-1.0 * reaction_r_1232) + ( 1.0 * reaction_r_1288));
	
% Species:   id = s_0408, name = Adenosine, affected by kineticLaw
	xdot(128) = (1/(compartment_cell))*((-1.0 * reaction_r_0292) + ( 1.0 * reaction_r_1232));
	
% Species:   id = s_0411, name = Adenosine 3',5'-bisphosphate, affected by kineticLaw
	xdot(129) = (1/(compartment_cell))*((-1.0 * reaction_r_0085) + ( 1.0 * reaction_r_1139));
	
% Species:   id = s_0412, name = Adenosine 5'-phosphosulfate, affected by kineticLaw
	xdot(130) = (1/(compartment_cell))*((-1.0 * reaction_r_0305) + ( 1.0 * reaction_r_1329));
	
% Species:   id = s_0420, name = adenylated molybdopterin, affected by kineticLaw
	xdot(131) = (1/(compartment_cell))*((-1.0 * reaction_r_0384) + (-1.0 * reaction_r_0964) + ( 1.0 * reaction_r_0965));
	
% Species:   id = s_0421, name = ADP, affected by kineticLaw
	xdot(132) = (1/(compartment_cell))*(( 1.0 * reaction_r_0178) + ( 1.0 * reaction_r_0225) + ( 1.0 * reaction_r_0237) + ( 1.0 * reaction_r_0243) + ( 1.0 * reaction_r_0292) + ( 2.0 * reaction_r_0301) + ( 1.0 * reaction_r_0305) + ( 1.0 * reaction_r_0369) + ( 1.0 * reaction_r_0388) + ( 1.0 * reaction_r_0440) + ( 1.0 * reaction_r_0457) + ( 1.0 * reaction_r_0463) + ( 1.0 * reaction_r_0488) + ( 1.0 * reaction_r_0489) + ( 1.0 * reaction_r_0505) + ( 1.0 * reaction_r_0532) + ( 1.0 * reaction_r_0622) + ( 1.0 * reaction_r_0648) + ( 1.0 * reaction_r_0673) + ( 1.0 * reaction_r_0683) + ( 1.0 * reaction_r_0697) + ( 1.0 * reaction_r_0754) + ( 1.0 * reaction_r_0761) + ( 1.0 * reaction_r_0762) + ( 1.0 * reaction_r_0770) + ( 1.0 * reaction_r_1006) + ( 1.0 * reaction_r_1039) + ( 1.0 * reaction_r_1043) + ( 1.0 * reaction_r_1045) + ( 1.0 * reaction_r_1046) + ( 1.0 * reaction_r_1047) + ( 1.0 * reaction_r_1075) + (-1.0 * reaction_r_1152) + ( 1.0 * reaction_r_1198) + ( 1.0 * reaction_r_1206) + ( 1.0 * reaction_r_1208) + ( 1.0 * reaction_r_1210) + ( 1.0 * reaction_r_1212) + ( 1.0 * reaction_r_1214) + (-1.0 * reaction_r_1222) + ( 1.0 * reaction_r_1264) + ( 1.0 * reaction_r_1305) + ( 1.0 * reaction_r_1315) + ( 1.0 * reaction_r_1337) + ( 1.0 * reaction_r_1345) + ( 1.0 * reaction_r_1397) + ( 1.0 * reaction_r_1399) + ( 1.0 * reaction_r_1400) + ( 1.0 * reaction_r_1401) + ( 1.0 * reaction_r_1409) + (-1.0 * reaction_r_1521) + ( 2.0 * reaction_r_2195) + ( 53.95 * reaction_r_2584));
	
% Species:   id = s_0435, name = all-trans-Octaprenyl diphosphate, affected by kineticLaw
	xdot(133) = (1/(compartment_cell))*((-1.0 * reaction_r_0775) + ( 1.0 * reaction_r_1063));
	
% Species:   id = s_0445, name = alpha-D-Ribose 1-phosphate, affected by kineticLaw
	xdot(134) = (1/(compartment_cell))*(( 1.0 * reaction_r_1202) + (-1.0 * reaction_r_1232));
	
% Species:   id = s_0446, name = alpha-D-Ribose 5-phosphate, affected by kineticLaw
	xdot(135) = (1/(compartment_cell))*((-1.0 * reaction_r_1202) + (-1.0 * reaction_r_1215) + ( 1.0 * reaction_r_1284) + ( 1.0 * reaction_r_1357));
	
% Species:   id = s_0451, name = Ammonium, affected by kineticLaw
	xdot(136) = (1/(compartment_cell))*((-1.0 * reaction_r_0365) + (-1.0 * reaction_r_0388) + ( 1.0 * reaction_r_0450) + ( 1.0 * reaction_r_0498) + (-1.0 * reaction_r_0675) + (-1.0 * reaction_r_0683) + ( 4.0 * reaction_r_0777) + ( 1.0 * reaction_r_0847) + (-1.0 * reaction_r_1008) + (-1.0 * reaction_r_1368) + ( 1.0 * reaction_r_1511) + (-0.01301 * reaction_r_2584));
	
% Species:   id = s_0454, name = AMP, affected by kineticLaw
	xdot(137) = (1/(compartment_cell))*(( 1.0 * reaction_r_0085) + ( 1.0 * reaction_r_0216) + ( 1.0 * reaction_r_0257) + ( 1.0 * reaction_r_0259) + ( 1.0 * reaction_r_0260) + ( 1.0 * reaction_r_0292) + (-1.0 * reaction_r_0301) + ( 1.0 * reaction_r_0304) + ( 1.0 * reaction_r_0361) + ( 1.0 * reaction_r_0365) + ( 1.0 * reaction_r_0384) + ( 1.0 * reaction_r_0687) + ( 1.0 * reaction_r_0741) + ( 1.0 * reaction_r_0963) + ( 1.0 * reaction_r_0964) + ( 1.0 * reaction_r_1008) + ( 1.0 * reaction_r_1076) + ( 1.0 * reaction_r_1215) + ( 1.0 * reaction_r_1346));
	
% Species:   id = s_0457, name = Anthranilate, affected by kineticLaw
	xdot(138) = (1/(compartment_cell))*((-1.0 * reaction_r_0348) + ( 1.0 * reaction_r_0349));
	
% Species:   id = s_0467, name = ATP, affected by kineticLaw
	xdot(139) = (1/(compartment_cell))*((-1.0 * reaction_r_0178) + (-1.0 * reaction_r_0216) + (-1.0 * reaction_r_0225) + (-1.0 * reaction_r_0237) + (-1.0 * reaction_r_0243) + (-1.0 * reaction_r_0257) + (-1.0 * reaction_r_0259) + (-1.0 * reaction_r_0260) + (-1.0 * reaction_r_0292) + (-1.0 * reaction_r_0301) + (-1.0 * reaction_r_0305) + (-1.0 * reaction_r_0361) + (-1.0 * reaction_r_0365) + (-1.0 * reaction_r_0369) + (-1.0 * reaction_r_0374) + (-1.0 * reaction_r_0388) + (-1.0 * reaction_r_0440) + (-1.0 * reaction_r_0457) + (-1.0 * reaction_r_0463) + (-1.0 * reaction_r_0488) + (-1.0 * reaction_r_0489) + (-1.0 * reaction_r_0505) + (-1.0 * reaction_r_0532) + (-1.0 * reaction_r_0611) + (-1.0 * reaction_r_0622) + (-1.0 * reaction_r_0648) + (-1.0 * reaction_r_0673) + (-1.0 * reaction_r_0683) + (-1.0 * reaction_r_0687) + (-1.0 * reaction_r_0697) + (-1.0 * reaction_r_0741) + (-1.0 * reaction_r_0754) + (-1.0 * reaction_r_0761) + (-1.0 * reaction_r_0762) + (-1.0 * reaction_r_0770) + (-1.0 * reaction_r_0951) + (-1.0 * reaction_r_0965) + (-1.0 * reaction_r_0969) + (-1.0 * reaction_r_1006) + (-1.0 * reaction_r_1008) + (-1.0 * reaction_r_1019) + (-1.0 * reaction_r_1039) + (-1.0 * reaction_r_1043) + (-1.0 * reaction_r_1045) + (-1.0 * reaction_r_1046) + (-1.0 * reaction_r_1047) + (-1.0 * reaction_r_1074) + (-1.0 * reaction_r_1075) + (-1.0 * reaction_r_1076) + ( 1.0 * reaction_r_1152) + (-1.0 * reaction_r_1198) + (-1.0 * reaction_r_1206) + (-1.0 * reaction_r_1208) + (-1.0 * reaction_r_1210) + (-1.0 * reaction_r_1212) + (-1.0 * reaction_r_1214) + (-1.0 * reaction_r_1215) + ( 1.0 * reaction_r_1222) + (-1.0 * reaction_r_1264) + (-1.0 * reaction_r_1276) + (-1.0 * reaction_r_1305) + (-1.0 * reaction_r_1315) + (-1.0 * reaction_r_1329) + (-1.0 * reaction_r_1337) + (-1.0 * reaction_r_1345) + (-1.0 * reaction_r_1346) + (-1.0 * reaction_r_1397) + (-1.0 * reaction_r_1399) + (-1.0 * reaction_r_1400) + (-1.0 * reaction_r_1401) + (-1.0 * reaction_r_1409) + ( 1.0 * reaction_r_1521) + (-2.0 * reaction_r_2195) + (-54.12 * reaction_r_2584));
	
% Species:   id = s_0470, name = beta-Alanine, affected by kineticLaw
	xdot(140) = (1/(compartment_cell))*(( 1.0 * reaction_r_0367) + (-1.0 * reaction_r_1076));
	
% Species:   id = s_0474, name = Bicarbonate, affected by kineticLaw
	xdot(141) = (1/(compartment_cell))*((-1.0 * reaction_r_0237) + ( 1.0 * reaction_r_0755) + (-1.0 * reaction_r_1206));
	
% Species:   id = s_0476, name = Biotin, affected by kineticLaw
	xdot(142) = (1/(compartment_cell))*(( 1.0 * reaction_r_0383) + (-2.0E-6 * reaction_r_2584));
	
% Species:   id = s_0479, name = bis-molybdenum cofactor, affected by kineticLaw
	xdot(143) = (1/(compartment_cell))*(( 1.0 * reaction_r_0384) + (-1.0 * reaction_r_0386));
	
% Species:   id = s_0480, name = bis-molybdopterin guanine dinucleotide, affected by kineticLaw
	xdot(144) = (1/(compartment_cell))*(( 1.0 * reaction_r_0385) + (-1.22E-4 * reaction_r_2584));
	
% Species:   id = s_0481, name = bis-molybdopterin mono-guanine dinucleotide, affected by kineticLaw
	xdot(145) = (1/(compartment_cell))*((-1.0 * reaction_r_0385) + ( 1.0 * reaction_r_0386));
	
% Species:   id = s_0488, name = Butanoyl-CoA, affected by kineticLaw
	xdot(146) = (1/(compartment_cell))*((-1.0 * reaction_r_0231) + ( 1.0 * reaction_r_0266));
	
% Species:   id = s_0493, name = C'-(3-Indolyl)-glycerol 3-phosphate, affected by kineticLaw
	xdot(147) = (1/(compartment_cell))*(( 1.0 * reaction_r_0788) + (-1.0 * reaction_r_1367));
	
% Species:   id = s_0497, name = Calcium, affected by kineticLaw
	xdot(148) = (1/(compartment_cell))*(( 1.0 * reaction_r_1536) + (-0.005205 * reaction_r_2584));
	
% Species:   id = s_0502, name = Carbamoyl phosphate, affected by kineticLaw
	xdot(149) = (1/(compartment_cell))*((-1.0 * reaction_r_0368) + ( 1.0 * reaction_r_0388) + (-1.0 * reaction_r_1065));
	
% Species:   id = s_0510, name = CDP, affected by kineticLaw
	xdot(150) = (1/(compartment_cell))*(( 1.0 * reaction_r_0457) + (-1.0 * reaction_r_1039));
	
% Species:   id = s_0512, name = CDP-1,2-dihexadec-9-enoylglycerol, affected by kineticLaw
	xdot(151) = (1/(compartment_cell))*(( 1.0 * reaction_r_0419) + (-1.0 * reaction_r_1131));
	
% Species:   id = s_0513, name = CDP-1,2-dihexadecanoylglycerol, affected by kineticLaw
	xdot(152) = (1/(compartment_cell))*(( 1.0 * reaction_r_0418) + (-1.0 * reaction_r_1130));
	
% Species:   id = s_0520, name = Chloride, affected by kineticLaw
	xdot(153) = (1/(compartment_cell))*(( 1.0 * reaction_r_1543) + (-0.005205 * reaction_r_2584));
	
% Species:   id = s_0526, name = chorismate, affected by kineticLaw
	xdot(154) = (1/(compartment_cell))*((-1.0 * reaction_r_0181) + (-1.0 * reaction_r_0349) + (-1.0 * reaction_r_0423) + (-1.0 * reaction_r_0424) + ( 1.0 * reaction_r_0425));
	
% Species:   id = s_0530, name = cis-Aconitate, affected by kineticLaw
	xdot(155) = (1/(compartment_cell))*(( 1.0 * reaction_r_0246) + (-1.0 * reaction_r_0247));
	
% Species:   id = s_0533, name = cis-hexadec-9-enoyl-[acyl-carrier protein] (n-C16:1), affected by kineticLaw
	xdot(156) = (1/(compartment_cell))*((-1.0 * reaction_r_0012) + ( 1.0 * reaction_r_0260) + (-1.0 * reaction_r_0707));
	
% Species:   id = s_0536, name = Citrate, affected by kineticLaw
	xdot(157) = (1/(compartment_cell))*((-1.0 * reaction_r_0246) + ( 1.0 * reaction_r_0428));
	
% Species:   id = s_0539, name = CMP, affected by kineticLaw
	xdot(158) = (1/(compartment_cell))*(( 1.0 * reaction_r_0053) + ( 1.0 * reaction_r_0102) + ( 1.0 * reaction_r_0103) + (-1.0 * reaction_r_0457) + ( 1.0 * reaction_r_1130) + ( 1.0 * reaction_r_1131) + ( 1.0 * reaction_r_1200));
	
% Species:   id = s_0542, name = CMP-3-deoxy-D-manno-octulosonate, affected by kineticLaw
	xdot(159) = (1/(compartment_cell))*((-1.0 * reaction_r_0102) + (-1.0 * reaction_r_0103) + ( 1.0 * reaction_r_0105));
	
% Species:   id = s_0543, name = CO2, affected by kineticLaw
	xdot(160) = (1/(compartment_cell))*(( 1.0 * reaction_r_0009) + ( 1.0 * reaction_r_0038) + ( 1.0 * reaction_r_0078) + ( 1.0 * reaction_r_0147) + ( 1.0 * reaction_r_0150) + ( 1.0 * reaction_r_0166) + ( 1.0 * reaction_r_0222) + ( 1.0 * reaction_r_0227) + ( 1.0 * reaction_r_0367) + (-1.0 * reaction_r_0388) + ( 2.0 * reaction_r_0436) + (-1.0 * reaction_r_0489) + ( 1.0 * reaction_r_0499) + ( 1.0 * reaction_r_0739) + (-1.0 * reaction_r_0755) + ( 1.0 * reaction_r_0788) + ( 1.0 * reaction_r_0806) + ( 1.0 * reaction_r_1021) + ( 1.0 * reaction_r_1064) + ( 1.0 * reaction_r_1068) + ( 1.0 * reaction_r_1123) + ( 1.0 * reaction_r_1124) + (-1.0 * reaction_r_1141) + ( 1.0 * reaction_r_1201) + ( 1.0 * reaction_r_1224) + ( 1.0 * reaction_r_1225) + ( 1.0 * reaction_r_1245) + ( 1.0 * reaction_r_1251) + ( 1.0 * reaction_r_1255) + ( 1.0 * reaction_r_1346) + ( 4.0 * reaction_r_1421) + (-1.0 * reaction_r_1551));
	
% Species:   id = s_0546, name = Co2+, affected by kineticLaw
	xdot(161) = (1/(compartment_cell))*(( 1.0 * reaction_r_1557) + (-2.5E-5 * reaction_r_2584));
	
% Species:   id = s_0555, name = Coenzyme A, affected by kineticLaw
	xdot(162) = (1/(compartment_cell))*(( 1.0 * reaction_r_0067) + ( 1.0 * reaction_r_0147) + (-1.0 * reaction_r_0224) + ( 1.0 * reaction_r_0230) + ( 1.0 * reaction_r_0231) + ( 1.0 * reaction_r_0232) + ( 1.0 * reaction_r_0233) + ( 1.0 * reaction_r_0234) + ( 1.0 * reaction_r_0235) + ( 1.0 * reaction_r_0236) + ( 1.0 * reaction_r_0428) + ( 1.0 * reaction_r_0488) + ( 1.0 * reaction_r_0579) + ( 1.0 * reaction_r_0580) + ( 1.0 * reaction_r_0581) + ( 1.0 * reaction_r_0658) + (-1.0 * reaction_r_0724) + ( 1.0 * reaction_r_0771) + ( 1.0 * reaction_r_0935) + ( 1.0 * reaction_r_0999) + (-1.0 * reaction_r_1218) + (-1.0 * reaction_r_1251) + (-1.0 * reaction_r_1252) + (-1.0 * reaction_r_1255) + ( 1.0 * reaction_r_1301) + (-1.0 * reaction_r_1315) + ( 1.0 * reaction_r_1338) + (-5.76E-4 * reaction_r_2584));
	
% Species:   id = s_0565, name = Coproporphyrinogen III, affected by kineticLaw
	xdot(163) = (1/(compartment_cell))*((-1.0 * reaction_r_0436) + ( 1.0 * reaction_r_1421));
	
% Species:   id = s_0574, name = Crotonoyl-CoA, affected by kineticLaw
	xdot(164) = (1/(compartment_cell))*(( 1.0 * reaction_r_0120) + (-1.0 * reaction_r_0266));
	
% Species:   id = s_0575, name = CTP, affected by kineticLaw
	xdot(165) = (1/(compartment_cell))*((-1.0 * reaction_r_0054) + (-1.0 * reaction_r_0105) + (-1.0 * reaction_r_0418) + (-1.0 * reaction_r_0419) + ( 1.0 * reaction_r_0440) + ( 1.0 * reaction_r_1039) + (-1.0 * reaction_r_1200) + (-1.0 * reaction_r_1277) + (-0.1335 * reaction_r_2584));
	
% Species:   id = s_0579, name = Cu2+, affected by kineticLaw
	xdot(166) = (1/(compartment_cell))*(( 1.0 * reaction_r_0384) + ( 1.0 * reaction_r_0964) + (-1.0 * reaction_r_0968) + ( 1.0 * reaction_r_1565) + (-7.09E-4 * reaction_r_2584));
	
% Species:   id = s_0585, name = cyclic pyranopterin monophosphate, affected by kineticLaw
	xdot(167) = (1/(compartment_cell))*(( 1.0 * reaction_r_0445) + (-1.0 * reaction_r_0968));
	
% Species:   id = s_0599, name = D-4'-Phosphopantothenate, affected by kineticLaw
	xdot(168) = (1/(compartment_cell))*(( 1.0 * reaction_r_1075) + (-1.0 * reaction_r_1200));
	
% Species:   id = s_0600, name = D-Alanine, affected by kineticLaw
	xdot(169) = (1/(compartment_cell))*(( 1.0 * reaction_r_0310) + (-2.0 * reaction_r_0463) + ( 1.0 * reaction_r_0970));
	
% Species:   id = s_0603, name = D-Alanyl-D-alanine, affected by kineticLaw
	xdot(170) = (1/(compartment_cell))*(( 1.0 * reaction_r_0463) + (-1.0 * reaction_r_1401));
	
% Species:   id = s_0611, name = D-Arabinose 5-phosphate, affected by kineticLaw
	xdot(171) = (1/(compartment_cell))*((-1.0 * reaction_r_0100) + ( 1.0 * reaction_r_0355));
	
% Species:   id = s_0620, name = D-erythro-1-(Imidazol-4-yl)glycerol 3-phosphate, affected by kineticLaw
	xdot(172) = (1/(compartment_cell))*(( 1.0 * reaction_r_0784) + (-1.0 * reaction_r_0785));
	
% Species:   id = s_0621, name = D-Erythrose 4-phosphate, affected by kineticLaw
	xdot(173) = (1/(compartment_cell))*((-1.0 * reaction_r_0101) + (-1.0 * reaction_r_0574) + (-1.0 * reaction_r_1356) + ( 1.0 * reaction_r_1358));
	
% Species:   id = s_0622, name = D-Fructose, affected by kineticLaw
	xdot(174) = (1/(compartment_cell))*((-1.0 * reaction_r_0761) + ( 1.0 * reaction_r_1432) + (-1.0 * reaction_r_1714));
	
% Species:   id = s_0627, name = D-Fructose 6-phosphate, affected by kineticLaw
	xdot(175) = (1/(compartment_cell))*(( 1.0 * reaction_r_0664) + (-1.0 * reaction_r_0684) + ( 1.0 * reaction_r_0761) + (-1.0 * reaction_r_1356) + (-1.0 * reaction_r_1358) + ( 1.0 * reaction_r_1714));
	
% Species:   id = s_0653, name = D-Glucosamine 1-phosphate, affected by kineticLaw
	xdot(176) = (1/(compartment_cell))*((-1.0 * reaction_r_0658) + ( 1.0 * reaction_r_1150));
	
% Species:   id = s_0654, name = D-Glucosamine 6-phosphate, affected by kineticLaw
	xdot(177) = (1/(compartment_cell))*(( 1.0 * reaction_r_0684) + (-1.0 * reaction_r_1150));
	
% Species:   id = s_0657, name = D-Glucose, affected by kineticLaw
	xdot(178) = (1/(compartment_cell))*((-1.0 * reaction_r_0762) + (-1.0 * reaction_r_1432) + ( 1.0 * reaction_r_1621) + (-1.0 * reaction_r_1622));
	
% Species:   id = s_0663, name = D-Glucose 6-phosphate, affected by kineticLaw
	xdot(179) = (1/(compartment_cell))*((-1.0 * reaction_r_0660) + (-1.0 * reaction_r_0664) + ( 1.0 * reaction_r_0762) + ( 1.0 * reaction_r_1622));
	
% Species:   id = s_0671, name = D-Glutamate, affected by kineticLaw
	xdot(180) = (1/(compartment_cell))*(( 1.0 * reaction_r_0676) + (-1.0 * reaction_r_1399));
	
% Species:   id = s_0675, name = D-Glycerate 2-phosphate, affected by kineticLaw
	xdot(181) = (1/(compartment_cell))*((-1.0 * reaction_r_0538) + ( 1.0 * reaction_r_0697) + ( 1.0 * reaction_r_1153));
	
% Species:   id = s_0704, name = D-Ribulose 5-phosphate, affected by kineticLaw
	xdot(182) = (1/(compartment_cell))*((-1.0 * reaction_r_0092) + (-1.0 * reaction_r_0355) + (-1.0 * reaction_r_1284) + ( 1.0 * reaction_r_1285));
	
% Species:   id = s_0721, name = D-Xylulose 5-phosphate, affected by kineticLaw
	xdot(183) = (1/(compartment_cell))*((-1.0 * reaction_r_1285) + ( 1.0 * reaction_r_1357) + ( 1.0 * reaction_r_1358));
	
% Species:   id = s_0726, name = dATP, affected by kineticLaw
	xdot(184) = (1/(compartment_cell))*(( 1.0 * reaction_r_1276) + (-0.02617 * reaction_r_2584));
	
% Species:   id = s_0731, name = dCTP, affected by kineticLaw
	xdot(185) = (1/(compartment_cell))*(( 1.0 * reaction_r_1277) + (-0.02702 * reaction_r_2584));
	
% Species:   id = s_0732, name = Deamino-NAD+, affected by kineticLaw
	xdot(186) = (1/(compartment_cell))*((-1.0 * reaction_r_1008) + ( 1.0 * reaction_r_1019));
	
% Species:   id = s_0737, name = Decanoyl-CoA (n-C10:0CoA), affected by kineticLaw
	xdot(187) = (1/(compartment_cell))*((-1.0 * reaction_r_0232) + ( 1.0 * reaction_r_0267));
	
% Species:   id = s_0738, name = dehydroglycine, affected by kineticLaw
	xdot(188) = (1/(compartment_cell))*((-1.0 * reaction_r_1346) + ( 1.0 * reaction_r_1375));
	
% Species:   id = s_0754, name = Dephospho-CoA, affected by kineticLaw
	xdot(189) = (1/(compartment_cell))*((-1.0 * reaction_r_0488) + ( 1.0 * reaction_r_1074));
	
% Species:   id = s_0755, name = Dethiobiotin, affected by kineticLaw
	xdot(190) = (1/(compartment_cell))*((-1.0 * reaction_r_0383) + ( 1.0 * reaction_r_0489));
	
% Species:   id = s_0760, name = dGTP, affected by kineticLaw
	xdot(191) = (1/(compartment_cell))*(( 1.0 * reaction_r_1278) + (-0.02702 * reaction_r_2584));
	
% Species:   id = s_0765, name = Dihydroneopterin, affected by kineticLaw
	xdot(192) = (1/(compartment_cell))*((-1.0 * reaction_r_0507) + ( 1.0 * reaction_r_2310));
	
% Species:   id = s_0766, name = Dihydroneopterin monophosphate, affected by kineticLaw
	xdot(193) = (1/(compartment_cell))*(( 1.0 * reaction_r_0510) + (-1.0 * reaction_r_2310));
	
% Species:   id = s_0767, name = Dihydropteroate, affected by kineticLaw
	xdot(194) = (1/(compartment_cell))*((-1.0 * reaction_r_0505) + ( 1.0 * reaction_r_0515));
	
% Species:   id = s_0768, name = dihydrosirohydrochlorin, affected by kineticLaw
	xdot(195) = (1/(compartment_cell))*((-1.0 * reaction_r_1306) + ( 1.0 * reaction_r_1422));
	
% Species:   id = s_0772, name = Dihydroxyacetone phosphate, affected by kineticLaw
	xdot(196) = (1/(compartment_cell))*((-1.0 * reaction_r_0712) + (-1.0 * reaction_r_1259) + ( 1.0 * reaction_r_1363));
	
% Species:   id = s_0779, name = Dimethylallyl diphosphate, affected by kineticLaw
	xdot(197) = (1/(compartment_cell))*(( 1.0 * reaction_r_0014) + (-1.0 * reaction_r_0522));
	
% Species:   id = s_0783, name = Diphosphate, affected by kineticLaw
	xdot(198) = (1/(compartment_cell))*(( 1.0 * reaction_r_0054) + ( 1.0 * reaction_r_0105) + ( 1.0 * reaction_r_0257) + ( 1.0 * reaction_r_0259) + ( 1.0 * reaction_r_0260) + ( 1.0 * reaction_r_0348) + ( 1.0 * reaction_r_0361) + ( 1.0 * reaction_r_0365) + ( 1.0 * reaction_r_0374) + ( 1.0 * reaction_r_0385) + ( 1.0 * reaction_r_0386) + ( 1.0 * reaction_r_0418) + ( 1.0 * reaction_r_0419) + ( 1.0 * reaction_r_0445) + ( 1.0 * reaction_r_0510) + ( 1.0 * reaction_r_0515) + ( 1.0 * reaction_r_0522) + ( 1.0 * reaction_r_0533) + ( 1.0 * reaction_r_0611) + ( 1.0 * reaction_r_0655) + ( 1.0 * reaction_r_0682) + ( 1.0 * reaction_r_0687) + ( 1.0 * reaction_r_0741) + ( 1.0 * reaction_r_0745) + ( 1.0 * reaction_r_0775) + ( 1.0 * reaction_r_0951) + ( 1.0 * reaction_r_0965) + ( 1.0 * reaction_r_0969) + ( 1.0 * reaction_r_1008) + ( 1.0 * reaction_r_1019) + ( 1.0 * reaction_r_1021) + ( 5.0 * reaction_r_1063) + ( 1.0 * reaction_r_1067) + ( 1.0 * reaction_r_1074) + ( 1.0 * reaction_r_1076) + ( 1.0 * reaction_r_1200) + ( 1.0 * reaction_r_1205) + (-1.0 * reaction_r_1222) + ( 1.0 * reaction_r_1329) + ( 1.0 * reaction_r_1344) + ( 1.0 * reaction_r_1346) + ( 1.0 * reaction_r_1392) + ( 8.0 * reaction_r_1410) + ( 0.7739 * reaction_r_2584));
	
% Species:   id = s_0785, name = Dodecanoate (n-C12:0), affected by kineticLaw
	xdot(199) = (1/(compartment_cell))*((-1.0 * reaction_r_0257) + ( 1.0 * reaction_r_0579));
	
% Species:   id = s_0789, name = Dodecanoyl-ACP (n-C12:0ACP), affected by kineticLaw
	xdot(200) = (1/(compartment_cell))*((-1.0 * reaction_r_0166) + ( 1.0 * reaction_r_0257));
	
% Species:   id = s_0790, name = Dodecanoyl-CoA (n-C12:0CoA), affected by kineticLaw
	xdot(201) = (1/(compartment_cell))*((-1.0 * reaction_r_0233) + ( 1.0 * reaction_r_0268) + (-1.0 * reaction_r_0579));
	
% Species:   id = s_0795, name = dTDP, affected by kineticLaw
	xdot(202) = (1/(compartment_cell))*(( 1.0 * reaction_r_0532) + (-1.0 * reaction_r_1043));
	
% Species:   id = s_0802, name = dTMP, affected by kineticLaw
	xdot(203) = (1/(compartment_cell))*((-1.0 * reaction_r_0532) + ( 1.0 * reaction_r_1353));
	
% Species:   id = s_0805, name = dTTP, affected by kineticLaw
	xdot(204) = (1/(compartment_cell))*(( 1.0 * reaction_r_1043) + (-0.02617 * reaction_r_2584));
	
% Species:   id = s_0807, name = dUMP, affected by kineticLaw
	xdot(205) = (1/(compartment_cell))*(( 1.0 * reaction_r_0533) + (-1.0 * reaction_r_1353));
	
% Species:   id = s_0810, name = dUTP, affected by kineticLaw
	xdot(206) = (1/(compartment_cell))*((-1.0 * reaction_r_0533) + ( 1.0 * reaction_r_1279));
	
% Species:   id = s_0812, name = Enoylglutaryl-[acyl-carrier protein] methyl ester, affected by kineticLaw
	xdot(207) = (1/(compartment_cell))*(( 1.0 * reaction_r_0145) + (-1.0 * reaction_r_0563));
	
% Species:   id = s_0813, name = Enoylpimeloyl-[acyl-carrier protein] methyl ester, affected by kineticLaw
	xdot(208) = (1/(compartment_cell))*(( 1.0 * reaction_r_0148) + (-1.0 * reaction_r_0564));
	
% Species:   id = s_0826, name = Farnesyl diphosphate, affected by kineticLaw
	xdot(209) = (1/(compartment_cell))*(( 1.0 * reaction_r_0655) + (-1.0 * reaction_r_1063) + (-1.0 * reaction_r_1410));
	
% Species:   id = s_0838, name = Fe2+, affected by kineticLaw
	xdot(210) = (1/(compartment_cell))*((-1.0 * reaction_r_0602) + (-2.0 * reaction_r_0797) + (-2.0 * reaction_r_0798) + (-1.0 * reaction_r_1307) + ( 1.0 * reaction_r_1792) + (-0.006715 * reaction_r_2584));
	
% Species:   id = s_0841, name = Fe3+, affected by kineticLaw
	xdot(211) = (1/(compartment_cell))*(( 1.0 * reaction_r_1793) + (-0.007808 * reaction_r_2584));
	
% Species:   id = s_0859, name = Flavin adenine dinucleotide oxidized, affected by kineticLaw
	xdot(212) = (1/(compartment_cell))*(( 1.0 * reaction_r_0266) + ( 1.0 * reaction_r_0267) + ( 1.0 * reaction_r_0268) + ( 1.0 * reaction_r_0269) + ( 1.0 * reaction_r_0270) + ( 1.0 * reaction_r_0272) + ( 1.0 * reaction_r_0273) + (-1.0 * reaction_r_0576) + ( 1.0 * reaction_r_0611) + ( 1.0 * reaction_r_0797) + ( 1.0 * reaction_r_0798) + ( 1.0 * reaction_r_0800) + (-2.23E-4 * reaction_r_2584));
	
% Species:   id = s_0860, name = Flavin adenine dinucleotide reduced, affected by kineticLaw
	xdot(213) = (1/(compartment_cell))*((-1.0 * reaction_r_0266) + (-1.0 * reaction_r_0267) + (-1.0 * reaction_r_0268) + (-1.0 * reaction_r_0269) + (-1.0 * reaction_r_0270) + (-1.0 * reaction_r_0272) + (-1.0 * reaction_r_0273) + ( 1.0 * reaction_r_0576) + (-1.0 * reaction_r_0797) + (-1.0 * reaction_r_0798) + (-1.0 * reaction_r_0800));
	
% Species:   id = s_0861, name = Flavodoxin reduced, affected by kineticLaw
	xdot(214) = (1/(compartment_cell))*((-2.0 * reaction_r_0084) + ( 2.0 * reaction_r_1255) + (-2.0 * reaction_r_1276) + (-2.0 * reaction_r_1277) + (-2.0 * reaction_r_1278) + (-2.0 * reaction_r_1279));
	
% Species:   id = s_0862, name = flavodoxin semi oxidized, affected by kineticLaw
	xdot(215) = (1/(compartment_cell))*(( 2.0 * reaction_r_0084) + (-2.0 * reaction_r_1255) + ( 2.0 * reaction_r_1276) + ( 2.0 * reaction_r_1277) + ( 2.0 * reaction_r_1278) + ( 2.0 * reaction_r_1279));
	
% Species:   id = s_0863, name = FMN, affected by kineticLaw
	xdot(216) = (1/(compartment_cell))*((-1.0 * reaction_r_0611) + ( 1.0 * reaction_r_1264));
	
% Species:   id = s_0867, name = Formate, affected by kineticLaw
	xdot(217) = (1/(compartment_cell))*(( 1.0 * reaction_r_0092) + ( 2.0 * reaction_r_0179) + (-1.0 * reaction_r_0622) + (-1.0 * reaction_r_0648) + ( 1.0 * reaction_r_0744) + ( 1.0 * reaction_r_0745) + ( 1.0 * reaction_r_1252));
	
% Species:   id = s_0875, name = Fumarate, affected by kineticLaw
	xdot(218) = (1/(compartment_cell))*(( 1.0 * reaction_r_0302) + ( 1.0 * reaction_r_0304) + ( 1.0 * reaction_r_0360) + (-1.0 * reaction_r_0632));
	
% Species:   id = s_0896, name = GDP, affected by kineticLaw
	xdot(219) = (1/(compartment_cell))*(( 1.0 * reaction_r_0303) + ( 1.0 * reaction_r_0754) + (-1.0 * reaction_r_1045) + ( 1.0 * reaction_r_1329));
	
% Species:   id = s_0903, name = Geranyl diphosphate, affected by kineticLaw
	xdot(220) = (1/(compartment_cell))*(( 1.0 * reaction_r_0522) + (-1.0 * reaction_r_0655));
	
% Species:   id = s_0910, name = Glutaryl-[acyl-carrier protein] methyl ester, affected by kineticLaw
	xdot(221) = (1/(compartment_cell))*((-1.0 * reaction_r_0150) + ( 1.0 * reaction_r_0563));
	
% Species:   id = s_0913, name = Glyceraldehyde 3-phosphate, affected by kineticLaw
	xdot(222) = (1/(compartment_cell))*((-1.0 * reaction_r_0009) + ( 1.0 * reaction_r_0056) + (-1.0 * reaction_r_0695) + ( 1.0 * reaction_r_1356) + (-1.0 * reaction_r_1357) + (-1.0 * reaction_r_1358) + (-1.0 * reaction_r_1363) + ( 1.0 * reaction_r_1367));
	
% Species:   id = s_0920, name = Glycerol 3-phosphate, affected by kineticLaw
	xdot(223) = (1/(compartment_cell))*((-1.0 * reaction_r_0706) + (-1.0 * reaction_r_0707) + ( 1.0 * reaction_r_0712));
	
% Species:   id = s_0929, name = Glycine, affected by kineticLaw
	xdot(224) = (1/(compartment_cell))*(( 1.0 * reaction_r_0724) + ( 1.0 * reaction_r_0726) + (-1.0 * reaction_r_1214) + ( 1.0 * reaction_r_1348) + (-0.6126 * reaction_r_2584));
	
% Species:   id = s_0936, name = Glycolaldehyde, affected by kineticLaw
	xdot(225) = (1/(compartment_cell))*(( 1.0 * reaction_r_0507) + (-1.0 * reaction_r_0731));
	
% Species:   id = s_0937, name = Glycolate, affected by kineticLaw
	xdot(226) = (1/(compartment_cell))*(( 1.0 * reaction_r_0731) + (-1.0 * reaction_r_0734) + (-1.0 * reaction_r_0735));
	
% Species:   id = s_0941, name = Glyoxylate, affected by kineticLaw
	xdot(227) = (1/(compartment_cell))*(( 1.0 * reaction_r_0734) + ( 1.0 * reaction_r_0735) + (-2.0 * reaction_r_0739));
	
% Species:   id = s_0942, name = GMP, affected by kineticLaw
	xdot(228) = (1/(compartment_cell))*(( 1.0 * reaction_r_0741) + (-1.0 * reaction_r_0754));
	
% Species:   id = s_0945, name = GTP, affected by kineticLaw
	xdot(229) = (1/(compartment_cell))*((-1.0 * reaction_r_0303) + (-1.0 * reaction_r_0385) + (-1.0 * reaction_r_0386) + (-1.0 * reaction_r_0445) + (-1.0 * reaction_r_0744) + (-1.0 * reaction_r_0745) + ( 1.0 * reaction_r_1045) + (-1.0 * reaction_r_1278) + (-1.0 * reaction_r_1329) + (-0.2151 * reaction_r_2584));
	
% Species:   id = s_0971, name = Hexadecanoate (n-C16:0), affected by kineticLaw
	xdot(230) = (1/(compartment_cell))*((-1.0 * reaction_r_0259) + ( 1.0 * reaction_r_0580));
	
% Species:   id = s_0976, name = Hexadecenoate (n-C16:1), affected by kineticLaw
	xdot(231) = (1/(compartment_cell))*((-1.0 * reaction_r_0260) + ( 1.0 * reaction_r_0581));
	
% Species:   id = s_0979, name = Hexadecenoyl-CoA (n-C16:1CoA), affected by kineticLaw
	xdot(232) = (1/(compartment_cell))*(( 1.0 * reaction_r_0096) + (-1.0 * reaction_r_0581));
	
% Species:   id = s_0984, name = Hexanoyl-CoA (n-C6:0CoA), affected by kineticLaw
	xdot(233) = (1/(compartment_cell))*((-1.0 * reaction_r_0234) + ( 1.0 * reaction_r_0270));
	
% Species:   id = s_0991, name = Hydrogen peroxide, affected by kineticLaw
	xdot(234) = (1/(compartment_cell))*(( 1.0 * reaction_r_0829) + (-1.0 * reaction_r_0928));
	
% Species:   id = s_0994, name = Hydrogen sulfide, affected by kineticLaw
	xdot(235) = (1/(compartment_cell))*((-1.0 * reaction_r_0452) + ( 1.0 * reaction_r_1330));
	
% Species:   id = s_0998, name = Hydroxymethylbilane, affected by kineticLaw
	xdot(236) = (1/(compartment_cell))*(( 1.0 * reaction_r_0777) + (-1.0 * reaction_r_1423));
	
% Species:   id = s_1005, name = Iminoaspartate, affected by kineticLaw
	xdot(237) = (1/(compartment_cell))*(( 1.0 * reaction_r_0829) + (-1.0 * reaction_r_1259));
	
% Species:   id = s_1006, name = IMP, affected by kineticLaw
	xdot(238) = (1/(compartment_cell))*((-1.0 * reaction_r_0303) + ( 1.0 * reaction_r_0786) + (-1.0 * reaction_r_0787));
	
% Species:   id = s_1009, name = Indole, affected by kineticLaw
	xdot(239) = (1/(compartment_cell))*(( 1.0 * reaction_r_1367) + (-1.0 * reaction_r_1368));
	
% Species:   id = s_1017, name = IscS sulfur acceptor protein, affected by kineticLaw
	xdot(240) = (1/(compartment_cell))*(( 1.0 * reaction_r_0796) + ( 2.0 * reaction_r_0797) + ( 2.0 * reaction_r_0798) + (-1.0 * reaction_r_0802) + ( 1.0 * reaction_r_0963) + ( 1.0 * reaction_r_1346));
	
% Species:   id = s_1018, name = IscS with bound sulfur, affected by kineticLaw
	xdot(241) = (1/(compartment_cell))*((-1.0 * reaction_r_0796) + (-2.0 * reaction_r_0797) + (-2.0 * reaction_r_0798) + ( 1.0 * reaction_r_0802) + (-1.0 * reaction_r_0963) + (-1.0 * reaction_r_1346));
	
% Species:   id = s_1019, name = IscU scaffold protein, affected by kineticLaw
	xdot(242) = (1/(compartment_cell))*((-1.0 * reaction_r_0796) + (-1.0 * reaction_r_0797) + ( 1.0 * reaction_r_0799) + ( 1.0 * reaction_r_0801));
	
% Species:   id = s_1020, name = IscU with bound [2Fe-2S] cluster, affected by kineticLaw
	xdot(243) = (1/(compartment_cell))*(( 1.0 * reaction_r_0796) + ( 1.0 * reaction_r_0797) + (-1.0 * reaction_r_0798) + (-1.0 * reaction_r_0799));
	
% Species:   id = s_1021, name = IscU with bound [4Fe-4S] cluster, affected by kineticLaw
	xdot(244) = (1/(compartment_cell))*(( 1.0 * reaction_r_0800) + (-1.0 * reaction_r_0801));
	
% Species:   id = s_1022, name = IscU with two bound [2Fe-2S] clusters, affected by kineticLaw
	xdot(245) = (1/(compartment_cell))*(( 1.0 * reaction_r_0798) + (-1.0 * reaction_r_0800));
	
% Species:   id = s_1027, name = Isocitrate, affected by kineticLaw
	xdot(246) = (1/(compartment_cell))*(( 1.0 * reaction_r_0247) + (-1.0 * reaction_r_0806));
	
% Species:   id = s_1028, name = Isopentenyl diphosphate, affected by kineticLaw
	xdot(247) = (1/(compartment_cell))*(( 1.0 * reaction_r_0015) + (-1.0 * reaction_r_0522) + (-1.0 * reaction_r_0655) + (-5.0 * reaction_r_1063) + (-8.0 * reaction_r_1410));
	
% Species:   id = s_1033, name = KDO(2)-lipid IV(A), affected by kineticLaw
	xdot(248) = (1/(compartment_cell))*(( 1.0 * reaction_r_0103) + (-0.01946 * reaction_r_2584));
	
% Species:   id = s_1038, name = KDO-lipid IV(A), affected by kineticLaw
	xdot(249) = (1/(compartment_cell))*(( 1.0 * reaction_r_0102) + (-1.0 * reaction_r_0103));
	
% Species:   id = s_1040, name = L-2-Amino-3-oxobutanoate, affected by kineticLaw
	xdot(250) = (1/(compartment_cell))*((-1.0 * reaction_r_0724) + ( 1.0 * reaction_r_0848));
	
% Species:   id = s_1041, name = L-Alanine, affected by kineticLaw
	xdot(251) = (1/(compartment_cell))*((-1.0 * reaction_r_0222) + (-1.0 * reaction_r_0310) + ( 1.0 * reaction_r_0802) + ( 1.0 * reaction_r_0815) + (-1.0 * reaction_r_1397) + (-0.5137 * reaction_r_2584));
	
% Species:   id = s_1061, name = L-Arginine, affected by kineticLaw
	xdot(252) = (1/(compartment_cell))*(( 1.0 * reaction_r_0360) + (-0.2958 * reaction_r_2584));
	
% Species:   id = s_1068, name = L-Asparagine, affected by kineticLaw
	xdot(253) = (1/(compartment_cell))*(( 1.0 * reaction_r_0365) + (-0.2411 * reaction_r_2584));
	
% Species:   id = s_1072, name = L-Aspartate, affected by kineticLaw
	xdot(254) = (1/(compartment_cell))*((-1.0 * reaction_r_0303) + (-1.0 * reaction_r_0361) + (-1.0 * reaction_r_0365) + (-1.0 * reaction_r_0367) + (-1.0 * reaction_r_0368) + (-1.0 * reaction_r_0369) + ( 1.0 * reaction_r_0370) + (-1.0 * reaction_r_0829) + (-1.0 * reaction_r_1210) + (-0.2411 * reaction_r_2584));
	
% Species:   id = s_1075, name = L-Aspartate 4-semialdehyde, affected by kineticLaw
	xdot(255) = (1/(compartment_cell))*(( 1.0 * reaction_r_0371) + (-1.0 * reaction_r_0503) + (-1.0 * reaction_r_0769));
	
% Species:   id = s_1081, name = L-Citrulline, affected by kineticLaw
	xdot(256) = (1/(compartment_cell))*((-1.0 * reaction_r_0361) + ( 1.0 * reaction_r_1065));
	
% Species:   id = s_1082, name = L-Cystathionine, affected by kineticLaw
	xdot(257) = (1/(compartment_cell))*((-1.0 * reaction_r_0450) + ( 1.0 * reaction_r_1057));
	
% Species:   id = s_1083, name = L-Cysteine, affected by kineticLaw
	xdot(258) = (1/(compartment_cell))*(( 1.0 * reaction_r_0452) + (-1.0 * reaction_r_0802) + (-1.0 * reaction_r_1057) + (-1.0 * reaction_r_1200) + (-0.09158 * reaction_r_2584));
	
% Species:   id = s_1095, name = L-Glutamate, affected by kineticLaw
	xdot(259) = (1/(compartment_cell))*(( 1.0 * reaction_r_0181) + (-1.0 * reaction_r_0245) + ( 1.0 * reaction_r_0349) + (-1.0 * reaction_r_0370) + ( 1.0 * reaction_r_0440) + (-1.0 * reaction_r_0505) + (-1.0 * reaction_r_0673) + ( 1.0 * reaction_r_0675) + (-1.0 * reaction_r_0676) + ( 1.0 * reaction_r_0682) + (-1.0 * reaction_r_0683) + ( 1.0 * reaction_r_0684) + (-1.0 * reaction_r_0687) + ( 1.0 * reaction_r_0741) + (-1.0 * reaction_r_0765) + ( 1.0 * reaction_r_0784) + (-1.0 * reaction_r_0808) + (-1.0 * reaction_r_0815) + (-1.0 * reaction_r_0854) + (-1.0 * reaction_r_0999) + (-1.0 * reaction_r_1054) + (-1.0 * reaction_r_1081) + ( 1.0 * reaction_r_1212) + (-1.0 * reaction_r_1217) + (-1.0 * reaction_r_1318) + (-1.0 * reaction_r_1376) + (-1.0 * reaction_r_1425) + (-0.2632 * reaction_r_2584));
	
% Species:   id = s_1098, name = L-Glutamate 1-semialdehyde, affected by kineticLaw
	xdot(260) = (1/(compartment_cell))*((-1.0 * reaction_r_0678) + ( 1.0 * reaction_r_0686));
	
% Species:   id = s_1099, name = L-Glutamate 5-phosphate, affected by kineticLaw
	xdot(261) = (1/(compartment_cell))*(( 1.0 * reaction_r_0673) + (-1.0 * reaction_r_0679));
	
% Species:   id = s_1100, name = L-Glutamate 5-semialdehyde, affected by kineticLaw
	xdot(262) = (1/(compartment_cell))*(( 1.0 * reaction_r_0679) + (-1.0 * reaction_r_0835));
	
% Species:   id = s_1101, name = L-Glutamine, affected by kineticLaw
	xdot(263) = (1/(compartment_cell))*((-1.0 * reaction_r_0181) + (-1.0 * reaction_r_0349) + (-1.0 * reaction_r_0440) + (-1.0 * reaction_r_0682) + ( 1.0 * reaction_r_0683) + (-1.0 * reaction_r_0684) + (-1.0 * reaction_r_0741) + (-1.0 * reaction_r_0784) + (-1.0 * reaction_r_1212) + (-0.2632 * reaction_r_2584));
	
% Species:   id = s_1105, name = L-Glutamyl-tRNA(Glu), affected by kineticLaw
	xdot(264) = (1/(compartment_cell))*((-1.0 * reaction_r_0686) + ( 1.0 * reaction_r_0687));
	
% Species:   id = s_1106, name = L-Histidine, affected by kineticLaw
	xdot(265) = (1/(compartment_cell))*(( 1.0 * reaction_r_0763) + (-0.09474 * reaction_r_2584));
	
% Species:   id = s_1109, name = L-Histidinol, affected by kineticLaw
	xdot(266) = (1/(compartment_cell))*((-1.0 * reaction_r_0763) + ( 1.0 * reaction_r_0764));
	
% Species:   id = s_1110, name = L-Histidinol phosphate, affected by kineticLaw
	xdot(267) = (1/(compartment_cell))*((-1.0 * reaction_r_0764) + ( 1.0 * reaction_r_0765));
	
% Species:   id = s_1112, name = L-Homocysteine, affected by kineticLaw
	xdot(268) = (1/(compartment_cell))*(( 1.0 * reaction_r_0450) + (-1.0 * reaction_r_0954) + ( 1.0 * reaction_r_1291));
	
% Species:   id = s_1113, name = L-Homoserine, affected by kineticLaw
	xdot(269) = (1/(compartment_cell))*(( 1.0 * reaction_r_0769) + (-1.0 * reaction_r_0770) + (-1.0 * reaction_r_0771));
	
% Species:   id = s_1119, name = L-Isoleucine, affected by kineticLaw
	xdot(270) = (1/(compartment_cell))*(( 1.0 * reaction_r_0808) + (-0.2905 * reaction_r_2584));
	
% Species:   id = s_1127, name = L-Leucine, affected by kineticLaw
	xdot(271) = (1/(compartment_cell))*(( 1.0 * reaction_r_0854) + (-0.4505 * reaction_r_2584));
	
% Species:   id = s_1131, name = L-Lysine, affected by kineticLaw
	xdot(272) = (1/(compartment_cell))*(( 1.0 * reaction_r_0499) + (-0.3432 * reaction_r_2584));
	
% Species:   id = s_1138, name = L-Malate, affected by kineticLaw
	xdot(273) = (1/(compartment_cell))*(( 1.0 * reaction_r_0632) + (-1.0 * reaction_r_0925) + ( 1.0 * reaction_r_0928));
	
% Species:   id = s_1141, name = L-Methionine, affected by kineticLaw
	xdot(274) = (1/(compartment_cell))*(( 1.0 * reaction_r_0383) + (-1.0 * reaction_r_0951) + ( 1.0 * reaction_r_0954) + ( 1.0 * reaction_r_1375) + (-0.1537 * reaction_r_2584));
	
% Species:   id = s_1151, name = L-Phenylalanine, affected by kineticLaw
	xdot(275) = (1/(compartment_cell))*(( 1.0 * reaction_r_1081) + (-0.1853 * reaction_r_2584));
	
% Species:   id = s_1155, name = L-Proline, affected by kineticLaw
	xdot(276) = (1/(compartment_cell))*(( 1.0 * reaction_r_1250) + (-0.2211 * reaction_r_2584));
	
% Species:   id = s_1170, name = L-Serine, affected by kineticLaw
	xdot(277) = (1/(compartment_cell))*((-1.0 * reaction_r_0726) + (-1.0 * reaction_r_1130) + (-1.0 * reaction_r_1131) + ( 1.0 * reaction_r_1134) + (-1.0 * reaction_r_1301) + (-0.2158 * reaction_r_2584));
	
% Species:   id = s_1179, name = L-Threonine, affected by kineticLaw
	xdot(278) = (1/(compartment_cell))*((-1.0 * reaction_r_0847) + (-1.0 * reaction_r_0848) + (-1.0 * reaction_r_1348) + ( 1.0 * reaction_r_1349) + (-0.2537 * reaction_r_2584));
	
% Species:   id = s_1185, name = L-Tryptophan, affected by kineticLaw
	xdot(279) = (1/(compartment_cell))*(( 1.0 * reaction_r_1368) + (-0.05684 * reaction_r_2584));
	
% Species:   id = s_1189, name = L-Tyrosine, affected by kineticLaw
	xdot(280) = (1/(compartment_cell))*((-1.0 * reaction_r_1375) + ( 1.0 * reaction_r_1376) + (-0.1379 * reaction_r_2584));
	
% Species:   id = s_1193, name = L-Valine, affected by kineticLaw
	xdot(281) = (1/(compartment_cell))*(( 1.0 * reaction_r_1425) + (-0.4232 * reaction_r_2584));
	
% Species:   id = s_1204, name = Lipid A Disaccharide, affected by kineticLaw
	xdot(282) = (1/(compartment_cell))*(( 1.0 * reaction_r_0857) + (-1.0 * reaction_r_1337));
	
% Species:   id = s_1211, name = LL-2,6-Diaminoheptanedioate, affected by kineticLaw
	xdot(283) = (1/(compartment_cell))*((-1.0 * reaction_r_0500) + ( 1.0 * reaction_r_1316));
	
% Species:   id = s_1212, name = magnesium, affected by kineticLaw
	xdot(284) = (1/(compartment_cell))*(( 1.0 * reaction_r_1906) + (-0.008675 * reaction_r_2584));
	
% Species:   id = s_1216, name = Malonyl-[acyl-carrier protein], affected by kineticLaw
	xdot(285) = (1/(compartment_cell))*((-1.0 * reaction_r_0147) + (-1.0 * reaction_r_0150) + (-1.0 * reaction_r_0166) + ( 1.0 * reaction_r_0935));
	
% Species:   id = s_1217, name = Malonyl-CoA, affected by kineticLaw
	xdot(286) = (1/(compartment_cell))*(( 1.0 * reaction_r_0237) + (-1.0 * reaction_r_0934) + (-1.0 * reaction_r_0935));
	
% Species:   id = s_1218, name = malonyl-CoA methyl ester, affected by kineticLaw
	xdot(287) = (1/(compartment_cell))*((-1.0 * reaction_r_0147) + ( 1.0 * reaction_r_0934));
	
% Species:   id = s_1239, name = Menaquinol 8, affected by kineticLaw
	xdot(288) = (1/(compartment_cell))*(( 1.0 * reaction_r_0512) + ( 1.0 * reaction_r_0735) + (-1.0 * reaction_r_1581));
	
% Species:   id = s_1240, name = Menaquinone 8, affected by kineticLaw
	xdot(289) = (1/(compartment_cell))*((-1.0 * reaction_r_0512) + (-1.0 * reaction_r_0735) + ( 1.0 * reaction_r_1581));
	
% Species:   id = s_1242, name = meso-2,6-Diaminoheptanedioate, affected by kineticLaw
	xdot(290) = (1/(compartment_cell))*((-1.0 * reaction_r_0499) + ( 1.0 * reaction_r_0500) + (-1.0 * reaction_r_1400));
	
% Species:   id = s_1248, name = Methanol, affected by kineticLaw
	xdot(291) = (1/(compartment_cell))*(( 1.0 * reaction_r_1220) + (-1.0 * reaction_r_1939));
	
% Species:   id = s_1255, name = Mn2+, affected by kineticLaw
	xdot(292) = (1/(compartment_cell))*(( 1.0 * reaction_r_1923) + (-6.91E-4 * reaction_r_2584));
	
% Species:   id = s_1258, name = MoaD Protein with bound AMP, affected by kineticLaw
	xdot(293) = (1/(compartment_cell))*((-1.0 * reaction_r_0963) + ( 1.0 * reaction_r_0969));
	
% Species:   id = s_1259, name = MoaD Protein with carboxylate, affected by kineticLaw
	xdot(294) = (1/(compartment_cell))*(( 2.0 * reaction_r_0968) + (-1.0 * reaction_r_0969));
	
% Species:   id = s_1260, name = MoaD Protein with thiocarboxylate, affected by kineticLaw
	xdot(295) = (1/(compartment_cell))*(( 1.0 * reaction_r_0963) + (-2.0 * reaction_r_0968));
	
% Species:   id = s_1261, name = Molybdate, affected by kineticLaw
	xdot(296) = (1/(compartment_cell))*((-1.0 * reaction_r_0964) + ( 1.0 * reaction_r_1943) + (-7.0E-6 * reaction_r_2584));
	
% Species:   id = s_1264, name = molybdenum cofactor, affected by kineticLaw
	xdot(297) = (1/(compartment_cell))*((-1.0 * reaction_r_0384) + ( 1.0 * reaction_r_0964));
	
% Species:   id = s_1265, name = molybdopterin, affected by kineticLaw
	xdot(298) = (1/(compartment_cell))*((-1.0 * reaction_r_0965) + ( 1.0 * reaction_r_0968));
	
% Species:   id = s_1274, name = N(omega)-(L-Arginino)succinate, affected by kineticLaw
	xdot(299) = (1/(compartment_cell))*((-1.0 * reaction_r_0360) + ( 1.0 * reaction_r_0361));
	
% Species:   id = s_1277, name = N-((R)-4-Phosphopantothenoyl)-L-cysteine, affected by kineticLaw
	xdot(300) = (1/(compartment_cell))*(( 1.0 * reaction_r_1200) + (-1.0 * reaction_r_1201));
	
% Species:   id = s_1278, name = N-(5-Phospho-D-ribosyl)anthranilate, affected by kineticLaw
	xdot(301) = (1/(compartment_cell))*(( 1.0 * reaction_r_0348) + (-1.0 * reaction_r_1211));
	
% Species:   id = s_1287, name = N-Acetyl-D-glucosamine 1-phosphate, affected by kineticLaw
	xdot(302) = (1/(compartment_cell))*(( 1.0 * reaction_r_0658) + (-1.0 * reaction_r_1392));
	
% Species:   id = s_1302, name = N-Acetyl-L-glutamate, affected by kineticLaw
	xdot(303) = (1/(compartment_cell))*((-1.0 * reaction_r_0243) + ( 1.0 * reaction_r_0999));
	
% Species:   id = s_1303, name = N-Acetyl-L-glutamate 5-semialdehyde, affected by kineticLaw
	xdot(304) = (1/(compartment_cell))*((-1.0 * reaction_r_0245) + ( 1.0 * reaction_r_0996));
	
% Species:   id = s_1304, name = N-Acetyl-L-glutamyl 5-phosphate, affected by kineticLaw
	xdot(305) = (1/(compartment_cell))*(( 1.0 * reaction_r_0243) + (-1.0 * reaction_r_0996));
	
% Species:   id = s_1312, name = N-Carbamoyl-L-aspartate, affected by kineticLaw
	xdot(306) = (1/(compartment_cell))*(( 1.0 * reaction_r_0368) + (-1.0 * reaction_r_0511));
	
% Species:   id = s_1315, name = N-Succinyl-2-L-amino-6-oxoheptanedioate, affected by kineticLaw
	xdot(307) = (1/(compartment_cell))*((-1.0 * reaction_r_1318) + ( 1.0 * reaction_r_1338));
	
% Species:   id = s_1316, name = N-Succinyl-LL-2,6-diaminoheptanedioate, affected by kineticLaw
	xdot(308) = (1/(compartment_cell))*((-1.0 * reaction_r_1316) + ( 1.0 * reaction_r_1318));
	
% Species:   id = s_1318, name = N1-(5-Phospho-D-ribosyl)glycinamide, affected by kineticLaw
	xdot(309) = (1/(compartment_cell))*((-1.0 * reaction_r_0648) + ( 1.0 * reaction_r_1214));
	
% Species:   id = s_1321, name = N2-Acetyl-L-ornithine, affected by kineticLaw
	xdot(310) = (1/(compartment_cell))*((-1.0 * reaction_r_0244) + ( 1.0 * reaction_r_0245));
	
% Species:   id = s_1322, name = N2-Formyl-N1-(5-phospho-D-ribosyl)glycinamide, affected by kineticLaw
	xdot(311) = (1/(compartment_cell))*(( 1.0 * reaction_r_0648) + (-1.0 * reaction_r_1212));
	
% Species:   id = s_1327, name = N6-(1,2-Dicarboxyethyl)-AMP, affected by kineticLaw
	xdot(312) = (1/(compartment_cell))*(( 1.0 * reaction_r_0303) + (-1.0 * reaction_r_0304));
	
% Species:   id = s_1329, name = nickel, affected by kineticLaw
	xdot(313) = (1/(compartment_cell))*(( 1.0 * reaction_r_1968) + (-3.23E-4 * reaction_r_2584));
	
% Species:   id = s_1333, name = Nicotinamide adenine dinucleotide, affected by kineticLaw
	xdot(314) = (1/(compartment_cell))*(( 1.0 * reaction_r_0014) + ( 1.0 * reaction_r_0015) + ( 1.0 * reaction_r_0128) + ( 1.0 * reaction_r_0129) + ( 1.0 * reaction_r_0130) + ( 1.0 * reaction_r_0131) + ( 1.0 * reaction_r_0133) + ( 1.0 * reaction_r_0134) + ( 1.0 * reaction_r_0135) + (-1.0 * reaction_r_0139) + (-1.0 * reaction_r_0179) + ( 1.0 * reaction_r_0211) + (-1.0 * reaction_r_0224) + (-1.0 * reaction_r_0573) + (-1.0 * reaction_r_0574) + ( 1.0 * reaction_r_0576) + (-1.0 * reaction_r_0695) + (-1.0 * reaction_r_0731) + (-2.0 * reaction_r_0763) + (-1.0 * reaction_r_0787) + (-1.0 * reaction_r_0848) + (-1.0 * reaction_r_0925) + ( 1.0 * reaction_r_0963) + (-1.0 * reaction_r_1006) + ( 1.0 * reaction_r_1008) + (-1.0 * reaction_r_1151) + (-1.0 * reaction_r_1225) + (-1.0 * reaction_r_1245) + (-1.0 * reaction_r_1251) + (-1.0 * reaction_r_1306) + ( 1.0 * reaction_r_1335) + ( 1.0 * reaction_r_1962) + (-1.0 * reaction_r_2195) + (-1.0 * reaction_r_2519) + (-0.001831 * reaction_r_2584));
	
% Species:   id = s_1334, name = Nicotinamide adenine dinucleotide - reduced, affected by kineticLaw
	xdot(315) = (1/(compartment_cell))*((-1.0 * reaction_r_0014) + (-1.0 * reaction_r_0015) + (-1.0 * reaction_r_0128) + (-1.0 * reaction_r_0129) + (-1.0 * reaction_r_0130) + (-1.0 * reaction_r_0131) + (-1.0 * reaction_r_0133) + (-1.0 * reaction_r_0134) + (-1.0 * reaction_r_0135) + ( 1.0 * reaction_r_0139) + ( 1.0 * reaction_r_0179) + (-1.0 * reaction_r_0211) + ( 1.0 * reaction_r_0224) + ( 1.0 * reaction_r_0573) + ( 1.0 * reaction_r_0574) + (-1.0 * reaction_r_0576) + ( 1.0 * reaction_r_0695) + ( 1.0 * reaction_r_0731) + ( 2.0 * reaction_r_0763) + ( 1.0 * reaction_r_0787) + ( 1.0 * reaction_r_0848) + ( 1.0 * reaction_r_0925) + (-1.0 * reaction_r_0963) + ( 1.0 * reaction_r_1151) + ( 1.0 * reaction_r_1225) + ( 1.0 * reaction_r_1245) + ( 1.0 * reaction_r_1251) + ( 1.0 * reaction_r_1306) + (-1.0 * reaction_r_1335) + (-1.0 * reaction_r_1962) + ( 1.0 * reaction_r_2195) + ( 1.0 * reaction_r_2519));
	
% Species:   id = s_1335, name = Nicotinamide adenine dinucleotide phosphate, affected by kineticLaw
	xdot(316) = (1/(compartment_cell))*(( 1.0 * reaction_r_0011) + ( 1.0 * reaction_r_0063) + ( 1.0 * reaction_r_0146) + ( 1.0 * reaction_r_0149) + ( 1.0 * reaction_r_0154) + ( 1.0 * reaction_r_0212) + ( 1.0 * reaction_r_0371) + ( 1.0 * reaction_r_0502) + ( 1.0 * reaction_r_0504) + ( 1.0 * reaction_r_0563) + ( 1.0 * reaction_r_0564) + (-1.0 * reaction_r_0660) + ( 1.0 * reaction_r_0675) + ( 1.0 * reaction_r_0679) + ( 1.0 * reaction_r_0686) + ( 1.0 * reaction_r_0712) + ( 1.0 * reaction_r_0769) + (-1.0 * reaction_r_0806) + ( 1.0 * reaction_r_0811) + ( 1.0 * reaction_r_0812) + (-1.0 * reaction_r_0957) + ( 1.0 * reaction_r_0996) + ( 1.0 * reaction_r_1006) + ( 1.0 * reaction_r_1250) + ( 1.0 * reaction_r_1304) + ( 3.0 * reaction_r_1330) + ( 1.0 * reaction_r_1346) + ( 1.0 * reaction_r_1347) + ( 1.0 * reaction_r_1375) + ( 1.0 * reaction_r_1388) + (-1.0 * reaction_r_1962) + (-4.47E-4 * reaction_r_2584));
	
% Species:   id = s_1336, name = Nicotinamide adenine dinucleotide phosphate - reduced, affected by kineticLaw
	xdot(317) = (1/(compartment_cell))*((-1.0 * reaction_r_0011) + (-1.0 * reaction_r_0063) + (-1.0 * reaction_r_0146) + (-1.0 * reaction_r_0149) + (-1.0 * reaction_r_0154) + (-1.0 * reaction_r_0212) + (-1.0 * reaction_r_0371) + (-1.0 * reaction_r_0502) + (-1.0 * reaction_r_0504) + (-1.0 * reaction_r_0563) + (-1.0 * reaction_r_0564) + ( 1.0 * reaction_r_0660) + (-1.0 * reaction_r_0675) + (-1.0 * reaction_r_0679) + (-1.0 * reaction_r_0686) + (-1.0 * reaction_r_0712) + (-1.0 * reaction_r_0769) + ( 1.0 * reaction_r_0806) + (-1.0 * reaction_r_0811) + (-1.0 * reaction_r_0812) + ( 1.0 * reaction_r_0957) + (-1.0 * reaction_r_0996) + (-1.0 * reaction_r_1250) + (-1.0 * reaction_r_1304) + (-3.0 * reaction_r_1330) + (-1.0 * reaction_r_1346) + (-1.0 * reaction_r_1347) + (-1.0 * reaction_r_1375) + (-1.0 * reaction_r_1388) + ( 1.0 * reaction_r_1962));
	
% Species:   id = s_1340, name = Nicotinate D-ribonucleotide, affected by kineticLaw
	xdot(318) = (1/(compartment_cell))*((-1.0 * reaction_r_1019) + ( 1.0 * reaction_r_1021));
	
% Species:   id = s_1358, name = O-Acetyl-L-serine, affected by kineticLaw
	xdot(319) = (1/(compartment_cell))*((-1.0 * reaction_r_0452) + ( 1.0 * reaction_r_1301));
	
% Species:   id = s_1362, name = O-Phospho-4-hydroxy-L-threonine, affected by kineticLaw
	xdot(320) = (1/(compartment_cell))*(( 1.0 * reaction_r_1054) + (-1.0 * reaction_r_1245));
	
% Species:   id = s_1363, name = O-Phospho-L-homoserine, affected by kineticLaw
	xdot(321) = (1/(compartment_cell))*(( 1.0 * reaction_r_0770) + (-1.0 * reaction_r_1349));
	
% Species:   id = s_1364, name = O-Phospho-L-serine, affected by kineticLaw
	xdot(322) = (1/(compartment_cell))*((-1.0 * reaction_r_1134) + ( 1.0 * reaction_r_1217));
	
% Species:   id = s_1367, name = O-Succinyl-L-homoserine, affected by kineticLaw
	xdot(323) = (1/(compartment_cell))*(( 1.0 * reaction_r_0771) + (-1.0 * reaction_r_1057));
	
% Species:   id = s_1372, name = O2, affected by kineticLaw
	xdot(324) = (1/(compartment_cell))*((-1.0 * reaction_r_0436) + (-1.0 * reaction_r_0829) + ( 1.0 * reaction_r_0928) + (-1.5 * reaction_r_1230) + (-0.5 * reaction_r_1581) + (-0.5 * reaction_r_1582) + ( 1.0 * reaction_r_2002));
	
% Species:   id = s_1390, name = Octanoyl-CoA (n-C8:0CoA), affected by kineticLaw
	xdot(325) = (1/(compartment_cell))*((-1.0 * reaction_r_0235) + ( 1.0 * reaction_r_0272));
	
% Species:   id = s_1391, name = Ornithine, affected by kineticLaw
	xdot(326) = (1/(compartment_cell))*(( 1.0 * reaction_r_0244) + (-1.0 * reaction_r_1065));
	
% Species:   id = s_1394, name = Orotate, affected by kineticLaw
	xdot(327) = (1/(compartment_cell))*(( 1.0 * reaction_r_0501) + ( 1.0 * reaction_r_0512) + (-1.0 * reaction_r_1067));
	
% Species:   id = s_1397, name = Orotidine 5'-phosphate, affected by kineticLaw
	xdot(328) = (1/(compartment_cell))*(( 1.0 * reaction_r_1067) + (-1.0 * reaction_r_1068));
	
% Species:   id = s_1399, name = Oxaloacetate, affected by kineticLaw
	xdot(329) = (1/(compartment_cell))*((-1.0 * reaction_r_0370) + (-1.0 * reaction_r_0428) + ( 1.0 * reaction_r_0925) + (-1.0 * reaction_r_0928) + ( 1.0 * reaction_r_1141));
	
% Species:   id = s_1406, name = Oxidized thioredoxin, affected by kineticLaw
	xdot(330) = (1/(compartment_cell))*(( 1.0 * reaction_r_1139) + (-1.0 * reaction_r_1347));
	
% Species:   id = s_1407, name = p-Cresol, affected by kineticLaw
	xdot(331) = (1/(compartment_cell))*(( 1.0 * reaction_r_1375) + (-1.0 * reaction_r_2537));
	
% Species:   id = s_1411, name = Palmitoyl-ACP (n-C16:0ACP), affected by kineticLaw
	xdot(332) = (1/(compartment_cell))*((-1.0 * reaction_r_0013) + ( 1.0 * reaction_r_0259) + (-1.0 * reaction_r_0706));
	
% Species:   id = s_1412, name = Palmitoyl-CoA (n-C16:0CoA), affected by kineticLaw
	xdot(333) = (1/(compartment_cell))*(( 1.0 * reaction_r_0269) + (-1.0 * reaction_r_0580));
	
% Species:   id = s_1413, name = Pantetheine 4'-phosphate, affected by kineticLaw
	xdot(334) = (1/(compartment_cell))*((-1.0 * reaction_r_1074) + ( 1.0 * reaction_r_1201));
	
% Species:   id = s_1429, name = Phenylpyruvate, affected by kineticLaw
	xdot(335) = (1/(compartment_cell))*((-1.0 * reaction_r_1081) + ( 1.0 * reaction_r_1224));
	
% Species:   id = s_1430, name = Phosphate, affected by kineticLaw
	xdot(336) = (1/(compartment_cell))*(( 1.0 * reaction_r_0085) + ( 1.0 * reaction_r_0099) + ( 1.0 * reaction_r_0100) + ( 1.0 * reaction_r_0101) + ( 1.0 * reaction_r_0106) + ( 1.0 * reaction_r_0175) + ( 1.0 * reaction_r_0237) + ( 1.0 * reaction_r_0303) + ( 1.0 * reaction_r_0368) + ( 1.0 * reaction_r_0371) + ( 1.0 * reaction_r_0425) + ( 1.0 * reaction_r_0440) + ( 1.0 * reaction_r_0463) + ( 1.0 * reaction_r_0489) + ( 1.0 * reaction_r_0505) + ( 1.0 * reaction_r_0622) + ( 1.0 * reaction_r_0648) + ( 1.0 * reaction_r_0679) + ( 1.0 * reaction_r_0683) + (-1.0 * reaction_r_0695) + ( 1.0 * reaction_r_0764) + ( 1.0 * reaction_r_0951) + ( 1.0 * reaction_r_0996) + ( 1.0 * reaction_r_1047) + ( 1.0 * reaction_r_1065) + ( 1.0 * reaction_r_1134) + ( 1.0 * reaction_r_1141) + ( 1.0 * reaction_r_1206) + ( 1.0 * reaction_r_1208) + ( 1.0 * reaction_r_1210) + ( 1.0 * reaction_r_1212) + ( 1.0 * reaction_r_1214) + ( 1.0 * reaction_r_1218) + ( 1.0 * reaction_r_1222) + ( 1.0 * reaction_r_1232) + ( 1.0 * reaction_r_1245) + ( 1.0 * reaction_r_1259) + ( 1.0 * reaction_r_1265) + ( 1.0 * reaction_r_1315) + ( 1.0 * reaction_r_1329) + ( 1.0 * reaction_r_1349) + ( 1.0 * reaction_r_1389) + ( 1.0 * reaction_r_1397) + ( 1.0 * reaction_r_1399) + ( 1.0 * reaction_r_1400) + ( 1.0 * reaction_r_1401) + ( 1.0 * reaction_r_1413) + (-1.0 * reaction_r_1521) + ( 1.0 * reaction_r_2011) + ( 2.0 * reaction_r_2195) + ( 1.0 * reaction_r_2310) + ( 1.0 * reaction_r_2521) + ( 53.95 * reaction_r_2584));
	
% Species:   id = s_1435, name = phosphatidylethanolamine (dihexadec-9enoyl, n-C16:1), affected by kineticLaw
	xdot(337) = (1/(compartment_cell))*(( 1.0 * reaction_r_1124) + (-0.07521 * reaction_r_2584));
	
% Species:   id = s_1437, name = phosphatidylethanolamine (dihexadecanoyl, n-C16:0), affected by kineticLaw
	xdot(338) = (1/(compartment_cell))*(( 1.0 * reaction_r_1123) + (-0.06382 * reaction_r_2584));
	
% Species:   id = s_1476, name = phosphatidylserine (dihexadec-9-enoyl, n-C16:1), affected by kineticLaw
	xdot(339) = (1/(compartment_cell))*((-1.0 * reaction_r_1124) + ( 1.0 * reaction_r_1131));
	
% Species:   id = s_1477, name = phosphatidylserine (dihexadecanoyl, n-C16:0), affected by kineticLaw
	xdot(340) = (1/(compartment_cell))*((-1.0 * reaction_r_1123) + ( 1.0 * reaction_r_1130));
	
% Species:   id = s_1484, name = Phosphoenolpyruvate, affected by kineticLaw
	xdot(341) = (1/(compartment_cell))*((-1.0 * reaction_r_0100) + (-1.0 * reaction_r_0101) + (-1.0 * reaction_r_0175) + ( 1.0 * reaction_r_0538) + (-1.0 * reaction_r_1141) + (-1.0 * reaction_r_1389) + (-1.0 * reaction_r_1622) + (-1.0 * reaction_r_1714));
	
% Species:   id = s_1491, name = Pimeloyl-[acyl-carrier protein], affected by kineticLaw
	xdot(342) = (1/(compartment_cell))*((-1.0 * reaction_r_0222) + ( 1.0 * reaction_r_1220));
	
% Species:   id = s_1492, name = Pimeloyl-[acyl-carrier protein] methyl ester, affected by kineticLaw
	xdot(343) = (1/(compartment_cell))*(( 1.0 * reaction_r_0564) + (-1.0 * reaction_r_1220));
	
% Species:   id = s_1493, name = Porphobilinogen, affected by kineticLaw
	xdot(344) = (1/(compartment_cell))*((-4.0 * reaction_r_0777) + ( 1.0 * reaction_r_1223));
	
% Species:   id = s_1494, name = potassium, affected by kineticLaw
	xdot(345) = (1/(compartment_cell))*(( 1.0 * reaction_r_2047) + (-0.1952 * reaction_r_2584));
	
% Species:   id = s_1497, name = Prephenate, affected by kineticLaw
	xdot(346) = (1/(compartment_cell))*(( 1.0 * reaction_r_0423) + (-1.0 * reaction_r_1224) + (-1.0 * reaction_r_1225));
	
% Species:   id = s_1508, name = Protoheme, affected by kineticLaw
	xdot(347) = (1/(compartment_cell))*(( 1.0 * reaction_r_0602) + (-2.23E-4 * reaction_r_2584));
	
% Species:   id = s_1511, name = Protoporphyrin, affected by kineticLaw
	xdot(348) = (1/(compartment_cell))*((-1.0 * reaction_r_0602) + ( 1.0 * reaction_r_1230));
	
% Species:   id = s_1512, name = Protoporphyrinogen IX, affected by kineticLaw
	xdot(349) = (1/(compartment_cell))*(( 1.0 * reaction_r_0436) + (-1.0 * reaction_r_1230));
	
% Species:   id = s_1522, name = Pyridoxal 5'-phosphate, affected by kineticLaw
	xdot(350) = (1/(compartment_cell))*(( 1.0 * reaction_r_2519) + (-2.23E-4 * reaction_r_2584));
	
% Species:   id = s_1530, name = Pyridoxine 5'-phosphate, affected by kineticLaw
	xdot(351) = (1/(compartment_cell))*(( 1.0 * reaction_r_1245) + (-1.0 * reaction_r_2519));
	
% Species:   id = s_1531, name = Pyruvate, affected by kineticLaw
	xdot(352) = (1/(compartment_cell))*((-1.0 * reaction_r_0009) + (-1.0 * reaction_r_0038) + ( 1.0 * reaction_r_0056) + ( 1.0 * reaction_r_0182) + (-2.0 * reaction_r_0227) + ( 1.0 * reaction_r_0349) + ( 1.0 * reaction_r_0424) + ( 1.0 * reaction_r_0450) + (-1.0 * reaction_r_0503) + (-1.0 * reaction_r_0815) + (-1.0 * reaction_r_1251) + (-1.0 * reaction_r_1252) + (-1.0 * reaction_r_1255) + (-1.0 * reaction_r_1368) + ( 1.0 * reaction_r_1622) + ( 1.0 * reaction_r_1714));
	
% Species:   id = s_1537, name = Quinolinate, affected by kineticLaw
	xdot(353) = (1/(compartment_cell))*((-1.0 * reaction_r_1021) + ( 1.0 * reaction_r_1259));
	
% Species:   id = s_1544, name = Reduced thioredoxin, affected by kineticLaw
	xdot(354) = (1/(compartment_cell))*((-1.0 * reaction_r_1139) + ( 1.0 * reaction_r_1347));
	
% Species:   id = s_1546, name = Riboflavin, affected by kineticLaw
	xdot(355) = (1/(compartment_cell))*((-1.0 * reaction_r_1264) + ( 1.0 * reaction_r_1266) + (-2.23E-4 * reaction_r_2584));
	
% Species:   id = s_1550, name = S-Adenosyl-4-methylthio-2-oxobutanoate, affected by kineticLaw
	xdot(356) = (1/(compartment_cell))*(( 1.0 * reaction_r_0297) + (-1.0 * reaction_r_2538));
	
% Species:   id = s_1551, name = S-Adenosyl-L-homocysteine, affected by kineticLaw
	xdot(357) = (1/(compartment_cell))*(( 1.0 * reaction_r_0934) + (-1.0 * reaction_r_1288) + ( 2.0 * reaction_r_1422));
	
% Species:   id = s_1552, name = S-Adenosyl-L-methionine, affected by kineticLaw
	xdot(358) = (1/(compartment_cell))*((-1.0 * reaction_r_0297) + (-1.0 * reaction_r_0383) + (-1.0 * reaction_r_0934) + ( 1.0 * reaction_r_0951) + (-1.0 * reaction_r_1375) + (-2.0 * reaction_r_1422) + (-2.23E-4 * reaction_r_2584));
	
% Species:   id = s_1558, name = S-Ribosyl-L-homocysteine, affected by kineticLaw
	xdot(359) = (1/(compartment_cell))*(( 1.0 * reaction_r_1288) + (-1.0 * reaction_r_1291));
	
% Species:   id = s_1561, name = Sedoheptulose 7-phosphate, affected by kineticLaw
	xdot(360) = (1/(compartment_cell))*(( 1.0 * reaction_r_1356) + (-1.0 * reaction_r_1357));
	
% Species:   id = s_1571, name = Shikimate, affected by kineticLaw
	xdot(361) = (1/(compartment_cell))*(( 1.0 * reaction_r_1304) + (-1.0 * reaction_r_1305));
	
% Species:   id = s_1574, name = Shikimate 5-phosphate, affected by kineticLaw
	xdot(362) = (1/(compartment_cell))*((-1.0 * reaction_r_0175) + ( 1.0 * reaction_r_1305));
	
% Species:   id = s_1577, name = Siroheme, affected by kineticLaw
	xdot(363) = (1/(compartment_cell))*(( 1.0 * reaction_r_1307) + (-2.23E-4 * reaction_r_2584));
	
% Species:   id = s_1578, name = sirohydrochlorin, affected by kineticLaw
	xdot(364) = (1/(compartment_cell))*(( 1.0 * reaction_r_1306) + (-1.0 * reaction_r_1307));
	
% Species:   id = s_1595, name = Succinate, affected by kineticLaw
	xdot(365) = (1/(compartment_cell))*(( 1.0 * reaction_r_1057) + (-1.0 * reaction_r_1315) + ( 1.0 * reaction_r_1316));
	
% Species:   id = s_1599, name = Succinyl-CoA, affected by kineticLaw
	xdot(366) = (1/(compartment_cell))*((-1.0 * reaction_r_0771) + ( 1.0 * reaction_r_1315) + (-1.0 * reaction_r_1338));
	
% Species:   id = s_1609, name = Sulfate, affected by kineticLaw
	xdot(367) = (1/(compartment_cell))*((-1.0 * reaction_r_1329) + ( 1.0 * reaction_r_2108) + (-0.004338 * reaction_r_2584));
	
% Species:   id = s_1612, name = Sulfite, affected by kineticLaw
	xdot(368) = (1/(compartment_cell))*(( 1.0 * reaction_r_1139) + (-1.0 * reaction_r_1330));
	
% Species:   id = s_1632, name = Tetradecanoyl-CoA (n-C14:0CoA), affected by kineticLaw
	xdot(369) = (1/(compartment_cell))*((-1.0 * reaction_r_0236) + ( 1.0 * reaction_r_0273));
	
% Species:   id = s_1643, name = Thiamin monophosphate, affected by kineticLaw
	xdot(370) = (1/(compartment_cell))*(( 1.0 * reaction_r_1344) + (-1.0 * reaction_r_1345));
	
% Species:   id = s_1644, name = Thiamine diphosphate, affected by kineticLaw
	xdot(371) = (1/(compartment_cell))*(( 1.0 * reaction_r_1345) + (-2.23E-4 * reaction_r_2584));
	
% Species:   id = s_1668, name = trans-Dec-2-enoyl-CoA, affected by kineticLaw
	xdot(372) = (1/(compartment_cell))*(( 1.0 * reaction_r_0121) + (-1.0 * reaction_r_0267));
	
% Species:   id = s_1670, name = trans-Dodec-2-enoyl-CoA, affected by kineticLaw
	xdot(373) = (1/(compartment_cell))*(( 1.0 * reaction_r_0122) + (-1.0 * reaction_r_0268));
	
% Species:   id = s_1672, name = trans-Hex-2-enoyl-CoA, affected by kineticLaw
	xdot(374) = (1/(compartment_cell))*(( 1.0 * reaction_r_0124) + (-1.0 * reaction_r_0270));
	
% Species:   id = s_1674, name = trans-Hexadec-2-enoyl-CoA, affected by kineticLaw
	xdot(375) = (1/(compartment_cell))*((-1.0 * reaction_r_0096) + ( 1.0 * reaction_r_0123) + (-1.0 * reaction_r_0269));
	
% Species:   id = s_1676, name = trans-Oct-2-enoyl-CoA, affected by kineticLaw
	xdot(376) = (1/(compartment_cell))*(( 1.0 * reaction_r_0126) + (-1.0 * reaction_r_0272));
	
% Species:   id = s_1680, name = trans-Tetradec-2-enoyl-CoA, affected by kineticLaw
	xdot(377) = (1/(compartment_cell))*(( 1.0 * reaction_r_0127) + (-1.0 * reaction_r_0273));
	
% Species:   id = s_1690, name = tRNA (Glu), affected by kineticLaw
	xdot(378) = (1/(compartment_cell))*(( 1.0 * reaction_r_0686) + (-1.0 * reaction_r_0687));
	
% Species:   id = s_1719, name = two disacharide linked murein units, pentapeptide crosslinked tetrapeptide (A2pm->D-ala) (middle of chain), affected by kineticLaw
	xdot(379) = (1/(compartment_cell))*(( 1.0 * reaction_r_0970) + (-0.01389 * reaction_r_2584));
	
% Species:   id = s_1725, name = two linked disacharide pentapeptide murein units (uncrosslinked, middle of chain), affected by kineticLaw
	xdot(380) = (1/(compartment_cell))*((-1.0 * reaction_r_0970) + ( 1.0 * reaction_r_1944));
	
% Species:   id = s_1731, name = Ubiquinol-8, affected by kineticLaw
	xdot(381) = (1/(compartment_cell))*(( 1.0 * reaction_r_0501) + ( 1.0 * reaction_r_0734) + (-1.0 * reaction_r_1582));
	
% Species:   id = s_1732, name = Ubiquinone-8, affected by kineticLaw
	xdot(382) = (1/(compartment_cell))*((-1.0 * reaction_r_0501) + (-1.0 * reaction_r_0734) + ( 1.0 * reaction_r_1582));
	
% Species:   id = s_1733, name = UDP, affected by kineticLaw
	xdot(383) = (1/(compartment_cell))*(( 1.0 * reaction_r_0857) + (-1.0 * reaction_r_1046) + ( 1.0 * reaction_r_1393) + ( 1.0 * reaction_r_1409));
	
% Species:   id = s_1734, name = UDP-2,3-bis(3-hydroxytetradecanoyl)glucosamine, affected by kineticLaw
	xdot(384) = (1/(compartment_cell))*((-1.0 * reaction_r_0857) + ( 1.0 * reaction_r_1378) + (-1.0 * reaction_r_1402));
	
% Species:   id = s_1735, name = UDP-3-O-(3-hydroxytetradecanoyl)-D-glucosamine, affected by kineticLaw
	xdot(385) = (1/(compartment_cell))*((-1.0 * reaction_r_1378) + ( 1.0 * reaction_r_1379));
	
% Species:   id = s_1736, name = UDP-3-O-(3-hydroxytetradecanoyl)-N-acetylglucosamine, affected by kineticLaw
	xdot(386) = (1/(compartment_cell))*((-1.0 * reaction_r_1379) + ( 1.0 * reaction_r_1391));
	
% Species:   id = s_1742, name = UDP-N-acetyl-3-O-(1-carboxyvinyl)-D-glucosamine, affected by kineticLaw
	xdot(387) = (1/(compartment_cell))*((-1.0 * reaction_r_1388) + ( 1.0 * reaction_r_1389));
	
% Species:   id = s_1745, name = UDP-N-acetyl-D-glucosamine, affected by kineticLaw
	xdot(388) = (1/(compartment_cell))*((-1.0 * reaction_r_1389) + (-1.0 * reaction_r_1391) + ( 1.0 * reaction_r_1392) + (-1.0 * reaction_r_1393));
	
% Species:   id = s_1750, name = UDP-N-acetylmuramate, affected by kineticLaw
	xdot(389) = (1/(compartment_cell))*(( 1.0 * reaction_r_1388) + (-1.0 * reaction_r_1397));
	
% Species:   id = s_1751, name = UDP-N-acetylmuramoyl-L-alanine, affected by kineticLaw
	xdot(390) = (1/(compartment_cell))*(( 1.0 * reaction_r_1397) + (-1.0 * reaction_r_1399));
	
% Species:   id = s_1752, name = UDP-N-acetylmuramoyl-L-alanyl-D-gamma-glutamyl-meso-2,6-diaminopimelate, affected by kineticLaw
	xdot(391) = (1/(compartment_cell))*(( 1.0 * reaction_r_1400) + (-1.0 * reaction_r_1401));
	
% Species:   id = s_1754, name = UDP-N-acetylmuramoyl-L-alanyl-D-glutamate, affected by kineticLaw
	xdot(392) = (1/(compartment_cell))*(( 1.0 * reaction_r_1399) + (-1.0 * reaction_r_1400));
	
% Species:   id = s_1755, name = UDP-N-acetylmuramoyl-L-alanyl-D-glutamyl-meso-2,6-diaminopimeloyl-D-alanyl-D-alanine, affected by kineticLaw
	xdot(393) = (1/(compartment_cell))*((-1.0 * reaction_r_1137) + ( 1.0 * reaction_r_1401));
	
% Species:   id = s_1762, name = UMP, affected by kineticLaw
	xdot(394) = (1/(compartment_cell))*(( 1.0 * reaction_r_1068) + ( 1.0 * reaction_r_1137) + ( 1.0 * reaction_r_1402) + (-1.0 * reaction_r_1409));
	
% Species:   id = s_1765, name = Undecaprenyl diphosphate, affected by kineticLaw
	xdot(395) = (1/(compartment_cell))*(( 1.0 * reaction_r_1410) + (-1.0 * reaction_r_1413) + ( 2.0 * reaction_r_1944) + (-5.5E-5 * reaction_r_2584));
	
% Species:   id = s_1768, name = Undecaprenyl phosphate, affected by kineticLaw
	xdot(396) = (1/(compartment_cell))*((-1.0 * reaction_r_1137) + ( 1.0 * reaction_r_1413));
	
% Species:   id = s_1776, name = Undecaprenyl-diphospho-N-acetylmuramoyl-(N-acetylglucosamine)-L-ala-D-glu-meso-2,6-diaminopimeloyl-D-ala-D-ala, affected by kineticLaw
	xdot(397) = (1/(compartment_cell))*(( 1.0 * reaction_r_1393) + (-2.0 * reaction_r_1944));
	
% Species:   id = s_1777, name = Undecaprenyl-diphospho-N-acetylmuramoyl-L-alanyl-D-glutamyl-meso-2,6-diaminopimeloyl-D-alanyl-D-alanine, affected by kineticLaw
	xdot(398) = (1/(compartment_cell))*(( 1.0 * reaction_r_1137) + (-1.0 * reaction_r_1393));
	
% Species:   id = s_1791, name = Uroporphyrinogen III, affected by kineticLaw
	xdot(399) = (1/(compartment_cell))*((-1.0 * reaction_r_1421) + (-1.0 * reaction_r_1422) + ( 1.0 * reaction_r_1423));
	
% Species:   id = s_1792, name = UTP, affected by kineticLaw
	xdot(400) = (1/(compartment_cell))*((-1.0 * reaction_r_0440) + ( 1.0 * reaction_r_1046) + (-1.0 * reaction_r_1279) + (-1.0 * reaction_r_1392) + (-0.1441 * reaction_r_2584));
	
% Species:   id = s_1799, name = Xanthosine 5'-phosphate, affected by kineticLaw
	xdot(401) = (1/(compartment_cell))*((-1.0 * reaction_r_0741) + ( 1.0 * reaction_r_0787));
	
% Species:   id = s_1804, name = Zinc, affected by kineticLaw
	xdot(402) = (1/(compartment_cell))*(( 1.0 * reaction_r_2167) + (-3.41E-4 * reaction_r_2584));
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


