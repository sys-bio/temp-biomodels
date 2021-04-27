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
% Model name = Smallbone2013 - Yeast metabolic model with linlog rate law
%
% is http://identifiers.org/biomodels.db/MODEL1302140003
% is http://identifiers.org/biomodels.db/BIOMD0000000471
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
% Parameter:   id =  zero_flux, name = zero_flux
	global_par_zero_flux=0.0;
% Parameter:   id =  ic0002, name = ic0002
	global_par_ic0002=0.1;
% Parameter:   id =  ic0004, name = ic0004
	global_par_ic0004=0.1;
% Parameter:   id =  ic0008, name = ic0008
	global_par_ic0008=0.1;
% Parameter:   id =  ic0009, name = ic0009
	global_par_ic0009=0.1;
% Parameter:   id =  ic0010, name = ic0010
	global_par_ic0010=0.1;
% Parameter:   id =  ic0015, name = ic0015
	global_par_ic0015=0.1;
% Parameter:   id =  ic0016, name = ic0016
	global_par_ic0016=0.1;
% Parameter:   id =  ic0018, name = ic0018
	global_par_ic0018=0.1;
% Parameter:   id =  ic0019, name = ic0019
	global_par_ic0019=0.1;
% Parameter:   id =  ic0028, name = ic0028
	global_par_ic0028=0.1;
% Parameter:   id =  ic0037, name = ic0037
	global_par_ic0037=0.1;
% Parameter:   id =  ic0039, name = ic0039
	global_par_ic0039=0.1;
% Parameter:   id =  ic0056, name = ic0056
	global_par_ic0056=0.1;
% Parameter:   id =  ic0061, name = ic0061
	global_par_ic0061=0.1;
% Parameter:   id =  ic0066, name = ic0066
	global_par_ic0066=0.1;
% Parameter:   id =  ic0075, name = ic0075
	global_par_ic0075=0.1;
% Parameter:   id =  ic0076, name = ic0076
	global_par_ic0076=0.1;
% Parameter:   id =  ic0077, name = ic0077
	global_par_ic0077=0.1;
% Parameter:   id =  ic0078, name = ic0078
	global_par_ic0078=0.1;
% Parameter:   id =  ic0082, name = ic0082
	global_par_ic0082=0.1;
% Parameter:   id =  ic0086, name = ic0086
	global_par_ic0086=0.1;
% Parameter:   id =  ic0089, name = ic0089
	global_par_ic0089=0.1;
% Parameter:   id =  ic0118, name = ic0118
	global_par_ic0118=0.1;
% Parameter:   id =  ic0120, name = ic0120
	global_par_ic0120=0.1;
% Parameter:   id =  ic0122, name = ic0122
	global_par_ic0122=0.1;
% Parameter:   id =  ic0126, name = ic0126
	global_par_ic0126=0.1;
% Parameter:   id =  ic0141, name = ic0141
	global_par_ic0141=0.1;
% Parameter:   id =  ic0142, name = ic0142
	global_par_ic0142=0.1;
% Parameter:   id =  ic0145, name = ic0145
	global_par_ic0145=0.1;
% Parameter:   id =  ic0146, name = ic0146
	global_par_ic0146=0.1;
% Parameter:   id =  ic0158, name = ic0158
	global_par_ic0158=0.1;
% Parameter:   id =  ic0162, name = ic0162
	global_par_ic0162=0.1;
% Parameter:   id =  ic0165, name = ic0165
	global_par_ic0165=0.1;
% Parameter:   id =  ic0176, name = ic0176
	global_par_ic0176=0.1;
% Parameter:   id =  ic0178, name = ic0178
	global_par_ic0178=0.1;
% Parameter:   id =  ic0180, name = ic0180
	global_par_ic0180=0.1;
% Parameter:   id =  ic0188, name = ic0188
	global_par_ic0188=0.1;
% Parameter:   id =  ic0190, name = ic0190
	global_par_ic0190=0.1;
% Parameter:   id =  ic0201, name = ic0201
	global_par_ic0201=0.1;
% Parameter:   id =  ic0204, name = ic0204
	global_par_ic0204=0.1;
% Parameter:   id =  ic0207, name = ic0207
	global_par_ic0207=0.1;
% Parameter:   id =  ic0209, name = ic0209
	global_par_ic0209=0.1;
% Parameter:   id =  ic0210, name = ic0210
	global_par_ic0210=0.1;
% Parameter:   id =  ic0211, name = ic0211
	global_par_ic0211=0.1;
% Parameter:   id =  ic0218, name = ic0218
	global_par_ic0218=0.1;
% Parameter:   id =  ic0231, name = ic0231
	global_par_ic0231=0.1;
% Parameter:   id =  ic0232, name = ic0232
	global_par_ic0232=0.1;
% Parameter:   id =  ic0258, name = ic0258
	global_par_ic0258=0.1;
% Parameter:   id =  ic0259, name = ic0259
	global_par_ic0259=0.1;
% Parameter:   id =  ic0260, name = ic0260
	global_par_ic0260=0.1;
% Parameter:   id =  ic0261, name = ic0261
	global_par_ic0261=0.1;
% Parameter:   id =  ic0262, name = ic0262
	global_par_ic0262=0.1;
% Parameter:   id =  ic0291, name = ic0291
	global_par_ic0291=0.1;
% Parameter:   id =  ic0295, name = ic0295
	global_par_ic0295=0.1;
% Parameter:   id =  ic0296, name = ic0296
	global_par_ic0296=0.1;
% Parameter:   id =  ic0297, name = ic0297
	global_par_ic0297=0.1;
% Parameter:   id =  ic0298, name = ic0298
	global_par_ic0298=0.1;
% Parameter:   id =  ic0299, name = ic0299
	global_par_ic0299=0.1;
% Parameter:   id =  ic0300, name = ic0300
	global_par_ic0300=0.1;
% Parameter:   id =  ic0301, name = ic0301
	global_par_ic0301=0.1;
% Parameter:   id =  ic0302, name = ic0302
	global_par_ic0302=0.1;
% Parameter:   id =  ic0304, name = ic0304
	global_par_ic0304=0.1;
% Parameter:   id =  ic0306, name = ic0306
	global_par_ic0306=0.1;
% Parameter:   id =  ic0312, name = ic0312
	global_par_ic0312=0.1;
% Parameter:   id =  ic0313, name = ic0313
	global_par_ic0313=0.1;
% Parameter:   id =  ic0314, name = ic0314
	global_par_ic0314=0.1;
% Parameter:   id =  ic0322, name = ic0322
	global_par_ic0322=0.1;
% Parameter:   id =  ic0324, name = ic0324
	global_par_ic0324=0.1;
% Parameter:   id =  ic0325, name = ic0325
	global_par_ic0325=0.1;
% Parameter:   id =  ic0326, name = ic0326
	global_par_ic0326=0.1;
% Parameter:   id =  ic0327, name = ic0327
	global_par_ic0327=0.1;
% Parameter:   id =  ic0328, name = ic0328
	global_par_ic0328=0.1;
% Parameter:   id =  ic0349, name = ic0349
	global_par_ic0349=0.1;
% Parameter:   id =  ic0362, name = ic0362
	global_par_ic0362=0.1;
% Parameter:   id =  ic0367, name = ic0367
	global_par_ic0367=0.1;
% Parameter:   id =  ic0373, name = ic0373
	global_par_ic0373=0.1;
% Parameter:   id =  ic0380, name = ic0380
	global_par_ic0380=0.1;
% Parameter:   id =  ic0386, name = ic0386
	global_par_ic0386=0.1;
% Parameter:   id =  ic0390, name = ic0390
	global_par_ic0390=0.1;
% Parameter:   id =  ic0393, name = ic0393
	global_par_ic0393=0.1;
% Parameter:   id =  ic0394, name = ic0394
	global_par_ic0394=0.1;
% Parameter:   id =  ic0403, name = ic0403
	global_par_ic0403=0.1;
% Parameter:   id =  ic0404, name = ic0404
	global_par_ic0404=0.1;
% Parameter:   id =  ic0409, name = ic0409
	global_par_ic0409=0.1;
% Parameter:   id =  ic0419, name = ic0419
	global_par_ic0419=0.1;
% Parameter:   id =  ic0420, name = ic0420
	global_par_ic0420=1.0;
% Parameter:   id =  ic0423, name = ic0423
	global_par_ic0423=0.1;
% Parameter:   id =  ic0427, name = ic0427
	global_par_ic0427=0.1;
% Parameter:   id =  ic0428, name = ic0428
	global_par_ic0428=0.1;
% Parameter:   id =  ic0430, name = ic0430
	global_par_ic0430=0.1;
% Parameter:   id =  ic0432, name = ic0432
	global_par_ic0432=0.1;
% Parameter:   id =  ic0434, name = ic0434
	global_par_ic0434=0.1;
% Parameter:   id =  ic0445, name = ic0445
	global_par_ic0445=0.1;
% Parameter:   id =  ic0454, name = ic0454
	global_par_ic0454=0.1;
% Parameter:   id =  ic0455, name = ic0455
	global_par_ic0455=0.1;
% Parameter:   id =  ic0456, name = ic0456
	global_par_ic0456=0.1;
% Parameter:   id =  ic0467, name = ic0467
	global_par_ic0467=0.1;
% Parameter:   id =  ic0471, name = ic0471
	global_par_ic0471=0.1;
% Parameter:   id =  ic0475, name = ic0475
	global_par_ic0475=0.1;
% Parameter:   id =  ic0481, name = ic0481
	global_par_ic0481=0.1;
% Parameter:   id =  ic0493, name = ic0493
	global_par_ic0493=0.1;
% Parameter:   id =  ic0499, name = ic0499
	global_par_ic0499=0.1;
% Parameter:   id =  ic0515, name = ic0515
	global_par_ic0515=0.1;
% Parameter:   id =  ic0516, name = ic0516
	global_par_ic0516=0.1;
% Parameter:   id =  ic0522, name = ic0522
	global_par_ic0522=0.1;
% Parameter:   id =  ic0526, name = ic0526
	global_par_ic0526=0.1;
% Parameter:   id =  ic0529, name = ic0529
	global_par_ic0529=0.1;
% Parameter:   id =  ic0539, name = ic0539
	global_par_ic0539=0.1;
% Parameter:   id =  ic0542, name = ic0542
	global_par_ic0542=0.1;
% Parameter:   id =  ic0550, name = ic0550
	global_par_ic0550=0.1;
% Parameter:   id =  ic0551, name = ic0551
	global_par_ic0551=0.1;
% Parameter:   id =  ic0555, name = ic0555
	global_par_ic0555=0.1;
% Parameter:   id =  ic0557, name = ic0557
	global_par_ic0557=0.1;
% Parameter:   id =  ic0563, name = ic0563
	global_par_ic0563=0.1;
% Parameter:   id =  ic0565, name = ic0565
	global_par_ic0565=1.0;
% Parameter:   id =  ic0567, name = ic0567
	global_par_ic0567=0.1;
% Parameter:   id =  ic0568, name = ic0568
	global_par_ic0568=0.1;
% Parameter:   id =  ic0573, name = ic0573
	global_par_ic0573=0.1;
% Parameter:   id =  ic0574, name = ic0574
	global_par_ic0574=0.1;
% Parameter:   id =  ic0577, name = ic0577
	global_par_ic0577=0.1;
% Parameter:   id =  ic0581, name = ic0581
	global_par_ic0581=0.1;
% Parameter:   id =  ic0582, name = ic0582
	global_par_ic0582=0.1;
% Parameter:   id =  ic0584, name = ic0584
	global_par_ic0584=0.1;
% Parameter:   id =  ic0586, name = ic0586
	global_par_ic0586=0.1;
% Parameter:   id =  ic0587, name = ic0587
	global_par_ic0587=0.1;
% Parameter:   id =  ic0589, name = ic0589
	global_par_ic0589=0.1;
% Parameter:   id =  ic0595, name = ic0595
	global_par_ic0595=0.1;
% Parameter:   id =  ic0602, name = ic0602
	global_par_ic0602=0.1;
% Parameter:   id =  ic0613, name = ic0613
	global_par_ic0613=0.1;
% Parameter:   id =  ic0615, name = ic0615
	global_par_ic0615=0.1;
% Parameter:   id =  ic0619, name = ic0619
	global_par_ic0619=0.1;
% Parameter:   id =  ic0625, name = ic0625
	global_par_ic0625=0.1;
% Parameter:   id =  ic0629, name = ic0629
	global_par_ic0629=0.1;
% Parameter:   id =  ic0633, name = ic0633
	global_par_ic0633=0.1;
% Parameter:   id =  ic0644, name = ic0644
	global_par_ic0644=0.1;
% Parameter:   id =  ic0645, name = ic0645
	global_par_ic0645=0.1;
% Parameter:   id =  ic0649, name = ic0649
	global_par_ic0649=0.1;
% Parameter:   id =  ic0654, name = ic0654
	global_par_ic0654=0.1;
% Parameter:   id =  ic0656, name = ic0656
	global_par_ic0656=0.1;
% Parameter:   id =  ic0657, name = ic0657
	global_par_ic0657=0.1;
% Parameter:   id =  ic0662, name = ic0662
	global_par_ic0662=0.1;
% Parameter:   id =  ic0664, name = ic0664
	global_par_ic0664=0.1;
% Parameter:   id =  ic0666, name = ic0666
	global_par_ic0666=0.1;
% Parameter:   id =  ic0672, name = ic0672
	global_par_ic0672=0.1;
% Parameter:   id =  ic0700, name = ic0700
	global_par_ic0700=0.1;
% Parameter:   id =  ic0709, name = ic0709
	global_par_ic0709=0.1;
% Parameter:   id =  ic0710, name = ic0710
	global_par_ic0710=0.1;
% Parameter:   id =  ic0722, name = ic0722
	global_par_ic0722=0.1;
% Parameter:   id =  ic0725, name = ic0725
	global_par_ic0725=0.1;
% Parameter:   id =  ic0739, name = ic0739
	global_par_ic0739=0.1;
% Parameter:   id =  ic0743, name = ic0743
	global_par_ic0743=0.1;
% Parameter:   id =  ic0745, name = ic0745
	global_par_ic0745=0.1;
% Parameter:   id =  ic0747, name = ic0747
	global_par_ic0747=0.1;
% Parameter:   id =  ic0748, name = ic0748
	global_par_ic0748=0.1;
% Parameter:   id =  ic0750, name = ic0750
	global_par_ic0750=0.1;
% Parameter:   id =  ic0754, name = ic0754
	global_par_ic0754=0.1;
% Parameter:   id =  ic0757, name = ic0757
	global_par_ic0757=0.1;
% Parameter:   id =  ic0764, name = ic0764
	global_par_ic0764=0.1;
% Parameter:   id =  ic0767, name = ic0767
	global_par_ic0767=0.1;
% Parameter:   id =  ic0773, name = ic0773
	global_par_ic0773=0.1;
% Parameter:   id =  ic0782, name = ic0782
	global_par_ic0782=0.1;
% Parameter:   id =  ic0785, name = ic0785
	global_par_ic0785=0.1;
% Parameter:   id =  ic0832, name = ic0832
	global_par_ic0832=0.1;
% Parameter:   id =  ic0835, name = ic0835
	global_par_ic0835=0.1;
% Parameter:   id =  ic0836, name = ic0836
	global_par_ic0836=0.1;
% Parameter:   id =  ic0837, name = ic0837
	global_par_ic0837=0.1;
% Parameter:   id =  ic0841, name = ic0841
	global_par_ic0841=0.1;
% Parameter:   id =  ic0847, name = ic0847
	global_par_ic0847=0.1;
% Parameter:   id =  ic0849, name = ic0849
	global_par_ic0849=0.1;
% Parameter:   id =  ic0918, name = ic0918
	global_par_ic0918=0.1;
% Parameter:   id =  ic0940, name = ic0940
	global_par_ic0940=0.1;
% Parameter:   id =  ic0943, name = ic0943
	global_par_ic0943=0.1;
% Parameter:   id =  ic0951, name = ic0951
	global_par_ic0951=0.1;
% Parameter:   id =  ic0953, name = ic0953
	global_par_ic0953=0.1;
% Parameter:   id =  ic0955, name = ic0955
	global_par_ic0955=0.1;
% Parameter:   id =  ic0959, name = ic0959
	global_par_ic0959=0.1;
% Parameter:   id =  ic0965, name = ic0965
	global_par_ic0965=0.1;
% Parameter:   id =  ic0969, name = ic0969
	global_par_ic0969=0.1;
% Parameter:   id =  ic0973, name = ic0973
	global_par_ic0973=0.1;
% Parameter:   id =  ic0978, name = ic0978
	global_par_ic0978=0.1;
% Parameter:   id =  ic0979, name = ic0979
	global_par_ic0979=0.1;
% Parameter:   id =  ic0980, name = ic0980
	global_par_ic0980=0.1;
% Parameter:   id =  ic0981, name = ic0981
	global_par_ic0981=0.1;
% Parameter:   id =  ic0991, name = ic0991
	global_par_ic0991=0.1;
% Parameter:   id =  ic0999, name = ic0999
	global_par_ic0999=0.1;
% Parameter:   id =  ic1003, name = ic1003
	global_par_ic1003=0.1;
% Parameter:   id =  ic1006, name = ic1006
	global_par_ic1006=0.1;
% Parameter:   id =  ic1010, name = ic1010
	global_par_ic1010=0.1;
% Parameter:   id =  ic1011, name = ic1011
	global_par_ic1011=0.1;
% Parameter:   id =  ic1012, name = ic1012
	global_par_ic1012=0.1;
% Parameter:   id =  ic1014, name = ic1014
	global_par_ic1014=0.1;
% Parameter:   id =  ic1016, name = ic1016
	global_par_ic1016=0.1;
% Parameter:   id =  ic1021, name = ic1021
	global_par_ic1021=0.1;
% Parameter:   id =  ic1025, name = ic1025
	global_par_ic1025=0.1;
% Parameter:   id =  ic1029, name = ic1029
	global_par_ic1029=0.1;
% Parameter:   id =  ic1032, name = ic1032
	global_par_ic1032=0.1;
% Parameter:   id =  ic1035, name = ic1035
	global_par_ic1035=0.1;
% Parameter:   id =  ic1038, name = ic1038
	global_par_ic1038=0.1;
% Parameter:   id =  ic1039, name = ic1039
	global_par_ic1039=0.1;
% Parameter:   id =  ic1045, name = ic1045
	global_par_ic1045=0.1;
% Parameter:   id =  ic1048, name = ic1048
	global_par_ic1048=0.1;
% Parameter:   id =  ic1051, name = ic1051
	global_par_ic1051=0.1;
% Parameter:   id =  ic1056, name = ic1056
	global_par_ic1056=0.1;
% Parameter:   id =  ic1059, name = ic1059
	global_par_ic1059=0.1;
% Parameter:   id =  ic1065, name = ic1065
	global_par_ic1065=0.1;
% Parameter:   id =  ic1073, name = ic1073
	global_par_ic1073=0.1;
% Parameter:   id =  ic1077, name = ic1077
	global_par_ic1077=0.1;
% Parameter:   id =  ic1084, name = ic1084
	global_par_ic1084=0.1;
% Parameter:   id =  ic1099, name = ic1099
	global_par_ic1099=0.1;
% Parameter:   id =  ic1101, name = ic1101
	global_par_ic1101=0.1;
% Parameter:   id =  ic1107, name = ic1107
	global_par_ic1107=0.1;
% Parameter:   id =  ic1148, name = ic1148
	global_par_ic1148=0.1;
% Parameter:   id =  ic1153, name = ic1153
	global_par_ic1153=0.1;
% Parameter:   id =  ic1161, name = ic1161
	global_par_ic1161=0.1;
% Parameter:   id =  ic1176, name = ic1176
	global_par_ic1176=0.1;
% Parameter:   id =  ic1182, name = ic1182
	global_par_ic1182=0.1;
% Parameter:   id =  ic1187, name = ic1187
	global_par_ic1187=0.1;
% Parameter:   id =  ic1191, name = ic1191
	global_par_ic1191=0.1;
% Parameter:   id =  ic1192, name = ic1192
	global_par_ic1192=0.1;
% Parameter:   id =  ic1194, name = ic1194
	global_par_ic1194=0.1;
% Parameter:   id =  ic1198, name = ic1198
	global_par_ic1198=0.1;
% Parameter:   id =  ic1203, name = ic1203
	global_par_ic1203=0.1;
% Parameter:   id =  ic1207, name = ic1207
	global_par_ic1207=0.1;
% Parameter:   id =  ic1212, name = ic1212
	global_par_ic1212=0.1;
% Parameter:   id =  ic1233, name = ic1233
	global_par_ic1233=0.1;
% Parameter:   id =  ic1238, name = ic1238
	global_par_ic1238=0.1;
% Parameter:   id =  ic1255, name = ic1255
	global_par_ic1255=0.1;
% Parameter:   id =  ic1266, name = ic1266
	global_par_ic1266=0.1;
% Parameter:   id =  ic1269, name = ic1269
	global_par_ic1269=0.1;
% Parameter:   id =  ic1270, name = ic1270
	global_par_ic1270=0.1;
% Parameter:   id =  ic1271, name = ic1271
	global_par_ic1271=0.1;
% Parameter:   id =  ic1275, name = ic1275
	global_par_ic1275=0.1;
% Parameter:   id =  ic1277, name = ic1277
	global_par_ic1277=1.0;
% Parameter:   id =  ic1286, name = ic1286
	global_par_ic1286=0.1;
% Parameter:   id =  ic1302, name = ic1302
	global_par_ic1302=0.1;
% Parameter:   id =  ic1314, name = ic1314
	global_par_ic1314=0.1;
% Parameter:   id =  ic1322, name = ic1322
	global_par_ic1322=0.1;
% Parameter:   id =  ic1324, name = ic1324
	global_par_ic1324=1.0;
% Parameter:   id =  ic1331, name = ic1331
	global_par_ic1331=0.1;
% Parameter:   id =  ic1337, name = ic1337
	global_par_ic1337=0.1;
% Parameter:   id =  ic1342, name = ic1342
	global_par_ic1342=0.1;
% Parameter:   id =  ic1343, name = ic1343
	global_par_ic1343=0.1;
% Parameter:   id =  ic1346, name = ic1346
	global_par_ic1346=0.1;
% Parameter:   id =  ic1351, name = ic1351
	global_par_ic1351=0.1;
% Parameter:   id =  ic1360, name = ic1360
	global_par_ic1360=0.1;
% Parameter:   id =  ic1364, name = ic1364
	global_par_ic1364=0.1;
% Parameter:   id =  ic1365, name = ic1365
	global_par_ic1365=0.1;
% Parameter:   id =  ic1366, name = ic1366
	global_par_ic1366=0.1;
% Parameter:   id =  ic1376, name = ic1376
	global_par_ic1376=0.1;
% Parameter:   id =  ic1377, name = ic1377
	global_par_ic1377=0.1;
% Parameter:   id =  ic1379, name = ic1379
	global_par_ic1379=0.1;
% Parameter:   id =  ic1386, name = ic1386
	global_par_ic1386=0.1;
% Parameter:   id =  ic1399, name = ic1399
	global_par_ic1399=0.1;
% Parameter:   id =  ic1405, name = ic1405
	global_par_ic1405=0.1;
% Parameter:   id =  ic1408, name = ic1408
	global_par_ic1408=0.1;
% Parameter:   id =  ic1413, name = ic1413
	global_par_ic1413=0.1;
% Parameter:   id =  ic1416, name = ic1416
	global_par_ic1416=0.1;
% Parameter:   id =  ic1427, name = ic1427
	global_par_ic1427=0.1;
% Parameter:   id =  ic1428, name = ic1428
	global_par_ic1428=0.1;
% Parameter:   id =  ic1429, name = ic1429
	global_par_ic1429=0.1;
% Parameter:   id =  ic1445, name = ic1445
	global_par_ic1445=0.1;
% Parameter:   id =  ic1447, name = ic1447
	global_par_ic1447=0.1;
% Parameter:   id =  ic1449, name = ic1449
	global_par_ic1449=0.1;
% Parameter:   id =  ic1454, name = ic1454
	global_par_ic1454=0.1;
% Parameter:   id =  ic1467, name = ic1467
	global_par_ic1467=0.1;
% Parameter:   id =  ic1468, name = ic1468
	global_par_ic1468=1.0;
% Parameter:   id =  ic1469, name = ic1469
	global_par_ic1469=0.1;
% Parameter:   id =  ic1487, name = ic1487
	global_par_ic1487=0.1;
% Parameter:   id =  ic1491, name = ic1491
	global_par_ic1491=0.1;
% Parameter:   id =  ic1520, name = ic1520
	global_par_ic1520=0.1;
% Parameter:   id =  ic1524, name = ic1524
	global_par_ic1524=0.1;
% Parameter:   id =  ic1527, name = ic1527
	global_par_ic1527=0.1;
% Parameter:   id =  ic1533, name = ic1533
	global_par_ic1533=0.1;
% Parameter:   id =  ic1535, name = ic1535
	global_par_ic1535=0.1;
% Parameter:   id =  ic1537, name = ic1537
	global_par_ic1537=0.1;
% Parameter:   id =  ic1538, name = ic1538
	global_par_ic1538=0.1;
% Parameter:   id =  ic1543, name = ic1543
	global_par_ic1543=0.1;
% Parameter:   id =  ic1545, name = ic1545
	global_par_ic1545=0.1;
% Parameter:   id =  ic1559, name = ic1559
	global_par_ic1559=0.1;
% Parameter:   id =  ic1561, name = ic1561
	global_par_ic1561=0.1;
% Parameter:   id =  ic1565, name = ic1565
	global_par_ic1565=0.1;
% Parameter:   id =  ic1569, name = ic1569
	global_par_ic1569=0.1;
% Parameter:   id =  ic1576, name = ic1576
	global_par_ic1576=0.1;
% Parameter:   id =  ic1577, name = ic1577
	global_par_ic1577=0.1;
% Parameter:   id =  ic1578, name = ic1578
	global_par_ic1578=0.1;
% Parameter:   id =  ic1579, name = ic1579
	global_par_ic1579=0.1;
% Parameter:   id =  ic1582, name = ic1582
	global_par_ic1582=0.1;
% Parameter:   id =  ic1583, name = ic1583
	global_par_ic1583=0.1;
% Parameter:   id =  ic1585, name = ic1585
	global_par_ic1585=0.1;
% Parameter:   id =  ic1587, name = ic1587
	global_par_ic1587=0.1;
% Parameter:   id =  ic1589, name = ic1589
	global_par_ic1589=0.1;
% Parameter:   id =  ic1590, name = ic1590
	global_par_ic1590=0.1;
% Parameter:   id =  ic1591, name = ic1591
	global_par_ic1591=0.1;
% Parameter:   id =  ic1593, name = ic1593
	global_par_ic1593=0.1;
% Parameter:   id =  ic1594, name = ic1594
	global_par_ic1594=0.1;
% Parameter:   id =  ic1596, name = ic1596
	global_par_ic1596=0.1;
% Parameter:   id =  ic1598, name = ic1598
	global_par_ic1598=0.1;
% Parameter:   id =  ic1600, name = ic1600
	global_par_ic1600=0.1;
% Parameter:   id =  ic1602, name = ic1602
	global_par_ic1602=0.1;
% Parameter:   id =  ic1604, name = ic1604
	global_par_ic1604=0.1;
% Parameter:   id =  ic1606, name = ic1606
	global_par_ic1606=0.1;
% Parameter:   id =  ic1607, name = ic1607
	global_par_ic1607=0.1;
% Parameter:   id =  ic1608, name = ic1608
	global_par_ic1608=0.1;
% Parameter:   id =  ic1610, name = ic1610
	global_par_ic1610=0.1;
% Parameter:   id =  ic1612, name = ic1612
	global_par_ic1612=0.1;
% Parameter:   id =  ic1614, name = ic1614
	global_par_ic1614=0.1;
% Parameter:   id =  ic1616, name = ic1616
	global_par_ic1616=0.1;
% Parameter:   id =  ic1620, name = ic1620
	global_par_ic1620=0.1;

% Reaction: id = r_0005, name = 1,3-beta-glucan synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0005_FLUX_VALUE=0.0430685067991607;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0005_v0=0.0430685067991607;
	% Local Parameter:   id =  ep1543, name = ep1543
	reaction_r_0005_ep1543=1.0;
	% Local Parameter:   id =  ep0002, name = ep0002
	reaction_r_0005_ep0002=-1.0;
	% Local Parameter:   id =  ep1538, name = ep1538
	reaction_r_0005_ep1538=-1.0;

	reaction_r_0005=compartment_cell*reaction_r_0005_v0*(1+reaction_r_0005_ep1543*log(x(272)/global_par_ic1543)+reaction_r_0005_ep0002*log(x(1)/global_par_ic0002)+reaction_r_0005_ep1538*log(x(271)/global_par_ic1538));

% Reaction: id = r_0006, name = 1,6-beta-glucan synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0006_FLUX_VALUE=0.0430685067991607;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0006_v0=0.0430685067991607;
	% Local Parameter:   id =  ep1543, name = ep1543
	reaction_r_0006_ep1543=1.0;
	% Local Parameter:   id =  ep0004, name = ep0004
	reaction_r_0006_ep0004=-1.0;
	% Local Parameter:   id =  ep1538, name = ep1538
	reaction_r_0006_ep1538=-1.0;

	reaction_r_0006=compartment_cell*reaction_r_0006_v0*(1+reaction_r_0006_ep1543*log(x(272)/global_par_ic1543)+reaction_r_0006_ep0004*log(x(2)/global_par_ic0004)+reaction_r_0006_ep1538*log(x(271)/global_par_ic1538));

% Reaction: id = r_0007, name = 1-(5-phosphoribosyl)-5-[(5-phosphoribosylamino)methylideneamino)imidazole-4-carboxamide isomerase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0007_FLUX_VALUE=0.00251625132250899;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0007_v0=0.00251625132250899;
	% Local Parameter:   id =  ep0077, name = ep0077
	reaction_r_0007_ep0077=1.0;
	% Local Parameter:   id =  ep0312, name = ep0312
	reaction_r_0007_ep0312=-1.0;

	reaction_r_0007=compartment_cell*reaction_r_0007_v0*(1+reaction_r_0007_ep0077*log(x(18)/global_par_ic0077)+reaction_r_0007_ep0312*log(x(64)/global_par_ic0312));

% Reaction: id = r_0008, name = 1-acyl-sn-gylcerol-3-phosphate acyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0008_FLUX_VALUE=2.40277332169094E-4;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0008_v0=2.40277332169094E-4;
	% Local Parameter:   id =  ep0082, name = ep0082
	reaction_r_0008_ep0082=1.0;
	% Local Parameter:   id =  ep0380, name = ep0380
	reaction_r_0008_ep0380=1.0;
	% Local Parameter:   id =  ep0529, name = ep0529
	reaction_r_0008_ep0529=-1.0;
	% Local Parameter:   id =  ep1331, name = ep1331
	reaction_r_0008_ep1331=-1.0;

	reaction_r_0008=compartment_cell*reaction_r_0008_v0*(1+reaction_r_0008_ep0082*log(x(20)/global_par_ic0082)+reaction_r_0008_ep0380*log(x(77)/global_par_ic0380)+reaction_r_0008_ep0529*log(x(106)/global_par_ic0529)+reaction_r_0008_ep1331*log(x(235)/global_par_ic1331));

% Reaction: id = r_0012, name = 1-pyrroline-5-carboxylate dehydrogenase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0012_FLUX_VALUE=0.00625077817220527;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0012_v0=0.00625077817220527;
	% Local Parameter:   id =  ep0991, name = ep0991
	reaction_r_0012_ep0991=1.0;
	% Local Parameter:   id =  ep1203, name = ep1203
	reaction_r_0012_ep1203=1.0;
	% Local Parameter:   id =  ep0118, name = ep0118
	reaction_r_0012_ep0118=-1.0;
	% Local Parameter:   id =  ep1198, name = ep1198
	reaction_r_0012_ep1198=-1.0;

	reaction_r_0012=compartment_cell*reaction_r_0012_v0*(1+reaction_r_0012_ep0991*log(x(182)/global_par_ic0991)+reaction_r_0012_ep1203*log(x(220)/global_par_ic1203)+reaction_r_0012_ep0118*log(x(23)/global_par_ic0118)+reaction_r_0012_ep1198*log(x(219)/global_par_ic1198));

% Reaction: id = r_0014, name = 2,5-diamino-6-ribitylamino-4(3H)-pyrimidinone 5'-phosphate deaminase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0014_FLUX_VALUE=3.75729835487922E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0014_v0=3.75729835487922E-5;
	% Local Parameter:   id =  ep0142, name = ep0142
	reaction_r_0014_ep0142=1.0;
	% Local Parameter:   id =  ep0313, name = ep0313
	reaction_r_0014_ep0313=-1.0;
	% Local Parameter:   id =  ep0419, name = ep0419
	reaction_r_0014_ep0419=-1.0;

	reaction_r_0014=compartment_cell*reaction_r_0014_v0*(1+reaction_r_0014_ep0142*log(x(28)/global_par_ic0142)+reaction_r_0014_ep0313*log(x(65)/global_par_ic0313)+reaction_r_0014_ep0419*log(x(85)/global_par_ic0419));

% Reaction: id = r_0015, name = 2,5-diamino-6-ribosylamino-4(3H)-pyrimidinone 5'-phosphate reductase (NADPH)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0015_FLUX_VALUE=3.75729835487922E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0015_v0=3.75729835487922E-5;
	% Local Parameter:   id =  ep0141, name = ep0141
	reaction_r_0015_ep0141=1.0;
	% Local Parameter:   id =  ep1212, name = ep1212
	reaction_r_0015_ep1212=1.0;
	% Local Parameter:   id =  ep0142, name = ep0142
	reaction_r_0015_ep0142=-1.0;
	% Local Parameter:   id =  ep1207, name = ep1207
	reaction_r_0015_ep1207=-1.0;

	reaction_r_0015=compartment_cell*reaction_r_0015_v0*(1+reaction_r_0015_ep0141*log(x(27)/global_par_ic0141)+reaction_r_0015_ep1212*log(x(222)/global_par_ic1212)+reaction_r_0015_ep0142*log(x(28)/global_par_ic0142)+reaction_r_0015_ep1207*log(x(221)/global_par_ic1207));

% Reaction: id = r_0016, name = 2-aceto-2-hydroxybutanoate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0016_FLUX_VALUE=0.00965062714996943;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0016_v0=0.00965062714996943;
	% Local Parameter:   id =  ep0178, name = ep0178
	reaction_r_0016_ep0178=1.0;
	% Local Parameter:   id =  ep1399, name = ep1399
	reaction_r_0016_ep1399=1.0;
	% Local Parameter:   id =  ep0039, name = ep0039
	reaction_r_0016_ep0039=-1.0;
	% Local Parameter:   id =  ep0456, name = ep0456
	reaction_r_0016_ep0456=-1.0;

	reaction_r_0016=compartment_cell*reaction_r_0016_v0*(1+reaction_r_0016_ep0178*log(x(35)/global_par_ic0178)+reaction_r_0016_ep1399*log(x(249)/global_par_ic1399)+reaction_r_0016_ep0039*log(x(12)/global_par_ic0039)+reaction_r_0016_ep0456*log(x(95)/global_par_ic0456));

% Reaction: id = r_0018, name = 2-aminoadipate transaminase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0018_FLUX_VALUE=0.01086200797138;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0018_v0=0.01086200797138;
	% Local Parameter:   id =  ep0176, name = ep0176
	reaction_r_0018_ep0176=1.0;
	% Local Parameter:   id =  ep0991, name = ep0991
	reaction_r_0018_ep0991=1.0;
	% Local Parameter:   id =  ep0180, name = ep0180
	reaction_r_0018_ep0180=-1.0;
	% Local Parameter:   id =  ep0953, name = ep0953
	reaction_r_0018_ep0953=-1.0;

	reaction_r_0018=compartment_cell*reaction_r_0018_v0*(1+reaction_r_0018_ep0176*log(x(34)/global_par_ic0176)+reaction_r_0018_ep0991*log(x(182)/global_par_ic0991)+reaction_r_0018_ep0180*log(x(36)/global_par_ic0180)+reaction_r_0018_ep0953*log(x(172)/global_par_ic0953));

% Reaction: id = r_0020, name = 2-deoxy-D-arabino-heptulosonate 7-phosphate synthetase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0020_FLUX_VALUE=0.0100308480322675;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0020_v0=0.0100308480322675;
	% Local Parameter:   id =  ep0551, name = ep0551
	reaction_r_0020_ep0551=1.0;
	% Local Parameter:   id =  ep1360, name = ep1360
	reaction_r_0020_ep1360=1.0;
	% Local Parameter:   id =  ep0349, name = ep0349
	reaction_r_0020_ep0349=-1.0;
	% Local Parameter:   id =  ep1322, name = ep1322
	reaction_r_0020_ep1322=-1.0;

	reaction_r_0020=compartment_cell*reaction_r_0020_v0*(1+reaction_r_0020_ep0551*log(x(110)/global_par_ic0551)+reaction_r_0020_ep1360*log(x(241)/global_par_ic1360)+reaction_r_0020_ep0349*log(x(73)/global_par_ic0349)+reaction_r_0020_ep1322*log(x(234)/global_par_ic1322));

% Reaction: id = r_0023, name = 2-isopropylmalate hydratase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0023_FLUX_VALUE=0.0112491235594474;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0023_v0=0.0112491235594474;
	% Local Parameter:   id =  ep0162, name = ep0162
	reaction_r_0023_ep0162=1.0;
	% Local Parameter:   id =  ep0165, name = ep0165
	reaction_r_0023_ep0165=-1.0;

	reaction_r_0023=compartment_cell*reaction_r_0023_v0*(1+reaction_r_0023_ep0162*log(x(32)/global_par_ic0162)+reaction_r_0023_ep0165*log(x(33)/global_par_ic0165));

% Reaction: id = r_0024, name = 2-isopropylmalate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0024_FLUX_VALUE=0.0112491235594486;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0024_v0=0.0112491235594486;
	% Local Parameter:   id =  ep0232, name = ep0232
	reaction_r_0024_ep0232=1.0;
	% Local Parameter:   id =  ep0373, name = ep0373
	reaction_r_0024_ep0373=1.0;
	% Local Parameter:   id =  ep0162, name = ep0162
	reaction_r_0024_ep0162=-1.0;
	% Local Parameter:   id =  ep0529, name = ep0529
	reaction_r_0024_ep0529=-1.0;

	reaction_r_0024=compartment_cell*reaction_r_0024_v0*(1+reaction_r_0024_ep0232*log(x(47)/global_par_ic0232)+reaction_r_0024_ep0373*log(x(76)/global_par_ic0373)+reaction_r_0024_ep0162*log(x(32)/global_par_ic0162)+reaction_r_0024_ep0529*log(x(106)/global_par_ic0529));

% Reaction: id = r_0027, name = 2-methylcitrate dehydratase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0027_FLUX_VALUE=0.01086200797138;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0027_v0=0.01086200797138;
	% Local Parameter:   id =  ep0835, name = ep0835
	reaction_r_0027_ep0835=1.0;
	% Local Parameter:   id =  ep0454, name = ep0454
	reaction_r_0027_ep0454=-1.0;

	reaction_r_0027=compartment_cell*reaction_r_0027_v0*(1+reaction_r_0027_ep0835*log(x(162)/global_par_ic0835)+reaction_r_0027_ep0454*log(x(93)/global_par_ic0454));

% Reaction: id = r_0029, name = 2-oxo-4-methyl-3-carboxypentanoate decarboxylation	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0029_FLUX_VALUE=0.0112491235594566;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0029_v0=0.0112491235594566;
	% Local Parameter:   id =  ep0010, name = ep0010
	reaction_r_0029_ep0010=1.0;
	% Local Parameter:   id =  ep0291, name = ep0291
	reaction_r_0029_ep0291=-1.0;
	% Local Parameter:   id =  ep0456, name = ep0456
	reaction_r_0029_ep0456=-1.0;

	reaction_r_0029=compartment_cell*reaction_r_0029_v0*(1+reaction_r_0029_ep0010*log(x(5)/global_par_ic0010)+reaction_r_0029_ep0291*log(x(53)/global_par_ic0291)+reaction_r_0029_ep0456*log(x(95)/global_par_ic0456));

% Reaction: id = r_0032, name = 3',5'-bisphosphate nucleotidase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0032_FLUX_VALUE=0.00217467874479323;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0032_v0=0.00217467874479323;
	% Local Parameter:   id =  ep0390, name = ep0390
	reaction_r_0032_ep0390=1.0;
	% Local Parameter:   id =  ep0423, name = ep0423
	reaction_r_0032_ep0423=-1.0;
	% Local Parameter:   id =  ep1322, name = ep1322
	reaction_r_0032_ep1322=-1.0;

	reaction_r_0032=compartment_cell*reaction_r_0032_v0*(1+reaction_r_0032_ep0390*log(x(79)/global_par_ic0390)+reaction_r_0032_ep0423*log(x(86)/global_par_ic0423)+reaction_r_0032_ep1322*log(x(234)/global_par_ic1322));

% Reaction: id = r_0038, name = 3,4-dihydroxy-2-butanone-4-phosphate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0038_FLUX_VALUE=7.51459670975844E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0038_v0=7.51459670975844E-5;
	% Local Parameter:   id =  ep0577, name = ep0577
	reaction_r_0038_ep0577=1.0;
	% Local Parameter:   id =  ep0158, name = ep0158
	reaction_r_0038_ep0158=-1.0;
	% Local Parameter:   id =  ep0722, name = ep0722
	reaction_r_0038_ep0722=-1.0;

	reaction_r_0038=compartment_cell*reaction_r_0038_v0*(1+reaction_r_0038_ep0577*log(x(118)/global_par_ic0577)+reaction_r_0038_ep0158*log(x(31)/global_par_ic0158)+reaction_r_0038_ep0722*log(x(146)/global_par_ic0722));

% Reaction: id = r_0039, name = 3-dehydroquinate dehydratase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0039_FLUX_VALUE=0.0100308480322675;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0039_v0=0.0100308480322675;
	% Local Parameter:   id =  ep0210, name = ep0210
	reaction_r_0039_ep0210=1.0;
	% Local Parameter:   id =  ep0211, name = ep0211
	reaction_r_0039_ep0211=-1.0;

	reaction_r_0039=compartment_cell*reaction_r_0039_v0*(1+reaction_r_0039_ep0210*log(x(43)/global_par_ic0210)+reaction_r_0039_ep0211*log(x(44)/global_par_ic0211));

% Reaction: id = r_0040, name = 3-dehydroquinate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0040_FLUX_VALUE=0.0100308480322675;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0040_v0=0.0100308480322675;
	% Local Parameter:   id =  ep0349, name = ep0349
	reaction_r_0040_ep0349=1.0;
	% Local Parameter:   id =  ep0210, name = ep0210
	reaction_r_0040_ep0210=-1.0;
	% Local Parameter:   id =  ep1322, name = ep1322
	reaction_r_0040_ep1322=-1.0;

	reaction_r_0040=compartment_cell*reaction_r_0040_v0*(1+reaction_r_0040_ep0349*log(x(73)/global_par_ic0349)+reaction_r_0040_ep0210*log(x(43)/global_par_ic0210)+reaction_r_0040_ep1322*log(x(234)/global_par_ic1322));

% Reaction: id = r_0041, name = 3-dehydrosphinganine reductase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0041_FLUX_VALUE=2.04421699920047E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0041_v0=2.04421699920047E-5;
	% Local Parameter:   id =  ep0231, name = ep0231
	reaction_r_0041_ep0231=1.0;
	% Local Parameter:   id =  ep1212, name = ep1212
	reaction_r_0041_ep1212=1.0;
	% Local Parameter:   id =  ep1207, name = ep1207
	reaction_r_0041_ep1207=-1.0;
	% Local Parameter:   id =  ep1445, name = ep1445
	reaction_r_0041_ep1445=-1.0;

	reaction_r_0041=compartment_cell*reaction_r_0041_v0*(1+reaction_r_0041_ep0231*log(x(46)/global_par_ic0231)+reaction_r_0041_ep1212*log(x(222)/global_par_ic1212)+reaction_r_0041_ep1207*log(x(221)/global_par_ic1207)+reaction_r_0041_ep1445*log(x(257)/global_par_ic1445));

% Reaction: id = r_0060, name = 3-isopropylmalate dehydratase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0060_FLUX_VALUE=0.0112491235594474;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0060_v0=0.0112491235594474;
	% Local Parameter:   id =  ep0165, name = ep0165
	reaction_r_0060_ep0165=1.0;
	% Local Parameter:   id =  ep0009, name = ep0009
	reaction_r_0060_ep0009=-1.0;

	reaction_r_0060=compartment_cell*reaction_r_0060_v0*(1+reaction_r_0060_ep0165*log(x(33)/global_par_ic0165)+reaction_r_0060_ep0009*log(x(4)/global_par_ic0009));

% Reaction: id = r_0061, name = 3-isopropylmalate dehydrogenase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0061_FLUX_VALUE=0.0112491235594474;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0061_v0=0.0112491235594474;
	% Local Parameter:   id =  ep0009, name = ep0009
	reaction_r_0061_ep0009=1.0;
	% Local Parameter:   id =  ep1198, name = ep1198
	reaction_r_0061_ep1198=1.0;
	% Local Parameter:   id =  ep0010, name = ep0010
	reaction_r_0061_ep0010=-1.0;
	% Local Parameter:   id =  ep1203, name = ep1203
	reaction_r_0061_ep1203=-1.0;

	reaction_r_0061=compartment_cell*reaction_r_0061_v0*(1+reaction_r_0061_ep0009*log(x(4)/global_par_ic0009)+reaction_r_0061_ep1198*log(x(219)/global_par_ic1198)+reaction_r_0061_ep0010*log(x(5)/global_par_ic0010)+reaction_r_0061_ep1203*log(x(220)/global_par_ic1203));

% Reaction: id = r_0065, name = 3-phosphoshikimate 1-carboxyvinyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0065_FLUX_VALUE=0.0100308480322675;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0065_v0=0.0100308480322675;
	% Local Parameter:   id =  ep0261, name = ep0261
	reaction_r_0065_ep0261=1.0;
	% Local Parameter:   id =  ep1360, name = ep1360
	reaction_r_0065_ep1360=1.0;
	% Local Parameter:   id =  ep0324, name = ep0324
	reaction_r_0065_ep0324=-1.0;
	% Local Parameter:   id =  ep1322, name = ep1322
	reaction_r_0065_ep1322=-1.0;

	reaction_r_0065=compartment_cell*reaction_r_0065_v0*(1+reaction_r_0065_ep0261*log(x(51)/global_par_ic0261)+reaction_r_0065_ep1360*log(x(241)/global_par_ic1360)+reaction_r_0065_ep0324*log(x(68)/global_par_ic0324)+reaction_r_0065_ep1322*log(x(234)/global_par_ic1322));

% Reaction: id = r_0079, name = 5'-phosphoribosylformyl glycinamidine synthetase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0079_FLUX_VALUE=0.00375691882979276;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0079_v0=0.00375691882979276;
	% Local Parameter:   id =  ep0301, name = ep0301
	reaction_r_0079_ep0301=1.0;
	% Local Parameter:   id =  ep0434, name = ep0434
	reaction_r_0079_ep0434=1.0;
	% Local Parameter:   id =  ep0999, name = ep0999
	reaction_r_0079_ep0999=1.0;
	% Local Parameter:   id =  ep0302, name = ep0302
	reaction_r_0079_ep0302=-1.0;
	% Local Parameter:   id =  ep0394, name = ep0394
	reaction_r_0079_ep0394=-1.0;
	% Local Parameter:   id =  ep0991, name = ep0991
	reaction_r_0079_ep0991=-1.0;
	% Local Parameter:   id =  ep1322, name = ep1322
	reaction_r_0079_ep1322=-1.0;

	reaction_r_0079=compartment_cell*reaction_r_0079_v0*(1+reaction_r_0079_ep0301*log(x(60)/global_par_ic0301)+reaction_r_0079_ep0434*log(x(91)/global_par_ic0434)+reaction_r_0079_ep0999*log(x(183)/global_par_ic0999)+reaction_r_0079_ep0302*log(x(61)/global_par_ic0302)+reaction_r_0079_ep0394*log(x(81)/global_par_ic0394)+reaction_r_0079_ep0991*log(x(182)/global_par_ic0991)+reaction_r_0079_ep1322*log(x(234)/global_par_ic1322));

% Reaction: id = r_0080, name = 5,10-methylenetetrahydrofolate reductase (NADPH)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0080_FLUX_VALUE=0.00250816743817059;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0080_v0=0.00250816743817059;
	% Local Parameter:   id =  ep0306, name = ep0306
	reaction_r_0080_ep0306=1.0;
	% Local Parameter:   id =  ep1212, name = ep1212
	reaction_r_0080_ep1212=1.0;
	% Local Parameter:   id =  ep0322, name = ep0322
	reaction_r_0080_ep0322=-1.0;
	% Local Parameter:   id =  ep1207, name = ep1207
	reaction_r_0080_ep1207=-1.0;

	reaction_r_0080=compartment_cell*reaction_r_0080_v0*(1+reaction_r_0080_ep0306*log(x(63)/global_par_ic0306)+reaction_r_0080_ep1212*log(x(222)/global_par_ic1212)+reaction_r_0080_ep0322*log(x(67)/global_par_ic0322)+reaction_r_0080_ep1207*log(x(221)/global_par_ic1207));

% Reaction: id = r_0096, name = acetohydroxy acid isomeroreductase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0096_FLUX_VALUE=0.0212913573443156;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0096_v0=0.0212913573443156;
	% Local Parameter:   id =  ep0146, name = ep0146
	reaction_r_0096_ep0146=1.0;
	% Local Parameter:   id =  ep1212, name = ep1212
	reaction_r_0096_ep1212=1.0;
	% Local Parameter:   id =  ep0016, name = ep0016
	reaction_r_0096_ep0016=-1.0;
	% Local Parameter:   id =  ep1207, name = ep1207
	reaction_r_0096_ep1207=-1.0;

	reaction_r_0096=compartment_cell*reaction_r_0096_v0*(1+reaction_r_0096_ep0146*log(x(30)/global_par_ic0146)+reaction_r_0096_ep1212*log(x(222)/global_par_ic1212)+reaction_r_0096_ep0016*log(x(7)/global_par_ic0016)+reaction_r_0096_ep1207*log(x(221)/global_par_ic1207));

% Reaction: id = r_0097, name = acetolactate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0097_FLUX_VALUE=0.0212913573443156;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0097_v0=0.0212913573443156;
	% Local Parameter:   id =  ep1399, name = ep1399
	reaction_r_0097_ep1399=2.0;
	% Local Parameter:   id =  ep0146, name = ep0146
	reaction_r_0097_ep0146=-1.0;
	% Local Parameter:   id =  ep0456, name = ep0456
	reaction_r_0097_ep0456=-1.0;

	reaction_r_0097=compartment_cell*reaction_r_0097_v0*(1+reaction_r_0097_ep1399*log(x(249)/global_par_ic1399)+reaction_r_0097_ep0146*log(x(30)/global_par_ic0146)+reaction_r_0097_ep0456*log(x(95)/global_par_ic0456));

% Reaction: id = r_0103, name = acetyl-CoA C-acetyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0103_FLUX_VALUE=0.00155984810490327;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0103_v0=0.00155984810490327;
	% Local Parameter:   id =  ep0373, name = ep0373
	reaction_r_0103_ep0373=2.0;
	% Local Parameter:   id =  ep0367, name = ep0367
	reaction_r_0103_ep0367=-1.0;
	% Local Parameter:   id =  ep0529, name = ep0529
	reaction_r_0103_ep0529=-1.0;

	reaction_r_0103=compartment_cell*reaction_r_0103_v0*(1+reaction_r_0103_ep0373*log(x(76)/global_par_ic0373)+reaction_r_0103_ep0367*log(x(75)/global_par_ic0367)+reaction_r_0103_ep0529*log(x(106)/global_par_ic0529));

% Reaction: id = r_0108, name = acetyl-Coa carboxylase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0108_FLUX_VALUE=3.6795905905662E-4;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0108_v0=3.6795905905662E-4;
	% Local Parameter:   id =  ep0373, name = ep0373
	reaction_r_0108_ep0373=1.0;
	% Local Parameter:   id =  ep0434, name = ep0434
	reaction_r_0108_ep0434=1.0;
	% Local Parameter:   id =  ep0445, name = ep0445
	reaction_r_0108_ep0445=1.0;
	% Local Parameter:   id =  ep0394, name = ep0394
	reaction_r_0108_ep0394=-1.0;
	% Local Parameter:   id =  ep1101, name = ep1101
	reaction_r_0108_ep1101=-1.0;
	% Local Parameter:   id =  ep1322, name = ep1322
	reaction_r_0108_ep1322=-1.0;

	reaction_r_0108=compartment_cell*reaction_r_0108_v0*(1+reaction_r_0108_ep0373*log(x(76)/global_par_ic0373)+reaction_r_0108_ep0434*log(x(91)/global_par_ic0434)+reaction_r_0108_ep0445*log(x(92)/global_par_ic0445)+reaction_r_0108_ep0394*log(x(81)/global_par_ic0394)+reaction_r_0108_ep1101*log(x(208)/global_par_ic1101)+reaction_r_0108_ep1322*log(x(234)/global_par_ic1322));

% Reaction: id = r_0110, name = acetyl-CoA hydrolase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0110_FLUX_VALUE=0.0115748193382789;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0110_v0=0.0115748193382789;
	% Local Parameter:   id =  ep0362, name = ep0362
	reaction_r_0110_ep0362=1.0;
	% Local Parameter:   id =  ep0529, name = ep0529
	reaction_r_0110_ep0529=1.0;
	% Local Parameter:   id =  ep0373, name = ep0373
	reaction_r_0110_ep0373=-1.0;

	reaction_r_0110=compartment_cell*reaction_r_0110_v0*(1+reaction_r_0110_ep0362*log(x(74)/global_par_ic0362)+reaction_r_0110_ep0529*log(x(106)/global_par_ic0529)+reaction_r_0110_ep0373*log(x(76)/global_par_ic0373));

% Reaction: id = r_0115, name = acetylglutamate kinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0115_FLUX_VALUE=0.00609896813767666;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0115_v0=0.00609896813767666;
	% Local Parameter:   id =  ep0434, name = ep0434
	reaction_r_0115_ep0434=1.0;
	% Local Parameter:   id =  ep1192, name = ep1192
	reaction_r_0115_ep1192=1.0;
	% Local Parameter:   id =  ep0394, name = ep0394
	reaction_r_0115_ep0394=-1.0;
	% Local Parameter:   id =  ep1191, name = ep1191
	reaction_r_0115_ep1191=-1.0;

	reaction_r_0115=compartment_cell*reaction_r_0115_v0*(1+reaction_r_0115_ep0434*log(x(91)/global_par_ic0434)+reaction_r_0115_ep1192*log(x(217)/global_par_ic1192)+reaction_r_0115_ep0394*log(x(81)/global_par_ic0394)+reaction_r_0115_ep1191*log(x(216)/global_par_ic1191));

% Reaction: id = r_0118, name = acteylornithine transaminase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0118_FLUX_VALUE=0.00609896813767666;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0118_v0=0.00609896813767666;
	% Local Parameter:   id =  ep0145, name = ep0145
	reaction_r_0118_ep0145=1.0;
	% Local Parameter:   id =  ep0991, name = ep0991
	reaction_r_0118_ep0991=1.0;
	% Local Parameter:   id =  ep0180, name = ep0180
	reaction_r_0118_ep0180=-1.0;
	% Local Parameter:   id =  ep1182, name = ep1182
	reaction_r_0118_ep1182=-1.0;

	reaction_r_0118=compartment_cell*reaction_r_0118_v0*(1+reaction_r_0118_ep0145*log(x(29)/global_par_ic0145)+reaction_r_0118_ep0991*log(x(182)/global_par_ic0991)+reaction_r_0118_ep0180*log(x(36)/global_par_ic0180)+reaction_r_0118_ep1182*log(x(214)/global_par_ic1182));

% Reaction: id = r_0142, name = adenosine kinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0142_FLUX_VALUE=5.83975250318604E-4;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0142_v0=5.83975250318604E-4;
	% Local Parameter:   id =  ep0386, name = ep0386
	reaction_r_0142_ep0386=1.0;
	% Local Parameter:   id =  ep0434, name = ep0434
	reaction_r_0142_ep0434=1.0;
	% Local Parameter:   id =  ep0394, name = ep0394
	reaction_r_0142_ep0394=-1.0;
	% Local Parameter:   id =  ep0423, name = ep0423
	reaction_r_0142_ep0423=-1.0;

	reaction_r_0142=compartment_cell*reaction_r_0142_v0*(1+reaction_r_0142_ep0386*log(x(78)/global_par_ic0386)+reaction_r_0142_ep0434*log(x(91)/global_par_ic0434)+reaction_r_0142_ep0394*log(x(81)/global_par_ic0394)+reaction_r_0142_ep0423*log(x(86)/global_par_ic0423));

% Reaction: id = r_0144, name = adenosylhomocysteinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0144_FLUX_VALUE=5.83975250368712E-4;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0144_v0=5.83975250368712E-4;
	% Local Parameter:   id =  ep1413, name = ep1413
	reaction_r_0144_ep1413=1.0;
	% Local Parameter:   id =  ep0386, name = ep0386
	reaction_r_0144_ep0386=-1.0;
	% Local Parameter:   id =  ep1012, name = ep1012
	reaction_r_0144_ep1012=-1.0;

	reaction_r_0144=compartment_cell*reaction_r_0144_v0*(1+reaction_r_0144_ep1413*log(x(252)/global_par_ic1413)+reaction_r_0144_ep0386*log(x(78)/global_par_ic0386)+reaction_r_0144_ep1012*log(x(188)/global_par_ic1012));

% Reaction: id = r_0148, name = adenylate kinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0148_FLUX_VALUE=0.168650639524106;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0148_v0=0.168650639524106;
	% Local Parameter:   id =  ep0423, name = ep0423
	reaction_r_0148_ep0423=1.0;
	% Local Parameter:   id =  ep0434, name = ep0434
	reaction_r_0148_ep0434=1.0;
	% Local Parameter:   id =  ep0394, name = ep0394
	reaction_r_0148_ep0394=-2.0;

	reaction_r_0148=compartment_cell*reaction_r_0148_v0*(1+reaction_r_0148_ep0423*log(x(86)/global_par_ic0423)+reaction_r_0148_ep0434*log(x(91)/global_par_ic0434)+reaction_r_0148_ep0394*log(x(81)/global_par_ic0394));

% Reaction: id = r_0151, name = adenylosuccinate lyase (AICAR)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0151_FLUX_VALUE=0.00375691882979276;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0151_v0=0.00375691882979276;
	% Local Parameter:   id =  ep0299, name = ep0299
	reaction_r_0151_ep0299=1.0;
	% Local Parameter:   id =  ep0403, name = ep0403
	reaction_r_0151_ep0403=-1.0;
	% Local Parameter:   id =  ep0725, name = ep0725
	reaction_r_0151_ep0725=-1.0;

	reaction_r_0151=compartment_cell*reaction_r_0151_v0*(1+reaction_r_0151_ep0299*log(x(58)/global_par_ic0299)+reaction_r_0151_ep0403*log(x(82)/global_par_ic0403)+reaction_r_0151_ep0725*log(x(147)/global_par_ic0725));

% Reaction: id = r_0152, name = adenylosuccinate lyase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0152_FLUX_VALUE=0.00439869575080998;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0152_v0=0.00439869575080998;
	% Local Parameter:   id =  ep0393, name = ep0393
	reaction_r_0152_ep0393=1.0;
	% Local Parameter:   id =  ep0423, name = ep0423
	reaction_r_0152_ep0423=-1.0;
	% Local Parameter:   id =  ep0725, name = ep0725
	reaction_r_0152_ep0725=-1.0;

	reaction_r_0152=compartment_cell*reaction_r_0152_v0*(1+reaction_r_0152_ep0393*log(x(80)/global_par_ic0393)+reaction_r_0152_ep0423*log(x(86)/global_par_ic0423)+reaction_r_0152_ep0725*log(x(147)/global_par_ic0725));

% Reaction: id = r_0153, name = adenylosuccinate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0153_FLUX_VALUE=0.00439869575080998;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0153_v0=0.00439869575080998;
	% Local Parameter:   id =  ep0785, name = ep0785
	reaction_r_0153_ep0785=1.0;
	% Local Parameter:   id =  ep0849, name = ep0849
	reaction_r_0153_ep0849=1.0;
	% Local Parameter:   id =  ep0973, name = ep0973
	reaction_r_0153_ep0973=1.0;
	% Local Parameter:   id =  ep0393, name = ep0393
	reaction_r_0153_ep0393=-1.0;
	% Local Parameter:   id =  ep0739, name = ep0739
	reaction_r_0153_ep0739=-1.0;
	% Local Parameter:   id =  ep1322, name = ep1322
	reaction_r_0153_ep1322=-1.0;

	reaction_r_0153=compartment_cell*reaction_r_0153_v0*(1+reaction_r_0153_ep0785*log(x(160)/global_par_ic0785)+reaction_r_0153_ep0849*log(x(167)/global_par_ic0849)+reaction_r_0153_ep0973*log(x(177)/global_par_ic0973)+reaction_r_0153_ep0393*log(x(80)/global_par_ic0393)+reaction_r_0153_ep0739*log(x(148)/global_par_ic0739)+reaction_r_0153_ep1322*log(x(234)/global_par_ic1322));

% Reaction: id = r_0154, name = adenylyl-sulfate kinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0154_FLUX_VALUE=0.00217467874478967;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0154_v0=0.00217467874478967;
	% Local Parameter:   id =  ep0298, name = ep0298
	reaction_r_0154_ep0298=1.0;
	% Local Parameter:   id =  ep0434, name = ep0434
	reaction_r_0154_ep0434=1.0;
	% Local Parameter:   id =  ep0201, name = ep0201
	reaction_r_0154_ep0201=-1.0;
	% Local Parameter:   id =  ep0394, name = ep0394
	reaction_r_0154_ep0394=-1.0;

	reaction_r_0154=compartment_cell*reaction_r_0154_v0*(1+reaction_r_0154_ep0298*log(x(57)/global_par_ic0298)+reaction_r_0154_ep0434*log(x(91)/global_par_ic0434)+reaction_r_0154_ep0201*log(x(39)/global_par_ic0201)+reaction_r_0154_ep0394*log(x(81)/global_par_ic0394));

% Reaction: id = r_0157, name = alanyl-tRNA synthetase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0157_FLUX_VALUE=0.0174126109618039;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0157_v0=0.0174126109618039;
	% Local Parameter:   id =  ep0434, name = ep0434
	reaction_r_0157_ep0434=1.0;
	% Local Parameter:   id =  ep0955, name = ep0955
	reaction_r_0157_ep0955=1.0;
	% Local Parameter:   id =  ep1582, name = ep1582
	reaction_r_0157_ep1582=1.0;
	% Local Parameter:   id =  ep0404, name = ep0404
	reaction_r_0157_ep0404=-1.0;
	% Local Parameter:   id =  ep0423, name = ep0423
	reaction_r_0157_ep0423=-1.0;
	% Local Parameter:   id =  ep0633, name = ep0633
	reaction_r_0157_ep0633=-1.0;

	reaction_r_0157=compartment_cell*reaction_r_0157_v0*(1+reaction_r_0157_ep0434*log(x(91)/global_par_ic0434)+reaction_r_0157_ep0955*log(x(173)/global_par_ic0955)+reaction_r_0157_ep1582*log(x(282)/global_par_ic1582)+reaction_r_0157_ep0404*log(x(83)/global_par_ic0404)+reaction_r_0157_ep0423*log(x(86)/global_par_ic0423)+reaction_r_0157_ep0633*log(x(132)/global_par_ic0633));

% Reaction: id = r_0195, name = alpha,alpha-trehalose-phosphate synthase (UDP-forming)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0195_FLUX_VALUE=8.88088702058448E-4;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0195_v0=8.88088702058448E-4;
	% Local Parameter:   id =  ep0568, name = ep0568
	reaction_r_0195_ep0568=1.0;
	% Local Parameter:   id =  ep1543, name = ep1543
	reaction_r_0195_ep1543=1.0;
	% Local Parameter:   id =  ep0409, name = ep0409
	reaction_r_0195_ep0409=-1.0;
	% Local Parameter:   id =  ep1538, name = ep1538
	reaction_r_0195_ep1538=-1.0;

	reaction_r_0195=compartment_cell*reaction_r_0195_v0*(1+reaction_r_0195_ep0568*log(x(115)/global_par_ic0568)+reaction_r_0195_ep1543*log(x(272)/global_par_ic1543)+reaction_r_0195_ep0409*log(x(84)/global_par_ic0409)+reaction_r_0195_ep1538*log(x(271)/global_par_ic1538));

% Reaction: id = r_0202, name = anthranilate phosphoribosyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0202_FLUX_VALUE=0.00107785124523996;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0202_v0=0.00107785124523996;
	% Local Parameter:   id =  ep0427, name = ep0427
	reaction_r_0202_ep0427=1.0;
	% Local Parameter:   id =  ep1386, name = ep1386
	reaction_r_0202_ep1386=1.0;
	% Local Parameter:   id =  ep0633, name = ep0633
	reaction_r_0202_ep0633=-1.0;
	% Local Parameter:   id =  ep1187, name = ep1187
	reaction_r_0202_ep1187=-1.0;

	reaction_r_0202=compartment_cell*reaction_r_0202_v0*(1+reaction_r_0202_ep0427*log(x(87)/global_par_ic0427)+reaction_r_0202_ep1386*log(x(248)/global_par_ic1386)+reaction_r_0202_ep0633*log(x(132)/global_par_ic0633)+reaction_r_0202_ep1187*log(x(215)/global_par_ic1187));

% Reaction: id = r_0203, name = anthranilate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0203_FLUX_VALUE=0.00107785124523716;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0203_v0=0.00107785124523716;
	% Local Parameter:   id =  ep0515, name = ep0515
	reaction_r_0203_ep0515=1.0;
	% Local Parameter:   id =  ep0999, name = ep0999
	reaction_r_0203_ep0999=1.0;
	% Local Parameter:   id =  ep0427, name = ep0427
	reaction_r_0203_ep0427=-1.0;
	% Local Parameter:   id =  ep0991, name = ep0991
	reaction_r_0203_ep0991=-1.0;
	% Local Parameter:   id =  ep1399, name = ep1399
	reaction_r_0203_ep1399=-1.0;

	reaction_r_0203=compartment_cell*reaction_r_0203_v0*(1+reaction_r_0203_ep0515*log(x(102)/global_par_ic0515)+reaction_r_0203_ep0999*log(x(183)/global_par_ic0999)+reaction_r_0203_ep0427*log(x(87)/global_par_ic0427)+reaction_r_0203_ep0991*log(x(182)/global_par_ic0991)+reaction_r_0203_ep1399*log(x(249)/global_par_ic1399));

% Reaction: id = r_0207, name = argininosuccinate lyase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0207_FLUX_VALUE=0.00609896813766667;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0207_v0=0.00609896813766667;
	% Local Parameter:   id =  ep0015, name = ep0015
	reaction_r_0207_ep0015=1.0;
	% Local Parameter:   id =  ep0725, name = ep0725
	reaction_r_0207_ep0725=-1.0;
	% Local Parameter:   id =  ep0965, name = ep0965
	reaction_r_0207_ep0965=-1.0;

	reaction_r_0207=compartment_cell*reaction_r_0207_v0*(1+reaction_r_0207_ep0015*log(x(6)/global_par_ic0015)+reaction_r_0207_ep0725*log(x(147)/global_par_ic0725)+reaction_r_0207_ep0965*log(x(175)/global_par_ic0965));

% Reaction: id = r_0208, name = argininosuccinate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0208_FLUX_VALUE=0.00609896813766667;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0208_v0=0.00609896813766667;
	% Local Parameter:   id =  ep0434, name = ep0434
	reaction_r_0208_ep0434=1.0;
	% Local Parameter:   id =  ep0973, name = ep0973
	reaction_r_0208_ep0973=1.0;
	% Local Parameter:   id =  ep0979, name = ep0979
	reaction_r_0208_ep0979=1.0;
	% Local Parameter:   id =  ep0015, name = ep0015
	reaction_r_0208_ep0015=-1.0;
	% Local Parameter:   id =  ep0423, name = ep0423
	reaction_r_0208_ep0423=-1.0;
	% Local Parameter:   id =  ep0633, name = ep0633
	reaction_r_0208_ep0633=-1.0;

	reaction_r_0208=compartment_cell*reaction_r_0208_v0*(1+reaction_r_0208_ep0434*log(x(91)/global_par_ic0434)+reaction_r_0208_ep0973*log(x(177)/global_par_ic0973)+reaction_r_0208_ep0979*log(x(179)/global_par_ic0979)+reaction_r_0208_ep0015*log(x(6)/global_par_ic0015)+reaction_r_0208_ep0423*log(x(86)/global_par_ic0423)+reaction_r_0208_ep0633*log(x(132)/global_par_ic0633));

% Reaction: id = r_0209, name = arginyl-tRNA synthetase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0209_FLUX_VALUE=0.00609896813766758;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0209_v0=0.00609896813766758;
	% Local Parameter:   id =  ep0434, name = ep0434
	reaction_r_0209_ep0434=1.0;
	% Local Parameter:   id =  ep0965, name = ep0965
	reaction_r_0209_ep0965=1.0;
	% Local Parameter:   id =  ep1583, name = ep1583
	reaction_r_0209_ep1583=1.0;
	% Local Parameter:   id =  ep0423, name = ep0423
	reaction_r_0209_ep0423=-1.0;
	% Local Parameter:   id =  ep0428, name = ep0428
	reaction_r_0209_ep0428=-1.0;
	% Local Parameter:   id =  ep0633, name = ep0633
	reaction_r_0209_ep0633=-1.0;

	reaction_r_0209=compartment_cell*reaction_r_0209_v0*(1+reaction_r_0209_ep0434*log(x(91)/global_par_ic0434)+reaction_r_0209_ep0965*log(x(175)/global_par_ic0965)+reaction_r_0209_ep1583*log(x(283)/global_par_ic1583)+reaction_r_0209_ep0423*log(x(86)/global_par_ic0423)+reaction_r_0209_ep0428*log(x(88)/global_par_ic0428)+reaction_r_0209_ep0633*log(x(132)/global_par_ic0633));

% Reaction: id = r_0211, name = asparagine synthase (glutamine-hydrolysing)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0211_FLUX_VALUE=0.00385977012819758;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0211_v0=0.00385977012819758;
	% Local Parameter:   id =  ep0434, name = ep0434
	reaction_r_0211_ep0434=1.0;
	% Local Parameter:   id =  ep0973, name = ep0973
	reaction_r_0211_ep0973=1.0;
	% Local Parameter:   id =  ep0999, name = ep0999
	reaction_r_0211_ep0999=1.0;
	% Local Parameter:   id =  ep0423, name = ep0423
	reaction_r_0211_ep0423=-1.0;
	% Local Parameter:   id =  ep0633, name = ep0633
	reaction_r_0211_ep0633=-1.0;
	% Local Parameter:   id =  ep0969, name = ep0969
	reaction_r_0211_ep0969=-1.0;
	% Local Parameter:   id =  ep0991, name = ep0991
	reaction_r_0211_ep0991=-1.0;

	reaction_r_0211=compartment_cell*reaction_r_0211_v0*(1+reaction_r_0211_ep0434*log(x(91)/global_par_ic0434)+reaction_r_0211_ep0973*log(x(177)/global_par_ic0973)+reaction_r_0211_ep0999*log(x(183)/global_par_ic0999)+reaction_r_0211_ep0423*log(x(86)/global_par_ic0423)+reaction_r_0211_ep0633*log(x(132)/global_par_ic0633)+reaction_r_0211_ep0969*log(x(176)/global_par_ic0969)+reaction_r_0211_ep0991*log(x(182)/global_par_ic0991));

% Reaction: id = r_0212, name = Asparaginyl-tRNA synthetase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0212_FLUX_VALUE=0.00385977012819411;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0212_v0=0.00385977012819411;
	% Local Parameter:   id =  ep0434, name = ep0434
	reaction_r_0212_ep0434=1.0;
	% Local Parameter:   id =  ep0969, name = ep0969
	reaction_r_0212_ep0969=1.0;
	% Local Parameter:   id =  ep1585, name = ep1585
	reaction_r_0212_ep1585=1.0;
	% Local Parameter:   id =  ep0423, name = ep0423
	reaction_r_0212_ep0423=-1.0;
	% Local Parameter:   id =  ep0430, name = ep0430
	reaction_r_0212_ep0430=-1.0;
	% Local Parameter:   id =  ep0633, name = ep0633
	reaction_r_0212_ep0633=-1.0;

	reaction_r_0212=compartment_cell*reaction_r_0212_v0*(1+reaction_r_0212_ep0434*log(x(91)/global_par_ic0434)+reaction_r_0212_ep0969*log(x(176)/global_par_ic0969)+reaction_r_0212_ep1585*log(x(284)/global_par_ic1585)+reaction_r_0212_ep0423*log(x(86)/global_par_ic0423)+reaction_r_0212_ep0430*log(x(89)/global_par_ic0430)+reaction_r_0212_ep0633*log(x(132)/global_par_ic0633));

% Reaction: id = r_0214, name = aspartate carbamoyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0214_FLUX_VALUE=0.00419754745504612;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0214_v0=0.00419754745504612;
	% Local Parameter:   id =  ep0455, name = ep0455
	reaction_r_0214_ep0455=1.0;
	% Local Parameter:   id =  ep0973, name = ep0973
	reaction_r_0214_ep0973=1.0;
	% Local Parameter:   id =  ep1194, name = ep1194
	reaction_r_0214_ep1194=-1.0;
	% Local Parameter:   id =  ep1322, name = ep1322
	reaction_r_0214_ep1322=-1.0;

	reaction_r_0214=compartment_cell*reaction_r_0214_v0*(1+reaction_r_0214_ep0455*log(x(94)/global_par_ic0455)+reaction_r_0214_ep0973*log(x(177)/global_par_ic0973)+reaction_r_0214_ep1194*log(x(218)/global_par_ic1194)+reaction_r_0214_ep1322*log(x(234)/global_par_ic1322));

% Reaction: id = r_0215, name = aspartate kinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0215_FLUX_VALUE=0.0188389294905409;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0215_v0=0.0188389294905409;
	% Local Parameter:   id =  ep0434, name = ep0434
	reaction_r_0215_ep0434=1.0;
	% Local Parameter:   id =  ep0973, name = ep0973
	reaction_r_0215_ep0973=1.0;
	% Local Parameter:   id =  ep0295, name = ep0295
	reaction_r_0215_ep0295=-1.0;
	% Local Parameter:   id =  ep0394, name = ep0394
	reaction_r_0215_ep0394=-1.0;

	reaction_r_0215=compartment_cell*reaction_r_0215_v0*(1+reaction_r_0215_ep0434*log(x(91)/global_par_ic0434)+reaction_r_0215_ep0973*log(x(177)/global_par_ic0973)+reaction_r_0215_ep0295*log(x(54)/global_par_ic0295)+reaction_r_0215_ep0394*log(x(81)/global_par_ic0394));

% Reaction: id = r_0216, name = aspartate transaminase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0216_FLUX_VALUE=0.0524417011110143;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0216_v0=0.0524417011110143;
	% Local Parameter:   id =  ep0991, name = ep0991
	reaction_r_0216_ep0991=1.0;
	% Local Parameter:   id =  ep1271, name = ep1271
	reaction_r_0216_ep1271=1.0;
	% Local Parameter:   id =  ep0180, name = ep0180
	reaction_r_0216_ep0180=-1.0;
	% Local Parameter:   id =  ep0973, name = ep0973
	reaction_r_0216_ep0973=-1.0;

	reaction_r_0216=compartment_cell*reaction_r_0216_v0*(1+reaction_r_0216_ep0991*log(x(182)/global_par_ic0991)+reaction_r_0216_ep1271*log(x(229)/global_par_ic1271)+reaction_r_0216_ep0180*log(x(36)/global_par_ic0180)+reaction_r_0216_ep0973*log(x(177)/global_par_ic0973));

% Reaction: id = r_0219, name = aspartate-semialdehyde dehydrogenase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0219_FLUX_VALUE=0.0188389294905409;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0219_v0=0.0188389294905409;
	% Local Parameter:   id =  ep0295, name = ep0295
	reaction_r_0219_ep0295=1.0;
	% Local Parameter:   id =  ep1212, name = ep1212
	reaction_r_0219_ep1212=1.0;
	% Local Parameter:   id =  ep0978, name = ep0978
	reaction_r_0219_ep0978=-1.0;
	% Local Parameter:   id =  ep1207, name = ep1207
	reaction_r_0219_ep1207=-1.0;
	% Local Parameter:   id =  ep1322, name = ep1322
	reaction_r_0219_ep1322=-1.0;

	reaction_r_0219=compartment_cell*reaction_r_0219_v0*(1+reaction_r_0219_ep0295*log(x(54)/global_par_ic0295)+reaction_r_0219_ep1212*log(x(222)/global_par_ic1212)+reaction_r_0219_ep0978*log(x(178)/global_par_ic0978)+reaction_r_0219_ep1207*log(x(221)/global_par_ic1207)+reaction_r_0219_ep1322*log(x(234)/global_par_ic1322));

% Reaction: id = r_0220, name = Aspartyl-tRNA synthetase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0220_FLUX_VALUE=0.0112908713189552;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0220_v0=0.0112908713189552;
	% Local Parameter:   id =  ep0434, name = ep0434
	reaction_r_0220_ep0434=1.0;
	% Local Parameter:   id =  ep0973, name = ep0973
	reaction_r_0220_ep0973=1.0;
	% Local Parameter:   id =  ep1587, name = ep1587
	reaction_r_0220_ep1587=1.0;
	% Local Parameter:   id =  ep0423, name = ep0423
	reaction_r_0220_ep0423=-1.0;
	% Local Parameter:   id =  ep0432, name = ep0432
	reaction_r_0220_ep0432=-1.0;
	% Local Parameter:   id =  ep0633, name = ep0633
	reaction_r_0220_ep0633=-1.0;

	reaction_r_0220=compartment_cell*reaction_r_0220_v0*(1+reaction_r_0220_ep0434*log(x(91)/global_par_ic0434)+reaction_r_0220_ep0973*log(x(177)/global_par_ic0973)+reaction_r_0220_ep1587*log(x(285)/global_par_ic1587)+reaction_r_0220_ep0423*log(x(86)/global_par_ic0423)+reaction_r_0220_ep0432*log(x(90)/global_par_ic0432)+reaction_r_0220_ep0633*log(x(132)/global_par_ic0633));

% Reaction: id = r_0225, name = ATP phosphoribosyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0225_FLUX_VALUE=0.00251625132250899;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0225_v0=0.00251625132250899;
	% Local Parameter:   id =  ep0434, name = ep0434
	reaction_r_0225_ep0434=1.0;
	% Local Parameter:   id =  ep1386, name = ep1386
	reaction_r_0225_ep1386=1.0;
	% Local Parameter:   id =  ep0326, name = ep0326
	reaction_r_0225_ep0326=-1.0;
	% Local Parameter:   id =  ep0633, name = ep0633
	reaction_r_0225_ep0633=-1.0;

	reaction_r_0225=compartment_cell*reaction_r_0225_v0*(1+reaction_r_0225_ep0434*log(x(91)/global_par_ic0434)+reaction_r_0225_ep1386*log(x(248)/global_par_ic1386)+reaction_r_0225_ep0326*log(x(70)/global_par_ic0326)+reaction_r_0225_ep0633*log(x(132)/global_par_ic0633));

% Reaction: id = r_0231, name = C-14 sterol reductase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0231_FLUX_VALUE=2.58760203874159E-4;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0231_v0=2.58760203874159E-4;
	% Local Parameter:   id =  ep0262, name = ep0262
	reaction_r_0231_ep0262=1.0;
	% Local Parameter:   id =  ep1212, name = ep1212
	reaction_r_0231_ep1212=1.0;
	% Local Parameter:   id =  ep0122, name = ep0122
	reaction_r_0231_ep0122=-1.0;
	% Local Parameter:   id =  ep1207, name = ep1207
	reaction_r_0231_ep1207=-1.0;

	reaction_r_0231=compartment_cell*reaction_r_0231_v0*(1+reaction_r_0231_ep0262*log(x(52)/global_par_ic0262)+reaction_r_0231_ep1212*log(x(222)/global_par_ic1212)+reaction_r_0231_ep0122*log(x(25)/global_par_ic0122)+reaction_r_0231_ep1207*log(x(221)/global_par_ic1207));

% Reaction: id = r_0233, name = C-22 sterol desaturase (NADP)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0233_FLUX_VALUE=2.48095549098117E-4;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0233_v0=2.48095549098117E-4;
	% Local Parameter:   id =  ep0664, name = ep0664
	reaction_r_0233_ep0664=1.0;
	% Local Parameter:   id =  ep1212, name = ep1212
	reaction_r_0233_ep1212=1.0;
	% Local Parameter:   id =  ep1275, name = ep1275
	reaction_r_0233_ep1275=1.0;
	% Local Parameter:   id =  ep0662, name = ep0662
	reaction_r_0233_ep0662=-1.0;
	% Local Parameter:   id =  ep1207, name = ep1207
	reaction_r_0233_ep1207=-1.0;

	reaction_r_0233=compartment_cell*reaction_r_0233_v0*(1+reaction_r_0233_ep0664*log(x(140)/global_par_ic0664)+reaction_r_0233_ep1212*log(x(222)/global_par_ic1212)+reaction_r_0233_ep1275*log(x(230)/global_par_ic1275)+reaction_r_0233_ep0662*log(x(139)/global_par_ic0662)+reaction_r_0233_ep1207*log(x(221)/global_par_ic1207));

% Reaction: id = r_0234, name = C-3 sterol dehydrogenase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0234_FLUX_VALUE=2.56634863390825E-4;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0234_v0=2.56634863390825E-4;
	% Local Parameter:   id =  ep1207, name = ep1207
	reaction_r_0234_ep1207=1.0;
	% Local Parameter:   id =  ep1578, name = ep1578
	reaction_r_0234_ep1578=1.0;
	% Local Parameter:   id =  ep0456, name = ep0456
	reaction_r_0234_ep0456=-1.0;
	% Local Parameter:   id =  ep1212, name = ep1212
	reaction_r_0234_ep1212=-1.0;
	% Local Parameter:   id =  ep1579, name = ep1579
	reaction_r_0234_ep1579=-1.0;

	reaction_r_0234=compartment_cell*reaction_r_0234_v0*(1+reaction_r_0234_ep1207*log(x(221)/global_par_ic1207)+reaction_r_0234_ep1578*log(x(280)/global_par_ic1578)+reaction_r_0234_ep0456*log(x(95)/global_par_ic0456)+reaction_r_0234_ep1212*log(x(222)/global_par_ic1212)+reaction_r_0234_ep1579*log(x(281)/global_par_ic1579));

% Reaction: id = r_0235, name = C-3 sterol dehydrogenase (4-methylzymosterol)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0235_FLUX_VALUE=2.56634863390825E-4;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0235_v0=2.56634863390825E-4;
	% Local Parameter:   id =  ep0297, name = ep0297
	reaction_r_0235_ep0297=1.0;
	% Local Parameter:   id =  ep1198, name = ep1198
	reaction_r_0235_ep1198=1.0;
	% Local Parameter:   id =  ep0209, name = ep0209
	reaction_r_0235_ep0209=-1.0;
	% Local Parameter:   id =  ep0456, name = ep0456
	reaction_r_0235_ep0456=-1.0;
	% Local Parameter:   id =  ep1203, name = ep1203
	reaction_r_0235_ep1203=-1.0;

	reaction_r_0235=compartment_cell*reaction_r_0235_v0*(1+reaction_r_0235_ep0297*log(x(56)/global_par_ic0297)+reaction_r_0235_ep1198*log(x(219)/global_par_ic1198)+reaction_r_0235_ep0209*log(x(42)/global_par_ic0209)+reaction_r_0235_ep0456*log(x(95)/global_par_ic0456)+reaction_r_0235_ep1203*log(x(220)/global_par_ic1203));

% Reaction: id = r_0236, name = C-3 sterol keto reductase (4-methylzymosterol)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0236_FLUX_VALUE=2.56634863390825E-4;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0236_v0=2.56634863390825E-4;
	% Local Parameter:   id =  ep0209, name = ep0209
	reaction_r_0236_ep0209=1.0;
	% Local Parameter:   id =  ep1212, name = ep1212
	reaction_r_0236_ep1212=1.0;
	% Local Parameter:   id =  ep0296, name = ep0296
	reaction_r_0236_ep0296=-1.0;
	% Local Parameter:   id =  ep1207, name = ep1207
	reaction_r_0236_ep1207=-1.0;

	reaction_r_0236=compartment_cell*reaction_r_0236_v0*(1+reaction_r_0236_ep0209*log(x(42)/global_par_ic0209)+reaction_r_0236_ep1212*log(x(222)/global_par_ic1212)+reaction_r_0236_ep0296*log(x(55)/global_par_ic0296)+reaction_r_0236_ep1207*log(x(221)/global_par_ic1207));

% Reaction: id = r_0237, name = C-3 sterol keto reductase (zymosterol)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0237_FLUX_VALUE=2.56634863390825E-4;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0237_v0=2.56634863390825E-4;
	% Local Parameter:   id =  ep1212, name = ep1212
	reaction_r_0237_ep1212=1.0;
	% Local Parameter:   id =  ep1579, name = ep1579
	reaction_r_0237_ep1579=1.0;
	% Local Parameter:   id =  ep1207, name = ep1207
	reaction_r_0237_ep1207=-1.0;
	% Local Parameter:   id =  ep1569, name = ep1569
	reaction_r_0237_ep1569=-1.0;

	reaction_r_0237=compartment_cell*reaction_r_0237_v0*(1+reaction_r_0237_ep1212*log(x(222)/global_par_ic1212)+reaction_r_0237_ep1579*log(x(281)/global_par_ic1579)+reaction_r_0237_ep1207*log(x(221)/global_par_ic1207)+reaction_r_0237_ep1569*log(x(277)/global_par_ic1569));

% Reaction: id = r_0238, name = C-4 methyl sterol oxidase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0238_FLUX_VALUE=2.56634863390825E-4;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0238_v0=2.56634863390825E-4;
	% Local Parameter:   id =  ep0296, name = ep0296
	reaction_r_0238_ep0296=1.0;
	% Local Parameter:   id =  ep1212, name = ep1212
	reaction_r_0238_ep1212=1.0;
	% Local Parameter:   id =  ep1275, name = ep1275
	reaction_r_0238_ep1275=1.0;
	% Local Parameter:   id =  ep1207, name = ep1207
	reaction_r_0238_ep1207=-1.0;
	% Local Parameter:   id =  ep1576, name = ep1576
	reaction_r_0238_ep1576=-1.0;

	reaction_r_0238=compartment_cell*reaction_r_0238_v0*(1+reaction_r_0238_ep0296*log(x(55)/global_par_ic0296)+reaction_r_0238_ep1212*log(x(222)/global_par_ic1212)+reaction_r_0238_ep1275*log(x(230)/global_par_ic1275)+reaction_r_0238_ep1207*log(x(221)/global_par_ic1207)+reaction_r_0238_ep1576*log(x(278)/global_par_ic1576));

% Reaction: id = r_0239, name = C-4 methyl sterol oxidase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0239_FLUX_VALUE=2.56634863390825E-4;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0239_v0=2.56634863390825E-4;
	% Local Parameter:   id =  ep1212, name = ep1212
	reaction_r_0239_ep1212=1.0;
	% Local Parameter:   id =  ep1275, name = ep1275
	reaction_r_0239_ep1275=1.0;
	% Local Parameter:   id =  ep1576, name = ep1576
	reaction_r_0239_ep1576=1.0;
	% Local Parameter:   id =  ep1207, name = ep1207
	reaction_r_0239_ep1207=-1.0;
	% Local Parameter:   id =  ep1577, name = ep1577
	reaction_r_0239_ep1577=-1.0;

	reaction_r_0239=compartment_cell*reaction_r_0239_v0*(1+reaction_r_0239_ep1212*log(x(222)/global_par_ic1212)+reaction_r_0239_ep1275*log(x(230)/global_par_ic1275)+reaction_r_0239_ep1576*log(x(278)/global_par_ic1576)+reaction_r_0239_ep1207*log(x(221)/global_par_ic1207)+reaction_r_0239_ep1577*log(x(279)/global_par_ic1577));

% Reaction: id = r_0240, name = C-4 methyl sterol oxidase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0240_FLUX_VALUE=2.56634863390825E-4;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0240_v0=2.56634863390825E-4;
	% Local Parameter:   id =  ep1212, name = ep1212
	reaction_r_0240_ep1212=1.0;
	% Local Parameter:   id =  ep1275, name = ep1275
	reaction_r_0240_ep1275=1.0;
	% Local Parameter:   id =  ep1577, name = ep1577
	reaction_r_0240_ep1577=1.0;
	% Local Parameter:   id =  ep1207, name = ep1207
	reaction_r_0240_ep1207=-1.0;
	% Local Parameter:   id =  ep1578, name = ep1578
	reaction_r_0240_ep1578=-1.0;

	reaction_r_0240=compartment_cell*reaction_r_0240_v0*(1+reaction_r_0240_ep1212*log(x(222)/global_par_ic1212)+reaction_r_0240_ep1275*log(x(230)/global_par_ic1275)+reaction_r_0240_ep1577*log(x(279)/global_par_ic1577)+reaction_r_0240_ep1207*log(x(221)/global_par_ic1207)+reaction_r_0240_ep1578*log(x(280)/global_par_ic1578));

% Reaction: id = r_0241, name = C-4 sterol methyl oxidase (4,4-dimethylzymosterol)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0241_FLUX_VALUE=2.56634863390825E-4;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0241_v0=2.56634863390825E-4;
	% Local Parameter:   id =  ep0122, name = ep0122
	reaction_r_0241_ep0122=1.0;
	% Local Parameter:   id =  ep1212, name = ep1212
	reaction_r_0241_ep1212=3.0;
	% Local Parameter:   id =  ep1275, name = ep1275
	reaction_r_0241_ep1275=3.0;
	% Local Parameter:   id =  ep0297, name = ep0297
	reaction_r_0241_ep0297=-1.0;
	% Local Parameter:   id =  ep1207, name = ep1207
	reaction_r_0241_ep1207=-3.0;

	reaction_r_0241=compartment_cell*reaction_r_0241_v0*(1+reaction_r_0241_ep0122*log(x(25)/global_par_ic0122)+reaction_r_0241_ep1212*log(x(222)/global_par_ic1212)+reaction_r_0241_ep1275*log(x(230)/global_par_ic1275)+reaction_r_0241_ep0297*log(x(56)/global_par_ic0297)+reaction_r_0241_ep1207*log(x(221)/global_par_ic1207));

% Reaction: id = r_0242, name = C-5 sterol desaturase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0242_FLUX_VALUE=2.48095549098117E-4;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0242_v0=2.48095549098117E-4;
	% Local Parameter:   id =  ep0657, name = ep0657
	reaction_r_0242_ep0657=1.0;
	% Local Parameter:   id =  ep1212, name = ep1212
	reaction_r_0242_ep1212=1.0;
	% Local Parameter:   id =  ep1275, name = ep1275
	reaction_r_0242_ep1275=1.0;
	% Local Parameter:   id =  ep0664, name = ep0664
	reaction_r_0242_ep0664=-1.0;
	% Local Parameter:   id =  ep1207, name = ep1207
	reaction_r_0242_ep1207=-1.0;

	reaction_r_0242=compartment_cell*reaction_r_0242_v0*(1+reaction_r_0242_ep0657*log(x(138)/global_par_ic0657)+reaction_r_0242_ep1212*log(x(222)/global_par_ic1212)+reaction_r_0242_ep1275*log(x(230)/global_par_ic1275)+reaction_r_0242_ep0664*log(x(140)/global_par_ic0664)+reaction_r_0242_ep1207*log(x(221)/global_par_ic1207));

% Reaction: id = r_0243, name = C-8 sterol isomerase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0243_FLUX_VALUE=2.5173898992709E-4;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0243_v0=2.5173898992709E-4;
	% Local Parameter:   id =  ep0700, name = ep0700
	reaction_r_0243_ep0700=1.0;
	% Local Parameter:   id =  ep0657, name = ep0657
	reaction_r_0243_ep0657=-1.0;

	reaction_r_0243=compartment_cell*reaction_r_0243_v0*(1+reaction_r_0243_ep0700*log(x(143)/global_par_ic0700)+reaction_r_0243_ep0657*log(x(138)/global_par_ic0657));

% Reaction: id = r_0244, name = C-s24 sterol reductase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0244_FLUX_VALUE=2.43351485368152E-4;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0244_v0=2.43351485368152E-4;
	% Local Parameter:   id =  ep0662, name = ep0662
	reaction_r_0244_ep0662=1.0;
	% Local Parameter:   id =  ep1212, name = ep1212
	reaction_r_0244_ep1212=1.0;
	% Local Parameter:   id =  ep0666, name = ep0666
	reaction_r_0244_ep0666=-1.0;
	% Local Parameter:   id =  ep1207, name = ep1207
	reaction_r_0244_ep1207=-1.0;

	reaction_r_0244=compartment_cell*reaction_r_0244_v0*(1+reaction_r_0244_ep0662*log(x(139)/global_par_ic0662)+reaction_r_0244_ep1212*log(x(222)/global_par_ic1212)+reaction_r_0244_ep0666*log(x(141)/global_par_ic0666)+reaction_r_0244_ep1207*log(x(221)/global_par_ic1207));

% Reaction: id = r_0250, name = carbamoyl-phosphate synthase (glutamine-hydrolysing)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0250_FLUX_VALUE=0.0102965155927141;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0250_v0=0.0102965155927141;
	% Local Parameter:   id =  ep0434, name = ep0434
	reaction_r_0250_ep0434=2.0;
	% Local Parameter:   id =  ep0445, name = ep0445
	reaction_r_0250_ep0445=1.0;
	% Local Parameter:   id =  ep0999, name = ep0999
	reaction_r_0250_ep0999=1.0;
	% Local Parameter:   id =  ep0394, name = ep0394
	reaction_r_0250_ep0394=-2.0;
	% Local Parameter:   id =  ep0455, name = ep0455
	reaction_r_0250_ep0455=-1.0;
	% Local Parameter:   id =  ep0991, name = ep0991
	reaction_r_0250_ep0991=-1.0;
	% Local Parameter:   id =  ep1322, name = ep1322
	reaction_r_0250_ep1322=-1.0;

	reaction_r_0250=compartment_cell*reaction_r_0250_v0*(1+reaction_r_0250_ep0434*log(x(91)/global_par_ic0434)+reaction_r_0250_ep0445*log(x(92)/global_par_ic0445)+reaction_r_0250_ep0999*log(x(183)/global_par_ic0999)+reaction_r_0250_ep0394*log(x(81)/global_par_ic0394)+reaction_r_0250_ep0455*log(x(94)/global_par_ic0455)+reaction_r_0250_ep0991*log(x(182)/global_par_ic0991)+reaction_r_0250_ep1322*log(x(234)/global_par_ic1322));

% Reaction: id = r_0257, name = CDP-diacylglycerol synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0257_FLUX_VALUE=2.3107859282821E-4;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0257_v0=2.3107859282821E-4;
	% Local Parameter:   id =  ep0539, name = ep0539
	reaction_r_0257_ep0539=1.0;
	% Local Parameter:   id =  ep1331, name = ep1331
	reaction_r_0257_ep1331=1.0;
	% Local Parameter:   id =  ep0471, name = ep0471
	reaction_r_0257_ep0471=-1.0;
	% Local Parameter:   id =  ep0633, name = ep0633
	reaction_r_0257_ep0633=-1.0;

	reaction_r_0257=compartment_cell*reaction_r_0257_v0*(1+reaction_r_0257_ep0539*log(x(107)/global_par_ic0539)+reaction_r_0257_ep1331*log(x(235)/global_par_ic1331)+reaction_r_0257_ep0471*log(x(97)/global_par_ic0471)+reaction_r_0257_ep0633*log(x(132)/global_par_ic0633));

% Reaction: id = r_0259, name = ceramide-1 hydroxylase (24C)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0259_FLUX_VALUE=1.02210849818021E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0259_v0=1.02210849818021E-5;
	% Local Parameter:   id =  ep0475, name = ep0475
	reaction_r_0259_ep0475=1.0;
	% Local Parameter:   id =  ep1212, name = ep1212
	reaction_r_0259_ep1212=1.0;
	% Local Parameter:   id =  ep1275, name = ep1275
	reaction_r_0259_ep1275=1.0;
	% Local Parameter:   id =  ep0481, name = ep0481
	reaction_r_0259_ep0481=-1.0;
	% Local Parameter:   id =  ep1207, name = ep1207
	reaction_r_0259_ep1207=-1.0;

	reaction_r_0259=compartment_cell*reaction_r_0259_v0*(1+reaction_r_0259_ep0475*log(x(98)/global_par_ic0475)+reaction_r_0259_ep1212*log(x(222)/global_par_ic1212)+reaction_r_0259_ep1275*log(x(230)/global_par_ic1275)+reaction_r_0259_ep0481*log(x(99)/global_par_ic0481)+reaction_r_0259_ep1207*log(x(221)/global_par_ic1207));

% Reaction: id = r_0267, name = ceramide-3 synthase (24C)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0267_FLUX_VALUE=2.04421701081157E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0267_v0=2.04421701081157E-5;
	% Local Parameter:   id =  ep0481, name = ep0481
	reaction_r_0267_ep0481=1.0;
	% Local Parameter:   id =  ep1212, name = ep1212
	reaction_r_0267_ep1212=1.0;
	% Local Parameter:   id =  ep1275, name = ep1275
	reaction_r_0267_ep1275=1.0;
	% Local Parameter:   id =  ep0493, name = ep0493
	reaction_r_0267_ep0493=-1.0;
	% Local Parameter:   id =  ep1207, name = ep1207
	reaction_r_0267_ep1207=-1.0;

	reaction_r_0267=compartment_cell*reaction_r_0267_v0*(1+reaction_r_0267_ep0481*log(x(99)/global_par_ic0481)+reaction_r_0267_ep1212*log(x(222)/global_par_ic1212)+reaction_r_0267_ep1275*log(x(230)/global_par_ic1275)+reaction_r_0267_ep0493*log(x(100)/global_par_ic0493)+reaction_r_0267_ep1207*log(x(221)/global_par_ic1207));

% Reaction: id = r_0269, name = ceramide-4 synthase (24C)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0269_FLUX_VALUE=2.04421702621944E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0269_v0=2.04421702621944E-5;
	% Local Parameter:   id =  ep0493, name = ep0493
	reaction_r_0269_ep0493=1.0;
	% Local Parameter:   id =  ep1212, name = ep1212
	reaction_r_0269_ep1212=1.0;
	% Local Parameter:   id =  ep1275, name = ep1275
	reaction_r_0269_ep1275=1.0;
	% Local Parameter:   id =  ep0499, name = ep0499
	reaction_r_0269_ep0499=-1.0;
	% Local Parameter:   id =  ep1207, name = ep1207
	reaction_r_0269_ep1207=-1.0;

	reaction_r_0269=compartment_cell*reaction_r_0269_v0*(1+reaction_r_0269_ep0493*log(x(100)/global_par_ic0493)+reaction_r_0269_ep1212*log(x(222)/global_par_ic1212)+reaction_r_0269_ep1275*log(x(230)/global_par_ic1275)+reaction_r_0269_ep0499*log(x(101)/global_par_ic0499)+reaction_r_0269_ep1207*log(x(221)/global_par_ic1207));

% Reaction: id = r_0278, name = chorismate mutase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0278_FLUX_VALUE=0.00895299678702938;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0278_v0=0.00895299678702938;
	% Local Parameter:   id =  ep0515, name = ep0515
	reaction_r_0278_ep0515=1.0;
	% Local Parameter:   id =  ep1377, name = ep1377
	reaction_r_0278_ep1377=-1.0;

	reaction_r_0278=compartment_cell*reaction_r_0278_v0*(1+reaction_r_0278_ep0515*log(x(102)/global_par_ic0515)+reaction_r_0278_ep1377*log(x(246)/global_par_ic1377));

% Reaction: id = r_0279, name = chorismate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0279_FLUX_VALUE=0.0100308480322675;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0279_v0=0.0100308480322675;
	% Local Parameter:   id =  ep0324, name = ep0324
	reaction_r_0279_ep0324=1.0;
	% Local Parameter:   id =  ep0515, name = ep0515
	reaction_r_0279_ep0515=-1.0;
	% Local Parameter:   id =  ep1322, name = ep1322
	reaction_r_0279_ep1322=-1.0;

	reaction_r_0279=compartment_cell*reaction_r_0279_v0*(1+reaction_r_0279_ep0324*log(x(68)/global_par_ic0324)+reaction_r_0279_ep0515*log(x(102)/global_par_ic0515)+reaction_r_0279_ep1322*log(x(234)/global_par_ic1322));

% Reaction: id = r_0280, name = cis-aconitate(3-) to isocitrate	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0280_FLUX_VALUE=0.0386660157978829;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0280_v0=0.0386660157978829;
	% Local Parameter:   id =  ep0516, name = ep0516
	reaction_r_0280_ep0516=1.0;
	% Local Parameter:   id =  ep0940, name = ep0940
	reaction_r_0280_ep0940=-1.0;

	reaction_r_0280=compartment_cell*reaction_r_0280_v0*(1+reaction_r_0280_ep0516*log(x(103)/global_par_ic0516)+reaction_r_0280_ep0940*log(x(169)/global_par_ic0940));

% Reaction: id = r_0300, name = citrate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0300_FLUX_VALUE=0.0386660157978829;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0300_v0=0.0386660157978829;
	% Local Parameter:   id =  ep0373, name = ep0373
	reaction_r_0300_ep0373=1.0;
	% Local Parameter:   id =  ep1271, name = ep1271
	reaction_r_0300_ep1271=1.0;
	% Local Parameter:   id =  ep0522, name = ep0522
	reaction_r_0300_ep0522=-1.0;
	% Local Parameter:   id =  ep0529, name = ep0529
	reaction_r_0300_ep0529=-1.0;

	reaction_r_0300=compartment_cell*reaction_r_0300_v0*(1+reaction_r_0300_ep0373*log(x(76)/global_par_ic0373)+reaction_r_0300_ep1271*log(x(229)/global_par_ic1271)+reaction_r_0300_ep0522*log(x(104)/global_par_ic0522)+reaction_r_0300_ep0529*log(x(106)/global_par_ic0529));

% Reaction: id = r_0302, name = citrate to cis-aconitate(3-)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0302_FLUX_VALUE=0.0386660157978829;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0302_v0=0.0386660157978829;
	% Local Parameter:   id =  ep0522, name = ep0522
	reaction_r_0302_ep0522=1.0;
	% Local Parameter:   id =  ep0516, name = ep0516
	reaction_r_0302_ep0516=-1.0;

	reaction_r_0302=compartment_cell*reaction_r_0302_v0*(1+reaction_r_0302_ep0522*log(x(104)/global_par_ic0522)+reaction_r_0302_ep0516*log(x(103)/global_par_ic0516));

% Reaction: id = r_0307, name = CTP synthase (NH3)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0307_FLUX_VALUE=0.00179092669763194;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0307_v0=0.00179092669763194;
	% Local Parameter:   id =  ep0419, name = ep0419
	reaction_r_0307_ep0419=1.0;
	% Local Parameter:   id =  ep0434, name = ep0434
	reaction_r_0307_ep0434=1.0;
	% Local Parameter:   id =  ep1559, name = ep1559
	reaction_r_0307_ep1559=1.0;
	% Local Parameter:   id =  ep0394, name = ep0394
	reaction_r_0307_ep0394=-1.0;
	% Local Parameter:   id =  ep0539, name = ep0539
	reaction_r_0307_ep0539=-1.0;
	% Local Parameter:   id =  ep1322, name = ep1322
	reaction_r_0307_ep1322=-1.0;

	reaction_r_0307=compartment_cell*reaction_r_0307_v0*(1+reaction_r_0307_ep0419*log(x(85)/global_par_ic0419)+reaction_r_0307_ep0434*log(x(91)/global_par_ic0434)+reaction_r_0307_ep1559*log(x(274)/global_par_ic1559)+reaction_r_0307_ep0394*log(x(81)/global_par_ic0394)+reaction_r_0307_ep0539*log(x(107)/global_par_ic0539)+reaction_r_0307_ep1322*log(x(234)/global_par_ic1322));

% Reaction: id = r_0309, name = cystathionine beta-synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0309_FLUX_VALUE=2.50486556092046E-4;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0309_v0=2.50486556092046E-4;
	% Local Parameter:   id =  ep1012, name = ep1012
	reaction_r_0309_ep1012=1.0;
	% Local Parameter:   id =  ep1039, name = ep1039
	reaction_r_0309_ep1039=1.0;
	% Local Parameter:   id =  ep0980, name = ep0980
	reaction_r_0309_ep0980=-1.0;

	reaction_r_0309=compartment_cell*reaction_r_0309_v0*(1+reaction_r_0309_ep1012*log(x(188)/global_par_ic1012)+reaction_r_0309_ep1039*log(x(197)/global_par_ic1039)+reaction_r_0309_ep0980*log(x(180)/global_par_ic0980));

% Reaction: id = r_0310, name = cystathionine g-lyase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0310_FLUX_VALUE=0.00965062714998262;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0310_v0=0.00965062714998262;
	% Local Parameter:   id =  ep0980, name = ep0980
	reaction_r_0310_ep0980=1.0;
	% Local Parameter:   id =  ep0178, name = ep0178
	reaction_r_0310_ep0178=-1.0;
	% Local Parameter:   id =  ep0419, name = ep0419
	reaction_r_0310_ep0419=-1.0;
	% Local Parameter:   id =  ep0981, name = ep0981
	reaction_r_0310_ep0981=-1.0;

	reaction_r_0310=compartment_cell*reaction_r_0310_v0*(1+reaction_r_0310_ep0980*log(x(180)/global_par_ic0980)+reaction_r_0310_ep0178*log(x(35)/global_par_ic0178)+reaction_r_0310_ep0419*log(x(85)/global_par_ic0419)+reaction_r_0310_ep0981*log(x(181)/global_par_ic0981));

% Reaction: id = r_0311, name = cystathionine gamma-synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0311_FLUX_VALUE=0.0094001405938857;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0311_v0=0.0094001405938857;
	% Local Parameter:   id =  ep0981, name = ep0981
	reaction_r_0311_ep0981=1.0;
	% Local Parameter:   id =  ep1233, name = ep1233
	reaction_r_0311_ep1233=1.0;
	% Local Parameter:   id =  ep0362, name = ep0362
	reaction_r_0311_ep0362=-1.0;
	% Local Parameter:   id =  ep0980, name = ep0980
	reaction_r_0311_ep0980=-1.0;

	reaction_r_0311=compartment_cell*reaction_r_0311_v0*(1+reaction_r_0311_ep0981*log(x(181)/global_par_ic0981)+reaction_r_0311_ep1233*log(x(223)/global_par_ic1233)+reaction_r_0311_ep0362*log(x(74)/global_par_ic0362)+reaction_r_0311_ep0980*log(x(180)/global_par_ic0980));

% Reaction: id = r_0313, name = cysteinyl-tRNA synthetase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0313_FLUX_VALUE=2.50486556991948E-4;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0313_v0=2.50486556991948E-4;
	% Local Parameter:   id =  ep0434, name = ep0434
	reaction_r_0313_ep0434=1.0;
	% Local Parameter:   id =  ep0981, name = ep0981
	reaction_r_0313_ep0981=1.0;
	% Local Parameter:   id =  ep1589, name = ep1589
	reaction_r_0313_ep1589=1.0;
	% Local Parameter:   id =  ep0423, name = ep0423
	reaction_r_0313_ep0423=-1.0;
	% Local Parameter:   id =  ep0542, name = ep0542
	reaction_r_0313_ep0542=-1.0;
	% Local Parameter:   id =  ep0633, name = ep0633
	reaction_r_0313_ep0633=-1.0;

	reaction_r_0313=compartment_cell*reaction_r_0313_v0*(1+reaction_r_0313_ep0434*log(x(91)/global_par_ic0434)+reaction_r_0313_ep0981*log(x(181)/global_par_ic0981)+reaction_r_0313_ep1589*log(x(286)/global_par_ic1589)+reaction_r_0313_ep0423*log(x(86)/global_par_ic0423)+reaction_r_0313_ep0542*log(x(108)/global_par_ic0542)+reaction_r_0313_ep0633*log(x(132)/global_par_ic0633));

% Reaction: id = r_0317, name = cytochrome P450 lanosterol 14-alpha-demethylase (NADP)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0317_FLUX_VALUE=2.58760203874159E-4;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0317_v0=2.58760203874159E-4;
	% Local Parameter:   id =  ep1059, name = ep1059
	reaction_r_0317_ep1059=1.0;
	% Local Parameter:   id =  ep1212, name = ep1212
	reaction_r_0317_ep1212=3.0;
	% Local Parameter:   id =  ep1275, name = ep1275
	reaction_r_0317_ep1275=3.0;
	% Local Parameter:   id =  ep0262, name = ep0262
	reaction_r_0317_ep0262=-1.0;
	% Local Parameter:   id =  ep0722, name = ep0722
	reaction_r_0317_ep0722=-1.0;
	% Local Parameter:   id =  ep1207, name = ep1207
	reaction_r_0317_ep1207=-3.0;

	reaction_r_0317=compartment_cell*reaction_r_0317_v0*(1+reaction_r_0317_ep1059*log(x(202)/global_par_ic1059)+reaction_r_0317_ep1212*log(x(222)/global_par_ic1212)+reaction_r_0317_ep1275*log(x(230)/global_par_ic1275)+reaction_r_0317_ep0262*log(x(52)/global_par_ic0262)+reaction_r_0317_ep0722*log(x(146)/global_par_ic0722)+reaction_r_0317_ep1207*log(x(221)/global_par_ic1207));

% Reaction: id = r_0326, name = dCMP deaminase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0326_FLUX_VALUE=3.36354094523684E-6;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0326_v0=3.36354094523684E-6;
	% Local Parameter:   id =  ep0589, name = ep0589
	reaction_r_0326_ep0589=1.0;
	% Local Parameter:   id =  ep0419, name = ep0419
	reaction_r_0326_ep0419=-1.0;
	% Local Parameter:   id =  ep0654, name = ep0654
	reaction_r_0326_ep0654=-1.0;

	reaction_r_0326=compartment_cell*reaction_r_0326_v0*(1+reaction_r_0326_ep0589*log(x(124)/global_par_ic0589)+reaction_r_0326_ep0419*log(x(85)/global_par_ic0419)+reaction_r_0326_ep0654*log(x(136)/global_par_ic0654));

% Reaction: id = r_0330, name = deoxyguanylate kinase (dGMP:ATP)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0330_FLUX_VALUE=9.10860206737184E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0330_v0=9.10860206737184E-5;
	% Local Parameter:   id =  ep0394, name = ep0394
	reaction_r_0330_ep0394=1.0;
	% Local Parameter:   id =  ep0613, name = ep0613
	reaction_r_0330_ep0613=1.0;
	% Local Parameter:   id =  ep0434, name = ep0434
	reaction_r_0330_ep0434=-1.0;
	% Local Parameter:   id =  ep0615, name = ep0615
	reaction_r_0330_ep0615=-1.0;

	reaction_r_0330=compartment_cell*reaction_r_0330_v0*(1+reaction_r_0330_ep0394*log(x(81)/global_par_ic0394)+reaction_r_0330_ep0613*log(x(127)/global_par_ic0613)+reaction_r_0330_ep0434*log(x(91)/global_par_ic0434)+reaction_r_0330_ep0615*log(x(128)/global_par_ic0615));

% Reaction: id = r_0336, name = diacylglycerol acyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0336_FLUX_VALUE=4.80554664340808E-4;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0336_v0=4.80554664340808E-4;
	% Local Parameter:   id =  ep0529, name = ep0529
	reaction_r_0336_ep0529=1.0;
	% Local Parameter:   id =  ep1524, name = ep1524
	reaction_r_0336_ep1524=1.0;
	% Local Parameter:   id =  ep0380, name = ep0380
	reaction_r_0336_ep0380=-1.0;
	% Local Parameter:   id =  ep0619, name = ep0619
	reaction_r_0336_ep0619=-1.0;

	reaction_r_0336=compartment_cell*reaction_r_0336_v0*(1+reaction_r_0336_ep0529*log(x(106)/global_par_ic0529)+reaction_r_0336_ep1524*log(x(266)/global_par_ic1524)+reaction_r_0336_ep0380*log(x(77)/global_par_ic0380)+reaction_r_0336_ep0619*log(x(129)/global_par_ic0619));

% Reaction: id = r_0337, name = diacylglycerol pyrophosphate phosphatase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0337_FLUX_VALUE=9.19873934027924E-6;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0337_v0=9.19873934027924E-6;
	% Local Parameter:   id =  ep1331, name = ep1331
	reaction_r_0337_ep1331=1.0;
	% Local Parameter:   id =  ep0619, name = ep0619
	reaction_r_0337_ep0619=-1.0;
	% Local Parameter:   id =  ep1322, name = ep1322
	reaction_r_0337_ep1322=-1.0;

	reaction_r_0337=compartment_cell*reaction_r_0337_v0*(1+reaction_r_0337_ep1331*log(x(235)/global_par_ic1331)+reaction_r_0337_ep0619*log(x(129)/global_par_ic0619)+reaction_r_0337_ep1322*log(x(234)/global_par_ic1322));

% Reaction: id = r_0339, name = dihydoorotic acid dehydrogenase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0339_FLUX_VALUE=0.00419754745533934;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0339_v0=0.00419754745533934;
	% Local Parameter:   id =  ep0061, name = ep0061
	reaction_r_0339_ep0061=1.0;
	% Local Parameter:   id =  ep1275, name = ep1275
	reaction_r_0339_ep1275=1.0;
	% Local Parameter:   id =  ep0837, name = ep0837
	reaction_r_0339_ep0837=-1.0;
	% Local Parameter:   id =  ep1269, name = ep1269
	reaction_r_0339_ep1269=-1.0;

	reaction_r_0339=compartment_cell*reaction_r_0339_v0*(1+reaction_r_0339_ep0061*log(x(14)/global_par_ic0061)+reaction_r_0339_ep1275*log(x(230)/global_par_ic1275)+reaction_r_0339_ep0837*log(x(164)/global_par_ic0837)+reaction_r_0339_ep1269*log(x(227)/global_par_ic1269));

% Reaction: id = r_0340, name = dihydroceramidase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0340_FLUX_VALUE=1.02210849818021E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0340_v0=1.02210849818021E-5;
	% Local Parameter:   id =  ep1084, name = ep1084
	reaction_r_0340_ep1084=1.0;
	% Local Parameter:   id =  ep1445, name = ep1445
	reaction_r_0340_ep1445=1.0;
	% Local Parameter:   id =  ep0475, name = ep0475
	reaction_r_0340_ep0475=-1.0;

	reaction_r_0340=compartment_cell*reaction_r_0340_v0*(1+reaction_r_0340_ep1084*log(x(206)/global_par_ic1084)+reaction_r_0340_ep1445*log(x(257)/global_par_ic1445)+reaction_r_0340_ep0475*log(x(98)/global_par_ic0475));

% Reaction: id = r_0344, name = dihydrofolate reductase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0344_FLUX_VALUE=1.36629031089924E-4;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0344_v0=1.36629031089924E-4;
	% Local Parameter:   id =  ep0625, name = ep0625
	reaction_r_0344_ep0625=1.0;
	% Local Parameter:   id =  ep1212, name = ep1212
	reaction_r_0344_ep1212=1.0;
	% Local Parameter:   id =  ep1207, name = ep1207
	reaction_r_0344_ep1207=-1.0;
	% Local Parameter:   id =  ep1487, name = ep1487
	reaction_r_0344_ep1487=-1.0;

	reaction_r_0344=compartment_cell*reaction_r_0344_v0*(1+reaction_r_0344_ep0625*log(x(130)/global_par_ic0625)+reaction_r_0344_ep1212*log(x(222)/global_par_ic1212)+reaction_r_0344_ep1207*log(x(221)/global_par_ic1207)+reaction_r_0344_ep1487*log(x(263)/global_par_ic1487));

% Reaction: id = r_0349, name = dihydroorotase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0349_FLUX_VALUE=0.00419754745504612;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0349_v0=0.00419754745504612;
	% Local Parameter:   id =  ep1194, name = ep1194
	reaction_r_0349_ep1194=1.0;
	% Local Parameter:   id =  ep0061, name = ep0061
	reaction_r_0349_ep0061=-1.0;

	reaction_r_0349=compartment_cell*reaction_r_0349_v0*(1+reaction_r_0349_ep1194*log(x(218)/global_par_ic1194)+reaction_r_0349_ep0061*log(x(14)/global_par_ic0061));

% Reaction: id = r_0352, name = dihydroxy-acid dehydratase (2,3-dihydroxy-3-methylbutanoate)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0352_FLUX_VALUE=0.0212913573443156;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0352_v0=0.0212913573443156;
	% Local Parameter:   id =  ep0016, name = ep0016
	reaction_r_0352_ep0016=1.0;
	% Local Parameter:   id =  ep0232, name = ep0232
	reaction_r_0352_ep0232=-1.0;

	reaction_r_0352=compartment_cell*reaction_r_0352_v0*(1+reaction_r_0352_ep0016*log(x(7)/global_par_ic0016)+reaction_r_0352_ep0232*log(x(47)/global_par_ic0232));

% Reaction: id = r_0353, name = dihydroxy-acid dehydratase (2,3-dihydroxy-3-methylpentanoate)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0353_FLUX_VALUE=0.00965062714996943;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0353_v0=0.00965062714996943;
	% Local Parameter:   id =  ep0008, name = ep0008
	reaction_r_0353_ep0008=1.0;
	% Local Parameter:   id =  ep0056, name = ep0056
	reaction_r_0353_ep0056=-1.0;

	reaction_r_0353=compartment_cell*reaction_r_0353_v0*(1+reaction_r_0353_ep0008*log(x(3)/global_par_ic0008)+reaction_r_0353_ep0056*log(x(13)/global_par_ic0056));

% Reaction: id = r_0355, name = dimethylallyltranstransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0355_FLUX_VALUE=5.19949368301002E-4;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0355_v0=5.19949368301002E-4;
	% Local Parameter:   id =  ep0943, name = ep0943
	reaction_r_0355_ep0943=1.0;
	% Local Parameter:   id =  ep1376, name = ep1376
	reaction_r_0355_ep1376=1.0;
	% Local Parameter:   id =  ep0633, name = ep0633
	reaction_r_0355_ep0633=-1.0;
	% Local Parameter:   id =  ep0745, name = ep0745
	reaction_r_0355_ep0745=-1.0;

	reaction_r_0355=compartment_cell*reaction_r_0355_v0*(1+reaction_r_0355_ep0943*log(x(170)/global_par_ic0943)+reaction_r_0355_ep1376*log(x(245)/global_par_ic1376)+reaction_r_0355_ep0633*log(x(132)/global_par_ic0633)+reaction_r_0355_ep0745*log(x(150)/global_par_ic0745));

% Reaction: id = r_0361, name = dolichyl-phosphate D-mannosyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0361_FLUX_VALUE=0.0306618317263326;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0361_v0=0.0306618317263326;
	% Local Parameter:   id =  ep0645, name = ep0645
	reaction_r_0361_ep0645=1.0;
	% Local Parameter:   id =  ep0743, name = ep0743
	reaction_r_0361_ep0743=1.0;
	% Local Parameter:   id =  ep0644, name = ep0644
	reaction_r_0361_ep0644=-1.0;
	% Local Parameter:   id =  ep0739, name = ep0739
	reaction_r_0361_ep0739=-1.0;

	reaction_r_0361=compartment_cell*reaction_r_0361_v0*(1+reaction_r_0361_ep0645*log(x(134)/global_par_ic0645)+reaction_r_0361_ep0743*log(x(149)/global_par_ic0743)+reaction_r_0361_ep0644*log(x(133)/global_par_ic0644)+reaction_r_0361_ep0739*log(x(148)/global_par_ic0739));

% Reaction: id = r_0362, name = dolichyl-phosphate-mannose--protein mannosyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0362_FLUX_VALUE=0.0306618317263326;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0362_v0=0.0306618317263326;
	% Local Parameter:   id =  ep0644, name = ep0644
	reaction_r_0362_ep0644=1.0;
	% Local Parameter:   id =  ep0645, name = ep0645
	reaction_r_0362_ep0645=-1.0;
	% Local Parameter:   id =  ep1107, name = ep1107
	reaction_r_0362_ep1107=-1.0;

	reaction_r_0362=compartment_cell*reaction_r_0362_v0*(1+reaction_r_0362_ep0644*log(x(133)/global_par_ic0644)+reaction_r_0362_ep0645*log(x(134)/global_par_ic0645)+reaction_r_0362_ep1107*log(x(209)/global_par_ic1107));

% Reaction: id = r_0364, name = dUTP diphosphatase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0364_FLUX_VALUE=1.33265490575614E-4;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0364_v0=1.33265490575614E-4;
	% Local Parameter:   id =  ep0656, name = ep0656
	reaction_r_0364_ep0656=1.0;
	% Local Parameter:   id =  ep0633, name = ep0633
	reaction_r_0364_ep0633=-1.0;
	% Local Parameter:   id =  ep0654, name = ep0654
	reaction_r_0364_ep0654=-1.0;

	reaction_r_0364=compartment_cell*reaction_r_0364_v0*(1+reaction_r_0364_ep0656*log(x(137)/global_par_ic0656)+reaction_r_0364_ep0633*log(x(132)/global_par_ic0633)+reaction_r_0364_ep0654*log(x(136)/global_par_ic0654));

% Reaction: id = r_0366, name = enolase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0366_FLUX_VALUE=0.231348466852626;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0366_v0=0.231348466852626;
	% Local Parameter:   id =  ep0188, name = ep0188
	reaction_r_0366_ep0188=1.0;
	% Local Parameter:   id =  ep1360, name = ep1360
	reaction_r_0366_ep1360=-1.0;

	reaction_r_0366=compartment_cell*reaction_r_0366_v0*(1+reaction_r_0366_ep0188*log(x(37)/global_par_ic0188)+reaction_r_0366_ep1360*log(x(241)/global_par_ic1360));

% Reaction: id = r_0386, name = fatty acid synthase (n-C12:0)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0386_FLUX_VALUE=1.02210849110579E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0386_v0=1.02210849110579E-5;
	% Local Parameter:   id =  ep0595, name = ep0595
	reaction_r_0386_ep0595=1.0;
	% Local Parameter:   id =  ep1101, name = ep1101
	reaction_r_0386_ep1101=1.0;
	% Local Parameter:   id =  ep1212, name = ep1212
	reaction_r_0386_ep1212=2.0;
	% Local Parameter:   id =  ep0456, name = ep0456
	reaction_r_0386_ep0456=-1.0;
	% Local Parameter:   id =  ep0529, name = ep0529
	reaction_r_0386_ep0529=-1.0;
	% Local Parameter:   id =  ep1065, name = ep1065
	reaction_r_0386_ep1065=-1.0;
	% Local Parameter:   id =  ep1207, name = ep1207
	reaction_r_0386_ep1207=-2.0;

	reaction_r_0386=compartment_cell*reaction_r_0386_v0*(1+reaction_r_0386_ep0595*log(x(125)/global_par_ic0595)+reaction_r_0386_ep1101*log(x(208)/global_par_ic1101)+reaction_r_0386_ep1212*log(x(222)/global_par_ic1212)+reaction_r_0386_ep0456*log(x(95)/global_par_ic0456)+reaction_r_0386_ep0529*log(x(106)/global_par_ic0529)+reaction_r_0386_ep1065*log(x(203)/global_par_ic1065)+reaction_r_0386_ep1207*log(x(221)/global_par_ic1207));

% Reaction: id = r_0387, name = fatty acid synthase (n-C14:0)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0387_FLUX_VALUE=1.02210846264081E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0387_v0=1.02210846264081E-5;
	% Local Parameter:   id =  ep1065, name = ep1065
	reaction_r_0387_ep1065=1.0;
	% Local Parameter:   id =  ep1101, name = ep1101
	reaction_r_0387_ep1101=1.0;
	% Local Parameter:   id =  ep1212, name = ep1212
	reaction_r_0387_ep1212=2.0;
	% Local Parameter:   id =  ep0456, name = ep0456
	reaction_r_0387_ep0456=-1.0;
	% Local Parameter:   id =  ep0529, name = ep0529
	reaction_r_0387_ep0529=-1.0;
	% Local Parameter:   id =  ep1161, name = ep1161
	reaction_r_0387_ep1161=-1.0;
	% Local Parameter:   id =  ep1207, name = ep1207
	reaction_r_0387_ep1207=-2.0;

	reaction_r_0387=compartment_cell*reaction_r_0387_v0*(1+reaction_r_0387_ep1065*log(x(203)/global_par_ic1065)+reaction_r_0387_ep1101*log(x(208)/global_par_ic1101)+reaction_r_0387_ep1212*log(x(222)/global_par_ic1212)+reaction_r_0387_ep0456*log(x(95)/global_par_ic0456)+reaction_r_0387_ep0529*log(x(106)/global_par_ic0529)+reaction_r_0387_ep1161*log(x(212)/global_par_ic1161)+reaction_r_0387_ep1207*log(x(221)/global_par_ic1207));

% Reaction: id = r_0389, name = fatty acid synthase (n-C16:0)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0389_FLUX_VALUE=1.02210846264081E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0389_v0=1.02210846264081E-5;
	% Local Parameter:   id =  ep1101, name = ep1101
	reaction_r_0389_ep1101=1.0;
	% Local Parameter:   id =  ep1161, name = ep1161
	reaction_r_0389_ep1161=1.0;
	% Local Parameter:   id =  ep1212, name = ep1212
	reaction_r_0389_ep1212=2.0;
	% Local Parameter:   id =  ep0456, name = ep0456
	reaction_r_0389_ep0456=-1.0;
	% Local Parameter:   id =  ep0529, name = ep0529
	reaction_r_0389_ep0529=-1.0;
	% Local Parameter:   id =  ep1207, name = ep1207
	reaction_r_0389_ep1207=-2.0;
	% Local Parameter:   id =  ep1286, name = ep1286
	reaction_r_0389_ep1286=-1.0;

	reaction_r_0389=compartment_cell*reaction_r_0389_v0*(1+reaction_r_0389_ep1101*log(x(208)/global_par_ic1101)+reaction_r_0389_ep1161*log(x(212)/global_par_ic1161)+reaction_r_0389_ep1212*log(x(222)/global_par_ic1212)+reaction_r_0389_ep0456*log(x(95)/global_par_ic0456)+reaction_r_0389_ep0529*log(x(106)/global_par_ic0529)+reaction_r_0389_ep1207*log(x(221)/global_par_ic1207)+reaction_r_0389_ep1286*log(x(231)/global_par_ic1286));

% Reaction: id = r_0391, name = fatty acid synthase (n-C18:0)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0391_FLUX_VALUE=1.02210846264081E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0391_v0=1.02210846264081E-5;
	% Local Parameter:   id =  ep1101, name = ep1101
	reaction_r_0391_ep1101=1.0;
	% Local Parameter:   id =  ep1212, name = ep1212
	reaction_r_0391_ep1212=2.0;
	% Local Parameter:   id =  ep1286, name = ep1286
	reaction_r_0391_ep1286=1.0;
	% Local Parameter:   id =  ep0456, name = ep0456
	reaction_r_0391_ep0456=-1.0;
	% Local Parameter:   id =  ep0529, name = ep0529
	reaction_r_0391_ep0529=-1.0;
	% Local Parameter:   id =  ep1207, name = ep1207
	reaction_r_0391_ep1207=-2.0;
	% Local Parameter:   id =  ep1449, name = ep1449
	reaction_r_0391_ep1449=-1.0;

	reaction_r_0391=compartment_cell*reaction_r_0391_v0*(1+reaction_r_0391_ep1101*log(x(208)/global_par_ic1101)+reaction_r_0391_ep1212*log(x(222)/global_par_ic1212)+reaction_r_0391_ep1286*log(x(231)/global_par_ic1286)+reaction_r_0391_ep0456*log(x(95)/global_par_ic0456)+reaction_r_0391_ep0529*log(x(106)/global_par_ic0529)+reaction_r_0391_ep1207*log(x(221)/global_par_ic1207)+reaction_r_0391_ep1449*log(x(259)/global_par_ic1449));

% Reaction: id = r_0393, name = fatty acid synthase (n-C24:0), lumped reaction	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0393_FLUX_VALUE=2.04421699980673E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0393_v0=2.04421699980673E-5;
	% Local Parameter:   id =  ep1101, name = ep1101
	reaction_r_0393_ep1101=3.0;
	% Local Parameter:   id =  ep1212, name = ep1212
	reaction_r_0393_ep1212=6.0;
	% Local Parameter:   id =  ep1449, name = ep1449
	reaction_r_0393_ep1449=1.0;
	% Local Parameter:   id =  ep0456, name = ep0456
	reaction_r_0393_ep0456=-3.0;
	% Local Parameter:   id =  ep0529, name = ep0529
	reaction_r_0393_ep0529=-3.0;
	% Local Parameter:   id =  ep1084, name = ep1084
	reaction_r_0393_ep1084=-1.0;
	% Local Parameter:   id =  ep1207, name = ep1207
	reaction_r_0393_ep1207=-6.0;

	reaction_r_0393=compartment_cell*reaction_r_0393_v0*(1+reaction_r_0393_ep1101*log(x(208)/global_par_ic1101)+reaction_r_0393_ep1212*log(x(222)/global_par_ic1212)+reaction_r_0393_ep1449*log(x(259)/global_par_ic1449)+reaction_r_0393_ep0456*log(x(95)/global_par_ic0456)+reaction_r_0393_ep0529*log(x(106)/global_par_ic0529)+reaction_r_0393_ep1084*log(x(206)/global_par_ic1084)+reaction_r_0393_ep1207*log(x(221)/global_par_ic1207));

% Reaction: id = r_0397, name = fatty acyl-CoA synthase (n-C10:0CoA)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0397_FLUX_VALUE=4.0884339927971E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0397_v0=4.0884339927971E-5;
	% Local Parameter:   id =  ep1101, name = ep1101
	reaction_r_0397_ep1101=1.0;
	% Local Parameter:   id =  ep1212, name = ep1212
	reaction_r_0397_ep1212=2.0;
	% Local Parameter:   id =  ep1255, name = ep1255
	reaction_r_0397_ep1255=1.0;
	% Local Parameter:   id =  ep0456, name = ep0456
	reaction_r_0397_ep0456=-1.0;
	% Local Parameter:   id =  ep0529, name = ep0529
	reaction_r_0397_ep0529=-1.0;
	% Local Parameter:   id =  ep0602, name = ep0602
	reaction_r_0397_ep0602=-1.0;
	% Local Parameter:   id =  ep1207, name = ep1207
	reaction_r_0397_ep1207=-2.0;

	reaction_r_0397=compartment_cell*reaction_r_0397_v0*(1+reaction_r_0397_ep1101*log(x(208)/global_par_ic1101)+reaction_r_0397_ep1212*log(x(222)/global_par_ic1212)+reaction_r_0397_ep1255*log(x(225)/global_par_ic1255)+reaction_r_0397_ep0456*log(x(95)/global_par_ic0456)+reaction_r_0397_ep0529*log(x(106)/global_par_ic0529)+reaction_r_0397_ep0602*log(x(126)/global_par_ic0602)+reaction_r_0397_ep1207*log(x(221)/global_par_ic1207));

% Reaction: id = r_0398, name = fatty acyl-CoA synthase (n-C8:0CoA), lumped reaction	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0398_FLUX_VALUE=4.08843399368032E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0398_v0=4.08843399368032E-5;
	% Local Parameter:   id =  ep0373, name = ep0373
	reaction_r_0398_ep0373=1.0;
	% Local Parameter:   id =  ep1101, name = ep1101
	reaction_r_0398_ep1101=3.0;
	% Local Parameter:   id =  ep1212, name = ep1212
	reaction_r_0398_ep1212=6.0;
	% Local Parameter:   id =  ep0456, name = ep0456
	reaction_r_0398_ep0456=-3.0;
	% Local Parameter:   id =  ep0529, name = ep0529
	reaction_r_0398_ep0529=-3.0;
	% Local Parameter:   id =  ep1207, name = ep1207
	reaction_r_0398_ep1207=-6.0;
	% Local Parameter:   id =  ep1255, name = ep1255
	reaction_r_0398_ep1255=-1.0;

	reaction_r_0398=compartment_cell*reaction_r_0398_v0*(1+reaction_r_0398_ep0373*log(x(76)/global_par_ic0373)+reaction_r_0398_ep1101*log(x(208)/global_par_ic1101)+reaction_r_0398_ep1212*log(x(222)/global_par_ic1212)+reaction_r_0398_ep0456*log(x(95)/global_par_ic0456)+reaction_r_0398_ep0529*log(x(106)/global_par_ic0529)+reaction_r_0398_ep1207*log(x(221)/global_par_ic1207)+reaction_r_0398_ep1255*log(x(225)/global_par_ic1255));

% Reaction: id = r_0399, name = fatty-acid--CoA ligase (decanoate)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0399_FLUX_VALUE=1.02210849110579E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0399_v0=1.02210849110579E-5;
	% Local Parameter:   id =  ep0423, name = ep0423
	reaction_r_0399_ep0423=1.0;
	% Local Parameter:   id =  ep0602, name = ep0602
	reaction_r_0399_ep0602=1.0;
	% Local Parameter:   id =  ep0633, name = ep0633
	reaction_r_0399_ep0633=1.0;
	% Local Parameter:   id =  ep0434, name = ep0434
	reaction_r_0399_ep0434=-1.0;
	% Local Parameter:   id =  ep0529, name = ep0529
	reaction_r_0399_ep0529=-1.0;
	% Local Parameter:   id =  ep0595, name = ep0595
	reaction_r_0399_ep0595=-1.0;

	reaction_r_0399=compartment_cell*reaction_r_0399_v0*(1+reaction_r_0399_ep0423*log(x(86)/global_par_ic0423)+reaction_r_0399_ep0602*log(x(126)/global_par_ic0602)+reaction_r_0399_ep0633*log(x(132)/global_par_ic0633)+reaction_r_0399_ep0434*log(x(91)/global_par_ic0434)+reaction_r_0399_ep0529*log(x(106)/global_par_ic0529)+reaction_r_0399_ep0595*log(x(125)/global_par_ic0595));

% Reaction: id = r_0400, name = fatty-acid--CoA ligase (dodecanoate)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0400_FLUX_VALUE=1.32100771565048E-12;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0400_v0=1.32100771565048E-12;
	% Local Parameter:   id =  ep0423, name = ep0423
	reaction_r_0400_ep0423=1.0;
	% Local Parameter:   id =  ep0633, name = ep0633
	reaction_r_0400_ep0633=1.0;
	% Local Parameter:   id =  ep1073, name = ep1073
	reaction_r_0400_ep1073=1.0;
	% Local Parameter:   id =  ep0434, name = ep0434
	reaction_r_0400_ep0434=-1.0;
	% Local Parameter:   id =  ep0529, name = ep0529
	reaction_r_0400_ep0529=-1.0;
	% Local Parameter:   id =  ep1065, name = ep1065
	reaction_r_0400_ep1065=-1.0;

	reaction_r_0400=compartment_cell*reaction_r_0400_v0*(1+reaction_r_0400_ep0423*log(x(86)/global_par_ic0423)+reaction_r_0400_ep0633*log(x(132)/global_par_ic0633)+reaction_r_0400_ep1073*log(x(204)/global_par_ic1073)+reaction_r_0400_ep0434*log(x(91)/global_par_ic0434)+reaction_r_0400_ep0529*log(x(106)/global_par_ic0529)+reaction_r_0400_ep1065*log(x(203)/global_par_ic1065));

% Reaction: id = r_0407, name = fatty-acid--CoA ligase (octadecanoate)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0407_FLUX_VALUE=1.02210853716592E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0407_v0=1.02210853716592E-5;
	% Local Parameter:   id =  ep0423, name = ep0423
	reaction_r_0407_ep0423=1.0;
	% Local Parameter:   id =  ep0633, name = ep0633
	reaction_r_0407_ep0633=1.0;
	% Local Parameter:   id =  ep1454, name = ep1454
	reaction_r_0407_ep1454=1.0;
	% Local Parameter:   id =  ep0434, name = ep0434
	reaction_r_0407_ep0434=-1.0;
	% Local Parameter:   id =  ep0529, name = ep0529
	reaction_r_0407_ep0529=-1.0;
	% Local Parameter:   id =  ep1449, name = ep1449
	reaction_r_0407_ep1449=-1.0;

	reaction_r_0407=compartment_cell*reaction_r_0407_v0*(1+reaction_r_0407_ep0423*log(x(86)/global_par_ic0423)+reaction_r_0407_ep0633*log(x(132)/global_par_ic0633)+reaction_r_0407_ep1454*log(x(260)/global_par_ic1454)+reaction_r_0407_ep0434*log(x(91)/global_par_ic0434)+reaction_r_0407_ep0529*log(x(106)/global_par_ic0529)+reaction_r_0407_ep1449*log(x(259)/global_par_ic1449));

% Reaction: id = r_0432, name = fatty-acyl-CoA synthase (n-C12:0CoA)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0432_FLUX_VALUE=3.06632550169132E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0432_v0=3.06632550169132E-5;
	% Local Parameter:   id =  ep0602, name = ep0602
	reaction_r_0432_ep0602=1.0;
	% Local Parameter:   id =  ep1101, name = ep1101
	reaction_r_0432_ep1101=1.0;
	% Local Parameter:   id =  ep1212, name = ep1212
	reaction_r_0432_ep1212=2.0;
	% Local Parameter:   id =  ep0456, name = ep0456
	reaction_r_0432_ep0456=-1.0;
	% Local Parameter:   id =  ep0529, name = ep0529
	reaction_r_0432_ep0529=-1.0;
	% Local Parameter:   id =  ep1073, name = ep1073
	reaction_r_0432_ep1073=-1.0;
	% Local Parameter:   id =  ep1207, name = ep1207
	reaction_r_0432_ep1207=-2.0;

	reaction_r_0432=compartment_cell*reaction_r_0432_v0*(1+reaction_r_0432_ep0602*log(x(126)/global_par_ic0602)+reaction_r_0432_ep1101*log(x(208)/global_par_ic1101)+reaction_r_0432_ep1212*log(x(222)/global_par_ic1212)+reaction_r_0432_ep0456*log(x(95)/global_par_ic0456)+reaction_r_0432_ep0529*log(x(106)/global_par_ic0529)+reaction_r_0432_ep1073*log(x(204)/global_par_ic1073)+reaction_r_0432_ep1207*log(x(221)/global_par_ic1207));

% Reaction: id = r_0433, name = fatty-acyl-CoA synthase (n-C14:0CoA)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0433_FLUX_VALUE=3.06632551696157E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0433_v0=3.06632551696157E-5;
	% Local Parameter:   id =  ep1073, name = ep1073
	reaction_r_0433_ep1073=1.0;
	% Local Parameter:   id =  ep1101, name = ep1101
	reaction_r_0433_ep1101=1.0;
	% Local Parameter:   id =  ep1212, name = ep1212
	reaction_r_0433_ep1212=2.0;
	% Local Parameter:   id =  ep0456, name = ep0456
	reaction_r_0433_ep0456=-1.0;
	% Local Parameter:   id =  ep0529, name = ep0529
	reaction_r_0433_ep0529=-1.0;
	% Local Parameter:   id =  ep1176, name = ep1176
	reaction_r_0433_ep1176=-1.0;
	% Local Parameter:   id =  ep1207, name = ep1207
	reaction_r_0433_ep1207=-2.0;

	reaction_r_0433=compartment_cell*reaction_r_0433_v0*(1+reaction_r_0433_ep1073*log(x(204)/global_par_ic1073)+reaction_r_0433_ep1101*log(x(208)/global_par_ic1101)+reaction_r_0433_ep1212*log(x(222)/global_par_ic1212)+reaction_r_0433_ep0456*log(x(95)/global_par_ic0456)+reaction_r_0433_ep0529*log(x(106)/global_par_ic0529)+reaction_r_0433_ep1176*log(x(213)/global_par_ic1176)+reaction_r_0433_ep1207*log(x(221)/global_par_ic1207));

% Reaction: id = r_0434, name = fatty-acyl-CoA synthase (n-C16:0CoA)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0434_FLUX_VALUE=3.06632551696157E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0434_v0=3.06632551696157E-5;
	% Local Parameter:   id =  ep1101, name = ep1101
	reaction_r_0434_ep1101=1.0;
	% Local Parameter:   id =  ep1176, name = ep1176
	reaction_r_0434_ep1176=1.0;
	% Local Parameter:   id =  ep1212, name = ep1212
	reaction_r_0434_ep1212=2.0;
	% Local Parameter:   id =  ep0456, name = ep0456
	reaction_r_0434_ep0456=-1.0;
	% Local Parameter:   id =  ep0529, name = ep0529
	reaction_r_0434_ep0529=-1.0;
	% Local Parameter:   id =  ep1207, name = ep1207
	reaction_r_0434_ep1207=-2.0;
	% Local Parameter:   id =  ep1302, name = ep1302
	reaction_r_0434_ep1302=-1.0;

	reaction_r_0434=compartment_cell*reaction_r_0434_v0*(1+reaction_r_0434_ep1101*log(x(208)/global_par_ic1101)+reaction_r_0434_ep1176*log(x(213)/global_par_ic1176)+reaction_r_0434_ep1212*log(x(222)/global_par_ic1212)+reaction_r_0434_ep0456*log(x(95)/global_par_ic0456)+reaction_r_0434_ep0529*log(x(106)/global_par_ic0529)+reaction_r_0434_ep1207*log(x(221)/global_par_ic1207)+reaction_r_0434_ep1302*log(x(232)/global_par_ic1302));

% Reaction: id = r_0435, name = fatty-acyl-CoA synthase (n-C18:0CoA)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0435_FLUX_VALUE=1.0221085177611E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0435_v0=1.0221085177611E-5;
	% Local Parameter:   id =  ep1101, name = ep1101
	reaction_r_0435_ep1101=1.0;
	% Local Parameter:   id =  ep1212, name = ep1212
	reaction_r_0435_ep1212=2.0;
	% Local Parameter:   id =  ep1302, name = ep1302
	reaction_r_0435_ep1302=1.0;
	% Local Parameter:   id =  ep0456, name = ep0456
	reaction_r_0435_ep0456=-1.0;
	% Local Parameter:   id =  ep0529, name = ep0529
	reaction_r_0435_ep0529=-1.0;
	% Local Parameter:   id =  ep1207, name = ep1207
	reaction_r_0435_ep1207=-2.0;
	% Local Parameter:   id =  ep1454, name = ep1454
	reaction_r_0435_ep1454=-1.0;

	reaction_r_0435=compartment_cell*reaction_r_0435_v0*(1+reaction_r_0435_ep1101*log(x(208)/global_par_ic1101)+reaction_r_0435_ep1212*log(x(222)/global_par_ic1212)+reaction_r_0435_ep1302*log(x(232)/global_par_ic1302)+reaction_r_0435_ep0456*log(x(95)/global_par_ic0456)+reaction_r_0435_ep0529*log(x(106)/global_par_ic0529)+reaction_r_0435_ep1207*log(x(221)/global_par_ic1207)+reaction_r_0435_ep1454*log(x(260)/global_par_ic1454));

% Reaction: id = r_0438, name = ferrocytochrome-c:oxygen oxidoreductase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0438_FLUX_VALUE=2.93389817698765;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0438_v0=2.93389817698765;
	% Local Parameter:   id =  ep0710, name = ep0710
	reaction_r_0438_ep0710=4.0;
	% Local Parameter:   id =  ep1275, name = ep1275
	reaction_r_0438_ep1275=1.0;
	% Local Parameter:   id =  ep0709, name = ep0709
	reaction_r_0438_ep0709=-4.0;

	reaction_r_0438=compartment_cell*reaction_r_0438_v0*(1+reaction_r_0438_ep0710*log(x(145)/global_par_ic0710)+reaction_r_0438_ep1275*log(x(230)/global_par_ic1275)+reaction_r_0438_ep0709*log(x(144)/global_par_ic0709));

% Reaction: id = r_0439, name = ferrocytochrome-c:oxygen oxidoreductase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0439_FLUX_VALUE=5.86779635397514;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0439_v0=5.86779635397514;
	% Local Parameter:   id =  ep0709, name = ep0709
	reaction_r_0439_ep0709=2.0;
	% Local Parameter:   id =  ep1535, name = ep1535
	reaction_r_0439_ep1535=1.0;
	% Local Parameter:   id =  ep0710, name = ep0710
	reaction_r_0439_ep0710=-2.0;
	% Local Parameter:   id =  ep1537, name = ep1537
	reaction_r_0439_ep1537=-1.0;

	reaction_r_0439=compartment_cell*reaction_r_0439_v0*(1+reaction_r_0439_ep0709*log(x(144)/global_par_ic0709)+reaction_r_0439_ep1535*log(x(269)/global_par_ic1535)+reaction_r_0439_ep0710*log(x(145)/global_par_ic0710)+reaction_r_0439_ep1537*log(x(270)/global_par_ic1537));

% Reaction: id = r_0446, name = formate-tetrahydrofolate ligase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0446_FLUX_VALUE=2.87562321404181;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0446_v0=2.87562321404181;
	% Local Parameter:   id =  ep0120, name = ep0120
	reaction_r_0446_ep0120=1.0;
	% Local Parameter:   id =  ep0394, name = ep0394
	reaction_r_0446_ep0394=1.0;
	% Local Parameter:   id =  ep1322, name = ep1322
	reaction_r_0446_ep1322=1.0;
	% Local Parameter:   id =  ep0434, name = ep0434
	reaction_r_0446_ep0434=-1.0;
	% Local Parameter:   id =  ep0722, name = ep0722
	reaction_r_0446_ep0722=-1.0;
	% Local Parameter:   id =  ep1487, name = ep1487
	reaction_r_0446_ep1487=-1.0;

	reaction_r_0446=compartment_cell*reaction_r_0446_v0*(1+reaction_r_0446_ep0120*log(x(24)/global_par_ic0120)+reaction_r_0446_ep0394*log(x(81)/global_par_ic0394)+reaction_r_0446_ep1322*log(x(234)/global_par_ic1322)+reaction_r_0446_ep0434*log(x(91)/global_par_ic0434)+reaction_r_0446_ep0722*log(x(146)/global_par_ic0722)+reaction_r_0446_ep1487*log(x(263)/global_par_ic1487));

% Reaction: id = r_0450, name = fructose-bisphosphate aldolase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0450_FLUX_VALUE=0.850573321329957;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0450_v0=0.850573321329957;
	% Local Parameter:   id =  ep0555, name = ep0555
	reaction_r_0450_ep0555=1.0;
	% Local Parameter:   id =  ep0629, name = ep0629
	reaction_r_0450_ep0629=-1.0;
	% Local Parameter:   id =  ep0764, name = ep0764
	reaction_r_0450_ep0764=-1.0;

	reaction_r_0450=compartment_cell*reaction_r_0450_v0*(1+reaction_r_0450_ep0555*log(x(111)/global_par_ic0555)+reaction_r_0450_ep0629*log(x(131)/global_par_ic0629)+reaction_r_0450_ep0764*log(x(156)/global_par_ic0764));

% Reaction: id = r_0451, name = fumarase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0451_FLUX_VALUE=0.0142545827184152;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0451_v0=0.0142545827184152;
	% Local Parameter:   id =  ep0725, name = ep0725
	reaction_r_0451_ep0725=1.0;
	% Local Parameter:   id =  ep0066, name = ep0066
	reaction_r_0451_ep0066=-1.0;

	reaction_r_0451=compartment_cell*reaction_r_0451_v0*(1+reaction_r_0451_ep0725*log(x(147)/global_par_ic0725)+reaction_r_0451_ep0066*log(x(15)/global_par_ic0066));

% Reaction: id = r_0462, name = geranyltranstransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0462_FLUX_VALUE=5.19949368301002E-4;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0462_v0=5.19949368301002E-4;
	% Local Parameter:   id =  ep0745, name = ep0745
	reaction_r_0462_ep0745=1.0;
	% Local Parameter:   id =  ep0943, name = ep0943
	reaction_r_0462_ep0943=1.0;
	% Local Parameter:   id =  ep0190, name = ep0190
	reaction_r_0462_ep0190=-1.0;
	% Local Parameter:   id =  ep0633, name = ep0633
	reaction_r_0462_ep0633=-1.0;

	reaction_r_0462=compartment_cell*reaction_r_0462_v0*(1+reaction_r_0462_ep0745*log(x(150)/global_par_ic0745)+reaction_r_0462_ep0943*log(x(170)/global_par_ic0943)+reaction_r_0462_ep0190*log(x(38)/global_par_ic0190)+reaction_r_0462_ep0633*log(x(132)/global_par_ic0633));

% Reaction: id = r_0467, name = glucose-6-phosphate isomerase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0467_FLUX_VALUE=0.892327912279146;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0467_v0=0.892327912279146;
	% Local Parameter:   id =  ep0568, name = ep0568
	reaction_r_0467_ep0568=1.0;
	% Local Parameter:   id =  ep0557, name = ep0557
	reaction_r_0467_ep0557=-1.0;

	reaction_r_0467=compartment_cell*reaction_r_0467_v0*(1+reaction_r_0467_ep0568*log(x(115)/global_par_ic0568)+reaction_r_0467_ep0557*log(x(112)/global_par_ic0557));

% Reaction: id = r_0470, name = glutamate dehydrogenase (NAD)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0470_FLUX_VALUE=0.812814651968887;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0470_v0=0.812814651968887;
	% Local Parameter:   id =  ep0180, name = ep0180
	reaction_r_0470_ep0180=1.0;
	% Local Parameter:   id =  ep0419, name = ep0419
	reaction_r_0470_ep0419=1.0;
	% Local Parameter:   id =  ep1203, name = ep1203
	reaction_r_0470_ep1203=1.0;
	% Local Parameter:   id =  ep0991, name = ep0991
	reaction_r_0470_ep0991=-1.0;
	% Local Parameter:   id =  ep1198, name = ep1198
	reaction_r_0470_ep1198=-1.0;

	reaction_r_0470=compartment_cell*reaction_r_0470_v0*(1+reaction_r_0470_ep0180*log(x(36)/global_par_ic0180)+reaction_r_0470_ep0419*log(x(85)/global_par_ic0419)+reaction_r_0470_ep1203*log(x(220)/global_par_ic1203)+reaction_r_0470_ep0991*log(x(182)/global_par_ic0991)+reaction_r_0470_ep1198*log(x(219)/global_par_ic1198));

% Reaction: id = r_0471, name = glutamate dehydrogenase (NADP)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0471_FLUX_VALUE=0.812814651968585;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0471_v0=0.812814651968585;
	% Local Parameter:   id =  ep0180, name = ep0180
	reaction_r_0471_ep0180=1.0;
	% Local Parameter:   id =  ep0419, name = ep0419
	reaction_r_0471_ep0419=1.0;
	% Local Parameter:   id =  ep1212, name = ep1212
	reaction_r_0471_ep1212=1.0;
	% Local Parameter:   id =  ep0991, name = ep0991
	reaction_r_0471_ep0991=-1.0;
	% Local Parameter:   id =  ep1207, name = ep1207
	reaction_r_0471_ep1207=-1.0;

	reaction_r_0471=compartment_cell*reaction_r_0471_v0*(1+reaction_r_0471_ep0180*log(x(36)/global_par_ic0180)+reaction_r_0471_ep0419*log(x(85)/global_par_ic0419)+reaction_r_0471_ep1212*log(x(222)/global_par_ic1212)+reaction_r_0471_ep0991*log(x(182)/global_par_ic0991)+reaction_r_0471_ep1207*log(x(221)/global_par_ic1207));

% Reaction: id = r_0476, name = glutamine synthetase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0476_FLUX_VALUE=0.0311388947598679;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0476_v0=0.0311388947598679;
	% Local Parameter:   id =  ep0419, name = ep0419
	reaction_r_0476_ep0419=1.0;
	% Local Parameter:   id =  ep0434, name = ep0434
	reaction_r_0476_ep0434=1.0;
	% Local Parameter:   id =  ep0991, name = ep0991
	reaction_r_0476_ep0991=1.0;
	% Local Parameter:   id =  ep0394, name = ep0394
	reaction_r_0476_ep0394=-1.0;
	% Local Parameter:   id =  ep0999, name = ep0999
	reaction_r_0476_ep0999=-1.0;
	% Local Parameter:   id =  ep1322, name = ep1322
	reaction_r_0476_ep1322=-1.0;

	reaction_r_0476=compartment_cell*reaction_r_0476_v0*(1+reaction_r_0476_ep0419*log(x(85)/global_par_ic0419)+reaction_r_0476_ep0434*log(x(91)/global_par_ic0434)+reaction_r_0476_ep0991*log(x(182)/global_par_ic0991)+reaction_r_0476_ep0394*log(x(81)/global_par_ic0394)+reaction_r_0476_ep0999*log(x(183)/global_par_ic0999)+reaction_r_0476_ep1322*log(x(234)/global_par_ic1322));

% Reaction: id = r_0478, name = glutaminyl-tRNA synthetase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0478_FLUX_VALUE=0.00400019441014414;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0478_v0=0.00400019441014414;
	% Local Parameter:   id =  ep0434, name = ep0434
	reaction_r_0478_ep0434=1.0;
	% Local Parameter:   id =  ep0999, name = ep0999
	reaction_r_0478_ep0999=1.0;
	% Local Parameter:   id =  ep1590, name = ep1590
	reaction_r_0478_ep1590=1.0;
	% Local Parameter:   id =  ep0423, name = ep0423
	reaction_r_0478_ep0423=-1.0;
	% Local Parameter:   id =  ep0633, name = ep0633
	reaction_r_0478_ep0633=-1.0;
	% Local Parameter:   id =  ep0747, name = ep0747
	reaction_r_0478_ep0747=-1.0;

	reaction_r_0478=compartment_cell*reaction_r_0478_v0*(1+reaction_r_0478_ep0434*log(x(91)/global_par_ic0434)+reaction_r_0478_ep0999*log(x(183)/global_par_ic0999)+reaction_r_0478_ep1590*log(x(287)/global_par_ic1590)+reaction_r_0478_ep0423*log(x(86)/global_par_ic0423)+reaction_r_0478_ep0633*log(x(132)/global_par_ic0633)+reaction_r_0478_ep0747*log(x(151)/global_par_ic0747));

% Reaction: id = r_0479, name = glutamyl-tRNA synthetase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0479_FLUX_VALUE=0.0114540671060863;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0479_v0=0.0114540671060863;
	% Local Parameter:   id =  ep0434, name = ep0434
	reaction_r_0479_ep0434=1.0;
	% Local Parameter:   id =  ep0991, name = ep0991
	reaction_r_0479_ep0991=1.0;
	% Local Parameter:   id =  ep1591, name = ep1591
	reaction_r_0479_ep1591=1.0;
	% Local Parameter:   id =  ep0423, name = ep0423
	reaction_r_0479_ep0423=-1.0;
	% Local Parameter:   id =  ep0633, name = ep0633
	reaction_r_0479_ep0633=-1.0;
	% Local Parameter:   id =  ep0748, name = ep0748
	reaction_r_0479_ep0748=-1.0;

	reaction_r_0479=compartment_cell*reaction_r_0479_v0*(1+reaction_r_0479_ep0434*log(x(91)/global_par_ic0434)+reaction_r_0479_ep0991*log(x(182)/global_par_ic0991)+reaction_r_0479_ep1591*log(x(288)/global_par_ic1591)+reaction_r_0479_ep0423*log(x(86)/global_par_ic0423)+reaction_r_0479_ep0633*log(x(132)/global_par_ic0633)+reaction_r_0479_ep0748*log(x(152)/global_par_ic0748));

% Reaction: id = r_0481, name = glutathione oxidoreductase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0481_FLUX_VALUE=0.00209877372752306;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0481_v0=0.00209877372752306;
	% Local Parameter:   id =  ep0754, name = ep0754
	reaction_r_0481_ep0754=1.0;
	% Local Parameter:   id =  ep1212, name = ep1212
	reaction_r_0481_ep1212=1.0;
	% Local Parameter:   id =  ep0750, name = ep0750
	reaction_r_0481_ep0750=-2.0;
	% Local Parameter:   id =  ep1207, name = ep1207
	reaction_r_0481_ep1207=-1.0;

	reaction_r_0481=compartment_cell*reaction_r_0481_v0*(1+reaction_r_0481_ep0754*log(x(154)/global_par_ic0754)+reaction_r_0481_ep1212*log(x(222)/global_par_ic1212)+reaction_r_0481_ep0750*log(x(153)/global_par_ic0750)+reaction_r_0481_ep1207*log(x(221)/global_par_ic1207));

% Reaction: id = r_0483, name = glutathione peridoxase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0483_FLUX_VALUE=0.00209877372752306;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0483_v0=0.00209877372752306;
	% Local Parameter:   id =  ep0750, name = ep0750
	reaction_r_0483_ep0750=2.0;
	% Local Parameter:   id =  ep0837, name = ep0837
	reaction_r_0483_ep0837=1.0;
	% Local Parameter:   id =  ep0754, name = ep0754
	reaction_r_0483_ep0754=-1.0;

	reaction_r_0483=compartment_cell*reaction_r_0483_v0*(1+reaction_r_0483_ep0750*log(x(153)/global_par_ic0750)+reaction_r_0483_ep0837*log(x(164)/global_par_ic0837)+reaction_r_0483_ep0754*log(x(154)/global_par_ic0754));

% Reaction: id = r_0486, name = glyceraldehyde-3-phosphate dehydrogenase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0486_FLUX_VALUE=1.69142241294296;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0486_v0=1.69142241294296;
	% Local Parameter:   id =  ep0764, name = ep0764
	reaction_r_0486_ep0764=1.0;
	% Local Parameter:   id =  ep1198, name = ep1198
	reaction_r_0486_ep1198=1.0;
	% Local Parameter:   id =  ep1322, name = ep1322
	reaction_r_0486_ep1322=1.0;
	% Local Parameter:   id =  ep0075, name = ep0075
	reaction_r_0486_ep0075=-1.0;
	% Local Parameter:   id =  ep1203, name = ep1203
	reaction_r_0486_ep1203=-1.0;

	reaction_r_0486=compartment_cell*reaction_r_0486_v0*(1+reaction_r_0486_ep0764*log(x(156)/global_par_ic0764)+reaction_r_0486_ep1198*log(x(219)/global_par_ic1198)+reaction_r_0486_ep1322*log(x(234)/global_par_ic1322)+reaction_r_0486_ep0075*log(x(16)/global_par_ic0075)+reaction_r_0486_ep1203*log(x(220)/global_par_ic1203));

% Reaction: id = r_0491, name = glycerol-3-phosphate dehydrogenase (NAD)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0491_FLUX_VALUE=2.40277331835412E-4;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0491_v0=2.40277331835412E-4;
	% Local Parameter:   id =  ep0629, name = ep0629
	reaction_r_0491_ep0629=1.0;
	% Local Parameter:   id =  ep1203, name = ep1203
	reaction_r_0491_ep1203=1.0;
	% Local Parameter:   id =  ep0767, name = ep0767
	reaction_r_0491_ep0767=-1.0;
	% Local Parameter:   id =  ep1198, name = ep1198
	reaction_r_0491_ep1198=-1.0;

	reaction_r_0491=compartment_cell*reaction_r_0491_v0*(1+reaction_r_0491_ep0629*log(x(131)/global_par_ic0629)+reaction_r_0491_ep1203*log(x(220)/global_par_ic1203)+reaction_r_0491_ep0767*log(x(157)/global_par_ic0767)+reaction_r_0491_ep1198*log(x(219)/global_par_ic1198));

% Reaction: id = r_0495, name = glycerol-3-phosphate/dihydroxyacetone phosphate acyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0495_FLUX_VALUE=2.40277332169094E-4;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0495_v0=2.40277332169094E-4;
	% Local Parameter:   id =  ep0380, name = ep0380
	reaction_r_0495_ep0380=1.0;
	% Local Parameter:   id =  ep0767, name = ep0767
	reaction_r_0495_ep0767=1.0;
	% Local Parameter:   id =  ep0082, name = ep0082
	reaction_r_0495_ep0082=-1.0;
	% Local Parameter:   id =  ep0529, name = ep0529
	reaction_r_0495_ep0529=-1.0;

	reaction_r_0495=compartment_cell*reaction_r_0495_v0*(1+reaction_r_0495_ep0380*log(x(77)/global_par_ic0380)+reaction_r_0495_ep0767*log(x(157)/global_par_ic0767)+reaction_r_0495_ep0082*log(x(20)/global_par_ic0082)+reaction_r_0495_ep0529*log(x(106)/global_par_ic0529));

% Reaction: id = r_0499, name = glycinamide ribotide transformylase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0499_FLUX_VALUE=0.00375691882979276;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0499_v0=0.00375691882979276;
	% Local Parameter:   id =  ep0120, name = ep0120
	reaction_r_0499_ep0120=1.0;
	% Local Parameter:   id =  ep0325, name = ep0325
	reaction_r_0499_ep0325=1.0;
	% Local Parameter:   id =  ep0301, name = ep0301
	reaction_r_0499_ep0301=-1.0;
	% Local Parameter:   id =  ep1487, name = ep1487
	reaction_r_0499_ep1487=-1.0;

	reaction_r_0499=compartment_cell*reaction_r_0499_v0*(1+reaction_r_0499_ep0120*log(x(24)/global_par_ic0120)+reaction_r_0499_ep0325*log(x(69)/global_par_ic0325)+reaction_r_0499_ep0301*log(x(60)/global_par_ic0301)+reaction_r_0499_ep1487*log(x(263)/global_par_ic1487));

% Reaction: id = r_0501, name = glycine cleavage system	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0501_FLUX_VALUE=1.43675988607776;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0501_v0=1.43675988607776;
	% Local Parameter:   id =  ep1003, name = ep1003
	reaction_r_0501_ep1003=1.0;
	% Local Parameter:   id =  ep1198, name = ep1198
	reaction_r_0501_ep1198=1.0;
	% Local Parameter:   id =  ep1487, name = ep1487
	reaction_r_0501_ep1487=1.0;
	% Local Parameter:   id =  ep0306, name = ep0306
	reaction_r_0501_ep0306=-1.0;
	% Local Parameter:   id =  ep0419, name = ep0419
	reaction_r_0501_ep0419=-1.0;
	% Local Parameter:   id =  ep0456, name = ep0456
	reaction_r_0501_ep0456=-1.0;
	% Local Parameter:   id =  ep1203, name = ep1203
	reaction_r_0501_ep1203=-1.0;

	reaction_r_0501=compartment_cell*reaction_r_0501_v0*(1+reaction_r_0501_ep1003*log(x(184)/global_par_ic1003)+reaction_r_0501_ep1198*log(x(219)/global_par_ic1198)+reaction_r_0501_ep1487*log(x(263)/global_par_ic1487)+reaction_r_0501_ep0306*log(x(63)/global_par_ic0306)+reaction_r_0501_ep0419*log(x(85)/global_par_ic0419)+reaction_r_0501_ep0456*log(x(95)/global_par_ic0456)+reaction_r_0501_ep1203*log(x(220)/global_par_ic1203));

% Reaction: id = r_0502, name = glycine hydroxymethyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0502_FLUX_VALUE=1.45153821341539;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0502_v0=1.45153821341539;
	% Local Parameter:   id =  ep1039, name = ep1039
	reaction_r_0502_ep1039=1.0;
	% Local Parameter:   id =  ep1487, name = ep1487
	reaction_r_0502_ep1487=1.0;
	% Local Parameter:   id =  ep0306, name = ep0306
	reaction_r_0502_ep0306=-1.0;
	% Local Parameter:   id =  ep1003, name = ep1003
	reaction_r_0502_ep1003=-1.0;

	reaction_r_0502=compartment_cell*reaction_r_0502_v0*(1+reaction_r_0502_ep1039*log(x(197)/global_par_ic1039)+reaction_r_0502_ep1487*log(x(263)/global_par_ic1487)+reaction_r_0502_ep0306*log(x(63)/global_par_ic0306)+reaction_r_0502_ep1003*log(x(184)/global_par_ic1003));

% Reaction: id = r_0510, name = glycogen (starch) synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0510_FLUX_VALUE=0.0196783757273199;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0510_v0=0.0196783757273199;
	% Local Parameter:   id =  ep1543, name = ep1543
	reaction_r_0510_ep1543=1.0;
	% Local Parameter:   id =  ep0773, name = ep0773
	reaction_r_0510_ep0773=-1.0;
	% Local Parameter:   id =  ep1538, name = ep1538
	reaction_r_0510_ep1538=-1.0;

	reaction_r_0510=compartment_cell*reaction_r_0510_v0*(1+reaction_r_0510_ep1543*log(x(272)/global_par_ic1543)+reaction_r_0510_ep0773*log(x(158)/global_par_ic0773)+reaction_r_0510_ep1538*log(x(271)/global_par_ic1538));

% Reaction: id = r_0512, name = glycyl-tRNA synthetase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0512_FLUX_VALUE=0.0110214085076458;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0512_v0=0.0110214085076458;
	% Local Parameter:   id =  ep0434, name = ep0434
	reaction_r_0512_ep0434=1.0;
	% Local Parameter:   id =  ep1003, name = ep1003
	reaction_r_0512_ep1003=1.0;
	% Local Parameter:   id =  ep1593, name = ep1593
	reaction_r_0512_ep1593=1.0;
	% Local Parameter:   id =  ep0423, name = ep0423
	reaction_r_0512_ep0423=-1.0;
	% Local Parameter:   id =  ep0633, name = ep0633
	reaction_r_0512_ep0633=-1.0;
	% Local Parameter:   id =  ep0757, name = ep0757
	reaction_r_0512_ep0757=-1.0;

	reaction_r_0512=compartment_cell*reaction_r_0512_v0*(1+reaction_r_0512_ep0434*log(x(91)/global_par_ic0434)+reaction_r_0512_ep1003*log(x(184)/global_par_ic1003)+reaction_r_0512_ep1593*log(x(289)/global_par_ic1593)+reaction_r_0512_ep0423*log(x(86)/global_par_ic0423)+reaction_r_0512_ep0633*log(x(132)/global_par_ic0633)+reaction_r_0512_ep0757*log(x(155)/global_par_ic0757));

% Reaction: id = r_0514, name = GMP synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0514_FLUX_VALUE=0.00187447440148675;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0514_v0=0.00187447440148675;
	% Local Parameter:   id =  ep0434, name = ep0434
	reaction_r_0514_ep0434=1.0;
	% Local Parameter:   id =  ep0999, name = ep0999
	reaction_r_0514_ep0999=1.0;
	% Local Parameter:   id =  ep1565, name = ep1565
	reaction_r_0514_ep1565=1.0;
	% Local Parameter:   id =  ep0423, name = ep0423
	reaction_r_0514_ep0423=-1.0;
	% Local Parameter:   id =  ep0633, name = ep0633
	reaction_r_0514_ep0633=-1.0;
	% Local Parameter:   id =  ep0782, name = ep0782
	reaction_r_0514_ep0782=-1.0;
	% Local Parameter:   id =  ep0991, name = ep0991
	reaction_r_0514_ep0991=-1.0;

	reaction_r_0514=compartment_cell*reaction_r_0514_v0*(1+reaction_r_0514_ep0434*log(x(91)/global_par_ic0434)+reaction_r_0514_ep0999*log(x(183)/global_par_ic0999)+reaction_r_0514_ep1565*log(x(276)/global_par_ic1565)+reaction_r_0514_ep0423*log(x(86)/global_par_ic0423)+reaction_r_0514_ep0633*log(x(132)/global_par_ic0633)+reaction_r_0514_ep0782*log(x(159)/global_par_ic0782)+reaction_r_0514_ep0991*log(x(182)/global_par_ic0991));

% Reaction: id = r_0525, name = GTP cyclohydrolase II	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0525_FLUX_VALUE=3.75729835487922E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0525_v0=3.75729835487922E-5;
	% Local Parameter:   id =  ep0785, name = ep0785
	reaction_r_0525_ep0785=1.0;
	% Local Parameter:   id =  ep0141, name = ep0141
	reaction_r_0525_ep0141=-1.0;
	% Local Parameter:   id =  ep0633, name = ep0633
	reaction_r_0525_ep0633=-1.0;
	% Local Parameter:   id =  ep0722, name = ep0722
	reaction_r_0525_ep0722=-1.0;

	reaction_r_0525=compartment_cell*reaction_r_0525_v0*(1+reaction_r_0525_ep0785*log(x(160)/global_par_ic0785)+reaction_r_0525_ep0141*log(x(27)/global_par_ic0141)+reaction_r_0525_ep0633*log(x(132)/global_par_ic0633)+reaction_r_0525_ep0722*log(x(146)/global_par_ic0722));

% Reaction: id = r_0528, name = guanylate kinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0528_FLUX_VALUE=6.43295020859241E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0528_v0=6.43295020859241E-5;
	% Local Parameter:   id =  ep0434, name = ep0434
	reaction_r_0528_ep0434=1.0;
	% Local Parameter:   id =  ep0782, name = ep0782
	reaction_r_0528_ep0782=1.0;
	% Local Parameter:   id =  ep0394, name = ep0394
	reaction_r_0528_ep0394=-1.0;
	% Local Parameter:   id =  ep0739, name = ep0739
	reaction_r_0528_ep0739=-1.0;

	reaction_r_0528=compartment_cell*reaction_r_0528_v0*(1+reaction_r_0528_ep0434*log(x(91)/global_par_ic0434)+reaction_r_0528_ep0782*log(x(159)/global_par_ic0782)+reaction_r_0528_ep0394*log(x(81)/global_par_ic0394)+reaction_r_0528_ep0739*log(x(148)/global_par_ic0739));

% Reaction: id = r_0529, name = guanylate kinase (GMP:dATP)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0529_FLUX_VALUE=6.43295039602845E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0529_v0=6.43295039602845E-5;
	% Local Parameter:   id =  ep0586, name = ep0586
	reaction_r_0529_ep0586=1.0;
	% Local Parameter:   id =  ep0782, name = ep0782
	reaction_r_0529_ep0782=1.0;
	% Local Parameter:   id =  ep0582, name = ep0582
	reaction_r_0529_ep0582=-1.0;
	% Local Parameter:   id =  ep0739, name = ep0739
	reaction_r_0529_ep0739=-1.0;

	reaction_r_0529=compartment_cell*reaction_r_0529_v0*(1+reaction_r_0529_ep0586*log(x(122)/global_par_ic0586)+reaction_r_0529_ep0782*log(x(159)/global_par_ic0782)+reaction_r_0529_ep0582*log(x(120)/global_par_ic0582)+reaction_r_0529_ep0739*log(x(148)/global_par_ic0739));

% Reaction: id = r_0534, name = hexokinase (D-glucose:ATP)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0534_FLUX_VALUE=0.999999999999993;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0534_v0=0.999999999999993;
	% Local Parameter:   id =  ep0434, name = ep0434
	reaction_r_0534_ep0434=1.0;
	% Local Parameter:   id =  ep0563, name = ep0563
	reaction_r_0534_ep0563=1.0;
	% Local Parameter:   id =  ep0394, name = ep0394
	reaction_r_0534_ep0394=-1.0;
	% Local Parameter:   id =  ep0568, name = ep0568
	reaction_r_0534_ep0568=-1.0;

	reaction_r_0534=compartment_cell*reaction_r_0534_v0*(1+reaction_r_0534_ep0434*log(x(91)/global_par_ic0434)+reaction_r_0534_ep0563*log(x(113)/global_par_ic0563)+reaction_r_0534_ep0394*log(x(81)/global_par_ic0394)+reaction_r_0534_ep0568*log(x(115)/global_par_ic0568));

% Reaction: id = r_0536, name = histidinol dehydrogenase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0536_FLUX_VALUE=0.00251625132250899;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0536_v0=0.00251625132250899;
	% Local Parameter:   id =  ep1010, name = ep1010
	reaction_r_0536_ep1010=1.0;
	% Local Parameter:   id =  ep1198, name = ep1198
	reaction_r_0536_ep1198=2.0;
	% Local Parameter:   id =  ep1006, name = ep1006
	reaction_r_0536_ep1006=-1.0;
	% Local Parameter:   id =  ep1203, name = ep1203
	reaction_r_0536_ep1203=-2.0;

	reaction_r_0536=compartment_cell*reaction_r_0536_v0*(1+reaction_r_0536_ep1010*log(x(186)/global_par_ic1010)+reaction_r_0536_ep1198*log(x(219)/global_par_ic1198)+reaction_r_0536_ep1006*log(x(185)/global_par_ic1006)+reaction_r_0536_ep1203*log(x(220)/global_par_ic1203));

% Reaction: id = r_0537, name = histidinol-phosphatase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0537_FLUX_VALUE=0.00251625132250899;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0537_v0=0.00251625132250899;
	% Local Parameter:   id =  ep1011, name = ep1011
	reaction_r_0537_ep1011=1.0;
	% Local Parameter:   id =  ep1010, name = ep1010
	reaction_r_0537_ep1010=-1.0;
	% Local Parameter:   id =  ep1322, name = ep1322
	reaction_r_0537_ep1322=-1.0;

	reaction_r_0537=compartment_cell*reaction_r_0537_v0*(1+reaction_r_0537_ep1011*log(x(187)/global_par_ic1011)+reaction_r_0537_ep1010*log(x(186)/global_par_ic1010)+reaction_r_0537_ep1322*log(x(234)/global_par_ic1322));

% Reaction: id = r_0538, name = histidinol-phosphate transaminase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0538_FLUX_VALUE=0.00251625132250899;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0538_v0=0.00251625132250899;
	% Local Parameter:   id =  ep0207, name = ep0207
	reaction_r_0538_ep0207=1.0;
	% Local Parameter:   id =  ep0991, name = ep0991
	reaction_r_0538_ep0991=1.0;
	% Local Parameter:   id =  ep0180, name = ep0180
	reaction_r_0538_ep0180=-1.0;
	% Local Parameter:   id =  ep1011, name = ep1011
	reaction_r_0538_ep1011=-1.0;

	reaction_r_0538=compartment_cell*reaction_r_0538_v0*(1+reaction_r_0538_ep0207*log(x(41)/global_par_ic0207)+reaction_r_0538_ep0991*log(x(182)/global_par_ic0991)+reaction_r_0538_ep0180*log(x(36)/global_par_ic0180)+reaction_r_0538_ep1011*log(x(187)/global_par_ic1011));

% Reaction: id = r_0539, name = histidyl-tRNA synthetase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0539_FLUX_VALUE=0.00251625132251002;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0539_v0=0.00251625132251002;
	% Local Parameter:   id =  ep0434, name = ep0434
	reaction_r_0539_ep0434=1.0;
	% Local Parameter:   id =  ep1006, name = ep1006
	reaction_r_0539_ep1006=1.0;
	% Local Parameter:   id =  ep1594, name = ep1594
	reaction_r_0539_ep1594=1.0;
	% Local Parameter:   id =  ep0423, name = ep0423
	reaction_r_0539_ep0423=-1.0;
	% Local Parameter:   id =  ep0633, name = ep0633
	reaction_r_0539_ep0633=-1.0;
	% Local Parameter:   id =  ep0832, name = ep0832
	reaction_r_0539_ep0832=-1.0;

	reaction_r_0539=compartment_cell*reaction_r_0539_v0*(1+reaction_r_0539_ep0434*log(x(91)/global_par_ic0434)+reaction_r_0539_ep1006*log(x(185)/global_par_ic1006)+reaction_r_0539_ep1594*log(x(290)/global_par_ic1594)+reaction_r_0539_ep0423*log(x(86)/global_par_ic0423)+reaction_r_0539_ep0633*log(x(132)/global_par_ic0633)+reaction_r_0539_ep0832*log(x(161)/global_par_ic0832));

% Reaction: id = r_0542, name = homoacontinate hydratase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0542_FLUX_VALUE=0.01086200797138;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0542_v0=0.01086200797138;
	% Local Parameter:   id =  ep0454, name = ep0454
	reaction_r_0542_ep0454=1.0;
	% Local Parameter:   id =  ep0836, name = ep0836
	reaction_r_0542_ep0836=-1.0;

	reaction_r_0542=compartment_cell*reaction_r_0542_v0*(1+reaction_r_0542_ep0454*log(x(93)/global_par_ic0454)+reaction_r_0542_ep0836*log(x(163)/global_par_ic0836));

% Reaction: id = r_0543, name = homocitrate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0543_FLUX_VALUE=0.01086200797138;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0543_v0=0.01086200797138;
	% Local Parameter:   id =  ep0180, name = ep0180
	reaction_r_0543_ep0180=1.0;
	% Local Parameter:   id =  ep0373, name = ep0373
	reaction_r_0543_ep0373=1.0;
	% Local Parameter:   id =  ep0529, name = ep0529
	reaction_r_0543_ep0529=-1.0;
	% Local Parameter:   id =  ep0835, name = ep0835
	reaction_r_0543_ep0835=-1.0;

	reaction_r_0543=compartment_cell*reaction_r_0543_v0*(1+reaction_r_0543_ep0180*log(x(36)/global_par_ic0180)+reaction_r_0543_ep0373*log(x(76)/global_par_ic0373)+reaction_r_0543_ep0529*log(x(106)/global_par_ic0529)+reaction_r_0543_ep0835*log(x(162)/global_par_ic0835));

% Reaction: id = r_0545, name = homoisocitrate dehydrogenase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0545_FLUX_VALUE=0.01086200797138;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0545_v0=0.01086200797138;
	% Local Parameter:   id =  ep0836, name = ep0836
	reaction_r_0545_ep0836=1.0;
	% Local Parameter:   id =  ep1198, name = ep1198
	reaction_r_0545_ep1198=1.0;
	% Local Parameter:   id =  ep0176, name = ep0176
	reaction_r_0545_ep0176=-1.0;
	% Local Parameter:   id =  ep1203, name = ep1203
	reaction_r_0545_ep1203=-1.0;
	% Local Parameter:   id =  ep0456, name = ep0456
	reaction_r_0545_ep0456=-1.0;

	reaction_r_0545=compartment_cell*reaction_r_0545_v0*(1+reaction_r_0545_ep0836*log(x(163)/global_par_ic0836)+reaction_r_0545_ep1198*log(x(219)/global_par_ic1198)+reaction_r_0545_ep0176*log(x(34)/global_par_ic0176)+reaction_r_0545_ep1203*log(x(220)/global_par_ic1203)+reaction_r_0545_ep0456*log(x(95)/global_par_ic0456));

% Reaction: id = r_0547, name = homoserine dehydrogenase (NADP)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0547_FLUX_VALUE=0.0188389294905409;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0547_v0=0.0188389294905409;
	% Local Parameter:   id =  ep0978, name = ep0978
	reaction_r_0547_ep0978=1.0;
	% Local Parameter:   id =  ep1212, name = ep1212
	reaction_r_0547_ep1212=1.0;
	% Local Parameter:   id =  ep1014, name = ep1014
	reaction_r_0547_ep1014=-1.0;
	% Local Parameter:   id =  ep1207, name = ep1207
	reaction_r_0547_ep1207=-1.0;

	reaction_r_0547=compartment_cell*reaction_r_0547_v0*(1+reaction_r_0547_ep0978*log(x(178)/global_par_ic0978)+reaction_r_0547_ep1212*log(x(222)/global_par_ic1212)+reaction_r_0547_ep1014*log(x(189)/global_par_ic1014)+reaction_r_0547_ep1207*log(x(221)/global_par_ic1207));

% Reaction: id = r_0548, name = homoserine kinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0548_FLUX_VALUE=0.00726411015276989;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0548_v0=0.00726411015276989;
	% Local Parameter:   id =  ep0434, name = ep0434
	reaction_r_0548_ep0434=1.0;
	% Local Parameter:   id =  ep1014, name = ep1014
	reaction_r_0548_ep1014=1.0;
	% Local Parameter:   id =  ep0394, name = ep0394
	reaction_r_0548_ep0394=-1.0;
	% Local Parameter:   id =  ep1238, name = ep1238
	reaction_r_0548_ep1238=-1.0;

	reaction_r_0548=compartment_cell*reaction_r_0548_v0*(1+reaction_r_0548_ep0434*log(x(91)/global_par_ic0434)+reaction_r_0548_ep1014*log(x(189)/global_par_ic1014)+reaction_r_0548_ep0394*log(x(81)/global_par_ic0394)+reaction_r_0548_ep1238*log(x(224)/global_par_ic1238));

% Reaction: id = r_0549, name = homoserine O-trans-acetylase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0549_FLUX_VALUE=0.0115748193375687;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0549_v0=0.0115748193375687;
	% Local Parameter:   id =  ep0373, name = ep0373
	reaction_r_0549_ep0373=1.0;
	% Local Parameter:   id =  ep1014, name = ep1014
	reaction_r_0549_ep1014=1.0;
	% Local Parameter:   id =  ep0529, name = ep0529
	reaction_r_0549_ep0529=-1.0;
	% Local Parameter:   id =  ep1233, name = ep1233
	reaction_r_0549_ep1233=-1.0;

	reaction_r_0549=compartment_cell*reaction_r_0549_v0*(1+reaction_r_0549_ep0373*log(x(76)/global_par_ic0373)+reaction_r_0549_ep1014*log(x(189)/global_par_ic1014)+reaction_r_0549_ep0529*log(x(106)/global_par_ic0529)+reaction_r_0549_ep1233*log(x(223)/global_par_ic1233));

% Reaction: id = r_0550, name = hydrogen peroxide reductase (thioredoxin)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0550_FLUX_VALUE=0.00209877372781628;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0550_v0=0.00209877372781628;
	% Local Parameter:   id =  ep0837, name = ep0837
	reaction_r_0550_ep0837=1.0;
	% Local Parameter:   id =  ep1616, name = ep1616
	reaction_r_0550_ep1616=1.0;
	% Local Parameter:   id =  ep1620, name = ep1620
	reaction_r_0550_ep1620=-1.0;

	reaction_r_0550=compartment_cell*reaction_r_0550_v0*(1+reaction_r_0550_ep0837*log(x(164)/global_par_ic0837)+reaction_r_0550_ep1616*log(x(302)/global_par_ic1616)+reaction_r_0550_ep1620*log(x(303)/global_par_ic1620));

% Reaction: id = r_0558, name = hydroxymethylglutaryl CoA reductase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0558_FLUX_VALUE=0.00155984810490327;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0558_v0=0.00155984810490327;
	% Local Parameter:   id =  ep0218, name = ep0218
	reaction_r_0558_ep0218=1.0;
	% Local Parameter:   id =  ep1212, name = ep1212
	reaction_r_0558_ep1212=2.0;
	% Local Parameter:   id =  ep0028, name = ep0028
	reaction_r_0558_ep0028=-1.0;
	% Local Parameter:   id =  ep0529, name = ep0529
	reaction_r_0558_ep0529=-1.0;
	% Local Parameter:   id =  ep1207, name = ep1207
	reaction_r_0558_ep1207=-2.0;

	reaction_r_0558=compartment_cell*reaction_r_0558_v0*(1+reaction_r_0558_ep0218*log(x(45)/global_par_ic0218)+reaction_r_0558_ep1212*log(x(222)/global_par_ic1212)+reaction_r_0558_ep0028*log(x(10)/global_par_ic0028)+reaction_r_0558_ep0529*log(x(106)/global_par_ic0529)+reaction_r_0558_ep1207*log(x(221)/global_par_ic1207));

% Reaction: id = r_0559, name = hydroxymethylglutaryl CoA synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0559_FLUX_VALUE=0.00155984810490327;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0559_v0=0.00155984810490327;
	% Local Parameter:   id =  ep0367, name = ep0367
	reaction_r_0559_ep0367=1.0;
	% Local Parameter:   id =  ep0373, name = ep0373
	reaction_r_0559_ep0373=1.0;
	% Local Parameter:   id =  ep0218, name = ep0218
	reaction_r_0559_ep0218=-1.0;
	% Local Parameter:   id =  ep0529, name = ep0529
	reaction_r_0559_ep0529=-1.0;

	reaction_r_0559=compartment_cell*reaction_r_0559_v0*(1+reaction_r_0559_ep0367*log(x(75)/global_par_ic0367)+reaction_r_0559_ep0373*log(x(76)/global_par_ic0373)+reaction_r_0559_ep0218*log(x(45)/global_par_ic0218)+reaction_r_0559_ep0529*log(x(106)/global_par_ic0529));

% Reaction: id = r_0563, name = Imidazole-glycerol-3-phosphate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0563_FLUX_VALUE=0.00251625132250899;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0563_v0=0.00251625132250899;
	% Local Parameter:   id =  ep0312, name = ep0312
	reaction_r_0563_ep0312=1.0;
	% Local Parameter:   id =  ep0999, name = ep0999
	reaction_r_0563_ep0999=1.0;
	% Local Parameter:   id =  ep0403, name = ep0403
	reaction_r_0563_ep0403=-1.0;
	% Local Parameter:   id =  ep0550, name = ep0550
	reaction_r_0563_ep0550=-1.0;
	% Local Parameter:   id =  ep0991, name = ep0991
	reaction_r_0563_ep0991=-1.0;

	reaction_r_0563=compartment_cell*reaction_r_0563_v0*(1+reaction_r_0563_ep0312*log(x(64)/global_par_ic0312)+reaction_r_0563_ep0999*log(x(183)/global_par_ic0999)+reaction_r_0563_ep0403*log(x(82)/global_par_ic0403)+reaction_r_0563_ep0550*log(x(109)/global_par_ic0550)+reaction_r_0563_ep0991*log(x(182)/global_par_ic0991));

% Reaction: id = r_0564, name = imidazoleglycerol-phosphate dehydratase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0564_FLUX_VALUE=0.00251625132250899;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0564_v0=0.00251625132250899;
	% Local Parameter:   id =  ep0550, name = ep0550
	reaction_r_0564_ep0550=1.0;
	% Local Parameter:   id =  ep0207, name = ep0207
	reaction_r_0564_ep0207=-1.0;

	reaction_r_0564=compartment_cell*reaction_r_0564_v0*(1+reaction_r_0564_ep0550*log(x(109)/global_par_ic0550)+reaction_r_0564_ep0207*log(x(41)/global_par_ic0207));

% Reaction: id = r_0565, name = IMP dehydrogenase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0565_FLUX_VALUE=0.00187447440148864;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0565_v0=0.00187447440148864;
	% Local Parameter:   id =  ep0849, name = ep0849
	reaction_r_0565_ep0849=1.0;
	% Local Parameter:   id =  ep1198, name = ep1198
	reaction_r_0565_ep1198=1.0;
	% Local Parameter:   id =  ep1203, name = ep1203
	reaction_r_0565_ep1203=-1.0;
	% Local Parameter:   id =  ep1565, name = ep1565
	reaction_r_0565_ep1565=-1.0;

	reaction_r_0565=compartment_cell*reaction_r_0565_v0*(1+reaction_r_0565_ep0849*log(x(167)/global_par_ic0849)+reaction_r_0565_ep1198*log(x(219)/global_par_ic1198)+reaction_r_0565_ep1203*log(x(220)/global_par_ic1203)+reaction_r_0565_ep1565*log(x(276)/global_par_ic1565));

% Reaction: id = r_0566, name = indole-3-glycerol-phosphate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0566_FLUX_VALUE=0.00107785124523996;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0566_v0=0.00107785124523996;
	% Local Parameter:   id =  ep0076, name = ep0076
	reaction_r_0566_ep0076=1.0;
	% Local Parameter:   id =  ep0086, name = ep0086
	reaction_r_0566_ep0086=-1.0;
	% Local Parameter:   id =  ep0456, name = ep0456
	reaction_r_0566_ep0456=-1.0;

	reaction_r_0566=compartment_cell*reaction_r_0566_v0*(1+reaction_r_0566_ep0076*log(x(17)/global_par_ic0076)+reaction_r_0566_ep0086*log(x(21)/global_par_ic0086)+reaction_r_0566_ep0456*log(x(95)/global_par_ic0456));

% Reaction: id = r_0568, name = inorganic diphosphatase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0568_FLUX_VALUE=0.305666406674421;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0568_v0=0.305666406674421;
	% Local Parameter:   id =  ep0633, name = ep0633
	reaction_r_0568_ep0633=1.0;
	% Local Parameter:   id =  ep1322, name = ep1322
	reaction_r_0568_ep1322=-2.0;

	reaction_r_0568=compartment_cell*reaction_r_0568_v0*(1+reaction_r_0568_ep0633*log(x(132)/global_par_ic0633)+reaction_r_0568_ep1322*log(x(234)/global_par_ic1322));

% Reaction: id = r_0570, name = inosine monophosphate cyclohydrolase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0570_FLUX_VALUE=0.00627317015230181;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0570_v0=0.00627317015230181;
	% Local Parameter:   id =  ep1365, name = ep1365
	reaction_r_0570_ep1365=1.0;
	% Local Parameter:   id =  ep0849, name = ep0849
	reaction_r_0570_ep0849=-1.0;

	reaction_r_0570=compartment_cell*reaction_r_0570_v0*(1+reaction_r_0570_ep1365*log(x(243)/global_par_ic1365)+reaction_r_0570_ep0849*log(x(167)/global_par_ic0849));

% Reaction: id = r_0594, name = IPC synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0594_FLUX_VALUE=2.04421705708177E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0594_v0=2.04421705708177E-5;
	% Local Parameter:   id =  ep0089, name = ep0089
	reaction_r_0594_ep0089=1.0;
	% Local Parameter:   id =  ep0499, name = ep0499
	reaction_r_0594_ep0499=1.0;
	% Local Parameter:   id =  ep0619, name = ep0619
	reaction_r_0594_ep0619=-1.0;
	% Local Parameter:   id =  ep0918, name = ep0918
	reaction_r_0594_ep0918=-1.0;

	reaction_r_0594=compartment_cell*reaction_r_0594_v0*(1+reaction_r_0594_ep0089*log(x(22)/global_par_ic0089)+reaction_r_0594_ep0499*log(x(101)/global_par_ic0499)+reaction_r_0594_ep0619*log(x(129)/global_par_ic0619)+reaction_r_0594_ep0918*log(x(168)/global_par_ic0918));

% Reaction: id = r_0658, name = isocitrate dehydrogenase (NAD+)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0658_FLUX_VALUE=0.0193330078987431;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0658_v0=0.0193330078987431;
	% Local Parameter:   id =  ep0940, name = ep0940
	reaction_r_0658_ep0940=1.0;
	% Local Parameter:   id =  ep1198, name = ep1198
	reaction_r_0658_ep1198=1.0;
	% Local Parameter:   id =  ep0180, name = ep0180
	reaction_r_0658_ep0180=-1.0;
	% Local Parameter:   id =  ep0456, name = ep0456
	reaction_r_0658_ep0456=-1.0;
	% Local Parameter:   id =  ep1203, name = ep1203
	reaction_r_0658_ep1203=-1.0;

	reaction_r_0658=compartment_cell*reaction_r_0658_v0*(1+reaction_r_0658_ep0940*log(x(169)/global_par_ic0940)+reaction_r_0658_ep1198*log(x(219)/global_par_ic1198)+reaction_r_0658_ep0180*log(x(36)/global_par_ic0180)+reaction_r_0658_ep0456*log(x(95)/global_par_ic0456)+reaction_r_0658_ep1203*log(x(220)/global_par_ic1203));

% Reaction: id = r_0661, name = isocitrate dehydrogenase (NADP+), peroxisomal	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0661_FLUX_VALUE=0.0193330078983478;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0661_v0=0.0193330078983478;
	% Local Parameter:   id =  ep0940, name = ep0940
	reaction_r_0661_ep0940=1.0;
	% Local Parameter:   id =  ep1207, name = ep1207
	reaction_r_0661_ep1207=1.0;
	% Local Parameter:   id =  ep0180, name = ep0180
	reaction_r_0661_ep0180=-1.0;
	% Local Parameter:   id =  ep0456, name = ep0456
	reaction_r_0661_ep0456=-1.0;
	% Local Parameter:   id =  ep1212, name = ep1212
	reaction_r_0661_ep1212=-1.0;

	reaction_r_0661=compartment_cell*reaction_r_0661_v0*(1+reaction_r_0661_ep0940*log(x(169)/global_par_ic0940)+reaction_r_0661_ep1207*log(x(221)/global_par_ic1207)+reaction_r_0661_ep0180*log(x(36)/global_par_ic0180)+reaction_r_0661_ep0456*log(x(95)/global_par_ic0456)+reaction_r_0661_ep1212*log(x(222)/global_par_ic1212));

% Reaction: id = r_0663, name = isoleucine transaminase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0663_FLUX_VALUE=0.00731344841399458;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0663_v0=0.00731344841399458;
	% Local Parameter:   id =  ep0056, name = ep0056
	reaction_r_0663_ep0056=1.0;
	% Local Parameter:   id =  ep0991, name = ep0991
	reaction_r_0663_ep0991=1.0;
	% Local Parameter:   id =  ep0180, name = ep0180
	reaction_r_0663_ep0180=-1.0;
	% Local Parameter:   id =  ep1016, name = ep1016
	reaction_r_0663_ep1016=-1.0;

	reaction_r_0663=compartment_cell*reaction_r_0663_v0*(1+reaction_r_0663_ep0056*log(x(13)/global_par_ic0056)+reaction_r_0663_ep0991*log(x(182)/global_par_ic0991)+reaction_r_0663_ep0180*log(x(36)/global_par_ic0180)+reaction_r_0663_ep1016*log(x(190)/global_par_ic1016));

% Reaction: id = r_0665, name = isoleucyl-tRNA synthetase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0665_FLUX_VALUE=0.00731344841399218;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0665_v0=0.00731344841399218;
	% Local Parameter:   id =  ep0434, name = ep0434
	reaction_r_0665_ep0434=1.0;
	% Local Parameter:   id =  ep1016, name = ep1016
	reaction_r_0665_ep1016=1.0;
	% Local Parameter:   id =  ep1596, name = ep1596
	reaction_r_0665_ep1596=1.0;
	% Local Parameter:   id =  ep0423, name = ep0423
	reaction_r_0665_ep0423=-1.0;
	% Local Parameter:   id =  ep0633, name = ep0633
	reaction_r_0665_ep0633=-1.0;
	% Local Parameter:   id =  ep0847, name = ep0847
	reaction_r_0665_ep0847=-1.0;

	reaction_r_0665=compartment_cell*reaction_r_0665_v0*(1+reaction_r_0665_ep0434*log(x(91)/global_par_ic0434)+reaction_r_0665_ep1016*log(x(190)/global_par_ic1016)+reaction_r_0665_ep1596*log(x(291)/global_par_ic1596)+reaction_r_0665_ep0423*log(x(86)/global_par_ic0423)+reaction_r_0665_ep0633*log(x(132)/global_par_ic0633)+reaction_r_0665_ep0847*log(x(166)/global_par_ic0847));

% Reaction: id = r_0667, name = isopentenyl-diphosphate D-isomerase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0667_FLUX_VALUE=5.19949368301002E-4;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0667_v0=5.19949368301002E-4;
	% Local Parameter:   id =  ep0943, name = ep0943
	reaction_r_0667_ep0943=1.0;
	% Local Parameter:   id =  ep1376, name = ep1376
	reaction_r_0667_ep1376=-1.0;

	reaction_r_0667=compartment_cell*reaction_r_0667_v0*(1+reaction_r_0667_ep0943*log(x(170)/global_par_ic0943)+reaction_r_0667_ep1376*log(x(245)/global_par_ic1376));

% Reaction: id = r_0669, name = ketol-acid reductoisomerase (2-aceto-2-hydroxybutanoate)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0669_FLUX_VALUE=0.00965062714996943;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0669_v0=0.00965062714996943;
	% Local Parameter:   id =  ep0039, name = ep0039
	reaction_r_0669_ep0039=1.0;
	% Local Parameter:   id =  ep1212, name = ep1212
	reaction_r_0669_ep1212=1.0;
	% Local Parameter:   id =  ep0008, name = ep0008
	reaction_r_0669_ep0008=-1.0;
	% Local Parameter:   id =  ep1207, name = ep1207
	reaction_r_0669_ep1207=-1.0;

	reaction_r_0669=compartment_cell*reaction_r_0669_v0*(1+reaction_r_0669_ep0039*log(x(12)/global_par_ic0039)+reaction_r_0669_ep1212*log(x(222)/global_par_ic1212)+reaction_r_0669_ep0008*log(x(3)/global_par_ic0008)+reaction_r_0669_ep1207*log(x(221)/global_par_ic1207));

% Reaction: id = r_0674, name = L-alanine transaminase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0674_FLUX_VALUE=0.0174126109617655;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0674_v0=0.0174126109617655;
	% Local Parameter:   id =  ep0991, name = ep0991
	reaction_r_0674_ep0991=1.0;
	% Local Parameter:   id =  ep1399, name = ep1399
	reaction_r_0674_ep1399=1.0;
	% Local Parameter:   id =  ep0180, name = ep0180
	reaction_r_0674_ep0180=-1.0;
	% Local Parameter:   id =  ep0955, name = ep0955
	reaction_r_0674_ep0955=-1.0;

	reaction_r_0674=compartment_cell*reaction_r_0674_v0*(1+reaction_r_0674_ep0991*log(x(182)/global_par_ic0991)+reaction_r_0674_ep1399*log(x(249)/global_par_ic1399)+reaction_r_0674_ep0180*log(x(36)/global_par_ic0180)+reaction_r_0674_ep0955*log(x(173)/global_par_ic0955));

% Reaction: id = r_0678, name = L-aminoadipate-semialdehyde dehydrogenase (NADPH)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0678_FLUX_VALUE=0.01086200797138;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0678_v0=0.01086200797138;
	% Local Parameter:   id =  ep0953, name = ep0953
	reaction_r_0678_ep0953=1.0;
	% Local Parameter:   id =  ep1212, name = ep1212
	reaction_r_0678_ep1212=1.0;
	% Local Parameter:   id =  ep0959, name = ep0959
	reaction_r_0678_ep0959=-1.0;
	% Local Parameter:   id =  ep1207, name = ep1207
	reaction_r_0678_ep1207=-1.0;

	reaction_r_0678=compartment_cell*reaction_r_0678_v0*(1+reaction_r_0678_ep0953*log(x(172)/global_par_ic0953)+reaction_r_0678_ep1212*log(x(222)/global_par_ic1212)+reaction_r_0678_ep0959*log(x(174)/global_par_ic0959)+reaction_r_0678_ep1207*log(x(221)/global_par_ic1207));

% Reaction: id = r_0698, name = lanosterol synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0698_FLUX_VALUE=2.59974684150501E-4;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0698_v0=2.59974684150501E-4;
	% Local Parameter:   id =  ep0037, name = ep0037
	reaction_r_0698_ep0037=1.0;
	% Local Parameter:   id =  ep1059, name = ep1059
	reaction_r_0698_ep1059=-1.0;

	reaction_r_0698=compartment_cell*reaction_r_0698_v0*(1+reaction_r_0698_ep0037*log(x(11)/global_par_ic0037)+reaction_r_0698_ep1059*log(x(202)/global_par_ic1059));

% Reaction: id = r_0699, name = leucine transaminase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0699_FLUX_VALUE=0.0112491235594554;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0699_v0=0.0112491235594554;
	% Local Parameter:   id =  ep0291, name = ep0291
	reaction_r_0699_ep0291=1.0;
	% Local Parameter:   id =  ep0991, name = ep0991
	reaction_r_0699_ep0991=1.0;
	% Local Parameter:   id =  ep0180, name = ep0180
	reaction_r_0699_ep0180=-1.0;
	% Local Parameter:   id =  ep1021, name = ep1021
	reaction_r_0699_ep1021=-1.0;

	reaction_r_0699=compartment_cell*reaction_r_0699_v0*(1+reaction_r_0699_ep0291*log(x(53)/global_par_ic0291)+reaction_r_0699_ep0991*log(x(182)/global_par_ic0991)+reaction_r_0699_ep0180*log(x(36)/global_par_ic0180)+reaction_r_0699_ep1021*log(x(191)/global_par_ic1021));

% Reaction: id = r_0701, name = leucyl-tRNA synthetase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0701_FLUX_VALUE=0.0112491235594566;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0701_v0=0.0112491235594566;
	% Local Parameter:   id =  ep0434, name = ep0434
	reaction_r_0701_ep0434=1.0;
	% Local Parameter:   id =  ep1021, name = ep1021
	reaction_r_0701_ep1021=1.0;
	% Local Parameter:   id =  ep1598, name = ep1598
	reaction_r_0701_ep1598=1.0;
	% Local Parameter:   id =  ep0423, name = ep0423
	reaction_r_0701_ep0423=-1.0;
	% Local Parameter:   id =  ep0633, name = ep0633
	reaction_r_0701_ep0633=-1.0;
	% Local Parameter:   id =  ep1077, name = ep1077
	reaction_r_0701_ep1077=-1.0;

	reaction_r_0701=compartment_cell*reaction_r_0701_v0*(1+reaction_r_0701_ep0434*log(x(91)/global_par_ic0434)+reaction_r_0701_ep1021*log(x(191)/global_par_ic1021)+reaction_r_0701_ep1598*log(x(292)/global_par_ic1598)+reaction_r_0701_ep0423*log(x(86)/global_par_ic0423)+reaction_r_0701_ep0633*log(x(132)/global_par_ic0633)+reaction_r_0701_ep1077*log(x(205)/global_par_ic1077));

% Reaction: id = r_0711, name = lysyl-tRNA synthetase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0711_FLUX_VALUE=0.0108620079713781;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0711_v0=0.0108620079713781;
	% Local Parameter:   id =  ep0434, name = ep0434
	reaction_r_0711_ep0434=1.0;
	% Local Parameter:   id =  ep1025, name = ep1025
	reaction_r_0711_ep1025=1.0;
	% Local Parameter:   id =  ep1600, name = ep1600
	reaction_r_0711_ep1600=1.0;
	% Local Parameter:   id =  ep0423, name = ep0423
	reaction_r_0711_ep0423=-1.0;
	% Local Parameter:   id =  ep0633, name = ep0633
	reaction_r_0711_ep0633=-1.0;
	% Local Parameter:   id =  ep1099, name = ep1099
	reaction_r_0711_ep1099=-1.0;

	reaction_r_0711=compartment_cell*reaction_r_0711_v0*(1+reaction_r_0711_ep0434*log(x(91)/global_par_ic0434)+reaction_r_0711_ep1025*log(x(192)/global_par_ic1025)+reaction_r_0711_ep1600*log(x(293)/global_par_ic1600)+reaction_r_0711_ep0423*log(x(86)/global_par_ic0423)+reaction_r_0711_ep0633*log(x(132)/global_par_ic0633)+reaction_r_0711_ep1099*log(x(207)/global_par_ic1099));

% Reaction: id = r_0713, name = malate dehydrogenase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0713_FLUX_VALUE=0.0142545827185181;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0713_v0=0.0142545827185181;
	% Local Parameter:   id =  ep0066, name = ep0066
	reaction_r_0713_ep0066=1.0;
	% Local Parameter:   id =  ep1198, name = ep1198
	reaction_r_0713_ep1198=1.0;
	% Local Parameter:   id =  ep1203, name = ep1203
	reaction_r_0713_ep1203=-1.0;
	% Local Parameter:   id =  ep1271, name = ep1271
	reaction_r_0713_ep1271=-1.0;

	reaction_r_0713=compartment_cell*reaction_r_0713_v0*(1+reaction_r_0713_ep0066*log(x(15)/global_par_ic0066)+reaction_r_0713_ep1198*log(x(219)/global_par_ic1198)+reaction_r_0713_ep1203*log(x(220)/global_par_ic1203)+reaction_r_0713_ep1271*log(x(229)/global_par_ic1271));

% Reaction: id = r_0722, name = mannose-1-phosphate guanylyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0722_FLUX_VALUE=0.0306618317263325;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0722_v0=0.0306618317263325;
	% Local Parameter:   id =  ep0573, name = ep0573
	reaction_r_0722_ep0573=1.0;
	% Local Parameter:   id =  ep0785, name = ep0785
	reaction_r_0722_ep0785=1.0;
	% Local Parameter:   id =  ep0633, name = ep0633
	reaction_r_0722_ep0633=-1.0;
	% Local Parameter:   id =  ep0743, name = ep0743
	reaction_r_0722_ep0743=-1.0;

	reaction_r_0722=compartment_cell*reaction_r_0722_v0*(1+reaction_r_0722_ep0573*log(x(116)/global_par_ic0573)+reaction_r_0722_ep0785*log(x(160)/global_par_ic0785)+reaction_r_0722_ep0633*log(x(132)/global_par_ic0633)+reaction_r_0722_ep0743*log(x(149)/global_par_ic0743));

% Reaction: id = r_0723, name = mannose-6-phosphate isomerase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0723_FLUX_VALUE=0.0306618317263325;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0723_v0=0.0306618317263325;
	% Local Parameter:   id =  ep0557, name = ep0557
	reaction_r_0723_ep0557=1.0;
	% Local Parameter:   id =  ep0574, name = ep0574
	reaction_r_0723_ep0574=-1.0;

	reaction_r_0723=compartment_cell*reaction_r_0723_v0*(1+reaction_r_0723_ep0557*log(x(112)/global_par_ic0557)+reaction_r_0723_ep0574*log(x(117)/global_par_ic0574));

% Reaction: id = r_0724, name = methenyltetrahydrifikate cyclohydrolase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0724_FLUX_VALUE=2.88565330302391;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0724_v0=2.88565330302391;
	% Local Parameter:   id =  ep0304, name = ep0304
	reaction_r_0724_ep0304=1.0;
	% Local Parameter:   id =  ep0120, name = ep0120
	reaction_r_0724_ep0120=-1.0;

	reaction_r_0724=compartment_cell*reaction_r_0724_v0*(1+reaction_r_0724_ep0304*log(x(62)/global_par_ic0304)+reaction_r_0724_ep0120*log(x(24)/global_par_ic0120));

% Reaction: id = r_0726, name = methionine adenosyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0726_FLUX_VALUE=5.83975250367414E-4;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0726_v0=5.83975250367414E-4;
	% Local Parameter:   id =  ep0434, name = ep0434
	reaction_r_0726_ep0434=1.0;
	% Local Parameter:   id =  ep1029, name = ep1029
	reaction_r_0726_ep1029=1.0;
	% Local Parameter:   id =  ep0633, name = ep0633
	reaction_r_0726_ep0633=-1.0;
	% Local Parameter:   id =  ep1322, name = ep1322
	reaction_r_0726_ep1322=-1.0;
	% Local Parameter:   id =  ep1416, name = ep1416
	reaction_r_0726_ep1416=-1.0;

	reaction_r_0726=compartment_cell*reaction_r_0726_v0*(1+reaction_r_0726_ep0434*log(x(91)/global_par_ic0434)+reaction_r_0726_ep1029*log(x(193)/global_par_ic1029)+reaction_r_0726_ep0633*log(x(132)/global_par_ic0633)+reaction_r_0726_ep1322*log(x(234)/global_par_ic1322)+reaction_r_0726_ep1416*log(x(253)/global_par_ic1416));

% Reaction: id = r_0727, name = methionine synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0727_FLUX_VALUE=0.00250816743817059;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0727_v0=0.00250816743817059;
	% Local Parameter:   id =  ep0322, name = ep0322
	reaction_r_0727_ep0322=1.0;
	% Local Parameter:   id =  ep1012, name = ep1012
	reaction_r_0727_ep1012=1.0;
	% Local Parameter:   id =  ep1029, name = ep1029
	reaction_r_0727_ep1029=-1.0;
	% Local Parameter:   id =  ep1487, name = ep1487
	reaction_r_0727_ep1487=-1.0;

	reaction_r_0727=compartment_cell*reaction_r_0727_v0*(1+reaction_r_0727_ep0322*log(x(67)/global_par_ic0322)+reaction_r_0727_ep1012*log(x(188)/global_par_ic1012)+reaction_r_0727_ep1029*log(x(193)/global_par_ic1029)+reaction_r_0727_ep1487*log(x(263)/global_par_ic1487));

% Reaction: id = r_0729, name = methionyl-tRNA synthetase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0729_FLUX_VALUE=0.00192419218780178;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0729_v0=0.00192419218780178;
	% Local Parameter:   id =  ep0434, name = ep0434
	reaction_r_0729_ep0434=1.0;
	% Local Parameter:   id =  ep1029, name = ep1029
	reaction_r_0729_ep1029=1.0;
	% Local Parameter:   id =  ep1602, name = ep1602
	reaction_r_0729_ep1602=1.0;
	% Local Parameter:   id =  ep0423, name = ep0423
	reaction_r_0729_ep0423=-1.0;
	% Local Parameter:   id =  ep0633, name = ep0633
	reaction_r_0729_ep0633=-1.0;
	% Local Parameter:   id =  ep1148, name = ep1148
	reaction_r_0729_ep1148=-1.0;

	reaction_r_0729=compartment_cell*reaction_r_0729_v0*(1+reaction_r_0729_ep0434*log(x(91)/global_par_ic0434)+reaction_r_0729_ep1029*log(x(193)/global_par_ic1029)+reaction_r_0729_ep1602*log(x(294)/global_par_ic1602)+reaction_r_0729_ep0423*log(x(86)/global_par_ic0423)+reaction_r_0729_ep0633*log(x(132)/global_par_ic0633)+reaction_r_0729_ep1148*log(x(210)/global_par_ic1148));

% Reaction: id = r_0731, name = methylenetetrahydrofolate dehydrogenase (NAD)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0731_FLUX_VALUE=1.95938592660585;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0731_v0=1.95938592660585;
	% Local Parameter:   id =  ep0306, name = ep0306
	reaction_r_0731_ep0306=1.0;
	% Local Parameter:   id =  ep1198, name = ep1198
	reaction_r_0731_ep1198=1.0;
	% Local Parameter:   id =  ep0304, name = ep0304
	reaction_r_0731_ep0304=-1.0;
	% Local Parameter:   id =  ep1203, name = ep1203
	reaction_r_0731_ep1203=-1.0;

	reaction_r_0731=compartment_cell*reaction_r_0731_v0*(1+reaction_r_0731_ep0306*log(x(63)/global_par_ic0306)+reaction_r_0731_ep1198*log(x(219)/global_par_ic1198)+reaction_r_0731_ep0304*log(x(62)/global_par_ic0304)+reaction_r_0731_ep1203*log(x(220)/global_par_ic1203));

% Reaction: id = r_0732, name = methylenetetrahydrofolate dehydrogenase (NADP)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0732_FLUX_VALUE=0.926267376418038;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0732_v0=0.926267376418038;
	% Local Parameter:   id =  ep0306, name = ep0306
	reaction_r_0732_ep0306=1.0;
	% Local Parameter:   id =  ep1207, name = ep1207
	reaction_r_0732_ep1207=1.0;
	% Local Parameter:   id =  ep0304, name = ep0304
	reaction_r_0732_ep0304=-1.0;
	% Local Parameter:   id =  ep1212, name = ep1212
	reaction_r_0732_ep1212=-1.0;

	reaction_r_0732=compartment_cell*reaction_r_0732_v0*(1+reaction_r_0732_ep0306*log(x(63)/global_par_ic0306)+reaction_r_0732_ep1207*log(x(221)/global_par_ic1207)+reaction_r_0732_ep0304*log(x(62)/global_par_ic0304)+reaction_r_0732_ep1212*log(x(222)/global_par_ic1212));

% Reaction: id = r_0736, name = mevalonate kinase (ctp)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0736_FLUX_VALUE=0.00155984810489089;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0736_v0=0.00155984810489089;
	% Local Parameter:   id =  ep0028, name = ep0028
	reaction_r_0736_ep0028=1.0;
	% Local Parameter:   id =  ep0539, name = ep0539
	reaction_r_0736_ep0539=1.0;
	% Local Parameter:   id =  ep0019, name = ep0019
	reaction_r_0736_ep0019=-1.0;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_0736_ep0467=-1.0;

	reaction_r_0736=compartment_cell*reaction_r_0736_v0*(1+reaction_r_0736_ep0028*log(x(10)/global_par_ic0028)+reaction_r_0736_ep0539*log(x(107)/global_par_ic0539)+reaction_r_0736_ep0019*log(x(9)/global_par_ic0019)+reaction_r_0736_ep0467*log(x(96)/global_par_ic0467));

% Reaction: id = r_0739, name = mevalonate pyrophoshate decarboxylase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0739_FLUX_VALUE=0.00155984810490301;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0739_v0=0.00155984810490301;
	% Local Parameter:   id =  ep0018, name = ep0018
	reaction_r_0739_ep0018=1.0;
	% Local Parameter:   id =  ep0434, name = ep0434
	reaction_r_0739_ep0434=1.0;
	% Local Parameter:   id =  ep0394, name = ep0394
	reaction_r_0739_ep0394=-1.0;
	% Local Parameter:   id =  ep0456, name = ep0456
	reaction_r_0739_ep0456=-1.0;
	% Local Parameter:   id =  ep0943, name = ep0943
	reaction_r_0739_ep0943=-1.0;
	% Local Parameter:   id =  ep1322, name = ep1322
	reaction_r_0739_ep1322=-1.0;

	reaction_r_0739=compartment_cell*reaction_r_0739_v0*(1+reaction_r_0739_ep0018*log(x(8)/global_par_ic0018)+reaction_r_0739_ep0434*log(x(91)/global_par_ic0434)+reaction_r_0739_ep0394*log(x(81)/global_par_ic0394)+reaction_r_0739_ep0456*log(x(95)/global_par_ic0456)+reaction_r_0739_ep0943*log(x(170)/global_par_ic0943)+reaction_r_0739_ep1322*log(x(234)/global_par_ic1322));

% Reaction: id = r_0757, name = myo-inositol 1-phosphatase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0757_FLUX_VALUE=8.05209910738368E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0757_v0=8.05209910738368E-5;
	% Local Parameter:   id =  ep0126, name = ep0126
	reaction_r_0757_ep0126=1.0;
	% Local Parameter:   id =  ep1153, name = ep1153
	reaction_r_0757_ep1153=-1.0;
	% Local Parameter:   id =  ep1322, name = ep1322
	reaction_r_0757_ep1322=-1.0;

	reaction_r_0757=compartment_cell*reaction_r_0757_v0*(1+reaction_r_0757_ep0126*log(x(26)/global_par_ic0126)+reaction_r_0757_ep1153*log(x(211)/global_par_ic1153)+reaction_r_0757_ep1322*log(x(234)/global_par_ic1322));

% Reaction: id = r_0758, name = myo-inositol-1-phosphate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0758_FLUX_VALUE=8.05209911324267E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0758_v0=8.05209911324267E-5;
	% Local Parameter:   id =  ep0568, name = ep0568
	reaction_r_0758_ep0568=1.0;
	% Local Parameter:   id =  ep0126, name = ep0126
	reaction_r_0758_ep0126=-1.0;

	reaction_r_0758=compartment_cell*reaction_r_0758_v0*(1+reaction_r_0758_ep0568*log(x(115)/global_par_ic0568)+reaction_r_0758_ep0126*log(x(26)/global_par_ic0126));

% Reaction: id = r_0759, name = N-acetyl-g-glutamyl-phosphate reductase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0759_FLUX_VALUE=0.00609896813767666;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0759_v0=0.00609896813767666;
	% Local Parameter:   id =  ep1191, name = ep1191
	reaction_r_0759_ep1191=1.0;
	% Local Parameter:   id =  ep1212, name = ep1212
	reaction_r_0759_ep1212=1.0;
	% Local Parameter:   id =  ep0145, name = ep0145
	reaction_r_0759_ep0145=-1.0;
	% Local Parameter:   id =  ep1207, name = ep1207
	reaction_r_0759_ep1207=-1.0;
	% Local Parameter:   id =  ep1322, name = ep1322
	reaction_r_0759_ep1322=-1.0;

	reaction_r_0759=compartment_cell*reaction_r_0759_v0*(1+reaction_r_0759_ep1191*log(x(216)/global_par_ic1191)+reaction_r_0759_ep1212*log(x(222)/global_par_ic1212)+reaction_r_0759_ep0145*log(x(29)/global_par_ic0145)+reaction_r_0759_ep1207*log(x(221)/global_par_ic1207)+reaction_r_0759_ep1322*log(x(234)/global_par_ic1322));

% Reaction: id = r_0770, name = NADH dehydrogenase, cytosolic/mitochondrial	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0770_FLUX_VALUE=5.86779635397505;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0770_v0=5.86779635397505;
	% Local Parameter:   id =  ep1203, name = ep1203
	reaction_r_0770_ep1203=1.0;
	% Local Parameter:   id =  ep1537, name = ep1537
	reaction_r_0770_ep1537=1.0;
	% Local Parameter:   id =  ep1198, name = ep1198
	reaction_r_0770_ep1198=-1.0;
	% Local Parameter:   id =  ep1535, name = ep1535
	reaction_r_0770_ep1535=-1.0;

	reaction_r_0770=compartment_cell*reaction_r_0770_v0*(1+reaction_r_0770_ep1203*log(x(220)/global_par_ic1203)+reaction_r_0770_ep1537*log(x(270)/global_par_ic1537)+reaction_r_0770_ep1198*log(x(219)/global_par_ic1198)+reaction_r_0770_ep1535*log(x(269)/global_par_ic1535));

% Reaction: id = r_0792, name = nucleoside diphosphatase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0792_FLUX_VALUE=0.0014653985431621;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0792_v0=0.0014653985431621;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_0792_ep0467=1.0;
	% Local Parameter:   id =  ep0526, name = ep0526
	reaction_r_0792_ep0526=-1.0;
	% Local Parameter:   id =  ep1322, name = ep1322
	reaction_r_0792_ep1322=-1.0;

	reaction_r_0792=compartment_cell*reaction_r_0792_v0*(1+reaction_r_0792_ep0467*log(x(96)/global_par_ic0467)+reaction_r_0792_ep0526*log(x(105)/global_par_ic0526)+reaction_r_0792_ep1322*log(x(234)/global_par_ic1322));

% Reaction: id = r_0800, name = nucleoside diphosphate kinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0800_FLUX_VALUE=0.0350981004584189;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0800_v0=0.0350981004584189;
	% Local Parameter:   id =  ep0434, name = ep0434
	reaction_r_0800_ep0434=1.0;
	% Local Parameter:   id =  ep0739, name = ep0739
	reaction_r_0800_ep0739=1.0;
	% Local Parameter:   id =  ep0394, name = ep0394
	reaction_r_0800_ep0394=-1.0;
	% Local Parameter:   id =  ep0785, name = ep0785
	reaction_r_0800_ep0785=-1.0;

	reaction_r_0800=compartment_cell*reaction_r_0800_v0*(1+reaction_r_0800_ep0434*log(x(91)/global_par_ic0434)+reaction_r_0800_ep0739*log(x(148)/global_par_ic0739)+reaction_r_0800_ep0394*log(x(81)/global_par_ic0394)+reaction_r_0800_ep0785*log(x(160)/global_par_ic0785));

% Reaction: id = r_0811, name = nucleoside-diphosphate kinase (ATP:UDP)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0811_FLUX_VALUE=0.10862767021555;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0811_v0=0.10862767021555;
	% Local Parameter:   id =  ep0434, name = ep0434
	reaction_r_0811_ep0434=1.0;
	% Local Parameter:   id =  ep1538, name = ep1538
	reaction_r_0811_ep1538=1.0;
	% Local Parameter:   id =  ep0394, name = ep0394
	reaction_r_0811_ep0394=-1.0;
	% Local Parameter:   id =  ep1559, name = ep1559
	reaction_r_0811_ep1559=-1.0;

	reaction_r_0811=compartment_cell*reaction_r_0811_v0*(1+reaction_r_0811_ep0434*log(x(91)/global_par_ic0434)+reaction_r_0811_ep1538*log(x(271)/global_par_ic1538)+reaction_r_0811_ep0394*log(x(81)/global_par_ic0394)+reaction_r_0811_ep1559*log(x(274)/global_par_ic1559));

% Reaction: id = r_0813, name = O-acetylhomoserine (thiol)-lyase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0813_FLUX_VALUE=0.00217467874388578;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0813_v0=0.00217467874388578;
	% Local Parameter:   id =  ep0841, name = ep0841
	reaction_r_0813_ep0841=1.0;
	% Local Parameter:   id =  ep1233, name = ep1233
	reaction_r_0813_ep1233=1.0;
	% Local Parameter:   id =  ep0362, name = ep0362
	reaction_r_0813_ep0362=-1.0;
	% Local Parameter:   id =  ep1012, name = ep1012
	reaction_r_0813_ep1012=-1.0;

	reaction_r_0813=compartment_cell*reaction_r_0813_v0*(1+reaction_r_0813_ep0841*log(x(165)/global_par_ic0841)+reaction_r_0813_ep1233*log(x(223)/global_par_ic1233)+reaction_r_0813_ep0362*log(x(74)/global_par_ic0362)+reaction_r_0813_ep1012*log(x(188)/global_par_ic1012));

% Reaction: id = r_0816, name = ornithine carbamoyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0816_FLUX_VALUE=0.00609896813766667;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0816_v0=0.00609896813766667;
	% Local Parameter:   id =  ep0455, name = ep0455
	reaction_r_0816_ep0455=1.0;
	% Local Parameter:   id =  ep1266, name = ep1266
	reaction_r_0816_ep1266=1.0;
	% Local Parameter:   id =  ep0979, name = ep0979
	reaction_r_0816_ep0979=-1.0;
	% Local Parameter:   id =  ep1322, name = ep1322
	reaction_r_0816_ep1322=-1.0;

	reaction_r_0816=compartment_cell*reaction_r_0816_v0*(1+reaction_r_0816_ep0455*log(x(94)/global_par_ic0455)+reaction_r_0816_ep1266*log(x(226)/global_par_ic1266)+reaction_r_0816_ep0979*log(x(179)/global_par_ic0979)+reaction_r_0816_ep1322*log(x(234)/global_par_ic1322));

% Reaction: id = r_0818, name = ornithine transacetylase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0818_FLUX_VALUE=0.00609896813767666;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0818_v0=0.00609896813767666;
	% Local Parameter:   id =  ep0991, name = ep0991
	reaction_r_0818_ep0991=1.0;
	% Local Parameter:   id =  ep1182, name = ep1182
	reaction_r_0818_ep1182=1.0;
	% Local Parameter:   id =  ep1192, name = ep1192
	reaction_r_0818_ep1192=-1.0;
	% Local Parameter:   id =  ep1266, name = ep1266
	reaction_r_0818_ep1266=-1.0;

	reaction_r_0818=compartment_cell*reaction_r_0818_v0*(1+reaction_r_0818_ep0991*log(x(182)/global_par_ic0991)+reaction_r_0818_ep1182*log(x(214)/global_par_ic1182)+reaction_r_0818_ep1192*log(x(217)/global_par_ic1192)+reaction_r_0818_ep1266*log(x(226)/global_par_ic1266));

% Reaction: id = r_0820, name = orotate phosphoribosyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0820_FLUX_VALUE=0.00419754745504612;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0820_v0=0.00419754745504612;
	% Local Parameter:   id =  ep1269, name = ep1269
	reaction_r_0820_ep1269=1.0;
	% Local Parameter:   id =  ep1386, name = ep1386
	reaction_r_0820_ep1386=1.0;
	% Local Parameter:   id =  ep0633, name = ep0633
	reaction_r_0820_ep0633=-1.0;
	% Local Parameter:   id =  ep1270, name = ep1270
	reaction_r_0820_ep1270=-1.0;

	reaction_r_0820=compartment_cell*reaction_r_0820_v0*(1+reaction_r_0820_ep1269*log(x(227)/global_par_ic1269)+reaction_r_0820_ep1386*log(x(248)/global_par_ic1386)+reaction_r_0820_ep0633*log(x(132)/global_par_ic0633)+reaction_r_0820_ep1270*log(x(228)/global_par_ic1270));

% Reaction: id = r_0821, name = orotidine-5'-phosphate decarboxylase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0821_FLUX_VALUE=0.00419754745504612;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0821_v0=0.00419754745504612;
	% Local Parameter:   id =  ep1270, name = ep1270
	reaction_r_0821_ep1270=1.0;
	% Local Parameter:   id =  ep0456, name = ep0456
	reaction_r_0821_ep0456=-1.0;
	% Local Parameter:   id =  ep1545, name = ep1545
	reaction_r_0821_ep1545=-1.0;

	reaction_r_0821=compartment_cell*reaction_r_0821_v0*(1+reaction_r_0821_ep1270*log(x(228)/global_par_ic1270)+reaction_r_0821_ep0456*log(x(95)/global_par_ic0456)+reaction_r_0821_ep1545*log(x(273)/global_par_ic1545));

% Reaction: id = r_0851, name = phenylalanine transaminase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0851_FLUX_VALUE=0.00508184090605392;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0851_v0=0.00508184090605392;
	% Local Parameter:   id =  ep0951, name = ep0951
	reaction_r_0851_ep0951=1.0;
	% Local Parameter:   id =  ep0991, name = ep0991
	reaction_r_0851_ep0991=1.0;
	% Local Parameter:   id =  ep0180, name = ep0180
	reaction_r_0851_ep0180=-1.0;
	% Local Parameter:   id =  ep1032, name = ep1032
	reaction_r_0851_ep1032=-1.0;

	reaction_r_0851=compartment_cell*reaction_r_0851_v0*(1+reaction_r_0851_ep0951*log(x(171)/global_par_ic0951)+reaction_r_0851_ep0991*log(x(182)/global_par_ic0991)+reaction_r_0851_ep0180*log(x(36)/global_par_ic0180)+reaction_r_0851_ep1032*log(x(194)/global_par_ic1032));

% Reaction: id = r_0852, name = phenylalanyl-tRNA synthetase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0852_FLUX_VALUE=0.00508184090624576;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0852_v0=0.00508184090624576;
	% Local Parameter:   id =  ep0434, name = ep0434
	reaction_r_0852_ep0434=1.0;
	% Local Parameter:   id =  ep1032, name = ep1032
	reaction_r_0852_ep1032=1.0;
	% Local Parameter:   id =  ep1604, name = ep1604
	reaction_r_0852_ep1604=1.0;
	% Local Parameter:   id =  ep0423, name = ep0423
	reaction_r_0852_ep0423=-1.0;
	% Local Parameter:   id =  ep0633, name = ep0633
	reaction_r_0852_ep0633=-1.0;
	% Local Parameter:   id =  ep1314, name = ep1314
	reaction_r_0852_ep1314=-1.0;

	reaction_r_0852=compartment_cell*reaction_r_0852_v0*(1+reaction_r_0852_ep0434*log(x(91)/global_par_ic0434)+reaction_r_0852_ep1032*log(x(194)/global_par_ic1032)+reaction_r_0852_ep1604*log(x(295)/global_par_ic1604)+reaction_r_0852_ep0423*log(x(86)/global_par_ic0423)+reaction_r_0852_ep0633*log(x(132)/global_par_ic0633)+reaction_r_0852_ep1314*log(x(233)/global_par_ic1314));

% Reaction: id = r_0855, name = phopshoribosylaminoimidazole synthetase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0855_FLUX_VALUE=0.00375691882979276;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0855_v0=0.00375691882979276;
	% Local Parameter:   id =  ep0302, name = ep0302
	reaction_r_0855_ep0302=1.0;
	% Local Parameter:   id =  ep0434, name = ep0434
	reaction_r_0855_ep0434=1.0;
	% Local Parameter:   id =  ep0300, name = ep0300
	reaction_r_0855_ep0300=-1.0;
	% Local Parameter:   id =  ep0394, name = ep0394
	reaction_r_0855_ep0394=-1.0;
	% Local Parameter:   id =  ep1322, name = ep1322
	reaction_r_0855_ep1322=-1.0;

	reaction_r_0855=compartment_cell*reaction_r_0855_v0*(1+reaction_r_0855_ep0302*log(x(61)/global_par_ic0302)+reaction_r_0855_ep0434*log(x(91)/global_par_ic0434)+reaction_r_0855_ep0300*log(x(59)/global_par_ic0300)+reaction_r_0855_ep0394*log(x(81)/global_par_ic0394)+reaction_r_0855_ep1322*log(x(234)/global_par_ic1322));

% Reaction: id = r_0858, name = phosphatidylethanolamine methyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0858_FLUX_VALUE=1.09303224869629E-4;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0858_v0=1.09303224869629E-4;
	% Local Parameter:   id =  ep1351, name = ep1351
	reaction_r_0858_ep1351=1.0;
	% Local Parameter:   id =  ep1416, name = ep1416
	reaction_r_0858_ep1416=1.0;
	% Local Parameter:   id =  ep1343, name = ep1343
	reaction_r_0858_ep1343=-1.0;
	% Local Parameter:   id =  ep1413, name = ep1413
	reaction_r_0858_ep1413=-1.0;

	reaction_r_0858=compartment_cell*reaction_r_0858_v0*(1+reaction_r_0858_ep1351*log(x(240)/global_par_ic1351)+reaction_r_0858_ep1416*log(x(253)/global_par_ic1416)+reaction_r_0858_ep1343*log(x(238)/global_par_ic1343)+reaction_r_0858_ep1413*log(x(252)/global_par_ic1413));

% Reaction: id = r_0874, name = phosphatidylinositol synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0874_FLUX_VALUE=8.05209910738368E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0874_v0=8.05209910738368E-5;
	% Local Parameter:   id =  ep0471, name = ep0471
	reaction_r_0874_ep0471=1.0;
	% Local Parameter:   id =  ep1153, name = ep1153
	reaction_r_0874_ep1153=1.0;
	% Local Parameter:   id =  ep0089, name = ep0089
	reaction_r_0874_ep0089=-1.0;
	% Local Parameter:   id =  ep0526, name = ep0526
	reaction_r_0874_ep0526=-1.0;

	reaction_r_0874=compartment_cell*reaction_r_0874_v0*(1+reaction_r_0874_ep0471*log(x(97)/global_par_ic0471)+reaction_r_0874_ep1153*log(x(211)/global_par_ic1153)+reaction_r_0874_ep0089*log(x(22)/global_par_ic0089)+reaction_r_0874_ep0526*log(x(105)/global_par_ic0526));

% Reaction: id = r_0877, name = phosphatidylserine decarboxylase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0877_FLUX_VALUE=1.3575612338737E-4;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0877_v0=1.3575612338737E-4;
	% Local Parameter:   id =  ep1337, name = ep1337
	reaction_r_0877_ep1337=1.0;
	% Local Parameter:   id =  ep0456, name = ep0456
	reaction_r_0877_ep0456=-1.0;
	% Local Parameter:   id =  ep1351, name = ep1351
	reaction_r_0877_ep1351=-1.0;

	reaction_r_0877=compartment_cell*reaction_r_0877_v0*(1+reaction_r_0877_ep1337*log(x(236)/global_par_ic1337)+reaction_r_0877_ep0456*log(x(95)/global_par_ic0456)+reaction_r_0877_ep1351*log(x(240)/global_par_ic1351));

% Reaction: id = r_0880, name = phosphatidylserine synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0880_FLUX_VALUE=1.50557601754342E-4;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0880_v0=1.50557601754342E-4;
	% Local Parameter:   id =  ep0471, name = ep0471
	reaction_r_0880_ep0471=1.0;
	% Local Parameter:   id =  ep1039, name = ep1039
	reaction_r_0880_ep1039=1.0;
	% Local Parameter:   id =  ep0526, name = ep0526
	reaction_r_0880_ep0526=-1.0;
	% Local Parameter:   id =  ep1337, name = ep1337
	reaction_r_0880_ep1337=-1.0;

	reaction_r_0880=compartment_cell*reaction_r_0880_v0*(1+reaction_r_0880_ep0471*log(x(97)/global_par_ic0471)+reaction_r_0880_ep1039*log(x(197)/global_par_ic1039)+reaction_r_0880_ep0526*log(x(105)/global_par_ic0526)+reaction_r_0880_ep1337*log(x(236)/global_par_ic1337));

% Reaction: id = r_0883, name = phosphoadenylyl-sulfate reductase (thioredoxin)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0883_FLUX_VALUE=0.00217467874478967;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0883_v0=0.00217467874478967;
	% Local Parameter:   id =  ep0201, name = ep0201
	reaction_r_0883_ep0201=1.0;
	% Local Parameter:   id =  ep1616, name = ep1616
	reaction_r_0883_ep1616=1.0;
	% Local Parameter:   id =  ep0390, name = ep0390
	reaction_r_0883_ep0390=-1.0;
	% Local Parameter:   id =  ep1469, name = ep1469
	reaction_r_0883_ep1469=-1.0;
	% Local Parameter:   id =  ep1620, name = ep1620
	reaction_r_0883_ep1620=-1.0;

	reaction_r_0883=compartment_cell*reaction_r_0883_v0*(1+reaction_r_0883_ep0201*log(x(39)/global_par_ic0201)+reaction_r_0883_ep1616*log(x(302)/global_par_ic1616)+reaction_r_0883_ep0390*log(x(79)/global_par_ic0390)+reaction_r_0883_ep1469*log(x(262)/global_par_ic1469)+reaction_r_0883_ep1620*log(x(303)/global_par_ic1620));

% Reaction: id = r_0886, name = phosphofructokinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0886_FLUX_VALUE=0.850573321329957;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0886_v0=0.850573321329957;
	% Local Parameter:   id =  ep0434, name = ep0434
	reaction_r_0886_ep0434=1.0;
	% Local Parameter:   id =  ep0557, name = ep0557
	reaction_r_0886_ep0557=1.0;
	% Local Parameter:   id =  ep0394, name = ep0394
	reaction_r_0886_ep0394=-1.0;
	% Local Parameter:   id =  ep0555, name = ep0555
	reaction_r_0886_ep0555=-1.0;

	reaction_r_0886=compartment_cell*reaction_r_0886_v0*(1+reaction_r_0886_ep0434*log(x(91)/global_par_ic0434)+reaction_r_0886_ep0557*log(x(112)/global_par_ic0557)+reaction_r_0886_ep0394*log(x(81)/global_par_ic0394)+reaction_r_0886_ep0555*log(x(111)/global_par_ic0555));

% Reaction: id = r_0888, name = phosphoglucomutase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0888_FLUX_VALUE=0.106703478027702;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0888_v0=0.106703478027702;
	% Local Parameter:   id =  ep0568, name = ep0568
	reaction_r_0888_ep0568=1.0;
	% Local Parameter:   id =  ep0567, name = ep0567
	reaction_r_0888_ep0567=-1.0;

	reaction_r_0888=compartment_cell*reaction_r_0888_v0*(1+reaction_r_0888_ep0568*log(x(115)/global_par_ic0568)+reaction_r_0888_ep0567*log(x(114)/global_par_ic0567));

% Reaction: id = r_0891, name = phosphoglycerate dehydrogenase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0891_FLUX_VALUE=1.46007394609031;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0891_v0=1.46007394609031;
	% Local Parameter:   id =  ep0260, name = ep0260
	reaction_r_0891_ep0260=1.0;
	% Local Parameter:   id =  ep1198, name = ep1198
	reaction_r_0891_ep1198=1.0;
	% Local Parameter:   id =  ep0258, name = ep0258
	reaction_r_0891_ep0258=-1.0;
	% Local Parameter:   id =  ep1203, name = ep1203
	reaction_r_0891_ep1203=-1.0;

	reaction_r_0891=compartment_cell*reaction_r_0891_v0*(1+reaction_r_0891_ep0260*log(x(50)/global_par_ic0260)+reaction_r_0891_ep1198*log(x(219)/global_par_ic1198)+reaction_r_0891_ep0258*log(x(48)/global_par_ic0258)+reaction_r_0891_ep1203*log(x(220)/global_par_ic1203));

% Reaction: id = r_0892, name = phosphoglycerate kinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0892_FLUX_VALUE=1.69142241294296;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0892_v0=1.69142241294296;
	% Local Parameter:   id =  ep0075, name = ep0075
	reaction_r_0892_ep0075=1.0;
	% Local Parameter:   id =  ep0394, name = ep0394
	reaction_r_0892_ep0394=1.0;
	% Local Parameter:   id =  ep0260, name = ep0260
	reaction_r_0892_ep0260=-1.0;
	% Local Parameter:   id =  ep0434, name = ep0434
	reaction_r_0892_ep0434=-1.0;

	reaction_r_0892=compartment_cell*reaction_r_0892_v0*(1+reaction_r_0892_ep0075*log(x(16)/global_par_ic0075)+reaction_r_0892_ep0394*log(x(81)/global_par_ic0394)+reaction_r_0892_ep0260*log(x(50)/global_par_ic0260)+reaction_r_0892_ep0434*log(x(91)/global_par_ic0434));

% Reaction: id = r_0893, name = phosphoglycerate mutase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0893_FLUX_VALUE=0.231348466852626;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0893_v0=0.231348466852626;
	% Local Parameter:   id =  ep0260, name = ep0260
	reaction_r_0893_ep0260=1.0;
	% Local Parameter:   id =  ep0188, name = ep0188
	reaction_r_0893_ep0188=-1.0;

	reaction_r_0893=compartment_cell*reaction_r_0893_v0*(1+reaction_r_0893_ep0260*log(x(50)/global_par_ic0260)+reaction_r_0893_ep0188*log(x(37)/global_par_ic0188));

% Reaction: id = r_0900, name = phospholipid methyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0900_FLUX_VALUE=1.09303224869629E-4;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0900_v0=1.09303224869629E-4;
	% Local Parameter:   id =  ep1342, name = ep1342
	reaction_r_0900_ep1342=1.0;
	% Local Parameter:   id =  ep1416, name = ep1416
	reaction_r_0900_ep1416=1.0;
	% Local Parameter:   id =  ep1346, name = ep1346
	reaction_r_0900_ep1346=-1.0;
	% Local Parameter:   id =  ep1413, name = ep1413
	reaction_r_0900_ep1413=-1.0;

	reaction_r_0900=compartment_cell*reaction_r_0900_v0*(1+reaction_r_0900_ep1342*log(x(237)/global_par_ic1342)+reaction_r_0900_ep1416*log(x(253)/global_par_ic1416)+reaction_r_0900_ep1346*log(x(239)/global_par_ic1346)+reaction_r_0900_ep1413*log(x(252)/global_par_ic1413));

% Reaction: id = r_0901, name = phospholipid methyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0901_FLUX_VALUE=1.09303224869629E-4;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0901_v0=1.09303224869629E-4;
	% Local Parameter:   id =  ep1343, name = ep1343
	reaction_r_0901_ep1343=1.0;
	% Local Parameter:   id =  ep1416, name = ep1416
	reaction_r_0901_ep1416=1.0;
	% Local Parameter:   id =  ep1342, name = ep1342
	reaction_r_0901_ep1342=-1.0;
	% Local Parameter:   id =  ep1413, name = ep1413
	reaction_r_0901_ep1413=-1.0;

	reaction_r_0901=compartment_cell*reaction_r_0901_v0*(1+reaction_r_0901_ep1343*log(x(238)/global_par_ic1343)+reaction_r_0901_ep1416*log(x(253)/global_par_ic1416)+reaction_r_0901_ep1342*log(x(237)/global_par_ic1342)+reaction_r_0901_ep1413*log(x(252)/global_par_ic1413));

% Reaction: id = r_0902, name = phosphomannomutase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0902_FLUX_VALUE=0.0306618317263325;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0902_v0=0.0306618317263325;
	% Local Parameter:   id =  ep0574, name = ep0574
	reaction_r_0902_ep0574=1.0;
	% Local Parameter:   id =  ep0573, name = ep0573
	reaction_r_0902_ep0573=-1.0;

	reaction_r_0902=compartment_cell*reaction_r_0902_v0*(1+reaction_r_0902_ep0574*log(x(117)/global_par_ic0574)+reaction_r_0902_ep0573*log(x(116)/global_par_ic0573));

% Reaction: id = r_0904, name = phosphomevalonate kinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0904_FLUX_VALUE=0.00155984810490301;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0904_v0=0.00155984810490301;
	% Local Parameter:   id =  ep0019, name = ep0019
	reaction_r_0904_ep0019=1.0;
	% Local Parameter:   id =  ep0434, name = ep0434
	reaction_r_0904_ep0434=1.0;
	% Local Parameter:   id =  ep0018, name = ep0018
	reaction_r_0904_ep0018=-1.0;
	% Local Parameter:   id =  ep0394, name = ep0394
	reaction_r_0904_ep0394=-1.0;

	reaction_r_0904=compartment_cell*reaction_r_0904_v0*(1+reaction_r_0904_ep0019*log(x(9)/global_par_ic0019)+reaction_r_0904_ep0434*log(x(91)/global_par_ic0434)+reaction_r_0904_ep0018*log(x(8)/global_par_ic0018)+reaction_r_0904_ep0394*log(x(81)/global_par_ic0394));

% Reaction: id = r_0908, name = phosphoribosyl amino imidazolesuccinocarbozamide synthetase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0908_FLUX_VALUE=0.00375691882979276;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0908_v0=0.00375691882979276;
	% Local Parameter:   id =  ep0434, name = ep0434
	reaction_r_0908_ep0434=1.0;
	% Local Parameter:   id =  ep0973, name = ep0973
	reaction_r_0908_ep0973=1.0;
	% Local Parameter:   id =  ep1364, name = ep1364
	reaction_r_0908_ep1364=1.0;
	% Local Parameter:   id =  ep0299, name = ep0299
	reaction_r_0908_ep0299=-1.0;
	% Local Parameter:   id =  ep0394, name = ep0394
	reaction_r_0908_ep0394=-1.0;
	% Local Parameter:   id =  ep1322, name = ep1322
	reaction_r_0908_ep1322=-1.0;

	reaction_r_0908=compartment_cell*reaction_r_0908_v0*(1+reaction_r_0908_ep0434*log(x(91)/global_par_ic0434)+reaction_r_0908_ep0973*log(x(177)/global_par_ic0973)+reaction_r_0908_ep1364*log(x(242)/global_par_ic1364)+reaction_r_0908_ep0299*log(x(58)/global_par_ic0299)+reaction_r_0908_ep0394*log(x(81)/global_par_ic0394)+reaction_r_0908_ep1322*log(x(234)/global_par_ic1322));

% Reaction: id = r_0909, name = phosphoribosyl-AMP cyclohydrolase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0909_FLUX_VALUE=0.00251625132250899;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0909_v0=0.00251625132250899;
	% Local Parameter:   id =  ep0078, name = ep0078
	reaction_r_0909_ep0078=1.0;
	% Local Parameter:   id =  ep0077, name = ep0077
	reaction_r_0909_ep0077=-1.0;

	reaction_r_0909=compartment_cell*reaction_r_0909_v0*(1+reaction_r_0909_ep0078*log(x(19)/global_par_ic0078)+reaction_r_0909_ep0077*log(x(18)/global_par_ic0077));

% Reaction: id = r_0910, name = phosphoribosyl-ATP pyrophosphatase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0910_FLUX_VALUE=0.00251625132250899;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0910_v0=0.00251625132250899;
	% Local Parameter:   id =  ep0326, name = ep0326
	reaction_r_0910_ep0326=1.0;
	% Local Parameter:   id =  ep0078, name = ep0078
	reaction_r_0910_ep0078=-1.0;
	% Local Parameter:   id =  ep0633, name = ep0633
	reaction_r_0910_ep0633=-1.0;

	reaction_r_0910=compartment_cell*reaction_r_0910_v0*(1+reaction_r_0910_ep0326*log(x(70)/global_par_ic0326)+reaction_r_0910_ep0078*log(x(19)/global_par_ic0078)+reaction_r_0910_ep0633*log(x(132)/global_par_ic0633));

% Reaction: id = r_0911, name = phosphoribosylaminoimidazole-carboxylase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0911_FLUX_VALUE=0.00375691882979276;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0911_v0=0.00375691882979276;
	% Local Parameter:   id =  ep0300, name = ep0300
	reaction_r_0911_ep0300=1.0;
	% Local Parameter:   id =  ep0456, name = ep0456
	reaction_r_0911_ep0456=1.0;
	% Local Parameter:   id =  ep0434, name = ep0434
	reaction_r_0911_ep0434=1.0;
	% Local Parameter:   id =  ep1364, name = ep1364
	reaction_r_0911_ep1364=-1.0;
	% Local Parameter:   id =  ep0394, name = ep0394
	reaction_r_0911_ep0394=-1.0;
	% Local Parameter:   id =  ep1322, name = ep1322
	reaction_r_0911_ep1322=-1.0;

	reaction_r_0911=compartment_cell*reaction_r_0911_v0*(1+reaction_r_0911_ep0300*log(x(59)/global_par_ic0300)+reaction_r_0911_ep0456*log(x(95)/global_par_ic0456)+reaction_r_0911_ep0434*log(x(91)/global_par_ic0434)+reaction_r_0911_ep1364*log(x(242)/global_par_ic1364)+reaction_r_0911_ep0394*log(x(81)/global_par_ic0394)+reaction_r_0911_ep1322*log(x(234)/global_par_ic1322));

% Reaction: id = r_0912, name = phosphoribosylaminoimidazolecarboxamide formyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0912_FLUX_VALUE=0.00627317015230181;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0912_v0=0.00627317015230181;
	% Local Parameter:   id =  ep0120, name = ep0120
	reaction_r_0912_ep0120=1.0;
	% Local Parameter:   id =  ep0403, name = ep0403
	reaction_r_0912_ep0403=1.0;
	% Local Parameter:   id =  ep1365, name = ep1365
	reaction_r_0912_ep1365=-1.0;
	% Local Parameter:   id =  ep1487, name = ep1487
	reaction_r_0912_ep1487=-1.0;

	reaction_r_0912=compartment_cell*reaction_r_0912_v0*(1+reaction_r_0912_ep0120*log(x(24)/global_par_ic0120)+reaction_r_0912_ep0403*log(x(82)/global_par_ic0403)+reaction_r_0912_ep1365*log(x(243)/global_par_ic1365)+reaction_r_0912_ep1487*log(x(263)/global_par_ic1487));

% Reaction: id = r_0913, name = phosphoribosylanthranilate isomerase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0913_FLUX_VALUE=0.00107785124523996;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0913_v0=0.00107785124523996;
	% Local Parameter:   id =  ep1187, name = ep1187
	reaction_r_0913_ep1187=1.0;
	% Local Parameter:   id =  ep0076, name = ep0076
	reaction_r_0913_ep0076=-1.0;

	reaction_r_0913=compartment_cell*reaction_r_0913_v0*(1+reaction_r_0913_ep1187*log(x(215)/global_par_ic1187)+reaction_r_0913_ep0076*log(x(17)/global_par_ic0076));

% Reaction: id = r_0914, name = phosphoribosylglycinamidine synthetase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0914_FLUX_VALUE=0.00375691882979276;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0914_v0=0.00375691882979276;
	% Local Parameter:   id =  ep0327, name = ep0327
	reaction_r_0914_ep0327=1.0;
	% Local Parameter:   id =  ep0434, name = ep0434
	reaction_r_0914_ep0434=1.0;
	% Local Parameter:   id =  ep1003, name = ep1003
	reaction_r_0914_ep1003=1.0;
	% Local Parameter:   id =  ep0325, name = ep0325
	reaction_r_0914_ep0325=-1.0;
	% Local Parameter:   id =  ep0394, name = ep0394
	reaction_r_0914_ep0394=-1.0;
	% Local Parameter:   id =  ep1322, name = ep1322
	reaction_r_0914_ep1322=-1.0;

	reaction_r_0914=compartment_cell*reaction_r_0914_v0*(1+reaction_r_0914_ep0327*log(x(71)/global_par_ic0327)+reaction_r_0914_ep0434*log(x(91)/global_par_ic0434)+reaction_r_0914_ep1003*log(x(184)/global_par_ic1003)+reaction_r_0914_ep0325*log(x(69)/global_par_ic0325)+reaction_r_0914_ep0394*log(x(81)/global_par_ic0394)+reaction_r_0914_ep1322*log(x(234)/global_par_ic1322));

% Reaction: id = r_0915, name = phosphoribosylpyrophosphate amidotransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0915_FLUX_VALUE=0.00375691882979276;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0915_v0=0.00375691882979276;
	% Local Parameter:   id =  ep0999, name = ep0999
	reaction_r_0915_ep0999=1.0;
	% Local Parameter:   id =  ep1386, name = ep1386
	reaction_r_0915_ep1386=1.0;
	% Local Parameter:   id =  ep0327, name = ep0327
	reaction_r_0915_ep0327=-1.0;
	% Local Parameter:   id =  ep0633, name = ep0633
	reaction_r_0915_ep0633=-1.0;
	% Local Parameter:   id =  ep0991, name = ep0991
	reaction_r_0915_ep0991=-1.0;

	reaction_r_0915=compartment_cell*reaction_r_0915_v0*(1+reaction_r_0915_ep0999*log(x(183)/global_par_ic0999)+reaction_r_0915_ep1386*log(x(248)/global_par_ic1386)+reaction_r_0915_ep0327*log(x(71)/global_par_ic0327)+reaction_r_0915_ep0633*log(x(132)/global_par_ic0633)+reaction_r_0915_ep0991*log(x(182)/global_par_ic0991));

% Reaction: id = r_0916, name = phosphoribosylpyrophosphate synthetase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0916_FLUX_VALUE=0.0115485688525797;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0916_v0=0.0115485688525797;
	% Local Parameter:   id =  ep0434, name = ep0434
	reaction_r_0916_ep0434=1.0;
	% Local Parameter:   id =  ep1408, name = ep1408
	reaction_r_0916_ep1408=1.0;
	% Local Parameter:   id =  ep0423, name = ep0423
	reaction_r_0916_ep0423=-1.0;
	% Local Parameter:   id =  ep1386, name = ep1386
	reaction_r_0916_ep1386=-1.0;

	reaction_r_0916=compartment_cell*reaction_r_0916_v0*(1+reaction_r_0916_ep0434*log(x(91)/global_par_ic0434)+reaction_r_0916_ep1408*log(x(251)/global_par_ic1408)+reaction_r_0916_ep0423*log(x(86)/global_par_ic0423)+reaction_r_0916_ep1386*log(x(248)/global_par_ic1386));

% Reaction: id = r_0917, name = phosphoserine phosphatase (L-serine)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0917_FLUX_VALUE=1.46007394609031;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0917_v0=1.46007394609031;
	% Local Parameter:   id =  ep0259, name = ep0259
	reaction_r_0917_ep0259=1.0;
	% Local Parameter:   id =  ep1039, name = ep1039
	reaction_r_0917_ep1039=-1.0;
	% Local Parameter:   id =  ep1322, name = ep1322
	reaction_r_0917_ep1322=-1.0;

	reaction_r_0917=compartment_cell*reaction_r_0917_v0*(1+reaction_r_0917_ep0259*log(x(49)/global_par_ic0259)+reaction_r_0917_ep1039*log(x(197)/global_par_ic1039)+reaction_r_0917_ep1322*log(x(234)/global_par_ic1322));

% Reaction: id = r_0918, name = phosphoserine transaminase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0918_FLUX_VALUE=1.46007394609031;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0918_v0=1.46007394609031;
	% Local Parameter:   id =  ep0258, name = ep0258
	reaction_r_0918_ep0258=1.0;
	% Local Parameter:   id =  ep0991, name = ep0991
	reaction_r_0918_ep0991=1.0;
	% Local Parameter:   id =  ep0180, name = ep0180
	reaction_r_0918_ep0180=-1.0;
	% Local Parameter:   id =  ep0259, name = ep0259
	reaction_r_0918_ep0259=-1.0;

	reaction_r_0918=compartment_cell*reaction_r_0918_v0*(1+reaction_r_0918_ep0258*log(x(48)/global_par_ic0258)+reaction_r_0918_ep0991*log(x(182)/global_par_ic0991)+reaction_r_0918_ep0180*log(x(36)/global_par_ic0180)+reaction_r_0918_ep0259*log(x(49)/global_par_ic0259));

% Reaction: id = r_0919, name = phytoceramidase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0919_FLUX_VALUE=1.02210851263136E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0919_v0=1.02210851263136E-5;
	% Local Parameter:   id =  ep1084, name = ep1084
	reaction_r_0919_ep1084=1.0;
	% Local Parameter:   id =  ep1366, name = ep1366
	reaction_r_0919_ep1366=1.0;
	% Local Parameter:   id =  ep0481, name = ep0481
	reaction_r_0919_ep0481=-1.0;

	reaction_r_0919=compartment_cell*reaction_r_0919_v0*(1+reaction_r_0919_ep1084*log(x(206)/global_par_ic1084)+reaction_r_0919_ep1366*log(x(244)/global_par_ic1366)+reaction_r_0919_ep0481*log(x(99)/global_par_ic0481));

% Reaction: id = r_0922, name = phytosphingosine synthesis	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0922_FLUX_VALUE=1.02210838883012E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0922_v0=1.02210838883012E-5;
	% Local Parameter:   id =  ep1212, name = ep1212
	reaction_r_0922_ep1212=1.0;
	% Local Parameter:   id =  ep1275, name = ep1275
	reaction_r_0922_ep1275=1.0;
	% Local Parameter:   id =  ep1445, name = ep1445
	reaction_r_0922_ep1445=1.0;
	% Local Parameter:   id =  ep1207, name = ep1207
	reaction_r_0922_ep1207=-1.0;
	% Local Parameter:   id =  ep1366, name = ep1366
	reaction_r_0922_ep1366=-1.0;

	reaction_r_0922=compartment_cell*reaction_r_0922_v0*(1+reaction_r_0922_ep1212*log(x(222)/global_par_ic1212)+reaction_r_0922_ep1275*log(x(230)/global_par_ic1275)+reaction_r_0922_ep1445*log(x(257)/global_par_ic1445)+reaction_r_0922_ep1207*log(x(221)/global_par_ic1207)+reaction_r_0922_ep1366*log(x(244)/global_par_ic1366));

% Reaction: id = r_0938, name = prephenate dehydratase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0938_FLUX_VALUE=0.00508184090624473;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0938_v0=0.00508184090624473;
	% Local Parameter:   id =  ep1377, name = ep1377
	reaction_r_0938_ep1377=1.0;
	% Local Parameter:   id =  ep0456, name = ep0456
	reaction_r_0938_ep0456=-1.0;
	% Local Parameter:   id =  ep0951, name = ep0951
	reaction_r_0938_ep0951=-1.0;

	reaction_r_0938=compartment_cell*reaction_r_0938_v0*(1+reaction_r_0938_ep1377*log(x(246)/global_par_ic1377)+reaction_r_0938_ep0456*log(x(95)/global_par_ic0456)+reaction_r_0938_ep0951*log(x(171)/global_par_ic0951));

% Reaction: id = r_0939, name = prephenate dehydrogenase (NADP)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0939_FLUX_VALUE=0.00387115588078458;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0939_v0=0.00387115588078458;
	% Local Parameter:   id =  ep1207, name = ep1207
	reaction_r_0939_ep1207=1.0;
	% Local Parameter:   id =  ep1377, name = ep1377
	reaction_r_0939_ep1377=1.0;
	% Local Parameter:   id =  ep0204, name = ep0204
	reaction_r_0939_ep0204=-1.0;
	% Local Parameter:   id =  ep0456, name = ep0456
	reaction_r_0939_ep0456=-1.0;
	% Local Parameter:   id =  ep1212, name = ep1212
	reaction_r_0939_ep1212=-1.0;

	reaction_r_0939=compartment_cell*reaction_r_0939_v0*(1+reaction_r_0939_ep1207*log(x(221)/global_par_ic1207)+reaction_r_0939_ep1377*log(x(246)/global_par_ic1377)+reaction_r_0939_ep0204*log(x(40)/global_par_ic0204)+reaction_r_0939_ep0456*log(x(95)/global_par_ic0456)+reaction_r_0939_ep1212*log(x(222)/global_par_ic1212));

% Reaction: id = r_0941, name = prolyl-tRNA synthetase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0941_FLUX_VALUE=0.00625077817220815;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0941_v0=0.00625077817220815;
	% Local Parameter:   id =  ep0434, name = ep0434
	reaction_r_0941_ep0434=1.0;
	% Local Parameter:   id =  ep1035, name = ep1035
	reaction_r_0941_ep1035=1.0;
	% Local Parameter:   id =  ep1606, name = ep1606
	reaction_r_0941_ep1606=1.0;
	% Local Parameter:   id =  ep0423, name = ep0423
	reaction_r_0941_ep0423=-1.0;
	% Local Parameter:   id =  ep0633, name = ep0633
	reaction_r_0941_ep0633=-1.0;
	% Local Parameter:   id =  ep1379, name = ep1379
	reaction_r_0941_ep1379=-1.0;

	reaction_r_0941=compartment_cell*reaction_r_0941_v0*(1+reaction_r_0941_ep0434*log(x(91)/global_par_ic0434)+reaction_r_0941_ep1035*log(x(195)/global_par_ic1035)+reaction_r_0941_ep1606*log(x(296)/global_par_ic1606)+reaction_r_0941_ep0423*log(x(86)/global_par_ic0423)+reaction_r_0941_ep0633*log(x(132)/global_par_ic0633)+reaction_r_0941_ep1379*log(x(247)/global_par_ic1379));

% Reaction: id = r_0957, name = pyrroline-5-carboxylate reductase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0957_FLUX_VALUE=0.00625077817220671;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0957_v0=0.00625077817220671;
	% Local Parameter:   id =  ep0118, name = ep0118
	reaction_r_0957_ep0118=1.0;
	% Local Parameter:   id =  ep1212, name = ep1212
	reaction_r_0957_ep1212=1.0;
	% Local Parameter:   id =  ep1035, name = ep1035
	reaction_r_0957_ep1035=-1.0;
	% Local Parameter:   id =  ep1207, name = ep1207
	reaction_r_0957_ep1207=-1.0;

	reaction_r_0957=compartment_cell*reaction_r_0957_v0*(1+reaction_r_0957_ep0118*log(x(23)/global_par_ic0118)+reaction_r_0957_ep1212*log(x(222)/global_par_ic1212)+reaction_r_0957_ep1035*log(x(195)/global_par_ic1035)+reaction_r_0957_ep1207*log(x(221)/global_par_ic1207));

% Reaction: id = r_0958, name = pyruvate carboxylase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0958_FLUX_VALUE=0.0768531341901953;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0958_v0=0.0768531341901953;
	% Local Parameter:   id =  ep0434, name = ep0434
	reaction_r_0958_ep0434=1.0;
	% Local Parameter:   id =  ep0445, name = ep0445
	reaction_r_0958_ep0445=1.0;
	% Local Parameter:   id =  ep1399, name = ep1399
	reaction_r_0958_ep1399=1.0;
	% Local Parameter:   id =  ep0394, name = ep0394
	reaction_r_0958_ep0394=-1.0;
	% Local Parameter:   id =  ep1271, name = ep1271
	reaction_r_0958_ep1271=-1.0;
	% Local Parameter:   id =  ep1322, name = ep1322
	reaction_r_0958_ep1322=-1.0;

	reaction_r_0958=compartment_cell*reaction_r_0958_v0*(1+reaction_r_0958_ep0434*log(x(91)/global_par_ic0434)+reaction_r_0958_ep0445*log(x(92)/global_par_ic0445)+reaction_r_0958_ep1399*log(x(249)/global_par_ic1399)+reaction_r_0958_ep0394*log(x(81)/global_par_ic0394)+reaction_r_0958_ep1271*log(x(229)/global_par_ic1271)+reaction_r_0958_ep1322*log(x(234)/global_par_ic1322));

% Reaction: id = r_0961, name = pyruvate dehydrogenase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0961_FLUX_VALUE=0.0658655350433608;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0961_v0=0.0658655350433608;
	% Local Parameter:   id =  ep0529, name = ep0529
	reaction_r_0961_ep0529=1.0;
	% Local Parameter:   id =  ep1198, name = ep1198
	reaction_r_0961_ep1198=1.0;
	% Local Parameter:   id =  ep1399, name = ep1399
	reaction_r_0961_ep1399=1.0;
	% Local Parameter:   id =  ep0373, name = ep0373
	reaction_r_0961_ep0373=-1.0;
	% Local Parameter:   id =  ep0456, name = ep0456
	reaction_r_0961_ep0456=-1.0;
	% Local Parameter:   id =  ep1203, name = ep1203
	reaction_r_0961_ep1203=-1.0;

	reaction_r_0961=compartment_cell*reaction_r_0961_v0*(1+reaction_r_0961_ep0529*log(x(106)/global_par_ic0529)+reaction_r_0961_ep1198*log(x(219)/global_par_ic1198)+reaction_r_0961_ep1399*log(x(249)/global_par_ic1399)+reaction_r_0961_ep0373*log(x(76)/global_par_ic0373)+reaction_r_0961_ep0456*log(x(95)/global_par_ic0456)+reaction_r_0961_ep1203*log(x(220)/global_par_ic1203));

% Reaction: id = r_0962, name = pyruvate kinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0962_FLUX_VALUE=0.211286770788091;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0962_v0=0.211286770788091;
	% Local Parameter:   id =  ep0394, name = ep0394
	reaction_r_0962_ep0394=1.0;
	% Local Parameter:   id =  ep1360, name = ep1360
	reaction_r_0962_ep1360=1.0;
	% Local Parameter:   id =  ep0434, name = ep0434
	reaction_r_0962_ep0434=-1.0;
	% Local Parameter:   id =  ep1399, name = ep1399
	reaction_r_0962_ep1399=-1.0;

	reaction_r_0962=compartment_cell*reaction_r_0962_v0*(1+reaction_r_0962_ep0394*log(x(81)/global_par_ic0394)+reaction_r_0962_ep1360*log(x(241)/global_par_ic1360)+reaction_r_0962_ep0434*log(x(91)/global_par_ic0434)+reaction_r_0962_ep1399*log(x(249)/global_par_ic1399));

% Reaction: id = r_0967, name = riboflavin synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0967_FLUX_VALUE=7.51459670975844E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0967_v0=7.51459670975844E-5;
	% Local Parameter:   id =  ep0158, name = ep0158
	reaction_r_0967_ep0158=1.0;
	% Local Parameter:   id =  ep0314, name = ep0314
	reaction_r_0967_ep0314=1.0;
	% Local Parameter:   id =  ep0328, name = ep0328
	reaction_r_0967_ep0328=-1.0;
	% Local Parameter:   id =  ep1322, name = ep1322
	reaction_r_0967_ep1322=-1.0;

	reaction_r_0967=compartment_cell*reaction_r_0967_v0*(1+reaction_r_0967_ep0158*log(x(31)/global_par_ic0158)+reaction_r_0967_ep0314*log(x(66)/global_par_ic0314)+reaction_r_0967_ep0328*log(x(72)/global_par_ic0328)+reaction_r_0967_ep1322*log(x(234)/global_par_ic1322));

% Reaction: id = r_0968, name = riboflavin synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0968_FLUX_VALUE=3.75729835487922E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0968_v0=3.75729835487922E-5;
	% Local Parameter:   id =  ep0328, name = ep0328
	reaction_r_0968_ep0328=2.0;
	% Local Parameter:   id =  ep0314, name = ep0314
	reaction_r_0968_ep0314=-1.0;
	% Local Parameter:   id =  ep1405, name = ep1405
	reaction_r_0968_ep1405=-1.0;

	reaction_r_0968=compartment_cell*reaction_r_0968_v0*(1+reaction_r_0968_ep0328*log(x(72)/global_par_ic0328)+reaction_r_0968_ep0314*log(x(66)/global_par_ic0314)+reaction_r_0968_ep1405*log(x(250)/global_par_ic1405));

% Reaction: id = r_0970, name = ribonucleoside-triphosphate reductase (ATP)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0970_FLUX_VALUE=6.43295039602845E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0970_v0=6.43295039602845E-5;
	% Local Parameter:   id =  ep0434, name = ep0434
	reaction_r_0970_ep0434=1.0;
	% Local Parameter:   id =  ep1616, name = ep1616
	reaction_r_0970_ep1616=1.0;
	% Local Parameter:   id =  ep0586, name = ep0586
	reaction_r_0970_ep0586=-1.0;
	% Local Parameter:   id =  ep1620, name = ep1620
	reaction_r_0970_ep1620=-1.0;

	reaction_r_0970=compartment_cell*reaction_r_0970_v0*(1+reaction_r_0970_ep0434*log(x(91)/global_par_ic0434)+reaction_r_0970_ep1616*log(x(302)/global_par_ic1616)+reaction_r_0970_ep0586*log(x(122)/global_par_ic0586)+reaction_r_0970_ep1620*log(x(303)/global_par_ic1620));

% Reaction: id = r_0973, name = ribonucleoside-triphosphate reductase (UTP)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0973_FLUX_VALUE=1.33265490575614E-4;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0973_v0=1.33265490575614E-4;
	% Local Parameter:   id =  ep1559, name = ep1559
	reaction_r_0973_ep1559=1.0;
	% Local Parameter:   id =  ep1616, name = ep1616
	reaction_r_0973_ep1616=1.0;
	% Local Parameter:   id =  ep0656, name = ep0656
	reaction_r_0973_ep0656=-1.0;
	% Local Parameter:   id =  ep1620, name = ep1620
	reaction_r_0973_ep1620=-1.0;

	reaction_r_0973=compartment_cell*reaction_r_0973_v0*(1+reaction_r_0973_ep1559*log(x(274)/global_par_ic1559)+reaction_r_0973_ep1616*log(x(302)/global_par_ic1616)+reaction_r_0973_ep0656*log(x(137)/global_par_ic0656)+reaction_r_0973_ep1620*log(x(303)/global_par_ic1620));

% Reaction: id = r_0974, name = ribonucleotide reductase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0974_FLUX_VALUE=7.22995270761245E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0974_v0=7.22995270761245E-5;
	% Local Parameter:   id =  ep0394, name = ep0394
	reaction_r_0974_ep0394=1.0;
	% Local Parameter:   id =  ep1616, name = ep1616
	reaction_r_0974_ep1616=1.0;
	% Local Parameter:   id =  ep0582, name = ep0582
	reaction_r_0974_ep0582=-1.0;
	% Local Parameter:   id =  ep1620, name = ep1620
	reaction_r_0974_ep1620=-1.0;

	reaction_r_0974=compartment_cell*reaction_r_0974_v0*(1+reaction_r_0974_ep0394*log(x(81)/global_par_ic0394)+reaction_r_0974_ep1616*log(x(302)/global_par_ic1616)+reaction_r_0974_ep0582*log(x(120)/global_par_ic0582)+reaction_r_0974_ep1620*log(x(303)/global_par_ic1620));

% Reaction: id = r_0976, name = ribonucleotide reductase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0976_FLUX_VALUE=9.44495616410234E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0976_v0=9.44495616410234E-5;
	% Local Parameter:   id =  ep0467, name = ep0467
	reaction_r_0976_ep0467=1.0;
	% Local Parameter:   id =  ep1616, name = ep1616
	reaction_r_0976_ep1616=1.0;
	% Local Parameter:   id =  ep0587, name = ep0587
	reaction_r_0976_ep0587=-1.0;
	% Local Parameter:   id =  ep1620, name = ep1620
	reaction_r_0976_ep1620=-1.0;

	reaction_r_0976=compartment_cell*reaction_r_0976_v0*(1+reaction_r_0976_ep0467*log(x(96)/global_par_ic0467)+reaction_r_0976_ep1616*log(x(302)/global_par_ic1616)+reaction_r_0976_ep0587*log(x(123)/global_par_ic0587)+reaction_r_0976_ep1620*log(x(303)/global_par_ic1620));

% Reaction: id = r_0978, name = ribonucleotide reductase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0978_FLUX_VALUE=9.10860206851083E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0978_v0=9.10860206851083E-5;
	% Local Parameter:   id =  ep0739, name = ep0739
	reaction_r_0978_ep0739=1.0;
	% Local Parameter:   id =  ep1616, name = ep1616
	reaction_r_0978_ep1616=1.0;
	% Local Parameter:   id =  ep0613, name = ep0613
	reaction_r_0978_ep0613=-1.0;
	% Local Parameter:   id =  ep1620, name = ep1620
	reaction_r_0978_ep1620=-1.0;

	reaction_r_0978=compartment_cell*reaction_r_0978_v0*(1+reaction_r_0978_ep0739*log(x(148)/global_par_ic0739)+reaction_r_0978_ep1616*log(x(302)/global_par_ic1616)+reaction_r_0978_ep0613*log(x(127)/global_par_ic0613)+reaction_r_0978_ep1620*log(x(303)/global_par_ic1620));

% Reaction: id = r_0982, name = ribose-5-phosphate isomerase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0982_FLUX_VALUE=0.0110176132567827;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0982_v0=0.0110176132567827;
	% Local Parameter:   id =  ep0577, name = ep0577
	reaction_r_0982_ep0577=1.0;
	% Local Parameter:   id =  ep1408, name = ep1408
	reaction_r_0982_ep1408=-1.0;

	reaction_r_0982=compartment_cell*reaction_r_0982_v0*(1+reaction_r_0982_ep0577*log(x(118)/global_par_ic0577)+reaction_r_0982_ep1408*log(x(251)/global_par_ic1408));

% Reaction: id = r_0984, name = ribulose 5-phosphate 3-epimerase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0984_FLUX_VALUE=0.0110927592238809;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0984_v0=0.0110927592238809;
	% Local Parameter:   id =  ep0581, name = ep0581
	reaction_r_0984_ep0581=1.0;
	% Local Parameter:   id =  ep0577, name = ep0577
	reaction_r_0984_ep0577=-1.0;

	reaction_r_0984=compartment_cell*reaction_r_0984_v0*(1+reaction_r_0984_ep0581*log(x(119)/global_par_ic0581)+reaction_r_0984_ep0577*log(x(118)/global_par_ic0577));

% Reaction: id = r_0986, name = S-adenosyl-methionine delta-24-sterol-c-methyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0986_FLUX_VALUE=2.56065575909038E-4;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0986_v0=2.56065575909038E-4;
	% Local Parameter:   id =  ep1416, name = ep1416
	reaction_r_0986_ep1416=1.0;
	% Local Parameter:   id =  ep1569, name = ep1569
	reaction_r_0986_ep1569=1.0;
	% Local Parameter:   id =  ep0700, name = ep0700
	reaction_r_0986_ep0700=-1.0;
	% Local Parameter:   id =  ep1413, name = ep1413
	reaction_r_0986_ep1413=-1.0;

	reaction_r_0986=compartment_cell*reaction_r_0986_v0*(1+reaction_r_0986_ep1416*log(x(253)/global_par_ic1416)+reaction_r_0986_ep1569*log(x(277)/global_par_ic1569)+reaction_r_0986_ep0700*log(x(143)/global_par_ic0700)+reaction_r_0986_ep1413*log(x(252)/global_par_ic1413));

% Reaction: id = r_0988, name = saccharopine dehydrogenase (NAD, L-lysine forming)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0988_FLUX_VALUE=0.01086200797138;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0988_v0=0.01086200797138;
	% Local Parameter:   id =  ep1038, name = ep1038
	reaction_r_0988_ep1038=1.0;
	% Local Parameter:   id =  ep1198, name = ep1198
	reaction_r_0988_ep1198=1.0;
	% Local Parameter:   id =  ep0180, name = ep0180
	reaction_r_0988_ep0180=-1.0;
	% Local Parameter:   id =  ep1025, name = ep1025
	reaction_r_0988_ep1025=-1.0;
	% Local Parameter:   id =  ep1203, name = ep1203
	reaction_r_0988_ep1203=-1.0;

	reaction_r_0988=compartment_cell*reaction_r_0988_v0*(1+reaction_r_0988_ep1038*log(x(196)/global_par_ic1038)+reaction_r_0988_ep1198*log(x(219)/global_par_ic1198)+reaction_r_0988_ep0180*log(x(36)/global_par_ic0180)+reaction_r_0988_ep1025*log(x(192)/global_par_ic1025)+reaction_r_0988_ep1203*log(x(220)/global_par_ic1203));

% Reaction: id = r_0989, name = saccharopine dehydrogenase (NADP, L-glutamate forming)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0989_FLUX_VALUE=0.01086200797138;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0989_v0=0.01086200797138;
	% Local Parameter:   id =  ep0959, name = ep0959
	reaction_r_0989_ep0959=1.0;
	% Local Parameter:   id =  ep0991, name = ep0991
	reaction_r_0989_ep0991=1.0;
	% Local Parameter:   id =  ep1212, name = ep1212
	reaction_r_0989_ep1212=1.0;
	% Local Parameter:   id =  ep1038, name = ep1038
	reaction_r_0989_ep1038=-1.0;
	% Local Parameter:   id =  ep1207, name = ep1207
	reaction_r_0989_ep1207=-1.0;

	reaction_r_0989=compartment_cell*reaction_r_0989_v0*(1+reaction_r_0989_ep0959*log(x(174)/global_par_ic0959)+reaction_r_0989_ep0991*log(x(182)/global_par_ic0991)+reaction_r_0989_ep1212*log(x(222)/global_par_ic1212)+reaction_r_0989_ep1038*log(x(196)/global_par_ic1038)+reaction_r_0989_ep1207*log(x(221)/global_par_ic1207));

% Reaction: id = r_0993, name = serine palmitotransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0993_FLUX_VALUE=2.04421699920047E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0993_v0=2.04421699920047E-5;
	% Local Parameter:   id =  ep1039, name = ep1039
	reaction_r_0993_ep1039=1.0;
	% Local Parameter:   id =  ep1302, name = ep1302
	reaction_r_0993_ep1302=1.0;
	% Local Parameter:   id =  ep0231, name = ep0231
	reaction_r_0993_ep0231=-1.0;
	% Local Parameter:   id =  ep0456, name = ep0456
	reaction_r_0993_ep0456=-1.0;
	% Local Parameter:   id =  ep0529, name = ep0529
	reaction_r_0993_ep0529=-1.0;

	reaction_r_0993=compartment_cell*reaction_r_0993_v0*(1+reaction_r_0993_ep1039*log(x(197)/global_par_ic1039)+reaction_r_0993_ep1302*log(x(232)/global_par_ic1302)+reaction_r_0993_ep0231*log(x(46)/global_par_ic0231)+reaction_r_0993_ep0456*log(x(95)/global_par_ic0456)+reaction_r_0993_ep0529*log(x(106)/global_par_ic0529));

% Reaction: id = r_0995, name = seryl-tRNA synthetase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0995_FLUX_VALUE=0.00703639510095562;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0995_v0=0.00703639510095562;
	% Local Parameter:   id =  ep0434, name = ep0434
	reaction_r_0995_ep0434=1.0;
	% Local Parameter:   id =  ep1039, name = ep1039
	reaction_r_0995_ep1039=1.0;
	% Local Parameter:   id =  ep1607, name = ep1607
	reaction_r_0995_ep1607=1.0;
	% Local Parameter:   id =  ep0423, name = ep0423
	reaction_r_0995_ep0423=-1.0;
	% Local Parameter:   id =  ep0633, name = ep0633
	reaction_r_0995_ep0633=-1.0;
	% Local Parameter:   id =  ep1428, name = ep1428
	reaction_r_0995_ep1428=-1.0;

	reaction_r_0995=compartment_cell*reaction_r_0995_v0*(1+reaction_r_0995_ep0434*log(x(91)/global_par_ic0434)+reaction_r_0995_ep1039*log(x(197)/global_par_ic1039)+reaction_r_0995_ep1607*log(x(297)/global_par_ic1607)+reaction_r_0995_ep0423*log(x(86)/global_par_ic0423)+reaction_r_0995_ep0633*log(x(132)/global_par_ic0633)+reaction_r_0995_ep1428*log(x(255)/global_par_ic1428));

% Reaction: id = r_0996, name = shikimate dehydrogenase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0996_FLUX_VALUE=0.0100308480322675;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0996_v0=0.0100308480322675;
	% Local Parameter:   id =  ep0211, name = ep0211
	reaction_r_0996_ep0211=1.0;
	% Local Parameter:   id =  ep1212, name = ep1212
	reaction_r_0996_ep1212=1.0;
	% Local Parameter:   id =  ep1207, name = ep1207
	reaction_r_0996_ep1207=-1.0;
	% Local Parameter:   id =  ep1429, name = ep1429
	reaction_r_0996_ep1429=-1.0;

	reaction_r_0996=compartment_cell*reaction_r_0996_v0*(1+reaction_r_0996_ep0211*log(x(44)/global_par_ic0211)+reaction_r_0996_ep1212*log(x(222)/global_par_ic1212)+reaction_r_0996_ep1207*log(x(221)/global_par_ic1207)+reaction_r_0996_ep1429*log(x(256)/global_par_ic1429));

% Reaction: id = r_0997, name = shikimate kinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_0997_FLUX_VALUE=0.0100308480322675;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_0997_v0=0.0100308480322675;
	% Local Parameter:   id =  ep0434, name = ep0434
	reaction_r_0997_ep0434=1.0;
	% Local Parameter:   id =  ep1429, name = ep1429
	reaction_r_0997_ep1429=1.0;
	% Local Parameter:   id =  ep0261, name = ep0261
	reaction_r_0997_ep0261=-1.0;
	% Local Parameter:   id =  ep0394, name = ep0394
	reaction_r_0997_ep0394=-1.0;

	reaction_r_0997=compartment_cell*reaction_r_0997_v0*(1+reaction_r_0997_ep0434*log(x(91)/global_par_ic0434)+reaction_r_0997_ep1429*log(x(256)/global_par_ic1429)+reaction_r_0997_ep0261*log(x(51)/global_par_ic0261)+reaction_r_0997_ep0394*log(x(81)/global_par_ic0394));

% Reaction: id = r_1010, name = squalene epoxidase (NAD)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1010_FLUX_VALUE=1.29987342075721E-4;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1010_v0=1.29987342075721E-4;
	% Local Parameter:   id =  ep1203, name = ep1203
	reaction_r_1010_ep1203=1.0;
	% Local Parameter:   id =  ep1275, name = ep1275
	reaction_r_1010_ep1275=1.0;
	% Local Parameter:   id =  ep1447, name = ep1447
	reaction_r_1010_ep1447=1.0;
	% Local Parameter:   id =  ep0037, name = ep0037
	reaction_r_1010_ep0037=-1.0;
	% Local Parameter:   id =  ep1198, name = ep1198
	reaction_r_1010_ep1198=-1.0;

	reaction_r_1010=compartment_cell*reaction_r_1010_v0*(1+reaction_r_1010_ep1203*log(x(220)/global_par_ic1203)+reaction_r_1010_ep1275*log(x(230)/global_par_ic1275)+reaction_r_1010_ep1447*log(x(258)/global_par_ic1447)+reaction_r_1010_ep0037*log(x(11)/global_par_ic0037)+reaction_r_1010_ep1198*log(x(219)/global_par_ic1198));

% Reaction: id = r_1011, name = squalene epoxidase (NADP)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1011_FLUX_VALUE=1.2998734207478E-4;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1011_v0=1.2998734207478E-4;
	% Local Parameter:   id =  ep1212, name = ep1212
	reaction_r_1011_ep1212=1.0;
	% Local Parameter:   id =  ep1275, name = ep1275
	reaction_r_1011_ep1275=1.0;
	% Local Parameter:   id =  ep1447, name = ep1447
	reaction_r_1011_ep1447=1.0;
	% Local Parameter:   id =  ep0037, name = ep0037
	reaction_r_1011_ep0037=-1.0;
	% Local Parameter:   id =  ep1207, name = ep1207
	reaction_r_1011_ep1207=-1.0;

	reaction_r_1011=compartment_cell*reaction_r_1011_v0*(1+reaction_r_1011_ep1212*log(x(222)/global_par_ic1212)+reaction_r_1011_ep1275*log(x(230)/global_par_ic1275)+reaction_r_1011_ep1447*log(x(258)/global_par_ic1447)+reaction_r_1011_ep0037*log(x(11)/global_par_ic0037)+reaction_r_1011_ep1207*log(x(221)/global_par_ic1207));

% Reaction: id = r_1012, name = squalene synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1012_FLUX_VALUE=2.59974684150501E-4;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1012_v0=2.59974684150501E-4;
	% Local Parameter:   id =  ep0190, name = ep0190
	reaction_r_1012_ep0190=2.0;
	% Local Parameter:   id =  ep1212, name = ep1212
	reaction_r_1012_ep1212=1.0;
	% Local Parameter:   id =  ep0633, name = ep0633
	reaction_r_1012_ep0633=-2.0;
	% Local Parameter:   id =  ep1207, name = ep1207
	reaction_r_1012_ep1207=-1.0;
	% Local Parameter:   id =  ep1447, name = ep1447
	reaction_r_1012_ep1447=-1.0;

	reaction_r_1012=compartment_cell*reaction_r_1012_v0*(1+reaction_r_1012_ep0190*log(x(38)/global_par_ic0190)+reaction_r_1012_ep1212*log(x(222)/global_par_ic1212)+reaction_r_1012_ep0633*log(x(132)/global_par_ic0633)+reaction_r_1012_ep1207*log(x(221)/global_par_ic1207)+reaction_r_1012_ep1447*log(x(258)/global_par_ic1447));

% Reaction: id = r_1014, name = steryl ester hydrolase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1014_FLUX_VALUE=3.08174379214594E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1014_v0=3.08174379214594E-5;
	% Local Parameter:   id =  ep0666, name = ep0666
	reaction_r_1014_ep0666=1.0;
	% Local Parameter:   id =  ep0056, name = ep0056
	reaction_r_1014_ep0056=3.0;
	% Local Parameter:   id =  ep0672, name = ep0672
	reaction_r_1014_ep0672=-1.0;

	reaction_r_1014=compartment_cell*reaction_r_1014_v0*(1+reaction_r_1014_ep0666*log(x(141)/global_par_ic0666)+reaction_r_1014_ep0056*log(x(13)/global_par_ic0056)+reaction_r_1014_ep0672*log(x(142)/global_par_ic0672));

% Reaction: id = r_1026, name = sulfate adenylyltransferase (ADP)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1026_FLUX_VALUE=0.00217467874480193;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1026_v0=0.00217467874480193;
	% Local Parameter:   id =  ep0394, name = ep0394
	reaction_r_1026_ep0394=1.0;
	% Local Parameter:   id =  ep1467, name = ep1467
	reaction_r_1026_ep1467=1.0;
	% Local Parameter:   id =  ep0298, name = ep0298
	reaction_r_1026_ep0298=-1.0;
	% Local Parameter:   id =  ep1322, name = ep1322
	reaction_r_1026_ep1322=-1.0;

	reaction_r_1026=compartment_cell*reaction_r_1026_v0*(1+reaction_r_1026_ep0394*log(x(81)/global_par_ic0394)+reaction_r_1026_ep1467*log(x(261)/global_par_ic1467)+reaction_r_1026_ep0298*log(x(57)/global_par_ic0298)+reaction_r_1026_ep1322*log(x(234)/global_par_ic1322));

% Reaction: id = r_1027, name = sulfite reductase (NADPH2)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1027_FLUX_VALUE=0.00217467874480475;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1027_v0=0.00217467874480475;
	% Local Parameter:   id =  ep1212, name = ep1212
	reaction_r_1027_ep1212=3.0;
	% Local Parameter:   id =  ep1469, name = ep1469
	reaction_r_1027_ep1469=1.0;
	% Local Parameter:   id =  ep0841, name = ep0841
	reaction_r_1027_ep0841=-1.0;
	% Local Parameter:   id =  ep1207, name = ep1207
	reaction_r_1027_ep1207=-3.0;

	reaction_r_1027=compartment_cell*reaction_r_1027_v0*(1+reaction_r_1027_ep1212*log(x(222)/global_par_ic1212)+reaction_r_1027_ep1469*log(x(262)/global_par_ic1469)+reaction_r_1027_ep0841*log(x(165)/global_par_ic0841)+reaction_r_1027_ep1207*log(x(221)/global_par_ic1207));

% Reaction: id = r_1038, name = thioredoxin reductase (NADPH)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1038_FLUX_VALUE=0.0047288825765441;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1038_v0=0.0047288825765441;
	% Local Parameter:   id =  ep1212, name = ep1212
	reaction_r_1038_ep1212=1.0;
	% Local Parameter:   id =  ep1620, name = ep1620
	reaction_r_1038_ep1620=1.0;
	% Local Parameter:   id =  ep1207, name = ep1207
	reaction_r_1038_ep1207=-1.0;
	% Local Parameter:   id =  ep1616, name = ep1616
	reaction_r_1038_ep1616=-1.0;

	reaction_r_1038=compartment_cell*reaction_r_1038_v0*(1+reaction_r_1038_ep1212*log(x(222)/global_par_ic1212)+reaction_r_1038_ep1620*log(x(303)/global_par_ic1620)+reaction_r_1038_ep1207*log(x(221)/global_par_ic1207)+reaction_r_1038_ep1616*log(x(302)/global_par_ic1616));

% Reaction: id = r_1041, name = threonine synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1041_FLUX_VALUE=0.00726411015276989;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1041_v0=0.00726411015276989;
	% Local Parameter:   id =  ep1238, name = ep1238
	reaction_r_1041_ep1238=1.0;
	% Local Parameter:   id =  ep1045, name = ep1045
	reaction_r_1041_ep1045=-1.0;
	% Local Parameter:   id =  ep1322, name = ep1322
	reaction_r_1041_ep1322=-1.0;

	reaction_r_1041=compartment_cell*reaction_r_1041_v0*(1+reaction_r_1041_ep1238*log(x(224)/global_par_ic1238)+reaction_r_1041_ep1045*log(x(198)/global_par_ic1045)+reaction_r_1041_ep1322*log(x(234)/global_par_ic1322));

% Reaction: id = r_1042, name = threonyl-tRNA synthetase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1042_FLUX_VALUE=0.00726411015276649;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1042_v0=0.00726411015276649;
	% Local Parameter:   id =  ep0434, name = ep0434
	reaction_r_1042_ep0434=1.0;
	% Local Parameter:   id =  ep1045, name = ep1045
	reaction_r_1042_ep1045=1.0;
	% Local Parameter:   id =  ep1608, name = ep1608
	reaction_r_1042_ep1608=1.0;
	% Local Parameter:   id =  ep0423, name = ep0423
	reaction_r_1042_ep0423=-1.0;
	% Local Parameter:   id =  ep0633, name = ep0633
	reaction_r_1042_ep0633=-1.0;
	% Local Parameter:   id =  ep1491, name = ep1491
	reaction_r_1042_ep1491=-1.0;

	reaction_r_1042=compartment_cell*reaction_r_1042_v0*(1+reaction_r_1042_ep0434*log(x(91)/global_par_ic0434)+reaction_r_1042_ep1045*log(x(198)/global_par_ic1045)+reaction_r_1042_ep1608*log(x(298)/global_par_ic1608)+reaction_r_1042_ep0423*log(x(86)/global_par_ic0423)+reaction_r_1042_ep0633*log(x(132)/global_par_ic0633)+reaction_r_1042_ep1491*log(x(264)/global_par_ic1491));

% Reaction: id = r_1045, name = thymidylate synthase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1045_FLUX_VALUE=1.36629031085814E-4;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1045_v0=1.36629031085814E-4;
	% Local Parameter:   id =  ep0306, name = ep0306
	reaction_r_1045_ep0306=1.0;
	% Local Parameter:   id =  ep0654, name = ep0654
	reaction_r_1045_ep0654=1.0;
	% Local Parameter:   id =  ep0625, name = ep0625
	reaction_r_1045_ep0625=-1.0;
	% Local Parameter:   id =  ep0649, name = ep0649
	reaction_r_1045_ep0649=-1.0;

	reaction_r_1045=compartment_cell*reaction_r_1045_v0*(1+reaction_r_1045_ep0306*log(x(63)/global_par_ic0306)+reaction_r_1045_ep0654*log(x(136)/global_par_ic0654)+reaction_r_1045_ep0625*log(x(130)/global_par_ic0625)+reaction_r_1045_ep0649*log(x(135)/global_par_ic0649));

% Reaction: id = r_1048, name = transaldolase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1048_FLUX_VALUE=5.30955594768567E-4;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1048_v0=5.30955594768567E-4;
	% Local Parameter:   id =  ep0551, name = ep0551
	reaction_r_1048_ep0551=1.0;
	% Local Parameter:   id =  ep0557, name = ep0557
	reaction_r_1048_ep0557=1.0;
	% Local Parameter:   id =  ep0764, name = ep0764
	reaction_r_1048_ep0764=-1.0;
	% Local Parameter:   id =  ep1427, name = ep1427
	reaction_r_1048_ep1427=-1.0;

	reaction_r_1048=compartment_cell*reaction_r_1048_v0*(1+reaction_r_1048_ep0551*log(x(110)/global_par_ic0551)+reaction_r_1048_ep0557*log(x(112)/global_par_ic0557)+reaction_r_1048_ep0764*log(x(156)/global_par_ic0764)+reaction_r_1048_ep1427*log(x(254)/global_par_ic1427));

% Reaction: id = r_1049, name = transketolase 1	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1049_FLUX_VALUE=5.30955595806181E-4;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1049_v0=5.30955595806181E-4;
	% Local Parameter:   id =  ep0764, name = ep0764
	reaction_r_1049_ep0764=1.0;
	% Local Parameter:   id =  ep1427, name = ep1427
	reaction_r_1049_ep1427=1.0;
	% Local Parameter:   id =  ep0581, name = ep0581
	reaction_r_1049_ep0581=-1.0;
	% Local Parameter:   id =  ep1408, name = ep1408
	reaction_r_1049_ep1408=-1.0;

	reaction_r_1049=compartment_cell*reaction_r_1049_v0*(1+reaction_r_1049_ep0764*log(x(156)/global_par_ic0764)+reaction_r_1049_ep1427*log(x(254)/global_par_ic1427)+reaction_r_1049_ep0581*log(x(119)/global_par_ic0581)+reaction_r_1049_ep1408*log(x(251)/global_par_ic1408));

% Reaction: id = r_1050, name = transketolase 2	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1050_FLUX_VALUE=0.0105618036280732;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1050_v0=0.0105618036280732;
	% Local Parameter:   id =  ep0557, name = ep0557
	reaction_r_1050_ep0557=1.0;
	% Local Parameter:   id =  ep0764, name = ep0764
	reaction_r_1050_ep0764=1.0;
	% Local Parameter:   id =  ep0551, name = ep0551
	reaction_r_1050_ep0551=-1.0;
	% Local Parameter:   id =  ep0581, name = ep0581
	reaction_r_1050_ep0581=-1.0;

	reaction_r_1050=compartment_cell*reaction_r_1050_v0*(1+reaction_r_1050_ep0557*log(x(112)/global_par_ic0557)+reaction_r_1050_ep0764*log(x(156)/global_par_ic0764)+reaction_r_1050_ep0551*log(x(110)/global_par_ic0551)+reaction_r_1050_ep0581*log(x(119)/global_par_ic0581));

% Reaction: id = r_1051, name = trehalose-phosphatase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1051_FLUX_VALUE=8.88088702062361E-4;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1051_v0=8.88088702062361E-4;
	% Local Parameter:   id =  ep0409, name = ep0409
	reaction_r_1051_ep0409=1.0;
	% Local Parameter:   id =  ep1322, name = ep1322
	reaction_r_1051_ep1322=-1.0;
	% Local Parameter:   id =  ep1520, name = ep1520
	reaction_r_1051_ep1520=-1.0;

	reaction_r_1051=compartment_cell*reaction_r_1051_v0*(1+reaction_r_1051_ep0409*log(x(84)/global_par_ic0409)+reaction_r_1051_ep1322*log(x(234)/global_par_ic1322)+reaction_r_1051_ep1520*log(x(265)/global_par_ic1520));

% Reaction: id = r_1052, name = triacylglycerol lipase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1052_FLUX_VALUE=5.10195573579038E-4;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1052_v0=5.10195573579038E-4;
	% Local Parameter:   id =  ep0619, name = ep0619
	reaction_r_1052_ep0619=1.0;
	% Local Parameter:   id =  ep0056, name = ep0056
	reaction_r_1052_ep0056=4.33333333333333;
	% Local Parameter:   id =  ep1524, name = ep1524
	reaction_r_1052_ep1524=-1.0;

	reaction_r_1052=compartment_cell*reaction_r_1052_v0*(1+reaction_r_1052_ep0619*log(x(129)/global_par_ic0619)+reaction_r_1052_ep0056*log(x(13)/global_par_ic0056)+reaction_r_1052_ep1524*log(x(266)/global_par_ic1524));

% Reaction: id = r_1054, name = triose-phosphate isomerase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1054_FLUX_VALUE=0.850333043996831;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1054_v0=0.850333043996831;
	% Local Parameter:   id =  ep0629, name = ep0629
	reaction_r_1054_ep0629=1.0;
	% Local Parameter:   id =  ep0764, name = ep0764
	reaction_r_1054_ep0764=-1.0;

	reaction_r_1054=compartment_cell*reaction_r_1054_v0*(1+reaction_r_1054_ep0629*log(x(131)/global_par_ic0629)+reaction_r_1054_ep0764*log(x(156)/global_par_ic0764));

% Reaction: id = r_1055, name = tryptophan synthase (indoleglycerol phosphate)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1055_FLUX_VALUE=0.00107785124523996;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1055_v0=0.00107785124523996;
	% Local Parameter:   id =  ep0086, name = ep0086
	reaction_r_1055_ep0086=1.0;
	% Local Parameter:   id =  ep1039, name = ep1039
	reaction_r_1055_ep1039=1.0;
	% Local Parameter:   id =  ep0764, name = ep0764
	reaction_r_1055_ep0764=-1.0;
	% Local Parameter:   id =  ep1048, name = ep1048
	reaction_r_1055_ep1048=-1.0;

	reaction_r_1055=compartment_cell*reaction_r_1055_v0*(1+reaction_r_1055_ep0086*log(x(21)/global_par_ic0086)+reaction_r_1055_ep1039*log(x(197)/global_par_ic1039)+reaction_r_1055_ep0764*log(x(156)/global_par_ic0764)+reaction_r_1055_ep1048*log(x(199)/global_par_ic1048));

% Reaction: id = r_1057, name = tryptophanyl-tRNA synthetase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1057_FLUX_VALUE=0.00107785124523807;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1057_v0=0.00107785124523807;
	% Local Parameter:   id =  ep0434, name = ep0434
	reaction_r_1057_ep0434=1.0;
	% Local Parameter:   id =  ep1048, name = ep1048
	reaction_r_1057_ep1048=1.0;
	% Local Parameter:   id =  ep1610, name = ep1610
	reaction_r_1057_ep1610=1.0;
	% Local Parameter:   id =  ep0423, name = ep0423
	reaction_r_1057_ep0423=-1.0;
	% Local Parameter:   id =  ep0633, name = ep0633
	reaction_r_1057_ep0633=-1.0;
	% Local Parameter:   id =  ep1527, name = ep1527
	reaction_r_1057_ep1527=-1.0;

	reaction_r_1057=compartment_cell*reaction_r_1057_v0*(1+reaction_r_1057_ep0434*log(x(91)/global_par_ic0434)+reaction_r_1057_ep1048*log(x(199)/global_par_ic1048)+reaction_r_1057_ep1610*log(x(299)/global_par_ic1610)+reaction_r_1057_ep0423*log(x(86)/global_par_ic0423)+reaction_r_1057_ep0633*log(x(132)/global_par_ic0633)+reaction_r_1057_ep1527*log(x(267)/global_par_ic1527));

% Reaction: id = r_1063, name = tyrosine transaminase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1063_FLUX_VALUE=0.00387115588138798;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1063_v0=0.00387115588138798;
	% Local Parameter:   id =  ep0204, name = ep0204
	reaction_r_1063_ep0204=1.0;
	% Local Parameter:   id =  ep0991, name = ep0991
	reaction_r_1063_ep0991=1.0;
	% Local Parameter:   id =  ep0180, name = ep0180
	reaction_r_1063_ep0180=-1.0;
	% Local Parameter:   id =  ep1051, name = ep1051
	reaction_r_1063_ep1051=-1.0;

	reaction_r_1063=compartment_cell*reaction_r_1063_v0*(1+reaction_r_1063_ep0204*log(x(40)/global_par_ic0204)+reaction_r_1063_ep0991*log(x(182)/global_par_ic0991)+reaction_r_1063_ep0180*log(x(36)/global_par_ic0180)+reaction_r_1063_ep1051*log(x(200)/global_par_ic1051));

% Reaction: id = r_1066, name = tyrosyl-tRNA synthetase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1066_FLUX_VALUE=0.00387115588078469;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1066_v0=0.00387115588078469;
	% Local Parameter:   id =  ep0434, name = ep0434
	reaction_r_1066_ep0434=1.0;
	% Local Parameter:   id =  ep1051, name = ep1051
	reaction_r_1066_ep1051=1.0;
	% Local Parameter:   id =  ep1612, name = ep1612
	reaction_r_1066_ep1612=1.0;
	% Local Parameter:   id =  ep0423, name = ep0423
	reaction_r_1066_ep0423=-1.0;
	% Local Parameter:   id =  ep0633, name = ep0633
	reaction_r_1066_ep0633=-1.0;
	% Local Parameter:   id =  ep1533, name = ep1533
	reaction_r_1066_ep1533=-1.0;

	reaction_r_1066=compartment_cell*reaction_r_1066_v0*(1+reaction_r_1066_ep0434*log(x(91)/global_par_ic0434)+reaction_r_1066_ep1051*log(x(200)/global_par_ic1051)+reaction_r_1066_ep1612*log(x(300)/global_par_ic1612)+reaction_r_1066_ep0423*log(x(86)/global_par_ic0423)+reaction_r_1066_ep0633*log(x(132)/global_par_ic0633)+reaction_r_1066_ep1533*log(x(268)/global_par_ic1533));

% Reaction: id = r_1072, name = UMP kinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1072_FLUX_VALUE=0.00192419218784248;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1072_v0=0.00192419218784248;
	% Local Parameter:   id =  ep0434, name = ep0434
	reaction_r_1072_ep0434=1.0;
	% Local Parameter:   id =  ep1545, name = ep1545
	reaction_r_1072_ep1545=1.0;
	% Local Parameter:   id =  ep0394, name = ep0394
	reaction_r_1072_ep0394=-1.0;
	% Local Parameter:   id =  ep1538, name = ep1538
	reaction_r_1072_ep1538=-1.0;

	reaction_r_1072=compartment_cell*reaction_r_1072_v0*(1+reaction_r_1072_ep0434*log(x(91)/global_par_ic0434)+reaction_r_1072_ep1545*log(x(273)/global_par_ic1545)+reaction_r_1072_ep0394*log(x(81)/global_par_ic0394)+reaction_r_1072_ep1538*log(x(271)/global_par_ic1538));

% Reaction: id = r_1084, name = UTP-glucose-1-phosphate uridylyltransferase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1084_FLUX_VALUE=0.106703478028585;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1084_v0=0.106703478028585;
	% Local Parameter:   id =  ep0567, name = ep0567
	reaction_r_1084_ep0567=1.0;
	% Local Parameter:   id =  ep1559, name = ep1559
	reaction_r_1084_ep1559=1.0;
	% Local Parameter:   id =  ep0633, name = ep0633
	reaction_r_1084_ep0633=-1.0;
	% Local Parameter:   id =  ep1543, name = ep1543
	reaction_r_1084_ep1543=-1.0;

	reaction_r_1084=compartment_cell*reaction_r_1084_v0*(1+reaction_r_1084_ep0567*log(x(114)/global_par_ic0567)+reaction_r_1084_ep1559*log(x(274)/global_par_ic1559)+reaction_r_1084_ep0633*log(x(132)/global_par_ic0633)+reaction_r_1084_ep1543*log(x(272)/global_par_ic1543));

% Reaction: id = r_1087, name = valine transaminase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1087_FLUX_VALUE=0.01004223378483;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1087_v0=0.01004223378483;
	% Local Parameter:   id =  ep0232, name = ep0232
	reaction_r_1087_ep0232=1.0;
	% Local Parameter:   id =  ep0991, name = ep0991
	reaction_r_1087_ep0991=1.0;
	% Local Parameter:   id =  ep0180, name = ep0180
	reaction_r_1087_ep0180=-1.0;
	% Local Parameter:   id =  ep1056, name = ep1056
	reaction_r_1087_ep1056=-1.0;

	reaction_r_1087=compartment_cell*reaction_r_1087_v0*(1+reaction_r_1087_ep0232*log(x(47)/global_par_ic0232)+reaction_r_1087_ep0991*log(x(182)/global_par_ic0991)+reaction_r_1087_ep0180*log(x(36)/global_par_ic0180)+reaction_r_1087_ep1056*log(x(201)/global_par_ic1056));

% Reaction: id = r_1089, name = valyl-tRNA synthetase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1089_FLUX_VALUE=0.010042233784859;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1089_v0=0.010042233784859;
	% Local Parameter:   id =  ep0434, name = ep0434
	reaction_r_1089_ep0434=1.0;
	% Local Parameter:   id =  ep1056, name = ep1056
	reaction_r_1089_ep1056=1.0;
	% Local Parameter:   id =  ep1614, name = ep1614
	reaction_r_1089_ep1614=1.0;
	% Local Parameter:   id =  ep0423, name = ep0423
	reaction_r_1089_ep0423=-1.0;
	% Local Parameter:   id =  ep0633, name = ep0633
	reaction_r_1089_ep0633=-1.0;
	% Local Parameter:   id =  ep1561, name = ep1561
	reaction_r_1089_ep1561=-1.0;

	reaction_r_1089=compartment_cell*reaction_r_1089_v0*(1+reaction_r_1089_ep0434*log(x(91)/global_par_ic0434)+reaction_r_1089_ep1056*log(x(201)/global_par_ic1056)+reaction_r_1089_ep1614*log(x(301)/global_par_ic1614)+reaction_r_1089_ep0423*log(x(86)/global_par_ic0423)+reaction_r_1089_ep0633*log(x(132)/global_par_ic0633)+reaction_r_1089_ep1561*log(x(275)/global_par_ic1561));

% Reaction: id = r_1115, name = ammonia transport	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1115_FLUX_VALUE=0.212107675642733;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1115_v0=0.212107675642733;
	% Local Parameter:   id =  ep0420, name = ep0420
	reaction_r_1115_ep0420=1.0;
	% Local Parameter:   id =  ep0419, name = ep0419
	reaction_r_1115_ep0419=-1.0;

	reaction_r_1115=compartment_cell*reaction_r_1115_v0*(1+reaction_r_1115_ep0420*log(const_species_s_0420/global_par_ic0420)+reaction_r_1115_ep0419*log(x(85)/global_par_ic0419));

% Reaction: id = r_1166, name = glucose transport	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1166_FLUX_VALUE=1.0;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1166_v0=1.0;
	% Local Parameter:   id =  ep0565, name = ep0565
	reaction_r_1166_ep0565=1.0;
	% Local Parameter:   id =  ep0563, name = ep0563
	reaction_r_1166_ep0563=-1.0;

	reaction_r_1166=compartment_cell*reaction_r_1166_v0*(1+reaction_r_1166_ep0565*log(const_species_s_0565/global_par_ic0565)+reaction_r_1166_ep0563*log(x(113)/global_par_ic0563));

% Reaction: id = r_1244, name = phosphate transport	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1244_FLUX_VALUE=0.0300082373429098;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1244_v0=0.0300082373429098;
	% Local Parameter:   id =  ep1324, name = ep1324
	reaction_r_1244_ep1324=1.0;
	% Local Parameter:   id =  ep1322, name = ep1322
	reaction_r_1244_ep1322=-1.0;

	reaction_r_1244=compartment_cell*reaction_r_1244_v0*(1+reaction_r_1244_ep1324*log(const_species_s_1324/global_par_ic1324)+reaction_r_1244_ep1322*log(x(234)/global_par_ic1322));

% Reaction: id = r_1266, name = sulfate uniport	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1266_FLUX_VALUE=0.00293372891749683;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1266_v0=0.00293372891749683;
	% Local Parameter:   id =  ep1468, name = ep1468
	reaction_r_1266_ep1468=1.0;
	% Local Parameter:   id =  ep1467, name = ep1467
	reaction_r_1266_ep1467=-1.0;

	reaction_r_1266=compartment_cell*reaction_r_1266_v0*(1+reaction_r_1266_ep1468*log(const_species_s_1468/global_par_ic1468)+reaction_r_1266_ep1467*log(x(261)/global_par_ic1467));

% Reaction: id = r_1664, name = bicarbonate formation	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1664_FLUX_VALUE=0.087517608841966;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1664_v0=0.087517608841966;
	% Local Parameter:   id =  ep0456, name = ep0456
	reaction_r_1664_ep0456=1.0;
	% Local Parameter:   id =  ep0445, name = ep0445
	reaction_r_1664_ep0445=-1.0;

	reaction_r_1664=compartment_cell*reaction_r_1664_v0*(1+reaction_r_1664_ep0456*log(x(95)/global_par_ic0456)+reaction_r_1664_ep0445*log(x(92)/global_par_ic0445));

% Reaction: id = r_1697, name = CO2 transport	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1697_FLUX_VALUE=1.51989569594335;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1697_v0=1.51989569594335;
	% Local Parameter:   id =  ep0456, name = ep0456
	reaction_r_1697_ep0456=1.0;

	reaction_r_1697=compartment_cell*max(reaction_r_1697_v0*(1+reaction_r_1697_ep0456*log(x(95)/global_par_ic0456)), global_par_zero_flux);

% Reaction: id = r_1704, name = cytidylate kinase (dCMP)	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1704_FLUX_VALUE=9.44495616916319E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1704_v0=9.44495616916319E-5;
	% Local Parameter:   id =  ep0394, name = ep0394
	reaction_r_1704_ep0394=1.0;
	% Local Parameter:   id =  ep0587, name = ep0587
	reaction_r_1704_ep0587=1.0;
	% Local Parameter:   id =  ep0434, name = ep0434
	reaction_r_1704_ep0434=-1.0;
	% Local Parameter:   id =  ep0589, name = ep0589
	reaction_r_1704_ep0589=-1.0;

	reaction_r_1704=compartment_cell*reaction_r_1704_v0*(1+reaction_r_1704_ep0394*log(x(81)/global_par_ic0394)+reaction_r_1704_ep0587*log(x(123)/global_par_ic0587)+reaction_r_1704_ep0434*log(x(91)/global_par_ic0434)+reaction_r_1704_ep0589*log(x(124)/global_par_ic0589));

% Reaction: id = r_1729, name = deoxyadenylate kinase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1729_FLUX_VALUE=1.36629031036409E-4;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1729_v0=1.36629031036409E-4;
	% Local Parameter:   id =  ep0394, name = ep0394
	reaction_r_1729_ep0394=1.0;
	% Local Parameter:   id =  ep0582, name = ep0582
	reaction_r_1729_ep0582=1.0;
	% Local Parameter:   id =  ep0434, name = ep0434
	reaction_r_1729_ep0434=-1.0;
	% Local Parameter:   id =  ep0584, name = ep0584
	reaction_r_1729_ep0584=-1.0;

	reaction_r_1729=compartment_cell*reaction_r_1729_v0*(1+reaction_r_1729_ep0394*log(x(81)/global_par_ic0394)+reaction_r_1729_ep0582*log(x(120)/global_par_ic0582)+reaction_r_1729_ep0434*log(x(91)/global_par_ic0434)+reaction_r_1729_ep0584*log(x(121)/global_par_ic0584));

% Reaction: id = r_1795, name = formate transport	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1795_FLUX_VALUE=2.87599469319674;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1795_v0=2.87599469319674;
	% Local Parameter:   id =  ep0722, name = ep0722
	reaction_r_1795_ep0722=1.0;

	reaction_r_1795=compartment_cell*max(reaction_r_1795_v0*(1+reaction_r_1795_ep0722*log(x(146)/global_par_ic0722)), global_par_zero_flux);

% Reaction: id = r_1979, name = O2 transport	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_1979_FLUX_VALUE=2.94122930652654;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_1979_v0=2.94122930652654;
	% Local Parameter:   id =  ep1277, name = ep1277
	reaction_r_1979_ep1277=1.0;
	% Local Parameter:   id =  ep1275, name = ep1275
	reaction_r_1979_ep1275=-1.0;

	reaction_r_1979=compartment_cell*reaction_r_1979_v0*(1+reaction_r_1979_ep1277*log(const_species_s_1277/global_par_ic1277)+reaction_r_1979_ep1275*log(x(230)/global_par_ic1275));

% Reaction: id = r_2030, name = pyrimidine phosphatase	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_2030_FLUX_VALUE=3.75729835487922E-5;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_2030_v0=3.75729835487922E-5;
	% Local Parameter:   id =  ep0313, name = ep0313
	reaction_r_2030_ep0313=1.0;
	% Local Parameter:   id =  ep0314, name = ep0314
	reaction_r_2030_ep0314=-1.0;
	% Local Parameter:   id =  ep1322, name = ep1322
	reaction_r_2030_ep1322=-1.0;

	reaction_r_2030=compartment_cell*reaction_r_2030_v0*(1+reaction_r_2030_ep0313*log(x(65)/global_par_ic0313)+reaction_r_2030_ep0314*log(x(66)/global_par_ic0314)+reaction_r_2030_ep1322*log(x(234)/global_par_ic1322));

% Reaction: id = r_2111, name = growth	% Local Parameter:   id =  FLUX_VALUE, name = FLUX_VALUE
	reaction_r_2111_FLUX_VALUE=0.0379525086351436;
	% Local Parameter:   id =  v0, name = v0
	reaction_r_2111_v0=0.0379525086351436;
	% Local Parameter:   id =  ep0002, name = ep0002
	reaction_r_2111_ep0002=1.1348;
	% Local Parameter:   id =  ep0423, name = ep0423
	reaction_r_2111_ep0423=0.046;
	% Local Parameter:   id =  ep0434, name = ep0434
	reaction_r_2111_ep0434=59.276;
	% Local Parameter:   id =  ep0526, name = ep0526
	reaction_r_2111_ep0526=0.0447;
	% Local Parameter:   id =  ep0584, name = ep0584
	reaction_r_2111_ep0584=0.0036;
	% Local Parameter:   id =  ep0589, name = ep0589
	reaction_r_2111_ep0589=0.0024;
	% Local Parameter:   id =  ep0615, name = ep0615
	reaction_r_2111_ep0615=0.0024;
	% Local Parameter:   id =  ep0649, name = ep0649
	reaction_r_2111_ep0649=0.0036;
	% Local Parameter:   id =  ep0773, name = ep0773
	reaction_r_2111_ep0773=0.5185;
	% Local Parameter:   id =  ep0782, name = ep0782
	reaction_r_2111_ep0782=0.046;
	% Local Parameter:   id =  ep1107, name = ep1107
	reaction_r_2111_ep1107=0.8079;
	% Local Parameter:   id =  ep1405, name = ep1405
	reaction_r_2111_ep1405=9.9E-4;
	% Local Parameter:   id =  ep1467, name = ep1467
	reaction_r_2111_ep1467=0.02;
	% Local Parameter:   id =  ep1520, name = ep1520
	reaction_r_2111_ep1520=0.0234;
	% Local Parameter:   id =  ep1545, name = ep1545
	reaction_r_2111_ep1545=0.0599;
	% Local Parameter:   id =  ep0004, name = ep0004
	reaction_r_2111_ep0004=1.1348;
	% Local Parameter:   id =  ep0404, name = ep0404
	reaction_r_2111_ep0404=0.4588;
	% Local Parameter:   id =  ep0428, name = ep0428
	reaction_r_2111_ep0428=0.1607;
	% Local Parameter:   id =  ep0430, name = ep0430
	reaction_r_2111_ep0430=0.1017;
	% Local Parameter:   id =  ep0432, name = ep0432
	reaction_r_2111_ep0432=0.2975;
	% Local Parameter:   id =  ep0542, name = ep0542
	reaction_r_2111_ep0542=0.0066;
	% Local Parameter:   id =  ep0747, name = ep0747
	reaction_r_2111_ep0747=0.1054;
	% Local Parameter:   id =  ep0748, name = ep0748
	reaction_r_2111_ep0748=0.3018;
	% Local Parameter:   id =  ep0757, name = ep0757
	reaction_r_2111_ep0757=0.2904;
	% Local Parameter:   id =  ep0832, name = ep0832
	reaction_r_2111_ep0832=0.0663;
	% Local Parameter:   id =  ep0847, name = ep0847
	reaction_r_2111_ep0847=0.1927;
	% Local Parameter:   id =  ep1077, name = ep1077
	reaction_r_2111_ep1077=0.2964;
	% Local Parameter:   id =  ep1099, name = ep1099
	reaction_r_2111_ep1099=0.2862;
	% Local Parameter:   id =  ep1148, name = ep1148
	reaction_r_2111_ep1148=0.0507;
	% Local Parameter:   id =  ep1314, name = ep1314
	reaction_r_2111_ep1314=0.1339;
	% Local Parameter:   id =  ep1379, name = ep1379
	reaction_r_2111_ep1379=0.1647;
	% Local Parameter:   id =  ep1337, name = ep1337
	reaction_r_2111_ep1337=3.9E-4;
	% Local Parameter:   id =  ep0089, name = ep0089
	reaction_r_2111_ep0089=0.001583;
	% Local Parameter:   id =  ep1428, name = ep1428
	reaction_r_2111_ep1428=0.1854;
	% Local Parameter:   id =  ep1491, name = ep1491
	reaction_r_2111_ep1491=0.1914;
	% Local Parameter:   id =  ep1527, name = ep1527
	reaction_r_2111_ep1527=0.0284;
	% Local Parameter:   id =  ep1533, name = ep1533
	reaction_r_2111_ep1533=0.102;
	% Local Parameter:   id =  ep1561, name = ep1561
	reaction_r_2111_ep1561=0.2646;
	% Local Parameter:   id =  ep0122, name = ep0122
	reaction_r_2111_ep0122=5.6E-5;
	% Local Parameter:   id =  ep0918, name = ep0918
	reaction_r_2111_ep0918=5.38625E-4;
	% Local Parameter:   id =  ep0657, name = ep0657
	reaction_r_2111_ep0657=9.6E-5;
	% Local Parameter:   id =  ep0662, name = ep0662
	reaction_r_2111_ep0662=1.25E-4;
	% Local Parameter:   id =  ep0666, name = ep0666
	reaction_r_2111_ep0666=0.0056;
	% Local Parameter:   id =  ep0672, name = ep0672
	reaction_r_2111_ep0672=8.12E-4;
	% Local Parameter:   id =  ep0056, name = ep0056
	reaction_r_2111_ep0056=8.92666666666666E-4;
	% Local Parameter:   id =  ep0700, name = ep0700
	reaction_r_2111_ep0700=1.14E-4;
	% Local Parameter:   id =  ep1059, name = ep1059
	reaction_r_2111_ep1059=3.2E-5;
	% Local Parameter:   id =  ep1346, name = ep1346
	reaction_r_2111_ep1346=0.00288;
	% Local Parameter:   id =  ep1351, name = ep1351
	reaction_r_2111_ep1351=6.97E-4;
	% Local Parameter:   id =  ep1524, name = ep1524
	reaction_r_2111_ep1524=7.81E-4;
	% Local Parameter:   id =  ep1569, name = ep1569
	reaction_r_2111_ep1569=1.5E-5;

	reaction_r_2111=compartment_cell*max(reaction_r_2111_v0*(1+reaction_r_2111_ep0002*log(x(1)/global_par_ic0002)+reaction_r_2111_ep0423*log(x(86)/global_par_ic0423)+reaction_r_2111_ep0434*log(x(91)/global_par_ic0434)+reaction_r_2111_ep0526*log(x(105)/global_par_ic0526)+reaction_r_2111_ep0584*log(x(121)/global_par_ic0584)+reaction_r_2111_ep0589*log(x(124)/global_par_ic0589)+reaction_r_2111_ep0615*log(x(128)/global_par_ic0615)+reaction_r_2111_ep0649*log(x(135)/global_par_ic0649)+reaction_r_2111_ep0773*log(x(158)/global_par_ic0773)+reaction_r_2111_ep0782*log(x(159)/global_par_ic0782)+reaction_r_2111_ep1107*log(x(209)/global_par_ic1107)+reaction_r_2111_ep1405*log(x(250)/global_par_ic1405)+reaction_r_2111_ep1467*log(x(261)/global_par_ic1467)+reaction_r_2111_ep1520*log(x(265)/global_par_ic1520)+reaction_r_2111_ep1545*log(x(273)/global_par_ic1545)+reaction_r_2111_ep0004*log(x(2)/global_par_ic0004)+reaction_r_2111_ep0404*log(x(83)/global_par_ic0404)+reaction_r_2111_ep0428*log(x(88)/global_par_ic0428)+reaction_r_2111_ep0430*log(x(89)/global_par_ic0430)+reaction_r_2111_ep0432*log(x(90)/global_par_ic0432)+reaction_r_2111_ep0542*log(x(108)/global_par_ic0542)+reaction_r_2111_ep0747*log(x(151)/global_par_ic0747)+reaction_r_2111_ep0748*log(x(152)/global_par_ic0748)+reaction_r_2111_ep0757*log(x(155)/global_par_ic0757)+reaction_r_2111_ep0832*log(x(161)/global_par_ic0832)+reaction_r_2111_ep0847*log(x(166)/global_par_ic0847)+reaction_r_2111_ep1077*log(x(205)/global_par_ic1077)+reaction_r_2111_ep1099*log(x(207)/global_par_ic1099)+reaction_r_2111_ep1148*log(x(210)/global_par_ic1148)+reaction_r_2111_ep1314*log(x(233)/global_par_ic1314)+reaction_r_2111_ep1379*log(x(247)/global_par_ic1379)+reaction_r_2111_ep1337*log(x(236)/global_par_ic1337)+reaction_r_2111_ep0089*log(x(22)/global_par_ic0089)+reaction_r_2111_ep1428*log(x(255)/global_par_ic1428)+reaction_r_2111_ep1491*log(x(264)/global_par_ic1491)+reaction_r_2111_ep1527*log(x(267)/global_par_ic1527)+reaction_r_2111_ep1533*log(x(268)/global_par_ic1533)+reaction_r_2111_ep1561*log(x(275)/global_par_ic1561)+reaction_r_2111_ep0122*log(x(25)/global_par_ic0122)+reaction_r_2111_ep0918*log(x(168)/global_par_ic0918)+reaction_r_2111_ep0657*log(x(138)/global_par_ic0657)+reaction_r_2111_ep0662*log(x(139)/global_par_ic0662)+reaction_r_2111_ep0666*log(x(141)/global_par_ic0666)+reaction_r_2111_ep0672*log(x(142)/global_par_ic0672)+reaction_r_2111_ep0056*log(x(13)/global_par_ic0056)+reaction_r_2111_ep0700*log(x(143)/global_par_ic0700)+reaction_r_2111_ep1059*log(x(202)/global_par_ic1059)+reaction_r_2111_ep1346*log(x(239)/global_par_ic1346)+reaction_r_2111_ep1351*log(x(240)/global_par_ic1351)+reaction_r_2111_ep1524*log(x(266)/global_par_ic1524)+reaction_r_2111_ep1569*log(x(277)/global_par_ic1569)), global_par_zero_flux);

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


