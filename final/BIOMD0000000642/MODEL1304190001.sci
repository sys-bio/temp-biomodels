
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_Tissue   id: Tissue
	compartment_Tissue=1;
		
// alpha1_p   id: alpha1
	alpha1_p=0.7;
		
// alpha2_p   id: alpha2
	alpha2_p=0.98;
		
// beta1_p   id: beta1
	beta1_p=0.3;
		
// beta2_p   id: beta2
	beta2_p=0.4;
		
// delta1_p   id: delta1
	delta1_p=1;
		
// gamma2_p   id: gamma2
	gamma2_p=0.9;
		
// s_p   id: s
	s_p=0.4;
		
// rho_p   id: rho
	rho_p=0.2;
		
// omega_p   id: omega
	omega_p=0.3;
		
// mu_p   id: mu
	mu_p=0.29;
		
// alpha3_p   id: alpha3
	alpha3_p=1;
		
// gamma3_p   id: gamma3
	gamma3_p=0.085;
		
// sigma1_p   id: sigma1
	sigma1_p=1.2;
		
// sigma2_p   id: sigma2
	sigma2_p=0.94;
		
// sigma3_p   id: sigma3
	sigma3_p=0.3;
		
// v_p   id: v
	v_p=0.4;
		
// theta_p   id: theta
	theta_p=0.8;
		
// pi_p   id: pi
	pi_p=0.3;
		



xdot=[
//x(1)   ID: H  initialValue: 1
	        
          (( x(1) *((alpha1_p-(beta1_p* x(1) ))-(delta1_p* x(2) )))-((sigma1_p* x(1) )* x(4) ))
        ;
	
//x(2)   ID: T  initialValue: 1E-5
	        
          ((( x(2) *(alpha3_p-(beta2_p* x(2) )))-((gamma2_p* x(3) )* x(2) ))+((sigma2_p* x(1) )* x(4) ))
        ;
	
//x(3)   ID: I  initialValue: 1.379310345
	        
          ((((s_p+(((rho_p* x(3) )* x(2) )/(omega_p+ x(2) )))-((gamma3_p* x(3) )* x(2) ))-(mu_p* x(3) ))-(((sigma3_p* x(3) )* x(4) )/(v_p+ x(4) )))
        ;
	
//x(4)   ID: E  initialValue: 2
	        
          ((%pi)-(theta_p* x(4) ))
        
	];


	
endfunction
        x0=[1;1E-5;1.379310345;2];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)'],[1;2;3;4])

//real_variable:
	
	
//x(1)   id: H  initialValue: 1
	
//x(2)   id: T  initialValue: 1E-5
	
//x(3)   id: I  initialValue: 1.379310345
	
//x(4)   id: E  initialValue: 2