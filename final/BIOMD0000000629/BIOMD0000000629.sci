
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_RAR_retinoids   id: RAR_retinoids
	compartment_RAR_retinoids=1;
		
// k1_LR_complx   id: k1     reactionID: LR_complx
	k1_LR_complx=0.6;
	
// k2_LR_complx   id: k2     reactionID: LR_complx
	k2_LR_complx=0.1;
	
// k1_LRCA_complx   id: k1     reactionID: LRCA_complx
	k1_LRCA_complx=0.014;
	
// k2_LRCA_complx   id: k2     reactionID: LRCA_complx
	k2_LRCA_complx=0.2;
	



xdot=[
//x(1)   ID: L  initialValue: 0.0005
	(1/compartment_RAR_retinoids)*( (-1)*(1)* (compartment_RAR_retinoids*((k1_LR_complx* x(1) * x(3) )-(k2_LR_complx* x(2) ))) );
	
//x(2)   ID: LR  initialValue: 0
	(1/compartment_RAR_retinoids)*( (-1)*(1)* (compartment_RAR_retinoids*((k1_LRCA_complx* x(2) * x(4) )-(k2_LRCA_complx* x(5) ))) + (1)*(1)* (compartment_RAR_retinoids*((k1_LR_complx* x(1) * x(3) )-(k2_LR_complx* x(2) ))) );
	
//x(3)   ID: R  initialValue: 0.0035
	(1/compartment_RAR_retinoids)*( (-1)*(1)* (compartment_RAR_retinoids*((k1_LR_complx* x(1) * x(3) )-(k2_LR_complx* x(2) ))) );
	
//x(4)   ID: CA  initialValue: 30
	(1/compartment_RAR_retinoids)*( (-1)*(1)* (compartment_RAR_retinoids*((k1_LRCA_complx* x(2) * x(4) )-(k2_LRCA_complx* x(5) ))) );
	
//x(5)   ID: LRCA  initialValue: 0
	(1/compartment_RAR_retinoids)*( (1)*(1)* (compartment_RAR_retinoids*((k1_LRCA_complx* x(2) * x(4) )-(k2_LRCA_complx* x(5) ))) )
	];


	
endfunction
        x0=[0.0005;0;0.0035;30;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)'],[1;2;3;4;5])

//real_variable:
	
	
//x(1)   id: L  initialValue: 0.0005
	
//x(2)   id: LR  initialValue: 0
	
//x(3)   id: R  initialValue: 0.0035
	
//x(4)   id: CA  initialValue: 30
	
//x(5)   id: LRCA  initialValue: 0