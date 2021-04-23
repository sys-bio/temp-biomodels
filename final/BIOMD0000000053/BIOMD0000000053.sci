
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_compartment   id: compartment
	compartment_compartment=1;
		
// Fraction_Amadori_p   id: Fraction_Amadori
	Fraction_Amadori_p=0;
		
// Fraction_CML_p   id: Fraction_CML
	Fraction_CML_p=0;
		
// p1_v1a   id: p1     reactionID: v1a
	p1_v1a=0.115;
	
// k1a_v1a   id: k1a     reactionID: v1a
	k1a_v1a=0.09;
	
// k1b_v1b   id: k1b     reactionID: v1b
	k1b_v1b=0.36;
	
// p2_v2a   id: p2     reactionID: v2a
	p2_v2a=0.75;
	
// k2a_v2a   id: k2a     reactionID: v2a
	k2a_v2a=0.033;
	
// p2_v2b   id: p2     reactionID: v2b
	p2_v2b=0.75;
	
// k2b_v2b   id: k2b     reactionID: v2b
	k2b_v2b=0.0012;
	
// ox_v3   id: ox     reactionID: v3
	ox_v3=1;
	
// p3_v3   id: p3     reactionID: v3
	p3_v3=1;
	
// k3_v3   id: k3     reactionID: v3
	k3_v3=7.92e-07;
	
// ox_v4   id: ox     reactionID: v4
	ox_v4=1;
	
// p4_v4   id: p4     reactionID: v4
	p4_v4=1;
	
// k4_v4   id: k4     reactionID: v4
	k4_v4=8.6e-05;
	
// ox_v5   id: ox     reactionID: v5
	ox_v5=1;
	
// p5_v5   id: p5     reactionID: v5
	p5_v5=1;
	
// k5_v5   id: k5     reactionID: v5
	k5_v5=0.019;
	
// k5b_v5b   id: k5b     reactionID: v5b
	k5b_v5b=0.0017;
	
// ox_v6   id: ox     reactionID: v6
	ox_v6=1;
	
// p6_v6   id: p6     reactionID: v6
	p6_v6=2.7;
	
// k3_v6   id: k3     reactionID: v6
	k3_v6=7.92e-07;
	
// ox_v7a   id: ox     reactionID: v7a
	ox_v7a=1;
	
// p7_v7a   id: p7     reactionID: v7a
	p7_v7a=60;
	
// k3_v7a   id: k3     reactionID: v7a
	k3_v7a=7.92e-07;
	
// ox_v7b   id: ox     reactionID: v7b
	ox_v7b=1;
	
// p7_v7b   id: p7     reactionID: v7b
	p7_v7b=60;
	
// k3_v7b   id: k3     reactionID: v7b
	k3_v7b=7.92e-07;
	
// ox_v7c   id: ox     reactionID: v7c
	ox_v7c=1;
	
// p7_v7c   id: p7     reactionID: v7c
	p7_v7c=60;
	
// k3_v7c   id: k3     reactionID: v7c
	k3_v7c=7.92e-07;
	



xdot=[
//x(1)   ID: Glucose  initialValue: 0.25
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*p1_v1a*k1a_v1a* x(1) * x(2) ) + (-1)*(1)* (compartment_compartment*ox_v3*p3_v3*k3_v3*(power(( x(1) /( 0.25 )),( 0.36 )))) + (1)*(1)* (compartment_compartment*k1b_v1b* x(3) ) );
	
//x(2)   ID: Lysine  initialValue: 0.0034
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*p1_v1a*k1a_v1a* x(1) * x(2) ) + (-1)*(1)* (compartment_compartment*ox_v5*p5_v5*k5_v5* x(5) * x(2) ) + (1)*(1)* (compartment_compartment*k1b_v1b* x(3) ) + (1)*(1)* (compartment_compartment*( 0.05 )*ox_v7a*p7_v7a*k3_v7a*(power(( x(3) /( 0.25 )),( 0.36 )))) );
	
//x(3)   ID: Schiff  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*k1b_v1b* x(3) ) + (-1)*(1)* (compartment_compartment*p2_v2a*k2a_v2a* x(3) ) + (-1)*(1)* (compartment_compartment*ox_v6*p6_v6*k3_v6*(power(( x(3) /( 0.25 )),( 0.36 )))) + (-1)*(1)* (compartment_compartment*ox_v7c*p7_v7c*k3_v7c*(power(( x(3) /( 0.25 )),( 0.36 )))) + (1)*(1)* (compartment_compartment*p1_v1a*k1a_v1a* x(1) * x(2) ) + (1)*(1)* (compartment_compartment*p2_v2b*k2b_v2b* x(4) ) );
	
//x(4)   ID: Amadori  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*p2_v2b*k2b_v2b* x(4) ) + (-1)*(1)* (compartment_compartment*ox_v4*p4_v4*k4_v4* x(4) ) + (1)*(1)* (compartment_compartment*p2_v2a*k2a_v2a* x(3) ) );
	
//x(5)   ID: Glyoxal  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*ox_v5*p5_v5*k5_v5* x(5) * x(2) ) + (-1)*(1)* (compartment_compartment*k5b_v5b* x(5) ) + (1)*(1)* (compartment_compartment*ox_v3*p3_v3*k3_v3*(power(( x(1) /( 0.25 )),( 0.36 )))) + (1)*(1)* (compartment_compartment*( 0.005 )*ox_v7b*p7_v7b*k3_v7b*(power(( x(3) /( 0.25 )),( 0.36 )))) );
	
//x(6)   ID: CML  initialValue: 0
	(1/compartment_compartment)*( (1)*(1)* (compartment_compartment*ox_v4*p4_v4*k4_v4* x(4) ) + (1)*(1)* (compartment_compartment*ox_v5*p5_v5*k5_v5* x(5) * x(2) ) + (1)*(1)* (compartment_compartment*ox_v6*p6_v6*k3_v6*(power(( x(3) /( 0.25 )),( 0.36 )))) )
	];


	
endfunction
        x0=[0.25;0.0034;0;0;0;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)'],[1;2;3;4;5;6])

//real_variable:
	
	
//x(1)   id: Glucose  initialValue: 0.25
	
//x(2)   id: Lysine  initialValue: 0.0034
	
//x(3)   id: Schiff  initialValue: 0
	
//x(4)   id: Amadori  initialValue: 0
	
//x(5)   id: Glyoxal  initialValue: 0
	
//x(6)   id: CML  initialValue: 0