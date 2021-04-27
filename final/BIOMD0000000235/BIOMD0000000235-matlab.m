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
% Model name = Kuhn2009_EndoMesodermNetwork
%
% is http://identifiers.org/biomodels.db/MODEL2133240427
% is http://identifiers.org/biomodels.db/BIOMD0000000235
% isDescribedBy http://identifiers.org/pubmed/19698179
%


function main()
%Initial conditions vector
	x0=zeros(431,1);
	x0(1) = 0.0;
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
	x0(15) = 0.0;
	x0(16) = 0.0;
	x0(17) = 0.0;
	x0(18) = 0.0;
	x0(19) = 0.0;
	x0(20) = 0.0;
	x0(21) = 0.0;
	x0(22) = 0.0;
	x0(23) = 0.0;
	x0(24) = 20.0;
	x0(25) = 0.0;
	x0(26) = 0.0;
	x0(27) = 10.0;
	x0(28) = 0.0;
	x0(29) = 0.0;
	x0(30) = 30.0;
	x0(31) = 0.0;
	x0(32) = 0.0;
	x0(33) = 0.0;
	x0(34) = 0.0;
	x0(35) = 0.0;
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
	x0(47) = 10.0;
	x0(48) = 0.0;
	x0(49) = 0.0;
	x0(50) = 0.0;
	x0(51) = 0.0;
	x0(52) = 0.0;
	x0(53) = 0.0;
	x0(54) = 10.0;
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
	x0(74) = 10.0;
	x0(75) = 0.0;
	x0(76) = 0.0;
	x0(77) = 0.0;
	x0(78) = 0.0;
	x0(79) = 0.0;
	x0(80) = 0.0;
	x0(81) = 10.0;
	x0(82) = 20.0;
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
	x0(109) = 20.0;
	x0(110) = 0.0;
	x0(111) = 0.0;
	x0(112) = 10.0;
	x0(113) = 0.0;
	x0(114) = 0.0;
	x0(115) = 30.0;
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
	x0(128) = 10.0;
	x0(129) = 0.0;
	x0(130) = 0.0;
	x0(131) = 0.0;
	x0(132) = 10.0;
	x0(133) = 0.0;
	x0(134) = 0.0;
	x0(135) = 0.0;
	x0(136) = 0.0;
	x0(137) = 0.0;
	x0(138) = 0.0;
	x0(139) = 10.0;
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
	x0(159) = 10.0;
	x0(160) = 0.0;
	x0(161) = 0.0;
	x0(162) = 0.0;
	x0(163) = 0.0;
	x0(164) = 0.0;
	x0(165) = 10.0;
	x0(166) = 20.0;
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
	x0(183) = 10.0;
	x0(184) = 0.0;
	x0(185) = 0.0;
	x0(186) = 0.0;
	x0(187) = 0.0;
	x0(188) = 0.0;
	x0(189) = 0.0;
	x0(190) = 0.0;
	x0(191) = 0.0;
	x0(192) = 20.0;
	x0(193) = 0.0;
	x0(194) = 0.0;
	x0(195) = 10.0;
	x0(196) = 0.0;
	x0(197) = 0.0;
	x0(198) = 30.0;
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
	x0(215) = 10.0;
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
	x0(234) = 10.0;
	x0(235) = 0.0;
	x0(236) = 10.0;
	x0(237) = 10.0;
	x0(238) = 0.0;
	x0(239) = 10.0;
	x0(240) = 10.0;
	x0(241) = 0.0;
	x0(242) = 10.0;
	x0(243) = 10.0;
	x0(244) = 0.0;
	x0(245) = 0.0;
	x0(246) = 0.0;
	x0(247) = 10.0;
	x0(248) = 20.0;
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
	x0(278) = 0.0;
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
	x0(292) = 0.0;
	x0(293) = 0.0;
	x0(294) = 0.0;
	x0(295) = 0.0;
	x0(296) = 0.0;
	x0(297) = 0.0;
	x0(298) = 0.0;
	x0(299) = 0.0;
	x0(300) = 0.0;
	x0(301) = 0.0;
	x0(302) = 0.0;
	x0(303) = 0.0;
	x0(304) = 0.0;
	x0(305) = 0.0;
	x0(306) = 0.0;
	x0(307) = 0.0;
	x0(308) = 0.0;
	x0(309) = 0.0;
	x0(310) = 0.0;
	x0(311) = 0.0;
	x0(312) = 0.0;
	x0(313) = 0.0;
	x0(314) = 0.0;
	x0(315) = 0.0;
	x0(316) = 0.0;
	x0(317) = 0.0;
	x0(318) = 0.0;
	x0(319) = 0.0;
	x0(320) = 0.0;
	x0(321) = 0.0;
	x0(322) = 0.0;
	x0(323) = 0.0;
	x0(324) = 0.0;
	x0(325) = 0.0;
	x0(326) = 0.0;
	x0(327) = 0.0;
	x0(328) = 0.0;
	x0(329) = 0.0;
	x0(330) = 0.0;
	x0(331) = 0.0;
	x0(332) = 0.0;
	x0(333) = 0.0;
	x0(334) = 0.0;
	x0(335) = 0.0;
	x0(336) = 0.0;
	x0(337) = 0.0;
	x0(338) = 0.0;
	x0(339) = 0.0;
	x0(340) = 0.0;
	x0(341) = 0.0;
	x0(342) = 0.0;
	x0(343) = 0.0;
	x0(344) = 0.0;
	x0(345) = 0.0;
	x0(346) = 0.0;
	x0(347) = 0.0;
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
	x0(370) = 0.0;
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
	x0(397) = 0.0;
	x0(398) = 0.0;
	x0(399) = 0.0;
	x0(400) = 0.0;
	x0(401) = 0.0;
	x0(402) = 0.0;
	x0(403) = 0.0;
	x0(404) = 0.0;
	x0(405) = 0.0;
	x0(406) = 0.0;
	x0(407) = 0.0;
	x0(408) = 0.0;
	x0(409) = 0.0;
	x0(410) = 0.0;
	x0(411) = 0.0;
	x0(412) = 0.0;
	x0(413) = 0.0;
	x0(414) = 0.0;
	x0(415) = 0.0;
	x0(416) = 0.0;
	x0(417) = 0.0;
	x0(418) = 0.0;
	x0(419) = 0.0;
	x0(420) = 0.0;
	x0(421) = 0.0;
	x0(422) = 0.0;
	x0(423) = 0.0;
	x0(424) = 0.0;
	x0(425) = 0.0;
	x0(426) = 0.0;
	x0(427) = 0.0;
	x0(428) = 0.0;
	x0(429) = 0.0;
	x0(430) = 0.0;
	x0(431) = 0.0;


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

% Compartment: id = default, name = default, constant
	compartment_default=1.0;
% Compartment: id = Compartment__outside, name = Compartment.outside, constant
	compartment_Compartment__outside=1.0;
% Compartment: id = Compartment__cell, name = cell, constant
	compartment_Compartment__cell=1.0;
% Parameter:   id =  E_Notch_S2, name = E_Notch_S2
	global_par_E_Notch_S2=1.0;
% Parameter:   id =  E_Notch_S1, name = E_Notch_S1
	global_par_E_Notch_S1=0.0;
% Parameter:   id =  E_Otx_S1, name = E_Otx_S1
	global_par_E_Otx_S1=1.0;
% Parameter:   id =  E_Otx_S2, name = E_Otx_S2
	global_par_E_Otx_S2=0.0;
% Parameter:   id =  E_SoxB1_S1, name = E_SoxB1_S1
	global_par_E_SoxB1_S1=1.0;
% Parameter:   id =  E_SoxB1_S2, name = E_SoxB1_S2
	global_par_E_SoxB1_S2=0.0;
% Parameter:   id =  E_SuH_S2, name = E_SuH_S2
	global_par_E_SuH_S2=1.0;
% Parameter:   id =  E_SuH_S1, name = E_SuH_S1
	global_par_E_SuH_S1=0.0;
% Parameter:   id =  E_UMR_S2, name = E_UMR_S2
	global_par_E_UMR_S2=1.0;
% Parameter:   id =  E_UMR_S1, name = E_UMR_S1
	global_par_E_UMR_S1=0.0;
% Parameter:   id =  E_UVAOtx_S2, name = E_UVAOtx_S2
	global_par_E_UVAOtx_S2=1.0;
% Parameter:   id =  E_UVAOtx_S1, name = E_UVAOtx_S1
	global_par_E_UVAOtx_S1=0.0;
% Parameter:   id =  E_UbiqSoxB1_S1, name = E_UbiqSoxB1_S1
% Warning parameter E_UbiqSoxB1_S1 is not constant, it should be controlled by a Rule and/or events
	global_par_E_UbiqSoxB1_S1=1.0;
% Parameter:   id =  E_UbiqSoxB1_S2, name = E_UbiqSoxB1_S2
% Warning parameter E_UbiqSoxB1_S2 is not constant, it should be controlled by a Rule and/or events
	global_par_E_UbiqSoxB1_S2=0.0;
% Parameter:   id =  E_VEGF_S2, name = E_VEGF_S2
	global_par_E_VEGF_S2=1.0;
% Parameter:   id =  E_VEGF_S1, name = E_VEGF_S1
	global_par_E_VEGF_S1=0.0;
% Parameter:   id =  E_cB_S1, name = E_cB_S1
	global_par_E_cB_S1=1.0;
% Parameter:   id =  E_cB_S2, name = E_cB_S2
	global_par_E_cB_S2=0.0;
% Parameter:   id =  E_Gcad_S1, name = E_Gcad_S1
	global_par_E_Gcad_S1=1.0;
% Parameter:   id =  E_Gcad_S2, name = E_Gcad_S2
	global_par_E_Gcad_S2=0.0;
% Parameter:   id =  M_UMANrl_S2, name = M_UMANrl_S2
	global_par_M_UMANrl_S2=1.0;
% Parameter:   id =  M_UMANrl_S1, name = M_UMANrl_S1
	global_par_M_UMANrl_S1=0.0;
% Parameter:   id =  P_L1_S2, name = P_L1_S2
	global_par_P_L1_S2=1.0;
% Parameter:   id =  P_L1_S1, name = P_L1_S1
	global_par_P_L1_S1=0.0;
% Parameter:   id =  M_UMADelta_S2, name = M_UMADelta_S2
	global_par_M_UMADelta_S2=1.0;
% Parameter:   id =  M_UMADelta_S1, name = M_UMADelta_S1
	global_par_M_UMADelta_S1=0.0;
% Parameter:   id =  M_UMR_S2, name = M_UMR_S2
	global_par_M_UMR_S2=1.0;
% Parameter:   id =  M_UMR_S1, name = M_UMR_S1
	global_par_M_UMR_S1=0.0;
% Parameter:   id =  M_SuH_S2, name = M_SuH_S2
	global_par_M_SuH_S2=1.0;
% Parameter:   id =  M_SuH_S1, name = M_SuH_S1
	global_par_M_SuH_S1=0.0;
% Parameter:   id =  M_Notch_S1, name = M_Notch_S1
	global_par_M_Notch_S1=1.0;
% Parameter:   id =  M_Notch_S2, name = M_Notch_S2
	global_par_M_Notch_S2=0.0;
% Parameter:   id =  P_UbiqAlx1_S1, name = P_UbiqAlx1_S1
	global_par_P_UbiqAlx1_S1=1.0;
% Parameter:   id =  P_UbiqAlx1_S2, name = P_UbiqAlx1_S2
	global_par_P_UbiqAlx1_S2=0.0;
% Parameter:   id =  P_UbiqEts1_S1, name = P_UbiqEts1_S1
	global_par_P_UbiqEts1_S1=1.0;
% Parameter:   id =  P_UbiqEts1_S2, name = P_UbiqEts1_S2
	global_par_P_UbiqEts1_S2=0.0;
% Parameter:   id =  P_UbiqHnf6_S1, name = P_UbiqHnf6_S1
	global_par_P_UbiqHnf6_S1=1.0;
% Parameter:   id =  P_UbiqHnf6_S2, name = P_UbiqHnf6_S2
	global_par_P_UbiqHnf6_S2=0.0;
% Parameter:   id =  P_UbiqTel_S1, name = P_UbiqTel_S1
	global_par_P_UbiqTel_S1=1.0;
% Parameter:   id =  P_UbiqTel_S2, name = P_UbiqTel_S2
	global_par_P_UbiqTel_S2=0.0;
% Parameter:   id =  M_Gcad_S1, name = M_Gcad_S1
	global_par_M_Gcad_S1=1.0;
% Parameter:   id =  M_Gcad_S2, name = M_Gcad_S2
	global_par_M_Gcad_S2=0.0;
% Parameter:   id =  P_Gcad_S1, name = P_Gcad_S1
	global_par_P_Gcad_S1=1.0;
% Parameter:   id =  P_Gcad_S2, name = P_Gcad_S2
	global_par_P_Gcad_S2=0.0;
% Parameter:   id =  P_UbiqES_S1, name = P_UbiqES_S1
	global_par_P_UbiqES_S1=1.0;
% Parameter:   id =  P_UbiqES_S2, name = P_UbiqES_S2
	global_par_P_UbiqES_S2=0.0;
% Parameter:   id =  P_UbiqSoxC_S1, name = P_UbiqSoxC_S1
	global_par_P_UbiqSoxC_S1=1.0;
% Parameter:   id =  P_UbiqSoxC_S2, name = P_UbiqSoxC_S2
	global_par_P_UbiqSoxC_S2=0.0;
% Parameter:   id =  E_UbiqSoxC_S1, name = P_UbiqSoxC_S1
	global_par_E_UbiqSoxC_S1=1.0;
% Parameter:   id =  E_UbiqSoxC_S2, name = P_UbiqSoxC_S2
	global_par_E_UbiqSoxC_S2=0.0;
% Parameter:   id =  P_Otx_S1, name = P_Otx_S1
	global_par_P_Otx_S1=1.0;
% Parameter:   id =  P_Otx_S2, name = P_Otx_S2
	global_par_P_Otx_S2=0.0;
% Parameter:   id =  M_SoxB1_S1, name = M_SoxB1_S1
	global_par_M_SoxB1_S1=1.0;
% Parameter:   id =  M_SoxB1_S2, name = M_SoxB1_S2
	global_par_M_SoxB1_S2=0.0;
% Parameter:   id =  P_cB_S1, name = P_cB_S1
	global_par_P_cB_S1=1.0;
% Parameter:   id =  P_cB_S2, name = P_cB_S2
	global_par_P_cB_S2=0.0;
% Parameter:   id =  M_UbiqSoxB1_S1, name = M_UbiqSoxB1_S1
	global_par_M_UbiqSoxB1_S1=1.0;
% Parameter:   id =  M_UbiqSoxB1_S2, name = M_UbiqSoxB1_S2
	global_par_M_UbiqSoxB1_S2=0.0;
% Parameter:   id =  P_UbiqHesC_S1, name = P_UbiqHesC_S1
	global_par_P_UbiqHesC_S1=1.0;
% Parameter:   id =  P_UbiqHesC_S2, name = P_UbiqHesC_S2
	global_par_P_UbiqHesC_S2=0.0;
% Parameter:   id =  P_Ets1_S1, name = P_Ets1_S1
	global_par_P_Ets1_S1=1.0;
% Parameter:   id =  P_Ets1_S2, name = P_Ets1_S2
	global_par_P_Ets1_S2=0.0;
% Parameter:   id =  M_cB_S1, name = M_cB_S1
	global_par_M_cB_S1=1.0;
% Parameter:   id =  M_cB_S2, name = M_cB_S2
	global_par_M_cB_S2=0.0;
% Parameter:   id =  M_Otx_S1, name = M_Otx_S1
	global_par_M_Otx_S1=1.0;
% Parameter:   id =  M_Otx_S2, name = M_Otx_S2
	global_par_M_Otx_S2=0.0;

% Reaction: id = E_Gcad_Hill_Kinetic_0, name = E_Gcad_Hill_Kinetic	% Local Parameter:   id =  P_Gcad_HillH, name = P_Gcad_HillH
	reaction_E_Gcad_Hill_Kinetic_0_P_Gcad_HillH=8.0;
	% Local Parameter:   id =  P_Gcad_HillK, name = P_Gcad_HillK
	reaction_E_Gcad_Hill_Kinetic_0_P_Gcad_HillK=10.0;
	% Local Parameter:   id =  P_Gcad_theta1, name = P_Gcad_theta1
	reaction_E_Gcad_Hill_Kinetic_0_P_Gcad_theta1=1.0;
	% Local Parameter:   id =  P_Gcad_theta2, name = P_Gcad_theta2
	reaction_E_Gcad_Hill_Kinetic_0_P_Gcad_theta2=11.0;

	reaction_E_Gcad_Hill_Kinetic_0=global_par_E_Gcad_S1*reaction_E_Gcad_Hill_Kinetic_0_P_Gcad_HillK*time^reaction_E_Gcad_Hill_Kinetic_0_P_Gcad_HillH/(reaction_E_Gcad_Hill_Kinetic_0_P_Gcad_theta1^reaction_E_Gcad_Hill_Kinetic_0_P_Gcad_HillH+time^reaction_E_Gcad_Hill_Kinetic_0_P_Gcad_HillH)+global_par_E_Gcad_S2*reaction_E_Gcad_Hill_Kinetic_0_P_Gcad_HillK*(1-time^reaction_E_Gcad_Hill_Kinetic_0_P_Gcad_HillH/(reaction_E_Gcad_Hill_Kinetic_0_P_Gcad_theta2^reaction_E_Gcad_Hill_Kinetic_0_P_Gcad_HillH+time^reaction_E_Gcad_Hill_Kinetic_0_P_Gcad_HillH));

% Reaction: id = E_Notch_Hill_Kinetic_0, name = E_Notch_Hill_Kinetic	% Local Parameter:   id =  P_Notch_HillH, name = P_Notch_HillH
	reaction_E_Notch_Hill_Kinetic_0_P_Notch_HillH=8.0;
	% Local Parameter:   id =  P_Notch_HillK, name = P_Notch_HillK
	reaction_E_Notch_Hill_Kinetic_0_P_Notch_HillK=10.0;
	% Local Parameter:   id =  P_Notch_theta1, name = P_Notch_theta1
	reaction_E_Notch_Hill_Kinetic_0_P_Notch_theta1=21.0;
	% Local Parameter:   id =  P_Notch_theta2, name = P_Notch_theta2
	reaction_E_Notch_Hill_Kinetic_0_P_Notch_theta2=30.0;

	reaction_E_Notch_Hill_Kinetic_0=global_par_E_Notch_S1*reaction_E_Notch_Hill_Kinetic_0_P_Notch_HillK*time^reaction_E_Notch_Hill_Kinetic_0_P_Notch_HillH/(reaction_E_Notch_Hill_Kinetic_0_P_Notch_theta1^reaction_E_Notch_Hill_Kinetic_0_P_Notch_HillH+time^reaction_E_Notch_Hill_Kinetic_0_P_Notch_HillH)+global_par_E_Notch_S2*reaction_E_Notch_Hill_Kinetic_0_P_Notch_HillK*(1-time^reaction_E_Notch_Hill_Kinetic_0_P_Notch_HillH/(reaction_E_Notch_Hill_Kinetic_0_P_Notch_theta2^reaction_E_Notch_Hill_Kinetic_0_P_Notch_HillH+time^reaction_E_Notch_Hill_Kinetic_0_P_Notch_HillH));

% Reaction: id = E_Otx_Hill_Kinetic_0, name = E_Otx_Hill_Kinetic	% Local Parameter:   id =  P_Otx_HillK, name = P_Otx_HillK
	reaction_E_Otx_Hill_Kinetic_0_P_Otx_HillK=10.0;
	% Local Parameter:   id =  P_Otx_HillH, name = P_Otx_HillH
	reaction_E_Otx_Hill_Kinetic_0_P_Otx_HillH=8.0;
	% Local Parameter:   id =  P_Otx_theta1, name = P_Otx_theta1
	reaction_E_Otx_Hill_Kinetic_0_P_Otx_theta1=1.0;
	% Local Parameter:   id =  P_Otx_theta2, name = P_Otx_theta2
	reaction_E_Otx_Hill_Kinetic_0_P_Otx_theta2=11.0;

	reaction_E_Otx_Hill_Kinetic_0=global_par_E_Otx_S1*reaction_E_Otx_Hill_Kinetic_0_P_Otx_HillK*time^reaction_E_Otx_Hill_Kinetic_0_P_Otx_HillH/(reaction_E_Otx_Hill_Kinetic_0_P_Otx_theta1^reaction_E_Otx_Hill_Kinetic_0_P_Otx_HillH+time^reaction_E_Otx_Hill_Kinetic_0_P_Otx_HillH)+global_par_E_Otx_S2*reaction_E_Otx_Hill_Kinetic_0_P_Otx_HillK*(1-time^reaction_E_Otx_Hill_Kinetic_0_P_Otx_HillH/(reaction_E_Otx_Hill_Kinetic_0_P_Otx_theta2^reaction_E_Otx_Hill_Kinetic_0_P_Otx_HillH+time^reaction_E_Otx_Hill_Kinetic_0_P_Otx_HillH));

% Reaction: id = E_SoxB1_Hill_Kinetic_0, name = E_SoxB1_Hill_Kinetic	% Local Parameter:   id =  P_SoxB1_theta1, name = P_SoxB1_theta1
	reaction_E_SoxB1_Hill_Kinetic_0_P_SoxB1_theta1=1.0;
	% Local Parameter:   id =  P_SoxB1_theta2, name = P_SoxB1_theta2
	reaction_E_SoxB1_Hill_Kinetic_0_P_SoxB1_theta2=14.0;
	% Local Parameter:   id =  P_SoxB1_HillK, name = P_SoxB1_HillK
	reaction_E_SoxB1_Hill_Kinetic_0_P_SoxB1_HillK=10.0;
	% Local Parameter:   id =  P_SoxB1_HillH, name = P_SoxB1_HillH
	reaction_E_SoxB1_Hill_Kinetic_0_P_SoxB1_HillH=8.0;

	reaction_E_SoxB1_Hill_Kinetic_0=global_par_E_SoxB1_S1*reaction_E_SoxB1_Hill_Kinetic_0_P_SoxB1_HillK*time^reaction_E_SoxB1_Hill_Kinetic_0_P_SoxB1_HillH/(reaction_E_SoxB1_Hill_Kinetic_0_P_SoxB1_theta1^reaction_E_SoxB1_Hill_Kinetic_0_P_SoxB1_HillH+time^reaction_E_SoxB1_Hill_Kinetic_0_P_SoxB1_HillH)+global_par_E_SoxB1_S2*reaction_E_SoxB1_Hill_Kinetic_0_P_SoxB1_HillK*(1-time^reaction_E_SoxB1_Hill_Kinetic_0_P_SoxB1_HillH/(reaction_E_SoxB1_Hill_Kinetic_0_P_SoxB1_theta2^reaction_E_SoxB1_Hill_Kinetic_0_P_SoxB1_HillH+time^reaction_E_SoxB1_Hill_Kinetic_0_P_SoxB1_HillH));

% Reaction: id = E_SuH_Hill_Kinetic_0, name = E_SuH_Hill_Kinetic	% Local Parameter:   id =  P_SuH_HillH, name = P_SuH_HillH
	reaction_E_SuH_Hill_Kinetic_0_P_SuH_HillH=8.0;
	% Local Parameter:   id =  P_SuH_HillK, name = P_SuH_HillK
	reaction_E_SuH_Hill_Kinetic_0_P_SuH_HillK=10.0;
	% Local Parameter:   id =  P_SuH_theta1, name = P_SuH_theta1
	reaction_E_SuH_Hill_Kinetic_0_P_SuH_theta1=24.0;
	% Local Parameter:   id =  P_SuH_theta2, name = P_SuH_theta2
	reaction_E_SuH_Hill_Kinetic_0_P_SuH_theta2=30.0;

	reaction_E_SuH_Hill_Kinetic_0=global_par_E_SuH_S1*reaction_E_SuH_Hill_Kinetic_0_P_SuH_HillK*time^reaction_E_SuH_Hill_Kinetic_0_P_SuH_HillH/(reaction_E_SuH_Hill_Kinetic_0_P_SuH_theta1^reaction_E_SuH_Hill_Kinetic_0_P_SuH_HillH+time^reaction_E_SuH_Hill_Kinetic_0_P_SuH_HillH)+global_par_E_SuH_S2*reaction_E_SuH_Hill_Kinetic_0_P_SuH_HillK*(1-time^reaction_E_SuH_Hill_Kinetic_0_P_SuH_HillH/(reaction_E_SuH_Hill_Kinetic_0_P_SuH_theta2^reaction_E_SuH_Hill_Kinetic_0_P_SuH_HillH+time^reaction_E_SuH_Hill_Kinetic_0_P_SuH_HillH));

% Reaction: id = E_UMR_Hill_Kinetic_0, name = E_UMR_Hill_Kinetic	% Local Parameter:   id =  P_UMR_HillH, name = P_UMR_HillH
	reaction_E_UMR_Hill_Kinetic_0_P_UMR_HillH=8.0;
	% Local Parameter:   id =  P_UMR_HillK, name = P_UMR_HillK
	reaction_E_UMR_Hill_Kinetic_0_P_UMR_HillK=10.0;
	% Local Parameter:   id =  P_UMR_theta1, name = P_UMR_theta1
	reaction_E_UMR_Hill_Kinetic_0_P_UMR_theta1=15.0;
	% Local Parameter:   id =  P_UMR_theta2, name = P_UMR_theta2
	reaction_E_UMR_Hill_Kinetic_0_P_UMR_theta2=30.0;

	reaction_E_UMR_Hill_Kinetic_0=global_par_E_UMR_S1*reaction_E_UMR_Hill_Kinetic_0_P_UMR_HillK*time^reaction_E_UMR_Hill_Kinetic_0_P_UMR_HillH/(reaction_E_UMR_Hill_Kinetic_0_P_UMR_theta1^reaction_E_UMR_Hill_Kinetic_0_P_UMR_HillH+time^reaction_E_UMR_Hill_Kinetic_0_P_UMR_HillH)+global_par_E_UMR_S2*reaction_E_UMR_Hill_Kinetic_0_P_UMR_HillK*(1-time^reaction_E_UMR_Hill_Kinetic_0_P_UMR_HillH/(reaction_E_UMR_Hill_Kinetic_0_P_UMR_theta2^reaction_E_UMR_Hill_Kinetic_0_P_UMR_HillH+time^reaction_E_UMR_Hill_Kinetic_0_P_UMR_HillH));

% Reaction: id = E_UVAOtx_Hill_Kinetic_0, name = E_UVAOtx_Hill_Kinetic	% Local Parameter:   id =  P_UVAOtx_theta2, name = P_UVAOtx_theta2
	reaction_E_UVAOtx_Hill_Kinetic_0_P_UVAOtx_theta2=30.0;
	% Local Parameter:   id =  P_UVAOtx_theta1, name = P_UVAOtx_theta1
	reaction_E_UVAOtx_Hill_Kinetic_0_P_UVAOtx_theta1=18.0;
	% Local Parameter:   id =  P_UVAOtx_HillK, name = P_UVAOtx_HillK
	reaction_E_UVAOtx_Hill_Kinetic_0_P_UVAOtx_HillK=10.0;
	% Local Parameter:   id =  P_UVAOtx_HillH, name = P_UVAOtx_HillH
	reaction_E_UVAOtx_Hill_Kinetic_0_P_UVAOtx_HillH=8.0;

	reaction_E_UVAOtx_Hill_Kinetic_0=global_par_E_UVAOtx_S1*reaction_E_UVAOtx_Hill_Kinetic_0_P_UVAOtx_HillK*time^reaction_E_UVAOtx_Hill_Kinetic_0_P_UVAOtx_HillH/(reaction_E_UVAOtx_Hill_Kinetic_0_P_UVAOtx_theta1^reaction_E_UVAOtx_Hill_Kinetic_0_P_UVAOtx_HillH+time^reaction_E_UVAOtx_Hill_Kinetic_0_P_UVAOtx_HillH)+global_par_E_UVAOtx_S2*reaction_E_UVAOtx_Hill_Kinetic_0_P_UVAOtx_HillK*(1-time^reaction_E_UVAOtx_Hill_Kinetic_0_P_UVAOtx_HillH/(reaction_E_UVAOtx_Hill_Kinetic_0_P_UVAOtx_theta2^reaction_E_UVAOtx_Hill_Kinetic_0_P_UVAOtx_HillH+time^reaction_E_UVAOtx_Hill_Kinetic_0_P_UVAOtx_HillH));

% Reaction: id = E_UbiqSoxB1_Hill_Kinetic_0, name = E_UbiqSoxB1_Hill_Kinetic	% Local Parameter:   id =  P_UbiqSoxB1_theta2, name = P_UbiqSoxB1_theta2
	reaction_E_UbiqSoxB1_Hill_Kinetic_0_P_UbiqSoxB1_theta2=17.0;
	% Local Parameter:   id =  P_UbiqSoxB1_theta1, name = P_UbiqSoxB1_theta1
	reaction_E_UbiqSoxB1_Hill_Kinetic_0_P_UbiqSoxB1_theta1=1.0;
	% Local Parameter:   id =  P_UbiqSoxB1_HillK, name = P_UbiqSoxB1_HillK
	reaction_E_UbiqSoxB1_Hill_Kinetic_0_P_UbiqSoxB1_HillK=10.0;
	% Local Parameter:   id =  P_UbiqSoxB1_HillH, name = P_UbiqSoxB1_HillH
	reaction_E_UbiqSoxB1_Hill_Kinetic_0_P_UbiqSoxB1_HillH=8.0;

	reaction_E_UbiqSoxB1_Hill_Kinetic_0=global_par_E_UbiqSoxB1_S1*reaction_E_UbiqSoxB1_Hill_Kinetic_0_P_UbiqSoxB1_HillK*time^reaction_E_UbiqSoxB1_Hill_Kinetic_0_P_UbiqSoxB1_HillH/(reaction_E_UbiqSoxB1_Hill_Kinetic_0_P_UbiqSoxB1_theta1^reaction_E_UbiqSoxB1_Hill_Kinetic_0_P_UbiqSoxB1_HillH+time^reaction_E_UbiqSoxB1_Hill_Kinetic_0_P_UbiqSoxB1_HillH)+global_par_E_UbiqSoxB1_S2*reaction_E_UbiqSoxB1_Hill_Kinetic_0_P_UbiqSoxB1_HillK*(1-time^reaction_E_UbiqSoxB1_Hill_Kinetic_0_P_UbiqSoxB1_HillH/(reaction_E_UbiqSoxB1_Hill_Kinetic_0_P_UbiqSoxB1_theta2^reaction_E_UbiqSoxB1_Hill_Kinetic_0_P_UbiqSoxB1_HillH+time^reaction_E_UbiqSoxB1_Hill_Kinetic_0_P_UbiqSoxB1_HillH));

% Reaction: id = E_VEGF_Hill_Kinetic_0, name = E_VEGF_Hill_Kinetic	% Local Parameter:   id =  P_VEGF_theta2, name = P_VEGF_theta2
	reaction_E_VEGF_Hill_Kinetic_0_P_VEGF_theta2=30.0;
	% Local Parameter:   id =  P_VEGF_theta1, name = P_VEGF_theta1
	reaction_E_VEGF_Hill_Kinetic_0_P_VEGF_theta1=24.0;
	% Local Parameter:   id =  P_VEGF_HillH, name = P_VEGF_HillH
	reaction_E_VEGF_Hill_Kinetic_0_P_VEGF_HillH=8.0;
	% Local Parameter:   id =  P_VEGF_HillK, name = P_VEGF_HillK
	reaction_E_VEGF_Hill_Kinetic_0_P_VEGF_HillK=10.0;

	reaction_E_VEGF_Hill_Kinetic_0=global_par_E_VEGF_S1*reaction_E_VEGF_Hill_Kinetic_0_P_VEGF_HillK*time^reaction_E_VEGF_Hill_Kinetic_0_P_VEGF_HillH/(reaction_E_VEGF_Hill_Kinetic_0_P_VEGF_theta1^reaction_E_VEGF_Hill_Kinetic_0_P_VEGF_HillH+time^reaction_E_VEGF_Hill_Kinetic_0_P_VEGF_HillH)+global_par_E_VEGF_S2*reaction_E_VEGF_Hill_Kinetic_0_P_VEGF_HillK*(1-time^reaction_E_VEGF_Hill_Kinetic_0_P_VEGF_HillH/(reaction_E_VEGF_Hill_Kinetic_0_P_VEGF_theta2^reaction_E_VEGF_Hill_Kinetic_0_P_VEGF_HillH+time^reaction_E_VEGF_Hill_Kinetic_0_P_VEGF_HillH));

% Reaction: id = E_cB_Hill_Kinetic_0, name = E_cB_Hill_Kinetic	% Local Parameter:   id =  P_cB_theta1, name = P_cB_theta1
	reaction_E_cB_Hill_Kinetic_0_P_cB_theta1=1.0;
	% Local Parameter:   id =  P_cB_theta2, name = P_cB_theta2
	reaction_E_cB_Hill_Kinetic_0_P_cB_theta2=11.0;
	% Local Parameter:   id =  P_cB_HillH, name = P_cB_HillH
	reaction_E_cB_Hill_Kinetic_0_P_cB_HillH=8.0;
	% Local Parameter:   id =  P_cB_HillK, name = P_cB_HillK
	reaction_E_cB_Hill_Kinetic_0_P_cB_HillK=10.0;

	reaction_E_cB_Hill_Kinetic_0=global_par_E_cB_S1*reaction_E_cB_Hill_Kinetic_0_P_cB_HillK*time^reaction_E_cB_Hill_Kinetic_0_P_cB_HillH/(reaction_E_cB_Hill_Kinetic_0_P_cB_theta1^reaction_E_cB_Hill_Kinetic_0_P_cB_HillH+time^reaction_E_cB_Hill_Kinetic_0_P_cB_HillH)+global_par_E_cB_S2*reaction_E_cB_Hill_Kinetic_0_P_cB_HillK*(1-time^reaction_E_cB_Hill_Kinetic_0_P_cB_HillH/(reaction_E_cB_Hill_Kinetic_0_P_cB_theta2^reaction_E_cB_Hill_Kinetic_0_P_cB_HillH+time^reaction_E_cB_Hill_Kinetic_0_P_cB_HillH));

% Reaction: id = GENE_E_Alx1_transcription_0, name = GENE_E_Alx1_transcription	% Local Parameter:   id =  k_PROTEIN_UbiqAlx1, name = k_PROTEIN_UbiqAlx1
	reaction_GENE_E_Alx1_transcription_0_k_PROTEIN_UbiqAlx1=1.0;
	% Local Parameter:   id =  c_PROTEIN_UbiqAlx1, name = c_PROTEIN_UbiqAlx1
	reaction_GENE_E_Alx1_transcription_0_c_PROTEIN_UbiqAlx1=1.0;
	% Local Parameter:   id =  k_PROTEIN_Ets1, name = k_PROTEIN_Ets1
	reaction_GENE_E_Alx1_transcription_0_k_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Ets1, name = c_PROTEIN_Ets1
	reaction_GENE_E_Alx1_transcription_0_c_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  k_PROTEIN_Gcm, name = k_PROTEIN_Gcm
	reaction_GENE_E_Alx1_transcription_0_k_PROTEIN_Gcm=1.0;
	% Local Parameter:   id =  c_PROTEIN_Gcm, name = c_PROTEIN_Gcm
	reaction_GENE_E_Alx1_transcription_0_c_PROTEIN_Gcm=1.0;
	% Local Parameter:   id =  k_PROTEIN_HesC, name = k_PROTEIN_HesC
	reaction_GENE_E_Alx1_transcription_0_k_PROTEIN_HesC=1.0;
	% Local Parameter:   id =  c_PROTEIN_HesC, name = c_PROTEIN_HesC
	reaction_GENE_E_Alx1_transcription_0_c_PROTEIN_HesC=1.0;
	% Local Parameter:   id =  k_PROTEIN_Tgif, name = k_PROTEIN_Tgif
	reaction_GENE_E_Alx1_transcription_0_k_PROTEIN_Tgif=1.0;
	% Local Parameter:   id =  c_PROTEIN_Tgif, name = c_PROTEIN_Tgif
	reaction_GENE_E_Alx1_transcription_0_c_PROTEIN_Tgif=1.0;

	reaction_GENE_E_Alx1_transcription_0=(reaction_GENE_E_Alx1_transcription_0_k_PROTEIN_Ets1*x(15)/(reaction_GENE_E_Alx1_transcription_0_c_PROTEIN_Ets1+x(15))+reaction_GENE_E_Alx1_transcription_0_k_PROTEIN_UbiqAlx1*x(67)/(reaction_GENE_E_Alx1_transcription_0_c_PROTEIN_UbiqAlx1+x(67))+reaction_GENE_E_Alx1_transcription_0_k_PROTEIN_Tgif*x(62)/(reaction_GENE_E_Alx1_transcription_0_c_PROTEIN_Tgif+x(62)))*reaction_GENE_E_Alx1_transcription_0_k_PROTEIN_Gcm*reaction_GENE_E_Alx1_transcription_0_c_PROTEIN_Gcm/(reaction_GENE_E_Alx1_transcription_0_c_PROTEIN_Gcm+x(28))*reaction_GENE_E_Alx1_transcription_0_k_PROTEIN_HesC*reaction_GENE_E_Alx1_transcription_0_c_PROTEIN_HesC/(reaction_GENE_E_Alx1_transcription_0_c_PROTEIN_HesC+x(33));

% Reaction: id = GENE_E_Apobec_transcription_0, name = GENE_E_Apobec_transcription	% Local Parameter:   id =  k_PROTEIN_Bra, name = k_PROTEIN_Bra
	reaction_GENE_E_Apobec_transcription_0_k_PROTEIN_Bra=1.0;
	% Local Parameter:   id =  c_PROTEIN_Bra, name = c_PROTEIN_Bra
	reaction_GENE_E_Apobec_transcription_0_c_PROTEIN_Bra=1.0;
	% Local Parameter:   id =  k_PROTEIN_Hox, name = k_PROTEIN_Hox
	reaction_GENE_E_Apobec_transcription_0_k_PROTEIN_Hox=1.0;
	% Local Parameter:   id =  c_PROTEIN_Hox, name = c_PROTEIN_Hox
	reaction_GENE_E_Apobec_transcription_0_c_PROTEIN_Hox=1.0;

	reaction_GENE_E_Apobec_transcription_0=reaction_GENE_E_Apobec_transcription_0_k_PROTEIN_Bra*x(4)/(reaction_GENE_E_Apobec_transcription_0_c_PROTEIN_Bra+x(4))*reaction_GENE_E_Apobec_transcription_0_k_PROTEIN_Hox*reaction_GENE_E_Apobec_transcription_0_c_PROTEIN_Hox/(reaction_GENE_E_Apobec_transcription_0_c_PROTEIN_Hox+x(36));

% Reaction: id = GENE_E_Blimp1_transcription_0, name = GENE_E_Blimp1_transcription	% Local Parameter:   id =  k_PROTEIN_Blimp1, name = k_PROTEIN_Blimp1
	reaction_GENE_E_Blimp1_transcription_0_k_PROTEIN_Blimp1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Blimp1, name = c_PROTEIN_Blimp1
	reaction_GENE_E_Blimp1_transcription_0_c_PROTEIN_Blimp1=1.0;
	% Local Parameter:   id =  k_PROTEIN_nBTCF, name = k_PROTEIN_nBTCF
	reaction_GENE_E_Blimp1_transcription_0_k_PROTEIN_nBTCF=1.0;
	% Local Parameter:   id =  c_PROTEIN_nBTCF, name = c_PROTEIN_nBTCF
	reaction_GENE_E_Blimp1_transcription_0_c_PROTEIN_nBTCF=1.0;
	% Local Parameter:   id =  k_PROTEIN_Brn, name = k_PROTEIN_Brn
	reaction_GENE_E_Blimp1_transcription_0_k_PROTEIN_Brn=1.0;
	% Local Parameter:   id =  c_PROTEIN_Brn, name = c_PROTEIN_Brn
	reaction_GENE_E_Blimp1_transcription_0_c_PROTEIN_Brn=1.0;
	% Local Parameter:   id =  k_PROTEIN_GroTCF, name = k_PROTEIN_GroTCF
	reaction_GENE_E_Blimp1_transcription_0_k_PROTEIN_GroTCF=1.0;
	% Local Parameter:   id =  c_PROTEIN_GroTCF, name = c_PROTEIN_GroTCF
	reaction_GENE_E_Blimp1_transcription_0_c_PROTEIN_GroTCF=1.0;
	% Local Parameter:   id =  k_PROTEIN_Eve, name = k_PROTEIN_Eve
	reaction_GENE_E_Blimp1_transcription_0_k_PROTEIN_Eve=1.0;
	% Local Parameter:   id =  c_PROTEIN_Eve, name = c_PROTEIN_Eve
	reaction_GENE_E_Blimp1_transcription_0_c_PROTEIN_Eve=1.0;
	% Local Parameter:   id =  k_PROTEIN_Otx, name = k_PROTEIN_Otx
	reaction_GENE_E_Blimp1_transcription_0_k_PROTEIN_Otx=1.0;
	% Local Parameter:   id =  c_PROTEIN_Otx, name = c_PROTEIN_Otx
	reaction_GENE_E_Blimp1_transcription_0_c_PROTEIN_Otx=1.0;
	% Local Parameter:   id =  k_PROTEIN_GataE, name = k_PROTEIN_GataE
	reaction_GENE_E_Blimp1_transcription_0_k_PROTEIN_GataE=1.0;
	% Local Parameter:   id =  c_PROTEIN_GataE, name = c_PROTEIN_GataE
	reaction_GENE_E_Blimp1_transcription_0_c_PROTEIN_GataE=1.0;

	reaction_GENE_E_Blimp1_transcription_0=(reaction_GENE_E_Blimp1_transcription_0_k_PROTEIN_Otx*x(47)/(reaction_GENE_E_Blimp1_transcription_0_c_PROTEIN_Otx+x(47))+reaction_GENE_E_Blimp1_transcription_0_k_PROTEIN_Brn*x(5)/(reaction_GENE_E_Blimp1_transcription_0_c_PROTEIN_Brn+x(5))+reaction_GENE_E_Blimp1_transcription_0_k_PROTEIN_GataE*x(26)/(reaction_GENE_E_Blimp1_transcription_0_c_PROTEIN_GataE+x(26))+reaction_GENE_E_Blimp1_transcription_0_k_PROTEIN_nBTCF*x(84)/(reaction_GENE_E_Blimp1_transcription_0_c_PROTEIN_nBTCF+x(84))+reaction_GENE_E_Blimp1_transcription_0_k_PROTEIN_Eve*x(16)/(reaction_GENE_E_Blimp1_transcription_0_c_PROTEIN_Eve+x(16)))*reaction_GENE_E_Blimp1_transcription_0_k_PROTEIN_Blimp1*reaction_GENE_E_Blimp1_transcription_0_c_PROTEIN_Blimp1/(reaction_GENE_E_Blimp1_transcription_0_c_PROTEIN_Blimp1+x(3))*reaction_GENE_E_Blimp1_transcription_0_k_PROTEIN_GroTCF*reaction_GENE_E_Blimp1_transcription_0_c_PROTEIN_GroTCF/(reaction_GENE_E_Blimp1_transcription_0_c_PROTEIN_GroTCF+x(31));

% Reaction: id = GENE_E_Bra_transcription_0, name = GENE_E_Bra_transcription	% Local Parameter:   id =  k_PROTEIN_GroTCF, name = k_PROTEIN_GroTCF
	reaction_GENE_E_Bra_transcription_0_k_PROTEIN_GroTCF=1.0;
	% Local Parameter:   id =  c_PROTEIN_GroTCF, name = c_PROTEIN_GroTCF
	reaction_GENE_E_Bra_transcription_0_c_PROTEIN_GroTCF=1.0;
	% Local Parameter:   id =  k_PROTEIN_Otx, name = k_PROTEIN_Otx
	reaction_GENE_E_Bra_transcription_0_k_PROTEIN_Otx=1.0;
	% Local Parameter:   id =  c_PROTEIN_Otx, name = c_PROTEIN_Otx
	reaction_GENE_E_Bra_transcription_0_c_PROTEIN_Otx=1.0;
	% Local Parameter:   id =  k_PROTEIN_GataE, name = k_PROTEIN_GataE
	reaction_GENE_E_Bra_transcription_0_k_PROTEIN_GataE=1.0;
	% Local Parameter:   id =  c_PROTEIN_GataE, name = c_PROTEIN_GataE
	reaction_GENE_E_Bra_transcription_0_c_PROTEIN_GataE=1.0;
	% Local Parameter:   id =  k_PROTEIN_nBTCF, name = k_PROTEIN_nBTCF
	reaction_GENE_E_Bra_transcription_0_k_PROTEIN_nBTCF=1.0;
	% Local Parameter:   id =  c_PROTEIN_nBTCF, name = c_PROTEIN_nBTCF
	reaction_GENE_E_Bra_transcription_0_c_PROTEIN_nBTCF=1.0;

	reaction_GENE_E_Bra_transcription_0=(reaction_GENE_E_Bra_transcription_0_k_PROTEIN_GataE*x(26)/(reaction_GENE_E_Bra_transcription_0_c_PROTEIN_GataE+x(26))+reaction_GENE_E_Bra_transcription_0_k_PROTEIN_nBTCF*x(84)/(reaction_GENE_E_Bra_transcription_0_c_PROTEIN_nBTCF+x(84))+reaction_GENE_E_Bra_transcription_0_k_PROTEIN_Otx*x(47)/(reaction_GENE_E_Bra_transcription_0_c_PROTEIN_Otx+x(47)))*reaction_GENE_E_Bra_transcription_0_k_PROTEIN_GroTCF*reaction_GENE_E_Bra_transcription_0_c_PROTEIN_GroTCF/(reaction_GENE_E_Bra_transcription_0_c_PROTEIN_GroTCF+x(31));

% Reaction: id = GENE_E_Brn_transcription_0, name = GENE_E_Brn_transcription	% Local Parameter:   id =  k_PROTEIN_GataE, name = k_PROTEIN_GataE
	reaction_GENE_E_Brn_transcription_0_k_PROTEIN_GataE=1.0;
	% Local Parameter:   id =  c_PROTEIN_GataE, name = c_PROTEIN_GataE
	reaction_GENE_E_Brn_transcription_0_c_PROTEIN_GataE=1.0;

	reaction_GENE_E_Brn_transcription_0=reaction_GENE_E_Brn_transcription_0_k_PROTEIN_GataE*x(26)/(reaction_GENE_E_Brn_transcription_0_c_PROTEIN_GataE+x(26));

% Reaction: id = GENE_E_CyP_transcription_0, name = GENE_E_CyP_transcription	% Local Parameter:   id =  k_PROTEIN_Ets1, name = k_PROTEIN_Ets1
	reaction_GENE_E_CyP_transcription_0_k_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Ets1, name = c_PROTEIN_Ets1
	reaction_GENE_E_CyP_transcription_0_c_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  k_PROTEIN_SoxB1, name = k_PROTEIN_SoxB1
	reaction_GENE_E_CyP_transcription_0_k_PROTEIN_SoxB1=1.0;
	% Local Parameter:   id =  c_PROTEIN_SoxB1, name = c_PROTEIN_SoxB1
	reaction_GENE_E_CyP_transcription_0_c_PROTEIN_SoxB1=1.0;
	% Local Parameter:   id =  k_PROTEIN_Dri, name = k_PROTEIN_Dri
	reaction_GENE_E_CyP_transcription_0_k_PROTEIN_Dri=1.0;
	% Local Parameter:   id =  c_PROTEIN_Dri, name = c_PROTEIN_Dri
	reaction_GENE_E_CyP_transcription_0_c_PROTEIN_Dri=1.0;

	reaction_GENE_E_CyP_transcription_0=(reaction_GENE_E_CyP_transcription_0_k_PROTEIN_Dri*x(11)/(reaction_GENE_E_CyP_transcription_0_c_PROTEIN_Dri+x(11))+reaction_GENE_E_CyP_transcription_0_k_PROTEIN_Ets1*x(15)/(reaction_GENE_E_CyP_transcription_0_c_PROTEIN_Ets1+x(15)))*reaction_GENE_E_CyP_transcription_0_k_PROTEIN_SoxB1*reaction_GENE_E_CyP_transcription_0_c_PROTEIN_SoxB1/(reaction_GENE_E_CyP_transcription_0_c_PROTEIN_SoxB1+x(54));

% Reaction: id = GENE_E_Delta_transcription_0, name = GENE_E_Delta_transcription	% Local Parameter:   id =  k_PROTEIN_Ets1, name = k_PROTEIN_Ets1
	reaction_GENE_E_Delta_transcription_0_k_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Ets1, name = c_PROTEIN_Ets1
	reaction_GENE_E_Delta_transcription_0_c_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  k_PROTEIN_HesC, name = k_PROTEIN_HesC
	reaction_GENE_E_Delta_transcription_0_k_PROTEIN_HesC=1.0;
	% Local Parameter:   id =  c_PROTEIN_HesC, name = c_PROTEIN_HesC
	reaction_GENE_E_Delta_transcription_0_c_PROTEIN_HesC=1.0;
	% Local Parameter:   id =  k_PROTEIN_UbiqDelta, name = k_PROTEIN_UbiqDelta
	reaction_GENE_E_Delta_transcription_0_k_PROTEIN_UbiqDelta=1.0;
	% Local Parameter:   id =  c_PROTEIN_UbiqDelta, name = c_PROTEIN_UbiqDelta
	reaction_GENE_E_Delta_transcription_0_c_PROTEIN_UbiqDelta=1.0;
	% Local Parameter:   id =  k_PROTEIN_UMADelta, name = k_PROTEIN_UMADelta
	reaction_GENE_E_Delta_transcription_0_k_PROTEIN_UMADelta=1.0;
	% Local Parameter:   id =  c_PROTEIN_UMADelta, name = c_PROTEIN_UMADelta
	reaction_GENE_E_Delta_transcription_0_c_PROTEIN_UMADelta=1.0;

	reaction_GENE_E_Delta_transcription_0=(reaction_GENE_E_Delta_transcription_0_k_PROTEIN_UbiqDelta*x(68)/(reaction_GENE_E_Delta_transcription_0_c_PROTEIN_UbiqDelta+x(68))+reaction_GENE_E_Delta_transcription_0_k_PROTEIN_UMADelta*x(63)/(reaction_GENE_E_Delta_transcription_0_c_PROTEIN_UMADelta+x(63))+reaction_GENE_E_Delta_transcription_0_k_PROTEIN_Ets1*x(15)/(reaction_GENE_E_Delta_transcription_0_c_PROTEIN_Ets1+x(15)))*reaction_GENE_E_Delta_transcription_0_k_PROTEIN_HesC*reaction_GENE_E_Delta_transcription_0_c_PROTEIN_HesC/(reaction_GENE_E_Delta_transcription_0_c_PROTEIN_HesC+x(33));

% Reaction: id = GENE_E_Dpt_transcription_0, name = GENE_E_Dpt_transcription	% Local Parameter:   id =  k_PROTEIN_Gcm, name = k_PROTEIN_Gcm
	reaction_GENE_E_Dpt_transcription_0_k_PROTEIN_Gcm=1.0;
	% Local Parameter:   id =  c_PROTEIN_Gcm, name = c_PROTEIN_Gcm
	reaction_GENE_E_Dpt_transcription_0_c_PROTEIN_Gcm=1.0;

	reaction_GENE_E_Dpt_transcription_0=reaction_GENE_E_Dpt_transcription_0_k_PROTEIN_Gcm*x(28)/(reaction_GENE_E_Dpt_transcription_0_c_PROTEIN_Gcm+x(28));

% Reaction: id = GENE_E_Dri_transcription_0, name = GENE_E_Dri_transcription	% Local Parameter:   id =  k_PROTEIN_Ets1, name = k_PROTEIN_Ets1
	reaction_GENE_E_Dri_transcription_0_k_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Ets1, name = c_PROTEIN_Ets1
	reaction_GENE_E_Dri_transcription_0_c_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  k_PROTEIN_Alx1, name = k_PROTEIN_Alx1
	reaction_GENE_E_Dri_transcription_0_k_PROTEIN_Alx1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Alx1, name = c_PROTEIN_Alx1
	reaction_GENE_E_Dri_transcription_0_c_PROTEIN_Alx1=1.0;

	reaction_GENE_E_Dri_transcription_0=reaction_GENE_E_Dri_transcription_0_k_PROTEIN_Alx1*x(1)/(reaction_GENE_E_Dri_transcription_0_c_PROTEIN_Alx1+x(1))+reaction_GENE_E_Dri_transcription_0_k_PROTEIN_Ets1*x(15)/(reaction_GENE_E_Dri_transcription_0_c_PROTEIN_Ets1+x(15));

% Reaction: id = GENE_E_ES_transcription_0, name = GENE_E_ES_transcription	% Local Parameter:   id =  k_PROTEIN_UbiqES, name = k_PROTEIN_UbiqES
	reaction_GENE_E_ES_transcription_0_k_PROTEIN_UbiqES=1.0;
	% Local Parameter:   id =  c_PROTEIN_UbiqES, name = c_PROTEIN_UbiqES
	reaction_GENE_E_ES_transcription_0_c_PROTEIN_UbiqES=1.0;
	% Local Parameter:   id =  k_PROTEIN_HesC, name = k_PROTEIN_HesC
	reaction_GENE_E_ES_transcription_0_k_PROTEIN_HesC=1.0;
	% Local Parameter:   id =  c_PROTEIN_HesC, name = c_PROTEIN_HesC
	reaction_GENE_E_ES_transcription_0_c_PROTEIN_HesC=1.0;
	% Local Parameter:   id =  k_PROTEIN_Dri, name = k_PROTEIN_Dri
	reaction_GENE_E_ES_transcription_0_k_PROTEIN_Dri=1.0;
	% Local Parameter:   id =  c_PROTEIN_Dri, name = c_PROTEIN_Dri
	reaction_GENE_E_ES_transcription_0_c_PROTEIN_Dri=1.0;

	reaction_GENE_E_ES_transcription_0=(reaction_GENE_E_ES_transcription_0_k_PROTEIN_Dri*x(11)/(reaction_GENE_E_ES_transcription_0_c_PROTEIN_Dri+x(11))+reaction_GENE_E_ES_transcription_0_k_PROTEIN_UbiqES*x(69)/(reaction_GENE_E_ES_transcription_0_c_PROTEIN_UbiqES+x(69)))*reaction_GENE_E_ES_transcription_0_k_PROTEIN_HesC*reaction_GENE_E_ES_transcription_0_c_PROTEIN_HesC/(reaction_GENE_E_ES_transcription_0_c_PROTEIN_HesC+x(33));

% Reaction: id = GENE_E_Endo16_transcription_0, name = GENE_E_Endo16_transcription	% Local Parameter:   id =  k_PROTEIN_Otx, name = k_PROTEIN_Otx
	reaction_GENE_E_Endo16_transcription_0_k_PROTEIN_Otx=1.0;
	% Local Parameter:   id =  c_PROTEIN_Otx, name = c_PROTEIN_Otx
	reaction_GENE_E_Endo16_transcription_0_c_PROTEIN_Otx=1.0;
	% Local Parameter:   id =  k_PROTEIN_Brn, name = k_PROTEIN_Brn
	reaction_GENE_E_Endo16_transcription_0_k_PROTEIN_Brn=1.0;
	% Local Parameter:   id =  c_PROTEIN_Brn, name = c_PROTEIN_Brn
	reaction_GENE_E_Endo16_transcription_0_c_PROTEIN_Brn=1.0;

	reaction_GENE_E_Endo16_transcription_0=reaction_GENE_E_Endo16_transcription_0_k_PROTEIN_Otx*x(47)/(reaction_GENE_E_Endo16_transcription_0_c_PROTEIN_Otx+x(47))+reaction_GENE_E_Endo16_transcription_0_k_PROTEIN_Brn*x(5)/(reaction_GENE_E_Endo16_transcription_0_c_PROTEIN_Brn+x(5));

% Reaction: id = GENE_E_Erg_transcription_0, name = GENE_E_Erg_transcription	% Local Parameter:   id =  k_PROTEIN_Ets1, name = k_PROTEIN_Ets1
	reaction_GENE_E_Erg_transcription_0_k_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Ets1, name = c_PROTEIN_Ets1
	reaction_GENE_E_Erg_transcription_0_c_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  k_PROTEIN_Hex, name = k_PROTEIN_Hex
	reaction_GENE_E_Erg_transcription_0_k_PROTEIN_Hex=1.0;
	% Local Parameter:   id =  c_PROTEIN_Hex, name = c_PROTEIN_Hex
	reaction_GENE_E_Erg_transcription_0_c_PROTEIN_Hex=1.0;
	% Local Parameter:   id =  k_PROTEIN_TBr, name = k_PROTEIN_TBr
	reaction_GENE_E_Erg_transcription_0_k_PROTEIN_TBr=1.0;
	% Local Parameter:   id =  c_PROTEIN_TBr, name = c_PROTEIN_TBr
	reaction_GENE_E_Erg_transcription_0_c_PROTEIN_TBr=1.0;

	reaction_GENE_E_Erg_transcription_0=reaction_GENE_E_Erg_transcription_0_k_PROTEIN_TBr*x(59)/(reaction_GENE_E_Erg_transcription_0_c_PROTEIN_TBr+x(59))+reaction_GENE_E_Erg_transcription_0_k_PROTEIN_Ets1*x(15)/(reaction_GENE_E_Erg_transcription_0_c_PROTEIN_Ets1+x(15))+reaction_GENE_E_Erg_transcription_0_k_PROTEIN_Hex*x(34)/(reaction_GENE_E_Erg_transcription_0_c_PROTEIN_Hex+x(34));

% Reaction: id = GENE_E_Ets1_transcription_0, name = GENE_E_Ets1_transcription	% Local Parameter:   id =  k_PROTEIN_UbiqEts1, name = k_PROTEIN_UbiqEts1
	reaction_GENE_E_Ets1_transcription_0_k_PROTEIN_UbiqEts1=1.0;
	% Local Parameter:   id =  c_PROTEIN_UbiqEts1, name = c_PROTEIN_UbiqEts1
	reaction_GENE_E_Ets1_transcription_0_c_PROTEIN_UbiqEts1=1.0;
	% Local Parameter:   id =  k_PROTEIN_HesC, name = k_PROTEIN_HesC
	reaction_GENE_E_Ets1_transcription_0_k_PROTEIN_HesC=1.0;
	% Local Parameter:   id =  c_PROTEIN_HesC, name = c_PROTEIN_HesC
	reaction_GENE_E_Ets1_transcription_0_c_PROTEIN_HesC=1.0;

	reaction_GENE_E_Ets1_transcription_0=reaction_GENE_E_Ets1_transcription_0_k_PROTEIN_UbiqEts1*x(70)/(reaction_GENE_E_Ets1_transcription_0_c_PROTEIN_UbiqEts1+x(70))*reaction_GENE_E_Ets1_transcription_0_k_PROTEIN_HesC*reaction_GENE_E_Ets1_transcription_0_c_PROTEIN_HesC/(reaction_GENE_E_Ets1_transcription_0_c_PROTEIN_HesC+x(33));

% Reaction: id = GENE_E_Eve_transcription_0, name = GENE_E_Eve_transcription	% Local Parameter:   id =  k_PROTEIN_GroTCF, name = k_PROTEIN_GroTCF
	reaction_GENE_E_Eve_transcription_0_k_PROTEIN_GroTCF=1.0;
	% Local Parameter:   id =  c_PROTEIN_GroTCF, name = c_PROTEIN_GroTCF
	reaction_GENE_E_Eve_transcription_0_c_PROTEIN_GroTCF=1.0;
	% Local Parameter:   id =  k_PROTEIN_Blimp1, name = k_PROTEIN_Blimp1
	reaction_GENE_E_Eve_transcription_0_k_PROTEIN_Blimp1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Blimp1, name = c_PROTEIN_Blimp1
	reaction_GENE_E_Eve_transcription_0_c_PROTEIN_Blimp1=1.0;
	% Local Parameter:   id =  k_PROTEIN_nBTCF, name = k_PROTEIN_nBTCF
	reaction_GENE_E_Eve_transcription_0_k_PROTEIN_nBTCF=1.0;
	% Local Parameter:   id =  c_PROTEIN_nBTCF, name = c_PROTEIN_nBTCF
	reaction_GENE_E_Eve_transcription_0_c_PROTEIN_nBTCF=1.0;
	% Local Parameter:   id =  k_PROTEIN_Hox, name = k_PROTEIN_Hox
	reaction_GENE_E_Eve_transcription_0_k_PROTEIN_Hox=1.0;
	% Local Parameter:   id =  c_PROTEIN_Hox, name = c_PROTEIN_Hox
	reaction_GENE_E_Eve_transcription_0_c_PROTEIN_Hox=1.0;

	reaction_GENE_E_Eve_transcription_0=(reaction_GENE_E_Eve_transcription_0_k_PROTEIN_Blimp1*x(3)/(reaction_GENE_E_Eve_transcription_0_c_PROTEIN_Blimp1+x(3))+reaction_GENE_E_Eve_transcription_0_k_PROTEIN_nBTCF*x(84)/(reaction_GENE_E_Eve_transcription_0_c_PROTEIN_nBTCF+x(84)))*reaction_GENE_E_Eve_transcription_0_k_PROTEIN_GroTCF*reaction_GENE_E_Eve_transcription_0_c_PROTEIN_GroTCF/(reaction_GENE_E_Eve_transcription_0_c_PROTEIN_GroTCF+x(31))*reaction_GENE_E_Eve_transcription_0_k_PROTEIN_Hox*reaction_GENE_E_Eve_transcription_0_c_PROTEIN_Hox/(reaction_GENE_E_Eve_transcription_0_c_PROTEIN_Hox+x(36));

% Reaction: id = GENE_E_Ficolin_transcription_0, name = GENE_E_Ficolin_transcription	% Local Parameter:   id =  k_PROTEIN_Ets1, name = k_PROTEIN_Ets1
	reaction_GENE_E_Ficolin_transcription_0_k_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Ets1, name = c_PROTEIN_Ets1
	reaction_GENE_E_Ficolin_transcription_0_c_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  k_PROTEIN_Hex, name = k_PROTEIN_Hex
	reaction_GENE_E_Ficolin_transcription_0_k_PROTEIN_Hex=1.0;
	% Local Parameter:   id =  c_PROTEIN_Hex, name = c_PROTEIN_Hex
	reaction_GENE_E_Ficolin_transcription_0_c_PROTEIN_Hex=1.0;
	% Local Parameter:   id =  k_PROTEIN_Erg, name = k_PROTEIN_Erg
	reaction_GENE_E_Ficolin_transcription_0_k_PROTEIN_Erg=1.0;
	% Local Parameter:   id =  c_PROTEIN_Erg, name = c_PROTEIN_Erg
	reaction_GENE_E_Ficolin_transcription_0_c_PROTEIN_Erg=1.0;
	% Local Parameter:   id =  k_PROTEIN_Hnf6, name = k_PROTEIN_Hnf6
	reaction_GENE_E_Ficolin_transcription_0_k_PROTEIN_Hnf6=1.0;
	% Local Parameter:   id =  c_PROTEIN_Hnf6, name = c_PROTEIN_Hnf6
	reaction_GENE_E_Ficolin_transcription_0_c_PROTEIN_Hnf6=1.0;

	reaction_GENE_E_Ficolin_transcription_0=reaction_GENE_E_Ficolin_transcription_0_k_PROTEIN_Ets1*x(15)/(reaction_GENE_E_Ficolin_transcription_0_c_PROTEIN_Ets1+x(15))+reaction_GENE_E_Ficolin_transcription_0_k_PROTEIN_Hnf6*x(35)/(reaction_GENE_E_Ficolin_transcription_0_c_PROTEIN_Hnf6+x(35))+reaction_GENE_E_Ficolin_transcription_0_k_PROTEIN_Hex*x(34)/(reaction_GENE_E_Ficolin_transcription_0_c_PROTEIN_Hex+x(34))+reaction_GENE_E_Ficolin_transcription_0_k_PROTEIN_Erg*x(14)/(reaction_GENE_E_Ficolin_transcription_0_c_PROTEIN_Erg+x(14));

% Reaction: id = GENE_E_FoxA_transcription_0, name = GENE_E_FoxA_transcription	% Local Parameter:   id =  k_PROTEIN_GroTFC, name = k_PROTEIN_GroTFC
	reaction_GENE_E_FoxA_transcription_0_k_PROTEIN_GroTFC=1.0;
	% Local Parameter:   id =  c_PROTEIN_GroTFC, name = c_PROTEIN_GroTFC
	reaction_GENE_E_FoxA_transcription_0_c_PROTEIN_GroTFC=1.0;
	% Local Parameter:   id =  k_PROTEIN_FoxA, name = k_PROTEIN_FoxA
	reaction_GENE_E_FoxA_transcription_0_k_PROTEIN_FoxA=1.0;
	% Local Parameter:   id =  c_PROTEIN_FoxA, name = c_PROTEIN_FoxA
	reaction_GENE_E_FoxA_transcription_0_c_PROTEIN_FoxA=1.0;
	% Local Parameter:   id =  k_PROTEIN_nBTCF, name = k_PROTEIN_nBTCF
	reaction_GENE_E_FoxA_transcription_0_k_PROTEIN_nBTCF=1.0;
	% Local Parameter:   id =  c_PROTEIN_nBTCF, name = c_PROTEIN_nBTCF
	reaction_GENE_E_FoxA_transcription_0_c_PROTEIN_nBTCF=1.0;
	% Local Parameter:   id =  k_PROTEIN_Tgif, name = k_PROTEIN_Tgif
	reaction_GENE_E_FoxA_transcription_0_k_PROTEIN_Tgif=1.0;
	% Local Parameter:   id =  c_PROTEIN_Tgif, name = c_PROTEIN_Tgif
	reaction_GENE_E_FoxA_transcription_0_c_PROTEIN_Tgif=1.0;
	% Local Parameter:   id =  k_PROTEIN_Bra, name = k_PROTEIN_Bra
	reaction_GENE_E_FoxA_transcription_0_k_PROTEIN_Bra=1.0;
	% Local Parameter:   id =  c_PROTEIN_Bra, name = c_PROTEIN_Bra
	reaction_GENE_E_FoxA_transcription_0_c_PROTEIN_Bra=1.0;
	% Local Parameter:   id =  k_PROTEIN_Otx, name = k_PROTEIN_Otx
	reaction_GENE_E_FoxA_transcription_0_k_PROTEIN_Otx=1.0;
	% Local Parameter:   id =  c_PROTEIN_Otx, name = c_PROTEIN_Otx
	reaction_GENE_E_FoxA_transcription_0_c_PROTEIN_Otx=1.0;
	% Local Parameter:   id =  k_PROTEIN_GataE, name = k_PROTEIN_GataE
	reaction_GENE_E_FoxA_transcription_0_k_PROTEIN_GataE=1.0;
	% Local Parameter:   id =  c_PROTEIN_GataE, name = c_PROTEIN_GataE
	reaction_GENE_E_FoxA_transcription_0_c_PROTEIN_GataE=1.0;

	reaction_GENE_E_FoxA_transcription_0=(reaction_GENE_E_FoxA_transcription_0_k_PROTEIN_GataE*x(26)/(reaction_GENE_E_FoxA_transcription_0_c_PROTEIN_GataE+x(26))+reaction_GENE_E_FoxA_transcription_0_k_PROTEIN_nBTCF*x(84)/(reaction_GENE_E_FoxA_transcription_0_c_PROTEIN_nBTCF+x(84))+reaction_GENE_E_FoxA_transcription_0_k_PROTEIN_Otx*x(47)/(reaction_GENE_E_FoxA_transcription_0_c_PROTEIN_Otx+x(47))+reaction_GENE_E_FoxA_transcription_0_k_PROTEIN_Bra*x(4)/(reaction_GENE_E_FoxA_transcription_0_c_PROTEIN_Bra+x(4))+reaction_GENE_E_FoxA_transcription_0_k_PROTEIN_Tgif*x(62)/(reaction_GENE_E_FoxA_transcription_0_c_PROTEIN_Tgif+x(62)))*reaction_GENE_E_FoxA_transcription_0_k_PROTEIN_GroTFC*reaction_GENE_E_FoxA_transcription_0_c_PROTEIN_GroTFC/(reaction_GENE_E_FoxA_transcription_0_c_PROTEIN_GroTFC+x(32))*reaction_GENE_E_FoxA_transcription_0_k_PROTEIN_FoxA*reaction_GENE_E_FoxA_transcription_0_c_PROTEIN_FoxA/(reaction_GENE_E_FoxA_transcription_0_c_PROTEIN_FoxA+x(18));

% Reaction: id = GENE_E_FoxB_transcription_0, name = GENE_E_FoxB_transcription	% Local Parameter:   id =  k_PROTEIN_Ets1, name = k_PROTEIN_Ets1
	reaction_GENE_E_FoxB_transcription_0_k_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Ets1, name = c_PROTEIN_Ets1
	reaction_GENE_E_FoxB_transcription_0_c_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  k_PROTEIN_Dri, name = k_PROTEIN_Dri
	reaction_GENE_E_FoxB_transcription_0_k_PROTEIN_Dri=1.0;
	% Local Parameter:   id =  c_PROTEIN_Dri, name = c_PROTEIN_Dri
	reaction_GENE_E_FoxB_transcription_0_c_PROTEIN_Dri=1.0;
	% Local Parameter:   id =  k_PROTEIN_TBr, name = k_PROTEIN_TBr
	reaction_GENE_E_FoxB_transcription_0_k_PROTEIN_TBr=1.0;
	% Local Parameter:   id =  c_PROTEIN_TBr, name = c_PROTEIN_TBr
	reaction_GENE_E_FoxB_transcription_0_c_PROTEIN_TBr=1.0;
	% Local Parameter:   id =  k_PROTEIN_FoxB, name = k_PROTEIN_FoxB
	reaction_GENE_E_FoxB_transcription_0_k_PROTEIN_FoxB=1.0;
	% Local Parameter:   id =  c_PROTEIN_FoxB, name = c_PROTEIN_FoxB
	reaction_GENE_E_FoxB_transcription_0_c_PROTEIN_FoxB=1.0;
	% Local Parameter:   id =  k_PROTEIN_Alx1, name = k_PROTEIN_Alx1
	reaction_GENE_E_FoxB_transcription_0_k_PROTEIN_Alx1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Alx1, name = c_PROTEIN_Alx1
	reaction_GENE_E_FoxB_transcription_0_c_PROTEIN_Alx1=1.0;

	reaction_GENE_E_FoxB_transcription_0=(reaction_GENE_E_FoxB_transcription_0_k_PROTEIN_Alx1*x(1)/(reaction_GENE_E_FoxB_transcription_0_c_PROTEIN_Alx1+x(1))+reaction_GENE_E_FoxB_transcription_0_k_PROTEIN_Ets1*x(15)/(reaction_GENE_E_FoxB_transcription_0_c_PROTEIN_Ets1+x(15))+reaction_GENE_E_FoxB_transcription_0_k_PROTEIN_TBr*x(59)/(reaction_GENE_E_FoxB_transcription_0_c_PROTEIN_TBr+x(59))+reaction_GENE_E_FoxB_transcription_0_k_PROTEIN_Dri*x(11)/(reaction_GENE_E_FoxB_transcription_0_c_PROTEIN_Dri+x(11)))*reaction_GENE_E_FoxB_transcription_0_k_PROTEIN_FoxB*reaction_GENE_E_FoxB_transcription_0_c_PROTEIN_FoxB/(reaction_GENE_E_FoxB_transcription_0_c_PROTEIN_FoxB+x(19));

% Reaction: id = GENE_E_FoxN23_transcription_0, name = GENE_E_FoxN23_transcription	% Local Parameter:   id =  k_PROTEIN_nBTCF, name = k_PROTEIN_nBTCF
	reaction_GENE_E_FoxN23_transcription_0_k_PROTEIN_nBTCF=1.0;
	% Local Parameter:   id =  c_PROTEIN_nBTCF, name = c_PROTEIN_nBTCF
	reaction_GENE_E_FoxN23_transcription_0_c_PROTEIN_nBTCF=1.0;

	reaction_GENE_E_FoxN23_transcription_0=reaction_GENE_E_FoxN23_transcription_0_k_PROTEIN_nBTCF*x(84)/(reaction_GENE_E_FoxN23_transcription_0_c_PROTEIN_nBTCF+x(84));

% Reaction: id = GENE_E_FoxO_transcription_0, name = GENE_E_FoxO_transcription	% Local Parameter:   id =  k_PROTEIN_Ets1, name = k_PROTEIN_Ets1
	reaction_GENE_E_FoxO_transcription_0_k_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Ets1, name = c_PROTEIN_Ets1
	reaction_GENE_E_FoxO_transcription_0_c_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  k_PROTEIN_Hex, name = k_PROTEIN_Hex
	reaction_GENE_E_FoxO_transcription_0_k_PROTEIN_Hex=1.0;
	% Local Parameter:   id =  c_PROTEIN_Hex, name = c_PROTEIN_Hex
	reaction_GENE_E_FoxO_transcription_0_c_PROTEIN_Hex=1.0;
	% Local Parameter:   id =  k_PROTEIN_Erg, name = k_PROTEIN_Erg
	reaction_GENE_E_FoxO_transcription_0_k_PROTEIN_Erg=1.0;
	% Local Parameter:   id =  c_PROTEIN_Erg, name = c_PROTEIN_Erg
	reaction_GENE_E_FoxO_transcription_0_c_PROTEIN_Erg=1.0;
	% Local Parameter:   id =  k_PROTEIN_Tgif, name = k_PROTEIN_Tgif
	reaction_GENE_E_FoxO_transcription_0_k_PROTEIN_Tgif=1.0;
	% Local Parameter:   id =  c_PROTEIN_Tgif, name = c_PROTEIN_Tgif
	reaction_GENE_E_FoxO_transcription_0_c_PROTEIN_Tgif=1.0;

	reaction_GENE_E_FoxO_transcription_0=reaction_GENE_E_FoxO_transcription_0_k_PROTEIN_Ets1*x(15)/(reaction_GENE_E_FoxO_transcription_0_c_PROTEIN_Ets1+x(15))+reaction_GENE_E_FoxO_transcription_0_k_PROTEIN_Hex*x(34)/(reaction_GENE_E_FoxO_transcription_0_c_PROTEIN_Hex+x(34))+reaction_GENE_E_FoxO_transcription_0_k_PROTEIN_Tgif*x(62)/(reaction_GENE_E_FoxO_transcription_0_c_PROTEIN_Tgif+x(62))+reaction_GENE_E_FoxO_transcription_0_k_PROTEIN_Erg*x(14)/(reaction_GENE_E_FoxO_transcription_0_c_PROTEIN_Erg+x(14));

% Reaction: id = GENE_E_FvMo_transcription_0, name = GENE_E_FvMo_transcription	% Local Parameter:   id =  k_PROTEIN_GataE, name = k_PROTEIN_GataE
	reaction_GENE_E_FvMo_transcription_0_k_PROTEIN_GataE=1.0;
	% Local Parameter:   id =  c_PROTEIN_GataE, name = c_PROTEIN_GataE
	reaction_GENE_E_FvMo_transcription_0_c_PROTEIN_GataE=1.0;
	% Local Parameter:   id =  k_PROTEIN_Gcm, name = k_PROTEIN_Gcm
	reaction_GENE_E_FvMo_transcription_0_k_PROTEIN_Gcm=1.0;
	% Local Parameter:   id =  c_PROTEIN_Gcm, name = c_PROTEIN_Gcm
	reaction_GENE_E_FvMo_transcription_0_c_PROTEIN_Gcm=1.0;

	reaction_GENE_E_FvMo_transcription_0=reaction_GENE_E_FvMo_transcription_0_k_PROTEIN_Gcm*x(28)/(reaction_GENE_E_FvMo_transcription_0_c_PROTEIN_Gcm+x(28))+reaction_GENE_E_FvMo_transcription_0_k_PROTEIN_GataE*x(26)/(reaction_GENE_E_FvMo_transcription_0_c_PROTEIN_GataE+x(26));

% Reaction: id = GENE_E_GataC_transcription_0, name = GENE_E_GataC_transcription	% Local Parameter:   id =  k_PROTEIN_GataC, name = k_PROTEIN_GataC
	reaction_GENE_E_GataC_transcription_0_k_PROTEIN_GataC=1.0;
	% Local Parameter:   id =  c_PROTEIN_GataC, name = c_PROTEIN_GataC
	reaction_GENE_E_GataC_transcription_0_c_PROTEIN_GataC=1.0;
	% Local Parameter:   id =  k_PROTEIN_GCM, name = k_PROTEIN_GCM
	reaction_GENE_E_GataC_transcription_0_k_PROTEIN_GCM=1.0;
	% Local Parameter:   id =  c_PROTEIN_GCM, name = c_PROTEIN_GCM
	reaction_GENE_E_GataC_transcription_0_c_PROTEIN_GCM=1.0;
	% Local Parameter:   id =  k_PROTEIN_GataE, name = k_PROTEIN_GataE
	reaction_GENE_E_GataC_transcription_0_k_PROTEIN_GataE=1.0;
	% Local Parameter:   id =  c_PROTEIN_GataE, name = c_PROTEIN_GataE
	reaction_GENE_E_GataC_transcription_0_c_PROTEIN_GataE=1.0;
	% Local Parameter:   id =  k_PROTEIN_Hnf6, name = k_PROTEIN_Hnf6
	reaction_GENE_E_GataC_transcription_0_k_PROTEIN_Hnf6=1.0;
	% Local Parameter:   id =  c_PROTEIN_Hnf6, name = c_PROTEIN_Hnf6
	reaction_GENE_E_GataC_transcription_0_c_PROTEIN_Hnf6=1.0;

	reaction_GENE_E_GataC_transcription_0=(reaction_GENE_E_GataC_transcription_0_k_PROTEIN_GataE*x(26)/(reaction_GENE_E_GataC_transcription_0_c_PROTEIN_GataE+x(26))+reaction_GENE_E_GataC_transcription_0_k_PROTEIN_Hnf6*x(35)/(reaction_GENE_E_GataC_transcription_0_c_PROTEIN_Hnf6+x(35))+reaction_GENE_E_GataC_transcription_0_k_PROTEIN_GCM*x(86)/(reaction_GENE_E_GataC_transcription_0_c_PROTEIN_GCM+x(86)))*reaction_GENE_E_GataC_transcription_0_k_PROTEIN_GataC*reaction_GENE_E_GataC_transcription_0_c_PROTEIN_GataC/(reaction_GENE_E_GataC_transcription_0_c_PROTEIN_GataC+x(25));

% Reaction: id = GENE_E_GataE_transcription_0, name = GENE_E_GataE_transcription	% Local Parameter:   id =  k_PROTEIN_Otx, name = k_PROTEIN_Otx
	reaction_GENE_E_GataE_transcription_0_k_PROTEIN_Otx=1.0;
	% Local Parameter:   id =  c_PROTEIN_Otx, name = c_PROTEIN_Otx
	reaction_GENE_E_GataE_transcription_0_c_PROTEIN_Otx=1.0;
	% Local Parameter:   id =  k_PROTEIN_Hox, name = k_PROTEIN_Hox
	reaction_GENE_E_GataE_transcription_0_k_PROTEIN_Hox=1.0;
	% Local Parameter:   id =  c_PROTEIN_Hox, name = c_PROTEIN_Hox
	reaction_GENE_E_GataE_transcription_0_c_PROTEIN_Hox=1.0;
	% Local Parameter:   id =  k_PROTEIN_SuHN, name = k_PROTEIN_SuHN
	reaction_GENE_E_GataE_transcription_0_k_PROTEIN_SuHN=1.0;
	% Local Parameter:   id =  c_PROTEIN_SuHN, name = c_PROTEIN_SuHN
	reaction_GENE_E_GataE_transcription_0_c_PROTEIN_SuHN=1.0;

	reaction_GENE_E_GataE_transcription_0=(reaction_GENE_E_GataE_transcription_0_k_PROTEIN_Otx*x(47)/(reaction_GENE_E_GataE_transcription_0_c_PROTEIN_Otx+x(47))+reaction_GENE_E_GataE_transcription_0_k_PROTEIN_SuHN*x(57)/(reaction_GENE_E_GataE_transcription_0_c_PROTEIN_SuHN+x(57)))*reaction_GENE_E_GataE_transcription_0_k_PROTEIN_Hox*reaction_GENE_E_GataE_transcription_0_c_PROTEIN_Hox/(reaction_GENE_E_GataE_transcription_0_c_PROTEIN_Hox+x(36));

% Reaction: id = GENE_E_Gcad_transcription_0, name = GENE_E_Gcad_transcription	% Local Parameter:   id =  k_PROTEIN_Snail, name = k_PROTEIN_Snail
	reaction_GENE_E_Gcad_transcription_0_k_PROTEIN_Snail=1.0;
	% Local Parameter:   id =  c_PROTEIN_Snail, name = c_PROTEIN_Snail
	reaction_GENE_E_Gcad_transcription_0_c_PROTEIN_Snail=1.0;
	% Local Parameter:   id =  k_PROTEIN_UbiqGcad, name = k_PROTEIN_UbiqGcad
	reaction_GENE_E_Gcad_transcription_0_k_PROTEIN_UbiqGcad=1.0;
	% Local Parameter:   id =  c_PROTEIN_UbiqGcad, name = c_PROTEIN_UbiqGcad
	reaction_GENE_E_Gcad_transcription_0_c_PROTEIN_UbiqGcad=1.0;

	reaction_GENE_E_Gcad_transcription_0=reaction_GENE_E_Gcad_transcription_0_k_PROTEIN_UbiqGcad*x(71)/(reaction_GENE_E_Gcad_transcription_0_c_PROTEIN_UbiqGcad+x(71))*reaction_GENE_E_Gcad_transcription_0_k_PROTEIN_Snail*reaction_GENE_E_Gcad_transcription_0_c_PROTEIN_Snail/(reaction_GENE_E_Gcad_transcription_0_c_PROTEIN_Snail+x(53));

% Reaction: id = GENE_E_Gcm_transcription_0, name = GENE_E_Gcm_transcription	% Local Parameter:   id =  k_PROTEIN_FoxA, name = k_PROTEIN_FoxA
	reaction_GENE_E_Gcm_transcription_0_k_PROTEIN_FoxA=1.0;
	% Local Parameter:   id =  c_PROTEIN_FoxA, name = c_PROTEIN_FoxA
	reaction_GENE_E_Gcm_transcription_0_c_PROTEIN_FoxA=1.0;
	% Local Parameter:   id =  k_PROTEIN_nBTCF, name = k_PROTEIN_nBTCF
	reaction_GENE_E_Gcm_transcription_0_k_PROTEIN_nBTCF=1.0;
	% Local Parameter:   id =  c_PROTEIN_nBTCF, name = c_PROTEIN_nBTCF
	reaction_GENE_E_Gcm_transcription_0_c_PROTEIN_nBTCF=1.0;
	% Local Parameter:   id =  k_PROTEIN_Alx1, name = k_PROTEIN_Alx1
	reaction_GENE_E_Gcm_transcription_0_k_PROTEIN_Alx1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Alx1, name = c_PROTEIN_Alx1
	reaction_GENE_E_Gcm_transcription_0_c_PROTEIN_Alx1=1.0;
	% Local Parameter:   id =  k_PROTEIN_GroTCF, name = k_PROTEIN_GroTCF
	reaction_GENE_E_Gcm_transcription_0_k_PROTEIN_GroTCF=1.0;
	% Local Parameter:   id =  c_PROTEIN_GroTCF, name = c_PROTEIN_GroTCF
	reaction_GENE_E_Gcm_transcription_0_c_PROTEIN_GroTCF=1.0;
	% Local Parameter:   id =  k_PROTEIN_SuHN, name = k_PROTEIN_SuHN
	reaction_GENE_E_Gcm_transcription_0_k_PROTEIN_SuHN=1.0;
	% Local Parameter:   id =  c_PROTEIN_SuHN, name = c_PROTEIN_SuHN
	reaction_GENE_E_Gcm_transcription_0_c_PROTEIN_SuHN=1.0;
	% Local Parameter:   id =  k_PROTEIN_Gcm, name = k_PROTEIN_Gcm
	reaction_GENE_E_Gcm_transcription_0_k_PROTEIN_Gcm=1.0;
	% Local Parameter:   id =  c_PROTEIN_Gcm, name = c_PROTEIN_Gcm
	reaction_GENE_E_Gcm_transcription_0_c_PROTEIN_Gcm=1.0;

	reaction_GENE_E_Gcm_transcription_0=(reaction_GENE_E_Gcm_transcription_0_k_PROTEIN_nBTCF*x(84)/(reaction_GENE_E_Gcm_transcription_0_c_PROTEIN_nBTCF+x(84))+reaction_GENE_E_Gcm_transcription_0_k_PROTEIN_SuHN*x(57)/(reaction_GENE_E_Gcm_transcription_0_c_PROTEIN_SuHN+x(57))+reaction_GENE_E_Gcm_transcription_0_k_PROTEIN_Gcm*x(28)/(reaction_GENE_E_Gcm_transcription_0_c_PROTEIN_Gcm+x(28)))*reaction_GENE_E_Gcm_transcription_0_k_PROTEIN_GroTCF*reaction_GENE_E_Gcm_transcription_0_c_PROTEIN_GroTCF/(reaction_GENE_E_Gcm_transcription_0_c_PROTEIN_GroTCF+x(31))*reaction_GENE_E_Gcm_transcription_0_k_PROTEIN_FoxA*reaction_GENE_E_Gcm_transcription_0_c_PROTEIN_FoxA/(reaction_GENE_E_Gcm_transcription_0_c_PROTEIN_FoxA+x(18))*reaction_GENE_E_Gcm_transcription_0_k_PROTEIN_Alx1*reaction_GENE_E_Gcm_transcription_0_c_PROTEIN_Alx1/(reaction_GENE_E_Gcm_transcription_0_c_PROTEIN_Alx1+x(1));

% Reaction: id = GENE_E_Gelsolin_transcription_0, name = GENE_E_Gelsolin_transcription	% Local Parameter:   id =  k_PROTEIN_Bra, name = k_PROTEIN_Bra
	reaction_GENE_E_Gelsolin_transcription_0_k_PROTEIN_Bra=1.0;
	% Local Parameter:   id =  c_PROTEIN_Bra, name = c_PROTEIN_Bra
	reaction_GENE_E_Gelsolin_transcription_0_c_PROTEIN_Bra=1.0;

	reaction_GENE_E_Gelsolin_transcription_0=reaction_GENE_E_Gelsolin_transcription_0_k_PROTEIN_Bra*x(4)/(reaction_GENE_E_Gelsolin_transcription_0_c_PROTEIN_Bra+x(4));

% Reaction: id = GENE_E_HesC_transcription_0, name = GENE_E_HesC_transcription	% Local Parameter:   id =  k_PROTEIN_UbiqHesC, name = k_PROTEIN_UbiqHesC
	reaction_GENE_E_HesC_transcription_0_k_PROTEIN_UbiqHesC=1.0;
	% Local Parameter:   id =  c_PROTEIN_UbiqHesC, name = c_PROTEIN_UbiqHesC
	reaction_GENE_E_HesC_transcription_0_c_PROTEIN_UbiqHesC=1.0;
	% Local Parameter:   id =  k_PROTEIN_Pmar1, name = k_PROTEIN_Pmar1
	reaction_GENE_E_HesC_transcription_0_k_PROTEIN_Pmar1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Pmar1, name = c_PROTEIN_Pmar1
	reaction_GENE_E_HesC_transcription_0_c_PROTEIN_Pmar1=1.0;

	reaction_GENE_E_HesC_transcription_0=reaction_GENE_E_HesC_transcription_0_k_PROTEIN_UbiqHesC*x(72)/(reaction_GENE_E_HesC_transcription_0_c_PROTEIN_UbiqHesC+x(72))*reaction_GENE_E_HesC_transcription_0_k_PROTEIN_Pmar1*reaction_GENE_E_HesC_transcription_0_c_PROTEIN_Pmar1/(reaction_GENE_E_HesC_transcription_0_c_PROTEIN_Pmar1+x(49));

% Reaction: id = GENE_E_Hex_transcription_0, name = GENE_E_Hex_transcription	% Local Parameter:   id =  k_PROTEIN_Ets1, name = k_PROTEIN_Ets1
	reaction_GENE_E_Hex_transcription_0_k_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Ets1, name = c_PROTEIN_Ets1
	reaction_GENE_E_Hex_transcription_0_c_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  k_PROTEIN_Erg, name = k_PROTEIN_Erg
	reaction_GENE_E_Hex_transcription_0_k_PROTEIN_Erg=1.0;
	% Local Parameter:   id =  c_PROTEIN_Erg, name = c_PROTEIN_Erg
	reaction_GENE_E_Hex_transcription_0_c_PROTEIN_Erg=1.0;
	% Local Parameter:   id =  k_PROTEIN_Tgif, name = k_PROTEIN_Tgif
	reaction_GENE_E_Hex_transcription_0_k_PROTEIN_Tgif=1.0;
	% Local Parameter:   id =  c_PROTEIN_Tgif, name = c_PROTEIN_Tgif
	reaction_GENE_E_Hex_transcription_0_c_PROTEIN_Tgif=1.0;

	reaction_GENE_E_Hex_transcription_0=reaction_GENE_E_Hex_transcription_0_k_PROTEIN_Tgif*x(62)/(reaction_GENE_E_Hex_transcription_0_c_PROTEIN_Tgif+x(62))+reaction_GENE_E_Hex_transcription_0_k_PROTEIN_Ets1*x(15)/(reaction_GENE_E_Hex_transcription_0_c_PROTEIN_Ets1+x(15))+reaction_GENE_E_Hex_transcription_0_k_PROTEIN_Erg*x(14)/(reaction_GENE_E_Hex_transcription_0_c_PROTEIN_Erg+x(14));

% Reaction: id = GENE_E_Hnf6_transcription_0, name = GENE_E_Hnf6_transcription	% Local Parameter:   id =  k_PROTEIN_UbiqHnf6, name = k_PROTEIN_UbiqHnf6
	reaction_GENE_E_Hnf6_transcription_0_k_PROTEIN_UbiqHnf6=1.0;
	% Local Parameter:   id =  c_PROTEIN_UbiqHnf6, name = c_PROTEIN_UbiqHnf6
	reaction_GENE_E_Hnf6_transcription_0_c_PROTEIN_UbiqHnf6=1.0;

	reaction_GENE_E_Hnf6_transcription_0=reaction_GENE_E_Hnf6_transcription_0_k_PROTEIN_UbiqHnf6*x(73)/(reaction_GENE_E_Hnf6_transcription_0_c_PROTEIN_UbiqHnf6+x(73));

% Reaction: id = GENE_E_Hox_transcription_0, name = GENE_E_Hox_transcription	% Local Parameter:   id =  k_PROTEIN_GroTCF, name = k_PROTEIN_GroTCF
	reaction_GENE_E_Hox_transcription_0_k_PROTEIN_GroTCF=1.0;
	% Local Parameter:   id =  c_PROTEIN_GroTCF, name = c_PROTEIN_GroTCF
	reaction_GENE_E_Hox_transcription_0_c_PROTEIN_GroTCF=1.0;
	% Local Parameter:   id =  k_PROTEIN_Blimp1, name = k_PROTEIN_Blimp1
	reaction_GENE_E_Hox_transcription_0_k_PROTEIN_Blimp1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Blimp1, name = c_PROTEIN_Blimp1
	reaction_GENE_E_Hox_transcription_0_c_PROTEIN_Blimp1=1.0;
	% Local Parameter:   id =  k_PROTEIN_Otx, name = k_PROTEIN_Otx
	reaction_GENE_E_Hox_transcription_0_k_PROTEIN_Otx=1.0;
	% Local Parameter:   id =  c_PROTEIN_Otx, name = c_PROTEIN_Otx
	reaction_GENE_E_Hox_transcription_0_c_PROTEIN_Otx=1.0;
	% Local Parameter:   id =  k_PROTEIN_Eve, name = k_PROTEIN_Eve
	reaction_GENE_E_Hox_transcription_0_k_PROTEIN_Eve=1.0;
	% Local Parameter:   id =  c_PROTEIN_Eve, name = c_PROTEIN_Eve
	reaction_GENE_E_Hox_transcription_0_c_PROTEIN_Eve=1.0;
	% Local Parameter:   id =  k_PROTEIN_nBTCF, name = k_PROTEIN_nBTCF
	reaction_GENE_E_Hox_transcription_0_k_PROTEIN_nBTCF=1.0;
	% Local Parameter:   id =  c_PROTEIN_nBTCF, name = c_PROTEIN_nBTCF
	reaction_GENE_E_Hox_transcription_0_c_PROTEIN_nBTCF=1.0;

	reaction_GENE_E_Hox_transcription_0=(reaction_GENE_E_Hox_transcription_0_k_PROTEIN_Blimp1*x(3)/(reaction_GENE_E_Hox_transcription_0_c_PROTEIN_Blimp1+x(3))+reaction_GENE_E_Hox_transcription_0_k_PROTEIN_nBTCF*x(84)/(reaction_GENE_E_Hox_transcription_0_c_PROTEIN_nBTCF+x(84))+reaction_GENE_E_Hox_transcription_0_k_PROTEIN_Eve*x(16)/(reaction_GENE_E_Hox_transcription_0_c_PROTEIN_Eve+x(16))+reaction_GENE_E_Hox_transcription_0_k_PROTEIN_Otx*x(47)/(reaction_GENE_E_Hox_transcription_0_c_PROTEIN_Otx+x(47)))*reaction_GENE_E_Hox_transcription_0_k_PROTEIN_GroTCF*reaction_GENE_E_Hox_transcription_0_c_PROTEIN_GroTCF/(reaction_GENE_E_Hox_transcription_0_c_PROTEIN_GroTCF+x(31));

% Reaction: id = GENE_E_Kakapo_transcription_0, name = GENE_E_Kakapo_transcription	% Local Parameter:   id =  k_PROTEIN_Bra, name = k_PROTEIN_Bra
	reaction_GENE_E_Kakapo_transcription_0_k_PROTEIN_Bra=1.0;
	% Local Parameter:   id =  c_PROTEIN_Bra, name = c_PROTEIN_Bra
	reaction_GENE_E_Kakapo_transcription_0_c_PROTEIN_Bra=1.0;

	reaction_GENE_E_Kakapo_transcription_0=reaction_GENE_E_Kakapo_transcription_0_k_PROTEIN_Bra*x(4)/(reaction_GENE_E_Kakapo_transcription_0_c_PROTEIN_Bra+x(4));

% Reaction: id = GENE_E_Lim_transcription_0, name = GENE_E_Lim_transcription	% Local Parameter:   id =  k_PROTEIN_Otx, name = k_PROTEIN_Otx
	reaction_GENE_E_Lim_transcription_0_k_PROTEIN_Otx=1.0;
	% Local Parameter:   id =  c_PROTEIN_Otx, name = c_PROTEIN_Otx
	reaction_GENE_E_Lim_transcription_0_c_PROTEIN_Otx=1.0;
	% Local Parameter:   id =  k_PROTEIN_GataE, name = k_PROTEIN_GataE
	reaction_GENE_E_Lim_transcription_0_k_PROTEIN_GataE=1.0;
	% Local Parameter:   id =  c_PROTEIN_GataE, name = c_PROTEIN_GataE
	reaction_GENE_E_Lim_transcription_0_c_PROTEIN_GataE=1.0;

	reaction_GENE_E_Lim_transcription_0=reaction_GENE_E_Lim_transcription_0_k_PROTEIN_GataE*x(26)/(reaction_GENE_E_Lim_transcription_0_c_PROTEIN_GataE+x(26))+reaction_GENE_E_Lim_transcription_0_k_PROTEIN_Otx*x(47)/(reaction_GENE_E_Lim_transcription_0_c_PROTEIN_Otx+x(47));

% Reaction: id = GENE_E_Msp130_transcription_0, name = GENE_E_Msp130_transcription	% Local Parameter:   id =  k_PROTEIN_FoxB, name = k_PROTEIN_FoxB
	reaction_GENE_E_Msp130_transcription_0_k_PROTEIN_FoxB=1.0;
	% Local Parameter:   id =  c_PROTEIN_FoxB, name = c_PROTEIN_FoxB
	reaction_GENE_E_Msp130_transcription_0_c_PROTEIN_FoxB=1.0;
	% Local Parameter:   id =  k_PROTEIN_Hex, name = k_PROTEIN_Hex
	reaction_GENE_E_Msp130_transcription_0_k_PROTEIN_Hex=1.0;
	% Local Parameter:   id =  c_PROTEIN_Hex, name = c_PROTEIN_Hex
	reaction_GENE_E_Msp130_transcription_0_c_PROTEIN_Hex=1.0;
	% Local Parameter:   id =  k_PROTEIN_Alx1, name = k_PROTEIN_Alx1
	reaction_GENE_E_Msp130_transcription_0_k_PROTEIN_Alx1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Alx1, name = c_PROTEIN_Alx1
	reaction_GENE_E_Msp130_transcription_0_c_PROTEIN_Alx1=1.0;
	% Local Parameter:   id =  k_PROTEIN_Erg, name = k_PROTEIN_Erg
	reaction_GENE_E_Msp130_transcription_0_k_PROTEIN_Erg=1.0;
	% Local Parameter:   id =  c_PROTEIN_Erg, name = c_PROTEIN_Erg
	reaction_GENE_E_Msp130_transcription_0_c_PROTEIN_Erg=1.0;
	% Local Parameter:   id =  k_PROTEIN_Ets1, name = k_PROTEIN_Ets1
	reaction_GENE_E_Msp130_transcription_0_k_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Ets1, name = c_PROTEIN_Ets1
	reaction_GENE_E_Msp130_transcription_0_c_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  k_PROTEIN_TBr, name = k_PROTEIN_TBr
	reaction_GENE_E_Msp130_transcription_0_k_PROTEIN_TBr=1.0;
	% Local Parameter:   id =  c_PROTEIN_TBr, name = c_PROTEIN_TBr
	reaction_GENE_E_Msp130_transcription_0_c_PROTEIN_TBr=1.0;
	% Local Parameter:   id =  k_PROTEIN_Hnf6, name = k_PROTEIN_Hnf6
	reaction_GENE_E_Msp130_transcription_0_k_PROTEIN_Hnf6=1.0;
	% Local Parameter:   id =  c_PROTEIN_Hnf6, name = c_PROTEIN_Hnf6
	reaction_GENE_E_Msp130_transcription_0_c_PROTEIN_Hnf6=1.0;

	reaction_GENE_E_Msp130_transcription_0=reaction_GENE_E_Msp130_transcription_0_k_PROTEIN_Hnf6*x(35)/(reaction_GENE_E_Msp130_transcription_0_c_PROTEIN_Hnf6+x(35))+reaction_GENE_E_Msp130_transcription_0_k_PROTEIN_FoxB*x(19)/(reaction_GENE_E_Msp130_transcription_0_c_PROTEIN_FoxB+x(19))+reaction_GENE_E_Msp130_transcription_0_k_PROTEIN_Ets1*x(15)/(reaction_GENE_E_Msp130_transcription_0_c_PROTEIN_Ets1+x(15))+reaction_GENE_E_Msp130_transcription_0_k_PROTEIN_Alx1*x(1)/(reaction_GENE_E_Msp130_transcription_0_c_PROTEIN_Alx1+x(1))+reaction_GENE_E_Msp130_transcription_0_k_PROTEIN_Hex*x(34)/(reaction_GENE_E_Msp130_transcription_0_c_PROTEIN_Hex+x(34))+reaction_GENE_E_Msp130_transcription_0_k_PROTEIN_TBr*x(59)/(reaction_GENE_E_Msp130_transcription_0_c_PROTEIN_TBr+x(59))+reaction_GENE_E_Msp130_transcription_0_k_PROTEIN_Erg*x(14)/(reaction_GENE_E_Msp130_transcription_0_c_PROTEIN_Erg+x(14));

% Reaction: id = GENE_E_MspL_transcription_0, name = GENE_E_MspL_transcription	% Local Parameter:   id =  k_PROTEIN_Hex, name = k_PROTEIN_Hex
	reaction_GENE_E_MspL_transcription_0_k_PROTEIN_Hex=1.0;
	% Local Parameter:   id =  c_PROTEIN_Hex, name = c_PROTEIN_Hex
	reaction_GENE_E_MspL_transcription_0_c_PROTEIN_Hex=1.0;
	% Local Parameter:   id =  k_PROTEIN_Ets1, name = k_PROTEIN_Ets1
	reaction_GENE_E_MspL_transcription_0_k_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Ets1, name = c_PROTEIN_Ets1
	reaction_GENE_E_MspL_transcription_0_c_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  k_PROTEIN_VEGFSignal, name = k_PROTEIN_VEGFSignal
	reaction_GENE_E_MspL_transcription_0_k_PROTEIN_VEGFSignal=1.0;
	% Local Parameter:   id =  c_PROTEIN_VEGFSignal, name = c_PROTEIN_VEGFSignal
	reaction_GENE_E_MspL_transcription_0_c_PROTEIN_VEGFSignal=1.0;
	% Local Parameter:   id =  k_PROTEIN_Erg, name = k_PROTEIN_Erg
	reaction_GENE_E_MspL_transcription_0_k_PROTEIN_Erg=1.0;
	% Local Parameter:   id =  c_PROTEIN_Erg, name = c_PROTEIN_Erg
	reaction_GENE_E_MspL_transcription_0_c_PROTEIN_Erg=1.0;
	% Local Parameter:   id =  k_PROTEIN_Alx1, name = k_PROTEIN_Alx1
	reaction_GENE_E_MspL_transcription_0_k_PROTEIN_Alx1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Alx1, name = c_PROTEIN_Alx1
	reaction_GENE_E_MspL_transcription_0_c_PROTEIN_Alx1=1.0;

	reaction_GENE_E_MspL_transcription_0=reaction_GENE_E_MspL_transcription_0_k_PROTEIN_Ets1*x(15)/(reaction_GENE_E_MspL_transcription_0_c_PROTEIN_Ets1+x(15))+reaction_GENE_E_MspL_transcription_0_k_PROTEIN_Alx1*x(1)/(reaction_GENE_E_MspL_transcription_0_c_PROTEIN_Alx1+x(1))+reaction_GENE_E_MspL_transcription_0_k_PROTEIN_VEGFSignal*x(79)/(reaction_GENE_E_MspL_transcription_0_c_PROTEIN_VEGFSignal+x(79))+reaction_GENE_E_MspL_transcription_0_k_PROTEIN_Hex*x(34)/(reaction_GENE_E_MspL_transcription_0_c_PROTEIN_Hex+x(34))+reaction_GENE_E_MspL_transcription_0_k_PROTEIN_Erg*x(14)/(reaction_GENE_E_MspL_transcription_0_c_PROTEIN_Erg+x(14));

% Reaction: id = GENE_E_Not_transcription_0, name = GENE_E_Not_transcription	% Local Parameter:   id =  k_PROTEIN_GataE, name = k_PROTEIN_GataE
	reaction_GENE_E_Not_transcription_0_k_PROTEIN_GataE=1.0;
	% Local Parameter:   id =  c_PROTEIN_GataE, name = c_PROTEIN_GataE
	reaction_GENE_E_Not_transcription_0_c_PROTEIN_GataE=1.0;

	reaction_GENE_E_Not_transcription_0=reaction_GENE_E_Not_transcription_0_k_PROTEIN_GataE*x(26)/(reaction_GENE_E_Not_transcription_0_c_PROTEIN_GataE+x(26));

% Reaction: id = GENE_E_Nrl_transcription_0, name = GENE_E_Nrl_transcription	% Local Parameter:   id =  k_PROTEIN_HesC, name = k_PROTEIN_HesC
	reaction_GENE_E_Nrl_transcription_0_k_PROTEIN_HesC=1.0;
	% Local Parameter:   id =  c_PROTEIN_HesC, name = c_PROTEIN_HesC
	reaction_GENE_E_Nrl_transcription_0_c_PROTEIN_HesC=1.0;
	% Local Parameter:   id =  k_PROTEIN_Tgif, name = k_PROTEIN_Tgif
	reaction_GENE_E_Nrl_transcription_0_k_PROTEIN_Tgif=1.0;
	% Local Parameter:   id =  c_PROTEIN_Tgif, name = c_PROTEIN_Tgif
	reaction_GENE_E_Nrl_transcription_0_c_PROTEIN_Tgif=1.0;
	% Local Parameter:   id =  k_PROTEIN_TBr, name = k_PROTEIN_TBr
	reaction_GENE_E_Nrl_transcription_0_k_PROTEIN_TBr=1.0;
	% Local Parameter:   id =  c_PROTEIN_TBr, name = c_PROTEIN_TBr
	reaction_GENE_E_Nrl_transcription_0_c_PROTEIN_TBr=1.0;
	% Local Parameter:   id =  k_PROTEIN_UMANrl, name = k_PROTEIN_UMANrl
	reaction_GENE_E_Nrl_transcription_0_k_PROTEIN_UMANrl=1.0;
	% Local Parameter:   id =  c_PROTEIN_UMANrl, name = c_PROTEIN_UMANrl
	reaction_GENE_E_Nrl_transcription_0_c_PROTEIN_UMANrl=1.0;
	% Local Parameter:   id =  k_PROTEIN_FoxN23, name = k_PROTEIN_FoxN23
	reaction_GENE_E_Nrl_transcription_0_k_PROTEIN_FoxN23=1.0;
	% Local Parameter:   id =  c_PROTEIN_FoxN23, name = c_PROTEIN_FoxN23
	reaction_GENE_E_Nrl_transcription_0_c_PROTEIN_FoxN23=1.0;
	% Local Parameter:   id =  k_PROTEIN_GataE, name = k_PROTEIN_GataE
	reaction_GENE_E_Nrl_transcription_0_k_PROTEIN_GataE=1.0;
	% Local Parameter:   id =  c_PROTEIN_GataE, name = c_PROTEIN_GataE
	reaction_GENE_E_Nrl_transcription_0_c_PROTEIN_GataE=1.0;

	reaction_GENE_E_Nrl_transcription_0=(reaction_GENE_E_Nrl_transcription_0_k_PROTEIN_TBr*x(59)/(reaction_GENE_E_Nrl_transcription_0_c_PROTEIN_TBr+x(59))+reaction_GENE_E_Nrl_transcription_0_k_PROTEIN_UMANrl*x(64)/(reaction_GENE_E_Nrl_transcription_0_c_PROTEIN_UMANrl+x(64))+reaction_GENE_E_Nrl_transcription_0_k_PROTEIN_FoxN23*x(20)/(reaction_GENE_E_Nrl_transcription_0_c_PROTEIN_FoxN23+x(20)))*reaction_GENE_E_Nrl_transcription_0_k_PROTEIN_GataE*reaction_GENE_E_Nrl_transcription_0_c_PROTEIN_GataE/(reaction_GENE_E_Nrl_transcription_0_c_PROTEIN_GataE+x(26))*reaction_GENE_E_Nrl_transcription_0_k_PROTEIN_HesC*reaction_GENE_E_Nrl_transcription_0_c_PROTEIN_HesC/(reaction_GENE_E_Nrl_transcription_0_c_PROTEIN_HesC+x(33))*reaction_GENE_E_Nrl_transcription_0_k_PROTEIN_Tgif*reaction_GENE_E_Nrl_transcription_0_c_PROTEIN_Tgif/(reaction_GENE_E_Nrl_transcription_0_c_PROTEIN_Tgif+x(62));

% Reaction: id = GENE_E_OrCt_transcription_0, name = GENE_E_OrCt_transcription	% Local Parameter:   id =  k_PROTEIN_Bra, name = k_PROTEIN_Bra
	reaction_GENE_E_OrCt_transcription_0_k_PROTEIN_Bra=1.0;
	% Local Parameter:   id =  c_PROTEIN_Bra, name = c_PROTEIN_Bra
	reaction_GENE_E_OrCt_transcription_0_c_PROTEIN_Bra=1.0;
	% Local Parameter:   id =  k_PROTEIN_Hox, name = k_PROTEIN_Hox
	reaction_GENE_E_OrCt_transcription_0_k_PROTEIN_Hox=1.0;
	% Local Parameter:   id =  c_PROTEIN_Hox, name = c_PROTEIN_Hox
	reaction_GENE_E_OrCt_transcription_0_c_PROTEIN_Hox=1.0;

	reaction_GENE_E_OrCt_transcription_0=reaction_GENE_E_OrCt_transcription_0_k_PROTEIN_Bra*x(4)/(reaction_GENE_E_OrCt_transcription_0_c_PROTEIN_Bra+x(4))*reaction_GENE_E_OrCt_transcription_0_k_PROTEIN_Hox*reaction_GENE_E_OrCt_transcription_0_c_PROTEIN_Hox/(reaction_GENE_E_OrCt_transcription_0_c_PROTEIN_Hox+x(36));

% Reaction: id = GENE_E_Otx_transcription_0, name = GENE_E_Otx_transcription	% Local Parameter:   id =  k_PROTEIN_UVAOtx, name = k_PROTEIN_UVAOtx
	reaction_GENE_E_Otx_transcription_0_k_PROTEIN_UVAOtx=1.0;
	% Local Parameter:   id =  c_PROTEIN_UVAOtx, name = c_PROTEIN_UVAOtx
	reaction_GENE_E_Otx_transcription_0_c_PROTEIN_UVAOtx=1.0;
	% Local Parameter:   id =  k_PROTEIN_Otx, name = k_PROTEIN_Otx
	reaction_GENE_E_Otx_transcription_0_k_PROTEIN_Otx=1.0;
	% Local Parameter:   id =  c_PROTEIN_Otx, name = c_PROTEIN_Otx
	reaction_GENE_E_Otx_transcription_0_c_PROTEIN_Otx=1.0;
	% Local Parameter:   id =  k_PROTEIN_GataE, name = k_PROTEIN_GataE
	reaction_GENE_E_Otx_transcription_0_k_PROTEIN_GataE=1.0;
	% Local Parameter:   id =  c_PROTEIN_GataE, name = c_PROTEIN_GataE
	reaction_GENE_E_Otx_transcription_0_c_PROTEIN_GataE=1.0;
	% Local Parameter:   id =  k_PROTEIN_Blimp1, name = k_PROTEIN_Blimp1
	reaction_GENE_E_Otx_transcription_0_k_PROTEIN_Blimp1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Blimp1, name = c_PROTEIN_Blimp1
	reaction_GENE_E_Otx_transcription_0_c_PROTEIN_Blimp1=1.0;

	reaction_GENE_E_Otx_transcription_0=reaction_GENE_E_Otx_transcription_0_k_PROTEIN_UVAOtx*x(66)/(reaction_GENE_E_Otx_transcription_0_c_PROTEIN_UVAOtx+x(66))+reaction_GENE_E_Otx_transcription_0_k_PROTEIN_Blimp1*x(3)/(reaction_GENE_E_Otx_transcription_0_c_PROTEIN_Blimp1+x(3))+reaction_GENE_E_Otx_transcription_0_k_PROTEIN_GataE*x(26)/(reaction_GENE_E_Otx_transcription_0_c_PROTEIN_GataE+x(26))+reaction_GENE_E_Otx_transcription_0_k_PROTEIN_Otx*x(47)/(reaction_GENE_E_Otx_transcription_0_c_PROTEIN_Otx+x(47));

% Reaction: id = GENE_E_Pks_transcription_0, name = GENE_E_Pks_transcription	% Local Parameter:   id =  k_PROTEIN_GataE, name = k_PROTEIN_GataE
	reaction_GENE_E_Pks_transcription_0_k_PROTEIN_GataE=1.0;
	% Local Parameter:   id =  c_PROTEIN_GataE, name = c_PROTEIN_GataE
	reaction_GENE_E_Pks_transcription_0_c_PROTEIN_GataE=1.0;
	% Local Parameter:   id =  k_PROTEIN_Gcm, name = k_PROTEIN_Gcm
	reaction_GENE_E_Pks_transcription_0_k_PROTEIN_Gcm=1.0;
	% Local Parameter:   id =  c_PROTEIN_Gcm, name = c_PROTEIN_Gcm
	reaction_GENE_E_Pks_transcription_0_c_PROTEIN_Gcm=1.0;

	reaction_GENE_E_Pks_transcription_0=reaction_GENE_E_Pks_transcription_0_k_PROTEIN_Gcm*x(28)/(reaction_GENE_E_Pks_transcription_0_c_PROTEIN_Gcm+x(28))+reaction_GENE_E_Pks_transcription_0_k_PROTEIN_GataE*x(26)/(reaction_GENE_E_Pks_transcription_0_c_PROTEIN_GataE+x(26));

% Reaction: id = GENE_E_Pmar1_transcription_0, name = GENE_E_Pmar1_transcription	% Local Parameter:   id =  k_PROTEIN_GroTCF, name = k_PROTEIN_GroTCF
	reaction_GENE_E_Pmar1_transcription_0_k_PROTEIN_GroTCF=1.0;
	% Local Parameter:   id =  c_PROTEIN_GroTCF, name = c_PROTEIN_GroTCF
	reaction_GENE_E_Pmar1_transcription_0_c_PROTEIN_GroTCF=1.0;
	% Local Parameter:   id =  k_PROTEIN_Otx, name = k_PROTEIN_Otx
	reaction_GENE_E_Pmar1_transcription_0_k_PROTEIN_Otx=1.0;
	% Local Parameter:   id =  c_PROTEIN_Otx, name = c_PROTEIN_Otx
	reaction_GENE_E_Pmar1_transcription_0_c_PROTEIN_Otx=1.0;
	% Local Parameter:   id =  k_PROTEIN_nBTCF, name = k_PROTEIN_nBTCF
	reaction_GENE_E_Pmar1_transcription_0_k_PROTEIN_nBTCF=1.0;
	% Local Parameter:   id =  c_PROTEIN_nBTCF, name = c_PROTEIN_nBTCF
	reaction_GENE_E_Pmar1_transcription_0_c_PROTEIN_nBTCF=1.0;

	reaction_GENE_E_Pmar1_transcription_0=(reaction_GENE_E_Pmar1_transcription_0_k_PROTEIN_nBTCF*x(84)/(reaction_GENE_E_Pmar1_transcription_0_c_PROTEIN_nBTCF+x(84))+reaction_GENE_E_Pmar1_transcription_0_k_PROTEIN_Otx*x(47)/(reaction_GENE_E_Pmar1_transcription_0_c_PROTEIN_Otx+x(47)))*reaction_GENE_E_Pmar1_transcription_0_k_PROTEIN_GroTCF*reaction_GENE_E_Pmar1_transcription_0_c_PROTEIN_GroTCF/(reaction_GENE_E_Pmar1_transcription_0_c_PROTEIN_GroTCF+x(31));

% Reaction: id = GENE_E_Sm27_transcription_0, name = GENE_E_Sm27_transcription	% Local Parameter:   id =  k_PROTEIN_Ets1, name = k_PROTEIN_Ets1
	reaction_GENE_E_Sm27_transcription_0_k_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Ets1, name = c_PROTEIN_Ets1
	reaction_GENE_E_Sm27_transcription_0_c_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  k_PROTEIN_Hex, name = k_PROTEIN_Hex
	reaction_GENE_E_Sm27_transcription_0_k_PROTEIN_Hex=1.0;
	% Local Parameter:   id =  c_PROTEIN_Hex, name = c_PROTEIN_Hex
	reaction_GENE_E_Sm27_transcription_0_c_PROTEIN_Hex=1.0;
	% Local Parameter:   id =  k_PROTEIN_Alx1, name = k_PROTEIN_Alx1
	reaction_GENE_E_Sm27_transcription_0_k_PROTEIN_Alx1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Alx1, name = c_PROTEIN_Alx1
	reaction_GENE_E_Sm27_transcription_0_c_PROTEIN_Alx1=1.0;
	% Local Parameter:   id =  k_PROTEIN_Dri, name = k_PROTEIN_Dri
	reaction_GENE_E_Sm27_transcription_0_k_PROTEIN_Dri=1.0;
	% Local Parameter:   id =  c_PROTEIN_Dri, name = c_PROTEIN_Dri
	reaction_GENE_E_Sm27_transcription_0_c_PROTEIN_Dri=1.0;
	% Local Parameter:   id =  k_PROTEIN_Erg, name = k_PROTEIN_Erg
	reaction_GENE_E_Sm27_transcription_0_k_PROTEIN_Erg=1.0;
	% Local Parameter:   id =  c_PROTEIN_Erg, name = c_PROTEIN_Erg
	reaction_GENE_E_Sm27_transcription_0_c_PROTEIN_Erg=1.0;
	% Local Parameter:   id =  k_PROTEIN_Tel, name = k_PROTEIN_Tel
	reaction_GENE_E_Sm27_transcription_0_k_PROTEIN_Tel=1.0;
	% Local Parameter:   id =  c_PROTEIN_Tel, name = c_PROTEIN_Tel
	reaction_GENE_E_Sm27_transcription_0_c_PROTEIN_Tel=1.0;
	% Local Parameter:   id =  k_PROTEIN_Hnf6, name = k_PROTEIN_Hnf6
	reaction_GENE_E_Sm27_transcription_0_k_PROTEIN_Hnf6=1.0;
	% Local Parameter:   id =  c_PROTEIN_Hnf6, name = c_PROTEIN_Hnf6
	reaction_GENE_E_Sm27_transcription_0_c_PROTEIN_Hnf6=1.0;

	reaction_GENE_E_Sm27_transcription_0=reaction_GENE_E_Sm27_transcription_0_k_PROTEIN_Dri*x(11)/(reaction_GENE_E_Sm27_transcription_0_c_PROTEIN_Dri+x(11))+reaction_GENE_E_Sm27_transcription_0_k_PROTEIN_Hnf6*x(35)/(reaction_GENE_E_Sm27_transcription_0_c_PROTEIN_Hnf6+x(35))+reaction_GENE_E_Sm27_transcription_0_k_PROTEIN_Ets1*x(15)/(reaction_GENE_E_Sm27_transcription_0_c_PROTEIN_Ets1+x(15))+reaction_GENE_E_Sm27_transcription_0_k_PROTEIN_Alx1*x(1)/(reaction_GENE_E_Sm27_transcription_0_c_PROTEIN_Alx1+x(1))+reaction_GENE_E_Sm27_transcription_0_k_PROTEIN_Tel*x(61)/(reaction_GENE_E_Sm27_transcription_0_c_PROTEIN_Tel+x(61))+reaction_GENE_E_Sm27_transcription_0_k_PROTEIN_Hex*x(34)/(reaction_GENE_E_Sm27_transcription_0_c_PROTEIN_Hex+x(34))+reaction_GENE_E_Sm27_transcription_0_k_PROTEIN_Erg*x(14)/(reaction_GENE_E_Sm27_transcription_0_c_PROTEIN_Erg+x(14));

% Reaction: id = GENE_E_Sm30_transcription_0, name = GENE_E_Sm30_transcription	% Local Parameter:   id =  k_PROTEIN_VEGFSignal, name = k_PROTEIN_VEGFSignal
	reaction_GENE_E_Sm30_transcription_0_k_PROTEIN_VEGFSignal=1.0;
	% Local Parameter:   id =  c_PROTEIN_VEGFSignal, name = c_PROTEIN_VEGFSignal
	reaction_GENE_E_Sm30_transcription_0_c_PROTEIN_VEGFSignal=1.0;

	reaction_GENE_E_Sm30_transcription_0=reaction_GENE_E_Sm30_transcription_0_k_PROTEIN_VEGFSignal*x(79)/(reaction_GENE_E_Sm30_transcription_0_c_PROTEIN_VEGFSignal+x(79));

% Reaction: id = GENE_E_Sm50_transcription_0, name = GENE_E_Sm50_transcription	% Local Parameter:   id =  k_PROTEIN_Ets1, name = k_PROTEIN_Ets1
	reaction_GENE_E_Sm50_transcription_0_k_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Ets1, name = c_PROTEIN_Ets1
	reaction_GENE_E_Sm50_transcription_0_c_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  k_PROTEIN_Hex, name = k_PROTEIN_Hex
	reaction_GENE_E_Sm50_transcription_0_k_PROTEIN_Hex=1.0;
	% Local Parameter:   id =  c_PROTEIN_Hex, name = c_PROTEIN_Hex
	reaction_GENE_E_Sm50_transcription_0_c_PROTEIN_Hex=1.0;
	% Local Parameter:   id =  k_PROTEIN_Alx1, name = k_PROTEIN_Alx1
	reaction_GENE_E_Sm50_transcription_0_k_PROTEIN_Alx1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Alx1, name = c_PROTEIN_Alx1
	reaction_GENE_E_Sm50_transcription_0_c_PROTEIN_Alx1=1.0;
	% Local Parameter:   id =  k_PROTEIN_Dri, name = k_PROTEIN_Dri
	reaction_GENE_E_Sm50_transcription_0_k_PROTEIN_Dri=1.0;
	% Local Parameter:   id =  c_PROTEIN_Dri, name = c_PROTEIN_Dri
	reaction_GENE_E_Sm50_transcription_0_c_PROTEIN_Dri=1.0;
	% Local Parameter:   id =  k_PROTEIN_Erg, name = k_PROTEIN_Erg
	reaction_GENE_E_Sm50_transcription_0_k_PROTEIN_Erg=1.0;
	% Local Parameter:   id =  c_PROTEIN_Erg, name = c_PROTEIN_Erg
	reaction_GENE_E_Sm50_transcription_0_c_PROTEIN_Erg=1.0;
	% Local Parameter:   id =  k_PROTEIN_VEGFSignal, name = k_PROTEIN_VEGFSignal
	reaction_GENE_E_Sm50_transcription_0_k_PROTEIN_VEGFSignal=1.0;
	% Local Parameter:   id =  c_PROTEIN_VEGFSignal, name = c_PROTEIN_VEGFSignal
	reaction_GENE_E_Sm50_transcription_0_c_PROTEIN_VEGFSignal=1.0;
	% Local Parameter:   id =  k_PROTEIN_Tel, name = k_PROTEIN_Tel
	reaction_GENE_E_Sm50_transcription_0_k_PROTEIN_Tel=1.0;
	% Local Parameter:   id =  c_PROTEIN_Tel, name = c_PROTEIN_Tel
	reaction_GENE_E_Sm50_transcription_0_c_PROTEIN_Tel=1.0;
	% Local Parameter:   id =  k_PROTEIN_Hnf6, name = k_PROTEIN_Hnf6
	reaction_GENE_E_Sm50_transcription_0_k_PROTEIN_Hnf6=1.0;
	% Local Parameter:   id =  c_PROTEIN_Hnf6, name = c_PROTEIN_Hnf6
	reaction_GENE_E_Sm50_transcription_0_c_PROTEIN_Hnf6=1.0;

	reaction_GENE_E_Sm50_transcription_0=reaction_GENE_E_Sm50_transcription_0_k_PROTEIN_Dri*x(11)/(reaction_GENE_E_Sm50_transcription_0_c_PROTEIN_Dri+x(11))+reaction_GENE_E_Sm50_transcription_0_k_PROTEIN_Hnf6*x(35)/(reaction_GENE_E_Sm50_transcription_0_c_PROTEIN_Hnf6+x(35))+reaction_GENE_E_Sm50_transcription_0_k_PROTEIN_Ets1*x(15)/(reaction_GENE_E_Sm50_transcription_0_c_PROTEIN_Ets1+x(15))+reaction_GENE_E_Sm50_transcription_0_k_PROTEIN_Alx1*x(1)/(reaction_GENE_E_Sm50_transcription_0_c_PROTEIN_Alx1+x(1))+reaction_GENE_E_Sm50_transcription_0_k_PROTEIN_Tel*x(61)/(reaction_GENE_E_Sm50_transcription_0_c_PROTEIN_Tel+x(61))+reaction_GENE_E_Sm50_transcription_0_k_PROTEIN_Hex*x(34)/(reaction_GENE_E_Sm50_transcription_0_c_PROTEIN_Hex+x(34))+reaction_GENE_E_Sm50_transcription_0_k_PROTEIN_Erg*x(14)/(reaction_GENE_E_Sm50_transcription_0_c_PROTEIN_Erg+x(14))+reaction_GENE_E_Sm50_transcription_0_k_PROTEIN_VEGFSignal*x(79)/(reaction_GENE_E_Sm50_transcription_0_c_PROTEIN_VEGFSignal+x(79));

% Reaction: id = GENE_E_Snail_transcription_0, name = GENE_E_Snail_transcription	% Local Parameter:   id =  k_PROTEIN_Hex, name = k_PROTEIN_Hex
	reaction_GENE_E_Snail_transcription_0_k_PROTEIN_Hex=1.0;
	% Local Parameter:   id =  c_PROTEIN_Hex, name = c_PROTEIN_Hex
	reaction_GENE_E_Snail_transcription_0_c_PROTEIN_Hex=1.0;

	reaction_GENE_E_Snail_transcription_0=reaction_GENE_E_Snail_transcription_0_k_PROTEIN_Hex*x(34)/(reaction_GENE_E_Snail_transcription_0_c_PROTEIN_Hex+x(34));

% Reaction: id = GENE_E_SoxB1_transcription_0, name = GENE_E_SoxB1_transcription	% Local Parameter:   id =  k_PROTEIN_UbiqSoxB1, name = k_PROTEIN_UbiqSoxB1
	reaction_GENE_E_SoxB1_transcription_0_k_PROTEIN_UbiqSoxB1=1.0;
	% Local Parameter:   id =  c_PROTEIN_UbiqSoxB1, name = c_PROTEIN_UbiqSoxB1
	reaction_GENE_E_SoxB1_transcription_0_c_PROTEIN_UbiqSoxB1=1.0;
	% Local Parameter:   id =  k_PROTEIN_SoxB1, name = k_PROTEIN_SoxB1
	reaction_GENE_E_SoxB1_transcription_0_k_PROTEIN_SoxB1=1.0;
	% Local Parameter:   id =  c_PROTEIN_SoxB1, name = c_PROTEIN_SoxB1
	reaction_GENE_E_SoxB1_transcription_0_c_PROTEIN_SoxB1=1.0;

	reaction_GENE_E_SoxB1_transcription_0=reaction_GENE_E_SoxB1_transcription_0_k_PROTEIN_UbiqSoxB1*x(74)/(reaction_GENE_E_SoxB1_transcription_0_c_PROTEIN_UbiqSoxB1+x(74))*reaction_GENE_E_SoxB1_transcription_0_k_PROTEIN_SoxB1*reaction_GENE_E_SoxB1_transcription_0_c_PROTEIN_SoxB1/(reaction_GENE_E_SoxB1_transcription_0_c_PROTEIN_SoxB1+x(54));

% Reaction: id = GENE_E_SoxC_transcription_0, name = GENE_E_SoxC_transcription	% Local Parameter:   id =  k_PROTEIN_SoxC, name = k_PROTEIN_SoxC
	reaction_GENE_E_SoxC_transcription_0_k_PROTEIN_SoxC=1.0;
	% Local Parameter:   id =  c_PROTEIN_SoxC, name = c_PROTEIN_SoxC
	reaction_GENE_E_SoxC_transcription_0_c_PROTEIN_SoxC=1.0;
	% Local Parameter:   id =  k_PROTEIN_HesC, name = k_PROTEIN_HesC
	reaction_GENE_E_SoxC_transcription_0_k_PROTEIN_HesC=1.0;
	% Local Parameter:   id =  c_PROTEIN_HesC, name = c_PROTEIN_HesC
	reaction_GENE_E_SoxC_transcription_0_c_PROTEIN_HesC=1.0;
	% Local Parameter:   id =  k_PROTEIN_UbiqSoxC, name = k_PROTEIN_UbiqSoxC
	reaction_GENE_E_SoxC_transcription_0_k_PROTEIN_UbiqSoxC=1.0;
	% Local Parameter:   id =  c_PROTEIN_UbiqSoxC, name = c_PROTEIN_UbiqSoxC
	reaction_GENE_E_SoxC_transcription_0_c_PROTEIN_UbiqSoxC=1.0;

	reaction_GENE_E_SoxC_transcription_0=reaction_GENE_E_SoxC_transcription_0_k_PROTEIN_UbiqSoxC*x(75)/(reaction_GENE_E_SoxC_transcription_0_c_PROTEIN_UbiqSoxC+x(75))*reaction_GENE_E_SoxC_transcription_0_k_PROTEIN_HesC*reaction_GENE_E_SoxC_transcription_0_c_PROTEIN_HesC/(reaction_GENE_E_SoxC_transcription_0_c_PROTEIN_HesC+x(33))*reaction_GENE_E_SoxC_transcription_0_k_PROTEIN_SoxC*reaction_GENE_E_SoxC_transcription_0_c_PROTEIN_SoxC/(reaction_GENE_E_SoxC_transcription_0_c_PROTEIN_SoxC+x(55));

% Reaction: id = GENE_E_SuTx_transcription_0, name = GENE_E_SuTx_transcription	% Local Parameter:   id =  k_PROTEIN_GataE, name = k_PROTEIN_GataE
	reaction_GENE_E_SuTx_transcription_0_k_PROTEIN_GataE=1.0;
	% Local Parameter:   id =  c_PROTEIN_GataE, name = c_PROTEIN_GataE
	reaction_GENE_E_SuTx_transcription_0_c_PROTEIN_GataE=1.0;
	% Local Parameter:   id =  k_PROTEIN_Gcm, name = k_PROTEIN_Gcm
	reaction_GENE_E_SuTx_transcription_0_k_PROTEIN_Gcm=1.0;
	% Local Parameter:   id =  c_PROTEIN_Gcm, name = c_PROTEIN_Gcm
	reaction_GENE_E_SuTx_transcription_0_c_PROTEIN_Gcm=1.0;

	reaction_GENE_E_SuTx_transcription_0=reaction_GENE_E_SuTx_transcription_0_k_PROTEIN_Gcm*x(28)/(reaction_GENE_E_SuTx_transcription_0_c_PROTEIN_Gcm+x(28))+reaction_GENE_E_SuTx_transcription_0_k_PROTEIN_GataE*x(26)/(reaction_GENE_E_SuTx_transcription_0_c_PROTEIN_GataE+x(26));

% Reaction: id = GENE_E_TBr_transcription_0, name = GENE_E_TBr_transcription	% Local Parameter:   id =  k_PROTEIN_Ets1, name = k_PROTEIN_Ets1
	reaction_GENE_E_TBr_transcription_0_k_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Ets1, name = c_PROTEIN_Ets1
	reaction_GENE_E_TBr_transcription_0_c_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  k_PROTEIN_TBr, name = k_PROTEIN_TBr
	reaction_GENE_E_TBr_transcription_0_k_PROTEIN_TBr=1.0;
	% Local Parameter:   id =  c_PROTEIN_TBr, name = c_PROTEIN_TBr
	reaction_GENE_E_TBr_transcription_0_c_PROTEIN_TBr=1.0;
	% Local Parameter:   id =  k_PROTEIN_HesC, name = k_PROTEIN_HesC
	reaction_GENE_E_TBr_transcription_0_k_PROTEIN_HesC=1.0;
	% Local Parameter:   id =  c_PROTEIN_HesC, name = c_PROTEIN_HesC
	reaction_GENE_E_TBr_transcription_0_c_PROTEIN_HesC=1.0;

	reaction_GENE_E_TBr_transcription_0=reaction_GENE_E_TBr_transcription_0_k_PROTEIN_Ets1*x(15)/(reaction_GENE_E_TBr_transcription_0_c_PROTEIN_Ets1+x(15))*reaction_GENE_E_TBr_transcription_0_k_PROTEIN_HesC*reaction_GENE_E_TBr_transcription_0_c_PROTEIN_HesC/(reaction_GENE_E_TBr_transcription_0_c_PROTEIN_HesC+x(33))*reaction_GENE_E_TBr_transcription_0_k_PROTEIN_TBr*reaction_GENE_E_TBr_transcription_0_c_PROTEIN_TBr/(reaction_GENE_E_TBr_transcription_0_c_PROTEIN_TBr+x(59));

% Reaction: id = GENE_E_Tel_transcription_0, name = GENE_E_Tel_transcription	% Local Parameter:   id =  k_PROTEIN_UbiqTel, name = k_PROTEIN_UbiqTel
	reaction_GENE_E_Tel_transcription_0_k_PROTEIN_UbiqTel=1.0;
	% Local Parameter:   id =  c_PROTEIN_UbiqTel, name = c_PROTEIN_UbiqTel
	reaction_GENE_E_Tel_transcription_0_c_PROTEIN_UbiqTel=1.0;
	% Local Parameter:   id =  k_PROTEIN_Tel, name = k_PROTEIN_Tel
	reaction_GENE_E_Tel_transcription_0_k_PROTEIN_Tel=1.0;
	% Local Parameter:   id =  c_PROTEIN_Tel, name = c_PROTEIN_Tel
	reaction_GENE_E_Tel_transcription_0_c_PROTEIN_Tel=1.0;
	% Local Parameter:   id =  k_PROTEIN_HesC, name = k_PROTEIN_HesC
	reaction_GENE_E_Tel_transcription_0_k_PROTEIN_HesC=1.0;
	% Local Parameter:   id =  c_PROTEIN_HesC, name = c_PROTEIN_HesC
	reaction_GENE_E_Tel_transcription_0_c_PROTEIN_HesC=1.0;

	reaction_GENE_E_Tel_transcription_0=reaction_GENE_E_Tel_transcription_0_k_PROTEIN_UbiqTel*x(76)/(reaction_GENE_E_Tel_transcription_0_c_PROTEIN_UbiqTel+x(76))*reaction_GENE_E_Tel_transcription_0_k_PROTEIN_Tel*reaction_GENE_E_Tel_transcription_0_c_PROTEIN_Tel/(reaction_GENE_E_Tel_transcription_0_c_PROTEIN_Tel+x(61))*reaction_GENE_E_Tel_transcription_0_k_PROTEIN_HesC*reaction_GENE_E_Tel_transcription_0_c_PROTEIN_HesC/(reaction_GENE_E_Tel_transcription_0_c_PROTEIN_HesC+x(33));

% Reaction: id = GENE_E_Tgif_transcription_0, name = GENE_E_Tgif_transcription	% Local Parameter:   id =  k_PROTEIN_Ets1, name = k_PROTEIN_Ets1
	reaction_GENE_E_Tgif_transcription_0_k_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Ets1, name = c_PROTEIN_Ets1
	reaction_GENE_E_Tgif_transcription_0_c_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  k_PROTEIN_Hex, name = k_PROTEIN_Hex
	reaction_GENE_E_Tgif_transcription_0_k_PROTEIN_Hex=1.0;
	% Local Parameter:   id =  c_PROTEIN_Hex, name = c_PROTEIN_Hex
	reaction_GENE_E_Tgif_transcription_0_c_PROTEIN_Hex=1.0;
	% Local Parameter:   id =  k_PROTEIN_Erg, name = k_PROTEIN_Erg
	reaction_GENE_E_Tgif_transcription_0_k_PROTEIN_Erg=1.0;
	% Local Parameter:   id =  c_PROTEIN_Erg, name = c_PROTEIN_Erg
	reaction_GENE_E_Tgif_transcription_0_c_PROTEIN_Erg=1.0;
	% Local Parameter:   id =  k_PROTEIN_Tgif, name = k_PROTEIN_Tgif
	reaction_GENE_E_Tgif_transcription_0_k_PROTEIN_Tgif=1.0;
	% Local Parameter:   id =  c_PROTEIN_Tgif, name = c_PROTEIN_Tgif
	reaction_GENE_E_Tgif_transcription_0_c_PROTEIN_Tgif=1.0;

	reaction_GENE_E_Tgif_transcription_0=reaction_GENE_E_Tgif_transcription_0_k_PROTEIN_Tgif*x(62)/(reaction_GENE_E_Tgif_transcription_0_c_PROTEIN_Tgif+x(62))+reaction_GENE_E_Tgif_transcription_0_k_PROTEIN_Ets1*x(15)/(reaction_GENE_E_Tgif_transcription_0_c_PROTEIN_Ets1+x(15))+reaction_GENE_E_Tgif_transcription_0_k_PROTEIN_Erg*x(14)/(reaction_GENE_E_Tgif_transcription_0_c_PROTEIN_Erg+x(14))+reaction_GENE_E_Tgif_transcription_0_k_PROTEIN_Hex*x(34)/(reaction_GENE_E_Tgif_transcription_0_c_PROTEIN_Hex+x(34));

% Reaction: id = GENE_E_VEGFR_transcription_0, name = GENE_E_VEGFR_transcription	% Local Parameter:   id =  k_PROTEIN_Hex, name = k_PROTEIN_Hex
	reaction_GENE_E_VEGFR_transcription_0_k_PROTEIN_Hex=1.0;
	% Local Parameter:   id =  c_PROTEIN_Hex, name = c_PROTEIN_Hex
	reaction_GENE_E_VEGFR_transcription_0_c_PROTEIN_Hex=1.0;
	% Local Parameter:   id =  k_PROTEIN_Ets1, name = k_PROTEIN_Ets1
	reaction_GENE_E_VEGFR_transcription_0_k_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Ets1, name = c_PROTEIN_Ets1
	reaction_GENE_E_VEGFR_transcription_0_c_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  k_PROTEIN_Dri, name = k_PROTEIN_Dri
	reaction_GENE_E_VEGFR_transcription_0_k_PROTEIN_Dri=1.0;
	% Local Parameter:   id =  c_PROTEIN_Dri, name = c_PROTEIN_Dri
	reaction_GENE_E_VEGFR_transcription_0_c_PROTEIN_Dri=1.0;
	% Local Parameter:   id =  k_PROTEIN_Alx1, name = k_PROTEIN_Alx1
	reaction_GENE_E_VEGFR_transcription_0_k_PROTEIN_Alx1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Alx1, name = c_PROTEIN_Alx1
	reaction_GENE_E_VEGFR_transcription_0_c_PROTEIN_Alx1=1.0;

	reaction_GENE_E_VEGFR_transcription_0=reaction_GENE_E_VEGFR_transcription_0_k_PROTEIN_Alx1*x(1)/(reaction_GENE_E_VEGFR_transcription_0_c_PROTEIN_Alx1+x(1))+reaction_GENE_E_VEGFR_transcription_0_k_PROTEIN_Dri*x(11)/(reaction_GENE_E_VEGFR_transcription_0_c_PROTEIN_Dri+x(11))+reaction_GENE_E_VEGFR_transcription_0_k_PROTEIN_Ets1*x(15)/(reaction_GENE_E_VEGFR_transcription_0_c_PROTEIN_Ets1+x(15))+reaction_GENE_E_VEGFR_transcription_0_k_PROTEIN_Hex*x(34)/(reaction_GENE_E_VEGFR_transcription_0_c_PROTEIN_Hex+x(34));

% Reaction: id = GENE_E_Wnt8_transcription_0, name = GENE_E_Wnt8_transcription	% Local Parameter:   id =  k_PROTEIN_GroTCF, name = k_PROTEIN_GroTCF
	reaction_GENE_E_Wnt8_transcription_0_k_PROTEIN_GroTCF=1.0;
	% Local Parameter:   id =  c_PROTEIN_GroTCF, name = c_PROTEIN_GroTCF
	reaction_GENE_E_Wnt8_transcription_0_c_PROTEIN_GroTCF=1.0;
	% Local Parameter:   id =  k_PROTEIN_Blimp1, name = k_PROTEIN_Blimp1
	reaction_GENE_E_Wnt8_transcription_0_k_PROTEIN_Blimp1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Blimp1, name = c_PROTEIN_Blimp1
	reaction_GENE_E_Wnt8_transcription_0_c_PROTEIN_Blimp1=1.0;
	% Local Parameter:   id =  k_PROTEIN_nBTCF, name = k_PROTEIN_nBTCF
	reaction_GENE_E_Wnt8_transcription_0_k_PROTEIN_nBTCF=1.0;
	% Local Parameter:   id =  c_PROTEIN_nBTCF, name = c_PROTEIN_nBTCF
	reaction_GENE_E_Wnt8_transcription_0_c_PROTEIN_nBTCF=1.0;

	reaction_GENE_E_Wnt8_transcription_0=(reaction_GENE_E_Wnt8_transcription_0_k_PROTEIN_nBTCF*x(84)/(reaction_GENE_E_Wnt8_transcription_0_c_PROTEIN_nBTCF+x(84))+reaction_GENE_E_Wnt8_transcription_0_k_PROTEIN_Blimp1*x(3)/(reaction_GENE_E_Wnt8_transcription_0_c_PROTEIN_Blimp1+x(3)))*reaction_GENE_E_Wnt8_transcription_0_k_PROTEIN_GroTCF*reaction_GENE_E_Wnt8_transcription_0_c_PROTEIN_GroTCF/(reaction_GENE_E_Wnt8_transcription_0_c_PROTEIN_GroTCF+x(31));

% Reaction: id = GENE_E_z13_transcription_0, name = GENE_E_z13_transcription	% Local Parameter:   id =  k_PROTEIN_GroTCF, name = k_PROTEIN_GroTCF
	reaction_GENE_E_z13_transcription_0_k_PROTEIN_GroTCF=1.0;
	% Local Parameter:   id =  c_PROTEIN_GroTCF, name = c_PROTEIN_GroTCF
	reaction_GENE_E_z13_transcription_0_c_PROTEIN_GroTCF=1.0;
	% Local Parameter:   id =  k_PROTEIN_nBTCF, name = k_PROTEIN_nBTCF
	reaction_GENE_E_z13_transcription_0_k_PROTEIN_nBTCF=1.0;
	% Local Parameter:   id =  c_PROTEIN_nBTCF, name = c_PROTEIN_nBTCF
	reaction_GENE_E_z13_transcription_0_c_PROTEIN_nBTCF=1.0;
	% Local Parameter:   id =  k_PROTEIN_Hnf6, name = k_PROTEIN_Hnf6
	reaction_GENE_E_z13_transcription_0_k_PROTEIN_Hnf6=1.0;
	% Local Parameter:   id =  c_PROTEIN_Hnf6, name = c_PROTEIN_Hnf6
	reaction_GENE_E_z13_transcription_0_c_PROTEIN_Hnf6=1.0;

	reaction_GENE_E_z13_transcription_0=reaction_GENE_E_z13_transcription_0_k_PROTEIN_nBTCF*x(84)/(reaction_GENE_E_z13_transcription_0_c_PROTEIN_nBTCF+x(84))*reaction_GENE_E_z13_transcription_0_k_PROTEIN_GroTCF*reaction_GENE_E_z13_transcription_0_c_PROTEIN_GroTCF/(reaction_GENE_E_z13_transcription_0_c_PROTEIN_GroTCF+x(31))*reaction_GENE_E_z13_transcription_0_k_PROTEIN_Hnf6*reaction_GENE_E_z13_transcription_0_c_PROTEIN_Hnf6/(reaction_GENE_E_z13_transcription_0_c_PROTEIN_Hnf6+x(35));

% Reaction: id = GENE_M_Alx1_transcription_0, name = GENE_M_Alx1_transcription	% Local Parameter:   id =  k_PROTEIN_UbiqAlx1, name = k_PROTEIN_UbiqAlx1
	reaction_GENE_M_Alx1_transcription_0_k_PROTEIN_UbiqAlx1=1.0;
	% Local Parameter:   id =  c_PROTEIN_UbiqAlx1, name = c_PROTEIN_UbiqAlx1
	reaction_GENE_M_Alx1_transcription_0_c_PROTEIN_UbiqAlx1=1.0;
	% Local Parameter:   id =  k_PROTEIN_Ets1, name = k_PROTEIN_Ets1
	reaction_GENE_M_Alx1_transcription_0_k_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Ets1, name = c_PROTEIN_Ets1
	reaction_GENE_M_Alx1_transcription_0_c_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  k_PROTEIN_Gcm, name = k_PROTEIN_Gcm
	reaction_GENE_M_Alx1_transcription_0_k_PROTEIN_Gcm=1.0;
	% Local Parameter:   id =  c_PROTEIN_Gcm, name = c_PROTEIN_Gcm
	reaction_GENE_M_Alx1_transcription_0_c_PROTEIN_Gcm=1.0;
	% Local Parameter:   id =  k_PROTEIN_HesC, name = k_PROTEIN_HesC
	reaction_GENE_M_Alx1_transcription_0_k_PROTEIN_HesC=1.0;
	% Local Parameter:   id =  c_PROTEIN_HesC, name = c_PROTEIN_HesC
	reaction_GENE_M_Alx1_transcription_0_c_PROTEIN_HesC=1.0;
	% Local Parameter:   id =  k_PROTEIN_Tgif, name = k_PROTEIN_Tgif
	reaction_GENE_M_Alx1_transcription_0_k_PROTEIN_Tgif=1.0;
	% Local Parameter:   id =  c_PROTEIN_Tgif, name = c_PROTEIN_Tgif
	reaction_GENE_M_Alx1_transcription_0_c_PROTEIN_Tgif=1.0;

	reaction_GENE_M_Alx1_transcription_0=(reaction_GENE_M_Alx1_transcription_0_k_PROTEIN_Ets1*x(100)/(reaction_GENE_M_Alx1_transcription_0_c_PROTEIN_Ets1+x(100))+reaction_GENE_M_Alx1_transcription_0_k_PROTEIN_UbiqAlx1*x(152)/(reaction_GENE_M_Alx1_transcription_0_c_PROTEIN_UbiqAlx1+x(152))+reaction_GENE_M_Alx1_transcription_0_k_PROTEIN_Tgif*x(147)/(reaction_GENE_M_Alx1_transcription_0_c_PROTEIN_Tgif+x(147)))*reaction_GENE_M_Alx1_transcription_0_k_PROTEIN_Gcm*reaction_GENE_M_Alx1_transcription_0_c_PROTEIN_Gcm/(reaction_GENE_M_Alx1_transcription_0_c_PROTEIN_Gcm+x(113))*reaction_GENE_M_Alx1_transcription_0_k_PROTEIN_HesC*reaction_GENE_M_Alx1_transcription_0_c_PROTEIN_HesC/(reaction_GENE_M_Alx1_transcription_0_c_PROTEIN_HesC+x(118));

% Reaction: id = GENE_M_Apobec_transcription_0, name = GENE_M_Apobec_transcription	% Local Parameter:   id =  k_PROTEIN_Bra, name = k_PROTEIN_Bra
	reaction_GENE_M_Apobec_transcription_0_k_PROTEIN_Bra=1.0;
	% Local Parameter:   id =  c_PROTEIN_Bra, name = c_PROTEIN_Bra
	reaction_GENE_M_Apobec_transcription_0_c_PROTEIN_Bra=1.0;
	% Local Parameter:   id =  k_PROTEIN_Hox, name = k_PROTEIN_Hox
	reaction_GENE_M_Apobec_transcription_0_k_PROTEIN_Hox=1.0;
	% Local Parameter:   id =  c_PROTEIN_Hox, name = c_PROTEIN_Hox
	reaction_GENE_M_Apobec_transcription_0_c_PROTEIN_Hox=1.0;

	reaction_GENE_M_Apobec_transcription_0=(reaction_GENE_M_Apobec_transcription_0_k_PROTEIN_Bra*x(90)/(reaction_GENE_M_Apobec_transcription_0_c_PROTEIN_Bra+x(90))+reaction_GENE_M_Apobec_transcription_0_k_PROTEIN_Bra*x(4)/(reaction_GENE_M_Apobec_transcription_0_c_PROTEIN_Bra+x(4)))*reaction_GENE_M_Apobec_transcription_0_k_PROTEIN_Hox*reaction_GENE_M_Apobec_transcription_0_c_PROTEIN_Hox/(reaction_GENE_M_Apobec_transcription_0_c_PROTEIN_Hox+x(121));

% Reaction: id = GENE_M_Blimp1_transcription_0, name = GENE_M_Blimp1_transcription	% Local Parameter:   id =  k_PROTEIN_Blimp1, name = k_PROTEIN_Blimp1
	reaction_GENE_M_Blimp1_transcription_0_k_PROTEIN_Blimp1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Blimp1, name = c_PROTEIN_Blimp1
	reaction_GENE_M_Blimp1_transcription_0_c_PROTEIN_Blimp1=1.0;
	% Local Parameter:   id =  k_PROTEIN_nBTCF, name = k_PROTEIN_nBTCF
	reaction_GENE_M_Blimp1_transcription_0_k_PROTEIN_nBTCF=1.0;
	% Local Parameter:   id =  c_PROTEIN_nBTCF, name = c_PROTEIN_nBTCF
	reaction_GENE_M_Blimp1_transcription_0_c_PROTEIN_nBTCF=1.0;
	% Local Parameter:   id =  k_PROTEIN_Brn, name = k_PROTEIN_Brn
	reaction_GENE_M_Blimp1_transcription_0_k_PROTEIN_Brn=1.0;
	% Local Parameter:   id =  c_PROTEIN_Brn, name = c_PROTEIN_Brn
	reaction_GENE_M_Blimp1_transcription_0_c_PROTEIN_Brn=1.0;
	% Local Parameter:   id =  k_PROTEIN_GroTCF, name = k_PROTEIN_GroTCF
	reaction_GENE_M_Blimp1_transcription_0_k_PROTEIN_GroTCF=1.0;
	% Local Parameter:   id =  c_PROTEIN_GroTCF, name = c_PROTEIN_GroTCF
	reaction_GENE_M_Blimp1_transcription_0_c_PROTEIN_GroTCF=1.0;
	% Local Parameter:   id =  k_PROTEIN_Eve, name = k_PROTEIN_Eve
	reaction_GENE_M_Blimp1_transcription_0_k_PROTEIN_Eve=1.0;
	% Local Parameter:   id =  c_PROTEIN_Eve, name = c_PROTEIN_Eve
	reaction_GENE_M_Blimp1_transcription_0_c_PROTEIN_Eve=1.0;
	% Local Parameter:   id =  k_PROTEIN_Otx, name = k_PROTEIN_Otx
	reaction_GENE_M_Blimp1_transcription_0_k_PROTEIN_Otx=1.0;
	% Local Parameter:   id =  c_PROTEIN_Otx, name = c_PROTEIN_Otx
	reaction_GENE_M_Blimp1_transcription_0_c_PROTEIN_Otx=1.0;
	% Local Parameter:   id =  k_PROTEIN_GataE, name = k_PROTEIN_GataE
	reaction_GENE_M_Blimp1_transcription_0_k_PROTEIN_GataE=1.0;
	% Local Parameter:   id =  c_PROTEIN_GataE, name = c_PROTEIN_GataE
	reaction_GENE_M_Blimp1_transcription_0_c_PROTEIN_GataE=1.0;

	reaction_GENE_M_Blimp1_transcription_0=(reaction_GENE_M_Blimp1_transcription_0_k_PROTEIN_Otx*x(132)/(reaction_GENE_M_Blimp1_transcription_0_c_PROTEIN_Otx+x(132))+reaction_GENE_M_Blimp1_transcription_0_k_PROTEIN_Brn*x(91)/(reaction_GENE_M_Blimp1_transcription_0_c_PROTEIN_Brn+x(91))+reaction_GENE_M_Blimp1_transcription_0_k_PROTEIN_GataE*x(111)/(reaction_GENE_M_Blimp1_transcription_0_c_PROTEIN_GataE+x(111))+reaction_GENE_M_Blimp1_transcription_0_k_PROTEIN_nBTCF*x(168)/(reaction_GENE_M_Blimp1_transcription_0_c_PROTEIN_nBTCF+x(168))+reaction_GENE_M_Blimp1_transcription_0_k_PROTEIN_Eve*x(101)/(reaction_GENE_M_Blimp1_transcription_0_c_PROTEIN_Eve+x(101)))*reaction_GENE_M_Blimp1_transcription_0_k_PROTEIN_Blimp1*reaction_GENE_M_Blimp1_transcription_0_c_PROTEIN_Blimp1/(reaction_GENE_M_Blimp1_transcription_0_c_PROTEIN_Blimp1+x(89))*reaction_GENE_M_Blimp1_transcription_0_k_PROTEIN_GroTCF*reaction_GENE_M_Blimp1_transcription_0_c_PROTEIN_GroTCF/(reaction_GENE_M_Blimp1_transcription_0_c_PROTEIN_GroTCF+x(116));

% Reaction: id = GENE_M_Bra_transcription_0, name = GENE_M_Bra_transcription	% Local Parameter:   id =  k_PROTEIN_GroTCF, name = k_PROTEIN_GroTCF
	reaction_GENE_M_Bra_transcription_0_k_PROTEIN_GroTCF=1.0;
	% Local Parameter:   id =  c_PROTEIN_GroTCF, name = c_PROTEIN_GroTCF
	reaction_GENE_M_Bra_transcription_0_c_PROTEIN_GroTCF=1.0;
	% Local Parameter:   id =  k_PROTEIN_Otx, name = k_PROTEIN_Otx
	reaction_GENE_M_Bra_transcription_0_k_PROTEIN_Otx=1.0;
	% Local Parameter:   id =  c_PROTEIN_Otx, name = c_PROTEIN_Otx
	reaction_GENE_M_Bra_transcription_0_c_PROTEIN_Otx=1.0;
	% Local Parameter:   id =  k_PROTEIN_GataE, name = k_PROTEIN_GataE
	reaction_GENE_M_Bra_transcription_0_k_PROTEIN_GataE=1.0;
	% Local Parameter:   id =  c_PROTEIN_GataE, name = c_PROTEIN_GataE
	reaction_GENE_M_Bra_transcription_0_c_PROTEIN_GataE=1.0;
	% Local Parameter:   id =  k_PROTEIN_nBTCF, name = k_PROTEIN_nBTCF
	reaction_GENE_M_Bra_transcription_0_k_PROTEIN_nBTCF=1.0;
	% Local Parameter:   id =  c_PROTEIN_nBTCF, name = c_PROTEIN_nBTCF
	reaction_GENE_M_Bra_transcription_0_c_PROTEIN_nBTCF=1.0;

	reaction_GENE_M_Bra_transcription_0=(reaction_GENE_M_Bra_transcription_0_k_PROTEIN_GataE*x(111)/(reaction_GENE_M_Bra_transcription_0_c_PROTEIN_GataE+x(111))+reaction_GENE_M_Bra_transcription_0_k_PROTEIN_nBTCF*x(168)/(reaction_GENE_M_Bra_transcription_0_c_PROTEIN_nBTCF+x(168))+reaction_GENE_M_Bra_transcription_0_k_PROTEIN_Otx*x(132)/(reaction_GENE_M_Bra_transcription_0_c_PROTEIN_Otx+x(132)))*reaction_GENE_M_Bra_transcription_0_k_PROTEIN_GroTCF*reaction_GENE_M_Bra_transcription_0_c_PROTEIN_GroTCF/(reaction_GENE_M_Bra_transcription_0_c_PROTEIN_GroTCF+x(116));

% Reaction: id = GENE_M_Brn_transcription_0, name = GENE_M_Brn_transcription	% Local Parameter:   id =  k_PROTEIN_GataE, name = k_PROTEIN_GataE
	reaction_GENE_M_Brn_transcription_0_k_PROTEIN_GataE=1.0;
	% Local Parameter:   id =  c_PROTEIN_GataE, name = c_PROTEIN_GataE
	reaction_GENE_M_Brn_transcription_0_c_PROTEIN_GataE=1.0;

	reaction_GENE_M_Brn_transcription_0=reaction_GENE_M_Brn_transcription_0_k_PROTEIN_GataE*x(111)/(reaction_GENE_M_Brn_transcription_0_c_PROTEIN_GataE+x(111));

% Reaction: id = GENE_M_CAPK_transcription_0, name = GENE_M_CAPK_transcription	% Local Parameter:   id =  k_PROTEIN_Bra, name = k_PROTEIN_Bra
	reaction_GENE_M_CAPK_transcription_0_k_PROTEIN_Bra=1.0;
	% Local Parameter:   id =  c_PROTEIN_Bra, name = c_PROTEIN_Bra
	reaction_GENE_M_CAPK_transcription_0_c_PROTEIN_Bra=1.0;

	reaction_GENE_M_CAPK_transcription_0=reaction_GENE_M_CAPK_transcription_0_k_PROTEIN_Bra*x(4)/(reaction_GENE_M_CAPK_transcription_0_c_PROTEIN_Bra+x(4));

% Reaction: id = GENE_M_CyP_transcription_0, name = GENE_M_CyP_transcription	% Local Parameter:   id =  k_PROTEIN_Ets1, name = k_PROTEIN_Ets1
	reaction_GENE_M_CyP_transcription_0_k_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Ets1, name = c_PROTEIN_Ets1
	reaction_GENE_M_CyP_transcription_0_c_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  k_PROTEIN_SoxB1, name = k_PROTEIN_SoxB1
	reaction_GENE_M_CyP_transcription_0_k_PROTEIN_SoxB1=1.0;
	% Local Parameter:   id =  c_PROTEIN_SoxB1, name = c_PROTEIN_SoxB1
	reaction_GENE_M_CyP_transcription_0_c_PROTEIN_SoxB1=1.0;
	% Local Parameter:   id =  k_PROTEIN_Dri, name = k_PROTEIN_Dri
	reaction_GENE_M_CyP_transcription_0_k_PROTEIN_Dri=1.0;
	% Local Parameter:   id =  c_PROTEIN_Dri, name = c_PROTEIN_Dri
	reaction_GENE_M_CyP_transcription_0_c_PROTEIN_Dri=1.0;

	reaction_GENE_M_CyP_transcription_0=(reaction_GENE_M_CyP_transcription_0_k_PROTEIN_Dri*x(97)/(reaction_GENE_M_CyP_transcription_0_c_PROTEIN_Dri+x(97))+reaction_GENE_M_CyP_transcription_0_k_PROTEIN_Ets1*x(100)/(reaction_GENE_M_CyP_transcription_0_c_PROTEIN_Ets1+x(100)))*reaction_GENE_M_CyP_transcription_0_k_PROTEIN_SoxB1*reaction_GENE_M_CyP_transcription_0_c_PROTEIN_SoxB1/(reaction_GENE_M_CyP_transcription_0_c_PROTEIN_SoxB1+x(139));

% Reaction: id = GENE_M_Delta_transcription_0, name = GENE_M_Delta_transcription	% Local Parameter:   id =  k_PROTEIN_Ets1, name = k_PROTEIN_Ets1
	reaction_GENE_M_Delta_transcription_0_k_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Ets1, name = c_PROTEIN_Ets1
	reaction_GENE_M_Delta_transcription_0_c_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  k_PROTEIN_HesC, name = k_PROTEIN_HesC
	reaction_GENE_M_Delta_transcription_0_k_PROTEIN_HesC=1.0;
	% Local Parameter:   id =  c_PROTEIN_HesC, name = c_PROTEIN_HesC
	reaction_GENE_M_Delta_transcription_0_c_PROTEIN_HesC=1.0;
	% Local Parameter:   id =  k_PROTEIN_UbiqDelta, name = k_PROTEIN_UbiqDelta
	reaction_GENE_M_Delta_transcription_0_k_PROTEIN_UbiqDelta=1.0;
	% Local Parameter:   id =  c_PROTEIN_UbiqDelta, name = c_PROTEIN_UbiqDelta
	reaction_GENE_M_Delta_transcription_0_c_PROTEIN_UbiqDelta=1.0;
	% Local Parameter:   id =  k_PROTEIN_UMADelta, name = k_PROTEIN_UMADelta
	reaction_GENE_M_Delta_transcription_0_k_PROTEIN_UMADelta=1.0;
	% Local Parameter:   id =  c_PROTEIN_UMADelta, name = c_PROTEIN_UMADelta
	reaction_GENE_M_Delta_transcription_0_c_PROTEIN_UMADelta=1.0;

	reaction_GENE_M_Delta_transcription_0=(reaction_GENE_M_Delta_transcription_0_k_PROTEIN_UbiqDelta*x(153)/(reaction_GENE_M_Delta_transcription_0_c_PROTEIN_UbiqDelta+x(153))+reaction_GENE_M_Delta_transcription_0_k_PROTEIN_UMADelta*x(148)/(reaction_GENE_M_Delta_transcription_0_c_PROTEIN_UMADelta+x(148))+reaction_GENE_M_Delta_transcription_0_k_PROTEIN_Ets1*x(100)/(reaction_GENE_M_Delta_transcription_0_c_PROTEIN_Ets1+x(100)))*reaction_GENE_M_Delta_transcription_0_k_PROTEIN_HesC*reaction_GENE_M_Delta_transcription_0_c_PROTEIN_HesC/(reaction_GENE_M_Delta_transcription_0_c_PROTEIN_HesC+x(118));

% Reaction: id = GENE_M_Dpt_transcription_0, name = GENE_M_Dpt_transcription	% Local Parameter:   id =  k_PROTEIN_Bra, name = k_PROTEIN_Bra
	reaction_GENE_M_Dpt_transcription_0_k_PROTEIN_Bra=1.0;
	% Local Parameter:   id =  c_PROTEIN_Bra, name = c_PROTEIN_Bra
	reaction_GENE_M_Dpt_transcription_0_c_PROTEIN_Bra=1.0;
	% Local Parameter:   id =  k_PROTEIN_Gcm, name = k_PROTEIN_Gcm
	reaction_GENE_M_Dpt_transcription_0_k_PROTEIN_Gcm=1.0;
	% Local Parameter:   id =  c_PROTEIN_Gcm, name = c_PROTEIN_Gcm
	reaction_GENE_M_Dpt_transcription_0_c_PROTEIN_Gcm=1.0;

	reaction_GENE_M_Dpt_transcription_0=reaction_GENE_M_Dpt_transcription_0_k_PROTEIN_Bra*x(4)/(reaction_GENE_M_Dpt_transcription_0_c_PROTEIN_Bra+x(4))+reaction_GENE_M_Dpt_transcription_0_k_PROTEIN_Gcm*x(113)/(reaction_GENE_M_Dpt_transcription_0_c_PROTEIN_Gcm+x(113));

% Reaction: id = GENE_M_Dri_transcription_0, name = GENE_M_Dri_transcription	% Local Parameter:   id =  k_PROTEIN_Ets1, name = k_PROTEIN_Ets1
	reaction_GENE_M_Dri_transcription_0_k_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Ets1, name = c_PROTEIN_Ets1
	reaction_GENE_M_Dri_transcription_0_c_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  k_PROTEIN_Alx1, name = k_PROTEIN_Alx1
	reaction_GENE_M_Dri_transcription_0_k_PROTEIN_Alx1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Alx1, name = c_PROTEIN_Alx1
	reaction_GENE_M_Dri_transcription_0_c_PROTEIN_Alx1=1.0;

	reaction_GENE_M_Dri_transcription_0=reaction_GENE_M_Dri_transcription_0_k_PROTEIN_Alx1*x(87)/(reaction_GENE_M_Dri_transcription_0_c_PROTEIN_Alx1+x(87))+reaction_GENE_M_Dri_transcription_0_k_PROTEIN_Ets1*x(100)/(reaction_GENE_M_Dri_transcription_0_c_PROTEIN_Ets1+x(100));

% Reaction: id = GENE_M_Endo16_transcription_0, name = GENE_M_Endo16_transcription	% Local Parameter:   id =  k_PROTEIN_Otx, name = k_PROTEIN_Otx
	reaction_GENE_M_Endo16_transcription_0_k_PROTEIN_Otx=1.0;
	% Local Parameter:   id =  c_PROTEIN_Otx, name = c_PROTEIN_Otx
	reaction_GENE_M_Endo16_transcription_0_c_PROTEIN_Otx=1.0;
	% Local Parameter:   id =  k_PROTEIN_Brn, name = k_PROTEIN_Brn
	reaction_GENE_M_Endo16_transcription_0_k_PROTEIN_Brn=1.0;
	% Local Parameter:   id =  c_PROTEIN_Brn, name = c_PROTEIN_Brn
	reaction_GENE_M_Endo16_transcription_0_c_PROTEIN_Brn=1.0;

	reaction_GENE_M_Endo16_transcription_0=reaction_GENE_M_Endo16_transcription_0_k_PROTEIN_Otx*x(132)/(reaction_GENE_M_Endo16_transcription_0_c_PROTEIN_Otx+x(132))+reaction_GENE_M_Endo16_transcription_0_k_PROTEIN_Brn*x(91)/(reaction_GENE_M_Endo16_transcription_0_c_PROTEIN_Brn+x(91));

% Reaction: id = GENE_M_Erg_transcription_0, name = GENE_M_Erg_transcription	% Local Parameter:   id =  k_PROTEIN_Ets1, name = k_PROTEIN_Ets1
	reaction_GENE_M_Erg_transcription_0_k_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Ets1, name = c_PROTEIN_Ets1
	reaction_GENE_M_Erg_transcription_0_c_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  k_PROTEIN_Hex, name = k_PROTEIN_Hex
	reaction_GENE_M_Erg_transcription_0_k_PROTEIN_Hex=1.0;
	% Local Parameter:   id =  c_PROTEIN_Hex, name = c_PROTEIN_Hex
	reaction_GENE_M_Erg_transcription_0_c_PROTEIN_Hex=1.0;
	% Local Parameter:   id =  k_PROTEIN_TBr, name = k_PROTEIN_TBr
	reaction_GENE_M_Erg_transcription_0_k_PROTEIN_TBr=1.0;
	% Local Parameter:   id =  c_PROTEIN_TBr, name = c_PROTEIN_TBr
	reaction_GENE_M_Erg_transcription_0_c_PROTEIN_TBr=1.0;

	reaction_GENE_M_Erg_transcription_0=reaction_GENE_M_Erg_transcription_0_k_PROTEIN_TBr*x(144)/(reaction_GENE_M_Erg_transcription_0_c_PROTEIN_TBr+x(144))+reaction_GENE_M_Erg_transcription_0_k_PROTEIN_Ets1*x(100)/(reaction_GENE_M_Erg_transcription_0_c_PROTEIN_Ets1+x(100))+reaction_GENE_M_Erg_transcription_0_k_PROTEIN_Hex*x(119)/(reaction_GENE_M_Erg_transcription_0_c_PROTEIN_Hex+x(119));

% Reaction: id = GENE_M_Ets1_transcription_0, name = GENE_M_Ets1_transcription	% Local Parameter:   id =  k_PROTEIN_UbiqEts1, name = k_PROTEIN_UbiqEts1
	reaction_GENE_M_Ets1_transcription_0_k_PROTEIN_UbiqEts1=1.0;
	% Local Parameter:   id =  c_PROTEIN_UbiqEts1, name = c_PROTEIN_UbiqEts1
	reaction_GENE_M_Ets1_transcription_0_c_PROTEIN_UbiqEts1=1.0;
	% Local Parameter:   id =  k_PROTEIN_HesC, name = k_PROTEIN_HesC
	reaction_GENE_M_Ets1_transcription_0_k_PROTEIN_HesC=1.0;
	% Local Parameter:   id =  c_PROTEIN_HesC, name = c_PROTEIN_HesC
	reaction_GENE_M_Ets1_transcription_0_c_PROTEIN_HesC=1.0;

	reaction_GENE_M_Ets1_transcription_0=reaction_GENE_M_Ets1_transcription_0_k_PROTEIN_UbiqEts1*x(155)/(reaction_GENE_M_Ets1_transcription_0_c_PROTEIN_UbiqEts1+x(155))*reaction_GENE_M_Ets1_transcription_0_k_PROTEIN_HesC*reaction_GENE_M_Ets1_transcription_0_c_PROTEIN_HesC/(reaction_GENE_M_Ets1_transcription_0_c_PROTEIN_HesC+x(118));

% Reaction: id = GENE_M_Eve_transcription_0, name = GENE_M_Eve_transcription	% Local Parameter:   id =  k_PROTEIN_GroTCF, name = k_PROTEIN_GroTCF
	reaction_GENE_M_Eve_transcription_0_k_PROTEIN_GroTCF=1.0;
	% Local Parameter:   id =  c_PROTEIN_GroTCF, name = c_PROTEIN_GroTCF
	reaction_GENE_M_Eve_transcription_0_c_PROTEIN_GroTCF=1.0;
	% Local Parameter:   id =  k_PROTEIN_Blimp1, name = k_PROTEIN_Blimp1
	reaction_GENE_M_Eve_transcription_0_k_PROTEIN_Blimp1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Blimp1, name = c_PROTEIN_Blimp1
	reaction_GENE_M_Eve_transcription_0_c_PROTEIN_Blimp1=1.0;
	% Local Parameter:   id =  k_PROTEIN_nBTCF, name = k_PROTEIN_nBTCF
	reaction_GENE_M_Eve_transcription_0_k_PROTEIN_nBTCF=1.0;
	% Local Parameter:   id =  c_PROTEIN_nBTCF, name = c_PROTEIN_nBTCF
	reaction_GENE_M_Eve_transcription_0_c_PROTEIN_nBTCF=1.0;
	% Local Parameter:   id =  k_PROTEIN_Hox, name = k_PROTEIN_Hox
	reaction_GENE_M_Eve_transcription_0_k_PROTEIN_Hox=1.0;
	% Local Parameter:   id =  c_PROTEIN_Hox, name = c_PROTEIN_Hox
	reaction_GENE_M_Eve_transcription_0_c_PROTEIN_Hox=1.0;

	reaction_GENE_M_Eve_transcription_0=(reaction_GENE_M_Eve_transcription_0_k_PROTEIN_Blimp1*x(89)/(reaction_GENE_M_Eve_transcription_0_c_PROTEIN_Blimp1+x(89))+reaction_GENE_M_Eve_transcription_0_k_PROTEIN_nBTCF*x(168)/(reaction_GENE_M_Eve_transcription_0_c_PROTEIN_nBTCF+x(168)))*reaction_GENE_M_Eve_transcription_0_k_PROTEIN_GroTCF*reaction_GENE_M_Eve_transcription_0_c_PROTEIN_GroTCF/(reaction_GENE_M_Eve_transcription_0_c_PROTEIN_GroTCF+x(116))*reaction_GENE_M_Eve_transcription_0_k_PROTEIN_Hox*reaction_GENE_M_Eve_transcription_0_c_PROTEIN_Hox/(reaction_GENE_M_Eve_transcription_0_c_PROTEIN_Hox+x(121));

% Reaction: id = GENE_M_Ficolin_transcription_0, name = GENE_M_Ficolin_transcription	% Local Parameter:   id =  k_PROTEIN_Ets1, name = k_PROTEIN_Ets1
	reaction_GENE_M_Ficolin_transcription_0_k_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Ets1, name = c_PROTEIN_Ets1
	reaction_GENE_M_Ficolin_transcription_0_c_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  k_PROTEIN_Hex, name = k_PROTEIN_Hex
	reaction_GENE_M_Ficolin_transcription_0_k_PROTEIN_Hex=1.0;
	% Local Parameter:   id =  c_PROTEIN_Hex, name = c_PROTEIN_Hex
	reaction_GENE_M_Ficolin_transcription_0_c_PROTEIN_Hex=1.0;
	% Local Parameter:   id =  k_PROTEIN_Erg, name = k_PROTEIN_Erg
	reaction_GENE_M_Ficolin_transcription_0_k_PROTEIN_Erg=1.0;
	% Local Parameter:   id =  c_PROTEIN_Erg, name = c_PROTEIN_Erg
	reaction_GENE_M_Ficolin_transcription_0_c_PROTEIN_Erg=1.0;
	% Local Parameter:   id =  k_PROTEIN_Hnf6, name = k_PROTEIN_Hnf6
	reaction_GENE_M_Ficolin_transcription_0_k_PROTEIN_Hnf6=1.0;
	% Local Parameter:   id =  c_PROTEIN_Hnf6, name = c_PROTEIN_Hnf6
	reaction_GENE_M_Ficolin_transcription_0_c_PROTEIN_Hnf6=1.0;

	reaction_GENE_M_Ficolin_transcription_0=reaction_GENE_M_Ficolin_transcription_0_k_PROTEIN_Ets1*x(100)/(reaction_GENE_M_Ficolin_transcription_0_c_PROTEIN_Ets1+x(100))+reaction_GENE_M_Ficolin_transcription_0_k_PROTEIN_Hnf6*x(120)/(reaction_GENE_M_Ficolin_transcription_0_c_PROTEIN_Hnf6+x(120))+reaction_GENE_M_Ficolin_transcription_0_k_PROTEIN_Hex*x(119)/(reaction_GENE_M_Ficolin_transcription_0_c_PROTEIN_Hex+x(119))+reaction_GENE_M_Ficolin_transcription_0_k_PROTEIN_Erg*x(99)/(reaction_GENE_M_Ficolin_transcription_0_c_PROTEIN_Erg+x(99));

% Reaction: id = GENE_M_FoxA_transcription_0, name = GENE_M_FoxA_transcription	% Local Parameter:   id =  k_PROTEIN_GroTFC, name = k_PROTEIN_GroTFC
	reaction_GENE_M_FoxA_transcription_0_k_PROTEIN_GroTFC=1.0;
	% Local Parameter:   id =  c_PROTEIN_GroTFC, name = c_PROTEIN_GroTFC
	reaction_GENE_M_FoxA_transcription_0_c_PROTEIN_GroTFC=1.0;
	% Local Parameter:   id =  k_PROTEIN_FoxA, name = k_PROTEIN_FoxA
	reaction_GENE_M_FoxA_transcription_0_k_PROTEIN_FoxA=1.0;
	% Local Parameter:   id =  c_PROTEIN_FoxA, name = c_PROTEIN_FoxA
	reaction_GENE_M_FoxA_transcription_0_c_PROTEIN_FoxA=1.0;
	% Local Parameter:   id =  k_PROTEIN_nBTCF, name = k_PROTEIN_nBTCF
	reaction_GENE_M_FoxA_transcription_0_k_PROTEIN_nBTCF=1.0;
	% Local Parameter:   id =  c_PROTEIN_nBTCF, name = c_PROTEIN_nBTCF
	reaction_GENE_M_FoxA_transcription_0_c_PROTEIN_nBTCF=1.0;
	% Local Parameter:   id =  k_PROTEIN_Tgif, name = k_PROTEIN_Tgif
	reaction_GENE_M_FoxA_transcription_0_k_PROTEIN_Tgif=1.0;
	% Local Parameter:   id =  c_PROTEIN_Tgif, name = c_PROTEIN_Tgif
	reaction_GENE_M_FoxA_transcription_0_c_PROTEIN_Tgif=1.0;
	% Local Parameter:   id =  k_PROTEIN_Bra, name = k_PROTEIN_Bra
	reaction_GENE_M_FoxA_transcription_0_k_PROTEIN_Bra=1.0;
	% Local Parameter:   id =  c_PROTEIN_Bra, name = c_PROTEIN_Bra
	reaction_GENE_M_FoxA_transcription_0_c_PROTEIN_Bra=1.0;
	% Local Parameter:   id =  k_PROTEIN_Otx, name = k_PROTEIN_Otx
	reaction_GENE_M_FoxA_transcription_0_k_PROTEIN_Otx=1.0;
	% Local Parameter:   id =  c_PROTEIN_Otx, name = c_PROTEIN_Otx
	reaction_GENE_M_FoxA_transcription_0_c_PROTEIN_Otx=1.0;
	% Local Parameter:   id =  k_PROTEIN_GataE, name = k_PROTEIN_GataE
	reaction_GENE_M_FoxA_transcription_0_k_PROTEIN_GataE=1.0;
	% Local Parameter:   id =  c_PROTEIN_GataE, name = c_PROTEIN_GataE
	reaction_GENE_M_FoxA_transcription_0_c_PROTEIN_GataE=1.0;

	reaction_GENE_M_FoxA_transcription_0=(reaction_GENE_M_FoxA_transcription_0_k_PROTEIN_GataE*x(111)/(reaction_GENE_M_FoxA_transcription_0_c_PROTEIN_GataE+x(111))+reaction_GENE_M_FoxA_transcription_0_k_PROTEIN_nBTCF*x(168)/(reaction_GENE_M_FoxA_transcription_0_c_PROTEIN_nBTCF+x(168))+reaction_GENE_M_FoxA_transcription_0_k_PROTEIN_Otx*x(132)/(reaction_GENE_M_FoxA_transcription_0_c_PROTEIN_Otx+x(132))+reaction_GENE_M_FoxA_transcription_0_k_PROTEIN_Bra*x(90)/(reaction_GENE_M_FoxA_transcription_0_c_PROTEIN_Bra+x(90))+reaction_GENE_M_FoxA_transcription_0_k_PROTEIN_Tgif*x(147)/(reaction_GENE_M_FoxA_transcription_0_c_PROTEIN_Tgif+x(147)))*reaction_GENE_M_FoxA_transcription_0_k_PROTEIN_GroTFC*reaction_GENE_M_FoxA_transcription_0_c_PROTEIN_GroTFC/(reaction_GENE_M_FoxA_transcription_0_c_PROTEIN_GroTFC+x(117))*reaction_GENE_M_FoxA_transcription_0_k_PROTEIN_FoxA*reaction_GENE_M_FoxA_transcription_0_c_PROTEIN_FoxA/(reaction_GENE_M_FoxA_transcription_0_c_PROTEIN_FoxA+x(103));

% Reaction: id = GENE_M_FoxB_transcription_0, name = GENE_M_FoxB_transcription	% Local Parameter:   id =  k_PROTEIN_Ets1, name = k_PROTEIN_Ets1
	reaction_GENE_M_FoxB_transcription_0_k_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Ets1, name = c_PROTEIN_Ets1
	reaction_GENE_M_FoxB_transcription_0_c_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  k_PROTEIN_Dri, name = k_PROTEIN_Dri
	reaction_GENE_M_FoxB_transcription_0_k_PROTEIN_Dri=1.0;
	% Local Parameter:   id =  c_PROTEIN_Dri, name = c_PROTEIN_Dri
	reaction_GENE_M_FoxB_transcription_0_c_PROTEIN_Dri=1.0;
	% Local Parameter:   id =  k_PROTEIN_TBr, name = k_PROTEIN_TBr
	reaction_GENE_M_FoxB_transcription_0_k_PROTEIN_TBr=1.0;
	% Local Parameter:   id =  c_PROTEIN_TBr, name = c_PROTEIN_TBr
	reaction_GENE_M_FoxB_transcription_0_c_PROTEIN_TBr=1.0;
	% Local Parameter:   id =  k_PROTEIN_FoxB, name = k_PROTEIN_FoxB
	reaction_GENE_M_FoxB_transcription_0_k_PROTEIN_FoxB=1.0;
	% Local Parameter:   id =  c_PROTEIN_FoxB, name = c_PROTEIN_FoxB
	reaction_GENE_M_FoxB_transcription_0_c_PROTEIN_FoxB=1.0;
	% Local Parameter:   id =  k_PROTEIN_Alx1, name = k_PROTEIN_Alx1
	reaction_GENE_M_FoxB_transcription_0_k_PROTEIN_Alx1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Alx1, name = c_PROTEIN_Alx1
	reaction_GENE_M_FoxB_transcription_0_c_PROTEIN_Alx1=1.0;

	reaction_GENE_M_FoxB_transcription_0=(reaction_GENE_M_FoxB_transcription_0_k_PROTEIN_Alx1*x(87)/(reaction_GENE_M_FoxB_transcription_0_c_PROTEIN_Alx1+x(87))+reaction_GENE_M_FoxB_transcription_0_k_PROTEIN_Ets1*x(100)/(reaction_GENE_M_FoxB_transcription_0_c_PROTEIN_Ets1+x(100))+reaction_GENE_M_FoxB_transcription_0_k_PROTEIN_TBr*x(144)/(reaction_GENE_M_FoxB_transcription_0_c_PROTEIN_TBr+x(144))+reaction_GENE_M_FoxB_transcription_0_k_PROTEIN_Dri*x(97)/(reaction_GENE_M_FoxB_transcription_0_c_PROTEIN_Dri+x(97)))*reaction_GENE_M_FoxB_transcription_0_k_PROTEIN_FoxB*reaction_GENE_M_FoxB_transcription_0_c_PROTEIN_FoxB/(reaction_GENE_M_FoxB_transcription_0_c_PROTEIN_FoxB+x(104));

% Reaction: id = GENE_M_FoxN23_transcription_0, name = GENE_M_FoxN23_transcription	% Local Parameter:   id =  k_PROTEIN_nBTCF, name = k_PROTEIN_nBTCF
	reaction_GENE_M_FoxN23_transcription_0_k_PROTEIN_nBTCF=1.0;
	% Local Parameter:   id =  c_PROTEIN_nBTCF, name = c_PROTEIN_nBTCF
	reaction_GENE_M_FoxN23_transcription_0_c_PROTEIN_nBTCF=1.0;

	reaction_GENE_M_FoxN23_transcription_0=reaction_GENE_M_FoxN23_transcription_0_k_PROTEIN_nBTCF*x(168)/(reaction_GENE_M_FoxN23_transcription_0_c_PROTEIN_nBTCF+x(168));

% Reaction: id = GENE_M_FoxO_transcription_0, name = GENE_M_FoxO_transcription	% Local Parameter:   id =  k_PROTEIN_Ets1, name = k_PROTEIN_Ets1
	reaction_GENE_M_FoxO_transcription_0_k_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Ets1, name = c_PROTEIN_Ets1
	reaction_GENE_M_FoxO_transcription_0_c_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  k_PROTEIN_Hex, name = k_PROTEIN_Hex
	reaction_GENE_M_FoxO_transcription_0_k_PROTEIN_Hex=1.0;
	% Local Parameter:   id =  c_PROTEIN_Hex, name = c_PROTEIN_Hex
	reaction_GENE_M_FoxO_transcription_0_c_PROTEIN_Hex=1.0;
	% Local Parameter:   id =  k_PROTEIN_Erg, name = k_PROTEIN_Erg
	reaction_GENE_M_FoxO_transcription_0_k_PROTEIN_Erg=1.0;
	% Local Parameter:   id =  c_PROTEIN_Erg, name = c_PROTEIN_Erg
	reaction_GENE_M_FoxO_transcription_0_c_PROTEIN_Erg=1.0;
	% Local Parameter:   id =  k_PROTEIN_Tgif, name = k_PROTEIN_Tgif
	reaction_GENE_M_FoxO_transcription_0_k_PROTEIN_Tgif=1.0;
	% Local Parameter:   id =  c_PROTEIN_Tgif, name = c_PROTEIN_Tgif
	reaction_GENE_M_FoxO_transcription_0_c_PROTEIN_Tgif=1.0;

	reaction_GENE_M_FoxO_transcription_0=reaction_GENE_M_FoxO_transcription_0_k_PROTEIN_Ets1*x(100)/(reaction_GENE_M_FoxO_transcription_0_c_PROTEIN_Ets1+x(100))+reaction_GENE_M_FoxO_transcription_0_k_PROTEIN_Hex*x(119)/(reaction_GENE_M_FoxO_transcription_0_c_PROTEIN_Hex+x(119))+reaction_GENE_M_FoxO_transcription_0_k_PROTEIN_Tgif*x(147)/(reaction_GENE_M_FoxO_transcription_0_c_PROTEIN_Tgif+x(147))+reaction_GENE_M_FoxO_transcription_0_k_PROTEIN_Erg*x(99)/(reaction_GENE_M_FoxO_transcription_0_c_PROTEIN_Erg+x(99));

% Reaction: id = GENE_M_FvMo_transcription_0, name = GENE_M_FvMo_transcription	% Local Parameter:   id =  k_PROTEIN_GataE, name = k_PROTEIN_GataE
	reaction_GENE_M_FvMo_transcription_0_k_PROTEIN_GataE=1.0;
	% Local Parameter:   id =  c_PROTEIN_GataE, name = c_PROTEIN_GataE
	reaction_GENE_M_FvMo_transcription_0_c_PROTEIN_GataE=1.0;
	% Local Parameter:   id =  k_PROTEIN_Gcm, name = k_PROTEIN_Gcm
	reaction_GENE_M_FvMo_transcription_0_k_PROTEIN_Gcm=1.0;
	% Local Parameter:   id =  c_PROTEIN_Gcm, name = c_PROTEIN_Gcm
	reaction_GENE_M_FvMo_transcription_0_c_PROTEIN_Gcm=1.0;

	reaction_GENE_M_FvMo_transcription_0=reaction_GENE_M_FvMo_transcription_0_k_PROTEIN_Gcm*x(113)/(reaction_GENE_M_FvMo_transcription_0_c_PROTEIN_Gcm+x(113))+reaction_GENE_M_FvMo_transcription_0_k_PROTEIN_GataE*x(111)/(reaction_GENE_M_FvMo_transcription_0_c_PROTEIN_GataE+x(111));

% Reaction: id = GENE_M_GataC_transcription_0, name = GENE_M_GataC_transcription	% Local Parameter:   id =  k_PROTEIN_GataC, name = k_PROTEIN_GataC
	reaction_GENE_M_GataC_transcription_0_k_PROTEIN_GataC=1.0;
	% Local Parameter:   id =  c_PROTEIN_GataC, name = c_PROTEIN_GataC
	reaction_GENE_M_GataC_transcription_0_c_PROTEIN_GataC=1.0;
	% Local Parameter:   id =  k_PROTEIN_GCM, name = k_PROTEIN_GCM
	reaction_GENE_M_GataC_transcription_0_k_PROTEIN_GCM=1.0;
	% Local Parameter:   id =  c_PROTEIN_GCM, name = c_PROTEIN_GCM
	reaction_GENE_M_GataC_transcription_0_c_PROTEIN_GCM=1.0;
	% Local Parameter:   id =  k_PROTEIN_GataE, name = k_PROTEIN_GataE
	reaction_GENE_M_GataC_transcription_0_k_PROTEIN_GataE=1.0;
	% Local Parameter:   id =  c_PROTEIN_GataE, name = c_PROTEIN_GataE
	reaction_GENE_M_GataC_transcription_0_c_PROTEIN_GataE=1.0;
	% Local Parameter:   id =  k_PROTEIN_Hnf6, name = k_PROTEIN_Hnf6
	reaction_GENE_M_GataC_transcription_0_k_PROTEIN_Hnf6=1.0;
	% Local Parameter:   id =  c_PROTEIN_Hnf6, name = c_PROTEIN_Hnf6
	reaction_GENE_M_GataC_transcription_0_c_PROTEIN_Hnf6=1.0;

	reaction_GENE_M_GataC_transcription_0=(reaction_GENE_M_GataC_transcription_0_k_PROTEIN_GataE*x(111)/(reaction_GENE_M_GataC_transcription_0_c_PROTEIN_GataE+x(111))+reaction_GENE_M_GataC_transcription_0_k_PROTEIN_Hnf6*x(120)/(reaction_GENE_M_GataC_transcription_0_c_PROTEIN_Hnf6+x(120))+reaction_GENE_M_GataC_transcription_0_k_PROTEIN_GCM*x(86)/(reaction_GENE_M_GataC_transcription_0_c_PROTEIN_GCM+x(86)))*reaction_GENE_M_GataC_transcription_0_k_PROTEIN_GataC*reaction_GENE_M_GataC_transcription_0_c_PROTEIN_GataC/(reaction_GENE_M_GataC_transcription_0_c_PROTEIN_GataC+x(110));

% Reaction: id = GENE_M_GataE_transcription_0, name = GENE_M_GataE_transcription	% Local Parameter:   id =  k_PROTEIN_Otx, name = k_PROTEIN_Otx
	reaction_GENE_M_GataE_transcription_0_k_PROTEIN_Otx=1.0;
	% Local Parameter:   id =  c_PROTEIN_Otx, name = c_PROTEIN_Otx
	reaction_GENE_M_GataE_transcription_0_c_PROTEIN_Otx=1.0;
	% Local Parameter:   id =  k_PROTEIN_Hox, name = k_PROTEIN_Hox
	reaction_GENE_M_GataE_transcription_0_k_PROTEIN_Hox=1.0;
	% Local Parameter:   id =  c_PROTEIN_Hox, name = c_PROTEIN_Hox
	reaction_GENE_M_GataE_transcription_0_c_PROTEIN_Hox=1.0;
	% Local Parameter:   id =  k_PROTEIN_SuHN, name = k_PROTEIN_SuHN
	reaction_GENE_M_GataE_transcription_0_k_PROTEIN_SuHN=1.0;
	% Local Parameter:   id =  c_PROTEIN_SuHN, name = c_PROTEIN_SuHN
	reaction_GENE_M_GataE_transcription_0_c_PROTEIN_SuHN=1.0;

	reaction_GENE_M_GataE_transcription_0=(reaction_GENE_M_GataE_transcription_0_k_PROTEIN_Otx*x(132)/(reaction_GENE_M_GataE_transcription_0_c_PROTEIN_Otx+x(132))+reaction_GENE_M_GataE_transcription_0_k_PROTEIN_SuHN*x(142)/(reaction_GENE_M_GataE_transcription_0_c_PROTEIN_SuHN+x(142)))*reaction_GENE_M_GataE_transcription_0_k_PROTEIN_Hox*reaction_GENE_M_GataE_transcription_0_c_PROTEIN_Hox/(reaction_GENE_M_GataE_transcription_0_c_PROTEIN_Hox+x(121));

% Reaction: id = GENE_M_Gcad_transcription_0, name = GENE_M_Gcad_transcription	% Local Parameter:   id =  k_PROTEIN_Snail, name = k_PROTEIN_Snail
	reaction_GENE_M_Gcad_transcription_0_k_PROTEIN_Snail=1.0;
	% Local Parameter:   id =  c_PROTEIN_Snail, name = c_PROTEIN_Snail
	reaction_GENE_M_Gcad_transcription_0_c_PROTEIN_Snail=1.0;
	% Local Parameter:   id =  k_PROTEIN_UbiqGcad, name = k_PROTEIN_UbiqGcad
	reaction_GENE_M_Gcad_transcription_0_k_PROTEIN_UbiqGcad=1.0;
	% Local Parameter:   id =  c_PROTEIN_UbiqGcad, name = c_PROTEIN_UbiqGcad
	reaction_GENE_M_Gcad_transcription_0_c_PROTEIN_UbiqGcad=1.0;

	reaction_GENE_M_Gcad_transcription_0=reaction_GENE_M_Gcad_transcription_0_k_PROTEIN_UbiqGcad*x(156)/(reaction_GENE_M_Gcad_transcription_0_c_PROTEIN_UbiqGcad+x(156))*reaction_GENE_M_Gcad_transcription_0_k_PROTEIN_Snail*reaction_GENE_M_Gcad_transcription_0_c_PROTEIN_Snail/(reaction_GENE_M_Gcad_transcription_0_c_PROTEIN_Snail+x(138));

% Reaction: id = GENE_M_Gcm_transcription_0, name = GENE_M_Gcm_transcription	% Local Parameter:   id =  k_PROTEIN_FoxA, name = k_PROTEIN_FoxA
	reaction_GENE_M_Gcm_transcription_0_k_PROTEIN_FoxA=1.0;
	% Local Parameter:   id =  c_PROTEIN_FoxA, name = c_PROTEIN_FoxA
	reaction_GENE_M_Gcm_transcription_0_c_PROTEIN_FoxA=1.0;
	% Local Parameter:   id =  k_PROTEIN_nBTCF, name = k_PROTEIN_nBTCF
	reaction_GENE_M_Gcm_transcription_0_k_PROTEIN_nBTCF=1.0;
	% Local Parameter:   id =  c_PROTEIN_nBTCF, name = c_PROTEIN_nBTCF
	reaction_GENE_M_Gcm_transcription_0_c_PROTEIN_nBTCF=1.0;
	% Local Parameter:   id =  k_PROTEIN_Alx1, name = k_PROTEIN_Alx1
	reaction_GENE_M_Gcm_transcription_0_k_PROTEIN_Alx1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Alx1, name = c_PROTEIN_Alx1
	reaction_GENE_M_Gcm_transcription_0_c_PROTEIN_Alx1=1.0;
	% Local Parameter:   id =  k_PROTEIN_GroTCF, name = k_PROTEIN_GroTCF
	reaction_GENE_M_Gcm_transcription_0_k_PROTEIN_GroTCF=1.0;
	% Local Parameter:   id =  c_PROTEIN_GroTCF, name = c_PROTEIN_GroTCF
	reaction_GENE_M_Gcm_transcription_0_c_PROTEIN_GroTCF=1.0;
	% Local Parameter:   id =  k_PROTEIN_SuHN, name = k_PROTEIN_SuHN
	reaction_GENE_M_Gcm_transcription_0_k_PROTEIN_SuHN=1.0;
	% Local Parameter:   id =  c_PROTEIN_SuHN, name = c_PROTEIN_SuHN
	reaction_GENE_M_Gcm_transcription_0_c_PROTEIN_SuHN=1.0;
	% Local Parameter:   id =  k_PROTEIN_Gcm, name = k_PROTEIN_Gcm
	reaction_GENE_M_Gcm_transcription_0_k_PROTEIN_Gcm=1.0;
	% Local Parameter:   id =  c_PROTEIN_Gcm, name = c_PROTEIN_Gcm
	reaction_GENE_M_Gcm_transcription_0_c_PROTEIN_Gcm=1.0;

	reaction_GENE_M_Gcm_transcription_0=(reaction_GENE_M_Gcm_transcription_0_k_PROTEIN_nBTCF*x(168)/(reaction_GENE_M_Gcm_transcription_0_c_PROTEIN_nBTCF+x(168))+reaction_GENE_M_Gcm_transcription_0_k_PROTEIN_SuHN*x(142)/(reaction_GENE_M_Gcm_transcription_0_c_PROTEIN_SuHN+x(142))+reaction_GENE_M_Gcm_transcription_0_k_PROTEIN_Gcm*x(113)/(reaction_GENE_M_Gcm_transcription_0_c_PROTEIN_Gcm+x(113)))*reaction_GENE_M_Gcm_transcription_0_k_PROTEIN_GroTCF*reaction_GENE_M_Gcm_transcription_0_c_PROTEIN_GroTCF/(reaction_GENE_M_Gcm_transcription_0_c_PROTEIN_GroTCF+x(116))*reaction_GENE_M_Gcm_transcription_0_k_PROTEIN_FoxA*reaction_GENE_M_Gcm_transcription_0_c_PROTEIN_FoxA/(reaction_GENE_M_Gcm_transcription_0_c_PROTEIN_FoxA+x(103))*reaction_GENE_M_Gcm_transcription_0_k_PROTEIN_Alx1*reaction_GENE_M_Gcm_transcription_0_c_PROTEIN_Alx1/(reaction_GENE_M_Gcm_transcription_0_c_PROTEIN_Alx1+x(87));

% Reaction: id = GENE_M_Gelsolin_transcription_0, name = GENE_M_Gelsolin_transcription	% Local Parameter:   id =  k_PROTEIN_Bra, name = k_PROTEIN_Bra
	reaction_GENE_M_Gelsolin_transcription_0_k_PROTEIN_Bra=1.0;
	% Local Parameter:   id =  c_PROTEIN_Bra, name = c_PROTEIN_Bra
	reaction_GENE_M_Gelsolin_transcription_0_c_PROTEIN_Bra=1.0;

	reaction_GENE_M_Gelsolin_transcription_0=reaction_GENE_M_Gelsolin_transcription_0_k_PROTEIN_Bra*x(90)/(reaction_GENE_M_Gelsolin_transcription_0_c_PROTEIN_Bra+x(90))+reaction_GENE_M_Gelsolin_transcription_0_k_PROTEIN_Bra*x(4)/(reaction_GENE_M_Gelsolin_transcription_0_c_PROTEIN_Bra+x(4));

% Reaction: id = GENE_M_HesC_transcription_0, name = GENE_M_HesC_transcription	% Local Parameter:   id =  k_PROTEIN_UbiqHesC, name = k_PROTEIN_UbiqHesC
	reaction_GENE_M_HesC_transcription_0_k_PROTEIN_UbiqHesC=1.0;
	% Local Parameter:   id =  c_PROTEIN_UbiqHesC, name = c_PROTEIN_UbiqHesC
	reaction_GENE_M_HesC_transcription_0_c_PROTEIN_UbiqHesC=1.0;
	% Local Parameter:   id =  k_PROTEIN_Pmar1, name = k_PROTEIN_Pmar1
	reaction_GENE_M_HesC_transcription_0_k_PROTEIN_Pmar1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Pmar1, name = c_PROTEIN_Pmar1
	reaction_GENE_M_HesC_transcription_0_c_PROTEIN_Pmar1=1.0;

	reaction_GENE_M_HesC_transcription_0=reaction_GENE_M_HesC_transcription_0_k_PROTEIN_UbiqHesC*x(157)/(reaction_GENE_M_HesC_transcription_0_c_PROTEIN_UbiqHesC+x(157))*reaction_GENE_M_HesC_transcription_0_k_PROTEIN_Pmar1*reaction_GENE_M_HesC_transcription_0_c_PROTEIN_Pmar1/(reaction_GENE_M_HesC_transcription_0_c_PROTEIN_Pmar1+x(134));

% Reaction: id = GENE_M_Hex_transcription_0, name = GENE_M_Hex_transcription	% Local Parameter:   id =  k_PROTEIN_Ets1, name = k_PROTEIN_Ets1
	reaction_GENE_M_Hex_transcription_0_k_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Ets1, name = c_PROTEIN_Ets1
	reaction_GENE_M_Hex_transcription_0_c_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  k_PROTEIN_Erg, name = k_PROTEIN_Erg
	reaction_GENE_M_Hex_transcription_0_k_PROTEIN_Erg=1.0;
	% Local Parameter:   id =  c_PROTEIN_Erg, name = c_PROTEIN_Erg
	reaction_GENE_M_Hex_transcription_0_c_PROTEIN_Erg=1.0;
	% Local Parameter:   id =  k_PROTEIN_Tgif, name = k_PROTEIN_Tgif
	reaction_GENE_M_Hex_transcription_0_k_PROTEIN_Tgif=1.0;
	% Local Parameter:   id =  c_PROTEIN_Tgif, name = c_PROTEIN_Tgif
	reaction_GENE_M_Hex_transcription_0_c_PROTEIN_Tgif=1.0;

	reaction_GENE_M_Hex_transcription_0=reaction_GENE_M_Hex_transcription_0_k_PROTEIN_Tgif*x(147)/(reaction_GENE_M_Hex_transcription_0_c_PROTEIN_Tgif+x(147))+reaction_GENE_M_Hex_transcription_0_k_PROTEIN_Ets1*x(100)/(reaction_GENE_M_Hex_transcription_0_c_PROTEIN_Ets1+x(100))+reaction_GENE_M_Hex_transcription_0_k_PROTEIN_Erg*x(99)/(reaction_GENE_M_Hex_transcription_0_c_PROTEIN_Erg+x(99));

% Reaction: id = GENE_M_Hnf6_transcription_0, name = GENE_M_Hnf6_transcription	% Local Parameter:   id =  k_PROTEIN_UbiqHnf6, name = k_PROTEIN_UbiqHnf6
	reaction_GENE_M_Hnf6_transcription_0_k_PROTEIN_UbiqHnf6=1.0;
	% Local Parameter:   id =  c_PROTEIN_UbiqHnf6, name = c_PROTEIN_UbiqHnf6
	reaction_GENE_M_Hnf6_transcription_0_c_PROTEIN_UbiqHnf6=1.0;

	reaction_GENE_M_Hnf6_transcription_0=reaction_GENE_M_Hnf6_transcription_0_k_PROTEIN_UbiqHnf6*x(158)/(reaction_GENE_M_Hnf6_transcription_0_c_PROTEIN_UbiqHnf6+x(158));

% Reaction: id = GENE_M_Hox_transcription_0, name = GENE_M_Hox_transcription	% Local Parameter:   id =  k_PROTEIN_GroTCF, name = k_PROTEIN_GroTCF
	reaction_GENE_M_Hox_transcription_0_k_PROTEIN_GroTCF=1.0;
	% Local Parameter:   id =  c_PROTEIN_GroTCF, name = c_PROTEIN_GroTCF
	reaction_GENE_M_Hox_transcription_0_c_PROTEIN_GroTCF=1.0;
	% Local Parameter:   id =  k_PROTEIN_Blimp1, name = k_PROTEIN_Blimp1
	reaction_GENE_M_Hox_transcription_0_k_PROTEIN_Blimp1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Blimp1, name = c_PROTEIN_Blimp1
	reaction_GENE_M_Hox_transcription_0_c_PROTEIN_Blimp1=1.0;
	% Local Parameter:   id =  k_PROTEIN_Otx, name = k_PROTEIN_Otx
	reaction_GENE_M_Hox_transcription_0_k_PROTEIN_Otx=1.0;
	% Local Parameter:   id =  c_PROTEIN_Otx, name = c_PROTEIN_Otx
	reaction_GENE_M_Hox_transcription_0_c_PROTEIN_Otx=1.0;
	% Local Parameter:   id =  k_PROTEIN_Eve, name = k_PROTEIN_Eve
	reaction_GENE_M_Hox_transcription_0_k_PROTEIN_Eve=1.0;
	% Local Parameter:   id =  c_PROTEIN_Eve, name = c_PROTEIN_Eve
	reaction_GENE_M_Hox_transcription_0_c_PROTEIN_Eve=1.0;
	% Local Parameter:   id =  k_PROTEIN_nBTCF, name = k_PROTEIN_nBTCF
	reaction_GENE_M_Hox_transcription_0_k_PROTEIN_nBTCF=1.0;
	% Local Parameter:   id =  c_PROTEIN_nBTCF, name = c_PROTEIN_nBTCF
	reaction_GENE_M_Hox_transcription_0_c_PROTEIN_nBTCF=1.0;

	reaction_GENE_M_Hox_transcription_0=(reaction_GENE_M_Hox_transcription_0_k_PROTEIN_Blimp1*x(89)/(reaction_GENE_M_Hox_transcription_0_c_PROTEIN_Blimp1+x(89))+reaction_GENE_M_Hox_transcription_0_k_PROTEIN_nBTCF*x(168)/(reaction_GENE_M_Hox_transcription_0_c_PROTEIN_nBTCF+x(168))+reaction_GENE_M_Hox_transcription_0_k_PROTEIN_Eve*x(101)/(reaction_GENE_M_Hox_transcription_0_c_PROTEIN_Eve+x(101))+reaction_GENE_M_Hox_transcription_0_k_PROTEIN_Otx*x(132)/(reaction_GENE_M_Hox_transcription_0_c_PROTEIN_Otx+x(132)))*reaction_GENE_M_Hox_transcription_0_k_PROTEIN_GroTCF*reaction_GENE_M_Hox_transcription_0_c_PROTEIN_GroTCF/(reaction_GENE_M_Hox_transcription_0_c_PROTEIN_GroTCF+x(116));

% Reaction: id = GENE_M_Kakapo_transcription_0, name = GENE_M_Kakapo_transcription	% Local Parameter:   id =  k_PROTEIN_Bra, name = k_PROTEIN_Bra
	reaction_GENE_M_Kakapo_transcription_0_k_PROTEIN_Bra=1.0;
	% Local Parameter:   id =  c_PROTEIN_Bra, name = c_PROTEIN_Bra
	reaction_GENE_M_Kakapo_transcription_0_c_PROTEIN_Bra=1.0;

	reaction_GENE_M_Kakapo_transcription_0=reaction_GENE_M_Kakapo_transcription_0_k_PROTEIN_Bra*x(90)/(reaction_GENE_M_Kakapo_transcription_0_c_PROTEIN_Bra+x(90))+reaction_GENE_M_Kakapo_transcription_0_k_PROTEIN_Bra*x(4)/(reaction_GENE_M_Kakapo_transcription_0_c_PROTEIN_Bra+x(4));

% Reaction: id = GENE_M_Lim_transcription_0, name = GENE_M_Lim_transcription	% Local Parameter:   id =  k_PROTEIN_Otx, name = k_PROTEIN_Otx
	reaction_GENE_M_Lim_transcription_0_k_PROTEIN_Otx=1.0;
	% Local Parameter:   id =  c_PROTEIN_Otx, name = c_PROTEIN_Otx
	reaction_GENE_M_Lim_transcription_0_c_PROTEIN_Otx=1.0;
	% Local Parameter:   id =  k_PROTEIN_GataE, name = k_PROTEIN_GataE
	reaction_GENE_M_Lim_transcription_0_k_PROTEIN_GataE=1.0;
	% Local Parameter:   id =  c_PROTEIN_GataE, name = c_PROTEIN_GataE
	reaction_GENE_M_Lim_transcription_0_c_PROTEIN_GataE=1.0;

	reaction_GENE_M_Lim_transcription_0=reaction_GENE_M_Lim_transcription_0_k_PROTEIN_GataE*x(111)/(reaction_GENE_M_Lim_transcription_0_c_PROTEIN_GataE+x(111))+reaction_GENE_M_Lim_transcription_0_k_PROTEIN_Otx*x(132)/(reaction_GENE_M_Lim_transcription_0_c_PROTEIN_Otx+x(132));

% Reaction: id = GENE_M_Msp130_transcription_0, name = GENE_M_Msp130_transcription	% Local Parameter:   id =  k_PROTEIN_FoxB, name = k_PROTEIN_FoxB
	reaction_GENE_M_Msp130_transcription_0_k_PROTEIN_FoxB=1.0;
	% Local Parameter:   id =  c_PROTEIN_FoxB, name = c_PROTEIN_FoxB
	reaction_GENE_M_Msp130_transcription_0_c_PROTEIN_FoxB=1.0;
	% Local Parameter:   id =  k_PROTEIN_Hex, name = k_PROTEIN_Hex
	reaction_GENE_M_Msp130_transcription_0_k_PROTEIN_Hex=1.0;
	% Local Parameter:   id =  c_PROTEIN_Hex, name = c_PROTEIN_Hex
	reaction_GENE_M_Msp130_transcription_0_c_PROTEIN_Hex=1.0;
	% Local Parameter:   id =  k_PROTEIN_Alx1, name = k_PROTEIN_Alx1
	reaction_GENE_M_Msp130_transcription_0_k_PROTEIN_Alx1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Alx1, name = c_PROTEIN_Alx1
	reaction_GENE_M_Msp130_transcription_0_c_PROTEIN_Alx1=1.0;
	% Local Parameter:   id =  k_PROTEIN_Erg, name = k_PROTEIN_Erg
	reaction_GENE_M_Msp130_transcription_0_k_PROTEIN_Erg=1.0;
	% Local Parameter:   id =  c_PROTEIN_Erg, name = c_PROTEIN_Erg
	reaction_GENE_M_Msp130_transcription_0_c_PROTEIN_Erg=1.0;
	% Local Parameter:   id =  k_PROTEIN_Ets1, name = k_PROTEIN_Ets1
	reaction_GENE_M_Msp130_transcription_0_k_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Ets1, name = c_PROTEIN_Ets1
	reaction_GENE_M_Msp130_transcription_0_c_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  k_PROTEIN_TBr, name = k_PROTEIN_TBr
	reaction_GENE_M_Msp130_transcription_0_k_PROTEIN_TBr=1.0;
	% Local Parameter:   id =  c_PROTEIN_TBr, name = c_PROTEIN_TBr
	reaction_GENE_M_Msp130_transcription_0_c_PROTEIN_TBr=1.0;
	% Local Parameter:   id =  k_PROTEIN_Hnf6, name = k_PROTEIN_Hnf6
	reaction_GENE_M_Msp130_transcription_0_k_PROTEIN_Hnf6=1.0;
	% Local Parameter:   id =  c_PROTEIN_Hnf6, name = c_PROTEIN_Hnf6
	reaction_GENE_M_Msp130_transcription_0_c_PROTEIN_Hnf6=1.0;

	reaction_GENE_M_Msp130_transcription_0=reaction_GENE_M_Msp130_transcription_0_k_PROTEIN_Hnf6*x(120)/(reaction_GENE_M_Msp130_transcription_0_c_PROTEIN_Hnf6+x(120))+reaction_GENE_M_Msp130_transcription_0_k_PROTEIN_FoxB*x(104)/(reaction_GENE_M_Msp130_transcription_0_c_PROTEIN_FoxB+x(104))+reaction_GENE_M_Msp130_transcription_0_k_PROTEIN_Ets1*x(100)/(reaction_GENE_M_Msp130_transcription_0_c_PROTEIN_Ets1+x(100))+reaction_GENE_M_Msp130_transcription_0_k_PROTEIN_Alx1*x(87)/(reaction_GENE_M_Msp130_transcription_0_c_PROTEIN_Alx1+x(87))+reaction_GENE_M_Msp130_transcription_0_k_PROTEIN_Hex*x(119)/(reaction_GENE_M_Msp130_transcription_0_c_PROTEIN_Hex+x(119))+reaction_GENE_M_Msp130_transcription_0_k_PROTEIN_TBr*x(144)/(reaction_GENE_M_Msp130_transcription_0_c_PROTEIN_TBr+x(144))+reaction_GENE_M_Msp130_transcription_0_k_PROTEIN_Erg*x(99)/(reaction_GENE_M_Msp130_transcription_0_c_PROTEIN_Erg+x(99));

% Reaction: id = GENE_M_MspL_transcription_0, name = GENE_M_MspL_transcription	% Local Parameter:   id =  k_PROTEIN_Hex, name = k_PROTEIN_Hex
	reaction_GENE_M_MspL_transcription_0_k_PROTEIN_Hex=1.0;
	% Local Parameter:   id =  c_PROTEIN_Hex, name = c_PROTEIN_Hex
	reaction_GENE_M_MspL_transcription_0_c_PROTEIN_Hex=1.0;
	% Local Parameter:   id =  k_PROTEIN_Ets1, name = k_PROTEIN_Ets1
	reaction_GENE_M_MspL_transcription_0_k_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Ets1, name = c_PROTEIN_Ets1
	reaction_GENE_M_MspL_transcription_0_c_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  k_PROTEIN_VEGFSignal, name = k_PROTEIN_VEGFSignal
	reaction_GENE_M_MspL_transcription_0_k_PROTEIN_VEGFSignal=1.0;
	% Local Parameter:   id =  c_PROTEIN_VEGFSignal, name = c_PROTEIN_VEGFSignal
	reaction_GENE_M_MspL_transcription_0_c_PROTEIN_VEGFSignal=1.0;
	% Local Parameter:   id =  k_PROTEIN_Erg, name = k_PROTEIN_Erg
	reaction_GENE_M_MspL_transcription_0_k_PROTEIN_Erg=1.0;
	% Local Parameter:   id =  c_PROTEIN_Erg, name = c_PROTEIN_Erg
	reaction_GENE_M_MspL_transcription_0_c_PROTEIN_Erg=1.0;
	% Local Parameter:   id =  k_PROTEIN_Alx1, name = k_PROTEIN_Alx1
	reaction_GENE_M_MspL_transcription_0_k_PROTEIN_Alx1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Alx1, name = c_PROTEIN_Alx1
	reaction_GENE_M_MspL_transcription_0_c_PROTEIN_Alx1=1.0;

	reaction_GENE_M_MspL_transcription_0=reaction_GENE_M_MspL_transcription_0_k_PROTEIN_Ets1*x(100)/(reaction_GENE_M_MspL_transcription_0_c_PROTEIN_Ets1+x(100))+reaction_GENE_M_MspL_transcription_0_k_PROTEIN_Alx1*x(87)/(reaction_GENE_M_MspL_transcription_0_c_PROTEIN_Alx1+x(87))+reaction_GENE_M_MspL_transcription_0_k_PROTEIN_VEGFSignal*x(163)/(reaction_GENE_M_MspL_transcription_0_c_PROTEIN_VEGFSignal+x(163))+reaction_GENE_M_MspL_transcription_0_k_PROTEIN_Hex*x(119)/(reaction_GENE_M_MspL_transcription_0_c_PROTEIN_Hex+x(119))+reaction_GENE_M_MspL_transcription_0_k_PROTEIN_Erg*x(99)/(reaction_GENE_M_MspL_transcription_0_c_PROTEIN_Erg+x(99));

% Reaction: id = GENE_M_Not_transcription_0, name = GENE_M_Not_transcription	% Local Parameter:   id =  k_PROTEIN_GataE, name = k_PROTEIN_GataE
	reaction_GENE_M_Not_transcription_0_k_PROTEIN_GataE=1.0;
	% Local Parameter:   id =  c_PROTEIN_GataE, name = c_PROTEIN_GataE
	reaction_GENE_M_Not_transcription_0_c_PROTEIN_GataE=1.0;

	reaction_GENE_M_Not_transcription_0=reaction_GENE_M_Not_transcription_0_k_PROTEIN_GataE*x(111)/(reaction_GENE_M_Not_transcription_0_c_PROTEIN_GataE+x(111));

% Reaction: id = GENE_M_Nrl_transcription_0, name = GENE_M_Nrl_transcription	% Local Parameter:   id =  k_PROTEIN_HesC, name = k_PROTEIN_HesC
	reaction_GENE_M_Nrl_transcription_0_k_PROTEIN_HesC=1.0;
	% Local Parameter:   id =  c_PROTEIN_HesC, name = c_PROTEIN_HesC
	reaction_GENE_M_Nrl_transcription_0_c_PROTEIN_HesC=1.0;
	% Local Parameter:   id =  k_PROTEIN_Tgif, name = k_PROTEIN_Tgif
	reaction_GENE_M_Nrl_transcription_0_k_PROTEIN_Tgif=1.0;
	% Local Parameter:   id =  c_PROTEIN_Tgif, name = c_PROTEIN_Tgif
	reaction_GENE_M_Nrl_transcription_0_c_PROTEIN_Tgif=1.0;
	% Local Parameter:   id =  k_PROTEIN_TBr, name = k_PROTEIN_TBr
	reaction_GENE_M_Nrl_transcription_0_k_PROTEIN_TBr=1.0;
	% Local Parameter:   id =  c_PROTEIN_TBr, name = c_PROTEIN_TBr
	reaction_GENE_M_Nrl_transcription_0_c_PROTEIN_TBr=1.0;
	% Local Parameter:   id =  k_PROTEIN_UMANrl, name = k_PROTEIN_UMANrl
	reaction_GENE_M_Nrl_transcription_0_k_PROTEIN_UMANrl=1.0;
	% Local Parameter:   id =  c_PROTEIN_UMANrl, name = c_PROTEIN_UMANrl
	reaction_GENE_M_Nrl_transcription_0_c_PROTEIN_UMANrl=1.0;
	% Local Parameter:   id =  k_PROTEIN_FoxN23, name = k_PROTEIN_FoxN23
	reaction_GENE_M_Nrl_transcription_0_k_PROTEIN_FoxN23=1.0;
	% Local Parameter:   id =  c_PROTEIN_FoxN23, name = c_PROTEIN_FoxN23
	reaction_GENE_M_Nrl_transcription_0_c_PROTEIN_FoxN23=1.0;
	% Local Parameter:   id =  k_PROTEIN_Bra, name = k_PROTEIN_Bra
	reaction_GENE_M_Nrl_transcription_0_k_PROTEIN_Bra=1.0;
	% Local Parameter:   id =  c_PROTEIN_Bra, name = c_PROTEIN_Bra
	reaction_GENE_M_Nrl_transcription_0_c_PROTEIN_Bra=1.0;
	% Local Parameter:   id =  k_PROTEIN_GataE, name = k_PROTEIN_GataE
	reaction_GENE_M_Nrl_transcription_0_k_PROTEIN_GataE=1.0;
	% Local Parameter:   id =  c_PROTEIN_GataE, name = c_PROTEIN_GataE
	reaction_GENE_M_Nrl_transcription_0_c_PROTEIN_GataE=1.0;

	reaction_GENE_M_Nrl_transcription_0=(reaction_GENE_M_Nrl_transcription_0_k_PROTEIN_TBr*x(144)/(reaction_GENE_M_Nrl_transcription_0_c_PROTEIN_TBr+x(144))+reaction_GENE_M_Nrl_transcription_0_k_PROTEIN_UMANrl*x(149)/(reaction_GENE_M_Nrl_transcription_0_c_PROTEIN_UMANrl+x(149))+reaction_GENE_M_Nrl_transcription_0_k_PROTEIN_FoxN23*x(105)/(reaction_GENE_M_Nrl_transcription_0_c_PROTEIN_FoxN23+x(105)))*reaction_GENE_M_Nrl_transcription_0_k_PROTEIN_GataE*reaction_GENE_M_Nrl_transcription_0_c_PROTEIN_GataE/(reaction_GENE_M_Nrl_transcription_0_c_PROTEIN_GataE+x(111))*reaction_GENE_M_Nrl_transcription_0_k_PROTEIN_HesC*reaction_GENE_M_Nrl_transcription_0_c_PROTEIN_HesC/(reaction_GENE_M_Nrl_transcription_0_c_PROTEIN_HesC+x(118))*reaction_GENE_M_Nrl_transcription_0_k_PROTEIN_Bra*reaction_GENE_M_Nrl_transcription_0_c_PROTEIN_Bra/(reaction_GENE_M_Nrl_transcription_0_c_PROTEIN_Bra+x(4))*reaction_GENE_M_Nrl_transcription_0_k_PROTEIN_Tgif*reaction_GENE_M_Nrl_transcription_0_c_PROTEIN_Tgif/(reaction_GENE_M_Nrl_transcription_0_c_PROTEIN_Tgif+x(147));

% Reaction: id = GENE_M_OrCt_transcription_0, name = GENE_M_OrCt_transcription	% Local Parameter:   id =  k_PROTEIN_Bra, name = k_PROTEIN_Bra
	reaction_GENE_M_OrCt_transcription_0_k_PROTEIN_Bra=1.0;
	% Local Parameter:   id =  c_PROTEIN_Bra, name = c_PROTEIN_Bra
	reaction_GENE_M_OrCt_transcription_0_c_PROTEIN_Bra=1.0;
	% Local Parameter:   id =  k_PROTEIN_Hox, name = k_PROTEIN_Hox
	reaction_GENE_M_OrCt_transcription_0_k_PROTEIN_Hox=1.0;
	% Local Parameter:   id =  c_PROTEIN_Hox, name = c_PROTEIN_Hox
	reaction_GENE_M_OrCt_transcription_0_c_PROTEIN_Hox=1.0;

	reaction_GENE_M_OrCt_transcription_0=(reaction_GENE_M_OrCt_transcription_0_k_PROTEIN_Bra*x(90)/(reaction_GENE_M_OrCt_transcription_0_c_PROTEIN_Bra+x(90))+reaction_GENE_M_OrCt_transcription_0_k_PROTEIN_Bra*x(4)/(reaction_GENE_M_OrCt_transcription_0_c_PROTEIN_Bra+x(4)))*reaction_GENE_M_OrCt_transcription_0_k_PROTEIN_Hox*reaction_GENE_M_OrCt_transcription_0_c_PROTEIN_Hox/(reaction_GENE_M_OrCt_transcription_0_c_PROTEIN_Hox+x(121));

% Reaction: id = GENE_M_Otx_transcription_0, name = GENE_M_Otx_transcription	% Local Parameter:   id =  k_PROTEIN_UVAOtx, name = k_PROTEIN_UVAOtx
	reaction_GENE_M_Otx_transcription_0_k_PROTEIN_UVAOtx=1.0;
	% Local Parameter:   id =  c_PROTEIN_UVAOtx, name = c_PROTEIN_UVAOtx
	reaction_GENE_M_Otx_transcription_0_c_PROTEIN_UVAOtx=1.0;
	% Local Parameter:   id =  k_PROTEIN_Otx, name = k_PROTEIN_Otx
	reaction_GENE_M_Otx_transcription_0_k_PROTEIN_Otx=1.0;
	% Local Parameter:   id =  c_PROTEIN_Otx, name = c_PROTEIN_Otx
	reaction_GENE_M_Otx_transcription_0_c_PROTEIN_Otx=1.0;
	% Local Parameter:   id =  k_PROTEIN_GataE, name = k_PROTEIN_GataE
	reaction_GENE_M_Otx_transcription_0_k_PROTEIN_GataE=1.0;
	% Local Parameter:   id =  c_PROTEIN_GataE, name = c_PROTEIN_GataE
	reaction_GENE_M_Otx_transcription_0_c_PROTEIN_GataE=1.0;
	% Local Parameter:   id =  k_PROTEIN_Blimp1, name = k_PROTEIN_Blimp1
	reaction_GENE_M_Otx_transcription_0_k_PROTEIN_Blimp1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Blimp1, name = c_PROTEIN_Blimp1
	reaction_GENE_M_Otx_transcription_0_c_PROTEIN_Blimp1=1.0;

	reaction_GENE_M_Otx_transcription_0=reaction_GENE_M_Otx_transcription_0_k_PROTEIN_UVAOtx*x(151)/(reaction_GENE_M_Otx_transcription_0_c_PROTEIN_UVAOtx+x(151))+reaction_GENE_M_Otx_transcription_0_k_PROTEIN_Blimp1*x(89)/(reaction_GENE_M_Otx_transcription_0_c_PROTEIN_Blimp1+x(89))+reaction_GENE_M_Otx_transcription_0_k_PROTEIN_GataE*x(111)/(reaction_GENE_M_Otx_transcription_0_c_PROTEIN_GataE+x(111))+reaction_GENE_M_Otx_transcription_0_k_PROTEIN_Otx*x(132)/(reaction_GENE_M_Otx_transcription_0_c_PROTEIN_Otx+x(132));

% Reaction: id = GENE_M_Pks_transcription_0, name = GENE_M_Pks_transcription	% Local Parameter:   id =  k_PROTEIN_Bra, name = k_PROTEIN_Bra
	reaction_GENE_M_Pks_transcription_0_k_PROTEIN_Bra=1.0;
	% Local Parameter:   id =  c_PROTEIN_Bra, name = c_PROTEIN_Bra
	reaction_GENE_M_Pks_transcription_0_c_PROTEIN_Bra=1.0;
	% Local Parameter:   id =  k_PROTEIN_GataE, name = k_PROTEIN_GataE
	reaction_GENE_M_Pks_transcription_0_k_PROTEIN_GataE=1.0;
	% Local Parameter:   id =  c_PROTEIN_GataE, name = c_PROTEIN_GataE
	reaction_GENE_M_Pks_transcription_0_c_PROTEIN_GataE=1.0;
	% Local Parameter:   id =  k_PROTEIN_Gcm, name = k_PROTEIN_Gcm
	reaction_GENE_M_Pks_transcription_0_k_PROTEIN_Gcm=1.0;
	% Local Parameter:   id =  c_PROTEIN_Gcm, name = c_PROTEIN_Gcm
	reaction_GENE_M_Pks_transcription_0_c_PROTEIN_Gcm=1.0;

	reaction_GENE_M_Pks_transcription_0=reaction_GENE_M_Pks_transcription_0_k_PROTEIN_Bra*x(4)/(reaction_GENE_M_Pks_transcription_0_c_PROTEIN_Bra+x(4))+reaction_GENE_M_Pks_transcription_0_k_PROTEIN_Gcm*x(113)/(reaction_GENE_M_Pks_transcription_0_c_PROTEIN_Gcm+x(113))+reaction_GENE_M_Pks_transcription_0_k_PROTEIN_GataE*x(111)/(reaction_GENE_M_Pks_transcription_0_c_PROTEIN_GataE+x(111));

% Reaction: id = GENE_M_Pmar1_transcription_0, name = GENE_M_Pmar1_transcription	% Local Parameter:   id =  k_PROTEIN_GroTCF, name = k_PROTEIN_GroTCF
	reaction_GENE_M_Pmar1_transcription_0_k_PROTEIN_GroTCF=1.0;
	% Local Parameter:   id =  c_PROTEIN_GroTCF, name = c_PROTEIN_GroTCF
	reaction_GENE_M_Pmar1_transcription_0_c_PROTEIN_GroTCF=1.0;
	% Local Parameter:   id =  k_PROTEIN_Otx, name = k_PROTEIN_Otx
	reaction_GENE_M_Pmar1_transcription_0_k_PROTEIN_Otx=1.0;
	% Local Parameter:   id =  c_PROTEIN_Otx, name = c_PROTEIN_Otx
	reaction_GENE_M_Pmar1_transcription_0_c_PROTEIN_Otx=1.0;
	% Local Parameter:   id =  k_PROTEIN_nBTCF, name = k_PROTEIN_nBTCF
	reaction_GENE_M_Pmar1_transcription_0_k_PROTEIN_nBTCF=1.0;
	% Local Parameter:   id =  c_PROTEIN_nBTCF, name = c_PROTEIN_nBTCF
	reaction_GENE_M_Pmar1_transcription_0_c_PROTEIN_nBTCF=1.0;

	reaction_GENE_M_Pmar1_transcription_0=(reaction_GENE_M_Pmar1_transcription_0_k_PROTEIN_nBTCF*x(168)/(reaction_GENE_M_Pmar1_transcription_0_c_PROTEIN_nBTCF+x(168))+reaction_GENE_M_Pmar1_transcription_0_k_PROTEIN_Otx*x(132)/(reaction_GENE_M_Pmar1_transcription_0_c_PROTEIN_Otx+x(132)))*reaction_GENE_M_Pmar1_transcription_0_k_PROTEIN_GroTCF*reaction_GENE_M_Pmar1_transcription_0_c_PROTEIN_GroTCF/(reaction_GENE_M_Pmar1_transcription_0_c_PROTEIN_GroTCF+x(116));

% Reaction: id = GENE_M_Sm27_transcription_0, name = GENE_M_Sm27_transcription	% Local Parameter:   id =  k_PROTEIN_Ets1, name = k_PROTEIN_Ets1
	reaction_GENE_M_Sm27_transcription_0_k_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Ets1, name = c_PROTEIN_Ets1
	reaction_GENE_M_Sm27_transcription_0_c_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  k_PROTEIN_Hex, name = k_PROTEIN_Hex
	reaction_GENE_M_Sm27_transcription_0_k_PROTEIN_Hex=1.0;
	% Local Parameter:   id =  c_PROTEIN_Hex, name = c_PROTEIN_Hex
	reaction_GENE_M_Sm27_transcription_0_c_PROTEIN_Hex=1.0;
	% Local Parameter:   id =  k_PROTEIN_Alx1, name = k_PROTEIN_Alx1
	reaction_GENE_M_Sm27_transcription_0_k_PROTEIN_Alx1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Alx1, name = c_PROTEIN_Alx1
	reaction_GENE_M_Sm27_transcription_0_c_PROTEIN_Alx1=1.0;
	% Local Parameter:   id =  k_PROTEIN_Dri, name = k_PROTEIN_Dri
	reaction_GENE_M_Sm27_transcription_0_k_PROTEIN_Dri=1.0;
	% Local Parameter:   id =  c_PROTEIN_Dri, name = c_PROTEIN_Dri
	reaction_GENE_M_Sm27_transcription_0_c_PROTEIN_Dri=1.0;
	% Local Parameter:   id =  k_PROTEIN_Erg, name = k_PROTEIN_Erg
	reaction_GENE_M_Sm27_transcription_0_k_PROTEIN_Erg=1.0;
	% Local Parameter:   id =  c_PROTEIN_Erg, name = c_PROTEIN_Erg
	reaction_GENE_M_Sm27_transcription_0_c_PROTEIN_Erg=1.0;
	% Local Parameter:   id =  k_PROTEIN_Tel, name = k_PROTEIN_Tel
	reaction_GENE_M_Sm27_transcription_0_k_PROTEIN_Tel=1.0;
	% Local Parameter:   id =  c_PROTEIN_Tel, name = c_PROTEIN_Tel
	reaction_GENE_M_Sm27_transcription_0_c_PROTEIN_Tel=1.0;
	% Local Parameter:   id =  k_PROTEIN_Hnf6, name = k_PROTEIN_Hnf6
	reaction_GENE_M_Sm27_transcription_0_k_PROTEIN_Hnf6=1.0;
	% Local Parameter:   id =  c_PROTEIN_Hnf6, name = c_PROTEIN_Hnf6
	reaction_GENE_M_Sm27_transcription_0_c_PROTEIN_Hnf6=1.0;

	reaction_GENE_M_Sm27_transcription_0=reaction_GENE_M_Sm27_transcription_0_k_PROTEIN_Dri*x(97)/(reaction_GENE_M_Sm27_transcription_0_c_PROTEIN_Dri+x(97))+reaction_GENE_M_Sm27_transcription_0_k_PROTEIN_Hnf6*x(120)/(reaction_GENE_M_Sm27_transcription_0_c_PROTEIN_Hnf6+x(120))+reaction_GENE_M_Sm27_transcription_0_k_PROTEIN_Ets1*x(100)/(reaction_GENE_M_Sm27_transcription_0_c_PROTEIN_Ets1+x(100))+reaction_GENE_M_Sm27_transcription_0_k_PROTEIN_Alx1*x(87)/(reaction_GENE_M_Sm27_transcription_0_c_PROTEIN_Alx1+x(87))+reaction_GENE_M_Sm27_transcription_0_k_PROTEIN_Tel*x(146)/(reaction_GENE_M_Sm27_transcription_0_c_PROTEIN_Tel+x(146))+reaction_GENE_M_Sm27_transcription_0_k_PROTEIN_Hex*x(119)/(reaction_GENE_M_Sm27_transcription_0_c_PROTEIN_Hex+x(119))+reaction_GENE_M_Sm27_transcription_0_k_PROTEIN_Erg*x(99)/(reaction_GENE_M_Sm27_transcription_0_c_PROTEIN_Erg+x(99));

% Reaction: id = GENE_M_Sm30_transcription_0, name = GENE_M_Sm30_transcription	% Local Parameter:   id =  k_PROTEIN_VEGFSignal, name = k_PROTEIN_VEGFSignal
	reaction_GENE_M_Sm30_transcription_0_k_PROTEIN_VEGFSignal=1.0;
	% Local Parameter:   id =  c_PROTEIN_VEGFSignal, name = c_PROTEIN_VEGFSignal
	reaction_GENE_M_Sm30_transcription_0_c_PROTEIN_VEGFSignal=1.0;

	reaction_GENE_M_Sm30_transcription_0=reaction_GENE_M_Sm30_transcription_0_k_PROTEIN_VEGFSignal*x(163)/(reaction_GENE_M_Sm30_transcription_0_c_PROTEIN_VEGFSignal+x(163));

% Reaction: id = GENE_M_Sm50_transcription_0, name = GENE_M_Sm50_transcription	% Local Parameter:   id =  k_PROTEIN_Ets1, name = k_PROTEIN_Ets1
	reaction_GENE_M_Sm50_transcription_0_k_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Ets1, name = c_PROTEIN_Ets1
	reaction_GENE_M_Sm50_transcription_0_c_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  k_PROTEIN_Hex, name = k_PROTEIN_Hex
	reaction_GENE_M_Sm50_transcription_0_k_PROTEIN_Hex=1.0;
	% Local Parameter:   id =  c_PROTEIN_Hex, name = c_PROTEIN_Hex
	reaction_GENE_M_Sm50_transcription_0_c_PROTEIN_Hex=1.0;
	% Local Parameter:   id =  k_PROTEIN_Alx1, name = k_PROTEIN_Alx1
	reaction_GENE_M_Sm50_transcription_0_k_PROTEIN_Alx1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Alx1, name = c_PROTEIN_Alx1
	reaction_GENE_M_Sm50_transcription_0_c_PROTEIN_Alx1=1.0;
	% Local Parameter:   id =  k_PROTEIN_Dri, name = k_PROTEIN_Dri
	reaction_GENE_M_Sm50_transcription_0_k_PROTEIN_Dri=1.0;
	% Local Parameter:   id =  c_PROTEIN_Dri, name = c_PROTEIN_Dri
	reaction_GENE_M_Sm50_transcription_0_c_PROTEIN_Dri=1.0;
	% Local Parameter:   id =  k_PROTEIN_Erg, name = k_PROTEIN_Erg
	reaction_GENE_M_Sm50_transcription_0_k_PROTEIN_Erg=1.0;
	% Local Parameter:   id =  c_PROTEIN_Erg, name = c_PROTEIN_Erg
	reaction_GENE_M_Sm50_transcription_0_c_PROTEIN_Erg=1.0;
	% Local Parameter:   id =  k_PROTEIN_VEGFSignal, name = k_PROTEIN_VEGFSignal
	reaction_GENE_M_Sm50_transcription_0_k_PROTEIN_VEGFSignal=1.0;
	% Local Parameter:   id =  c_PROTEIN_VEGFSignal, name = c_PROTEIN_VEGFSignal
	reaction_GENE_M_Sm50_transcription_0_c_PROTEIN_VEGFSignal=1.0;
	% Local Parameter:   id =  k_PROTEIN_Tel, name = k_PROTEIN_Tel
	reaction_GENE_M_Sm50_transcription_0_k_PROTEIN_Tel=1.0;
	% Local Parameter:   id =  c_PROTEIN_Tel, name = c_PROTEIN_Tel
	reaction_GENE_M_Sm50_transcription_0_c_PROTEIN_Tel=1.0;
	% Local Parameter:   id =  k_PROTEIN_Hnf6, name = k_PROTEIN_Hnf6
	reaction_GENE_M_Sm50_transcription_0_k_PROTEIN_Hnf6=1.0;
	% Local Parameter:   id =  c_PROTEIN_Hnf6, name = c_PROTEIN_Hnf6
	reaction_GENE_M_Sm50_transcription_0_c_PROTEIN_Hnf6=1.0;

	reaction_GENE_M_Sm50_transcription_0=reaction_GENE_M_Sm50_transcription_0_k_PROTEIN_Dri*x(97)/(reaction_GENE_M_Sm50_transcription_0_c_PROTEIN_Dri+x(97))+reaction_GENE_M_Sm50_transcription_0_k_PROTEIN_Hnf6*x(120)/(reaction_GENE_M_Sm50_transcription_0_c_PROTEIN_Hnf6+x(120))+reaction_GENE_M_Sm50_transcription_0_k_PROTEIN_Ets1*x(100)/(reaction_GENE_M_Sm50_transcription_0_c_PROTEIN_Ets1+x(100))+reaction_GENE_M_Sm50_transcription_0_k_PROTEIN_Alx1*x(87)/(reaction_GENE_M_Sm50_transcription_0_c_PROTEIN_Alx1+x(87))+reaction_GENE_M_Sm50_transcription_0_k_PROTEIN_Tel*x(146)/(reaction_GENE_M_Sm50_transcription_0_c_PROTEIN_Tel+x(146))+reaction_GENE_M_Sm50_transcription_0_k_PROTEIN_Hex*x(119)/(reaction_GENE_M_Sm50_transcription_0_c_PROTEIN_Hex+x(119))+reaction_GENE_M_Sm50_transcription_0_k_PROTEIN_Erg*x(99)/(reaction_GENE_M_Sm50_transcription_0_c_PROTEIN_Erg+x(99))+reaction_GENE_M_Sm50_transcription_0_k_PROTEIN_VEGFSignal*x(163)/(reaction_GENE_M_Sm50_transcription_0_c_PROTEIN_VEGFSignal+x(163));

% Reaction: id = GENE_M_Snail_transcription_0, name = GENE_M_Snail_transcription	% Local Parameter:   id =  k_PROTEIN_Hex, name = k_PROTEIN_Hex
	reaction_GENE_M_Snail_transcription_0_k_PROTEIN_Hex=1.0;
	% Local Parameter:   id =  c_PROTEIN_Hex, name = c_PROTEIN_Hex
	reaction_GENE_M_Snail_transcription_0_c_PROTEIN_Hex=1.0;

	reaction_GENE_M_Snail_transcription_0=reaction_GENE_M_Snail_transcription_0_k_PROTEIN_Hex*x(119)/(reaction_GENE_M_Snail_transcription_0_c_PROTEIN_Hex+x(119));

% Reaction: id = GENE_M_SoxB1_transcription_0, name = GENE_M_SoxB1_transcription	% Local Parameter:   id =  k_PROTEIN_UbiqSoxB1, name = k_PROTEIN_UbiqSoxB1
	reaction_GENE_M_SoxB1_transcription_0_k_PROTEIN_UbiqSoxB1=1.0;
	% Local Parameter:   id =  c_PROTEIN_UbiqSoxB1, name = c_PROTEIN_UbiqSoxB1
	reaction_GENE_M_SoxB1_transcription_0_c_PROTEIN_UbiqSoxB1=1.0;
	% Local Parameter:   id =  k_PROTEIN_SoxB1, name = k_PROTEIN_SoxB1
	reaction_GENE_M_SoxB1_transcription_0_k_PROTEIN_SoxB1=1.0;
	% Local Parameter:   id =  c_PROTEIN_SoxB1, name = c_PROTEIN_SoxB1
	reaction_GENE_M_SoxB1_transcription_0_c_PROTEIN_SoxB1=1.0;

	reaction_GENE_M_SoxB1_transcription_0=reaction_GENE_M_SoxB1_transcription_0_k_PROTEIN_UbiqSoxB1*x(159)/(reaction_GENE_M_SoxB1_transcription_0_c_PROTEIN_UbiqSoxB1+x(159))*reaction_GENE_M_SoxB1_transcription_0_k_PROTEIN_SoxB1*reaction_GENE_M_SoxB1_transcription_0_c_PROTEIN_SoxB1/(reaction_GENE_M_SoxB1_transcription_0_c_PROTEIN_SoxB1+x(139));

% Reaction: id = GENE_M_SoxC_transcription_0, name = GENE_M_SoxC_transcription	% Local Parameter:   id =  k_PROTEIN_SoxC, name = k_PROTEIN_SoxC
	reaction_GENE_M_SoxC_transcription_0_k_PROTEIN_SoxC=1.0;
	% Local Parameter:   id =  c_PROTEIN_SoxC, name = c_PROTEIN_SoxC
	reaction_GENE_M_SoxC_transcription_0_c_PROTEIN_SoxC=1.0;
	% Local Parameter:   id =  k_PROTEIN_HesC, name = k_PROTEIN_HesC
	reaction_GENE_M_SoxC_transcription_0_k_PROTEIN_HesC=1.0;
	% Local Parameter:   id =  c_PROTEIN_HesC, name = c_PROTEIN_HesC
	reaction_GENE_M_SoxC_transcription_0_c_PROTEIN_HesC=1.0;
	% Local Parameter:   id =  k_PROTEIN_UbiqSoxC, name = k_PROTEIN_UbiqSoxC
	reaction_GENE_M_SoxC_transcription_0_k_PROTEIN_UbiqSoxC=1.0;
	% Local Parameter:   id =  c_PROTEIN_UbiqSoxC, name = c_PROTEIN_UbiqSoxC
	reaction_GENE_M_SoxC_transcription_0_c_PROTEIN_UbiqSoxC=1.0;

	reaction_GENE_M_SoxC_transcription_0=reaction_GENE_M_SoxC_transcription_0_k_PROTEIN_UbiqSoxC*x(160)/(reaction_GENE_M_SoxC_transcription_0_c_PROTEIN_UbiqSoxC+x(160))*reaction_GENE_M_SoxC_transcription_0_k_PROTEIN_HesC*reaction_GENE_M_SoxC_transcription_0_c_PROTEIN_HesC/(reaction_GENE_M_SoxC_transcription_0_c_PROTEIN_HesC+x(118))*reaction_GENE_M_SoxC_transcription_0_k_PROTEIN_SoxC*reaction_GENE_M_SoxC_transcription_0_c_PROTEIN_SoxC/(reaction_GENE_M_SoxC_transcription_0_c_PROTEIN_SoxC+x(140));

% Reaction: id = GENE_M_SuTx_transcription_0, name = GENE_M_SuTx_transcription	% Local Parameter:   id =  k_PROTEIN_GataE, name = k_PROTEIN_GataE
	reaction_GENE_M_SuTx_transcription_0_k_PROTEIN_GataE=1.0;
	% Local Parameter:   id =  c_PROTEIN_GataE, name = c_PROTEIN_GataE
	reaction_GENE_M_SuTx_transcription_0_c_PROTEIN_GataE=1.0;
	% Local Parameter:   id =  k_PROTEIN_Gcm, name = k_PROTEIN_Gcm
	reaction_GENE_M_SuTx_transcription_0_k_PROTEIN_Gcm=1.0;
	% Local Parameter:   id =  c_PROTEIN_Gcm, name = c_PROTEIN_Gcm
	reaction_GENE_M_SuTx_transcription_0_c_PROTEIN_Gcm=1.0;

	reaction_GENE_M_SuTx_transcription_0=reaction_GENE_M_SuTx_transcription_0_k_PROTEIN_Gcm*x(113)/(reaction_GENE_M_SuTx_transcription_0_c_PROTEIN_Gcm+x(113))+reaction_GENE_M_SuTx_transcription_0_k_PROTEIN_GataE*x(111)/(reaction_GENE_M_SuTx_transcription_0_c_PROTEIN_GataE+x(111));

% Reaction: id = GENE_M_TBr_transcription_0, name = GENE_M_TBr_transcription	% Local Parameter:   id =  k_PROTEIN_Ets1, name = k_PROTEIN_Ets1
	reaction_GENE_M_TBr_transcription_0_k_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Ets1, name = c_PROTEIN_Ets1
	reaction_GENE_M_TBr_transcription_0_c_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  k_PROTEIN_TBr, name = k_PROTEIN_TBr
	reaction_GENE_M_TBr_transcription_0_k_PROTEIN_TBr=1.0;
	% Local Parameter:   id =  c_PROTEIN_TBr, name = c_PROTEIN_TBr
	reaction_GENE_M_TBr_transcription_0_c_PROTEIN_TBr=1.0;
	% Local Parameter:   id =  k_PROTEIN_HesC, name = k_PROTEIN_HesC
	reaction_GENE_M_TBr_transcription_0_k_PROTEIN_HesC=1.0;
	% Local Parameter:   id =  c_PROTEIN_HesC, name = c_PROTEIN_HesC
	reaction_GENE_M_TBr_transcription_0_c_PROTEIN_HesC=1.0;

	reaction_GENE_M_TBr_transcription_0=reaction_GENE_M_TBr_transcription_0_k_PROTEIN_Ets1*x(100)/(reaction_GENE_M_TBr_transcription_0_c_PROTEIN_Ets1+x(100))*reaction_GENE_M_TBr_transcription_0_k_PROTEIN_HesC*reaction_GENE_M_TBr_transcription_0_c_PROTEIN_HesC/(reaction_GENE_M_TBr_transcription_0_c_PROTEIN_HesC+x(118))*reaction_GENE_M_TBr_transcription_0_k_PROTEIN_TBr*reaction_GENE_M_TBr_transcription_0_c_PROTEIN_TBr/(reaction_GENE_M_TBr_transcription_0_c_PROTEIN_TBr+x(144));

% Reaction: id = GENE_M_Tel_transcription_0, name = GENE_M_Tel_transcription	% Local Parameter:   id =  k_PROTEIN_UbiqTel, name = k_PROTEIN_UbiqTel
	reaction_GENE_M_Tel_transcription_0_k_PROTEIN_UbiqTel=1.0;
	% Local Parameter:   id =  c_PROTEIN_UbiqTel, name = c_PROTEIN_UbiqTel
	reaction_GENE_M_Tel_transcription_0_c_PROTEIN_UbiqTel=1.0;
	% Local Parameter:   id =  k_PROTEIN_Tel, name = k_PROTEIN_Tel
	reaction_GENE_M_Tel_transcription_0_k_PROTEIN_Tel=1.0;
	% Local Parameter:   id =  c_PROTEIN_Tel, name = c_PROTEIN_Tel
	reaction_GENE_M_Tel_transcription_0_c_PROTEIN_Tel=1.0;
	% Local Parameter:   id =  k_PROTEIN_HesC, name = k_PROTEIN_HesC
	reaction_GENE_M_Tel_transcription_0_k_PROTEIN_HesC=1.0;
	% Local Parameter:   id =  c_PROTEIN_HesC, name = c_PROTEIN_HesC
	reaction_GENE_M_Tel_transcription_0_c_PROTEIN_HesC=1.0;

	reaction_GENE_M_Tel_transcription_0=reaction_GENE_M_Tel_transcription_0_k_PROTEIN_UbiqTel*x(161)/(reaction_GENE_M_Tel_transcription_0_c_PROTEIN_UbiqTel+x(161))*reaction_GENE_M_Tel_transcription_0_k_PROTEIN_Tel*reaction_GENE_M_Tel_transcription_0_c_PROTEIN_Tel/(reaction_GENE_M_Tel_transcription_0_c_PROTEIN_Tel+x(146))*reaction_GENE_M_Tel_transcription_0_k_PROTEIN_HesC*reaction_GENE_M_Tel_transcription_0_c_PROTEIN_HesC/(reaction_GENE_M_Tel_transcription_0_c_PROTEIN_HesC+x(118));

% Reaction: id = GENE_M_Tgif_transcription_0, name = GENE_M_Tgif_transcription	% Local Parameter:   id =  k_PROTEIN_Ets1, name = k_PROTEIN_Ets1
	reaction_GENE_M_Tgif_transcription_0_k_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Ets1, name = c_PROTEIN_Ets1
	reaction_GENE_M_Tgif_transcription_0_c_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  k_PROTEIN_Hex, name = k_PROTEIN_Hex
	reaction_GENE_M_Tgif_transcription_0_k_PROTEIN_Hex=1.0;
	% Local Parameter:   id =  c_PROTEIN_Hex, name = c_PROTEIN_Hex
	reaction_GENE_M_Tgif_transcription_0_c_PROTEIN_Hex=1.0;
	% Local Parameter:   id =  k_PROTEIN_Erg, name = k_PROTEIN_Erg
	reaction_GENE_M_Tgif_transcription_0_k_PROTEIN_Erg=1.0;
	% Local Parameter:   id =  c_PROTEIN_Erg, name = c_PROTEIN_Erg
	reaction_GENE_M_Tgif_transcription_0_c_PROTEIN_Erg=1.0;
	% Local Parameter:   id =  k_PROTEIN_Tgif, name = k_PROTEIN_Tgif
	reaction_GENE_M_Tgif_transcription_0_k_PROTEIN_Tgif=1.0;
	% Local Parameter:   id =  c_PROTEIN_Tgif, name = c_PROTEIN_Tgif
	reaction_GENE_M_Tgif_transcription_0_c_PROTEIN_Tgif=1.0;

	reaction_GENE_M_Tgif_transcription_0=reaction_GENE_M_Tgif_transcription_0_k_PROTEIN_Tgif*x(147)/(reaction_GENE_M_Tgif_transcription_0_c_PROTEIN_Tgif+x(147))+reaction_GENE_M_Tgif_transcription_0_k_PROTEIN_Ets1*x(100)/(reaction_GENE_M_Tgif_transcription_0_c_PROTEIN_Ets1+x(100))+reaction_GENE_M_Tgif_transcription_0_k_PROTEIN_Erg*x(99)/(reaction_GENE_M_Tgif_transcription_0_c_PROTEIN_Erg+x(99))+reaction_GENE_M_Tgif_transcription_0_k_PROTEIN_Hex*x(119)/(reaction_GENE_M_Tgif_transcription_0_c_PROTEIN_Hex+x(119));

% Reaction: id = GENE_M_VEGFR_transcription_0, name = GENE_M_VEGFR_transcription	% Local Parameter:   id =  k_PROTEIN_Hex, name = k_PROTEIN_Hex
	reaction_GENE_M_VEGFR_transcription_0_k_PROTEIN_Hex=1.0;
	% Local Parameter:   id =  c_PROTEIN_Hex, name = c_PROTEIN_Hex
	reaction_GENE_M_VEGFR_transcription_0_c_PROTEIN_Hex=1.0;
	% Local Parameter:   id =  k_PROTEIN_Ets1, name = k_PROTEIN_Ets1
	reaction_GENE_M_VEGFR_transcription_0_k_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Ets1, name = c_PROTEIN_Ets1
	reaction_GENE_M_VEGFR_transcription_0_c_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  k_PROTEIN_Dri, name = k_PROTEIN_Dri
	reaction_GENE_M_VEGFR_transcription_0_k_PROTEIN_Dri=1.0;
	% Local Parameter:   id =  c_PROTEIN_Dri, name = c_PROTEIN_Dri
	reaction_GENE_M_VEGFR_transcription_0_c_PROTEIN_Dri=1.0;
	% Local Parameter:   id =  k_PROTEIN_Alx1, name = k_PROTEIN_Alx1
	reaction_GENE_M_VEGFR_transcription_0_k_PROTEIN_Alx1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Alx1, name = c_PROTEIN_Alx1
	reaction_GENE_M_VEGFR_transcription_0_c_PROTEIN_Alx1=1.0;

	reaction_GENE_M_VEGFR_transcription_0=reaction_GENE_M_VEGFR_transcription_0_k_PROTEIN_Alx1*x(87)/(reaction_GENE_M_VEGFR_transcription_0_c_PROTEIN_Alx1+x(87))+reaction_GENE_M_VEGFR_transcription_0_k_PROTEIN_Dri*x(97)/(reaction_GENE_M_VEGFR_transcription_0_c_PROTEIN_Dri+x(97))+reaction_GENE_M_VEGFR_transcription_0_k_PROTEIN_Ets1*x(100)/(reaction_GENE_M_VEGFR_transcription_0_c_PROTEIN_Ets1+x(100))+reaction_GENE_M_VEGFR_transcription_0_k_PROTEIN_Hex*x(119)/(reaction_GENE_M_VEGFR_transcription_0_c_PROTEIN_Hex+x(119));

% Reaction: id = GENE_M_Wnt8_transcription_0, name = GENE_M_Wnt8_transcription	% Local Parameter:   id =  k_PROTEIN_GroTCF, name = k_PROTEIN_GroTCF
	reaction_GENE_M_Wnt8_transcription_0_k_PROTEIN_GroTCF=1.0;
	% Local Parameter:   id =  c_PROTEIN_GroTCF, name = c_PROTEIN_GroTCF
	reaction_GENE_M_Wnt8_transcription_0_c_PROTEIN_GroTCF=1.0;
	% Local Parameter:   id =  k_PROTEIN_Blimp1, name = k_PROTEIN_Blimp1
	reaction_GENE_M_Wnt8_transcription_0_k_PROTEIN_Blimp1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Blimp1, name = c_PROTEIN_Blimp1
	reaction_GENE_M_Wnt8_transcription_0_c_PROTEIN_Blimp1=1.0;
	% Local Parameter:   id =  k_PROTEIN_nBTCF, name = k_PROTEIN_nBTCF
	reaction_GENE_M_Wnt8_transcription_0_k_PROTEIN_nBTCF=1.0;
	% Local Parameter:   id =  c_PROTEIN_nBTCF, name = c_PROTEIN_nBTCF
	reaction_GENE_M_Wnt8_transcription_0_c_PROTEIN_nBTCF=1.0;

	reaction_GENE_M_Wnt8_transcription_0=(reaction_GENE_M_Wnt8_transcription_0_k_PROTEIN_nBTCF*x(168)/(reaction_GENE_M_Wnt8_transcription_0_c_PROTEIN_nBTCF+x(168))+reaction_GENE_M_Wnt8_transcription_0_k_PROTEIN_Blimp1*x(89)/(reaction_GENE_M_Wnt8_transcription_0_c_PROTEIN_Blimp1+x(89)))*reaction_GENE_M_Wnt8_transcription_0_k_PROTEIN_GroTCF*reaction_GENE_M_Wnt8_transcription_0_c_PROTEIN_GroTCF/(reaction_GENE_M_Wnt8_transcription_0_c_PROTEIN_GroTCF+x(116));

% Reaction: id = GENE_M_z13_transcription_0, name = GENE_M_z13_transcription	% Local Parameter:   id =  k_PROTEIN_GroTCF, name = k_PROTEIN_GroTCF
	reaction_GENE_M_z13_transcription_0_k_PROTEIN_GroTCF=1.0;
	% Local Parameter:   id =  c_PROTEIN_GroTCF, name = c_PROTEIN_GroTCF
	reaction_GENE_M_z13_transcription_0_c_PROTEIN_GroTCF=1.0;
	% Local Parameter:   id =  k_PROTEIN_nBTCF, name = k_PROTEIN_nBTCF
	reaction_GENE_M_z13_transcription_0_k_PROTEIN_nBTCF=1.0;
	% Local Parameter:   id =  c_PROTEIN_nBTCF, name = c_PROTEIN_nBTCF
	reaction_GENE_M_z13_transcription_0_c_PROTEIN_nBTCF=1.0;
	% Local Parameter:   id =  k_PROTEIN_Hnf6, name = k_PROTEIN_Hnf6
	reaction_GENE_M_z13_transcription_0_k_PROTEIN_Hnf6=1.0;
	% Local Parameter:   id =  c_PROTEIN_Hnf6, name = c_PROTEIN_Hnf6
	reaction_GENE_M_z13_transcription_0_c_PROTEIN_Hnf6=1.0;

	reaction_GENE_M_z13_transcription_0=reaction_GENE_M_z13_transcription_0_k_PROTEIN_nBTCF*x(168)/(reaction_GENE_M_z13_transcription_0_c_PROTEIN_nBTCF+x(168))*reaction_GENE_M_z13_transcription_0_k_PROTEIN_GroTCF*reaction_GENE_M_z13_transcription_0_c_PROTEIN_GroTCF/(reaction_GENE_M_z13_transcription_0_c_PROTEIN_GroTCF+x(116))*reaction_GENE_M_z13_transcription_0_k_PROTEIN_Hnf6*reaction_GENE_M_z13_transcription_0_c_PROTEIN_Hnf6/(reaction_GENE_M_z13_transcription_0_c_PROTEIN_Hnf6+x(120));

% Reaction: id = GENE_P_Alx1_transcription_0, name = GENE_P_Alx1_transcription	% Local Parameter:   id =  k_PROTEIN_UbiqAlx1, name = k_PROTEIN_UbiqAlx1
	reaction_GENE_P_Alx1_transcription_0_k_PROTEIN_UbiqAlx1=1.0;
	% Local Parameter:   id =  c_PROTEIN_UbiqAlx1, name = c_PROTEIN_UbiqAlx1
	reaction_GENE_P_Alx1_transcription_0_c_PROTEIN_UbiqAlx1=1.0;
	% Local Parameter:   id =  k_PROTEIN_Ets1, name = k_PROTEIN_Ets1
	reaction_GENE_P_Alx1_transcription_0_k_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Ets1, name = c_PROTEIN_Ets1
	reaction_GENE_P_Alx1_transcription_0_c_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  k_PROTEIN_Gcm, name = k_PROTEIN_Gcm
	reaction_GENE_P_Alx1_transcription_0_k_PROTEIN_Gcm=1.0;
	% Local Parameter:   id =  c_PROTEIN_Gcm, name = c_PROTEIN_Gcm
	reaction_GENE_P_Alx1_transcription_0_c_PROTEIN_Gcm=1.0;
	% Local Parameter:   id =  k_PROTEIN_HesC, name = k_PROTEIN_HesC
	reaction_GENE_P_Alx1_transcription_0_k_PROTEIN_HesC=1.0;
	% Local Parameter:   id =  c_PROTEIN_HesC, name = c_PROTEIN_HesC
	reaction_GENE_P_Alx1_transcription_0_c_PROTEIN_HesC=1.0;
	% Local Parameter:   id =  k_PROTEIN_Tgif, name = k_PROTEIN_Tgif
	reaction_GENE_P_Alx1_transcription_0_k_PROTEIN_Tgif=1.0;
	% Local Parameter:   id =  c_PROTEIN_Tgif, name = c_PROTEIN_Tgif
	reaction_GENE_P_Alx1_transcription_0_c_PROTEIN_Tgif=1.0;

	reaction_GENE_P_Alx1_transcription_0=(reaction_GENE_P_Alx1_transcription_0_k_PROTEIN_Ets1*x(183)/(reaction_GENE_P_Alx1_transcription_0_c_PROTEIN_Ets1+x(183))+reaction_GENE_P_Alx1_transcription_0_k_PROTEIN_UbiqAlx1*x(234)/(reaction_GENE_P_Alx1_transcription_0_c_PROTEIN_UbiqAlx1+x(234))+reaction_GENE_P_Alx1_transcription_0_k_PROTEIN_Tgif*x(230)/(reaction_GENE_P_Alx1_transcription_0_c_PROTEIN_Tgif+x(230)))*reaction_GENE_P_Alx1_transcription_0_k_PROTEIN_Gcm*reaction_GENE_P_Alx1_transcription_0_c_PROTEIN_Gcm/(reaction_GENE_P_Alx1_transcription_0_c_PROTEIN_Gcm+x(196))*reaction_GENE_P_Alx1_transcription_0_k_PROTEIN_HesC*reaction_GENE_P_Alx1_transcription_0_c_PROTEIN_HesC/(reaction_GENE_P_Alx1_transcription_0_c_PROTEIN_HesC+x(201));

% Reaction: id = GENE_P_Apobec_transcription_0, name = GENE_P_Apobec_transcription	% Local Parameter:   id =  k_PROTEIN_Bra, name = k_PROTEIN_Bra
	reaction_GENE_P_Apobec_transcription_0_k_PROTEIN_Bra=1.0;
	% Local Parameter:   id =  c_PROTEIN_Bra, name = c_PROTEIN_Bra
	reaction_GENE_P_Apobec_transcription_0_c_PROTEIN_Bra=1.0;
	% Local Parameter:   id =  k_PROTEIN_Hox, name = k_PROTEIN_Hox
	reaction_GENE_P_Apobec_transcription_0_k_PROTEIN_Hox=1.0;
	% Local Parameter:   id =  c_PROTEIN_Hox, name = c_PROTEIN_Hox
	reaction_GENE_P_Apobec_transcription_0_c_PROTEIN_Hox=1.0;

	reaction_GENE_P_Apobec_transcription_0=reaction_GENE_P_Apobec_transcription_0_k_PROTEIN_Bra*x(173)/(reaction_GENE_P_Apobec_transcription_0_c_PROTEIN_Bra+x(173))*reaction_GENE_P_Apobec_transcription_0_k_PROTEIN_Hox*reaction_GENE_P_Apobec_transcription_0_c_PROTEIN_Hox/(reaction_GENE_P_Apobec_transcription_0_c_PROTEIN_Hox+x(204));

% Reaction: id = GENE_P_Blimp1_transcription_0, name = GENE_P_Blimp1_transcription	% Local Parameter:   id =  k_PROTEIN_Blimp1, name = k_PROTEIN_Blimp1
	reaction_GENE_P_Blimp1_transcription_0_k_PROTEIN_Blimp1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Blimp1, name = c_PROTEIN_Blimp1
	reaction_GENE_P_Blimp1_transcription_0_c_PROTEIN_Blimp1=1.0;
	% Local Parameter:   id =  k_PROTEIN_nBTCF, name = k_PROTEIN_nBTCF
	reaction_GENE_P_Blimp1_transcription_0_k_PROTEIN_nBTCF=1.0;
	% Local Parameter:   id =  c_PROTEIN_nBTCF, name = c_PROTEIN_nBTCF
	reaction_GENE_P_Blimp1_transcription_0_c_PROTEIN_nBTCF=1.0;
	% Local Parameter:   id =  k_PROTEIN_Brn, name = k_PROTEIN_Brn
	reaction_GENE_P_Blimp1_transcription_0_k_PROTEIN_Brn=1.0;
	% Local Parameter:   id =  c_PROTEIN_Brn, name = c_PROTEIN_Brn
	reaction_GENE_P_Blimp1_transcription_0_c_PROTEIN_Brn=1.0;
	% Local Parameter:   id =  k_PROTEIN_GroTCF, name = k_PROTEIN_GroTCF
	reaction_GENE_P_Blimp1_transcription_0_k_PROTEIN_GroTCF=1.0;
	% Local Parameter:   id =  c_PROTEIN_GroTCF, name = c_PROTEIN_GroTCF
	reaction_GENE_P_Blimp1_transcription_0_c_PROTEIN_GroTCF=1.0;
	% Local Parameter:   id =  k_PROTEIN_Eve, name = k_PROTEIN_Eve
	reaction_GENE_P_Blimp1_transcription_0_k_PROTEIN_Eve=1.0;
	% Local Parameter:   id =  c_PROTEIN_Eve, name = c_PROTEIN_Eve
	reaction_GENE_P_Blimp1_transcription_0_c_PROTEIN_Eve=1.0;
	% Local Parameter:   id =  k_PROTEIN_Otx, name = k_PROTEIN_Otx
	reaction_GENE_P_Blimp1_transcription_0_k_PROTEIN_Otx=1.0;
	% Local Parameter:   id =  c_PROTEIN_Otx, name = c_PROTEIN_Otx
	reaction_GENE_P_Blimp1_transcription_0_c_PROTEIN_Otx=1.0;
	% Local Parameter:   id =  k_PROTEIN_GataE, name = k_PROTEIN_GataE
	reaction_GENE_P_Blimp1_transcription_0_k_PROTEIN_GataE=1.0;
	% Local Parameter:   id =  c_PROTEIN_GataE, name = c_PROTEIN_GataE
	reaction_GENE_P_Blimp1_transcription_0_c_PROTEIN_GataE=1.0;

	reaction_GENE_P_Blimp1_transcription_0=(reaction_GENE_P_Blimp1_transcription_0_k_PROTEIN_Otx*x(215)/(reaction_GENE_P_Blimp1_transcription_0_c_PROTEIN_Otx+x(215))+reaction_GENE_P_Blimp1_transcription_0_k_PROTEIN_Brn*x(174)/(reaction_GENE_P_Blimp1_transcription_0_c_PROTEIN_Brn+x(174))+reaction_GENE_P_Blimp1_transcription_0_k_PROTEIN_GataE*x(194)/(reaction_GENE_P_Blimp1_transcription_0_c_PROTEIN_GataE+x(194))+reaction_GENE_P_Blimp1_transcription_0_k_PROTEIN_nBTCF*x(250)/(reaction_GENE_P_Blimp1_transcription_0_c_PROTEIN_nBTCF+x(250))+reaction_GENE_P_Blimp1_transcription_0_k_PROTEIN_Eve*x(184)/(reaction_GENE_P_Blimp1_transcription_0_c_PROTEIN_Eve+x(184)))*reaction_GENE_P_Blimp1_transcription_0_k_PROTEIN_Blimp1*reaction_GENE_P_Blimp1_transcription_0_c_PROTEIN_Blimp1/(reaction_GENE_P_Blimp1_transcription_0_c_PROTEIN_Blimp1+x(172))*reaction_GENE_P_Blimp1_transcription_0_k_PROTEIN_GroTCF*reaction_GENE_P_Blimp1_transcription_0_c_PROTEIN_GroTCF/(reaction_GENE_P_Blimp1_transcription_0_c_PROTEIN_GroTCF+x(199));

% Reaction: id = GENE_P_Bra_transcription_0, name = GENE_P_Bra_transcription	% Local Parameter:   id =  k_PROTEIN_GroTCF, name = k_PROTEIN_GroTCF
	reaction_GENE_P_Bra_transcription_0_k_PROTEIN_GroTCF=1.0;
	% Local Parameter:   id =  c_PROTEIN_GroTCF, name = c_PROTEIN_GroTCF
	reaction_GENE_P_Bra_transcription_0_c_PROTEIN_GroTCF=1.0;
	% Local Parameter:   id =  k_PROTEIN_Otx, name = k_PROTEIN_Otx
	reaction_GENE_P_Bra_transcription_0_k_PROTEIN_Otx=1.0;
	% Local Parameter:   id =  c_PROTEIN_Otx, name = c_PROTEIN_Otx
	reaction_GENE_P_Bra_transcription_0_c_PROTEIN_Otx=1.0;
	% Local Parameter:   id =  k_PROTEIN_GataE, name = k_PROTEIN_GataE
	reaction_GENE_P_Bra_transcription_0_k_PROTEIN_GataE=1.0;
	% Local Parameter:   id =  c_PROTEIN_GataE, name = c_PROTEIN_GataE
	reaction_GENE_P_Bra_transcription_0_c_PROTEIN_GataE=1.0;
	% Local Parameter:   id =  k_PROTEIN_nBTCF, name = k_PROTEIN_nBTCF
	reaction_GENE_P_Bra_transcription_0_k_PROTEIN_nBTCF=1.0;
	% Local Parameter:   id =  c_PROTEIN_nBTCF, name = c_PROTEIN_nBTCF
	reaction_GENE_P_Bra_transcription_0_c_PROTEIN_nBTCF=1.0;

	reaction_GENE_P_Bra_transcription_0=(reaction_GENE_P_Bra_transcription_0_k_PROTEIN_GataE*x(194)/(reaction_GENE_P_Bra_transcription_0_c_PROTEIN_GataE+x(194))+reaction_GENE_P_Bra_transcription_0_k_PROTEIN_nBTCF*x(250)/(reaction_GENE_P_Bra_transcription_0_c_PROTEIN_nBTCF+x(250))+reaction_GENE_P_Bra_transcription_0_k_PROTEIN_Otx*x(215)/(reaction_GENE_P_Bra_transcription_0_c_PROTEIN_Otx+x(215)))*reaction_GENE_P_Bra_transcription_0_k_PROTEIN_GroTCF*reaction_GENE_P_Bra_transcription_0_c_PROTEIN_GroTCF/(reaction_GENE_P_Bra_transcription_0_c_PROTEIN_GroTCF+x(199));

% Reaction: id = GENE_P_Brn_transcription_0, name = GENE_P_Brn_transcription	% Local Parameter:   id =  k_PROTEIN_GataE, name = k_PROTEIN_GataE
	reaction_GENE_P_Brn_transcription_0_k_PROTEIN_GataE=1.0;
	% Local Parameter:   id =  c_PROTEIN_GataE, name = c_PROTEIN_GataE
	reaction_GENE_P_Brn_transcription_0_c_PROTEIN_GataE=1.0;

	reaction_GENE_P_Brn_transcription_0=reaction_GENE_P_Brn_transcription_0_k_PROTEIN_GataE*x(194)/(reaction_GENE_P_Brn_transcription_0_c_PROTEIN_GataE+x(194));

% Reaction: id = GENE_P_CyP_transcription_0, name = GENE_P_CyP_transcription	% Local Parameter:   id =  k_PROTEIN_Ets1, name = k_PROTEIN_Ets1
	reaction_GENE_P_CyP_transcription_0_k_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Ets1, name = c_PROTEIN_Ets1
	reaction_GENE_P_CyP_transcription_0_c_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  k_PROTEIN_SoxB1, name = k_PROTEIN_SoxB1
	reaction_GENE_P_CyP_transcription_0_k_PROTEIN_SoxB1=1.0;
	% Local Parameter:   id =  c_PROTEIN_SoxB1, name = c_PROTEIN_SoxB1
	reaction_GENE_P_CyP_transcription_0_c_PROTEIN_SoxB1=1.0;
	% Local Parameter:   id =  k_PROTEIN_Dri, name = k_PROTEIN_Dri
	reaction_GENE_P_CyP_transcription_0_k_PROTEIN_Dri=1.0;
	% Local Parameter:   id =  c_PROTEIN_Dri, name = c_PROTEIN_Dri
	reaction_GENE_P_CyP_transcription_0_c_PROTEIN_Dri=1.0;

	reaction_GENE_P_CyP_transcription_0=(reaction_GENE_P_CyP_transcription_0_k_PROTEIN_Dri*x(180)/(reaction_GENE_P_CyP_transcription_0_c_PROTEIN_Dri+x(180))+reaction_GENE_P_CyP_transcription_0_k_PROTEIN_Ets1*x(183)/(reaction_GENE_P_CyP_transcription_0_c_PROTEIN_Ets1+x(183)))*reaction_GENE_P_CyP_transcription_0_k_PROTEIN_SoxB1*reaction_GENE_P_CyP_transcription_0_c_PROTEIN_SoxB1/(reaction_GENE_P_CyP_transcription_0_c_PROTEIN_SoxB1+x(222));

% Reaction: id = GENE_P_Delta_transcription_0, name = GENE_P_Delta_transcription	% Local Parameter:   id =  k_PROTEIN_Ets1, name = k_PROTEIN_Ets1
	reaction_GENE_P_Delta_transcription_0_k_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Ets1, name = c_PROTEIN_Ets1
	reaction_GENE_P_Delta_transcription_0_c_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  k_PROTEIN_HesC, name = k_PROTEIN_HesC
	reaction_GENE_P_Delta_transcription_0_k_PROTEIN_HesC=1.0;
	% Local Parameter:   id =  c_PROTEIN_HesC, name = c_PROTEIN_HesC
	reaction_GENE_P_Delta_transcription_0_c_PROTEIN_HesC=1.0;
	% Local Parameter:   id =  k_PROTEIN_UbiqDelta, name = k_PROTEIN_UbiqDelta
	reaction_GENE_P_Delta_transcription_0_k_PROTEIN_UbiqDelta=1.0;
	% Local Parameter:   id =  c_PROTEIN_UbiqDelta, name = c_PROTEIN_UbiqDelta
	reaction_GENE_P_Delta_transcription_0_c_PROTEIN_UbiqDelta=1.0;
	% Local Parameter:   id =  k_PROTEIN_UMADelta, name = k_PROTEIN_UMADelta
	reaction_GENE_P_Delta_transcription_0_k_PROTEIN_UMADelta=1.0;
	% Local Parameter:   id =  c_PROTEIN_UMADelta, name = c_PROTEIN_UMADelta
	reaction_GENE_P_Delta_transcription_0_c_PROTEIN_UMADelta=1.0;

	reaction_GENE_P_Delta_transcription_0=(reaction_GENE_P_Delta_transcription_0_k_PROTEIN_UbiqDelta*x(235)/(reaction_GENE_P_Delta_transcription_0_c_PROTEIN_UbiqDelta+x(235))+reaction_GENE_P_Delta_transcription_0_k_PROTEIN_UMADelta*x(231)/(reaction_GENE_P_Delta_transcription_0_c_PROTEIN_UMADelta+x(231))+reaction_GENE_P_Delta_transcription_0_k_PROTEIN_Ets1*x(183)/(reaction_GENE_P_Delta_transcription_0_c_PROTEIN_Ets1+x(183)))*reaction_GENE_P_Delta_transcription_0_k_PROTEIN_HesC*reaction_GENE_P_Delta_transcription_0_c_PROTEIN_HesC/(reaction_GENE_P_Delta_transcription_0_c_PROTEIN_HesC+x(201));

% Reaction: id = GENE_P_Dpt_transcription_0, name = GENE_P_Dpt_transcription	% Local Parameter:   id =  k_PROTEIN_Gcm, name = k_PROTEIN_Gcm
	reaction_GENE_P_Dpt_transcription_0_k_PROTEIN_Gcm=1.0;
	% Local Parameter:   id =  c_PROTEIN_Gcm, name = c_PROTEIN_Gcm
	reaction_GENE_P_Dpt_transcription_0_c_PROTEIN_Gcm=1.0;

	reaction_GENE_P_Dpt_transcription_0=reaction_GENE_P_Dpt_transcription_0_k_PROTEIN_Gcm*x(196)/(reaction_GENE_P_Dpt_transcription_0_c_PROTEIN_Gcm+x(196));

% Reaction: id = GENE_P_Dri_transcription_0, name = GENE_P_Dri_transcription	% Local Parameter:   id =  k_PROTEIN_Ets1, name = k_PROTEIN_Ets1
	reaction_GENE_P_Dri_transcription_0_k_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Ets1, name = c_PROTEIN_Ets1
	reaction_GENE_P_Dri_transcription_0_c_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  k_PROTEIN_Alx1, name = k_PROTEIN_Alx1
	reaction_GENE_P_Dri_transcription_0_k_PROTEIN_Alx1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Alx1, name = c_PROTEIN_Alx1
	reaction_GENE_P_Dri_transcription_0_c_PROTEIN_Alx1=1.0;

	reaction_GENE_P_Dri_transcription_0=reaction_GENE_P_Dri_transcription_0_k_PROTEIN_Alx1*x(170)/(reaction_GENE_P_Dri_transcription_0_c_PROTEIN_Alx1+x(170))+reaction_GENE_P_Dri_transcription_0_k_PROTEIN_Ets1*x(183)/(reaction_GENE_P_Dri_transcription_0_c_PROTEIN_Ets1+x(183));

% Reaction: id = GENE_P_Endo16_transcription_0, name = GENE_P_Endo16_transcription	% Local Parameter:   id =  k_PROTEIN_Otx, name = k_PROTEIN_Otx
	reaction_GENE_P_Endo16_transcription_0_k_PROTEIN_Otx=1.0;
	% Local Parameter:   id =  c_PROTEIN_Otx, name = c_PROTEIN_Otx
	reaction_GENE_P_Endo16_transcription_0_c_PROTEIN_Otx=1.0;
	% Local Parameter:   id =  k_PROTEIN_Brn, name = k_PROTEIN_Brn
	reaction_GENE_P_Endo16_transcription_0_k_PROTEIN_Brn=1.0;
	% Local Parameter:   id =  c_PROTEIN_Brn, name = c_PROTEIN_Brn
	reaction_GENE_P_Endo16_transcription_0_c_PROTEIN_Brn=1.0;

	reaction_GENE_P_Endo16_transcription_0=reaction_GENE_P_Endo16_transcription_0_k_PROTEIN_Otx*x(215)/(reaction_GENE_P_Endo16_transcription_0_c_PROTEIN_Otx+x(215))+reaction_GENE_P_Endo16_transcription_0_k_PROTEIN_Brn*x(174)/(reaction_GENE_P_Endo16_transcription_0_c_PROTEIN_Brn+x(174));

% Reaction: id = GENE_P_Erg_transcription_0, name = GENE_P_Erg_transcription	% Local Parameter:   id =  k_PROTEIN_Ets1, name = k_PROTEIN_Ets1
	reaction_GENE_P_Erg_transcription_0_k_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Ets1, name = c_PROTEIN_Ets1
	reaction_GENE_P_Erg_transcription_0_c_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  k_PROTEIN_Hex, name = k_PROTEIN_Hex
	reaction_GENE_P_Erg_transcription_0_k_PROTEIN_Hex=1.0;
	% Local Parameter:   id =  c_PROTEIN_Hex, name = c_PROTEIN_Hex
	reaction_GENE_P_Erg_transcription_0_c_PROTEIN_Hex=1.0;
	% Local Parameter:   id =  k_PROTEIN_TBr, name = k_PROTEIN_TBr
	reaction_GENE_P_Erg_transcription_0_k_PROTEIN_TBr=1.0;
	% Local Parameter:   id =  c_PROTEIN_TBr, name = c_PROTEIN_TBr
	reaction_GENE_P_Erg_transcription_0_c_PROTEIN_TBr=1.0;

	reaction_GENE_P_Erg_transcription_0=reaction_GENE_P_Erg_transcription_0_k_PROTEIN_TBr*x(227)/(reaction_GENE_P_Erg_transcription_0_c_PROTEIN_TBr+x(227))+reaction_GENE_P_Erg_transcription_0_k_PROTEIN_Ets1*x(183)/(reaction_GENE_P_Erg_transcription_0_c_PROTEIN_Ets1+x(183))+reaction_GENE_P_Erg_transcription_0_k_PROTEIN_Hex*x(202)/(reaction_GENE_P_Erg_transcription_0_c_PROTEIN_Hex+x(202));

% Reaction: id = GENE_P_Ets1_transcription_0, name = GENE_P_Ets1_transcription	% Local Parameter:   id =  k_PROTEIN_UbiqEts1, name = k_PROTEIN_UbiqEts1
	reaction_GENE_P_Ets1_transcription_0_k_PROTEIN_UbiqEts1=1.0;
	% Local Parameter:   id =  c_PROTEIN_UbiqEts1, name = c_PROTEIN_UbiqEts1
	reaction_GENE_P_Ets1_transcription_0_c_PROTEIN_UbiqEts1=1.0;
	% Local Parameter:   id =  k_PROTEIN_HesC, name = k_PROTEIN_HesC
	reaction_GENE_P_Ets1_transcription_0_k_PROTEIN_HesC=1.0;
	% Local Parameter:   id =  c_PROTEIN_HesC, name = c_PROTEIN_HesC
	reaction_GENE_P_Ets1_transcription_0_c_PROTEIN_HesC=1.0;

	reaction_GENE_P_Ets1_transcription_0=reaction_GENE_P_Ets1_transcription_0_k_PROTEIN_UbiqEts1*x(237)/(reaction_GENE_P_Ets1_transcription_0_c_PROTEIN_UbiqEts1+x(237))*reaction_GENE_P_Ets1_transcription_0_k_PROTEIN_HesC*reaction_GENE_P_Ets1_transcription_0_c_PROTEIN_HesC/(reaction_GENE_P_Ets1_transcription_0_c_PROTEIN_HesC+x(201));

% Reaction: id = GENE_P_Eve_transcription_0, name = GENE_P_Eve_transcription	% Local Parameter:   id =  k_PROTEIN_GroTCF, name = k_PROTEIN_GroTCF
	reaction_GENE_P_Eve_transcription_0_k_PROTEIN_GroTCF=1.0;
	% Local Parameter:   id =  c_PROTEIN_GroTCF, name = c_PROTEIN_GroTCF
	reaction_GENE_P_Eve_transcription_0_c_PROTEIN_GroTCF=1.0;
	% Local Parameter:   id =  k_PROTEIN_Blimp1, name = k_PROTEIN_Blimp1
	reaction_GENE_P_Eve_transcription_0_k_PROTEIN_Blimp1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Blimp1, name = c_PROTEIN_Blimp1
	reaction_GENE_P_Eve_transcription_0_c_PROTEIN_Blimp1=1.0;
	% Local Parameter:   id =  k_PROTEIN_nBTCF, name = k_PROTEIN_nBTCF
	reaction_GENE_P_Eve_transcription_0_k_PROTEIN_nBTCF=1.0;
	% Local Parameter:   id =  c_PROTEIN_nBTCF, name = c_PROTEIN_nBTCF
	reaction_GENE_P_Eve_transcription_0_c_PROTEIN_nBTCF=1.0;
	% Local Parameter:   id =  k_PROTEIN_Hox, name = k_PROTEIN_Hox
	reaction_GENE_P_Eve_transcription_0_k_PROTEIN_Hox=1.0;
	% Local Parameter:   id =  c_PROTEIN_Hox, name = c_PROTEIN_Hox
	reaction_GENE_P_Eve_transcription_0_c_PROTEIN_Hox=1.0;

	reaction_GENE_P_Eve_transcription_0=(reaction_GENE_P_Eve_transcription_0_k_PROTEIN_Blimp1*x(172)/(reaction_GENE_P_Eve_transcription_0_c_PROTEIN_Blimp1+x(172))+reaction_GENE_P_Eve_transcription_0_k_PROTEIN_nBTCF*x(250)/(reaction_GENE_P_Eve_transcription_0_c_PROTEIN_nBTCF+x(250)))*reaction_GENE_P_Eve_transcription_0_k_PROTEIN_GroTCF*reaction_GENE_P_Eve_transcription_0_c_PROTEIN_GroTCF/(reaction_GENE_P_Eve_transcription_0_c_PROTEIN_GroTCF+x(199))*reaction_GENE_P_Eve_transcription_0_k_PROTEIN_Hox*reaction_GENE_P_Eve_transcription_0_c_PROTEIN_Hox/(reaction_GENE_P_Eve_transcription_0_c_PROTEIN_Hox+x(204));

% Reaction: id = GENE_P_Ficolin_transcription_0, name = GENE_P_Ficolin_transcription	% Local Parameter:   id =  k_PROTEIN_Ets1, name = k_PROTEIN_Ets1
	reaction_GENE_P_Ficolin_transcription_0_k_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Ets1, name = c_PROTEIN_Ets1
	reaction_GENE_P_Ficolin_transcription_0_c_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  k_PROTEIN_Hex, name = k_PROTEIN_Hex
	reaction_GENE_P_Ficolin_transcription_0_k_PROTEIN_Hex=1.0;
	% Local Parameter:   id =  c_PROTEIN_Hex, name = c_PROTEIN_Hex
	reaction_GENE_P_Ficolin_transcription_0_c_PROTEIN_Hex=1.0;
	% Local Parameter:   id =  k_PROTEIN_Erg, name = k_PROTEIN_Erg
	reaction_GENE_P_Ficolin_transcription_0_k_PROTEIN_Erg=1.0;
	% Local Parameter:   id =  c_PROTEIN_Erg, name = c_PROTEIN_Erg
	reaction_GENE_P_Ficolin_transcription_0_c_PROTEIN_Erg=1.0;
	% Local Parameter:   id =  k_PROTEIN_Hnf6, name = k_PROTEIN_Hnf6
	reaction_GENE_P_Ficolin_transcription_0_k_PROTEIN_Hnf6=1.0;
	% Local Parameter:   id =  c_PROTEIN_Hnf6, name = c_PROTEIN_Hnf6
	reaction_GENE_P_Ficolin_transcription_0_c_PROTEIN_Hnf6=1.0;

	reaction_GENE_P_Ficolin_transcription_0=reaction_GENE_P_Ficolin_transcription_0_k_PROTEIN_Ets1*x(183)/(reaction_GENE_P_Ficolin_transcription_0_c_PROTEIN_Ets1+x(183))+reaction_GENE_P_Ficolin_transcription_0_k_PROTEIN_Hnf6*x(203)/(reaction_GENE_P_Ficolin_transcription_0_c_PROTEIN_Hnf6+x(203))+reaction_GENE_P_Ficolin_transcription_0_k_PROTEIN_Hex*x(202)/(reaction_GENE_P_Ficolin_transcription_0_c_PROTEIN_Hex+x(202))+reaction_GENE_P_Ficolin_transcription_0_k_PROTEIN_Erg*x(182)/(reaction_GENE_P_Ficolin_transcription_0_c_PROTEIN_Erg+x(182));

% Reaction: id = GENE_P_FoxA_transcription_0, name = GENE_P_FoxA_transcription	% Local Parameter:   id =  k_PROTEIN_GroTFC, name = k_PROTEIN_GroTFC
	reaction_GENE_P_FoxA_transcription_0_k_PROTEIN_GroTFC=1.0;
	% Local Parameter:   id =  c_PROTEIN_GroTFC, name = c_PROTEIN_GroTFC
	reaction_GENE_P_FoxA_transcription_0_c_PROTEIN_GroTFC=1.0;
	% Local Parameter:   id =  k_PROTEIN_FoxA, name = k_PROTEIN_FoxA
	reaction_GENE_P_FoxA_transcription_0_k_PROTEIN_FoxA=1.0;
	% Local Parameter:   id =  c_PROTEIN_FoxA, name = c_PROTEIN_FoxA
	reaction_GENE_P_FoxA_transcription_0_c_PROTEIN_FoxA=1.0;
	% Local Parameter:   id =  k_PROTEIN_nBTCF, name = k_PROTEIN_nBTCF
	reaction_GENE_P_FoxA_transcription_0_k_PROTEIN_nBTCF=1.0;
	% Local Parameter:   id =  c_PROTEIN_nBTCF, name = c_PROTEIN_nBTCF
	reaction_GENE_P_FoxA_transcription_0_c_PROTEIN_nBTCF=1.0;
	% Local Parameter:   id =  k_PROTEIN_Tgif, name = k_PROTEIN_Tgif
	reaction_GENE_P_FoxA_transcription_0_k_PROTEIN_Tgif=1.0;
	% Local Parameter:   id =  c_PROTEIN_Tgif, name = c_PROTEIN_Tgif
	reaction_GENE_P_FoxA_transcription_0_c_PROTEIN_Tgif=1.0;
	% Local Parameter:   id =  k_PROTEIN_Bra, name = k_PROTEIN_Bra
	reaction_GENE_P_FoxA_transcription_0_k_PROTEIN_Bra=1.0;
	% Local Parameter:   id =  c_PROTEIN_Bra, name = c_PROTEIN_Bra
	reaction_GENE_P_FoxA_transcription_0_c_PROTEIN_Bra=1.0;
	% Local Parameter:   id =  k_PROTEIN_Otx, name = k_PROTEIN_Otx
	reaction_GENE_P_FoxA_transcription_0_k_PROTEIN_Otx=1.0;
	% Local Parameter:   id =  c_PROTEIN_Otx, name = c_PROTEIN_Otx
	reaction_GENE_P_FoxA_transcription_0_c_PROTEIN_Otx=1.0;
	% Local Parameter:   id =  k_PROTEIN_GataE, name = k_PROTEIN_GataE
	reaction_GENE_P_FoxA_transcription_0_k_PROTEIN_GataE=1.0;
	% Local Parameter:   id =  c_PROTEIN_GataE, name = c_PROTEIN_GataE
	reaction_GENE_P_FoxA_transcription_0_c_PROTEIN_GataE=1.0;

	reaction_GENE_P_FoxA_transcription_0=(reaction_GENE_P_FoxA_transcription_0_k_PROTEIN_GataE*x(194)/(reaction_GENE_P_FoxA_transcription_0_c_PROTEIN_GataE+x(194))+reaction_GENE_P_FoxA_transcription_0_k_PROTEIN_nBTCF*x(250)/(reaction_GENE_P_FoxA_transcription_0_c_PROTEIN_nBTCF+x(250))+reaction_GENE_P_FoxA_transcription_0_k_PROTEIN_Otx*x(215)/(reaction_GENE_P_FoxA_transcription_0_c_PROTEIN_Otx+x(215))+reaction_GENE_P_FoxA_transcription_0_k_PROTEIN_Bra*x(173)/(reaction_GENE_P_FoxA_transcription_0_c_PROTEIN_Bra+x(173))+reaction_GENE_P_FoxA_transcription_0_k_PROTEIN_Tgif*x(230)/(reaction_GENE_P_FoxA_transcription_0_c_PROTEIN_Tgif+x(230)))*reaction_GENE_P_FoxA_transcription_0_k_PROTEIN_GroTFC*reaction_GENE_P_FoxA_transcription_0_c_PROTEIN_GroTFC/(reaction_GENE_P_FoxA_transcription_0_c_PROTEIN_GroTFC+x(200))*reaction_GENE_P_FoxA_transcription_0_k_PROTEIN_FoxA*reaction_GENE_P_FoxA_transcription_0_c_PROTEIN_FoxA/(reaction_GENE_P_FoxA_transcription_0_c_PROTEIN_FoxA+x(186));

% Reaction: id = GENE_P_FoxB_transcription_0, name = GENE_P_FoxB_transcription	% Local Parameter:   id =  k_PROTEIN_Ets1, name = k_PROTEIN_Ets1
	reaction_GENE_P_FoxB_transcription_0_k_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Ets1, name = c_PROTEIN_Ets1
	reaction_GENE_P_FoxB_transcription_0_c_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  k_PROTEIN_Dri, name = k_PROTEIN_Dri
	reaction_GENE_P_FoxB_transcription_0_k_PROTEIN_Dri=1.0;
	% Local Parameter:   id =  c_PROTEIN_Dri, name = c_PROTEIN_Dri
	reaction_GENE_P_FoxB_transcription_0_c_PROTEIN_Dri=1.0;
	% Local Parameter:   id =  k_PROTEIN_TBr, name = k_PROTEIN_TBr
	reaction_GENE_P_FoxB_transcription_0_k_PROTEIN_TBr=1.0;
	% Local Parameter:   id =  c_PROTEIN_TBr, name = c_PROTEIN_TBr
	reaction_GENE_P_FoxB_transcription_0_c_PROTEIN_TBr=1.0;
	% Local Parameter:   id =  k_PROTEIN_FoxB, name = k_PROTEIN_FoxB
	reaction_GENE_P_FoxB_transcription_0_k_PROTEIN_FoxB=1.0;
	% Local Parameter:   id =  c_PROTEIN_FoxB, name = c_PROTEIN_FoxB
	reaction_GENE_P_FoxB_transcription_0_c_PROTEIN_FoxB=1.0;
	% Local Parameter:   id =  k_PROTEIN_Alx1, name = k_PROTEIN_Alx1
	reaction_GENE_P_FoxB_transcription_0_k_PROTEIN_Alx1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Alx1, name = c_PROTEIN_Alx1
	reaction_GENE_P_FoxB_transcription_0_c_PROTEIN_Alx1=1.0;

	reaction_GENE_P_FoxB_transcription_0=(reaction_GENE_P_FoxB_transcription_0_k_PROTEIN_Alx1*x(170)/(reaction_GENE_P_FoxB_transcription_0_c_PROTEIN_Alx1+x(170))+reaction_GENE_P_FoxB_transcription_0_k_PROTEIN_Ets1*x(183)/(reaction_GENE_P_FoxB_transcription_0_c_PROTEIN_Ets1+x(183))+reaction_GENE_P_FoxB_transcription_0_k_PROTEIN_TBr*x(227)/(reaction_GENE_P_FoxB_transcription_0_c_PROTEIN_TBr+x(227))+reaction_GENE_P_FoxB_transcription_0_k_PROTEIN_Dri*x(180)/(reaction_GENE_P_FoxB_transcription_0_c_PROTEIN_Dri+x(180)))*reaction_GENE_P_FoxB_transcription_0_k_PROTEIN_FoxB*reaction_GENE_P_FoxB_transcription_0_c_PROTEIN_FoxB/(reaction_GENE_P_FoxB_transcription_0_c_PROTEIN_FoxB+x(187));

% Reaction: id = GENE_P_FoxN23_transcription_0, name = GENE_P_FoxN23_transcription	% Local Parameter:   id =  k_PROTEIN_nBTCF, name = k_PROTEIN_nBTCF
	reaction_GENE_P_FoxN23_transcription_0_k_PROTEIN_nBTCF=1.0;
	% Local Parameter:   id =  c_PROTEIN_nBTCF, name = c_PROTEIN_nBTCF
	reaction_GENE_P_FoxN23_transcription_0_c_PROTEIN_nBTCF=1.0;

	reaction_GENE_P_FoxN23_transcription_0=reaction_GENE_P_FoxN23_transcription_0_k_PROTEIN_nBTCF*x(250)/(reaction_GENE_P_FoxN23_transcription_0_c_PROTEIN_nBTCF+x(250));

% Reaction: id = GENE_P_FoxO_transcription_0, name = GENE_P_FoxO_transcription	% Local Parameter:   id =  k_PROTEIN_Ets1, name = k_PROTEIN_Ets1
	reaction_GENE_P_FoxO_transcription_0_k_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Ets1, name = c_PROTEIN_Ets1
	reaction_GENE_P_FoxO_transcription_0_c_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  k_PROTEIN_Hex, name = k_PROTEIN_Hex
	reaction_GENE_P_FoxO_transcription_0_k_PROTEIN_Hex=1.0;
	% Local Parameter:   id =  c_PROTEIN_Hex, name = c_PROTEIN_Hex
	reaction_GENE_P_FoxO_transcription_0_c_PROTEIN_Hex=1.0;
	% Local Parameter:   id =  k_PROTEIN_Erg, name = k_PROTEIN_Erg
	reaction_GENE_P_FoxO_transcription_0_k_PROTEIN_Erg=1.0;
	% Local Parameter:   id =  c_PROTEIN_Erg, name = c_PROTEIN_Erg
	reaction_GENE_P_FoxO_transcription_0_c_PROTEIN_Erg=1.0;
	% Local Parameter:   id =  k_PROTEIN_Tgif, name = k_PROTEIN_Tgif
	reaction_GENE_P_FoxO_transcription_0_k_PROTEIN_Tgif=1.0;
	% Local Parameter:   id =  c_PROTEIN_Tgif, name = c_PROTEIN_Tgif
	reaction_GENE_P_FoxO_transcription_0_c_PROTEIN_Tgif=1.0;

	reaction_GENE_P_FoxO_transcription_0=reaction_GENE_P_FoxO_transcription_0_k_PROTEIN_Ets1*x(183)/(reaction_GENE_P_FoxO_transcription_0_c_PROTEIN_Ets1+x(183))+reaction_GENE_P_FoxO_transcription_0_k_PROTEIN_Hex*x(202)/(reaction_GENE_P_FoxO_transcription_0_c_PROTEIN_Hex+x(202))+reaction_GENE_P_FoxO_transcription_0_k_PROTEIN_Tgif*x(230)/(reaction_GENE_P_FoxO_transcription_0_c_PROTEIN_Tgif+x(230))+reaction_GENE_P_FoxO_transcription_0_k_PROTEIN_Erg*x(182)/(reaction_GENE_P_FoxO_transcription_0_c_PROTEIN_Erg+x(182));

% Reaction: id = GENE_P_FvMo_transcription_0, name = GENE_P_FvMo_transcription	% Local Parameter:   id =  k_PROTEIN_GataE, name = k_PROTEIN_GataE
	reaction_GENE_P_FvMo_transcription_0_k_PROTEIN_GataE=1.0;
	% Local Parameter:   id =  c_PROTEIN_GataE, name = c_PROTEIN_GataE
	reaction_GENE_P_FvMo_transcription_0_c_PROTEIN_GataE=1.0;
	% Local Parameter:   id =  k_PROTEIN_Gcm, name = k_PROTEIN_Gcm
	reaction_GENE_P_FvMo_transcription_0_k_PROTEIN_Gcm=1.0;
	% Local Parameter:   id =  c_PROTEIN_Gcm, name = c_PROTEIN_Gcm
	reaction_GENE_P_FvMo_transcription_0_c_PROTEIN_Gcm=1.0;

	reaction_GENE_P_FvMo_transcription_0=reaction_GENE_P_FvMo_transcription_0_k_PROTEIN_Gcm*x(196)/(reaction_GENE_P_FvMo_transcription_0_c_PROTEIN_Gcm+x(196))+reaction_GENE_P_FvMo_transcription_0_k_PROTEIN_GataE*x(194)/(reaction_GENE_P_FvMo_transcription_0_c_PROTEIN_GataE+x(194));

% Reaction: id = GENE_P_GataC_transcription_0, name = GENE_P_GataC_transcription	% Local Parameter:   id =  k_PROTEIN_GataC, name = k_PROTEIN_GataC
	reaction_GENE_P_GataC_transcription_0_k_PROTEIN_GataC=1.0;
	% Local Parameter:   id =  c_PROTEIN_GataC, name = c_PROTEIN_GataC
	reaction_GENE_P_GataC_transcription_0_c_PROTEIN_GataC=1.0;
	% Local Parameter:   id =  k_PROTEIN_GCM, name = k_PROTEIN_GCM
	reaction_GENE_P_GataC_transcription_0_k_PROTEIN_GCM=1.0;
	% Local Parameter:   id =  c_PROTEIN_GCM, name = c_PROTEIN_GCM
	reaction_GENE_P_GataC_transcription_0_c_PROTEIN_GCM=1.0;
	% Local Parameter:   id =  k_PROTEIN_GataE, name = k_PROTEIN_GataE
	reaction_GENE_P_GataC_transcription_0_k_PROTEIN_GataE=1.0;
	% Local Parameter:   id =  c_PROTEIN_GataE, name = c_PROTEIN_GataE
	reaction_GENE_P_GataC_transcription_0_c_PROTEIN_GataE=1.0;
	% Local Parameter:   id =  k_PROTEIN_Hnf6, name = k_PROTEIN_Hnf6
	reaction_GENE_P_GataC_transcription_0_k_PROTEIN_Hnf6=1.0;
	% Local Parameter:   id =  c_PROTEIN_Hnf6, name = c_PROTEIN_Hnf6
	reaction_GENE_P_GataC_transcription_0_c_PROTEIN_Hnf6=1.0;

	reaction_GENE_P_GataC_transcription_0=(reaction_GENE_P_GataC_transcription_0_k_PROTEIN_GataE*x(194)/(reaction_GENE_P_GataC_transcription_0_c_PROTEIN_GataE+x(194))+reaction_GENE_P_GataC_transcription_0_k_PROTEIN_Hnf6*x(203)/(reaction_GENE_P_GataC_transcription_0_c_PROTEIN_Hnf6+x(203))+reaction_GENE_P_GataC_transcription_0_k_PROTEIN_GCM*x(86)/(reaction_GENE_P_GataC_transcription_0_c_PROTEIN_GCM+x(86)))*reaction_GENE_P_GataC_transcription_0_k_PROTEIN_GataC*reaction_GENE_P_GataC_transcription_0_c_PROTEIN_GataC/(reaction_GENE_P_GataC_transcription_0_c_PROTEIN_GataC+x(193));

% Reaction: id = GENE_P_GataE_transcription_0, name = GENE_P_GataE_transcription	% Local Parameter:   id =  k_PROTEIN_Otx, name = k_PROTEIN_Otx
	reaction_GENE_P_GataE_transcription_0_k_PROTEIN_Otx=1.0;
	% Local Parameter:   id =  c_PROTEIN_Otx, name = c_PROTEIN_Otx
	reaction_GENE_P_GataE_transcription_0_c_PROTEIN_Otx=1.0;
	% Local Parameter:   id =  k_PROTEIN_Hox, name = k_PROTEIN_Hox
	reaction_GENE_P_GataE_transcription_0_k_PROTEIN_Hox=1.0;
	% Local Parameter:   id =  c_PROTEIN_Hox, name = c_PROTEIN_Hox
	reaction_GENE_P_GataE_transcription_0_c_PROTEIN_Hox=1.0;
	% Local Parameter:   id =  k_PROTEIN_SuHN, name = k_PROTEIN_SuHN
	reaction_GENE_P_GataE_transcription_0_k_PROTEIN_SuHN=1.0;
	% Local Parameter:   id =  c_PROTEIN_SuHN, name = c_PROTEIN_SuHN
	reaction_GENE_P_GataE_transcription_0_c_PROTEIN_SuHN=1.0;

	reaction_GENE_P_GataE_transcription_0=(reaction_GENE_P_GataE_transcription_0_k_PROTEIN_Otx*x(215)/(reaction_GENE_P_GataE_transcription_0_c_PROTEIN_Otx+x(215))+reaction_GENE_P_GataE_transcription_0_k_PROTEIN_SuHN*x(225)/(reaction_GENE_P_GataE_transcription_0_c_PROTEIN_SuHN+x(225)))*reaction_GENE_P_GataE_transcription_0_k_PROTEIN_Hox*reaction_GENE_P_GataE_transcription_0_c_PROTEIN_Hox/(reaction_GENE_P_GataE_transcription_0_c_PROTEIN_Hox+x(204));

% Reaction: id = GENE_P_Gcad_transcription_0, name = GENE_P_Gcad_transcription	% Local Parameter:   id =  k_PROTEIN_Snail, name = k_PROTEIN_Snail
	reaction_GENE_P_Gcad_transcription_0_k_PROTEIN_Snail=1.0;
	% Local Parameter:   id =  c_PROTEIN_Snail, name = c_PROTEIN_Snail
	reaction_GENE_P_Gcad_transcription_0_c_PROTEIN_Snail=1.0;
	% Local Parameter:   id =  k_PROTEIN_UbiqGcad, name = k_PROTEIN_UbiqGcad
	reaction_GENE_P_Gcad_transcription_0_k_PROTEIN_UbiqGcad=1.0;
	% Local Parameter:   id =  c_PROTEIN_UbiqGcad, name = c_PROTEIN_UbiqGcad
	reaction_GENE_P_Gcad_transcription_0_c_PROTEIN_UbiqGcad=1.0;

	reaction_GENE_P_Gcad_transcription_0=reaction_GENE_P_Gcad_transcription_0_k_PROTEIN_UbiqGcad*x(238)/(reaction_GENE_P_Gcad_transcription_0_c_PROTEIN_UbiqGcad+x(238))*reaction_GENE_P_Gcad_transcription_0_k_PROTEIN_Snail*reaction_GENE_P_Gcad_transcription_0_c_PROTEIN_Snail/(reaction_GENE_P_Gcad_transcription_0_c_PROTEIN_Snail+x(221));

% Reaction: id = GENE_P_Gcm_transcription_0, name = GENE_P_Gcm_transcription	% Local Parameter:   id =  k_PROTEIN_FoxA, name = k_PROTEIN_FoxA
	reaction_GENE_P_Gcm_transcription_0_k_PROTEIN_FoxA=1.0;
	% Local Parameter:   id =  c_PROTEIN_FoxA, name = c_PROTEIN_FoxA
	reaction_GENE_P_Gcm_transcription_0_c_PROTEIN_FoxA=1.0;
	% Local Parameter:   id =  k_PROTEIN_nBTCF, name = k_PROTEIN_nBTCF
	reaction_GENE_P_Gcm_transcription_0_k_PROTEIN_nBTCF=1.0;
	% Local Parameter:   id =  c_PROTEIN_nBTCF, name = c_PROTEIN_nBTCF
	reaction_GENE_P_Gcm_transcription_0_c_PROTEIN_nBTCF=1.0;
	% Local Parameter:   id =  k_PROTEIN_Alx1, name = k_PROTEIN_Alx1
	reaction_GENE_P_Gcm_transcription_0_k_PROTEIN_Alx1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Alx1, name = c_PROTEIN_Alx1
	reaction_GENE_P_Gcm_transcription_0_c_PROTEIN_Alx1=1.0;
	% Local Parameter:   id =  k_PROTEIN_GroTCF, name = k_PROTEIN_GroTCF
	reaction_GENE_P_Gcm_transcription_0_k_PROTEIN_GroTCF=1.0;
	% Local Parameter:   id =  c_PROTEIN_GroTCF, name = c_PROTEIN_GroTCF
	reaction_GENE_P_Gcm_transcription_0_c_PROTEIN_GroTCF=1.0;
	% Local Parameter:   id =  k_PROTEIN_SuHN, name = k_PROTEIN_SuHN
	reaction_GENE_P_Gcm_transcription_0_k_PROTEIN_SuHN=1.0;
	% Local Parameter:   id =  c_PROTEIN_SuHN, name = c_PROTEIN_SuHN
	reaction_GENE_P_Gcm_transcription_0_c_PROTEIN_SuHN=1.0;
	% Local Parameter:   id =  k_PROTEIN_Gcm, name = k_PROTEIN_Gcm
	reaction_GENE_P_Gcm_transcription_0_k_PROTEIN_Gcm=1.0;
	% Local Parameter:   id =  c_PROTEIN_Gcm, name = c_PROTEIN_Gcm
	reaction_GENE_P_Gcm_transcription_0_c_PROTEIN_Gcm=1.0;

	reaction_GENE_P_Gcm_transcription_0=(reaction_GENE_P_Gcm_transcription_0_k_PROTEIN_nBTCF*x(250)/(reaction_GENE_P_Gcm_transcription_0_c_PROTEIN_nBTCF+x(250))+reaction_GENE_P_Gcm_transcription_0_k_PROTEIN_SuHN*x(225)/(reaction_GENE_P_Gcm_transcription_0_c_PROTEIN_SuHN+x(225))+reaction_GENE_P_Gcm_transcription_0_k_PROTEIN_Gcm*x(196)/(reaction_GENE_P_Gcm_transcription_0_c_PROTEIN_Gcm+x(196)))*reaction_GENE_P_Gcm_transcription_0_k_PROTEIN_GroTCF*reaction_GENE_P_Gcm_transcription_0_c_PROTEIN_GroTCF/(reaction_GENE_P_Gcm_transcription_0_c_PROTEIN_GroTCF+x(199))*reaction_GENE_P_Gcm_transcription_0_k_PROTEIN_FoxA*reaction_GENE_P_Gcm_transcription_0_c_PROTEIN_FoxA/(reaction_GENE_P_Gcm_transcription_0_c_PROTEIN_FoxA+x(186))*reaction_GENE_P_Gcm_transcription_0_k_PROTEIN_Alx1*reaction_GENE_P_Gcm_transcription_0_c_PROTEIN_Alx1/(reaction_GENE_P_Gcm_transcription_0_c_PROTEIN_Alx1+x(170));

% Reaction: id = GENE_P_Gelsolin_transcription_0, name = GENE_P_Gelsolin_transcription	% Local Parameter:   id =  k_PROTEIN_Bra, name = k_PROTEIN_Bra
	reaction_GENE_P_Gelsolin_transcription_0_k_PROTEIN_Bra=1.0;
	% Local Parameter:   id =  c_PROTEIN_Bra, name = c_PROTEIN_Bra
	reaction_GENE_P_Gelsolin_transcription_0_c_PROTEIN_Bra=1.0;

	reaction_GENE_P_Gelsolin_transcription_0=reaction_GENE_P_Gelsolin_transcription_0_k_PROTEIN_Bra*x(173)/(reaction_GENE_P_Gelsolin_transcription_0_c_PROTEIN_Bra+x(173));

% Reaction: id = GENE_P_HesC_transcription_0, name = GENE_P_HesC_transcription	% Local Parameter:   id =  k_PROTEIN_UbiqHesC, name = k_PROTEIN_UbiqHesC
	reaction_GENE_P_HesC_transcription_0_k_PROTEIN_UbiqHesC=1.0;
	% Local Parameter:   id =  c_PROTEIN_UbiqHesC, name = c_PROTEIN_UbiqHesC
	reaction_GENE_P_HesC_transcription_0_c_PROTEIN_UbiqHesC=1.0;
	% Local Parameter:   id =  k_PROTEIN_Pmar1, name = k_PROTEIN_Pmar1
	reaction_GENE_P_HesC_transcription_0_k_PROTEIN_Pmar1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Pmar1, name = c_PROTEIN_Pmar1
	reaction_GENE_P_HesC_transcription_0_c_PROTEIN_Pmar1=1.0;

	reaction_GENE_P_HesC_transcription_0=reaction_GENE_P_HesC_transcription_0_k_PROTEIN_UbiqHesC*x(239)/(reaction_GENE_P_HesC_transcription_0_c_PROTEIN_UbiqHesC+x(239))*reaction_GENE_P_HesC_transcription_0_k_PROTEIN_Pmar1*reaction_GENE_P_HesC_transcription_0_c_PROTEIN_Pmar1/(reaction_GENE_P_HesC_transcription_0_c_PROTEIN_Pmar1+x(217));

% Reaction: id = GENE_P_Hex_transcription_0, name = GENE_P_Hex_transcription	% Local Parameter:   id =  k_PROTEIN_Ets1, name = k_PROTEIN_Ets1
	reaction_GENE_P_Hex_transcription_0_k_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Ets1, name = c_PROTEIN_Ets1
	reaction_GENE_P_Hex_transcription_0_c_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  k_PROTEIN_Erg, name = k_PROTEIN_Erg
	reaction_GENE_P_Hex_transcription_0_k_PROTEIN_Erg=1.0;
	% Local Parameter:   id =  c_PROTEIN_Erg, name = c_PROTEIN_Erg
	reaction_GENE_P_Hex_transcription_0_c_PROTEIN_Erg=1.0;
	% Local Parameter:   id =  k_PROTEIN_Tgif, name = k_PROTEIN_Tgif
	reaction_GENE_P_Hex_transcription_0_k_PROTEIN_Tgif=1.0;
	% Local Parameter:   id =  c_PROTEIN_Tgif, name = c_PROTEIN_Tgif
	reaction_GENE_P_Hex_transcription_0_c_PROTEIN_Tgif=1.0;

	reaction_GENE_P_Hex_transcription_0=reaction_GENE_P_Hex_transcription_0_k_PROTEIN_Tgif*x(230)/(reaction_GENE_P_Hex_transcription_0_c_PROTEIN_Tgif+x(230))+reaction_GENE_P_Hex_transcription_0_k_PROTEIN_Ets1*x(183)/(reaction_GENE_P_Hex_transcription_0_c_PROTEIN_Ets1+x(183))+reaction_GENE_P_Hex_transcription_0_k_PROTEIN_Erg*x(182)/(reaction_GENE_P_Hex_transcription_0_c_PROTEIN_Erg+x(182));

% Reaction: id = GENE_P_Hnf6_transcription_0, name = GENE_P_Hnf6_transcription	% Local Parameter:   id =  k_PROTEIN_UbiqHnf6, name = k_PROTEIN_UbiqHnf6
	reaction_GENE_P_Hnf6_transcription_0_k_PROTEIN_UbiqHnf6=1.0;
	% Local Parameter:   id =  c_PROTEIN_UbiqHnf6, name = c_PROTEIN_UbiqHnf6
	reaction_GENE_P_Hnf6_transcription_0_c_PROTEIN_UbiqHnf6=1.0;

	reaction_GENE_P_Hnf6_transcription_0=reaction_GENE_P_Hnf6_transcription_0_k_PROTEIN_UbiqHnf6*x(240)/(reaction_GENE_P_Hnf6_transcription_0_c_PROTEIN_UbiqHnf6+x(240));

% Reaction: id = GENE_P_Hox_transcription_0, name = GENE_P_Hox_transcription	% Local Parameter:   id =  k_PROTEIN_GroTCF, name = k_PROTEIN_GroTCF
	reaction_GENE_P_Hox_transcription_0_k_PROTEIN_GroTCF=1.0;
	% Local Parameter:   id =  c_PROTEIN_GroTCF, name = c_PROTEIN_GroTCF
	reaction_GENE_P_Hox_transcription_0_c_PROTEIN_GroTCF=1.0;
	% Local Parameter:   id =  k_PROTEIN_Blimp1, name = k_PROTEIN_Blimp1
	reaction_GENE_P_Hox_transcription_0_k_PROTEIN_Blimp1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Blimp1, name = c_PROTEIN_Blimp1
	reaction_GENE_P_Hox_transcription_0_c_PROTEIN_Blimp1=1.0;
	% Local Parameter:   id =  k_PROTEIN_Otx, name = k_PROTEIN_Otx
	reaction_GENE_P_Hox_transcription_0_k_PROTEIN_Otx=1.0;
	% Local Parameter:   id =  c_PROTEIN_Otx, name = c_PROTEIN_Otx
	reaction_GENE_P_Hox_transcription_0_c_PROTEIN_Otx=1.0;
	% Local Parameter:   id =  k_PROTEIN_Eve, name = k_PROTEIN_Eve
	reaction_GENE_P_Hox_transcription_0_k_PROTEIN_Eve=1.0;
	% Local Parameter:   id =  c_PROTEIN_Eve, name = c_PROTEIN_Eve
	reaction_GENE_P_Hox_transcription_0_c_PROTEIN_Eve=1.0;
	% Local Parameter:   id =  k_PROTEIN_nBTCF, name = k_PROTEIN_nBTCF
	reaction_GENE_P_Hox_transcription_0_k_PROTEIN_nBTCF=1.0;
	% Local Parameter:   id =  c_PROTEIN_nBTCF, name = c_PROTEIN_nBTCF
	reaction_GENE_P_Hox_transcription_0_c_PROTEIN_nBTCF=1.0;

	reaction_GENE_P_Hox_transcription_0=(reaction_GENE_P_Hox_transcription_0_k_PROTEIN_Blimp1*x(172)/(reaction_GENE_P_Hox_transcription_0_c_PROTEIN_Blimp1+x(172))+reaction_GENE_P_Hox_transcription_0_k_PROTEIN_nBTCF*x(250)/(reaction_GENE_P_Hox_transcription_0_c_PROTEIN_nBTCF+x(250))+reaction_GENE_P_Hox_transcription_0_k_PROTEIN_Eve*x(184)/(reaction_GENE_P_Hox_transcription_0_c_PROTEIN_Eve+x(184))+reaction_GENE_P_Hox_transcription_0_k_PROTEIN_Otx*x(215)/(reaction_GENE_P_Hox_transcription_0_c_PROTEIN_Otx+x(215)))*reaction_GENE_P_Hox_transcription_0_k_PROTEIN_GroTCF*reaction_GENE_P_Hox_transcription_0_c_PROTEIN_GroTCF/(reaction_GENE_P_Hox_transcription_0_c_PROTEIN_GroTCF+x(199));

% Reaction: id = GENE_P_Kakapo_transcription_0, name = GENE_P_Kakapo_transcription	% Local Parameter:   id =  k_PROTEIN_Bra, name = k_PROTEIN_Bra
	reaction_GENE_P_Kakapo_transcription_0_k_PROTEIN_Bra=1.0;
	% Local Parameter:   id =  c_PROTEIN_Bra, name = c_PROTEIN_Bra
	reaction_GENE_P_Kakapo_transcription_0_c_PROTEIN_Bra=1.0;

	reaction_GENE_P_Kakapo_transcription_0=reaction_GENE_P_Kakapo_transcription_0_k_PROTEIN_Bra*x(173)/(reaction_GENE_P_Kakapo_transcription_0_c_PROTEIN_Bra+x(173));

% Reaction: id = GENE_P_Lim_transcription_0, name = GENE_P_Lim_transcription	% Local Parameter:   id =  k_PROTEIN_Otx, name = k_PROTEIN_Otx
	reaction_GENE_P_Lim_transcription_0_k_PROTEIN_Otx=1.0;
	% Local Parameter:   id =  c_PROTEIN_Otx, name = c_PROTEIN_Otx
	reaction_GENE_P_Lim_transcription_0_c_PROTEIN_Otx=1.0;
	% Local Parameter:   id =  k_PROTEIN_GataE, name = k_PROTEIN_GataE
	reaction_GENE_P_Lim_transcription_0_k_PROTEIN_GataE=1.0;
	% Local Parameter:   id =  c_PROTEIN_GataE, name = c_PROTEIN_GataE
	reaction_GENE_P_Lim_transcription_0_c_PROTEIN_GataE=1.0;

	reaction_GENE_P_Lim_transcription_0=reaction_GENE_P_Lim_transcription_0_k_PROTEIN_GataE*x(194)/(reaction_GENE_P_Lim_transcription_0_c_PROTEIN_GataE+x(194))+reaction_GENE_P_Lim_transcription_0_k_PROTEIN_Otx*x(215)/(reaction_GENE_P_Lim_transcription_0_c_PROTEIN_Otx+x(215));

% Reaction: id = GENE_P_Msp130_transcription_0, name = GENE_P_Msp130_transcription	% Local Parameter:   id =  k_PROTEIN_FoxB, name = k_PROTEIN_FoxB
	reaction_GENE_P_Msp130_transcription_0_k_PROTEIN_FoxB=1.0;
	% Local Parameter:   id =  c_PROTEIN_FoxB, name = c_PROTEIN_FoxB
	reaction_GENE_P_Msp130_transcription_0_c_PROTEIN_FoxB=1.0;
	% Local Parameter:   id =  k_PROTEIN_Hex, name = k_PROTEIN_Hex
	reaction_GENE_P_Msp130_transcription_0_k_PROTEIN_Hex=1.0;
	% Local Parameter:   id =  c_PROTEIN_Hex, name = c_PROTEIN_Hex
	reaction_GENE_P_Msp130_transcription_0_c_PROTEIN_Hex=1.0;
	% Local Parameter:   id =  k_PROTEIN_Alx1, name = k_PROTEIN_Alx1
	reaction_GENE_P_Msp130_transcription_0_k_PROTEIN_Alx1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Alx1, name = c_PROTEIN_Alx1
	reaction_GENE_P_Msp130_transcription_0_c_PROTEIN_Alx1=1.0;
	% Local Parameter:   id =  k_PROTEIN_Erg, name = k_PROTEIN_Erg
	reaction_GENE_P_Msp130_transcription_0_k_PROTEIN_Erg=1.0;
	% Local Parameter:   id =  c_PROTEIN_Erg, name = c_PROTEIN_Erg
	reaction_GENE_P_Msp130_transcription_0_c_PROTEIN_Erg=1.0;
	% Local Parameter:   id =  k_PROTEIN_Ets1, name = k_PROTEIN_Ets1
	reaction_GENE_P_Msp130_transcription_0_k_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Ets1, name = c_PROTEIN_Ets1
	reaction_GENE_P_Msp130_transcription_0_c_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  k_PROTEIN_TBr, name = k_PROTEIN_TBr
	reaction_GENE_P_Msp130_transcription_0_k_PROTEIN_TBr=1.0;
	% Local Parameter:   id =  c_PROTEIN_TBr, name = c_PROTEIN_TBr
	reaction_GENE_P_Msp130_transcription_0_c_PROTEIN_TBr=1.0;
	% Local Parameter:   id =  k_PROTEIN_Hnf6, name = k_PROTEIN_Hnf6
	reaction_GENE_P_Msp130_transcription_0_k_PROTEIN_Hnf6=1.0;
	% Local Parameter:   id =  c_PROTEIN_Hnf6, name = c_PROTEIN_Hnf6
	reaction_GENE_P_Msp130_transcription_0_c_PROTEIN_Hnf6=1.0;

	reaction_GENE_P_Msp130_transcription_0=reaction_GENE_P_Msp130_transcription_0_k_PROTEIN_Hnf6*x(203)/(reaction_GENE_P_Msp130_transcription_0_c_PROTEIN_Hnf6+x(203))+reaction_GENE_P_Msp130_transcription_0_k_PROTEIN_FoxB*x(187)/(reaction_GENE_P_Msp130_transcription_0_c_PROTEIN_FoxB+x(187))+reaction_GENE_P_Msp130_transcription_0_k_PROTEIN_Ets1*x(183)/(reaction_GENE_P_Msp130_transcription_0_c_PROTEIN_Ets1+x(183))+reaction_GENE_P_Msp130_transcription_0_k_PROTEIN_Alx1*x(170)/(reaction_GENE_P_Msp130_transcription_0_c_PROTEIN_Alx1+x(170))+reaction_GENE_P_Msp130_transcription_0_k_PROTEIN_Hex*x(202)/(reaction_GENE_P_Msp130_transcription_0_c_PROTEIN_Hex+x(202))+reaction_GENE_P_Msp130_transcription_0_k_PROTEIN_TBr*x(227)/(reaction_GENE_P_Msp130_transcription_0_c_PROTEIN_TBr+x(227))+reaction_GENE_P_Msp130_transcription_0_k_PROTEIN_Erg*x(182)/(reaction_GENE_P_Msp130_transcription_0_c_PROTEIN_Erg+x(182));

% Reaction: id = GENE_P_MspL_transcription_0, name = GENE_P_MspL_transcription	% Local Parameter:   id =  k_PROTEIN_Hex, name = k_PROTEIN_Hex
	reaction_GENE_P_MspL_transcription_0_k_PROTEIN_Hex=1.0;
	% Local Parameter:   id =  c_PROTEIN_Hex, name = c_PROTEIN_Hex
	reaction_GENE_P_MspL_transcription_0_c_PROTEIN_Hex=1.0;
	% Local Parameter:   id =  k_PROTEIN_Ets1, name = k_PROTEIN_Ets1
	reaction_GENE_P_MspL_transcription_0_k_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Ets1, name = c_PROTEIN_Ets1
	reaction_GENE_P_MspL_transcription_0_c_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  k_PROTEIN_VEGFSignal, name = k_PROTEIN_VEGFSignal
	reaction_GENE_P_MspL_transcription_0_k_PROTEIN_VEGFSignal=1.0;
	% Local Parameter:   id =  c_PROTEIN_VEGFSignal, name = c_PROTEIN_VEGFSignal
	reaction_GENE_P_MspL_transcription_0_c_PROTEIN_VEGFSignal=1.0;
	% Local Parameter:   id =  k_PROTEIN_Erg, name = k_PROTEIN_Erg
	reaction_GENE_P_MspL_transcription_0_k_PROTEIN_Erg=1.0;
	% Local Parameter:   id =  c_PROTEIN_Erg, name = c_PROTEIN_Erg
	reaction_GENE_P_MspL_transcription_0_c_PROTEIN_Erg=1.0;
	% Local Parameter:   id =  k_PROTEIN_Alx1, name = k_PROTEIN_Alx1
	reaction_GENE_P_MspL_transcription_0_k_PROTEIN_Alx1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Alx1, name = c_PROTEIN_Alx1
	reaction_GENE_P_MspL_transcription_0_c_PROTEIN_Alx1=1.0;

	reaction_GENE_P_MspL_transcription_0=reaction_GENE_P_MspL_transcription_0_k_PROTEIN_Ets1*x(183)/(reaction_GENE_P_MspL_transcription_0_c_PROTEIN_Ets1+x(183))+reaction_GENE_P_MspL_transcription_0_k_PROTEIN_Alx1*x(170)/(reaction_GENE_P_MspL_transcription_0_c_PROTEIN_Alx1+x(170))+reaction_GENE_P_MspL_transcription_0_k_PROTEIN_VEGFSignal*x(245)/(reaction_GENE_P_MspL_transcription_0_c_PROTEIN_VEGFSignal+x(245))+reaction_GENE_P_MspL_transcription_0_k_PROTEIN_Hex*x(202)/(reaction_GENE_P_MspL_transcription_0_c_PROTEIN_Hex+x(202))+reaction_GENE_P_MspL_transcription_0_k_PROTEIN_Erg*x(182)/(reaction_GENE_P_MspL_transcription_0_c_PROTEIN_Erg+x(182));

% Reaction: id = GENE_P_Not_transcription_0, name = GENE_P_Not_transcription	% Local Parameter:   id =  k_PROTEIN_GataE, name = k_PROTEIN_GataE
	reaction_GENE_P_Not_transcription_0_k_PROTEIN_GataE=1.0;
	% Local Parameter:   id =  c_PROTEIN_GataE, name = c_PROTEIN_GataE
	reaction_GENE_P_Not_transcription_0_c_PROTEIN_GataE=1.0;

	reaction_GENE_P_Not_transcription_0=reaction_GENE_P_Not_transcription_0_k_PROTEIN_GataE*x(194)/(reaction_GENE_P_Not_transcription_0_c_PROTEIN_GataE+x(194));

% Reaction: id = GENE_P_Nrl_transcription_0, name = GENE_P_Nrl_transcription	% Local Parameter:   id =  k_PROTEIN_HesC, name = k_PROTEIN_HesC
	reaction_GENE_P_Nrl_transcription_0_k_PROTEIN_HesC=1.0;
	% Local Parameter:   id =  c_PROTEIN_HesC, name = c_PROTEIN_HesC
	reaction_GENE_P_Nrl_transcription_0_c_PROTEIN_HesC=1.0;
	% Local Parameter:   id =  k_PROTEIN_Tgif, name = k_PROTEIN_Tgif
	reaction_GENE_P_Nrl_transcription_0_k_PROTEIN_Tgif=1.0;
	% Local Parameter:   id =  c_PROTEIN_Tgif, name = c_PROTEIN_Tgif
	reaction_GENE_P_Nrl_transcription_0_c_PROTEIN_Tgif=1.0;
	% Local Parameter:   id =  k_PROTEIN_TBr, name = k_PROTEIN_TBr
	reaction_GENE_P_Nrl_transcription_0_k_PROTEIN_TBr=1.0;
	% Local Parameter:   id =  c_PROTEIN_TBr, name = c_PROTEIN_TBr
	reaction_GENE_P_Nrl_transcription_0_c_PROTEIN_TBr=1.0;
	% Local Parameter:   id =  k_PROTEIN_UMANrl, name = k_PROTEIN_UMANrl
	reaction_GENE_P_Nrl_transcription_0_k_PROTEIN_UMANrl=1.0;
	% Local Parameter:   id =  c_PROTEIN_UMANrl, name = c_PROTEIN_UMANrl
	reaction_GENE_P_Nrl_transcription_0_c_PROTEIN_UMANrl=1.0;
	% Local Parameter:   id =  k_PROTEIN_FoxN23, name = k_PROTEIN_FoxN23
	reaction_GENE_P_Nrl_transcription_0_k_PROTEIN_FoxN23=1.0;
	% Local Parameter:   id =  c_PROTEIN_FoxN23, name = c_PROTEIN_FoxN23
	reaction_GENE_P_Nrl_transcription_0_c_PROTEIN_FoxN23=1.0;
	% Local Parameter:   id =  k_PROTEIN_GataE, name = k_PROTEIN_GataE
	reaction_GENE_P_Nrl_transcription_0_k_PROTEIN_GataE=1.0;
	% Local Parameter:   id =  c_PROTEIN_GataE, name = c_PROTEIN_GataE
	reaction_GENE_P_Nrl_transcription_0_c_PROTEIN_GataE=1.0;

	reaction_GENE_P_Nrl_transcription_0=(reaction_GENE_P_Nrl_transcription_0_k_PROTEIN_TBr*x(227)/(reaction_GENE_P_Nrl_transcription_0_c_PROTEIN_TBr+x(227))+reaction_GENE_P_Nrl_transcription_0_k_PROTEIN_UMANrl*x(232)/(reaction_GENE_P_Nrl_transcription_0_c_PROTEIN_UMANrl+x(232))+reaction_GENE_P_Nrl_transcription_0_k_PROTEIN_FoxN23*x(188)/(reaction_GENE_P_Nrl_transcription_0_c_PROTEIN_FoxN23+x(188)))*reaction_GENE_P_Nrl_transcription_0_k_PROTEIN_GataE*reaction_GENE_P_Nrl_transcription_0_c_PROTEIN_GataE/(reaction_GENE_P_Nrl_transcription_0_c_PROTEIN_GataE+x(194))*reaction_GENE_P_Nrl_transcription_0_k_PROTEIN_HesC*reaction_GENE_P_Nrl_transcription_0_c_PROTEIN_HesC/(reaction_GENE_P_Nrl_transcription_0_c_PROTEIN_HesC+x(201))*reaction_GENE_P_Nrl_transcription_0_k_PROTEIN_Tgif*reaction_GENE_P_Nrl_transcription_0_c_PROTEIN_Tgif/(reaction_GENE_P_Nrl_transcription_0_c_PROTEIN_Tgif+x(230));

% Reaction: id = GENE_P_OrCt_transcription_0, name = GENE_P_OrCt_transcription	% Local Parameter:   id =  k_PROTEIN_Bra, name = k_PROTEIN_Bra
	reaction_GENE_P_OrCt_transcription_0_k_PROTEIN_Bra=1.0;
	% Local Parameter:   id =  c_PROTEIN_Bra, name = c_PROTEIN_Bra
	reaction_GENE_P_OrCt_transcription_0_c_PROTEIN_Bra=1.0;
	% Local Parameter:   id =  k_PROTEIN_Hox, name = k_PROTEIN_Hox
	reaction_GENE_P_OrCt_transcription_0_k_PROTEIN_Hox=1.0;
	% Local Parameter:   id =  c_PROTEIN_Hox, name = c_PROTEIN_Hox
	reaction_GENE_P_OrCt_transcription_0_c_PROTEIN_Hox=1.0;

	reaction_GENE_P_OrCt_transcription_0=reaction_GENE_P_OrCt_transcription_0_k_PROTEIN_Bra*x(173)/(reaction_GENE_P_OrCt_transcription_0_c_PROTEIN_Bra+x(173))*reaction_GENE_P_OrCt_transcription_0_k_PROTEIN_Hox*reaction_GENE_P_OrCt_transcription_0_c_PROTEIN_Hox/(reaction_GENE_P_OrCt_transcription_0_c_PROTEIN_Hox+x(204));

% Reaction: id = GENE_P_Otx_transcription_0, name = GENE_P_Otx_transcription	% Local Parameter:   id =  k_PROTEIN_UVAOtx, name = k_PROTEIN_UVAOtx
	reaction_GENE_P_Otx_transcription_0_k_PROTEIN_UVAOtx=1.0;
	% Local Parameter:   id =  c_PROTEIN_UVAOtx, name = c_PROTEIN_UVAOtx
	reaction_GENE_P_Otx_transcription_0_c_PROTEIN_UVAOtx=1.0;
	% Local Parameter:   id =  k_PROTEIN_Otx, name = k_PROTEIN_Otx
	reaction_GENE_P_Otx_transcription_0_k_PROTEIN_Otx=1.0;
	% Local Parameter:   id =  c_PROTEIN_Otx, name = c_PROTEIN_Otx
	reaction_GENE_P_Otx_transcription_0_c_PROTEIN_Otx=1.0;
	% Local Parameter:   id =  k_PROTEIN_GataE, name = k_PROTEIN_GataE
	reaction_GENE_P_Otx_transcription_0_k_PROTEIN_GataE=1.0;
	% Local Parameter:   id =  c_PROTEIN_GataE, name = c_PROTEIN_GataE
	reaction_GENE_P_Otx_transcription_0_c_PROTEIN_GataE=1.0;
	% Local Parameter:   id =  k_PROTEIN_Blimp1, name = k_PROTEIN_Blimp1
	reaction_GENE_P_Otx_transcription_0_k_PROTEIN_Blimp1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Blimp1, name = c_PROTEIN_Blimp1
	reaction_GENE_P_Otx_transcription_0_c_PROTEIN_Blimp1=1.0;

	reaction_GENE_P_Otx_transcription_0=reaction_GENE_P_Otx_transcription_0_k_PROTEIN_UVAOtx*x(233)/(reaction_GENE_P_Otx_transcription_0_c_PROTEIN_UVAOtx+x(233))+reaction_GENE_P_Otx_transcription_0_k_PROTEIN_Blimp1*x(172)/(reaction_GENE_P_Otx_transcription_0_c_PROTEIN_Blimp1+x(172))+reaction_GENE_P_Otx_transcription_0_k_PROTEIN_GataE*x(194)/(reaction_GENE_P_Otx_transcription_0_c_PROTEIN_GataE+x(194))+reaction_GENE_P_Otx_transcription_0_k_PROTEIN_Otx*x(215)/(reaction_GENE_P_Otx_transcription_0_c_PROTEIN_Otx+x(215));

% Reaction: id = GENE_P_Pks_transcription_0, name = GENE_P_Pks_transcription	% Local Parameter:   id =  k_PROTEIN_GataE, name = k_PROTEIN_GataE
	reaction_GENE_P_Pks_transcription_0_k_PROTEIN_GataE=1.0;
	% Local Parameter:   id =  c_PROTEIN_GataE, name = c_PROTEIN_GataE
	reaction_GENE_P_Pks_transcription_0_c_PROTEIN_GataE=1.0;
	% Local Parameter:   id =  k_PROTEIN_Gcm, name = k_PROTEIN_Gcm
	reaction_GENE_P_Pks_transcription_0_k_PROTEIN_Gcm=1.0;
	% Local Parameter:   id =  c_PROTEIN_Gcm, name = c_PROTEIN_Gcm
	reaction_GENE_P_Pks_transcription_0_c_PROTEIN_Gcm=1.0;

	reaction_GENE_P_Pks_transcription_0=reaction_GENE_P_Pks_transcription_0_k_PROTEIN_Gcm*x(196)/(reaction_GENE_P_Pks_transcription_0_c_PROTEIN_Gcm+x(196))+reaction_GENE_P_Pks_transcription_0_k_PROTEIN_GataE*x(194)/(reaction_GENE_P_Pks_transcription_0_c_PROTEIN_GataE+x(194));

% Reaction: id = GENE_P_Pmar1_transcription_0, name = GENE_P_Pmar1_transcription	% Local Parameter:   id =  k_PROTEIN_GroTCF, name = k_PROTEIN_GroTCF
	reaction_GENE_P_Pmar1_transcription_0_k_PROTEIN_GroTCF=1.0;
	% Local Parameter:   id =  c_PROTEIN_GroTCF, name = c_PROTEIN_GroTCF
	reaction_GENE_P_Pmar1_transcription_0_c_PROTEIN_GroTCF=1.0;
	% Local Parameter:   id =  k_PROTEIN_Otx, name = k_PROTEIN_Otx
	reaction_GENE_P_Pmar1_transcription_0_k_PROTEIN_Otx=1.0;
	% Local Parameter:   id =  c_PROTEIN_Otx, name = c_PROTEIN_Otx
	reaction_GENE_P_Pmar1_transcription_0_c_PROTEIN_Otx=1.0;
	% Local Parameter:   id =  k_PROTEIN_nBTCF, name = k_PROTEIN_nBTCF
	reaction_GENE_P_Pmar1_transcription_0_k_PROTEIN_nBTCF=1.0;
	% Local Parameter:   id =  c_PROTEIN_nBTCF, name = c_PROTEIN_nBTCF
	reaction_GENE_P_Pmar1_transcription_0_c_PROTEIN_nBTCF=1.0;

	reaction_GENE_P_Pmar1_transcription_0=(reaction_GENE_P_Pmar1_transcription_0_k_PROTEIN_nBTCF*x(250)/(reaction_GENE_P_Pmar1_transcription_0_c_PROTEIN_nBTCF+x(250))+reaction_GENE_P_Pmar1_transcription_0_k_PROTEIN_Otx*x(215)/(reaction_GENE_P_Pmar1_transcription_0_c_PROTEIN_Otx+x(215)))*reaction_GENE_P_Pmar1_transcription_0_k_PROTEIN_GroTCF*reaction_GENE_P_Pmar1_transcription_0_c_PROTEIN_GroTCF/(reaction_GENE_P_Pmar1_transcription_0_c_PROTEIN_GroTCF+x(199));

% Reaction: id = GENE_P_Sm27_transcription_0, name = GENE_P_Sm27_transcription	% Local Parameter:   id =  k_PROTEIN_Ets1, name = k_PROTEIN_Ets1
	reaction_GENE_P_Sm27_transcription_0_k_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Ets1, name = c_PROTEIN_Ets1
	reaction_GENE_P_Sm27_transcription_0_c_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  k_PROTEIN_Hex, name = k_PROTEIN_Hex
	reaction_GENE_P_Sm27_transcription_0_k_PROTEIN_Hex=1.0;
	% Local Parameter:   id =  c_PROTEIN_Hex, name = c_PROTEIN_Hex
	reaction_GENE_P_Sm27_transcription_0_c_PROTEIN_Hex=1.0;
	% Local Parameter:   id =  k_PROTEIN_Alx1, name = k_PROTEIN_Alx1
	reaction_GENE_P_Sm27_transcription_0_k_PROTEIN_Alx1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Alx1, name = c_PROTEIN_Alx1
	reaction_GENE_P_Sm27_transcription_0_c_PROTEIN_Alx1=1.0;
	% Local Parameter:   id =  k_PROTEIN_Dri, name = k_PROTEIN_Dri
	reaction_GENE_P_Sm27_transcription_0_k_PROTEIN_Dri=1.0;
	% Local Parameter:   id =  c_PROTEIN_Dri, name = c_PROTEIN_Dri
	reaction_GENE_P_Sm27_transcription_0_c_PROTEIN_Dri=1.0;
	% Local Parameter:   id =  k_PROTEIN_Erg, name = k_PROTEIN_Erg
	reaction_GENE_P_Sm27_transcription_0_k_PROTEIN_Erg=1.0;
	% Local Parameter:   id =  c_PROTEIN_Erg, name = c_PROTEIN_Erg
	reaction_GENE_P_Sm27_transcription_0_c_PROTEIN_Erg=1.0;
	% Local Parameter:   id =  k_PROTEIN_Tel, name = k_PROTEIN_Tel
	reaction_GENE_P_Sm27_transcription_0_k_PROTEIN_Tel=1.0;
	% Local Parameter:   id =  c_PROTEIN_Tel, name = c_PROTEIN_Tel
	reaction_GENE_P_Sm27_transcription_0_c_PROTEIN_Tel=1.0;
	% Local Parameter:   id =  k_PROTEIN_Hnf6, name = k_PROTEIN_Hnf6
	reaction_GENE_P_Sm27_transcription_0_k_PROTEIN_Hnf6=1.0;
	% Local Parameter:   id =  c_PROTEIN_Hnf6, name = c_PROTEIN_Hnf6
	reaction_GENE_P_Sm27_transcription_0_c_PROTEIN_Hnf6=1.0;

	reaction_GENE_P_Sm27_transcription_0=reaction_GENE_P_Sm27_transcription_0_k_PROTEIN_Dri*x(180)/(reaction_GENE_P_Sm27_transcription_0_c_PROTEIN_Dri+x(180))+reaction_GENE_P_Sm27_transcription_0_k_PROTEIN_Hnf6*x(203)/(reaction_GENE_P_Sm27_transcription_0_c_PROTEIN_Hnf6+x(203))+reaction_GENE_P_Sm27_transcription_0_k_PROTEIN_Ets1*x(183)/(reaction_GENE_P_Sm27_transcription_0_c_PROTEIN_Ets1+x(183))+reaction_GENE_P_Sm27_transcription_0_k_PROTEIN_Alx1*x(170)/(reaction_GENE_P_Sm27_transcription_0_c_PROTEIN_Alx1+x(170))+reaction_GENE_P_Sm27_transcription_0_k_PROTEIN_Tel*x(229)/(reaction_GENE_P_Sm27_transcription_0_c_PROTEIN_Tel+x(229))+reaction_GENE_P_Sm27_transcription_0_k_PROTEIN_Hex*x(202)/(reaction_GENE_P_Sm27_transcription_0_c_PROTEIN_Hex+x(202))+reaction_GENE_P_Sm27_transcription_0_k_PROTEIN_Erg*x(182)/(reaction_GENE_P_Sm27_transcription_0_c_PROTEIN_Erg+x(182));

% Reaction: id = GENE_P_Sm30_transcription_0, name = GENE_P_Sm30_transcription	% Local Parameter:   id =  k_PROTEIN_VEGFSignal, name = k_PROTEIN_VEGFSignal
	reaction_GENE_P_Sm30_transcription_0_k_PROTEIN_VEGFSignal=1.0;
	% Local Parameter:   id =  c_PROTEIN_VEGFSignal, name = c_PROTEIN_VEGFSignal
	reaction_GENE_P_Sm30_transcription_0_c_PROTEIN_VEGFSignal=1.0;

	reaction_GENE_P_Sm30_transcription_0=reaction_GENE_P_Sm30_transcription_0_k_PROTEIN_VEGFSignal*x(245)/(reaction_GENE_P_Sm30_transcription_0_c_PROTEIN_VEGFSignal+x(245));

% Reaction: id = GENE_P_Sm50_transcription_0, name = GENE_P_Sm50_transcription	% Local Parameter:   id =  k_PROTEIN_Ets1, name = k_PROTEIN_Ets1
	reaction_GENE_P_Sm50_transcription_0_k_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Ets1, name = c_PROTEIN_Ets1
	reaction_GENE_P_Sm50_transcription_0_c_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  k_PROTEIN_Hex, name = k_PROTEIN_Hex
	reaction_GENE_P_Sm50_transcription_0_k_PROTEIN_Hex=1.0;
	% Local Parameter:   id =  c_PROTEIN_Hex, name = c_PROTEIN_Hex
	reaction_GENE_P_Sm50_transcription_0_c_PROTEIN_Hex=1.0;
	% Local Parameter:   id =  k_PROTEIN_Alx1, name = k_PROTEIN_Alx1
	reaction_GENE_P_Sm50_transcription_0_k_PROTEIN_Alx1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Alx1, name = c_PROTEIN_Alx1
	reaction_GENE_P_Sm50_transcription_0_c_PROTEIN_Alx1=1.0;
	% Local Parameter:   id =  k_PROTEIN_Dri, name = k_PROTEIN_Dri
	reaction_GENE_P_Sm50_transcription_0_k_PROTEIN_Dri=1.0;
	% Local Parameter:   id =  c_PROTEIN_Dri, name = c_PROTEIN_Dri
	reaction_GENE_P_Sm50_transcription_0_c_PROTEIN_Dri=1.0;
	% Local Parameter:   id =  k_PROTEIN_Erg, name = k_PROTEIN_Erg
	reaction_GENE_P_Sm50_transcription_0_k_PROTEIN_Erg=1.0;
	% Local Parameter:   id =  c_PROTEIN_Erg, name = c_PROTEIN_Erg
	reaction_GENE_P_Sm50_transcription_0_c_PROTEIN_Erg=1.0;
	% Local Parameter:   id =  k_PROTEIN_VEGFSignal, name = k_PROTEIN_VEGFSignal
	reaction_GENE_P_Sm50_transcription_0_k_PROTEIN_VEGFSignal=1.0;
	% Local Parameter:   id =  c_PROTEIN_VEGFSignal, name = c_PROTEIN_VEGFSignal
	reaction_GENE_P_Sm50_transcription_0_c_PROTEIN_VEGFSignal=1.0;
	% Local Parameter:   id =  k_PROTEIN_Tel, name = k_PROTEIN_Tel
	reaction_GENE_P_Sm50_transcription_0_k_PROTEIN_Tel=1.0;
	% Local Parameter:   id =  c_PROTEIN_Tel, name = c_PROTEIN_Tel
	reaction_GENE_P_Sm50_transcription_0_c_PROTEIN_Tel=1.0;
	% Local Parameter:   id =  k_PROTEIN_Hnf6, name = k_PROTEIN_Hnf6
	reaction_GENE_P_Sm50_transcription_0_k_PROTEIN_Hnf6=1.0;
	% Local Parameter:   id =  c_PROTEIN_Hnf6, name = c_PROTEIN_Hnf6
	reaction_GENE_P_Sm50_transcription_0_c_PROTEIN_Hnf6=1.0;

	reaction_GENE_P_Sm50_transcription_0=reaction_GENE_P_Sm50_transcription_0_k_PROTEIN_Dri*x(180)/(reaction_GENE_P_Sm50_transcription_0_c_PROTEIN_Dri+x(180))+reaction_GENE_P_Sm50_transcription_0_k_PROTEIN_Hnf6*x(203)/(reaction_GENE_P_Sm50_transcription_0_c_PROTEIN_Hnf6+x(203))+reaction_GENE_P_Sm50_transcription_0_k_PROTEIN_Ets1*x(183)/(reaction_GENE_P_Sm50_transcription_0_c_PROTEIN_Ets1+x(183))+reaction_GENE_P_Sm50_transcription_0_k_PROTEIN_Alx1*x(170)/(reaction_GENE_P_Sm50_transcription_0_c_PROTEIN_Alx1+x(170))+reaction_GENE_P_Sm50_transcription_0_k_PROTEIN_Tel*x(229)/(reaction_GENE_P_Sm50_transcription_0_c_PROTEIN_Tel+x(229))+reaction_GENE_P_Sm50_transcription_0_k_PROTEIN_Hex*x(202)/(reaction_GENE_P_Sm50_transcription_0_c_PROTEIN_Hex+x(202))+reaction_GENE_P_Sm50_transcription_0_k_PROTEIN_Erg*x(182)/(reaction_GENE_P_Sm50_transcription_0_c_PROTEIN_Erg+x(182))+reaction_GENE_P_Sm50_transcription_0_k_PROTEIN_VEGFSignal*x(245)/(reaction_GENE_P_Sm50_transcription_0_c_PROTEIN_VEGFSignal+x(245));

% Reaction: id = GENE_P_Snail_transcription_0, name = GENE_P_Snail_transcription	% Local Parameter:   id =  k_PROTEIN_Hex, name = k_PROTEIN_Hex
	reaction_GENE_P_Snail_transcription_0_k_PROTEIN_Hex=1.0;
	% Local Parameter:   id =  c_PROTEIN_Hex, name = c_PROTEIN_Hex
	reaction_GENE_P_Snail_transcription_0_c_PROTEIN_Hex=1.0;

	reaction_GENE_P_Snail_transcription_0=reaction_GENE_P_Snail_transcription_0_k_PROTEIN_Hex*x(202)/(reaction_GENE_P_Snail_transcription_0_c_PROTEIN_Hex+x(202));

% Reaction: id = GENE_P_SoxB1_transcription_0, name = GENE_P_SoxB1_transcription	% Local Parameter:   id =  k_PROTEIN_UbiqSoxB1, name = k_PROTEIN_UbiqSoxB1
	reaction_GENE_P_SoxB1_transcription_0_k_PROTEIN_UbiqSoxB1=1.0;
	% Local Parameter:   id =  c_PROTEIN_UbiqSoxB1, name = c_PROTEIN_UbiqSoxB1
	reaction_GENE_P_SoxB1_transcription_0_c_PROTEIN_UbiqSoxB1=1.0;
	% Local Parameter:   id =  k_PROTEIN_SoxB1, name = k_PROTEIN_SoxB1
	reaction_GENE_P_SoxB1_transcription_0_k_PROTEIN_SoxB1=1.0;
	% Local Parameter:   id =  c_PROTEIN_SoxB1, name = c_PROTEIN_SoxB1
	reaction_GENE_P_SoxB1_transcription_0_c_PROTEIN_SoxB1=1.0;

	reaction_GENE_P_SoxB1_transcription_0=reaction_GENE_P_SoxB1_transcription_0_k_PROTEIN_UbiqSoxB1*x(241)/(reaction_GENE_P_SoxB1_transcription_0_c_PROTEIN_UbiqSoxB1+x(241))*reaction_GENE_P_SoxB1_transcription_0_k_PROTEIN_SoxB1*reaction_GENE_P_SoxB1_transcription_0_c_PROTEIN_SoxB1/(reaction_GENE_P_SoxB1_transcription_0_c_PROTEIN_SoxB1+x(222));

% Reaction: id = GENE_P_SoxC_transcription_0, name = GENE_P_SoxC_transcription	% Local Parameter:   id =  k_PROTEIN_SoxC, name = k_PROTEIN_SoxC
	reaction_GENE_P_SoxC_transcription_0_k_PROTEIN_SoxC=1.0;
	% Local Parameter:   id =  c_PROTEIN_SoxC, name = c_PROTEIN_SoxC
	reaction_GENE_P_SoxC_transcription_0_c_PROTEIN_SoxC=1.0;
	% Local Parameter:   id =  k_PROTEIN_HesC, name = k_PROTEIN_HesC
	reaction_GENE_P_SoxC_transcription_0_k_PROTEIN_HesC=1.0;
	% Local Parameter:   id =  c_PROTEIN_HesC, name = c_PROTEIN_HesC
	reaction_GENE_P_SoxC_transcription_0_c_PROTEIN_HesC=1.0;
	% Local Parameter:   id =  k_PROTEIN_UbiqSoxC, name = k_PROTEIN_UbiqSoxC
	reaction_GENE_P_SoxC_transcription_0_k_PROTEIN_UbiqSoxC=1.0;
	% Local Parameter:   id =  c_PROTEIN_UbiqSoxC, name = c_PROTEIN_UbiqSoxC
	reaction_GENE_P_SoxC_transcription_0_c_PROTEIN_UbiqSoxC=1.0;

	reaction_GENE_P_SoxC_transcription_0=reaction_GENE_P_SoxC_transcription_0_k_PROTEIN_UbiqSoxC*x(242)/(reaction_GENE_P_SoxC_transcription_0_c_PROTEIN_UbiqSoxC+x(242))*reaction_GENE_P_SoxC_transcription_0_k_PROTEIN_HesC*reaction_GENE_P_SoxC_transcription_0_c_PROTEIN_HesC/(reaction_GENE_P_SoxC_transcription_0_c_PROTEIN_HesC+x(201))*reaction_GENE_P_SoxC_transcription_0_k_PROTEIN_SoxC*reaction_GENE_P_SoxC_transcription_0_c_PROTEIN_SoxC/(reaction_GENE_P_SoxC_transcription_0_c_PROTEIN_SoxC+x(223));

% Reaction: id = GENE_P_SuTx_transcription_0, name = GENE_P_SuTx_transcription	% Local Parameter:   id =  k_PROTEIN_GataE, name = k_PROTEIN_GataE
	reaction_GENE_P_SuTx_transcription_0_k_PROTEIN_GataE=1.0;
	% Local Parameter:   id =  c_PROTEIN_GataE, name = c_PROTEIN_GataE
	reaction_GENE_P_SuTx_transcription_0_c_PROTEIN_GataE=1.0;
	% Local Parameter:   id =  k_PROTEIN_Gcm, name = k_PROTEIN_Gcm
	reaction_GENE_P_SuTx_transcription_0_k_PROTEIN_Gcm=1.0;
	% Local Parameter:   id =  c_PROTEIN_Gcm, name = c_PROTEIN_Gcm
	reaction_GENE_P_SuTx_transcription_0_c_PROTEIN_Gcm=1.0;

	reaction_GENE_P_SuTx_transcription_0=reaction_GENE_P_SuTx_transcription_0_k_PROTEIN_Gcm*x(196)/(reaction_GENE_P_SuTx_transcription_0_c_PROTEIN_Gcm+x(196))+reaction_GENE_P_SuTx_transcription_0_k_PROTEIN_GataE*x(194)/(reaction_GENE_P_SuTx_transcription_0_c_PROTEIN_GataE+x(194));

% Reaction: id = GENE_P_TBr_transcription_0, name = GENE_P_TBr_transcription	% Local Parameter:   id =  k_PROTEIN_Ets1, name = k_PROTEIN_Ets1
	reaction_GENE_P_TBr_transcription_0_k_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Ets1, name = c_PROTEIN_Ets1
	reaction_GENE_P_TBr_transcription_0_c_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  k_PROTEIN_TBr, name = k_PROTEIN_TBr
	reaction_GENE_P_TBr_transcription_0_k_PROTEIN_TBr=1.0;
	% Local Parameter:   id =  c_PROTEIN_TBr, name = c_PROTEIN_TBr
	reaction_GENE_P_TBr_transcription_0_c_PROTEIN_TBr=1.0;
	% Local Parameter:   id =  k_PROTEIN_HesC, name = k_PROTEIN_HesC
	reaction_GENE_P_TBr_transcription_0_k_PROTEIN_HesC=1.0;
	% Local Parameter:   id =  c_PROTEIN_HesC, name = c_PROTEIN_HesC
	reaction_GENE_P_TBr_transcription_0_c_PROTEIN_HesC=1.0;

	reaction_GENE_P_TBr_transcription_0=reaction_GENE_P_TBr_transcription_0_k_PROTEIN_Ets1*x(183)/(reaction_GENE_P_TBr_transcription_0_c_PROTEIN_Ets1+x(183))*reaction_GENE_P_TBr_transcription_0_k_PROTEIN_HesC*reaction_GENE_P_TBr_transcription_0_c_PROTEIN_HesC/(reaction_GENE_P_TBr_transcription_0_c_PROTEIN_HesC+x(201))*reaction_GENE_P_TBr_transcription_0_k_PROTEIN_TBr*reaction_GENE_P_TBr_transcription_0_c_PROTEIN_TBr/(reaction_GENE_P_TBr_transcription_0_c_PROTEIN_TBr+x(227));

% Reaction: id = GENE_P_Tel_transcription_0, name = GENE_P_Tel_transcription	% Local Parameter:   id =  k_PROTEIN_UbiqTel, name = k_PROTEIN_UbiqTel
	reaction_GENE_P_Tel_transcription_0_k_PROTEIN_UbiqTel=1.0;
	% Local Parameter:   id =  c_PROTEIN_UbiqTel, name = c_PROTEIN_UbiqTel
	reaction_GENE_P_Tel_transcription_0_c_PROTEIN_UbiqTel=1.0;
	% Local Parameter:   id =  k_PROTEIN_Tel, name = k_PROTEIN_Tel
	reaction_GENE_P_Tel_transcription_0_k_PROTEIN_Tel=1.0;
	% Local Parameter:   id =  c_PROTEIN_Tel, name = c_PROTEIN_Tel
	reaction_GENE_P_Tel_transcription_0_c_PROTEIN_Tel=1.0;
	% Local Parameter:   id =  k_PROTEIN_HesC, name = k_PROTEIN_HesC
	reaction_GENE_P_Tel_transcription_0_k_PROTEIN_HesC=1.0;
	% Local Parameter:   id =  c_PROTEIN_HesC, name = c_PROTEIN_HesC
	reaction_GENE_P_Tel_transcription_0_c_PROTEIN_HesC=1.0;

	reaction_GENE_P_Tel_transcription_0=reaction_GENE_P_Tel_transcription_0_k_PROTEIN_UbiqTel*x(243)/(reaction_GENE_P_Tel_transcription_0_c_PROTEIN_UbiqTel+x(243))*reaction_GENE_P_Tel_transcription_0_k_PROTEIN_Tel*reaction_GENE_P_Tel_transcription_0_c_PROTEIN_Tel/(reaction_GENE_P_Tel_transcription_0_c_PROTEIN_Tel+x(229))*reaction_GENE_P_Tel_transcription_0_k_PROTEIN_HesC*reaction_GENE_P_Tel_transcription_0_c_PROTEIN_HesC/(reaction_GENE_P_Tel_transcription_0_c_PROTEIN_HesC+x(201));

% Reaction: id = GENE_P_Tgif_transcription_0, name = GENE_P_Tgif_transcription	% Local Parameter:   id =  k_PROTEIN_Ets1, name = k_PROTEIN_Ets1
	reaction_GENE_P_Tgif_transcription_0_k_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Ets1, name = c_PROTEIN_Ets1
	reaction_GENE_P_Tgif_transcription_0_c_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  k_PROTEIN_Hex, name = k_PROTEIN_Hex
	reaction_GENE_P_Tgif_transcription_0_k_PROTEIN_Hex=1.0;
	% Local Parameter:   id =  c_PROTEIN_Hex, name = c_PROTEIN_Hex
	reaction_GENE_P_Tgif_transcription_0_c_PROTEIN_Hex=1.0;
	% Local Parameter:   id =  k_PROTEIN_Erg, name = k_PROTEIN_Erg
	reaction_GENE_P_Tgif_transcription_0_k_PROTEIN_Erg=1.0;
	% Local Parameter:   id =  c_PROTEIN_Erg, name = c_PROTEIN_Erg
	reaction_GENE_P_Tgif_transcription_0_c_PROTEIN_Erg=1.0;
	% Local Parameter:   id =  k_PROTEIN_Tgif, name = k_PROTEIN_Tgif
	reaction_GENE_P_Tgif_transcription_0_k_PROTEIN_Tgif=1.0;
	% Local Parameter:   id =  c_PROTEIN_Tgif, name = c_PROTEIN_Tgif
	reaction_GENE_P_Tgif_transcription_0_c_PROTEIN_Tgif=1.0;

	reaction_GENE_P_Tgif_transcription_0=reaction_GENE_P_Tgif_transcription_0_k_PROTEIN_Tgif*x(230)/(reaction_GENE_P_Tgif_transcription_0_c_PROTEIN_Tgif+x(230))+reaction_GENE_P_Tgif_transcription_0_k_PROTEIN_Ets1*x(183)/(reaction_GENE_P_Tgif_transcription_0_c_PROTEIN_Ets1+x(183))+reaction_GENE_P_Tgif_transcription_0_k_PROTEIN_Erg*x(182)/(reaction_GENE_P_Tgif_transcription_0_c_PROTEIN_Erg+x(182))+reaction_GENE_P_Tgif_transcription_0_k_PROTEIN_Hex*x(202)/(reaction_GENE_P_Tgif_transcription_0_c_PROTEIN_Hex+x(202));

% Reaction: id = GENE_P_VEGFR_transcription_0, name = GENE_P_VEGFR_transcription	% Local Parameter:   id =  k_PROTEIN_Hex, name = k_PROTEIN_Hex
	reaction_GENE_P_VEGFR_transcription_0_k_PROTEIN_Hex=1.0;
	% Local Parameter:   id =  c_PROTEIN_Hex, name = c_PROTEIN_Hex
	reaction_GENE_P_VEGFR_transcription_0_c_PROTEIN_Hex=1.0;
	% Local Parameter:   id =  k_PROTEIN_Ets1, name = k_PROTEIN_Ets1
	reaction_GENE_P_VEGFR_transcription_0_k_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Ets1, name = c_PROTEIN_Ets1
	reaction_GENE_P_VEGFR_transcription_0_c_PROTEIN_Ets1=1.0;
	% Local Parameter:   id =  k_PROTEIN_Dri, name = k_PROTEIN_Dri
	reaction_GENE_P_VEGFR_transcription_0_k_PROTEIN_Dri=1.0;
	% Local Parameter:   id =  c_PROTEIN_Dri, name = c_PROTEIN_Dri
	reaction_GENE_P_VEGFR_transcription_0_c_PROTEIN_Dri=1.0;
	% Local Parameter:   id =  k_PROTEIN_Alx1, name = k_PROTEIN_Alx1
	reaction_GENE_P_VEGFR_transcription_0_k_PROTEIN_Alx1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Alx1, name = c_PROTEIN_Alx1
	reaction_GENE_P_VEGFR_transcription_0_c_PROTEIN_Alx1=1.0;

	reaction_GENE_P_VEGFR_transcription_0=reaction_GENE_P_VEGFR_transcription_0_k_PROTEIN_Alx1*x(170)/(reaction_GENE_P_VEGFR_transcription_0_c_PROTEIN_Alx1+x(170))+reaction_GENE_P_VEGFR_transcription_0_k_PROTEIN_Dri*x(180)/(reaction_GENE_P_VEGFR_transcription_0_c_PROTEIN_Dri+x(180))+reaction_GENE_P_VEGFR_transcription_0_k_PROTEIN_Ets1*x(183)/(reaction_GENE_P_VEGFR_transcription_0_c_PROTEIN_Ets1+x(183))+reaction_GENE_P_VEGFR_transcription_0_k_PROTEIN_Hex*x(202)/(reaction_GENE_P_VEGFR_transcription_0_c_PROTEIN_Hex+x(202));

% Reaction: id = GENE_P_Wnt8_transcription_0, name = GENE_P_Wnt8_transcription	% Local Parameter:   id =  k_PROTEIN_GroTCF, name = k_PROTEIN_GroTCF
	reaction_GENE_P_Wnt8_transcription_0_k_PROTEIN_GroTCF=1.0;
	% Local Parameter:   id =  c_PROTEIN_GroTCF, name = c_PROTEIN_GroTCF
	reaction_GENE_P_Wnt8_transcription_0_c_PROTEIN_GroTCF=1.0;
	% Local Parameter:   id =  k_PROTEIN_Blimp1, name = k_PROTEIN_Blimp1
	reaction_GENE_P_Wnt8_transcription_0_k_PROTEIN_Blimp1=1.0;
	% Local Parameter:   id =  c_PROTEIN_Blimp1, name = c_PROTEIN_Blimp1
	reaction_GENE_P_Wnt8_transcription_0_c_PROTEIN_Blimp1=1.0;
	% Local Parameter:   id =  k_PROTEIN_nBTCF, name = k_PROTEIN_nBTCF
	reaction_GENE_P_Wnt8_transcription_0_k_PROTEIN_nBTCF=1.0;
	% Local Parameter:   id =  c_PROTEIN_nBTCF, name = c_PROTEIN_nBTCF
	reaction_GENE_P_Wnt8_transcription_0_c_PROTEIN_nBTCF=1.0;

	reaction_GENE_P_Wnt8_transcription_0=(reaction_GENE_P_Wnt8_transcription_0_k_PROTEIN_nBTCF*x(250)/(reaction_GENE_P_Wnt8_transcription_0_c_PROTEIN_nBTCF+x(250))+reaction_GENE_P_Wnt8_transcription_0_k_PROTEIN_Blimp1*x(172)/(reaction_GENE_P_Wnt8_transcription_0_c_PROTEIN_Blimp1+x(172)))*reaction_GENE_P_Wnt8_transcription_0_k_PROTEIN_GroTCF*reaction_GENE_P_Wnt8_transcription_0_c_PROTEIN_GroTCF/(reaction_GENE_P_Wnt8_transcription_0_c_PROTEIN_GroTCF+x(199));

% Reaction: id = GENE_P_z13_transcription_0, name = GENE_P_z13_transcription	% Local Parameter:   id =  k_PROTEIN_GroTCF, name = k_PROTEIN_GroTCF
	reaction_GENE_P_z13_transcription_0_k_PROTEIN_GroTCF=1.0;
	% Local Parameter:   id =  c_PROTEIN_GroTCF, name = c_PROTEIN_GroTCF
	reaction_GENE_P_z13_transcription_0_c_PROTEIN_GroTCF=1.0;
	% Local Parameter:   id =  k_PROTEIN_nBTCF, name = k_PROTEIN_nBTCF
	reaction_GENE_P_z13_transcription_0_k_PROTEIN_nBTCF=1.0;
	% Local Parameter:   id =  c_PROTEIN_nBTCF, name = c_PROTEIN_nBTCF
	reaction_GENE_P_z13_transcription_0_c_PROTEIN_nBTCF=1.0;
	% Local Parameter:   id =  k_PROTEIN_Hnf6, name = k_PROTEIN_Hnf6
	reaction_GENE_P_z13_transcription_0_k_PROTEIN_Hnf6=1.0;
	% Local Parameter:   id =  c_PROTEIN_Hnf6, name = c_PROTEIN_Hnf6
	reaction_GENE_P_z13_transcription_0_c_PROTEIN_Hnf6=1.0;

	reaction_GENE_P_z13_transcription_0=reaction_GENE_P_z13_transcription_0_k_PROTEIN_nBTCF*x(250)/(reaction_GENE_P_z13_transcription_0_c_PROTEIN_nBTCF+x(250))*reaction_GENE_P_z13_transcription_0_k_PROTEIN_GroTCF*reaction_GENE_P_z13_transcription_0_c_PROTEIN_GroTCF/(reaction_GENE_P_z13_transcription_0_c_PROTEIN_GroTCF+x(199))*reaction_GENE_P_z13_transcription_0_k_PROTEIN_Hnf6*reaction_GENE_P_z13_transcription_0_c_PROTEIN_Hnf6/(reaction_GENE_P_z13_transcription_0_c_PROTEIN_Hnf6+x(203));

% Reaction: id = M_Gcad_Hill_Kinetic_0, name = M_Gcad_Hill_Kinetic	% Local Parameter:   id =  P_Gcad_HillH, name = P_Gcad_HillH
	reaction_M_Gcad_Hill_Kinetic_0_P_Gcad_HillH=8.0;
	% Local Parameter:   id =  P_Gcad_HillK, name = P_Gcad_HillK
	reaction_M_Gcad_Hill_Kinetic_0_P_Gcad_HillK=10.0;
	% Local Parameter:   id =  P_Gcad_theta1, name = P_Gcad_theta1
	reaction_M_Gcad_Hill_Kinetic_0_P_Gcad_theta1=1.0;
	% Local Parameter:   id =  P_Gcad_theta2, name = P_Gcad_theta2
	reaction_M_Gcad_Hill_Kinetic_0_P_Gcad_theta2=20.0;

	reaction_M_Gcad_Hill_Kinetic_0=global_par_M_Gcad_S1*reaction_M_Gcad_Hill_Kinetic_0_P_Gcad_HillK*time^reaction_M_Gcad_Hill_Kinetic_0_P_Gcad_HillH/(reaction_M_Gcad_Hill_Kinetic_0_P_Gcad_theta1^reaction_M_Gcad_Hill_Kinetic_0_P_Gcad_HillH+time^reaction_M_Gcad_Hill_Kinetic_0_P_Gcad_HillH)+global_par_M_Gcad_S2*reaction_M_Gcad_Hill_Kinetic_0_P_Gcad_HillK*(1-time^reaction_M_Gcad_Hill_Kinetic_0_P_Gcad_HillH/(reaction_M_Gcad_Hill_Kinetic_0_P_Gcad_theta2^reaction_M_Gcad_Hill_Kinetic_0_P_Gcad_HillH+time^reaction_M_Gcad_Hill_Kinetic_0_P_Gcad_HillH));

% Reaction: id = M_Notch_Hill_Kinetic_0, name = M_Notch_Hill_Kinetic	% Local Parameter:   id =  P_Notch_HillH, name = P_Notch_HillH
	reaction_M_Notch_Hill_Kinetic_0_P_Notch_HillH=8.0;
	% Local Parameter:   id =  P_Notch_HillK, name = P_Notch_HillK
	reaction_M_Notch_Hill_Kinetic_0_P_Notch_HillK=10.0;
	% Local Parameter:   id =  P_Notch_theta1, name = P_Notch_theta1
	reaction_M_Notch_Hill_Kinetic_0_P_Notch_theta1=1.0;
	% Local Parameter:   id =  P_Notch_theta2, name = P_Notch_theta2
	reaction_M_Notch_Hill_Kinetic_0_P_Notch_theta2=30.0;

	reaction_M_Notch_Hill_Kinetic_0=global_par_M_Notch_S1*reaction_M_Notch_Hill_Kinetic_0_P_Notch_HillK*time^reaction_M_Notch_Hill_Kinetic_0_P_Notch_HillH/(reaction_M_Notch_Hill_Kinetic_0_P_Notch_theta1^reaction_M_Notch_Hill_Kinetic_0_P_Notch_HillH+time^reaction_M_Notch_Hill_Kinetic_0_P_Notch_HillH)+global_par_M_Notch_S2*reaction_M_Notch_Hill_Kinetic_0_P_Notch_HillK*(1-time^reaction_M_Notch_Hill_Kinetic_0_P_Notch_HillH/(reaction_M_Notch_Hill_Kinetic_0_P_Notch_theta2^reaction_M_Notch_Hill_Kinetic_0_P_Notch_HillH+time^reaction_M_Notch_Hill_Kinetic_0_P_Notch_HillH));

% Reaction: id = M_Otx_Hill_Kinetic_0, name = M_Otx_Hill_Kinetic	% Local Parameter:   id =  P_Otx_HillK, name = P_Otx_HillK
	reaction_M_Otx_Hill_Kinetic_0_P_Otx_HillK=10.0;
	% Local Parameter:   id =  P_Otx_HillH, name = P_Otx_HillH
	reaction_M_Otx_Hill_Kinetic_0_P_Otx_HillH=8.0;
	% Local Parameter:   id =  P_Otx_theta1, name = P_Otx_theta1
	reaction_M_Otx_Hill_Kinetic_0_P_Otx_theta1=1.0;
	% Local Parameter:   id =  P_Otx_theta2, name = P_Otx_theta2
	reaction_M_Otx_Hill_Kinetic_0_P_Otx_theta2=11.0;

	reaction_M_Otx_Hill_Kinetic_0=global_par_M_Otx_S1*reaction_M_Otx_Hill_Kinetic_0_P_Otx_HillK*time^reaction_M_Otx_Hill_Kinetic_0_P_Otx_HillH/(reaction_M_Otx_Hill_Kinetic_0_P_Otx_theta1^reaction_M_Otx_Hill_Kinetic_0_P_Otx_HillH+time^reaction_M_Otx_Hill_Kinetic_0_P_Otx_HillH)+global_par_M_Otx_S2*reaction_M_Otx_Hill_Kinetic_0_P_Otx_HillK*(1-time^reaction_M_Otx_Hill_Kinetic_0_P_Otx_HillH/(reaction_M_Otx_Hill_Kinetic_0_P_Otx_theta2^reaction_M_Otx_Hill_Kinetic_0_P_Otx_HillH+time^reaction_M_Otx_Hill_Kinetic_0_P_Otx_HillH));

% Reaction: id = M_SoxB1_Hill_Kinetic_0, name = M_SoxB1_Hill_Kinetic	% Local Parameter:   id =  P_SoxB1_theta1, name = P_SoxB1_theta1
	reaction_M_SoxB1_Hill_Kinetic_0_P_SoxB1_theta1=1.0;
	% Local Parameter:   id =  P_SoxB1_theta2, name = P_SoxB1_theta2
	reaction_M_SoxB1_Hill_Kinetic_0_P_SoxB1_theta2=14.0;
	% Local Parameter:   id =  P_SoxB1_HillK, name = P_SoxB1_HillK
	reaction_M_SoxB1_Hill_Kinetic_0_P_SoxB1_HillK=10.0;
	% Local Parameter:   id =  P_SoxB1_HillH, name = P_SoxB1_HillH
	reaction_M_SoxB1_Hill_Kinetic_0_P_SoxB1_HillH=8.0;

	reaction_M_SoxB1_Hill_Kinetic_0=global_par_M_SoxB1_S1*reaction_M_SoxB1_Hill_Kinetic_0_P_SoxB1_HillK*time^reaction_M_SoxB1_Hill_Kinetic_0_P_SoxB1_HillH/(reaction_M_SoxB1_Hill_Kinetic_0_P_SoxB1_theta1^reaction_M_SoxB1_Hill_Kinetic_0_P_SoxB1_HillH+time^reaction_M_SoxB1_Hill_Kinetic_0_P_SoxB1_HillH)+global_par_M_SoxB1_S2*reaction_M_SoxB1_Hill_Kinetic_0_P_SoxB1_HillK*(1-time^reaction_M_SoxB1_Hill_Kinetic_0_P_SoxB1_HillH/(reaction_M_SoxB1_Hill_Kinetic_0_P_SoxB1_theta2^reaction_M_SoxB1_Hill_Kinetic_0_P_SoxB1_HillH+time^reaction_M_SoxB1_Hill_Kinetic_0_P_SoxB1_HillH));

% Reaction: id = M_SuH_Hill_Kinetic_0, name = M_SuH_Hill_Kinetic	% Local Parameter:   id =  P_SuH_HillH, name = P_SuH_HillH
	reaction_M_SuH_Hill_Kinetic_0_P_SuH_HillH=8.0;
	% Local Parameter:   id =  P_SuH_HillK, name = P_SuH_HillK
	reaction_M_SuH_Hill_Kinetic_0_P_SuH_HillK=10.0;
	% Local Parameter:   id =  P_SuH_theta1, name = P_SuH_theta1
	reaction_M_SuH_Hill_Kinetic_0_P_SuH_theta1=12.0;
	% Local Parameter:   id =  P_SuH_theta2, name = P_SuH_theta2
	reaction_M_SuH_Hill_Kinetic_0_P_SuH_theta2=30.0;

	reaction_M_SuH_Hill_Kinetic_0=global_par_M_SuH_S1*reaction_M_SuH_Hill_Kinetic_0_P_SuH_HillK*time^reaction_M_SuH_Hill_Kinetic_0_P_SuH_HillH/(reaction_M_SuH_Hill_Kinetic_0_P_SuH_theta1^reaction_M_SuH_Hill_Kinetic_0_P_SuH_HillH+time^reaction_M_SuH_Hill_Kinetic_0_P_SuH_HillH)+global_par_M_SuH_S2*reaction_M_SuH_Hill_Kinetic_0_P_SuH_HillK*(1-time^reaction_M_SuH_Hill_Kinetic_0_P_SuH_HillH/(reaction_M_SuH_Hill_Kinetic_0_P_SuH_theta2^reaction_M_SuH_Hill_Kinetic_0_P_SuH_HillH+time^reaction_M_SuH_Hill_Kinetic_0_P_SuH_HillH));

% Reaction: id = M_UMADelta_Hill_Kinetic_0, name = M_UMADelta_Hill_Kinetic	% Local Parameter:   id =  P_UMADelta_HillK, name = P_UMADelta_HillK
	reaction_M_UMADelta_Hill_Kinetic_0_P_UMADelta_HillK=10.0;
	% Local Parameter:   id =  P_UMADelta_HillH, name = P_UMADelta_HillH
	reaction_M_UMADelta_Hill_Kinetic_0_P_UMADelta_HillH=8.0;
	% Local Parameter:   id =  P_UMADelta_theta2, name = P_UMADelta_theta2
	reaction_M_UMADelta_Hill_Kinetic_0_P_UMADelta_theta2=30.0;
	% Local Parameter:   id =  P_UMADelta_theta1, name = P_UMADelta_theta1
	reaction_M_UMADelta_Hill_Kinetic_0_P_UMADelta_theta1=19.0;

	reaction_M_UMADelta_Hill_Kinetic_0=global_par_M_UMADelta_S1*reaction_M_UMADelta_Hill_Kinetic_0_P_UMADelta_HillK*time^reaction_M_UMADelta_Hill_Kinetic_0_P_UMADelta_HillH/(reaction_M_UMADelta_Hill_Kinetic_0_P_UMADelta_theta1^reaction_M_UMADelta_Hill_Kinetic_0_P_UMADelta_HillH+time^reaction_M_UMADelta_Hill_Kinetic_0_P_UMADelta_HillH)+global_par_M_UMADelta_S2*reaction_M_UMADelta_Hill_Kinetic_0_P_UMADelta_HillK*(1-time^reaction_M_UMADelta_Hill_Kinetic_0_P_UMADelta_HillH/(reaction_M_UMADelta_Hill_Kinetic_0_P_UMADelta_theta2^reaction_M_UMADelta_Hill_Kinetic_0_P_UMADelta_HillH+time^reaction_M_UMADelta_Hill_Kinetic_0_P_UMADelta_HillH));

% Reaction: id = M_UMANrl_Hill_Kinetic_0, name = M_UMANrl_Hill_Kinetic	% Local Parameter:   id =  P_UMANrl_theta2, name = P_UMANrl_theta2
	reaction_M_UMANrl_Hill_Kinetic_0_P_UMANrl_theta2=30.0;
	% Local Parameter:   id =  P_UMANrl_theta1, name = P_UMANrl_theta1
	reaction_M_UMANrl_Hill_Kinetic_0_P_UMANrl_theta1=24.0;
	% Local Parameter:   id =  P_UMANrl_HillK, name = P_UMANrl_HillK
	reaction_M_UMANrl_Hill_Kinetic_0_P_UMANrl_HillK=10.0;
	% Local Parameter:   id =  P_UMANrl_HillH, name = P_UMANrl_HillH
	reaction_M_UMANrl_Hill_Kinetic_0_P_UMANrl_HillH=8.0;

	reaction_M_UMANrl_Hill_Kinetic_0=global_par_M_UMANrl_S1*reaction_M_UMANrl_Hill_Kinetic_0_P_UMANrl_HillK*time^reaction_M_UMANrl_Hill_Kinetic_0_P_UMANrl_HillH/(reaction_M_UMANrl_Hill_Kinetic_0_P_UMANrl_theta1^reaction_M_UMANrl_Hill_Kinetic_0_P_UMANrl_HillH+time^reaction_M_UMANrl_Hill_Kinetic_0_P_UMANrl_HillH)+global_par_M_UMANrl_S2*reaction_M_UMANrl_Hill_Kinetic_0_P_UMANrl_HillK*(1-time^reaction_M_UMANrl_Hill_Kinetic_0_P_UMANrl_HillH/(reaction_M_UMANrl_Hill_Kinetic_0_P_UMANrl_theta2^reaction_M_UMANrl_Hill_Kinetic_0_P_UMANrl_HillH+time^reaction_M_UMANrl_Hill_Kinetic_0_P_UMANrl_HillH));

% Reaction: id = M_UMR_Hill_Kinetic_0, name = M_UMR_Hill_Kinetic	% Local Parameter:   id =  P_UMR_HillH, name = P_UMR_HillH
	reaction_M_UMR_Hill_Kinetic_0_P_UMR_HillH=8.0;
	% Local Parameter:   id =  P_UMR_HillK, name = P_UMR_HillK
	reaction_M_UMR_Hill_Kinetic_0_P_UMR_HillK=10.0;
	% Local Parameter:   id =  P_UMR_theta1, name = P_UMR_theta1
	reaction_M_UMR_Hill_Kinetic_0_P_UMR_theta1=15.0;
	% Local Parameter:   id =  P_UMR_theta2, name = P_UMR_theta2
	reaction_M_UMR_Hill_Kinetic_0_P_UMR_theta2=30.0;

	reaction_M_UMR_Hill_Kinetic_0=global_par_M_UMR_S1*reaction_M_UMR_Hill_Kinetic_0_P_UMR_HillK*time^reaction_M_UMR_Hill_Kinetic_0_P_UMR_HillH/(reaction_M_UMR_Hill_Kinetic_0_P_UMR_theta1^reaction_M_UMR_Hill_Kinetic_0_P_UMR_HillH+time^reaction_M_UMR_Hill_Kinetic_0_P_UMR_HillH)+global_par_M_UMR_S2*reaction_M_UMR_Hill_Kinetic_0_P_UMR_HillK*(1-time^reaction_M_UMR_Hill_Kinetic_0_P_UMR_HillH/(reaction_M_UMR_Hill_Kinetic_0_P_UMR_theta2^reaction_M_UMR_Hill_Kinetic_0_P_UMR_HillH+time^reaction_M_UMR_Hill_Kinetic_0_P_UMR_HillH));

% Reaction: id = M_UbiqSoxB1_Hill_Kinetic_0, name = M_UbiqSoxB1_Hill_Kinetic	% Local Parameter:   id =  P_UbiqSoxB1_theta2, name = P_UbiqSoxB1_theta2
	reaction_M_UbiqSoxB1_Hill_Kinetic_0_P_UbiqSoxB1_theta2=14.0;
	% Local Parameter:   id =  P_UbiqSoxB1_theta1, name = P_UbiqSoxB1_theta1
	reaction_M_UbiqSoxB1_Hill_Kinetic_0_P_UbiqSoxB1_theta1=1.0;
	% Local Parameter:   id =  P_UbiqSoxB1_HillK, name = P_UbiqSoxB1_HillK
	reaction_M_UbiqSoxB1_Hill_Kinetic_0_P_UbiqSoxB1_HillK=10.0;
	% Local Parameter:   id =  P_UbiqSoxB1_HillH, name = P_UbiqSoxB1_HillH
	reaction_M_UbiqSoxB1_Hill_Kinetic_0_P_UbiqSoxB1_HillH=8.0;

	reaction_M_UbiqSoxB1_Hill_Kinetic_0=global_par_M_UbiqSoxB1_S1*reaction_M_UbiqSoxB1_Hill_Kinetic_0_P_UbiqSoxB1_HillK*time^reaction_M_UbiqSoxB1_Hill_Kinetic_0_P_UbiqSoxB1_HillH/(reaction_M_UbiqSoxB1_Hill_Kinetic_0_P_UbiqSoxB1_theta1^reaction_M_UbiqSoxB1_Hill_Kinetic_0_P_UbiqSoxB1_HillH+time^reaction_M_UbiqSoxB1_Hill_Kinetic_0_P_UbiqSoxB1_HillH)+global_par_M_UbiqSoxB1_S2*reaction_M_UbiqSoxB1_Hill_Kinetic_0_P_UbiqSoxB1_HillK*(1-time^reaction_M_UbiqSoxB1_Hill_Kinetic_0_P_UbiqSoxB1_HillH/(reaction_M_UbiqSoxB1_Hill_Kinetic_0_P_UbiqSoxB1_theta2^reaction_M_UbiqSoxB1_Hill_Kinetic_0_P_UbiqSoxB1_HillH+time^reaction_M_UbiqSoxB1_Hill_Kinetic_0_P_UbiqSoxB1_HillH));

% Reaction: id = M_cB_Hill_Kinetic_0, name = M_cB_Hill_Kinetic	% Local Parameter:   id =  P_cB_theta1, name = P_cB_theta1
	reaction_M_cB_Hill_Kinetic_0_P_cB_theta1=1.0;
	% Local Parameter:   id =  P_cB_theta2, name = P_cB_theta2
	reaction_M_cB_Hill_Kinetic_0_P_cB_theta2=11.0;
	% Local Parameter:   id =  P_cB_HillH, name = P_cB_HillH
	reaction_M_cB_Hill_Kinetic_0_P_cB_HillH=8.0;
	% Local Parameter:   id =  P_cB_HillK, name = P_cB_HillK
	reaction_M_cB_Hill_Kinetic_0_P_cB_HillK=10.0;

	reaction_M_cB_Hill_Kinetic_0=global_par_M_cB_S1*reaction_M_cB_Hill_Kinetic_0_P_cB_HillK*time^reaction_M_cB_Hill_Kinetic_0_P_cB_HillH/(reaction_M_cB_Hill_Kinetic_0_P_cB_theta1^reaction_M_cB_Hill_Kinetic_0_P_cB_HillH+time^reaction_M_cB_Hill_Kinetic_0_P_cB_HillH)+global_par_M_cB_S2*reaction_M_cB_Hill_Kinetic_0_P_cB_HillK*(1-time^reaction_M_cB_Hill_Kinetic_0_P_cB_HillH/(reaction_M_cB_Hill_Kinetic_0_P_cB_theta2^reaction_M_cB_Hill_Kinetic_0_P_cB_HillH+time^reaction_M_cB_Hill_Kinetic_0_P_cB_HillH));

% Reaction: id = PROTEIN_E_Alx1_degradation_0, name = PROTEIN_E_Alx1_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_E_Alx1_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_E_Alx1_degradation_0=reaction_PROTEIN_E_Alx1_degradation_0_P_protein_deg*x(1);

% Reaction: id = PROTEIN_E_Apobec_degradation_0, name = PROTEIN_E_Apobec_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_E_Apobec_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_E_Apobec_degradation_0=reaction_PROTEIN_E_Apobec_degradation_0_P_protein_deg*x(2);

% Reaction: id = PROTEIN_E_Blimp1_degradation_0, name = PROTEIN_E_Blimp1_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_E_Blimp1_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_E_Blimp1_degradation_0=reaction_PROTEIN_E_Blimp1_degradation_0_P_protein_deg*x(3);

% Reaction: id = PROTEIN_E_Bra_degradation_0, name = PROTEIN_E_Bra_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_E_Bra_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_E_Bra_degradation_0=reaction_PROTEIN_E_Bra_degradation_0_P_protein_deg*x(4);

% Reaction: id = PROTEIN_E_Brn_degradation_0, name = PROTEIN_E_Brn_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_E_Brn_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_E_Brn_degradation_0=reaction_PROTEIN_E_Brn_degradation_0_P_protein_deg*x(5);

% Reaction: id = PROTEIN_E_CAPK_degradation_0, name = PROTEIN_E_CAPK_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_E_CAPK_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_E_CAPK_degradation_0=reaction_PROTEIN_E_CAPK_degradation_0_P_protein_deg*x(6);

% Reaction: id = PROTEIN_E_CyP_degradation_0, name = PROTEIN_E_CyP_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_E_CyP_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_E_CyP_degradation_0=reaction_PROTEIN_E_CyP_degradation_0_P_protein_deg*x(7);

% Reaction: id = PROTEIN_E_Delta_activation_0, name = PROTEIN_E_Delta_activation	% Local Parameter:   id =  P_activation_k, name = P_activation_k
	reaction_PROTEIN_E_Delta_activation_0_P_activation_k=0.435536193237;

	reaction_PROTEIN_E_Delta_activation_0=x(9)*x(45)*reaction_PROTEIN_E_Delta_activation_0_P_activation_k;

% Reaction: id = PROTEIN_E_Delta_degradation_0, name = PROTEIN_E_Delta_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_E_Delta_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_E_Delta_degradation_0=reaction_PROTEIN_E_Delta_degradation_0_P_protein_deg*x(8);

% Reaction: id = PROTEIN_E_Delta_inactivation_0, name = PROTEIN_E_Delta_inactivation	% Local Parameter:   id =  P_inactivation_k, name = P_inactivation_k
	reaction_PROTEIN_E_Delta_inactivation_0_P_inactivation_k=0.8402401728;

	reaction_PROTEIN_E_Delta_inactivation_0=x(8)*reaction_PROTEIN_E_Delta_inactivation_0_P_inactivation_k;

% Reaction: id = PROTEIN_E_Dpt_degradation_0, name = PROTEIN_E_Dpt_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_E_Dpt_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_E_Dpt_degradation_0=reaction_PROTEIN_E_Dpt_degradation_0_P_protein_deg*x(10);

% Reaction: id = PROTEIN_E_Dri_degradation_0, name = PROTEIN_E_Dri_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_E_Dri_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_E_Dri_degradation_0=reaction_PROTEIN_E_Dri_degradation_0_P_protein_deg*x(11);

% Reaction: id = PROTEIN_E_ES_degradation_0, name = PROTEIN_E_ES_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_E_ES_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_E_ES_degradation_0=reaction_PROTEIN_E_ES_degradation_0_P_protein_deg*x(12);

% Reaction: id = PROTEIN_E_Endo16_degradation_0, name = PROTEIN_E_Endo16_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_E_Endo16_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_E_Endo16_degradation_0=reaction_PROTEIN_E_Endo16_degradation_0_P_protein_deg*x(13);

% Reaction: id = PROTEIN_E_Erg_degradation_0, name = PROTEIN_E_Erg_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_E_Erg_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_E_Erg_degradation_0=reaction_PROTEIN_E_Erg_degradation_0_P_protein_deg*x(14);

% Reaction: id = PROTEIN_E_Ets1_degradation_0, name = PROTEIN_E_Ets1_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_E_Ets1_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_E_Ets1_degradation_0=reaction_PROTEIN_E_Ets1_degradation_0_P_protein_deg*x(15);

% Reaction: id = PROTEIN_E_Eve_degradation_0, name = PROTEIN_E_Eve_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_E_Eve_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_E_Eve_degradation_0=reaction_PROTEIN_E_Eve_degradation_0_P_protein_deg*x(16);

% Reaction: id = PROTEIN_E_Ficolin_degradation_0, name = PROTEIN_E_Ficolin_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_E_Ficolin_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_E_Ficolin_degradation_0=reaction_PROTEIN_E_Ficolin_degradation_0_P_protein_deg*x(17);

% Reaction: id = PROTEIN_E_FoxA_degradation_0, name = PROTEIN_E_FoxA_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_E_FoxA_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_E_FoxA_degradation_0=reaction_PROTEIN_E_FoxA_degradation_0_P_protein_deg*x(18);

% Reaction: id = PROTEIN_E_FoxB_degradation_0, name = PROTEIN_E_FoxB_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_E_FoxB_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_E_FoxB_degradation_0=reaction_PROTEIN_E_FoxB_degradation_0_P_protein_deg*x(19);

% Reaction: id = PROTEIN_E_FoxN23_degradation_0, name = PROTEIN_E_FoxN23_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_E_FoxN23_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_E_FoxN23_degradation_0=reaction_PROTEIN_E_FoxN23_degradation_0_P_protein_deg*x(20);

% Reaction: id = PROTEIN_E_FoxO_degradation_0, name = PROTEIN_E_FoxO_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_E_FoxO_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_E_FoxO_degradation_0=reaction_PROTEIN_E_FoxO_degradation_0_P_protein_deg*x(21);

% Reaction: id = PROTEIN_E_FvMo_degradation_0, name = PROTEIN_E_FvMo_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_E_FvMo_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_E_FvMo_degradation_0=reaction_PROTEIN_E_FvMo_degradation_0_P_protein_deg*x(22);

% Reaction: id = PROTEIN_E_GSK3_i_activation_0, name = PROTEIN_E_GSK3_i_activation	% Local Parameter:   id =  P_activation_k, name = P_activation_k
	reaction_PROTEIN_E_GSK3_i_activation_0_P_activation_k=0.358248719321;

	reaction_PROTEIN_E_GSK3_i_activation_0=x(23)*x(82)*reaction_PROTEIN_E_GSK3_i_activation_0_P_activation_k;

% Reaction: id = PROTEIN_E_GSK3_i_inactivation_0, name = PROTEIN_E_GSK3_i_inactivation	% Local Parameter:   id =  P_inactivation_k, name = P_inactivation_k
	reaction_PROTEIN_E_GSK3_i_inactivation_0_P_inactivation_k=0.0605250351104;

	reaction_PROTEIN_E_GSK3_i_inactivation_0=x(24)*reaction_PROTEIN_E_GSK3_i_inactivation_0_P_inactivation_k;

% Reaction: id = PROTEIN_E_GataC_degradation_0, name = PROTEIN_E_GataC_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_E_GataC_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_E_GataC_degradation_0=reaction_PROTEIN_E_GataC_degradation_0_P_protein_deg*x(25);

% Reaction: id = PROTEIN_E_GataE_degradation_0, name = PROTEIN_E_GataE_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_E_GataE_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_E_GataE_degradation_0=reaction_PROTEIN_E_GataE_degradation_0_P_protein_deg*x(26);

% Reaction: id = PROTEIN_E_Gcad_degradation_0, name = PROTEIN_E_Gcad_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_E_Gcad_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_E_Gcad_degradation_0=reaction_PROTEIN_E_Gcad_degradation_0_P_protein_deg*x(27);

% Reaction: id = PROTEIN_E_Gcm_degradation_0, name = PROTEIN_E_Gcm_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_E_Gcm_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_E_Gcm_degradation_0=reaction_PROTEIN_E_Gcm_degradation_0_P_protein_deg*x(28);

% Reaction: id = PROTEIN_E_Gelsolin_degradation_0, name = PROTEIN_E_Gelsolin_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_E_Gelsolin_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_E_Gelsolin_degradation_0=reaction_PROTEIN_E_Gelsolin_degradation_0_P_protein_deg*x(29);

% Reaction: id = PROTEIN_E_GroTCF_accociation_0, name = PROTEIN_E_GroTCF_accociation	% Local Parameter:   id =  P_association_k, name = P_association_k
	reaction_PROTEIN_E_GroTCF_accociation_0_P_association_k=0.711358710507;

	reaction_PROTEIN_E_GroTCF_accociation_0=reaction_PROTEIN_E_GroTCF_accociation_0_P_association_k*x(30)*x(60);

% Reaction: id = PROTEIN_E_GroTCF_dissociation_0, name = PROTEIN_E_GroTCF_dissociation	% Local Parameter:   id =  P_dissociation_k, name = P_dissociation_k
	reaction_PROTEIN_E_GroTCF_dissociation_0_P_dissociation_k=0.945338842765;

	reaction_PROTEIN_E_GroTCF_dissociation_0=reaction_PROTEIN_E_GroTCF_dissociation_0_P_dissociation_k*x(31);

% Reaction: id = PROTEIN_E_HesC_degradation_0, name = PROTEIN_E_HesC_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_E_HesC_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_E_HesC_degradation_0=reaction_PROTEIN_E_HesC_degradation_0_P_protein_deg*x(33);

% Reaction: id = PROTEIN_E_Hex_degradation_0, name = PROTEIN_E_Hex_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_E_Hex_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_E_Hex_degradation_0=reaction_PROTEIN_E_Hex_degradation_0_P_protein_deg*x(34);

% Reaction: id = PROTEIN_E_Hnf6_degradation_0, name = PROTEIN_E_Hnf6_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_E_Hnf6_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_E_Hnf6_degradation_0=reaction_PROTEIN_E_Hnf6_degradation_0_P_protein_deg*x(35);

% Reaction: id = PROTEIN_E_Hox_degradation_0, name = PROTEIN_E_Hox_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_E_Hox_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_E_Hox_degradation_0=reaction_PROTEIN_E_Hox_degradation_0_P_protein_deg*x(36);

% Reaction: id = PROTEIN_E_Kakapo_degradation_0, name = PROTEIN_E_Kakapo_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_E_Kakapo_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_E_Kakapo_degradation_0=reaction_PROTEIN_E_Kakapo_degradation_0_P_protein_deg*x(37);

% Reaction: id = PROTEIN_E_Lim_degradation_0, name = PROTEIN_E_Lim_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_E_Lim_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_E_Lim_degradation_0=reaction_PROTEIN_E_Lim_degradation_0_P_protein_deg*x(39);

% Reaction: id = PROTEIN_E_Msp130_degradation_0, name = PROTEIN_E_Msp130_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_E_Msp130_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_E_Msp130_degradation_0=reaction_PROTEIN_E_Msp130_degradation_0_P_protein_deg*x(40);

% Reaction: id = PROTEIN_E_MspL_degradation_0, name = PROTEIN_E_MspL_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_E_MspL_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_E_MspL_degradation_0=reaction_PROTEIN_E_MspL_degradation_0_P_protein_deg*x(41);

% Reaction: id = PROTEIN_E_Not_degradation_0, name = PROTEIN_E_Not_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_E_Not_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_E_Not_degradation_0=reaction_PROTEIN_E_Not_degradation_0_P_protein_deg*x(42);

% Reaction: id = PROTEIN_E_Notch_activation_0, name = PROTEIN_E_Notch_activation	% Local Parameter:   id =  P_activation_k, name = P_activation_k
	reaction_PROTEIN_E_Notch_activation_0_P_activation_k=0.683876854591;

	reaction_PROTEIN_E_Notch_activation_0=x(44)*x(9)*reaction_PROTEIN_E_Notch_activation_0_P_activation_k;

% Reaction: id = PROTEIN_E_Notch_degradation_0, name = PROTEIN_E_Notch_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_E_Notch_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_E_Notch_degradation_0=reaction_PROTEIN_E_Notch_degradation_0_P_protein_deg*x(43);

% Reaction: id = PROTEIN_E_Notch_inactivation_0, name = PROTEIN_E_Notch_inactivation	% Local Parameter:   id =  P_inactivation_k, name = P_inactivation_k
	reaction_PROTEIN_E_Notch_inactivation_0_P_inactivation_k=0.567550841749;

	reaction_PROTEIN_E_Notch_inactivation_0=x(43)*reaction_PROTEIN_E_Notch_inactivation_0_P_inactivation_k;

% Reaction: id = PROTEIN_E_Nrl_degradation_0, name = PROTEIN_E_Nrl_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_E_Nrl_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_E_Nrl_degradation_0=reaction_PROTEIN_E_Nrl_degradation_0_P_protein_deg*x(45);

% Reaction: id = PROTEIN_E_OrCt_degradation_0, name = PROTEIN_E_OrCt_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_E_OrCt_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_E_OrCt_degradation_0=reaction_PROTEIN_E_OrCt_degradation_0_P_protein_deg*x(46);

% Reaction: id = PROTEIN_E_Otx_degradation_0, name = PROTEIN_E_Otx_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_E_Otx_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_E_Otx_degradation_0=reaction_PROTEIN_E_Otx_degradation_0_P_protein_deg*x(47);

% Reaction: id = PROTEIN_E_Pks_degradation_0, name = PROTEIN_E_Pks_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_E_Pks_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_E_Pks_degradation_0=reaction_PROTEIN_E_Pks_degradation_0_P_protein_deg*x(48);

% Reaction: id = PROTEIN_E_Pmar1_degradation_0, name = PROTEIN_E_Pmar1_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_E_Pmar1_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_E_Pmar1_degradation_0=reaction_PROTEIN_E_Pmar1_degradation_0_P_protein_deg*x(49);

% Reaction: id = PROTEIN_E_Sm27_degradation_0, name = PROTEIN_E_Sm27_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_E_Sm27_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_E_Sm27_degradation_0=reaction_PROTEIN_E_Sm27_degradation_0_P_protein_deg*x(50);

% Reaction: id = PROTEIN_E_Sm30_degradation_0, name = PROTEIN_E_Sm30_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_E_Sm30_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_E_Sm30_degradation_0=reaction_PROTEIN_E_Sm30_degradation_0_P_protein_deg*x(51);

% Reaction: id = PROTEIN_E_Sm50_degradation_0, name = PROTEIN_E_Sm50_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_E_Sm50_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_E_Sm50_degradation_0=reaction_PROTEIN_E_Sm50_degradation_0_P_protein_deg*x(52);

% Reaction: id = PROTEIN_E_Snail_degradation_0, name = PROTEIN_E_Snail_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_E_Snail_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_E_Snail_degradation_0=reaction_PROTEIN_E_Snail_degradation_0_P_protein_deg*x(53);

% Reaction: id = PROTEIN_E_SoxB1_degradation_0, name = PROTEIN_E_SoxB1_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_E_SoxB1_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_E_SoxB1_degradation_0=reaction_PROTEIN_E_SoxB1_degradation_0_P_protein_deg*x(54);

% Reaction: id = PROTEIN_E_SoxC_degradation_0, name = PROTEIN_E_SoxC_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_E_SoxC_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_E_SoxC_degradation_0=reaction_PROTEIN_E_SoxC_degradation_0_P_protein_deg*x(55);

% Reaction: id = PROTEIN_E_SuHN_accociation_0, name = PROTEIN_E_SuHN_accociation	% Local Parameter:   id =  P_association_k, name = P_association_k
	reaction_PROTEIN_E_SuHN_accociation_0_P_association_k=0.727292522645;

	reaction_PROTEIN_E_SuHN_accociation_0=reaction_PROTEIN_E_SuHN_accociation_0_P_association_k*x(44)*x(56);

% Reaction: id = PROTEIN_E_SuHN_dissociation_0, name = PROTEIN_E_SuHN_dissociation	% Local Parameter:   id =  P_dissociation_k, name = P_dissociation_k
	reaction_PROTEIN_E_SuHN_dissociation_0_P_dissociation_k=0.0514508771131;

	reaction_PROTEIN_E_SuHN_dissociation_0=reaction_PROTEIN_E_SuHN_dissociation_0_P_dissociation_k*x(57);

% Reaction: id = PROTEIN_E_SuH_degradation_0, name = PROTEIN_E_SuH_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_E_SuH_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_E_SuH_degradation_0=reaction_PROTEIN_E_SuH_degradation_0_P_protein_deg*x(56);

% Reaction: id = PROTEIN_E_SuTx_degradation_0, name = PROTEIN_E_SuTx_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_E_SuTx_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_E_SuTx_degradation_0=reaction_PROTEIN_E_SuTx_degradation_0_P_protein_deg*x(58);

% Reaction: id = PROTEIN_E_TBr_degradation_0, name = PROTEIN_E_TBr_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_E_TBr_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_E_TBr_degradation_0=reaction_PROTEIN_E_TBr_degradation_0_P_protein_deg*x(59);

% Reaction: id = PROTEIN_E_Tel_degradation_0, name = PROTEIN_E_Tel_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_E_Tel_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_E_Tel_degradation_0=reaction_PROTEIN_E_Tel_degradation_0_P_protein_deg*x(61);

% Reaction: id = PROTEIN_E_Tgif_degradation_0, name = PROTEIN_E_Tgif_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_E_Tgif_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_E_Tgif_degradation_0=reaction_PROTEIN_E_Tgif_degradation_0_P_protein_deg*x(62);

% Reaction: id = PROTEIN_E_UMR_degradation_0, name = PROTEIN_E_UMR_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_E_UMR_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_E_UMR_degradation_0=reaction_PROTEIN_E_UMR_degradation_0_P_protein_deg*x(65);

% Reaction: id = PROTEIN_E_UVAOtx_degradation_0, name = PROTEIN_E_UVAOtx_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_E_UVAOtx_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_E_UVAOtx_degradation_0=reaction_PROTEIN_E_UVAOtx_degradation_0_P_protein_deg*x(66);

% Reaction: id = PROTEIN_E_UbiqSoxB1_degradation_0, name = PROTEIN_E_UbiqSoxB1_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_E_UbiqSoxB1_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_E_UbiqSoxB1_degradation_0=reaction_PROTEIN_E_UbiqSoxB1_degradation_0_P_protein_deg*x(74);

% Reaction: id = PROTEIN_E_VEGFR_degradation_0, name = PROTEIN_E_VEGFR_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_E_VEGFR_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_E_VEGFR_degradation_0=reaction_PROTEIN_E_VEGFR_degradation_0_P_protein_deg*x(78);

% Reaction: id = PROTEIN_E_VEGFSignal_accociation_0, name = PROTEIN_E_VEGFSignal_accociation	% Local Parameter:   id =  P_association_k, name = P_association_k
	reaction_PROTEIN_E_VEGFSignal_accociation_0_P_association_k=0.362233705179;

	reaction_PROTEIN_E_VEGFSignal_accociation_0=reaction_PROTEIN_E_VEGFSignal_accociation_0_P_association_k*x(38)*x(78)*x(77);

% Reaction: id = PROTEIN_E_VEGFSignal_dissociation_0, name = PROTEIN_E_VEGFSignal_dissociation	% Local Parameter:   id =  P_dissociation_k, name = P_dissociation_k
	reaction_PROTEIN_E_VEGFSignal_dissociation_0_P_dissociation_k=0.588675178836;

	reaction_PROTEIN_E_VEGFSignal_dissociation_0=reaction_PROTEIN_E_VEGFSignal_dissociation_0_P_dissociation_k*x(79);

% Reaction: id = PROTEIN_E_VEGF_degradation_0, name = PROTEIN_E_VEGF_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_E_VEGF_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_E_VEGF_degradation_0=reaction_PROTEIN_E_VEGF_degradation_0_P_protein_deg*x(77);

% Reaction: id = PROTEIN_E_Wnt8_degradation_0, name = PROTEIN_E_Wnt8_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_E_Wnt8_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_E_Wnt8_degradation_0=reaction_PROTEIN_E_Wnt8_degradation_0_P_protein_deg*x(80);

% Reaction: id = PROTEIN_E_cB_a_degradation_0, name = PROTEIN_E_cB_a_degradation	% Local Parameter:   id =  P_adeg_k, name = P_adeg_k
	reaction_PROTEIN_E_cB_a_degradation_0_P_adeg_k=0.882551015859;

	reaction_PROTEIN_E_cB_a_degradation_0=x(81)*x(23)*reaction_PROTEIN_E_cB_a_degradation_0_P_adeg_k;

% Reaction: id = PROTEIN_E_cB_degradation_0, name = PROTEIN_E_cB_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_E_cB_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_E_cB_degradation_0=reaction_PROTEIN_E_cB_degradation_0_P_protein_deg*x(81);

% Reaction: id = PROTEIN_E_frizzled_a_activation_0, name = PROTEIN_E_frizzled_a_activation	% Local Parameter:   id =  P_activation_k, name = P_activation_k
	reaction_PROTEIN_E_frizzled_a_activation_0_P_activation_k=0.851147549911;

	reaction_PROTEIN_E_frizzled_a_activation_0=x(83)*x(80)*reaction_PROTEIN_E_frizzled_a_activation_0_P_activation_k;

% Reaction: id = PROTEIN_E_frizzled_a_inactivation_0, name = PROTEIN_E_frizzled_a_inactivation	% Local Parameter:   id =  P_inactivation_k, name = P_inactivation_k
	reaction_PROTEIN_E_frizzled_a_inactivation_0_P_inactivation_k=0.190932144548;

	reaction_PROTEIN_E_frizzled_a_inactivation_0=x(82)*reaction_PROTEIN_E_frizzled_a_inactivation_0_P_inactivation_k;

% Reaction: id = PROTEIN_E_nBTCF_accociation_0, name = PROTEIN_E_nBTCF_accociation	% Local Parameter:   id =  P_association_k, name = P_association_k
	reaction_PROTEIN_E_nBTCF_accociation_0_P_association_k=0.329069784231;

	reaction_PROTEIN_E_nBTCF_accociation_0=reaction_PROTEIN_E_nBTCF_accociation_0_P_association_k*x(81)*x(60);

% Reaction: id = PROTEIN_E_nBTCF_dissociation_0, name = PROTEIN_E_nBTCF_dissociation	% Local Parameter:   id =  P_dissociation_k, name = P_dissociation_k
	reaction_PROTEIN_E_nBTCF_dissociation_0_P_dissociation_k=0.381605778094;

	reaction_PROTEIN_E_nBTCF_dissociation_0=reaction_PROTEIN_E_nBTCF_dissociation_0_P_dissociation_k*x(84);

% Reaction: id = PROTEIN_E_z13_degradation_0, name = PROTEIN_E_z13_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_E_z13_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_E_z13_degradation_0=reaction_PROTEIN_E_z13_degradation_0_P_protein_deg*x(85);

% Reaction: id = PROTEIN_M_Alx1_degradation_0, name = PROTEIN_M_Alx1_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_M_Alx1_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_M_Alx1_degradation_0=reaction_PROTEIN_M_Alx1_degradation_0_P_protein_deg*x(87);

% Reaction: id = PROTEIN_M_Apobec_degradation_0, name = PROTEIN_M_Apobec_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_M_Apobec_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_M_Apobec_degradation_0=reaction_PROTEIN_M_Apobec_degradation_0_P_protein_deg*x(88);

% Reaction: id = PROTEIN_M_Blimp1_degradation_0, name = PROTEIN_M_Blimp1_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_M_Blimp1_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_M_Blimp1_degradation_0=reaction_PROTEIN_M_Blimp1_degradation_0_P_protein_deg*x(89);

% Reaction: id = PROTEIN_M_Bra_degradation_0, name = PROTEIN_M_Bra_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_M_Bra_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_M_Bra_degradation_0=reaction_PROTEIN_M_Bra_degradation_0_P_protein_deg*x(90);

% Reaction: id = PROTEIN_M_Brn_degradation_0, name = PROTEIN_M_Brn_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_M_Brn_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_M_Brn_degradation_0=reaction_PROTEIN_M_Brn_degradation_0_P_protein_deg*x(91);

% Reaction: id = PROTEIN_M_CAPK_degradation_0, name = PROTEIN_M_CAPK_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_M_CAPK_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_M_CAPK_degradation_0=reaction_PROTEIN_M_CAPK_degradation_0_P_protein_deg*x(92);

% Reaction: id = PROTEIN_M_CyP_degradation_0, name = PROTEIN_M_CyP_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_M_CyP_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_M_CyP_degradation_0=reaction_PROTEIN_M_CyP_degradation_0_P_protein_deg*x(93);

% Reaction: id = PROTEIN_M_Delta_activation_0, name = PROTEIN_M_Delta_activation	% Local Parameter:   id =  P_activation_k, name = P_activation_k
	reaction_PROTEIN_M_Delta_activation_0_P_activation_k=0.435536193237;

	reaction_PROTEIN_M_Delta_activation_0=x(95)*x(130)*reaction_PROTEIN_M_Delta_activation_0_P_activation_k;

% Reaction: id = PROTEIN_M_Delta_degradation_0, name = PROTEIN_M_Delta_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_M_Delta_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_M_Delta_degradation_0=reaction_PROTEIN_M_Delta_degradation_0_P_protein_deg*x(94);

% Reaction: id = PROTEIN_M_Delta_inactivation_0, name = PROTEIN_M_Delta_inactivation	% Local Parameter:   id =  P_inactivation_k, name = P_inactivation_k
	reaction_PROTEIN_M_Delta_inactivation_0_P_inactivation_k=0.8402401728;

	reaction_PROTEIN_M_Delta_inactivation_0=x(94)*reaction_PROTEIN_M_Delta_inactivation_0_P_inactivation_k;

% Reaction: id = PROTEIN_M_Dpt_degradation_0, name = PROTEIN_M_Dpt_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_M_Dpt_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_M_Dpt_degradation_0=reaction_PROTEIN_M_Dpt_degradation_0_P_protein_deg*x(96);

% Reaction: id = PROTEIN_M_Dri_degradation_0, name = PROTEIN_M_Dri_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_M_Dri_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_M_Dri_degradation_0=reaction_PROTEIN_M_Dri_degradation_0_P_protein_deg*x(97);

% Reaction: id = PROTEIN_M_Endo16_degradation_0, name = PROTEIN_M_Endo16_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_M_Endo16_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_M_Endo16_degradation_0=reaction_PROTEIN_M_Endo16_degradation_0_P_protein_deg*x(98);

% Reaction: id = PROTEIN_M_Erg_degradation_0, name = PROTEIN_M_Erg_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_M_Erg_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_M_Erg_degradation_0=reaction_PROTEIN_M_Erg_degradation_0_P_protein_deg*x(99);

% Reaction: id = PROTEIN_M_Ets1_degradation_0, name = PROTEIN_M_Ets1_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_M_Ets1_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_M_Ets1_degradation_0=reaction_PROTEIN_M_Ets1_degradation_0_P_protein_deg*x(100);

% Reaction: id = PROTEIN_M_Eve_degradation_0, name = PROTEIN_M_Eve_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_M_Eve_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_M_Eve_degradation_0=reaction_PROTEIN_M_Eve_degradation_0_P_protein_deg*x(101);

% Reaction: id = PROTEIN_M_Ficolin_degradation_0, name = PROTEIN_M_Ficolin_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_M_Ficolin_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_M_Ficolin_degradation_0=reaction_PROTEIN_M_Ficolin_degradation_0_P_protein_deg*x(102);

% Reaction: id = PROTEIN_M_FoxA_degradation_0, name = PROTEIN_M_FoxA_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_M_FoxA_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_M_FoxA_degradation_0=reaction_PROTEIN_M_FoxA_degradation_0_P_protein_deg*x(103);

% Reaction: id = PROTEIN_M_FoxB_degradation_0, name = PROTEIN_M_FoxB_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_M_FoxB_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_M_FoxB_degradation_0=reaction_PROTEIN_M_FoxB_degradation_0_P_protein_deg*x(104);

% Reaction: id = PROTEIN_M_FoxN23_degradation_0, name = PROTEIN_M_FoxN23_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_M_FoxN23_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_M_FoxN23_degradation_0=reaction_PROTEIN_M_FoxN23_degradation_0_P_protein_deg*x(105);

% Reaction: id = PROTEIN_M_FoxO_degradation_0, name = PROTEIN_M_FoxO_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_M_FoxO_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_M_FoxO_degradation_0=reaction_PROTEIN_M_FoxO_degradation_0_P_protein_deg*x(106);

% Reaction: id = PROTEIN_M_FvMo_degradation_0, name = PROTEIN_M_FvMo_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_M_FvMo_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_M_FvMo_degradation_0=reaction_PROTEIN_M_FvMo_degradation_0_P_protein_deg*x(107);

% Reaction: id = PROTEIN_M_GSK3_i_activation_0, name = PROTEIN_M_GSK3_i_activation	% Local Parameter:   id =  P_activation_k, name = P_activation_k
	reaction_PROTEIN_M_GSK3_i_activation_0_P_activation_k=0.358248719321;

	reaction_PROTEIN_M_GSK3_i_activation_0=x(108)*x(166)*reaction_PROTEIN_M_GSK3_i_activation_0_P_activation_k;

% Reaction: id = PROTEIN_M_GSK3_i_inactivation_0, name = PROTEIN_M_GSK3_i_inactivation	% Local Parameter:   id =  P_inactivation_k, name = P_inactivation_k
	reaction_PROTEIN_M_GSK3_i_inactivation_0_P_inactivation_k=0.0605250351104;

	reaction_PROTEIN_M_GSK3_i_inactivation_0=x(109)*reaction_PROTEIN_M_GSK3_i_inactivation_0_P_inactivation_k;

% Reaction: id = PROTEIN_M_GataC_degradation_0, name = PROTEIN_M_GataC_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_M_GataC_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_M_GataC_degradation_0=reaction_PROTEIN_M_GataC_degradation_0_P_protein_deg*x(110);

% Reaction: id = PROTEIN_M_GataE_degradation_0, name = PROTEIN_M_GataE_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_M_GataE_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_M_GataE_degradation_0=reaction_PROTEIN_M_GataE_degradation_0_P_protein_deg*x(111);

% Reaction: id = PROTEIN_M_Gcad_degradation_0, name = PROTEIN_M_Gcad_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_M_Gcad_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_M_Gcad_degradation_0=reaction_PROTEIN_M_Gcad_degradation_0_P_protein_deg*x(112);

% Reaction: id = PROTEIN_M_Gcm_degradation_0, name = PROTEIN_M_Gcm_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_M_Gcm_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_M_Gcm_degradation_0=reaction_PROTEIN_M_Gcm_degradation_0_P_protein_deg*x(113);

% Reaction: id = PROTEIN_M_Gelsolin_degradation_0, name = PROTEIN_M_Gelsolin_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_M_Gelsolin_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_M_Gelsolin_degradation_0=reaction_PROTEIN_M_Gelsolin_degradation_0_P_protein_deg*x(114);

% Reaction: id = PROTEIN_M_GroTCF_accociation_0, name = PROTEIN_M_GroTCF_accociation	% Local Parameter:   id =  P_association_k, name = P_association_k
	reaction_PROTEIN_M_GroTCF_accociation_0_P_association_k=0.711358710507;

	reaction_PROTEIN_M_GroTCF_accociation_0=reaction_PROTEIN_M_GroTCF_accociation_0_P_association_k*x(115)*x(145);

% Reaction: id = PROTEIN_M_GroTCF_dissociation_0, name = PROTEIN_M_GroTCF_dissociation	% Local Parameter:   id =  P_dissociation_k, name = P_dissociation_k
	reaction_PROTEIN_M_GroTCF_dissociation_0_P_dissociation_k=0.945338842765;

	reaction_PROTEIN_M_GroTCF_dissociation_0=reaction_PROTEIN_M_GroTCF_dissociation_0_P_dissociation_k*x(116);

% Reaction: id = PROTEIN_M_HesC_degradation_0, name = PROTEIN_M_HesC_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_M_HesC_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_M_HesC_degradation_0=reaction_PROTEIN_M_HesC_degradation_0_P_protein_deg*x(118);

% Reaction: id = PROTEIN_M_Hex_degradation_0, name = PROTEIN_M_Hex_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_M_Hex_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_M_Hex_degradation_0=reaction_PROTEIN_M_Hex_degradation_0_P_protein_deg*x(119);

% Reaction: id = PROTEIN_M_Hnf6_degradation_0, name = PROTEIN_M_Hnf6_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_M_Hnf6_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_M_Hnf6_degradation_0=reaction_PROTEIN_M_Hnf6_degradation_0_P_protein_deg*x(120);

% Reaction: id = PROTEIN_M_Hox_degradation_0, name = PROTEIN_M_Hox_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_M_Hox_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_M_Hox_degradation_0=reaction_PROTEIN_M_Hox_degradation_0_P_protein_deg*x(121);

% Reaction: id = PROTEIN_M_Kakapo_degradation_0, name = PROTEIN_M_Kakapo_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_M_Kakapo_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_M_Kakapo_degradation_0=reaction_PROTEIN_M_Kakapo_degradation_0_P_protein_deg*x(122);

% Reaction: id = PROTEIN_M_Lim_degradation_0, name = PROTEIN_M_Lim_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_M_Lim_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_M_Lim_degradation_0=reaction_PROTEIN_M_Lim_degradation_0_P_protein_deg*x(124);

% Reaction: id = PROTEIN_M_Msp130_degradation_0, name = PROTEIN_M_Msp130_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_M_Msp130_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_M_Msp130_degradation_0=reaction_PROTEIN_M_Msp130_degradation_0_P_protein_deg*x(125);

% Reaction: id = PROTEIN_M_MspL_degradation_0, name = PROTEIN_M_MspL_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_M_MspL_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_M_MspL_degradation_0=reaction_PROTEIN_M_MspL_degradation_0_P_protein_deg*x(126);

% Reaction: id = PROTEIN_M_Not_degradation_0, name = PROTEIN_M_Not_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_M_Not_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_M_Not_degradation_0=reaction_PROTEIN_M_Not_degradation_0_P_protein_deg*x(127);

% Reaction: id = PROTEIN_M_Notch_activation_0, name = PROTEIN_M_Notch_activation	% Local Parameter:   id =  P_activation_k, name = P_activation_k
	reaction_PROTEIN_M_Notch_activation_0_P_activation_k=0.683876854591;

	reaction_PROTEIN_M_Notch_activation_0=x(129)*x(95)*reaction_PROTEIN_M_Notch_activation_0_P_activation_k;

% Reaction: id = PROTEIN_M_Notch_degradation_0, name = PROTEIN_M_Notch_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_M_Notch_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_M_Notch_degradation_0=reaction_PROTEIN_M_Notch_degradation_0_P_protein_deg*x(128);

% Reaction: id = PROTEIN_M_Notch_inactivation_0, name = PROTEIN_M_Notch_inactivation	% Local Parameter:   id =  P_inactivation_k, name = P_inactivation_k
	reaction_PROTEIN_M_Notch_inactivation_0_P_inactivation_k=0.567550841749;

	reaction_PROTEIN_M_Notch_inactivation_0=x(128)*reaction_PROTEIN_M_Notch_inactivation_0_P_inactivation_k;

% Reaction: id = PROTEIN_M_Nrl_degradation_0, name = PROTEIN_M_Nrl_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_M_Nrl_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_M_Nrl_degradation_0=reaction_PROTEIN_M_Nrl_degradation_0_P_protein_deg*x(130);

% Reaction: id = PROTEIN_M_OrCt_degradation_0, name = PROTEIN_M_OrCt_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_M_OrCt_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_M_OrCt_degradation_0=reaction_PROTEIN_M_OrCt_degradation_0_P_protein_deg*x(131);

% Reaction: id = PROTEIN_M_Otx_degradation_0, name = PROTEIN_M_Otx_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_M_Otx_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_M_Otx_degradation_0=reaction_PROTEIN_M_Otx_degradation_0_P_protein_deg*x(132);

% Reaction: id = PROTEIN_M_Pks_degradation_0, name = PROTEIN_M_Pks_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_M_Pks_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_M_Pks_degradation_0=reaction_PROTEIN_M_Pks_degradation_0_P_protein_deg*x(133);

% Reaction: id = PROTEIN_M_Pmar1_degradation_0, name = PROTEIN_M_Pmar1_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_M_Pmar1_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_M_Pmar1_degradation_0=reaction_PROTEIN_M_Pmar1_degradation_0_P_protein_deg*x(134);

% Reaction: id = PROTEIN_M_Sm27_degradation_0, name = PROTEIN_M_Sm27_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_M_Sm27_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_M_Sm27_degradation_0=reaction_PROTEIN_M_Sm27_degradation_0_P_protein_deg*x(135);

% Reaction: id = PROTEIN_M_Sm30_degradation_0, name = PROTEIN_M_Sm30_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_M_Sm30_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_M_Sm30_degradation_0=reaction_PROTEIN_M_Sm30_degradation_0_P_protein_deg*x(136);

% Reaction: id = PROTEIN_M_Sm50_degradation_0, name = PROTEIN_M_Sm50_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_M_Sm50_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_M_Sm50_degradation_0=reaction_PROTEIN_M_Sm50_degradation_0_P_protein_deg*x(137);

% Reaction: id = PROTEIN_M_Snail_degradation_0, name = PROTEIN_M_Snail_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_M_Snail_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_M_Snail_degradation_0=reaction_PROTEIN_M_Snail_degradation_0_P_protein_deg*x(138);

% Reaction: id = PROTEIN_M_SoxB1_degradation_0, name = PROTEIN_M_SoxB1_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_M_SoxB1_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_M_SoxB1_degradation_0=reaction_PROTEIN_M_SoxB1_degradation_0_P_protein_deg*x(139);

% Reaction: id = PROTEIN_M_SoxC_degradation_0, name = PROTEIN_M_SoxC_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_M_SoxC_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_M_SoxC_degradation_0=reaction_PROTEIN_M_SoxC_degradation_0_P_protein_deg*x(140);

% Reaction: id = PROTEIN_M_SuHN_accociation_0, name = PROTEIN_M_SuHN_accociation	% Local Parameter:   id =  P_association_k, name = P_association_k
	reaction_PROTEIN_M_SuHN_accociation_0_P_association_k=0.727292522645;

	reaction_PROTEIN_M_SuHN_accociation_0=reaction_PROTEIN_M_SuHN_accociation_0_P_association_k*x(129)*x(141);

% Reaction: id = PROTEIN_M_SuHN_dissociation_0, name = PROTEIN_M_SuHN_dissociation	% Local Parameter:   id =  P_dissociation_k, name = P_dissociation_k
	reaction_PROTEIN_M_SuHN_dissociation_0_P_dissociation_k=0.0514508771131;

	reaction_PROTEIN_M_SuHN_dissociation_0=reaction_PROTEIN_M_SuHN_dissociation_0_P_dissociation_k*x(142);

% Reaction: id = PROTEIN_M_SuH_degradation_0, name = PROTEIN_M_SuH_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_M_SuH_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_M_SuH_degradation_0=reaction_PROTEIN_M_SuH_degradation_0_P_protein_deg*x(141);

% Reaction: id = PROTEIN_M_SuTx_degradation_0, name = PROTEIN_M_SuTx_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_M_SuTx_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_M_SuTx_degradation_0=reaction_PROTEIN_M_SuTx_degradation_0_P_protein_deg*x(143);

% Reaction: id = PROTEIN_M_TBr_degradation_0, name = PROTEIN_M_TBr_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_M_TBr_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_M_TBr_degradation_0=reaction_PROTEIN_M_TBr_degradation_0_P_protein_deg*x(144);

% Reaction: id = PROTEIN_M_Tel_degradation_0, name = PROTEIN_M_Tel_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_M_Tel_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_M_Tel_degradation_0=reaction_PROTEIN_M_Tel_degradation_0_P_protein_deg*x(146);

% Reaction: id = PROTEIN_M_Tgif_degradation_0, name = PROTEIN_M_Tgif_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_M_Tgif_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_M_Tgif_degradation_0=reaction_PROTEIN_M_Tgif_degradation_0_P_protein_deg*x(147);

% Reaction: id = PROTEIN_M_UMADelta_degradation_0, name = PROTEIN_M_UMADelta_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_M_UMADelta_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_M_UMADelta_degradation_0=reaction_PROTEIN_M_UMADelta_degradation_0_P_protein_deg*x(148);

% Reaction: id = PROTEIN_M_UMANrl_degradation_0, name = PROTEIN_M_UMANrl_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_M_UMANrl_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_M_UMANrl_degradation_0=reaction_PROTEIN_M_UMANrl_degradation_0_P_protein_deg*x(149);

% Reaction: id = PROTEIN_M_UMR_degradation_0, name = PROTEIN_M_UMR_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_M_UMR_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_M_UMR_degradation_0=reaction_PROTEIN_M_UMR_degradation_0_P_protein_deg*x(150);

% Reaction: id = PROTEIN_M_UbiqSoxB1_degradation_0, name = PROTEIN_M_UbiqSoxB1_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_M_UbiqSoxB1_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_M_UbiqSoxB1_degradation_0=reaction_PROTEIN_M_UbiqSoxB1_degradation_0_P_protein_deg*x(159);

% Reaction: id = PROTEIN_M_VEGFR_degradation_0, name = PROTEIN_M_VEGFR_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_M_VEGFR_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_M_VEGFR_degradation_0=reaction_PROTEIN_M_VEGFR_degradation_0_P_protein_deg*x(162);

% Reaction: id = PROTEIN_M_VEGFSignal_accociation_0, name = PROTEIN_M_VEGFSignal_accociation	% Local Parameter:   id =  P_association_k, name = P_association_k
	reaction_PROTEIN_M_VEGFSignal_accociation_0_P_association_k=0.362233705179;

	reaction_PROTEIN_M_VEGFSignal_accociation_0=reaction_PROTEIN_M_VEGFSignal_accociation_0_P_association_k*x(123)*x(162)*x(77);

% Reaction: id = PROTEIN_M_VEGFSignal_dissociation_0, name = PROTEIN_M_VEGFSignal_dissociation	% Local Parameter:   id =  P_dissociation_k, name = P_dissociation_k
	reaction_PROTEIN_M_VEGFSignal_dissociation_0_P_dissociation_k=0.588675178836;

	reaction_PROTEIN_M_VEGFSignal_dissociation_0=reaction_PROTEIN_M_VEGFSignal_dissociation_0_P_dissociation_k*x(163);

% Reaction: id = PROTEIN_M_Wnt8_degradation_0, name = PROTEIN_M_Wnt8_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_M_Wnt8_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_M_Wnt8_degradation_0=reaction_PROTEIN_M_Wnt8_degradation_0_P_protein_deg*x(164);

% Reaction: id = PROTEIN_M_cB_a_degradation_0, name = PROTEIN_M_cB_a_degradation	% Local Parameter:   id =  P_adeg_k, name = P_adeg_k
	reaction_PROTEIN_M_cB_a_degradation_0_P_adeg_k=0.882551015859;

	reaction_PROTEIN_M_cB_a_degradation_0=x(165)*x(108)*reaction_PROTEIN_M_cB_a_degradation_0_P_adeg_k;

% Reaction: id = PROTEIN_M_cB_degradation_0, name = PROTEIN_M_cB_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_M_cB_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_M_cB_degradation_0=reaction_PROTEIN_M_cB_degradation_0_P_protein_deg*x(165);

% Reaction: id = PROTEIN_M_frizzled_a_activation_0, name = PROTEIN_M_frizzled_a_activation	% Local Parameter:   id =  P_activation_k, name = P_activation_k
	reaction_PROTEIN_M_frizzled_a_activation_0_P_activation_k=0.851147549911;

	reaction_PROTEIN_M_frizzled_a_activation_0=x(167)*x(164)*reaction_PROTEIN_M_frizzled_a_activation_0_P_activation_k;

% Reaction: id = PROTEIN_M_frizzled_a_inactivation_0, name = PROTEIN_M_frizzled_a_inactivation	% Local Parameter:   id =  P_inactivation_k, name = P_inactivation_k
	reaction_PROTEIN_M_frizzled_a_inactivation_0_P_inactivation_k=0.190932144548;

	reaction_PROTEIN_M_frizzled_a_inactivation_0=x(166)*reaction_PROTEIN_M_frizzled_a_inactivation_0_P_inactivation_k;

% Reaction: id = PROTEIN_M_nBTCF_accociation_0, name = PROTEIN_M_nBTCF_accociation	% Local Parameter:   id =  P_association_k, name = P_association_k
	reaction_PROTEIN_M_nBTCF_accociation_0_P_association_k=0.329069784231;

	reaction_PROTEIN_M_nBTCF_accociation_0=reaction_PROTEIN_M_nBTCF_accociation_0_P_association_k*x(165)*x(145);

% Reaction: id = PROTEIN_M_nBTCF_dissociation_0, name = PROTEIN_M_nBTCF_dissociation	% Local Parameter:   id =  P_dissociation_k, name = P_dissociation_k
	reaction_PROTEIN_M_nBTCF_dissociation_0_P_dissociation_k=0.381605778094;

	reaction_PROTEIN_M_nBTCF_dissociation_0=reaction_PROTEIN_M_nBTCF_dissociation_0_P_dissociation_k*x(168);

% Reaction: id = PROTEIN_M_z13_degradation_0, name = PROTEIN_M_z13_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_M_z13_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_M_z13_degradation_0=reaction_PROTEIN_M_z13_degradation_0_P_protein_deg*x(169);

% Reaction: id = PROTEIN_P_Alx1_degradation_0, name = PROTEIN_P_Alx1_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_P_Alx1_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_P_Alx1_degradation_0=reaction_PROTEIN_P_Alx1_degradation_0_P_protein_deg*x(170);

% Reaction: id = PROTEIN_P_Apobec_degradation_0, name = PROTEIN_P_Apobec_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_P_Apobec_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_P_Apobec_degradation_0=reaction_PROTEIN_P_Apobec_degradation_0_P_protein_deg*x(171);

% Reaction: id = PROTEIN_P_Blimp1_degradation_0, name = PROTEIN_P_Blimp1_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_P_Blimp1_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_P_Blimp1_degradation_0=reaction_PROTEIN_P_Blimp1_degradation_0_P_protein_deg*x(172);

% Reaction: id = PROTEIN_P_Bra_degradation_0, name = PROTEIN_P_Bra_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_P_Bra_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_P_Bra_degradation_0=reaction_PROTEIN_P_Bra_degradation_0_P_protein_deg*x(173);

% Reaction: id = PROTEIN_P_Brn_degradation_0, name = PROTEIN_P_Brn_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_P_Brn_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_P_Brn_degradation_0=reaction_PROTEIN_P_Brn_degradation_0_P_protein_deg*x(174);

% Reaction: id = PROTEIN_P_CAPK_degradation_0, name = PROTEIN_P_CAPK_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_P_CAPK_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_P_CAPK_degradation_0=reaction_PROTEIN_P_CAPK_degradation_0_P_protein_deg*x(175);

% Reaction: id = PROTEIN_P_CyP_degradation_0, name = PROTEIN_P_CyP_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_P_CyP_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_P_CyP_degradation_0=reaction_PROTEIN_P_CyP_degradation_0_P_protein_deg*x(176);

% Reaction: id = PROTEIN_P_Delta_activation_0, name = PROTEIN_P_Delta_activation	% Local Parameter:   id =  P_activation_k, name = P_activation_k
	reaction_PROTEIN_P_Delta_activation_0_P_activation_k=0.435536193237;

	reaction_PROTEIN_P_Delta_activation_0=x(178)*x(213)*reaction_PROTEIN_P_Delta_activation_0_P_activation_k;

% Reaction: id = PROTEIN_P_Delta_degradation_0, name = PROTEIN_P_Delta_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_P_Delta_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_P_Delta_degradation_0=reaction_PROTEIN_P_Delta_degradation_0_P_protein_deg*x(177);

% Reaction: id = PROTEIN_P_Delta_inactivation_0, name = PROTEIN_P_Delta_inactivation	% Local Parameter:   id =  P_inactivation_k, name = P_inactivation_k
	reaction_PROTEIN_P_Delta_inactivation_0_P_inactivation_k=0.8402401728;

	reaction_PROTEIN_P_Delta_inactivation_0=x(177)*reaction_PROTEIN_P_Delta_inactivation_0_P_inactivation_k;

% Reaction: id = PROTEIN_P_Dpt_degradation_0, name = PROTEIN_P_Dpt_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_P_Dpt_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_P_Dpt_degradation_0=reaction_PROTEIN_P_Dpt_degradation_0_P_protein_deg*x(179);

% Reaction: id = PROTEIN_P_Dri_degradation_0, name = PROTEIN_P_Dri_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_P_Dri_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_P_Dri_degradation_0=reaction_PROTEIN_P_Dri_degradation_0_P_protein_deg*x(180);

% Reaction: id = PROTEIN_P_Endo16_degradation_0, name = PROTEIN_P_Endo16_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_P_Endo16_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_P_Endo16_degradation_0=reaction_PROTEIN_P_Endo16_degradation_0_P_protein_deg*x(181);

% Reaction: id = PROTEIN_P_Erg_degradation_0, name = PROTEIN_P_Erg_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_P_Erg_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_P_Erg_degradation_0=reaction_PROTEIN_P_Erg_degradation_0_P_protein_deg*x(182);

% Reaction: id = PROTEIN_P_Ets1_degradation_0, name = PROTEIN_P_Ets1_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_P_Ets1_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_P_Ets1_degradation_0=reaction_PROTEIN_P_Ets1_degradation_0_P_protein_deg*x(183);

% Reaction: id = PROTEIN_P_Eve_degradation_0, name = PROTEIN_P_Eve_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_P_Eve_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_P_Eve_degradation_0=reaction_PROTEIN_P_Eve_degradation_0_P_protein_deg*x(184);

% Reaction: id = PROTEIN_P_Ficolin_degradation_0, name = PROTEIN_P_Ficolin_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_P_Ficolin_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_P_Ficolin_degradation_0=reaction_PROTEIN_P_Ficolin_degradation_0_P_protein_deg*x(185);

% Reaction: id = PROTEIN_P_FoxA_degradation_0, name = PROTEIN_P_FoxA_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_P_FoxA_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_P_FoxA_degradation_0=reaction_PROTEIN_P_FoxA_degradation_0_P_protein_deg*x(186);

% Reaction: id = PROTEIN_P_FoxB_degradation_0, name = PROTEIN_P_FoxB_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_P_FoxB_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_P_FoxB_degradation_0=reaction_PROTEIN_P_FoxB_degradation_0_P_protein_deg*x(187);

% Reaction: id = PROTEIN_P_FoxN23_degradation_0, name = PROTEIN_P_FoxN23_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_P_FoxN23_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_P_FoxN23_degradation_0=reaction_PROTEIN_P_FoxN23_degradation_0_P_protein_deg*x(188);

% Reaction: id = PROTEIN_P_FoxO_degradation_0, name = PROTEIN_P_FoxO_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_P_FoxO_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_P_FoxO_degradation_0=reaction_PROTEIN_P_FoxO_degradation_0_P_protein_deg*x(189);

% Reaction: id = PROTEIN_P_FvMo_degradation_0, name = PROTEIN_P_FvMo_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_P_FvMo_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_P_FvMo_degradation_0=reaction_PROTEIN_P_FvMo_degradation_0_P_protein_deg*x(190);

% Reaction: id = PROTEIN_P_GSK3_i_activation_0, name = PROTEIN_P_GSK3_i_activation	% Local Parameter:   id =  P_activation_k, name = P_activation_k
	reaction_PROTEIN_P_GSK3_i_activation_0_P_activation_k=0.358248719321;

	reaction_PROTEIN_P_GSK3_i_activation_0=x(191)*x(248)*reaction_PROTEIN_P_GSK3_i_activation_0_P_activation_k;

% Reaction: id = PROTEIN_P_GSK3_i_inactivation_0, name = PROTEIN_P_GSK3_i_inactivation	% Local Parameter:   id =  P_inactivation_k, name = P_inactivation_k
	reaction_PROTEIN_P_GSK3_i_inactivation_0_P_inactivation_k=0.0605250351104;

	reaction_PROTEIN_P_GSK3_i_inactivation_0=x(192)*reaction_PROTEIN_P_GSK3_i_inactivation_0_P_inactivation_k;

% Reaction: id = PROTEIN_P_GataC_degradation_0, name = PROTEIN_P_GataC_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_P_GataC_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_P_GataC_degradation_0=reaction_PROTEIN_P_GataC_degradation_0_P_protein_deg*x(193);

% Reaction: id = PROTEIN_P_GataE_degradation_0, name = PROTEIN_P_GataE_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_P_GataE_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_P_GataE_degradation_0=reaction_PROTEIN_P_GataE_degradation_0_P_protein_deg*x(194);

% Reaction: id = PROTEIN_P_Gcad_degradation_0, name = PROTEIN_P_Gcad_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_P_Gcad_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_P_Gcad_degradation_0=reaction_PROTEIN_P_Gcad_degradation_0_P_protein_deg*x(195);

% Reaction: id = PROTEIN_P_Gcm_degradation_0, name = PROTEIN_P_Gcm_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_P_Gcm_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_P_Gcm_degradation_0=reaction_PROTEIN_P_Gcm_degradation_0_P_protein_deg*x(196);

% Reaction: id = PROTEIN_P_Gelsolin_degradation_0, name = PROTEIN_P_Gelsolin_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_P_Gelsolin_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_P_Gelsolin_degradation_0=reaction_PROTEIN_P_Gelsolin_degradation_0_P_protein_deg*x(197);

% Reaction: id = PROTEIN_P_GroTCF_accociation_0, name = PROTEIN_P_GroTCF_accociation	% Local Parameter:   id =  P_association_k, name = P_association_k
	reaction_PROTEIN_P_GroTCF_accociation_0_P_association_k=0.711358710507;

	reaction_PROTEIN_P_GroTCF_accociation_0=reaction_PROTEIN_P_GroTCF_accociation_0_P_association_k*x(198)*x(228);

% Reaction: id = PROTEIN_P_GroTCF_dissociation_0, name = PROTEIN_P_GroTCF_dissociation	% Local Parameter:   id =  P_dissociation_k, name = P_dissociation_k
	reaction_PROTEIN_P_GroTCF_dissociation_0_P_dissociation_k=0.945338842765;

	reaction_PROTEIN_P_GroTCF_dissociation_0=reaction_PROTEIN_P_GroTCF_dissociation_0_P_dissociation_k*x(199);

% Reaction: id = PROTEIN_P_HesC_degradation_0, name = PROTEIN_P_HesC_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_P_HesC_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_P_HesC_degradation_0=reaction_PROTEIN_P_HesC_degradation_0_P_protein_deg*x(201);

% Reaction: id = PROTEIN_P_Hex_degradation_0, name = PROTEIN_P_Hex_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_P_Hex_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_P_Hex_degradation_0=reaction_PROTEIN_P_Hex_degradation_0_P_protein_deg*x(202);

% Reaction: id = PROTEIN_P_Hnf6_degradation_0, name = PROTEIN_P_Hnf6_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_P_Hnf6_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_P_Hnf6_degradation_0=reaction_PROTEIN_P_Hnf6_degradation_0_P_protein_deg*x(203);

% Reaction: id = PROTEIN_P_Hox_degradation_0, name = PROTEIN_P_Hox_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_P_Hox_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_P_Hox_degradation_0=reaction_PROTEIN_P_Hox_degradation_0_P_protein_deg*x(204);

% Reaction: id = PROTEIN_P_Kakapo_degradation_0, name = PROTEIN_P_Kakapo_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_P_Kakapo_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_P_Kakapo_degradation_0=reaction_PROTEIN_P_Kakapo_degradation_0_P_protein_deg*x(205);

% Reaction: id = PROTEIN_P_L1_degradation_0, name = PROTEIN_P_L1_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_P_L1_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_P_L1_degradation_0=reaction_PROTEIN_P_L1_degradation_0_P_protein_deg*x(206);

% Reaction: id = PROTEIN_P_Lim_degradation_0, name = PROTEIN_P_Lim_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_P_Lim_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_P_Lim_degradation_0=reaction_PROTEIN_P_Lim_degradation_0_P_protein_deg*x(207);

% Reaction: id = PROTEIN_P_Msp130_degradation_0, name = PROTEIN_P_Msp130_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_P_Msp130_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_P_Msp130_degradation_0=reaction_PROTEIN_P_Msp130_degradation_0_P_protein_deg*x(208);

% Reaction: id = PROTEIN_P_MspL_degradation_0, name = PROTEIN_P_MspL_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_P_MspL_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_P_MspL_degradation_0=reaction_PROTEIN_P_MspL_degradation_0_P_protein_deg*x(209);

% Reaction: id = PROTEIN_P_Not_degradation_0, name = PROTEIN_P_Not_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_P_Not_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_P_Not_degradation_0=reaction_PROTEIN_P_Not_degradation_0_P_protein_deg*x(210);

% Reaction: id = PROTEIN_P_Notch_activation_0, name = PROTEIN_P_Notch_activation	% Local Parameter:   id =  P_activation_k, name = P_activation_k
	reaction_PROTEIN_P_Notch_activation_0_P_activation_k=0.683876854591;

	reaction_PROTEIN_P_Notch_activation_0=x(212)*x(178)*reaction_PROTEIN_P_Notch_activation_0_P_activation_k;

% Reaction: id = PROTEIN_P_Notch_inactivation_0, name = PROTEIN_P_Notch_inactivation	% Local Parameter:   id =  P_inactivation_k, name = P_inactivation_k
	reaction_PROTEIN_P_Notch_inactivation_0_P_inactivation_k=0.567550841749;

	reaction_PROTEIN_P_Notch_inactivation_0=x(211)*reaction_PROTEIN_P_Notch_inactivation_0_P_inactivation_k;

% Reaction: id = PROTEIN_P_Nrl_degradation_0, name = PROTEIN_P_Nrl_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_P_Nrl_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_P_Nrl_degradation_0=reaction_PROTEIN_P_Nrl_degradation_0_P_protein_deg*x(213);

% Reaction: id = PROTEIN_P_OrCt_degradation_0, name = PROTEIN_P_OrCt_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_P_OrCt_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_P_OrCt_degradation_0=reaction_PROTEIN_P_OrCt_degradation_0_P_protein_deg*x(214);

% Reaction: id = PROTEIN_P_Otx_degradation_0, name = PROTEIN_P_Otx_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_P_Otx_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_P_Otx_degradation_0=reaction_PROTEIN_P_Otx_degradation_0_P_protein_deg*x(215);

% Reaction: id = PROTEIN_P_Pks_degradation_0, name = PROTEIN_P_Pks_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_P_Pks_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_P_Pks_degradation_0=reaction_PROTEIN_P_Pks_degradation_0_P_protein_deg*x(216);

% Reaction: id = PROTEIN_P_Pmar1_degradation_0, name = PROTEIN_P_Pmar1_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_P_Pmar1_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_P_Pmar1_degradation_0=reaction_PROTEIN_P_Pmar1_degradation_0_P_protein_deg*x(217);

% Reaction: id = PROTEIN_P_Sm27_degradation_0, name = PROTEIN_P_Sm27_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_P_Sm27_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_P_Sm27_degradation_0=reaction_PROTEIN_P_Sm27_degradation_0_P_protein_deg*x(218);

% Reaction: id = PROTEIN_P_Sm30_degradation_0, name = PROTEIN_P_Sm30_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_P_Sm30_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_P_Sm30_degradation_0=reaction_PROTEIN_P_Sm30_degradation_0_P_protein_deg*x(219);

% Reaction: id = PROTEIN_P_Sm50_degradation_0, name = PROTEIN_P_Sm50_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_P_Sm50_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_P_Sm50_degradation_0=reaction_PROTEIN_P_Sm50_degradation_0_P_protein_deg*x(220);

% Reaction: id = PROTEIN_P_Snail_degradation_0, name = PROTEIN_P_Snail_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_P_Snail_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_P_Snail_degradation_0=reaction_PROTEIN_P_Snail_degradation_0_P_protein_deg*x(221);

% Reaction: id = PROTEIN_P_SoxB1_degradation_0, name = PROTEIN_P_SoxB1_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_P_SoxB1_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_P_SoxB1_degradation_0=reaction_PROTEIN_P_SoxB1_degradation_0_P_protein_deg*x(222);

% Reaction: id = PROTEIN_P_SoxC_degradation_0, name = PROTEIN_P_SoxC_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_P_SoxC_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_P_SoxC_degradation_0=reaction_PROTEIN_P_SoxC_degradation_0_P_protein_deg*x(223);

% Reaction: id = PROTEIN_P_SuHN_accociation_0, name = PROTEIN_P_SuHN_accociation	% Local Parameter:   id =  P_association_k, name = P_association_k
	reaction_PROTEIN_P_SuHN_accociation_0_P_association_k=0.727292522645;

	reaction_PROTEIN_P_SuHN_accociation_0=reaction_PROTEIN_P_SuHN_accociation_0_P_association_k*x(212)*x(224);

% Reaction: id = PROTEIN_P_SuHN_dissociation_0, name = PROTEIN_P_SuHN_dissociation	% Local Parameter:   id =  P_dissociation_k, name = P_dissociation_k
	reaction_PROTEIN_P_SuHN_dissociation_0_P_dissociation_k=0.0514508771131;

	reaction_PROTEIN_P_SuHN_dissociation_0=reaction_PROTEIN_P_SuHN_dissociation_0_P_dissociation_k*x(225);

% Reaction: id = PROTEIN_P_SuTx_degradation_0, name = PROTEIN_P_SuTx_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_P_SuTx_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_P_SuTx_degradation_0=reaction_PROTEIN_P_SuTx_degradation_0_P_protein_deg*x(226);

% Reaction: id = PROTEIN_P_TBr_degradation_0, name = PROTEIN_P_TBr_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_P_TBr_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_P_TBr_degradation_0=reaction_PROTEIN_P_TBr_degradation_0_P_protein_deg*x(227);

% Reaction: id = PROTEIN_P_Tel_degradation_0, name = PROTEIN_P_Tel_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_P_Tel_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_P_Tel_degradation_0=reaction_PROTEIN_P_Tel_degradation_0_P_protein_deg*x(229);

% Reaction: id = PROTEIN_P_Tgif_degradation_0, name = PROTEIN_P_Tgif_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_P_Tgif_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_P_Tgif_degradation_0=reaction_PROTEIN_P_Tgif_degradation_0_P_protein_deg*x(230);

% Reaction: id = PROTEIN_P_UbiqAlx1_degradation_0, name = PROTEIN_P_UbiqAlx1_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_P_UbiqAlx1_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_P_UbiqAlx1_degradation_0=reaction_PROTEIN_P_UbiqAlx1_degradation_0_P_protein_deg*x(234);

% Reaction: id = PROTEIN_P_UbiqES_degradation_0, name = PROTEIN_P_UbiqES_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_P_UbiqES_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_P_UbiqES_degradation_0=reaction_PROTEIN_P_UbiqES_degradation_0_P_protein_deg*x(236);

% Reaction: id = PROTEIN_P_UbiqEts1_degradation_0, name = PROTEIN_P_UbiqEts1_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_P_UbiqEts1_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_P_UbiqEts1_degradation_0=reaction_PROTEIN_P_UbiqEts1_degradation_0_P_protein_deg*x(237);

% Reaction: id = PROTEIN_P_UbiqHesC_degradation_0, name = PROTEIN_P_UbiqHesC_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_P_UbiqHesC_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_P_UbiqHesC_degradation_0=reaction_PROTEIN_P_UbiqHesC_degradation_0_P_protein_deg*x(239);

% Reaction: id = PROTEIN_P_UbiqHnf6_degradation_0, name = PROTEIN_P_UbiqHnf6_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_P_UbiqHnf6_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_P_UbiqHnf6_degradation_0=reaction_PROTEIN_P_UbiqHnf6_degradation_0_P_protein_deg*x(240);

% Reaction: id = PROTEIN_P_UbiqSoxC_degradation_0, name = PROTEIN_P_UbiqSoxC_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_P_UbiqSoxC_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_P_UbiqSoxC_degradation_0=reaction_PROTEIN_P_UbiqSoxC_degradation_0_P_protein_deg*x(242);

% Reaction: id = PROTEIN_P_UbiqTel_degradation_0, name = PROTEIN_P_UbiqTel_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_P_UbiqTel_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_P_UbiqTel_degradation_0=reaction_PROTEIN_P_UbiqTel_degradation_0_P_protein_deg*x(243);

% Reaction: id = PROTEIN_P_VEGFR_degradation_0, name = PROTEIN_P_VEGFR_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_P_VEGFR_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_P_VEGFR_degradation_0=reaction_PROTEIN_P_VEGFR_degradation_0_P_protein_deg*x(244);

% Reaction: id = PROTEIN_P_VEGFSignal_accociation_0, name = PROTEIN_P_VEGFSignal_accociation	% Local Parameter:   id =  P_association_k, name = P_association_k
	reaction_PROTEIN_P_VEGFSignal_accociation_0_P_association_k=0.362233705179;

	reaction_PROTEIN_P_VEGFSignal_accociation_0=reaction_PROTEIN_P_VEGFSignal_accociation_0_P_association_k*x(206)*x(244)*x(77);

% Reaction: id = PROTEIN_P_VEGFSignal_dissociation_0, name = PROTEIN_P_VEGFSignal_dissociation	% Local Parameter:   id =  P_dissociation_k, name = P_dissociation_k
	reaction_PROTEIN_P_VEGFSignal_dissociation_0_P_dissociation_k=0.588675178836;

	reaction_PROTEIN_P_VEGFSignal_dissociation_0=reaction_PROTEIN_P_VEGFSignal_dissociation_0_P_dissociation_k*x(245);

% Reaction: id = PROTEIN_P_Wnt8_degradation_0, name = PROTEIN_P_Wnt8_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_P_Wnt8_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_P_Wnt8_degradation_0=reaction_PROTEIN_P_Wnt8_degradation_0_P_protein_deg*x(246);

% Reaction: id = PROTEIN_P_cB_a_degradation_0, name = PROTEIN_P_cB_a_degradation	% Local Parameter:   id =  P_adeg_k, name = P_adeg_k
	reaction_PROTEIN_P_cB_a_degradation_0_P_adeg_k=0.882551015859;

	reaction_PROTEIN_P_cB_a_degradation_0=x(247)*x(191)*reaction_PROTEIN_P_cB_a_degradation_0_P_adeg_k;

% Reaction: id = PROTEIN_P_cB_degradation_0, name = PROTEIN_P_cB_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_P_cB_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_P_cB_degradation_0=reaction_PROTEIN_P_cB_degradation_0_P_protein_deg*x(247);

% Reaction: id = PROTEIN_P_frizzled_a_activation_0, name = PROTEIN_P_frizzled_a_activation	% Local Parameter:   id =  P_activation_k, name = P_activation_k
	reaction_PROTEIN_P_frizzled_a_activation_0_P_activation_k=0.851147549911;

	reaction_PROTEIN_P_frizzled_a_activation_0=x(249)*x(246)*reaction_PROTEIN_P_frizzled_a_activation_0_P_activation_k;

% Reaction: id = PROTEIN_P_frizzled_a_inactivation_0, name = PROTEIN_P_frizzled_a_inactivation	% Local Parameter:   id =  P_inactivation_k, name = P_inactivation_k
	reaction_PROTEIN_P_frizzled_a_inactivation_0_P_inactivation_k=0.190932144548;

	reaction_PROTEIN_P_frizzled_a_inactivation_0=x(248)*reaction_PROTEIN_P_frizzled_a_inactivation_0_P_inactivation_k;

% Reaction: id = PROTEIN_P_nBTCF_accociation_0, name = PROTEIN_P_nBTCF_accociation	% Local Parameter:   id =  P_association_k, name = P_association_k
	reaction_PROTEIN_P_nBTCF_accociation_0_P_association_k=0.329069784231;

	reaction_PROTEIN_P_nBTCF_accociation_0=reaction_PROTEIN_P_nBTCF_accociation_0_P_association_k*x(247)*x(228);

% Reaction: id = PROTEIN_P_nBTCF_dissociation_0, name = PROTEIN_P_nBTCF_dissociation	% Local Parameter:   id =  P_dissociation_k, name = P_dissociation_k
	reaction_PROTEIN_P_nBTCF_dissociation_0_P_dissociation_k=0.381605778094;

	reaction_PROTEIN_P_nBTCF_dissociation_0=reaction_PROTEIN_P_nBTCF_dissociation_0_P_dissociation_k*x(250);

% Reaction: id = PROTEIN_P_z13_degradation_0, name = PROTEIN_P_z13_degradation	% Local Parameter:   id =  P_protein_deg, name = P_protein_deg
	reaction_PROTEIN_P_z13_degradation_0_P_protein_deg=0.3;

	reaction_PROTEIN_P_z13_degradation_0=reaction_PROTEIN_P_z13_degradation_0_P_protein_deg*x(251);

% Reaction: id = P_Ets1_Hill_Kinetic_0, name = P_Ets1_Hill_Kinetic	% Local Parameter:   id =  P_Ets1_theta2, name = P_Ets1_theta2
	reaction_P_Ets1_Hill_Kinetic_0_P_Ets1_theta2=11.0;
	% Local Parameter:   id =  P_Ets1_theta1, name = P_Ets1_theta1
	reaction_P_Ets1_Hill_Kinetic_0_P_Ets1_theta1=1.0;
	% Local Parameter:   id =  P_Ets1_HillK, name = P_Ets1_HillK
	reaction_P_Ets1_Hill_Kinetic_0_P_Ets1_HillK=10.0;
	% Local Parameter:   id =  P_Ets1_HillH, name = P_Ets1_HillH
	reaction_P_Ets1_Hill_Kinetic_0_P_Ets1_HillH=8.0;

	reaction_P_Ets1_Hill_Kinetic_0=global_par_P_Ets1_S1*reaction_P_Ets1_Hill_Kinetic_0_P_Ets1_HillK*time^reaction_P_Ets1_Hill_Kinetic_0_P_Ets1_HillH/(reaction_P_Ets1_Hill_Kinetic_0_P_Ets1_theta1^reaction_P_Ets1_Hill_Kinetic_0_P_Ets1_HillH+time^reaction_P_Ets1_Hill_Kinetic_0_P_Ets1_HillH)+global_par_P_Ets1_S2*reaction_P_Ets1_Hill_Kinetic_0_P_Ets1_HillK*(1-time^reaction_P_Ets1_Hill_Kinetic_0_P_Ets1_HillH/(reaction_P_Ets1_Hill_Kinetic_0_P_Ets1_theta2^reaction_P_Ets1_Hill_Kinetic_0_P_Ets1_HillH+time^reaction_P_Ets1_Hill_Kinetic_0_P_Ets1_HillH));

% Reaction: id = P_Gcad_Hill_Kinetic_0, name = P_Gcad_Hill_Kinetic	% Local Parameter:   id =  P_Gcad_HillH, name = P_Gcad_HillH
	reaction_P_Gcad_Hill_Kinetic_0_P_Gcad_HillH=8.0;
	% Local Parameter:   id =  P_Gcad_HillK, name = P_Gcad_HillK
	reaction_P_Gcad_Hill_Kinetic_0_P_Gcad_HillK=10.0;
	% Local Parameter:   id =  P_Gcad_theta1, name = P_Gcad_theta1
	reaction_P_Gcad_Hill_Kinetic_0_P_Gcad_theta1=1.0;
	% Local Parameter:   id =  P_Gcad_theta2, name = P_Gcad_theta2
	reaction_P_Gcad_Hill_Kinetic_0_P_Gcad_theta2=20.0;

	reaction_P_Gcad_Hill_Kinetic_0=global_par_P_Gcad_S1*reaction_P_Gcad_Hill_Kinetic_0_P_Gcad_HillK*time^reaction_P_Gcad_Hill_Kinetic_0_P_Gcad_HillH/(reaction_P_Gcad_Hill_Kinetic_0_P_Gcad_theta1^reaction_P_Gcad_Hill_Kinetic_0_P_Gcad_HillH+time^reaction_P_Gcad_Hill_Kinetic_0_P_Gcad_HillH)+global_par_P_Gcad_S2*reaction_P_Gcad_Hill_Kinetic_0_P_Gcad_HillK*(1-time^reaction_P_Gcad_Hill_Kinetic_0_P_Gcad_HillH/(reaction_P_Gcad_Hill_Kinetic_0_P_Gcad_theta2^reaction_P_Gcad_Hill_Kinetic_0_P_Gcad_HillH+time^reaction_P_Gcad_Hill_Kinetic_0_P_Gcad_HillH));

% Reaction: id = P_L1_Hill_Kinetic_0, name = P_L1_Hill_Kinetic	% Local Parameter:   id =  P_L1_theta2, name = P_L1_theta2
	reaction_P_L1_Hill_Kinetic_0_P_L1_theta2=30.0;
	% Local Parameter:   id =  P_L1_theta1, name = P_L1_theta1
	reaction_P_L1_Hill_Kinetic_0_P_L1_theta1=21.0;
	% Local Parameter:   id =  P_L1_HillK, name = P_L1_HillK
	reaction_P_L1_Hill_Kinetic_0_P_L1_HillK=10.0;
	% Local Parameter:   id =  P_L1_HillH, name = P_L1_HillH
	reaction_P_L1_Hill_Kinetic_0_P_L1_HillH=8.0;

	reaction_P_L1_Hill_Kinetic_0=global_par_P_L1_S1*reaction_P_L1_Hill_Kinetic_0_P_L1_HillK*time^reaction_P_L1_Hill_Kinetic_0_P_L1_HillH/(reaction_P_L1_Hill_Kinetic_0_P_L1_theta1^reaction_P_L1_Hill_Kinetic_0_P_L1_HillH+time^reaction_P_L1_Hill_Kinetic_0_P_L1_HillH)+global_par_P_L1_S2*reaction_P_L1_Hill_Kinetic_0_P_L1_HillK*(1-time^reaction_P_L1_Hill_Kinetic_0_P_L1_HillH/(reaction_P_L1_Hill_Kinetic_0_P_L1_theta2^reaction_P_L1_Hill_Kinetic_0_P_L1_HillH+time^reaction_P_L1_Hill_Kinetic_0_P_L1_HillH));

% Reaction: id = P_Otx_Hill_Kinetic_0, name = P_Otx_Hill_Kinetic	% Local Parameter:   id =  P_Otx_HillK, name = P_Otx_HillK
	reaction_P_Otx_Hill_Kinetic_0_P_Otx_HillK=10.0;
	% Local Parameter:   id =  P_Otx_HillH, name = P_Otx_HillH
	reaction_P_Otx_Hill_Kinetic_0_P_Otx_HillH=8.0;
	% Local Parameter:   id =  P_Otx_theta1, name = P_Otx_theta1
	reaction_P_Otx_Hill_Kinetic_0_P_Otx_theta1=1.0;
	% Local Parameter:   id =  P_Otx_theta2, name = P_Otx_theta2
	reaction_P_Otx_Hill_Kinetic_0_P_Otx_theta2=15.0;

	reaction_P_Otx_Hill_Kinetic_0=global_par_P_Otx_S1*reaction_P_Otx_Hill_Kinetic_0_P_Otx_HillK*time^reaction_P_Otx_Hill_Kinetic_0_P_Otx_HillH/(reaction_P_Otx_Hill_Kinetic_0_P_Otx_theta1^reaction_P_Otx_Hill_Kinetic_0_P_Otx_HillH+time^reaction_P_Otx_Hill_Kinetic_0_P_Otx_HillH)+global_par_P_Otx_S2*reaction_P_Otx_Hill_Kinetic_0_P_Otx_HillK*(1-time^reaction_P_Otx_Hill_Kinetic_0_P_Otx_HillH/(reaction_P_Otx_Hill_Kinetic_0_P_Otx_theta2^reaction_P_Otx_Hill_Kinetic_0_P_Otx_HillH+time^reaction_P_Otx_Hill_Kinetic_0_P_Otx_HillH));

% Reaction: id = P_UbiqAlx1_Hill_Kinetic_0, name = P_UbiqAlx1_Hill_Kinetic	% Local Parameter:   id =  P_UbiqAlx1_theta1, name = P_UbiqAlx1_theta1
	reaction_P_UbiqAlx1_Hill_Kinetic_0_P_UbiqAlx1_theta1=1.0;
	% Local Parameter:   id =  P_UbiqAlx1_theta2, name = P_UbiqAlx1_theta2
	reaction_P_UbiqAlx1_Hill_Kinetic_0_P_UbiqAlx1_theta2=30.0;
	% Local Parameter:   id =  P_UbiqAlx1_HillH, name = P_UbiqAlx1_HillH
	reaction_P_UbiqAlx1_Hill_Kinetic_0_P_UbiqAlx1_HillH=8.0;
	% Local Parameter:   id =  P_UbiqAlx1_HillK, name = P_UbiqAlx1_HillK
	reaction_P_UbiqAlx1_Hill_Kinetic_0_P_UbiqAlx1_HillK=10.0;

	reaction_P_UbiqAlx1_Hill_Kinetic_0=global_par_P_UbiqAlx1_S1*reaction_P_UbiqAlx1_Hill_Kinetic_0_P_UbiqAlx1_HillK*time^reaction_P_UbiqAlx1_Hill_Kinetic_0_P_UbiqAlx1_HillH/(reaction_P_UbiqAlx1_Hill_Kinetic_0_P_UbiqAlx1_theta1^reaction_P_UbiqAlx1_Hill_Kinetic_0_P_UbiqAlx1_HillH+time^reaction_P_UbiqAlx1_Hill_Kinetic_0_P_UbiqAlx1_HillH)+global_par_P_UbiqAlx1_S2*reaction_P_UbiqAlx1_Hill_Kinetic_0_P_UbiqAlx1_HillK*(1-time^reaction_P_UbiqAlx1_Hill_Kinetic_0_P_UbiqAlx1_HillH/(reaction_P_UbiqAlx1_Hill_Kinetic_0_P_UbiqAlx1_theta2^reaction_P_UbiqAlx1_Hill_Kinetic_0_P_UbiqAlx1_HillH+time^reaction_P_UbiqAlx1_Hill_Kinetic_0_P_UbiqAlx1_HillH));

% Reaction: id = P_UbiqES_Hill_Kinetic_0, name = P_UbiqES_Hill_Kinetic	% Local Parameter:   id =  P_UbiqES_theta1, name = P_UbiqES_theta1
	reaction_P_UbiqES_Hill_Kinetic_0_P_UbiqES_theta1=1.0;
	% Local Parameter:   id =  P_UbiqES_theta2, name = P_UbiqES_theta2
	reaction_P_UbiqES_Hill_Kinetic_0_P_UbiqES_theta2=20.0;
	% Local Parameter:   id =  P_UbiqES_HillH, name = P_UbiqES_HillH
	reaction_P_UbiqES_Hill_Kinetic_0_P_UbiqES_HillH=8.0;
	% Local Parameter:   id =  P_UbiqES_HillK, name = P_UbiqES_HillK
	reaction_P_UbiqES_Hill_Kinetic_0_P_UbiqES_HillK=10.0;

	reaction_P_UbiqES_Hill_Kinetic_0=global_par_P_UbiqES_S1*reaction_P_UbiqES_Hill_Kinetic_0_P_UbiqES_HillK*time^reaction_P_UbiqES_Hill_Kinetic_0_P_UbiqES_HillH/(reaction_P_UbiqES_Hill_Kinetic_0_P_UbiqES_theta1^reaction_P_UbiqES_Hill_Kinetic_0_P_UbiqES_HillH+time^reaction_P_UbiqES_Hill_Kinetic_0_P_UbiqES_HillH)+global_par_P_UbiqES_S2*reaction_P_UbiqES_Hill_Kinetic_0_P_UbiqES_HillK*(1-time^reaction_P_UbiqES_Hill_Kinetic_0_P_UbiqES_HillH/(reaction_P_UbiqES_Hill_Kinetic_0_P_UbiqES_theta2^reaction_P_UbiqES_Hill_Kinetic_0_P_UbiqES_HillH+time^reaction_P_UbiqES_Hill_Kinetic_0_P_UbiqES_HillH));

% Reaction: id = P_UbiqEts1_Hill_Kinetic_0, name = P_UbiqEts1_Hill_Kinetic	% Local Parameter:   id =  P_UbiqEts1_theta2, name = P_UbiqEts1_theta2
	reaction_P_UbiqEts1_Hill_Kinetic_0_P_UbiqEts1_theta2=30.0;
	% Local Parameter:   id =  P_UbiqEts1_theta1, name = P_UbiqEts1_theta1
	reaction_P_UbiqEts1_Hill_Kinetic_0_P_UbiqEts1_theta1=1.0;
	% Local Parameter:   id =  P_UbiqEts1_HillH, name = P_UbiqEts1_HillH
	reaction_P_UbiqEts1_Hill_Kinetic_0_P_UbiqEts1_HillH=8.0;
	% Local Parameter:   id =  P_UbiqEts1_HillK, name = P_UbiqEts1_HillK
	reaction_P_UbiqEts1_Hill_Kinetic_0_P_UbiqEts1_HillK=10.0;

	reaction_P_UbiqEts1_Hill_Kinetic_0=global_par_P_UbiqEts1_S1*reaction_P_UbiqEts1_Hill_Kinetic_0_P_UbiqEts1_HillK*time^reaction_P_UbiqEts1_Hill_Kinetic_0_P_UbiqEts1_HillH/(reaction_P_UbiqEts1_Hill_Kinetic_0_P_UbiqEts1_theta1^reaction_P_UbiqEts1_Hill_Kinetic_0_P_UbiqEts1_HillH+time^reaction_P_UbiqEts1_Hill_Kinetic_0_P_UbiqEts1_HillH)+global_par_P_UbiqEts1_S2*reaction_P_UbiqEts1_Hill_Kinetic_0_P_UbiqEts1_HillK*(1-time^reaction_P_UbiqEts1_Hill_Kinetic_0_P_UbiqEts1_HillH/(reaction_P_UbiqEts1_Hill_Kinetic_0_P_UbiqEts1_theta2^reaction_P_UbiqEts1_Hill_Kinetic_0_P_UbiqEts1_HillH+time^reaction_P_UbiqEts1_Hill_Kinetic_0_P_UbiqEts1_HillH));

% Reaction: id = P_UbiqHesC_Hill_Kinetic_0, name = P_UbiqHesC_Hill_Kinetic	% Local Parameter:   id =  P_UbiqHesC_theta2, name = P_UbiqHesC_theta2
	reaction_P_UbiqHesC_Hill_Kinetic_0_P_UbiqHesC_theta2=8.0;
	% Local Parameter:   id =  P_UbiqHesC_theta1, name = P_UbiqHesC_theta1
	reaction_P_UbiqHesC_Hill_Kinetic_0_P_UbiqHesC_theta1=1.0;
	% Local Parameter:   id =  P_UbiqHesC_HillH, name = P_UbiqHesC_HillH
	reaction_P_UbiqHesC_Hill_Kinetic_0_P_UbiqHesC_HillH=8.0;
	% Local Parameter:   id =  P_UbiqHesC_HillK, name = P_UbiqHesC_HillK
	reaction_P_UbiqHesC_Hill_Kinetic_0_P_UbiqHesC_HillK=10.0;

	reaction_P_UbiqHesC_Hill_Kinetic_0=global_par_P_UbiqHesC_S1*reaction_P_UbiqHesC_Hill_Kinetic_0_P_UbiqHesC_HillK*time^reaction_P_UbiqHesC_Hill_Kinetic_0_P_UbiqHesC_HillH/(reaction_P_UbiqHesC_Hill_Kinetic_0_P_UbiqHesC_theta1^reaction_P_UbiqHesC_Hill_Kinetic_0_P_UbiqHesC_HillH+time^reaction_P_UbiqHesC_Hill_Kinetic_0_P_UbiqHesC_HillH)+global_par_P_UbiqHesC_S2*reaction_P_UbiqHesC_Hill_Kinetic_0_P_UbiqHesC_HillK*(1-time^reaction_P_UbiqHesC_Hill_Kinetic_0_P_UbiqHesC_HillH/(reaction_P_UbiqHesC_Hill_Kinetic_0_P_UbiqHesC_theta2^reaction_P_UbiqHesC_Hill_Kinetic_0_P_UbiqHesC_HillH+time^reaction_P_UbiqHesC_Hill_Kinetic_0_P_UbiqHesC_HillH));

% Reaction: id = P_UbiqHnf6_Hill_Kinetic_0, name = P_UbiqHnf6_Hill_Kinetic	% Local Parameter:   id =  P_UbiqHnf6_theta1, name = P_UbiqHnf6_theta1
	reaction_P_UbiqHnf6_Hill_Kinetic_0_P_UbiqHnf6_theta1=1.0;
	% Local Parameter:   id =  P_UbiqHnf6_theta2, name = P_UbiqHnf6_theta2
	reaction_P_UbiqHnf6_Hill_Kinetic_0_P_UbiqHnf6_theta2=23.0;
	% Local Parameter:   id =  P_UbiqHnf6_HillH, name = P_UbiqHnf6_HillH
	reaction_P_UbiqHnf6_Hill_Kinetic_0_P_UbiqHnf6_HillH=8.0;
	% Local Parameter:   id =  P_UbiqHnf6_HillK, name = P_UbiqHnf6_HillK
	reaction_P_UbiqHnf6_Hill_Kinetic_0_P_UbiqHnf6_HillK=10.0;

	reaction_P_UbiqHnf6_Hill_Kinetic_0=global_par_P_UbiqHnf6_S1*reaction_P_UbiqHnf6_Hill_Kinetic_0_P_UbiqHnf6_HillK*time^reaction_P_UbiqHnf6_Hill_Kinetic_0_P_UbiqHnf6_HillH/(reaction_P_UbiqHnf6_Hill_Kinetic_0_P_UbiqHnf6_theta1^reaction_P_UbiqHnf6_Hill_Kinetic_0_P_UbiqHnf6_HillH+time^reaction_P_UbiqHnf6_Hill_Kinetic_0_P_UbiqHnf6_HillH)+global_par_P_UbiqHnf6_S2*reaction_P_UbiqHnf6_Hill_Kinetic_0_P_UbiqHnf6_HillK*(1-time^reaction_P_UbiqHnf6_Hill_Kinetic_0_P_UbiqHnf6_HillH/(reaction_P_UbiqHnf6_Hill_Kinetic_0_P_UbiqHnf6_theta2^reaction_P_UbiqHnf6_Hill_Kinetic_0_P_UbiqHnf6_HillH+time^reaction_P_UbiqHnf6_Hill_Kinetic_0_P_UbiqHnf6_HillH));

% Reaction: id = P_UbiqSoxC_Hill_Kinetic_0, name = P_UbiqSoxC_Hill_Kinetic	% Local Parameter:   id =  P_UbiqSoxC_theta1, name = P_UbiqSoxC_theta1
	reaction_P_UbiqSoxC_Hill_Kinetic_0_P_UbiqSoxC_theta1=1.0;
	% Local Parameter:   id =  P_UbiqSoxC_theta2, name = P_UbiqSoxC_theta2
	reaction_P_UbiqSoxC_Hill_Kinetic_0_P_UbiqSoxC_theta2=17.0;
	% Local Parameter:   id =  P_UbiqSoxC_HillK, name = P_UbiqSoxC_HillK
	reaction_P_UbiqSoxC_Hill_Kinetic_0_P_UbiqSoxC_HillK=10.0;
	% Local Parameter:   id =  P_UbiqSoxC_HillH, name = P_UbiqSoxC_HillH
	reaction_P_UbiqSoxC_Hill_Kinetic_0_P_UbiqSoxC_HillH=8.0;

	reaction_P_UbiqSoxC_Hill_Kinetic_0=global_par_P_UbiqSoxC_S1*reaction_P_UbiqSoxC_Hill_Kinetic_0_P_UbiqSoxC_HillK*time^reaction_P_UbiqSoxC_Hill_Kinetic_0_P_UbiqSoxC_HillH/(reaction_P_UbiqSoxC_Hill_Kinetic_0_P_UbiqSoxC_theta1^reaction_P_UbiqSoxC_Hill_Kinetic_0_P_UbiqSoxC_HillH+time^reaction_P_UbiqSoxC_Hill_Kinetic_0_P_UbiqSoxC_HillH)+global_par_P_UbiqSoxC_S2*reaction_P_UbiqSoxC_Hill_Kinetic_0_P_UbiqSoxC_HillK*(1-time^reaction_P_UbiqSoxC_Hill_Kinetic_0_P_UbiqSoxC_HillH/(reaction_P_UbiqSoxC_Hill_Kinetic_0_P_UbiqSoxC_theta2^reaction_P_UbiqSoxC_Hill_Kinetic_0_P_UbiqSoxC_HillH+time^reaction_P_UbiqSoxC_Hill_Kinetic_0_P_UbiqSoxC_HillH));

% Reaction: id = P_UbiqTel_Hill_Kinetic_0, name = P_UbiqTel_Hill_Kinetic	% Local Parameter:   id =  P_UbiqTel_HillK, name = P_UbiqTel_HillK
	reaction_P_UbiqTel_Hill_Kinetic_0_P_UbiqTel_HillK=10.0;
	% Local Parameter:   id =  P_UbiqTel_HillH, name = P_UbiqTel_HillH
	reaction_P_UbiqTel_Hill_Kinetic_0_P_UbiqTel_HillH=8.0;
	% Local Parameter:   id =  P_UbiqTel_theta2, name = P_UbiqTel_theta2
	reaction_P_UbiqTel_Hill_Kinetic_0_P_UbiqTel_theta2=29.0;
	% Local Parameter:   id =  P_UbiqTel_theta1, name = P_UbiqTel_theta1
	reaction_P_UbiqTel_Hill_Kinetic_0_P_UbiqTel_theta1=1.0;

	reaction_P_UbiqTel_Hill_Kinetic_0=global_par_P_UbiqTel_S1*reaction_P_UbiqTel_Hill_Kinetic_0_P_UbiqTel_HillK*time^reaction_P_UbiqTel_Hill_Kinetic_0_P_UbiqTel_HillH/(reaction_P_UbiqTel_Hill_Kinetic_0_P_UbiqTel_theta1^reaction_P_UbiqTel_Hill_Kinetic_0_P_UbiqTel_HillH+time^reaction_P_UbiqTel_Hill_Kinetic_0_P_UbiqTel_HillH)+global_par_P_UbiqTel_S2*reaction_P_UbiqTel_Hill_Kinetic_0_P_UbiqTel_HillK*(1-time^reaction_P_UbiqTel_Hill_Kinetic_0_P_UbiqTel_HillH/(reaction_P_UbiqTel_Hill_Kinetic_0_P_UbiqTel_theta2^reaction_P_UbiqTel_Hill_Kinetic_0_P_UbiqTel_HillH+time^reaction_P_UbiqTel_Hill_Kinetic_0_P_UbiqTel_HillH));

% Reaction: id = P_cB_Hill_Kinetic_0, name = P_cB_Hill_Kinetic	% Local Parameter:   id =  P_cB_theta1, name = P_cB_theta1
	reaction_P_cB_Hill_Kinetic_0_P_cB_theta1=1.0;
	% Local Parameter:   id =  P_cB_theta2, name = P_cB_theta2
	reaction_P_cB_Hill_Kinetic_0_P_cB_theta2=14.0;
	% Local Parameter:   id =  P_cB_HillH, name = P_cB_HillH
	reaction_P_cB_Hill_Kinetic_0_P_cB_HillH=8.0;
	% Local Parameter:   id =  P_cB_HillK, name = P_cB_HillK
	reaction_P_cB_Hill_Kinetic_0_P_cB_HillK=10.0;

	reaction_P_cB_Hill_Kinetic_0=global_par_P_cB_S1*reaction_P_cB_Hill_Kinetic_0_P_cB_HillK*time^reaction_P_cB_Hill_Kinetic_0_P_cB_HillH/(reaction_P_cB_Hill_Kinetic_0_P_cB_theta1^reaction_P_cB_Hill_Kinetic_0_P_cB_HillH+time^reaction_P_cB_Hill_Kinetic_0_P_cB_HillH)+global_par_P_cB_S2*reaction_P_cB_Hill_Kinetic_0_P_cB_HillK*(1-time^reaction_P_cB_Hill_Kinetic_0_P_cB_HillH/(reaction_P_cB_Hill_Kinetic_0_P_cB_theta2^reaction_P_cB_Hill_Kinetic_0_P_cB_HillH+time^reaction_P_cB_Hill_Kinetic_0_P_cB_HillH));

% Reaction: id = mRNA_E_Alx1_degradation_0, name = mRNA_E_Alx1_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_E_Alx1_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_E_Alx1_degradation_0=reaction_mRNA_E_Alx1_degradation_0_P_mRNA_deg*x(252);

% Reaction: id = mRNA_E_Alx1_translation_0, name = mRNA_E_Alx1_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_E_Alx1_translation_0_P_k_translation=2.0;

	reaction_mRNA_E_Alx1_translation_0=reaction_mRNA_E_Alx1_translation_0_P_k_translation*x(252);

% Reaction: id = mRNA_E_Apobec_degradation_0, name = mRNA_E_Apobec_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_E_Apobec_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_E_Apobec_degradation_0=reaction_mRNA_E_Apobec_degradation_0_P_mRNA_deg*x(253);

% Reaction: id = mRNA_E_Apobec_translation_0, name = mRNA_E_Apobec_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_E_Apobec_translation_0_P_k_translation=2.0;

	reaction_mRNA_E_Apobec_translation_0=reaction_mRNA_E_Apobec_translation_0_P_k_translation*x(253);

% Reaction: id = mRNA_E_Blimp1_degradation_0, name = mRNA_E_Blimp1_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_E_Blimp1_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_E_Blimp1_degradation_0=reaction_mRNA_E_Blimp1_degradation_0_P_mRNA_deg*x(254);

% Reaction: id = mRNA_E_Blimp1_translation_0, name = mRNA_E_Blimp1_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_E_Blimp1_translation_0_P_k_translation=2.0;

	reaction_mRNA_E_Blimp1_translation_0=reaction_mRNA_E_Blimp1_translation_0_P_k_translation*x(254);

% Reaction: id = mRNA_E_Bra_degradation_0, name = mRNA_E_Bra_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_E_Bra_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_E_Bra_degradation_0=reaction_mRNA_E_Bra_degradation_0_P_mRNA_deg*x(255);

% Reaction: id = mRNA_E_Bra_translation_0, name = mRNA_E_Bra_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_E_Bra_translation_0_P_k_translation=2.0;

	reaction_mRNA_E_Bra_translation_0=reaction_mRNA_E_Bra_translation_0_P_k_translation*x(255);

% Reaction: id = mRNA_E_Brn_degradation_0, name = mRNA_E_Brn_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_E_Brn_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_E_Brn_degradation_0=reaction_mRNA_E_Brn_degradation_0_P_mRNA_deg*x(256);

% Reaction: id = mRNA_E_Brn_translation_0, name = mRNA_E_Brn_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_E_Brn_translation_0_P_k_translation=2.0;

	reaction_mRNA_E_Brn_translation_0=reaction_mRNA_E_Brn_translation_0_P_k_translation*x(256);

% Reaction: id = mRNA_E_CAPK_degradation_0, name = mRNA_E_CAPK_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_E_CAPK_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_E_CAPK_degradation_0=reaction_mRNA_E_CAPK_degradation_0_P_mRNA_deg*x(257);

% Reaction: id = mRNA_E_CAPK_translation_0, name = mRNA_E_CAPK_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_E_CAPK_translation_0_P_k_translation=2.0;

	reaction_mRNA_E_CAPK_translation_0=reaction_mRNA_E_CAPK_translation_0_P_k_translation*x(257);

% Reaction: id = mRNA_E_CyP_degradation_0, name = mRNA_E_CyP_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_E_CyP_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_E_CyP_degradation_0=reaction_mRNA_E_CyP_degradation_0_P_mRNA_deg*x(258);

% Reaction: id = mRNA_E_CyP_translation_0, name = mRNA_E_CyP_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_E_CyP_translation_0_P_k_translation=2.0;

	reaction_mRNA_E_CyP_translation_0=reaction_mRNA_E_CyP_translation_0_P_k_translation*x(258);

% Reaction: id = mRNA_E_Delta_degradation_0, name = mRNA_E_Delta_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_E_Delta_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_E_Delta_degradation_0=reaction_mRNA_E_Delta_degradation_0_P_mRNA_deg*x(259);

% Reaction: id = mRNA_E_Delta_translation_0, name = mRNA_E_Delta_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_E_Delta_translation_0_P_k_translation=2.0;

	reaction_mRNA_E_Delta_translation_0=reaction_mRNA_E_Delta_translation_0_P_k_translation*x(259);

% Reaction: id = mRNA_E_Dpt_degradation_0, name = mRNA_E_Dpt_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_E_Dpt_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_E_Dpt_degradation_0=reaction_mRNA_E_Dpt_degradation_0_P_mRNA_deg*x(260);

% Reaction: id = mRNA_E_Dpt_translation_0, name = mRNA_E_Dpt_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_E_Dpt_translation_0_P_k_translation=2.0;

	reaction_mRNA_E_Dpt_translation_0=reaction_mRNA_E_Dpt_translation_0_P_k_translation*x(260);

% Reaction: id = mRNA_E_Dri_degradation_0, name = mRNA_E_Dri_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_E_Dri_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_E_Dri_degradation_0=reaction_mRNA_E_Dri_degradation_0_P_mRNA_deg*x(261);

% Reaction: id = mRNA_E_Dri_translation_0, name = mRNA_E_Dri_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_E_Dri_translation_0_P_k_translation=2.0;

	reaction_mRNA_E_Dri_translation_0=reaction_mRNA_E_Dri_translation_0_P_k_translation*x(261);

% Reaction: id = mRNA_E_ES_degradation_0, name = mRNA_E_ES_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_E_ES_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_E_ES_degradation_0=reaction_mRNA_E_ES_degradation_0_P_mRNA_deg*x(262);

% Reaction: id = mRNA_E_ES_translation_0, name = mRNA_E_ES_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_E_ES_translation_0_P_k_translation=2.0;

	reaction_mRNA_E_ES_translation_0=reaction_mRNA_E_ES_translation_0_P_k_translation*x(262);

% Reaction: id = mRNA_E_Endo16_degradation_0, name = mRNA_E_Endo16_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_E_Endo16_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_E_Endo16_degradation_0=reaction_mRNA_E_Endo16_degradation_0_P_mRNA_deg*x(263);

% Reaction: id = mRNA_E_Endo16_translation_0, name = mRNA_E_Endo16_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_E_Endo16_translation_0_P_k_translation=2.0;

	reaction_mRNA_E_Endo16_translation_0=reaction_mRNA_E_Endo16_translation_0_P_k_translation*x(263);

% Reaction: id = mRNA_E_Erg_degradation_0, name = mRNA_E_Erg_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_E_Erg_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_E_Erg_degradation_0=reaction_mRNA_E_Erg_degradation_0_P_mRNA_deg*x(264);

% Reaction: id = mRNA_E_Erg_translation_0, name = mRNA_E_Erg_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_E_Erg_translation_0_P_k_translation=2.0;

	reaction_mRNA_E_Erg_translation_0=reaction_mRNA_E_Erg_translation_0_P_k_translation*x(264);

% Reaction: id = mRNA_E_Ets1_degradation_0, name = mRNA_E_Ets1_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_E_Ets1_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_E_Ets1_degradation_0=reaction_mRNA_E_Ets1_degradation_0_P_mRNA_deg*x(265);

% Reaction: id = mRNA_E_Ets1_translation_0, name = mRNA_E_Ets1_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_E_Ets1_translation_0_P_k_translation=2.0;

	reaction_mRNA_E_Ets1_translation_0=reaction_mRNA_E_Ets1_translation_0_P_k_translation*x(265);

% Reaction: id = mRNA_E_Eve_degradation_0, name = mRNA_E_Eve_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_E_Eve_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_E_Eve_degradation_0=reaction_mRNA_E_Eve_degradation_0_P_mRNA_deg*x(266);

% Reaction: id = mRNA_E_Eve_translation_0, name = mRNA_E_Eve_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_E_Eve_translation_0_P_k_translation=2.0;

	reaction_mRNA_E_Eve_translation_0=reaction_mRNA_E_Eve_translation_0_P_k_translation*x(266);

% Reaction: id = mRNA_E_Ficolin_degradation_0, name = mRNA_E_Ficolin_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_E_Ficolin_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_E_Ficolin_degradation_0=reaction_mRNA_E_Ficolin_degradation_0_P_mRNA_deg*x(267);

% Reaction: id = mRNA_E_Ficolin_translation_0, name = mRNA_E_Ficolin_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_E_Ficolin_translation_0_P_k_translation=2.0;

	reaction_mRNA_E_Ficolin_translation_0=reaction_mRNA_E_Ficolin_translation_0_P_k_translation*x(267);

% Reaction: id = mRNA_E_FoxA_degradation_0, name = mRNA_E_FoxA_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_E_FoxA_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_E_FoxA_degradation_0=reaction_mRNA_E_FoxA_degradation_0_P_mRNA_deg*x(268);

% Reaction: id = mRNA_E_FoxA_translation_0, name = mRNA_E_FoxA_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_E_FoxA_translation_0_P_k_translation=2.0;

	reaction_mRNA_E_FoxA_translation_0=reaction_mRNA_E_FoxA_translation_0_P_k_translation*x(268);

% Reaction: id = mRNA_E_FoxB_degradation_0, name = mRNA_E_FoxB_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_E_FoxB_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_E_FoxB_degradation_0=reaction_mRNA_E_FoxB_degradation_0_P_mRNA_deg*x(269);

% Reaction: id = mRNA_E_FoxB_translation_0, name = mRNA_E_FoxB_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_E_FoxB_translation_0_P_k_translation=2.0;

	reaction_mRNA_E_FoxB_translation_0=reaction_mRNA_E_FoxB_translation_0_P_k_translation*x(269);

% Reaction: id = mRNA_E_FoxN23_degradation_0, name = mRNA_E_FoxN23_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_E_FoxN23_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_E_FoxN23_degradation_0=reaction_mRNA_E_FoxN23_degradation_0_P_mRNA_deg*x(270);

% Reaction: id = mRNA_E_FoxN23_translation_0, name = mRNA_E_FoxN23_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_E_FoxN23_translation_0_P_k_translation=2.0;

	reaction_mRNA_E_FoxN23_translation_0=reaction_mRNA_E_FoxN23_translation_0_P_k_translation*x(270);

% Reaction: id = mRNA_E_FoxO_degradation_0, name = mRNA_E_FoxO_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_E_FoxO_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_E_FoxO_degradation_0=reaction_mRNA_E_FoxO_degradation_0_P_mRNA_deg*x(271);

% Reaction: id = mRNA_E_FoxO_translation_0, name = mRNA_E_FoxO_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_E_FoxO_translation_0_P_k_translation=2.0;

	reaction_mRNA_E_FoxO_translation_0=reaction_mRNA_E_FoxO_translation_0_P_k_translation*x(271);

% Reaction: id = mRNA_E_FvMo_degradation_0, name = mRNA_E_FvMo_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_E_FvMo_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_E_FvMo_degradation_0=reaction_mRNA_E_FvMo_degradation_0_P_mRNA_deg*x(272);

% Reaction: id = mRNA_E_FvMo_translation_0, name = mRNA_E_FvMo_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_E_FvMo_translation_0_P_k_translation=2.0;

	reaction_mRNA_E_FvMo_translation_0=reaction_mRNA_E_FvMo_translation_0_P_k_translation*x(272);

% Reaction: id = mRNA_E_GataC_degradation_0, name = mRNA_E_GataC_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_E_GataC_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_E_GataC_degradation_0=reaction_mRNA_E_GataC_degradation_0_P_mRNA_deg*x(273);

% Reaction: id = mRNA_E_GataC_translation_0, name = mRNA_E_GataC_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_E_GataC_translation_0_P_k_translation=2.0;

	reaction_mRNA_E_GataC_translation_0=reaction_mRNA_E_GataC_translation_0_P_k_translation*x(273);

% Reaction: id = mRNA_E_GataE_degradation_0, name = mRNA_E_GataE_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_E_GataE_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_E_GataE_degradation_0=reaction_mRNA_E_GataE_degradation_0_P_mRNA_deg*x(274);

% Reaction: id = mRNA_E_GataE_translation_0, name = mRNA_E_GataE_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_E_GataE_translation_0_P_k_translation=2.0;

	reaction_mRNA_E_GataE_translation_0=reaction_mRNA_E_GataE_translation_0_P_k_translation*x(274);

% Reaction: id = mRNA_E_Gcad_degradation_0, name = mRNA_E_Gcad_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_E_Gcad_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_E_Gcad_degradation_0=reaction_mRNA_E_Gcad_degradation_0_P_mRNA_deg*x(275);

% Reaction: id = mRNA_E_Gcad_translation_0, name = mRNA_E_Gcad_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_E_Gcad_translation_0_P_k_translation=2.0;

	reaction_mRNA_E_Gcad_translation_0=reaction_mRNA_E_Gcad_translation_0_P_k_translation*x(275);

% Reaction: id = mRNA_E_Gcm_degradation_0, name = mRNA_E_Gcm_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_E_Gcm_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_E_Gcm_degradation_0=reaction_mRNA_E_Gcm_degradation_0_P_mRNA_deg*x(276);

% Reaction: id = mRNA_E_Gcm_translation_0, name = mRNA_E_Gcm_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_E_Gcm_translation_0_P_k_translation=2.0;

	reaction_mRNA_E_Gcm_translation_0=reaction_mRNA_E_Gcm_translation_0_P_k_translation*x(276);

% Reaction: id = mRNA_E_Gelsolin_degradation_0, name = mRNA_E_Gelsolin_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_E_Gelsolin_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_E_Gelsolin_degradation_0=reaction_mRNA_E_Gelsolin_degradation_0_P_mRNA_deg*x(277);

% Reaction: id = mRNA_E_Gelsolin_translation_0, name = mRNA_E_Gelsolin_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_E_Gelsolin_translation_0_P_k_translation=2.0;

	reaction_mRNA_E_Gelsolin_translation_0=reaction_mRNA_E_Gelsolin_translation_0_P_k_translation*x(277);

% Reaction: id = mRNA_E_HesC_degradation_0, name = mRNA_E_HesC_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_E_HesC_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_E_HesC_degradation_0=reaction_mRNA_E_HesC_degradation_0_P_mRNA_deg*x(278);

% Reaction: id = mRNA_E_HesC_translation_0, name = mRNA_E_HesC_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_E_HesC_translation_0_P_k_translation=2.0;

	reaction_mRNA_E_HesC_translation_0=reaction_mRNA_E_HesC_translation_0_P_k_translation*x(278);

% Reaction: id = mRNA_E_Hex_degradation_0, name = mRNA_E_Hex_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_E_Hex_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_E_Hex_degradation_0=reaction_mRNA_E_Hex_degradation_0_P_mRNA_deg*x(279);

% Reaction: id = mRNA_E_Hex_translation_0, name = mRNA_E_Hex_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_E_Hex_translation_0_P_k_translation=2.0;

	reaction_mRNA_E_Hex_translation_0=reaction_mRNA_E_Hex_translation_0_P_k_translation*x(279);

% Reaction: id = mRNA_E_Hnf6_degradation_0, name = mRNA_E_Hnf6_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_E_Hnf6_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_E_Hnf6_degradation_0=reaction_mRNA_E_Hnf6_degradation_0_P_mRNA_deg*x(280);

% Reaction: id = mRNA_E_Hnf6_translation_0, name = mRNA_E_Hnf6_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_E_Hnf6_translation_0_P_k_translation=2.0;

	reaction_mRNA_E_Hnf6_translation_0=reaction_mRNA_E_Hnf6_translation_0_P_k_translation*x(280);

% Reaction: id = mRNA_E_Hox_degradation_0, name = mRNA_E_Hox_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_E_Hox_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_E_Hox_degradation_0=reaction_mRNA_E_Hox_degradation_0_P_mRNA_deg*x(281);

% Reaction: id = mRNA_E_Hox_translation_0, name = mRNA_E_Hox_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_E_Hox_translation_0_P_k_translation=2.0;

	reaction_mRNA_E_Hox_translation_0=reaction_mRNA_E_Hox_translation_0_P_k_translation*x(281);

% Reaction: id = mRNA_E_Kakapo_degradation_0, name = mRNA_E_Kakapo_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_E_Kakapo_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_E_Kakapo_degradation_0=reaction_mRNA_E_Kakapo_degradation_0_P_mRNA_deg*x(282);

% Reaction: id = mRNA_E_Kakapo_translation_0, name = mRNA_E_Kakapo_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_E_Kakapo_translation_0_P_k_translation=2.0;

	reaction_mRNA_E_Kakapo_translation_0=reaction_mRNA_E_Kakapo_translation_0_P_k_translation*x(282);

% Reaction: id = mRNA_E_Lim_degradation_0, name = mRNA_E_Lim_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_E_Lim_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_E_Lim_degradation_0=reaction_mRNA_E_Lim_degradation_0_P_mRNA_deg*x(283);

% Reaction: id = mRNA_E_Lim_translation_0, name = mRNA_E_Lim_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_E_Lim_translation_0_P_k_translation=2.0;

	reaction_mRNA_E_Lim_translation_0=reaction_mRNA_E_Lim_translation_0_P_k_translation*x(283);

% Reaction: id = mRNA_E_Msp130_degradation_0, name = mRNA_E_Msp130_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_E_Msp130_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_E_Msp130_degradation_0=reaction_mRNA_E_Msp130_degradation_0_P_mRNA_deg*x(284);

% Reaction: id = mRNA_E_Msp130_translation_0, name = mRNA_E_Msp130_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_E_Msp130_translation_0_P_k_translation=2.0;

	reaction_mRNA_E_Msp130_translation_0=reaction_mRNA_E_Msp130_translation_0_P_k_translation*x(284);

% Reaction: id = mRNA_E_MspL_degradation_0, name = mRNA_E_MspL_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_E_MspL_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_E_MspL_degradation_0=reaction_mRNA_E_MspL_degradation_0_P_mRNA_deg*x(285);

% Reaction: id = mRNA_E_MspL_translation_0, name = mRNA_E_MspL_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_E_MspL_translation_0_P_k_translation=2.0;

	reaction_mRNA_E_MspL_translation_0=reaction_mRNA_E_MspL_translation_0_P_k_translation*x(285);

% Reaction: id = mRNA_E_Not_degradation_0, name = mRNA_E_Not_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_E_Not_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_E_Not_degradation_0=reaction_mRNA_E_Not_degradation_0_P_mRNA_deg*x(286);

% Reaction: id = mRNA_E_Not_translation_0, name = mRNA_E_Not_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_E_Not_translation_0_P_k_translation=2.0;

	reaction_mRNA_E_Not_translation_0=reaction_mRNA_E_Not_translation_0_P_k_translation*x(286);

% Reaction: id = mRNA_E_Notch_degradation_0, name = mRNA_E_Notch_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_E_Notch_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_E_Notch_degradation_0=reaction_mRNA_E_Notch_degradation_0_P_mRNA_deg*x(287);

% Reaction: id = mRNA_E_Notch_translation_0, name = mRNA_E_Notch_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_E_Notch_translation_0_P_k_translation=2.0;

	reaction_mRNA_E_Notch_translation_0=reaction_mRNA_E_Notch_translation_0_P_k_translation*x(287);

% Reaction: id = mRNA_E_Nrl_degradation_0, name = mRNA_E_Nrl_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_E_Nrl_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_E_Nrl_degradation_0=reaction_mRNA_E_Nrl_degradation_0_P_mRNA_deg*x(288);

% Reaction: id = mRNA_E_Nrl_translation_0, name = mRNA_E_Nrl_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_E_Nrl_translation_0_P_k_translation=2.0;

	reaction_mRNA_E_Nrl_translation_0=reaction_mRNA_E_Nrl_translation_0_P_k_translation*x(288);

% Reaction: id = mRNA_E_OrCt_degradation_0, name = mRNA_E_OrCt_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_E_OrCt_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_E_OrCt_degradation_0=reaction_mRNA_E_OrCt_degradation_0_P_mRNA_deg*x(289);

% Reaction: id = mRNA_E_OrCt_translation_0, name = mRNA_E_OrCt_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_E_OrCt_translation_0_P_k_translation=2.0;

	reaction_mRNA_E_OrCt_translation_0=reaction_mRNA_E_OrCt_translation_0_P_k_translation*x(289);

% Reaction: id = mRNA_E_Otx_degradation_0, name = mRNA_E_Otx_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_E_Otx_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_E_Otx_degradation_0=reaction_mRNA_E_Otx_degradation_0_P_mRNA_deg*x(290);

% Reaction: id = mRNA_E_Otx_translation_0, name = mRNA_E_Otx_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_E_Otx_translation_0_P_k_translation=2.0;

	reaction_mRNA_E_Otx_translation_0=reaction_mRNA_E_Otx_translation_0_P_k_translation*x(290);

% Reaction: id = mRNA_E_Pks_degradation_0, name = mRNA_E_Pks_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_E_Pks_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_E_Pks_degradation_0=reaction_mRNA_E_Pks_degradation_0_P_mRNA_deg*x(291);

% Reaction: id = mRNA_E_Pks_translation_0, name = mRNA_E_Pks_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_E_Pks_translation_0_P_k_translation=2.0;

	reaction_mRNA_E_Pks_translation_0=reaction_mRNA_E_Pks_translation_0_P_k_translation*x(291);

% Reaction: id = mRNA_E_Pmar1_degradation_0, name = mRNA_E_Pmar1_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_E_Pmar1_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_E_Pmar1_degradation_0=reaction_mRNA_E_Pmar1_degradation_0_P_mRNA_deg*x(292);

% Reaction: id = mRNA_E_Pmar1_translation_0, name = mRNA_E_Pmar1_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_E_Pmar1_translation_0_P_k_translation=2.0;

	reaction_mRNA_E_Pmar1_translation_0=reaction_mRNA_E_Pmar1_translation_0_P_k_translation*x(292);

% Reaction: id = mRNA_E_Sm27_degradation_0, name = mRNA_E_Sm27_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_E_Sm27_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_E_Sm27_degradation_0=reaction_mRNA_E_Sm27_degradation_0_P_mRNA_deg*x(293);

% Reaction: id = mRNA_E_Sm27_translation_0, name = mRNA_E_Sm27_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_E_Sm27_translation_0_P_k_translation=2.0;

	reaction_mRNA_E_Sm27_translation_0=reaction_mRNA_E_Sm27_translation_0_P_k_translation*x(293);

% Reaction: id = mRNA_E_Sm30_degradation_0, name = mRNA_E_Sm30_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_E_Sm30_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_E_Sm30_degradation_0=reaction_mRNA_E_Sm30_degradation_0_P_mRNA_deg*x(294);

% Reaction: id = mRNA_E_Sm30_translation_0, name = mRNA_E_Sm30_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_E_Sm30_translation_0_P_k_translation=2.0;

	reaction_mRNA_E_Sm30_translation_0=reaction_mRNA_E_Sm30_translation_0_P_k_translation*x(294);

% Reaction: id = mRNA_E_Sm50_degradation_0, name = mRNA_E_Sm50_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_E_Sm50_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_E_Sm50_degradation_0=reaction_mRNA_E_Sm50_degradation_0_P_mRNA_deg*x(295);

% Reaction: id = mRNA_E_Sm50_translation_0, name = mRNA_E_Sm50_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_E_Sm50_translation_0_P_k_translation=2.0;

	reaction_mRNA_E_Sm50_translation_0=reaction_mRNA_E_Sm50_translation_0_P_k_translation*x(295);

% Reaction: id = mRNA_E_Snail_degradation_0, name = mRNA_E_Snail_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_E_Snail_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_E_Snail_degradation_0=reaction_mRNA_E_Snail_degradation_0_P_mRNA_deg*x(296);

% Reaction: id = mRNA_E_Snail_translation_0, name = mRNA_E_Snail_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_E_Snail_translation_0_P_k_translation=2.0;

	reaction_mRNA_E_Snail_translation_0=reaction_mRNA_E_Snail_translation_0_P_k_translation*x(296);

% Reaction: id = mRNA_E_SoxB1_degradation_0, name = mRNA_E_SoxB1_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_E_SoxB1_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_E_SoxB1_degradation_0=reaction_mRNA_E_SoxB1_degradation_0_P_mRNA_deg*x(297);

% Reaction: id = mRNA_E_SoxB1_translation_0, name = mRNA_E_SoxB1_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_E_SoxB1_translation_0_P_k_translation=2.0;

	reaction_mRNA_E_SoxB1_translation_0=reaction_mRNA_E_SoxB1_translation_0_P_k_translation*x(297);

% Reaction: id = mRNA_E_SoxC_degradation_0, name = mRNA_E_SoxC_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_E_SoxC_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_E_SoxC_degradation_0=reaction_mRNA_E_SoxC_degradation_0_P_mRNA_deg*x(298);

% Reaction: id = mRNA_E_SoxC_translation_0, name = mRNA_E_SoxC_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_E_SoxC_translation_0_P_k_translation=2.0;

	reaction_mRNA_E_SoxC_translation_0=reaction_mRNA_E_SoxC_translation_0_P_k_translation*x(298);

% Reaction: id = mRNA_E_SuH_degradation_0, name = mRNA_E_SuH_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_E_SuH_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_E_SuH_degradation_0=reaction_mRNA_E_SuH_degradation_0_P_mRNA_deg*x(299);

% Reaction: id = mRNA_E_SuH_translation_0, name = mRNA_E_SuH_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_E_SuH_translation_0_P_k_translation=2.0;

	reaction_mRNA_E_SuH_translation_0=reaction_mRNA_E_SuH_translation_0_P_k_translation*x(299);

% Reaction: id = mRNA_E_SuTx_degradation_0, name = mRNA_E_SuTx_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_E_SuTx_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_E_SuTx_degradation_0=reaction_mRNA_E_SuTx_degradation_0_P_mRNA_deg*x(300);

% Reaction: id = mRNA_E_SuTx_translation_0, name = mRNA_E_SuTx_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_E_SuTx_translation_0_P_k_translation=2.0;

	reaction_mRNA_E_SuTx_translation_0=reaction_mRNA_E_SuTx_translation_0_P_k_translation*x(300);

% Reaction: id = mRNA_E_TBr_degradation_0, name = mRNA_E_TBr_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_E_TBr_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_E_TBr_degradation_0=reaction_mRNA_E_TBr_degradation_0_P_mRNA_deg*x(301);

% Reaction: id = mRNA_E_TBr_translation_0, name = mRNA_E_TBr_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_E_TBr_translation_0_P_k_translation=2.0;

	reaction_mRNA_E_TBr_translation_0=reaction_mRNA_E_TBr_translation_0_P_k_translation*x(301);

% Reaction: id = mRNA_E_Tel_degradation_0, name = mRNA_E_Tel_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_E_Tel_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_E_Tel_degradation_0=reaction_mRNA_E_Tel_degradation_0_P_mRNA_deg*x(302);

% Reaction: id = mRNA_E_Tel_translation_0, name = mRNA_E_Tel_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_E_Tel_translation_0_P_k_translation=2.0;

	reaction_mRNA_E_Tel_translation_0=reaction_mRNA_E_Tel_translation_0_P_k_translation*x(302);

% Reaction: id = mRNA_E_Tgif_degradation_0, name = mRNA_E_Tgif_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_E_Tgif_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_E_Tgif_degradation_0=reaction_mRNA_E_Tgif_degradation_0_P_mRNA_deg*x(303);

% Reaction: id = mRNA_E_Tgif_translation_0, name = mRNA_E_Tgif_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_E_Tgif_translation_0_P_k_translation=2.0;

	reaction_mRNA_E_Tgif_translation_0=reaction_mRNA_E_Tgif_translation_0_P_k_translation*x(303);

% Reaction: id = mRNA_E_UMR_degradation_0, name = mRNA_E_UMR_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_E_UMR_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_E_UMR_degradation_0=reaction_mRNA_E_UMR_degradation_0_P_mRNA_deg*x(304);

% Reaction: id = mRNA_E_UMR_translation_0, name = mRNA_E_UMR_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_E_UMR_translation_0_P_k_translation=2.0;

	reaction_mRNA_E_UMR_translation_0=reaction_mRNA_E_UMR_translation_0_P_k_translation*x(304);

% Reaction: id = mRNA_E_UVAOtx_degradation_0, name = mRNA_E_UVAOtx_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_E_UVAOtx_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_E_UVAOtx_degradation_0=reaction_mRNA_E_UVAOtx_degradation_0_P_mRNA_deg*x(305);

% Reaction: id = mRNA_E_UVAOtx_translation_0, name = mRNA_E_UVAOtx_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_E_UVAOtx_translation_0_P_k_translation=2.0;

	reaction_mRNA_E_UVAOtx_translation_0=reaction_mRNA_E_UVAOtx_translation_0_P_k_translation*x(305);

% Reaction: id = mRNA_E_UbiqSoxB1_degradation_0, name = mRNA_E_UbiqSoxB1_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_E_UbiqSoxB1_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_E_UbiqSoxB1_degradation_0=reaction_mRNA_E_UbiqSoxB1_degradation_0_P_mRNA_deg*x(306);

% Reaction: id = mRNA_E_UbiqSoxB1_translation_0, name = mRNA_E_UbiqSoxB1_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_E_UbiqSoxB1_translation_0_P_k_translation=2.0;

	reaction_mRNA_E_UbiqSoxB1_translation_0=reaction_mRNA_E_UbiqSoxB1_translation_0_P_k_translation*x(306);

% Reaction: id = mRNA_E_VEGFR_degradation_0, name = mRNA_E_VEGFR_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_E_VEGFR_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_E_VEGFR_degradation_0=reaction_mRNA_E_VEGFR_degradation_0_P_mRNA_deg*x(308);

% Reaction: id = mRNA_E_VEGFR_translation_0, name = mRNA_E_VEGFR_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_E_VEGFR_translation_0_P_k_translation=2.0;

	reaction_mRNA_E_VEGFR_translation_0=reaction_mRNA_E_VEGFR_translation_0_P_k_translation*x(308);

% Reaction: id = mRNA_E_VEGF_degradation_0, name = mRNA_E_VEGF_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_E_VEGF_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_E_VEGF_degradation_0=reaction_mRNA_E_VEGF_degradation_0_P_mRNA_deg*x(307);

% Reaction: id = mRNA_E_VEGF_translation_0, name = mRNA_E_VEGF_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_E_VEGF_translation_0_P_k_translation=2.0;

	reaction_mRNA_E_VEGF_translation_0=reaction_mRNA_E_VEGF_translation_0_P_k_translation*x(307);

% Reaction: id = mRNA_E_Wnt8_degradation_0, name = mRNA_E_Wnt8_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_E_Wnt8_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_E_Wnt8_degradation_0=reaction_mRNA_E_Wnt8_degradation_0_P_mRNA_deg*x(309);

% Reaction: id = mRNA_E_Wnt8_translation_0, name = mRNA_E_Wnt8_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_E_Wnt8_translation_0_P_k_translation=2.0;

	reaction_mRNA_E_Wnt8_translation_0=reaction_mRNA_E_Wnt8_translation_0_P_k_translation*x(309);

% Reaction: id = mRNA_E_cB_degradation_0, name = mRNA_E_cB_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_E_cB_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_E_cB_degradation_0=reaction_mRNA_E_cB_degradation_0_P_mRNA_deg*x(310);

% Reaction: id = mRNA_E_cB_translation_0, name = mRNA_E_cB_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_E_cB_translation_0_P_k_translation=2.0;

	reaction_mRNA_E_cB_translation_0=reaction_mRNA_E_cB_translation_0_P_k_translation*x(310);

% Reaction: id = mRNA_E_z13_degradation_0, name = mRNA_E_z13_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_E_z13_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_E_z13_degradation_0=reaction_mRNA_E_z13_degradation_0_P_mRNA_deg*x(311);

% Reaction: id = mRNA_E_z13_translation_0, name = mRNA_E_z13_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_E_z13_translation_0_P_k_translation=2.0;

	reaction_mRNA_E_z13_translation_0=reaction_mRNA_E_z13_translation_0_P_k_translation*x(311);

% Reaction: id = mRNA_M_Alx1_degradation_0, name = mRNA_M_Alx1_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_M_Alx1_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_M_Alx1_degradation_0=reaction_mRNA_M_Alx1_degradation_0_P_mRNA_deg*x(312);

% Reaction: id = mRNA_M_Alx1_translation_0, name = mRNA_M_Alx1_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_M_Alx1_translation_0_P_k_translation=2.0;

	reaction_mRNA_M_Alx1_translation_0=reaction_mRNA_M_Alx1_translation_0_P_k_translation*x(312);

% Reaction: id = mRNA_M_Apobec_degradation_0, name = mRNA_M_Apobec_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_M_Apobec_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_M_Apobec_degradation_0=reaction_mRNA_M_Apobec_degradation_0_P_mRNA_deg*x(313);

% Reaction: id = mRNA_M_Apobec_translation_0, name = mRNA_M_Apobec_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_M_Apobec_translation_0_P_k_translation=2.0;

	reaction_mRNA_M_Apobec_translation_0=reaction_mRNA_M_Apobec_translation_0_P_k_translation*x(313);

% Reaction: id = mRNA_M_Blimp1_degradation_0, name = mRNA_M_Blimp1_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_M_Blimp1_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_M_Blimp1_degradation_0=reaction_mRNA_M_Blimp1_degradation_0_P_mRNA_deg*x(314);

% Reaction: id = mRNA_M_Blimp1_translation_0, name = mRNA_M_Blimp1_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_M_Blimp1_translation_0_P_k_translation=2.0;

	reaction_mRNA_M_Blimp1_translation_0=reaction_mRNA_M_Blimp1_translation_0_P_k_translation*x(314);

% Reaction: id = mRNA_M_Bra_degradation_0, name = mRNA_M_Bra_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_M_Bra_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_M_Bra_degradation_0=reaction_mRNA_M_Bra_degradation_0_P_mRNA_deg*x(315);

% Reaction: id = mRNA_M_Bra_translation_0, name = mRNA_M_Bra_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_M_Bra_translation_0_P_k_translation=2.0;

	reaction_mRNA_M_Bra_translation_0=reaction_mRNA_M_Bra_translation_0_P_k_translation*x(315);

% Reaction: id = mRNA_M_Brn_degradation_0, name = mRNA_M_Brn_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_M_Brn_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_M_Brn_degradation_0=reaction_mRNA_M_Brn_degradation_0_P_mRNA_deg*x(316);

% Reaction: id = mRNA_M_Brn_translation_0, name = mRNA_M_Brn_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_M_Brn_translation_0_P_k_translation=2.0;

	reaction_mRNA_M_Brn_translation_0=reaction_mRNA_M_Brn_translation_0_P_k_translation*x(316);

% Reaction: id = mRNA_M_CAPK_degradation_0, name = mRNA_M_CAPK_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_M_CAPK_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_M_CAPK_degradation_0=reaction_mRNA_M_CAPK_degradation_0_P_mRNA_deg*x(317);

% Reaction: id = mRNA_M_CAPK_translation_0, name = mRNA_M_CAPK_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_M_CAPK_translation_0_P_k_translation=2.0;

	reaction_mRNA_M_CAPK_translation_0=reaction_mRNA_M_CAPK_translation_0_P_k_translation*x(317);

% Reaction: id = mRNA_M_CyP_degradation_0, name = mRNA_M_CyP_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_M_CyP_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_M_CyP_degradation_0=reaction_mRNA_M_CyP_degradation_0_P_mRNA_deg*x(318);

% Reaction: id = mRNA_M_CyP_translation_0, name = mRNA_M_CyP_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_M_CyP_translation_0_P_k_translation=2.0;

	reaction_mRNA_M_CyP_translation_0=reaction_mRNA_M_CyP_translation_0_P_k_translation*x(318);

% Reaction: id = mRNA_M_Delta_degradation_0, name = mRNA_M_Delta_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_M_Delta_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_M_Delta_degradation_0=reaction_mRNA_M_Delta_degradation_0_P_mRNA_deg*x(319);

% Reaction: id = mRNA_M_Delta_translation_0, name = mRNA_M_Delta_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_M_Delta_translation_0_P_k_translation=2.0;

	reaction_mRNA_M_Delta_translation_0=reaction_mRNA_M_Delta_translation_0_P_k_translation*x(319);

% Reaction: id = mRNA_M_Dpt_degradation_0, name = mRNA_M_Dpt_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_M_Dpt_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_M_Dpt_degradation_0=reaction_mRNA_M_Dpt_degradation_0_P_mRNA_deg*x(320);

% Reaction: id = mRNA_M_Dpt_translation_0, name = mRNA_M_Dpt_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_M_Dpt_translation_0_P_k_translation=2.0;

	reaction_mRNA_M_Dpt_translation_0=reaction_mRNA_M_Dpt_translation_0_P_k_translation*x(320);

% Reaction: id = mRNA_M_Dri_degradation_0, name = mRNA_M_Dri_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_M_Dri_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_M_Dri_degradation_0=reaction_mRNA_M_Dri_degradation_0_P_mRNA_deg*x(321);

% Reaction: id = mRNA_M_Dri_translation_0, name = mRNA_M_Dri_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_M_Dri_translation_0_P_k_translation=2.0;

	reaction_mRNA_M_Dri_translation_0=reaction_mRNA_M_Dri_translation_0_P_k_translation*x(321);

% Reaction: id = mRNA_M_Endo16_degradation_0, name = mRNA_M_Endo16_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_M_Endo16_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_M_Endo16_degradation_0=reaction_mRNA_M_Endo16_degradation_0_P_mRNA_deg*x(322);

% Reaction: id = mRNA_M_Endo16_translation_0, name = mRNA_M_Endo16_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_M_Endo16_translation_0_P_k_translation=2.0;

	reaction_mRNA_M_Endo16_translation_0=reaction_mRNA_M_Endo16_translation_0_P_k_translation*x(322);

% Reaction: id = mRNA_M_Erg_degradation_0, name = mRNA_M_Erg_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_M_Erg_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_M_Erg_degradation_0=reaction_mRNA_M_Erg_degradation_0_P_mRNA_deg*x(323);

% Reaction: id = mRNA_M_Erg_translation_0, name = mRNA_M_Erg_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_M_Erg_translation_0_P_k_translation=2.0;

	reaction_mRNA_M_Erg_translation_0=reaction_mRNA_M_Erg_translation_0_P_k_translation*x(323);

% Reaction: id = mRNA_M_Ets1_degradation_0, name = mRNA_M_Ets1_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_M_Ets1_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_M_Ets1_degradation_0=reaction_mRNA_M_Ets1_degradation_0_P_mRNA_deg*x(324);

% Reaction: id = mRNA_M_Ets1_translation_0, name = mRNA_M_Ets1_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_M_Ets1_translation_0_P_k_translation=2.0;

	reaction_mRNA_M_Ets1_translation_0=reaction_mRNA_M_Ets1_translation_0_P_k_translation*x(324);

% Reaction: id = mRNA_M_Eve_degradation_0, name = mRNA_M_Eve_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_M_Eve_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_M_Eve_degradation_0=reaction_mRNA_M_Eve_degradation_0_P_mRNA_deg*x(325);

% Reaction: id = mRNA_M_Eve_translation_0, name = mRNA_M_Eve_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_M_Eve_translation_0_P_k_translation=2.0;

	reaction_mRNA_M_Eve_translation_0=reaction_mRNA_M_Eve_translation_0_P_k_translation*x(325);

% Reaction: id = mRNA_M_Ficolin_degradation_0, name = mRNA_M_Ficolin_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_M_Ficolin_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_M_Ficolin_degradation_0=reaction_mRNA_M_Ficolin_degradation_0_P_mRNA_deg*x(326);

% Reaction: id = mRNA_M_Ficolin_translation_0, name = mRNA_M_Ficolin_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_M_Ficolin_translation_0_P_k_translation=2.0;

	reaction_mRNA_M_Ficolin_translation_0=reaction_mRNA_M_Ficolin_translation_0_P_k_translation*x(326);

% Reaction: id = mRNA_M_FoxA_degradation_0, name = mRNA_M_FoxA_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_M_FoxA_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_M_FoxA_degradation_0=reaction_mRNA_M_FoxA_degradation_0_P_mRNA_deg*x(327);

% Reaction: id = mRNA_M_FoxA_translation_0, name = mRNA_M_FoxA_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_M_FoxA_translation_0_P_k_translation=2.0;

	reaction_mRNA_M_FoxA_translation_0=reaction_mRNA_M_FoxA_translation_0_P_k_translation*x(327);

% Reaction: id = mRNA_M_FoxB_degradation_0, name = mRNA_M_FoxB_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_M_FoxB_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_M_FoxB_degradation_0=reaction_mRNA_M_FoxB_degradation_0_P_mRNA_deg*x(328);

% Reaction: id = mRNA_M_FoxB_translation_0, name = mRNA_M_FoxB_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_M_FoxB_translation_0_P_k_translation=2.0;

	reaction_mRNA_M_FoxB_translation_0=reaction_mRNA_M_FoxB_translation_0_P_k_translation*x(328);

% Reaction: id = mRNA_M_FoxN23_degradation_0, name = mRNA_M_FoxN23_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_M_FoxN23_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_M_FoxN23_degradation_0=reaction_mRNA_M_FoxN23_degradation_0_P_mRNA_deg*x(329);

% Reaction: id = mRNA_M_FoxN23_translation_0, name = mRNA_M_FoxN23_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_M_FoxN23_translation_0_P_k_translation=2.0;

	reaction_mRNA_M_FoxN23_translation_0=reaction_mRNA_M_FoxN23_translation_0_P_k_translation*x(329);

% Reaction: id = mRNA_M_FoxO_degradation_0, name = mRNA_M_FoxO_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_M_FoxO_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_M_FoxO_degradation_0=reaction_mRNA_M_FoxO_degradation_0_P_mRNA_deg*x(330);

% Reaction: id = mRNA_M_FoxO_translation_0, name = mRNA_M_FoxO_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_M_FoxO_translation_0_P_k_translation=2.0;

	reaction_mRNA_M_FoxO_translation_0=reaction_mRNA_M_FoxO_translation_0_P_k_translation*x(330);

% Reaction: id = mRNA_M_FvMo_degradation_0, name = mRNA_M_FvMo_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_M_FvMo_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_M_FvMo_degradation_0=reaction_mRNA_M_FvMo_degradation_0_P_mRNA_deg*x(331);

% Reaction: id = mRNA_M_FvMo_translation_0, name = mRNA_M_FvMo_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_M_FvMo_translation_0_P_k_translation=2.0;

	reaction_mRNA_M_FvMo_translation_0=reaction_mRNA_M_FvMo_translation_0_P_k_translation*x(331);

% Reaction: id = mRNA_M_GataC_degradation_0, name = mRNA_M_GataC_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_M_GataC_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_M_GataC_degradation_0=reaction_mRNA_M_GataC_degradation_0_P_mRNA_deg*x(332);

% Reaction: id = mRNA_M_GataC_translation_0, name = mRNA_M_GataC_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_M_GataC_translation_0_P_k_translation=2.0;

	reaction_mRNA_M_GataC_translation_0=reaction_mRNA_M_GataC_translation_0_P_k_translation*x(332);

% Reaction: id = mRNA_M_GataE_degradation_0, name = mRNA_M_GataE_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_M_GataE_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_M_GataE_degradation_0=reaction_mRNA_M_GataE_degradation_0_P_mRNA_deg*x(333);

% Reaction: id = mRNA_M_GataE_translation_0, name = mRNA_M_GataE_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_M_GataE_translation_0_P_k_translation=2.0;

	reaction_mRNA_M_GataE_translation_0=reaction_mRNA_M_GataE_translation_0_P_k_translation*x(333);

% Reaction: id = mRNA_M_Gcad_degradation_0, name = mRNA_M_Gcad_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_M_Gcad_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_M_Gcad_degradation_0=reaction_mRNA_M_Gcad_degradation_0_P_mRNA_deg*x(334);

% Reaction: id = mRNA_M_Gcad_translation_0, name = mRNA_M_Gcad_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_M_Gcad_translation_0_P_k_translation=2.0;

	reaction_mRNA_M_Gcad_translation_0=reaction_mRNA_M_Gcad_translation_0_P_k_translation*x(334);

% Reaction: id = mRNA_M_Gcm_degradation_0, name = mRNA_M_Gcm_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_M_Gcm_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_M_Gcm_degradation_0=reaction_mRNA_M_Gcm_degradation_0_P_mRNA_deg*x(335);

% Reaction: id = mRNA_M_Gcm_translation_0, name = mRNA_M_Gcm_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_M_Gcm_translation_0_P_k_translation=2.0;

	reaction_mRNA_M_Gcm_translation_0=reaction_mRNA_M_Gcm_translation_0_P_k_translation*x(335);

% Reaction: id = mRNA_M_Gelsolin_degradation_0, name = mRNA_M_Gelsolin_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_M_Gelsolin_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_M_Gelsolin_degradation_0=reaction_mRNA_M_Gelsolin_degradation_0_P_mRNA_deg*x(336);

% Reaction: id = mRNA_M_Gelsolin_translation_0, name = mRNA_M_Gelsolin_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_M_Gelsolin_translation_0_P_k_translation=2.0;

	reaction_mRNA_M_Gelsolin_translation_0=reaction_mRNA_M_Gelsolin_translation_0_P_k_translation*x(336);

% Reaction: id = mRNA_M_HesC_degradation_0, name = mRNA_M_HesC_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_M_HesC_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_M_HesC_degradation_0=reaction_mRNA_M_HesC_degradation_0_P_mRNA_deg*x(337);

% Reaction: id = mRNA_M_HesC_translation_0, name = mRNA_M_HesC_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_M_HesC_translation_0_P_k_translation=2.0;

	reaction_mRNA_M_HesC_translation_0=reaction_mRNA_M_HesC_translation_0_P_k_translation*x(337);

% Reaction: id = mRNA_M_Hex_degradation_0, name = mRNA_M_Hex_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_M_Hex_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_M_Hex_degradation_0=reaction_mRNA_M_Hex_degradation_0_P_mRNA_deg*x(338);

% Reaction: id = mRNA_M_Hex_translation_0, name = mRNA_M_Hex_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_M_Hex_translation_0_P_k_translation=2.0;

	reaction_mRNA_M_Hex_translation_0=reaction_mRNA_M_Hex_translation_0_P_k_translation*x(338);

% Reaction: id = mRNA_M_Hnf6_degradation_0, name = mRNA_M_Hnf6_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_M_Hnf6_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_M_Hnf6_degradation_0=reaction_mRNA_M_Hnf6_degradation_0_P_mRNA_deg*x(339);

% Reaction: id = mRNA_M_Hnf6_translation_0, name = mRNA_M_Hnf6_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_M_Hnf6_translation_0_P_k_translation=2.0;

	reaction_mRNA_M_Hnf6_translation_0=reaction_mRNA_M_Hnf6_translation_0_P_k_translation*x(339);

% Reaction: id = mRNA_M_Hox_degradation_0, name = mRNA_M_Hox_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_M_Hox_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_M_Hox_degradation_0=reaction_mRNA_M_Hox_degradation_0_P_mRNA_deg*x(340);

% Reaction: id = mRNA_M_Hox_translation_0, name = mRNA_M_Hox_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_M_Hox_translation_0_P_k_translation=2.0;

	reaction_mRNA_M_Hox_translation_0=reaction_mRNA_M_Hox_translation_0_P_k_translation*x(340);

% Reaction: id = mRNA_M_Kakapo_degradation_0, name = mRNA_M_Kakapo_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_M_Kakapo_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_M_Kakapo_degradation_0=reaction_mRNA_M_Kakapo_degradation_0_P_mRNA_deg*x(341);

% Reaction: id = mRNA_M_Kakapo_translation_0, name = mRNA_M_Kakapo_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_M_Kakapo_translation_0_P_k_translation=2.0;

	reaction_mRNA_M_Kakapo_translation_0=reaction_mRNA_M_Kakapo_translation_0_P_k_translation*x(341);

% Reaction: id = mRNA_M_Lim_degradation_0, name = mRNA_M_Lim_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_M_Lim_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_M_Lim_degradation_0=reaction_mRNA_M_Lim_degradation_0_P_mRNA_deg*x(342);

% Reaction: id = mRNA_M_Lim_translation_0, name = mRNA_M_Lim_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_M_Lim_translation_0_P_k_translation=2.0;

	reaction_mRNA_M_Lim_translation_0=reaction_mRNA_M_Lim_translation_0_P_k_translation*x(342);

% Reaction: id = mRNA_M_Msp130_degradation_0, name = mRNA_M_Msp130_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_M_Msp130_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_M_Msp130_degradation_0=reaction_mRNA_M_Msp130_degradation_0_P_mRNA_deg*x(343);

% Reaction: id = mRNA_M_Msp130_translation_0, name = mRNA_M_Msp130_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_M_Msp130_translation_0_P_k_translation=2.0;

	reaction_mRNA_M_Msp130_translation_0=reaction_mRNA_M_Msp130_translation_0_P_k_translation*x(343);

% Reaction: id = mRNA_M_MspL_degradation_0, name = mRNA_M_MspL_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_M_MspL_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_M_MspL_degradation_0=reaction_mRNA_M_MspL_degradation_0_P_mRNA_deg*x(344);

% Reaction: id = mRNA_M_MspL_translation_0, name = mRNA_M_MspL_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_M_MspL_translation_0_P_k_translation=2.0;

	reaction_mRNA_M_MspL_translation_0=reaction_mRNA_M_MspL_translation_0_P_k_translation*x(344);

% Reaction: id = mRNA_M_Not_degradation_0, name = mRNA_M_Not_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_M_Not_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_M_Not_degradation_0=reaction_mRNA_M_Not_degradation_0_P_mRNA_deg*x(345);

% Reaction: id = mRNA_M_Not_translation_0, name = mRNA_M_Not_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_M_Not_translation_0_P_k_translation=2.0;

	reaction_mRNA_M_Not_translation_0=reaction_mRNA_M_Not_translation_0_P_k_translation*x(345);

% Reaction: id = mRNA_M_Notch_degradation_0, name = mRNA_M_Notch_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_M_Notch_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_M_Notch_degradation_0=reaction_mRNA_M_Notch_degradation_0_P_mRNA_deg*x(346);

% Reaction: id = mRNA_M_Notch_translation_0, name = mRNA_M_Notch_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_M_Notch_translation_0_P_k_translation=2.0;

	reaction_mRNA_M_Notch_translation_0=reaction_mRNA_M_Notch_translation_0_P_k_translation*x(346);

% Reaction: id = mRNA_M_Nrl_degradation_0, name = mRNA_M_Nrl_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_M_Nrl_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_M_Nrl_degradation_0=reaction_mRNA_M_Nrl_degradation_0_P_mRNA_deg*x(347);

% Reaction: id = mRNA_M_Nrl_translation_0, name = mRNA_M_Nrl_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_M_Nrl_translation_0_P_k_translation=2.0;

	reaction_mRNA_M_Nrl_translation_0=reaction_mRNA_M_Nrl_translation_0_P_k_translation*x(347);

% Reaction: id = mRNA_M_OrCt_degradation_0, name = mRNA_M_OrCt_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_M_OrCt_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_M_OrCt_degradation_0=reaction_mRNA_M_OrCt_degradation_0_P_mRNA_deg*x(348);

% Reaction: id = mRNA_M_OrCt_translation_0, name = mRNA_M_OrCt_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_M_OrCt_translation_0_P_k_translation=2.0;

	reaction_mRNA_M_OrCt_translation_0=reaction_mRNA_M_OrCt_translation_0_P_k_translation*x(348);

% Reaction: id = mRNA_M_Otx_degradation_0, name = mRNA_M_Otx_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_M_Otx_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_M_Otx_degradation_0=reaction_mRNA_M_Otx_degradation_0_P_mRNA_deg*x(349);

% Reaction: id = mRNA_M_Otx_translation_0, name = mRNA_M_Otx_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_M_Otx_translation_0_P_k_translation=2.0;

	reaction_mRNA_M_Otx_translation_0=reaction_mRNA_M_Otx_translation_0_P_k_translation*x(349);

% Reaction: id = mRNA_M_Pks_degradation_0, name = mRNA_M_Pks_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_M_Pks_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_M_Pks_degradation_0=reaction_mRNA_M_Pks_degradation_0_P_mRNA_deg*x(350);

% Reaction: id = mRNA_M_Pks_translation_0, name = mRNA_M_Pks_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_M_Pks_translation_0_P_k_translation=2.0;

	reaction_mRNA_M_Pks_translation_0=reaction_mRNA_M_Pks_translation_0_P_k_translation*x(350);

% Reaction: id = mRNA_M_Pmar1_degradation_0, name = mRNA_M_Pmar1_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_M_Pmar1_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_M_Pmar1_degradation_0=reaction_mRNA_M_Pmar1_degradation_0_P_mRNA_deg*x(351);

% Reaction: id = mRNA_M_Pmar1_translation_0, name = mRNA_M_Pmar1_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_M_Pmar1_translation_0_P_k_translation=2.0;

	reaction_mRNA_M_Pmar1_translation_0=reaction_mRNA_M_Pmar1_translation_0_P_k_translation*x(351);

% Reaction: id = mRNA_M_Sm27_degradation_0, name = mRNA_M_Sm27_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_M_Sm27_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_M_Sm27_degradation_0=reaction_mRNA_M_Sm27_degradation_0_P_mRNA_deg*x(352);

% Reaction: id = mRNA_M_Sm27_translation_0, name = mRNA_M_Sm27_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_M_Sm27_translation_0_P_k_translation=2.0;

	reaction_mRNA_M_Sm27_translation_0=reaction_mRNA_M_Sm27_translation_0_P_k_translation*x(352);

% Reaction: id = mRNA_M_Sm30_degradation_0, name = mRNA_M_Sm30_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_M_Sm30_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_M_Sm30_degradation_0=reaction_mRNA_M_Sm30_degradation_0_P_mRNA_deg*x(353);

% Reaction: id = mRNA_M_Sm30_translation_0, name = mRNA_M_Sm30_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_M_Sm30_translation_0_P_k_translation=2.0;

	reaction_mRNA_M_Sm30_translation_0=reaction_mRNA_M_Sm30_translation_0_P_k_translation*x(353);

% Reaction: id = mRNA_M_Sm50_degradation_0, name = mRNA_M_Sm50_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_M_Sm50_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_M_Sm50_degradation_0=reaction_mRNA_M_Sm50_degradation_0_P_mRNA_deg*x(354);

% Reaction: id = mRNA_M_Sm50_translation_0, name = mRNA_M_Sm50_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_M_Sm50_translation_0_P_k_translation=2.0;

	reaction_mRNA_M_Sm50_translation_0=reaction_mRNA_M_Sm50_translation_0_P_k_translation*x(354);

% Reaction: id = mRNA_M_Snail_degradation_0, name = mRNA_M_Snail_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_M_Snail_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_M_Snail_degradation_0=reaction_mRNA_M_Snail_degradation_0_P_mRNA_deg*x(355);

% Reaction: id = mRNA_M_Snail_translation_0, name = mRNA_M_Snail_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_M_Snail_translation_0_P_k_translation=2.0;

	reaction_mRNA_M_Snail_translation_0=reaction_mRNA_M_Snail_translation_0_P_k_translation*x(355);

% Reaction: id = mRNA_M_SoxB1_degradation_0, name = mRNA_M_SoxB1_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_M_SoxB1_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_M_SoxB1_degradation_0=reaction_mRNA_M_SoxB1_degradation_0_P_mRNA_deg*x(356);

% Reaction: id = mRNA_M_SoxB1_translation_0, name = mRNA_M_SoxB1_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_M_SoxB1_translation_0_P_k_translation=2.0;

	reaction_mRNA_M_SoxB1_translation_0=reaction_mRNA_M_SoxB1_translation_0_P_k_translation*x(356);

% Reaction: id = mRNA_M_SoxC_degradation_0, name = mRNA_M_SoxC_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_M_SoxC_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_M_SoxC_degradation_0=reaction_mRNA_M_SoxC_degradation_0_P_mRNA_deg*x(357);

% Reaction: id = mRNA_M_SoxC_translation_0, name = mRNA_M_SoxC_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_M_SoxC_translation_0_P_k_translation=2.0;

	reaction_mRNA_M_SoxC_translation_0=reaction_mRNA_M_SoxC_translation_0_P_k_translation*x(357);

% Reaction: id = mRNA_M_SuH_degradation_0, name = mRNA_M_SuH_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_M_SuH_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_M_SuH_degradation_0=reaction_mRNA_M_SuH_degradation_0_P_mRNA_deg*x(358);

% Reaction: id = mRNA_M_SuH_translation_0, name = mRNA_M_SuH_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_M_SuH_translation_0_P_k_translation=2.0;

	reaction_mRNA_M_SuH_translation_0=reaction_mRNA_M_SuH_translation_0_P_k_translation*x(358);

% Reaction: id = mRNA_M_SuTx_degradation_0, name = mRNA_M_SuTx_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_M_SuTx_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_M_SuTx_degradation_0=reaction_mRNA_M_SuTx_degradation_0_P_mRNA_deg*x(359);

% Reaction: id = mRNA_M_SuTx_translation_0, name = mRNA_M_SuTx_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_M_SuTx_translation_0_P_k_translation=2.0;

	reaction_mRNA_M_SuTx_translation_0=reaction_mRNA_M_SuTx_translation_0_P_k_translation*x(359);

% Reaction: id = mRNA_M_TBr_degradation_0, name = mRNA_M_TBr_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_M_TBr_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_M_TBr_degradation_0=reaction_mRNA_M_TBr_degradation_0_P_mRNA_deg*x(360);

% Reaction: id = mRNA_M_TBr_translation_0, name = mRNA_M_TBr_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_M_TBr_translation_0_P_k_translation=2.0;

	reaction_mRNA_M_TBr_translation_0=reaction_mRNA_M_TBr_translation_0_P_k_translation*x(360);

% Reaction: id = mRNA_M_Tel_degradation_0, name = mRNA_M_Tel_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_M_Tel_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_M_Tel_degradation_0=reaction_mRNA_M_Tel_degradation_0_P_mRNA_deg*x(361);

% Reaction: id = mRNA_M_Tel_translation_0, name = mRNA_M_Tel_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_M_Tel_translation_0_P_k_translation=2.0;

	reaction_mRNA_M_Tel_translation_0=reaction_mRNA_M_Tel_translation_0_P_k_translation*x(361);

% Reaction: id = mRNA_M_Tgif_degradation_0, name = mRNA_M_Tgif_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_M_Tgif_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_M_Tgif_degradation_0=reaction_mRNA_M_Tgif_degradation_0_P_mRNA_deg*x(362);

% Reaction: id = mRNA_M_Tgif_translation_0, name = mRNA_M_Tgif_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_M_Tgif_translation_0_P_k_translation=2.0;

	reaction_mRNA_M_Tgif_translation_0=reaction_mRNA_M_Tgif_translation_0_P_k_translation*x(362);

% Reaction: id = mRNA_M_UMADelta_degradation_0, name = mRNA_M_UMADelta_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_M_UMADelta_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_M_UMADelta_degradation_0=reaction_mRNA_M_UMADelta_degradation_0_P_mRNA_deg*x(363);

% Reaction: id = mRNA_M_UMADelta_translation_0, name = mRNA_M_UMADelta_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_M_UMADelta_translation_0_P_k_translation=2.0;

	reaction_mRNA_M_UMADelta_translation_0=reaction_mRNA_M_UMADelta_translation_0_P_k_translation*x(363);

% Reaction: id = mRNA_M_UMANrl_degradation_0, name = mRNA_M_UMANrl_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_M_UMANrl_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_M_UMANrl_degradation_0=reaction_mRNA_M_UMANrl_degradation_0_P_mRNA_deg*x(364);

% Reaction: id = mRNA_M_UMANrl_translation_0, name = mRNA_M_UMANrl_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_M_UMANrl_translation_0_P_k_translation=2.0;

	reaction_mRNA_M_UMANrl_translation_0=reaction_mRNA_M_UMANrl_translation_0_P_k_translation*x(364);

% Reaction: id = mRNA_M_UMR_degradation_0, name = mRNA_M_UMR_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_M_UMR_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_M_UMR_degradation_0=reaction_mRNA_M_UMR_degradation_0_P_mRNA_deg*x(365);

% Reaction: id = mRNA_M_UMR_translation_0, name = mRNA_M_UMR_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_M_UMR_translation_0_P_k_translation=2.0;

	reaction_mRNA_M_UMR_translation_0=reaction_mRNA_M_UMR_translation_0_P_k_translation*x(365);

% Reaction: id = mRNA_M_UbiqSoxB1_degradation_0, name = mRNA_M_UbiqSoxB1_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_M_UbiqSoxB1_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_M_UbiqSoxB1_degradation_0=reaction_mRNA_M_UbiqSoxB1_degradation_0_P_mRNA_deg*x(366);

% Reaction: id = mRNA_M_UbiqSoxB1_translation_0, name = mRNA_M_UbiqSoxB1_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_M_UbiqSoxB1_translation_0_P_k_translation=2.0;

	reaction_mRNA_M_UbiqSoxB1_translation_0=reaction_mRNA_M_UbiqSoxB1_translation_0_P_k_translation*x(366);

% Reaction: id = mRNA_M_VEGFR_degradation_0, name = mRNA_M_VEGFR_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_M_VEGFR_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_M_VEGFR_degradation_0=reaction_mRNA_M_VEGFR_degradation_0_P_mRNA_deg*x(367);

% Reaction: id = mRNA_M_VEGFR_translation_0, name = mRNA_M_VEGFR_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_M_VEGFR_translation_0_P_k_translation=2.0;

	reaction_mRNA_M_VEGFR_translation_0=reaction_mRNA_M_VEGFR_translation_0_P_k_translation*x(367);

% Reaction: id = mRNA_M_Wnt8_degradation_0, name = mRNA_M_Wnt8_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_M_Wnt8_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_M_Wnt8_degradation_0=reaction_mRNA_M_Wnt8_degradation_0_P_mRNA_deg*x(368);

% Reaction: id = mRNA_M_Wnt8_translation_0, name = mRNA_M_Wnt8_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_M_Wnt8_translation_0_P_k_translation=2.0;

	reaction_mRNA_M_Wnt8_translation_0=reaction_mRNA_M_Wnt8_translation_0_P_k_translation*x(368);

% Reaction: id = mRNA_M_cB_degradation_0, name = mRNA_M_cB_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_M_cB_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_M_cB_degradation_0=reaction_mRNA_M_cB_degradation_0_P_mRNA_deg*x(369);

% Reaction: id = mRNA_M_cB_translation_0, name = mRNA_M_cB_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_M_cB_translation_0_P_k_translation=2.0;

	reaction_mRNA_M_cB_translation_0=reaction_mRNA_M_cB_translation_0_P_k_translation*x(369);

% Reaction: id = mRNA_M_z13_degradation_0, name = mRNA_M_z13_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_M_z13_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_M_z13_degradation_0=reaction_mRNA_M_z13_degradation_0_P_mRNA_deg*x(370);

% Reaction: id = mRNA_M_z13_translation_0, name = mRNA_M_z13_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_M_z13_translation_0_P_k_translation=2.0;

	reaction_mRNA_M_z13_translation_0=reaction_mRNA_M_z13_translation_0_P_k_translation*x(370);

% Reaction: id = mRNA_P_Alx1_degradation_0, name = mRNA_P_Alx1_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_P_Alx1_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_P_Alx1_degradation_0=reaction_mRNA_P_Alx1_degradation_0_P_mRNA_deg*x(371);

% Reaction: id = mRNA_P_Alx1_translation_0, name = mRNA_P_Alx1_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_P_Alx1_translation_0_P_k_translation=2.0;

	reaction_mRNA_P_Alx1_translation_0=reaction_mRNA_P_Alx1_translation_0_P_k_translation*x(371);

% Reaction: id = mRNA_P_Apobec_degradation_0, name = mRNA_P_Apobec_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_P_Apobec_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_P_Apobec_degradation_0=reaction_mRNA_P_Apobec_degradation_0_P_mRNA_deg*x(372);

% Reaction: id = mRNA_P_Apobec_translation_0, name = mRNA_P_Apobec_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_P_Apobec_translation_0_P_k_translation=2.0;

	reaction_mRNA_P_Apobec_translation_0=reaction_mRNA_P_Apobec_translation_0_P_k_translation*x(372);

% Reaction: id = mRNA_P_Blimp1_degradation_0, name = mRNA_P_Blimp1_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_P_Blimp1_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_P_Blimp1_degradation_0=reaction_mRNA_P_Blimp1_degradation_0_P_mRNA_deg*x(373);

% Reaction: id = mRNA_P_Blimp1_translation_0, name = mRNA_P_Blimp1_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_P_Blimp1_translation_0_P_k_translation=2.0;

	reaction_mRNA_P_Blimp1_translation_0=reaction_mRNA_P_Blimp1_translation_0_P_k_translation*x(373);

% Reaction: id = mRNA_P_Bra_degradation_0, name = mRNA_P_Bra_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_P_Bra_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_P_Bra_degradation_0=reaction_mRNA_P_Bra_degradation_0_P_mRNA_deg*x(374);

% Reaction: id = mRNA_P_Bra_translation_0, name = mRNA_P_Bra_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_P_Bra_translation_0_P_k_translation=2.0;

	reaction_mRNA_P_Bra_translation_0=reaction_mRNA_P_Bra_translation_0_P_k_translation*x(374);

% Reaction: id = mRNA_P_Brn_degradation_0, name = mRNA_P_Brn_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_P_Brn_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_P_Brn_degradation_0=reaction_mRNA_P_Brn_degradation_0_P_mRNA_deg*x(375);

% Reaction: id = mRNA_P_Brn_translation_0, name = mRNA_P_Brn_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_P_Brn_translation_0_P_k_translation=2.0;

	reaction_mRNA_P_Brn_translation_0=reaction_mRNA_P_Brn_translation_0_P_k_translation*x(375);

% Reaction: id = mRNA_P_CAPK_degradation_0, name = mRNA_P_CAPK_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_P_CAPK_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_P_CAPK_degradation_0=reaction_mRNA_P_CAPK_degradation_0_P_mRNA_deg*x(376);

% Reaction: id = mRNA_P_CAPK_translation_0, name = mRNA_P_CAPK_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_P_CAPK_translation_0_P_k_translation=2.0;

	reaction_mRNA_P_CAPK_translation_0=reaction_mRNA_P_CAPK_translation_0_P_k_translation*x(376);

% Reaction: id = mRNA_P_CyP_degradation_0, name = mRNA_P_CyP_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_P_CyP_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_P_CyP_degradation_0=reaction_mRNA_P_CyP_degradation_0_P_mRNA_deg*x(377);

% Reaction: id = mRNA_P_CyP_translation_0, name = mRNA_P_CyP_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_P_CyP_translation_0_P_k_translation=2.0;

	reaction_mRNA_P_CyP_translation_0=reaction_mRNA_P_CyP_translation_0_P_k_translation*x(377);

% Reaction: id = mRNA_P_Delta_degradation_0, name = mRNA_P_Delta_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_P_Delta_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_P_Delta_degradation_0=reaction_mRNA_P_Delta_degradation_0_P_mRNA_deg*x(378);

% Reaction: id = mRNA_P_Delta_translation_0, name = mRNA_P_Delta_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_P_Delta_translation_0_P_k_translation=2.0;

	reaction_mRNA_P_Delta_translation_0=reaction_mRNA_P_Delta_translation_0_P_k_translation*x(378);

% Reaction: id = mRNA_P_Dpt_degradation_0, name = mRNA_P_Dpt_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_P_Dpt_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_P_Dpt_degradation_0=reaction_mRNA_P_Dpt_degradation_0_P_mRNA_deg*x(379);

% Reaction: id = mRNA_P_Dpt_translation_0, name = mRNA_P_Dpt_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_P_Dpt_translation_0_P_k_translation=2.0;

	reaction_mRNA_P_Dpt_translation_0=reaction_mRNA_P_Dpt_translation_0_P_k_translation*x(379);

% Reaction: id = mRNA_P_Dri_degradation_0, name = mRNA_P_Dri_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_P_Dri_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_P_Dri_degradation_0=reaction_mRNA_P_Dri_degradation_0_P_mRNA_deg*x(380);

% Reaction: id = mRNA_P_Dri_translation_0, name = mRNA_P_Dri_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_P_Dri_translation_0_P_k_translation=2.0;

	reaction_mRNA_P_Dri_translation_0=reaction_mRNA_P_Dri_translation_0_P_k_translation*x(380);

% Reaction: id = mRNA_P_Endo16_degradation_0, name = mRNA_P_Endo16_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_P_Endo16_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_P_Endo16_degradation_0=reaction_mRNA_P_Endo16_degradation_0_P_mRNA_deg*x(381);

% Reaction: id = mRNA_P_Endo16_translation_0, name = mRNA_P_Endo16_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_P_Endo16_translation_0_P_k_translation=2.0;

	reaction_mRNA_P_Endo16_translation_0=reaction_mRNA_P_Endo16_translation_0_P_k_translation*x(381);

% Reaction: id = mRNA_P_Erg_degradation_0, name = mRNA_P_Erg_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_P_Erg_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_P_Erg_degradation_0=reaction_mRNA_P_Erg_degradation_0_P_mRNA_deg*x(382);

% Reaction: id = mRNA_P_Erg_translation_0, name = mRNA_P_Erg_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_P_Erg_translation_0_P_k_translation=2.0;

	reaction_mRNA_P_Erg_translation_0=reaction_mRNA_P_Erg_translation_0_P_k_translation*x(382);

% Reaction: id = mRNA_P_Ets1_degradation_0, name = mRNA_P_Ets1_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_P_Ets1_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_P_Ets1_degradation_0=reaction_mRNA_P_Ets1_degradation_0_P_mRNA_deg*x(383);

% Reaction: id = mRNA_P_Ets1_translation_0, name = mRNA_P_Ets1_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_P_Ets1_translation_0_P_k_translation=2.0;

	reaction_mRNA_P_Ets1_translation_0=reaction_mRNA_P_Ets1_translation_0_P_k_translation*x(383);

% Reaction: id = mRNA_P_Eve_degradation_0, name = mRNA_P_Eve_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_P_Eve_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_P_Eve_degradation_0=reaction_mRNA_P_Eve_degradation_0_P_mRNA_deg*x(384);

% Reaction: id = mRNA_P_Eve_translation_0, name = mRNA_P_Eve_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_P_Eve_translation_0_P_k_translation=2.0;

	reaction_mRNA_P_Eve_translation_0=reaction_mRNA_P_Eve_translation_0_P_k_translation*x(384);

% Reaction: id = mRNA_P_Ficolin_degradation_0, name = mRNA_P_Ficolin_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_P_Ficolin_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_P_Ficolin_degradation_0=reaction_mRNA_P_Ficolin_degradation_0_P_mRNA_deg*x(385);

% Reaction: id = mRNA_P_Ficolin_translation_0, name = mRNA_P_Ficolin_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_P_Ficolin_translation_0_P_k_translation=2.0;

	reaction_mRNA_P_Ficolin_translation_0=reaction_mRNA_P_Ficolin_translation_0_P_k_translation*x(385);

% Reaction: id = mRNA_P_FoxA_degradation_0, name = mRNA_P_FoxA_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_P_FoxA_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_P_FoxA_degradation_0=reaction_mRNA_P_FoxA_degradation_0_P_mRNA_deg*x(386);

% Reaction: id = mRNA_P_FoxA_translation_0, name = mRNA_P_FoxA_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_P_FoxA_translation_0_P_k_translation=2.0;

	reaction_mRNA_P_FoxA_translation_0=reaction_mRNA_P_FoxA_translation_0_P_k_translation*x(386);

% Reaction: id = mRNA_P_FoxB_degradation_0, name = mRNA_P_FoxB_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_P_FoxB_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_P_FoxB_degradation_0=reaction_mRNA_P_FoxB_degradation_0_P_mRNA_deg*x(387);

% Reaction: id = mRNA_P_FoxB_translation_0, name = mRNA_P_FoxB_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_P_FoxB_translation_0_P_k_translation=2.0;

	reaction_mRNA_P_FoxB_translation_0=reaction_mRNA_P_FoxB_translation_0_P_k_translation*x(387);

% Reaction: id = mRNA_P_FoxN23_degradation_0, name = mRNA_P_FoxN23_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_P_FoxN23_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_P_FoxN23_degradation_0=reaction_mRNA_P_FoxN23_degradation_0_P_mRNA_deg*x(388);

% Reaction: id = mRNA_P_FoxN23_translation_0, name = mRNA_P_FoxN23_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_P_FoxN23_translation_0_P_k_translation=2.0;

	reaction_mRNA_P_FoxN23_translation_0=reaction_mRNA_P_FoxN23_translation_0_P_k_translation*x(388);

% Reaction: id = mRNA_P_FoxO_degradation_0, name = mRNA_P_FoxO_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_P_FoxO_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_P_FoxO_degradation_0=reaction_mRNA_P_FoxO_degradation_0_P_mRNA_deg*x(389);

% Reaction: id = mRNA_P_FoxO_translation_0, name = mRNA_P_FoxO_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_P_FoxO_translation_0_P_k_translation=2.0;

	reaction_mRNA_P_FoxO_translation_0=reaction_mRNA_P_FoxO_translation_0_P_k_translation*x(389);

% Reaction: id = mRNA_P_FvMo_degradation_0, name = mRNA_P_FvMo_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_P_FvMo_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_P_FvMo_degradation_0=reaction_mRNA_P_FvMo_degradation_0_P_mRNA_deg*x(390);

% Reaction: id = mRNA_P_FvMo_translation_0, name = mRNA_P_FvMo_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_P_FvMo_translation_0_P_k_translation=2.0;

	reaction_mRNA_P_FvMo_translation_0=reaction_mRNA_P_FvMo_translation_0_P_k_translation*x(390);

% Reaction: id = mRNA_P_GataC_degradation_0, name = mRNA_P_GataC_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_P_GataC_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_P_GataC_degradation_0=reaction_mRNA_P_GataC_degradation_0_P_mRNA_deg*x(391);

% Reaction: id = mRNA_P_GataC_translation_0, name = mRNA_P_GataC_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_P_GataC_translation_0_P_k_translation=2.0;

	reaction_mRNA_P_GataC_translation_0=reaction_mRNA_P_GataC_translation_0_P_k_translation*x(391);

% Reaction: id = mRNA_P_GataE_degradation_0, name = mRNA_P_GataE_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_P_GataE_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_P_GataE_degradation_0=reaction_mRNA_P_GataE_degradation_0_P_mRNA_deg*x(392);

% Reaction: id = mRNA_P_GataE_translation_0, name = mRNA_P_GataE_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_P_GataE_translation_0_P_k_translation=2.0;

	reaction_mRNA_P_GataE_translation_0=reaction_mRNA_P_GataE_translation_0_P_k_translation*x(392);

% Reaction: id = mRNA_P_Gcad_degradation_0, name = mRNA_P_Gcad_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_P_Gcad_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_P_Gcad_degradation_0=reaction_mRNA_P_Gcad_degradation_0_P_mRNA_deg*x(393);

% Reaction: id = mRNA_P_Gcad_translation_0, name = mRNA_P_Gcad_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_P_Gcad_translation_0_P_k_translation=2.0;

	reaction_mRNA_P_Gcad_translation_0=reaction_mRNA_P_Gcad_translation_0_P_k_translation*x(393);

% Reaction: id = mRNA_P_Gcm_degradation_0, name = mRNA_P_Gcm_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_P_Gcm_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_P_Gcm_degradation_0=reaction_mRNA_P_Gcm_degradation_0_P_mRNA_deg*x(394);

% Reaction: id = mRNA_P_Gcm_translation_0, name = mRNA_P_Gcm_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_P_Gcm_translation_0_P_k_translation=2.0;

	reaction_mRNA_P_Gcm_translation_0=reaction_mRNA_P_Gcm_translation_0_P_k_translation*x(394);

% Reaction: id = mRNA_P_Gelsolin_degradation_0, name = mRNA_P_Gelsolin_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_P_Gelsolin_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_P_Gelsolin_degradation_0=reaction_mRNA_P_Gelsolin_degradation_0_P_mRNA_deg*x(395);

% Reaction: id = mRNA_P_Gelsolin_translation_0, name = mRNA_P_Gelsolin_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_P_Gelsolin_translation_0_P_k_translation=2.0;

	reaction_mRNA_P_Gelsolin_translation_0=reaction_mRNA_P_Gelsolin_translation_0_P_k_translation*x(395);

% Reaction: id = mRNA_P_HesC_degradation_0, name = mRNA_P_HesC_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_P_HesC_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_P_HesC_degradation_0=reaction_mRNA_P_HesC_degradation_0_P_mRNA_deg*x(396);

% Reaction: id = mRNA_P_HesC_translation_0, name = mRNA_P_HesC_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_P_HesC_translation_0_P_k_translation=2.0;

	reaction_mRNA_P_HesC_translation_0=reaction_mRNA_P_HesC_translation_0_P_k_translation*x(396);

% Reaction: id = mRNA_P_Hex_degradation_0, name = mRNA_P_Hex_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_P_Hex_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_P_Hex_degradation_0=reaction_mRNA_P_Hex_degradation_0_P_mRNA_deg*x(397);

% Reaction: id = mRNA_P_Hex_translation_0, name = mRNA_P_Hex_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_P_Hex_translation_0_P_k_translation=2.0;

	reaction_mRNA_P_Hex_translation_0=reaction_mRNA_P_Hex_translation_0_P_k_translation*x(397);

% Reaction: id = mRNA_P_Hnf6_degradation_0, name = mRNA_P_Hnf6_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_P_Hnf6_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_P_Hnf6_degradation_0=reaction_mRNA_P_Hnf6_degradation_0_P_mRNA_deg*x(398);

% Reaction: id = mRNA_P_Hnf6_translation_0, name = mRNA_P_Hnf6_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_P_Hnf6_translation_0_P_k_translation=2.0;

	reaction_mRNA_P_Hnf6_translation_0=reaction_mRNA_P_Hnf6_translation_0_P_k_translation*x(398);

% Reaction: id = mRNA_P_Hox_degradation_0, name = mRNA_P_Hox_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_P_Hox_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_P_Hox_degradation_0=reaction_mRNA_P_Hox_degradation_0_P_mRNA_deg*x(399);

% Reaction: id = mRNA_P_Hox_translation_0, name = mRNA_P_Hox_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_P_Hox_translation_0_P_k_translation=2.0;

	reaction_mRNA_P_Hox_translation_0=reaction_mRNA_P_Hox_translation_0_P_k_translation*x(399);

% Reaction: id = mRNA_P_Kakapo_degradation_0, name = mRNA_P_Kakapo_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_P_Kakapo_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_P_Kakapo_degradation_0=reaction_mRNA_P_Kakapo_degradation_0_P_mRNA_deg*x(400);

% Reaction: id = mRNA_P_Kakapo_translation_0, name = mRNA_P_Kakapo_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_P_Kakapo_translation_0_P_k_translation=2.0;

	reaction_mRNA_P_Kakapo_translation_0=reaction_mRNA_P_Kakapo_translation_0_P_k_translation*x(400);

% Reaction: id = mRNA_P_L1_degradation_0, name = mRNA_P_L1_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_P_L1_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_P_L1_degradation_0=reaction_mRNA_P_L1_degradation_0_P_mRNA_deg*x(401);

% Reaction: id = mRNA_P_L1_translation_0, name = mRNA_P_L1_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_P_L1_translation_0_P_k_translation=2.0;

	reaction_mRNA_P_L1_translation_0=reaction_mRNA_P_L1_translation_0_P_k_translation*x(401);

% Reaction: id = mRNA_P_Lim_degradation_0, name = mRNA_P_Lim_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_P_Lim_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_P_Lim_degradation_0=reaction_mRNA_P_Lim_degradation_0_P_mRNA_deg*x(402);

% Reaction: id = mRNA_P_Lim_translation_0, name = mRNA_P_Lim_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_P_Lim_translation_0_P_k_translation=2.0;

	reaction_mRNA_P_Lim_translation_0=reaction_mRNA_P_Lim_translation_0_P_k_translation*x(402);

% Reaction: id = mRNA_P_Msp130_degradation_0, name = mRNA_P_Msp130_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_P_Msp130_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_P_Msp130_degradation_0=reaction_mRNA_P_Msp130_degradation_0_P_mRNA_deg*x(403);

% Reaction: id = mRNA_P_Msp130_translation_0, name = mRNA_P_Msp130_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_P_Msp130_translation_0_P_k_translation=2.0;

	reaction_mRNA_P_Msp130_translation_0=reaction_mRNA_P_Msp130_translation_0_P_k_translation*x(403);

% Reaction: id = mRNA_P_MspL_degradation_0, name = mRNA_P_MspL_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_P_MspL_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_P_MspL_degradation_0=reaction_mRNA_P_MspL_degradation_0_P_mRNA_deg*x(404);

% Reaction: id = mRNA_P_MspL_translation_0, name = mRNA_P_MspL_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_P_MspL_translation_0_P_k_translation=2.0;

	reaction_mRNA_P_MspL_translation_0=reaction_mRNA_P_MspL_translation_0_P_k_translation*x(404);

% Reaction: id = mRNA_P_Not_degradation_0, name = mRNA_P_Not_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_P_Not_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_P_Not_degradation_0=reaction_mRNA_P_Not_degradation_0_P_mRNA_deg*x(405);

% Reaction: id = mRNA_P_Not_translation_0, name = mRNA_P_Not_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_P_Not_translation_0_P_k_translation=2.0;

	reaction_mRNA_P_Not_translation_0=reaction_mRNA_P_Not_translation_0_P_k_translation*x(405);

% Reaction: id = mRNA_P_Nrl_degradation_0, name = mRNA_P_Nrl_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_P_Nrl_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_P_Nrl_degradation_0=reaction_mRNA_P_Nrl_degradation_0_P_mRNA_deg*x(406);

% Reaction: id = mRNA_P_Nrl_translation_0, name = mRNA_P_Nrl_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_P_Nrl_translation_0_P_k_translation=2.0;

	reaction_mRNA_P_Nrl_translation_0=reaction_mRNA_P_Nrl_translation_0_P_k_translation*x(406);

% Reaction: id = mRNA_P_OrCt_degradation_0, name = mRNA_P_OrCt_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_P_OrCt_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_P_OrCt_degradation_0=reaction_mRNA_P_OrCt_degradation_0_P_mRNA_deg*x(407);

% Reaction: id = mRNA_P_OrCt_translation_0, name = mRNA_P_OrCt_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_P_OrCt_translation_0_P_k_translation=2.0;

	reaction_mRNA_P_OrCt_translation_0=reaction_mRNA_P_OrCt_translation_0_P_k_translation*x(407);

% Reaction: id = mRNA_P_Otx_degradation_0, name = mRNA_P_Otx_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_P_Otx_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_P_Otx_degradation_0=reaction_mRNA_P_Otx_degradation_0_P_mRNA_deg*x(408);

% Reaction: id = mRNA_P_Otx_translation_0, name = mRNA_P_Otx_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_P_Otx_translation_0_P_k_translation=2.0;

	reaction_mRNA_P_Otx_translation_0=reaction_mRNA_P_Otx_translation_0_P_k_translation*x(408);

% Reaction: id = mRNA_P_Pks_degradation_0, name = mRNA_P_Pks_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_P_Pks_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_P_Pks_degradation_0=reaction_mRNA_P_Pks_degradation_0_P_mRNA_deg*x(409);

% Reaction: id = mRNA_P_Pks_translation_0, name = mRNA_P_Pks_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_P_Pks_translation_0_P_k_translation=2.0;

	reaction_mRNA_P_Pks_translation_0=reaction_mRNA_P_Pks_translation_0_P_k_translation*x(409);

% Reaction: id = mRNA_P_Pmar1_degradation_0, name = mRNA_P_Pmar1_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_P_Pmar1_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_P_Pmar1_degradation_0=reaction_mRNA_P_Pmar1_degradation_0_P_mRNA_deg*x(410);

% Reaction: id = mRNA_P_Pmar1_translation_0, name = mRNA_P_Pmar1_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_P_Pmar1_translation_0_P_k_translation=2.0;

	reaction_mRNA_P_Pmar1_translation_0=reaction_mRNA_P_Pmar1_translation_0_P_k_translation*x(410);

% Reaction: id = mRNA_P_Sm27_degradation_0, name = mRNA_P_Sm27_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_P_Sm27_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_P_Sm27_degradation_0=reaction_mRNA_P_Sm27_degradation_0_P_mRNA_deg*x(411);

% Reaction: id = mRNA_P_Sm27_translation_0, name = mRNA_P_Sm27_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_P_Sm27_translation_0_P_k_translation=2.0;

	reaction_mRNA_P_Sm27_translation_0=reaction_mRNA_P_Sm27_translation_0_P_k_translation*x(411);

% Reaction: id = mRNA_P_Sm30_degradation_0, name = mRNA_P_Sm30_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_P_Sm30_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_P_Sm30_degradation_0=reaction_mRNA_P_Sm30_degradation_0_P_mRNA_deg*x(412);

% Reaction: id = mRNA_P_Sm30_translation_0, name = mRNA_P_Sm30_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_P_Sm30_translation_0_P_k_translation=2.0;

	reaction_mRNA_P_Sm30_translation_0=reaction_mRNA_P_Sm30_translation_0_P_k_translation*x(412);

% Reaction: id = mRNA_P_Sm50_degradation_0, name = mRNA_P_Sm50_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_P_Sm50_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_P_Sm50_degradation_0=reaction_mRNA_P_Sm50_degradation_0_P_mRNA_deg*x(413);

% Reaction: id = mRNA_P_Sm50_translation_0, name = mRNA_P_Sm50_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_P_Sm50_translation_0_P_k_translation=2.0;

	reaction_mRNA_P_Sm50_translation_0=reaction_mRNA_P_Sm50_translation_0_P_k_translation*x(413);

% Reaction: id = mRNA_P_Snail_degradation_0, name = mRNA_P_Snail_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_P_Snail_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_P_Snail_degradation_0=reaction_mRNA_P_Snail_degradation_0_P_mRNA_deg*x(414);

% Reaction: id = mRNA_P_Snail_translation_0, name = mRNA_P_Snail_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_P_Snail_translation_0_P_k_translation=2.0;

	reaction_mRNA_P_Snail_translation_0=reaction_mRNA_P_Snail_translation_0_P_k_translation*x(414);

% Reaction: id = mRNA_P_SoxB1_degradation_0, name = mRNA_P_SoxB1_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_P_SoxB1_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_P_SoxB1_degradation_0=reaction_mRNA_P_SoxB1_degradation_0_P_mRNA_deg*x(415);

% Reaction: id = mRNA_P_SoxB1_translation_0, name = mRNA_P_SoxB1_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_P_SoxB1_translation_0_P_k_translation=2.0;

	reaction_mRNA_P_SoxB1_translation_0=reaction_mRNA_P_SoxB1_translation_0_P_k_translation*x(415);

% Reaction: id = mRNA_P_SoxC_degradation_0, name = mRNA_P_SoxC_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_P_SoxC_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_P_SoxC_degradation_0=reaction_mRNA_P_SoxC_degradation_0_P_mRNA_deg*x(416);

% Reaction: id = mRNA_P_SoxC_translation_0, name = mRNA_P_SoxC_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_P_SoxC_translation_0_P_k_translation=2.0;

	reaction_mRNA_P_SoxC_translation_0=reaction_mRNA_P_SoxC_translation_0_P_k_translation*x(416);

% Reaction: id = mRNA_P_SuTx_degradation_0, name = mRNA_P_SuTx_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_P_SuTx_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_P_SuTx_degradation_0=reaction_mRNA_P_SuTx_degradation_0_P_mRNA_deg*x(417);

% Reaction: id = mRNA_P_SuTx_translation_0, name = mRNA_P_SuTx_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_P_SuTx_translation_0_P_k_translation=2.0;

	reaction_mRNA_P_SuTx_translation_0=reaction_mRNA_P_SuTx_translation_0_P_k_translation*x(417);

% Reaction: id = mRNA_P_TBr_degradation_0, name = mRNA_P_TBr_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_P_TBr_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_P_TBr_degradation_0=reaction_mRNA_P_TBr_degradation_0_P_mRNA_deg*x(418);

% Reaction: id = mRNA_P_TBr_translation_0, name = mRNA_P_TBr_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_P_TBr_translation_0_P_k_translation=2.0;

	reaction_mRNA_P_TBr_translation_0=reaction_mRNA_P_TBr_translation_0_P_k_translation*x(418);

% Reaction: id = mRNA_P_Tel_degradation_0, name = mRNA_P_Tel_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_P_Tel_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_P_Tel_degradation_0=reaction_mRNA_P_Tel_degradation_0_P_mRNA_deg*x(419);

% Reaction: id = mRNA_P_Tel_translation_0, name = mRNA_P_Tel_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_P_Tel_translation_0_P_k_translation=2.0;

	reaction_mRNA_P_Tel_translation_0=reaction_mRNA_P_Tel_translation_0_P_k_translation*x(419);

% Reaction: id = mRNA_P_Tgif_degradation_0, name = mRNA_P_Tgif_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_P_Tgif_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_P_Tgif_degradation_0=reaction_mRNA_P_Tgif_degradation_0_P_mRNA_deg*x(420);

% Reaction: id = mRNA_P_Tgif_translation_0, name = mRNA_P_Tgif_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_P_Tgif_translation_0_P_k_translation=2.0;

	reaction_mRNA_P_Tgif_translation_0=reaction_mRNA_P_Tgif_translation_0_P_k_translation*x(420);

% Reaction: id = mRNA_P_UbiqAlx1_degradation_0, name = mRNA_P_UbiqAlx1_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_P_UbiqAlx1_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_P_UbiqAlx1_degradation_0=reaction_mRNA_P_UbiqAlx1_degradation_0_P_mRNA_deg*x(421);

% Reaction: id = mRNA_P_UbiqAlx1_translation_0, name = mRNA_P_UbiqAlx1_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_P_UbiqAlx1_translation_0_P_k_translation=2.0;

	reaction_mRNA_P_UbiqAlx1_translation_0=reaction_mRNA_P_UbiqAlx1_translation_0_P_k_translation*x(421);

% Reaction: id = mRNA_P_UbiqES_degradation_0, name = mRNA_P_UbiqES_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_P_UbiqES_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_P_UbiqES_degradation_0=reaction_mRNA_P_UbiqES_degradation_0_P_mRNA_deg*x(422);

% Reaction: id = mRNA_P_UbiqES_translation_0, name = mRNA_P_UbiqES_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_P_UbiqES_translation_0_P_k_translation=2.0;

	reaction_mRNA_P_UbiqES_translation_0=reaction_mRNA_P_UbiqES_translation_0_P_k_translation*x(422);

% Reaction: id = mRNA_P_UbiqEts1_degradation_0, name = mRNA_P_UbiqEts1_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_P_UbiqEts1_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_P_UbiqEts1_degradation_0=reaction_mRNA_P_UbiqEts1_degradation_0_P_mRNA_deg*x(423);

% Reaction: id = mRNA_P_UbiqEts1_translation_0, name = mRNA_P_UbiqEts1_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_P_UbiqEts1_translation_0_P_k_translation=2.0;

	reaction_mRNA_P_UbiqEts1_translation_0=reaction_mRNA_P_UbiqEts1_translation_0_P_k_translation*x(423);

% Reaction: id = mRNA_P_UbiqHesC_degradation_0, name = mRNA_P_UbiqHesC_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_P_UbiqHesC_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_P_UbiqHesC_degradation_0=reaction_mRNA_P_UbiqHesC_degradation_0_P_mRNA_deg*x(424);

% Reaction: id = mRNA_P_UbiqHesC_translation_0, name = mRNA_P_UbiqHesC_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_P_UbiqHesC_translation_0_P_k_translation=2.0;

	reaction_mRNA_P_UbiqHesC_translation_0=reaction_mRNA_P_UbiqHesC_translation_0_P_k_translation*x(424);

% Reaction: id = mRNA_P_UbiqHnf6_degradation_0, name = mRNA_P_UbiqHnf6_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_P_UbiqHnf6_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_P_UbiqHnf6_degradation_0=reaction_mRNA_P_UbiqHnf6_degradation_0_P_mRNA_deg*x(425);

% Reaction: id = mRNA_P_UbiqHnf6_translation_0, name = mRNA_P_UbiqHnf6_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_P_UbiqHnf6_translation_0_P_k_translation=2.0;

	reaction_mRNA_P_UbiqHnf6_translation_0=reaction_mRNA_P_UbiqHnf6_translation_0_P_k_translation*x(425);

% Reaction: id = mRNA_P_UbiqSoxC_degradation_0, name = mRNA_P_UbiqSoxC_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_P_UbiqSoxC_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_P_UbiqSoxC_degradation_0=reaction_mRNA_P_UbiqSoxC_degradation_0_P_mRNA_deg*x(426);

% Reaction: id = mRNA_P_UbiqSoxC_translation_0, name = mRNA_P_UbiqSoxC_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_P_UbiqSoxC_translation_0_P_k_translation=2.0;

	reaction_mRNA_P_UbiqSoxC_translation_0=reaction_mRNA_P_UbiqSoxC_translation_0_P_k_translation*x(426);

% Reaction: id = mRNA_P_UbiqTel_degradation_0, name = mRNA_P_UbiqTel_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_P_UbiqTel_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_P_UbiqTel_degradation_0=reaction_mRNA_P_UbiqTel_degradation_0_P_mRNA_deg*x(427);

% Reaction: id = mRNA_P_UbiqTel_translation_0, name = mRNA_P_UbiqTel_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_P_UbiqTel_translation_0_P_k_translation=2.0;

	reaction_mRNA_P_UbiqTel_translation_0=reaction_mRNA_P_UbiqTel_translation_0_P_k_translation*x(427);

% Reaction: id = mRNA_P_VEGFR_degradation_0, name = mRNA_P_VEGFR_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_P_VEGFR_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_P_VEGFR_degradation_0=reaction_mRNA_P_VEGFR_degradation_0_P_mRNA_deg*x(428);

% Reaction: id = mRNA_P_VEGFR_translation_0, name = mRNA_P_VEGFR_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_P_VEGFR_translation_0_P_k_translation=2.0;

	reaction_mRNA_P_VEGFR_translation_0=reaction_mRNA_P_VEGFR_translation_0_P_k_translation*x(428);

% Reaction: id = mRNA_P_Wnt8_degradation_0, name = mRNA_P_Wnt8_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_P_Wnt8_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_P_Wnt8_degradation_0=reaction_mRNA_P_Wnt8_degradation_0_P_mRNA_deg*x(429);

% Reaction: id = mRNA_P_Wnt8_translation_0, name = mRNA_P_Wnt8_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_P_Wnt8_translation_0_P_k_translation=2.0;

	reaction_mRNA_P_Wnt8_translation_0=reaction_mRNA_P_Wnt8_translation_0_P_k_translation*x(429);

% Reaction: id = mRNA_P_cB_degradation_0, name = mRNA_P_cB_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_P_cB_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_P_cB_degradation_0=reaction_mRNA_P_cB_degradation_0_P_mRNA_deg*x(430);

% Reaction: id = mRNA_P_cB_translation_0, name = mRNA_P_cB_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_P_cB_translation_0_P_k_translation=2.0;

	reaction_mRNA_P_cB_translation_0=reaction_mRNA_P_cB_translation_0_P_k_translation*x(430);

% Reaction: id = mRNA_P_z13_degradation_0, name = mRNA_P_z13_degradation	% Local Parameter:   id =  P_mRNA_deg, name = P_mRNA_deg
	reaction_mRNA_P_z13_degradation_0_P_mRNA_deg=0.119;

	reaction_mRNA_P_z13_degradation_0=reaction_mRNA_P_z13_degradation_0_P_mRNA_deg*x(431);

% Reaction: id = mRNA_P_z13_translation_0, name = mRNA_P_z13_translation	% Local Parameter:   id =  P_k_translation, name = P_k_translation
	reaction_mRNA_P_z13_translation_0_P_k_translation=2.0;

	reaction_mRNA_P_z13_translation_0=reaction_mRNA_P_z13_translation_0_P_k_translation*x(431);

% Species:   id = GENE_E_Alx1, name = GENE_E_Alx1, constant	const_species_GENE_E_Alx1=0.0;

% Species:   id = GENE_E_Apobec, name = GENE_E_Apobec, constant	const_species_GENE_E_Apobec=0.0;

% Species:   id = GENE_E_Blimp1, name = GENE_E_Blimp1, constant	const_species_GENE_E_Blimp1=0.0;

% Species:   id = GENE_E_Bra, name = GENE_E_Bra, constant	const_species_GENE_E_Bra=0.0;

% Species:   id = GENE_E_Brn, name = GENE_E_Brn, constant	const_species_GENE_E_Brn=0.0;

% Species:   id = GENE_E_CAPK, name = GENE_E_CAPK, constant	const_species_GENE_E_CAPK=0.0;

% Species:   id = GENE_E_CyP, name = GENE_E_CyP, constant	const_species_GENE_E_CyP=0.0;

% Species:   id = GENE_E_Delta, name = GENE_E_Delta, constant	const_species_GENE_E_Delta=0.0;

% Species:   id = GENE_E_Dpt, name = GENE_E_Dpt, constant	const_species_GENE_E_Dpt=0.0;

% Species:   id = GENE_E_Dri, name = GENE_E_Dri, constant	const_species_GENE_E_Dri=0.0;

% Species:   id = GENE_E_ES, name = GENE_E_ES, constant	const_species_GENE_E_ES=0.0;

% Species:   id = GENE_E_Endo16, name = GENE_E_Endo16, constant	const_species_GENE_E_Endo16=0.0;

% Species:   id = GENE_E_Erg, name = GENE_E_Erg, constant	const_species_GENE_E_Erg=0.0;

% Species:   id = GENE_E_Ets1, name = GENE_E_Ets1, constant	const_species_GENE_E_Ets1=0.0;

% Species:   id = GENE_E_Eve, name = GENE_E_Eve, constant	const_species_GENE_E_Eve=0.0;

% Species:   id = GENE_E_Ficolin, name = GENE_E_Ficolin, constant	const_species_GENE_E_Ficolin=0.0;

% Species:   id = GENE_E_FoxA, name = GENE_E_FoxA, constant	const_species_GENE_E_FoxA=0.0;

% Species:   id = GENE_E_FoxB, name = GENE_E_FoxB, constant	const_species_GENE_E_FoxB=0.0;

% Species:   id = GENE_E_FoxN23, name = GENE_E_FoxN23, constant	const_species_GENE_E_FoxN23=0.0;

% Species:   id = GENE_E_FoxO, name = GENE_E_FoxO, constant	const_species_GENE_E_FoxO=0.0;

% Species:   id = GENE_E_FvMo, name = GENE_E_FvMo, constant	const_species_GENE_E_FvMo=0.0;

% Species:   id = GENE_E_GataC, name = GENE_E_GataC, constant	const_species_GENE_E_GataC=0.0;

% Species:   id = GENE_E_GataE, name = GENE_E_GataE, constant	const_species_GENE_E_GataE=0.0;

% Species:   id = GENE_E_Gcad, name = GENE_E_Gcad, constant	const_species_GENE_E_Gcad=0.0;

% Species:   id = GENE_E_Gcm, name = GENE_E_Gcm, constant	const_species_GENE_E_Gcm=0.0;

% Species:   id = GENE_E_Gelsolin, name = GENE_E_Gelsolin, constant	const_species_GENE_E_Gelsolin=0.0;

% Species:   id = GENE_E_HesC, name = GENE_E_HesC, constant	const_species_GENE_E_HesC=0.0;

% Species:   id = GENE_E_Hex, name = GENE_E_Hex, constant	const_species_GENE_E_Hex=0.0;

% Species:   id = GENE_E_Hnf6, name = GENE_E_Hnf6, constant	const_species_GENE_E_Hnf6=0.0;

% Species:   id = GENE_E_Hox, name = GENE_E_Hox, constant	const_species_GENE_E_Hox=0.0;

% Species:   id = GENE_E_Kakapo, name = GENE_E_Kakapo, constant	const_species_GENE_E_Kakapo=0.0;

% Species:   id = GENE_E_Lim, name = GENE_E_Lim, constant	const_species_GENE_E_Lim=0.0;

% Species:   id = GENE_E_Msp130, name = GENE_E_Msp130, constant	const_species_GENE_E_Msp130=0.0;

% Species:   id = GENE_E_MspL, name = GENE_E_MspL, constant	const_species_GENE_E_MspL=0.0;

% Species:   id = GENE_E_Not, name = GENE_E_Not, constant	const_species_GENE_E_Not=0.0;

% Species:   id = GENE_E_Nrl, name = GENE_E_Nrl, constant	const_species_GENE_E_Nrl=0.0;

% Species:   id = GENE_E_OrCt, name = GENE_E_OrCt, constant	const_species_GENE_E_OrCt=0.0;

% Species:   id = GENE_E_Otx, name = GENE_E_Otx, constant	const_species_GENE_E_Otx=0.0;

% Species:   id = GENE_E_Pks, name = GENE_E_Pks, constant	const_species_GENE_E_Pks=0.0;

% Species:   id = GENE_E_Pmar1, name = GENE_E_Pmar1, constant	const_species_GENE_E_Pmar1=0.0;

% Species:   id = GENE_E_Sm27, name = GENE_E_Sm27, constant	const_species_GENE_E_Sm27=0.0;

% Species:   id = GENE_E_Sm30, name = GENE_E_Sm30, constant	const_species_GENE_E_Sm30=0.0;

% Species:   id = GENE_E_Sm50, name = GENE_E_Sm50, constant	const_species_GENE_E_Sm50=0.0;

% Species:   id = GENE_E_Snail, name = GENE_E_Snail, constant	const_species_GENE_E_Snail=0.0;

% Species:   id = GENE_E_SoxB1, name = GENE_E_SoxB1, constant	const_species_GENE_E_SoxB1=0.0;

% Species:   id = GENE_E_SoxC, name = GENE_E_SoxC, constant	const_species_GENE_E_SoxC=0.0;

% Species:   id = GENE_E_SuTx, name = GENE_E_SuTx, constant	const_species_GENE_E_SuTx=0.0;

% Species:   id = GENE_E_TBr, name = GENE_E_TBr, constant	const_species_GENE_E_TBr=0.0;

% Species:   id = GENE_E_Tel, name = GENE_E_Tel, constant	const_species_GENE_E_Tel=0.0;

% Species:   id = GENE_E_Tgif, name = GENE_E_Tgif, constant	const_species_GENE_E_Tgif=0.0;

% Species:   id = GENE_E_VEGFR, name = GENE_E_VEGFR, constant	const_species_GENE_E_VEGFR=0.0;

% Species:   id = GENE_E_Wnt8, name = GENE_E_Wnt8, constant	const_species_GENE_E_Wnt8=0.0;

% Species:   id = GENE_E_z13, name = GENE_E_z13, constant	const_species_GENE_E_z13=0.0;

% Species:   id = GENE_M_Alx1, name = GENE_M_Alx1, constant	const_species_GENE_M_Alx1=0.0;

% Species:   id = GENE_M_Apobec, name = GENE_M_Apobec, constant	const_species_GENE_M_Apobec=0.0;

% Species:   id = GENE_M_Blimp1, name = GENE_M_Blimp1, constant	const_species_GENE_M_Blimp1=0.0;

% Species:   id = GENE_M_Bra, name = GENE_M_Bra, constant	const_species_GENE_M_Bra=0.0;

% Species:   id = GENE_M_Brn, name = GENE_M_Brn, constant	const_species_GENE_M_Brn=0.0;

% Species:   id = GENE_M_CAPK, name = GENE_M_CAPK, constant	const_species_GENE_M_CAPK=0.0;

% Species:   id = GENE_M_CyP, name = GENE_M_CyP, constant	const_species_GENE_M_CyP=0.0;

% Species:   id = GENE_M_Delta, name = GENE_M_Delta, constant	const_species_GENE_M_Delta=0.0;

% Species:   id = GENE_M_Dpt, name = GENE_M_Dpt, constant	const_species_GENE_M_Dpt=0.0;

% Species:   id = GENE_M_Dri, name = GENE_M_Dri, constant	const_species_GENE_M_Dri=0.0;

% Species:   id = GENE_M_Endo16, name = GENE_M_Endo16, constant	const_species_GENE_M_Endo16=0.0;

% Species:   id = GENE_M_Erg, name = GENE_M_Erg, constant	const_species_GENE_M_Erg=0.0;

% Species:   id = GENE_M_Ets1, name = GENE_M_Ets1, constant	const_species_GENE_M_Ets1=0.0;

% Species:   id = GENE_M_Eve, name = GENE_M_Eve, constant	const_species_GENE_M_Eve=0.0;

% Species:   id = GENE_M_Ficolin, name = GENE_M_Ficolin, constant	const_species_GENE_M_Ficolin=0.0;

% Species:   id = GENE_M_FoxA, name = GENE_M_FoxA, constant	const_species_GENE_M_FoxA=0.0;

% Species:   id = GENE_M_FoxB, name = GENE_M_FoxB, constant	const_species_GENE_M_FoxB=0.0;

% Species:   id = GENE_M_FoxN23, name = GENE_M_FoxN23, constant	const_species_GENE_M_FoxN23=0.0;

% Species:   id = GENE_M_FoxO, name = GENE_M_FoxO, constant	const_species_GENE_M_FoxO=0.0;

% Species:   id = GENE_M_FvMo, name = GENE_M_FvMo, constant	const_species_GENE_M_FvMo=0.0;

% Species:   id = GENE_M_GataC, name = GENE_M_GataC, constant	const_species_GENE_M_GataC=0.0;

% Species:   id = GENE_M_GataE, name = GENE_M_GataE, constant	const_species_GENE_M_GataE=0.0;

% Species:   id = GENE_M_Gcad, name = GENE_M_Gcad, constant	const_species_GENE_M_Gcad=0.0;

% Species:   id = GENE_M_Gcm, name = GENE_M_Gcm, constant	const_species_GENE_M_Gcm=0.0;

% Species:   id = GENE_M_Gelsolin, name = GENE_M_Gelsolin, constant	const_species_GENE_M_Gelsolin=0.0;

% Species:   id = GENE_M_HesC, name = GENE_M_HesC, constant	const_species_GENE_M_HesC=0.0;

% Species:   id = GENE_M_Hex, name = GENE_M_Hex, constant	const_species_GENE_M_Hex=0.0;

% Species:   id = GENE_M_Hnf6, name = GENE_M_Hnf6, constant	const_species_GENE_M_Hnf6=0.0;

% Species:   id = GENE_M_Hox, name = GENE_M_Hox, constant	const_species_GENE_M_Hox=0.0;

% Species:   id = GENE_M_Kakapo, name = GENE_M_Kakapo, constant	const_species_GENE_M_Kakapo=0.0;

% Species:   id = GENE_M_Lim, name = GENE_M_Lim, constant	const_species_GENE_M_Lim=0.0;

% Species:   id = GENE_M_Msp130, name = GENE_M_Msp130, constant	const_species_GENE_M_Msp130=0.0;

% Species:   id = GENE_M_MspL, name = GENE_M_MspL, constant	const_species_GENE_M_MspL=0.0;

% Species:   id = GENE_M_Not, name = GENE_M_Not, constant	const_species_GENE_M_Not=0.0;

% Species:   id = GENE_M_Nrl, name = GENE_M_Nrl, constant	const_species_GENE_M_Nrl=0.0;

% Species:   id = GENE_M_OrCt, name = GENE_M_OrCt, constant	const_species_GENE_M_OrCt=0.0;

% Species:   id = GENE_M_Otx, name = GENE_M_Otx, constant	const_species_GENE_M_Otx=0.0;

% Species:   id = GENE_M_Pks, name = GENE_M_Pks, constant	const_species_GENE_M_Pks=0.0;

% Species:   id = GENE_M_Pmar1, name = GENE_M_Pmar1, constant	const_species_GENE_M_Pmar1=0.0;

% Species:   id = GENE_M_Sm27, name = GENE_M_Sm27, constant	const_species_GENE_M_Sm27=0.0;

% Species:   id = GENE_M_Sm30, name = GENE_M_Sm30, constant	const_species_GENE_M_Sm30=0.0;

% Species:   id = GENE_M_Sm50, name = GENE_M_Sm50, constant	const_species_GENE_M_Sm50=0.0;

% Species:   id = GENE_M_Snail, name = GENE_M_Snail, constant	const_species_GENE_M_Snail=0.0;

% Species:   id = GENE_M_SoxB1, name = GENE_M_SoxB1, constant	const_species_GENE_M_SoxB1=0.0;

% Species:   id = GENE_M_SoxC, name = GENE_M_SoxC, constant	const_species_GENE_M_SoxC=0.0;

% Species:   id = GENE_M_SuTx, name = GENE_M_SuTx, constant	const_species_GENE_M_SuTx=0.0;

% Species:   id = GENE_M_TBr, name = GENE_M_TBr, constant	const_species_GENE_M_TBr=0.0;

% Species:   id = GENE_M_Tel, name = GENE_M_Tel, constant	const_species_GENE_M_Tel=0.0;

% Species:   id = GENE_M_Tgif, name = GENE_M_Tgif, constant	const_species_GENE_M_Tgif=0.0;

% Species:   id = GENE_M_VEGFR, name = GENE_M_VEGFR, constant	const_species_GENE_M_VEGFR=0.0;

% Species:   id = GENE_M_Wnt8, name = GENE_M_Wnt8, constant	const_species_GENE_M_Wnt8=0.0;

% Species:   id = GENE_M_z13, name = GENE_M_z13, constant	const_species_GENE_M_z13=0.0;

% Species:   id = GENE_P_Alx1, name = GENE_P_Alx1, constant	const_species_GENE_P_Alx1=0.0;

% Species:   id = GENE_P_Apobec, name = GENE_P_Apobec, constant	const_species_GENE_P_Apobec=0.0;

% Species:   id = GENE_P_Blimp1, name = GENE_P_Blimp1, constant	const_species_GENE_P_Blimp1=0.0;

% Species:   id = GENE_P_Bra, name = GENE_P_Bra, constant	const_species_GENE_P_Bra=0.0;

% Species:   id = GENE_P_Brn, name = GENE_P_Brn, constant	const_species_GENE_P_Brn=0.0;

% Species:   id = GENE_P_CAPK, name = GENE_P_CAPK, constant	const_species_GENE_P_CAPK=0.0;

% Species:   id = GENE_P_CyP, name = GENE_P_CyP, constant	const_species_GENE_P_CyP=0.0;

% Species:   id = GENE_P_Delta, name = GENE_P_Delta, constant	const_species_GENE_P_Delta=0.0;

% Species:   id = GENE_P_Dpt, name = GENE_P_Dpt, constant	const_species_GENE_P_Dpt=0.0;

% Species:   id = GENE_P_Dri, name = GENE_P_Dri, constant	const_species_GENE_P_Dri=0.0;

% Species:   id = GENE_P_Endo16, name = GENE_P_Endo16, constant	const_species_GENE_P_Endo16=0.0;

% Species:   id = GENE_P_Erg, name = GENE_P_Erg, constant	const_species_GENE_P_Erg=0.0;

% Species:   id = GENE_P_Ets1, name = GENE_P_Ets1, constant	const_species_GENE_P_Ets1=0.0;

% Species:   id = GENE_P_Eve, name = GENE_P_Eve, constant	const_species_GENE_P_Eve=0.0;

% Species:   id = GENE_P_Ficolin, name = GENE_P_Ficolin, constant	const_species_GENE_P_Ficolin=0.0;

% Species:   id = GENE_P_FoxA, name = GENE_P_FoxA, constant	const_species_GENE_P_FoxA=0.0;

% Species:   id = GENE_P_FoxB, name = GENE_P_FoxB, constant	const_species_GENE_P_FoxB=0.0;

% Species:   id = GENE_P_FoxN23, name = GENE_P_FoxN23, constant	const_species_GENE_P_FoxN23=0.0;

% Species:   id = GENE_P_FoxO, name = GENE_P_FoxO, constant	const_species_GENE_P_FoxO=0.0;

% Species:   id = GENE_P_FvMo, name = GENE_P_FvMo, constant	const_species_GENE_P_FvMo=0.0;

% Species:   id = GENE_P_GataC, name = GENE_P_GataC, constant	const_species_GENE_P_GataC=0.0;

% Species:   id = GENE_P_GataE, name = GENE_P_GataE, constant	const_species_GENE_P_GataE=0.0;

% Species:   id = GENE_P_Gcad, name = GENE_P_Gcad, constant	const_species_GENE_P_Gcad=0.0;

% Species:   id = GENE_P_Gcm, name = GENE_P_Gcm, constant	const_species_GENE_P_Gcm=0.0;

% Species:   id = GENE_P_Gelsolin, name = GENE_P_Gelsolin, constant	const_species_GENE_P_Gelsolin=0.0;

% Species:   id = GENE_P_HesC, name = GENE_P_HesC, constant	const_species_GENE_P_HesC=0.0;

% Species:   id = GENE_P_Hex, name = GENE_P_Hex, constant	const_species_GENE_P_Hex=0.0;

% Species:   id = GENE_P_Hnf6, name = GENE_P_Hnf6, constant	const_species_GENE_P_Hnf6=0.0;

% Species:   id = GENE_P_Hox, name = GENE_P_Hox, constant	const_species_GENE_P_Hox=0.0;

% Species:   id = GENE_P_Kakapo, name = GENE_P_Kakapo, constant	const_species_GENE_P_Kakapo=0.0;

% Species:   id = GENE_P_Lim, name = GENE_P_Lim, constant	const_species_GENE_P_Lim=0.0;

% Species:   id = GENE_P_Msp130, name = GENE_P_Msp130, constant	const_species_GENE_P_Msp130=0.0;

% Species:   id = GENE_P_MspL, name = GENE_P_MspL, constant	const_species_GENE_P_MspL=0.0;

% Species:   id = GENE_P_Not, name = GENE_P_Not, constant	const_species_GENE_P_Not=0.0;

% Species:   id = GENE_P_Nrl, name = GENE_P_Nrl, constant	const_species_GENE_P_Nrl=0.0;

% Species:   id = GENE_P_OrCt, name = GENE_P_OrCt, constant	const_species_GENE_P_OrCt=0.0;

% Species:   id = GENE_P_Otx, name = GENE_P_Otx, constant	const_species_GENE_P_Otx=0.0;

% Species:   id = GENE_P_Pks, name = GENE_P_Pks, constant	const_species_GENE_P_Pks=0.0;

% Species:   id = GENE_P_Pmar1, name = GENE_P_Pmar1, constant	const_species_GENE_P_Pmar1=0.0;

% Species:   id = GENE_P_Sm27, name = GENE_P_Sm27, constant	const_species_GENE_P_Sm27=0.0;

% Species:   id = GENE_P_Sm30, name = GENE_P_Sm30, constant	const_species_GENE_P_Sm30=0.0;

% Species:   id = GENE_P_Sm50, name = GENE_P_Sm50, constant	const_species_GENE_P_Sm50=0.0;

% Species:   id = GENE_P_Snail, name = GENE_P_Snail, constant	const_species_GENE_P_Snail=0.0;

% Species:   id = GENE_P_SoxB1, name = GENE_P_SoxB1, constant	const_species_GENE_P_SoxB1=0.0;

% Species:   id = GENE_P_SoxC, name = GENE_P_SoxC, constant	const_species_GENE_P_SoxC=0.0;

% Species:   id = GENE_P_SuTx, name = GENE_P_SuTx, constant	const_species_GENE_P_SuTx=0.0;

% Species:   id = GENE_P_TBr, name = GENE_P_TBr, constant	const_species_GENE_P_TBr=0.0;

% Species:   id = GENE_P_Tel, name = GENE_P_Tel, constant	const_species_GENE_P_Tel=0.0;

% Species:   id = GENE_P_Tgif, name = GENE_P_Tgif, constant	const_species_GENE_P_Tgif=0.0;

% Species:   id = GENE_P_VEGFR, name = GENE_P_VEGFR, constant	const_species_GENE_P_VEGFR=0.0;

% Species:   id = GENE_P_Wnt8, name = GENE_P_Wnt8, constant	const_species_GENE_P_Wnt8=0.0;

% Species:   id = GENE_P_z13, name = GENE_P_z13, constant	const_species_GENE_P_z13=0.0;

% Species:   id = PRE_E_Gcad, name = PRE_E_Gcad, constant	const_species_PRE_E_Gcad=0.0;

% Species:   id = PRE_E_Notch, name = PRE_E_Notch, constant	const_species_PRE_E_Notch=0.0;

% Species:   id = PRE_E_Otx, name = PRE_E_Otx, constant	const_species_PRE_E_Otx=0.0;

% Species:   id = PRE_E_SoxB1, name = PRE_E_SoxB1, constant	const_species_PRE_E_SoxB1=0.0;

% Species:   id = PRE_E_SuH, name = PRE_E_SuH, constant	const_species_PRE_E_SuH=0.0;

% Species:   id = PRE_E_UMR, name = PRE_E_UMR, constant	const_species_PRE_E_UMR=0.0;

% Species:   id = PRE_E_UVAOtx, name = PRE_E_UVAOtx, constant	const_species_PRE_E_UVAOtx=0.0;

% Species:   id = PRE_E_UbiqSoxB1, name = PRE_E_UbiqSoxB1, constant	const_species_PRE_E_UbiqSoxB1=0.0;

% Species:   id = PRE_E_VEGF, name = PRE_E_VEGF, constant	const_species_PRE_E_VEGF=0.0;

% Species:   id = PRE_E_cB, name = PRE_E_cB, constant	const_species_PRE_E_cB=0.0;

% Species:   id = PRE_M_Gcad, name = PRE_M_Gcad, constant	const_species_PRE_M_Gcad=0.0;

% Species:   id = PRE_M_Notch, name = PRE_M_Notch, constant	const_species_PRE_M_Notch=0.0;

% Species:   id = PRE_M_Otx, name = PRE_M_Otx, constant	const_species_PRE_M_Otx=0.0;

% Species:   id = PRE_M_SoxB1, name = PRE_M_SoxB1, constant	const_species_PRE_M_SoxB1=0.0;

% Species:   id = PRE_M_SuH, name = PRE_M_SuH, constant	const_species_PRE_M_SuH=0.0;

% Species:   id = PRE_M_UMADelta, name = PRE_M_UMADelta, constant	const_species_PRE_M_UMADelta=0.0;

% Species:   id = PRE_M_UMANrl, name = PRE_M_UMANrl, constant	const_species_PRE_M_UMANrl=0.0;

% Species:   id = PRE_M_UMR, name = PRE_M_UMR, constant	const_species_PRE_M_UMR=0.0;

% Species:   id = PRE_M_UbiqSoxB1, name = PRE_M_UbiqSoxB1, constant	const_species_PRE_M_UbiqSoxB1=0.0;

% Species:   id = PRE_M_cB, name = PRE_M_cB, constant	const_species_PRE_M_cB=0.0;

% Species:   id = PRE_P_Ets1, name = PRE_P_Ets1, constant	const_species_PRE_P_Ets1=0.0;

% Species:   id = PRE_P_Gcad, name = PRE_P_Gcad, constant	const_species_PRE_P_Gcad=0.0;

% Species:   id = PRE_P_L1, name = PRE_P_L1, constant	const_species_PRE_P_L1=0.0;

% Species:   id = PRE_P_Otx, name = PRE_P_Otx, constant	const_species_PRE_P_Otx=0.0;

% Species:   id = PRE_P_UbiqAlx1, name = PRE_P_UbiqAlx1, constant	const_species_PRE_P_UbiqAlx1=0.0;

% Species:   id = PRE_P_UbiqES, name = PRE_P_UbiqES, constant	const_species_PRE_P_UbiqES=0.0;

% Species:   id = PRE_P_UbiqEts1, name = PRE_P_UbiqEts1, constant	const_species_PRE_P_UbiqEts1=0.0;

% Species:   id = PRE_P_UbiqHesC, name = PRE_P_UbiqHesC, constant	const_species_PRE_P_UbiqHesC=0.0;

% Species:   id = PRE_P_UbiqHnf6, name = PRE_P_UbiqHnf6, constant	const_species_PRE_P_UbiqHnf6=0.0;

% Species:   id = PRE_P_UbiqSoxC, name = PRE_P_UbiqSoxC, constant	const_species_PRE_P_UbiqSoxC=0.0;

% Species:   id = PRE_P_UbiqTel, name = PRE_P_UbiqTel, constant	const_species_PRE_P_UbiqTel=0.0;

% Species:   id = PRE_P_cB, name = PRE_P_cB, constant	const_species_PRE_P_cB=0.0;

% Species:   id = ribosome, name = ribosome, constant	const_species_ribosome=1.0;

% Species:   id = none, name = none, constant	const_species_none=0.0;

%Event: id=e24
	event_e24=time >= 24;

	if(event_e24) 
		global_par_E_VEGF_S2=0;
		global_par_E_VEGF_S1=1;
		global_par_E_SuH_S2=0;
		global_par_E_SuH_S1=1;
		global_par_M_UMANrl_S2=0;
		global_par_M_UMANrl_S1=1;
	end

%Event: id=e21
	event_e21=time >= 21;

	if(event_e21) 
		global_par_E_Notch_S1=1;
		global_par_E_Notch_S2=0;
		global_par_P_L1_S1=1;
		global_par_P_L1_S2=0;
	end

%Event: id=e19
	event_e19=time >= 19;

	if(event_e19) 
		global_par_M_UMADelta_S1=1;
		global_par_M_UMADelta_S2=0;
	end

%Event: id=e18
	event_e18=time >= 18;

	if(event_e18) 
		global_par_E_UVAOtx_S1=1;
		global_par_E_UVAOtx_S2=0;
	end

%Event: id=e15
	event_e15=time >= 15;

	if(event_e15) 
		global_par_E_UMR_S1=1;
		global_par_E_UMR_S2=0;
		global_par_M_UMR_S1=1;
		global_par_M_UMR_S2=0;
		global_par_P_Otx_S1=1;
		global_par_P_Otx_S2=0;
	end

%Event: id=e12
	event_e12=time >= 12;

	if(event_e12) 
		global_par_M_SuH_S1=1;
		global_par_M_SuH_S2=0;
	end

%Event: id=e30
	event_e30=time >= 30;

	if(event_e30) 
		global_par_E_VEGF_S2=1;
		global_par_E_VEGF_S1=0;
		global_par_E_SuH_S2=1;
		global_par_E_SuH_S1=0;
		global_par_M_UMANrl_S2=1;
		global_par_M_UMANrl_S1=0;
		global_par_E_Notch_S2=1;
		global_par_E_Notch_S1=0;
		global_par_P_L1_S2=1;
		global_par_P_L1_S1=0;
		global_par_M_UMADelta_S2=1;
		global_par_M_UMADelta_S1=0;
		global_par_E_UVAOtx_S2=1;
		global_par_E_UVAOtx_S1=0;
		global_par_M_Notch_S1=0;
		global_par_M_Notch_S2=1;
		global_par_P_UbiqAlx1_S1=0;
		global_par_P_UbiqAlx1_S2=1;
		global_par_P_UbiqEts1_S1=0;
		global_par_P_UbiqEts1_S2=1;
		global_par_M_SuH_S2=1;
		global_par_M_SuH_S1=0;
		global_par_E_UMR_S2=1;
		global_par_E_UMR_S1=0;
		global_par_M_UMR_S2=1;
		global_par_M_UMR_S1=0;
	end

%Event: id=e23
	event_e23=time >= 23;

	if(event_e23) 
		global_par_P_UbiqHnf6_S1=0;
		global_par_P_UbiqHnf6_S2=1;
	end

%Event: id=e29
	event_e29=time >= 29;

	if(event_e29) 
		global_par_P_UbiqTel_S2=1;
		global_par_P_UbiqTel_S1=0;
	end

%Event: id=e20
	event_e20=time >= 20;

	if(event_e20) 
		global_par_M_Gcad_S1=0;
		global_par_M_Gcad_S2=1;
		global_par_P_Gcad_S1=0;
		global_par_P_Gcad_S2=1;
		global_par_P_UbiqES_S1=0;
		global_par_P_UbiqES_S2=1;
	end

%Event: id=e17
	event_e17=time >= 17;

	if(event_e17) 
		global_par_P_UbiqSoxC_S2=1;
		global_par_P_UbiqSoxC_S1=0;
		global_par_E_UbiqSoxC_S2=1;
		global_par_E_UbiqSoxC_S1=0;
	end

%Event: id=e14
	event_e14=time >= 14;

	if(event_e14) 
		global_par_E_SoxB1_S1=0;
		global_par_E_SoxB1_S2=1;
		global_par_M_SoxB1_S1=0;
		global_par_M_SoxB1_S2=1;
		global_par_P_cB_S1=0;
		global_par_P_cB_S2=1;
		global_par_M_UbiqSoxB1_S1=0;
		global_par_M_UbiqSoxB1_S2=1;
	end

%Event: id=e8
	event_e8=time >= 8;

	if(event_e8) 
		global_par_P_UbiqHesC_S2=1;
		global_par_P_UbiqHesC_S1=0;
	end

%Event: id=e11
	event_e11=time >= 11;

	if(event_e11) 
		global_par_P_Ets1_S1=0;
		global_par_P_Ets1_S2=1;
		global_par_E_cB_S1=0;
		global_par_E_cB_S2=1;
		global_par_M_cB_S1=0;
		global_par_M_cB_S2=1;
		global_par_E_Gcad_S1=0;
		global_par_E_Gcad_S2=1;
		global_par_E_Otx_S1=0;
		global_par_E_Otx_S2=1;
		global_par_M_Otx_S1=0;
		global_par_M_Otx_S2=1;
	end

	xdot=zeros(431,1);
	
% Species:   id = PROTEIN_E_Alx1, name = PROTEIN_E_Alx1, affected by kineticLaw
	xdot(1) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_E_Alx1_degradation_0) + ( 1.0 * reaction_mRNA_E_Alx1_translation_0));
	
% Species:   id = PROTEIN_E_Apobec, name = PROTEIN_E_Apobec, affected by kineticLaw
	xdot(2) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_E_Apobec_degradation_0) + ( 1.0 * reaction_mRNA_E_Apobec_translation_0));
	
% Species:   id = PROTEIN_E_Blimp1, name = PROTEIN_E_Blimp1, affected by kineticLaw
	xdot(3) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_E_Blimp1_degradation_0) + ( 1.0 * reaction_mRNA_E_Blimp1_translation_0));
	
% Species:   id = PROTEIN_E_Bra, name = PROTEIN_E_Bra, affected by kineticLaw
	xdot(4) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_E_Bra_degradation_0) + ( 1.0 * reaction_mRNA_E_Bra_translation_0));
	
% Species:   id = PROTEIN_E_Brn, name = PROTEIN_E_Brn, affected by kineticLaw
	xdot(5) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_E_Brn_degradation_0) + ( 1.0 * reaction_mRNA_E_Brn_translation_0));
	
% Species:   id = PROTEIN_E_CAPK, name = PROTEIN_E_CAPK, affected by kineticLaw
	xdot(6) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_E_CAPK_degradation_0) + ( 1.0 * reaction_mRNA_E_CAPK_translation_0));
	
% Species:   id = PROTEIN_E_CyP, name = PROTEIN_E_CyP, affected by kineticLaw
	xdot(7) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_E_CyP_degradation_0) + ( 1.0 * reaction_mRNA_E_CyP_translation_0));
	
% Species:   id = PROTEIN_E_Delta, name = PROTEIN_E_Delta, affected by kineticLaw
	xdot(8) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_PROTEIN_E_Delta_activation_0) + (-1.0 * reaction_PROTEIN_E_Delta_degradation_0) + (-1.0 * reaction_PROTEIN_E_Delta_inactivation_0) + ( 1.0 * reaction_mRNA_E_Delta_translation_0));
	
% Species:   id = PROTEIN_E_Delta2, name = PROTEIN_E_Delta2, affected by kineticLaw
	xdot(9) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_E_Delta_activation_0) + ( 1.0 * reaction_PROTEIN_E_Delta_inactivation_0));
	
% Species:   id = PROTEIN_E_Dpt, name = PROTEIN_E_Dpt, affected by kineticLaw
	xdot(10) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_E_Dpt_degradation_0) + ( 1.0 * reaction_mRNA_E_Dpt_translation_0));
	
% Species:   id = PROTEIN_E_Dri, name = PROTEIN_E_Dri, affected by kineticLaw
	xdot(11) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_E_Dri_degradation_0) + ( 1.0 * reaction_mRNA_E_Dri_translation_0));
	
% Species:   id = PROTEIN_E_ES, name = PROTEIN_E_ES, affected by kineticLaw
	xdot(12) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_E_ES_degradation_0) + ( 1.0 * reaction_mRNA_E_ES_translation_0));
	
% Species:   id = PROTEIN_E_Endo16, name = PROTEIN_E_Endo16, affected by kineticLaw
	xdot(13) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_E_Endo16_degradation_0) + ( 1.0 * reaction_mRNA_E_Endo16_translation_0));
	
% Species:   id = PROTEIN_E_Erg, name = PROTEIN_E_Erg, affected by kineticLaw
	xdot(14) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_E_Erg_degradation_0) + ( 1.0 * reaction_mRNA_E_Erg_translation_0));
	
% Species:   id = PROTEIN_E_Ets1, name = PROTEIN_E_Ets1, affected by kineticLaw
	xdot(15) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_E_Ets1_degradation_0) + ( 1.0 * reaction_mRNA_E_Ets1_translation_0));
	
% Species:   id = PROTEIN_E_Eve, name = PROTEIN_E_Eve, affected by kineticLaw
	xdot(16) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_E_Eve_degradation_0) + ( 1.0 * reaction_mRNA_E_Eve_translation_0));
	
% Species:   id = PROTEIN_E_Ficolin, name = PROTEIN_E_Ficolin, affected by kineticLaw
	xdot(17) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_E_Ficolin_degradation_0) + ( 1.0 * reaction_mRNA_E_Ficolin_translation_0));
	
% Species:   id = PROTEIN_E_FoxA, name = PROTEIN_E_FoxA, affected by kineticLaw
	xdot(18) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_E_FoxA_degradation_0) + ( 1.0 * reaction_mRNA_E_FoxA_translation_0));
	
% Species:   id = PROTEIN_E_FoxB, name = PROTEIN_E_FoxB, affected by kineticLaw
	xdot(19) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_E_FoxB_degradation_0) + ( 1.0 * reaction_mRNA_E_FoxB_translation_0));
	
% Species:   id = PROTEIN_E_FoxN23, name = PROTEIN_E_FoxN23, affected by kineticLaw
	xdot(20) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_E_FoxN23_degradation_0) + ( 1.0 * reaction_mRNA_E_FoxN23_translation_0));
	
% Species:   id = PROTEIN_E_FoxO, name = PROTEIN_E_FoxO, affected by kineticLaw
	xdot(21) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_E_FoxO_degradation_0) + ( 1.0 * reaction_mRNA_E_FoxO_translation_0));
	
% Species:   id = PROTEIN_E_FvMo, name = PROTEIN_E_FvMo, affected by kineticLaw
	xdot(22) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_E_FvMo_degradation_0) + ( 1.0 * reaction_mRNA_E_FvMo_translation_0));
	
% Species:   id = PROTEIN_E_GSK3_a, name = PROTEIN_E_GSK3_a, affected by kineticLaw
	xdot(23) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_E_GSK3_i_activation_0) + ( 1.0 * reaction_PROTEIN_E_GSK3_i_inactivation_0));
	
% Species:   id = PROTEIN_E_GSK3_i, name = PROTEIN_E_GSK3_i, affected by kineticLaw
	xdot(24) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_PROTEIN_E_GSK3_i_activation_0) + (-1.0 * reaction_PROTEIN_E_GSK3_i_inactivation_0));
	
% Species:   id = PROTEIN_E_GataC, name = PROTEIN_E_GataC, affected by kineticLaw
	xdot(25) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_E_GataC_degradation_0) + ( 1.0 * reaction_mRNA_E_GataC_translation_0));
	
% Species:   id = PROTEIN_E_GataE, name = PROTEIN_E_GataE, affected by kineticLaw
	xdot(26) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_E_GataE_degradation_0) + ( 1.0 * reaction_mRNA_E_GataE_translation_0));
	
% Species:   id = PROTEIN_E_Gcad, name = PROTEIN_E_Gcad, affected by kineticLaw
	xdot(27) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_E_Gcad_degradation_0) + ( 1.0 * reaction_mRNA_E_Gcad_translation_0));
	
% Species:   id = PROTEIN_E_Gcm, name = PROTEIN_E_Gcm, affected by kineticLaw
	xdot(28) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_E_Gcm_degradation_0) + ( 1.0 * reaction_mRNA_E_Gcm_translation_0));
	
% Species:   id = PROTEIN_E_Gelsolin, name = PROTEIN_E_Gelsolin, affected by kineticLaw
	xdot(29) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_E_Gelsolin_degradation_0) + ( 1.0 * reaction_mRNA_E_Gelsolin_translation_0));
	
% Species:   id = PROTEIN_E_Gro, name = PROTEIN_E_Gro, affected by kineticLaw
	xdot(30) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_E_GroTCF_accociation_0) + ( 1.0 * reaction_PROTEIN_E_GroTCF_dissociation_0));
	
% Species:   id = PROTEIN_E_GroTCF, name = PROTEIN_E_GroTCF, affected by kineticLaw
	xdot(31) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_PROTEIN_E_GroTCF_accociation_0) + (-1.0 * reaction_PROTEIN_E_GroTCF_dissociation_0));
	
% Species:   id = PROTEIN_E_GroTFC, name = PROTEIN_E_GroTFC
% Warning species is not changed by either rules or reactions
	xdot(32) = ;
	
% Species:   id = PROTEIN_E_HesC, name = PROTEIN_E_HesC, affected by kineticLaw
	xdot(33) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_E_HesC_degradation_0) + ( 1.0 * reaction_mRNA_E_HesC_translation_0));
	
% Species:   id = PROTEIN_E_Hex, name = PROTEIN_E_Hex, affected by kineticLaw
	xdot(34) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_E_Hex_degradation_0) + ( 1.0 * reaction_mRNA_E_Hex_translation_0));
	
% Species:   id = PROTEIN_E_Hnf6, name = PROTEIN_E_Hnf6, affected by kineticLaw
	xdot(35) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_E_Hnf6_degradation_0) + ( 1.0 * reaction_mRNA_E_Hnf6_translation_0));
	
% Species:   id = PROTEIN_E_Hox, name = PROTEIN_E_Hox, affected by kineticLaw
	xdot(36) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_E_Hox_degradation_0) + ( 1.0 * reaction_mRNA_E_Hox_translation_0));
	
% Species:   id = PROTEIN_E_Kakapo, name = PROTEIN_E_Kakapo, affected by kineticLaw
	xdot(37) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_E_Kakapo_degradation_0) + ( 1.0 * reaction_mRNA_E_Kakapo_translation_0));
	
% Species:   id = PROTEIN_E_L1, name = PROTEIN_E_L1, affected by kineticLaw
	xdot(38) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_E_VEGFSignal_accociation_0) + ( 1.0 * reaction_PROTEIN_E_VEGFSignal_dissociation_0));
	
% Species:   id = PROTEIN_E_Lim, name = PROTEIN_E_Lim, affected by kineticLaw
	xdot(39) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_E_Lim_degradation_0) + ( 1.0 * reaction_mRNA_E_Lim_translation_0));
	
% Species:   id = PROTEIN_E_Msp130, name = PROTEIN_E_Msp130, affected by kineticLaw
	xdot(40) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_E_Msp130_degradation_0) + ( 1.0 * reaction_mRNA_E_Msp130_translation_0));
	
% Species:   id = PROTEIN_E_MspL, name = PROTEIN_E_MspL, affected by kineticLaw
	xdot(41) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_E_MspL_degradation_0) + ( 1.0 * reaction_mRNA_E_MspL_translation_0));
	
% Species:   id = PROTEIN_E_Not, name = PROTEIN_E_Not, affected by kineticLaw
	xdot(42) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_E_Not_degradation_0) + ( 1.0 * reaction_mRNA_E_Not_translation_0));
	
% Species:   id = PROTEIN_E_Notch, name = PROTEIN_E_Notch, affected by kineticLaw
	xdot(43) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_PROTEIN_E_Notch_activation_0) + (-1.0 * reaction_PROTEIN_E_Notch_degradation_0) + (-1.0 * reaction_PROTEIN_E_Notch_inactivation_0) + ( 1.0 * reaction_mRNA_E_Notch_translation_0));
	
% Species:   id = PROTEIN_E_Notch2, name = PROTEIN_E_Notch2, affected by kineticLaw
	xdot(44) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_E_Notch_activation_0) + ( 1.0 * reaction_PROTEIN_E_Notch_inactivation_0) + (-1.0 * reaction_PROTEIN_E_SuHN_accociation_0) + ( 1.0 * reaction_PROTEIN_E_SuHN_dissociation_0));
	
% Species:   id = PROTEIN_E_Nrl, name = PROTEIN_E_Nrl, affected by kineticLaw
	xdot(45) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_E_Nrl_degradation_0) + ( 1.0 * reaction_mRNA_E_Nrl_translation_0));
	
% Species:   id = PROTEIN_E_OrCt, name = PROTEIN_E_OrCt, affected by kineticLaw
	xdot(46) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_E_OrCt_degradation_0) + ( 1.0 * reaction_mRNA_E_OrCt_translation_0));
	
% Species:   id = PROTEIN_E_Otx, name = PROTEIN_E_Otx, affected by kineticLaw
	xdot(47) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_E_Otx_degradation_0) + ( 1.0 * reaction_mRNA_E_Otx_translation_0));
	
% Species:   id = PROTEIN_E_Pks, name = PROTEIN_E_Pks, affected by kineticLaw
	xdot(48) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_E_Pks_degradation_0) + ( 1.0 * reaction_mRNA_E_Pks_translation_0));
	
% Species:   id = PROTEIN_E_Pmar1, name = PROTEIN_E_Pmar1, affected by kineticLaw
	xdot(49) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_E_Pmar1_degradation_0) + ( 1.0 * reaction_mRNA_E_Pmar1_translation_0));
	
% Species:   id = PROTEIN_E_Sm27, name = PROTEIN_E_Sm27, affected by kineticLaw
	xdot(50) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_E_Sm27_degradation_0) + ( 1.0 * reaction_mRNA_E_Sm27_translation_0));
	
% Species:   id = PROTEIN_E_Sm30, name = PROTEIN_E_Sm30, affected by kineticLaw
	xdot(51) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_E_Sm30_degradation_0) + ( 1.0 * reaction_mRNA_E_Sm30_translation_0));
	
% Species:   id = PROTEIN_E_Sm50, name = PROTEIN_E_Sm50, affected by kineticLaw
	xdot(52) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_E_Sm50_degradation_0) + ( 1.0 * reaction_mRNA_E_Sm50_translation_0));
	
% Species:   id = PROTEIN_E_Snail, name = PROTEIN_E_Snail, affected by kineticLaw
	xdot(53) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_E_Snail_degradation_0) + ( 1.0 * reaction_mRNA_E_Snail_translation_0));
	
% Species:   id = PROTEIN_E_SoxB1, name = PROTEIN_E_SoxB1, affected by kineticLaw
	xdot(54) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_E_SoxB1_degradation_0) + ( 1.0 * reaction_mRNA_E_SoxB1_translation_0));
	
% Species:   id = PROTEIN_E_SoxC, name = PROTEIN_E_SoxC, affected by kineticLaw
	xdot(55) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_E_SoxC_degradation_0) + ( 1.0 * reaction_mRNA_E_SoxC_translation_0));
	
% Species:   id = PROTEIN_E_SuH, name = PROTEIN_E_SuH, affected by kineticLaw
	xdot(56) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_E_SuHN_accociation_0) + ( 1.0 * reaction_PROTEIN_E_SuHN_dissociation_0) + (-1.0 * reaction_PROTEIN_E_SuH_degradation_0) + ( 1.0 * reaction_mRNA_E_SuH_translation_0));
	
% Species:   id = PROTEIN_E_SuHN, name = PROTEIN_E_SuHN, affected by kineticLaw
	xdot(57) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_PROTEIN_E_SuHN_accociation_0) + (-1.0 * reaction_PROTEIN_E_SuHN_dissociation_0));
	
% Species:   id = PROTEIN_E_SuTx, name = PROTEIN_E_SuTx, affected by kineticLaw
	xdot(58) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_E_SuTx_degradation_0) + ( 1.0 * reaction_mRNA_E_SuTx_translation_0));
	
% Species:   id = PROTEIN_E_TBr, name = PROTEIN_E_TBr, affected by kineticLaw
	xdot(59) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_E_TBr_degradation_0) + ( 1.0 * reaction_mRNA_E_TBr_translation_0));
	
% Species:   id = PROTEIN_E_TCF, name = PROTEIN_E_TCF, affected by kineticLaw
	xdot(60) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_E_GroTCF_accociation_0) + ( 1.0 * reaction_PROTEIN_E_GroTCF_dissociation_0) + (-1.0 * reaction_PROTEIN_E_nBTCF_accociation_0) + ( 1.0 * reaction_PROTEIN_E_nBTCF_dissociation_0));
	
% Species:   id = PROTEIN_E_Tel, name = PROTEIN_E_Tel, affected by kineticLaw
	xdot(61) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_E_Tel_degradation_0) + ( 1.0 * reaction_mRNA_E_Tel_translation_0));
	
% Species:   id = PROTEIN_E_Tgif, name = PROTEIN_E_Tgif, affected by kineticLaw
	xdot(62) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_E_Tgif_degradation_0) + ( 1.0 * reaction_mRNA_E_Tgif_translation_0));
	
% Species:   id = PROTEIN_E_UMADelta, name = PROTEIN_E_UMADelta
% Warning species is not changed by either rules or reactions
	xdot(63) = ;
	
% Species:   id = PROTEIN_E_UMANrl, name = PROTEIN_E_UMANrl
% Warning species is not changed by either rules or reactions
	xdot(64) = ;
	
% Species:   id = PROTEIN_E_UMR, name = PROTEIN_E_UMR, affected by kineticLaw
	xdot(65) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_E_UMR_degradation_0) + ( 1.0 * reaction_mRNA_E_UMR_translation_0));
	
% Species:   id = PROTEIN_E_UVAOtx, name = PROTEIN_E_UVAOtx, affected by kineticLaw
	xdot(66) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_E_UVAOtx_degradation_0) + ( 1.0 * reaction_mRNA_E_UVAOtx_translation_0));
	
% Species:   id = PROTEIN_E_UbiqAlx1, name = PROTEIN_E_UbiqAlx1
% Warning species is not changed by either rules or reactions
	xdot(67) = ;
	
% Species:   id = PROTEIN_E_UbiqDelta, name = PROTEIN_E_UbiqDelta
% Warning species is not changed by either rules or reactions
	xdot(68) = ;
	
% Species:   id = PROTEIN_E_UbiqES, name = PROTEIN_E_UbiqES
% Warning species is not changed by either rules or reactions
	xdot(69) = ;
	
% Species:   id = PROTEIN_E_UbiqEts1, name = PROTEIN_E_UbiqEts1
% Warning species is not changed by either rules or reactions
	xdot(70) = ;
	
% Species:   id = PROTEIN_E_UbiqGcad, name = PROTEIN_E_UbiqGcad
% Warning species is not changed by either rules or reactions
	xdot(71) = ;
	
% Species:   id = PROTEIN_E_UbiqHesC, name = PROTEIN_E_UbiqHesC
% Warning species is not changed by either rules or reactions
	xdot(72) = ;
	
% Species:   id = PROTEIN_E_UbiqHnf6, name = PROTEIN_E_UbiqHnf6
% Warning species is not changed by either rules or reactions
	xdot(73) = ;
	
% Species:   id = PROTEIN_E_UbiqSoxB1, name = PROTEIN_E_UbiqSoxB1, affected by kineticLaw
	xdot(74) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_E_UbiqSoxB1_degradation_0) + ( 1.0 * reaction_mRNA_E_UbiqSoxB1_translation_0));
	
% Species:   id = PROTEIN_E_UbiqSoxC, name = PROTEIN_E_UbiqSoxC
% Warning species is not changed by either rules or reactions
	xdot(75) = ;
	
% Species:   id = PROTEIN_E_UbiqTel, name = PROTEIN_E_UbiqTel
% Warning species is not changed by either rules or reactions
	xdot(76) = ;
	
% Species:   id = PROTEIN_E_VEGF, name = PROTEIN_E_VEGF, affected by kineticLaw
	xdot(77) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_E_VEGFSignal_accociation_0) + ( 1.0 * reaction_PROTEIN_E_VEGFSignal_dissociation_0) + (-1.0 * reaction_PROTEIN_E_VEGF_degradation_0) + (-1.0 * reaction_PROTEIN_M_VEGFSignal_accociation_0) + ( 1.0 * reaction_PROTEIN_M_VEGFSignal_dissociation_0) + (-1.0 * reaction_PROTEIN_P_VEGFSignal_accociation_0) + ( 1.0 * reaction_PROTEIN_P_VEGFSignal_dissociation_0) + ( 1.0 * reaction_mRNA_E_VEGF_translation_0));
	
% Species:   id = PROTEIN_E_VEGFR, name = PROTEIN_E_VEGFR, affected by kineticLaw
	xdot(78) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_E_VEGFR_degradation_0) + (-1.0 * reaction_PROTEIN_E_VEGFSignal_accociation_0) + ( 1.0 * reaction_PROTEIN_E_VEGFSignal_dissociation_0) + ( 1.0 * reaction_mRNA_E_VEGFR_translation_0));
	
% Species:   id = PROTEIN_E_VEGFSignal, name = PROTEIN_E_VEGFSignal, affected by kineticLaw
	xdot(79) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_PROTEIN_E_VEGFSignal_accociation_0) + (-1.0 * reaction_PROTEIN_E_VEGFSignal_dissociation_0));
	
% Species:   id = PROTEIN_E_Wnt8, name = PROTEIN_E_Wnt8, affected by kineticLaw
	xdot(80) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_E_Wnt8_degradation_0) + ( 1.0 * reaction_mRNA_E_Wnt8_translation_0));
	
% Species:   id = PROTEIN_E_cB, name = PROTEIN_E_cB, affected by kineticLaw
	xdot(81) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_E_cB_a_degradation_0) + (-1.0 * reaction_PROTEIN_E_cB_degradation_0) + (-1.0 * reaction_PROTEIN_E_nBTCF_accociation_0) + ( 1.0 * reaction_PROTEIN_E_nBTCF_dissociation_0) + ( 1.0 * reaction_mRNA_E_cB_translation_0));
	
% Species:   id = PROTEIN_E_frizzled_a, name = PROTEIN_E_frizzled_a, affected by kineticLaw
	xdot(82) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_PROTEIN_E_frizzled_a_activation_0) + (-1.0 * reaction_PROTEIN_E_frizzled_a_inactivation_0));
	
% Species:   id = PROTEIN_E_frizzled_i, name = PROTEIN_E_frizzled_i, affected by kineticLaw
	xdot(83) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_E_frizzled_a_activation_0) + ( 1.0 * reaction_PROTEIN_E_frizzled_a_inactivation_0));
	
% Species:   id = PROTEIN_E_nBTCF, name = PROTEIN_E_nBTCF, affected by kineticLaw
	xdot(84) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_PROTEIN_E_nBTCF_accociation_0) + (-1.0 * reaction_PROTEIN_E_nBTCF_dissociation_0));
	
% Species:   id = PROTEIN_E_z13, name = PROTEIN_E_z13, affected by kineticLaw
	xdot(85) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_E_z13_degradation_0) + ( 1.0 * reaction_mRNA_E_z13_translation_0));
	
% Species:   id = PROTEIN_GCM, name = PROTEIN_GCM
% Warning species is not changed by either rules or reactions
	xdot(86) = ;
	
% Species:   id = PROTEIN_M_Alx1, name = PROTEIN_M_Alx1, affected by kineticLaw
	xdot(87) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_M_Alx1_degradation_0) + ( 1.0 * reaction_mRNA_M_Alx1_translation_0));
	
% Species:   id = PROTEIN_M_Apobec, name = PROTEIN_M_Apobec, affected by kineticLaw
	xdot(88) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_M_Apobec_degradation_0) + ( 1.0 * reaction_mRNA_M_Apobec_translation_0));
	
% Species:   id = PROTEIN_M_Blimp1, name = PROTEIN_M_Blimp1, affected by kineticLaw
	xdot(89) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_M_Blimp1_degradation_0) + ( 1.0 * reaction_mRNA_M_Blimp1_translation_0));
	
% Species:   id = PROTEIN_M_Bra, name = PROTEIN_M_Bra, affected by kineticLaw
	xdot(90) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_M_Bra_degradation_0) + ( 1.0 * reaction_mRNA_M_Bra_translation_0));
	
% Species:   id = PROTEIN_M_Brn, name = PROTEIN_M_Brn, affected by kineticLaw
	xdot(91) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_M_Brn_degradation_0) + ( 1.0 * reaction_mRNA_M_Brn_translation_0));
	
% Species:   id = PROTEIN_M_CAPK, name = PROTEIN_M_CAPK, affected by kineticLaw
	xdot(92) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_M_CAPK_degradation_0) + ( 1.0 * reaction_mRNA_M_CAPK_translation_0));
	
% Species:   id = PROTEIN_M_CyP, name = PROTEIN_M_CyP, affected by kineticLaw
	xdot(93) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_M_CyP_degradation_0) + ( 1.0 * reaction_mRNA_M_CyP_translation_0));
	
% Species:   id = PROTEIN_M_Delta, name = PROTEIN_M_Delta, affected by kineticLaw
	xdot(94) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_PROTEIN_M_Delta_activation_0) + (-1.0 * reaction_PROTEIN_M_Delta_degradation_0) + (-1.0 * reaction_PROTEIN_M_Delta_inactivation_0) + ( 1.0 * reaction_mRNA_M_Delta_translation_0));
	
% Species:   id = PROTEIN_M_Delta2, name = PROTEIN_M_Delta2, affected by kineticLaw
	xdot(95) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_M_Delta_activation_0) + ( 1.0 * reaction_PROTEIN_M_Delta_inactivation_0));
	
% Species:   id = PROTEIN_M_Dpt, name = PROTEIN_M_Dpt, affected by kineticLaw
	xdot(96) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_M_Dpt_degradation_0) + ( 1.0 * reaction_mRNA_M_Dpt_translation_0));
	
% Species:   id = PROTEIN_M_Dri, name = PROTEIN_M_Dri, affected by kineticLaw
	xdot(97) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_M_Dri_degradation_0) + ( 1.0 * reaction_mRNA_M_Dri_translation_0));
	
% Species:   id = PROTEIN_M_Endo16, name = PROTEIN_M_Endo16, affected by kineticLaw
	xdot(98) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_M_Endo16_degradation_0) + ( 1.0 * reaction_mRNA_M_Endo16_translation_0));
	
% Species:   id = PROTEIN_M_Erg, name = PROTEIN_M_Erg, affected by kineticLaw
	xdot(99) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_M_Erg_degradation_0) + ( 1.0 * reaction_mRNA_M_Erg_translation_0));
	
% Species:   id = PROTEIN_M_Ets1, name = PROTEIN_M_Ets1, affected by kineticLaw
	xdot(100) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_M_Ets1_degradation_0) + ( 1.0 * reaction_mRNA_M_Ets1_translation_0));
	
% Species:   id = PROTEIN_M_Eve, name = PROTEIN_M_Eve, affected by kineticLaw
	xdot(101) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_M_Eve_degradation_0) + ( 1.0 * reaction_mRNA_M_Eve_translation_0));
	
% Species:   id = PROTEIN_M_Ficolin, name = PROTEIN_M_Ficolin, affected by kineticLaw
	xdot(102) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_M_Ficolin_degradation_0) + ( 1.0 * reaction_mRNA_M_Ficolin_translation_0));
	
% Species:   id = PROTEIN_M_FoxA, name = PROTEIN_M_FoxA, affected by kineticLaw
	xdot(103) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_M_FoxA_degradation_0) + ( 1.0 * reaction_mRNA_M_FoxA_translation_0));
	
% Species:   id = PROTEIN_M_FoxB, name = PROTEIN_M_FoxB, affected by kineticLaw
	xdot(104) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_M_FoxB_degradation_0) + ( 1.0 * reaction_mRNA_M_FoxB_translation_0));
	
% Species:   id = PROTEIN_M_FoxN23, name = PROTEIN_M_FoxN23, affected by kineticLaw
	xdot(105) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_M_FoxN23_degradation_0) + ( 1.0 * reaction_mRNA_M_FoxN23_translation_0));
	
% Species:   id = PROTEIN_M_FoxO, name = PROTEIN_M_FoxO, affected by kineticLaw
	xdot(106) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_M_FoxO_degradation_0) + ( 1.0 * reaction_mRNA_M_FoxO_translation_0));
	
% Species:   id = PROTEIN_M_FvMo, name = PROTEIN_M_FvMo, affected by kineticLaw
	xdot(107) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_M_FvMo_degradation_0) + ( 1.0 * reaction_mRNA_M_FvMo_translation_0));
	
% Species:   id = PROTEIN_M_GSK3_a, name = PROTEIN_M_GSK3_a, affected by kineticLaw
	xdot(108) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_M_GSK3_i_activation_0) + ( 1.0 * reaction_PROTEIN_M_GSK3_i_inactivation_0));
	
% Species:   id = PROTEIN_M_GSK3_i, name = PROTEIN_M_GSK3_i, affected by kineticLaw
	xdot(109) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_PROTEIN_M_GSK3_i_activation_0) + (-1.0 * reaction_PROTEIN_M_GSK3_i_inactivation_0));
	
% Species:   id = PROTEIN_M_GataC, name = PROTEIN_M_GataC, affected by kineticLaw
	xdot(110) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_M_GataC_degradation_0) + ( 1.0 * reaction_mRNA_M_GataC_translation_0));
	
% Species:   id = PROTEIN_M_GataE, name = PROTEIN_M_GataE, affected by kineticLaw
	xdot(111) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_M_GataE_degradation_0) + ( 1.0 * reaction_mRNA_M_GataE_translation_0));
	
% Species:   id = PROTEIN_M_Gcad, name = PROTEIN_M_Gcad, affected by kineticLaw
	xdot(112) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_M_Gcad_degradation_0) + ( 1.0 * reaction_mRNA_M_Gcad_translation_0));
	
% Species:   id = PROTEIN_M_Gcm, name = PROTEIN_M_Gcm, affected by kineticLaw
	xdot(113) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_M_Gcm_degradation_0) + ( 1.0 * reaction_mRNA_M_Gcm_translation_0));
	
% Species:   id = PROTEIN_M_Gelsolin, name = PROTEIN_M_Gelsolin, affected by kineticLaw
	xdot(114) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_M_Gelsolin_degradation_0) + ( 1.0 * reaction_mRNA_M_Gelsolin_translation_0));
	
% Species:   id = PROTEIN_M_Gro, name = PROTEIN_M_Gro, affected by kineticLaw
	xdot(115) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_M_GroTCF_accociation_0) + ( 1.0 * reaction_PROTEIN_M_GroTCF_dissociation_0));
	
% Species:   id = PROTEIN_M_GroTCF, name = PROTEIN_M_GroTCF, affected by kineticLaw
	xdot(116) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_PROTEIN_M_GroTCF_accociation_0) + (-1.0 * reaction_PROTEIN_M_GroTCF_dissociation_0));
	
% Species:   id = PROTEIN_M_GroTFC, name = PROTEIN_M_GroTFC
% Warning species is not changed by either rules or reactions
	xdot(117) = ;
	
% Species:   id = PROTEIN_M_HesC, name = PROTEIN_M_HesC, affected by kineticLaw
	xdot(118) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_M_HesC_degradation_0) + ( 1.0 * reaction_mRNA_M_HesC_translation_0));
	
% Species:   id = PROTEIN_M_Hex, name = PROTEIN_M_Hex, affected by kineticLaw
	xdot(119) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_M_Hex_degradation_0) + ( 1.0 * reaction_mRNA_M_Hex_translation_0));
	
% Species:   id = PROTEIN_M_Hnf6, name = PROTEIN_M_Hnf6, affected by kineticLaw
	xdot(120) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_M_Hnf6_degradation_0) + ( 1.0 * reaction_mRNA_M_Hnf6_translation_0));
	
% Species:   id = PROTEIN_M_Hox, name = PROTEIN_M_Hox, affected by kineticLaw
	xdot(121) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_M_Hox_degradation_0) + ( 1.0 * reaction_mRNA_M_Hox_translation_0));
	
% Species:   id = PROTEIN_M_Kakapo, name = PROTEIN_M_Kakapo, affected by kineticLaw
	xdot(122) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_M_Kakapo_degradation_0) + ( 1.0 * reaction_mRNA_M_Kakapo_translation_0));
	
% Species:   id = PROTEIN_M_L1, name = PROTEIN_M_L1, affected by kineticLaw
	xdot(123) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_M_VEGFSignal_accociation_0) + ( 1.0 * reaction_PROTEIN_M_VEGFSignal_dissociation_0));
	
% Species:   id = PROTEIN_M_Lim, name = PROTEIN_M_Lim, affected by kineticLaw
	xdot(124) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_M_Lim_degradation_0) + ( 1.0 * reaction_mRNA_M_Lim_translation_0));
	
% Species:   id = PROTEIN_M_Msp130, name = PROTEIN_M_Msp130, affected by kineticLaw
	xdot(125) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_M_Msp130_degradation_0) + ( 1.0 * reaction_mRNA_M_Msp130_translation_0));
	
% Species:   id = PROTEIN_M_MspL, name = PROTEIN_M_MspL, affected by kineticLaw
	xdot(126) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_M_MspL_degradation_0) + ( 1.0 * reaction_mRNA_M_MspL_translation_0));
	
% Species:   id = PROTEIN_M_Not, name = PROTEIN_M_Not, affected by kineticLaw
	xdot(127) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_M_Not_degradation_0) + ( 1.0 * reaction_mRNA_M_Not_translation_0));
	
% Species:   id = PROTEIN_M_Notch, name = PROTEIN_M_Notch, affected by kineticLaw
	xdot(128) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_PROTEIN_M_Notch_activation_0) + (-1.0 * reaction_PROTEIN_M_Notch_degradation_0) + (-1.0 * reaction_PROTEIN_M_Notch_inactivation_0) + ( 1.0 * reaction_mRNA_M_Notch_translation_0));
	
% Species:   id = PROTEIN_M_Notch2, name = PROTEIN_M_Notch2, affected by kineticLaw
	xdot(129) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_M_Notch_activation_0) + ( 1.0 * reaction_PROTEIN_M_Notch_inactivation_0) + (-1.0 * reaction_PROTEIN_M_SuHN_accociation_0) + ( 1.0 * reaction_PROTEIN_M_SuHN_dissociation_0));
	
% Species:   id = PROTEIN_M_Nrl, name = PROTEIN_M_Nrl, affected by kineticLaw
	xdot(130) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_M_Nrl_degradation_0) + ( 1.0 * reaction_mRNA_M_Nrl_translation_0));
	
% Species:   id = PROTEIN_M_OrCt, name = PROTEIN_M_OrCt, affected by kineticLaw
	xdot(131) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_M_OrCt_degradation_0) + ( 1.0 * reaction_mRNA_M_OrCt_translation_0));
	
% Species:   id = PROTEIN_M_Otx, name = PROTEIN_M_Otx, affected by kineticLaw
	xdot(132) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_M_Otx_degradation_0) + ( 1.0 * reaction_mRNA_M_Otx_translation_0));
	
% Species:   id = PROTEIN_M_Pks, name = PROTEIN_M_Pks, affected by kineticLaw
	xdot(133) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_M_Pks_degradation_0) + ( 1.0 * reaction_mRNA_M_Pks_translation_0));
	
% Species:   id = PROTEIN_M_Pmar1, name = PROTEIN_M_Pmar1, affected by kineticLaw
	xdot(134) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_M_Pmar1_degradation_0) + ( 1.0 * reaction_mRNA_M_Pmar1_translation_0));
	
% Species:   id = PROTEIN_M_Sm27, name = PROTEIN_M_Sm27, affected by kineticLaw
	xdot(135) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_M_Sm27_degradation_0) + ( 1.0 * reaction_mRNA_M_Sm27_translation_0));
	
% Species:   id = PROTEIN_M_Sm30, name = PROTEIN_M_Sm30, affected by kineticLaw
	xdot(136) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_M_Sm30_degradation_0) + ( 1.0 * reaction_mRNA_M_Sm30_translation_0));
	
% Species:   id = PROTEIN_M_Sm50, name = PROTEIN_M_Sm50, affected by kineticLaw
	xdot(137) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_M_Sm50_degradation_0) + ( 1.0 * reaction_mRNA_M_Sm50_translation_0));
	
% Species:   id = PROTEIN_M_Snail, name = PROTEIN_M_Snail, affected by kineticLaw
	xdot(138) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_M_Snail_degradation_0) + ( 1.0 * reaction_mRNA_M_Snail_translation_0));
	
% Species:   id = PROTEIN_M_SoxB1, name = PROTEIN_M_SoxB1, affected by kineticLaw
	xdot(139) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_M_SoxB1_degradation_0) + ( 1.0 * reaction_mRNA_M_SoxB1_translation_0));
	
% Species:   id = PROTEIN_M_SoxC, name = PROTEIN_M_SoxC, affected by kineticLaw
	xdot(140) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_M_SoxC_degradation_0) + ( 1.0 * reaction_mRNA_M_SoxC_translation_0));
	
% Species:   id = PROTEIN_M_SuH, name = PROTEIN_M_SuH, affected by kineticLaw
	xdot(141) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_M_SuHN_accociation_0) + ( 1.0 * reaction_PROTEIN_M_SuHN_dissociation_0) + (-1.0 * reaction_PROTEIN_M_SuH_degradation_0) + ( 1.0 * reaction_mRNA_M_SuH_translation_0));
	
% Species:   id = PROTEIN_M_SuHN, name = PROTEIN_M_SuHN, affected by kineticLaw
	xdot(142) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_PROTEIN_M_SuHN_accociation_0) + (-1.0 * reaction_PROTEIN_M_SuHN_dissociation_0));
	
% Species:   id = PROTEIN_M_SuTx, name = PROTEIN_M_SuTx, affected by kineticLaw
	xdot(143) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_M_SuTx_degradation_0) + ( 1.0 * reaction_mRNA_M_SuTx_translation_0));
	
% Species:   id = PROTEIN_M_TBr, name = PROTEIN_M_TBr, affected by kineticLaw
	xdot(144) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_M_TBr_degradation_0) + ( 1.0 * reaction_mRNA_M_TBr_translation_0));
	
% Species:   id = PROTEIN_M_TCF, name = PROTEIN_M_TCF, affected by kineticLaw
	xdot(145) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_M_GroTCF_accociation_0) + ( 1.0 * reaction_PROTEIN_M_GroTCF_dissociation_0) + (-1.0 * reaction_PROTEIN_M_nBTCF_accociation_0) + ( 1.0 * reaction_PROTEIN_M_nBTCF_dissociation_0));
	
% Species:   id = PROTEIN_M_Tel, name = PROTEIN_M_Tel, affected by kineticLaw
	xdot(146) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_M_Tel_degradation_0) + ( 1.0 * reaction_mRNA_M_Tel_translation_0));
	
% Species:   id = PROTEIN_M_Tgif, name = PROTEIN_M_Tgif, affected by kineticLaw
	xdot(147) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_M_Tgif_degradation_0) + ( 1.0 * reaction_mRNA_M_Tgif_translation_0));
	
% Species:   id = PROTEIN_M_UMADelta, name = PROTEIN_M_UMADelta, affected by kineticLaw
	xdot(148) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_M_UMADelta_degradation_0) + ( 1.0 * reaction_mRNA_M_UMADelta_translation_0));
	
% Species:   id = PROTEIN_M_UMANrl, name = PROTEIN_M_UMANrl, affected by kineticLaw
	xdot(149) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_M_UMANrl_degradation_0) + ( 1.0 * reaction_mRNA_M_UMANrl_translation_0));
	
% Species:   id = PROTEIN_M_UMR, name = PROTEIN_M_UMR, affected by kineticLaw
	xdot(150) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_M_UMR_degradation_0) + ( 1.0 * reaction_mRNA_M_UMR_translation_0));
	
% Species:   id = PROTEIN_M_UVAOtx, name = PROTEIN_M_UVAOtx
% Warning species is not changed by either rules or reactions
	xdot(151) = ;
	
% Species:   id = PROTEIN_M_UbiqAlx1, name = PROTEIN_M_UbiqAlx1
% Warning species is not changed by either rules or reactions
	xdot(152) = ;
	
% Species:   id = PROTEIN_M_UbiqDelta, name = PROTEIN_M_UbiqDelta
% Warning species is not changed by either rules or reactions
	xdot(153) = ;
	
% Species:   id = PROTEIN_M_UbiqES, name = PROTEIN_M_UbiqES
% Warning species is not changed by either rules or reactions
	xdot(154) = ;
	
% Species:   id = PROTEIN_M_UbiqEts1, name = PROTEIN_M_UbiqEts1
% Warning species is not changed by either rules or reactions
	xdot(155) = ;
	
% Species:   id = PROTEIN_M_UbiqGcad, name = PROTEIN_M_UbiqGcad
% Warning species is not changed by either rules or reactions
	xdot(156) = ;
	
% Species:   id = PROTEIN_M_UbiqHesC, name = PROTEIN_M_UbiqHesC
% Warning species is not changed by either rules or reactions
	xdot(157) = ;
	
% Species:   id = PROTEIN_M_UbiqHnf6, name = PROTEIN_M_UbiqHnf6
% Warning species is not changed by either rules or reactions
	xdot(158) = ;
	
% Species:   id = PROTEIN_M_UbiqSoxB1, name = PROTEIN_M_UbiqSoxB1, affected by kineticLaw
	xdot(159) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_M_UbiqSoxB1_degradation_0) + ( 1.0 * reaction_mRNA_M_UbiqSoxB1_translation_0));
	
% Species:   id = PROTEIN_M_UbiqSoxC, name = PROTEIN_M_UbiqSoxC
% Warning species is not changed by either rules or reactions
	xdot(160) = ;
	
% Species:   id = PROTEIN_M_UbiqTel, name = PROTEIN_M_UbiqTel
% Warning species is not changed by either rules or reactions
	xdot(161) = ;
	
% Species:   id = PROTEIN_M_VEGFR, name = PROTEIN_M_VEGFR, affected by kineticLaw
	xdot(162) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_M_VEGFR_degradation_0) + (-1.0 * reaction_PROTEIN_M_VEGFSignal_accociation_0) + ( 1.0 * reaction_PROTEIN_M_VEGFSignal_dissociation_0) + ( 1.0 * reaction_mRNA_M_VEGFR_translation_0));
	
% Species:   id = PROTEIN_M_VEGFSignal, name = PROTEIN_M_VEGFSignal, affected by kineticLaw
	xdot(163) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_PROTEIN_M_VEGFSignal_accociation_0) + (-1.0 * reaction_PROTEIN_M_VEGFSignal_dissociation_0));
	
% Species:   id = PROTEIN_M_Wnt8, name = PROTEIN_M_Wnt8, affected by kineticLaw
	xdot(164) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_M_Wnt8_degradation_0) + ( 1.0 * reaction_mRNA_M_Wnt8_translation_0));
	
% Species:   id = PROTEIN_M_cB, name = PROTEIN_M_cB, affected by kineticLaw
	xdot(165) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_M_cB_a_degradation_0) + (-1.0 * reaction_PROTEIN_M_cB_degradation_0) + (-1.0 * reaction_PROTEIN_M_nBTCF_accociation_0) + ( 1.0 * reaction_PROTEIN_M_nBTCF_dissociation_0) + ( 1.0 * reaction_mRNA_M_cB_translation_0));
	
% Species:   id = PROTEIN_M_frizzled_a, name = PROTEIN_M_frizzled_a, affected by kineticLaw
	xdot(166) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_PROTEIN_M_frizzled_a_activation_0) + (-1.0 * reaction_PROTEIN_M_frizzled_a_inactivation_0));
	
% Species:   id = PROTEIN_M_frizzled_i, name = PROTEIN_M_frizzled_i, affected by kineticLaw
	xdot(167) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_M_frizzled_a_activation_0) + ( 1.0 * reaction_PROTEIN_M_frizzled_a_inactivation_0));
	
% Species:   id = PROTEIN_M_nBTCF, name = PROTEIN_M_nBTCF, affected by kineticLaw
	xdot(168) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_PROTEIN_M_nBTCF_accociation_0) + (-1.0 * reaction_PROTEIN_M_nBTCF_dissociation_0));
	
% Species:   id = PROTEIN_M_z13, name = PROTEIN_M_z13, affected by kineticLaw
	xdot(169) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_M_z13_degradation_0) + ( 1.0 * reaction_mRNA_M_z13_translation_0));
	
% Species:   id = PROTEIN_P_Alx1, name = PROTEIN_P_Alx1, affected by kineticLaw
	xdot(170) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_P_Alx1_degradation_0) + ( 1.0 * reaction_mRNA_P_Alx1_translation_0));
	
% Species:   id = PROTEIN_P_Apobec, name = PROTEIN_P_Apobec, affected by kineticLaw
	xdot(171) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_P_Apobec_degradation_0) + ( 1.0 * reaction_mRNA_P_Apobec_translation_0));
	
% Species:   id = PROTEIN_P_Blimp1, name = PROTEIN_P_Blimp1, affected by kineticLaw
	xdot(172) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_P_Blimp1_degradation_0) + ( 1.0 * reaction_mRNA_P_Blimp1_translation_0));
	
% Species:   id = PROTEIN_P_Bra, name = PROTEIN_P_Bra, affected by kineticLaw
	xdot(173) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_P_Bra_degradation_0) + ( 1.0 * reaction_mRNA_P_Bra_translation_0));
	
% Species:   id = PROTEIN_P_Brn, name = PROTEIN_P_Brn, affected by kineticLaw
	xdot(174) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_P_Brn_degradation_0) + ( 1.0 * reaction_mRNA_P_Brn_translation_0));
	
% Species:   id = PROTEIN_P_CAPK, name = PROTEIN_P_CAPK, affected by kineticLaw
	xdot(175) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_P_CAPK_degradation_0) + ( 1.0 * reaction_mRNA_P_CAPK_translation_0));
	
% Species:   id = PROTEIN_P_CyP, name = PROTEIN_P_CyP, affected by kineticLaw
	xdot(176) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_P_CyP_degradation_0) + ( 1.0 * reaction_mRNA_P_CyP_translation_0));
	
% Species:   id = PROTEIN_P_Delta, name = PROTEIN_P_Delta, affected by kineticLaw
	xdot(177) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_PROTEIN_P_Delta_activation_0) + (-1.0 * reaction_PROTEIN_P_Delta_degradation_0) + (-1.0 * reaction_PROTEIN_P_Delta_inactivation_0) + ( 1.0 * reaction_mRNA_P_Delta_translation_0));
	
% Species:   id = PROTEIN_P_Delta2, name = PROTEIN_P_Delta2, affected by kineticLaw
	xdot(178) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_P_Delta_activation_0) + ( 1.0 * reaction_PROTEIN_P_Delta_inactivation_0));
	
% Species:   id = PROTEIN_P_Dpt, name = PROTEIN_P_Dpt, affected by kineticLaw
	xdot(179) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_P_Dpt_degradation_0) + ( 1.0 * reaction_mRNA_P_Dpt_translation_0));
	
% Species:   id = PROTEIN_P_Dri, name = PROTEIN_P_Dri, affected by kineticLaw
	xdot(180) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_P_Dri_degradation_0) + ( 1.0 * reaction_mRNA_P_Dri_translation_0));
	
% Species:   id = PROTEIN_P_Endo16, name = PROTEIN_P_Endo16, affected by kineticLaw
	xdot(181) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_P_Endo16_degradation_0) + ( 1.0 * reaction_mRNA_P_Endo16_translation_0));
	
% Species:   id = PROTEIN_P_Erg, name = PROTEIN_P_Erg, affected by kineticLaw
	xdot(182) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_P_Erg_degradation_0) + ( 1.0 * reaction_mRNA_P_Erg_translation_0));
	
% Species:   id = PROTEIN_P_Ets1, name = PROTEIN_P_Ets1, affected by kineticLaw
	xdot(183) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_P_Ets1_degradation_0) + ( 1.0 * reaction_mRNA_P_Ets1_translation_0));
	
% Species:   id = PROTEIN_P_Eve, name = PROTEIN_P_Eve, affected by kineticLaw
	xdot(184) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_P_Eve_degradation_0) + ( 1.0 * reaction_mRNA_P_Eve_translation_0));
	
% Species:   id = PROTEIN_P_Ficolin, name = PROTEIN_P_Ficolin, affected by kineticLaw
	xdot(185) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_P_Ficolin_degradation_0) + ( 1.0 * reaction_mRNA_P_Ficolin_translation_0));
	
% Species:   id = PROTEIN_P_FoxA, name = PROTEIN_P_FoxA, affected by kineticLaw
	xdot(186) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_P_FoxA_degradation_0) + ( 1.0 * reaction_mRNA_P_FoxA_translation_0));
	
% Species:   id = PROTEIN_P_FoxB, name = PROTEIN_P_FoxB, affected by kineticLaw
	xdot(187) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_P_FoxB_degradation_0) + ( 1.0 * reaction_mRNA_P_FoxB_translation_0));
	
% Species:   id = PROTEIN_P_FoxN23, name = PROTEIN_P_FoxN23, affected by kineticLaw
	xdot(188) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_P_FoxN23_degradation_0) + ( 1.0 * reaction_mRNA_P_FoxN23_translation_0));
	
% Species:   id = PROTEIN_P_FoxO, name = PROTEIN_P_FoxO, affected by kineticLaw
	xdot(189) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_P_FoxO_degradation_0) + ( 1.0 * reaction_mRNA_P_FoxO_translation_0));
	
% Species:   id = PROTEIN_P_FvMo, name = PROTEIN_P_FvMo, affected by kineticLaw
	xdot(190) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_P_FvMo_degradation_0) + ( 1.0 * reaction_mRNA_P_FvMo_translation_0));
	
% Species:   id = PROTEIN_P_GSK3_a, name = PROTEIN_P_GSK3_a, affected by kineticLaw
	xdot(191) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_P_GSK3_i_activation_0) + ( 1.0 * reaction_PROTEIN_P_GSK3_i_inactivation_0));
	
% Species:   id = PROTEIN_P_GSK3_i, name = PROTEIN_P_GSK3_i, affected by kineticLaw
	xdot(192) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_PROTEIN_P_GSK3_i_activation_0) + (-1.0 * reaction_PROTEIN_P_GSK3_i_inactivation_0));
	
% Species:   id = PROTEIN_P_GataC, name = PROTEIN_P_GataC, affected by kineticLaw
	xdot(193) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_P_GataC_degradation_0) + ( 1.0 * reaction_mRNA_P_GataC_translation_0));
	
% Species:   id = PROTEIN_P_GataE, name = PROTEIN_P_GataE, affected by kineticLaw
	xdot(194) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_P_GataE_degradation_0) + ( 1.0 * reaction_mRNA_P_GataE_translation_0));
	
% Species:   id = PROTEIN_P_Gcad, name = PROTEIN_P_Gcad, affected by kineticLaw
	xdot(195) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_P_Gcad_degradation_0) + ( 1.0 * reaction_mRNA_P_Gcad_translation_0));
	
% Species:   id = PROTEIN_P_Gcm, name = PROTEIN_P_Gcm, affected by kineticLaw
	xdot(196) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_P_Gcm_degradation_0) + ( 1.0 * reaction_mRNA_P_Gcm_translation_0));
	
% Species:   id = PROTEIN_P_Gelsolin, name = PROTEIN_P_Gelsolin, affected by kineticLaw
	xdot(197) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_P_Gelsolin_degradation_0) + ( 1.0 * reaction_mRNA_P_Gelsolin_translation_0));
	
% Species:   id = PROTEIN_P_Gro, name = PROTEIN_P_Gro, affected by kineticLaw
	xdot(198) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_P_GroTCF_accociation_0) + ( 1.0 * reaction_PROTEIN_P_GroTCF_dissociation_0));
	
% Species:   id = PROTEIN_P_GroTCF, name = PROTEIN_P_GroTCF, affected by kineticLaw
	xdot(199) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_PROTEIN_P_GroTCF_accociation_0) + (-1.0 * reaction_PROTEIN_P_GroTCF_dissociation_0));
	
% Species:   id = PROTEIN_P_GroTFC, name = PROTEIN_P_GroTFC
% Warning species is not changed by either rules or reactions
	xdot(200) = ;
	
% Species:   id = PROTEIN_P_HesC, name = PROTEIN_P_HesC, affected by kineticLaw
	xdot(201) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_P_HesC_degradation_0) + ( 1.0 * reaction_mRNA_P_HesC_translation_0));
	
% Species:   id = PROTEIN_P_Hex, name = PROTEIN_P_Hex, affected by kineticLaw
	xdot(202) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_P_Hex_degradation_0) + ( 1.0 * reaction_mRNA_P_Hex_translation_0));
	
% Species:   id = PROTEIN_P_Hnf6, name = PROTEIN_P_Hnf6, affected by kineticLaw
	xdot(203) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_P_Hnf6_degradation_0) + ( 1.0 * reaction_mRNA_P_Hnf6_translation_0));
	
% Species:   id = PROTEIN_P_Hox, name = PROTEIN_P_Hox, affected by kineticLaw
	xdot(204) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_P_Hox_degradation_0) + ( 1.0 * reaction_mRNA_P_Hox_translation_0));
	
% Species:   id = PROTEIN_P_Kakapo, name = PROTEIN_P_Kakapo, affected by kineticLaw
	xdot(205) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_P_Kakapo_degradation_0) + ( 1.0 * reaction_mRNA_P_Kakapo_translation_0));
	
% Species:   id = PROTEIN_P_L1, name = PROTEIN_P_L1, affected by kineticLaw
	xdot(206) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_P_L1_degradation_0) + (-1.0 * reaction_PROTEIN_P_VEGFSignal_accociation_0) + ( 1.0 * reaction_PROTEIN_P_VEGFSignal_dissociation_0) + ( 1.0 * reaction_mRNA_P_L1_translation_0));
	
% Species:   id = PROTEIN_P_Lim, name = PROTEIN_P_Lim, affected by kineticLaw
	xdot(207) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_P_Lim_degradation_0) + ( 1.0 * reaction_mRNA_P_Lim_translation_0));
	
% Species:   id = PROTEIN_P_Msp130, name = PROTEIN_P_Msp130, affected by kineticLaw
	xdot(208) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_P_Msp130_degradation_0) + ( 1.0 * reaction_mRNA_P_Msp130_translation_0));
	
% Species:   id = PROTEIN_P_MspL, name = PROTEIN_P_MspL, affected by kineticLaw
	xdot(209) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_P_MspL_degradation_0) + ( 1.0 * reaction_mRNA_P_MspL_translation_0));
	
% Species:   id = PROTEIN_P_Not, name = PROTEIN_P_Not, affected by kineticLaw
	xdot(210) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_P_Not_degradation_0) + ( 1.0 * reaction_mRNA_P_Not_translation_0));
	
% Species:   id = PROTEIN_P_Notch, name = PROTEIN_P_Notch, affected by kineticLaw
	xdot(211) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_PROTEIN_P_Notch_activation_0) + (-1.0 * reaction_PROTEIN_P_Notch_inactivation_0));
	
% Species:   id = PROTEIN_P_Notch2, name = PROTEIN_P_Notch2, affected by kineticLaw
	xdot(212) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_P_Notch_activation_0) + ( 1.0 * reaction_PROTEIN_P_Notch_inactivation_0) + (-1.0 * reaction_PROTEIN_P_SuHN_accociation_0) + ( 1.0 * reaction_PROTEIN_P_SuHN_dissociation_0));
	
% Species:   id = PROTEIN_P_Nrl, name = PROTEIN_P_Nrl, affected by kineticLaw
	xdot(213) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_P_Nrl_degradation_0) + ( 1.0 * reaction_mRNA_P_Nrl_translation_0));
	
% Species:   id = PROTEIN_P_OrCt, name = PROTEIN_P_OrCt, affected by kineticLaw
	xdot(214) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_P_OrCt_degradation_0) + ( 1.0 * reaction_mRNA_P_OrCt_translation_0));
	
% Species:   id = PROTEIN_P_Otx, name = PROTEIN_P_Otx, affected by kineticLaw
	xdot(215) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_P_Otx_degradation_0) + ( 1.0 * reaction_mRNA_P_Otx_translation_0));
	
% Species:   id = PROTEIN_P_Pks, name = PROTEIN_P_Pks, affected by kineticLaw
	xdot(216) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_P_Pks_degradation_0) + ( 1.0 * reaction_mRNA_P_Pks_translation_0));
	
% Species:   id = PROTEIN_P_Pmar1, name = PROTEIN_P_Pmar1, affected by kineticLaw
	xdot(217) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_P_Pmar1_degradation_0) + ( 1.0 * reaction_mRNA_P_Pmar1_translation_0));
	
% Species:   id = PROTEIN_P_Sm27, name = PROTEIN_P_Sm27, affected by kineticLaw
	xdot(218) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_P_Sm27_degradation_0) + ( 1.0 * reaction_mRNA_P_Sm27_translation_0));
	
% Species:   id = PROTEIN_P_Sm30, name = PROTEIN_P_Sm30, affected by kineticLaw
	xdot(219) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_P_Sm30_degradation_0) + ( 1.0 * reaction_mRNA_P_Sm30_translation_0));
	
% Species:   id = PROTEIN_P_Sm50, name = PROTEIN_P_Sm50, affected by kineticLaw
	xdot(220) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_P_Sm50_degradation_0) + ( 1.0 * reaction_mRNA_P_Sm50_translation_0));
	
% Species:   id = PROTEIN_P_Snail, name = PROTEIN_P_Snail, affected by kineticLaw
	xdot(221) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_P_Snail_degradation_0) + ( 1.0 * reaction_mRNA_P_Snail_translation_0));
	
% Species:   id = PROTEIN_P_SoxB1, name = PROTEIN_P_SoxB1, affected by kineticLaw
	xdot(222) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_P_SoxB1_degradation_0) + ( 1.0 * reaction_mRNA_P_SoxB1_translation_0));
	
% Species:   id = PROTEIN_P_SoxC, name = PROTEIN_P_SoxC, affected by kineticLaw
	xdot(223) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_P_SoxC_degradation_0) + ( 1.0 * reaction_mRNA_P_SoxC_translation_0));
	
% Species:   id = PROTEIN_P_SuH, name = PROTEIN_P_SuH, affected by kineticLaw
	xdot(224) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_P_SuHN_accociation_0) + ( 1.0 * reaction_PROTEIN_P_SuHN_dissociation_0));
	
% Species:   id = PROTEIN_P_SuHN, name = PROTEIN_P_SuHN, affected by kineticLaw
	xdot(225) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_PROTEIN_P_SuHN_accociation_0) + (-1.0 * reaction_PROTEIN_P_SuHN_dissociation_0));
	
% Species:   id = PROTEIN_P_SuTx, name = PROTEIN_P_SuTx, affected by kineticLaw
	xdot(226) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_P_SuTx_degradation_0) + ( 1.0 * reaction_mRNA_P_SuTx_translation_0));
	
% Species:   id = PROTEIN_P_TBr, name = PROTEIN_P_TBr, affected by kineticLaw
	xdot(227) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_P_TBr_degradation_0) + ( 1.0 * reaction_mRNA_P_TBr_translation_0));
	
% Species:   id = PROTEIN_P_TCF, name = PROTEIN_P_TCF, affected by kineticLaw
	xdot(228) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_P_GroTCF_accociation_0) + ( 1.0 * reaction_PROTEIN_P_GroTCF_dissociation_0) + (-1.0 * reaction_PROTEIN_P_nBTCF_accociation_0) + ( 1.0 * reaction_PROTEIN_P_nBTCF_dissociation_0));
	
% Species:   id = PROTEIN_P_Tel, name = PROTEIN_P_Tel, affected by kineticLaw
	xdot(229) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_P_Tel_degradation_0) + ( 1.0 * reaction_mRNA_P_Tel_translation_0));
	
% Species:   id = PROTEIN_P_Tgif, name = PROTEIN_P_Tgif, affected by kineticLaw
	xdot(230) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_P_Tgif_degradation_0) + ( 1.0 * reaction_mRNA_P_Tgif_translation_0));
	
% Species:   id = PROTEIN_P_UMADelta, name = PROTEIN_P_UMADelta
% Warning species is not changed by either rules or reactions
	xdot(231) = ;
	
% Species:   id = PROTEIN_P_UMANrl, name = PROTEIN_P_UMANrl
% Warning species is not changed by either rules or reactions
	xdot(232) = ;
	
% Species:   id = PROTEIN_P_UVAOtx, name = PROTEIN_P_UVAOtx
% Warning species is not changed by either rules or reactions
	xdot(233) = ;
	
% Species:   id = PROTEIN_P_UbiqAlx1, name = PROTEIN_P_UbiqAlx1, affected by kineticLaw
	xdot(234) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_P_UbiqAlx1_degradation_0) + ( 1.0 * reaction_mRNA_P_UbiqAlx1_translation_0));
	
% Species:   id = PROTEIN_P_UbiqDelta, name = PROTEIN_P_UbiqDelta
% Warning species is not changed by either rules or reactions
	xdot(235) = ;
	
% Species:   id = PROTEIN_P_UbiqES, name = PROTEIN_P_UbiqES, affected by kineticLaw
	xdot(236) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_P_UbiqES_degradation_0) + ( 1.0 * reaction_mRNA_P_UbiqES_translation_0));
	
% Species:   id = PROTEIN_P_UbiqEts1, name = PROTEIN_P_UbiqEts1, affected by kineticLaw
	xdot(237) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_P_UbiqEts1_degradation_0) + ( 1.0 * reaction_mRNA_P_UbiqEts1_translation_0));
	
% Species:   id = PROTEIN_P_UbiqGcad, name = PROTEIN_P_UbiqGcad
% Warning species is not changed by either rules or reactions
	xdot(238) = ;
	
% Species:   id = PROTEIN_P_UbiqHesC, name = PROTEIN_P_UbiqHesC, affected by kineticLaw
	xdot(239) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_P_UbiqHesC_degradation_0) + ( 1.0 * reaction_mRNA_P_UbiqHesC_translation_0));
	
% Species:   id = PROTEIN_P_UbiqHnf6, name = PROTEIN_P_UbiqHnf6, affected by kineticLaw
	xdot(240) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_P_UbiqHnf6_degradation_0) + ( 1.0 * reaction_mRNA_P_UbiqHnf6_translation_0));
	
% Species:   id = PROTEIN_P_UbiqSoxB1, name = PROTEIN_P_UbiqSoxB1
% Warning species is not changed by either rules or reactions
	xdot(241) = ;
	
% Species:   id = PROTEIN_P_UbiqSoxC, name = PROTEIN_P_UbiqSoxC, affected by kineticLaw
	xdot(242) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_P_UbiqSoxC_degradation_0) + ( 1.0 * reaction_mRNA_P_UbiqSoxC_translation_0));
	
% Species:   id = PROTEIN_P_UbiqTel, name = PROTEIN_P_UbiqTel, affected by kineticLaw
	xdot(243) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_P_UbiqTel_degradation_0) + ( 1.0 * reaction_mRNA_P_UbiqTel_translation_0));
	
% Species:   id = PROTEIN_P_VEGFR, name = PROTEIN_P_VEGFR, affected by kineticLaw
	xdot(244) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_P_VEGFR_degradation_0) + (-1.0 * reaction_PROTEIN_P_VEGFSignal_accociation_0) + ( 1.0 * reaction_PROTEIN_P_VEGFSignal_dissociation_0) + ( 1.0 * reaction_mRNA_P_VEGFR_translation_0));
	
% Species:   id = PROTEIN_P_VEGFSignal, name = PROTEIN_P_VEGFSignal, affected by kineticLaw
	xdot(245) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_PROTEIN_P_VEGFSignal_accociation_0) + (-1.0 * reaction_PROTEIN_P_VEGFSignal_dissociation_0));
	
% Species:   id = PROTEIN_P_Wnt8, name = PROTEIN_P_Wnt8, affected by kineticLaw
	xdot(246) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_P_Wnt8_degradation_0) + ( 1.0 * reaction_mRNA_P_Wnt8_translation_0));
	
% Species:   id = PROTEIN_P_cB, name = PROTEIN_P_cB, affected by kineticLaw
	xdot(247) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_P_cB_a_degradation_0) + (-1.0 * reaction_PROTEIN_P_cB_degradation_0) + (-1.0 * reaction_PROTEIN_P_nBTCF_accociation_0) + ( 1.0 * reaction_PROTEIN_P_nBTCF_dissociation_0) + ( 1.0 * reaction_mRNA_P_cB_translation_0));
	
% Species:   id = PROTEIN_P_frizzled_a, name = PROTEIN_P_frizzled_a, affected by kineticLaw
	xdot(248) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_PROTEIN_P_frizzled_a_activation_0) + (-1.0 * reaction_PROTEIN_P_frizzled_a_inactivation_0));
	
% Species:   id = PROTEIN_P_frizzled_i, name = PROTEIN_P_frizzled_i, affected by kineticLaw
	xdot(249) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_P_frizzled_a_activation_0) + ( 1.0 * reaction_PROTEIN_P_frizzled_a_inactivation_0));
	
% Species:   id = PROTEIN_P_nBTCF, name = PROTEIN_P_nBTCF, affected by kineticLaw
	xdot(250) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_PROTEIN_P_nBTCF_accociation_0) + (-1.0 * reaction_PROTEIN_P_nBTCF_dissociation_0));
	
% Species:   id = PROTEIN_P_z13, name = PROTEIN_P_z13, affected by kineticLaw
	xdot(251) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_PROTEIN_P_z13_degradation_0) + ( 1.0 * reaction_mRNA_P_z13_translation_0));
	
% Species:   id = mRNA_E_Alx1, name = mRNA_E_Alx1, affected by kineticLaw
	xdot(252) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_E_Alx1_transcription_0) + (-1.0 * reaction_mRNA_E_Alx1_degradation_0));
	
% Species:   id = mRNA_E_Apobec, name = mRNA_E_Apobec, affected by kineticLaw
	xdot(253) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_E_Apobec_transcription_0) + (-1.0 * reaction_mRNA_E_Apobec_degradation_0));
	
% Species:   id = mRNA_E_Blimp1, name = mRNA_E_Blimp1, affected by kineticLaw
	xdot(254) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_E_Blimp1_transcription_0) + (-1.0 * reaction_mRNA_E_Blimp1_degradation_0));
	
% Species:   id = mRNA_E_Bra, name = mRNA_E_Bra, affected by kineticLaw
	xdot(255) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_E_Bra_transcription_0) + (-1.0 * reaction_mRNA_E_Bra_degradation_0));
	
% Species:   id = mRNA_E_Brn, name = mRNA_E_Brn, affected by kineticLaw
	xdot(256) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_E_Brn_transcription_0) + (-1.0 * reaction_mRNA_E_Brn_degradation_0));
	
% Species:   id = mRNA_E_CAPK, name = mRNA_E_CAPK, affected by kineticLaw
	xdot(257) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_mRNA_E_CAPK_degradation_0));
	
% Species:   id = mRNA_E_CyP, name = mRNA_E_CyP, affected by kineticLaw
	xdot(258) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_E_CyP_transcription_0) + (-1.0 * reaction_mRNA_E_CyP_degradation_0));
	
% Species:   id = mRNA_E_Delta, name = mRNA_E_Delta, affected by kineticLaw
	xdot(259) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_E_Delta_transcription_0) + (-1.0 * reaction_mRNA_E_Delta_degradation_0));
	
% Species:   id = mRNA_E_Dpt, name = mRNA_E_Dpt, affected by kineticLaw
	xdot(260) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_E_Dpt_transcription_0) + (-1.0 * reaction_mRNA_E_Dpt_degradation_0));
	
% Species:   id = mRNA_E_Dri, name = mRNA_E_Dri, affected by kineticLaw
	xdot(261) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_E_Dri_transcription_0) + (-1.0 * reaction_mRNA_E_Dri_degradation_0));
	
% Species:   id = mRNA_E_ES, name = mRNA_E_ES, affected by kineticLaw
	xdot(262) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_E_ES_transcription_0) + (-1.0 * reaction_mRNA_E_ES_degradation_0));
	
% Species:   id = mRNA_E_Endo16, name = mRNA_E_Endo16, affected by kineticLaw
	xdot(263) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_E_Endo16_transcription_0) + (-1.0 * reaction_mRNA_E_Endo16_degradation_0));
	
% Species:   id = mRNA_E_Erg, name = mRNA_E_Erg, affected by kineticLaw
	xdot(264) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_E_Erg_transcription_0) + (-1.0 * reaction_mRNA_E_Erg_degradation_0));
	
% Species:   id = mRNA_E_Ets1, name = mRNA_E_Ets1, affected by kineticLaw
	xdot(265) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_E_Ets1_transcription_0) + (-1.0 * reaction_mRNA_E_Ets1_degradation_0));
	
% Species:   id = mRNA_E_Eve, name = mRNA_E_Eve, affected by kineticLaw
	xdot(266) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_E_Eve_transcription_0) + (-1.0 * reaction_mRNA_E_Eve_degradation_0));
	
% Species:   id = mRNA_E_Ficolin, name = mRNA_E_Ficolin, affected by kineticLaw
	xdot(267) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_E_Ficolin_transcription_0) + (-1.0 * reaction_mRNA_E_Ficolin_degradation_0));
	
% Species:   id = mRNA_E_FoxA, name = mRNA_E_FoxA, affected by kineticLaw
	xdot(268) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_E_FoxA_transcription_0) + (-1.0 * reaction_mRNA_E_FoxA_degradation_0));
	
% Species:   id = mRNA_E_FoxB, name = mRNA_E_FoxB, affected by kineticLaw
	xdot(269) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_E_FoxB_transcription_0) + (-1.0 * reaction_mRNA_E_FoxB_degradation_0));
	
% Species:   id = mRNA_E_FoxN23, name = mRNA_E_FoxN23, affected by kineticLaw
	xdot(270) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_E_FoxN23_transcription_0) + (-1.0 * reaction_mRNA_E_FoxN23_degradation_0));
	
% Species:   id = mRNA_E_FoxO, name = mRNA_E_FoxO, affected by kineticLaw
	xdot(271) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_E_FoxO_transcription_0) + (-1.0 * reaction_mRNA_E_FoxO_degradation_0));
	
% Species:   id = mRNA_E_FvMo, name = mRNA_E_FvMo, affected by kineticLaw
	xdot(272) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_E_FvMo_transcription_0) + (-1.0 * reaction_mRNA_E_FvMo_degradation_0));
	
% Species:   id = mRNA_E_GataC, name = mRNA_E_GataC, affected by kineticLaw
	xdot(273) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_E_GataC_transcription_0) + (-1.0 * reaction_mRNA_E_GataC_degradation_0));
	
% Species:   id = mRNA_E_GataE, name = mRNA_E_GataE, affected by kineticLaw
	xdot(274) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_E_GataE_transcription_0) + (-1.0 * reaction_mRNA_E_GataE_degradation_0));
	
% Species:   id = mRNA_E_Gcad, name = mRNA_E_Gcad, affected by kineticLaw
	xdot(275) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_E_Gcad_Hill_Kinetic_0) + ( 1.0 * reaction_GENE_E_Gcad_transcription_0) + (-1.0 * reaction_mRNA_E_Gcad_degradation_0));
	
% Species:   id = mRNA_E_Gcm, name = mRNA_E_Gcm, affected by kineticLaw
	xdot(276) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_E_Gcm_transcription_0) + (-1.0 * reaction_mRNA_E_Gcm_degradation_0));
	
% Species:   id = mRNA_E_Gelsolin, name = mRNA_E_Gelsolin, affected by kineticLaw
	xdot(277) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_E_Gelsolin_transcription_0) + (-1.0 * reaction_mRNA_E_Gelsolin_degradation_0));
	
% Species:   id = mRNA_E_HesC, name = mRNA_E_HesC, affected by kineticLaw
	xdot(278) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_E_HesC_transcription_0) + (-1.0 * reaction_mRNA_E_HesC_degradation_0));
	
% Species:   id = mRNA_E_Hex, name = mRNA_E_Hex, affected by kineticLaw
	xdot(279) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_E_Hex_transcription_0) + (-1.0 * reaction_mRNA_E_Hex_degradation_0));
	
% Species:   id = mRNA_E_Hnf6, name = mRNA_E_Hnf6, affected by kineticLaw
	xdot(280) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_E_Hnf6_transcription_0) + (-1.0 * reaction_mRNA_E_Hnf6_degradation_0));
	
% Species:   id = mRNA_E_Hox, name = mRNA_E_Hox, affected by kineticLaw
	xdot(281) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_E_Hox_transcription_0) + (-1.0 * reaction_mRNA_E_Hox_degradation_0));
	
% Species:   id = mRNA_E_Kakapo, name = mRNA_E_Kakapo, affected by kineticLaw
	xdot(282) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_E_Kakapo_transcription_0) + (-1.0 * reaction_mRNA_E_Kakapo_degradation_0));
	
% Species:   id = mRNA_E_Lim, name = mRNA_E_Lim, affected by kineticLaw
	xdot(283) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_E_Lim_transcription_0) + (-1.0 * reaction_mRNA_E_Lim_degradation_0));
	
% Species:   id = mRNA_E_Msp130, name = mRNA_E_Msp130, affected by kineticLaw
	xdot(284) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_E_Msp130_transcription_0) + (-1.0 * reaction_mRNA_E_Msp130_degradation_0));
	
% Species:   id = mRNA_E_MspL, name = mRNA_E_MspL, affected by kineticLaw
	xdot(285) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_E_MspL_transcription_0) + (-1.0 * reaction_mRNA_E_MspL_degradation_0));
	
% Species:   id = mRNA_E_Not, name = mRNA_E_Not, affected by kineticLaw
	xdot(286) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_E_Not_transcription_0) + (-1.0 * reaction_mRNA_E_Not_degradation_0));
	
% Species:   id = mRNA_E_Notch, name = mRNA_E_Notch, affected by kineticLaw
	xdot(287) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_E_Notch_Hill_Kinetic_0) + (-1.0 * reaction_mRNA_E_Notch_degradation_0));
	
% Species:   id = mRNA_E_Nrl, name = mRNA_E_Nrl, affected by kineticLaw
	xdot(288) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_E_Nrl_transcription_0) + (-1.0 * reaction_mRNA_E_Nrl_degradation_0));
	
% Species:   id = mRNA_E_OrCt, name = mRNA_E_OrCt, affected by kineticLaw
	xdot(289) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_E_OrCt_transcription_0) + (-1.0 * reaction_mRNA_E_OrCt_degradation_0));
	
% Species:   id = mRNA_E_Otx, name = mRNA_E_Otx, affected by kineticLaw
	xdot(290) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_E_Otx_Hill_Kinetic_0) + ( 1.0 * reaction_GENE_E_Otx_transcription_0) + (-1.0 * reaction_mRNA_E_Otx_degradation_0));
	
% Species:   id = mRNA_E_Pks, name = mRNA_E_Pks, affected by kineticLaw
	xdot(291) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_E_Pks_transcription_0) + (-1.0 * reaction_mRNA_E_Pks_degradation_0));
	
% Species:   id = mRNA_E_Pmar1, name = mRNA_E_Pmar1, affected by kineticLaw
	xdot(292) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_E_Pmar1_transcription_0) + (-1.0 * reaction_mRNA_E_Pmar1_degradation_0));
	
% Species:   id = mRNA_E_Sm27, name = mRNA_E_Sm27, affected by kineticLaw
	xdot(293) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_E_Sm27_transcription_0) + (-1.0 * reaction_mRNA_E_Sm27_degradation_0));
	
% Species:   id = mRNA_E_Sm30, name = mRNA_E_Sm30, affected by kineticLaw
	xdot(294) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_E_Sm30_transcription_0) + (-1.0 * reaction_mRNA_E_Sm30_degradation_0));
	
% Species:   id = mRNA_E_Sm50, name = mRNA_E_Sm50, affected by kineticLaw
	xdot(295) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_E_Sm50_transcription_0) + (-1.0 * reaction_mRNA_E_Sm50_degradation_0));
	
% Species:   id = mRNA_E_Snail, name = mRNA_E_Snail, affected by kineticLaw
	xdot(296) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_E_Snail_transcription_0) + (-1.0 * reaction_mRNA_E_Snail_degradation_0));
	
% Species:   id = mRNA_E_SoxB1, name = mRNA_E_SoxB1, affected by kineticLaw
	xdot(297) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_E_SoxB1_Hill_Kinetic_0) + ( 1.0 * reaction_GENE_E_SoxB1_transcription_0) + (-1.0 * reaction_mRNA_E_SoxB1_degradation_0));
	
% Species:   id = mRNA_E_SoxC, name = mRNA_E_SoxC, affected by kineticLaw
	xdot(298) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_E_SoxC_transcription_0) + (-1.0 * reaction_mRNA_E_SoxC_degradation_0));
	
% Species:   id = mRNA_E_SuH, name = mRNA_E_SuH, affected by kineticLaw
	xdot(299) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_E_SuH_Hill_Kinetic_0) + (-1.0 * reaction_mRNA_E_SuH_degradation_0));
	
% Species:   id = mRNA_E_SuTx, name = mRNA_E_SuTx, affected by kineticLaw
	xdot(300) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_E_SuTx_transcription_0) + (-1.0 * reaction_mRNA_E_SuTx_degradation_0));
	
% Species:   id = mRNA_E_TBr, name = mRNA_E_TBr, affected by kineticLaw
	xdot(301) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_E_TBr_transcription_0) + (-1.0 * reaction_mRNA_E_TBr_degradation_0));
	
% Species:   id = mRNA_E_Tel, name = mRNA_E_Tel, affected by kineticLaw
	xdot(302) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_E_Tel_transcription_0) + (-1.0 * reaction_mRNA_E_Tel_degradation_0));
	
% Species:   id = mRNA_E_Tgif, name = mRNA_E_Tgif, affected by kineticLaw
	xdot(303) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_E_Tgif_transcription_0) + (-1.0 * reaction_mRNA_E_Tgif_degradation_0));
	
% Species:   id = mRNA_E_UMR, name = mRNA_E_UMR, affected by kineticLaw
	xdot(304) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_E_UMR_Hill_Kinetic_0) + (-1.0 * reaction_mRNA_E_UMR_degradation_0));
	
% Species:   id = mRNA_E_UVAOtx, name = mRNA_E_UVAOtx, affected by kineticLaw
	xdot(305) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_E_UVAOtx_Hill_Kinetic_0) + (-1.0 * reaction_mRNA_E_UVAOtx_degradation_0));
	
% Species:   id = mRNA_E_UbiqSoxB1, name = mRNA_E_UbiqSoxB1, affected by kineticLaw
	xdot(306) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_E_UbiqSoxB1_Hill_Kinetic_0) + (-1.0 * reaction_mRNA_E_UbiqSoxB1_degradation_0));
	
% Species:   id = mRNA_E_VEGF, name = mRNA_E_VEGF, affected by kineticLaw
	xdot(307) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_E_VEGF_Hill_Kinetic_0) + (-1.0 * reaction_mRNA_E_VEGF_degradation_0));
	
% Species:   id = mRNA_E_VEGFR, name = mRNA_E_VEGFR, affected by kineticLaw
	xdot(308) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_E_VEGFR_transcription_0) + (-1.0 * reaction_mRNA_E_VEGFR_degradation_0));
	
% Species:   id = mRNA_E_Wnt8, name = mRNA_E_Wnt8, affected by kineticLaw
	xdot(309) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_E_Wnt8_transcription_0) + (-1.0 * reaction_mRNA_E_Wnt8_degradation_0));
	
% Species:   id = mRNA_E_cB, name = mRNA_E_cB, affected by kineticLaw
	xdot(310) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_E_cB_Hill_Kinetic_0) + (-1.0 * reaction_mRNA_E_cB_degradation_0));
	
% Species:   id = mRNA_E_z13, name = mRNA_E_z13, affected by kineticLaw
	xdot(311) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_E_z13_transcription_0) + (-1.0 * reaction_mRNA_E_z13_degradation_0));
	
% Species:   id = mRNA_M_Alx1, name = mRNA_M_Alx1, affected by kineticLaw
	xdot(312) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_M_Alx1_transcription_0) + (-1.0 * reaction_mRNA_M_Alx1_degradation_0));
	
% Species:   id = mRNA_M_Apobec, name = mRNA_M_Apobec, affected by kineticLaw
	xdot(313) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_M_Apobec_transcription_0) + (-1.0 * reaction_mRNA_M_Apobec_degradation_0));
	
% Species:   id = mRNA_M_Blimp1, name = mRNA_M_Blimp1, affected by kineticLaw
	xdot(314) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_M_Blimp1_transcription_0) + (-1.0 * reaction_mRNA_M_Blimp1_degradation_0));
	
% Species:   id = mRNA_M_Bra, name = mRNA_M_Bra, affected by kineticLaw
	xdot(315) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_M_Bra_transcription_0) + (-1.0 * reaction_mRNA_M_Bra_degradation_0));
	
% Species:   id = mRNA_M_Brn, name = mRNA_M_Brn, affected by kineticLaw
	xdot(316) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_M_Brn_transcription_0) + (-1.0 * reaction_mRNA_M_Brn_degradation_0));
	
% Species:   id = mRNA_M_CAPK, name = mRNA_M_CAPK, affected by kineticLaw
	xdot(317) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_M_CAPK_transcription_0) + (-1.0 * reaction_mRNA_M_CAPK_degradation_0));
	
% Species:   id = mRNA_M_CyP, name = mRNA_M_CyP, affected by kineticLaw
	xdot(318) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_M_CyP_transcription_0) + (-1.0 * reaction_mRNA_M_CyP_degradation_0));
	
% Species:   id = mRNA_M_Delta, name = mRNA_M_Delta, affected by kineticLaw
	xdot(319) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_M_Delta_transcription_0) + (-1.0 * reaction_mRNA_M_Delta_degradation_0));
	
% Species:   id = mRNA_M_Dpt, name = mRNA_M_Dpt, affected by kineticLaw
	xdot(320) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_M_Dpt_transcription_0) + (-1.0 * reaction_mRNA_M_Dpt_degradation_0));
	
% Species:   id = mRNA_M_Dri, name = mRNA_M_Dri, affected by kineticLaw
	xdot(321) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_M_Dri_transcription_0) + (-1.0 * reaction_mRNA_M_Dri_degradation_0));
	
% Species:   id = mRNA_M_Endo16, name = mRNA_M_Endo16, affected by kineticLaw
	xdot(322) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_M_Endo16_transcription_0) + (-1.0 * reaction_mRNA_M_Endo16_degradation_0));
	
% Species:   id = mRNA_M_Erg, name = mRNA_M_Erg, affected by kineticLaw
	xdot(323) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_M_Erg_transcription_0) + (-1.0 * reaction_mRNA_M_Erg_degradation_0));
	
% Species:   id = mRNA_M_Ets1, name = mRNA_M_Ets1, affected by kineticLaw
	xdot(324) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_M_Ets1_transcription_0) + (-1.0 * reaction_mRNA_M_Ets1_degradation_0));
	
% Species:   id = mRNA_M_Eve, name = mRNA_M_Eve, affected by kineticLaw
	xdot(325) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_M_Eve_transcription_0) + (-1.0 * reaction_mRNA_M_Eve_degradation_0));
	
% Species:   id = mRNA_M_Ficolin, name = mRNA_M_Ficolin, affected by kineticLaw
	xdot(326) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_M_Ficolin_transcription_0) + (-1.0 * reaction_mRNA_M_Ficolin_degradation_0));
	
% Species:   id = mRNA_M_FoxA, name = mRNA_M_FoxA, affected by kineticLaw
	xdot(327) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_M_FoxA_transcription_0) + (-1.0 * reaction_mRNA_M_FoxA_degradation_0));
	
% Species:   id = mRNA_M_FoxB, name = mRNA_M_FoxB, affected by kineticLaw
	xdot(328) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_M_FoxB_transcription_0) + (-1.0 * reaction_mRNA_M_FoxB_degradation_0));
	
% Species:   id = mRNA_M_FoxN23, name = mRNA_M_FoxN23, affected by kineticLaw
	xdot(329) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_M_FoxN23_transcription_0) + (-1.0 * reaction_mRNA_M_FoxN23_degradation_0));
	
% Species:   id = mRNA_M_FoxO, name = mRNA_M_FoxO, affected by kineticLaw
	xdot(330) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_M_FoxO_transcription_0) + (-1.0 * reaction_mRNA_M_FoxO_degradation_0));
	
% Species:   id = mRNA_M_FvMo, name = mRNA_M_FvMo, affected by kineticLaw
	xdot(331) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_M_FvMo_transcription_0) + (-1.0 * reaction_mRNA_M_FvMo_degradation_0));
	
% Species:   id = mRNA_M_GataC, name = mRNA_M_GataC, affected by kineticLaw
	xdot(332) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_M_GataC_transcription_0) + (-1.0 * reaction_mRNA_M_GataC_degradation_0));
	
% Species:   id = mRNA_M_GataE, name = mRNA_M_GataE, affected by kineticLaw
	xdot(333) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_M_GataE_transcription_0) + (-1.0 * reaction_mRNA_M_GataE_degradation_0));
	
% Species:   id = mRNA_M_Gcad, name = mRNA_M_Gcad, affected by kineticLaw
	xdot(334) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_M_Gcad_transcription_0) + ( 1.0 * reaction_M_Gcad_Hill_Kinetic_0) + (-1.0 * reaction_mRNA_M_Gcad_degradation_0));
	
% Species:   id = mRNA_M_Gcm, name = mRNA_M_Gcm, affected by kineticLaw
	xdot(335) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_M_Gcm_transcription_0) + (-1.0 * reaction_mRNA_M_Gcm_degradation_0));
	
% Species:   id = mRNA_M_Gelsolin, name = mRNA_M_Gelsolin, affected by kineticLaw
	xdot(336) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_M_Gelsolin_transcription_0) + (-1.0 * reaction_mRNA_M_Gelsolin_degradation_0));
	
% Species:   id = mRNA_M_HesC, name = mRNA_M_HesC, affected by kineticLaw
	xdot(337) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_M_HesC_transcription_0) + (-1.0 * reaction_mRNA_M_HesC_degradation_0));
	
% Species:   id = mRNA_M_Hex, name = mRNA_M_Hex, affected by kineticLaw
	xdot(338) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_M_Hex_transcription_0) + (-1.0 * reaction_mRNA_M_Hex_degradation_0));
	
% Species:   id = mRNA_M_Hnf6, name = mRNA_M_Hnf6, affected by kineticLaw
	xdot(339) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_M_Hnf6_transcription_0) + (-1.0 * reaction_mRNA_M_Hnf6_degradation_0));
	
% Species:   id = mRNA_M_Hox, name = mRNA_M_Hox, affected by kineticLaw
	xdot(340) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_M_Hox_transcription_0) + (-1.0 * reaction_mRNA_M_Hox_degradation_0));
	
% Species:   id = mRNA_M_Kakapo, name = mRNA_M_Kakapo, affected by kineticLaw
	xdot(341) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_M_Kakapo_transcription_0) + (-1.0 * reaction_mRNA_M_Kakapo_degradation_0));
	
% Species:   id = mRNA_M_Lim, name = mRNA_M_Lim, affected by kineticLaw
	xdot(342) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_M_Lim_transcription_0) + (-1.0 * reaction_mRNA_M_Lim_degradation_0));
	
% Species:   id = mRNA_M_Msp130, name = mRNA_M_Msp130, affected by kineticLaw
	xdot(343) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_M_Msp130_transcription_0) + (-1.0 * reaction_mRNA_M_Msp130_degradation_0));
	
% Species:   id = mRNA_M_MspL, name = mRNA_M_MspL, affected by kineticLaw
	xdot(344) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_M_MspL_transcription_0) + (-1.0 * reaction_mRNA_M_MspL_degradation_0));
	
% Species:   id = mRNA_M_Not, name = mRNA_M_Not, affected by kineticLaw
	xdot(345) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_M_Not_transcription_0) + (-1.0 * reaction_mRNA_M_Not_degradation_0));
	
% Species:   id = mRNA_M_Notch, name = mRNA_M_Notch, affected by kineticLaw
	xdot(346) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_M_Notch_Hill_Kinetic_0) + (-1.0 * reaction_mRNA_M_Notch_degradation_0));
	
% Species:   id = mRNA_M_Nrl, name = mRNA_M_Nrl, affected by kineticLaw
	xdot(347) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_M_Nrl_transcription_0) + (-1.0 * reaction_mRNA_M_Nrl_degradation_0));
	
% Species:   id = mRNA_M_OrCt, name = mRNA_M_OrCt, affected by kineticLaw
	xdot(348) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_M_OrCt_transcription_0) + (-1.0 * reaction_mRNA_M_OrCt_degradation_0));
	
% Species:   id = mRNA_M_Otx, name = mRNA_M_Otx, affected by kineticLaw
	xdot(349) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_M_Otx_transcription_0) + ( 1.0 * reaction_M_Otx_Hill_Kinetic_0) + (-1.0 * reaction_mRNA_M_Otx_degradation_0));
	
% Species:   id = mRNA_M_Pks, name = mRNA_M_Pks, affected by kineticLaw
	xdot(350) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_M_Pks_transcription_0) + (-1.0 * reaction_mRNA_M_Pks_degradation_0));
	
% Species:   id = mRNA_M_Pmar1, name = mRNA_M_Pmar1, affected by kineticLaw
	xdot(351) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_M_Pmar1_transcription_0) + (-1.0 * reaction_mRNA_M_Pmar1_degradation_0));
	
% Species:   id = mRNA_M_Sm27, name = mRNA_M_Sm27, affected by kineticLaw
	xdot(352) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_M_Sm27_transcription_0) + (-1.0 * reaction_mRNA_M_Sm27_degradation_0));
	
% Species:   id = mRNA_M_Sm30, name = mRNA_M_Sm30, affected by kineticLaw
	xdot(353) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_M_Sm30_transcription_0) + (-1.0 * reaction_mRNA_M_Sm30_degradation_0));
	
% Species:   id = mRNA_M_Sm50, name = mRNA_M_Sm50, affected by kineticLaw
	xdot(354) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_M_Sm50_transcription_0) + (-1.0 * reaction_mRNA_M_Sm50_degradation_0));
	
% Species:   id = mRNA_M_Snail, name = mRNA_M_Snail, affected by kineticLaw
	xdot(355) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_M_Snail_transcription_0) + (-1.0 * reaction_mRNA_M_Snail_degradation_0));
	
% Species:   id = mRNA_M_SoxB1, name = mRNA_M_SoxB1, affected by kineticLaw
	xdot(356) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_M_SoxB1_transcription_0) + ( 1.0 * reaction_M_SoxB1_Hill_Kinetic_0) + (-1.0 * reaction_mRNA_M_SoxB1_degradation_0));
	
% Species:   id = mRNA_M_SoxC, name = mRNA_M_SoxC, affected by kineticLaw
	xdot(357) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_M_SoxC_transcription_0) + (-1.0 * reaction_mRNA_M_SoxC_degradation_0));
	
% Species:   id = mRNA_M_SuH, name = mRNA_M_SuH, affected by kineticLaw
	xdot(358) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_M_SuH_Hill_Kinetic_0) + (-1.0 * reaction_mRNA_M_SuH_degradation_0));
	
% Species:   id = mRNA_M_SuTx, name = mRNA_M_SuTx, affected by kineticLaw
	xdot(359) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_M_SuTx_transcription_0) + (-1.0 * reaction_mRNA_M_SuTx_degradation_0));
	
% Species:   id = mRNA_M_TBr, name = mRNA_M_TBr, affected by kineticLaw
	xdot(360) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_M_TBr_transcription_0) + (-1.0 * reaction_mRNA_M_TBr_degradation_0));
	
% Species:   id = mRNA_M_Tel, name = mRNA_M_Tel, affected by kineticLaw
	xdot(361) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_M_Tel_transcription_0) + (-1.0 * reaction_mRNA_M_Tel_degradation_0));
	
% Species:   id = mRNA_M_Tgif, name = mRNA_M_Tgif, affected by kineticLaw
	xdot(362) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_M_Tgif_transcription_0) + (-1.0 * reaction_mRNA_M_Tgif_degradation_0));
	
% Species:   id = mRNA_M_UMADelta, name = mRNA_M_UMADelta, affected by kineticLaw
	xdot(363) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_M_UMADelta_Hill_Kinetic_0) + (-1.0 * reaction_mRNA_M_UMADelta_degradation_0));
	
% Species:   id = mRNA_M_UMANrl, name = mRNA_M_UMANrl, affected by kineticLaw
	xdot(364) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_M_UMANrl_Hill_Kinetic_0) + (-1.0 * reaction_mRNA_M_UMANrl_degradation_0));
	
% Species:   id = mRNA_M_UMR, name = mRNA_M_UMR, affected by kineticLaw
	xdot(365) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_M_UMR_Hill_Kinetic_0) + (-1.0 * reaction_mRNA_M_UMR_degradation_0));
	
% Species:   id = mRNA_M_UbiqSoxB1, name = mRNA_M_UbiqSoxB1, affected by kineticLaw
	xdot(366) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_M_UbiqSoxB1_Hill_Kinetic_0) + (-1.0 * reaction_mRNA_M_UbiqSoxB1_degradation_0));
	
% Species:   id = mRNA_M_VEGFR, name = mRNA_M_VEGFR, affected by kineticLaw
	xdot(367) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_M_VEGFR_transcription_0) + (-1.0 * reaction_mRNA_M_VEGFR_degradation_0));
	
% Species:   id = mRNA_M_Wnt8, name = mRNA_M_Wnt8, affected by kineticLaw
	xdot(368) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_M_Wnt8_transcription_0) + (-1.0 * reaction_mRNA_M_Wnt8_degradation_0));
	
% Species:   id = mRNA_M_cB, name = mRNA_M_cB, affected by kineticLaw
	xdot(369) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_M_cB_Hill_Kinetic_0) + (-1.0 * reaction_mRNA_M_cB_degradation_0));
	
% Species:   id = mRNA_M_z13, name = mRNA_M_z13, affected by kineticLaw
	xdot(370) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_M_z13_transcription_0) + (-1.0 * reaction_mRNA_M_z13_degradation_0));
	
% Species:   id = mRNA_P_Alx1, name = mRNA_P_Alx1, affected by kineticLaw
	xdot(371) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_P_Alx1_transcription_0) + (-1.0 * reaction_mRNA_P_Alx1_degradation_0));
	
% Species:   id = mRNA_P_Apobec, name = mRNA_P_Apobec, affected by kineticLaw
	xdot(372) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_P_Apobec_transcription_0) + (-1.0 * reaction_mRNA_P_Apobec_degradation_0));
	
% Species:   id = mRNA_P_Blimp1, name = mRNA_P_Blimp1, affected by kineticLaw
	xdot(373) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_P_Blimp1_transcription_0) + (-1.0 * reaction_mRNA_P_Blimp1_degradation_0));
	
% Species:   id = mRNA_P_Bra, name = mRNA_P_Bra, affected by kineticLaw
	xdot(374) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_P_Bra_transcription_0) + (-1.0 * reaction_mRNA_P_Bra_degradation_0));
	
% Species:   id = mRNA_P_Brn, name = mRNA_P_Brn, affected by kineticLaw
	xdot(375) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_P_Brn_transcription_0) + (-1.0 * reaction_mRNA_P_Brn_degradation_0));
	
% Species:   id = mRNA_P_CAPK, name = mRNA_P_CAPK, affected by kineticLaw
	xdot(376) = (1/(compartment_Compartment__cell))*((-1.0 * reaction_mRNA_P_CAPK_degradation_0));
	
% Species:   id = mRNA_P_CyP, name = mRNA_P_CyP, affected by kineticLaw
	xdot(377) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_P_CyP_transcription_0) + (-1.0 * reaction_mRNA_P_CyP_degradation_0));
	
% Species:   id = mRNA_P_Delta, name = mRNA_P_Delta, affected by kineticLaw
	xdot(378) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_P_Delta_transcription_0) + (-1.0 * reaction_mRNA_P_Delta_degradation_0));
	
% Species:   id = mRNA_P_Dpt, name = mRNA_P_Dpt, affected by kineticLaw
	xdot(379) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_P_Dpt_transcription_0) + (-1.0 * reaction_mRNA_P_Dpt_degradation_0));
	
% Species:   id = mRNA_P_Dri, name = mRNA_P_Dri, affected by kineticLaw
	xdot(380) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_P_Dri_transcription_0) + (-1.0 * reaction_mRNA_P_Dri_degradation_0));
	
% Species:   id = mRNA_P_Endo16, name = mRNA_P_Endo16, affected by kineticLaw
	xdot(381) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_P_Endo16_transcription_0) + (-1.0 * reaction_mRNA_P_Endo16_degradation_0));
	
% Species:   id = mRNA_P_Erg, name = mRNA_P_Erg, affected by kineticLaw
	xdot(382) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_P_Erg_transcription_0) + (-1.0 * reaction_mRNA_P_Erg_degradation_0));
	
% Species:   id = mRNA_P_Ets1, name = mRNA_P_Ets1, affected by kineticLaw
	xdot(383) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_P_Ets1_transcription_0) + ( 1.0 * reaction_P_Ets1_Hill_Kinetic_0) + (-1.0 * reaction_mRNA_P_Ets1_degradation_0));
	
% Species:   id = mRNA_P_Eve, name = mRNA_P_Eve, affected by kineticLaw
	xdot(384) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_P_Eve_transcription_0) + (-1.0 * reaction_mRNA_P_Eve_degradation_0));
	
% Species:   id = mRNA_P_Ficolin, name = mRNA_P_Ficolin, affected by kineticLaw
	xdot(385) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_P_Ficolin_transcription_0) + (-1.0 * reaction_mRNA_P_Ficolin_degradation_0));
	
% Species:   id = mRNA_P_FoxA, name = mRNA_P_FoxA, affected by kineticLaw
	xdot(386) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_P_FoxA_transcription_0) + (-1.0 * reaction_mRNA_P_FoxA_degradation_0));
	
% Species:   id = mRNA_P_FoxB, name = mRNA_P_FoxB, affected by kineticLaw
	xdot(387) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_P_FoxB_transcription_0) + (-1.0 * reaction_mRNA_P_FoxB_degradation_0));
	
% Species:   id = mRNA_P_FoxN23, name = mRNA_P_FoxN23, affected by kineticLaw
	xdot(388) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_P_FoxN23_transcription_0) + (-1.0 * reaction_mRNA_P_FoxN23_degradation_0));
	
% Species:   id = mRNA_P_FoxO, name = mRNA_P_FoxO, affected by kineticLaw
	xdot(389) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_P_FoxO_transcription_0) + (-1.0 * reaction_mRNA_P_FoxO_degradation_0));
	
% Species:   id = mRNA_P_FvMo, name = mRNA_P_FvMo, affected by kineticLaw
	xdot(390) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_P_FvMo_transcription_0) + (-1.0 * reaction_mRNA_P_FvMo_degradation_0));
	
% Species:   id = mRNA_P_GataC, name = mRNA_P_GataC, affected by kineticLaw
	xdot(391) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_P_GataC_transcription_0) + (-1.0 * reaction_mRNA_P_GataC_degradation_0));
	
% Species:   id = mRNA_P_GataE, name = mRNA_P_GataE, affected by kineticLaw
	xdot(392) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_P_GataE_transcription_0) + (-1.0 * reaction_mRNA_P_GataE_degradation_0));
	
% Species:   id = mRNA_P_Gcad, name = mRNA_P_Gcad, affected by kineticLaw
	xdot(393) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_P_Gcad_transcription_0) + ( 1.0 * reaction_P_Gcad_Hill_Kinetic_0) + (-1.0 * reaction_mRNA_P_Gcad_degradation_0));
	
% Species:   id = mRNA_P_Gcm, name = mRNA_P_Gcm, affected by kineticLaw
	xdot(394) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_P_Gcm_transcription_0) + (-1.0 * reaction_mRNA_P_Gcm_degradation_0));
	
% Species:   id = mRNA_P_Gelsolin, name = mRNA_P_Gelsolin, affected by kineticLaw
	xdot(395) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_P_Gelsolin_transcription_0) + (-1.0 * reaction_mRNA_P_Gelsolin_degradation_0));
	
% Species:   id = mRNA_P_HesC, name = mRNA_P_HesC, affected by kineticLaw
	xdot(396) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_P_HesC_transcription_0) + (-1.0 * reaction_mRNA_P_HesC_degradation_0));
	
% Species:   id = mRNA_P_Hex, name = mRNA_P_Hex, affected by kineticLaw
	xdot(397) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_P_Hex_transcription_0) + (-1.0 * reaction_mRNA_P_Hex_degradation_0));
	
% Species:   id = mRNA_P_Hnf6, name = mRNA_P_Hnf6, affected by kineticLaw
	xdot(398) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_P_Hnf6_transcription_0) + (-1.0 * reaction_mRNA_P_Hnf6_degradation_0));
	
% Species:   id = mRNA_P_Hox, name = mRNA_P_Hox, affected by kineticLaw
	xdot(399) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_P_Hox_transcription_0) + (-1.0 * reaction_mRNA_P_Hox_degradation_0));
	
% Species:   id = mRNA_P_Kakapo, name = mRNA_P_Kakapo, affected by kineticLaw
	xdot(400) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_P_Kakapo_transcription_0) + (-1.0 * reaction_mRNA_P_Kakapo_degradation_0));
	
% Species:   id = mRNA_P_L1, name = mRNA_P_L1, affected by kineticLaw
	xdot(401) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_P_L1_Hill_Kinetic_0) + (-1.0 * reaction_mRNA_P_L1_degradation_0));
	
% Species:   id = mRNA_P_Lim, name = mRNA_P_Lim, affected by kineticLaw
	xdot(402) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_P_Lim_transcription_0) + (-1.0 * reaction_mRNA_P_Lim_degradation_0));
	
% Species:   id = mRNA_P_Msp130, name = mRNA_P_Msp130, affected by kineticLaw
	xdot(403) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_P_Msp130_transcription_0) + (-1.0 * reaction_mRNA_P_Msp130_degradation_0));
	
% Species:   id = mRNA_P_MspL, name = mRNA_P_MspL, affected by kineticLaw
	xdot(404) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_P_MspL_transcription_0) + (-1.0 * reaction_mRNA_P_MspL_degradation_0));
	
% Species:   id = mRNA_P_Not, name = mRNA_P_Not, affected by kineticLaw
	xdot(405) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_P_Not_transcription_0) + (-1.0 * reaction_mRNA_P_Not_degradation_0));
	
% Species:   id = mRNA_P_Nrl, name = mRNA_P_Nrl, affected by kineticLaw
	xdot(406) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_P_Nrl_transcription_0) + (-1.0 * reaction_mRNA_P_Nrl_degradation_0));
	
% Species:   id = mRNA_P_OrCt, name = mRNA_P_OrCt, affected by kineticLaw
	xdot(407) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_P_OrCt_transcription_0) + (-1.0 * reaction_mRNA_P_OrCt_degradation_0));
	
% Species:   id = mRNA_P_Otx, name = mRNA_P_Otx, affected by kineticLaw
	xdot(408) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_P_Otx_transcription_0) + ( 1.0 * reaction_P_Otx_Hill_Kinetic_0) + (-1.0 * reaction_mRNA_P_Otx_degradation_0));
	
% Species:   id = mRNA_P_Pks, name = mRNA_P_Pks, affected by kineticLaw
	xdot(409) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_P_Pks_transcription_0) + (-1.0 * reaction_mRNA_P_Pks_degradation_0));
	
% Species:   id = mRNA_P_Pmar1, name = mRNA_P_Pmar1, affected by kineticLaw
	xdot(410) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_P_Pmar1_transcription_0) + (-1.0 * reaction_mRNA_P_Pmar1_degradation_0));
	
% Species:   id = mRNA_P_Sm27, name = mRNA_P_Sm27, affected by kineticLaw
	xdot(411) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_P_Sm27_transcription_0) + (-1.0 * reaction_mRNA_P_Sm27_degradation_0));
	
% Species:   id = mRNA_P_Sm30, name = mRNA_P_Sm30, affected by kineticLaw
	xdot(412) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_P_Sm30_transcription_0) + (-1.0 * reaction_mRNA_P_Sm30_degradation_0));
	
% Species:   id = mRNA_P_Sm50, name = mRNA_P_Sm50, affected by kineticLaw
	xdot(413) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_P_Sm50_transcription_0) + (-1.0 * reaction_mRNA_P_Sm50_degradation_0));
	
% Species:   id = mRNA_P_Snail, name = mRNA_P_Snail, affected by kineticLaw
	xdot(414) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_P_Snail_transcription_0) + (-1.0 * reaction_mRNA_P_Snail_degradation_0));
	
% Species:   id = mRNA_P_SoxB1, name = mRNA_P_SoxB1, affected by kineticLaw
	xdot(415) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_P_SoxB1_transcription_0) + (-1.0 * reaction_mRNA_P_SoxB1_degradation_0));
	
% Species:   id = mRNA_P_SoxC, name = mRNA_P_SoxC, affected by kineticLaw
	xdot(416) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_P_SoxC_transcription_0) + (-1.0 * reaction_mRNA_P_SoxC_degradation_0));
	
% Species:   id = mRNA_P_SuTx, name = mRNA_P_SuTx, affected by kineticLaw
	xdot(417) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_P_SuTx_transcription_0) + (-1.0 * reaction_mRNA_P_SuTx_degradation_0));
	
% Species:   id = mRNA_P_TBr, name = mRNA_P_TBr, affected by kineticLaw
	xdot(418) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_P_TBr_transcription_0) + (-1.0 * reaction_mRNA_P_TBr_degradation_0));
	
% Species:   id = mRNA_P_Tel, name = mRNA_P_Tel, affected by kineticLaw
	xdot(419) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_P_Tel_transcription_0) + (-1.0 * reaction_mRNA_P_Tel_degradation_0));
	
% Species:   id = mRNA_P_Tgif, name = mRNA_P_Tgif, affected by kineticLaw
	xdot(420) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_P_Tgif_transcription_0) + (-1.0 * reaction_mRNA_P_Tgif_degradation_0));
	
% Species:   id = mRNA_P_UbiqAlx1, name = mRNA_P_UbiqAlx1, affected by kineticLaw
	xdot(421) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_P_UbiqAlx1_Hill_Kinetic_0) + (-1.0 * reaction_mRNA_P_UbiqAlx1_degradation_0));
	
% Species:   id = mRNA_P_UbiqES, name = mRNA_P_UbiqES, affected by kineticLaw
	xdot(422) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_P_UbiqES_Hill_Kinetic_0) + (-1.0 * reaction_mRNA_P_UbiqES_degradation_0));
	
% Species:   id = mRNA_P_UbiqEts1, name = mRNA_P_UbiqEts1, affected by kineticLaw
	xdot(423) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_P_UbiqEts1_Hill_Kinetic_0) + (-1.0 * reaction_mRNA_P_UbiqEts1_degradation_0));
	
% Species:   id = mRNA_P_UbiqHesC, name = mRNA_P_UbiqHesC, affected by kineticLaw
	xdot(424) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_P_UbiqHesC_Hill_Kinetic_0) + (-1.0 * reaction_mRNA_P_UbiqHesC_degradation_0));
	
% Species:   id = mRNA_P_UbiqHnf6, name = mRNA_P_UbiqHnf6, affected by kineticLaw
	xdot(425) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_P_UbiqHnf6_Hill_Kinetic_0) + (-1.0 * reaction_mRNA_P_UbiqHnf6_degradation_0));
	
% Species:   id = mRNA_P_UbiqSoxC, name = mRNA_P_UbiqSoxC, affected by kineticLaw
	xdot(426) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_P_UbiqSoxC_Hill_Kinetic_0) + (-1.0 * reaction_mRNA_P_UbiqSoxC_degradation_0));
	
% Species:   id = mRNA_P_UbiqTel, name = mRNA_P_UbiqTel, affected by kineticLaw
	xdot(427) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_P_UbiqTel_Hill_Kinetic_0) + (-1.0 * reaction_mRNA_P_UbiqTel_degradation_0));
	
% Species:   id = mRNA_P_VEGFR, name = mRNA_P_VEGFR, affected by kineticLaw
	xdot(428) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_P_VEGFR_transcription_0) + (-1.0 * reaction_mRNA_P_VEGFR_degradation_0));
	
% Species:   id = mRNA_P_Wnt8, name = mRNA_P_Wnt8, affected by kineticLaw
	xdot(429) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_P_Wnt8_transcription_0) + (-1.0 * reaction_mRNA_P_Wnt8_degradation_0));
	
% Species:   id = mRNA_P_cB, name = mRNA_P_cB, affected by kineticLaw
	xdot(430) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_P_cB_Hill_Kinetic_0) + (-1.0 * reaction_mRNA_P_cB_degradation_0));
	
% Species:   id = mRNA_P_z13, name = mRNA_P_z13, affected by kineticLaw
	xdot(431) = (1/(compartment_Compartment__cell))*(( 1.0 * reaction_GENE_P_z13_transcription_0) + (-1.0 * reaction_mRNA_P_z13_degradation_0));
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


