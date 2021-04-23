
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_cell   id: cell
	compartment_cell=1;
		
// GF_1_p   id: GF_1
	GF_1_p=6.3;
		
// k1_1_p   id: k1_1
	k1_1_p=0.05;
		
// dD_1_p   id: dD_1
	dD_1_p=0.4;
		
// aD_1_p   id: aD_1
	aD_1_p=0.4;
		
// aE_1_p   id: aE_1
	aE_1_p=0.16;
		
// k2_1_p   id: k2_1
	k2_1_p=1000;
		
// aF_1_p   id: aF_1
	aF_1_p=0.9;
		
// pX_1_p   id: pX_1
	pX_1_p=0.48;
		
// RT_1_p   id: RT_1
	RT_1_p=2.5;
		
// qX_1_p   id: qX_1
	qX_1_p=0.8;
		
// pS_1_p   id: pS_1
	pS_1_p=0.6;
		
// pD_1_p   id: pD_1
	pD_1_p=0.48;
		
// qD_1_p   id: qD_1
	qD_1_p=0.6;
		
// pE_1_p   id: pE_1
	pE_1_p=0.096;
		
// qE_1_p   id: qE_1
	qE_1_p=0.6;
		
// atheta_1_p   id: atheta_1
	atheta_1_p=0.05;
		
// k3_1_p   id: k3_1
	k3_1_p=1.5;
		
// dtheta_1_p   id: dtheta_1
	dtheta_1_p=0.12;
		
// qtheta_1_p   id: qtheta_1
	qtheta_1_p=0.3;
		
// aX_1_p   id: aX_1
	aX_1_p=0.08;
		
// f_1_p   id: f_1
	f_1_p=0.35;
		
// g_1_p   id: g_1
	g_1_p=0.528;
		
// dX_1_p   id: dX_1
	dX_1_p=1.04;
		
// dE_1_p   id: dE_1
	dE_1_p=0.2;
		
// fC_1_1_p   id: fC_1_1
	fC_1_1_p=0.003;
		
// Rb_phos_p   id: Rb_phos
	Rb_phos_p=0;
		



xdot=[
//x(1)   ID: D_1  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*dD_1_p* x(2) * x(1) ) + (1)*(1)* (compartment_cell*aD_1_p*(GF_1_p/((power(k1_1_p,(( 1 ))))+GF_1_p))) );
	
//x(2)   ID: E_1  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*dE_1_p* x(6) * x(2) ) + (1)*(1)* (compartment_cell*aE_1_p*((GF_1_p/((power(k2_1_p,(( 1 ))))+GF_1_p))+(aF_1_p* x(5) ))) );
	
//x(3)   ID: R_1  initialValue: 2.5
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*((pX_1_p*((RT_1_p- x(4) )- x(3) )* x(6) )/((((qX_1_p+RT_1_p)- x(4) )- x(3) )+ x(6) ))) );
	
//x(4)   ID: RS_1  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*((pD_1_p* x(4) * x(1) )/(qD_1_p+ x(4) + x(1) ))) + (-1)*(1)* (compartment_cell*((pE_1_p* x(4) * x(2) )/(qE_1_p+ x(4) + x(2) ))) + (1)*(1)* (compartment_cell*()) );
	
//x(5)   ID: theta_1  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*()) + (-1)*(1)* (compartment_cell*dtheta_1_p*( x(6) /(qtheta_1_p+ x(6) ))* x(5) ) + (1)*(1)* (compartment_cell*((pD_1_p* x(4) * x(1) )/(qD_1_p+ x(4) + x(1) ))) + (1)*(1)* (compartment_cell*((pE_1_p* x(4) * x(2) )/(qE_1_p+ x(4) + x(2) ))) + (1)*(1)* (compartment_cell*atheta_1_p*((GF_1_p/((power(k3_1_p,(( 1 ))))+GF_1_p))+(fC_1_1_p* x(5) ))) );
	
//x(6)   ID: X_1  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*dX_1_p* x(6) ) + (1)*(1)* (compartment_cell*((aX_1_p* x(2) )+(f_1_p* x(5) )+(g_1_p*(power( x(6) ,( 2 )))* x(2) ))) )
	];


	
endfunction
        x0=[0;0;2.5;0;0;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)'],[1;2;3;4;5;6])

//real_variable:
	
	
//x(1)   id: D_1  initialValue: 0
	
//x(2)   id: E_1  initialValue: 0
	
//x(3)   id: R_1  initialValue: 2.5
	
//x(4)   id: RS_1  initialValue: 0
	
//x(5)   id: theta_1  initialValue: 0
	
//x(6)   id: X_1  initialValue: 0