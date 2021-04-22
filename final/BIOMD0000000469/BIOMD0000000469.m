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
% Model name = Smallbone2013 - E.coli metabolic model with linlog rate law
%
% is http://identifiers.org/biomodels.db/MODEL1302140001
% is http://identifiers.org/biomodels.db/BIOMD0000000469
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
% Parameter:   id =  zero_flux, name = zero_flux
	global_par_zero_flux=0.0;
% Parameter:   id =  ic0003, name = ic0003
	global_par_ic0003=0.1;
% Parameter:   id =  ic0004, name = ic0004
	global_par_ic0004=0.1;
% Parameter:   id =  ic0017, name = ic0017
	global_par_ic0017=0.1;
% Parameter:   id =  ic0018, name = ic0018
	global_par_ic0018=0.1;
% Parameter:   id =  ic0028, name = ic0028
	global_par_ic0028=0.1;
% Parameter:   id =  ic0029, name = ic0029
	global_par_ic0029=0.1;
% Parameter:   id =  ic0032, name = ic0032
	global_par_ic0032=0.1;
% Parameter:   id =  ic0033, name = ic0033
	global_par_ic0033=0.1;
% Parameter:   id =  ic0040, name = ic0040
	global_par_ic0040=0.1;
% Parameter:   id =  ic0041, name = ic0041
	global_par_ic0041=0.1;
% Parameter:   id =  ic0042, name = ic0042
	global_par_ic0042=0.1;
% Parameter:   id =  ic0043, name = ic0043
	global_par_ic0043=0.1;
% Parameter:   id =  ic0044, name = ic0044
	global_par_ic0044=0.1;
% Parameter:   id =  ic0045, name = ic0045
	global_par_ic0045=0.1;
% Parameter:   id =  ic0046, name = ic0046
	global_par_ic0046=0.1;
% Parameter:   id =  ic0047, name = ic0047
	global_par_ic0047=0.1;
% Parameter:   id =  ic0049, name = ic0049
	global_par_ic0049=0.1;
% Parameter:   id =  ic0050, name = ic0050
	global_par_ic0050=0.1;
% Parameter:   id =  ic0051, name = ic0051
	global_par_ic0051=0.1;
% Parameter:   id =  ic0052, name = ic0052
	global_par_ic0052=0.1;
% Parameter:   id =  ic0073, name = ic0073
	global_par_ic0073=0.1;
% Parameter:   id =  ic0075, name = ic0075
	global_par_ic0075=0.1;
% Parameter:   id =  ic0096, name = ic0096
	global_par_ic0096=0.1;
% Parameter:   id =  ic0097, name = ic0097
	global_par_ic0097=0.1;
% Parameter:   id =  ic0098, name = ic0098
	global_par_ic0098=0.1;
% Parameter:   id =  ic0099, name = ic0099
	global_par_ic0099=0.1;
% Parameter:   id =  ic0116, name = ic0116
	global_par_ic0116=0.1;
% Parameter:   id =  ic0119, name = ic0119
	global_par_ic0119=0.1;
% Parameter:   id =  ic0121, name = ic0121
	global_par_ic0121=0.1;
% Parameter:   id =  ic0123, name = ic0123
	global_par_ic0123=0.1;
% Parameter:   id =  ic0128, name = ic0128
	global_par_ic0128=0.1;
% Parameter:   id =  ic0133, name = ic0133
	global_par_ic0133=0.1;
% Parameter:   id =  ic0147, name = ic0147
	global_par_ic0147=0.1;
% Parameter:   id =  ic0148, name = ic0148
	global_par_ic0148=0.1;
% Parameter:   id =  ic0149, name = ic0149
	global_par_ic0149=0.1;
% Parameter:   id =  ic0155, name = ic0155
	global_par_ic0155=0.1;
% Parameter:   id =  ic0160, name = ic0160
	global_par_ic0160=0.1;
% Parameter:   id =  ic0162, name = ic0162
	global_par_ic0162=0.1;
% Parameter:   id =  ic0191, name = ic0191
	global_par_ic0191=0.1;
% Parameter:   id =  ic0193, name = ic0193
	global_par_ic0193=0.1;
% Parameter:   id =  ic0194, name = ic0194
	global_par_ic0194=0.1;
% Parameter:   id =  ic0195, name = ic0195
	global_par_ic0195=0.1;
% Parameter:   id =  ic0201, name = ic0201
	global_par_ic0201=0.1;
% Parameter:   id =  ic0203, name = ic0203
	global_par_ic0203=0.1;
% Parameter:   id =  ic0214, name = ic0214
	global_par_ic0214=0.1;
% Parameter:   id =  ic0217, name = ic0217
	global_par_ic0217=0.1;
% Parameter:   id =  ic0218, name = ic0218
	global_par_ic0218=0.1;
% Parameter:   id =  ic0226, name = ic0226
	global_par_ic0226=0.1;
% Parameter:   id =  ic0229, name = ic0229
	global_par_ic0229=0.1;
% Parameter:   id =  ic0231, name = ic0231
	global_par_ic0231=0.1;
% Parameter:   id =  ic0232, name = ic0232
	global_par_ic0232=0.1;
% Parameter:   id =  ic0233, name = ic0233
	global_par_ic0233=0.1;
% Parameter:   id =  ic0237, name = ic0237
	global_par_ic0237=0.1;
% Parameter:   id =  ic0252, name = ic0252
	global_par_ic0252=0.1;
% Parameter:   id =  ic0255, name = ic0255
	global_par_ic0255=0.1;
% Parameter:   id =  ic0262, name = ic0262
	global_par_ic0262=0.1;
% Parameter:   id =  ic0263, name = ic0263
	global_par_ic0263=0.1;
% Parameter:   id =  ic0265, name = ic0265
	global_par_ic0265=0.1;
% Parameter:   id =  ic0266, name = ic0266
	global_par_ic0266=0.1;
% Parameter:   id =  ic0267, name = ic0267
	global_par_ic0267=0.1;
% Parameter:   id =  ic0269, name = ic0269
	global_par_ic0269=0.1;
% Parameter:   id =  ic0270, name = ic0270
	global_par_ic0270=0.1;
% Parameter:   id =  ic0271, name = ic0271
	global_par_ic0271=0.1;
% Parameter:   id =  ic0272, name = ic0272
	global_par_ic0272=0.1;
% Parameter:   id =  ic0276, name = ic0276
	global_par_ic0276=0.1;
% Parameter:   id =  ic0277, name = ic0277
	global_par_ic0277=0.1;
% Parameter:   id =  ic0282, name = ic0282
	global_par_ic0282=0.1;
% Parameter:   id =  ic0283, name = ic0283
	global_par_ic0283=0.1;
% Parameter:   id =  ic0289, name = ic0289
	global_par_ic0289=0.1;
% Parameter:   id =  ic0290, name = ic0290
	global_par_ic0290=0.1;
% Parameter:   id =  ic0293, name = ic0293
	global_par_ic0293=0.1;
% Parameter:   id =  ic0295, name = ic0295
	global_par_ic0295=0.1;
% Parameter:   id =  ic0297, name = ic0297
	global_par_ic0297=0.1;
% Parameter:   id =  ic0299, name = ic0299
	global_par_ic0299=0.1;
% Parameter:   id =  ic0303, name = ic0303
	global_par_ic0303=0.1;
% Parameter:   id =  ic0304, name = ic0304
	global_par_ic0304=0.1;
% Parameter:   id =  ic0305, name = ic0305
	global_par_ic0305=0.1;
% Parameter:   id =  ic0306, name = ic0306
	global_par_ic0306=0.1;
% Parameter:   id =  ic0307, name = ic0307
	global_par_ic0307=0.1;
% Parameter:   id =  ic0308, name = ic0308
	global_par_ic0308=0.1;
% Parameter:   id =  ic0310, name = ic0310
	global_par_ic0310=0.1;
% Parameter:   id =  ic0311, name = ic0311
	global_par_ic0311=0.1;
% Parameter:   id =  ic0312, name = ic0312
	global_par_ic0312=0.1;
% Parameter:   id =  ic0313, name = ic0313
	global_par_ic0313=0.1;
% Parameter:   id =  ic0316, name = ic0316
	global_par_ic0316=0.1;
% Parameter:   id =  ic0318, name = ic0318
	global_par_ic0318=0.1;
% Parameter:   id =  ic0325, name = ic0325
	global_par_ic0325=0.1;
% Parameter:   id =  ic0328, name = ic0328
	global_par_ic0328=0.1;
% Parameter:   id =  ic0330, name = ic0330
	global_par_ic0330=0.1;
% Parameter:   id =  ic0331, name = ic0331
	global_par_ic0331=0.1;
% Parameter:   id =  ic0332, name = ic0332
	global_par_ic0332=0.1;
% Parameter:   id =  ic0333, name = ic0333
	global_par_ic0333=0.1;
% Parameter:   id =  ic0334, name = ic0334
	global_par_ic0334=0.1;
% Parameter:   id =  ic0335, name = ic0335
	global_par_ic0335=0.1;
% Parameter:   id =  ic0336, name = ic0336
	global_par_ic0336=0.1;
% Parameter:   id =  ic0337, name = ic0337
	global_par_ic0337=0.1;
% Parameter:   id =  ic0341, name = ic0341
	global_par_ic0341=0.1;
% Parameter:   id =  ic0342, name = ic0342
	global_par_ic0342=0.1;
% Parameter:   id =  ic0343, name = ic0343
	global_par_ic0343=0.1;
% Parameter:   id =  ic0344, name = ic0344
	global_par_ic0344=0.1;
% Parameter:   id =  ic0345, name = ic0345
	global_par_ic0345=0.1;
% Parameter:   id =  ic0346, name = ic0346
	global_par_ic0346=0.1;
% Parameter:   id =  ic0347, name = ic0347
	global_par_ic0347=0.1;
% Parameter:   id =  ic0352, name = ic0352
	global_par_ic0352=0.1;
% Parameter:   id =  ic0354, name = ic0354
	global_par_ic0354=0.1;
% Parameter:   id =  ic0359, name = ic0359
	global_par_ic0359=0.1;
% Parameter:   id =  ic0360, name = ic0360
	global_par_ic0360=0.1;
% Parameter:   id =  ic0361, name = ic0361
	global_par_ic0361=0.1;
% Parameter:   id =  ic0362, name = ic0362
	global_par_ic0362=0.1;
% Parameter:   id =  ic0364, name = ic0364
	global_par_ic0364=0.1;
% Parameter:   id =  ic0367, name = ic0367
	global_par_ic0367=0.1;
% Parameter:   id =  ic0368, name = ic0368
	global_par_ic0368=0.1;
% Parameter:   id =  ic0369, name = ic0369
	global_par_ic0369=0.1;
% Parameter:   id =  ic0370, name = ic0370
	global_par_ic0370=0.1;
% Parameter:   id =  ic0371, name = ic0371
	global_par_ic0371=0.1;
% Parameter:   id =  ic0372, name = ic0372
	global_par_ic0372=0.1;
% Parameter:   id =  ic0376, name = ic0376
	global_par_ic0376=0.1;
% Parameter:   id =  ic0377, name = ic0377
	global_par_ic0377=0.1;
% Parameter:   id =  ic0378, name = ic0378
	global_par_ic0378=0.1;
% Parameter:   id =  ic0380, name = ic0380
	global_par_ic0380=0.1;
% Parameter:   id =  ic0381, name = ic0381
	global_par_ic0381=0.1;
% Parameter:   id =  ic0384, name = ic0384
	global_par_ic0384=0.1;
% Parameter:   id =  ic0391, name = ic0391
	global_par_ic0391=0.1;
% Parameter:   id =  ic0393, name = ic0393
	global_par_ic0393=0.1;
% Parameter:   id =  ic0395, name = ic0395
	global_par_ic0395=0.1;
% Parameter:   id =  ic0397, name = ic0397
	global_par_ic0397=0.1;
% Parameter:   id =  ic0405, name = ic0405
	global_par_ic0405=0.1;
% Parameter:   id =  ic0408, name = ic0408
	global_par_ic0408=0.1;
% Parameter:   id =  ic0411, name = ic0411
	global_par_ic0411=0.1;
% Parameter:   id =  ic0412, name = ic0412
	global_par_ic0412=0.1;
% Parameter:   id =  ic0420, name = ic0420
	global_par_ic0420=0.1;
% Parameter:   id =  ic0421, name = ic0421
	global_par_ic0421=0.1;
% Parameter:   id =  ic0435, name = ic0435
	global_par_ic0435=0.1;
% Parameter:   id =  ic0445, name = ic0445
	global_par_ic0445=0.1;
% Parameter:   id =  ic0446, name = ic0446
	global_par_ic0446=0.1;
% Parameter:   id =  ic0451, name = ic0451
	global_par_ic0451=0.1;
% Parameter:   id =  ic0453, name = ic0453
	global_par_ic0453=1.0;
% Parameter:   id =  ic0454, name = ic0454
	global_par_ic0454=0.1;
% Parameter:   id =  ic0457, name = ic0457
	global_par_ic0457=0.1;
% Parameter:   id =  ic0467, name = ic0467
	global_par_ic0467=0.1;
% Parameter:   id =  ic0470, name = ic0470
	global_par_ic0470=0.1;
% Parameter:   id =  ic0474, name = ic0474
	global_par_ic0474=0.1;
% Parameter:   id =  ic0476, name = ic0476
	global_par_ic0476=0.1;
% Parameter:   id =  ic0479, name = ic0479
	global_par_ic0479=0.1;
% Parameter:   id =  ic0480, name = ic0480
	global_par_ic0480=0.1;
% Parameter:   id =  ic0481, name = ic0481
	global_par_ic0481=0.1;
% Parameter:   id =  ic0488, name = ic0488
	global_par_ic0488=0.1;
% Parameter:   id =  ic0493, name = ic0493
	global_par_ic0493=0.1;
% Parameter:   id =  ic0497, name = ic0497
	global_par_ic0497=0.1;
% Parameter:   id =  ic0499, name = ic0499
	global_par_ic0499=1.0;
% Parameter:   id =  ic0502, name = ic0502
	global_par_ic0502=0.1;
% Parameter:   id =  ic0510, name = ic0510
	global_par_ic0510=0.1;
% Parameter:   id =  ic0512, name = ic0512
	global_par_ic0512=0.1;
% Parameter:   id =  ic0513, name = ic0513
	global_par_ic0513=0.1;
% Parameter:   id =  ic0520, name = ic0520
	global_par_ic0520=0.1;
% Parameter:   id =  ic0522, name = ic0522
	global_par_ic0522=1.0;
% Parameter:   id =  ic0526, name = ic0526
	global_par_ic0526=0.1;
% Parameter:   id =  ic0530, name = ic0530
	global_par_ic0530=0.1;
% Parameter:   id =  ic0533, name = ic0533
	global_par_ic0533=0.1;
% Parameter:   id =  ic0536, name = ic0536
	global_par_ic0536=0.1;
% Parameter:   id =  ic0539, name = ic0539
	global_par_ic0539=0.1;
% Parameter:   id =  ic0542, name = ic0542
	global_par_ic0542=0.1;
% Parameter:   id =  ic0543, name = ic0543
	global_par_ic0543=0.1;
% Parameter:   id =  ic0546, name = ic0546
	global_par_ic0546=0.1;
% Parameter:   id =  ic0548, name = ic0548
	global_par_ic0548=1.0;
% Parameter:   id =  ic0555, name = ic0555
	global_par_ic0555=0.1;
% Parameter:   id =  ic0565, name = ic0565
	global_par_ic0565=0.1;
% Parameter:   id =  ic0574, name = ic0574
	global_par_ic0574=0.1;
% Parameter:   id =  ic0575, name = ic0575
	global_par_ic0575=0.1;
% Parameter:   id =  ic0579, name = ic0579
	global_par_ic0579=0.1;
% Parameter:   id =  ic0581, name = ic0581
	global_par_ic0581=1.0;
% Parameter:   id =  ic0585, name = ic0585
	global_par_ic0585=0.1;
% Parameter:   id =  ic0599, name = ic0599
	global_par_ic0599=0.1;
% Parameter:   id =  ic0600, name = ic0600
	global_par_ic0600=0.1;
% Parameter:   id =  ic0603, name = ic0603
	global_par_ic0603=0.1;
% Parameter:   id =  ic0611, name = ic0611
	global_par_ic0611=0.1;
% Parameter:   id =  ic0620, name = ic0620
	global_par_ic0620=0.1;
% Parameter:   id =  ic0621, name = ic0621
	global_par_ic0621=0.1;
% Parameter:   id =  ic0622, name = ic0622
	global_par_ic0622=0.1;
% Parameter:   id =  ic0627, name = ic0627
	global_par_ic0627=0.1;
% Parameter:   id =  ic0653, name = ic0653
	global_par_ic0653=0.1;
% Parameter:   id =  ic0654, name = ic0654
	global_par_ic0654=0.1;
% Parameter:   id =  ic0657, name = ic0657
	global_par_ic0657=0.1;
% Parameter:   id =  ic0659, name = ic0659
	global_par_ic0659=1.0;
% Parameter:   id =  ic0663, name = ic0663
	global_par_ic0663=0.1;
% Parameter:   id =  ic0671, name = ic0671
	global_par_ic0671=0.1;
% Parameter:   id =  ic0675, name = ic0675
	global_par_ic0675=0.1;
% Parameter:   id =  ic0704, name = ic0704
	global_par_ic0704=0.1;
% Parameter:   id =  ic0721, name = ic0721
	global_par_ic0721=0.1;
% Parameter:   id =  ic0726, name = ic0726
	global_par_ic0726=0.1;
% Parameter:   id =  ic0731, name = ic0731
	global_par_ic0731=0.1;
% Parameter:   id =  ic0732, name = ic0732
	global_par_ic0732=0.1;
% Parameter:   id =  ic0737, name = ic0737
	global_par_ic0737=0.1;
% Parameter:   id =  ic0738, name = ic0738
	global_par_ic0738=0.1;
% Parameter:   id =  ic0754, name = ic0754
	global_par_ic0754=0.1;
% Parameter:   id =  ic0755, name = ic0755
	global_par_ic0755=0.1;
% Parameter:   id =  ic0760, name = ic0760
	global_par_ic0760=0.1;
% Parameter:   id =  ic0765, name = ic0765
	global_par_ic0765=0.1;
% Parameter:   id =  ic0766, name = ic0766
	global_par_ic0766=0.1;
% Parameter:   id =  ic0767, name = ic0767
	global_par_ic0767=0.1;
% Parameter:   id =  ic0768, name = ic0768
	global_par_ic0768=0.1;
% Parameter:   id =  ic0772, name = ic0772
	global_par_ic0772=0.1;
% Parameter:   id =  ic0779, name = ic0779
	global_par_ic0779=0.1;
% Parameter:   id =  ic0783, name = ic0783
	global_par_ic0783=0.1;
% Parameter:   id =  ic0785, name = ic0785
	global_par_ic0785=0.1;
% Parameter:   id =  ic0789, name = ic0789
	global_par_ic0789=0.1;
% Parameter:   id =  ic0790, name = ic0790
	global_par_ic0790=0.1;
% Parameter:   id =  ic0795, name = ic0795
	global_par_ic0795=0.1;
% Parameter:   id =  ic0802, name = ic0802
	global_par_ic0802=0.1;
% Parameter:   id =  ic0805, name = ic0805
	global_par_ic0805=0.1;
% Parameter:   id =  ic0807, name = ic0807
	global_par_ic0807=0.1;
% Parameter:   id =  ic0810, name = ic0810
	global_par_ic0810=0.1;
% Parameter:   id =  ic0812, name = ic0812
	global_par_ic0812=0.1;
% Parameter:   id =  ic0813, name = ic0813
	global_par_ic0813=0.1;
% Parameter:   id =  ic0826, name = ic0826
	global_par_ic0826=0.1;
% Parameter:   id =  ic0838, name = ic0838
	global_par_ic0838=0.1;
% Parameter:   id =  ic0840, name = ic0840
	global_par_ic0840=1.0;
% Parameter:   id =  ic0841, name = ic0841
	global_par_ic0841=0.1;
% Parameter:   id =  ic0843, name = ic0843
	global_par_ic0843=1.0;
% Parameter:   id =  ic0859, name = ic0859
	global_par_ic0859=0.1;
% Parameter:   id =  ic0860, name = ic0860
	global_par_ic0860=0.1;
% Parameter:   id =  ic0861, name = ic0861
	global_par_ic0861=0.1;
% Parameter:   id =  ic0862, name = ic0862
	global_par_ic0862=0.1;
% Parameter:   id =  ic0863, name = ic0863
	global_par_ic0863=0.1;
% Parameter:   id =  ic0867, name = ic0867
	global_par_ic0867=0.1;
% Parameter:   id =  ic0875, name = ic0875
	global_par_ic0875=0.1;
% Parameter:   id =  ic0896, name = ic0896
	global_par_ic0896=0.1;
% Parameter:   id =  ic0903, name = ic0903
	global_par_ic0903=0.1;
% Parameter:   id =  ic0910, name = ic0910
	global_par_ic0910=0.1;
% Parameter:   id =  ic0913, name = ic0913
	global_par_ic0913=0.1;
% Parameter:   id =  ic0920, name = ic0920
	global_par_ic0920=0.1;
% Parameter:   id =  ic0929, name = ic0929
	global_par_ic0929=0.1;
% Parameter:   id =  ic0936, name = ic0936
	global_par_ic0936=0.1;
% Parameter:   id =  ic0937, name = ic0937
	global_par_ic0937=0.1;
% Parameter:   id =  ic0941, name = ic0941
	global_par_ic0941=0.1;
% Parameter:   id =  ic0942, name = ic0942
	global_par_ic0942=0.1;
% Parameter:   id =  ic0945, name = ic0945
	global_par_ic0945=0.1;
% Parameter:   id =  ic0971, name = ic0971
	global_par_ic0971=0.1;
% Parameter:   id =  ic0976, name = ic0976
	global_par_ic0976=0.1;
% Parameter:   id =  ic0979, name = ic0979
	global_par_ic0979=0.1;
% Parameter:   id =  ic0984, name = ic0984
	global_par_ic0984=0.1;
% Parameter:   id =  ic0991, name = ic0991
	global_par_ic0991=0.1;
% Parameter:   id =  ic0994, name = ic0994
	global_par_ic0994=0.1;
% Parameter:   id =  ic0998, name = ic0998
	global_par_ic0998=0.1;
% Parameter:   id =  ic1005, name = ic1005
	global_par_ic1005=0.1;
% Parameter:   id =  ic1006, name = ic1006
	global_par_ic1006=0.1;
% Parameter:   id =  ic1009, name = ic1009
	global_par_ic1009=0.1;
% Parameter:   id =  ic1017, name = ic1017
	global_par_ic1017=0.1;
% Parameter:   id =  ic1018, name = ic1018
	global_par_ic1018=0.1;
% Parameter:   id =  ic1019, name = ic1019
	global_par_ic1019=0.1;
% Parameter:   id =  ic1020, name = ic1020
	global_par_ic1020=0.1;
% Parameter:   id =  ic1021, name = ic1021
	global_par_ic1021=0.1;
% Parameter:   id =  ic1022, name = ic1022
	global_par_ic1022=0.1;
% Parameter:   id =  ic1027, name = ic1027
	global_par_ic1027=0.1;
% Parameter:   id =  ic1028, name = ic1028
	global_par_ic1028=0.1;
% Parameter:   id =  ic1033, name = ic1033
	global_par_ic1033=0.1;
% Parameter:   id =  ic1038, name = ic1038
	global_par_ic1038=0.1;
% Parameter:   id =  ic1040, name = ic1040
	global_par_ic1040=0.1;
% Parameter:   id =  ic1041, name = ic1041
	global_par_ic1041=0.1;
% Parameter:   id =  ic1061, name = ic1061
	global_par_ic1061=0.1;
% Parameter:   id =  ic1068, name = ic1068
	global_par_ic1068=0.1;
% Parameter:   id =  ic1072, name = ic1072
	global_par_ic1072=0.1;
% Parameter:   id =  ic1075, name = ic1075
	global_par_ic1075=0.1;
% Parameter:   id =  ic1081, name = ic1081
	global_par_ic1081=0.1;
% Parameter:   id =  ic1082, name = ic1082
	global_par_ic1082=0.1;
% Parameter:   id =  ic1083, name = ic1083
	global_par_ic1083=0.1;
% Parameter:   id =  ic1095, name = ic1095
	global_par_ic1095=0.1;
% Parameter:   id =  ic1098, name = ic1098
	global_par_ic1098=0.1;
% Parameter:   id =  ic1099, name = ic1099
	global_par_ic1099=0.1;
% Parameter:   id =  ic1100, name = ic1100
	global_par_ic1100=0.1;
% Parameter:   id =  ic1101, name = ic1101
	global_par_ic1101=0.1;
% Parameter:   id =  ic1105, name = ic1105
	global_par_ic1105=0.1;
% Parameter:   id =  ic1106, name = ic1106
	global_par_ic1106=0.1;
% Parameter:   id =  ic1109, name = ic1109
	global_par_ic1109=0.1;
% Parameter:   id =  ic1110, name = ic1110
	global_par_ic1110=0.1;
% Parameter:   id =  ic1112, name = ic1112
	global_par_ic1112=0.1;
% Parameter:   id =  ic1113, name = ic1113
	global_par_ic1113=0.1;
% Parameter:   id =  ic1119, name = ic1119
	global_par_ic1119=0.1;
% Parameter:   id =  ic1127, name = ic1127
	global_par_ic1127=0.1;
% Parameter:   id =  ic1131, name = ic1131
	global_par_ic1131=0.1;
% Parameter:   id =  ic1138, name = ic1138
	global_par_ic1138=0.1;
% Parameter:   id =  ic1141, name = ic1141
	global_par_ic1141=0.1;
% Parameter:   id =  ic1151, name = ic1151
	global_par_ic1151=0.1;
% Parameter:   id =  ic1155, name = ic1155
	global_par_ic1155=0.1;
% Parameter:   id =  ic1170, name = ic1170
	global_par_ic1170=0.1;
% Parameter:   id =  ic1179, name = ic1179
	global_par_ic1179=0.1;
% Parameter:   id =  ic1185, name = ic1185
	global_par_ic1185=0.1;
% Parameter:   id =  ic1189, name = ic1189
	global_par_ic1189=0.1;
% Parameter:   id =  ic1193, name = ic1193
	global_par_ic1193=0.1;
% Parameter:   id =  ic1204, name = ic1204
	global_par_ic1204=0.1;
% Parameter:   id =  ic1211, name = ic1211
	global_par_ic1211=0.1;
% Parameter:   id =  ic1212, name = ic1212
	global_par_ic1212=0.1;
% Parameter:   id =  ic1214, name = ic1214
	global_par_ic1214=1.0;
% Parameter:   id =  ic1216, name = ic1216
	global_par_ic1216=0.1;
% Parameter:   id =  ic1217, name = ic1217
	global_par_ic1217=0.1;
% Parameter:   id =  ic1218, name = ic1218
	global_par_ic1218=0.1;
% Parameter:   id =  ic1239, name = ic1239
	global_par_ic1239=0.1;
% Parameter:   id =  ic1240, name = ic1240
	global_par_ic1240=0.1;
% Parameter:   id =  ic1242, name = ic1242
	global_par_ic1242=0.1;
% Parameter:   id =  ic1248, name = ic1248
	global_par_ic1248=0.1;
% Parameter:   id =  ic1255, name = ic1255
	global_par_ic1255=0.1;
% Parameter:   id =  ic1257, name = ic1257
	global_par_ic1257=1.0;
% Parameter:   id =  ic1258, name = ic1258
	global_par_ic1258=0.1;
% Parameter:   id =  ic1259, name = ic1259
	global_par_ic1259=0.1;
% Parameter:   id =  ic1260, name = ic1260
	global_par_ic1260=0.1;
% Parameter:   id =  ic1261, name = ic1261
	global_par_ic1261=0.1;
% Parameter:   id =  ic1263, name = ic1263
	global_par_ic1263=1.0;
% Parameter:   id =  ic1264, name = ic1264
	global_par_ic1264=0.1;
% Parameter:   id =  ic1265, name = ic1265
	global_par_ic1265=0.1;
% Parameter:   id =  ic1274, name = ic1274
	global_par_ic1274=0.1;
% Parameter:   id =  ic1277, name = ic1277
	global_par_ic1277=0.1;
% Parameter:   id =  ic1278, name = ic1278
	global_par_ic1278=0.1;
% Parameter:   id =  ic1287, name = ic1287
	global_par_ic1287=0.1;
% Parameter:   id =  ic1302, name = ic1302
	global_par_ic1302=0.1;
% Parameter:   id =  ic1303, name = ic1303
	global_par_ic1303=0.1;
% Parameter:   id =  ic1304, name = ic1304
	global_par_ic1304=0.1;
% Parameter:   id =  ic1312, name = ic1312
	global_par_ic1312=0.1;
% Parameter:   id =  ic1315, name = ic1315
	global_par_ic1315=0.1;
% Parameter:   id =  ic1316, name = ic1316
	global_par_ic1316=0.1;
% Parameter:   id =  ic1318, name = ic1318
	global_par_ic1318=0.1;
% Parameter:   id =  ic1321, name = ic1321
	global_par_ic1321=0.1;
% Parameter:   id =  ic1322, name = ic1322
	global_par_ic1322=0.1;
% Parameter:   id =  ic1327, name = ic1327
	global_par_ic1327=0.1;
% Parameter:   id =  ic1329, name = ic1329
	global_par_ic1329=0.1;
% Parameter:   id =  ic1331, name = ic1331
	global_par_ic1331=1.0;
% Parameter:   id =  ic1333, name = ic1333
	global_par_ic1333=0.1;
% Parameter:   id =  ic1334, name = ic1334
	global_par_ic1334=0.1;
% Parameter:   id =  ic1335, name = ic1335
	global_par_ic1335=0.1;
% Parameter:   id =  ic1336, name = ic1336
	global_par_ic1336=0.1;
% Parameter:   id =  ic1340, name = ic1340
	global_par_ic1340=0.1;
% Parameter:   id =  ic1358, name = ic1358
	global_par_ic1358=0.1;
% Parameter:   id =  ic1362, name = ic1362
	global_par_ic1362=0.1;
% Parameter:   id =  ic1363, name = ic1363
	global_par_ic1363=0.1;
% Parameter:   id =  ic1364, name = ic1364
	global_par_ic1364=0.1;
% Parameter:   id =  ic1367, name = ic1367
	global_par_ic1367=0.1;
% Parameter:   id =  ic1372, name = ic1372
	global_par_ic1372=0.1;
% Parameter:   id =  ic1374, name = ic1374
	global_par_ic1374=1.0;
% Parameter:   id =  ic1390, name = ic1390
	global_par_ic1390=0.1;
% Parameter:   id =  ic1391, name = ic1391
	global_par_ic1391=0.1;
% Parameter:   id =  ic1394, name = ic1394
	global_par_ic1394=0.1;
% Parameter:   id =  ic1397, name = ic1397
	global_par_ic1397=0.1;
% Parameter:   id =  ic1399, name = ic1399
	global_par_ic1399=0.1;
% Parameter:   id =  ic1406, name = ic1406
	global_par_ic1406=0.1;
% Parameter:   id =  ic1407, name = ic1407
	global_par_ic1407=0.1;
% Parameter:   id =  ic1411, name = ic1411
	global_par_ic1411=0.1;
% Parameter:   id =  ic1412, name = ic1412
	global_par_ic1412=0.1;
% Parameter:   id =  ic1413, name = ic1413
	global_par_ic1413=0.1;
% Parameter:   id =  ic1429, name = ic1429
	global_par_ic1429=0.1;
% Parameter:   id =  ic1430, name = ic1430
	global_par_ic1430=0.1;
% Parameter:   id =  ic1432, name = ic1432
	global_par_ic1432=1.0;
% Parameter:   id =  ic1435, name = ic1435
	global_par_ic1435=0.1;
% Parameter:   id =  ic1437, name = ic1437
	global_par_ic1437=0.1;
% Parameter:   id =  ic1476, name = ic1476
	global_par_ic1476=0.1;
% Parameter:   id =  ic1477, name = ic1477
	global_par_ic1477=0.1;
% Parameter:   id =  ic1484, name = ic1484
	global_par_ic1484=0.1;
% Parameter:   id =  ic1491, name = ic1491
	global_par_ic1491=0.1;
% Parameter:   id =  ic1492, name = ic1492
	global_par_ic1492=0.1;
% Parameter:   id =  ic1493, name = ic1493
	global_par_ic1493=0.1;
% Parameter:   id =  ic1494, name = ic1494
	global_par_ic1494=0.1;
% Parameter:   id =  ic1496, name = ic1496
	global_par_ic1496=1.0;
% Parameter:   id =  ic1497, name = ic1497
	global_par_ic1497=0.1;
% Parameter:   id =  ic1508, name = ic1508
	global_par_ic1508=0.1;
% Parameter:   id =  ic1511, name = ic1511
	global_par_ic1511=0.1;
% Parameter:   id =  ic1512, name = ic1512
	global_par_ic1512=0.1;
% Parameter:   id =  ic1522, name = ic1522
	global_par_ic1522=0.1;
% Parameter:   id =  ic1530, name = ic1530
	global_par_ic1530=0.1;
% Parameter:   id =  ic1531, name = ic1531
	global_par_ic1531=0.1;
% Parameter:   id =  ic1537, name = ic1537
	global_par_ic1537=0.1;
% Parameter:   id =  ic1544, name = ic1544
	global_par_ic1544=0.1;
% Parameter:   id =  ic1546, name = ic1546
	global_par_ic1546=0.1;
% Parameter:   id =  ic1550, name = ic1550
	global_par_ic1550=0.1;
% Parameter:   id =  ic1551, name = ic1551
	global_par_ic1551=0.1;
% Parameter:   id =  ic1552, name = ic1552
	global_par_ic1552=0.1;
% Parameter:   id =  ic1558, name = ic1558
	global_par_ic1558=0.1;
% Parameter:   id =  ic1561, name = ic1561
	global_par_ic1561=0.1;
% Parameter:   id =  ic1571, name = ic1571
	global_par_ic1571=0.1;
% Parameter:   id =  ic1574, name = ic1574
	global_par_ic1574=0.1;
% Parameter:   id =  ic1577, name = ic1577
	global_par_ic1577=0.1;
% Parameter:   id =  ic1578, name = ic1578
	global_par_ic1578=0.1;
% Parameter:   id =  ic1595, name = ic1595
	global_par_ic1595=0.1;
% Parameter:   id =  ic1599, name = ic1599
	global_par_ic1599=0.1;
% Parameter:   id =  ic1609, name = ic1609
	global_par_ic1609=0.1;
% Parameter:   id =  ic1611, name = ic1611
	global_par_ic1611=1.0;
% Parameter:   id =  ic1612, name = ic1612
	global_par_ic1612=0.1;
% Parameter:   id =  ic1632, name = ic1632
	global_par_ic1632=0.1;
% Parameter:   id =  ic1643, name = ic1643
	global_par_ic1643=0.1;
% Parameter:   id =  ic1644, name = ic1644
	global_par_ic1644=0.1;
% Parameter:   id =  ic1668, name = ic1668
	global_par_ic1668=0.1;
% Parameter:   id =  ic1670, name = ic1670
	global_par_ic1670=0.1;
% Parameter:   id =  ic1672, name = ic1672
	global_par_ic1672=0.1;
% Parameter:   id =  ic1674, name = ic1674
	global_par_ic1674=0.1;
% Parameter:   id =  ic1676, name = ic1676
	global_par_ic1676=0.1;
% Parameter:   id =  ic1680, name = ic1680
	global_par_ic1680=0.1;
% Parameter:   id =  ic1690, name = ic1690
	global_par_ic1690=0.1;
% Parameter:   id =  ic1719, name = ic1719
	global_par_ic1719=0.1;
% Parameter:   id =  ic1725, name = ic1725
	global_par_ic1725=0.1;
% Parameter:   id =  ic1731, name = ic1731
	global_par_ic1731=0.1;
% Parameter:   id =  ic1732, name = ic1732
	global_par_ic1732=0.1;
% Parameter:   id =  ic1733, name = ic1733
	global_par_ic1733=0.1;
% Parameter:   id =  ic1734, name = ic1734
	global_par_ic1734=0.1;
% Parameter:   id =  ic1735, name = ic1735
	global_par_ic1735=0.1;
% Parameter:   id =  ic1736, name = ic1736
	global_par_ic1736=0.1;
% Parameter:   id =  ic1742, name = ic1742
	global_par_ic1742=0.1;
% Parameter:   id =  ic1745, name = ic1745
	global_par_ic1745=0.1;
% Parameter:   id =  ic1750, name = ic1750
	global_par_ic1750=0.1;
% Parameter:   id =  ic1751, name = ic1751
	global_par_ic1751=0.1;
% Parameter:   id =  ic1752, name = ic1752
	global_par_ic1752=0.1;
% Parameter:   id =  ic1754, name = ic1754
	global_par_ic1754=0.1;
% Parameter:   id =  ic1755, name = ic1755
	global_par_ic1755=0.1;
% Parameter:   id =  ic1762, name = ic1762
	global_par_ic1762=0.1;
% Parameter:   id =  ic1765, name = ic1765
	global_par_ic1765=0.1;
% Parameter:   id =  ic1768, name = ic1768
	global_par_ic1768=0.1;
% Parameter:   id =  ic1776, name = ic1776
	global_par_ic1776=0.1;
% Parameter:   id =  ic1777, name = ic1777
	global_par_ic1777=0.1;
% Parameter:   id =  ic1791, name = ic1791
	global_par_ic1791=0.1;
% Parameter:   id =  ic1792, name = ic1792
	global_par_ic1792=0.1;
% Parameter:   id =  ic1799, name = ic1799
	global_par_ic1799=0.1;
% Parameter:   id =  ic1804, name = ic1804
	global_par_ic1804=0.1;
% Parameter:   id =  ic1806, name = ic1806
	global_par_ic1806=1.0;

% Reaction: id = r_0001, name = (2R,4S)-2-methyl-2,3,3,4-tetrahydroxytetrahydrofuran synthesis (spontaneous)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0001_FLUX_VALUE=6.20554969142397E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0001_v0=6.20554969142397E-5;
	% Local Parameter:   id =  ep0004, name = ep0004
	reaction_r_0001_ep0004=1.0;
	% Local Parameter:   id =  ep0003, name = ep0003
	reaction_r_0001_ep0003=-1.0;

	reaction_r_0001=compartment_cell*reaction_r_0001_v0*(1+reaction_r_0001_ep0004*log(x(2)/global_par_ic0004)+reaction_r_0001_ep0003*log(x(1)/global_par_ic0003));

% Reaction: id = r_0008, name = 1-(5-phosphoribosyl)-5-[(5-phosphoribosylamino)methylideneamino)imidazole-4-carboxamide isomerase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0008_FLUX_VALUE=0.0131230753965474;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0008_v0=0.0131230753965474;
	% Local Parameter:   id =  ep0097, name = ep0097
	reaction_r_0008_ep0097=1.0;
	% Local Parameter:   id =  ep0341, name = ep0341
	reaction_r_0008_ep0341=-1.0;

	reaction_r_0008=compartment_cell*reaction_r_0008_v0*(1+reaction_r_0008_ep0097*log(x(24)/global_par_ic0097)+reaction_r_0008_ep0341*log(x(97)/global_par_ic0341));

% Reaction: id = r_0009, name = 1-deoxy-D-xylulose 5-phosphate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0009_FLUX_VALUE=3.92694941408386E-4;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0009_v0=3.92694941408386E-4;
	% Local Parameter:   id =  ep0913, name = ep0913
	reaction_r_0009_ep0913=1.0;
	% Local Parameter:   id =  ep1531, name = ep1531
	reaction_r_0009_ep1531=1.0;
	% Local Parameter:   id =  ep0543, name = ep0543
	reaction_r_0009_ep0543=-1.0;
	% Local Parameter:   id =  ep0116, name = ep0116
	reaction_r_0009_ep0116=-1.0;

	reaction_r_0009=compartment_cell*reaction_r_0009_v0*(1+reaction_r_0009_ep0913*log(x(222)/global_par_ic0913)+reaction_r_0009_ep1531*log(x(352)/global_par_ic1531)+reaction_r_0009_ep0543*log(x(160)/global_par_ic0543)+reaction_r_0009_ep0116*log(x(27)/global_par_ic0116));

% Reaction: id = r_0011, name = 1-deoxy-D-xylulose reductoisomerase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0011_FLUX_VALUE=3.30916477964549E-4;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0011_v0=3.30916477964549E-4;
	% Local Parameter:   id =  ep0116, name = ep0116
	reaction_r_0011_ep0116=1.0;
	% Local Parameter:   id =  ep1336, name = ep1336
	reaction_r_0011_ep1336=1.0;
	% Local Parameter:   id =  ep0194, name = ep0194
	reaction_r_0011_ep0194=-1.0;
	% Local Parameter:   id =  ep1335, name = ep1335
	reaction_r_0011_ep1335=-1.0;

	reaction_r_0011=compartment_cell*reaction_r_0011_v0*(1+reaction_r_0011_ep0116*log(x(27)/global_par_ic0116)+reaction_r_0011_ep1336*log(x(317)/global_par_ic1336)+reaction_r_0011_ep0194*log(x(41)/global_par_ic0194)+reaction_r_0011_ep1335*log(x(316)/global_par_ic1335));

% Reaction: id = r_0012, name = 1-hexadec-7-enoyl-sn-glycerol 3-phosphate O-acyltransferase (n-C16:1)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0012_FLUX_VALUE=0.0104178435779621;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0012_v0=0.0104178435779621;
	% Local Parameter:   id =  ep0119, name = ep0119
	reaction_r_0012_ep0119=1.0;
	% Local Parameter:   id =  ep0533, name = ep0533
	reaction_r_0012_ep0533=1.0;
	% Local Parameter:   id =  ep0397, name = ep0397
	reaction_r_0012_ep0397=-1.0;
	% Local Parameter:   id =  ep0073, name = ep0073
	reaction_r_0012_ep0073=-1.0;

	reaction_r_0012=compartment_cell*reaction_r_0012_v0*(1+reaction_r_0012_ep0119*log(x(28)/global_par_ic0119)+reaction_r_0012_ep0533*log(x(156)/global_par_ic0533)+reaction_r_0012_ep0397*log(x(126)/global_par_ic0397)+reaction_r_0012_ep0073*log(x(21)/global_par_ic0073));

% Reaction: id = r_0013, name = 1-hexadecanoyl-sn-glycerol 3-phosphate O-acyltransferase (n-C16:0)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0013_FLUX_VALUE=0.00884013797559913;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0013_v0=0.00884013797559913;
	% Local Parameter:   id =  ep0121, name = ep0121
	reaction_r_0013_ep0121=1.0;
	% Local Parameter:   id =  ep1411, name = ep1411
	reaction_r_0013_ep1411=1.0;
	% Local Parameter:   id =  ep0397, name = ep0397
	reaction_r_0013_ep0397=-1.0;
	% Local Parameter:   id =  ep0075, name = ep0075
	reaction_r_0013_ep0075=-1.0;

	reaction_r_0013=compartment_cell*reaction_r_0013_v0*(1+reaction_r_0013_ep0121*log(x(29)/global_par_ic0121)+reaction_r_0013_ep1411*log(x(332)/global_par_ic1411)+reaction_r_0013_ep0397*log(x(126)/global_par_ic0397)+reaction_r_0013_ep0075*log(x(22)/global_par_ic0075));

% Reaction: id = r_0014, name = 1-hydroxy-2-methyl-2-(E)-butenyl 4-diphosphate reductase (dmpp)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0014_FLUX_VALUE=3.85076520790662E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0014_v0=3.85076520790662E-5;
	% Local Parameter:   id =  ep0123, name = ep0123
	reaction_r_0014_ep0123=1.0;
	% Local Parameter:   id =  ep1334, name = ep1334
	reaction_r_0014_ep1334=1.0;
	% Local Parameter:   id =  ep0779, name = ep0779
	reaction_r_0014_ep0779=-1.0;
	% Local Parameter:   id =  ep1333, name = ep1333
	reaction_r_0014_ep1333=-1.0;

	reaction_r_0014=compartment_cell*reaction_r_0014_v0*(1+reaction_r_0014_ep0123*log(x(30)/global_par_ic0123)+reaction_r_0014_ep1334*log(x(315)/global_par_ic1334)+reaction_r_0014_ep0779*log(x(197)/global_par_ic0779)+reaction_r_0014_ep1333*log(x(314)/global_par_ic1333));

% Reaction: id = r_0015, name = 1-hydroxy-2-methyl-2-(E)-butenyl 4-diphosphate reductase (ipdp)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0015_FLUX_VALUE=2.92408825885483E-4;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0015_v0=2.92408825885483E-4;
	% Local Parameter:   id =  ep0123, name = ep0123
	reaction_r_0015_ep0123=1.0;
	% Local Parameter:   id =  ep1334, name = ep1334
	reaction_r_0015_ep1334=1.0;
	% Local Parameter:   id =  ep1028, name = ep1028
	reaction_r_0015_ep1028=-1.0;
	% Local Parameter:   id =  ep1333, name = ep1333
	reaction_r_0015_ep1333=-1.0;

	reaction_r_0015=compartment_cell*reaction_r_0015_v0*(1+reaction_r_0015_ep0123*log(x(30)/global_par_ic0123)+reaction_r_0015_ep1334*log(x(315)/global_par_ic1334)+reaction_r_0015_ep1028*log(x(247)/global_par_ic1028)+reaction_r_0015_ep1333*log(x(314)/global_par_ic1333));

% Reaction: id = r_0038, name = 2-aceto-2-hydroxybutanoate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0038_FLUX_VALUE=0.0402391112803253;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0038_v0=0.0402391112803253;
	% Local Parameter:   id =  ep0232, name = ep0232
	reaction_r_0038_ep0232=1.0;
	% Local Parameter:   id =  ep1531, name = ep1531
	reaction_r_0038_ep1531=1.0;
	% Local Parameter:   id =  ep0041, name = ep0041
	reaction_r_0038_ep0041=-1.0;
	% Local Parameter:   id =  ep0543, name = ep0543
	reaction_r_0038_ep0543=-1.0;

	reaction_r_0038=compartment_cell*reaction_r_0038_v0*(1+reaction_r_0038_ep0232*log(x(51)/global_par_ic0232)+reaction_r_0038_ep1531*log(x(352)/global_par_ic1531)+reaction_r_0038_ep0041*log(x(10)/global_par_ic0041)+reaction_r_0038_ep0543*log(x(160)/global_par_ic0543));

% Reaction: id = r_0053, name = 2-C-methyl-D-erythritol 2,4-cyclodiphosphate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0053_FLUX_VALUE=3.30916477964549E-4;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0053_v0=3.30916477964549E-4;
	% Local Parameter:   id =  ep0237, name = ep0237
	reaction_r_0053_ep0237=1.0;
	% Local Parameter:   id =  ep0193, name = ep0193
	reaction_r_0053_ep0193=-1.0;
	% Local Parameter:   id =  ep0539, name = ep0539
	reaction_r_0053_ep0539=-1.0;

	reaction_r_0053=compartment_cell*reaction_r_0053_v0*(1+reaction_r_0053_ep0237*log(x(53)/global_par_ic0237)+reaction_r_0053_ep0193*log(x(40)/global_par_ic0193)+reaction_r_0053_ep0539*log(x(158)/global_par_ic0539));

% Reaction: id = r_0054, name = 2-C-methyl-D-erythritol 4-phosphate cytidylyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0054_FLUX_VALUE=3.30916477964549E-4;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0054_v0=3.30916477964549E-4;
	% Local Parameter:   id =  ep0194, name = ep0194
	reaction_r_0054_ep0194=1.0;
	% Local Parameter:   id =  ep0575, name = ep0575
	reaction_r_0054_ep0575=1.0;
	% Local Parameter:   id =  ep0312, name = ep0312
	reaction_r_0054_ep0312=-1.0;
	% Local Parameter:   id =  ep0783, name = ep0783
	reaction_r_0054_ep0783=-1.0;

	reaction_r_0054=compartment_cell*reaction_r_0054_v0*(1+reaction_r_0054_ep0194*log(x(41)/global_par_ic0194)+reaction_r_0054_ep0575*log(x(165)/global_par_ic0575)+reaction_r_0054_ep0312*log(x(83)/global_par_ic0312)+reaction_r_0054_ep0783*log(x(198)/global_par_ic0783));

% Reaction: id = r_0056, name = 2-dehydro-3-deoxy-phosphogluconate aldolase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0056_FLUX_VALUE=0.87986351299776;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0056_v0=0.87986351299776;
	% Local Parameter:   id =  ep0201, name = ep0201
	reaction_r_0056_ep0201=1.0;
	% Local Parameter:   id =  ep0913, name = ep0913
	reaction_r_0056_ep0913=-1.0;
	% Local Parameter:   id =  ep1531, name = ep1531
	reaction_r_0056_ep1531=-1.0;

	reaction_r_0056=compartment_cell*reaction_r_0056_v0*(1+reaction_r_0056_ep0201*log(x(43)/global_par_ic0201)+reaction_r_0056_ep0913*log(x(222)/global_par_ic0913)+reaction_r_0056_ep1531*log(x(352)/global_par_ic1531));

% Reaction: id = r_0063, name = 2-dehydropantoate 2-reductase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0063_FLUX_VALUE=7.97856388884133E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0063_v0=7.97856388884133E-5;
	% Local Parameter:   id =  ep0203, name = ep0203
	reaction_r_0063_ep0203=1.0;
	% Local Parameter:   id =  ep1336, name = ep1336
	reaction_r_0063_ep1336=1.0;
	% Local Parameter:   id =  ep1335, name = ep1335
	reaction_r_0063_ep1335=-1.0;
	% Local Parameter:   id =  ep0032, name = ep0032
	reaction_r_0063_ep0032=-1.0;

	reaction_r_0063=compartment_cell*reaction_r_0063_v0*(1+reaction_r_0063_ep0203*log(x(44)/global_par_ic0203)+reaction_r_0063_ep1336*log(x(317)/global_par_ic1336)+reaction_r_0063_ep1335*log(x(316)/global_par_ic1335)+reaction_r_0063_ep0032*log(x(7)/global_par_ic0032));

% Reaction: id = r_0066, name = 2-isopropylmalate hydratase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0066_FLUX_VALUE=0.0624017887496972;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0066_v0=0.0624017887496972;
	% Local Parameter:   id =  ep0266, name = ep0266
	reaction_r_0066_ep0266=1.0;
	% Local Parameter:   id =  ep0217, name = ep0217
	reaction_r_0066_ep0217=-1.0;

	reaction_r_0066=compartment_cell*reaction_r_0066_v0*(1+reaction_r_0066_ep0266*log(x(59)/global_par_ic0266)+reaction_r_0066_ep0217*log(x(46)/global_par_ic0217));

% Reaction: id = r_0067, name = 2-isopropylmalate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0067_FLUX_VALUE=0.0624017887496972;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0067_v0=0.0624017887496972;
	% Local Parameter:   id =  ep0282, name = ep0282
	reaction_r_0067_ep0282=1.0;
	% Local Parameter:   id =  ep0395, name = ep0395
	reaction_r_0067_ep0395=1.0;
	% Local Parameter:   id =  ep0266, name = ep0266
	reaction_r_0067_ep0266=-1.0;
	% Local Parameter:   id =  ep0555, name = ep0555
	reaction_r_0067_ep0555=-1.0;

	reaction_r_0067=compartment_cell*reaction_r_0067_v0*(1+reaction_r_0067_ep0282*log(x(67)/global_par_ic0282)+reaction_r_0067_ep0395*log(x(125)/global_par_ic0395)+reaction_r_0067_ep0266*log(x(59)/global_par_ic0266)+reaction_r_0067_ep0555*log(x(162)/global_par_ic0555));

% Reaction: id = r_0078, name = 2-Oxo-4-methyl-3-carboxypentanoate decarboxylation	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0078_FLUX_VALUE=0.0624017887496972;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0078_v0=0.0624017887496972;
	% Local Parameter:   id =  ep0267, name = ep0267
	reaction_r_0078_ep0267=1.0;
	% Local Parameter:   id =  ep0328, name = ep0328
	reaction_r_0078_ep0328=-1.0;
	% Local Parameter:   id =  ep0543, name = ep0543
	reaction_r_0078_ep0543=-1.0;

	reaction_r_0078=compartment_cell*reaction_r_0078_v0*(1+reaction_r_0078_ep0267*log(x(60)/global_par_ic0267)+reaction_r_0078_ep0328*log(x(88)/global_par_ic0328)+reaction_r_0078_ep0543*log(x(160)/global_par_ic0543));

% Reaction: id = r_0084, name = 2C-methyl-D-erythritol 2,4 cyclodiphosphate dehydratase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0084_FLUX_VALUE=3.30916477964549E-4;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0084_v0=3.30916477964549E-4;
	% Local Parameter:   id =  ep0193, name = ep0193
	reaction_r_0084_ep0193=1.0;
	% Local Parameter:   id =  ep0861, name = ep0861
	reaction_r_0084_ep0861=2.0;
	% Local Parameter:   id =  ep0862, name = ep0862
	reaction_r_0084_ep0862=-2.0;
	% Local Parameter:   id =  ep0123, name = ep0123
	reaction_r_0084_ep0123=-1.0;

	reaction_r_0084=compartment_cell*reaction_r_0084_v0*(1+reaction_r_0084_ep0193*log(x(40)/global_par_ic0193)+reaction_r_0084_ep0861*log(x(214)/global_par_ic0861)+reaction_r_0084_ep0862*log(x(215)/global_par_ic0862)+reaction_r_0084_ep0123*log(x(30)/global_par_ic0123));

% Reaction: id = r_0085, name = 3',5'-bisphosphate nucleotidase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0085_FLUX_VALUE=0.0343363591697952;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0085_v0=0.0343363591697952;
	% Local Parameter:   id =  ep0411, name = ep0411
	reaction_r_0085_ep0411=1.0;
	% Local Parameter:   id =  ep0454, name = ep0454
	reaction_r_0085_ep0454=-1.0;
	% Local Parameter:   id =  ep1430, name = ep1430
	reaction_r_0085_ep1430=-1.0;

	reaction_r_0085=compartment_cell*reaction_r_0085_v0*(1+reaction_r_0085_ep0411*log(x(129)/global_par_ic0411)+reaction_r_0085_ep0454*log(x(137)/global_par_ic0454)+reaction_r_0085_ep1430*log(x(336)/global_par_ic1430));

% Reaction: id = r_0092, name = 3,4-Dihydroxy-2-butanone-4-phosphate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0092_FLUX_VALUE=1.23556926891731E-4;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0092_v0=1.23556926891731E-4;
	% Local Parameter:   id =  ep0704, name = ep0704
	reaction_r_0092_ep0704=1.0;
	% Local Parameter:   id =  ep0255, name = ep0255
	reaction_r_0092_ep0255=-1.0;
	% Local Parameter:   id =  ep0867, name = ep0867
	reaction_r_0092_ep0867=-1.0;

	reaction_r_0092=compartment_cell*reaction_r_0092_v0*(1+reaction_r_0092_ep0704*log(x(182)/global_par_ic0704)+reaction_r_0092_ep0255*log(x(55)/global_par_ic0255)+reaction_r_0092_ep0867*log(x(217)/global_par_ic0867));

% Reaction: id = r_0096, name = 3-cis-2-trans-enoyl-CoA isomerase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0096_FLUX_VALUE=0.0208356871558827;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0096_v0=0.0208356871558827;
	% Local Parameter:   id =  ep1674, name = ep1674
	reaction_r_0096_ep1674=1.0;
	% Local Parameter:   id =  ep0979, name = ep0979
	reaction_r_0096_ep0979=-1.0;

	reaction_r_0096=compartment_cell*reaction_r_0096_v0*(1+reaction_r_0096_ep1674*log(x(375)/global_par_ic1674)+reaction_r_0096_ep0979*log(x(232)/global_par_ic0979));

% Reaction: id = r_0098, name = 3-dehydroquinate dehydratase, irreversible	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0098_FLUX_VALUE=0.052796345817737;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0098_v0=0.052796345817737;
	% Local Parameter:   id =  ep0269, name = ep0269
	reaction_r_0098_ep0269=1.0;
	% Local Parameter:   id =  ep0270, name = ep0270
	reaction_r_0098_ep0270=-1.0;

	reaction_r_0098=compartment_cell*reaction_r_0098_v0*(1+reaction_r_0098_ep0269*log(x(61)/global_par_ic0269)+reaction_r_0098_ep0270*log(x(62)/global_par_ic0270));

% Reaction: id = r_0099, name = 3-dehydroquinate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0099_FLUX_VALUE=0.052796345817737;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0099_v0=0.052796345817737;
	% Local Parameter:   id =  ep0195, name = ep0195
	reaction_r_0099_ep0195=1.0;
	% Local Parameter:   id =  ep0269, name = ep0269
	reaction_r_0099_ep0269=-1.0;
	% Local Parameter:   id =  ep1430, name = ep1430
	reaction_r_0099_ep1430=-1.0;

	reaction_r_0099=compartment_cell*reaction_r_0099_v0*(1+reaction_r_0099_ep0195*log(x(42)/global_par_ic0195)+reaction_r_0099_ep0269*log(x(61)/global_par_ic0269)+reaction_r_0099_ep1430*log(x(336)/global_par_ic1430));

% Reaction: id = r_0100, name = 3-deoxy -D-manno-octulosonic -acid 8-phosphate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0100_FLUX_VALUE=0.00539107129442444;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0100_v0=0.00539107129442444;
	% Local Parameter:   id =  ep0611, name = ep0611
	reaction_r_0100_ep0611=1.0;
	% Local Parameter:   id =  ep1484, name = ep1484
	reaction_r_0100_ep1484=1.0;
	% Local Parameter:   id =  ep0272, name = ep0272
	reaction_r_0100_ep0272=-1.0;
	% Local Parameter:   id =  ep1430, name = ep1430
	reaction_r_0100_ep1430=-1.0;

	reaction_r_0100=compartment_cell*reaction_r_0100_v0*(1+reaction_r_0100_ep0611*log(x(171)/global_par_ic0611)+reaction_r_0100_ep1484*log(x(341)/global_par_ic1484)+reaction_r_0100_ep0272*log(x(64)/global_par_ic0272)+reaction_r_0100_ep1430*log(x(336)/global_par_ic1430));

% Reaction: id = r_0101, name = 3-deoxy-D-arabino-heptulosonate 7-phosphate synthetase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0101_FLUX_VALUE=0.052796345817737;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0101_v0=0.052796345817737;
	% Local Parameter:   id =  ep0621, name = ep0621
	reaction_r_0101_ep0621=1.0;
	% Local Parameter:   id =  ep1484, name = ep1484
	reaction_r_0101_ep1484=1.0;
	% Local Parameter:   id =  ep0195, name = ep0195
	reaction_r_0101_ep0195=-1.0;
	% Local Parameter:   id =  ep1430, name = ep1430
	reaction_r_0101_ep1430=-1.0;

	reaction_r_0101=compartment_cell*reaction_r_0101_v0*(1+reaction_r_0101_ep0621*log(x(173)/global_par_ic0621)+reaction_r_0101_ep1484*log(x(341)/global_par_ic1484)+reaction_r_0101_ep0195*log(x(42)/global_par_ic0195)+reaction_r_0101_ep1430*log(x(336)/global_par_ic1430));

% Reaction: id = r_0102, name = 3-deoxy-D-manno-octulosonic acid transferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0102_FLUX_VALUE=0.00269553564721213;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0102_v0=0.00269553564721213;
	% Local Parameter:   id =  ep0542, name = ep0542
	reaction_r_0102_ep0542=1.0;
	% Local Parameter:   id =  ep0147, name = ep0147
	reaction_r_0102_ep0147=1.0;
	% Local Parameter:   id =  ep0539, name = ep0539
	reaction_r_0102_ep0539=-1.0;
	% Local Parameter:   id =  ep1038, name = ep1038
	reaction_r_0102_ep1038=-1.0;

	reaction_r_0102=compartment_cell*reaction_r_0102_v0*(1+reaction_r_0102_ep0542*log(x(159)/global_par_ic0542)+reaction_r_0102_ep0147*log(x(33)/global_par_ic0147)+reaction_r_0102_ep0539*log(x(158)/global_par_ic0539)+reaction_r_0102_ep1038*log(x(249)/global_par_ic1038));

% Reaction: id = r_0103, name = 3-deoxy-D-manno-octulosonic acid transferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0103_FLUX_VALUE=0.00269553564721213;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0103_v0=0.00269553564721213;
	% Local Parameter:   id =  ep0542, name = ep0542
	reaction_r_0103_ep0542=1.0;
	% Local Parameter:   id =  ep1038, name = ep1038
	reaction_r_0103_ep1038=1.0;
	% Local Parameter:   id =  ep0539, name = ep0539
	reaction_r_0103_ep0539=-1.0;
	% Local Parameter:   id =  ep1033, name = ep1033
	reaction_r_0103_ep1033=-1.0;

	reaction_r_0103=compartment_cell*reaction_r_0103_v0*(1+reaction_r_0103_ep0542*log(x(159)/global_par_ic0542)+reaction_r_0103_ep1038*log(x(249)/global_par_ic1038)+reaction_r_0103_ep0539*log(x(158)/global_par_ic0539)+reaction_r_0103_ep1033*log(x(248)/global_par_ic1033));

% Reaction: id = r_0105, name = 3-deoxy-manno-octulosonate cytidylyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0105_FLUX_VALUE=0.00539107129442444;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0105_v0=0.00539107129442444;
	% Local Parameter:   id =  ep0575, name = ep0575
	reaction_r_0105_ep0575=1.0;
	% Local Parameter:   id =  ep0271, name = ep0271
	reaction_r_0105_ep0271=1.0;
	% Local Parameter:   id =  ep0542, name = ep0542
	reaction_r_0105_ep0542=-1.0;
	% Local Parameter:   id =  ep0783, name = ep0783
	reaction_r_0105_ep0783=-1.0;

	reaction_r_0105=compartment_cell*reaction_r_0105_v0*(1+reaction_r_0105_ep0575*log(x(165)/global_par_ic0575)+reaction_r_0105_ep0271*log(x(63)/global_par_ic0271)+reaction_r_0105_ep0542*log(x(159)/global_par_ic0542)+reaction_r_0105_ep0783*log(x(198)/global_par_ic0783));

% Reaction: id = r_0106, name = 3-deoxy-manno-octulosonate-8-phosphatase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0106_FLUX_VALUE=0.00539107129442444;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0106_v0=0.00539107129442444;
	% Local Parameter:   id =  ep0272, name = ep0272
	reaction_r_0106_ep0272=1.0;
	% Local Parameter:   id =  ep0271, name = ep0271
	reaction_r_0106_ep0271=-1.0;
	% Local Parameter:   id =  ep1430, name = ep1430
	reaction_r_0106_ep1430=-1.0;

	reaction_r_0106=compartment_cell*reaction_r_0106_v0*(1+reaction_r_0106_ep0272*log(x(64)/global_par_ic0272)+reaction_r_0106_ep0271*log(x(63)/global_par_ic0271)+reaction_r_0106_ep1430*log(x(336)/global_par_ic1430));

% Reaction: id = r_0120, name = 3-hydroxyacyl-CoA dehydratase (3-hydroxybutanoyl-CoA)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0120_FLUX_VALUE=0.0492981056959303;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0120_v0=0.0492981056959303;
	% Local Parameter:   id =  ep0043, name = ep0043
	reaction_r_0120_ep0043=1.0;
	% Local Parameter:   id =  ep0574, name = ep0574
	reaction_r_0120_ep0574=-1.0;

	reaction_r_0120=compartment_cell*reaction_r_0120_v0*(1+reaction_r_0120_ep0043*log(x(12)/global_par_ic0043)+reaction_r_0120_ep0574*log(x(164)/global_par_ic0574));

% Reaction: id = r_0121, name = 3-hydroxyacyl-CoA dehydratase (3-hydroxydecanoyl-CoA)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0121_FLUX_VALUE=0.0492981056959448;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0121_v0=0.0492981056959448;
	% Local Parameter:   id =  ep0044, name = ep0044
	reaction_r_0121_ep0044=1.0;
	% Local Parameter:   id =  ep1668, name = ep1668
	reaction_r_0121_ep1668=-1.0;

	reaction_r_0121=compartment_cell*reaction_r_0121_v0*(1+reaction_r_0121_ep0044*log(x(13)/global_par_ic0044)+reaction_r_0121_ep1668*log(x(372)/global_par_ic1668));

% Reaction: id = r_0122, name = 3-hydroxyacyl-CoA dehydratase (3-hydroxydodecanoyl-CoA)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0122_FLUX_VALUE=0.0492981056959429;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0122_v0=0.0492981056959429;
	% Local Parameter:   id =  ep0045, name = ep0045
	reaction_r_0122_ep0045=1.0;
	% Local Parameter:   id =  ep1670, name = ep1670
	reaction_r_0122_ep1670=-1.0;

	reaction_r_0122=compartment_cell*reaction_r_0122_v0*(1+reaction_r_0122_ep0045*log(x(14)/global_par_ic0045)+reaction_r_0122_ep1670*log(x(373)/global_par_ic1670));

% Reaction: id = r_0123, name = 3-hydroxyacyl-CoA dehydratase (3-hydroxyhexadecanoyl-CoA)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0123_FLUX_VALUE=0.0385159631070915;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0123_v0=0.0385159631070915;
	% Local Parameter:   id =  ep0046, name = ep0046
	reaction_r_0123_ep0046=1.0;
	% Local Parameter:   id =  ep1674, name = ep1674
	reaction_r_0123_ep1674=-1.0;

	reaction_r_0123=compartment_cell*reaction_r_0123_v0*(1+reaction_r_0123_ep0046*log(x(15)/global_par_ic0046)+reaction_r_0123_ep1674*log(x(375)/global_par_ic1674));

% Reaction: id = r_0124, name = 3-hydroxyacyl-CoA dehydratase (3-hydroxyhexanoyl-CoA)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0124_FLUX_VALUE=0.0492981056959303;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0124_v0=0.0492981056959303;
	% Local Parameter:   id =  ep0047, name = ep0047
	reaction_r_0124_ep0047=1.0;
	% Local Parameter:   id =  ep1672, name = ep1672
	reaction_r_0124_ep1672=-1.0;

	reaction_r_0124=compartment_cell*reaction_r_0124_v0*(1+reaction_r_0124_ep0047*log(x(16)/global_par_ic0047)+reaction_r_0124_ep1672*log(x(374)/global_par_ic1672));

% Reaction: id = r_0126, name = 3-hydroxyacyl-CoA dehydratase (3-hydroxyoctanoyl-CoA)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0126_FLUX_VALUE=0.0492981056959303;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0126_v0=0.0492981056959303;
	% Local Parameter:   id =  ep0049, name = ep0049
	reaction_r_0126_ep0049=1.0;
	% Local Parameter:   id =  ep1676, name = ep1676
	reaction_r_0126_ep1676=-1.0;

	reaction_r_0126=compartment_cell*reaction_r_0126_v0*(1+reaction_r_0126_ep0049*log(x(17)/global_par_ic0049)+reaction_r_0126_ep1676*log(x(376)/global_par_ic1676));

% Reaction: id = r_0127, name = 3-hydroxyacyl-CoA dehydratase (3-hydroxytetradecanoyl-CoA)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0127_FLUX_VALUE=0.0385159631070598;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0127_v0=0.0385159631070598;
	% Local Parameter:   id =  ep0050, name = ep0050
	reaction_r_0127_ep0050=1.0;
	% Local Parameter:   id =  ep1680, name = ep1680
	reaction_r_0127_ep1680=-1.0;

	reaction_r_0127=compartment_cell*reaction_r_0127_v0*(1+reaction_r_0127_ep0050*log(x(18)/global_par_ic0050)+reaction_r_0127_ep1680*log(x(377)/global_par_ic1680));

% Reaction: id = r_0128, name = 3-hydroxyacyl-CoA dehydrogenase (3-oxodecanoyl-CoA)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0128_FLUX_VALUE=0.0492981056959448;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0128_v0=0.0492981056959448;
	% Local Parameter:   id =  ep0293, name = ep0293
	reaction_r_0128_ep0293=1.0;
	% Local Parameter:   id =  ep1334, name = ep1334
	reaction_r_0128_ep1334=1.0;
	% Local Parameter:   id =  ep0044, name = ep0044
	reaction_r_0128_ep0044=-1.0;
	% Local Parameter:   id =  ep1333, name = ep1333
	reaction_r_0128_ep1333=-1.0;

	reaction_r_0128=compartment_cell*reaction_r_0128_v0*(1+reaction_r_0128_ep0293*log(x(71)/global_par_ic0293)+reaction_r_0128_ep1334*log(x(315)/global_par_ic1334)+reaction_r_0128_ep0044*log(x(13)/global_par_ic0044)+reaction_r_0128_ep1333*log(x(314)/global_par_ic1333));

% Reaction: id = r_0129, name = 3-hydroxyacyl-CoA dehydrogenase (3-oxododecanoyl-CoA)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0129_FLUX_VALUE=0.0492981056959429;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0129_v0=0.0492981056959429;
	% Local Parameter:   id =  ep0295, name = ep0295
	reaction_r_0129_ep0295=1.0;
	% Local Parameter:   id =  ep1334, name = ep1334
	reaction_r_0129_ep1334=1.0;
	% Local Parameter:   id =  ep0045, name = ep0045
	reaction_r_0129_ep0045=-1.0;
	% Local Parameter:   id =  ep1333, name = ep1333
	reaction_r_0129_ep1333=-1.0;

	reaction_r_0129=compartment_cell*reaction_r_0129_v0*(1+reaction_r_0129_ep0295*log(x(72)/global_par_ic0295)+reaction_r_0129_ep1334*log(x(315)/global_par_ic1334)+reaction_r_0129_ep0045*log(x(14)/global_par_ic0045)+reaction_r_0129_ep1333*log(x(314)/global_par_ic1333));

% Reaction: id = r_0130, name = 3-hydroxyacyl-CoA dehydrogenase (3-oxohexadecanoyl-CoA)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0130_FLUX_VALUE=0.0385159631070915;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0130_v0=0.0385159631070915;
	% Local Parameter:   id =  ep0297, name = ep0297
	reaction_r_0130_ep0297=1.0;
	% Local Parameter:   id =  ep1334, name = ep1334
	reaction_r_0130_ep1334=1.0;
	% Local Parameter:   id =  ep0046, name = ep0046
	reaction_r_0130_ep0046=-1.0;
	% Local Parameter:   id =  ep1333, name = ep1333
	reaction_r_0130_ep1333=-1.0;

	reaction_r_0130=compartment_cell*reaction_r_0130_v0*(1+reaction_r_0130_ep0297*log(x(73)/global_par_ic0297)+reaction_r_0130_ep1334*log(x(315)/global_par_ic1334)+reaction_r_0130_ep0046*log(x(15)/global_par_ic0046)+reaction_r_0130_ep1333*log(x(314)/global_par_ic1333));

% Reaction: id = r_0131, name = 3-hydroxyacyl-CoA dehydrogenase (3-oxohexanoyl-CoA)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0131_FLUX_VALUE=0.0492981056959303;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0131_v0=0.0492981056959303;
	% Local Parameter:   id =  ep0299, name = ep0299
	reaction_r_0131_ep0299=1.0;
	% Local Parameter:   id =  ep1334, name = ep1334
	reaction_r_0131_ep1334=1.0;
	% Local Parameter:   id =  ep0047, name = ep0047
	reaction_r_0131_ep0047=-1.0;
	% Local Parameter:   id =  ep1333, name = ep1333
	reaction_r_0131_ep1333=-1.0;

	reaction_r_0131=compartment_cell*reaction_r_0131_v0*(1+reaction_r_0131_ep0299*log(x(74)/global_par_ic0299)+reaction_r_0131_ep1334*log(x(315)/global_par_ic1334)+reaction_r_0131_ep0047*log(x(16)/global_par_ic0047)+reaction_r_0131_ep1333*log(x(314)/global_par_ic1333));

% Reaction: id = r_0133, name = 3-hydroxyacyl-CoA dehydrogenase (3-oxooctanoyl-CoA)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0133_FLUX_VALUE=0.0492981056959303;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0133_v0=0.0492981056959303;
	% Local Parameter:   id =  ep0303, name = ep0303
	reaction_r_0133_ep0303=1.0;
	% Local Parameter:   id =  ep1334, name = ep1334
	reaction_r_0133_ep1334=1.0;
	% Local Parameter:   id =  ep0049, name = ep0049
	reaction_r_0133_ep0049=-1.0;
	% Local Parameter:   id =  ep1333, name = ep1333
	reaction_r_0133_ep1333=-1.0;

	reaction_r_0133=compartment_cell*reaction_r_0133_v0*(1+reaction_r_0133_ep0303*log(x(75)/global_par_ic0303)+reaction_r_0133_ep1334*log(x(315)/global_par_ic1334)+reaction_r_0133_ep0049*log(x(17)/global_par_ic0049)+reaction_r_0133_ep1333*log(x(314)/global_par_ic1333));

% Reaction: id = r_0134, name = 3-hydroxyacyl-CoA dehydrogenase (3-oxotetradecanoyl-CoA)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0134_FLUX_VALUE=0.0385159631070598;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0134_v0=0.0385159631070598;
	% Local Parameter:   id =  ep0305, name = ep0305
	reaction_r_0134_ep0305=1.0;
	% Local Parameter:   id =  ep1334, name = ep1334
	reaction_r_0134_ep1334=1.0;
	% Local Parameter:   id =  ep0050, name = ep0050
	reaction_r_0134_ep0050=-1.0;
	% Local Parameter:   id =  ep1333, name = ep1333
	reaction_r_0134_ep1333=-1.0;

	reaction_r_0134=compartment_cell*reaction_r_0134_v0*(1+reaction_r_0134_ep0305*log(x(77)/global_par_ic0305)+reaction_r_0134_ep1334*log(x(315)/global_par_ic1334)+reaction_r_0134_ep0050*log(x(18)/global_par_ic0050)+reaction_r_0134_ep1333*log(x(314)/global_par_ic1333));

% Reaction: id = r_0135, name = 3-hydroxyacyl-CoA dehydrogenase (acetoacetyl-CoA)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0135_FLUX_VALUE=0.0492981056959303;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0135_v0=0.0492981056959303;
	% Local Parameter:   id =  ep0391, name = ep0391
	reaction_r_0135_ep0391=1.0;
	% Local Parameter:   id =  ep1334, name = ep1334
	reaction_r_0135_ep1334=1.0;
	% Local Parameter:   id =  ep0043, name = ep0043
	reaction_r_0135_ep0043=-1.0;
	% Local Parameter:   id =  ep1333, name = ep1333
	reaction_r_0135_ep1333=-1.0;

	reaction_r_0135=compartment_cell*reaction_r_0135_v0*(1+reaction_r_0135_ep0391*log(x(123)/global_par_ic0391)+reaction_r_0135_ep1334*log(x(315)/global_par_ic1334)+reaction_r_0135_ep0043*log(x(12)/global_par_ic0043)+reaction_r_0135_ep1333*log(x(314)/global_par_ic1333));

% Reaction: id = r_0138, name = 3-isopropylmalate dehydratase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0138_FLUX_VALUE=0.0624017887496972;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0138_v0=0.0624017887496972;
	% Local Parameter:   id =  ep0217, name = ep0217
	reaction_r_0138_ep0217=1.0;
	% Local Parameter:   id =  ep0265, name = ep0265
	reaction_r_0138_ep0265=-1.0;

	reaction_r_0138=compartment_cell*reaction_r_0138_v0*(1+reaction_r_0138_ep0217*log(x(46)/global_par_ic0217)+reaction_r_0138_ep0265*log(x(58)/global_par_ic0265));

% Reaction: id = r_0139, name = 3-isopropylmalate dehydrogenase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0139_FLUX_VALUE=0.0624017887496972;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0139_v0=0.0624017887496972;
	% Local Parameter:   id =  ep0265, name = ep0265
	reaction_r_0139_ep0265=1.0;
	% Local Parameter:   id =  ep1333, name = ep1333
	reaction_r_0139_ep1333=1.0;
	% Local Parameter:   id =  ep0267, name = ep0267
	reaction_r_0139_ep0267=-1.0;
	% Local Parameter:   id =  ep1334, name = ep1334
	reaction_r_0139_ep1334=-1.0;

	reaction_r_0139=compartment_cell*reaction_r_0139_v0*(1+reaction_r_0139_ep0265*log(x(58)/global_par_ic0265)+reaction_r_0139_ep1333*log(x(314)/global_par_ic1333)+reaction_r_0139_ep0267*log(x(60)/global_par_ic0267)+reaction_r_0139_ep1334*log(x(315)/global_par_ic1334));

% Reaction: id = r_0143, name = 3-methyl-2-oxobutanoate hydroxymethyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0143_FLUX_VALUE=7.97856388884133E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0143_v0=7.97856388884133E-5;
	% Local Parameter:   id =  ep0282, name = ep0282
	reaction_r_0143_ep0282=1.0;
	% Local Parameter:   id =  ep0336, name = ep0336
	reaction_r_0143_ep0336=1.0;
	% Local Parameter:   id =  ep0203, name = ep0203
	reaction_r_0143_ep0203=-1.0;
	% Local Parameter:   id =  ep0337, name = ep0337
	reaction_r_0143_ep0337=-1.0;

	reaction_r_0143=compartment_cell*reaction_r_0143_v0*(1+reaction_r_0143_ep0282*log(x(67)/global_par_ic0282)+reaction_r_0143_ep0336*log(x(95)/global_par_ic0336)+reaction_r_0143_ep0203*log(x(44)/global_par_ic0203)+reaction_r_0143_ep0337*log(x(96)/global_par_ic0337));

% Reaction: id = r_0145, name = 3-Oxo-glutaryl-[ACP] methyl ester dehydratase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0145_FLUX_VALUE=2.77033467884759E-7;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0145_v0=2.77033467884759E-7;
	% Local Parameter:   id =  ep0276, name = ep0276
	reaction_r_0145_ep0276=1.0;
	% Local Parameter:   id =  ep0812, name = ep0812
	reaction_r_0145_ep0812=-1.0;

	reaction_r_0145=compartment_cell*reaction_r_0145_v0*(1+reaction_r_0145_ep0276*log(x(65)/global_par_ic0276)+reaction_r_0145_ep0812*log(x(207)/global_par_ic0812));

% Reaction: id = r_0146, name = 3-Oxo-glutaryl-[ACP] methyl ester reductase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0146_FLUX_VALUE=2.77033467884759E-7;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0146_v0=2.77033467884759E-7;
	% Local Parameter:   id =  ep1336, name = ep1336
	reaction_r_0146_ep1336=1.0;
	% Local Parameter:   id =  ep0289, name = ep0289
	reaction_r_0146_ep0289=1.0;
	% Local Parameter:   id =  ep0276, name = ep0276
	reaction_r_0146_ep0276=-1.0;
	% Local Parameter:   id =  ep1335, name = ep1335
	reaction_r_0146_ep1335=-1.0;

	reaction_r_0146=compartment_cell*reaction_r_0146_v0*(1+reaction_r_0146_ep1336*log(x(317)/global_par_ic1336)+reaction_r_0146_ep0289*log(x(69)/global_par_ic0289)+reaction_r_0146_ep0276*log(x(65)/global_par_ic0276)+reaction_r_0146_ep1335*log(x(316)/global_par_ic1335));

% Reaction: id = r_0147, name = 3-Oxo-glutaryl-[ACP] methyl ester synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0147_FLUX_VALUE=2.77033467884759E-7;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0147_v0=2.77033467884759E-7;
	% Local Parameter:   id =  ep1216, name = ep1216
	reaction_r_0147_ep1216=1.0;
	% Local Parameter:   id =  ep1218, name = ep1218
	reaction_r_0147_ep1218=1.0;
	% Local Parameter:   id =  ep0543, name = ep0543
	reaction_r_0147_ep0543=-1.0;
	% Local Parameter:   id =  ep0555, name = ep0555
	reaction_r_0147_ep0555=-1.0;
	% Local Parameter:   id =  ep0289, name = ep0289
	reaction_r_0147_ep0289=-1.0;

	reaction_r_0147=compartment_cell*reaction_r_0147_v0*(1+reaction_r_0147_ep1216*log(x(285)/global_par_ic1216)+reaction_r_0147_ep1218*log(x(287)/global_par_ic1218)+reaction_r_0147_ep0543*log(x(160)/global_par_ic0543)+reaction_r_0147_ep0555*log(x(162)/global_par_ic0555)+reaction_r_0147_ep0289*log(x(69)/global_par_ic0289));

% Reaction: id = r_0148, name = 3-Oxo-pimeloyl-[ACP] methyl ester dehydratase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0148_FLUX_VALUE=2.77033467884759E-7;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0148_v0=2.77033467884759E-7;
	% Local Parameter:   id =  ep0277, name = ep0277
	reaction_r_0148_ep0277=1.0;
	% Local Parameter:   id =  ep0813, name = ep0813
	reaction_r_0148_ep0813=-1.0;

	reaction_r_0148=compartment_cell*reaction_r_0148_v0*(1+reaction_r_0148_ep0277*log(x(66)/global_par_ic0277)+reaction_r_0148_ep0813*log(x(208)/global_par_ic0813));

% Reaction: id = r_0149, name = 3-Oxo-pimeloyl-[ACP] methyl ester reductase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0149_FLUX_VALUE=2.77033467884759E-7;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0149_v0=2.77033467884759E-7;
	% Local Parameter:   id =  ep1336, name = ep1336
	reaction_r_0149_ep1336=1.0;
	% Local Parameter:   id =  ep0290, name = ep0290
	reaction_r_0149_ep0290=1.0;
	% Local Parameter:   id =  ep0277, name = ep0277
	reaction_r_0149_ep0277=-1.0;
	% Local Parameter:   id =  ep1335, name = ep1335
	reaction_r_0149_ep1335=-1.0;

	reaction_r_0149=compartment_cell*reaction_r_0149_v0*(1+reaction_r_0149_ep1336*log(x(317)/global_par_ic1336)+reaction_r_0149_ep0290*log(x(70)/global_par_ic0290)+reaction_r_0149_ep0277*log(x(66)/global_par_ic0277)+reaction_r_0149_ep1335*log(x(316)/global_par_ic1335));

% Reaction: id = r_0150, name = 3-Oxo-pimeloyl-[ACP] methyl ester synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0150_FLUX_VALUE=2.77033467884759E-7;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0150_v0=2.77033467884759E-7;
	% Local Parameter:   id =  ep0910, name = ep0910
	reaction_r_0150_ep0910=1.0;
	% Local Parameter:   id =  ep1216, name = ep1216
	reaction_r_0150_ep1216=1.0;
	% Local Parameter:   id =  ep0397, name = ep0397
	reaction_r_0150_ep0397=-1.0;
	% Local Parameter:   id =  ep0543, name = ep0543
	reaction_r_0150_ep0543=-1.0;
	% Local Parameter:   id =  ep0290, name = ep0290
	reaction_r_0150_ep0290=-1.0;

	reaction_r_0150=compartment_cell*reaction_r_0150_v0*(1+reaction_r_0150_ep0910*log(x(221)/global_par_ic0910)+reaction_r_0150_ep1216*log(x(285)/global_par_ic1216)+reaction_r_0150_ep0397*log(x(126)/global_par_ic0397)+reaction_r_0150_ep0543*log(x(160)/global_par_ic0543)+reaction_r_0150_ep0290*log(x(70)/global_par_ic0290));

% Reaction: id = r_0154, name = 3-oxoacyl-[acyl-carrier-protein] reductase (n-C14:0)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0154_FLUX_VALUE=0.0107821425888488;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0154_v0=0.0107821425888488;
	% Local Parameter:   id =  ep0304, name = ep0304
	reaction_r_0154_ep0304=1.0;
	% Local Parameter:   id =  ep1336, name = ep1336
	reaction_r_0154_ep1336=1.0;
	% Local Parameter:   id =  ep0028, name = ep0028
	reaction_r_0154_ep0028=-1.0;
	% Local Parameter:   id =  ep1335, name = ep1335
	reaction_r_0154_ep1335=-1.0;

	reaction_r_0154=compartment_cell*reaction_r_0154_v0*(1+reaction_r_0154_ep0304*log(x(76)/global_par_ic0304)+reaction_r_0154_ep1336*log(x(317)/global_par_ic1336)+reaction_r_0154_ep0028*log(x(5)/global_par_ic0028)+reaction_r_0154_ep1335*log(x(316)/global_par_ic1335));

% Reaction: id = r_0166, name = 3-oxoacyl-[acyl-carrier-protein] synthase (n-C14:0)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0166_FLUX_VALUE=0.0107821425888488;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0166_v0=0.0107821425888488;
	% Local Parameter:   id =  ep0789, name = ep0789
	reaction_r_0166_ep0789=1.0;
	% Local Parameter:   id =  ep1216, name = ep1216
	reaction_r_0166_ep1216=1.0;
	% Local Parameter:   id =  ep0304, name = ep0304
	reaction_r_0166_ep0304=-1.0;
	% Local Parameter:   id =  ep0397, name = ep0397
	reaction_r_0166_ep0397=-1.0;
	% Local Parameter:   id =  ep0543, name = ep0543
	reaction_r_0166_ep0543=-1.0;

	reaction_r_0166=compartment_cell*reaction_r_0166_v0*(1+reaction_r_0166_ep0789*log(x(200)/global_par_ic0789)+reaction_r_0166_ep1216*log(x(285)/global_par_ic1216)+reaction_r_0166_ep0304*log(x(76)/global_par_ic0304)+reaction_r_0166_ep0397*log(x(126)/global_par_ic0397)+reaction_r_0166_ep0543*log(x(160)/global_par_ic0543));

% Reaction: id = r_0175, name = 3-phosphoshikimate 1-carboxyvinyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0175_FLUX_VALUE=0.0527963458177373;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0175_v0=0.0527963458177373;
	% Local Parameter:   id =  ep1484, name = ep1484
	reaction_r_0175_ep1484=1.0;
	% Local Parameter:   id =  ep1574, name = ep1574
	reaction_r_0175_ep1574=1.0;
	% Local Parameter:   id =  ep0359, name = ep0359
	reaction_r_0175_ep0359=-1.0;
	% Local Parameter:   id =  ep1430, name = ep1430
	reaction_r_0175_ep1430=-1.0;

	reaction_r_0175=compartment_cell*reaction_r_0175_v0*(1+reaction_r_0175_ep1484*log(x(341)/global_par_ic1484)+reaction_r_0175_ep1574*log(x(362)/global_par_ic1574)+reaction_r_0175_ep0359*log(x(106)/global_par_ic0359)+reaction_r_0175_ep1430*log(x(336)/global_par_ic1430));

% Reaction: id = r_0176, name = 4,5-dihydroxy-2,3-pentanedione cyclization (spontaneous)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0176_FLUX_VALUE=6.20554969142397E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0176_v0=6.20554969142397E-5;
	% Local Parameter:   id =  ep0310, name = ep0310
	reaction_r_0176_ep0310=1.0;
	% Local Parameter:   id =  ep0004, name = ep0004
	reaction_r_0176_ep0004=-1.0;

	reaction_r_0176=compartment_cell*reaction_r_0176_v0*(1+reaction_r_0176_ep0310*log(x(81)/global_par_ic0310)+reaction_r_0176_ep0004*log(x(2)/global_par_ic0004));

% Reaction: id = r_0178, name = 4-(cytidine 5'-diphospho)-2-C-methyl-D-erythritol kinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0178_FLUX_VALUE=3.30916477964549E-4;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0178_v0=3.30916477964549E-4;
	% Local Parameter:   id =  ep0312, name = ep0312
	reaction_r_0178_ep0312=1.0;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_0178_ep0467=1.0;
	% Local Parameter:   id =  ep0237, name = ep0237
	reaction_r_0178_ep0237=-1.0;
	% Local Parameter:   id =  ep0421, name = ep0421
	reaction_r_0178_ep0421=-1.0;

	reaction_r_0178=compartment_cell*reaction_r_0178_v0*(1+reaction_r_0178_ep0312*log(x(83)/global_par_ic0312)+reaction_r_0178_ep0467*log(x(139)/global_par_ic0467)+reaction_r_0178_ep0237*log(x(53)/global_par_ic0237)+reaction_r_0178_ep0421*log(x(132)/global_par_ic0421));

% Reaction: id = r_0179, name = 4-amino-2-methyl-5-phosphomethylpyrimidine synthetase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0179_FLUX_VALUE=3.08892317229363E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0179_v0=3.08892317229363E-5;
	% Local Parameter:   id =  ep0342, name = ep0342
	reaction_r_0179_ep0342=1.0;
	% Local Parameter:   id =  ep1333, name = ep1333
	reaction_r_0179_ep1333=1.0;
	% Local Parameter:   id =  ep0313, name = ep0313
	reaction_r_0179_ep0313=-1.0;
	% Local Parameter:   id =  ep0867, name = ep0867
	reaction_r_0179_ep0867=-2.0;
	% Local Parameter:   id =  ep1334, name = ep1334
	reaction_r_0179_ep1334=-1.0;

	reaction_r_0179=compartment_cell*reaction_r_0179_v0*(1+reaction_r_0179_ep0342*log(x(98)/global_par_ic0342)+reaction_r_0179_ep1333*log(x(314)/global_par_ic1333)+reaction_r_0179_ep0313*log(x(84)/global_par_ic0313)+reaction_r_0179_ep0867*log(x(217)/global_par_ic0867)+reaction_r_0179_ep1334*log(x(315)/global_par_ic1334));

% Reaction: id = r_0181, name = 4-amino-4-deoxychorismate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0181_FLUX_VALUE=9.26676951688061E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0181_v0=9.26676951688061E-5;
	% Local Parameter:   id =  ep0526, name = ep0526
	reaction_r_0181_ep0526=1.0;
	% Local Parameter:   id =  ep1101, name = ep1101
	reaction_r_0181_ep1101=1.0;
	% Local Parameter:   id =  ep0316, name = ep0316
	reaction_r_0181_ep0316=-1.0;
	% Local Parameter:   id =  ep1095, name = ep1095
	reaction_r_0181_ep1095=-1.0;

	reaction_r_0181=compartment_cell*reaction_r_0181_v0*(1+reaction_r_0181_ep0526*log(x(154)/global_par_ic0526)+reaction_r_0181_ep1101*log(x(263)/global_par_ic1101)+reaction_r_0181_ep0316*log(x(85)/global_par_ic0316)+reaction_r_0181_ep1095*log(x(259)/global_par_ic1095));

% Reaction: id = r_0182, name = 4-aminobenzoate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0182_FLUX_VALUE=9.26676951688061E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0182_v0=9.26676951688061E-5;
	% Local Parameter:   id =  ep0316, name = ep0316
	reaction_r_0182_ep0316=1.0;
	% Local Parameter:   id =  ep0318, name = ep0318
	reaction_r_0182_ep0318=-1.0;
	% Local Parameter:   id =  ep1531, name = ep1531
	reaction_r_0182_ep1531=-1.0;

	reaction_r_0182=compartment_cell*reaction_r_0182_v0*(1+reaction_r_0182_ep0316*log(x(85)/global_par_ic0316)+reaction_r_0182_ep0318*log(x(86)/global_par_ic0318)+reaction_r_0182_ep1531*log(x(352)/global_par_ic1531));

% Reaction: id = r_0186, name = 5'-deoxyadenosine nuclosidase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0186_FLUX_VALUE=3.11662651885034E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0186_v0=3.11662651885034E-5;
	% Local Parameter:   id =  ep0333, name = ep0333
	reaction_r_0186_ep0333=1.0;
	% Local Parameter:   id =  ep0334, name = ep0334
	reaction_r_0186_ep0334=-1.0;
	% Local Parameter:   id =  ep0405, name = ep0405
	reaction_r_0186_ep0405=-1.0;

	reaction_r_0186=compartment_cell*reaction_r_0186_v0*(1+reaction_r_0186_ep0333*log(x(92)/global_par_ic0333)+reaction_r_0186_ep0334*log(x(93)/global_par_ic0334)+reaction_r_0186_ep0405*log(x(127)/global_par_ic0405));

% Reaction: id = r_0211, name = 5,10-methylenetetrahydrofolate reductase (NADH)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0211_FLUX_VALUE=0.0213832438061183;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0211_v0=0.0213832438061183;
	% Local Parameter:   id =  ep0336, name = ep0336
	reaction_r_0211_ep0336=1.0;
	% Local Parameter:   id =  ep1334, name = ep1334
	reaction_r_0211_ep1334=1.0;
	% Local Parameter:   id =  ep0354, name = ep0354
	reaction_r_0211_ep0354=-1.0;
	% Local Parameter:   id =  ep1333, name = ep1333
	reaction_r_0211_ep1333=-1.0;

	reaction_r_0211=compartment_cell*reaction_r_0211_v0*(1+reaction_r_0211_ep0336*log(x(95)/global_par_ic0336)+reaction_r_0211_ep1334*log(x(315)/global_par_ic1334)+reaction_r_0211_ep0354*log(x(105)/global_par_ic0354)+reaction_r_0211_ep1333*log(x(314)/global_par_ic1333));

% Reaction: id = r_0212, name = 5-amino-6-(5-phosphoribosylamino)uracil reductase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0212_FLUX_VALUE=6.17784634458656E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0212_v0=6.17784634458656E-5;
	% Local Parameter:   id =  ep0347, name = ep0347
	reaction_r_0212_ep0347=1.0;
	% Local Parameter:   id =  ep1336, name = ep1336
	reaction_r_0212_ep1336=1.0;
	% Local Parameter:   id =  ep0346, name = ep0346
	reaction_r_0212_ep0346=-1.0;
	% Local Parameter:   id =  ep1335, name = ep1335
	reaction_r_0212_ep1335=-1.0;

	reaction_r_0212=compartment_cell*reaction_r_0212_v0*(1+reaction_r_0212_ep0347*log(x(103)/global_par_ic0347)+reaction_r_0212_ep1336*log(x(317)/global_par_ic1336)+reaction_r_0212_ep0346*log(x(102)/global_par_ic0346)+reaction_r_0212_ep1335*log(x(316)/global_par_ic1335));

% Reaction: id = r_0216, name = 6-hydroxymethyl-dihydropterin pyrophosphokinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0216_FLUX_VALUE=9.26676951688061E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0216_v0=9.26676951688061E-5;
	% Local Parameter:   id =  ep0367, name = ep0367
	reaction_r_0216_ep0367=1.0;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_0216_ep0467=1.0;
	% Local Parameter:   id =  ep0368, name = ep0368
	reaction_r_0216_ep0368=-1.0;
	% Local Parameter:   id =  ep0454, name = ep0454
	reaction_r_0216_ep0454=-1.0;

	reaction_r_0216=compartment_cell*reaction_r_0216_v0*(1+reaction_r_0216_ep0367*log(x(111)/global_par_ic0367)+reaction_r_0216_ep0467*log(x(139)/global_par_ic0467)+reaction_r_0216_ep0368*log(x(112)/global_par_ic0368)+reaction_r_0216_ep0454*log(x(137)/global_par_ic0454));

% Reaction: id = r_0217, name = 6-phosphogluconate dehydratase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0217_FLUX_VALUE=0.87986351299775;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0217_v0=0.87986351299775;
	% Local Parameter:   id =  ep0369, name = ep0369
	reaction_r_0217_ep0369=1.0;
	% Local Parameter:   id =  ep0201, name = ep0201
	reaction_r_0217_ep0201=-1.0;

	reaction_r_0217=compartment_cell*reaction_r_0217_v0*(1+reaction_r_0217_ep0369*log(x(113)/global_par_ic0369)+reaction_r_0217_ep0201*log(x(43)/global_par_ic0201));

% Reaction: id = r_0218, name = 6-phosphogluconolactonase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0218_FLUX_VALUE=0.879863512997714;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0218_v0=0.879863512997714;
	% Local Parameter:   id =  ep0370, name = ep0370
	reaction_r_0218_ep0370=1.0;
	% Local Parameter:   id =  ep0369, name = ep0369
	reaction_r_0218_ep0369=-1.0;

	reaction_r_0218=compartment_cell*reaction_r_0218_v0*(1+reaction_r_0218_ep0370*log(x(114)/global_par_ic0370)+reaction_r_0218_ep0369*log(x(113)/global_par_ic0369));

% Reaction: id = r_0222, name = 8-amino-7-oxononanoate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0222_FLUX_VALUE=2.77033467884759E-7;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0222_v0=2.77033467884759E-7;
	% Local Parameter:   id =  ep1041, name = ep1041
	reaction_r_0222_ep1041=1.0;
	% Local Parameter:   id =  ep1491, name = ep1491
	reaction_r_0222_ep1491=1.0;
	% Local Parameter:   id =  ep0376, name = ep0376
	reaction_r_0222_ep0376=-1.0;
	% Local Parameter:   id =  ep0397, name = ep0397
	reaction_r_0222_ep0397=-1.0;
	% Local Parameter:   id =  ep0543, name = ep0543
	reaction_r_0222_ep0543=-1.0;

	reaction_r_0222=compartment_cell*reaction_r_0222_v0*(1+reaction_r_0222_ep1041*log(x(251)/global_par_ic1041)+reaction_r_0222_ep1491*log(x(342)/global_par_ic1491)+reaction_r_0222_ep0376*log(x(117)/global_par_ic0376)+reaction_r_0222_ep0397*log(x(126)/global_par_ic0397)+reaction_r_0222_ep0543*log(x(160)/global_par_ic0543));

% Reaction: id = r_0224, name = acetaldehyde dehydrogenase (acetylating)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0224_FLUX_VALUE=0.0414265806134143;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0224_v0=0.0414265806134143;
	% Local Parameter:   id =  ep0381, name = ep0381
	reaction_r_0224_ep0381=1.0;
	% Local Parameter:   id =  ep0555, name = ep0555
	reaction_r_0224_ep0555=1.0;
	% Local Parameter:   id =  ep1333, name = ep1333
	reaction_r_0224_ep1333=1.0;
	% Local Parameter:   id =  ep0395, name = ep0395
	reaction_r_0224_ep0395=-1.0;
	% Local Parameter:   id =  ep1334, name = ep1334
	reaction_r_0224_ep1334=-1.0;

	reaction_r_0224=compartment_cell*reaction_r_0224_v0*(1+reaction_r_0224_ep0381*log(x(121)/global_par_ic0381)+reaction_r_0224_ep0555*log(x(162)/global_par_ic0555)+reaction_r_0224_ep1333*log(x(314)/global_par_ic1333)+reaction_r_0224_ep0395*log(x(125)/global_par_ic0395)+reaction_r_0224_ep1334*log(x(315)/global_par_ic1334));

% Reaction: id = r_0225, name = acetate kinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0225_FLUX_VALUE=0.0807006804356794;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0225_v0=0.0807006804356794;
	% Local Parameter:   id =  ep0384, name = ep0384
	reaction_r_0225_ep0384=1.0;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_0225_ep0467=1.0;
	% Local Parameter:   id =  ep0393, name = ep0393
	reaction_r_0225_ep0393=-1.0;
	% Local Parameter:   id =  ep0421, name = ep0421
	reaction_r_0225_ep0421=-1.0;

	reaction_r_0225=compartment_cell*reaction_r_0225_v0*(1+reaction_r_0225_ep0384*log(x(122)/global_par_ic0384)+reaction_r_0225_ep0467*log(x(139)/global_par_ic0467)+reaction_r_0225_ep0393*log(x(124)/global_par_ic0393)+reaction_r_0225_ep0421*log(x(132)/global_par_ic0421));

% Reaction: id = r_0227, name = acetolactate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0227_FLUX_VALUE=0.121101856295072;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0227_v0=0.121101856295072;
	% Local Parameter:   id =  ep1531, name = ep1531
	reaction_r_0227_ep1531=2.0;
	% Local Parameter:   id =  ep0042, name = ep0042
	reaction_r_0227_ep0042=-1.0;
	% Local Parameter:   id =  ep0543, name = ep0543
	reaction_r_0227_ep0543=-1.0;

	reaction_r_0227=compartment_cell*reaction_r_0227_v0*(1+reaction_r_0227_ep1531*log(x(352)/global_par_ic1531)+reaction_r_0227_ep0042*log(x(11)/global_par_ic0042)+reaction_r_0227_ep0543*log(x(160)/global_par_ic0543));

% Reaction: id = r_0230, name = acetyl-CoA C-acetyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0230_FLUX_VALUE=0.0492981056959303;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0230_v0=0.0492981056959303;
	% Local Parameter:   id =  ep0395, name = ep0395
	reaction_r_0230_ep0395=2.0;
	% Local Parameter:   id =  ep0391, name = ep0391
	reaction_r_0230_ep0391=-1.0;
	% Local Parameter:   id =  ep0555, name = ep0555
	reaction_r_0230_ep0555=-1.0;

	reaction_r_0230=compartment_cell*reaction_r_0230_v0*(1+reaction_r_0230_ep0395*log(x(125)/global_par_ic0395)+reaction_r_0230_ep0391*log(x(123)/global_par_ic0391)+reaction_r_0230_ep0555*log(x(162)/global_par_ic0555));

% Reaction: id = r_0231, name = acetyl-CoA C-acyltransferase (butanoyl-CoA) (r)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0231_FLUX_VALUE=0.0492981056959303;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0231_v0=0.0492981056959303;
	% Local Parameter:   id =  ep0395, name = ep0395
	reaction_r_0231_ep0395=1.0;
	% Local Parameter:   id =  ep0488, name = ep0488
	reaction_r_0231_ep0488=1.0;
	% Local Parameter:   id =  ep0299, name = ep0299
	reaction_r_0231_ep0299=-1.0;
	% Local Parameter:   id =  ep0555, name = ep0555
	reaction_r_0231_ep0555=-1.0;

	reaction_r_0231=compartment_cell*reaction_r_0231_v0*(1+reaction_r_0231_ep0395*log(x(125)/global_par_ic0395)+reaction_r_0231_ep0488*log(x(146)/global_par_ic0488)+reaction_r_0231_ep0299*log(x(74)/global_par_ic0299)+reaction_r_0231_ep0555*log(x(162)/global_par_ic0555));

% Reaction: id = r_0232, name = acetyl-CoA C-acyltransferase (decanoyl-CoA) (r)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0232_FLUX_VALUE=0.0492981056959429;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0232_v0=0.0492981056959429;
	% Local Parameter:   id =  ep0395, name = ep0395
	reaction_r_0232_ep0395=1.0;
	% Local Parameter:   id =  ep0737, name = ep0737
	reaction_r_0232_ep0737=1.0;
	% Local Parameter:   id =  ep0295, name = ep0295
	reaction_r_0232_ep0295=-1.0;
	% Local Parameter:   id =  ep0555, name = ep0555
	reaction_r_0232_ep0555=-1.0;

	reaction_r_0232=compartment_cell*reaction_r_0232_v0*(1+reaction_r_0232_ep0395*log(x(125)/global_par_ic0395)+reaction_r_0232_ep0737*log(x(187)/global_par_ic0737)+reaction_r_0232_ep0295*log(x(72)/global_par_ic0295)+reaction_r_0232_ep0555*log(x(162)/global_par_ic0555));

% Reaction: id = r_0233, name = acetyl-CoA C-acyltransferase (dodecanoyl-CoA) (r)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0233_FLUX_VALUE=0.0385159631070598;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0233_v0=0.0385159631070598;
	% Local Parameter:   id =  ep0395, name = ep0395
	reaction_r_0233_ep0395=1.0;
	% Local Parameter:   id =  ep0790, name = ep0790
	reaction_r_0233_ep0790=1.0;
	% Local Parameter:   id =  ep0305, name = ep0305
	reaction_r_0233_ep0305=-1.0;
	% Local Parameter:   id =  ep0555, name = ep0555
	reaction_r_0233_ep0555=-1.0;

	reaction_r_0233=compartment_cell*reaction_r_0233_v0*(1+reaction_r_0233_ep0395*log(x(125)/global_par_ic0395)+reaction_r_0233_ep0790*log(x(201)/global_par_ic0790)+reaction_r_0233_ep0305*log(x(77)/global_par_ic0305)+reaction_r_0233_ep0555*log(x(162)/global_par_ic0555));

% Reaction: id = r_0234, name = acetyl-CoA C-acyltransferase (hexanoyl-CoA) (r)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0234_FLUX_VALUE=0.0492981056959303;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0234_v0=0.0492981056959303;
	% Local Parameter:   id =  ep0395, name = ep0395
	reaction_r_0234_ep0395=1.0;
	% Local Parameter:   id =  ep0984, name = ep0984
	reaction_r_0234_ep0984=1.0;
	% Local Parameter:   id =  ep0303, name = ep0303
	reaction_r_0234_ep0303=-1.0;
	% Local Parameter:   id =  ep0555, name = ep0555
	reaction_r_0234_ep0555=-1.0;

	reaction_r_0234=compartment_cell*reaction_r_0234_v0*(1+reaction_r_0234_ep0395*log(x(125)/global_par_ic0395)+reaction_r_0234_ep0984*log(x(233)/global_par_ic0984)+reaction_r_0234_ep0303*log(x(75)/global_par_ic0303)+reaction_r_0234_ep0555*log(x(162)/global_par_ic0555));

% Reaction: id = r_0235, name = acetyl-CoA C-acyltransferase (octanoyl-CoA) (r)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0235_FLUX_VALUE=0.0492981056959448;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0235_v0=0.0492981056959448;
	% Local Parameter:   id =  ep0395, name = ep0395
	reaction_r_0235_ep0395=1.0;
	% Local Parameter:   id =  ep1390, name = ep1390
	reaction_r_0235_ep1390=1.0;
	% Local Parameter:   id =  ep0293, name = ep0293
	reaction_r_0235_ep0293=-1.0;
	% Local Parameter:   id =  ep0555, name = ep0555
	reaction_r_0235_ep0555=-1.0;

	reaction_r_0235=compartment_cell*reaction_r_0235_v0*(1+reaction_r_0235_ep0395*log(x(125)/global_par_ic0395)+reaction_r_0235_ep1390*log(x(325)/global_par_ic1390)+reaction_r_0235_ep0293*log(x(71)/global_par_ic0293)+reaction_r_0235_ep0555*log(x(162)/global_par_ic0555));

% Reaction: id = r_0236, name = acetyl-CoA C-acyltransferase (tetradecanoyl-CoA) (r)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0236_FLUX_VALUE=0.0385159631070916;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0236_v0=0.0385159631070916;
	% Local Parameter:   id =  ep0395, name = ep0395
	reaction_r_0236_ep0395=1.0;
	% Local Parameter:   id =  ep1632, name = ep1632
	reaction_r_0236_ep1632=1.0;
	% Local Parameter:   id =  ep0297, name = ep0297
	reaction_r_0236_ep0297=-1.0;
	% Local Parameter:   id =  ep0555, name = ep0555
	reaction_r_0236_ep0555=-1.0;

	reaction_r_0236=compartment_cell*reaction_r_0236_v0*(1+reaction_r_0236_ep0395*log(x(125)/global_par_ic0395)+reaction_r_0236_ep1632*log(x(369)/global_par_ic1632)+reaction_r_0236_ep0297*log(x(73)/global_par_ic0297)+reaction_r_0236_ep0555*log(x(162)/global_par_ic0555));

% Reaction: id = r_0237, name = acetyl-CoA carboxylase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0237_FLUX_VALUE=0.0107829736892899;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0237_v0=0.0107829736892899;
	% Local Parameter:   id =  ep0395, name = ep0395
	reaction_r_0237_ep0395=1.0;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_0237_ep0467=1.0;
	% Local Parameter:   id =  ep0474, name = ep0474
	reaction_r_0237_ep0474=1.0;
	% Local Parameter:   id =  ep0421, name = ep0421
	reaction_r_0237_ep0421=-1.0;
	% Local Parameter:   id =  ep1217, name = ep1217
	reaction_r_0237_ep1217=-1.0;
	% Local Parameter:   id =  ep1430, name = ep1430
	reaction_r_0237_ep1430=-1.0;

	reaction_r_0237=compartment_cell*reaction_r_0237_v0*(1+reaction_r_0237_ep0395*log(x(125)/global_par_ic0395)+reaction_r_0237_ep0467*log(x(139)/global_par_ic0467)+reaction_r_0237_ep0474*log(x(141)/global_par_ic0474)+reaction_r_0237_ep0421*log(x(132)/global_par_ic0421)+reaction_r_0237_ep1217*log(x(286)/global_par_ic1217)+reaction_r_0237_ep1430*log(x(336)/global_par_ic1430));

% Reaction: id = r_0243, name = acetylglutamate kinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0243_FLUX_VALUE=0.0409732499715063;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0243_v0=0.0409732499715063;
	% Local Parameter:   id =  ep1302, name = ep1302
	reaction_r_0243_ep1302=1.0;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_0243_ep0467=1.0;
	% Local Parameter:   id =  ep1304, name = ep1304
	reaction_r_0243_ep1304=-1.0;
	% Local Parameter:   id =  ep0421, name = ep0421
	reaction_r_0243_ep0421=-1.0;

	reaction_r_0243=compartment_cell*reaction_r_0243_v0*(1+reaction_r_0243_ep1302*log(x(303)/global_par_ic1302)+reaction_r_0243_ep0467*log(x(139)/global_par_ic0467)+reaction_r_0243_ep1304*log(x(305)/global_par_ic1304)+reaction_r_0243_ep0421*log(x(132)/global_par_ic0421));

% Reaction: id = r_0244, name = acetylornithine deacetylase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0244_FLUX_VALUE=0.040973249971501;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0244_v0=0.040973249971501;
	% Local Parameter:   id =  ep1321, name = ep1321
	reaction_r_0244_ep1321=1.0;
	% Local Parameter:   id =  ep0384, name = ep0384
	reaction_r_0244_ep0384=-1.0;
	% Local Parameter:   id =  ep1391, name = ep1391
	reaction_r_0244_ep1391=-1.0;

	reaction_r_0244=compartment_cell*reaction_r_0244_v0*(1+reaction_r_0244_ep1321*log(x(310)/global_par_ic1321)+reaction_r_0244_ep0384*log(x(122)/global_par_ic0384)+reaction_r_0244_ep1391*log(x(326)/global_par_ic1391));

% Reaction: id = r_0245, name = acetylornithine transaminase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0245_FLUX_VALUE=0.040973249971501;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0245_v0=0.040973249971501;
	% Local Parameter:   id =  ep1303, name = ep1303
	reaction_r_0245_ep1303=1.0;
	% Local Parameter:   id =  ep1095, name = ep1095
	reaction_r_0245_ep1095=1.0;
	% Local Parameter:   id =  ep1321, name = ep1321
	reaction_r_0245_ep1321=-1.0;
	% Local Parameter:   id =  ep0233, name = ep0233
	reaction_r_0245_ep0233=-1.0;

	reaction_r_0245=compartment_cell*reaction_r_0245_v0*(1+reaction_r_0245_ep1303*log(x(304)/global_par_ic1303)+reaction_r_0245_ep1095*log(x(259)/global_par_ic1095)+reaction_r_0245_ep1321*log(x(310)/global_par_ic1321)+reaction_r_0245_ep0233*log(x(52)/global_par_ic0233));

% Reaction: id = r_0246, name = aconitase (half-reaction A, Citrate hydro-lyase)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0246_FLUX_VALUE=0.148949399052035;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0246_v0=0.148949399052035;
	% Local Parameter:   id =  ep0536, name = ep0536
	reaction_r_0246_ep0536=1.0;
	% Local Parameter:   id =  ep0530, name = ep0530
	reaction_r_0246_ep0530=-1.0;

	reaction_r_0246=compartment_cell*reaction_r_0246_v0*(1+reaction_r_0246_ep0536*log(x(157)/global_par_ic0536)+reaction_r_0246_ep0530*log(x(155)/global_par_ic0530));

% Reaction: id = r_0247, name = aconitase (half-reaction B, Isocitrate hydro-lyase)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0247_FLUX_VALUE=0.148949399052035;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0247_v0=0.148949399052035;
	% Local Parameter:   id =  ep0530, name = ep0530
	reaction_r_0247_ep0530=1.0;
	% Local Parameter:   id =  ep1027, name = ep1027
	reaction_r_0247_ep1027=-1.0;

	reaction_r_0247=compartment_cell*reaction_r_0247_v0*(1+reaction_r_0247_ep0530*log(x(155)/global_par_ic0530)+reaction_r_0247_ep1027*log(x(246)/global_par_ic1027));

% Reaction: id = r_0257, name = acyl-[acyl-carrier-protein] synthetase  (n-C12:0)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0257_FLUX_VALUE=0.0107821425888425;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0257_v0=0.0107821425888425;
	% Local Parameter:   id =  ep0397, name = ep0397
	reaction_r_0257_ep0397=1.0;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_0257_ep0467=1.0;
	% Local Parameter:   id =  ep0785, name = ep0785
	reaction_r_0257_ep0785=1.0;
	% Local Parameter:   id =  ep0454, name = ep0454
	reaction_r_0257_ep0454=-1.0;
	% Local Parameter:   id =  ep0789, name = ep0789
	reaction_r_0257_ep0789=-1.0;
	% Local Parameter:   id =  ep0783, name = ep0783
	reaction_r_0257_ep0783=-1.0;

	reaction_r_0257=compartment_cell*reaction_r_0257_v0*(1+reaction_r_0257_ep0397*log(x(126)/global_par_ic0397)+reaction_r_0257_ep0467*log(x(139)/global_par_ic0467)+reaction_r_0257_ep0785*log(x(199)/global_par_ic0785)+reaction_r_0257_ep0454*log(x(137)/global_par_ic0454)+reaction_r_0257_ep0789*log(x(200)/global_par_ic0789)+reaction_r_0257_ep0783*log(x(198)/global_par_ic0783));

% Reaction: id = r_0259, name = acyl-[acyl-carrier-protein] synthetase  (n-C16:0)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0259_FLUX_VALUE=0.0176802759511862;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0259_v0=0.0176802759511862;
	% Local Parameter:   id =  ep0397, name = ep0397
	reaction_r_0259_ep0397=1.0;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_0259_ep0467=1.0;
	% Local Parameter:   id =  ep0971, name = ep0971
	reaction_r_0259_ep0971=1.0;
	% Local Parameter:   id =  ep0454, name = ep0454
	reaction_r_0259_ep0454=-1.0;
	% Local Parameter:   id =  ep1411, name = ep1411
	reaction_r_0259_ep1411=-1.0;
	% Local Parameter:   id =  ep0783, name = ep0783
	reaction_r_0259_ep0783=-1.0;

	reaction_r_0259=compartment_cell*reaction_r_0259_v0*(1+reaction_r_0259_ep0397*log(x(126)/global_par_ic0397)+reaction_r_0259_ep0467*log(x(139)/global_par_ic0467)+reaction_r_0259_ep0971*log(x(230)/global_par_ic0971)+reaction_r_0259_ep0454*log(x(137)/global_par_ic0454)+reaction_r_0259_ep1411*log(x(332)/global_par_ic1411)+reaction_r_0259_ep0783*log(x(198)/global_par_ic0783));

% Reaction: id = r_0260, name = acyl-[acyl-carrier-protein] synthetase  (n-C16:1)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0260_FLUX_VALUE=0.0208356871559117;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0260_v0=0.0208356871559117;
	% Local Parameter:   id =  ep0397, name = ep0397
	reaction_r_0260_ep0397=1.0;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_0260_ep0467=1.0;
	% Local Parameter:   id =  ep0976, name = ep0976
	reaction_r_0260_ep0976=1.0;
	% Local Parameter:   id =  ep0454, name = ep0454
	reaction_r_0260_ep0454=-1.0;
	% Local Parameter:   id =  ep0533, name = ep0533
	reaction_r_0260_ep0533=-1.0;
	% Local Parameter:   id =  ep0783, name = ep0783
	reaction_r_0260_ep0783=-1.0;

	reaction_r_0260=compartment_cell*reaction_r_0260_v0*(1+reaction_r_0260_ep0397*log(x(126)/global_par_ic0397)+reaction_r_0260_ep0467*log(x(139)/global_par_ic0467)+reaction_r_0260_ep0976*log(x(231)/global_par_ic0976)+reaction_r_0260_ep0454*log(x(137)/global_par_ic0454)+reaction_r_0260_ep0533*log(x(156)/global_par_ic0533)+reaction_r_0260_ep0783*log(x(198)/global_par_ic0783));

% Reaction: id = r_0266, name = acyl-CoA dehydrogenase (butanoyl-CoA)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0266_FLUX_VALUE=0.0492981056959303;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0266_v0=0.0492981056959303;
	% Local Parameter:   id =  ep0574, name = ep0574
	reaction_r_0266_ep0574=1.0;
	% Local Parameter:   id =  ep0860, name = ep0860
	reaction_r_0266_ep0860=1.0;
	% Local Parameter:   id =  ep0488, name = ep0488
	reaction_r_0266_ep0488=-1.0;
	% Local Parameter:   id =  ep0859, name = ep0859
	reaction_r_0266_ep0859=-1.0;

	reaction_r_0266=compartment_cell*reaction_r_0266_v0*(1+reaction_r_0266_ep0574*log(x(164)/global_par_ic0574)+reaction_r_0266_ep0860*log(x(213)/global_par_ic0860)+reaction_r_0266_ep0488*log(x(146)/global_par_ic0488)+reaction_r_0266_ep0859*log(x(212)/global_par_ic0859));

% Reaction: id = r_0267, name = acyl-CoA dehydrogenase (decanoyl-CoA)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0267_FLUX_VALUE=0.0492981056959448;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0267_v0=0.0492981056959448;
	% Local Parameter:   id =  ep1668, name = ep1668
	reaction_r_0267_ep1668=1.0;
	% Local Parameter:   id =  ep0860, name = ep0860
	reaction_r_0267_ep0860=1.0;
	% Local Parameter:   id =  ep0737, name = ep0737
	reaction_r_0267_ep0737=-1.0;
	% Local Parameter:   id =  ep0859, name = ep0859
	reaction_r_0267_ep0859=-1.0;

	reaction_r_0267=compartment_cell*reaction_r_0267_v0*(1+reaction_r_0267_ep1668*log(x(372)/global_par_ic1668)+reaction_r_0267_ep0860*log(x(213)/global_par_ic0860)+reaction_r_0267_ep0737*log(x(187)/global_par_ic0737)+reaction_r_0267_ep0859*log(x(212)/global_par_ic0859));

% Reaction: id = r_0268, name = acyl-CoA dehydrogenase (dodecanoyl-CoA)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0268_FLUX_VALUE=0.0492981056959429;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0268_v0=0.0492981056959429;
	% Local Parameter:   id =  ep1670, name = ep1670
	reaction_r_0268_ep1670=1.0;
	% Local Parameter:   id =  ep0860, name = ep0860
	reaction_r_0268_ep0860=1.0;
	% Local Parameter:   id =  ep0790, name = ep0790
	reaction_r_0268_ep0790=-1.0;
	% Local Parameter:   id =  ep0859, name = ep0859
	reaction_r_0268_ep0859=-1.0;

	reaction_r_0268=compartment_cell*reaction_r_0268_v0*(1+reaction_r_0268_ep1670*log(x(373)/global_par_ic1670)+reaction_r_0268_ep0860*log(x(213)/global_par_ic0860)+reaction_r_0268_ep0790*log(x(201)/global_par_ic0790)+reaction_r_0268_ep0859*log(x(212)/global_par_ic0859));

% Reaction: id = r_0269, name = acyl-CoA dehydrogenase (hexadecanoyl-CoA)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0269_FLUX_VALUE=0.0176802759511649;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0269_v0=0.0176802759511649;
	% Local Parameter:   id =  ep0860, name = ep0860
	reaction_r_0269_ep0860=1.0;
	% Local Parameter:   id =  ep1674, name = ep1674
	reaction_r_0269_ep1674=1.0;
	% Local Parameter:   id =  ep0859, name = ep0859
	reaction_r_0269_ep0859=-1.0;
	% Local Parameter:   id =  ep1412, name = ep1412
	reaction_r_0269_ep1412=-1.0;

	reaction_r_0269=compartment_cell*reaction_r_0269_v0*(1+reaction_r_0269_ep0860*log(x(213)/global_par_ic0860)+reaction_r_0269_ep1674*log(x(375)/global_par_ic1674)+reaction_r_0269_ep0859*log(x(212)/global_par_ic0859)+reaction_r_0269_ep1412*log(x(333)/global_par_ic1412));

% Reaction: id = r_0270, name = acyl-CoA dehydrogenase (hexanoyl-CoA)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0270_FLUX_VALUE=0.0492981056959303;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0270_v0=0.0492981056959303;
	% Local Parameter:   id =  ep0860, name = ep0860
	reaction_r_0270_ep0860=1.0;
	% Local Parameter:   id =  ep1672, name = ep1672
	reaction_r_0270_ep1672=1.0;
	% Local Parameter:   id =  ep0859, name = ep0859
	reaction_r_0270_ep0859=-1.0;
	% Local Parameter:   id =  ep0984, name = ep0984
	reaction_r_0270_ep0984=-1.0;

	reaction_r_0270=compartment_cell*reaction_r_0270_v0*(1+reaction_r_0270_ep0860*log(x(213)/global_par_ic0860)+reaction_r_0270_ep1672*log(x(374)/global_par_ic1672)+reaction_r_0270_ep0859*log(x(212)/global_par_ic0859)+reaction_r_0270_ep0984*log(x(233)/global_par_ic0984));

% Reaction: id = r_0272, name = acyl-CoA dehydrogenase (octanoyl-CoA)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0272_FLUX_VALUE=0.0492981056959303;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0272_v0=0.0492981056959303;
	% Local Parameter:   id =  ep0860, name = ep0860
	reaction_r_0272_ep0860=1.0;
	% Local Parameter:   id =  ep1676, name = ep1676
	reaction_r_0272_ep1676=1.0;
	% Local Parameter:   id =  ep0859, name = ep0859
	reaction_r_0272_ep0859=-1.0;
	% Local Parameter:   id =  ep1390, name = ep1390
	reaction_r_0272_ep1390=-1.0;

	reaction_r_0272=compartment_cell*reaction_r_0272_v0*(1+reaction_r_0272_ep0860*log(x(213)/global_par_ic0860)+reaction_r_0272_ep1676*log(x(376)/global_par_ic1676)+reaction_r_0272_ep0859*log(x(212)/global_par_ic0859)+reaction_r_0272_ep1390*log(x(325)/global_par_ic1390));

% Reaction: id = r_0273, name = acyl-CoA dehydrogenase (tetradecanoyl-CoA)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0273_FLUX_VALUE=0.0385159631070833;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0273_v0=0.0385159631070833;
	% Local Parameter:   id =  ep0860, name = ep0860
	reaction_r_0273_ep0860=1.0;
	% Local Parameter:   id =  ep1680, name = ep1680
	reaction_r_0273_ep1680=1.0;
	% Local Parameter:   id =  ep0859, name = ep0859
	reaction_r_0273_ep0859=-1.0;
	% Local Parameter:   id =  ep1632, name = ep1632
	reaction_r_0273_ep1632=-1.0;

	reaction_r_0273=compartment_cell*reaction_r_0273_v0*(1+reaction_r_0273_ep0860*log(x(213)/global_par_ic0860)+reaction_r_0273_ep1680*log(x(377)/global_par_ic1680)+reaction_r_0273_ep0859*log(x(212)/global_par_ic0859)+reaction_r_0273_ep1632*log(x(369)/global_par_ic1632));

% Reaction: id = r_0292, name = adenosine kinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0292_FLUX_VALUE=9.32217621027432E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0292_v0=9.32217621027432E-5;
	% Local Parameter:   id =  ep0408, name = ep0408
	reaction_r_0292_ep0408=1.0;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_0292_ep0467=1.0;
	% Local Parameter:   id =  ep0421, name = ep0421
	reaction_r_0292_ep0421=-1.0;
	% Local Parameter:   id =  ep0454, name = ep0454
	reaction_r_0292_ep0454=-1.0;

	reaction_r_0292=compartment_cell*reaction_r_0292_v0*(1+reaction_r_0292_ep0408*log(x(128)/global_par_ic0408)+reaction_r_0292_ep0467*log(x(139)/global_par_ic0467)+reaction_r_0292_ep0421*log(x(132)/global_par_ic0421)+reaction_r_0292_ep0454*log(x(137)/global_par_ic0454));

% Reaction: id = r_0297, name = adenosylmethionine-8-amino-7-oxononanoate transaminase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0297_FLUX_VALUE=2.77033467884759E-7;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0297_v0=2.77033467884759E-7;
	% Local Parameter:   id =  ep0376, name = ep0376
	reaction_r_0297_ep0376=1.0;
	% Local Parameter:   id =  ep1552, name = ep1552
	reaction_r_0297_ep1552=1.0;
	% Local Parameter:   id =  ep1550, name = ep1550
	reaction_r_0297_ep1550=-1.0;
	% Local Parameter:   id =  ep0371, name = ep0371
	reaction_r_0297_ep0371=-1.0;

	reaction_r_0297=compartment_cell*reaction_r_0297_v0*(1+reaction_r_0297_ep0376*log(x(117)/global_par_ic0376)+reaction_r_0297_ep1552*log(x(358)/global_par_ic1552)+reaction_r_0297_ep1550*log(x(356)/global_par_ic1550)+reaction_r_0297_ep0371*log(x(115)/global_par_ic0371));

% Reaction: id = r_0301, name = adenylate kinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0301_FLUX_VALUE=0.362277497683991;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0301_v0=0.362277497683991;
	% Local Parameter:   id =  ep0454, name = ep0454
	reaction_r_0301_ep0454=1.0;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_0301_ep0467=1.0;
	% Local Parameter:   id =  ep0421, name = ep0421
	reaction_r_0301_ep0421=-2.0;

	reaction_r_0301=compartment_cell*reaction_r_0301_v0*(1+reaction_r_0301_ep0454*log(x(137)/global_par_ic0454)+reaction_r_0301_ep0467*log(x(139)/global_par_ic0467)+reaction_r_0301_ep0421*log(x(132)/global_par_ic0421));

% Reaction: id = r_0302, name = adenylosuccinate lyase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0302_FLUX_VALUE=0.0613899240064973;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0302_v0=0.0613899240064973;
	% Local Parameter:   id =  ep0040, name = ep0040
	reaction_r_0302_ep0040=1.0;
	% Local Parameter:   id =  ep0343, name = ep0343
	reaction_r_0302_ep0343=-1.0;
	% Local Parameter:   id =  ep0875, name = ep0875
	reaction_r_0302_ep0875=-1.0;

	reaction_r_0302=compartment_cell*reaction_r_0302_v0*(1+reaction_r_0302_ep0040*log(x(9)/global_par_ic0040)+reaction_r_0302_ep0343*log(x(99)/global_par_ic0343)+reaction_r_0302_ep0875*log(x(218)/global_par_ic0875));

% Reaction: id = r_0303, name = adenylosuccinate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0303_FLUX_VALUE=0.0407532853976299;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0303_v0=0.0407532853976299;
	% Local Parameter:   id =  ep1072, name = ep1072
	reaction_r_0303_ep1072=1.0;
	% Local Parameter:   id =  ep0945, name = ep0945
	reaction_r_0303_ep0945=1.0;
	% Local Parameter:   id =  ep1006, name = ep1006
	reaction_r_0303_ep1006=1.0;
	% Local Parameter:   id =  ep1327, name = ep1327
	reaction_r_0303_ep1327=-1.0;
	% Local Parameter:   id =  ep0896, name = ep0896
	reaction_r_0303_ep0896=-1.0;
	% Local Parameter:   id =  ep1430, name = ep1430
	reaction_r_0303_ep1430=-1.0;

	reaction_r_0303=compartment_cell*reaction_r_0303_v0*(1+reaction_r_0303_ep1072*log(x(254)/global_par_ic1072)+reaction_r_0303_ep0945*log(x(229)/global_par_ic0945)+reaction_r_0303_ep1006*log(x(238)/global_par_ic1006)+reaction_r_0303_ep1327*log(x(312)/global_par_ic1327)+reaction_r_0303_ep0896*log(x(219)/global_par_ic0896)+reaction_r_0303_ep1430*log(x(336)/global_par_ic1430));

% Reaction: id = r_0304, name = adenylsuccinate lyase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0304_FLUX_VALUE=0.0407532853976299;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0304_v0=0.0407532853976299;
	% Local Parameter:   id =  ep1327, name = ep1327
	reaction_r_0304_ep1327=1.0;
	% Local Parameter:   id =  ep0454, name = ep0454
	reaction_r_0304_ep0454=-1.0;
	% Local Parameter:   id =  ep0875, name = ep0875
	reaction_r_0304_ep0875=-1.0;

	reaction_r_0304=compartment_cell*reaction_r_0304_v0*(1+reaction_r_0304_ep1327*log(x(312)/global_par_ic1327)+reaction_r_0304_ep0454*log(x(137)/global_par_ic0454)+reaction_r_0304_ep0875*log(x(218)/global_par_ic0875));

% Reaction: id = r_0305, name = adenylyl-sulfate kinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0305_FLUX_VALUE=0.0343363591697952;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0305_v0=0.0343363591697952;
	% Local Parameter:   id =  ep0412, name = ep0412
	reaction_r_0305_ep0412=1.0;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_0305_ep0467=1.0;
	% Local Parameter:   id =  ep0421, name = ep0421
	reaction_r_0305_ep0421=-1.0;
	% Local Parameter:   id =  ep0252, name = ep0252
	reaction_r_0305_ep0252=-1.0;

	reaction_r_0305=compartment_cell*reaction_r_0305_v0*(1+reaction_r_0305_ep0412*log(x(130)/global_par_ic0412)+reaction_r_0305_ep0467*log(x(139)/global_par_ic0467)+reaction_r_0305_ep0421*log(x(132)/global_par_ic0421)+reaction_r_0305_ep0252*log(x(54)/global_par_ic0252));

% Reaction: id = r_0310, name = alanine racemase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0310_FLUX_VALUE=0.00577199231356107;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0310_v0=0.00577199231356107;
	% Local Parameter:   id =  ep1041, name = ep1041
	reaction_r_0310_ep1041=1.0;
	% Local Parameter:   id =  ep0600, name = ep0600
	reaction_r_0310_ep0600=-1.0;

	reaction_r_0310=compartment_cell*reaction_r_0310_v0*(1+reaction_r_0310_ep1041*log(x(251)/global_par_ic1041)+reaction_r_0310_ep0600*log(x(169)/global_par_ic0600));

% Reaction: id = r_0348, name = anthranilate phosphoribosyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0348_FLUX_VALUE=0.00787329117099325;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0348_v0=0.00787329117099325;
	% Local Parameter:   id =  ep0457, name = ep0457
	reaction_r_0348_ep0457=1.0;
	% Local Parameter:   id =  ep0360, name = ep0360
	reaction_r_0348_ep0360=1.0;
	% Local Parameter:   id =  ep0783, name = ep0783
	reaction_r_0348_ep0783=-1.0;
	% Local Parameter:   id =  ep1278, name = ep1278
	reaction_r_0348_ep1278=-1.0;

	reaction_r_0348=compartment_cell*reaction_r_0348_v0*(1+reaction_r_0348_ep0457*log(x(138)/global_par_ic0457)+reaction_r_0348_ep0360*log(x(107)/global_par_ic0360)+reaction_r_0348_ep0783*log(x(198)/global_par_ic0783)+reaction_r_0348_ep1278*log(x(301)/global_par_ic1278));

% Reaction: id = r_0349, name = anthranilate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0349_FLUX_VALUE=0.00787329117099325;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0349_v0=0.00787329117099325;
	% Local Parameter:   id =  ep0526, name = ep0526
	reaction_r_0349_ep0526=1.0;
	% Local Parameter:   id =  ep1101, name = ep1101
	reaction_r_0349_ep1101=1.0;
	% Local Parameter:   id =  ep0457, name = ep0457
	reaction_r_0349_ep0457=-1.0;
	% Local Parameter:   id =  ep1095, name = ep1095
	reaction_r_0349_ep1095=-1.0;
	% Local Parameter:   id =  ep1531, name = ep1531
	reaction_r_0349_ep1531=-1.0;

	reaction_r_0349=compartment_cell*reaction_r_0349_v0*(1+reaction_r_0349_ep0526*log(x(154)/global_par_ic0526)+reaction_r_0349_ep1101*log(x(263)/global_par_ic1101)+reaction_r_0349_ep0457*log(x(138)/global_par_ic0457)+reaction_r_0349_ep1095*log(x(259)/global_par_ic1095)+reaction_r_0349_ep1531*log(x(352)/global_par_ic1531));

% Reaction: id = r_0355, name = arabinose-5-phosphate isomerase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0355_FLUX_VALUE=0.00539107129442444;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0355_v0=0.00539107129442444;
	% Local Parameter:   id =  ep0704, name = ep0704
	reaction_r_0355_ep0704=1.0;
	% Local Parameter:   id =  ep0611, name = ep0611
	reaction_r_0355_ep0611=-1.0;

	reaction_r_0355=compartment_cell*reaction_r_0355_v0*(1+reaction_r_0355_ep0704*log(x(182)/global_par_ic0704)+reaction_r_0355_ep0611*log(x(171)/global_par_ic0611));

% Reaction: id = r_0360, name = argininosuccinate lyase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0360_FLUX_VALUE=0.0409732499715002;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0360_v0=0.0409732499715002;
	% Local Parameter:   id =  ep1274, name = ep1274
	reaction_r_0360_ep1274=1.0;
	% Local Parameter:   id =  ep1061, name = ep1061
	reaction_r_0360_ep1061=-1.0;
	% Local Parameter:   id =  ep0875, name = ep0875
	reaction_r_0360_ep0875=-1.0;

	reaction_r_0360=compartment_cell*reaction_r_0360_v0*(1+reaction_r_0360_ep1274*log(x(299)/global_par_ic1274)+reaction_r_0360_ep1061*log(x(252)/global_par_ic1061)+reaction_r_0360_ep0875*log(x(218)/global_par_ic0875));

% Reaction: id = r_0361, name = argininosuccinate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0361_FLUX_VALUE=0.040973249971501;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0361_v0=0.040973249971501;
	% Local Parameter:   id =  ep1072, name = ep1072
	reaction_r_0361_ep1072=1.0;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_0361_ep0467=1.0;
	% Local Parameter:   id =  ep1081, name = ep1081
	reaction_r_0361_ep1081=1.0;
	% Local Parameter:   id =  ep0454, name = ep0454
	reaction_r_0361_ep0454=-1.0;
	% Local Parameter:   id =  ep1274, name = ep1274
	reaction_r_0361_ep1274=-1.0;
	% Local Parameter:   id =  ep0783, name = ep0783
	reaction_r_0361_ep0783=-1.0;

	reaction_r_0361=compartment_cell*reaction_r_0361_v0*(1+reaction_r_0361_ep1072*log(x(254)/global_par_ic1072)+reaction_r_0361_ep0467*log(x(139)/global_par_ic0467)+reaction_r_0361_ep1081*log(x(256)/global_par_ic1081)+reaction_r_0361_ep0454*log(x(137)/global_par_ic0454)+reaction_r_0361_ep1274*log(x(299)/global_par_ic1274)+reaction_r_0361_ep0783*log(x(198)/global_par_ic0783));

% Reaction: id = r_0365, name = asparagine synthetase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0365_FLUX_VALUE=0.033396384611683;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0365_v0=0.033396384611683;
	% Local Parameter:   id =  ep1072, name = ep1072
	reaction_r_0365_ep1072=1.0;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_0365_ep0467=1.0;
	% Local Parameter:   id =  ep0451, name = ep0451
	reaction_r_0365_ep0451=1.0;
	% Local Parameter:   id =  ep0454, name = ep0454
	reaction_r_0365_ep0454=-1.0;
	% Local Parameter:   id =  ep1068, name = ep1068
	reaction_r_0365_ep1068=-1.0;
	% Local Parameter:   id =  ep0783, name = ep0783
	reaction_r_0365_ep0783=-1.0;

	reaction_r_0365=compartment_cell*reaction_r_0365_v0*(1+reaction_r_0365_ep1072*log(x(254)/global_par_ic1072)+reaction_r_0365_ep0467*log(x(139)/global_par_ic0467)+reaction_r_0365_ep0451*log(x(136)/global_par_ic0451)+reaction_r_0365_ep0454*log(x(137)/global_par_ic0454)+reaction_r_0365_ep1068*log(x(253)/global_par_ic1068)+reaction_r_0365_ep0783*log(x(198)/global_par_ic0783));

% Reaction: id = r_0367, name = aspartate 1-decarboxylase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0367_FLUX_VALUE=7.97856388811725E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0367_v0=7.97856388811725E-5;
	% Local Parameter:   id =  ep1072, name = ep1072
	reaction_r_0367_ep1072=1.0;
	% Local Parameter:   id =  ep0470, name = ep0470
	reaction_r_0367_ep0470=-1.0;
	% Local Parameter:   id =  ep0543, name = ep0543
	reaction_r_0367_ep0543=-1.0;

	reaction_r_0367=compartment_cell*reaction_r_0367_v0*(1+reaction_r_0367_ep1072*log(x(254)/global_par_ic1072)+reaction_r_0367_ep0470*log(x(140)/global_par_ic0470)+reaction_r_0367_ep0543*log(x(160)/global_par_ic0543));

% Reaction: id = r_0368, name = aspartate carbamoyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0368_FLUX_VALUE=0.0458199505005817;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0368_v0=0.0458199505005817;
	% Local Parameter:   id =  ep1072, name = ep1072
	reaction_r_0368_ep1072=1.0;
	% Local Parameter:   id =  ep0502, name = ep0502
	reaction_r_0368_ep0502=1.0;
	% Local Parameter:   id =  ep1312, name = ep1312
	reaction_r_0368_ep1312=-1.0;
	% Local Parameter:   id =  ep1430, name = ep1430
	reaction_r_0368_ep1430=-1.0;

	reaction_r_0368=compartment_cell*reaction_r_0368_v0*(1+reaction_r_0368_ep1072*log(x(254)/global_par_ic1072)+reaction_r_0368_ep0502*log(x(149)/global_par_ic0502)+reaction_r_0368_ep1312*log(x(306)/global_par_ic1312)+reaction_r_0368_ep1430*log(x(336)/global_par_ic1430));

% Reaction: id = r_0369, name = aspartate kinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0369_FLUX_VALUE=0.230942094325926;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0369_v0=0.230942094325926;
	% Local Parameter:   id =  ep1072, name = ep1072
	reaction_r_0369_ep1072=1.0;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_0369_ep0467=1.0;
	% Local Parameter:   id =  ep0332, name = ep0332
	reaction_r_0369_ep0332=-1.0;
	% Local Parameter:   id =  ep0421, name = ep0421
	reaction_r_0369_ep0421=-1.0;

	reaction_r_0369=compartment_cell*reaction_r_0369_v0*(1+reaction_r_0369_ep1072*log(x(254)/global_par_ic1072)+reaction_r_0369_ep0467*log(x(139)/global_par_ic0467)+reaction_r_0369_ep0332*log(x(91)/global_par_ic0332)+reaction_r_0369_ep0421*log(x(132)/global_par_ic0421));

% Reaction: id = r_0370, name = aspartate transaminase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0370_FLUX_VALUE=0.487066600184804;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0370_v0=0.487066600184804;
	% Local Parameter:   id =  ep1095, name = ep1095
	reaction_r_0370_ep1095=1.0;
	% Local Parameter:   id =  ep1399, name = ep1399
	reaction_r_0370_ep1399=1.0;
	% Local Parameter:   id =  ep0233, name = ep0233
	reaction_r_0370_ep0233=-1.0;
	% Local Parameter:   id =  ep1072, name = ep1072
	reaction_r_0370_ep1072=-1.0;

	reaction_r_0370=compartment_cell*reaction_r_0370_v0*(1+reaction_r_0370_ep1095*log(x(259)/global_par_ic1095)+reaction_r_0370_ep1399*log(x(329)/global_par_ic1399)+reaction_r_0370_ep0233*log(x(52)/global_par_ic0233)+reaction_r_0370_ep1072*log(x(254)/global_par_ic1072));

% Reaction: id = r_0371, name = aspartate-semialdehyde dehydrogenase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0371_FLUX_VALUE=0.230942094325926;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0371_v0=0.230942094325926;
	% Local Parameter:   id =  ep0332, name = ep0332
	reaction_r_0371_ep0332=1.0;
	% Local Parameter:   id =  ep1336, name = ep1336
	reaction_r_0371_ep1336=1.0;
	% Local Parameter:   id =  ep1075, name = ep1075
	reaction_r_0371_ep1075=-1.0;
	% Local Parameter:   id =  ep1335, name = ep1335
	reaction_r_0371_ep1335=-1.0;
	% Local Parameter:   id =  ep1430, name = ep1430
	reaction_r_0371_ep1430=-1.0;

	reaction_r_0371=compartment_cell*reaction_r_0371_v0*(1+reaction_r_0371_ep0332*log(x(91)/global_par_ic0332)+reaction_r_0371_ep1336*log(x(317)/global_par_ic1336)+reaction_r_0371_ep1075*log(x(255)/global_par_ic1075)+reaction_r_0371_ep1335*log(x(316)/global_par_ic1335)+reaction_r_0371_ep1430*log(x(336)/global_par_ic1430));

% Reaction: id = r_0374, name = ATP phosphoribosyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0374_FLUX_VALUE=0.0131230753965474;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0374_v0=0.0131230753965474;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_0374_ep0467=1.0;
	% Local Parameter:   id =  ep0360, name = ep0360
	reaction_r_0374_ep0360=1.0;
	% Local Parameter:   id =  ep0783, name = ep0783
	reaction_r_0374_ep0783=-1.0;
	% Local Parameter:   id =  ep0099, name = ep0099
	reaction_r_0374_ep0099=-1.0;

	reaction_r_0374=compartment_cell*reaction_r_0374_v0*(1+reaction_r_0374_ep0467*log(x(139)/global_par_ic0467)+reaction_r_0374_ep0360*log(x(107)/global_par_ic0360)+reaction_r_0374_ep0783*log(x(198)/global_par_ic0783)+reaction_r_0374_ep0099*log(x(26)/global_par_ic0099));

% Reaction: id = r_0383, name = Biotin synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0383_FLUX_VALUE=2.77033467884759E-7;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0383_v0=2.77033467884759E-7;
	% Local Parameter:   id =  ep0378, name = ep0378
	reaction_r_0383_ep0378=1.0;
	% Local Parameter:   id =  ep1552, name = ep1552
	reaction_r_0383_ep1552=1.0;
	% Local Parameter:   id =  ep0755, name = ep0755
	reaction_r_0383_ep0755=1.0;
	% Local Parameter:   id =  ep0377, name = ep0377
	reaction_r_0383_ep0377=-1.0;
	% Local Parameter:   id =  ep0476, name = ep0476
	reaction_r_0383_ep0476=-1.0;
	% Local Parameter:   id =  ep0333, name = ep0333
	reaction_r_0383_ep0333=-1.0;
	% Local Parameter:   id =  ep1141, name = ep1141
	reaction_r_0383_ep1141=-1.0;

	reaction_r_0383=compartment_cell*reaction_r_0383_v0*(1+reaction_r_0383_ep0378*log(x(119)/global_par_ic0378)+reaction_r_0383_ep1552*log(x(358)/global_par_ic1552)+reaction_r_0383_ep0755*log(x(190)/global_par_ic0755)+reaction_r_0383_ep0377*log(x(118)/global_par_ic0377)+reaction_r_0383_ep0476*log(x(142)/global_par_ic0476)+reaction_r_0383_ep0333*log(x(92)/global_par_ic0333)+reaction_r_0383_ep1141*log(x(274)/global_par_ic1141));

% Reaction: id = r_0384, name = bis-molybdenum cofactor synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0384_FLUX_VALUE=1.68990415703956E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0384_v0=1.68990415703956E-5;
	% Local Parameter:   id =  ep1264, name = ep1264
	reaction_r_0384_ep1264=1.0;
	% Local Parameter:   id =  ep0420, name = ep0420
	reaction_r_0384_ep0420=1.0;
	% Local Parameter:   id =  ep0454, name = ep0454
	reaction_r_0384_ep0454=-1.0;
	% Local Parameter:   id =  ep0479, name = ep0479
	reaction_r_0384_ep0479=-1.0;
	% Local Parameter:   id =  ep0579, name = ep0579
	reaction_r_0384_ep0579=-1.0;

	reaction_r_0384=compartment_cell*reaction_r_0384_v0*(1+reaction_r_0384_ep1264*log(x(297)/global_par_ic1264)+reaction_r_0384_ep0420*log(x(131)/global_par_ic0420)+reaction_r_0384_ep0454*log(x(137)/global_par_ic0454)+reaction_r_0384_ep0479*log(x(143)/global_par_ic0479)+reaction_r_0384_ep0579*log(x(166)/global_par_ic0579));

% Reaction: id = r_0385, name = bis-molybdopterin guanine dinucleotide synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0385_FLUX_VALUE=1.68990415703956E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0385_v0=1.68990415703956E-5;
	% Local Parameter:   id =  ep0481, name = ep0481
	reaction_r_0385_ep0481=1.0;
	% Local Parameter:   id =  ep0945, name = ep0945
	reaction_r_0385_ep0945=1.0;
	% Local Parameter:   id =  ep0480, name = ep0480
	reaction_r_0385_ep0480=-1.0;
	% Local Parameter:   id =  ep0783, name = ep0783
	reaction_r_0385_ep0783=-1.0;

	reaction_r_0385=compartment_cell*reaction_r_0385_v0*(1+reaction_r_0385_ep0481*log(x(145)/global_par_ic0481)+reaction_r_0385_ep0945*log(x(229)/global_par_ic0945)+reaction_r_0385_ep0480*log(x(144)/global_par_ic0480)+reaction_r_0385_ep0783*log(x(198)/global_par_ic0783));

% Reaction: id = r_0386, name = bis-molybdopterin guanine dinucleotide synthase (single GDP)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0386_FLUX_VALUE=1.68990415703956E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0386_v0=1.68990415703956E-5;
	% Local Parameter:   id =  ep0479, name = ep0479
	reaction_r_0386_ep0479=1.0;
	% Local Parameter:   id =  ep0945, name = ep0945
	reaction_r_0386_ep0945=1.0;
	% Local Parameter:   id =  ep0481, name = ep0481
	reaction_r_0386_ep0481=-1.0;
	% Local Parameter:   id =  ep0783, name = ep0783
	reaction_r_0386_ep0783=-1.0;

	reaction_r_0386=compartment_cell*reaction_r_0386_v0*(1+reaction_r_0386_ep0479*log(x(143)/global_par_ic0479)+reaction_r_0386_ep0945*log(x(229)/global_par_ic0945)+reaction_r_0386_ep0481*log(x(145)/global_par_ic0481)+reaction_r_0386_ep0783*log(x(198)/global_par_ic0783));

% Reaction: id = r_0388, name = Carbamate kinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0388_FLUX_VALUE=0.0867932004720827;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0388_v0=0.0867932004720827;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_0388_ep0467=1.0;
	% Local Parameter:   id =  ep0543, name = ep0543
	reaction_r_0388_ep0543=1.0;
	% Local Parameter:   id =  ep0451, name = ep0451
	reaction_r_0388_ep0451=1.0;
	% Local Parameter:   id =  ep0421, name = ep0421
	reaction_r_0388_ep0421=-1.0;
	% Local Parameter:   id =  ep0502, name = ep0502
	reaction_r_0388_ep0502=-1.0;

	reaction_r_0388=compartment_cell*reaction_r_0388_v0*(1+reaction_r_0388_ep0467*log(x(139)/global_par_ic0467)+reaction_r_0388_ep0543*log(x(160)/global_par_ic0543)+reaction_r_0388_ep0451*log(x(136)/global_par_ic0451)+reaction_r_0388_ep0421*log(x(132)/global_par_ic0421)+reaction_r_0388_ep0502*log(x(149)/global_par_ic0502));

% Reaction: id = r_0418, name = CDP-diacylglycerol synthetase (n-C16:0)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0418_FLUX_VALUE=0.00884013797559549;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0418_v0=0.00884013797559549;
	% Local Parameter:   id =  ep0575, name = ep0575
	reaction_r_0418_ep0575=1.0;
	% Local Parameter:   id =  ep0075, name = ep0075
	reaction_r_0418_ep0075=1.0;
	% Local Parameter:   id =  ep0513, name = ep0513
	reaction_r_0418_ep0513=-1.0;
	% Local Parameter:   id =  ep0783, name = ep0783
	reaction_r_0418_ep0783=-1.0;

	reaction_r_0418=compartment_cell*reaction_r_0418_v0*(1+reaction_r_0418_ep0575*log(x(165)/global_par_ic0575)+reaction_r_0418_ep0075*log(x(22)/global_par_ic0075)+reaction_r_0418_ep0513*log(x(152)/global_par_ic0513)+reaction_r_0418_ep0783*log(x(198)/global_par_ic0783));

% Reaction: id = r_0419, name = CDP-diacylglycerol synthetase (n-C16:1)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0419_FLUX_VALUE=0.0104178435779464;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0419_v0=0.0104178435779464;
	% Local Parameter:   id =  ep0575, name = ep0575
	reaction_r_0419_ep0575=1.0;
	% Local Parameter:   id =  ep0073, name = ep0073
	reaction_r_0419_ep0073=1.0;
	% Local Parameter:   id =  ep0512, name = ep0512
	reaction_r_0419_ep0512=-1.0;
	% Local Parameter:   id =  ep0783, name = ep0783
	reaction_r_0419_ep0783=-1.0;

	reaction_r_0419=compartment_cell*reaction_r_0419_v0*(1+reaction_r_0419_ep0575*log(x(165)/global_par_ic0575)+reaction_r_0419_ep0073*log(x(21)/global_par_ic0073)+reaction_r_0419_ep0512*log(x(151)/global_par_ic0512)+reaction_r_0419_ep0783*log(x(198)/global_par_ic0783));

% Reaction: id = r_0423, name = chorismate mutase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0423_FLUX_VALUE=0.0447994977198517;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0423_v0=0.0447994977198517;
	% Local Parameter:   id =  ep0526, name = ep0526
	reaction_r_0423_ep0526=1.0;
	% Local Parameter:   id =  ep1497, name = ep1497
	reaction_r_0423_ep1497=-1.0;

	reaction_r_0423=compartment_cell*reaction_r_0423_v0*(1+reaction_r_0423_ep0526*log(x(154)/global_par_ic0526)+reaction_r_0423_ep1497*log(x(346)/global_par_ic1497));

% Reaction: id = r_0424, name = Chorismate pyruvate lyase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0424_FLUX_VALUE=3.08892317229363E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0424_v0=3.08892317229363E-5;
	% Local Parameter:   id =  ep0526, name = ep0526
	reaction_r_0424_ep0526=1.0;
	% Local Parameter:   id =  ep0325, name = ep0325
	reaction_r_0424_ep0325=-1.0;
	% Local Parameter:   id =  ep1531, name = ep1531
	reaction_r_0424_ep1531=-1.0;

	reaction_r_0424=compartment_cell*reaction_r_0424_v0*(1+reaction_r_0424_ep0526*log(x(154)/global_par_ic0526)+reaction_r_0424_ep0325*log(x(87)/global_par_ic0325)+reaction_r_0424_ep1531*log(x(352)/global_par_ic1531));

% Reaction: id = r_0425, name = chorismate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0425_FLUX_VALUE=0.0527963458177373;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0425_v0=0.0527963458177373;
	% Local Parameter:   id =  ep0359, name = ep0359
	reaction_r_0425_ep0359=1.0;
	% Local Parameter:   id =  ep0526, name = ep0526
	reaction_r_0425_ep0526=-1.0;
	% Local Parameter:   id =  ep1430, name = ep1430
	reaction_r_0425_ep1430=-1.0;

	reaction_r_0425=compartment_cell*reaction_r_0425_v0*(1+reaction_r_0425_ep0359*log(x(106)/global_par_ic0359)+reaction_r_0425_ep0526*log(x(154)/global_par_ic0526)+reaction_r_0425_ep1430*log(x(336)/global_par_ic1430));

% Reaction: id = r_0428, name = citrate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0428_FLUX_VALUE=0.148949399052133;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0428_v0=0.148949399052133;
	% Local Parameter:   id =  ep0395, name = ep0395
	reaction_r_0428_ep0395=1.0;
	% Local Parameter:   id =  ep1399, name = ep1399
	reaction_r_0428_ep1399=1.0;
	% Local Parameter:   id =  ep0536, name = ep0536
	reaction_r_0428_ep0536=-1.0;
	% Local Parameter:   id =  ep0555, name = ep0555
	reaction_r_0428_ep0555=-1.0;

	reaction_r_0428=compartment_cell*reaction_r_0428_v0*(1+reaction_r_0428_ep0395*log(x(125)/global_par_ic0395)+reaction_r_0428_ep1399*log(x(329)/global_par_ic1399)+reaction_r_0428_ep0536*log(x(157)/global_par_ic0536)+reaction_r_0428_ep0555*log(x(162)/global_par_ic0555));

% Reaction: id = r_0436, name = coproporphyrinogen oxidase (O2 required)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0436_FLUX_VALUE=3.08892317225085E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0436_v0=3.08892317225085E-5;
	% Local Parameter:   id =  ep0565, name = ep0565
	reaction_r_0436_ep0565=1.0;
	% Local Parameter:   id =  ep1372, name = ep1372
	reaction_r_0436_ep1372=1.0;
	% Local Parameter:   id =  ep0543, name = ep0543
	reaction_r_0436_ep0543=-2.0;
	% Local Parameter:   id =  ep1512, name = ep1512
	reaction_r_0436_ep1512=-1.0;

	reaction_r_0436=compartment_cell*reaction_r_0436_v0*(1+reaction_r_0436_ep0565*log(x(163)/global_par_ic0565)+reaction_r_0436_ep1372*log(x(324)/global_par_ic1372)+reaction_r_0436_ep0543*log(x(160)/global_par_ic0543)+reaction_r_0436_ep1512*log(x(349)/global_par_ic1512));

% Reaction: id = r_0440, name = CTP synthase (glutamine)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0440_FLUX_VALUE=0.0222347061711993;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0440_v0=0.0222347061711993;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_0440_ep0467=1.0;
	% Local Parameter:   id =  ep1101, name = ep1101
	reaction_r_0440_ep1101=1.0;
	% Local Parameter:   id =  ep1792, name = ep1792
	reaction_r_0440_ep1792=1.0;
	% Local Parameter:   id =  ep0421, name = ep0421
	reaction_r_0440_ep0421=-1.0;
	% Local Parameter:   id =  ep0575, name = ep0575
	reaction_r_0440_ep0575=-1.0;
	% Local Parameter:   id =  ep1095, name = ep1095
	reaction_r_0440_ep1095=-1.0;
	% Local Parameter:   id =  ep1430, name = ep1430
	reaction_r_0440_ep1430=-1.0;

	reaction_r_0440=compartment_cell*reaction_r_0440_v0*(1+reaction_r_0440_ep0467*log(x(139)/global_par_ic0467)+reaction_r_0440_ep1101*log(x(263)/global_par_ic1101)+reaction_r_0440_ep1792*log(x(400)/global_par_ic1792)+reaction_r_0440_ep0421*log(x(132)/global_par_ic0421)+reaction_r_0440_ep0575*log(x(165)/global_par_ic0575)+reaction_r_0440_ep1095*log(x(259)/global_par_ic1095)+reaction_r_0440_ep1430*log(x(336)/global_par_ic1430));

% Reaction: id = r_0445, name = cyclic pyranopterin monophosphate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0445_FLUX_VALUE=3.37980831407913E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0445_v0=3.37980831407913E-5;
	% Local Parameter:   id =  ep0945, name = ep0945
	reaction_r_0445_ep0945=1.0;
	% Local Parameter:   id =  ep0585, name = ep0585
	reaction_r_0445_ep0585=-1.0;
	% Local Parameter:   id =  ep0783, name = ep0783
	reaction_r_0445_ep0783=-1.0;

	reaction_r_0445=compartment_cell*reaction_r_0445_v0*(1+reaction_r_0445_ep0945*log(x(229)/global_par_ic0945)+reaction_r_0445_ep0585*log(x(167)/global_par_ic0585)+reaction_r_0445_ep0783*log(x(198)/global_par_ic0783));

% Reaction: id = r_0450, name = cystathionine b-lyase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0450_FLUX_VALUE=0.0213211883092039;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0450_v0=0.0213211883092039;
	% Local Parameter:   id =  ep1082, name = ep1082
	reaction_r_0450_ep1082=1.0;
	% Local Parameter:   id =  ep1112, name = ep1112
	reaction_r_0450_ep1112=-1.0;
	% Local Parameter:   id =  ep0451, name = ep0451
	reaction_r_0450_ep0451=-1.0;
	% Local Parameter:   id =  ep1531, name = ep1531
	reaction_r_0450_ep1531=-1.0;

	reaction_r_0450=compartment_cell*reaction_r_0450_v0*(1+reaction_r_0450_ep1082*log(x(257)/global_par_ic1082)+reaction_r_0450_ep1112*log(x(268)/global_par_ic1112)+reaction_r_0450_ep0451*log(x(136)/global_par_ic0451)+reaction_r_0450_ep1531*log(x(352)/global_par_ic1531));

% Reaction: id = r_0452, name = cysteine synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0452_FLUX_VALUE=0.0343363591698377;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0452_v0=0.0343363591698377;
	% Local Parameter:   id =  ep1358, name = ep1358
	reaction_r_0452_ep1358=1.0;
	% Local Parameter:   id =  ep0994, name = ep0994
	reaction_r_0452_ep0994=1.0;
	% Local Parameter:   id =  ep0384, name = ep0384
	reaction_r_0452_ep0384=-1.0;
	% Local Parameter:   id =  ep1083, name = ep1083
	reaction_r_0452_ep1083=-1.0;

	reaction_r_0452=compartment_cell*reaction_r_0452_v0*(1+reaction_r_0452_ep1358*log(x(319)/global_par_ic1358)+reaction_r_0452_ep0994*log(x(235)/global_par_ic0994)+reaction_r_0452_ep0384*log(x(122)/global_par_ic0384)+reaction_r_0452_ep1083*log(x(258)/global_par_ic1083));

% Reaction: id = r_0457, name = cytidylate kinase (CMP)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0457_FLUX_VALUE=0.0250597549648415;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0457_v0=0.0250597549648415;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_0457_ep0467=1.0;
	% Local Parameter:   id =  ep0539, name = ep0539
	reaction_r_0457_ep0539=1.0;
	% Local Parameter:   id =  ep0421, name = ep0421
	reaction_r_0457_ep0421=-1.0;
	% Local Parameter:   id =  ep0510, name = ep0510
	reaction_r_0457_ep0510=-1.0;

	reaction_r_0457=compartment_cell*reaction_r_0457_v0*(1+reaction_r_0457_ep0467*log(x(139)/global_par_ic0467)+reaction_r_0457_ep0539*log(x(158)/global_par_ic0539)+reaction_r_0457_ep0421*log(x(132)/global_par_ic0421)+reaction_r_0457_ep0510*log(x(150)/global_par_ic0510));

% Reaction: id = r_0463, name = D-alanine-D-alanine ligase (reversible)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0463_FLUX_VALUE=0.00384799487561516;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0463_v0=0.00384799487561516;
	% Local Parameter:   id =  ep0600, name = ep0600
	reaction_r_0463_ep0600=2.0;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_0463_ep0467=1.0;
	% Local Parameter:   id =  ep0421, name = ep0421
	reaction_r_0463_ep0421=-1.0;
	% Local Parameter:   id =  ep0603, name = ep0603
	reaction_r_0463_ep0603=-1.0;
	% Local Parameter:   id =  ep1430, name = ep1430
	reaction_r_0463_ep1430=-1.0;

	reaction_r_0463=compartment_cell*reaction_r_0463_v0*(1+reaction_r_0463_ep0600*log(x(169)/global_par_ic0600)+reaction_r_0463_ep0467*log(x(139)/global_par_ic0467)+reaction_r_0463_ep0421*log(x(132)/global_par_ic0421)+reaction_r_0463_ep0603*log(x(170)/global_par_ic0603)+reaction_r_0463_ep1430*log(x(336)/global_par_ic1430));

% Reaction: id = r_0488, name = dephospho-CoA kinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0488_FLUX_VALUE=7.97856388897518E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0488_v0=7.97856388897518E-5;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_0488_ep0467=1.0;
	% Local Parameter:   id =  ep0754, name = ep0754
	reaction_r_0488_ep0754=1.0;
	% Local Parameter:   id =  ep0421, name = ep0421
	reaction_r_0488_ep0421=-1.0;
	% Local Parameter:   id =  ep0555, name = ep0555
	reaction_r_0488_ep0555=-1.0;

	reaction_r_0488=compartment_cell*reaction_r_0488_v0*(1+reaction_r_0488_ep0467*log(x(139)/global_par_ic0467)+reaction_r_0488_ep0754*log(x(189)/global_par_ic0754)+reaction_r_0488_ep0421*log(x(132)/global_par_ic0421)+reaction_r_0488_ep0555*log(x(162)/global_par_ic0555));

% Reaction: id = r_0489, name = dethiobiotin synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0489_FLUX_VALUE=2.77033467884759E-7;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0489_v0=2.77033467884759E-7;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_0489_ep0467=1.0;
	% Local Parameter:   id =  ep0543, name = ep0543
	reaction_r_0489_ep0543=1.0;
	% Local Parameter:   id =  ep0371, name = ep0371
	reaction_r_0489_ep0371=1.0;
	% Local Parameter:   id =  ep0421, name = ep0421
	reaction_r_0489_ep0421=-1.0;
	% Local Parameter:   id =  ep0755, name = ep0755
	reaction_r_0489_ep0755=-1.0;
	% Local Parameter:   id =  ep1430, name = ep1430
	reaction_r_0489_ep1430=-1.0;

	reaction_r_0489=compartment_cell*reaction_r_0489_v0*(1+reaction_r_0489_ep0467*log(x(139)/global_par_ic0467)+reaction_r_0489_ep0543*log(x(160)/global_par_ic0543)+reaction_r_0489_ep0371*log(x(115)/global_par_ic0371)+reaction_r_0489_ep0421*log(x(132)/global_par_ic0421)+reaction_r_0489_ep0755*log(x(190)/global_par_ic0755)+reaction_r_0489_ep1430*log(x(336)/global_par_ic1430));

% Reaction: id = r_0498, name = diaminohydroxyphosphoribosylaminopryrimidine deaminase (25drapp)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0498_FLUX_VALUE=6.17784634458656E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0498_v0=6.17784634458656E-5;
	% Local Parameter:   id =  ep0160, name = ep0160
	reaction_r_0498_ep0160=1.0;
	% Local Parameter:   id =  ep0347, name = ep0347
	reaction_r_0498_ep0347=-1.0;
	% Local Parameter:   id =  ep0451, name = ep0451
	reaction_r_0498_ep0451=-1.0;

	reaction_r_0498=compartment_cell*reaction_r_0498_v0*(1+reaction_r_0498_ep0160*log(x(37)/global_par_ic0160)+reaction_r_0498_ep0347*log(x(103)/global_par_ic0347)+reaction_r_0498_ep0451*log(x(136)/global_par_ic0451));

% Reaction: id = r_0499, name = diaminopimelate decarboxylase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0499_FLUX_VALUE=0.0475389431717989;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0499_v0=0.0475389431717989;
	% Local Parameter:   id =  ep1242, name = ep1242
	reaction_r_0499_ep1242=1.0;
	% Local Parameter:   id =  ep0543, name = ep0543
	reaction_r_0499_ep0543=-1.0;
	% Local Parameter:   id =  ep1131, name = ep1131
	reaction_r_0499_ep1131=-1.0;

	reaction_r_0499=compartment_cell*reaction_r_0499_v0*(1+reaction_r_0499_ep1242*log(x(290)/global_par_ic1242)+reaction_r_0499_ep0543*log(x(160)/global_par_ic0543)+reaction_r_0499_ep1131*log(x(272)/global_par_ic1131));

% Reaction: id = r_0500, name = diaminopimelate epimerase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0500_FLUX_VALUE=0.0513869380474194;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0500_v0=0.0513869380474194;
	% Local Parameter:   id =  ep1211, name = ep1211
	reaction_r_0500_ep1211=1.0;
	% Local Parameter:   id =  ep1242, name = ep1242
	reaction_r_0500_ep1242=-1.0;

	reaction_r_0500=compartment_cell*reaction_r_0500_v0*(1+reaction_r_0500_ep1211*log(x(283)/global_par_ic1211)+reaction_r_0500_ep1242*log(x(290)/global_par_ic1242));

% Reaction: id = r_0501, name = dihydoorotic acid dehydrogenase (quinone8)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0501_FLUX_VALUE=0.0229099752504581;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0501_v0=0.0229099752504581;
	% Local Parameter:   id =  ep0052, name = ep0052
	reaction_r_0501_ep0052=1.0;
	% Local Parameter:   id =  ep1732, name = ep1732
	reaction_r_0501_ep1732=1.0;
	% Local Parameter:   id =  ep1394, name = ep1394
	reaction_r_0501_ep1394=-1.0;
	% Local Parameter:   id =  ep1731, name = ep1731
	reaction_r_0501_ep1731=-1.0;

	reaction_r_0501=compartment_cell*reaction_r_0501_v0*(1+reaction_r_0501_ep0052*log(x(20)/global_par_ic0052)+reaction_r_0501_ep1732*log(x(382)/global_par_ic1732)+reaction_r_0501_ep1394*log(x(327)/global_par_ic1394)+reaction_r_0501_ep1731*log(x(381)/global_par_ic1731));

% Reaction: id = r_0502, name = dihydrodipicolinate reductase (NADPH)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0502_FLUX_VALUE=0.0513869380474194;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0502_v0=0.0513869380474194;
	% Local Parameter:   id =  ep0155, name = ep0155
	reaction_r_0502_ep0155=1.0;
	% Local Parameter:   id =  ep1336, name = ep1336
	reaction_r_0502_ep1336=1.0;
	% Local Parameter:   id =  ep1335, name = ep1335
	reaction_r_0502_ep1335=-1.0;
	% Local Parameter:   id =  ep0148, name = ep0148
	reaction_r_0502_ep0148=-1.0;

	reaction_r_0502=compartment_cell*reaction_r_0502_v0*(1+reaction_r_0502_ep0155*log(x(36)/global_par_ic0155)+reaction_r_0502_ep1336*log(x(317)/global_par_ic1336)+reaction_r_0502_ep1335*log(x(316)/global_par_ic1335)+reaction_r_0502_ep0148*log(x(34)/global_par_ic0148));

% Reaction: id = r_0503, name = dihydrodipicolinate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0503_FLUX_VALUE=0.0513869380474194;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0503_v0=0.0513869380474194;
	% Local Parameter:   id =  ep1075, name = ep1075
	reaction_r_0503_ep1075=1.0;
	% Local Parameter:   id =  ep1531, name = ep1531
	reaction_r_0503_ep1531=1.0;
	% Local Parameter:   id =  ep0155, name = ep0155
	reaction_r_0503_ep0155=-1.0;

	reaction_r_0503=compartment_cell*reaction_r_0503_v0*(1+reaction_r_0503_ep1075*log(x(255)/global_par_ic1075)+reaction_r_0503_ep1531*log(x(352)/global_par_ic1531)+reaction_r_0503_ep0155*log(x(36)/global_par_ic0155));

% Reaction: id = r_0504, name = dihydrofolate reductase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0504_FLUX_VALUE=0.00371765062874906;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0504_v0=0.00371765062874906;
	% Local Parameter:   id =  ep0372, name = ep0372
	reaction_r_0504_ep0372=1.0;
	% Local Parameter:   id =  ep1336, name = ep1336
	reaction_r_0504_ep1336=1.0;
	% Local Parameter:   id =  ep1335, name = ep1335
	reaction_r_0504_ep1335=-1.0;
	% Local Parameter:   id =  ep0337, name = ep0337
	reaction_r_0504_ep0337=-1.0;

	reaction_r_0504=compartment_cell*reaction_r_0504_v0*(1+reaction_r_0504_ep0372*log(x(116)/global_par_ic0372)+reaction_r_0504_ep1336*log(x(317)/global_par_ic1336)+reaction_r_0504_ep1335*log(x(316)/global_par_ic1335)+reaction_r_0504_ep0337*log(x(96)/global_par_ic0337));

% Reaction: id = r_0505, name = dihydrofolate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0505_FLUX_VALUE=9.26676951688061E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0505_v0=9.26676951688061E-5;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_0505_ep0467=1.0;
	% Local Parameter:   id =  ep0767, name = ep0767
	reaction_r_0505_ep0767=1.0;
	% Local Parameter:   id =  ep1095, name = ep1095
	reaction_r_0505_ep1095=1.0;
	% Local Parameter:   id =  ep0421, name = ep0421
	reaction_r_0505_ep0421=-1.0;
	% Local Parameter:   id =  ep0372, name = ep0372
	reaction_r_0505_ep0372=-1.0;
	% Local Parameter:   id =  ep1430, name = ep1430
	reaction_r_0505_ep1430=-1.0;

	reaction_r_0505=compartment_cell*reaction_r_0505_v0*(1+reaction_r_0505_ep0467*log(x(139)/global_par_ic0467)+reaction_r_0505_ep0767*log(x(194)/global_par_ic0767)+reaction_r_0505_ep1095*log(x(259)/global_par_ic1095)+reaction_r_0505_ep0421*log(x(132)/global_par_ic0421)+reaction_r_0505_ep0372*log(x(116)/global_par_ic0372)+reaction_r_0505_ep1430*log(x(336)/global_par_ic1430));

% Reaction: id = r_0507, name = dihydroneopterin aldolase reversible	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0507_FLUX_VALUE=9.26676951688061E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0507_v0=9.26676951688061E-5;
	% Local Parameter:   id =  ep0765, name = ep0765
	reaction_r_0507_ep0765=1.0;
	% Local Parameter:   id =  ep0367, name = ep0367
	reaction_r_0507_ep0367=-1.0;
	% Local Parameter:   id =  ep0936, name = ep0936
	reaction_r_0507_ep0936=-1.0;

	reaction_r_0507=compartment_cell*reaction_r_0507_v0*(1+reaction_r_0507_ep0765*log(x(192)/global_par_ic0765)+reaction_r_0507_ep0367*log(x(111)/global_par_ic0367)+reaction_r_0507_ep0936*log(x(225)/global_par_ic0936));

% Reaction: id = r_0510, name = Dihydroneopterin triphosphate pyrophosphatase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0510_FLUX_VALUE=9.26676951688061E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0510_v0=9.26676951688061E-5;
	% Local Parameter:   id =  ep0191, name = ep0191
	reaction_r_0510_ep0191=1.0;
	% Local Parameter:   id =  ep0766, name = ep0766
	reaction_r_0510_ep0766=-1.0;
	% Local Parameter:   id =  ep0783, name = ep0783
	reaction_r_0510_ep0783=-1.0;

	reaction_r_0510=compartment_cell*reaction_r_0510_v0*(1+reaction_r_0510_ep0191*log(x(39)/global_par_ic0191)+reaction_r_0510_ep0766*log(x(193)/global_par_ic0766)+reaction_r_0510_ep0783*log(x(198)/global_par_ic0783));

% Reaction: id = r_0511, name = dihydroorotase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0511_FLUX_VALUE=0.0458199505005817;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0511_v0=0.0458199505005817;
	% Local Parameter:   id =  ep1312, name = ep1312
	reaction_r_0511_ep1312=1.0;
	% Local Parameter:   id =  ep0052, name = ep0052
	reaction_r_0511_ep0052=-1.0;

	reaction_r_0511=compartment_cell*reaction_r_0511_v0*(1+reaction_r_0511_ep1312*log(x(306)/global_par_ic1312)+reaction_r_0511_ep0052*log(x(20)/global_par_ic0052));

% Reaction: id = r_0512, name = dihydroorotic acid (menaquinone-8)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0512_FLUX_VALUE=0.0229099752501236;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0512_v0=0.0229099752501236;
	% Local Parameter:   id =  ep0052, name = ep0052
	reaction_r_0512_ep0052=1.0;
	% Local Parameter:   id =  ep1240, name = ep1240
	reaction_r_0512_ep1240=1.0;
	% Local Parameter:   id =  ep1239, name = ep1239
	reaction_r_0512_ep1239=-1.0;
	% Local Parameter:   id =  ep1394, name = ep1394
	reaction_r_0512_ep1394=-1.0;

	reaction_r_0512=compartment_cell*reaction_r_0512_v0*(1+reaction_r_0512_ep0052*log(x(20)/global_par_ic0052)+reaction_r_0512_ep1240*log(x(289)/global_par_ic1240)+reaction_r_0512_ep1239*log(x(288)/global_par_ic1239)+reaction_r_0512_ep1394*log(x(327)/global_par_ic1394));

% Reaction: id = r_0515, name = dihydropteroate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0515_FLUX_VALUE=9.26676951688061E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0515_v0=9.26676951688061E-5;
	% Local Parameter:   id =  ep0318, name = ep0318
	reaction_r_0515_ep0318=1.0;
	% Local Parameter:   id =  ep0368, name = ep0368
	reaction_r_0515_ep0368=1.0;
	% Local Parameter:   id =  ep0767, name = ep0767
	reaction_r_0515_ep0767=-1.0;
	% Local Parameter:   id =  ep0783, name = ep0783
	reaction_r_0515_ep0783=-1.0;

	reaction_r_0515=compartment_cell*reaction_r_0515_v0*(1+reaction_r_0515_ep0318*log(x(86)/global_par_ic0318)+reaction_r_0515_ep0368*log(x(112)/global_par_ic0368)+reaction_r_0515_ep0767*log(x(194)/global_par_ic0767)+reaction_r_0515_ep0783*log(x(198)/global_par_ic0783));

% Reaction: id = r_0517, name = dihydroxy-acid dehydratase (2,3-dihydroxy-3-methylbutanoate)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0517_FLUX_VALUE=0.121101856295072;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0517_v0=0.121101856295072;
	% Local Parameter:   id =  ep0017, name = ep0017
	reaction_r_0517_ep0017=1.0;
	% Local Parameter:   id =  ep0282, name = ep0282
	reaction_r_0517_ep0282=-1.0;

	reaction_r_0517=compartment_cell*reaction_r_0517_v0*(1+reaction_r_0517_ep0017*log(x(3)/global_par_ic0017)+reaction_r_0517_ep0282*log(x(67)/global_par_ic0282));

% Reaction: id = r_0518, name = Dihydroxy-acid dehydratase (2,3-dihydroxy-3-methylpentanoate)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0518_FLUX_VALUE=0.0402391112803253;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0518_v0=0.0402391112803253;
	% Local Parameter:   id =  ep0018, name = ep0018
	reaction_r_0518_ep0018=1.0;
	% Local Parameter:   id =  ep0051, name = ep0051
	reaction_r_0518_ep0051=-1.0;

	reaction_r_0518=compartment_cell*reaction_r_0518_v0*(1+reaction_r_0518_ep0018*log(x(4)/global_par_ic0018)+reaction_r_0518_ep0051*log(x(19)/global_par_ic0051));

% Reaction: id = r_0522, name = dimethylallyltranstransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0522_FLUX_VALUE=3.85076521030325E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0522_v0=3.85076521030325E-5;
	% Local Parameter:   id =  ep0779, name = ep0779
	reaction_r_0522_ep0779=1.0;
	% Local Parameter:   id =  ep1028, name = ep1028
	reaction_r_0522_ep1028=1.0;
	% Local Parameter:   id =  ep0903, name = ep0903
	reaction_r_0522_ep0903=-1.0;
	% Local Parameter:   id =  ep0783, name = ep0783
	reaction_r_0522_ep0783=-1.0;

	reaction_r_0522=compartment_cell*reaction_r_0522_v0*(1+reaction_r_0522_ep0779*log(x(197)/global_par_ic0779)+reaction_r_0522_ep1028*log(x(247)/global_par_ic1028)+reaction_r_0522_ep0903*log(x(220)/global_par_ic0903)+reaction_r_0522_ep0783*log(x(198)/global_par_ic0783));

% Reaction: id = r_0532, name = dTMP kinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0532_FLUX_VALUE=0.00362498293358209;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0532_v0=0.00362498293358209;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_0532_ep0467=1.0;
	% Local Parameter:   id =  ep0802, name = ep0802
	reaction_r_0532_ep0802=1.0;
	% Local Parameter:   id =  ep0421, name = ep0421
	reaction_r_0532_ep0421=-1.0;
	% Local Parameter:   id =  ep0795, name = ep0795
	reaction_r_0532_ep0795=-1.0;

	reaction_r_0532=compartment_cell*reaction_r_0532_v0*(1+reaction_r_0532_ep0467*log(x(139)/global_par_ic0467)+reaction_r_0532_ep0802*log(x(203)/global_par_ic0802)+reaction_r_0532_ep0421*log(x(132)/global_par_ic0421)+reaction_r_0532_ep0795*log(x(202)/global_par_ic0795));

% Reaction: id = r_0533, name = dUTP diphosphatase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0533_FLUX_VALUE=0.00362498293355932;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0533_v0=0.00362498293355932;
	% Local Parameter:   id =  ep0810, name = ep0810
	reaction_r_0533_ep0810=1.0;
	% Local Parameter:   id =  ep0807, name = ep0807
	reaction_r_0533_ep0807=-1.0;
	% Local Parameter:   id =  ep0783, name = ep0783
	reaction_r_0533_ep0783=-1.0;

	reaction_r_0533=compartment_cell*reaction_r_0533_v0*(1+reaction_r_0533_ep0810*log(x(206)/global_par_ic0810)+reaction_r_0533_ep0807*log(x(205)/global_par_ic0807)+reaction_r_0533_ep0783*log(x(198)/global_par_ic0783));

% Reaction: id = r_0538, name = enolase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0538_FLUX_VALUE=0.640969334565238;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0538_v0=0.640969334565238;
	% Local Parameter:   id =  ep0675, name = ep0675
	reaction_r_0538_ep0675=1.0;
	% Local Parameter:   id =  ep1484, name = ep1484
	reaction_r_0538_ep1484=-1.0;

	reaction_r_0538=compartment_cell*reaction_r_0538_v0*(1+reaction_r_0538_ep0675*log(x(181)/global_par_ic0675)+reaction_r_0538_ep1484*log(x(341)/global_par_ic1484));

% Reaction: id = r_0563, name = Enoylglutaryl-[ACP] methyl ester reductase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0563_FLUX_VALUE=2.77033467884759E-7;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0563_v0=2.77033467884759E-7;
	% Local Parameter:   id =  ep0812, name = ep0812
	reaction_r_0563_ep0812=1.0;
	% Local Parameter:   id =  ep1336, name = ep1336
	reaction_r_0563_ep1336=1.0;
	% Local Parameter:   id =  ep0910, name = ep0910
	reaction_r_0563_ep0910=-1.0;
	% Local Parameter:   id =  ep1335, name = ep1335
	reaction_r_0563_ep1335=-1.0;

	reaction_r_0563=compartment_cell*reaction_r_0563_v0*(1+reaction_r_0563_ep0812*log(x(207)/global_par_ic0812)+reaction_r_0563_ep1336*log(x(317)/global_par_ic1336)+reaction_r_0563_ep0910*log(x(221)/global_par_ic0910)+reaction_r_0563_ep1335*log(x(316)/global_par_ic1335));

% Reaction: id = r_0564, name = Enoylpimeloyl-[ACP] methyl ester reductase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0564_FLUX_VALUE=2.77033467884759E-7;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0564_v0=2.77033467884759E-7;
	% Local Parameter:   id =  ep0813, name = ep0813
	reaction_r_0564_ep0813=1.0;
	% Local Parameter:   id =  ep1336, name = ep1336
	reaction_r_0564_ep1336=1.0;
	% Local Parameter:   id =  ep1335, name = ep1335
	reaction_r_0564_ep1335=-1.0;
	% Local Parameter:   id =  ep1492, name = ep1492
	reaction_r_0564_ep1492=-1.0;

	reaction_r_0564=compartment_cell*reaction_r_0564_v0*(1+reaction_r_0564_ep0813*log(x(208)/global_par_ic0813)+reaction_r_0564_ep1336*log(x(317)/global_par_ic1336)+reaction_r_0564_ep1335*log(x(316)/global_par_ic1335)+reaction_r_0564_ep1492*log(x(343)/global_par_ic1492));

% Reaction: id = r_0573, name = Erythronate 4-phosphate (4per) dehydrogenase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0573_FLUX_VALUE=3.08892317222495E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0573_v0=3.08892317222495E-5;
	% Local Parameter:   id =  ep0331, name = ep0331
	reaction_r_0573_ep0331=1.0;
	% Local Parameter:   id =  ep1333, name = ep1333
	reaction_r_0573_ep1333=1.0;
	% Local Parameter:   id =  ep1334, name = ep1334
	reaction_r_0573_ep1334=-1.0;
	% Local Parameter:   id =  ep0231, name = ep0231
	reaction_r_0573_ep0231=-1.0;

	reaction_r_0573=compartment_cell*reaction_r_0573_v0*(1+reaction_r_0573_ep0331*log(x(90)/global_par_ic0331)+reaction_r_0573_ep1333*log(x(314)/global_par_ic1333)+reaction_r_0573_ep1334*log(x(315)/global_par_ic1334)+reaction_r_0573_ep0231*log(x(50)/global_par_ic0231));

% Reaction: id = r_0574, name = Erythrose 4-phosphate dehydrogenase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0574_FLUX_VALUE=3.08892317222495E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0574_v0=3.08892317222495E-5;
	% Local Parameter:   id =  ep0621, name = ep0621
	reaction_r_0574_ep0621=1.0;
	% Local Parameter:   id =  ep1333, name = ep1333
	reaction_r_0574_ep1333=1.0;
	% Local Parameter:   id =  ep0331, name = ep0331
	reaction_r_0574_ep0331=-1.0;
	% Local Parameter:   id =  ep1334, name = ep1334
	reaction_r_0574_ep1334=-1.0;

	reaction_r_0574=compartment_cell*reaction_r_0574_v0*(1+reaction_r_0574_ep0621*log(x(173)/global_par_ic0621)+reaction_r_0574_ep1333*log(x(314)/global_par_ic1333)+reaction_r_0574_ep0331*log(x(90)/global_par_ic0331)+reaction_r_0574_ep1334*log(x(315)/global_par_ic1334));

% Reaction: id = r_0576, name = FAD reductase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0576_FLUX_VALUE=0.302798412025661;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0576_v0=0.302798412025661;
	% Local Parameter:   id =  ep0859, name = ep0859
	reaction_r_0576_ep0859=1.0;
	% Local Parameter:   id =  ep1334, name = ep1334
	reaction_r_0576_ep1334=1.0;
	% Local Parameter:   id =  ep0860, name = ep0860
	reaction_r_0576_ep0860=-1.0;
	% Local Parameter:   id =  ep1333, name = ep1333
	reaction_r_0576_ep1333=-1.0;

	reaction_r_0576=compartment_cell*reaction_r_0576_v0*(1+reaction_r_0576_ep0859*log(x(212)/global_par_ic0859)+reaction_r_0576_ep1334*log(x(315)/global_par_ic1334)+reaction_r_0576_ep0860*log(x(213)/global_par_ic0860)+reaction_r_0576_ep1333*log(x(314)/global_par_ic1333));

% Reaction: id = r_0579, name = fatty-acid-CoA thioesterase (dodecanoate)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0579_FLUX_VALUE=0.0107821425888423;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0579_v0=0.0107821425888423;
	% Local Parameter:   id =  ep0790, name = ep0790
	reaction_r_0579_ep0790=1.0;
	% Local Parameter:   id =  ep0555, name = ep0555
	reaction_r_0579_ep0555=-1.0;
	% Local Parameter:   id =  ep0785, name = ep0785
	reaction_r_0579_ep0785=-1.0;

	reaction_r_0579=compartment_cell*reaction_r_0579_v0*(1+reaction_r_0579_ep0790*log(x(201)/global_par_ic0790)+reaction_r_0579_ep0555*log(x(162)/global_par_ic0555)+reaction_r_0579_ep0785*log(x(199)/global_par_ic0785));

% Reaction: id = r_0580, name = fatty-acid-CoA thioesterase (hexadecanoate)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0580_FLUX_VALUE=0.0176802759511998;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0580_v0=0.0176802759511998;
	% Local Parameter:   id =  ep1412, name = ep1412
	reaction_r_0580_ep1412=1.0;
	% Local Parameter:   id =  ep0555, name = ep0555
	reaction_r_0580_ep0555=-1.0;
	% Local Parameter:   id =  ep0971, name = ep0971
	reaction_r_0580_ep0971=-1.0;

	reaction_r_0580=compartment_cell*reaction_r_0580_v0*(1+reaction_r_0580_ep1412*log(x(333)/global_par_ic1412)+reaction_r_0580_ep0555*log(x(162)/global_par_ic0555)+reaction_r_0580_ep0971*log(x(230)/global_par_ic0971));

% Reaction: id = r_0581, name = fatty-acid-CoA thioesterase (hexadecenoate)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0581_FLUX_VALUE=0.0208356871558925;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0581_v0=0.0208356871558925;
	% Local Parameter:   id =  ep0979, name = ep0979
	reaction_r_0581_ep0979=1.0;
	% Local Parameter:   id =  ep0555, name = ep0555
	reaction_r_0581_ep0555=-1.0;
	% Local Parameter:   id =  ep0976, name = ep0976
	reaction_r_0581_ep0976=-1.0;

	reaction_r_0581=compartment_cell*reaction_r_0581_v0*(1+reaction_r_0581_ep0979*log(x(232)/global_par_ic0979)+reaction_r_0581_ep0555*log(x(162)/global_par_ic0555)+reaction_r_0581_ep0976*log(x(231)/global_par_ic0976));

% Reaction: id = r_0602, name = Ferrochelatase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0602_FLUX_VALUE=3.08892317225085E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0602_v0=3.08892317225085E-5;
	% Local Parameter:   id =  ep0838, name = ep0838
	reaction_r_0602_ep0838=1.0;
	% Local Parameter:   id =  ep1511, name = ep1511
	reaction_r_0602_ep1511=1.0;
	% Local Parameter:   id =  ep1508, name = ep1508
	reaction_r_0602_ep1508=-1.0;

	reaction_r_0602=compartment_cell*reaction_r_0602_v0*(1+reaction_r_0602_ep0838*log(x(210)/global_par_ic0838)+reaction_r_0602_ep1511*log(x(348)/global_par_ic1511)+reaction_r_0602_ep1508*log(x(347)/global_par_ic1508));

% Reaction: id = r_0611, name = FMN adenylyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0611_FLUX_VALUE=3.08892317229329E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0611_v0=3.08892317229329E-5;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_0611_ep0467=1.0;
	% Local Parameter:   id =  ep0863, name = ep0863
	reaction_r_0611_ep0863=1.0;
	% Local Parameter:   id =  ep0859, name = ep0859
	reaction_r_0611_ep0859=-1.0;
	% Local Parameter:   id =  ep0783, name = ep0783
	reaction_r_0611_ep0783=-1.0;

	reaction_r_0611=compartment_cell*reaction_r_0611_v0*(1+reaction_r_0611_ep0467*log(x(139)/global_par_ic0467)+reaction_r_0611_ep0863*log(x(216)/global_par_ic0863)+reaction_r_0611_ep0859*log(x(212)/global_par_ic0859)+reaction_r_0611_ep0783*log(x(198)/global_par_ic0783));

% Reaction: id = r_0622, name = formate-tetrahydrofolate ligase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0622_FLUX_VALUE=0.0362397868726823;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0622_v0=0.0362397868726823;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_0622_ep0467=1.0;
	% Local Parameter:   id =  ep0867, name = ep0867
	reaction_r_0622_ep0867=1.0;
	% Local Parameter:   id =  ep0337, name = ep0337
	reaction_r_0622_ep0337=1.0;
	% Local Parameter:   id =  ep0133, name = ep0133
	reaction_r_0622_ep0133=-1.0;
	% Local Parameter:   id =  ep0421, name = ep0421
	reaction_r_0622_ep0421=-1.0;
	% Local Parameter:   id =  ep1430, name = ep1430
	reaction_r_0622_ep1430=-1.0;

	reaction_r_0622=compartment_cell*reaction_r_0622_v0*(1+reaction_r_0622_ep0467*log(x(139)/global_par_ic0467)+reaction_r_0622_ep0867*log(x(217)/global_par_ic0867)+reaction_r_0622_ep0337*log(x(96)/global_par_ic0337)+reaction_r_0622_ep0133*log(x(32)/global_par_ic0133)+reaction_r_0622_ep0421*log(x(132)/global_par_ic0421)+reaction_r_0622_ep1430*log(x(336)/global_par_ic1430));

% Reaction: id = r_0632, name = fumarase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0632_FLUX_VALUE=0.143116459375637;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0632_v0=0.143116459375637;
	% Local Parameter:   id =  ep0875, name = ep0875
	reaction_r_0632_ep0875=1.0;
	% Local Parameter:   id =  ep1138, name = ep1138
	reaction_r_0632_ep1138=-1.0;

	reaction_r_0632=compartment_cell*reaction_r_0632_v0*(1+reaction_r_0632_ep0875*log(x(218)/global_par_ic0875)+reaction_r_0632_ep1138*log(x(273)/global_par_ic1138));

% Reaction: id = r_0648, name = GAR transformylase-T	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0648_FLUX_VALUE=0.0614208132382477;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0648_v0=0.0614208132382477;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_0648_ep0467=1.0;
	% Local Parameter:   id =  ep0867, name = ep0867
	reaction_r_0648_ep0867=1.0;
	% Local Parameter:   id =  ep1318, name = ep1318
	reaction_r_0648_ep1318=1.0;
	% Local Parameter:   id =  ep0421, name = ep0421
	reaction_r_0648_ep0421=-1.0;
	% Local Parameter:   id =  ep1322, name = ep1322
	reaction_r_0648_ep1322=-1.0;
	% Local Parameter:   id =  ep1430, name = ep1430
	reaction_r_0648_ep1430=-1.0;

	reaction_r_0648=compartment_cell*reaction_r_0648_v0*(1+reaction_r_0648_ep0467*log(x(139)/global_par_ic0467)+reaction_r_0648_ep0867*log(x(217)/global_par_ic0867)+reaction_r_0648_ep1318*log(x(309)/global_par_ic1318)+reaction_r_0648_ep0421*log(x(132)/global_par_ic0421)+reaction_r_0648_ep1322*log(x(311)/global_par_ic1322)+reaction_r_0648_ep1430*log(x(336)/global_par_ic1430));

% Reaction: id = r_0655, name = geranyltranstransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0655_FLUX_VALUE=3.85076521030325E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0655_v0=3.85076521030325E-5;
	% Local Parameter:   id =  ep0903, name = ep0903
	reaction_r_0655_ep0903=1.0;
	% Local Parameter:   id =  ep1028, name = ep1028
	reaction_r_0655_ep1028=1.0;
	% Local Parameter:   id =  ep0826, name = ep0826
	reaction_r_0655_ep0826=-1.0;
	% Local Parameter:   id =  ep0783, name = ep0783
	reaction_r_0655_ep0783=-1.0;

	reaction_r_0655=compartment_cell*reaction_r_0655_v0*(1+reaction_r_0655_ep0903*log(x(220)/global_par_ic0903)+reaction_r_0655_ep1028*log(x(247)/global_par_ic1028)+reaction_r_0655_ep0826*log(x(209)/global_par_ic0826)+reaction_r_0655_ep0783*log(x(198)/global_par_ic0783));

% Reaction: id = r_0658, name = glucosamine-1-phosphate N-acetyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0658_FLUX_VALUE=0.0130870610456735;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0658_v0=0.0130870610456735;
	% Local Parameter:   id =  ep0395, name = ep0395
	reaction_r_0658_ep0395=1.0;
	% Local Parameter:   id =  ep0653, name = ep0653
	reaction_r_0658_ep0653=1.0;
	% Local Parameter:   id =  ep1287, name = ep1287
	reaction_r_0658_ep1287=-1.0;
	% Local Parameter:   id =  ep0555, name = ep0555
	reaction_r_0658_ep0555=-1.0;

	reaction_r_0658=compartment_cell*reaction_r_0658_v0*(1+reaction_r_0658_ep0395*log(x(125)/global_par_ic0395)+reaction_r_0658_ep0653*log(x(176)/global_par_ic0653)+reaction_r_0658_ep1287*log(x(302)/global_par_ic1287)+reaction_r_0658_ep0555*log(x(162)/global_par_ic0555));

% Reaction: id = r_0660, name = glucose 6-phosphate dehydrogenase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0660_FLUX_VALUE=0.879863512997714;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0660_v0=0.879863512997714;
	% Local Parameter:   id =  ep0663, name = ep0663
	reaction_r_0660_ep0663=1.0;
	% Local Parameter:   id =  ep1335, name = ep1335
	reaction_r_0660_ep1335=1.0;
	% Local Parameter:   id =  ep0370, name = ep0370
	reaction_r_0660_ep0370=-1.0;
	% Local Parameter:   id =  ep1336, name = ep1336
	reaction_r_0660_ep1336=-1.0;

	reaction_r_0660=compartment_cell*reaction_r_0660_v0*(1+reaction_r_0660_ep0663*log(x(179)/global_par_ic0663)+reaction_r_0660_ep1335*log(x(316)/global_par_ic1335)+reaction_r_0660_ep0370*log(x(114)/global_par_ic0370)+reaction_r_0660_ep1336*log(x(317)/global_par_ic1336));

% Reaction: id = r_0664, name = glucose-6-phosphate isomerase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0664_FLUX_VALUE=0.0545285720060003;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0664_v0=0.0545285720060003;
	% Local Parameter:   id =  ep0663, name = ep0663
	reaction_r_0664_ep0663=1.0;
	% Local Parameter:   id =  ep0627, name = ep0627
	reaction_r_0664_ep0627=-1.0;

	reaction_r_0664=compartment_cell*reaction_r_0664_v0*(1+reaction_r_0664_ep0663*log(x(179)/global_par_ic0663)+reaction_r_0664_ep0627*log(x(175)/global_par_ic0627));

% Reaction: id = r_0673, name = glutamate 5-kinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0673_FLUX_VALUE=0.0306260499279916;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0673_v0=0.0306260499279916;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_0673_ep0467=1.0;
	% Local Parameter:   id =  ep1095, name = ep1095
	reaction_r_0673_ep1095=1.0;
	% Local Parameter:   id =  ep0421, name = ep0421
	reaction_r_0673_ep0421=-1.0;
	% Local Parameter:   id =  ep1099, name = ep1099
	reaction_r_0673_ep1099=-1.0;

	reaction_r_0673=compartment_cell*reaction_r_0673_v0*(1+reaction_r_0673_ep0467*log(x(139)/global_par_ic0467)+reaction_r_0673_ep1095*log(x(259)/global_par_ic1095)+reaction_r_0673_ep0421*log(x(132)/global_par_ic0421)+reaction_r_0673_ep1099*log(x(261)/global_par_ic1099));

% Reaction: id = r_0675, name = glutamate dehydrogenase (NADP)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0675_FLUX_VALUE=1.17502637474065;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0675_v0=1.17502637474065;
	% Local Parameter:   id =  ep0233, name = ep0233
	reaction_r_0675_ep0233=1.0;
	% Local Parameter:   id =  ep1336, name = ep1336
	reaction_r_0675_ep1336=1.0;
	% Local Parameter:   id =  ep0451, name = ep0451
	reaction_r_0675_ep0451=1.0;
	% Local Parameter:   id =  ep1095, name = ep1095
	reaction_r_0675_ep1095=-1.0;
	% Local Parameter:   id =  ep1335, name = ep1335
	reaction_r_0675_ep1335=-1.0;

	reaction_r_0675=compartment_cell*reaction_r_0675_v0*(1+reaction_r_0675_ep0233*log(x(52)/global_par_ic0233)+reaction_r_0675_ep1336*log(x(317)/global_par_ic1336)+reaction_r_0675_ep0451*log(x(136)/global_par_ic0451)+reaction_r_0675_ep1095*log(x(259)/global_par_ic1095)+reaction_r_0675_ep1335*log(x(316)/global_par_ic1335));

% Reaction: id = r_0676, name = glutamate racemase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0676_FLUX_VALUE=0.00384799487562186;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0676_v0=0.00384799487562186;
	% Local Parameter:   id =  ep1095, name = ep1095
	reaction_r_0676_ep1095=1.0;
	% Local Parameter:   id =  ep0671, name = ep0671
	reaction_r_0676_ep0671=-1.0;

	reaction_r_0676=compartment_cell*reaction_r_0676_v0*(1+reaction_r_0676_ep1095*log(x(259)/global_par_ic1095)+reaction_r_0676_ep0671*log(x(180)/global_par_ic0671));

% Reaction: id = r_0678, name = glutamate-1-semialdehyde aminotransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0678_FLUX_VALUE=4.94227707563336E-4;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0678_v0=4.94227707563336E-4;
	% Local Parameter:   id =  ep1098, name = ep1098
	reaction_r_0678_ep1098=1.0;
	% Local Parameter:   id =  ep0345, name = ep0345
	reaction_r_0678_ep0345=-1.0;

	reaction_r_0678=compartment_cell*reaction_r_0678_v0*(1+reaction_r_0678_ep1098*log(x(260)/global_par_ic1098)+reaction_r_0678_ep0345*log(x(101)/global_par_ic0345));

% Reaction: id = r_0679, name = glutamate-5-semialdehyde dehydrogenase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0679_FLUX_VALUE=0.0306260499279916;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0679_v0=0.0306260499279916;
	% Local Parameter:   id =  ep1099, name = ep1099
	reaction_r_0679_ep1099=1.0;
	% Local Parameter:   id =  ep1336, name = ep1336
	reaction_r_0679_ep1336=1.0;
	% Local Parameter:   id =  ep1100, name = ep1100
	reaction_r_0679_ep1100=-1.0;
	% Local Parameter:   id =  ep1335, name = ep1335
	reaction_r_0679_ep1335=-1.0;
	% Local Parameter:   id =  ep1430, name = ep1430
	reaction_r_0679_ep1430=-1.0;

	reaction_r_0679=compartment_cell*reaction_r_0679_v0*(1+reaction_r_0679_ep1099*log(x(261)/global_par_ic1099)+reaction_r_0679_ep1336*log(x(317)/global_par_ic1336)+reaction_r_0679_ep1100*log(x(262)/global_par_ic1100)+reaction_r_0679_ep1335*log(x(316)/global_par_ic1335)+reaction_r_0679_ep1430*log(x(336)/global_par_ic1430));

% Reaction: id = r_0682, name = glutamine phosphoribosyldiphosphate amidotransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0682_FLUX_VALUE=0.0614208132382202;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0682_v0=0.0614208132382202;
	% Local Parameter:   id =  ep1101, name = ep1101
	reaction_r_0682_ep1101=1.0;
	% Local Parameter:   id =  ep0360, name = ep0360
	reaction_r_0682_ep0360=1.0;
	% Local Parameter:   id =  ep1095, name = ep1095
	reaction_r_0682_ep1095=-1.0;
	% Local Parameter:   id =  ep0783, name = ep0783
	reaction_r_0682_ep0783=-1.0;
	% Local Parameter:   id =  ep0361, name = ep0361
	reaction_r_0682_ep0361=-1.0;

	reaction_r_0682=compartment_cell*reaction_r_0682_v0*(1+reaction_r_0682_ep1101*log(x(263)/global_par_ic1101)+reaction_r_0682_ep0360*log(x(107)/global_par_ic0360)+reaction_r_0682_ep1095*log(x(259)/global_par_ic1095)+reaction_r_0682_ep0783*log(x(198)/global_par_ic0783)+reaction_r_0682_ep0361*log(x(108)/global_par_ic0361));

% Reaction: id = r_0683, name = glutamine synthetase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0683_FLUX_VALUE=0.249469746398485;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0683_v0=0.249469746398485;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_0683_ep0467=1.0;
	% Local Parameter:   id =  ep1095, name = ep1095
	reaction_r_0683_ep1095=1.0;
	% Local Parameter:   id =  ep0451, name = ep0451
	reaction_r_0683_ep0451=1.0;
	% Local Parameter:   id =  ep0421, name = ep0421
	reaction_r_0683_ep0421=-1.0;
	% Local Parameter:   id =  ep1101, name = ep1101
	reaction_r_0683_ep1101=-1.0;
	% Local Parameter:   id =  ep1430, name = ep1430
	reaction_r_0683_ep1430=-1.0;

	reaction_r_0683=compartment_cell*reaction_r_0683_v0*(1+reaction_r_0683_ep0467*log(x(139)/global_par_ic0467)+reaction_r_0683_ep1095*log(x(259)/global_par_ic1095)+reaction_r_0683_ep0451*log(x(136)/global_par_ic0451)+reaction_r_0683_ep0421*log(x(132)/global_par_ic0421)+reaction_r_0683_ep1101*log(x(263)/global_par_ic1101)+reaction_r_0683_ep1430*log(x(336)/global_par_ic1430));

% Reaction: id = r_0684, name = glutamine-fructose-6-phosphate transaminase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0684_FLUX_VALUE=0.0130870610456636;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0684_v0=0.0130870610456636;
	% Local Parameter:   id =  ep0627, name = ep0627
	reaction_r_0684_ep0627=1.0;
	% Local Parameter:   id =  ep1101, name = ep1101
	reaction_r_0684_ep1101=1.0;
	% Local Parameter:   id =  ep0654, name = ep0654
	reaction_r_0684_ep0654=-1.0;
	% Local Parameter:   id =  ep1095, name = ep1095
	reaction_r_0684_ep1095=-1.0;

	reaction_r_0684=compartment_cell*reaction_r_0684_v0*(1+reaction_r_0684_ep0627*log(x(175)/global_par_ic0627)+reaction_r_0684_ep1101*log(x(263)/global_par_ic1101)+reaction_r_0684_ep0654*log(x(177)/global_par_ic0654)+reaction_r_0684_ep1095*log(x(259)/global_par_ic1095));

% Reaction: id = r_0686, name = glutamyl-tRNA reductase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0686_FLUX_VALUE=4.94227707563336E-4;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0686_v0=4.94227707563336E-4;
	% Local Parameter:   id =  ep1105, name = ep1105
	reaction_r_0686_ep1105=1.0;
	% Local Parameter:   id =  ep1336, name = ep1336
	reaction_r_0686_ep1336=1.0;
	% Local Parameter:   id =  ep1098, name = ep1098
	reaction_r_0686_ep1098=-1.0;
	% Local Parameter:   id =  ep1335, name = ep1335
	reaction_r_0686_ep1335=-1.0;
	% Local Parameter:   id =  ep1690, name = ep1690
	reaction_r_0686_ep1690=-1.0;

	reaction_r_0686=compartment_cell*reaction_r_0686_v0*(1+reaction_r_0686_ep1105*log(x(264)/global_par_ic1105)+reaction_r_0686_ep1336*log(x(317)/global_par_ic1336)+reaction_r_0686_ep1098*log(x(260)/global_par_ic1098)+reaction_r_0686_ep1335*log(x(316)/global_par_ic1335)+reaction_r_0686_ep1690*log(x(378)/global_par_ic1690));

% Reaction: id = r_0687, name = Glutamyl-tRNA synthetase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0687_FLUX_VALUE=4.94227707563336E-4;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0687_v0=4.94227707563336E-4;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_0687_ep0467=1.0;
	% Local Parameter:   id =  ep1095, name = ep1095
	reaction_r_0687_ep1095=1.0;
	% Local Parameter:   id =  ep1690, name = ep1690
	reaction_r_0687_ep1690=1.0;
	% Local Parameter:   id =  ep0454, name = ep0454
	reaction_r_0687_ep0454=-1.0;
	% Local Parameter:   id =  ep1105, name = ep1105
	reaction_r_0687_ep1105=-1.0;
	% Local Parameter:   id =  ep0783, name = ep0783
	reaction_r_0687_ep0783=-1.0;

	reaction_r_0687=compartment_cell*reaction_r_0687_v0*(1+reaction_r_0687_ep0467*log(x(139)/global_par_ic0467)+reaction_r_0687_ep1095*log(x(259)/global_par_ic1095)+reaction_r_0687_ep1690*log(x(378)/global_par_ic1690)+reaction_r_0687_ep0454*log(x(137)/global_par_ic0454)+reaction_r_0687_ep1105*log(x(264)/global_par_ic1105)+reaction_r_0687_ep0783*log(x(198)/global_par_ic0783));

% Reaction: id = r_0695, name = glyceraldehyde-3-phosphate dehydrogenase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0695_FLUX_VALUE=0.787832256050213;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0695_v0=0.787832256050213;
	% Local Parameter:   id =  ep0913, name = ep0913
	reaction_r_0695_ep0913=1.0;
	% Local Parameter:   id =  ep1333, name = ep1333
	reaction_r_0695_ep1333=1.0;
	% Local Parameter:   id =  ep1430, name = ep1430
	reaction_r_0695_ep1430=1.0;
	% Local Parameter:   id =  ep0307, name = ep0307
	reaction_r_0695_ep0307=-1.0;
	% Local Parameter:   id =  ep1334, name = ep1334
	reaction_r_0695_ep1334=-1.0;

	reaction_r_0695=compartment_cell*reaction_r_0695_v0*(1+reaction_r_0695_ep0913*log(x(222)/global_par_ic0913)+reaction_r_0695_ep1333*log(x(314)/global_par_ic1333)+reaction_r_0695_ep1430*log(x(336)/global_par_ic1430)+reaction_r_0695_ep0307*log(x(79)/global_par_ic0307)+reaction_r_0695_ep1334*log(x(315)/global_par_ic1334));

% Reaction: id = r_0697, name = glycerate kinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0697_FLUX_VALUE=4.63338475844011E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0697_v0=4.63338475844011E-5;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_0697_ep0467=1.0;
	% Local Parameter:   id =  ep0029, name = ep0029
	reaction_r_0697_ep0029=1.0;
	% Local Parameter:   id =  ep0675, name = ep0675
	reaction_r_0697_ep0675=-1.0;
	% Local Parameter:   id =  ep0421, name = ep0421
	reaction_r_0697_ep0421=-1.0;

	reaction_r_0697=compartment_cell*reaction_r_0697_v0*(1+reaction_r_0697_ep0467*log(x(139)/global_par_ic0467)+reaction_r_0697_ep0029*log(x(6)/global_par_ic0029)+reaction_r_0697_ep0675*log(x(181)/global_par_ic0675)+reaction_r_0697_ep0421*log(x(132)/global_par_ic0421));

% Reaction: id = r_0706, name = glycerol-3-phosphate acyltransferase (C16:0)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0706_FLUX_VALUE=0.00884013797513179;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0706_v0=0.00884013797513179;
	% Local Parameter:   id =  ep0920, name = ep0920
	reaction_r_0706_ep0920=1.0;
	% Local Parameter:   id =  ep1411, name = ep1411
	reaction_r_0706_ep1411=1.0;
	% Local Parameter:   id =  ep0121, name = ep0121
	reaction_r_0706_ep0121=-1.0;
	% Local Parameter:   id =  ep0397, name = ep0397
	reaction_r_0706_ep0397=-1.0;

	reaction_r_0706=compartment_cell*reaction_r_0706_v0*(1+reaction_r_0706_ep0920*log(x(223)/global_par_ic0920)+reaction_r_0706_ep1411*log(x(332)/global_par_ic1411)+reaction_r_0706_ep0121*log(x(29)/global_par_ic0121)+reaction_r_0706_ep0397*log(x(126)/global_par_ic0397));

% Reaction: id = r_0707, name = glycerol-3-phosphate acyltransferase (C16:1)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0707_FLUX_VALUE=0.0104178435776096;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0707_v0=0.0104178435776096;
	% Local Parameter:   id =  ep0920, name = ep0920
	reaction_r_0707_ep0920=1.0;
	% Local Parameter:   id =  ep0533, name = ep0533
	reaction_r_0707_ep0533=1.0;
	% Local Parameter:   id =  ep0119, name = ep0119
	reaction_r_0707_ep0119=-1.0;
	% Local Parameter:   id =  ep0397, name = ep0397
	reaction_r_0707_ep0397=-1.0;

	reaction_r_0707=compartment_cell*reaction_r_0707_v0*(1+reaction_r_0707_ep0920*log(x(223)/global_par_ic0920)+reaction_r_0707_ep0533*log(x(156)/global_par_ic0533)+reaction_r_0707_ep0119*log(x(28)/global_par_ic0119)+reaction_r_0707_ep0397*log(x(126)/global_par_ic0397));

% Reaction: id = r_0712, name = glycerol-3-phosphate dehydrogenase (NADP)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0712_FLUX_VALUE=0.0192579815535505;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0712_v0=0.0192579815535505;
	% Local Parameter:   id =  ep0772, name = ep0772
	reaction_r_0712_ep0772=1.0;
	% Local Parameter:   id =  ep1336, name = ep1336
	reaction_r_0712_ep1336=1.0;
	% Local Parameter:   id =  ep0920, name = ep0920
	reaction_r_0712_ep0920=-1.0;
	% Local Parameter:   id =  ep1335, name = ep1335
	reaction_r_0712_ep1335=-1.0;

	reaction_r_0712=compartment_cell*reaction_r_0712_v0*(1+reaction_r_0712_ep0772*log(x(196)/global_par_ic0772)+reaction_r_0712_ep1336*log(x(317)/global_par_ic1336)+reaction_r_0712_ep0920*log(x(223)/global_par_ic0920)+reaction_r_0712_ep1335*log(x(316)/global_par_ic1335));

% Reaction: id = r_0724, name = glycine C-acetyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0724_FLUX_VALUE=0.0414265806134066;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0724_v0=0.0414265806134066;
	% Local Parameter:   id =  ep1040, name = ep1040
	reaction_r_0724_ep1040=1.0;
	% Local Parameter:   id =  ep0555, name = ep0555
	reaction_r_0724_ep0555=1.0;
	% Local Parameter:   id =  ep0395, name = ep0395
	reaction_r_0724_ep0395=-1.0;
	% Local Parameter:   id =  ep0929, name = ep0929
	reaction_r_0724_ep0929=-1.0;

	reaction_r_0724=compartment_cell*reaction_r_0724_v0*(1+reaction_r_0724_ep1040*log(x(250)/global_par_ic1040)+reaction_r_0724_ep0555*log(x(162)/global_par_ic0555)+reaction_r_0724_ep0395*log(x(125)/global_par_ic0395)+reaction_r_0724_ep0929*log(x(224)/global_par_ic0929));

% Reaction: id = r_0726, name = glycine hydroxymethyltransferase, reversible	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0726_FLUX_VALUE=0.0634230033724642;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0726_v0=0.0634230033724642;
	% Local Parameter:   id =  ep1170, name = ep1170
	reaction_r_0726_ep1170=1.0;
	% Local Parameter:   id =  ep0337, name = ep0337
	reaction_r_0726_ep0337=1.0;
	% Local Parameter:   id =  ep0929, name = ep0929
	reaction_r_0726_ep0929=-1.0;
	% Local Parameter:   id =  ep0336, name = ep0336
	reaction_r_0726_ep0336=-1.0;

	reaction_r_0726=compartment_cell*reaction_r_0726_v0*(1+reaction_r_0726_ep1170*log(x(277)/global_par_ic1170)+reaction_r_0726_ep0337*log(x(96)/global_par_ic0337)+reaction_r_0726_ep0929*log(x(224)/global_par_ic0929)+reaction_r_0726_ep0336*log(x(95)/global_par_ic0336));

% Reaction: id = r_0731, name = Glycolaldehyde dehydrogenase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0731_FLUX_VALUE=9.26676951688061E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0731_v0=9.26676951688061E-5;
	% Local Parameter:   id =  ep0936, name = ep0936
	reaction_r_0731_ep0936=1.0;
	% Local Parameter:   id =  ep1333, name = ep1333
	reaction_r_0731_ep1333=1.0;
	% Local Parameter:   id =  ep0937, name = ep0937
	reaction_r_0731_ep0937=-1.0;
	% Local Parameter:   id =  ep1334, name = ep1334
	reaction_r_0731_ep1334=-1.0;

	reaction_r_0731=compartment_cell*reaction_r_0731_v0*(1+reaction_r_0731_ep0936*log(x(225)/global_par_ic0936)+reaction_r_0731_ep1333*log(x(314)/global_par_ic1333)+reaction_r_0731_ep0937*log(x(226)/global_par_ic0937)+reaction_r_0731_ep1334*log(x(315)/global_par_ic1334));

% Reaction: id = r_0734, name = Glycolate oxidase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0734_FLUX_VALUE=4.63338477495988E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0734_v0=4.63338477495988E-5;
	% Local Parameter:   id =  ep0937, name = ep0937
	reaction_r_0734_ep0937=1.0;
	% Local Parameter:   id =  ep1732, name = ep1732
	reaction_r_0734_ep1732=1.0;
	% Local Parameter:   id =  ep0941, name = ep0941
	reaction_r_0734_ep0941=-1.0;
	% Local Parameter:   id =  ep1731, name = ep1731
	reaction_r_0734_ep1731=-1.0;

	reaction_r_0734=compartment_cell*reaction_r_0734_v0*(1+reaction_r_0734_ep0937*log(x(226)/global_par_ic0937)+reaction_r_0734_ep1732*log(x(382)/global_par_ic1732)+reaction_r_0734_ep0941*log(x(227)/global_par_ic0941)+reaction_r_0734_ep1731*log(x(381)/global_par_ic1731));

% Reaction: id = r_0735, name = Glycolate oxidase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0735_FLUX_VALUE=4.63338474145563E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0735_v0=4.63338474145563E-5;
	% Local Parameter:   id =  ep0937, name = ep0937
	reaction_r_0735_ep0937=1.0;
	% Local Parameter:   id =  ep1240, name = ep1240
	reaction_r_0735_ep1240=1.0;
	% Local Parameter:   id =  ep0941, name = ep0941
	reaction_r_0735_ep0941=-1.0;
	% Local Parameter:   id =  ep1239, name = ep1239
	reaction_r_0735_ep1239=-1.0;

	reaction_r_0735=compartment_cell*reaction_r_0735_v0*(1+reaction_r_0735_ep0937*log(x(226)/global_par_ic0937)+reaction_r_0735_ep1240*log(x(289)/global_par_ic1240)+reaction_r_0735_ep0941*log(x(227)/global_par_ic0941)+reaction_r_0735_ep1239*log(x(288)/global_par_ic1239));

% Reaction: id = r_0739, name = glyoxalate carboligase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0739_FLUX_VALUE=4.63338475820775E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0739_v0=4.63338475820775E-5;
	% Local Parameter:   id =  ep0941, name = ep0941
	reaction_r_0739_ep0941=2.0;
	% Local Parameter:   id =  ep0214, name = ep0214
	reaction_r_0739_ep0214=-1.0;
	% Local Parameter:   id =  ep0543, name = ep0543
	reaction_r_0739_ep0543=-1.0;

	reaction_r_0739=compartment_cell*reaction_r_0739_v0*(1+reaction_r_0739_ep0941*log(x(227)/global_par_ic0941)+reaction_r_0739_ep0214*log(x(45)/global_par_ic0214)+reaction_r_0739_ep0543*log(x(160)/global_par_ic0543));

% Reaction: id = r_0741, name = GMP synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0741_FLUX_VALUE=0.0337597140054242;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0741_v0=0.0337597140054242;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_0741_ep0467=1.0;
	% Local Parameter:   id =  ep1101, name = ep1101
	reaction_r_0741_ep1101=1.0;
	% Local Parameter:   id =  ep1799, name = ep1799
	reaction_r_0741_ep1799=1.0;
	% Local Parameter:   id =  ep0454, name = ep0454
	reaction_r_0741_ep0454=-1.0;
	% Local Parameter:   id =  ep1095, name = ep1095
	reaction_r_0741_ep1095=-1.0;
	% Local Parameter:   id =  ep0942, name = ep0942
	reaction_r_0741_ep0942=-1.0;
	% Local Parameter:   id =  ep0783, name = ep0783
	reaction_r_0741_ep0783=-1.0;

	reaction_r_0741=compartment_cell*reaction_r_0741_v0*(1+reaction_r_0741_ep0467*log(x(139)/global_par_ic0467)+reaction_r_0741_ep1101*log(x(263)/global_par_ic1101)+reaction_r_0741_ep1799*log(x(401)/global_par_ic1799)+reaction_r_0741_ep0454*log(x(137)/global_par_ic0454)+reaction_r_0741_ep1095*log(x(259)/global_par_ic1095)+reaction_r_0741_ep0942*log(x(228)/global_par_ic0942)+reaction_r_0741_ep0783*log(x(198)/global_par_ic0783));

% Reaction: id = r_0744, name = GTP cyclohydrolase I	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0744_FLUX_VALUE=9.26676951688061E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0744_v0=9.26676951688061E-5;
	% Local Parameter:   id =  ep0945, name = ep0945
	reaction_r_0744_ep0945=1.0;
	% Local Parameter:   id =  ep0191, name = ep0191
	reaction_r_0744_ep0191=-1.0;
	% Local Parameter:   id =  ep0867, name = ep0867
	reaction_r_0744_ep0867=-1.0;

	reaction_r_0744=compartment_cell*reaction_r_0744_v0*(1+reaction_r_0744_ep0945*log(x(229)/global_par_ic0945)+reaction_r_0744_ep0191*log(x(39)/global_par_ic0191)+reaction_r_0744_ep0867*log(x(217)/global_par_ic0867));

% Reaction: id = r_0745, name = GTP cyclohydrolase II (25drapp)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0745_FLUX_VALUE=6.17784634458656E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0745_v0=6.17784634458656E-5;
	% Local Parameter:   id =  ep0945, name = ep0945
	reaction_r_0745_ep0945=1.0;
	% Local Parameter:   id =  ep0160, name = ep0160
	reaction_r_0745_ep0160=-1.0;
	% Local Parameter:   id =  ep0867, name = ep0867
	reaction_r_0745_ep0867=-1.0;
	% Local Parameter:   id =  ep0783, name = ep0783
	reaction_r_0745_ep0783=-1.0;

	reaction_r_0745=compartment_cell*reaction_r_0745_v0*(1+reaction_r_0745_ep0945*log(x(229)/global_par_ic0945)+reaction_r_0745_ep0160*log(x(37)/global_par_ic0160)+reaction_r_0745_ep0867*log(x(217)/global_par_ic0867)+reaction_r_0745_ep0783*log(x(198)/global_par_ic0783));

% Reaction: id = r_0754, name = guanylate kinase (GMP:ATP)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0754_FLUX_VALUE=0.0337597140054224;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0754_v0=0.0337597140054224;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_0754_ep0467=1.0;
	% Local Parameter:   id =  ep0942, name = ep0942
	reaction_r_0754_ep0942=1.0;
	% Local Parameter:   id =  ep0421, name = ep0421
	reaction_r_0754_ep0421=-1.0;
	% Local Parameter:   id =  ep0896, name = ep0896
	reaction_r_0754_ep0896=-1.0;

	reaction_r_0754=compartment_cell*reaction_r_0754_v0*(1+reaction_r_0754_ep0467*log(x(139)/global_par_ic0467)+reaction_r_0754_ep0942*log(x(228)/global_par_ic0942)+reaction_r_0754_ep0421*log(x(132)/global_par_ic0421)+reaction_r_0754_ep0896*log(x(219)/global_par_ic0896));

% Reaction: id = r_0755, name = HCO3 equilibration reaction	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0755_FLUX_VALUE=0.0721728976957654;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0755_v0=0.0721728976957654;
	% Local Parameter:   id =  ep0543, name = ep0543
	reaction_r_0755_ep0543=1.0;
	% Local Parameter:   id =  ep0474, name = ep0474
	reaction_r_0755_ep0474=-1.0;

	reaction_r_0755=compartment_cell*reaction_r_0755_v0*(1+reaction_r_0755_ep0543*log(x(160)/global_par_ic0543)+reaction_r_0755_ep0474*log(x(141)/global_par_ic0474));

% Reaction: id = r_0761, name = hexokinase (D-fructose:ATP)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0761_FLUX_VALUE=0.0545285700240656;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0761_v0=0.0545285700240656;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_0761_ep0467=1.0;
	% Local Parameter:   id =  ep0622, name = ep0622
	reaction_r_0761_ep0622=1.0;
	% Local Parameter:   id =  ep0421, name = ep0421
	reaction_r_0761_ep0421=-1.0;
	% Local Parameter:   id =  ep0627, name = ep0627
	reaction_r_0761_ep0627=-1.0;

	reaction_r_0761=compartment_cell*reaction_r_0761_v0*(1+reaction_r_0761_ep0467*log(x(139)/global_par_ic0467)+reaction_r_0761_ep0622*log(x(174)/global_par_ic0622)+reaction_r_0761_ep0421*log(x(132)/global_par_ic0421)+reaction_r_0761_ep0627*log(x(175)/global_par_ic0627));

% Reaction: id = r_0762, name = hexokinase (D-glucose:ATP)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0762_FLUX_VALUE=0.912233393077452;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0762_v0=0.912233393077452;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_0762_ep0467=1.0;
	% Local Parameter:   id =  ep0657, name = ep0657
	reaction_r_0762_ep0657=1.0;
	% Local Parameter:   id =  ep0421, name = ep0421
	reaction_r_0762_ep0421=-1.0;
	% Local Parameter:   id =  ep0663, name = ep0663
	reaction_r_0762_ep0663=-1.0;

	reaction_r_0762=compartment_cell*reaction_r_0762_v0*(1+reaction_r_0762_ep0467*log(x(139)/global_par_ic0467)+reaction_r_0762_ep0657*log(x(178)/global_par_ic0657)+reaction_r_0762_ep0421*log(x(132)/global_par_ic0421)+reaction_r_0762_ep0663*log(x(179)/global_par_ic0663));

% Reaction: id = r_0763, name = histidinol dehydrogenase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0763_FLUX_VALUE=0.0131230753965474;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0763_v0=0.0131230753965474;
	% Local Parameter:   id =  ep1109, name = ep1109
	reaction_r_0763_ep1109=1.0;
	% Local Parameter:   id =  ep1333, name = ep1333
	reaction_r_0763_ep1333=2.0;
	% Local Parameter:   id =  ep1106, name = ep1106
	reaction_r_0763_ep1106=-1.0;
	% Local Parameter:   id =  ep1334, name = ep1334
	reaction_r_0763_ep1334=-2.0;

	reaction_r_0763=compartment_cell*reaction_r_0763_v0*(1+reaction_r_0763_ep1109*log(x(266)/global_par_ic1109)+reaction_r_0763_ep1333*log(x(314)/global_par_ic1333)+reaction_r_0763_ep1106*log(x(265)/global_par_ic1106)+reaction_r_0763_ep1334*log(x(315)/global_par_ic1334));

% Reaction: id = r_0764, name = histidinol-phosphatase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0764_FLUX_VALUE=0.0131230753965474;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0764_v0=0.0131230753965474;
	% Local Parameter:   id =  ep1110, name = ep1110
	reaction_r_0764_ep1110=1.0;
	% Local Parameter:   id =  ep1109, name = ep1109
	reaction_r_0764_ep1109=-1.0;
	% Local Parameter:   id =  ep1430, name = ep1430
	reaction_r_0764_ep1430=-1.0;

	reaction_r_0764=compartment_cell*reaction_r_0764_v0*(1+reaction_r_0764_ep1110*log(x(267)/global_par_ic1110)+reaction_r_0764_ep1109*log(x(266)/global_par_ic1109)+reaction_r_0764_ep1430*log(x(336)/global_par_ic1430));

% Reaction: id = r_0765, name = histidinol-phosphate transaminase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0765_FLUX_VALUE=0.0131230753965474;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0765_v0=0.0131230753965474;
	% Local Parameter:   id =  ep1095, name = ep1095
	reaction_r_0765_ep1095=1.0;
	% Local Parameter:   id =  ep0263, name = ep0263
	reaction_r_0765_ep0263=1.0;
	% Local Parameter:   id =  ep0233, name = ep0233
	reaction_r_0765_ep0233=-1.0;
	% Local Parameter:   id =  ep1110, name = ep1110
	reaction_r_0765_ep1110=-1.0;

	reaction_r_0765=compartment_cell*reaction_r_0765_v0*(1+reaction_r_0765_ep1095*log(x(259)/global_par_ic1095)+reaction_r_0765_ep0263*log(x(57)/global_par_ic0263)+reaction_r_0765_ep0233*log(x(52)/global_par_ic0233)+reaction_r_0765_ep1110*log(x(267)/global_par_ic1110));

% Reaction: id = r_0769, name = homoserine dehydrogenase (NADPH)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0769_FLUX_VALUE=0.179555156278507;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0769_v0=0.179555156278507;
	% Local Parameter:   id =  ep1075, name = ep1075
	reaction_r_0769_ep1075=1.0;
	% Local Parameter:   id =  ep1336, name = ep1336
	reaction_r_0769_ep1336=1.0;
	% Local Parameter:   id =  ep1113, name = ep1113
	reaction_r_0769_ep1113=-1.0;
	% Local Parameter:   id =  ep1335, name = ep1335
	reaction_r_0769_ep1335=-1.0;

	reaction_r_0769=compartment_cell*reaction_r_0769_v0*(1+reaction_r_0769_ep1075*log(x(255)/global_par_ic1075)+reaction_r_0769_ep1336*log(x(317)/global_par_ic1336)+reaction_r_0769_ep1113*log(x(269)/global_par_ic1113)+reaction_r_0769_ep1335*log(x(316)/global_par_ic1335));

% Reaction: id = r_0770, name = homoserine kinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0770_FLUX_VALUE=0.158233967969303;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0770_v0=0.158233967969303;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_0770_ep0467=1.0;
	% Local Parameter:   id =  ep1113, name = ep1113
	reaction_r_0770_ep1113=1.0;
	% Local Parameter:   id =  ep0421, name = ep0421
	reaction_r_0770_ep0421=-1.0;
	% Local Parameter:   id =  ep1363, name = ep1363
	reaction_r_0770_ep1363=-1.0;

	reaction_r_0770=compartment_cell*reaction_r_0770_v0*(1+reaction_r_0770_ep0467*log(x(139)/global_par_ic0467)+reaction_r_0770_ep1113*log(x(269)/global_par_ic1113)+reaction_r_0770_ep0421*log(x(132)/global_par_ic0421)+reaction_r_0770_ep1363*log(x(321)/global_par_ic1363));

% Reaction: id = r_0771, name = homoserine O-succinyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0771_FLUX_VALUE=0.0213211883092039;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0771_v0=0.0213211883092039;
	% Local Parameter:   id =  ep1113, name = ep1113
	reaction_r_0771_ep1113=1.0;
	% Local Parameter:   id =  ep1599, name = ep1599
	reaction_r_0771_ep1599=1.0;
	% Local Parameter:   id =  ep0555, name = ep0555
	reaction_r_0771_ep0555=-1.0;
	% Local Parameter:   id =  ep1367, name = ep1367
	reaction_r_0771_ep1367=-1.0;

	reaction_r_0771=compartment_cell*reaction_r_0771_v0*(1+reaction_r_0771_ep1113*log(x(269)/global_par_ic1113)+reaction_r_0771_ep1599*log(x(366)/global_par_ic1599)+reaction_r_0771_ep0555*log(x(162)/global_par_ic0555)+reaction_r_0771_ep1367*log(x(323)/global_par_ic1367));

% Reaction: id = r_0775, name = Hydroxybenzoate octaprenyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0775_FLUX_VALUE=3.08892317229363E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0775_v0=3.08892317229363E-5;
	% Local Parameter:   id =  ep0325, name = ep0325
	reaction_r_0775_ep0325=1.0;
	% Local Parameter:   id =  ep0435, name = ep0435
	reaction_r_0775_ep0435=1.0;
	% Local Parameter:   id =  ep0283, name = ep0283
	reaction_r_0775_ep0283=-1.0;
	% Local Parameter:   id =  ep0783, name = ep0783
	reaction_r_0775_ep0783=-1.0;

	reaction_r_0775=compartment_cell*reaction_r_0775_v0*(1+reaction_r_0775_ep0325*log(x(87)/global_par_ic0325)+reaction_r_0775_ep0435*log(x(133)/global_par_ic0435)+reaction_r_0775_ep0283*log(x(68)/global_par_ic0283)+reaction_r_0775_ep0783*log(x(198)/global_par_ic0783));

% Reaction: id = r_0777, name = hydroxymethylbilane synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0777_FLUX_VALUE=6.1778463445417E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0777_v0=6.1778463445417E-5;
	% Local Parameter:   id =  ep1493, name = ep1493
	reaction_r_0777_ep1493=4.0;
	% Local Parameter:   id =  ep0998, name = ep0998
	reaction_r_0777_ep0998=-1.0;
	% Local Parameter:   id =  ep0451, name = ep0451
	reaction_r_0777_ep0451=-4.0;

	reaction_r_0777=compartment_cell*reaction_r_0777_v0*(1+reaction_r_0777_ep1493*log(x(344)/global_par_ic1493)+reaction_r_0777_ep0998*log(x(236)/global_par_ic0998)+reaction_r_0777_ep0451*log(x(136)/global_par_ic0451));

% Reaction: id = r_0784, name = Imidazole-glycerol-3-phosphate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0784_FLUX_VALUE=0.0131230753965474;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0784_v0=0.0131230753965474;
	% Local Parameter:   id =  ep1101, name = ep1101
	reaction_r_0784_ep1101=1.0;
	% Local Parameter:   id =  ep0341, name = ep0341
	reaction_r_0784_ep0341=1.0;
	% Local Parameter:   id =  ep0343, name = ep0343
	reaction_r_0784_ep0343=-1.0;
	% Local Parameter:   id =  ep0620, name = ep0620
	reaction_r_0784_ep0620=-1.0;
	% Local Parameter:   id =  ep1095, name = ep1095
	reaction_r_0784_ep1095=-1.0;

	reaction_r_0784=compartment_cell*reaction_r_0784_v0*(1+reaction_r_0784_ep1101*log(x(263)/global_par_ic1101)+reaction_r_0784_ep0341*log(x(97)/global_par_ic0341)+reaction_r_0784_ep0343*log(x(99)/global_par_ic0343)+reaction_r_0784_ep0620*log(x(172)/global_par_ic0620)+reaction_r_0784_ep1095*log(x(259)/global_par_ic1095));

% Reaction: id = r_0785, name = imidazoleglycerol-phosphate dehydratase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0785_FLUX_VALUE=0.0131230753965474;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0785_v0=0.0131230753965474;
	% Local Parameter:   id =  ep0620, name = ep0620
	reaction_r_0785_ep0620=1.0;
	% Local Parameter:   id =  ep0263, name = ep0263
	reaction_r_0785_ep0263=-1.0;

	reaction_r_0785=compartment_cell*reaction_r_0785_v0*(1+reaction_r_0785_ep0620*log(x(172)/global_par_ic0620)+reaction_r_0785_ep0263*log(x(57)/global_par_ic0263));

% Reaction: id = r_0786, name = IMP cyclohydrolase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0786_FLUX_VALUE=0.0745129994030467;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0786_v0=0.0745129994030467;
	% Local Parameter:   id =  ep0352, name = ep0352
	reaction_r_0786_ep0352=1.0;
	% Local Parameter:   id =  ep1006, name = ep1006
	reaction_r_0786_ep1006=-1.0;

	reaction_r_0786=compartment_cell*reaction_r_0786_v0*(1+reaction_r_0786_ep0352*log(x(104)/global_par_ic0352)+reaction_r_0786_ep1006*log(x(238)/global_par_ic1006));

% Reaction: id = r_0787, name = IMP dehydrogenase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0787_FLUX_VALUE=0.0337597140054643;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0787_v0=0.0337597140054643;
	% Local Parameter:   id =  ep1006, name = ep1006
	reaction_r_0787_ep1006=1.0;
	% Local Parameter:   id =  ep1333, name = ep1333
	reaction_r_0787_ep1333=1.0;
	% Local Parameter:   id =  ep1334, name = ep1334
	reaction_r_0787_ep1334=-1.0;
	% Local Parameter:   id =  ep1799, name = ep1799
	reaction_r_0787_ep1799=-1.0;

	reaction_r_0787=compartment_cell*reaction_r_0787_v0*(1+reaction_r_0787_ep1006*log(x(238)/global_par_ic1006)+reaction_r_0787_ep1333*log(x(314)/global_par_ic1333)+reaction_r_0787_ep1334*log(x(315)/global_par_ic1334)+reaction_r_0787_ep1799*log(x(401)/global_par_ic1799));

% Reaction: id = r_0788, name = indole-3-glycerol-phosphate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0788_FLUX_VALUE=0.00787329117099325;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0788_v0=0.00787329117099325;
	% Local Parameter:   id =  ep0096, name = ep0096
	reaction_r_0788_ep0096=1.0;
	% Local Parameter:   id =  ep0493, name = ep0493
	reaction_r_0788_ep0493=-1.0;
	% Local Parameter:   id =  ep0543, name = ep0543
	reaction_r_0788_ep0543=-1.0;

	reaction_r_0788=compartment_cell*reaction_r_0788_v0*(1+reaction_r_0788_ep0096*log(x(23)/global_par_ic0096)+reaction_r_0788_ep0493*log(x(147)/global_par_ic0493)+reaction_r_0788_ep0543*log(x(160)/global_par_ic0543));

% Reaction: id = r_0796, name = ISC [2Fe-2S] regeneration	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0796_FLUX_VALUE=2.77033467753811E-7;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0796_v0=2.77033467753811E-7;
	% Local Parameter:   id =  ep0377, name = ep0377
	reaction_r_0796_ep0377=1.0;
	% Local Parameter:   id =  ep1018, name = ep1018
	reaction_r_0796_ep1018=1.0;
	% Local Parameter:   id =  ep1019, name = ep1019
	reaction_r_0796_ep1019=1.0;
	% Local Parameter:   id =  ep1017, name = ep1017
	reaction_r_0796_ep1017=-1.0;
	% Local Parameter:   id =  ep1020, name = ep1020
	reaction_r_0796_ep1020=-1.0;

	reaction_r_0796=compartment_cell*reaction_r_0796_v0*(1+reaction_r_0796_ep0377*log(x(118)/global_par_ic0377)+reaction_r_0796_ep1018*log(x(241)/global_par_ic1018)+reaction_r_0796_ep1019*log(x(242)/global_par_ic1019)+reaction_r_0796_ep1017*log(x(240)/global_par_ic1017)+reaction_r_0796_ep1020*log(x(243)/global_par_ic1020));

% Reaction: id = r_0797, name = ISC [2Fe-2S] Synthesis	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0797_FLUX_VALUE=3.96157859771697E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0797_v0=3.96157859771697E-5;
	% Local Parameter:   id =  ep0860, name = ep0860
	reaction_r_0797_ep0860=1.0;
	% Local Parameter:   id =  ep0838, name = ep0838
	reaction_r_0797_ep0838=2.0;
	% Local Parameter:   id =  ep1018, name = ep1018
	reaction_r_0797_ep1018=2.0;
	% Local Parameter:   id =  ep1019, name = ep1019
	reaction_r_0797_ep1019=1.0;
	% Local Parameter:   id =  ep0859, name = ep0859
	reaction_r_0797_ep0859=-1.0;
	% Local Parameter:   id =  ep1017, name = ep1017
	reaction_r_0797_ep1017=-2.0;
	% Local Parameter:   id =  ep1020, name = ep1020
	reaction_r_0797_ep1020=-1.0;

	reaction_r_0797=compartment_cell*reaction_r_0797_v0*(1+reaction_r_0797_ep0860*log(x(213)/global_par_ic0860)+reaction_r_0797_ep0838*log(x(210)/global_par_ic0838)+reaction_r_0797_ep1018*log(x(241)/global_par_ic1018)+reaction_r_0797_ep1019*log(x(242)/global_par_ic1019)+reaction_r_0797_ep0859*log(x(212)/global_par_ic0859)+reaction_r_0797_ep1017*log(x(240)/global_par_ic1017)+reaction_r_0797_ep1020*log(x(243)/global_par_ic1020));

% Reaction: id = r_0798, name = ISC [2Fe-2S] Synthesis II	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0798_FLUX_VALUE=3.60143508877284E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0798_v0=3.60143508877284E-5;
	% Local Parameter:   id =  ep0860, name = ep0860
	reaction_r_0798_ep0860=1.0;
	% Local Parameter:   id =  ep0838, name = ep0838
	reaction_r_0798_ep0838=2.0;
	% Local Parameter:   id =  ep1018, name = ep1018
	reaction_r_0798_ep1018=2.0;
	% Local Parameter:   id =  ep1020, name = ep1020
	reaction_r_0798_ep1020=1.0;
	% Local Parameter:   id =  ep0859, name = ep0859
	reaction_r_0798_ep0859=-1.0;
	% Local Parameter:   id =  ep1017, name = ep1017
	reaction_r_0798_ep1017=-2.0;
	% Local Parameter:   id =  ep1022, name = ep1022
	reaction_r_0798_ep1022=-1.0;

	reaction_r_0798=compartment_cell*reaction_r_0798_v0*(1+reaction_r_0798_ep0860*log(x(213)/global_par_ic0860)+reaction_r_0798_ep0838*log(x(210)/global_par_ic0838)+reaction_r_0798_ep1018*log(x(241)/global_par_ic1018)+reaction_r_0798_ep1020*log(x(243)/global_par_ic1020)+reaction_r_0798_ep0859*log(x(212)/global_par_ic0859)+reaction_r_0798_ep1017*log(x(240)/global_par_ic1017)+reaction_r_0798_ep1022*log(x(245)/global_par_ic1022));

% Reaction: id = r_0799, name = ISC [2Fe-2S] Transfer	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0799_FLUX_VALUE=3.87846855703637E-6;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0799_v0=3.87846855703637E-6;
	% Local Parameter:   id =  ep1020, name = ep1020
	reaction_r_0799_ep1020=1.0;
	% Local Parameter:   id =  ep0378, name = ep0378
	reaction_r_0799_ep0378=-1.0;
	% Local Parameter:   id =  ep1019, name = ep1019
	reaction_r_0799_ep1019=-1.0;

	reaction_r_0799=compartment_cell*reaction_r_0799_v0*(1+reaction_r_0799_ep1020*log(x(243)/global_par_ic1020)+reaction_r_0799_ep0378*log(x(119)/global_par_ic0378)+reaction_r_0799_ep1019*log(x(242)/global_par_ic1019));

% Reaction: id = r_0800, name = ISC [4Fe-4S] Reduction	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0800_FLUX_VALUE=3.60143508877284E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0800_v0=3.60143508877284E-5;
	% Local Parameter:   id =  ep0860, name = ep0860
	reaction_r_0800_ep0860=1.0;
	% Local Parameter:   id =  ep1022, name = ep1022
	reaction_r_0800_ep1022=1.0;
	% Local Parameter:   id =  ep0859, name = ep0859
	reaction_r_0800_ep0859=-1.0;
	% Local Parameter:   id =  ep1021, name = ep1021
	reaction_r_0800_ep1021=-1.0;

	reaction_r_0800=compartment_cell*reaction_r_0800_v0*(1+reaction_r_0800_ep0860*log(x(213)/global_par_ic0860)+reaction_r_0800_ep1022*log(x(245)/global_par_ic1022)+reaction_r_0800_ep0859*log(x(212)/global_par_ic0859)+reaction_r_0800_ep1021*log(x(244)/global_par_ic1021));

% Reaction: id = r_0801, name = ISC [4Fe-4S] Transfer	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0801_FLUX_VALUE=3.60143508877284E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0801_v0=3.60143508877284E-5;
	% Local Parameter:   id =  ep1021, name = ep1021
	reaction_r_0801_ep1021=1.0;
	% Local Parameter:   id =  ep0380, name = ep0380
	reaction_r_0801_ep0380=-1.0;
	% Local Parameter:   id =  ep1019, name = ep1019
	reaction_r_0801_ep1019=-1.0;

	reaction_r_0801=compartment_cell*reaction_r_0801_v0*(1+reaction_r_0801_ep1021*log(x(244)/global_par_ic1021)+reaction_r_0801_ep0380*log(x(120)/global_par_ic0380)+reaction_r_0801_ep1019*log(x(242)/global_par_ic1019));

% Reaction: id = r_0802, name = ISC Cysteine desulfuration	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0802_FLUX_VALUE=2.50022705200688E-4;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0802_v0=2.50022705200688E-4;
	% Local Parameter:   id =  ep1083, name = ep1083
	reaction_r_0802_ep1083=1.0;
	% Local Parameter:   id =  ep1017, name = ep1017
	reaction_r_0802_ep1017=1.0;
	% Local Parameter:   id =  ep1041, name = ep1041
	reaction_r_0802_ep1041=-1.0;
	% Local Parameter:   id =  ep1018, name = ep1018
	reaction_r_0802_ep1018=-1.0;

	reaction_r_0802=compartment_cell*reaction_r_0802_v0*(1+reaction_r_0802_ep1083*log(x(258)/global_par_ic1083)+reaction_r_0802_ep1017*log(x(240)/global_par_ic1017)+reaction_r_0802_ep1041*log(x(251)/global_par_ic1041)+reaction_r_0802_ep1018*log(x(241)/global_par_ic1018));

% Reaction: id = r_0806, name = isocitrate dehydrogenase (NADP)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0806_FLUX_VALUE=0.148949399052035;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0806_v0=0.148949399052035;
	% Local Parameter:   id =  ep1027, name = ep1027
	reaction_r_0806_ep1027=1.0;
	% Local Parameter:   id =  ep1335, name = ep1335
	reaction_r_0806_ep1335=1.0;
	% Local Parameter:   id =  ep0233, name = ep0233
	reaction_r_0806_ep0233=-1.0;
	% Local Parameter:   id =  ep0543, name = ep0543
	reaction_r_0806_ep0543=-1.0;
	% Local Parameter:   id =  ep1336, name = ep1336
	reaction_r_0806_ep1336=-1.0;

	reaction_r_0806=compartment_cell*reaction_r_0806_v0*(1+reaction_r_0806_ep1027*log(x(246)/global_par_ic1027)+reaction_r_0806_ep1335*log(x(316)/global_par_ic1335)+reaction_r_0806_ep0233*log(x(52)/global_par_ic0233)+reaction_r_0806_ep0543*log(x(160)/global_par_ic0543)+reaction_r_0806_ep1336*log(x(317)/global_par_ic1336));

% Reaction: id = r_0808, name = isoleucine transaminase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0808_FLUX_VALUE=0.0402391112803253;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0808_v0=0.0402391112803253;
	% Local Parameter:   id =  ep0051, name = ep0051
	reaction_r_0808_ep0051=1.0;
	% Local Parameter:   id =  ep1095, name = ep1095
	reaction_r_0808_ep1095=1.0;
	% Local Parameter:   id =  ep0233, name = ep0233
	reaction_r_0808_ep0233=-1.0;
	% Local Parameter:   id =  ep1119, name = ep1119
	reaction_r_0808_ep1119=-1.0;

	reaction_r_0808=compartment_cell*reaction_r_0808_v0*(1+reaction_r_0808_ep0051*log(x(19)/global_par_ic0051)+reaction_r_0808_ep1095*log(x(259)/global_par_ic1095)+reaction_r_0808_ep0233*log(x(52)/global_par_ic0233)+reaction_r_0808_ep1119*log(x(270)/global_par_ic1119));

% Reaction: id = r_0811, name = ketol-acid reductoisomerase (2,3-dihydroxy-3-methylbutanoate)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0811_FLUX_VALUE=0.121101856295072;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0811_v0=0.121101856295072;
	% Local Parameter:   id =  ep0042, name = ep0042
	reaction_r_0811_ep0042=1.0;
	% Local Parameter:   id =  ep1336, name = ep1336
	reaction_r_0811_ep1336=1.0;
	% Local Parameter:   id =  ep0017, name = ep0017
	reaction_r_0811_ep0017=-1.0;
	% Local Parameter:   id =  ep1335, name = ep1335
	reaction_r_0811_ep1335=-1.0;

	reaction_r_0811=compartment_cell*reaction_r_0811_v0*(1+reaction_r_0811_ep0042*log(x(11)/global_par_ic0042)+reaction_r_0811_ep1336*log(x(317)/global_par_ic1336)+reaction_r_0811_ep0017*log(x(3)/global_par_ic0017)+reaction_r_0811_ep1335*log(x(316)/global_par_ic1335));

% Reaction: id = r_0812, name = ketol-acid reductoisomerase (2-Acetolactate)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0812_FLUX_VALUE=0.0402391112803253;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0812_v0=0.0402391112803253;
	% Local Parameter:   id =  ep0041, name = ep0041
	reaction_r_0812_ep0041=1.0;
	% Local Parameter:   id =  ep1336, name = ep1336
	reaction_r_0812_ep1336=1.0;
	% Local Parameter:   id =  ep0018, name = ep0018
	reaction_r_0812_ep0018=-1.0;
	% Local Parameter:   id =  ep1335, name = ep1335
	reaction_r_0812_ep1335=-1.0;

	reaction_r_0812=compartment_cell*reaction_r_0812_v0*(1+reaction_r_0812_ep0041*log(x(10)/global_par_ic0041)+reaction_r_0812_ep1336*log(x(317)/global_par_ic1336)+reaction_r_0812_ep0018*log(x(4)/global_par_ic0018)+reaction_r_0812_ep1335*log(x(316)/global_par_ic1335));

% Reaction: id = r_0815, name = L-alanine transaminase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0815_FLUX_VALUE=0.0805262878673574;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0815_v0=0.0805262878673574;
	% Local Parameter:   id =  ep1095, name = ep1095
	reaction_r_0815_ep1095=1.0;
	% Local Parameter:   id =  ep1531, name = ep1531
	reaction_r_0815_ep1531=1.0;
	% Local Parameter:   id =  ep0233, name = ep0233
	reaction_r_0815_ep0233=-1.0;
	% Local Parameter:   id =  ep1041, name = ep1041
	reaction_r_0815_ep1041=-1.0;

	reaction_r_0815=compartment_cell*reaction_r_0815_v0*(1+reaction_r_0815_ep1095*log(x(259)/global_par_ic1095)+reaction_r_0815_ep1531*log(x(352)/global_par_ic1531)+reaction_r_0815_ep0233*log(x(52)/global_par_ic0233)+reaction_r_0815_ep1041*log(x(251)/global_par_ic1041));

% Reaction: id = r_0829, name = L-aspartate oxidase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0829_FLUX_VALUE=3.15541120488056E-4;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0829_v0=3.15541120488056E-4;
	% Local Parameter:   id =  ep1072, name = ep1072
	reaction_r_0829_ep1072=1.0;
	% Local Parameter:   id =  ep1372, name = ep1372
	reaction_r_0829_ep1372=1.0;
	% Local Parameter:   id =  ep0991, name = ep0991
	reaction_r_0829_ep0991=-1.0;
	% Local Parameter:   id =  ep1005, name = ep1005
	reaction_r_0829_ep1005=-1.0;

	reaction_r_0829=compartment_cell*reaction_r_0829_v0*(1+reaction_r_0829_ep1072*log(x(254)/global_par_ic1072)+reaction_r_0829_ep1372*log(x(324)/global_par_ic1372)+reaction_r_0829_ep0991*log(x(234)/global_par_ic0991)+reaction_r_0829_ep1005*log(x(237)/global_par_ic1005));

% Reaction: id = r_0835, name = L-glutamate 5-semialdehyde dehydratase (spontaneous)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0835_FLUX_VALUE=0.0306260499280044;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0835_v0=0.0306260499280044;
	% Local Parameter:   id =  ep1100, name = ep1100
	reaction_r_0835_ep1100=1.0;
	% Local Parameter:   id =  ep0128, name = ep0128
	reaction_r_0835_ep0128=-1.0;

	reaction_r_0835=compartment_cell*reaction_r_0835_v0*(1+reaction_r_0835_ep1100*log(x(262)/global_par_ic1100)+reaction_r_0835_ep0128*log(x(31)/global_par_ic0128));

% Reaction: id = r_0847, name = L-threonine deaminase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0847_FLUX_VALUE=0.0402391112802679;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0847_v0=0.0402391112802679;
	% Local Parameter:   id =  ep1179, name = ep1179
	reaction_r_0847_ep1179=1.0;
	% Local Parameter:   id =  ep0232, name = ep0232
	reaction_r_0847_ep0232=-1.0;
	% Local Parameter:   id =  ep0451, name = ep0451
	reaction_r_0847_ep0451=-1.0;

	reaction_r_0847=compartment_cell*reaction_r_0847_v0*(1+reaction_r_0847_ep1179*log(x(278)/global_par_ic1179)+reaction_r_0847_ep0232*log(x(51)/global_par_ic0232)+reaction_r_0847_ep0451*log(x(136)/global_par_ic0451));

% Reaction: id = r_0848, name = L-threonine dehydrogenase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0848_FLUX_VALUE=0.0414265806134066;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0848_v0=0.0414265806134066;
	% Local Parameter:   id =  ep1333, name = ep1333
	reaction_r_0848_ep1333=1.0;
	% Local Parameter:   id =  ep1179, name = ep1179
	reaction_r_0848_ep1179=1.0;
	% Local Parameter:   id =  ep1040, name = ep1040
	reaction_r_0848_ep1040=-1.0;
	% Local Parameter:   id =  ep1334, name = ep1334
	reaction_r_0848_ep1334=-1.0;

	reaction_r_0848=compartment_cell*reaction_r_0848_v0*(1+reaction_r_0848_ep1333*log(x(314)/global_par_ic1333)+reaction_r_0848_ep1179*log(x(278)/global_par_ic1179)+reaction_r_0848_ep1040*log(x(250)/global_par_ic1040)+reaction_r_0848_ep1334*log(x(315)/global_par_ic1334));

% Reaction: id = r_0854, name = leucine transaminase (irreversible)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0854_FLUX_VALUE=0.0624017887496972;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0854_v0=0.0624017887496972;
	% Local Parameter:   id =  ep0328, name = ep0328
	reaction_r_0854_ep0328=1.0;
	% Local Parameter:   id =  ep1095, name = ep1095
	reaction_r_0854_ep1095=1.0;
	% Local Parameter:   id =  ep0233, name = ep0233
	reaction_r_0854_ep0233=-1.0;
	% Local Parameter:   id =  ep1127, name = ep1127
	reaction_r_0854_ep1127=-1.0;

	reaction_r_0854=compartment_cell*reaction_r_0854_v0*(1+reaction_r_0854_ep0328*log(x(88)/global_par_ic0328)+reaction_r_0854_ep1095*log(x(259)/global_par_ic1095)+reaction_r_0854_ep0233*log(x(52)/global_par_ic0233)+reaction_r_0854_ep1127*log(x(271)/global_par_ic1127));

% Reaction: id = r_0857, name = Lipid A disaccaride synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0857_FLUX_VALUE=0.00269553564721213;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0857_v0=0.00269553564721213;
	% Local Parameter:   id =  ep0149, name = ep0149
	reaction_r_0857_ep0149=1.0;
	% Local Parameter:   id =  ep1734, name = ep1734
	reaction_r_0857_ep1734=1.0;
	% Local Parameter:   id =  ep1204, name = ep1204
	reaction_r_0857_ep1204=-1.0;
	% Local Parameter:   id =  ep1733, name = ep1733
	reaction_r_0857_ep1733=-1.0;

	reaction_r_0857=compartment_cell*reaction_r_0857_v0*(1+reaction_r_0857_ep0149*log(x(35)/global_par_ic0149)+reaction_r_0857_ep1734*log(x(384)/global_par_ic1734)+reaction_r_0857_ep1204*log(x(282)/global_par_ic1204)+reaction_r_0857_ep1733*log(x(383)/global_par_ic1733));

% Reaction: id = r_0925, name = malate dehydrogenase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0925_FLUX_VALUE=0.143432000495696;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0925_v0=0.143432000495696;
	% Local Parameter:   id =  ep1138, name = ep1138
	reaction_r_0925_ep1138=1.0;
	% Local Parameter:   id =  ep1333, name = ep1333
	reaction_r_0925_ep1333=1.0;
	% Local Parameter:   id =  ep1334, name = ep1334
	reaction_r_0925_ep1334=-1.0;
	% Local Parameter:   id =  ep1399, name = ep1399
	reaction_r_0925_ep1399=-1.0;

	reaction_r_0925=compartment_cell*reaction_r_0925_v0*(1+reaction_r_0925_ep1138*log(x(273)/global_par_ic1138)+reaction_r_0925_ep1333*log(x(314)/global_par_ic1333)+reaction_r_0925_ep1334*log(x(315)/global_par_ic1334)+reaction_r_0925_ep1399*log(x(329)/global_par_ic1399));

% Reaction: id = r_0928, name = malate oxidase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0928_FLUX_VALUE=3.15541120779209E-4;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0928_v0=3.15541120779209E-4;
	% Local Parameter:   id =  ep0991, name = ep0991
	reaction_r_0928_ep0991=1.0;
	% Local Parameter:   id =  ep1399, name = ep1399
	reaction_r_0928_ep1399=1.0;
	% Local Parameter:   id =  ep1138, name = ep1138
	reaction_r_0928_ep1138=-1.0;
	% Local Parameter:   id =  ep1372, name = ep1372
	reaction_r_0928_ep1372=-1.0;

	reaction_r_0928=compartment_cell*reaction_r_0928_v0*(1+reaction_r_0928_ep0991*log(x(234)/global_par_ic0991)+reaction_r_0928_ep1399*log(x(329)/global_par_ic1399)+reaction_r_0928_ep1138*log(x(273)/global_par_ic1138)+reaction_r_0928_ep1372*log(x(324)/global_par_ic1372));

% Reaction: id = r_0934, name = Malonyl-CoA methyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0934_FLUX_VALUE=2.77033467884759E-7;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0934_v0=2.77033467884759E-7;
	% Local Parameter:   id =  ep1552, name = ep1552
	reaction_r_0934_ep1552=1.0;
	% Local Parameter:   id =  ep1217, name = ep1217
	reaction_r_0934_ep1217=1.0;
	% Local Parameter:   id =  ep1551, name = ep1551
	reaction_r_0934_ep1551=-1.0;
	% Local Parameter:   id =  ep1218, name = ep1218
	reaction_r_0934_ep1218=-1.0;

	reaction_r_0934=compartment_cell*reaction_r_0934_v0*(1+reaction_r_0934_ep1552*log(x(358)/global_par_ic1552)+reaction_r_0934_ep1217*log(x(286)/global_par_ic1217)+reaction_r_0934_ep1551*log(x(357)/global_par_ic1551)+reaction_r_0934_ep1218*log(x(287)/global_par_ic1218));

% Reaction: id = r_0935, name = Malonyl-CoA-ACP transacylase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0935_FLUX_VALUE=0.0107826966558221;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0935_v0=0.0107826966558221;
	% Local Parameter:   id =  ep0397, name = ep0397
	reaction_r_0935_ep0397=1.0;
	% Local Parameter:   id =  ep1217, name = ep1217
	reaction_r_0935_ep1217=1.0;
	% Local Parameter:   id =  ep0555, name = ep0555
	reaction_r_0935_ep0555=-1.0;
	% Local Parameter:   id =  ep1216, name = ep1216
	reaction_r_0935_ep1216=-1.0;

	reaction_r_0935=compartment_cell*reaction_r_0935_v0*(1+reaction_r_0935_ep0397*log(x(126)/global_par_ic0397)+reaction_r_0935_ep1217*log(x(286)/global_par_ic1217)+reaction_r_0935_ep0555*log(x(162)/global_par_ic0555)+reaction_r_0935_ep1216*log(x(285)/global_par_ic1216));

% Reaction: id = r_0950, name = methenyltetrahydrofolate cyclohydrolase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0950_FLUX_VALUE=0.0383041017619642;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0950_v0=0.0383041017619642;
	% Local Parameter:   id =  ep0335, name = ep0335
	reaction_r_0950_ep0335=1.0;
	% Local Parameter:   id =  ep0133, name = ep0133
	reaction_r_0950_ep0133=-1.0;

	reaction_r_0950=compartment_cell*reaction_r_0950_v0*(1+reaction_r_0950_ep0335*log(x(94)/global_par_ic0335)+reaction_r_0950_ep0133*log(x(32)/global_par_ic0133));

% Reaction: id = r_0951, name = methionine adenosyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0951_FLUX_VALUE=1.24388027294171E-4;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0951_v0=1.24388027294171E-4;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_0951_ep0467=1.0;
	% Local Parameter:   id =  ep1141, name = ep1141
	reaction_r_0951_ep1141=1.0;
	% Local Parameter:   id =  ep1552, name = ep1552
	reaction_r_0951_ep1552=-1.0;
	% Local Parameter:   id =  ep1430, name = ep1430
	reaction_r_0951_ep1430=-1.0;
	% Local Parameter:   id =  ep0783, name = ep0783
	reaction_r_0951_ep0783=-1.0;

	reaction_r_0951=compartment_cell*reaction_r_0951_v0*(1+reaction_r_0951_ep0467*log(x(139)/global_par_ic0467)+reaction_r_0951_ep1141*log(x(274)/global_par_ic1141)+reaction_r_0951_ep1552*log(x(358)/global_par_ic1552)+reaction_r_0951_ep1430*log(x(336)/global_par_ic1430)+reaction_r_0951_ep0783*log(x(198)/global_par_ic0783));

% Reaction: id = r_0954, name = methionine synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0954_FLUX_VALUE=0.0213832438061183;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0954_v0=0.0213832438061183;
	% Local Parameter:   id =  ep0354, name = ep0354
	reaction_r_0954_ep0354=1.0;
	% Local Parameter:   id =  ep1112, name = ep1112
	reaction_r_0954_ep1112=1.0;
	% Local Parameter:   id =  ep1141, name = ep1141
	reaction_r_0954_ep1141=-1.0;
	% Local Parameter:   id =  ep0337, name = ep0337
	reaction_r_0954_ep0337=-1.0;

	reaction_r_0954=compartment_cell*reaction_r_0954_v0*(1+reaction_r_0954_ep0354*log(x(105)/global_par_ic0354)+reaction_r_0954_ep1112*log(x(268)/global_par_ic1112)+reaction_r_0954_ep1141*log(x(274)/global_par_ic1141)+reaction_r_0954_ep0337*log(x(96)/global_par_ic0337));

% Reaction: id = r_0957, name = methylenetetrahydrofolate dehydrogenase (NADP)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0957_FLUX_VALUE=0.0383041017619642;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0957_v0=0.0383041017619642;
	% Local Parameter:   id =  ep0336, name = ep0336
	reaction_r_0957_ep0336=1.0;
	% Local Parameter:   id =  ep1335, name = ep1335
	reaction_r_0957_ep1335=1.0;
	% Local Parameter:   id =  ep0335, name = ep0335
	reaction_r_0957_ep0335=-1.0;
	% Local Parameter:   id =  ep1336, name = ep1336
	reaction_r_0957_ep1336=-1.0;

	reaction_r_0957=compartment_cell*reaction_r_0957_v0*(1+reaction_r_0957_ep0336*log(x(95)/global_par_ic0336)+reaction_r_0957_ep1335*log(x(316)/global_par_ic1335)+reaction_r_0957_ep0335*log(x(94)/global_par_ic0335)+reaction_r_0957_ep1336*log(x(317)/global_par_ic1336));

% Reaction: id = r_0963, name = MoaD sulfuration (nadh, assumed)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0963_FLUX_VALUE=6.75961662815825E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0963_v0=6.75961662815825E-5;
	% Local Parameter:   id =  ep1018, name = ep1018
	reaction_r_0963_ep1018=1.0;
	% Local Parameter:   id =  ep1258, name = ep1258
	reaction_r_0963_ep1258=1.0;
	% Local Parameter:   id =  ep1334, name = ep1334
	reaction_r_0963_ep1334=1.0;
	% Local Parameter:   id =  ep0454, name = ep0454
	reaction_r_0963_ep0454=-1.0;
	% Local Parameter:   id =  ep1017, name = ep1017
	reaction_r_0963_ep1017=-1.0;
	% Local Parameter:   id =  ep1260, name = ep1260
	reaction_r_0963_ep1260=-1.0;
	% Local Parameter:   id =  ep1333, name = ep1333
	reaction_r_0963_ep1333=-1.0;

	reaction_r_0963=compartment_cell*reaction_r_0963_v0*(1+reaction_r_0963_ep1018*log(x(241)/global_par_ic1018)+reaction_r_0963_ep1258*log(x(293)/global_par_ic1258)+reaction_r_0963_ep1334*log(x(315)/global_par_ic1334)+reaction_r_0963_ep0454*log(x(137)/global_par_ic0454)+reaction_r_0963_ep1017*log(x(240)/global_par_ic1017)+reaction_r_0963_ep1260*log(x(295)/global_par_ic1260)+reaction_r_0963_ep1333*log(x(314)/global_par_ic1333));

% Reaction: id = r_0964, name = molybdenum cofactor synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0964_FLUX_VALUE=1.68990415703956E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0964_v0=1.68990415703956E-5;
	% Local Parameter:   id =  ep1261, name = ep1261
	reaction_r_0964_ep1261=1.0;
	% Local Parameter:   id =  ep0420, name = ep0420
	reaction_r_0964_ep0420=1.0;
	% Local Parameter:   id =  ep0454, name = ep0454
	reaction_r_0964_ep0454=-1.0;
	% Local Parameter:   id =  ep0579, name = ep0579
	reaction_r_0964_ep0579=-1.0;
	% Local Parameter:   id =  ep1264, name = ep1264
	reaction_r_0964_ep1264=-1.0;

	reaction_r_0964=compartment_cell*reaction_r_0964_v0*(1+reaction_r_0964_ep1261*log(x(296)/global_par_ic1261)+reaction_r_0964_ep0420*log(x(131)/global_par_ic0420)+reaction_r_0964_ep0454*log(x(137)/global_par_ic0454)+reaction_r_0964_ep0579*log(x(166)/global_par_ic0579)+reaction_r_0964_ep1264*log(x(297)/global_par_ic1264));

% Reaction: id = r_0965, name = molybdopterin adenylyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0965_FLUX_VALUE=3.37980831407913E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0965_v0=3.37980831407913E-5;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_0965_ep0467=1.0;
	% Local Parameter:   id =  ep1265, name = ep1265
	reaction_r_0965_ep1265=1.0;
	% Local Parameter:   id =  ep0420, name = ep0420
	reaction_r_0965_ep0420=-1.0;
	% Local Parameter:   id =  ep0783, name = ep0783
	reaction_r_0965_ep0783=-1.0;

	reaction_r_0965=compartment_cell*reaction_r_0965_v0*(1+reaction_r_0965_ep0467*log(x(139)/global_par_ic0467)+reaction_r_0965_ep1265*log(x(298)/global_par_ic1265)+reaction_r_0965_ep0420*log(x(131)/global_par_ic0420)+reaction_r_0965_ep0783*log(x(198)/global_par_ic0783));

% Reaction: id = r_0968, name = molybdopterin synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0968_FLUX_VALUE=3.37980831407913E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0968_v0=3.37980831407913E-5;
	% Local Parameter:   id =  ep0585, name = ep0585
	reaction_r_0968_ep0585=1.0;
	% Local Parameter:   id =  ep0579, name = ep0579
	reaction_r_0968_ep0579=1.0;
	% Local Parameter:   id =  ep1260, name = ep1260
	reaction_r_0968_ep1260=2.0;
	% Local Parameter:   id =  ep1259, name = ep1259
	reaction_r_0968_ep1259=-2.0;
	% Local Parameter:   id =  ep1265, name = ep1265
	reaction_r_0968_ep1265=-1.0;

	reaction_r_0968=compartment_cell*reaction_r_0968_v0*(1+reaction_r_0968_ep0585*log(x(167)/global_par_ic0585)+reaction_r_0968_ep0579*log(x(166)/global_par_ic0579)+reaction_r_0968_ep1260*log(x(295)/global_par_ic1260)+reaction_r_0968_ep1259*log(x(294)/global_par_ic1259)+reaction_r_0968_ep1265*log(x(298)/global_par_ic1265));

% Reaction: id = r_0969, name = molybdopterin synthase sulfurylase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0969_FLUX_VALUE=6.75961662815825E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0969_v0=6.75961662815825E-5;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_0969_ep0467=1.0;
	% Local Parameter:   id =  ep1259, name = ep1259
	reaction_r_0969_ep1259=1.0;
	% Local Parameter:   id =  ep1258, name = ep1258
	reaction_r_0969_ep1258=-1.0;
	% Local Parameter:   id =  ep0783, name = ep0783
	reaction_r_0969_ep0783=-1.0;

	reaction_r_0969=compartment_cell*reaction_r_0969_v0*(1+reaction_r_0969_ep0467*log(x(139)/global_par_ic0467)+reaction_r_0969_ep1259*log(x(294)/global_par_ic1259)+reaction_r_0969_ep1258*log(x(293)/global_par_ic1258)+reaction_r_0969_ep0783*log(x(198)/global_par_ic0783));

% Reaction: id = r_0970, name = murein crosslinking transpeptidase 1A:(A2pm->D-ala) (periplasm)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0970_FLUX_VALUE=0.0019239974378098;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0970_v0=0.0019239974378098;
	% Local Parameter:   id =  ep1725, name = ep1725
	reaction_r_0970_ep1725=1.0;
	% Local Parameter:   id =  ep0600, name = ep0600
	reaction_r_0970_ep0600=-1.0;
	% Local Parameter:   id =  ep1719, name = ep1719
	reaction_r_0970_ep1719=-1.0;

	reaction_r_0970=compartment_cell*reaction_r_0970_v0*(1+reaction_r_0970_ep1725*log(x(380)/global_par_ic1725)+reaction_r_0970_ep0600*log(x(169)/global_par_ic0600)+reaction_r_0970_ep1719*log(x(379)/global_par_ic1719));

% Reaction: id = r_0996, name = N-acetyl-g-glutamyl-phosphate reductase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0996_FLUX_VALUE=0.0409732499715063;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0996_v0=0.0409732499715063;
	% Local Parameter:   id =  ep1304, name = ep1304
	reaction_r_0996_ep1304=1.0;
	% Local Parameter:   id =  ep1336, name = ep1336
	reaction_r_0996_ep1336=1.0;
	% Local Parameter:   id =  ep1303, name = ep1303
	reaction_r_0996_ep1303=-1.0;
	% Local Parameter:   id =  ep1335, name = ep1335
	reaction_r_0996_ep1335=-1.0;
	% Local Parameter:   id =  ep1430, name = ep1430
	reaction_r_0996_ep1430=-1.0;

	reaction_r_0996=compartment_cell*reaction_r_0996_v0*(1+reaction_r_0996_ep1304*log(x(305)/global_par_ic1304)+reaction_r_0996_ep1336*log(x(317)/global_par_ic1336)+reaction_r_0996_ep1303*log(x(304)/global_par_ic1303)+reaction_r_0996_ep1335*log(x(316)/global_par_ic1335)+reaction_r_0996_ep1430*log(x(336)/global_par_ic1430));

% Reaction: id = r_0999, name = N-acetylglutamate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0999_FLUX_VALUE=0.0409732499715063;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0999_v0=0.0409732499715063;
	% Local Parameter:   id =  ep0395, name = ep0395
	reaction_r_0999_ep0395=1.0;
	% Local Parameter:   id =  ep1095, name = ep1095
	reaction_r_0999_ep1095=1.0;
	% Local Parameter:   id =  ep1302, name = ep1302
	reaction_r_0999_ep1302=-1.0;
	% Local Parameter:   id =  ep0555, name = ep0555
	reaction_r_0999_ep0555=-1.0;

	reaction_r_0999=compartment_cell*reaction_r_0999_v0*(1+reaction_r_0999_ep0395*log(x(125)/global_par_ic0395)+reaction_r_0999_ep1095*log(x(259)/global_par_ic1095)+reaction_r_0999_ep1302*log(x(303)/global_par_ic1302)+reaction_r_0999_ep0555*log(x(162)/global_par_ic0555));

% Reaction: id = r_1006, name = NAD kinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1006_FLUX_VALUE=6.1916980210075E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1006_v0=6.1916980210075E-5;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_1006_ep0467=1.0;
	% Local Parameter:   id =  ep1333, name = ep1333
	reaction_r_1006_ep1333=1.0;
	% Local Parameter:   id =  ep0421, name = ep0421
	reaction_r_1006_ep0421=-1.0;
	% Local Parameter:   id =  ep1335, name = ep1335
	reaction_r_1006_ep1335=-1.0;

	reaction_r_1006=compartment_cell*reaction_r_1006_v0*(1+reaction_r_1006_ep0467*log(x(139)/global_par_ic0467)+reaction_r_1006_ep1333*log(x(314)/global_par_ic1333)+reaction_r_1006_ep0421*log(x(132)/global_par_ic0421)+reaction_r_1006_ep1335*log(x(316)/global_par_ic1335));

% Reaction: id = r_1008, name = NAD synthase (nh3)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1008_FLUX_VALUE=3.15541120476312E-4;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1008_v0=3.15541120476312E-4;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_1008_ep0467=1.0;
	% Local Parameter:   id =  ep0732, name = ep0732
	reaction_r_1008_ep0732=1.0;
	% Local Parameter:   id =  ep0451, name = ep0451
	reaction_r_1008_ep0451=1.0;
	% Local Parameter:   id =  ep0454, name = ep0454
	reaction_r_1008_ep0454=-1.0;
	% Local Parameter:   id =  ep1333, name = ep1333
	reaction_r_1008_ep1333=-1.0;
	% Local Parameter:   id =  ep0783, name = ep0783
	reaction_r_1008_ep0783=-1.0;

	reaction_r_1008=compartment_cell*reaction_r_1008_v0*(1+reaction_r_1008_ep0467*log(x(139)/global_par_ic0467)+reaction_r_1008_ep0732*log(x(186)/global_par_ic0732)+reaction_r_1008_ep0451*log(x(136)/global_par_ic0451)+reaction_r_1008_ep0454*log(x(137)/global_par_ic0454)+reaction_r_1008_ep1333*log(x(314)/global_par_ic1333)+reaction_r_1008_ep0783*log(x(198)/global_par_ic0783));

% Reaction: id = r_1019, name = nicotinate-nucleotide adenylyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1019_FLUX_VALUE=3.15541120469206E-4;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1019_v0=3.15541120469206E-4;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_1019_ep0467=1.0;
	% Local Parameter:   id =  ep1340, name = ep1340
	reaction_r_1019_ep1340=1.0;
	% Local Parameter:   id =  ep0732, name = ep0732
	reaction_r_1019_ep0732=-1.0;
	% Local Parameter:   id =  ep0783, name = ep0783
	reaction_r_1019_ep0783=-1.0;

	reaction_r_1019=compartment_cell*reaction_r_1019_v0*(1+reaction_r_1019_ep0467*log(x(139)/global_par_ic0467)+reaction_r_1019_ep1340*log(x(318)/global_par_ic1340)+reaction_r_1019_ep0732*log(x(186)/global_par_ic0732)+reaction_r_1019_ep0783*log(x(198)/global_par_ic0783));

% Reaction: id = r_1021, name = nicotinate-nucleotide diphosphorylase (carboxylating)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1021_FLUX_VALUE=3.15541120467916E-4;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1021_v0=3.15541120467916E-4;
	% Local Parameter:   id =  ep0360, name = ep0360
	reaction_r_1021_ep0360=1.0;
	% Local Parameter:   id =  ep1537, name = ep1537
	reaction_r_1021_ep1537=1.0;
	% Local Parameter:   id =  ep0543, name = ep0543
	reaction_r_1021_ep0543=-1.0;
	% Local Parameter:   id =  ep1340, name = ep1340
	reaction_r_1021_ep1340=-1.0;
	% Local Parameter:   id =  ep0783, name = ep0783
	reaction_r_1021_ep0783=-1.0;

	reaction_r_1021=compartment_cell*reaction_r_1021_v0*(1+reaction_r_1021_ep0360*log(x(107)/global_par_ic0360)+reaction_r_1021_ep1537*log(x(353)/global_par_ic1537)+reaction_r_1021_ep0543*log(x(160)/global_par_ic0543)+reaction_r_1021_ep1340*log(x(318)/global_par_ic1340)+reaction_r_1021_ep0783*log(x(198)/global_par_ic0783));

% Reaction: id = r_1039, name = nucleoside-diphosphate kinase (ATP:CDP)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1039_FLUX_VALUE=0.0250597549647999;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1039_v0=0.0250597549647999;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_1039_ep0467=1.0;
	% Local Parameter:   id =  ep0510, name = ep0510
	reaction_r_1039_ep0510=1.0;
	% Local Parameter:   id =  ep0421, name = ep0421
	reaction_r_1039_ep0421=-1.0;
	% Local Parameter:   id =  ep0575, name = ep0575
	reaction_r_1039_ep0575=-1.0;

	reaction_r_1039=compartment_cell*reaction_r_1039_v0*(1+reaction_r_1039_ep0467*log(x(139)/global_par_ic0467)+reaction_r_1039_ep0510*log(x(150)/global_par_ic0510)+reaction_r_1039_ep0421*log(x(132)/global_par_ic0421)+reaction_r_1039_ep0575*log(x(165)/global_par_ic0575));

% Reaction: id = r_1043, name = nucleoside-diphosphate kinase (ATP:dTDP)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1043_FLUX_VALUE=0.00362498293358405;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1043_v0=0.00362498293358405;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_1043_ep0467=1.0;
	% Local Parameter:   id =  ep0795, name = ep0795
	reaction_r_1043_ep0795=1.0;
	% Local Parameter:   id =  ep0421, name = ep0421
	reaction_r_1043_ep0421=-1.0;
	% Local Parameter:   id =  ep0805, name = ep0805
	reaction_r_1043_ep0805=-1.0;

	reaction_r_1043=compartment_cell*reaction_r_1043_v0*(1+reaction_r_1043_ep0467*log(x(139)/global_par_ic0467)+reaction_r_1043_ep0795*log(x(202)/global_par_ic0795)+reaction_r_1043_ep0421*log(x(132)/global_par_ic0421)+reaction_r_1043_ep0805*log(x(204)/global_par_ic0805));

% Reaction: id = r_1045, name = nucleoside-diphosphate kinase (ATP:GDP)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1045_FLUX_VALUE=0.10884935857298;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1045_v0=0.10884935857298;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_1045_ep0467=1.0;
	% Local Parameter:   id =  ep0896, name = ep0896
	reaction_r_1045_ep0896=1.0;
	% Local Parameter:   id =  ep0421, name = ep0421
	reaction_r_1045_ep0421=-1.0;
	% Local Parameter:   id =  ep0945, name = ep0945
	reaction_r_1045_ep0945=-1.0;

	reaction_r_1045=compartment_cell*reaction_r_1045_v0*(1+reaction_r_1045_ep0467*log(x(139)/global_par_ic0467)+reaction_r_1045_ep0896*log(x(219)/global_par_ic0896)+reaction_r_1045_ep0421*log(x(132)/global_par_ic0421)+reaction_r_1045_ep0945*log(x(229)/global_par_ic0945));

% Reaction: id = r_1046, name = nucleoside-diphosphate kinase (ATP:UDP)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1046_FLUX_VALUE=0.0589070115461784;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1046_v0=0.0589070115461784;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_1046_ep0467=1.0;
	% Local Parameter:   id =  ep1733, name = ep1733
	reaction_r_1046_ep1733=1.0;
	% Local Parameter:   id =  ep0421, name = ep0421
	reaction_r_1046_ep0421=-1.0;
	% Local Parameter:   id =  ep1792, name = ep1792
	reaction_r_1046_ep1792=-1.0;

	reaction_r_1046=compartment_cell*reaction_r_1046_v0*(1+reaction_r_1046_ep0467*log(x(139)/global_par_ic0467)+reaction_r_1046_ep1733*log(x(383)/global_par_ic1733)+reaction_r_1046_ep0421*log(x(132)/global_par_ic0421)+reaction_r_1046_ep1792*log(x(400)/global_par_ic1792));

% Reaction: id = r_1047, name = nucleoside-triphosphatase (ATP)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1047_FLUX_VALUE=3.15000000000004;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1047_v0=3.15000000000004;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_1047_ep0467=1.0;
	% Local Parameter:   id =  ep0421, name = ep0421
	reaction_r_1047_ep0421=-1.0;
	% Local Parameter:   id =  ep1430, name = ep1430
	reaction_r_1047_ep1430=-1.0;

	reaction_r_1047=compartment_cell*reaction_r_1047_v0*(1+reaction_r_1047_ep0467*log(x(139)/global_par_ic0467)+reaction_r_1047_ep0421*log(x(132)/global_par_ic0421)+reaction_r_1047_ep1430*log(x(336)/global_par_ic1430));

% Reaction: id = r_1054, name = O-Phospho-4-hydroxy-L-threonine:2-oxoglutarate aminotransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1054_FLUX_VALUE=3.08892317222495E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1054_v0=3.08892317222495E-5;
	% Local Parameter:   id =  ep1095, name = ep1095
	reaction_r_1054_ep1095=1.0;
	% Local Parameter:   id =  ep0231, name = ep0231
	reaction_r_1054_ep0231=1.0;
	% Local Parameter:   id =  ep0233, name = ep0233
	reaction_r_1054_ep0233=-1.0;
	% Local Parameter:   id =  ep1362, name = ep1362
	reaction_r_1054_ep1362=-1.0;

	reaction_r_1054=compartment_cell*reaction_r_1054_v0*(1+reaction_r_1054_ep1095*log(x(259)/global_par_ic1095)+reaction_r_1054_ep0231*log(x(50)/global_par_ic0231)+reaction_r_1054_ep0233*log(x(52)/global_par_ic0233)+reaction_r_1054_ep1362*log(x(320)/global_par_ic1362));

% Reaction: id = r_1057, name = O-succinylhomoserine lyase (L-cysteine)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1057_FLUX_VALUE=0.0213211883092039;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1057_v0=0.0213211883092039;
	% Local Parameter:   id =  ep1083, name = ep1083
	reaction_r_1057_ep1083=1.0;
	% Local Parameter:   id =  ep1367, name = ep1367
	reaction_r_1057_ep1367=1.0;
	% Local Parameter:   id =  ep1082, name = ep1082
	reaction_r_1057_ep1082=-1.0;
	% Local Parameter:   id =  ep1595, name = ep1595
	reaction_r_1057_ep1595=-1.0;

	reaction_r_1057=compartment_cell*reaction_r_1057_v0*(1+reaction_r_1057_ep1083*log(x(258)/global_par_ic1083)+reaction_r_1057_ep1367*log(x(323)/global_par_ic1367)+reaction_r_1057_ep1082*log(x(257)/global_par_ic1082)+reaction_r_1057_ep1595*log(x(365)/global_par_ic1595));

% Reaction: id = r_1063, name = Octaprenyl pyrophosphate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1063_FLUX_VALUE=3.08892317229362E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1063_v0=3.08892317229362E-5;
	% Local Parameter:   id =  ep0826, name = ep0826
	reaction_r_1063_ep0826=1.0;
	% Local Parameter:   id =  ep1028, name = ep1028
	reaction_r_1063_ep1028=5.0;
	% Local Parameter:   id =  ep0435, name = ep0435
	reaction_r_1063_ep0435=-1.0;
	% Local Parameter:   id =  ep0783, name = ep0783
	reaction_r_1063_ep0783=-5.0;

	reaction_r_1063=compartment_cell*reaction_r_1063_v0*(1+reaction_r_1063_ep0826*log(x(209)/global_par_ic0826)+reaction_r_1063_ep1028*log(x(247)/global_par_ic1028)+reaction_r_1063_ep0435*log(x(133)/global_par_ic0435)+reaction_r_1063_ep0783*log(x(198)/global_par_ic0783));

% Reaction: id = r_1064, name = Octaprenyl-hydroxybenzoate decarboxylase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1064_FLUX_VALUE=3.08892317229363E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1064_v0=3.08892317229363E-5;
	% Local Parameter:   id =  ep0283, name = ep0283
	reaction_r_1064_ep0283=1.0;
	% Local Parameter:   id =  ep0229, name = ep0229
	reaction_r_1064_ep0229=-1.0;
	% Local Parameter:   id =  ep0543, name = ep0543
	reaction_r_1064_ep0543=-1.0;

	reaction_r_1064=compartment_cell*reaction_r_1064_v0*(1+reaction_r_1064_ep0283*log(x(68)/global_par_ic0283)+reaction_r_1064_ep0229*log(x(49)/global_par_ic0229)+reaction_r_1064_ep0543*log(x(160)/global_par_ic0543));

% Reaction: id = r_1065, name = ornithine carbamoyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1065_FLUX_VALUE=0.040973249971501;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1065_v0=0.040973249971501;
	% Local Parameter:   id =  ep0502, name = ep0502
	reaction_r_1065_ep0502=1.0;
	% Local Parameter:   id =  ep1391, name = ep1391
	reaction_r_1065_ep1391=1.0;
	% Local Parameter:   id =  ep1081, name = ep1081
	reaction_r_1065_ep1081=-1.0;
	% Local Parameter:   id =  ep1430, name = ep1430
	reaction_r_1065_ep1430=-1.0;

	reaction_r_1065=compartment_cell*reaction_r_1065_v0*(1+reaction_r_1065_ep0502*log(x(149)/global_par_ic0502)+reaction_r_1065_ep1391*log(x(326)/global_par_ic1391)+reaction_r_1065_ep1081*log(x(256)/global_par_ic1081)+reaction_r_1065_ep1430*log(x(336)/global_par_ic1430));

% Reaction: id = r_1067, name = orotate phosphoribosyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1067_FLUX_VALUE=0.0458199505005801;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1067_v0=0.0458199505005801;
	% Local Parameter:   id =  ep1394, name = ep1394
	reaction_r_1067_ep1394=1.0;
	% Local Parameter:   id =  ep0360, name = ep0360
	reaction_r_1067_ep0360=1.0;
	% Local Parameter:   id =  ep1397, name = ep1397
	reaction_r_1067_ep1397=-1.0;
	% Local Parameter:   id =  ep0783, name = ep0783
	reaction_r_1067_ep0783=-1.0;

	reaction_r_1067=compartment_cell*reaction_r_1067_v0*(1+reaction_r_1067_ep1394*log(x(327)/global_par_ic1394)+reaction_r_1067_ep0360*log(x(107)/global_par_ic0360)+reaction_r_1067_ep1397*log(x(328)/global_par_ic1397)+reaction_r_1067_ep0783*log(x(198)/global_par_ic0783));

% Reaction: id = r_1068, name = orotidine-5'-phosphate decarboxylase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1068_FLUX_VALUE=0.0458199505005801;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1068_v0=0.0458199505005801;
	% Local Parameter:   id =  ep1397, name = ep1397
	reaction_r_1068_ep1397=1.0;
	% Local Parameter:   id =  ep0543, name = ep0543
	reaction_r_1068_ep0543=-1.0;
	% Local Parameter:   id =  ep1762, name = ep1762
	reaction_r_1068_ep1762=-1.0;

	reaction_r_1068=compartment_cell*reaction_r_1068_v0*(1+reaction_r_1068_ep1397*log(x(328)/global_par_ic1397)+reaction_r_1068_ep0543*log(x(160)/global_par_ic0543)+reaction_r_1068_ep1762*log(x(394)/global_par_ic1762));

% Reaction: id = r_1074, name = pantetheine-phosphate adenylyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1074_FLUX_VALUE=7.97856388897518E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1074_v0=7.97856388897518E-5;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_1074_ep0467=1.0;
	% Local Parameter:   id =  ep1413, name = ep1413
	reaction_r_1074_ep1413=1.0;
	% Local Parameter:   id =  ep0754, name = ep0754
	reaction_r_1074_ep0754=-1.0;
	% Local Parameter:   id =  ep0783, name = ep0783
	reaction_r_1074_ep0783=-1.0;

	reaction_r_1074=compartment_cell*reaction_r_1074_v0*(1+reaction_r_1074_ep0467*log(x(139)/global_par_ic0467)+reaction_r_1074_ep1413*log(x(334)/global_par_ic1413)+reaction_r_1074_ep0754*log(x(189)/global_par_ic0754)+reaction_r_1074_ep0783*log(x(198)/global_par_ic0783));

% Reaction: id = r_1075, name = pantothenate kinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1075_FLUX_VALUE=7.97856388897518E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1075_v0=7.97856388897518E-5;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_1075_ep0467=1.0;
	% Local Parameter:   id =  ep0033, name = ep0033
	reaction_r_1075_ep0033=1.0;
	% Local Parameter:   id =  ep0599, name = ep0599
	reaction_r_1075_ep0599=-1.0;
	% Local Parameter:   id =  ep0421, name = ep0421
	reaction_r_1075_ep0421=-1.0;

	reaction_r_1075=compartment_cell*reaction_r_1075_v0*(1+reaction_r_1075_ep0467*log(x(139)/global_par_ic0467)+reaction_r_1075_ep0033*log(x(8)/global_par_ic0033)+reaction_r_1075_ep0599*log(x(168)/global_par_ic0599)+reaction_r_1075_ep0421*log(x(132)/global_par_ic0421));

% Reaction: id = r_1076, name = pantothenate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1076_FLUX_VALUE=7.97856388884133E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1076_v0=7.97856388884133E-5;
	% Local Parameter:   id =  ep0470, name = ep0470
	reaction_r_1076_ep0470=1.0;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_1076_ep0467=1.0;
	% Local Parameter:   id =  ep0032, name = ep0032
	reaction_r_1076_ep0032=1.0;
	% Local Parameter:   id =  ep0454, name = ep0454
	reaction_r_1076_ep0454=-1.0;
	% Local Parameter:   id =  ep0033, name = ep0033
	reaction_r_1076_ep0033=-1.0;
	% Local Parameter:   id =  ep0783, name = ep0783
	reaction_r_1076_ep0783=-1.0;

	reaction_r_1076=compartment_cell*reaction_r_1076_v0*(1+reaction_r_1076_ep0470*log(x(140)/global_par_ic0470)+reaction_r_1076_ep0467*log(x(139)/global_par_ic0467)+reaction_r_1076_ep0032*log(x(7)/global_par_ic0032)+reaction_r_1076_ep0454*log(x(137)/global_par_ic0454)+reaction_r_1076_ep0033*log(x(8)/global_par_ic0033)+reaction_r_1076_ep0783*log(x(198)/global_par_ic0783));

% Reaction: id = r_1081, name = phenylalanine transaminase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1081_FLUX_VALUE=0.0256671508442138;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1081_v0=0.0256671508442138;
	% Local Parameter:   id =  ep1095, name = ep1095
	reaction_r_1081_ep1095=1.0;
	% Local Parameter:   id =  ep1429, name = ep1429
	reaction_r_1081_ep1429=1.0;
	% Local Parameter:   id =  ep0233, name = ep0233
	reaction_r_1081_ep0233=-1.0;
	% Local Parameter:   id =  ep1151, name = ep1151
	reaction_r_1081_ep1151=-1.0;

	reaction_r_1081=compartment_cell*reaction_r_1081_v0*(1+reaction_r_1081_ep1095*log(x(259)/global_par_ic1095)+reaction_r_1081_ep1429*log(x(335)/global_par_ic1429)+reaction_r_1081_ep0233*log(x(52)/global_par_ic0233)+reaction_r_1081_ep1151*log(x(275)/global_par_ic1151));

% Reaction: id = r_1123, name = Phosphatidylserine decarboxylase (n-C16:0)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1123_FLUX_VALUE=0.00884013797559549;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1123_v0=0.00884013797559549;
	% Local Parameter:   id =  ep1477, name = ep1477
	reaction_r_1123_ep1477=1.0;
	% Local Parameter:   id =  ep0543, name = ep0543
	reaction_r_1123_ep0543=-1.0;
	% Local Parameter:   id =  ep1437, name = ep1437
	reaction_r_1123_ep1437=-1.0;

	reaction_r_1123=compartment_cell*reaction_r_1123_v0*(1+reaction_r_1123_ep1477*log(x(340)/global_par_ic1477)+reaction_r_1123_ep0543*log(x(160)/global_par_ic0543)+reaction_r_1123_ep1437*log(x(338)/global_par_ic1437));

% Reaction: id = r_1124, name = Phosphatidylserine decarboxylase (n-C16:1)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1124_FLUX_VALUE=0.0104178435779464;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1124_v0=0.0104178435779464;
	% Local Parameter:   id =  ep1476, name = ep1476
	reaction_r_1124_ep1476=1.0;
	% Local Parameter:   id =  ep0543, name = ep0543
	reaction_r_1124_ep0543=-1.0;
	% Local Parameter:   id =  ep1435, name = ep1435
	reaction_r_1124_ep1435=-1.0;

	reaction_r_1124=compartment_cell*reaction_r_1124_v0*(1+reaction_r_1124_ep1476*log(x(339)/global_par_ic1476)+reaction_r_1124_ep0543*log(x(160)/global_par_ic0543)+reaction_r_1124_ep1435*log(x(337)/global_par_ic1435));

% Reaction: id = r_1130, name = Phosphatidylserine syntase (n-C16:0)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1130_FLUX_VALUE=0.00884013797559936;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1130_v0=0.00884013797559936;
	% Local Parameter:   id =  ep0513, name = ep0513
	reaction_r_1130_ep0513=1.0;
	% Local Parameter:   id =  ep1170, name = ep1170
	reaction_r_1130_ep1170=1.0;
	% Local Parameter:   id =  ep0539, name = ep0539
	reaction_r_1130_ep0539=-1.0;
	% Local Parameter:   id =  ep1477, name = ep1477
	reaction_r_1130_ep1477=-1.0;

	reaction_r_1130=compartment_cell*reaction_r_1130_v0*(1+reaction_r_1130_ep0513*log(x(152)/global_par_ic0513)+reaction_r_1130_ep1170*log(x(277)/global_par_ic1170)+reaction_r_1130_ep0539*log(x(158)/global_par_ic0539)+reaction_r_1130_ep1477*log(x(340)/global_par_ic1477));

% Reaction: id = r_1131, name = Phosphatidylserine syntase (n-C16:1)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1131_FLUX_VALUE=0.0104178435779464;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1131_v0=0.0104178435779464;
	% Local Parameter:   id =  ep0512, name = ep0512
	reaction_r_1131_ep0512=1.0;
	% Local Parameter:   id =  ep1170, name = ep1170
	reaction_r_1131_ep1170=1.0;
	% Local Parameter:   id =  ep0539, name = ep0539
	reaction_r_1131_ep0539=-1.0;
	% Local Parameter:   id =  ep1476, name = ep1476
	reaction_r_1131_ep1476=-1.0;

	reaction_r_1131=compartment_cell*reaction_r_1131_v0*(1+reaction_r_1131_ep0512*log(x(151)/global_par_ic0512)+reaction_r_1131_ep1170*log(x(277)/global_par_ic1170)+reaction_r_1131_ep0539*log(x(158)/global_par_ic0539)+reaction_r_1131_ep1476*log(x(339)/global_par_ic1476));

% Reaction: id = r_1134, name = phospho-L-serine phosphatase (periplasmic)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1134_FLUX_VALUE=0.146909255332631;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1134_v0=0.146909255332631;
	% Local Parameter:   id =  ep1364, name = ep1364
	reaction_r_1134_ep1364=1.0;
	% Local Parameter:   id =  ep1430, name = ep1430
	reaction_r_1134_ep1430=-1.0;
	% Local Parameter:   id =  ep1170, name = ep1170
	reaction_r_1134_ep1170=-1.0;

	reaction_r_1134=compartment_cell*reaction_r_1134_v0*(1+reaction_r_1134_ep1364*log(x(322)/global_par_ic1364)+reaction_r_1134_ep1430*log(x(336)/global_par_ic1430)+reaction_r_1134_ep1170*log(x(277)/global_par_ic1170));

% Reaction: id = r_1137, name = phospho-N-acetylmuramoyl-pentapeptide-transferase (meso-2,6-diaminopimelate)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1137_FLUX_VALUE=0.0038479948756196;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1137_v0=0.0038479948756196;
	% Local Parameter:   id =  ep1768, name = ep1768
	reaction_r_1137_ep1768=1.0;
	% Local Parameter:   id =  ep1755, name = ep1755
	reaction_r_1137_ep1755=1.0;
	% Local Parameter:   id =  ep1777, name = ep1777
	reaction_r_1137_ep1777=-1.0;
	% Local Parameter:   id =  ep1762, name = ep1762
	reaction_r_1137_ep1762=-1.0;

	reaction_r_1137=compartment_cell*reaction_r_1137_v0*(1+reaction_r_1137_ep1768*log(x(396)/global_par_ic1768)+reaction_r_1137_ep1755*log(x(393)/global_par_ic1755)+reaction_r_1137_ep1777*log(x(398)/global_par_ic1777)+reaction_r_1137_ep1762*log(x(394)/global_par_ic1762));

% Reaction: id = r_1139, name = phosphoadenylyl-sulfate reductase (thioredoxin)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1139_FLUX_VALUE=0.0343363591697112;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1139_v0=0.0343363591697112;
	% Local Parameter:   id =  ep0252, name = ep0252
	reaction_r_1139_ep0252=1.0;
	% Local Parameter:   id =  ep1544, name = ep1544
	reaction_r_1139_ep1544=1.0;
	% Local Parameter:   id =  ep0411, name = ep0411
	reaction_r_1139_ep0411=-1.0;
	% Local Parameter:   id =  ep1612, name = ep1612
	reaction_r_1139_ep1612=-1.0;
	% Local Parameter:   id =  ep1406, name = ep1406
	reaction_r_1139_ep1406=-1.0;

	reaction_r_1139=compartment_cell*reaction_r_1139_v0*(1+reaction_r_1139_ep0252*log(x(54)/global_par_ic0252)+reaction_r_1139_ep1544*log(x(354)/global_par_ic1544)+reaction_r_1139_ep0411*log(x(129)/global_par_ic0411)+reaction_r_1139_ep1612*log(x(368)/global_par_ic1612)+reaction_r_1139_ep1406*log(x(330)/global_par_ic1406));

% Reaction: id = r_1141, name = phosphoenolpyruvate carboxylase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1141_FLUX_VALUE=0.492899539861318;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1141_v0=0.492899539861318;
	% Local Parameter:   id =  ep0543, name = ep0543
	reaction_r_1141_ep0543=1.0;
	% Local Parameter:   id =  ep1484, name = ep1484
	reaction_r_1141_ep1484=1.0;
	% Local Parameter:   id =  ep1399, name = ep1399
	reaction_r_1141_ep1399=-1.0;
	% Local Parameter:   id =  ep1430, name = ep1430
	reaction_r_1141_ep1430=-1.0;

	reaction_r_1141=compartment_cell*reaction_r_1141_v0*(1+reaction_r_1141_ep0543*log(x(160)/global_par_ic0543)+reaction_r_1141_ep1484*log(x(341)/global_par_ic1484)+reaction_r_1141_ep1399*log(x(329)/global_par_ic1399)+reaction_r_1141_ep1430*log(x(336)/global_par_ic1430));

% Reaction: id = r_1150, name = phosphoglucosamine mutase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1150_FLUX_VALUE=0.0130870610456735;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1150_v0=0.0130870610456735;
	% Local Parameter:   id =  ep0654, name = ep0654
	reaction_r_1150_ep0654=1.0;
	% Local Parameter:   id =  ep0653, name = ep0653
	reaction_r_1150_ep0653=-1.0;

	reaction_r_1150=compartment_cell*reaction_r_1150_v0*(1+reaction_r_1150_ep0654*log(x(177)/global_par_ic0654)+reaction_r_1150_ep0653*log(x(176)/global_par_ic0653));

% Reaction: id = r_1151, name = phosphoglycerate dehydrogenase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1151_FLUX_VALUE=0.146909255332631;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1151_v0=0.146909255332631;
	% Local Parameter:   id =  ep0306, name = ep0306
	reaction_r_1151_ep0306=1.0;
	% Local Parameter:   id =  ep1333, name = ep1333
	reaction_r_1151_ep1333=1.0;
	% Local Parameter:   id =  ep0308, name = ep0308
	reaction_r_1151_ep0308=-1.0;
	% Local Parameter:   id =  ep1334, name = ep1334
	reaction_r_1151_ep1334=-1.0;

	reaction_r_1151=compartment_cell*reaction_r_1151_v0*(1+reaction_r_1151_ep0306*log(x(78)/global_par_ic0306)+reaction_r_1151_ep1333*log(x(314)/global_par_ic1333)+reaction_r_1151_ep0308*log(x(80)/global_par_ic0308)+reaction_r_1151_ep1334*log(x(315)/global_par_ic1334));

% Reaction: id = r_1152, name = phosphoglycerate kinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1152_FLUX_VALUE=0.787832256050213;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1152_v0=0.787832256050213;
	% Local Parameter:   id =  ep0307, name = ep0307
	reaction_r_1152_ep0307=1.0;
	% Local Parameter:   id =  ep0421, name = ep0421
	reaction_r_1152_ep0421=1.0;
	% Local Parameter:   id =  ep0306, name = ep0306
	reaction_r_1152_ep0306=-1.0;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_1152_ep0467=-1.0;

	reaction_r_1152=compartment_cell*reaction_r_1152_v0*(1+reaction_r_1152_ep0307*log(x(79)/global_par_ic0307)+reaction_r_1152_ep0421*log(x(132)/global_par_ic0421)+reaction_r_1152_ep0306*log(x(78)/global_par_ic0306)+reaction_r_1152_ep0467*log(x(139)/global_par_ic0467));

% Reaction: id = r_1153, name = phosphoglycerate mutase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1153_FLUX_VALUE=0.64092300071826;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1153_v0=0.64092300071826;
	% Local Parameter:   id =  ep0306, name = ep0306
	reaction_r_1153_ep0306=1.0;
	% Local Parameter:   id =  ep0675, name = ep0675
	reaction_r_1153_ep0675=-1.0;

	reaction_r_1153=compartment_cell*reaction_r_1153_v0*(1+reaction_r_1153_ep0306*log(x(78)/global_par_ic0306)+reaction_r_1153_ep0675*log(x(181)/global_par_ic0675));

% Reaction: id = r_1198, name = phosphomethylpyrimidine kinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1198_FLUX_VALUE=3.08892317229363E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1198_v0=3.08892317229363E-5;
	% Local Parameter:   id =  ep0313, name = ep0313
	reaction_r_1198_ep0313=1.0;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_1198_ep0467=1.0;
	% Local Parameter:   id =  ep0218, name = ep0218
	reaction_r_1198_ep0218=-1.0;
	% Local Parameter:   id =  ep0421, name = ep0421
	reaction_r_1198_ep0421=-1.0;

	reaction_r_1198=compartment_cell*reaction_r_1198_v0*(1+reaction_r_1198_ep0313*log(x(84)/global_par_ic0313)+reaction_r_1198_ep0467*log(x(139)/global_par_ic0467)+reaction_r_1198_ep0218*log(x(47)/global_par_ic0218)+reaction_r_1198_ep0421*log(x(132)/global_par_ic0421));

% Reaction: id = r_1200, name = phosphopantothenate-cysteine ligase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1200_FLUX_VALUE=7.97856388897518E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1200_v0=7.97856388897518E-5;
	% Local Parameter:   id =  ep0599, name = ep0599
	reaction_r_1200_ep0599=1.0;
	% Local Parameter:   id =  ep0575, name = ep0575
	reaction_r_1200_ep0575=1.0;
	% Local Parameter:   id =  ep1083, name = ep1083
	reaction_r_1200_ep1083=1.0;
	% Local Parameter:   id =  ep1277, name = ep1277
	reaction_r_1200_ep1277=-1.0;
	% Local Parameter:   id =  ep0539, name = ep0539
	reaction_r_1200_ep0539=-1.0;
	% Local Parameter:   id =  ep0783, name = ep0783
	reaction_r_1200_ep0783=-1.0;

	reaction_r_1200=compartment_cell*reaction_r_1200_v0*(1+reaction_r_1200_ep0599*log(x(168)/global_par_ic0599)+reaction_r_1200_ep0575*log(x(165)/global_par_ic0575)+reaction_r_1200_ep1083*log(x(258)/global_par_ic1083)+reaction_r_1200_ep1277*log(x(300)/global_par_ic1277)+reaction_r_1200_ep0539*log(x(158)/global_par_ic0539)+reaction_r_1200_ep0783*log(x(198)/global_par_ic0783));

% Reaction: id = r_1201, name = phosphopantothenoylcysteine decarboxylase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1201_FLUX_VALUE=7.97856388897518E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1201_v0=7.97856388897518E-5;
	% Local Parameter:   id =  ep1277, name = ep1277
	reaction_r_1201_ep1277=1.0;
	% Local Parameter:   id =  ep0543, name = ep0543
	reaction_r_1201_ep0543=-1.0;
	% Local Parameter:   id =  ep1413, name = ep1413
	reaction_r_1201_ep1413=-1.0;

	reaction_r_1201=compartment_cell*reaction_r_1201_v0*(1+reaction_r_1201_ep1277*log(x(300)/global_par_ic1277)+reaction_r_1201_ep0543*log(x(160)/global_par_ic0543)+reaction_r_1201_ep1413*log(x(334)/global_par_ic1413));

% Reaction: id = r_1202, name = phosphopentomutase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1202_FLUX_VALUE=9.32217621775477E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1202_v0=9.32217621775477E-5;
	% Local Parameter:   id =  ep0446, name = ep0446
	reaction_r_1202_ep0446=1.0;
	% Local Parameter:   id =  ep0445, name = ep0445
	reaction_r_1202_ep0445=-1.0;

	reaction_r_1202=compartment_cell*reaction_r_1202_v0*(1+reaction_r_1202_ep0446*log(x(135)/global_par_ic0446)+reaction_r_1202_ep0445*log(x(134)/global_par_ic0445));

% Reaction: id = r_1204, name = phosphoribosyl-AMP cyclohydrolase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1204_FLUX_VALUE=0.0131230753965474;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1204_v0=0.0131230753965474;
	% Local Parameter:   id =  ep0098, name = ep0098
	reaction_r_1204_ep0098=1.0;
	% Local Parameter:   id =  ep0097, name = ep0097
	reaction_r_1204_ep0097=-1.0;

	reaction_r_1204=compartment_cell*reaction_r_1204_v0*(1+reaction_r_1204_ep0098*log(x(25)/global_par_ic0098)+reaction_r_1204_ep0097*log(x(24)/global_par_ic0097));

% Reaction: id = r_1205, name = phosphoribosyl-ATP pyrophosphatase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1205_FLUX_VALUE=0.0131230753965474;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1205_v0=0.0131230753965474;
	% Local Parameter:   id =  ep0099, name = ep0099
	reaction_r_1205_ep0099=1.0;
	% Local Parameter:   id =  ep0783, name = ep0783
	reaction_r_1205_ep0783=-1.0;
	% Local Parameter:   id =  ep0098, name = ep0098
	reaction_r_1205_ep0098=-1.0;

	reaction_r_1205=compartment_cell*reaction_r_1205_v0*(1+reaction_r_1205_ep0099*log(x(26)/global_par_ic0099)+reaction_r_1205_ep0783*log(x(198)/global_par_ic0783)+reaction_r_1205_ep0098*log(x(25)/global_par_ic0098));

% Reaction: id = r_1206, name = phosphoribosylaminoimidazole carboxylase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1206_FLUX_VALUE=0.0613899240064973;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1206_v0=0.0613899240064973;
	% Local Parameter:   id =  ep0342, name = ep0342
	reaction_r_1206_ep0342=1.0;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_1206_ep0467=1.0;
	% Local Parameter:   id =  ep0474, name = ep0474
	reaction_r_1206_ep0474=1.0;
	% Local Parameter:   id =  ep0362, name = ep0362
	reaction_r_1206_ep0362=-1.0;
	% Local Parameter:   id =  ep0421, name = ep0421
	reaction_r_1206_ep0421=-1.0;
	% Local Parameter:   id =  ep1430, name = ep1430
	reaction_r_1206_ep1430=-1.0;

	reaction_r_1206=compartment_cell*reaction_r_1206_v0*(1+reaction_r_1206_ep0342*log(x(98)/global_par_ic0342)+reaction_r_1206_ep0467*log(x(139)/global_par_ic0467)+reaction_r_1206_ep0474*log(x(141)/global_par_ic0474)+reaction_r_1206_ep0362*log(x(109)/global_par_ic0362)+reaction_r_1206_ep0421*log(x(132)/global_par_ic0421)+reaction_r_1206_ep1430*log(x(336)/global_par_ic1430));

% Reaction: id = r_1207, name = phosphoribosylaminoimidazole carboxylase (mutase rxn)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1207_FLUX_VALUE=0.0613899240064973;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1207_v0=0.0613899240064973;
	% Local Parameter:   id =  ep0362, name = ep0362
	reaction_r_1207_ep0362=1.0;
	% Local Parameter:   id =  ep0344, name = ep0344
	reaction_r_1207_ep0344=-1.0;

	reaction_r_1207=compartment_cell*reaction_r_1207_v0*(1+reaction_r_1207_ep0362*log(x(109)/global_par_ic0362)+reaction_r_1207_ep0344*log(x(100)/global_par_ic0344));

% Reaction: id = r_1208, name = phosphoribosylaminoimidazole synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1208_FLUX_VALUE=0.0614208132382202;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1208_v0=0.0614208132382202;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_1208_ep0467=1.0;
	% Local Parameter:   id =  ep0162, name = ep0162
	reaction_r_1208_ep0162=1.0;
	% Local Parameter:   id =  ep0421, name = ep0421
	reaction_r_1208_ep0421=-1.0;
	% Local Parameter:   id =  ep0342, name = ep0342
	reaction_r_1208_ep0342=-1.0;
	% Local Parameter:   id =  ep1430, name = ep1430
	reaction_r_1208_ep1430=-1.0;

	reaction_r_1208=compartment_cell*reaction_r_1208_v0*(1+reaction_r_1208_ep0467*log(x(139)/global_par_ic0467)+reaction_r_1208_ep0162*log(x(38)/global_par_ic0162)+reaction_r_1208_ep0421*log(x(132)/global_par_ic0421)+reaction_r_1208_ep0342*log(x(98)/global_par_ic0342)+reaction_r_1208_ep1430*log(x(336)/global_par_ic1430));

% Reaction: id = r_1209, name = phosphoribosylaminoimidazolecarboxamide formyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1209_FLUX_VALUE=0.0745129994030467;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1209_v0=0.0745129994030467;
	% Local Parameter:   id =  ep0133, name = ep0133
	reaction_r_1209_ep0133=1.0;
	% Local Parameter:   id =  ep0343, name = ep0343
	reaction_r_1209_ep0343=1.0;
	% Local Parameter:   id =  ep0352, name = ep0352
	reaction_r_1209_ep0352=-1.0;
	% Local Parameter:   id =  ep0337, name = ep0337
	reaction_r_1209_ep0337=-1.0;

	reaction_r_1209=compartment_cell*reaction_r_1209_v0*(1+reaction_r_1209_ep0133*log(x(32)/global_par_ic0133)+reaction_r_1209_ep0343*log(x(99)/global_par_ic0343)+reaction_r_1209_ep0352*log(x(104)/global_par_ic0352)+reaction_r_1209_ep0337*log(x(96)/global_par_ic0337));

% Reaction: id = r_1210, name = phosphoribosylaminoimidazolesuccinocarboxamide synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1210_FLUX_VALUE=0.0613899240064973;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1210_v0=0.0613899240064973;
	% Local Parameter:   id =  ep0344, name = ep0344
	reaction_r_1210_ep0344=1.0;
	% Local Parameter:   id =  ep1072, name = ep1072
	reaction_r_1210_ep1072=1.0;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_1210_ep0467=1.0;
	% Local Parameter:   id =  ep0040, name = ep0040
	reaction_r_1210_ep0040=-1.0;
	% Local Parameter:   id =  ep0421, name = ep0421
	reaction_r_1210_ep0421=-1.0;
	% Local Parameter:   id =  ep1430, name = ep1430
	reaction_r_1210_ep1430=-1.0;

	reaction_r_1210=compartment_cell*reaction_r_1210_v0*(1+reaction_r_1210_ep0344*log(x(100)/global_par_ic0344)+reaction_r_1210_ep1072*log(x(254)/global_par_ic1072)+reaction_r_1210_ep0467*log(x(139)/global_par_ic0467)+reaction_r_1210_ep0040*log(x(9)/global_par_ic0040)+reaction_r_1210_ep0421*log(x(132)/global_par_ic0421)+reaction_r_1210_ep1430*log(x(336)/global_par_ic1430));

% Reaction: id = r_1211, name = phosphoribosylanthranilate isomerase (irreversible)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1211_FLUX_VALUE=0.00787329117099325;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1211_v0=0.00787329117099325;
	% Local Parameter:   id =  ep1278, name = ep1278
	reaction_r_1211_ep1278=1.0;
	% Local Parameter:   id =  ep0096, name = ep0096
	reaction_r_1211_ep0096=-1.0;

	reaction_r_1211=compartment_cell*reaction_r_1211_v0*(1+reaction_r_1211_ep1278*log(x(301)/global_par_ic1278)+reaction_r_1211_ep0096*log(x(23)/global_par_ic0096));

% Reaction: id = r_1212, name = phosphoribosylformylglycinamidine synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1212_FLUX_VALUE=0.0614208132382202;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1212_v0=0.0614208132382202;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_1212_ep0467=1.0;
	% Local Parameter:   id =  ep1322, name = ep1322
	reaction_r_1212_ep1322=1.0;
	% Local Parameter:   id =  ep1101, name = ep1101
	reaction_r_1212_ep1101=1.0;
	% Local Parameter:   id =  ep0421, name = ep0421
	reaction_r_1212_ep0421=-1.0;
	% Local Parameter:   id =  ep0162, name = ep0162
	reaction_r_1212_ep0162=-1.0;
	% Local Parameter:   id =  ep1095, name = ep1095
	reaction_r_1212_ep1095=-1.0;
	% Local Parameter:   id =  ep1430, name = ep1430
	reaction_r_1212_ep1430=-1.0;

	reaction_r_1212=compartment_cell*reaction_r_1212_v0*(1+reaction_r_1212_ep0467*log(x(139)/global_par_ic0467)+reaction_r_1212_ep1322*log(x(311)/global_par_ic1322)+reaction_r_1212_ep1101*log(x(263)/global_par_ic1101)+reaction_r_1212_ep0421*log(x(132)/global_par_ic0421)+reaction_r_1212_ep0162*log(x(38)/global_par_ic0162)+reaction_r_1212_ep1095*log(x(259)/global_par_ic1095)+reaction_r_1212_ep1430*log(x(336)/global_par_ic1430));

% Reaction: id = r_1214, name = phosphoribosylglycinamide synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1214_FLUX_VALUE=0.0614208132382202;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1214_v0=0.0614208132382202;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_1214_ep0467=1.0;
	% Local Parameter:   id =  ep0929, name = ep0929
	reaction_r_1214_ep0929=1.0;
	% Local Parameter:   id =  ep0361, name = ep0361
	reaction_r_1214_ep0361=1.0;
	% Local Parameter:   id =  ep0421, name = ep0421
	reaction_r_1214_ep0421=-1.0;
	% Local Parameter:   id =  ep1318, name = ep1318
	reaction_r_1214_ep1318=-1.0;
	% Local Parameter:   id =  ep1430, name = ep1430
	reaction_r_1214_ep1430=-1.0;

	reaction_r_1214=compartment_cell*reaction_r_1214_v0*(1+reaction_r_1214_ep0467*log(x(139)/global_par_ic0467)+reaction_r_1214_ep0929*log(x(224)/global_par_ic0929)+reaction_r_1214_ep0361*log(x(108)/global_par_ic0361)+reaction_r_1214_ep0421*log(x(132)/global_par_ic0421)+reaction_r_1214_ep1318*log(x(309)/global_par_ic1318)+reaction_r_1214_ep1430*log(x(336)/global_par_ic1430));

% Reaction: id = r_1215, name = phosphoribosylpyrophosphate synthetase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1215_FLUX_VALUE=0.128552671426845;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1215_v0=0.128552671426845;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_1215_ep0467=1.0;
	% Local Parameter:   id =  ep0446, name = ep0446
	reaction_r_1215_ep0446=1.0;
	% Local Parameter:   id =  ep0454, name = ep0454
	reaction_r_1215_ep0454=-1.0;
	% Local Parameter:   id =  ep0360, name = ep0360
	reaction_r_1215_ep0360=-1.0;

	reaction_r_1215=compartment_cell*reaction_r_1215_v0*(1+reaction_r_1215_ep0467*log(x(139)/global_par_ic0467)+reaction_r_1215_ep0446*log(x(135)/global_par_ic0446)+reaction_r_1215_ep0454*log(x(137)/global_par_ic0454)+reaction_r_1215_ep0360*log(x(107)/global_par_ic0360));

% Reaction: id = r_1217, name = phosphoserine transaminase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1217_FLUX_VALUE=0.146909255332631;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1217_v0=0.146909255332631;
	% Local Parameter:   id =  ep0308, name = ep0308
	reaction_r_1217_ep0308=1.0;
	% Local Parameter:   id =  ep1095, name = ep1095
	reaction_r_1217_ep1095=1.0;
	% Local Parameter:   id =  ep0233, name = ep0233
	reaction_r_1217_ep0233=-1.0;
	% Local Parameter:   id =  ep1364, name = ep1364
	reaction_r_1217_ep1364=-1.0;

	reaction_r_1217=compartment_cell*reaction_r_1217_v0*(1+reaction_r_1217_ep0308*log(x(80)/global_par_ic0308)+reaction_r_1217_ep1095*log(x(259)/global_par_ic1095)+reaction_r_1217_ep0233*log(x(52)/global_par_ic0233)+reaction_r_1217_ep1364*log(x(322)/global_par_ic1364));

% Reaction: id = r_1218, name = phosphotransacetylase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1218_FLUX_VALUE=0.0807006804356794;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1218_v0=0.0807006804356794;
	% Local Parameter:   id =  ep0393, name = ep0393
	reaction_r_1218_ep0393=1.0;
	% Local Parameter:   id =  ep0555, name = ep0555
	reaction_r_1218_ep0555=1.0;
	% Local Parameter:   id =  ep0395, name = ep0395
	reaction_r_1218_ep0395=-1.0;
	% Local Parameter:   id =  ep1430, name = ep1430
	reaction_r_1218_ep1430=-1.0;

	reaction_r_1218=compartment_cell*reaction_r_1218_v0*(1+reaction_r_1218_ep0393*log(x(124)/global_par_ic0393)+reaction_r_1218_ep0555*log(x(162)/global_par_ic0555)+reaction_r_1218_ep0395*log(x(125)/global_par_ic0395)+reaction_r_1218_ep1430*log(x(336)/global_par_ic1430));

% Reaction: id = r_1220, name = Pimeloyl-[ACP] methyl ester esterase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1220_FLUX_VALUE=2.77033467884759E-7;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1220_v0=2.77033467884759E-7;
	% Local Parameter:   id =  ep1492, name = ep1492
	reaction_r_1220_ep1492=1.0;
	% Local Parameter:   id =  ep1248, name = ep1248
	reaction_r_1220_ep1248=-1.0;
	% Local Parameter:   id =  ep1491, name = ep1491
	reaction_r_1220_ep1491=-1.0;

	reaction_r_1220=compartment_cell*reaction_r_1220_v0*(1+reaction_r_1220_ep1492*log(x(343)/global_par_ic1492)+reaction_r_1220_ep1248*log(x(291)/global_par_ic1248)+reaction_r_1220_ep1491*log(x(342)/global_par_ic1491));

% Reaction: id = r_1222, name = polyphosphate kinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1222_FLUX_VALUE=0.484650799082247;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1222_v0=0.484650799082247;
	% Local Parameter:   id =  ep0421, name = ep0421
	reaction_r_1222_ep0421=1.0;
	% Local Parameter:   id =  ep0783, name = ep0783
	reaction_r_1222_ep0783=1.0;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_1222_ep0467=-1.0;
	% Local Parameter:   id =  ep1430, name = ep1430
	reaction_r_1222_ep1430=-1.0;

	reaction_r_1222=compartment_cell*reaction_r_1222_v0*(1+reaction_r_1222_ep0421*log(x(132)/global_par_ic0421)+reaction_r_1222_ep0783*log(x(198)/global_par_ic0783)+reaction_r_1222_ep0467*log(x(139)/global_par_ic0467)+reaction_r_1222_ep1430*log(x(336)/global_par_ic1430));

% Reaction: id = r_1223, name = porphobilinogen synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1223_FLUX_VALUE=2.47113853781668E-4;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1223_v0=2.47113853781668E-4;
	% Local Parameter:   id =  ep0345, name = ep0345
	reaction_r_1223_ep0345=2.0;
	% Local Parameter:   id =  ep1493, name = ep1493
	reaction_r_1223_ep1493=-1.0;

	reaction_r_1223=compartment_cell*reaction_r_1223_v0*(1+reaction_r_1223_ep0345*log(x(101)/global_par_ic0345)+reaction_r_1223_ep1493*log(x(344)/global_par_ic1493));

% Reaction: id = r_1224, name = prephenate dehydratase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1224_FLUX_VALUE=0.0256671508442138;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1224_v0=0.0256671508442138;
	% Local Parameter:   id =  ep1497, name = ep1497
	reaction_r_1224_ep1497=1.0;
	% Local Parameter:   id =  ep0543, name = ep0543
	reaction_r_1224_ep0543=-1.0;
	% Local Parameter:   id =  ep1429, name = ep1429
	reaction_r_1224_ep1429=-1.0;

	reaction_r_1224=compartment_cell*reaction_r_1224_v0*(1+reaction_r_1224_ep1497*log(x(346)/global_par_ic1497)+reaction_r_1224_ep0543*log(x(160)/global_par_ic0543)+reaction_r_1224_ep1429*log(x(335)/global_par_ic1429));

% Reaction: id = r_1225, name = prephenate dehydrogenase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1225_FLUX_VALUE=0.0191323468756361;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1225_v0=0.0191323468756361;
	% Local Parameter:   id =  ep1333, name = ep1333
	reaction_r_1225_ep1333=1.0;
	% Local Parameter:   id =  ep1497, name = ep1497
	reaction_r_1225_ep1497=1.0;
	% Local Parameter:   id =  ep0262, name = ep0262
	reaction_r_1225_ep0262=-1.0;
	% Local Parameter:   id =  ep0543, name = ep0543
	reaction_r_1225_ep0543=-1.0;
	% Local Parameter:   id =  ep1334, name = ep1334
	reaction_r_1225_ep1334=-1.0;

	reaction_r_1225=compartment_cell*reaction_r_1225_v0*(1+reaction_r_1225_ep1333*log(x(314)/global_par_ic1333)+reaction_r_1225_ep1497*log(x(346)/global_par_ic1497)+reaction_r_1225_ep0262*log(x(56)/global_par_ic0262)+reaction_r_1225_ep0543*log(x(160)/global_par_ic0543)+reaction_r_1225_ep1334*log(x(315)/global_par_ic1334));

% Reaction: id = r_1230, name = protoporphyrinogen oxidase (aerobic)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1230_FLUX_VALUE=3.08892317222945E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1230_v0=3.08892317222945E-5;
	% Local Parameter:   id =  ep1372, name = ep1372
	reaction_r_1230_ep1372=1.5;
	% Local Parameter:   id =  ep1512, name = ep1512
	reaction_r_1230_ep1512=1.0;
	% Local Parameter:   id =  ep1511, name = ep1511
	reaction_r_1230_ep1511=-1.0;

	reaction_r_1230=compartment_cell*reaction_r_1230_v0*(1+reaction_r_1230_ep1372*log(x(324)/global_par_ic1372)+reaction_r_1230_ep1512*log(x(349)/global_par_ic1512)+reaction_r_1230_ep1511*log(x(348)/global_par_ic1511));

% Reaction: id = r_1232, name = purine-nucleoside phosphorylase (Adenosine)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1232_FLUX_VALUE=9.32217619764956E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1232_v0=9.32217619764956E-5;
	% Local Parameter:   id =  ep0405, name = ep0405
	reaction_r_1232_ep0405=1.0;
	% Local Parameter:   id =  ep0445, name = ep0445
	reaction_r_1232_ep0445=1.0;
	% Local Parameter:   id =  ep0408, name = ep0408
	reaction_r_1232_ep0408=-1.0;
	% Local Parameter:   id =  ep1430, name = ep1430
	reaction_r_1232_ep1430=-1.0;

	reaction_r_1232=compartment_cell*reaction_r_1232_v0*(1+reaction_r_1232_ep0405*log(x(127)/global_par_ic0405)+reaction_r_1232_ep0445*log(x(134)/global_par_ic0445)+reaction_r_1232_ep0408*log(x(128)/global_par_ic0408)+reaction_r_1232_ep1430*log(x(336)/global_par_ic1430));

% Reaction: id = r_1245, name = Pyridoxine 5'-phosphate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1245_FLUX_VALUE=3.08892317222495E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1245_v0=3.08892317222495E-5;
	% Local Parameter:   id =  ep0116, name = ep0116
	reaction_r_1245_ep0116=1.0;
	% Local Parameter:   id =  ep1333, name = ep1333
	reaction_r_1245_ep1333=1.0;
	% Local Parameter:   id =  ep1362, name = ep1362
	reaction_r_1245_ep1362=1.0;
	% Local Parameter:   id =  ep0543, name = ep0543
	reaction_r_1245_ep0543=-1.0;
	% Local Parameter:   id =  ep1334, name = ep1334
	reaction_r_1245_ep1334=-1.0;
	% Local Parameter:   id =  ep1530, name = ep1530
	reaction_r_1245_ep1530=-1.0;
	% Local Parameter:   id =  ep1430, name = ep1430
	reaction_r_1245_ep1430=-1.0;

	reaction_r_1245=compartment_cell*reaction_r_1245_v0*(1+reaction_r_1245_ep0116*log(x(27)/global_par_ic0116)+reaction_r_1245_ep1333*log(x(314)/global_par_ic1333)+reaction_r_1245_ep1362*log(x(320)/global_par_ic1362)+reaction_r_1245_ep0543*log(x(160)/global_par_ic0543)+reaction_r_1245_ep1334*log(x(315)/global_par_ic1334)+reaction_r_1245_ep1530*log(x(351)/global_par_ic1530)+reaction_r_1245_ep1430*log(x(336)/global_par_ic1430));

% Reaction: id = r_1250, name = pyrroline-5-carboxylate reductase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1250_FLUX_VALUE=0.0306260499280495;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1250_v0=0.0306260499280495;
	% Local Parameter:   id =  ep0128, name = ep0128
	reaction_r_1250_ep0128=1.0;
	% Local Parameter:   id =  ep1336, name = ep1336
	reaction_r_1250_ep1336=1.0;
	% Local Parameter:   id =  ep1335, name = ep1335
	reaction_r_1250_ep1335=-1.0;
	% Local Parameter:   id =  ep1155, name = ep1155
	reaction_r_1250_ep1155=-1.0;

	reaction_r_1250=compartment_cell*reaction_r_1250_v0*(1+reaction_r_1250_ep0128*log(x(31)/global_par_ic0128)+reaction_r_1250_ep1336*log(x(317)/global_par_ic1336)+reaction_r_1250_ep1335*log(x(316)/global_par_ic1335)+reaction_r_1250_ep1155*log(x(276)/global_par_ic1155));

% Reaction: id = r_1251, name = pyruvate dehydrogenase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1251_FLUX_VALUE=0.407410405183232;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1251_v0=0.407410405183232;
	% Local Parameter:   id =  ep0555, name = ep0555
	reaction_r_1251_ep0555=1.0;
	% Local Parameter:   id =  ep1333, name = ep1333
	reaction_r_1251_ep1333=1.0;
	% Local Parameter:   id =  ep1531, name = ep1531
	reaction_r_1251_ep1531=1.0;
	% Local Parameter:   id =  ep0395, name = ep0395
	reaction_r_1251_ep0395=-1.0;
	% Local Parameter:   id =  ep0543, name = ep0543
	reaction_r_1251_ep0543=-1.0;
	% Local Parameter:   id =  ep1334, name = ep1334
	reaction_r_1251_ep1334=-1.0;

	reaction_r_1251=compartment_cell*reaction_r_1251_v0*(1+reaction_r_1251_ep0555*log(x(162)/global_par_ic0555)+reaction_r_1251_ep1333*log(x(314)/global_par_ic1333)+reaction_r_1251_ep1531*log(x(352)/global_par_ic1531)+reaction_r_1251_ep0395*log(x(125)/global_par_ic0395)+reaction_r_1251_ep0543*log(x(160)/global_par_ic0543)+reaction_r_1251_ep1334*log(x(315)/global_par_ic1334));

% Reaction: id = r_1252, name = pyruvate formate lyase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1252_FLUX_VALUE=0.0973208185619302;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1252_v0=0.0973208185619302;
	% Local Parameter:   id =  ep0555, name = ep0555
	reaction_r_1252_ep0555=1.0;
	% Local Parameter:   id =  ep1531, name = ep1531
	reaction_r_1252_ep1531=1.0;
	% Local Parameter:   id =  ep0395, name = ep0395
	reaction_r_1252_ep0395=-1.0;
	% Local Parameter:   id =  ep0867, name = ep0867
	reaction_r_1252_ep0867=-1.0;

	reaction_r_1252=compartment_cell*reaction_r_1252_v0*(1+reaction_r_1252_ep0555*log(x(162)/global_par_ic0555)+reaction_r_1252_ep1531*log(x(352)/global_par_ic1531)+reaction_r_1252_ep0395*log(x(125)/global_par_ic0395)+reaction_r_1252_ep0867*log(x(217)/global_par_ic0867));

% Reaction: id = r_1255, name = pyruvate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1255_FLUX_VALUE=0.0150663266603607;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1255_v0=0.0150663266603607;
	% Local Parameter:   id =  ep0555, name = ep0555
	reaction_r_1255_ep0555=1.0;
	% Local Parameter:   id =  ep0862, name = ep0862
	reaction_r_1255_ep0862=2.0;
	% Local Parameter:   id =  ep1531, name = ep1531
	reaction_r_1255_ep1531=1.0;
	% Local Parameter:   id =  ep0395, name = ep0395
	reaction_r_1255_ep0395=-1.0;
	% Local Parameter:   id =  ep0543, name = ep0543
	reaction_r_1255_ep0543=-1.0;
	% Local Parameter:   id =  ep0861, name = ep0861
	reaction_r_1255_ep0861=-2.0;

	reaction_r_1255=compartment_cell*reaction_r_1255_v0*(1+reaction_r_1255_ep0555*log(x(162)/global_par_ic0555)+reaction_r_1255_ep0862*log(x(215)/global_par_ic0862)+reaction_r_1255_ep1531*log(x(352)/global_par_ic1531)+reaction_r_1255_ep0395*log(x(125)/global_par_ic0395)+reaction_r_1255_ep0543*log(x(160)/global_par_ic0543)+reaction_r_1255_ep0861*log(x(214)/global_par_ic0861));

% Reaction: id = r_1259, name = quinolinate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1259_FLUX_VALUE=3.15541120467916E-4;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1259_v0=3.15541120467916E-4;
	% Local Parameter:   id =  ep0772, name = ep0772
	reaction_r_1259_ep0772=1.0;
	% Local Parameter:   id =  ep1005, name = ep1005
	reaction_r_1259_ep1005=1.0;
	% Local Parameter:   id =  ep1430, name = ep1430
	reaction_r_1259_ep1430=-1.0;
	% Local Parameter:   id =  ep1537, name = ep1537
	reaction_r_1259_ep1537=-1.0;

	reaction_r_1259=compartment_cell*reaction_r_1259_v0*(1+reaction_r_1259_ep0772*log(x(196)/global_par_ic0772)+reaction_r_1259_ep1005*log(x(237)/global_par_ic1005)+reaction_r_1259_ep1430*log(x(336)/global_par_ic1430)+reaction_r_1259_ep1537*log(x(353)/global_par_ic1537));

% Reaction: id = r_1264, name = riboflavin kinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1264_FLUX_VALUE=3.08892317229329E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1264_v0=3.08892317229329E-5;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_1264_ep0467=1.0;
	% Local Parameter:   id =  ep1546, name = ep1546
	reaction_r_1264_ep1546=1.0;
	% Local Parameter:   id =  ep0421, name = ep0421
	reaction_r_1264_ep0421=-1.0;
	% Local Parameter:   id =  ep0863, name = ep0863
	reaction_r_1264_ep0863=-1.0;

	reaction_r_1264=compartment_cell*reaction_r_1264_v0*(1+reaction_r_1264_ep0467*log(x(139)/global_par_ic0467)+reaction_r_1264_ep1546*log(x(355)/global_par_ic1546)+reaction_r_1264_ep0421*log(x(132)/global_par_ic0421)+reaction_r_1264_ep0863*log(x(216)/global_par_ic0863));

% Reaction: id = r_1265, name = riboflavin synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1265_FLUX_VALUE=1.23556926891731E-4;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1265_v0=1.23556926891731E-4;
	% Local Parameter:   id =  ep0311, name = ep0311
	reaction_r_1265_ep0311=1.0;
	% Local Parameter:   id =  ep0255, name = ep0255
	reaction_r_1265_ep0255=1.0;
	% Local Parameter:   id =  ep0364, name = ep0364
	reaction_r_1265_ep0364=-1.0;
	% Local Parameter:   id =  ep1430, name = ep1430
	reaction_r_1265_ep1430=-1.0;

	reaction_r_1265=compartment_cell*reaction_r_1265_v0*(1+reaction_r_1265_ep0311*log(x(82)/global_par_ic0311)+reaction_r_1265_ep0255*log(x(55)/global_par_ic0255)+reaction_r_1265_ep0364*log(x(110)/global_par_ic0364)+reaction_r_1265_ep1430*log(x(336)/global_par_ic1430));

% Reaction: id = r_1266, name = riboflavin synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1266_FLUX_VALUE=6.17784634458656E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1266_v0=6.17784634458656E-5;
	% Local Parameter:   id =  ep0364, name = ep0364
	reaction_r_1266_ep0364=2.0;
	% Local Parameter:   id =  ep0311, name = ep0311
	reaction_r_1266_ep0311=-1.0;
	% Local Parameter:   id =  ep1546, name = ep1546
	reaction_r_1266_ep1546=-1.0;

	reaction_r_1266=compartment_cell*reaction_r_1266_v0*(1+reaction_r_1266_ep0364*log(x(110)/global_par_ic0364)+reaction_r_1266_ep0311*log(x(82)/global_par_ic0311)+reaction_r_1266_ep1546*log(x(355)/global_par_ic1546));

% Reaction: id = r_1276, name = ribonucleoside-triphosphate reductase (ATP) (flavodoxin)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1276_FLUX_VALUE=0.0036249829336045;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1276_v0=0.0036249829336045;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_1276_ep0467=1.0;
	% Local Parameter:   id =  ep0861, name = ep0861
	reaction_r_1276_ep0861=2.0;
	% Local Parameter:   id =  ep0726, name = ep0726
	reaction_r_1276_ep0726=-1.0;
	% Local Parameter:   id =  ep0862, name = ep0862
	reaction_r_1276_ep0862=-2.0;

	reaction_r_1276=compartment_cell*reaction_r_1276_v0*(1+reaction_r_1276_ep0467*log(x(139)/global_par_ic0467)+reaction_r_1276_ep0861*log(x(214)/global_par_ic0861)+reaction_r_1276_ep0726*log(x(184)/global_par_ic0726)+reaction_r_1276_ep0862*log(x(215)/global_par_ic0862));

% Reaction: id = r_1277, name = ribonucleoside-triphosphate reductase (CTP) (flavodoxin)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1277_FLUX_VALUE=0.00374272215765511;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1277_v0=0.00374272215765511;
	% Local Parameter:   id =  ep0575, name = ep0575
	reaction_r_1277_ep0575=1.0;
	% Local Parameter:   id =  ep0861, name = ep0861
	reaction_r_1277_ep0861=2.0;
	% Local Parameter:   id =  ep0731, name = ep0731
	reaction_r_1277_ep0731=-1.0;
	% Local Parameter:   id =  ep0862, name = ep0862
	reaction_r_1277_ep0862=-2.0;

	reaction_r_1277=compartment_cell*reaction_r_1277_v0*(1+reaction_r_1277_ep0575*log(x(165)/global_par_ic0575)+reaction_r_1277_ep0861*log(x(214)/global_par_ic0861)+reaction_r_1277_ep0731*log(x(185)/global_par_ic0731)+reaction_r_1277_ep0862*log(x(215)/global_par_ic0862));

% Reaction: id = r_1278, name = ribonucleoside-triphosphate reductase (GTP) (flavodoxin)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1278_FLUX_VALUE=0.00374272215760098;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1278_v0=0.00374272215760098;
	% Local Parameter:   id =  ep0861, name = ep0861
	reaction_r_1278_ep0861=2.0;
	% Local Parameter:   id =  ep0945, name = ep0945
	reaction_r_1278_ep0945=1.0;
	% Local Parameter:   id =  ep0760, name = ep0760
	reaction_r_1278_ep0760=-1.0;
	% Local Parameter:   id =  ep0862, name = ep0862
	reaction_r_1278_ep0862=-2.0;

	reaction_r_1278=compartment_cell*reaction_r_1278_v0*(1+reaction_r_1278_ep0861*log(x(214)/global_par_ic0861)+reaction_r_1278_ep0945*log(x(229)/global_par_ic0945)+reaction_r_1278_ep0760*log(x(191)/global_par_ic0760)+reaction_r_1278_ep0862*log(x(215)/global_par_ic0862));

% Reaction: id = r_1279, name = ribonucleoside-triphosphate reductase (UTP) (flavodoxin)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1279_FLUX_VALUE=0.00362498293356975;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1279_v0=0.00362498293356975;
	% Local Parameter:   id =  ep0861, name = ep0861
	reaction_r_1279_ep0861=2.0;
	% Local Parameter:   id =  ep1792, name = ep1792
	reaction_r_1279_ep1792=1.0;
	% Local Parameter:   id =  ep0810, name = ep0810
	reaction_r_1279_ep0810=-1.0;
	% Local Parameter:   id =  ep0862, name = ep0862
	reaction_r_1279_ep0862=-2.0;

	reaction_r_1279=compartment_cell*reaction_r_1279_v0*(1+reaction_r_1279_ep0861*log(x(214)/global_par_ic0861)+reaction_r_1279_ep1792*log(x(400)/global_par_ic1792)+reaction_r_1279_ep0810*log(x(206)/global_par_ic0810)+reaction_r_1279_ep0862*log(x(215)/global_par_ic0862));

% Reaction: id = r_1284, name = ribose-5-phosphate isomerase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1284_FLUX_VALUE=0.101534797735323;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1284_v0=0.101534797735323;
	% Local Parameter:   id =  ep0704, name = ep0704
	reaction_r_1284_ep0704=1.0;
	% Local Parameter:   id =  ep0446, name = ep0446
	reaction_r_1284_ep0446=-1.0;

	reaction_r_1284=compartment_cell*reaction_r_1284_v0*(1+reaction_r_1284_ep0704*log(x(182)/global_par_ic0704)+reaction_r_1284_ep0446*log(x(135)/global_par_ic0446));

% Reaction: id = r_1285, name = ribulose 5-phosphate 3-epimerase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1285_FLUX_VALUE=0.107049425956634;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1285_v0=0.107049425956634;
	% Local Parameter:   id =  ep0721, name = ep0721
	reaction_r_1285_ep0721=1.0;
	% Local Parameter:   id =  ep0704, name = ep0704
	reaction_r_1285_ep0704=-1.0;

	reaction_r_1285=compartment_cell*reaction_r_1285_v0*(1+reaction_r_1285_ep0721*log(x(183)/global_par_ic0721)+reaction_r_1285_ep0704*log(x(182)/global_par_ic0704));

% Reaction: id = r_1288, name = S-adenosylhomocysteine nucleosidase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1288_FLUX_VALUE=6.20554969142397E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1288_v0=6.20554969142397E-5;
	% Local Parameter:   id =  ep1551, name = ep1551
	reaction_r_1288_ep1551=1.0;
	% Local Parameter:   id =  ep0405, name = ep0405
	reaction_r_1288_ep0405=-1.0;
	% Local Parameter:   id =  ep1558, name = ep1558
	reaction_r_1288_ep1558=-1.0;

	reaction_r_1288=compartment_cell*reaction_r_1288_v0*(1+reaction_r_1288_ep1551*log(x(357)/global_par_ic1551)+reaction_r_1288_ep0405*log(x(127)/global_par_ic0405)+reaction_r_1288_ep1558*log(x(359)/global_par_ic1558));

% Reaction: id = r_1291, name = S-ribosylhomocysteine cleavage enzyme	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1291_FLUX_VALUE=6.20554969142397E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1291_v0=6.20554969142397E-5;
	% Local Parameter:   id =  ep1558, name = ep1558
	reaction_r_1291_ep1558=1.0;
	% Local Parameter:   id =  ep0310, name = ep0310
	reaction_r_1291_ep0310=-1.0;
	% Local Parameter:   id =  ep1112, name = ep1112
	reaction_r_1291_ep1112=-1.0;

	reaction_r_1291=compartment_cell*reaction_r_1291_v0*(1+reaction_r_1291_ep1558*log(x(359)/global_par_ic1558)+reaction_r_1291_ep0310*log(x(81)/global_par_ic0310)+reaction_r_1291_ep1112*log(x(268)/global_par_ic1112));

% Reaction: id = r_1301, name = serine O-acetyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1301_FLUX_VALUE=0.0343363591698377;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1301_v0=0.0343363591698377;
	% Local Parameter:   id =  ep0395, name = ep0395
	reaction_r_1301_ep0395=1.0;
	% Local Parameter:   id =  ep1170, name = ep1170
	reaction_r_1301_ep1170=1.0;
	% Local Parameter:   id =  ep1358, name = ep1358
	reaction_r_1301_ep1358=-1.0;
	% Local Parameter:   id =  ep0555, name = ep0555
	reaction_r_1301_ep0555=-1.0;

	reaction_r_1301=compartment_cell*reaction_r_1301_v0*(1+reaction_r_1301_ep0395*log(x(125)/global_par_ic0395)+reaction_r_1301_ep1170*log(x(277)/global_par_ic1170)+reaction_r_1301_ep1358*log(x(319)/global_par_ic1358)+reaction_r_1301_ep0555*log(x(162)/global_par_ic0555));

% Reaction: id = r_1304, name = shikimate dehydrogenase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1304_FLUX_VALUE=0.052796345817737;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1304_v0=0.052796345817737;
	% Local Parameter:   id =  ep0270, name = ep0270
	reaction_r_1304_ep0270=1.0;
	% Local Parameter:   id =  ep1336, name = ep1336
	reaction_r_1304_ep1336=1.0;
	% Local Parameter:   id =  ep1335, name = ep1335
	reaction_r_1304_ep1335=-1.0;
	% Local Parameter:   id =  ep1571, name = ep1571
	reaction_r_1304_ep1571=-1.0;

	reaction_r_1304=compartment_cell*reaction_r_1304_v0*(1+reaction_r_1304_ep0270*log(x(62)/global_par_ic0270)+reaction_r_1304_ep1336*log(x(317)/global_par_ic1336)+reaction_r_1304_ep1335*log(x(316)/global_par_ic1335)+reaction_r_1304_ep1571*log(x(361)/global_par_ic1571));

% Reaction: id = r_1305, name = shikimate kinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1305_FLUX_VALUE=0.0527963458177373;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1305_v0=0.0527963458177373;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_1305_ep0467=1.0;
	% Local Parameter:   id =  ep1571, name = ep1571
	reaction_r_1305_ep1571=1.0;
	% Local Parameter:   id =  ep0421, name = ep0421
	reaction_r_1305_ep0421=-1.0;
	% Local Parameter:   id =  ep1574, name = ep1574
	reaction_r_1305_ep1574=-1.0;

	reaction_r_1305=compartment_cell*reaction_r_1305_v0*(1+reaction_r_1305_ep0467*log(x(139)/global_par_ic0467)+reaction_r_1305_ep1571*log(x(361)/global_par_ic1571)+reaction_r_1305_ep0421*log(x(132)/global_par_ic0421)+reaction_r_1305_ep1574*log(x(362)/global_par_ic1574));

% Reaction: id = r_1306, name = sirohydrochlorin dehydrogenase (NAD)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1306_FLUX_VALUE=3.08892317229363E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1306_v0=3.08892317229363E-5;
	% Local Parameter:   id =  ep0768, name = ep0768
	reaction_r_1306_ep0768=1.0;
	% Local Parameter:   id =  ep1333, name = ep1333
	reaction_r_1306_ep1333=1.0;
	% Local Parameter:   id =  ep1334, name = ep1334
	reaction_r_1306_ep1334=-1.0;
	% Local Parameter:   id =  ep1578, name = ep1578
	reaction_r_1306_ep1578=-1.0;

	reaction_r_1306=compartment_cell*reaction_r_1306_v0*(1+reaction_r_1306_ep0768*log(x(195)/global_par_ic0768)+reaction_r_1306_ep1333*log(x(314)/global_par_ic1333)+reaction_r_1306_ep1334*log(x(315)/global_par_ic1334)+reaction_r_1306_ep1578*log(x(364)/global_par_ic1578));

% Reaction: id = r_1307, name = sirohydrochlorin ferrochelatase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1307_FLUX_VALUE=3.08892317229363E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1307_v0=3.08892317229363E-5;
	% Local Parameter:   id =  ep0838, name = ep0838
	reaction_r_1307_ep0838=1.0;
	% Local Parameter:   id =  ep1578, name = ep1578
	reaction_r_1307_ep1578=1.0;
	% Local Parameter:   id =  ep1577, name = ep1577
	reaction_r_1307_ep1577=-1.0;

	reaction_r_1307=compartment_cell*reaction_r_1307_v0*(1+reaction_r_1307_ep0838*log(x(210)/global_par_ic0838)+reaction_r_1307_ep1578*log(x(364)/global_par_ic1578)+reaction_r_1307_ep1577*log(x(363)/global_par_ic1577));

% Reaction: id = r_1315, name = succinyl-CoA synthetase (ADP-forming)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1315_FLUX_VALUE=0.0727081263565024;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1315_v0=0.0727081263565024;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_1315_ep0467=1.0;
	% Local Parameter:   id =  ep0555, name = ep0555
	reaction_r_1315_ep0555=1.0;
	% Local Parameter:   id =  ep1595, name = ep1595
	reaction_r_1315_ep1595=1.0;
	% Local Parameter:   id =  ep0421, name = ep0421
	reaction_r_1315_ep0421=-1.0;
	% Local Parameter:   id =  ep1430, name = ep1430
	reaction_r_1315_ep1430=-1.0;
	% Local Parameter:   id =  ep1599, name = ep1599
	reaction_r_1315_ep1599=-1.0;

	reaction_r_1315=compartment_cell*reaction_r_1315_v0*(1+reaction_r_1315_ep0467*log(x(139)/global_par_ic0467)+reaction_r_1315_ep0555*log(x(162)/global_par_ic0555)+reaction_r_1315_ep1595*log(x(365)/global_par_ic1595)+reaction_r_1315_ep0421*log(x(132)/global_par_ic0421)+reaction_r_1315_ep1430*log(x(336)/global_par_ic1430)+reaction_r_1315_ep1599*log(x(366)/global_par_ic1599));

% Reaction: id = r_1316, name = succinyl-diaminopimelate desuccinylase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1316_FLUX_VALUE=0.0513869380474194;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1316_v0=0.0513869380474194;
	% Local Parameter:   id =  ep1316, name = ep1316
	reaction_r_1316_ep1316=1.0;
	% Local Parameter:   id =  ep1211, name = ep1211
	reaction_r_1316_ep1211=-1.0;
	% Local Parameter:   id =  ep1595, name = ep1595
	reaction_r_1316_ep1595=-1.0;

	reaction_r_1316=compartment_cell*reaction_r_1316_v0*(1+reaction_r_1316_ep1316*log(x(308)/global_par_ic1316)+reaction_r_1316_ep1211*log(x(283)/global_par_ic1211)+reaction_r_1316_ep1595*log(x(365)/global_par_ic1595));

% Reaction: id = r_1318, name = succinyldiaminopimelate transaminase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1318_FLUX_VALUE=0.0513869380474194;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1318_v0=0.0513869380474194;
	% Local Parameter:   id =  ep1095, name = ep1095
	reaction_r_1318_ep1095=1.0;
	% Local Parameter:   id =  ep1315, name = ep1315
	reaction_r_1318_ep1315=1.0;
	% Local Parameter:   id =  ep0233, name = ep0233
	reaction_r_1318_ep0233=-1.0;
	% Local Parameter:   id =  ep1316, name = ep1316
	reaction_r_1318_ep1316=-1.0;

	reaction_r_1318=compartment_cell*reaction_r_1318_v0*(1+reaction_r_1318_ep1095*log(x(259)/global_par_ic1095)+reaction_r_1318_ep1315*log(x(307)/global_par_ic1315)+reaction_r_1318_ep0233*log(x(52)/global_par_ic0233)+reaction_r_1318_ep1316*log(x(308)/global_par_ic1316));

% Reaction: id = r_1329, name = Sulfate adenyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1329_FLUX_VALUE=0.0343363591697952;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1329_v0=0.0343363591697952;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_1329_ep0467=1.0;
	% Local Parameter:   id =  ep0945, name = ep0945
	reaction_r_1329_ep0945=1.0;
	% Local Parameter:   id =  ep1609, name = ep1609
	reaction_r_1329_ep1609=1.0;
	% Local Parameter:   id =  ep0412, name = ep0412
	reaction_r_1329_ep0412=-1.0;
	% Local Parameter:   id =  ep0896, name = ep0896
	reaction_r_1329_ep0896=-1.0;
	% Local Parameter:   id =  ep1430, name = ep1430
	reaction_r_1329_ep1430=-1.0;
	% Local Parameter:   id =  ep0783, name = ep0783
	reaction_r_1329_ep0783=-1.0;

	reaction_r_1329=compartment_cell*reaction_r_1329_v0*(1+reaction_r_1329_ep0467*log(x(139)/global_par_ic0467)+reaction_r_1329_ep0945*log(x(229)/global_par_ic0945)+reaction_r_1329_ep1609*log(x(367)/global_par_ic1609)+reaction_r_1329_ep0412*log(x(130)/global_par_ic0412)+reaction_r_1329_ep0896*log(x(219)/global_par_ic0896)+reaction_r_1329_ep1430*log(x(336)/global_par_ic1430)+reaction_r_1329_ep0783*log(x(198)/global_par_ic0783));

% Reaction: id = r_1330, name = sulfite reductase (NADPH2)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1330_FLUX_VALUE=0.0343363591698208;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1330_v0=0.0343363591698208;
	% Local Parameter:   id =  ep1336, name = ep1336
	reaction_r_1330_ep1336=3.0;
	% Local Parameter:   id =  ep1612, name = ep1612
	reaction_r_1330_ep1612=1.0;
	% Local Parameter:   id =  ep0994, name = ep0994
	reaction_r_1330_ep0994=-1.0;
	% Local Parameter:   id =  ep1335, name = ep1335
	reaction_r_1330_ep1335=-3.0;

	reaction_r_1330=compartment_cell*reaction_r_1330_v0*(1+reaction_r_1330_ep1336*log(x(317)/global_par_ic1336)+reaction_r_1330_ep1612*log(x(368)/global_par_ic1612)+reaction_r_1330_ep0994*log(x(235)/global_par_ic0994)+reaction_r_1330_ep1335*log(x(316)/global_par_ic1335));

% Reaction: id = r_1335, name = tartronate semialdehyde reductase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1335_FLUX_VALUE=4.63338474645892E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1335_v0=4.63338474645892E-5;
	% Local Parameter:   id =  ep0214, name = ep0214
	reaction_r_1335_ep0214=1.0;
	% Local Parameter:   id =  ep1334, name = ep1334
	reaction_r_1335_ep1334=1.0;
	% Local Parameter:   id =  ep0029, name = ep0029
	reaction_r_1335_ep0029=-1.0;
	% Local Parameter:   id =  ep1333, name = ep1333
	reaction_r_1335_ep1333=-1.0;

	reaction_r_1335=compartment_cell*reaction_r_1335_v0*(1+reaction_r_1335_ep0214*log(x(45)/global_par_ic0214)+reaction_r_1335_ep1334*log(x(315)/global_par_ic1334)+reaction_r_1335_ep0029*log(x(6)/global_par_ic0029)+reaction_r_1335_ep1333*log(x(314)/global_par_ic1333));

% Reaction: id = r_1337, name = Tetraacyldisaccharide 4'kinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1337_FLUX_VALUE=0.00269553564721213;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1337_v0=0.00269553564721213;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_1337_ep0467=1.0;
	% Local Parameter:   id =  ep1204, name = ep1204
	reaction_r_1337_ep1204=1.0;
	% Local Parameter:   id =  ep0421, name = ep0421
	reaction_r_1337_ep0421=-1.0;
	% Local Parameter:   id =  ep0147, name = ep0147
	reaction_r_1337_ep0147=-1.0;

	reaction_r_1337=compartment_cell*reaction_r_1337_v0*(1+reaction_r_1337_ep0467*log(x(139)/global_par_ic0467)+reaction_r_1337_ep1204*log(x(282)/global_par_ic1204)+reaction_r_1337_ep0421*log(x(132)/global_par_ic0421)+reaction_r_1337_ep0147*log(x(33)/global_par_ic0147));

% Reaction: id = r_1338, name = tetrahydrodipicolinate succinylase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1338_FLUX_VALUE=0.0513869380474194;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1338_v0=0.0513869380474194;
	% Local Parameter:   id =  ep1599, name = ep1599
	reaction_r_1338_ep1599=1.0;
	% Local Parameter:   id =  ep0148, name = ep0148
	reaction_r_1338_ep0148=1.0;
	% Local Parameter:   id =  ep0555, name = ep0555
	reaction_r_1338_ep0555=-1.0;
	% Local Parameter:   id =  ep1315, name = ep1315
	reaction_r_1338_ep1315=-1.0;

	reaction_r_1338=compartment_cell*reaction_r_1338_v0*(1+reaction_r_1338_ep1599*log(x(366)/global_par_ic1599)+reaction_r_1338_ep0148*log(x(34)/global_par_ic0148)+reaction_r_1338_ep0555*log(x(162)/global_par_ic0555)+reaction_r_1338_ep1315*log(x(307)/global_par_ic1315));

% Reaction: id = r_1344, name = thiamine-phosphate diphosphorylase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1344_FLUX_VALUE=3.08892317229363E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1344_v0=3.08892317229363E-5;
	% Local Parameter:   id =  ep0218, name = ep0218
	reaction_r_1344_ep0218=1.0;
	% Local Parameter:   id =  ep0330, name = ep0330
	reaction_r_1344_ep0330=1.0;
	% Local Parameter:   id =  ep0783, name = ep0783
	reaction_r_1344_ep0783=-1.0;
	% Local Parameter:   id =  ep1643, name = ep1643
	reaction_r_1344_ep1643=-1.0;

	reaction_r_1344=compartment_cell*reaction_r_1344_v0*(1+reaction_r_1344_ep0218*log(x(47)/global_par_ic0218)+reaction_r_1344_ep0330*log(x(89)/global_par_ic0330)+reaction_r_1344_ep0783*log(x(198)/global_par_ic0783)+reaction_r_1344_ep1643*log(x(370)/global_par_ic1643));

% Reaction: id = r_1345, name = thiamine-phosphate kinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1345_FLUX_VALUE=3.08892317229363E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1345_v0=3.08892317229363E-5;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_1345_ep0467=1.0;
	% Local Parameter:   id =  ep1643, name = ep1643
	reaction_r_1345_ep1643=1.0;
	% Local Parameter:   id =  ep0421, name = ep0421
	reaction_r_1345_ep0421=-1.0;
	% Local Parameter:   id =  ep1644, name = ep1644
	reaction_r_1345_ep1644=-1.0;

	reaction_r_1345=compartment_cell*reaction_r_1345_v0*(1+reaction_r_1345_ep0467*log(x(139)/global_par_ic0467)+reaction_r_1345_ep1643*log(x(370)/global_par_ic1643)+reaction_r_1345_ep0421*log(x(132)/global_par_ic0421)+reaction_r_1345_ep1644*log(x(371)/global_par_ic1644));

% Reaction: id = r_1346, name = thiazole phosphate synthesis	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1346_FLUX_VALUE=3.08892317229363E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1346_v0=3.08892317229363E-5;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_1346_ep0467=1.0;
	% Local Parameter:   id =  ep0738, name = ep0738
	reaction_r_1346_ep0738=1.0;
	% Local Parameter:   id =  ep0116, name = ep0116
	reaction_r_1346_ep0116=1.0;
	% Local Parameter:   id =  ep1018, name = ep1018
	reaction_r_1346_ep1018=1.0;
	% Local Parameter:   id =  ep1336, name = ep1336
	reaction_r_1346_ep1336=1.0;
	% Local Parameter:   id =  ep0330, name = ep0330
	reaction_r_1346_ep0330=-1.0;
	% Local Parameter:   id =  ep0454, name = ep0454
	reaction_r_1346_ep0454=-1.0;
	% Local Parameter:   id =  ep0543, name = ep0543
	reaction_r_1346_ep0543=-1.0;
	% Local Parameter:   id =  ep1017, name = ep1017
	reaction_r_1346_ep1017=-1.0;
	% Local Parameter:   id =  ep1335, name = ep1335
	reaction_r_1346_ep1335=-1.0;
	% Local Parameter:   id =  ep0783, name = ep0783
	reaction_r_1346_ep0783=-1.0;

	reaction_r_1346=compartment_cell*reaction_r_1346_v0*(1+reaction_r_1346_ep0467*log(x(139)/global_par_ic0467)+reaction_r_1346_ep0738*log(x(188)/global_par_ic0738)+reaction_r_1346_ep0116*log(x(27)/global_par_ic0116)+reaction_r_1346_ep1018*log(x(241)/global_par_ic1018)+reaction_r_1346_ep1336*log(x(317)/global_par_ic1336)+reaction_r_1346_ep0330*log(x(89)/global_par_ic0330)+reaction_r_1346_ep0454*log(x(137)/global_par_ic0454)+reaction_r_1346_ep0543*log(x(160)/global_par_ic0543)+reaction_r_1346_ep1017*log(x(240)/global_par_ic1017)+reaction_r_1346_ep1335*log(x(316)/global_par_ic1335)+reaction_r_1346_ep0783*log(x(198)/global_par_ic0783));

% Reaction: id = r_1347, name = thioredoxin reductase (NADPH)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1347_FLUX_VALUE=0.034336359169748;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1347_v0=0.034336359169748;
	% Local Parameter:   id =  ep1336, name = ep1336
	reaction_r_1347_ep1336=1.0;
	% Local Parameter:   id =  ep1406, name = ep1406
	reaction_r_1347_ep1406=1.0;
	% Local Parameter:   id =  ep1335, name = ep1335
	reaction_r_1347_ep1335=-1.0;
	% Local Parameter:   id =  ep1544, name = ep1544
	reaction_r_1347_ep1544=-1.0;

	reaction_r_1347=compartment_cell*reaction_r_1347_v0*(1+reaction_r_1347_ep1336*log(x(317)/global_par_ic1336)+reaction_r_1347_ep1406*log(x(330)/global_par_ic1406)+reaction_r_1347_ep1335*log(x(316)/global_par_ic1335)+reaction_r_1347_ep1544*log(x(354)/global_par_ic1544));

% Reaction: id = r_1348, name = Threonine aldolase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1348_FLUX_VALUE=0.0414265806134143;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1348_v0=0.0414265806134143;
	% Local Parameter:   id =  ep1179, name = ep1179
	reaction_r_1348_ep1179=1.0;
	% Local Parameter:   id =  ep0381, name = ep0381
	reaction_r_1348_ep0381=-1.0;
	% Local Parameter:   id =  ep0929, name = ep0929
	reaction_r_1348_ep0929=-1.0;

	reaction_r_1348=compartment_cell*reaction_r_1348_v0*(1+reaction_r_1348_ep1179*log(x(278)/global_par_ic1179)+reaction_r_1348_ep0381*log(x(121)/global_par_ic0381)+reaction_r_1348_ep0929*log(x(224)/global_par_ic0929));

% Reaction: id = r_1349, name = threonine synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1349_FLUX_VALUE=0.158233967969303;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1349_v0=0.158233967969303;
	% Local Parameter:   id =  ep1363, name = ep1363
	reaction_r_1349_ep1363=1.0;
	% Local Parameter:   id =  ep1430, name = ep1430
	reaction_r_1349_ep1430=-1.0;
	% Local Parameter:   id =  ep1179, name = ep1179
	reaction_r_1349_ep1179=-1.0;

	reaction_r_1349=compartment_cell*reaction_r_1349_v0*(1+reaction_r_1349_ep1363*log(x(321)/global_par_ic1363)+reaction_r_1349_ep1430*log(x(336)/global_par_ic1430)+reaction_r_1349_ep1179*log(x(278)/global_par_ic1179));

% Reaction: id = r_1353, name = thymidylate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1353_FLUX_VALUE=0.00362498293358012;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1353_v0=0.00362498293358012;
	% Local Parameter:   id =  ep0807, name = ep0807
	reaction_r_1353_ep0807=1.0;
	% Local Parameter:   id =  ep0336, name = ep0336
	reaction_r_1353_ep0336=1.0;
	% Local Parameter:   id =  ep0372, name = ep0372
	reaction_r_1353_ep0372=-1.0;
	% Local Parameter:   id =  ep0802, name = ep0802
	reaction_r_1353_ep0802=-1.0;

	reaction_r_1353=compartment_cell*reaction_r_1353_v0*(1+reaction_r_1353_ep0807*log(x(205)/global_par_ic0807)+reaction_r_1353_ep0336*log(x(95)/global_par_ic0336)+reaction_r_1353_ep0372*log(x(116)/global_par_ic0372)+reaction_r_1353_ep0802*log(x(203)/global_par_ic0802));

% Reaction: id = r_1356, name = transaldolase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1356_FLUX_VALUE=0.0271110954536016;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1356_v0=0.0271110954536016;
	% Local Parameter:   id =  ep0621, name = ep0621
	reaction_r_1356_ep0621=1.0;
	% Local Parameter:   id =  ep0627, name = ep0627
	reaction_r_1356_ep0627=1.0;
	% Local Parameter:   id =  ep0913, name = ep0913
	reaction_r_1356_ep0913=-1.0;
	% Local Parameter:   id =  ep1561, name = ep1561
	reaction_r_1356_ep1561=-1.0;

	reaction_r_1356=compartment_cell*reaction_r_1356_v0*(1+reaction_r_1356_ep0621*log(x(173)/global_par_ic0621)+reaction_r_1356_ep0627*log(x(175)/global_par_ic0627)+reaction_r_1356_ep0913*log(x(222)/global_par_ic0913)+reaction_r_1356_ep1561*log(x(360)/global_par_ic1561));

% Reaction: id = r_1357, name = transketolase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1357_FLUX_VALUE=0.0271110954535792;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1357_v0=0.0271110954535792;
	% Local Parameter:   id =  ep0913, name = ep0913
	reaction_r_1357_ep0913=1.0;
	% Local Parameter:   id =  ep1561, name = ep1561
	reaction_r_1357_ep1561=1.0;
	% Local Parameter:   id =  ep0446, name = ep0446
	reaction_r_1357_ep0446=-1.0;
	% Local Parameter:   id =  ep0721, name = ep0721
	reaction_r_1357_ep0721=-1.0;

	reaction_r_1357=compartment_cell*reaction_r_1357_v0*(1+reaction_r_1357_ep0913*log(x(222)/global_par_ic0913)+reaction_r_1357_ep1561*log(x(360)/global_par_ic1561)+reaction_r_1357_ep0446*log(x(135)/global_par_ic0446)+reaction_r_1357_ep0721*log(x(183)/global_par_ic0721));

% Reaction: id = r_1358, name = transketolase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1358_FLUX_VALUE=0.0799383305030384;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1358_v0=0.0799383305030384;
	% Local Parameter:   id =  ep0627, name = ep0627
	reaction_r_1358_ep0627=1.0;
	% Local Parameter:   id =  ep0913, name = ep0913
	reaction_r_1358_ep0913=1.0;
	% Local Parameter:   id =  ep0621, name = ep0621
	reaction_r_1358_ep0621=-1.0;
	% Local Parameter:   id =  ep0721, name = ep0721
	reaction_r_1358_ep0721=-1.0;

	reaction_r_1358=compartment_cell*reaction_r_1358_v0*(1+reaction_r_1358_ep0627*log(x(175)/global_par_ic0627)+reaction_r_1358_ep0913*log(x(222)/global_par_ic0913)+reaction_r_1358_ep0621*log(x(173)/global_par_ic0621)+reaction_r_1358_ep0721*log(x(183)/global_par_ic0721));

% Reaction: id = r_1363, name = triose-phosphate isomerase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1363_FLUX_VALUE=0.0195735226740616;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1363_v0=0.0195735226740616;
	% Local Parameter:   id =  ep0913, name = ep0913
	reaction_r_1363_ep0913=1.0;
	% Local Parameter:   id =  ep0772, name = ep0772
	reaction_r_1363_ep0772=-1.0;

	reaction_r_1363=compartment_cell*reaction_r_1363_v0*(1+reaction_r_1363_ep0913*log(x(222)/global_par_ic0913)+reaction_r_1363_ep0772*log(x(196)/global_par_ic0772));

% Reaction: id = r_1367, name = tryptophan synthase (indoleglycerol phosphate)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1367_FLUX_VALUE=0.00787329117099211;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1367_v0=0.00787329117099211;
	% Local Parameter:   id =  ep0493, name = ep0493
	reaction_r_1367_ep0493=1.0;
	% Local Parameter:   id =  ep0913, name = ep0913
	reaction_r_1367_ep0913=-1.0;
	% Local Parameter:   id =  ep1009, name = ep1009
	reaction_r_1367_ep1009=-1.0;

	reaction_r_1367=compartment_cell*reaction_r_1367_v0*(1+reaction_r_1367_ep0493*log(x(147)/global_par_ic0493)+reaction_r_1367_ep0913*log(x(222)/global_par_ic0913)+reaction_r_1367_ep1009*log(x(239)/global_par_ic1009));

% Reaction: id = r_1368, name = Tryptophanase (L-tryptophan)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1368_FLUX_VALUE=0.00787329117099173;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1368_v0=0.00787329117099173;
	% Local Parameter:   id =  ep1009, name = ep1009
	reaction_r_1368_ep1009=1.0;
	% Local Parameter:   id =  ep0451, name = ep0451
	reaction_r_1368_ep0451=1.0;
	% Local Parameter:   id =  ep1531, name = ep1531
	reaction_r_1368_ep1531=1.0;
	% Local Parameter:   id =  ep1185, name = ep1185
	reaction_r_1368_ep1185=-1.0;

	reaction_r_1368=compartment_cell*reaction_r_1368_v0*(1+reaction_r_1368_ep1009*log(x(239)/global_par_ic1009)+reaction_r_1368_ep0451*log(x(136)/global_par_ic0451)+reaction_r_1368_ep1531*log(x(352)/global_par_ic1531)+reaction_r_1368_ep1185*log(x(279)/global_par_ic1185));

% Reaction: id = r_1375, name = tyrosine lyase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1375_FLUX_VALUE=3.08892317229363E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1375_v0=3.08892317229363E-5;
	% Local Parameter:   id =  ep1552, name = ep1552
	reaction_r_1375_ep1552=1.0;
	% Local Parameter:   id =  ep1336, name = ep1336
	reaction_r_1375_ep1336=1.0;
	% Local Parameter:   id =  ep1189, name = ep1189
	reaction_r_1375_ep1189=1.0;
	% Local Parameter:   id =  ep1407, name = ep1407
	reaction_r_1375_ep1407=-1.0;
	% Local Parameter:   id =  ep0333, name = ep0333
	reaction_r_1375_ep0333=-1.0;
	% Local Parameter:   id =  ep0738, name = ep0738
	reaction_r_1375_ep0738=-1.0;
	% Local Parameter:   id =  ep1141, name = ep1141
	reaction_r_1375_ep1141=-1.0;
	% Local Parameter:   id =  ep1335, name = ep1335
	reaction_r_1375_ep1335=-1.0;

	reaction_r_1375=compartment_cell*reaction_r_1375_v0*(1+reaction_r_1375_ep1552*log(x(358)/global_par_ic1552)+reaction_r_1375_ep1336*log(x(317)/global_par_ic1336)+reaction_r_1375_ep1189*log(x(280)/global_par_ic1189)+reaction_r_1375_ep1407*log(x(331)/global_par_ic1407)+reaction_r_1375_ep0333*log(x(92)/global_par_ic0333)+reaction_r_1375_ep0738*log(x(188)/global_par_ic0738)+reaction_r_1375_ep1141*log(x(274)/global_par_ic1141)+reaction_r_1375_ep1335*log(x(316)/global_par_ic1335));

% Reaction: id = r_1376, name = tyrosine transaminase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1376_FLUX_VALUE=0.0191323468756361;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1376_v0=0.0191323468756361;
	% Local Parameter:   id =  ep0262, name = ep0262
	reaction_r_1376_ep0262=1.0;
	% Local Parameter:   id =  ep1095, name = ep1095
	reaction_r_1376_ep1095=1.0;
	% Local Parameter:   id =  ep0233, name = ep0233
	reaction_r_1376_ep0233=-1.0;
	% Local Parameter:   id =  ep1189, name = ep1189
	reaction_r_1376_ep1189=-1.0;

	reaction_r_1376=compartment_cell*reaction_r_1376_v0*(1+reaction_r_1376_ep0262*log(x(56)/global_par_ic0262)+reaction_r_1376_ep1095*log(x(259)/global_par_ic1095)+reaction_r_1376_ep0233*log(x(52)/global_par_ic0233)+reaction_r_1376_ep1189*log(x(280)/global_par_ic1189));

% Reaction: id = r_1378, name = UDP-3-O-(3-hydroxymyristoyl)glucosamine acyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1378_FLUX_VALUE=0.00539107129442425;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1378_v0=0.00539107129442425;
	% Local Parameter:   id =  ep0028, name = ep0028
	reaction_r_1378_ep0028=1.0;
	% Local Parameter:   id =  ep1735, name = ep1735
	reaction_r_1378_ep1735=1.0;
	% Local Parameter:   id =  ep0397, name = ep0397
	reaction_r_1378_ep0397=-1.0;
	% Local Parameter:   id =  ep1734, name = ep1734
	reaction_r_1378_ep1734=-1.0;

	reaction_r_1378=compartment_cell*reaction_r_1378_v0*(1+reaction_r_1378_ep0028*log(x(5)/global_par_ic0028)+reaction_r_1378_ep1735*log(x(385)/global_par_ic1735)+reaction_r_1378_ep0397*log(x(126)/global_par_ic0397)+reaction_r_1378_ep1734*log(x(384)/global_par_ic1734));

% Reaction: id = r_1379, name = UDP-3-O-acetylglucosamine deacetylase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1379_FLUX_VALUE=0.00539107129442425;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1379_v0=0.00539107129442425;
	% Local Parameter:   id =  ep1736, name = ep1736
	reaction_r_1379_ep1736=1.0;
	% Local Parameter:   id =  ep0384, name = ep0384
	reaction_r_1379_ep0384=-1.0;
	% Local Parameter:   id =  ep1735, name = ep1735
	reaction_r_1379_ep1735=-1.0;

	reaction_r_1379=compartment_cell*reaction_r_1379_v0*(1+reaction_r_1379_ep1736*log(x(386)/global_par_ic1736)+reaction_r_1379_ep0384*log(x(122)/global_par_ic0384)+reaction_r_1379_ep1735*log(x(385)/global_par_ic1735));

% Reaction: id = r_1388, name = UDP-N-acetylenolpyruvoylglucosamine reductase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1388_FLUX_VALUE=0.0038479948756196;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1388_v0=0.0038479948756196;
	% Local Parameter:   id =  ep1336, name = ep1336
	reaction_r_1388_ep1336=1.0;
	% Local Parameter:   id =  ep1742, name = ep1742
	reaction_r_1388_ep1742=1.0;
	% Local Parameter:   id =  ep1335, name = ep1335
	reaction_r_1388_ep1335=-1.0;
	% Local Parameter:   id =  ep1750, name = ep1750
	reaction_r_1388_ep1750=-1.0;

	reaction_r_1388=compartment_cell*reaction_r_1388_v0*(1+reaction_r_1388_ep1336*log(x(317)/global_par_ic1336)+reaction_r_1388_ep1742*log(x(387)/global_par_ic1742)+reaction_r_1388_ep1335*log(x(316)/global_par_ic1335)+reaction_r_1388_ep1750*log(x(389)/global_par_ic1750));

% Reaction: id = r_1389, name = UDP-N-acetylglucosamine 1-carboxyvinyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1389_FLUX_VALUE=0.0038479948756196;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1389_v0=0.0038479948756196;
	% Local Parameter:   id =  ep1484, name = ep1484
	reaction_r_1389_ep1484=1.0;
	% Local Parameter:   id =  ep1745, name = ep1745
	reaction_r_1389_ep1745=1.0;
	% Local Parameter:   id =  ep1430, name = ep1430
	reaction_r_1389_ep1430=-1.0;
	% Local Parameter:   id =  ep1742, name = ep1742
	reaction_r_1389_ep1742=-1.0;

	reaction_r_1389=compartment_cell*reaction_r_1389_v0*(1+reaction_r_1389_ep1484*log(x(341)/global_par_ic1484)+reaction_r_1389_ep1745*log(x(388)/global_par_ic1745)+reaction_r_1389_ep1430*log(x(336)/global_par_ic1430)+reaction_r_1389_ep1742*log(x(387)/global_par_ic1742));

% Reaction: id = r_1391, name = UDP-N-acetylglucosamine acyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1391_FLUX_VALUE=0.00539107129442425;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1391_v0=0.00539107129442425;
	% Local Parameter:   id =  ep0028, name = ep0028
	reaction_r_1391_ep0028=1.0;
	% Local Parameter:   id =  ep1745, name = ep1745
	reaction_r_1391_ep1745=1.0;
	% Local Parameter:   id =  ep0397, name = ep0397
	reaction_r_1391_ep0397=-1.0;
	% Local Parameter:   id =  ep1736, name = ep1736
	reaction_r_1391_ep1736=-1.0;

	reaction_r_1391=compartment_cell*reaction_r_1391_v0*(1+reaction_r_1391_ep0028*log(x(5)/global_par_ic0028)+reaction_r_1391_ep1745*log(x(388)/global_par_ic1745)+reaction_r_1391_ep0397*log(x(126)/global_par_ic0397)+reaction_r_1391_ep1736*log(x(386)/global_par_ic1736));

% Reaction: id = r_1392, name = UDP-N-acetylglucosamine diphosphorylase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1392_FLUX_VALUE=0.0130870610456636;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1392_v0=0.0130870610456636;
	% Local Parameter:   id =  ep1287, name = ep1287
	reaction_r_1392_ep1287=1.0;
	% Local Parameter:   id =  ep1792, name = ep1792
	reaction_r_1392_ep1792=1.0;
	% Local Parameter:   id =  ep0783, name = ep0783
	reaction_r_1392_ep0783=-1.0;
	% Local Parameter:   id =  ep1745, name = ep1745
	reaction_r_1392_ep1745=-1.0;

	reaction_r_1392=compartment_cell*reaction_r_1392_v0*(1+reaction_r_1392_ep1287*log(x(302)/global_par_ic1287)+reaction_r_1392_ep1792*log(x(400)/global_par_ic1792)+reaction_r_1392_ep0783*log(x(198)/global_par_ic0783)+reaction_r_1392_ep1745*log(x(388)/global_par_ic1745));

% Reaction: id = r_1393, name = UDP-N-acetylglucosamine-N-acetylmuramyl-(pentapeptide)pyrophosphoryl-undecaprenol N-acetylglucosamine transferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1393_FLUX_VALUE=0.0038479948756196;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1393_v0=0.0038479948756196;
	% Local Parameter:   id =  ep1745, name = ep1745
	reaction_r_1393_ep1745=1.0;
	% Local Parameter:   id =  ep1777, name = ep1777
	reaction_r_1393_ep1777=1.0;
	% Local Parameter:   id =  ep1776, name = ep1776
	reaction_r_1393_ep1776=-1.0;
	% Local Parameter:   id =  ep1733, name = ep1733
	reaction_r_1393_ep1733=-1.0;

	reaction_r_1393=compartment_cell*reaction_r_1393_v0*(1+reaction_r_1393_ep1745*log(x(388)/global_par_ic1745)+reaction_r_1393_ep1777*log(x(398)/global_par_ic1777)+reaction_r_1393_ep1776*log(x(397)/global_par_ic1776)+reaction_r_1393_ep1733*log(x(383)/global_par_ic1733));

% Reaction: id = r_1397, name = UDP-N-acetylmuramoyl-L-alanine synthetase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1397_FLUX_VALUE=0.00384799487562186;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1397_v0=0.00384799487562186;
	% Local Parameter:   id =  ep1041, name = ep1041
	reaction_r_1397_ep1041=1.0;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_1397_ep0467=1.0;
	% Local Parameter:   id =  ep1750, name = ep1750
	reaction_r_1397_ep1750=1.0;
	% Local Parameter:   id =  ep0421, name = ep0421
	reaction_r_1397_ep0421=-1.0;
	% Local Parameter:   id =  ep1430, name = ep1430
	reaction_r_1397_ep1430=-1.0;
	% Local Parameter:   id =  ep1751, name = ep1751
	reaction_r_1397_ep1751=-1.0;

	reaction_r_1397=compartment_cell*reaction_r_1397_v0*(1+reaction_r_1397_ep1041*log(x(251)/global_par_ic1041)+reaction_r_1397_ep0467*log(x(139)/global_par_ic0467)+reaction_r_1397_ep1750*log(x(389)/global_par_ic1750)+reaction_r_1397_ep0421*log(x(132)/global_par_ic0421)+reaction_r_1397_ep1430*log(x(336)/global_par_ic1430)+reaction_r_1397_ep1751*log(x(390)/global_par_ic1751));

% Reaction: id = r_1399, name = UDP-N-acetylmuramoyl-L-alanyl-D-glutamate synthetase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1399_FLUX_VALUE=0.00384799487562186;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1399_v0=0.00384799487562186;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_1399_ep0467=1.0;
	% Local Parameter:   id =  ep0671, name = ep0671
	reaction_r_1399_ep0671=1.0;
	% Local Parameter:   id =  ep1751, name = ep1751
	reaction_r_1399_ep1751=1.0;
	% Local Parameter:   id =  ep0421, name = ep0421
	reaction_r_1399_ep0421=-1.0;
	% Local Parameter:   id =  ep1430, name = ep1430
	reaction_r_1399_ep1430=-1.0;
	% Local Parameter:   id =  ep1754, name = ep1754
	reaction_r_1399_ep1754=-1.0;

	reaction_r_1399=compartment_cell*reaction_r_1399_v0*(1+reaction_r_1399_ep0467*log(x(139)/global_par_ic0467)+reaction_r_1399_ep0671*log(x(180)/global_par_ic0671)+reaction_r_1399_ep1751*log(x(390)/global_par_ic1751)+reaction_r_1399_ep0421*log(x(132)/global_par_ic0421)+reaction_r_1399_ep1430*log(x(336)/global_par_ic1430)+reaction_r_1399_ep1754*log(x(392)/global_par_ic1754));

% Reaction: id = r_1400, name = UDP-N-acetylmuramoyl-L-alanyl-D-glutamyl-meso-2,6-diaminopimelate synthetase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1400_FLUX_VALUE=0.00384799487562186;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1400_v0=0.00384799487562186;
	% Local Parameter:   id =  ep1242, name = ep1242
	reaction_r_1400_ep1242=1.0;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_1400_ep0467=1.0;
	% Local Parameter:   id =  ep1754, name = ep1754
	reaction_r_1400_ep1754=1.0;
	% Local Parameter:   id =  ep0421, name = ep0421
	reaction_r_1400_ep0421=-1.0;
	% Local Parameter:   id =  ep1430, name = ep1430
	reaction_r_1400_ep1430=-1.0;
	% Local Parameter:   id =  ep1752, name = ep1752
	reaction_r_1400_ep1752=-1.0;

	reaction_r_1400=compartment_cell*reaction_r_1400_v0*(1+reaction_r_1400_ep1242*log(x(290)/global_par_ic1242)+reaction_r_1400_ep0467*log(x(139)/global_par_ic0467)+reaction_r_1400_ep1754*log(x(392)/global_par_ic1754)+reaction_r_1400_ep0421*log(x(132)/global_par_ic0421)+reaction_r_1400_ep1430*log(x(336)/global_par_ic1430)+reaction_r_1400_ep1752*log(x(391)/global_par_ic1752));

% Reaction: id = r_1401, name = UDP-N-acetylmuramoyl-L-alanyl-D-glutamyl-meso-2,6-diaminopimeloyl-D-alanyl-D-alanine synthetase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1401_FLUX_VALUE=0.0038479948756196;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1401_v0=0.0038479948756196;
	% Local Parameter:   id =  ep0603, name = ep0603
	reaction_r_1401_ep0603=1.0;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_1401_ep0467=1.0;
	% Local Parameter:   id =  ep1752, name = ep1752
	reaction_r_1401_ep1752=1.0;
	% Local Parameter:   id =  ep0421, name = ep0421
	reaction_r_1401_ep0421=-1.0;
	% Local Parameter:   id =  ep1430, name = ep1430
	reaction_r_1401_ep1430=-1.0;
	% Local Parameter:   id =  ep1755, name = ep1755
	reaction_r_1401_ep1755=-1.0;

	reaction_r_1401=compartment_cell*reaction_r_1401_v0*(1+reaction_r_1401_ep0603*log(x(170)/global_par_ic0603)+reaction_r_1401_ep0467*log(x(139)/global_par_ic0467)+reaction_r_1401_ep1752*log(x(391)/global_par_ic1752)+reaction_r_1401_ep0421*log(x(132)/global_par_ic0421)+reaction_r_1401_ep1430*log(x(336)/global_par_ic1430)+reaction_r_1401_ep1755*log(x(393)/global_par_ic1755));

% Reaction: id = r_1402, name = UDP-sugar hydrolase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1402_FLUX_VALUE=0.00269553564721213;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1402_v0=0.00269553564721213;
	% Local Parameter:   id =  ep1734, name = ep1734
	reaction_r_1402_ep1734=1.0;
	% Local Parameter:   id =  ep0149, name = ep0149
	reaction_r_1402_ep0149=-1.0;
	% Local Parameter:   id =  ep1762, name = ep1762
	reaction_r_1402_ep1762=-1.0;

	reaction_r_1402=compartment_cell*reaction_r_1402_v0*(1+reaction_r_1402_ep1734*log(x(384)/global_par_ic1734)+reaction_r_1402_ep0149*log(x(35)/global_par_ic0149)+reaction_r_1402_ep1762*log(x(394)/global_par_ic1762));

% Reaction: id = r_1409, name = UMP kinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1409_FLUX_VALUE=0.0523634810234329;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1409_v0=0.0523634810234329;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_1409_ep0467=1.0;
	% Local Parameter:   id =  ep1762, name = ep1762
	reaction_r_1409_ep1762=1.0;
	% Local Parameter:   id =  ep0421, name = ep0421
	reaction_r_1409_ep0421=-1.0;
	% Local Parameter:   id =  ep1733, name = ep1733
	reaction_r_1409_ep1733=-1.0;

	reaction_r_1409=compartment_cell*reaction_r_1409_v0*(1+reaction_r_1409_ep0467*log(x(139)/global_par_ic0467)+reaction_r_1409_ep1762*log(x(394)/global_par_ic1762)+reaction_r_1409_ep0421*log(x(132)/global_par_ic0421)+reaction_r_1409_ep1733*log(x(383)/global_par_ic1733));

% Reaction: id = r_1410, name = Undecaprenyl diphosphate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1410_FLUX_VALUE=7.61842038009631E-6;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1410_v0=7.61842038009631E-6;
	% Local Parameter:   id =  ep0826, name = ep0826
	reaction_r_1410_ep0826=1.0;
	% Local Parameter:   id =  ep1028, name = ep1028
	reaction_r_1410_ep1028=8.0;
	% Local Parameter:   id =  ep0783, name = ep0783
	reaction_r_1410_ep0783=-8.0;
	% Local Parameter:   id =  ep1765, name = ep1765
	reaction_r_1410_ep1765=-1.0;

	reaction_r_1410=compartment_cell*reaction_r_1410_v0*(1+reaction_r_1410_ep0826*log(x(209)/global_par_ic0826)+reaction_r_1410_ep1028*log(x(247)/global_par_ic1028)+reaction_r_1410_ep0783*log(x(198)/global_par_ic0783)+reaction_r_1410_ep1765*log(x(395)/global_par_ic1765));

% Reaction: id = r_1413, name = undecaprenyl-diphosphatase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1413_FLUX_VALUE=0.0038479948756196;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1413_v0=0.0038479948756196;
	% Local Parameter:   id =  ep1765, name = ep1765
	reaction_r_1413_ep1765=1.0;
	% Local Parameter:   id =  ep1430, name = ep1430
	reaction_r_1413_ep1430=-1.0;
	% Local Parameter:   id =  ep1768, name = ep1768
	reaction_r_1413_ep1768=-1.0;

	reaction_r_1413=compartment_cell*reaction_r_1413_v0*(1+reaction_r_1413_ep1765*log(x(395)/global_par_ic1765)+reaction_r_1413_ep1430*log(x(336)/global_par_ic1430)+reaction_r_1413_ep1768*log(x(396)/global_par_ic1768));

% Reaction: id = r_1421, name = uroporphyrinogen decarboxylase (uroporphyrinogen III)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1421_FLUX_VALUE=3.08892317225085E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1421_v0=3.08892317225085E-5;
	% Local Parameter:   id =  ep1791, name = ep1791
	reaction_r_1421_ep1791=1.0;
	% Local Parameter:   id =  ep0543, name = ep0543
	reaction_r_1421_ep0543=-4.0;
	% Local Parameter:   id =  ep0565, name = ep0565
	reaction_r_1421_ep0565=-1.0;

	reaction_r_1421=compartment_cell*reaction_r_1421_v0*(1+reaction_r_1421_ep1791*log(x(399)/global_par_ic1791)+reaction_r_1421_ep0543*log(x(160)/global_par_ic0543)+reaction_r_1421_ep0565*log(x(163)/global_par_ic0565));

% Reaction: id = r_1422, name = uroporphyrinogen methyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1422_FLUX_VALUE=3.08892317229363E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1422_v0=3.08892317229363E-5;
	% Local Parameter:   id =  ep1552, name = ep1552
	reaction_r_1422_ep1552=2.0;
	% Local Parameter:   id =  ep1791, name = ep1791
	reaction_r_1422_ep1791=1.0;
	% Local Parameter:   id =  ep1551, name = ep1551
	reaction_r_1422_ep1551=-2.0;
	% Local Parameter:   id =  ep0768, name = ep0768
	reaction_r_1422_ep0768=-1.0;

	reaction_r_1422=compartment_cell*reaction_r_1422_v0*(1+reaction_r_1422_ep1552*log(x(358)/global_par_ic1552)+reaction_r_1422_ep1791*log(x(399)/global_par_ic1791)+reaction_r_1422_ep1551*log(x(357)/global_par_ic1551)+reaction_r_1422_ep0768*log(x(195)/global_par_ic0768));

% Reaction: id = r_1423, name = uroporphyrinogen-III synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1423_FLUX_VALUE=6.1778463445417E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1423_v0=6.1778463445417E-5;
	% Local Parameter:   id =  ep0998, name = ep0998
	reaction_r_1423_ep0998=1.0;
	% Local Parameter:   id =  ep1791, name = ep1791
	reaction_r_1423_ep1791=-1.0;

	reaction_r_1423=compartment_cell*reaction_r_1423_v0*(1+reaction_r_1423_ep0998*log(x(236)/global_par_ic0998)+reaction_r_1423_ep1791*log(x(399)/global_par_ic1791));

% Reaction: id = r_1425, name = valine transaminase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1425_FLUX_VALUE=0.0586202819065749;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1425_v0=0.0586202819065749;
	% Local Parameter:   id =  ep0282, name = ep0282
	reaction_r_1425_ep0282=1.0;
	% Local Parameter:   id =  ep1095, name = ep1095
	reaction_r_1425_ep1095=1.0;
	% Local Parameter:   id =  ep0233, name = ep0233
	reaction_r_1425_ep0233=-1.0;
	% Local Parameter:   id =  ep1193, name = ep1193
	reaction_r_1425_ep1193=-1.0;

	reaction_r_1425=compartment_cell*reaction_r_1425_v0*(1+reaction_r_1425_ep0282*log(x(67)/global_par_ic0282)+reaction_r_1425_ep1095*log(x(259)/global_par_ic1095)+reaction_r_1425_ep0233*log(x(52)/global_par_ic0233)+reaction_r_1425_ep1193*log(x(281)/global_par_ic1193));

% Reaction: id = r_1432, name = xylose isomerase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1432_FLUX_VALUE=0.0656079149963033;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1432_v0=0.0656079149963033;
	% Local Parameter:   id =  ep0657, name = ep0657
	reaction_r_1432_ep0657=1.0;
	% Local Parameter:   id =  ep0622, name = ep0622
	reaction_r_1432_ep0622=-1.0;

	reaction_r_1432=compartment_cell*reaction_r_1432_v0*(1+reaction_r_1432_ep0657*log(x(178)/global_par_ic0657)+reaction_r_1432_ep0622*log(x(174)/global_par_ic0622));

% Reaction: id = r_1511, name = ammonia transport via diffusion (extracellular to periplasm)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1511_FLUX_VALUE=1.49280744931915;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1511_v0=1.49280744931915;
	% Local Parameter:   id =  ep0453, name = ep0453
	reaction_r_1511_ep0453=1.0;
	% Local Parameter:   id =  ep0451, name = ep0451
	reaction_r_1511_ep0451=-1.0;

	reaction_r_1511=compartment_cell*reaction_r_1511_v0*(1+reaction_r_1511_ep0453*log(const_species_s_0453/global_par_ic0453)+reaction_r_1511_ep0451*log(x(136)/global_par_ic0451));

% Reaction: id = r_1521, name = ATP synthase (four protons for one ATP) (periplasm)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1521_FLUX_VALUE=12.8512360032879;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1521_v0=12.8512360032879;
	% Local Parameter:   id =  ep0421, name = ep0421
	reaction_r_1521_ep0421=1.0;
	% Local Parameter:   id =  ep1430, name = ep1430
	reaction_r_1521_ep1430=1.0;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_1521_ep0467=-1.0;

	reaction_r_1521=compartment_cell*reaction_r_1521_v0*(1+reaction_r_1521_ep0421*log(x(132)/global_par_ic0421)+reaction_r_1521_ep1430*log(x(336)/global_par_ic1430)+reaction_r_1521_ep0467*log(x(139)/global_par_ic0467));

% Reaction: id = r_1536, name = calcium (Ca+2) transport via diffusion (extracellular to periplasm)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1536_FLUX_VALUE=7.20979601425486E-4;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1536_v0=7.20979601425486E-4;
	% Local Parameter:   id =  ep0499, name = ep0499
	reaction_r_1536_ep0499=1.0;
	% Local Parameter:   id =  ep0497, name = ep0497
	reaction_r_1536_ep0497=-1.0;

	reaction_r_1536=compartment_cell*reaction_r_1536_v0*(1+reaction_r_1536_ep0499*log(const_species_s_0499/global_par_ic0499)+reaction_r_1536_ep0497*log(x(148)/global_par_ic0497));

% Reaction: id = r_1543, name = chloride (Cl-1) transport via diffusion (extracellular to periplasm)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1543_FLUX_VALUE=7.20979601425486E-4;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1543_v0=7.20979601425486E-4;
	% Local Parameter:   id =  ep0522, name = ep0522
	reaction_r_1543_ep0522=1.0;
	% Local Parameter:   id =  ep0520, name = ep0520
	reaction_r_1543_ep0520=-1.0;

	reaction_r_1543=compartment_cell*reaction_r_1543_v0*(1+reaction_r_1543_ep0522*log(const_species_s_0522/global_par_ic0522)+reaction_r_1543_ep0520*log(x(153)/global_par_ic0520));

% Reaction: id = r_1551, name = CO2 transport via diffusion (extracellular to periplasm)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1551_FLUX_VALUE=0.320567754236931;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1551_v0=0.320567754236931;
	% Local Parameter:   id =  ep0543, name = ep0543
	reaction_r_1551_ep0543=1.0;

	reaction_r_1551=compartment_cell*max(reaction_r_1551_v0*(1+reaction_r_1551_ep0543*log(x(160)/global_par_ic0543)), global_par_zero_flux);

% Reaction: id = r_1557, name = cobalt (Co+2) transport via diffusion (extracellular to periplasm)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1557_FLUX_VALUE=3.46291835458927E-6;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1557_v0=3.46291835458927E-6;
	% Local Parameter:   id =  ep0548, name = ep0548
	reaction_r_1557_ep0548=1.0;
	% Local Parameter:   id =  ep0546, name = ep0546
	reaction_r_1557_ep0546=-1.0;

	reaction_r_1557=compartment_cell*reaction_r_1557_v0*(1+reaction_r_1557_ep0548*log(const_species_s_0548/global_par_ic0548)+reaction_r_1557_ep0546*log(x(161)/global_par_ic0546));

% Reaction: id = r_1565, name = copper (Cu+2) transport via diffusion (extracellular to periplasm)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1565_FLUX_VALUE=9.82083645361517E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1565_v0=9.82083645361517E-5;
	% Local Parameter:   id =  ep0581, name = ep0581
	reaction_r_1565_ep0581=1.0;
	% Local Parameter:   id =  ep0579, name = ep0579
	reaction_r_1565_ep0579=-1.0;

	reaction_r_1565=compartment_cell*reaction_r_1565_v0*(1+reaction_r_1565_ep0581*log(const_species_s_0581/global_par_ic0581)+reaction_r_1565_ep0579*log(x(166)/global_par_ic0579));

% Reaction: id = r_1581, name = cytochrome oxidase bd (menaquinol-8: 2 protons) (periplasm)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1581_FLUX_VALUE=0.0229563090982916;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1581_v0=0.0229563090982916;
	% Local Parameter:   id =  ep1239, name = ep1239
	reaction_r_1581_ep1239=1.0;
	% Local Parameter:   id =  ep1372, name = ep1372
	reaction_r_1581_ep1372=0.5;
	% Local Parameter:   id =  ep1240, name = ep1240
	reaction_r_1581_ep1240=-1.0;

	reaction_r_1581=compartment_cell*reaction_r_1581_v0*(1+reaction_r_1581_ep1239*log(x(288)/global_par_ic1239)+reaction_r_1581_ep1372*log(x(324)/global_par_ic1372)+reaction_r_1581_ep1240*log(x(289)/global_par_ic1240));

% Reaction: id = r_1582, name = cytochrome oxidase bd (ubiquinol-8: 2 protons) (periplasm)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1582_FLUX_VALUE=0.0229563090980402;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1582_v0=0.0229563090980402;
	% Local Parameter:   id =  ep1372, name = ep1372
	reaction_r_1582_ep1372=0.5;
	% Local Parameter:   id =  ep1731, name = ep1731
	reaction_r_1582_ep1731=1.0;
	% Local Parameter:   id =  ep1732, name = ep1732
	reaction_r_1582_ep1732=-1.0;

	reaction_r_1582=compartment_cell*reaction_r_1582_v0*(1+reaction_r_1582_ep1372*log(x(324)/global_par_ic1372)+reaction_r_1582_ep1731*log(x(381)/global_par_ic1731)+reaction_r_1582_ep1732*log(x(382)/global_par_ic1732));

% Reaction: id = r_1621, name = D-glucose transport via diffusion (extracellular to periplasm) irreversible	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1621_FLUX_VALUE=1.0;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1621_v0=1.0;
	% Local Parameter:   id =  ep0659, name = ep0659
	reaction_r_1621_ep0659=1.0;
	% Local Parameter:   id =  ep0657, name = ep0657
	reaction_r_1621_ep0657=-1.0;

	reaction_r_1621=compartment_cell*reaction_r_1621_v0*(1+reaction_r_1621_ep0659*log(const_species_s_0659/global_par_ic0659)+reaction_r_1621_ep0657*log(x(178)/global_par_ic0657));

% Reaction: id = r_1622, name = D-glucose transport via PEP:Pyr PTS (periplasm)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1622_FLUX_VALUE=0.0221586919261637;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1622_v0=0.0221586919261637;
	% Local Parameter:   id =  ep1484, name = ep1484
	reaction_r_1622_ep1484=1.0;
	% Local Parameter:   id =  ep0657, name = ep0657
	reaction_r_1622_ep0657=1.0;
	% Local Parameter:   id =  ep0663, name = ep0663
	reaction_r_1622_ep0663=-1.0;
	% Local Parameter:   id =  ep1531, name = ep1531
	reaction_r_1622_ep1531=-1.0;

	reaction_r_1622=compartment_cell*reaction_r_1622_v0*(1+reaction_r_1622_ep1484*log(x(341)/global_par_ic1484)+reaction_r_1622_ep0657*log(x(178)/global_par_ic0657)+reaction_r_1622_ep0663*log(x(179)/global_par_ic0663)+reaction_r_1622_ep1531*log(x(352)/global_par_ic1531));

% Reaction: id = r_1714, name = Fructose transport via PEP:Pyr PTS (f6p generating) (periplasm)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1714_FLUX_VALUE=0.0110793449722376;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1714_v0=0.0110793449722376;
	% Local Parameter:   id =  ep1484, name = ep1484
	reaction_r_1714_ep1484=1.0;
	% Local Parameter:   id =  ep0622, name = ep0622
	reaction_r_1714_ep0622=1.0;
	% Local Parameter:   id =  ep0627, name = ep0627
	reaction_r_1714_ep0627=-1.0;
	% Local Parameter:   id =  ep1531, name = ep1531
	reaction_r_1714_ep1531=-1.0;

	reaction_r_1714=compartment_cell*reaction_r_1714_v0*(1+reaction_r_1714_ep1484*log(x(341)/global_par_ic1484)+reaction_r_1714_ep0622*log(x(174)/global_par_ic0622)+reaction_r_1714_ep0627*log(x(175)/global_par_ic0627)+reaction_r_1714_ep1531*log(x(352)/global_par_ic1531));

% Reaction: id = r_1792, name = iron (II) transport via diffusion (extracellular to periplasm)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1792_FLUX_VALUE=0.001143178607316;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1792_v0=0.001143178607316;
	% Local Parameter:   id =  ep0840, name = ep0840
	reaction_r_1792_ep0840=1.0;
	% Local Parameter:   id =  ep0838, name = ep0838
	reaction_r_1792_ep0838=-1.0;

	reaction_r_1792=compartment_cell*reaction_r_1792_v0*(1+reaction_r_1792_ep0840*log(const_species_s_0840/global_par_ic0840)+reaction_r_1792_ep0838*log(x(210)/global_par_ic0838));

% Reaction: id = r_1793, name = iron (III) transport via diffusion (extracellular to periplasm)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1793_FLUX_VALUE=0.00108153866040612;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1793_v0=0.00108153866040612;
	% Local Parameter:   id =  ep0843, name = ep0843
	reaction_r_1793_ep0843=1.0;
	% Local Parameter:   id =  ep0841, name = ep0841
	reaction_r_1793_ep0841=-1.0;

	reaction_r_1793=compartment_cell*reaction_r_1793_v0*(1+reaction_r_1793_ep0843*log(const_species_s_0843/global_par_ic0843)+reaction_r_1793_ep0841*log(x(211)/global_par_ic0841));

% Reaction: id = r_1906, name = magnesium (Mg+2) transport via diffusion (extracellular to periplasm)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1906_FLUX_VALUE=0.00120163266904248;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1906_v0=0.00120163266904248;
	% Local Parameter:   id =  ep1214, name = ep1214
	reaction_r_1906_ep1214=1.0;
	% Local Parameter:   id =  ep1212, name = ep1212
	reaction_r_1906_ep1212=-1.0;

	reaction_r_1906=compartment_cell*reaction_r_1906_v0*(1+reaction_r_1906_ep1214*log(const_species_s_1214/global_par_ic1214)+reaction_r_1906_ep1212*log(x(284)/global_par_ic1212));

% Reaction: id = r_1923, name = Manganese (Mn+2) transport via diffusion (extracellular to periplasm)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1923_FLUX_VALUE=9.57150633208474E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1923_v0=9.57150633208474E-5;
	% Local Parameter:   id =  ep1257, name = ep1257
	reaction_r_1923_ep1257=1.0;
	% Local Parameter:   id =  ep1255, name = ep1255
	reaction_r_1923_ep1255=-1.0;

	reaction_r_1923=compartment_cell*reaction_r_1923_v0*(1+reaction_r_1923_ep1257*log(const_species_s_1257/global_par_ic1257)+reaction_r_1923_ep1255*log(x(292)/global_par_ic1255));

% Reaction: id = r_1939, name = Methanol transport via diffusion (extracellular to periplasm)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1939_FLUX_VALUE=2.77033467884759E-7;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1939_v0=2.77033467884759E-7;
	% Local Parameter:   id =  ep1248, name = ep1248
	reaction_r_1939_ep1248=1.0;

	reaction_r_1939=compartment_cell*max(reaction_r_1939_v0*(1+reaction_r_1939_ep1248*log(x(291)/global_par_ic1248)), global_par_zero_flux);

% Reaction: id = r_1943, name = molybdate transport via diffusion (extracellular to periplasm)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1943_FLUX_VALUE=1.78686587096806E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1943_v0=1.78686587096806E-5;
	% Local Parameter:   id =  ep1263, name = ep1263
	reaction_r_1943_ep1263=1.0;
	% Local Parameter:   id =  ep1261, name = ep1261
	reaction_r_1943_ep1261=-1.0;

	reaction_r_1943=compartment_cell*reaction_r_1943_v0*(1+reaction_r_1943_ep1263*log(const_species_s_1263/global_par_ic1263)+reaction_r_1943_ep1261*log(x(296)/global_par_ic1261));

% Reaction: id = r_1944, name = murein polymerizing transglycosylase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1944_FLUX_VALUE=0.0019239974378098;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1944_v0=0.0019239974378098;
	% Local Parameter:   id =  ep1776, name = ep1776
	reaction_r_1944_ep1776=2.0;
	% Local Parameter:   id =  ep1765, name = ep1765
	reaction_r_1944_ep1765=-2.0;
	% Local Parameter:   id =  ep1725, name = ep1725
	reaction_r_1944_ep1725=-1.0;

	reaction_r_1944=compartment_cell*reaction_r_1944_v0*(1+reaction_r_1944_ep1776*log(x(397)/global_par_ic1776)+reaction_r_1944_ep1765*log(x(395)/global_par_ic1765)+reaction_r_1944_ep1725*log(x(380)/global_par_ic1725));

% Reaction: id = r_1962, name = NAD(P) transhydrogenase (periplasm)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1962_FLUX_VALUE=1.06213701401227;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1962_v0=1.06213701401227;
	% Local Parameter:   id =  ep1334, name = ep1334
	reaction_r_1962_ep1334=1.0;
	% Local Parameter:   id =  ep1335, name = ep1335
	reaction_r_1962_ep1335=1.0;
	% Local Parameter:   id =  ep1333, name = ep1333
	reaction_r_1962_ep1333=-1.0;
	% Local Parameter:   id =  ep1336, name = ep1336
	reaction_r_1962_ep1336=-1.0;

	reaction_r_1962=compartment_cell*reaction_r_1962_v0*(1+reaction_r_1962_ep1334*log(x(315)/global_par_ic1334)+reaction_r_1962_ep1335*log(x(316)/global_par_ic1335)+reaction_r_1962_ep1333*log(x(314)/global_par_ic1333)+reaction_r_1962_ep1336*log(x(317)/global_par_ic1336));

% Reaction: id = r_1968, name = nickel transport via diffusion (extracellular to periplasm)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1968_FLUX_VALUE=4.47409051412934E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1968_v0=4.47409051412934E-5;
	% Local Parameter:   id =  ep1331, name = ep1331
	reaction_r_1968_ep1331=1.0;
	% Local Parameter:   id =  ep1329, name = ep1329
	reaction_r_1968_ep1329=-1.0;

	reaction_r_1968=compartment_cell*reaction_r_1968_v0*(1+reaction_r_1968_ep1331*log(const_species_s_1331/global_par_ic1331)+reaction_r_1968_ep1329*log(x(313)/global_par_ic1329));

% Reaction: id = r_2002, name = oxygen transport via diffusion (extracellular to periplasm)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_2002_FLUX_VALUE=0.0230335321771807;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_2002_v0=0.0230335321771807;
	% Local Parameter:   id =  ep1374, name = ep1374
	reaction_r_2002_ep1374=1.0;
	% Local Parameter:   id =  ep1372, name = ep1372
	reaction_r_2002_ep1372=-1.0;

	reaction_r_2002=compartment_cell*reaction_r_2002_v0*(1+reaction_r_2002_ep1374*log(const_species_s_1374/global_par_ic1374)+reaction_r_2002_ep1372*log(x(324)/global_par_ic1372));

% Reaction: id = r_2011, name = phosphate transport via diffusion (extracellular to periplasm)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_2011_FLUX_VALUE=0.131013836759781;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_2011_v0=0.131013836759781;
	% Local Parameter:   id =  ep1432, name = ep1432
	reaction_r_2011_ep1432=1.0;
	% Local Parameter:   id =  ep1430, name = ep1430
	reaction_r_2011_ep1430=-1.0;

	reaction_r_2011=compartment_cell*reaction_r_2011_v0*(1+reaction_r_2011_ep1432*log(const_species_s_1432/global_par_ic1432)+reaction_r_2011_ep1430*log(x(336)/global_par_ic1430));

% Reaction: id = r_2047, name = potassium transport via diffusion (extracellular to periplasm)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_2047_FLUX_VALUE=0.027038466512633;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_2047_v0=0.027038466512633;
	% Local Parameter:   id =  ep1496, name = ep1496
	reaction_r_2047_ep1496=1.0;
	% Local Parameter:   id =  ep1494, name = ep1494
	reaction_r_2047_ep1494=-1.0;

	reaction_r_2047=compartment_cell*reaction_r_2047_v0*(1+reaction_r_2047_ep1496*log(const_species_s_1496/global_par_ic1496)+reaction_r_2047_ep1494*log(x(345)/global_par_ic1494));

% Reaction: id = r_2108, name = sulfate transport via diffusion (extracellular to periplasm)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_2108_FLUX_VALUE=0.0349372447626834;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_2108_v0=0.0349372447626834;
	% Local Parameter:   id =  ep1611, name = ep1611
	reaction_r_2108_ep1611=1.0;
	% Local Parameter:   id =  ep1609, name = ep1609
	reaction_r_2108_ep1609=-1.0;

	reaction_r_2108=compartment_cell*reaction_r_2108_v0*(1+reaction_r_2108_ep1611*log(const_species_s_1611/global_par_ic1611)+reaction_r_2108_ep1609*log(x(367)/global_par_ic1609));

% Reaction: id = r_2167, name = zinc (Zn+2) transport via diffusion (extracellular to periplasm)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_2167_FLUX_VALUE=4.72342063565976E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_2167_v0=4.72342063565976E-5;
	% Local Parameter:   id =  ep1806, name = ep1806
	reaction_r_2167_ep1806=1.0;
	% Local Parameter:   id =  ep1804, name = ep1804
	reaction_r_2167_ep1804=-1.0;

	reaction_r_2167=compartment_cell*reaction_r_2167_v0*(1+reaction_r_2167_ep1806*log(const_species_s_1806/global_par_ic1806)+reaction_r_2167_ep1804*log(x(402)/global_par_ic1804));

% Reaction: id = r_2195, name = 2-Octaprenylphenol hydroxylase (anaerobic)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_2195_FLUX_VALUE=3.08892317453432E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_2195_v0=3.08892317453432E-5;
	% Local Parameter:   id =  ep0229, name = ep0229
	reaction_r_2195_ep0229=1.0;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_2195_ep0467=2.0;
	% Local Parameter:   id =  ep1333, name = ep1333
	reaction_r_2195_ep1333=1.0;
	% Local Parameter:   id =  ep0226, name = ep0226
	reaction_r_2195_ep0226=-1.0;
	% Local Parameter:   id =  ep0421, name = ep0421
	reaction_r_2195_ep0421=-2.0;
	% Local Parameter:   id =  ep1334, name = ep1334
	reaction_r_2195_ep1334=-1.0;
	% Local Parameter:   id =  ep1430, name = ep1430
	reaction_r_2195_ep1430=-2.0;

	reaction_r_2195=compartment_cell*reaction_r_2195_v0*(1+reaction_r_2195_ep0229*log(x(49)/global_par_ic0229)+reaction_r_2195_ep0467*log(x(139)/global_par_ic0467)+reaction_r_2195_ep1333*log(x(314)/global_par_ic1333)+reaction_r_2195_ep0226*log(x(48)/global_par_ic0226)+reaction_r_2195_ep0421*log(x(132)/global_par_ic0421)+reaction_r_2195_ep1334*log(x(315)/global_par_ic1334)+reaction_r_2195_ep1430*log(x(336)/global_par_ic1430));

% Reaction: id = r_2310, name = Dihydroneopterin monophosphate dephosphorylase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_2310_FLUX_VALUE=9.26676951688061E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_2310_v0=9.26676951688061E-5;
	% Local Parameter:   id =  ep0766, name = ep0766
	reaction_r_2310_ep0766=1.0;
	% Local Parameter:   id =  ep0765, name = ep0765
	reaction_r_2310_ep0765=-1.0;
	% Local Parameter:   id =  ep1430, name = ep1430
	reaction_r_2310_ep1430=-1.0;

	reaction_r_2310=compartment_cell*reaction_r_2310_v0*(1+reaction_r_2310_ep0766*log(x(193)/global_par_ic0766)+reaction_r_2310_ep0765*log(x(192)/global_par_ic0765)+reaction_r_2310_ep1430*log(x(336)/global_par_ic1430));

% Reaction: id = r_2519, name = pyridoxine 5'-phosphate oxidase (anaerboic	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_2519_FLUX_VALUE=3.08892316991383E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_2519_v0=3.08892316991383E-5;
	% Local Parameter:   id =  ep1333, name = ep1333
	reaction_r_2519_ep1333=1.0;
	% Local Parameter:   id =  ep1530, name = ep1530
	reaction_r_2519_ep1530=1.0;
	% Local Parameter:   id =  ep1334, name = ep1334
	reaction_r_2519_ep1334=-1.0;
	% Local Parameter:   id =  ep1522, name = ep1522
	reaction_r_2519_ep1522=-1.0;

	reaction_r_2519=compartment_cell*reaction_r_2519_v0*(1+reaction_r_2519_ep1333*log(x(314)/global_par_ic1333)+reaction_r_2519_ep1530*log(x(351)/global_par_ic1530)+reaction_r_2519_ep1334*log(x(315)/global_par_ic1334)+reaction_r_2519_ep1522*log(x(350)/global_par_ic1522));

% Reaction: id = r_2521, name = pyrimidine phosphatase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_2521_FLUX_VALUE=6.17784634458656E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_2521_v0=6.17784634458656E-5;
	% Local Parameter:   id =  ep0346, name = ep0346
	reaction_r_2521_ep0346=1.0;
	% Local Parameter:   id =  ep0311, name = ep0311
	reaction_r_2521_ep0311=-1.0;
	% Local Parameter:   id =  ep1430, name = ep1430
	reaction_r_2521_ep1430=-1.0;

	reaction_r_2521=compartment_cell*reaction_r_2521_v0*(1+reaction_r_2521_ep0346*log(x(102)/global_par_ic0346)+reaction_r_2521_ep0311*log(x(82)/global_par_ic0311)+reaction_r_2521_ep1430*log(x(336)/global_par_ic1430));

% Reaction: id = r_2533, name = Sink needed to allow (2R,4S)-2-methyl-2,3,3,4-tetrahydroxytetrahydrofuran to leave system	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_2533_FLUX_VALUE=6.20554969142397E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_2533_v0=6.20554969142397E-5;
	% Local Parameter:   id =  ep0003, name = ep0003
	reaction_r_2533_ep0003=1.0;

	reaction_r_2533=compartment_cell*max(reaction_r_2533_v0*(1+reaction_r_2533_ep0003*log(x(1)/global_par_ic0003)), global_par_zero_flux);

% Reaction: id = r_2534, name = Sink needed to allow 5'-deoxyribose to leave system	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_2534_FLUX_VALUE=3.11662651885034E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_2534_v0=3.11662651885034E-5;
	% Local Parameter:   id =  ep0334, name = ep0334
	reaction_r_2534_ep0334=1.0;

	reaction_r_2534=compartment_cell*max(reaction_r_2534_v0*(1+reaction_r_2534_ep0334*log(x(93)/global_par_ic0334)), global_par_zero_flux);

% Reaction: id = r_2537, name = Sink needed to allow p-Cresol to leave system	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_2537_FLUX_VALUE=3.08892317229363E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_2537_v0=3.08892317229363E-5;
	% Local Parameter:   id =  ep1407, name = ep1407
	reaction_r_2537_ep1407=1.0;

	reaction_r_2537=compartment_cell*max(reaction_r_2537_v0*(1+reaction_r_2537_ep1407*log(x(331)/global_par_ic1407)), global_par_zero_flux);

% Reaction: id = r_2538, name = Sink needed to allow S-Adenosyl-4-methylthio-2-oxobutanoate to leave system	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_2538_FLUX_VALUE=2.77033467995043E-7;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_2538_v0=2.77033467995043E-7;
	% Local Parameter:   id =  ep1550, name = ep1550
	reaction_r_2538_ep1550=1.0;

	reaction_r_2538=compartment_cell*max(reaction_r_2538_v0*(1+reaction_r_2538_ep1550*log(x(356)/global_par_ic1550)), global_par_zero_flux);

% Reaction: id = r_2584, name = growth	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_2584_FLUX_VALUE=0.138516734183571;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_2584_v0=0.138516734183571;
	% Local Parameter:   id =  ep0133, name = ep0133
	reaction_r_2584_ep0133=2.23E-4;
	% Local Parameter:   id =  ep0378, name = ep0378
	reaction_r_2584_ep0378=2.6E-5;
	% Local Parameter:   id =  ep0226, name = ep0226
	reaction_r_2584_ep0226=2.23E-4;
	% Local Parameter:   id =  ep0380, name = ep0380
	reaction_r_2584_ep0380=2.6E-4;
	% Local Parameter:   id =  ep1041, name = ep1041
	reaction_r_2584_ep1041=0.5137;
	% Local Parameter:   id =  ep1552, name = ep1552
	reaction_r_2584_ep1552=2.23E-4;
	% Local Parameter:   id =  ep1061, name = ep1061
	reaction_r_2584_ep1061=0.2958;
	% Local Parameter:   id =  ep1068, name = ep1068
	reaction_r_2584_ep1068=0.2411;
	% Local Parameter:   id =  ep1072, name = ep1072
	reaction_r_2584_ep1072=0.2411;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_2584_ep0467=54.12;
	% Local Parameter:   id =  ep0480, name = ep0480
	reaction_r_2584_ep0480=1.22E-4;
	% Local Parameter:   id =  ep0476, name = ep0476
	reaction_r_2584_ep0476=2.0E-6;
	% Local Parameter:   id =  ep0497, name = ep0497
	reaction_r_2584_ep0497=0.005205;
	% Local Parameter:   id =  ep0520, name = ep0520
	reaction_r_2584_ep0520=0.005205;
	% Local Parameter:   id =  ep0555, name = ep0555
	reaction_r_2584_ep0555=5.76E-4;
	% Local Parameter:   id =  ep0546, name = ep0546
	reaction_r_2584_ep0546=2.5E-5;
	% Local Parameter:   id =  ep0575, name = ep0575
	reaction_r_2584_ep0575=0.1335;
	% Local Parameter:   id =  ep0579, name = ep0579
	reaction_r_2584_ep0579=7.09E-4;
	% Local Parameter:   id =  ep1083, name = ep1083
	reaction_r_2584_ep1083=0.09158;
	% Local Parameter:   id =  ep0726, name = ep0726
	reaction_r_2584_ep0726=0.02617;
	% Local Parameter:   id =  ep0731, name = ep0731
	reaction_r_2584_ep0731=0.02702;
	% Local Parameter:   id =  ep0760, name = ep0760
	reaction_r_2584_ep0760=0.02702;
	% Local Parameter:   id =  ep0805, name = ep0805
	reaction_r_2584_ep0805=0.02617;
	% Local Parameter:   id =  ep0859, name = ep0859
	reaction_r_2584_ep0859=2.23E-4;
	% Local Parameter:   id =  ep0838, name = ep0838
	reaction_r_2584_ep0838=0.006715;
	% Local Parameter:   id =  ep0841, name = ep0841
	reaction_r_2584_ep0841=0.007808;
	% Local Parameter:   id =  ep1101, name = ep1101
	reaction_r_2584_ep1101=0.2632;
	% Local Parameter:   id =  ep1095, name = ep1095
	reaction_r_2584_ep1095=0.2632;
	% Local Parameter:   id =  ep0929, name = ep0929
	reaction_r_2584_ep0929=0.6126;
	% Local Parameter:   id =  ep0945, name = ep0945
	reaction_r_2584_ep0945=0.2151;
	% Local Parameter:   id =  ep1106, name = ep1106
	reaction_r_2584_ep1106=0.09474;
	% Local Parameter:   id =  ep1119, name = ep1119
	reaction_r_2584_ep1119=0.2905;
	% Local Parameter:   id =  ep1494, name = ep1494
	reaction_r_2584_ep1494=0.1952;
	% Local Parameter:   id =  ep1127, name = ep1127
	reaction_r_2584_ep1127=0.4505;
	% Local Parameter:   id =  ep1131, name = ep1131
	reaction_r_2584_ep1131=0.3432;
	% Local Parameter:   id =  ep1141, name = ep1141
	reaction_r_2584_ep1141=0.1537;
	% Local Parameter:   id =  ep1212, name = ep1212
	reaction_r_2584_ep1212=0.008675;
	% Local Parameter:   id =  ep0336, name = ep0336
	reaction_r_2584_ep0336=2.23E-4;
	% Local Parameter:   id =  ep1255, name = ep1255
	reaction_r_2584_ep1255=6.91E-4;
	% Local Parameter:   id =  ep1261, name = ep1261
	reaction_r_2584_ep1261=7.0E-6;
	% Local Parameter:   id =  ep1333, name = ep1333
	reaction_r_2584_ep1333=0.001831;
	% Local Parameter:   id =  ep1335, name = ep1335
	reaction_r_2584_ep1335=4.47E-4;
	% Local Parameter:   id =  ep0451, name = ep0451
	reaction_r_2584_ep0451=0.01301;
	% Local Parameter:   id =  ep1329, name = ep1329
	reaction_r_2584_ep1329=3.23E-4;
	% Local Parameter:   id =  ep1437, name = ep1437
	reaction_r_2584_ep1437=0.06382;
	% Local Parameter:   id =  ep1435, name = ep1435
	reaction_r_2584_ep1435=0.07521;
	% Local Parameter:   id =  ep1151, name = ep1151
	reaction_r_2584_ep1151=0.1853;
	% Local Parameter:   id =  ep1508, name = ep1508
	reaction_r_2584_ep1508=2.23E-4;
	% Local Parameter:   id =  ep1155, name = ep1155
	reaction_r_2584_ep1155=0.2211;
	% Local Parameter:   id =  ep1522, name = ep1522
	reaction_r_2584_ep1522=2.23E-4;
	% Local Parameter:   id =  ep1546, name = ep1546
	reaction_r_2584_ep1546=2.23E-4;
	% Local Parameter:   id =  ep1170, name = ep1170
	reaction_r_2584_ep1170=0.2158;
	% Local Parameter:   id =  ep1577, name = ep1577
	reaction_r_2584_ep1577=2.23E-4;
	% Local Parameter:   id =  ep1609, name = ep1609
	reaction_r_2584_ep1609=0.004338;
	% Local Parameter:   id =  ep0337, name = ep0337
	reaction_r_2584_ep0337=2.23E-4;
	% Local Parameter:   id =  ep1644, name = ep1644
	reaction_r_2584_ep1644=2.23E-4;
	% Local Parameter:   id =  ep1179, name = ep1179
	reaction_r_2584_ep1179=0.2537;
	% Local Parameter:   id =  ep1185, name = ep1185
	reaction_r_2584_ep1185=0.05684;
	% Local Parameter:   id =  ep1189, name = ep1189
	reaction_r_2584_ep1189=0.1379;
	% Local Parameter:   id =  ep1765, name = ep1765
	reaction_r_2584_ep1765=5.5E-5;
	% Local Parameter:   id =  ep1792, name = ep1792
	reaction_r_2584_ep1792=0.1441;
	% Local Parameter:   id =  ep1193, name = ep1193
	reaction_r_2584_ep1193=0.4232;
	% Local Parameter:   id =  ep1804, name = ep1804
	reaction_r_2584_ep1804=3.41E-4;
	% Local Parameter:   id =  ep1033, name = ep1033
	reaction_r_2584_ep1033=0.01946;
	% Local Parameter:   id =  ep1719, name = ep1719
	reaction_r_2584_ep1719=0.01389;

	reaction_r_2584=compartment_cell*max(reaction_r_2584_v0*(1+reaction_r_2584_ep0133*log(x(32)/global_par_ic0133)+reaction_r_2584_ep0378*log(x(119)/global_par_ic0378)+reaction_r_2584_ep0226*log(x(48)/global_par_ic0226)+reaction_r_2584_ep0380*log(x(120)/global_par_ic0380)+reaction_r_2584_ep1041*log(x(251)/global_par_ic1041)+reaction_r_2584_ep1552*log(x(358)/global_par_ic1552)+reaction_r_2584_ep1061*log(x(252)/global_par_ic1061)+reaction_r_2584_ep1068*log(x(253)/global_par_ic1068)+reaction_r_2584_ep1072*log(x(254)/global_par_ic1072)+reaction_r_2584_ep0467*log(x(139)/global_par_ic0467)+reaction_r_2584_ep0480*log(x(144)/global_par_ic0480)+reaction_r_2584_ep0476*log(x(142)/global_par_ic0476)+reaction_r_2584_ep0497*log(x(148)/global_par_ic0497)+reaction_r_2584_ep0520*log(x(153)/global_par_ic0520)+reaction_r_2584_ep0555*log(x(162)/global_par_ic0555)+reaction_r_2584_ep0546*log(x(161)/global_par_ic0546)+reaction_r_2584_ep0575*log(x(165)/global_par_ic0575)+reaction_r_2584_ep0579*log(x(166)/global_par_ic0579)+reaction_r_2584_ep1083*log(x(258)/global_par_ic1083)+reaction_r_2584_ep0726*log(x(184)/global_par_ic0726)+reaction_r_2584_ep0731*log(x(185)/global_par_ic0731)+reaction_r_2584_ep0760*log(x(191)/global_par_ic0760)+reaction_r_2584_ep0805*log(x(204)/global_par_ic0805)+reaction_r_2584_ep0859*log(x(212)/global_par_ic0859)+reaction_r_2584_ep0838*log(x(210)/global_par_ic0838)+reaction_r_2584_ep0841*log(x(211)/global_par_ic0841)+reaction_r_2584_ep1101*log(x(263)/global_par_ic1101)+reaction_r_2584_ep1095*log(x(259)/global_par_ic1095)+reaction_r_2584_ep0929*log(x(224)/global_par_ic0929)+reaction_r_2584_ep0945*log(x(229)/global_par_ic0945)+reaction_r_2584_ep1106*log(x(265)/global_par_ic1106)+reaction_r_2584_ep1119*log(x(270)/global_par_ic1119)+reaction_r_2584_ep1494*log(x(345)/global_par_ic1494)+reaction_r_2584_ep1127*log(x(271)/global_par_ic1127)+reaction_r_2584_ep1131*log(x(272)/global_par_ic1131)+reaction_r_2584_ep1141*log(x(274)/global_par_ic1141)+reaction_r_2584_ep1212*log(x(284)/global_par_ic1212)+reaction_r_2584_ep0336*log(x(95)/global_par_ic0336)+reaction_r_2584_ep1255*log(x(292)/global_par_ic1255)+reaction_r_2584_ep1261*log(x(296)/global_par_ic1261)+reaction_r_2584_ep1333*log(x(314)/global_par_ic1333)+reaction_r_2584_ep1335*log(x(316)/global_par_ic1335)+reaction_r_2584_ep0451*log(x(136)/global_par_ic0451)+reaction_r_2584_ep1329*log(x(313)/global_par_ic1329)+reaction_r_2584_ep1437*log(x(338)/global_par_ic1437)+reaction_r_2584_ep1435*log(x(337)/global_par_ic1435)+reaction_r_2584_ep1151*log(x(275)/global_par_ic1151)+reaction_r_2584_ep1508*log(x(347)/global_par_ic1508)+reaction_r_2584_ep1155*log(x(276)/global_par_ic1155)+reaction_r_2584_ep1522*log(x(350)/global_par_ic1522)+reaction_r_2584_ep1546*log(x(355)/global_par_ic1546)+reaction_r_2584_ep1170*log(x(277)/global_par_ic1170)+reaction_r_2584_ep1577*log(x(363)/global_par_ic1577)+reaction_r_2584_ep1609*log(x(367)/global_par_ic1609)+reaction_r_2584_ep0337*log(x(96)/global_par_ic0337)+reaction_r_2584_ep1644*log(x(371)/global_par_ic1644)+reaction_r_2584_ep1179*log(x(278)/global_par_ic1179)+reaction_r_2584_ep1185*log(x(279)/global_par_ic1185)+reaction_r_2584_ep1189*log(x(280)/global_par_ic1189)+reaction_r_2584_ep1765*log(x(395)/global_par_ic1765)+reaction_r_2584_ep1792*log(x(400)/global_par_ic1792)+reaction_r_2584_ep1193*log(x(281)/global_par_ic1193)+reaction_r_2584_ep1804*log(x(402)/global_par_ic1804)+reaction_r_2584_ep1033*log(x(248)/global_par_ic1033)+reaction_r_2584_ep1719*log(x(379)/global_par_ic1719)), global_par_zero_flux);

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


