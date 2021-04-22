
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_univ   id: univ
	compartment_univ=1;
		
// Kd_p   id: Kd
	Kd_p=1E-5;
		
// Ksp_p   id: Ksp
	Ksp_p=0.001;
		
// dspksp_p   id: dspksp
	dspksp_p=0;
		
// dspspkd_p   id: dspspkd
	dspspkd_p=0;
		
// h_p   id: h
	h_p=2;
		
// k0_p   id: k0
	k0_p=0.1;
		
// ka_p   id: ka
	ka_p=40;
		
// ks_p   id: ks
	ks_p=10;
		
// ku_p   id: ku
	ku_p=0.1;
		
// s_p   id: s
	s_p=1000;
		
// __RATE______r2   id: __RATE__     reactionID: ___r2
	__RATE______r2=0.1;
	



xdot=[
//x(1)   ID: P  initialValue: 10
	(1/compartment_univ)*( (-1)*(1)* (__RATE______r2* x(1) ) + (1)*(1)* ((ks_p*(k0_p+(power(( ( ((Kd_p/( 2 ))*((( 1 )+((( 2 )* ( ((Ksp_p/( 2 ))*((( 1 )+((s_p+( x(1) *compartment_univ))/Ksp_p))-(power(((power((( 1 )+((s_p+( x(1) *compartment_univ))/Ksp_p)),( 2 )))-((( 4 )*s_p* x(1) *compartment_univ)/(power(Ksp_p,( 2 ))))),( 0.5 ))))) ) )/Kd_p))-(power(((power((( 1 )+((( 2 )* ( ((Ksp_p/( 2 ))*((( 1 )+((s_p+( x(1) *compartment_univ))/Ksp_p))-(power(((power((( 1 )+((s_p+( x(1) *compartment_univ))/Ksp_p)),( 2 )))-((( 4 )*s_p* x(1) *compartment_univ)/(power(Ksp_p,( 2 ))))),( 0.5 ))))) ) )/Kd_p)),( 2 )))-((( 4 )*(power( ( ((Ksp_p/( 2 ))*((( 1 )+((s_p+( x(1) *compartment_univ))/Ksp_p))-(power(((power((( 1 )+((s_p+( x(1) *compartment_univ))/Ksp_p)),( 2 )))-((( 4 )*s_p* x(1) *compartment_univ)/(power(Ksp_p,( 2 ))))),( 0.5 ))))) ) ,( 2 ))))/(power(Kd_p,( 2 ))))),( 0.5 ))))) ) /ka_p),h_p))))/(( 1 )+(power(( ( ((Kd_p/( 2 ))*((( 1 )+((( 2 )* ( ((Ksp_p/( 2 ))*((( 1 )+((s_p+( x(1) *compartment_univ))/Ksp_p))-(power(((power((( 1 )+((s_p+( x(1) *compartment_univ))/Ksp_p)),( 2 )))-((( 4 )*s_p* x(1) *compartment_univ)/(power(Ksp_p,( 2 ))))),( 0.5 ))))) ) )/Kd_p))-(power(((power((( 1 )+((( 2 )* ( ((Ksp_p/( 2 ))*((( 1 )+((s_p+( x(1) *compartment_univ))/Ksp_p))-(power(((power((( 1 )+((s_p+( x(1) *compartment_univ))/Ksp_p)),( 2 )))-((( 4 )*s_p* x(1) *compartment_univ)/(power(Ksp_p,( 2 ))))),( 0.5 ))))) ) )/Kd_p)),( 2 )))-((( 4 )*(power( ( ((Ksp_p/( 2 ))*((( 1 )+((s_p+( x(1) *compartment_univ))/Ksp_p))-(power(((power((( 1 )+((s_p+( x(1) *compartment_univ))/Ksp_p)),( 2 )))-((( 4 )*s_p* x(1) *compartment_univ)/(power(Ksp_p,( 2 ))))),( 0.5 ))))) ) ,( 2 ))))/(power(Kd_p,( 2 ))))),( 0.5 ))))) ) /ka_p),h_p)))) )
	];


	
endfunction
        x0=[10];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)'],[1])

//real_variable:
	
	
//x(1)   id: P  initialValue: 10