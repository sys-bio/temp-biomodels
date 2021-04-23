
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_compartment   id: compartment
	compartment_compartment=1;
		
// S0_p   id: S0
	S0_p=0.5;
		
// kTCA_p   id: kTCA
	kTCA_p=10;
		
// k1_p   id: k1
	k1_p=80;
		
// KM1_p   id: KM1
	KM1_p=0.06;
		
// k2_p   id: k2
	k2_p=0.8;
		
// KM2_p   id: KM2
	KM2_p=0.1;
		
// kAck_f_p   id: kAck_f
	kAck_f_p=1;
		
// kAck_r_p   id: kAck_r
	kAck_r_p=1;
		
// C_p   id: C
	C_p=100;
		
// H_p   id: H
	H_p=1e-07;
		
// Keq_p   id: Keq
	Keq_p=0.0005;
		
// k3_p   id: k3
	k3_p=0.01;
		
// alpha0_p   id: alpha0
	alpha0_p=0;
		
// alpha1_p   id: alpha1
	alpha1_p=0.1;
		
// alpha2_p   id: alpha2
	alpha2_p=2;
		
// alpha3_p   id: alpha3
	alpha3_p=2;
		
// Kg1_p   id: Kg1
	Kg1_p=10;
		
// Kg2_p   id: Kg2
	Kg2_p=10;
		
// Kg3_p   id: Kg3
	Kg3_p=0.001;
		
// n_p   id: n
	n_p=2;
		
// kd_p   id: kd
	kd_p=0.06;
		



xdot=[
//x(1)   ID: AcCoA  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*kTCA_p* x(1) ) + (-1)*(1)* ((compartment_compartment*k1_p* x(7) * x(1) )/(KM1_p+ x(1) )) + (1)*(1)* (compartment_compartment*S0_p) + (1)*(1)* ((compartment_compartment*k2_p* x(6) * x(3) )/(KM2_p+ x(3) )) );
	
//x(2)   ID: AcP  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*((kAck_f_p* x(2) )-(kAck_r_p* x(3) ))) + (1)*(1)* ((compartment_compartment*k1_p* x(7) * x(1) )/(KM1_p+ x(1) )) );
	
//x(3)   ID: OAc  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* ((compartment_compartment*k2_p* x(6) * x(3) )/(KM2_p+ x(3) )) + (-1)*(1)* (compartment_compartment*C_p*(( x(3) *H_p)-(Keq_p* x(4) ))) + (1)*(1)* (compartment_compartment*((kAck_f_p* x(2) )-(kAck_r_p* x(3) ))) );
	
//x(4)   ID: HOAc  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*k3_p*( x(4) - x(8) )) + (1)*(1)* (compartment_compartment*C_p*(( x(3) *H_p)-(Keq_p* x(4) ))) );
	
//x(5)   ID: LacI  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*kd_p* x(5) ) + (1)*(1)* (compartment_compartment*(((alpha1_p*(power(( x(2) /Kg1_p),n_p)))/(( 1 )+(power(( x(2) /Kg1_p),n_p))))+alpha0_p)) );
	
//x(6)   ID: Acs  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*kd_p* x(6) ) + (1)*(1)* (compartment_compartment*(((alpha2_p*(power(( x(2) /Kg2_p),n_p)))/(( 1 )+(power(( x(2) /Kg2_p),n_p))))+alpha0_p)) );
	
//x(7)   ID: Pta  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*kd_p* x(7) ) + (1)*(1)* ((alpha3_p/(( 1 )+(power(( x(5) /Kg3_p),n_p))))+alpha0_p) );
	
//x(8)   ID: HOAc_E  initialValue: 0
	0
	];


	
endfunction
        x0=[0;0;0;0;0;0;0;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)'],[1;2;3;4;5;6;7;8])

//real_variable:
	
	
//x(1)   id: AcCoA  initialValue: 0
	
//x(2)   id: AcP  initialValue: 0
	
//x(3)   id: OAc  initialValue: 0
	
//x(4)   id: HOAc  initialValue: 0
	
//x(5)   id: LacI  initialValue: 0
	
//x(6)   id: Acs  initialValue: 0
	
//x(7)   id: Pta  initialValue: 0
	
//x(8)   id: HOAc_E  initialValue: 0