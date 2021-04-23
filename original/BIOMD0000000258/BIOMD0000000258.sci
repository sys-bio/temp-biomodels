
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_cell   id: cell
	compartment_cell=1;
		
// r31_p   id: r31
	r31_p=1;
		
// r24_p   id: r24
	r24_p=1;
		
// Chi14_p   id: Chi14
	Chi14_p=1.1;
		
// Ks1_p   id: Ks1
	Ks1_p=0.01;
		
// Ks2_p   id: Ks2
	Ks2_p=0.01;
		
// Ks3_p   id: Ks3
	Ks3_p=0.01;
		
// Ks4_p   id: Ks4
	Ks4_p=0.01;
		
// Vm1_p   id: Vm1
	Vm1_p=1;
		
// p_p   id: p
	p_p=1;
		



xdot=[
//x(1)   ID: alpha  initialValue: 0.462
	(1/compartment_cell)*( (-1)*(1)* ((Vm1_p*( x(1) /Ks1_p))/(( 1 )+( x(1) /Ks1_p)+( x(2) /Ks3_p))) + (1)*(1)* ((r24_p*(Vm1_p/Chi14_p)*( x(2) /Ks2_p))/(( 1 )+( x(3) /Ks4_p)+( x(2) /Ks2_p))) );
	
//x(2)   ID: beta  initialValue: 0.2
	(1/compartment_cell)*( (-1)*(1)* ((r24_p*(Vm1_p/Chi14_p)*( x(2) /Ks2_p))/(( 1 )+( x(3) /Ks4_p)+( x(2) /Ks2_p))) + (-1)*(1)* ((r31_p*Vm1_p*( x(2) /Ks3_p))/(( 1 )+( x(1) /Ks1_p)+( x(2) /Ks3_p))) + (1)*(1)* ((Vm1_p*( x(1) /Ks1_p))/(( 1 )+( x(1) /Ks1_p)+( x(2) /Ks3_p))) + (1)*(1)* (((Vm1_p/Chi14_p)*( x(3) /Ks4_p))/(( 1 )+( x(3) /Ks4_p)+( x(2) /Ks2_p))) );
	
//x(3)   ID: gamma  initialValue: 0.338
	(1/compartment_cell)*( (-1)*(1)* (((Vm1_p/Chi14_p)*( x(3) /Ks4_p))/(( 1 )+( x(3) /Ks4_p)+( x(2) /Ks2_p))) + (1)*(1)* ((r31_p*Vm1_p*( x(2) /Ks3_p))/(( 1 )+( x(1) /Ks1_p)+( x(2) /Ks3_p))) )
	];


	
endfunction
        x0=[0.462;0.2;0.338];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)'],[1;2;3])

//real_variable:
	
	
//x(1)   id: alpha  initialValue: 0.462
	
//x(2)   id: beta  initialValue: 0.2
	
//x(3)   id: gamma  initialValue: 0.338