
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_cytoplasm   id: cytoplasm
	compartment_cytoplasm=1;
		
// compartment_ER   id: ER
	compartment_ER=1;
		
// compartment_extracellular   id: extracellular
	compartment_extracellular=1;
		
// k_p   id: k
	k_p=0.01;
		
// alpha_p   id: alpha
	alpha_p=5;
		
// n_p   id: n
	n_p=4;
		
// a_p   id: a
	a_p=3;
		
// k1_p   id: k1
	k1_p=2;
		
// beta_p   id: beta
	beta_p=1;
		
// fy_p   id: fy
	fy_p=0;
		
// gamma_p   id: gamma
	gamma_p=1;
		



xdot=[
//x(1)   ID: x  initialValue: 1
	(1/compartment_ER)*( (-1)*(1)* ((k_p* x(1) *compartment_cytoplasm)-(k1_p* x(2) *compartment_ER)) + (-1)*(1)* (alpha_p* ( ((power( x(2) ,n_p))/((power(a_p,n_p))+(power( x(2) ,n_p)))) ) * x(1) *compartment_cytoplasm) );
	
//x(2)   ID: y  initialValue: 1
	(1/compartment_cytoplasm)*( (-1)*(1)* (beta_p* x(2) *compartment_extracellular) + (1)*(1)* (gamma_p*compartment_cytoplasm) + (1)*(1)* ((k_p* x(1) *compartment_cytoplasm)-(k1_p* x(2) *compartment_ER)) + (1)*(1)* (alpha_p* ( ((power( x(2) ,n_p))/((power(a_p,n_p))+(power( x(2) ,n_p)))) ) * x(1) *compartment_cytoplasm) )
	];


	
endfunction
        x0=[1;1];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)'],[1;2])

//real_variable:
	
	
//x(1)   id: x  initialValue: 1
	
//x(2)   id: y  initialValue: 1