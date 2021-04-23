
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_compartment   id: compartment
	compartment_compartment=1;
		
// q1_p   id: q1
	q1_p=4.1954;
		
// n0_p   id: n0
	n0_p=0.05;
		
// g0_p   id: g0
	g0_p=1;
		
// alpha_p   id: alpha
	alpha_p=4;
		
// n1_p   id: n1
	n1_p=7.8142;
		
// a_p   id: a
	a_p=1.2479;
		
// g1_p   id: g1
	g1_p=3.1383;
		
// m1_p   id: m1
	m1_p=1.999;
		
// k1_p   id: k1
	k1_p=2.392;
		
// p1_p   id: p1
	p1_p=0.8295;
		
// r1_p   id: r1
	r1_p=16.8363;
		
// r2_p   id: r2
	r2_p=0.1687;
		
// m2_p   id: m2
	m2_p=20.44;
		
// k2_p   id: k2
	k2_p=1.5644;
		
// m3_p   id: m3
	m3_p=3.6888;
		
// k3_p   id: k3
	k3_p=1.2765;
		
// n2_p   id: n2
	n2_p=3.0087;
		
// b_p   id: b
	b_p=1.0258;
		
// g2_p   id: g2
	g2_p=0.0368;
		
// g3_p   id: g3
	g3_p=0.2658;
		
// c_p   id: c
	c_p=1.0258;
		
// m4_p   id: m4
	m4_p=3.8231;
		
// k4_p   id: k4
	k4_p=2.5734;
		
// p2_p   id: p2
	p2_p=4.324;
		
// r3_p   id: r3
	r3_p=0.3166;
		
// r4_p   id: r4
	r4_p=2.1509;
		
// m5_p   id: m5
	m5_p=0.0013;
		
// m6_p   id: m6
	m6_p=3.1741;
		
// k5_p   id: k5
	k5_p=2.7454;
		
// m7_p   id: m7
	m7_p=0.0492;
		
// m8_p   id: m8
	m8_p=4.0424;
		
// k6_p   id: k6
	k6_p=0.4033;
		
// n3_p   id: n3
	n3_p=0.2431;
		
// d_p   id: d
	d_p=1.4422;
		
// g4_p   id: g4
	g4_p=0.5388;
		
// m9_p   id: m9
	m9_p=10.1132;
		
// k7_p   id: k7
	k7_p=6.5585;
		
// p3_p   id: p3
	p3_p=2.147;
		
// r5_p   id: r5
	r5_p=1.0352;
		
// r6_p   id: r6
	r6_p=3.3017;
		
// m10_p   id: m10
	m10_p=0.2179;
		
// k8_p   id: k8
	k8_p=0.6632;
		
// m11_p   id: m11
	m11_p=3.3442;
		
// k9_p   id: k9
	k9_p=17.1111;
		
// q2_p   id: q2
	q2_p=2.4017;
		
// n4_p   id: n4
	n4_p=0.0857;
		
// n5_p   id: n5
	n5_p=0.1649;
		
// g5_p   id: g5
	g5_p=1.178;
		
// g6_p   id: g6
	g6_p=0.0645;
		
// e_p   id: e
	e_p=3.6064;
		
// f_p   id: f
	f_p=1.0237;
		
// m12_p   id: m12
	m12_p=4.297;
		
// k10_p   id: k10
	k10_p=1.7303;
		
// p4_p   id: p4
	p4_p=0.2485;
		
// r7_p   id: r7
	r7_p=2.2123;
		
// r8_p   id: r8
	r8_p=0.2002;
		
// m13_p   id: m13
	m13_p=0.1347;
		
// k11_p   id: k11
	k11_p=1.8258;
		
// m14_p   id: m14
	m14_p=0.6114;
		
// k12_p   id: k12
	k12_p=1.8066;
		
// p5_p   id: p5
	p5_p=0.5;
		
// k13_p   id: k13
	k13_p=1.2;
		
// m15_p   id: m15
	m15_p=1.2;
		
// q3_p   id: q3
	q3_p=1;
		
// q4_p   id: q4
	q4_p=2.4514;
		
// g_p   id: g
	g_p=1.0258;
		
// n6_p   id: n6
	n6_p=8.0706;
		
// g7_p   id: g7
	g7_p=0.0004;
		
// m16_p   id: m16
	m16_p=12.2398;
		
// k14_p   id: k14
	k14_p=10.3617;
		
// p6_p   id: p6
	p6_p=0.2907;
		
// r9_p   id: r9
	r9_p=0.2528;
		
// r10_p   id: r10
	r10_p=0.2212;
		
// m17_p   id: m17
	m17_p=4.4505;
		
// k15_p   id: k15
	k15_p=0.0703;
		
// m18_p   id: m18
	m18_p=0.0156;
		
// k16_p   id: k16
	k16_p=0.6104;
		
// light_p   id: light
	light_p=1;
		



xdot=[
//x(1)   ID: cLm  initialValue: 0.4625
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*()) + (1)*(1)* (((compartment_compartment*(power(g0_p,alpha_p)))/((power(g0_p,alpha_p))+(power( x(16) ,alpha_p))))*((light_p*((q1_p* x(13) )+n0_p))+((n1_p*(power( x(9) ,a_p)))/((power(g1_p,a_p))+(power( x(9) ,a_p)))))) );
	
//x(2)   ID: cLc  initialValue: 0.0132
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*((r1_p* x(2) )-(r2_p* x(3) ))) + (-1)*(1)* (compartment_compartment*()) + (1)*(1)* (compartment_compartment*p1_p* x(1) ) );
	
//x(3)   ID: cLn  initialValue: 0.0699
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*()) + (1)*(1)* (compartment_compartment*((r1_p* x(2) )-(r2_p* x(3) ))) );
	
//x(4)   ID: cTm  initialValue: 0.4303
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*()) + (1)*(1)* (((compartment_compartment*n2_p*(power( x(12) ,b_p)))/((power(g2_p,b_p))+(power( x(12) ,b_p))))*((power(g3_p,c_p))/((power(g3_p,c_p))+(power( x(3) ,c_p))))) );
	
//x(5)   ID: cTc  initialValue: 10.2965
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*(((r4_p)* x(6) )+(r3_p* x(5) ))) + (-1)*(1)* ((compartment_compartment*(( 1 )-light_p)*m5_p* x(5) )/(k5_p+ x(5) )) + (-1)*(1)* ((m6_p*compartment_compartment* x(5) )/(k5_p+ x(5) )) + (1)*(1)* (p2_p*compartment_compartment* x(4) ) );
	
//x(6)   ID: cTn  initialValue: 0.5402
	(1/compartment_compartment)*( (-1)*(1)* ((compartment_compartment*(( 1 )-light_p)*m7_p* x(6) )/(k6_p+ x(6) )) + (-1)*(1)* ((m8_p*compartment_compartment* x(6) )/(k6_p+ x(6) )) + (1)*(1)* (compartment_compartment*(((r4_p)* x(6) )+(r3_p* x(5) ))) );
	
//x(7)   ID: cXm  initialValue: 0.0957
	(1/compartment_compartment)*( (-1)*(1)* ((compartment_compartment*m9_p* x(7) )/(k7_p+ x(7) )) + (1)*(1)* ((compartment_compartment*n3_p*(power( x(6) ,d_p)))/((power(g4_p,d_p))+(power( x(6) ,d_p)))) );
	
//x(8)   ID: cXc  initialValue: 1.5413
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*((r5_p* x(8) )-(r6_p* x(9) ))) + (-1)*(1)* (compartment_compartment*()) + (1)*(1)* (compartment_compartment*p3_p* x(7) ) );
	
//x(9)   ID: cXn  initialValue: 0.4585
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*()) + (1)*(1)* (compartment_compartment*((r5_p* x(8) )-(r6_p* x(9) ))) );
	
//x(10)   ID: cYm  initialValue: 0.0303
	(1/compartment_compartment)*( (-1)*(1)* ((compartment_compartment*m12_p* x(10) )/(k10_p+ x(10) )) + (1)*(1)* (compartment_compartment*((light_p*q2_p* x(13) )+((((light_p*n4_p)+n5_p)*(power(g5_p,e_p)))/((power(g5_p,e_p))+(power( x(6) ,e_p)))))*((power(g6_p,f_p))/((power(g6_p,f_p))+(power( x(3) ,f_p))))) );
	
//x(11)   ID: cYc  initialValue: 0.0041
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*((r7_p* x(11) )-(r8_p* x(12) ))) + (-1)*(1)* (compartment_compartment*()) + (1)*(1)* (compartment_compartment*p4_p* x(10) ) );
	
//x(12)   ID: cYn  initialValue: 0.0122
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*()) + (1)*(1)* (compartment_compartment*((r7_p* x(11) )-(r8_p* x(12) ))) );
	
//x(13)   ID: cPn  initialValue: 0.8476
	(1/compartment_compartment)*( (-1)*(1)* (q3_p*light_p* x(13) *compartment_compartment) + (-1)*(1)* ((compartment_compartment*m15_p* x(13) )/(k13_p+ x(13) )) + (1)*(1)* ((( 1 )-light_p)*p5_p*compartment_compartment) );
	
//x(14)   ID: cAm  initialValue: 14.6921
	(1/compartment_compartment)*( (-1)*(1)* ((compartment_compartment*m16_p* x(14) )/(k14_p+ x(14) )) + (1)*(1)* (light_p*q4_p* x(13) *compartment_compartment) + (1)*(1)* ((compartment_compartment*n6_p*(power( x(3) ,g_p)))/((power(g7_p,g_p))+(power( x(3) ,g_p)))) );
	
//x(15)   ID: cAc  initialValue: 0.7027
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*((r9_p* x(15) )-(r10_p* x(16) ))) + (-1)*(1)* (compartment_compartment*()) + (1)*(1)* (compartment_compartment*p6_p* x(14) ) );
	
//x(16)   ID: cAn  initialValue: 0.8648
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*()) + (1)*(1)* (compartment_compartment*((r9_p* x(15) )-(r10_p* x(16) ))) )
	];


	
endfunction
        x0=[0.4625;0.0132;0.0699;0.4303;10.2965;0.5402;0.0957;1.5413;0.4585;0.0303;0.0041;0.0122;0.8476;14.6921;0.7027;0.8648];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)' 'x(14)' 'x(15)' 'x(16)'],[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16])

//real_variable:
	
	
//x(1)   id: cLm  initialValue: 0.4625
	
//x(2)   id: cLc  initialValue: 0.0132
	
//x(3)   id: cLn  initialValue: 0.0699
	
//x(4)   id: cTm  initialValue: 0.4303
	
//x(5)   id: cTc  initialValue: 10.2965
	
//x(6)   id: cTn  initialValue: 0.5402
	
//x(7)   id: cXm  initialValue: 0.0957
	
//x(8)   id: cXc  initialValue: 1.5413
	
//x(9)   id: cXn  initialValue: 0.4585
	
//x(10)   id: cYm  initialValue: 0.0303
	
//x(11)   id: cYc  initialValue: 0.0041
	
//x(12)   id: cYn  initialValue: 0.0122
	
//x(13)   id: cPn  initialValue: 0.8476
	
//x(14)   id: cAm  initialValue: 14.6921
	
//x(15)   id: cAc  initialValue: 0.7027
	
//x(16)   id: cAn  initialValue: 0.8648