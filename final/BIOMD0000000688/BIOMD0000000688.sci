
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_COMpartment   id: COMpartment
	compartment_COMpartment=1;
		
// R0_p   id: R0
	R0_p=15.9090909090909;
		
// a0_p   id: a0
	a0_p=0.1;
		
// a1_p   id: a1
	a1_p=0.2;
		
// k_p   id: k
	k_p=1;
		
// u_p   id: u
	u_p=1;
		
// lambda_p   id: lambda
	lambda_p=10;
		
// d_p   id: d
	d_p=0.1;
		
// beta_p   id: beta
	beta_p=0.1;
		
// gamma_p   id: gamma
	gamma_p=0.5;
		
// alpha_p   id: alpha
	alpha_p=0.2;
		
// phi_p   id: phi
	phi_p=0.1;
		
// eta_p   id: eta
	eta_p=0.01;
		
// pa_p   id: pa
	pa_p=1E-6;
		
// ca_p   id: ca
	ca_p=15.5;
		
// r_p   id: r
	r_p=1;
		
// ba_p   id: ba
	ba_p=0.1;
		
// p_i_p   id: p_i
	p_i_p=1;
		
// ci_p   id: ci
	ci_p=12;
		
// bi_p   id: bi
	bi_p=0.1;
		
// xi_p   id: xi
	xi_p=0.01;
		



xdot=[
//x(1)   ID: x  initialValue: 1
	(1/compartment_COMpartment)*( (-1)*(1)* (compartment_COMpartment*d_p* x(1) ) + (-1)*(1)* (compartment_COMpartment*()) + (-1)*(1)* (compartment_COMpartment*()) + (1)*(1)* (compartment_COMpartment*()) );
	
//x(2)   ID: y_0  initialValue: 0
	(1/compartment_COMpartment)*( (-1)*(1)* (compartment_COMpartment*a0_p* x(2) ) + (-1)*(1)* (compartment_COMpartment*eta_p* x(2) ) + (-1)*(1)* (compartment_COMpartment*()) + (-1)*(1)* (compartment_COMpartment*()) + (1)*(1)* (compartment_COMpartment*()) + (1)*(1)* (compartment_COMpartment*phi_p* x(4) ) );
	
//x(3)   ID: y_1  initialValue: 0
	(1/compartment_COMpartment)*( (-1)*(1)* (compartment_COMpartment*a1_p* x(3) ) + (-1)*(1)* (compartment_COMpartment*()) + (-1)*(1)* (compartment_COMpartment*()) + (1)*(1)* (compartment_COMpartment*eta_p* x(2) ) );
	
//x(4)   ID: L  initialValue: 0
	(1/compartment_COMpartment)*( (-1)*(1)* (compartment_COMpartment*phi_p* x(4) ) + (-1)*(1)* (compartment_COMpartment*d_p* x(4) ) + (1)*(1)* (compartment_COMpartment*()) );
	
//x(5)   ID: v  initialValue: 1
	(1/compartment_COMpartment)*( (-1)*(1)* (compartment_COMpartment*u_p* x(5) ) + (1)*(1)* (compartment_COMpartment*()) );
	
//x(6)   ID: z_a  initialValue: 1
	(1/compartment_COMpartment)*( (-1)*(1)* (compartment_COMpartment*ba_p* x(6) ) + (1)*(1)* (compartment_COMpartment*()) + (1)*(1)* (compartment_COMpartment*()) );
	
//x(7)   ID: m_0  initialValue: 0
	(1/compartment_COMpartment)*( (-1)*(1)* (compartment_COMpartment*r_p* x(7) ) );
	
//x(8)   ID: m_1  initialValue: 0
	(1/compartment_COMpartment)*( (-1)*(1)* (compartment_COMpartment*r_p* x(8) ) + (1)*(2)* (compartment_COMpartment*r_p* x(7) ) );
	
//x(9)   ID: m_2  initialValue: 0
	(1/compartment_COMpartment)*( (-1)*(1)* (compartment_COMpartment*r_p* x(9) ) + (1)*(2)* (compartment_COMpartment*r_p* x(8) ) );
	
//x(10)   ID: m_3  initialValue: 0
	(1/compartment_COMpartment)*( (-1)*(1)* (compartment_COMpartment*r_p* x(10) ) + (1)*(2)* (compartment_COMpartment*r_p* x(9) ) );
	
//x(11)   ID: m_4  initialValue: 0
	(1/compartment_COMpartment)*( (-1)*(1)* (compartment_COMpartment*r_p* x(11) ) + (1)*(2)* (compartment_COMpartment*r_p* x(10) ) );
	
//x(12)   ID: m_5  initialValue: 0
	(1/compartment_COMpartment)*( (-1)*(1)* (compartment_COMpartment*r_p* x(12) ) + (1)*(2)* (compartment_COMpartment*r_p* x(11) ) );
	
//x(13)   ID: m_6  initialValue: 0
	(1/compartment_COMpartment)*( (-1)*(1)* (compartment_COMpartment*r_p* x(13) ) + (1)*(2)* (compartment_COMpartment*r_p* x(12) ) );
	
//x(14)   ID: m_7  initialValue: 0
	(1/compartment_COMpartment)*( (-1)*(1)* (compartment_COMpartment*r_p* x(14) ) + (1)*(2)* (compartment_COMpartment*r_p* x(13) ) );
	
//x(15)   ID: m_8  initialValue: 0
	(1/compartment_COMpartment)*( (-1)*(1)* (compartment_COMpartment*r_p* x(15) ) + (1)*(2)* (compartment_COMpartment*r_p* x(14) ) );
	
//x(16)   ID: z_i  initialValue: 0.1
	(1/compartment_COMpartment)*( (-1)*(1)* (compartment_COMpartment*bi_p* x(16) ) + (1)*(1)* (compartment_COMpartment*()) + (1)*(1)* (compartment_COMpartment*()) )
	];


	
endfunction
        x0=[1;0;0;0;1;1;0;0;0;0;0;0;0;0;0;0.1];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)' 'x(14)' 'x(15)' 'x(16)'],[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16])

//real_variable:
	
	
//x(1)   id: x  initialValue: 1
	
//x(2)   id: y_0  initialValue: 0
	
//x(3)   id: y_1  initialValue: 0
	
//x(4)   id: L  initialValue: 0
	
//x(5)   id: v  initialValue: 1
	
//x(6)   id: z_a  initialValue: 1
	
//x(7)   id: m_0  initialValue: 0
	
//x(8)   id: m_1  initialValue: 0
	
//x(9)   id: m_2  initialValue: 0
	
//x(10)   id: m_3  initialValue: 0
	
//x(11)   id: m_4  initialValue: 0
	
//x(12)   id: m_5  initialValue: 0
	
//x(13)   id: m_6  initialValue: 0
	
//x(14)   id: m_7  initialValue: 0
	
//x(15)   id: m_8  initialValue: 0
	
//x(16)   id: z_i  initialValue: 0.1