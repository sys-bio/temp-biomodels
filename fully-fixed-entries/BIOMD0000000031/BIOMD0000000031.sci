
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_uVol   id: uVol
	compartment_uVol=1;
		
// k1cat_p   id: k1cat
	k1cat_p=0.01;
		
// Km1_p   id: Km1
	Km1_p=50;
		
// k2cat_p   id: k2cat
	k2cat_p=15;
		
// Km2_p   id: Km2
	Km2_p=500;
		
// k3cat_p   id: k3cat
	k3cat_p=0.084;
		
// Km3_p   id: Km3
	Km3_p=5;
		
// k4cat_p   id: k4cat
	k4cat_p=0.06;
		
// Km4_p   id: Km4
	Km4_p=18;
		
// Km5_p   id: Km5
	Km5_p=78;
		
// MAPKK1_s   id: MAPKK1
	MAPKK1_s=100;
		
// MAPKK2_s   id: MAPKK2
	MAPKK2_s=1;
		
// MKP3_s   id: MKP3
	MKP3_s=100;
		



xdot=[
//x(1)   ID: M  initialValue: 500
	(1/compartment_uVol)*( (-1)*(1)* (compartment_uVol*(((k1cat_p*MAPKK1_s* x(1) )/Km1_p)/(( 1 )+( x(1) /Km1_p)))) + (1)*(1)* (compartment_uVol*(((k4cat_p*MKP3_s* x(2) )/Km4_p)/(( 1 )+( x(3) /Km3_p)+( x(2) /Km4_p)+( x(1) /Km5_p)))) );
	
//x(2)   ID: Mp  initialValue: 0
	(1/compartment_uVol)*( (-1)*(1)* (compartment_uVol*(((k2cat_p*MAPKK2_s* x(2) )/Km2_p)/(( 1 )+( x(2) /Km2_p)))) + (-1)*(1)* (compartment_uVol*(((k4cat_p*MKP3_s* x(2) )/Km4_p)/(( 1 )+( x(3) /Km3_p)+( x(2) /Km4_p)+( x(1) /Km5_p)))) + (1)*(1)* (compartment_uVol*(((k1cat_p*MAPKK1_s* x(1) )/Km1_p)/(( 1 )+( x(1) /Km1_p)))) + (1)*(1)* (compartment_uVol*(((k3cat_p*MKP3_s* x(3) )/Km3_p)/(( 1 )+( x(3) /Km3_p)+( x(2) /Km4_p)+( x(1) /Km5_p)))) );
	
//x(3)   ID: Mpp  initialValue: 0
	(1/compartment_uVol)*( (-1)*(1)* (compartment_uVol*(((k3cat_p*MKP3_s* x(3) )/Km3_p)/(( 1 )+( x(3) /Km3_p)+( x(2) /Km4_p)+( x(1) /Km5_p)))) + (1)*(1)* (compartment_uVol*(((k2cat_p*MAPKK2_s* x(2) )/Km2_p)/(( 1 )+( x(2) /Km2_p)))) )
	];


	
endfunction
        x0=[500;0;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)'],[1;2;3])

//real_variable:
	
	
//x(1)   id: M  initialValue: 500
	
//x(2)   id: Mp  initialValue: 0
	
//x(3)   id: Mpp  initialValue: 0