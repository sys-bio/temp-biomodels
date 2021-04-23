
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_default   id: default
	compartment_default=1;
		
// k1_p   id: k1
	k1_p=1;
		
// k2_p   id: k2
	k2_p=1;
		
// k3_p   id: k3
	k3_p=0.1;
		
// k4_p   id: k4
	k4_p=1;
		
// k5_p   id: k5
	k5_p=1;
		
// k6_p   id: k6
	k6_p=0.1;
		



xdot=[
//x(1)   ID: S1  initialValue: 0
	(1/compartment_default)*( (-1)*(1)* (k1_p* x(1) * x(2) ) + (1)*(1)* (k2_p* x(3) ) + (1)*(1)* (k3_p* x(3) ) );
	
//x(2)   ID: S2  initialValue: 0
	(1/compartment_default)*( (-1)*(1)* (k1_p* x(1) * x(2) ) + (1)*(1)* (k2_p* x(3) ) + (1)*(1)* (k6_p* x(6) ) );
	
//x(3)   ID: S3  initialValue: 0
	(1/compartment_default)*( (-1)*(1)* (k2_p* x(3) ) + (-1)*(1)* (k3_p* x(3) ) + (1)*(1)* (k1_p* x(1) * x(2) ) );
	
//x(4)   ID: S4  initialValue: 0
	(1/compartment_default)*( (-1)*(1)* (k4_p* x(4) * x(5) ) + (1)*(1)* (k5_p* x(6) ) + (1)*(1)* (k6_p* x(6) ) );
	
//x(5)   ID: S5  initialValue: 0
	(1/compartment_default)*( (-1)*(1)* (k4_p* x(4) * x(5) ) + (1)*(1)* (k3_p* x(3) ) + (1)*(1)* (k5_p* x(6) ) );
	
//x(6)   ID: S6  initialValue: 0
	(1/compartment_default)*( (-1)*(1)* (k5_p* x(6) ) + (-1)*(1)* (k6_p* x(6) ) + (1)*(1)* (k4_p* x(4) * x(5) ) )
	];


	
endfunction
        x0=[0;0;0;0;0;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)'],[1;2;3;4;5;6])

//real_variable:
	
	
//x(1)   id: S1  initialValue: 0
	
//x(2)   id: S2  initialValue: 0
	
//x(3)   id: S3  initialValue: 0
	
//x(4)   id: S4  initialValue: 0
	
//x(5)   id: S5  initialValue: 0
	
//x(6)   id: S6  initialValue: 0