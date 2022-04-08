
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_compartment_1   id: compartment_1
	compartment_compartment_1=1;
		
// mu1_p   id: mu1
	mu1_p=1;
		
// mu2_p   id: mu2
	mu2_p=0.1;
		
// mu3_p   id: mu3
	mu3_p=1;
		
// mu4_p   id: mu4
	mu4_p=1;
		
// k1_p   id: k1
	k1_p=1;
		
// k2_p   id: k2
	k2_p=1;
		
// k3_p   id: k3
	k3_p=1;
		
// k4_p   id: k4
	k4_p=1;
		
// mu5_p   id: mu5
	mu5_p=0;
		
// C_p   id: C
	C_p=0.001;
		



xdot=[
//x(1)   ID: Z1  initialValue: 5
	        
          ((((mu1_p* x(5) )+(mu5_p* x(7) )))* x(1) )
        ;
	
//x(2)   ID: Z2  initialValue: 10
	        
          ((mu2_p)*(( 1 )+C_p)* x(4) * x(2) )
        ;
	
//x(3)   ID: Z4  initialValue: 100
	        
          ((mu4_p)* x(6) * x(3) )
        ;
	
//x(4)   ID: E1  initialValue: 0
	        
          ((((mu1_p* x(5) )+(mu5_p* x(7) ))* x(1) )-(k1_p* x(4) ))
        ;
	
//x(5)   ID: E2  initialValue: 0
	        
          (((mu2_p* x(4) * x(2) )-(mu3_p* x(7) * x(5) ))-(k2_p* x(5) ))
        ;
	
//x(6)   ID: E3  initialValue: 0
	        
          (((mu2_p*C_p* x(4) * x(2) )+(mu3_p* x(7) * x(5) ))-(k3_p* x(6) ))
        ;
	
//x(7)   ID: E4  initialValue: 0
	        
          ((mu4_p* x(6) * x(3) )-(k4_p* x(7) ))
        
	];


	
endfunction
        x0=[5;10;100;0;0;0;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)'],[1;2;3;4;5;6;7])

//real_variable:
	
	
//x(1)   id: Z1  initialValue: 5
	
//x(2)   id: Z2  initialValue: 10
	
//x(3)   id: Z4  initialValue: 100
	
//x(4)   id: E1  initialValue: 0
	
//x(5)   id: E2  initialValue: 0
	
//x(6)   id: E3  initialValue: 0
	
//x(7)   id: E4  initialValue: 0