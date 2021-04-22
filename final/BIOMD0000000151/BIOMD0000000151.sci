
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_cytosol   id: cytosol
	compartment_cytosol=1;
		
// compartment_nucleus   id: nucleus
	compartment_nucleus=1;
		
// IL6_p   id: IL6
	IL6_p=0.38;
		
// kf0_p   id: kf0
	kf0_p=0.1;
		
// kr0_p   id: kr0
	kr0_p=0.05;
		
// kf1_p   id: kf1
	kf1_p=0.1;
		
// kr1_p   id: kr1
	kr1_p=0.05;
		
// kf2_p   id: kf2
	kf2_p=0.02;
		
// kr2_p   id: kr2
	kr2_p=0.02;
		
// kf3_p   id: kf3
	kf3_p=0.04;
		
// kr3_p   id: kr3
	kr3_p=0.2;
		
// k4_p   id: k4
	k4_p=0.005;
		
// k10_p   id: k10
	k10_p=0.003;
		
// kf5_p   id: kf5
	kf5_p=0.008;
		
// kr5_p   id: kr5
	kr5_p=0.8;
		
// k6_p   id: k6
	k6_p=0.4;
		
// kf7_p   id: kf7
	kf7_p=0.005;
		
// kr7_p   id: kr7
	kr7_p=0.5;
		
// kf9_p   id: kf9
	kf9_p=0.001;
		
// kr9_p   id: kr9
	kr9_p=0.2;
		
// kf21_p   id: kf21
	kf21_p=0.02;
		
// kr21_p   id: kr21
	kr21_p=0.1;
		
// kf37_p   id: kf37
	kf37_p=0.3;
		
// kr37_p   id: kr37
	kr37_p=0.0009;
		
// kf39_p   id: kf39
	kf39_p=0.3;
		
// kr39_p   id: kr39
	kr39_p=0.0009;
		
// kf32_p   id: kf32
	kf32_p=0.1;
		
// kr32_p   id: kr32
	kr32_p=0.000245;
		
// k12_p   id: k12
	k12_p=0.003;
		
// kf13_p   id: kf13
	kf13_p=2E-7;
		
// kr13_p   id: kr13
	kr13_p=0.2;
		
// k17_p   id: k17
	k17_p=0.05;
		
// kf8_p   id: kf8
	kf8_p=0.02;
		
// kr8_p   id: kr8
	kr8_p=0.1;
		
// kf11_p   id: kf11
	kf11_p=0.001;
		
// kr11_p   id: kr11
	kr11_p=0.2;
		
// k14_p   id: k14
	k14_p=0.005;
		
// Vm_p   id: Vm
	Vm_p=1.7;
		
// Km_p   id: Km
	Km_p=340;
		
// kf34_p   id: kf34
	kf34_p=6;
		
// kr34_p   id: kr34
	kr34_p=0.06;
		
// kf60_p   id: kf60
	kf60_p=0.5;
		
// kr60_p   id: kr60
	kr60_p=0.005;
		
// kf15_p   id: kf15
	kf15_p=0.001;
		
// kr15_p   id: kr15
	kr15_p=0.2;
		
// kf61_p   id: kf61
	kf61_p=0.2;
		
// kr61_p   id: kr61
	kr61_p=2E-7;
		
// k16_p   id: k16
	k16_p=0.005;
		
// k18a_p   id: k18a
	k18a_p=0.01;
		
// k18b_p   id: k18b
	k18b_p=400;
		
// k19_p   id: k19
	k19_p=0.001;
		
// k22_p   id: k22
	k22_p=0.0005;
		
// k20_p   id: k20
	k20_p=0.01;
		
// k23_p   id: k23
	k23_p=0.0005;
		
// kf38_p   id: kf38
	kf38_p=0.01;
		
// kr38_p   id: kr38
	kr38_p=0.55;
		
// kf35_p   id: kf35
	kf35_p=0.0015;
		
// kr35_p   id: kr35
	kr35_p=0.0045;
		
// kf24_p   id: kf24
	kf24_p=0.01;
		
// kr24_p   id: kr24
	kr24_p=0.55;
		
// kf25_p   id: kf25
	kf25_p=0.01;
		
// kr25_p   id: kr25
	kr25_p=0.0214;
		
// kf40_p   id: kf40
	kf40_p=0.03;
		
// kr40_p   id: kr40
	kr40_p=0.064;
		
// kf26_p   id: kf26
	kf26_p=0.015;
		
// kr26_p   id: kr26
	kr26_p=1.3;
		
// kf31_p   id: kf31
	kf31_p=0.023;
		
// kr31_p   id: kr31
	kr31_p=0.00022;
		
// kf27_p   id: kf27
	kf27_p=0.5;
		
// kr27_p   id: kr27
	kr27_p=0.0001;
		
// kf28_p   id: kf28
	kf28_p=0.001;
		
// kr28_p   id: kr28
	kr28_p=0.0053;
		
// kf41_p   id: kf41
	kf41_p=0.03;
		
// kr41_p   id: kr41
	kr41_p=0.0429;
		
// kf33_p   id: kf33
	kf33_p=0.3;
		
// kr33_p   id: kr33
	kr33_p=0.021;
		
// kf30_p   id: kf30
	kf30_p=0.0079;
		
// kr30_p   id: kr30
	kr30_p=0.4;
		
// k43_p   id: k43
	k43_p=1;
		
// kf29_p   id: kf29
	kf29_p=1;
		
// kr29_p   id: kr29
	kr29_p=0.0007;
		
// kf42_p   id: kf42
	kf42_p=0.0717;
		
// kr42_p   id: kr42
	kr42_p=0.2;
		
// kf44_p   id: kf44
	kf44_p=0.011;
		
// kr44_p   id: kr44
	kr44_p=0.001833;
		
// k45_p   id: k45
	k45_p=3.5;
		
// kf46_p   id: kf46
	kf46_p=0.011;
		
// kr46_p   id: kr46
	kr46_p=0.001833;
		
// k51_p   id: k51
	k51_p=0.058;
		
// k49_p   id: k49
	k49_p=0.058;
		
// kf50_p   id: kf50
	kf50_p=0.00025;
		
// kr50_p   id: kr50
	kr50_p=0.5;
		
// k47_p   id: k47
	k47_p=2.9;
		
// kf48_p   id: kf48
	kf48_p=0.0143;
		
// kr48_p   id: kr48
	kr48_p=0.8;
		
// kf52_p   id: kf52
	kf52_p=0.00011;
		
// kr52_p   id: kr52
	kr52_p=0.033;
		
// k53_p   id: k53
	k53_p=16;
		
// kr54_p   id: kr54
	kr54_p=0.033;
		
// kf54_p   id: kf54
	kf54_p=0.00011;
		
// k55_p   id: k55
	k55_p=6.7;
		
// k59_p   id: k59
	k59_p=0.3;
		
// k57_p   id: k57
	k57_p=0.27;
		
// kf58_p   id: kf58
	kf58_p=0.005;
		
// kr58_p   id: kr58
	kr58_p=0.5;
		
// kf56_p   id: kf56
	kf56_p=0.014;
		
// kr56_p   id: kr56
	kr56_p=0.6;
		
// x1_s   id: x1
	x1_s=8;
		
// x3_s   id: x3
	x3_s=0.8;
		



xdot=[
//x(1)   ID: x2  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*kr0_p* x(1) ) + (1)*(1)* (compartment_cytosol*kf0_p*x1_s*IL6_p) + (1)*(1)* (compartment_cytosol*((kr2_p* x(2) )-(kf2_p* x(1) * x(3) ))) );
	
//x(2)   ID: x6  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kr2_p* x(2) )-(kf2_p* x(1) * x(3) ))) + (-1)*(2)* (compartment_cytosol*kf3_p*(power( x(2) ,( 2 )))) + (1)*(2)* (compartment_cytosol*kr3_p* x(4) ) );
	
//x(3)   ID: x5  initialValue: 0
	(1/compartment_cytosol)*( (1)*(1)* (compartment_cytosol*((kr2_p* x(2) )-(kf2_p* x(1) * x(3) ))) + (1)*(1)* (compartment_cytosol*((kf1_p*x3_s* x(58) )-(kr1_p* x(3) ))) );
	
//x(4)   ID: x7  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*kr3_p* x(4) ) + (-1)*(1)* (compartment_cytosol*k4_p* x(4) ) + (1)*(1)* (compartment_cytosol*kf3_p*(power( x(2) ,( 2 )))) + (1)*(1)* (compartment_cytosol*k10_p* x(6) ) + (1)*(1)* (compartment_cytosol*k10_p* x(24) ) );
	
//x(5)   ID: x8  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kf5_p* x(5) * x(8) )-(kr5_p* x(9) ))) + (-1)*(1)* (compartment_cytosol*((kf7_p* x(5) * x(10) )-(kr7_p* x(11) ))) + (-1)*(1)* (compartment_cytosol*((kf9_p* x(5) * x(7) )-(kr9_p* x(6) ))) + (-1)*(1)* (compartment_cytosol*((kf21_p* x(12) * x(5) )-(kr21_p* x(13) ))) + (1)*(1)* (compartment_cytosol*k4_p* x(4) ) + (1)*(1)* (compartment_cytosol*k6_p* x(9) ) + (1)*(1)* (compartment_cytosol*((kf37_p* x(14) )-(kr37_p* x(5) * x(15) ))) + (1)*(1)* (compartment_cytosol*((kf39_p* x(16) )-(kr39_p* x(17) * x(5) ))) + (1)*(1)* (compartment_cytosol*((kf32_p* x(18) )-(kr32_p* x(19) * x(5) ))) );
	
//x(6)   ID: x16  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*k10_p* x(6) ) + (-1)*(1)* (compartment_cytosol*((kf34_p* x(6) )-(kr34_p* x(14) ))) + (1)*(1)* (compartment_cytosol*((kf9_p* x(5) * x(7) )-(kr9_p* x(6) ))) );
	
//x(7)   ID: x15  initialValue: 100
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kf9_p* x(5) * x(7) )-(kr9_p* x(6) ))) + (-1)*(1)* (compartment_cytosol*((kf9_p* x(7) * x(54) )-(kr9_p* x(24) ))) + (1)*(1)* (compartment_cytosol*k10_p* x(6) ) + (1)*(1)* (compartment_cytosol*k10_p* x(24) ) + (1)*(1)* ((compartment_cytosol*Vm_p* x(15) )/(Km_p+ x(15) )) );
	
//x(8)   ID: x9  initialValue: 1000
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kf5_p* x(5) * x(8) )-(kr5_p* x(9) ))) + (-1)*(1)* (compartment_cytosol*((kf13_p* x(8) * x(10) )-(kr13_p* x(22) ))) + (-1)*(1)* (compartment_cytosol*((kf5_p* x(8) * x(13) )-(kr5_p* x(54) ))) + (1)*(1)* (compartment_cytosol*k12_p* x(20) ) + (1)*(1)* (compartment_nucleus*k17_p* x(23) ) + (1)*(1)* (compartment_cytosol*k10_p* x(24) ) );
	
//x(9)   ID: x11  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*k6_p* x(9) ) + (1)*(1)* (compartment_cytosol*((kf5_p* x(5) * x(8) )-(kr5_p* x(9) ))) );
	
//x(10)   ID: x10  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kf7_p* x(5) * x(10) )-(kr7_p* x(11) ))) + (-1)*(1)* (compartment_cytosol*((kf13_p* x(8) * x(10) )-(kr13_p* x(22) ))) + (-1)*(1)* (compartment_cytosol*((( 2 )*kf8_p*(power( x(10) ,( 2 ))))-(( 2 )*kr8_p* x(25) ))) + (-1)*(1)* (compartment_cytosol*((kf11_p* x(10) * x(21) )-(kr11_p* x(20) ))) + (1)*(1)* (compartment_cytosol*k6_p* x(9) ) );
	
//x(11)   ID: x12  initialValue: 0
	(1/compartment_cytosol)*( (1)*(1)* (compartment_cytosol*((kf7_p* x(5) * x(10) )-(kr7_p* x(11) ))) );
	
//x(12)   ID: x29  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kf21_p* x(12) * x(5) )-(kr21_p* x(13) ))) + (-1)*(1)* (compartment_cytosol*k23_p* x(12) ) + (1)*(1)* (compartment_cytosol*k10_p* x(24) ) + (1)*(1)* (compartment_nucleus*k20_p* x(59) ) + (1)*(1)* (compartment_cytosol*k23_p* x(24) ) );
	
//x(13)   ID: x30  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kf5_p* x(8) * x(13) )-(kr5_p* x(54) ))) + (1)*(1)* (compartment_cytosol*((kf21_p* x(12) * x(5) )-(kr21_p* x(13) ))) );
	
//x(14)   ID: x39  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kf37_p* x(14) )-(kr37_p* x(5) * x(15) ))) + (-1)*(1)* (compartment_cytosol*((kf24_p* x(14) * x(32) )-(kr24_p* x(16) ))) + (-1)*(1)* (compartment_cytosol*((kf41_p* x(64) * x(14) )-(kr41_p* x(18) ))) + (1)*(1)* (compartment_cytosol*((kf34_p* x(6) )-(kr34_p* x(14) ))) );
	
//x(15)   ID: x46  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* ((compartment_cytosol*Vm_p* x(15) )/(Km_p+ x(15) )) + (-1)*(1)* (compartment_cytosol*((kf38_p* x(32) * x(15) )-(kr38_p* x(17) ))) + (1)*(1)* (compartment_cytosol*((kf37_p* x(14) )-(kr37_p* x(5) * x(15) ))) + (1)*(1)* (compartment_cytosol*((kf33_p* x(19) )-(kr33_p* x(64) * x(15) ))) );
	
//x(16)   ID: x40  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kf39_p* x(16) )-(kr39_p* x(17) * x(5) ))) + (-1)*(1)* (compartment_cytosol*((kf25_p* x(52) * x(16) )-(kr25_p* x(18) ))) + (1)*(1)* (compartment_cytosol*((kf24_p* x(14) * x(32) )-(kr24_p* x(16) ))) );
	
//x(17)   ID: x45  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kf40_p* x(52) * x(17) )-(kr40_p* x(19) ))) + (1)*(1)* (compartment_cytosol*((kf39_p* x(16) )-(kr39_p* x(17) * x(5) ))) + (1)*(1)* (compartment_cytosol*((kf38_p* x(32) * x(15) )-(kr38_p* x(17) ))) );
	
//x(18)   ID: x41  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kf32_p* x(18) )-(kr32_p* x(19) * x(5) ))) + (-1)*(1)* (compartment_cytosol*((kf26_p* x(33) * x(18) )-(kr26_p* x(34) ))) + (-1)*(1)* (compartment_cytosol*((kf30_p* x(60) * x(18) )-(kr30_p* x(56) ))) + (1)*(1)* (compartment_cytosol*((kf25_p* x(52) * x(16) )-(kr25_p* x(18) ))) + (1)*(1)* (compartment_cytosol*((kf31_p* x(56) )-(kr31_p* x(33) * x(18) ))) + (1)*(1)* (compartment_cytosol*((kf27_p* x(34) )-(kr27_p* x(35) * x(18) ))) + (1)*(1)* (compartment_cytosol*((kf41_p* x(64) * x(14) )-(kr41_p* x(18) ))) );
	
//x(19)   ID: x44  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kf33_p* x(19) )-(kr33_p* x(64) * x(15) ))) + (1)*(1)* (compartment_cytosol*((kf32_p* x(18) )-(kr32_p* x(19) * x(5) ))) + (1)*(1)* (compartment_cytosol*((kf40_p* x(52) * x(17) )-(kr40_p* x(19) ))) );
	
//x(20)   ID: x18  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*k12_p* x(20) ) + (1)*(1)* (compartment_cytosol*((kf11_p* x(10) * x(21) )-(kr11_p* x(20) ))) );
	
//x(21)   ID: x17  initialValue: 50
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kf11_p* x(10) * x(21) )-(kr11_p* x(20) ))) + (-1)*(1)* (compartment_cytosol*((kf11_p* x(25) * x(21) )-(kr11_p* x(63) ))) + (1)*(1)* (compartment_cytosol*k12_p* x(20) ) + (1)*(1)* (compartment_cytosol*k12_p* x(63) ) );
	
//x(22)   ID: x14  initialValue: 0
	(1/compartment_cytosol)*( (1)*(1)* (compartment_cytosol*((kf13_p* x(8) * x(10) )-(kr13_p* x(22) ))) + (1)*(1)* (compartment_cytosol*k12_p* x(63) ) );
	
//x(23)   ID: x22  initialValue: 0
	(1/compartment_nucleus)*( (-1)*(1)* (compartment_nucleus*k17_p* x(23) ) + (1)*(1)* (compartment_nucleus*((kr13_p* x(30) )-(kf13_p* x(27) * x(23) ))) + (1)*(1)* (compartment_nucleus*k16_p* x(53) ) );
	
//x(24)   ID: x32  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*k10_p* x(24) ) + (-1)*(1)* (compartment_cytosol*k23_p* x(24) ) + (1)*(1)* (compartment_cytosol*((kf9_p* x(7) * x(54) )-(kr9_p* x(24) ))) );
	
//x(25)   ID: x13  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kf11_p* x(25) * x(21) )-(kr11_p* x(63) ))) + (-1)*(1)* (compartment_cytosol*k14_p* x(25) ) + (1)*(0.5)* (compartment_cytosol*((( 2 )*kf8_p*(power( x(10) ,( 2 ))))-(( 2 )*kr8_p* x(25) ))) );
	
//x(26)   ID: x20  initialValue: 0
	(1/compartment_nucleus)*( (-1)*(1)* (compartment_nucleus*((kr8_p* x(26) )-(kf8_p*(power( x(27) ,( 2 )))))) + (-1)*(1)* (compartment_nucleus*((kf15_p* x(28) * x(26) )-(kr15_p* x(29) ))) + (1)*(1)* (compartment_cytosol*k14_p* x(25) ) );
	
//x(27)   ID: x21  initialValue: 0
	(1/compartment_nucleus)*( (-1)*(1)* (compartment_nucleus*((kf15_p* x(28) * x(27) )-(kr15_p* x(53) ))) + (1)*(2)* (compartment_nucleus*((kr8_p* x(26) )-(kf8_p*(power( x(27) ,( 2 )))))) + (1)*(1)* (compartment_nucleus*((kr13_p* x(30) )-(kf13_p* x(27) * x(23) ))) );
	
//x(28)   ID: x23  initialValue: 60
	(1/compartment_nucleus)*( (-1)*(1)* (compartment_nucleus*((kf15_p* x(28) * x(26) )-(kr15_p* x(29) ))) + (-1)*(1)* (compartment_nucleus*((kf15_p* x(28) * x(27) )-(kr15_p* x(53) ))) + (1)*(1)* (compartment_nucleus*k16_p* x(53) ) + (1)*(1)* (compartment_nucleus*k16_p* x(29) ) );
	
//x(29)   ID: x27  initialValue: 0
	(1/compartment_nucleus)*( (-1)*(1)* (compartment_nucleus*k16_p* x(29) ) + (1)*(1)* (compartment_nucleus*((kf15_p* x(28) * x(26) )-(kr15_p* x(29) ))) );
	
//x(30)   ID: x24  initialValue: 0
	(1/compartment_nucleus)*( (-1)*(1)* (compartment_nucleus*((kr13_p* x(30) )-(kf13_p* x(27) * x(23) ))) + (1)*(1)* (compartment_nucleus*k16_p* x(29) ) );
	
//x(31)   ID: x25  initialValue: 0
	(1/compartment_nucleus)*( (-1)*(1)* (compartment_nucleus*k19_p* x(31) ) + (1)*(1)* (compartment_nucleus*((k18a_p* x(26) )/(k18b_p+ x(26) ))) );
	
//x(32)   ID: x34  initialValue: 85
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kf38_p* x(32) * x(15) )-(kr38_p* x(17) ))) + (-1)*(1)* (compartment_cytosol*((kf24_p* x(14) * x(32) )-(kr24_p* x(16) ))) + (1)*(1)* (compartment_cytosol*((kf35_p* x(64) )-(kr35_p* x(32) * x(52) ))) );
	
//x(33)   ID: x36  initialValue: 19000
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kf26_p* x(33) * x(18) )-(kr26_p* x(34) ))) + (1)*(1)* (compartment_cytosol*((kf31_p* x(56) )-(kr31_p* x(33) * x(18) ))) );
	
//x(34)   ID: x42  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kf27_p* x(34) )-(kr27_p* x(35) * x(18) ))) + (1)*(1)* (compartment_cytosol*((kf26_p* x(33) * x(18) )-(kr26_p* x(34) ))) );
	
//x(35)   ID: x37  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kf28_p* x(35) * x(36) )-(kr28_p* x(37) ))) + (1)*(1)* (compartment_cytosol*((kf27_p* x(34) )-(kr27_p* x(35) * x(18) ))) );
	
//x(36)   ID: x47  initialValue: 67
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kf28_p* x(35) * x(36) )-(kr28_p* x(37) ))) + (1)*(1)* (compartment_cytosol*k43_p* x(38) ) );
	
//x(37)   ID: x48  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kf29_p* x(37) )-(kr29_p* x(60) * x(39) ))) + (1)*(1)* (compartment_cytosol*((kf28_p* x(35) * x(36) )-(kr28_p* x(37) ))) );
	
//x(38)   ID: x52  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*k43_p* x(38) ) + (1)*(1)* (compartment_cytosol*((kf42_p* x(40) * x(39) )-(kr42_p* x(38) ))) );
	
//x(39)   ID: x51  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kf42_p* x(40) * x(39) )-(kr42_p* x(38) ))) + (-1)*(1)* (compartment_cytosol*((kf44_p* x(39) * x(41) )-(kr44_p* x(42) ))) + (-1)*(1)* (compartment_cytosol*((kf46_p* x(43) * x(39) )-(kr46_p* x(55) ))) + (1)*(1)* (compartment_cytosol*((kf29_p* x(37) )-(kr29_p* x(60) * x(39) ))) + (1)*(1)* (compartment_cytosol*k45_p* x(42) ) + (1)*(1)* (compartment_cytosol*k47_p* x(55) ) );
	
//x(40)   ID: x50  initialValue: 67
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kf42_p* x(40) * x(39) )-(kr42_p* x(38) ))) + (1)*(1)* (compartment_cytosol*k43_p* x(38) ) );
	
//x(41)   ID: x53  initialValue: 41667
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kf44_p* x(39) * x(41) )-(kr44_p* x(42) ))) + (1)*(1)* (compartment_cytosol*k51_p* x(44) ) );
	
//x(42)   ID: x54  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*k45_p* x(42) ) + (1)*(1)* (compartment_cytosol*((kf44_p* x(39) * x(41) )-(kr44_p* x(42) ))) );
	
//x(43)   ID: x55  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kf46_p* x(43) * x(39) )-(kr46_p* x(55) ))) + (-1)*(1)* (compartment_cytosol*((kf50_p* x(43) * x(45) )-(kr50_p* x(44) ))) + (1)*(1)* (compartment_cytosol*k45_p* x(42) ) + (1)*(1)* (compartment_cytosol*k49_p* x(57) ) );
	
//x(44)   ID: x60  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*k51_p* x(44) ) + (1)*(1)* (compartment_cytosol*((kf50_p* x(43) * x(45) )-(kr50_p* x(44) ))) );
	
//x(45)   ID: x59  initialValue: 67
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kf50_p* x(43) * x(45) )-(kr50_p* x(44) ))) + (-1)*(1)* (compartment_cytosol*((kf48_p* x(46) * x(45) )-(kr48_p* x(57) ))) + (1)*(1)* (compartment_cytosol*k51_p* x(44) ) + (1)*(1)* (compartment_cytosol*k49_p* x(57) ) );
	
//x(46)   ID: x57  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kf48_p* x(46) * x(45) )-(kr48_p* x(57) ))) + (-1)*(1)* (compartment_cytosol*((kf52_p* x(46) * x(47) )-(kr52_p* x(48) ))) + (1)*(1)* (compartment_cytosol*k47_p* x(55) ) + (1)*(1)* (compartment_cytosol*k53_p* x(48) ) + (1)*(1)* (compartment_cytosol*((kr54_p* x(62) )-(kf54_p* x(46) * x(49) ))) + (1)*(1)* (compartment_cytosol*k55_p* x(62) ) );
	
//x(47)   ID: x61  initialValue: 35000
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kf52_p* x(46) * x(47) )-(kr52_p* x(48) ))) + (1)*(1)* (compartment_cytosol*k59_p* x(51) ) );
	
//x(48)   ID: x62  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*k53_p* x(48) ) + (1)*(1)* (compartment_cytosol*((kf52_p* x(46) * x(47) )-(kr52_p* x(48) ))) );
	
//x(49)   ID: x63  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kf58_p* x(49) * x(65) )-(kr58_p* x(51) ))) + (1)*(1)* (compartment_cytosol*k53_p* x(48) ) + (1)*(1)* (compartment_cytosol*((kr54_p* x(62) )-(kf54_p* x(46) * x(49) ))) + (1)*(1)* (compartment_cytosol*k57_p* x(66) ) );
	
//x(50)   ID: x65  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kf56_p* x(50) * x(65) )-(kr56_p* x(66) ))) + (1)*(1)* (compartment_cytosol*k55_p* x(62) ) );
	
//x(51)   ID: x68  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*k59_p* x(51) ) + (1)*(1)* (compartment_cytosol*((kf58_p* x(49) * x(65) )-(kr58_p* x(51) ))) );
	
//x(52)   ID: x35  initialValue: 34
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kf25_p* x(52) * x(16) )-(kr25_p* x(18) ))) + (-1)*(1)* (compartment_cytosol*((kf40_p* x(52) * x(17) )-(kr40_p* x(19) ))) + (1)*(1)* (compartment_cytosol*((kf35_p* x(64) )-(kr35_p* x(32) * x(52) ))) );
	
//x(53)   ID: x28  initialValue: 0
	(1/compartment_nucleus)*( (-1)*(1)* (compartment_nucleus*k16_p* x(53) ) + (1)*(1)* (compartment_nucleus*((kf15_p* x(28) * x(27) )-(kr15_p* x(53) ))) );
	
//x(54)   ID: x31  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kf9_p* x(7) * x(54) )-(kr9_p* x(24) ))) + (1)*(1)* (compartment_cytosol*((kf5_p* x(8) * x(13) )-(kr5_p* x(54) ))) );
	
//x(55)   ID: x56  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*k47_p* x(55) ) + (1)*(1)* (compartment_cytosol*((kf46_p* x(43) * x(39) )-(kr46_p* x(55) ))) );
	
//x(56)   ID: x43  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kf31_p* x(56) )-(kr31_p* x(33) * x(18) ))) + (1)*(1)* (compartment_cytosol*((kf30_p* x(60) * x(18) )-(kr30_p* x(56) ))) );
	
//x(57)   ID: x58  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*k49_p* x(57) ) + (1)*(1)* (compartment_cytosol*((kf48_p* x(46) * x(45) )-(kr48_p* x(57) ))) );
	
//x(58)   ID: x4  initialValue: 12
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kf1_p*x3_s* x(58) )-(kr1_p* x(3) ))) );
	
//x(59)   ID: x26  initialValue: 0
	(1/compartment_nucleus)*( (-1)*(1)* (compartment_nucleus*k22_p* x(59) ) + (1)*(1)* (compartment_nucleus*k19_p* x(31) ) );
	
//x(60)   ID: x49  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kf30_p* x(60) * x(18) )-(kr30_p* x(56) ))) + (1)*(1)* (compartment_cytosol*((kf29_p* x(37) )-(kr29_p* x(60) * x(39) ))) );
	
//x(61)   ID: x33  initialValue: 0
	(1/compartment_cytosol)*( (1)*(1)* (compartment_cytosol*k23_p* x(24) ) );
	
//x(62)   ID: x64  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kr54_p* x(62) )-(kf54_p* x(46) * x(49) ))) + (-1)*(1)* (compartment_cytosol*k55_p* x(62) ) );
	
//x(63)   ID: x19  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*k12_p* x(63) ) + (1)*(1)* (compartment_cytosol*((kf11_p* x(25) * x(21) )-(kr11_p* x(63) ))) );
	
//x(64)   ID: x38  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kf35_p* x(64) )-(kr35_p* x(32) * x(52) ))) + (-1)*(1)* (compartment_cytosol*((kf41_p* x(64) * x(14) )-(kr41_p* x(18) ))) + (1)*(1)* (compartment_cytosol*((kf33_p* x(19) )-(kr33_p* x(64) * x(15) ))) );
	
//x(65)   ID: x66  initialValue: 16667
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kf58_p* x(49) * x(65) )-(kr58_p* x(51) ))) + (-1)*(1)* (compartment_cytosol*((kf56_p* x(50) * x(65) )-(kr56_p* x(66) ))) + (1)*(1)* (compartment_cytosol*k59_p* x(51) ) + (1)*(1)* (compartment_cytosol*k57_p* x(66) ) );
	
//x(66)   ID: x67  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*k57_p* x(66) ) + (1)*(1)* (compartment_cytosol*((kf56_p* x(50) * x(65) )-(kr56_p* x(66) ))) )
	];


	
endfunction
        x0=[0;0;0;0;0;0;100;1000;0;0;0;0;0;0;0;0;0;0;0;0;50;0;0;0;0;0;0;60;0;0;0;85;19000;0;0;67;0;0;0;67;41667;0;0;0;67;0;35000;0;0;0;0;34;0;0;0;0;0;12;0;0;0;0;0;0;16667;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)' 'x(14)' 'x(15)' 'x(16)' 'x(17)' 'x(18)' 'x(19)' 'x(20)' 'x(21)' 'x(22)' 'x(23)' 'x(24)' 'x(25)' 'x(26)' 'x(27)' 'x(28)' 'x(29)' 'x(30)' 'x(31)' 'x(32)' 'x(33)' 'x(34)' 'x(35)' 'x(36)' 'x(37)' 'x(38)' 'x(39)' 'x(40)' 'x(41)' 'x(42)' 'x(43)' 'x(44)' 'x(45)' 'x(46)' 'x(47)' 'x(48)' 'x(49)' 'x(50)' 'x(51)' 'x(52)' 'x(53)' 'x(54)' 'x(55)' 'x(56)' 'x(57)' 'x(58)' 'x(59)' 'x(60)' 'x(61)' 'x(62)' 'x(63)' 'x(64)' 'x(65)' 'x(66)'],[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18;19;20;21;22;23;24;25;26;27;28;29;30;31;32;33;34;35;36;37;38;39;40;41;42;43;44;45;46;47;48;49;50;51;52;53;54;55;56;57;58;59;60;61;62;63;64;65;66])

//real_variable:
	
	
//x(1)   id: x2  initialValue: 0
	
//x(2)   id: x6  initialValue: 0
	
//x(3)   id: x5  initialValue: 0
	
//x(4)   id: x7  initialValue: 0
	
//x(5)   id: x8  initialValue: 0
	
//x(6)   id: x16  initialValue: 0
	
//x(7)   id: x15  initialValue: 100
	
//x(8)   id: x9  initialValue: 1000
	
//x(9)   id: x11  initialValue: 0
	
//x(10)   id: x10  initialValue: 0
	
//x(11)   id: x12  initialValue: 0
	
//x(12)   id: x29  initialValue: 0
	
//x(13)   id: x30  initialValue: 0
	
//x(14)   id: x39  initialValue: 0
	
//x(15)   id: x46  initialValue: 0
	
//x(16)   id: x40  initialValue: 0
	
//x(17)   id: x45  initialValue: 0
	
//x(18)   id: x41  initialValue: 0
	
//x(19)   id: x44  initialValue: 0
	
//x(20)   id: x18  initialValue: 0
	
//x(21)   id: x17  initialValue: 50
	
//x(22)   id: x14  initialValue: 0
	
//x(23)   id: x22  initialValue: 0
	
//x(24)   id: x32  initialValue: 0
	
//x(25)   id: x13  initialValue: 0
	
//x(26)   id: x20  initialValue: 0
	
//x(27)   id: x21  initialValue: 0
	
//x(28)   id: x23  initialValue: 60
	
//x(29)   id: x27  initialValue: 0
	
//x(30)   id: x24  initialValue: 0
	
//x(31)   id: x25  initialValue: 0
	
//x(32)   id: x34  initialValue: 85
	
//x(33)   id: x36  initialValue: 19000
	
//x(34)   id: x42  initialValue: 0
	
//x(35)   id: x37  initialValue: 0
	
//x(36)   id: x47  initialValue: 67
	
//x(37)   id: x48  initialValue: 0
	
//x(38)   id: x52  initialValue: 0
	
//x(39)   id: x51  initialValue: 0
	
//x(40)   id: x50  initialValue: 67
	
//x(41)   id: x53  initialValue: 41667
	
//x(42)   id: x54  initialValue: 0
	
//x(43)   id: x55  initialValue: 0
	
//x(44)   id: x60  initialValue: 0
	
//x(45)   id: x59  initialValue: 67
	
//x(46)   id: x57  initialValue: 0
	
//x(47)   id: x61  initialValue: 35000
	
//x(48)   id: x62  initialValue: 0
	
//x(49)   id: x63  initialValue: 0
	
//x(50)   id: x65  initialValue: 0
	
//x(51)   id: x68  initialValue: 0
	
//x(52)   id: x35  initialValue: 34
	
//x(53)   id: x28  initialValue: 0
	
//x(54)   id: x31  initialValue: 0
	
//x(55)   id: x56  initialValue: 0
	
//x(56)   id: x43  initialValue: 0
	
//x(57)   id: x58  initialValue: 0
	
//x(58)   id: x4  initialValue: 12
	
//x(59)   id: x26  initialValue: 0
	
//x(60)   id: x49  initialValue: 0
	
//x(61)   id: x33  initialValue: 0
	
//x(62)   id: x64  initialValue: 0
	
//x(63)   id: x19  initialValue: 0
	
//x(64)   id: x38  initialValue: 0
	
//x(65)   id: x66  initialValue: 16667
	
//x(66)   id: x67  initialValue: 0