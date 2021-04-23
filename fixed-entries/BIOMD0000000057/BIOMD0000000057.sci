
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_compartment   id: compartment
	compartment_compartment=1;
		
// open_probability_p   id: open_probability
	open_probability_p=0;
		
// Phi1_p   id: Phi1
	Phi1_p=0;
		
// k1_p   id: k1
	k1_p=0.64;
		
// L1_p   id: L1
	L1_p=0.12;
		
// l2_p   id: l2
	l2_p=1.7;
		
// lminus2_p   id: lminus2
	lminus2_p=0.8;
		
// c_p   id: c
	c_p=10;
		
// L3_p   id: L3
	L3_p=0.025;
		
// Phi2_p   id: Phi2
	Phi2_p=0;
		
// k2_p   id: k2
	k2_p=37.4;
		
// l4_p   id: l4
	l4_p=1.7;
		
// Phi_minus2_p   id: Phi_minus2
	Phi_minus2_p=0;
		
// kminus1_p   id: kminus1
	kminus1_p=0.04;
		
// kminus2_p   id: kminus2
	kminus2_p=1.4;
		
// kminus3_p   id: kminus3
	kminus3_p=29.8;
		
// lminus4_p   id: lminus4
	lminus4_p=2.5;
		
// L5_p   id: L5
	L5_p=54.7;
		
// Phi3_p   id: Phi3
	Phi3_p=0;
		
// k3_p   id: k3
	k3_p=0.11;
		
// Phi4_p   id: Phi4
	Phi4_p=0;
		
// k4_p   id: k4
	k4_p=4;
		
// l6_p   id: l6
	l6_p=4707;
		
// Phi_minus4_p   id: Phi_minus4
	Phi_minus4_p=0;
		
// kminus4_p   id: kminus4
	kminus4_p=0.54;
		
// lminus6_p   id: lminus6
	lminus6_p=11.4;
		
// Phi5_p   id: Phi5
	Phi5_p=0;
		
// IP3_p   id: IP3
	IP3_p=10;
		
// IP3_v1   id: IP3     reactionID: v1
	IP3_v1=10;
	
// kminus1_v2   id: kminus1     reactionID: v2
	kminus1_v2=0.04;
	
// lminus2_v2   id: lminus2     reactionID: v2
	lminus2_v2=0.8;
	
// kminus3_v3   id: kminus3     reactionID: v3
	kminus3_v3=29.8;
	
// kminus1_v5   id: kminus1     reactionID: v5
	kminus1_v5=0.04;
	
// lminus2_v5   id: lminus2     reactionID: v5
	lminus2_v5=0.8;
	



xdot=[
//x(1)   ID: R  initialValue: 1
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*(( ( (((k2_p*L3_p)+(l4_p*c_p))/(L3_p+(c_p*(( 1 )+(L3_p/L1_p))))) ) *IP3_v1* x(1) )-( ( ((kminus2_p+(lminus4_p*c_p))/(( 1 )+(c_p/L5_p))) ) * x(2) ))) + (-1)*(1)* (compartment_compartment*(( ( ((((k1_p*L1_p)+l2_p)*c_p)/(L1_p+(c_p*(( 1 )+(L1_p/L3_p))))) ) * x(1) )-((kminus1_v2+lminus2_v2)* x(3) ))) );
	
//x(2)   ID: O  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*(( ( ((k3_p*L5_p)/(L5_p+c_p)) ) * x(2) )-(kminus3_v3* x(4) ))) + (-1)*(1)* (compartment_compartment*(( ( ((((k4_p*L5_p)+l6_p)*c_p)/(L5_p+c_p)) ) * x(2) )-( ( ((L1_p*(kminus4_p+lminus6_p))/(L1_p+c_p)) ) * x(5) ))) + (1)*(1)* (compartment_compartment*(( ( (((k2_p*L3_p)+(l4_p*c_p))/(L3_p+(c_p*(( 1 )+(L3_p/L1_p))))) ) *IP3_v1* x(1) )-( ( ((kminus2_p+(lminus4_p*c_p))/(( 1 )+(c_p/L5_p))) ) * x(2) ))) );
	
//x(3)   ID: I1  initialValue: 0
	(1/compartment_compartment)*( (1)*(1)* (compartment_compartment*(( ( ((((k1_p*L1_p)+l2_p)*c_p)/(L1_p+(c_p*(( 1 )+(L1_p/L3_p))))) ) * x(1) )-((kminus1_v2+lminus2_v2)* x(3) ))) );
	
//x(4)   ID: S  initialValue: 0
	(1/compartment_compartment)*( (1)*(1)* (compartment_compartment*(( ( ((k3_p*L5_p)/(L5_p+c_p)) ) * x(2) )-(kminus3_v3* x(4) ))) );
	
//x(5)   ID: A  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*(( ( ((((k1_p*L1_p)+l2_p)*c_p)/(L1_p+c_p)) ) * x(5) )-((kminus1_v5+lminus2_v5)* x(6) ))) + (1)*(1)* (compartment_compartment*(( ( ((((k4_p*L5_p)+l6_p)*c_p)/(L5_p+c_p)) ) * x(2) )-( ( ((L1_p*(kminus4_p+lminus6_p))/(L1_p+c_p)) ) * x(5) ))) );
	
//x(6)   ID: I2  initialValue: 0
	(1/compartment_compartment)*( (1)*(1)* (compartment_compartment*(( ( ((((k1_p*L1_p)+l2_p)*c_p)/(L1_p+c_p)) ) * x(5) )-((kminus1_v5+lminus2_v5)* x(6) ))) )
	];


	
endfunction
        x0=[1;0;0;0;0;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)'],[1;2;3;4;5;6])

//real_variable:
	
	
//x(1)   id: R  initialValue: 1
	
//x(2)   id: O  initialValue: 0
	
//x(3)   id: I1  initialValue: 0
	
//x(4)   id: S  initialValue: 0
	
//x(5)   id: A  initialValue: 0
	
//x(6)   id: I2  initialValue: 0