
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_compartment   id: compartment
	compartment_compartment=1;
		
// V_in_p   id: V_in
	V_in_p=0.36;
		
// k1_p   id: k1
	k1_p=0.02;
		
// kp_p   id: kp
	kp_p=6;
		
// km_p   id: km
	km_p=13;
		
// epsilon_p   id: epsilon
	epsilon_p=0.01;
		
// Tsum_p   id: Tsum
	Tsum_p=0;
		
// Tdiff_p   id: Tdiff
	Tdiff_p=0;
		



xdot=[
//x(1)   ID: G1  initialValue: 6.6
	        
          (V_in_p-(k1_p* x(1) * x(2) ))
        ;
	
//x(2)   ID: T1  initialValue: 7.6
	        
          (((( 2 )*k1_p* x(2) * x(1) )-((kp_p* x(2) )/(km_p+ x(2) )))+(epsilon_p*( x(4) - x(2) )))
        ;
	
//x(3)   ID: G2  initialValue: 10.3
	        
          (V_in_p-(k1_p* x(3) * x(4) ))
        ;
	
//x(4)   ID: T2  initialValue: 0.41
	        
          (((( 2 )*k1_p* x(3) * x(4) )-((kp_p* x(4) )/(km_p+ x(4) )))-(epsilon_p*( x(4) - x(2) )))
        
	];


	
endfunction
        x0=[6.6;7.6;10.3;0.41];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)'],[1;2;3;4])

//real_variable:
	
	
//x(1)   id: G1  initialValue: 6.6
	
//x(2)   id: T1  initialValue: 7.6
	
//x(3)   id: G2  initialValue: 10.3
	
//x(4)   id: T2  initialValue: 0.41