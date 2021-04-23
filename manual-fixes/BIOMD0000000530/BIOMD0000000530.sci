
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_compartment_1   id: compartment_1
	compartment_compartment_1=1;
		
// k1_reaction_1   id: k1     reactionID: reaction_1
	k1_reaction_1=0.00045298;
	
// k1_reaction_2   id: k1     reactionID: reaction_2
	k1_reaction_2=1.30837E-5;
	
// k1_reaction_3   id: k1     reactionID: reaction_3
	k1_reaction_3=0.999534;
	
// k_syn_mRNA_reaction_4   id: k_syn_mRNA     reactionID: reaction_4
	k_syn_mRNA_reaction_4=1;
	
// k_syn_miRNA_1_reaction_5   id: k_syn_miRNA_1     reactionID: reaction_5
	k_syn_miRNA_1_reaction_5=1;
	
// k_syn_miRNA_2_reaction_6   id: k_syn_miRNA_2     reactionID: reaction_6
	k_syn_miRNA_2_reaction_6=1;
	
// k1_reaction_7   id: k1     reactionID: reaction_7
	k1_reaction_7=1;
	
// k1_reaction_8   id: k1     reactionID: reaction_8
	k1_reaction_8=1;
	
// k1_reaction_9   id: k1     reactionID: reaction_9
	k1_reaction_9=1;
	
// k1_reaction_10   id: k1     reactionID: reaction_10
	k1_reaction_10=0.249955;
	
// k1_reaction_11   id: k1     reactionID: reaction_11
	k1_reaction_11=0.241033;
	
// k1_reaction_12   id: k1     reactionID: reaction_12
	k1_reaction_12=0.187796;
	
// k1_reaction_13   id: k1     reactionID: reaction_13
	k1_reaction_13=1;
	
// k1_reaction_14   id: k1     reactionID: reaction_14
	k1_reaction_14=1;
	
// k1_reaction_15   id: k1     reactionID: reaction_15
	k1_reaction_15=1;
	
// k_syn_prot_reaction_16   id: k_syn_prot     reactionID: reaction_16
	k_syn_prot_reaction_16=1;
	
// k1_reaction_17   id: k1     reactionID: reaction_17
	k1_reaction_17=1;
	



xdot=[
//x(1)   ID: species_1  initialValue: 1
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*k1_reaction_1* x(1) * x(2) ) + (-1)*(1)* (compartment_compartment_1*k1_reaction_2* x(1) * x(3) ) + (-1)*(1)* (compartment_compartment_1*k1_reaction_3* x(1) * x(2) * x(3) ) + (-1)*(1)* (compartment_compartment_1*k1_reaction_7* x(1) ) + (1)*(1)* (compartment_compartment_1*()) + (1)*(1)* (compartment_compartment_1*k1_reaction_10* x(4) ) + (1)*(1)* (compartment_compartment_1*k1_reaction_11* x(5) ) + (1)*(1)* (compartment_compartment_1*k1_reaction_12* x(6) ) );
	
//x(2)   ID: species_2  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*k1_reaction_1* x(1) * x(2) ) + (-1)*(1)* (compartment_compartment_1*k1_reaction_3* x(1) * x(2) * x(3) ) + (-1)*(1)* (compartment_compartment_1*k1_reaction_8* x(2) ) + (1)*(1)* (compartment_compartment_1*()) + (1)*(1)* (compartment_compartment_1*k1_reaction_10* x(4) ) + (1)*(1)* (compartment_compartment_1*k1_reaction_12* x(6) ) );
	
//x(3)   ID: species_3  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*k1_reaction_2* x(1) * x(3) ) + (-1)*(1)* (compartment_compartment_1*k1_reaction_3* x(1) * x(2) * x(3) ) + (-1)*(1)* (compartment_compartment_1*k1_reaction_9* x(3) ) + (1)*(1)* (compartment_compartment_1*()) + (1)*(1)* (compartment_compartment_1*k1_reaction_11* x(5) ) + (1)*(1)* (compartment_compartment_1*k1_reaction_12* x(6) ) );
	
//x(4)   ID: species_4  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*k1_reaction_10* x(4) ) + (-1)*(1)* (compartment_compartment_1*k1_reaction_13* x(4) ) + (1)*(1)* (compartment_compartment_1*k1_reaction_1* x(1) * x(2) ) );
	
//x(5)   ID: species_5  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*k1_reaction_11* x(5) ) + (-1)*(1)* (compartment_compartment_1*k1_reaction_14* x(5) ) + (1)*(1)* (compartment_compartment_1*k1_reaction_2* x(1) * x(3) ) );
	
//x(6)   ID: species_6  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*k1_reaction_12* x(6) ) + (-1)*(1)* (compartment_compartment_1*k1_reaction_15* x(6) ) + (1)*(1)* (compartment_compartment_1*k1_reaction_3* x(1) * x(2) * x(3) ) );
	
//x(7)   ID: species_7  initialValue: 1
	0;
	
//x(8)   ID: species_8  initialValue: 1
	0;
	
//x(9)   ID: species_9  initialValue: 1
	0;
	
//x(10)   ID: species_10  initialValue: 1
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*k1_reaction_17* x(10) ) + (1)*(1)* (compartment_compartment_1*()) )
	];


	
endfunction
        x0=[1;0;0;0;0;0;1;1;1;1];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)'],[1;2;3;4;5;6;7;8;9;10])

//real_variable:
	
	
//x(1)   id: species_1  initialValue: 1
	
//x(2)   id: species_2  initialValue: 0
	
//x(3)   id: species_3  initialValue: 0
	
//x(4)   id: species_4  initialValue: 0
	
//x(5)   id: species_5  initialValue: 0
	
//x(6)   id: species_6  initialValue: 0
	
//x(7)   id: species_7  initialValue: 1
	
//x(8)   id: species_8  initialValue: 1
	
//x(9)   id: species_9  initialValue: 1
	
//x(10)   id: species_10  initialValue: 1