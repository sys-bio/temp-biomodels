
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_cell   id: cell
	compartment_cell=1;
		
// k1_reaction_0   id: k1     reactionID: reaction_0
	k1_reaction_0=3.32E-18;
	
// k2_reaction_0   id: k2     reactionID: reaction_0
	k2_reaction_0=0.01;
	
// v_reaction_1   id: v     reactionID: reaction_1
	v_reaction_1=4;
	
// k1_reaction_2   id: k1     reactionID: reaction_2
	k1_reaction_2=0.0004;
	
// k1_reaction_3   id: k1     reactionID: reaction_3
	k1_reaction_3=1;
	
// k1_reaction_4   id: k1     reactionID: reaction_4
	k1_reaction_4=1E-5;
	
// k1_reaction_5   id: k1     reactionID: reaction_5
	k1_reaction_5=0.004;
	
// k1_reaction_6   id: k1     reactionID: reaction_6
	k1_reaction_6=0.11;
	



xdot=[
//x(1)   ID: L  initialValue: 6.02E17
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*((k1_reaction_0* x(1) * x(2) )-(k2_reaction_0* x(7) ))) );
	
//x(2)   ID: R  initialValue: 10000
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*((k1_reaction_0* x(1) * x(2) )-(k2_reaction_0* x(7) ))) + (-1)*(1)* (compartment_cell*k1_reaction_2* x(2) ) + (1)*(1)* (compartment_cell*v_reaction_1) );
	
//x(3)   ID: G  initialValue: 7000
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*k1_reaction_4* x(7) * x(3) ) + (1)*(1)* (compartment_cell*k1_reaction_3* x(5) * x(4) ) );
	
//x(4)   ID: Gbg  initialValue: 3000
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*k1_reaction_3* x(5) * x(4) ) + (1)*(1)* (compartment_cell*k1_reaction_4* x(7) * x(3) ) );
	
//x(5)   ID: Gd  initialValue: 3000
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*k1_reaction_3* x(5) * x(4) ) + (1)*(1)* (compartment_cell*k1_reaction_6* x(6) ) );
	
//x(6)   ID: Ga  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*k1_reaction_6* x(6) ) + (1)*(1)* (compartment_cell*k1_reaction_4* x(7) * x(3) ) );
	
//x(7)   ID: RL  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*k1_reaction_5* x(7) ) + (1)*(1)* (compartment_cell*((k1_reaction_0* x(1) * x(2) )-(k2_reaction_0* x(7) ))) )
	];


	
endfunction
        x0=[6.02E17;10000;7000;3000;3000;0;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)'],[1;2;3;4;5;6;7])

//real_variable:
	
	
//x(1)   id: L  initialValue: 6.02E17
	
//x(2)   id: R  initialValue: 10000
	
//x(3)   id: G  initialValue: 7000
	
//x(4)   id: Gbg  initialValue: 3000
	
//x(5)   id: Gd  initialValue: 3000
	
//x(6)   id: Ga  initialValue: 0
	
//x(7)   id: RL  initialValue: 0