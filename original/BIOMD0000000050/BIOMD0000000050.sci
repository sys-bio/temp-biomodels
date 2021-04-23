
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_compartment   id: compartment
	compartment_compartment=1;
		
// k1_v1   id: k1     reactionID: v1
	k1_v1=0.0057;
	
// k2_v2   id: k2     reactionID: v2
	k2_v2=0.0156;
	
// k3_v3   id: k3     reactionID: v3
	k3_v3=0.0155;
	
// k4_v4   id: k4     reactionID: v4
	k4_v4=0.0794;
	
// k5_v5   id: k5     reactionID: v5
	k5_v5=0.0907;
	
// k6_v6   id: k6     reactionID: v6
	k6_v6=0.0274;
	
// k7_v7   id: k7     reactionID: v7
	k7_v7=0.2125;
	
// k8_v8   id: k8     reactionID: v8
	k8_v8=0;
	
// k9_v9   id: k9     reactionID: v9
	k9_v9=1.9085;
	
// k10_v10   id: k10     reactionID: v10
	k10_v10=0.0707;
	
// k11_v11   id: k11     reactionID: v11
	k11_v11=0.1131;
	
// k12_v12   id: k12     reactionID: v12
	k12_v12=0.0008;
	
// k13_v13   id: k13     reactionID: v13
	k13_v13=0.0022;
	
// k14_v14   id: k14     reactionID: v14
	k14_v14=0.0034;
	
// k15_v15   id: k15     reactionID: v15
	k15_v15=0.0159;
	
// k16_v16   id: k16     reactionID: v16
	k16_v16=0.0134;
	



xdot=[
//x(1)   ID: DFG  initialValue: 9
	(1/compartment_compartment)*( (-1)*(1)* (k1_v1* x(1) ) + (-1)*(1)* (k2_v2* x(1) ) + (-1)*(1)* (k3_v3* x(1) ) );
	
//x(2)   ID: E1  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (k4_v4* x(2) ) + (-1)*(1)* (k10_v10* x(2) ) + (-1)*(1)* (k11_v11* x(2) ) + (1)*(1)* (k1_v1* x(1) ) );
	
//x(3)   ID: E2  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (k7_v7* x(3) ) + (-1)*(1)* (k16_v16* x(3) ) + (1)*(1)* (k2_v2* x(1) ) );
	
//x(4)   ID: Cn  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (k14_v14* x(4) * x(5) ) + (-1)*(1)* (k15_v15* x(4) ) + (1)*(1)* (k3_v3* x(1) ) + (1)*(1)* (k5_v5* x(6) ) + (1)*(1)* (k8_v8* x(8) ) );
	
//x(5)   ID: Gly  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (k14_v14* x(4) * x(5) ) + (1)*(1)* (k3_v3* x(1) ) + (1)*(1)* (k4_v4* x(2) ) + (1)*(1)* (k7_v7* x(3) ) + (1)*(1)* (k10_v10* x(2) ) + (1)*(1)* (k11_v11* x(2) ) + (1)*(1)* (k16_v16* x(3) ) );
	
//x(6)   ID: _3DG  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (k5_v5* x(6) ) + (-1)*(1)* (k6_v6* x(6) ) + (1)*(1)* (k4_v4* x(2) ) + (1)*(1)* (k13_v13* x(11) ) );
	
//x(7)   ID: FA  initialValue: 0
	(1/compartment_compartment)*( (1)*(1)* (k6_v6* x(6) ) + (1)*(1)* (k15_v15* x(4) ) );
	
//x(8)   ID: _1DG  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (k8_v8* x(8) ) + (-1)*(1)* (k9_v9* x(8) ) + (1)*(1)* (k7_v7* x(3) ) );
	
//x(9)   ID: AA  initialValue: 0
	(1/compartment_compartment)*( (1)*(1)* (k9_v9* x(8) ) + (1)*(1)* (k15_v15* x(4) ) );
	
//x(10)   ID: Man  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (k12_v12* x(10) ) + (1)*(1)* (k10_v10* x(2) ) );
	
//x(11)   ID: Glu  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (k13_v13* x(11) ) + (1)*(1)* (k11_v11* x(2) ) + (1)*(1)* (k12_v12* x(10) ) );
	
//x(12)   ID: MG  initialValue: 0
	(1/compartment_compartment)*( (1)*(1)* (k15_v15* x(4) ) );
	
//x(13)   ID: Mel  initialValue: 0
	(1/compartment_compartment)*( (1)*(1)* (k14_v14* x(4) * x(5) ) );
	
//x(14)   ID: Fru  initialValue: 0
	(1/compartment_compartment)*( (1)*(1)* (k16_v16* x(3) ) )
	];


	
endfunction
        x0=[9;0;0;0;0;0;0;0;0;0;0;0;0;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)' 'x(14)'],[1;2;3;4;5;6;7;8;9;10;11;12;13;14])

//real_variable:
	
	
//x(1)   id: DFG  initialValue: 9
	
//x(2)   id: E1  initialValue: 0
	
//x(3)   id: E2  initialValue: 0
	
//x(4)   id: Cn  initialValue: 0
	
//x(5)   id: Gly  initialValue: 0
	
//x(6)   id: _3DG  initialValue: 0
	
//x(7)   id: FA  initialValue: 0
	
//x(8)   id: _1DG  initialValue: 0
	
//x(9)   id: AA  initialValue: 0
	
//x(10)   id: Man  initialValue: 0
	
//x(11)   id: Glu  initialValue: 0
	
//x(12)   id: MG  initialValue: 0
	
//x(13)   id: Mel  initialValue: 0
	
//x(14)   id: Fru  initialValue: 0