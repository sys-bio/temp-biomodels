
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_COMpartment   id: COMpartment
	compartment_COMpartment=1;
		
// k_p   id: k
	k_p=10;
		
// r_p   id: r
	r_p=1;
		
// d_p   id: d
	d_p=0.1;
		
// gamma_p   id: gamma
	gamma_p=1;
		
// lambda_p   id: lambda
	lambda_p=1;
		
// delta_1_p   id: delta_1
	delta_1_p=0.1;
		
// delta_2_p   id: delta_2
	delta_2_p=1.5;
		
// eta_p   id: eta
	eta_p=2;
		
// epsilon_p   id: epsilon
	epsilon_p=1;
		
// q_p   id: q
	q_p=0.5;
		
// mu_p   id: mu
	mu_p=0.1;
		
// R_p   id: R
	R_p=12;
		
// alpha_p   id: alpha
	alpha_p=0.5;
		



xdot=[
//x(1)   ID: T  initialValue: 0.1
	        
          (((r_p* x(1) *(( 1 )-( x(1) /k_p)))-(d_p* x(1) ))-(gamma_p* x(1) * x(4) ))
        ;
	
//x(2)   ID: A  initialValue: 2
	        
          ((lambda_p-(delta_1_p* x(2) ))-(alpha_p* x(2) * x(1) ))
        ;
	
//x(3)   ID: A_star  initialValue: 2
	        
          ((alpha_p* x(2) * x(1) )-(delta_2_p* x(3) ))
        ;
	
//x(4)   ID: C  initialValue: 0.3
	        
          ((((eta_p* x(3) * x(4) )/((epsilon_p* x(4) )+( 1 )))-(q_p* x(1) * x(4) ))-(mu_p* x(4) ))
        
	];


	
endfunction
        x0=[0.1;2;2;0.3];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)'],[1;2;3;4])

//real_variable:
	
	
//x(1)   id: T  initialValue: 0.1
	
//x(2)   id: A  initialValue: 2
	
//x(3)   id: A_star  initialValue: 2
	
//x(4)   id: C  initialValue: 0.3