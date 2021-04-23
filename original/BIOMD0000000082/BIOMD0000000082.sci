
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_cell   id: cell
	compartment_cell=1;
		
// k1_Forming   id: k1     reactionID: Forming
	k1_Forming=5000000;
	
// k7_Forming   id: k7     reactionID: Forming
	k7_Forming=0.5;
	
// k2_reaction_1   id: k2     reactionID: reaction_1
	k2_reaction_1=100000000;
	
// k8_reaction_1   id: k8     reactionID: reaction_1
	k8_reaction_1=0.1;
	
// k3_reaction_2   id: k3     reactionID: reaction_2
	k3_reaction_2=0.1;
	
// k9_reaction_2   id: k9     reactionID: reaction_2
	k9_reaction_2=100000;
	
// k4_reaction_3   id: k4     reactionID: reaction_3
	k4_reaction_3=10000000;
	
// k10_reaction_3   id: k10     reactionID: reaction_3
	k10_reaction_3=0.1;
	
// k5_reaction_4   id: k5     reactionID: reaction_4
	k5_reaction_4=0.05;
	
// k6_reaction_5   id: k6     reactionID: reaction_5
	k6_reaction_5=0.1;
	



xdot=[
//x(1)   ID: agonist  initialValue: 1E-8
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*((k1_Forming* x(1) * x(8) )-(k7_Forming* x(2) ))) );
	
//x(2)   ID: DR  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*((k2_reaction_1* x(2) * x(9) )-(k8_reaction_1* x(3) ))) + (1)*(1)* (compartment_cell*((k1_Forming* x(1) * x(8) )-(k7_Forming* x(2) ))) + (1)*(1)* (compartment_cell*k5_reaction_4* x(6) ) );
	
//x(3)   ID: DRG_GDP  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*((k3_reaction_2* x(3) )-(k9_reaction_2* x(4) * x(5) ))) + (1)*(1)* (compartment_cell*((k2_reaction_1* x(2) * x(9) )-(k8_reaction_1* x(3) ))) );
	
//x(4)   ID: DRG  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*((k4_reaction_3* x(4) * x(7) )-(k10_reaction_3* x(6) ))) + (1)*(1)* (compartment_cell*((k3_reaction_2* x(3) )-(k9_reaction_2* x(4) * x(5) ))) );
	
//x(5)   ID: GDP  initialValue: 0
	(1/compartment_cell)*( (1)*(1)* (compartment_cell*((k3_reaction_2* x(3) )-(k9_reaction_2* x(4) * x(5) ))) );
	
//x(6)   ID: DRG_GTP  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*k5_reaction_4* x(6) ) + (1)*(1)* (compartment_cell*((k4_reaction_3* x(4) * x(7) )-(k10_reaction_3* x(6) ))) );
	
//x(7)   ID: GTP  initialValue: 1E-5
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*((k4_reaction_3* x(4) * x(7) )-(k10_reaction_3* x(6) ))) );
	
//x(8)   ID: Recptor  initialValue: 1E-9
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*((k1_Forming* x(1) * x(8) )-(k7_Forming* x(2) ))) );
	
//x(9)   ID: G_GDP  initialValue: 1E-9
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*((k2_reaction_1* x(2) * x(9) )-(k8_reaction_1* x(3) ))) + (1)*(1)* (compartment_cell*k6_reaction_5* x(10) ) );
	
//x(10)   ID: G_GTP  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*k6_reaction_5* x(10) ) + (1)*(1)* (compartment_cell*k5_reaction_4* x(6) ) )
	];


	
endfunction
        x0=[1E-8;0;0;0;0;0;1E-5;1E-9;1E-9;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)'],[1;2;3;4;5;6;7;8;9;10])

//real_variable:
	
	
//x(1)   id: agonist  initialValue: 1E-8
	
//x(2)   id: DR  initialValue: 0
	
//x(3)   id: DRG_GDP  initialValue: 0
	
//x(4)   id: DRG  initialValue: 0
	
//x(5)   id: GDP  initialValue: 0
	
//x(6)   id: DRG_GTP  initialValue: 0
	
//x(7)   id: GTP  initialValue: 1E-5
	
//x(8)   id: Recptor  initialValue: 1E-9
	
//x(9)   id: G_GDP  initialValue: 1E-9
	
//x(10)   id: G_GTP  initialValue: 0