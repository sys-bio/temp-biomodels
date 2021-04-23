
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_default   id: default
	compartment_default=1;
		
// k1_p   id: k1
	k1_p=3;
		
// k2_p   id: k2
	k2_p=0.6;
		
// k3_p   id: k3
	k3_p=0.25;
		
// k4_p   id: k4
	k4_p=2.95;
		
// A_p   id: A
	A_p=1;
		
// B_p   id: B
	B_p=2;
		
// V_p   id: V
	V_p=25;
		
// value_p   id: value
	value_p=1;
		



xdot=[
//x(1)   ID: X  initialValue: 1
	(1/compartment_default)*( (-1)*(1)* ((compartment_default*(k2_p/( 1 ))* x(1) *( x(1) -( 1 ))*( x(1) -( 2 )))/(power(V_p,( 2 )))) + (-1)*(1)* (compartment_default*k4_p* x(1) ) + (1)*(1)* ((compartment_default*k1_p*A_p* x(1) *( x(1) -( 1 )))/V_p) + (1)*(1)* (compartment_default*k3_p*B_p*V_p) );
	
//x(2)   ID: ES  initialValue: 1
	(1/compartment_default)*( (-1)*(1)* ((compartment_default*k1_p*A_p* x(1) *( x(1) -( 1 )))/V_p) + (-1)*(1)* (compartment_default*k3_p*B_p*V_p) + (1)*(1)* ((compartment_default*(k2_p/( 1 ))* x(1) *( x(1) -( 1 ))*( x(1) -( 2 )))/(power(V_p,( 2 )))) + (1)*(1)* (compartment_default*k4_p* x(1) ) )
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
	
	
//x(1)   id: X  initialValue: 1
	
//x(2)   id: ES  initialValue: 1