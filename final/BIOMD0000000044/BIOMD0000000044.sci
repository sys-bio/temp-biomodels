
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_extracellular   id: extracellular
	compartment_extracellular=1;
		
// compartment_cytosol   id: cytosol
	compartment_cytosol=1;
		
// compartment_intravesicular   id: intravesicular
	compartment_intravesicular=1;
		
// beta_p   id: beta
	beta_p=0.5;
		
// v0_vin   id: v0     reactionID: vin
	v0_vin=2;
	
// v1_vin   id: v1     reactionID: vin
	v1_vin=1;
	
// Vm2_v2   id: Vm2     reactionID: v2
	Vm2_v2=6.5;
	
// K2_v2   id: K2     reactionID: v2
	K2_v2=0.1;
	
// Vm3_v3   id: Vm3     reactionID: v3
	Vm3_v3=19.5;
	
// Ka_v3   id: Ka     reactionID: v3
	Ka_v3=0.2;
	
// Ky_v3   id: Ky     reactionID: v3
	Ky_v3=0.2;
	
// Kz_v3   id: Kz     reactionID: v3
	Kz_v3=0.3;
	
// Kf_v4   id: Kf     reactionID: v4
	Kf_v4=1;
	
// K_v5   id: K     reactionID: v5
	K_v5=10;
	
// Vp_v6   id: Vp     reactionID: v6
	Vp_v6=2.5;
	
// Vd_v7   id: Vd     reactionID: v7
	Vd_v7=80;
	
// Kp_v7   id: Kp     reactionID: v7
	Kp_v7=1;
	
// Kd_v7   id: Kd     reactionID: v7
	Kd_v7=0.4;
	
// n_v7   id: n     reactionID: v7
	n_v7=4;
	
// epsilon_v8   id: epsilon     reactionID: v8
	epsilon_v8=0.1;
	



xdot=[
//x(1)   ID: EC  initialValue: 1000
	(1/compartment_extracellular)*( (-1)*(1)* (compartment_cytosol*(v0_vin+(v1_vin*beta_p))) + (1)*(1)* (compartment_extracellular*K_v5* x(2) ) );
	
//x(2)   ID: Z  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_intravesicular*((Vm2_v2*(power( x(2) ,( 2 ))))/((power(K2_v2,( 2 )))+(power( x(2) ,( 2 )))))) + (-1)*(1)* (compartment_extracellular*K_v5* x(2) ) + (1)*(1)* (compartment_cytosol*(v0_vin+(v1_vin*beta_p))) + (1)*(1)* ((compartment_cytosol*Vm3_v3*(power( x(3) ,( 4 )))*(power( x(4) ,( 2 )))*(power( x(2) ,( 4 ))))/(((power(Ka_v3,( 4 )))+(power( x(3) ,( 4 ))))*((power(Ky_v3,( 2 )))+(power( x(4) ,( 2 ))))*((power(Kz_v3,( 4 )))+(power( x(2) ,( 4 )))))) + (1)*(1)* (compartment_cytosol*Kf_v4* x(4) ) );
	
//x(3)   ID: A  initialValue: 0.45
	(1/compartment_cytosol)*( (-1)*(1)* ((compartment_cytosol*Vd_v7*(power( x(3) ,( 2 )))*(power( x(2) ,n_v7)))/(((power(Kp_v7,( 2 )))+(power( x(3) ,( 2 ))))*((power(Kd_v7,n_v7))+(power( x(2) ,n_v7))))) + (-1)*(1)* (compartment_cytosol*epsilon_v8* x(3) ) + (1)*(1)* (compartment_cytosol*beta_p*Vp_v6) );
	
//x(4)   ID: Y  initialValue: 0.36
	(1/compartment_intravesicular)*( (-1)*(1)* ((compartment_cytosol*Vm3_v3*(power( x(3) ,( 4 )))*(power( x(4) ,( 2 )))*(power( x(2) ,( 4 ))))/(((power(Ka_v3,( 4 )))+(power( x(3) ,( 4 ))))*((power(Ky_v3,( 2 )))+(power( x(4) ,( 2 ))))*((power(Kz_v3,( 4 )))+(power( x(2) ,( 4 )))))) + (-1)*(1)* (compartment_cytosol*Kf_v4* x(4) ) + (1)*(1)* (compartment_intravesicular*((Vm2_v2*(power( x(2) ,( 2 ))))/((power(K2_v2,( 2 )))+(power( x(2) ,( 2 )))))) )
	];


	
endfunction
        x0=[1000;0;0.45;0.36];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)'],[1;2;3;4])

//real_variable:
	
	
//x(1)   id: EC  initialValue: 1000
	
//x(2)   id: Z  initialValue: 0
	
//x(3)   id: A  initialValue: 0.45
	
//x(4)   id: Y  initialValue: 0.36