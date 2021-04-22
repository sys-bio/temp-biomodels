
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_compartment_0   id: compartment_0
	compartment_compartment_0=1E-15;
		
// parameter_0_p   id: parameter_0
	parameter_0_p=1000000;
		
// parameter_1_p   id: parameter_1
	parameter_1_p=8.32;
		
// parameter_2_p   id: parameter_2
	parameter_2_p=0.0166;
		
// parameter_3_p   id: parameter_3
	parameter_3_p=17.4;
		
// parameter_4_p   id: parameter_4
	parameter_4_p=0.0145;
		
// parameter_5_p   id: parameter_5
	parameter_5_p=2101.0101010101;
		
// parameter_6_p   id: parameter_6
	parameter_6_p=4.19191919191919;
		
// parameter_7_p   id: parameter_7
	parameter_7_p=4393.93939393939;
		
// parameter_8_p   id: parameter_8
	parameter_8_p=3.66161616161616;
		
// parameter_9_p   id: parameter_9
	parameter_9_p=1000000;
		
// parameter_10_p   id: parameter_10
	parameter_10_p=48.3792936623125;
		
// parameter_11_p   id: parameter_11
	parameter_11_p=0.00396;
		
// parameter_12_p   id: parameter_12
	parameter_12_p=0.00396;
		
// parameter_13_p   id: parameter_13
	parameter_13_p=0.00396;
		
// parameter_14_p   id: parameter_14
	parameter_14_p=0.00396;
		
// parameter_15_p   id: parameter_15
	parameter_15_p=3200000;
		
// parameter_16_p   id: parameter_16
	parameter_16_p=0.343;
		
// parameter_17_p   id: parameter_17
	parameter_17_p=46000000;
		
// parameter_18_p   id: parameter_18
	parameter_18_p=0.0013;
		
// parameter_19_p   id: parameter_19
	parameter_19_p=0;
		
// parameter_20_p   id: parameter_20
	parameter_20_p=0;
		
// parameter_21_p   id: parameter_21
	parameter_21_p=0;
		
// parameter_22_p   id: parameter_22
	parameter_22_p=0;
		
// parameter_23_p   id: parameter_23
	parameter_23_p=0;
		
// parameter_24_p   id: parameter_24
	parameter_24_p=0;
		
// parameter_25_p   id: parameter_25
	parameter_25_p=0;
		
// parameter_26_p   id: parameter_26
	parameter_26_p=0;
		
// parameter_27_p   id: parameter_27
	parameter_27_p=7E-5;
		
// parameter_28_p   id: parameter_28
	parameter_28_p=0;
		
// parameter_29_p   id: parameter_29
	parameter_29_p=0;
		
// parameter_30_p   id: parameter_30
	parameter_30_p=0;
		
// parameter_31_p   id: parameter_31
	parameter_31_p=0;
		
// parameter_32_p   id: parameter_32
	parameter_32_p=0;
		
// parameter_33_p   id: parameter_33
	parameter_33_p=1.6E-6;
		
// parameter_34_p   id: parameter_34
	parameter_34_p=0;
		
// parameter_35_p   id: parameter_35
	parameter_35_p=9.7E-12;
		
// parameter_36_p   id: parameter_36
	parameter_36_p=9.7E-12;
		
// parameter_37_p   id: parameter_37
	parameter_37_p=2E-7;
		
// parameter_38_p   id: parameter_38
	parameter_38_p=4.84976478640786E-5;
		
// parameter_39_p   id: parameter_39
	parameter_39_p=0;
		
// parameter_40_p   id: parameter_40
	parameter_40_p=0;
		
// parameter_41_p   id: parameter_41
	parameter_41_p=0;
		
// parameter_42_p   id: parameter_42
	parameter_42_p=0;
		
// parameter_43_p   id: parameter_43
	parameter_43_p=0;
		
// parameter_44_p   id: parameter_44
	parameter_44_p=0;
		
// parameter_45_p   id: parameter_45
	parameter_45_p=0;
		
// parameter_46_p   id: parameter_46
	parameter_46_p=2.000097E-7;
		
// parameter_47_p   id: parameter_47
	parameter_47_p=2.000097E-7;
		
// parameter_48_p   id: parameter_48
	parameter_48_p=0;
		
// parameter_49_p   id: parameter_49
	parameter_49_p=20670;
		
// parameter_50_p   id: parameter_50
	parameter_50_p=8.32E-6;
		
// parameter_51_p   id: parameter_51
	parameter_51_p=1.66E-8;
		
// parameter_52_p   id: parameter_52
	parameter_52_p=1.74E-5;
		
// parameter_53_p   id: parameter_53
	parameter_53_p=1.45E-8;
		
// parameter_54_p   id: parameter_54
	parameter_54_p=0;
		
// parameter_55_p   id: parameter_55
	parameter_55_p=0;
		
// parameter_56_p   id: parameter_56
	parameter_56_p=0;
		
// parameter_57_p   id: parameter_57
	parameter_57_p=0;
		
// parameter_58_p   id: parameter_58
	parameter_58_p=4.84976478640786E-5;
		
// parameter_59_p   id: parameter_59
	parameter_59_p=0;
		
// parameter_60_p   id: parameter_60
	parameter_60_p=0;
		



xdot=[
//x(1)   ID: species_0  initialValue: 9.7E-12
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(1) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(1) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(1) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(1) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_9_p* x(1) ) + (-1)*(1)* (compartment_compartment_0*parameter_15_p* x(1) * x(34) ) + (-1)*(1)* (compartment_compartment_0*parameter_17_p* x(1) * x(51) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_50_p*parameter_0_p) ) * x(3) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_51_p*parameter_0_p) ) * x(4) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_52_p*parameter_0_p) ) * x(5) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_53_p*parameter_0_p) ) * x(6) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_9_p/parameter_49_p) ) * x(18) ) + (1)*(1)* (compartment_compartment_0*parameter_16_p* x(35) ) + (1)*(1)* (compartment_compartment_0*parameter_18_p* x(52) ) );
	
//x(2)   ID: species_1  initialValue: 1E-5
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(1) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(1) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(1) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(1) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(3) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(3) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(3) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(4) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(4) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(4) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(5) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(5) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(5) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(6) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(6) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(6) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(7) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(7) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(8) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(8) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(9) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(9) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(10) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(10) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(11) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(11) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(12) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(12) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(13) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(14) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(15) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(16) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(18) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(18) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(18) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(18) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(19) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(19) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(19) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(20) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(20) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(20) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(21) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(21) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(21) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(22) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(22) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(22) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(23) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(23) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(24) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(24) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(25) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(25) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(26) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(26) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(27) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(27) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(28) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(28) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(29) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(30) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(31) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(32) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(35) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(35) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(35) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(35) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(36) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(36) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(36) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(37) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(37) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(37) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(38) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(38) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(38) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(39) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(39) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(39) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(40) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(40) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(41) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(41) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(42) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(42) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(43) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(43) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(44) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(44) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(45) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(45) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(49) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(48) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(47) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(46) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(52) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(52) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(52) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(52) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(53) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(53) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(53) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(54) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(54) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(54) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(55) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(55) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(55) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(56) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(56) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(56) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(57) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(57) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(58) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(58) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(59) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(59) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(60) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(60) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(61) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(61) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(62) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(62) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(63) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(64) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(65) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(66) * x(2) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_50_p*parameter_0_p) ) * x(3) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_51_p*parameter_0_p) ) * x(4) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_52_p*parameter_0_p) ) * x(5) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_53_p*parameter_0_p) ) * x(6) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_51_p*parameter_0_p) ) * x(7) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_52_p*parameter_0_p) ) * x(8) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_53_p*parameter_0_p) ) * x(9) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_50_p*parameter_0_p) ) * x(7) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_52_p*parameter_0_p) ) * x(10) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_53_p*parameter_0_p) ) * x(11) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_50_p*parameter_0_p) ) * x(8) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_51_p*parameter_0_p) ) * x(10) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_53_p*parameter_0_p) ) * x(12) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_50_p*parameter_0_p) ) * x(9) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_51_p*parameter_0_p) ) * x(11) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_52_p*parameter_0_p) ) * x(12) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_50_p*parameter_0_p) ) * x(13) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_51_p*parameter_0_p) ) * x(13) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_52_p*parameter_0_p) ) * x(13) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_50_p*parameter_0_p) ) * x(14) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_51_p*parameter_0_p) ) * x(14) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_53_p*parameter_0_p) ) * x(14) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_50_p*parameter_0_p) ) * x(15) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_52_p*parameter_0_p) ) * x(15) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_53_p*parameter_0_p) ) * x(15) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_51_p*parameter_0_p) ) * x(16) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_52_p*parameter_0_p) ) * x(16) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_53_p*parameter_0_p) ) * x(16) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_53_p*parameter_0_p) ) * x(17) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_52_p*parameter_0_p) ) * x(17) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_51_p*parameter_0_p) ) * x(17) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_50_p*parameter_0_p) ) * x(17) ) + (1)*(1)* (compartment_compartment_0* ( ( ( (parameter_50_p*parameter_0_p) ) /parameter_11_p) ) * x(19) ) + (1)*(1)* (compartment_compartment_0* ( ( ( (parameter_51_p*parameter_0_p) ) /parameter_12_p) ) * x(20) ) + (1)*(1)* (compartment_compartment_0* ( ( ( (parameter_52_p*parameter_0_p) ) /parameter_13_p) ) * x(21) ) + (1)*(1)* (compartment_compartment_0* ( ( ( (parameter_53_p*parameter_0_p) ) /parameter_14_p) ) * x(22) ) + (1)*(1)* (compartment_compartment_0* ( ( ( (parameter_50_p*parameter_0_p) ) /parameter_11_p) ) * x(23) ) + (1)*(1)* (compartment_compartment_0* ( ( ( (parameter_51_p*parameter_0_p) ) /parameter_12_p) ) * x(23) ) + (1)*(1)* (compartment_compartment_0* ( ( ( (parameter_50_p*parameter_0_p) ) /parameter_11_p) ) * x(24) ) + (1)*(1)* (compartment_compartment_0* ( ( ( (parameter_52_p*parameter_0_p) ) /parameter_13_p) ) * x(24) ) + (1)*(1)* (compartment_compartment_0* ( ( ( (parameter_50_p*parameter_0_p) ) /parameter_11_p) ) * x(25) ) + (1)*(1)* (compartment_compartment_0* ( ( ( (parameter_53_p*parameter_0_p) ) /parameter_14_p) ) * x(25) ) + (1)*(1)* (compartment_compartment_0* ( ( ( (parameter_51_p*parameter_0_p) ) /parameter_12_p) ) * x(26) ) + (1)*(1)* (compartment_compartment_0* ( ( ( (parameter_52_p*parameter_0_p) ) /parameter_13_p) ) * x(26) ) + (1)*(1)* (compartment_compartment_0* ( ( ( (parameter_51_p*parameter_0_p) ) /parameter_12_p) ) * x(27) ) + (1)*(1)* (compartment_compartment_0* ( ( ( (parameter_53_p*parameter_0_p) ) /parameter_14_p) ) * x(27) ) + (1)*(1)* (compartment_compartment_0* ( ( ( (parameter_52_p*parameter_0_p) ) /parameter_13_p) ) * x(28) ) + (1)*(1)* (compartment_compartment_0* ( ( ( (parameter_53_p*parameter_0_p) ) /parameter_14_p) ) * x(28) ) + (1)*(1)* (compartment_compartment_0* ( ( ( (parameter_51_p*parameter_0_p) ) /parameter_12_p) ) * x(29) ) + (1)*(1)* (compartment_compartment_0* ( ( ( (parameter_50_p*parameter_0_p) ) /parameter_11_p) ) * x(29) ) + (1)*(1)* (compartment_compartment_0* ( ( ( (parameter_53_p*parameter_0_p) ) /parameter_14_p) ) * x(30) ) + (1)*(1)* (compartment_compartment_0* ( ( ( (parameter_51_p*parameter_0_p) ) /parameter_12_p) ) * x(30) ) + (1)*(1)* (compartment_compartment_0* ( ( ( (parameter_50_p*parameter_0_p) ) /parameter_11_p) ) * x(30) ) + (1)*(1)* (compartment_compartment_0* ( ( ( (parameter_53_p*parameter_0_p) ) /parameter_14_p) ) * x(31) ) + (1)*(1)* (compartment_compartment_0* ( ( ( (parameter_52_p*parameter_0_p) ) /parameter_13_p) ) * x(31) ) + (1)*(1)* (compartment_compartment_0* ( ( ( (parameter_50_p*parameter_0_p) ) /parameter_11_p) ) * x(31) ) + (1)*(1)* (compartment_compartment_0* ( ( ( (parameter_53_p*parameter_0_p) ) /parameter_14_p) ) * x(32) ) + (1)*(1)* (compartment_compartment_0* ( ( ( (parameter_52_p*parameter_0_p) ) /parameter_13_p) ) * x(32) ) + (1)*(1)* (compartment_compartment_0* ( ( ( (parameter_51_p*parameter_0_p) ) /parameter_12_p) ) * x(32) ) + (1)*(1)* (compartment_compartment_0* ( ( ( (parameter_53_p*parameter_0_p) ) /parameter_14_p) ) * x(33) ) + (1)*(1)* (compartment_compartment_0* ( ( ( (parameter_52_p*parameter_0_p) ) /parameter_13_p) ) * x(33) ) + (1)*(1)* (compartment_compartment_0* ( ( ( (parameter_51_p*parameter_0_p) ) /parameter_12_p) ) * x(33) ) + (1)*(1)* (compartment_compartment_0* ( ( ( (parameter_50_p*parameter_0_p) ) /parameter_11_p) ) * x(33) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_50_p*parameter_0_p) ) * x(36) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_52_p*parameter_0_p) ) * x(38) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_53_p*parameter_0_p) ) * x(39) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_50_p*parameter_0_p) ) * x(40) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_51_p*parameter_0_p) ) * x(40) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_50_p*parameter_0_p) ) * x(41) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_52_p*parameter_0_p) ) * x(41) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_50_p*parameter_0_p) ) * x(42) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_53_p*parameter_0_p) ) * x(42) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_51_p*parameter_0_p) ) * x(43) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_52_p*parameter_0_p) ) * x(43) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_51_p*parameter_0_p) ) * x(44) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_53_p*parameter_0_p) ) * x(44) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_52_p*parameter_0_p) ) * x(45) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_53_p*parameter_0_p) ) * x(45) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_52_p*parameter_0_p) ) * x(46) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_51_p*parameter_0_p) ) * x(46) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_50_p*parameter_0_p) ) * x(46) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_53_p*parameter_0_p) ) * x(47) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_51_p*parameter_0_p) ) * x(47) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_50_p*parameter_0_p) ) * x(47) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_53_p*parameter_0_p) ) * x(48) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_52_p*parameter_0_p) ) * x(48) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_50_p*parameter_0_p) ) * x(48) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_53_p*parameter_0_p) ) * x(49) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_52_p*parameter_0_p) ) * x(49) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_51_p*parameter_0_p) ) * x(49) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_50_p*parameter_0_p) ) * x(50) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_51_p*parameter_0_p) ) * x(50) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_52_p*parameter_0_p) ) * x(50) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_53_p*parameter_0_p) ) * x(50) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_50_p*parameter_0_p) ) * x(53) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_51_p*parameter_0_p) ) * x(54) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_52_p*parameter_0_p) ) * x(55) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_53_p*parameter_0_p) ) * x(56) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_50_p*parameter_0_p) ) * x(57) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_51_p*parameter_0_p) ) * x(57) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_50_p*parameter_0_p) ) * x(58) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_52_p*parameter_0_p) ) * x(58) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_50_p*parameter_0_p) ) * x(59) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_53_p*parameter_0_p) ) * x(59) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_51_p*parameter_0_p) ) * x(60) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_52_p*parameter_0_p) ) * x(60) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_51_p*parameter_0_p) ) * x(61) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_53_p*parameter_0_p) ) * x(61) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_52_p*parameter_0_p) ) * x(62) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_53_p*parameter_0_p) ) * x(62) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_50_p*parameter_0_p) ) * x(63) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_51_p*parameter_0_p) ) * x(63) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_52_p*parameter_0_p) ) * x(63) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_50_p*parameter_0_p) ) * x(64) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_51_p*parameter_0_p) ) * x(64) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_53_p*parameter_0_p) ) * x(64) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_50_p*parameter_0_p) ) * x(65) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_52_p*parameter_0_p) ) * x(65) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_53_p*parameter_0_p) ) * x(65) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_51_p*parameter_0_p) ) * x(66) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_52_p*parameter_0_p) ) * x(66) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_53_p*parameter_0_p) ) * x(66) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_50_p*parameter_0_p) ) * x(67) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_51_p*parameter_0_p) ) * x(67) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_52_p*parameter_0_p) ) * x(67) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_53_p*parameter_0_p) ) * x(67) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_51_p*parameter_0_p) ) * x(37) ) + (1)*(1)* (compartment_compartment_0* ( ( ( (parameter_52_p*parameter_0_p) ) /parameter_13_p) ) * x(29) ) );
	
//x(3)   ID: species_2  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0* ( (parameter_50_p*parameter_0_p) ) * x(3) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(3) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(3) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(3) * x(2) ) + (-1)*(1)* (compartment_compartment_0*()) + (-1)*(1)* (compartment_compartment_0*parameter_15_p* x(3) * x(34) ) + (-1)*(1)* (compartment_compartment_0*parameter_17_p* x(3) * x(51) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(1) * x(2) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_51_p*parameter_0_p) ) * x(7) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_52_p*parameter_0_p) ) * x(8) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_53_p*parameter_0_p) ) * x(9) ) + (1)*(1)* (compartment_compartment_0*()) + (1)*(1)* (compartment_compartment_0*parameter_16_p* x(36) ) + (1)*(1)* (compartment_compartment_0*parameter_18_p* x(53) ) );
	
//x(4)   ID: species_3  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0* ( (parameter_51_p*parameter_0_p) ) * x(4) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(4) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(4) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(4) * x(2) ) + (-1)*(1)* (compartment_compartment_0*()) + (-1)*(1)* (compartment_compartment_0*parameter_15_p* x(4) * x(34) ) + (-1)*(1)* (compartment_compartment_0*parameter_17_p* x(4) * x(51) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(1) * x(2) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_50_p*parameter_0_p) ) * x(7) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_52_p*parameter_0_p) ) * x(10) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_53_p*parameter_0_p) ) * x(11) ) + (1)*(1)* (compartment_compartment_0*()) + (1)*(1)* (compartment_compartment_0*parameter_16_p* x(37) ) + (1)*(1)* (compartment_compartment_0*parameter_18_p* x(54) ) );
	
//x(5)   ID: species_4  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0* ( (parameter_52_p*parameter_0_p) ) * x(5) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(5) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(5) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(5) * x(2) ) + (-1)*(1)* (compartment_compartment_0*()) + (-1)*(1)* (compartment_compartment_0*parameter_15_p* x(5) * x(34) ) + (-1)*(1)* (compartment_compartment_0*parameter_17_p* x(5) * x(51) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(1) * x(2) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_50_p*parameter_0_p) ) * x(8) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_51_p*parameter_0_p) ) * x(10) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_53_p*parameter_0_p) ) * x(12) ) + (1)*(1)* (compartment_compartment_0*()) + (1)*(1)* (compartment_compartment_0*parameter_16_p* x(38) ) + (1)*(1)* (compartment_compartment_0*parameter_18_p* x(55) ) );
	
//x(6)   ID: species_5  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0* ( (parameter_53_p*parameter_0_p) ) * x(6) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(6) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(6) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(6) * x(2) ) + (-1)*(1)* (compartment_compartment_0*()) + (-1)*(1)* (compartment_compartment_0*parameter_15_p* x(6) * x(34) ) + (-1)*(1)* (compartment_compartment_0*parameter_17_p* x(6) * x(51) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(1) * x(2) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_50_p*parameter_0_p) ) * x(9) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_51_p*parameter_0_p) ) * x(11) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_52_p*parameter_0_p) ) * x(12) ) + (1)*(1)* (compartment_compartment_0*()) + (1)*(1)* (compartment_compartment_0*parameter_16_p* x(39) ) + (1)*(1)* (compartment_compartment_0*parameter_18_p* x(56) ) );
	
//x(7)   ID: species_6  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0* ( (parameter_51_p*parameter_0_p) ) * x(7) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_50_p*parameter_0_p) ) * x(7) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(7) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(7) * x(2) ) + (-1)*(1)* (compartment_compartment_0*()) + (-1)*(1)* (compartment_compartment_0*parameter_15_p* x(7) * x(34) ) + (-1)*(1)* (compartment_compartment_0*parameter_17_p* x(7) * x(51) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(3) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(4) * x(2) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_52_p*parameter_0_p) ) * x(13) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_53_p*parameter_0_p) ) * x(14) ) + (1)*(1)* (compartment_compartment_0*()) + (1)*(1)* (compartment_compartment_0*parameter_16_p* x(40) ) + (1)*(1)* (compartment_compartment_0*parameter_18_p* x(57) ) );
	
//x(8)   ID: species_7  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0* ( (parameter_52_p*parameter_0_p) ) * x(8) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_50_p*parameter_0_p) ) * x(8) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(8) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(8) * x(2) ) + (-1)*(1)* (compartment_compartment_0*()) + (-1)*(1)* (compartment_compartment_0*parameter_15_p* x(8) * x(34) ) + (-1)*(1)* (compartment_compartment_0*parameter_17_p* x(8) * x(51) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(3) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(5) * x(2) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_51_p*parameter_0_p) ) * x(13) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_53_p*parameter_0_p) ) * x(15) ) + (1)*(1)* (compartment_compartment_0*()) + (1)*(1)* (compartment_compartment_0*parameter_16_p* x(41) ) + (1)*(1)* (compartment_compartment_0*parameter_18_p* x(58) ) );
	
//x(9)   ID: species_8  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0* ( (parameter_53_p*parameter_0_p) ) * x(9) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_50_p*parameter_0_p) ) * x(9) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(9) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(9) * x(2) ) + (-1)*(1)* (compartment_compartment_0*()) + (-1)*(1)* (compartment_compartment_0*parameter_15_p* x(9) * x(34) ) + (-1)*(1)* (compartment_compartment_0*parameter_17_p* x(9) * x(51) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(3) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(6) * x(2) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_51_p*parameter_0_p) ) * x(14) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_52_p*parameter_0_p) ) * x(15) ) + (1)*(1)* (compartment_compartment_0*()) + (1)*(1)* (compartment_compartment_0*parameter_16_p* x(42) ) + (1)*(1)* (compartment_compartment_0*parameter_18_p* x(59) ) );
	
//x(10)   ID: species_9  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0* ( (parameter_52_p*parameter_0_p) ) * x(10) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_51_p*parameter_0_p) ) * x(10) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(10) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(10) * x(2) ) + (-1)*(1)* (compartment_compartment_0*()) + (-1)*(1)* (compartment_compartment_0*parameter_15_p* x(10) * x(34) ) + (-1)*(1)* (compartment_compartment_0*parameter_17_p* x(10) * x(51) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(4) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(5) * x(2) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_50_p*parameter_0_p) ) * x(13) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_53_p*parameter_0_p) ) * x(16) ) + (1)*(1)* (compartment_compartment_0*()) + (1)*(1)* (compartment_compartment_0*parameter_16_p* x(43) ) + (1)*(1)* (compartment_compartment_0*parameter_18_p* x(60) ) );
	
//x(11)   ID: species_10  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0* ( (parameter_53_p*parameter_0_p) ) * x(11) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_51_p*parameter_0_p) ) * x(11) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(11) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(11) * x(2) ) + (-1)*(1)* (compartment_compartment_0*()) + (-1)*(1)* (compartment_compartment_0*parameter_15_p* x(11) * x(34) ) + (-1)*(1)* (compartment_compartment_0*parameter_17_p* x(11) * x(51) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(4) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(6) * x(2) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_50_p*parameter_0_p) ) * x(14) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_52_p*parameter_0_p) ) * x(16) ) + (1)*(1)* (compartment_compartment_0*()) + (1)*(1)* (compartment_compartment_0*parameter_16_p* x(44) ) + (1)*(1)* (compartment_compartment_0*parameter_18_p* x(61) ) );
	
//x(12)   ID: species_11  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0* ( (parameter_53_p*parameter_0_p) ) * x(12) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_52_p*parameter_0_p) ) * x(12) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(12) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(12) * x(2) ) + (-1)*(1)* (compartment_compartment_0*()) + (-1)*(1)* (compartment_compartment_0*parameter_15_p* x(12) * x(34) ) + (-1)*(1)* (compartment_compartment_0*parameter_17_p* x(12) * x(51) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(5) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(6) * x(2) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_50_p*parameter_0_p) ) * x(15) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_51_p*parameter_0_p) ) * x(16) ) + (1)*(1)* (compartment_compartment_0*()) + (1)*(1)* (compartment_compartment_0*parameter_16_p* x(45) ) + (1)*(1)* (compartment_compartment_0*parameter_18_p* x(62) ) );
	
//x(13)   ID: species_12  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0* ( (parameter_50_p*parameter_0_p) ) * x(13) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_51_p*parameter_0_p) ) * x(13) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_52_p*parameter_0_p) ) * x(13) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(13) * x(2) ) + (-1)*(1)* (compartment_compartment_0*()) + (-1)*(1)* (compartment_compartment_0*parameter_15_p* x(13) * x(34) ) + (-1)*(1)* (compartment_compartment_0*parameter_17_p* x(13) * x(51) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(7) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(8) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(10) * x(2) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_53_p*parameter_0_p) ) * x(17) ) + (1)*(1)* (compartment_compartment_0*()) + (1)*(1)* (compartment_compartment_0*parameter_16_p* x(46) ) + (1)*(1)* (compartment_compartment_0*parameter_18_p* x(63) ) );
	
//x(14)   ID: species_13  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0* ( (parameter_50_p*parameter_0_p) ) * x(14) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_51_p*parameter_0_p) ) * x(14) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_53_p*parameter_0_p) ) * x(14) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(14) * x(2) ) + (-1)*(1)* (compartment_compartment_0*()) + (-1)*(1)* (compartment_compartment_0*parameter_15_p* x(14) * x(34) ) + (-1)*(1)* (compartment_compartment_0*parameter_17_p* x(14) * x(51) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(7) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(9) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(11) * x(2) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_52_p*parameter_0_p) ) * x(17) ) + (1)*(1)* (compartment_compartment_0*()) + (1)*(1)* (compartment_compartment_0*parameter_16_p* x(47) ) + (1)*(1)* (compartment_compartment_0*parameter_18_p* x(64) ) );
	
//x(15)   ID: species_14  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0* ( (parameter_50_p*parameter_0_p) ) * x(15) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_52_p*parameter_0_p) ) * x(15) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_53_p*parameter_0_p) ) * x(15) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(15) * x(2) ) + (-1)*(1)* (compartment_compartment_0*()) + (-1)*(1)* (compartment_compartment_0*parameter_15_p* x(15) * x(34) ) + (-1)*(1)* (compartment_compartment_0*parameter_17_p* x(15) * x(51) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(8) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(9) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(12) * x(2) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_51_p*parameter_0_p) ) * x(17) ) + (1)*(1)* (compartment_compartment_0*()) + (1)*(1)* (compartment_compartment_0*parameter_16_p* x(48) ) + (1)*(1)* (compartment_compartment_0*parameter_18_p* x(65) ) );
	
//x(16)   ID: species_15  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0* ( (parameter_51_p*parameter_0_p) ) * x(16) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_52_p*parameter_0_p) ) * x(16) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_53_p*parameter_0_p) ) * x(16) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(16) * x(2) ) + (-1)*(1)* (compartment_compartment_0*()) + (-1)*(1)* (compartment_compartment_0*parameter_15_p* x(16) * x(34) ) + (-1)*(1)* (compartment_compartment_0*parameter_17_p* x(16) * x(51) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(10) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(11) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(12) * x(2) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_50_p*parameter_0_p) ) * x(17) ) + (1)*(1)* (compartment_compartment_0*()) + (1)*(1)* (compartment_compartment_0*parameter_16_p* x(49) ) + (1)*(1)* (compartment_compartment_0*parameter_18_p* x(66) ) );
	
//x(17)   ID: species_16  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0* ( (parameter_53_p*parameter_0_p) ) * x(17) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_52_p*parameter_0_p) ) * x(17) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_51_p*parameter_0_p) ) * x(17) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_50_p*parameter_0_p) ) * x(17) ) + (-1)*(1)* (compartment_compartment_0*()) + (-1)*(1)* (compartment_compartment_0*parameter_15_p* x(17) * x(34) ) + (-1)*(1)* (compartment_compartment_0*parameter_17_p* x(17) * x(51) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(13) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(14) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(15) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(16) * x(2) ) + (1)*(1)* (compartment_compartment_0*()) + (1)*(1)* (compartment_compartment_0*parameter_16_p* x(50) ) + (1)*(1)* (compartment_compartment_0*parameter_18_p* x(67) ) );
	
//x(18)   ID: species_17  initialValue: 2E-7
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(18) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(18) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(18) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(18) * x(2) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_9_p/parameter_49_p) ) * x(18) ) + (1)*(1)* (compartment_compartment_0* ( ( ( (parameter_50_p*parameter_0_p) ) /parameter_11_p) ) * x(19) ) + (1)*(1)* (compartment_compartment_0* ( ( ( (parameter_51_p*parameter_0_p) ) /parameter_12_p) ) * x(20) ) + (1)*(1)* (compartment_compartment_0* ( ( ( (parameter_52_p*parameter_0_p) ) /parameter_13_p) ) * x(21) ) + (1)*(1)* (compartment_compartment_0* ( ( ( (parameter_53_p*parameter_0_p) ) /parameter_14_p) ) * x(22) ) + (1)*(1)* (compartment_compartment_0*parameter_9_p* x(1) ) );
	
//x(19)   ID: species_18  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0* ( ( ( (parameter_50_p*parameter_0_p) ) /parameter_11_p) ) * x(19) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(19) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(19) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(19) * x(2) ) + (-1)*(1)* (compartment_compartment_0*()) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(18) * x(2) ) + (1)*(1)* (compartment_compartment_0* ( ( ( (parameter_51_p*parameter_0_p) ) /parameter_12_p) ) * x(23) ) + (1)*(1)* (compartment_compartment_0* ( ( ( (parameter_52_p*parameter_0_p) ) /parameter_13_p) ) * x(24) ) + (1)*(1)* (compartment_compartment_0* ( ( ( (parameter_53_p*parameter_0_p) ) /parameter_14_p) ) * x(25) ) + (1)*(1)* (compartment_compartment_0*()) );
	
//x(20)   ID: species_19  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0* ( ( ( (parameter_51_p*parameter_0_p) ) /parameter_12_p) ) * x(20) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(20) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(20) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(20) * x(2) ) + (-1)*(1)* (compartment_compartment_0*()) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(18) * x(2) ) + (1)*(1)* (compartment_compartment_0* ( ( ( (parameter_50_p*parameter_0_p) ) /parameter_11_p) ) * x(23) ) + (1)*(1)* (compartment_compartment_0* ( ( ( (parameter_52_p*parameter_0_p) ) /parameter_13_p) ) * x(26) ) + (1)*(1)* (compartment_compartment_0* ( ( ( (parameter_53_p*parameter_0_p) ) /parameter_14_p) ) * x(27) ) + (1)*(1)* (compartment_compartment_0*()) );
	
//x(21)   ID: species_20  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0* ( ( ( (parameter_52_p*parameter_0_p) ) /parameter_13_p) ) * x(21) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(21) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(21) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(21) * x(2) ) + (-1)*(1)* (compartment_compartment_0*()) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(18) * x(2) ) + (1)*(1)* (compartment_compartment_0* ( ( ( (parameter_50_p*parameter_0_p) ) /parameter_11_p) ) * x(24) ) + (1)*(1)* (compartment_compartment_0* ( ( ( (parameter_51_p*parameter_0_p) ) /parameter_12_p) ) * x(26) ) + (1)*(1)* (compartment_compartment_0* ( ( ( (parameter_53_p*parameter_0_p) ) /parameter_14_p) ) * x(28) ) + (1)*(1)* (compartment_compartment_0*()) );
	
//x(22)   ID: species_21  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0* ( ( ( (parameter_53_p*parameter_0_p) ) /parameter_14_p) ) * x(22) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(22) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(22) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(22) * x(2) ) + (-1)*(1)* (compartment_compartment_0*()) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(18) * x(2) ) + (1)*(1)* (compartment_compartment_0* ( ( ( (parameter_50_p*parameter_0_p) ) /parameter_11_p) ) * x(25) ) + (1)*(1)* (compartment_compartment_0* ( ( ( (parameter_51_p*parameter_0_p) ) /parameter_12_p) ) * x(27) ) + (1)*(1)* (compartment_compartment_0* ( ( ( (parameter_52_p*parameter_0_p) ) /parameter_13_p) ) * x(28) ) + (1)*(1)* (compartment_compartment_0*()) );
	
//x(23)   ID: species_22  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0* ( ( ( (parameter_50_p*parameter_0_p) ) /parameter_11_p) ) * x(23) ) + (-1)*(1)* (compartment_compartment_0* ( ( ( (parameter_51_p*parameter_0_p) ) /parameter_12_p) ) * x(23) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(23) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(23) * x(2) ) + (-1)*(1)* (compartment_compartment_0*()) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(19) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(20) * x(2) ) + (1)*(1)* (compartment_compartment_0* ( ( ( (parameter_53_p*parameter_0_p) ) /parameter_14_p) ) * x(30) ) + (1)*(1)* (compartment_compartment_0*()) + (1)*(1)* (compartment_compartment_0* ( ( ( (parameter_52_p*parameter_0_p) ) /parameter_13_p) ) * x(29) ) );
	
//x(24)   ID: species_23  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0* ( ( ( (parameter_50_p*parameter_0_p) ) /parameter_11_p) ) * x(24) ) + (-1)*(1)* (compartment_compartment_0* ( ( ( (parameter_52_p*parameter_0_p) ) /parameter_13_p) ) * x(24) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(24) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(24) * x(2) ) + (-1)*(1)* (compartment_compartment_0*()) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(19) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(21) * x(2) ) + (1)*(1)* (compartment_compartment_0* ( ( ( (parameter_51_p*parameter_0_p) ) /parameter_12_p) ) * x(29) ) + (1)*(1)* (compartment_compartment_0* ( ( ( (parameter_53_p*parameter_0_p) ) /parameter_14_p) ) * x(31) ) + (1)*(1)* (compartment_compartment_0*()) );
	
//x(25)   ID: species_24  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0* ( ( ( (parameter_50_p*parameter_0_p) ) /parameter_11_p) ) * x(25) ) + (-1)*(1)* (compartment_compartment_0* ( ( ( (parameter_53_p*parameter_0_p) ) /parameter_14_p) ) * x(25) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(25) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(25) * x(2) ) + (-1)*(1)* (compartment_compartment_0*()) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(19) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(22) * x(2) ) + (1)*(1)* (compartment_compartment_0* ( ( ( (parameter_51_p*parameter_0_p) ) /parameter_12_p) ) * x(30) ) + (1)*(1)* (compartment_compartment_0* ( ( ( (parameter_52_p*parameter_0_p) ) /parameter_13_p) ) * x(31) ) + (1)*(1)* (compartment_compartment_0*()) );
	
//x(26)   ID: species_25  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0* ( ( ( (parameter_51_p*parameter_0_p) ) /parameter_12_p) ) * x(26) ) + (-1)*(1)* (compartment_compartment_0* ( ( ( (parameter_52_p*parameter_0_p) ) /parameter_13_p) ) * x(26) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(26) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(26) * x(2) ) + (-1)*(1)* (compartment_compartment_0*()) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(20) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(21) * x(2) ) + (1)*(1)* (compartment_compartment_0* ( ( ( (parameter_50_p*parameter_0_p) ) /parameter_11_p) ) * x(29) ) + (1)*(1)* (compartment_compartment_0* ( ( ( (parameter_53_p*parameter_0_p) ) /parameter_14_p) ) * x(32) ) + (1)*(1)* (compartment_compartment_0*()) );
	
//x(27)   ID: species_26  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0* ( ( ( (parameter_51_p*parameter_0_p) ) /parameter_12_p) ) * x(27) ) + (-1)*(1)* (compartment_compartment_0* ( ( ( (parameter_53_p*parameter_0_p) ) /parameter_14_p) ) * x(27) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(27) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(27) * x(2) ) + (-1)*(1)* (compartment_compartment_0*()) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(20) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(22) * x(2) ) + (1)*(1)* (compartment_compartment_0* ( ( ( (parameter_50_p*parameter_0_p) ) /parameter_11_p) ) * x(30) ) + (1)*(1)* (compartment_compartment_0* ( ( ( (parameter_52_p*parameter_0_p) ) /parameter_13_p) ) * x(32) ) + (1)*(1)* (compartment_compartment_0*()) );
	
//x(28)   ID: species_27  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0* ( ( ( (parameter_52_p*parameter_0_p) ) /parameter_13_p) ) * x(28) ) + (-1)*(1)* (compartment_compartment_0* ( ( ( (parameter_53_p*parameter_0_p) ) /parameter_14_p) ) * x(28) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(28) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(28) * x(2) ) + (-1)*(1)* (compartment_compartment_0*()) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(21) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(22) * x(2) ) + (1)*(1)* (compartment_compartment_0* ( ( ( (parameter_50_p*parameter_0_p) ) /parameter_11_p) ) * x(31) ) + (1)*(1)* (compartment_compartment_0* ( ( ( (parameter_51_p*parameter_0_p) ) /parameter_12_p) ) * x(32) ) + (1)*(1)* (compartment_compartment_0*()) );
	
//x(29)   ID: species_28  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0* ( ( ( (parameter_51_p*parameter_0_p) ) /parameter_12_p) ) * x(29) ) + (-1)*(1)* (compartment_compartment_0* ( ( ( (parameter_50_p*parameter_0_p) ) /parameter_11_p) ) * x(29) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(29) * x(2) ) + (-1)*(1)* (compartment_compartment_0*()) + (-1)*(1)* (compartment_compartment_0* ( ( ( (parameter_52_p*parameter_0_p) ) /parameter_13_p) ) * x(29) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(23) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(24) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(26) * x(2) ) + (1)*(1)* (compartment_compartment_0* ( ( ( (parameter_53_p*parameter_0_p) ) /parameter_14_p) ) * x(33) ) + (1)*(1)* (compartment_compartment_0*()) );
	
//x(30)   ID: species_29  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0* ( ( ( (parameter_53_p*parameter_0_p) ) /parameter_14_p) ) * x(30) ) + (-1)*(1)* (compartment_compartment_0* ( ( ( (parameter_51_p*parameter_0_p) ) /parameter_12_p) ) * x(30) ) + (-1)*(1)* (compartment_compartment_0* ( ( ( (parameter_50_p*parameter_0_p) ) /parameter_11_p) ) * x(30) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(30) * x(2) ) + (-1)*(1)* (compartment_compartment_0*()) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(23) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(25) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(27) * x(2) ) + (1)*(1)* (compartment_compartment_0* ( ( ( (parameter_52_p*parameter_0_p) ) /parameter_13_p) ) * x(33) ) + (1)*(1)* (compartment_compartment_0*()) );
	
//x(31)   ID: species_30  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0* ( ( ( (parameter_53_p*parameter_0_p) ) /parameter_14_p) ) * x(31) ) + (-1)*(1)* (compartment_compartment_0* ( ( ( (parameter_52_p*parameter_0_p) ) /parameter_13_p) ) * x(31) ) + (-1)*(1)* (compartment_compartment_0* ( ( ( (parameter_50_p*parameter_0_p) ) /parameter_11_p) ) * x(31) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(31) * x(2) ) + (-1)*(1)* (compartment_compartment_0*()) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(24) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(25) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(28) * x(2) ) + (1)*(1)* (compartment_compartment_0* ( ( ( (parameter_51_p*parameter_0_p) ) /parameter_12_p) ) * x(33) ) + (1)*(1)* (compartment_compartment_0*()) );
	
//x(32)   ID: species_31  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0* ( ( ( (parameter_53_p*parameter_0_p) ) /parameter_14_p) ) * x(32) ) + (-1)*(1)* (compartment_compartment_0* ( ( ( (parameter_52_p*parameter_0_p) ) /parameter_13_p) ) * x(32) ) + (-1)*(1)* (compartment_compartment_0* ( ( ( (parameter_51_p*parameter_0_p) ) /parameter_12_p) ) * x(32) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(32) * x(2) ) + (-1)*(1)* (compartment_compartment_0*()) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(26) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(27) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(28) * x(2) ) + (1)*(1)* (compartment_compartment_0* ( ( ( (parameter_50_p*parameter_0_p) ) /parameter_11_p) ) * x(33) ) + (1)*(1)* (compartment_compartment_0*()) );
	
//x(33)   ID: species_32  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0* ( ( ( (parameter_53_p*parameter_0_p) ) /parameter_14_p) ) * x(33) ) + (-1)*(1)* (compartment_compartment_0* ( ( ( (parameter_52_p*parameter_0_p) ) /parameter_13_p) ) * x(33) ) + (-1)*(1)* (compartment_compartment_0* ( ( ( (parameter_51_p*parameter_0_p) ) /parameter_12_p) ) * x(33) ) + (-1)*(1)* (compartment_compartment_0* ( ( ( (parameter_50_p*parameter_0_p) ) /parameter_11_p) ) * x(33) ) + (-1)*(1)* (compartment_compartment_0*()) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(29) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(30) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(31) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(32) * x(2) ) + (1)*(1)* (compartment_compartment_0*()) );
	
//x(34)   ID: species_33  initialValue: 7E-5
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0*parameter_15_p* x(1) * x(34) ) + (-1)*(1)* (compartment_compartment_0*parameter_15_p* x(3) * x(34) ) + (-1)*(1)* (compartment_compartment_0*parameter_15_p* x(4) * x(34) ) + (-1)*(1)* (compartment_compartment_0*parameter_15_p* x(5) * x(34) ) + (-1)*(1)* (compartment_compartment_0*parameter_15_p* x(6) * x(34) ) + (-1)*(1)* (compartment_compartment_0*parameter_15_p* x(7) * x(34) ) + (-1)*(1)* (compartment_compartment_0*parameter_15_p* x(8) * x(34) ) + (-1)*(1)* (compartment_compartment_0*parameter_15_p* x(9) * x(34) ) + (-1)*(1)* (compartment_compartment_0*parameter_15_p* x(10) * x(34) ) + (-1)*(1)* (compartment_compartment_0*parameter_15_p* x(11) * x(34) ) + (-1)*(1)* (compartment_compartment_0*parameter_15_p* x(12) * x(34) ) + (-1)*(1)* (compartment_compartment_0*parameter_15_p* x(13) * x(34) ) + (-1)*(1)* (compartment_compartment_0*parameter_15_p* x(14) * x(34) ) + (-1)*(1)* (compartment_compartment_0*parameter_15_p* x(15) * x(34) ) + (-1)*(1)* (compartment_compartment_0*parameter_15_p* x(16) * x(34) ) + (-1)*(1)* (compartment_compartment_0*parameter_15_p* x(17) * x(34) ) + (1)*(1)* (compartment_compartment_0*parameter_16_p* x(35) ) + (1)*(1)* (compartment_compartment_0*parameter_16_p* x(36) ) + (1)*(1)* (compartment_compartment_0*parameter_16_p* x(37) ) + (1)*(1)* (compartment_compartment_0*parameter_16_p* x(38) ) + (1)*(1)* (compartment_compartment_0*parameter_16_p* x(39) ) + (1)*(1)* (compartment_compartment_0*parameter_16_p* x(40) ) + (1)*(1)* (compartment_compartment_0*parameter_16_p* x(41) ) + (1)*(1)* (compartment_compartment_0*parameter_16_p* x(42) ) + (1)*(1)* (compartment_compartment_0*parameter_16_p* x(43) ) + (1)*(1)* (compartment_compartment_0*parameter_16_p* x(44) ) + (1)*(1)* (compartment_compartment_0*parameter_16_p* x(45) ) + (1)*(1)* (compartment_compartment_0*parameter_16_p* x(46) ) + (1)*(1)* (compartment_compartment_0*parameter_16_p* x(47) ) + (1)*(1)* (compartment_compartment_0*parameter_16_p* x(48) ) + (1)*(1)* (compartment_compartment_0*parameter_16_p* x(49) ) + (1)*(1)* (compartment_compartment_0*parameter_16_p* x(50) ) );
	
//x(35)   ID: species_34  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0*parameter_16_p* x(35) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(35) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(35) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(35) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(35) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_15_p* x(1) * x(34) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_50_p*parameter_0_p) ) * x(36) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_52_p*parameter_0_p) ) * x(38) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_53_p*parameter_0_p) ) * x(39) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_51_p*parameter_0_p) ) * x(37) ) );
	
//x(36)   ID: species_35  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0*parameter_16_p* x(36) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_50_p*parameter_0_p) ) * x(36) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(36) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(36) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(36) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_15_p* x(3) * x(34) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(35) * x(2) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_51_p*parameter_0_p) ) * x(40) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_52_p*parameter_0_p) ) * x(41) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_53_p*parameter_0_p) ) * x(42) ) );
	
//x(37)   ID: species_36  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0*parameter_16_p* x(37) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(37) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(37) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(37) * x(2) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_51_p*parameter_0_p) ) * x(37) ) + (1)*(1)* (compartment_compartment_0*parameter_15_p* x(4) * x(34) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(35) * x(2) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_50_p*parameter_0_p) ) * x(40) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_52_p*parameter_0_p) ) * x(43) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_53_p*parameter_0_p) ) * x(44) ) );
	
//x(38)   ID: species_37  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0*parameter_16_p* x(38) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_52_p*parameter_0_p) ) * x(38) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(38) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(38) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(38) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_15_p* x(5) * x(34) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(35) * x(2) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_50_p*parameter_0_p) ) * x(41) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_51_p*parameter_0_p) ) * x(43) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_53_p*parameter_0_p) ) * x(45) ) );
	
//x(39)   ID: species_38  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0*parameter_16_p* x(39) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_53_p*parameter_0_p) ) * x(39) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(39) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(39) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(39) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_15_p* x(6) * x(34) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(35) * x(2) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_50_p*parameter_0_p) ) * x(42) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_51_p*parameter_0_p) ) * x(44) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_52_p*parameter_0_p) ) * x(45) ) );
	
//x(40)   ID: species_39  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0*parameter_16_p* x(40) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_50_p*parameter_0_p) ) * x(40) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_51_p*parameter_0_p) ) * x(40) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(40) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(40) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_15_p* x(7) * x(34) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(36) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(37) * x(2) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_52_p*parameter_0_p) ) * x(46) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_53_p*parameter_0_p) ) * x(47) ) );
	
//x(41)   ID: species_40  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0*parameter_16_p* x(41) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_50_p*parameter_0_p) ) * x(41) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_52_p*parameter_0_p) ) * x(41) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(41) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(41) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_15_p* x(8) * x(34) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(36) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(38) * x(2) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_51_p*parameter_0_p) ) * x(46) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_53_p*parameter_0_p) ) * x(48) ) );
	
//x(42)   ID: species_41  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0*parameter_16_p* x(42) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_50_p*parameter_0_p) ) * x(42) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_53_p*parameter_0_p) ) * x(42) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(42) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(42) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_15_p* x(9) * x(34) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(36) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(39) * x(2) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_51_p*parameter_0_p) ) * x(47) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_52_p*parameter_0_p) ) * x(48) ) );
	
//x(43)   ID: species_42  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0*parameter_16_p* x(43) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_51_p*parameter_0_p) ) * x(43) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_52_p*parameter_0_p) ) * x(43) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(43) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(43) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_15_p* x(10) * x(34) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(37) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(38) * x(2) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_50_p*parameter_0_p) ) * x(46) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_53_p*parameter_0_p) ) * x(49) ) );
	
//x(44)   ID: species_43  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0*parameter_16_p* x(44) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_51_p*parameter_0_p) ) * x(44) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_53_p*parameter_0_p) ) * x(44) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(44) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(44) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_15_p* x(11) * x(34) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(37) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(39) * x(2) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_50_p*parameter_0_p) ) * x(47) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_52_p*parameter_0_p) ) * x(49) ) );
	
//x(45)   ID: species_44  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0*parameter_16_p* x(45) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_52_p*parameter_0_p) ) * x(45) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_53_p*parameter_0_p) ) * x(45) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(45) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(45) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_15_p* x(12) * x(34) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(38) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(39) * x(2) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_50_p*parameter_0_p) ) * x(48) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_51_p*parameter_0_p) ) * x(49) ) );
	
//x(46)   ID: species_45  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0*parameter_16_p* x(46) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_52_p*parameter_0_p) ) * x(46) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_51_p*parameter_0_p) ) * x(46) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_50_p*parameter_0_p) ) * x(46) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(46) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_15_p* x(13) * x(34) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(40) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(41) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(43) * x(2) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_53_p*parameter_0_p) ) * x(50) ) );
	
//x(47)   ID: species_46  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0*parameter_16_p* x(47) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_53_p*parameter_0_p) ) * x(47) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_51_p*parameter_0_p) ) * x(47) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_50_p*parameter_0_p) ) * x(47) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(47) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_15_p* x(14) * x(34) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(40) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(42) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(44) * x(2) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_52_p*parameter_0_p) ) * x(50) ) );
	
//x(48)   ID: species_47  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0*parameter_16_p* x(48) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_53_p*parameter_0_p) ) * x(48) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_52_p*parameter_0_p) ) * x(48) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_50_p*parameter_0_p) ) * x(48) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(48) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_15_p* x(15) * x(34) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(41) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(42) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(45) * x(2) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_51_p*parameter_0_p) ) * x(50) ) );
	
//x(49)   ID: species_48  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0*parameter_16_p* x(49) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_53_p*parameter_0_p) ) * x(49) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_52_p*parameter_0_p) ) * x(49) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_51_p*parameter_0_p) ) * x(49) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(49) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_15_p* x(16) * x(34) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(43) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(44) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(45) * x(2) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_50_p*parameter_0_p) ) * x(50) ) );
	
//x(50)   ID: species_49  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0*parameter_16_p* x(50) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_50_p*parameter_0_p) ) * x(50) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_51_p*parameter_0_p) ) * x(50) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_52_p*parameter_0_p) ) * x(50) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_53_p*parameter_0_p) ) * x(50) ) + (1)*(1)* (compartment_compartment_0*parameter_15_p* x(17) * x(34) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(49) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(48) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(47) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(46) * x(2) ) );
	
//x(51)   ID: species_50  initialValue: 1.6E-6
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0*parameter_17_p* x(1) * x(51) ) + (-1)*(1)* (compartment_compartment_0*parameter_17_p* x(3) * x(51) ) + (-1)*(1)* (compartment_compartment_0*parameter_17_p* x(4) * x(51) ) + (-1)*(1)* (compartment_compartment_0*parameter_17_p* x(5) * x(51) ) + (-1)*(1)* (compartment_compartment_0*parameter_17_p* x(6) * x(51) ) + (-1)*(1)* (compartment_compartment_0*parameter_17_p* x(7) * x(51) ) + (-1)*(1)* (compartment_compartment_0*parameter_17_p* x(8) * x(51) ) + (-1)*(1)* (compartment_compartment_0*parameter_17_p* x(9) * x(51) ) + (-1)*(1)* (compartment_compartment_0*parameter_17_p* x(10) * x(51) ) + (-1)*(1)* (compartment_compartment_0*parameter_17_p* x(11) * x(51) ) + (-1)*(1)* (compartment_compartment_0*parameter_17_p* x(12) * x(51) ) + (-1)*(1)* (compartment_compartment_0*parameter_17_p* x(13) * x(51) ) + (-1)*(1)* (compartment_compartment_0*parameter_17_p* x(14) * x(51) ) + (-1)*(1)* (compartment_compartment_0*parameter_17_p* x(15) * x(51) ) + (-1)*(1)* (compartment_compartment_0*parameter_17_p* x(16) * x(51) ) + (-1)*(1)* (compartment_compartment_0*parameter_17_p* x(17) * x(51) ) + (1)*(1)* (compartment_compartment_0*parameter_18_p* x(52) ) + (1)*(1)* (compartment_compartment_0*parameter_18_p* x(53) ) + (1)*(1)* (compartment_compartment_0*parameter_18_p* x(54) ) + (1)*(1)* (compartment_compartment_0*parameter_18_p* x(55) ) + (1)*(1)* (compartment_compartment_0*parameter_18_p* x(56) ) + (1)*(1)* (compartment_compartment_0*parameter_18_p* x(57) ) + (1)*(1)* (compartment_compartment_0*parameter_18_p* x(58) ) + (1)*(1)* (compartment_compartment_0*parameter_18_p* x(59) ) + (1)*(1)* (compartment_compartment_0*parameter_18_p* x(60) ) + (1)*(1)* (compartment_compartment_0*parameter_18_p* x(61) ) + (1)*(1)* (compartment_compartment_0*parameter_18_p* x(62) ) + (1)*(1)* (compartment_compartment_0*parameter_18_p* x(63) ) + (1)*(1)* (compartment_compartment_0*parameter_18_p* x(64) ) + (1)*(1)* (compartment_compartment_0*parameter_18_p* x(65) ) + (1)*(1)* (compartment_compartment_0*parameter_18_p* x(66) ) + (1)*(1)* (compartment_compartment_0*parameter_18_p* x(67) ) );
	
//x(52)   ID: species_51  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0*parameter_18_p* x(52) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(52) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(52) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(52) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(52) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_17_p* x(1) * x(51) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_50_p*parameter_0_p) ) * x(53) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_51_p*parameter_0_p) ) * x(54) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_52_p*parameter_0_p) ) * x(55) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_53_p*parameter_0_p) ) * x(56) ) );
	
//x(53)   ID: species_52  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0*parameter_18_p* x(53) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_50_p*parameter_0_p) ) * x(53) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(53) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(53) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(53) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_17_p* x(3) * x(51) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(52) * x(2) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_51_p*parameter_0_p) ) * x(57) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_52_p*parameter_0_p) ) * x(58) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_53_p*parameter_0_p) ) * x(59) ) );
	
//x(54)   ID: species_53  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0*parameter_18_p* x(54) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_51_p*parameter_0_p) ) * x(54) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(54) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(54) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(54) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_17_p* x(4) * x(51) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(52) * x(2) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_50_p*parameter_0_p) ) * x(57) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_52_p*parameter_0_p) ) * x(60) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_53_p*parameter_0_p) ) * x(61) ) );
	
//x(55)   ID: species_54  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0*parameter_18_p* x(55) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_52_p*parameter_0_p) ) * x(55) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(55) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(55) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(55) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_17_p* x(5) * x(51) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(52) * x(2) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_50_p*parameter_0_p) ) * x(58) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_51_p*parameter_0_p) ) * x(60) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_53_p*parameter_0_p) ) * x(62) ) );
	
//x(56)   ID: species_55  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0*parameter_18_p* x(56) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_53_p*parameter_0_p) ) * x(56) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(56) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(56) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(56) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_17_p* x(6) * x(51) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(52) * x(2) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_50_p*parameter_0_p) ) * x(59) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_51_p*parameter_0_p) ) * x(61) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_52_p*parameter_0_p) ) * x(62) ) );
	
//x(57)   ID: species_56  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0*parameter_18_p* x(57) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_50_p*parameter_0_p) ) * x(57) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_51_p*parameter_0_p) ) * x(57) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(57) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(57) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_17_p* x(7) * x(51) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(53) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(54) * x(2) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_52_p*parameter_0_p) ) * x(63) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_53_p*parameter_0_p) ) * x(64) ) );
	
//x(58)   ID: species_57  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0*parameter_18_p* x(58) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_50_p*parameter_0_p) ) * x(58) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_52_p*parameter_0_p) ) * x(58) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(58) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(58) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_17_p* x(8) * x(51) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(53) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(55) * x(2) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_51_p*parameter_0_p) ) * x(63) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_53_p*parameter_0_p) ) * x(65) ) );
	
//x(59)   ID: species_58  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0*parameter_18_p* x(59) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_50_p*parameter_0_p) ) * x(59) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_53_p*parameter_0_p) ) * x(59) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(59) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(59) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_17_p* x(9) * x(51) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(53) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(56) * x(2) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_51_p*parameter_0_p) ) * x(64) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_52_p*parameter_0_p) ) * x(65) ) );
	
//x(60)   ID: species_59  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0*parameter_18_p* x(60) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_51_p*parameter_0_p) ) * x(60) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_52_p*parameter_0_p) ) * x(60) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(60) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(60) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_17_p* x(10) * x(51) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(54) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(55) * x(2) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_50_p*parameter_0_p) ) * x(63) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_53_p*parameter_0_p) ) * x(66) ) );
	
//x(61)   ID: species_60  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0*parameter_18_p* x(61) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_51_p*parameter_0_p) ) * x(61) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_53_p*parameter_0_p) ) * x(61) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(61) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(61) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_17_p* x(11) * x(51) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(54) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(56) * x(2) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_50_p*parameter_0_p) ) * x(64) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_52_p*parameter_0_p) ) * x(66) ) );
	
//x(62)   ID: species_61  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0*parameter_18_p* x(62) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_52_p*parameter_0_p) ) * x(62) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_53_p*parameter_0_p) ) * x(62) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(62) * x(2) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(62) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_17_p* x(12) * x(51) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(55) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(56) * x(2) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_50_p*parameter_0_p) ) * x(65) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_51_p*parameter_0_p) ) * x(66) ) );
	
//x(63)   ID: species_62  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0*parameter_18_p* x(63) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_50_p*parameter_0_p) ) * x(63) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_51_p*parameter_0_p) ) * x(63) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_52_p*parameter_0_p) ) * x(63) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(63) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_17_p* x(13) * x(51) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(57) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(58) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(60) * x(2) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_53_p*parameter_0_p) ) * x(67) ) );
	
//x(64)   ID: species_63  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0*parameter_18_p* x(64) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_50_p*parameter_0_p) ) * x(64) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_51_p*parameter_0_p) ) * x(64) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_53_p*parameter_0_p) ) * x(64) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(64) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_17_p* x(14) * x(51) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(57) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(59) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(61) * x(2) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_52_p*parameter_0_p) ) * x(67) ) );
	
//x(65)   ID: species_64  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0*parameter_18_p* x(65) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_50_p*parameter_0_p) ) * x(65) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_52_p*parameter_0_p) ) * x(65) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_53_p*parameter_0_p) ) * x(65) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(65) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_17_p* x(15) * x(51) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(58) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(59) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(62) * x(2) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_51_p*parameter_0_p) ) * x(67) ) );
	
//x(66)   ID: species_65  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0*parameter_18_p* x(66) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_51_p*parameter_0_p) ) * x(66) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_52_p*parameter_0_p) ) * x(66) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_53_p*parameter_0_p) ) * x(66) ) + (-1)*(1)* (compartment_compartment_0*parameter_0_p* x(66) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_17_p* x(16) * x(51) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(60) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(61) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(62) * x(2) ) + (1)*(1)* (compartment_compartment_0* ( (parameter_50_p*parameter_0_p) ) * x(67) ) );
	
//x(67)   ID: species_66  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0*parameter_18_p* x(67) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_50_p*parameter_0_p) ) * x(67) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_51_p*parameter_0_p) ) * x(67) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_52_p*parameter_0_p) ) * x(67) ) + (-1)*(1)* (compartment_compartment_0* ( (parameter_53_p*parameter_0_p) ) * x(67) ) + (1)*(1)* (compartment_compartment_0*parameter_17_p* x(17) * x(51) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(63) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(64) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(65) * x(2) ) + (1)*(1)* (compartment_compartment_0*parameter_0_p* x(66) * x(2) ) )
	];


	
endfunction
        x0=[9.7E-12;1E-5;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;2E-7;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;7E-5;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;1.6E-6;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)' 'x(14)' 'x(15)' 'x(16)' 'x(17)' 'x(18)' 'x(19)' 'x(20)' 'x(21)' 'x(22)' 'x(23)' 'x(24)' 'x(25)' 'x(26)' 'x(27)' 'x(28)' 'x(29)' 'x(30)' 'x(31)' 'x(32)' 'x(33)' 'x(34)' 'x(35)' 'x(36)' 'x(37)' 'x(38)' 'x(39)' 'x(40)' 'x(41)' 'x(42)' 'x(43)' 'x(44)' 'x(45)' 'x(46)' 'x(47)' 'x(48)' 'x(49)' 'x(50)' 'x(51)' 'x(52)' 'x(53)' 'x(54)' 'x(55)' 'x(56)' 'x(57)' 'x(58)' 'x(59)' 'x(60)' 'x(61)' 'x(62)' 'x(63)' 'x(64)' 'x(65)' 'x(66)' 'x(67)'],[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18;19;20;21;22;23;24;25;26;27;28;29;30;31;32;33;34;35;36;37;38;39;40;41;42;43;44;45;46;47;48;49;50;51;52;53;54;55;56;57;58;59;60;61;62;63;64;65;66;67])

//real_variable:
	
	
//x(1)   id: species_0  initialValue: 9.7E-12
	
//x(2)   id: species_1  initialValue: 1E-5
	
//x(3)   id: species_2  initialValue: 0
	
//x(4)   id: species_3  initialValue: 0
	
//x(5)   id: species_4  initialValue: 0
	
//x(6)   id: species_5  initialValue: 0
	
//x(7)   id: species_6  initialValue: 0
	
//x(8)   id: species_7  initialValue: 0
	
//x(9)   id: species_8  initialValue: 0
	
//x(10)   id: species_9  initialValue: 0
	
//x(11)   id: species_10  initialValue: 0
	
//x(12)   id: species_11  initialValue: 0
	
//x(13)   id: species_12  initialValue: 0
	
//x(14)   id: species_13  initialValue: 0
	
//x(15)   id: species_14  initialValue: 0
	
//x(16)   id: species_15  initialValue: 0
	
//x(17)   id: species_16  initialValue: 0
	
//x(18)   id: species_17  initialValue: 2E-7
	
//x(19)   id: species_18  initialValue: 0
	
//x(20)   id: species_19  initialValue: 0
	
//x(21)   id: species_20  initialValue: 0
	
//x(22)   id: species_21  initialValue: 0
	
//x(23)   id: species_22  initialValue: 0
	
//x(24)   id: species_23  initialValue: 0
	
//x(25)   id: species_24  initialValue: 0
	
//x(26)   id: species_25  initialValue: 0
	
//x(27)   id: species_26  initialValue: 0
	
//x(28)   id: species_27  initialValue: 0
	
//x(29)   id: species_28  initialValue: 0
	
//x(30)   id: species_29  initialValue: 0
	
//x(31)   id: species_30  initialValue: 0
	
//x(32)   id: species_31  initialValue: 0
	
//x(33)   id: species_32  initialValue: 0
	
//x(34)   id: species_33  initialValue: 7E-5
	
//x(35)   id: species_34  initialValue: 0
	
//x(36)   id: species_35  initialValue: 0
	
//x(37)   id: species_36  initialValue: 0
	
//x(38)   id: species_37  initialValue: 0
	
//x(39)   id: species_38  initialValue: 0
	
//x(40)   id: species_39  initialValue: 0
	
//x(41)   id: species_40  initialValue: 0
	
//x(42)   id: species_41  initialValue: 0
	
//x(43)   id: species_42  initialValue: 0
	
//x(44)   id: species_43  initialValue: 0
	
//x(45)   id: species_44  initialValue: 0
	
//x(46)   id: species_45  initialValue: 0
	
//x(47)   id: species_46  initialValue: 0
	
//x(48)   id: species_47  initialValue: 0
	
//x(49)   id: species_48  initialValue: 0
	
//x(50)   id: species_49  initialValue: 0
	
//x(51)   id: species_50  initialValue: 1.6E-6
	
//x(52)   id: species_51  initialValue: 0
	
//x(53)   id: species_52  initialValue: 0
	
//x(54)   id: species_53  initialValue: 0
	
//x(55)   id: species_54  initialValue: 0
	
//x(56)   id: species_55  initialValue: 0
	
//x(57)   id: species_56  initialValue: 0
	
//x(58)   id: species_57  initialValue: 0
	
//x(59)   id: species_58  initialValue: 0
	
//x(60)   id: species_59  initialValue: 0
	
//x(61)   id: species_60  initialValue: 0
	
//x(62)   id: species_61  initialValue: 0
	
//x(63)   id: species_62  initialValue: 0
	
//x(64)   id: species_63  initialValue: 0
	
//x(65)   id: species_64  initialValue: 0
	
//x(66)   id: species_65  initialValue: 0
	
//x(67)   id: species_66  initialValue: 0