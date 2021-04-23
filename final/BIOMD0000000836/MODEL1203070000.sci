
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_compartment   id: compartment
	compartment_compartment=1;
		
// alpha_p   id: alpha
	alpha_p=4;
		
// beta_p   id: beta
	beta_p=3.8;
		
// gamma_p   id: gamma
	gamma_p=1;
		
// delta_p   id: delta
	delta_p=1;
		
// C_p   id: C
	C_p=10;
		



xdot=[
//x(1)   ID: S  initialValue: 0.01
	
          (((alpha_p*(( 1 )-( x(1) /C_p)))-(beta_p* x(2) ))* x(1) )
        ;
	
//x(2)   ID: P  initialValue: 0.01
	
          (((gamma_p)+(delta_p* x(1) ))* x(2) )
        
	];


	
endfunction
        x0=[0.01;0.01];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)'],[1;2])

//real_variable:
	
	
//x(1)   id: S  initialValue: 0.01
	
//x(2)   id: P  initialValue: 0.01