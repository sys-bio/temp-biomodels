
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_compartment   id: compartment
	compartment_compartment=1;
		
// k1_reaction_1   id: k1     reactionID: reaction_1
	k1_reaction_1=5;
	
// k2_reaction_1   id: k2     reactionID: reaction_1
	k2_reaction_1=770;
	
// k1_reaction_2   id: k1     reactionID: reaction_2
	k1_reaction_2=420;
	
// k1_reaction_3   id: k1     reactionID: reaction_3
	k1_reaction_3=770;
	
// k2_reaction_3   id: k2     reactionID: reaction_3
	k2_reaction_3=5;
	
// k1_reaction_4   id: k1     reactionID: reaction_4
	k1_reaction_4=0.054;
	
// k2_reaction_4   id: k2     reactionID: reaction_4
	k2_reaction_4=0.02;
	
// k1_reaction_5   id: k1     reactionID: reaction_5
	k1_reaction_5=0.44;
	
// k2_reaction_5   id: k2     reactionID: reaction_5
	k2_reaction_5=0;
	
// k1_reaction_6   id: k1     reactionID: reaction_6
	k1_reaction_6=6;
	
// k2_reaction_6   id: k2     reactionID: reaction_6
	k2_reaction_6=0.02;
	
// k1_reaction_9   id: k1     reactionID: reaction_9
	k1_reaction_9=0;
	
// k2_reaction_9   id: k2     reactionID: reaction_9
	k2_reaction_9=0;
	
// k1_reaction_8   id: k1     reactionID: reaction_8
	k1_reaction_8=20;
	
// k2_reaction_8   id: k2     reactionID: reaction_8
	k2_reaction_8=0;
	



xdot=[
//x(1)   ID: VIIa_TF  initialValue: 1
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*((k1_reaction_1* x(2) * x(1) )-(k2_reaction_1* x(3) ))) + (-1)*(1)* (compartment_compartment*((k1_reaction_5* x(1) * x(7) )-(k2_reaction_5* x(8) ))) + (1)*(1)* (compartment_compartment*((k1_reaction_3* x(4) )-(k2_reaction_3* x(5) * x(1) ))) );
	
//x(2)   ID: X  initialValue: 170
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*((k1_reaction_1* x(2) * x(1) )-(k2_reaction_1* x(3) ))) + (1)*(1)* (compartment_compartment*((k1_reaction_8* x(3) * x(7) )-(k2_reaction_8* x(2) * x(9) ))) );
	
//x(3)   ID: VIIa_TF_X  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*k1_reaction_2* x(3) ) + (-1)*(1)* (compartment_compartment*((k1_reaction_8* x(3) * x(7) )-(k2_reaction_8* x(2) * x(9) ))) + (1)*(1)* (compartment_compartment*((k1_reaction_1* x(2) * x(1) )-(k2_reaction_1* x(3) ))) );
	
//x(4)   ID: VIIa_TF_Xa  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*((k1_reaction_3* x(4) )-(k2_reaction_3* x(5) * x(1) ))) + (-1)*(1)* (compartment_compartment*((k1_reaction_6* x(4) * x(6) )-(k2_reaction_6* x(9) ))) + (1)*(1)* (compartment_compartment*k1_reaction_2* x(3) ) );
	
//x(5)   ID: Xa  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*((k1_reaction_4* x(5) * x(6) )-(k2_reaction_4* x(7) ))) + (1)*(1)* (compartment_compartment*((k1_reaction_3* x(4) )-(k2_reaction_3* x(5) * x(1) ))) );
	
//x(6)   ID: TFPI  initialValue: 2.4
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*((k1_reaction_4* x(5) * x(6) )-(k2_reaction_4* x(7) ))) + (-1)*(1)* (compartment_compartment*((k1_reaction_6* x(4) * x(6) )-(k2_reaction_6* x(9) ))) );
	
//x(7)   ID: Xa_TFPI  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*((k1_reaction_5* x(1) * x(7) )-(k2_reaction_5* x(8) ))) + (-1)*(1)* (compartment_compartment*((k1_reaction_8* x(3) * x(7) )-(k2_reaction_8* x(2) * x(9) ))) + (1)*(1)* (compartment_compartment*((k1_reaction_4* x(5) * x(6) )-(k2_reaction_4* x(7) ))) );
	
//x(8)   ID: Xa_TFPI_VIIa_TF  initialValue: 0
	(1/compartment_compartment)*( (1)*(1)* (compartment_compartment*((k1_reaction_5* x(1) * x(7) )-(k2_reaction_5* x(8) ))) + (1)*(1)* (compartment_compartment*((k1_reaction_9* x(9) )-(k2_reaction_9* x(8) ))) );
	
//x(9)   ID: VIIa_TF_Xa_TFPI  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*((k1_reaction_9* x(9) )-(k2_reaction_9* x(8) ))) + (1)*(1)* (compartment_compartment*((k1_reaction_6* x(4) * x(6) )-(k2_reaction_6* x(9) ))) + (1)*(1)* (compartment_compartment*((k1_reaction_8* x(3) * x(7) )-(k2_reaction_8* x(2) * x(9) ))) )
	];


	
endfunction
        x0=[1;170;0;0;0;2.4;0;0;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)'],[1;2;3;4;5;6;7;8;9])

//real_variable:
	
	
//x(1)   id: VIIa_TF  initialValue: 1
	
//x(2)   id: X  initialValue: 170
	
//x(3)   id: VIIa_TF_X  initialValue: 0
	
//x(4)   id: VIIa_TF_Xa  initialValue: 0
	
//x(5)   id: Xa  initialValue: 0
	
//x(6)   id: TFPI  initialValue: 2.4
	
//x(7)   id: Xa_TFPI  initialValue: 0
	
//x(8)   id: Xa_TFPI_VIIa_TF  initialValue: 0
	
//x(9)   id: VIIa_TF_Xa_TFPI  initialValue: 0