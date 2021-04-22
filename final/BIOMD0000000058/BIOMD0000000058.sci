
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_compartment   id: compartment
	compartment_compartment=1;
		
// Phi1_c1_p   id: Phi1_c1
	Phi1_c1_p=0;
		
// r2_p   id: r2
	r2_p=100;
		
// R1_p   id: R1
	R1_p=6;
		
// Phi_minus1_c1_p   id: Phi_minus1_c1
	Phi_minus1_c1_p=0;
		
// k1_p   id: k1
	k1_p=44;
		
// R3_p   id: R3
	R3_p=50;
		
// Phi2_c1_p   id: Phi2_c1
	Phi2_c1_p=0;
		
// k2_p   id: k2
	k2_p=26.5;
		
// r4_p   id: r4
	r4_p=20;
		
// Phi3_c1_p   id: Phi3_c1
	Phi3_c1_p=0;
		
// k3_p   id: k3
	k3_p=1.6;
		
// R5_p   id: R5
	R5_p=1.6;
		
// Phi1_c2_p   id: Phi1_c2
	Phi1_c2_p=0;
		
// Phi_minus1_c2_p   id: Phi_minus1_c2
	Phi_minus1_c2_p=0;
		
// Phi2_c2_p   id: Phi2_c2
	Phi2_c2_p=0;
		
// Phi3_c2_p   id: Phi3_c2
	Phi3_c2_p=0;
		
// kf_Jreceptor_Cell1   id: kf     reactionID: Jreceptor_Cell1
	kf_Jreceptor_Cell1=28;
	
// p_Jreceptor_Cell1   id: p     reactionID: Jreceptor_Cell1
	p_Jreceptor_Cell1=0.2778;
	
// Vp_Jpump_Cell1   id: Vp     reactionID: Jpump_Cell1
	Vp_Jpump_Cell1=1.2;
	
// Kp_Jpump_Cell1   id: Kp     reactionID: Jpump_Cell1
	Kp_Jpump_Cell1=0.18;
	
// Jleak_Jleak_Cell1   id: Jleak     reactionID: Jleak_Cell1
	Jleak_Jleak_Cell1=0.2;
	
// p_Open_to_Inactivated_Cell1   id: p     reactionID: Open_to_Inactivated_Cell1
	p_Open_to_Inactivated_Cell1=0.2778;
	
// kf_Jreceptor_Cell2   id: kf     reactionID: Jreceptor_Cell2
	kf_Jreceptor_Cell2=28;
	
// p_Jreceptor_Cell2   id: p     reactionID: Jreceptor_Cell2
	p_Jreceptor_Cell2=0.2778;
	
// Vp_Jpump_Cell2   id: Vp     reactionID: Jpump_Cell2
	Vp_Jpump_Cell2=1.2;
	
// Kp_Jpump_Cell2   id: Kp     reactionID: Jpump_Cell2
	Kp_Jpump_Cell2=0.18;
	
// Jleak_Jleak_Cell2   id: Jleak     reactionID: Jleak_Cell2
	Jleak_Jleak_Cell2=0.2;
	
// p_Open_to_Inactivated_Cell2   id: p     reactionID: Open_to_Inactivated_Cell2
	p_Open_to_Inactivated_Cell2=0.2778;
	
// D_diffusion   id: D     reactionID: diffusion
	D_diffusion=0.01;
	



xdot=[
//x(1)   ID: c1  initialValue: 0.3
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*((Vp_Jpump_Cell1*(power( x(1) ,( 2 ))))/((power(Kp_Jpump_Cell1,( 2 )))+(power( x(1) ,( 2 )))))) + (1)*(1)* (compartment_compartment*kf_Jreceptor_Cell1*(power(((p_Jreceptor_Cell1* x(2) * ( ((r2_p* x(1) )/(R1_p+ x(1) )) ) )/(( ( ((r2_p* x(1) )/(R1_p+ x(1) )) ) *p_Jreceptor_Cell1)+ ( (k1_p/(R3_p+ x(1) )) ) )),( 4 )))) + (1)*(1)* (compartment_compartment*Jleak_Jleak_Cell1) + (1)*(1)* (compartment_compartment*D_diffusion*( x(3) - x(1) )) );
	
//x(2)   ID: h1  initialValue: 0.8
	(1/compartment_compartment)*( (-1)*(1)* ((compartment_compartment* ( ((r2_p* x(1) )/(R1_p+ x(1) )) ) * ( ((k2_p+(r4_p* x(1) ))/(R3_p+ x(1) )) ) * x(2) *p_Open_to_Inactivated_Cell1)/(( ( ((r2_p* x(1) )/(R1_p+ x(1) )) ) *p_Open_to_Inactivated_Cell1)+ ( (k1_p/(R3_p+ x(1) )) ) )) + (1)*(1)* (compartment_compartment* ( (k3_p/(R5_p+ x(1) )) ) *(( 1 )- x(2) )) );
	
//x(3)   ID: c2  initialValue: 0.1
	(1/compartment_compartment)*( (-1)*(1)* ((compartment_compartment*Vp_Jpump_Cell2*(power( x(3) ,( 2 ))))/((power(Kp_Jpump_Cell2,( 2 )))+(power( x(3) ,( 2 ))))) + (-1)*(1)* (compartment_compartment*D_diffusion*( x(3) - x(1) )) + (1)*(1)* (compartment_compartment*kf_Jreceptor_Cell2*(power(((p_Jreceptor_Cell2* x(4) * ( ((r2_p* x(3) )/(R1_p+ x(3) )) ) )/(( ( ((r2_p* x(3) )/(R1_p+ x(3) )) ) *p_Jreceptor_Cell2)+ ( (k1_p/(R3_p+ x(3) )) ) )),( 4 )))) + (1)*(1)* (compartment_compartment*Jleak_Jleak_Cell2) );
	
//x(4)   ID: h2  initialValue: 0.1
	(1/compartment_compartment)*( (-1)*(1)* ((compartment_compartment* ( ((r2_p* x(3) )/(R1_p+ x(3) )) ) * ( ((k2_p+(r4_p* x(3) ))/(R3_p+ x(3) )) ) * x(4) *p_Open_to_Inactivated_Cell2)/(( ( ((r2_p* x(3) )/(R1_p+ x(3) )) ) *p_Open_to_Inactivated_Cell2)+ ( (k1_p/(R3_p+ x(3) )) ) )) + (1)*(1)* (compartment_compartment* ( (k3_p/(R5_p+ x(3) )) ) *(( 1 )- x(4) )) )
	];


	
endfunction
        x0=[0.3;0.8;0.1;0.1];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)'],[1;2;3;4])

//real_variable:
	
	
//x(1)   id: c1  initialValue: 0.3
	
//x(2)   id: h1  initialValue: 0.8
	
//x(3)   id: c2  initialValue: 0.1
	
//x(4)   id: h2  initialValue: 0.1