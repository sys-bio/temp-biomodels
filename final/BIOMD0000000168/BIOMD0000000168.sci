
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_cell_1   id: cell_1
	compartment_cell_1=1;
		
// aD_1_p   id: aD_1
	aD_1_p=0.4;
		
// k_1_p   id: k_1
	k_1_p=0.05;
		
// GF_1_p   id: GF_1
	GF_1_p=6.3;
		
// dD_1_p   id: dD_1
	dD_1_p=0.4;
		
// aE_1_p   id: aE_1
	aE_1_p=0.16;
		
// af_1_p   id: af_1
	af_1_p=0.9;
		
// theta_1_p   id: theta_1
	theta_1_p=1.5;
		
// dE_1_p   id: dE_1
	dE_1_p=0.2;
		
// pX_1_p   id: pX_1
	pX_1_p=0.48;
		
// RT_1_p   id: RT_1
	RT_1_p=2.5;
		
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
		
// aX_1_p   id: aX_1
	aX_1_p=0.08;
		
// f_1_p   id: f_1
	f_1_p=0.2;
		
// g_1_p   id: g_1
	g_1_p=0.528;
		
// dX_1_p   id: dX_1
	dX_1_p=1.04;
		
// qX_1_p   id: qX_1
	qX_1_p=0.8;
		
// unpho_RB_p   id: unpho_RB
	unpho_RB_p=0;
		
// E2F_1_s   id: E2F_1
	E2F_1_s=0;
		
// RP_1_s   id: RP_1
	RP_1_s=0;
		



xdot=[
//x(1)   ID: D_1  initialValue: 0.1
	(1/compartment_cell_1)*( (-1)*(1)* (dD_1_p* x(2) * x(1) ) + (1)*(1)* (aD_1_p*((k_1_p*GF_1_p)/(( 1 )+(k_1_p*GF_1_p)))) );
	
//x(2)   ID: E_1  initialValue: 0.6
	(1/compartment_cell_1)*( (-1)*(1)* (dE_1_p* x(5) * x(2) ) + (1)*(1)* (aE_1_p*(( 1 )+(af_1_p* ( (theta_1_p- x(3) ) ) ))) );
	
//x(3)   ID: RS_1  initialValue: 1
	(1/compartment_cell_1)*( (-1)*(1)* ((pD_1_p* x(3) * x(1) )/(qD_1_p+ x(3) + x(1) )) + (-1)*(1)* ((pE_1_p* x(3) * x(2) )/(qE_1_p+ x(3) + x(2) )) + (1)*(1)* (pS_1_p* ( (theta_1_p- x(3) ) ) * x(4) ) );
	
//x(4)   ID: R_1  initialValue: 0.5
	(1/compartment_cell_1)*( (-1)*(1)* (pS_1_p* ( (theta_1_p- x(3) ) ) * x(4) ) + (1)*(1)* ((pX_1_p* ( ((RT_1_p- x(3) )- x(4) ) ) * x(5) )/(qX_1_p+ ( ((RT_1_p- x(3) )- x(4) ) ) + x(5) )) );
	
//x(5)   ID: X_1  initialValue: 0.7
	(1/compartment_cell_1)*( (-1)*(1)* (dX_1_p* x(5) ) + (1)*(1)* ((aX_1_p* x(2) )+(f_1_p* ( (theta_1_p- x(3) ) ) )+(g_1_p*(power( x(5) ,( 2 )))* x(2) )) )
	];


	
endfunction
        x0=[0.1;0.6;1;0.5;0.7];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)'],[1;2;3;4;5])

//real_variable:
	
	
//x(1)   id: D_1  initialValue: 0.1
	
//x(2)   id: E_1  initialValue: 0.6
	
//x(3)   id: RS_1  initialValue: 1
	
//x(4)   id: R_1  initialValue: 0.5
	
//x(5)   id: X_1  initialValue: 0.7