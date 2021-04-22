
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_compartment_1   id: compartment_1
	compartment_compartment_1=1;
		
// r_p   id: r
	r_p=0.2;
		
// mu_x_p   id: mu_x
	mu_x_p=4;
		
// zeta_p   id: zeta
	zeta_p=0.5;
		
// b_p   id: b
	b_p=1.5;
		
// epsilon_p   id: epsilon
	epsilon_p=0.002;
		
// k_p   id: k
	k_p=0.4;
		
// mu_z_star_p   id: mu_z_star
	mu_z_star_p=0.4;
		



xdot=[
//x(1)   ID: mu_z  initialValue: 0.4
	        
          (epsilon_p*( x(3) -(k_p*( x(1) -mu_z_star_p))))
        ;
	
//x(2)   ID: x  initialValue: 4
	        
          ((((r_p)* x(2) * x(3) )+(zeta_p*mu_x_p))-(zeta_p* x(2) ))
        ;
	
//x(3)   ID: y  initialValue: 0.2
	        
          (((r_p* x(2) * x(3) )-(b_p* x(3) * x(4) ))-(zeta_p* x(3) ))
        ;
	
//x(4)   ID: z  initialValue: 0.4
	        
          ((((b_p)* x(3) * x(4) )+(zeta_p* x(1) ))-(zeta_p* x(4) ))
        
	];


	
endfunction
        x0=[0.4;4;0.2;0.4];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)'],[1;2;3;4])

//real_variable:
	
	
//x(1)   id: mu_z  initialValue: 0.4
	
//x(2)   id: x  initialValue: 4
	
//x(3)   id: y  initialValue: 0.2
	
//x(4)   id: z  initialValue: 0.4