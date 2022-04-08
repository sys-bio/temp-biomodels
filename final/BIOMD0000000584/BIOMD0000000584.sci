
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_DefaultCompartment   id: DefaultCompartment
	compartment_DefaultCompartment=1;
		
// tr3_Kd_p   id: tr3_Kd
	tr3_Kd_p=1;
		
// tr3_h_p   id: tr3_h
	tr3_h_p=2;
		
// tr4_Kd_p   id: tr4_Kd
	tr4_Kd_p=1;
		
// tr4_h_p   id: tr4_h
	tr4_h_p=2;
		
// pSLS4_strength_p   id: pSLS4_strength
	pSLS4_strength_p=2.57;
		
// tr5_Kd_p   id: tr5_Kd
	tr5_Kd_p=1;
		
// tr5_h_p   id: tr5_h
	tr5_h_p=2;
		
// tr6_Kd_p   id: tr6_Kd
	tr6_Kd_p=1;
		
// tr6_h_p   id: tr6_h
	tr6_h_p=2;
		
// p1_strength_p   id: p1_strength
	p1_strength_p=2.5;
		
// p2_strength_p   id: p2_strength
	p2_strength_p=2.4;
		
// proLACI_degradation_rate_p   id: proLACI_degradation_rate
	proLACI_degradation_rate_p=0.07;
		
// p3_strength_p   id: p3_strength
	p3_strength_p=2.5;
		
// proSLS1_degradation_rate_p   id: proSLS1_degradation_rate
	proSLS1_degradation_rate_p=0.07;
		
// proSLS4_degradation_rate_p   id: proSLS4_degradation_rate
	proSLS4_degradation_rate_p=0.04;
		
// proLAMDAR_degradation_rate_p   id: proLAMDAR_degradation_rate
	proLAMDAR_degradation_rate_p=0.0415;
		
// proAUR1_degradation_rate_p   id: proAUR1_degradation_rate
	proAUR1_degradation_rate_p=0.1;
		
// ia1_Kd_p   id: ia1_Kd
	ia1_Kd_p=0.001;
		
// ia1_repression_Kd_p   id: ia1_repression_Kd
	ia1_repression_Kd_p=1;
		
// ia1_repression_h_p   id: ia1_repression_h
	ia1_repression_h_p=2;
		
// pAUR1_strength_p   id: pAUR1_strength
	pAUR1_strength_p=2.014;
		
// proTETR_degradation_rate_p   id: proTETR_degradation_rate
	proTETR_degradation_rate_p=0.08;
		
// ta1_Kd_p   id: ta1_Kd
	ta1_Kd_p=1;
		
// ta1_h_p   id: ta1_h
	ta1_h_p=2;
		
// pp2_translation_rate_p   id: pp2_translation_rate
	pp2_translation_rate_p=1;
		
// pp3_translation_rate_p   id: pp3_translation_rate
	pp3_translation_rate_p=1;
		
// pp4_translation_rate_p   id: pp4_translation_rate
	pp4_translation_rate_p=1;
		
// pp5_translation_rate_p   id: pp5_translation_rate
	pp5_translation_rate_p=1;
		
// pp6_translation_rate_p   id: pp6_translation_rate
	pp6_translation_rate_p=1;
		
// tr1_Kd_p   id: tr1_Kd
	tr1_Kd_p=1;
		
// tr1_h_p   id: tr1_h
	tr1_h_p=2;
		
// pSLS1_strength_p   id: pSLS1_strength
	pSLS1_strength_p=2.5;
		
// tr2_Kd_p   id: tr2_Kd
	tr2_Kd_p=1;
		
// tr2_h_p   id: tr2_h
	tr2_h_p=2;
		
// AUR1_s   id: AUR1
	AUR1_s=10;
		
// LACI_s   id: LACI
	LACI_s=10;
		
// LAMDAR_s   id: LAMDAR
	LAMDAR_s=10;
		
// SLS1_s   id: SLS1
	SLS1_s=10;
		
// SLS4_s   id: SLS4
	SLS4_s=10;
		
// TETR_s   id: TETR
	TETR_s=10;
		
// as1_s   id: as1
	as1_s=10;
		
// ope1_s   id: ope1
	ope1_s=5;
		
// rs1_s   id: rs1
	rs1_s=10;
		
// rs2_s   id: rs2
	rs2_s=10;
		
// rs3_s   id: rs3
	rs3_s=10;
		
// rs4_s   id: rs4
	rs4_s=10;
		
// rs5_s   id: rs5
	rs5_s=10;
		
// rs6_s   id: rs6
	rs6_s=10;
		



xdot=[
//x(1)   ID: IPTG  initialValue: 10000
	(1/compartment_DefaultCompartment)*( (-1)*(1)* ( x(1) * x(2) ) + (1)*(1)* (ia1_Kd_p* x(3) ) );
	
//x(2)   ID: ia1_ActiveTF  initialValue: 100
	(1/compartment_DefaultCompartment)*( (-1)*(1)* ( x(1) * x(2) ) + (1)*(1)* (ia1_Kd_p* x(3) ) );
	
//x(3)   ID: ia1_InactiveTF  initialValue: 100
	(1/compartment_DefaultCompartment)*( (-1)*(1)* (ia1_Kd_p* x(3) ) + (1)*(1)* ( x(1) * x(2) ) );
	
//x(4)   ID: p1  initialValue: 10
	0;
	
//x(5)   ID: p2  initialValue: 10
	0;
	
//x(6)   ID: p3  initialValue: 10
	0;
	
//x(7)   ID: pAUR1  initialValue: 10
	0;
	
//x(8)   ID: pSLS1  initialValue: 10
	0;
	
//x(9)   ID: pSLS4  initialValue: 10
	0;
	
//x(10)   ID: proAUR1  initialValue: 0
	(1/compartment_DefaultCompartment)*( (-1)*(1)* (proAUR1_degradation_rate_p* x(10) ) + (1)*(1)* (pp2_translation_rate_p*pAUR1_strength_p* ( (pAUR1_strength_p* ( (( 1 )/(( 1 )+(power(( x(13) /tr1_Kd_p),tr1_h_p)))) ) ) ) ) );
	
//x(11)   ID: proLACI  initialValue: 0
	(1/compartment_DefaultCompartment)*( (-1)*(1)* (proLACI_degradation_rate_p* x(11) ) + (1)*(1)* (pp4_translation_rate_p*p2_strength_p* ( (p2_strength_p* ( (( 1 )/(( 1 )+(power(( x(12) /tr5_Kd_p),tr5_h_p)))) ) ) ) ) );
	
//x(12)   ID: proLAMDAR  initialValue: 0
	(1/compartment_DefaultCompartment)*( (-1)*(1)* (proLAMDAR_degradation_rate_p* x(12) ) + (1)*(1)* (pp5_translation_rate_p*p1_strength_p* ( (p1_strength_p* ( (( 1 )/(( 1 )+(power(( x(15) /tr4_Kd_p),tr4_h_p)))) ) ) ) ) );
	
//x(13)   ID: proSLS1  initialValue: 0
	(1/compartment_DefaultCompartment)*( (-1)*(1)* (proSLS1_degradation_rate_p* x(13) ) + (1)*(1)* (1) );
	
//x(14)   ID: proSLS4  initialValue: 0
	(1/compartment_DefaultCompartment)*( (-1)*(1)* (proSLS4_degradation_rate_p* x(14) ) + (1)*(1)* (pp3_translation_rate_p*pSLS4_strength_p* ( (pSLS4_strength_p* ( (( 1 )/(( 1 )+(power(( x(10) /tr2_Kd_p),tr2_h_p)))) ) ) ) ) );
	
//x(15)   ID: proTETR  initialValue: 0
	(1/compartment_DefaultCompartment)*( (-1)*(1)* (proTETR_degradation_rate_p* x(15) ) + (1)*(1)* (pp6_translation_rate_p*p3_strength_p* ( (p3_strength_p* ( (( 1 )/(( 1 )+(power(( x(11) /tr3_Kd_p),tr3_h_p)))) ) ) ) ) );
	
//x(16)   ID: ter1  initialValue: 10
	0;
	
//x(17)   ID: ter2  initialValue: 10
	0;
	
//x(18)   ID: ter3  initialValue: 10
	0;
	
//x(19)   ID: ter4  initialValue: 10
	0;
	
//x(20)   ID: ter5  initialValue: 10
	0;
	
//x(21)   ID: ter6  initialValue: 10
	0
	];


	
endfunction
        x0=[10000;100;100;10;10;10;10;10;10;0;0;0;0;0;0;10;10;10;10;10;10];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)' 'x(14)' 'x(15)' 'x(16)' 'x(17)' 'x(18)' 'x(19)' 'x(20)' 'x(21)'],[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18;19;20;21])

//real_variable:
	
	
//x(1)   id: IPTG  initialValue: 10000
	
//x(2)   id: ia1_ActiveTF  initialValue: 100
	
//x(3)   id: ia1_InactiveTF  initialValue: 100
	
//x(4)   id: p1  initialValue: 10
	
//x(5)   id: p2  initialValue: 10
	
//x(6)   id: p3  initialValue: 10
	
//x(7)   id: pAUR1  initialValue: 10
	
//x(8)   id: pSLS1  initialValue: 10
	
//x(9)   id: pSLS4  initialValue: 10
	
//x(10)   id: proAUR1  initialValue: 0
	
//x(11)   id: proLACI  initialValue: 0
	
//x(12)   id: proLAMDAR  initialValue: 0
	
//x(13)   id: proSLS1  initialValue: 0
	
//x(14)   id: proSLS4  initialValue: 0
	
//x(15)   id: proTETR  initialValue: 0
	
//x(16)   id: ter1  initialValue: 10
	
//x(17)   id: ter2  initialValue: 10
	
//x(18)   id: ter3  initialValue: 10
	
//x(19)   id: ter4  initialValue: 10
	
//x(20)   id: ter5  initialValue: 10
	
//x(21)   id: ter6  initialValue: 10