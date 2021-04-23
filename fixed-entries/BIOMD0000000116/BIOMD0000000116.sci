
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_compartment_0   id: compartment_0
	compartment_compartment_0=1;
		
// parameter_0_p   id: parameter_0
	parameter_0_p=10;
		
// parameter_1_p   id: parameter_1
	parameter_1_p=10;
		
// parameter_2_p   id: parameter_2
	parameter_2_p=10;
		
// parameter_3_p   id: parameter_3
	parameter_3_p=10;
		
// parameter_4_p   id: parameter_4
	parameter_4_p=10;
		
// parameter_5_p   id: parameter_5
	parameter_5_p=10;
		
// parameter_6_p   id: parameter_6
	parameter_6_p=1;
		
// parameter_7_p   id: parameter_7
	parameter_7_p=8.5;
		
// parameter_8_p   id: parameter_8
	parameter_8_p=1;
		
// parameter_9_p   id: parameter_9
	parameter_9_p=1;
		
// parameter_10_p   id: parameter_10
	parameter_10_p=1;
		
// parameter_11_p   id: parameter_11
	parameter_11_p=1;
		
// parameter_12_p   id: parameter_12
	parameter_12_p=0;
		
// parameter_13_p   id: parameter_13
	parameter_13_p=1;
		
// parameter_14_p   id: parameter_14
	parameter_14_p=5;
		
// parameter_15_p   id: parameter_15
	parameter_15_p=1;
		
// parameter_16_p   id: parameter_16
	parameter_16_p=1;
		
// parameter_17_p   id: parameter_17
	parameter_17_p=1;
		
// parameter_18_p   id: parameter_18
	parameter_18_p=1;
		
// parameter_19_p   id: parameter_19
	parameter_19_p=1;
		



xdot=[
//x(1)   ID: species_0  initialValue: 1.023667
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0*parameter_9_p* x(1) *(parameter_1_p- x(2) )) + (-1)*(1)* (compartment_compartment_0*parameter_12_p* x(1) *(parameter_4_p- x(5) )) + (1)*(1)* (((compartment_compartment_0*parameter_6_p*parameter_7_p)/(( 1 )+(parameter_7_p/parameter_8_p)))*(parameter_0_p- x(1) )) );
	
//x(2)   ID: species_1  initialValue: 2.154231
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0*parameter_10_p* x(2) *(parameter_2_p- x(3) )) + (1)*(1)* (compartment_compartment_0*parameter_9_p* x(1) *(parameter_1_p- x(2) )) + (1)*(1)* (compartment_compartment_0*parameter_12_p* x(4) *(parameter_1_p- x(2) )) );
	
//x(3)   ID: species_2  initialValue: 6.271793
	(1/compartment_compartment_0)*( (-1)*(1)* ((compartment_compartment_0*parameter_11_p* x(6) * x(3) )/(( 1 )+( x(3) /parameter_13_p))) + (1)*(1)* (compartment_compartment_0*parameter_10_p* x(2) *(parameter_2_p- x(3) )) );
	
//x(4)   ID: species_3  initialValue: 3.203692
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0*parameter_17_p* x(4) *(parameter_4_p- x(5) )) + (-1)*(1)* (compartment_compartment_0*parameter_12_p* x(4) *(parameter_1_p- x(2) )) + (1)*(1)* (((compartment_compartment_0*parameter_15_p*parameter_14_p)/(( 1 )+(parameter_14_p/parameter_16_p)))*(parameter_3_p- x(4) )) );
	
//x(5)   ID: species_4  initialValue: 8.232192
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0*parameter_18_p* x(5) *(parameter_5_p- x(6) )) + (1)*(1)* (compartment_compartment_0*parameter_17_p* x(4) *(parameter_4_p- x(5) )) + (1)*(1)* (compartment_compartment_0*parameter_12_p* x(1) *(parameter_4_p- x(5) )) );
	
//x(6)   ID: species_5  initialValue: 9.312021
	(1/compartment_compartment_0)*( (-1)*(1)* ((compartment_compartment_0*parameter_11_p* x(6) * x(3) )/(( 1 )+( x(6) /parameter_19_p))) + (1)*(1)* (compartment_compartment_0*parameter_18_p* x(5) *(parameter_5_p- x(6) )) )
	];


	
endfunction
        x0=[1.023667;2.154231;6.271793;3.203692;8.232192;9.312021];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)'],[1;2;3;4;5;6])

//real_variable:
	
	
//x(1)   id: species_0  initialValue: 1.023667
	
//x(2)   id: species_1  initialValue: 2.154231
	
//x(3)   id: species_2  initialValue: 6.271793
	
//x(4)   id: species_3  initialValue: 3.203692
	
//x(5)   id: species_4  initialValue: 8.232192
	
//x(6)   id: species_5  initialValue: 9.312021