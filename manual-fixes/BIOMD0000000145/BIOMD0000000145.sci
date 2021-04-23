
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_Cytosol   id: Cytosol
	compartment_Cytosol=1;
		
// compartment_ER   id: ER
	compartment_ER=1;
		
// Raplc_p   id: Raplc
	Raplc_p=0;
		
// Kp_p   id: Kp
	Kp_p=4;
		
// Rpkc_p   id: Rpkc
	Rpkc_p=0;
		
// Kd_p   id: Kd
	Kd_p=10;
		
// Kr_p   id: Kr
	Kr_p=200;
		
// Rgalpha_gtp_p   id: Rgalpha_gtp
	Rgalpha_gtp_p=0;
		
// n_p   id: n
	n_p=4;
		
// Kg_p   id: Kg
	Kg_p=25;
		
// Rdg_p   id: Rdg
	Rdg_p=0;
		
// m_p   id: m
	m_p=2;
		
// Rip3_p   id: Rip3
	Rip3_p=0;
		
// Ks_p   id: Ks
	Ks_p=25;
		
// Rcyt1_p   id: Rcyt1
	Rcyt1_p=0;
		
// Kc1_p   id: Kc1
	Kc1_p=1000;
		
// Rcyt2_p   id: Rcyt2
	Rcyt2_p=0;
		
// Kc2_p   id: Kc2
	Kc2_p=2000;
		
// Rer_p   id: Rer
	Rer_p=0;
		
// w_p   id: w
	w_p=3;
		
// Ker_p   id: Ker
	Ker_p=75;
		
// Cplc_total_p   id: Cplc_total
	Cplc_total_p=10;
		
// k0_p   id: k0
	k0_p=0.1;
		
// k1_p   id: k1
	k1_p=3.4;
		
// k2_p   id: k2
	k2_p=4;
		
// k3_p   id: k3
	k3_p=4.5;
		
// k4_p   id: k4
	k4_p=1.2;
		
// k5_p   id: k5
	k5_p=0.12;
		
// k6_p   id: k6
	k6_p=14;
		
// k7_p   id: k7
	k7_p=2;
		
// k8_p   id: k8
	k8_p=10500;
		
// k9_p   id: k9
	k9_p=600;
		
// k10_p   id: k10
	k10_p=3000;
		
// k11_p   id: k11
	k11_p=260;
		
// PLC_s   id: PLC
	PLC_s=1;
		
// DG_s   id: DG
	DG_s=1;
		



xdot=[
//x(1)   ID: Galpha_GTP  initialValue: 1
	(1/compartment_Cytosol)*( (-1)*(1)* (compartment_Cytosol*k2_p* ( ( x(2) /(Kp_p+ x(2) )) ) * x(1) ) + (-1)*(1)* (compartment_Cytosol*k3_p* ( ((( ( ) /(Kd_p+ ( ) ))* x(5) )/(Kr_p+ x(5) )) ) * x(1) ) + (1)*(1)* (compartment_Cytosol*k0_p) + (1)*(1)* (compartment_Cytosol*k1_p* x(1) ) );
	
//x(2)   ID: APLC  initialValue: 9
	(1/compartment_Cytosol)*( (-1)*(1)* (compartment_Cytosol*k5_p* x(2) ) + (1)*(1)* (compartment_Cytosol*k4_p* ( ((power( x(1) ,n_p))/((power(Kg_p,n_p))+(power( x(1) ,n_p)))) ) * ( ((power( ( ) ,m_p))/((power(Kd_p,m_p))+(power( ( ) ,m_p)))) ) * ( (Cplc_total_p- x(2) ) ) ) );
	
//x(3)   ID: IP3  initialValue: 1
	(1/compartment_Cytosol)*( (-1)*(1)* (compartment_Cytosol*k7_p* x(3) ) + (1)*(1)* (compartment_Cytosol*k6_p* x(2) ) );
	
//x(4)   ID: Ca_ER  initialValue: 1000
	(1/compartment_ER)*( (-1)*(0.001)* (compartment_ER*((k8_p* ( ((power( x(3) ,( 3 )))/((power(Ks_p,( 3 )))+(power( x(3) ,( 3 ))))) ) * ( ((power( x(4) ,w_p))/((power(Ker_p,w_p))+(power( x(4) ,w_p)))) ) )-(k9_p* ( ( x(5) /(Kc1_p+ x(5) )) ) ))) );
	
//x(5)   ID: Ca_Cyt  initialValue: 200
	(1/compartment_Cytosol)*( (-1)*(0.05)* (compartment_Cytosol*k10_p* ( ( x(5) /(Kc2_p+ x(5) )) ) ) + (1)*(0.01)* (compartment_ER*((k8_p* ( ((power( x(3) ,( 3 )))/((power(Ks_p,( 3 )))+(power( x(3) ,( 3 ))))) ) * ( ((power( x(4) ,w_p))/((power(Ker_p,w_p))+(power( x(4) ,w_p)))) ) )-(k9_p* ( ( x(5) /(Kc1_p+ x(5) )) ) ))) + (1)*(0.05)* (compartment_Cytosol*k11_p) )
	];


	
endfunction
        x0=[1;9;1;1000;200];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)'],[1;2;3;4;5])

//real_variable:
	
	
//x(1)   id: Galpha_GTP  initialValue: 1
	
//x(2)   id: APLC  initialValue: 9
	
//x(3)   id: IP3  initialValue: 1
	
//x(4)   id: Ca_ER  initialValue: 1000
	
//x(5)   id: Ca_Cyt  initialValue: 200