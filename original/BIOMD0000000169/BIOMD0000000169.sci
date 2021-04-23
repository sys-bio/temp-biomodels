
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_cell_1   id: cell_1
	compartment_cell_1=1;
		
// k1p_1_p   id: k1p_1
	k1p_1_p=0.5;
		
// k1pp_1_p   id: k1pp_1
	k1pp_1_p=0.5;
		
// k1_1_p   id: k1_1
	k1_1_p=0.1;
		
// k2_1_p   id: k2_1
	k2_1_p=0.1;
		
// kminus2_1_p   id: kminus2_1
	kminus2_1_p=1;
		
// k3_1_p   id: k3_1
	k3_1_p=1.42;
		
// k3p_1_p   id: k3p_1
	k3p_1_p=0;
		
// k4_1_p   id: k4_1
	k4_1_p=1E-6;
		
// kminus4_1_p   id: kminus4_1
	kminus4_1_p=0.016;
		
// kminus1_1_p   id: kminus1_1
	kminus1_1_p=0.001;
		
// k5_1_p   id: k5_1
	k5_1_p=0.02;
		
// k6_1_p   id: k6_1
	k6_1_p=0.018;
		
// kminus6_1_p   id: kminus6_1
	kminus6_1_p=5;
		
// k7_1_p   id: k7_1
	k7_1_p=1E-5;
		
// k8_1_p   id: k8_1
	k8_1_p=2;
		
// k9_1_p   id: k9_1
	k9_1_p=2;
		
// K10_1_p   id: K10_1
	K10_1_p=0.035;
		
// k17_1_p   id: k17_1
	k17_1_p=3.5;
		
// k18_1_p   id: k18_1
	k18_1_p=1E-5;
		
// k19_1_p   id: k19_1
	k19_1_p=0.05;
		
// k20_1_p   id: k20_1
	k20_1_p=0.01;
		
// k21_1_p   id: k21_1
	k21_1_p=0.1;
		
// k22_1_p   id: k22_1
	k22_1_p=0.001;
		
// k23_1_p   id: k23_1
	k23_1_p=0.2;
		
// k24_1_p   id: k24_1
	k24_1_p=0.1;
		
// k25_1_p   id: k25_1
	k25_1_p=0.01;
		
// k25p_1_p   id: k25p_1
	k25p_1_p=0.02;
		
// k26_1_p   id: k26_1
	k26_1_p=0.01;
		
// k26p_1_p   id: k26p_1
	k26p_1_p=0.1;
		
// k27_1_p   id: k27_1
	k27_1_p=0.01;
		
// k28_1_p   id: k28_1
	k28_1_p=0.01;
		
// k29_1_p   id: k29_1
	k29_1_p=0.001;
		



xdot=[
//x(1)   ID: Y3_1  initialValue: 1.95
	(1/compartment_cell_1)*( (-1)*(1)* ((k1p_1_p* x(7) * x(1) )+(k1pp_1_p* x(11) * x(1) )+(k1_1_p* x(5) * x(1) )) + (1)*(1)* () );
	
//x(2)   ID: Y4_1  initialValue: 0
	(1/compartment_cell_1)*( (-1)*(1)* () + (-1)*(1)* () + (1)*(1)* ((k1p_1_p* x(7) * x(1) )+(k1pp_1_p* x(11) * x(1) )+(k1_1_p* x(5) * x(1) )) + (1)*(1)* k4_1_p + (1)*(1)* (k18_1_p* x(2) ) );
	
//x(3)   ID: Y11_1  initialValue: 0.01
	(1/compartment_cell_1)*( (-1)*(1)* () + (1)*(1)* ((k1p_1_p* x(7) * x(1) )+(k1pp_1_p* x(11) * x(1) )+(k1_1_p* x(5) * x(1) )) );
	
//x(4)   ID: Y2_1  initialValue: 0.01
	(1/compartment_cell_1)*( (-1)*(1)* (k2_1_p* x(5) * x(4) ) + (-1)*(1)* () + (1)*(1)* (kminus2_1_p* x(5) ) + (1)*(1)* ((k3_1_p* x(2) )+k3p_1_p) );
	
//x(5)   ID: Y1_1  initialValue: 0
	(1/compartment_cell_1)*( (-1)*(1)* (kminus2_1_p* x(5) ) + (-1)*(1)* () + (-1)*(1)* (k21_1_p* x(5) * x(5) ) + (1)*(1)* (k2_1_p* x(5) * x(4) ) + (1)*(1)* () );
	
//x(6)   ID: Y5_1  initialValue: 0.05
	(1/compartment_cell_1)*( (-1)*(1)* () + (-1)*(1)* () + (1)*(1)* (k26_1_p/(( 1 )+(k26p_1_p* x(10) ))) + (1)*(1)* () + (1)*(1)* () );
	
//x(7)   ID: Y6_1  initialValue: 0
	(1/compartment_cell_1)*( (-1)*(1)* () + (-1)*(1)* () + (-1)*(1)* () + (1)*(1)* () + (1)*(1)* () );
	
//x(8)   ID: Y7_1  initialValue: 15
	(1/compartment_cell_1)*( (-1)*(1)* (k8_1_p* x(8) * x(5) ) + (-1)*(1)* () + (-1)*(1)* () + (-1)*(1)* () + (1)*(1)* () + (1)*(1)* () + (1)*(1)* () );
	
//x(9)   ID: Y8_1  initialValue: 1
	(1/compartment_cell_1)*( (-1)*(1)* () + (1)*(1)* () );
	
//x(10)   ID: Y10_1  initialValue: 5
	(1/compartment_cell_1)*( (-1)*(1)* () + (-1)*(1)* () + (1)*(1)* () + (1)*(1)* (k25_1_p/(( 1 )+(k25p_1_p* x(6) ))) );
	
//x(11)   ID: Y9_1  initialValue: 0
	(1/compartment_cell_1)*( (-1)*(1)* () + (1)*(1)* () )
	];


	
endfunction
        x0=[1.95;0;0.01;0.01;0;0.05;0;15;1;5;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)'],[1;2;3;4;5;6;7;8;9;10;11])

//real_variable:
	
	
//x(1)   id: Y3_1  initialValue: 1.95
	
//x(2)   id: Y4_1  initialValue: 0
	
//x(3)   id: Y11_1  initialValue: 0.01
	
//x(4)   id: Y2_1  initialValue: 0.01
	
//x(5)   id: Y1_1  initialValue: 0
	
//x(6)   id: Y5_1  initialValue: 0.05
	
//x(7)   id: Y6_1  initialValue: 0
	
//x(8)   id: Y7_1  initialValue: 15
	
//x(9)   id: Y8_1  initialValue: 1
	
//x(10)   id: Y10_1  initialValue: 5
	
//x(11)   id: Y9_1  initialValue: 0