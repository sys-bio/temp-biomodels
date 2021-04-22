
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_default   id: default
	compartment_default=1;
		
// compartment_c1   id: c1
	compartment_c1=1;
		
// compartment_c4   id: c4
	compartment_c4=1;
		
// compartment_c5   id: c5
	compartment_c5=1;
		
// kass_r7_p   id: kass_r7
	kass_r7_p=1.13;
		
// kdiss_r7_p   id: kdiss_r7
	kdiss_r7_p=1.122;
		
// kcatp_r14_p   id: kcatp_r14
	kcatp_r14_p=1.146;
		
// kM_r14_s69_p   id: kM_r14_s69
	kM_r14_s69_p=1.03;
		
// kcatn_r14_p   id: kcatn_r14
	kcatn_r14_p=1.75;
		
// kM_r14_s46_p   id: kM_r14_s46
	kM_r14_s46_p=0.215;
		
// kass_r25_p   id: kass_r25
	kass_r25_p=1.27;
		
// kdiss_r25_p   id: kdiss_r25
	kdiss_r25_p=0.73;
		
// kass_r26_p   id: kass_r26
	kass_r26_p=1.33;
		
// kdiss_r26_p   id: kdiss_r26
	kdiss_r26_p=0.61;
		
// kass_r51_p   id: kass_r51
	kass_r51_p=1.23;
		
// kdiss_r51_p   id: kdiss_r51
	kdiss_r51_p=0.46;
		
// kass_r52_p   id: kass_r52
	kass_r52_p=0.6;
		
// kdiss_r52_p   id: kdiss_r52
	kdiss_r52_p=1.67;
		
// kcatp_r53_p   id: kcatp_r53
	kcatp_r53_p=1.29;
		
// kM_r53_s70_p   id: kM_r53_s70
	kM_r53_s70_p=0.79;
		
// kcatn_r53_p   id: kcatn_r53
	kcatn_r53_p=1.62;
		
// kass_r54_p   id: kass_r54
	kass_r54_p=1.28;
		
// kdiss_r54_p   id: kdiss_r54
	kdiss_r54_p=0.71;
		
// kass_r55_p   id: kass_r55
	kass_r55_p=1.56;
		
// kass_r15_s21_p   id: kass_r15_s21
	kass_r15_s21_p=1.53;
		
// kdiss_r15_s21_p   id: kdiss_r15_s21
	kdiss_r15_s21_p=0.89;
		
// kass_re24_s157_p   id: kass_re24_s157
	kass_re24_s157_p=1;
		
// kass_r23_s21_p   id: kass_r23_s21
	kass_r23_s21_p=1;
		
// kdiss_r23_s21_p   id: kdiss_r23_s21
	kdiss_r23_s21_p=1;
		



xdot=[
//x(1)   ID: s9  initialValue: 2
	(1/compartment_c1)*( (-1)*(1)* ( x(7) *((kass_r15_s21_p* x(8) * x(1) )-(kdiss_r15_s21_p* x(9) * x(2) ))) );
	
//x(2)   ID: s10  initialValue: 0
	(1/compartment_c1)*( (1)*(1)* ( x(7) *((kass_r15_s21_p* x(8) * x(1) )-(kdiss_r15_s21_p* x(9) * x(2) ))) );
	
//x(3)   ID: s1  initialValue: 5
	(1/compartment_c1)*( (-1)*(1)* ((kass_r7_p* x(6) * x(3) )-(kdiss_r7_p* x(7) )) );
	
//x(4)   ID: s75  initialValue: 0
	(1/compartment_c5)*( (1)*(1)* ((kass_r52_p* x(15) )-(kdiss_r52_p* x(4) )) + (1)*(1)* (kass_r55_p* x(20) ) );
	
//x(5)   ID: s135  initialValue: 2.5
	(1/compartment_c5)*( (-1)*(1)* ((kass_r51_p* x(5) * x(14) )-(kdiss_r51_p* x(15) )) );
	
//x(6)   ID: s7  initialValue: 5
	(1/compartment_default)*( (-1)*(1)* ((kass_r7_p* x(6) * x(3) )-(kdiss_r7_p* x(7) )) );
	
//x(7)   ID: s21  initialValue: 0
	(1/compartment_c1)*( (1)*(1)* ((kass_r7_p* x(6) * x(3) )-(kdiss_r7_p* x(7) )) );
	
//x(8)   ID: s46  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* ( x(7) *((kass_r15_s21_p* x(8) * x(1) )-(kdiss_r15_s21_p* x(9) * x(2) ))) + (1)*(1)* ( x(7) *((((kcatp_r14_p/kM_r14_s69_p)* x(10) )-((kcatn_r14_p/kM_r14_s46_p)* x(8) ))/(( 1 )+( x(10) /kM_r14_s69_p)+( x(8) /kM_r14_s46_p)))) );
	
//x(9)   ID: s48  initialValue: 0
	(1/compartment_c1)*( (1)*(1)* ( x(7) *((kass_r15_s21_p* x(8) * x(1) )-(kdiss_r15_s21_p* x(9) * x(2) ))) );
	
//x(10)   ID: s69  initialValue: 0
	(1/compartment_c4)*( (-1)*(1)* ( x(7) *((((kcatp_r14_p/kM_r14_s69_p)* x(10) )-((kcatn_r14_p/kM_r14_s46_p)* x(8) ))/(( 1 )+( x(10) /kM_r14_s69_p)+( x(8) /kM_r14_s46_p)))) + (1)*(1)* ((kass_r25_p* x(22) )-(kdiss_r25_p* x(23) * x(10) )) );
	
//x(11)   ID: s71  initialValue: 2
	(1/compartment_c5)*( (-1)*(1)* ((kass_r54_p* x(13) * x(11) )-(kdiss_r54_p* x(20) )) );
	
//x(12)   ID: s68  initialValue: 0
	(1/compartment_c1)*( (1)*(1)* ( x(7) *((kass_r23_s21_p* x(21) )-(kdiss_r23_s21_p* x(12) * x(22) ))) );
	
//x(13)   ID: s70  initialValue: 0
	(1/compartment_c5)*( (-1)*(1)* ( x(9) *((((kcatp_r53_p/kM_r53_s70_p)* x(13) )-((kcatn_r53_p/kM_r53_s70_p)* x(13) ))/(( 1 )+( x(13) /kM_r53_s70_p)+( x(13) /kM_r53_s70_p)))) + (-1)*(1)* ((kass_r54_p* x(13) * x(11) )-(kdiss_r54_p* x(20) )) + (1)*(1)* ( x(9) *((((kcatp_r53_p/kM_r53_s70_p)* x(13) )-((kcatn_r53_p/kM_r53_s70_p)* x(13) ))/(( 1 )+( x(13) /kM_r53_s70_p)+( x(13) /kM_r53_s70_p)))) + (1)*(1)* ((kass_r26_p* x(23) )-(kdiss_r26_p* x(13) )) );
	
//x(14)   ID: s128  initialValue: 2.5
	(1/compartment_c5)*( (-1)*(1)* ((kass_r51_p* x(5) * x(14) )-(kdiss_r51_p* x(15) )) );
	
//x(15)   ID: s140  initialValue: 0
	(1/compartment_c5)*( (-1)*(1)* ((kass_r52_p* x(15) )-(kdiss_r52_p* x(4) )) + (1)*(1)* ((kass_r51_p* x(5) * x(14) )-(kdiss_r51_p* x(15) )) );
	
//x(16)   ID: s148  initialValue: 3
	(1/compartment_c1)*( (-1)*(1)* ( x(19) *kass_re24_s157_p* x(16) * x(17) ) );
	
//x(17)   ID: s150  initialValue: 3
	(1/compartment_c1)*( (-1)*(1)* ( x(19) *kass_re24_s157_p* x(16) * x(17) ) );
	
//x(18)   ID: s152  initialValue: 0
	0;
	
//x(19)   ID: s157  initialValue: 0.5
	0;
	
//x(20)   ID: s158  initialValue: 0
	(1/compartment_c5)*( (-1)*(1)* (kass_r55_p* x(20) ) + (1)*(1)* ((kass_r54_p* x(13) * x(11) )-(kdiss_r54_p* x(20) )) );
	
//x(21)   ID: s159  initialValue: 0
	(1/compartment_c4)*( (-1)*(1)* ( x(7) *((kass_r23_s21_p* x(21) )-(kdiss_r23_s21_p* x(12) * x(22) ))) + (1)*(1)* ( x(19) *kass_re24_s157_p* x(16) * x(17) ) );
	
//x(22)   ID: s160  initialValue: 0
	(1/compartment_c4)*( (-1)*(1)* ((kass_r25_p* x(22) )-(kdiss_r25_p* x(23) * x(10) )) + (1)*(1)* ( x(7) *((kass_r23_s21_p* x(21) )-(kdiss_r23_s21_p* x(12) * x(22) ))) );
	
//x(23)   ID: s161  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* ((kass_r26_p* x(23) )-(kdiss_r26_p* x(13) )) + (1)*(1)* ((kass_r25_p* x(22) )-(kdiss_r25_p* x(23) * x(10) )) )
	];


	
endfunction
        x0=[2;0;5;0;2.5;5;0;0;0;0;2;0;0;2.5;0;3;3;0;0.5;0;0;0;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)' 'x(14)' 'x(15)' 'x(16)' 'x(17)' 'x(18)' 'x(19)' 'x(20)' 'x(21)' 'x(22)' 'x(23)'],[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18;19;20;21;22;23])

//real_variable:
	
	
//x(1)   id: s9  initialValue: 2
	
//x(2)   id: s10  initialValue: 0
	
//x(3)   id: s1  initialValue: 5
	
//x(4)   id: s75  initialValue: 0
	
//x(5)   id: s135  initialValue: 2.5
	
//x(6)   id: s7  initialValue: 5
	
//x(7)   id: s21  initialValue: 0
	
//x(8)   id: s46  initialValue: 0
	
//x(9)   id: s48  initialValue: 0
	
//x(10)   id: s69  initialValue: 0
	
//x(11)   id: s71  initialValue: 2
	
//x(12)   id: s68  initialValue: 0
	
//x(13)   id: s70  initialValue: 0
	
//x(14)   id: s128  initialValue: 2.5
	
//x(15)   id: s140  initialValue: 0
	
//x(16)   id: s148  initialValue: 3
	
//x(17)   id: s150  initialValue: 3
	
//x(18)   id: s152  initialValue: 0
	
//x(19)   id: s157  initialValue: 0.5
	
//x(20)   id: s158  initialValue: 0
	
//x(21)   id: s159  initialValue: 0
	
//x(22)   id: s160  initialValue: 0
	
//x(23)   id: s161  initialValue: 0