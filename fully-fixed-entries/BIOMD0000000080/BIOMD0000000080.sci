
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_cell   id: cell
	compartment_cell=1;
		
// k1_Reaction_1   id: k1     reactionID: Reaction_1
	k1_Reaction_1=5000000;
	
// k7_Reaction_1   id: k7     reactionID: Reaction_1
	k7_Reaction_1=10;
	
// k2_Reaction_2   id: k2     reactionID: Reaction_2
	k2_Reaction_2=100000000;
	
// k8_Reaction_2   id: k8     reactionID: Reaction_2
	k8_Reaction_2=0.1;
	
// k3_Reaction_3   id: k3     reactionID: Reaction_3
	k3_Reaction_3=5;
	
// k9_Reaction_3   id: k9     reactionID: Reaction_3
	k9_Reaction_3=100000;
	
// k4_Reaction_4   id: k4     reactionID: Reaction_4
	k4_Reaction_4=5000000;
	
// k10_Reaction_4   id: k10     reactionID: Reaction_4
	k10_Reaction_4=55;
	
// k5_Reaction_5   id: k5     reactionID: Reaction_5
	k5_Reaction_5=1;
	
// k6_Reaction_6   id: k6     reactionID: Reaction_6
	k6_Reaction_6=2;
	



xdot=[
//x(1)   ID: D  initialValue: 3.1E-5
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*((k1_Reaction_1* x(1) * x(10) )-(k7_Reaction_1* x(2) ))) );
	
//x(2)   ID: DR  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*((k2_Reaction_2* x(2) * x(4) )-(k8_Reaction_2* x(3) ))) + (1)*(1)* (compartment_cell*((k1_Reaction_1* x(1) * x(10) )-(k7_Reaction_1* x(2) ))) + (1)*(1)* (compartment_cell*k5_Reaction_5* x(7) ) );
	
//x(3)   ID: DRG_GDP  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*((k3_Reaction_3* x(3) )-(k9_Reaction_3* x(6) * x(5) ))) + (1)*(1)* (compartment_cell*((k2_Reaction_2* x(2) * x(4) )-(k8_Reaction_2* x(3) ))) );
	
//x(4)   ID: G_GDP  initialValue: 1E-6
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*((k2_Reaction_2* x(2) * x(4) )-(k8_Reaction_2* x(3) ))) + (1)*(1)* (compartment_cell*k6_Reaction_6* x(9) ) );
	
//x(5)   ID: DRG  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*((k4_Reaction_4* x(5) * x(8) )-(k10_Reaction_4* x(7) ))) + (1)*(1)* (compartment_cell*((k3_Reaction_3* x(3) )-(k9_Reaction_3* x(6) * x(5) ))) );
	
//x(6)   ID: GDP  initialValue: 0
	(1/compartment_cell)*( (1)*(1)* (compartment_cell*((k3_Reaction_3* x(3) )-(k9_Reaction_3* x(6) * x(5) ))) );
	
//x(7)   ID: DRG_GTP  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*k5_Reaction_5* x(7) ) + (1)*(1)* (compartment_cell*((k4_Reaction_4* x(5) * x(8) )-(k10_Reaction_4* x(7) ))) );
	
//x(8)   ID: GTP  initialValue: 1E-5
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*((k4_Reaction_4* x(5) * x(8) )-(k10_Reaction_4* x(7) ))) );
	
//x(9)   ID: G_GTP  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*k6_Reaction_6* x(9) ) + (1)*(1)* (compartment_cell*k5_Reaction_5* x(7) ) );
	
//x(10)   ID: R  initialValue: 1E-10
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*((k1_Reaction_1* x(1) * x(10) )-(k7_Reaction_1* x(2) ))) )
	];


	
endfunction
        x0=[3.1E-5;0;0;1E-6;0;0;0;1E-5;0;1E-10];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)'],[1;2;3;4;5;6;7;8;9;10])

//real_variable:
	
	
//x(1)   id: D  initialValue: 3.1E-5
	
//x(2)   id: DR  initialValue: 0
	
//x(3)   id: DRG_GDP  initialValue: 0
	
//x(4)   id: G_GDP  initialValue: 1E-6
	
//x(5)   id: DRG  initialValue: 0
	
//x(6)   id: GDP  initialValue: 0
	
//x(7)   id: DRG_GTP  initialValue: 0
	
//x(8)   id: GTP  initialValue: 1E-5
	
//x(9)   id: G_GTP  initialValue: 0
	
//x(10)   id: R  initialValue: 1E-10