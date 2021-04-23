
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_Cell   id: Cell
	compartment_Cell=1;
		
// compartment_compartment_0000002   id: compartment_0000002
	compartment_compartment_0000002=1;
		
// Pt_p   id: Pt
	Pt_p=0;
		
// Tt_p   id: Tt
	Tt_p=0;
		
// V_mT_p   id: V_mT
	V_mT_p=0.7;
		
// V_dT_p   id: V_dT
	V_dT_p=2;
		
// K1_P_P0_to_P1   id: K1_P     reactionID: P0_to_P1
	K1_P_P0_to_P1=2;
	
// V_1P_P0_to_P1   id: V_1P     reactionID: P0_to_P1
	V_1P_P0_to_P1=8;
	
// K_1T_T0_to_T1   id: K_1T     reactionID: T0_to_T1
	K_1T_T0_to_T1=2;
	
// V_1T_T0_to_T1   id: V_1T     reactionID: T0_to_T1
	V_1T_T0_to_T1=8;
	
// K_2P_P1_to_P0   id: K_2P     reactionID: P1_to_P0
	K_2P_P1_to_P0=2;
	
// V_2P_P1_to_P0   id: V_2P     reactionID: P1_to_P0
	V_2P_P1_to_P0=1;
	
// K_2T_T1_to_T0   id: K_2T     reactionID: T1_to_T0
	K_2T_T1_to_T0=2;
	
// V_2T_T1_to_T0   id: V_2T     reactionID: T1_to_T0
	V_2T_T1_to_T0=1;
	
// K_3P_P1_to_P2   id: K_3P     reactionID: P1_to_P2
	K_3P_P1_to_P2=2;
	
// V_3P_P1_to_P2   id: V_3P     reactionID: P1_to_P2
	V_3P_P1_to_P2=8;
	
// K_3T_T1_to_T2   id: K_3T     reactionID: T1_to_T2
	K_3T_T1_to_T2=2;
	
// V_3T_T1_to_T2   id: V_3T     reactionID: T1_to_T2
	V_3T_T1_to_T2=8;
	
// K_4P_P2_to_P1   id: K_4P     reactionID: P2_to_P1
	K_4P_P2_to_P1=2;
	
// V_4P_P2_to_P1   id: V_4P     reactionID: P2_to_P1
	V_4P_P2_to_P1=1;
	
// K_4T_T2_to_T1   id: K_4T     reactionID: T2_to_T1
	K_4T_T2_to_T1=2;
	
// V_4T_T2_to_T1   id: V_4T     reactionID: T2_to_T1
	V_4T_T2_to_T1=1;
	
// k_d_P0_degradation   id: k_d     reactionID: P0_degradation
	k_d_P0_degradation=0.01;
	
// k_d_T0_degradation   id: k_d     reactionID: T0_degradation
	k_d_T0_degradation=0.01;
	
// k_d_P1_degradation   id: k_d     reactionID: P1_degradation
	k_d_P1_degradation=0.01;
	
// k_d_T1_degradation   id: k_d     reactionID: T1_degradation
	k_d_T1_degradation=0.01;
	
// k_d_P2_degradation   id: k_d     reactionID: P2_degradation
	k_d_P2_degradation=0.01;
	
// V_dP_P2_degradation   id: V_dP     reactionID: P2_degradation
	V_dP_P2_degradation=2;
	
// K_dP_P2_degradation   id: K_dP     reactionID: P2_degradation
	K_dP_P2_degradation=0.2;
	
// k_d_T2_degradation   id: k_d     reactionID: T2_degradation
	k_d_T2_degradation=0.01;
	
// K_dT_T2_degradation   id: K_dT     reactionID: T2_degradation
	K_dT_T2_degradation=0.2;
	
// k3_PT_complex_formation   id: k3     reactionID: PT_complex_formation
	k3_PT_complex_formation=1.2;
	
// k4_PT_complex_formation   id: k4     reactionID: PT_complex_formation
	k4_PT_complex_formation=0.6;
	
// k1_PT_complex_nucleation   id: k1     reactionID: PT_complex_nucleation
	k1_PT_complex_nucleation=0.6;
	
// k2_PT_complex_nucleation   id: k2     reactionID: PT_complex_nucleation
	k2_PT_complex_nucleation=0.2;
	
// k_dC_PT_complex_degradation   id: k_dC     reactionID: PT_complex_degradation
	k_dC_PT_complex_degradation=0.01;
	
// k_dN_PTnucl_complex_degradation   id: k_dN     reactionID: PTnucl_complex_degradation
	k_dN_PTnucl_complex_degradation=0.01;
	
// v_sP_Mp_production   id: v_sP     reactionID: Mp_production
	v_sP_Mp_production=1;
	
// K_IP_Mp_production   id: K_IP     reactionID: Mp_production
	K_IP_Mp_production=1;
	
// n_Mp_production   id: n     reactionID: Mp_production
	n_Mp_production=4;
	
// V_sT_Mt_production   id: V_sT     reactionID: Mt_production
	V_sT_Mt_production=1;
	
// K_IT_Mt_production   id: K_IT     reactionID: Mt_production
	K_IT_Mt_production=1;
	
// n_Mt_production   id: n     reactionID: Mt_production
	n_Mt_production=4;
	
// k_sP_P0_production   id: k_sP     reactionID: P0_production
	k_sP_P0_production=0.9;
	
// k_sT_T0_production   id: k_sT     reactionID: T0_production
	k_sT_T0_production=0.9;
	
// k_d_Mp_degradation   id: k_d     reactionID: Mp_degradation
	k_d_Mp_degradation=0.01;
	
// V_mP_Mp_degradation   id: V_mP     reactionID: Mp_degradation
	V_mP_Mp_degradation=0.7;
	
// K_mP_Mp_degradation   id: K_mP     reactionID: Mp_degradation
	K_mP_Mp_degradation=0.2;
	
// k_d_Mt_degradation   id: k_d     reactionID: Mt_degradation
	k_d_Mt_degradation=0.01;
	
// K_mT_Mt_degradation   id: K_mT     reactionID: Mt_degradation
	K_mT_Mt_degradation=0.2;
	



xdot=[
//x(1)   ID: P0  initialValue: 0
	(1/compartment_Cell)*( (-1)*(1)* ((compartment_Cell*V_1P_P0_to_P1* x(1) )/(K1_P_P0_to_P1+ x(1) )) + (-1)*(1)* (compartment_Cell*k_d_P0_degradation* x(1) ) + (1)*(1)* ((compartment_Cell*V_2P_P1_to_P0* x(3) )/(K_2P_P1_to_P0+ x(3) )) + (1)*(1)* (compartment_Cell*k_sP_P0_production* x(9) ) );
	
//x(2)   ID: T0  initialValue: 0
	(1/compartment_Cell)*( (-1)*(1)* ((compartment_Cell*V_1T_T0_to_T1* x(2) )/(K_1T_T0_to_T1+ x(2) )) + (-1)*(1)* (compartment_Cell*k_d_T0_degradation* x(2) ) + (1)*(1)* ((compartment_Cell*V_2T_T1_to_T0* x(4) )/(K_2T_T1_to_T0+ x(4) )) + (1)*(1)* (compartment_Cell*k_sT_T0_production* x(10) ) );
	
//x(3)   ID: P1  initialValue: 0
	(1/compartment_Cell)*( (-1)*(1)* ((compartment_Cell*V_2P_P1_to_P0* x(3) )/(K_2P_P1_to_P0+ x(3) )) + (-1)*(1)* ((compartment_Cell*V_3P_P1_to_P2* x(3) )/(K_3P_P1_to_P2+ x(3) )) + (-1)*(1)* (compartment_Cell*k_d_P1_degradation* x(3) ) + (1)*(1)* ((compartment_Cell*V_1P_P0_to_P1* x(1) )/(K1_P_P0_to_P1+ x(1) )) + (1)*(1)* ((compartment_Cell*V_4P_P2_to_P1* x(5) )/(K_4P_P2_to_P1+ x(5) )) );
	
//x(4)   ID: T1  initialValue: 0
	(1/compartment_Cell)*( (-1)*(1)* ((compartment_Cell*V_2T_T1_to_T0* x(4) )/(K_2T_T1_to_T0+ x(4) )) + (-1)*(1)* ((compartment_Cell*V_3T_T1_to_T2* x(4) )/(K_3T_T1_to_T2+ x(4) )) + (-1)*(1)* (compartment_Cell*k_d_T1_degradation* x(4) ) + (1)*(1)* ((compartment_Cell*V_1T_T0_to_T1* x(2) )/(K_1T_T0_to_T1+ x(2) )) + (1)*(1)* ((compartment_Cell*V_4T_T2_to_T1* x(6) )/(K_4T_T2_to_T1+ x(6) )) );
	
//x(5)   ID: P2  initialValue: 0
	(1/compartment_Cell)*( (-1)*(1)* ((compartment_Cell*V_4P_P2_to_P1* x(5) )/(K_4P_P2_to_P1+ x(5) )) + (-1)*(1)* ((compartment_Cell*k_d_P2_degradation* x(5) )+((compartment_Cell*V_dP_P2_degradation* x(5) )/(K_dP_P2_degradation+ x(5) ))) + (-1)*(1)* ((compartment_Cell*k3_PT_complex_formation* x(5) * x(6) )-(compartment_Cell*k4_PT_complex_formation* x(7) )) + (1)*(1)* ((compartment_Cell*V_3P_P1_to_P2* x(3) )/(K_3P_P1_to_P2+ x(3) )) );
	
//x(6)   ID: T2  initialValue: 0
	(1/compartment_Cell)*( (-1)*(1)* ((compartment_Cell*V_4T_T2_to_T1* x(6) )/(K_4T_T2_to_T1+ x(6) )) + (-1)*(1)* ((compartment_Cell*k_d_T2_degradation* x(6) )+((compartment_Cell*V_dT_p* x(6) )/(K_dT_T2_degradation+ x(6) ))) + (-1)*(1)* ((compartment_Cell*k3_PT_complex_formation* x(5) * x(6) )-(compartment_Cell*k4_PT_complex_formation* x(7) )) + (1)*(1)* ((compartment_Cell*V_3T_T1_to_T2* x(4) )/(K_3T_T1_to_T2+ x(4) )) );
	
//x(7)   ID: CC  initialValue: 0
	(1/compartment_Cell)*( (-1)*(1)* ((compartment_Cell*k1_PT_complex_nucleation* x(7) )-(compartment_compartment_0000002*k2_PT_complex_nucleation* x(8) )) + (-1)*(1)* (compartment_Cell*k_dC_PT_complex_degradation* x(7) ) + (1)*(1)* ((compartment_Cell*k3_PT_complex_formation* x(5) * x(6) )-(compartment_Cell*k4_PT_complex_formation* x(7) )) );
	
//x(8)   ID: Cn  initialValue: 0
	(1/compartment_compartment_0000002)*( (-1)*(1)* (compartment_compartment_0000002*k_dN_PTnucl_complex_degradation* x(8) ) + (1)*(1)* ((compartment_Cell*k1_PT_complex_nucleation* x(7) )-(compartment_compartment_0000002*k2_PT_complex_nucleation* x(8) )) );
	
//x(9)   ID: Mp  initialValue: 0
	(1/compartment_Cell)*( (-1)*(1)* ((compartment_Cell*k_d_Mp_degradation* x(9) )+((compartment_Cell*V_mP_Mp_degradation* x(9) )/(K_mP_Mp_degradation+ x(9) ))) + (1)*(1)* ((compartment_Cell*v_sP_Mp_production*(power(K_IP_Mp_production,n_Mp_production)))/((power(K_IP_Mp_production,n_Mp_production))+(power( x(8) ,n_Mp_production)))) );
	
//x(10)   ID: Mt  initialValue: 0
	(1/compartment_Cell)*( (-1)*(1)* ((compartment_Cell*k_d_Mt_degradation* x(10) )+((compartment_Cell*V_mT_p* x(10) )/(K_mT_Mt_degradation+ x(10) ))) + (1)*(1)* ((compartment_Cell*V_sT_Mt_production*(power(K_IT_Mt_production,n_Mt_production)))/((power(K_IT_Mt_production,n_Mt_production))+(power( x(8) ,n_Mt_production)))) )
	];


	
endfunction
        x0=[0;0;0;0;0;0;0;0;0;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)'],[1;2;3;4;5;6;7;8;9;10])

//real_variable:
	
	
//x(1)   id: P0  initialValue: 0
	
//x(2)   id: T0  initialValue: 0
	
//x(3)   id: P1  initialValue: 0
	
//x(4)   id: T1  initialValue: 0
	
//x(5)   id: P2  initialValue: 0
	
//x(6)   id: T2  initialValue: 0
	
//x(7)   id: CC  initialValue: 0
	
//x(8)   id: Cn  initialValue: 0
	
//x(9)   id: Mp  initialValue: 0
	
//x(10)   id: Mt  initialValue: 0