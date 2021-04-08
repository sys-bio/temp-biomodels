
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_compartment   id: compartment
	compartment_compartment=1;
		
// Vm1_v1   id: Vm1     reactionID: v1
	Vm1_v1=1;
	
// Km1_v1   id: Km1     reactionID: v1
	Km1_v1=0.1;
	
// Vm2_v2   id: Vm2     reactionID: v2
	Vm2_v2=0.01;
	
// Km2_v2   id: Km2     reactionID: v2
	Km2_v2=0.1;
	
// k3_v3   id: k3     reactionID: v3
	k3_v3=1;
	
// Km3_v3   id: Km3     reactionID: v3
	Km3_v3=0.1;
	
// Vm4_v4   id: Vm4     reactionID: v4
	Vm4_v4=0.3;
	
// Km4_v4   id: Km4     reactionID: v4
	Km4_v4=1;
	
// k5_v5   id: k5     reactionID: v5
	k5_v5=1;
	
// Km5_v5   id: Km5     reactionID: v5
	Km5_v5=0.1;
	
// Vm6_v6   id: Vm6     reactionID: v6
	Vm6_v6=0.3;
	
// Km6_v6   id: Km6     reactionID: v6
	Km6_v6=1;
	
// k7_v7   id: k7     reactionID: v7
	k7_v7=1;
	
// Km7_v7   id: Km7     reactionID: v7
	Km7_v7=0.1;
	
// Vm8_v8   id: Vm8     reactionID: v8
	Vm8_v8=0.3;
	
// Km8_v8   id: Km8     reactionID: v8
	Km8_v8=1;
	
// Inh_v8   id: Inh     reactionID: v8
	Inh_v8=0;
	
// Ki8_v8   id: Ki8     reactionID: v8
	Ki8_v8=1;
	



xdot=[
//x(1)   ID: R  initialValue: 0.5
	(1/compartment_compartment)*( (-1)*(1)* ((Vm1_v1* x(1) )/(Km1_v1+ x(1) )) + (1)*(1)* ((Vm2_v2* x(2) )/(Km2_v2+ x(2) )) );
	
//x(2)   ID: Rin  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* ((Vm2_v2* x(2) )/(Km2_v2+ x(2) )) + (1)*(1)* ((Vm1_v1* x(1) )/(Km1_v1+ x(1) )) );
	
//x(3)   ID: x1  initialValue: 1
	(1/compartment_compartment)*( (-1)*(1)* ((k3_v3* x(1) * x(3) )/(Km3_v3+ x(3) )) + (1)*(1)* ((Vm4_v4* x(4) )/(Km4_v4+ x(4) )) );
	
//x(4)   ID: x1p  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* ((Vm4_v4* x(4) )/(Km4_v4+ x(4) )) + (1)*(1)* ((k3_v3* x(1) * x(3) )/(Km3_v3+ x(3) )) );
	
//x(5)   ID: x2  initialValue: 1
	(1/compartment_compartment)*( (-1)*(1)* ((k5_v5* x(4) * x(5) )/(Km5_v5+ x(5) )) + (1)*(1)* ((Vm6_v6* x(6) )/(Km6_v6+ x(6) )) );
	
//x(6)   ID: x2p  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* ((Vm6_v6* x(6) )/(Km6_v6+ x(6) )) + (1)*(1)* ((k5_v5* x(4) * x(5) )/(Km5_v5+ x(5) )) );
	
//x(7)   ID: x3  initialValue: 1
	(1/compartment_compartment)*( (-1)*(1)* ((k7_v7* x(6) * x(7) )/(Km7_v7+ x(7) )) + (1)*(1)* (((Vm8_v8* x(8) )/Km8_v8)/(( 1 )+( x(8) /Km8_v8)+(Inh_v8/Ki8_v8))) );
	
//x(8)   ID: x3p  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (((Vm8_v8* x(8) )/Km8_v8)/(( 1 )+( x(8) /Km8_v8)+(Inh_v8/Ki8_v8))) + (1)*(1)* ((k7_v7* x(6) * x(7) )/(Km7_v7+ x(7) )) )
	];


	
endfunction
        x0=[0.5;0;1;0;1;0;1;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)'],[1;2;3;4;5;6;7;8])

//real_variable:
	
	
//x(1)   id: R  initialValue: 0.5
	
//x(2)   id: Rin  initialValue: 0
	
//x(3)   id: x1  initialValue: 1
	
//x(4)   id: x1p  initialValue: 0
	
//x(5)   id: x2  initialValue: 1
	
//x(6)   id: x2p  initialValue: 0
	
//x(7)   id: x3  initialValue: 1
	
//x(8)   id: x3p  initialValue: 0