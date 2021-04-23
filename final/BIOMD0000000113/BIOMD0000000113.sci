
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_cytosol   id: cytosol
	compartment_cytosol=1;
		
// compartment_store   id: store
	compartment_store=1;
		
// v0_p   id: v0
	v0_p=1;
		
// Vm2_p   id: Vm2
	Vm2_p=65;
		
// n_p   id: n
	n_p=2;
		
// Kp_p   id: Kp
	Kp_p=1;
		
// Vm3_p   id: Vm3
	Vm3_p=500;
		
// m_p   id: m
	m_p=2;
		
// Kr_p   id: Kr
	Kr_p=2;
		
// K_A_p   id: K_A
	K_A_p=0.9;
		
// kf_p   id: kf
	kf_p=1;
		
// k_p   id: k
	k_p=10;
		
// p_p   id: p
	p_p=4;
		
// vk_p   id: vk
	vk_p=0;
		
// vp_p   id: vp
	vp_p=2.5;
		
// Ka_p   id: Ka
	Ka_p=2.5;
		
// q_p   id: q
	q_p=1;
		
// K1_p   id: K1
	K1_p=0.01;
		
// K2_p   id: K2
	K2_p=0.01;
		
// v1_beta_p   id: v1_beta
	v1_beta_p=2.7;
		



xdot=[
//x(1)   ID: vMK  initialValue: 20
	0;
	
//x(2)   ID: Z  initialValue: 0.15
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((Vm2_p*(power( x(2) ,n_p)))/((power(Kp_p,n_p))+(power( x(2) ,n_p))))) + (-1)*(1)* (compartment_cytosol*k_p* x(2) ) + (1)*(1)* (compartment_cytosol*v0_p) + (1)*(1)* (compartment_cytosol*v1_beta_p) + (1)*(1)* (compartment_store*((Vm3_p*(power( x(3) ,m_p))*(power( x(2) ,p_p)))/(((power(Kr_p,m_p))+(power( x(3) ,m_p)))*((power(K_A_p,p_p))+(power( x(2) ,p_p)))))) + (1)*(1)* (compartment_store*kf_p* x(3) ) );
	
//x(3)   ID: Y  initialValue: 1.6
	(1/compartment_store)*( (-1)*(1)* (compartment_store*((Vm3_p*(power( x(3) ,m_p))*(power( x(2) ,p_p)))/(((power(Kr_p,m_p))+(power( x(3) ,m_p)))*((power(K_A_p,p_p))+(power( x(2) ,p_p)))))) + (-1)*(1)* (compartment_store*kf_p* x(3) ) + (1)*(1)* (compartment_cytosol*((Vm2_p*(power( x(2) ,n_p)))/((power(Kp_p,n_p))+(power( x(2) ,n_p))))) );
	
//x(4)   ID: Wt  initialValue: 1
	0;
	
//x(5)   ID: W_star  initialValue: 0
	(1/compartment_cytosol)*( (1)*(1)* (compartment_cytosol*(vp_p/ x(4) )*((( ( (( x(1) *(power( x(2) ,q_p)))/((power(Ka_p,q_p))+(power( x(2) ,q_p)))) ) /vp_p)*((( 1 )- x(5) )/((K1_p+( 1 ))- x(5) )))-( x(5) /(K2_p+ x(5) )))) )
	];


	
endfunction
        x0=[20;0.15;1.6;1;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)'],[1;2;3;4;5])

//real_variable:
	
	
//x(1)   id: vMK  initialValue: 20
	
//x(2)   id: Z  initialValue: 0.15
	
//x(3)   id: Y  initialValue: 1.6
	
//x(4)   id: Wt  initialValue: 1
	
//x(5)   id: W_star  initialValue: 0