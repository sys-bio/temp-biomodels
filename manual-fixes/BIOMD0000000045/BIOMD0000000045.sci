
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_extracellular   id: extracellular
	compartment_extracellular=1;
		
// compartment_cytosol   id: cytosol
	compartment_cytosol=1;
		
// compartment_intravesicular1   id: intravesicular1
	compartment_intravesicular1=1;
		
// compartment_intravesicular2   id: intravesicular2
	compartment_intravesicular2=1;
		
// beta_p   id: beta
	beta_p=1;
		
// v0_vin   id: v0     reactionID: vin
	v0_vin=0.015;
	
// v1_vin   id: v1     reactionID: vin
	v1_vin=0.012;
	
// Vm2i_v2i   id: Vm2i     reactionID: v2i
	Vm2i_v2i=3.1;
	
// K2i_v2i   id: K2i     reactionID: v2i
	K2i_v2i=0.005;
	
// Vm3i_v3i   id: Vm3i     reactionID: v3i
	Vm3i_v3i=25;
	
// K3y_v3i   id: K3y     reactionID: v3i
	K3y_v3i=0.065;
	
// K3z_v3i   id: K3z     reactionID: v3i
	K3z_v3i=0.022;
	
// Kf_v4   id: Kf     reactionID: v4
	Kf_v4=0.5;
	
// K_v5   id: K     reactionID: v5
	K_v5=1;
	
// Kf_v6   id: Kf     reactionID: v6
	Kf_v6=0.5;
	
// Vm2s_v2s   id: Vm2s     reactionID: v2s
	Vm2s_v2s=1.5;
	
// K2s_v2s   id: K2s     reactionID: v2s
	K2s_v2s=0.0265;
	
// Vm3s_v3s   id: Vm3s     reactionID: v3s
	Vm3s_v3s=0.169;
	
// K3s_v3s   id: K3s     reactionID: v3s
	K3s_v3s=0.1;
	



xdot=[
//x(1)   ID: EC  initialValue: 0
	(1/compartment_extracellular)*( (-1)*(1)* (compartment_cytosol*(v0_vin+(v1_vin*beta_p))) + (1)*(1)* (compartment_extracellular*K_v5* x(2) ) );
	
//x(2)   ID: Z  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* ((compartment_intravesicular2*Vm2i_v2i*(power( x(2) ,( 2 ))))/((power(K2i_v2i,( 2 )))+(power( x(2) ,( 2 ))))) + (-1)*(1)* (compartment_extracellular*K_v5* x(2) ) + (-1)*(1)* ((compartment_intravesicular1*Vm2s_v2s*(power( x(2) ,( 2 ))))/((power(K2s_v2s,( 2 )))+(power( x(2) ,( 2 ))))) + (1)*(1)* (compartment_cytosol*(v0_vin+(v1_vin*beta_p))) + (1)*(1)* ((compartment_cytosol*Vm3i_v3i*(power( x(3) ,( 2 )))*(power( x(2) ,( 2 ))))/(((power(K3y_v3i,( 2 )))+(power( x(3) ,( 2 ))))*((power(K3z_v3i,( 2 )))+(power( x(2) ,( 2 )))))) + (1)*(1)* (compartment_cytosol*Kf_v4* x(3) ) + (1)*(1)* (compartment_cytosol*Kf_v6* x(4) ) + (1)*(1)* ((compartment_cytosol*beta_p*Vm3s_v3s*(power( x(4) ,( 2 ))))/((power(K3s_v3s,( 2 )))+(power( x(4) ,( 2 ))))) );
	
//x(3)   ID: Y  initialValue: 0
	(1/compartment_intravesicular2)*( (-1)*(1)* ((compartment_cytosol*Vm3i_v3i*(power( x(3) ,( 2 )))*(power( x(2) ,( 2 ))))/(((power(K3y_v3i,( 2 )))+(power( x(3) ,( 2 ))))*((power(K3z_v3i,( 2 )))+(power( x(2) ,( 2 )))))) + (-1)*(1)* (compartment_cytosol*Kf_v4* x(3) ) + (1)*(1)* ((compartment_intravesicular2*Vm2i_v2i*(power( x(2) ,( 2 ))))/((power(K2i_v2i,( 2 )))+(power( x(2) ,( 2 ))))) );
	
//x(4)   ID: X  initialValue: 0.5
	(1/compartment_intravesicular1)*( (-1)*(1)* (compartment_cytosol*Kf_v6* x(4) ) + (-1)*(1)* ((compartment_cytosol*beta_p*Vm3s_v3s*(power( x(4) ,( 2 ))))/((power(K3s_v3s,( 2 )))+(power( x(4) ,( 2 ))))) + (1)*(1)* ((compartment_intravesicular1*Vm2s_v2s*(power( x(2) ,( 2 ))))/((power(K2s_v2s,( 2 )))+(power( x(2) ,( 2 ))))) )
	];


	
endfunction
        x0=[0;0;0;0.5];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)'],[1;2;3;4])

//real_variable:
	
	
//x(1)   id: EC  initialValue: 0
	
//x(2)   id: Z  initialValue: 0
	
//x(3)   id: Y  initialValue: 0
	
//x(4)   id: X  initialValue: 0.5