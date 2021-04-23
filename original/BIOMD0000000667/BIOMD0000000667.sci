
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_Compartment   id: Compartment
	compartment_Compartment=1;
		
// k1_p   id: k1
	k1_p=30000000;
		
// kd1_p   id: kd1
	kd1_p=0.00384;
		
// k2_p   id: k2
	k2_p=1.66E-5;
		
// kd2_p   id: kd2
	kd2_p=0.1;
		
// k3_p   id: k3
	k3_p=1;
		
// kd3_p   id: kd3
	kd3_p=0.01;
		
// k4_p   id: k4
	k4_p=1.73E-7;
		
// kd4_p   id: kd4
	kd4_p=0.00166;
		
// kd5_p   id: kd5
	kd5_p=0.0146;
		
// k6_p   id: k6
	k6_p=0.0005;
		
// kd6_p   id: kd6
	kd6_p=0.005;
		
// k8_p   id: k8
	k8_p=1.66E-6;
		
// kd8_p   id: kd8
	kd8_p=0.2;
		
// k10b_p   id: k10b
	k10b_p=0.0543;
		
// kd10_p   id: kd10
	kd10_p=0.011;
		
// k13_p   id: k13
	k13_p=2.17;
		
// k15_p   id: k15
	k15_p=10000;
		
// k16_p   id: k16
	k16_p=1.66E-5;
		
// k17_p   id: k17
	k17_p=1.66E-5;
		
// kd17_p   id: kd17
	kd17_p=0.06;
		
// k18_p   id: k18
	k18_p=2.5E-5;
		
// kd18_p   id: kd18
	kd18_p=1.3;
		
// k19_p   id: k19
	k19_p=1.66E-7;
		
// kd19_p   id: kd19
	kd19_p=0.5;
		
// k20_p   id: k20
	k20_p=3.5E-6;
		
// kd20_p   id: kd20
	kd20_p=0.4;
		
// k21_p   id: k21
	k21_p=3.66E-7;
		
// kd21_p   id: kd21
	kd21_p=0.023;
		
// k22_p   id: k22
	k22_p=3.5E-5;
		
// kd22_p   id: kd22
	kd22_p=0.1;
		
// k23_p   id: k23
	k23_p=6;
		
// kd23_p   id: kd23
	kd23_p=0.06;
		
// kd24_p   id: kd24
	kd24_p=0.55;
		
// k25_p   id: k25
	k25_p=1.66E-5;
		
// kd25_p   id: kd25
	kd25_p=0.0214;
		
// k28_p   id: k28
	k28_p=1.66E-6;
		
// kd28_p   id: kd28
	kd28_p=0.0053;
		
// k29_p   id: k29
	k29_p=1.17E-6;
		
// kd29_p   id: kd29
	kd29_p=1;
		
// k32_p   id: k32
	k32_p=4E-7;
		
// kd32_p   id: kd32
	kd32_p=0.1;
		
// k33_p   id: k33
	k33_p=3.5E-5;
		
// kd33_p   id: kd33
	kd33_p=0.2;
		
// k34_p   id: k34
	k34_p=7.5E-6;
		
// kd34_p   id: kd34
	kd34_p=0.03;
		
// k35_p   id: k35
	k35_p=7.5E-6;
		
// kd35_p   id: kd35
	kd35_p=0.0015;
		
// k36_p   id: k36
	k36_p=0.005;
		
// kd36_p   id: kd36
	kd36_p=0;
		
// k37_p   id: k37
	k37_p=1.5E-6;
		
// kd37_p   id: kd37
	kd37_p=0.3;
		
// k40_p   id: k40
	k40_p=5E-5;
		
// kd40_p   id: kd40
	kd40_p=0.064;
		
// k41_p   id: k41
	k41_p=5E-5;
		
// kd41_p   id: kd41
	kd41_p=0.0429;
		
// k42_p   id: k42
	k42_p=0.000118;
		
// kd42_p   id: kd42
	kd42_p=0.2;
		
// kd43_p   id: kd43
	kd43_p=1;
		
// k44_p   id: k44
	k44_p=1.95E-5;
		
// kd44_p   id: kd44
	kd44_p=0.0183;
		
// kd45_p   id: kd45
	kd45_p=3.5;
		
// kd47_p   id: kd47
	kd47_p=2.9;
		
// k48_p   id: k48
	k48_p=2.38E-5;
		
// kd48_p   id: kd48
	kd48_p=0.8;
		
// kd49_p   id: kd49
	kd49_p=0.0568;
		
// k50_p   id: k50
	k50_p=4.5E-7;
		
// kd50_p   id: kd50
	kd50_p=0.5;
		
// k52_p   id: k52
	k52_p=8.91E-5;
		
// kd52_p   id: kd52
	kd52_p=0.033;
		
// kd53_p   id: kd53
	kd53_p=16;
		
// kd55_p   id: kd55
	kd55_p=5.7;
		
// k56_p   id: k56
	k56_p=2.35E-5;
		
// kd56_p   id: kd56
	kd56_p=0.6;
		
// kd57_p   id: kd57
	kd57_p=0.246;
		
// k58_p   id: k58
	k58_p=8.33E-6;
		
// kd58_p   id: kd58
	kd58_p=0.5;
		
// k60_p   id: k60
	k60_p=0.0055;
		
// k61_p   id: k61
	k61_p=0.00067;
		
// kd63_p   id: kd63
	kd63_p=0.275;
		
// k126_p   id: k126
	k126_p=1.66E-7;
		
// kd126_p   id: kd126
	kd126_p=2;
		
// k127_p   id: k127
	k127_p=0;
		
// kd127_p   id: kd127
	kd127_p=0.0001;
		



xdot=[
//x(1)   ID: EGF  initialValue: 4.99999999999939E-8
	0;
	
//x(2)   ID: EGFR  initialValue: 4.99999999999991E4
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*()) + (-1)*(1)* (compartment_Compartment*((k6_p* x(2) )-(kd6_p* x(6) ))) + (1)*(1)* (compartment_Compartment*()) );
	
//x(3)   ID: EGF_EGFR  initialValue: 0
	(1/compartment_Compartment)*( (-1)*(2)* (compartment_Compartment*((k2_p*(power( x(3) ,( 2 ))))-(kd2_p* x(4) ))) + (1)*(1)* (compartment_Compartment*()) );
	
//x(4)   ID: _EGF_EGFR_2  initialValue: 0
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*((k3_p* x(4) )-(kd3_p* x(5) ))) + (1)*(1)* (compartment_Compartment*((k2_p*(power( x(3) ,( 2 ))))-(kd2_p* x(4) ))) );
	
//x(5)   ID: _EGF_EGFR__2  initialValue: 0
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*((k6_p* x(5) )-(kd6_p* x(8) ))) + (-1)*(1)* (compartment_Compartment*((k8_p* x(5) * x(14) )-(kd8_p* x(15) ))) + (1)*(1)* (compartment_Compartment*((k3_p* x(4) )-(kd3_p* x(5) ))) );
	
//x(6)   ID: EGFRi  initialValue: 0
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*((k10b_p* x(6) * x(16) )-(kd10_p* x(10) ))) + (-1)*(1)* (compartment_Compartment*k60_p* x(6) ) + (1)*(1)* (compartment_Compartment*((k6_p* x(2) )-(kd6_p* x(6) ))) );
	
//x(7)   ID: _EGF_EGFR__2_GAP_Grb2_Prot  initialValue: 0
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*kd5_p* x(7) ) + (1)*(1)* (compartment_Compartment*((k4_p* x(23) * x(12) )-(kd4_p* x(7) ))) );
	
//x(8)   ID: _EGF_EGFRi__2  initialValue: 0
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*((k8_p* x(8) * x(14) )-(kd8_p* x(17) ))) + (-1)*(1)* (compartment_Compartment*k60_p* x(8) ) + (1)*(1)* (compartment_Compartment*((k6_p* x(5) )-(kd6_p* x(8) ))) + (1)*(1)* (compartment_Compartment*((k3_p* x(11) )-(kd3_p* x(8) ))) );
	
//x(9)   ID: Proti  initialValue: 0
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*k15_p* x(9) ) + (1)*(1)* (compartment_Compartment*kd5_p* x(7) ) + (1)*(1)* (compartment_Compartment*kd5_p* x(87) ) + (1)*(1)* (compartment_Compartment*kd5_p* x(88) ) + (1)*(1)* (compartment_Compartment*kd5_p* x(89) ) + (1)*(1)* (compartment_Compartment*kd5_p* x(100) ) + (1)*(1)* (compartment_Compartment*kd5_p* x(101) ) + (1)*(1)* (compartment_Compartment*kd5_p* x(102) ) + (1)*(1)* (compartment_Compartment*kd5_p* x(103) ) );
	
//x(10)   ID: EGF_EGFRi  initialValue: 0
	(1/compartment_Compartment)*( (-1)*(2)* (compartment_Compartment*((k2_p*(power( x(10) ,( 2 ))))-(kd2_p* x(11) ))) + (1)*(1)* (compartment_Compartment*((k10b_p* x(6) * x(16) )-(kd10_p* x(10) ))) );
	
//x(11)   ID: _EGF_EGFRi_2  initialValue: 0
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*((k3_p* x(11) )-(kd3_p* x(8) ))) + (1)*(1)* (compartment_Compartment*((k2_p*(power( x(10) ,( 2 ))))-(kd2_p* x(11) ))) );
	
//x(12)   ID: Prot  initialValue: 8.09999999999976E4
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*((k4_p* x(23) * x(12) )-(kd4_p* x(7) ))) + (-1)*(1)* (compartment_Compartment*((k4_p* x(25) * x(12) )-(kd4_p* x(87) ))) + (-1)*(1)* (compartment_Compartment*((k4_p* x(27) * x(12) )-(kd4_p* x(88) ))) + (-1)*(1)* (compartment_Compartment*((k4_p* x(29) * x(12) )-(kd4_p* x(89) ))) + (-1)*(1)* (compartment_Compartment*((k4_p* x(34) * x(12) )-(kd4_p* x(100) ))) + (-1)*(1)* (compartment_Compartment*((k4_p* x(35) * x(12) )-(kd4_p* x(101) ))) + (-1)*(1)* (compartment_Compartment*((k4_p* x(36) * x(12) )-(kd4_p* x(102) ))) + (-1)*(1)* (compartment_Compartment*((k4_p* x(37) * x(12) )-(kd4_p* x(103) ))) + (1)*(1)* (compartment_Compartment*k15_p* x(9) ) );
	
//x(13)   ID: EGFideg  initialValue: 0
	(1/compartment_Compartment)*( (1)*(1)* (compartment_Compartment*k61_p* x(16) ) );
	
//x(14)   ID: GAP  initialValue: 1.19999999999997E4
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*((k8_p* x(5) * x(14) )-(kd8_p* x(15) ))) + (-1)*(1)* (compartment_Compartment*((k8_p* x(8) * x(14) )-(kd8_p* x(17) ))) );
	
//x(15)   ID: _EGF_EGFR__2_GAP  initialValue: 0
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*((k16_p* x(22) * x(15) )-(kd63_p* x(23) ))) + (-1)*(1)* (compartment_Compartment*((k22_p* x(31) * x(15) )-(kd22_p* x(32) ))) + (-1)*(1)* (compartment_Compartment*((k32_p* x(38) * x(15) )-(kd32_p* x(35) ))) + (-1)*(1)* (compartment_Compartment*((k34_p* x(15) * x(30) )-(kd34_p* x(25) ))) + (-1)*(1)* (compartment_Compartment*((k37_p* x(15) * x(40) )-(kd37_p* x(33) ))) + (-1)*(1)* (compartment_Compartment*((k37_p* x(15) * x(39) )-(kd37_p* x(34) ))) + (-1)*(1)* (compartment_Compartment*k6_p* x(15) ) + (1)*(1)* (compartment_Compartment*((k8_p* x(5) * x(14) )-(kd8_p* x(15) ))) );
	
//x(16)   ID: EGFi  initialValue: 0
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*((k10b_p* x(6) * x(16) )-(kd10_p* x(10) ))) + (-1)*(1)* (compartment_Compartment*k61_p* x(16) ) );
	
//x(17)   ID: _EGF_EGFRi__2_GAP  initialValue: 0
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*((k16_p* x(17) * x(22) )-(kd63_p* x(18) ))) + (-1)*(1)* (compartment_Compartment*((k22_p* x(31) * x(17) )-(kd22_p* x(63) ))) + (-1)*(1)* (compartment_Compartment*((k32_p* x(17) * x(38) )-(kd32_p* x(66) ))) + (-1)*(1)* (compartment_Compartment*((k34_p* x(17) * x(30) )-(kd34_p* x(19) ))) + (-1)*(1)* (compartment_Compartment*((k37_p* x(17) * x(40) )-(kd37_p* x(64) ))) + (-1)*(1)* (compartment_Compartment*((k37_p* x(17) * x(39) )-(kd37_p* x(65) ))) + (-1)*(1)* (compartment_Compartment*k60_p* x(17) ) + (1)*(1)* (compartment_Compartment*((k8_p* x(8) * x(14) )-(kd8_p* x(17) ))) + (1)*(1)* (compartment_Compartment*k6_p* x(15) ) );
	
//x(18)   ID: _EGF_EGFRi__2_GAP_Grb2  initialValue: 0
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*((k17_p* x(24) * x(18) )-(kd17_p* x(19) ))) + (-1)*(1)* (compartment_Compartment*k60_p* x(18) ) + (1)*(1)* (compartment_Compartment*kd5_p* x(7) ) + (1)*(1)* (compartment_Compartment*k6_p* x(23) ) + (1)*(1)* (compartment_Compartment*((k16_p* x(17) * x(22) )-(kd63_p* x(18) ))) );
	
//x(19)   ID: _EGF_EGFRi__2_GAP_Grb2_Sos  initialValue: 0
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*((k18_p* x(26) * x(19) )-(kd18_p* x(20) ))) + (-1)*(1)* (compartment_Compartment*((k19_p* x(69) * x(19) )-(kd19_p* x(20) ))) + (-1)*(1)* (compartment_Compartment*((k20_p* x(71) * x(19) )-(kd20_p* x(21) ))) + (-1)*(1)* (compartment_Compartment*((k21_p* x(19) * x(26) )-(kd21_p* x(21) ))) + (-1)*(1)* (compartment_Compartment*((k126_p* x(82) * x(19) )-(kd126_p* x(91) ))) + (-1)*(1)* (compartment_Compartment*k60_p* x(19) ) + (1)*(1)* (compartment_Compartment*((k17_p* x(24) * x(18) )-(kd17_p* x(19) ))) + (1)*(1)* (compartment_Compartment*((k34_p* x(17) * x(30) )-(kd34_p* x(19) ))) + (1)*(1)* (compartment_Compartment*k6_p* x(25) ) + (1)*(1)* (compartment_Compartment*kd5_p* x(87) ) );
	
//x(20)   ID: _EGF_EGFRi__2_GAP_Grb2_Sos_Ras_GDP  initialValue: 0
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*k60_p* x(20) ) + (1)*(1)* (compartment_Compartment*((k18_p* x(26) * x(19) )-(kd18_p* x(20) ))) + (1)*(1)* (compartment_Compartment*((k19_p* x(69) * x(19) )-(kd19_p* x(20) ))) + (1)*(1)* (compartment_Compartment*k6_p* x(27) ) + (1)*(1)* (compartment_Compartment*kd5_p* x(88) ) );
	
//x(21)   ID: _EGF_EGFRi__2_GAP_Grb2_Sos_Ras_GTP  initialValue: 0
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*k60_p* x(21) ) + (1)*(1)* (compartment_Compartment*((k20_p* x(71) * x(19) )-(kd20_p* x(21) ))) + (1)*(1)* (compartment_Compartment*((k21_p* x(19) * x(26) )-(kd21_p* x(21) ))) + (1)*(1)* (compartment_Compartment*k6_p* x(29) ) + (1)*(1)* (compartment_Compartment*kd5_p* x(89) ) );
	
//x(22)   ID: Grb2  initialValue: 1.09999999999996E4
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*((k16_p* x(22) * x(15) )-(kd63_p* x(23) ))) + (-1)*(1)* (compartment_Compartment*((k16_p* x(22) * x(33) )-(kd24_p* x(34) ))) + (-1)*(1)* (compartment_Compartment*((k35_p* x(24) * x(22) )-(kd35_p* x(30) ))) + (-1)*(1)* (compartment_Compartment*((k16_p* x(22) * x(40) )-(kd24_p* x(39) ))) + (-1)*(1)* (compartment_Compartment*((k16_p* x(17) * x(22) )-(kd63_p* x(18) ))) + (-1)*(1)* (compartment_Compartment*((k16_p* x(22) * x(64) )-(kd24_p* x(65) ))) );
	
//x(23)   ID: _EGF_EGFR__2_GAP_Grb2  initialValue: 0
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*((k4_p* x(23) * x(12) )-(kd4_p* x(7) ))) + (-1)*(1)* (compartment_Compartment*k6_p* x(23) ) + (-1)*(1)* (compartment_Compartment*((k17_p* x(24) * x(23) )-(kd17_p* x(25) ))) + (1)*(1)* (compartment_Compartment*((k16_p* x(22) * x(15) )-(kd63_p* x(23) ))) );
	
//x(24)   ID: Sos  initialValue: 2.62999999999984E4
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*((k17_p* x(24) * x(23) )-(kd17_p* x(25) ))) + (-1)*(1)* (compartment_Compartment*((k25_p* x(24) * x(34) )-(kd25_p* x(35) ))) + (-1)*(1)* (compartment_Compartment*((k35_p* x(24) * x(22) )-(kd35_p* x(30) ))) + (-1)*(1)* (compartment_Compartment*((k40_p* x(24) * x(39) )-(kd40_p* x(38) ))) + (-1)*(1)* (compartment_Compartment*((k17_p* x(24) * x(18) )-(kd17_p* x(19) ))) + (-1)*(1)* (compartment_Compartment*((k25_p* x(24) * x(65) )-(kd25_p* x(66) ))) + (-1)*(1)* (compartment_Compartment*((k126_p* x(59) * x(24) )-(kd126_p* x(96) ))) + (-1)*(1)* (compartment_Compartment*((k126_p* x(82) * x(24) )-(kd126_p* x(97) ))) );
	
//x(25)   ID: _EGF_EGFR__2_GAP_Grb2_Sos  initialValue: 0
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*((k18_p* x(26) * x(25) )-(kd18_p* x(27) ))) + (-1)*(1)* (compartment_Compartment*((k19_p* x(28) * x(25) )-(kd19_p* x(27) ))) + (-1)*(1)* (compartment_Compartment*((k20_p* x(25) * x(43) )-(kd20_p* x(29) ))) + (-1)*(1)* (compartment_Compartment*((k21_p* x(25) * x(26) )-(kd21_p* x(29) ))) + (-1)*(1)* (compartment_Compartment*k6_p* x(25) ) + (-1)*(1)* (compartment_Compartment*((k4_p* x(25) * x(12) )-(kd4_p* x(87) ))) + (-1)*(1)* (compartment_Compartment*((k126_p* x(59) * x(25) )-(kd126_p* x(90) ))) + (1)*(1)* (compartment_Compartment*((k17_p* x(24) * x(23) )-(kd17_p* x(25) ))) + (1)*(1)* (compartment_Compartment*((k34_p* x(15) * x(30) )-(kd34_p* x(25) ))) );
	
//x(26)   ID: Ras_GDP  initialValue: 7.19999999999998E4
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*((k18_p* x(26) * x(25) )-(kd18_p* x(27) ))) + (-1)*(1)* (compartment_Compartment*((k21_p* x(25) * x(26) )-(kd21_p* x(29) ))) + (-1)*(1)* (compartment_Compartment*((k18_p* x(26) * x(35) )-(kd18_p* x(36) ))) + (-1)*(1)* (compartment_Compartment*((k21_p* x(35) * x(26) )-(kd21_p* x(37) ))) + (-1)*(1)* (compartment_Compartment*((k18_p* x(26) * x(19) )-(kd18_p* x(20) ))) + (-1)*(1)* (compartment_Compartment*((k21_p* x(19) * x(26) )-(kd21_p* x(21) ))) + (-1)*(1)* (compartment_Compartment*((k18_p* x(26) * x(66) )-(kd18_p* x(67) ))) + (-1)*(1)* (compartment_Compartment*((k21_p* x(66) * x(26) )-(kd21_p* x(68) ))) );
	
//x(27)   ID: _EGF_EGFR__2_GAP_Grb2_Sos_Ras_GDP  initialValue: 0
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*k6_p* x(27) ) + (-1)*(1)* (compartment_Compartment*((k4_p* x(27) * x(12) )-(kd4_p* x(88) ))) + (1)*(1)* (compartment_Compartment*((k18_p* x(26) * x(25) )-(kd18_p* x(27) ))) + (1)*(1)* (compartment_Compartment*((k19_p* x(28) * x(25) )-(kd19_p* x(27) ))) );
	
//x(28)   ID: Ras_GTP  initialValue: 0
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*((k19_p* x(28) * x(25) )-(kd19_p* x(27) ))) + (-1)*(1)* (compartment_Compartment*((k19_p* x(35) * x(28) )-(kd19_p* x(36) ))) + (-1)*(1)* (compartment_Compartment*((k28_p* x(28) * x(41) )-(kd28_p* x(42) ))) );
	
//x(29)   ID: _EGF_EGFR__2_GAP_Grb2_Sos_Ras_GTP  initialValue: 0
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*k6_p* x(29) ) + (-1)*(1)* (compartment_Compartment*((k4_p* x(29) * x(12) )-(kd4_p* x(89) ))) + (1)*(1)* (compartment_Compartment*((k20_p* x(25) * x(43) )-(kd20_p* x(29) ))) + (1)*(1)* (compartment_Compartment*((k21_p* x(25) * x(26) )-(kd21_p* x(29) ))) );
	
//x(30)   ID: Grb2_Sos  initialValue: 40000
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*((k33_p* x(40) * x(30) )-(kd33_p* x(38) ))) + (-1)*(1)* (compartment_Compartment*((k34_p* x(15) * x(30) )-(kd34_p* x(25) ))) + (-1)*(1)* (compartment_Compartment*((k41_p* x(30) * x(33) )-(kd41_p* x(35) ))) + (-1)*(1)* (compartment_Compartment*((k34_p* x(17) * x(30) )-(kd34_p* x(19) ))) + (-1)*(1)* (compartment_Compartment*((k41_p* x(30) * x(64) )-(kd41_p* x(66) ))) + (1)*(1)* (compartment_Compartment*((k35_p* x(24) * x(22) )-(kd35_p* x(30) ))) );
	
//x(31)   ID: Shc  initialValue: 1.00999999999999E5
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*((k22_p* x(31) * x(15) )-(kd22_p* x(32) ))) + (-1)*(1)* (compartment_Compartment*((k22_p* x(31) * x(17) )-(kd22_p* x(63) ))) + (1)*(1)* (compartment_Compartment*((k36_p* x(40) )-(kd36_p* x(31) ))) );
	
//x(32)   ID: _EGF_EGFR__2_GAP_SHC  initialValue: 0
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*((k23_p* x(32) )-(kd23_p* x(33) ))) + (-1)*(1)* (compartment_Compartment*k6_p* x(32) ) + (1)*(1)* (compartment_Compartment*((k22_p* x(31) * x(15) )-(kd22_p* x(32) ))) );
	
//x(33)   ID: _EGF_EGFR__2_GAP_SHC_0  initialValue: 0
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*((k16_p* x(22) * x(33) )-(kd24_p* x(34) ))) + (-1)*(1)* (compartment_Compartment*((k41_p* x(30) * x(33) )-(kd41_p* x(35) ))) + (-1)*(1)* (compartment_Compartment*k6_p* x(33) ) + (1)*(1)* (compartment_Compartment*((k23_p* x(32) )-(kd23_p* x(33) ))) + (1)*(1)* (compartment_Compartment*((k37_p* x(15) * x(40) )-(kd37_p* x(33) ))) );
	
//x(34)   ID: _EGF_EGFR__2_GAP_SHC__Grb2  initialValue: 0
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*((k25_p* x(24) * x(34) )-(kd25_p* x(35) ))) + (-1)*(1)* (compartment_Compartment*k6_p* x(34) ) + (-1)*(1)* (compartment_Compartment*((k4_p* x(34) * x(12) )-(kd4_p* x(100) ))) + (1)*(1)* (compartment_Compartment*((k16_p* x(22) * x(33) )-(kd24_p* x(34) ))) + (1)*(1)* (compartment_Compartment*((k37_p* x(15) * x(39) )-(kd37_p* x(34) ))) );
	
//x(35)   ID: _EGF_EGFR__2_GAP_SHC__Grb2_Sos  initialValue: 0
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*((k18_p* x(26) * x(35) )-(kd18_p* x(36) ))) + (-1)*(1)* (compartment_Compartment*((k19_p* x(35) * x(28) )-(kd19_p* x(36) ))) + (-1)*(1)* (compartment_Compartment*((k20_p* x(35) * x(43) )-(kd20_p* x(37) ))) + (-1)*(1)* (compartment_Compartment*((k21_p* x(35) * x(26) )-(kd21_p* x(37) ))) + (-1)*(1)* (compartment_Compartment*k6_p* x(35) ) + (-1)*(1)* (compartment_Compartment*((k4_p* x(35) * x(12) )-(kd4_p* x(101) ))) + (-1)*(1)* (compartment_Compartment*((k126_p* x(59) * x(35) )-(kd126_p* x(92) ))) + (1)*(1)* (compartment_Compartment*((k25_p* x(24) * x(34) )-(kd25_p* x(35) ))) + (1)*(1)* (compartment_Compartment*((k32_p* x(38) * x(15) )-(kd32_p* x(35) ))) + (1)*(1)* (compartment_Compartment*((k41_p* x(30) * x(33) )-(kd41_p* x(35) ))) );
	
//x(36)   ID: _EGF_EGFR__2_GAP_SHC__Grb2_Sos_Ras_GDP  initialValue: 0
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*k6_p* x(36) ) + (-1)*(1)* (compartment_Compartment*((k4_p* x(36) * x(12) )-(kd4_p* x(102) ))) + (1)*(1)* (compartment_Compartment*((k18_p* x(26) * x(35) )-(kd18_p* x(36) ))) + (1)*(1)* (compartment_Compartment*((k19_p* x(35) * x(28) )-(kd19_p* x(36) ))) );
	
//x(37)   ID: _EGF_EGFR__2_GAP_SHC__Grb2_Sos_Ras_GTP  initialValue: 0
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*k6_p* x(37) ) + (-1)*(1)* (compartment_Compartment*((k4_p* x(37) * x(12) )-(kd4_p* x(103) ))) + (1)*(1)* (compartment_Compartment*((k20_p* x(35) * x(43) )-(kd20_p* x(37) ))) + (1)*(1)* (compartment_Compartment*((k21_p* x(35) * x(26) )-(kd21_p* x(37) ))) );
	
//x(38)   ID: Shc__Grb2_Sos  initialValue: 0
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*((k32_p* x(38) * x(15) )-(kd32_p* x(35) ))) + (-1)*(1)* (compartment_Compartment*((k32_p* x(17) * x(38) )-(kd32_p* x(66) ))) + (1)*(1)* (compartment_Compartment*((k33_p* x(40) * x(30) )-(kd33_p* x(38) ))) + (1)*(1)* (compartment_Compartment*((k40_p* x(24) * x(39) )-(kd40_p* x(38) ))) );
	
//x(39)   ID: Shc__Grb2  initialValue: 0
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*((k37_p* x(15) * x(39) )-(kd37_p* x(34) ))) + (-1)*(1)* (compartment_Compartment*((k40_p* x(24) * x(39) )-(kd40_p* x(38) ))) + (-1)*(1)* (compartment_Compartment*((k37_p* x(17) * x(39) )-(kd37_p* x(65) ))) + (1)*(1)* (compartment_Compartment*((k16_p* x(22) * x(40) )-(kd24_p* x(39) ))) );
	
//x(40)   ID: Shc_0  initialValue: 0
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*((k33_p* x(40) * x(30) )-(kd33_p* x(38) ))) + (-1)*(1)* (compartment_Compartment*((k36_p* x(40) )-(kd36_p* x(31) ))) + (-1)*(1)* (compartment_Compartment*((k37_p* x(15) * x(40) )-(kd37_p* x(33) ))) + (-1)*(1)* (compartment_Compartment*((k16_p* x(22) * x(40) )-(kd24_p* x(39) ))) + (-1)*(1)* (compartment_Compartment*((k37_p* x(17) * x(40) )-(kd37_p* x(64) ))) );
	
//x(41)   ID: Raf  initialValue: 40000
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*((k28_p* x(28) * x(41) )-(kd28_p* x(42) ))) + (-1)*(1)* (compartment_Compartment*((k28_p* x(69) * x(41) )-(kd28_p* x(70) ))) + (1)*(1)* (compartment_Compartment*kd43_p* x(46) ) + (1)*(1)* (compartment_Compartment*kd43_p* x(73) ) );
	
//x(42)   ID: Raf_Ras_GTP  initialValue: 0
	(1/compartment_Compartment)*( (1)*(1)* (compartment_Compartment*((k28_p* x(28) * x(41) )-(kd28_p* x(42) ))) + (1)*(1)* (compartment_Compartment*((k29_p* x(43) * x(45) )-(kd29_p* x(42) ))) );
	
//x(43)   ID: Ras_GTP_  initialValue: 0
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*((k20_p* x(25) * x(43) )-(kd20_p* x(29) ))) + (-1)*(1)* (compartment_Compartment*((k29_p* x(43) * x(45) )-(kd29_p* x(42) ))) + (-1)*(1)* (compartment_Compartment*((k20_p* x(35) * x(43) )-(kd20_p* x(37) ))) );
	
//x(44)   ID: Phosphatase1  initialValue: 40000
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*((k42_p* x(44) * x(45) )-(kd42_p* x(46) ))) + (-1)*(1)* (compartment_Compartment*((k42_p* x(44) * x(72) )-(kd42_p* x(73) ))) + (1)*(1)* (compartment_Compartment*kd43_p* x(46) ) + (1)*(1)* (compartment_Compartment*kd43_p* x(73) ) );
	
//x(45)   ID: Raf_0  initialValue: 0
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*((k29_p* x(43) * x(45) )-(kd29_p* x(42) ))) + (-1)*(1)* (compartment_Compartment*((k42_p* x(44) * x(45) )-(kd42_p* x(46) ))) + (-1)*(1)* (compartment_Compartment*((k44_p* x(47) * x(45) )-(kd52_p* x(48) ))) + (-1)*(1)* (compartment_Compartment*((k44_p* x(49) * x(45) )-(kd52_p* x(50) ))) + (1)*(1)* (compartment_Compartment*kd45_p* x(48) ) + (1)*(1)* (compartment_Compartment*kd47_p* x(50) ) );
	
//x(46)   ID: Raf__phosphatase1  initialValue: 0
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*kd43_p* x(46) ) + (1)*(1)* (compartment_Compartment*((k42_p* x(44) * x(45) )-(kd42_p* x(46) ))) );
	
//x(47)   ID: MEK  initialValue: 2.09999999999994E7
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*((k44_p* x(47) * x(45) )-(kd52_p* x(48) ))) + (-1)*(1)* (compartment_Compartment*((k44_p* x(47) * x(72) )-(kd52_p* x(74) ))) + (1)*(1)* (compartment_Compartment*kd49_p* x(54) ) + (1)*(1)* (compartment_Compartment*kd49_p* x(79) ) );
	
//x(48)   ID: MEK_Raf  initialValue: 0
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*kd45_p* x(48) ) + (1)*(1)* (compartment_Compartment*((k44_p* x(47) * x(45) )-(kd52_p* x(48) ))) );
	
//x(49)   ID: MEK_P  initialValue: 0
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*((k44_p* x(49) * x(45) )-(kd52_p* x(50) ))) + (-1)*(1)* (compartment_Compartment*((k50_p* x(53) * x(49) )-(kd50_p* x(54) ))) + (1)*(1)* (compartment_Compartment*kd45_p* x(48) ) + (1)*(1)* (compartment_Compartment*kd49_p* x(52) ) );
	
//x(50)   ID: MEK_P_Raf  initialValue: 0
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*kd47_p* x(50) ) + (1)*(1)* (compartment_Compartment*((k44_p* x(49) * x(45) )-(kd52_p* x(50) ))) );
	
//x(51)   ID: MEK_PP  initialValue: 0
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*((k48_p* x(51) * x(53) )-(kd48_p* x(52) ))) + (-1)*(1)* (compartment_Compartment*((k52_p* x(55) * x(51) )-(kd44_p* x(56) ))) + (-1)*(1)* (compartment_Compartment*((k52_p* x(51) * x(57) )-(kd44_p* x(58) ))) + (1)*(1)* (compartment_Compartment*kd47_p* x(50) ) + (1)*(1)* (compartment_Compartment*kd53_p* x(56) ) + (1)*(1)* (compartment_Compartment*kd55_p* x(58) ) );
	
//x(52)   ID: MEK_PP_phosphatase2  initialValue: 0
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*kd49_p* x(52) ) + (1)*(1)* (compartment_Compartment*((k48_p* x(51) * x(53) )-(kd48_p* x(52) ))) );
	
//x(53)   ID: phosphatse2  initialValue: 40000
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*((k48_p* x(51) * x(53) )-(kd48_p* x(52) ))) + (-1)*(1)* (compartment_Compartment*((k50_p* x(53) * x(49) )-(kd50_p* x(54) ))) + (-1)*(1)* (compartment_Compartment*((k48_p* x(77) * x(53) )-(kd48_p* x(78) ))) + (-1)*(1)* (compartment_Compartment*((k50_p* x(53) * x(75) )-(kd50_p* x(79) ))) + (1)*(1)* (compartment_Compartment*kd49_p* x(52) ) + (1)*(1)* (compartment_Compartment*kd49_p* x(54) ) + (1)*(1)* (compartment_Compartment*kd49_p* x(78) ) + (1)*(1)* (compartment_Compartment*kd49_p* x(79) ) );
	
//x(54)   ID: MEK_P_phosphatase2  initialValue: 0
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*kd49_p* x(54) ) + (1)*(1)* (compartment_Compartment*((k50_p* x(53) * x(49) )-(kd50_p* x(54) ))) );
	
//x(55)   ID: ERK  initialValue: 2.20999999999994E7
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*((k52_p* x(55) * x(51) )-(kd44_p* x(56) ))) + (-1)*(1)* (compartment_Compartment*((k52_p* x(55) * x(77) )-(kd44_p* x(99) ))) + (1)*(1)* (compartment_Compartment*kd57_p* x(62) ) + (1)*(1)* (compartment_Compartment*kd57_p* x(84) ) );
	
//x(56)   ID: ERK_MEK_PP  initialValue: 0
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*kd53_p* x(56) ) + (1)*(1)* (compartment_Compartment*((k52_p* x(55) * x(51) )-(kd44_p* x(56) ))) );
	
//x(57)   ID: ERK_P  initialValue: 0
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*((k52_p* x(51) * x(57) )-(kd44_p* x(58) ))) + (-1)*(1)* (compartment_Compartment*((k58_p* x(60) * x(57) )-(kd58_p* x(62) ))) + (1)*(1)* (compartment_Compartment*kd53_p* x(56) ) + (1)*(1)* (compartment_Compartment*kd57_p* x(61) ) );
	
//x(58)   ID: ERK_P_MEKPP  initialValue: 0
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*kd55_p* x(58) ) + (1)*(1)* (compartment_Compartment*((k52_p* x(51) * x(57) )-(kd44_p* x(58) ))) );
	
//x(59)   ID: ERK_PP  initialValue: 0
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*((k56_p* x(59) * x(60) )-(kd56_p* x(61) ))) + (-1)*(1)* (compartment_Compartment*((k126_p* x(59) * x(25) )-(kd126_p* x(90) ))) + (-1)*(1)* (compartment_Compartment*((k126_p* x(59) * x(35) )-(kd126_p* x(92) ))) + (-1)*(1)* (compartment_Compartment*((k126_p* x(59) * x(24) )-(kd126_p* x(96) ))) + (-1)*(1)* (compartment_Compartment*((k127_p* x(59) * x(94) )-(kd127_p* x(90) ))) + (-1)*(1)* (compartment_Compartment*((k127_p* x(59) * x(94) )-(kd127_p* x(92) ))) + (-1)*(1)* (compartment_Compartment*((k127_p* x(59) * x(98) )-(kd127_p* x(96) ))) + (1)*(1)* (compartment_Compartment*kd55_p* x(58) ) );
	
//x(60)   ID: phosphatase3  initialValue: 9.99999999999974E6
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*((k56_p* x(59) * x(60) )-(kd56_p* x(61) ))) + (-1)*(1)* (compartment_Compartment*((k58_p* x(60) * x(57) )-(kd58_p* x(62) ))) + (-1)*(1)* (compartment_Compartment*((k56_p* x(82) * x(60) )-(kd56_p* x(83) ))) + (-1)*(1)* (compartment_Compartment*((k58_p* x(60) * x(80) )-(kd58_p* x(84) ))) + (1)*(1)* (compartment_Compartment*kd57_p* x(61) ) + (1)*(1)* (compartment_Compartment*kd57_p* x(62) ) + (1)*(1)* (compartment_Compartment*kd57_p* x(83) ) + (1)*(1)* (compartment_Compartment*kd57_p* x(84) ) );
	
//x(61)   ID: ERK_PP_phosphatase3  initialValue: 0
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*kd57_p* x(61) ) + (1)*(1)* (compartment_Compartment*((k56_p* x(59) * x(60) )-(kd56_p* x(61) ))) );
	
//x(62)   ID: ERK_P_phosphatase3  initialValue: 0
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*kd57_p* x(62) ) + (1)*(1)* (compartment_Compartment*((k58_p* x(60) * x(57) )-(kd58_p* x(62) ))) );
	
//x(63)   ID: _EGF_EGFRi__2_GAP_SHC  initialValue: 0
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*((k23_p* x(63) )-(kd23_p* x(64) ))) + (-1)*(1)* (compartment_Compartment*k60_p* x(63) ) + (1)*(1)* (compartment_Compartment*((k22_p* x(31) * x(17) )-(kd22_p* x(63) ))) + (1)*(1)* (compartment_Compartment*k6_p* x(32) ) );
	
//x(64)   ID: _EGF_EGFRi__2_GAP_SHC_0  initialValue: 0
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*((k16_p* x(22) * x(64) )-(kd24_p* x(65) ))) + (-1)*(1)* (compartment_Compartment*((k41_p* x(30) * x(64) )-(kd41_p* x(66) ))) + (-1)*(1)* (compartment_Compartment*k60_p* x(64) ) + (1)*(1)* (compartment_Compartment*((k23_p* x(63) )-(kd23_p* x(64) ))) + (1)*(1)* (compartment_Compartment*((k37_p* x(17) * x(40) )-(kd37_p* x(64) ))) + (1)*(1)* (compartment_Compartment*k6_p* x(33) ) );
	
//x(65)   ID: _EGF_EGFRi__2_GAP_SHC__Grb2  initialValue: 0
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*((k25_p* x(24) * x(65) )-(kd25_p* x(66) ))) + (-1)*(1)* (compartment_Compartment*k60_p* x(65) ) + (1)*(1)* (compartment_Compartment*((k16_p* x(22) * x(64) )-(kd24_p* x(65) ))) + (1)*(1)* (compartment_Compartment*((k37_p* x(17) * x(39) )-(kd37_p* x(65) ))) + (1)*(1)* (compartment_Compartment*k6_p* x(34) ) + (1)*(1)* (compartment_Compartment*kd5_p* x(100) ) );
	
//x(66)   ID: _EGF_EGFRi__2_GAP_SHC__Grb2_Sos  initialValue: 0
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*((k18_p* x(26) * x(66) )-(kd18_p* x(67) ))) + (-1)*(1)* (compartment_Compartment*((k19_p* x(66) * x(69) )-(kd19_p* x(67) ))) + (-1)*(1)* (compartment_Compartment*((k20_p* x(71) * x(66) )-(kd20_p* x(68) ))) + (-1)*(1)* (compartment_Compartment*((k21_p* x(66) * x(26) )-(kd21_p* x(68) ))) + (-1)*(1)* (compartment_Compartment*((k126_p* x(82) * x(66) )-(kd126_p* x(93) ))) + (-1)*(1)* (compartment_Compartment*k60_p* x(66) ) + (1)*(1)* (compartment_Compartment*((k25_p* x(24) * x(65) )-(kd25_p* x(66) ))) + (1)*(1)* (compartment_Compartment*((k32_p* x(17) * x(38) )-(kd32_p* x(66) ))) + (1)*(1)* (compartment_Compartment*((k41_p* x(30) * x(64) )-(kd41_p* x(66) ))) + (1)*(1)* (compartment_Compartment*k6_p* x(35) ) + (1)*(1)* (compartment_Compartment*kd5_p* x(101) ) );
	
//x(67)   ID: _EGF_EGFRi__2_GAP_SHC__Grb2_Sos_Ras_GDP  initialValue: 0
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*k60_p* x(67) ) + (1)*(1)* (compartment_Compartment*((k18_p* x(26) * x(66) )-(kd18_p* x(67) ))) + (1)*(1)* (compartment_Compartment*((k19_p* x(66) * x(69) )-(kd19_p* x(67) ))) + (1)*(1)* (compartment_Compartment*k6_p* x(36) ) + (1)*(1)* (compartment_Compartment*kd5_p* x(102) ) );
	
//x(68)   ID: _EGF_EGFRi__2_GAP_SHC__Grb2_Sos_Ras_GTP  initialValue: 0
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*k60_p* x(68) ) + (1)*(1)* (compartment_Compartment*((k20_p* x(71) * x(66) )-(kd20_p* x(68) ))) + (1)*(1)* (compartment_Compartment*((k21_p* x(66) * x(26) )-(kd21_p* x(68) ))) + (1)*(1)* (compartment_Compartment*k6_p* x(37) ) + (1)*(1)* (compartment_Compartment*kd5_p* x(103) ) );
	
//x(69)   ID: Ras_GTPi  initialValue: 0
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*((k19_p* x(69) * x(19) )-(kd19_p* x(20) ))) + (-1)*(1)* (compartment_Compartment*((k19_p* x(66) * x(69) )-(kd19_p* x(67) ))) + (-1)*(1)* (compartment_Compartment*((k28_p* x(69) * x(41) )-(kd28_p* x(70) ))) );
	
//x(70)   ID: Raf_Ras_GTPi  initialValue: 0
	(1/compartment_Compartment)*( (1)*(1)* (compartment_Compartment*((k28_p* x(69) * x(41) )-(kd28_p* x(70) ))) + (1)*(1)* (compartment_Compartment*((k29_p* x(71) * x(72) )-(kd29_p* x(70) ))) );
	
//x(71)   ID: Ras_GTPi_0  initialValue: 0
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*((k20_p* x(71) * x(19) )-(kd20_p* x(21) ))) + (-1)*(1)* (compartment_Compartment*((k29_p* x(71) * x(72) )-(kd29_p* x(70) ))) + (-1)*(1)* (compartment_Compartment*((k20_p* x(71) * x(66) )-(kd20_p* x(68) ))) );
	
//x(72)   ID: Rafi  initialValue: 0
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*((k29_p* x(71) * x(72) )-(kd29_p* x(70) ))) + (-1)*(1)* (compartment_Compartment*((k42_p* x(44) * x(72) )-(kd42_p* x(73) ))) + (-1)*(1)* (compartment_Compartment*((k44_p* x(47) * x(72) )-(kd52_p* x(74) ))) + (-1)*(1)* (compartment_Compartment*((k44_p* x(72) * x(75) )-(kd52_p* x(76) ))) + (1)*(1)* (compartment_Compartment*kd45_p* x(74) ) + (1)*(1)* (compartment_Compartment*kd47_p* x(76) ) );
	
//x(73)   ID: Rafi__phosphatase1  initialValue: 0
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*kd43_p* x(73) ) + (1)*(1)* (compartment_Compartment*((k42_p* x(44) * x(72) )-(kd42_p* x(73) ))) );
	
//x(74)   ID: MEK_Rafi  initialValue: 0
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*kd45_p* x(74) ) + (1)*(1)* (compartment_Compartment*((k44_p* x(47) * x(72) )-(kd52_p* x(74) ))) );
	
//x(75)   ID: MEKi_P  initialValue: 0
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*((k44_p* x(72) * x(75) )-(kd52_p* x(76) ))) + (-1)*(1)* (compartment_Compartment*((k50_p* x(53) * x(75) )-(kd50_p* x(79) ))) + (1)*(1)* (compartment_Compartment*kd45_p* x(74) ) + (1)*(1)* (compartment_Compartment*kd49_p* x(78) ) );
	
//x(76)   ID: MEK_P_Rafi  initialValue: 0
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*kd47_p* x(76) ) + (1)*(1)* (compartment_Compartment*((k44_p* x(72) * x(75) )-(kd52_p* x(76) ))) );
	
//x(77)   ID: MEKi_PP  initialValue: 0
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*((k48_p* x(77) * x(53) )-(kd48_p* x(78) ))) + (-1)*(1)* (compartment_Compartment*((k52_p* x(55) * x(77) )-(kd44_p* x(99) ))) + (-1)*(1)* (compartment_Compartment*((k52_p* x(77) * x(80) )-(kd44_p* x(81) ))) + (1)*(1)* (compartment_Compartment*kd47_p* x(76) ) + (1)*(1)* (compartment_Compartment*kd53_p* x(99) ) + (1)*(1)* (compartment_Compartment*kd55_p* x(81) ) );
	
//x(78)   ID: MEKi_PP_phosphatase2  initialValue: 0
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*kd49_p* x(78) ) + (1)*(1)* (compartment_Compartment*((k48_p* x(77) * x(53) )-(kd48_p* x(78) ))) );
	
//x(79)   ID: MEKi_P_phosphatase2  initialValue: 0
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*kd49_p* x(79) ) + (1)*(1)* (compartment_Compartment*((k50_p* x(53) * x(75) )-(kd50_p* x(79) ))) );
	
//x(80)   ID: ERKi_P  initialValue: 0
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*((k52_p* x(77) * x(80) )-(kd44_p* x(81) ))) + (-1)*(1)* (compartment_Compartment*((k58_p* x(60) * x(80) )-(kd58_p* x(84) ))) + (1)*(1)* (compartment_Compartment*kd53_p* x(99) ) + (1)*(1)* (compartment_Compartment*kd57_p* x(83) ) );
	
//x(81)   ID: ERKi_P_MEKi_PP  initialValue: 0
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*kd55_p* x(81) ) + (1)*(1)* (compartment_Compartment*((k52_p* x(77) * x(80) )-(kd44_p* x(81) ))) );
	
//x(82)   ID: ERKi_PP  initialValue: 0
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*((k56_p* x(82) * x(60) )-(kd56_p* x(83) ))) + (-1)*(1)* (compartment_Compartment*((k126_p* x(82) * x(19) )-(kd126_p* x(91) ))) + (-1)*(1)* (compartment_Compartment*((k126_p* x(82) * x(66) )-(kd126_p* x(93) ))) + (-1)*(1)* (compartment_Compartment*((k126_p* x(82) * x(24) )-(kd126_p* x(97) ))) + (-1)*(1)* (compartment_Compartment*((k127_p* x(82) * x(95) )-(kd127_p* x(91) ))) + (-1)*(1)* (compartment_Compartment*((k127_p* x(82) * x(95) )-(kd127_p* x(93) ))) + (-1)*(1)* (compartment_Compartment*((k127_p* x(82) * x(98) )-(kd127_p* x(97) ))) + (1)*(1)* (compartment_Compartment*kd55_p* x(81) ) );
	
//x(83)   ID: ERKi_PP_phosphatase3  initialValue: 0
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*kd57_p* x(83) ) + (1)*(1)* (compartment_Compartment*((k56_p* x(82) * x(60) )-(kd56_p* x(83) ))) );
	
//x(84)   ID: ERKi_P_phosphatase3  initialValue: 0
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*kd57_p* x(84) ) + (1)*(1)* (compartment_Compartment*((k58_p* x(60) * x(80) )-(kd58_p* x(84) ))) );
	
//x(85)   ID: EGFRidag  initialValue: 0
	(1/compartment_Compartment)*( (1)*(1)* (compartment_Compartment*k60_p* x(6) ) );
	
//x(86)   ID: _EGF_EGFRi___2deg  initialValue: 0
	(1/compartment_Compartment)*( (1)*(1)* (compartment_Compartment*k60_p* x(8) ) + (1)*(1)* (compartment_Compartment*k60_p* x(17) ) + (1)*(1)* (compartment_Compartment*k60_p* x(18) ) + (1)*(1)* (compartment_Compartment*k60_p* x(19) ) + (1)*(1)* (compartment_Compartment*k60_p* x(20) ) + (1)*(1)* (compartment_Compartment*k60_p* x(21) ) + (1)*(1)* (compartment_Compartment*k60_p* x(63) ) + (1)*(1)* (compartment_Compartment*k60_p* x(64) ) + (1)*(1)* (compartment_Compartment*k60_p* x(65) ) + (1)*(1)* (compartment_Compartment*k60_p* x(66) ) + (1)*(1)* (compartment_Compartment*k60_p* x(67) ) + (1)*(1)* (compartment_Compartment*k60_p* x(68) ) );
	
//x(87)   ID: _EGF_EGFR__2_GAP_Grb2_Sos_Prot  initialValue: 0
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*kd5_p* x(87) ) + (1)*(1)* (compartment_Compartment*((k4_p* x(25) * x(12) )-(kd4_p* x(87) ))) );
	
//x(88)   ID: _EGF_EGFR__2_GAP_Grb2_Sos_Ras_GDP_Prot  initialValue: 0
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*kd5_p* x(88) ) + (1)*(1)* (compartment_Compartment*((k4_p* x(27) * x(12) )-(kd4_p* x(88) ))) );
	
//x(89)   ID: _EGF_EGFR__2_GAP_Grb2_Sos_Ras_GTP_Prot  initialValue: 0
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*kd5_p* x(89) ) + (1)*(1)* (compartment_Compartment*((k4_p* x(29) * x(12) )-(kd4_p* x(89) ))) );
	
//x(90)   ID: _EGF_EGFR__2_GAP_Grb2_Sos_ERK_PP  initialValue: 0
	(1/compartment_Compartment)*( (1)*(1)* (compartment_Compartment*((k126_p* x(59) * x(25) )-(kd126_p* x(90) ))) + (1)*(1)* (compartment_Compartment*((k127_p* x(59) * x(94) )-(kd127_p* x(90) ))) );
	
//x(91)   ID: _EGF_EGFRi__2_GAP_Grb2_Sos_ERKi_PP  initialValue: 0
	(1/compartment_Compartment)*( (1)*(1)* (compartment_Compartment*((k126_p* x(82) * x(19) )-(kd126_p* x(91) ))) + (1)*(1)* (compartment_Compartment*((k127_p* x(82) * x(95) )-(kd127_p* x(91) ))) );
	
//x(92)   ID: _EGF_EGFR__2_GAP_SHC__Grb2_Sos_ERK_PP  initialValue: 0
	(1/compartment_Compartment)*( (1)*(1)* (compartment_Compartment*((k126_p* x(59) * x(35) )-(kd126_p* x(92) ))) + (1)*(1)* (compartment_Compartment*((k127_p* x(59) * x(94) )-(kd127_p* x(92) ))) );
	
//x(93)   ID: _EGF_EGFRi__2_GAP_SHC__Grb2_Sos_ERKi_PP  initialValue: 0
	(1/compartment_Compartment)*( (1)*(1)* (compartment_Compartment*((k126_p* x(82) * x(66) )-(kd126_p* x(93) ))) + (1)*(1)* (compartment_Compartment*((k127_p* x(82) * x(95) )-(kd127_p* x(93) ))) );
	
//x(94)   ID: _EGF_EGFR__2_GAP_Grb2_Sos_deg  initialValue: 0
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*((k127_p* x(59) * x(94) )-(kd127_p* x(90) ))) + (-1)*(1)* (compartment_Compartment*((k127_p* x(59) * x(94) )-(kd127_p* x(92) ))) );
	
//x(95)   ID: _EGF_EGFRi__2_GAP_Grb2_Sos_deg  initialValue: 0
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*((k127_p* x(82) * x(95) )-(kd127_p* x(91) ))) + (-1)*(1)* (compartment_Compartment*((k127_p* x(82) * x(95) )-(kd127_p* x(93) ))) );
	
//x(96)   ID: Sos_ERK_PP  initialValue: 0
	(1/compartment_Compartment)*( (1)*(1)* (compartment_Compartment*((k126_p* x(59) * x(24) )-(kd126_p* x(96) ))) + (1)*(1)* (compartment_Compartment*((k127_p* x(59) * x(98) )-(kd127_p* x(96) ))) );
	
//x(97)   ID: Sos_ERKi_PP  initialValue: 0
	(1/compartment_Compartment)*( (1)*(1)* (compartment_Compartment*((k126_p* x(82) * x(24) )-(kd126_p* x(97) ))) + (1)*(1)* (compartment_Compartment*((k127_p* x(82) * x(98) )-(kd127_p* x(97) ))) );
	
//x(98)   ID: Sosi  initialValue: 0
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*((k127_p* x(59) * x(98) )-(kd127_p* x(96) ))) + (-1)*(1)* (compartment_Compartment*((k127_p* x(82) * x(98) )-(kd127_p* x(97) ))) );
	
//x(99)   ID: ERKi_MEKi_PP_0  initialValue: 0.99999999999997
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*kd53_p* x(99) ) + (1)*(1)* (compartment_Compartment*((k52_p* x(55) * x(77) )-(kd44_p* x(99) ))) );
	
//x(100)   ID: _EGF_EGFR__2_GAP_SHC__Grb2_Prot_0  initialValue: 0.999999999999972
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*kd5_p* x(100) ) + (1)*(1)* (compartment_Compartment*((k4_p* x(34) * x(12) )-(kd4_p* x(100) ))) );
	
//x(101)   ID: _EGF_EGFR__2_GAP_SHC__Grb2_Sos_Prot_0  initialValue: 0.999999999999972
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*kd5_p* x(101) ) + (1)*(1)* (compartment_Compartment*((k4_p* x(35) * x(12) )-(kd4_p* x(101) ))) );
	
//x(102)   ID: _EGF_EGFR__2_GAP_SHC__Grb2_Sos_Ras_GDP_Prot_0  initialValue: 0.999999999999972
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*kd5_p* x(102) ) + (1)*(1)* (compartment_Compartment*((k4_p* x(36) * x(12) )-(kd4_p* x(102) ))) );
	
//x(103)   ID: _EGF_EGFR__2_GAP_SHC__Grb2_Sos_Ras_GTP_Prot_0  initialValue: 0.999999999999973
	(1/compartment_Compartment)*( (-1)*(1)* (compartment_Compartment*kd5_p* x(103) ) + (1)*(1)* (compartment_Compartment*((k4_p* x(37) * x(12) )-(kd4_p* x(103) ))) )
	];


	
endfunction
        x0=[4.99999999999939E-8;4.99999999999991E4;0;0;0;0;0;0;0;0;0;8.09999999999976E4;0;1.19999999999997E4;0;0;0;0;0;0;0;1.09999999999996E4;0;2.62999999999984E4;0;7.19999999999998E4;0;0;0;40000;1.00999999999999E5;0;0;0;0;0;0;0;0;0;40000;0;0;40000;0;0;2.09999999999994E7;0;0;0;0;0;40000;0;2.20999999999994E7;0;0;0;0;9.99999999999974E6;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0.99999999999997;0.999999999999972;0.999999999999972;0.999999999999972;0.999999999999973];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)' 'x(14)' 'x(15)' 'x(16)' 'x(17)' 'x(18)' 'x(19)' 'x(20)' 'x(21)' 'x(22)' 'x(23)' 'x(24)' 'x(25)' 'x(26)' 'x(27)' 'x(28)' 'x(29)' 'x(30)' 'x(31)' 'x(32)' 'x(33)' 'x(34)' 'x(35)' 'x(36)' 'x(37)' 'x(38)' 'x(39)' 'x(40)' 'x(41)' 'x(42)' 'x(43)' 'x(44)' 'x(45)' 'x(46)' 'x(47)' 'x(48)' 'x(49)' 'x(50)' 'x(51)' 'x(52)' 'x(53)' 'x(54)' 'x(55)' 'x(56)' 'x(57)' 'x(58)' 'x(59)' 'x(60)' 'x(61)' 'x(62)' 'x(63)' 'x(64)' 'x(65)' 'x(66)' 'x(67)' 'x(68)' 'x(69)' 'x(70)' 'x(71)' 'x(72)' 'x(73)' 'x(74)' 'x(75)' 'x(76)' 'x(77)' 'x(78)' 'x(79)' 'x(80)' 'x(81)' 'x(82)' 'x(83)' 'x(84)' 'x(85)' 'x(86)' 'x(87)' 'x(88)' 'x(89)' 'x(90)' 'x(91)' 'x(92)' 'x(93)' 'x(94)' 'x(95)' 'x(96)' 'x(97)' 'x(98)' 'x(99)' 'x(100)' 'x(101)' 'x(102)' 'x(103)'],[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18;19;20;21;22;23;24;25;26;27;28;29;30;31;32;33;34;35;36;37;38;39;40;41;42;43;44;45;46;47;48;49;50;51;52;53;54;55;56;57;58;59;60;61;62;63;64;65;66;67;68;69;70;71;72;73;74;75;76;77;78;79;80;81;82;83;84;85;86;87;88;89;90;91;92;93;94;95;96;97;98;99;100;101;102;103])

//real_variable:
	
	
//x(1)   id: EGF  initialValue: 4.99999999999939E-8
	
//x(2)   id: EGFR  initialValue: 4.99999999999991E4
	
//x(3)   id: EGF_EGFR  initialValue: 0
	
//x(4)   id: _EGF_EGFR_2  initialValue: 0
	
//x(5)   id: _EGF_EGFR__2  initialValue: 0
	
//x(6)   id: EGFRi  initialValue: 0
	
//x(7)   id: _EGF_EGFR__2_GAP_Grb2_Prot  initialValue: 0
	
//x(8)   id: _EGF_EGFRi__2  initialValue: 0
	
//x(9)   id: Proti  initialValue: 0
	
//x(10)   id: EGF_EGFRi  initialValue: 0
	
//x(11)   id: _EGF_EGFRi_2  initialValue: 0
	
//x(12)   id: Prot  initialValue: 8.09999999999976E4
	
//x(13)   id: EGFideg  initialValue: 0
	
//x(14)   id: GAP  initialValue: 1.19999999999997E4
	
//x(15)   id: _EGF_EGFR__2_GAP  initialValue: 0
	
//x(16)   id: EGFi  initialValue: 0
	
//x(17)   id: _EGF_EGFRi__2_GAP  initialValue: 0
	
//x(18)   id: _EGF_EGFRi__2_GAP_Grb2  initialValue: 0
	
//x(19)   id: _EGF_EGFRi__2_GAP_Grb2_Sos  initialValue: 0
	
//x(20)   id: _EGF_EGFRi__2_GAP_Grb2_Sos_Ras_GDP  initialValue: 0
	
//x(21)   id: _EGF_EGFRi__2_GAP_Grb2_Sos_Ras_GTP  initialValue: 0
	
//x(22)   id: Grb2  initialValue: 1.09999999999996E4
	
//x(23)   id: _EGF_EGFR__2_GAP_Grb2  initialValue: 0
	
//x(24)   id: Sos  initialValue: 2.62999999999984E4
	
//x(25)   id: _EGF_EGFR__2_GAP_Grb2_Sos  initialValue: 0
	
//x(26)   id: Ras_GDP  initialValue: 7.19999999999998E4
	
//x(27)   id: _EGF_EGFR__2_GAP_Grb2_Sos_Ras_GDP  initialValue: 0
	
//x(28)   id: Ras_GTP  initialValue: 0
	
//x(29)   id: _EGF_EGFR__2_GAP_Grb2_Sos_Ras_GTP  initialValue: 0
	
//x(30)   id: Grb2_Sos  initialValue: 40000
	
//x(31)   id: Shc  initialValue: 1.00999999999999E5
	
//x(32)   id: _EGF_EGFR__2_GAP_SHC  initialValue: 0
	
//x(33)   id: _EGF_EGFR__2_GAP_SHC_0  initialValue: 0
	
//x(34)   id: _EGF_EGFR__2_GAP_SHC__Grb2  initialValue: 0
	
//x(35)   id: _EGF_EGFR__2_GAP_SHC__Grb2_Sos  initialValue: 0
	
//x(36)   id: _EGF_EGFR__2_GAP_SHC__Grb2_Sos_Ras_GDP  initialValue: 0
	
//x(37)   id: _EGF_EGFR__2_GAP_SHC__Grb2_Sos_Ras_GTP  initialValue: 0
	
//x(38)   id: Shc__Grb2_Sos  initialValue: 0
	
//x(39)   id: Shc__Grb2  initialValue: 0
	
//x(40)   id: Shc_0  initialValue: 0
	
//x(41)   id: Raf  initialValue: 40000
	
//x(42)   id: Raf_Ras_GTP  initialValue: 0
	
//x(43)   id: Ras_GTP_  initialValue: 0
	
//x(44)   id: Phosphatase1  initialValue: 40000
	
//x(45)   id: Raf_0  initialValue: 0
	
//x(46)   id: Raf__phosphatase1  initialValue: 0
	
//x(47)   id: MEK  initialValue: 2.09999999999994E7
	
//x(48)   id: MEK_Raf  initialValue: 0
	
//x(49)   id: MEK_P  initialValue: 0
	
//x(50)   id: MEK_P_Raf  initialValue: 0
	
//x(51)   id: MEK_PP  initialValue: 0
	
//x(52)   id: MEK_PP_phosphatase2  initialValue: 0
	
//x(53)   id: phosphatse2  initialValue: 40000
	
//x(54)   id: MEK_P_phosphatase2  initialValue: 0
	
//x(55)   id: ERK  initialValue: 2.20999999999994E7
	
//x(56)   id: ERK_MEK_PP  initialValue: 0
	
//x(57)   id: ERK_P  initialValue: 0
	
//x(58)   id: ERK_P_MEKPP  initialValue: 0
	
//x(59)   id: ERK_PP  initialValue: 0
	
//x(60)   id: phosphatase3  initialValue: 9.99999999999974E6
	
//x(61)   id: ERK_PP_phosphatase3  initialValue: 0
	
//x(62)   id: ERK_P_phosphatase3  initialValue: 0
	
//x(63)   id: _EGF_EGFRi__2_GAP_SHC  initialValue: 0
	
//x(64)   id: _EGF_EGFRi__2_GAP_SHC_0  initialValue: 0
	
//x(65)   id: _EGF_EGFRi__2_GAP_SHC__Grb2  initialValue: 0
	
//x(66)   id: _EGF_EGFRi__2_GAP_SHC__Grb2_Sos  initialValue: 0
	
//x(67)   id: _EGF_EGFRi__2_GAP_SHC__Grb2_Sos_Ras_GDP  initialValue: 0
	
//x(68)   id: _EGF_EGFRi__2_GAP_SHC__Grb2_Sos_Ras_GTP  initialValue: 0
	
//x(69)   id: Ras_GTPi  initialValue: 0
	
//x(70)   id: Raf_Ras_GTPi  initialValue: 0
	
//x(71)   id: Ras_GTPi_0  initialValue: 0
	
//x(72)   id: Rafi  initialValue: 0
	
//x(73)   id: Rafi__phosphatase1  initialValue: 0
	
//x(74)   id: MEK_Rafi  initialValue: 0
	
//x(75)   id: MEKi_P  initialValue: 0
	
//x(76)   id: MEK_P_Rafi  initialValue: 0
	
//x(77)   id: MEKi_PP  initialValue: 0
	
//x(78)   id: MEKi_PP_phosphatase2  initialValue: 0
	
//x(79)   id: MEKi_P_phosphatase2  initialValue: 0
	
//x(80)   id: ERKi_P  initialValue: 0
	
//x(81)   id: ERKi_P_MEKi_PP  initialValue: 0
	
//x(82)   id: ERKi_PP  initialValue: 0
	
//x(83)   id: ERKi_PP_phosphatase3  initialValue: 0
	
//x(84)   id: ERKi_P_phosphatase3  initialValue: 0
	
//x(85)   id: EGFRidag  initialValue: 0
	
//x(86)   id: _EGF_EGFRi___2deg  initialValue: 0
	
//x(87)   id: _EGF_EGFR__2_GAP_Grb2_Sos_Prot  initialValue: 0
	
//x(88)   id: _EGF_EGFR__2_GAP_Grb2_Sos_Ras_GDP_Prot  initialValue: 0
	
//x(89)   id: _EGF_EGFR__2_GAP_Grb2_Sos_Ras_GTP_Prot  initialValue: 0
	
//x(90)   id: _EGF_EGFR__2_GAP_Grb2_Sos_ERK_PP  initialValue: 0
	
//x(91)   id: _EGF_EGFRi__2_GAP_Grb2_Sos_ERKi_PP  initialValue: 0
	
//x(92)   id: _EGF_EGFR__2_GAP_SHC__Grb2_Sos_ERK_PP  initialValue: 0
	
//x(93)   id: _EGF_EGFRi__2_GAP_SHC__Grb2_Sos_ERKi_PP  initialValue: 0
	
//x(94)   id: _EGF_EGFR__2_GAP_Grb2_Sos_deg  initialValue: 0
	
//x(95)   id: _EGF_EGFRi__2_GAP_Grb2_Sos_deg  initialValue: 0
	
//x(96)   id: Sos_ERK_PP  initialValue: 0
	
//x(97)   id: Sos_ERKi_PP  initialValue: 0
	
//x(98)   id: Sosi  initialValue: 0
	
//x(99)   id: ERKi_MEKi_PP_0  initialValue: 0.99999999999997
	
//x(100)   id: _EGF_EGFR__2_GAP_SHC__Grb2_Prot_0  initialValue: 0.999999999999972
	
//x(101)   id: _EGF_EGFR__2_GAP_SHC__Grb2_Sos_Prot_0  initialValue: 0.999999999999972
	
//x(102)   id: _EGF_EGFR__2_GAP_SHC__Grb2_Sos_Ras_GDP_Prot_0  initialValue: 0.999999999999972
	
//x(103)   id: _EGF_EGFR__2_GAP_SHC__Grb2_Sos_Ras_GTP_Prot_0  initialValue: 0.999999999999973