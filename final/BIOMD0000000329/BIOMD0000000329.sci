
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_compartment   id: compartment
	compartment_compartment=1E-13;
		
// v_R1   id: v     reactionID: R1
	v_R1=0.212;
	
// constant_R2   id: constant     reactionID: R2
	constant_R2=2.9;
	
// V_R3   id: V     reactionID: R3
	V_R3=1.52;
	
// Km_R3   id: Km     reactionID: R3
	Km_R3=0.19;
	
// V_R4   id: V     reactionID: R4
	V_R4=4.88;
	
// Km_R4   id: Km     reactionID: R4
	Km_R4=1.18;
	
// constant_R5   id: constant     reactionID: R5
	constant_R5=1.24;
	
// Km_R6   id: Km     reactionID: R6
	Km_R6=29.09;
	
// V_R6   id: V     reactionID: R6
	V_R6=32.24;
	
// constant_R7   id: constant     reactionID: R7
	constant_R7=13.58;
	
// Km_R8   id: Km     reactionID: R8
	Km_R8=0.16;
	
// V_R8   id: V     reactionID: R8
	V_R8=153;
	



xdot=[
//x(1)   ID: a  initialValue: 0.01
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*()) + (-1)*(1)* (compartment_compartment*()) + (1)*(1)* (compartment_compartment*()) + (1)*(1)* (compartment_compartment*()) );
	
//x(2)   ID: b  initialValue: 0.01
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*()) + (1)*(1)* (compartment_compartment*()) );
	
//x(3)   ID: c  initialValue: 0.01
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*()) + (1)*(1)* (compartment_compartment*()) )
	];


	
endfunction
        x0=[0.01;0.01;0.01];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)'],[1;2;3])

//real_variable:
	
	
//x(1)   id: a  initialValue: 0.01
	
//x(2)   id: b  initialValue: 0.01
	
//x(3)   id: c  initialValue: 0.01