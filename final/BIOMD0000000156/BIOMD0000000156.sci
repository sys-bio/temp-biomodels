
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_compartment   id: compartment
	compartment_compartment=1;
		
// psi_p   id: psi
	psi_p=1;
		
// alpha_x_p   id: alpha_x
	alpha_x_p=0;
		
// alpha_xy_p   id: alpha_xy
	alpha_xy_p=3.7;
		
// beta_y_p   id: beta_y
	beta_y_p=1.5;
		
// alpha_y_p   id: alpha_y
	alpha_y_p=0.9;
		
// alpha_0_p   id: alpha_0
	alpha_0_p=1.1;
		
// Theta_p   id: Theta
	Theta_p=2;
		



xdot=[
//x(1)   ID: x  initialValue: 0.02
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*alpha_xy_p* x(2) * x(1) ) + (1)*(1)* (compartment_compartment*Theta_p* x(1) *psi_p) );
	
//x(2)   ID: y  initialValue: 0.2
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*alpha_y_p* x(2) ) + (1)*(1)* (compartment_compartment*alpha_0_p* x(3) ) );
	
//x(3)   ID: y0  initialValue: 0.5
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*alpha_0_p* x(3) ) + (1)*(1)* (compartment_compartment*beta_y_p* x(1) *psi_p) )
	];


	
endfunction
        x0=[0.02;0.2;0.5];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)'],[1;2;3])

//real_variable:
	
	
//x(1)   id: x  initialValue: 0.02
	
//x(2)   id: y  initialValue: 0.2
	
//x(3)   id: y0  initialValue: 0.5