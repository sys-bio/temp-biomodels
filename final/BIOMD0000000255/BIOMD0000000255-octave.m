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
% Model name = Chen2009 - ErbB Signaling
%
% is http://identifiers.org/biomodels.db/MODEL1007260001
% is http://identifiers.org/biomodels.db/BIOMD0000000255
% isDescribedBy http://identifiers.org/pubmed/19156131
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000019
% is http://identifiers.org/biomodels.db/MODEL1007260001
% is http://identifiers.org/biomodels.db/BIOMD0000000255
%


function main()
%Initial conditions vector
	x0=zeros(504,1);
	x0(1) = 1.0E-11;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
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
	x0(15) = 462000.0;
	x0(16) = 0.0;
	x0(17) = 6230.0;
	x0(18) = 0.0;
	x0(19) = 794.0;
	x0(20) = 0.0;
	x0(21) = 0.0;
	x0(22) = 0.0;
	x0(23) = 0.0;
	x0(24) = 0.0;
	x0(25) = 0.0;
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
	x0(36) = 1.2E9;
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
	x0(74) = 4498.73;
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
	x0(195) = 0.0;
	x0(196) = 0.0;
	x0(197) = 0.0;
	x0(198) = 0.0;
	x0(199) = 0.0;
	x0(200) = 0.0;
	x0(201) = 0.0;
	x0(202) = 0.0;
	x0(203) = 0.0;
	x0(204) = 0.0;
	x0(205) = 0.0;
	x0(206) = 0.0;
	x0(207) = 0.0;
	x0(208) = 0.0;
	x0(209) = 0.0;
	x0(210) = 0.0;
	x0(211) = 0.0;
	x0(212) = 0.0;
	x0(213) = 0.0;
	x0(214) = 0.0;
	x0(215) = 0.0;
	x0(216) = 0.0;
	x0(217) = 0.0;
	x0(218) = 0.0;
	x0(219) = 0.0;
	x0(220) = 0.0;
	x0(221) = 0.0;
	x0(222) = 0.0;
	x0(223) = 0.0;
	x0(224) = 0.0;
	x0(225) = 0.0;
	x0(226) = 0.0;
	x0(227) = 0.0;
	x0(228) = 0.0;
	x0(229) = 0.0;
	x0(230) = 0.0;
	x0(231) = 0.0;
	x0(232) = 0.0;
	x0(233) = 0.0;
	x0(234) = 0.0;
	x0(235) = 0.0;
	x0(236) = 0.0;
	x0(237) = 0.0;
	x0(238) = 0.0;
	x0(239) = 0.0;
	x0(240) = 0.0;
	x0(241) = 0.0;
	x0(242) = 0.0;
	x0(243) = 0.0;
	x0(244) = 0.0;
	x0(245) = 0.0;
	x0(246) = 0.0;
	x0(247) = 0.0;
	x0(248) = 0.0;
	x0(249) = 0.0;
	x0(250) = 0.0;
	x0(251) = 0.0;
	x0(252) = 0.0;
	x0(253) = 0.0;
	x0(254) = 0.0;
	x0(255) = 0.0;
	x0(256) = 0.0;
	x0(257) = 0.0;
	x0(258) = 0.0;
	x0(259) = 0.0;
	x0(260) = 0.0;
	x0(261) = 0.0;
	x0(262) = 0.0;
	x0(263) = 0.0;
	x0(264) = 0.0;
	x0(265) = 0.0;
	x0(266) = 0.0;
	x0(267) = 0.0;
	x0(268) = 0.0;
	x0(269) = 0.0;
	x0(270) = 0.0;
	x0(271) = 0.0;
	x0(272) = 0.0;
	x0(273) = 0.0;
	x0(274) = 0.0;
	x0(275) = 0.0;
	x0(276) = 0.0;
	x0(277) = 0.0;
	x0(278) = 534751.0;
	x0(279) = 0.0;
	x0(280) = 0.0;
	x0(281) = 0.0;
	x0(282) = 0.0;
	x0(283) = 0.0;
	x0(284) = 0.0;
	x0(285) = 0.0;
	x0(286) = 0.0;
	x0(287) = 0.0;
	x0(288) = 0.0;
	x0(289) = 0.0;
	x0(290) = 0.0;
	x0(291) = 0.0;
	x0(292) = 1264.91;
	x0(293) = 0.0;
	x0(294) = 0.0;
	x0(295) = 0.0;
	x0(296) = 0.0;
	x0(297) = 0.0;
	x0(298) = 0.0;
	x0(299) = 0.0;
	x0(300) = 0.0;
	x0(301) = 0.0;
	x0(302) = 58095.2;
	x0(303) = 0.0;
	x0(304) = 0.0;
	x0(305) = 0.0;
	x0(306) = 0.0;
	x0(307) = 1100000.0;
	x0(308) = 0.0;
	x0(309) = 0.0;
	x0(310) = 0.0;
	x0(311) = 0.0;
	x0(312) = 0.0;
	x0(313) = 0.0;
	x0(314) = 71131.2;
	x0(315) = 0.0;
	x0(316) = 0.0;
	x0(317) = 0.0;
	x0(318) = 0.0;
	x0(319) = 0.0;
	x0(320) = 8.8914E7;
	x0(321) = 50000.0;
	x0(322) = 0.0;
	x0(323) = 0.0;
	x0(324) = 0.0;
	x0(325) = 0.0;
	x0(326) = 3020000.0;
	x0(327) = 0.0;
	x0(328) = 0.0;
	x0(329) = 0.0;
	x0(330) = 0.0;
	x0(331) = 0.0;
	x0(332) = 0.0;
	x0(333) = 124480.0;
	x0(334) = 0.0;
	x0(335) = 0.0;
	x0(336) = 0.0;
	x0(337) = 0.0;
	x0(338) = 695000.0;
	x0(339) = 0.0;
	x0(340) = 0.0;
	x0(341) = 0.0;
	x0(342) = 0.0;
	x0(343) = 0.0;
	x0(344) = 0.0;
	x0(345) = 0.0;
	x0(346) = 0.0;
	x0(347) = 16870.2;
	x0(348) = 0.0;
	x0(349) = 0.0;
	x0(350) = 0.0;
	x0(351) = 0.0;
	x0(352) = 0.0;
	x0(353) = 0.0;
	x0(354) = 0.0;
	x0(355) = 0.0;
	x0(356) = 0.0;
	x0(357) = 0.0;
	x0(358) = 0.0;
	x0(359) = 0.0;
	x0(360) = 0.0;
	x0(361) = 0.0;
	x0(362) = 0.0;
	x0(363) = 0.0;
	x0(364) = 0.0;
	x0(365) = 0.0;
	x0(366) = 0.0;
	x0(367) = 0.0;
	x0(368) = 0.0;
	x0(369) = 0.0;
	x0(370) = 3.55656E7;
	x0(371) = 0.0;
	x0(372) = 0.0;
	x0(373) = 0.0;
	x0(374) = 0.0;
	x0(375) = 0.0;
	x0(376) = 0.0;
	x0(377) = 0.0;
	x0(378) = 0.0;
	x0(379) = 0.0;
	x0(380) = 0.0;
	x0(381) = 0.0;
	x0(382) = 0.0;
	x0(383) = 0.0;
	x0(384) = 0.0;
	x0(385) = 0.0;
	x0(386) = 0.0;
	x0(387) = 0.0;
	x0(388) = 0.0;
	x0(389) = 0.0;
	x0(390) = 0.0;
	x0(391) = 0.0;
	x0(392) = 0.0;
	x0(393) = 0.0;
	x0(394) = 0.0;
	x0(395) = 0.0;
	x0(396) = 0.0;
	x0(397) = 905000.0;
	x0(398) = 0.0;
	x0(399) = 0.0;
	x0(400) = 0.0;
	x0(401) = 3.00416E8;
	x0(402) = 0.0;
	x0(403) = 0.0;
	x0(404) = 0.0;
	x0(405) = 0.0;
	x0(406) = 450000.0;
	x0(407) = 0.0;
	x0(408) = 0.0;
	x0(409) = 70000.0;
	x0(410) = 0.0;
	x0(411) = 0.0;
	x0(412) = 0.0;
	x0(413) = 0.0;
	x0(414) = 0.0;
	x0(415) = 0.0;
	x0(416) = 0.0;
	x0(417) = 0.0;
	x0(418) = 1080000.0;
	x0(419) = 0.0;
	x0(420) = 0.0;
	x0(421) = 0.0;
	x0(422) = 0.0;
	x0(423) = 0.0;
	x0(424) = 0.0;
	x0(425) = 0.0;
	x0(426) = 0.0;
	x0(427) = 2213.59;
	x0(428) = 393639.0;
	x0(429) = 0.0;
	x0(430) = 56100.9;
	x0(431) = 0.0;
	x0(432) = 94868.3;
	x0(433) = 0.0;
	x0(434) = 1000000.0;
	x0(435) = 0.0;
	x0(436) = 0.0;
	x0(437) = 0.0;
	x0(438) = 0.0;
	x0(439) = 0.0;
	x0(440) = 0.0;
	x0(441) = 0.0;
	x0(442) = 0.0;
	x0(443) = 0.0;
	x0(444) = 0.0;
	x0(445) = 0.0;
	x0(446) = 0.0;
	x0(447) = 0.0;
	x0(448) = 0.0;
	x0(449) = 0.0;
	x0(450) = 0.0;
	x0(451) = 0.0;
	x0(452) = 0.0;
	x0(453) = 0.0;
	x0(454) = 0.0;
	x0(455) = 0.0;
	x0(456) = 0.0;
	x0(457) = 0.0;
	x0(458) = 0.0;
	x0(459) = 0.0;
	x0(460) = 0.0;
	x0(461) = 0.0;
	x0(462) = 0.0;
	x0(463) = 0.0;
	x0(464) = 0.0;
	x0(465) = 0.0;
	x0(466) = 0.0;
	x0(467) = 0.0;
	x0(468) = 0.0;
	x0(469) = 0.0;
	x0(470) = 0.0;
	x0(471) = 0.0;
	x0(472) = 0.0;
	x0(473) = 0.0;
	x0(474) = 0.0;
	x0(475) = 0.0;
	x0(476) = 0.0;
	x0(477) = 0.0;
	x0(478) = 0.0;
	x0(479) = 0.0;
	x0(480) = 0.0;
	x0(481) = 0.0;
	x0(482) = 0.0;
	x0(483) = 0.0;
	x0(484) = 0.0;
	x0(485) = 0.0;
	x0(486) = 0.0;
	x0(487) = 0.0;
	x0(488) = 0.0;
	x0(489) = 0.0;
	x0(490) = 0.0;
	x0(491) = 0.0;
	x0(492) = 0.0;
	x0(493) = 0.0;
	x0(494) = 0.0;
	x0(495) = 0.0;
	x0(496) = 0.0;
	x0(497) = 0.0;
	x0(498) = 0.0;
	x0(499) = 0.0;
	x0(500) = 0.0;
	x0(501) = 0.0;
	x0(502) = 0.0;
	x0(503) = 0.0;
	x0(504) = 0.0;


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

% Compartment: id = plasma_membrane, name = plasma membrane, constant
	compartment_plasma_membrane=1.0;
% Compartment: id = endosomes, name = endosomes, constant
	compartment_endosomes=1.0;
% Compartment: id = lysosomes, name = lysosomes, constant
	compartment_lysosomes=1.0;
% Compartment: id = medium, name = medium, constant
	compartment_medium=1.0;
% Compartment: id = endosomal_membrane, name = endosomal membrane, constant
	compartment_endosomal_membrane=1.0;
% Compartment: id = cytoplasm, name = cytoplasm, constant
	compartment_cytoplasm=1.0;
% Parameter:   id =  ERB_B1_P_tot, name = total ERB-B1_P
% Parameter:   id =  ERB_B1_P_dimer, name = ERB_B1_P_dimer
% Parameter:   id =  ERB_B1_4_P, name = ERB_B1_4_P
% Parameter:   id =  ERB_B1_3_P, name = ERB_B1_3_P
% Parameter:   id =  ERB_B1_2_P, name = ERB_B1_2_P
% Parameter:   id =  EGFR_t, name = total EGF receptor
	global_par_EGFR_t=1080000.0;
% Parameter:   id =  ERK_t, name = total ERK
	global_par_ERK_t=695000.0;
% Parameter:   id =  ERK_PP, name = total ERK_PP
% Parameter:   id =  AKT_t, name = total AKT
	global_par_AKT_t=905000.0;
% Parameter:   id =  AKT_PP, name = total AKT_PP
% Parameter:   id =  model_time, name = model_time
% Parameter:   id =  kd1, name = kd1
% Parameter:   id =  k1c, name = k1c
% Parameter:   id =  kd1c, name = kd1c
% Parameter:   id =  kd1d, name = kd1d
% Parameter:   id =  k1d, name = k1d
% Warning parameter k1d is not constant, it should be controlled by a Rule and/or events
	global_par_k1d=518.0;
% Parameter:   id =  k2, name = k2
	global_par_k2=7.44622E-6;
% Parameter:   id =  kd2, name = kd2
	global_par_kd2=0.16;
% Parameter:   id =  k2b, name = k2b
	global_par_k2b=3.73632E-8;
% Parameter:   id =  kd2b, name = kd2b
	global_par_kd2b=0.016;
% Parameter:   id =  k3, name = k3
	global_par_k3=1.0;
% Parameter:   id =  kd3, name = kd3
	global_par_kd3=0.001;
% Parameter:   id =  k4, name = k4
	global_par_k4=6.73E-6;
% Parameter:   id =  kd4, name = kd4
	global_par_kd4=1.66E-4;
% Parameter:   id =  k4b, name = k4b
	global_par_k4b=0.0;
% Parameter:   id =  kd4b, name = kd4b
	global_par_kd4b=1.66E-4;
% Parameter:   id =  k5, name = k5
	global_par_k5=0.0;
% Parameter:   id =  kd5, name = kd5
	global_par_kd5=0.80833;
% Parameter:   id =  k5b, name = k5b
	global_par_k5b=0.0;
% Parameter:   id =  kd5b, name = kd5b
	global_par_kd5b=0.0080833;
% Parameter:   id =  kd5c, name = kd5c
	global_par_kd5c=0.162;
% Parameter:   id =  k6, name = k6
% Warning parameter k6 is not constant, it should be controlled by a Rule and/or events
	global_par_k6=0.013;
% Parameter:   id =  kd6, name = kd6
% Parameter:   id =  k8, name = k8
	global_par_k8=5.91474E-7;
% Parameter:   id =  kd8, name = kd8
	global_par_kd8=0.2;
% Parameter:   id =  kd8b, name = kd8b
	global_par_kd8b=0.02;
% Parameter:   id =  k8b, name = k8b
	global_par_k8b=9.34641E-6;
% Parameter:   id =  k10, name = k10
	global_par_k10=140000.0;
% Parameter:   id =  k10b, name = k10b
	global_par_k10b=0.05426;
% Parameter:   id =  kd10, name = kd10
	global_par_kd10=0.011;
% Parameter:   id =  k13, name = k13
	global_par_k13=0.0;
% Parameter:   id =  kd13, name = kd13
	global_par_kd13=0.0;
% Parameter:   id =  k14, name = k14
	global_par_k14=0.0;
% Parameter:   id =  kd14, name = kd14
	global_par_kd14=0.0;
% Parameter:   id =  k15, name = k15
	global_par_k15=1.667E-8;
% Parameter:   id =  kd15, name = kd15
	global_par_kd15=0.0;
% Parameter:   id =  k16, name = k16
	global_par_k16=1.67E-5;
% Parameter:   id =  k16b, name = k16b
	global_par_k16b=1.667E-7;
% Parameter:   id =  k17, name = k17
	global_par_k17=1.67E-5;
% Parameter:   id =  kd17, name = kd17
	global_par_kd17=0.06;
% Parameter:   id =  k18, name = k18
	global_par_k18=2.5E-5;
% Parameter:   id =  kd18, name = kd18
	global_par_kd18=1.3;
% Parameter:   id =  k19, name = k19
	global_par_k19=1.667E-7;
% Parameter:   id =  kd19, name = kd19
	global_par_kd19=0.5;
% Parameter:   id =  k20, name = k20
	global_par_k20=1.1068E-5;
% Parameter:   id =  kd20, name = kd20
	global_par_kd20=0.4;
% Parameter:   id =  k21, name = k21
	global_par_k21=3.67E-7;
% Parameter:   id =  kd21, name = kd21
	global_par_kd21=0.23;
% Parameter:   id =  k22, name = k22
	global_par_k22=1.39338E-7;
% Parameter:   id =  kd22, name = kd22
	global_par_kd22=0.1;
% Parameter:   id =  k23, name = k23
	global_par_k23=6.0;
% Parameter:   id =  kd23, name = kd23
	global_par_kd23=0.06;
% Parameter:   id =  kd24, name = kd24
	global_par_kd24=0.55;
% Parameter:   id =  k25, name = k25
	global_par_k25=1.67E-5;
% Parameter:   id =  kd25, name = kd25
	global_par_kd25=0.0214;
% Parameter:   id =  k28, name = k28
	global_par_k28=5.0E-6;
% Parameter:   id =  kd28, name = kd28
	global_par_kd28=0.0053;
% Parameter:   id =  k28b, name = k28b
	global_par_k28b=5.0E-6;
% Parameter:   id =  kd28b, name = kd28b
	global_par_kd28b=0.0053;
% Parameter:   id =  k29, name = k29
	global_par_k29=1.17E-6;
% Parameter:   id =  kd29, name = kd29
	global_par_kd29=3.1;
% Parameter:   id =  kd32, name = kd32
	global_par_kd32=0.1;
% Parameter:   id =  k32, name = k32
	global_par_k32=4.0E-7;
% Parameter:   id =  kd33, name = kd33
	global_par_kd33=0.2;
% Parameter:   id =  k33, name = k33
	global_par_k33=3.5E-5;
% Parameter:   id =  kd34, name = kd34
	global_par_kd34=0.03;
% Parameter:   id =  k34, name = k34
	global_par_k34=7.5E-6;
% Parameter:   id =  kd35, name = kd35
% Warning parameter kd35 is not constant, it should be controlled by a Rule and/or events
	global_par_kd35=0.0015;
% Parameter:   id =  k35, name = k35
% Warning parameter k35 is not constant, it should be controlled by a Rule and/or events
	global_par_k35=7.5E-6;
% Parameter:   id =  k36, name = k36
	global_par_k36=0.005;
% Parameter:   id =  kd36, name = kd36
	global_par_kd36=0.0;
% Parameter:   id =  kd37, name = kd37
	global_par_kd37=0.3;
% Parameter:   id =  k37, name = k37
	global_par_k37=1.5E-6;
% Parameter:   id =  k40, name = k40
	global_par_k40=5.0E-5;
% Parameter:   id =  kd40, name = kd40
	global_par_kd40=0.064;
% Parameter:   id =  k41, name = k41
	global_par_k41=5.0E-5;
% Parameter:   id =  kd41, name = kd41
	global_par_kd41=0.0429;
% Parameter:   id =  k42, name = k42
	global_par_k42=6.0E-5;
% Parameter:   id =  kd42, name = kd42
	global_par_kd42=0.0141589;
% Parameter:   id =  kd43, name = kd43
	global_par_kd43=31.6228;
% Parameter:   id =  k43, name = k43
	global_par_k43=0.0;
% Parameter:   id =  kd44, name = kd44
	global_par_kd44=0.01833;
% Parameter:   id =  kd45, name = kd45
	global_par_kd45=1.9;
% Parameter:   id =  k45, name = k45
	global_par_k45=0.0;
% Parameter:   id =  kd47, name = kd47
	global_par_kd47=0.8;
% Parameter:   id =  k47, name = k47
	global_par_k47=0.0;
% Parameter:   id =  k48, name = k48
% Warning parameter k48 is not constant, it should be controlled by a Rule and/or events
	global_par_k48=2.37E-5;
% Parameter:   id =  kd48, name = kd48
% Warning parameter kd48 is not constant, it should be controlled by a Rule and/or events
	global_par_kd48=0.79;
% Parameter:   id =  kd49, name = kd49
	global_par_kd49=0.112387;
% Parameter:   id =  k49, name = k49
	global_par_k49=0.0;
% Parameter:   id =  k50, name = k50
	global_par_k50=4.74801E-8;
% Parameter:   id =  kd50, name = kd50
	global_par_kd50=0.252982;
% Parameter:   id =  kd52, name = kd52
	global_par_kd52=0.033;
% Parameter:   id =  kd53, name = kd53
	global_par_kd53=0.28;
% Parameter:   id =  k53, name = k53
	global_par_k53=0.0;
% Parameter:   id =  kd55, name = kd55
	global_par_kd55=70.1662;
% Parameter:   id =  k55, name = k55
	global_par_k55=0.0;
% Parameter:   id =  kd56, name = kd56
% Warning parameter kd56 is not constant, it should be controlled by a Rule and/or events
	global_par_kd56=5.0;
% Parameter:   id =  k56, name = k56
% Warning parameter k56 is not constant, it should be controlled by a Rule and/or events
	global_par_k56=3.97392E-4;
% Parameter:   id =  kd57, name = kd57
	global_par_kd57=0.0076;
% Parameter:   id =  k57, name = k57
	global_par_k57=0.0;
% Parameter:   id =  k58, name = k58
% Warning parameter k58 is not constant, it should be controlled by a Rule and/or events
	global_par_k58=8.33E-7;
% Parameter:   id =  kd58, name = kd58
% Warning parameter kd58 is not constant, it should be controlled by a Rule and/or events
	global_par_kd58=56.7862;
% Parameter:   id =  k52, name = k52
	global_par_k52=8.85125E-6;
% Parameter:   id =  k44, name = k44
	global_par_k44=1.07E-5;
% Parameter:   id =  k60, name = k60
	global_par_k60=0.00266742;
% Parameter:   id =  kd60, name = kd60
	global_par_kd60=0.0;
% Parameter:   id =  k61, name = k61
	global_par_k61=5.7E-4;
% Parameter:   id =  kd61, name = kd61
	global_par_kd61=0.0;
% Parameter:   id =  kd63, name = kd63
	global_par_kd63=0.275;
% Parameter:   id =  k64, name = k64
	global_par_k64=1.67E-5;
% Parameter:   id =  kd64, name = kd64
	global_par_kd64=0.3;
% Parameter:   id =  kd65, name = kd65
	global_par_kd65=0.2;
% Parameter:   id =  k65, name = k65
	global_par_k65=0.0;
% Parameter:   id =  k66, name = k66
	global_par_k66=1.5E-5;
% Parameter:   id =  kd66, name = kd66
	global_par_kd66=0.2;
% Parameter:   id =  k67, name = k67
	global_par_k67=5.0E-5;
% Parameter:   id =  kd67, name = kd67
	global_par_kd67=0.02;
% Parameter:   id =  kd68, name = kd68
	global_par_kd68=0.2;
% Parameter:   id =  k68, name = k68
	global_par_k68=0.0;
% Parameter:   id =  kd68b, name = kd68b
	global_par_kd68b=20.5;
% Parameter:   id =  k69, name = k69
	global_par_k69=3.33E-5;
% Parameter:   id =  kd69, name = kd69
	global_par_kd69=0.1;
% Parameter:   id =  k70, name = k70
	global_par_k70=6.67E-7;
% Parameter:   id =  kd70, name = kd70
	global_par_kd70=0.1;
% Parameter:   id =  k71, name = k71
	global_par_k71=0.0;
% Parameter:   id =  kd71, name = kd71
	global_par_kd71=25.2;
% Parameter:   id =  k72, name = k72
	global_par_k72=0.0;
% Parameter:   id =  kd72, name = kd72
	global_par_kd72=5.01187;
% Parameter:   id =  k73, name = k73
% Warning parameter k73 is not constant, it should be controlled by a Rule and/or events
	global_par_k73=0.00374845;
% Parameter:   id =  kd73, name = kd73
% Warning parameter kd73 is not constant, it should be controlled by a Rule and/or events
	global_par_kd73=0.5;
% Parameter:   id =  k74, name = k74
% Warning parameter k74 is not constant, it should be controlled by a Rule and/or events
	global_par_k74=6.36184E-7;
% Parameter:   id =  kd74, name = kd74
% Warning parameter kd74 is not constant, it should be controlled by a Rule and/or events
	global_par_kd74=0.355656;
% Parameter:   id =  kd75, name = kd75
% Warning parameter kd75 is not constant, it should be controlled by a Rule and/or events
	global_par_kd75=0.00633957;
% Parameter:   id =  k75, name = k75
	global_par_k75=0.0;
% Parameter:   id =  k76, name = k76
	global_par_k76=0.0;
% Parameter:   id =  kd76, name = kd76
	global_par_kd76=142.262;
% Parameter:   id =  kd60d, name = kd60d
	global_par_kd60d=0.0;
% Parameter:   id =  k22b, name = k22b
	global_par_k22b=3.5E-5;
% Parameter:   id =  kd22b, name = kd22b
	global_par_kd22b=0.1;
% Parameter:   id =  kd34b, name = kd34b
	global_par_kd34b=0.1;
% Parameter:   id =  k34b, name = k34b
	global_par_k34b=7.5E-5;
% Parameter:   id =  k94b, name = k94b
	global_par_k94b=5.0E-5;
% Parameter:   id =  k94, name = k94
	global_par_k94=5.0E-5;
% Parameter:   id =  kd94, name = kd94
	global_par_kd94=0.01;
% Parameter:   id =  k95, name = k95
	global_par_k95=0.0;
% Parameter:   id =  kd95, name = kd95
	global_par_kd95=33.0;
% Parameter:   id =  k96, name = k96
	global_par_k96=1.67E-6;
% Parameter:   id =  kd96, name = kd96
	global_par_kd96=0.1;
% Parameter:   id =  kd6b, name = kd6b
	global_par_kd6b=0.0;
% Parameter:   id =  k7, name = k7
	global_par_k7=5.0E-5;
% Parameter:   id =  kd7, name = kd7
	global_par_kd7=1.38E-4;
% Parameter:   id =  k62b, name = k62b
	global_par_k62b=4.16E-4;
% Parameter:   id =  kd60b, name = kd60b
	global_par_kd60b=0.0;
% Parameter:   id =  k60c, name = k60c
	global_par_k60c=5.2E-4;
% Parameter:   id =  k60b, name = k60b
	global_par_k60b=0.0471248;
% Parameter:   id =  KD_iressa_wt, name = KD_iressa_wt
	global_par_KD_iressa_wt=3.5E-8;
% Parameter:   id =  k97, name = k97
% Parameter:   id =  kd97, name = kd97
% Warning parameter kd97 is not constant, it should be controlled by a Rule and/or events
	global_par_kd97=0.015;
% Parameter:   id =  KD_iressa_mt, name = KD_iressa_mt
	global_par_KD_iressa_mt=3.0E-9;
% Parameter:   id =  k97c, name = k97c
% Parameter:   id =  kd97c, name = kd97c
% Warning parameter kd97c is not constant, it should be controlled by a Rule and/or events
	global_par_kd97c=0.001;
% Parameter:   id =  Kinh2, name = Kinh2
	global_par_Kinh2=3.0E-7;
% Parameter:   id =  kd98, name = kd98
	global_par_kd98=0.001;
% Parameter:   id =  k98, name = k98
	global_par_k98=33300.0;
% Parameter:   id =  Kinh4, name = Kinh4
	global_par_Kinh4=0.113;
% Parameter:   id =  kd99, name = kd99
	global_par_kd99=0.5;
% Parameter:   id =  k99, name = k99
% Warning parameter k99 is not constant, it should be controlled by a Rule and/or events
	global_par_k99=4.42;
% Parameter:   id =  Kinh3, name = Kinh3
	global_par_Kinh3=0.001;
% Parameter:   id =  kd100, name = kd100
	global_par_kd100=0.001;
% Parameter:   id =  k100, name = k100
	global_par_k100=1.0;
% Parameter:   id =  k101, name = k101
	global_par_k101=8.33E-7;
% Parameter:   id =  kd101, name = kd101
	global_par_kd101=0.03;
% Parameter:   id =  k102, name = k102
	global_par_k102=5.0E-7;
% Parameter:   id =  kd102, name = kd102
	global_par_kd102=5.61009;
% Parameter:   id =  k103, name = k103
% Warning parameter k103 is not constant, it should be controlled by a Rule and/or events
	global_par_k103=8.36983E-9;
% Parameter:   id =  kd103, name = kd103
% Warning parameter kd103 is not constant, it should be controlled by a Rule and/or events
	global_par_kd103=0.016;
% Parameter:   id =  k104, name = k104
	global_par_k104=0.0;
% Parameter:   id =  kd104, name = kd104
	global_par_kd104=0.2;
% Parameter:   id =  k105, name = k105
	global_par_k105=6.67E-5;
% Parameter:   id =  kd105, name = kd105
	global_par_kd105=0.1;
% Parameter:   id =  k106, name = k106
	global_par_k106=1.33E-5;
% Parameter:   id =  kd106, name = kd106
	global_par_kd106=0.1;
% Parameter:   id =  k106b, name = k106b
	global_par_k106b=2.63418E-8;
% Parameter:   id =  kd106b, name = kd106b
	global_par_kd106b=0.1;
% Parameter:   id =  k107, name = k107
	global_par_k107=3.33E-5;
% Parameter:   id =  kd107, name = kd107
	global_par_kd107=0.1;
% Parameter:   id =  k108, name = k108
	global_par_k108=0.0;
% Parameter:   id =  kd108, name = kd108
	global_par_kd108=5.0;
% Parameter:   id =  k109, name = k109
	global_par_k109=5.0E-6;
% Parameter:   id =  kd109, name = kd109
	global_par_kd109=0.1;
% Parameter:   id =  k110, name = k110
	global_par_k110=3.33E-4;
% Parameter:   id =  kd110, name = kd110
	global_par_kd110=0.1;
% Parameter:   id =  kd111, name = kd111
	global_par_kd111=6.57;
% Parameter:   id =  k111, name = k111
	global_par_k111=0.0;
% Parameter:   id =  k112, name = k112
	global_par_k112=0.0047067;
% Parameter:   id =  kd112, name = kd112
	global_par_kd112=0.1;
% Parameter:   id =  k113, name = k113
	global_par_k113=0.0;
% Parameter:   id =  kd113, name = kd113
	global_par_kd113=177.828;
% Parameter:   id =  k114, name = k114
	global_par_k114=4.98816E-6;
% Parameter:   id =  kd114, name = kd114
	global_par_kd114=0.1;
% Parameter:   id =  k115, name = k115
	global_par_k115=0.0;
% Parameter:   id =  kd115, name = kd115
	global_par_kd115=1.0;
% Parameter:   id =  k116, name = k116
% Parameter:   id =  kd116, name = kd116
	global_par_kd116=0.0;
% Parameter:   id =  k117, name = k117
	global_par_k117=8.33E-8;
% Parameter:   id =  kd117, name = kd117
	global_par_kd117=0.1;
% Parameter:   id =  k118, name = k118
	global_par_k118=0.0;
% Parameter:   id =  kd118, name = kd118
	global_par_kd118=0.03;
% Parameter:   id =  kd119, name = kd119
	global_par_kd119=0.0103115;
% Parameter:   id =  k119, name = k119
% Parameter:   id =  k120, name = k120
% Warning parameter k120 is not constant, it should be controlled by a Rule and/or events
	global_par_k120=1.48131E-8;
% Parameter:   id =  kd120, name = kd120
% Warning parameter kd120 is not constant, it should be controlled by a Rule and/or events
	global_par_kd120=0.1;
% Parameter:   id =  k120b, name = k120b
% Warning parameter k120b is not constant, it should be controlled by a Rule and/or events
	global_par_k120b=5.92538E-11;
% Parameter:   id =  kd120b, name = kd120b
% Warning parameter kd120b is not constant, it should be controlled by a Rule and/or events
	global_par_kd120b=0.1;
% Parameter:   id =  Ks, name = Ks
	global_par_Ks=0.001;
% Parameter:   id =  k121, name = k121
	global_par_k121=0.001;
% Parameter:   id =  kd121, name = kd121
	global_par_kd121=1.0;
% Parameter:   id =  kd122, name = kd122
% Parameter:   id =  k123, name = k123
	global_par_k123=0.0;
% Parameter:   id =  kd123, name = kd123
	global_par_kd123=0.177828;
% Parameter:   id =  k6b, name = k6b
	global_par_k6b=0.0;
% Parameter:   id =  k1, name = k1
% Parameter:   id =  k122, name = k122
% Parameter:   id =  KD_ATP, name = KD_ATP
	global_par_KD_ATP=1.0E-4;
% Parameter:   id =  k123h, name = k123h
	global_par_k123h=0.0;
% Parameter:   id =  kd123h, name = kd123h
	global_par_kd123h=0.1;
% Parameter:   id =  KD, name = KD
	global_par_KD=1.0;
% assignmentRule: variable = ERK_PP
	global_par_ERK_PP=x(345)+x(346)+x(348)+x(349)+x(359)+x(360)+x(361)+x(362)+x(363)+x(364)+x(442)+x(443)+x(444)+x(445)+x(446)+x(447)+x(448)+x(449)+x(450)+x(451)+x(452)+x(453)+x(454)+x(455);
% assignmentRule: variable = AKT_PP
	global_par_AKT_PP=x(405)+x(407)+x(470)+x(471);
% assignmentRule: variable = ERB_B1_P_dimer
	global_par_ERB_B1_P_dimer=x(59)+x(60)+x(73)+x(75)+x(76)+x(77)+x(78)+x(79)+x(80)+x(81)+x(82)+x(83)+x(84)+x(85)+x(86)+x(87)+x(88)+x(89)+x(235)+x(236)+x(237)+x(238)+x(239)+x(240)+x(241)+x(242)+x(244)+x(245)+x(246)+x(247)+x(248)+x(249)+x(250)+x(251)+x(359)+x(360)+x(361)+x(362)+x(365)+x(366)+x(368)+x(369)+x(371)+x(372)+x(388)+x(412)+x(441)+x(442)+x(443)+x(463);
% assignmentRule: variable = ERB_B1_4_P
	global_par_ERB_B1_4_P=x(51)+x(52)+x(94)+x(95)+x(100)+x(101)+x(106)+x(107)+x(112)+x(113)+x(118)+x(119)+x(124)+x(125)+x(130)+x(131)+x(136)+x(137)+x(211)+x(214)+x(217)+x(220)+x(223)+x(226)+x(229)+x(232)+x(266)+x(267)+x(281)+x(284)+x(297)+x(300)+x(310)+x(313)+x(373)+x(374)+x(391)+x(411)+x(437)+x(448)+x(449)+x(458)+x(466)+x(478);
% assignmentRule: variable = ERB_B1_3_P
	global_par_ERB_B1_3_P=x(49)+x(50)+x(92)+x(93)+x(98)+x(99)+x(104)+x(105)+x(110)+x(111)+x(116)+x(117)+x(122)+x(123)+x(128)+x(129)+x(134)+x(135)+x(212)+x(215)+x(218)+x(221)+x(224)+x(227)+x(230)+x(233)+x(264)+x(265)+x(280)+x(283)+x(296)+x(299)+x(309)+x(312)+x(377)+x(378)+x(390)+x(410)+x(436)+x(446)+x(447)+x(459)+x(465)+x(477);
% assignmentRule: variable = ERB_B1_2_P
	global_par_ERB_B1_2_P=x(47)+x(48)+x(90)+x(91)+x(96)+x(97)+x(102)+x(103)+x(108)+x(109)+x(114)+x(115)+x(120)+x(121)+x(126)+x(127)+x(132)+x(133)+x(213)+x(216)+x(219)+x(222)+x(225)+x(228)+x(231)+x(234)+x(262)+x(263)+x(279)+x(282)+x(295)+x(298)+x(308)+x(311)+x(375)+x(376)+x(389)+x(416)+x(435)+x(444)+x(445)+x(464);
% assignmentRule: variable = ERB_B1_P_tot
	global_par_ERB_B1_P_tot=2*global_par_ERB_B1_P_dimer+global_par_ERB_B1_4_P+global_par_ERB_B1_3_P+global_par_ERB_B1_2_P;
% assignmentRule: variable = model_time
	global_par_model_time=time;
% assignmentRule: variable = k116
	global_par_k116=stepfunc(global_par_model_time, 2659.99, 0, 2660, 0.0150356);
% assignmentRule: variable = k97
	global_par_k97=global_par_kd97/global_par_KD_iressa_wt;
% assignmentRule: variable = k97c
	global_par_k97c=global_par_kd97c/global_par_KD_iressa_mt;
% assignmentRule: variable = k1
	global_par_k1=stepfunc(global_par_model_time, 1799.99, 0, 1800, 10000000);
% assignmentRule: variable = kd1
	global_par_kd1=stepfunc(global_par_model_time, 1799.99, 0, 1800, 0.0033);
% assignmentRule: variable = k1c
	global_par_k1c=stepfunc(global_par_model_time, 1799.99, 0, 1800, 0);
% assignmentRule: variable = kd1c
	global_par_kd1c=stepfunc(global_par_model_time, 1799.99, 0, 1800, 0);
% assignmentRule: variable = kd1d
	global_par_kd1d=stepfunc(global_par_model_time, 1799.99, 0, 1800, 0);
% assignmentRule: variable = kd6
	global_par_kd6=stepfunc(global_par_model_time, 1799.99, 0, 1800, 5E-5);
% assignmentRule: variable = kd122
	global_par_kd122=stepfunc(global_par_model_time, 1799.99, 0, 1800, 1);
% assignmentRule: variable = k122
	global_par_k122=stepfunc(global_par_model_time, 1799.99, 0, 1800, 1.8704E-8);
% assignmentRule: variable = k119
	global_par_k119=stepfunc(global_par_model_time, 1799.99, 0, 1800, 10000000);

% Reaction: id = v1, name = v1 EGF +  ErbB1:ATP   -> EGF:ErbB1:ATP  k1 kd1
	reaction_v1=global_par_k1*x(1)*x(2)-global_par_kd1*x(3);

% Reaction: id = v2, name = v2 (ErbB2:ErbB3) +  EGF  -> (ErbB3:ErbB2)#P  k1c kd1c
	reaction_v2=global_par_k1c*x(4)*x(1)-global_par_kd1c*x(5);

% Reaction: id = v3, name = v3 ErbB2:ErbB4 +  EGF  -> (ErbB4:ErbB2)#P  k1d kd1d
	reaction_v3=global_par_k1d*x(6)*x(1)-global_par_kd1d*x(7);

% Reaction: id = v4, name = v4 EGF +  ErbB1:Inh  -> EGF:ErbB1:Inh  k1 kd1
	reaction_v4=global_par_k1*x(1)*x(8)-global_par_kd1*x(9);

% Reaction: id = v5, name = v5 EGF:ErbB1:ATP +  EGF:ErbB1:Inh  -> (EGF:ErbB1:ErbB1):Inh  k2 kd2
	reaction_v5=global_par_k2*x(3)*x(9)-global_par_kd2*x(10);

% Reaction: id = v6, name = v6 EGF:ErbB1:Inh +  EGF:ErbB1:Inh  -> 2(EGF:ErbB1:Inh)  k2 kd2
	reaction_v6=global_par_k2*x(9)*x(9)-global_par_kd2*x(11);

% Reaction: id = v7, name = v7 EGF:ErbB1:ATP +  EGF:ErbB1:ATP  -> 2(EGF:ErbB1:ATP))  k2 kd2
	reaction_v7=global_par_k2*x(3)*x(3)-global_par_kd2*x(12);

% Reaction: id = v8, name = v8 EGF:ErbB1:ATP +  EGF:ErbB1:ATP  -> 2(EGF:ErbB1:ATP)  k2 kd2
	reaction_v8=global_par_k2*x(13)*x(13)-global_par_kd2*x(14);

% Reaction: id = v9, name = v9 EGF:ErbB1:ATP +  ErbB2  -> EGF:ErbB1:ErbB2  k2b kd2b
	reaction_v9=global_par_k2b*x(3)*x(15)-global_par_kd2b*x(16);

% Reaction: id = v10, name = v10 EGF:ErbB1:ATP +  ErbB3  -> EGF:ErbB1:ErbB3  k2b kd2b
	reaction_v10=global_par_k2b*x(3)*x(17)-global_par_kd2b*x(18);

% Reaction: id = v11, name = v11 ErbB4 +  EGF:ErbB1:ATP  -> EGF:ErbB1:ErbB4  k2b kd2b
	reaction_v11=global_par_k2b*x(19)*x(3)-global_par_kd2b*x(20);

% Reaction: id = v12, name = v12 EGF:ErbB1:ATP +  ErbB2  -> (EGF:ErbB1:ErbB2)  k2b kd2b
	reaction_v12=global_par_k2b*x(13)*x(21)-global_par_kd2b*x(22);

% Reaction: id = v13, name = v13 EGF:ErbB1:ATP +  ErbB3  -> (EGF:ErbB1:ErbB3)  k2b kd2b
	reaction_v13=global_par_k2b*x(13)*x(23)-global_par_kd2b*x(24);

% Reaction: id = v14, name = v14 EGF:ErbB1:ATP +  ErbB4  -> (EGF:ErbB1:ErbB4)  k2b kd2b
	reaction_v14=global_par_k2b*x(13)*x(25)-global_par_kd2b*x(26);

% Reaction: id = v15, name = v15 EGF:ErbB1:Inh +  ErbB2  -> EGF:ErbB1:Inh:ErB2  k2b kd2b
	reaction_v15=global_par_k2b*x(9)*x(15)-global_par_kd2b*x(27);

% Reaction: id = v16, name = v16 ErbB3 +  EGF:ErbB1:Inh  -> EGF:ErbB1:Inh:ErB3  k2b kd2b
	reaction_v16=global_par_k2b*x(17)*x(9)-global_par_kd2b*x(28);

% Reaction: id = v17, name = v17 ErbB4 +  EGF:ErbB1:Inh  -> EGF:ErbB1:Inh:ErB4  k2b kd2b
	reaction_v17=global_par_k2b*x(19)*x(9)-global_par_kd2b*x(29);

% Reaction: id = v18, name = v18 EGF:ErbB1:ATP +  ErbB2:Inh  -> (EGF:ErbB1:ErbB2):Inh  k2b kd2b
	reaction_v18=global_par_k2b*x(3)*x(30)-global_par_kd2b*x(31);

% Reaction: id = v19, name = v19 EGF:ErbB1:ATP +  ErbB4:Inh  -> (EGF:ErbB1:ErbB3)#P:Inh  k2b kd2b
	reaction_v19=global_par_k2b*x(3)*x(32)-global_par_kd2b*x(33);

% Reaction: id = v20, name = v20 EGF:ErbB1:ATP +  ErbB3:Inh  -> (EGF:ErbB1:ErbB3)#P:Inh  k2b kd2b
	reaction_v20=global_par_k2b*x(3)*x(34)-global_par_kd2b*x(35);

% Reaction: id = v21, name = v21 (EGF:ErbB1:ErbB2) +  ATP  -> (EGF:ErbB1:ErbB2):ATP  k122 kd122
	reaction_v21=global_par_k122*x(22)*x(36)-global_par_kd122*x(37);

% Reaction: id = v22, name = v22 (EGF:ErbB1:ErbB3) +  ATP  -> (EGF:ErbB1:ErbB3):ATP  k122 kd122
	reaction_v22=global_par_k122*x(24)*x(36)-global_par_kd122*x(38);

% Reaction: id = v23, name = v23 (EGF:ErbB1:ErbB4) +  ATP  -> (EGF:ErbB1:ErbB4):ATP  k122 kd122
	reaction_v23=global_par_k122*x(26)*x(36)-global_par_kd122*x(39);

% Reaction: id = v24, name = v24 2(EGF:ErbB1:ATP) +  ATP  -> 2(EGF:ErbB1):ATP  k122 kd122
	reaction_v24=global_par_k122*x(14)*x(36)-global_par_kd122*x(40);

% Reaction: id = v25, name = v25 2(EGF:ErbB1:ATP)) +  ATP  ->   k122 kd122
	reaction_v25=global_par_k122*x(12)*x(36)-global_par_kd122*x(41);

% Reaction: id = v26, name = v26 EGF:ErbB1:ErbB2 +  ATP  -> EGF:ErbB1:ErbB2:ATP  k122 kd122
	reaction_v26=global_par_k122*x(16)*x(36)-global_par_kd122*x(42);

% Reaction: id = v27, name = v27 EGF:ErbB1:ErbB3 +  ATP  -> EGF:ErbB1:ErbB3:ATP  k122 kd122
	reaction_v27=global_par_k122*x(18)*x(36)-global_par_kd122*x(43);

% Reaction: id = v28, name = v28 EGF:ErbB1:ErbB4 +  ATP  -> EGF:ErbB1:ErbB4:ATP  k122 kd122
	reaction_v28=global_par_k122*x(20)*x(36)-global_par_kd122*x(44);

% Reaction: id = v29, name = v29 ErbB2:ErbB2#P +  ATP  -> ErbB2:ErbB2#P:ATP  k122 kd122
	reaction_v29=global_par_k122*x(45)*x(36)-global_par_kd122*x(46);

% Reaction: id = v30, name = v30 (ErbB1:ErbB2)#P:GAP:Grb2:Gab1 +  ATP  -> (ErbB1:ErbB2)#P:GAP:Grb2:Gab1:ATP  k122 kd122
	reaction_v30=global_par_k122*x(47)*x(36)-global_par_kd122*x(48);

% Reaction: id = v31, name = v31 (ErbB1:ErbB3)#P:GAP:Grb2:Gab1 +  ATP  -> (ErbB1:ErbB3)#P:GAP:Grb2:Gab1:ATP  k122 kd122
	reaction_v31=global_par_k122*x(49)*x(36)-global_par_kd122*x(50);

% Reaction: id = v32, name = v32 (ErbB1:ErbB4)#P:GAP:Grb2:Gab1 +  ATP  -> (ErbB1:ErbB4)#P:GAP:Grb2:Gab1:ATP  k122 kd122
	reaction_v32=global_par_k122*x(51)*x(36)-global_par_kd122*x(52);

% Reaction: id = v33, name = v33 2(ErbB2)#P:GAP:Grb2:Gab1 +  ATP  -> 2(ErbB2)#P:GAP:Grb2:Gab1:ATP  k122 kd122
	reaction_v33=global_par_k122*x(53)*x(36)-global_par_kd122*x(54);

% Reaction: id = v34, name = v34 (ErbB3:ErbB2)#P:GAP:Grb2:Gab1 +  ATP  -> (ErbB3:ErbB2)#P:GAP:Grb2:Gab1:ATP  k122 kd122
	reaction_v34=global_par_k122*x(55)*x(36)-global_par_kd122*x(56);

% Reaction: id = v35, name = v35 (ErbB4:ErbB2)#P:GAP:Grb2:Gab1 +  ATP  -> (ErbB4:ErbB2)#P:GAP:Grb2:Gab1:ATP  k122 kd122
	reaction_v35=global_par_k122*x(57)*x(36)-global_par_kd122*x(58);

% Reaction: id = v36, name = v36 2(EGF:ErbB1)#P:GAP:Grb2:Gab1 +  ATP  -> 2(EGF:ErbB1)#P:GAP:Grb2:Gab1:ATP  k122 kd122
	reaction_v36=global_par_k122*x(59)*x(36)-global_par_kd122*x(60);

% Reaction: id = v37, name = v37 (HRG:ErbB3:ErbB1) +  ATP  -> (HRG:ErbB3:ErbB1):ATP  k122 kd122
	reaction_v37=global_par_k122*x(61)*x(36)-global_par_kd122*x(62);

% Reaction: id = v38, name = v38 (HRG:ErbB4:ErbB1) +  ATP  -> (HRG:ErbB4:ErbB1):ATP  k122 kd122
	reaction_v38=global_par_k122*x(63)*x(36)-global_par_kd122*x(64);

% Reaction: id = v39, name = v39 (HRG:ErbB4):ErbB2 +  ATP  -> (HRG:ErbB4):ErbB2:ATP  k122 kd122
	reaction_v39=global_par_k122*x(65)*x(36)-global_par_kd122*x(66);

% Reaction: id = v40, name = v40 (HRG:ErbB3):ErbB2 +  ATP  -> (HRG:ErbB3):ErbB2:ATP  k122 kd122
	reaction_v40=global_par_k122*x(67)*x(36)-global_par_kd122*x(68);

% Reaction: id = v41, name = v41 (HRG:ErbB3):ErbB2) +  ATP  -> (HRG:ErbB3):ErbB2):ATP  k122 kd122
	reaction_v41=global_par_k122*x(69)*x(36)-global_par_kd122*x(70);

% Reaction: id = v42, name = v42 (HRG:ErbB4):ErbB2) +  ATP  -> (HRG:ErbB4):ErbB2):ATP  k122 kd122
	reaction_v42=global_par_k122*x(71)*x(36)-global_par_kd122*x(72);

% Reaction: id = v43, name = v43 2(EGF:ErbB1)#P:GAP:Grb2 +  cPP  -> 2(EGF:ErbB1)#P:GAP:Grb2:cPP  k4 kd4
	reaction_v43=global_par_k4*x(73)*x(74)-global_par_kd4*x(75);

% Reaction: id = v44, name = v44 2(EGF:ErbB1)#P:GAP:Grb2:Sos +  cPP  -> 2(EGF:ErbB1)#P:GAP:Grb2:Sos:cPP  k4 kd4
	reaction_v44=global_par_k4*x(76)*x(74)-global_par_kd4*x(77);

% Reaction: id = v45, name = v45 2(EGF:ErbB1)#P:GAP:Grb2:Sos:(Ras:GDP) +  cPP  -> 2(EGF:ErbB1)#P:GAP:Grb2:Sos:(Ras:GDP):cPP  k4 kd4
	reaction_v45=global_par_k4*x(78)*x(74)-global_par_kd4*x(79);

% Reaction: id = v46, name = v46 2(EGF:ErbB1)#P:GAP:Grb2:Sos:(Ras:GTP) +  cPP  -> 2(EGF:ErbB1)#P:GAP:Grb2:Sos:(Ras:GTP):cPP  k4 kd4
	reaction_v46=global_par_k4*x(80)*x(74)-global_par_kd4*x(81);

% Reaction: id = v47, name = v47 2(EGF:ErbB1)#P:GAP:(Shc#P):Grb2 +  cPP  -> 2(EGF:ErbB1)#P:GAP:(Shc#P):Grb2:cPP  k4 kd4
	reaction_v47=global_par_k4*x(82)*x(74)-global_par_kd4*x(83);

% Reaction: id = v48, name = v48 2(EGF:ErbB1)#P:GAP:(Shc#P):Grb2:Sos +  cPP  -> 2(EGF:ErbB1)#P:GAP:(Shc#P):Grb2:Sos:cPP  k4 kd4
	reaction_v48=global_par_k4*x(84)*x(74)-global_par_kd4*x(85);

% Reaction: id = v49, name = v49 2(EGF:ErbB1)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GDP) +  cPP  -> 2(EGF:ErbB1)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GDP):cPP  k4 kd4
	reaction_v49=global_par_k4*x(86)*x(74)-global_par_kd4*x(87);

% Reaction: id = v50, name = v50 2(EGF:ErbB1)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GTP) +  cPP  -> 2(EGF:ErbB1)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GTP):cPP  k4 kd4
	reaction_v50=global_par_k4*x(88)*x(74)-global_par_kd4*x(89);

% Reaction: id = v52, name = v52 (ErbB1:ErbB2)#P:GAP:(Shc#P):Grb2 +  cPP  -> (ErbB1:ErbB2)#P:GAP:(Shc#P):Grb2:cPP  k4b kd4
	reaction_v52=global_par_k4b*x(90)*x(74)-global_par_kd4*x(91);

% Reaction: id = v53, name = v53 (ErbB1:ErbB3)#P:GAP:(Shc#P):Grb2 +  cPP  -> (ErbB1:ErbB3)#P:GAP:(Shc#P):Grb2:cPP  k4b kd4
	reaction_v53=global_par_k4b*x(92)*x(74)-global_par_kd4*x(93);

% Reaction: id = v54, name = v54 (ErbB1:ErbB4)#P:GAP:(Shc#P):Grb2 +  cPP  -> (ErbB1:ErbB4)#P:GAP:(Shc#P):Grb2:cPP  k4b kd4
	reaction_v54=global_par_k4b*x(94)*x(74)-global_par_kd4*x(95);

% Reaction: id = v55, name = v55 (ErbB1:ErbB2)#P:GAP:(Shc#P):Grb2:Sos +  cPP  -> (ErbB1:ErbB2)#P:GAP:(Shc#P):Grb2:Sos:cPP  k4b kd4
	reaction_v55=global_par_k4b*x(96)*x(74)-global_par_kd4*x(97);

% Reaction: id = v56, name = v56 (ErbB1:ErbB3)#P:GAP:(Shc#P):Grb2:Sos +  cPP  -> (ErbB1:ErbB3)#P:GAP:(Shc#P):Grb2:Sos:cPP  k4b kd4
	reaction_v56=global_par_k4b*x(98)*x(74)-global_par_kd4*x(99);

% Reaction: id = v57, name = v57 (ErbB1:ErbB4)#P:GAP:(Shc#P):Grb2:Sos +  cPP  -> (ErbB1:ErbB4)#P:GAP:(Shc#P):Grb2:Sos:cPP  k4b kd4
	reaction_v57=global_par_k4b*x(100)*x(74)-global_par_kd4*x(101);

% Reaction: id = v58, name = v58 (ErbB1:ErbB2)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GDP) +  cPP  -> (ErbB1:ErbB2)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GDP):cPP  k4b kd4
	reaction_v58=global_par_k4b*x(102)*x(74)-global_par_kd4*x(103);

% Reaction: id = v59, name = v59 (ErbB1:ErbB3)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GDP) +  cPP  -> (ErbB1:ErbB3)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GDP):cPP  k4b kd4
	reaction_v59=global_par_k4b*x(104)*x(74)-global_par_kd4*x(105);

% Reaction: id = v60, name = v60 (ErbB1:ErbB4)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GDP) +  cPP  -> (ErbB1:ErbB4)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GDP):cPP  k4b kd4
	reaction_v60=global_par_k4b*x(106)*x(74)-global_par_kd4*x(107);

% Reaction: id = v61, name = v61 (ErbB1:ErbB2)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GTP) +  cPP  -> (ErbB1:ErbB2)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GTP):cPP  k4b kd4
	reaction_v61=global_par_k4b*x(108)*x(74)-global_par_kd4*x(109);

% Reaction: id = v62, name = v62 (ErbB1:ErbB3)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GTP) +  cPP  -> (ErbB1:ErbB3)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GTP):cPP  k4b kd4
	reaction_v62=global_par_k4b*x(110)*x(74)-global_par_kd4*x(111);

% Reaction: id = v63, name = v63 (ErbB1:ErbB4)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GTP) +  cPP  -> (ErbB1:ErbB4)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GTP):cPP  k4b kd4
	reaction_v63=global_par_k4b*x(112)*x(74)-global_par_kd4*x(113);

% Reaction: id = v64, name = v64 (ErbB1:ErbB2)#P:GAP:Grb2 +  cPP  -> (ErbB1:ErbB2)#P:GAP:Grb2:cPP  k4b kd4
	reaction_v64=global_par_k4b*x(114)*x(74)-global_par_kd4*x(115);

% Reaction: id = v65, name = v65 (ErbB1:ErbB3)#P:GAP:Grb2 +  cPP  -> (ErbB1:ErbB3)#P:GAP:Grb2:cPP  k4b kd4
	reaction_v65=global_par_k4b*x(116)*x(74)-global_par_kd4*x(117);

% Reaction: id = v66, name = v66 (ErbB1:ErbB4)#P:GAP:Grb2 +  cPP  -> (ErbB1:ErbB4)#P:GAP:Grb2:cPP  k4b kd4
	reaction_v66=global_par_k4b*x(118)*x(74)-global_par_kd4*x(119);

% Reaction: id = v67, name = v67 (ErbB1:ErbB2)#P:GAP:Grb2:Sos:(Ras:GDP) +  cPP  -> (ErbB1:ErbB2)#P:GAP:Grb2:Sos:(Ras:GDP):cPP  k4b kd4
	reaction_v67=global_par_k4b*x(120)*x(74)-global_par_kd4*x(121);

% Reaction: id = v68, name = v68 (ErbB1:ErbB3)#P:GAP:Grb2:Sos:(Ras:GDP) +  cPP  -> (ErbB1:ErbB3)#P:GAP:Grb2:Sos:(Ras:GDP):cPP  k4b kd4
	reaction_v68=global_par_k4b*x(122)*x(74)-global_par_kd4*x(123);

% Reaction: id = v69, name = v69 (ErbB1:ErbB4)#P:GAP:Grb2:Sos:(Ras:GDP) +  cPP  -> (ErbB1:ErbB4)#P:GAP:Grb2:Sos:(Ras:GDP):cPP  k4b kd4
	reaction_v69=global_par_k4b*x(124)*x(74)-global_par_kd4*x(125);

% Reaction: id = v70, name = v70 (ErbB1:ErbB2)#P:GAP:Grb2:Sos:(Ras:GTP) +  cPP  -> (ErbB1:ErbB2)#P:GAP:Grb2:Sos:(Ras:GTP):cPP  k4 kd4
	reaction_v70=global_par_k4*x(126)*x(74)-global_par_kd4*x(127);

% Reaction: id = v71, name = v71 (ErbB1:ErbB3)#P:GAP:Grb2:Sos:(Ras:GTP) +  cPP  -> (ErbB1:ErbB3)#P:GAP:Grb2:Sos:(Ras:GTP):cPP  k4 kd4
	reaction_v71=global_par_k4*x(128)*x(74)-global_par_kd4*x(129);

% Reaction: id = v72, name = v72 (ErbB1:ErbB4)#P:GAP:Grb2:Sos:(Ras:GTP) +  cPP  -> (ErbB1:ErbB4)#P:GAP:Grb2:Sos:(Ras:GTP):cPP  k4 kd4
	reaction_v72=global_par_k4*x(130)*x(74)-global_par_kd4*x(131);

% Reaction: id = v75, name = v75 (ErbB1:ErbB2)#P:GAP:Grb2:Sos +  cPP  -> (ErbB1:ErbB2)#P:GAP:Grb2:Sos:cPP  k4b kd4
	reaction_v75=global_par_k4b*x(132)*x(74)-global_par_kd4*x(133);

% Reaction: id = v76, name = v76 (ErbB1:ErbB3)#P:GAP:Grb2:Sos +  cPP  -> (ErbB1:ErbB3)#P:GAP:Grb2:Sos:cPP  k4b kd4
	reaction_v76=global_par_k4b*x(134)*x(74)-global_par_kd4*x(135);

% Reaction: id = v77, name = v77 (ErbB1:ErbB4)#P:GAP:Grb2:Sos +  cPP  -> (ErbB1:ErbB4)#P:GAP:Grb2:Sos:cPP  k4b kd4
	reaction_v77=global_par_k4b*x(136)*x(74)-global_par_kd4*x(137);

% Reaction: id = v78, name = v78 2(ErbB2)#P:GAP:(Shc#P):Grb2 +  cPP  -> 2(ErbB2)#P:GAP:(Shc#P):Grb2:cPP  k4b kd4
	reaction_v78=global_par_k4b*x(138)*x(74)-global_par_kd4*x(139);

% Reaction: id = v79, name = v79 2(ErbB2)#P:GAP:(Shc#P):Grb2:Sos +  cPP  -> 2(ErbB2)#P:GAP:(Shc#P):Grb2:Sos:cPP  k4b kd4
	reaction_v79=global_par_k4b*x(140)*x(74)-global_par_kd4*x(141);

% Reaction: id = v80, name = v80 2(ErbB2)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GDP) +  cPP  -> 2(ErbB2)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GDP):cPP  k4b kd4
	reaction_v80=global_par_k4b*x(142)*x(74)-global_par_kd4*x(143);

% Reaction: id = v81, name = v81 2(ErbB2)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GTP) +  cPP  -> 2(ErbB2)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GTP):cPP  k4b kd4
	reaction_v81=global_par_k4b*x(144)*x(74)-global_par_kd4*x(145);

% Reaction: id = v82, name = v82 2(ErbB2)#P:GAP:Grb2 +  cPP  -> 2(ErbB2)#P:GAP:Grb2:cPP  k4b kd4
	reaction_v82=global_par_k4b*x(146)*x(74)-global_par_kd4*x(147);

% Reaction: id = v83, name = v83 2(ErbB2)#P:GAP:Grb2:Sos +  cPP  -> 2(ErbB2)#P:GAP:Grb2:Sos:cPP  k4b kd4
	reaction_v83=global_par_k4b*x(148)*x(74)-global_par_kd4*x(149);

% Reaction: id = v84, name = v84 2(ErbB2)#P:GAP:Grb2:Sos:(Ras:GDP) +  cPP  -> 2(ErbB2)#P:GAP:Grb2:Sos:(Ras:GDP):cPP  k4b kd4
	reaction_v84=global_par_k4b*x(150)*x(74)-global_par_kd4*x(151);

% Reaction: id = v85, name = v85 2(ErbB2)#P:GAP:Grb2:Sos:(Ras:GTP) +  cPP  -> 2(ErbB2)#P:GAP:Grb2:Sos:(Ras:GTP):cPP  k4b kd4
	reaction_v85=global_par_k4b*x(152)*x(74)-global_par_kd4*x(153);

% Reaction: id = v87, name = v87 (ErbB3:ErbB2)#P:GAP:(Shc#P):Grb2 +  cPP  -> (ErbB3:ErbB2)#P:GAP:(Shc#P):Grb2:cPP  k4b kd4
	reaction_v87=global_par_k4b*x(154)*x(74)-global_par_kd4*x(155);

% Reaction: id = v88, name = v88 (ErbB4:ErbB2)#P:GAP:(Shc#P):Grb2 +  cPP  -> (ErbB4:ErbB2)#P:GAP:(Shc#P):Grb2:cPP  k4b kd4
	reaction_v88=global_par_k4b*x(156)*x(74)-global_par_kd4*x(157);

% Reaction: id = v89, name = v89 (ErbB4:ErbB2)#P:GAP:(Shc#P):Grb2:Sos +  cPP  -> (ErbB4:ErbB2)#P:GAP:(Shc#P):Grb2:Sos:cPP  k4b kd4
	reaction_v89=global_par_k4b*x(158)*x(74)-global_par_kd4*x(159);

% Reaction: id = v90, name = v90 (ErbB3:ErbB2)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GDP) +  cPP  -> (ErbB3:ErbB2)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GDP):cPP  k4b kd4
	reaction_v90=global_par_k4b*x(160)*x(74)-global_par_kd4*x(161);

% Reaction: id = v91, name = v91 (ErbB4:ErbB2)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GDP) +  cPP  -> (ErbB4:ErbB2)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GDP):cPP  k4b kd4
	reaction_v91=global_par_k4b*x(162)*x(74)-global_par_kd4*x(163);

% Reaction: id = v92, name = v92 (ErbB3:ErbB2)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GTP) +  cPP  -> (ErbB3:ErbB2)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GTP):cPP  k4b kd4
	reaction_v92=global_par_k4b*x(164)*x(74)-global_par_kd4*x(165);

% Reaction: id = v93, name = v93 (ErbB4:ErbB2)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GTP) +  cPP  -> (ErbB4:ErbB2)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GTP):cPP  k4b kd4
	reaction_v93=global_par_k4b*x(166)*x(74)-global_par_kd4*x(167);

% Reaction: id = v94, name = v94 (ErbB3:ErbB2)#P:GAP:Grb2 +  cPP  -> (ErbB3:ErbB2)#P:GAP:Grb2:cPP  k4b kd4
	reaction_v94=global_par_k4b*x(168)*x(74)-global_par_kd4*x(169);

% Reaction: id = v95, name = v95 (ErbB3:ErbB2)#P:GAP:(Shc#P):Grb2:Sos +  cPP  -> (ErbB3:ErbB2)#P:GAP:(Shc#P):Grb2:Sos:cPP  k4b kd4
	reaction_v95=global_par_k4b*x(170)*x(74)-global_par_kd4*x(171);

% Reaction: id = v96, name = v96 (ErbB4:ErbB2)#P:GAP:Grb2 +  cPP  -> (ErbB4:ErbB2)#P:GAP:Grb2:cPP  k4b kd4
	reaction_v96=global_par_k4b*x(172)*x(74)-global_par_kd4*x(173);

% Reaction: id = v97, name = v97 (ErbB3:ErbB2)#P:GAP:Grb2:Sos +  cPP  -> (ErbB3:ErbB2)#P:GAP:Grb2:Sos:cPP  k4b kd4
	reaction_v97=global_par_k4b*x(174)*x(74)-global_par_kd4*x(175);

% Reaction: id = v98, name = v98 (ErbB4:ErbB2)#P:GAP:Grb2:Sos +  cPP  -> (ErbB4:ErbB2)#P:GAP:Grb2:Sos:cPP  k4b kd4
	reaction_v98=global_par_k4b*x(176)*x(74)-global_par_kd4*x(177);

% Reaction: id = v99, name = v99 (ErbB3:ErbB2)#P:GAP:Grb2:Sos:(Ras:GDP) +  cPP  -> (ErbB3:ErbB2)#P:GAP:Grb2:Sos:(Ras:GDP):cPP  k4b kd4
	reaction_v99=global_par_k4b*x(178)*x(74)-global_par_kd4*x(179);

% Reaction: id = v100, name = v100 (ErbB4:ErbB2)#P:GAP:Grb2:Sos:(Ras:GDP) +  cPP  -> (ErbB4:ErbB2)#P:GAP:Grb2:Sos:(Ras:GDP):cPP  k4b kd4
	reaction_v100=global_par_k4b*x(180)*x(74)-global_par_kd4*x(181);

% Reaction: id = v101, name = v101 (ErbB3:ErbB2)#P:GAP:Grb2:Sos:(Ras:GTP) +  cPP  -> (ErbB3:ErbB2)#P:GAP:Grb2:Sos:(Ras:GTP):cPP  k4b kd4
	reaction_v101=global_par_k4b*x(182)*x(74)-global_par_kd4*x(183);

% Reaction: id = v102, name = v102 (ErbB4:ErbB2)#P:GAP:Grb2:Sos:(Ras:GTP) +  cPP  -> (ErbB4:ErbB2)#P:GAP:Grb2:Sos:(Ras:GTP):cPP  k4b kd4
	reaction_v102=global_par_k4b*x(184)*x(74)-global_par_kd4*x(185);

% Reaction: id = v103, name = v103 cPP +  (ErbB4:ErbB2)#P:GAP:Grb2:Sos:(Ras:GTP)  -> (ErbB4:ErbB2)#P:GAP:Grb2:Sos:(Ras:GTP):cPP  k5b kd5b
	reaction_v103=global_par_k5b*x(186)*x(187)-global_par_kd5b*x(185);

% Reaction: id = v104, name = v104 cPP +  (ErbB3:ErbB2)#P:GAP:Grb2:Sos:(Ras:GTP)  -> (ErbB3:ErbB2)#P:GAP:Grb2:Sos:(Ras:GTP):cPP  k5b kd5b
	reaction_v104=global_par_k5b*x(186)*x(188)-global_par_kd5b*x(183);

% Reaction: id = v105, name = v105 cPP +  (ErbB4:ErbB2)#P:GAP:Grb2:Sos:(Ras:GDP)  -> (ErbB4:ErbB2)#P:GAP:Grb2:Sos:(Ras:GDP):cPP  k5b kd5b
	reaction_v105=global_par_k5b*x(186)*x(189)-global_par_kd5b*x(181);

% Reaction: id = v106, name = v106 cPP +  (ErbB3:ErbB2)#P:GAP:Grb2:Sos:(Ras:GDP)  -> (ErbB3:ErbB2)#P:GAP:Grb2:Sos:(Ras:GDP):cPP  k5b kd5b
	reaction_v106=global_par_k5b*x(186)*x(190)-global_par_kd5b*x(179);

% Reaction: id = v107, name = v107 cPP +  (ErbB4:ErbB2)#P:GAP:Grb2:Sos  -> (ErbB4:ErbB2)#P:GAP:Grb2:Sos:cPP  k5b kd5b
	reaction_v107=global_par_k5b*x(186)*x(191)-global_par_kd5b*x(177);

% Reaction: id = v108, name = v108 cPP +  (ErbB3:ErbB2)#P:GAP:Grb2:Sos  -> (ErbB3:ErbB2)#P:GAP:Grb2:Sos:cPP  k5b kd5b
	reaction_v108=global_par_k5b*x(186)*x(192)-global_par_kd5b*x(175);

% Reaction: id = v109, name = v109 cPP +  (ErbB4:ErbB2)#P:GAP:Grb2  -> (ErbB4:ErbB2)#P:GAP:Grb2:cPP  k5b kd5b
	reaction_v109=global_par_k5b*x(186)*x(193)-global_par_kd5b*x(173);

% Reaction: id = v110, name = v110 cPP +  (ErbB3:ErbB2)#P:GAP:(Shc#P):Grb2:Sos  -> (ErbB3:ErbB2)#P:GAP:(Shc#P):Grb2:Sos:cPP  k5b kd5b
	reaction_v110=global_par_k5b*x(186)*x(194)-global_par_kd5b*x(171);

% Reaction: id = v111, name = v111 cPP +  (ErbB3:ErbB2)#P:GAP:Grb2  -> (ErbB3:ErbB2)#P:GAP:Grb2:cPP  k5b kd5b
	reaction_v111=global_par_k5b*x(186)*x(195)-global_par_kd5b*x(169);

% Reaction: id = v112, name = v112 cPP +  (ErbB4:ErbB2)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GTP)  -> (ErbB4:ErbB2)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GTP):cPP  k5b kd5b
	reaction_v112=global_par_k5b*x(186)*x(196)-global_par_kd5b*x(167);

% Reaction: id = v113, name = v113 cPP +  (ErbB3:ErbB2)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GTP)  -> (ErbB3:ErbB2)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GTP):cPP  k5b kd5b
	reaction_v113=global_par_k5b*x(186)*x(197)-global_par_kd5b*x(165);

% Reaction: id = v114, name = v114 cPP +  (ErbB4:ErbB2)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GDP)  -> (ErbB4:ErbB2)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GDP):cPP  k5b kd5b
	reaction_v114=global_par_k5b*x(186)*x(198)-global_par_kd5b*x(163);

% Reaction: id = v115, name = v115 cPP +  (ErbB3:ErbB2)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GDP)  -> (ErbB3:ErbB2)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GDP):cPP  k5b kd5b
	reaction_v115=global_par_k5b*x(186)*x(199)-global_par_kd5b*x(161);

% Reaction: id = v116, name = v116 cPP +  (ErbB4:ErbB2)#P:GAP:(Shc#P):Grb2:Sos  -> (ErbB4:ErbB2)#P:GAP:(Shc#P):Grb2:Sos:cPP  k5b kd5b
	reaction_v116=global_par_k5b*x(186)*x(200)-global_par_kd5b*x(159);

% Reaction: id = v117, name = v117 cPP +  (ErbB4:ErbB2)#P:GAP:(Shc#P):Grb2  -> (ErbB4:ErbB2)#P:GAP:(Shc#P):Grb2:cPP  k5b kd5b
	reaction_v117=global_par_k5b*x(186)*x(201)-global_par_kd5b*x(157);

% Reaction: id = v118, name = v118 cPP +  (ErbB3:ErbB2)#P:GAP:(Shc#P):Grb2  -> (ErbB3:ErbB2)#P:GAP:(Shc#P):Grb2:cPP  k5b kd5b
	reaction_v118=global_par_k5b*x(186)*x(202)-global_par_kd5b*x(155);

% Reaction: id = v120, name = v120 cPP +  2(ErbB2)#P:GAP:Grb2:Sos:(Ras:GTP)  -> 2(ErbB2)#P:GAP:Grb2:Sos:(Ras:GTP):cPP  k5 kd5b
	reaction_v120=global_par_k5*x(186)*x(203)-global_par_kd5b*x(153);

% Reaction: id = v121, name = v121 cPP +  2(ErbB2)#P:GAP:Grb2:Sos:(Ras:GDP)  -> 2(ErbB2)#P:GAP:Grb2:Sos:(Ras:GDP):cPP  k5 kd5b
	reaction_v121=global_par_k5*x(186)*x(204)-global_par_kd5b*x(151);

% Reaction: id = v122, name = v122 cPP +  2(ErbB2)#P:GAP:Grb2:Sos  -> 2(ErbB2)#P:GAP:Grb2:Sos:cPP  k5 kd5b
	reaction_v122=global_par_k5*x(186)*x(205)-global_par_kd5b*x(149);

% Reaction: id = v123, name = v123 cPP +  2(ErbB2)#P:GAP:Grb2  -> 2(ErbB2)#P:GAP:Grb2:cPP  k5 kd5b
	reaction_v123=global_par_k5*x(186)*x(206)-global_par_kd5b*x(147);

% Reaction: id = v124, name = v124 cPP +  2(ErbB2)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GTP)  -> 2(ErbB2)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GTP):cPP  k5 kd5b
	reaction_v124=global_par_k5*x(186)*x(207)-global_par_kd5b*x(145);

% Reaction: id = v125, name = v125 cPP +  2(ErbB2)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GDP)  -> 2(ErbB2)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GDP):cPP  k5 kd5b
	reaction_v125=global_par_k5*x(186)*x(208)-global_par_kd5b*x(143);

% Reaction: id = v126, name = v126 cPP +  2(ErbB2)#P:GAP:(Shc#P):Grb2:Sos  -> 2(ErbB2)#P:GAP:(Shc#P):Grb2:Sos:cPP  k5 kd5b
	reaction_v126=global_par_k5*x(186)*x(209)-global_par_kd5b*x(141);

% Reaction: id = v127, name = v127 cPP +  2(ErbB2)#P:GAP:(Shc#P):Grb2  -> 2(ErbB2)#P:GAP:(Shc#P):Grb2:cPP  k5 kd5b
	reaction_v127=global_par_k5*x(186)*x(210)-global_par_kd5b*x(139);

% Reaction: id = v128, name = v128 cPP +  (ErbB1:ErbB4)#P:GAP:Grb2:Sos  -> (ErbB1:ErbB4)#P:GAP:Grb2:Sos:cPP  k5 kd5b
	reaction_v128=global_par_k5*x(186)*x(211)-global_par_kd5b*x(137);

% Reaction: id = v129, name = v129 cPP +  (ErbB1:ErbB3)#P:GAP:Grb2:Sos  -> (ErbB1:ErbB3)#P:GAP:Grb2:Sos:cPP  k5 kd5b
	reaction_v129=global_par_k5*x(186)*x(212)-global_par_kd5b*x(135);

% Reaction: id = v130, name = v130 cPP +  (ErbB1:ErbB2)#P:GAP:Grb2:Sos  -> (ErbB1:ErbB2)#P:GAP:Grb2:Sos:cPP  k5 kd5b
	reaction_v130=global_par_k5*x(186)*x(213)-global_par_kd5b*x(133);

% Reaction: id = v133, name = v133 cPP +  (ErbB1:ErbB4)#P:GAP:Grb2:Sos:(Ras:GTP)  -> (ErbB1:ErbB4)#P:GAP:Grb2:Sos:(Ras:GTP):cPP  k5 kd5b
	reaction_v133=global_par_k5*x(186)*x(214)-global_par_kd5b*x(131);

% Reaction: id = v134, name = v134 cPP +  (ErbB1:ErbB3)#P:GAP:Grb2:Sos:(Ras:GTP)  -> (ErbB1:ErbB3)#P:GAP:Grb2:Sos:(Ras:GTP):cPP  k5 kd5b
	reaction_v134=global_par_k5*x(186)*x(215)-global_par_kd5b*x(129);

% Reaction: id = v135, name = v135 cPP +  (ErbB1:ErbB2)#P:GAP:Grb2:Sos:(Ras:GTP)  -> (ErbB1:ErbB2)#P:GAP:Grb2:Sos:(Ras:GTP):cPP  k5 kd5b
	reaction_v135=global_par_k5*x(186)*x(216)-global_par_kd5b*x(127);

% Reaction: id = v136, name = v136 cPP +  (ErbB1:ErbB4)#P:GAP:Grb2:Sos:(Ras:GDP)  -> (ErbB1:ErbB4)#P:GAP:Grb2:Sos:(Ras:GDP):cPP  k5 kd5b
	reaction_v136=global_par_k5*x(186)*x(217)-global_par_kd5b*x(125);

% Reaction: id = v137, name = v137 cPP +  (ErbB1:ErbB3)#P:GAP:Grb2:Sos:(Ras:GDP)  -> (ErbB1:ErbB3)#P:GAP:Grb2:Sos:(Ras:GDP):cPP  k5 kd5b
	reaction_v137=global_par_k5*x(186)*x(218)-global_par_kd5b*x(123);

% Reaction: id = v138, name = v138 cPP +  (ErbB1:ErbB2)#P:GAP:Grb2:Sos:(Ras:GDP)  -> (ErbB1:ErbB2)#P:GAP:Grb2:Sos:(Ras:GDP):cPP  k5 kd5b
	reaction_v138=global_par_k5*x(186)*x(219)-global_par_kd5b*x(121);

% Reaction: id = v139, name = v139 cPP +  (ErbB1:ErbB4)#P:GAP:Grb2  -> (ErbB1:ErbB4)#P:GAP:Grb2:cPP  k5 kd5b
	reaction_v139=global_par_k5*x(186)*x(220)-global_par_kd5b*x(119);

% Reaction: id = v140, name = v140 cPP +  (ErbB1:ErbB3)#P:GAP:Grb2  -> (ErbB1:ErbB3)#P:GAP:Grb2:cPP  k5 kd5b
	reaction_v140=global_par_k5*x(186)*x(221)-global_par_kd5b*x(117);

% Reaction: id = v141, name = v141 cPP +  (ErbB1:ErbB2)#P:GAP:Grb2  -> (ErbB1:ErbB2)#P:GAP:Grb2:cPP  k5 kd5b
	reaction_v141=global_par_k5*x(186)*x(222)-global_par_kd5b*x(115);

% Reaction: id = v142, name = v142 cPP +  (ErbB1:ErbB4)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GTP)  -> (ErbB1:ErbB4)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GTP):cPP  k5 kd5b
	reaction_v142=global_par_k5*x(186)*x(223)-global_par_kd5b*x(113);

% Reaction: id = v143, name = v143 cPP +  (ErbB1:ErbB3)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GTP)  -> (ErbB1:ErbB3)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GTP):cPP  k5 kd5b
	reaction_v143=global_par_k5*x(186)*x(224)-global_par_kd5b*x(111);

% Reaction: id = v144, name = v144 cPP +  (ErbB1:ErbB2)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GTP)  -> (ErbB1:ErbB2)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GTP):cPP  k5 kd5b
	reaction_v144=global_par_k5*x(186)*x(225)-global_par_kd5b*x(109);

% Reaction: id = v145, name = v145 cPP +  (ErbB1:ErbB4)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GDP)  -> (ErbB1:ErbB4)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GDP):cPP  k5 kd5b
	reaction_v145=global_par_k5*x(186)*x(226)-global_par_kd5b*x(107);

% Reaction: id = v146, name = v146 cPP +  (ErbB1:ErbB3)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GDP)  -> (ErbB1:ErbB3)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GDP):cPP  k5 kd5b
	reaction_v146=global_par_k5*x(186)*x(227)-global_par_kd5b*x(105);

% Reaction: id = v147, name = v147 cPP +  (ErbB1:ErbB2)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GDP)  -> (ErbB1:ErbB2)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GDP):cPP  k5 kd5b
	reaction_v147=global_par_k5*x(186)*x(228)-global_par_kd5b*x(103);

% Reaction: id = v148, name = v148 cPP +  (ErbB1:ErbB4)#P:GAP:(Shc#P):Grb2:Sos  -> (ErbB1:ErbB4)#P:GAP:(Shc#P):Grb2:Sos:cPP  k5 kd5b
	reaction_v148=global_par_k5*x(186)*x(229)-global_par_kd5b*x(101);

% Reaction: id = v149, name = v149 cPP +  (ErbB1:ErbB3)#P:GAP:(Shc#P):Grb2:Sos  -> (ErbB1:ErbB3)#P:GAP:(Shc#P):Grb2:Sos:cPP  k5 kd5b
	reaction_v149=global_par_k5*x(186)*x(230)-global_par_kd5b*x(99);

% Reaction: id = v150, name = v150 cPP +  (ErbB1:ErbB2)#P:GAP:(Shc#P):Grb2:Sos  -> (ErbB1:ErbB2)#P:GAP:(Shc#P):Grb2:Sos:cPP  k5 kd5b
	reaction_v150=global_par_k5*x(186)*x(231)-global_par_kd5b*x(97);

% Reaction: id = v151, name = v151 cPP +  (ErbB1:ErbB4)#P:GAP:(Shc#P):Grb2  -> (ErbB1:ErbB4)#P:GAP:(Shc#P):Grb2:cPP  k5 kd5b
	reaction_v151=global_par_k5*x(186)*x(232)-global_par_kd5b*x(95);

% Reaction: id = v152, name = v152 cPP +  (ErbB1:ErbB3)#P:GAP:(Shc#P):Grb2  -> (ErbB1:ErbB3)#P:GAP:(Shc#P):Grb2:cPP  k5 kd5b
	reaction_v152=global_par_k5*x(186)*x(233)-global_par_kd5b*x(93);

% Reaction: id = v153, name = v153 cPP +  (ErbB1:ErbB2)#P:GAP:(Shc#P):Grb2  -> (ErbB1:ErbB2)#P:GAP:(Shc#P):Grb2:cPP  k5 kd5b
	reaction_v153=global_par_k5*x(186)*x(234)-global_par_kd5b*x(91);

% Reaction: id = v155, name = v155 2(EGF:ErbB1)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GTP) +  cPP  -> 2(EGF:ErbB1)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GTP):cPP  k5 kd5
	reaction_v155=global_par_k5*x(235)*x(186)-global_par_kd5*x(89);

% Reaction: id = v156, name = v156 cPP +  2(EGF:ErbB1)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GDP)  -> 2(EGF:ErbB1)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GDP):cPP  k5 kd5
	reaction_v156=global_par_k5*x(186)*x(236)-global_par_kd5*x(87);

% Reaction: id = v157, name = v157 cPP +  2(EGF:ErbB1)#P:GAP:(Shc#P):Grb2:Sos  -> 2(EGF:ErbB1)#P:GAP:(Shc#P):Grb2:Sos:cPP  k5 kd5
	reaction_v157=global_par_k5*x(186)*x(237)-global_par_kd5*x(85);

% Reaction: id = v158, name = v158 cPP +  2(EGF:ErbB1)#P:GAP:(Shc#P):Grb2  -> 2(EGF:ErbB1)#P:GAP:(Shc#P):Grb2:cPP  k5 kd5
	reaction_v158=global_par_k5*x(186)*x(238)-global_par_kd5*x(83);

% Reaction: id = v159, name = v159 cPP +  2(EGF:ErbB1)#P:GAP:Grb2:Sos:(Ras:GTP)  -> 2(EGF:ErbB1)#P:GAP:Grb2:Sos:(Ras:GTP):cPP  k5 kd5
	reaction_v159=global_par_k5*x(186)*x(239)-global_par_kd5*x(81);

% Reaction: id = v160, name = v160 cPP +  2(EGF:ErbB1)#P:GAP:Grb2:Sos:(Ras:GDP)  -> 2(EGF:ErbB1)#P:GAP:Grb2:Sos:(Ras:GDP):cPP  k5 kd5
	reaction_v160=global_par_k5*x(186)*x(240)-global_par_kd5*x(79);

% Reaction: id = v161, name = v161 2(EGF:ErbB1)#P:GAP:Grb2 +  cPP  -> 2(EGF:ErbB1)#P:GAP:Grb2:cPP  k5 kd5
	reaction_v161=global_par_k5*x(241)*x(186)-global_par_kd5*x(75);

% Reaction: id = v162, name = v162 cPP +  2(EGF:ErbB1)#P:GAP:Grb2:Sos  -> 2(EGF:ErbB1)#P:GAP:Grb2:Sos:cPP  k5 kd5
	reaction_v162=global_par_k5*x(186)*x(242)-global_par_kd5*x(77);

% Reaction: id = v163, name = v163 2(EGF:ErbB1)#P:GAP:Grb2:Sos:(Ras:GDP)   -> 2(EGF:ErbB1)#P:GAP:Grb2:Sos:(Ras:GDP)  k6 kd6
	reaction_v163=global_par_k6*x(78)-global_par_kd6*x(240);

% Reaction: id = v164, name = v164 ErbB1:ATP -> ErbB1:ATP   k6 kd6
	reaction_v164=global_par_k6*x(2)-global_par_kd6*x(243);

% Reaction: id = v165, name = v165 2(EGF:ErbB1)#P   -> 2(EGF:ErbB1)#P  k6 kd6
	reaction_v165=global_par_k6*x(244)-global_par_kd6*x(245);

% Reaction: id = v166, name = v166 2(EGF:ErbB1)#P:GAP   -> 2(EGF:ErbB1)#P:GAP  k6 kd6
	reaction_v166=global_par_k6*x(246)-global_par_kd6*x(247);

% Reaction: id = v167, name = v167 2(EGF:ErbB1)#P:GAP:Shc  -> 2(EGF:ErbB1)#P:GAP:Shc  k6 kd6
	reaction_v167=global_par_k6*x(248)-global_par_kd6*x(249);

% Reaction: id = v168, name = v168 2(EGF:ErbB1)#P:GAP:(Shc#P)  -> 2(EGF:ErbB1)#P:GAP:(Shc#P)  k6 kd6
	reaction_v168=global_par_k6*x(250)-global_par_kd6*x(251);

% Reaction: id = v169, name = v169 2(EGF:ErbB1)#P:GAP:Grb2:Sos   -> 2(EGF:ErbB1)#P:GAP:Grb2:Sos  k6 kd6
	reaction_v169=global_par_k6*x(76)-global_par_kd6*x(242);

% Reaction: id = v170, name = v170 2(EGF:ErbB1)#P:GAP:Grb2:Sos:(Ras:GTP)    -> 2(EGF:ErbB1)#P:GAP:Grb2:Sos:(Ras:GTP)  k6 kd6
	reaction_v170=global_par_k6*x(80)-global_par_kd6*x(239);

% Reaction: id = v171, name = v171 2(EGF:ErbB1)#P:GAP:(Shc#P):Grb2    -> 2(EGF:ErbB1)#P:GAP:(Shc#P):Grb2  k6 kd6
	reaction_v171=global_par_k6*x(82)-global_par_kd6*x(238);

% Reaction: id = v172, name = v172 2(EGF:ErbB1)#P:GAP:(Shc#P):Grb2:Sos    -> 2(EGF:ErbB1)#P:GAP:(Shc#P):Grb2:Sos  k6 kd6
	reaction_v172=global_par_k6*x(84)-global_par_kd6*x(237);

% Reaction: id = v173, name = v173 2(EGF:ErbB1)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GDP)  -> 2(EGF:ErbB1)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GDP)  k6 kd6
	reaction_v173=global_par_k6*x(86)-global_par_kd6*x(236);

% Reaction: id = v174, name = v174 2(EGF:ErbB1)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GTP)  -> 2(EGF:ErbB1)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GTP)  k6 kd6
	reaction_v174=global_par_k6*x(88)-global_par_kd6*x(235);

% Reaction: id = v175, name = v175 2(EGF:ErbB1)#P:GAP:Grb2 +    -> 2(EGF:ErbB1)#P:GAP:Grb2  k6 kd6
	reaction_v175=global_par_k6*x(73)-global_par_kd6*x(241);

% Reaction: id = v176, name = v176 ErbB3 -> ErbB3  k6b kd6b
	reaction_v176=global_par_k6b*x(17)-global_par_kd6b*x(23);

% Reaction: id = v177, name = v177 ErbB2  -> ErbB2  k6b kd6b
	reaction_v177=global_par_k6b*x(15)-global_par_kd6b*x(21);

% Reaction: id = v178, name = v178 ErbB4  -> ErbB4  k6b kd6b
	reaction_v178=global_par_k6b*x(19)-global_par_kd6b*x(25);

% Reaction: id = v179, name = v179 (ErbB3:ErbB2)#P:GAP:Shc ->(ErbB3:ErbB2)#P:GAP:Shc  k6b kd6b
	reaction_v179=global_par_k6b*x(252)-global_par_kd6b*x(253);

% Reaction: id = v180, name = v180 (ErbB4:ErbB2)#P:GAP:Shc  -> (ErbB4:ErbB2)#P:GAP:Shc  k6 kd6
	reaction_v180=global_par_k6*x(254)-global_par_kd6*x(255);

% Reaction: id = v181, name = v181 (ErbB3:ErbB2)#P:GAP:(Shc#P)   -> (ErbB3:ErbB2)#P:GAP:(Shc#P)  k6b kd6b
	reaction_v181=global_par_k6b*x(256)-global_par_kd6b*x(257);

% Reaction: id = v182, name = v182 ErbB2:Inh  -> ErbB2:Inh  k6b kd6b
	reaction_v182=global_par_k6b*x(30)-global_par_kd6b*x(258);

% Reaction: id = v183, name = v183 ErbB4:Inh  -> ErbB4:Inh  k6b kd6b
	reaction_v183=global_par_k6b*x(32)-global_par_kd6b*x(259);

% Reaction: id = v184, name = v184 (ErbB4:ErbB2)#P:GAP:(Shc#P)  -> (ErbB4:ErbB2)#P:GAP:(Shc#P)  k6b kd6b
	reaction_v184=global_par_k6b*x(260)-global_par_kd6b*x(261);

% Reaction: id = v185, name = v185 (ErbB1:ErbB2)#P  -> (ErbB1:ErbB2)#P  k7 kd7
	reaction_v185=global_par_k7*x(262)-global_par_kd7*x(263);

% Reaction: id = v186, name = v186 (ErbB1:ErbB3)#P  -> (ErbB1:ErbB3)#P  k7 kd7
	reaction_v186=global_par_k7*x(264)-global_par_kd7*x(265);

% Reaction: id = v187, name = v187 (ErbB1:ErbB4)#P  -> (ErbB1:ErbB4)#P  k7 kd7
	reaction_v187=global_par_k7*x(266)-global_par_kd7*x(267);

% Reaction: id = v188, name = v188 2(ErbB2)#P -> 2(ErbB2)#P  k7 kd7
	reaction_v188=global_par_k7*x(268)-global_par_kd7*x(269);

% Reaction: id = v189, name = v189 (ErbB3:ErbB2)#P  -> (ErbB3:ErbB2)#P  k7 kd7
	reaction_v189=global_par_k7*x(5)-global_par_kd7*x(270);

% Reaction: id = v190, name = v190 (ErbB4:ErbB2)#P  -> (ErbB4:ErbB2)#P  k7 kd7
	reaction_v190=global_par_k7*x(7)-global_par_kd7*x(271);

% Reaction: id = v191, name = v191 2(ErbB2)#P:GAP  -> 2(ErbB2)#P:GAP  k7 kd7
	reaction_v191=global_par_k7*x(272)-global_par_kd7*x(273);

% Reaction: id = v192, name = v192 2(ErbB2)#P:GAP:Shc  -> 2(ErbB2)#P:GAP:Shc  k7 kd7
	reaction_v192=global_par_k7*x(274)-global_par_kd7*x(275);

% Reaction: id = v193, name = v193 2(ErbB2)#P:GAP:(Shc#P)  -> 2(ErbB2)#P:GAP:(Shc#P)  k7 kd7
	reaction_v193=global_par_k7*x(276)-global_par_kd7*x(277);

% Reaction: id = v194, name = v194 (ErbB1:ErbB2)#P +  GAP  -> (ErbB1:ErbB2)#P:GAP  k8b kd8b
	reaction_v194=global_par_k8b*x(263)*x(278)-global_par_kd8b*x(279);

% Reaction: id = v195, name = v195 (ErbB1:ErbB3)#P +  GAP  -> (ErbB1:ErbB3)#P:GAP  k8b kd8b
	reaction_v195=global_par_k8b*x(265)*x(278)-global_par_kd8b*x(280);

% Reaction: id = v196, name = v196 (ErbB1:ErbB4)#P +  GAP  -> (ErbB1:ErbB4)#P:GAP  k8b kd8b
	reaction_v196=global_par_k8b*x(267)*x(278)-global_par_kd8b*x(281);

% Reaction: id = v197, name = v197 2(EGF:ErbB1)#P +  GAP  -> 2(EGF:ErbB1)#P:GAP  k8 kd8
	reaction_v197=global_par_k8*x(245)*x(278)-global_par_kd8*x(247);

% Reaction: id = v198, name = v198 2(EGF:ErbB1)#P +  GAP  -> 2(EGF:ErbB1)#P:GAP  k8 kd8
	reaction_v198=global_par_k8*x(244)*x(278)-global_par_kd8*x(246);

% Reaction: id = v199, name = v199 (ErbB1:ErbB2)#P +  GAP  -> (ErbB1:ErbB2)#P:GAP  k8 kd8
	reaction_v199=global_par_k8*x(262)*x(278)-global_par_kd8*x(282);

% Reaction: id = v200, name = v200 (ErbB1:ErbB3)#P +  GAP  -> (ErbB1:ErbB3)#P:GAP  k8b kd8b
	reaction_v200=global_par_k8b*x(264)*x(278)-global_par_kd8b*x(283);

% Reaction: id = v201, name = v201 (ErbB1:ErbB4)#P +  GAP  -> (ErbB1:ErbB4)#P:GAP  k8b kd8b
	reaction_v201=global_par_k8b*x(266)*x(278)-global_par_kd8b*x(284);

% Reaction: id = v202, name = v202 GAP +  (ErbB3:ErbB2)#P  -> (ErbB3:ErbB2)#P:GAP  k8 kd8
	reaction_v202=global_par_k8*x(278)*x(5)-global_par_kd8*x(285);

% Reaction: id = v203, name = v203 GAP +  (ErbB4:ErbB2)#P  -> (ErbB4:ErbB2)#P:GAP  k8 kd8
	reaction_v203=global_par_k8*x(278)*x(7)-global_par_kd8*x(286);

% Reaction: id = v204, name = v204 GAP +  (ErbB3:ErbB2)#P  -> (ErbB3:ErbB2)#P:GAP  k8 kd8
	reaction_v204=global_par_k8*x(278)*x(270)-global_par_kd8*x(287);

% Reaction: id = v205, name = v205 GAP +  (ErbB4:ErbB2)#P  -> (ErbB4:ErbB2)#P:GAP  k8 kd8
	reaction_v205=global_par_k8*x(278)*x(271)-global_par_kd8*x(288);

% Reaction: id = v206, name = v206 2(ErbB2)#P +  GAP  -> 2(ErbB2)#P:GAP  k8 kd8
	reaction_v206=global_par_k8*x(269)*x(278)-global_par_kd8*x(273);

% Reaction: id = v207, name = v207 2(ErbB2)#P +  GAP  -> 2(ErbB2)#P:GAP  k8 kd8
	reaction_v207=global_par_k8*x(268)*x(278)-global_par_kd8*x(272);

% Reaction: id = v208, name = v208 ErbB1:ATP  +  EGF  -> EGF:ErbB1:ATP  k10b kd10
	reaction_v208=global_par_k10b*x(243)*x(289)-global_par_kd10*x(13);

% Reaction: id = v209, name = v209 ErbB3 +    -> (HRG:ErbB3)  k10b kd10
	reaction_v209=global_par_k10b*x(23)*x(290)-global_par_kd10*x(291);

% Reaction: id = v211, name = v211 cPP +    -> cPP  k15 kd15
	reaction_v211=global_par_k15*x(186)-global_par_kd15*x(74);

% Reaction: id = v212, name = v212 Grb2 +  2(EGF:ErbB1)#P:GAP  -> 2(EGF:ErbB1)#P:GAP:Grb2  k16 kd63
	reaction_v212=global_par_k16*x(292)*x(246)-global_par_kd63*x(73);

% Reaction: id = v213, name = v213 Grb2 +  (Shc#P)   -> (Shc#P):Grb2   k16 kd24
	reaction_v213=global_par_k16*x(292)*x(293)-global_par_kd24*x(294);

% Reaction: id = v214, name = v214 Grb2 +  2(EGF:ErbB1)#P:GAP:(Shc#P)  -> 2(EGF:ErbB1)#P:GAP:(Shc#P):Grb2  k16 kd24
	reaction_v214=global_par_k16*x(292)*x(250)-global_par_kd24*x(82);

% Reaction: id = v215, name = v215 2(EGF:ErbB1)#P:GAP +  Grb2  -> 2(EGF:ErbB1)#P:GAP:Grb2  k16 kd63
	reaction_v215=global_par_k16*x(247)*x(292)-global_par_kd63*x(241);

% Reaction: id = v216, name = v216 Grb2 +  2(EGF:ErbB1)#P:GAP:(Shc#P)  -> 2(EGF:ErbB1)#P:GAP:(Shc#P):Grb2  k16 kd24
	reaction_v216=global_par_k16*x(292)*x(251)-global_par_kd24*x(238);

% Reaction: id = v217, name = v217 Grb2 +  (ErbB1:ErbB2)#P:GAP  -> (ErbB1:ErbB2)#P:GAP:Grb2  k16 kd24
	reaction_v217=global_par_k16*x(292)*x(282)-global_par_kd24*x(114);

% Reaction: id = v218, name = v218 Grb2 +  (ErbB1:ErbB3)#P:GAP  -> (ErbB1:ErbB3)#P:GAP:Grb2  k16 kd24
	reaction_v218=global_par_k16*x(292)*x(283)-global_par_kd24*x(116);

% Reaction: id = v219, name = v219 Grb2 +  (ErbB1:ErbB4)#P:GAP  -> (ErbB1:ErbB4)#P:GAP:Grb2  k16 kd24
	reaction_v219=global_par_k16*x(292)*x(284)-global_par_kd24*x(118);

% Reaction: id = v220, name = v220 (ErbB1:ErbB2)#P:GAP +  Grb2  -> (ErbB1:ErbB2)#P:GAP:Grb2  k16 kd24
	reaction_v220=global_par_k16*x(279)*x(292)-global_par_kd24*x(222);

% Reaction: id = v221, name = v221 (ErbB1:ErbB3)#P:GAP +  Grb2  -> (ErbB1:ErbB3)#P:GAP:Grb2  k16 kd24
	reaction_v221=global_par_k16*x(280)*x(292)-global_par_kd24*x(221);

% Reaction: id = v222, name = v222 (ErbB1:ErbB4)#P:GAP +  Grb2  -> (ErbB1:ErbB4)#P:GAP:Grb2  k16 kd24
	reaction_v222=global_par_k16*x(281)*x(292)-global_par_kd24*x(220);

% Reaction: id = v223, name = v223 Grb2 +  (ErbB1:ErbB2)#P:GAP:(Shc#P)  -> (ErbB1:ErbB2)#P:GAP:(Shc#P):Grb2  k16 kd24
	reaction_v223=global_par_k16*x(292)*x(295)-global_par_kd24*x(90);

% Reaction: id = v224, name = v224 Grb2 +  (ErbB1:ErbB3)#P:GAP:(Shc#P)  -> (ErbB1:ErbB3)#P:GAP:(Shc#P):Grb2  k16 kd24
	reaction_v224=global_par_k16*x(292)*x(296)-global_par_kd24*x(92);

% Reaction: id = v225, name = v225 Grb2 +  (ErbB1:ErbB4)#P:GAP:(Shc#P)  -> (ErbB1:ErbB4)#P:GAP:(Shc#P):Grb2  k16 kd24
	reaction_v225=global_par_k16*x(292)*x(297)-global_par_kd24*x(94);

% Reaction: id = v226, name = v226 Grb2 +  (ErbB1:ErbB2)#P:GAP:(Shc#P)  -> (ErbB1:ErbB2)#P:GAP:(Shc#P):Grb2  k16 kd24
	reaction_v226=global_par_k16*x(292)*x(298)-global_par_kd24*x(234);

% Reaction: id = v227, name = v227 Grb2 +  (ErbB1:ErbB3)#P:GAP:(Shc#P)  -> (ErbB1:ErbB3)#P:GAP:(Shc#P):Grb2  k16 kd24
	reaction_v227=global_par_k16*x(292)*x(299)-global_par_kd24*x(233);

% Reaction: id = v228, name = v228 Grb2 +  (ErbB1:ErbB4)#P:GAP:(Shc#P)  -> (ErbB1:ErbB4)#P:GAP:(Shc#P):Grb2  k16 kd24
	reaction_v228=global_par_k16*x(292)*x(300)-global_par_kd24*x(232);

% Reaction: id = v229, name = v229 Grb2 +  2(ErbB2)#P:GAP:(Shc#P)  -> 2(ErbB2)#P:GAP:(Shc#P):Grb2  k16 kd24
	reaction_v229=global_par_k16*x(292)*x(276)-global_par_kd24*x(138);

% Reaction: id = v230, name = v230 Grb2 +  2(ErbB2)#P:GAP:(Shc#P)  -> 2(ErbB2)#P:GAP:(Shc#P):Grb2  k16 kd24
	reaction_v230=global_par_k16*x(292)*x(277)-global_par_kd24*x(210);

% Reaction: id = v231, name = v231 2(ErbB2)#P:GAP +  Grb2  -> 2(ErbB2)#P:GAP:Grb2  k16 kd63
	reaction_v231=global_par_k16*x(272)*x(292)-global_par_kd63*x(146);

% Reaction: id = v232, name = v232 2(ErbB2)#P:GAP +  Grb2  -> 2(ErbB2)#P:GAP:Grb2  k16 kd63
	reaction_v232=global_par_k16*x(273)*x(292)-global_par_kd63*x(206);

% Reaction: id = v233, name = v233 Grb2 +  (ErbB3:ErbB2)#P:GAP:(Shc#P)  -> (ErbB3:ErbB2)#P:GAP:(Shc#P):Grb2  k16 kd24
	reaction_v233=global_par_k16*x(292)*x(256)-global_par_kd24*x(154);

% Reaction: id = v234, name = v234 Grb2 +  (ErbB3:ErbB2)#P:GAP:(Shc#P)  -> (ErbB3:ErbB2)#P:GAP:(Shc#P):Grb2  k16 kd24
	reaction_v234=global_par_k16*x(292)*x(257)-global_par_kd24*x(202);

% Reaction: id = v235, name = v235 Grb2 +  (ErbB4:ErbB2)#P:GAP:(Shc#P)  -> (ErbB4:ErbB2)#P:GAP:(Shc#P):Grb2  k16 kd24
	reaction_v235=global_par_k16*x(292)*x(260)-global_par_kd24*x(156);

% Reaction: id = v236, name = v236 Grb2 +  (ErbB4:ErbB2)#P:GAP:(Shc#P)  -> (ErbB4:ErbB2)#P:GAP:(Shc#P):Grb2  k16 kd24
	reaction_v236=global_par_k16*x(292)*x(261)-global_par_kd24*x(201);

% Reaction: id = v237, name = v237 (ErbB3:ErbB2)#P:GAP +  Grb2  -> (ErbB3:ErbB2)#P:GAP:Grb2  k16 kd63
	reaction_v237=global_par_k16*x(285)*x(292)-global_par_kd63*x(168);

% Reaction: id = v238, name = v238 (ErbB3:ErbB2)#P:GAP +  Grb2  -> (ErbB3:ErbB2)#P:GAP:Grb2  k16 kd24
	reaction_v238=global_par_k16*x(287)*x(292)-global_par_kd24*x(195);

% Reaction: id = v239, name = v239 (ErbB4:ErbB2)#P:GAP +  Grb2  -> (ErbB4:ErbB2)#P:GAP:Grb2  k16 kd24
	reaction_v239=global_par_k16*x(286)*x(292)-global_par_kd24*x(172);

% Reaction: id = v240, name = v240 (ErbB4:ErbB2)#P:GAP +  Grb2  -> (ErbB4:ErbB2)#P:GAP:Grb2  k16 kd63
	reaction_v240=global_par_k16*x(288)*x(292)-global_par_kd63*x(193);

% Reaction: id = v241, name = v241 Sos +  (ErbB3:ErbB2)#P:GAP:Grb2  -> (ErbB3:ErbB2)#P:GAP:Grb2:Sos  k17 kd17
	reaction_v241=global_par_k17*x(301)*x(168)-global_par_kd17*x(174);

% Reaction: id = v242, name = v242 Sos +  (ErbB3:ErbB2)#P:GAP:Grb2  -> (ErbB3:ErbB2)#P:GAP:Grb2:Sos  k17 kd17
	reaction_v242=global_par_k17*x(301)*x(195)-global_par_kd17*x(192);

% Reaction: id = v243, name = v243 Sos +  (ErbB4:ErbB2)#P:GAP:Grb2  -> (ErbB4:ErbB2)#P:GAP:Grb2:Sos  k17 kd17
	reaction_v243=global_par_k17*x(301)*x(172)-global_par_kd17*x(176);

% Reaction: id = v244, name = v244 Sos +  (ErbB4:ErbB2)#P:GAP:Grb2  -> (ErbB4:ErbB2)#P:GAP:Grb2:Sos  k17 kd17
	reaction_v244=global_par_k17*x(301)*x(193)-global_par_kd17*x(191);

% Reaction: id = v245, name = v245 Sos +  2(ErbB2)#P:GAP:Grb2  -> 2(ErbB2)#P:GAP:Grb2:Sos  k17 kd17
	reaction_v245=global_par_k17*x(301)*x(146)-global_par_kd17*x(148);

% Reaction: id = v246, name = v246 Sos +  2(ErbB2)#P:GAP:Grb2  -> 2(ErbB2)#P:GAP:Grb2:Sos  k17 kd17
	reaction_v246=global_par_k17*x(301)*x(206)-global_par_kd17*x(205);

% Reaction: id = v247, name = v247 Sos +  2(EGF:ErbB1)#P:GAP:Grb2  -> 2(EGF:ErbB1)#P:GAP:Grb2:Sos  k17 kd17
	reaction_v247=global_par_k17*x(301)*x(241)-global_par_kd17*x(242);

% Reaction: id = v248, name = v248 Sos +  2(EGF:ErbB1)#P:GAP:Grb2  -> 2(EGF:ErbB1)#P:GAP:Grb2:Sos  k17 kd17
	reaction_v248=global_par_k17*x(301)*x(73)-global_par_kd17*x(76);

% Reaction: id = v249, name = v249 Sos +  (ErbB1:ErbB2)#P:GAP:Grb2  -> (ErbB1:ErbB2)#P:GAP:Grb2:Sos  k17 kd17
	reaction_v249=global_par_k17*x(301)*x(114)-global_par_kd17*x(132);

% Reaction: id = v250, name = v250 Sos +  (ErbB1:ErbB3)#P:GAP:Grb2  -> (ErbB1:ErbB3)#P:GAP:Grb2:Sos  k17 kd17
	reaction_v250=global_par_k17*x(301)*x(116)-global_par_kd17*x(134);

% Reaction: id = v251, name = v251 Sos +  (ErbB1:ErbB4)#P:GAP:Grb2  -> (ErbB1:ErbB4)#P:GAP:Grb2:Sos  k17 kd17
	reaction_v251=global_par_k17*x(301)*x(118)-global_par_kd17*x(136);

% Reaction: id = v252, name = v252 Sos +  (ErbB1:ErbB2)#P:GAP:Grb2  -> (ErbB1:ErbB2)#P:GAP:Grb2:Sos  k17 kd17
	reaction_v252=global_par_k17*x(301)*x(222)-global_par_kd17*x(213);

% Reaction: id = v253, name = v253 Sos +  (ErbB1:ErbB3)#P:GAP:Grb2  -> (ErbB1:ErbB3)#P:GAP:Grb2:Sos  k17 kd17
	reaction_v253=global_par_k17*x(301)*x(221)-global_par_kd17*x(212);

% Reaction: id = v254, name = v254 Sos +  (ErbB1:ErbB4)#P:GAP:Grb2  -> (ErbB1:ErbB4)#P:GAP:Grb2:Sos  k17 kd17
	reaction_v254=global_par_k17*x(301)*x(220)-global_par_kd17*x(211);

% Reaction: id = v255, name = v255 Ras:GDP +  2(EGF:ErbB1)#P:GAP:Grb2:Sos  -> 2(EGF:ErbB1)#P:GAP:Grb2:Sos:(Ras:GDP)  k18 kd18
	reaction_v255=global_par_k18*x(302)*x(76)-global_par_kd18*x(78);

% Reaction: id = v256, name = v256 Ras:GDP +  2(EGF:ErbB1)#P:GAP:(Shc#P):Grb2:Sos  -> 2(EGF:ErbB1)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GDP)  k18 kd18
	reaction_v256=global_par_k18*x(302)*x(84)-global_par_kd18*x(86);

% Reaction: id = v257, name = v257 Ras:GDP +  2(EGF:ErbB1)#P:GAP:Grb2:Sos  -> 2(EGF:ErbB1)#P:GAP:Grb2:Sos:(Ras:GDP)  k18 kd18
	reaction_v257=global_par_k18*x(302)*x(242)-global_par_kd18*x(240);

% Reaction: id = v258, name = v258 Ras:GDP +  2(EGF:ErbB1)#P:GAP:(Shc#P):Grb2:Sos  -> 2(EGF:ErbB1)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GDP)  k18 kd18
	reaction_v258=global_par_k18*x(302)*x(237)-global_par_kd18*x(236);

% Reaction: id = v259, name = v259 Ras:GDP +  (ErbB1:ErbB2)#P:GAP:(Shc#P):Grb2:Sos  -> (ErbB1:ErbB2)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GDP)  k18 kd18
	reaction_v259=global_par_k18*x(302)*x(96)-global_par_kd18*x(102);

% Reaction: id = v260, name = v260 Ras:GDP +  (ErbB1:ErbB3)#P:GAP:(Shc#P):Grb2:Sos  -> (ErbB1:ErbB3)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GDP)  k18 kd18
	reaction_v260=global_par_k18*x(302)*x(98)-global_par_kd18*x(104);

% Reaction: id = v261, name = v261 Ras:GDP +  (ErbB1:ErbB4)#P:GAP:(Shc#P):Grb2:Sos  -> (ErbB1:ErbB4)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GDP)  k18 kd18
	reaction_v261=global_par_k18*x(302)*x(100)-global_par_kd18*x(106);

% Reaction: id = v262, name = v262 Ras:GDP +  (ErbB1:ErbB2)#P:GAP:(Shc#P):Grb2:Sos  -> (ErbB1:ErbB2)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GDP)  k18 kd18
	reaction_v262=global_par_k18*x(302)*x(231)-global_par_kd18*x(228);

% Reaction: id = v263, name = v263 Ras:GDP +  (ErbB1:ErbB3)#P:GAP:(Shc#P):Grb2:Sos  -> (ErbB1:ErbB3)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GDP)  k18 kd18
	reaction_v263=global_par_k18*x(302)*x(230)-global_par_kd18*x(227);

% Reaction: id = v264, name = v264 Ras:GDP +  (ErbB1:ErbB4)#P:GAP:(Shc#P):Grb2:Sos  -> (ErbB1:ErbB4)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GDP)  k18 kd18
	reaction_v264=global_par_k18*x(302)*x(229)-global_par_kd18*x(226);

% Reaction: id = v265, name = v265 Ras:GDP +  (ErbB1:ErbB2)#P:GAP:Grb2:Sos  -> (ErbB1:ErbB2)#P:GAP:Grb2:Sos:(Ras:GDP)  k18 kd18
	reaction_v265=global_par_k18*x(302)*x(132)-global_par_kd18*x(120);

% Reaction: id = v266, name = v266 Ras:GDP +  (ErbB1:ErbB3)#P:GAP:Grb2:Sos  -> (ErbB1:ErbB3)#P:GAP:Grb2:Sos:(Ras:GDP)  k18 kd18
	reaction_v266=global_par_k18*x(302)*x(134)-global_par_kd18*x(122);

% Reaction: id = v267, name = v267 Ras:GDP +  (ErbB1:ErbB4)#P:GAP:Grb2:Sos  -> (ErbB1:ErbB4)#P:GAP:Grb2:Sos:(Ras:GDP)  k18 kd18
	reaction_v267=global_par_k18*x(302)*x(136)-global_par_kd18*x(124);

% Reaction: id = v268, name = v268 Ras:GDP +  (ErbB1:ErbB2)#P:GAP:Grb2:Sos  -> (ErbB1:ErbB2)#P:GAP:Grb2:Sos:(Ras:GDP)  k18 kd18
	reaction_v268=global_par_k18*x(302)*x(213)-global_par_kd18*x(219);

% Reaction: id = v269, name = v269 Ras:GDP +  (ErbB1:ErbB3)#P:GAP:Grb2:Sos  -> (ErbB1:ErbB3)#P:GAP:Grb2:Sos:(Ras:GDP)  k18 kd18
	reaction_v269=global_par_k18*x(302)*x(212)-global_par_kd18*x(218);

% Reaction: id = v270, name = v270 Ras:GDP +  (ErbB1:ErbB4)#P:GAP:Grb2:Sos  -> (ErbB1:ErbB4)#P:GAP:Grb2:Sos:(Ras:GDP)  k18 kd18
	reaction_v270=global_par_k18*x(302)*x(211)-global_par_kd18*x(217);

% Reaction: id = v271, name = v271 Ras:GDP +  2(ErbB2)#P:GAP:(Shc#P):Grb2:Sos  -> 2(ErbB2)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GDP)  k18 kd18
	reaction_v271=global_par_k18*x(302)*x(140)-global_par_kd18*x(142);

% Reaction: id = v272, name = v272 Ras:GDP +  2(ErbB2)#P:GAP:(Shc#P):Grb2:Sos  -> 2(ErbB2)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GDP)  k18 kd18
	reaction_v272=global_par_k18*x(302)*x(209)-global_par_kd18*x(208);

% Reaction: id = v273, name = v273 Ras:GDP +  2(ErbB2)#P:GAP:Grb2:Sos  -> 2(ErbB2)#P:GAP:Grb2:Sos:(Ras:GDP)  k18 kd18
	reaction_v273=global_par_k18*x(302)*x(148)-global_par_kd18*x(150);

% Reaction: id = v274, name = v274 Ras:GDP +  2(ErbB2)#P:GAP:Grb2:Sos  -> 2(ErbB2)#P:GAP:Grb2:Sos:(Ras:GDP)  k18 kd18
	reaction_v274=global_par_k18*x(302)*x(205)-global_par_kd18*x(204);

% Reaction: id = v275, name = v275 Ras:GDP +  (ErbB4:ErbB2)#P:GAP:(Shc#P):Grb2:Sos  -> (ErbB4:ErbB2)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GDP)  k18 kd18
	reaction_v275=global_par_k18*x(302)*x(158)-global_par_kd18*x(162);

% Reaction: id = v276, name = v276 Ras:GDP +  (ErbB4:ErbB2)#P:GAP:(Shc#P):Grb2:Sos  -> (ErbB4:ErbB2)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GDP)  k18 kd18
	reaction_v276=global_par_k18*x(302)*x(200)-global_par_kd18*x(198);

% Reaction: id = v277, name = v277 Ras:GDP +  (ErbB3:ErbB2)#P:GAP:(Shc#P):Grb2:Sos  -> (ErbB3:ErbB2)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GDP)  k18 kd18
	reaction_v277=global_par_k18*x(302)*x(170)-global_par_kd18*x(160);

% Reaction: id = v278, name = v278 Ras:GDP +  (ErbB3:ErbB2)#P:GAP:(Shc#P):Grb2:Sos  -> (ErbB3:ErbB2)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GDP)  k18 kd18
	reaction_v278=global_par_k18*x(302)*x(194)-global_par_kd18*x(199);

% Reaction: id = v279, name = v279 Ras:GDP +  (ErbB4:ErbB2)#P:GAP:Grb2:Sos  -> (ErbB4:ErbB2)#P:GAP:Grb2:Sos:(Ras:GDP)  k18 kd18
	reaction_v279=global_par_k18*x(302)*x(176)-global_par_kd18*x(180);

% Reaction: id = v280, name = v280 Ras:GDP +  (ErbB4:ErbB2)#P:GAP:Grb2:Sos  -> (ErbB4:ErbB2)#P:GAP:Grb2:Sos:(Ras:GDP)  k18 kd18
	reaction_v280=global_par_k18*x(302)*x(191)-global_par_kd18*x(189);

% Reaction: id = v281, name = v281 Ras:GDP +  (ErbB3:ErbB2)#P:GAP:Grb2:Sos  -> (ErbB3:ErbB2)#P:GAP:Grb2:Sos:(Ras:GDP)  k18 kd18
	reaction_v281=global_par_k18*x(302)*x(174)-global_par_kd18*x(178);

% Reaction: id = v282, name = v282 Ras:GDP +  (ErbB3:ErbB2)#P:GAP:Grb2:Sos  -> (ErbB3:ErbB2)#P:GAP:Grb2:Sos:(Ras:GDP)  k18 kd18
	reaction_v282=global_par_k18*x(302)*x(192)-global_par_kd18*x(190);

% Reaction: id = v283, name = v283 Ras:GTP +  (ErbB3:ErbB2)#P:GAP:Grb2:Sos  -> (ErbB3:ErbB2)#P:GAP:Grb2:Sos:(Ras:GDP)  k19 kd19
	reaction_v283=global_par_k19*x(303)*x(174)-global_par_kd19*x(178);

% Reaction: id = v284, name = v284 (Ras:GTP)_i +  (ErbB3:ErbB2)#P:GAP:Grb2:Sos  -> (ErbB3:ErbB2)#P:GAP:Grb2:Sos:(Ras:GDP)  k19 kd19
	reaction_v284=global_par_k19*x(304)*x(192)-global_par_kd19*x(190);

% Reaction: id = v285, name = v285 Ras:GTP +  (ErbB4:ErbB2)#P:GAP:Grb2:Sos  -> (ErbB4:ErbB2)#P:GAP:Grb2:Sos:(Ras:GDP)  k19 kd19
	reaction_v285=global_par_k19*x(303)*x(176)-global_par_kd19*x(180);

% Reaction: id = v286, name = v286 (Ras:GTP)_i +  (ErbB4:ErbB2)#P:GAP:Grb2:Sos  -> (ErbB4:ErbB2)#P:GAP:Grb2:Sos:(Ras:GDP)  k19 kd19
	reaction_v286=global_par_k19*x(304)*x(191)-global_par_kd19*x(189);

% Reaction: id = v287, name = v287 Ras:GTP +  2(ErbB2)#P:GAP:Grb2:Sos  -> 2(ErbB2)#P:GAP:Grb2:Sos:(Ras:GDP)  k19 kd19
	reaction_v287=global_par_k19*x(303)*x(148)-global_par_kd19*x(150);

% Reaction: id = v288, name = v288 (Ras:GTP)_i +  2(ErbB2)#P:GAP:Grb2:Sos  -> 2(ErbB2)#P:GAP:Grb2:Sos:(Ras:GDP)  k19 kd19
	reaction_v288=global_par_k19*x(304)*x(205)-global_par_kd19*x(204);

% Reaction: id = v289, name = v289 Ras:GTP +  2(ErbB2)#P:GAP:(Shc#P):Grb2:Sos  -> 2(ErbB2)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GDP)  k19 kd19
	reaction_v289=global_par_k19*x(303)*x(140)-global_par_kd19*x(142);

% Reaction: id = v290, name = v290 (Ras:GTP)_i +  2(ErbB2)#P:GAP:(Shc#P):Grb2:Sos  -> 2(ErbB2)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GDP)  k19 kd19
	reaction_v290=global_par_k19*x(304)*x(209)-global_par_kd19*x(208);

% Reaction: id = v291, name = v291 2(EGF:ErbB1)#P:GAP:(Shc#P):Grb2:Sos +  (Ras:GTP)_i  -> 2(EGF:ErbB1)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GDP)  k19 kd19
	reaction_v291=global_par_k19*x(237)*x(304)-global_par_kd19*x(236);

% Reaction: id = v292, name = v292 (Ras:GTP)_i +  2(EGF:ErbB1)#P:GAP:Grb2:Sos  -> 2(EGF:ErbB1)#P:GAP:Grb2:Sos:(Ras:GDP)  k19 kd19
	reaction_v292=global_par_k19*x(304)*x(242)-global_par_kd19*x(240);

% Reaction: id = v293, name = v293 2(EGF:ErbB1)#P:GAP:(Shc#P):Grb2:Sos +  Ras:GTP  -> 2(EGF:ErbB1)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GDP)  k19 kd19
	reaction_v293=global_par_k19*x(84)*x(303)-global_par_kd19*x(86);

% Reaction: id = v294, name = v294 Ras:GTP +  2(EGF:ErbB1)#P:GAP:Grb2:Sos  -> 2(EGF:ErbB1)#P:GAP:Grb2:Sos:(Ras:GDP)  k19 kd19
	reaction_v294=global_par_k19*x(303)*x(76)-global_par_kd19*x(78);

% Reaction: id = v295, name = v295 (ErbB1:ErbB2)#P:GAP:(Shc#P):Grb2:Sos +  Ras:GTP  -> (ErbB1:ErbB2)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GDP)  k19 kd19
	reaction_v295=global_par_k19*x(96)*x(303)-global_par_kd19*x(102);

% Reaction: id = v296, name = v296 (ErbB1:ErbB3)#P:GAP:(Shc#P):Grb2:Sos +  Ras:GTP  -> (ErbB1:ErbB3)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GDP)  k19 kd19
	reaction_v296=global_par_k19*x(98)*x(303)-global_par_kd19*x(104);

% Reaction: id = v297, name = v297 (ErbB1:ErbB4)#P:GAP:(Shc#P):Grb2:Sos +  Ras:GTP  -> (ErbB1:ErbB4)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GDP)  k19 kd19
	reaction_v297=global_par_k19*x(100)*x(303)-global_par_kd19*x(106);

% Reaction: id = v298, name = v298 (ErbB1:ErbB2)#P:GAP:(Shc#P):Grb2:Sos +  (Ras:GTP)_i  -> (ErbB1:ErbB2)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GDP)  k19 kd19
	reaction_v298=global_par_k19*x(231)*x(304)-global_par_kd19*x(228);

% Reaction: id = v299, name = v299 (ErbB1:ErbB3)#P:GAP:(Shc#P):Grb2:Sos +  (Ras:GTP)_i  -> (ErbB1:ErbB3)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GDP)  k19 kd19
	reaction_v299=global_par_k19*x(230)*x(304)-global_par_kd19*x(227);

% Reaction: id = v300, name = v300 (ErbB1:ErbB4)#P:GAP:(Shc#P):Grb2:Sos +  (Ras:GTP)_i  -> (ErbB1:ErbB4)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GDP)  k19 kd19
	reaction_v300=global_par_k19*x(229)*x(304)-global_par_kd19*x(226);

% Reaction: id = v301, name = v301 Ras:GTP +  (ErbB1:ErbB2)#P:GAP:Grb2:Sos  -> (ErbB1:ErbB2)#P:GAP:Grb2:Sos:(Ras:GDP)  k19 kd19
	reaction_v301=global_par_k19*x(303)*x(132)-global_par_kd19*x(120);

% Reaction: id = v302, name = v302 Ras:GTP +  (ErbB1:ErbB3)#P:GAP:Grb2:Sos  -> (ErbB1:ErbB3)#P:GAP:Grb2:Sos:(Ras:GDP)  k19 kd19
	reaction_v302=global_par_k19*x(303)*x(134)-global_par_kd19*x(122);

% Reaction: id = v303, name = v303 Ras:GTP +  (ErbB1:ErbB4)#P:GAP:Grb2:Sos  -> (ErbB1:ErbB4)#P:GAP:Grb2:Sos:(Ras:GDP)  k19 kd19
	reaction_v303=global_par_k19*x(303)*x(136)-global_par_kd19*x(124);

% Reaction: id = v304, name = v304 (ErbB1:ErbB2)#P:GAP:Grb2:Sos +  (Ras:GTP)_i  -> (ErbB1:ErbB2)#P:GAP:Grb2:Sos:(Ras:GDP)  k19 kd19
	reaction_v304=global_par_k19*x(213)*x(304)-global_par_kd19*x(219);

% Reaction: id = v305, name = v305 (ErbB1:ErbB3)#P:GAP:Grb2:Sos +  (Ras:GTP)_i  -> (ErbB1:ErbB3)#P:GAP:Grb2:Sos:(Ras:GDP)  k19 kd19
	reaction_v305=global_par_k19*x(212)*x(304)-global_par_kd19*x(218);

% Reaction: id = v306, name = v306 (ErbB1:ErbB4)#P:GAP:Grb2:Sos +  (Ras:GTP)_i  -> (ErbB1:ErbB4)#P:GAP:Grb2:Sos:(Ras:GDP)  k19 kd19
	reaction_v306=global_par_k19*x(211)*x(304)-global_par_kd19*x(217);

% Reaction: id = v307, name = v307 Ras:GTP +  (ErbB3:ErbB2)#P:GAP:(Shc#P):Grb2:Sos  -> (ErbB3:ErbB2)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GDP)  k19 kd19
	reaction_v307=global_par_k19*x(303)*x(170)-global_par_kd19*x(160);

% Reaction: id = v308, name = v308 (Ras:GTP)_i +  (ErbB3:ErbB2)#P:GAP:(Shc#P):Grb2:Sos  -> (ErbB3:ErbB2)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GDP)  k19 kd19
	reaction_v308=global_par_k19*x(304)*x(194)-global_par_kd19*x(199);

% Reaction: id = v309, name = v309 Ras:GTP +  (ErbB4:ErbB2)#P:GAP:(Shc#P):Grb2:Sos  -> (ErbB4:ErbB2)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GDP)  k19 kd19
	reaction_v309=global_par_k19*x(303)*x(158)-global_par_kd19*x(162);

% Reaction: id = v310, name = v310 (Ras:GTP)_i +  (ErbB4:ErbB2)#P:GAP:(Shc#P):Grb2:Sos  -> (ErbB4:ErbB2)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GDP)  k19 kd19
	reaction_v310=global_par_k19*x(304)*x(200)-global_par_kd19*x(198);

% Reaction: id = v311, name = v311 Ras_activated:GTP +  (ErbB4:ErbB2)#P:GAP:(Shc#P):Grb2:Sos  -> (ErbB4:ErbB2)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GTP)  k20 kd20
	reaction_v311=global_par_k20*x(305)*x(158)-global_par_kd20*x(166);

% Reaction: id = v312, name = v312 (Ras_activated:GTP)_i +  (ErbB4:ErbB2)#P:GAP:(Shc#P):Grb2:Sos  -> (ErbB4:ErbB2)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GTP)  k20 kd20
	reaction_v312=global_par_k20*x(306)*x(200)-global_par_kd20*x(196);

% Reaction: id = v313, name = v313 Ras_activated:GTP +  (ErbB3:ErbB2)#P:GAP:(Shc#P):Grb2:Sos  -> (ErbB3:ErbB2)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GTP)  k20 kd20
	reaction_v313=global_par_k20*x(305)*x(170)-global_par_kd20*x(164);

% Reaction: id = v314, name = v314 (Ras_activated:GTP)_i +  (ErbB3:ErbB2)#P:GAP:(Shc#P):Grb2:Sos  -> (ErbB3:ErbB2)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GTP)  k20 kd20
	reaction_v314=global_par_k20*x(306)*x(194)-global_par_kd20*x(197);

% Reaction: id = v315, name = v315 (ErbB1:ErbB2)#P:GAP:Grb2:Sos +  Ras_activated:GTP  -> (ErbB1:ErbB2)#P:GAP:Grb2:Sos:(Ras:GTP)  k20 kd20
	reaction_v315=global_par_k20*x(132)*x(305)-global_par_kd20*x(126);

% Reaction: id = v316, name = v316 (ErbB1:ErbB3)#P:GAP:Grb2:Sos +  Ras_activated:GTP  -> (ErbB1:ErbB3)#P:GAP:Grb2:Sos:(Ras:GTP)  k20 kd20
	reaction_v316=global_par_k20*x(134)*x(305)-global_par_kd20*x(128);

% Reaction: id = v317, name = v317 (ErbB1:ErbB4)#P:GAP:Grb2:Sos +  Ras_activated:GTP  -> (ErbB1:ErbB4)#P:GAP:Grb2:Sos:(Ras:GTP)  k20 kd20
	reaction_v317=global_par_k20*x(136)*x(305)-global_par_kd20*x(130);

% Reaction: id = v318, name = v318 (Ras_activated:GTP)_i +  (ErbB1:ErbB2)#P:GAP:Grb2:Sos  -> (ErbB1:ErbB2)#P:GAP:Grb2:Sos:(Ras:GTP)  k20 kd20
	reaction_v318=global_par_k20*x(306)*x(213)-global_par_kd20*x(216);

% Reaction: id = v319, name = v319 (Ras_activated:GTP)_i +  (ErbB1:ErbB3)#P:GAP:Grb2:Sos  -> (ErbB1:ErbB3)#P:GAP:Grb2:Sos:(Ras:GTP)  k20 kd20
	reaction_v319=global_par_k20*x(306)*x(212)-global_par_kd20*x(215);

% Reaction: id = v320, name = v320 (Ras_activated:GTP)_i +  (ErbB1:ErbB4)#P:GAP:Grb2:Sos  -> (ErbB1:ErbB4)#P:GAP:Grb2:Sos:(Ras:GTP)  k20 kd20
	reaction_v320=global_par_k20*x(306)*x(211)-global_par_kd20*x(214);

% Reaction: id = v321, name = v321 2(EGF:ErbB1)#P:GAP:Grb2:Sos +  Ras_activated:GTP  -> 2(EGF:ErbB1)#P:GAP:Grb2:Sos:(Ras:GTP)  k20 kd20
	reaction_v321=global_par_k20*x(76)*x(305)-global_par_kd20*x(80);

% Reaction: id = v322, name = v322 2(EGF:ErbB1)#P:GAP:(Shc#P):Grb2:Sos +  Ras_activated:GTP  -> 2(EGF:ErbB1)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GTP)  k20 kd20
	reaction_v322=global_par_k20*x(84)*x(305)-global_par_kd20*x(88);

% Reaction: id = v323, name = v323 (Ras_activated:GTP)_i +  2(EGF:ErbB1)#P:GAP:Grb2:Sos  -> 2(EGF:ErbB1)#P:GAP:Grb2:Sos:(Ras:GTP)  k20 kd20
	reaction_v323=global_par_k20*x(306)*x(242)-global_par_kd20*x(239);

% Reaction: id = v324, name = v324 (Ras_activated:GTP)_i +  2(EGF:ErbB1)#P:GAP:(Shc#P):Grb2:Sos  -> 2(EGF:ErbB1)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GTP)  k20 kd20
	reaction_v324=global_par_k20*x(306)*x(237)-global_par_kd20*x(235);

% Reaction: id = v325, name = v325 Ras_activated:GTP +  (ErbB1:ErbB2)#P:GAP:(Shc#P):Grb2:Sos  -> (ErbB1:ErbB2)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GTP)  k20 kd20
	reaction_v325=global_par_k20*x(305)*x(96)-global_par_kd20*x(108);

% Reaction: id = v326, name = v326 Ras_activated:GTP +  (ErbB1:ErbB3)#P:GAP:(Shc#P):Grb2:Sos  -> (ErbB1:ErbB3)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GTP)  k20 kd20
	reaction_v326=global_par_k20*x(305)*x(98)-global_par_kd20*x(110);

% Reaction: id = v327, name = v327 Ras_activated:GTP +  (ErbB1:ErbB4)#P:GAP:(Shc#P):Grb2:Sos  -> (ErbB1:ErbB4)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GTP)  k20 kd20
	reaction_v327=global_par_k20*x(305)*x(100)-global_par_kd20*x(112);

% Reaction: id = v328, name = v328 (Ras_activated:GTP)_i +  (ErbB1:ErbB2)#P:GAP:(Shc#P):Grb2:Sos  -> (ErbB1:ErbB2)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GTP)  k20 kd20
	reaction_v328=global_par_k20*x(306)*x(231)-global_par_kd20*x(225);

% Reaction: id = v329, name = v329 (Ras_activated:GTP)_i +  (ErbB1:ErbB3)#P:GAP:(Shc#P):Grb2:Sos  -> (ErbB1:ErbB3)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GTP)  k20 kd20
	reaction_v329=global_par_k20*x(306)*x(230)-global_par_kd20*x(224);

% Reaction: id = v330, name = v330 (Ras_activated:GTP)_i +  (ErbB1:ErbB4)#P:GAP:(Shc#P):Grb2:Sos  -> (ErbB1:ErbB4)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GTP)  k20 kd20
	reaction_v330=global_par_k20*x(306)*x(229)-global_par_kd20*x(223);

% Reaction: id = v331, name = v331 Ras_activated:GTP +  2(ErbB2)#P:GAP:(Shc#P):Grb2:Sos  -> 2(ErbB2)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GTP)  k20 kd20
	reaction_v331=global_par_k20*x(305)*x(140)-global_par_kd20*x(144);

% Reaction: id = v332, name = v332 (Ras_activated:GTP)_i +  2(ErbB2)#P:GAP:(Shc#P):Grb2:Sos  -> 2(ErbB2)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GTP)  k20 kd20
	reaction_v332=global_par_k20*x(306)*x(209)-global_par_kd20*x(207);

% Reaction: id = v333, name = v333 2(ErbB2)#P:GAP:Grb2:Sos +  Ras_activated:GTP  -> 2(ErbB2)#P:GAP:Grb2:Sos:(Ras:GTP)  k20 kd20
	reaction_v333=global_par_k20*x(148)*x(305)-global_par_kd20*x(152);

% Reaction: id = v334, name = v334 2(ErbB2)#P:GAP:Grb2:Sos +  (Ras_activated:GTP)_i  -> 2(ErbB2)#P:GAP:Grb2:Sos:(Ras:GTP)  k20 kd20
	reaction_v334=global_par_k20*x(205)*x(306)-global_par_kd20*x(203);

% Reaction: id = v335, name = v335 (ErbB4:ErbB2)#P:GAP:Grb2:Sos +  Ras_activated:GTP  -> (ErbB4:ErbB2)#P:GAP:Grb2:Sos:(Ras:GTP)  k20 kd20
	reaction_v335=global_par_k20*x(176)*x(305)-global_par_kd20*x(184);

% Reaction: id = v336, name = v336 (ErbB4:ErbB2)#P:GAP:Grb2:Sos +  (Ras_activated:GTP)_i  -> (ErbB4:ErbB2)#P:GAP:Grb2:Sos:(Ras:GTP)  k20 kd20
	reaction_v336=global_par_k20*x(191)*x(306)-global_par_kd20*x(187);

% Reaction: id = v337, name = v337 (ErbB3:ErbB2)#P:GAP:Grb2:Sos +  Ras_activated:GTP  -> (ErbB3:ErbB2)#P:GAP:Grb2:Sos:(Ras:GTP)  k20 kd20
	reaction_v337=global_par_k20*x(174)*x(305)-global_par_kd20*x(182);

% Reaction: id = v338, name = v338 (ErbB3:ErbB2)#P:GAP:Grb2:Sos +  (Ras_activated:GTP)_i  -> (ErbB3:ErbB2)#P:GAP:Grb2:Sos:(Ras:GTP)  k20 kd20
	reaction_v338=global_par_k20*x(192)*x(306)-global_par_kd20*x(188);

% Reaction: id = v339, name = v339 2(ErbB2)#P:GAP:Grb2:Sos +  Ras:GDP  -> 2(ErbB2)#P:GAP:Grb2:Sos:(Ras:GTP)  k21 kd21
	reaction_v339=global_par_k21*x(148)*x(302)-global_par_kd21*x(152);

% Reaction: id = v340, name = v340 2(ErbB2)#P:GAP:Grb2:Sos +  Ras:GDP  -> 2(ErbB2)#P:GAP:Grb2:Sos:(Ras:GTP)  k21 kd21
	reaction_v340=global_par_k21*x(205)*x(302)-global_par_kd21*x(203);

% Reaction: id = v341, name = v341 2(ErbB2)#P:GAP:(Shc#P):Grb2:Sos +  Ras:GDP  -> 2(ErbB2)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GTP)  k21 kd21
	reaction_v341=global_par_k21*x(140)*x(302)-global_par_kd21*x(144);

% Reaction: id = v342, name = v342 2(ErbB2)#P:GAP:(Shc#P):Grb2:Sos +  Ras:GDP  -> 2(ErbB2)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GTP)  k21 kd21
	reaction_v342=global_par_k21*x(209)*x(302)-global_par_kd21*x(207);

% Reaction: id = v343, name = v343 2(EGF:ErbB1)#P:GAP:(Shc#P):Grb2:Sos +  Ras:GDP  -> 2(EGF:ErbB1)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GTP)  k21 kd21
	reaction_v343=global_par_k21*x(237)*x(302)-global_par_kd21*x(235);

% Reaction: id = v344, name = v344 2(EGF:ErbB1)#P:GAP:Grb2:Sos +  Ras:GDP  -> 2(EGF:ErbB1)#P:GAP:Grb2:Sos:(Ras:GTP)  k21 kd21
	reaction_v344=global_par_k21*x(242)*x(302)-global_par_kd21*x(239);

% Reaction: id = v345, name = v345 2(EGF:ErbB1)#P:GAP:(Shc#P):Grb2:Sos +  Ras:GDP  -> 2(EGF:ErbB1)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GTP)  k21 kd21
	reaction_v345=global_par_k21*x(84)*x(302)-global_par_kd21*x(88);

% Reaction: id = v346, name = v346 2(EGF:ErbB1)#P:GAP:Grb2:Sos +  Ras:GDP  -> 2(EGF:ErbB1)#P:GAP:Grb2:Sos:(Ras:GTP)  k21 kd21
	reaction_v346=global_par_k21*x(76)*x(302)-global_par_kd21*x(80);

% Reaction: id = v347, name = v347 (ErbB1:ErbB2)#P:GAP:(Shc#P):Grb2:Sos +  Ras:GDP  -> (ErbB1:ErbB2)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GTP)  k21 kd21
	reaction_v347=global_par_k21*x(96)*x(302)-global_par_kd21*x(108);

% Reaction: id = v348, name = v348 (ErbB1:ErbB3)#P:GAP:(Shc#P):Grb2:Sos +  Ras:GDP  -> (ErbB1:ErbB3)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GTP)  k21 kd21
	reaction_v348=global_par_k21*x(98)*x(302)-global_par_kd21*x(110);

% Reaction: id = v349, name = v349 (ErbB1:ErbB4)#P:GAP:(Shc#P):Grb2:Sos +  Ras:GDP  -> (ErbB1:ErbB4)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GTP)  k21 kd21
	reaction_v349=global_par_k21*x(100)*x(302)-global_par_kd21*x(112);

% Reaction: id = v350, name = v350 (ErbB1:ErbB2)#P:GAP:(Shc#P):Grb2:Sos +  Ras:GDP  -> (ErbB1:ErbB2)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GTP)  k21 kd21
	reaction_v350=global_par_k21*x(231)*x(302)-global_par_kd21*x(225);

% Reaction: id = v351, name = v351 (ErbB1:ErbB3)#P:GAP:(Shc#P):Grb2:Sos +  Ras:GDP  -> (ErbB1:ErbB3)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GTP)  k21 kd21
	reaction_v351=global_par_k21*x(230)*x(302)-global_par_kd21*x(224);

% Reaction: id = v352, name = v352 (ErbB1:ErbB4)#P:GAP:(Shc#P):Grb2:Sos +  Ras:GDP  -> (ErbB1:ErbB4)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GTP)  k21 kd21
	reaction_v352=global_par_k21*x(229)*x(302)-global_par_kd21*x(223);

% Reaction: id = v353, name = v353 (ErbB1:ErbB2)#P:GAP:Grb2:Sos +  Ras:GDP  -> (ErbB1:ErbB2)#P:GAP:Grb2:Sos:(Ras:GTP)  k21 kd21
	reaction_v353=global_par_k21*x(132)*x(302)-global_par_kd21*x(126);

% Reaction: id = v354, name = v354 (ErbB1:ErbB3)#P:GAP:Grb2:Sos +  Ras:GDP  -> (ErbB1:ErbB3)#P:GAP:Grb2:Sos:(Ras:GTP)  k21 kd21
	reaction_v354=global_par_k21*x(134)*x(302)-global_par_kd21*x(128);

% Reaction: id = v355, name = v355 (ErbB1:ErbB4)#P:GAP:Grb2:Sos +  Ras:GDP  -> (ErbB1:ErbB4)#P:GAP:Grb2:Sos:(Ras:GTP)  k21 kd21
	reaction_v355=global_par_k21*x(136)*x(302)-global_par_kd21*x(130);

% Reaction: id = v356, name = v356 (ErbB1:ErbB2)#P:GAP:Grb2:Sos +  Ras:GDP  -> (ErbB1:ErbB2)#P:GAP:Grb2:Sos:(Ras:GTP)  k21 kd21
	reaction_v356=global_par_k21*x(213)*x(302)-global_par_kd21*x(216);

% Reaction: id = v357, name = v357 (ErbB1:ErbB3)#P:GAP:Grb2:Sos +  Ras:GDP  -> (ErbB1:ErbB3)#P:GAP:Grb2:Sos:(Ras:GTP)  k21 kd21
	reaction_v357=global_par_k21*x(212)*x(302)-global_par_kd21*x(215);

% Reaction: id = v358, name = v358 (ErbB1:ErbB4)#P:GAP:Grb2:Sos +  Ras:GDP  -> (ErbB1:ErbB4)#P:GAP:Grb2:Sos:(Ras:GTP)  k21 kd21
	reaction_v358=global_par_k21*x(211)*x(302)-global_par_kd21*x(214);

% Reaction: id = v359, name = v359 (ErbB3:ErbB2)#P:GAP:(Shc#P):Grb2:Sos +  Ras:GDP  -> (ErbB3:ErbB2)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GTP)  k21 kd21
	reaction_v359=global_par_k21*x(170)*x(302)-global_par_kd21*x(164);

% Reaction: id = v360, name = v360 (ErbB3:ErbB2)#P:GAP:(Shc#P):Grb2:Sos +  Ras:GDP  -> (ErbB3:ErbB2)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GTP)  k21 kd21
	reaction_v360=global_par_k21*x(194)*x(302)-global_par_kd21*x(197);

% Reaction: id = v361, name = v361 (ErbB4:ErbB2)#P:GAP:(Shc#P):Grb2:Sos +  Ras:GDP  -> (ErbB4:ErbB2)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GTP)  k21 kd21
	reaction_v361=global_par_k21*x(158)*x(302)-global_par_kd21*x(166);

% Reaction: id = v362, name = v362 (ErbB4:ErbB2)#P:GAP:(Shc#P):Grb2:Sos +  Ras:GDP  -> (ErbB4:ErbB2)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GTP)  k21 kd21
	reaction_v362=global_par_k21*x(200)*x(302)-global_par_kd21*x(196);

% Reaction: id = v363, name = v363 (ErbB3:ErbB2)#P:GAP:Grb2:Sos +  Ras:GDP  -> (ErbB3:ErbB2)#P:GAP:Grb2:Sos:(Ras:GTP)  k21 kd21
	reaction_v363=global_par_k21*x(174)*x(302)-global_par_kd21*x(182);

% Reaction: id = v364, name = v364 (ErbB3:ErbB2)#P:GAP:Grb2:Sos +  Ras:GDP  -> (ErbB3:ErbB2)#P:GAP:Grb2:Sos:(Ras:GTP)  k21 kd21
	reaction_v364=global_par_k21*x(192)*x(302)-global_par_kd21*x(188);

% Reaction: id = v365, name = v365 (ErbB4:ErbB2)#P:GAP:Grb2:Sos +  Ras:GDP  -> (ErbB4:ErbB2)#P:GAP:Grb2:Sos:(Ras:GTP)  k21 kd21
	reaction_v365=global_par_k21*x(176)*x(302)-global_par_kd21*x(184);

% Reaction: id = v366, name = v366 (ErbB4:ErbB2)#P:GAP:Grb2:Sos +  Ras:GDP  -> (ErbB4:ErbB2)#P:GAP:Grb2:Sos:(Ras:GTP)  k21 kd21
	reaction_v366=global_par_k21*x(191)*x(302)-global_par_kd21*x(187);

% Reaction: id = v367, name = v367 Shc +  2(EGF:ErbB1)#P:GAP  -> 2(EGF:ErbB1)#P:GAP:Shc  k22 kd22
	reaction_v367=global_par_k22*x(307)*x(246)-global_par_kd22*x(248);

% Reaction: id = v368, name = v368 Shc +  2(EGF:ErbB1)#P:GAP  -> 2(EGF:ErbB1)#P:GAP:Shc  k22 kd22
	reaction_v368=global_par_k22*x(307)*x(247)-global_par_kd22*x(249);

% Reaction: id = v369, name = v369 Shc +  (ErbB1:ErbB2)#P:GAP  -> (ErbB1:ErbB2)#P:GAP:Shc  k22 kd22b
	reaction_v369=global_par_k22*x(307)*x(282)-global_par_kd22b*x(308);

% Reaction: id = v370, name = v370 Shc +  (ErbB1:ErbB3)#P:GAP  -> (ErbB1:ErbB3)#P:GAP:Shc  k22 kd22b
	reaction_v370=global_par_k22*x(307)*x(283)-global_par_kd22b*x(309);

% Reaction: id = v371, name = v371 Shc +  (ErbB1:ErbB4)#P:GAP  -> (ErbB1:ErbB4)#P:GAP:Shc  k22 kd22b
	reaction_v371=global_par_k22*x(307)*x(284)-global_par_kd22b*x(310);

% Reaction: id = v372, name = v372 Shc +  (ErbB1:ErbB2)#P:GAP  -> (ErbB1:ErbB2)#P:GAP:Shc  k22 kd22b
	reaction_v372=global_par_k22*x(307)*x(279)-global_par_kd22b*x(311);

% Reaction: id = v373, name = v373 Shc +  (ErbB1:ErbB3)#P:GAP  -> (ErbB1:ErbB3)#P:GAP:Shc  k22 kd22b
	reaction_v373=global_par_k22*x(307)*x(280)-global_par_kd22b*x(312);

% Reaction: id = v374, name = v374 Shc +  (ErbB1:ErbB4)#P:GAP  -> (ErbB1:ErbB4)#P:GAP:Shc  k22 kd22b
	reaction_v374=global_par_k22*x(307)*x(281)-global_par_kd22b*x(313);

% Reaction: id = v375, name = v375 Shc +  2(ErbB2)#P:GAP  -> 2(ErbB2)#P:GAP:Shc  k22 kd22b
	reaction_v375=global_par_k22*x(307)*x(272)-global_par_kd22b*x(274);

% Reaction: id = v376, name = v376 Shc +  2(ErbB2)#P:GAP  -> 2(ErbB2)#P:GAP:Shc  k22 kd22b
	reaction_v376=global_par_k22*x(307)*x(273)-global_par_kd22b*x(275);

% Reaction: id = v377, name = v377 Shc +  (ErbB3:ErbB2)#P:GAP  -> (ErbB3:ErbB2)#P:GAP:Shc  k22 kd22b
	reaction_v377=global_par_k22*x(307)*x(285)-global_par_kd22b*x(252);

% Reaction: id = v378, name = v378 Shc +  (ErbB3:ErbB2)#P:GAP  -> (ErbB3:ErbB2)#P:GAP:Shc  k22 kd22b
	reaction_v378=global_par_k22*x(307)*x(287)-global_par_kd22b*x(253);

% Reaction: id = v379, name = v379 Shc +  (ErbB4:ErbB2)#P:GAP  -> (ErbB4:ErbB2)#P:GAP:Shc  k22 kd22
	reaction_v379=global_par_k22*x(307)*x(286)-global_par_kd22*x(254);

% Reaction: id = v380, name = v380 Shc +  (ErbB4:ErbB2)#P:GAP  -> (ErbB4:ErbB2)#P:GAP:Shc  k22 kd22
	reaction_v380=global_par_k22*x(307)*x(288)-global_par_kd22*x(255);

% Reaction: id = v381, name = v381 (ErbB3:ErbB2)#P:GAP:Shc +    -> (ErbB3:ErbB2)#P:GAP:(Shc#P)  k23 kd23
	reaction_v381=global_par_k23*x(252)-global_par_kd23*x(256);

% Reaction: id = v382, name = v382 (ErbB3:ErbB2)#P:GAP:Shc +    -> (ErbB3:ErbB2)#P:GAP:(Shc#P)  k23 kd23
	reaction_v382=global_par_k23*x(253)-global_par_kd23*x(257);

% Reaction: id = v383, name = v383 (ErbB4:ErbB2)#P:GAP:Shc +    -> (ErbB4:ErbB2)#P:GAP:(Shc#P)  k23 kd23
	reaction_v383=global_par_k23*x(254)-global_par_kd23*x(260);

% Reaction: id = v384, name = v384 (ErbB4:ErbB2)#P:GAP:Shc +    -> (ErbB4:ErbB2)#P:GAP:(Shc#P)  k23 kd23
	reaction_v384=global_par_k23*x(255)-global_par_kd23*x(261);

% Reaction: id = v385, name = v385 2(ErbB2)#P:GAP:Shc +    -> 2(ErbB2)#P:GAP:(Shc#P)  k23 kd23
	reaction_v385=global_par_k23*x(274)-global_par_kd23*x(276);

% Reaction: id = v386, name = v386 2(ErbB2)#P:GAP:Shc +    -> 2(ErbB2)#P:GAP:(Shc#P)  k23 kd23
	reaction_v386=global_par_k23*x(275)-global_par_kd23*x(277);

% Reaction: id = v387, name = v387 2(EGF:ErbB1)#P:GAP:Shc +    -> 2(EGF:ErbB1)#P:GAP:(Shc#P)  k23 kd23
	reaction_v387=global_par_k23*x(249)-global_par_kd23*x(251);

% Reaction: id = v388, name = v388 2(EGF:ErbB1)#P:GAP:Shc +    -> 2(EGF:ErbB1)#P:GAP:(Shc#P)  k23 kd23
	reaction_v388=global_par_k23*x(248)-global_par_kd23*x(250);

% Reaction: id = v389, name = v389 (ErbB1:ErbB2)#P:GAP:Shc +    -> (ErbB1:ErbB2)#P:GAP:(Shc#P)  k23 kd23
	reaction_v389=global_par_k23*x(308)-global_par_kd23*x(295);

% Reaction: id = v390, name = v390 (ErbB1:ErbB3)#P:GAP:Shc +    -> (ErbB1:ErbB3)#P:GAP:(Shc#P)  k23 kd23
	reaction_v390=global_par_k23*x(309)-global_par_kd23*x(296);

% Reaction: id = v391, name = v391 (ErbB1:ErbB4)#P:GAP:Shc +    -> (ErbB1:ErbB4)#P:GAP:(Shc#P)  k23 kd23
	reaction_v391=global_par_k23*x(310)-global_par_kd23*x(297);

% Reaction: id = v392, name = v392 (ErbB1:ErbB2)#P:GAP:Shc +    -> (ErbB1:ErbB2)#P:GAP:(Shc#P)  k23 kd23
	reaction_v392=global_par_k23*x(311)-global_par_kd23*x(298);

% Reaction: id = v393, name = v393 (ErbB1:ErbB3)#P:GAP:Shc +    -> (ErbB1:ErbB3)#P:GAP:(Shc#P)  k23 kd23
	reaction_v393=global_par_k23*x(312)-global_par_kd23*x(299);

% Reaction: id = v394, name = v394 (ErbB1:ErbB4)#P:GAP:Shc +    -> (ErbB1:ErbB4)#P:GAP:(Shc#P)  k23 kd23
	reaction_v394=global_par_k23*x(313)-global_par_kd23*x(300);

% Reaction: id = v395, name = v395 Sos +  2(EGF:ErbB1)#P:GAP:(Shc#P):Grb2  -> 2(EGF:ErbB1)#P:GAP:(Shc#P):Grb2:Sos  k25 kd25
	reaction_v395=global_par_k25*x(301)*x(82)-global_par_kd25*x(84);

% Reaction: id = v396, name = v396 Sos +  2(EGF:ErbB1)#P:GAP:(Shc#P):Grb2  -> 2(EGF:ErbB1)#P:GAP:(Shc#P):Grb2:Sos  k25 kd25
	reaction_v396=global_par_k25*x(301)*x(238)-global_par_kd25*x(237);

% Reaction: id = v397, name = v397 Sos +  (ErbB1:ErbB2)#P:GAP:(Shc#P):Grb2  -> (ErbB1:ErbB2)#P:GAP:(Shc#P):Grb2:Sos  k25 kd25
	reaction_v397=global_par_k25*x(301)*x(90)-global_par_kd25*x(96);

% Reaction: id = v398, name = v398 Sos +  (ErbB1:ErbB3)#P:GAP:(Shc#P):Grb2  -> (ErbB1:ErbB3)#P:GAP:(Shc#P):Grb2:Sos  k25 kd25
	reaction_v398=global_par_k25*x(301)*x(92)-global_par_kd25*x(98);

% Reaction: id = v399, name = v399 Sos +  (ErbB1:ErbB4)#P:GAP:(Shc#P):Grb2  -> (ErbB1:ErbB4)#P:GAP:(Shc#P):Grb2:Sos  k25 kd25
	reaction_v399=global_par_k25*x(301)*x(94)-global_par_kd25*x(100);

% Reaction: id = v400, name = v400 Sos +  (ErbB1:ErbB2)#P:GAP:(Shc#P):Grb2  -> (ErbB1:ErbB2)#P:GAP:(Shc#P):Grb2:Sos  k25 kd25
	reaction_v400=global_par_k25*x(301)*x(234)-global_par_kd25*x(231);

% Reaction: id = v401, name = v401 Sos +  (ErbB1:ErbB3)#P:GAP:(Shc#P):Grb2  -> (ErbB1:ErbB3)#P:GAP:(Shc#P):Grb2:Sos  k25 kd25
	reaction_v401=global_par_k25*x(301)*x(233)-global_par_kd25*x(230);

% Reaction: id = v402, name = v402 Sos +  (ErbB1:ErbB4)#P:GAP:(Shc#P):Grb2  -> (ErbB1:ErbB4)#P:GAP:(Shc#P):Grb2:Sos  k25 kd25
	reaction_v402=global_par_k25*x(301)*x(232)-global_par_kd25*x(229);

% Reaction: id = v403, name = v403 Sos +  2(ErbB2)#P:GAP:(Shc#P):Grb2  -> 2(ErbB2)#P:GAP:(Shc#P):Grb2:Sos  k25 kd25
	reaction_v403=global_par_k25*x(301)*x(138)-global_par_kd25*x(140);

% Reaction: id = v404, name = v404 Sos +  2(ErbB2)#P:GAP:(Shc#P):Grb2  -> 2(ErbB2)#P:GAP:(Shc#P):Grb2:Sos  k25 kd25
	reaction_v404=global_par_k25*x(301)*x(210)-global_par_kd25*x(209);

% Reaction: id = v405, name = v405 Sos +  (ErbB4:ErbB2)#P:GAP:(Shc#P):Grb2  -> (ErbB4:ErbB2)#P:GAP:(Shc#P):Grb2:Sos  k25 kd25
	reaction_v405=global_par_k25*x(301)*x(156)-global_par_kd25*x(158);

% Reaction: id = v406, name = v406 Sos +  (ErbB4:ErbB2)#P:GAP:(Shc#P):Grb2  -> (ErbB4:ErbB2)#P:GAP:(Shc#P):Grb2:Sos  k25 kd25
	reaction_v406=global_par_k25*x(301)*x(201)-global_par_kd25*x(200);

% Reaction: id = v407, name = v407 Sos +  (ErbB3:ErbB2)#P:GAP:(Shc#P):Grb2  -> (ErbB3:ErbB2)#P:GAP:(Shc#P):Grb2:Sos  k25 kd25
	reaction_v407=global_par_k25*x(301)*x(154)-global_par_kd25*x(170);

% Reaction: id = v408, name = v408 Sos +  (ErbB3:ErbB2)#P:GAP:(Shc#P):Grb2  -> (ErbB3:ErbB2)#P:GAP:(Shc#P):Grb2:Sos  k25 kd25
	reaction_v408=global_par_k25*x(301)*x(202)-global_par_kd25*x(194);

% Reaction: id = v409, name = v409 Ras:GTP +  Raf  -> Raf:Ras:GTP  k28 kd28
	reaction_v409=global_par_k28*x(303)*x(314)-global_par_kd28*x(315);

% Reaction: id = v410, name = v410 (Ras:GTP)_i +  Raf  -> (Raf:Ras:GTP)_i  k28 kd28
	reaction_v410=global_par_k28*x(304)*x(314)-global_par_kd28*x(316);

% Reaction: id = v411, name = v411 (Ras_activated:GTP)_i +  (Raf#P)_i  -> (Raf:Ras:GTP)_i  k29 kd29
	reaction_v411=global_par_k29*x(306)*x(317)-global_par_kd29*x(316);

% Reaction: id = v412, name = v412 Ras_activated:GTP +  Raf#P  -> Raf:Ras:GTP  k29 kd29
	reaction_v412=global_par_k29*x(305)*x(318)-global_par_kd29*x(315);

% Reaction: id = v413, name = v413 2(EGF:ErbB1)#P:GAP +  (Shc#P):Grb2:Sos  -> 2(EGF:ErbB1)#P:GAP:(Shc#P):Grb2:Sos  k32 kd32
	reaction_v413=global_par_k32*x(246)*x(319)-global_par_kd32*x(84);

% Reaction: id = v414, name = v414 2(EGF:ErbB1)#P:GAP +  (Shc#P):Grb2:Sos  -> 2(EGF:ErbB1)#P:GAP:(Shc#P):Grb2:Sos  k32 kd32
	reaction_v414=global_par_k32*x(247)*x(319)-global_par_kd32*x(237);

% Reaction: id = v415, name = v415 (ErbB1:ErbB2)#P:GAP +  (Shc#P):Grb2:Sos  -> (ErbB1:ErbB2)#P:GAP:(Shc#P):Grb2:Sos  k32 kd32
	reaction_v415=global_par_k32*x(282)*x(319)-global_par_kd32*x(96);

% Reaction: id = v416, name = v416 (ErbB1:ErbB3)#P:GAP +  (Shc#P):Grb2:Sos  -> (ErbB1:ErbB3)#P:GAP:(Shc#P):Grb2:Sos  k32 kd32
	reaction_v416=global_par_k32*x(283)*x(319)-global_par_kd32*x(98);

% Reaction: id = v417, name = v417 (ErbB1:ErbB4)#P:GAP +  (Shc#P):Grb2:Sos  -> (ErbB1:ErbB4)#P:GAP:(Shc#P):Grb2:Sos  k32 kd32
	reaction_v417=global_par_k32*x(284)*x(319)-global_par_kd32*x(100);

% Reaction: id = v418, name = v418 (ErbB1:ErbB2)#P:GAP +  (Shc#P):Grb2:Sos  -> (ErbB1:ErbB2)#P:GAP:(Shc#P):Grb2:Sos  k32 kd32
	reaction_v418=global_par_k32*x(279)*x(319)-global_par_kd32*x(231);

% Reaction: id = v419, name = v419 (ErbB1:ErbB3)#P:GAP +  (Shc#P):Grb2:Sos  -> (ErbB1:ErbB3)#P:GAP:(Shc#P):Grb2:Sos  k32 kd32
	reaction_v419=global_par_k32*x(280)*x(319)-global_par_kd32*x(230);

% Reaction: id = v420, name = v420 (ErbB1:ErbB4)#P:GAP +  (Shc#P):Grb2:Sos  -> (ErbB1:ErbB4)#P:GAP:(Shc#P):Grb2:Sos  k32 kd32
	reaction_v420=global_par_k32*x(281)*x(319)-global_par_kd32*x(229);

% Reaction: id = v421, name = v421 2(ErbB2)#P:GAP +  (Shc#P):Grb2:Sos  -> 2(ErbB2)#P:GAP:(Shc#P):Grb2:Sos  k32 kd32
	reaction_v421=global_par_k32*x(272)*x(319)-global_par_kd32*x(140);

% Reaction: id = v422, name = v422 2(ErbB2)#P:GAP +  (Shc#P):Grb2:Sos  -> 2(ErbB2)#P:GAP:(Shc#P):Grb2:Sos  k32 kd32
	reaction_v422=global_par_k32*x(273)*x(319)-global_par_kd32*x(209);

% Reaction: id = v423, name = v423 (ErbB3:ErbB2)#P:GAP +  (Shc#P):Grb2:Sos  -> (ErbB3:ErbB2)#P:GAP:(Shc#P):Grb2:Sos  k32 kd32
	reaction_v423=global_par_k32*x(285)*x(319)-global_par_kd32*x(170);

% Reaction: id = v424, name = v424 (ErbB3:ErbB2)#P:GAP +  (Shc#P):Grb2:Sos  -> (ErbB3:ErbB2)#P:GAP:(Shc#P):Grb2:Sos  k32 kd32
	reaction_v424=global_par_k32*x(287)*x(319)-global_par_kd32*x(194);

% Reaction: id = v425, name = v425 (ErbB4:ErbB2)#P:GAP +  (Shc#P):Grb2:Sos  -> (ErbB4:ErbB2)#P:GAP:(Shc#P):Grb2:Sos  k32 kd32
	reaction_v425=global_par_k32*x(286)*x(319)-global_par_kd32*x(158);

% Reaction: id = v426, name = v426 (ErbB4:ErbB2)#P:GAP +  (Shc#P):Grb2:Sos  -> (ErbB4:ErbB2)#P:GAP:(Shc#P):Grb2:Sos  k32 kd32
	reaction_v426=global_par_k32*x(288)*x(319)-global_par_kd32*x(200);

% Reaction: id = v427, name = v427 (Shc#P)  +  Grb2:Sos  -> (Shc#P):Grb2:Sos  k33 kd33
	reaction_v427=global_par_k33*x(293)*x(320)-global_par_kd33*x(319);

% Reaction: id = v428, name = v428 2(EGF:ErbB1)#P:GAP +  Grb2:Sos  -> 2(EGF:ErbB1)#P:GAP:Grb2:Sos  k34 kd34
	reaction_v428=global_par_k34*x(246)*x(320)-global_par_kd34*x(76);

% Reaction: id = v429, name = v429 2(EGF:ErbB1)#P:GAP +  Grb2:Sos  -> 2(EGF:ErbB1)#P:GAP:Grb2:Sos  k34 kd34
	reaction_v429=global_par_k34*x(247)*x(320)-global_par_kd34*x(242);

% Reaction: id = v430, name = v430 (ErbB1:ErbB2)#P:GAP +  Grb2:Sos  -> (ErbB1:ErbB2)#P:GAP:Grb2:Sos  k34 kd34
	reaction_v430=global_par_k34*x(282)*x(320)-global_par_kd34*x(132);

% Reaction: id = v431, name = v431 (ErbB1:ErbB3)#P:GAP +  Grb2:Sos  -> (ErbB1:ErbB3)#P:GAP:Grb2:Sos  k34 kd34
	reaction_v431=global_par_k34*x(283)*x(320)-global_par_kd34*x(134);

% Reaction: id = v432, name = v432 (ErbB1:ErbB4)#P:GAP +  Grb2:Sos  -> (ErbB1:ErbB4)#P:GAP:Grb2:Sos  k34 kd34
	reaction_v432=global_par_k34*x(284)*x(320)-global_par_kd34*x(136);

% Reaction: id = v433, name = v433 (ErbB1:ErbB2)#P:GAP +  Grb2:Sos  -> (ErbB1:ErbB2)#P:GAP:Grb2:Sos  k34 kd34
	reaction_v433=global_par_k34*x(279)*x(320)-global_par_kd34*x(213);

% Reaction: id = v434, name = v434 (ErbB1:ErbB3)#P:GAP +  Grb2:Sos  -> (ErbB1:ErbB3)#P:GAP:Grb2:Sos  k34 kd34
	reaction_v434=global_par_k34*x(280)*x(320)-global_par_kd34*x(212);

% Reaction: id = v435, name = v435 (ErbB1:ErbB4)#P:GAP +  Grb2:Sos  -> (ErbB1:ErbB4)#P:GAP:Grb2:Sos  k34 kd34
	reaction_v435=global_par_k34*x(281)*x(320)-global_par_kd34*x(211);

% Reaction: id = v436, name = v436 2(ErbB2)#P:GAP +  Grb2:Sos  -> 2(ErbB2)#P:GAP:Grb2:Sos  k34 kd34
	reaction_v436=global_par_k34*x(272)*x(320)-global_par_kd34*x(148);

% Reaction: id = v437, name = v437 2(ErbB2)#P:GAP +  Grb2:Sos  -> 2(ErbB2)#P:GAP:Grb2:Sos  k34 kd34
	reaction_v437=global_par_k34*x(273)*x(320)-global_par_kd34*x(205);

% Reaction: id = v438, name = v438 (ErbB3:ErbB2)#P:GAP +  Grb2:Sos  -> (ErbB3:ErbB2)#P:GAP:Grb2:Sos  k34 kd34
	reaction_v438=global_par_k34*x(285)*x(320)-global_par_kd34*x(174);

% Reaction: id = v439, name = v439 (ErbB3:ErbB2)#P:GAP +  Grb2:Sos  -> (ErbB3:ErbB2)#P:GAP:Grb2:Sos  k34 kd34
	reaction_v439=global_par_k34*x(287)*x(320)-global_par_kd34*x(192);

% Reaction: id = v440, name = v440 (ErbB4:ErbB2)#P:GAP +  Grb2:Sos  -> (ErbB4:ErbB2)#P:GAP:Grb2:Sos  k34 kd34
	reaction_v440=global_par_k34*x(286)*x(320)-global_par_kd34*x(176);

% Reaction: id = v441, name = v441 (ErbB4:ErbB2)#P:GAP +  Grb2:Sos  -> (ErbB4:ErbB2)#P:GAP:Grb2:Sos  k34 kd34
	reaction_v441=global_par_k34*x(288)*x(320)-global_par_kd34*x(191);

% Reaction: id = v442, name = v442 Sos +  Grb2  -> Grb2:Sos  k35 kd35
	reaction_v442=global_par_k35*x(301)*x(292)-global_par_kd35*x(320);

% Reaction: id = v443, name = v443 (Shc#P)  +    -> Shc  k36 kd36
	reaction_v443=global_par_k36*x(293)-global_par_kd36*x(307);

% Reaction: id = v444, name = v444 2(EGF:ErbB1)#P:GAP +  (Shc#P)   -> 2(EGF:ErbB1)#P:GAP:(Shc#P)  k37 kd37
	reaction_v444=global_par_k37*x(246)*x(293)-global_par_kd37*x(250);

% Reaction: id = v445, name = v445 2(EGF:ErbB1)#P:GAP +  (Shc#P):Grb2   -> 2(EGF:ErbB1)#P:GAP:(Shc#P):Grb2  k37 kd37
	reaction_v445=global_par_k37*x(246)*x(294)-global_par_kd37*x(82);

% Reaction: id = v446, name = v446 2(EGF:ErbB1)#P:GAP +  (Shc#P)   -> 2(EGF:ErbB1)#P:GAP:(Shc#P)  k37 kd37
	reaction_v446=global_par_k37*x(247)*x(293)-global_par_kd37*x(251);

% Reaction: id = v447, name = v447 2(EGF:ErbB1)#P:GAP +  (Shc#P):Grb2   -> 2(EGF:ErbB1)#P:GAP:(Shc#P):Grb2  k37 kd37
	reaction_v447=global_par_k37*x(247)*x(294)-global_par_kd37*x(238);

% Reaction: id = v448, name = v448 (ErbB1:ErbB2)#P:GAP +  (Shc#P)   -> (ErbB1:ErbB2)#P:GAP:(Shc#P)  k37 kd37
	reaction_v448=global_par_k37*x(282)*x(293)-global_par_kd37*x(295);

% Reaction: id = v449, name = v449 (ErbB1:ErbB3)#P:GAP +  (Shc#P)   -> (ErbB1:ErbB3)#P:GAP:(Shc#P)  k37 kd37
	reaction_v449=global_par_k37*x(283)*x(293)-global_par_kd37*x(296);

% Reaction: id = v450, name = v450 (ErbB1:ErbB4)#P:GAP +  (Shc#P)   -> (ErbB1:ErbB4)#P:GAP:(Shc#P)  k37 kd37
	reaction_v450=global_par_k37*x(284)*x(293)-global_par_kd37*x(297);

% Reaction: id = v451, name = v451 (ErbB1:ErbB2)#P:GAP +  (Shc#P)   -> (ErbB1:ErbB2)#P:GAP:(Shc#P)  k37 kd37
	reaction_v451=global_par_k37*x(279)*x(293)-global_par_kd37*x(298);

% Reaction: id = v452, name = v452 (ErbB1:ErbB3)#P:GAP +  (Shc#P)   -> (ErbB1:ErbB3)#P:GAP:(Shc#P)  k37 kd37
	reaction_v452=global_par_k37*x(280)*x(293)-global_par_kd37*x(299);

% Reaction: id = v453, name = v453 (ErbB1:ErbB4)#P:GAP +  (Shc#P)   -> (ErbB1:ErbB4)#P:GAP:(Shc#P)  k37 kd37
	reaction_v453=global_par_k37*x(281)*x(293)-global_par_kd37*x(300);

% Reaction: id = v454, name = v454 (ErbB1:ErbB2)#P:GAP +  (Shc#P):Grb2   -> (ErbB1:ErbB2)#P:GAP:(Shc#P):Grb2  k37 kd37
	reaction_v454=global_par_k37*x(282)*x(294)-global_par_kd37*x(90);

% Reaction: id = v455, name = v455 (ErbB1:ErbB3)#P:GAP +  (Shc#P):Grb2   -> (ErbB1:ErbB3)#P:GAP:(Shc#P):Grb2  k37 kd37
	reaction_v455=global_par_k37*x(283)*x(294)-global_par_kd37*x(92);

% Reaction: id = v456, name = v456 (ErbB1:ErbB4)#P:GAP +  (Shc#P):Grb2   -> (ErbB1:ErbB4)#P:GAP:(Shc#P):Grb2  k37 kd37
	reaction_v456=global_par_k37*x(284)*x(294)-global_par_kd37*x(94);

% Reaction: id = v457, name = v457 (ErbB1:ErbB2)#P:GAP +  (Shc#P):Grb2   -> (ErbB1:ErbB2)#P:GAP:(Shc#P):Grb2  k37 kd37
	reaction_v457=global_par_k37*x(279)*x(294)-global_par_kd37*x(234);

% Reaction: id = v458, name = v458 (ErbB1:ErbB3)#P:GAP +  (Shc#P):Grb2   -> (ErbB1:ErbB3)#P:GAP:(Shc#P):Grb2  k37 kd37
	reaction_v458=global_par_k37*x(280)*x(294)-global_par_kd37*x(233);

% Reaction: id = v459, name = v459 (ErbB1:ErbB4)#P:GAP +  (Shc#P):Grb2   -> (ErbB1:ErbB4)#P:GAP:(Shc#P):Grb2  k37 kd37
	reaction_v459=global_par_k37*x(281)*x(294)-global_par_kd37*x(232);

% Reaction: id = v460, name = v460 2(ErbB2)#P:GAP +  (Shc#P)   -> 2(ErbB2)#P:GAP:(Shc#P)  k37 kd37
	reaction_v460=global_par_k37*x(272)*x(293)-global_par_kd37*x(276);

% Reaction: id = v461, name = v461 2(ErbB2)#P:GAP +  (Shc#P)   -> 2(ErbB2)#P:GAP:(Shc#P)  k37 kd37
	reaction_v461=global_par_k37*x(273)*x(293)-global_par_kd37*x(277);

% Reaction: id = v462, name = v462 2(ErbB2)#P:GAP +  (Shc#P):Grb2   -> 2(ErbB2)#P:GAP:(Shc#P):Grb2  k37 kd37
	reaction_v462=global_par_k37*x(272)*x(294)-global_par_kd37*x(138);

% Reaction: id = v463, name = v463 2(ErbB2)#P:GAP +  (Shc#P):Grb2   -> 2(ErbB2)#P:GAP:(Shc#P):Grb2  k37 kd37
	reaction_v463=global_par_k37*x(273)*x(294)-global_par_kd37*x(210);

% Reaction: id = v464, name = v464 (ErbB3:ErbB2)#P:GAP +  (Shc#P)   -> (ErbB3:ErbB2)#P:GAP:(Shc#P)  k37 kd37
	reaction_v464=global_par_k37*x(285)*x(293)-global_par_kd37*x(256);

% Reaction: id = v465, name = v465 (ErbB3:ErbB2)#P:GAP +  (Shc#P)   -> (ErbB3:ErbB2)#P:GAP:(Shc#P)  k37 kd37
	reaction_v465=global_par_k37*x(287)*x(293)-global_par_kd37*x(257);

% Reaction: id = v466, name = v466 (ErbB4:ErbB2)#P:GAP +  (Shc#P)   -> (ErbB4:ErbB2)#P:GAP:(Shc#P)  k37 kd37
	reaction_v466=global_par_k37*x(286)*x(293)-global_par_kd37*x(260);

% Reaction: id = v467, name = v467 (ErbB4:ErbB2)#P:GAP +  (Shc#P)   -> (ErbB4:ErbB2)#P:GAP:(Shc#P)  k37 kd37
	reaction_v467=global_par_k37*x(288)*x(293)-global_par_kd37*x(261);

% Reaction: id = v468, name = v468 (ErbB3:ErbB2)#P:GAP +  (Shc#P):Grb2   -> (ErbB3:ErbB2)#P:GAP:(Shc#P):Grb2  k37 kd37
	reaction_v468=global_par_k37*x(285)*x(294)-global_par_kd37*x(154);

% Reaction: id = v469, name = v469 (ErbB3:ErbB2)#P:GAP +  (Shc#P):Grb2   -> (ErbB3:ErbB2)#P:GAP:(Shc#P):Grb2  k37 kd37
	reaction_v469=global_par_k37*x(287)*x(294)-global_par_kd37*x(202);

% Reaction: id = v470, name = v470 (ErbB4:ErbB2)#P:GAP +  (Shc#P):Grb2   -> (ErbB4:ErbB2)#P:GAP:(Shc#P):Grb2  k37 kd37
	reaction_v470=global_par_k37*x(286)*x(294)-global_par_kd37*x(156);

% Reaction: id = v471, name = v471 (ErbB4:ErbB2)#P:GAP +  (Shc#P):Grb2   -> (ErbB4:ErbB2)#P:GAP:(Shc#P):Grb2  k37 kd37
	reaction_v471=global_par_k37*x(288)*x(294)-global_par_kd37*x(201);

% Reaction: id = v472, name = v472 Sos +  (Shc#P):Grb2   -> (Shc#P):Grb2:Sos  k40 kd40
	reaction_v472=global_par_k40*x(301)*x(294)-global_par_kd40*x(319);

% Reaction: id = v473, name = v473 Grb2:Sos +  2(EGF:ErbB1)#P:GAP:(Shc#P)  -> 2(EGF:ErbB1)#P:GAP:(Shc#P):Grb2:Sos  k41 kd41
	reaction_v473=global_par_k41*x(320)*x(250)-global_par_kd41*x(84);

% Reaction: id = v474, name = v474 Grb2:Sos +  2(EGF:ErbB1)#P:GAP:(Shc#P)  -> 2(EGF:ErbB1)#P:GAP:(Shc#P):Grb2:Sos  k41 kd41
	reaction_v474=global_par_k41*x(320)*x(251)-global_par_kd41*x(237);

% Reaction: id = v475, name = v475 Grb2:Sos +  (ErbB1:ErbB2)#P:GAP:(Shc#P)  -> (ErbB1:ErbB2)#P:GAP:(Shc#P):Grb2:Sos  k41 kd41
	reaction_v475=global_par_k41*x(320)*x(295)-global_par_kd41*x(96);

% Reaction: id = v476, name = v476 Grb2:Sos +  (ErbB1:ErbB3)#P:GAP:(Shc#P)  -> (ErbB1:ErbB3)#P:GAP:(Shc#P):Grb2:Sos  k41 kd41
	reaction_v476=global_par_k41*x(320)*x(296)-global_par_kd41*x(98);

% Reaction: id = v477, name = v477 Grb2:Sos +  (ErbB1:ErbB4)#P:GAP:(Shc#P)  -> (ErbB1:ErbB4)#P:GAP:(Shc#P):Grb2:Sos  k41 kd41
	reaction_v477=global_par_k41*x(320)*x(297)-global_par_kd41*x(100);

% Reaction: id = v478, name = v478 Grb2:Sos +  (ErbB1:ErbB2)#P:GAP:(Shc#P)  -> (ErbB1:ErbB2)#P:GAP:(Shc#P):Grb2:Sos  k41 kd41
	reaction_v478=global_par_k41*x(320)*x(298)-global_par_kd41*x(231);

% Reaction: id = v479, name = v479 Grb2:Sos +  (ErbB1:ErbB3)#P:GAP:(Shc#P)  -> (ErbB1:ErbB3)#P:GAP:(Shc#P):Grb2:Sos  k41 kd41
	reaction_v479=global_par_k41*x(320)*x(299)-global_par_kd41*x(230);

% Reaction: id = v480, name = v480 Grb2:Sos +  (ErbB1:ErbB4)#P:GAP:(Shc#P)  -> (ErbB1:ErbB4)#P:GAP:(Shc#P):Grb2:Sos  k41 kd41
	reaction_v480=global_par_k41*x(320)*x(300)-global_par_kd41*x(229);

% Reaction: id = v481, name = v481 Grb2:Sos +  2(ErbB2)#P:GAP:(Shc#P)  -> 2(ErbB2)#P:GAP:(Shc#P):Grb2:Sos  k41 kd41
	reaction_v481=global_par_k41*x(320)*x(276)-global_par_kd41*x(140);

% Reaction: id = v482, name = v482 Grb2:Sos +  2(ErbB2)#P:GAP:(Shc#P)  -> 2(ErbB2)#P:GAP:(Shc#P):Grb2:Sos  k41 kd41
	reaction_v482=global_par_k41*x(320)*x(277)-global_par_kd41*x(209);

% Reaction: id = v483, name = v483 Grb2:Sos +  (ErbB3:ErbB2)#P:GAP:(Shc#P)  -> (ErbB3:ErbB2)#P:GAP:(Shc#P):Grb2:Sos  k41 kd41
	reaction_v483=global_par_k41*x(320)*x(256)-global_par_kd41*x(170);

% Reaction: id = v484, name = v484 Grb2:Sos +  (ErbB3:ErbB2)#P:GAP:(Shc#P)  -> (ErbB3:ErbB2)#P:GAP:(Shc#P):Grb2:Sos  k41 kd41
	reaction_v484=global_par_k41*x(320)*x(257)-global_par_kd41*x(194);

% Reaction: id = v485, name = v485 Grb2:Sos +  (ErbB4:ErbB2)#P:GAP:(Shc#P)  -> (ErbB4:ErbB2)#P:GAP:(Shc#P):Grb2:Sos  k41 kd41
	reaction_v485=global_par_k41*x(320)*x(260)-global_par_kd41*x(158);

% Reaction: id = v486, name = v486 Grb2:Sos +  (ErbB4:ErbB2)#P:GAP:(Shc#P)  -> (ErbB4:ErbB2)#P:GAP:(Shc#P):Grb2:Sos  k41 kd41
	reaction_v486=global_par_k41*x(320)*x(261)-global_par_kd41*x(200);

% Reaction: id = v487, name = v487 Pase1 +  (Raf#P)_i  -> (Raf#P:Pase1)_i  k42 kd42
	reaction_v487=global_par_k42*x(321)*x(317)-global_par_kd42*x(322);

% Reaction: id = v488, name = v488 Pase1 +  Raf#P  -> Raf#P:Pase1  k42 kd42
	reaction_v488=global_par_k42*x(321)*x(318)-global_par_kd42*x(323);

% Reaction: id = v489, name = v489 Raf +  Pase1  -> Raf#P:Pase1  k43 kd43
	reaction_v489=global_par_k43*x(314)*x(321)-global_par_kd43*x(323);

% Reaction: id = v490, name = v490 Raf +  Pase1  -> (Raf#P:Pase1)_i  k43 kd43
	reaction_v490=global_par_k43*x(314)*x(321)-global_par_kd43*x(322);

% Reaction: id = v491, name = v491 (Raf#P)_i +  (MEK#P)_i  -> (MEK#P:Raf#P)_i  k44 kd52
	reaction_v491=global_par_k44*x(317)*x(324)-global_par_kd52*x(325);

% Reaction: id = v492, name = v492 MEK +  (Raf#P)_i  -> (MEK:Raf#P)_i  k44 kd52
	reaction_v492=global_par_k44*x(326)*x(317)-global_par_kd52*x(327);

% Reaction: id = v493, name = v493 MEK +  Raf#P  -> MEK:Raf#P  k44 kd52
	reaction_v493=global_par_k44*x(326)*x(318)-global_par_kd52*x(328);

% Reaction: id = v494, name = v494 MEK#P +  Raf#P  -> MEK#P:Raf#P  k44 kd52
	reaction_v494=global_par_k44*x(329)*x(318)-global_par_kd52*x(330);

% Reaction: id = v495, name = v495 MEK#P +  Raf#P  -> MEK:Raf#P  k45 kd45
	reaction_v495=global_par_k45*x(329)*x(318)-global_par_kd45*x(328);

% Reaction: id = v496, name = v496 (MEK#P)_i +  (Raf#P)_i  -> (MEK:Raf#P)_i  k45 kd45
	reaction_v496=global_par_k45*x(324)*x(317)-global_par_kd45*x(327);

% Reaction: id = v497, name = v497 MEK#P#P +  Raf#P  -> MEK#P:Raf#P  k47 kd47
	reaction_v497=global_par_k47*x(331)*x(318)-global_par_kd47*x(330);

% Reaction: id = v498, name = v498 (Raf#P)_i +  (MEK#P#P)_i  -> (MEK#P:Raf#P)_i  k47 kd47
	reaction_v498=global_par_k47*x(317)*x(332)-global_par_kd47*x(325);

% Reaction: id = v499, name = v499 (MEK#P#P)_i +  Pase2  -> (MEK#P#P:Pase2)_i  k48 kd48
	reaction_v499=global_par_k48*x(332)*x(333)-global_par_kd48*x(334);

% Reaction: id = v500, name = v500 MEK#P#P +  Pase2  -> MEK#P#P:Pase2  k48 kd48
	reaction_v500=global_par_k48*x(331)*x(333)-global_par_kd48*x(335);

% Reaction: id = v501, name = v501 MEK#P +  Pase2  -> MEK#P#P:Pase2  k49 kd49
	reaction_v501=global_par_k49*x(329)*x(333)-global_par_kd49*x(335);

% Reaction: id = v502, name = v502 MEK +  Pase2  -> MEK#P:Pase2  k49 kd49
	reaction_v502=global_par_k49*x(326)*x(333)-global_par_kd49*x(336);

% Reaction: id = v503, name = v503 MEK +  Pase2  -> (MEK#P:Pase2)_i  k49 kd49
	reaction_v503=global_par_k49*x(326)*x(333)-global_par_kd49*x(337);

% Reaction: id = v504, name = v504 (MEK#P)_i +  Pase2  -> (MEK#P#P:Pase2)_i  k49 kd49
	reaction_v504=global_par_k49*x(324)*x(333)-global_par_kd49*x(334);

% Reaction: id = v505, name = v505 Pase2 +  (MEK#P)_i  -> (MEK#P:Pase2)_i  k50 kd50
	reaction_v505=global_par_k50*x(333)*x(324)-global_par_kd50*x(337);

% Reaction: id = v506, name = v506 Pase2 +  MEK#P  -> MEK#P:Pase2  k50 kd50
	reaction_v506=global_par_k50*x(333)*x(329)-global_par_kd50*x(336);

% Reaction: id = v507, name = v507 ERK +  MEK#P#P  -> ERK:MEK#P#P  k52 kd44
	reaction_v507=global_par_k52*x(338)*x(331)-global_par_kd44*x(339);

% Reaction: id = v508, name = v508 MEK#P#P +  ERK#P  -> ERK#P:MEK#P#P  k52 kd44
	reaction_v508=global_par_k52*x(331)*x(340)-global_par_kd44*x(341);

% Reaction: id = v509, name = v509 ERK +  (MEK#P#P)_i  -> MEK#P#P:ERK  k52 kd44
	reaction_v509=global_par_k52*x(338)*x(332)-global_par_kd44*x(342);

% Reaction: id = v510, name = v510 (MEK#P#P)_i +  (ERK#P)_i  -> MEK#P#P:ERK#P  k52 kd44
	reaction_v510=global_par_k52*x(332)*x(343)-global_par_kd44*x(344);

% Reaction: id = v511, name = v511 (ERK#P)_i +  (MEK#P#P)_i  -> MEK#P#P:ERK  k53 kd53
	reaction_v511=global_par_k53*x(343)*x(332)-global_par_kd53*x(342);

% Reaction: id = v512, name = v512 MEK#P#P +  ERK#P  -> ERK:MEK#P#P  k53 kd53
	reaction_v512=global_par_k53*x(331)*x(340)-global_par_kd53*x(339);

% Reaction: id = v513, name = v513 ERK#P#P +  MEK#P#P  -> ERK#P:MEK#P#P  k55 kd55
	reaction_v513=global_par_k55*x(345)*x(331)-global_par_kd55*x(341);

% Reaction: id = v514, name = v514 (ERK#P#P)_i +  (MEK#P#P)_i  -> MEK#P#P:ERK#P  k55 kd55
	reaction_v514=global_par_k55*x(346)*x(332)-global_par_kd55*x(344);

% Reaction: id = v515, name = v515 ERK#P#P +  Pase3  -> ERK#P#P:Pase3  k56 kd56
	reaction_v515=global_par_k56*x(345)*x(347)-global_par_kd56*x(348);

% Reaction: id = v516, name = v516 (ERK#P#P)_i +  Pase3  -> (ERK#P#P:Pase3)_i  k56 kd56
	reaction_v516=global_par_k56*x(346)*x(347)-global_par_kd56*x(349);

% Reaction: id = v517, name = v517 (ERK#P)_i +  Pase3  -> (ERK#P#P:Pase3)_i  k57 kd57
	reaction_v517=global_par_k57*x(343)*x(347)-global_par_kd57*x(349);

% Reaction: id = v518, name = v518 ERK#P +  Pase3  -> ERK#P#P:Pase3  k57 kd57
	reaction_v518=global_par_k57*x(340)*x(347)-global_par_kd57*x(348);

% Reaction: id = v519, name = v519 ERK +  Pase3  -> ERK#P:Pase3  k57 kd57
	reaction_v519=global_par_k57*x(338)*x(347)-global_par_kd57*x(350);

% Reaction: id = v520, name = v520 ERK +  Pase3  -> (ERK#P:Pase3)_i  k57 kd57
	reaction_v520=global_par_k57*x(338)*x(347)-global_par_kd57*x(351);

% Reaction: id = v521, name = v521 Pase3 +  ERK#P  -> ERK#P:Pase3  k58 kd58
	reaction_v521=global_par_k58*x(347)*x(340)-global_par_kd58*x(350);

% Reaction: id = v522, name = v522 Pase3 +  (ERK#P)_i  -> (ERK#P:Pase3)_i  k58 kd58
	reaction_v522=global_par_k58*x(347)*x(343)-global_par_kd58*x(351);

% Reaction: id = v523, name = v523 ErbB1:ATP   -> R_degraded  k60 kd60
	reaction_v523=global_par_k60*x(243)-global_par_kd60*x(352);

% Reaction: id = v524, name = v524 2(EGF:ErbB1:ATP) -> R_degraded  k60 kd60
	reaction_v524=global_par_k60*x(14)-global_par_kd60*x(352);

% Reaction: id = v525, name = v525 2(EGF:ErbB1)#P:GAP  -> R_degraded  k60 kd60
	reaction_v525=global_par_k60*x(247)-global_par_kd60*x(352);

% Reaction: id = v526, name = v526 2(EGF:ErbB1)#P:GAP:Grb2   -> R_degraded  k60 kd60
	reaction_v526=global_par_k60*x(241)-global_par_kd60*x(352);

% Reaction: id = v527, name = v527 2(EGF:ErbB1)#P:GAP:Grb2:Sos  -> R_degraded  k60 kd60
	reaction_v527=global_par_k60*x(242)-global_par_kd60*x(352);

% Reaction: id = v528, name = v528 2(EGF:ErbB1)#P:GAP:Grb2:Sos:(Ras:GDP)  -> R_degraded  k60 kd60
	reaction_v528=global_par_k60*x(240)-global_par_kd60*x(352);

% Reaction: id = v529, name = v529 2(EGF:ErbB1)#P:GAP:Grb2:Sos:(Ras:GTP)  -> R_degraded  k60 kd60
	reaction_v529=global_par_k60*x(239)-global_par_kd60*x(352);

% Reaction: id = v530, name = v530 2(EGF:ErbB1)#P:GAP:Shc  -> R_degraded  k60 kd60
	reaction_v530=global_par_k60*x(249)-global_par_kd60*x(352);

% Reaction: id = v531, name = v531 2(EGF:ErbB1)#P:GAP:(Shc#P)  -> R_degraded  k60 kd60
	reaction_v531=global_par_k60*x(251)-global_par_kd60*x(352);

% Reaction: id = v532, name = v532 2(EGF:ErbB1)#P:GAP:(Shc#P):Grb2  -> R_degraded  k60 kd60
	reaction_v532=global_par_k60*x(238)-global_par_kd60*x(352);

% Reaction: id = v533, name = v533 2(EGF:ErbB1)#P:GAP:(Shc#P):Grb2:Sos  -> R_degraded  k60 kd60
	reaction_v533=global_par_k60*x(237)-global_par_kd60*x(352);

% Reaction: id = v534, name = v534 2(EGF:ErbB1)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GDP)  -> R_degraded  k60 kd60
	reaction_v534=global_par_k60*x(236)-global_par_kd60*x(352);

% Reaction: id = v535, name = v535 2(EGF:ErbB1)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GTP) +    -> R_degraded  k60 kd60
	reaction_v535=global_par_k60*x(235)-global_par_kd60*x(352);

% Reaction: id = v537, name = v537 ErbB3  -> R_degraded  k60b kd60b
	reaction_v537=global_par_k60b*x(23)-global_par_kd60b*x(352);

% Reaction: id = v538, name = v538 ErbB2  -> R_degraded  k60b kd60b
	reaction_v538=global_par_k60b*x(21)-global_par_kd60b*x(352);

% Reaction: id = v539, name = v539 ErbB4  -> R_degraded  k60b kd60b
	reaction_v539=global_par_k60b*x(25)-global_par_kd60b*x(352);

% Reaction: id = v540, name = v540 (ErbB1:ErbB2)#P:GAP:(Shc#P):Grb2  -> R_degraded  k60b kd60
	reaction_v540=global_par_k60b*x(234)-global_par_kd60*x(352);

% Reaction: id = v541, name = v541 (ErbB1:ErbB3)#P:GAP:(Shc#P):Grb2  -> R_degraded  k60b kd60
	reaction_v541=global_par_k60b*x(233)-global_par_kd60*x(352);

% Reaction: id = v542, name = v542 (ErbB1:ErbB4)#P:GAP:(Shc#P):Grb2  -> R_degraded  k60b kd60
	reaction_v542=global_par_k60b*x(232)-global_par_kd60*x(352);

% Reaction: id = v543, name = v543 (ErbB1:ErbB2)#P:GAP:(Shc#P):Grb2:Sos  -> R_degraded  k60b kd60
	reaction_v543=global_par_k60b*x(231)-global_par_kd60*x(352);

% Reaction: id = v544, name = v544 (ErbB1:ErbB3)#P:GAP:(Shc#P):Grb2:Sos  -> R_degraded  k60b kd60
	reaction_v544=global_par_k60b*x(230)-global_par_kd60*x(352);

% Reaction: id = v545, name = v545 (ErbB1:ErbB4)#P:GAP:(Shc#P):Grb2:Sos  -> R_degraded  k60b kd60
	reaction_v545=global_par_k60b*x(229)-global_par_kd60*x(352);

% Reaction: id = v546, name = v546 (ErbB1:ErbB2)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GDP)  -> R_degraded  k60b kd60
	reaction_v546=global_par_k60b*x(228)-global_par_kd60*x(352);

% Reaction: id = v547, name = v547 (ErbB1:ErbB3)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GDP)  -> R_degraded  k60b kd60
	reaction_v547=global_par_k60b*x(227)-global_par_kd60*x(352);

% Reaction: id = v548, name = v548 (ErbB1:ErbB4)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GDP)  -> R_degraded  k60b kd60
	reaction_v548=global_par_k60b*x(226)-global_par_kd60*x(352);

% Reaction: id = v549, name = v549 (ErbB1:ErbB2)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GTP)  -> R_degraded  k60b kd60
	reaction_v549=global_par_k60b*x(225)-global_par_kd60*x(352);

% Reaction: id = v550, name = v550 (ErbB1:ErbB3)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GTP)  -> R_degraded  k60b kd60
	reaction_v550=global_par_k60b*x(224)-global_par_kd60*x(352);

% Reaction: id = v551, name = v551 (ErbB1:ErbB4)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GTP)  -> R_degraded  k60b kd60
	reaction_v551=global_par_k60b*x(223)-global_par_kd60*x(352);

% Reaction: id = v552, name = v552 (ErbB1:ErbB2)#P:GAP:Grb2  -> R_degraded  k60b kd60
	reaction_v552=global_par_k60b*x(222)-global_par_kd60*x(352);

% Reaction: id = v553, name = v553 (ErbB1:ErbB3)#P:GAP:Grb2  -> R_degraded  k60b kd60
	reaction_v553=global_par_k60b*x(221)-global_par_kd60*x(352);

% Reaction: id = v554, name = v554 (ErbB1:ErbB4)#P:GAP:Grb2  -> R_degraded  k60b kd60
	reaction_v554=global_par_k60b*x(220)-global_par_kd60*x(352);

% Reaction: id = v555, name = v555 (ErbB1:ErbB2)#P:GAP:Grb2:Sos:(Ras:GDP)  -> R_degraded  k60b kd60
	reaction_v555=global_par_k60b*x(219)-global_par_kd60*x(352);

% Reaction: id = v556, name = v556 (ErbB1:ErbB3)#P:GAP:Grb2:Sos:(Ras:GDP)  -> R_degraded  k60b kd60
	reaction_v556=global_par_k60b*x(218)-global_par_kd60*x(352);

% Reaction: id = v557, name = v557 (ErbB1:ErbB4)#P:GAP:Grb2:Sos:(Ras:GDP)  -> R_degraded  k60b kd60
	reaction_v557=global_par_k60b*x(217)-global_par_kd60*x(352);

% Reaction: id = v558, name = v558 (ErbB1:ErbB2)#P:GAP:Grb2:Sos:(Ras:GTP)  -> R_degraded  k60b kd60
	reaction_v558=global_par_k60b*x(216)-global_par_kd60*x(352);

% Reaction: id = v559, name = v559 (ErbB1:ErbB3)#P:GAP:Grb2:Sos:(Ras:GTP)  -> R_degraded  k60b kd60
	reaction_v559=global_par_k60b*x(215)-global_par_kd60*x(352);

% Reaction: id = v560, name = v560 (ErbB1:ErbB4)#P:GAP:Grb2:Sos:(Ras:GTP)  -> R_degraded  k60b kd60
	reaction_v560=global_par_k60b*x(214)-global_par_kd60*x(352);

% Reaction: id = v563, name = v563 (ErbB1:ErbB2)#P:GAP:Grb2:Sos  -> R_degraded  k60b kd60
	reaction_v563=global_par_k60b*x(213)-global_par_kd60*x(352);

% Reaction: id = v564, name = v564 (ErbB1:ErbB3)#P:GAP:Grb2:Sos  -> R_degraded  k60b kd60
	reaction_v564=global_par_k60b*x(212)-global_par_kd60*x(352);

% Reaction: id = v565, name = v565 (ErbB1:ErbB4)#P:GAP:Grb2:Sos  -> R_degraded  k60b kd60
	reaction_v565=global_par_k60b*x(211)-global_par_kd60*x(352);

% Reaction: id = v566, name = v566 2(ErbB2)  -> R_degraded  k60b kd60
	reaction_v566=global_par_k60b*x(353)-global_par_kd60*x(352);

% Reaction: id = v567, name = v567 2(ErbB2)#P:GAP  -> R_degraded  k60b kd60
	reaction_v567=global_par_k60b*x(273)-global_par_kd60*x(352);

% Reaction: id = v568, name = v568 2(ErbB2)#P:GAP:Shc -> R_degraded  k60b kd60
	reaction_v568=global_par_k60b*x(275)-global_par_kd60*x(352);

% Reaction: id = v569, name = v569 2(ErbB2)#P:GAP:(Shc#P) -> R_degraded  k60b kd60
	reaction_v569=global_par_k60b*x(277)-global_par_kd60*x(352);

% Reaction: id = v570, name = v570 2(ErbB2)#P:GAP:(Shc#P):Grb2 -> R_degraded  k60b kd60
	reaction_v570=global_par_k60b*x(210)-global_par_kd60*x(352);

% Reaction: id = v572, name = v572 2(ErbB2)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GDP)   -> R_degraded  k60b kd60
	reaction_v572=global_par_k60b*x(208)-global_par_kd60*x(352);

% Reaction: id = v573, name = v573 2(ErbB2)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GTP)   -> R_degraded  k60b kd60
	reaction_v573=global_par_k60b*x(207)-global_par_kd60*x(352);

% Reaction: id = v574, name = v574 2(ErbB2)#P:GAP:Grb2   -> R_degraded  k60b kd60
	reaction_v574=global_par_k60b*x(206)-global_par_kd60*x(352);

% Reaction: id = v575, name = v575 2(ErbB2)#P:GAP:Grb2:Sos   -> R_degraded  k60b kd60
	reaction_v575=global_par_k60b*x(205)-global_par_kd60*x(352);

% Reaction: id = v576, name = v576 2(ErbB2)#P:GAP:Grb2:Sos:(Ras:GDP)   -> R_degraded  k60b kd60
	reaction_v576=global_par_k60b*x(204)-global_par_kd60*x(352);

% Reaction: id = v577, name = v577 2(ErbB2)#P:GAP:Grb2:Sos:(Ras:GTP)  -> R_degraded  k60b kd60
	reaction_v577=global_par_k60b*x(203)-global_par_kd60*x(352);

% Reaction: id = v579, name = v579 (ErbB3:ErbB2)#P:GAP:Shc  -> R_degraded  k60c kd60
	reaction_v579=global_par_k60c*x(253)-global_par_kd60*x(352);

% Reaction: id = v580, name = v580 (ErbB4:ErbB2)#P:GAP:Shc   -> R_degraded  k60c kd60
	reaction_v580=global_par_k60c*x(255)-global_par_kd60*x(352);

% Reaction: id = v581, name = v581 (ErbB3:ErbB2)#P:GAP:(Shc#P)   -> R_degraded  k60c kd60
	reaction_v581=global_par_k60c*x(257)-global_par_kd60*x(352);

% Reaction: id = v582, name = v582 (ErbB4:ErbB2)#P:GAP:(Shc#P)   -> R_degraded  k60c kd60
	reaction_v582=global_par_k60c*x(261)-global_par_kd60*x(352);

% Reaction: id = v583, name = v583 (ErbB3:ErbB2)#P:GAP:(Shc#P):Grb2  -> R_degraded  k60c kd60
	reaction_v583=global_par_k60c*x(202)-global_par_kd60*x(352);

% Reaction: id = v584, name = v584 (ErbB4:ErbB2)#P:GAP:(Shc#P):Grb2:Sos  -> R_degraded  k60c kd60
	reaction_v584=global_par_k60c*x(200)-global_par_kd60*x(352);

% Reaction: id = v585, name = v585 (ErbB4:ErbB2)#P:GAP:(Shc#P):Grb2  -> R_degraded  k60c kd60
	reaction_v585=global_par_k60c*x(201)-global_par_kd60*x(352);

% Reaction: id = v586, name = v586 (ErbB3:ErbB2)#P:GAP:(Shc#P):Grb2:Sos  -> R_degraded  k60c kd60
	reaction_v586=global_par_k60c*x(194)-global_par_kd60*x(352);

% Reaction: id = v587, name = v587 (ErbB3:ErbB2)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GTP) -> R_degraded  k60c kd60
	reaction_v587=global_par_k60c*x(197)-global_par_kd60*x(352);

% Reaction: id = v588, name = v588 (ErbB4:ErbB2)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GTP) -> R_degraded  k60c kd60
	reaction_v588=global_par_k60c*x(196)-global_par_kd60*x(352);

% Reaction: id = v589, name = v589 (ErbB4:ErbB2)#P:GAP:Grb2 -> R_degraded  k60c kd60
	reaction_v589=global_par_k60c*x(193)-global_par_kd60*x(352);

% Reaction: id = v590, name = v590 (ErbB3:ErbB2)#P:GAP:Grb2 -> R_degraded  k60c kd60
	reaction_v590=global_par_k60c*x(195)-global_par_kd60*x(352);

% Reaction: id = v591, name = v591 (ErbB3:ErbB2)#P:GAP:Grb2:Sos  -> R_degraded  k60c kd60
	reaction_v591=global_par_k60c*x(192)-global_par_kd60*x(352);

% Reaction: id = v592, name = v592 (ErbB4:ErbB2)#P:GAP:Grb2:Sos  -> R_degraded  k60c kd60
	reaction_v592=global_par_k60c*x(191)-global_par_kd60*x(352);

% Reaction: id = v593, name = v593 (ErbB3:ErbB2)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GDP) -> R_degraded  k60c kd60
	reaction_v593=global_par_k60c*x(199)-global_par_kd60*x(352);

% Reaction: id = v594, name = v594 (ErbB4:ErbB2)#P:GAP:(Shc#P):Grb2:Sos:(Ras:GDP) -> R_degraded  k60c kd60
	reaction_v594=global_par_k60c*x(198)-global_par_kd60*x(352);

% Reaction: id = v595, name = v595 (ErbB3:ErbB2)#P:GAP:Grb2:Sos:(Ras:GDP)  -> R_degraded  k60c kd60
	reaction_v595=global_par_k60c*x(190)-global_par_kd60*x(352);

% Reaction: id = v596, name = v596 (ErbB4:ErbB2)#P:GAP:Grb2:Sos:(Ras:GDP) -> R_degraded  k60c kd60
	reaction_v596=global_par_k60c*x(189)-global_par_kd60*x(352);

% Reaction: id = v597, name = v597 (ErbB3:ErbB2)#P:GAP:Grb2:Sos:(Ras:GTP)  -> R_degraded  k60c kd60
	reaction_v597=global_par_k60c*x(188)-global_par_kd60*x(352);

% Reaction: id = v598, name = v598 (ErbB4:ErbB2)#P:GAP:Grb2:Sos:(Ras:GTP)  -> R_degraded  k60c kd60
	reaction_v598=global_par_k60c*x(187)-global_par_kd60*x(352);

% Reaction: id = v599, name = v599 EGF   -> EGF_degraded  k61 kd61
	reaction_v599=global_par_k61*x(289)-global_par_kd61*x(354);

% Reaction: id = v600, name = v600 (EGF:ErbB1:ErbB2)  -> R_degraded  k62b kd60b
	reaction_v600=global_par_k62b*x(22)-global_par_kd60b*x(352);

% Reaction: id = v601, name = v601 (EGF:ErbB1:ErbB3)  -> R_degraded  k62b kd60b
	reaction_v601=global_par_k62b*x(24)-global_par_kd60b*x(352);

% Reaction: id = v602, name = v602 (EGF:ErbB1:ErbB4)   -> R_degraded  k62b kd60b
	reaction_v602=global_par_k62b*x(26)-global_par_kd60b*x(352);

% Reaction: id = v603, name = v603 (HRG:ErbB3:ErbB1)  -> R_degraded  k62b kd60b
	reaction_v603=global_par_k62b*x(355)-global_par_kd60b*x(352);

% Reaction: id = v604, name = v604 (HRG:ErbB4:ErbB1)   -> R_degraded  k62b kd60b
	reaction_v604=global_par_k62b*x(356)-global_par_kd60b*x(352);

% Reaction: id = v605, name = v605 (HRG:ErbB3):ErbB2)  -> R_degraded  k62b kd60b
	reaction_v605=global_par_k62b*x(69)-global_par_kd60b*x(352);

% Reaction: id = v606, name = v606 (HRG:ErbB4):ErbB2)  -> R_degraded  k62b kd60b
	reaction_v606=global_par_k62b*x(71)-global_par_kd60b*x(352);

% Reaction: id = v607, name = v607 (ErbB3:ErbB2)  -> R_degraded  k62b kd60b
	reaction_v607=global_par_k62b*x(357)-global_par_kd60b*x(352);

% Reaction: id = v608, name = v608 (ErbB4:ErbB2)  -> R_degraded  k62b kd60b
	reaction_v608=global_par_k62b*x(358)-global_par_kd60b*x(352);

% Reaction: id = v609, name = v609 ERK#P#P +  2(EGF:ErbB1)#P:GAP:Grb2:Sos  -> 2(EGF:ErbB1)#P:GAP:Grb2:Sos:(ERK#P#P)  k64 kd64
	reaction_v609=global_par_k64*x(345)*x(76)-global_par_kd64*x(359);

% Reaction: id = v610, name = v610 (ERK#P#P)_i +  2(EGF:ErbB1)#P:GAP:Grb2:Sos  -> 2(EGF:ErbB1)#P:GAP:Grb2:Sos:(ERK#P#P)  k64 kd64
	reaction_v610=global_par_k64*x(346)*x(242)-global_par_kd64*x(360);

% Reaction: id = v611, name = v611 ERK#P#P +  2(EGF:ErbB1)#P:GAP:(Shc#P):Grb2:Sos  -> 2(EGF:ErbB1)#P:GAP:(Shc#P):Grb2:Sos:ERK#P#P  k64 kd64
	reaction_v611=global_par_k64*x(345)*x(84)-global_par_kd64*x(361);

% Reaction: id = v612, name = v612 (ERK#P#P)_i +  2(EGF:ErbB1)#P:GAP:(Shc#P):Grb2:Sos  -> 2(EGF:ErbB1)#P:GAP:(Shc#P):Grb2:Sos:(ERK#P#P)  k64 kd64
	reaction_v612=global_par_k64*x(346)*x(237)-global_par_kd64*x(362);

% Reaction: id = v613, name = v613 ERK#P#P +  Sos  -> (ERK#P#P):Sos  k64 kd64
	reaction_v613=global_par_k64*x(345)*x(301)-global_par_kd64*x(363);

% Reaction: id = v614, name = v614 (ERK#P#P)_i +  Sos  -> ((ERK#P#P):Sos)_i  k64 kd64
	reaction_v614=global_par_k64*x(346)*x(301)-global_par_kd64*x(364);

% Reaction: id = v615, name = v615 ERK#P#P +  2(EGF:ErbB1)#P:GAP:Grb2:Sos#P  -> 2(EGF:ErbB1)#P:GAP:Grb2:Sos:(ERK#P#P)  k65 kd65
	reaction_v615=global_par_k65*x(345)*x(365)-global_par_kd65*x(359);

% Reaction: id = v616, name = v616 ERK#P#P +  2(EGF:ErbB1)#P:GAP:(Shc#P):Grb2:(Sos#P)  -> 2(EGF:ErbB1)#P:GAP:(Shc#P):Grb2:Sos:ERK#P#P  k65 kd65
	reaction_v616=global_par_k65*x(345)*x(366)-global_par_kd65*x(361);

% Reaction: id = v617, name = v617 ERK#P#P +  Sos#P  -> (ERK#P#P):Sos  k65 kd65
	reaction_v617=global_par_k65*x(345)*x(367)-global_par_kd65*x(363);

% Reaction: id = v618, name = v618 (ERK#P#P)_i +  2(EGF:ErbB1)#P:GAP:Grb2:(Sos#P)  -> 2(EGF:ErbB1)#P:GAP:Grb2:Sos:(ERK#P#P)  k65 kd65
	reaction_v618=global_par_k65*x(346)*x(368)-global_par_kd65*x(360);

% Reaction: id = v619, name = v619 (ERK#P#P)_i +  2(EGF:ErbB1)#P:GAP:(Shc#P):Grb2:(Sos#P)  -> 2(EGF:ErbB1)#P:GAP:(Shc#P):Grb2:Sos:(ERK#P#P)  k65 kd65
	reaction_v619=global_par_k65*x(346)*x(369)-global_par_kd65*x(362);

% Reaction: id = v620, name = v620 (ERK#P#P)_i +  Sos#P  -> ((ERK#P#P):Sos)_i  k65 kd65
	reaction_v620=global_par_k65*x(346)*x(367)-global_par_kd65*x(364);

% Reaction: id = v621, name = v621 PI3K +  2(EGF:ErbB1)#P:GAP:Grb2:(Gab1#P##)  -> 2(EGF:ErbB1)#P:GAP:Grb2:Gab1#P:PI3K  k66 kd66
	reaction_v621=global_par_k66*x(370)*x(371)-global_par_kd66*x(372);

% Reaction: id = v622, name = v622 PI3K +  (ErbB1:ErbB4)#P:GAP:Grb2:Gab1#P  -> (ErbB1:ErbB4)#P:GAP:Grb2:Gab1#P:PI3K  k66 kd66
	reaction_v622=global_par_k66*x(370)*x(373)-global_par_kd66*x(374);

% Reaction: id = v623, name = v623 PI3K +  (ErbB1:ErbB2)#P:GAP:Grb2:Gab1#P  -> (ErbB1:ErbB2)#P:GAP:Grb2:Gab1#P:PI3K  k66 kd66
	reaction_v623=global_par_k66*x(370)*x(375)-global_par_kd66*x(376);

% Reaction: id = v624, name = v624 PI3K +  (ErbB1:ErbB3)#P:GAP:Grb2:Gab1#P  -> (ErbB1:ErbB3)#P:GAP:Grb2:Gab1#P:PI3K  k67 kd67
	reaction_v624=global_par_k67*x(370)*x(377)-global_par_kd67*x(378);

% Reaction: id = v625, name = v625 PI3K +  2(ErbB2)#P:GAP:Grb2:Gab1#P  -> 2(ErbB2)#P:GAP:Grb2:Gab1#P:PI3K  k67 kd67
	reaction_v625=global_par_k67*x(370)*x(379)-global_par_kd67*x(380);

% Reaction: id = v626, name = v626 PI3K +  (ErbB3:ErbB2)#P:GAP:Grb2:Gab1#P  -> (ErbB3:ErbB2)#P:GAP:Grb2:Gab1#P:PI3K  k67 kd67
	reaction_v626=global_par_k67*x(370)*x(381)-global_par_kd67*x(382);

% Reaction: id = v627, name = v627 PI3K +  (ErbB4:ErbB2)#P:GAP:Grb2:Gab1#P  -> (ErbB4:ErbB2)#P:GAP:Grb2:Gab1#P:PI3K  k66 kd66
	reaction_v627=global_par_k66*x(370)*x(383)-global_par_kd66*x(384);

% Reaction: id = v628, name = v628 PIP3 +  (ErbB3:ErbB2)#P:GAP:Grb2:Gab1#P:PI3K  -> (ErbB3:ErbB2)#P:GAP:Grb2:Gab1#P:PI3K:PIP2  k68 kd68b
	reaction_v628=global_par_k68*x(385)*x(382)-global_par_kd68b*x(386);

% Reaction: id = v629, name = v629 PIP3 +  2(ErbB2)#P:GAP:Grb2:Gab1#P:PI3K  -> 2(ErbB2)#P:GAP:Grb2:Gab1#P:PI3K:PIP2  k68 kd68
	reaction_v629=global_par_k68*x(385)*x(380)-global_par_kd68*x(387);

% Reaction: id = v630, name = v630 2(EGF:ErbB1)#P:GAP:Grb2:Gab1#P:PI3K +  PIP3  -> 2(EGF:ErbB1)#P:GAP:Grb2:Gab1#P:PI3K:PIP2  k68 kd68
	reaction_v630=global_par_k68*x(372)*x(385)-global_par_kd68*x(388);

% Reaction: id = v631, name = v631 PIP3 +  (ErbB1:ErbB2)#P:GAP:Grb2:Gab1#P:PI3K  -> (ErbB1:ErbB2)#P:GAP:Grb2:Gab1#P:PI3K:PIP2  k68 kd68
	reaction_v631=global_par_k68*x(385)*x(376)-global_par_kd68*x(389);

% Reaction: id = v632, name = v632 PIP3 +  (ErbB1:ErbB3)#P:GAP:Grb2:Gab1#P:PI3K  -> (ErbB1:ErbB3)#P:GAP:Grb2:Gab1#P:PI3K:PIP2  k68 kd68
	reaction_v632=global_par_k68*x(385)*x(378)-global_par_kd68*x(390);

% Reaction: id = v633, name = v633 PIP3 +  (ErbB1:ErbB4)#P:GAP:Grb2:Gab1#P:PI3K  -> (ErbB1:ErbB4)#P:GAP:Grb2:Gab1#P:PI3K:PIP2  k68 kd68
	reaction_v633=global_par_k68*x(385)*x(374)-global_par_kd68*x(391);

% Reaction: id = v634, name = v634 PIP3 +  (ErbB3:ErbB2)#P:GAP:Grb2:Gab1#P:PI3K:PIP2  -> (ErbB3:ErbB2)#P:GAP:Grb2:Gab1#P:PI3K:(PIP2)2  k68 kd68b
	reaction_v634=global_par_k68*x(385)*x(386)-global_par_kd68b*x(392);

% Reaction: id = v635, name = v635 PIP3 +  (ErbB3:ErbB2)#P:GAP:Grb2:Gab1#P:PI3K:(PIP2)2  -> (ErbB3:ErbB2)#P:GAP:Grb2:Gab1#P:PI3K:(PIP2)3  k68 kd68b
	reaction_v635=global_par_k68*x(385)*x(392)-global_par_kd68b*x(393);

% Reaction: id = v636, name = v636 PIP3 +  (ErbB3:ErbB2)#P:GAP:Grb2:Gab1#P:PI3K:(PIP2)3  -> (ErbB3:ErbB2)#P:GAP:Grb2:Gab1#P:PI3K:(PIP2)4  k68 kd68b
	reaction_v636=global_par_k68*x(385)*x(393)-global_par_kd68b*x(394);

% Reaction: id = v637, name = v637 PIP3 +  (ErbB3:ErbB2)#P:GAP:Grb2:Gab1#P:PI3K:(PIP2)4  -> (ErbB3:ErbB2)#P:GAP:Grb2:Gab1#P:PI3K:(PIP2)5  k68 kd68b
	reaction_v637=global_par_k68*x(385)*x(394)-global_par_kd68b*x(395);

% Reaction: id = v638, name = v638 PIP3 +  (ErbB3:ErbB2)#P:GAP:Grb2:Gab1#P:PI3K:(PIP2)5  -> (ErbB3:ErbB2)#P:GAP:Grb2:Gab1#P:PI3K:(PIP2)6  k68 kd68b
	reaction_v638=global_par_k68*x(385)*x(395)-global_par_kd68b*x(396);

% Reaction: id = v639, name = v639 PIP3 +  AKT  -> PIP3:AKT  k69 kd69
	reaction_v639=global_par_k69*x(385)*x(397)-global_par_kd69*x(398);

% Reaction: id = v640, name = v640 PIP3 +  AKT#P  -> PIP3:AKT#P  k69 kd69
	reaction_v640=global_par_k69*x(385)*x(399)-global_par_kd69*x(400);

% Reaction: id = v641, name = v641 PDK1 +  PIP3:AKT#P  -> PIP3:AKT#P:PDK1  k70 kd70
	reaction_v641=global_par_k70*x(401)*x(400)-global_par_kd70*x(402);

% Reaction: id = v642, name = v642 PDK1 +  PIP3:AKT  -> PIP3:AKT:PDK1  k70 kd70
	reaction_v642=global_par_k70*x(401)*x(398)-global_par_kd70*x(403);

% Reaction: id = v643, name = v643 PIP3:PDK1 +  AKT#P  -> PIP3:AKT:PDK1  k71 kd71
	reaction_v643=global_par_k71*x(404)*x(399)-global_par_kd71*x(403);

% Reaction: id = v644, name = v644 AKT#P#P +  PIP3:PDK1  -> PIP3:AKT#P:PDK1  k72 kd72
	reaction_v644=global_par_k72*x(405)*x(404)-global_par_kd72*x(402);

% Reaction: id = v645, name = v645 AKT#P#P +  Pase4  -> AKT#P#P:Pase4  k74 kd74
	reaction_v645=global_par_k74*x(405)*x(406)-global_par_kd74*x(407);

% Reaction: id = v646, name = v646 AKT#P +  Pase4  -> AKT#P:Pase4  k73 kd73
	reaction_v646=global_par_k73*x(399)*x(406)-global_par_kd73*x(408);

% Reaction: id = v647, name = v647 AKT +  Pase4  -> AKT#P:Pase4  k75 kd75
	reaction_v647=global_par_k75*x(397)*x(406)-global_par_kd75*x(408);

% Reaction: id = v648, name = v648 AKT#P +  Pase4  -> AKT#P#P:Pase4  k75 kd75
	reaction_v648=global_par_k75*x(399)*x(406)-global_par_kd75*x(407);

% Reaction: id = v649, name = v649 PDK1 +  PIP3  -> PIP3:PDK1  k76 kd76
	reaction_v649=global_par_k76*x(401)*x(385)-global_par_kd76*x(404);

% Reaction: id = v650, name = v650 RTK_Pase +  (ErbB1:ErbB3)#P  -> (ErbB1:ErbB3)#P:RTK_Pase  k94b kd94
	reaction_v650=global_par_k94b*x(409)*x(265)-global_par_kd94*x(410);

% Reaction: id = v651, name = v651 RTK_Pase +  (ErbB1:ErbB4)#P  -> (ErbB1:ErbB4)#P:RTK_Pase  k94b kd94
	reaction_v651=global_par_k94b*x(409)*x(267)-global_par_kd94*x(411);

% Reaction: id = v652, name = v652 RTK_Pase +  2(EGF:ErbB1)#P  -> 2(EGF:ErbB1)#P:RTK_Pase  k94 kd94
	reaction_v652=global_par_k94*x(409)*x(245)-global_par_kd94*x(412);

% Reaction: id = v653, name = v653 RTK_Pase +  2(ErbB2)#P  -> 2(ErbB2)#P:RTK_Pase  k94 kd94
	reaction_v653=global_par_k94*x(409)*x(269)-global_par_kd94*x(413);

% Reaction: id = v654, name = v654 RTK_Pase +  (ErbB3:ErbB2)#P  -> (ErbB2:ErbB3)#P:RTK_Pase  k94 kd94
	reaction_v654=global_par_k94*x(409)*x(270)-global_par_kd94*x(414);

% Reaction: id = v655, name = v655 RTK_Pase +  (ErbB4:ErbB2)#P  -> (ErbB2:ErbB4)#P:RTK_Pase  k94 kd94
	reaction_v655=global_par_k94*x(409)*x(271)-global_par_kd94*x(415);

% Reaction: id = v656, name = v656 RTK_Pase +  (ErbB1:ErbB2)#P  -> (ErbB1:ErbB2)#P:RTK_Pase  k94 kd94
	reaction_v656=global_par_k94*x(409)*x(263)-global_par_kd94*x(416);

% Reaction: id = v657, name = v657 RTK_Pase +  (EGF:ErbB1:ErbB2)  -> (ErbB1:ErbB2)#P:RTK_Pase  k95 kd95
	reaction_v657=global_par_k95*x(409)*x(22)-global_par_kd95*x(416);

% Reaction: id = v658, name = v658 RTK_Pase +  (EGF:ErbB1:ErbB3)  -> (ErbB1:ErbB3)#P:RTK_Pase  k95 kd95
	reaction_v658=global_par_k95*x(409)*x(24)-global_par_kd95*x(410);

% Reaction: id = v659, name = v659 RTK_Pase +  (EGF:ErbB1:ErbB4)  -> (ErbB1:ErbB4)#P:RTK_Pase  k95 kd95
	reaction_v659=global_par_k95*x(409)*x(26)-global_par_kd95*x(411);

% Reaction: id = v660, name = v660 RTK_Pase +  2(EGF:ErbB1:ATP)  -> 2(EGF:ErbB1)#P:RTK_Pase  k95 kd95
	reaction_v660=global_par_k95*x(409)*x(14)-global_par_kd95*x(412);

% Reaction: id = v661, name = v661 RTK_Pase +  2(ErbB2)  -> 2(ErbB2)#P:RTK_Pase  k95 kd95
	reaction_v661=global_par_k95*x(409)*x(353)-global_par_kd95*x(413);

% Reaction: id = v662, name = v662 RTK_Pase +  (ErbB3:ErbB2)  -> (ErbB2:ErbB3)#P:RTK_Pase  k95 kd95
	reaction_v662=global_par_k95*x(409)*x(357)-global_par_kd95*x(414);

% Reaction: id = v663, name = v663 RTK_Pase +  (ErbB4:ErbB2)  -> (ErbB2:ErbB4)#P:RTK_Pase  k95 kd95
	reaction_v663=global_par_k95*x(409)*x(358)-global_par_kd95*x(415);

% Reaction: id = v664, name = v664 ErbB2#P +  ErbB2#P  -> 2(ErbB2)#P  k96 kd96
	reaction_v664=global_par_k96*x(417)*x(417)-global_par_kd96*x(268);

% Reaction: id = v665, name = v665 ErbB1  +  Inh  -> ErbB1:Inh  k97 kd97
	reaction_v665=global_par_k97*x(418)*x(419)-global_par_kd97*x(8);

% Reaction: id = v666, name = v666 ErbB2 +  Inh  -> ErbB2:Inh  k98 kd98
	reaction_v666=global_par_k98*x(15)*x(419)-global_par_kd98*x(30);

% Reaction: id = v667, name = v667 ErbB4 +  Inh  -> ErbB4:Inh  k99 kd99
	reaction_v667=global_par_k99*x(19)*x(419)-global_par_kd99*x(32);

% Reaction: id = v668, name = v668 ErbB3 +  Inh  -> ErbB3:Inh  k100 kd100
	reaction_v668=global_par_k100*x(17)*x(419)-global_par_kd100*x(34);

% Reaction: id = v669, name = v669 Sos#P +  2(EGF:ErbB1)#P:GAP:Grb2  -> 2(EGF:ErbB1)#P:GAP:Grb2:Sos#P  k101 kd101
	reaction_v669=global_par_k101*x(367)*x(73)-global_par_kd101*x(365);

% Reaction: id = v670, name = v670 Sos#P +  2(EGF:ErbB1)#P:GAP:Grb2  -> 2(EGF:ErbB1)#P:GAP:Grb2:(Sos#P)  k101 kd101
	reaction_v670=global_par_k101*x(367)*x(241)-global_par_kd101*x(368);

% Reaction: id = v671, name = v671 Sos#P +  2(EGF:ErbB1)#P:GAP:(Shc#P):Grb2  -> 2(EGF:ErbB1)#P:GAP:(Shc#P):Grb2:(Sos#P)  k101 kd101
	reaction_v671=global_par_k101*x(367)*x(82)-global_par_kd101*x(366);

% Reaction: id = v672, name = v672 Sos#P +  2(EGF:ErbB1)#P:GAP:(Shc#P):Grb2  -> 2(EGF:ErbB1)#P:GAP:(Shc#P):Grb2:(Sos#P)  k101 kd101
	reaction_v672=global_par_k101*x(367)*x(238)-global_par_kd101*x(369);

% Reaction: id = v673, name = v673 EGF:ErbB1#P +  EGF:ErbB1#P  -> 2(EGF:ErbB1)#P  k102 kd102
	reaction_v673=global_par_k102*x(420)*x(420)-global_par_kd102*x(244);

% Reaction: id = v674, name = v674 ErbB2#P +  EGF:ErbB1#P  -> (ErbB1:ErbB2)#P  k102 kd102
	reaction_v674=global_par_k102*x(417)*x(420)-global_par_kd102*x(262);

% Reaction: id = v675, name = v675 EGF:ErbB1#P +  ErbB3#P  -> (ErbB1:ErbB3)#P  k102 kd102
	reaction_v675=global_par_k102*x(420)*x(421)-global_par_kd102*x(264);

% Reaction: id = v676, name = v676 EGF:ErbB1#P +  ErbB4#P   -> (ErbB1:ErbB4)#P  k102 kd102
	reaction_v676=global_par_k102*x(420)*x(422)-global_par_kd102*x(266);

% Reaction: id = v677, name = v677 ErbB2#P +  ErbB2  -> ErbB2:ErbB2#P  k103 kd103
	reaction_v677=global_par_k103*x(417)*x(15)-global_par_kd103*x(45);

% Reaction: id = v678, name = v678 ErbB2 +  ErbB3  -> (ErbB2:ErbB3)  k103 kd103
	reaction_v678=global_par_k103*x(15)*x(17)-global_par_kd103*x(4);

% Reaction: id = v679, name = v679 ErbB2 +  ErbB4  -> ErbB2:ErbB4  k103 kd103
	reaction_v679=global_par_k103*x(15)*x(19)-global_par_kd103*x(6);

% Reaction: id = v680, name = v680 ErbB2#P +  ErbB3#P  -> (ErbB3:ErbB2)#P  k103 kd103
	reaction_v680=global_par_k103*x(417)*x(421)-global_par_kd103*x(5);

% Reaction: id = v681, name = v681 ErbB2#P +  ErbB4#P   -> (ErbB4:ErbB2)#P  k103 kd103
	reaction_v681=global_par_k103*x(417)*x(422)-global_par_kd103*x(7);

% Reaction: id = v682, name = v682 ErbB2#P +  ErbB2:Inh  -> ErbB2:ErbB2:Inh  k103 kd103
	reaction_v682=global_par_k103*x(417)*x(30)-global_par_kd103*x(423);

% Reaction: id = v683, name = v683 ErbB2:Inh +  ErbB3  -> ErbB3:ErbB2:Inh  k103 kd103
	reaction_v683=global_par_k103*x(30)*x(17)-global_par_kd103*x(424);

% Reaction: id = v684, name = v684 ErbB2:Inh +  ErbB4  -> ErbB4:ErbB2:Inh  k103 kd103
	reaction_v684=global_par_k103*x(30)*x(19)-global_par_kd103*x(425);

% Reaction: id = v685, name = v685 ErbB2 +  ErbB4:Inh  -> ErbB4:Inh:ErbB2  k103 kd103
	reaction_v685=global_par_k103*x(15)*x(32)-global_par_kd103*x(426);

% Reaction: id = v686, name = v686 Shp  +  PIP2  -> PIP3:Shp  k104 kd104
	reaction_v686=global_par_k104*x(427)*x(428)-global_par_kd104*x(429);

% Reaction: id = v687, name = v687 PTEN +  PIP2  -> PIP3:PTEN  k104 kd104
	reaction_v687=global_par_k104*x(430)*x(428)-global_par_kd104*x(431);

% Reaction: id = v688, name = v688 2(EGF:ErbB1)#P:GAP:Grb2 +  Gab1  -> 2(EGF:ErbB1)#P:GAP:Grb2:Gab1  k105 kd105
	reaction_v688=global_par_k105*x(73)*x(432)-global_par_kd105*x(59);

% Reaction: id = v689, name = v689 (ErbB1:ErbB2)#P:GAP:Grb2 +  Gab1  -> (ErbB1:ErbB2)#P:GAP:Grb2:Gab1  k105 kd105
	reaction_v689=global_par_k105*x(114)*x(432)-global_par_kd105*x(47);

% Reaction: id = v690, name = v690 (ErbB1:ErbB3)#P:GAP:Grb2 +  Gab1  -> (ErbB1:ErbB3)#P:GAP:Grb2:Gab1  k105 kd105
	reaction_v690=global_par_k105*x(116)*x(432)-global_par_kd105*x(49);

% Reaction: id = v691, name = v691 (ErbB1:ErbB4)#P:GAP:Grb2 +  Gab1  -> (ErbB1:ErbB4)#P:GAP:Grb2:Gab1  k105 kd105
	reaction_v691=global_par_k105*x(118)*x(432)-global_par_kd105*x(51);

% Reaction: id = v692, name = v692 2(ErbB2)#P:GAP:Grb2 +  Gab1  -> 2(ErbB2)#P:GAP:Grb2:Gab1  k105 kd105
	reaction_v692=global_par_k105*x(146)*x(432)-global_par_kd105*x(53);

% Reaction: id = v693, name = v693 (ErbB3:ErbB2)#P:GAP:Grb2 +  Gab1  -> (ErbB3:ErbB2)#P:GAP:Grb2:Gab1  k105 kd105
	reaction_v693=global_par_k105*x(168)*x(432)-global_par_kd105*x(55);

% Reaction: id = v694, name = v694 (ErbB4:ErbB2)#P:GAP:Grb2 +  Gab1  -> (ErbB4:ErbB2)#P:GAP:Grb2:Gab1  k105 kd105
	reaction_v694=global_par_k105*x(172)*x(432)-global_par_kd105*x(57);

% Reaction: id = v695, name = v695 PIP2 +  2(EGF:ErbB1)#P:GAP:Grb2:Gab1#P:PI3K  -> 2(EGF:ErbB1)#P:GAP:Grb2:Gab1#P:PI3K:PIP2  k106b kd106b
	reaction_v695=global_par_k106b*x(428)*x(372)-global_par_kd106b*x(388);

% Reaction: id = v696, name = v696 PIP2 +  (ErbB1:ErbB2)#P:GAP:Grb2:Gab1#P:PI3K  -> (ErbB1:ErbB2)#P:GAP:Grb2:Gab1#P:PI3K:PIP2  k106b kd106b
	reaction_v696=global_par_k106b*x(428)*x(376)-global_par_kd106b*x(389);

% Reaction: id = v697, name = v697 PIP2 +  (ErbB1:ErbB3)#P:GAP:Grb2:Gab1#P:PI3K  -> (ErbB1:ErbB3)#P:GAP:Grb2:Gab1#P:PI3K:PIP2  k106b kd106b
	reaction_v697=global_par_k106b*x(428)*x(378)-global_par_kd106b*x(390);

% Reaction: id = v698, name = v698 PIP2 +  (ErbB1:ErbB4)#P:GAP:Grb2:Gab1#P:PI3K  -> (ErbB1:ErbB4)#P:GAP:Grb2:Gab1#P:PI3K:PIP2  k106b kd106b
	reaction_v698=global_par_k106b*x(428)*x(374)-global_par_kd106b*x(391);

% Reaction: id = v699, name = v699 PIP2 +  2(ErbB2)#P:GAP:Grb2:Gab1#P:PI3K  -> 2(ErbB2)#P:GAP:Grb2:Gab1#P:PI3K:PIP2  k106 kd106
	reaction_v699=global_par_k106*x(428)*x(380)-global_par_kd106*x(387);

% Reaction: id = v700, name = v700 PIP2 +  (ErbB3:ErbB2)#P:GAP:Grb2:Gab1#P:PI3K  -> (ErbB3:ErbB2)#P:GAP:Grb2:Gab1#P:PI3K:PIP2  k106 kd106
	reaction_v700=global_par_k106*x(428)*x(382)-global_par_kd106*x(386);

% Reaction: id = v701, name = v701 PIP2 +  (ErbB4:ErbB2)#P:GAP:Grb2:Gab1#P:PI3K  -> PI3K  k106 kd106
	reaction_v701=global_par_k106*x(428)*x(384)-global_par_kd106*x(433);

% Reaction: id = v702, name = v702 PIP2 +  (ErbB3:ErbB2)#P:GAP:Grb2:Gab1#P:PI3K:PIP2  -> (ErbB3:ErbB2)#P:GAP:Grb2:Gab1#P:PI3K:(PIP2)2  k106 kd106
	reaction_v702=global_par_k106*x(428)*x(386)-global_par_kd106*x(392);

% Reaction: id = v703, name = v703 PIP2 +  (ErbB3:ErbB2)#P:GAP:Grb2:Gab1#P:PI3K:(PIP2)2  -> (ErbB3:ErbB2)#P:GAP:Grb2:Gab1#P:PI3K:(PIP2)3  k106 kd106
	reaction_v703=global_par_k106*x(428)*x(392)-global_par_kd106*x(393);

% Reaction: id = v704, name = v704 PIP2 +  (ErbB3:ErbB2)#P:GAP:Grb2:Gab1#P:PI3K:(PIP2)3  -> (ErbB3:ErbB2)#P:GAP:Grb2:Gab1#P:PI3K:(PIP2)4  k106 kd106
	reaction_v704=global_par_k106*x(428)*x(393)-global_par_kd106*x(394);

% Reaction: id = v705, name = v705 PIP2 +  (ErbB3:ErbB2)#P:GAP:Grb2:Gab1#P:PI3K:(PIP2)4  -> (ErbB3:ErbB2)#P:GAP:Grb2:Gab1#P:PI3K:(PIP2)5  k106 kd106
	reaction_v705=global_par_k106*x(428)*x(394)-global_par_kd106*x(395);

% Reaction: id = v706, name = v706 PIP2 +  (ErbB3:ErbB2)#P:GAP:Grb2:Gab1#P:PI3K:(PIP2)5  -> (ErbB3:ErbB2)#P:GAP:Grb2:Gab1#P:PI3K:(PIP2)6  k106 kd106
	reaction_v706=global_par_k106*x(428)*x(395)-global_par_kd106*x(396);

% Reaction: id = v707, name = v707 Shp2 +  (ErbB1:ErbB2)#P:GAP:Grb2:Gab1#P  -> (ErbB1:ErbB2)#P:GAP:Grb2:Gab1#P:Shp2  k107 kd107
	reaction_v707=global_par_k107*x(434)*x(375)-global_par_kd107*x(435);

% Reaction: id = v708, name = v708 Shp2 +  (ErbB1:ErbB3)#P:GAP:Grb2:Gab1#P  -> (ErbB1:ErbB3)#P:GAP:Grb2:Gab1#P:Shp2  k107 kd107
	reaction_v708=global_par_k107*x(434)*x(377)-global_par_kd107*x(436);

% Reaction: id = v709, name = v709 Shp2 +  (ErbB1:ErbB4)#P:GAP:Grb2:Gab1#P  -> (ErbB1:ErbB4)#P:GAP:Grb2:Gab1#P:Shp2  k107 kd107
	reaction_v709=global_par_k107*x(434)*x(373)-global_par_kd107*x(437);

% Reaction: id = v710, name = v710 Shp2 +  2(ErbB2)#P:GAP:Grb2:Gab1#P  -> 2(ErbB2)#P:GAP:Grb2:Gab1#P:Shp2  k107 kd107
	reaction_v710=global_par_k107*x(434)*x(379)-global_par_kd107*x(438);

% Reaction: id = v711, name = v711 Shp2 +  (ErbB3:ErbB2)#P:GAP:Grb2:Gab1#P  -> (ErbB3:ErbB2)#P:GAP:Grb2:Gab1#P:Shp2  k107 kd107
	reaction_v711=global_par_k107*x(434)*x(381)-global_par_kd107*x(439);

% Reaction: id = v712, name = v712 Shp2 +  (ErbB4:ErbB2)#P:GAP:Grb2:Gab1#P  -> (ErbB4:ErbB2)#P:GAP:Grb2:Gab1#P:Shp2  k107 kd107
	reaction_v712=global_par_k107*x(434)*x(383)-global_par_kd107*x(440);

% Reaction: id = v713, name = v713 Shp2 +  2(EGF:ErbB1)#P:GAP:Grb2:(Gab1#P##)  -> 2(EGF:ErbB1)#P:GAP:Grb2:(Gab1#P):Shp2  k107 kd107
	reaction_v713=global_par_k107*x(434)*x(371)-global_par_kd107*x(441);

% Reaction: id = v714, name = v714 Shp2 +  (ErbB1:ErbB2)#P:GAP:Grb2:Gab1  -> (ErbB1:ErbB2)#P:GAP:Grb2:Gab1#P:Shp2  k108 kd108
	reaction_v714=global_par_k108*x(434)*x(47)-global_par_kd108*x(435);

% Reaction: id = v715, name = v715 Shp2 +  (ErbB1:ErbB3)#P:GAP:Grb2:Gab1  -> (ErbB1:ErbB3)#P:GAP:Grb2:Gab1#P:Shp2  k108 kd108
	reaction_v715=global_par_k108*x(434)*x(49)-global_par_kd108*x(436);

% Reaction: id = v716, name = v716 Shp2 +  (ErbB1:ErbB4)#P:GAP:Grb2:Gab1  -> (ErbB1:ErbB4)#P:GAP:Grb2:Gab1#P:Shp2  k108 kd108
	reaction_v716=global_par_k108*x(434)*x(51)-global_par_kd108*x(437);

% Reaction: id = v717, name = v717 Shp2 +  2(ErbB2)#P:GAP:Grb2:Gab1  -> 2(ErbB2)#P:GAP:Grb2:Gab1#P:Shp2  k108 kd108
	reaction_v717=global_par_k108*x(434)*x(53)-global_par_kd108*x(438);

% Reaction: id = v718, name = v718 Shp2 +  (ErbB3:ErbB2)#P:GAP:Grb2:Gab1  -> (ErbB3:ErbB2)#P:GAP:Grb2:Gab1#P:Shp2  k108 kd108
	reaction_v718=global_par_k108*x(434)*x(55)-global_par_kd108*x(439);

% Reaction: id = v719, name = v719 Shp2 +  (ErbB4:ErbB2)#P:GAP:Grb2:Gab1  -> (ErbB4:ErbB2)#P:GAP:Grb2:Gab1#P:Shp2  k108 kd108
	reaction_v719=global_par_k108*x(434)*x(57)-global_par_kd108*x(440);

% Reaction: id = v720, name = v720 Shp2 +  2(EGF:ErbB1)#P:GAP:Grb2:Gab1  -> 2(EGF:ErbB1)#P:GAP:Grb2:(Gab1#P):Shp2  k108 kd108
	reaction_v720=global_par_k108*x(434)*x(59)-global_par_kd108*x(441);

% Reaction: id = v721, name = v721 PIP3 +  PTEN  -> PIP3:PTEN  k109 kd109
	reaction_v721=global_par_k109*x(385)*x(430)-global_par_kd109*x(431);

% Reaction: id = v722, name = v722 PIP3 +  Shp   -> PIP3:Shp  k109 kd109
	reaction_v722=global_par_k109*x(385)*x(427)-global_par_kd109*x(429);

% Reaction: id = v723, name = v723 ERK#P#P +  2(EGF:ErbB1)#P:GAP:Grb2:(Gab1#P##)  -> 2(EGF:ErbB1)#P:GAP:Grb2:(Gab1#P):ERK#P#P  k110 kd110
	reaction_v723=global_par_k110*x(345)*x(371)-global_par_kd110*x(442);

% Reaction: id = v724, name = v724 (ERK#P#P)_i +  2(EGF:ErbB1)#P:GAP:Grb2:(Gab1#P##)  -> 2(EGF:ErbB1)#P:GAP:Grb2:(Gab1#P):ERK#P#P_i  k110 kd110
	reaction_v724=global_par_k110*x(346)*x(371)-global_par_kd110*x(443);

% Reaction: id = v725, name = v725 ERK#P#P +  (ErbB1:ErbB2)#P:GAP:Grb2:Gab1#P  -> (ErbB1:ErbB2)#P:GAP:Grb2:Gab1#P:ERK#P#P  k110 kd110
	reaction_v725=global_par_k110*x(345)*x(375)-global_par_kd110*x(444);

% Reaction: id = v726, name = v726 (ERK#P#P)_i +  (ErbB1:ErbB2)#P:GAP:Grb2:Gab1#P  -> (ErbB1:ErbB2)#P:GAP:Grb2:Gab1#P:ERK#P#P_i  k110 kd110
	reaction_v726=global_par_k110*x(346)*x(375)-global_par_kd110*x(445);

% Reaction: id = v727, name = v727 ERK#P#P +  (ErbB1:ErbB3)#P:GAP:Grb2:Gab1#P  -> (ErbB1:ErbB3)#P:GAP:Grb2:Gab1#P:ERK#P#P  k110 kd110
	reaction_v727=global_par_k110*x(345)*x(377)-global_par_kd110*x(446);

% Reaction: id = v728, name = v728 (ERK#P#P)_i +  (ErbB1:ErbB3)#P:GAP:Grb2:Gab1#P  -> (ErbB1:ErbB3)#P:GAP:Grb2:Gab1#P:ERK#P#P_i  k110 kd110
	reaction_v728=global_par_k110*x(346)*x(377)-global_par_kd110*x(447);

% Reaction: id = v729, name = v729 ERK#P#P +  (ErbB1:ErbB4)#P:GAP:Grb2:Gab1#P  -> (ErbB1:ErbB4)#P:GAP:Grb2:Gab1#P_ERK#P#P  k110 kd110
	reaction_v729=global_par_k110*x(345)*x(373)-global_par_kd110*x(448);

% Reaction: id = v730, name = v730 (ERK#P#P)_i +  (ErbB1:ErbB4)#P:GAP:Grb2:Gab1#P  -> (ErbB1:ErbB4)#P:GAP:Grb2:Gab1#P:ERK#P#P_i  k110 kd110
	reaction_v730=global_par_k110*x(346)*x(373)-global_par_kd110*x(449);

% Reaction: id = v731, name = v731 ERK#P#P +  2(ErbB2)#P:GAP:Grb2:Gab1#P  -> 2(ErbB2)#P:GAP:Grb2:Gab1#P:ERK#P#P  k110 kd110
	reaction_v731=global_par_k110*x(345)*x(379)-global_par_kd110*x(450);

% Reaction: id = v732, name = v732 (ERK#P#P)_i +  2(ErbB2)#P:GAP:Grb2:Gab1#P  -> 2(ErbB2)#P:GAP:Grb2:Gab1#P:ERK#P#P_i  k110 kd110
	reaction_v732=global_par_k110*x(346)*x(379)-global_par_kd110*x(451);

% Reaction: id = v733, name = v733 ERK#P#P +  (ErbB3:ErbB2)#P:GAP:Grb2:Gab1#P  -> (ErbB3:ErbB2)#P:GAP:Grb2:Gab1#P:ERK#P#P  k110 kd110
	reaction_v733=global_par_k110*x(345)*x(381)-global_par_kd110*x(452);

% Reaction: id = v734, name = v734 (ERK#P#P)_i +  (ErbB3:ErbB2)#P:GAP:Grb2:Gab1#P  -> (ErbB3:ErbB2)#P:GAP:Grb2:Gab1#P:ERK#P#P_i  k110 kd110
	reaction_v734=global_par_k110*x(346)*x(381)-global_par_kd110*x(453);

% Reaction: id = v735, name = v735 ERK#P#P +  (ErbB4:ErbB2)#P:GAP:Grb2:Gab1#P  -> (ErbB4:ErbB2)#P:GAP:Grb2:Gab1#P:ERK#P#P  k110 kd110
	reaction_v735=global_par_k110*x(345)*x(383)-global_par_kd110*x(454);

% Reaction: id = v736, name = v736 (ERK#P#P)_i +  (ErbB4:ErbB2)#P:GAP:Grb2:Gab1#P  -> (ErbB4:ErbB2)#P:GAP:Grb2:Gab1#P:ERK#P#P_i  k110 kd110
	reaction_v736=global_par_k110*x(346)*x(383)-global_par_kd110*x(455);

% Reaction: id = v737, name = v737 ERK#P#P +  ErbB3/4:ErbB2:Gab1#P##  -> (ErbB3:ErbB2)#P:GAP:Grb2:Gab1#P:ERK#P#P  k111 kd111
	reaction_v737=global_par_k111*x(345)*x(456)-global_par_kd111*x(452);

% Reaction: id = v738, name = v738 (ERK#P#P)_i +  ErbB3/4:ErbB2:Gab1#P##  -> (ErbB3:ErbB2)#P:GAP:Grb2:Gab1#P:ERK#P#P_i  k111 kd111
	reaction_v738=global_par_k111*x(346)*x(456)-global_par_kd111*x(453);

% Reaction: id = v739, name = v739 ERK#P#P +  2(ErbB2)2:Gab1#P##  -> 2(ErbB2)#P:GAP:Grb2:Gab1#P:ERK#P#P  k111 kd111
	reaction_v739=global_par_k111*x(345)*x(457)-global_par_kd111*x(450);

% Reaction: id = v740, name = v740 (ERK#P#P)_i +  2(ErbB2)2:Gab1#P##  -> 2(ErbB2)#P:GAP:Grb2:Gab1#P:ERK#P#P_i  k111 kd111
	reaction_v740=global_par_k111*x(346)*x(457)-global_par_kd111*x(451);

% Reaction: id = v741, name = v741 ERK#P#P +  (ErbB1:ErbB4)#P:GAP:Grb2:Gab1##P  -> (ErbB1:ErbB4)#P:GAP:Grb2:Gab1#P_ERK#P#P  k111 kd111
	reaction_v741=global_par_k111*x(345)*x(458)-global_par_kd111*x(448);

% Reaction: id = v742, name = v742 (ERK#P#P)_i +  (ErbB1:ErbB4)#P:GAP:Grb2:Gab1##P  -> (ErbB1:ErbB4)#P:GAP:Grb2:Gab1#P:ERK#P#P_i  k111 kd111
	reaction_v742=global_par_k111*x(346)*x(458)-global_par_kd111*x(449);

% Reaction: id = v743, name = v743 ERK#P#P +  (ErbB1:ErbB3)#P:GAP:Grb2:Gab1##P  -> (ErbB1:ErbB3)#P:GAP:Grb2:Gab1#P:ERK#P#P  k111 kd111
	reaction_v743=global_par_k111*x(345)*x(459)-global_par_kd111*x(446);

% Reaction: id = v744, name = v744 (ERK#P#P)_i +  (ErbB1:ErbB3)#P:GAP:Grb2:Gab1##P  -> (ErbB1:ErbB3)#P:GAP:Grb2:Gab1#P:ERK#P#P_i  k111 kd111
	reaction_v744=global_par_k111*x(346)*x(459)-global_par_kd111*x(447);

% Reaction: id = v745, name = v745 ERK#P#P +  ErbB1:ErbB:Gab1#P##  -> (ErbB1:ErbB2)#P:GAP:Grb2:Gab1#P:ERK#P#P  k111 kd111
	reaction_v745=global_par_k111*x(345)*x(460)-global_par_kd111*x(444);

% Reaction: id = v746, name = v746 (ERK#P#P)_i +  ErbB1:ErbB:Gab1#P##  -> (ErbB1:ErbB2)#P:GAP:Grb2:Gab1#P:ERK#P#P_i  k111 kd111
	reaction_v746=global_par_k111*x(346)*x(460)-global_par_kd111*x(445);

% Reaction: id = v747, name = v747 ERK#P#P +  2(EGF:ErbB1):Gab1#P##  -> 2(EGF:ErbB1)#P:GAP:Grb2:(Gab1#P):ERK#P#P  k111 kd111
	reaction_v747=global_par_k111*x(345)*x(461)-global_par_kd111*x(442);

% Reaction: id = v748, name = v748 (ERK#P#P)_i +  2(EGF:ErbB1):Gab1#P##  -> 2(EGF:ErbB1)#P:GAP:Grb2:(Gab1#P):ERK#P#P_i  k111 kd111
	reaction_v748=global_par_k111*x(346)*x(461)-global_par_kd111*x(443);

% Reaction: id = v749, name = v749 ERK#P#P +  (ErbB4:ErbB2)#P:GAP:Grb2:Gab1:#P#P  -> (ErbB4:ErbB2)#P:GAP:Grb2:Gab1#P:ERK#P#P  k111 kd111
	reaction_v749=global_par_k111*x(345)*x(462)-global_par_kd111*x(454);

% Reaction: id = v750, name = v750 (ERK#P#P)_i +  (ErbB4:ErbB2)#P:GAP:Grb2:Gab1:#P#P  -> (ErbB4:ErbB2)#P:GAP:Grb2:Gab1#P:ERK#P#P_i  k111 kd111
	reaction_v750=global_par_k111*x(346)*x(462)-global_par_kd111*x(455);

% Reaction: id = v751, name = v751 Ras:GDP +  2(EGF:ErbB1)#P:GAP:Grb2:Gab1#P:PI3K  -> 2(EGF:ErbB1)#P:GAP:Grb2:(Gab1#P):PI3K:Ras:GDP  k112 kd112
	reaction_v751=global_par_k112*x(302)*x(372)-global_par_kd112*x(463);

% Reaction: id = v752, name = v752 Ras:GDP +  (ErbB1:ErbB2)#P:GAP:Grb2:Gab1#P:PI3K  -> (ErbB1:ErbB2)#P:GAP:Grb2:Gab1#P:PI3K:Ras:GDP  k112 kd112
	reaction_v752=global_par_k112*x(302)*x(376)-global_par_kd112*x(464);

% Reaction: id = v753, name = v753 Ras:GDP +  (ErbB1:ErbB3)#P:GAP:Grb2:Gab1#P:PI3K  -> (ErbB1:ErbB3)#P:GAP:Grb2:Gab1#P:PI3K:Ras:GDP  k112 kd112
	reaction_v753=global_par_k112*x(302)*x(378)-global_par_kd112*x(465);

% Reaction: id = v754, name = v754 Ras:GDP +  (ErbB1:ErbB4)#P:GAP:Grb2:Gab1#P:PI3K  -> (ErbB1:ErbB4)#P:GAP:Grb2:Gab1#P:PI3K:Ras:GDP  k112 kd112
	reaction_v754=global_par_k112*x(302)*x(374)-global_par_kd112*x(466);

% Reaction: id = v755, name = v755 Ras:GDP +  2(ErbB2)#P:GAP:Grb2:Gab1#P:PI3K  -> 2(ErbB2)#P:GAP:Grb2:Gab1#P:PI3K:Ras:GDP  k112 kd112
	reaction_v755=global_par_k112*x(302)*x(380)-global_par_kd112*x(467);

% Reaction: id = v756, name = v756 Ras:GDP +  (ErbB3:ErbB2)#P:GAP:Grb2:Gab1#P:PI3K  -> (ErbB3:ErbB2)#P:GAP:Grb2:Gab1#P:PI3K:Ras:GDP  k112 kd112
	reaction_v756=global_par_k112*x(302)*x(382)-global_par_kd112*x(468);

% Reaction: id = v757, name = v757 Ras:GDP +  (ErbB4:ErbB2)#P:GAP:Grb2:Gab1#P:PI3K  -> (ErbB4:ErbB2)#P:GAP:Grb2:Gab1#P:PI3K:Ras:GDP  k112 kd112
	reaction_v757=global_par_k112*x(302)*x(384)-global_par_kd112*x(469);

% Reaction: id = v758, name = v758 Ras:GTP +  2(EGF:ErbB1)#P:GAP:Grb2:Gab1#P:PI3K  -> 2(EGF:ErbB1)#P:GAP:Grb2:(Gab1#P):PI3K:Ras:GDP  k113 kd113
	reaction_v758=global_par_k113*x(303)*x(372)-global_par_kd113*x(463);

% Reaction: id = v759, name = v759 Ras:GTP +  (ErbB1:ErbB2)#P:GAP:Grb2:Gab1#P:PI3K  -> (ErbB1:ErbB2)#P:GAP:Grb2:Gab1#P:PI3K:Ras:GDP  k113 kd113
	reaction_v759=global_par_k113*x(303)*x(376)-global_par_kd113*x(464);

% Reaction: id = v760, name = v760 Ras:GTP +  (ErbB1:ErbB3)#P:GAP:Grb2:Gab1#P:PI3K  -> (ErbB1:ErbB3)#P:GAP:Grb2:Gab1#P:PI3K:Ras:GDP  k113 kd113
	reaction_v760=global_par_k113*x(303)*x(378)-global_par_kd113*x(465);

% Reaction: id = v761, name = v761 Ras:GTP +  (ErbB1:ErbB4)#P:GAP:Grb2:Gab1#P:PI3K  -> (ErbB1:ErbB4)#P:GAP:Grb2:Gab1#P:PI3K:Ras:GDP  k113 kd113
	reaction_v761=global_par_k113*x(303)*x(374)-global_par_kd113*x(466);

% Reaction: id = v762, name = v762 Ras:GTP +  2(ErbB2)#P:GAP:Grb2:Gab1#P:PI3K  -> 2(ErbB2)#P:GAP:Grb2:Gab1#P:PI3K:Ras:GDP  k113 kd113
	reaction_v762=global_par_k113*x(303)*x(380)-global_par_kd113*x(467);

% Reaction: id = v763, name = v763 Ras:GTP +  (ErbB3:ErbB2)#P:GAP:Grb2:Gab1#P:PI3K  -> (ErbB3:ErbB2)#P:GAP:Grb2:Gab1#P:PI3K:Ras:GDP  k113 kd113
	reaction_v763=global_par_k113*x(303)*x(382)-global_par_kd113*x(468);

% Reaction: id = v764, name = v764 Ras:GTP +  (ErbB4:ErbB2)#P:GAP:Grb2:Gab1#P:Shp2  -> (ErbB4:ErbB2)#P:GAP:Grb2:Gab1#P:PI3K:Ras:GDP  k113 kd113
	reaction_v764=global_par_k113*x(303)*x(440)-global_par_kd113*x(469);

% Reaction: id = v765, name = v765 AKT#P#P +  Raf#P  -> AKT:P:P:Raf:P:Ser  k114 kd114
	reaction_v765=global_par_k114*x(405)*x(318)-global_par_kd114*x(470);

% Reaction: id = v766, name = v766 AKT#P#P +  (Raf#P)_i  -> AKT:P:P:Raf:P:Ser_i  k114 kd114
	reaction_v766=global_par_k114*x(405)*x(317)-global_par_kd114*x(471);

% Reaction: id = v767, name = v767 Raf:P:Ser +  AKT#P#P  -> AKT:P:P:Raf:P:Ser  k115 kd115
	reaction_v767=global_par_k115*x(472)*x(405)-global_par_kd115*x(470);

% Reaction: id = v768, name = v768 Raf:P:Ser +  AKT#P#P  -> AKT:P:P:Raf:P:Ser_i  k115 kd115
	reaction_v768=global_par_k115*x(472)*x(405)-global_par_kd115*x(471);

% Reaction: id = v769, name = v769 Pase3 +    -> MKP_deg  k116 kd116
	reaction_v769=global_par_k116*x(347)-global_par_kd116*x(473);

% Reaction: id = v770, name = v770 Pase9t +  2(EGF:ErbB1):Gab1#P##  -> 2(EGF:ErbB1):Gab1#P##:Pase9t  k117 kd117
	reaction_v770=global_par_k117*x(474)*x(461)-global_par_kd117*x(475);

% Reaction: id = v771, name = v771 Pase9t +  2(ErbB2)2:Gab1#P##  -> 2(ErbB2)2:Gab1#P##:Pase9t  k117 kd117
	reaction_v771=global_par_k117*x(474)*x(457)-global_par_kd117*x(476);

% Reaction: id = v772, name = v772 Pase9t +  (ErbB1:ErbB3)#P:GAP:Grb2:Gab1##P  -> (ErbB1:ErbB3)#P:GAP:Grb2:Gab1##P:Pase9t  k117 kd117
	reaction_v772=global_par_k117*x(474)*x(459)-global_par_kd117*x(477);

% Reaction: id = v773, name = v773 Pase9t +  (ErbB1:ErbB4)#P:GAP:Grb2:Gab1##P  -> (ErbB1:ErbB4)#P:GAP:Grb2:Gab1##P:Pase9t  k117 kd117
	reaction_v773=global_par_k117*x(474)*x(458)-global_par_kd117*x(478);

% Reaction: id = v774, name = v774 Pase9t +  ErbB3/4:ErbB2:Gab1#P##  -> ErbB3/4:ErbB2:Gab1#P##:Pase9t  k117 kd117
	reaction_v774=global_par_k117*x(474)*x(456)-global_par_kd117*x(479);

% Reaction: id = v775, name = v775 Pase9t +  ErbB1:ErbB:Gab1#P##  -> ErbB1:ErbB:Gab1#P##:Pase9t  k117 kd117
	reaction_v775=global_par_k117*x(474)*x(460)-global_par_kd117*x(480);

% Reaction: id = v776, name = v776 Pase9t +  (ErbB4:ErbB2)#P:GAP:Grb2:Gab1:#P#P  -> (ErbB4:ErbB2)#P:GAP:Grb2:Gab1:#P#P:Pase9t  k117 kd117
	reaction_v776=global_par_k117*x(474)*x(462)-global_par_kd117*x(481);

% Reaction: id = v777, name = v777 Pase9t +  2(EGF:ErbB1)#P:GAP:Grb2:(Gab1#P##)  -> 2(EGF:ErbB1):Gab1#P##:Pase9t  k118 kd118
	reaction_v777=global_par_k118*x(474)*x(371)-global_par_kd118*x(475);

% Reaction: id = v778, name = v778 Pase9t +  2(ErbB2)#P:GAP:Grb2:Gab1#P  -> 2(ErbB2)2:Gab1#P##:Pase9t  k118 kd118
	reaction_v778=global_par_k118*x(474)*x(379)-global_par_kd118*x(476);

% Reaction: id = v779, name = v779 Pase9t +  (ErbB1:ErbB3)#P:GAP:Grb2:Gab1#P  -> (ErbB1:ErbB3)#P:GAP:Grb2:Gab1##P:Pase9t  k118 kd118
	reaction_v779=global_par_k118*x(474)*x(377)-global_par_kd118*x(477);

% Reaction: id = v780, name = v780 Pase9t +  (ErbB1:ErbB4)#P:GAP:Grb2:Gab1#P  -> (ErbB1:ErbB4)#P:GAP:Grb2:Gab1##P:Pase9t  k118 kd118
	reaction_v780=global_par_k118*x(474)*x(373)-global_par_kd118*x(478);

% Reaction: id = v781, name = v781 Pase9t +  (ErbB3:ErbB2)#P:GAP:Grb2:Gab1#P  -> ErbB3/4:ErbB2:Gab1#P##:Pase9t  k118 kd118
	reaction_v781=global_par_k118*x(474)*x(381)-global_par_kd118*x(479);

% Reaction: id = v782, name = v782 Pase9t +  (ErbB1:ErbB2)#P:GAP:Grb2:Gab1#P  -> ErbB1:ErbB:Gab1#P##:Pase9t  k118 kd118
	reaction_v782=global_par_k118*x(474)*x(375)-global_par_kd118*x(480);

% Reaction: id = v783, name = v783 Pase9t +  (ErbB4:ErbB2)#P:GAP:Grb2:Gab1#P  -> (ErbB4:ErbB2)#P:GAP:Grb2:Gab1:#P#P:Pase9t  k118 kd118
	reaction_v783=global_par_k118*x(474)*x(383)-global_par_kd118*x(481);

% Reaction: id = v784, name = v784 HRG  +  ErbB3  -> HRG:ErbB3  k119 kd119
	reaction_v784=global_par_k119*x(482)*x(17)-global_par_kd119*x(483);

% Reaction: id = v785, name = v785 ErbB4 +  HRG   -> HRG:ErbB4  k119 kd119
	reaction_v785=global_par_k119*x(19)*x(482)-global_par_kd119*x(484);

% Reaction: id = v786, name = v786 HRG:ErbB3 +  ErbB2  -> (HRG:ErbB3):ErbB2  k120 kd120
	reaction_v786=global_par_k120*x(483)*x(15)-global_par_kd120*x(67);

% Reaction: id = v787, name = v787 (HRG:ErbB3) +  ErbB2  -> (HRG:ErbB3):ErbB2)  k120 kd120
	reaction_v787=global_par_k120*x(291)*x(21)-global_par_kd120*x(69);

% Reaction: id = v788, name = v788  +  HRG:ErbB4  ->   k120 kd120
	reaction_v788=global_par_k120*x(15)*x(484)-global_par_kd120*x(65);

% Reaction: id = v789, name = v789 HRG:ErbB3 +  ErbB1:ATP   -> (HRG:ErbB3:ErbB1)  k120b kd120
	reaction_v789=global_par_k120b*x(483)*x(2)-global_par_kd120*x(61);

% Reaction: id = v790, name = v790 HRG:ErbB4 +  ErbB1:ATP   -> (HRG:ErbB4:ErbB1)  k120b kd120
	reaction_v790=global_par_k120b*x(484)*x(2)-global_par_kd120*x(63);

% Reaction: id = v791, name = v791  +  (HRG:ErbB4)  ->   k120 kd120
	reaction_v791=global_par_k120*x(21)*x(485)-global_par_kd120*x(71);

% Reaction: id = v792, name = v792 ErbB1:ATP  +  (HRG:ErbB3)  -> (HRG:ErbB3:ErbB1)  k120b kd120
	reaction_v792=global_par_k120b*x(243)*x(291)-global_par_kd120*x(355);

% Reaction: id = v793, name = v793 ErbB1:ATP  +  (HRG:ErbB4)  -> (HRG:ErbB4:ErbB1)  k120b kd120
	reaction_v793=global_par_k120b*x(243)*x(485)-global_par_kd120*x(356);

% Reaction: id = v794, name = v794 ErbB1_h +  Inh  -> ErbB1_h:Inh  k97c kd97c
	reaction_v794=global_par_k97c*x(486)*x(419)-global_par_kd97c*x(487);

% Reaction: id = v795, name = v795 EGF +  ErbB1_h:Inh  -> EGF:ErbB1_h:Inh  k1 kd1
	reaction_v795=global_par_k1*x(1)*x(487)-global_par_kd1*x(488);

% Reaction: id = v796, name = v796 EGF:ErbB1:ATP +  EGF:ErbB1_h:Inh  -> EGF:ErbB1:ErbB1_h:Inh  k2 kd2
	reaction_v796=global_par_k2*x(3)*x(488)-global_par_kd2*x(489);

% Reaction: id = v797, name = v797 EGF:ErbB1_h:Inh +  EGF:ErbB1_h:Inh  -> 2(EGF:ErbB1_h:Inh)  k2 kd2
	reaction_v797=global_par_k2*x(488)*x(488)-global_par_kd2*x(490);

% Reaction: id = v798, name = v798 EGF +  ErbB1_h:ATP  -> EGF:ErbB1_h:ATP  k1 kd1
	reaction_v798=global_par_k1*x(1)*x(491)-global_par_kd1*x(492);

% Reaction: id = v799, name = v799 ErbB1_h:ATP +    -> ErbB1_h:ATP  k6 kd6
	reaction_v799=global_par_k6*x(491)-global_par_kd6*x(493);

% Reaction: id = v801, name = v801 ErbB1_h:ATP +  EGF  -> EGF:ErbB1:ATP  k10b kd10
	reaction_v801=global_par_k10b*x(493)*x(289)-global_par_kd10*x(13);

% Reaction: id = v802, name = v802 (EGF:ErbB1:ErbB1):Inh +  ATP  -> (EGF:ErbB1:ErbB1):Inh:ATP  k122 kd122
	reaction_v802=global_par_k122*x(10)*x(36)-global_par_kd122*x(494);

% Reaction: id = v803, name = v803 2(EGF:ErbB1)#P +  ATP  -> (EGF:ErbB1:ErbB1):Inh:ATP  k123 kd123
	reaction_v803=global_par_k123h*x(244)*x(36)-global_par_kd123h*x(494);

% Reaction: id = v804, name = v804 2(EGF:ErbB1)#P +  ATP  ->   k123 kd123
	reaction_v804=global_par_k123*x(244)*x(36)-global_par_kd123*x(41);

% Reaction: id = v805, name = v805 EGF:ErbB1:ErbB1_h:Inh +  ATP  ->   k122 kd122
	reaction_v805=global_par_k122*x(489)*x(36)-global_par_kd122*x(495);

% Reaction: id = v806, name = v806 2(EGF:ErbB1)#P +  ATP  ->   k123 kd123
	reaction_v806=global_par_k123h*x(244)*x(36)-global_par_kd123h*x(495);

% Reaction: id = v807, name = v807 (ErbB1:ErbB2)#P +  ATP  -> EGF:ErbB1:ErbB2:ATP  k123 kd123
	reaction_v807=global_par_k123*x(262)*x(36)-global_par_kd123*x(42);

% Reaction: id = v808, name = v808 (ErbB1:ErbB2)#P +  ATP  -> (EGF:ErbB1:ErbB2):ATP  k123 kd123
	reaction_v808=global_par_k123*x(263)*x(36)-global_par_kd123*x(37);

% Reaction: id = v809, name = v809 (ErbB1:ErbB3)#P +  ATP  -> (EGF:ErbB1:ErbB3):ATP  k123 kd123
	reaction_v809=global_par_k123*x(265)*x(36)-global_par_kd123*x(38);

% Reaction: id = v810, name = v810 (ErbB1:ErbB4)#P +  ATP  -> (EGF:ErbB1:ErbB4):ATP  k123 kd123
	reaction_v810=global_par_k123*x(267)*x(36)-global_par_kd123*x(39);

% Reaction: id = v811, name = v811 2(EGF:ErbB1)#P +  ATP  -> 2(EGF:ErbB1):ATP  k123 kd123
	reaction_v811=global_par_k123*x(245)*x(36)-global_par_kd123*x(40);

% Reaction: id = v812, name = v812 (ErbB1:ErbB3)#P +  ATP  -> EGF:ErbB1:ErbB3:ATP  k123 kd123
	reaction_v812=global_par_k123*x(264)*x(36)-global_par_kd123*x(43);

% Reaction: id = v813, name = v813 (ErbB1:ErbB4)#P +  ATP  -> EGF:ErbB1:ErbB4:ATP  k123 kd123
	reaction_v813=global_par_k123*x(266)*x(36)-global_par_kd123*x(44);

% Reaction: id = v814, name = v814 2(ErbB2)#P +  ATP  -> ErbB2:ErbB2#P:ATP  k123 kd123
	reaction_v814=global_par_k123*x(268)*x(36)-global_par_kd123*x(46);

% Reaction: id = v815, name = v815 (ErbB1:ErbB2)#P:GAP:Grb2:Gab1#P +  ATP  -> (ErbB1:ErbB2)#P:GAP:Grb2:Gab1:ATP  k123 kd123
	reaction_v815=global_par_k123*x(375)*x(36)-global_par_kd123*x(48);

% Reaction: id = v816, name = v816 (ErbB1:ErbB3)#P:GAP:Grb2:Gab1#P +  ATP  -> (ErbB1:ErbB3)#P:GAP:Grb2:Gab1:ATP  k123 kd123
	reaction_v816=global_par_k123*x(377)*x(36)-global_par_kd123*x(50);

% Reaction: id = v817, name = v817 (ErbB1:ErbB4)#P:GAP:Grb2:Gab1#P +  ATP  -> (ErbB1:ErbB4)#P:GAP:Grb2:Gab1:ATP  k123 kd123
	reaction_v817=global_par_k123*x(373)*x(36)-global_par_kd123*x(52);

% Reaction: id = v818, name = v818 2(ErbB2)#P:GAP:Grb2:Gab1#P +  ATP  -> 2(ErbB2)#P:GAP:Grb2:Gab1:ATP  k123 kd123
	reaction_v818=global_par_k123*x(379)*x(36)-global_par_kd123*x(54);

% Reaction: id = v819, name = v819 (ErbB3:ErbB2)#P:GAP:Grb2:Gab1#P +  ATP  -> (ErbB3:ErbB2)#P:GAP:Grb2:Gab1:ATP  k123 kd123
	reaction_v819=global_par_k123*x(381)*x(36)-global_par_kd123*x(56);

% Reaction: id = v820, name = v820 (ErbB4:ErbB2)#P:GAP:Grb2:Gab1#P +  ATP  -> (ErbB4:ErbB2)#P:GAP:Grb2:Gab1:ATP  k123 kd123
	reaction_v820=global_par_k123*x(383)*x(36)-global_par_kd123*x(58);

% Reaction: id = v821, name = v821 2(EGF:ErbB1)#P:GAP:Grb2:(Gab1#P##) +  ATP  -> 2(EGF:ErbB1)#P:GAP:Grb2:Gab1:ATP  k123 kd123
	reaction_v821=global_par_k123*x(371)*x(36)-global_par_kd123*x(60);

% Reaction: id = v822, name = v822 (ErbB1:ErbB3)#P +  ATP  -> (HRG:ErbB3:ErbB1):ATP  k123 kd123
	reaction_v822=global_par_k123*x(264)*x(36)-global_par_kd123*x(62);

% Reaction: id = v823, name = v823 (ErbB1:ErbB4)#P +  ATP  -> (HRG:ErbB4:ErbB1):ATP  k123 kd123
	reaction_v823=global_par_k123*x(266)*x(36)-global_par_kd123*x(64);

% Reaction: id = v824, name = v824 (ErbB4:ErbB2)#P +  ATP  -> (HRG:ErbB4):ErbB2:ATP  k123 kd123
	reaction_v824=global_par_k123*x(7)*x(36)-global_par_kd123*x(66);

% Reaction: id = v825, name = v825 (ErbB3:ErbB2)#P +  ATP  -> (HRG:ErbB3):ErbB2:ATP  k123 kd123
	reaction_v825=global_par_k123*x(5)*x(36)-global_par_kd123*x(68);

% Reaction: id = v826, name = v826 (ErbB3:ErbB2)#P +  ATP  -> (HRG:ErbB3):ErbB2):ATP  k123 kd123
	reaction_v826=global_par_k123*x(270)*x(36)-global_par_kd123*x(70);

% Reaction: id = v827, name = v827 (ErbB4:ErbB2)#P +  ATP  -> (HRG:ErbB4):ErbB2):ATP  k123 kd123
	reaction_v827=global_par_k123*x(271)*x(36)-global_par_kd123*x(72);

% Reaction: id = v828, name = v828 ErbB1  +  ATP  -> ErbB1:ATP   k122 kd122
	reaction_v828=global_par_k122*x(418)*x(36)-global_par_kd122*x(2);

% Reaction: id = v829, name = v829 ErbB1_h +  ATP  -> ErbB1_h:ATP  k122 kd122
	reaction_v829=global_par_k122*x(486)*x(36)-global_par_kd122*x(491);

% Reaction: id = v850, name = v850 EGF:ErbB1:ATP + EGF:ErbB1_h:ATP -> EGF:ErbB1:ATP::EGF:ErbB1_h:ATP k2 kd2
	reaction_v850=global_par_k2*x(3)*x(492)-global_par_kd2*x(496);

% Reaction: id = v851, name = v851 EGF:ErbB1:Inh + EGF:ErbB1_h:ATP -> EGF:ErbB1:Inh::EGF:ErbB1_h:ATP k2 kd2
	reaction_v851=global_par_k2*x(9)*x(492)-global_par_kd2*x(497);

% Reaction: id = v852, name = v852 EGF:ErbB1_h:ATP + EGF:ErbB1_h:ATP -> 2(EGF:ErbB1_h:ATP) k2 kd2
	reaction_v852=global_par_k2*x(492)*x(492)-global_par_kd2*x(498);

% Reaction: id = v853, name = v853 EGF:ErbB1_h:ATP + EGF:ErbB1_h:Inh -> EGF:ErbB1_h:ATP::EGF:ErbB1_h:Inh k2 kd2	% Local Parameter:   id =  kd, name = kd
	reaction_v853_kd=1.0;

	reaction_v853=global_par_k2*x(492)*x(488)-global_par_kd2*x(499);

% Reaction: id = v854, name = v854 EGF:ErbB1_h:Inh + EGF:ErbB1:Inh -> EGF:ErbB1_h:Inh::EGF:ErbB1:Inh k2 kd2
	reaction_v854=global_par_k2*x(488)*x(9)-global_par_kd2*x(500);

% Reaction: id = v855, name = v855 EGF:ErbB1:ATP::EGF:ErbB1_h:ATP + ATP -> (EGF:ErbB1:ATP::EGF:ErbB1_h:ATP)-FullActive k122 kd122
	reaction_v855=global_par_k122*x(496)*x(36)-global_par_kd122*x(501);

% Reaction: id = v856, name = v856 EGF:ErbB1:Inh::EGF:ErbB1_h:ATP + ATP -> (EGF:ErbB1:Inh::EGF:ErbB1_h:ATP)-HalfActive k122 kd122
	reaction_v856=global_par_k122*x(497)*x(36)-global_par_kd122*x(502);

% Reaction: id = v857, name = v857 2(EGF:ErbB1_h:ATP) + ATP -> 2(EGF:ErbB1_h:ATP)-FullActive k122 kd122
	reaction_v857=global_par_k122*x(498)*x(36)-global_par_kd122*x(503);

% Reaction: id = v858, name = v858 EGF:ErbB1_h:ATP::EGF:ErbB1_h:Inh + ATP -> (EGF:ErbB1_h:ATP::EGF:ErbB1_h:Inh)-HalfActive k122 kd122
	reaction_v858=global_par_k122*x(499)*x(36)-global_par_kd122*x(504);

% Reaction: id = v859, name = v859 2(EGF:ErbB1)#P + ATP -> (EGF:ErbB1:ATP::EGF:ErbB1_h:ATP)-FullActive k123 kd123
	reaction_v859=global_par_k123*x(244)*x(36)-global_par_kd123*x(501);

% Reaction: id = v860, name = v860 2(EGF:ErbB1)#P + ATP -> (EGF:ErbB1:Inh::EGF:ErbB1_h:ATP)-HalfActive k123h kd123h
	reaction_v860=global_par_k123h*x(244)*x(36)-global_par_kd123h*x(502);

% Reaction: id = v861, name = v861 2(EGF:ErbB1)#P + ATP -> 2(EGF:ErbB1_h:ATP)-FullActive k123 kd123
	reaction_v861=global_par_k123*x(244)*x(36)-global_par_kd123*x(503);

% Reaction: id = v862, name = v862 2(EGF:ErbB1)#P + ATP -> (EGF:ErbB1_h:ATP::EGF:ErbB1_h:Inh)-HalfActive k123h kd123h
	reaction_v862=global_par_k123h*x(244)*x(36)-global_par_kd123h*x(504);

	xdot=zeros(504,1);
	
% Species:   id = c1, name = EGF
%WARNING speciesID: c1, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(1) = 0.0;
	
% Species:   id = c2, name = ErbB1:ATP, affected by kineticLaw
	xdot(2) = (-1.0 * reaction_v1) + (-1.0 * reaction_v164) + (-1.0 * reaction_v789) + (-1.0 * reaction_v790) + ( 1.0 * reaction_v828);
	
% Species:   id = c3, name = EGF:ErbB1:ATP, affected by kineticLaw
	xdot(3) = ( 1.0 * reaction_v1) + (-1.0 * reaction_v5) + (-1.0 * reaction_v7) + (-1.0 * reaction_v7) + (-1.0 * reaction_v9) + (-1.0 * reaction_v10) + (-1.0 * reaction_v11) + (-1.0 * reaction_v18) + (-1.0 * reaction_v19) + (-1.0 * reaction_v20) + (-1.0 * reaction_v796) + (-1.0 * reaction_v850);
	
% Species:   id = c288, name = (ErbB2:ErbB3), affected by kineticLaw
	xdot(4) = (-1.0 * reaction_v2) + ( 1.0 * reaction_v678);
	
% Species:   id = c335, name = (ErbB3:ErbB2)_P, affected by kineticLaw
	xdot(5) = ( 1.0 * reaction_v2) + (-1.0 * reaction_v189) + (-1.0 * reaction_v202) + ( 1.0 * reaction_v680) + (-1.0 * reaction_v825);
	
% Species:   id = c117, name = ErbB2:ErbB4, affected by kineticLaw
	xdot(6) = (-1.0 * reaction_v3) + ( 1.0 * reaction_v679);
	
% Species:   id = c336, name = (ErbB4:ErbB2)_P, affected by kineticLaw
	xdot(7) = ( 1.0 * reaction_v3) + (-1.0 * reaction_v190) + (-1.0 * reaction_v203) + ( 1.0 * reaction_v681) + (-1.0 * reaction_v824);
	
% Species:   id = c286, name = ErbB1:Inh, affected by kineticLaw
	xdot(8) = (-1.0 * reaction_v4) + ( 1.0 * reaction_v665);
	
% Species:   id = c499, name = EGF:ErbB1:Inh, affected by kineticLaw
	xdot(9) = ( 1.0 * reaction_v4) + (-1.0 * reaction_v5) + (-1.0 * reaction_v6) + (-1.0 * reaction_v6) + (-1.0 * reaction_v15) + (-1.0 * reaction_v16) + (-1.0 * reaction_v17) + (-1.0 * reaction_v851) + (-1.0 * reaction_v854);
	
% Species:   id = c500, name = (EGF:ErbB1:ATP::EGF:ErbB1:Inh), affected by kineticLaw
	xdot(10) = ( 1.0 * reaction_v5) + (-1.0 * reaction_v802);
	
% Species:   id = c501, name = 2(EGF:ErbB1:Inh), affected by kineticLaw
	xdot(11) = ( 1.0 * reaction_v6);
	
% Species:   id = c4, name = 2(EGF:ErbB1:ATP), affected by kineticLaw
	xdot(12) = ( 1.0 * reaction_v7) + (-1.0 * reaction_v25);
	
% Species:   id = c10, name = EGF:ErbB1:ATP, affected by kineticLaw
	xdot(13) = (-1.0 * reaction_v8) + (-1.0 * reaction_v8) + (-1.0 * reaction_v12) + (-1.0 * reaction_v13) + (-1.0 * reaction_v14) + ( 1.0 * reaction_v208) + ( 1.0 * reaction_v801);
	
% Species:   id = c11, name = 2(EGF:ErbB1:ATP), affected by kineticLaw
	xdot(14) = ( 1.0 * reaction_v8) + (-1.0 * reaction_v24) + (-1.0 * reaction_v524) + (-1.0 * reaction_v660);
	
% Species:   id = c141, name = ErbB2, affected by kineticLaw
	xdot(15) = (-1.0 * reaction_v9) + (-1.0 * reaction_v15) + (-1.0 * reaction_v177) + (-1.0 * reaction_v666) + (-1.0 * reaction_v677) + (-1.0 * reaction_v678) + (-1.0 * reaction_v679) + (-1.0 * reaction_v685) + (-1.0 * reaction_v786) + (-1.0 * reaction_v788);
	
% Species:   id = c145, name = EGF:ErbB1:ErbB2, affected by kineticLaw
	xdot(16) = ( 1.0 * reaction_v9) + (-1.0 * reaction_v26);
	
% Species:   id = c140, name = ErbB3, affected by kineticLaw
	xdot(17) = (-1.0 * reaction_v10) + (-1.0 * reaction_v16) + (-1.0 * reaction_v176) + (-1.0 * reaction_v668) + (-1.0 * reaction_v678) + (-1.0 * reaction_v683) + (-1.0 * reaction_v784);
	
% Species:   id = c146, name = EGF:ErbB1:ErbB3, affected by kineticLaw
	xdot(18) = ( 1.0 * reaction_v10) + (-1.0 * reaction_v27);
	
% Species:   id = c143, name = ErbB4, affected by kineticLaw
	xdot(19) = (-1.0 * reaction_v11) + (-1.0 * reaction_v17) + (-1.0 * reaction_v178) + (-1.0 * reaction_v667) + (-1.0 * reaction_v679) + (-1.0 * reaction_v684) + (-1.0 * reaction_v785);
	
% Species:   id = c147, name = EGF:ErbB1:ErbB4, affected by kineticLaw
	xdot(20) = ( 1.0 * reaction_v11) + (-1.0 * reaction_v28);
	
% Species:   id = c155, name = ErbB2, affected by kineticLaw
	xdot(21) = (-1.0 * reaction_v12) + ( 1.0 * reaction_v177) + (-1.0 * reaction_v538) + (-1.0 * reaction_v787) + (-1.0 * reaction_v791);
	
% Species:   id = c159, name = (EGF:ErbB1:ErbB2), affected by kineticLaw
	xdot(22) = ( 1.0 * reaction_v12) + (-1.0 * reaction_v21) + (-1.0 * reaction_v600) + (-1.0 * reaction_v657);
	
% Species:   id = c154, name = ErbB3, affected by kineticLaw
	xdot(23) = (-1.0 * reaction_v13) + ( 1.0 * reaction_v176) + (-1.0 * reaction_v209) + (-1.0 * reaction_v537);
	
% Species:   id = c160, name = (EGF:ErbB1:ErbB3), affected by kineticLaw
	xdot(24) = ( 1.0 * reaction_v13) + (-1.0 * reaction_v22) + (-1.0 * reaction_v601) + (-1.0 * reaction_v658);
	
% Species:   id = c156, name = ErbB4, affected by kineticLaw
	xdot(25) = (-1.0 * reaction_v14) + ( 1.0 * reaction_v178) + (-1.0 * reaction_v539);
	
% Species:   id = c161, name = (EGF:ErbB1:ErbB4), affected by kineticLaw
	xdot(26) = ( 1.0 * reaction_v14) + (-1.0 * reaction_v23) + (-1.0 * reaction_v602) + (-1.0 * reaction_v659);
	
% Species:   id = c492, name = EGF:ErbB1:Inh:ErB2, affected by kineticLaw
	xdot(27) = ( 1.0 * reaction_v15);
	
% Species:   id = c493, name = EGF:ErbB1:Inh:ErB3, affected by kineticLaw
	xdot(28) = ( 1.0 * reaction_v16);
	
% Species:   id = c494, name = EGF:ErbB1:Inh:ErB4, affected by kineticLaw
	xdot(29) = ( 1.0 * reaction_v17);
	
% Species:   id = c502, name = ErbB2:Inh, affected by kineticLaw
	xdot(30) = (-1.0 * reaction_v18) + (-1.0 * reaction_v182) + ( 1.0 * reaction_v666) + (-1.0 * reaction_v682) + (-1.0 * reaction_v683) + (-1.0 * reaction_v684);
	
% Species:   id = c504, name = (EGF:ErbB1:ErbB2):Inh, affected by kineticLaw
	xdot(31) = ( 1.0 * reaction_v18);
	
% Species:   id = c503, name = ErbB4:Inh, affected by kineticLaw
	xdot(32) = (-1.0 * reaction_v19) + (-1.0 * reaction_v183) + ( 1.0 * reaction_v667) + (-1.0 * reaction_v685);
	
% Species:   id = c505, name = (EGF:ErbB1:ErbB3)_P:Inh, affected by kineticLaw
	xdot(33) = ( 1.0 * reaction_v19);
	
% Species:   id = c506, name = ErbB3:Inh, affected by kineticLaw
	xdot(34) = (-1.0 * reaction_v20) + ( 1.0 * reaction_v668);
	
% Species:   id = c507, name = (EGF:ErbB1:ErbB3)_P:Inh, affected by kineticLaw
	xdot(35) = ( 1.0 * reaction_v20);
	
% Species:   id = c105, name = ATP  1.2e9, affected by kineticLaw
	xdot(36) = (-1.0 * reaction_v21) + (-1.0 * reaction_v22) + (-1.0 * reaction_v23) + (-1.0 * reaction_v24) + (-1.0 * reaction_v25) + (-1.0 * reaction_v26) + (-1.0 * reaction_v27) + (-1.0 * reaction_v28) + (-1.0 * reaction_v29) + (-1.0 * reaction_v30) + (-1.0 * reaction_v31) + (-1.0 * reaction_v32) + (-1.0 * reaction_v33) + (-1.0 * reaction_v34) + (-1.0 * reaction_v35) + (-1.0 * reaction_v36) + (-1.0 * reaction_v37) + (-1.0 * reaction_v38) + (-1.0 * reaction_v39) + (-1.0 * reaction_v40) + (-1.0 * reaction_v41) + (-1.0 * reaction_v42) + (-1.0 * reaction_v802) + (-1.0 * reaction_v803) + (-1.0 * reaction_v804) + (-1.0 * reaction_v805) + (-1.0 * reaction_v806) + (-1.0 * reaction_v807) + (-1.0 * reaction_v808) + (-1.0 * reaction_v809) + (-1.0 * reaction_v810) + (-1.0 * reaction_v811) + (-1.0 * reaction_v812) + (-1.0 * reaction_v813) + (-1.0 * reaction_v814) + (-1.0 * reaction_v815) + (-1.0 * reaction_v816) + (-1.0 * reaction_v817) + (-1.0 * reaction_v818) + (-1.0 * reaction_v819) + (-1.0 * reaction_v820) + (-1.0 * reaction_v821) + (-1.0 * reaction_v822) + (-1.0 * reaction_v823) + (-1.0 * reaction_v824) + (-1.0 * reaction_v825) + (-1.0 * reaction_v826) + (-1.0 * reaction_v827) + (-1.0 * reaction_v828) + (-1.0 * reaction_v829) + (-1.0 * reaction_v855) + (-1.0 * reaction_v856) + (-1.0 * reaction_v857) + (-1.0 * reaction_v858) + (-1.0 * reaction_v859) + (-1.0 * reaction_v860) + (-1.0 * reaction_v861) + (-1.0 * reaction_v862);
	
% Species:   id = c123, name = (EGF:ErbB1:ErbB2):ATP, affected by kineticLaw
	xdot(37) = ( 1.0 * reaction_v21) + ( 1.0 * reaction_v808);
	
% Species:   id = c124, name = (EGF:ErbB1:ErbB3):ATP, affected by kineticLaw
	xdot(38) = ( 1.0 * reaction_v22) + ( 1.0 * reaction_v809);
	
% Species:   id = c125, name = (EGF:ErbB1:ErbB4):ATP, affected by kineticLaw
	xdot(39) = ( 1.0 * reaction_v23) + ( 1.0 * reaction_v810);
	
% Species:   id = c126, name = 2(EGF:ErbB1):ATP, affected by kineticLaw
	xdot(40) = ( 1.0 * reaction_v24) + ( 1.0 * reaction_v811);
	
% Species:   id = c116, name = 2(EGF:ErbB1:ATP)-FullActive, affected by kineticLaw
	xdot(41) = ( 1.0 * reaction_v25) + ( 1.0 * reaction_v804);
	
% Species:   id = c122, name = EGF:ErbB1:ErbB2:ATP, affected by kineticLaw
	xdot(42) = ( 1.0 * reaction_v26) + ( 1.0 * reaction_v807);
	
% Species:   id = c127, name = EGF:ErbB1:ErbB3:ATP, affected by kineticLaw
	xdot(43) = ( 1.0 * reaction_v27) + ( 1.0 * reaction_v812);
	
% Species:   id = c128, name = EGF:ErbB1:ErbB4:ATP, affected by kineticLaw
	xdot(44) = ( 1.0 * reaction_v28) + ( 1.0 * reaction_v813);
	
% Species:   id = c284, name = ErbB2:ErbB2_P, affected by kineticLaw
	xdot(45) = (-1.0 * reaction_v29) + ( 1.0 * reaction_v677);
	
% Species:   id = c129, name = ErbB2:ErbB2_P:ATP, affected by kineticLaw
	xdot(46) = ( 1.0 * reaction_v29) + ( 1.0 * reaction_v814);
	
% Species:   id = c427, name = (ErbB1:ErbB2)_P:GAP:Grb2:Gab1, affected by kineticLaw
	xdot(47) = (-1.0 * reaction_v30) + ( 1.0 * reaction_v689) + (-1.0 * reaction_v714);
	
% Species:   id = c130, name = (ErbB1:ErbB2)_P:GAP:Grb2:Gab1:ATP, affected by kineticLaw
	xdot(48) = ( 1.0 * reaction_v30) + ( 1.0 * reaction_v815);
	
% Species:   id = c428, name = (ErbB1:ErbB3)_P:GAP:Grb2:Gab1, affected by kineticLaw
	xdot(49) = (-1.0 * reaction_v31) + ( 1.0 * reaction_v690) + (-1.0 * reaction_v715);
	
% Species:   id = c131, name = (ErbB1:ErbB3)_P:GAP:Grb2:Gab1:ATP, affected by kineticLaw
	xdot(50) = ( 1.0 * reaction_v31) + ( 1.0 * reaction_v816);
	
% Species:   id = c429, name = (ErbB1:ErbB4)_P:GAP:Grb2:Gab1, affected by kineticLaw
	xdot(51) = (-1.0 * reaction_v32) + ( 1.0 * reaction_v691) + (-1.0 * reaction_v716);
	
% Species:   id = c132, name = (ErbB1:ErbB4)_P:GAP:Grb2:Gab1:ATP, affected by kineticLaw
	xdot(52) = ( 1.0 * reaction_v32) + ( 1.0 * reaction_v817);
	
% Species:   id = c436, name = 2(ErbB2)_P:GAP:Grb2:Gab1, affected by kineticLaw
	xdot(53) = (-1.0 * reaction_v33) + ( 1.0 * reaction_v692) + (-1.0 * reaction_v717);
	
% Species:   id = c133, name = 2(ErbB2)_P:GAP:Grb2:Gab1:ATP, affected by kineticLaw
	xdot(54) = ( 1.0 * reaction_v33) + ( 1.0 * reaction_v818);
	
% Species:   id = c439, name = (ErbB3:ErbB2)_P:GAP:Grb2:Gab1, affected by kineticLaw
	xdot(55) = (-1.0 * reaction_v34) + ( 1.0 * reaction_v693) + (-1.0 * reaction_v718);
	
% Species:   id = c134, name = (ErbB3:ErbB2)_P:GAP:Grb2:Gab1:ATP, affected by kineticLaw
	xdot(56) = ( 1.0 * reaction_v34) + ( 1.0 * reaction_v819);
	
% Species:   id = c442, name = (ErbB4:ErbB2)_P:GAP:Grb2:Gab1, affected by kineticLaw
	xdot(57) = (-1.0 * reaction_v35) + ( 1.0 * reaction_v694) + (-1.0 * reaction_v719);
	
% Species:   id = c135, name = (ErbB4:ErbB2)_P:GAP:Grb2:Gab1:ATP, affected by kineticLaw
	xdot(58) = ( 1.0 * reaction_v35) + ( 1.0 * reaction_v820);
	
% Species:   id = c483, name = 2(EGF:ErbB1)_P:GAP:Grb2:Gab1, affected by kineticLaw
	xdot(59) = (-1.0 * reaction_v36) + ( 1.0 * reaction_v688) + (-1.0 * reaction_v720);
	
% Species:   id = c136, name = 2(EGF:ErbB1)_P:GAP:Grb2:Gab1:ATP, affected by kineticLaw
	xdot(60) = ( 1.0 * reaction_v36) + ( 1.0 * reaction_v821);
	
% Species:   id = c516, name = (HRG:ErbB3:ErbB1), affected by kineticLaw
	xdot(61) = (-1.0 * reaction_v37) + ( 1.0 * reaction_v789);
	
% Species:   id = c137, name = (HRG:ErbB3:ErbB1):ATP, affected by kineticLaw
	xdot(62) = ( 1.0 * reaction_v37) + ( 1.0 * reaction_v822);
	
% Species:   id = c517, name = (HRG:ErbB4:ErbB1), affected by kineticLaw
	xdot(63) = (-1.0 * reaction_v38) + ( 1.0 * reaction_v790);
	
% Species:   id = c138, name = (HRG:ErbB4:ErbB1):ATP, affected by kineticLaw
	xdot(64) = ( 1.0 * reaction_v38) + ( 1.0 * reaction_v823);
	
% Species:   id = c345, name = (HRG:ErbB4):ErbB2, affected by kineticLaw
	xdot(65) = (-1.0 * reaction_v39) + ( 1.0 * reaction_v788);
	
% Species:   id = c139, name = (HRG:ErbB4):ErbB2:ATP, affected by kineticLaw
	xdot(66) = ( 1.0 * reaction_v39) + ( 1.0 * reaction_v824);
	
% Species:   id = c355, name = (HRG:ErbB3):ErbB2, affected by kineticLaw
	xdot(67) = (-1.0 * reaction_v40) + ( 1.0 * reaction_v786);
	
% Species:   id = c168, name = (HRG:ErbB3):ErbB2:ATP, affected by kineticLaw
	xdot(68) = ( 1.0 * reaction_v40) + ( 1.0 * reaction_v825);
	
% Species:   id = c421, name = (HRG:ErbB3):ErbB2), affected by kineticLaw
	xdot(69) = (-1.0 * reaction_v41) + (-1.0 * reaction_v605) + ( 1.0 * reaction_v787);
	
% Species:   id = c169, name = ((HRG:ErbB3):ErbB2):ATP, affected by kineticLaw
	xdot(70) = ( 1.0 * reaction_v41) + ( 1.0 * reaction_v826);
	
% Species:   id = c422, name = ((HRG:ErbB4):ErbB2), affected by kineticLaw
	xdot(71) = (-1.0 * reaction_v42) + (-1.0 * reaction_v606) + ( 1.0 * reaction_v791);
	
% Species:   id = c170, name = ((HRG:ErbB4):ErbB2):ATP, affected by kineticLaw
	xdot(72) = ( 1.0 * reaction_v42) + ( 1.0 * reaction_v827);
	
% Species:   id = c23, name = 2(EGF:ErbB1)_P:GAP:Grb2, affected by kineticLaw
	xdot(73) = (-1.0 * reaction_v43) + (-1.0 * reaction_v175) + ( 1.0 * reaction_v212) + (-1.0 * reaction_v248) + (-1.0 * reaction_v669) + (-1.0 * reaction_v688);
	
% Species:   id = c12, name = cPP, affected by kineticLaw
	xdot(74) = (-1.0 * reaction_v43) + (-1.0 * reaction_v44) + (-1.0 * reaction_v45) + (-1.0 * reaction_v46) + (-1.0 * reaction_v47) + (-1.0 * reaction_v48) + (-1.0 * reaction_v49) + (-1.0 * reaction_v50) + (-1.0 * reaction_v52) + (-1.0 * reaction_v53) + (-1.0 * reaction_v54) + (-1.0 * reaction_v55) + (-1.0 * reaction_v56) + (-1.0 * reaction_v57) + (-1.0 * reaction_v58) + (-1.0 * reaction_v59) + (-1.0 * reaction_v60) + (-1.0 * reaction_v61) + (-1.0 * reaction_v62) + (-1.0 * reaction_v63) + (-1.0 * reaction_v64) + (-1.0 * reaction_v65) + (-1.0 * reaction_v66) + (-1.0 * reaction_v67) + (-1.0 * reaction_v68) + (-1.0 * reaction_v69) + (-1.0 * reaction_v70) + (-1.0 * reaction_v71) + (-1.0 * reaction_v72) + (-1.0 * reaction_v75) + (-1.0 * reaction_v76) + (-1.0 * reaction_v77) + (-1.0 * reaction_v78) + (-1.0 * reaction_v79) + (-1.0 * reaction_v80) + (-1.0 * reaction_v81) + (-1.0 * reaction_v82) + (-1.0 * reaction_v83) + (-1.0 * reaction_v84) + (-1.0 * reaction_v85) + (-1.0 * reaction_v87) + (-1.0 * reaction_v88) + (-1.0 * reaction_v89) + (-1.0 * reaction_v90) + (-1.0 * reaction_v91) + (-1.0 * reaction_v92) + (-1.0 * reaction_v93) + (-1.0 * reaction_v94) + (-1.0 * reaction_v95) + (-1.0 * reaction_v96) + (-1.0 * reaction_v97) + (-1.0 * reaction_v98) + (-1.0 * reaction_v99) + (-1.0 * reaction_v100) + (-1.0 * reaction_v101) + (-1.0 * reaction_v102) + ( 1.0 * reaction_v211);
	
% Species:   id = c7, name = 2(EGF:ErbB1)_P:GAP:Grb2:cPP, affected by kineticLaw
	xdot(75) = ( 1.0 * reaction_v43) + ( 1.0 * reaction_v161);
	
% Species:   id = c25, name = 2(EGF:ErbB1)_P:GAP:Grb2:Sos, affected by kineticLaw
	xdot(76) = (-1.0 * reaction_v44) + (-1.0 * reaction_v169) + ( 1.0 * reaction_v248) + (-1.0 * reaction_v255) + (-1.0 * reaction_v294) + (-1.0 * reaction_v321) + (-1.0 * reaction_v346) + ( 1.0 * reaction_v428) + (-1.0 * reaction_v609);
	
% Species:   id = c88, name = 2(EGF:ErbB1)_P:GAP:Grb2:Sos:cPP, affected by kineticLaw
	xdot(77) = ( 1.0 * reaction_v44) + ( 1.0 * reaction_v162);
	
% Species:   id = c27, name = 2(EGF:ErbB1)_P:GAP:Grb2:Sos:(Ras:GDP), affected by kineticLaw
	xdot(78) = (-1.0 * reaction_v45) + (-1.0 * reaction_v163) + ( 1.0 * reaction_v255) + ( 1.0 * reaction_v294);
	
% Species:   id = c89, name = 2(EGF:ErbB1)_P:GAP:Grb2:Sos:(Ras:GDP):cPP, affected by kineticLaw
	xdot(79) = ( 1.0 * reaction_v45) + ( 1.0 * reaction_v160);
	
% Species:   id = c29, name = 2(EGF:ErbB1)_P:GAP:Grb2:Sos:(Ras:GTP), affected by kineticLaw
	xdot(80) = (-1.0 * reaction_v46) + (-1.0 * reaction_v170) + ( 1.0 * reaction_v321) + ( 1.0 * reaction_v346);
	
% Species:   id = c90, name = 2(EGF:ErbB1)_P:GAP:Grb2:Sos:(Ras:GTP):cPP, affected by kineticLaw
	xdot(81) = ( 1.0 * reaction_v46) + ( 1.0 * reaction_v159);
	
% Species:   id = c34, name = 2(EGF:ErbB1)_P:GAP:(Shc_P):Grb2, affected by kineticLaw
	xdot(82) = (-1.0 * reaction_v47) + (-1.0 * reaction_v171) + ( 1.0 * reaction_v214) + (-1.0 * reaction_v395) + ( 1.0 * reaction_v445) + (-1.0 * reaction_v671);
	
% Species:   id = c91, name = 2(EGF:ErbB1)_P:GAP:(Shc_P):Grb2:cPP, affected by kineticLaw
	xdot(83) = ( 1.0 * reaction_v47) + ( 1.0 * reaction_v158);
	
% Species:   id = c35, name = 2(EGF:ErbB1)_P:GAP:(Shc_P):Grb2:Sos, affected by kineticLaw
	xdot(84) = (-1.0 * reaction_v48) + (-1.0 * reaction_v172) + (-1.0 * reaction_v256) + (-1.0 * reaction_v293) + (-1.0 * reaction_v322) + (-1.0 * reaction_v345) + ( 1.0 * reaction_v395) + ( 1.0 * reaction_v413) + ( 1.0 * reaction_v473) + (-1.0 * reaction_v611);
	
% Species:   id = c92, name = 2(EGF:ErbB1)_P:GAP:(Shc_P):Grb2:Sos:cPP, affected by kineticLaw
	xdot(85) = ( 1.0 * reaction_v48) + ( 1.0 * reaction_v157);
	
% Species:   id = c36, name = 2(EGF:ErbB1)_P:GAP:(Shc_P):Grb2:Sos:(Ras:GDP), affected by kineticLaw
	xdot(86) = (-1.0 * reaction_v49) + (-1.0 * reaction_v173) + ( 1.0 * reaction_v256) + ( 1.0 * reaction_v293);
	
% Species:   id = c93, name = 2(EGF:ErbB1)_P:GAP:(Shc_P):Grb2:Sos:(Ras:GDP):cPP, affected by kineticLaw
	xdot(87) = ( 1.0 * reaction_v49) + ( 1.0 * reaction_v156);
	
% Species:   id = c37, name = 2(EGF:ErbB1)_P:GAP:(Shc_P):Grb2:Sos:(Ras:GTP), affected by kineticLaw
	xdot(88) = (-1.0 * reaction_v50) + (-1.0 * reaction_v174) + ( 1.0 * reaction_v322) + ( 1.0 * reaction_v345);
	
% Species:   id = c94, name = 2(EGF:ErbB1)_P:GAP:(Shc_P):Grb2:Sos:(Ras:GTP):cPP, affected by kineticLaw
	xdot(89) = ( 1.0 * reaction_v50) + ( 1.0 * reaction_v155);
	
% Species:   id = c189, name = (ErbB1:ErbB2)_P:GAP:(Shc_P):Grb2, affected by kineticLaw
	xdot(90) = (-1.0 * reaction_v52) + ( 1.0 * reaction_v223) + (-1.0 * reaction_v397) + ( 1.0 * reaction_v454);
	
% Species:   id = c195, name = (ErbB1:ErbB2)_P:GAP:(Shc_P):Grb2:cPP, affected by kineticLaw
	xdot(91) = ( 1.0 * reaction_v52) + ( 1.0 * reaction_v153);
	
% Species:   id = c190, name = (ErbB1:ErbB3)_P:GAP:(Shc_P):Grb2, affected by kineticLaw
	xdot(92) = (-1.0 * reaction_v53) + ( 1.0 * reaction_v224) + (-1.0 * reaction_v398) + ( 1.0 * reaction_v455);
	
% Species:   id = c196, name = (ErbB1:ErbB3)_P:GAP:(Shc_P):Grb2:cPP, affected by kineticLaw
	xdot(93) = ( 1.0 * reaction_v53) + ( 1.0 * reaction_v152);
	
% Species:   id = c191, name = (ErbB1:ErbB4)_P:GAP:(Shc_P):Grb2, affected by kineticLaw
	xdot(94) = (-1.0 * reaction_v54) + ( 1.0 * reaction_v225) + (-1.0 * reaction_v399) + ( 1.0 * reaction_v456);
	
% Species:   id = c197, name = (ErbB1:ErbB4)_P:GAP:(Shc_P):Grb2:cPP, affected by kineticLaw
	xdot(95) = ( 1.0 * reaction_v54) + ( 1.0 * reaction_v151);
	
% Species:   id = c198, name = (ErbB1:ErbB2)_P:GAP:(Shc_P):Grb2:Sos, affected by kineticLaw
	xdot(96) = (-1.0 * reaction_v55) + (-1.0 * reaction_v259) + (-1.0 * reaction_v295) + (-1.0 * reaction_v325) + (-1.0 * reaction_v347) + ( 1.0 * reaction_v397) + ( 1.0 * reaction_v415) + ( 1.0 * reaction_v475);
	
% Species:   id = c204, name = (ErbB1:ErbB2)_P:GAP:(Shc_P):Grb2:Sos:cPP, affected by kineticLaw
	xdot(97) = ( 1.0 * reaction_v55) + ( 1.0 * reaction_v150);
	
% Species:   id = c199, name = (ErbB1:ErbB3)_P:GAP:(Shc_P):Grb2:Sos, affected by kineticLaw
	xdot(98) = (-1.0 * reaction_v56) + (-1.0 * reaction_v260) + (-1.0 * reaction_v296) + (-1.0 * reaction_v326) + (-1.0 * reaction_v348) + ( 1.0 * reaction_v398) + ( 1.0 * reaction_v416) + ( 1.0 * reaction_v476);
	
% Species:   id = c205, name = (ErbB1:ErbB3)_P:GAP:(Shc_P):Grb2:Sos:cPP, affected by kineticLaw
	xdot(99) = ( 1.0 * reaction_v56) + ( 1.0 * reaction_v149);
	
% Species:   id = c200, name = (ErbB1:ErbB4)_P:GAP:(Shc_P):Grb2:Sos, affected by kineticLaw
	xdot(100) = (-1.0 * reaction_v57) + (-1.0 * reaction_v261) + (-1.0 * reaction_v297) + (-1.0 * reaction_v327) + (-1.0 * reaction_v349) + ( 1.0 * reaction_v399) + ( 1.0 * reaction_v417) + ( 1.0 * reaction_v477);
	
% Species:   id = c206, name = (ErbB1:ErbB4)_P:GAP:(Shc_P):Grb2:Sos:cPP, affected by kineticLaw
	xdot(101) = ( 1.0 * reaction_v57) + ( 1.0 * reaction_v148);
	
% Species:   id = c207, name = (ErbB1:ErbB2)_P:GAP:(Shc_P):Grb2:Sos:(Ras:GDP), affected by kineticLaw
	xdot(102) = (-1.0 * reaction_v58) + ( 1.0 * reaction_v259) + ( 1.0 * reaction_v295);
	
% Species:   id = c213, name = (ErbB1:ErbB2)_P:GAP:(Shc_P):Grb2:Sos:(Ras:GDP):cPP, affected by kineticLaw
	xdot(103) = ( 1.0 * reaction_v58) + ( 1.0 * reaction_v147);
	
% Species:   id = c208, name = (ErbB1:ErbB3)_P:GAP:(Shc_P):Grb2:Sos:(Ras:GDP), affected by kineticLaw
	xdot(104) = (-1.0 * reaction_v59) + ( 1.0 * reaction_v260) + ( 1.0 * reaction_v296);
	
% Species:   id = c214, name = (ErbB1:ErbB3)_P:GAP:(Shc_P):Grb2:Sos:(Ras:GDP):cPP, affected by kineticLaw
	xdot(105) = ( 1.0 * reaction_v59) + ( 1.0 * reaction_v146);
	
% Species:   id = c209, name = (ErbB1:ErbB4)_P:GAP:(Shc_P):Grb2:Sos:(Ras:GDP), affected by kineticLaw
	xdot(106) = (-1.0 * reaction_v60) + ( 1.0 * reaction_v261) + ( 1.0 * reaction_v297);
	
% Species:   id = c215, name = (ErbB1:ErbB4)_P:GAP:(Shc_P):Grb2:Sos:(Ras:GDP):cPP, affected by kineticLaw
	xdot(107) = ( 1.0 * reaction_v60) + ( 1.0 * reaction_v145);
	
% Species:   id = c216, name = (ErbB1:ErbB2)_P:GAP:(Shc_P):Grb2:Sos:(Ras:GTP), affected by kineticLaw
	xdot(108) = (-1.0 * reaction_v61) + ( 1.0 * reaction_v325) + ( 1.0 * reaction_v347);
	
% Species:   id = c222, name = (ErbB1:ErbB2)_P:GAP:(Shc_P):Grb2:Sos:(Ras:GTP):cPP, affected by kineticLaw
	xdot(109) = ( 1.0 * reaction_v61) + ( 1.0 * reaction_v144);
	
% Species:   id = c217, name = (ErbB1:ErbB3)_P:GAP:(Shc_P):Grb2:Sos:(Ras:GTP), affected by kineticLaw
	xdot(110) = (-1.0 * reaction_v62) + ( 1.0 * reaction_v326) + ( 1.0 * reaction_v348);
	
% Species:   id = c223, name = (ErbB1:ErbB3)_P:GAP:(Shc_P):Grb2:Sos:(Ras:GTP):cPP, affected by kineticLaw
	xdot(111) = ( 1.0 * reaction_v62) + ( 1.0 * reaction_v143);
	
% Species:   id = c218, name = (ErbB1:ErbB4)_P:GAP:(Shc_P):Grb2:Sos:(Ras:GTP), affected by kineticLaw
	xdot(112) = (-1.0 * reaction_v63) + ( 1.0 * reaction_v327) + ( 1.0 * reaction_v349);
	
% Species:   id = c224, name = (ErbB1:ErbB4)_P:GAP:(Shc_P):Grb2:Sos:(Ras:GTP):cPP, affected by kineticLaw
	xdot(113) = ( 1.0 * reaction_v63) + ( 1.0 * reaction_v142);
	
% Species:   id = c225, name = (ErbB1:ErbB2)_P:GAP:Grb2, affected by kineticLaw
	xdot(114) = (-1.0 * reaction_v64) + ( 1.0 * reaction_v217) + (-1.0 * reaction_v249) + (-1.0 * reaction_v689);
	
% Species:   id = c231, name = (ErbB1:ErbB2)_P:GAP:Grb2:cPP, affected by kineticLaw
	xdot(115) = ( 1.0 * reaction_v64) + ( 1.0 * reaction_v141);
	
% Species:   id = c226, name = (ErbB1:ErbB3)_P:GAP:Grb2, affected by kineticLaw
	xdot(116) = (-1.0 * reaction_v65) + ( 1.0 * reaction_v218) + (-1.0 * reaction_v250) + (-1.0 * reaction_v690);
	
% Species:   id = c232, name = (ErbB1:ErbB3)_P:GAP:Grb2:cPP, affected by kineticLaw
	xdot(117) = ( 1.0 * reaction_v65) + ( 1.0 * reaction_v140);
	
% Species:   id = c227, name = (ErbB1:ErbB4)_P:GAP:Grb2, affected by kineticLaw
	xdot(118) = (-1.0 * reaction_v66) + ( 1.0 * reaction_v219) + (-1.0 * reaction_v251) + (-1.0 * reaction_v691);
	
% Species:   id = c233, name = (ErbB1:ErbB4)_P:GAP:Grb2:cPP, affected by kineticLaw
	xdot(119) = ( 1.0 * reaction_v66) + ( 1.0 * reaction_v139);
	
% Species:   id = c243, name = (ErbB1:ErbB2)_P:GAP:Grb2:Sos:(Ras:GDP), affected by kineticLaw
	xdot(120) = (-1.0 * reaction_v67) + ( 1.0 * reaction_v265) + ( 1.0 * reaction_v301);
	
% Species:   id = c249, name = (ErbB1:ErbB2)_P:GAP:Grb2:Sos:(Ras:GDP):cPP, affected by kineticLaw
	xdot(121) = ( 1.0 * reaction_v67) + ( 1.0 * reaction_v138);
	
% Species:   id = c244, name = (ErbB1:ErbB3)_P:GAP:Grb2:Sos:(Ras:GDP), affected by kineticLaw
	xdot(122) = (-1.0 * reaction_v68) + ( 1.0 * reaction_v266) + ( 1.0 * reaction_v302);
	
% Species:   id = c250, name = (ErbB1:ErbB3)_P:GAP:Grb2:Sos:(Ras:GDP):cPP, affected by kineticLaw
	xdot(123) = ( 1.0 * reaction_v68) + ( 1.0 * reaction_v137);
	
% Species:   id = c245, name = (ErbB1:ErbB4)_P:GAP:Grb2:Sos:(Ras:GDP), affected by kineticLaw
	xdot(124) = (-1.0 * reaction_v69) + ( 1.0 * reaction_v267) + ( 1.0 * reaction_v303);
	
% Species:   id = c251, name = (ErbB1:ErbB4)_P:GAP:Grb2:Sos:(Ras:GDP):cPP, affected by kineticLaw
	xdot(125) = ( 1.0 * reaction_v69) + ( 1.0 * reaction_v136);
	
% Species:   id = c252, name = (ErbB1:ErbB2)_P:GAP:Grb2:Sos:(Ras:GTP), affected by kineticLaw
	xdot(126) = (-1.0 * reaction_v70) + ( 1.0 * reaction_v315) + ( 1.0 * reaction_v353);
	
% Species:   id = c258, name = (ErbB1:ErbB2)_P:GAP:Grb2:Sos:(Ras:GTP):cPP, affected by kineticLaw
	xdot(127) = ( 1.0 * reaction_v70) + ( 1.0 * reaction_v135);
	
% Species:   id = c253, name = (ErbB1:ErbB3)_P:GAP:Grb2:Sos:(Ras:GTP), affected by kineticLaw
	xdot(128) = (-1.0 * reaction_v71) + ( 1.0 * reaction_v316) + ( 1.0 * reaction_v354);
	
% Species:   id = c259, name = (ErbB1:ErbB3)_P:GAP:Grb2:Sos:(Ras:GTP):cPP, affected by kineticLaw
	xdot(129) = ( 1.0 * reaction_v71) + ( 1.0 * reaction_v134);
	
% Species:   id = c254, name = (ErbB1:ErbB4)_P:GAP:Grb2:Sos:(Ras:GTP), affected by kineticLaw
	xdot(130) = (-1.0 * reaction_v72) + ( 1.0 * reaction_v317) + ( 1.0 * reaction_v355);
	
% Species:   id = c260, name = (ErbB1:ErbB4)_P:GAP:Grb2:Sos:(Ras:GTP):cPP, affected by kineticLaw
	xdot(131) = ( 1.0 * reaction_v72) + ( 1.0 * reaction_v133);
	
% Species:   id = c234, name = (ErbB1:ErbB2)_P:GAP:Grb2:Sos, affected by kineticLaw
	xdot(132) = (-1.0 * reaction_v75) + ( 1.0 * reaction_v249) + (-1.0 * reaction_v265) + (-1.0 * reaction_v301) + (-1.0 * reaction_v315) + (-1.0 * reaction_v353) + ( 1.0 * reaction_v430);
	
% Species:   id = c240, name = (ErbB1:ErbB2)_P:GAP:Grb2:Sos:cPP, affected by kineticLaw
	xdot(133) = ( 1.0 * reaction_v75) + ( 1.0 * reaction_v130);
	
% Species:   id = c235, name = (ErbB1:ErbB3)_P:GAP:Grb2:Sos, affected by kineticLaw
	xdot(134) = (-1.0 * reaction_v76) + ( 1.0 * reaction_v250) + (-1.0 * reaction_v266) + (-1.0 * reaction_v302) + (-1.0 * reaction_v316) + (-1.0 * reaction_v354) + ( 1.0 * reaction_v431);
	
% Species:   id = c241, name = (ErbB1:ErbB3)_P:GAP:Grb2:Sos:cPP, affected by kineticLaw
	xdot(135) = ( 1.0 * reaction_v76) + ( 1.0 * reaction_v129);
	
% Species:   id = c236, name = (ErbB1:ErbB4)_P:GAP:Grb2:Sos, affected by kineticLaw
	xdot(136) = (-1.0 * reaction_v77) + ( 1.0 * reaction_v251) + (-1.0 * reaction_v267) + (-1.0 * reaction_v303) + (-1.0 * reaction_v317) + (-1.0 * reaction_v355) + ( 1.0 * reaction_v432);
	
% Species:   id = c242, name = (ErbB1:ErbB4)_P:GAP:Grb2:Sos:cPP, affected by kineticLaw
	xdot(137) = ( 1.0 * reaction_v77) + ( 1.0 * reaction_v128);
	
% Species:   id = c300, name = 2(ErbB2)_P:GAP:(Shc_P):Grb2, affected by kineticLaw
	xdot(138) = (-1.0 * reaction_v78) + ( 1.0 * reaction_v229) + (-1.0 * reaction_v403) + ( 1.0 * reaction_v462);
	
% Species:   id = c301, name = 2(ErbB2)_P:GAP:(Shc_P):Grb2:cPP, affected by kineticLaw
	xdot(139) = ( 1.0 * reaction_v78) + ( 1.0 * reaction_v127);
	
% Species:   id = c303, name = 2(ErbB2)_P:GAP:(Shc_P):Grb2:Sos, affected by kineticLaw
	xdot(140) = (-1.0 * reaction_v79) + (-1.0 * reaction_v271) + (-1.0 * reaction_v289) + (-1.0 * reaction_v331) + (-1.0 * reaction_v341) + ( 1.0 * reaction_v403) + ( 1.0 * reaction_v421) + ( 1.0 * reaction_v481);
	
% Species:   id = c304, name = 2(ErbB2)_P:GAP:(Shc_P):Grb2:Sos:cPP, affected by kineticLaw
	xdot(141) = ( 1.0 * reaction_v79) + ( 1.0 * reaction_v126);
	
% Species:   id = c306, name = 2(ErbB2)_P:GAP:(Shc_P):Grb2:Sos:(Ras:GDP), affected by kineticLaw
	xdot(142) = (-1.0 * reaction_v80) + ( 1.0 * reaction_v271) + ( 1.0 * reaction_v289);
	
% Species:   id = c307, name = 2(ErbB2)_P:GAP:(Shc_P):Grb2:Sos:(Ras:GDP):cPP, affected by kineticLaw
	xdot(143) = ( 1.0 * reaction_v80) + ( 1.0 * reaction_v125);
	
% Species:   id = c309, name = 2(ErbB2)_P:GAP:(Shc_P):Grb2:Sos:(Ras:GTP), affected by kineticLaw
	xdot(144) = (-1.0 * reaction_v81) + ( 1.0 * reaction_v331) + ( 1.0 * reaction_v341);
	
% Species:   id = c310, name = 2(ErbB2)_P:GAP:(Shc_P):Grb2:Sos:(Ras:GTP):cPP, affected by kineticLaw
	xdot(145) = ( 1.0 * reaction_v81) + ( 1.0 * reaction_v124);
	
% Species:   id = c312, name = 2(ErbB2)_P:GAP:Grb2, affected by kineticLaw
	xdot(146) = (-1.0 * reaction_v82) + ( 1.0 * reaction_v231) + (-1.0 * reaction_v245) + (-1.0 * reaction_v692);
	
% Species:   id = c313, name = 2(ErbB2)_P:GAP:Grb2:cPP, affected by kineticLaw
	xdot(147) = ( 1.0 * reaction_v82) + ( 1.0 * reaction_v123);
	
% Species:   id = c315, name = 2(ErbB2)_P:GAP:Grb2:Sos, affected by kineticLaw
	xdot(148) = (-1.0 * reaction_v83) + ( 1.0 * reaction_v245) + (-1.0 * reaction_v273) + (-1.0 * reaction_v287) + (-1.0 * reaction_v333) + (-1.0 * reaction_v339) + ( 1.0 * reaction_v436);
	
% Species:   id = c316, name = 2(ErbB2)_P:GAP:Grb2:Sos:cPP, affected by kineticLaw
	xdot(149) = ( 1.0 * reaction_v83) + ( 1.0 * reaction_v122);
	
% Species:   id = c318, name = 2(ErbB2)_P:GAP:Grb2:Sos:(Ras:GDP), affected by kineticLaw
	xdot(150) = (-1.0 * reaction_v84) + ( 1.0 * reaction_v273) + ( 1.0 * reaction_v287);
	
% Species:   id = c319, name = 2(ErbB2)_P:GAP:Grb2:Sos:(Ras:GDP):cPP, affected by kineticLaw
	xdot(151) = ( 1.0 * reaction_v84) + ( 1.0 * reaction_v121);
	
% Species:   id = c321, name = 2(ErbB2)_P:GAP:Grb2:Sos:(Ras:GTP), affected by kineticLaw
	xdot(152) = (-1.0 * reaction_v85) + ( 1.0 * reaction_v333) + ( 1.0 * reaction_v339);
	
% Species:   id = c322, name = 2(ErbB2)_P:GAP:Grb2:Sos:(Ras:GTP):cPP, affected by kineticLaw
	xdot(153) = ( 1.0 * reaction_v85) + ( 1.0 * reaction_v120);
	
% Species:   id = c357, name = (ErbB3:ErbB2)_P:GAP:(Shc_P):Grb2, affected by kineticLaw
	xdot(154) = (-1.0 * reaction_v87) + ( 1.0 * reaction_v233) + (-1.0 * reaction_v407) + ( 1.0 * reaction_v468);
	
% Species:   id = c358, name = (ErbB3:ErbB2)_P:GAP:(Shc_P):Grb2:cPP, affected by kineticLaw
	xdot(155) = ( 1.0 * reaction_v87) + ( 1.0 * reaction_v118);
	
% Species:   id = c360, name = (ErbB4:ErbB2)_P:GAP:(Shc_P):Grb2, affected by kineticLaw
	xdot(156) = (-1.0 * reaction_v88) + ( 1.0 * reaction_v235) + (-1.0 * reaction_v405) + ( 1.0 * reaction_v470);
	
% Species:   id = c361, name = (ErbB4:ErbB2)_P:GAP:(Shc_P):Grb2:cPP, affected by kineticLaw
	xdot(157) = ( 1.0 * reaction_v88) + ( 1.0 * reaction_v117);
	
% Species:   id = c366, name = (ErbB4:ErbB2)_P:GAP:(Shc_P):Grb2:Sos, affected by kineticLaw
	xdot(158) = (-1.0 * reaction_v89) + (-1.0 * reaction_v275) + (-1.0 * reaction_v309) + (-1.0 * reaction_v311) + (-1.0 * reaction_v361) + ( 1.0 * reaction_v405) + ( 1.0 * reaction_v425) + ( 1.0 * reaction_v485);
	
% Species:   id = c367, name = (ErbB4:ErbB2)_P:GAP:(Shc_P):Grb2:Sos:cPP, affected by kineticLaw
	xdot(159) = ( 1.0 * reaction_v89) + ( 1.0 * reaction_v116);
	
% Species:   id = c369, name = (ErbB3:ErbB2)_P:GAP:(Shc_P):Grb2:Sos:(Ras:GDP), affected by kineticLaw
	xdot(160) = (-1.0 * reaction_v90) + ( 1.0 * reaction_v277) + ( 1.0 * reaction_v307);
	
% Species:   id = c370, name = (ErbB3:ErbB2)_P:GAP:(Shc_P):Grb2:Sos:(Ras:GDP):cPP, affected by kineticLaw
	xdot(161) = ( 1.0 * reaction_v90) + ( 1.0 * reaction_v115);
	
% Species:   id = c372, name = (ErbB4:ErbB2)_P:GAP:(Shc_P):Grb2:Sos:(Ras:GDP), affected by kineticLaw
	xdot(162) = (-1.0 * reaction_v91) + ( 1.0 * reaction_v275) + ( 1.0 * reaction_v309);
	
% Species:   id = c373, name = (ErbB4:ErbB2)_P:GAP:(Shc_P):Grb2:Sos:(Ras:GDP):cPP, affected by kineticLaw
	xdot(163) = ( 1.0 * reaction_v91) + ( 1.0 * reaction_v114);
	
% Species:   id = c375, name = (ErbB3:ErbB2)_P:GAP:(Shc_P):Grb2:Sos:(Ras:GTP), affected by kineticLaw
	xdot(164) = (-1.0 * reaction_v92) + ( 1.0 * reaction_v313) + ( 1.0 * reaction_v359);
	
% Species:   id = c376, name = (ErbB3:ErbB2)_P:GAP:(Shc_P):Grb2:Sos:(Ras:GTP):cPP, affected by kineticLaw
	xdot(165) = ( 1.0 * reaction_v92) + ( 1.0 * reaction_v113);
	
% Species:   id = c378, name = (ErbB4:ErbB2)_P:GAP:(Shc_P):Grb2:Sos:(Ras:GTP), affected by kineticLaw
	xdot(166) = (-1.0 * reaction_v93) + ( 1.0 * reaction_v311) + ( 1.0 * reaction_v361);
	
% Species:   id = c379, name = (ErbB4:ErbB2)_P:GAP:(Shc_P):Grb2:Sos:(Ras:GTP):cPP, affected by kineticLaw
	xdot(167) = ( 1.0 * reaction_v93) + ( 1.0 * reaction_v112);
	
% Species:   id = c381, name = (ErbB3:ErbB2)_P:GAP:Grb2, affected by kineticLaw
	xdot(168) = (-1.0 * reaction_v94) + ( 1.0 * reaction_v237) + (-1.0 * reaction_v241) + (-1.0 * reaction_v693);
	
% Species:   id = c382, name = (ErbB3:ErbB2)_P:GAP:Grb2:cPP, affected by kineticLaw
	xdot(169) = ( 1.0 * reaction_v94) + ( 1.0 * reaction_v111);
	
% Species:   id = c363, name = (ErbB3:ErbB2)_P:GAP:(Shc_P):Grb2:Sos, affected by kineticLaw
	xdot(170) = (-1.0 * reaction_v95) + (-1.0 * reaction_v277) + (-1.0 * reaction_v307) + (-1.0 * reaction_v313) + (-1.0 * reaction_v359) + ( 1.0 * reaction_v407) + ( 1.0 * reaction_v423) + ( 1.0 * reaction_v483);
	
% Species:   id = c364, name = (ErbB3:ErbB2)_P:GAP:(Shc_P):Grb2:Sos:cPP, affected by kineticLaw
	xdot(171) = ( 1.0 * reaction_v95) + ( 1.0 * reaction_v110);
	
% Species:   id = c384, name = (ErbB4:ErbB2)_P:GAP:Grb2, affected by kineticLaw
	xdot(172) = (-1.0 * reaction_v96) + ( 1.0 * reaction_v239) + (-1.0 * reaction_v243) + (-1.0 * reaction_v694);
	
% Species:   id = c385, name = (ErbB4:ErbB2)_P:GAP:Grb2:cPP, affected by kineticLaw
	xdot(173) = ( 1.0 * reaction_v96) + ( 1.0 * reaction_v109);
	
% Species:   id = c387, name = (ErbB3:ErbB2)_P:GAP:Grb2:Sos, affected by kineticLaw
	xdot(174) = (-1.0 * reaction_v97) + ( 1.0 * reaction_v241) + (-1.0 * reaction_v281) + (-1.0 * reaction_v283) + (-1.0 * reaction_v337) + (-1.0 * reaction_v363) + ( 1.0 * reaction_v438);
	
% Species:   id = c388, name = (ErbB3:ErbB2)_P:GAP:Grb2:Sos:cPP, affected by kineticLaw
	xdot(175) = ( 1.0 * reaction_v97) + ( 1.0 * reaction_v108);
	
% Species:   id = c390, name = (ErbB4:ErbB2)_P:GAP:Grb2:Sos, affected by kineticLaw
	xdot(176) = (-1.0 * reaction_v98) + ( 1.0 * reaction_v243) + (-1.0 * reaction_v279) + (-1.0 * reaction_v285) + (-1.0 * reaction_v335) + (-1.0 * reaction_v365) + ( 1.0 * reaction_v440);
	
% Species:   id = c391, name = (ErbB4:ErbB2)_P:GAP:Grb2:Sos:cPP, affected by kineticLaw
	xdot(177) = ( 1.0 * reaction_v98) + ( 1.0 * reaction_v107);
	
% Species:   id = c393, name = (ErbB3:ErbB2)_P:GAP:Grb2:Sos:(Ras:GDP), affected by kineticLaw
	xdot(178) = (-1.0 * reaction_v99) + ( 1.0 * reaction_v281) + ( 1.0 * reaction_v283);
	
% Species:   id = c394, name = (ErbB3:ErbB2)_P:GAP:Grb2:Sos:(Ras:GDP):cPP, affected by kineticLaw
	xdot(179) = ( 1.0 * reaction_v99) + ( 1.0 * reaction_v106);
	
% Species:   id = c396, name = (ErbB4:ErbB2)_P:GAP:Grb2:Sos:(Ras:GDP), affected by kineticLaw
	xdot(180) = (-1.0 * reaction_v100) + ( 1.0 * reaction_v279) + ( 1.0 * reaction_v285);
	
% Species:   id = c397, name = (ErbB4:ErbB2)_P:GAP:Grb2:Sos:(Ras:GDP):cPP, affected by kineticLaw
	xdot(181) = ( 1.0 * reaction_v100) + ( 1.0 * reaction_v105);
	
% Species:   id = c399, name = (ErbB3:ErbB2)_P:GAP:Grb2:Sos:(Ras:GTP), affected by kineticLaw
	xdot(182) = (-1.0 * reaction_v101) + ( 1.0 * reaction_v337) + ( 1.0 * reaction_v363);
	
% Species:   id = c400, name = (ErbB3:ErbB2)_P:GAP:Grb2:Sos:(Ras:GTP):cPP, affected by kineticLaw
	xdot(183) = ( 1.0 * reaction_v101) + ( 1.0 * reaction_v104);
	
% Species:   id = c402, name = (ErbB4:ErbB2)_P:GAP:Grb2:Sos:(Ras:GTP), affected by kineticLaw
	xdot(184) = (-1.0 * reaction_v102) + ( 1.0 * reaction_v335) + ( 1.0 * reaction_v365);
	
% Species:   id = c403, name = (ErbB4:ErbB2)_P:GAP:Grb2:Sos:(Ras:GTP):cPP, affected by kineticLaw
	xdot(185) = ( 1.0 * reaction_v102) + ( 1.0 * reaction_v103);
	
% Species:   id = c9, name = cPP, affected by kineticLaw
	xdot(186) = (-1.0 * reaction_v103) + (-1.0 * reaction_v104) + (-1.0 * reaction_v105) + (-1.0 * reaction_v106) + (-1.0 * reaction_v107) + (-1.0 * reaction_v108) + (-1.0 * reaction_v109) + (-1.0 * reaction_v110) + (-1.0 * reaction_v111) + (-1.0 * reaction_v112) + (-1.0 * reaction_v113) + (-1.0 * reaction_v114) + (-1.0 * reaction_v115) + (-1.0 * reaction_v116) + (-1.0 * reaction_v117) + (-1.0 * reaction_v118) + (-1.0 * reaction_v120) + (-1.0 * reaction_v121) + (-1.0 * reaction_v122) + (-1.0 * reaction_v123) + (-1.0 * reaction_v124) + (-1.0 * reaction_v125) + (-1.0 * reaction_v126) + (-1.0 * reaction_v127) + (-1.0 * reaction_v128) + (-1.0 * reaction_v129) + (-1.0 * reaction_v130) + (-1.0 * reaction_v133) + (-1.0 * reaction_v134) + (-1.0 * reaction_v135) + (-1.0 * reaction_v136) + (-1.0 * reaction_v137) + (-1.0 * reaction_v138) + (-1.0 * reaction_v139) + (-1.0 * reaction_v140) + (-1.0 * reaction_v141) + (-1.0 * reaction_v142) + (-1.0 * reaction_v143) + (-1.0 * reaction_v144) + (-1.0 * reaction_v145) + (-1.0 * reaction_v146) + (-1.0 * reaction_v147) + (-1.0 * reaction_v148) + (-1.0 * reaction_v149) + (-1.0 * reaction_v150) + (-1.0 * reaction_v151) + (-1.0 * reaction_v152) + (-1.0 * reaction_v153) + (-1.0 * reaction_v155) + (-1.0 * reaction_v156) + (-1.0 * reaction_v157) + (-1.0 * reaction_v158) + (-1.0 * reaction_v159) + (-1.0 * reaction_v160) + (-1.0 * reaction_v161) + (-1.0 * reaction_v162) + (-1.0 * reaction_v211);
	
% Species:   id = c404, name = (ErbB4:ErbB2)_P:GAP:Grb2:Sos:(Ras:GTP), affected by kineticLaw
	xdot(187) = (-1.0 * reaction_v103) + ( 1.0 * reaction_v336) + ( 1.0 * reaction_v366) + (-1.0 * reaction_v598);
	
% Species:   id = c401, name = (ErbB3:ErbB2)_P:GAP:Grb2:Sos:(Ras:GTP), affected by kineticLaw
	xdot(188) = (-1.0 * reaction_v104) + ( 1.0 * reaction_v338) + ( 1.0 * reaction_v364) + (-1.0 * reaction_v597);
	
% Species:   id = c398, name = (ErbB4:ErbB2)_P:GAP:Grb2:Sos:(Ras:GDP), affected by kineticLaw
	xdot(189) = (-1.0 * reaction_v105) + ( 1.0 * reaction_v280) + ( 1.0 * reaction_v286) + (-1.0 * reaction_v596);
	
% Species:   id = c395, name = (ErbB3:ErbB2)_P:GAP:Grb2:Sos:(Ras:GDP), affected by kineticLaw
	xdot(190) = (-1.0 * reaction_v106) + ( 1.0 * reaction_v282) + ( 1.0 * reaction_v284) + (-1.0 * reaction_v595);
	
% Species:   id = c392, name = (ErbB4:ErbB2)_P:GAP:Grb2:Sos, affected by kineticLaw
	xdot(191) = (-1.0 * reaction_v107) + ( 1.0 * reaction_v244) + (-1.0 * reaction_v280) + (-1.0 * reaction_v286) + (-1.0 * reaction_v336) + (-1.0 * reaction_v366) + ( 1.0 * reaction_v441) + (-1.0 * reaction_v592);
	
% Species:   id = c389, name = (ErbB3:ErbB2)_P:GAP:Grb2:Sos, affected by kineticLaw
	xdot(192) = (-1.0 * reaction_v108) + ( 1.0 * reaction_v242) + (-1.0 * reaction_v282) + (-1.0 * reaction_v284) + (-1.0 * reaction_v338) + (-1.0 * reaction_v364) + ( 1.0 * reaction_v439) + (-1.0 * reaction_v591);
	
% Species:   id = c386, name = (ErbB4:ErbB2)_P:GAP:Grb2, affected by kineticLaw
	xdot(193) = (-1.0 * reaction_v109) + ( 1.0 * reaction_v240) + (-1.0 * reaction_v244) + (-1.0 * reaction_v589);
	
% Species:   id = c365, name = (ErbB3:ErbB2)_P:GAP:(Shc_P):Grb2:Sos, affected by kineticLaw
	xdot(194) = (-1.0 * reaction_v110) + (-1.0 * reaction_v278) + (-1.0 * reaction_v308) + (-1.0 * reaction_v314) + (-1.0 * reaction_v360) + ( 1.0 * reaction_v408) + ( 1.0 * reaction_v424) + ( 1.0 * reaction_v484) + (-1.0 * reaction_v586);
	
% Species:   id = c383, name = (ErbB3:ErbB2)_P:GAP:Grb2, affected by kineticLaw
	xdot(195) = (-1.0 * reaction_v111) + ( 1.0 * reaction_v238) + (-1.0 * reaction_v242) + (-1.0 * reaction_v590);
	
% Species:   id = c380, name = (ErbB4:ErbB2)_P:GAP:(Shc_P):Grb2:Sos:(Ras:GTP), affected by kineticLaw
	xdot(196) = (-1.0 * reaction_v112) + ( 1.0 * reaction_v312) + ( 1.0 * reaction_v362) + (-1.0 * reaction_v588);
	
% Species:   id = c377, name = (ErbB3:ErbB2)_P:GAP:(Shc_P):Grb2:Sos:(Ras:GTP), affected by kineticLaw
	xdot(197) = (-1.0 * reaction_v113) + ( 1.0 * reaction_v314) + ( 1.0 * reaction_v360) + (-1.0 * reaction_v587);
	
% Species:   id = c374, name = (ErbB4:ErbB2)_P:GAP:(Shc_P):Grb2:Sos:(Ras:GDP), affected by kineticLaw
	xdot(198) = (-1.0 * reaction_v114) + ( 1.0 * reaction_v276) + ( 1.0 * reaction_v310) + (-1.0 * reaction_v594);
	
% Species:   id = c371, name = (ErbB3:ErbB2)_P:GAP:(Shc_P):Grb2:Sos:(Ras:GDP), affected by kineticLaw
	xdot(199) = (-1.0 * reaction_v115) + ( 1.0 * reaction_v278) + ( 1.0 * reaction_v308) + (-1.0 * reaction_v593);
	
% Species:   id = c368, name = (ErbB4:ErbB2)_P:GAP:(Shc_P):Grb2:Sos, affected by kineticLaw
	xdot(200) = (-1.0 * reaction_v116) + (-1.0 * reaction_v276) + (-1.0 * reaction_v310) + (-1.0 * reaction_v312) + (-1.0 * reaction_v362) + ( 1.0 * reaction_v406) + ( 1.0 * reaction_v426) + ( 1.0 * reaction_v486) + (-1.0 * reaction_v584);
	
% Species:   id = c362, name = (ErbB4:ErbB2)_P:GAP:(Shc_P):Grb2, affected by kineticLaw
	xdot(201) = (-1.0 * reaction_v117) + ( 1.0 * reaction_v236) + (-1.0 * reaction_v406) + ( 1.0 * reaction_v471) + (-1.0 * reaction_v585);
	
% Species:   id = c359, name = (ErbB3:ErbB2)_P:GAP:(Shc_P):Grb2, affected by kineticLaw
	xdot(202) = (-1.0 * reaction_v118) + ( 1.0 * reaction_v234) + (-1.0 * reaction_v408) + ( 1.0 * reaction_v469) + (-1.0 * reaction_v583);
	
% Species:   id = c323, name = 2(ErbB2)_P:GAP:Grb2:Sos:(Ras:GTP), affected by kineticLaw
	xdot(203) = (-1.0 * reaction_v120) + ( 1.0 * reaction_v334) + ( 1.0 * reaction_v340) + (-1.0 * reaction_v577);
	
% Species:   id = c320, name = 2(ErbB2)_P:GAP:Grb2:Sos:(Ras:GDP), affected by kineticLaw
	xdot(204) = (-1.0 * reaction_v121) + ( 1.0 * reaction_v274) + ( 1.0 * reaction_v288) + (-1.0 * reaction_v576);
	
% Species:   id = c317, name = 2(ErbB2)_P:GAP:Grb2:Sos, affected by kineticLaw
	xdot(205) = (-1.0 * reaction_v122) + ( 1.0 * reaction_v246) + (-1.0 * reaction_v274) + (-1.0 * reaction_v288) + (-1.0 * reaction_v334) + (-1.0 * reaction_v340) + ( 1.0 * reaction_v437) + (-1.0 * reaction_v575);
	
% Species:   id = c314, name = 2(ErbB2)_P:GAP:Grb2, affected by kineticLaw
	xdot(206) = (-1.0 * reaction_v123) + ( 1.0 * reaction_v232) + (-1.0 * reaction_v246) + (-1.0 * reaction_v574);
	
% Species:   id = c311, name = 2(ErbB2)_P:GAP:(Shc_P):Grb2:Sos:(Ras:GTP), affected by kineticLaw
	xdot(207) = (-1.0 * reaction_v124) + ( 1.0 * reaction_v332) + ( 1.0 * reaction_v342) + (-1.0 * reaction_v573);
	
% Species:   id = c308, name = 2(ErbB2)_P:GAP:(Shc_P):Grb2:Sos:(Ras:GDP), affected by kineticLaw
	xdot(208) = (-1.0 * reaction_v125) + ( 1.0 * reaction_v272) + ( 1.0 * reaction_v290) + (-1.0 * reaction_v572);
	
% Species:   id = c305, name = 2(ErbB2)_P:GAP:(Shc_P):Grb2:Sos, affected by kineticLaw
	xdot(209) = (-1.0 * reaction_v126) + (-1.0 * reaction_v272) + (-1.0 * reaction_v290) + (-1.0 * reaction_v332) + (-1.0 * reaction_v342) + ( 1.0 * reaction_v404) + ( 1.0 * reaction_v422) + ( 1.0 * reaction_v482);
	
% Species:   id = c302, name = 2(ErbB2)_P:GAP:(Shc_P):Grb2, affected by kineticLaw
	xdot(210) = (-1.0 * reaction_v127) + ( 1.0 * reaction_v230) + (-1.0 * reaction_v404) + ( 1.0 * reaction_v463) + (-1.0 * reaction_v570);
	
% Species:   id = c239, name = (ErbB1:ErbB4)_P:GAP:Grb2:Sos, affected by kineticLaw
	xdot(211) = (-1.0 * reaction_v128) + ( 1.0 * reaction_v254) + (-1.0 * reaction_v270) + (-1.0 * reaction_v306) + (-1.0 * reaction_v320) + (-1.0 * reaction_v358) + ( 1.0 * reaction_v435) + (-1.0 * reaction_v565);
	
% Species:   id = c238, name = (ErbB1:ErbB3)_P:GAP:Grb2:Sos, affected by kineticLaw
	xdot(212) = (-1.0 * reaction_v129) + ( 1.0 * reaction_v253) + (-1.0 * reaction_v269) + (-1.0 * reaction_v305) + (-1.0 * reaction_v319) + (-1.0 * reaction_v357) + ( 1.0 * reaction_v434) + (-1.0 * reaction_v564);
	
% Species:   id = c237, name = (ErbB1:ErbB2)_P:GAP:Grb2:Sos, affected by kineticLaw
	xdot(213) = (-1.0 * reaction_v130) + ( 1.0 * reaction_v252) + (-1.0 * reaction_v268) + (-1.0 * reaction_v304) + (-1.0 * reaction_v318) + (-1.0 * reaction_v356) + ( 1.0 * reaction_v433) + (-1.0 * reaction_v563);
	
% Species:   id = c257, name = (ErbB1:ErbB4)_P:GAP:Grb2:Sos:(Ras:GTP), affected by kineticLaw
	xdot(214) = (-1.0 * reaction_v133) + ( 1.0 * reaction_v320) + ( 1.0 * reaction_v358) + (-1.0 * reaction_v560);
	
% Species:   id = c256, name = (ErbB1:ErbB3)_P:GAP:Grb2:Sos:(Ras:GTP), affected by kineticLaw
	xdot(215) = (-1.0 * reaction_v134) + ( 1.0 * reaction_v319) + ( 1.0 * reaction_v357) + (-1.0 * reaction_v559);
	
% Species:   id = c255, name = (ErbB1:ErbB2)_P:GAP:Grb2:Sos:(Ras:GTP), affected by kineticLaw
	xdot(216) = (-1.0 * reaction_v135) + ( 1.0 * reaction_v318) + ( 1.0 * reaction_v356) + (-1.0 * reaction_v558);
	
% Species:   id = c248, name = (ErbB1:ErbB4)_P:GAP:Grb2:Sos:(Ras:GDP), affected by kineticLaw
	xdot(217) = (-1.0 * reaction_v136) + ( 1.0 * reaction_v270) + ( 1.0 * reaction_v306) + (-1.0 * reaction_v557);
	
% Species:   id = c247, name = (ErbB1:ErbB3)_P:GAP:Grb2:Sos:(Ras:GDP), affected by kineticLaw
	xdot(218) = (-1.0 * reaction_v137) + ( 1.0 * reaction_v269) + ( 1.0 * reaction_v305) + (-1.0 * reaction_v556);
	
% Species:   id = c246, name = (ErbB1:ErbB2)_P:GAP:Grb2:Sos:(Ras:GDP), affected by kineticLaw
	xdot(219) = (-1.0 * reaction_v138) + ( 1.0 * reaction_v268) + ( 1.0 * reaction_v304) + (-1.0 * reaction_v555);
	
% Species:   id = c230, name = (ErbB1:ErbB4)_P:GAP:Grb2, affected by kineticLaw
	xdot(220) = (-1.0 * reaction_v139) + ( 1.0 * reaction_v222) + (-1.0 * reaction_v254) + (-1.0 * reaction_v554);
	
% Species:   id = c229, name = (ErbB1:ErbB3)_P:GAP:Grb2, affected by kineticLaw
	xdot(221) = (-1.0 * reaction_v140) + ( 1.0 * reaction_v221) + (-1.0 * reaction_v253) + (-1.0 * reaction_v553);
	
% Species:   id = c228, name = (ErbB1:ErbB2)_P:GAP:Grb2, affected by kineticLaw
	xdot(222) = (-1.0 * reaction_v141) + ( 1.0 * reaction_v220) + (-1.0 * reaction_v252) + (-1.0 * reaction_v552);
	
% Species:   id = c221, name = (ErbB1:ErbB4)_P:GAP:(Shc_P):Grb2:Sos:(Ras:GTP), affected by kineticLaw
	xdot(223) = (-1.0 * reaction_v142) + ( 1.0 * reaction_v330) + ( 1.0 * reaction_v352) + (-1.0 * reaction_v551);
	
% Species:   id = c220, name = (ErbB1:ErbB3)_P:GAP:(Shc_P):Grb2:Sos:(Ras:GTP), affected by kineticLaw
	xdot(224) = (-1.0 * reaction_v143) + ( 1.0 * reaction_v329) + ( 1.0 * reaction_v351) + (-1.0 * reaction_v550);
	
% Species:   id = c219, name = (ErbB1:ErbB2)_P:GAP:(Shc_P):Grb2:Sos:(Ras:GTP), affected by kineticLaw
	xdot(225) = (-1.0 * reaction_v144) + ( 1.0 * reaction_v328) + ( 1.0 * reaction_v350) + (-1.0 * reaction_v549);
	
% Species:   id = c212, name = (ErbB1:ErbB4)_P:GAP:(Shc_P):Grb2:Sos:(Ras:GDP), affected by kineticLaw
	xdot(226) = (-1.0 * reaction_v145) + ( 1.0 * reaction_v264) + ( 1.0 * reaction_v300) + (-1.0 * reaction_v548);
	
% Species:   id = c211, name = (ErbB1:ErbB3)_P:GAP:(Shc_P):Grb2:Sos:(Ras:GDP), affected by kineticLaw
	xdot(227) = (-1.0 * reaction_v146) + ( 1.0 * reaction_v263) + ( 1.0 * reaction_v299) + (-1.0 * reaction_v547);
	
% Species:   id = c210, name = (ErbB1:ErbB2)_P:GAP:(Shc_P):Grb2:Sos:(Ras:GDP), affected by kineticLaw
	xdot(228) = (-1.0 * reaction_v147) + ( 1.0 * reaction_v262) + ( 1.0 * reaction_v298) + (-1.0 * reaction_v546);
	
% Species:   id = c203, name = (ErbB1:ErbB4)_P:GAP:(Shc_P):Grb2:Sos, affected by kineticLaw
	xdot(229) = (-1.0 * reaction_v148) + (-1.0 * reaction_v264) + (-1.0 * reaction_v300) + (-1.0 * reaction_v330) + (-1.0 * reaction_v352) + ( 1.0 * reaction_v402) + ( 1.0 * reaction_v420) + ( 1.0 * reaction_v480) + (-1.0 * reaction_v545);
	
% Species:   id = c202, name = (ErbB1:ErbB3)_P:GAP:(Shc_P):Grb2:Sos, affected by kineticLaw
	xdot(230) = (-1.0 * reaction_v149) + (-1.0 * reaction_v263) + (-1.0 * reaction_v299) + (-1.0 * reaction_v329) + (-1.0 * reaction_v351) + ( 1.0 * reaction_v401) + ( 1.0 * reaction_v419) + ( 1.0 * reaction_v479) + (-1.0 * reaction_v544);
	
% Species:   id = c201, name = (ErbB1:ErbB2)_P:GAP:(Shc_P):Grb2:Sos, affected by kineticLaw
	xdot(231) = (-1.0 * reaction_v150) + (-1.0 * reaction_v262) + (-1.0 * reaction_v298) + (-1.0 * reaction_v328) + (-1.0 * reaction_v350) + ( 1.0 * reaction_v400) + ( 1.0 * reaction_v418) + ( 1.0 * reaction_v478) + (-1.0 * reaction_v543);
	
% Species:   id = c194, name = (ErbB1:ErbB4)_P:GAP:(Shc_P):Grb2, affected by kineticLaw
	xdot(232) = (-1.0 * reaction_v151) + ( 1.0 * reaction_v228) + (-1.0 * reaction_v402) + ( 1.0 * reaction_v459) + (-1.0 * reaction_v542);
	
% Species:   id = c193, name = (ErbB1:ErbB3)_P:GAP:(Shc_P):Grb2, affected by kineticLaw
	xdot(233) = (-1.0 * reaction_v152) + ( 1.0 * reaction_v227) + (-1.0 * reaction_v401) + ( 1.0 * reaction_v458) + (-1.0 * reaction_v541);
	
% Species:   id = c192, name = (ErbB1:ErbB2)_P:GAP:(Shc_P):Grb2, affected by kineticLaw
	xdot(234) = (-1.0 * reaction_v153) + ( 1.0 * reaction_v226) + (-1.0 * reaction_v400) + ( 1.0 * reaction_v457) + (-1.0 * reaction_v540);
	
% Species:   id = c68, name = 2(EGF:ErbB1)_P:GAP:(Shc_P):Grb2:Sos:(Ras:GTP), affected by kineticLaw
	xdot(235) = (-1.0 * reaction_v155) + ( 1.0 * reaction_v174) + ( 1.0 * reaction_v324) + ( 1.0 * reaction_v343) + (-1.0 * reaction_v535);
	
% Species:   id = c67, name = 2(EGF:ErbB1)_P:GAP:(Shc_P):Grb2:Sos:(Ras:GDP), affected by kineticLaw
	xdot(236) = (-1.0 * reaction_v156) + ( 1.0 * reaction_v173) + ( 1.0 * reaction_v258) + ( 1.0 * reaction_v291) + (-1.0 * reaction_v534);
	
% Species:   id = c66, name = 2(EGF:ErbB1)_P:GAP:(Shc_P):Grb2:Sos, affected by kineticLaw
	xdot(237) = (-1.0 * reaction_v157) + ( 1.0 * reaction_v172) + (-1.0 * reaction_v258) + (-1.0 * reaction_v291) + (-1.0 * reaction_v324) + (-1.0 * reaction_v343) + ( 1.0 * reaction_v396) + ( 1.0 * reaction_v414) + ( 1.0 * reaction_v474) + (-1.0 * reaction_v533) + (-1.0 * reaction_v612);
	
% Species:   id = c65, name = 2(EGF:ErbB1)_P:GAP:(Shc_P):Grb2, affected by kineticLaw
	xdot(238) = (-1.0 * reaction_v158) + ( 1.0 * reaction_v171) + ( 1.0 * reaction_v216) + (-1.0 * reaction_v396) + ( 1.0 * reaction_v447) + (-1.0 * reaction_v532) + (-1.0 * reaction_v672);
	
% Species:   id = c21, name = 2(EGF:ErbB1)_P:GAP:Grb2:Sos:(Ras:GTP), affected by kineticLaw
	xdot(239) = (-1.0 * reaction_v159) + ( 1.0 * reaction_v170) + ( 1.0 * reaction_v323) + ( 1.0 * reaction_v344) + (-1.0 * reaction_v529);
	
% Species:   id = c20, name = 2(EGF:ErbB1)_P:GAP:Grb2:Sos:(Ras:GDP), affected by kineticLaw
	xdot(240) = (-1.0 * reaction_v160) + ( 1.0 * reaction_v163) + ( 1.0 * reaction_v257) + ( 1.0 * reaction_v292) + (-1.0 * reaction_v528);
	
% Species:   id = c18, name = 2(EGF:ErbB1)_P:GAP:Grb2, affected by kineticLaw
	xdot(241) = (-1.0 * reaction_v161) + ( 1.0 * reaction_v175) + ( 1.0 * reaction_v215) + (-1.0 * reaction_v247) + (-1.0 * reaction_v526) + (-1.0 * reaction_v670);
	
% Species:   id = c19, name = 2(EGF:ErbB1)_P:GAP:Grb2:Sos, affected by kineticLaw
	xdot(242) = (-1.0 * reaction_v162) + ( 1.0 * reaction_v169) + ( 1.0 * reaction_v247) + (-1.0 * reaction_v257) + (-1.0 * reaction_v292) + (-1.0 * reaction_v323) + (-1.0 * reaction_v344) + ( 1.0 * reaction_v429) + (-1.0 * reaction_v527) + (-1.0 * reaction_v610);
	
% Species:   id = c6, name = ErbB1:ATP, affected by kineticLaw
	xdot(243) = ( 1.0 * reaction_v164) + (-1.0 * reaction_v208) + (-1.0 * reaction_v523) + (-1.0 * reaction_v792) + (-1.0 * reaction_v793);
	
% Species:   id = c5, name = 2(EGF:ErbB1)_P, affected by kineticLaw
	xdot(244) = (-1.0 * reaction_v165) + (-1.0 * reaction_v198) + ( 1.0 * reaction_v673) + (-1.0 * reaction_v803) + (-1.0 * reaction_v804) + (-1.0 * reaction_v806) + (-1.0 * reaction_v859) + (-1.0 * reaction_v860) + (-1.0 * reaction_v861) + (-1.0 * reaction_v862);
	
% Species:   id = c8, name = 2(EGF:ErbB1)_P, affected by kineticLaw
	xdot(245) = ( 1.0 * reaction_v165) + (-1.0 * reaction_v197) + (-1.0 * reaction_v652) + (-1.0 * reaction_v811);
	
% Species:   id = c15, name = 2(EGF:ErbB1)_P:GAP, affected by kineticLaw
	xdot(246) = (-1.0 * reaction_v166) + ( 1.0 * reaction_v198) + (-1.0 * reaction_v212) + (-1.0 * reaction_v367) + (-1.0 * reaction_v413) + (-1.0 * reaction_v428) + (-1.0 * reaction_v444) + (-1.0 * reaction_v445);
	
% Species:   id = c17, name = 2(EGF:ErbB1)_P:GAP, affected by kineticLaw
	xdot(247) = ( 1.0 * reaction_v166) + ( 1.0 * reaction_v197) + (-1.0 * reaction_v215) + (-1.0 * reaction_v368) + (-1.0 * reaction_v414) + (-1.0 * reaction_v429) + (-1.0 * reaction_v446) + (-1.0 * reaction_v447) + (-1.0 * reaction_v525);
	
% Species:   id = c32, name = 2(EGF:ErbB1)_P:GAP:Shc, affected by kineticLaw
	xdot(248) = (-1.0 * reaction_v167) + ( 1.0 * reaction_v367) + (-1.0 * reaction_v388);
	
% Species:   id = c63, name = 2(EGF:ErbB1)_P:GAP:Shc, affected by kineticLaw
	xdot(249) = ( 1.0 * reaction_v167) + ( 1.0 * reaction_v368) + (-1.0 * reaction_v387) + (-1.0 * reaction_v530);
	
% Species:   id = c33, name = 2(EGF:ErbB1)_P:GAP:(Shc_P), affected by kineticLaw
	xdot(250) = (-1.0 * reaction_v168) + (-1.0 * reaction_v214) + ( 1.0 * reaction_v388) + ( 1.0 * reaction_v444) + (-1.0 * reaction_v473);
	
% Species:   id = c64, name = 2(EGF:ErbB1)_P:GAP:(Shc_P), affected by kineticLaw
	xdot(251) = ( 1.0 * reaction_v168) + (-1.0 * reaction_v216) + ( 1.0 * reaction_v387) + ( 1.0 * reaction_v446) + (-1.0 * reaction_v474) + (-1.0 * reaction_v531);
	
% Species:   id = c347, name = (ErbB3:ErbB2)_P:GAP:Shc, affected by kineticLaw
	xdot(252) = (-1.0 * reaction_v179) + ( 1.0 * reaction_v377) + (-1.0 * reaction_v381);
	
% Species:   id = c349, name = (ErbB3:ErbB2)_P:GAP:Shc, affected by kineticLaw
	xdot(253) = ( 1.0 * reaction_v179) + ( 1.0 * reaction_v378) + (-1.0 * reaction_v382) + (-1.0 * reaction_v579);
	
% Species:   id = c348, name = (ErbB4:ErbB2)_P:GAP:Shc, affected by kineticLaw
	xdot(254) = (-1.0 * reaction_v180) + ( 1.0 * reaction_v379) + (-1.0 * reaction_v383);
	
% Species:   id = c350, name = (ErbB4:ErbB2)_P:GAP:Shc, affected by kineticLaw
	xdot(255) = ( 1.0 * reaction_v180) + ( 1.0 * reaction_v380) + (-1.0 * reaction_v384) + (-1.0 * reaction_v580);
	
% Species:   id = c351, name = (ErbB3:ErbB2)_P:GAP:(Shc_P), affected by kineticLaw
	xdot(256) = (-1.0 * reaction_v181) + (-1.0 * reaction_v233) + ( 1.0 * reaction_v381) + ( 1.0 * reaction_v464) + (-1.0 * reaction_v483);
	
% Species:   id = c353, name = (ErbB3:ErbB2)_P:GAP:(Shc_P), affected by kineticLaw
	xdot(257) = ( 1.0 * reaction_v181) + (-1.0 * reaction_v234) + ( 1.0 * reaction_v382) + ( 1.0 * reaction_v465) + (-1.0 * reaction_v484) + (-1.0 * reaction_v581);
	
% Species:   id = c508, name = ErbB2:Inh, affected by kineticLaw
	xdot(258) = ( 1.0 * reaction_v182);
	
% Species:   id = c512, name = ErbB4:Inh, affected by kineticLaw
	xdot(259) = ( 1.0 * reaction_v183);
	
% Species:   id = c354, name = (ErbB4:ErbB2)_P:GAP:(Shc_P), affected by kineticLaw
	xdot(260) = (-1.0 * reaction_v184) + (-1.0 * reaction_v235) + ( 1.0 * reaction_v383) + ( 1.0 * reaction_v466) + (-1.0 * reaction_v485);
	
% Species:   id = c356, name = (ErbB4:ErbB2)_P:GAP:(Shc_P), affected by kineticLaw
	xdot(261) = ( 1.0 * reaction_v184) + (-1.0 * reaction_v236) + ( 1.0 * reaction_v384) + ( 1.0 * reaction_v467) + (-1.0 * reaction_v486) + (-1.0 * reaction_v582);
	
% Species:   id = c148, name = (ErbB1:ErbB2)_P, affected by kineticLaw
	xdot(262) = (-1.0 * reaction_v185) + (-1.0 * reaction_v199) + ( 1.0 * reaction_v674) + (-1.0 * reaction_v807);
	
% Species:   id = c162, name = (ErbB1:ErbB2)_P, affected by kineticLaw
	xdot(263) = ( 1.0 * reaction_v185) + (-1.0 * reaction_v194) + (-1.0 * reaction_v656) + (-1.0 * reaction_v808);
	
% Species:   id = c149, name = (ErbB1:ErbB3)_P, affected by kineticLaw
	xdot(264) = (-1.0 * reaction_v186) + (-1.0 * reaction_v200) + ( 1.0 * reaction_v675) + (-1.0 * reaction_v812) + (-1.0 * reaction_v822);
	
% Species:   id = c163, name = (ErbB1:ErbB3)_P, affected by kineticLaw
	xdot(265) = ( 1.0 * reaction_v186) + (-1.0 * reaction_v195) + (-1.0 * reaction_v650) + (-1.0 * reaction_v809);
	
% Species:   id = c150, name = (ErbB1:ErbB4)_P, affected by kineticLaw
	xdot(266) = (-1.0 * reaction_v187) + (-1.0 * reaction_v201) + ( 1.0 * reaction_v676) + (-1.0 * reaction_v813) + (-1.0 * reaction_v823);
	
% Species:   id = c164, name = (ErbB1:ErbB4)_P, affected by kineticLaw
	xdot(267) = ( 1.0 * reaction_v187) + (-1.0 * reaction_v196) + (-1.0 * reaction_v651) + (-1.0 * reaction_v810);
	
% Species:   id = c289, name = 2(ErbB2)_P, affected by kineticLaw
	xdot(268) = (-1.0 * reaction_v188) + (-1.0 * reaction_v207) + ( 1.0 * reaction_v664) + (-1.0 * reaction_v814);
	
% Species:   id = c290, name = 2(ErbB2)_P, affected by kineticLaw
	xdot(269) = ( 1.0 * reaction_v188) + (-1.0 * reaction_v206) + (-1.0 * reaction_v653);
	
% Species:   id = c337, name = (ErbB3:ErbB2)_P, affected by kineticLaw
	xdot(270) = ( 1.0 * reaction_v189) + (-1.0 * reaction_v204) + (-1.0 * reaction_v654) + (-1.0 * reaction_v826);
	
% Species:   id = c338, name = (ErbB4:ErbB2)_P, affected by kineticLaw
	xdot(271) = ( 1.0 * reaction_v190) + (-1.0 * reaction_v205) + (-1.0 * reaction_v655) + (-1.0 * reaction_v827);
	
% Species:   id = c291, name = 2(ErbB2)_P:GAP, affected by kineticLaw
	xdot(272) = (-1.0 * reaction_v191) + ( 1.0 * reaction_v207) + (-1.0 * reaction_v231) + (-1.0 * reaction_v375) + (-1.0 * reaction_v421) + (-1.0 * reaction_v436) + (-1.0 * reaction_v460) + (-1.0 * reaction_v462);
	
% Species:   id = c293, name = 2(ErbB2)_P:GAP, affected by kineticLaw
	xdot(273) = ( 1.0 * reaction_v191) + ( 1.0 * reaction_v206) + (-1.0 * reaction_v232) + (-1.0 * reaction_v376) + (-1.0 * reaction_v422) + (-1.0 * reaction_v437) + (-1.0 * reaction_v461) + (-1.0 * reaction_v463) + (-1.0 * reaction_v567);
	
% Species:   id = c294, name = 2(ErbB2)_P:GAP:Shc, affected by kineticLaw
	xdot(274) = (-1.0 * reaction_v192) + ( 1.0 * reaction_v375) + (-1.0 * reaction_v385);
	
% Species:   id = c296, name = 2(ErbB2)_P:GAP:Shc, affected by kineticLaw
	xdot(275) = ( 1.0 * reaction_v192) + ( 1.0 * reaction_v376) + (-1.0 * reaction_v386) + (-1.0 * reaction_v568);
	
% Species:   id = c297, name = 2(ErbB2)_P:GAP:(Shc_P), affected by kineticLaw
	xdot(276) = (-1.0 * reaction_v193) + (-1.0 * reaction_v229) + ( 1.0 * reaction_v385) + ( 1.0 * reaction_v460) + (-1.0 * reaction_v481);
	
% Species:   id = c299, name = 2(ErbB2)_P:GAP:(Shc_P), affected by kineticLaw
	xdot(277) = ( 1.0 * reaction_v193) + (-1.0 * reaction_v230) + ( 1.0 * reaction_v386) + ( 1.0 * reaction_v461) + (-1.0 * reaction_v482) + (-1.0 * reaction_v569);
	
% Species:   id = c14, name = GAP, affected by kineticLaw
	xdot(278) = (-1.0 * reaction_v194) + (-1.0 * reaction_v195) + (-1.0 * reaction_v196) + (-1.0 * reaction_v197) + (-1.0 * reaction_v198) + (-1.0 * reaction_v199) + (-1.0 * reaction_v200) + (-1.0 * reaction_v201) + (-1.0 * reaction_v202) + (-1.0 * reaction_v203) + (-1.0 * reaction_v204) + (-1.0 * reaction_v205) + (-1.0 * reaction_v206) + (-1.0 * reaction_v207);
	
% Species:   id = c165, name = (ErbB1:ErbB2)_P:GAP, affected by kineticLaw
	xdot(279) = ( 1.0 * reaction_v194) + (-1.0 * reaction_v220) + (-1.0 * reaction_v372) + (-1.0 * reaction_v418) + (-1.0 * reaction_v433) + (-1.0 * reaction_v451) + (-1.0 * reaction_v457);
	
% Species:   id = c166, name = (ErbB1:ErbB3)_P:GAP, affected by kineticLaw
	xdot(280) = ( 1.0 * reaction_v195) + (-1.0 * reaction_v221) + (-1.0 * reaction_v373) + (-1.0 * reaction_v419) + (-1.0 * reaction_v434) + (-1.0 * reaction_v452) + (-1.0 * reaction_v458);
	
% Species:   id = c167, name = (ErbB1:ErbB4)_P:GAP, affected by kineticLaw
	xdot(281) = ( 1.0 * reaction_v196) + (-1.0 * reaction_v222) + (-1.0 * reaction_v374) + (-1.0 * reaction_v420) + (-1.0 * reaction_v435) + (-1.0 * reaction_v453) + (-1.0 * reaction_v459);
	
% Species:   id = c151, name = (ErbB1:ErbB2)_P:GAP, affected by kineticLaw
	xdot(282) = ( 1.0 * reaction_v199) + (-1.0 * reaction_v217) + (-1.0 * reaction_v369) + (-1.0 * reaction_v415) + (-1.0 * reaction_v430) + (-1.0 * reaction_v448) + (-1.0 * reaction_v454);
	
% Species:   id = c152, name = (ErbB1:ErbB3)_P:GAP, affected by kineticLaw
	xdot(283) = ( 1.0 * reaction_v200) + (-1.0 * reaction_v218) + (-1.0 * reaction_v370) + (-1.0 * reaction_v416) + (-1.0 * reaction_v431) + (-1.0 * reaction_v449) + (-1.0 * reaction_v455);
	
% Species:   id = c153, name = (ErbB1:ErbB4)_P:GAP, affected by kineticLaw
	xdot(284) = ( 1.0 * reaction_v201) + (-1.0 * reaction_v219) + (-1.0 * reaction_v371) + (-1.0 * reaction_v417) + (-1.0 * reaction_v432) + (-1.0 * reaction_v450) + (-1.0 * reaction_v456);
	
% Species:   id = c341, name = (ErbB3:ErbB2)_P:GAP, affected by kineticLaw
	xdot(285) = ( 1.0 * reaction_v202) + (-1.0 * reaction_v237) + (-1.0 * reaction_v377) + (-1.0 * reaction_v423) + (-1.0 * reaction_v438) + (-1.0 * reaction_v464) + (-1.0 * reaction_v468);
	
% Species:   id = c344, name = (ErbB4:ErbB2)_P:GAP, affected by kineticLaw
	xdot(286) = ( 1.0 * reaction_v203) + (-1.0 * reaction_v239) + (-1.0 * reaction_v379) + (-1.0 * reaction_v425) + (-1.0 * reaction_v440) + (-1.0 * reaction_v466) + (-1.0 * reaction_v470);
	
% Species:   id = c343, name = (ErbB3:ErbB2)_P:GAP, affected by kineticLaw
	xdot(287) = ( 1.0 * reaction_v204) + (-1.0 * reaction_v238) + (-1.0 * reaction_v378) + (-1.0 * reaction_v424) + (-1.0 * reaction_v439) + (-1.0 * reaction_v465) + (-1.0 * reaction_v469);
	
% Species:   id = c346, name = (ErbB4:ErbB2)_P:GAP, affected by kineticLaw
	xdot(288) = ( 1.0 * reaction_v205) + (-1.0 * reaction_v240) + (-1.0 * reaction_v380) + (-1.0 * reaction_v426) + (-1.0 * reaction_v441) + (-1.0 * reaction_v467) + (-1.0 * reaction_v471);
	
% Species:   id = c16, name = EGF, affected by kineticLaw
	xdot(289) = (-1.0 * reaction_v208) + (-1.0 * reaction_v599) + (-1.0 * reaction_v801);
	
% Species:   id = c515, name = HRG
%WARNING speciesID: c515, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(290) = 0.0;
	
% Species:   id = c157, name = (HRG:ErbB3), affected by kineticLaw
	xdot(291) = ( 1.0 * reaction_v209) + (-1.0 * reaction_v787) + (-1.0 * reaction_v792);
	
% Species:   id = c22, name = Grb2, affected by kineticLaw
	xdot(292) = (-1.0 * reaction_v212) + (-1.0 * reaction_v213) + (-1.0 * reaction_v214) + (-1.0 * reaction_v215) + (-1.0 * reaction_v216) + (-1.0 * reaction_v217) + (-1.0 * reaction_v218) + (-1.0 * reaction_v219) + (-1.0 * reaction_v220) + (-1.0 * reaction_v221) + (-1.0 * reaction_v222) + (-1.0 * reaction_v223) + (-1.0 * reaction_v224) + (-1.0 * reaction_v225) + (-1.0 * reaction_v226) + (-1.0 * reaction_v227) + (-1.0 * reaction_v228) + (-1.0 * reaction_v229) + (-1.0 * reaction_v230) + (-1.0 * reaction_v231) + (-1.0 * reaction_v232) + (-1.0 * reaction_v233) + (-1.0 * reaction_v234) + (-1.0 * reaction_v235) + (-1.0 * reaction_v236) + (-1.0 * reaction_v237) + (-1.0 * reaction_v238) + (-1.0 * reaction_v239) + (-1.0 * reaction_v240) + (-1.0 * reaction_v442);
	
% Species:   id = c40, name = (Shc_P), affected by kineticLaw
	xdot(293) = (-1.0 * reaction_v213) + (-1.0 * reaction_v427) + (-1.0 * reaction_v443) + (-1.0 * reaction_v444) + (-1.0 * reaction_v446) + (-1.0 * reaction_v448) + (-1.0 * reaction_v449) + (-1.0 * reaction_v450) + (-1.0 * reaction_v451) + (-1.0 * reaction_v452) + (-1.0 * reaction_v453) + (-1.0 * reaction_v460) + (-1.0 * reaction_v461) + (-1.0 * reaction_v464) + (-1.0 * reaction_v465) + (-1.0 * reaction_v466) + (-1.0 * reaction_v467);
	
% Species:   id = c39, name = (Shc_P):Grb2, affected by kineticLaw
	xdot(294) = ( 1.0 * reaction_v213) + (-1.0 * reaction_v445) + (-1.0 * reaction_v447) + (-1.0 * reaction_v454) + (-1.0 * reaction_v455) + (-1.0 * reaction_v456) + (-1.0 * reaction_v457) + (-1.0 * reaction_v458) + (-1.0 * reaction_v459) + (-1.0 * reaction_v462) + (-1.0 * reaction_v463) + (-1.0 * reaction_v468) + (-1.0 * reaction_v469) + (-1.0 * reaction_v470) + (-1.0 * reaction_v471) + (-1.0 * reaction_v472);
	
% Species:   id = c180, name = (ErbB1:ErbB2)_P:GAP:(Shc_P), affected by kineticLaw
	xdot(295) = (-1.0 * reaction_v223) + ( 1.0 * reaction_v389) + ( 1.0 * reaction_v448) + (-1.0 * reaction_v475);
	
% Species:   id = c181, name = (ErbB1:ErbB3)_P:GAP:(Shc_P), affected by kineticLaw
	xdot(296) = (-1.0 * reaction_v224) + ( 1.0 * reaction_v390) + ( 1.0 * reaction_v449) + (-1.0 * reaction_v476);
	
% Species:   id = c182, name = (ErbB1:ErbB4)_P:GAP:(Shc_P), affected by kineticLaw
	xdot(297) = (-1.0 * reaction_v225) + ( 1.0 * reaction_v391) + ( 1.0 * reaction_v450) + (-1.0 * reaction_v477);
	
% Species:   id = c183, name = (ErbB1:ErbB2)_P:GAP:(Shc_P), affected by kineticLaw
	xdot(298) = (-1.0 * reaction_v226) + ( 1.0 * reaction_v392) + ( 1.0 * reaction_v451) + (-1.0 * reaction_v478);
	
% Species:   id = c184, name = (ErbB1:ErbB3)_P:GAP:(Shc_P), affected by kineticLaw
	xdot(299) = (-1.0 * reaction_v227) + ( 1.0 * reaction_v393) + ( 1.0 * reaction_v452) + (-1.0 * reaction_v479);
	
% Species:   id = c185, name = (ErbB1:ErbB4)_P:GAP:(Shc_P), affected by kineticLaw
	xdot(300) = (-1.0 * reaction_v228) + ( 1.0 * reaction_v394) + ( 1.0 * reaction_v453) + (-1.0 * reaction_v480);
	
% Species:   id = c24, name = Sos, affected by kineticLaw
	xdot(301) = (-1.0 * reaction_v241) + (-1.0 * reaction_v242) + (-1.0 * reaction_v243) + (-1.0 * reaction_v244) + (-1.0 * reaction_v245) + (-1.0 * reaction_v246) + (-1.0 * reaction_v247) + (-1.0 * reaction_v248) + (-1.0 * reaction_v249) + (-1.0 * reaction_v250) + (-1.0 * reaction_v251) + (-1.0 * reaction_v252) + (-1.0 * reaction_v253) + (-1.0 * reaction_v254) + (-1.0 * reaction_v395) + (-1.0 * reaction_v396) + (-1.0 * reaction_v397) + (-1.0 * reaction_v398) + (-1.0 * reaction_v399) + (-1.0 * reaction_v400) + (-1.0 * reaction_v401) + (-1.0 * reaction_v402) + (-1.0 * reaction_v403) + (-1.0 * reaction_v404) + (-1.0 * reaction_v405) + (-1.0 * reaction_v406) + (-1.0 * reaction_v407) + (-1.0 * reaction_v408) + (-1.0 * reaction_v442) + (-1.0 * reaction_v472) + (-1.0 * reaction_v613) + (-1.0 * reaction_v614);
	
% Species:   id = c26, name = Ras:GDP, affected by kineticLaw
	xdot(302) = (-1.0 * reaction_v255) + (-1.0 * reaction_v256) + (-1.0 * reaction_v257) + (-1.0 * reaction_v258) + (-1.0 * reaction_v259) + (-1.0 * reaction_v260) + (-1.0 * reaction_v261) + (-1.0 * reaction_v262) + (-1.0 * reaction_v263) + (-1.0 * reaction_v264) + (-1.0 * reaction_v265) + (-1.0 * reaction_v266) + (-1.0 * reaction_v267) + (-1.0 * reaction_v268) + (-1.0 * reaction_v269) + (-1.0 * reaction_v270) + (-1.0 * reaction_v271) + (-1.0 * reaction_v272) + (-1.0 * reaction_v273) + (-1.0 * reaction_v274) + (-1.0 * reaction_v275) + (-1.0 * reaction_v276) + (-1.0 * reaction_v277) + (-1.0 * reaction_v278) + (-1.0 * reaction_v279) + (-1.0 * reaction_v280) + (-1.0 * reaction_v281) + (-1.0 * reaction_v282) + (-1.0 * reaction_v339) + (-1.0 * reaction_v340) + (-1.0 * reaction_v341) + (-1.0 * reaction_v342) + (-1.0 * reaction_v343) + (-1.0 * reaction_v344) + (-1.0 * reaction_v345) + (-1.0 * reaction_v346) + (-1.0 * reaction_v347) + (-1.0 * reaction_v348) + (-1.0 * reaction_v349) + (-1.0 * reaction_v350) + (-1.0 * reaction_v351) + (-1.0 * reaction_v352) + (-1.0 * reaction_v353) + (-1.0 * reaction_v354) + (-1.0 * reaction_v355) + (-1.0 * reaction_v356) + (-1.0 * reaction_v357) + (-1.0 * reaction_v358) + (-1.0 * reaction_v359) + (-1.0 * reaction_v360) + (-1.0 * reaction_v361) + (-1.0 * reaction_v362) + (-1.0 * reaction_v363) + (-1.0 * reaction_v364) + (-1.0 * reaction_v365) + (-1.0 * reaction_v366) + (-1.0 * reaction_v751) + (-1.0 * reaction_v752) + (-1.0 * reaction_v753) + (-1.0 * reaction_v754) + (-1.0 * reaction_v755) + (-1.0 * reaction_v756) + (-1.0 * reaction_v757);
	
% Species:   id = c28, name = Ras:GTP, affected by kineticLaw
	xdot(303) = (-1.0 * reaction_v283) + (-1.0 * reaction_v285) + (-1.0 * reaction_v287) + (-1.0 * reaction_v289) + (-1.0 * reaction_v293) + (-1.0 * reaction_v294) + (-1.0 * reaction_v295) + (-1.0 * reaction_v296) + (-1.0 * reaction_v297) + (-1.0 * reaction_v301) + (-1.0 * reaction_v302) + (-1.0 * reaction_v303) + (-1.0 * reaction_v307) + (-1.0 * reaction_v309) + (-1.0 * reaction_v409) + (-1.0 * reaction_v758) + (-1.0 * reaction_v759) + (-1.0 * reaction_v760) + (-1.0 * reaction_v761) + (-1.0 * reaction_v762) + (-1.0 * reaction_v763) + (-1.0 * reaction_v764);
	
% Species:   id = c69, name = (Ras:GTP)_i, affected by kineticLaw
	xdot(304) = (-1.0 * reaction_v284) + (-1.0 * reaction_v286) + (-1.0 * reaction_v288) + (-1.0 * reaction_v290) + (-1.0 * reaction_v291) + (-1.0 * reaction_v292) + (-1.0 * reaction_v298) + (-1.0 * reaction_v299) + (-1.0 * reaction_v300) + (-1.0 * reaction_v304) + (-1.0 * reaction_v305) + (-1.0 * reaction_v306) + (-1.0 * reaction_v308) + (-1.0 * reaction_v310) + (-1.0 * reaction_v410);
	
% Species:   id = c43, name = Ras_activated:GTP, affected by kineticLaw
	xdot(305) = (-1.0 * reaction_v311) + (-1.0 * reaction_v313) + (-1.0 * reaction_v315) + (-1.0 * reaction_v316) + (-1.0 * reaction_v317) + (-1.0 * reaction_v321) + (-1.0 * reaction_v322) + (-1.0 * reaction_v325) + (-1.0 * reaction_v326) + (-1.0 * reaction_v327) + (-1.0 * reaction_v331) + (-1.0 * reaction_v333) + (-1.0 * reaction_v335) + (-1.0 * reaction_v337) + (-1.0 * reaction_v412);
	
% Species:   id = c71, name = (Ras_activated:GTP)_i, affected by kineticLaw
	xdot(306) = (-1.0 * reaction_v312) + (-1.0 * reaction_v314) + (-1.0 * reaction_v318) + (-1.0 * reaction_v319) + (-1.0 * reaction_v320) + (-1.0 * reaction_v323) + (-1.0 * reaction_v324) + (-1.0 * reaction_v328) + (-1.0 * reaction_v329) + (-1.0 * reaction_v330) + (-1.0 * reaction_v332) + (-1.0 * reaction_v334) + (-1.0 * reaction_v336) + (-1.0 * reaction_v338) + (-1.0 * reaction_v411);
	
% Species:   id = c31, name = Shc, affected by kineticLaw
	xdot(307) = (-1.0 * reaction_v367) + (-1.0 * reaction_v368) + (-1.0 * reaction_v369) + (-1.0 * reaction_v370) + (-1.0 * reaction_v371) + (-1.0 * reaction_v372) + (-1.0 * reaction_v373) + (-1.0 * reaction_v374) + (-1.0 * reaction_v375) + (-1.0 * reaction_v376) + (-1.0 * reaction_v377) + (-1.0 * reaction_v378) + (-1.0 * reaction_v379) + (-1.0 * reaction_v380) + ( 1.0 * reaction_v443);
	
% Species:   id = c171, name = (ErbB1:ErbB2)_P:GAP:Shc, affected by kineticLaw
	xdot(308) = ( 1.0 * reaction_v369) + (-1.0 * reaction_v389);
	
% Species:   id = c172, name = (ErbB1:ErbB3)_P:GAP:Shc, affected by kineticLaw
	xdot(309) = ( 1.0 * reaction_v370) + (-1.0 * reaction_v390);
	
% Species:   id = c173, name = (ErbB1:ErbB4)_P:GAP:Shc, affected by kineticLaw
	xdot(310) = ( 1.0 * reaction_v371) + (-1.0 * reaction_v391);
	
% Species:   id = c174, name = (ErbB1:ErbB2)_P:GAP:Shc, affected by kineticLaw
	xdot(311) = ( 1.0 * reaction_v372) + (-1.0 * reaction_v392);
	
% Species:   id = c175, name = (ErbB1:ErbB3)_P:GAP:Shc, affected by kineticLaw
	xdot(312) = ( 1.0 * reaction_v373) + (-1.0 * reaction_v393);
	
% Species:   id = c176, name = (ErbB1:ErbB4)_P:GAP:Shc, affected by kineticLaw
	xdot(313) = ( 1.0 * reaction_v374) + (-1.0 * reaction_v394);
	
% Species:   id = c41, name = Raf, affected by kineticLaw
	xdot(314) = (-1.0 * reaction_v409) + (-1.0 * reaction_v410) + (-1.0 * reaction_v489) + (-1.0 * reaction_v490);
	
% Species:   id = c42, name = Raf:Ras:GTP, affected by kineticLaw
	xdot(315) = ( 1.0 * reaction_v409) + ( 1.0 * reaction_v412);
	
% Species:   id = c70, name = (Raf:Ras:GTP)_i, affected by kineticLaw
	xdot(316) = ( 1.0 * reaction_v410) + ( 1.0 * reaction_v411);
	
% Species:   id = c72, name = (Raf_P)_i, affected by kineticLaw
	xdot(317) = (-1.0 * reaction_v411) + (-1.0 * reaction_v487) + (-1.0 * reaction_v491) + (-1.0 * reaction_v492) + (-1.0 * reaction_v496) + (-1.0 * reaction_v498) + (-1.0 * reaction_v766);
	
% Species:   id = c45, name = Raf_P, affected by kineticLaw
	xdot(318) = (-1.0 * reaction_v412) + (-1.0 * reaction_v488) + (-1.0 * reaction_v493) + (-1.0 * reaction_v494) + (-1.0 * reaction_v495) + (-1.0 * reaction_v497) + (-1.0 * reaction_v765);
	
% Species:   id = c38, name = (Shc_P):Grb2:Sos, affected by kineticLaw
	xdot(319) = (-1.0 * reaction_v413) + (-1.0 * reaction_v414) + (-1.0 * reaction_v415) + (-1.0 * reaction_v416) + (-1.0 * reaction_v417) + (-1.0 * reaction_v418) + (-1.0 * reaction_v419) + (-1.0 * reaction_v420) + (-1.0 * reaction_v421) + (-1.0 * reaction_v422) + (-1.0 * reaction_v423) + (-1.0 * reaction_v424) + (-1.0 * reaction_v425) + (-1.0 * reaction_v426) + ( 1.0 * reaction_v427) + ( 1.0 * reaction_v472);
	
% Species:   id = c30, name = Grb2:Sos, affected by kineticLaw
	xdot(320) = (-1.0 * reaction_v427) + (-1.0 * reaction_v428) + (-1.0 * reaction_v429) + (-1.0 * reaction_v430) + (-1.0 * reaction_v431) + (-1.0 * reaction_v432) + (-1.0 * reaction_v433) + (-1.0 * reaction_v434) + (-1.0 * reaction_v435) + (-1.0 * reaction_v436) + (-1.0 * reaction_v437) + (-1.0 * reaction_v438) + (-1.0 * reaction_v439) + (-1.0 * reaction_v440) + (-1.0 * reaction_v441) + ( 1.0 * reaction_v442) + (-1.0 * reaction_v473) + (-1.0 * reaction_v474) + (-1.0 * reaction_v475) + (-1.0 * reaction_v476) + (-1.0 * reaction_v477) + (-1.0 * reaction_v478) + (-1.0 * reaction_v479) + (-1.0 * reaction_v480) + (-1.0 * reaction_v481) + (-1.0 * reaction_v482) + (-1.0 * reaction_v483) + (-1.0 * reaction_v484) + (-1.0 * reaction_v485) + (-1.0 * reaction_v486);
	
% Species:   id = c44, name = Pase1, affected by kineticLaw
	xdot(321) = (-1.0 * reaction_v487) + (-1.0 * reaction_v488) + (-1.0 * reaction_v489) + (-1.0 * reaction_v490);
	
% Species:   id = c73, name = (Raf_P:Pase1)_i, affected by kineticLaw
	xdot(322) = ( 1.0 * reaction_v487) + ( 1.0 * reaction_v490);
	
% Species:   id = c46, name = Raf_P:Pase1, affected by kineticLaw
	xdot(323) = ( 1.0 * reaction_v488) + ( 1.0 * reaction_v489);
	
% Species:   id = c75, name = (MEK_P)_i, affected by kineticLaw
	xdot(324) = (-1.0 * reaction_v491) + (-1.0 * reaction_v496) + (-1.0 * reaction_v504) + (-1.0 * reaction_v505);
	
% Species:   id = c76, name = (MEK_P:Raf_P)_i, affected by kineticLaw
	xdot(325) = ( 1.0 * reaction_v491) + ( 1.0 * reaction_v498);
	
% Species:   id = c47, name = MEK, affected by kineticLaw
	xdot(326) = (-1.0 * reaction_v492) + (-1.0 * reaction_v493) + (-1.0 * reaction_v502) + (-1.0 * reaction_v503);
	
% Species:   id = c74, name = (MEK:Raf_P)_i, affected by kineticLaw
	xdot(327) = ( 1.0 * reaction_v492) + ( 1.0 * reaction_v496);
	
% Species:   id = c48, name = MEK:Raf_P, affected by kineticLaw
	xdot(328) = ( 1.0 * reaction_v493) + ( 1.0 * reaction_v495);
	
% Species:   id = c49, name = MEK_P, affected by kineticLaw
	xdot(329) = (-1.0 * reaction_v494) + (-1.0 * reaction_v495) + (-1.0 * reaction_v501) + (-1.0 * reaction_v506);
	
% Species:   id = c50, name = MEK_P:Raf_P, affected by kineticLaw
	xdot(330) = ( 1.0 * reaction_v494) + ( 1.0 * reaction_v497);
	
% Species:   id = c51, name = MEK_PP, affected by kineticLaw
	xdot(331) = (-1.0 * reaction_v497) + (-1.0 * reaction_v500) + (-1.0 * reaction_v507) + (-1.0 * reaction_v508) + (-1.0 * reaction_v512) + (-1.0 * reaction_v513);
	
% Species:   id = c77, name = (MEK_PP)_i, affected by kineticLaw
	xdot(332) = (-1.0 * reaction_v498) + (-1.0 * reaction_v499) + (-1.0 * reaction_v509) + (-1.0 * reaction_v510) + (-1.0 * reaction_v511) + (-1.0 * reaction_v514);
	
% Species:   id = c53, name = Pase2, affected by kineticLaw
	xdot(333) = (-1.0 * reaction_v499) + (-1.0 * reaction_v500) + (-1.0 * reaction_v501) + (-1.0 * reaction_v502) + (-1.0 * reaction_v503) + (-1.0 * reaction_v504) + (-1.0 * reaction_v505) + (-1.0 * reaction_v506);
	
% Species:   id = c78, name = (MEK_PP:Pase2)_i, affected by kineticLaw
	xdot(334) = ( 1.0 * reaction_v499) + ( 1.0 * reaction_v504);
	
% Species:   id = c52, name = MEK_PP:Pase2, affected by kineticLaw
	xdot(335) = ( 1.0 * reaction_v500) + ( 1.0 * reaction_v501);
	
% Species:   id = c54, name = MEK_P:Pase2, affected by kineticLaw
	xdot(336) = ( 1.0 * reaction_v502) + ( 1.0 * reaction_v506);
	
% Species:   id = c79, name = (MEK_P:Pase2)_i, affected by kineticLaw
	xdot(337) = ( 1.0 * reaction_v503) + ( 1.0 * reaction_v505);
	
% Species:   id = c55, name = ERK, affected by kineticLaw
	xdot(338) = (-1.0 * reaction_v507) + (-1.0 * reaction_v509) + (-1.0 * reaction_v519) + (-1.0 * reaction_v520);
	
% Species:   id = c56, name = ERK:MEK_PP, affected by kineticLaw
	xdot(339) = ( 1.0 * reaction_v507) + ( 1.0 * reaction_v512);
	
% Species:   id = c57, name = ERK_P, affected by kineticLaw
	xdot(340) = (-1.0 * reaction_v508) + (-1.0 * reaction_v512) + (-1.0 * reaction_v518) + (-1.0 * reaction_v521);
	
% Species:   id = c58, name = ERK_P:MEK_PP, affected by kineticLaw
	xdot(341) = ( 1.0 * reaction_v508) + ( 1.0 * reaction_v513);
	
% Species:   id = c80, name = MEK_PP:ERK, affected by kineticLaw
	xdot(342) = ( 1.0 * reaction_v509) + ( 1.0 * reaction_v511);
	
% Species:   id = c81, name = (ERK_P)_i, affected by kineticLaw
	xdot(343) = (-1.0 * reaction_v510) + (-1.0 * reaction_v511) + (-1.0 * reaction_v517) + (-1.0 * reaction_v522);
	
% Species:   id = c82, name = MEK_PP:ERK_P, affected by kineticLaw
	xdot(344) = ( 1.0 * reaction_v510) + ( 1.0 * reaction_v514);
	
% Species:   id = c59, name = ERK_PP, affected by kineticLaw
	xdot(345) = (-1.0 * reaction_v513) + (-1.0 * reaction_v515) + (-1.0 * reaction_v609) + (-1.0 * reaction_v611) + (-1.0 * reaction_v613) + (-1.0 * reaction_v615) + (-1.0 * reaction_v616) + (-1.0 * reaction_v617) + (-1.0 * reaction_v723) + (-1.0 * reaction_v725) + (-1.0 * reaction_v727) + (-1.0 * reaction_v729) + (-1.0 * reaction_v731) + (-1.0 * reaction_v733) + (-1.0 * reaction_v735) + (-1.0 * reaction_v737) + (-1.0 * reaction_v739) + (-1.0 * reaction_v741) + (-1.0 * reaction_v743) + (-1.0 * reaction_v745) + (-1.0 * reaction_v747) + (-1.0 * reaction_v749);
	
% Species:   id = c83, name = (ERK_PP)_i, affected by kineticLaw
	xdot(346) = (-1.0 * reaction_v514) + (-1.0 * reaction_v516) + (-1.0 * reaction_v610) + (-1.0 * reaction_v612) + (-1.0 * reaction_v614) + (-1.0 * reaction_v618) + (-1.0 * reaction_v619) + (-1.0 * reaction_v620) + (-1.0 * reaction_v724) + (-1.0 * reaction_v726) + (-1.0 * reaction_v728) + (-1.0 * reaction_v730) + (-1.0 * reaction_v732) + (-1.0 * reaction_v734) + (-1.0 * reaction_v736) + (-1.0 * reaction_v738) + (-1.0 * reaction_v740) + (-1.0 * reaction_v742) + (-1.0 * reaction_v744) + (-1.0 * reaction_v746) + (-1.0 * reaction_v748) + (-1.0 * reaction_v750);
	
% Species:   id = c60, name = Pase3, affected by kineticLaw
	xdot(347) = (-1.0 * reaction_v515) + (-1.0 * reaction_v516) + (-1.0 * reaction_v517) + (-1.0 * reaction_v518) + (-1.0 * reaction_v519) + (-1.0 * reaction_v520) + (-1.0 * reaction_v521) + (-1.0 * reaction_v522) + (-1.0 * reaction_v769);
	
% Species:   id = c61, name = ERK_PP:Pase3, affected by kineticLaw
	xdot(348) = ( 1.0 * reaction_v515) + ( 1.0 * reaction_v518);
	
% Species:   id = c84, name = (ERK_PP:Pase3)_i, affected by kineticLaw
	xdot(349) = ( 1.0 * reaction_v516) + ( 1.0 * reaction_v517);
	
% Species:   id = c62, name = ERK_P:Pase3, affected by kineticLaw
	xdot(350) = ( 1.0 * reaction_v519) + ( 1.0 * reaction_v521);
	
% Species:   id = c85, name = (ERK_P:Pase3)_i, affected by kineticLaw
	xdot(351) = ( 1.0 * reaction_v520) + ( 1.0 * reaction_v522);
	
% Species:   id = c86, name = R_degraded, affected by kineticLaw
	xdot(352) = ( 1.0 * reaction_v523) + ( 1.0 * reaction_v524) + ( 1.0 * reaction_v525) + ( 1.0 * reaction_v526) + ( 1.0 * reaction_v527) + ( 1.0 * reaction_v528) + ( 1.0 * reaction_v529) + ( 1.0 * reaction_v530) + ( 1.0 * reaction_v531) + ( 1.0 * reaction_v532) + ( 1.0 * reaction_v533) + ( 1.0 * reaction_v534) + ( 1.0 * reaction_v535) + ( 1.0 * reaction_v537) + ( 1.0 * reaction_v538) + ( 1.0 * reaction_v539) + ( 1.0 * reaction_v540) + ( 1.0 * reaction_v541) + ( 1.0 * reaction_v542) + ( 1.0 * reaction_v543) + ( 1.0 * reaction_v544) + ( 1.0 * reaction_v545) + ( 1.0 * reaction_v546) + ( 1.0 * reaction_v547) + ( 1.0 * reaction_v548) + ( 1.0 * reaction_v549) + ( 1.0 * reaction_v550) + ( 1.0 * reaction_v551) + ( 1.0 * reaction_v552) + ( 1.0 * reaction_v553) + ( 1.0 * reaction_v554) + ( 1.0 * reaction_v555) + ( 1.0 * reaction_v556) + ( 1.0 * reaction_v557) + ( 1.0 * reaction_v558) + ( 1.0 * reaction_v559) + ( 1.0 * reaction_v560) + ( 1.0 * reaction_v563) + ( 1.0 * reaction_v564) + ( 1.0 * reaction_v565) + ( 1.0 * reaction_v566) + ( 1.0 * reaction_v567) + ( 1.0 * reaction_v568) + ( 1.0 * reaction_v569) + ( 1.0 * reaction_v570) + ( 1.0 * reaction_v572) + ( 1.0 * reaction_v573) + ( 1.0 * reaction_v574) + ( 1.0 * reaction_v575) + ( 1.0 * reaction_v576) + ( 1.0 * reaction_v577) + ( 1.0 * reaction_v579) + ( 1.0 * reaction_v580) + ( 1.0 * reaction_v581) + ( 1.0 * reaction_v582) + ( 1.0 * reaction_v583) + ( 1.0 * reaction_v584) + ( 1.0 * reaction_v585) + ( 1.0 * reaction_v586) + ( 1.0 * reaction_v587) + ( 1.0 * reaction_v588) + ( 1.0 * reaction_v589) + ( 1.0 * reaction_v590) + ( 1.0 * reaction_v591) + ( 1.0 * reaction_v592) + ( 1.0 * reaction_v593) + ( 1.0 * reaction_v594) + ( 1.0 * reaction_v595) + ( 1.0 * reaction_v596) + ( 1.0 * reaction_v597) + ( 1.0 * reaction_v598) + ( 1.0 * reaction_v600) + ( 1.0 * reaction_v601) + ( 1.0 * reaction_v602) + ( 1.0 * reaction_v603) + ( 1.0 * reaction_v604) + ( 1.0 * reaction_v605) + ( 1.0 * reaction_v606) + ( 1.0 * reaction_v607) + ( 1.0 * reaction_v608);
	
% Species:   id = c425, name = 2(ErbB2), affected by kineticLaw
	xdot(353) = (-1.0 * reaction_v566) + (-1.0 * reaction_v661);
	
% Species:   id = c13, name = EGF_degraded, affected by kineticLaw
	xdot(354) = ( 1.0 * reaction_v599);
	
% Species:   id = c518, name = (HRG:ErbB3:ErbB1), affected by kineticLaw
	xdot(355) = (-1.0 * reaction_v603) + ( 1.0 * reaction_v792);
	
% Species:   id = c519, name = (HRG:ErbB4:ErbB1), affected by kineticLaw
	xdot(356) = (-1.0 * reaction_v604) + ( 1.0 * reaction_v793);
	
% Species:   id = c339, name = (ErbB3:ErbB2), affected by kineticLaw
	xdot(357) = (-1.0 * reaction_v607) + (-1.0 * reaction_v662);
	
% Species:   id = c340, name = (ErbB4:ErbB2), affected by kineticLaw
	xdot(358) = (-1.0 * reaction_v608) + (-1.0 * reaction_v663);
	
% Species:   id = c95, name = 2(EGF:ErbB1)_P:GAP:Grb2:Sos:(ERK_PP), affected by kineticLaw
	xdot(359) = ( 1.0 * reaction_v609) + ( 1.0 * reaction_v615);
	
% Species:   id = c96, name = 2(EGF:ErbB1)_P:GAP:Grb2:Sos:(ERK_PP), affected by kineticLaw
	xdot(360) = ( 1.0 * reaction_v610) + ( 1.0 * reaction_v618);
	
% Species:   id = c97, name = 2(EGF:ErbB1)_P:GAP:(Shc_P):Grb2:Sos:ERK_PP, affected by kineticLaw
	xdot(361) = ( 1.0 * reaction_v611) + ( 1.0 * reaction_v616);
	
% Species:   id = c98, name = 2(EGF:ErbB1)_P:GAP:(Shc_P):Grb2:Sos:(ERK_PP), affected by kineticLaw
	xdot(362) = ( 1.0 * reaction_v612) + ( 1.0 * reaction_v619);
	
% Species:   id = c101, name = (ERK_PP):Sos, affected by kineticLaw
	xdot(363) = ( 1.0 * reaction_v613) + ( 1.0 * reaction_v617);
	
% Species:   id = c102, name = ((ERK_PP):Sos)_i, affected by kineticLaw
	xdot(364) = ( 1.0 * reaction_v614) + ( 1.0 * reaction_v620);
	
% Species:   id = c99, name = 2(EGF:ErbB1)_P:GAP:Grb2:Sos_P, affected by kineticLaw
	xdot(365) = (-1.0 * reaction_v615) + ( 1.0 * reaction_v669);
	
% Species:   id = c419, name = 2(EGF:ErbB1)_P:GAP:(Shc_P):Grb2:(Sos_P), affected by kineticLaw
	xdot(366) = (-1.0 * reaction_v616) + ( 1.0 * reaction_v671);
	
% Species:   id = c103, name = Sos_P, affected by kineticLaw
	xdot(367) = (-1.0 * reaction_v617) + (-1.0 * reaction_v620) + (-1.0 * reaction_v669) + (-1.0 * reaction_v670) + (-1.0 * reaction_v671) + (-1.0 * reaction_v672);
	
% Species:   id = c100, name = 2(EGF:ErbB1)_P:GAP:Grb2:(Sos_P), affected by kineticLaw
	xdot(368) = (-1.0 * reaction_v618) + ( 1.0 * reaction_v670);
	
% Species:   id = c420, name = 2(EGF:ErbB1)_P:GAP:(Shc_P):Grb2:(Sos_P), affected by kineticLaw
	xdot(369) = (-1.0 * reaction_v619) + ( 1.0 * reaction_v672);
	
% Species:   id = c287, name = PI3K, affected by kineticLaw
	xdot(370) = (-1.0 * reaction_v621) + (-1.0 * reaction_v622) + (-1.0 * reaction_v623) + (-1.0 * reaction_v624) + (-1.0 * reaction_v625) + (-1.0 * reaction_v626) + (-1.0 * reaction_v627);
	
% Species:   id = c486, name = 2(EGF:ErbB1)_P:GAP:Grb2:(Gab1_P#), affected by kineticLaw
	xdot(371) = (-1.0 * reaction_v621) + (-1.0 * reaction_v713) + (-1.0 * reaction_v723) + (-1.0 * reaction_v724) + (-1.0 * reaction_v777) + (-1.0 * reaction_v821);
	
% Species:   id = c104, name = 2(EGF:ErbB1)_P:GAP:Grb2:Gab1_P:PI3K, affected by kineticLaw
	xdot(372) = ( 1.0 * reaction_v621) + (-1.0 * reaction_v630) + (-1.0 * reaction_v695) + (-1.0 * reaction_v751) + (-1.0 * reaction_v758);
	
% Species:   id = c447, name = (ErbB1:ErbB4)_P:GAP:Grb2:Gab1_P, affected by kineticLaw
	xdot(373) = (-1.0 * reaction_v622) + (-1.0 * reaction_v709) + (-1.0 * reaction_v729) + (-1.0 * reaction_v730) + (-1.0 * reaction_v780) + (-1.0 * reaction_v817);
	
% Species:   id = c263, name = (ErbB1:ErbB4)_P:GAP:Grb2:Gab1_P:PI3K, affected by kineticLaw
	xdot(374) = ( 1.0 * reaction_v622) + (-1.0 * reaction_v633) + (-1.0 * reaction_v698) + (-1.0 * reaction_v754) + (-1.0 * reaction_v761);
	
% Species:   id = c445, name = (ErbB1:ErbB2)_P:GAP:Grb2:Gab1_P, affected by kineticLaw
	xdot(375) = (-1.0 * reaction_v623) + (-1.0 * reaction_v707) + (-1.0 * reaction_v725) + (-1.0 * reaction_v726) + (-1.0 * reaction_v782) + (-1.0 * reaction_v815);
	
% Species:   id = c261, name = (ErbB1:ErbB2)_P:GAP:Grb2:Gab1_P:PI3K, affected by kineticLaw
	xdot(376) = ( 1.0 * reaction_v623) + (-1.0 * reaction_v631) + (-1.0 * reaction_v696) + (-1.0 * reaction_v752) + (-1.0 * reaction_v759);
	
% Species:   id = c446, name = (ErbB1:ErbB3)_P:GAP:Grb2:Gab1_P, affected by kineticLaw
	xdot(377) = (-1.0 * reaction_v624) + (-1.0 * reaction_v708) + (-1.0 * reaction_v727) + (-1.0 * reaction_v728) + (-1.0 * reaction_v779) + (-1.0 * reaction_v816);
	
% Species:   id = c262, name = (ErbB1:ErbB3)_P:GAP:Grb2:Gab1_P:PI3K, affected by kineticLaw
	xdot(378) = ( 1.0 * reaction_v624) + (-1.0 * reaction_v632) + (-1.0 * reaction_v697) + (-1.0 * reaction_v753) + (-1.0 * reaction_v760);
	
% Species:   id = c454, name = 2(ErbB2)_P:GAP:Grb2:Gab1_P, affected by kineticLaw
	xdot(379) = (-1.0 * reaction_v625) + (-1.0 * reaction_v710) + (-1.0 * reaction_v731) + (-1.0 * reaction_v732) + (-1.0 * reaction_v778) + (-1.0 * reaction_v818);
	
% Species:   id = c324, name = 2(ErbB2)_P:GAP:Grb2:Gab1_P:PI3K, affected by kineticLaw
	xdot(380) = ( 1.0 * reaction_v625) + (-1.0 * reaction_v629) + (-1.0 * reaction_v699) + (-1.0 * reaction_v755) + (-1.0 * reaction_v762);
	
% Species:   id = c457, name = (ErbB3:ErbB2)_P:GAP:Grb2:Gab1_P, affected by kineticLaw
	xdot(381) = (-1.0 * reaction_v626) + (-1.0 * reaction_v711) + (-1.0 * reaction_v733) + (-1.0 * reaction_v734) + (-1.0 * reaction_v781) + (-1.0 * reaction_v819);
	
% Species:   id = c405, name = (ErbB3:ErbB2)_P:GAP:Grb2:Gab1_P:PI3K, affected by kineticLaw
	xdot(382) = ( 1.0 * reaction_v626) + (-1.0 * reaction_v628) + (-1.0 * reaction_v700) + (-1.0 * reaction_v756) + (-1.0 * reaction_v763);
	
% Species:   id = c460, name = (ErbB4:ErbB2)_P:GAP:Grb2:Gab1_P, affected by kineticLaw
	xdot(383) = (-1.0 * reaction_v627) + (-1.0 * reaction_v712) + (-1.0 * reaction_v735) + (-1.0 * reaction_v736) + (-1.0 * reaction_v783) + (-1.0 * reaction_v820);
	
% Species:   id = c408, name = (ErbB4:ErbB2)_P:GAP:Grb2:Gab1_P:PI3K, affected by kineticLaw
	xdot(384) = ( 1.0 * reaction_v627) + (-1.0 * reaction_v701) + (-1.0 * reaction_v757);
	
% Species:   id = c106, name = PIP3, affected by kineticLaw
	xdot(385) = (-1.0 * reaction_v628) + (-1.0 * reaction_v629) + (-1.0 * reaction_v630) + (-1.0 * reaction_v631) + (-1.0 * reaction_v632) + (-1.0 * reaction_v633) + (-1.0 * reaction_v634) + (-1.0 * reaction_v635) + (-1.0 * reaction_v636) + (-1.0 * reaction_v637) + (-1.0 * reaction_v638) + (-1.0 * reaction_v639) + (-1.0 * reaction_v640) + (-1.0 * reaction_v649) + (-1.0 * reaction_v721) + (-1.0 * reaction_v722);
	
% Species:   id = c453, name = (ErbB3:ErbB2)_P:GAP:Grb2:Gab1_P:PI3K:PIP2, affected by kineticLaw
	xdot(386) = ( 1.0 * reaction_v628) + (-1.0 * reaction_v634) + ( 1.0 * reaction_v700) + (-1.0 * reaction_v702);
	
% Species:   id = c452, name = 2(ErbB2)_P:GAP:Grb2:Gab1_P:PI3K:PIP2, affected by kineticLaw
	xdot(387) = ( 1.0 * reaction_v629) + ( 1.0 * reaction_v699);
	
% Species:   id = c448, name = 2(EGF:ErbB1)_P:GAP:Grb2:Gab1_P:PI3K:PIP2, affected by kineticLaw
	xdot(388) = ( 1.0 * reaction_v630) + ( 1.0 * reaction_v695);
	
% Species:   id = c449, name = (ErbB1:ErbB2)_P:GAP:Grb2:Gab1_P:PI3K:PIP2, affected by kineticLaw
	xdot(389) = ( 1.0 * reaction_v631) + ( 1.0 * reaction_v696);
	
% Species:   id = c450, name = (ErbB1:ErbB3)_P:GAP:Grb2:Gab1_P:PI3K:PIP2, affected by kineticLaw
	xdot(390) = ( 1.0 * reaction_v632) + ( 1.0 * reaction_v697);
	
% Species:   id = c451, name = (ErbB1:ErbB4)_P:GAP:Grb2:Gab1_P:PI3K:PIP2, affected by kineticLaw
	xdot(391) = ( 1.0 * reaction_v633) + ( 1.0 * reaction_v698);
	
% Species:   id = c467, name = (ErbB3:ErbB2)_P:GAP:Grb2:Gab1_P:PI3K:(PIP2)2, affected by kineticLaw
	xdot(392) = ( 1.0 * reaction_v634) + (-1.0 * reaction_v635) + ( 1.0 * reaction_v702) + (-1.0 * reaction_v703);
	
% Species:   id = c468, name = (ErbB3:ErbB2)_P:GAP:Grb2:Gab1_P:PI3K:(PIP2)3, affected by kineticLaw
	xdot(393) = ( 1.0 * reaction_v635) + (-1.0 * reaction_v636) + ( 1.0 * reaction_v703) + (-1.0 * reaction_v704);
	
% Species:   id = c469, name = (ErbB3:ErbB2)_P:GAP:Grb2:Gab1_P:PI3K:(PIP2)4, affected by kineticLaw
	xdot(394) = ( 1.0 * reaction_v636) + (-1.0 * reaction_v637) + ( 1.0 * reaction_v704) + (-1.0 * reaction_v705);
	
% Species:   id = c470, name = (ErbB3:ErbB2)_P:GAP:Grb2:Gab1_P:PI3K:(PIP2)5, affected by kineticLaw
	xdot(395) = ( 1.0 * reaction_v637) + (-1.0 * reaction_v638) + ( 1.0 * reaction_v705) + (-1.0 * reaction_v706);
	
% Species:   id = c471, name = (ErbB3:ErbB2)_P:GAP:Grb2:Gab1_P:PI3K:(PIP2)6, affected by kineticLaw
	xdot(396) = ( 1.0 * reaction_v638) + ( 1.0 * reaction_v706);
	
% Species:   id = c107, name = AKT, affected by kineticLaw
	xdot(397) = (-1.0 * reaction_v639) + (-1.0 * reaction_v647);
	
% Species:   id = c108, name = PIP3:AKT, affected by kineticLaw
	xdot(398) = ( 1.0 * reaction_v639) + (-1.0 * reaction_v642);
	
% Species:   id = c112, name = AKT_P, affected by kineticLaw
	xdot(399) = (-1.0 * reaction_v640) + (-1.0 * reaction_v643) + (-1.0 * reaction_v646) + (-1.0 * reaction_v648);
	
% Species:   id = c495, name = PIP3:AKT_P, affected by kineticLaw
	xdot(400) = ( 1.0 * reaction_v640) + (-1.0 * reaction_v641);
	
% Species:   id = c109, name = PDK1, affected by kineticLaw
	xdot(401) = (-1.0 * reaction_v641) + (-1.0 * reaction_v642) + (-1.0 * reaction_v649);
	
% Species:   id = c496, name = PIP3:AKT_P:PDK1, affected by kineticLaw
	xdot(402) = ( 1.0 * reaction_v641) + ( 1.0 * reaction_v644);
	
% Species:   id = c110, name = PIP3:AKT:PDK1, affected by kineticLaw
	xdot(403) = ( 1.0 * reaction_v642) + ( 1.0 * reaction_v643);
	
% Species:   id = c111, name = PIP3:PDK1, affected by kineticLaw
	xdot(404) = (-1.0 * reaction_v643) + (-1.0 * reaction_v644) + ( 1.0 * reaction_v649);
	
% Species:   id = c497, name = AKT:P:P, affected by kineticLaw
	xdot(405) = (-1.0 * reaction_v644) + (-1.0 * reaction_v645) + (-1.0 * reaction_v765) + (-1.0 * reaction_v766) + (-1.0 * reaction_v767) + (-1.0 * reaction_v768);
	
% Species:   id = c113, name = Pase4, affected by kineticLaw
	xdot(406) = (-1.0 * reaction_v645) + (-1.0 * reaction_v646) + (-1.0 * reaction_v647) + (-1.0 * reaction_v648);
	
% Species:   id = c498, name = AKT:P:P:Pase4, affected by kineticLaw
	xdot(407) = ( 1.0 * reaction_v645) + ( 1.0 * reaction_v648);
	
% Species:   id = c114, name = AKT_P:Pase4, affected by kineticLaw
	xdot(408) = ( 1.0 * reaction_v646) + ( 1.0 * reaction_v647);
	
% Species:   id = c280, name = RTK_Pase, affected by kineticLaw
	xdot(409) = (-1.0 * reaction_v650) + (-1.0 * reaction_v651) + (-1.0 * reaction_v652) + (-1.0 * reaction_v653) + (-1.0 * reaction_v654) + (-1.0 * reaction_v655) + (-1.0 * reaction_v656) + (-1.0 * reaction_v657) + (-1.0 * reaction_v658) + (-1.0 * reaction_v659) + (-1.0 * reaction_v660) + (-1.0 * reaction_v661) + (-1.0 * reaction_v662) + (-1.0 * reaction_v663);
	
% Species:   id = c281, name = (ErbB1:ErbB3)_P:RTK_Pase, affected by kineticLaw
	xdot(410) = ( 1.0 * reaction_v650) + ( 1.0 * reaction_v658);
	
% Species:   id = c282, name = (ErbB1:ErbB4)_P:RTK_Pase, affected by kineticLaw
	xdot(411) = ( 1.0 * reaction_v651) + ( 1.0 * reaction_v659);
	
% Species:   id = c415, name = 2(EGF:ErbB1)_P:RTK_Pase, affected by kineticLaw
	xdot(412) = ( 1.0 * reaction_v652) + ( 1.0 * reaction_v660);
	
% Species:   id = c283, name = 2(ErbB2)_P:RTK_Pase, affected by kineticLaw
	xdot(413) = ( 1.0 * reaction_v653) + ( 1.0 * reaction_v661);
	
% Species:   id = c417, name = (ErbB2:ErbB3)_P:RTK_Pase, affected by kineticLaw
	xdot(414) = ( 1.0 * reaction_v654) + ( 1.0 * reaction_v662);
	
% Species:   id = c418, name = (ErbB2:ErbB4)_P:RTK_Pase, affected by kineticLaw
	xdot(415) = ( 1.0 * reaction_v655) + ( 1.0 * reaction_v663);
	
% Species:   id = c416, name = (ErbB1:ErbB2)_P:RTK_Pase, affected by kineticLaw
	xdot(416) = ( 1.0 * reaction_v656) + ( 1.0 * reaction_v657);
	
% Species:   id = c87, name = ErbB2_P, affected by kineticLaw
	xdot(417) = (-1.0 * reaction_v664) + (-1.0 * reaction_v664) + (-1.0 * reaction_v674) + (-1.0 * reaction_v677) + (-1.0 * reaction_v680) + (-1.0 * reaction_v681) + (-1.0 * reaction_v682);
	
% Species:   id = c531, name = ErbB1, affected by kineticLaw
	xdot(418) = (-1.0 * reaction_v665) + (-1.0 * reaction_v828);
	
% Species:   id = c285, name = Inh
%WARNING speciesID: c285, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(419) = 0.0;
	
% Species:   id = c330, name = EGF:ErbB1_P, affected by kineticLaw
	xdot(420) = (-1.0 * reaction_v673) + (-1.0 * reaction_v673) + (-1.0 * reaction_v674) + (-1.0 * reaction_v675) + (-1.0 * reaction_v676);
	
% Species:   id = c331, name = ErbB3_P, affected by kineticLaw
	xdot(421) = (-1.0 * reaction_v675) + (-1.0 * reaction_v680);
	
% Species:   id = c332, name = ErbB4_P, affected by kineticLaw
	xdot(422) = (-1.0 * reaction_v676) + (-1.0 * reaction_v681);
	
% Species:   id = c509, name = ErbB2:ErbB2:Inh, affected by kineticLaw
	xdot(423) = ( 1.0 * reaction_v682);
	
% Species:   id = c510, name = ErbB3:ErbB2:Inh, affected by kineticLaw
	xdot(424) = ( 1.0 * reaction_v683);
	
% Species:   id = c511, name = ErbB4:ErbB2:Inh, affected by kineticLaw
	xdot(425) = ( 1.0 * reaction_v684);
	
% Species:   id = c513, name = ErbB4:Inh:ErbB2, affected by kineticLaw
	xdot(426) = ( 1.0 * reaction_v685);
	
% Species:   id = c461, name = Shp, affected by kineticLaw
	xdot(427) = (-1.0 * reaction_v686) + (-1.0 * reaction_v722);
	
% Species:   id = c444, name = PIP2, affected by kineticLaw
	xdot(428) = (-1.0 * reaction_v686) + (-1.0 * reaction_v687) + (-1.0 * reaction_v695) + (-1.0 * reaction_v696) + (-1.0 * reaction_v697) + (-1.0 * reaction_v698) + (-1.0 * reaction_v699) + (-1.0 * reaction_v700) + (-1.0 * reaction_v701) + (-1.0 * reaction_v702) + (-1.0 * reaction_v703) + (-1.0 * reaction_v704) + (-1.0 * reaction_v705) + (-1.0 * reaction_v706);
	
% Species:   id = c462, name = PIP3:Shp, affected by kineticLaw
	xdot(429) = ( 1.0 * reaction_v686) + ( 1.0 * reaction_v722);
	
% Species:   id = c279, name = PTEN, affected by kineticLaw
	xdot(430) = (-1.0 * reaction_v687) + (-1.0 * reaction_v721);
	
% Species:   id = c482, name = PIP3:PTEN, affected by kineticLaw
	xdot(431) = ( 1.0 * reaction_v687) + ( 1.0 * reaction_v721);
	
% Species:   id = c426, name = Gab1, affected by kineticLaw
	xdot(432) = (-1.0 * reaction_v688) + (-1.0 * reaction_v689) + (-1.0 * reaction_v690) + (-1.0 * reaction_v691) + (-1.0 * reaction_v692) + (-1.0 * reaction_v693) + (-1.0 * reaction_v694);
	
% Species:   id = c455, name = PI3K, affected by kineticLaw
	xdot(433) = ( 1.0 * reaction_v701);
	
% Species:   id = c463, name = Shp2, affected by kineticLaw
	xdot(434) = (-1.0 * reaction_v707) + (-1.0 * reaction_v708) + (-1.0 * reaction_v709) + (-1.0 * reaction_v710) + (-1.0 * reaction_v711) + (-1.0 * reaction_v712) + (-1.0 * reaction_v713) + (-1.0 * reaction_v714) + (-1.0 * reaction_v715) + (-1.0 * reaction_v716) + (-1.0 * reaction_v717) + (-1.0 * reaction_v718) + (-1.0 * reaction_v719) + (-1.0 * reaction_v720);
	
% Species:   id = c464, name = (ErbB1:ErbB2)_P:GAP:Grb2:Gab1_P:Shp2, affected by kineticLaw
	xdot(435) = ( 1.0 * reaction_v707) + ( 1.0 * reaction_v714);
	
% Species:   id = c465, name = (ErbB1:ErbB3)_P:GAP:Grb2:Gab1_P:Shp2, affected by kineticLaw
	xdot(436) = ( 1.0 * reaction_v708) + ( 1.0 * reaction_v715);
	
% Species:   id = c466, name = (ErbB1:ErbB4)_P:GAP:Grb2:Gab1_P:Shp2, affected by kineticLaw
	xdot(437) = ( 1.0 * reaction_v709) + ( 1.0 * reaction_v716);
	
% Species:   id = c473, name = 2(ErbB2)_P:GAP:Grb2:Gab1_P:Shp2, affected by kineticLaw
	xdot(438) = ( 1.0 * reaction_v710) + ( 1.0 * reaction_v717);
	
% Species:   id = c476, name = (ErbB3:ErbB2)_P:GAP:Grb2:Gab1_P:Shp2, affected by kineticLaw
	xdot(439) = ( 1.0 * reaction_v711) + ( 1.0 * reaction_v718);
	
% Species:   id = c479, name = (ErbB4:ErbB2)_P:GAP:Grb2:Gab1_P:Shp2, affected by kineticLaw
	xdot(440) = ( 1.0 * reaction_v712) + ( 1.0 * reaction_v719) + (-1.0 * reaction_v764);
	
% Species:   id = c489, name = 2(EGF:ErbB1)_P:GAP:Grb2:(Gab1_P):Shp2, affected by kineticLaw
	xdot(441) = ( 1.0 * reaction_v713) + ( 1.0 * reaction_v720);
	
% Species:   id = c431, name = 2(EGF:ErbB1)_P:GAP:Grb2:(Gab1_P):ERK_PP, affected by kineticLaw
	xdot(442) = ( 1.0 * reaction_v723) + ( 1.0 * reaction_v747);
	
% Species:   id = c432, name = 2(EGF:ErbB1)_P:GAP:Grb2:(Gab1_P):ERK_PP_i, affected by kineticLaw
	xdot(443) = ( 1.0 * reaction_v724) + ( 1.0 * reaction_v748);
	
% Species:   id = c433, name = (ErbB1:ErbB2)_P:GAP:Grb2:Gab1_P:ERK_PP, affected by kineticLaw
	xdot(444) = ( 1.0 * reaction_v725) + ( 1.0 * reaction_v745);
	
% Species:   id = c434, name = (ErbB1:ErbB2)_P:GAP:Grb2:Gab1_P:ERK_PP_i, affected by kineticLaw
	xdot(445) = ( 1.0 * reaction_v726) + ( 1.0 * reaction_v746);
	
% Species:   id = c435, name = (ErbB1:ErbB3)_P:GAP:Grb2:Gab1_P:ERK_PP, affected by kineticLaw
	xdot(446) = ( 1.0 * reaction_v727) + ( 1.0 * reaction_v743);
	
% Species:   id = c437, name = (ErbB1:ErbB3)_P:GAP:Grb2:Gab1_P:ERK_PP_i, affected by kineticLaw
	xdot(447) = ( 1.0 * reaction_v728) + ( 1.0 * reaction_v744);
	
% Species:   id = c438, name = (ErbB1:ErbB4)_P:GAP:Grb2:Gab1_P_ERK_PP, affected by kineticLaw
	xdot(448) = ( 1.0 * reaction_v729) + ( 1.0 * reaction_v741);
	
% Species:   id = c440, name = (ErbB1:ErbB4)_P:GAP:Grb2:Gab1_P:ERK_PP_i, affected by kineticLaw
	xdot(449) = ( 1.0 * reaction_v730) + ( 1.0 * reaction_v742);
	
% Species:   id = c474, name = 2(ErbB2)_P:GAP:Grb2:Gab1_P:ERK_PP, affected by kineticLaw
	xdot(450) = ( 1.0 * reaction_v731) + ( 1.0 * reaction_v739);
	
% Species:   id = c475, name = 2(ErbB2)_P:GAP:Grb2:Gab1_P:ERK_PP_i, affected by kineticLaw
	xdot(451) = ( 1.0 * reaction_v732) + ( 1.0 * reaction_v740);
	
% Species:   id = c477, name = (ErbB3:ErbB2)_P:GAP:Grb2:Gab1_P:ERK_PP, affected by kineticLaw
	xdot(452) = ( 1.0 * reaction_v733) + ( 1.0 * reaction_v737);
	
% Species:   id = c478, name = (ErbB3:ErbB2)_P:GAP:Grb2:Gab1_P:ERK_PP_i, affected by kineticLaw
	xdot(453) = ( 1.0 * reaction_v734) + ( 1.0 * reaction_v738);
	
% Species:   id = c480, name = (ErbB4:ErbB2)_P:GAP:Grb2:Gab1_P:ERK_PP, affected by kineticLaw
	xdot(454) = ( 1.0 * reaction_v735) + ( 1.0 * reaction_v749);
	
% Species:   id = c481, name = (ErbB4:ErbB2)_P:GAP:Grb2:Gab1_P:ERK_PP_i, affected by kineticLaw
	xdot(455) = ( 1.0 * reaction_v736) + ( 1.0 * reaction_v750);
	
% Species:   id = c491, name = ErbB3/4:ErbB2:Gab1_P#, affected by kineticLaw
	xdot(456) = (-1.0 * reaction_v737) + (-1.0 * reaction_v738) + (-1.0 * reaction_v774);
	
% Species:   id = c490, name = 2(ErbB2)2:Gab1_P#, affected by kineticLaw
	xdot(457) = (-1.0 * reaction_v739) + (-1.0 * reaction_v740) + (-1.0 * reaction_v771);
	
% Species:   id = c410, name = (ErbB1:ErbB4)_P:GAP:Grb2:Gab1_P, affected by kineticLaw
	xdot(458) = (-1.0 * reaction_v741) + (-1.0 * reaction_v742) + (-1.0 * reaction_v773);
	
% Species:   id = c409, name = (ErbB1:ErbB3)_P:GAP:Grb2:Gab1_P, affected by kineticLaw
	xdot(459) = (-1.0 * reaction_v743) + (-1.0 * reaction_v744) + (-1.0 * reaction_v772);
	
% Species:   id = c430, name = ErbB1:ErbB:Gab1_P#, affected by kineticLaw
	xdot(460) = (-1.0 * reaction_v745) + (-1.0 * reaction_v746) + (-1.0 * reaction_v775);
	
% Species:   id = c488, name = 2(EGF:ErbB1):Gab1_P#, affected by kineticLaw
	xdot(461) = (-1.0 * reaction_v747) + (-1.0 * reaction_v748) + (-1.0 * reaction_v770);
	
% Species:   id = c487, name = (ErbB4:ErbB2)_P:GAP:Grb2:Gab1:_PP, affected by kineticLaw
	xdot(462) = (-1.0 * reaction_v749) + (-1.0 * reaction_v750) + (-1.0 * reaction_v776);
	
% Species:   id = c264, name = 2(EGF:ErbB1)_P:GAP:Grb2:(Gab1_P):PI3K:Ras:GDP, affected by kineticLaw
	xdot(463) = ( 1.0 * reaction_v751) + ( 1.0 * reaction_v758);
	
% Species:   id = c265, name = (ErbB1:ErbB2)_P:GAP:Grb2:Gab1_P:PI3K:Ras:GDP, affected by kineticLaw
	xdot(464) = ( 1.0 * reaction_v752) + ( 1.0 * reaction_v759);
	
% Species:   id = c266, name = (ErbB1:ErbB3)_P:GAP:Grb2:Gab1_P:PI3K:Ras:GDP, affected by kineticLaw
	xdot(465) = ( 1.0 * reaction_v753) + ( 1.0 * reaction_v760);
	
% Species:   id = c267, name = (ErbB1:ErbB4)_P:GAP:Grb2:Gab1_P:PI3K:Ras:GDP, affected by kineticLaw
	xdot(466) = ( 1.0 * reaction_v754) + ( 1.0 * reaction_v761);
	
% Species:   id = c268, name = 2(ErbB2)_P:GAP:Grb2:Gab1_P:PI3K:Ras:GDP, affected by kineticLaw
	xdot(467) = ( 1.0 * reaction_v755) + ( 1.0 * reaction_v762);
	
% Species:   id = c269, name = (ErbB3:ErbB2)_P:GAP:Grb2:Gab1_P:PI3K:Ras:GDP, affected by kineticLaw
	xdot(468) = ( 1.0 * reaction_v756) + ( 1.0 * reaction_v763);
	
% Species:   id = c325, name = (ErbB4:ErbB2)_P:GAP:Grb2:Gab1_P:PI3K:Ras:GDP, affected by kineticLaw
	xdot(469) = ( 1.0 * reaction_v757) + ( 1.0 * reaction_v764);
	
% Species:   id = c472, name = AKT:P:P:Raf:P:Ser, affected by kineticLaw
	xdot(470) = ( 1.0 * reaction_v765) + ( 1.0 * reaction_v767);
	
% Species:   id = c484, name = AKT:P:P:Raf:P:Ser_i, affected by kineticLaw
	xdot(471) = ( 1.0 * reaction_v766) + ( 1.0 * reaction_v768);
	
% Species:   id = c485, name = Raf:P:Ser, affected by kineticLaw
	xdot(472) = (-1.0 * reaction_v767) + (-1.0 * reaction_v768);
	
% Species:   id = c520, name = MKP_deg, affected by kineticLaw
	xdot(473) = ( 1.0 * reaction_v769);
	
% Species:   id = c521, name = Pase9t, affected by kineticLaw
	xdot(474) = (-1.0 * reaction_v770) + (-1.0 * reaction_v771) + (-1.0 * reaction_v772) + (-1.0 * reaction_v773) + (-1.0 * reaction_v774) + (-1.0 * reaction_v775) + (-1.0 * reaction_v776) + (-1.0 * reaction_v777) + (-1.0 * reaction_v778) + (-1.0 * reaction_v779) + (-1.0 * reaction_v780) + (-1.0 * reaction_v781) + (-1.0 * reaction_v782) + (-1.0 * reaction_v783);
	
% Species:   id = c522, name = 2(EGF:ErbB1):Gab1_P#:Pase9t, affected by kineticLaw
	xdot(475) = ( 1.0 * reaction_v770) + ( 1.0 * reaction_v777);
	
% Species:   id = c523, name = 2(ErbB2)2:Gab1_P#:Pase9t, affected by kineticLaw
	xdot(476) = ( 1.0 * reaction_v771) + ( 1.0 * reaction_v778);
	
% Species:   id = c411, name = (ErbB1:ErbB3)_P:GAP:Grb2:Gab1_P:Pase9t, affected by kineticLaw
	xdot(477) = ( 1.0 * reaction_v772) + ( 1.0 * reaction_v779);
	
% Species:   id = c412, name = (ErbB1:ErbB4)_P:GAP:Grb2:Gab1_P:Pase9t, affected by kineticLaw
	xdot(478) = ( 1.0 * reaction_v773) + ( 1.0 * reaction_v780);
	
% Species:   id = c456, name = ErbB3/4:ErbB2:Gab1_P#:Pase9t, affected by kineticLaw
	xdot(479) = ( 1.0 * reaction_v774) + ( 1.0 * reaction_v781);
	
% Species:   id = c424, name = ErbB1:ErbB:Gab1_P#:Pase9t, affected by kineticLaw
	xdot(480) = ( 1.0 * reaction_v775) + ( 1.0 * reaction_v782);
	
% Species:   id = c407, name = (ErbB4:ErbB2)_P:GAP:Grb2:Gab1:_PP:Pase9t, affected by kineticLaw
	xdot(481) = ( 1.0 * reaction_v776) + ( 1.0 * reaction_v783);
	
% Species:   id = c514, name = HRG
%WARNING speciesID: c514, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(482) = 0.0;
	
% Species:   id = c142, name = HRG:ErbB3, affected by kineticLaw
	xdot(483) = ( 1.0 * reaction_v784) + (-1.0 * reaction_v786) + (-1.0 * reaction_v789);
	
% Species:   id = c144, name = HRG:ErbB4, affected by kineticLaw
	xdot(484) = ( 1.0 * reaction_v785) + (-1.0 * reaction_v788) + (-1.0 * reaction_v790);
	
% Species:   id = c158, name = (HRG:ErbB4), affected by kineticLaw
	xdot(485) = (-1.0 * reaction_v791) + (-1.0 * reaction_v793);
	
% Species:   id = c532, name = ErbB1_h, affected by kineticLaw
	xdot(486) = (-1.0 * reaction_v794) + (-1.0 * reaction_v829);
	
% Species:   id = c525, name = ErbB1_h:Inh, affected by kineticLaw
	xdot(487) = ( 1.0 * reaction_v794) + (-1.0 * reaction_v795);
	
% Species:   id = c526, name = EGF:ErbB1_h:Inh, affected by kineticLaw
	xdot(488) = ( 1.0 * reaction_v795) + (-1.0 * reaction_v796) + (-1.0 * reaction_v797) + (-1.0 * reaction_v797) + (-1.0 * reaction_v853) + (-1.0 * reaction_v854);
	
% Species:   id = c527, name = (EGF:ErbB1:ATP::EGF:ErbB1_h:Inh), affected by kineticLaw
	xdot(489) = ( 1.0 * reaction_v796) + (-1.0 * reaction_v805);
	
% Species:   id = c528, name = 2(EGF:ErbB1_h:Inh), affected by kineticLaw
	xdot(490) = ( 1.0 * reaction_v797);
	
% Species:   id = c524, name = ErbB1_h:ATP, affected by kineticLaw
	xdot(491) = (-1.0 * reaction_v798) + (-1.0 * reaction_v799) + ( 1.0 * reaction_v829);
	
% Species:   id = c529, name = EGF:ErbB1_h:ATP, affected by kineticLaw
	xdot(492) = ( 1.0 * reaction_v798) + (-1.0 * reaction_v850) + (-1.0 * reaction_v851) + (-1.0 * reaction_v852) + (-1.0 * reaction_v852) + (-1.0 * reaction_v853);
	
% Species:   id = c530, name = ErbB1_h:ATP, affected by kineticLaw
	xdot(493) = ( 1.0 * reaction_v799) + (-1.0 * reaction_v801);
	
% Species:   id = c115, name = (EGF:ErbB1:ATP::EGF:ErbB1:Inh)-HalfActive, affected by kineticLaw
	xdot(494) = ( 1.0 * reaction_v802) + ( 1.0 * reaction_v803);
	
% Species:   id = c121, name = (EGF:ErbB1:ATP::EGF:ErbB1_h:Inh)-HalfActive, affected by kineticLaw
	xdot(495) = ( 1.0 * reaction_v805) + ( 1.0 * reaction_v806);
	
% Species:   id = c550, name = (EGF:ErbB1:ATP::EGF:ErbB1_h:ATP), affected by kineticLaw
	xdot(496) = ( 1.0 * reaction_v850) + (-1.0 * reaction_v855);
	
% Species:   id = c551, name = (EGF:ErbB1:Inh::EGF:ErbB1_h:ATP), affected by kineticLaw
	xdot(497) = ( 1.0 * reaction_v851) + (-1.0 * reaction_v856);
	
% Species:   id = c552, name = 2(EGF:ErbB1_h:ATP)-FullActive, affected by kineticLaw
	xdot(498) = ( 1.0 * reaction_v852) + (-1.0 * reaction_v857);
	
% Species:   id = c553, name = (EGF:ErbB1:ATP::EGF:ErbB1_h:Inh), affected by kineticLaw
	xdot(499) = ( 1.0 * reaction_v853) + (-1.0 * reaction_v858);
	
% Species:   id = c554, name = (EGF:ErbB1:Inh::EGF:ErbB1_h:Inh), affected by kineticLaw
	xdot(500) = ( 1.0 * reaction_v854);
	
% Species:   id = c555, name = (EGF:ErbB1:ATP::EGF:ErbB1_h:ATP)-FullActive, affected by kineticLaw
	xdot(501) = ( 1.0 * reaction_v855) + ( 1.0 * reaction_v859);
	
% Species:   id = c556, name = (EGF:ErbB1:Inh::EGF:ErbB1_h:ATP)-HalfActive, affected by kineticLaw
	xdot(502) = ( 1.0 * reaction_v856) + ( 1.0 * reaction_v860);
	
% Species:   id = c557, name = 2(EGF:ErbB1_h:ATP)-FullActive, affected by kineticLaw
	xdot(503) = ( 1.0 * reaction_v857) + ( 1.0 * reaction_v861);
	
% Species:   id = c558, name = (EGF:ErbB1:ATP::EGF:ErbB1_h:Inh)-HalfActive, affected by kineticLaw
	xdot(504) = ( 1.0 * reaction_v858) + ( 1.0 * reaction_v862);
end

function z=stepfunc2(t,t_start,v_start,t_end,v_end,piecewise(v_start,v_end), z=(t < t_start,t > t_end,(v_end-v_start)/(t_end-t_start)*(t-t_start)+v_start));end

function z=stepfunc(t,t_start,v_start,t_end,v_end,piecewise(v_start,piecewise(v_end), z=(t < t_start,t > t_end,(v_start+v_end)/2+(v_end-v_start)/2*sin(3.14/2*(2*t-t_end-t_start)/(t_end-t_start)))));end

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


