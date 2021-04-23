
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
		
// P2_p   id: P2
	P2_p=40;
		
// dsp1ksp_p   id: dsp1ksp
	dsp1ksp_p=0;
		
// dsp1p2kd_p   id: dsp1p2kd
	dsp1p2kd_p=0;
		
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
	
// __RATE______r4   id: __RATE__     reactionID: ___r4
	__RATE______r4=0.1;
	



xdot=[
//x(1)   ID: P1  initialValue: 10
	(1/compartment_univ)*( (-1)*(1)* (__RATE______r2* x(1) ) + (1)*(1)* ((ks_p*(k0_p+(power(( ( ((Kd_p/( 2 ))*((( 1 )+(( ( ((Ksp_p/( 2 ))*((( 1 )+((s_p+( x(1) *compartment_univ))/Ksp_p))-(power(((power((( 1 )+((s_p+( x(1) *compartment_univ))/Ksp_p)),( 2 )))-((( 4 )*s_p* x(1) *compartment_univ)/(power(Ksp_p,( 2 ))))),( 0.5 ))))) ) +P2_p)/Kd_p))-(power(((power((( 1 )+(( ( ((Ksp_p/( 2 ))*((( 1 )+((s_p+( x(1) *compartment_univ))/Ksp_p))-(power(((power((( 1 )+((s_p+( x(1) *compartment_univ))/Ksp_p)),( 2 )))-((( 4 )*s_p* x(1) *compartment_univ)/(power(Ksp_p,( 2 ))))),( 0.5 ))))) ) +P2_p)/Kd_p)),( 2 )))-((( 4 )* ( ((Ksp_p/( 2 ))*((( 1 )+((s_p+( x(1) *compartment_univ))/Ksp_p))-(power(((power((( 1 )+((s_p+( x(1) *compartment_univ))/Ksp_p)),( 2 )))-((( 4 )*s_p* x(1) *compartment_univ)/(power(Ksp_p,( 2 ))))),( 0.5 ))))) ) *P2_p)/(power(Kd_p,( 2 ))))),( 0.5 ))))) ) /ka_p),h_p))))/(( 1 )+(power(( ( ((Kd_p/( 2 ))*((( 1 )+(( ( ((Ksp_p/( 2 ))*((( 1 )+((s_p+( x(1) *compartment_univ))/Ksp_p))-(power(((power((( 1 )+((s_p+( x(1) *compartment_univ))/Ksp_p)),( 2 )))-((( 4 )*s_p* x(1) *compartment_univ)/(power(Ksp_p,( 2 ))))),( 0.5 ))))) ) +P2_p)/Kd_p))-(power(((power((( 1 )+(( ( ((Ksp_p/( 2 ))*((( 1 )+((s_p+( x(1) *compartment_univ))/Ksp_p))-(power(((power((( 1 )+((s_p+( x(1) *compartment_univ))/Ksp_p)),( 2 )))-((( 4 )*s_p* x(1) *compartment_univ)/(power(Ksp_p,( 2 ))))),( 0.5 ))))) ) +P2_p)/Kd_p)),( 2 )))-((( 4 )* ( ((Ksp_p/( 2 ))*((( 1 )+((s_p+( x(1) *compartment_univ))/Ksp_p))-(power(((power((( 1 )+((s_p+( x(1) *compartment_univ))/Ksp_p)),( 2 )))-((( 4 )*s_p* x(1) *compartment_univ)/(power(Ksp_p,( 2 ))))),( 0.5 ))))) ) *P2_p)/(power(Kd_p,( 2 ))))),( 0.5 ))))) ) /ka_p),h_p)))) );
	
//x(2)   ID: Target  initialValue: 10
	(1/compartment_univ)*( (-1)*(1)* (__RATE______r4* x(2) ) + (1)*(1)* ((ks_p*(k0_p+(power(( ( ((Kd_p/( 2 ))*((( 1 )+(( ( ((Ksp_p/( 2 ))*((( 1 )+((s_p+( x(1) *compartment_univ))/Ksp_p))-(power(((power((( 1 )+((s_p+( x(1) *compartment_univ))/Ksp_p)),( 2 )))-((( 4 )*s_p* x(1) *compartment_univ)/(power(Ksp_p,( 2 ))))),( 0.5 ))))) ) +P2_p)/Kd_p))-(power(((power((( 1 )+(( ( ((Ksp_p/( 2 ))*((( 1 )+((s_p+( x(1) *compartment_univ))/Ksp_p))-(power(((power((( 1 )+((s_p+( x(1) *compartment_univ))/Ksp_p)),( 2 )))-((( 4 )*s_p* x(1) *compartment_univ)/(power(Ksp_p,( 2 ))))),( 0.5 ))))) ) +P2_p)/Kd_p)),( 2 )))-((( 4 )* ( ((Ksp_p/( 2 ))*((( 1 )+((s_p+( x(1) *compartment_univ))/Ksp_p))-(power(((power((( 1 )+((s_p+( x(1) *compartment_univ))/Ksp_p)),( 2 )))-((( 4 )*s_p* x(1) *compartment_univ)/(power(Ksp_p,( 2 ))))),( 0.5 ))))) ) *P2_p)/(power(Kd_p,( 2 ))))),( 0.5 ))))) ) /ka_p),h_p))))/(( 1 )+(power(( ( ((Kd_p/( 2 ))*((( 1 )+(( ( ((Ksp_p/( 2 ))*((( 1 )+((s_p+( x(1) *compartment_univ))/Ksp_p))-(power(((power((( 1 )+((s_p+( x(1) *compartment_univ))/Ksp_p)),( 2 )))-((( 4 )*s_p* x(1) *compartment_univ)/(power(Ksp_p,( 2 ))))),( 0.5 ))))) ) +P2_p)/Kd_p))-(power(((power((( 1 )+(( ( ((Ksp_p/( 2 ))*((( 1 )+((s_p+( x(1) *compartment_univ))/Ksp_p))-(power(((power((( 1 )+((s_p+( x(1) *compartment_univ))/Ksp_p)),( 2 )))-((( 4 )*s_p* x(1) *compartment_univ)/(power(Ksp_p,( 2 ))))),( 0.5 ))))) ) +P2_p)/Kd_p)),( 2 )))-((( 4 )* ( ((Ksp_p/( 2 ))*((( 1 )+((s_p+( x(1) *compartment_univ))/Ksp_p))-(power(((power((( 1 )+((s_p+( x(1) *compartment_univ))/Ksp_p)),( 2 )))-((( 4 )*s_p* x(1) *compartment_univ)/(power(Ksp_p,( 2 ))))),( 0.5 ))))) ) *P2_p)/(power(Kd_p,( 2 ))))),( 0.5 ))))) ) /ka_p),h_p)))) )
	];


	
endfunction
        x0=[10;10];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)'],[1;2])

//real_variable:
	
	
//x(1)   id: P1  initialValue: 10
	
//x(2)   id: Target  initialValue: 10