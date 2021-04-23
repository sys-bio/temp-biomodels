
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_cell   id: cell
	compartment_cell=1;
		
// kappa_p   id: kappa
	kappa_p=0.015;
		
// k6_p   id: k6
	k6_p=1;
		
// k4_p   id: k4
	k4_p=180;
		
// k4prime_p   id: k4prime
	k4prime_p=0.018;
		
// alpha_p   id: alpha
	alpha_p=0;
		
// z_s   id: z
	z_s=0;
		



xdot=[
//x(1)   ID: EmptySet  initialValue: 1
	0;
	
//x(2)   ID: u  initialValue: 0
	        
          ((k4_p*( x(3) - x(2) )*( ( (k4prime_p/k4_p) ) +(power( x(2) ,( 2 )))))-(k6_p* x(2) ))
        ;
	
//x(3)   ID: v  initialValue: 0
	        
          (kappa_p-(k6_p* x(2) ))
        
	];


	
endfunction
        x0=[1;0;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)'],[1;2;3])

//real_variable:
	
	
//x(1)   id: EmptySet  initialValue: 1
	
//x(2)   id: u  initialValue: 0
	
//x(3)   id: v  initialValue: 0