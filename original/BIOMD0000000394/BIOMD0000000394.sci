
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_default   id: default
	compartment_default=1;
		
// compartment_c2   id: c2
	compartment_c2=1;
		
// kcatp_r8_s124_p   id: kcatp_r8_s124
	kcatp_r8_s124_p=0.511;
		
// kM_r8_s124_s23_p   id: kM_r8_s124_s23
	kM_r8_s124_s23_p=0.47;
		
// kcatn_r8_s124_p   id: kcatn_r8_s124
	kcatn_r8_s124_p=1.083;
		
// kM_r8_s124_s24_p   id: kM_r8_s124_s24
	kM_r8_s124_s24_p=0.786;
		
// kcatp_r8_s31_p   id: kcatp_r8_s31
	kcatp_r8_s31_p=0.727;
		
// kM_r8_s31_s23_p   id: kM_r8_s31_s23
	kM_r8_s31_s23_p=0.614;
		
// kcatn_r8_s31_p   id: kcatn_r8_s31
	kcatn_r8_s31_p=0.636;
		
// kM_r8_s31_s24_p   id: kM_r8_s31_s24
	kM_r8_s31_s24_p=1.367;
		
// kI_r8_s22_p   id: kI_r8_s22
	kI_r8_s22_p=0.583;
		
// kI_r8_s29_p   id: kI_r8_s29
	kI_r8_s29_p=1.219;
		
// kI_r8_s33_p   id: kI_r8_s33
	kI_r8_s33_p=0.293;
		
// kcatp_r9_p   id: kcatp_r9
	kcatp_r9_p=2;
		
// kM_r9_s25_p   id: kM_r9_s25
	kM_r9_s25_p=0.626;
		
// kcatn_r9_p   id: kcatn_r9
	kcatn_r9_p=0.693;
		
// kM_r9_s26_p   id: kM_r9_s26
	kM_r9_s26_p=0.463;
		
// kcatp_r11_p   id: kcatp_r11
	kcatp_r11_p=0.787;
		
// kM_r11_s29_p   id: kM_r11_s29
	kM_r11_s29_p=1.459;
		
// kcatn_r11_p   id: kcatn_r11
	kcatn_r11_p=0.566;
		
// kM_r11_s30_p   id: kM_r11_s30
	kM_r11_s30_p=1.021;
		
// kcatp_r14_p   id: kcatp_r14
	kcatp_r14_p=0.558;
		
// kM_r14_s27_p   id: kM_r14_s27
	kM_r14_s27_p=0.038;
		
// kcatn_r14_p   id: kcatn_r14
	kcatn_r14_p=0.725;
		
// kM_r14_s28_p   id: kM_r14_s28
	kM_r14_s28_p=1.65;
		
// kass_r15_p   id: kass_r15
	kass_r15_p=2;
		
// kdiss_r15_p   id: kdiss_r15
	kdiss_r15_p=0.074;
		
// kass_r17_s3_p   id: kass_r17_s3
	kass_r17_s3_p=0.73;
		
// kdiss_r17_s3_p   id: kdiss_r17_s3
	kdiss_r17_s3_p=1.13;
		
// kI_re11_s142_p   id: kI_re11_s142
	kI_re11_s142_p=1;
		
// kass_r6_s144_p   id: kass_r6_s144
	kass_r6_s144_p=1;
		
// kdiss_r6_s144_p   id: kdiss_r6_s144
	kdiss_r6_s144_p=1;
		
// kass_r7_s144_p   id: kass_r7_s144
	kass_r7_s144_p=1;
		
// kdiss_r7_s144_p   id: kdiss_r7_s144
	kdiss_r7_s144_p=1;
		
// kass_r4_s144_p   id: kass_r4_s144
	kass_r4_s144_p=1;
		
// kdiss_r4_s144_p   id: kdiss_r4_s144
	kdiss_r4_s144_p=1;
		
// Vp_re11_p   id: Vp_re11
	Vp_re11_p=1;
		
// kM_re11_s129_p   id: kM_re11_s129
	kM_re11_s129_p=1;
		
// kM_re11_s147_p   id: kM_re11_s147
	kM_re11_s147_p=1;
		
// ki_re11_s129_p   id: ki_re11_s129
	ki_re11_s129_p=1;
		



xdot=[
//x(1)   ID: s21  initialValue: 5
	(1/compartment_c2)*( (-1)*(1)* ( x(22) *((kass_r7_s144_p* x(1) )-(kdiss_r7_s144_p* x(2) ))) );
	
//x(2)   ID: s22  initialValue: 0
	(1/compartment_c2)*( (1)*(1)* ( x(22) *((kass_r7_s144_p* x(1) )-(kdiss_r7_s144_p* x(2) ))) );
	
//x(3)   ID: s25  initialValue: 5
	(1/compartment_c2)*( (-1)*(1)* ( x(13) *((((kcatp_r9_p/kM_r9_s25_p)* x(3) )-((kcatn_r9_p/kM_r9_s26_p)* x(4) ))/(( 1 )+( x(3) /kM_r9_s25_p)+( x(4) /kM_r9_s26_p)))) );
	
//x(4)   ID: s26  initialValue: 0
	(1/compartment_c2)*( (1)*(1)* ( x(13) *((((kcatp_r9_p/kM_r9_s25_p)* x(3) )-((kcatn_r9_p/kM_r9_s26_p)* x(4) ))/(( 1 )+( x(3) /kM_r9_s25_p)+( x(4) /kM_r9_s26_p)))) );
	
//x(5)   ID: s27  initialValue: 5
	(1/compartment_c2)*( (-1)*(1)* ( x(4) *((((kcatp_r14_p/kM_r14_s27_p)* x(5) )-((kcatn_r14_p/kM_r14_s28_p)* x(6) ))/(( 1 )+( x(5) /kM_r14_s27_p)+( x(6) /kM_r14_s28_p)))) );
	
//x(6)   ID: s28  initialValue: 0
	(1/compartment_c2)*( (-1)*(1)* ((kass_r15_p* x(6) )-(kdiss_r15_p* x(11) )) + (1)*(1)* ( x(4) *((((kcatp_r14_p/kM_r14_s27_p)* x(5) )-((kcatn_r14_p/kM_r14_s28_p)* x(6) ))/(( 1 )+( x(5) /kM_r14_s27_p)+( x(6) /kM_r14_s28_p)))) );
	
//x(7)   ID: s29  initialValue: 5
	(1/compartment_c2)*( (-1)*(1)* ( x(19) *((((kcatp_r11_p/kM_r11_s29_p)* x(7) )-((kcatn_r11_p/kM_r11_s30_p)* x(8) ))/(( 1 )+( x(7) /kM_r11_s29_p)+( x(8) /kM_r11_s30_p)))) );
	
//x(8)   ID: s30  initialValue: 0
	(1/compartment_c2)*( (1)*(1)* ( x(19) *((((kcatp_r11_p/kM_r11_s29_p)* x(7) )-((kcatn_r11_p/kM_r11_s30_p)* x(8) ))/(( 1 )+( x(7) /kM_r11_s29_p)+( x(8) /kM_r11_s30_p)))) );
	
//x(9)   ID: s31  initialValue: 5
	0;
	
//x(10)   ID: s33  initialValue: 5
	0;
	
//x(11)   ID: s34  initialValue: 1
	(1/compartment_c2)*( (1)*(1)* ((kass_r15_p* x(6) )-(kdiss_r15_p* x(11) )) );
	
//x(12)   ID: s23  initialValue: 5
	(1/compartment_c2)*( (-1)*(1)* ((kI_r8_s22_p/(kI_r8_s22_p+ x(2) ))*(kI_r8_s29_p/(kI_r8_s29_p+ x(7) ))*(kI_r8_s33_p/(kI_r8_s33_p+ x(10) ))*(( x(16) *((((kcatp_r8_s124_p/kM_r8_s124_s23_p)* x(12) )-((kcatn_r8_s124_p/kM_r8_s124_s24_p)* x(13) ))/(( 1 )+( x(12) /kM_r8_s124_s23_p)+( x(13) /kM_r8_s124_s24_p))))+( x(9) *((((kcatp_r8_s31_p/kM_r8_s31_s23_p)* x(12) )-((kcatn_r8_s31_p/kM_r8_s31_s24_p)* x(13) ))/(( 1 )+( x(12) /kM_r8_s31_s23_p)+( x(13) /kM_r8_s31_s24_p)))))) );
	
//x(13)   ID: s24  initialValue: 0
	(1/compartment_c2)*( (1)*(1)* ((kI_r8_s22_p/(kI_r8_s22_p+ x(2) ))*(kI_r8_s29_p/(kI_r8_s29_p+ x(7) ))*(kI_r8_s33_p/(kI_r8_s33_p+ x(10) ))*(( x(16) *((((kcatp_r8_s124_p/kM_r8_s124_s23_p)* x(12) )-((kcatn_r8_s124_p/kM_r8_s124_s24_p)* x(13) ))/(( 1 )+( x(12) /kM_r8_s124_s23_p)+( x(13) /kM_r8_s124_s24_p))))+( x(9) *((((kcatp_r8_s31_p/kM_r8_s31_s23_p)* x(12) )-((kcatn_r8_s31_p/kM_r8_s31_s24_p)* x(13) ))/(( 1 )+( x(12) /kM_r8_s31_s23_p)+( x(13) /kM_r8_s31_s24_p)))))) );
	
//x(14)   ID: s3  initialValue: 5
	0;
	
//x(15)   ID: s123  initialValue: 5
	(1/compartment_c2)*( (-1)*(2)* ( x(14) *((kass_r17_s3_p*(power( x(15) ,( 2 ))))-(kdiss_r17_s3_p* x(20) ))) );
	
//x(16)   ID: s124  initialValue: 5
	(1/compartment_c2)*( (-1)*(1)* ( x(22) *((kass_r4_s144_p* x(16) * x(17) )-(kdiss_r4_s144_p* x(16) * x(18) ))) + (1)*(1)* ( x(22) *((kass_r4_s144_p* x(16) * x(17) )-(kdiss_r4_s144_p* x(16) * x(18) ))) );
	
//x(17)   ID: s125  initialValue: 0.5
	(1/compartment_c2)*( (-1)*(1)* ( x(22) *((kass_r4_s144_p* x(16) * x(17) )-(kdiss_r4_s144_p* x(16) * x(18) ))) );
	
//x(18)   ID: s126  initialValue: 0
	(1/compartment_c2)*( (1)*(1)* ( x(22) *((kass_r4_s144_p* x(16) * x(17) )-(kdiss_r4_s144_p* x(16) * x(18) ))) );
	
//x(19)   ID: s127  initialValue: 2
	(1/compartment_c2)*( (-1)*(1)* ( x(22) *((kass_r6_s144_p* x(19) )-(kdiss_r6_s144_p* x(19) ))) + (1)*(1)* ( x(22) *((kass_r6_s144_p* x(19) )-(kdiss_r6_s144_p* x(19) ))) );
	
//x(20)   ID: s129  initialValue: 0
	(1/compartment_c2)*( (-1)*(1)* ((kI_re11_s142_p/(kI_re11_s142_p+ x(21) ))*((Vp_re11_p* x(20) * x(23) )/((ki_re11_s129_p*kM_re11_s147_p)+(kM_re11_s147_p* x(20) )+(kM_re11_s129_p* x(23) )+( x(20) * x(23) )))) + (1)*(1)* ( x(14) *((kass_r17_s3_p*(power( x(15) ,( 2 ))))-(kdiss_r17_s3_p* x(20) ))) );
	
//x(21)   ID: s142  initialValue: 0.5
	0;
	
//x(22)   ID: s144  initialValue: 0
	(1/compartment_c2)*( (1)*(1)* ((kI_re11_s142_p/(kI_re11_s142_p+ x(21) ))*((Vp_re11_p* x(20) * x(23) )/((ki_re11_s129_p*kM_re11_s147_p)+(kM_re11_s147_p* x(20) )+(kM_re11_s129_p* x(23) )+( x(20) * x(23) )))) );
	
//x(23)   ID: s147  initialValue: 5
	(1/compartment_c2)*( (-1)*(1)* ((kI_re11_s142_p/(kI_re11_s142_p+ x(21) ))*((Vp_re11_p* x(20) * x(23) )/((ki_re11_s129_p*kM_re11_s147_p)+(kM_re11_s147_p* x(20) )+(kM_re11_s129_p* x(23) )+( x(20) * x(23) )))) )
	];


	
endfunction
        x0=[5;0;5;0;5;0;5;0;5;5;1;5;0;5;5;5;0.5;0;2;0;0.5;0;5];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)' 'x(14)' 'x(15)' 'x(16)' 'x(17)' 'x(18)' 'x(19)' 'x(20)' 'x(21)' 'x(22)' 'x(23)'],[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18;19;20;21;22;23])

//real_variable:
	
	
//x(1)   id: s21  initialValue: 5
	
//x(2)   id: s22  initialValue: 0
	
//x(3)   id: s25  initialValue: 5
	
//x(4)   id: s26  initialValue: 0
	
//x(5)   id: s27  initialValue: 5
	
//x(6)   id: s28  initialValue: 0
	
//x(7)   id: s29  initialValue: 5
	
//x(8)   id: s30  initialValue: 0
	
//x(9)   id: s31  initialValue: 5
	
//x(10)   id: s33  initialValue: 5
	
//x(11)   id: s34  initialValue: 1
	
//x(12)   id: s23  initialValue: 5
	
//x(13)   id: s24  initialValue: 0
	
//x(14)   id: s3  initialValue: 5
	
//x(15)   id: s123  initialValue: 5
	
//x(16)   id: s124  initialValue: 5
	
//x(17)   id: s125  initialValue: 0.5
	
//x(18)   id: s126  initialValue: 0
	
//x(19)   id: s127  initialValue: 2
	
//x(20)   id: s129  initialValue: 0
	
//x(21)   id: s142  initialValue: 0.5
	
//x(22)   id: s144  initialValue: 0
	
//x(23)   id: s147  initialValue: 5