
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// tPTEN_p   id: tPTEN
	tPTEN_p=0;
		
// pAkt_p   id: pAkt
	pAkt_p=0;
		
// tE3P_p   id: tE3P
	tE3P_p=0;
		
// tERKP_p   id: tERKP
	tERKP_p=0;
		
// tPTENP_p   id: tPTENP
	tPTENP_p=0;
		



xdot=[
//x(1)   ID: Default  initialValue: 1
	0;
	
//x(2)   ID: mu  initialValue: 0
	0;
	
//x(3)   ID: scal  initialValue: 1
	0;
	
//x(4)   ID: scall  initialValue: 0.6
	0;
	
//x(5)   ID: scalll  initialValue: 30
	0;
	
//x(6)   ID: tE3P_max  initialValue: 65
	0;
	
//x(7)   ID: tERKP_max  initialValue: 10
	0;
	
//x(8)   ID: pAkt_max  initialValue: 91
	0;
	
//x(9)   ID: E3_0  initialValue: 0
	0;
	
//x(10)   ID: PI0  initialValue: 70
	0;
	
//x(11)   ID: Akt0  initialValue: 10
	0;
	
//x(12)   ID: bpV  initialValue: 0
	0;
	
//x(13)   ID: LY  initialValue: 0
	0;
	
//x(14)   ID: PI3K_CY  initialValue: 0
	0;
	
//x(15)   ID: k1  initialValue: 0.005
	0;
	
//x(16)   ID: Kd_1  initialValue: 600
	0;
	
//x(17)   ID: k2  initialValue: 10
	0;
	
//x(18)   ID: Kd_2  initialValue: 10
	0;
	
//x(19)   ID: k51  initialValue: 0.01
	0;
	
//x(20)   ID: k53  initialValue: 0.01
	0;
	
//x(21)   ID: k3  initialValue: 1
	0;
	
//x(22)   ID: Kd_3  initialValue: 0.1
	0;
	
//x(23)   ID: V4  initialValue: 10
	0;
	
//x(24)   ID: K4  initialValue: 50
	0;
	
//x(25)   ID: k5  initialValue: 0.06
	0;
	
//x(26)   ID: Kd_5  initialValue: 1
	0;
	
//x(27)   ID: k6  initialValue: 12
	0;
	
//x(28)   ID: k_6  initialValue: 3
	0;
	
//x(29)   ID: k7  initialValue: 36
	0;
	
//x(30)   ID: Kd_7  initialValue: 9
	0;
	
//x(31)   ID: k8  initialValue: 12
	0;
	
//x(32)   ID: Kd_8  initialValue: 0.1
	0;
	
//x(33)   ID: k9  initialValue: 35
	0;
	
//x(34)   ID: k_9  initialValue: 0
	0;
	
//x(35)   ID: V10  initialValue: 0.0154
	0;
	
//x(36)   ID: K10  initialValue: 340
	0;
	
//x(37)   ID: k27  initialValue: 3
	0;
	
//x(38)   ID: Kd_27  initialValue: 1
	0;
	
//x(39)   ID: k28  initialValue: 300
	0;
	
//x(40)   ID: k_28  initialValue: 0
	0;
	
//x(41)   ID: k29  initialValue: 13520
	0;
	
//x(42)   ID: k_29  initialValue: 0
	0;
	
//x(43)   ID: V30  initialValue: 900
	0;
	
//x(44)   ID: k11  initialValue: 6
	0;
	
//x(45)   ID: K11  initialValue: 0.18
	0;
	
//x(46)   ID: V12  initialValue: 3
	0;
	
//x(47)   ID: K12  initialValue: 0.1
	0;
	
//x(48)   ID: k13  initialValue: 1
	0;
	
//x(49)   ID: K13  initialValue: 11.7
	0;
	
//x(50)   ID: k14  initialValue: 0.6
	0;
	
//x(51)   ID: K14  initialValue: 50
	0;
	
//x(52)   ID: E_raf  initialValue: 7
	0;
	
//x(53)   ID: k15  initialValue: 2.1
	0;
	
//x(54)   ID: K15  initialValue: 1
	0;
	
//x(55)   ID: k16  initialValue: 0.06
	0;
	
//x(56)   ID: Kd_16  initialValue: 1
	0;
	
//x(57)   ID: k16_kat  initialValue: 0.6
	0;
	
//x(58)   ID: k18  initialValue: 0.6
	0;
	
//x(59)   ID: k22  initialValue: 0.06
	0;
	
//x(60)   ID: k23  initialValue: 1.2
	0;
	
//x(61)   ID: K23  initialValue: 10
	0;
	
//x(62)   ID: V24  initialValue: 1.8
	0;
	
//x(63)   ID: K24  initialValue: 10
	0;
	
//x(64)   ID: k31  initialValue: 0.03
	0;
	
//x(65)   ID: K_d31  initialValue: 100
	0;
	
//x(66)   ID: k55  initialValue: 30
	0;
	
//x(67)   ID: k56  initialValue: 30
	0;
	
//x(68)   ID: k32  initialValue: 8000
	0;
	
//x(69)   ID: Kd_32  initialValue: 0.01
	0;
	
//x(70)   ID: k33  initialValue: 15
	0;
	
//x(71)   ID: k34  initialValue: 3.6
	0;
	
//x(72)   ID: V35  initialValue: 150
	0;
	
//x(73)   ID: K35  initialValue: 2
	0;
	
//x(74)   ID: k36  initialValue: 1
	0;
	
//x(75)   ID: Kd_36  initialValue: 2.2
	0;
	
//x(76)   ID: k37  initialValue: 150
	0;
	
//x(77)   ID: k38  initialValue: 150
	0;
	
//x(78)   ID: k39  initialValue: 15000
	0;
	
//x(79)   ID: Kd_39  initialValue: 20
	0;
	
//x(80)   ID: V40  initialValue: 15000
	0;
	
//x(81)   ID: K40  initialValue: 0.1
	0;
	
//x(82)   ID: k41  initialValue: 3
	0;
	
//x(83)   ID: Kd_41  initialValue: 0.1
	0;
	
//x(84)   ID: k42  initialValue: 45
	0;
	
//x(85)   ID: k43  initialValue: 30
	0;
	
//x(86)   ID: k47  initialValue: 0.3
	0;
	
//x(87)   ID: k48  initialValue: 0.001
	0;
	
//x(88)   ID: k49  initialValue: 0.003
	0;
	
//x(89)   ID: Kd_49  initialValue: 20000
	0;
	
//x(90)   ID: k50  initialValue: 0.6
	0;
	
//x(91)   ID: k_50  initialValue: 0.012
	0;
	
//x(92)   ID: k57  initialValue: 100
	0;
	
//x(93)   ID: Kd_57  initialValue: 10
	0;
	
//x(94)   ID: k58  initialValue: 100
	0;
	
//x(95)   ID: Kd_58  initialValue: 80
	0;
	
//x(96)   ID: sens  initialValue: 0
	0;
	
//x(97)   ID: Pool_1_  initialValue: 2900
	0;
	
//x(98)   ID: Pool_2_  initialValue: -2920
	0;
	
//x(99)   ID: Pool_3_  initialValue: 200
	0;
	
//x(100)   ID: Pool_4_  initialValue: 50
	0;
	
//x(101)   ID: Pool_5_  initialValue: 300
	0;
	
//x(102)   ID: Pool_6_  initialValue: 0
	0;
	
//x(103)   ID: Pool_7_  initialValue: 10
	0;
	
//x(104)   ID: Pool_8_  initialValue: 100
	0;
	
//x(105)   ID: Pool_9_  initialValue: 10
	0;
	
//x(106)   ID: Pool_10_  initialValue: 10
	0;
	
//x(107)   ID: Pool_11_  initialValue: 100
	0;
	
//x(108)   ID: Pool_12_  initialValue: 120
	0;
	
//x(109)   ID: Pool_13_  initialValue: 100
	0;
	
//x(110)   ID: Pool_14_  initialValue: 100
	0;
	
//x(111)   ID: E3  initialValue: 80
	(1/compartment_Default)*( (-1)*(1)* ( x(15) *(( x(111) * x(165) )-( x(16) * x(113) ))) );
	
//x(112)   ID: PI3K_LY  initialValue: 0
	(1/compartment_Default)*( (1)*(1)* ( x(94) *(( x(138) * x(13) )-( x(95) * x(112) ))) );
	
//x(113)   ID: E3H  initialValue: 0
	(1/compartment_Default)*( (-1)*(1)* ( x(17) *(( x(113) * x(114) )-( x(18) * x(115) ))) + (-1)*(1)* ( x(19) * x(113) ) + (1)*(1)* ( x(15) *(( x(111) * x(165) )-( x(16) * x(113) ))) );
	
//x(114)   ID: E2  initialValue: 100
	(1/compartment_Default)*( (-1)*(1)* ( x(17) *(( x(113) * x(114) )-( x(18) * x(115) ))) + (-1)*(1)* ( x(88) *(( x(158) * x(114) )-( x(89) * x(122) ))) + (-1)*(1)* ( x(17) *(( x(137) * x(114) )-( x(18) * x(115) ))) );
	
//x(115)   ID: E23H  initialValue: 0
	(1/compartment_Default)*( (-1)*(1)* ( x(21) *( x(115) -( x(22) * x(116) ))) + (-1)*(1)* ( x(20) * x(115) ) + (1)*(1)* ( x(17) *(( x(113) * x(114) )-( x(18) * x(115) ))) + (1)*(1)* (( x(23) * x(116) )/( x(24) + x(116) )) + (1)*(1)* ( x(17) *(( x(137) * x(114) )-( x(18) * x(115) ))) );
	
//x(116)   ID: E23HP  initialValue: 0
	(1/compartment_Default)*( (-1)*(1)* (( x(23) * x(116) )/( x(24) + x(116) )) + (-1)*(1)* ( x(25) *(( x(116) * x(117) )-( x(26) * x(118) ))) + (-1)*(1)* ( x(37) *(( x(116) * x(138) )-( x(38) * x(139) ))) + (-1)*(1)* ( x(87) * x(116) ) + (1)*(1)* ( x(21) *( x(115) -( x(22) * x(116) ))) + (1)*(1)* ( x(31) *( x(121) -( x(32) * x(116) * x(159) ))) + (1)*(1)* (( x(41) * x(152) )-( x(42) * x(116) * x(141) )) + (1)*(1)* ( x(21) *( x(127) -( x(22) * x(116) ))) );
	
//x(117)   ID: Shc  initialValue: 100
	(1/compartment_Default)*( (-1)*(1)* ( x(25) *(( x(116) * x(117) )-( x(26) * x(118) ))) + (1)*(1)* (( x(35) * x(164) )/( x(36) + x(164) )) );
	
//x(118)   ID: E23HP_Shc  initialValue: 0
	(1/compartment_Default)*( (-1)*(1)* (( x(27) * x(118) )-( x(28) * x(119) )) + (1)*(1)* ( x(25) *(( x(116) * x(117) )-( x(26) * x(118) ))) );
	
//x(119)   ID: E23HP_ShcP  initialValue: 0
	(1/compartment_Default)*( (-1)*(1)* ( x(29) *(( x(119) * x(120) )-( x(30) * x(121) ))) + (1)*(1)* (( x(27) * x(118) )-( x(28) * x(119) )) );
	
//x(120)   ID: GS  initialValue: 100
	(1/compartment_Default)*( (-1)*(1)* ( x(29) *(( x(119) * x(120) )-( x(30) * x(121) ))) + (1)*(1)* ( x(33) *( x(159) -( x(34) * x(164) * x(120) ))) );
	
//x(121)   ID: E23HP_ShGS  initialValue: 0
	(1/compartment_Default)*( (-1)*(1)* ( x(31) *( x(121) -( x(32) * x(116) * x(159) ))) + (1)*(1)* ( x(29) *(( x(119) * x(120) )-( x(30) * x(121) ))) );
	
//x(122)   ID: E2_Per  initialValue: 0
	(1/compartment_Default)*( (-1)*(1)* (( x(90) * x(122) )-( x(91) * x(160) )) + (1)*(1)* ( x(88) *(( x(158) * x(114) )-( x(89) * x(122) ))) );
	
//x(123)   ID: PTEN_bpV  initialValue: 0
	(1/compartment_Default)*( (1)*(1)* ( x(92) *(( x(144) * x(12) )-( x(93) * x(123) ))) );
	
//x(124)   ID: RasGDP  initialValue: 120
	(1/compartment_Default)*( (-1)*(1)* (( x(44) * x(124) * x(159) )/( x(45) + x(124) )) + (1)*(1)* (( x(46) * x(163) )/( x(47) + x(163) )) );
	
//x(125)   ID: PI3Ka_PIP3  initialValue: 0
	(1/compartment_Default)*( (-1)*(1)* ( x(67) * x(125) ) + (1)*(1)* ( x(66) * x(154) ) );
	
//x(126)   ID: Raf  initialValue: 100
	(1/compartment_Default)*( (-1)*(1)* (( x(48) * x(126) * x(163) )/( x(49) + x(126) )) + (1)*(1)* (( x(50) * x(162) *( x(156) + x(52) ))/( x(162) + x(51) )) );
	
//x(127)   ID: E23H_C  initialValue: 0
	(1/compartment_Default)*( (-1)*(1)* ( x(21) *( x(127) -( x(22) * x(116) ))) + (1)*(1)* ( x(20) * x(115) ) );
	
//x(128)   ID: MEK  initialValue: 10
	(1/compartment_Default)*( (-1)*(1)* (( x(53) * x(128) * x(162) )/( x(54) + x(128) )) + (1)*(1)* ( x(58) * x(132) ) );
	
//x(129)   ID: MEKP  initialValue: 0
	(1/compartment_Default)*( (-1)*(1)* ( x(55) * x(129) * x(130) ) + (-1)*(1)* (( x(53) * x(129) * x(162) )/( x(54) + x(129) )) + (1)*(1)* (( x(53) * x(128) * x(162) )/( x(54) + x(128) )) + (1)*(1)* ( x(59) * x(131) ) );
	
//x(130)   ID: PP2A  initialValue: 10
	(1/compartment_Default)*( (-1)*(1)* ( x(55) * x(129) * x(130) ) + (-1)*(1)* ( x(55) *(( x(130) * x(155) )-( x(56) * x(134) ))) + (-1)*(1)* ( x(82) * x(150) * x(130) ) + (-1)*(1)* ( x(82) *(( x(156) * x(130) )-( x(83) * x(157) ))) + (1)*(1)* ( x(58) * x(132) ) + (1)*(1)* ( x(59) * x(131) ) + (1)*(1)* ( x(85) * x(133) ) + (1)*(1)* ( x(86) * x(143) ) );
	
//x(131)   ID: MEKP_PP2A  initialValue: 0
	(1/compartment_Default)*( (-1)*(1)* ( x(57) * x(131) ) + (-1)*(1)* ( x(59) * x(131) ) + (1)*(1)* ( x(55) * x(129) * x(130) ) + (1)*(1)* ( x(57) * x(134) ) );
	
//x(132)   ID: MEK_PP2A  initialValue: 0
	(1/compartment_Default)*( (-1)*(1)* ( x(58) * x(132) ) + (1)*(1)* ( x(57) * x(131) ) );
	
//x(133)   ID: Akt_PIP3_PP2A  initialValue: 0
	(1/compartment_Default)*( (-1)*(1)* ( x(85) * x(133) ) + (1)*(1)* ( x(84) * x(143) ) );
	
//x(134)   ID: MEKPP_PP2A  initialValue: 0
	(1/compartment_Default)*( (-1)*(1)* ( x(57) * x(134) ) + (1)*(1)* ( x(55) *(( x(130) * x(155) )-( x(56) * x(134) ))) );
	
//x(135)   ID: ERK  initialValue: 10
	(1/compartment_Default)*( (-1)*(1)* (( x(60) * x(135) * x(155) )/( x(61) + x(135) )) + (1)*(1)* (( x(62) * x(136) )/( x(63) + x(136) )) );
	
//x(136)   ID: ERKP  initialValue: 0
	(1/compartment_Default)*( (-1)*(1)* (( x(62) * x(136) )/( x(63) + x(136) )) + (-1)*(1)* (( x(60) * x(136) * x(155) )/( x(61) + x(136) )) + (1)*(1)* (( x(60) * x(135) * x(155) )/( x(61) + x(135) )) + (1)*(1)* (( x(62) * x(161) )/( x(63) + x(161) )) );
	
//x(137)   ID: E3H_C  initialValue: 0
	(1/compartment_Default)*( (-1)*(1)* ( x(17) *(( x(137) * x(114) )-( x(18) * x(115) ))) + (1)*(1)* ( x(19) * x(113) ) );
	
//x(138)   ID: PI3K  initialValue: 200
	(1/compartment_Default)*( (-1)*(1)* ( x(37) *(( x(116) * x(138) )-( x(38) * x(139) ))) + (-1)*(1)* ( x(94) *(( x(138) * x(13) )-( x(95) * x(112) ))) + (1)*(1)* ( x(43) * x(141) ) );
	
//x(139)   ID: E23HP_PI3K  initialValue: 0
	(1/compartment_Default)*( (-1)*(1)* ( x(39) *( x(139) -( x(40) * x(152) ))) + (1)*(1)* ( x(37) *(( x(116) * x(138) )-( x(38) * x(139) ))) );
	
//x(140)   ID: Akt_PIP3  initialValue: 0
	(1/compartment_Default)*( (-1)*(1)* (( x(80) * x(140) )/( x(81) + x(140) )) + (1)*(1)* ( x(78) *(( x(145) * x(151) )-( x(79) * x(140) ))) + (1)*(1)* ( x(85) * x(133) ) );
	
//x(141)   ID: PI3Ka  initialValue: 0
	(1/compartment_Default)*( (-1)*(1)* ( x(43) * x(141) ) + (-1)*(1)* ( x(64) *(( x(142) * x(141) )-( x(65) * x(154) ))) + (1)*(1)* (( x(41) * x(152) )-( x(42) * x(116) * x(141) )) + (1)*(1)* ( x(67) * x(125) ) );
	
//x(142)   ID: PI2  initialValue: 300
	(1/compartment_Default)*( (-1)*(1)* ( x(64) *(( x(142) * x(141) )-( x(65) * x(154) ))) + (1)*(1)* ( x(71) * x(147) ) );
	
//x(143)   ID: Akt_PI_P_PP2A  initialValue: 0
	(1/compartment_Default)*( (-1)*(1)* ( x(84) * x(143) ) + (-1)*(1)* ( x(86) * x(143) ) + (1)*(1)* ( x(82) * x(150) * x(130) ) + (1)*(1)* ( x(84) * x(157) ) );
	
//x(144)   ID: PTEN  initialValue: 42.7798
	(1/compartment_Default)*( (-1)*(1)* ( x(68) *(( x(145) * x(144) )-( x(69) * x(146) ))) + (-1)*(1)* (( x(72) * x(144) )/( x(73) + x(144) )) + (-1)*(1)* ( x(74) *(( x(144) * x(148) )-( x(75) * x(149) ))) + (-1)*(1)* ( x(92) *(( x(144) * x(12) )-( x(93) * x(123) ))) + (1)*(1)* ( x(71) * x(147) ) + (1)*(2)* ( x(77) * x(153) ) );
	
//x(145)   ID: PIP3  initialValue: 8.05772E-12
	(1/compartment_Default)*( (-1)*(1)* ( x(68) *(( x(145) * x(144) )-( x(69) * x(146) ))) + (-1)*(1)* ( x(78) *(( x(145) * x(151) )-( x(79) * x(140) ))) + (1)*(1)* ( x(67) * x(125) ) );
	
//x(146)   ID: PTEN_PIP3  initialValue: 3.14554E-8
	(1/compartment_Default)*( (-1)*(1)* ( x(70) * x(146) ) + (1)*(1)* ( x(68) *(( x(145) * x(144) )-( x(69) * x(146) ))) );
	
//x(147)   ID: PTEN_PI  initialValue: 5.02914E-8
	(1/compartment_Default)*( (-1)*(1)* ( x(71) * x(147) ) + (1)*(1)* ( x(70) * x(146) ) );
	
//x(148)   ID: PTENP  initialValue: 3.39885
	(1/compartment_Default)*( (-1)*(1)* ( x(74) *(( x(144) * x(148) )-( x(75) * x(149) ))) + (1)*(1)* (( x(72) * x(144) )/( x(73) + x(144) )) );
	
//x(149)   ID: PTENP_PTEN  initialValue: 0.955337
	(1/compartment_Default)*( (-1)*(1)* ( x(76) * x(149) ) + (1)*(1)* ( x(74) *(( x(144) * x(148) )-( x(75) * x(149) ))) );
	
//x(150)   ID: Akt_PI_P  initialValue: 0
	(1/compartment_Default)*( (-1)*(1)* ( x(82) * x(150) * x(130) ) + (-1)*(1)* (( x(80) * x(150) )/( x(81) + x(150) )) + (1)*(1)* (( x(80) * x(140) )/( x(81) + x(140) )) + (1)*(1)* ( x(86) * x(143) ) );
	
//x(151)   ID: Akt  initialValue: 100
	(1/compartment_Default)*( (-1)*(1)* ( x(78) *(( x(145) * x(151) )-( x(79) * x(140) ))) );
	
//x(152)   ID: E23HP_PI3Ka  initialValue: 0
	(1/compartment_Default)*( (-1)*(1)* (( x(41) * x(152) )-( x(42) * x(116) * x(141) )) + (1)*(1)* ( x(39) *( x(139) -( x(40) * x(152) ))) );
	
//x(153)   ID: PTEN_PTEN  initialValue: 0.955337
	(1/compartment_Default)*( (-1)*(1)* ( x(77) * x(153) ) + (1)*(1)* ( x(76) * x(149) ) );
	
//x(154)   ID: PI3Ka_PI  initialValue: 0
	(1/compartment_Default)*( (-1)*(1)* ( x(66) * x(154) ) + (1)*(1)* ( x(64) *(( x(142) * x(141) )-( x(65) * x(154) ))) );
	
//x(155)   ID: MEKPP  initialValue: 0
	(1/compartment_Default)*( (-1)*(1)* ( x(55) *(( x(130) * x(155) )-( x(56) * x(134) ))) + (1)*(1)* (( x(53) * x(129) * x(162) )/( x(54) + x(129) )) );
	
//x(156)   ID: Akt_PI_PP  initialValue: 0
	(1/compartment_Default)*( (-1)*(1)* ( x(82) *(( x(156) * x(130) )-( x(83) * x(157) ))) + (1)*(1)* (( x(80) * x(150) )/( x(81) + x(150) )) );
	
//x(157)   ID: Akt_PI_PP_PP2A  initialValue: 0
	(1/compartment_Default)*( (-1)*(1)* ( x(84) * x(157) ) + (1)*(1)* ( x(82) *(( x(156) * x(130) )-( x(83) * x(157) ))) );
	
//x(158)   ID: Per  initialValue: 0
	(1/compartment_Default)*( (-1)*(1)* ( x(88) *(( x(158) * x(114) )-( x(89) * x(122) ))) );
	
//x(159)   ID: ShGS  initialValue: 0
	(1/compartment_Default)*( (-1)*(1)* ( x(33) *( x(159) -( x(34) * x(164) * x(120) ))) + (1)*(1)* ( x(31) *( x(121) -( x(32) * x(116) * x(159) ))) );
	
//x(160)   ID: E2Per  initialValue: 0
	(1/compartment_Default)*( (1)*(1)* (( x(90) * x(122) )-( x(91) * x(160) )) );
	
//x(161)   ID: ERKPP  initialValue: 0
	(1/compartment_Default)*( (-1)*(1)* (( x(62) * x(161) )/( x(63) + x(161) )) + (1)*(1)* (( x(60) * x(136) * x(155) )/( x(61) + x(136) )) );
	
//x(162)   ID: Rafa  initialValue: 0
	(1/compartment_Default)*( (-1)*(1)* (( x(50) * x(162) *( x(156) + x(52) ))/( x(162) + x(51) )) + (1)*(1)* (( x(48) * x(126) * x(163) )/( x(49) + x(126) )) );
	
//x(163)   ID: RasGTP  initialValue: 0
	(1/compartment_Default)*( (-1)*(1)* (( x(46) * x(163) )/( x(47) + x(163) )) + (1)*(1)* (( x(44) * x(124) * x(159) )/( x(45) + x(124) )) );
	
//x(164)   ID: ShcP  initialValue: 0
	(1/compartment_Default)*( (-1)*(1)* (( x(35) * x(164) )/( x(36) + x(164) )) + (1)*(1)* ( x(33) *( x(159) -( x(34) * x(164) * x(120) ))) );
	
//x(165)   ID: HRG  initialValue: 3000
	(1/compartment_Default)*( (-1)*(1)* ( x(15) *(( x(111) * x(165) )-( x(16) * x(113) ))) )
	];


	
endfunction
        x0=[1;0;1;0.6;30;65;10;91;0;70;10;0;0;0;0.005;600;10;10;0.01;0.01;1;0.1;10;50;0.06;1;12;3;36;9;12;0.1;35;0;0.0154;340;3;1;300;0;13520;0;900;6;0.18;3;0.1;1;11.7;0.6;50;7;2.1;1;0.06;1;0.6;0.6;0.06;1.2;10;1.8;10;0.03;100;30;30;8000;0.01;15;3.6;150;2;1;2.2;150;150;15000;20;15000;0.1;3;0.1;45;30;0.3;0.001;0.003;20000;0.6;0.012;100;10;100;80;0;2900;-2920;200;50;300;0;10;100;10;10;100;120;100;100;80;0;0;100;0;0;100;0;0;100;0;0;0;120;0;100;0;10;0;10;0;0;0;0;10;0;0;200;0;0;0;300;0;42.7798;8.05772E-12;3.14554E-8;5.02914E-8;3.39885;0.955337;0;100;0;0.955337;0;0;0;0;0;0;0;0;0;0;0;3000];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)' 'x(14)' 'x(15)' 'x(16)' 'x(17)' 'x(18)' 'x(19)' 'x(20)' 'x(21)' 'x(22)' 'x(23)' 'x(24)' 'x(25)' 'x(26)' 'x(27)' 'x(28)' 'x(29)' 'x(30)' 'x(31)' 'x(32)' 'x(33)' 'x(34)' 'x(35)' 'x(36)' 'x(37)' 'x(38)' 'x(39)' 'x(40)' 'x(41)' 'x(42)' 'x(43)' 'x(44)' 'x(45)' 'x(46)' 'x(47)' 'x(48)' 'x(49)' 'x(50)' 'x(51)' 'x(52)' 'x(53)' 'x(54)' 'x(55)' 'x(56)' 'x(57)' 'x(58)' 'x(59)' 'x(60)' 'x(61)' 'x(62)' 'x(63)' 'x(64)' 'x(65)' 'x(66)' 'x(67)' 'x(68)' 'x(69)' 'x(70)' 'x(71)' 'x(72)' 'x(73)' 'x(74)' 'x(75)' 'x(76)' 'x(77)' 'x(78)' 'x(79)' 'x(80)' 'x(81)' 'x(82)' 'x(83)' 'x(84)' 'x(85)' 'x(86)' 'x(87)' 'x(88)' 'x(89)' 'x(90)' 'x(91)' 'x(92)' 'x(93)' 'x(94)' 'x(95)' 'x(96)' 'x(97)' 'x(98)' 'x(99)' 'x(100)' 'x(101)' 'x(102)' 'x(103)' 'x(104)' 'x(105)' 'x(106)' 'x(107)' 'x(108)' 'x(109)' 'x(110)' 'x(111)' 'x(112)' 'x(113)' 'x(114)' 'x(115)' 'x(116)' 'x(117)' 'x(118)' 'x(119)' 'x(120)' 'x(121)' 'x(122)' 'x(123)' 'x(124)' 'x(125)' 'x(126)' 'x(127)' 'x(128)' 'x(129)' 'x(130)' 'x(131)' 'x(132)' 'x(133)' 'x(134)' 'x(135)' 'x(136)' 'x(137)' 'x(138)' 'x(139)' 'x(140)' 'x(141)' 'x(142)' 'x(143)' 'x(144)' 'x(145)' 'x(146)' 'x(147)' 'x(148)' 'x(149)' 'x(150)' 'x(151)' 'x(152)' 'x(153)' 'x(154)' 'x(155)' 'x(156)' 'x(157)' 'x(158)' 'x(159)' 'x(160)' 'x(161)' 'x(162)' 'x(163)' 'x(164)' 'x(165)'],[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18;19;20;21;22;23;24;25;26;27;28;29;30;31;32;33;34;35;36;37;38;39;40;41;42;43;44;45;46;47;48;49;50;51;52;53;54;55;56;57;58;59;60;61;62;63;64;65;66;67;68;69;70;71;72;73;74;75;76;77;78;79;80;81;82;83;84;85;86;87;88;89;90;91;92;93;94;95;96;97;98;99;100;101;102;103;104;105;106;107;108;109;110;111;112;113;114;115;116;117;118;119;120;121;122;123;124;125;126;127;128;129;130;131;132;133;134;135;136;137;138;139;140;141;142;143;144;145;146;147;148;149;150;151;152;153;154;155;156;157;158;159;160;161;162;163;164;165])

//real_variable:
	
	
//x(1)   id: Default  initialValue: 1
	
//x(2)   id: mu  initialValue: 0
	
//x(3)   id: scal  initialValue: 1
	
//x(4)   id: scall  initialValue: 0.6
	
//x(5)   id: scalll  initialValue: 30
	
//x(6)   id: tE3P_max  initialValue: 65
	
//x(7)   id: tERKP_max  initialValue: 10
	
//x(8)   id: pAkt_max  initialValue: 91
	
//x(9)   id: E3_0  initialValue: 0
	
//x(10)   id: PI0  initialValue: 70
	
//x(11)   id: Akt0  initialValue: 10
	
//x(12)   id: bpV  initialValue: 0
	
//x(13)   id: LY  initialValue: 0
	
//x(14)   id: PI3K_CY  initialValue: 0
	
//x(15)   id: k1  initialValue: 0.005
	
//x(16)   id: Kd_1  initialValue: 600
	
//x(17)   id: k2  initialValue: 10
	
//x(18)   id: Kd_2  initialValue: 10
	
//x(19)   id: k51  initialValue: 0.01
	
//x(20)   id: k53  initialValue: 0.01
	
//x(21)   id: k3  initialValue: 1
	
//x(22)   id: Kd_3  initialValue: 0.1
	
//x(23)   id: V4  initialValue: 10
	
//x(24)   id: K4  initialValue: 50
	
//x(25)   id: k5  initialValue: 0.06
	
//x(26)   id: Kd_5  initialValue: 1
	
//x(27)   id: k6  initialValue: 12
	
//x(28)   id: k_6  initialValue: 3
	
//x(29)   id: k7  initialValue: 36
	
//x(30)   id: Kd_7  initialValue: 9
	
//x(31)   id: k8  initialValue: 12
	
//x(32)   id: Kd_8  initialValue: 0.1
	
//x(33)   id: k9  initialValue: 35
	
//x(34)   id: k_9  initialValue: 0
	
//x(35)   id: V10  initialValue: 0.0154
	
//x(36)   id: K10  initialValue: 340
	
//x(37)   id: k27  initialValue: 3
	
//x(38)   id: Kd_27  initialValue: 1
	
//x(39)   id: k28  initialValue: 300
	
//x(40)   id: k_28  initialValue: 0
	
//x(41)   id: k29  initialValue: 13520
	
//x(42)   id: k_29  initialValue: 0
	
//x(43)   id: V30  initialValue: 900
	
//x(44)   id: k11  initialValue: 6
	
//x(45)   id: K11  initialValue: 0.18
	
//x(46)   id: V12  initialValue: 3
	
//x(47)   id: K12  initialValue: 0.1
	
//x(48)   id: k13  initialValue: 1
	
//x(49)   id: K13  initialValue: 11.7
	
//x(50)   id: k14  initialValue: 0.6
	
//x(51)   id: K14  initialValue: 50
	
//x(52)   id: E_raf  initialValue: 7
	
//x(53)   id: k15  initialValue: 2.1
	
//x(54)   id: K15  initialValue: 1
	
//x(55)   id: k16  initialValue: 0.06
	
//x(56)   id: Kd_16  initialValue: 1
	
//x(57)   id: k16_kat  initialValue: 0.6
	
//x(58)   id: k18  initialValue: 0.6
	
//x(59)   id: k22  initialValue: 0.06
	
//x(60)   id: k23  initialValue: 1.2
	
//x(61)   id: K23  initialValue: 10
	
//x(62)   id: V24  initialValue: 1.8
	
//x(63)   id: K24  initialValue: 10
	
//x(64)   id: k31  initialValue: 0.03
	
//x(65)   id: K_d31  initialValue: 100
	
//x(66)   id: k55  initialValue: 30
	
//x(67)   id: k56  initialValue: 30
	
//x(68)   id: k32  initialValue: 8000
	
//x(69)   id: Kd_32  initialValue: 0.01
	
//x(70)   id: k33  initialValue: 15
	
//x(71)   id: k34  initialValue: 3.6
	
//x(72)   id: V35  initialValue: 150
	
//x(73)   id: K35  initialValue: 2
	
//x(74)   id: k36  initialValue: 1
	
//x(75)   id: Kd_36  initialValue: 2.2
	
//x(76)   id: k37  initialValue: 150
	
//x(77)   id: k38  initialValue: 150
	
//x(78)   id: k39  initialValue: 15000
	
//x(79)   id: Kd_39  initialValue: 20
	
//x(80)   id: V40  initialValue: 15000
	
//x(81)   id: K40  initialValue: 0.1
	
//x(82)   id: k41  initialValue: 3
	
//x(83)   id: Kd_41  initialValue: 0.1
	
//x(84)   id: k42  initialValue: 45
	
//x(85)   id: k43  initialValue: 30
	
//x(86)   id: k47  initialValue: 0.3
	
//x(87)   id: k48  initialValue: 0.001
	
//x(88)   id: k49  initialValue: 0.003
	
//x(89)   id: Kd_49  initialValue: 20000
	
//x(90)   id: k50  initialValue: 0.6
	
//x(91)   id: k_50  initialValue: 0.012
	
//x(92)   id: k57  initialValue: 100
	
//x(93)   id: Kd_57  initialValue: 10
	
//x(94)   id: k58  initialValue: 100
	
//x(95)   id: Kd_58  initialValue: 80
	
//x(96)   id: sens  initialValue: 0
	
//x(97)   id: Pool_1_  initialValue: 2900
	
//x(98)   id: Pool_2_  initialValue: -2920
	
//x(99)   id: Pool_3_  initialValue: 200
	
//x(100)   id: Pool_4_  initialValue: 50
	
//x(101)   id: Pool_5_  initialValue: 300
	
//x(102)   id: Pool_6_  initialValue: 0
	
//x(103)   id: Pool_7_  initialValue: 10
	
//x(104)   id: Pool_8_  initialValue: 100
	
//x(105)   id: Pool_9_  initialValue: 10
	
//x(106)   id: Pool_10_  initialValue: 10
	
//x(107)   id: Pool_11_  initialValue: 100
	
//x(108)   id: Pool_12_  initialValue: 120
	
//x(109)   id: Pool_13_  initialValue: 100
	
//x(110)   id: Pool_14_  initialValue: 100
	
//x(111)   id: E3  initialValue: 80
	
//x(112)   id: PI3K_LY  initialValue: 0
	
//x(113)   id: E3H  initialValue: 0
	
//x(114)   id: E2  initialValue: 100
	
//x(115)   id: E23H  initialValue: 0
	
//x(116)   id: E23HP  initialValue: 0
	
//x(117)   id: Shc  initialValue: 100
	
//x(118)   id: E23HP_Shc  initialValue: 0
	
//x(119)   id: E23HP_ShcP  initialValue: 0
	
//x(120)   id: GS  initialValue: 100
	
//x(121)   id: E23HP_ShGS  initialValue: 0
	
//x(122)   id: E2_Per  initialValue: 0
	
//x(123)   id: PTEN_bpV  initialValue: 0
	
//x(124)   id: RasGDP  initialValue: 120
	
//x(125)   id: PI3Ka_PIP3  initialValue: 0
	
//x(126)   id: Raf  initialValue: 100
	
//x(127)   id: E23H_C  initialValue: 0
	
//x(128)   id: MEK  initialValue: 10
	
//x(129)   id: MEKP  initialValue: 0
	
//x(130)   id: PP2A  initialValue: 10
	
//x(131)   id: MEKP_PP2A  initialValue: 0
	
//x(132)   id: MEK_PP2A  initialValue: 0
	
//x(133)   id: Akt_PIP3_PP2A  initialValue: 0
	
//x(134)   id: MEKPP_PP2A  initialValue: 0
	
//x(135)   id: ERK  initialValue: 10
	
//x(136)   id: ERKP  initialValue: 0
	
//x(137)   id: E3H_C  initialValue: 0
	
//x(138)   id: PI3K  initialValue: 200
	
//x(139)   id: E23HP_PI3K  initialValue: 0
	
//x(140)   id: Akt_PIP3  initialValue: 0
	
//x(141)   id: PI3Ka  initialValue: 0
	
//x(142)   id: PI2  initialValue: 300
	
//x(143)   id: Akt_PI_P_PP2A  initialValue: 0
	
//x(144)   id: PTEN  initialValue: 42.7798
	
//x(145)   id: PIP3  initialValue: 8.05772E-12
	
//x(146)   id: PTEN_PIP3  initialValue: 3.14554E-8
	
//x(147)   id: PTEN_PI  initialValue: 5.02914E-8
	
//x(148)   id: PTENP  initialValue: 3.39885
	
//x(149)   id: PTENP_PTEN  initialValue: 0.955337
	
//x(150)   id: Akt_PI_P  initialValue: 0
	
//x(151)   id: Akt  initialValue: 100
	
//x(152)   id: E23HP_PI3Ka  initialValue: 0
	
//x(153)   id: PTEN_PTEN  initialValue: 0.955337
	
//x(154)   id: PI3Ka_PI  initialValue: 0
	
//x(155)   id: MEKPP  initialValue: 0
	
//x(156)   id: Akt_PI_PP  initialValue: 0
	
//x(157)   id: Akt_PI_PP_PP2A  initialValue: 0
	
//x(158)   id: Per  initialValue: 0
	
//x(159)   id: ShGS  initialValue: 0
	
//x(160)   id: E2Per  initialValue: 0
	
//x(161)   id: ERKPP  initialValue: 0
	
//x(162)   id: Rafa  initialValue: 0
	
//x(163)   id: RasGTP  initialValue: 0
	
//x(164)   id: ShcP  initialValue: 0
	
//x(165)   id: HRG  initialValue: 3000