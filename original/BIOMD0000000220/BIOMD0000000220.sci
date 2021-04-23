
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_cell   id: cell
	compartment_cell=1;
		
// compartment_mitochondrion   id: mitochondrion
	compartment_mitochondrion=1;
		
// k1_p   id: k1
	k1_p=4E-7;
		
// k_1_p   id: k_1
	k_1_p=0.001;
		
// kc1_p   id: kc1
	kc1_p=1E-5;
		
// k2_p   id: k2
	k2_p=1E-6;
		
// k_2_p   id: k_2
	k_2_p=0.001;
		
// k3_p   id: k3
	k3_p=1E-6;
		
// k_3_p   id: k_3
	k_3_p=0.001;
		
// kc3_p   id: kc3
	kc3_p=1;
		
// k4_p   id: k4
	k4_p=1E-6;
		
// k_4_p   id: k_4
	k_4_p=0.001;
		
// k5_p   id: k5
	k5_p=1E-7;
		
// k_5_p   id: k_5
	k_5_p=0.001;
		
// kc5_p   id: kc5
	kc5_p=1;
		
// k6_p   id: k6
	k6_p=1E-6;
		
// k_6_p   id: k_6
	k_6_p=0.001;
		
// kc6_p   id: kc6
	kc6_p=1;
		
// k7_p   id: k7
	k7_p=3E-8;
		
// k_7_p   id: k_7
	k_7_p=0.001;
		
// k8_p   id: k8
	k8_p=2E-6;
		
// k_8_p   id: k_8
	k_8_p=0.001;
		
// kc8_p   id: kc8
	kc8_p=0.1;
		
// k9_p   id: k9
	k9_p=1E-6;
		
// k_9_p   id: k_9
	k_9_p=0.01;
		
// kc9_p   id: kc9
	kc9_p=1;
		
// k10_p   id: k10
	k10_p=1E-7;
		
// k_10_p   id: k_10
	k_10_p=0.001;
		
// kc10_p   id: kc10
	kc10_p=1;
		
// k11_p   id: k11
	k11_p=1E-6;
		
// k_11_p   id: k_11
	k_11_p=0.001;
		
// k12_p   id: k12
	k12_p=1E-7;
		
// k_12_p   id: k_12
	k_12_p=0.001;
		
// kc12_p   id: kc12
	kc12_p=1;
		
// k13_p   id: k13
	k13_p=0.01;
		
// k_13_p   id: k_13
	k_13_p=0.01;
		
// k14_p   id: k14
	k14_p=1E-6;
		
// k_14_p   id: k_14
	k_14_p=0.001;
		
// k15_p   id: k15
	k15_p=1E-6;
		
// k_15_p   id: k_15
	k_15_p=0.001;
		
// k16_p   id: k16
	k16_p=1E-6;
		
// k_16_p   id: k_16
	k_16_p=0.001;
		
// k17_p   id: k17
	k17_p=1E-6;
		
// k_17_p   id: k_17
	k_17_p=0.001;
		
// k18_p   id: k18
	k18_p=1E-6;
		
// k_18_p   id: k_18
	k_18_p=0.001;
		
// k19_p   id: k19
	k19_p=1E-6;
		
// k_19_p   id: k_19
	k_19_p=0.001;
		
// kc19_p   id: kc19
	kc19_p=1;
		
// k20_p   id: k20
	k20_p=2E-6;
		
// k_20_p   id: k_20
	k_20_p=0.001;
		
// kc20_p   id: kc20
	kc20_p=10;
		
// k21_p   id: k21
	k21_p=2E-6;
		
// k_21_p   id: k_21
	k_21_p=0.001;
		
// kc21_p   id: kc21
	kc21_p=10;
		
// k22_p   id: k22
	k22_p=0.01;
		
// k_22_p   id: k_22
	k_22_p=0.01;
		
// k23_p   id: k23
	k23_p=5E-7;
		
// k_23_p   id: k_23
	k_23_p=0.001;
		
// kc23_p   id: kc23
	kc23_p=1;
		
// k24_p   id: k24
	k24_p=5E-8;
		
// k_24_p   id: k_24
	k_24_p=0.001;
		
// k25_p   id: k25
	k25_p=5E-9;
		
// k_25_p   id: k_25
	k_25_p=0.001;
		
// kc25_p   id: kc25
	kc25_p=1;
		
// k26_p   id: k26
	k26_p=0.01;
		
// k_26_p   id: k_26
	k_26_p=0.01;
		
// k27_p   id: k27
	k27_p=2E-6;
		
// k_27_p   id: k_27
	k_27_p=0.001;
		
// k28_p   id: k28
	k28_p=7E-6;
		
// k_28_p   id: k_28
	k_28_p=0.001;
		
// kc7_p   id: kc7
	kc7_p=1;
		
// v_p   id: v
	v_p=0.07;
		
// pC3_frac_p   id: pC3_frac
	pC3_frac_p=0;
		
// C3_frac_p   id: C3_frac
	C3_frac_p=0;
		
// C3_UB_frac_p   id: C3_UB_frac
	C3_UB_frac_p=0;
		
// cPARP_frac_p   id: cPARP_frac
	cPARP_frac_p=0;
		
// C3_tot_p   id: C3_tot
	C3_tot_p=0;
		
// fC3_fract_p   id: fC3_fract
	fC3_fract_p=0;
		



xdot=[
//x(1)   ID: L  initialValue: 3000
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*(( x(1) * x(2) *k1_p)-( x(22) *k_1_p))) );
	
//x(2)   ID: R  initialValue: 200
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*(( x(1) * x(2) *k1_p)-( x(22) *k_1_p))) );
	
//x(3)   ID: flip  initialValue: 100
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*(( x(23) * x(3) *k2_p)-( x(24) *k_2_p))) );
	
//x(4)   ID: pC8  initialValue: 20000
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*(( x(23) * x(4) *k3_p)-( x(25) *k_3_p))) + (-1)*(1)* (compartment_cell*(( x(6) * x(4) *k7_p)-( x(26) *k_7_p))) );
	
//x(5)   ID: C8  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*(( x(5) * x(7) *k4_p)-( x(27) *k_4_p))) + (-1)*(1)* (compartment_cell*(( x(8) * x(5) *k5_p)-( x(28) *k_5_p))) + (-1)*(1)* (compartment_cell*(( x(5) * x(10) *k10_p)-( x(31) *k_10_p))) + (1)*(1)* (compartment_cell* x(25) *kc3_p) + (1)*(1)* (compartment_cell* x(26) *kc7_p) + (1)*(1)* (compartment_cell* x(28) *kc5_p) + (1)*(1)* (compartment_cell* x(31) *kc10_p) );
	
//x(6)   ID: C6  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*(( x(6) * x(4) *k7_p)-( x(26) *k_7_p))) + (1)*(1)* (compartment_cell* x(26) *kc7_p) + (1)*(1)* (compartment_cell* x(32) *kc6_p) );
	
//x(7)   ID: BAR  initialValue: 1000
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*(( x(5) * x(7) *k4_p)-( x(27) *k_4_p))) );
	
//x(8)   ID: pC3  initialValue: 10000
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*(( x(8) * x(5) *k5_p)-( x(28) *k_5_p))) + (-1)*(1)* (compartment_cell*(( x(8) * x(30) *k25_p)-( x(29) *k_25_p))) );
	
//x(9)   ID: C3  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*(( x(9) * x(12) *k6_p)-( x(32) *k_6_p))) + (-1)*(1)* (compartment_cell*(( x(9) * x(13) *k8_p)-( x(33) *k_8_p))) + (-1)*(1)* (compartment_cell*(( x(15) * x(9) *k9_p)-( x(34) *k_9_p))) + (1)*(1)* (compartment_cell* x(28) *kc5_p) + (1)*(1)* (compartment_cell* x(29) *kc25_p) + (1)*(1)* (compartment_cell* x(32) *kc6_p) + (1)*(1)* (compartment_cell* x(34) *kc9_p) );
	
//x(10)   ID: Bid  initialValue: 40000
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*(( x(5) * x(10) *k10_p)-( x(31) *k_10_p))) );
	
//x(11)   ID: tBid  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*(( x(11) * x(18) *k11_p)-( x(37) *k_11_p))) + (-1)*(1)* (compartment_cell*(( x(11) * x(19) *k12_p)-( x(38) *k_12_p))) + (1)*(1)* (compartment_cell* x(31) *kc10_p) + (1)*(1)* (compartment_cell* x(38) *kc12_p) );
	
//x(12)   ID: pC6  initialValue: 10000
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*(( x(9) * x(12) *k6_p)-( x(32) *k_6_p))) );
	
//x(13)   ID: XIAP  initialValue: 100000
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*(( x(9) * x(13) *k8_p)-( x(33) *k_8_p))) + (-1)*(1)* (compartment_cell*(( x(13) * x(30) *k27_p)-( x(35) *k_27_p))) + (-1)*(1)* (compartment_cell*(( x(13) * x(17) *k28_p)-( x(36) *k_28_p))) + (1)*(1)* (compartment_cell* x(33) *kc8_p) );
	
//x(14)   ID: C3_Ub  initialValue: 0
	(1/compartment_cell)*( (1)*(1)* (compartment_cell* x(33) *kc8_p) );
	
//x(15)   ID: PARP  initialValue: 1000000
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*(( x(15) * x(9) *k9_p)-( x(34) *k_9_p))) );
	
//x(16)   ID: CPARP  initialValue: 0
	(1/compartment_cell)*( (1)*(1)* (compartment_cell* x(34) *kc9_p) );
	
//x(17)   ID: Smac  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*(( x(13) * x(17) *k28_p)-( x(36) *k_28_p))) + (1)*(1)* (compartment_cell*(( x(48) *k26_p)-( x(17) *k_26_p))) );
	
//x(18)   ID: Bcl2c  initialValue: 20000
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*(( x(11) * x(18) *k11_p)-( x(37) *k_11_p))) );
	
//x(19)   ID: Bax  initialValue: 100000
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*(( x(11) * x(19) *k12_p)-( x(38) *k_12_p))) );
	
//x(20)   ID: Bax_hash  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*(( x(20) *k13_p)-( x(57) *k_13_p))) + (1)*(1)* (compartment_cell* x(38) *kc12_p) );
	
//x(21)   ID: Bcl2  initialValue: 20000
	(1/compartment_mitochondrion)*( (-1)*(1)* (compartment_mitochondrion*((( x(57) * x(21) *k14_p)/v_p)-( x(39) *k_14_p))) + (-1)*(1)* (compartment_mitochondrion*((( x(21) * x(58) *k16_p)/v_p)-( x(41) *k_16_p))) + (-1)*(1)* (compartment_mitochondrion*((( x(21) * x(40) *k18_p)/v_p)-( x(42) *k_18_p))) );
	
//x(22)   ID: L_R  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell* x(22) *kc1_p) + (1)*(1)* (compartment_cell*(( x(1) * x(2) *k1_p)-( x(22) *k_1_p))) );
	
//x(23)   ID: R_hash  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*(( x(23) * x(3) *k2_p)-( x(24) *k_2_p))) + (-1)*(1)* (compartment_cell*(( x(23) * x(4) *k3_p)-( x(25) *k_3_p))) + (1)*(1)* (compartment_cell* x(22) *kc1_p) + (1)*(1)* (compartment_cell* x(25) *kc3_p) );
	
//x(24)   ID: flip_R_hash  initialValue: 0
	(1/compartment_cell)*( (1)*(1)* (compartment_cell*(( x(23) * x(3) *k2_p)-( x(24) *k_2_p))) );
	
//x(25)   ID: R_hash_pC8  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell* x(25) *kc3_p) + (1)*(1)* (compartment_cell*(( x(23) * x(4) *k3_p)-( x(25) *k_3_p))) );
	
//x(26)   ID: C6_pC8  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell* x(26) *kc7_p) + (1)*(1)* (compartment_cell*(( x(6) * x(4) *k7_p)-( x(26) *k_7_p))) );
	
//x(27)   ID: BAR_C8  initialValue: 0
	(1/compartment_cell)*( (1)*(1)* (compartment_cell*(( x(5) * x(7) *k4_p)-( x(27) *k_4_p))) );
	
//x(28)   ID: C8_pC3  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell* x(28) *kc5_p) + (1)*(1)* (compartment_cell*(( x(8) * x(5) *k5_p)-( x(28) *k_5_p))) );
	
//x(29)   ID: pC3_Apop  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell* x(29) *kc25_p) + (1)*(1)* (compartment_cell*(( x(8) * x(30) *k25_p)-( x(29) *k_25_p))) );
	
//x(30)   ID: Apop  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*(( x(8) * x(30) *k25_p)-( x(29) *k_25_p))) + (-1)*(1)* (compartment_cell*(( x(13) * x(30) *k27_p)-( x(35) *k_27_p))) + (1)*(1)* (compartment_cell* x(29) *kc25_p) + (1)*(1)* (compartment_cell*(( x(55) * x(56) *k24_p)-( x(30) *k_24_p))) );
	
//x(31)   ID: C8_Bid  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell* x(31) *kc10_p) + (1)*(1)* (compartment_cell*(( x(5) * x(10) *k10_p)-( x(31) *k_10_p))) );
	
//x(32)   ID: C3_pC6  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell* x(32) *kc6_p) + (1)*(1)* (compartment_cell*(( x(9) * x(12) *k6_p)-( x(32) *k_6_p))) );
	
//x(33)   ID: XIAP_C3  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell* x(33) *kc8_p) + (1)*(1)* (compartment_cell*(( x(9) * x(13) *k8_p)-( x(33) *k_8_p))) );
	
//x(34)   ID: PARP_C3  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell* x(34) *kc9_p) + (1)*(1)* (compartment_cell*(( x(15) * x(9) *k9_p)-( x(34) *k_9_p))) );
	
//x(35)   ID: Apop_XIAP  initialValue: 0
	(1/compartment_cell)*( (1)*(1)* (compartment_cell*(( x(13) * x(30) *k27_p)-( x(35) *k_27_p))) );
	
//x(36)   ID: Smac_XIAP  initialValue: 0
	(1/compartment_cell)*( (1)*(1)* (compartment_cell*(( x(13) * x(17) *k28_p)-( x(36) *k_28_p))) );
	
//x(37)   ID: Bcl2c_tBid  initialValue: 0
	(1/compartment_cell)*( (1)*(1)* (compartment_cell*(( x(11) * x(18) *k11_p)-( x(37) *k_11_p))) );
	
//x(38)   ID: Bax_tBid  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell* x(38) *kc12_p) + (1)*(1)* (compartment_cell*(( x(11) * x(19) *k12_p)-( x(38) *k_12_p))) );
	
//x(39)   ID: Baxm_Bcl2  initialValue: 0
	(1/compartment_mitochondrion)*( (1)*(1)* (compartment_mitochondrion*((( x(57) * x(21) *k14_p)/v_p)-( x(39) *k_14_p))) );
	
//x(40)   ID: Bax4  initialValue: 0
	(1/compartment_mitochondrion)*( (-1)*(1)* (compartment_mitochondrion*((( x(21) * x(40) *k18_p)/v_p)-( x(42) *k_18_p))) + (-1)*(1)* (compartment_mitochondrion*((( x(40) * x(43) *k19_p)/v_p)-( x(44) *k_19_p))) + (1)*(1)* (compartment_mitochondrion*((( x(58) * x(58) *k17_p)/v_p)-( x(40) *k_17_p))) );
	
//x(41)   ID: Bax2_Bcl2  initialValue: 0
	(1/compartment_mitochondrion)*( (1)*(1)* (compartment_mitochondrion*((( x(21) * x(58) *k16_p)/v_p)-( x(41) *k_16_p))) );
	
//x(42)   ID: Bax4_Bcl2  initialValue: 0
	(1/compartment_mitochondrion)*( (1)*(1)* (compartment_mitochondrion*((( x(21) * x(40) *k18_p)/v_p)-( x(42) *k_18_p))) );
	
//x(43)   ID: M  initialValue: 500000
	(1/compartment_mitochondrion)*( (-1)*(1)* (compartment_mitochondrion*((( x(40) * x(43) *k19_p)/v_p)-( x(44) *k_19_p))) );
	
//x(44)   ID: Bax4_M  initialValue: 0
	(1/compartment_mitochondrion)*( (-1)*(1)* (compartment_mitochondrion* x(44) *kc19_p) + (1)*(1)* (compartment_mitochondrion*((( x(40) * x(43) *k19_p)/v_p)-( x(44) *k_19_p))) );
	
//x(45)   ID: M_hash  initialValue: 0
	(1/compartment_mitochondrion)*( (-1)*(1)* (compartment_mitochondrion*((( x(45) * x(46) *k21_p)/v_p)-( x(47) *k_21_p))) + (-1)*(1)* (compartment_mitochondrion*((( x(45) * x(49) *k20_p)/v_p)-( x(50) *k_20_p))) + (1)*(1)* (compartment_mitochondrion* x(44) *kc19_p) + (1)*(1)* (compartment_mitochondrion* x(47) *kc21_p) + (1)*(1)* (compartment_mitochondrion* x(50) *kc20_p) );
	
//x(46)   ID: Smacm  initialValue: 100000
	(1/compartment_mitochondrion)*( (-1)*(1)* (compartment_mitochondrion*((( x(45) * x(46) *k21_p)/v_p)-( x(47) *k_21_p))) );
	
//x(47)   ID: M_hash_Smacm  initialValue: 0
	(1/compartment_mitochondrion)*( (-1)*(1)* (compartment_mitochondrion* x(47) *kc21_p) + (1)*(1)* (compartment_mitochondrion*((( x(45) * x(46) *k21_p)/v_p)-( x(47) *k_21_p))) );
	
//x(48)   ID: Smacr  initialValue: 0
	(1/compartment_mitochondrion)*( (-1)*(1)* (compartment_cell*(( x(48) *k26_p)-( x(17) *k_26_p))) + (1)*(1)* (compartment_mitochondrion* x(47) *kc21_p) );
	
//x(49)   ID: CytoCm  initialValue: 500000
	(1/compartment_mitochondrion)*( (-1)*(1)* (compartment_mitochondrion*((( x(45) * x(49) *k20_p)/v_p)-( x(50) *k_20_p))) );
	
//x(50)   ID: M_hash_CytoCm  initialValue: 0
	(1/compartment_mitochondrion)*( (-1)*(1)* (compartment_mitochondrion* x(50) *kc20_p) + (1)*(1)* (compartment_mitochondrion*((( x(45) * x(49) *k20_p)/v_p)-( x(50) *k_20_p))) );
	
//x(51)   ID: CytoCr  initialValue: 0
	(1/compartment_mitochondrion)*( (-1)*(1)* (compartment_cell*(( x(51) *k22_p)-( x(52) *k_22_p))) + (1)*(1)* (compartment_mitochondrion* x(50) *kc20_p) );
	
//x(52)   ID: CytoC  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*(( x(52) * x(53) *k23_p)-( x(54) *k_23_p))) + (1)*(1)* (compartment_cell*(( x(51) *k22_p)-( x(52) *k_22_p))) + (1)*(1)* (compartment_cell* x(54) *kc23_p) );
	
//x(53)   ID: Apaf  initialValue: 100000
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*(( x(52) * x(53) *k23_p)-( x(54) *k_23_p))) );
	
//x(54)   ID: CytoC_Apaf  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell* x(54) *kc23_p) + (1)*(1)* (compartment_cell*(( x(52) * x(53) *k23_p)-( x(54) *k_23_p))) );
	
//x(55)   ID: Apaf_hash  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*(( x(55) * x(56) *k24_p)-( x(30) *k_24_p))) + (1)*(1)* (compartment_cell* x(54) *kc23_p) );
	
//x(56)   ID: pC9  initialValue: 100000
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*(( x(55) * x(56) *k24_p)-( x(30) *k_24_p))) );
	
//x(57)   ID: Baxm  initialValue: 0
	(1/compartment_mitochondrion)*( (-1)*(1)* (compartment_mitochondrion*((( x(57) * x(21) *k14_p)/v_p)-( x(39) *k_14_p))) + (-1)*(1)* (compartment_mitochondrion*((( x(57) * x(57) *k15_p)/v_p)-( x(58) *k_15_p))) + (-1)*(1)* (compartment_mitochondrion*((( x(57) * x(57) *k15_p)/v_p)-( x(58) *k_15_p))) + (1)*(1)* (compartment_cell*(( x(20) *k13_p)-( x(57) *k_13_p))) );
	
//x(58)   ID: Bax2  initialValue: 0
	(1/compartment_mitochondrion)*( (-1)*(1)* (compartment_mitochondrion*((( x(58) * x(58) *k17_p)/v_p)-( x(40) *k_17_p))) + (-1)*(1)* (compartment_mitochondrion*((( x(58) * x(58) *k17_p)/v_p)-( x(40) *k_17_p))) + (-1)*(1)* (compartment_mitochondrion*((( x(21) * x(58) *k16_p)/v_p)-( x(41) *k_16_p))) + (1)*(1)* (compartment_mitochondrion*((( x(57) * x(57) *k15_p)/v_p)-( x(58) *k_15_p))) )
	];


	
endfunction
        x0=[3000;200;100;20000;0;0;1000;10000;0;40000;0;10000;100000;0;1000000;0;0;20000;100000;0;20000;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;500000;0;0;100000;0;0;500000;0;0;0;100000;0;0;100000;0;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)' 'x(14)' 'x(15)' 'x(16)' 'x(17)' 'x(18)' 'x(19)' 'x(20)' 'x(21)' 'x(22)' 'x(23)' 'x(24)' 'x(25)' 'x(26)' 'x(27)' 'x(28)' 'x(29)' 'x(30)' 'x(31)' 'x(32)' 'x(33)' 'x(34)' 'x(35)' 'x(36)' 'x(37)' 'x(38)' 'x(39)' 'x(40)' 'x(41)' 'x(42)' 'x(43)' 'x(44)' 'x(45)' 'x(46)' 'x(47)' 'x(48)' 'x(49)' 'x(50)' 'x(51)' 'x(52)' 'x(53)' 'x(54)' 'x(55)' 'x(56)' 'x(57)' 'x(58)'],[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18;19;20;21;22;23;24;25;26;27;28;29;30;31;32;33;34;35;36;37;38;39;40;41;42;43;44;45;46;47;48;49;50;51;52;53;54;55;56;57;58])

//real_variable:
	
	
//x(1)   id: L  initialValue: 3000
	
//x(2)   id: R  initialValue: 200
	
//x(3)   id: flip  initialValue: 100
	
//x(4)   id: pC8  initialValue: 20000
	
//x(5)   id: C8  initialValue: 0
	
//x(6)   id: C6  initialValue: 0
	
//x(7)   id: BAR  initialValue: 1000
	
//x(8)   id: pC3  initialValue: 10000
	
//x(9)   id: C3  initialValue: 0
	
//x(10)   id: Bid  initialValue: 40000
	
//x(11)   id: tBid  initialValue: 0
	
//x(12)   id: pC6  initialValue: 10000
	
//x(13)   id: XIAP  initialValue: 100000
	
//x(14)   id: C3_Ub  initialValue: 0
	
//x(15)   id: PARP  initialValue: 1000000
	
//x(16)   id: CPARP  initialValue: 0
	
//x(17)   id: Smac  initialValue: 0
	
//x(18)   id: Bcl2c  initialValue: 20000
	
//x(19)   id: Bax  initialValue: 100000
	
//x(20)   id: Bax_hash  initialValue: 0
	
//x(21)   id: Bcl2  initialValue: 20000
	
//x(22)   id: L_R  initialValue: 0
	
//x(23)   id: R_hash  initialValue: 0
	
//x(24)   id: flip_R_hash  initialValue: 0
	
//x(25)   id: R_hash_pC8  initialValue: 0
	
//x(26)   id: C6_pC8  initialValue: 0
	
//x(27)   id: BAR_C8  initialValue: 0
	
//x(28)   id: C8_pC3  initialValue: 0
	
//x(29)   id: pC3_Apop  initialValue: 0
	
//x(30)   id: Apop  initialValue: 0
	
//x(31)   id: C8_Bid  initialValue: 0
	
//x(32)   id: C3_pC6  initialValue: 0
	
//x(33)   id: XIAP_C3  initialValue: 0
	
//x(34)   id: PARP_C3  initialValue: 0
	
//x(35)   id: Apop_XIAP  initialValue: 0
	
//x(36)   id: Smac_XIAP  initialValue: 0
	
//x(37)   id: Bcl2c_tBid  initialValue: 0
	
//x(38)   id: Bax_tBid  initialValue: 0
	
//x(39)   id: Baxm_Bcl2  initialValue: 0
	
//x(40)   id: Bax4  initialValue: 0
	
//x(41)   id: Bax2_Bcl2  initialValue: 0
	
//x(42)   id: Bax4_Bcl2  initialValue: 0
	
//x(43)   id: M  initialValue: 500000
	
//x(44)   id: Bax4_M  initialValue: 0
	
//x(45)   id: M_hash  initialValue: 0
	
//x(46)   id: Smacm  initialValue: 100000
	
//x(47)   id: M_hash_Smacm  initialValue: 0
	
//x(48)   id: Smacr  initialValue: 0
	
//x(49)   id: CytoCm  initialValue: 500000
	
//x(50)   id: M_hash_CytoCm  initialValue: 0
	
//x(51)   id: CytoCr  initialValue: 0
	
//x(52)   id: CytoC  initialValue: 0
	
//x(53)   id: Apaf  initialValue: 100000
	
//x(54)   id: CytoC_Apaf  initialValue: 0
	
//x(55)   id: Apaf_hash  initialValue: 0
	
//x(56)   id: pC9  initialValue: 100000
	
//x(57)   id: Baxm  initialValue: 0
	
//x(58)   id: Bax2  initialValue: 0