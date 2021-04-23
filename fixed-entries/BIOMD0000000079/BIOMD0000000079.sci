
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_body   id: body
	compartment_body=1;
		
// a_reaction_0   id: a     reactionID: reaction_0
	a_reaction_0=0.1;
	
// V_reaction_1   id: V     reactionID: reaction_1
	V_reaction_1=0.1;
	
// Km_reaction_1   id: Km     reactionID: reaction_1
	Km_reaction_1=0.2;
	
// V1_reaction_2   id: V1     reactionID: reaction_2
	V1_reaction_2=1;
	
// K1_reaction_2   id: K1     reactionID: reaction_2
	K1_reaction_2=0.01;
	
// V2_reaction_3   id: V2     reactionID: reaction_3
	V2_reaction_3=1.5;
	
// K2_reaction_3   id: K2     reactionID: reaction_3
	K2_reaction_3=0.01;
	
// V3_reaction_4   id: V3     reactionID: reaction_4
	V3_reaction_4=6;
	
// k3_reaction_4   id: k3     reactionID: reaction_4
	k3_reaction_4=0.01;
	
// V_reaction_5   id: V     reactionID: reaction_5
	V_reaction_5=2.5;
	
// Km_reaction_5   id: Km     reactionID: reaction_5
	Km_reaction_5=0.01;
	



xdot=[
//x(1)   ID: P  initialValue: 0.43
	(1/compartment_body)*( (-1)*(1)* () + (1)*(1)* (compartment_body*()) );
	
//x(2)   ID: Q  initialValue: 0.8
	(1/compartment_body)*( (-1)*(1)* () + (1)*(1)* () );
	
//x(3)   ID: R  initialValue: 0.55
	(1/compartment_body)*( (-1)*(1)* () + (1)*(1)* () )
	];


	
endfunction
        x0=[0.43;0.8;0.55];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)'],[1;2;3])

//real_variable:
	
	
//x(1)   id: P  initialValue: 0.43
	
//x(2)   id: Q  initialValue: 0.8
	
//x(3)   id: R  initialValue: 0.55