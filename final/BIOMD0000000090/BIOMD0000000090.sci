
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_c0   id: c0
	compartment_c0=1;
		
// compartment_c1   id: c1
	compartment_c1=1;
		
// compartment_c2   id: c2
	compartment_c2=1;
		
// k_v0_p   id: k_v0
	k_v0_p=1.6;
		
// k2_p   id: k2
	k2_p=0.2;
		
// k3_p   id: k3
	k3_p=0.2;
		
// k4_p   id: k4
	k4_p=0.2;
		
// k5_p   id: k5
	k5_p=0.1;
		
// k6_p   id: k6
	k6_p=0.12;
		
// k7_p   id: k7
	k7_p=10;
		
// k8_p   id: k8
	k8_p=10;
		
// k9_p   id: k9
	k9_p=10;
		
// k_v10_p   id: k_v10
	k_v10_p=80;
		
// k11_p   id: k11
	k11_p=10;
		
// k12_p   id: k12
	k12_p=5;
		
// k_v13_p   id: k_v13
	k_v13_p=4;
		
// k14_p   id: k14
	k14_p=10;
		
// k15_p   id: k15
	k15_p=5;
		
// k16_p   id: k16
	k16_p=10;
		
// k17_p   id: k17
	k17_p=0.02;
		
// k18_p   id: k18
	k18_p=1;
		
// n_p   id: n
	n_p=4;
		
// m_p   id: m
	m_p=4;
		
// Ka_p   id: Ka
	Ka_p=1;
		
// Kc_p   id: Kc
	Kc_p=0.1;
		
// a_p   id: a
	a_p=0.1;
		
// Ac_p   id: Ac
	Ac_p=2;
		
// Am_p   id: Am
	Am_p=2;
		
// S_p   id: S
	S_p=2;
		
// N_p   id: N
	N_p=2;
		
// Kh_p   id: Kh
	Kh_p=0.5;
		
// sul_ex_s   id: sul_ex
	sul_ex_s=0;
		
// eth_ex_s   id: eth_ex
	eth_ex_s=0;
		
// oxy_ex_s   id: oxy_ex
	oxy_ex_s=0;
		
// H2O_s   id: H2O
	H2O_s=0;
		
// PPi_s   id: PPi
	PPi_s=0;
		
// A2c_s   id: A2c
	A2c_s=0.5;
		
// N1_s   id: N1
	N1_s=0;
		
// S2_s   id: S2
	S2_s=0.5;
		
// C1_s   id: C1
	C1_s=0;
		
// C2_s   id: C2
	C2_s=0;
		
// A2m_s   id: A2m
	A2m_s=0.5;
		
// Ho_s   id: Ho
	Ho_s=0;
		
// Hm_s   id: Hm
	Hm_s=0;
		



xdot=[
//x(1)   ID: oxy  initialValue: 7
	(1/compartment_c2)*( (-1)*(1)* (compartment_c2*k14_p* x(1) ) + (-1)*(1)* ((compartment_c2*k11_p* x(9) * x(1) )/(((a_p* x(9) )+ x(1) )*(( 1 )+(power(( x(7) /Kh_p),m_p))))) + (1)*(1)* (compartment_c0*k_v10_p) );
	
//x(2)   ID: A3c  initialValue: 1.5
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*k2_p* x(5) * x(2) ) + (-1)*(1)* (compartment_c1*k3_p* x(3) * x(2) ) + (-1)*(1)* (compartment_c1*k12_p* x(2) ) + (1)*(1)* (compartment_c2*k16_p* x(13) * ( (Ac_p- x(2) ) ) ) );
	
//x(3)   ID: aps  initialValue: 0.5
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*k3_p* x(3) * x(2) ) + (1)*(1)* (compartment_c1*k2_p* x(5) * x(2) ) );
	
//x(4)   ID: pap  initialValue: 0.4
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*k4_p* x(4) * x(9) ) + (1)*(1)* (compartment_c1*k3_p* x(3) * x(2) ) );
	
//x(5)   ID: sul  initialValue: 0.4
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*k2_p* x(5) * x(2) ) + (1)*(1)* ((compartment_c0*k_v0_p)/(( 1 )+(power(( x(8) /Kc_p),n_p)))) );
	
//x(6)   ID: eth  initialValue: 4
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*k7_p* x(6) * ( (N_p- x(9) ) ) ) + (1)*(1)* (compartment_c0*k_v13_p) );
	
//x(7)   ID: hyd  initialValue: 0.5
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*k5_p* x(7) * x(11) ) + (-1)*(1)* (compartment_c1*k17_p* x(7) ) + (1)*(1)* (compartment_c1*k4_p* x(4) * x(9) ) );
	
//x(8)   ID: cys  initialValue: 0.3
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*k6_p* x(8) ) + (1)*(1)* (compartment_c1*k5_p* x(7) * x(11) ) );
	
//x(9)   ID: N2  initialValue: 2
	(1/compartment_c1)*( (-1)*(3)* (compartment_c1*k4_p* x(4) * x(9) ) + (-1)*(1)* ((compartment_c2*k11_p* x(9) * x(1) )/(((a_p* x(9) )+ x(1) )*(( 1 )+(power(( x(7) /Kh_p),m_p))))) + (1)*(2)* (compartment_c1*k7_p* x(6) * ( (N_p- x(9) ) ) ) + (1)*(4)* (compartment_c2*k9_p* x(12) * ( (N_p- x(9) ) ) ) );
	
//x(10)   ID: aco  initialValue: 0.3
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*k15_p* x(10) ) + (-1)*(1)* (compartment_c2*k8_p* x(10) * ( (S_p- x(12) ) ) ) + (1)*(1)* (compartment_c1*k7_p* x(6) * ( (N_p- x(9) ) ) ) );
	
//x(11)   ID: oah  initialValue: 1.5
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*k5_p* x(7) * x(11) ) + (-1)*(1)* (compartment_c1*k18_p* x(11) ) + (1)*(1)* (compartment_c1*k15_p* x(10) ) );
	
//x(12)   ID: S1  initialValue: 1.5
	(1/compartment_c2)*( (-1)*(1)* (compartment_c2*k9_p* x(12) * ( (N_p- x(9) ) ) ) + (1)*(1)* (compartment_c2*k8_p* x(10) * ( (S_p- x(12) ) ) ) );
	
//x(13)   ID: A3m  initialValue: 1.5
	(1/compartment_c2)*( (-1)*(1)* (compartment_c2*k16_p* x(13) * ( (Ac_p- x(2) ) ) ) + (1)*(1)* ((((compartment_c2*( 3 )*k11_p* x(9) * x(1) )/(((a_p* x(9) )+ x(1) )*(( 1 )+(power(( x(7) /Kh_p),m_p)))))* ( (Am_p- x(13) ) ) )/(Ka_p+ ( (Am_p- x(13) ) ) )) )
	];


	
endfunction
        x0=[7;1.5;0.5;0.4;0.4;4;0.5;0.3;2;0.3;1.5;1.5;1.5];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)'],[1;2;3;4;5;6;7;8;9;10;11;12;13])

//real_variable:
	
	
//x(1)   id: oxy  initialValue: 7
	
//x(2)   id: A3c  initialValue: 1.5
	
//x(3)   id: aps  initialValue: 0.5
	
//x(4)   id: pap  initialValue: 0.4
	
//x(5)   id: sul  initialValue: 0.4
	
//x(6)   id: eth  initialValue: 4
	
//x(7)   id: hyd  initialValue: 0.5
	
//x(8)   id: cys  initialValue: 0.3
	
//x(9)   id: N2  initialValue: 2
	
//x(10)   id: aco  initialValue: 0.3
	
//x(11)   id: oah  initialValue: 1.5
	
//x(12)   id: S1  initialValue: 1.5
	
//x(13)   id: A3m  initialValue: 1.5