
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_compartment_   id: compartment_
	compartment_compartment_=1;
		
// k1_p   id: k1
	k1_p=2.79E-6;
		
// k2_p   id: k2
	k2_p=2.29;
		
// a_p   id: a
	a_p=5.85E-5;
		



xdot=[
//x(1)   ID: f  initialValue: 0
	(1/compartment_compartment_)*( (-1)*(1)* (compartment_compartment_*()) + (-1)*(1)* (compartment_compartment_*()) + (1)*(1)* (compartment_compartment_*()) + (1)*(1)* (compartment_compartment_*()) )
	];


	
endfunction
        x0=[0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)'],[1])

//real_variable:
	
	
//x(1)   id: f  initialValue: 0