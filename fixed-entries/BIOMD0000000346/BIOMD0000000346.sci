
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_compartment   id: compartment
	compartment_compartment=1;
		
// a_p   id: a
	a_p=0.7;
		
// b_p   id: b
	b_p=0.8;
		
// c_p   id: c
	c_p=3;
		



xdot=[
//x(1)   ID: z  initialValue: -0.4
	0;
	
//x(2)   ID: x  initialValue: -1
	        
          (c_p*( x(2) +(((power( x(2) ,( 3 )))/( 3 )))+ x(3) + x(1) ))
        ;
	
//x(3)   ID: y  initialValue: 0.5
	        
          (((( 1 )/c_p))*( x(2) +(a_p)+(b_p* x(3) )))
        
	];


	
endfunction
        x0=[-0.4;-1;0.5];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)'],[1;2;3])

//real_variable:
	
	
//x(1)   id: z  initialValue: -0.4
	
//x(2)   id: x  initialValue: -1
	
//x(3)   id: y  initialValue: 0.5