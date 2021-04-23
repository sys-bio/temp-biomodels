
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_compartment_1   id: compartment_1
	compartment_compartment_1=1;
		
// parameter_1_p   id: parameter_1
	parameter_1_p=0.035;
		
// parameter_2_p   id: parameter_2
	parameter_2_p=0.35;
		
// parameter_3_p   id: parameter_3
	parameter_3_p=1.4;
		
// parameter_4_p   id: parameter_4
	parameter_4_p=0.035;
		
// parameter_5_p   id: parameter_5
	parameter_5_p=24.5;
		
// parameter_6_p   id: parameter_6
	parameter_6_p=0.005;
		
// parameter_7_p   id: parameter_7
	parameter_7_p=0.35;
		
// parameter_8_p   id: parameter_8
	parameter_8_p=1.05;
		
// parameter_9_p   id: parameter_9
	parameter_9_p=17.5;
		
// parameter_10_p   id: parameter_10
	parameter_10_p=0.0245;
		
// parameter_11_p   id: parameter_11
	parameter_11_p=0.35;
		
// parameter_12_p   id: parameter_12
	parameter_12_p=24.5;
		
// parameter_13_p   id: parameter_13
	parameter_13_p=0.0105;
		
// parameter_14_p   id: parameter_14
	parameter_14_p=0.035;
		
// parameter_15_p   id: parameter_15
	parameter_15_p=0.0035;
		
// parameter_16_p   id: parameter_16
	parameter_16_p=0.07;
		
// parameter_17_p   id: parameter_17
	parameter_17_p=0.0035;
		
// parameter_18_p   id: parameter_18
	parameter_18_p=24.5;
		
// parameter_19_p   id: parameter_19
	parameter_19_p=0.21;
		
// parameter_20_p   id: parameter_20
	parameter_20_p=0.0525;
		
// parameter_21_p   id: parameter_21
	parameter_21_p=0.0175;
		
// parameter_22_p   id: parameter_22
	parameter_22_p=0.0035;
		
// parameter_23_p   id: parameter_23
	parameter_23_p=0.035;
		



xdot=[
//x(1)   ID: species_1  initialValue: 0.003
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_1_p* x(3) * x(1) ) + (-1)*(1)* (compartment_compartment_1*parameter_3_p* x(4) * x(1) ) + (-1)*(1)* (compartment_compartment_1*parameter_21_p* x(1) ) + (1)*(1)* (compartment_compartment_1*()) );
	
//x(2)   ID: species_2  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_2_p* x(2) * x(3) ) + (-1)*(1)* (compartment_compartment_1*parameter_4_p* x(2) * x(5) ) + (-1)*(1)* (compartment_compartment_1*((parameter_9_p* x(7) * x(2) )-(parameter_10_p* x(9) ))) + (-1)*(1)* (compartment_compartment_1*((parameter_12_p* x(10) * x(2) )-(parameter_13_p* x(11) ))) + (-1)*(1)* (compartment_compartment_1*parameter_20_p* x(2) ) + (1)*(1)* (compartment_compartment_1*parameter_1_p* x(3) * x(1) ) + (1)*(1)* (compartment_compartment_1*parameter_2_p* x(2) * x(3) ) + (1)*(1)* (compartment_compartment_1*parameter_3_p* x(4) * x(1) ) + (1)*(1)* (compartment_compartment_1*parameter_4_p* x(2) * x(5) ) + (1)*(1)* (compartment_compartment_1*parameter_11_p* x(9) ) );
	
//x(3)   ID: species_3  initialValue: 0.001
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_1_p* x(3) * x(1) ) + (-1)*(1)* (compartment_compartment_1*parameter_2_p* x(2) * x(3) ) + (-1)*(1)* (compartment_compartment_1*((parameter_16_p* x(8) * x(3) )-(parameter_17_p* x(13) ))) + (-1)*(1)* (compartment_compartment_1*parameter_20_p* x(3) ) + (1)*(1)* (compartment_compartment_1*parameter_1_p* x(3) * x(1) ) + (1)*(1)* (compartment_compartment_1*()) );
	
//x(4)   ID: species_4  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_3_p* x(4) * x(1) ) + (-1)*(1)* (compartment_compartment_1*((parameter_14_p* x(8) * x(4) )-(parameter_15_p* x(12) ))) + (-1)*(1)* (compartment_compartment_1*parameter_20_p* x(4) ) + (1)*(1)* (compartment_compartment_1*parameter_2_p* x(2) * x(3) ) + (1)*(1)* (compartment_compartment_1*parameter_3_p* x(4) * x(1) ) );
	
//x(5)   ID: species_5  initialValue: 0.001
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_4_p* x(2) * x(5) ) + (-1)*(1)* (compartment_compartment_1*parameter_5_p* x(7) * x(5) ) + (-1)*(1)* (compartment_compartment_1*parameter_6_p* x(5) ) + (-1)*(1)* (compartment_compartment_1*parameter_21_p* x(5) ) + (1)*(1)* (compartment_compartment_1*()) );
	
//x(6)   ID: species_6  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_7_p* x(6) ) + (-1)*(1)* (compartment_compartment_1*parameter_8_p* x(6) ) + (-1)*(1)* (compartment_compartment_1*parameter_21_p* x(6) ) + (-1)*(1)* (compartment_compartment_1*parameter_19_p* x(6) ) + (1)*(1)* (compartment_compartment_1*parameter_4_p* x(2) * x(5) ) + (1)*(1)* (compartment_compartment_1*parameter_5_p* x(7) * x(5) ) + (1)*(1)* (compartment_compartment_1*parameter_6_p* x(5) ) + (1)*(1)* (compartment_compartment_1*parameter_7_p* x(6) ) + (1)*(1)* (compartment_compartment_1*parameter_8_p* x(6) ) );
	
//x(7)   ID: species_7  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_5_p* x(7) * x(5) ) + (-1)*(1)* (compartment_compartment_1*((parameter_9_p* x(7) * x(2) )-(parameter_10_p* x(9) ))) + (-1)*(1)* (compartment_compartment_1*parameter_21_p* x(7) ) + (1)*(1)* (compartment_compartment_1*parameter_7_p* x(6) ) );
	
//x(8)   ID: species_8  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((parameter_14_p* x(8) * x(4) )-(parameter_15_p* x(12) ))) + (-1)*(1)* (compartment_compartment_1*((parameter_16_p* x(8) * x(3) )-(parameter_17_p* x(13) ))) + (-1)*(1)* (compartment_compartment_1*parameter_21_p* x(8) ) + (1)*(1)* (compartment_compartment_1*parameter_8_p* x(6) ) );
	
//x(9)   ID: species_9  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_11_p* x(9) ) + (-1)*(1)* (compartment_compartment_1*parameter_21_p* x(9) ) + (-1)*(1)* (compartment_compartment_1*parameter_18_p* x(9) ) + (1)*(1)* (compartment_compartment_1*((parameter_9_p* x(7) * x(2) )-(parameter_10_p* x(9) ))) );
	
//x(10)   ID: species_10  initialValue: 0.005
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((parameter_12_p* x(10) * x(2) )-(parameter_13_p* x(11) ))) + (-1)*(1)* (compartment_compartment_1*parameter_21_p* x(10) ) + (1)*(1)* (compartment_compartment_1*()) );
	
//x(11)   ID: species_11  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_21_p* x(11) ) + (1)*(1)* (compartment_compartment_1*((parameter_12_p* x(10) * x(2) )-(parameter_13_p* x(11) ))) );
	
//x(12)   ID: species_12  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_21_p* x(12) ) + (1)*(1)* (compartment_compartment_1*((parameter_14_p* x(8) * x(4) )-(parameter_15_p* x(12) ))) );
	
//x(13)   ID: species_13  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_21_p* x(13) ) + (1)*(1)* (compartment_compartment_1*((parameter_16_p* x(8) * x(3) )-(parameter_17_p* x(13) ))) )
	];


	
endfunction
        x0=[0.003;0;0.001;0;0.001;0;0;0;0;0.005;0;0;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)'],[1;2;3;4;5;6;7;8;9;10;11;12;13])

//real_variable:
	
	
//x(1)   id: species_1  initialValue: 0.003
	
//x(2)   id: species_2  initialValue: 0
	
//x(3)   id: species_3  initialValue: 0.001
	
//x(4)   id: species_4  initialValue: 0
	
//x(5)   id: species_5  initialValue: 0.001
	
//x(6)   id: species_6  initialValue: 0
	
//x(7)   id: species_7  initialValue: 0
	
//x(8)   id: species_8  initialValue: 0
	
//x(9)   id: species_9  initialValue: 0
	
//x(10)   id: species_10  initialValue: 0.005
	
//x(11)   id: species_11  initialValue: 0
	
//x(12)   id: species_12  initialValue: 0
	
//x(13)   id: species_13  initialValue: 0