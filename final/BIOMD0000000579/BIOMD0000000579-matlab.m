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
% Model name = Sengupta2015 - Knowledge base model of human energy pool network (HEPNet)
%
% is http://identifiers.org/biomodels.db/MODEL1507210000
% is http://identifiers.org/biomodels.db/BIOMD0000000579
% isDescribedBy http://identifiers.org/pubmed/26053019
%


function main()
%Initial conditions vector
	x0=zeros(240,1);
	x0(1) = 13.0;
	x0(2) = 43.0;
	x0(3) = 0.43;
	x0(4) = 0.0;
	x0(5) = 6500.0;
	x0(6) = 0.0;
	x0(7) = 155.0;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 41.0;
	x0(11) = 0.0;
	x0(12) = 43.2;
	x0(13) = 0.056;
	x0(14) = 0.0;
	x0(15) = 0.0;
	x0(16) = 0.0;
	x0(17) = 0.0;
	x0(18) = 0.0032;
	x0(19) = 1.8;
	x0(20) = 0.0;
	x0(21) = 0.0;
	x0(22) = 0.0;
	x0(23) = 0.89;
	x0(24) = 0.0;
	x0(25) = 20.0;
	x0(26) = 13.2;
	x0(27) = 7.4;
	x0(28) = 0.0;
	x0(29) = 64.0;
	x0(30) = 379.1;
	x0(31) = 379.1;
	x0(32) = 0.0;
	x0(33) = 0.0;
	x0(34) = 0.0;
	x0(35) = 0.0;
	x0(36) = 0.0;
	x0(37) = 0.0;
	x0(38) = 1.8;
	x0(39) = 1.8;
	x0(40) = 0.0;
	x0(41) = 0.0;
	x0(42) = 0.0;
	x0(43) = 0.0;
	x0(44) = 17.4;
	x0(45) = 89.0;
	x0(46) = 61.0;
	x0(47) = 61.0;
	x0(48) = 51.0;
	x0(49) = 51.0;
	x0(50) = 0.0;
	x0(51) = 22.0;
	x0(52) = 22.0;
	x0(53) = 22.0;
	x0(54) = 24.0;
	x0(55) = 24.0;
	x0(56) = 850.0;
	x0(57) = 850.0;
	x0(58) = 0.0;
	x0(59) = 3.2;
	x0(60) = 0.0;
	x0(61) = 1.45;
	x0(62) = 0.0;
	x0(63) = 740.0;
	x0(64) = 0.077;
	x0(65) = 0.0;
	x0(66) = 6.0;
	x0(67) = 0.0;
	x0(68) = 0.25;
	x0(69) = 0.0;
	x0(70) = 24900.0;
	x0(71) = 5.5E7;
	x0(72) = 5.5E7;
	x0(73) = 5.5E7;
	x0(74) = 0.0;
	x0(75) = 0.0;
	x0(76) = 0.0;
	x0(77) = 0.0;
	x0(78) = 0.0;
	x0(79) = 0.0;
	x0(80) = 0.0;
	x0(81) = 0.0;
	x0(82) = 43.3;
	x0(83) = 30.0;
	x0(84) = 1476.0;
	x0(85) = 586.0;
	x0(86) = 586.0;
	x0(87) = 0.0;
	x0(88) = 7.9;
	x0(89) = 7.9;
	x0(90) = 4440.0;
	x0(91) = 31.0;
	x0(92) = 88.3;
	x0(93) = 0.0;
	x0(94) = 56.0;
	x0(95) = 15.0;
	x0(96) = 15.0;
	x0(97) = 4.8;
	x0(98) = 0.0;
	x0(99) = 29.1;
	x0(100) = 0.0;
	x0(101) = 5.0;
	x0(102) = 0.0;
	x0(103) = 1.5;
	x0(104) = 0.0;
	x0(105) = 31.0;
	x0(106) = 0.0;
	x0(107) = 0.0;
	x0(108) = 0.0;
	x0(109) = 0.0075;
	x0(110) = 0.0;
	x0(111) = 0.075;
	x0(112) = 0.0;
	x0(113) = 10.2;
	x0(114) = 0.17;
	x0(115) = 1.2;
	x0(116) = 0.0;
	x0(117) = 1770.0;
	x0(118) = 0.0;
	x0(119) = 0.0;
	x0(120) = 0.0;
	x0(121) = 15.6;
	x0(122) = 1.58;
	x0(123) = 36.0;
	x0(124) = 0.0;
	x0(125) = 0.0;
	x0(126) = 0.0;
	x0(127) = 0.0;
	x0(128) = 0.0;
	x0(129) = 20.0;
	x0(130) = 20.0;
	x0(131) = 20.0;
	x0(132) = 0.0;
	x0(133) = 38.0;
	x0(134) = 0.0;
	x0(135) = 190.0;
	x0(136) = 43.0;
	x0(137) = 0.0;
	x0(138) = 0.0;
	x0(139) = 21600.0;
	x0(140) = 21600.0;
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
	x0(201) = 0.0032;
	x0(202) = 99.0;
	x0(203) = 0.0;
	x0(204) = 0.0;
	x0(205) = 0.0;
	x0(206) = 0.0;
	x0(207) = 0.0;
	x0(208) = 8.9;
	x0(209) = 0.0;
	x0(210) = 333.0;
	x0(211) = 0.0;
	x0(212) = 0.0;
	x0(213) = 0.0;
	x0(214) = 30.0;
	x0(215) = 0.0;
	x0(216) = 0.0;
	x0(217) = 21.0;
	x0(218) = 1390.0;
	x0(219) = 1390.0;
	x0(220) = 51.0;
	x0(221) = 160.0;
	x0(222) = 160.0;
	x0(223) = 0.0;
	x0(224) = 0.0;
	x0(225) = 2720.0;
	x0(226) = 0.00762;
	x0(227) = 47.2;
	x0(228) = 0.0;
	x0(229) = 44.0;
	x0(230) = 48.0;
	x0(231) = 0.0;
	x0(232) = 0.0;
	x0(233) = 2780.0;
	x0(234) = 320.0;
	x0(235) = 14.0;
	x0(236) = 3480.0;
	x0(237) = 0.4;
	x0(238) = 33.0;
	x0(239) = 36.7;
	x0(240) = 0.0;


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
% Compartment: id = c1, name = mitochondria, constant
	compartment_c1=1.0;
% Compartment: id = c2, name = mit_inner_membrane, constant
	compartment_c2=1.0;
% Compartment: id = c3, name = IMS, constant
	compartment_c3=1.0;
% Compartment: id = c4, name = mit_outer_membrane, constant
	compartment_c4=1.0;

% Reaction: id = re99	% Local Parameter:   id =  k1, name = k1
	reaction_re99_k1=1.0;

	reaction_re99=x(29)*reaction_re99_k1;

% Reaction: id = re7	% Local Parameter:   id =  k1, name = k1
	reaction_re7_k1=1.0;

	reaction_re7=x(85)*reaction_re7_k1;

% Reaction: id = re8	% Local Parameter:   id =  k1, name = k1
	reaction_re8_k1=1.0;

	reaction_re8=x(88)*reaction_re8_k1;

% Reaction: id = re14	% Local Parameter:   id =  k1, name = k1
	reaction_re14_k1=1.0;

	reaction_re14=x(202)*reaction_re14_k1;

% Reaction: id = re37	% Local Parameter:   id =  k1, name = k1
	reaction_re37_k1=1.0;

	reaction_re37=x(115)*reaction_re37_k1;

% Reaction: id = re11	% Local Parameter:   id =  k1, name = k1
	reaction_re11_k1=1.0;

	reaction_re11=x(133)*x(219)*reaction_re11_k1;

% Reaction: id = re12	% Local Parameter:   id =  k1, name = k1
	reaction_re12_k1=1.0;

	reaction_re12=x(132)*x(200)*x(219)*reaction_re12_k1;

% Reaction: id = re81	% Local Parameter:   id =  k1, name = k1
	reaction_re81_k1=1.0;

	reaction_re81=x(84)*reaction_re81_k1;

% Reaction: id = re85	% Local Parameter:   id =  k1, name = k1
	reaction_re85_k1=1.0;

	reaction_re85=x(63)*x(51)*reaction_re85_k1;

% Reaction: id = re27	% Local Parameter:   id =  k1, name = k1
	reaction_re27_k1=1.0;

	reaction_re27=x(113)*x(218)*reaction_re27_k1;

% Reaction: id = re36	% Local Parameter:   id =  k1, name = k1
	reaction_re36_k1=1.0;

	reaction_re36=x(227)*x(218)*reaction_re36_k1;

% Reaction: id = re40	% Local Parameter:   id =  k1, name = k1
	reaction_re40_k1=1.0;

	reaction_re40=x(97)*x(30)*x(54)*reaction_re40_k1;

% Reaction: id = re38	% Local Parameter:   id =  k1, name = k1
	reaction_re38_k1=1.0;

	reaction_re38=x(115)*reaction_re38_k1;

% Reaction: id = re49	% Local Parameter:   id =  k1, name = k1
	reaction_re49_k1=1.0;

	reaction_re49=x(7)*reaction_re49_k1;

% Reaction: id = re68	% Local Parameter:   id =  k1, name = k1
	reaction_re68_k1=1.0;

	reaction_re68=x(128)*reaction_re68_k1;

% Reaction: id = re70	% Local Parameter:   id =  k1, name = k1
	reaction_re70_k1=1.0;

	reaction_re70=x(236)*reaction_re70_k1;

% Reaction: id = re71	% Local Parameter:   id =  k1, name = k1
	reaction_re71_k1=1.0;

	reaction_re71=x(72)*reaction_re71_k1;

% Reaction: id = re76	% Local Parameter:   id =  k1, name = k1
	reaction_re76_k1=1.0;

	reaction_re76=x(231)*reaction_re76_k1;

% Reaction: id = re63	% Local Parameter:   id =  k1, name = k1
	reaction_re63_k1=1.0;

	reaction_re63=x(107)*reaction_re63_k1;

% Reaction: id = re75	% Local Parameter:   id =  k1, name = k1
	reaction_re75_k1=1.0;

	reaction_re75=x(231)*reaction_re75_k1;

% Reaction: id = re67	% Local Parameter:   id =  k1, name = k1
	reaction_re67_k1=1.0;

	reaction_re67=x(127)*reaction_re67_k1;

% Reaction: id = re65	% Local Parameter:   id =  k1, name = k1
	reaction_re65_k1=1.0;

	reaction_re65=x(27)*reaction_re65_k1;

% Reaction: id = re61	% Local Parameter:   id =  k1, name = k1
	reaction_re61_k1=1.0;

	reaction_re61=x(27)*reaction_re61_k1;

% Reaction: id = re69	% Local Parameter:   id =  k1, name = k1
	reaction_re69_k1=1.0;

	reaction_re69=x(231)*reaction_re69_k1;

% Reaction: id = re59	% Local Parameter:   id =  k1, name = k1
	reaction_re59_k1=1.0;

	reaction_re59=x(108)*x(110)*reaction_re59_k1;

% Reaction: id = re77	% Local Parameter:   id =  k1, name = k1
	reaction_re77_k1=1.0;

	reaction_re77=x(53)*reaction_re77_k1;

% Reaction: id = re82	% Local Parameter:   id =  k1, name = k1
	reaction_re82_k1=1.0;

	reaction_re82=x(83)*x(112)*reaction_re82_k1;

% Reaction: id = re86	% Local Parameter:   id =  k1, name = k1
	reaction_re86_k1=1.0;

	reaction_re86=x(29)*reaction_re86_k1;

% Reaction: id = re90	% Local Parameter:   id =  k1, name = k1
	reaction_re90_k1=1.0;

	reaction_re90=x(61)*reaction_re90_k1;

% Reaction: id = re93	% Local Parameter:   id =  k1, name = k1
	reaction_re93_k1=1.0;

	reaction_re93=x(68)*reaction_re93_k1;

% Reaction: id = re1	% Local Parameter:   id =  k1, name = k1
	reaction_re1_k1=1.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_re1_k2=1.0;

	reaction_re1=x(86)*reaction_re1_k2;

% Reaction: id = re10	% Local Parameter:   id =  k1, name = k1
	reaction_re10_k1=1.0;

	reaction_re10=x(133)*reaction_re10_k1;

% Reaction: id = re9	% Local Parameter:   id =  k1, name = k1
	reaction_re9_k1=1.0;

	reaction_re9=x(45)*x(138)*reaction_re9_k1;

% Reaction: id = re24	% Local Parameter:   id =  k1, name = k1
	reaction_re24_k1=1.0;

	reaction_re24=x(201)*reaction_re24_k1;

% Reaction: id = re13	% Local Parameter:   id =  k1, name = k1
	reaction_re13_k1=1.0;

	reaction_re13=x(202)*x(72)*reaction_re13_k1;

% Reaction: id = re150	% Local Parameter:   id =  k1, name = k1
	reaction_re150_k1=1.0;

	reaction_re150=x(158)*reaction_re150_k1;

% Reaction: id = re151	% Local Parameter:   id =  k1, name = k1
	reaction_re151_k1=1.0;

	reaction_re151=x(165)*reaction_re151_k1;

% Reaction: id = re152	% Local Parameter:   id =  k1, name = k1
	reaction_re152_k1=1.0;

	reaction_re152=x(148)*reaction_re152_k1;

% Reaction: id = re153	% Local Parameter:   id =  k1, name = k1
	reaction_re153_k1=1.0;

	reaction_re153=x(172)*reaction_re153_k1;

% Reaction: id = re154	% Local Parameter:   id =  k1, name = k1
	reaction_re154_k1=1.0;

	reaction_re154=x(144)*reaction_re154_k1;

% Reaction: id = re155	% Local Parameter:   id =  k1, name = k1
	reaction_re155_k1=1.0;

	reaction_re155=x(195)*reaction_re155_k1;

% Reaction: id = re156	% Local Parameter:   id =  k1, name = k1
	reaction_re156_k1=1.0;

	reaction_re156=x(179)*reaction_re156_k1;

% Reaction: id = re157	% Local Parameter:   id =  k1, name = k1
	reaction_re157_k1=1.0;

	reaction_re157=x(186)*reaction_re157_k1;

% Reaction: id = re158	% Local Parameter:   id =  k1, name = k1
	reaction_re158_k1=1.0;

	reaction_re158=x(191)*reaction_re158_k1;

% Reaction: id = re100	% Local Parameter:   id =  k1, name = k1
	reaction_re100_k1=1.0;

	reaction_re100=x(110)*reaction_re100_k1;

% Reaction: id = re78	% Local Parameter:   id =  k1, name = k1
	reaction_re78_k1=1.0;

	reaction_re78=x(109)*reaction_re78_k1;

% Reaction: id = re104	% Local Parameter:   id =  k1, name = k1
	reaction_re104_k1=1.0;

	reaction_re104=x(55)*reaction_re104_k1;

% Reaction: id = re105	% Local Parameter:   id =  k1, name = k1
	reaction_re105_k1=1.0;

	reaction_re105=x(55)*reaction_re105_k1;

% Reaction: id = re106	% Local Parameter:   id =  k1, name = k1
	reaction_re106_k1=1.0;

	reaction_re106=x(55)*reaction_re106_k1;

% Reaction: id = re108	% Local Parameter:   id =  k1, name = k1
	reaction_re108_k1=1.0;

	reaction_re108=x(55)*reaction_re108_k1;

% Reaction: id = re107	% Local Parameter:   id =  k1, name = k1
	reaction_re107_k1=1.0;

	reaction_re107=x(111)*reaction_re107_k1;

% Reaction: id = re62	% Local Parameter:   id =  k1, name = k1
	reaction_re62_k1=1.0;

	reaction_re62=x(125)*reaction_re62_k1;

% Reaction: id = re58	% Local Parameter:   id =  k1, name = k1
	reaction_re58_k1=1.0;

	reaction_re58=x(109)*reaction_re58_k1;

% Reaction: id = re66	% Local Parameter:   id =  k1, name = k1
	reaction_re66_k1=1.0;

	reaction_re66=x(108)*reaction_re66_k1;

% Reaction: id = re5	% Local Parameter:   id =  k1, name = k1
	reaction_re5_k1=1.0;

	reaction_re5=x(210)*x(208)*reaction_re5_k1;

% Reaction: id = re2	% Local Parameter:   id =  k1, name = k1
	reaction_re2_k1=1.0;

	reaction_re2=x(203)*x(207)*reaction_re2_k1;

% Reaction: id = re101	% Local Parameter:   id =  k1, name = k1
	reaction_re101_k1=1.0;

	reaction_re101=x(52)*reaction_re101_k1;

% Reaction: id = re102	% Local Parameter:   id =  k1, name = k1
	reaction_re102_k1=1.0;

	reaction_re102=x(52)*reaction_re102_k1;

% Reaction: id = re103	% Local Parameter:   id =  k1, name = k1
	reaction_re103_k1=1.0;

	reaction_re103=x(52)*reaction_re103_k1;

% Reaction: id = re109	% Local Parameter:   id =  k1, name = k1
	reaction_re109_k1=1.0;

	reaction_re109=x(52)*reaction_re109_k1;

% Reaction: id = re60	% Local Parameter:   id =  k1, name = k1
	reaction_re60_k1=1.0;

	reaction_re60=x(28)*reaction_re60_k1;

% Reaction: id = re64	% Local Parameter:   id =  k1, name = k1
	reaction_re64_k1=1.0;

	reaction_re64=x(228)*reaction_re64_k1;

% Reaction: id = re72	% Local Parameter:   id =  k1, name = k1
	reaction_re72_k1=1.0;

	reaction_re72=x(109)*reaction_re72_k1;

% Reaction: id = re73	% Local Parameter:   id =  k1, name = k1
	reaction_re73_k1=1.0;

	reaction_re73=x(27)*reaction_re73_k1;

% Reaction: id = re74	% Local Parameter:   id =  k1, name = k1
	reaction_re74_k1=1.0;

	reaction_re74=x(27)*reaction_re74_k1;

% Reaction: id = re89	% Local Parameter:   id =  v1, name = v1
	reaction_re89_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re89_k1=0.069;

	reaction_re89=reaction_re89_v1*x(91)/(reaction_re89_k1+x(91));

% Reaction: id = re25	% Local Parameter:   id =  v1, name = v1
	reaction_re25_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re25_k1=0.048;

	reaction_re25=reaction_re25_v1*x(90)/(reaction_re25_k1+x(90));

% Reaction: id = re4	% Local Parameter:   id =  v1, name = v1
	reaction_re4_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re4_k1=0.04;

	reaction_re4=reaction_re4_v1*x(85)/(reaction_re4_k1+x(85));

% Reaction: id = re3	% Local Parameter:   id =  k1, name = k1
	reaction_re3_k1=1.0;

	reaction_re3=x(89)*x(47)*reaction_re3_k1;

% Reaction: id = re20	% Local Parameter:   id =  v1, name = v1
	reaction_re20_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re20_k1=875.0;

	reaction_re20=reaction_re20_v1*x(22)/(reaction_re20_k1+x(22));

% Reaction: id = re21	% Local Parameter:   id =  v1, name = v1
	reaction_re21_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re21_k1=0.013;

	reaction_re21=reaction_re21_v1*x(103)/(reaction_re21_k1+x(103));

% Reaction: id = re22	% Local Parameter:   id =  v1, name = v1
	reaction_re22_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re22_k1=3.8E-4;

	reaction_re22=reaction_re22_v1*x(59)/(reaction_re22_k1+x(59));

% Reaction: id = re33	% Local Parameter:   id =  v1, name = v1
	reaction_re33_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re33_k1=1.3;

	reaction_re33=reaction_re33_v1*x(115)/(reaction_re33_k1+x(115));

% Reaction: id = re39	% Local Parameter:   id =  v1, name = v1
	reaction_re39_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re39_k1=13.6;

	reaction_re39=reaction_re39_v1*x(97)/(reaction_re39_k1+x(97));

% Reaction: id = re6	% Local Parameter:   id =  v1, name = v1
	reaction_re6_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re6_k1=13.0;

	reaction_re6=reaction_re6_v1*x(70)/(reaction_re6_k1+x(70));

% Reaction: id = re29	% Local Parameter:   id =  v1, name = v1
	reaction_re29_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re29_k1=0.1;

	reaction_re29=reaction_re29_v1*x(227)/(reaction_re29_k1+x(227));

% Reaction: id = re31	% Local Parameter:   id =  v1, name = v1
	reaction_re31_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re31_k1=5.8;

	reaction_re31=reaction_re31_v1*x(44)/(reaction_re31_k1+x(44));

% Reaction: id = re15	% Local Parameter:   id =  v1, name = v1
	reaction_re15_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re15_k1=0.11;

	reaction_re15=reaction_re15_v1*x(223)/(reaction_re15_k1+x(223));

% Reaction: id = re23	% Local Parameter:   id =  v1, name = v1
	reaction_re23_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re23_k1=73.0;

	reaction_re23=reaction_re23_v1*x(66)/(reaction_re23_k1+x(66));

% Reaction: id = re18	% Local Parameter:   id =  v1, name = v1
	reaction_re18_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re18_k1=490.0;

	reaction_re18=reaction_re18_v1*x(206)/(reaction_re18_k1+x(206));

% Reaction: id = re19	% Local Parameter:   id =  v1, name = v1
	reaction_re19_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re19_k1=0.09;

	reaction_re19=reaction_re19_v1*x(25)/(reaction_re19_k1+x(25));

% Reaction: id = re32	% Local Parameter:   id =  v1, name = v1
	reaction_re32_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re32_k1=2.0;

	reaction_re32=reaction_re32_v1*x(99)/(reaction_re32_k1+x(99));

% Reaction: id = re26	% Local Parameter:   id =  v1, name = v1
	reaction_re26_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re26_k1=2.13E-4;

	reaction_re26=reaction_re26_v1*x(99)/(reaction_re26_k1+x(99));

% Reaction: id = re41	% Local Parameter:   id =  v1, name = v1
	reaction_re41_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re41_k1=33.0;

	reaction_re41=reaction_re41_v1*x(237)/(reaction_re41_k1+x(237));

% Reaction: id = re28	% Local Parameter:   id =  v1, name = v1
	reaction_re28_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re28_k1=300.0;

	reaction_re28=reaction_re28_v1*x(237)/(reaction_re28_k1+x(237));

% Reaction: id = re30	% Local Parameter:   id =  v1, name = v1
	reaction_re30_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re30_k1=300.0;

	reaction_re30=reaction_re30_v1*x(235)/(reaction_re30_k1+x(235));

% Reaction: id = re35	% Local Parameter:   id =  v1, name = v1
	reaction_re35_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re35_k1=791.0;

	reaction_re35=reaction_re35_v1*x(46)/(reaction_re35_k1+x(46));

% Reaction: id = re34	% Local Parameter:   id =  v1, name = v1
	reaction_re34_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re34_k1=0.11;

	reaction_re34=reaction_re34_v1*x(29)/(reaction_re34_k1+x(29));

% Reaction: id = re42	% Local Parameter:   id =  v1, name = v1
	reaction_re42_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re42_k1=40.0;

	reaction_re42=reaction_re42_v1*x(29)/(reaction_re42_k1+x(29));

% Reaction: id = re164	% Local Parameter:   id =  k1, name = k1
	reaction_re164_k1=1.0;

	reaction_re164=x(154)*reaction_re164_k1;

% Reaction: id = re168	% Local Parameter:   id =  k1, name = k1
	reaction_re168_k1=1.0;

	reaction_re168=x(182)*reaction_re168_k1;

% Reaction: id = re167	% Local Parameter:   id =  k1, name = k1
	reaction_re167_k1=1.0;

	reaction_re167=x(175)*reaction_re167_k1;

% Reaction: id = re166	% Local Parameter:   id =  k1, name = k1
	reaction_re166_k1=1.0;

	reaction_re166=x(168)*reaction_re166_k1;

% Reaction: id = re165	% Local Parameter:   id =  k1, name = k1
	reaction_re165_k1=1.0;

	reaction_re165=x(161)*reaction_re165_k1;

% Reaction: id = re159	% Local Parameter:   id =  k1, name = k1
	reaction_re159_k1=1.0;

	reaction_re159=x(159)*x(136)*reaction_re159_k1;

% Reaction: id = re160	% Local Parameter:   id =  k1, name = k1
	reaction_re160_k1=1.0;

	reaction_re160=x(166)*x(136)*reaction_re160_k1;

% Reaction: id = re161	% Local Parameter:   id =  k1, name = k1
	reaction_re161_k1=1.0;

	reaction_re161=x(173)*x(136)*reaction_re161_k1;

% Reaction: id = re162	% Local Parameter:   id =  k1, name = k1
	reaction_re162_k1=1.0;

	reaction_re162=x(180)*x(136)*reaction_re162_k1;

% Reaction: id = re163	% Local Parameter:   id =  k1, name = k1
	reaction_re163_k1=1.0;

	reaction_re163=x(187)*x(136)*reaction_re163_k1;

% Reaction: id = re169	% Local Parameter:   id =  k1, name = k1
	reaction_re169_k1=1.0;

	reaction_re169=x(155)*reaction_re169_k1;

% Reaction: id = re170	% Local Parameter:   id =  k1, name = k1
	reaction_re170_k1=1.0;

	reaction_re170=x(162)*reaction_re170_k1;

% Reaction: id = re171	% Local Parameter:   id =  k1, name = k1
	reaction_re171_k1=1.0;

	reaction_re171=x(169)*reaction_re171_k1;

% Reaction: id = re172	% Local Parameter:   id =  k1, name = k1
	reaction_re172_k1=1.0;

	reaction_re172=x(176)*reaction_re172_k1;

% Reaction: id = re173	% Local Parameter:   id =  k1, name = k1
	reaction_re173_k1=1.0;

	reaction_re173=x(183)*reaction_re173_k1;

% Reaction: id = re43	% Local Parameter:   id =  v1, name = v1
	reaction_re43_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re43_k1=0.04;

	reaction_re43=reaction_re43_v1*x(99)/(reaction_re43_k1+x(99));

% Reaction: id = re44	% Local Parameter:   id =  v1, name = v1
	reaction_re44_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re44_k1=18.2;

	reaction_re44=reaction_re44_v1*x(226)/(reaction_re44_k1+x(226));

% Reaction: id = re45	% Local Parameter:   id =  v1, name = v1
	reaction_re45_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re45_k1=0.157;

	reaction_re45=reaction_re45_v1*x(225)/(reaction_re45_k1+x(225));

% Reaction: id = re46	% Local Parameter:   id =  v1, name = v1
	reaction_re46_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re46_k1=13.6;

	reaction_re46=reaction_re46_v1*x(122)/(reaction_re46_k1+x(122));

% Reaction: id = re47	% Local Parameter:   id =  v1, name = v1
	reaction_re47_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re47_k1=140.0;

	reaction_re47=reaction_re47_v1*x(26)/(reaction_re47_k1+x(26));

% Reaction: id = re48	% Local Parameter:   id =  v1, name = v1
	reaction_re48_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re48_k1=0.066;

	reaction_re48=reaction_re48_v1*x(101)/(reaction_re48_k1+x(101));

% Reaction: id = re53	% Local Parameter:   id =  v1, name = v1
	reaction_re53_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re53_k1=0.13;

	reaction_re53=reaction_re53_v1*x(97)/(reaction_re53_k1+x(97));

% Reaction: id = re54	% Local Parameter:   id =  v1, name = v1
	reaction_re54_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re54_k1=0.045;

	reaction_re54=reaction_re54_v1*x(99)/(reaction_re54_k1+x(99));

% Reaction: id = re55	% Local Parameter:   id =  v1, name = v1
	reaction_re55_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re55_k1=0.1;

	reaction_re55=reaction_re55_v1*x(82)/(reaction_re55_k1+x(82));

% Reaction: id = re56	% Local Parameter:   id =  v1, name = v1
	reaction_re56_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re56_k1=0.08;

	reaction_re56=reaction_re56_v1*x(60)/(reaction_re56_k1+x(60));

% Reaction: id = re57	% Local Parameter:   id =  v1, name = v1
	reaction_re57_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re57_k1=0.1;

	reaction_re57=reaction_re57_v1*x(4)/(reaction_re57_k1+x(4));

% Reaction: id = re80	% Local Parameter:   id =  v1, name = v1
	reaction_re80_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re80_k1=10.0;

	reaction_re80=reaction_re80_v1*x(19)/(reaction_re80_k1+x(19));

% Reaction: id = re79	% Local Parameter:   id =  v1, name = v1
	reaction_re79_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re79_k1=0.58;

	reaction_re79=reaction_re79_v1*x(105)/(reaction_re79_k1+x(105));

% Reaction: id = re83	% Local Parameter:   id =  v1, name = v1
	reaction_re83_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re83_k1=1.7;

	reaction_re83=reaction_re83_v1*x(114)/(reaction_re83_k1+x(114));

% Reaction: id = re84	% Local Parameter:   id =  v1, name = v1
	reaction_re84_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re84_k1=0.31;

	reaction_re84=reaction_re84_v1*x(84)/(reaction_re84_k1+x(84));

% Reaction: id = re87	% Local Parameter:   id =  v1, name = v1
	reaction_re87_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re87_k1=1.37;

	reaction_re87=reaction_re87_v1*x(13)/(reaction_re87_k1+x(13));

% Reaction: id = re88	% Local Parameter:   id =  v1, name = v1
	reaction_re88_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re88_k1=970.0;

	reaction_re88=reaction_re88_v1*x(92)/(reaction_re88_k1+x(92));

% Reaction: id = re91	% Local Parameter:   id =  v1, name = v1
	reaction_re91_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re91_k1=0.13;

	reaction_re91=reaction_re91_v1*x(7)/(reaction_re91_k1+x(7));

% Reaction: id = re92	% Local Parameter:   id =  v1, name = v1
	reaction_re92_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re92_k1=294.0;

	reaction_re92=reaction_re92_v1*x(215)/(reaction_re92_k1+x(215));

% Reaction: id = re94	% Local Parameter:   id =  v1, name = v1
	reaction_re94_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re94_k1=1.28;

	reaction_re94=reaction_re94_v1*x(217)/(reaction_re94_k1+x(217));

% Reaction: id = re95	% Local Parameter:   id =  v1, name = v1
	reaction_re95_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re95_k1=12.6;

	reaction_re95=reaction_re95_v1*x(217)/(reaction_re95_k1+x(217));

% Reaction: id = re98	% Local Parameter:   id =  v1, name = v1
	reaction_re98_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re98_k1=18.7;

	reaction_re98=reaction_re98_v1*x(217)/(reaction_re98_k1+x(217));

% Reaction: id = re50	% Local Parameter:   id =  v1, name = v1
	reaction_re50_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re50_k1=0.08;

	reaction_re50=reaction_re50_v1*x(81)/(reaction_re50_k1+x(81));

% Reaction: id = re52	% Local Parameter:   id =  v1, name = v1
	reaction_re52_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re52_k1=0.19;

	reaction_re52=reaction_re52_v1*x(3)/(reaction_re52_k1+x(3));

% Reaction: id = re51	% Local Parameter:   id =  v1, name = v1
	reaction_re51_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re51_k1=0.19;

	reaction_re51=reaction_re51_v1*x(3)/(reaction_re51_k1+x(3));

% Reaction: id = re16	% Local Parameter:   id =  v1, name = v1
	reaction_re16_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re16_k1=2900.0;

	reaction_re16=reaction_re16_v1*x(135)/(reaction_re16_k1+x(135));

% Reaction: id = re17	% Local Parameter:   id =  v1, name = v1
	reaction_re17_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re17_k1=2900.0;

	reaction_re17=reaction_re17_v1*x(1)/(reaction_re17_k1+x(1));

% Reaction: id = re113	% Local Parameter:   id =  v1, name = v1
	reaction_re113_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re113_k1=16.0;

	reaction_re113=reaction_re113_v1*x(158)/(reaction_re113_k1+x(158));

% Reaction: id = re116	% Local Parameter:   id =  v1, name = v1
	reaction_re116_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re116_k1=16.0;

	reaction_re116=reaction_re116_v1*x(165)/(reaction_re116_k1+x(165));

% Reaction: id = re120	% Local Parameter:   id =  v1, name = v1
	reaction_re120_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re120_k1=16.0;

	reaction_re120=reaction_re120_v1*x(172)/(reaction_re120_k1+x(172));

% Reaction: id = re123	% Local Parameter:   id =  v1, name = v1
	reaction_re123_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re123_k1=16.0;

	reaction_re123=reaction_re123_v1*x(179)/(reaction_re123_k1+x(179));

% Reaction: id = re128	% Local Parameter:   id =  v1, name = v1
	reaction_re128_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re128_k1=34.5;

	reaction_re128=reaction_re128_v1*x(186)/(reaction_re128_k1+x(186));

% Reaction: id = re131	% Local Parameter:   id =  v1, name = v1
	reaction_re131_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re131_k1=16.0;

	reaction_re131=reaction_re131_v1*x(191)/(reaction_re131_k1+x(191));

% Reaction: id = re135	% Local Parameter:   id =  v1, name = v1
	reaction_re135_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re135_k1=16.0;

	reaction_re135=reaction_re135_v1*x(195)/(reaction_re135_k1+x(195));

% Reaction: id = re138	% Local Parameter:   id =  v1, name = v1
	reaction_re138_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re138_k1=16.0;
	% Local Parameter:   id =  v2, name = v2
	reaction_re138_v2=1.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_re138_k2=16.0;

	reaction_re138=reaction_re138_v2*x(144)/(reaction_re138_k2+x(144));

% Reaction: id = re144	% Local Parameter:   id =  v1, name = v1
	reaction_re144_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re144_k1=16.0;

	reaction_re144=reaction_re144_v1*x(148)/(reaction_re144_k1+x(148));

% Reaction: id = re97	% Local Parameter:   id =  v1, name = v1
	reaction_re97_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re97_k1=16.0;

	reaction_re97=reaction_re97_v1*x(223)/(reaction_re97_k1+x(223));

% Reaction: id = re96	% Local Parameter:   id =  v1, name = v1
	reaction_re96_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re96_k1=100.0;

	reaction_re96=reaction_re96_v1*x(215)/(reaction_re96_k1+x(215));

% Reaction: id = re147	% Local Parameter:   id =  v1, name = v1
	reaction_re147_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re147_k1=16.0;

	reaction_re147=reaction_re147_v1*x(152)/(reaction_re147_k1+x(152));

% Reaction: id = re110	% Local Parameter:   id =  v1, name = v1
	reaction_re110_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re110_k1=3.0;

	reaction_re110=reaction_re110_v1*x(156)/(reaction_re110_k1+x(156));

% Reaction: id = re117	% Local Parameter:   id =  v1, name = v1
	reaction_re117_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re117_k1=3.0;

	reaction_re117=reaction_re117_v1*x(163)/(reaction_re117_k1+x(163));

% Reaction: id = re125	% Local Parameter:   id =  v1, name = v1
	reaction_re125_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re125_k1=3.0;

	reaction_re125=reaction_re125_v1*x(170)/(reaction_re125_k1+x(170));

% Reaction: id = re124	% Local Parameter:   id =  v1, name = v1
	reaction_re124_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re124_k1=3.0;

	reaction_re124=reaction_re124_v1*x(177)/(reaction_re124_k1+x(177));

% Reaction: id = re141	% Local Parameter:   id =  v1, name = v1
	reaction_re141_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re141_k1=3.0;

	reaction_re141=reaction_re141_v1*x(184)/(reaction_re141_k1+x(184));

% Reaction: id = re132	% Local Parameter:   id =  v1, name = v1
	reaction_re132_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re132_k1=3.0;

	reaction_re132=reaction_re132_v1*x(189)/(reaction_re132_k1+x(189));

% Reaction: id = re140	% Local Parameter:   id =  v1, name = v1
	reaction_re140_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re140_k1=3.0;

	reaction_re140=reaction_re140_v1*x(193)/(reaction_re140_k1+x(193));

% Reaction: id = re139	% Local Parameter:   id =  v1, name = v1
	reaction_re139_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re139_k1=3.0;

	reaction_re139=reaction_re139_v1*x(142)/(reaction_re139_k1+x(142));

% Reaction: id = re149	% Local Parameter:   id =  v1, name = v1
	reaction_re149_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re149_k1=3.0;

	reaction_re149=reaction_re149_v1*x(146)/(reaction_re149_k1+x(146));

% Reaction: id = re148	% Local Parameter:   id =  v1, name = v1
	reaction_re148_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re148_k1=3.0;

	reaction_re148=reaction_re148_v1*x(150)/(reaction_re148_k1+x(150));

% Reaction: id = re111	% Local Parameter:   id =  v1, name = v1
	reaction_re111_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re111_k1=100.0;

	reaction_re111=reaction_re111_v1*x(160)/(reaction_re111_k1+x(160));

% Reaction: id = re114	% Local Parameter:   id =  v1, name = v1
	reaction_re114_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re114_k1=100.0;

	reaction_re114=reaction_re114_v1*x(167)/(reaction_re114_k1+x(167));

% Reaction: id = re118	% Local Parameter:   id =  v1, name = v1
	reaction_re118_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re118_k1=100.0;

	reaction_re118=reaction_re118_v1*x(174)/(reaction_re118_k1+x(174));

% Reaction: id = re121	% Local Parameter:   id =  v1, name = v1
	reaction_re121_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re121_k1=100.0;

	reaction_re121=reaction_re121_v1*x(181)/(reaction_re121_k1+x(181));

% Reaction: id = re126	% Local Parameter:   id =  v1, name = v1
	reaction_re126_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re126_k1=100.0;

	reaction_re126=reaction_re126_v1*x(188)/(reaction_re126_k1+x(188));

% Reaction: id = re129	% Local Parameter:   id =  v1, name = v1
	reaction_re129_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re129_k1=100.0;

	reaction_re129=reaction_re129_v1*x(192)/(reaction_re129_k1+x(192));

% Reaction: id = re133	% Local Parameter:   id =  v1, name = v1
	reaction_re133_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re133_k1=100.0;

	reaction_re133=reaction_re133_v1*x(196)/(reaction_re133_k1+x(196));

% Reaction: id = re136	% Local Parameter:   id =  v1, name = v1
	reaction_re136_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re136_k1=100.0;

	reaction_re136=reaction_re136_v1*x(145)/(reaction_re136_k1+x(145));

% Reaction: id = re142	% Local Parameter:   id =  v1, name = v1
	reaction_re142_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re142_k1=100.0;

	reaction_re142=reaction_re142_v1*x(149)/(reaction_re142_k1+x(149));

% Reaction: id = re145	% Local Parameter:   id =  v1, name = v1
	reaction_re145_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re145_k1=100.0;

	reaction_re145=reaction_re145_v1*x(153)/(reaction_re145_k1+x(153));

% Reaction: id = re112	% Local Parameter:   id =  v1, name = v1
	reaction_re112_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re112_k1=34.5;

	reaction_re112=reaction_re112_v1*x(157)/(reaction_re112_k1+x(157));

% Reaction: id = re115	% Local Parameter:   id =  v1, name = v1
	reaction_re115_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re115_k1=34.5;

	reaction_re115=reaction_re115_v1*x(164)/(reaction_re115_k1+x(164));

% Reaction: id = re119	% Local Parameter:   id =  v1, name = v1
	reaction_re119_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re119_k1=34.5;

	reaction_re119=reaction_re119_v1*x(171)/(reaction_re119_k1+x(171));

% Reaction: id = re122	% Local Parameter:   id =  v1, name = v1
	reaction_re122_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re122_k1=34.5;

	reaction_re122=reaction_re122_v1*x(178)/(reaction_re122_k1+x(178));

% Reaction: id = re127	% Local Parameter:   id =  v1, name = v1
	reaction_re127_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re127_k1=34.5;

	reaction_re127=reaction_re127_v1*x(185)/(reaction_re127_k1+x(185));

% Reaction: id = re130	% Local Parameter:   id =  v1, name = v1
	reaction_re130_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re130_k1=34.5;

	reaction_re130=reaction_re130_v1*x(190)/(reaction_re130_k1+x(190));

% Reaction: id = re134	% Local Parameter:   id =  v1, name = v1
	reaction_re134_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re134_k1=34.5;

	reaction_re134=reaction_re134_v1*x(194)/(reaction_re134_k1+x(194));

% Reaction: id = re137	% Local Parameter:   id =  v1, name = v1
	reaction_re137_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re137_k1=34.5;

	reaction_re137=reaction_re137_v1*x(143)/(reaction_re137_k1+x(143));

% Reaction: id = re143	% Local Parameter:   id =  v1, name = v1
	reaction_re143_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re143_k1=34.5;

	reaction_re143=reaction_re143_v1*x(147)/(reaction_re143_k1+x(147));

% Reaction: id = re146	% Local Parameter:   id =  v1, name = v1
	reaction_re146_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re146_k1=34.5;

	reaction_re146=reaction_re146_v1*x(151)/(reaction_re146_k1+x(151));

% Reaction: id = re175	% Local Parameter:   id =  v1, name = v1
	reaction_re175_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re175_k1=1.16;

	reaction_re175=reaction_re175_v1*x(238)/(reaction_re175_k1+x(238));

% Reaction: id = re182	% Local Parameter:   id =  v1, name = v1
	reaction_re182_v1=1.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_re182_k1=9.6;

	reaction_re182=reaction_re182_v1*x(239)/(reaction_re182_k1+x(239));

	xdot=zeros(240,1);
	
% Species:   id = s4, name = cis-Aconitate, affected by kineticLaw
	xdot(1) = (1/(compartment_c1))*(( 1.0 * reaction_re16) + (-1.0 * reaction_re17));
	
% Species:   id = s136, name = car_mat, affected by kineticLaw
	xdot(2) = (1/(compartment_c1))*(( 1.0 * reaction_re169) + ( 1.0 * reaction_re170) + ( 1.0 * reaction_re171) + ( 1.0 * reaction_re172) + ( 1.0 * reaction_re173));
	
% Species:   id = s188, name = Xylulose5P, affected by kineticLaw
	xdot(3) = (1/(compartment_default))*(( 1.0 * reaction_re47) + (-1.0 * reaction_re52) + (-1.0 * reaction_re51));
	
% Species:   id = s253, name = Unbranched alpha(1,4)polymer, affected by kineticLaw
	xdot(4) = (1/(compartment_default))*(( 1.0 * reaction_re56) + (-1.0 * reaction_re57));
	
% Species:   id = s49, name = UREA, affected by kineticLaw
	xdot(5) = (1/(compartment_c1))*(( 1.0 * reaction_re13));
	
% Species:   id = s308, name = UDP-galactose1phosphate uridylyl transferase
% Warning species is not changed by either rules or reactions
	xdot(6) = ;
	
% Species:   id = s335, name = UDP-Glucose, affected by kineticLaw
	xdot(7) = (1/(compartment_default))*((-1.0 * reaction_re49) + ( 1.0 * reaction_re89) + ( 1.0 * reaction_re48) + (-1.0 * reaction_re91));
	
% Species:   id = s13, name = UDP glucose4epimerase
% Warning species is not changed by either rules or reactions
	xdot(8) = ;
	
% Species:   id = s201, name = UDP Glucose Phosphorylase
% Warning species is not changed by either rules or reactions
	xdot(9) = ;
	
% Species:   id = s199, name = UDP, affected by kineticLaw
	xdot(10) = (1/(compartment_default))*((-1.0 * reaction_re48));
	
% Species:   id = s294, name = Triokinase
% Warning species is not changed by either rules or reactions
	xdot(11) = ;
	
% Species:   id = s292, name = Triglyceride, affected by kineticLaw
	xdot(12) = (1/(compartment_default))*(( 1.0 * reaction_re82));
	
% Species:   id = s297, name = Trehalose, affected by kineticLaw
	xdot(13) = (1/(compartment_default))*((-1.0 * reaction_re87));
	
% Species:   id = s298, name = Trehalase
% Warning species is not changed by either rules or reactions
	xdot(14) = ;
	
% Species:   id = s337, name = Transketolase
% Warning species is not changed by either rules or reactions
	xdot(15) = ;
	
% Species:   id = s248, name = Transaldolase
% Warning species is not changed by either rules or reactions
	xdot(16) = ;
	
% Species:   id = s362, name = Thiolase
% Warning species is not changed by either rules or reactions
	xdot(17) = ;
	
% Species:   id = s94, name = TPP, affected by kineticLaw
	xdot(18) = (1/(compartment_c1))*((-1.0 * reaction_re42));
	
% Species:   id = s284, name = Sucrose, affected by kineticLaw
	xdot(19) = (1/(compartment_default))*((-1.0 * reaction_re80));
	
% Species:   id = s283, name = Sucrase
% Warning species is not changed by either rules or reactions
	xdot(20) = ;
	
% Species:   id = s26, name = Succinate dehydrogenase
% Warning species is not changed by either rules or reactions
	xdot(21) = ;
	
% Species:   id = s7, name = Succinate, affected by kineticLaw
	xdot(22) = (1/(compartment_c1))*((-1.0 * reaction_re20) + ( 1.0 * reaction_re19) + ( 1.0 * reaction_re98));
	
% Species:   id = s244, name = Sedoheptulase7P, affected by kineticLaw
	xdot(23) = (1/(compartment_default))*((-1.0 * reaction_re53) + ( 1.0 * reaction_re51));
	
% Species:   id = s58, name = S CoA synthase
% Warning species is not changed by either rules or reactions
	xdot(24) = ;
	
% Species:   id = s6, name = S CoA, affected by kineticLaw
	xdot(25) = (1/(compartment_c1))*(( 1.0 * reaction_re18) + (-1.0 * reaction_re19) + (-1.0 * reaction_re98));
	
% Species:   id = s187, name = Ribose5P, affected by kineticLaw
	xdot(26) = (1/(compartment_default))*(( 1.0 * reaction_re46) + (-1.0 * reaction_re47) + (-1.0 * reaction_re51));
	
% Species:   id = s388, name = QH2, affected by kineticLaw
	xdot(27) = (1/(compartment_c2))*((-1.0 * reaction_re65) + (-1.0 * reaction_re61) + ( 1.0 * reaction_re60) + ( 1.0 * reaction_re64) + (-1.0 * reaction_re73) + (-1.0 * reaction_re74));
	
% Species:   id = s267, name = Q, affected by kineticLaw
	xdot(28) = (1/(compartment_c2))*(( 1.0 * reaction_re69) + ( 1.0 * reaction_re59) + (-1.0 * reaction_re60));
	
% Species:   id = s11, name = Pyruvate, affected by kineticLaw
	xdot(29) = (1/(compartment_default))*((-1.0 * reaction_re99) + (-1.0 * reaction_re86) + ( 1.0 * reaction_re31) + (-1.0 * reaction_re34) + (-1.0 * reaction_re42));
	
% Species:   id = s44, name = Pi, affected by kineticLaw
	xdot(30) = (1/(compartment_default))*((-1.0 * reaction_re40) + ( 1.0 * reaction_re33) + ( 1.0 * reaction_re32) + ( 1.0 * reaction_re41));
	
% Species:   id = s344, name = Pi, affected by kineticLaw
	xdot(31) = (1/(compartment_c1))*(( 1.0 * reaction_re9));
	
% Species:   id = s193, name = Phosphopentose isomerase
% Warning species is not changed by either rules or reactions
	xdot(32) = ;
	
% Species:   id = s79, name = Phosphohexo isomerase
% Warning species is not changed by either rules or reactions
	xdot(33) = ;
	
% Species:   id = s249, name = Phosphogluco mutase
% Warning species is not changed by either rules or reactions
	xdot(34) = ;
	
% Species:   id = s45, name = PYRUVATE KINASE
% Warning species is not changed by either rules or reactions
	xdot(35) = ;
	
% Species:   id = s91, name = PYRUVATE DEHYDROGENASE
% Warning species is not changed by either rules or reactions
	xdot(36) = ;
	
% Species:   id = s90, name = PYRUVATE CARBOXYLASE
% Warning species is not changed by either rules or reactions
	xdot(37) = ;
	
% Species:   id = s200, name = PPi, affected by kineticLaw
	xdot(38) = (1/(compartment_default))*(( 1.0 * reaction_re48));
	
% Species:   id = s363, name = PPi, affected by kineticLaw
	xdot(39) = (1/(compartment_c1))*(( 1.0 * reaction_re12));
	
% Species:   id = s36, name = PHOSPHO TRIOSE ISOMERASE
% Warning species is not changed by either rules or reactions
	xdot(40) = ;
	
% Species:   id = s43, name = PGA MUTASE
% Warning species is not changed by either rules or reactions
	xdot(41) = ;
	
% Species:   id = s86, name = PGA KINASE
% Warning species is not changed by either rules or reactions
	xdot(42) = ;
	
% Species:   id = s88, name = PEP CARBOXYKINASE
% Warning species is not changed by either rules or reactions
	xdot(43) = ;
	
% Species:   id = s10, name = PEP, affected by kineticLaw
	xdot(44) = (1/(compartment_default))*((-1.0 * reaction_re31) + ( 1.0 * reaction_re30) + ( 1.0 * reaction_re35));
	
% Species:   id = s34, name = Ornithine, affected by kineticLaw
	xdot(45) = (1/(compartment_c1))*(( 1.0 * reaction_re14) + (-1.0 * reaction_re9));
	
% Species:   id = s81, name = OXALOACETATE, affected by kineticLaw
	xdot(46) = (1/(compartment_default))*((-1.0 * reaction_re35) + ( 1.0 * reaction_re34));
	
% Species:   id = s50, name = OAA, affected by kineticLaw
	xdot(47) = (1/(compartment_c1))*((-1.0 * reaction_re3) + ( 1.0 * reaction_re22) + (-1.0 * reaction_re15));
	
% Species:   id = s190, name = NAPDH, affected by kineticLaw
	xdot(48) = (1/(compartment_default))*(( 1.0 * reaction_re45));
	
% Species:   id = s185, name = NADPH, affected by kineticLaw
	xdot(49) = (1/(compartment_default))*(( 1.0 * reaction_re43));
	
% Species:   id = s334, name = NADP+, affected by kineticLaw
	xdot(50) = (1/(compartment_default))*((-1.0 * reaction_re43) + (-1.0 * reaction_re45));
	
% Species:   id = s67, name = NADH, affected by kineticLaw
	xdot(51) = (1/(compartment_default))*((-1.0 * reaction_re85) + ( 1.0 * reaction_re40) + (-1.0 * reaction_re41));
	
% Species:   id = s351, name = NADH, affected by kineticLaw
	xdot(52) = (1/(compartment_c1))*((-1.0 * reaction_re101) + (-1.0 * reaction_re102) + (-1.0 * reaction_re103) + (-1.0 * reaction_re109) + ( 1.0 * reaction_re22) + ( 1.0 * reaction_re23) + ( 1.0 * reaction_re18) + ( 1.0 * reaction_re42) + (-1.0 * reaction_re95) + ( 1.0 * reaction_re112) + ( 1.0 * reaction_re115) + ( 1.0 * reaction_re119) + ( 1.0 * reaction_re122) + ( 1.0 * reaction_re127) + ( 1.0 * reaction_re130) + ( 1.0 * reaction_re134) + ( 1.0 * reaction_re137) + ( 1.0 * reaction_re143) + ( 1.0 * reaction_re146));
	
% Species:   id = s381, name = NADH, affected by kineticLaw
	xdot(53) = (1/(compartment_c1))*((-1.0 * reaction_re77) + ( 1.0 * reaction_re101) + ( 1.0 * reaction_re102) + ( 1.0 * reaction_re103) + ( 1.0 * reaction_re109));
	
% Species:   id = s93, name = NAD+, affected by kineticLaw
	xdot(54) = (1/(compartment_default))*(( 1.0 * reaction_re85) + (-1.0 * reaction_re40) + ( 1.0 * reaction_re41));
	
% Species:   id = s355, name = NAD+, affected by kineticLaw
	xdot(55) = (1/(compartment_c1))*(( 1.0 * reaction_re78) + (-1.0 * reaction_re104) + ( 1.0 * reaction_re104) + (-1.0 * reaction_re105) + ( 1.0 * reaction_re105) + (-1.0 * reaction_re106) + ( 1.0 * reaction_re106) + (-1.0 * reaction_re108) + ( 1.0 * reaction_re108) + (-1.0 * reaction_re22) + (-1.0 * reaction_re23) + (-1.0 * reaction_re18) + (-1.0 * reaction_re42) + ( 1.0 * reaction_re95) + (-1.0 * reaction_re112) + (-1.0 * reaction_re115) + (-1.0 * reaction_re119) + (-1.0 * reaction_re122) + (-1.0 * reaction_re127) + (-1.0 * reaction_re130) + (-1.0 * reaction_re134) + (-1.0 * reaction_re137) + (-1.0 * reaction_re143) + (-1.0 * reaction_re146));
	
% Species:   id = s333, name = Mg2+
% Warning species is not changed by either rules or reactions
	xdot(56) = ;
	
% Species:   id = s357, name = Mg2+
% Warning species is not changed by either rules or reactions
	xdot(57) = ;
	
% Species:   id = s28, name = Malate dehydrogenase
% Warning species is not changed by either rules or reactions
	xdot(58) = ;
	
% Species:   id = s9, name = Malate, affected by kineticLaw
	xdot(59) = (1/(compartment_c1))*(( 1.0 * reaction_re21) + (-1.0 * reaction_re22));
	
% Species:   id = s252, name = Limit Dextrin, affected by kineticLaw
	xdot(60) = (1/(compartment_default))*(( 1.0 * reaction_re55) + (-1.0 * reaction_re56));
	
% Species:   id = s307, name = Lactose, affected by kineticLaw
	xdot(61) = (1/(compartment_default))*((-1.0 * reaction_re90));
	
% Species:   id = s189, name = Lactonase
% Warning species is not changed by either rules or reactions
	xdot(62) = ;
	
% Species:   id = s296, name = Lactate, affected by kineticLaw
	xdot(63) = (1/(compartment_default))*((-1.0 * reaction_re85) + ( 1.0 * reaction_re86));
	
% Species:   id = s95, name = LIPOATE, affected by kineticLaw
	xdot(64) = (1/(compartment_c1))*((-1.0 * reaction_re42));
	
% Species:   id = s56, name = Isocitrate dehydrogenase
% Warning species is not changed by either rules or reactions
	xdot(65) = ;
	
% Species:   id = s52, name = Isocitrate, affected by kineticLaw
	xdot(66) = (1/(compartment_c1))*((-1.0 * reaction_re23) + ( 1.0 * reaction_re17));
	
% Species:   id = s16, name = Hexokinase
% Warning species is not changed by either rules or reactions
	xdot(67) = ;
	
% Species:   id = s322, name = HMGCoA, affected by kineticLaw
	xdot(68) = (1/(compartment_c1))*((-1.0 * reaction_re93) + ( 1.0 * reaction_re92));
	
% Species:   id = s327, name = HMG-CoA Synthase
% Warning species is not changed by either rules or reactions
	xdot(69) = ;
	
% Species:   id = s25, name = HCO3-+ NH4+, affected by kineticLaw
	xdot(70) = (1/(compartment_c1))*(( 1.0 * reaction_re7) + ( 1.0 * reaction_re8) + (-1.0 * reaction_re6));
	
% Species:   id = s64, name = H2O, affected by kineticLaw
	xdot(71) = (1/(compartment_default))*((-1.0 * reaction_re33) + (-1.0 * reaction_re44) + (-1.0 * reaction_re80) + (-1.0 * reaction_re87));
	
% Species:   id = s347, name = H2O, affected by kineticLaw
	xdot(72) = (1/(compartment_c1))*((-1.0 * reaction_re71) + (-1.0 * reaction_re13) + (-1.0 * reaction_re21) + (-1.0 * reaction_re15) + (-1.0 * reaction_re92) + ( 1.0 * reaction_re16) + (-1.0 * reaction_re17) + (-1.0 * reaction_re111) + (-1.0 * reaction_re114) + (-1.0 * reaction_re118) + (-1.0 * reaction_re121) + (-1.0 * reaction_re126) + (-1.0 * reaction_re129) + (-1.0 * reaction_re133) + (-1.0 * reaction_re136) + (-1.0 * reaction_re142) + (-1.0 * reaction_re145));
	
% Species:   id = s32, name = H20, affected by kineticLaw
	xdot(73) = (1/(compartment_default))*((-1.0 * reaction_re32));
	
% Species:   id = s329, name = H+, affected by kineticLaw
	xdot(74) = (1/(compartment_default))*(( 1.0 * reaction_re40) + ( 1.0 * reaction_re89) + (-1.0 * reaction_re41) + ( 1.0 * reaction_re45));
	
% Species:   id = s361, name = H+, affected by kineticLaw
	xdot(75) = (1/(compartment_c1))*(( 1.0 * reaction_re22) + ( 1.0 * reaction_re23) + ( 1.0 * reaction_re18) + ( 1.0 * reaction_re42) + (-1.0 * reaction_re95) + ( 1.0 * reaction_re112) + ( 1.0 * reaction_re115) + ( 1.0 * reaction_re119) + ( 1.0 * reaction_re122) + ( 1.0 * reaction_re127) + ( 1.0 * reaction_re130) + ( 1.0 * reaction_re134) + ( 1.0 * reaction_re137) + ( 1.0 * reaction_re143) + ( 1.0 * reaction_re146));
	
% Species:   id = s255, name = Glygogen Phosphorylase
% Warning species is not changed by either rules or reactions
	xdot(76) = ;
	
% Species:   id = s250, name = Glycosyl-4,6-Transferase
% Warning species is not changed by either rules or reactions
	xdot(77) = ;
	
% Species:   id = s203, name = Glycosyl transferase
% Warning species is not changed by either rules or reactions
	xdot(78) = ;
	
% Species:   id = s251, name = Glycogen phosphorylase
% Warning species is not changed by either rules or reactions
	xdot(79) = ;
	
% Species:   id = s336, name = Glycogen Synthase
% Warning species is not changed by either rules or reactions
	xdot(80) = ;
	
% Species:   id = s197, name = Glycogen Primer, affected by kineticLaw
	xdot(81) = (1/(compartment_default))*(( 1.0 * reaction_re49) + (-1.0 * reaction_re50));
	
% Species:   id = s198, name = Glycogen, affected by kineticLaw
	xdot(82) = (1/(compartment_default))*((-1.0 * reaction_re55) + ( 1.0 * reaction_re50));
	
% Species:   id = s51, name = Glycerol3P, affected by kineticLaw
	xdot(83) = (1/(compartment_default))*(( 1.0 * reaction_re81) + (-1.0 * reaction_re82));
	
% Species:   id = s293, name = Glyceraldehyde, affected by kineticLaw
	xdot(84) = (1/(compartment_default))*((-1.0 * reaction_re81) + ( 1.0 * reaction_re83) + (-1.0 * reaction_re84));
	
% Species:   id = s340, name = Glutamine, affected by kineticLaw
	xdot(85) = (1/(compartment_c1))*((-1.0 * reaction_re7) + ( 1.0 * reaction_re1) + (-1.0 * reaction_re4));
	
% Species:   id = s378, name = Glutamine, affected by kineticLaw
	xdot(86) = (1/(compartment_default))*((-1.0 * reaction_re1));
	
% Species:   id = s18, name = Glutaminase
% Warning species is not changed by either rules or reactions
	xdot(87) = ;
	
% Species:   id = s341, name = Glutamate, affected by kineticLaw
	xdot(88) = (1/(compartment_c1))*((-1.0 * reaction_re8) + ( 1.0 * reaction_re4) + ( 1.0 * reaction_re3));
	
% Species:   id = s379, name = Glutamate, affected by kineticLaw
	xdot(89) = (1/(compartment_default))*(( 1.0 * reaction_re5) + ( 1.0 * reaction_re2) + (-1.0 * reaction_re3));
	
% Species:   id = s71, name = Glucose, affected by kineticLaw
	xdot(90) = (1/(compartment_default))*(( 1.0 * reaction_re85) + ( 1.0 * reaction_re90) + (-1.0 * reaction_re25) + ( 1.0 * reaction_re32) + ( 1.0 * reaction_re56) + ( 1.0 * reaction_re80) + ( 1.0 * reaction_re87));
	
% Species:   id = s302, name = Galactose1P, affected by kineticLaw
	xdot(91) = (1/(compartment_default))*((-1.0 * reaction_re89) + ( 1.0 * reaction_re88));
	
% Species:   id = s306, name = Galactose, affected by kineticLaw
	xdot(92) = (1/(compartment_default))*(( 1.0 * reaction_re90) + (-1.0 * reaction_re88));
	
% Species:   id = s305, name = Galactokinase
% Warning species is not changed by either rules or reactions
	xdot(93) = ;
	
% Species:   id = s48, name = GTP, affected by kineticLaw
	xdot(94) = (1/(compartment_default))*(( 1.0 * reaction_re35));
	
% Species:   id = s241, name = GDP, affected by kineticLaw
	xdot(95) = (1/(compartment_default))*((-1.0 * reaction_re35));
	
% Species:   id = s352, name = GDP, affected by kineticLaw
	xdot(96) = (1/(compartment_c1))*((-1.0 * reaction_re19));
	
% Species:   id = s35, name = GA3P, affected by kineticLaw
	xdot(97) = (1/(compartment_default))*(( 1.0 * reaction_re37) + (-1.0 * reaction_re40) + (-1.0 * reaction_re39) + ( 1.0 * reaction_re41) + (-1.0 * reaction_re53) + ( 1.0 * reaction_re84) + ( 1.0 * reaction_re52) + ( 1.0 * reaction_re51));
	
% Species:   id = s186, name = G6PDehydrogenase
% Warning species is not changed by either rules or reactions
	xdot(98) = ;
	
% Species:   id = s234, name = G6P, affected by kineticLaw
	xdot(99) = (1/(compartment_default))*(( 1.0 * reaction_re25) + (-1.0 * reaction_re32) + (-1.0 * reaction_re26) + (-1.0 * reaction_re43) + (-1.0 * reaction_re54));
	
% Species:   id = s85, name = G3P DEHYDROGENASE
% Warning species is not changed by either rules or reactions
	xdot(100) = ;
	
% Species:   id = s195, name = G1P, affected by kineticLaw
	xdot(101) = (1/(compartment_default))*((-1.0 * reaction_re48) + ( 1.0 * reaction_re54) + ( 1.0 * reaction_re55) + ( 1.0 * reaction_re57) + ( 1.0 * reaction_re91));
	
% Species:   id = s77, name = G-6-P Phosphatase
% Warning species is not changed by either rules or reactions
	xdot(102) = ;
	
% Species:   id = s40, name = Fumarate, affected by kineticLaw
	xdot(103) = (1/(compartment_c1))*(( 1.0 * reaction_re24) + ( 1.0 * reaction_re20) + (-1.0 * reaction_re21));
	
% Species:   id = s27, name = Fumarase
% Warning species is not changed by either rules or reactions
	xdot(104) = ;
	
% Species:   id = s286, name = Fructose, affected by kineticLaw
	xdot(105) = (1/(compartment_default))*(( 1.0 * reaction_re80) + (-1.0 * reaction_re79));
	
% Species:   id = s287, name = Fructokinase
% Warning species is not changed by either rules or reactions
	xdot(106) = ;
	
% Species:   id = s374, name = FeS, affected by kineticLaw
	xdot(107) = (1/(compartment_c1))*((-1.0 * reaction_re63) + ( 1.0 * reaction_re62));
	
% Species:   id = s377, name = FeS, affected by kineticLaw
	xdot(108) = (1/(compartment_c2))*((-1.0 * reaction_re59) + ( 1.0 * reaction_re58) + (-1.0 * reaction_re66) + ( 1.0 * reaction_re66));
	
% Species:   id = s269, name = FMN, affected by kineticLaw
	xdot(109) = (1/(compartment_c2))*(( 1.0 * reaction_re77) + (-1.0 * reaction_re78) + (-1.0 * reaction_re58) + (-1.0 * reaction_re72));
	
% Species:   id = s353, name = FADH2, affected by kineticLaw
	xdot(110) = (1/(compartment_c1))*((-1.0 * reaction_re59) + (-1.0 * reaction_re100) + ( 1.0 * reaction_re100) + ( 1.0 * reaction_re20) + ( 1.0 * reaction_re110) + ( 1.0 * reaction_re117) + ( 1.0 * reaction_re125) + ( 1.0 * reaction_re124) + ( 1.0 * reaction_re141) + ( 1.0 * reaction_re132) + ( 1.0 * reaction_re140) + ( 1.0 * reaction_re139) + ( 1.0 * reaction_re149) + ( 1.0 * reaction_re148));
	
% Species:   id = s356, name = FAD, affected by kineticLaw
	xdot(111) = (1/(compartment_c1))*(( 1.0 * reaction_re59) + (-1.0 * reaction_re107) + ( 1.0 * reaction_re107) + (-1.0 * reaction_re20) + (-1.0 * reaction_re42) + (-1.0 * reaction_re110) + (-1.0 * reaction_re117) + (-1.0 * reaction_re125) + (-1.0 * reaction_re124) + (-1.0 * reaction_re141) + (-1.0 * reaction_re132) + (-1.0 * reaction_re140) + (-1.0 * reaction_re139) + (-1.0 * reaction_re149) + (-1.0 * reaction_re148));
	
% Species:   id = s53, name = FA, affected by kineticLaw
	xdot(112) = (1/(compartment_default))*((-1.0 * reaction_re82));
	
% Species:   id = s3, name = F6P, affected by kineticLaw
	xdot(113) = (1/(compartment_default))*((-1.0 * reaction_re27) + ( 1.0 * reaction_re33) + ( 1.0 * reaction_re26) + ( 1.0 * reaction_re53) + ( 1.0 * reaction_re52));
	
% Species:   id = s285, name = F1P, affected by kineticLaw
	xdot(114) = (1/(compartment_default))*(( 1.0 * reaction_re79) + (-1.0 * reaction_re83));
	
% Species:   id = s73, name = F1,6P, affected by kineticLaw
	xdot(115) = (1/(compartment_default))*((-1.0 * reaction_re37) + ( 1.0 * reaction_re27) + (-1.0 * reaction_re38) + (-1.0 * reaction_re33));
	
% Species:   id = s31, name = F1,6BISPHOSPHATASE
% Warning species is not changed by either rules or reactions
	xdot(116) = ;
	
% Species:   id = s247, name = Erythrose4P, affected by kineticLaw
	xdot(117) = (1/(compartment_default))*(( 1.0 * reaction_re53) + (-1.0 * reaction_re52));
	
% Species:   id = s194, name = Epimerase
% Warning species is not changed by either rules or reactions
	xdot(118) = ;
	
% Species:   id = s365, name = Enoyl-CoA hydratase
% Warning species is not changed by either rules or reactions
	xdot(119) = ;
	
% Species:   id = s87, name = ENOLASE
% Warning species is not changed by either rules or reactions
	xdot(120) = ;
	
% Species:   id = s82, name = DHAP, affected by kineticLaw
	xdot(121) = (1/(compartment_default))*(( 1.0 * reaction_re38) + ( 1.0 * reaction_re39) + ( 1.0 * reaction_re83));
	
% Species:   id = s183, name = D-Ribulose5P, affected by kineticLaw
	xdot(122) = (1/(compartment_default))*(( 1.0 * reaction_re45) + (-1.0 * reaction_re46));
	
% Species:   id = s325, name = D-Beta-Hydroxybutyrate, affected by kineticLaw
	xdot(123) = (1/(compartment_c1))*(( 1.0 * reaction_re95));
	
% Species:   id = s330, name = D Betahydroxybutyrate dehydrogenase
% Warning species is not changed by either rules or reactions
	xdot(124) = ;
	
% Species:   id = s265, name = Cyb, affected by kineticLaw
	xdot(125) = (1/(compartment_c2))*(( 1.0 * reaction_re61) + (-1.0 * reaction_re62));
	
% Species:   id = s258, name = Cya-a3, affected by kineticLaw
	xdot(126) = (1/(compartment_c2))*(( 1.0 * reaction_re68) + ( 1.0 * reaction_re70) + ( 1.0 * reaction_re71) + ( 1.0 * reaction_re76));
	
% Species:   id = s263, name = CyC2, affected by kineticLaw
	xdot(127) = (1/(compartment_c2))*((-1.0 * reaction_re67) + ( 1.0 * reaction_re65));
	
% Species:   id = s262, name = CyC, affected by kineticLaw
	xdot(128) = (1/(compartment_c2))*((-1.0 * reaction_re68) + ( 1.0 * reaction_re67));
	
% Species:   id = s238, name = CoA-SH, affected by kineticLaw
	xdot(129) = (1/(compartment_default))*(( 1.0 * reaction_re159) + ( 1.0 * reaction_re160) + ( 1.0 * reaction_re161) + ( 1.0 * reaction_re162) + ( 1.0 * reaction_re163));
	
% Species:   id = s350, name = CoA-SH, affected by kineticLaw
	xdot(130) = (1/(compartment_c1))*(( 1.0 * reaction_re15) + (-1.0 * reaction_re18) + ( 1.0 * reaction_re19) + ( 1.0 * reaction_re92) + (-1.0 * reaction_re113) + (-1.0 * reaction_re116) + (-1.0 * reaction_re120) + (-1.0 * reaction_re123) + (-1.0 * reaction_re128) + (-1.0 * reaction_re131) + (-1.0 * reaction_re135) + (-1.0 * reaction_re138) + (-1.0 * reaction_re144) + ( 1.0 * reaction_re97) + (-1.0 * reaction_re96) + (-1.0 * reaction_re147));
	
% Species:   id = s92, name = Co-Ash, affected by kineticLaw
	xdot(131) = (1/(compartment_c1))*((-1.0 * reaction_re42));
	
% Species:   id = s38, name = Citrullyl AMP intermediate, affected by kineticLaw
	xdot(132) = (1/(compartment_c1))*(( 1.0 * reaction_re11) + (-1.0 * reaction_re12));
	
% Species:   id = s342, name = Citrulline, affected by kineticLaw
	xdot(133) = (1/(compartment_c1))*((-1.0 * reaction_re11) + (-1.0 * reaction_re10) + ( 1.0 * reaction_re10) + ( 1.0 * reaction_re9));
	
% Species:   id = s54, name = Citrate Synthase
% Warning species is not changed by either rules or reactions
	xdot(134) = ;
	
% Species:   id = s2, name = Citrate, affected by kineticLaw
	xdot(135) = (1/(compartment_c1))*(( 1.0 * reaction_re15) + (-1.0 * reaction_re16));
	
% Species:   id = s126, name = Carnitine_cyt, affected by kineticLaw
	xdot(136) = (1/(compartment_default))*((-1.0 * reaction_re159) + (-1.0 * reaction_re160) + (-1.0 * reaction_re161) + (-1.0 * reaction_re162) + (-1.0 * reaction_re163));
	
% Species:   id = s41, name = Carbamoyl phosphate synthetase I
% Warning species is not changed by either rules or reactions
	xdot(137) = ;
	
% Species:   id = s33, name = Carbamoyl phosphate, affected by kineticLaw
	xdot(138) = (1/(compartment_c1))*((-1.0 * reaction_re9) + ( 1.0 * reaction_re6));
	
% Species:   id = s237, name = CO2, affected by kineticLaw
	xdot(139) = (1/(compartment_default))*(( 1.0 * reaction_re45));
	
% Species:   id = s349, name = CO2, affected by kineticLaw
	xdot(140) = (1/(compartment_c1))*((-1.0 * reaction_re15) + ( 1.0 * reaction_re23) + ( 1.0 * reaction_re18) + ( 1.0 * reaction_re94));
	
% Species:   id = s122, name = CAC
% Warning species is not changed by either rules or reactions
	xdot(141) = ;
	
% Species:   id = s109, name = C8Acyl-CoA, affected by kineticLaw
	xdot(142) = (1/(compartment_c1))*(( 1.0 * reaction_re135) + (-1.0 * reaction_re139));
	
% Species:   id = s112, name = C8 L-3-hydroxyacyl-CoA, affected by kineticLaw
	xdot(143) = (1/(compartment_c1))*(( 1.0 * reaction_re136) + (-1.0 * reaction_re137));
	
% Species:   id = s111, name = C8 Ketoacyl-CoA, affected by kineticLaw
	xdot(144) = (1/(compartment_c1))*((-1.0 * reaction_re154) + (-1.0 * reaction_re138) + ( 1.0 * reaction_re137));
	
% Species:   id = s113, name = C8 2-trans-enoyl-CoA, affected by kineticLaw
	xdot(145) = (1/(compartment_c1))*(( 1.0 * reaction_re139) + (-1.0 * reaction_re136));
	
% Species:   id = s110, name = C6Acyl-CoA, affected by kineticLaw
	xdot(146) = (1/(compartment_c1))*(( 1.0 * reaction_re138) + (-1.0 * reaction_re149));
	
% Species:   id = s115, name = C6 L-3-hydroxyacyl-CoA, affected by kineticLaw
	xdot(147) = (1/(compartment_c1))*(( 1.0 * reaction_re142) + (-1.0 * reaction_re143));
	
% Species:   id = s116, name = C6 Ketoacyl-CoA, affected by kineticLaw
	xdot(148) = (1/(compartment_c1))*((-1.0 * reaction_re152) + (-1.0 * reaction_re144) + ( 1.0 * reaction_re143));
	
% Species:   id = s114, name = C6 2-trans-enoyl-CoA, affected by kineticLaw
	xdot(149) = (1/(compartment_c1))*(( 1.0 * reaction_re149) + (-1.0 * reaction_re142));
	
% Species:   id = s117, name = C4Acyl-CoA, affected by kineticLaw
	xdot(150) = (1/(compartment_c1))*(( 1.0 * reaction_re144) + (-1.0 * reaction_re148));
	
% Species:   id = s120, name = C4 L-3-hydroxyacyl-CoA, affected by kineticLaw
	xdot(151) = (1/(compartment_c1))*(( 1.0 * reaction_re145) + (-1.0 * reaction_re146));
	
% Species:   id = s119, name = C4 Ketoacyl-CoA, affected by kineticLaw
	xdot(152) = (1/(compartment_c1))*((-1.0 * reaction_re147) + ( 1.0 * reaction_re146));
	
% Species:   id = s121, name = C4 2-trans-enoyl-CoA, affected by kineticLaw
	xdot(153) = (1/(compartment_c1))*(( 1.0 * reaction_re148) + (-1.0 * reaction_re145));
	
% Species:   id = s127, name = C22car_ims, affected by kineticLaw
	xdot(154) = (1/(compartment_c3))*((-1.0 * reaction_re164) + ( 1.0 * reaction_re159));
	
% Species:   id = s367, name = C22car_ims, affected by kineticLaw
	xdot(155) = (1/(compartment_c1))*(( 1.0 * reaction_re164) + (-1.0 * reaction_re169));
	
% Species:   id = s15, name = C22Acyl-CoA, affected by kineticLaw
	xdot(156) = (1/(compartment_c1))*(( 1.0 * reaction_re169) + (-1.0 * reaction_re110));
	
% Species:   id = s22, name = C22 L-3-hydroxyacyl-CoA, affected by kineticLaw
	xdot(157) = (1/(compartment_c1))*(( 1.0 * reaction_re111) + (-1.0 * reaction_re112));
	
% Species:   id = s37, name = C22 Ketoacyl-CoA, affected by kineticLaw
	xdot(158) = (1/(compartment_c1))*((-1.0 * reaction_re150) + (-1.0 * reaction_re113) + ( 1.0 * reaction_re112));
	
% Species:   id = s125, name = C22 AcylCoA_cyt, affected by kineticLaw
	xdot(159) = (1/(compartment_default))*((-1.0 * reaction_re159));
	
% Species:   id = s19, name = C22 2-trans-enoyl-CoA, affected by kineticLaw
	xdot(160) = (1/(compartment_c1))*(( 1.0 * reaction_re110) + (-1.0 * reaction_re111));
	
% Species:   id = s129, name = C20car_ims, affected by kineticLaw
	xdot(161) = (1/(compartment_c3))*((-1.0 * reaction_re165) + ( 1.0 * reaction_re160));
	
% Species:   id = s371, name = C20car_ims, affected by kineticLaw
	xdot(162) = (1/(compartment_c1))*(( 1.0 * reaction_re165) + (-1.0 * reaction_re170));
	
% Species:   id = s42, name = C20Acyl-CoA, affected by kineticLaw
	xdot(163) = (1/(compartment_c1))*(( 1.0 * reaction_re170) + ( 1.0 * reaction_re113) + (-1.0 * reaction_re117));
	
% Species:   id = s68, name = C20 L-3-hydroxyacyl-CoA, affected by kineticLaw
	xdot(164) = (1/(compartment_c1))*(( 1.0 * reaction_re114) + (-1.0 * reaction_re115));
	
% Species:   id = s66, name = C20 Ketoacyl-CoA, affected by kineticLaw
	xdot(165) = (1/(compartment_c1))*((-1.0 * reaction_re151) + (-1.0 * reaction_re116) + ( 1.0 * reaction_re115));
	
% Species:   id = s128, name = C20 AcylCoA_cyt, affected by kineticLaw
	xdot(166) = (1/(compartment_default))*((-1.0 * reaction_re160));
	
% Species:   id = s69, name = C20 2-trans-enoyl-CoA, affected by kineticLaw
	xdot(167) = (1/(compartment_c1))*(( 1.0 * reaction_re117) + (-1.0 * reaction_re114));
	
% Species:   id = s131, name = C18car_ims, affected by kineticLaw
	xdot(168) = (1/(compartment_c3))*((-1.0 * reaction_re166) + ( 1.0 * reaction_re161));
	
% Species:   id = s370, name = C18car_ims, affected by kineticLaw
	xdot(169) = (1/(compartment_c1))*(( 1.0 * reaction_re166) + (-1.0 * reaction_re171));
	
% Species:   id = s65, name = C18Acyl-CoA, affected by kineticLaw
	xdot(170) = (1/(compartment_c1))*(( 1.0 * reaction_re171) + ( 1.0 * reaction_re116) + (-1.0 * reaction_re125));
	
% Species:   id = s72, name = C18 L-3-hydroxyacyl-CoA, affected by kineticLaw
	xdot(171) = (1/(compartment_c1))*(( 1.0 * reaction_re118) + (-1.0 * reaction_re119));
	
% Species:   id = s80, name = C18 Ketoacyl-CoA, affected by kineticLaw
	xdot(172) = (1/(compartment_c1))*((-1.0 * reaction_re153) + (-1.0 * reaction_re120) + ( 1.0 * reaction_re119));
	
% Species:   id = s130, name = C18 AcylCoA_cyt, affected by kineticLaw
	xdot(173) = (1/(compartment_default))*((-1.0 * reaction_re161));
	
% Species:   id = s70, name = C18 2-trans-enoyl-CoA, affected by kineticLaw
	xdot(174) = (1/(compartment_c1))*(( 1.0 * reaction_re125) + (-1.0 * reaction_re118));
	
% Species:   id = s133, name = C16car_ims, affected by kineticLaw
	xdot(175) = (1/(compartment_c3))*((-1.0 * reaction_re167) + ( 1.0 * reaction_re162));
	
% Species:   id = s369, name = C16car_ims, affected by kineticLaw
	xdot(176) = (1/(compartment_c1))*(( 1.0 * reaction_re167) + (-1.0 * reaction_re172));
	
% Species:   id = s83, name = C16Acyl-CoA, affected by kineticLaw
	xdot(177) = (1/(compartment_c1))*(( 1.0 * reaction_re172) + ( 1.0 * reaction_re120) + (-1.0 * reaction_re124));
	
% Species:   id = s96, name = C16 L-3-hydroxyacyl-CoA, affected by kineticLaw
	xdot(178) = (1/(compartment_c1))*(( 1.0 * reaction_re121) + (-1.0 * reaction_re122));
	
% Species:   id = s89, name = C16 Ketoacyl-CoA, affected by kineticLaw
	xdot(179) = (1/(compartment_c1))*((-1.0 * reaction_re156) + (-1.0 * reaction_re123) + ( 1.0 * reaction_re122));
	
% Species:   id = s132, name = C16 AcylCoA_cyt, affected by kineticLaw
	xdot(180) = (1/(compartment_default))*((-1.0 * reaction_re162));
	
% Species:   id = s97, name = C16 2-trans-enoyl-CoA, affected by kineticLaw
	xdot(181) = (1/(compartment_c1))*(( 1.0 * reaction_re124) + (-1.0 * reaction_re121));
	
% Species:   id = s135, name = C14car_ims, affected by kineticLaw
	xdot(182) = (1/(compartment_c3))*((-1.0 * reaction_re168) + ( 1.0 * reaction_re163));
	
% Species:   id = s368, name = C14car_ims, affected by kineticLaw
	xdot(183) = (1/(compartment_c1))*(( 1.0 * reaction_re168) + (-1.0 * reaction_re173));
	
% Species:   id = s84, name = C14Acyl-CoA, affected by kineticLaw
	xdot(184) = (1/(compartment_c1))*(( 1.0 * reaction_re173) + ( 1.0 * reaction_re123) + (-1.0 * reaction_re141));
	
% Species:   id = s99, name = C14 L-3-hydroxyacyl-CoA, affected by kineticLaw
	xdot(185) = (1/(compartment_c1))*(( 1.0 * reaction_re126) + (-1.0 * reaction_re127));
	
% Species:   id = s100, name = C14 Ketoacyl-CoA, affected by kineticLaw
	xdot(186) = (1/(compartment_c1))*((-1.0 * reaction_re157) + (-1.0 * reaction_re128) + ( 1.0 * reaction_re127));
	
% Species:   id = s134, name = C14 AcylCoA_cyt, affected by kineticLaw
	xdot(187) = (1/(compartment_default))*((-1.0 * reaction_re163));
	
% Species:   id = s98, name = C14 2-trans-enoyl-CoA, affected by kineticLaw
	xdot(188) = (1/(compartment_c1))*(( 1.0 * reaction_re141) + (-1.0 * reaction_re126));
	
% Species:   id = s101, name = C12Acyl-CoA, affected by kineticLaw
	xdot(189) = (1/(compartment_c1))*(( 1.0 * reaction_re128) + (-1.0 * reaction_re132));
	
% Species:   id = s104, name = C12 L-3-hydroxyacyl-CoA, affected by kineticLaw
	xdot(190) = (1/(compartment_c1))*(( 1.0 * reaction_re129) + (-1.0 * reaction_re130));
	
% Species:   id = s103, name = C12 Ketoacyl-CoA, affected by kineticLaw
	xdot(191) = (1/(compartment_c1))*((-1.0 * reaction_re158) + (-1.0 * reaction_re131) + ( 1.0 * reaction_re130));
	
% Species:   id = s105, name = C12 2-trans-enoyl-CoA, affected by kineticLaw
	xdot(192) = (1/(compartment_c1))*(( 1.0 * reaction_re132) + (-1.0 * reaction_re129));
	
% Species:   id = s102, name = C10Acyl-CoA, affected by kineticLaw
	xdot(193) = (1/(compartment_c1))*(( 1.0 * reaction_re131) + (-1.0 * reaction_re140));
	
% Species:   id = s107, name = C10 L-3-hydroxyacyl-CoA, affected by kineticLaw
	xdot(194) = (1/(compartment_c1))*(( 1.0 * reaction_re133) + (-1.0 * reaction_re134));
	
% Species:   id = s108, name = C10 Ketoacyl-CoA, affected by kineticLaw
	xdot(195) = (1/(compartment_c1))*((-1.0 * reaction_re155) + (-1.0 * reaction_re135) + ( 1.0 * reaction_re134));
	
% Species:   id = s106, name = C10 2-trans-enoyl-CoA, affected by kineticLaw
	xdot(196) = (1/(compartment_c1))*(( 1.0 * reaction_re140) + (-1.0 * reaction_re133));
	
% Species:   id = s366, name = Beta-hydroxyacyl-CoA dehydrogenase
% Warning species is not changed by either rules or reactions
	xdot(197) = ;
	
% Species:   id = s332, name = Beta-KetoacylCoA dehydrogenase
% Warning species is not changed by either rules or reactions
	xdot(198) = ;
	
% Species:   id = s24, name = Aspartate aminotransferase
% Warning species is not changed by either rules or reactions
	xdot(199) = ;
	
% Species:   id = s23, name = Aspartate, affected by kineticLaw
	xdot(200) = (1/(compartment_c1))*((-1.0 * reaction_re12) + ( 1.0 * reaction_re3));
	
% Species:   id = s39, name = Arginosuccinate, affected by kineticLaw
	xdot(201) = (1/(compartment_c1))*(( 1.0 * reaction_re12) + (-1.0 * reaction_re24));
	
% Species:   id = s343, name = Arginine, affected by kineticLaw
	xdot(202) = (1/(compartment_c1))*((-1.0 * reaction_re14) + ( 1.0 * reaction_re24) + (-1.0 * reaction_re13) + ( 1.0 * reaction_re13));
	
% Species:   id = s12, name = Amino acids, affected by kineticLaw
	xdot(203) = (1/(compartment_default))*((-1.0 * reaction_re2));
	
% Species:   id = s254, name = Alpha1,6-Glycosidase
% Warning species is not changed by either rules or reactions
	xdot(204) = ;
	
% Species:   id = s57, name = Alpha-KG dehydrgenase complex
% Warning species is not changed by either rules or reactions
	xdot(205) = ;
	
% Species:   id = s5, name = Alpha-KG, affected by kineticLaw
	xdot(206) = (1/(compartment_c1))*(( 1.0 * reaction_re23) + (-1.0 * reaction_re18));
	
% Species:   id = s17, name = Alpha keto acid, affected by kineticLaw
	xdot(207) = (1/(compartment_default))*(( 1.0 * reaction_re5) + (-1.0 * reaction_re2));
	
% Species:   id = s21, name = Alpha KG, affected by kineticLaw
	xdot(208) = (1/(compartment_default))*((-1.0 * reaction_re5) + ( 1.0 * reaction_re2));
	
% Species:   id = s291, name = Aldolase
% Warning species is not changed by either rules or reactions
	xdot(209) = ;
	
% Species:   id = s14, name = Alanine, affected by kineticLaw
	xdot(210) = (1/(compartment_default))*(( 1.0 * reaction_re99) + (-1.0 * reaction_re5));
	
% Species:   id = s364, name = Acyl-CoA dehydrogenase
% Warning species is not changed by either rules or reactions
	xdot(211) = ;
	
% Species:   id = s354, name = Aconitase
% Warning species is not changed by either rules or reactions
	xdot(212) = ;
	
% Species:   id = s326, name = AcetylCoA, affected by kineticLaw
	xdot(213) = (1/(compartment_c1))*((-1.0 * reaction_re92));
	
% Species:   id = s324, name = Acetone, affected by kineticLaw
	xdot(214) = (1/(compartment_c1))*(( 1.0 * reaction_re94));
	
% Species:   id = s321, name = AcetoacetylCoA, affected by kineticLaw
	xdot(215) = (1/(compartment_c1))*((-1.0 * reaction_re92) + ( 1.0 * reaction_re98) + ( 1.0 * reaction_re97) + (-1.0 * reaction_re96));
	
% Species:   id = s328, name = Acetoacetate Decarboxylase
% Warning species is not changed by either rules or reactions
	xdot(216) = ;
	
% Species:   id = s323, name = Acetoacetate, affected by kineticLaw
	xdot(217) = (1/(compartment_c1))*(( 1.0 * reaction_re93) + (-1.0 * reaction_re94) + (-1.0 * reaction_re95) + (-1.0 * reaction_re98));
	
% Species:   id = s63, name = ATP, affected by kineticLaw
	xdot(218) = (1/(compartment_default))*((-1.0 * reaction_re27) + (-1.0 * reaction_re36) + (-1.0 * reaction_re25) + ( 1.0 * reaction_re31) + ( 1.0 * reaction_re28) + (-1.0 * reaction_re34) + (-1.0 * reaction_re57) + (-1.0 * reaction_re79) + (-1.0 * reaction_re84) + (-1.0 * reaction_re88));
	
% Species:   id = s345, name = ATP, affected by kineticLaw
	xdot(219) = (1/(compartment_c1))*((-1.0 * reaction_re11) + (-1.0 * reaction_re12) + ( 1.0 * reaction_re19) + (-1.0 * reaction_re175));
	
% Species:   id = s47, name = AMP, affected by kineticLaw
	xdot(220) = (1/(compartment_c1))*(( 1.0 * reaction_re12) + ( 1.0 * reaction_re182));
	
% Species:   id = s46, name = ADP, affected by kineticLaw
	xdot(221) = (1/(compartment_default))*(( 1.0 * reaction_re27) + ( 1.0 * reaction_re36) + ( 1.0 * reaction_re25) + (-1.0 * reaction_re31) + (-1.0 * reaction_re28) + ( 1.0 * reaction_re34) + ( 1.0 * reaction_re57) + ( 1.0 * reaction_re79) + ( 1.0 * reaction_re84) + ( 1.0 * reaction_re88));
	
% Species:   id = s346, name = ADP, affected by kineticLaw
	xdot(222) = (1/(compartment_c1))*(( 1.0 * reaction_re11));
	
% Species:   id = s348, name = A CoA, affected by kineticLaw
	xdot(223) = (1/(compartment_c1))*(( 1.0 * reaction_re93) + ( 1.0 * reaction_re150) + ( 1.0 * reaction_re151) + ( 1.0 * reaction_re152) + ( 1.0 * reaction_re153) + ( 1.0 * reaction_re154) + ( 1.0 * reaction_re155) + ( 1.0 * reaction_re156) + ( 1.0 * reaction_re157) + ( 1.0 * reaction_re158) + (-1.0 * reaction_re15) + ( 1.0 * reaction_re42) + (-1.0 * reaction_re97) + ( 1.0 * reaction_re96) + ( 1.0 * reaction_re147));
	
% Species:   id = s192, name = 6PGluconate dehydrogenase
% Warning species is not changed by either rules or reactions
	xdot(224) = ;
	
% Species:   id = s182, name = 6PGluconate, affected by kineticLaw
	xdot(225) = (1/(compartment_default))*(( 1.0 * reaction_re44) + (-1.0 * reaction_re45));
	
% Species:   id = s181, name = 6PGDL, affected by kineticLaw
	xdot(226) = (1/(compartment_default))*(( 1.0 * reaction_re43) + (-1.0 * reaction_re44));
	
% Species:   id = s8, name = 3-PGA, affected by kineticLaw
	xdot(227) = (1/(compartment_default))*((-1.0 * reaction_re36) + (-1.0 * reaction_re29) + ( 1.0 * reaction_re28));
	
% Species:   id = s259, name = 2e, affected by kineticLaw
	xdot(228) = (1/(compartment_c2))*(( 1.0 * reaction_re63) + ( 1.0 * reaction_re75) + (-1.0 * reaction_re64));
	
% Species:   id = s300, name = 2NADH, affected by kineticLaw
	xdot(229) = (1/(compartment_default))*(( 1.0 * reaction_re89));
	
% Species:   id = s301, name = 2NAD+, affected by kineticLaw
	xdot(230) = (1/(compartment_default))*((-1.0 * reaction_re89));
	
% Species:   id = s358, name = 2H+, affected by kineticLaw
	xdot(231) = (1/(compartment_c1))*((-1.0 * reaction_re76) + (-1.0 * reaction_re75) + (-1.0 * reaction_re69));
	
% Species:   id = s389, name = 2H+, affected by kineticLaw
	xdot(232) = (1/(compartment_c3))*(( 1.0 * reaction_re72) + ( 1.0 * reaction_re73) + ( 1.0 * reaction_re74));
	
% Species:   id = s29, name = 2ATP, affected by kineticLaw
	xdot(233) = (1/(compartment_c1))*((-1.0 * reaction_re6));
	
% Species:   id = s30, name = 2ADP, affected by kineticLaw
	xdot(234) = (1/(compartment_c1))*(( 1.0 * reaction_re6));
	
% Species:   id = s75, name = 2-PGA, affected by kineticLaw
	xdot(235) = (1/(compartment_default))*(( 1.0 * reaction_re29) + (-1.0 * reaction_re30));
	
% Species:   id = s256, name = 1/2O2, affected by kineticLaw
	xdot(236) = (1/(compartment_c1))*((-1.0 * reaction_re70));
	
% Species:   id = s74, name = 1,3-BiPGA, affected by kineticLaw
	xdot(237) = (1/(compartment_default))*(( 1.0 * reaction_re36) + ( 1.0 * reaction_re40) + (-1.0 * reaction_re41) + (-1.0 * reaction_re28));
	
% Species:   id = s124, name = Creatine phosphate, affected by kineticLaw
	xdot(238) = (1/(compartment_c1))*((-1.0 * reaction_re175) + ( 1.0 * reaction_re182));
	
% Species:   id = s123, name = Creatine, affected by kineticLaw
	xdot(239) = (1/(compartment_c4))*(( 1.0 * reaction_re175) + (-1.0 * reaction_re182));
	
% Species:   id = s400, name = Creatine Kinase
% Warning species is not changed by either rules or reactions
	xdot(240) = ;
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


