
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_default   id: default
	compartment_default=1;
		
// compartment_nucleus   id: nucleus
	compartment_nucleus=1;
		
// Kon_P1_p   id: Kon_P1
	Kon_P1_p=60000;
		
// Koff_P1_p   id: Koff_P1
	Koff_P1_p=100;
		
// Kon_G1_p   id: Kon_G1
	Kon_G1_p=2E10;
		
// Koff_G1_p   id: Koff_G1
	Koff_G1_p=100;
		
// Kon_NG1_p   id: Kon_NG1
	Kon_NG1_p=2E10;
		
// Koff_NG1_p   id: Koff_NG1
	Koff_NG1_p=20000;
		
// parameter_1_p   id: parameter_1
	parameter_1_p=0;
		



xdot=[
//x(1)   ID: S1  initialValue: 1E-10
	(1/compartment_nucleus)*( (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) );
	
//x(2)   ID: DNA_000  initialValue: 1E-10
	(1/compartment_nucleus)*( (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) );
	
//x(3)   ID: DNA_100  initialValue: 0
	(1/compartment_nucleus)*( (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) + (1)*(1)* (compartment_nucleus*()) );
	
//x(4)   ID: DNA_010  initialValue: 0
	(1/compartment_nucleus)*( (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) + (1)*(1)* (compartment_nucleus*()) );
	
//x(5)   ID: DNA_001  initialValue: 0
	(1/compartment_nucleus)*( (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) + (1)*(1)* (compartment_nucleus*()) );
	
//x(6)   ID: DNA_110  initialValue: 0
	(1/compartment_nucleus)*( (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) + (1)*(1)* (compartment_nucleus*()) + (1)*(1)* (compartment_nucleus*()) );
	
//x(7)   ID: DNA_101  initialValue: 0
	(1/compartment_nucleus)*( (-1)*(1)* (compartment_nucleus*()) + (1)*(1)* (compartment_nucleus*()) + (1)*(1)* (compartment_nucleus*()) );
	
//x(8)   ID: DNA_011  initialValue: 0
	(1/compartment_nucleus)*( (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) + (1)*(1)* (compartment_nucleus*()) + (1)*(1)* (compartment_nucleus*()) );
	
//x(9)   ID: DNA_111  initialValue: 0
	(1/compartment_nucleus)*( (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) + (1)*(1)* (compartment_nucleus*()) + (1)*(1)* (compartment_nucleus*()) + (1)*(1)* (compartment_nucleus*()) );
	
//x(10)   ID: DNA_1B10  initialValue: 0
	(1/compartment_nucleus)*( (1)*(1)* (compartment_nucleus*()) );
	
//x(11)   ID: DNA_01B1  initialValue: 0
	(1/compartment_nucleus)*( (1)*(1)* (compartment_nucleus*()) );
	
//x(12)   ID: DNA_1B11  initialValue: 0
	(1/compartment_nucleus)*( (-1)*(1)* (compartment_nucleus*()) + (1)*(1)* (compartment_nucleus*()) );
	
//x(13)   ID: DNA_11B1  initialValue: 0
	(1/compartment_nucleus)*( (-1)*(1)* (compartment_nucleus*()) + (1)*(1)* (compartment_nucleus*()) );
	
//x(14)   ID: DNA_1B1B1  initialValue: 0
	(1/compartment_nucleus)*( (1)*(1)* (compartment_nucleus*()) + (1)*(1)* (compartment_nucleus*()) )
	];


	
endfunction
        x0=[1E-10;1E-10;0;0;0;0;0;0;0;0;0;0;0;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)' 'x(14)'],[1;2;3;4;5;6;7;8;9;10;11;12;13;14])

//real_variable:
	
	
//x(1)   id: S1  initialValue: 1E-10
	
//x(2)   id: DNA_000  initialValue: 1E-10
	
//x(3)   id: DNA_100  initialValue: 0
	
//x(4)   id: DNA_010  initialValue: 0
	
//x(5)   id: DNA_001  initialValue: 0
	
//x(6)   id: DNA_110  initialValue: 0
	
//x(7)   id: DNA_101  initialValue: 0
	
//x(8)   id: DNA_011  initialValue: 0
	
//x(9)   id: DNA_111  initialValue: 0
	
//x(10)   id: DNA_1B10  initialValue: 0
	
//x(11)   id: DNA_01B1  initialValue: 0
	
//x(12)   id: DNA_1B11  initialValue: 0
	
//x(13)   id: DNA_11B1  initialValue: 0
	
//x(14)   id: DNA_1B1B1  initialValue: 0