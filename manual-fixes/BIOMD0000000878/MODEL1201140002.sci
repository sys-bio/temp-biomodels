
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_COMpartment   id: COMpartment
	compartment_COMpartment=1;
		
// time_environment_p   id: time_environment
	time_environment_p=0;
		
// r_1_p   id: r_1
	r_1_p=0.2;
		
// r_2_p   id: r_2
	r_2_p=0.1;
		
// c_1_p   id: c_1
	c_1_p=0.1;
		
// r_3_p   id: r_3
	r_3_p=0.1;
		
// r_4_p   id: r_4
	r_4_p=0.1;
		
// c_2_p   id: c_2
	c_2_p=0.1;
		
// r_5_p   id: r_5
	r_5_p=0.1;
		
// r_6_p   id: r_6
	r_6_p=0.1;
		
// r_7_p   id: r_7
	r_7_p=0.05;
		
// z_hat_p   id: z_hat
	z_hat_p=2;
		
// y_hat_p   id: y_hat
	y_hat_p=1.24;
		
// epsilon_p   id: epsilon
	epsilon_p=0.1;
		



xdot=[
//x(1)   ID: x  initialValue: 4
	
        ( x(3) *((r_1_p* x(2) )+((r_2_p)* x(1) )+c_1_p))
      ;
	
//x(2)   ID: y  initialValue: 0
	
        (epsilon_p*(((r_3_p/ x(3) )-(r_4_p* x(1) ))+c_2_p))
      ;
	
//x(3)   ID: z  initialValue: 1
	
        (((r_5_p*( x(2) -y_hat_p)*(z_hat_p- x(3) ))+(r_6_p* x(3) *(z_hat_p- x(3) )))-(r_7_p* x(3) ))
      
	];


	
endfunction
        x0=[4;0;1];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)'],[1;2;3])

//real_variable:
	
	
//x(1)   id: x  initialValue: 4
	
//x(2)   id: y  initialValue: 0
	
//x(3)   id: z  initialValue: 1