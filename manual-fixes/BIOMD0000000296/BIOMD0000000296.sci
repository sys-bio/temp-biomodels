
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_environment   id: environment
	compartment_environment=1;
		
// kc1_p   id: kc1
	kc1_p=0.8;
		
// kc2_p   id: kc2
	kc2_p=0.4;
		
// Cm_p   id: Cm
	Cm_p=100;
		
// D_p   id: D
	D_p=0.1125;
		
// kA1_p   id: kA1
	kA1_p=0.1;
		
// kA2_p   id: kA2
	kA2_p=0;
		
// d2_p   id: d2
	d2_p=0.3;
		
// K2_p   id: K2
	K2_p=10;
		
// d1_p   id: d1
	d1_p=0;
		
// K1_p   id: K1
	K1_p=10;
		
// dAA1_p   id: dAA1
	dAA1_p=0.017;
		
// dAA2_p   id: dAA2
	dAA2_p=0.11;
		
// IPTG_s   id: IPTG
	IPTG_s=5;
		



xdot=[
//x(1)   ID: C1  initialValue: 20
	(1/compartment_environment)*( (-1)*(1)* (compartment_environment*(D_p+(( ( (( 0.5 )+((power(IPTG_s,( 2 )))/((power(( 5 ),( 2 )))+(power(IPTG_s,( 2 )))))) ) *K1_p)/(K1_p+(power( x(4) ,( 2 ))))))* x(1) ) + (1)*(1)* (compartment_environment*kc1_p* x(1) *(( 1 )-(( x(1) + x(2) )/Cm_p))) );
	
//x(2)   ID: C2  initialValue: 20
	(1/compartment_environment)*( (-1)*(1)* (compartment_environment*(D_p+((d2_p*(power( x(3) ,( 2 ))))/(K2_p+(power( x(3) ,( 2 ))))))* x(2) ) + (1)*(1)* (compartment_environment*kc2_p* x(2) *(( 1 )-(( x(1) + x(2) )/Cm_p))) );
	
//x(3)   ID: A1  initialValue: 0.1
	(1/compartment_environment)*( (-1)*(1)* (compartment_environment*(dAA1_p+D_p)* x(3) ) + (1)*(1)* (compartment_environment*kA1_p* x(1) ) );
	
//x(4)   ID: A2  initialValue: 0.1
	(1/compartment_environment)*( (-1)*(1)* (compartment_environment*(dAA2_p+D_p)* x(4) ) + (1)*(1)* (compartment_environment* ( (( 0.02 )+(( 0.03 )*((power(IPTG_s,( 2 )))/((power(( 5 ),( 2 )))+(power(IPTG_s,( 2 ))))))) ) * x(2) ) );
	
//x(5)   ID: sink  initialValue: 0
	0;
	
//x(6)   ID: source  initialValue: 0
	0
	];


	
endfunction
        x0=[20;20;0.1;0.1;0;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)'],[1;2;3;4;5;6])

//real_variable:
	
	
//x(1)   id: C1  initialValue: 20
	
//x(2)   id: C2  initialValue: 20
	
//x(3)   id: A1  initialValue: 0.1
	
//x(4)   id: A2  initialValue: 0.1
	
//x(5)   id: sink  initialValue: 0
	
//x(6)   id: source  initialValue: 0