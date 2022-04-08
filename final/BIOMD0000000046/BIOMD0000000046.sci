
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_compartment   id: compartment
	compartment_compartment=1;
		
// k1_v1   id: k1     reactionID: v1
	k1_v1=3E-6;
	
// k2_v2   id: k2     reactionID: v2
	k2_v2=18;
	
// k3_v3   id: k3     reactionID: v3
	k3_v3=0.15;
	
// k4_v4   id: k4     reactionID: v4
	k4_v4=0.0052;
	
// k5_v5   id: k5     reactionID: v5
	k5_v5=20;
	
// k6_v6   id: k6     reactionID: v6
	k6_v6=17;
	
// k7_v7   id: k7     reactionID: v7
	k7_v7=20;
	
// k8_v8   id: k8     reactionID: v8
	k8_v8=40;
	
// k9_v9   id: k9     reactionID: v9
	k9_v9=60;
	
// k10_v10   id: k10     reactionID: v10
	k10_v10=1.8;
	
// k11_v11   id: k11     reactionID: v11
	k11_v11=0.1;
	
// k12_v12   id: k12     reactionID: v12
	k12_v12=0.08;
	
// k13f_v131   id: k13f     reactionID: v131
	k13f_v131=0.006;
	
// k13b_v132   id: k13b     reactionID: v132
	k13b_v132=0.006;
	
// k14_v14   id: k14     reactionID: v14
	k14_v14=0.7;
	



xdot=[
//x(1)   ID: NADH  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*k1_v1* x(1) * x(2) ) + (-1)*(1)* (compartment_compartment*k14_v14* x(8) * x(1) ) + (1)*(1)* (compartment_compartment*k12_v12) );
	
//x(2)   ID: O2  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*k1_v1* x(1) * x(2) ) + (-1)*(1)* (compartment_compartment*k5_v5* x(9) * x(2) ) + (-1)*(1)* (compartment_compartment*k11_v11* x(12) * x(2) ) + (-1)*(1)* (compartment_compartment*k13b_v132* x(2) ) + (1)*(1)* (compartment_compartment*k7_v7* x(10) * x(10) ) + (1)*(1)* (compartment_compartment*k13f_v131* x(15) ) );
	
//x(3)   ID: H2O2  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*k2_v2* x(3) * x(4) ) + (1)*(1)* (compartment_compartment*k1_v1* x(1) * x(2) ) + (1)*(1)* (compartment_compartment*k7_v7* x(10) * x(10) ) );
	
//x(4)   ID: per3  initialValue: 1.4
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*k2_v2* x(3) * x(4) ) + (-1)*(1)* (compartment_compartment*k6_v6* x(10) * x(4) ) + (-1)*(1)* (compartment_compartment*k10_v10* x(4) * x(9) ) + (1)*(1)* (compartment_compartment*k4_v4* x(7) * x(6) ) );
	
//x(5)   ID: coI  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*k3_v3* x(5) * x(6) ) + (1)*(1)* (compartment_compartment*k2_v2* x(3) * x(4) ) + (1)*(1)* (compartment_compartment*k8_v8* x(11) * x(9) ) );
	
//x(6)   ID: ArH  initialValue: 500
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*k3_v3* x(5) * x(6) ) + (-1)*(1)* (compartment_compartment*k4_v4* x(7) * x(6) ) + (1)*(1)* (compartment_compartment*k14_v14* x(8) * x(1) ) );
	
//x(7)   ID: coII  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*k4_v4* x(7) * x(6) ) + (1)*(1)* (compartment_compartment*k3_v3* x(5) * x(6) ) );
	
//x(8)   ID: Ar  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*k14_v14* x(8) * x(1) ) + (1)*(1)* (compartment_compartment*k3_v3* x(5) * x(6) ) + (1)*(1)* (compartment_compartment*k4_v4* x(7) * x(6) ) );
	
//x(9)   ID: NADrad  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*k5_v5* x(9) * x(2) ) + (-1)*(1)* (compartment_compartment*k8_v8* x(11) * x(9) ) + (-1)*(2)* (compartment_compartment*k9_v9* x(9) * x(9) ) + (-1)*(1)* (compartment_compartment*k10_v10* x(4) * x(9) ) + (1)*(1)* (compartment_compartment*k14_v14* x(8) * x(1) ) );
	
//x(10)   ID: super  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*k6_v6* x(10) * x(4) ) + (-1)*(2)* (compartment_compartment*k7_v7* x(10) * x(10) ) + (1)*(1)* (compartment_compartment*k5_v5* x(9) * x(2) ) );
	
//x(11)   ID: coIII  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*k8_v8* x(11) * x(9) ) + (1)*(1)* (compartment_compartment*k6_v6* x(10) * x(4) ) + (1)*(1)* (compartment_compartment*k11_v11* x(12) * x(2) ) );
	
//x(12)   ID: per2  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*k11_v11* x(12) * x(2) ) + (1)*(1)* (compartment_compartment*k10_v10* x(4) * x(9) ) );
	
//x(13)   ID: NAD2  initialValue: 0
	0;
	
//x(14)   ID: NAD  initialValue: 0
	0;
	
//x(15)   ID: O2g  initialValue: 12
	0;
	
//x(16)   ID: NADHres  initialValue: 0
	0
	];


	
endfunction
        x0=[0;0;0;1.4;0;500;0;0;0;0;0;0;0;0;12;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)' 'x(14)' 'x(15)' 'x(16)'],[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16])

//real_variable:
	
	
//x(1)   id: NADH  initialValue: 0
	
//x(2)   id: O2  initialValue: 0
	
//x(3)   id: H2O2  initialValue: 0
	
//x(4)   id: per3  initialValue: 1.4
	
//x(5)   id: coI  initialValue: 0
	
//x(6)   id: ArH  initialValue: 500
	
//x(7)   id: coII  initialValue: 0
	
//x(8)   id: Ar  initialValue: 0
	
//x(9)   id: NADrad  initialValue: 0
	
//x(10)   id: super  initialValue: 0
	
//x(11)   id: coIII  initialValue: 0
	
//x(12)   id: per2  initialValue: 0
	
//x(13)   id: NAD2  initialValue: 0
	
//x(14)   id: NAD  initialValue: 0
	
//x(15)   id: O2g  initialValue: 12
	
//x(16)   id: NADHres  initialValue: 0