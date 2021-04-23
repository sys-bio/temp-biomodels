
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_cell   id: cell
	compartment_cell=1;
		
// V1_p   id: V1
	V1_p=0;
		
// V3_p   id: V3
	V3_p=0;
		
// VM1_p   id: VM1
	VM1_p=3;
		
// VM3_p   id: VM3
	VM3_p=1;
		
// Kc_p   id: Kc
	Kc_p=0.5;
		
// vi_reaction1   id: vi     reactionID: reaction1
	vi_reaction1=0.025;
	
// kd_reaction2   id: kd     reactionID: reaction2
	kd_reaction2=0.01;
	
// vd_reaction3   id: vd     reactionID: reaction3
	vd_reaction3=0.25;
	
// Kd_reaction3   id: Kd     reactionID: reaction3
	Kd_reaction3=0.02;
	
// K1_reaction4   id: K1     reactionID: reaction4
	K1_reaction4=0.005;
	
// V2_reaction5   id: V2     reactionID: reaction5
	V2_reaction5=1.5;
	
// K2_reaction5   id: K2     reactionID: reaction5
	K2_reaction5=0.005;
	
// K3_reaction6   id: K3     reactionID: reaction6
	K3_reaction6=0.005;
	
// K4_reaction7   id: K4     reactionID: reaction7
	K4_reaction7=0.005;
	
// V4_reaction7   id: V4     reactionID: reaction7
	V4_reaction7=0.5;
	



xdot=[
//x(1)   ID: C  initialValue: 0.01
	(1/compartment_cell)*( (-1)*(1)* ( x(1) *compartment_cell*kd_reaction2) + (-1)*(1)* ( x(1) *compartment_cell*vd_reaction3* x(3) *(power(( x(1) +Kd_reaction3),( -1 )))) + (1)*(1)* (compartment_cell*vi_reaction1) );
	
//x(2)   ID: M  initialValue: 0.01
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell* x(2) *V2_reaction5*(power((K2_reaction5+ x(2) ),( -1 )))) + (1)*(1)* (compartment_cell* x(4) * ( ( x(1) *VM1_p*(power(( x(1) +Kc_p),( -1 )))) ) *(power((K1_reaction4+ x(4) ),( -1 )))) );
	
//x(3)   ID: X  initialValue: 0.01
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*V4_reaction7* x(3) *(power((K4_reaction7+ x(3) ),( -1 )))) + (1)*(1)* (compartment_cell* ( ( x(2) *VM3_p) ) * x(5) *(power((K3_reaction6+ x(5) ),( -1 )))) );
	
//x(4)   ID: MI  initialValue: 0.99
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell* x(4) * ( ( x(1) *VM1_p*(power(( x(1) +Kc_p),( -1 )))) ) *(power((K1_reaction4+ x(4) ),( -1 )))) + (1)*(1)* (compartment_cell* x(2) *V2_reaction5*(power((K2_reaction5+ x(2) ),( -1 )))) );
	
//x(5)   ID: XI  initialValue: 0.99
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell* ( ( x(2) *VM3_p) ) * x(5) *(power((K3_reaction6+ x(5) ),( -1 )))) + (1)*(1)* (compartment_cell*V4_reaction7* x(3) *(power((K4_reaction7+ x(3) ),( -1 )))) )
	];


	
endfunction
        x0=[0.01;0.01;0.01;0.99;0.99];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)'],[1;2;3;4;5])

//real_variable:
	
	
//x(1)   id: C  initialValue: 0.01
	
//x(2)   id: M  initialValue: 0.01
	
//x(3)   id: X  initialValue: 0.01
	
//x(4)   id: MI  initialValue: 0.99
	
//x(5)   id: XI  initialValue: 0.99