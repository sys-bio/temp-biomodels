
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_default   id: default
	compartment_default=1;
		
// compartment_c1   id: c1
	compartment_c1=1;
		
// parameter_1_p   id: parameter_1
	parameter_1_p=2;
		
// parameter_2_p   id: parameter_2
	parameter_2_p=0.00850607781012331;
		
// parameter_3_p   id: parameter_3
	parameter_3_p=0;
		
// parameter_4_p   id: parameter_4
	parameter_4_p=0;
		
// ModelValue_5_p   id: ModelValue_5
	ModelValue_5_p=0.00850607781012331;
		
// species_13_s   id: species_13
	species_13_s=1;
		
// species_14_s   id: species_14
	species_14_s=1;
		
// species_15_s   id: species_15
	species_15_s=1;
		
// species_16_s   id: species_16
	species_16_s=0;
		
// species_17_s   id: species_17
	species_17_s=0;
		
// species_18_s   id: species_18
	species_18_s=0;
		
// species_19_s   id: species_19
	species_19_s=0;
		
// species_20_s   id: species_20
	species_20_s=0;
		
// species_21_s   id: species_21
	species_21_s=0;
		
// species_22_s   id: species_22
	species_22_s=0;
		
// species_23_s   id: species_23
	species_23_s=1;
		
// species_24_s   id: species_24
	species_24_s=0;
		
// species_25_s   id: species_25
	species_25_s=1;
		
// species_26_s   id: species_26
	species_26_s=0;
		
// species_27_s   id: species_27
	species_27_s=1;
		
// s65_s   id: s65
	s65_s=0.5;
		
// s67_s   id: s67
	s67_s=0.999999951844375;
		
// s69_s   id: s69
	s69_s=0.5;
		
// s70_s   id: s70
	s70_s=0.999999951844375;
		
// s75_s   id: s75
	s75_s=0.999999951844375;
		
// s76_s   id: s76
	s76_s=0.999999951844375;
		
// s77_s   id: s77
	s77_s=0.999999951844375;
		
// s78_s   id: s78
	s78_s=0.999999951844375;
		
// s79_s   id: s79
	s79_s=0.999999951844375;
		
// s80_s   id: s80
	s80_s=0.999999951844375;
		
// s81_s   id: s81
	s81_s=0.999999951844375;
		
// s82_s   id: s82
	s82_s=1;
		
// s86_s   id: s86
	s86_s=0.9999999518;
		
// species_8_s   id: species_8
	species_8_s=0.9999999518;
		
// species_9_s   id: species_9
	species_9_s=0.9999999518;
		
// species_10_s   id: species_10
	species_10_s=0.5;
		
// species_11_s   id: species_11
	species_11_s=0.5;
		
// species_5_s   id: species_5
	species_5_s=0.9999999518;
		
// species_6_s   id: species_6
	species_6_s=0.999999951844375;
		
// species_7_s   id: species_7
	species_7_s=0.999999951844375;
		
// Vf_re2   id: Vf     reactionID: re2
	Vf_re2=0.1;
	
// K_re2   id: K     reactionID: re2
	K_re2=0.138094;
	
// Vr_re2   id: Vr     reactionID: re2
	Vr_re2=0.1;
	
// Vf_re3   id: Vf     reactionID: re3
	Vf_re3=0.1;
	
// K_re3   id: K     reactionID: re3
	K_re3=2.01676;
	
// Vr_re3   id: Vr     reactionID: re3
	Vr_re3=0.1;
	
// k1_re6   id: k1     reactionID: re6
	k1_re6=0.1;
	
// Vf_re8   id: Vf     reactionID: re8
	Vf_re8=0.1;
	
// K1_re8   id: K1     reactionID: re8
	K1_re8=2.94611;
	
// K2_re8   id: K2     reactionID: re8
	K2_re8=0.743847;
	
// Vr_re8   id: Vr     reactionID: re8
	Vr_re8=0.1;
	
// Vf_re9   id: Vf     reactionID: re9
	Vf_re9=0.1;
	
// K1_re9   id: K1     reactionID: re9
	K1_re9=0.1;
	
// K2_re9   id: K2     reactionID: re9
	K2_re9=98.9482;
	
// K3_re9   id: K3     reactionID: re9
	K3_re9=0.0539426;
	
// Vr_re9   id: Vr     reactionID: re9
	Vr_re9=0.1;
	
// Vf_re10   id: Vf     reactionID: re10
	Vf_re10=0.1;
	
// K1_re10   id: K1     reactionID: re10
	K1_re10=0.125481;
	
// K2_re10   id: K2     reactionID: re10
	K2_re10=0.896854;
	
// K3_re10   id: K3     reactionID: re10
	K3_re10=0.031433;
	
// K4_re10   id: K4     reactionID: re10
	K4_re10=66.6168;
	
// Vr_re10   id: Vr     reactionID: re10
	Vr_re10=0.1;
	
// Vf_re11   id: Vf     reactionID: re11
	Vf_re11=0.1;
	
// K_re11   id: K     reactionID: re11
	K_re11=0.263953;
	
// Vr_re11   id: Vr     reactionID: re11
	Vr_re11=0.1;
	
// k1_re12   id: k1     reactionID: re12
	k1_re12=0.1;
	
// Vf_re13   id: Vf     reactionID: re13
	Vf_re13=0.1;
	
// K_re13   id: K     reactionID: re13
	K_re13=0.1;
	
// K1_re13   id: K1     reactionID: re13
	K1_re13=5.04432;
	
// K2_re13   id: K2     reactionID: re13
	K2_re13=0.0705365;
	
// K3_re13   id: K3     reactionID: re13
	K3_re13=14.9778;
	
// Vr_re13   id: Vr     reactionID: re13
	Vr_re13=0.1;
	
// Vf_re14   id: Vf     reactionID: re14
	Vf_re14=0.1;
	
// K1_re14   id: K1     reactionID: re14
	K1_re14=0.501917;
	
// K2_re14   id: K2     reactionID: re14
	K2_re14=0.812366;
	
// K3_re14   id: K3     reactionID: re14
	K3_re14=0.1;
	
// K4_re14   id: K4     reactionID: re14
	K4_re14=0.001477;
	
// K5_re14   id: K5     reactionID: re14
	K5_re14=100;
	
// K6_re14   id: K6     reactionID: re14
	K6_re14=0.230841;
	
// Vr_re14   id: Vr     reactionID: re14
	Vr_re14=0.1;
	
// Vf_re15   id: Vf     reactionID: re15
	Vf_re15=0.1;
	
// K1_re15   id: K1     reactionID: re15
	K1_re15=0.916783;
	
// K2_re15   id: K2     reactionID: re15
	K2_re15=1.33537;
	
// K3_re15   id: K3     reactionID: re15
	K3_re15=3.58849;
	
// K4_re15   id: K4     reactionID: re15
	K4_re15=0.727962;
	
// K5_re15   id: K5     reactionID: re15
	K5_re15=6.97805;
	
// Vr_re15   id: Vr     reactionID: re15
	Vr_re15=0.1;
	
// Vf_re16   id: Vf     reactionID: re16
	Vf_re16=0.1;
	
// K1_re16   id: K1     reactionID: re16
	K1_re16=0.1;
	
// K2_re16   id: K2     reactionID: re16
	K2_re16=0.004433;
	
// K3_re16   id: K3     reactionID: re16
	K3_re16=99.987;
	
// Vr_re16   id: Vr     reactionID: re16
	Vr_re16=0.1;
	
// Vf_re17   id: Vf     reactionID: re17
	Vf_re17=0.1;
	
// K1_re17   id: K1     reactionID: re17
	K1_re17=7.83763;
	
// K2_re17   id: K2     reactionID: re17
	K2_re17=0.667462;
	
// Vr_re17   id: Vr     reactionID: re17
	Vr_re17=0.1;
	
// k1_re18   id: k1     reactionID: re18
	k1_re18=0.1;
	
// Vf_re19   id: Vf     reactionID: re19
	Vf_re19=0.1;
	
// K_re19   id: K     reactionID: re19
	K_re19=13.0657;
	
// Vr_re19   id: Vr     reactionID: re19
	Vr_re19=0.1;
	
// Vf_re20   id: Vf     reactionID: re20
	Vf_re20=0.1;
	
// K1_re20   id: K1     reactionID: re20
	K1_re20=0.210399;
	
// K2_re20   id: K2     reactionID: re20
	K2_re20=56.3452;
	
// K3_re20   id: K3     reactionID: re20
	K3_re20=98.0373;
	
// K4_re20   id: K4     reactionID: re20
	K4_re20=0.855534;
	
// K5_re20   id: K5     reactionID: re20
	K5_re20=4.32731;
	
// Vr_re20   id: Vr     reactionID: re20
	Vr_re20=0.1;
	
// Vf_re23   id: Vf     reactionID: re23
	Vf_re23=0.1;
	
// K1_re23   id: K1     reactionID: re23
	K1_re23=0.199351;
	
// K2_re23   id: K2     reactionID: re23
	K2_re23=9.61521;
	
// K3_re23   id: K3     reactionID: re23
	K3_re23=0.214012;
	
// K4_re23   id: K4     reactionID: re23
	K4_re23=0.321065;
	
// K5_re23   id: K5     reactionID: re23
	K5_re23=0.1;
	
// Vr_re23   id: Vr     reactionID: re23
	Vr_re23=0.1;
	
// Vf_re24   id: Vf     reactionID: re24
	Vf_re24=0.1;
	
// K_re24   id: K     reactionID: re24
	K_re24=0.1;
	
// n1_re24   id: n1     reactionID: re24
	n1_re24=0.004304;
	
// K1_re24   id: K1     reactionID: re24
	K1_re24=0.1;
	
// Vr_re24   id: Vr     reactionID: re24
	Vr_re24=0.1;
	
// k1_re25   id: k1     reactionID: re25
	k1_re25=0.1;
	
// k2_re25   id: k2     reactionID: re25
	k2_re25=0.1;
	
// Vf_re26   id: Vf     reactionID: re26
	Vf_re26=0.1;
	
// K_re26   id: K     reactionID: re26
	K_re26=0.374591;
	
// Vr_re26   id: Vr     reactionID: re26
	Vr_re26=0.1;
	
// Vf_re27   id: Vf     reactionID: re27
	Vf_re27=0.1;
	
// K1_re27   id: K1     reactionID: re27
	K1_re27=100;
	
// K2_re27   id: K2     reactionID: re27
	K2_re27=0.354892;
	
// K3_re27   id: K3     reactionID: re27
	K3_re27=1.31281;
	
// K4_re27   id: K4     reactionID: re27
	K4_re27=0.000679025;
	
// K5_re27   id: K5     reactionID: re27
	K5_re27=2.07945;
	
// K6_re27   id: K6     reactionID: re27
	K6_re27=100;
	
// K7_re27   id: K7     reactionID: re27
	K7_re27=1.93254E-7;
	
// Vr_re27   id: Vr     reactionID: re27
	Vr_re27=0.1;
	
// k1_re28   id: k1     reactionID: re28
	k1_re28=0.1;
	
// k2_re28   id: k2     reactionID: re28
	k2_re28=0.1;
	
// k1_re29   id: k1     reactionID: re29
	k1_re29=0.1;
	
// k2_re29   id: k2     reactionID: re29
	k2_re29=0.1;
	
// Vf_re30   id: Vf     reactionID: re30
	Vf_re30=0.1;
	
// K_re30   id: K     reactionID: re30
	K_re30=0.1;
	
// K1_re30   id: K1     reactionID: re30
	K1_re30=0.636796;
	
// K2_re30   id: K2     reactionID: re30
	K2_re30=39.018;
	
// K3_re30   id: K3     reactionID: re30
	K3_re30=2.26986;
	
// K4_re30   id: K4     reactionID: re30
	K4_re30=0.137545;
	
// Vr_re30   id: Vr     reactionID: re30
	Vr_re30=0.1;
	
// Vf_re31   id: Vf     reactionID: re31
	Vf_re31=0.2249;
	
// K1_re31   id: K1     reactionID: re31
	K1_re31=9722.09;
	
// K2_re31   id: K2     reactionID: re31
	K2_re31=0.703778;
	
// K3_re31   id: K3     reactionID: re31
	K3_re31=1.24123;
	
// K4_re31   id: K4     reactionID: re31
	K4_re31=997.263;
	
// Vr_re31   id: Vr     reactionID: re31
	Vr_re31=0.1;
	
// Vf_re32   id: Vf     reactionID: re32
	Vf_re32=0.1;
	
// K_re32   id: K     reactionID: re32
	K_re32=0.240705;
	
// K1_re32   id: K1     reactionID: re32
	K1_re32=8.14189;
	
// Vr_re32   id: Vr     reactionID: re32
	Vr_re32=0.1;
	
// k1_re33   id: k1     reactionID: re33
	k1_re33=0.1;
	
// k1_re34   id: k1     reactionID: re34
	k1_re34=0.1;
	
// k2_re34   id: k2     reactionID: re34
	k2_re34=0.1;
	
// Vf_re35   id: Vf     reactionID: re35
	Vf_re35=0.1;
	
// K_re35   id: K     reactionID: re35
	K_re35=4.66107;
	
// Vr_re35   id: Vr     reactionID: re35
	Vr_re35=0.1;
	
// Vf_re36   id: Vf     reactionID: re36
	Vf_re36=0.1;
	
// K_re36   id: K     reactionID: re36
	K_re36=0.1;
	
// K1_re36   id: K1     reactionID: re36
	K1_re36=25.5354;
	
// Vr_re36   id: Vr     reactionID: re36
	Vr_re36=0.1;
	
// Vf_re37   id: Vf     reactionID: re37
	Vf_re37=0.1;
	
// K_re37   id: K     reactionID: re37
	K_re37=0.118892;
	
// Vr_re37   id: Vr     reactionID: re37
	Vr_re37=0.1;
	
// k1_re39   id: k1     reactionID: re39
	k1_re39=0.1;
	
// k2_re39   id: k2     reactionID: re39
	k2_re39=0.1;
	
// Vf_re42   id: Vf     reactionID: re42
	Vf_re42=0.1;
	
// K_re42   id: K     reactionID: re42
	K_re42=0.1;
	
// K1_re42   id: K1     reactionID: re42
	K1_re42=0.1;
	
// Vr_re42   id: Vr     reactionID: re42
	Vr_re42=0.1;
	
// k1_re44   id: k1     reactionID: re44
	k1_re44=0.1;
	
// k1_re45   id: k1     reactionID: re45
	k1_re45=0.1;
	
// k1_re46   id: k1     reactionID: re46
	k1_re46=0.1;
	
// k1_reaction_1   id: k1     reactionID: reaction_1
	k1_reaction_1=0.1;
	
// k1_reaction_2   id: k1     reactionID: reaction_2
	k1_reaction_2=0.1;
	
// k1_reaction_3   id: k1     reactionID: reaction_3
	k1_reaction_3=0.184881;
	
// k2_reaction_3   id: k2     reactionID: reaction_3
	k2_reaction_3=0.1896;
	
// k1_reaction_4   id: k1     reactionID: reaction_4
	k1_reaction_4=0.1;
	
// Vf_reaction_5   id: Vf     reactionID: reaction_5
	Vf_reaction_5=0.225095;
	
// K_reaction_5   id: K     reactionID: reaction_5
	K_reaction_5=0.1;
	
// K1_reaction_5   id: K1     reactionID: reaction_5
	K1_reaction_5=1.62893;
	
// K2_reaction_5   id: K2     reactionID: reaction_5
	K2_reaction_5=0.526832;
	
// K3_reaction_5   id: K3     reactionID: reaction_5
	K3_reaction_5=5.47889;
	
// Vr_reaction_5   id: Vr     reactionID: reaction_5
	Vr_reaction_5=0.1;
	
// V_reaction_6   id: V     reactionID: reaction_6
	V_reaction_6=0.1;
	
// k_reaction_6   id: k     reactionID: reaction_6
	k_reaction_6=0.5;
	
// V_reaction_7   id: V     reactionID: reaction_7
	V_reaction_7=0.1;
	
// k_reaction_7   id: k     reactionID: reaction_7
	k_reaction_7=0.5;
	
// V_reaction_8   id: V     reactionID: reaction_8
	V_reaction_8=0.1;
	
// k_reaction_8   id: k     reactionID: reaction_8
	k_reaction_8=0.1;
	
// V_reaction_9   id: V     reactionID: reaction_9
	V_reaction_9=0.1;
	
// k_reaction_9   id: k     reactionID: reaction_9
	k_reaction_9=0.1;
	
// V_reaction_10   id: V     reactionID: reaction_10
	V_reaction_10=0.1;
	
// k_reaction_10   id: k     reactionID: reaction_10
	k_reaction_10=0.1;
	
// V_reaction_11   id: V     reactionID: reaction_11
	V_reaction_11=0.1;
	
// k_reaction_11   id: k     reactionID: reaction_11
	k_reaction_11=0.1;
	
// V_reaction_12   id: V     reactionID: reaction_12
	V_reaction_12=0.1;
	
// k_reaction_12   id: k     reactionID: reaction_12
	k_reaction_12=0.1;
	
// V_reaction_13   id: V     reactionID: reaction_13
	V_reaction_13=0.1;
	
// k_reaction_13   id: k     reactionID: reaction_13
	k_reaction_13=0.1;
	
// V_reaction_14   id: V     reactionID: reaction_14
	V_reaction_14=0.1;
	
// k_reaction_14   id: k     reactionID: reaction_14
	k_reaction_14=0.1;
	
// V_reaction_15   id: V     reactionID: reaction_15
	V_reaction_15=0.1;
	
// k_reaction_15   id: k     reactionID: reaction_15
	k_reaction_15=0.1;
	
// V_reaction_16   id: V     reactionID: reaction_16
	V_reaction_16=0.1;
	
// k_reaction_16   id: k     reactionID: reaction_16
	k_reaction_16=0.1;
	
// Vf_reaction_17   id: Vf     reactionID: reaction_17
	Vf_reaction_17=0.1;
	
// K_reaction_17   id: K     reactionID: reaction_17
	K_reaction_17=0.508159;
	
// K1_reaction_17   id: K1     reactionID: reaction_17
	K1_reaction_17=0.1;
	
// K2_reaction_17   id: K2     reactionID: reaction_17
	K2_reaction_17=0.00125893;
	
// K3_reaction_17   id: K3     reactionID: reaction_17
	K3_reaction_17=0.645162;
	
// K4_reaction_17   id: K4     reactionID: reaction_17
	K4_reaction_17=100;
	
// Vr_reaction_17   id: Vr     reactionID: reaction_17
	Vr_reaction_17=0.1;
	



xdot=[
//x(1)   ID: s22  initialValue: 0
	(1/compartment_default)*( (-1)*(1)* () + (1)*(1)* (k1_re12* x(42) ) + (1)*(1)* (compartment_default*()) );
	
//x(2)   ID: s11  initialValue: 0
	(1/compartment_default)*( (-1)*(1)* () + (1)*(1)* (k1_re6* x(28) ) + (1)*(1)* (compartment_default*()) );
	
//x(3)   ID: s51  initialValue: 0
	(1/compartment_default)*( (-1)*(1)* () + (1)*(1)* (k1_re33* x(32) ) + (1)*(1)* (compartment_default*()) );
	
//x(4)   ID: s55  initialValue: 0
	(1/compartment_default)*( (-1)*(1)* ((k1_re34* x(4) )-(k2_re34* x(45) )) + (1)*(1)* (compartment_default*()) );
	
//x(5)   ID: s30  initialValue: 0
	(1/compartment_default)*( (-1)*(1)* () + (1)*(1)* (k1_re18* x(23) ) + (1)*(1)* (compartment_default*()) );
	
//x(6)   ID: s87  initialValue: 1
	(1/compartment_default)*( (-1)*(1)* ((k1_re28* x(6) * x(16) )-(k2_re28* x(15) )) + (1)*(1)* (k1_re44* x(17) ) + (1)*(1)* (compartment_default*()) );
	
//x(7)   ID: s89  initialValue: 0
	(1/compartment_default)*( (-1)*(1)* ((k1_re25* x(7) * x(19) )-(k2_re25* x(18) )) + (1)*(1)* (k1_re45* x(20) ) + (1)*(1)* (compartment_default*()) );
	
//x(8)   ID: s90  initialValue: 1
	(1/compartment_default)*( (-1)*(1)* ((k1_re29* x(8) * x(13) )-(k2_re29* x(12) )) + (1)*(1)* (k1_re46* x(14) ) + (1)*(1)* (compartment_default*()) );
	
//x(9)   ID: species_1  initialValue: 0
	(1/compartment_default)*( (-1)*(1)* ((k1_reaction_3* x(9) * x(58) )-(k2_reaction_3* x(59) )) + (1)*(1)* (k1_reaction_2* x(46) ) );
	
//x(10)   ID: species_2  initialValue: 0
	(1/compartment_default)*( (-1)*(1)* ((k1_re39* x(10) * x(37) )-(k2_re39* x(38) )) + (1)*(1)* (k1_reaction_1* x(47) ) + (1)*(1)* (compartment_default*()) );
	
//x(11)   ID: species_12  initialValue: 0
	(1/compartment_default)*( (-1)*(1)* () + (1)*(1)* (k1_reaction_4* x(31) ) + (1)*(1)* (compartment_default*()) );
	
//x(12)   ID: s48  initialValue: 0
	(1/compartment_c1)*( (1)*(1)* ((k1_re29* x(8) * x(13) )-(k2_re29* x(12) )) );
	
//x(13)   ID: s47  initialValue: 0.9999999518
	(1/compartment_c1)*( (-1)*(1)* ((k1_re29* x(8) * x(13) )-(k2_re29* x(12) )) );
	
//x(14)   ID: s46  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (k1_re46* x(14) ) );
	
//x(15)   ID: s45  initialValue: 0
	(1/compartment_c1)*( (1)*(1)* ((k1_re28* x(6) * x(16) )-(k2_re28* x(15) )) );
	
//x(16)   ID: s44  initialValue: 0.999999951844375
	(1/compartment_c1)*( (-1)*(1)* ((k1_re28* x(6) * x(16) )-(k2_re28* x(15) )) );
	
//x(17)   ID: s43  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (k1_re44* x(17) ) );
	
//x(18)   ID: s38  initialValue: 0
	(1/compartment_c1)*( (1)*(1)* ((k1_re25* x(7) * x(19) )-(k2_re25* x(18) )) );
	
//x(19)   ID: s37  initialValue: 0.999999951844375
	(1/compartment_c1)*( (-1)*(1)* ((k1_re25* x(7) * x(19) )-(k2_re25* x(18) )) );
	
//x(20)   ID: s36  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (k1_re45* x(20) ) );
	
//x(21)   ID: s33  initialValue: 0
	(1/compartment_c1)*( (1)*(1)* () );
	
//x(22)   ID: s32  initialValue: 0.999999951844375
	(1/compartment_c1)*( (-1)*(1)* () );
	
//x(23)   ID: s31  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (k1_re18* x(23) ) + (1)*(1)* () );
	
//x(24)   ID: s25  initialValue: 0
	(1/compartment_c1)*( (1)*(1)* () );
	
//x(25)   ID: s24  initialValue: 0.999999951844375
	(1/compartment_c1)*( (-1)*(1)* () );
	
//x(26)   ID: s14  initialValue: 0
	(1/compartment_c1)*( (1)*(1)* () );
	
//x(27)   ID: s13  initialValue: 0.999999951844375
	(1/compartment_c1)*( (-1)*(1)* () );
	
//x(28)   ID: s12  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (k1_re6* x(28) ) );
	
//x(29)   ID: s3  initialValue: 0
	(1/compartment_c1)*( (1)*(1)* () );
	
//x(30)   ID: s2  initialValue: 0.999999951844375
	(1/compartment_c1)*( (-1)*(1)* () );
	
//x(31)   ID: s1  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (k1_reaction_4* x(31) ) );
	
//x(32)   ID: s52  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (k1_re33* x(32) ) + (1)*(1)* (compartment_c1*()) );
	
//x(33)   ID: s54  initialValue: 0
	(1/compartment_c1)*( (1)*(1)* () );
	
//x(34)   ID: s53  initialValue: 0.999999951844375
	(1/compartment_c1)*( (-1)*(1)* () );
	
//x(35)   ID: s58  initialValue: 0.999999951844375
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*()) );
	
//x(36)   ID: s59  initialValue: 0
	(1/compartment_c1)*( (1)*(1)* (compartment_c1*()) );
	
//x(37)   ID: s62  initialValue: 0.999999951844375
	(1/compartment_c1)*( (-1)*(1)* ((k1_re39* x(10) * x(37) )-(k2_re39* x(38) )) );
	
//x(38)   ID: s63  initialValue: 0
	(1/compartment_c1)*( (1)*(1)* ((k1_re39* x(10) * x(37) )-(k2_re39* x(38) )) );
	
//x(39)   ID: s10  initialValue: 0
	(1/compartment_c1)*( (1)*(1)* (compartment_c1*()) );
	
//x(40)   ID: s20  initialValue: 0
	(1/compartment_c1)*( (1)*(1)* (compartment_c1*()) );
	
//x(41)   ID: s21  initialValue: 0
	(1/compartment_c1)*( (1)*(1)* (compartment_c1*()) );
	
//x(42)   ID: s68  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (k1_re12* x(42) ) + (1)*(1)* (compartment_c1*()) );
	
//x(43)   ID: s28  initialValue: 0
	(1/compartment_c1)*( (1)*(1)* (compartment_c1*()) );
	
//x(44)   ID: s26  initialValue: 0
	(1/compartment_c1)*( (1)*(1)* (compartment_c1*()) );
	
//x(45)   ID: s57  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*()) + (1)*(1)* ((k1_re34* x(4) )-(k2_re34* x(45) )) + (1)*(1)* (compartment_c1*()) );
	
//x(46)   ID: s73  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (k1_reaction_2* x(46) ) + (1)*(1)* (compartment_c1*()) + (1)*(1)* () );
	
//x(47)   ID: s74  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (k1_reaction_1* x(47) ) + (1)*(1)* () );
	
//x(48)   ID: s50  initialValue: 0
	(1/compartment_c1)*( (1)*(1)* (compartment_c1*()) );
	
//x(49)   ID: s49  initialValue: 0
	(1/compartment_c1)*( (1)*(1)* (compartment_c1*()) );
	
//x(50)   ID: s39  initialValue: 0
	(1/compartment_c1)*( (1)*(1)* (compartment_c1*()) );
	
//x(51)   ID: s29  initialValue: 0
	(1/compartment_c1)*( (1)*(1)* (compartment_c1*()) );
	
//x(52)   ID: s27  initialValue: 0
	(1/compartment_c1)*( (1)*(1)* (compartment_c1*()) );
	
//x(53)   ID: s35  initialValue: 0
	(1/compartment_c1)*( (1)*(1)* (compartment_c1*()) );
	
//x(54)   ID: s34  initialValue: 0
	(1/compartment_c1)*( (1)*(1)* (compartment_c1*()) );
	
//x(55)   ID: s85  initialValue: 0.08
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*()) );
	
//x(56)   ID: s83  initialValue: 0
	(1/compartment_c1)*( (1)*(1)* (compartment_c1*()) );
	
//x(57)   ID: s40  initialValue: 0
	(1/compartment_c1)*( (1)*(1)* (compartment_c1*()) );
	
//x(58)   ID: species_4  initialValue: 0.9999999518
	(1/compartment_c1)*( (-1)*(1)* ((k1_reaction_3* x(9) * x(58) )-(k2_reaction_3* x(59) )) );
	
//x(59)   ID: species_3  initialValue: 0
	(1/compartment_c1)*( (1)*(1)* ((k1_reaction_3* x(9) * x(58) )-(k2_reaction_3* x(59) )) )
	];


	
endfunction
        x0=[0;0;0;0;0;1;0;1;0;0;0;0;0.9999999518;0;0;0.999999951844375;0;0;0.999999951844375;0;0;0.999999951844375;0;0;0.999999951844375;0;0.999999951844375;0;0;0.999999951844375;0;0;0;0.999999951844375;0.999999951844375;0;0.999999951844375;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0.08;0;0;0.9999999518;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)' 'x(14)' 'x(15)' 'x(16)' 'x(17)' 'x(18)' 'x(19)' 'x(20)' 'x(21)' 'x(22)' 'x(23)' 'x(24)' 'x(25)' 'x(26)' 'x(27)' 'x(28)' 'x(29)' 'x(30)' 'x(31)' 'x(32)' 'x(33)' 'x(34)' 'x(35)' 'x(36)' 'x(37)' 'x(38)' 'x(39)' 'x(40)' 'x(41)' 'x(42)' 'x(43)' 'x(44)' 'x(45)' 'x(46)' 'x(47)' 'x(48)' 'x(49)' 'x(50)' 'x(51)' 'x(52)' 'x(53)' 'x(54)' 'x(55)' 'x(56)' 'x(57)' 'x(58)' 'x(59)'],[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18;19;20;21;22;23;24;25;26;27;28;29;30;31;32;33;34;35;36;37;38;39;40;41;42;43;44;45;46;47;48;49;50;51;52;53;54;55;56;57;58;59])

//real_variable:
	
	
//x(1)   id: s22  initialValue: 0
	
//x(2)   id: s11  initialValue: 0
	
//x(3)   id: s51  initialValue: 0
	
//x(4)   id: s55  initialValue: 0
	
//x(5)   id: s30  initialValue: 0
	
//x(6)   id: s87  initialValue: 1
	
//x(7)   id: s89  initialValue: 0
	
//x(8)   id: s90  initialValue: 1
	
//x(9)   id: species_1  initialValue: 0
	
//x(10)   id: species_2  initialValue: 0
	
//x(11)   id: species_12  initialValue: 0
	
//x(12)   id: s48  initialValue: 0
	
//x(13)   id: s47  initialValue: 0.9999999518
	
//x(14)   id: s46  initialValue: 0
	
//x(15)   id: s45  initialValue: 0
	
//x(16)   id: s44  initialValue: 0.999999951844375
	
//x(17)   id: s43  initialValue: 0
	
//x(18)   id: s38  initialValue: 0
	
//x(19)   id: s37  initialValue: 0.999999951844375
	
//x(20)   id: s36  initialValue: 0
	
//x(21)   id: s33  initialValue: 0
	
//x(22)   id: s32  initialValue: 0.999999951844375
	
//x(23)   id: s31  initialValue: 0
	
//x(24)   id: s25  initialValue: 0
	
//x(25)   id: s24  initialValue: 0.999999951844375
	
//x(26)   id: s14  initialValue: 0
	
//x(27)   id: s13  initialValue: 0.999999951844375
	
//x(28)   id: s12  initialValue: 0
	
//x(29)   id: s3  initialValue: 0
	
//x(30)   id: s2  initialValue: 0.999999951844375
	
//x(31)   id: s1  initialValue: 0
	
//x(32)   id: s52  initialValue: 0
	
//x(33)   id: s54  initialValue: 0
	
//x(34)   id: s53  initialValue: 0.999999951844375
	
//x(35)   id: s58  initialValue: 0.999999951844375
	
//x(36)   id: s59  initialValue: 0
	
//x(37)   id: s62  initialValue: 0.999999951844375
	
//x(38)   id: s63  initialValue: 0
	
//x(39)   id: s10  initialValue: 0
	
//x(40)   id: s20  initialValue: 0
	
//x(41)   id: s21  initialValue: 0
	
//x(42)   id: s68  initialValue: 0
	
//x(43)   id: s28  initialValue: 0
	
//x(44)   id: s26  initialValue: 0
	
//x(45)   id: s57  initialValue: 0
	
//x(46)   id: s73  initialValue: 0
	
//x(47)   id: s74  initialValue: 0
	
//x(48)   id: s50  initialValue: 0
	
//x(49)   id: s49  initialValue: 0
	
//x(50)   id: s39  initialValue: 0
	
//x(51)   id: s29  initialValue: 0
	
//x(52)   id: s27  initialValue: 0
	
//x(53)   id: s35  initialValue: 0
	
//x(54)   id: s34  initialValue: 0
	
//x(55)   id: s85  initialValue: 0.08
	
//x(56)   id: s83  initialValue: 0
	
//x(57)   id: s40  initialValue: 0
	
//x(58)   id: species_4  initialValue: 0.9999999518
	
//x(59)   id: species_3  initialValue: 0