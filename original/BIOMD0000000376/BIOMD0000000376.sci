
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_Compartment   id: Compartment
	compartment_Compartment=1;
		
// cm_p   id: cm
	cm_p=5300;
		
// Ik_p   id: Ik
	Ik_p=0;
		
// gK_p   id: gK
	gK_p=2700;
		
// n_infinity_p   id: n_infinity
	n_infinity_p=0.000150710358059757;
		
// tau_n_p   id: tau_n
	tau_n_p=20;
		
// Ica_p   id: Ica
	Ica_p=-2927.84163162795;
		
// gCa_p   id: gCa
	gCa_p=1000;
		
// m_infinity_p   id: m_infinity
	m_infinity_p=0.0344451956662112;
		
// Ikca_p   id: Ikca
	Ikca_p=466.296163499462;
		
// gkCa_p   id: gkCa
	gkCa_p=300;
		
// kd_p   id: kd
	kd_p=0.5;
		
// Ikatp_p   id: Ikatp
	Ikatp_p=2433.43025793791;
		
// gkATP__p   id: gkATP_
	gkATP__p=16000;
		
// katpo_p   id: katpo
	katpo_p=0.010139292741408;
		
// topo_p   id: topo
	topo_p=110.233638969723;
		
// bottomo_p   id: bottomo
	bottomo_p=1.08719258612131E4;
		
// mgadp_p   id: mgadp
	mgadp_p=187.605;
		
// adp3m_p   id: adp3m
	adp3m_p=153.495;
		
// atp4m_p   id: atp4m
	atp4m_p=68.15;
		
// JGPDH_p   id: JGPDH
	JGPDH_p=0.000734846922834953;
		
// kGPDH_p   id: kGPDH
	kGPDH_p=0.0005;
		
// F6P_p   id: F6P
	F6P_p=90.3;
		
// JPFK_p   id: JPFK
	JPFK_p=0.374364085279846;
		
// JPFK_ms_p   id: JPFK_ms
	JPFK_ms_p=0.000374364085279847;
		
// bottom1_p   id: bottom1
	bottom1_p=1;
		
// weight1_p   id: weight1
	weight1_p=1;
		
// topa1_p   id: topa1
	topa1_p=0;
		
// k1_p   id: k1
	k1_p=30;
		
// k2_p   id: k2
	k2_p=1;
		
// k3_p   id: k3
	k3_p=50000;
		
// k4_p   id: k4
	k4_p=220;
		
// VmaxPFK_p   id: VmaxPFK
	VmaxPFK_p=5;
		
// weight2_p   id: weight2
	weight2_p=8444.40454545454;
		
// topa2_p   id: topa2
	topa2_p=0;
		
// bottom2_p   id: bottom2
	bottom2_p=8445.40454545454;
		
// topa3_p   id: topa3
	topa3_p=0.1630818;
		
// weight3_p   id: weight3
	weight3_p=0.1630818;
		
// bottom3_p   id: bottom3
	bottom3_p=8445.56762725454;
		
// f13_p   id: f13
	f13_p=0.02;
		
// f43_p   id: f43
	f43_p=20;
		
// f23_p   id: f23
	f23_p=0.2;
		
// f42_p   id: f42
	f42_p=20;
		
// f41_p   id: f41
	f41_p=20;
		
// weight4_p   id: weight4
	weight4_p=68.8564346600455;
		
// topa4_p   id: topa4
	topa4_p=69.0195164600455;
		
// bottom4_p   id: bottom4
	bottom4_p=8514.42406191459;
		
// weight5_p   id: weight5
	weight5_p=2.16;
		
// topa5_p   id: topa5
	topa5_p=69.0195164600455;
		
// bottom5_p   id: bottom5
	bottom5_p=8516.58406191459;
		
// weight6_p   id: weight6
	weight6_p=911.995690909091;
		
// topa6_p   id: topa6
	topa6_p=69.0195164600455;
		
// bottom6_p   id: bottom6
	bottom6_p=9428.57975282368;
		
// weight7_p   id: weight7
	weight7_p=1.76128344;
		
// topa7_p   id: topa7
	topa7_p=70.7807999000455;
		
// bottom7_p   id: bottom7
	bottom7_p=9430.34103626368;
		
// weight8_p   id: weight8
	weight8_p=37.1824747164245;
		
// topa8_p   id: topa8
	topa8_p=107.96327461647;
		
// bottom8_p   id: bottom8
	bottom8_p=9467.52351098011;
		
// weight9_p   id: weight9
	weight9_p=16.6666666666667;
		
// topa9_p   id: topa9
	topa9_p=107.96327461647;
		
// bottom9_p   id: bottom9
	bottom9_p=9484.19017764677;
		
// weight10_p   id: weight10
	weight10_p=7037.00378787879;
		
// topa10_p   id: topa10
	topa10_p=107.96327461647;
		
// bottom10_p   id: bottom10
	bottom10_p=1.65211939655256E4;
		
// weight11_p   id: weight11
	weight11_p=135.9015;
		
// topa11_p   id: topa11
	topa11_p=243.86477461647;
		
// bottom11_p   id: bottom11
	bottom11_p=1.66570954655256E4;
		
// weight12_p   id: weight12
	weight12_p=2869.01811083523;
		
// topa12_p   id: topa12
	topa12_p=3112.8828854517;
		
// bottom12_p   id: bottom12
	bottom12_p=1.95261135763608E4;
		
// weight13_p   id: weight13
	weight13_p=36;
		
// topa13_p   id: topa13
	topa13_p=3112.8828854517;
		
// bottom13_p   id: bottom13
	bottom13_p=1.95621135763608E4;
		
// weight14_p   id: weight14
	weight14_p=759.996409090909;
		
// topa14_p   id: topa14
	topa14_p=3112.8828854517;
		
// bottom14_p   id: bottom14
	bottom14_p=2.03221099854517E4;
		
// weight15_p   id: weight15
	weight15_p=1467.7362;
		
// topa15_p   id: topa15
	topa15_p=3112.8828854517;
		
// bottom15_p   id: bottom15
	bottom15_p=2.17898461854517E4;
		
// weight16_p   id: weight16
	weight16_p=1549.26977985102;
		
// topa16_p   id: topa16
	topa16_p=4662.15266530272;
		
// bottom16_p   id: bottom16
	bottom16_p=2.33391159653027E4;
		
// topb_p   id: topb
	topb_p=1467.7362;
		
// lambda_p   id: lambda
	lambda_p=0.06;
		
// JPDH_p   id: JPDH
	JPDH_p=0.451601160351069;
		
// p1_p   id: p1
	p1_p=400;
		
// p2_p   id: p2
	p2_p=1;
		
// p3_p   id: p3
	p3_p=0.01;
		
// JGPDHbas_p   id: JGPDHbas
	JGPDHbas_p=0.0005;
		
// JO_p   id: JO
	JO_p=0.446813558235194;
		
// p4_p   id: p4
	p4_p=0.6;
		
// p5_p   id: p5
	p5_p=0.1;
		
// p6_p   id: p6
	p6_p=177;
		
// p7_p   id: p7
	p7_p=5;
		
// NADm_p   id: NADm
	NADm_p=9.6;
		
// NADmtot_p   id: NADmtot
	NADmtot_p=10;
		
// Cmito_p   id: Cmito
	Cmito_p=1.8;
		
// JHres_p   id: JHres
	JHres_p=5.21282484607726;
		
// p8_p   id: p8
	p8_p=7;
		
// p9_p   id: p9
	p9_p=0.1;
		
// p10_p   id: p10
	p10_p=177;
		
// p11_p   id: p11
	p11_p=5;
		
// JF1F0_p   id: JF1F0
	JF1F0_p=1.12901593707623;
		
// p13_p   id: p13
	p13_p=10;
		
// p14_p   id: p14
	p14_p=190;
		
// p15_p   id: p15
	p15_p=8.5;
		
// p16_p   id: p16
	p16_p=35;
		
// JHatp_p   id: JHatp
	JHatp_p=3.38704781122868;
		
// JGK_ms_p   id: JGK_ms
	JGK_ms_p=0.0004;
		
// JGK_p   id: JGK
	JGK_p=0.4;
		
// JHleak_p   id: JHleak
	JHleak_p=0.298;
		
// p17_p   id: p17
	p17_p=0.002;
		
// p18_p   id: p18
	p18_p=-0.03;
		
// JANT_p   id: JANT
	JANT_p=1.1239508472473;
		
// p19_p   id: p19
	p19_p=0.35;
		
// p20_p   id: p20
	p20_p=2;
		
// FRT_p   id: FRT
	FRT_p=0.037410133;
		
// RATm_p   id: RATm
	RATm_p=0.351351351351351;
		
// Juni_p   id: Juni
	Juni_p=0.157794;
		
// p21_p   id: p21
	p21_p=0.04;
		
// p22_p   id: p22
	p22_p=1.1;
		
// JNaCa_p   id: JNaCa
	JNaCa_p=0.162244429551387;
		
// p23_p   id: p23
	p23_p=0.01;
		
// p24_p   id: p24
	p24_p=0.016;
		
// fmito_p   id: fmito
	fmito_p=0.01;
		
// Jmito_p   id: Jmito
	Jmito_p=0.00445042955138744;
		
// ATPm_p   id: ATPm
	ATPm_p=3.9;
		
// Amtot_p   id: Amtot
	Amtot_p=15;
		
// Jhyd_p   id: Jhyd
	Jhyd_p=0.0797355;
		
// khyd_p   id: khyd
	khyd_p=5E-5;
		
// khydbas_p   id: khydbas
	khydbas_p=5E-5;
		
// atp_p   id: atp
	atp_p=1363;
		
// atot_p   id: atot
	atot_p=2500;
		
// fcyt_p   id: fcyt
	fcyt_p=0.01;
		
// Jmem_p   id: Jmem
	Jmem_p=0.00117528734232577;
		
// kPMCA_p   id: kPMCA
	kPMCA_p=0.1;
		
// alpha_p   id: alpha
	alpha_p=4.5E-6;
		
// Cbas_p   id: Cbas
	Cbas_p=0.05;
		
// Jleak_p   id: Jleak
	Jleak_p=0.068966;
		
// pleak_p   id: pleak
	pleak_p=0.0002;
		
// JSERCA_p   id: JSERCA
	JSERCA_p=0.068;
		
// kSERCA_p   id: kSERCA
	kSERCA_p=0.4;
		
// Jer_p   id: Jer
	Jer_p=0.000965999999999995;
		
// fer_p   id: fer
	fer_p=0.01;
		
// Vc_Ver_p   id: Vc_Ver
	Vc_Ver_p=31;
		
// gamma_p   id: gamma
	gamma_p=0.001;
		
// kappa_p   id: kappa
	kappa_p=0.001;
		
// delta_p   id: delta
	delta_p=0.0733082706766917;
		
// VK_p   id: VK
	VK_p=-75;
		
// VCa_p   id: VCa
	VCa_p=25;
		
// AMP_p   id: AMP
	AMP_p=500;
		



xdot=[
//x(1)   ID: Vm  initialValue: -60
	        
          ((( ( (gK_p* x(2) *( x(1) -VK_p)) ) + ( (gCa_p* ( (( 1 )/(( 1 )+(exp((((( 20 )+ x(1) ))/( 12 )))))) ) *( x(1) -VCa_p)) ) + ( (gkCa_p*((power( x(10) ,( 2 )))/((power( x(10) ,( 2 )))+(power(kd_p,( 2 )))))*( x(1) -VK_p)) ) + ( (gkATP__p* ( ( ( ((( 0.08 )*(( 1 )+((( 2 )* ( (( 0.165 )* x(9) ) ) )/( 17 ))))+(( 0.89 )*(power(( ( (( 0.165 )* x(9) ) ) /( 17 )),( 2 ))))) ) / ( ((power((( 1 )+( ( (( 0.165 )* x(9) ) ) /( 17 ))),( 2 )))*(( 1 )+( ( (( 0.135 )* x(9) ) ) /( 26 ))+( ( (( 0.05 )* ( (atot_p- x(9) ) ) ) ) /( 1 )))) ) ) ) *( x(1) -VK_p)) ) ))/cm_p)
        ;
	
//x(2)   ID: n  initialValue: 0
	        
          (( ( (( 1 )/(( 1 )+(exp((((( 16 )+ x(1) ))/( 5 )))))) ) - x(2) )/tau_n_p)
        ;
	
//x(3)   ID: G6P  initialValue: 301
	        
          ( ( (kappa_p*JGK_p) ) - ( (kappa_p* ( (((VmaxPFK_p*lambda_p* ( ( ( ) + ( ((AMP_p* x(4) *(power( ( (( 0.3 )* x(3) ) ) ,( 2 )))*(power( ( (atot_p- x(9) ) ) ,( 2 ))))/(k1_p*k2_p*k3_p*k4_p*f23_p*f13_p*f42_p*f41_p*f43_p)) ) ) ) )+(VmaxPFK_p* ( ) ))/ ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( (bottom1_p+ ( ((power( ( (atot_p- x(9) ) ) ,( 2 )))/k4_p) ) ) ) + ( ((power( ( (( 0.3 )* x(3) ) ) ,( 2 )))/k3_p) ) ) ) + ( ((power(( ( (( 0.3 )* x(3) ) ) * ( (atot_p- x(9) ) ) ),( 2 )))/(k3_p*k4_p*f43_p)) ) ) ) + ( ( x(4) /k2_p) ) ) ) + ( (( x(4) *(power( ( (atot_p- x(9) ) ) ,( 2 ))))/(k2_p*f42_p*k4_p)) ) ) ) + ( (( x(4) *(power( ( (( 0.3 )* x(3) ) ) ,( 2 ))))/(k2_p*f23_p*k3_p)) ) ) ) + ( (( x(4) *(power( ( (( 0.3 )* x(3) ) ) ,( 2 )))*(power( ( (atot_p- x(9) ) ) ,( 2 ))))/(k2_p*f23_p*f42_p*f43_p*k3_p*k4_p)) ) ) ) + ( (AMP_p/k1_p) ) ) ) + ( ((AMP_p*(power( ( (atot_p- x(9) ) ) ,( 2 ))))/(k1_p*k4_p*f41_p)) ) ) ) + ( ((AMP_p*(power( ( (( 0.3 )* x(3) ) ) ,( 2 ))))/(k1_p*k3_p*f13_p)) ) ) ) + ( ((AMP_p*(power( ( (( 0.3 )* x(3) ) ) ,( 2 )))*(power( ( (atot_p- x(9) ) ) ,( 2 ))))/(k1_p*f13_p*f41_p*f43_p*k3_p*k4_p)) ) ) ) + ( ((AMP_p* x(4) )/(k1_p*k2_p)) ) ) ) + ( ((AMP_p* x(4) *(power( ( (atot_p- x(9) ) ) ,( 2 ))))/(k1_p*k2_p*f42_p*f41_p*k4_p)) ) ) ) + ( ((AMP_p* x(4) *(power( ( (( 0.3 )* x(3) ) ) ,( 2 ))))/(k1_p*k2_p*f23_p*f13_p*k3_p)) ) ) ) + ( ((AMP_p* x(4) *(power( ( (( 0.3 )* x(3) ) ) ,( 2 )))*(power( ( (atot_p- x(9) ) ) ,( 2 ))))/(k1_p*k2_p*k3_p*k4_p*f23_p*f13_p*f42_p*f41_p*f43_p)) ) ) ) ) ) ) ) )
        ;
	
//x(4)   ID: FBP  initialValue: 2.16
	        
          ( ( (kappa_p* ( (((VmaxPFK_p*lambda_p* ( ( ( ) + ( ((AMP_p* x(4) *(power( ( (( 0.3 )* x(3) ) ) ,( 2 )))*(power( ( (atot_p- x(9) ) ) ,( 2 ))))/(k1_p*k2_p*k3_p*k4_p*f23_p*f13_p*f42_p*f41_p*f43_p)) ) ) ) )+(VmaxPFK_p* ( ) ))/ ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( (bottom1_p+ ( ((power( ( (atot_p- x(9) ) ) ,( 2 )))/k4_p) ) ) ) + ( ((power( ( (( 0.3 )* x(3) ) ) ,( 2 )))/k3_p) ) ) ) + ( ((power(( ( (( 0.3 )* x(3) ) ) * ( (atot_p- x(9) ) ) ),( 2 )))/(k3_p*k4_p*f43_p)) ) ) ) + ( ( x(4) /k2_p) ) ) ) + ( (( x(4) *(power( ( (atot_p- x(9) ) ) ,( 2 ))))/(k2_p*f42_p*k4_p)) ) ) ) + ( (( x(4) *(power( ( (( 0.3 )* x(3) ) ) ,( 2 ))))/(k2_p*f23_p*k3_p)) ) ) ) + ( (( x(4) *(power( ( (( 0.3 )* x(3) ) ) ,( 2 )))*(power( ( (atot_p- x(9) ) ) ,( 2 ))))/(k2_p*f23_p*f42_p*f43_p*k3_p*k4_p)) ) ) ) + ( (AMP_p/k1_p) ) ) ) + ( ((AMP_p*(power( ( (atot_p- x(9) ) ) ,( 2 ))))/(k1_p*k4_p*f41_p)) ) ) ) + ( ((AMP_p*(power( ( (( 0.3 )* x(3) ) ) ,( 2 ))))/(k1_p*k3_p*f13_p)) ) ) ) + ( ((AMP_p*(power( ( (( 0.3 )* x(3) ) ) ,( 2 )))*(power( ( (atot_p- x(9) ) ) ,( 2 ))))/(k1_p*f13_p*f41_p*f43_p*k3_p*k4_p)) ) ) ) + ( ((AMP_p* x(4) )/(k1_p*k2_p)) ) ) ) + ( ((AMP_p* x(4) *(power( ( (atot_p- x(9) ) ) ,( 2 ))))/(k1_p*k2_p*f42_p*f41_p*k4_p)) ) ) ) + ( ((AMP_p* x(4) *(power( ( (( 0.3 )* x(3) ) ) ,( 2 ))))/(k1_p*k2_p*f23_p*f13_p*k3_p)) ) ) ) + ( ((AMP_p* x(4) *(power( ( (( 0.3 )* x(3) ) ) ,( 2 )))*(power( ( (atot_p- x(9) ) ) ,( 2 ))))/(k1_p*k2_p*k3_p*k4_p*f23_p*f13_p*f42_p*f41_p*f43_p)) ) ) ) ) ) ) ) -(( 0.5 )* ( (kGPDH_p*(power( x(4) ,(( 1 )/( 2 ))))) ) ))
        ;
	
//x(5)   ID: NADHm  initialValue: 0.4
	        
          (gamma_p*( ( ((p1_p/(p2_p+( x(5) / ( (NADmtot_p- x(5) ) ) )))*( x(7) /(p3_p+ x(7) ))*( ( (kGPDH_p*(power( x(4) ,(( 1 )/( 2 ))))) ) +JGPDHbas_p)) ) - ( (((p4_p* x(5) )/(p5_p+ x(5) ))/(( 1 )+(exp((( x(6) -p6_p)/p7_p))))) ) ))
        ;
	
//x(6)   ID: delta_psi  initialValue: 164
	        
          (( ( (p8_p*( x(5) /(p9_p+ x(5) ))*(( 1 )/(( 1 )+(exp((( x(6) -p10_p)/p11_p)))))) ) -( ( (( 3 )* ( (((p16_p*p13_p)/(p13_p+ ( (Amtot_p- x(8) ) ) ))*(( 1 )/(( 1 )+(exp(((p14_p- x(6) )/p15_p)))))) ) ) ) + ( (p19_p*( ( ( ( (Amtot_p- x(8) ) ) / x(8) ) ) /( ( ( ( (Amtot_p- x(8) ) ) / x(8) ) ) +p20_p))*(exp((( 0.5 )*FRT_p* x(6) )))) ) + ( ((p17_p* x(6) )+p18_p) ) + ( (p23_p*( x(7) / x(10) )*(exp((p24_p* x(6) )))) ) +(( 2 )* ( (((p21_p* x(6) )-p22_p)*(power( x(10) ,( 2 )))) ) )))/Cmito_p)
        ;
	
//x(7)   ID: Cam  initialValue: 0.2
	        
          ((fmito_p)* ( ( ( (p23_p*( x(7) / x(10) )*(exp((p24_p* x(6) )))) ) - ( (((p21_p* x(6) )-p22_p)*(power( x(10) ,( 2 )))) ) ) ) )
        ;
	
//x(8)   ID: ADPm  initialValue: 11.1
	        
          (gamma_p*( ( (p19_p*( ( ( ( (Amtot_p- x(8) ) ) / x(8) ) ) /( ( ( ( (Amtot_p- x(8) ) ) / x(8) ) ) +p20_p))*(exp((( 0.5 )*FRT_p* x(6) )))) ) - ( (((p16_p*p13_p)/(p13_p+ ( (Amtot_p- x(8) ) ) ))*(( 1 )/(( 1 )+(exp(((p14_p- x(6) )/p15_p)))))) ) ))
        ;
	
//x(9)   ID: adp  initialValue: 1137
	        
          ((( ( (( 3.9 )/( 53.2 )) ) )* ( (p19_p*( ( ( ( (Amtot_p- x(8) ) ) / x(8) ) ) /( ( ( ( (Amtot_p- x(8) ) ) / x(8) ) ) +p20_p))*(exp((( 0.5 )*FRT_p* x(6) )))) ) )+ ( (((khyd_p* x(10) )+khydbas_p)* ( (atot_p- x(9) ) ) ) ) )
        ;
	
//x(10)   ID: c  initialValue: 0.17
	        
          (fcyt_p*( ( (((alpha_p* ( (gCa_p* ( (( 1 )/(( 1 )+(exp((((( 20 )+ x(1) ))/( 12 )))))) ) *( x(1) -VCa_p)) ) )+(kPMCA_p*( x(10) -Cbas_p)))) ) + ( ( ( (pleak_p*( x(11) - x(10) )) ) - ( (kSERCA_p* x(10) ) ) ) ) +( ( (( 3.9 )/( 53.2 )) ) * ( ( ( (p23_p*( x(7) / x(10) )*(exp((p24_p* x(6) )))) ) - ( (((p21_p* x(6) )-p22_p)*(power( x(10) ,( 2 )))) ) ) ) )))
        ;
	
//x(11)   ID: Caer  initialValue: 345
	        
          ((fer_p)*Vc_Ver_p* ( ( ( (pleak_p*( x(11) - x(10) )) ) - ( (kSERCA_p* x(10) ) ) ) ) )
        
	];


	
endfunction
        x0=[-60;0;301;2.16;0.4;164;0.2;11.1;1137;0.17;345];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)'],[1;2;3;4;5;6;7;8;9;10;11])

//real_variable:
	
	
//x(1)   id: Vm  initialValue: -60
	
//x(2)   id: n  initialValue: 0
	
//x(3)   id: G6P  initialValue: 301
	
//x(4)   id: FBP  initialValue: 2.16
	
//x(5)   id: NADHm  initialValue: 0.4
	
//x(6)   id: delta_psi  initialValue: 164
	
//x(7)   id: Cam  initialValue: 0.2
	
//x(8)   id: ADPm  initialValue: 11.1
	
//x(9)   id: adp  initialValue: 1137
	
//x(10)   id: c  initialValue: 0.17
	
//x(11)   id: Caer  initialValue: 345