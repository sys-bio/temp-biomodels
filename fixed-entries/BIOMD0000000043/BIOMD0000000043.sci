
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
		
// a_p   id: a
	a_p=40000;
		
// d_p   id: d
	d_p=100;
		
// beta_p   id: beta
	beta_p=1;
		
// v0_vin   id: v0     reactionID: vin
	v0_vin=1;
	
// v1_vin   id: v1     reactionID: vin
	v1_vin=1;
	
// Vm2_v2   id: Vm2     reactionID: v2
	Vm2_v2=6.5;
	
// K2_v2   id: K2     reactionID: v2
	K2_v2=0.1;
	
// Vm3_v3   id: Vm3     reactionID: v3
	Vm3_v3=50;
	
// Ky_v3   id: Ky     reactionID: v3
	Ky_v3=0.2;
	
// Kf_v4   id: Kf     reactionID: v4
	Kf_v4=1;
	
// K_v5   id: K     reactionID: v5
	K_v5=10;
	
// Kd_v6   id: Kd     reactionID: v6
	Kd_v6=5000;
	
// Kr_v7   id: Kr     reactionID: v7
	Kr_v7=5;
	



xdot=[
//x(1)   ID: EC  initialValue: 0
	(1/compartment_extracellular)*( (-1)*(1)* (compartment_cytosol*(v0_vin+(v1_vin*beta_p))) + (1)*(1)* (compartment_extracellular*K_v5* x(2) ) );
	
//x(2)   ID: Z  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_intravesicular*((Vm2_v2*(power( x(2) ,( 2 ))))/((power(K2_v2,( 2 )))+(power( x(2) ,( 2 )))))) + (-1)*(1)* (compartment_extracellular*K_v5* x(2) ) + (1)*(1)* (compartment_cytosol*(v0_vin+(v1_vin*beta_p))) + (1)*(1)* (compartment_cytosol*((beta_p*(( x(3) *(a_p/d_p)*(power( x(2) ,( 4 ))))/(( 1 )+((a_p/d_p)*(power( x(2) ,( 4 ))))))*Vm3_v3*(power( x(4) ,( 2 ))))/((power(Ky_v3,( 2 )))+(power( x(4) ,( 2 )))))) + (1)*(1)* (compartment_cytosol*Kf_v4* x(4) ) );
	
//x(3)   ID: Rho  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*Kd_v6*(power( x(2) ,( 4 )))* x(3) ) + (1)*(1)* (compartment_cytosol*Kr_v7*(( 1 )- x(3) )) );
	
//x(4)   ID: Y  initialValue: 0.36
	(1/compartment_intravesicular)*( (-1)*(1)* (compartment_cytosol*((beta_p*(( x(3) *(a_p/d_p)*(power( x(2) ,( 4 ))))/(( 1 )+((a_p/d_p)*(power( x(2) ,( 4 ))))))*Vm3_v3*(power( x(4) ,( 2 ))))/((power(Ky_v3,( 2 )))+(power( x(4) ,( 2 )))))) + (-1)*(1)* (compartment_cytosol*Kf_v4* x(4) ) + (1)*(1)* (compartment_intravesicular*((Vm2_v2*(power( x(2) ,( 2 ))))/((power(K2_v2,( 2 )))+(power( x(2) ,( 2 )))))) );
	
//x(5)   ID: Fraction_Inactive_Channels  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*Kr_v7*(( 1 )- x(3) )) + (1)*(1)* (compartment_cytosol*Kd_v6*(power( x(2) ,( 4 )))* x(3) ) )
	];


	
endfunction
        x0=[0;0;0;0.36;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)'],[1;2;3;4;5])

//real_variable:
	
	
//x(1)   id: EC  initialValue: 0
	
//x(2)   id: Z  initialValue: 0
	
//x(3)   id: Rho  initialValue: 0
	
//x(4)   id: Y  initialValue: 0.36
	
//x(5)   id: Fraction_Inactive_Channels  initialValue: 0