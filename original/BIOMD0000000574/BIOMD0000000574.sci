
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_cytosol   id: cytosol
	compartment_cytosol=1;
		
// lC_p   id: lC
	lC_p=8616.61;
		
// lN_p   id: lN
	lN_p=322686;
		
// Kd_rbp_TT_p   id: Kd_rbp_TT
	Kd_rbp_TT_p=0.0006;
		
// kon_tbp_p   id: kon_tbp
	kon_tbp_p=100000000;
		
// Kd_rbp_RT_p   id: Kd_rbp_RT
	Kd_rbp_RT_p=0.0006;
		
// kon_AT_p   id: kon_AT
	kon_AT_p=1000000000;
		
// kon_AR_p   id: kon_AR
	kon_AR_p=1000000000;
		
// kon_CR_p   id: kon_CR
	kon_CR_p=10000000;
		
// cN_p   id: cN
	cN_p=0.000215;
		
// k_R2T_C_p   id: k_R2T_C
	k_R2T_C_p=10000;
		
// cC_p   id: cC
	cC_p=0.000317;
		
// kon_CT_p   id: kon_CT
	kon_CT_p=10000000;
		
// k_R2T_N_p   id: k_R2T_N
	k_R2T_N_p=10000;
		
// Kd_tbp_RT_p   id: Kd_tbp_RT
	Kd_tbp_RT_p=1;
		
// KDT_p   id: KDT
	KDT_p=6.242E-5;
		
// conc_rbp_p   id: conc_rbp
	conc_rbp_p=1E-6;
		
// KBT_p   id: KBT
	KBT_p=9.192E-5;
		
// Kd_rbp_RR_p   id: Kd_rbp_RR
	Kd_rbp_RR_p=5E-11;
		
// Kd_rbp_TR_p   id: Kd_rbp_TR
	Kd_rbp_TR_p=7E-8;
		
// Kd_tbp_TT_p   id: Kd_tbp_TT
	Kd_tbp_TT_p=1;
		
// Kd_tbp_TR_p   id: Kd_tbp_TR
	Kd_tbp_TR_p=1;
		
// conc_cam_p   id: conc_cam
	conc_cam_p=1E-6;
		
// Kd_tbp_RR_p   id: Kd_tbp_RR
	Kd_tbp_RR_p=1E-9;
		
// conc_tbp_p   id: conc_tbp
	conc_tbp_p=1E-6;
		
// kon_rbp_p   id: kon_rbp
	kon_rbp_p=100000000;
		
// KCT_p   id: KCT
	KCT_p=6.242E-5;
		
// KAT_p   id: KAT
	KAT_p=9.192E-5;
		
// kon_DR_p   id: kon_DR
	kon_DR_p=10000000;
		
// kon_BR_p   id: kon_BR
	kon_BR_p=1000000000;
		
// koff_tbp_RR_p   id: koff_tbp_RR
	koff_tbp_RR_p=0.1;
		
// k_T2R_N2_p   id: k_T2R_N2
	k_T2R_N2_p=6.70413817319951E5;
		
// k_T2R_N1_p   id: k_T2R_N1
	k_T2R_N1_p=144.13897072379;
		
// koff_AT_p   id: koff_AT
	koff_AT_p=91920;
		
// koff_tbp_TR_p   id: koff_tbp_TR
	koff_tbp_TR_p=100000000;
		
// kon_BT_p   id: kon_BT
	kon_BT_p=1000000000;
		
// koff_tbp_TT_p   id: koff_tbp_TT
	koff_tbp_TT_p=100000000;
		
// koff_DR_p   id: koff_DR
	koff_DR_p=0.1978714;
		
// k_R2T_C1_p   id: k_R2T_C1
	k_R2T_C1_p=10000;
		
// k_R2T_C2_p   id: k_R2T_C2
	k_R2T_C2_p=10000;
		
// koff_rbp_RT_p   id: koff_rbp_RT
	koff_rbp_RT_p=60000;
		
// koff_DT_p   id: koff_DT
	koff_DT_p=624.2;
		
// kon_DT_p   id: kon_DT
	kon_DT_p=10000000;
		
// koff_rbp_RR_p   id: koff_rbp_RR
	koff_rbp_RR_p=0.005;
		
// k_T2R_C_p   id: k_T2R_C
	k_T2R_C_p=1.16054921831207;
		
// koff_tbp_RT_p   id: koff_tbp_RT
	koff_tbp_RT_p=100000000;
		
// koff_CT_p   id: koff_CT
	koff_CT_p=624.2;
		
// koff_BT_p   id: koff_BT
	koff_BT_p=91920;
		
// k_T2R_C1_p   id: k_T2R_C1
	k_T2R_C1_p=3661.03854357121;
		
// k_T2R_C2_p   id: k_T2R_C2
	k_T2R_C2_p=1.15490174876063E7;
		
// koff_AR_p   id: koff_AR
	koff_AR_p=19.7628;
		
// koff_CR_p   id: koff_CR
	koff_CR_p=0.1978714;
		
// koff_BR_p   id: koff_BR
	koff_BR_p=19.7628;
		
// KAR_p   id: KAR
	KAR_p=1.97628E-8;
		
// koff_rbp_TR_p   id: koff_rbp_TR
	koff_rbp_TR_p=7;
		
// k_R2T_N1_p   id: k_R2T_N1
	k_R2T_N1_p=10000;
		
// KCR_p   id: KCR
	KCR_p=1.978714E-8;
		
// KBR_p   id: KBR
	KBR_p=1.97628E-8;
		
// k_T2R_N_p   id: k_T2R_N
	k_T2R_N_p=0.0309898787056147;
		
// k_R2T_N2_p   id: k_R2T_N2
	k_R2T_N2_p=10000;
		
// KDR_p   id: KDR
	KDR_p=1.978714E-8;
		
// koff_rbp_TT_p   id: koff_rbp_TT
	koff_rbp_TT_p=60000;
		
// cam_tbp_tot_p   id: cam_tbp_tot
	cam_tbp_tot_p=0;
		
// ybarN_0_p   id: ybarN_0
	ybarN_0_p=0;
		
// ybar_rbp_p   id: ybar_rbp
	ybar_rbp_p=0;
		
// cam_tot_p   id: cam_tot
	cam_tot_p=3.3E-5;
		
// ybar_tot_p   id: ybar_tot
	ybar_tot_p=0;
		
// cam_tbp_bound_fraction_p   id: cam_tbp_bound_fraction
	cam_tbp_bound_fraction_p=0;
		
// ybar_tbp_p   id: ybar_tbp
	ybar_tbp_p=0;
		
// cam_0_tot_p   id: cam_0_tot
	cam_0_tot_p=3.3E-5;
		
// ybarN_tot_p   id: ybarN_tot
	ybarN_tot_p=0;
		
// cam_0_bound_fraction_p   id: cam_0_bound_fraction
	cam_0_bound_fraction_p=1;
		
// ybar_0_p   id: ybar_0
	ybar_0_p=0;
		
// cam_rbp_bound_fraction_p   id: cam_rbp_bound_fraction
	cam_rbp_bound_fraction_p=0;
		
// ybarC_0_p   id: ybarC_0
	ybarC_0_p=0;
		
// ybarN_rbp_p   id: ybarN_rbp
	ybarN_rbp_p=0;
		
// ybarC_rbp_p   id: ybarC_rbp
	ybarC_rbp_p=0;
		
// ybarN_tbp_p   id: ybarN_tbp
	ybarN_tbp_p=0;
		
// ybarC_tbp_p   id: ybarC_tbp
	ybarC_tbp_p=0;
		
// ybarC_tot_p   id: ybarC_tot
	ybarC_tot_p=0;
		
// cam_rbp_tot_p   id: cam_rbp_tot
	cam_rbp_tot_p=0;
		
// ca_s   id: ca
	ca_s=0;
		



xdot=[
//x(1)   ID: cam_RR_0_0  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(1) )-( ( (Kd_rbp_RR_p*kon_rbp_p) ) * x(2) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(1) )-( ( (Kd_tbp_RR_p*kon_tbp_p) ) * x(3) ))) + (-1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(1) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(4) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(1) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(7) ))) + (-1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(1) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(10) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(1) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(13) ))) + (1)*(1)* (compartment_cytosol*(( ( (k_R2T_C_p/lC_p) ) * x(49) )-(k_R2T_C_p* x(1) ))) + (1)*(1)* (compartment_cytosol*(( ( (k_R2T_N_p/lN_p) ) * x(97) )-(k_R2T_N_p* x(1) ))) );
	
//x(2)   ID: cam_RR_0_rbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(2) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(5) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(2) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(8) ))) + (-1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(2) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(11) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(2) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(14) ))) + (1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(1) )-( ( (Kd_rbp_RR_p*kon_rbp_p) ) * x(2) ))) );
	
//x(3)   ID: cam_RR_0_tbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(3) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(6) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(3) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(9) ))) + (-1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(3) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(12) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(3) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(15) ))) + (1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(1) )-( ( (Kd_tbp_RR_p*kon_tbp_p) ) * x(3) ))) );
	
//x(4)   ID: cam_RR_A_0  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(4) )-( ( (Kd_rbp_RR_p*kon_rbp_p) ) * x(5) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(4) )-( ( (Kd_tbp_RR_p*kon_tbp_p) ) * x(6) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(4) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(16) ))) + (-1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(4) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(19) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(4) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(22) ))) + (1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(1) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(4) ))) + (1)*(1)* (compartment_cytosol*(( ( (k_R2T_C_p/lC_p) ) * x(52) )-(k_R2T_C_p* x(4) ))) + (1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lN_p*cN_p)) ) * x(100) )-( ( ) * x(4) ))) );
	
//x(5)   ID: cam_RR_A_rbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(5) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(17) ))) + (-1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(5) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(20) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(5) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(23) ))) + (1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(4) )-( ( (Kd_rbp_RR_p*kon_rbp_p) ) * x(5) ))) + (1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(2) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(5) ))) );
	
//x(6)   ID: cam_RR_A_tbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(6) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(18) ))) + (-1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(6) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(21) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(6) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(24) ))) + (1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(4) )-( ( (Kd_tbp_RR_p*kon_tbp_p) ) * x(6) ))) + (1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(3) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(6) ))) );
	
//x(7)   ID: cam_RR_B_0  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(7) )-( ( (Kd_rbp_RR_p*kon_rbp_p) ) * x(8) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(7) )-( ( (Kd_tbp_RR_p*kon_tbp_p) ) * x(9) ))) + (-1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(7) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(16) ))) + (-1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(7) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(25) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(7) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(28) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(1) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(7) ))) + (1)*(1)* (compartment_cytosol*(( ( (k_R2T_C_p/lC_p) ) * x(55) )-(k_R2T_C_p* x(7) ))) + (1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lN_p*cN_p)) ) * x(103) )-( ( ) * x(7) ))) );
	
//x(8)   ID: cam_RR_B_rbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(8) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(17) ))) + (-1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(8) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(26) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(8) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(29) ))) + (1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(7) )-( ( (Kd_rbp_RR_p*kon_rbp_p) ) * x(8) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(2) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(8) ))) );
	
//x(9)   ID: cam_RR_B_tbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(9) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(18) ))) + (-1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(9) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(27) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(9) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(30) ))) + (1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(7) )-( ( (Kd_tbp_RR_p*kon_tbp_p) ) * x(9) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(3) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(9) ))) );
	
//x(10)   ID: cam_RR_C_0  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(10) )-( ( (Kd_rbp_RR_p*kon_rbp_p) ) * x(11) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(10) )-( ( (Kd_tbp_RR_p*kon_tbp_p) ) * x(12) ))) + (-1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(10) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(19) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(10) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(25) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(10) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(31) ))) + (1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(1) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(10) ))) + (1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lC_p*cC_p)) ) * x(58) )-( ( ) * x(10) ))) + (1)*(1)* (compartment_cytosol*(( ( (k_R2T_N_p/lN_p) ) * x(106) )-(k_R2T_N_p* x(10) ))) );
	
//x(11)   ID: cam_RR_C_rbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(11) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(20) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(11) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(26) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(11) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(32) ))) + (1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(10) )-( ( (Kd_rbp_RR_p*kon_rbp_p) ) * x(11) ))) + (1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(2) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(11) ))) );
	
//x(12)   ID: cam_RR_C_tbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(12) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(21) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(12) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(27) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(12) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(33) ))) + (1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(10) )-( ( (Kd_tbp_RR_p*kon_tbp_p) ) * x(12) ))) + (1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(3) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(12) ))) );
	
//x(13)   ID: cam_RR_D_0  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(13) )-( ( (Kd_rbp_RR_p*kon_rbp_p) ) * x(14) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(13) )-( ( (Kd_tbp_RR_p*kon_tbp_p) ) * x(15) ))) + (-1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(13) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(22) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(13) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(28) ))) + (-1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(13) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(31) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(1) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(13) ))) + (1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lC_p*cC_p)) ) * x(61) )-( ( ) * x(13) ))) + (1)*(1)* (compartment_cytosol*(( ( (k_R2T_N_p/lN_p) ) * x(109) )-(k_R2T_N_p* x(13) ))) );
	
//x(14)   ID: cam_RR_D_rbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(14) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(23) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(14) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(29) ))) + (-1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(14) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(32) ))) + (1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(13) )-( ( (Kd_rbp_RR_p*kon_rbp_p) ) * x(14) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(2) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(14) ))) );
	
//x(15)   ID: cam_RR_D_tbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(15) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(24) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(15) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(30) ))) + (-1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(15) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(33) ))) + (1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(13) )-( ( (Kd_tbp_RR_p*kon_tbp_p) ) * x(15) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(3) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(15) ))) );
	
//x(16)   ID: cam_RR_AB_0  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(16) )-( ( (Kd_rbp_RR_p*kon_rbp_p) ) * x(17) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(16) )-( ( (Kd_tbp_RR_p*kon_tbp_p) ) * x(18) ))) + (-1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(16) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(34) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(16) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(37) ))) + (1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(7) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(16) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(4) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(16) ))) + (1)*(1)* (compartment_cytosol*(( ( (k_R2T_C_p/lC_p) ) * x(64) )-(k_R2T_C_p* x(16) ))) + (1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lN_p*cN_p*cN_p)) ) * x(112) )-( ( ) * x(16) ))) );
	
//x(17)   ID: cam_RR_AB_rbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(17) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(35) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(17) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(38) ))) + (1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(16) )-( ( (Kd_rbp_RR_p*kon_rbp_p) ) * x(17) ))) + (1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(8) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(17) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(5) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(17) ))) );
	
//x(18)   ID: cam_RR_AB_tbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(18) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(36) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(18) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(39) ))) + (1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(16) )-( ( (Kd_tbp_RR_p*kon_tbp_p) ) * x(18) ))) + (1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(9) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(18) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(6) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(18) ))) );
	
//x(19)   ID: cam_RR_AC_0  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(19) )-( ( (Kd_rbp_RR_p*kon_rbp_p) ) * x(20) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(19) )-( ( (Kd_tbp_RR_p*kon_tbp_p) ) * x(21) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(19) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(34) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(19) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(40) ))) + (1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(10) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(19) ))) + (1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(4) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(19) ))) + (1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lC_p*cC_p)) ) * x(67) )-( ( ) * x(19) ))) + (1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lN_p*cN_p)) ) * x(115) )-( ( ) * x(19) ))) );
	
//x(20)   ID: cam_RR_AC_rbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(20) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(35) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(20) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(41) ))) + (1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(19) )-( ( (Kd_rbp_RR_p*kon_rbp_p) ) * x(20) ))) + (1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(11) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(20) ))) + (1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(5) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(20) ))) );
	
//x(21)   ID: cam_RR_AC_tbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(21) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(36) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(21) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(42) ))) + (1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(19) )-( ( (Kd_tbp_RR_p*kon_tbp_p) ) * x(21) ))) + (1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(12) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(21) ))) + (1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(6) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(21) ))) );
	
//x(22)   ID: cam_RR_AD_0  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(22) )-( ( (Kd_rbp_RR_p*kon_rbp_p) ) * x(23) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(22) )-( ( (Kd_tbp_RR_p*kon_tbp_p) ) * x(24) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(22) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(37) ))) + (-1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(22) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(40) ))) + (1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(13) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(22) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(4) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(22) ))) + (1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lC_p*cC_p)) ) * x(70) )-( ( ) * x(22) ))) + (1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lN_p*cN_p)) ) * x(118) )-( ( ) * x(22) ))) );
	
//x(23)   ID: cam_RR_AD_rbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(23) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(38) ))) + (-1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(23) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(41) ))) + (1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(22) )-( ( (Kd_rbp_RR_p*kon_rbp_p) ) * x(23) ))) + (1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(14) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(23) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(5) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(23) ))) );
	
//x(24)   ID: cam_RR_AD_tbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(24) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(39) ))) + (-1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(24) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(42) ))) + (1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(22) )-( ( (Kd_tbp_RR_p*kon_tbp_p) ) * x(24) ))) + (1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(15) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(24) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(6) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(24) ))) );
	
//x(25)   ID: cam_RR_BC_0  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(25) )-( ( (Kd_rbp_RR_p*kon_rbp_p) ) * x(26) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(25) )-( ( (Kd_tbp_RR_p*kon_tbp_p) ) * x(27) ))) + (-1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(25) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(34) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(25) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(43) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(10) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(25) ))) + (1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(7) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(25) ))) + (1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lC_p*cC_p)) ) * x(73) )-( ( ) * x(25) ))) + (1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lN_p*cN_p)) ) * x(121) )-( ( ) * x(25) ))) );
	
//x(26)   ID: cam_RR_BC_rbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(26) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(35) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(26) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(44) ))) + (1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(25) )-( ( (Kd_rbp_RR_p*kon_rbp_p) ) * x(26) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(11) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(26) ))) + (1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(8) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(26) ))) );
	
//x(27)   ID: cam_RR_BC_tbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(27) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(36) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(27) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(45) ))) + (1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(25) )-( ( (Kd_tbp_RR_p*kon_tbp_p) ) * x(27) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(12) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(27) ))) + (1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(9) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(27) ))) );
	
//x(28)   ID: cam_RR_BD_0  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(28) )-( ( (Kd_rbp_RR_p*kon_rbp_p) ) * x(29) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(28) )-( ( (Kd_tbp_RR_p*kon_tbp_p) ) * x(30) ))) + (-1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(28) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(37) ))) + (-1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(28) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(43) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(13) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(28) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(7) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(28) ))) + (1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lC_p*cC_p)) ) * x(76) )-( ( ) * x(28) ))) + (1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lN_p*cN_p)) ) * x(124) )-( ( ) * x(28) ))) );
	
//x(29)   ID: cam_RR_BD_rbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(29) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(38) ))) + (-1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(29) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(44) ))) + (1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(28) )-( ( (Kd_rbp_RR_p*kon_rbp_p) ) * x(29) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(14) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(29) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(8) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(29) ))) );
	
//x(30)   ID: cam_RR_BD_tbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(30) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(39) ))) + (-1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(30) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(45) ))) + (1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(28) )-( ( (Kd_tbp_RR_p*kon_tbp_p) ) * x(30) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(15) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(30) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(9) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(30) ))) );
	
//x(31)   ID: cam_RR_CD_0  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(31) )-( ( (Kd_rbp_RR_p*kon_rbp_p) ) * x(32) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(31) )-( ( (Kd_tbp_RR_p*kon_tbp_p) ) * x(33) ))) + (-1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(31) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(40) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(31) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(43) ))) + (1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(13) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(31) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(10) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(31) ))) + (1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lC_p*cC_p*cC_p)) ) * x(79) )-( ( ) * x(31) ))) + (1)*(1)* (compartment_cytosol*(( ( (k_R2T_N_p/lN_p) ) * x(127) )-(k_R2T_N_p* x(31) ))) );
	
//x(32)   ID: cam_RR_CD_rbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(32) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(41) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(32) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(44) ))) + (1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(31) )-( ( (Kd_rbp_RR_p*kon_rbp_p) ) * x(32) ))) + (1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(14) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(32) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(11) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(32) ))) );
	
//x(33)   ID: cam_RR_CD_tbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(33) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(42) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(33) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(45) ))) + (1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(31) )-( ( (Kd_tbp_RR_p*kon_tbp_p) ) * x(33) ))) + (1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(15) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(33) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(12) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(33) ))) );
	
//x(34)   ID: cam_RR_ABC_0  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(34) )-( ( (Kd_rbp_RR_p*kon_rbp_p) ) * x(35) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(34) )-( ( (Kd_tbp_RR_p*kon_tbp_p) ) * x(36) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(34) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(46) ))) + (1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(25) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(34) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(19) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(34) ))) + (1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(16) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(34) ))) + (1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lC_p*cC_p)) ) * x(82) )-( ( ) * x(34) ))) + (1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lN_p*cN_p*cN_p)) ) * x(130) )-( ( ) * x(34) ))) );
	
//x(35)   ID: cam_RR_ABC_rbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(35) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(47) ))) + (1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(34) )-( ( (Kd_rbp_RR_p*kon_rbp_p) ) * x(35) ))) + (1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(26) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(35) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(20) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(35) ))) + (1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(17) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(35) ))) );
	
//x(36)   ID: cam_RR_ABC_tbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(36) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(48) ))) + (1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(34) )-( ( (Kd_tbp_RR_p*kon_tbp_p) ) * x(36) ))) + (1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(27) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(36) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(21) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(36) ))) + (1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(18) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(36) ))) );
	
//x(37)   ID: cam_RR_ABD_0  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(37) )-( ( (Kd_rbp_RR_p*kon_rbp_p) ) * x(38) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(37) )-( ( (Kd_tbp_RR_p*kon_tbp_p) ) * x(39) ))) + (-1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(37) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(46) ))) + (1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(28) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(37) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(22) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(37) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(16) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(37) ))) + (1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lC_p*cC_p)) ) * x(85) )-( ( ) * x(37) ))) + (1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lN_p*cN_p*cN_p)) ) * x(133) )-( ( ) * x(37) ))) );
	
//x(38)   ID: cam_RR_ABD_rbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(38) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(47) ))) + (1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(37) )-( ( (Kd_rbp_RR_p*kon_rbp_p) ) * x(38) ))) + (1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(29) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(38) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(23) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(38) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(17) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(38) ))) );
	
//x(39)   ID: cam_RR_ABD_tbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(39) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(48) ))) + (1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(37) )-( ( (Kd_tbp_RR_p*kon_tbp_p) ) * x(39) ))) + (1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(30) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(39) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(24) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(39) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(18) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(39) ))) );
	
//x(40)   ID: cam_RR_ACD_0  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(40) )-( ( (Kd_rbp_RR_p*kon_rbp_p) ) * x(41) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(40) )-( ( (Kd_tbp_RR_p*kon_tbp_p) ) * x(42) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(40) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(46) ))) + (1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(31) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(40) ))) + (1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(22) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(40) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(19) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(40) ))) + (1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lC_p*cC_p*cC_p)) ) * x(88) )-( ( ) * x(40) ))) + (1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lN_p*cN_p)) ) * x(136) )-( ( ) * x(40) ))) );
	
//x(41)   ID: cam_RR_ACD_rbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(41) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(47) ))) + (1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(40) )-( ( (Kd_rbp_RR_p*kon_rbp_p) ) * x(41) ))) + (1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(32) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(41) ))) + (1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(23) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(41) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(20) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(41) ))) );
	
//x(42)   ID: cam_RR_ACD_tbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(42) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(48) ))) + (1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(40) )-( ( (Kd_tbp_RR_p*kon_tbp_p) ) * x(42) ))) + (1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(33) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(42) ))) + (1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(24) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(42) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(21) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(42) ))) );
	
//x(43)   ID: cam_RR_BCD_0  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(43) )-( ( (Kd_rbp_RR_p*kon_rbp_p) ) * x(44) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(43) )-( ( (Kd_tbp_RR_p*kon_tbp_p) ) * x(45) ))) + (-1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(43) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(46) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(31) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(43) ))) + (1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(28) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(43) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(25) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(43) ))) + (1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lC_p*cC_p*cC_p)) ) * x(91) )-( ( ) * x(43) ))) + (1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lN_p*cN_p)) ) * x(139) )-( ( ) * x(43) ))) );
	
//x(44)   ID: cam_RR_BCD_rbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(44) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(47) ))) + (1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(43) )-( ( (Kd_rbp_RR_p*kon_rbp_p) ) * x(44) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(32) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(44) ))) + (1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(29) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(44) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(26) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(44) ))) );
	
//x(45)   ID: cam_RR_BCD_tbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(45) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(48) ))) + (1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(43) )-( ( (Kd_tbp_RR_p*kon_tbp_p) ) * x(45) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(33) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(45) ))) + (1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(30) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(45) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(27) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(45) ))) );
	
//x(46)   ID: cam_RR_ABCD_0  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(46) )-( ( (Kd_rbp_RR_p*kon_rbp_p) ) * x(47) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(46) )-( ( (Kd_tbp_RR_p*kon_tbp_p) ) * x(48) ))) + (1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(43) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(46) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(40) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(46) ))) + (1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(37) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(46) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(34) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(46) ))) + (1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lC_p*cC_p*cC_p)) ) * x(94) )-( ( ) * x(46) ))) + (1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lN_p*cN_p*cN_p)) ) * x(142) )-( ( ) * x(46) ))) );
	
//x(47)   ID: cam_RR_ABCD_rbp  initialValue: 0
	(1/compartment_cytosol)*( (1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(46) )-( ( (Kd_rbp_RR_p*kon_rbp_p) ) * x(47) ))) + (1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(44) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(47) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(41) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(47) ))) + (1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(38) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(47) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(35) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(47) ))) );
	
//x(48)   ID: cam_RR_ABCD_tbp  initialValue: 0
	(1/compartment_cytosol)*( (1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(46) )-( ( (Kd_tbp_RR_p*kon_tbp_p) ) * x(48) ))) + (1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(45) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(48) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(42) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(48) ))) + (1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(39) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(48) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(36) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(48) ))) );
	
//x(49)   ID: cam_RT_0_0  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(49) )-( ( (Kd_rbp_RT_p*kon_rbp_p) ) * x(50) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(49) )-( ( (Kd_tbp_RT_p*kon_tbp_p) ) * x(51) ))) + (-1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(49) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(52) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(49) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(55) ))) + (-1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(49) )-( ( (KCT_p*kon_CT_p) ) * x(58) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(49) )-( ( (KDT_p* ( ) ) ) * x(61) ))) + (-1)*(1)* (compartment_cytosol*(( ( (k_R2T_C_p/lC_p) ) * x(49) )-(k_R2T_C_p* x(1) ))) + (1)*(1)* (compartment_cytosol*(( ( (k_R2T_N_p/lN_p) ) * x(145) )-(k_R2T_N_p* x(49) ))) );
	
//x(50)   ID: cam_RT_0_rbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(50) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(53) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(50) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(56) ))) + (-1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(50) )-( ( (KCT_p*kon_CT_p) ) * x(59) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(50) )-( ( (KDT_p* ( ) ) ) * x(62) ))) + (1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(49) )-( ( (Kd_rbp_RT_p*kon_rbp_p) ) * x(50) ))) );
	
//x(51)   ID: cam_RT_0_tbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(51) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(54) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(51) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(57) ))) + (-1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(51) )-( ( (KCT_p*kon_CT_p) ) * x(60) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(51) )-( ( (KDT_p* ( ) ) ) * x(63) ))) + (1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(49) )-( ( (Kd_tbp_RT_p*kon_tbp_p) ) * x(51) ))) );
	
//x(52)   ID: cam_RT_A_0  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(52) )-( ( (Kd_rbp_RT_p*kon_rbp_p) ) * x(53) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(52) )-( ( (Kd_tbp_RT_p*kon_tbp_p) ) * x(54) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(52) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(64) ))) + (-1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(52) )-( ( (KCT_p*kon_CT_p) ) * x(67) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(52) )-( ( (KDT_p* ( ) ) ) * x(70) ))) + (-1)*(1)* (compartment_cytosol*(( ( (k_R2T_C_p/lC_p) ) * x(52) )-(k_R2T_C_p* x(4) ))) + (1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(49) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(52) ))) + (1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lN_p*cN_p)) ) * x(148) )-( ( ) * x(52) ))) );
	
//x(53)   ID: cam_RT_A_rbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(53) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(65) ))) + (-1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(53) )-( ( (KCT_p*kon_CT_p) ) * x(68) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(53) )-( ( (KDT_p* ( ) ) ) * x(71) ))) + (1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(52) )-( ( (Kd_rbp_RT_p*kon_rbp_p) ) * x(53) ))) + (1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(50) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(53) ))) );
	
//x(54)   ID: cam_RT_A_tbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(54) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(66) ))) + (-1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(54) )-( ( (KCT_p*kon_CT_p) ) * x(69) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(54) )-( ( (KDT_p* ( ) ) ) * x(72) ))) + (1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(52) )-( ( (Kd_tbp_RT_p*kon_tbp_p) ) * x(54) ))) + (1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(51) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(54) ))) );
	
//x(55)   ID: cam_RT_B_0  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(55) )-( ( (Kd_rbp_RT_p*kon_rbp_p) ) * x(56) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(55) )-( ( (Kd_tbp_RT_p*kon_tbp_p) ) * x(57) ))) + (-1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(55) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(64) ))) + (-1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(55) )-( ( (KCT_p*kon_CT_p) ) * x(73) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(55) )-( ( (KDT_p* ( ) ) ) * x(76) ))) + (-1)*(1)* (compartment_cytosol*(( ( (k_R2T_C_p/lC_p) ) * x(55) )-(k_R2T_C_p* x(7) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(49) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(55) ))) + (1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lN_p*cN_p)) ) * x(151) )-( ( ) * x(55) ))) );
	
//x(56)   ID: cam_RT_B_rbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(56) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(65) ))) + (-1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(56) )-( ( (KCT_p*kon_CT_p) ) * x(74) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(56) )-( ( (KDT_p* ( ) ) ) * x(77) ))) + (1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(55) )-( ( (Kd_rbp_RT_p*kon_rbp_p) ) * x(56) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(50) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(56) ))) );
	
//x(57)   ID: cam_RT_B_tbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(57) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(66) ))) + (-1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(57) )-( ( (KCT_p*kon_CT_p) ) * x(75) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(57) )-( ( (KDT_p* ( ) ) ) * x(78) ))) + (1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(55) )-( ( (Kd_tbp_RT_p*kon_tbp_p) ) * x(57) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(51) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(57) ))) );
	
//x(58)   ID: cam_RT_C_0  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(58) )-( ( (Kd_rbp_RT_p*kon_rbp_p) ) * x(59) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(58) )-( ( (Kd_tbp_RT_p*kon_tbp_p) ) * x(60) ))) + (-1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(58) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(67) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(58) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(73) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(58) )-( ( (KDT_p* ( ) ) ) * x(79) ))) + (-1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lC_p*cC_p)) ) * x(58) )-( ( ) * x(10) ))) + (1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(49) )-( ( (KCT_p*kon_CT_p) ) * x(58) ))) + (1)*(1)* (compartment_cytosol*(( ( (k_R2T_N_p/lN_p) ) * x(154) )-(k_R2T_N_p* x(58) ))) );
	
//x(59)   ID: cam_RT_C_rbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(59) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(68) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(59) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(74) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(59) )-( ( (KDT_p* ( ) ) ) * x(80) ))) + (1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(58) )-( ( (Kd_rbp_RT_p*kon_rbp_p) ) * x(59) ))) + (1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(50) )-( ( (KCT_p*kon_CT_p) ) * x(59) ))) );
	
//x(60)   ID: cam_RT_C_tbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(60) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(69) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(60) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(75) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(60) )-( ( (KDT_p* ( ) ) ) * x(81) ))) + (1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(58) )-( ( (Kd_tbp_RT_p*kon_tbp_p) ) * x(60) ))) + (1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(51) )-( ( (KCT_p*kon_CT_p) ) * x(60) ))) );
	
//x(61)   ID: cam_RT_D_0  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(61) )-( ( (Kd_rbp_RT_p*kon_rbp_p) ) * x(62) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(61) )-( ( (Kd_tbp_RT_p*kon_tbp_p) ) * x(63) ))) + (-1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(61) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(70) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(61) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(76) ))) + (-1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(61) )-( ( (KCT_p*kon_CT_p) ) * x(79) ))) + (-1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lC_p*cC_p)) ) * x(61) )-( ( ) * x(13) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(49) )-( ( (KDT_p* ( ) ) ) * x(61) ))) + (1)*(1)* (compartment_cytosol*(( ( (k_R2T_N_p/lN_p) ) * x(157) )-(k_R2T_N_p* x(61) ))) );
	
//x(62)   ID: cam_RT_D_rbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(62) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(71) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(62) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(77) ))) + (-1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(62) )-( ( (KCT_p*kon_CT_p) ) * x(80) ))) + (1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(61) )-( ( (Kd_rbp_RT_p*kon_rbp_p) ) * x(62) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(50) )-( ( (KDT_p* ( ) ) ) * x(62) ))) );
	
//x(63)   ID: cam_RT_D_tbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(63) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(72) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(63) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(78) ))) + (-1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(63) )-( ( (KCT_p*kon_CT_p) ) * x(81) ))) + (1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(61) )-( ( (Kd_tbp_RT_p*kon_tbp_p) ) * x(63) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(51) )-( ( (KDT_p* ( ) ) ) * x(63) ))) );
	
//x(64)   ID: cam_RT_AB_0  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(64) )-( ( (Kd_rbp_RT_p*kon_rbp_p) ) * x(65) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(64) )-( ( (Kd_tbp_RT_p*kon_tbp_p) ) * x(66) ))) + (-1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(64) )-( ( (KCT_p*kon_CT_p) ) * x(82) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(64) )-( ( (KDT_p* ( ) ) ) * x(85) ))) + (-1)*(1)* (compartment_cytosol*(( ( (k_R2T_C_p/lC_p) ) * x(64) )-(k_R2T_C_p* x(16) ))) + (1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(55) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(64) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(52) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(64) ))) + (1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lN_p*cN_p*cN_p)) ) * x(160) )-( ( ) * x(64) ))) );
	
//x(65)   ID: cam_RT_AB_rbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(65) )-( ( (KCT_p*kon_CT_p) ) * x(83) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(65) )-( ( (KDT_p* ( ) ) ) * x(86) ))) + (1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(64) )-( ( (Kd_rbp_RT_p*kon_rbp_p) ) * x(65) ))) + (1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(56) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(65) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(53) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(65) ))) );
	
//x(66)   ID: cam_RT_AB_tbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(66) )-( ( (KCT_p*kon_CT_p) ) * x(84) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(66) )-( ( (KDT_p* ( ) ) ) * x(87) ))) + (1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(64) )-( ( (Kd_tbp_RT_p*kon_tbp_p) ) * x(66) ))) + (1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(57) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(66) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(54) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(66) ))) );
	
//x(67)   ID: cam_RT_AC_0  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(67) )-( ( (Kd_rbp_RT_p*kon_rbp_p) ) * x(68) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(67) )-( ( (Kd_tbp_RT_p*kon_tbp_p) ) * x(69) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(67) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(82) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(67) )-( ( (KDT_p* ( ) ) ) * x(88) ))) + (-1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lC_p*cC_p)) ) * x(67) )-( ( ) * x(19) ))) + (1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(58) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(67) ))) + (1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(52) )-( ( (KCT_p*kon_CT_p) ) * x(67) ))) + (1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lN_p*cN_p)) ) * x(163) )-( ( ) * x(67) ))) );
	
//x(68)   ID: cam_RT_AC_rbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(68) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(83) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(68) )-( ( (KDT_p* ( ) ) ) * x(89) ))) + (1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(67) )-( ( (Kd_rbp_RT_p*kon_rbp_p) ) * x(68) ))) + (1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(59) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(68) ))) + (1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(53) )-( ( (KCT_p*kon_CT_p) ) * x(68) ))) );
	
//x(69)   ID: cam_RT_AC_tbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(69) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(84) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(69) )-( ( (KDT_p* ( ) ) ) * x(90) ))) + (1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(67) )-( ( (Kd_tbp_RT_p*kon_tbp_p) ) * x(69) ))) + (1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(60) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(69) ))) + (1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(54) )-( ( (KCT_p*kon_CT_p) ) * x(69) ))) );
	
//x(70)   ID: cam_RT_AD_0  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(70) )-( ( (Kd_rbp_RT_p*kon_rbp_p) ) * x(71) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(70) )-( ( (Kd_tbp_RT_p*kon_tbp_p) ) * x(72) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(70) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(85) ))) + (-1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(70) )-( ( (KCT_p*kon_CT_p) ) * x(88) ))) + (-1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lC_p*cC_p)) ) * x(70) )-( ( ) * x(22) ))) + (1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(61) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(70) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(52) )-( ( (KDT_p* ( ) ) ) * x(70) ))) + (1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lN_p*cN_p)) ) * x(166) )-( ( ) * x(70) ))) );
	
//x(71)   ID: cam_RT_AD_rbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(71) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(86) ))) + (-1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(71) )-( ( (KCT_p*kon_CT_p) ) * x(89) ))) + (1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(70) )-( ( (Kd_rbp_RT_p*kon_rbp_p) ) * x(71) ))) + (1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(62) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(71) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(53) )-( ( (KDT_p* ( ) ) ) * x(71) ))) );
	
//x(72)   ID: cam_RT_AD_tbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(72) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(87) ))) + (-1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(72) )-( ( (KCT_p*kon_CT_p) ) * x(90) ))) + (1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(70) )-( ( (Kd_tbp_RT_p*kon_tbp_p) ) * x(72) ))) + (1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(63) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(72) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(54) )-( ( (KDT_p* ( ) ) ) * x(72) ))) );
	
//x(73)   ID: cam_RT_BC_0  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(73) )-( ( (Kd_rbp_RT_p*kon_rbp_p) ) * x(74) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(73) )-( ( (Kd_tbp_RT_p*kon_tbp_p) ) * x(75) ))) + (-1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(73) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(82) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(73) )-( ( (KDT_p* ( ) ) ) * x(91) ))) + (-1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lC_p*cC_p)) ) * x(73) )-( ( ) * x(25) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(58) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(73) ))) + (1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(55) )-( ( (KCT_p*kon_CT_p) ) * x(73) ))) + (1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lN_p*cN_p)) ) * x(169) )-( ( ) * x(73) ))) );
	
//x(74)   ID: cam_RT_BC_rbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(74) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(83) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(74) )-( ( (KDT_p* ( ) ) ) * x(92) ))) + (1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(73) )-( ( (Kd_rbp_RT_p*kon_rbp_p) ) * x(74) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(59) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(74) ))) + (1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(56) )-( ( (KCT_p*kon_CT_p) ) * x(74) ))) );
	
//x(75)   ID: cam_RT_BC_tbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(75) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(84) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(75) )-( ( (KDT_p* ( ) ) ) * x(93) ))) + (1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(73) )-( ( (Kd_tbp_RT_p*kon_tbp_p) ) * x(75) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(60) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(75) ))) + (1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(57) )-( ( (KCT_p*kon_CT_p) ) * x(75) ))) );
	
//x(76)   ID: cam_RT_BD_0  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(76) )-( ( (Kd_rbp_RT_p*kon_rbp_p) ) * x(77) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(76) )-( ( (Kd_tbp_RT_p*kon_tbp_p) ) * x(78) ))) + (-1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(76) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(85) ))) + (-1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(76) )-( ( (KCT_p*kon_CT_p) ) * x(91) ))) + (-1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lC_p*cC_p)) ) * x(76) )-( ( ) * x(28) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(61) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(76) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(55) )-( ( (KDT_p* ( ) ) ) * x(76) ))) + (1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lN_p*cN_p)) ) * x(172) )-( ( ) * x(76) ))) );
	
//x(77)   ID: cam_RT_BD_rbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(77) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(86) ))) + (-1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(77) )-( ( (KCT_p*kon_CT_p) ) * x(92) ))) + (1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(76) )-( ( (Kd_rbp_RT_p*kon_rbp_p) ) * x(77) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(62) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(77) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(56) )-( ( (KDT_p* ( ) ) ) * x(77) ))) );
	
//x(78)   ID: cam_RT_BD_tbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(78) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(87) ))) + (-1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(78) )-( ( (KCT_p*kon_CT_p) ) * x(93) ))) + (1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(76) )-( ( (Kd_tbp_RT_p*kon_tbp_p) ) * x(78) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(63) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(78) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(57) )-( ( (KDT_p* ( ) ) ) * x(78) ))) );
	
//x(79)   ID: cam_RT_CD_0  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(79) )-( ( (Kd_rbp_RT_p*kon_rbp_p) ) * x(80) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(79) )-( ( (Kd_tbp_RT_p*kon_tbp_p) ) * x(81) ))) + (-1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(79) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(88) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(79) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(91) ))) + (-1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lC_p*cC_p*cC_p)) ) * x(79) )-( ( ) * x(31) ))) + (1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(61) )-( ( (KCT_p*kon_CT_p) ) * x(79) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(58) )-( ( (KDT_p* ( ) ) ) * x(79) ))) + (1)*(1)* (compartment_cytosol*(( ( (k_R2T_N_p/lN_p) ) * x(175) )-(k_R2T_N_p* x(79) ))) );
	
//x(80)   ID: cam_RT_CD_rbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(80) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(89) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(80) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(92) ))) + (1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(79) )-( ( (Kd_rbp_RT_p*kon_rbp_p) ) * x(80) ))) + (1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(62) )-( ( (KCT_p*kon_CT_p) ) * x(80) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(59) )-( ( (KDT_p* ( ) ) ) * x(80) ))) );
	
//x(81)   ID: cam_RT_CD_tbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(81) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(90) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(81) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(93) ))) + (1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(79) )-( ( (Kd_tbp_RT_p*kon_tbp_p) ) * x(81) ))) + (1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(63) )-( ( (KCT_p*kon_CT_p) ) * x(81) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(60) )-( ( (KDT_p* ( ) ) ) * x(81) ))) );
	
//x(82)   ID: cam_RT_ABC_0  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(82) )-( ( (Kd_rbp_RT_p*kon_rbp_p) ) * x(83) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(82) )-( ( (Kd_tbp_RT_p*kon_tbp_p) ) * x(84) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(82) )-( ( (KDT_p* ( ) ) ) * x(94) ))) + (-1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lC_p*cC_p)) ) * x(82) )-( ( ) * x(34) ))) + (1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(73) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(82) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(67) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(82) ))) + (1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(64) )-( ( (KCT_p*kon_CT_p) ) * x(82) ))) + (1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lN_p*cN_p*cN_p)) ) * x(178) )-( ( ) * x(82) ))) );
	
//x(83)   ID: cam_RT_ABC_rbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(83) )-( ( (KDT_p* ( ) ) ) * x(95) ))) + (1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(82) )-( ( (Kd_rbp_RT_p*kon_rbp_p) ) * x(83) ))) + (1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(74) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(83) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(68) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(83) ))) + (1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(65) )-( ( (KCT_p*kon_CT_p) ) * x(83) ))) );
	
//x(84)   ID: cam_RT_ABC_tbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(84) )-( ( (KDT_p* ( ) ) ) * x(96) ))) + (1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(82) )-( ( (Kd_tbp_RT_p*kon_tbp_p) ) * x(84) ))) + (1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(75) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(84) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(69) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(84) ))) + (1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(66) )-( ( (KCT_p*kon_CT_p) ) * x(84) ))) );
	
//x(85)   ID: cam_RT_ABD_0  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(85) )-( ( (Kd_rbp_RT_p*kon_rbp_p) ) * x(86) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(85) )-( ( (Kd_tbp_RT_p*kon_tbp_p) ) * x(87) ))) + (-1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(85) )-( ( (KCT_p*kon_CT_p) ) * x(94) ))) + (-1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lC_p*cC_p)) ) * x(85) )-( ( ) * x(37) ))) + (1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(76) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(85) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(70) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(85) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(64) )-( ( (KDT_p* ( ) ) ) * x(85) ))) + (1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lN_p*cN_p*cN_p)) ) * x(181) )-( ( ) * x(85) ))) );
	
//x(86)   ID: cam_RT_ABD_rbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(86) )-( ( (KCT_p*kon_CT_p) ) * x(95) ))) + (1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(85) )-( ( (Kd_rbp_RT_p*kon_rbp_p) ) * x(86) ))) + (1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(77) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(86) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(71) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(86) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(65) )-( ( (KDT_p* ( ) ) ) * x(86) ))) );
	
//x(87)   ID: cam_RT_ABD_tbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(87) )-( ( (KCT_p*kon_CT_p) ) * x(96) ))) + (1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(85) )-( ( (Kd_tbp_RT_p*kon_tbp_p) ) * x(87) ))) + (1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(78) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(87) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(72) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(87) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(66) )-( ( (KDT_p* ( ) ) ) * x(87) ))) );
	
//x(88)   ID: cam_RT_ACD_0  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(88) )-( ( (Kd_rbp_RT_p*kon_rbp_p) ) * x(89) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(88) )-( ( (Kd_tbp_RT_p*kon_tbp_p) ) * x(90) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(88) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(94) ))) + (-1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lC_p*cC_p*cC_p)) ) * x(88) )-( ( ) * x(40) ))) + (1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(79) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(88) ))) + (1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(70) )-( ( (KCT_p*kon_CT_p) ) * x(88) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(67) )-( ( (KDT_p* ( ) ) ) * x(88) ))) + (1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lN_p*cN_p)) ) * x(184) )-( ( ) * x(88) ))) );
	
//x(89)   ID: cam_RT_ACD_rbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(89) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(95) ))) + (1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(88) )-( ( (Kd_rbp_RT_p*kon_rbp_p) ) * x(89) ))) + (1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(80) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(89) ))) + (1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(71) )-( ( (KCT_p*kon_CT_p) ) * x(89) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(68) )-( ( (KDT_p* ( ) ) ) * x(89) ))) );
	
//x(90)   ID: cam_RT_ACD_tbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(90) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(96) ))) + (1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(88) )-( ( (Kd_tbp_RT_p*kon_tbp_p) ) * x(90) ))) + (1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(81) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(90) ))) + (1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(72) )-( ( (KCT_p*kon_CT_p) ) * x(90) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(69) )-( ( (KDT_p* ( ) ) ) * x(90) ))) );
	
//x(91)   ID: cam_RT_BCD_0  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(91) )-( ( (Kd_rbp_RT_p*kon_rbp_p) ) * x(92) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(91) )-( ( (Kd_tbp_RT_p*kon_tbp_p) ) * x(93) ))) + (-1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(91) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(94) ))) + (-1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lC_p*cC_p*cC_p)) ) * x(91) )-( ( ) * x(43) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(79) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(91) ))) + (1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(76) )-( ( (KCT_p*kon_CT_p) ) * x(91) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(73) )-( ( (KDT_p* ( ) ) ) * x(91) ))) + (1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lN_p*cN_p)) ) * x(187) )-( ( ) * x(91) ))) );
	
//x(92)   ID: cam_RT_BCD_rbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(92) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(95) ))) + (1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(91) )-( ( (Kd_rbp_RT_p*kon_rbp_p) ) * x(92) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(80) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(92) ))) + (1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(77) )-( ( (KCT_p*kon_CT_p) ) * x(92) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(74) )-( ( (KDT_p* ( ) ) ) * x(92) ))) );
	
//x(93)   ID: cam_RT_BCD_tbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(93) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(96) ))) + (1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(91) )-( ( (Kd_tbp_RT_p*kon_tbp_p) ) * x(93) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(81) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(93) ))) + (1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(78) )-( ( (KCT_p*kon_CT_p) ) * x(93) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(75) )-( ( (KDT_p* ( ) ) ) * x(93) ))) );
	
//x(94)   ID: cam_RT_ABCD_0  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(94) )-( ( (Kd_rbp_RT_p*kon_rbp_p) ) * x(95) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(94) )-( ( (Kd_tbp_RT_p*kon_tbp_p) ) * x(96) ))) + (-1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lC_p*cC_p*cC_p)) ) * x(94) )-( ( ) * x(46) ))) + (1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(91) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(94) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(88) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(94) ))) + (1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(85) )-( ( (KCT_p*kon_CT_p) ) * x(94) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(82) )-( ( (KDT_p* ( ) ) ) * x(94) ))) + (1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lN_p*cN_p*cN_p)) ) * x(190) )-( ( ) * x(94) ))) );
	
//x(95)   ID: cam_RT_ABCD_rbp  initialValue: 0
	(1/compartment_cytosol)*( (1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(94) )-( ( (Kd_rbp_RT_p*kon_rbp_p) ) * x(95) ))) + (1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(92) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(95) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(89) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(95) ))) + (1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(86) )-( ( (KCT_p*kon_CT_p) ) * x(95) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(83) )-( ( (KDT_p* ( ) ) ) * x(95) ))) );
	
//x(96)   ID: cam_RT_ABCD_tbp  initialValue: 0
	(1/compartment_cytosol)*( (1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(94) )-( ( (Kd_tbp_RT_p*kon_tbp_p) ) * x(96) ))) + (1)*(1)* (compartment_cytosol*((kon_AR_p*ca_s* x(93) )-( ( ( ( (KAT_p*cN_p) ) *kon_AR_p) ) * x(96) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(90) )-( ( ( ( (KBT_p*cN_p) ) * ( ) ) ) * x(96) ))) + (1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(87) )-( ( (KCT_p*kon_CT_p) ) * x(96) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(84) )-( ( (KDT_p* ( ) ) ) * x(96) ))) );
	
//x(97)   ID: cam_TR_0_0  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(97) )-( ( (Kd_rbp_TR_p*kon_rbp_p) ) * x(98) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(97) )-( ( (Kd_tbp_TR_p*kon_tbp_p) ) * x(99) ))) + (-1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(97) )-( ( (KAT_p*kon_AT_p) ) * x(100) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(97) )-( ( (KBT_p* ( ) ) ) * x(103) ))) + (-1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(97) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(106) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(97) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(109) ))) + (-1)*(1)* (compartment_cytosol*(( ( (k_R2T_N_p/lN_p) ) * x(97) )-(k_R2T_N_p* x(1) ))) + (1)*(1)* (compartment_cytosol*(( ( (k_R2T_C_p/lC_p) ) * x(145) )-(k_R2T_C_p* x(97) ))) );
	
//x(98)   ID: cam_TR_0_rbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(98) )-( ( (KAT_p*kon_AT_p) ) * x(101) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(98) )-( ( (KBT_p* ( ) ) ) * x(104) ))) + (-1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(98) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(107) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(98) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(110) ))) + (1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(97) )-( ( (Kd_rbp_TR_p*kon_rbp_p) ) * x(98) ))) );
	
//x(99)   ID: cam_TR_0_tbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(99) )-( ( (KAT_p*kon_AT_p) ) * x(102) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(99) )-( ( (KBT_p* ( ) ) ) * x(105) ))) + (-1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(99) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(108) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(99) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(111) ))) + (1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(97) )-( ( (Kd_tbp_TR_p*kon_tbp_p) ) * x(99) ))) );
	
//x(100)   ID: cam_TR_A_0  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(100) )-( ( (Kd_rbp_TR_p*kon_rbp_p) ) * x(101) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(100) )-( ( (Kd_tbp_TR_p*kon_tbp_p) ) * x(102) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(100) )-( ( (KBT_p* ( ) ) ) * x(112) ))) + (-1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(100) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(115) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(100) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(118) ))) + (-1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lN_p*cN_p)) ) * x(100) )-( ( ) * x(4) ))) + (1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(97) )-( ( (KAT_p*kon_AT_p) ) * x(100) ))) + (1)*(1)* (compartment_cytosol*(( ( (k_R2T_C_p/lC_p) ) * x(148) )-(k_R2T_C_p* x(100) ))) );
	
//x(101)   ID: cam_TR_A_rbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(101) )-( ( (KBT_p* ( ) ) ) * x(113) ))) + (-1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(101) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(116) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(101) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(119) ))) + (1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(100) )-( ( (Kd_rbp_TR_p*kon_rbp_p) ) * x(101) ))) + (1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(98) )-( ( (KAT_p*kon_AT_p) ) * x(101) ))) );
	
//x(102)   ID: cam_TR_A_tbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(102) )-( ( (KBT_p* ( ) ) ) * x(114) ))) + (-1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(102) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(117) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(102) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(120) ))) + (1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(100) )-( ( (Kd_tbp_TR_p*kon_tbp_p) ) * x(102) ))) + (1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(99) )-( ( (KAT_p*kon_AT_p) ) * x(102) ))) );
	
//x(103)   ID: cam_TR_B_0  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(103) )-( ( (Kd_rbp_TR_p*kon_rbp_p) ) * x(104) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(103) )-( ( (Kd_tbp_TR_p*kon_tbp_p) ) * x(105) ))) + (-1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(103) )-( ( (KAT_p*kon_AT_p) ) * x(112) ))) + (-1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(103) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(121) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(103) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(124) ))) + (-1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lN_p*cN_p)) ) * x(103) )-( ( ) * x(7) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(97) )-( ( (KBT_p* ( ) ) ) * x(103) ))) + (1)*(1)* (compartment_cytosol*(( ( (k_R2T_C_p/lC_p) ) * x(151) )-(k_R2T_C_p* x(103) ))) );
	
//x(104)   ID: cam_TR_B_rbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(104) )-( ( (KAT_p*kon_AT_p) ) * x(113) ))) + (-1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(104) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(122) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(104) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(125) ))) + (1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(103) )-( ( (Kd_rbp_TR_p*kon_rbp_p) ) * x(104) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(98) )-( ( (KBT_p* ( ) ) ) * x(104) ))) );
	
//x(105)   ID: cam_TR_B_tbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(105) )-( ( (KAT_p*kon_AT_p) ) * x(114) ))) + (-1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(105) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(123) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(105) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(126) ))) + (1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(103) )-( ( (Kd_tbp_TR_p*kon_tbp_p) ) * x(105) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(99) )-( ( (KBT_p* ( ) ) ) * x(105) ))) );
	
//x(106)   ID: cam_TR_C_0  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(106) )-( ( (Kd_rbp_TR_p*kon_rbp_p) ) * x(107) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(106) )-( ( (Kd_tbp_TR_p*kon_tbp_p) ) * x(108) ))) + (-1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(106) )-( ( (KAT_p*kon_AT_p) ) * x(115) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(106) )-( ( (KBT_p* ( ) ) ) * x(121) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(106) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(127) ))) + (-1)*(1)* (compartment_cytosol*(( ( (k_R2T_N_p/lN_p) ) * x(106) )-(k_R2T_N_p* x(10) ))) + (1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(97) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(106) ))) + (1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lC_p*cC_p)) ) * x(154) )-( ( ) * x(106) ))) );
	
//x(107)   ID: cam_TR_C_rbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(107) )-( ( (KAT_p*kon_AT_p) ) * x(116) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(107) )-( ( (KBT_p* ( ) ) ) * x(122) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(107) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(128) ))) + (1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(106) )-( ( (Kd_rbp_TR_p*kon_rbp_p) ) * x(107) ))) + (1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(98) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(107) ))) );
	
//x(108)   ID: cam_TR_C_tbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(108) )-( ( (KAT_p*kon_AT_p) ) * x(117) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(108) )-( ( (KBT_p* ( ) ) ) * x(123) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(108) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(129) ))) + (1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(106) )-( ( (Kd_tbp_TR_p*kon_tbp_p) ) * x(108) ))) + (1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(99) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(108) ))) );
	
//x(109)   ID: cam_TR_D_0  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(109) )-( ( (Kd_rbp_TR_p*kon_rbp_p) ) * x(110) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(109) )-( ( (Kd_tbp_TR_p*kon_tbp_p) ) * x(111) ))) + (-1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(109) )-( ( (KAT_p*kon_AT_p) ) * x(118) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(109) )-( ( (KBT_p* ( ) ) ) * x(124) ))) + (-1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(109) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(127) ))) + (-1)*(1)* (compartment_cytosol*(( ( (k_R2T_N_p/lN_p) ) * x(109) )-(k_R2T_N_p* x(13) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(97) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(109) ))) + (1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lC_p*cC_p)) ) * x(157) )-( ( ) * x(109) ))) );
	
//x(110)   ID: cam_TR_D_rbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(110) )-( ( (KAT_p*kon_AT_p) ) * x(119) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(110) )-( ( (KBT_p* ( ) ) ) * x(125) ))) + (-1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(110) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(128) ))) + (1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(109) )-( ( (Kd_rbp_TR_p*kon_rbp_p) ) * x(110) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(98) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(110) ))) );
	
//x(111)   ID: cam_TR_D_tbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(111) )-( ( (KAT_p*kon_AT_p) ) * x(120) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(111) )-( ( (KBT_p* ( ) ) ) * x(126) ))) + (-1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(111) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(129) ))) + (1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(109) )-( ( (Kd_tbp_TR_p*kon_tbp_p) ) * x(111) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(99) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(111) ))) );
	
//x(112)   ID: cam_TR_AB_0  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(112) )-( ( (Kd_rbp_TR_p*kon_rbp_p) ) * x(113) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(112) )-( ( (Kd_tbp_TR_p*kon_tbp_p) ) * x(114) ))) + (-1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(112) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(130) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(112) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(133) ))) + (-1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lN_p*cN_p*cN_p)) ) * x(112) )-( ( ) * x(16) ))) + (1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(103) )-( ( (KAT_p*kon_AT_p) ) * x(112) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(100) )-( ( (KBT_p* ( ) ) ) * x(112) ))) + (1)*(1)* (compartment_cytosol*(( ( (k_R2T_C_p/lC_p) ) * x(160) )-(k_R2T_C_p* x(112) ))) );
	
//x(113)   ID: cam_TR_AB_rbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(113) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(131) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(113) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(134) ))) + (1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(112) )-( ( (Kd_rbp_TR_p*kon_rbp_p) ) * x(113) ))) + (1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(104) )-( ( (KAT_p*kon_AT_p) ) * x(113) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(101) )-( ( (KBT_p* ( ) ) ) * x(113) ))) );
	
//x(114)   ID: cam_TR_AB_tbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(114) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(132) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(114) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(135) ))) + (1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(112) )-( ( (Kd_tbp_TR_p*kon_tbp_p) ) * x(114) ))) + (1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(105) )-( ( (KAT_p*kon_AT_p) ) * x(114) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(102) )-( ( (KBT_p* ( ) ) ) * x(114) ))) );
	
//x(115)   ID: cam_TR_AC_0  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(115) )-( ( (Kd_rbp_TR_p*kon_rbp_p) ) * x(116) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(115) )-( ( (Kd_tbp_TR_p*kon_tbp_p) ) * x(117) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(115) )-( ( (KBT_p* ( ) ) ) * x(130) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(115) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(136) ))) + (-1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lN_p*cN_p)) ) * x(115) )-( ( ) * x(19) ))) + (1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(106) )-( ( (KAT_p*kon_AT_p) ) * x(115) ))) + (1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(100) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(115) ))) + (1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lC_p*cC_p)) ) * x(163) )-( ( ) * x(115) ))) );
	
//x(116)   ID: cam_TR_AC_rbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(116) )-( ( (KBT_p* ( ) ) ) * x(131) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(116) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(137) ))) + (1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(115) )-( ( (Kd_rbp_TR_p*kon_rbp_p) ) * x(116) ))) + (1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(107) )-( ( (KAT_p*kon_AT_p) ) * x(116) ))) + (1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(101) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(116) ))) );
	
//x(117)   ID: cam_TR_AC_tbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(117) )-( ( (KBT_p* ( ) ) ) * x(132) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(117) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(138) ))) + (1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(115) )-( ( (Kd_tbp_TR_p*kon_tbp_p) ) * x(117) ))) + (1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(108) )-( ( (KAT_p*kon_AT_p) ) * x(117) ))) + (1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(102) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(117) ))) );
	
//x(118)   ID: cam_TR_AD_0  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(118) )-( ( (Kd_rbp_TR_p*kon_rbp_p) ) * x(119) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(118) )-( ( (Kd_tbp_TR_p*kon_tbp_p) ) * x(120) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(118) )-( ( (KBT_p* ( ) ) ) * x(133) ))) + (-1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(118) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(136) ))) + (-1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lN_p*cN_p)) ) * x(118) )-( ( ) * x(22) ))) + (1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(109) )-( ( (KAT_p*kon_AT_p) ) * x(118) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(100) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(118) ))) + (1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lC_p*cC_p)) ) * x(166) )-( ( ) * x(118) ))) );
	
//x(119)   ID: cam_TR_AD_rbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(119) )-( ( (KBT_p* ( ) ) ) * x(134) ))) + (-1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(119) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(137) ))) + (1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(118) )-( ( (Kd_rbp_TR_p*kon_rbp_p) ) * x(119) ))) + (1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(110) )-( ( (KAT_p*kon_AT_p) ) * x(119) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(101) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(119) ))) );
	
//x(120)   ID: cam_TR_AD_tbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(120) )-( ( (KBT_p* ( ) ) ) * x(135) ))) + (-1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(120) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(138) ))) + (1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(118) )-( ( (Kd_tbp_TR_p*kon_tbp_p) ) * x(120) ))) + (1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(111) )-( ( (KAT_p*kon_AT_p) ) * x(120) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(102) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(120) ))) );
	
//x(121)   ID: cam_TR_BC_0  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(121) )-( ( (Kd_rbp_TR_p*kon_rbp_p) ) * x(122) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(121) )-( ( (Kd_tbp_TR_p*kon_tbp_p) ) * x(123) ))) + (-1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(121) )-( ( (KAT_p*kon_AT_p) ) * x(130) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(121) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(139) ))) + (-1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lN_p*cN_p)) ) * x(121) )-( ( ) * x(25) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(106) )-( ( (KBT_p* ( ) ) ) * x(121) ))) + (1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(103) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(121) ))) + (1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lC_p*cC_p)) ) * x(169) )-( ( ) * x(121) ))) );
	
//x(122)   ID: cam_TR_BC_rbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(122) )-( ( (KAT_p*kon_AT_p) ) * x(131) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(122) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(140) ))) + (1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(121) )-( ( (Kd_rbp_TR_p*kon_rbp_p) ) * x(122) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(107) )-( ( (KBT_p* ( ) ) ) * x(122) ))) + (1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(104) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(122) ))) );
	
//x(123)   ID: cam_TR_BC_tbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(123) )-( ( (KAT_p*kon_AT_p) ) * x(132) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(123) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(141) ))) + (1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(121) )-( ( (Kd_tbp_TR_p*kon_tbp_p) ) * x(123) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(108) )-( ( (KBT_p* ( ) ) ) * x(123) ))) + (1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(105) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(123) ))) );
	
//x(124)   ID: cam_TR_BD_0  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(124) )-( ( (Kd_rbp_TR_p*kon_rbp_p) ) * x(125) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(124) )-( ( (Kd_tbp_TR_p*kon_tbp_p) ) * x(126) ))) + (-1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(124) )-( ( (KAT_p*kon_AT_p) ) * x(133) ))) + (-1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(124) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(139) ))) + (-1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lN_p*cN_p)) ) * x(124) )-( ( ) * x(28) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(109) )-( ( (KBT_p* ( ) ) ) * x(124) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(103) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(124) ))) + (1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lC_p*cC_p)) ) * x(172) )-( ( ) * x(124) ))) );
	
//x(125)   ID: cam_TR_BD_rbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(125) )-( ( (KAT_p*kon_AT_p) ) * x(134) ))) + (-1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(125) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(140) ))) + (1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(124) )-( ( (Kd_rbp_TR_p*kon_rbp_p) ) * x(125) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(110) )-( ( (KBT_p* ( ) ) ) * x(125) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(104) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(125) ))) );
	
//x(126)   ID: cam_TR_BD_tbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(126) )-( ( (KAT_p*kon_AT_p) ) * x(135) ))) + (-1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(126) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(141) ))) + (1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(124) )-( ( (Kd_tbp_TR_p*kon_tbp_p) ) * x(126) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(111) )-( ( (KBT_p* ( ) ) ) * x(126) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(105) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(126) ))) );
	
//x(127)   ID: cam_TR_CD_0  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(127) )-( ( (Kd_rbp_TR_p*kon_rbp_p) ) * x(128) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(127) )-( ( (Kd_tbp_TR_p*kon_tbp_p) ) * x(129) ))) + (-1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(127) )-( ( (KAT_p*kon_AT_p) ) * x(136) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(127) )-( ( (KBT_p* ( ) ) ) * x(139) ))) + (-1)*(1)* (compartment_cytosol*(( ( (k_R2T_N_p/lN_p) ) * x(127) )-(k_R2T_N_p* x(31) ))) + (1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(109) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(127) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(106) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(127) ))) + (1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lC_p*cC_p*cC_p)) ) * x(175) )-( ( ) * x(127) ))) );
	
//x(128)   ID: cam_TR_CD_rbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(128) )-( ( (KAT_p*kon_AT_p) ) * x(137) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(128) )-( ( (KBT_p* ( ) ) ) * x(140) ))) + (1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(127) )-( ( (Kd_rbp_TR_p*kon_rbp_p) ) * x(128) ))) + (1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(110) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(128) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(107) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(128) ))) );
	
//x(129)   ID: cam_TR_CD_tbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(129) )-( ( (KAT_p*kon_AT_p) ) * x(138) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(129) )-( ( (KBT_p* ( ) ) ) * x(141) ))) + (1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(127) )-( ( (Kd_tbp_TR_p*kon_tbp_p) ) * x(129) ))) + (1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(111) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(129) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(108) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(129) ))) );
	
//x(130)   ID: cam_TR_ABC_0  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(130) )-( ( (Kd_rbp_TR_p*kon_rbp_p) ) * x(131) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(130) )-( ( (Kd_tbp_TR_p*kon_tbp_p) ) * x(132) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(130) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(142) ))) + (-1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lN_p*cN_p*cN_p)) ) * x(130) )-( ( ) * x(34) ))) + (1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(121) )-( ( (KAT_p*kon_AT_p) ) * x(130) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(115) )-( ( (KBT_p* ( ) ) ) * x(130) ))) + (1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(112) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(130) ))) + (1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lC_p*cC_p)) ) * x(178) )-( ( ) * x(130) ))) );
	
//x(131)   ID: cam_TR_ABC_rbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(131) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(143) ))) + (1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(130) )-( ( (Kd_rbp_TR_p*kon_rbp_p) ) * x(131) ))) + (1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(122) )-( ( (KAT_p*kon_AT_p) ) * x(131) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(116) )-( ( (KBT_p* ( ) ) ) * x(131) ))) + (1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(113) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(131) ))) );
	
//x(132)   ID: cam_TR_ABC_tbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(132) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(144) ))) + (1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(130) )-( ( (Kd_tbp_TR_p*kon_tbp_p) ) * x(132) ))) + (1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(123) )-( ( (KAT_p*kon_AT_p) ) * x(132) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(117) )-( ( (KBT_p* ( ) ) ) * x(132) ))) + (1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(114) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(132) ))) );
	
//x(133)   ID: cam_TR_ABD_0  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(133) )-( ( (Kd_rbp_TR_p*kon_rbp_p) ) * x(134) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(133) )-( ( (Kd_tbp_TR_p*kon_tbp_p) ) * x(135) ))) + (-1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(133) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(142) ))) + (-1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lN_p*cN_p*cN_p)) ) * x(133) )-( ( ) * x(37) ))) + (1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(124) )-( ( (KAT_p*kon_AT_p) ) * x(133) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(118) )-( ( (KBT_p* ( ) ) ) * x(133) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(112) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(133) ))) + (1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lC_p*cC_p)) ) * x(181) )-( ( ) * x(133) ))) );
	
//x(134)   ID: cam_TR_ABD_rbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(134) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(143) ))) + (1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(133) )-( ( (Kd_rbp_TR_p*kon_rbp_p) ) * x(134) ))) + (1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(125) )-( ( (KAT_p*kon_AT_p) ) * x(134) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(119) )-( ( (KBT_p* ( ) ) ) * x(134) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(113) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(134) ))) );
	
//x(135)   ID: cam_TR_ABD_tbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(135) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(144) ))) + (1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(133) )-( ( (Kd_tbp_TR_p*kon_tbp_p) ) * x(135) ))) + (1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(126) )-( ( (KAT_p*kon_AT_p) ) * x(135) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(120) )-( ( (KBT_p* ( ) ) ) * x(135) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(114) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(135) ))) );
	
//x(136)   ID: cam_TR_ACD_0  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(136) )-( ( (Kd_rbp_TR_p*kon_rbp_p) ) * x(137) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(136) )-( ( (Kd_tbp_TR_p*kon_tbp_p) ) * x(138) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(136) )-( ( (KBT_p* ( ) ) ) * x(142) ))) + (-1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lN_p*cN_p)) ) * x(136) )-( ( ) * x(40) ))) + (1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(127) )-( ( (KAT_p*kon_AT_p) ) * x(136) ))) + (1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(118) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(136) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(115) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(136) ))) + (1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lC_p*cC_p*cC_p)) ) * x(184) )-( ( ) * x(136) ))) );
	
//x(137)   ID: cam_TR_ACD_rbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(137) )-( ( (KBT_p* ( ) ) ) * x(143) ))) + (1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(136) )-( ( (Kd_rbp_TR_p*kon_rbp_p) ) * x(137) ))) + (1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(128) )-( ( (KAT_p*kon_AT_p) ) * x(137) ))) + (1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(119) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(137) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(116) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(137) ))) );
	
//x(138)   ID: cam_TR_ACD_tbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(138) )-( ( (KBT_p* ( ) ) ) * x(144) ))) + (1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(136) )-( ( (Kd_tbp_TR_p*kon_tbp_p) ) * x(138) ))) + (1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(129) )-( ( (KAT_p*kon_AT_p) ) * x(138) ))) + (1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(120) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(138) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(117) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(138) ))) );
	
//x(139)   ID: cam_TR_BCD_0  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(139) )-( ( (Kd_rbp_TR_p*kon_rbp_p) ) * x(140) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(139) )-( ( (Kd_tbp_TR_p*kon_tbp_p) ) * x(141) ))) + (-1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(139) )-( ( (KAT_p*kon_AT_p) ) * x(142) ))) + (-1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lN_p*cN_p)) ) * x(139) )-( ( ) * x(43) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(127) )-( ( (KBT_p* ( ) ) ) * x(139) ))) + (1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(124) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(139) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(121) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(139) ))) + (1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lC_p*cC_p*cC_p)) ) * x(187) )-( ( ) * x(139) ))) );
	
//x(140)   ID: cam_TR_BCD_rbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(140) )-( ( (KAT_p*kon_AT_p) ) * x(143) ))) + (1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(139) )-( ( (Kd_rbp_TR_p*kon_rbp_p) ) * x(140) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(128) )-( ( (KBT_p* ( ) ) ) * x(140) ))) + (1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(125) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(140) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(122) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(140) ))) );
	
//x(141)   ID: cam_TR_BCD_tbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(141) )-( ( (KAT_p*kon_AT_p) ) * x(144) ))) + (1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(139) )-( ( (Kd_tbp_TR_p*kon_tbp_p) ) * x(141) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(129) )-( ( (KBT_p* ( ) ) ) * x(141) ))) + (1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(126) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(141) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(123) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(141) ))) );
	
//x(142)   ID: cam_TR_ABCD_0  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(142) )-( ( (Kd_rbp_TR_p*kon_rbp_p) ) * x(143) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(142) )-( ( (Kd_tbp_TR_p*kon_tbp_p) ) * x(144) ))) + (-1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lN_p*cN_p*cN_p)) ) * x(142) )-( ( ) * x(46) ))) + (1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(139) )-( ( (KAT_p*kon_AT_p) ) * x(142) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(136) )-( ( (KBT_p* ( ) ) ) * x(142) ))) + (1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(133) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(142) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(130) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(142) ))) + (1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lC_p*cC_p*cC_p)) ) * x(190) )-( ( ) * x(142) ))) );
	
//x(143)   ID: cam_TR_ABCD_rbp  initialValue: 0
	(1/compartment_cytosol)*( (1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(142) )-( ( (Kd_rbp_TR_p*kon_rbp_p) ) * x(143) ))) + (1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(140) )-( ( (KAT_p*kon_AT_p) ) * x(143) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(137) )-( ( (KBT_p* ( ) ) ) * x(143) ))) + (1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(134) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(143) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(131) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(143) ))) );
	
//x(144)   ID: cam_TR_ABCD_tbp  initialValue: 0
	(1/compartment_cytosol)*( (1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(142) )-( ( (Kd_tbp_TR_p*kon_tbp_p) ) * x(144) ))) + (1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(141) )-( ( (KAT_p*kon_AT_p) ) * x(144) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(138) )-( ( (KBT_p* ( ) ) ) * x(144) ))) + (1)*(1)* (compartment_cytosol*((kon_CR_p*ca_s* x(135) )-( ( ( ( (KCT_p*cC_p) ) *kon_CR_p) ) * x(144) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(132) )-( ( ( ( (KDT_p*cC_p) ) * ( ) ) ) * x(144) ))) );
	
//x(145)   ID: cam_TT_0_0  initialValue: 3.3E-5
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(145) )-( ( (Kd_rbp_TT_p*kon_rbp_p) ) * x(146) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(145) )-( ( (Kd_tbp_TT_p*kon_tbp_p) ) * x(147) ))) + (-1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(145) )-( ( (KAT_p*kon_AT_p) ) * x(148) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(145) )-( ( (KBT_p* ( ) ) ) * x(151) ))) + (-1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(145) )-( ( (KCT_p*kon_CT_p) ) * x(154) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(145) )-( ( (KDT_p* ( ) ) ) * x(157) ))) + (-1)*(1)* (compartment_cytosol*(( ( (k_R2T_N_p/lN_p) ) * x(145) )-(k_R2T_N_p* x(49) ))) + (-1)*(1)* (compartment_cytosol*(( ( (k_R2T_C_p/lC_p) ) * x(145) )-(k_R2T_C_p* x(97) ))) );
	
//x(146)   ID: cam_TT_0_rbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(146) )-( ( (KAT_p*kon_AT_p) ) * x(149) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(146) )-( ( (KBT_p* ( ) ) ) * x(152) ))) + (-1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(146) )-( ( (KCT_p*kon_CT_p) ) * x(155) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(146) )-( ( (KDT_p* ( ) ) ) * x(158) ))) + (1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(145) )-( ( (Kd_rbp_TT_p*kon_rbp_p) ) * x(146) ))) );
	
//x(147)   ID: cam_TT_0_tbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(147) )-( ( (KAT_p*kon_AT_p) ) * x(150) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(147) )-( ( (KBT_p* ( ) ) ) * x(153) ))) + (-1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(147) )-( ( (KCT_p*kon_CT_p) ) * x(156) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(147) )-( ( (KDT_p* ( ) ) ) * x(159) ))) + (1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(145) )-( ( (Kd_tbp_TT_p*kon_tbp_p) ) * x(147) ))) );
	
//x(148)   ID: cam_TT_A_0  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(148) )-( ( (Kd_rbp_TT_p*kon_rbp_p) ) * x(149) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(148) )-( ( (Kd_tbp_TT_p*kon_tbp_p) ) * x(150) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(148) )-( ( (KBT_p* ( ) ) ) * x(160) ))) + (-1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(148) )-( ( (KCT_p*kon_CT_p) ) * x(163) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(148) )-( ( (KDT_p* ( ) ) ) * x(166) ))) + (-1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lN_p*cN_p)) ) * x(148) )-( ( ) * x(52) ))) + (-1)*(1)* (compartment_cytosol*(( ( (k_R2T_C_p/lC_p) ) * x(148) )-(k_R2T_C_p* x(100) ))) + (1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(145) )-( ( (KAT_p*kon_AT_p) ) * x(148) ))) );
	
//x(149)   ID: cam_TT_A_rbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(149) )-( ( (KBT_p* ( ) ) ) * x(161) ))) + (-1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(149) )-( ( (KCT_p*kon_CT_p) ) * x(164) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(149) )-( ( (KDT_p* ( ) ) ) * x(167) ))) + (1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(148) )-( ( (Kd_rbp_TT_p*kon_rbp_p) ) * x(149) ))) + (1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(146) )-( ( (KAT_p*kon_AT_p) ) * x(149) ))) );
	
//x(150)   ID: cam_TT_A_tbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(150) )-( ( (KBT_p* ( ) ) ) * x(162) ))) + (-1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(150) )-( ( (KCT_p*kon_CT_p) ) * x(165) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(150) )-( ( (KDT_p* ( ) ) ) * x(168) ))) + (1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(148) )-( ( (Kd_tbp_TT_p*kon_tbp_p) ) * x(150) ))) + (1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(147) )-( ( (KAT_p*kon_AT_p) ) * x(150) ))) );
	
//x(151)   ID: cam_TT_B_0  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(151) )-( ( (Kd_rbp_TT_p*kon_rbp_p) ) * x(152) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(151) )-( ( (Kd_tbp_TT_p*kon_tbp_p) ) * x(153) ))) + (-1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(151) )-( ( (KAT_p*kon_AT_p) ) * x(160) ))) + (-1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(151) )-( ( (KCT_p*kon_CT_p) ) * x(169) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(151) )-( ( (KDT_p* ( ) ) ) * x(172) ))) + (-1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lN_p*cN_p)) ) * x(151) )-( ( ) * x(55) ))) + (-1)*(1)* (compartment_cytosol*(( ( (k_R2T_C_p/lC_p) ) * x(151) )-(k_R2T_C_p* x(103) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(145) )-( ( (KBT_p* ( ) ) ) * x(151) ))) );
	
//x(152)   ID: cam_TT_B_rbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(152) )-( ( (KAT_p*kon_AT_p) ) * x(161) ))) + (-1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(152) )-( ( (KCT_p*kon_CT_p) ) * x(170) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(152) )-( ( (KDT_p* ( ) ) ) * x(173) ))) + (1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(151) )-( ( (Kd_rbp_TT_p*kon_rbp_p) ) * x(152) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(146) )-( ( (KBT_p* ( ) ) ) * x(152) ))) );
	
//x(153)   ID: cam_TT_B_tbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(153) )-( ( (KAT_p*kon_AT_p) ) * x(162) ))) + (-1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(153) )-( ( (KCT_p*kon_CT_p) ) * x(171) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(153) )-( ( (KDT_p* ( ) ) ) * x(174) ))) + (1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(151) )-( ( (Kd_tbp_TT_p*kon_tbp_p) ) * x(153) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(147) )-( ( (KBT_p* ( ) ) ) * x(153) ))) );
	
//x(154)   ID: cam_TT_C_0  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(154) )-( ( (Kd_rbp_TT_p*kon_rbp_p) ) * x(155) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(154) )-( ( (Kd_tbp_TT_p*kon_tbp_p) ) * x(156) ))) + (-1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(154) )-( ( (KAT_p*kon_AT_p) ) * x(163) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(154) )-( ( (KBT_p* ( ) ) ) * x(169) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(154) )-( ( (KDT_p* ( ) ) ) * x(175) ))) + (-1)*(1)* (compartment_cytosol*(( ( (k_R2T_N_p/lN_p) ) * x(154) )-(k_R2T_N_p* x(58) ))) + (-1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lC_p*cC_p)) ) * x(154) )-( ( ) * x(106) ))) + (1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(145) )-( ( (KCT_p*kon_CT_p) ) * x(154) ))) );
	
//x(155)   ID: cam_TT_C_rbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(155) )-( ( (KAT_p*kon_AT_p) ) * x(164) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(155) )-( ( (KBT_p* ( ) ) ) * x(170) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(155) )-( ( (KDT_p* ( ) ) ) * x(176) ))) + (1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(154) )-( ( (Kd_rbp_TT_p*kon_rbp_p) ) * x(155) ))) + (1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(146) )-( ( (KCT_p*kon_CT_p) ) * x(155) ))) );
	
//x(156)   ID: cam_TT_C_tbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(156) )-( ( (KAT_p*kon_AT_p) ) * x(165) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(156) )-( ( (KBT_p* ( ) ) ) * x(171) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(156) )-( ( (KDT_p* ( ) ) ) * x(177) ))) + (1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(154) )-( ( (Kd_tbp_TT_p*kon_tbp_p) ) * x(156) ))) + (1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(147) )-( ( (KCT_p*kon_CT_p) ) * x(156) ))) );
	
//x(157)   ID: cam_TT_D_0  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(157) )-( ( (Kd_rbp_TT_p*kon_rbp_p) ) * x(158) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(157) )-( ( (Kd_tbp_TT_p*kon_tbp_p) ) * x(159) ))) + (-1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(157) )-( ( (KAT_p*kon_AT_p) ) * x(166) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(157) )-( ( (KBT_p* ( ) ) ) * x(172) ))) + (-1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(157) )-( ( (KCT_p*kon_CT_p) ) * x(175) ))) + (-1)*(1)* (compartment_cytosol*(( ( (k_R2T_N_p/lN_p) ) * x(157) )-(k_R2T_N_p* x(61) ))) + (-1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lC_p*cC_p)) ) * x(157) )-( ( ) * x(109) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(145) )-( ( (KDT_p* ( ) ) ) * x(157) ))) );
	
//x(158)   ID: cam_TT_D_rbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(158) )-( ( (KAT_p*kon_AT_p) ) * x(167) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(158) )-( ( (KBT_p* ( ) ) ) * x(173) ))) + (-1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(158) )-( ( (KCT_p*kon_CT_p) ) * x(176) ))) + (1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(157) )-( ( (Kd_rbp_TT_p*kon_rbp_p) ) * x(158) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(146) )-( ( (KDT_p* ( ) ) ) * x(158) ))) );
	
//x(159)   ID: cam_TT_D_tbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(159) )-( ( (KAT_p*kon_AT_p) ) * x(168) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(159) )-( ( (KBT_p* ( ) ) ) * x(174) ))) + (-1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(159) )-( ( (KCT_p*kon_CT_p) ) * x(177) ))) + (1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(157) )-( ( (Kd_tbp_TT_p*kon_tbp_p) ) * x(159) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(147) )-( ( (KDT_p* ( ) ) ) * x(159) ))) );
	
//x(160)   ID: cam_TT_AB_0  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(160) )-( ( (Kd_rbp_TT_p*kon_rbp_p) ) * x(161) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(160) )-( ( (Kd_tbp_TT_p*kon_tbp_p) ) * x(162) ))) + (-1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(160) )-( ( (KCT_p*kon_CT_p) ) * x(178) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(160) )-( ( (KDT_p* ( ) ) ) * x(181) ))) + (-1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lN_p*cN_p*cN_p)) ) * x(160) )-( ( ) * x(64) ))) + (-1)*(1)* (compartment_cytosol*(( ( (k_R2T_C_p/lC_p) ) * x(160) )-(k_R2T_C_p* x(112) ))) + (1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(151) )-( ( (KAT_p*kon_AT_p) ) * x(160) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(148) )-( ( (KBT_p* ( ) ) ) * x(160) ))) );
	
//x(161)   ID: cam_TT_AB_rbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(161) )-( ( (KCT_p*kon_CT_p) ) * x(179) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(161) )-( ( (KDT_p* ( ) ) ) * x(182) ))) + (1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(160) )-( ( (Kd_rbp_TT_p*kon_rbp_p) ) * x(161) ))) + (1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(152) )-( ( (KAT_p*kon_AT_p) ) * x(161) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(149) )-( ( (KBT_p* ( ) ) ) * x(161) ))) );
	
//x(162)   ID: cam_TT_AB_tbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(162) )-( ( (KCT_p*kon_CT_p) ) * x(180) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(162) )-( ( (KDT_p* ( ) ) ) * x(183) ))) + (1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(160) )-( ( (Kd_tbp_TT_p*kon_tbp_p) ) * x(162) ))) + (1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(153) )-( ( (KAT_p*kon_AT_p) ) * x(162) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(150) )-( ( (KBT_p* ( ) ) ) * x(162) ))) );
	
//x(163)   ID: cam_TT_AC_0  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(163) )-( ( (Kd_rbp_TT_p*kon_rbp_p) ) * x(164) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(163) )-( ( (Kd_tbp_TT_p*kon_tbp_p) ) * x(165) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(163) )-( ( (KBT_p* ( ) ) ) * x(178) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(163) )-( ( (KDT_p* ( ) ) ) * x(184) ))) + (-1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lN_p*cN_p)) ) * x(163) )-( ( ) * x(67) ))) + (-1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lC_p*cC_p)) ) * x(163) )-( ( ) * x(115) ))) + (1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(154) )-( ( (KAT_p*kon_AT_p) ) * x(163) ))) + (1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(148) )-( ( (KCT_p*kon_CT_p) ) * x(163) ))) );
	
//x(164)   ID: cam_TT_AC_rbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(164) )-( ( (KBT_p* ( ) ) ) * x(179) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(164) )-( ( (KDT_p* ( ) ) ) * x(185) ))) + (1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(163) )-( ( (Kd_rbp_TT_p*kon_rbp_p) ) * x(164) ))) + (1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(155) )-( ( (KAT_p*kon_AT_p) ) * x(164) ))) + (1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(149) )-( ( (KCT_p*kon_CT_p) ) * x(164) ))) );
	
//x(165)   ID: cam_TT_AC_tbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(165) )-( ( (KBT_p* ( ) ) ) * x(180) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(165) )-( ( (KDT_p* ( ) ) ) * x(186) ))) + (1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(163) )-( ( (Kd_tbp_TT_p*kon_tbp_p) ) * x(165) ))) + (1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(156) )-( ( (KAT_p*kon_AT_p) ) * x(165) ))) + (1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(150) )-( ( (KCT_p*kon_CT_p) ) * x(165) ))) );
	
//x(166)   ID: cam_TT_AD_0  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(166) )-( ( (Kd_rbp_TT_p*kon_rbp_p) ) * x(167) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(166) )-( ( (Kd_tbp_TT_p*kon_tbp_p) ) * x(168) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(166) )-( ( (KBT_p* ( ) ) ) * x(181) ))) + (-1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(166) )-( ( (KCT_p*kon_CT_p) ) * x(184) ))) + (-1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lN_p*cN_p)) ) * x(166) )-( ( ) * x(70) ))) + (-1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lC_p*cC_p)) ) * x(166) )-( ( ) * x(118) ))) + (1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(157) )-( ( (KAT_p*kon_AT_p) ) * x(166) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(148) )-( ( (KDT_p* ( ) ) ) * x(166) ))) );
	
//x(167)   ID: cam_TT_AD_rbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(167) )-( ( (KBT_p* ( ) ) ) * x(182) ))) + (-1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(167) )-( ( (KCT_p*kon_CT_p) ) * x(185) ))) + (1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(166) )-( ( (Kd_rbp_TT_p*kon_rbp_p) ) * x(167) ))) + (1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(158) )-( ( (KAT_p*kon_AT_p) ) * x(167) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(149) )-( ( (KDT_p* ( ) ) ) * x(167) ))) );
	
//x(168)   ID: cam_TT_AD_tbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(168) )-( ( (KBT_p* ( ) ) ) * x(183) ))) + (-1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(168) )-( ( (KCT_p*kon_CT_p) ) * x(186) ))) + (1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(166) )-( ( (Kd_tbp_TT_p*kon_tbp_p) ) * x(168) ))) + (1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(159) )-( ( (KAT_p*kon_AT_p) ) * x(168) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(150) )-( ( (KDT_p* ( ) ) ) * x(168) ))) );
	
//x(169)   ID: cam_TT_BC_0  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(169) )-( ( (Kd_rbp_TT_p*kon_rbp_p) ) * x(170) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(169) )-( ( (Kd_tbp_TT_p*kon_tbp_p) ) * x(171) ))) + (-1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(169) )-( ( (KAT_p*kon_AT_p) ) * x(178) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(169) )-( ( (KDT_p* ( ) ) ) * x(187) ))) + (-1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lN_p*cN_p)) ) * x(169) )-( ( ) * x(73) ))) + (-1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lC_p*cC_p)) ) * x(169) )-( ( ) * x(121) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(154) )-( ( (KBT_p* ( ) ) ) * x(169) ))) + (1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(151) )-( ( (KCT_p*kon_CT_p) ) * x(169) ))) );
	
//x(170)   ID: cam_TT_BC_rbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(170) )-( ( (KAT_p*kon_AT_p) ) * x(179) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(170) )-( ( (KDT_p* ( ) ) ) * x(188) ))) + (1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(169) )-( ( (Kd_rbp_TT_p*kon_rbp_p) ) * x(170) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(155) )-( ( (KBT_p* ( ) ) ) * x(170) ))) + (1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(152) )-( ( (KCT_p*kon_CT_p) ) * x(170) ))) );
	
//x(171)   ID: cam_TT_BC_tbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(171) )-( ( (KAT_p*kon_AT_p) ) * x(180) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(171) )-( ( (KDT_p* ( ) ) ) * x(189) ))) + (1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(169) )-( ( (Kd_tbp_TT_p*kon_tbp_p) ) * x(171) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(156) )-( ( (KBT_p* ( ) ) ) * x(171) ))) + (1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(153) )-( ( (KCT_p*kon_CT_p) ) * x(171) ))) );
	
//x(172)   ID: cam_TT_BD_0  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(172) )-( ( (Kd_rbp_TT_p*kon_rbp_p) ) * x(173) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(172) )-( ( (Kd_tbp_TT_p*kon_tbp_p) ) * x(174) ))) + (-1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(172) )-( ( (KAT_p*kon_AT_p) ) * x(181) ))) + (-1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(172) )-( ( (KCT_p*kon_CT_p) ) * x(187) ))) + (-1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lN_p*cN_p)) ) * x(172) )-( ( ) * x(76) ))) + (-1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lC_p*cC_p)) ) * x(172) )-( ( ) * x(124) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(157) )-( ( (KBT_p* ( ) ) ) * x(172) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(151) )-( ( (KDT_p* ( ) ) ) * x(172) ))) );
	
//x(173)   ID: cam_TT_BD_rbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(173) )-( ( (KAT_p*kon_AT_p) ) * x(182) ))) + (-1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(173) )-( ( (KCT_p*kon_CT_p) ) * x(188) ))) + (1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(172) )-( ( (Kd_rbp_TT_p*kon_rbp_p) ) * x(173) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(158) )-( ( (KBT_p* ( ) ) ) * x(173) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(152) )-( ( (KDT_p* ( ) ) ) * x(173) ))) );
	
//x(174)   ID: cam_TT_BD_tbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(174) )-( ( (KAT_p*kon_AT_p) ) * x(183) ))) + (-1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(174) )-( ( (KCT_p*kon_CT_p) ) * x(189) ))) + (1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(172) )-( ( (Kd_tbp_TT_p*kon_tbp_p) ) * x(174) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(159) )-( ( (KBT_p* ( ) ) ) * x(174) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(153) )-( ( (KDT_p* ( ) ) ) * x(174) ))) );
	
//x(175)   ID: cam_TT_CD_0  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(175) )-( ( (Kd_rbp_TT_p*kon_rbp_p) ) * x(176) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(175) )-( ( (Kd_tbp_TT_p*kon_tbp_p) ) * x(177) ))) + (-1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(175) )-( ( (KAT_p*kon_AT_p) ) * x(184) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(175) )-( ( (KBT_p* ( ) ) ) * x(187) ))) + (-1)*(1)* (compartment_cytosol*(( ( (k_R2T_N_p/lN_p) ) * x(175) )-(k_R2T_N_p* x(79) ))) + (-1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lC_p*cC_p*cC_p)) ) * x(175) )-( ( ) * x(127) ))) + (1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(157) )-( ( (KCT_p*kon_CT_p) ) * x(175) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(154) )-( ( (KDT_p* ( ) ) ) * x(175) ))) );
	
//x(176)   ID: cam_TT_CD_rbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(176) )-( ( (KAT_p*kon_AT_p) ) * x(185) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(176) )-( ( (KBT_p* ( ) ) ) * x(188) ))) + (1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(175) )-( ( (Kd_rbp_TT_p*kon_rbp_p) ) * x(176) ))) + (1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(158) )-( ( (KCT_p*kon_CT_p) ) * x(176) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(155) )-( ( (KDT_p* ( ) ) ) * x(176) ))) );
	
//x(177)   ID: cam_TT_CD_tbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(177) )-( ( (KAT_p*kon_AT_p) ) * x(186) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(177) )-( ( (KBT_p* ( ) ) ) * x(189) ))) + (1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(175) )-( ( (Kd_tbp_TT_p*kon_tbp_p) ) * x(177) ))) + (1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(159) )-( ( (KCT_p*kon_CT_p) ) * x(177) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(156) )-( ( (KDT_p* ( ) ) ) * x(177) ))) );
	
//x(178)   ID: cam_TT_ABC_0  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(178) )-( ( (Kd_rbp_TT_p*kon_rbp_p) ) * x(179) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(178) )-( ( (Kd_tbp_TT_p*kon_tbp_p) ) * x(180) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(178) )-( ( (KDT_p* ( ) ) ) * x(190) ))) + (-1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lN_p*cN_p*cN_p)) ) * x(178) )-( ( ) * x(82) ))) + (-1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lC_p*cC_p)) ) * x(178) )-( ( ) * x(130) ))) + (1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(169) )-( ( (KAT_p*kon_AT_p) ) * x(178) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(163) )-( ( (KBT_p* ( ) ) ) * x(178) ))) + (1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(160) )-( ( (KCT_p*kon_CT_p) ) * x(178) ))) );
	
//x(179)   ID: cam_TT_ABC_rbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(179) )-( ( (KDT_p* ( ) ) ) * x(191) ))) + (1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(178) )-( ( (Kd_rbp_TT_p*kon_rbp_p) ) * x(179) ))) + (1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(170) )-( ( (KAT_p*kon_AT_p) ) * x(179) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(164) )-( ( (KBT_p* ( ) ) ) * x(179) ))) + (1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(161) )-( ( (KCT_p*kon_CT_p) ) * x(179) ))) );
	
//x(180)   ID: cam_TT_ABC_tbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(180) )-( ( (KDT_p* ( ) ) ) * x(192) ))) + (1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(178) )-( ( (Kd_tbp_TT_p*kon_tbp_p) ) * x(180) ))) + (1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(171) )-( ( (KAT_p*kon_AT_p) ) * x(180) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(165) )-( ( (KBT_p* ( ) ) ) * x(180) ))) + (1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(162) )-( ( (KCT_p*kon_CT_p) ) * x(180) ))) );
	
//x(181)   ID: cam_TT_ABD_0  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(181) )-( ( (Kd_rbp_TT_p*kon_rbp_p) ) * x(182) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(181) )-( ( (Kd_tbp_TT_p*kon_tbp_p) ) * x(183) ))) + (-1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(181) )-( ( (KCT_p*kon_CT_p) ) * x(190) ))) + (-1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lN_p*cN_p*cN_p)) ) * x(181) )-( ( ) * x(85) ))) + (-1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lC_p*cC_p)) ) * x(181) )-( ( ) * x(133) ))) + (1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(172) )-( ( (KAT_p*kon_AT_p) ) * x(181) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(166) )-( ( (KBT_p* ( ) ) ) * x(181) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(160) )-( ( (KDT_p* ( ) ) ) * x(181) ))) );
	
//x(182)   ID: cam_TT_ABD_rbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(182) )-( ( (KCT_p*kon_CT_p) ) * x(191) ))) + (1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(181) )-( ( (Kd_rbp_TT_p*kon_rbp_p) ) * x(182) ))) + (1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(173) )-( ( (KAT_p*kon_AT_p) ) * x(182) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(167) )-( ( (KBT_p* ( ) ) ) * x(182) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(161) )-( ( (KDT_p* ( ) ) ) * x(182) ))) );
	
//x(183)   ID: cam_TT_ABD_tbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(183) )-( ( (KCT_p*kon_CT_p) ) * x(192) ))) + (1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(181) )-( ( (Kd_tbp_TT_p*kon_tbp_p) ) * x(183) ))) + (1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(174) )-( ( (KAT_p*kon_AT_p) ) * x(183) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(168) )-( ( (KBT_p* ( ) ) ) * x(183) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(162) )-( ( (KDT_p* ( ) ) ) * x(183) ))) );
	
//x(184)   ID: cam_TT_ACD_0  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(184) )-( ( (Kd_rbp_TT_p*kon_rbp_p) ) * x(185) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(184) )-( ( (Kd_tbp_TT_p*kon_tbp_p) ) * x(186) ))) + (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(184) )-( ( (KBT_p* ( ) ) ) * x(190) ))) + (-1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lN_p*cN_p)) ) * x(184) )-( ( ) * x(88) ))) + (-1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lC_p*cC_p*cC_p)) ) * x(184) )-( ( ) * x(136) ))) + (1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(175) )-( ( (KAT_p*kon_AT_p) ) * x(184) ))) + (1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(166) )-( ( (KCT_p*kon_CT_p) ) * x(184) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(163) )-( ( (KDT_p* ( ) ) ) * x(184) ))) );
	
//x(185)   ID: cam_TT_ACD_rbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(185) )-( ( (KBT_p* ( ) ) ) * x(191) ))) + (1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(184) )-( ( (Kd_rbp_TT_p*kon_rbp_p) ) * x(185) ))) + (1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(176) )-( ( (KAT_p*kon_AT_p) ) * x(185) ))) + (1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(167) )-( ( (KCT_p*kon_CT_p) ) * x(185) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(164) )-( ( (KDT_p* ( ) ) ) * x(185) ))) );
	
//x(186)   ID: cam_TT_ACD_tbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(186) )-( ( (KBT_p* ( ) ) ) * x(192) ))) + (1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(184) )-( ( (Kd_tbp_TT_p*kon_tbp_p) ) * x(186) ))) + (1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(177) )-( ( (KAT_p*kon_AT_p) ) * x(186) ))) + (1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(168) )-( ( (KCT_p*kon_CT_p) ) * x(186) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(165) )-( ( (KDT_p* ( ) ) ) * x(186) ))) );
	
//x(187)   ID: cam_TT_BCD_0  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(187) )-( ( (Kd_rbp_TT_p*kon_rbp_p) ) * x(188) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(187) )-( ( (Kd_tbp_TT_p*kon_tbp_p) ) * x(189) ))) + (-1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(187) )-( ( (KAT_p*kon_AT_p) ) * x(190) ))) + (-1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lN_p*cN_p)) ) * x(187) )-( ( ) * x(91) ))) + (-1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lC_p*cC_p*cC_p)) ) * x(187) )-( ( ) * x(139) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(175) )-( ( (KBT_p* ( ) ) ) * x(187) ))) + (1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(172) )-( ( (KCT_p*kon_CT_p) ) * x(187) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(169) )-( ( (KDT_p* ( ) ) ) * x(187) ))) );
	
//x(188)   ID: cam_TT_BCD_rbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(188) )-( ( (KAT_p*kon_AT_p) ) * x(191) ))) + (1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(187) )-( ( (Kd_rbp_TT_p*kon_rbp_p) ) * x(188) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(176) )-( ( (KBT_p* ( ) ) ) * x(188) ))) + (1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(173) )-( ( (KCT_p*kon_CT_p) ) * x(188) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(170) )-( ( (KDT_p* ( ) ) ) * x(188) ))) );
	
//x(189)   ID: cam_TT_BCD_tbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(189) )-( ( (KAT_p*kon_AT_p) ) * x(192) ))) + (1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(187) )-( ( (Kd_tbp_TT_p*kon_tbp_p) ) * x(189) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(177) )-( ( (KBT_p* ( ) ) ) * x(189) ))) + (1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(174) )-( ( (KCT_p*kon_CT_p) ) * x(189) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(171) )-( ( (KDT_p* ( ) ) ) * x(189) ))) );
	
//x(190)   ID: cam_TT_ABCD_0  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(190) )-( ( (Kd_rbp_TT_p*kon_rbp_p) ) * x(191) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(190) )-( ( (Kd_tbp_TT_p*kon_tbp_p) ) * x(192) ))) + (-1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lN_p*cN_p*cN_p)) ) * x(190) )-( ( ) * x(94) ))) + (-1)*(1)* (compartment_cytosol*(( ( ( ( ) /(lC_p*cC_p*cC_p)) ) * x(190) )-( ( ) * x(142) ))) + (1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(187) )-( ( (KAT_p*kon_AT_p) ) * x(190) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(184) )-( ( (KBT_p* ( ) ) ) * x(190) ))) + (1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(181) )-( ( (KCT_p*kon_CT_p) ) * x(190) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(178) )-( ( (KDT_p* ( ) ) ) * x(190) ))) );
	
//x(191)   ID: cam_TT_ABCD_rbp  initialValue: 0
	(1/compartment_cytosol)*( (1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(190) )-( ( (Kd_rbp_TT_p*kon_rbp_p) ) * x(191) ))) + (1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(188) )-( ( (KAT_p*kon_AT_p) ) * x(191) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(185) )-( ( (KBT_p* ( ) ) ) * x(191) ))) + (1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(182) )-( ( (KCT_p*kon_CT_p) ) * x(191) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(179) )-( ( (KDT_p* ( ) ) ) * x(191) ))) );
	
//x(192)   ID: cam_TT_ABCD_tbp  initialValue: 0
	(1/compartment_cytosol)*( (1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(190) )-( ( (Kd_tbp_TT_p*kon_tbp_p) ) * x(192) ))) + (1)*(1)* (compartment_cytosol*((kon_AT_p*ca_s* x(189) )-( ( (KAT_p*kon_AT_p) ) * x(192) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(186) )-( ( (KBT_p* ( ) ) ) * x(192) ))) + (1)*(1)* (compartment_cytosol*((kon_CT_p*ca_s* x(183) )-( ( (KCT_p*kon_CT_p) ) * x(192) ))) + (1)*(1)* (compartment_cytosol*(( ( ) *ca_s* x(180) )-( ( (KDT_p* ( ) ) ) * x(192) ))) );
	
//x(193)   ID: rbp  initialValue: 0.000146
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(1) )-( ( (Kd_rbp_RR_p*kon_rbp_p) ) * x(2) ))) + (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(4) )-( ( (Kd_rbp_RR_p*kon_rbp_p) ) * x(5) ))) + (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(7) )-( ( (Kd_rbp_RR_p*kon_rbp_p) ) * x(8) ))) + (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(10) )-( ( (Kd_rbp_RR_p*kon_rbp_p) ) * x(11) ))) + (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(13) )-( ( (Kd_rbp_RR_p*kon_rbp_p) ) * x(14) ))) + (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(16) )-( ( (Kd_rbp_RR_p*kon_rbp_p) ) * x(17) ))) + (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(19) )-( ( (Kd_rbp_RR_p*kon_rbp_p) ) * x(20) ))) + (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(22) )-( ( (Kd_rbp_RR_p*kon_rbp_p) ) * x(23) ))) + (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(25) )-( ( (Kd_rbp_RR_p*kon_rbp_p) ) * x(26) ))) + (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(28) )-( ( (Kd_rbp_RR_p*kon_rbp_p) ) * x(29) ))) + (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(31) )-( ( (Kd_rbp_RR_p*kon_rbp_p) ) * x(32) ))) + (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(34) )-( ( (Kd_rbp_RR_p*kon_rbp_p) ) * x(35) ))) + (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(37) )-( ( (Kd_rbp_RR_p*kon_rbp_p) ) * x(38) ))) + (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(40) )-( ( (Kd_rbp_RR_p*kon_rbp_p) ) * x(41) ))) + (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(43) )-( ( (Kd_rbp_RR_p*kon_rbp_p) ) * x(44) ))) + (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(46) )-( ( (Kd_rbp_RR_p*kon_rbp_p) ) * x(47) ))) + (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(49) )-( ( (Kd_rbp_RT_p*kon_rbp_p) ) * x(50) ))) + (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(52) )-( ( (Kd_rbp_RT_p*kon_rbp_p) ) * x(53) ))) + (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(55) )-( ( (Kd_rbp_RT_p*kon_rbp_p) ) * x(56) ))) + (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(58) )-( ( (Kd_rbp_RT_p*kon_rbp_p) ) * x(59) ))) + (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(61) )-( ( (Kd_rbp_RT_p*kon_rbp_p) ) * x(62) ))) + (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(64) )-( ( (Kd_rbp_RT_p*kon_rbp_p) ) * x(65) ))) + (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(67) )-( ( (Kd_rbp_RT_p*kon_rbp_p) ) * x(68) ))) + (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(70) )-( ( (Kd_rbp_RT_p*kon_rbp_p) ) * x(71) ))) + (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(73) )-( ( (Kd_rbp_RT_p*kon_rbp_p) ) * x(74) ))) + (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(76) )-( ( (Kd_rbp_RT_p*kon_rbp_p) ) * x(77) ))) + (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(79) )-( ( (Kd_rbp_RT_p*kon_rbp_p) ) * x(80) ))) + (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(82) )-( ( (Kd_rbp_RT_p*kon_rbp_p) ) * x(83) ))) + (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(85) )-( ( (Kd_rbp_RT_p*kon_rbp_p) ) * x(86) ))) + (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(88) )-( ( (Kd_rbp_RT_p*kon_rbp_p) ) * x(89) ))) + (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(91) )-( ( (Kd_rbp_RT_p*kon_rbp_p) ) * x(92) ))) + (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(94) )-( ( (Kd_rbp_RT_p*kon_rbp_p) ) * x(95) ))) + (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(97) )-( ( (Kd_rbp_TR_p*kon_rbp_p) ) * x(98) ))) + (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(100) )-( ( (Kd_rbp_TR_p*kon_rbp_p) ) * x(101) ))) + (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(103) )-( ( (Kd_rbp_TR_p*kon_rbp_p) ) * x(104) ))) + (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(106) )-( ( (Kd_rbp_TR_p*kon_rbp_p) ) * x(107) ))) + (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(109) )-( ( (Kd_rbp_TR_p*kon_rbp_p) ) * x(110) ))) + (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(112) )-( ( (Kd_rbp_TR_p*kon_rbp_p) ) * x(113) ))) + (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(115) )-( ( (Kd_rbp_TR_p*kon_rbp_p) ) * x(116) ))) + (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(118) )-( ( (Kd_rbp_TR_p*kon_rbp_p) ) * x(119) ))) + (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(121) )-( ( (Kd_rbp_TR_p*kon_rbp_p) ) * x(122) ))) + (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(124) )-( ( (Kd_rbp_TR_p*kon_rbp_p) ) * x(125) ))) + (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(127) )-( ( (Kd_rbp_TR_p*kon_rbp_p) ) * x(128) ))) + (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(130) )-( ( (Kd_rbp_TR_p*kon_rbp_p) ) * x(131) ))) + (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(133) )-( ( (Kd_rbp_TR_p*kon_rbp_p) ) * x(134) ))) + (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(136) )-( ( (Kd_rbp_TR_p*kon_rbp_p) ) * x(137) ))) + (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(139) )-( ( (Kd_rbp_TR_p*kon_rbp_p) ) * x(140) ))) + (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(142) )-( ( (Kd_rbp_TR_p*kon_rbp_p) ) * x(143) ))) + (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(145) )-( ( (Kd_rbp_TT_p*kon_rbp_p) ) * x(146) ))) + (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(148) )-( ( (Kd_rbp_TT_p*kon_rbp_p) ) * x(149) ))) + (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(151) )-( ( (Kd_rbp_TT_p*kon_rbp_p) ) * x(152) ))) + (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(154) )-( ( (Kd_rbp_TT_p*kon_rbp_p) ) * x(155) ))) + (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(157) )-( ( (Kd_rbp_TT_p*kon_rbp_p) ) * x(158) ))) + (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(160) )-( ( (Kd_rbp_TT_p*kon_rbp_p) ) * x(161) ))) + (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(163) )-( ( (Kd_rbp_TT_p*kon_rbp_p) ) * x(164) ))) + (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(166) )-( ( (Kd_rbp_TT_p*kon_rbp_p) ) * x(167) ))) + (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(169) )-( ( (Kd_rbp_TT_p*kon_rbp_p) ) * x(170) ))) + (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(172) )-( ( (Kd_rbp_TT_p*kon_rbp_p) ) * x(173) ))) + (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(175) )-( ( (Kd_rbp_TT_p*kon_rbp_p) ) * x(176) ))) + (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(178) )-( ( (Kd_rbp_TT_p*kon_rbp_p) ) * x(179) ))) + (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(181) )-( ( (Kd_rbp_TT_p*kon_rbp_p) ) * x(182) ))) + (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(184) )-( ( (Kd_rbp_TT_p*kon_rbp_p) ) * x(185) ))) + (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(187) )-( ( (Kd_rbp_TT_p*kon_rbp_p) ) * x(188) ))) + (-1)*(1)* (compartment_cytosol*((kon_rbp_p* x(193) * x(190) )-( ( (Kd_rbp_TT_p*kon_rbp_p) ) * x(191) ))) );
	
//x(194)   ID: tbp  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(1) )-( ( (Kd_tbp_RR_p*kon_tbp_p) ) * x(3) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(4) )-( ( (Kd_tbp_RR_p*kon_tbp_p) ) * x(6) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(7) )-( ( (Kd_tbp_RR_p*kon_tbp_p) ) * x(9) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(10) )-( ( (Kd_tbp_RR_p*kon_tbp_p) ) * x(12) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(13) )-( ( (Kd_tbp_RR_p*kon_tbp_p) ) * x(15) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(16) )-( ( (Kd_tbp_RR_p*kon_tbp_p) ) * x(18) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(19) )-( ( (Kd_tbp_RR_p*kon_tbp_p) ) * x(21) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(22) )-( ( (Kd_tbp_RR_p*kon_tbp_p) ) * x(24) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(25) )-( ( (Kd_tbp_RR_p*kon_tbp_p) ) * x(27) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(28) )-( ( (Kd_tbp_RR_p*kon_tbp_p) ) * x(30) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(31) )-( ( (Kd_tbp_RR_p*kon_tbp_p) ) * x(33) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(34) )-( ( (Kd_tbp_RR_p*kon_tbp_p) ) * x(36) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(37) )-( ( (Kd_tbp_RR_p*kon_tbp_p) ) * x(39) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(40) )-( ( (Kd_tbp_RR_p*kon_tbp_p) ) * x(42) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(43) )-( ( (Kd_tbp_RR_p*kon_tbp_p) ) * x(45) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(46) )-( ( (Kd_tbp_RR_p*kon_tbp_p) ) * x(48) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(49) )-( ( (Kd_tbp_RT_p*kon_tbp_p) ) * x(51) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(52) )-( ( (Kd_tbp_RT_p*kon_tbp_p) ) * x(54) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(55) )-( ( (Kd_tbp_RT_p*kon_tbp_p) ) * x(57) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(58) )-( ( (Kd_tbp_RT_p*kon_tbp_p) ) * x(60) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(61) )-( ( (Kd_tbp_RT_p*kon_tbp_p) ) * x(63) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(64) )-( ( (Kd_tbp_RT_p*kon_tbp_p) ) * x(66) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(67) )-( ( (Kd_tbp_RT_p*kon_tbp_p) ) * x(69) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(70) )-( ( (Kd_tbp_RT_p*kon_tbp_p) ) * x(72) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(73) )-( ( (Kd_tbp_RT_p*kon_tbp_p) ) * x(75) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(76) )-( ( (Kd_tbp_RT_p*kon_tbp_p) ) * x(78) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(79) )-( ( (Kd_tbp_RT_p*kon_tbp_p) ) * x(81) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(82) )-( ( (Kd_tbp_RT_p*kon_tbp_p) ) * x(84) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(85) )-( ( (Kd_tbp_RT_p*kon_tbp_p) ) * x(87) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(88) )-( ( (Kd_tbp_RT_p*kon_tbp_p) ) * x(90) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(91) )-( ( (Kd_tbp_RT_p*kon_tbp_p) ) * x(93) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(94) )-( ( (Kd_tbp_RT_p*kon_tbp_p) ) * x(96) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(97) )-( ( (Kd_tbp_TR_p*kon_tbp_p) ) * x(99) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(100) )-( ( (Kd_tbp_TR_p*kon_tbp_p) ) * x(102) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(103) )-( ( (Kd_tbp_TR_p*kon_tbp_p) ) * x(105) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(106) )-( ( (Kd_tbp_TR_p*kon_tbp_p) ) * x(108) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(109) )-( ( (Kd_tbp_TR_p*kon_tbp_p) ) * x(111) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(112) )-( ( (Kd_tbp_TR_p*kon_tbp_p) ) * x(114) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(115) )-( ( (Kd_tbp_TR_p*kon_tbp_p) ) * x(117) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(118) )-( ( (Kd_tbp_TR_p*kon_tbp_p) ) * x(120) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(121) )-( ( (Kd_tbp_TR_p*kon_tbp_p) ) * x(123) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(124) )-( ( (Kd_tbp_TR_p*kon_tbp_p) ) * x(126) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(127) )-( ( (Kd_tbp_TR_p*kon_tbp_p) ) * x(129) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(130) )-( ( (Kd_tbp_TR_p*kon_tbp_p) ) * x(132) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(133) )-( ( (Kd_tbp_TR_p*kon_tbp_p) ) * x(135) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(136) )-( ( (Kd_tbp_TR_p*kon_tbp_p) ) * x(138) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(139) )-( ( (Kd_tbp_TR_p*kon_tbp_p) ) * x(141) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(142) )-( ( (Kd_tbp_TR_p*kon_tbp_p) ) * x(144) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(145) )-( ( (Kd_tbp_TT_p*kon_tbp_p) ) * x(147) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(148) )-( ( (Kd_tbp_TT_p*kon_tbp_p) ) * x(150) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(151) )-( ( (Kd_tbp_TT_p*kon_tbp_p) ) * x(153) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(154) )-( ( (Kd_tbp_TT_p*kon_tbp_p) ) * x(156) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(157) )-( ( (Kd_tbp_TT_p*kon_tbp_p) ) * x(159) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(160) )-( ( (Kd_tbp_TT_p*kon_tbp_p) ) * x(162) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(163) )-( ( (Kd_tbp_TT_p*kon_tbp_p) ) * x(165) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(166) )-( ( (Kd_tbp_TT_p*kon_tbp_p) ) * x(168) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(169) )-( ( (Kd_tbp_TT_p*kon_tbp_p) ) * x(171) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(172) )-( ( (Kd_tbp_TT_p*kon_tbp_p) ) * x(174) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(175) )-( ( (Kd_tbp_TT_p*kon_tbp_p) ) * x(177) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(178) )-( ( (Kd_tbp_TT_p*kon_tbp_p) ) * x(180) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(181) )-( ( (Kd_tbp_TT_p*kon_tbp_p) ) * x(183) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(184) )-( ( (Kd_tbp_TT_p*kon_tbp_p) ) * x(186) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(187) )-( ( (Kd_tbp_TT_p*kon_tbp_p) ) * x(189) ))) + (-1)*(1)* (compartment_cytosol*((kon_tbp_p* x(194) * x(190) )-( ( (Kd_tbp_TT_p*kon_tbp_p) ) * x(192) ))) )
	];


	
endfunction
        x0=[0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;3.3E-5;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0.000146;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)' 'x(14)' 'x(15)' 'x(16)' 'x(17)' 'x(18)' 'x(19)' 'x(20)' 'x(21)' 'x(22)' 'x(23)' 'x(24)' 'x(25)' 'x(26)' 'x(27)' 'x(28)' 'x(29)' 'x(30)' 'x(31)' 'x(32)' 'x(33)' 'x(34)' 'x(35)' 'x(36)' 'x(37)' 'x(38)' 'x(39)' 'x(40)' 'x(41)' 'x(42)' 'x(43)' 'x(44)' 'x(45)' 'x(46)' 'x(47)' 'x(48)' 'x(49)' 'x(50)' 'x(51)' 'x(52)' 'x(53)' 'x(54)' 'x(55)' 'x(56)' 'x(57)' 'x(58)' 'x(59)' 'x(60)' 'x(61)' 'x(62)' 'x(63)' 'x(64)' 'x(65)' 'x(66)' 'x(67)' 'x(68)' 'x(69)' 'x(70)' 'x(71)' 'x(72)' 'x(73)' 'x(74)' 'x(75)' 'x(76)' 'x(77)' 'x(78)' 'x(79)' 'x(80)' 'x(81)' 'x(82)' 'x(83)' 'x(84)' 'x(85)' 'x(86)' 'x(87)' 'x(88)' 'x(89)' 'x(90)' 'x(91)' 'x(92)' 'x(93)' 'x(94)' 'x(95)' 'x(96)' 'x(97)' 'x(98)' 'x(99)' 'x(100)' 'x(101)' 'x(102)' 'x(103)' 'x(104)' 'x(105)' 'x(106)' 'x(107)' 'x(108)' 'x(109)' 'x(110)' 'x(111)' 'x(112)' 'x(113)' 'x(114)' 'x(115)' 'x(116)' 'x(117)' 'x(118)' 'x(119)' 'x(120)' 'x(121)' 'x(122)' 'x(123)' 'x(124)' 'x(125)' 'x(126)' 'x(127)' 'x(128)' 'x(129)' 'x(130)' 'x(131)' 'x(132)' 'x(133)' 'x(134)' 'x(135)' 'x(136)' 'x(137)' 'x(138)' 'x(139)' 'x(140)' 'x(141)' 'x(142)' 'x(143)' 'x(144)' 'x(145)' 'x(146)' 'x(147)' 'x(148)' 'x(149)' 'x(150)' 'x(151)' 'x(152)' 'x(153)' 'x(154)' 'x(155)' 'x(156)' 'x(157)' 'x(158)' 'x(159)' 'x(160)' 'x(161)' 'x(162)' 'x(163)' 'x(164)' 'x(165)' 'x(166)' 'x(167)' 'x(168)' 'x(169)' 'x(170)' 'x(171)' 'x(172)' 'x(173)' 'x(174)' 'x(175)' 'x(176)' 'x(177)' 'x(178)' 'x(179)' 'x(180)' 'x(181)' 'x(182)' 'x(183)' 'x(184)' 'x(185)' 'x(186)' 'x(187)' 'x(188)' 'x(189)' 'x(190)' 'x(191)' 'x(192)' 'x(193)' 'x(194)'],[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18;19;20;21;22;23;24;25;26;27;28;29;30;31;32;33;34;35;36;37;38;39;40;41;42;43;44;45;46;47;48;49;50;51;52;53;54;55;56;57;58;59;60;61;62;63;64;65;66;67;68;69;70;71;72;73;74;75;76;77;78;79;80;81;82;83;84;85;86;87;88;89;90;91;92;93;94;95;96;97;98;99;100;101;102;103;104;105;106;107;108;109;110;111;112;113;114;115;116;117;118;119;120;121;122;123;124;125;126;127;128;129;130;131;132;133;134;135;136;137;138;139;140;141;142;143;144;145;146;147;148;149;150;151;152;153;154;155;156;157;158;159;160;161;162;163;164;165;166;167;168;169;170;171;172;173;174;175;176;177;178;179;180;181;182;183;184;185;186;187;188;189;190;191;192;193;194])

//real_variable:
	
	
//x(1)   id: cam_RR_0_0  initialValue: 0
	
//x(2)   id: cam_RR_0_rbp  initialValue: 0
	
//x(3)   id: cam_RR_0_tbp  initialValue: 0
	
//x(4)   id: cam_RR_A_0  initialValue: 0
	
//x(5)   id: cam_RR_A_rbp  initialValue: 0
	
//x(6)   id: cam_RR_A_tbp  initialValue: 0
	
//x(7)   id: cam_RR_B_0  initialValue: 0
	
//x(8)   id: cam_RR_B_rbp  initialValue: 0
	
//x(9)   id: cam_RR_B_tbp  initialValue: 0
	
//x(10)   id: cam_RR_C_0  initialValue: 0
	
//x(11)   id: cam_RR_C_rbp  initialValue: 0
	
//x(12)   id: cam_RR_C_tbp  initialValue: 0
	
//x(13)   id: cam_RR_D_0  initialValue: 0
	
//x(14)   id: cam_RR_D_rbp  initialValue: 0
	
//x(15)   id: cam_RR_D_tbp  initialValue: 0
	
//x(16)   id: cam_RR_AB_0  initialValue: 0
	
//x(17)   id: cam_RR_AB_rbp  initialValue: 0
	
//x(18)   id: cam_RR_AB_tbp  initialValue: 0
	
//x(19)   id: cam_RR_AC_0  initialValue: 0
	
//x(20)   id: cam_RR_AC_rbp  initialValue: 0
	
//x(21)   id: cam_RR_AC_tbp  initialValue: 0
	
//x(22)   id: cam_RR_AD_0  initialValue: 0
	
//x(23)   id: cam_RR_AD_rbp  initialValue: 0
	
//x(24)   id: cam_RR_AD_tbp  initialValue: 0
	
//x(25)   id: cam_RR_BC_0  initialValue: 0
	
//x(26)   id: cam_RR_BC_rbp  initialValue: 0
	
//x(27)   id: cam_RR_BC_tbp  initialValue: 0
	
//x(28)   id: cam_RR_BD_0  initialValue: 0
	
//x(29)   id: cam_RR_BD_rbp  initialValue: 0
	
//x(30)   id: cam_RR_BD_tbp  initialValue: 0
	
//x(31)   id: cam_RR_CD_0  initialValue: 0
	
//x(32)   id: cam_RR_CD_rbp  initialValue: 0
	
//x(33)   id: cam_RR_CD_tbp  initialValue: 0
	
//x(34)   id: cam_RR_ABC_0  initialValue: 0
	
//x(35)   id: cam_RR_ABC_rbp  initialValue: 0
	
//x(36)   id: cam_RR_ABC_tbp  initialValue: 0
	
//x(37)   id: cam_RR_ABD_0  initialValue: 0
	
//x(38)   id: cam_RR_ABD_rbp  initialValue: 0
	
//x(39)   id: cam_RR_ABD_tbp  initialValue: 0
	
//x(40)   id: cam_RR_ACD_0  initialValue: 0
	
//x(41)   id: cam_RR_ACD_rbp  initialValue: 0
	
//x(42)   id: cam_RR_ACD_tbp  initialValue: 0
	
//x(43)   id: cam_RR_BCD_0  initialValue: 0
	
//x(44)   id: cam_RR_BCD_rbp  initialValue: 0
	
//x(45)   id: cam_RR_BCD_tbp  initialValue: 0
	
//x(46)   id: cam_RR_ABCD_0  initialValue: 0
	
//x(47)   id: cam_RR_ABCD_rbp  initialValue: 0
	
//x(48)   id: cam_RR_ABCD_tbp  initialValue: 0
	
//x(49)   id: cam_RT_0_0  initialValue: 0
	
//x(50)   id: cam_RT_0_rbp  initialValue: 0
	
//x(51)   id: cam_RT_0_tbp  initialValue: 0
	
//x(52)   id: cam_RT_A_0  initialValue: 0
	
//x(53)   id: cam_RT_A_rbp  initialValue: 0
	
//x(54)   id: cam_RT_A_tbp  initialValue: 0
	
//x(55)   id: cam_RT_B_0  initialValue: 0
	
//x(56)   id: cam_RT_B_rbp  initialValue: 0
	
//x(57)   id: cam_RT_B_tbp  initialValue: 0
	
//x(58)   id: cam_RT_C_0  initialValue: 0
	
//x(59)   id: cam_RT_C_rbp  initialValue: 0
	
//x(60)   id: cam_RT_C_tbp  initialValue: 0
	
//x(61)   id: cam_RT_D_0  initialValue: 0
	
//x(62)   id: cam_RT_D_rbp  initialValue: 0
	
//x(63)   id: cam_RT_D_tbp  initialValue: 0
	
//x(64)   id: cam_RT_AB_0  initialValue: 0
	
//x(65)   id: cam_RT_AB_rbp  initialValue: 0
	
//x(66)   id: cam_RT_AB_tbp  initialValue: 0
	
//x(67)   id: cam_RT_AC_0  initialValue: 0
	
//x(68)   id: cam_RT_AC_rbp  initialValue: 0
	
//x(69)   id: cam_RT_AC_tbp  initialValue: 0
	
//x(70)   id: cam_RT_AD_0  initialValue: 0
	
//x(71)   id: cam_RT_AD_rbp  initialValue: 0
	
//x(72)   id: cam_RT_AD_tbp  initialValue: 0
	
//x(73)   id: cam_RT_BC_0  initialValue: 0
	
//x(74)   id: cam_RT_BC_rbp  initialValue: 0
	
//x(75)   id: cam_RT_BC_tbp  initialValue: 0
	
//x(76)   id: cam_RT_BD_0  initialValue: 0
	
//x(77)   id: cam_RT_BD_rbp  initialValue: 0
	
//x(78)   id: cam_RT_BD_tbp  initialValue: 0
	
//x(79)   id: cam_RT_CD_0  initialValue: 0
	
//x(80)   id: cam_RT_CD_rbp  initialValue: 0
	
//x(81)   id: cam_RT_CD_tbp  initialValue: 0
	
//x(82)   id: cam_RT_ABC_0  initialValue: 0
	
//x(83)   id: cam_RT_ABC_rbp  initialValue: 0
	
//x(84)   id: cam_RT_ABC_tbp  initialValue: 0
	
//x(85)   id: cam_RT_ABD_0  initialValue: 0
	
//x(86)   id: cam_RT_ABD_rbp  initialValue: 0
	
//x(87)   id: cam_RT_ABD_tbp  initialValue: 0
	
//x(88)   id: cam_RT_ACD_0  initialValue: 0
	
//x(89)   id: cam_RT_ACD_rbp  initialValue: 0
	
//x(90)   id: cam_RT_ACD_tbp  initialValue: 0
	
//x(91)   id: cam_RT_BCD_0  initialValue: 0
	
//x(92)   id: cam_RT_BCD_rbp  initialValue: 0
	
//x(93)   id: cam_RT_BCD_tbp  initialValue: 0
	
//x(94)   id: cam_RT_ABCD_0  initialValue: 0
	
//x(95)   id: cam_RT_ABCD_rbp  initialValue: 0
	
//x(96)   id: cam_RT_ABCD_tbp  initialValue: 0
	
//x(97)   id: cam_TR_0_0  initialValue: 0
	
//x(98)   id: cam_TR_0_rbp  initialValue: 0
	
//x(99)   id: cam_TR_0_tbp  initialValue: 0
	
//x(100)   id: cam_TR_A_0  initialValue: 0
	
//x(101)   id: cam_TR_A_rbp  initialValue: 0
	
//x(102)   id: cam_TR_A_tbp  initialValue: 0
	
//x(103)   id: cam_TR_B_0  initialValue: 0
	
//x(104)   id: cam_TR_B_rbp  initialValue: 0
	
//x(105)   id: cam_TR_B_tbp  initialValue: 0
	
//x(106)   id: cam_TR_C_0  initialValue: 0
	
//x(107)   id: cam_TR_C_rbp  initialValue: 0
	
//x(108)   id: cam_TR_C_tbp  initialValue: 0
	
//x(109)   id: cam_TR_D_0  initialValue: 0
	
//x(110)   id: cam_TR_D_rbp  initialValue: 0
	
//x(111)   id: cam_TR_D_tbp  initialValue: 0
	
//x(112)   id: cam_TR_AB_0  initialValue: 0
	
//x(113)   id: cam_TR_AB_rbp  initialValue: 0
	
//x(114)   id: cam_TR_AB_tbp  initialValue: 0
	
//x(115)   id: cam_TR_AC_0  initialValue: 0
	
//x(116)   id: cam_TR_AC_rbp  initialValue: 0
	
//x(117)   id: cam_TR_AC_tbp  initialValue: 0
	
//x(118)   id: cam_TR_AD_0  initialValue: 0
	
//x(119)   id: cam_TR_AD_rbp  initialValue: 0
	
//x(120)   id: cam_TR_AD_tbp  initialValue: 0
	
//x(121)   id: cam_TR_BC_0  initialValue: 0
	
//x(122)   id: cam_TR_BC_rbp  initialValue: 0
	
//x(123)   id: cam_TR_BC_tbp  initialValue: 0
	
//x(124)   id: cam_TR_BD_0  initialValue: 0
	
//x(125)   id: cam_TR_BD_rbp  initialValue: 0
	
//x(126)   id: cam_TR_BD_tbp  initialValue: 0
	
//x(127)   id: cam_TR_CD_0  initialValue: 0
	
//x(128)   id: cam_TR_CD_rbp  initialValue: 0
	
//x(129)   id: cam_TR_CD_tbp  initialValue: 0
	
//x(130)   id: cam_TR_ABC_0  initialValue: 0
	
//x(131)   id: cam_TR_ABC_rbp  initialValue: 0
	
//x(132)   id: cam_TR_ABC_tbp  initialValue: 0
	
//x(133)   id: cam_TR_ABD_0  initialValue: 0
	
//x(134)   id: cam_TR_ABD_rbp  initialValue: 0
	
//x(135)   id: cam_TR_ABD_tbp  initialValue: 0
	
//x(136)   id: cam_TR_ACD_0  initialValue: 0
	
//x(137)   id: cam_TR_ACD_rbp  initialValue: 0
	
//x(138)   id: cam_TR_ACD_tbp  initialValue: 0
	
//x(139)   id: cam_TR_BCD_0  initialValue: 0
	
//x(140)   id: cam_TR_BCD_rbp  initialValue: 0
	
//x(141)   id: cam_TR_BCD_tbp  initialValue: 0
	
//x(142)   id: cam_TR_ABCD_0  initialValue: 0
	
//x(143)   id: cam_TR_ABCD_rbp  initialValue: 0
	
//x(144)   id: cam_TR_ABCD_tbp  initialValue: 0
	
//x(145)   id: cam_TT_0_0  initialValue: 3.3E-5
	
//x(146)   id: cam_TT_0_rbp  initialValue: 0
	
//x(147)   id: cam_TT_0_tbp  initialValue: 0
	
//x(148)   id: cam_TT_A_0  initialValue: 0
	
//x(149)   id: cam_TT_A_rbp  initialValue: 0
	
//x(150)   id: cam_TT_A_tbp  initialValue: 0
	
//x(151)   id: cam_TT_B_0  initialValue: 0
	
//x(152)   id: cam_TT_B_rbp  initialValue: 0
	
//x(153)   id: cam_TT_B_tbp  initialValue: 0
	
//x(154)   id: cam_TT_C_0  initialValue: 0
	
//x(155)   id: cam_TT_C_rbp  initialValue: 0
	
//x(156)   id: cam_TT_C_tbp  initialValue: 0
	
//x(157)   id: cam_TT_D_0  initialValue: 0
	
//x(158)   id: cam_TT_D_rbp  initialValue: 0
	
//x(159)   id: cam_TT_D_tbp  initialValue: 0
	
//x(160)   id: cam_TT_AB_0  initialValue: 0
	
//x(161)   id: cam_TT_AB_rbp  initialValue: 0
	
//x(162)   id: cam_TT_AB_tbp  initialValue: 0
	
//x(163)   id: cam_TT_AC_0  initialValue: 0
	
//x(164)   id: cam_TT_AC_rbp  initialValue: 0
	
//x(165)   id: cam_TT_AC_tbp  initialValue: 0
	
//x(166)   id: cam_TT_AD_0  initialValue: 0
	
//x(167)   id: cam_TT_AD_rbp  initialValue: 0
	
//x(168)   id: cam_TT_AD_tbp  initialValue: 0
	
//x(169)   id: cam_TT_BC_0  initialValue: 0
	
//x(170)   id: cam_TT_BC_rbp  initialValue: 0
	
//x(171)   id: cam_TT_BC_tbp  initialValue: 0
	
//x(172)   id: cam_TT_BD_0  initialValue: 0
	
//x(173)   id: cam_TT_BD_rbp  initialValue: 0
	
//x(174)   id: cam_TT_BD_tbp  initialValue: 0
	
//x(175)   id: cam_TT_CD_0  initialValue: 0
	
//x(176)   id: cam_TT_CD_rbp  initialValue: 0
	
//x(177)   id: cam_TT_CD_tbp  initialValue: 0
	
//x(178)   id: cam_TT_ABC_0  initialValue: 0
	
//x(179)   id: cam_TT_ABC_rbp  initialValue: 0
	
//x(180)   id: cam_TT_ABC_tbp  initialValue: 0
	
//x(181)   id: cam_TT_ABD_0  initialValue: 0
	
//x(182)   id: cam_TT_ABD_rbp  initialValue: 0
	
//x(183)   id: cam_TT_ABD_tbp  initialValue: 0
	
//x(184)   id: cam_TT_ACD_0  initialValue: 0
	
//x(185)   id: cam_TT_ACD_rbp  initialValue: 0
	
//x(186)   id: cam_TT_ACD_tbp  initialValue: 0
	
//x(187)   id: cam_TT_BCD_0  initialValue: 0
	
//x(188)   id: cam_TT_BCD_rbp  initialValue: 0
	
//x(189)   id: cam_TT_BCD_tbp  initialValue: 0
	
//x(190)   id: cam_TT_ABCD_0  initialValue: 0
	
//x(191)   id: cam_TT_ABCD_rbp  initialValue: 0
	
//x(192)   id: cam_TT_ABCD_tbp  initialValue: 0
	
//x(193)   id: rbp  initialValue: 0.000146
	
//x(194)   id: tbp  initialValue: 0