
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_system   id: system
	compartment_system=1;
		
// Dex_p   id: Dex
	Dex_p=0;
		
// kms_p   id: kms
	kms_p=1;
		
// n_p   id: n
	n_p=2;
		
// J_p   id: J
	J_p=0.3;
		
// kmd_p   id: kmd
	kmd_p=0.1;
		
// kcps_p   id: kcps
	kcps_p=0.5;
		
// kcpd_p   id: kcpd
	kcpd_p=0.525;
		
// ka_p   id: ka
	ka_p=100;
		
// kd_p   id: kd
	kd_p=0.01;
		
// kp1_p   id: kp1
	kp1_p=10;
		
// Jp_p   id: Jp
	Jp_p=0.05;
		
// chk2_p   id: chk2
	chk2_p=0;
		
// kicd_p   id: kicd
	kicd_p=0.01;
		
// kcp2d_p   id: kcp2d
	kcp2d_p=0.0525;
		
// kica_p   id: kica
	kica_p=20;
		
// chk2c_p   id: chk2c
	chk2c_p=0;
		
// kp2_p   id: kp2
	kp2_p=0.1;
		
// ICtot_p   id: ICtot
	ICtot_p=1;
		
// CPtot_s   id: CPtot
	CPtot_s=0;
		



xdot=[
//x(1)   ID: M  initialValue: 1.4
	(1/compartment_system)*( (-1)*(1)* (compartment_system*kmd_p* x(1) ) + (1)*(1)* (compartment_system*()) + (1)*(1)* (compartment_system*()) );
	
//x(2)   ID: TF  initialValue: 0.13
	(1/compartment_system)*( (-1)*(1)* (compartment_system*kica_p* x(4) * x(2) ) + (1)*(1)* (compartment_system*kicd_p* x(5) ) + (1)*(1)* (compartment_system*kcp2d_p* x(5) ) + (1)*(1)* (compartment_system*chk2c_p* x(5) ) + (1)*(1)* (compartment_system*()) );
	
//x(3)   ID: CP  initialValue: 0.037
	(1/compartment_system)*( (-1)*(1)* (compartment_system*kcpd_p* x(3) ) + (-1)*(2)* (compartment_system*ka_p*(power( x(3) ,( 2 )))) + (-1)*(1)* (compartment_system*()) + (-1)*(1)* (compartment_system*chk2_p* x(3) ) + (1)*(1)* (compartment_system*()) + (1)*(2)* (compartment_system*kd_p* x(4) ) );
	
//x(4)   ID: CP2  initialValue: 0.046
	(1/compartment_system)*( (-1)*(1)* (compartment_system*kd_p* x(4) ) + (-1)*(1)* (compartment_system*kcp2d_p* x(4) ) + (-1)*(1)* (compartment_system*kica_p* x(4) * x(2) ) + (-1)*(1)* (compartment_system*()) + (-1)*(1)* (compartment_system*chk2_p* x(4) ) + (1)*(1)* (compartment_system*ka_p*(power( x(3) ,( 2 )))) + (1)*(1)* (compartment_system*kicd_p* x(5) ) );
	
//x(5)   ID: IC  initialValue: 0.37
	(1/compartment_system)*( (-1)*(1)* (compartment_system*kicd_p* x(5) ) + (-1)*(1)* (compartment_system*kcp2d_p* x(5) ) + (-1)*(1)* (compartment_system*chk2c_p* x(5) ) + (-1)*(1)* (compartment_system*()) + (1)*(1)* (compartment_system*kica_p* x(4) * x(2) ) )
	];


	
endfunction
        x0=[1.4;0.13;0.037;0.046;0.37];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)'],[1;2;3;4;5])

//real_variable:
	
	
//x(1)   id: M  initialValue: 1.4
	
//x(2)   id: TF  initialValue: 0.13
	
//x(3)   id: CP  initialValue: 0.037
	
//x(4)   id: CP2  initialValue: 0.046
	
//x(5)   id: IC  initialValue: 0.37