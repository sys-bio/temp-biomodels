
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_default   id: default
	compartment_default=1;
		
// compartment_c1   id: c1
	compartment_c1=1;
		
// compartment_c5   id: c5
	compartment_c5=1;
		
// kcatp_r8_p   id: kcatp_r8
	kcatp_r8_p=0.5;
		
// kM_r8_s15_p   id: kM_r8_s15
	kM_r8_s15_p=1;
		
// kcatn_r8_p   id: kcatn_r8
	kcatn_r8_p=1.5;
		
// kM_r8_s19_p   id: kM_r8_s19
	kM_r8_s19_p=2;
		
// kM_r8_s63_p   id: kM_r8_s63
	kM_r8_s63_p=1.5;
		
// kcatp_r9_p   id: kcatp_r9
	kcatp_r9_p=1.5;
		
// kM_r9_s7_p   id: kM_r9_s7
	kM_r9_s7_p=1;
		
// kcatn_r9_p   id: kcatn_r9
	kcatn_r9_p=0.04;
		
// kM_r9_s22_p   id: kM_r9_s22
	kM_r9_s22_p=0.05;
		
// kass_r10_p   id: kass_r10
	kass_r10_p=2;
		
// kdiss_r10_p   id: kdiss_r10
	kdiss_r10_p=0.01;
		
// kI_r10_s25_p   id: kI_r10_s25
	kI_r10_s25_p=1;
		
// kcatp_r11_p   id: kcatp_r11
	kcatp_r11_p=0.5;
		
// kM_r11_s32_p   id: kM_r11_s32
	kM_r11_s32_p=1;
		
// kcatn_r11_p   id: kcatn_r11
	kcatn_r11_p=0.5;
		
// kM_r11_s26_p   id: kM_r11_s26
	kM_r11_s26_p=1.5;
		
// kM_r11_s28_p   id: kM_r11_s28
	kM_r11_s28_p=1;
		
// kass_r13_p   id: kass_r13
	kass_r13_p=0.5;
		
// kdiss_r13_p   id: kdiss_r13
	kdiss_r13_p=2;
		
// kcatp_r16_p   id: kcatp_r16
	kcatp_r16_p=1;
		
// kcatn_r16_p   id: kcatn_r16
	kcatn_r16_p=1;
		
// kM_r16_s39_p   id: kM_r16_s39
	kM_r16_s39_p=1;
		
// ki_r16_s39_p   id: ki_r16_s39
	ki_r16_s39_p=1;
		
// kass_r17_p   id: kass_r17
	kass_r17_p=1.5;
		
// kdiss_r17_p   id: kdiss_r17
	kdiss_r17_p=1.5;
		
// kcatp_r18_p   id: kcatp_r18
	kcatp_r18_p=1;
		
// kcatn_r18_p   id: kcatn_r18
	kcatn_r18_p=1.5;
		
// kM_r18_s4_p   id: kM_r18_s4
	kM_r18_s4_p=1;
		
// ki_r18_s4_p   id: ki_r18_s4
	ki_r18_s4_p=1.5;
		
// kass_r21_p   id: kass_r21
	kass_r21_p=1.5;
		
// kdiss_r21_p   id: kdiss_r21
	kdiss_r21_p=1.5;
		
// kI_r21_s2_p   id: kI_r21_s2
	kI_r21_s2_p=1.5;
		
// kcatp_r25_p   id: kcatp_r25
	kcatp_r25_p=1;
		
// kM_r25_s53_p   id: kM_r25_s53
	kM_r25_s53_p=1.5;
		
// kcatn_r25_p   id: kcatn_r25
	kcatn_r25_p=1.5;
		
// kM_r25_s60_p   id: kM_r25_s60
	kM_r25_s60_p=1.25;
		
// kM_r25_s15_p   id: kM_r25_s15
	kM_r25_s15_p=1.5;
		
// kcatp_r26_p   id: kcatp_r26
	kcatp_r26_p=0.5;
		
// kM_r26_s25_p   id: kM_r26_s25
	kM_r26_s25_p=1.7;
		
// kcatn_r26_p   id: kcatn_r26
	kcatn_r26_p=1;
		
// kM_r26_s64_p   id: kM_r26_s64
	kM_r26_s64_p=1.61;
		
// kcatp_r28_p   id: kcatp_r28
	kcatp_r28_p=1.71;
		
// kcatn_r28_p   id: kcatn_r28
	kcatn_r28_p=1.48;
		
// kM_r28_s41_p   id: kM_r28_s41
	kM_r28_s41_p=1.64;
		
// ki_r28_s41_p   id: ki_r28_s41
	ki_r28_s41_p=1.28;
		
// kcatp_r29_p   id: kcatp_r29
	kcatp_r29_p=1.86;
		
// kM_r29_s67_p   id: kM_r29_s67
	kM_r29_s67_p=1.61;
		
// kcatn_r29_p   id: kcatn_r29
	kcatn_r29_p=1.78;
		
// kM_r29_s18_p   id: kM_r29_s18
	kM_r29_s18_p=0.15;
		
// kM_r29_s15_p   id: kM_r29_s15
	kM_r29_s15_p=1.87;
		
// kass_r30_p   id: kass_r30
	kass_r30_p=1.95;
		
// kass_r31_p   id: kass_r31
	kass_r31_p=0.055;
		
// kdiss_r31_p   id: kdiss_r31
	kdiss_r31_p=2;
		
// kass_re16_p   id: kass_re16
	kass_re16_p=0.004;
		
// kdiss_re16_p   id: kdiss_re16
	kdiss_re16_p=2;
		
// kI_re16_s81_p   id: kI_re16_s81
	kI_re16_s81_p=0.00594;
		



xdot=[
//x(1)   ID: s2  initialValue: 5
	0;
	
//x(2)   ID: s4  initialValue: 5
	(1/compartment_default)*( (-1)*(1)* ((((kcatp_r18_p/(ki_r18_s4_p*kM_r18_s4_p))* x(24) * x(21) * x(2) )-((kcatn_r18_p/kM_r18_s4_p)* x(24) * x(23) ))/(( 1 )+( x(21) /ki_r18_s4_p)+( x(2) /ki_r18_s4_p)+(( x(21) * x(2) )/(ki_r18_s4_p*kM_r18_s4_p))+( x(23) /kM_r18_s4_p))) );
	
//x(3)   ID: s7  initialValue: 5
	(1/compartment_default)*( (-1)*(1)* ( x(8) *((((kcatp_r9_p/kM_r9_s7_p)* x(3) )-((kcatn_r9_p/kM_r9_s22_p)* x(7) ))/(( 1 )+( x(3) /kM_r9_s7_p)+( x(7) /kM_r9_s22_p)))) + (-1)*(1)* ((((kcatp_r28_p/(ki_r28_s41_p*kM_r28_s41_p))* x(1) * x(3) * x(23) )-((kcatn_r28_p/kM_r28_s41_p)* x(1) * x(31) ))/(( 1 )+( x(3) /ki_r28_s41_p)+( x(23) /ki_r28_s41_p)+(( x(3) * x(23) )/(ki_r28_s41_p*kM_r28_s41_p))+( x(31) /kM_r28_s41_p))) );
	
//x(4)   ID: s15  initialValue: 5
	(1/compartment_c1)*( (-1)*(1)* ( x(36) *(((kcatp_r8_p*( x(4) /kM_r8_s15_p))-(kcatn_r8_p*( x(5) /kM_r8_s19_p)*( x(28) /kM_r8_s63_p)))/(( x(4) /kM_r8_s15_p)+((( 1 )+( x(5) /kM_r8_s19_p))*(( 1 )+( x(28) /kM_r8_s63_p)))))) + (1)*(1)* ( x(6) *(((kcatp_r25_p*( x(26) /kM_r25_s53_p))-(kcatn_r25_p*( x(27) /kM_r25_s60_p)*( x(4) /kM_r25_s15_p)))/(( x(26) /kM_r25_s53_p)+((( 1 )+( x(27) /kM_r25_s60_p))*(( 1 )+( x(4) /kM_r25_s15_p)))))) + (1)*(1)* ( x(6) *(((kcatp_r29_p*( x(31) /kM_r29_s67_p))-(kcatn_r29_p*( x(22) /kM_r29_s18_p)*( x(4) /kM_r29_s15_p)))/(( x(31) /kM_r29_s67_p)+((( 1 )+( x(22) /kM_r29_s18_p))*(( 1 )+( x(4) /kM_r29_s15_p)))))) );
	
//x(5)   ID: s19  initialValue: 0
	(1/compartment_c1)*( (1)*(1)* ( x(36) *(((kcatp_r8_p*( x(4) /kM_r8_s15_p))-(kcatn_r8_p*( x(5) /kM_r8_s19_p)*( x(28) /kM_r8_s63_p)))/(( x(4) /kM_r8_s15_p)+((( 1 )+( x(5) /kM_r8_s19_p))*(( 1 )+( x(28) /kM_r8_s63_p)))))) );
	
//x(6)   ID: s21  initialValue: 0.5
	0;
	
//x(7)   ID: s22  initialValue: 0
	(1/compartment_default)*( (1)*(1)* ( x(8) *((((kcatp_r9_p/kM_r9_s7_p)* x(3) )-((kcatn_r9_p/kM_r9_s22_p)* x(7) ))/(( 1 )+( x(3) /kM_r9_s7_p)+( x(7) /kM_r9_s22_p)))) );
	
//x(8)   ID: s23  initialValue: 0.5
	0;
	
//x(9)   ID: s25  initialValue: 0.64
	(1/compartment_c1)*( (-1)*(1)* ( x(30) *((((kcatp_r26_p/kM_r26_s25_p)* x(9) )-((kcatn_r26_p/kM_r26_s64_p)* x(29) ))/(( 1 )+( x(9) /kM_r26_s25_p)+( x(29) /kM_r26_s64_p)))) );
	
//x(10)   ID: s27  initialValue: 0.5
	(1/compartment_c5)*( (-1)*(1)* ((kass_r13_p* x(15) * x(11) * x(10) * x(14) )-(kdiss_r13_p* x(16) )) );
	
//x(11)   ID: s26  initialValue: 5
	(1/compartment_c5)*( (-1)*(1)* ((kass_r13_p* x(15) * x(11) * x(10) * x(14) )-(kdiss_r13_p* x(16) )) + (1)*(1)* ( x(15) *(((kcatp_r11_p*( x(13) /kM_r11_s32_p))-(kcatn_r11_p*( x(11) /kM_r11_s26_p)*( x(12) /kM_r11_s28_p)))/(( x(13) /kM_r11_s32_p)+((( 1 )+( x(11) /kM_r11_s26_p))*(( 1 )+( x(12) /kM_r11_s28_p)))))) );
	
//x(12)   ID: s28  initialValue: 5
	(1/compartment_c5)*( (1)*(1)* ( x(15) *(((kcatp_r11_p*( x(13) /kM_r11_s32_p))-(kcatn_r11_p*( x(11) /kM_r11_s26_p)*( x(12) /kM_r11_s28_p)))/(( x(13) /kM_r11_s32_p)+((( 1 )+( x(11) /kM_r11_s26_p))*(( 1 )+( x(12) /kM_r11_s28_p)))))) );
	
//x(13)   ID: s32  initialValue: 0
	(1/compartment_c5)*( (-1)*(1)* (kass_r30_p* x(13) ) + (-1)*(1)* ( x(15) *(((kcatp_r11_p*( x(13) /kM_r11_s32_p))-(kcatn_r11_p*( x(11) /kM_r11_s26_p)*( x(12) /kM_r11_s28_p)))/(( x(13) /kM_r11_s32_p)+((( 1 )+( x(11) /kM_r11_s26_p))*(( 1 )+( x(12) /kM_r11_s28_p)))))) );
	
//x(14)   ID: s29  initialValue: 0.5
	(1/compartment_c5)*( (-1)*(1)* ((kass_r13_p* x(15) * x(11) * x(10) * x(14) )-(kdiss_r13_p* x(16) )) );
	
//x(15)   ID: s24  initialValue: 0
	(1/compartment_c5)*( (-1)*(1)* ((kass_r13_p* x(15) * x(11) * x(10) * x(14) )-(kdiss_r13_p* x(16) )) + (-1)*(1)* ((((kcatp_r16_p/(ki_r16_s39_p*kM_r16_s39_p))* x(18) * x(15) * x(19) )-((kcatn_r16_p/kM_r16_s39_p)* x(18) * x(17) ))/(( 1 )+( x(15) /ki_r16_s39_p)+( x(19) /ki_r16_s39_p)+(( x(15) * x(19) )/(ki_r16_s39_p*kM_r16_s39_p))+( x(17) /kM_r16_s39_p))) + (1)*(1)* ((kI_r10_s25_p/(kI_r10_s25_p+ x(9) ))*((kass_r10_p* x(28) )-(kdiss_r10_p* x(15) ))) );
	
//x(16)   ID: s35  initialValue: 0
	(1/compartment_c5)*( (-1)*(1)* ((kass_r31_p* x(16) )-(kdiss_r31_p* x(32) )) + (1)*(1)* ((kass_r13_p* x(15) * x(11) * x(10) * x(14) )-(kdiss_r13_p* x(16) )) );
	
//x(17)   ID: s37  initialValue: 0
	(1/compartment_c5)*( (-1)*(1)* ((kass_r17_p* x(17) )-(kdiss_r17_p* x(20) )) + (1)*(1)* ((((kcatp_r16_p/(ki_r16_s39_p*kM_r16_s39_p))* x(18) * x(15) * x(19) )-((kcatn_r16_p/kM_r16_s39_p)* x(18) * x(17) ))/(( 1 )+( x(15) /ki_r16_s39_p)+( x(19) /ki_r16_s39_p)+(( x(15) * x(19) )/(ki_r16_s39_p*kM_r16_s39_p))+( x(17) /kM_r16_s39_p))) );
	
//x(18)   ID: s38  initialValue: 0.6
	0;
	
//x(19)   ID: s39  initialValue: 0.5
	(1/compartment_c5)*( (-1)*(1)* ((((kcatp_r16_p/(ki_r16_s39_p*kM_r16_s39_p))* x(18) * x(15) * x(19) )-((kcatn_r16_p/kM_r16_s39_p)* x(18) * x(17) ))/(( 1 )+( x(15) /ki_r16_s39_p)+( x(19) /ki_r16_s39_p)+(( x(15) * x(19) )/(ki_r16_s39_p*kM_r16_s39_p))+( x(17) /kM_r16_s39_p))) );
	
//x(20)   ID: s40  initialValue: 0
	(1/compartment_c5)*( (1)*(1)* ((kass_r17_p* x(17) )-(kdiss_r17_p* x(20) )) );
	
//x(21)   ID: s1  initialValue: 5
	(1/compartment_c1)*( (-1)*(1)* ((((kcatp_r18_p/(ki_r18_s4_p*kM_r18_s4_p))* x(24) * x(21) * x(2) )-((kcatn_r18_p/kM_r18_s4_p)* x(24) * x(23) ))/(( 1 )+( x(21) /ki_r18_s4_p)+( x(2) /ki_r18_s4_p)+(( x(21) * x(2) )/(ki_r18_s4_p*kM_r18_s4_p))+( x(23) /kM_r18_s4_p))) );
	
//x(22)   ID: s18  initialValue: 0
	(1/compartment_default)*( (1)*(1)* ( x(6) *(((kcatp_r29_p*( x(31) /kM_r29_s67_p))-(kcatn_r29_p*( x(22) /kM_r29_s18_p)*( x(4) /kM_r29_s15_p)))/(( x(31) /kM_r29_s67_p)+((( 1 )+( x(22) /kM_r29_s18_p))*(( 1 )+( x(4) /kM_r29_s15_p)))))) );
	
//x(23)   ID: s41  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* ((kI_r21_s2_p/(kI_r21_s2_p+ x(1) ))*((kass_r21_p* x(23) * x(25) )-(kdiss_r21_p* x(26) ))) + (-1)*(1)* ((((kcatp_r28_p/(ki_r28_s41_p*kM_r28_s41_p))* x(1) * x(3) * x(23) )-((kcatn_r28_p/kM_r28_s41_p)* x(1) * x(31) ))/(( 1 )+( x(3) /ki_r28_s41_p)+( x(23) /ki_r28_s41_p)+(( x(3) * x(23) )/(ki_r28_s41_p*kM_r28_s41_p))+( x(31) /kM_r28_s41_p))) + (1)*(1)* ((((kcatp_r18_p/(ki_r18_s4_p*kM_r18_s4_p))* x(24) * x(21) * x(2) )-((kcatn_r18_p/kM_r18_s4_p)* x(24) * x(23) ))/(( 1 )+( x(21) /ki_r18_s4_p)+( x(2) /ki_r18_s4_p)+(( x(21) * x(2) )/(ki_r18_s4_p*kM_r18_s4_p))+( x(23) /kM_r18_s4_p))) );
	
//x(24)   ID: s42  initialValue: 5
	0;
	
//x(25)   ID: s48  initialValue: 5
	(1/compartment_default)*( (-1)*(1)* ((kI_r21_s2_p/(kI_r21_s2_p+ x(1) ))*((kass_r21_p* x(23) * x(25) )-(kdiss_r21_p* x(26) ))) );
	
//x(26)   ID: s53  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* ( x(6) *(((kcatp_r25_p*( x(26) /kM_r25_s53_p))-(kcatn_r25_p*( x(27) /kM_r25_s60_p)*( x(4) /kM_r25_s15_p)))/(( x(26) /kM_r25_s53_p)+((( 1 )+( x(27) /kM_r25_s60_p))*(( 1 )+( x(4) /kM_r25_s15_p)))))) + (1)*(1)* ((kI_r21_s2_p/(kI_r21_s2_p+ x(1) ))*((kass_r21_p* x(23) * x(25) )-(kdiss_r21_p* x(26) ))) );
	
//x(27)   ID: s60  initialValue: 0
	(1/compartment_default)*( (1)*(1)* ( x(6) *(((kcatp_r25_p*( x(26) /kM_r25_s53_p))-(kcatn_r25_p*( x(27) /kM_r25_s60_p)*( x(4) /kM_r25_s15_p)))/(( x(26) /kM_r25_s53_p)+((( 1 )+( x(27) /kM_r25_s60_p))*(( 1 )+( x(4) /kM_r25_s15_p)))))) );
	
//x(28)   ID: s63  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* ((kI_r10_s25_p/(kI_r10_s25_p+ x(9) ))*((kass_r10_p* x(28) )-(kdiss_r10_p* x(15) ))) + (1)*(1)* ( x(36) *(((kcatp_r8_p*( x(4) /kM_r8_s15_p))-(kcatn_r8_p*( x(5) /kM_r8_s19_p)*( x(28) /kM_r8_s63_p)))/(( x(4) /kM_r8_s15_p)+((( 1 )+( x(5) /kM_r8_s19_p))*(( 1 )+( x(28) /kM_r8_s63_p)))))) );
	
//x(29)   ID: s64  initialValue: 0
	(1/compartment_c1)*( (1)*(1)* ( x(30) *((((kcatp_r26_p/kM_r26_s25_p)* x(9) )-((kcatn_r26_p/kM_r26_s64_p)* x(29) ))/(( 1 )+( x(9) /kM_r26_s25_p)+( x(29) /kM_r26_s64_p)))) );
	
//x(30)   ID: s65  initialValue: 0.33
	0;
	
//x(31)   ID: s67  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* ( x(6) *(((kcatp_r29_p*( x(31) /kM_r29_s67_p))-(kcatn_r29_p*( x(22) /kM_r29_s18_p)*( x(4) /kM_r29_s15_p)))/(( x(31) /kM_r29_s67_p)+((( 1 )+( x(22) /kM_r29_s18_p))*(( 1 )+( x(4) /kM_r29_s15_p)))))) + (1)*(1)* ((((kcatp_r28_p/(ki_r28_s41_p*kM_r28_s41_p))* x(1) * x(3) * x(23) )-((kcatn_r28_p/kM_r28_s41_p)* x(1) * x(31) ))/(( 1 )+( x(3) /ki_r28_s41_p)+( x(23) /ki_r28_s41_p)+(( x(3) * x(23) )/(ki_r28_s41_p*kM_r28_s41_p))+( x(31) /kM_r28_s41_p))) );
	
//x(32)   ID: s75  initialValue: 0
	(1/compartment_c5)*( (1)*(1)* (kass_r30_p* x(13) ) + (1)*(1)* ((kass_r31_p* x(16) )-(kdiss_r31_p* x(32) )) );
	
//x(33)   ID: s76  initialValue: 5
	(1/compartment_default)*( (-1)*(1)* ((kI_re16_s81_p/(kI_re16_s81_p+ x(35) ))*((kass_re16_p* x(33) * x(34) )-(kdiss_re16_p* x(36) ))) );
	
//x(34)   ID: s77  initialValue: 5
	(1/compartment_default)*( (-1)*(1)* ((kI_re16_s81_p/(kI_re16_s81_p+ x(35) ))*((kass_re16_p* x(33) * x(34) )-(kdiss_re16_p* x(36) ))) );
	
//x(35)   ID: s81  initialValue: 0
	0;
	
//x(36)   ID: s82  initialValue: 0
	(1/compartment_default)*( (1)*(1)* ((kI_re16_s81_p/(kI_re16_s81_p+ x(35) ))*((kass_re16_p* x(33) * x(34) )-(kdiss_re16_p* x(36) ))) )
	];


	
endfunction
        x0=[5;5;5;5;0;0.5;0;0.5;0.64;0.5;5;5;0;0.5;0;0;0;0.6;0.5;0;5;0;0;5;5;0;0;0;0;0.33;0;0;5;5;0;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)' 'x(14)' 'x(15)' 'x(16)' 'x(17)' 'x(18)' 'x(19)' 'x(20)' 'x(21)' 'x(22)' 'x(23)' 'x(24)' 'x(25)' 'x(26)' 'x(27)' 'x(28)' 'x(29)' 'x(30)' 'x(31)' 'x(32)' 'x(33)' 'x(34)' 'x(35)' 'x(36)'],[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18;19;20;21;22;23;24;25;26;27;28;29;30;31;32;33;34;35;36])

//real_variable:
	
	
//x(1)   id: s2  initialValue: 5
	
//x(2)   id: s4  initialValue: 5
	
//x(3)   id: s7  initialValue: 5
	
//x(4)   id: s15  initialValue: 5
	
//x(5)   id: s19  initialValue: 0
	
//x(6)   id: s21  initialValue: 0.5
	
//x(7)   id: s22  initialValue: 0
	
//x(8)   id: s23  initialValue: 0.5
	
//x(9)   id: s25  initialValue: 0.64
	
//x(10)   id: s27  initialValue: 0.5
	
//x(11)   id: s26  initialValue: 5
	
//x(12)   id: s28  initialValue: 5
	
//x(13)   id: s32  initialValue: 0
	
//x(14)   id: s29  initialValue: 0.5
	
//x(15)   id: s24  initialValue: 0
	
//x(16)   id: s35  initialValue: 0
	
//x(17)   id: s37  initialValue: 0
	
//x(18)   id: s38  initialValue: 0.6
	
//x(19)   id: s39  initialValue: 0.5
	
//x(20)   id: s40  initialValue: 0
	
//x(21)   id: s1  initialValue: 5
	
//x(22)   id: s18  initialValue: 0
	
//x(23)   id: s41  initialValue: 0
	
//x(24)   id: s42  initialValue: 5
	
//x(25)   id: s48  initialValue: 5
	
//x(26)   id: s53  initialValue: 0
	
//x(27)   id: s60  initialValue: 0
	
//x(28)   id: s63  initialValue: 0
	
//x(29)   id: s64  initialValue: 0
	
//x(30)   id: s65  initialValue: 0.33
	
//x(31)   id: s67  initialValue: 0
	
//x(32)   id: s75  initialValue: 0
	
//x(33)   id: s76  initialValue: 5
	
//x(34)   id: s77  initialValue: 5
	
//x(35)   id: s81  initialValue: 0
	
//x(36)   id: s82  initialValue: 0