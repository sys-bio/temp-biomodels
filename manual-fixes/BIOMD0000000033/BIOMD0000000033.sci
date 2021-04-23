
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_cell   id: cell
	compartment_cell=1;
		
// krbEGF_p   id: krbEGF
	krbEGF_p=2.18503E-5;
		
// kruEGF_p   id: kruEGF
	kruEGF_p=0.0121008;
		
// krbNGF_p   id: krbNGF
	krbNGF_p=1.38209E-7;
		
// kruNGF_p   id: kruNGF
	kruNGF_p=0.00723811;
		
// kEGF_p   id: kEGF
	kEGF_p=694.731;
		
// KmEGF_p   id: KmEGF
	KmEGF_p=6086070;
		
// kNGF_p   id: kNGF
	kNGF_p=389.428;
		
// KmNGF_p   id: KmNGF
	KmNGF_p=2112.66;
		
// kdSos_p   id: kdSos
	kdSos_p=1611.97;
		
// KmdSos_p   id: KmdSos
	KmdSos_p=896896;
		
// kSos_p   id: kSos
	kSos_p=32.344;
		
// KmSos_p   id: KmSos
	KmSos_p=3.59543E4;
		
// kRasGap_p   id: kRasGap
	kRasGap_p=1509.36;
		
// KmRasGap_p   id: KmRasGap
	KmRasGap_p=1432410;
		
// kRasToRaf1_p   id: kRasToRaf1
	kRasToRaf1_p=0.884096;
		
// KmRasToRaf1_p   id: KmRasToRaf1
	KmRasToRaf1_p=6.24646E4;
		
// kpRaf1_p   id: kpRaf1
	kpRaf1_p=185.759;
		
// KmpRaf1_p   id: KmpRaf1
	KmpRaf1_p=4768350;
		
// kpBRaf_p   id: kpBRaf
	kpBRaf_p=125.089;
		
// KmpBRaf_p   id: KmpBRaf
	KmpBRaf_p=157948;
		
// kdMek_p   id: kdMek
	kdMek_p=2.83243;
		
// KmdMek_p   id: KmdMek
	KmdMek_p=518753;
		
// kpMekCytoplasmic_p   id: kpMekCytoplasmic
	kpMekCytoplasmic_p=9.85367;
		
// KmpMekCytoplasmic_p   id: KmpMekCytoplasmic
	KmpMekCytoplasmic_p=1007340;
		
// kdErk_p   id: kdErk
	kdErk_p=8.8912;
		
// KmdErk_p   id: KmdErk
	KmdErk_p=3496490;
		
// kpP90Rsk_p   id: kpP90Rsk
	kpP90Rsk_p=0.0213697;
		
// KmpP90Rsk_p   id: KmpP90Rsk
	KmpP90Rsk_p=763523;
		
// kPI3K_p   id: kPI3K
	kPI3K_p=10.6737;
		
// KmPI3K_p   id: KmPI3K
	KmPI3K_p=184912;
		
// kPI3KRas_p   id: kPI3KRas
	kPI3KRas_p=0.0771067;
		
// KmPI3KRas_p   id: KmPI3KRas
	KmPI3KRas_p=272056;
		
// kAkt_p   id: kAkt
	kAkt_p=0.0566279;
		
// KmAkt_p   id: KmAkt
	KmAkt_p=653951;
		
// kdRaf1ByAkt_p   id: kdRaf1ByAkt
	kdRaf1ByAkt_p=15.1212;
		
// KmRaf1ByAkt_p   id: KmRaf1ByAkt
	KmRaf1ByAkt_p=119355;
		
// kC3GNGF_p   id: kC3GNGF
	kC3GNGF_p=146.912;
		
// KmC3GNGF_p   id: KmC3GNGF
	KmC3GNGF_p=1.28762E4;
		
// kC3G_p   id: kC3G
	kC3G_p=1.40145;
		
// KmC3G_p   id: KmC3G
	KmC3G_p=1.09656E4;
		
// kRapGap_p   id: kRapGap
	kRapGap_p=27.265;
		
// KmRapGap_p   id: KmRapGap
	KmRapGap_p=295990;
		
// kRap1ToBRaf_p   id: kRap1ToBRaf
	kRap1ToBRaf_p=2.20995;
		
// KmRap1ToBRaf_p   id: KmRap1ToBRaf
	KmRap1ToBRaf_p=1025460;
		
// kdRaf1_p   id: kdRaf1
	kdRaf1_p=0.126329;
		
// KmdRaf1_p   id: KmdRaf1
	KmdRaf1_p=1061.71;
		
// kdBRaf_p   id: kdBRaf
	kdBRaf_p=441.287;
		
// KmdBRaf_p   id: KmdBRaf
	KmdBRaf_p=10879500;
		
// RasGapActive_s   id: RasGapActive
	RasGapActive_s=120000;
		
// RapGapActive_s   id: RapGapActive
	RapGapActive_s=120000;
		
// PP2AActive_s   id: PP2AActive
	PP2AActive_s=120000;
		
// Raf1PPtase_s   id: Raf1PPtase
	Raf1PPtase_s=120000;
		



xdot=[
//x(1)   ID: EGF  initialValue: 10002000
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*krbEGF_p* x(1) * x(3) ) + (1)*(1)* (compartment_cell*kruEGF_p* x(4) ) );
	
//x(2)   ID: NGF  initialValue: 456000
	(1/compartment_cell)*( (-1)*(1)* (krbNGF_p* x(2) * x(5) *compartment_cell) + (1)*(1)* (kruNGF_p* x(6) *compartment_cell) );
	
//x(3)   ID: freeEGFReceptor  initialValue: 80000
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*krbEGF_p* x(1) * x(3) ) + (1)*(1)* (compartment_cell*kruEGF_p* x(4) ) );
	
//x(4)   ID: boundEGFReceptor  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*kruEGF_p* x(4) ) + (1)*(1)* (compartment_cell*krbEGF_p* x(1) * x(3) ) );
	
//x(5)   ID: freeNGFReceptor  initialValue: 10000
	(1/compartment_cell)*( (-1)*(1)* (krbNGF_p* x(2) * x(5) *compartment_cell) + (1)*(1)* (kruNGF_p* x(6) *compartment_cell) );
	
//x(6)   ID: boundNGFReceptor  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (kruNGF_p* x(6) *compartment_cell) + (1)*(1)* (krbNGF_p* x(2) * x(5) *compartment_cell) );
	
//x(7)   ID: SosInactive  initialValue: 120000
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*((kEGF_p* x(4) * x(7) )/( x(7) +KmEGF_p))) + (-1)*(1)* (compartment_cell*((kNGF_p* x(6) * x(7) )/( x(7) +KmNGF_p))) + (1)*(1)* (compartment_cell*((kdSos_p* x(10) * x(8) )/( x(8) +KmdSos_p))) );
	
//x(8)   ID: SosActive  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*((kdSos_p* x(10) * x(8) )/( x(8) +KmdSos_p))) + (1)*(1)* (compartment_cell*((kEGF_p* x(4) * x(7) )/( x(7) +KmEGF_p))) + (1)*(1)* (compartment_cell*((kNGF_p* x(6) * x(7) )/( x(7) +KmNGF_p))) );
	
//x(9)   ID: P90RskInactive  initialValue: 120000
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*((kpP90Rsk_p* x(20) * x(9) )/( x(9) +KmpP90Rsk_p))) );
	
//x(10)   ID: P90RskActive  initialValue: 0
	(1/compartment_cell)*( (1)*(1)* (compartment_cell*((kpP90Rsk_p* x(20) * x(9) )/( x(9) +KmpP90Rsk_p))) );
	
//x(11)   ID: RasInactive  initialValue: 120000
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*((kSos_p* x(8) * x(11) )/( x(11) +KmSos_p))) + (1)*(1)* (compartment_cell*((kRasGap_p*RasGapActive_s* x(12) )/( x(12) +KmRasGap_p))) );
	
//x(12)   ID: RasActive  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*((kRasGap_p*RasGapActive_s* x(12) )/( x(12) +KmRasGap_p))) + (1)*(1)* (compartment_cell*((kSos_p* x(8) * x(11) )/( x(11) +KmSos_p))) );
	
//x(13)   ID: Raf1Inactive  initialValue: 120000
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*((kRasToRaf1_p* x(12) * x(13) )/( x(13) +KmRasToRaf1_p))) + (1)*(1)* (compartment_cell*((kdRaf1_p*Raf1PPtase_s* x(14) )/( x(14) +KmdRaf1_p))) + (1)*(1)* (compartment_cell*((kdRaf1ByAkt_p* x(24) * x(14) )/( x(14) +KmRaf1ByAkt_p))) );
	
//x(14)   ID: Raf1Active  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*((kdRaf1_p*Raf1PPtase_s* x(14) )/( x(14) +KmdRaf1_p))) + (-1)*(1)* (compartment_cell*((kdRaf1ByAkt_p* x(24) * x(14) )/( x(14) +KmRaf1ByAkt_p))) + (1)*(1)* (compartment_cell*((kRasToRaf1_p* x(12) * x(13) )/( x(13) +KmRasToRaf1_p))) );
	
//x(15)   ID: BRafInactive  initialValue: 120000
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*((kRap1ToBRaf_p* x(28) * x(15) )/( x(15) +KmRap1ToBRaf_p))) + (1)*(1)* (compartment_cell*((kdBRaf_p*Raf1PPtase_s* x(16) )/( x(16) +KmdBRaf_p))) );
	
//x(16)   ID: BRafActive  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*((kdBRaf_p*Raf1PPtase_s* x(16) )/( x(16) +KmdBRaf_p))) + (1)*(1)* (compartment_cell*((kRap1ToBRaf_p* x(28) * x(15) )/( x(15) +KmRap1ToBRaf_p))) );
	
//x(17)   ID: MekInactive  initialValue: 600000
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*((kpRaf1_p* x(14) * x(17) )/( x(17) +KmpRaf1_p))) + (-1)*(1)* (compartment_cell*((kpBRaf_p* x(16) * x(17) )/( x(17) +KmpBRaf_p))) + (1)*(1)* (compartment_cell*((kdMek_p*PP2AActive_s* x(18) )/( x(18) +KmdMek_p))) );
	
//x(18)   ID: MekActive  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*((kdMek_p*PP2AActive_s* x(18) )/( x(18) +KmdMek_p))) + (1)*(1)* (compartment_cell*((kpRaf1_p* x(14) * x(17) )/( x(17) +KmpRaf1_p))) + (1)*(1)* (compartment_cell*((kpBRaf_p* x(16) * x(17) )/( x(17) +KmpBRaf_p))) );
	
//x(19)   ID: ErkInactive  initialValue: 600000
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*((kpMekCytoplasmic_p* x(18) * x(19) )/( x(19) +KmpMekCytoplasmic_p))) + (1)*(1)* (compartment_cell*((kdErk_p*PP2AActive_s* x(20) )/( x(20) +KmdErk_p))) );
	
//x(20)   ID: ErkActive  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*((kdErk_p*PP2AActive_s* x(20) )/( x(20) +KmdErk_p))) + (1)*(1)* (compartment_cell*((kpMekCytoplasmic_p* x(18) * x(19) )/( x(19) +KmpMekCytoplasmic_p))) );
	
//x(21)   ID: PI3KInactive  initialValue: 120000
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*((kPI3K_p* x(4) * x(21) )/( x(21) +KmPI3K_p))) + (-1)*(1)* (compartment_cell*((kPI3KRas_p* x(12) * x(21) )/( x(21) +KmPI3KRas_p))) );
	
//x(22)   ID: PI3KActive  initialValue: 0
	(1/compartment_cell)*( (1)*(1)* (compartment_cell*((kPI3K_p* x(4) * x(21) )/( x(21) +KmPI3K_p))) + (1)*(1)* (compartment_cell*((kPI3KRas_p* x(12) * x(21) )/( x(21) +KmPI3KRas_p))) );
	
//x(23)   ID: AktInactive  initialValue: 120000
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*((kAkt_p* x(22) * x(23) )/( x(23) +KmAkt_p))) );
	
//x(24)   ID: AktActive  initialValue: 0
	(1/compartment_cell)*( (1)*(1)* (compartment_cell*((kAkt_p* x(22) * x(23) )/( x(23) +KmAkt_p))) );
	
//x(25)   ID: C3GInactive  initialValue: 120000
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*((kC3GNGF_p* x(6) * x(25) )/( x(25) +KmC3GNGF_p))) );
	
//x(26)   ID: C3GActive  initialValue: 0
	(1/compartment_cell)*( (1)*(1)* (compartment_cell*((kC3GNGF_p* x(6) * x(25) )/( x(25) +KmC3GNGF_p))) );
	
//x(27)   ID: Rap1Inactive  initialValue: 120000
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*((kC3G_p* x(26) * x(27) )/( x(27) +KmC3G_p))) + (1)*(1)* (compartment_cell*((kRapGap_p*RapGapActive_s* x(28) )/( x(28) +KmRapGap_p))) );
	
//x(28)   ID: Rap1Active  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*((kRapGap_p*RapGapActive_s* x(28) )/( x(28) +KmRapGap_p))) + (1)*(1)* (compartment_cell*((kC3G_p* x(26) * x(27) )/( x(27) +KmC3G_p))) )
	];


	
endfunction
        x0=[10002000;456000;80000;0;10000;0;120000;0;120000;0;120000;0;120000;0;120000;0;600000;0;600000;0;120000;0;120000;0;120000;0;120000;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)' 'x(14)' 'x(15)' 'x(16)' 'x(17)' 'x(18)' 'x(19)' 'x(20)' 'x(21)' 'x(22)' 'x(23)' 'x(24)' 'x(25)' 'x(26)' 'x(27)' 'x(28)'],[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18;19;20;21;22;23;24;25;26;27;28])

//real_variable:
	
	
//x(1)   id: EGF  initialValue: 10002000
	
//x(2)   id: NGF  initialValue: 456000
	
//x(3)   id: freeEGFReceptor  initialValue: 80000
	
//x(4)   id: boundEGFReceptor  initialValue: 0
	
//x(5)   id: freeNGFReceptor  initialValue: 10000
	
//x(6)   id: boundNGFReceptor  initialValue: 0
	
//x(7)   id: SosInactive  initialValue: 120000
	
//x(8)   id: SosActive  initialValue: 0
	
//x(9)   id: P90RskInactive  initialValue: 120000
	
//x(10)   id: P90RskActive  initialValue: 0
	
//x(11)   id: RasInactive  initialValue: 120000
	
//x(12)   id: RasActive  initialValue: 0
	
//x(13)   id: Raf1Inactive  initialValue: 120000
	
//x(14)   id: Raf1Active  initialValue: 0
	
//x(15)   id: BRafInactive  initialValue: 120000
	
//x(16)   id: BRafActive  initialValue: 0
	
//x(17)   id: MekInactive  initialValue: 600000
	
//x(18)   id: MekActive  initialValue: 0
	
//x(19)   id: ErkInactive  initialValue: 600000
	
//x(20)   id: ErkActive  initialValue: 0
	
//x(21)   id: PI3KInactive  initialValue: 120000
	
//x(22)   id: PI3KActive  initialValue: 0
	
//x(23)   id: AktInactive  initialValue: 120000
	
//x(24)   id: AktActive  initialValue: 0
	
//x(25)   id: C3GInactive  initialValue: 120000
	
//x(26)   id: C3GActive  initialValue: 0
	
//x(27)   id: Rap1Inactive  initialValue: 120000
	
//x(28)   id: Rap1Active  initialValue: 0