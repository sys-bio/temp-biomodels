
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_compartment_1   id: compartment_1
	compartment_compartment_1=1;
		
// parameter_1_p   id: parameter_1
	parameter_1_p=0.084;
		
// parameter_2_p   id: parameter_2
	parameter_2_p=0.032;
		
// parameter_13_p   id: parameter_13
	parameter_13_p=2;
		
// species_5_s   id: species_5
	species_5_s=0;
		
// species_6_s   id: species_6
	species_6_s=0;
		
// k1_reaction_1   id: k1     reactionID: reaction_1
	k1_reaction_1=0.035;
	
// parameter_8_reaction_2   id: parameter_8     reactionID: reaction_2
	parameter_8_reaction_2=40;
	
// k1_reaction_3   id: k1     reactionID: reaction_3
	k1_reaction_3=0.9;
	
// k1_reaction_8   id: k1     reactionID: reaction_8
	k1_reaction_8=0;
	
// k2_reaction_8   id: k2     reactionID: reaction_8
	k2_reaction_8=0.016;
	
// k1_reaction_9   id: k1     reactionID: reaction_9
	k1_reaction_9=0.02;
	
// v_reaction_12   id: v     reactionID: reaction_12
	v_reaction_12=0.0032;
	
// v_reaction_13   id: v     reactionID: reaction_13
	v_reaction_13=0.01;
	
// v_reaction_14   id: v     reactionID: reaction_14
	v_reaction_14=0.01;
	



xdot=[
//x(1)   ID: species_1  initialValue: 0.01
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*k1_reaction_1* x(3) * x(1) ) + (-1)*(1)* (compartment_compartment_1*k1_reaction_3* x(4) * x(1) ) + (-1)*(1)* (compartment_compartment_1*parameter_2_p* x(1) ) + (1)*(1)* (compartment_compartment_1*()) );
	
//x(2)   ID: species_2  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*()) + (-1)*(1)* (compartment_compartment_1*parameter_1_p* x(2) ) + (-1)*(1)* (compartment_compartment_1*((k1_reaction_8* x(2) *species_5_s)-(k2_reaction_8*species_6_s))) + (1)*(1)* (compartment_compartment_1*k1_reaction_1* x(3) * x(1) ) + (1)*(1)* (compartment_compartment_1*()) + (1)*(1)* (compartment_compartment_1*k1_reaction_3* x(4) * x(1) ) + (1)*(1)* (compartment_compartment_1*k1_reaction_9*species_6_s) );
	
//x(3)   ID: species_3  initialValue: 0.002
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*k1_reaction_1* x(3) * x(1) ) + (-1)*(1)* (compartment_compartment_1*()) + (-1)*(1)* (compartment_compartment_1*parameter_1_p* x(3) ) + (1)*(1)* (compartment_compartment_1*k1_reaction_1* x(3) * x(1) ) + (1)*(1)* (compartment_compartment_1*()) );
	
//x(4)   ID: species_4  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*k1_reaction_3* x(4) * x(1) ) + (-1)*(1)* (compartment_compartment_1*parameter_1_p* x(4) ) + (1)*(1)* (compartment_compartment_1*()) + (1)*(1)* (compartment_compartment_1*k1_reaction_3* x(4) * x(1) ) )
	];


	
endfunction
        x0=[0.01;0;0.002;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)'],[1;2;3;4])

//real_variable:
	
	
//x(1)   id: species_1  initialValue: 0.01
	
//x(2)   id: species_2  initialValue: 0
	
//x(3)   id: species_3  initialValue: 0.002
	
//x(4)   id: species_4  initialValue: 0