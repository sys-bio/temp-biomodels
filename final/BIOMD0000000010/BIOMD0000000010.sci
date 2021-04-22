
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_uVol   id: uVol
	compartment_uVol=1;
		
// V1_J0   id: V1     reactionID: J0
	V1_J0=2.5;
	
// Ki_J0   id: Ki     reactionID: J0
	Ki_J0=9;
	
// n_J0   id: n     reactionID: J0
	n_J0=1;
	
// K1_J0   id: K1     reactionID: J0
	K1_J0=10;
	
// V2_J1   id: V2     reactionID: J1
	V2_J1=0.25;
	
// KK2_J1   id: KK2     reactionID: J1
	KK2_J1=8;
	
// k3_J2   id: k3     reactionID: J2
	k3_J2=0.025;
	
// KK3_J2   id: KK3     reactionID: J2
	KK3_J2=15;
	
// k4_J3   id: k4     reactionID: J3
	k4_J3=0.025;
	
// KK4_J3   id: KK4     reactionID: J3
	KK4_J3=15;
	
// V5_J4   id: V5     reactionID: J4
	V5_J4=0.75;
	
// KK5_J4   id: KK5     reactionID: J4
	KK5_J4=15;
	
// V6_J5   id: V6     reactionID: J5
	V6_J5=0.75;
	
// KK6_J5   id: KK6     reactionID: J5
	KK6_J5=15;
	
// k7_J6   id: k7     reactionID: J6
	k7_J6=0.025;
	
// KK7_J6   id: KK7     reactionID: J6
	KK7_J6=15;
	
// k8_J7   id: k8     reactionID: J7
	k8_J7=0.025;
	
// KK8_J7   id: KK8     reactionID: J7
	KK8_J7=15;
	
// V9_J8   id: V9     reactionID: J8
	V9_J8=0.5;
	
// KK9_J8   id: KK9     reactionID: J8
	KK9_J8=15;
	
// V10_J9   id: V10     reactionID: J9
	V10_J9=0.5;
	
// KK10_J9   id: KK10     reactionID: J9
	KK10_J9=15;
	



xdot=[
//x(1)   ID: MKKK  initialValue: 90
	(1/compartment_uVol)*( (-1)*(1)* ((compartment_uVol*V1_J0* x(1) )/((( 1 )+(power(( x(8) /Ki_J0),n_J0)))*(K1_J0+ x(1) ))) + (1)*(1)* ((compartment_uVol*V2_J1* x(2) )/(KK2_J1+ x(2) )) );
	
//x(2)   ID: MKKK_P  initialValue: 10
	(1/compartment_uVol)*( (-1)*(1)* ((compartment_uVol*V2_J1* x(2) )/(KK2_J1+ x(2) )) + (1)*(1)* ((compartment_uVol*V1_J0* x(1) )/((( 1 )+(power(( x(8) /Ki_J0),n_J0)))*(K1_J0+ x(1) ))) );
	
//x(3)   ID: MKK  initialValue: 280
	(1/compartment_uVol)*( (-1)*(1)* ((compartment_uVol*k3_J2* x(2) * x(3) )/(KK3_J2+ x(3) )) + (1)*(1)* ((compartment_uVol*V6_J5* x(4) )/(KK6_J5+ x(4) )) );
	
//x(4)   ID: MKK_P  initialValue: 10
	(1/compartment_uVol)*( (-1)*(1)* ((compartment_uVol*k4_J3* x(2) * x(4) )/(KK4_J3+ x(4) )) + (-1)*(1)* ((compartment_uVol*V6_J5* x(4) )/(KK6_J5+ x(4) )) + (1)*(1)* ((compartment_uVol*k3_J2* x(2) * x(3) )/(KK3_J2+ x(3) )) + (1)*(1)* ((compartment_uVol*V5_J4* x(5) )/(KK5_J4+ x(5) )) );
	
//x(5)   ID: MKK_PP  initialValue: 10
	(1/compartment_uVol)*( (-1)*(1)* ((compartment_uVol*V5_J4* x(5) )/(KK5_J4+ x(5) )) + (1)*(1)* ((compartment_uVol*k4_J3* x(2) * x(4) )/(KK4_J3+ x(4) )) );
	
//x(6)   ID: MAPK  initialValue: 280
	(1/compartment_uVol)*( (-1)*(1)* ((compartment_uVol*k7_J6* x(5) * x(6) )/(KK7_J6+ x(6) )) + (1)*(1)* ((compartment_uVol*V10_J9* x(7) )/(KK10_J9+ x(7) )) );
	
//x(7)   ID: MAPK_P  initialValue: 10
	(1/compartment_uVol)*( (-1)*(1)* ((compartment_uVol*k8_J7* x(5) * x(7) )/(KK8_J7+ x(7) )) + (-1)*(1)* ((compartment_uVol*V10_J9* x(7) )/(KK10_J9+ x(7) )) + (1)*(1)* ((compartment_uVol*k7_J6* x(5) * x(6) )/(KK7_J6+ x(6) )) + (1)*(1)* ((compartment_uVol*V9_J8* x(8) )/(KK9_J8+ x(8) )) );
	
//x(8)   ID: MAPK_PP  initialValue: 10
	(1/compartment_uVol)*( (-1)*(1)* ((compartment_uVol*V9_J8* x(8) )/(KK9_J8+ x(8) )) + (1)*(1)* ((compartment_uVol*k8_J7* x(5) * x(7) )/(KK8_J7+ x(7) )) )
	];


	
endfunction
        x0=[90;10;280;10;10;280;10;10];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)'],[1;2;3;4;5;6;7;8])

//real_variable:
	
	
//x(1)   id: MKKK  initialValue: 90
	
//x(2)   id: MKKK_P  initialValue: 10
	
//x(3)   id: MKK  initialValue: 280
	
//x(4)   id: MKK_P  initialValue: 10
	
//x(5)   id: MKK_PP  initialValue: 10
	
//x(6)   id: MAPK  initialValue: 280
	
//x(7)   id: MAPK_P  initialValue: 10
	
//x(8)   id: MAPK_PP  initialValue: 10