
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_compartment_0   id: compartment_0
	compartment_compartment_0=1;
		
// compartment_compartment_1   id: compartment_1
	compartment_compartment_1=1;
		
// parameter_0_p   id: parameter_0
	parameter_0_p=1.4;
		
// parameter_1_p   id: parameter_1
	parameter_1_p=0.9;
		
// parameter_2_p   id: parameter_2
	parameter_2_p=2.5;
		
// parameter_3_p   id: parameter_3
	parameter_3_p=1.5;
		
// parameter_4_p   id: parameter_4
	parameter_4_p=0.6;
		
// parameter_5_p   id: parameter_5
	parameter_5_p=0.8;
		
// parameter_6_p   id: parameter_6
	parameter_6_p=2;
		
// parameter_7_p   id: parameter_7
	parameter_7_p=1.3;
		
// parameter_8_p   id: parameter_8
	parameter_8_p=0.29;
		
// parameter_9_p   id: parameter_9
	parameter_9_p=1;
		
// parameter_10_p   id: parameter_10
	parameter_10_p=0.6;
		
// parameter_11_p   id: parameter_11
	parameter_11_p=3.1;
		
// parameter_12_p   id: parameter_12
	parameter_12_p=33;
		
// parameter_13_p   id: parameter_13
	parameter_13_p=4.5;
		



xdot=[
//x(1)   ID: species_0  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0*parameter_11_p* x(1) ) + (1)*(1)* (compartment_compartment_0*parameter_10_p* x(5) ) );
	
//x(2)   ID: species_1  initialValue: 1
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_9_p* x(2) * x(4) ) + (1)*(1)* (compartment_compartment_1*parameter_8_p* x(5) ) );
	
//x(3)   ID: species_2  initialValue: 1
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_3_p* x(3) ) + (1)*(1)* (compartment_compartment_1*parameter_2_p* x(2) ) );
	
//x(4)   ID: species_3  initialValue: 2.5
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_7_p* x(4) * x(7) ) + (1)*(1)* (compartment_compartment_1*parameter_6_p) );
	
//x(5)   ID: species_4  initialValue: 1.4
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_1_p* x(5) ) + (1)*(1)* (compartment_compartment_1*parameter_0_p* x(7) ) );
	
//x(6)   ID: species_5  initialValue: 1.5
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_13_p* x(6) * x(3) ) + (1)*(1)* (compartment_compartment_1*parameter_12_p* x(1) ) );
	
//x(7)   ID: species_6  initialValue: 1.6
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_5_p* x(7) * x(3) ) + (1)*(1)* (compartment_compartment_1*parameter_4_p* x(6) ) )
	];


	
endfunction
        x0=[0;1;1;2.5;1.4;1.5;1.6];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)'],[1;2;3;4;5;6;7])

//real_variable:
	
	
//x(1)   id: species_0  initialValue: 0
	
//x(2)   id: species_1  initialValue: 1
	
//x(3)   id: species_2  initialValue: 1
	
//x(4)   id: species_3  initialValue: 2.5
	
//x(5)   id: species_4  initialValue: 1.4
	
//x(6)   id: species_5  initialValue: 1.5
	
//x(7)   id: species_6  initialValue: 1.6