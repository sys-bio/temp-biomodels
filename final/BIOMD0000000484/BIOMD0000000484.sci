
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
	k2_p=0.025;
		



xdot=[
//x(1)   ID: S  initialValue: 0
	(1/compartment_default)*( (-1)*(1)* (k2_p* x(1) ) + (1)*(1)* (compartment_default*k1_p) );
	
//x(2)   ID: ES  initialValue: 0
	(1/compartment_default)*( (-1)*(1)* (compartment_default*k1_p) + (1)*(1)* (k2_p* x(1) ) )
	];


	
endfunction
        x0=[0;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)'],[1;2])

//real_variable:
	
	
//x(1)   id: S  initialValue: 0
	
//x(2)   id: ES  initialValue: 0