
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_compartment   id: compartment
	compartment_compartment=1;
		
// k1_p   id: k1
	k1_p=91.8;
		
// k2_p   id: k2
	k2_p=82.4;
		
// k3a_p   id: k3a
	k3a_p=151.5;
		
// k4a_p   id: k4a
	k4a_p=209.9;
		
// k5_p   id: k5
	k5_p=5.16;
		
// k6_p   id: k6
	k6_p=32.3;
		
// k7a_p   id: k7a
	k7a_p=4.7;
		
// k8a_p   id: k8a
	k8a_p=42.6;
		
// j1_p   id: j1
	j1_p=33.4;
		
// j3a_p   id: j3a
	j3a_p=0.185;
		
// j5_p   id: j5
	j5_p=21.8;
		
// j7a_p   id: j7a
	j7a_p=2.66E-5;
		



xdot=[
//x(1)   ID: E  initialValue: 0.00015
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*((k1_p* x(1) * x(3) )-(j1_p* x(2) ))) + (-1)*(1)* (compartment_compartment*((k3a_p* x(1) * x(4) )-(j3a_p* x(5) ))) + (-1)*(1)* (compartment_compartment*((k5_p* x(1) * x(3) )-(j5_p* x(7) ))) + (-1)*(1)* (compartment_compartment*((k7a_p* x(1) * x(8) )-(j7a_p* x(9) ))) + (1)*(1)* (compartment_compartment*k2_p* x(2) ) + (1)*(1)* (compartment_compartment*k4a_p* x(5) ) + (1)*(1)* (compartment_compartment*k6_p* x(7) ) + (1)*(1)* (compartment_compartment*k8a_p* x(9) ) );
	
//x(2)   ID: E_P_1  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*k2_p* x(2) ) + (1)*(1)* (compartment_compartment*((k1_p* x(1) * x(3) )-(j1_p* x(2) ))) );
	
//x(3)   ID: P  initialValue: 1
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*((k1_p* x(1) * x(3) )-(j1_p* x(2) ))) + (-1)*(1)* (compartment_compartment*((k5_p* x(1) * x(3) )-(j5_p* x(7) ))) );
	
//x(4)   ID: M  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*((k3a_p* x(1) * x(4) )-(j3a_p* x(5) ))) + (1)*(1)* (compartment_compartment*k2_p* x(2) ) );
	
//x(5)   ID: E_M  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*k4a_p* x(5) ) + (1)*(1)* (compartment_compartment*((k3a_p* x(1) * x(4) )-(j3a_p* x(5) ))) );
	
//x(6)   ID: T  initialValue: 0
	(1/compartment_compartment)*( (1)*(1)* (compartment_compartment*k4a_p* x(5) ) + (1)*(1)* (compartment_compartment*k8a_p* x(9) ) );
	
//x(7)   ID: E_P_2  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*k6_p* x(7) ) + (1)*(1)* (compartment_compartment*((k5_p* x(1) * x(3) )-(j5_p* x(7) ))) );
	
//x(8)   ID: P2  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*((k7a_p* x(1) * x(8) )-(j7a_p* x(9) ))) + (1)*(1)* (compartment_compartment*k6_p* x(7) ) );
	
//x(9)   ID: E_P2  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*k8a_p* x(9) ) + (1)*(1)* (compartment_compartment*((k7a_p* x(1) * x(8) )-(j7a_p* x(9) ))) )
	];


	
endfunction
        x0=[0.00015;0;1;0;0;0;0;0;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)'],[1;2;3;4;5;6;7;8;9])

//real_variable:
	
	
//x(1)   id: E  initialValue: 0.00015
	
//x(2)   id: E_P_1  initialValue: 0
	
//x(3)   id: P  initialValue: 1
	
//x(4)   id: M  initialValue: 0
	
//x(5)   id: E_M  initialValue: 0
	
//x(6)   id: T  initialValue: 0
	
//x(7)   id: E_P_2  initialValue: 0
	
//x(8)   id: P2  initialValue: 0
	
//x(9)   id: E_P2  initialValue: 0