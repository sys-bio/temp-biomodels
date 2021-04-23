
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_compartment   id: compartment
	compartment_compartment=1;
		
// k1_p   id: k1
	k1_p=2;
		
// k2_p   id: k2
	k2_p=0.9;
		
// k3_p   id: k3
	k3_p=2.5;
		
// k4_p   id: k4
	k4_p=1.5;
		
// k5_p   id: k5
	k5_p=0.6;
		
// k6_p   id: k6
	k6_p=0.8;
		
// k7_p   id: k7
	k7_p=1;
		
// k8_p   id: k8
	k8_p=1.3;
		
// k9_p   id: k9
	k9_p=0.3;
		
// k10_p   id: k10
	k10_p=0.8;
		
// k11_p   id: k11
	k11_p=0.7;
		
// k12_p   id: k12
	k12_p=4.9;
		
// k13_p   id: k13
	k13_p=23;
		
// k14_p   id: k14
	k14_p=4.5;
		



xdot=[
//x(1)   ID: ACA  initialValue: 3.39
	(1/compartment_compartment)*( (-1)*(1)* (k2_p* x(1) * x(3) ) + (1)*(1)* (k1_p* x(2) ) );
	
//x(2)   ID: CAR1  initialValue: 2.45
	(1/compartment_compartment)*( (-1)*(1)* (k14_p* x(2) ) + (1)*(1)* (k13_p* x(7) ) );
	
//x(3)   ID: PKA  initialValue: 1.6
	(1/compartment_compartment)*( (-1)*(1)* (k4_p* x(3) ) + (1)*(1)* (k3_p* x(4) ) );
	
//x(4)   ID: incAMP  initialValue: 1.2
	(1/compartment_compartment)*( (-1)*(1)* (k10_p* x(6) * x(4) ) + (1)*(1)* (k9_p* x(1) ) );
	
//x(5)   ID: ERK2  initialValue: 1.13
	(1/compartment_compartment)*( (-1)*(1)* (k6_p* x(3) * x(5) ) + (1)*(1)* (k5_p* x(2) ) );
	
//x(6)   ID: REGA  initialValue: 0.9
	(1/compartment_compartment)*( (-1)*(1)* (k8_p* x(5) * x(6) ) + (1)*(1)* k7_p );
	
//x(7)   ID: excAMP  initialValue: 0.48
	(1/compartment_compartment)*( (-1)*(1)* (k12_p* x(7) ) + (1)*(1)* (k11_p* x(1) ) )
	];


	
endfunction
        x0=[3.39;2.45;1.6;1.2;1.13;0.9;0.48];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)'],[1;2;3;4;5;6;7])

//real_variable:
	
	
//x(1)   id: ACA  initialValue: 3.39
	
//x(2)   id: CAR1  initialValue: 2.45
	
//x(3)   id: PKA  initialValue: 1.6
	
//x(4)   id: incAMP  initialValue: 1.2
	
//x(5)   id: ERK2  initialValue: 1.13
	
//x(6)   id: REGA  initialValue: 0.9
	
//x(7)   id: excAMP  initialValue: 0.48