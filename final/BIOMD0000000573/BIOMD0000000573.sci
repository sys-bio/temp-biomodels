
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_compartment   id: compartment
	compartment_compartment=1;
		
// v_Kb   id: v     reactionID: Kb
	v_Kb=0.00134;
	
// Km_Kv   id: Km     reactionID: Kv
	Km_Kv=380;
	
// Vmax_Kv   id: Vmax     reactionID: Kv
	Vmax_Kv=0.134;
	
// k1_Kcv   id: k1     reactionID: Kcv
	k1_Kcv=0.0295;
	
// k1_Kdv   id: k1     reactionID: Kdv
	k1_Kdv=6.85E-5;
	
// v_Kc   id: v     reactionID: Kc
	v_Kc=0.07;
	
// k1_Kvc   id: k1     reactionID: Kvc
	k1_Kvc=0.927;
	
// k1_Kdc   id: k1     reactionID: Kdc
	k1_Kdc=5.01E-5;
	



xdot=[
//x(1)   ID: V  initialValue: 1
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*()) + (-1)*(1)* (compartment_compartment*k1_Kcv* x(1) * x(2) ) + (-1)*(1)* (compartment_compartment*k1_Kdv* x(1) ) + (-1)*(1)* (compartment_compartment*k1_Kvc* x(1) * x(2) ) + (1)*(1)* (compartment_compartment*()) + (1)*(2)* (compartment_compartment*()) + (1)*(1)* (compartment_compartment*k1_Kvc* x(1) * x(2) ) );
	
//x(2)   ID: C  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*k1_Kcv* x(1) * x(2) ) + (-1)*(1)* (compartment_compartment*k1_Kvc* x(1) * x(2) ) + (-1)*(1)* (compartment_compartment*k1_Kdc* x(2) ) + (1)*(1)* (compartment_compartment*k1_Kcv* x(1) * x(2) ) + (1)*(1)* (compartment_compartment*()) )
	];


	
endfunction
        x0=[1;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)'],[1;2])

//real_variable:
	
	
//x(1)   id: V  initialValue: 1
	
//x(2)   id: C  initialValue: 0