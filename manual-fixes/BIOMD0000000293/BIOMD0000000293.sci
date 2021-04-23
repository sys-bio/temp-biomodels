
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_cytosol   id: cytosol
	compartment_cytosol=1;
		
// ksynNatP_p   id: ksynNatP
	ksynNatP_p=2.4;
		
// kmisfold_p   id: kmisfold
	kmisfold_p=4E-5;
		
// krefold_p   id: krefold
	krefold_p=8E-5;
		
// kbinMisPE3_p   id: kbinMisPE3
	kbinMisPE3_p=0.0001;
		
// krelMisPE3_p   id: krelMisPE3
	krelMisPE3_p=0.0002;
		
// kbinE1Ub_p   id: kbinE1Ub
	kbinE1Ub_p=0.0002;
		
// kbinE2Ub_p   id: kbinE2Ub
	kbinE2Ub_p=0.001;
		
// kmonoUb_p   id: kmonoUb
	kmonoUb_p=0.001;
		
// kpolyUb_p   id: kpolyUb
	kpolyUb_p=0.01;
		
// kactDUB_p   id: kactDUB
	kactDUB_p=0.0001;
		
// kbinProt_p   id: kbinProt
	kbinProt_p=5E-6;
		
// kactDUBProt_p   id: kactDUBProt
	kactDUBProt_p=1E-6;
		
// kactProt_p   id: kactProt
	kactProt_p=0.01;
		
// kagg1_p   id: kagg1
	kagg1_p=1E-12;
		
// kagg2_p   id: kagg2
	kagg2_p=1E-10;
		
// kdisagg1_p   id: kdisagg1
	kdisagg1_p=1E-8;
		
// kdisagg2_p   id: kdisagg2
	kdisagg2_p=8E-9;
		
// kdisagg3_p   id: kdisagg3
	kdisagg3_p=6E-9;
		
// kdisagg4_p   id: kdisagg4
	kdisagg4_p=4E-9;
		
// kdisagg5_p   id: kdisagg5
	kdisagg5_p=2E-9;
		
// kigrowth1_p   id: kigrowth1
	kigrowth1_p=5E-9;
		
// kigrowth2_p   id: kigrowth2
	kigrowth2_p=5E-9;
		
// kbinAggProt_p   id: kbinAggProt
	kbinAggProt_p=5E-9;
		
// kbinMisPDUB_p   id: kbinMisPDUB
	kbinMisPDUB_p=2E-7;
		
// kgenROS_p   id: kgenROS
	kgenROS_p=0.01;
		
// kremROS_p   id: kremROS
	kremROS_p=0.001;
		
// kubs_p   id: kubs
	kubs_p=0.009;
		
// kubd_p   id: kubd
	kubd_p=4.4E-9;
		
// kubss_p   id: kubss
	kubss_p=0.1;
		
// ksynUCHL1_p   id: ksynUCHL1
	ksynUCHL1_p=0.022;
		
// kbinUCHL1Prot_p   id: kbinUCHL1Prot
	kbinUCHL1Prot_p=4E-10;
		
// kdegProtUCHL1_p   id: kdegProtUCHL1
	kdegProtUCHL1_p=0.01;
		
// kdegLysUCHL1_p   id: kdegLysUCHL1
	kdegLysUCHL1_p=2.7E-9;
		
// kdamUCHL1_p   id: kdamUCHL1
	kdamUCHL1_p=1E-8;
		
// kbinLamp2aUCHL1dam_p   id: kbinLamp2aUCHL1dam
	kbinLamp2aUCHL1dam_p=1E-5;
		
// krelLamp2aUCHL1dam_p   id: krelLamp2aUCHL1dam
	krelLamp2aUCHL1dam_p=5E-5;
		
// kdegLysUCHL1dam_p   id: kdegLysUCHL1dam
	kdegLysUCHL1dam_p=2.7E-9;
		
// kbinUbUCHL1_p   id: kbinUbUCHL1
	kbinUbUCHL1_p=3E-6;
		
// krelUbUCHL1_p   id: krelUbUCHL1
	krelUbUCHL1_p=0.05;
		
// kactUchl1_p   id: kactUchl1
	kactUchl1_p=0.0001;
		
// kbinSUBUCHL1_p   id: kbinSUBUCHL1
	kbinSUBUCHL1_p=4E-8;
		
// ksynSUB_p   id: ksynSUB
	ksynSUB_p=0.13;
		
// kmisfoldSUB_p   id: kmisfoldSUB
	kmisfoldSUB_p=2E-5;
		
// krefoldSUB_p   id: krefoldSUB
	krefoldSUB_p=5E-5;
		
// kbinE3SUB_p   id: kbinE3SUB
	kbinE3SUB_p=0.0005;
		
// krelE3SUB_p   id: krelE3SUB
	krelE3SUB_p=0.0002;
		
// ksynasyn_p   id: ksynasyn
	ksynasyn_p=0.028;
		
// kbinasynProt_p   id: kbinasynProt
	kbinasynProt_p=1.7E-9;
		
// kdegasynProt_p   id: kdegasynProt
	kdegasynProt_p=0.01;
		
// kbinasynLamp2a_p   id: kbinasynLamp2a
	kbinasynLamp2a_p=4E-8;
		
// kCMAasyn_p   id: kCMAasyn
	kCMAasyn_p=0.001;
		
// kdamasyn_p   id: kdamasyn
	kdamasyn_p=5E-8;
		
// kbinasynDUB_p   id: kbinasynDUB
	kbinasynDUB_p=2E-7;
		
// kbinasynParkin_p   id: kbinasynParkin
	kbinasynParkin_p=0.0001;
		
// krelasynParkin_p   id: krelasynParkin
	krelasynParkin_p=0.0002;
		
// kaggasyn1_p   id: kaggasyn1
	kaggasyn1_p=5E-12;
		
// kaggasyn2_p   id: kaggasyn2
	kaggasyn2_p=5E-10;
		
// kdisaggasyn1_p   id: kdisaggasyn1
	kdisaggasyn1_p=1E-8;
		
// kdisaggasyn2_p   id: kdisaggasyn2
	kdisaggasyn2_p=8E-9;
		
// kdisaggasyn3_p   id: kdisaggasyn3
	kdisaggasyn3_p=6E-9;
		
// kdisaggasyn4_p   id: kdisaggasyn4
	kdisaggasyn4_p=4E-9;
		
// kdisaggasyn5_p   id: kdisaggasyn5
	kdisaggasyn5_p=2E-9;
		
// kgenROSAggP_p   id: kgenROSAggP
	kgenROSAggP_p=2E-5;
		
// kagg1dam_p   id: kagg1dam
	kagg1dam_p=1E-5;
		
// kagg2dam_p   id: kagg2dam
	kagg2dam_p=0.005;
		
// kdisaggasyndam1_p   id: kdisaggasyndam1
	kdisaggasyndam1_p=1E-8;
		
// kdisaggasyndam2_p   id: kdisaggasyndam2
	kdisaggasyndam2_p=8E-9;
		
// kdisaggasyndam3_p   id: kdisaggasyndam3
	kdisaggasyndam3_p=6E-9;
		
// kdisaggasyndam4_p   id: kdisaggasyndam4
	kdisaggasyndam4_p=4E-9;
		
// kdisaggasyndam5_p   id: kdisaggasyndam5
	kdisaggasyndam5_p=2E-9;
		
// kdisagguchl1dam1_p   id: kdisagguchl1dam1
	kdisagguchl1dam1_p=1E-8;
		
// kdisagguchl1dam2_p   id: kdisagguchl1dam2
	kdisagguchl1dam2_p=8E-9;
		
// kdisagguchl1dam3_p   id: kdisagguchl1dam3
	kdisagguchl1dam3_p=6E-9;
		
// kdisagguchl1dam4_p   id: kdisagguchl1dam4
	kdisagguchl1dam4_p=4E-9;
		
// kdisagguchl1dam5_p   id: kdisagguchl1dam5
	kdisagguchl1dam5_p=2E-9;
		
// kaggSUB1_p   id: kaggSUB1
	kaggSUB1_p=1E-12;
		
// kaggSUB2_p   id: kaggSUB2
	kaggSUB2_p=1E-10;
		
// kdisaggSUB1_p   id: kdisaggSUB1
	kdisaggSUB1_p=1E-8;
		
// kdisaggSUB2_p   id: kdisaggSUB2
	kdisaggSUB2_p=8E-9;
		
// kdisaggSUB3_p   id: kdisaggSUB3
	kdisaggSUB3_p=6E-9;
		
// kdisaggSUB4_p   id: kdisaggSUB4
	kdisaggSUB4_p=4E-9;
		
// kdisaggSUB5_p   id: kdisaggSUB5
	kdisaggSUB5_p=2E-9;
		
// Tot_MisP_p   id: Tot_MisP
	Tot_MisP_p=1;
		
// Tot_Protein_p   id: Tot_Protein
	Tot_Protein_p=1;
		
// Ub_Conjugates_p   id: Ub_Conjugates
	Ub_Conjugates_p=1;
		
// Tot_Ub_p   id: Tot_Ub
	Tot_Ub_p=1;
		
// AggP_p   id: AggP
	AggP_p=1;
		
// Tot_asyn_dam_p   id: Tot_asyn_dam
	Tot_asyn_dam_p=1;
		
// Tot_asyn_p   id: Tot_asyn
	Tot_asyn_p=1;
		
// Tot_UCHL1_p   id: Tot_UCHL1
	Tot_UCHL1_p=1;
		
// UCHL1_substrate_p   id: UCHL1_substrate
	UCHL1_substrate_p=1;
		
// ATP_s   id: ATP
	ATP_s=10000;
		
// ADP_s   id: ADP
	ADP_s=1000;
		
// AMP_s   id: AMP
	AMP_s=1000;
		
// Source_s   id: Source
	Source_s=1;
		
// Sink_s   id: Sink
	Sink_s=1;
		



xdot=[
//x(1)   ID: kproteff  initialValue: 1
	0;
	
//x(2)   ID: NatP  initialValue: 6000
	(1/compartment_cytosol)*( (-1)*(1)* (kmisfold_p* x(2) * x(11) ) + (1)*(1)* (ksynNatP_p*Source_s) + (1)*(1)* (krefold_p* x(3) ) );
	
//x(3)   ID: MisP  initialValue: 80
	(1/compartment_cytosol)*( (-1)*(1)* (kubss_p*((power( x(3) ,( 6 )))/((power(( 1500 ),( 6 )))+(power( x(3) ,( 6 )))))) + (-1)*(1)* (krefold_p* x(3) ) + (-1)*(1)* (kbinMisPE3_p* x(3) * x(7) ) + (-1)*(2)* (kagg1_p* x(3) *( x(3) -( 1 ))*( 0.5 )) + (-1)*(1)* (kagg2_p* x(3) * x(35) ) + (-1)*(1)* (kagg2_p* x(3) * x(36) ) + (-1)*(1)* (kagg2_p* x(3) * x(37) ) + (-1)*(1)* (kagg2_p* x(3) * x(38) ) + (-1)*(1)* (kagg2_p* x(3) * x(39) ) + (-1)*(1)* (kigrowth1_p* x(3) * x(40) ) + (1)*(1)* (kubss_p*((power( x(3) ,( 6 )))/((power(( 1500 ),( 6 )))+(power( x(3) ,( 6 )))))) + (1)*(1)* (kmisfold_p* x(2) * x(11) ) + (1)*(1)* (krelMisPE3_p* x(8) ) + (1)*(1)* (kactDUBProt_p* x(22) * x(9) ) + (1)*(1)* (kdisagg5_p* x(39) ) + (1)*(1)* (kdisagg4_p* x(38) ) + (1)*(1)* (kdisagg3_p* x(37) ) + (1)*(1)* (kdisagg2_p* x(36) ) + (1)*(2)* (kdisagg1_p* x(35) ) );
	
//x(4)   ID: Ub  initialValue: 1500
	(1/compartment_cytosol)*( (-1)*(1)* (kubd_p* x(10) * x(4) * x(1) ) + (-1)*(1)* ((kbinE1Ub_p* x(5) * x(4) *ATP_s)/(( 5000 )+ATP_s)) + (-1)*(1)* (kbinUbUCHL1_p* x(4) * x(42) ) + (1)*(1)* (kubs_p*Source_s) + (1)*(3)* (kubss_p*((power( x(3) ,( 6 )))/((power(( 1500 ),( 6 )))+(power( x(3) ,( 6 )))))) + (1)*(1)* (kactDUB_p* x(34) ) + (1)*(1)* (kactDUB_p* x(33) ) + (1)*(1)* (kactDUB_p* x(32) ) + (1)*(1)* (kactDUB_p* x(31) ) + (1)*(1)* (kactDUB_p* x(30) ) + (1)*(1)* (kactDUB_p* x(29) ) + (1)*(1)* (kactDUB_p* x(28) ) + (1)*(1)* (kactDUB_p* x(27) ) + (1)*(1)* (kactDUBProt_p* x(26) * x(9) ) + (1)*(1)* (kactDUBProt_p* x(25) * x(9) ) + (1)*(1)* (kactDUBProt_p* x(24) * x(9) ) + (1)*(1)* (kactDUBProt_p* x(23) * x(9) ) + (1)*(4)* (kactDUBProt_p* x(22) * x(9) ) + (1)*(4)* ((kactProt_p* x(1) * x(22) *ATP_s)/(( 5000 )+ATP_s)) + (1)*(5)* ((kactProt_p* x(1) * x(23) *ATP_s)/(( 5000 )+ATP_s)) + (1)*(6)* ((kactProt_p* x(1) * x(24) *ATP_s)/(( 5000 )+ATP_s)) + (1)*(7)* ((kactProt_p* x(1) * x(25) *ATP_s)/(( 5000 )+ATP_s)) + (1)*(8)* ((kactProt_p* x(1) * x(26) *ATP_s)/(( 5000 )+ATP_s)) + (1)*(1)* (krelUbUCHL1_p* x(49) ) + (1)*(1)* (kactUchl1_p* x(69) ) + (1)*(1)* (kactUchl1_p* x(68) ) + (1)*(1)* (kactUchl1_p* x(67) ) + (1)*(1)* (kactUchl1_p* x(66) ) + (1)*(1)* (kactUchl1_p* x(65) ) + (1)*(1)* (kactUchl1_p* x(64) ) + (1)*(1)* (kactUchl1_p* x(63) ) + (1)*(1)* (kactUchl1_p* x(62) ) + (1)*(1)* (kactDUBProt_p* x(74) * x(9) ) + (1)*(1)* (kactDUBProt_p* x(73) * x(9) ) + (1)*(1)* (kactDUBProt_p* x(72) * x(9) ) + (1)*(1)* (kactDUBProt_p* x(71) * x(9) ) + (1)*(4)* (kactDUBProt_p* x(70) * x(9) ) + (1)*(4)* ((kactProt_p* x(70) * x(1) *ATP_s)/(( 5000 )+ATP_s)) + (1)*(5)* ((kactProt_p* x(71) * x(1) *ATP_s)/(( 5000 )+ATP_s)) + (1)*(6)* ((kactProt_p* x(72) * x(1) *ATP_s)/(( 5000 )+ATP_s)) + (1)*(7)* ((kactProt_p* x(73) * x(1) *ATP_s)/(( 5000 )+ATP_s)) + (1)*(8)* ((kactProt_p* x(74) * x(1) *ATP_s)/(( 5000 )+ATP_s)) + (1)*(1)* (kactDUB_p* x(96) ) + (1)*(1)* (kactDUB_p* x(95) ) + (1)*(1)* (kactDUB_p* x(94) ) + (1)*(1)* (kactDUB_p* x(93) ) + (1)*(1)* (kactDUB_p* x(92) ) + (1)*(1)* (kactDUB_p* x(91) ) + (1)*(1)* (kactDUB_p* x(90) ) + (1)*(1)* (kactDUB_p* x(89) ) + (1)*(1)* (kactDUBProt_p* x(101) * x(9) ) + (1)*(1)* (kactDUBProt_p* x(100) * x(9) ) + (1)*(1)* (kactDUBProt_p* x(99) * x(9) ) + (1)*(1)* (kactDUBProt_p* x(98) * x(9) ) + (1)*(4)* (kactDUBProt_p* x(97) * x(9) ) + (1)*(4)* ((kactProt_p* x(1) * x(97) *ATP_s)/(( 5000 )+ATP_s)) + (1)*(5)* ((kactProt_p* x(1) * x(98) *ATP_s)/(( 5000 )+ATP_s)) + (1)*(6)* ((kactProt_p* x(1) * x(99) *ATP_s)/(( 5000 )+ATP_s)) + (1)*(7)* ((kactProt_p* x(1) * x(100) *ATP_s)/(( 5000 )+ATP_s)) + (1)*(8)* ((kactProt_p* x(1) * x(101) *ATP_s)/(( 5000 )+ATP_s)) );
	
//x(5)   ID: E1  initialValue: 105
	(1/compartment_cytosol)*( (-1)*(1)* ((kbinE1Ub_p* x(5) * x(4) *ATP_s)/(( 5000 )+ATP_s)) + (1)*(1)* (kbinE2Ub_p* x(6) * x(12) ) );
	
//x(6)   ID: E2  initialValue: 50
	(1/compartment_cytosol)*( (-1)*(1)* (kbinE2Ub_p* x(6) * x(12) ) + (1)*(1)* (kmonoUb_p* x(13) * x(8) ) + (1)*(1)* (kpolyUb_p* x(14) * x(13) ) + (1)*(1)* (kpolyUb_p* x(15) * x(13) ) + (1)*(1)* (kpolyUb_p* x(16) * x(13) ) + (1)*(1)* (kpolyUb_p* x(17) * x(13) ) + (1)*(1)* (kpolyUb_p* x(18) * x(13) ) + (1)*(1)* (kpolyUb_p* x(19) * x(13) ) + (1)*(1)* (kpolyUb_p* x(20) * x(13) ) + (1)*(1)* (kmonoUb_p* x(13) * x(53) ) + (1)*(1)* (kpolyUb_p* x(54) * x(13) ) + (1)*(1)* (kpolyUb_p* x(55) * x(13) ) + (1)*(1)* (kpolyUb_p* x(56) * x(13) ) + (1)*(1)* (kpolyUb_p* x(57) * x(13) ) + (1)*(1)* (kpolyUb_p* x(58) * x(13) ) + (1)*(1)* (kpolyUb_p* x(59) * x(13) ) + (1)*(1)* (kpolyUb_p* x(60) * x(13) ) + (1)*(1)* (kmonoUb_p* x(13) * x(80) ) + (1)*(1)* (kpolyUb_p* x(81) * x(13) ) + (1)*(1)* (kpolyUb_p* x(82) * x(13) ) + (1)*(1)* (kpolyUb_p* x(83) * x(13) ) + (1)*(1)* (kpolyUb_p* x(84) * x(13) ) + (1)*(1)* (kpolyUb_p* x(85) * x(13) ) + (1)*(1)* (kpolyUb_p* x(86) * x(13) ) + (1)*(1)* (kpolyUb_p* x(87) * x(13) ) );
	
//x(7)   ID: E3  initialValue: 300
	(1/compartment_cytosol)*( (-1)*(1)* (kbinMisPE3_p* x(3) * x(7) ) + (1)*(1)* (krelMisPE3_p* x(8) ) + (1)*(1)* (kbinProt_p* x(17) * x(10) ) + (1)*(1)* (kbinProt_p* x(18) * x(10) ) + (1)*(1)* (kbinProt_p* x(19) * x(10) ) + (1)*(1)* (kbinProt_p* x(20) * x(10) ) + (1)*(1)* (kbinProt_p* x(21) * x(10) ) );
	
//x(8)   ID: E3_MisP  initialValue: 2
	(1/compartment_cytosol)*( (-1)*(1)* (krelMisPE3_p* x(8) ) + (-1)*(1)* (kmonoUb_p* x(13) * x(8) ) + (-1)*(1)* (kigrowth2_p* x(8) * x(40) ) + (1)*(1)* (kbinMisPE3_p* x(3) * x(7) ) + (1)*(1)* (kactDUB_p* x(27) ) );
	
//x(9)   ID: DUB  initialValue: 160
	(1/compartment_cytosol)*( (-1)*(1)* (kbinMisPDUB_p* x(14) * x(9) ) + (-1)*(1)* (kbinMisPDUB_p* x(15) * x(9) ) + (-1)*(1)* (kbinMisPDUB_p* x(16) * x(9) ) + (-1)*(1)* (kbinMisPDUB_p* x(17) * x(9) ) + (-1)*(1)* (kbinMisPDUB_p* x(18) * x(9) ) + (-1)*(1)* (kbinMisPDUB_p* x(19) * x(9) ) + (-1)*(1)* (kbinMisPDUB_p* x(20) * x(9) ) + (-1)*(1)* (kbinMisPDUB_p* x(21) * x(9) ) + (-1)*(1)* (kactDUBProt_p* x(26) * x(9) ) + (-1)*(1)* (kactDUBProt_p* x(25) * x(9) ) + (-1)*(1)* (kactDUBProt_p* x(24) * x(9) ) + (-1)*(1)* (kactDUBProt_p* x(23) * x(9) ) + (-1)*(1)* (kactDUBProt_p* x(22) * x(9) ) + (-1)*(1)* (kactDUBProt_p* x(74) * x(9) ) + (-1)*(1)* (kactDUBProt_p* x(73) * x(9) ) + (-1)*(1)* (kactDUBProt_p* x(72) * x(9) ) + (-1)*(1)* (kactDUBProt_p* x(71) * x(9) ) + (-1)*(1)* (kactDUBProt_p* x(70) * x(9) ) + (-1)*(1)* (kbinasynDUB_p* x(88) * x(9) ) + (-1)*(1)* (kbinasynDUB_p* x(87) * x(9) ) + (-1)*(1)* (kbinasynDUB_p* x(86) * x(9) ) + (-1)*(1)* (kbinasynDUB_p* x(85) * x(9) ) + (-1)*(1)* (kbinasynDUB_p* x(84) * x(9) ) + (-1)*(1)* (kbinasynDUB_p* x(83) * x(9) ) + (-1)*(1)* (kbinasynDUB_p* x(82) * x(9) ) + (-1)*(1)* (kbinasynDUB_p* x(81) * x(9) ) + (-1)*(1)* (kactDUBProt_p* x(101) * x(9) ) + (-1)*(1)* (kactDUBProt_p* x(100) * x(9) ) + (-1)*(1)* (kactDUBProt_p* x(99) * x(9) ) + (-1)*(1)* (kactDUBProt_p* x(98) * x(9) ) + (-1)*(1)* (kactDUBProt_p* x(97) * x(9) ) + (1)*(1)* (kactDUB_p* x(27) ) + (1)*(1)* (kactDUBProt_p* x(26) * x(9) ) + (1)*(1)* (kactDUBProt_p* x(25) * x(9) ) + (1)*(1)* (kactDUBProt_p* x(24) * x(9) ) + (1)*(1)* (kactDUBProt_p* x(23) * x(9) ) + (1)*(1)* (kactDUBProt_p* x(22) * x(9) ) + (1)*(1)* (kactDUBProt_p* x(74) * x(9) ) + (1)*(1)* (kactDUBProt_p* x(73) * x(9) ) + (1)*(1)* (kactDUBProt_p* x(72) * x(9) ) + (1)*(1)* (kactDUBProt_p* x(71) * x(9) ) + (1)*(1)* (kactDUBProt_p* x(70) * x(9) ) + (1)*(1)* (kactDUB_p* x(89) ) + (1)*(1)* (kactDUBProt_p* x(101) * x(9) ) + (1)*(1)* (kactDUBProt_p* x(100) * x(9) ) + (1)*(1)* (kactDUBProt_p* x(99) * x(9) ) + (1)*(1)* (kactDUBProt_p* x(98) * x(9) ) + (1)*(1)* (kactDUBProt_p* x(97) * x(9) ) );
	
//x(10)   ID: Proteasome  initialValue: 1500
	(1/compartment_cytosol)*( (-1)*(1)* (kubd_p* x(10) * x(4) * x(1) ) + (-1)*(1)* (kbinProt_p* x(17) * x(10) ) + (-1)*(1)* (kbinProt_p* x(18) * x(10) ) + (-1)*(1)* (kbinProt_p* x(19) * x(10) ) + (-1)*(1)* (kbinProt_p* x(20) * x(10) ) + (-1)*(1)* (kbinProt_p* x(21) * x(10) ) + (-1)*(1)* (kbinAggProt_p* x(35) * x(10) ) + (-1)*(1)* (kbinAggProt_p* x(36) * x(10) ) + (-1)*(1)* (kbinAggProt_p* x(37) * x(10) ) + (-1)*(1)* (kbinAggProt_p* x(38) * x(10) ) + (-1)*(1)* (kbinAggProt_p* x(39) * x(10) ) + (-1)*(1)* (kbinUCHL1Prot_p* x(42) * x(10) ) + (-1)*(1)* (kbinUCHL1Prot_p* x(46) * x(10) ) + (-1)*(1)* (kbinProt_p* x(57) * x(10) ) + (-1)*(1)* (kbinProt_p* x(58) * x(10) ) + (-1)*(1)* (kbinProt_p* x(59) * x(10) ) + (-1)*(1)* (kbinProt_p* x(60) * x(10) ) + (-1)*(1)* (kbinProt_p* x(61) * x(10) ) + (-1)*(1)* (kbinasynProt_p* x(75) * x(10) ) + (-1)*(1)* (kbinProt_p* x(84) * x(10) ) + (-1)*(1)* (kbinProt_p* x(85) * x(10) ) + (-1)*(1)* (kbinProt_p* x(86) * x(10) ) + (-1)*(1)* (kbinProt_p* x(87) * x(10) ) + (-1)*(1)* (kbinProt_p* x(88) * x(10) ) + (-1)*(1)* (kbinAggProt_p* x(102) * x(10) ) + (-1)*(1)* (kbinAggProt_p* x(103) * x(10) ) + (-1)*(1)* (kbinAggProt_p* x(104) * x(10) ) + (-1)*(1)* (kbinAggProt_p* x(105) * x(10) ) + (-1)*(1)* (kbinAggProt_p* x(106) * x(10) ) + (-1)*(1)* (kbinAggProt_p* x(107) * x(10) ) + (-1)*(1)* (kbinAggProt_p* x(108) * x(10) ) + (-1)*(1)* (kbinAggProt_p* x(109) * x(10) ) + (-1)*(1)* (kbinAggProt_p* x(110) * x(10) ) + (-1)*(1)* (kbinAggProt_p* x(111) * x(10) ) + (-1)*(1)* (kbinAggProt_p* x(112) * x(10) ) + (-1)*(1)* (kbinAggProt_p* x(113) * x(10) ) + (-1)*(1)* (kbinAggProt_p* x(114) * x(10) ) + (-1)*(1)* (kbinAggProt_p* x(115) * x(10) ) + (-1)*(1)* (kbinAggProt_p* x(116) * x(10) ) + (-1)*(1)* (kbinAggProt_p* x(117) * x(10) ) + (-1)*(1)* (kbinAggProt_p* x(118) * x(10) ) + (-1)*(1)* (kbinAggProt_p* x(119) * x(10) ) + (-1)*(1)* (kbinAggProt_p* x(120) * x(10) ) + (-1)*(1)* (kbinAggProt_p* x(121) * x(10) ) + (1)*(1)* (kubd_p* x(10) * x(4) * x(1) ) + (1)*(1)* (kactDUBProt_p* x(22) * x(9) ) + (1)*(1)* ((kactProt_p* x(1) * x(22) *ATP_s)/(( 5000 )+ATP_s)) + (1)*(1)* ((kactProt_p* x(1) * x(23) *ATP_s)/(( 5000 )+ATP_s)) + (1)*(1)* ((kactProt_p* x(1) * x(24) *ATP_s)/(( 5000 )+ATP_s)) + (1)*(1)* ((kactProt_p* x(1) * x(25) *ATP_s)/(( 5000 )+ATP_s)) + (1)*(1)* ((kactProt_p* x(1) * x(26) *ATP_s)/(( 5000 )+ATP_s)) + (1)*(1)* (kdegProtUCHL1_p* x(43) * x(1) ) + (1)*(1)* (kdegProtUCHL1_p* x(44) * x(1) ) + (1)*(1)* (kactDUBProt_p* x(70) * x(9) ) + (1)*(1)* ((kactProt_p* x(70) * x(1) *ATP_s)/(( 5000 )+ATP_s)) + (1)*(1)* ((kactProt_p* x(71) * x(1) *ATP_s)/(( 5000 )+ATP_s)) + (1)*(1)* ((kactProt_p* x(72) * x(1) *ATP_s)/(( 5000 )+ATP_s)) + (1)*(1)* ((kactProt_p* x(73) * x(1) *ATP_s)/(( 5000 )+ATP_s)) + (1)*(1)* ((kactProt_p* x(74) * x(1) *ATP_s)/(( 5000 )+ATP_s)) + (1)*(1)* (kdegasynProt_p* x(1) * x(76) ) + (1)*(1)* (kactDUBProt_p* x(97) * x(9) ) + (1)*(1)* ((kactProt_p* x(1) * x(97) *ATP_s)/(( 5000 )+ATP_s)) + (1)*(1)* ((kactProt_p* x(1) * x(98) *ATP_s)/(( 5000 )+ATP_s)) + (1)*(1)* ((kactProt_p* x(1) * x(99) *ATP_s)/(( 5000 )+ATP_s)) + (1)*(1)* ((kactProt_p* x(1) * x(100) *ATP_s)/(( 5000 )+ATP_s)) + (1)*(1)* ((kactProt_p* x(1) * x(101) *ATP_s)/(( 5000 )+ATP_s)) );
	
//x(11)   ID: ROS  initialValue: 10
	(1/compartment_cytosol)*( (-1)*(1)* (kmisfold_p* x(2) * x(11) ) + (-1)*(1)* (kdamUCHL1_p* x(42) * x(11) ) + (-1)*(1)* (kmisfoldSUB_p* x(50) * x(11) ) + (-1)*(1)* (kdamasyn_p* x(11) * x(75) ) + (-1)*(1)* (kremROS_p* x(11) ) + (1)*(1)* (kmisfold_p* x(2) * x(11) ) + (1)*(1)* (kgenROSAggP_p* x(35) ) + (1)*(1)* (kgenROSAggP_p* x(36) ) + (1)*(1)* (kgenROSAggP_p* x(37) ) + (1)*(1)* (kgenROSAggP_p* x(38) ) + (1)*(1)* (kgenROSAggP_p* x(39) ) + (1)*(1)* (kdamUCHL1_p* x(42) * x(11) ) + (1)*(1)* (kmisfoldSUB_p* x(50) * x(11) ) + (1)*(1)* (kdamasyn_p* x(11) * x(75) ) + (1)*(1)* (kgenROSAggP_p* x(102) ) + (1)*(1)* (kgenROSAggP_p* x(103) ) + (1)*(1)* (kgenROSAggP_p* x(104) ) + (1)*(1)* (kgenROSAggP_p* x(105) ) + (1)*(1)* (kgenROSAggP_p* x(106) ) + (1)*(1)* (kgenROSAggP_p* x(107) ) + (1)*(1)* (kgenROSAggP_p* x(108) ) + (1)*(1)* (kgenROSAggP_p* x(109) ) + (1)*(1)* (kgenROSAggP_p* x(110) ) + (1)*(1)* (kgenROSAggP_p* x(111) ) + (1)*(1)* (kgenROSAggP_p* x(112) ) + (1)*(1)* (kgenROSAggP_p* x(113) ) + (1)*(1)* (kgenROSAggP_p* x(114) ) + (1)*(1)* (kgenROSAggP_p* x(115) ) + (1)*(1)* (kgenROSAggP_p* x(116) ) + (1)*(1)* (kgenROSAggP_p* x(117) ) + (1)*(1)* (kgenROSAggP_p* x(118) ) + (1)*(1)* (kgenROSAggP_p* x(119) ) + (1)*(1)* (kgenROSAggP_p* x(120) ) + (1)*(1)* (kgenROSAggP_p* x(121) ) + (1)*(1)* (kgenROS_p*Source_s) );
	
//x(12)   ID: E1_Ub  initialValue: 795
	(1/compartment_cytosol)*( (-1)*(1)* (kbinE2Ub_p* x(6) * x(12) ) + (1)*(1)* ((kbinE1Ub_p* x(5) * x(4) *ATP_s)/(( 5000 )+ATP_s)) );
	
//x(13)   ID: E2_Ub  initialValue: 950
	(1/compartment_cytosol)*( (-1)*(1)* (kmonoUb_p* x(13) * x(8) ) + (-1)*(1)* (kpolyUb_p* x(14) * x(13) ) + (-1)*(1)* (kpolyUb_p* x(15) * x(13) ) + (-1)*(1)* (kpolyUb_p* x(16) * x(13) ) + (-1)*(1)* (kpolyUb_p* x(17) * x(13) ) + (-1)*(1)* (kpolyUb_p* x(18) * x(13) ) + (-1)*(1)* (kpolyUb_p* x(19) * x(13) ) + (-1)*(1)* (kpolyUb_p* x(20) * x(13) ) + (-1)*(1)* (kmonoUb_p* x(13) * x(53) ) + (-1)*(1)* (kpolyUb_p* x(54) * x(13) ) + (-1)*(1)* (kpolyUb_p* x(55) * x(13) ) + (-1)*(1)* (kpolyUb_p* x(56) * x(13) ) + (-1)*(1)* (kpolyUb_p* x(57) * x(13) ) + (-1)*(1)* (kpolyUb_p* x(58) * x(13) ) + (-1)*(1)* (kpolyUb_p* x(59) * x(13) ) + (-1)*(1)* (kpolyUb_p* x(60) * x(13) ) + (-1)*(1)* (kmonoUb_p* x(13) * x(80) ) + (-1)*(1)* (kpolyUb_p* x(81) * x(13) ) + (-1)*(1)* (kpolyUb_p* x(82) * x(13) ) + (-1)*(1)* (kpolyUb_p* x(83) * x(13) ) + (-1)*(1)* (kpolyUb_p* x(84) * x(13) ) + (-1)*(1)* (kpolyUb_p* x(85) * x(13) ) + (-1)*(1)* (kpolyUb_p* x(86) * x(13) ) + (-1)*(1)* (kpolyUb_p* x(87) * x(13) ) + (1)*(1)* (kbinE2Ub_p* x(6) * x(12) ) );
	
//x(14)   ID: E3_MisP_Ub  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (kpolyUb_p* x(14) * x(13) ) + (-1)*(1)* (kbinMisPDUB_p* x(14) * x(9) ) + (-1)*(1)* (kigrowth2_p* x(14) * x(40) ) + (1)*(1)* (kmonoUb_p* x(13) * x(8) ) );
	
//x(15)   ID: E3_MisP_Ub2  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (kpolyUb_p* x(15) * x(13) ) + (-1)*(1)* (kbinMisPDUB_p* x(15) * x(9) ) + (-1)*(1)* (kigrowth2_p* x(15) * x(40) ) + (1)*(1)* (kpolyUb_p* x(14) * x(13) ) );
	
//x(16)   ID: E3_MisP_Ub3  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (kpolyUb_p* x(16) * x(13) ) + (-1)*(1)* (kbinMisPDUB_p* x(16) * x(9) ) + (-1)*(1)* (kigrowth2_p* x(16) * x(40) ) + (1)*(1)* (kpolyUb_p* x(15) * x(13) ) );
	
//x(17)   ID: E3_MisP_Ub4  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (kpolyUb_p* x(17) * x(13) ) + (-1)*(1)* (kbinMisPDUB_p* x(17) * x(9) ) + (-1)*(1)* (kbinProt_p* x(17) * x(10) ) + (-1)*(1)* (kigrowth2_p* x(17) * x(40) ) + (1)*(1)* (kpolyUb_p* x(16) * x(13) ) );
	
//x(18)   ID: E3_MisP_Ub5  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (kpolyUb_p* x(18) * x(13) ) + (-1)*(1)* (kbinMisPDUB_p* x(18) * x(9) ) + (-1)*(1)* (kbinProt_p* x(18) * x(10) ) + (-1)*(1)* (kigrowth2_p* x(18) * x(40) ) + (1)*(1)* (kpolyUb_p* x(17) * x(13) ) );
	
//x(19)   ID: E3_MisP_Ub6  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (kpolyUb_p* x(19) * x(13) ) + (-1)*(1)* (kbinMisPDUB_p* x(19) * x(9) ) + (-1)*(1)* (kbinProt_p* x(19) * x(10) ) + (-1)*(1)* (kigrowth2_p* x(19) * x(40) ) + (1)*(1)* (kpolyUb_p* x(18) * x(13) ) );
	
//x(20)   ID: E3_MisP_Ub7  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (kpolyUb_p* x(20) * x(13) ) + (-1)*(1)* (kbinMisPDUB_p* x(20) * x(9) ) + (-1)*(1)* (kbinProt_p* x(20) * x(10) ) + (-1)*(1)* (kigrowth2_p* x(20) * x(40) ) + (1)*(1)* (kpolyUb_p* x(19) * x(13) ) );
	
//x(21)   ID: E3_MisP_Ub8  initialValue: 300
	(1/compartment_cytosol)*( (-1)*(1)* (kbinMisPDUB_p* x(21) * x(9) ) + (-1)*(1)* (kbinProt_p* x(21) * x(10) ) + (-1)*(1)* (kigrowth2_p* x(21) * x(40) ) + (1)*(1)* (kpolyUb_p* x(20) * x(13) ) );
	
//x(22)   ID: MisP_Ub4_Proteasome  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (kactDUBProt_p* x(22) * x(9) ) + (-1)*(1)* ((kactProt_p* x(1) * x(22) *ATP_s)/(( 5000 )+ATP_s)) + (1)*(1)* (kbinProt_p* x(17) * x(10) ) + (1)*(1)* (kactDUBProt_p* x(23) * x(9) ) );
	
//x(23)   ID: MisP_Ub5_Proteasome  initialValue: 1
	(1/compartment_cytosol)*( (-1)*(1)* (kactDUBProt_p* x(23) * x(9) ) + (-1)*(1)* ((kactProt_p* x(1) * x(23) *ATP_s)/(( 5000 )+ATP_s)) + (1)*(1)* (kbinProt_p* x(18) * x(10) ) + (1)*(1)* (kactDUBProt_p* x(24) * x(9) ) );
	
//x(24)   ID: MisP_Ub6_Proteasome  initialValue: 2
	(1/compartment_cytosol)*( (-1)*(1)* (kactDUBProt_p* x(24) * x(9) ) + (-1)*(1)* ((kactProt_p* x(1) * x(24) *ATP_s)/(( 5000 )+ATP_s)) + (1)*(1)* (kbinProt_p* x(19) * x(10) ) + (1)*(1)* (kactDUBProt_p* x(25) * x(9) ) );
	
//x(25)   ID: MisP_Ub7_Proteasome  initialValue: 10
	(1/compartment_cytosol)*( (-1)*(1)* (kactDUBProt_p* x(25) * x(9) ) + (-1)*(1)* ((kactProt_p* x(1) * x(25) *ATP_s)/(( 5000 )+ATP_s)) + (1)*(1)* (kbinProt_p* x(20) * x(10) ) + (1)*(1)* (kactDUBProt_p* x(26) * x(9) ) );
	
//x(26)   ID: MisP_Ub8_Proteasome  initialValue: 350
	(1/compartment_cytosol)*( (-1)*(1)* (kactDUBProt_p* x(26) * x(9) ) + (-1)*(1)* ((kactProt_p* x(1) * x(26) *ATP_s)/(( 5000 )+ATP_s)) + (1)*(1)* (kbinProt_p* x(21) * x(10) ) );
	
//x(27)   ID: E3_MisP_Ub_DUB  initialValue: 100
	(1/compartment_cytosol)*( (-1)*(1)* (kactDUB_p* x(27) ) + (-1)*(1)* (kigrowth2_p* x(27) * x(40) ) + (1)*(1)* (kbinMisPDUB_p* x(14) * x(9) ) + (1)*(1)* (kactDUB_p* x(28) ) );
	
//x(28)   ID: E3_MisP_Ub2_DUB  initialValue: 100
	(1/compartment_cytosol)*( (-1)*(1)* (kactDUB_p* x(28) ) + (-1)*(1)* (kigrowth2_p* x(28) * x(40) ) + (1)*(1)* (kbinMisPDUB_p* x(15) * x(9) ) + (1)*(1)* (kactDUB_p* x(29) ) );
	
//x(29)   ID: E3_MisP_Ub3_DUB  initialValue: 100
	(1/compartment_cytosol)*( (-1)*(1)* (kactDUB_p* x(29) ) + (-1)*(1)* (kigrowth2_p* x(29) * x(40) ) + (1)*(1)* (kbinMisPDUB_p* x(16) * x(9) ) + (1)*(1)* (kactDUB_p* x(30) ) );
	
//x(30)   ID: E3_MisP_Ub4_DUB  initialValue: 100
	(1/compartment_cytosol)*( (-1)*(1)* (kactDUB_p* x(30) ) + (-1)*(1)* (kigrowth2_p* x(30) * x(40) ) + (1)*(1)* (kbinMisPDUB_p* x(17) * x(9) ) + (1)*(1)* (kactDUB_p* x(31) ) );
	
//x(31)   ID: E3_MisP_Ub5_DUB  initialValue: 100
	(1/compartment_cytosol)*( (-1)*(1)* (kactDUB_p* x(31) ) + (-1)*(1)* (kigrowth2_p* x(31) * x(40) ) + (1)*(1)* (kbinMisPDUB_p* x(18) * x(9) ) + (1)*(1)* (kactDUB_p* x(32) ) );
	
//x(32)   ID: E3_MisP_Ub6_DUB  initialValue: 100
	(1/compartment_cytosol)*( (-1)*(1)* (kactDUB_p* x(32) ) + (-1)*(1)* (kigrowth2_p* x(32) * x(40) ) + (1)*(1)* (kbinMisPDUB_p* x(19) * x(9) ) + (1)*(1)* (kactDUB_p* x(33) ) );
	
//x(33)   ID: E3_MisP_Ub7_DUB  initialValue: 100
	(1/compartment_cytosol)*( (-1)*(1)* (kactDUB_p* x(33) ) + (-1)*(1)* (kigrowth2_p* x(33) * x(40) ) + (1)*(1)* (kbinMisPDUB_p* x(20) * x(9) ) + (1)*(1)* (kactDUB_p* x(34) ) );
	
//x(34)   ID: E3_MisP_Ub8_DUB  initialValue: 100
	(1/compartment_cytosol)*( (-1)*(1)* (kactDUB_p* x(34) ) + (-1)*(1)* (kigrowth2_p* x(34) * x(40) ) + (1)*(1)* (kbinMisPDUB_p* x(21) * x(9) ) );
	
//x(35)   ID: AggP1  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (kagg2_p* x(3) * x(35) ) + (-1)*(1)* (kdisagg1_p* x(35) ) + (-1)*(1)* (kbinAggProt_p* x(35) * x(10) ) + (-1)*(1)* (kgenROSAggP_p* x(35) ) + (1)*(1)* (kagg1_p* x(3) *( x(3) -( 1 ))*( 0.5 )) + (1)*(1)* (kdisagg2_p* x(36) ) + (1)*(1)* (kgenROSAggP_p* x(35) ) );
	
//x(36)   ID: AggP2  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (kagg2_p* x(3) * x(36) ) + (-1)*(1)* (kdisagg2_p* x(36) ) + (-1)*(1)* (kbinAggProt_p* x(36) * x(10) ) + (-1)*(1)* (kgenROSAggP_p* x(36) ) + (1)*(1)* (kagg2_p* x(3) * x(35) ) + (1)*(1)* (kdisagg3_p* x(37) ) + (1)*(1)* (kgenROSAggP_p* x(36) ) );
	
//x(37)   ID: AggP3  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (kagg2_p* x(3) * x(37) ) + (-1)*(1)* (kdisagg3_p* x(37) ) + (-1)*(1)* (kbinAggProt_p* x(37) * x(10) ) + (-1)*(1)* (kgenROSAggP_p* x(37) ) + (1)*(1)* (kagg2_p* x(3) * x(36) ) + (1)*(1)* (kdisagg4_p* x(38) ) + (1)*(1)* (kgenROSAggP_p* x(37) ) );
	
//x(38)   ID: AggP4  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (kagg2_p* x(3) * x(38) ) + (-1)*(1)* (kdisagg4_p* x(38) ) + (-1)*(1)* (kbinAggProt_p* x(38) * x(10) ) + (-1)*(1)* (kgenROSAggP_p* x(38) ) + (1)*(1)* (kagg2_p* x(3) * x(37) ) + (1)*(1)* (kdisagg5_p* x(39) ) + (1)*(1)* (kgenROSAggP_p* x(38) ) );
	
//x(39)   ID: AggP5  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (kdisagg5_p* x(39) ) + (-1)*(1)* (kagg2_p* x(3) * x(39) ) + (-1)*(1)* (kbinAggProt_p* x(39) * x(10) ) + (-1)*(1)* (kgenROSAggP_p* x(39) ) + (1)*(1)* (kagg2_p* x(3) * x(38) ) + (1)*(1)* (kgenROSAggP_p* x(39) ) );
	
//x(40)   ID: SeqAggP  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (kigrowth1_p* x(3) * x(40) ) + (-1)*(1)* (kigrowth2_p* x(8) * x(40) ) + (-1)*(1)* (kigrowth2_p* x(14) * x(40) ) + (-1)*(1)* (kigrowth2_p* x(15) * x(40) ) + (-1)*(1)* (kigrowth2_p* x(16) * x(40) ) + (-1)*(1)* (kigrowth2_p* x(17) * x(40) ) + (-1)*(1)* (kigrowth2_p* x(18) * x(40) ) + (-1)*(1)* (kigrowth2_p* x(19) * x(40) ) + (-1)*(1)* (kigrowth2_p* x(20) * x(40) ) + (-1)*(1)* (kigrowth2_p* x(21) * x(40) ) + (-1)*(1)* (kigrowth2_p* x(27) * x(40) ) + (-1)*(1)* (kigrowth2_p* x(28) * x(40) ) + (-1)*(1)* (kigrowth2_p* x(29) * x(40) ) + (-1)*(1)* (kigrowth2_p* x(30) * x(40) ) + (-1)*(1)* (kigrowth2_p* x(31) * x(40) ) + (-1)*(1)* (kigrowth2_p* x(32) * x(40) ) + (-1)*(1)* (kigrowth2_p* x(33) * x(40) ) + (-1)*(1)* (kigrowth2_p* x(34) * x(40) ) + (-1)*(1)* (kigrowth1_p* x(40) * x(75) ) + (-1)*(1)* (kigrowth1_p* x(40) * x(78) ) + (-1)*(1)* (kigrowth2_p* x(40) * x(80) ) + (-1)*(1)* (kigrowth2_p* x(40) * x(81) ) + (-1)*(1)* (kigrowth2_p* x(40) * x(82) ) + (-1)*(1)* (kigrowth2_p* x(40) * x(83) ) + (-1)*(1)* (kigrowth2_p* x(40) * x(84) ) + (-1)*(1)* (kigrowth2_p* x(40) * x(85) ) + (-1)*(1)* (kigrowth2_p* x(40) * x(86) ) + (-1)*(1)* (kigrowth2_p* x(40) * x(87) ) + (-1)*(1)* (kigrowth2_p* x(40) * x(88) ) + (-1)*(1)* (kigrowth2_p* x(40) * x(89) ) + (-1)*(1)* (kigrowth2_p* x(40) * x(90) ) + (-1)*(1)* (kigrowth2_p* x(40) * x(91) ) + (-1)*(1)* (kigrowth2_p* x(40) * x(92) ) + (-1)*(1)* (kigrowth2_p* x(40) * x(93) ) + (-1)*(1)* (kigrowth2_p* x(40) * x(94) ) + (-1)*(1)* (kigrowth2_p* x(40) * x(95) ) + (-1)*(1)* (kigrowth2_p* x(40) * x(96) ) + (-1)*(1)* (kigrowth1_p* x(40) * x(46) ) + (-1)*(1)* (kigrowth1_p* x(40) * x(48) ) + (-1)*(1)* (kigrowth1_p* x(40) * x(51) ) + (-1)*(1)* (kigrowth2_p* x(53) * x(40) ) + (-1)*(1)* (kigrowth2_p* x(54) * x(40) ) + (-1)*(1)* (kigrowth2_p* x(55) * x(40) ) + (-1)*(1)* (kigrowth2_p* x(56) * x(40) ) + (-1)*(1)* (kigrowth2_p* x(57) * x(40) ) + (-1)*(1)* (kigrowth2_p* x(58) * x(40) ) + (-1)*(1)* (kigrowth2_p* x(59) * x(40) ) + (-1)*(1)* (kigrowth2_p* x(60) * x(40) ) + (-1)*(1)* (kigrowth2_p* x(61) * x(40) ) + (-1)*(1)* (kigrowth2_p* x(62) * x(40) ) + (-1)*(1)* (kigrowth2_p* x(63) * x(40) ) + (-1)*(1)* (kigrowth2_p* x(64) * x(40) ) + (-1)*(1)* (kigrowth2_p* x(65) * x(40) ) + (-1)*(1)* (kigrowth2_p* x(66) * x(40) ) + (-1)*(1)* (kigrowth2_p* x(67) * x(40) ) + (-1)*(1)* (kigrowth2_p* x(68) * x(40) ) + (-1)*(1)* (kigrowth2_p* x(69) * x(40) ) + (1)*(1)* (kagg2_p* x(3) * x(39) ) + (1)*(2)* (kigrowth1_p* x(3) * x(40) ) + (1)*(2)* (kigrowth2_p* x(8) * x(40) ) + (1)*(2)* (kigrowth2_p* x(14) * x(40) ) + (1)*(2)* (kigrowth2_p* x(15) * x(40) ) + (1)*(2)* (kigrowth2_p* x(16) * x(40) ) + (1)*(2)* (kigrowth2_p* x(17) * x(40) ) + (1)*(2)* (kigrowth2_p* x(18) * x(40) ) + (1)*(2)* (kigrowth2_p* x(19) * x(40) ) + (1)*(2)* (kigrowth2_p* x(20) * x(40) ) + (1)*(2)* (kigrowth2_p* x(21) * x(40) ) + (1)*(2)* (kigrowth2_p* x(27) * x(40) ) + (1)*(2)* (kigrowth2_p* x(28) * x(40) ) + (1)*(2)* (kigrowth2_p* x(29) * x(40) ) + (1)*(2)* (kigrowth2_p* x(30) * x(40) ) + (1)*(2)* (kigrowth2_p* x(31) * x(40) ) + (1)*(2)* (kigrowth2_p* x(32) * x(40) ) + (1)*(2)* (kigrowth2_p* x(33) * x(40) ) + (1)*(2)* (kigrowth2_p* x(34) * x(40) ) + (1)*(1)* (kaggasyn2_p* x(75) * x(106) ) + (1)*(2)* (kigrowth1_p* x(40) * x(75) ) + (1)*(1)* (kagg2dam_p* x(78) * x(111) ) + (1)*(2)* (kigrowth1_p* x(40) * x(78) ) + (1)*(2)* (kigrowth2_p* x(40) * x(80) ) + (1)*(2)* (kigrowth2_p* x(40) * x(81) ) + (1)*(2)* (kigrowth2_p* x(40) * x(82) ) + (1)*(2)* (kigrowth2_p* x(40) * x(83) ) + (1)*(2)* (kigrowth2_p* x(40) * x(84) ) + (1)*(2)* (kigrowth2_p* x(40) * x(85) ) + (1)*(2)* (kigrowth2_p* x(40) * x(86) ) + (1)*(2)* (kigrowth2_p* x(40) * x(87) ) + (1)*(2)* (kigrowth2_p* x(40) * x(88) ) + (1)*(2)* (kigrowth2_p* x(40) * x(89) ) + (1)*(2)* (kigrowth2_p* x(40) * x(90) ) + (1)*(2)* (kigrowth2_p* x(40) * x(91) ) + (1)*(2)* (kigrowth2_p* x(40) * x(92) ) + (1)*(2)* (kigrowth2_p* x(40) * x(93) ) + (1)*(2)* (kigrowth2_p* x(40) * x(94) ) + (1)*(2)* (kigrowth2_p* x(40) * x(95) ) + (1)*(2)* (kigrowth2_p* x(40) * x(96) ) + (1)*(1)* (kagg2dam_p* x(46) * x(116) ) + (1)*(2)* (kigrowth1_p* x(40) * x(46) ) + (1)*(2)* (kigrowth1_p* x(40) * x(48) ) + (1)*(1)* (kaggSUB2_p* x(121) * x(51) ) + (1)*(2)* (kigrowth1_p* x(40) * x(51) ) + (1)*(2)* (kigrowth2_p* x(53) * x(40) ) + (1)*(2)* (kigrowth2_p* x(54) * x(40) ) + (1)*(2)* (kigrowth2_p* x(55) * x(40) ) + (1)*(2)* (kigrowth2_p* x(56) * x(40) ) + (1)*(2)* (kigrowth2_p* x(57) * x(40) ) + (1)*(2)* (kigrowth2_p* x(58) * x(40) ) + (1)*(2)* (kigrowth2_p* x(59) * x(40) ) + (1)*(2)* (kigrowth2_p* x(60) * x(40) ) + (1)*(2)* (kigrowth2_p* x(61) * x(40) ) + (1)*(2)* (kigrowth2_p* x(62) * x(40) ) + (1)*(2)* (kigrowth2_p* x(63) * x(40) ) + (1)*(2)* (kigrowth2_p* x(64) * x(40) ) + (1)*(2)* (kigrowth2_p* x(65) * x(40) ) + (1)*(2)* (kigrowth2_p* x(66) * x(40) ) + (1)*(2)* (kigrowth2_p* x(67) * x(40) ) + (1)*(2)* (kigrowth2_p* x(68) * x(40) ) + (1)*(2)* (kigrowth2_p* x(69) * x(40) ) );
	
//x(41)   ID: AggP_Proteasome  initialValue: 0
	(1/compartment_cytosol)*( (1)*(1)* (kbinAggProt_p* x(35) * x(10) ) + (1)*(1)* (kbinAggProt_p* x(36) * x(10) ) + (1)*(1)* (kbinAggProt_p* x(37) * x(10) ) + (1)*(1)* (kbinAggProt_p* x(38) * x(10) ) + (1)*(1)* (kbinAggProt_p* x(39) * x(10) ) + (1)*(1)* (kbinAggProt_p* x(102) * x(10) ) + (1)*(1)* (kbinAggProt_p* x(103) * x(10) ) + (1)*(1)* (kbinAggProt_p* x(104) * x(10) ) + (1)*(1)* (kbinAggProt_p* x(105) * x(10) ) + (1)*(1)* (kbinAggProt_p* x(106) * x(10) ) + (1)*(1)* (kbinAggProt_p* x(107) * x(10) ) + (1)*(1)* (kbinAggProt_p* x(108) * x(10) ) + (1)*(1)* (kbinAggProt_p* x(109) * x(10) ) + (1)*(1)* (kbinAggProt_p* x(110) * x(10) ) + (1)*(1)* (kbinAggProt_p* x(111) * x(10) ) + (1)*(1)* (kbinAggProt_p* x(112) * x(10) ) + (1)*(1)* (kbinAggProt_p* x(113) * x(10) ) + (1)*(1)* (kbinAggProt_p* x(114) * x(10) ) + (1)*(1)* (kbinAggProt_p* x(115) * x(10) ) + (1)*(1)* (kbinAggProt_p* x(116) * x(10) ) + (1)*(1)* (kbinAggProt_p* x(117) * x(10) ) + (1)*(1)* (kbinAggProt_p* x(118) * x(10) ) + (1)*(1)* (kbinAggProt_p* x(119) * x(10) ) + (1)*(1)* (kbinAggProt_p* x(120) * x(10) ) + (1)*(1)* (kbinAggProt_p* x(121) * x(10) ) );
	
//x(42)   ID: UCHL1  initialValue: 5785
	(1/compartment_cytosol)*( (-1)*(1)* (kbinUCHL1Prot_p* x(42) * x(10) ) + (-1)*(1)* (kdegLysUCHL1_p* x(42) * x(45) ) + (-1)*(1)* (kdamUCHL1_p* x(42) * x(11) ) + (-1)*(1)* (kbinUbUCHL1_p* x(4) * x(42) ) + (-1)*(1)* (kbinSUBUCHL1_p* x(54) * x(42) ) + (-1)*(1)* (kbinSUBUCHL1_p* x(55) * x(42) ) + (-1)*(1)* (kbinSUBUCHL1_p* x(56) * x(42) ) + (-1)*(1)* (kbinSUBUCHL1_p* x(57) * x(42) ) + (-1)*(1)* (kbinSUBUCHL1_p* x(58) * x(42) ) + (-1)*(1)* (kbinSUBUCHL1_p* x(59) * x(42) ) + (-1)*(1)* (kbinSUBUCHL1_p* x(60) * x(42) ) + (-1)*(1)* (kbinSUBUCHL1_p* x(61) * x(42) ) + (1)*(1)* (ksynUCHL1_p*Source_s) + (1)*(1)* (krelUbUCHL1_p* x(49) ) + (1)*(1)* (kactUchl1_p* x(62) ) );
	
//x(43)   ID: UCHL1_Proteasome  initialValue: 10
	(1/compartment_cytosol)*( (-1)*(1)* (kdegProtUCHL1_p* x(43) * x(1) ) + (1)*(1)* (kbinUCHL1Prot_p* x(42) * x(10) ) );
	
//x(44)   ID: UCHL1_damaged_Proteasome  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (kdegProtUCHL1_p* x(44) * x(1) ) + (1)*(1)* (kbinUCHL1Prot_p* x(46) * x(10) ) );
	
//x(45)   ID: Lysosome  initialValue: 1200
	(1/compartment_cytosol)*( (-1)*(1)* (kdegLysUCHL1_p* x(42) * x(45) ) + (-1)*(1)* (kdegLysUCHL1dam_p* x(46) * x(45) ) + (1)*(1)* (kdegLysUCHL1_p* x(42) * x(45) ) + (1)*(1)* (kdegLysUCHL1dam_p* x(46) * x(45) ) );
	
//x(46)   ID: UCHL1_damaged  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (kbinUCHL1Prot_p* x(46) * x(10) ) + (-1)*(1)* (kdegLysUCHL1dam_p* x(46) * x(45) ) + (-1)*(1)* (kbinLamp2aUCHL1dam_p* x(46) * x(47) ) + (-1)*(2)* (kagg1dam_p* x(46) *( x(46) -( 1 ))*( 0.5 )) + (-1)*(1)* (kagg2dam_p* x(46) * x(112) ) + (-1)*(1)* (kagg2dam_p* x(46) * x(113) ) + (-1)*(1)* (kagg2dam_p* x(46) * x(114) ) + (-1)*(1)* (kagg2dam_p* x(46) * x(115) ) + (-1)*(1)* (kagg2dam_p* x(46) * x(116) ) + (-1)*(1)* (kigrowth1_p* x(40) * x(46) ) + (1)*(1)* (kdamUCHL1_p* x(42) * x(11) ) + (1)*(1)* (krelLamp2aUCHL1dam_p* x(48) ) + (1)*(1)* (kdisagguchl1dam5_p* x(116) ) + (1)*(1)* (kdisagguchl1dam4_p* x(115) ) + (1)*(1)* (kdisagguchl1dam3_p* x(114) ) + (1)*(1)* (kdisagguchl1dam2_p* x(113) ) + (1)*(2)* (kdisagguchl1dam1_p* x(112) ) );
	
//x(47)   ID: Lamp2a  initialValue: 200
	(1/compartment_cytosol)*( (-1)*(1)* (kbinLamp2aUCHL1dam_p* x(46) * x(47) ) + (-1)*(1)* (kbinasynLamp2a_p* x(75) * x(47) ) + (1)*(1)* (krelLamp2aUCHL1dam_p* x(48) ) + (1)*(1)* (kCMAasyn_p* x(77) ) );
	
//x(48)   ID: Lamp2a_UCHL1_damaged  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (krelLamp2aUCHL1dam_p* x(48) ) + (-1)*(1)* (kigrowth1_p* x(40) * x(48) ) + (1)*(1)* (kbinLamp2aUCHL1dam_p* x(46) * x(47) ) );
	
//x(49)   ID: Ub_UCHL1  initialValue: 500
	(1/compartment_cytosol)*( (-1)*(1)* (krelUbUCHL1_p* x(49) ) + (1)*(1)* (kbinUbUCHL1_p* x(4) * x(42) ) );
	
//x(50)   ID: SUB  initialValue: 815
	(1/compartment_cytosol)*( (-1)*(1)* (kmisfoldSUB_p* x(50) * x(11) ) + (1)*(1)* (ksynSUB_p*Source_s) + (1)*(1)* (krefoldSUB_p* x(51) ) );
	
//x(51)   ID: SUB_misfolded  initialValue: 5
	(1/compartment_cytosol)*( (-1)*(1)* (krefoldSUB_p* x(51) ) + (-1)*(1)* (kbinE3SUB_p* x(51) * x(52) ) + (-1)*(2)* (kaggSUB1_p* x(51) *( x(51) -( 1 ))*( 0.5 )) + (-1)*(1)* (kaggSUB2_p* x(51) * x(117) ) + (-1)*(1)* (kaggSUB2_p* x(51) * x(118) ) + (-1)*(1)* (kaggSUB2_p* x(51) * x(119) ) + (-1)*(1)* (kaggSUB2_p* x(51) * x(120) ) + (-1)*(1)* (kaggSUB2_p* x(121) * x(51) ) + (-1)*(1)* (kigrowth1_p* x(40) * x(51) ) + (1)*(1)* (kmisfoldSUB_p* x(50) * x(11) ) + (1)*(1)* (krelE3SUB_p* x(53) ) + (1)*(1)* (kactDUBProt_p* x(70) * x(9) ) + (1)*(1)* (kdisaggSUB5_p* x(121) ) + (1)*(1)* (kdisaggSUB4_p* x(120) ) + (1)*(1)* (kdisaggSUB3_p* x(119) ) + (1)*(1)* (kdisaggSUB2_p* x(118) ) + (1)*(2)* (kdisaggSUB1_p* x(117) ) );
	
//x(52)   ID: E3SUB  initialValue: 160
	(1/compartment_cytosol)*( (-1)*(1)* (kbinE3SUB_p* x(51) * x(52) ) + (1)*(1)* (krelE3SUB_p* x(53) ) + (1)*(1)* (kbinProt_p* x(57) * x(10) ) + (1)*(1)* (kbinProt_p* x(58) * x(10) ) + (1)*(1)* (kbinProt_p* x(59) * x(10) ) + (1)*(1)* (kbinProt_p* x(60) * x(10) ) + (1)*(1)* (kbinProt_p* x(61) * x(10) ) );
	
//x(53)   ID: E3SUB_SUB_misfolded  initialValue: 5
	(1/compartment_cytosol)*( (-1)*(1)* (krelE3SUB_p* x(53) ) + (-1)*(1)* (kmonoUb_p* x(13) * x(53) ) + (-1)*(1)* (kigrowth2_p* x(53) * x(40) ) + (1)*(1)* (kbinE3SUB_p* x(51) * x(52) ) + (1)*(1)* (kactUchl1_p* x(62) ) );
	
//x(54)   ID: E3SUB_SUB_misfolded_Ub  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (kpolyUb_p* x(54) * x(13) ) + (-1)*(1)* (kbinSUBUCHL1_p* x(54) * x(42) ) + (-1)*(1)* (kigrowth2_p* x(54) * x(40) ) + (1)*(1)* (kmonoUb_p* x(13) * x(53) ) );
	
//x(55)   ID: E3SUB_SUB_misfolded_Ub2  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (kpolyUb_p* x(55) * x(13) ) + (-1)*(1)* (kbinSUBUCHL1_p* x(55) * x(42) ) + (-1)*(1)* (kigrowth2_p* x(55) * x(40) ) + (1)*(1)* (kpolyUb_p* x(54) * x(13) ) );
	
//x(56)   ID: E3SUB_SUB_misfolded_Ub3  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (kpolyUb_p* x(56) * x(13) ) + (-1)*(1)* (kbinSUBUCHL1_p* x(56) * x(42) ) + (-1)*(1)* (kigrowth2_p* x(56) * x(40) ) + (1)*(1)* (kpolyUb_p* x(55) * x(13) ) );
	
//x(57)   ID: E3SUB_SUB_misfolded_Ub4  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (kpolyUb_p* x(57) * x(13) ) + (-1)*(1)* (kbinSUBUCHL1_p* x(57) * x(42) ) + (-1)*(1)* (kbinProt_p* x(57) * x(10) ) + (-1)*(1)* (kigrowth2_p* x(57) * x(40) ) + (1)*(1)* (kpolyUb_p* x(56) * x(13) ) );
	
//x(58)   ID: E3SUB_SUB_misfolded_Ub5  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (kpolyUb_p* x(58) * x(13) ) + (-1)*(1)* (kbinSUBUCHL1_p* x(58) * x(42) ) + (-1)*(1)* (kbinProt_p* x(58) * x(10) ) + (-1)*(1)* (kigrowth2_p* x(58) * x(40) ) + (1)*(1)* (kpolyUb_p* x(57) * x(13) ) );
	
//x(59)   ID: E3SUB_SUB_misfolded_Ub6  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (kpolyUb_p* x(59) * x(13) ) + (-1)*(1)* (kbinSUBUCHL1_p* x(59) * x(42) ) + (-1)*(1)* (kbinProt_p* x(59) * x(10) ) + (-1)*(1)* (kigrowth2_p* x(59) * x(40) ) + (1)*(1)* (kpolyUb_p* x(58) * x(13) ) );
	
//x(60)   ID: E3SUB_SUB_misfolded_Ub7  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (kpolyUb_p* x(60) * x(13) ) + (-1)*(1)* (kbinSUBUCHL1_p* x(60) * x(42) ) + (-1)*(1)* (kbinProt_p* x(60) * x(10) ) + (-1)*(1)* (kigrowth2_p* x(60) * x(40) ) + (1)*(1)* (kpolyUb_p* x(59) * x(13) ) );
	
//x(61)   ID: E3SUB_SUB_misfolded_Ub8  initialValue: 15
	(1/compartment_cytosol)*( (-1)*(1)* (kbinSUBUCHL1_p* x(61) * x(42) ) + (-1)*(1)* (kbinProt_p* x(61) * x(10) ) + (-1)*(1)* (kigrowth2_p* x(61) * x(40) ) + (1)*(1)* (kpolyUb_p* x(60) * x(13) ) );
	
//x(62)   ID: E3SUB_SUB_misfolded_Ub_UCHL1  initialValue: 20
	(1/compartment_cytosol)*( (-1)*(1)* (kactUchl1_p* x(62) ) + (-1)*(1)* (kigrowth2_p* x(62) * x(40) ) + (1)*(1)* (kbinSUBUCHL1_p* x(54) * x(42) ) + (1)*(1)* (kactUchl1_p* x(63) ) );
	
//x(63)   ID: E3SUB_SUB_misfolded_Ub2_UCHL1  initialValue: 20
	(1/compartment_cytosol)*( (-1)*(1)* (kactUchl1_p* x(63) ) + (-1)*(1)* (kigrowth2_p* x(63) * x(40) ) + (1)*(1)* (kbinSUBUCHL1_p* x(55) * x(42) ) + (1)*(1)* (kactUchl1_p* x(64) ) );
	
//x(64)   ID: E3SUB_SUB_misfolded_Ub3_UCHL1  initialValue: 25
	(1/compartment_cytosol)*( (-1)*(1)* (kactUchl1_p* x(64) ) + (-1)*(1)* (kigrowth2_p* x(64) * x(40) ) + (1)*(1)* (kbinSUBUCHL1_p* x(56) * x(42) ) + (1)*(1)* (kactUchl1_p* x(65) ) );
	
//x(65)   ID: E3SUB_SUB_misfolded_Ub4_UCHL1  initialValue: 25
	(1/compartment_cytosol)*( (-1)*(1)* (kactUchl1_p* x(65) ) + (-1)*(1)* (kigrowth2_p* x(65) * x(40) ) + (1)*(1)* (kbinSUBUCHL1_p* x(57) * x(42) ) + (1)*(1)* (kactUchl1_p* x(66) ) );
	
//x(66)   ID: E3SUB_SUB_misfolded_Ub5_UCHL1  initialValue: 30
	(1/compartment_cytosol)*( (-1)*(1)* (kactUchl1_p* x(66) ) + (-1)*(1)* (kigrowth2_p* x(66) * x(40) ) + (1)*(1)* (kbinSUBUCHL1_p* x(58) * x(42) ) + (1)*(1)* (kactUchl1_p* x(67) ) );
	
//x(67)   ID: E3SUB_SUB_misfolded_Ub6_UCHL1  initialValue: 30
	(1/compartment_cytosol)*( (-1)*(1)* (kactUchl1_p* x(67) ) + (-1)*(1)* (kigrowth2_p* x(67) * x(40) ) + (1)*(1)* (kbinSUBUCHL1_p* x(59) * x(42) ) + (1)*(1)* (kactUchl1_p* x(68) ) );
	
//x(68)   ID: E3SUB_SUB_misfolded_Ub7_UCHL1  initialValue: 40
	(1/compartment_cytosol)*( (-1)*(1)* (kactUchl1_p* x(68) ) + (-1)*(1)* (kigrowth2_p* x(68) * x(40) ) + (1)*(1)* (kbinSUBUCHL1_p* x(60) * x(42) ) + (1)*(1)* (kactUchl1_p* x(69) ) );
	
//x(69)   ID: E3SUB_SUB_misfolded_Ub8_UCHL1  initialValue: 40
	(1/compartment_cytosol)*( (-1)*(1)* (kactUchl1_p* x(69) ) + (-1)*(1)* (kigrowth2_p* x(69) * x(40) ) + (1)*(1)* (kbinSUBUCHL1_p* x(61) * x(42) ) );
	
//x(70)   ID: SUB_misfolded_Ub4_Proteasome  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (kactDUBProt_p* x(70) * x(9) ) + (-1)*(1)* ((kactProt_p* x(70) * x(1) *ATP_s)/(( 5000 )+ATP_s)) + (1)*(1)* (kbinProt_p* x(57) * x(10) ) + (1)*(1)* (kactDUBProt_p* x(71) * x(9) ) );
	
//x(71)   ID: SUB_misfolded_Ub5_Proteasome  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (kactDUBProt_p* x(71) * x(9) ) + (-1)*(1)* ((kactProt_p* x(71) * x(1) *ATP_s)/(( 5000 )+ATP_s)) + (1)*(1)* (kbinProt_p* x(58) * x(10) ) + (1)*(1)* (kactDUBProt_p* x(72) * x(9) ) );
	
//x(72)   ID: SUB_misfolded_Ub6_Proteasome  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (kactDUBProt_p* x(72) * x(9) ) + (-1)*(1)* ((kactProt_p* x(72) * x(1) *ATP_s)/(( 5000 )+ATP_s)) + (1)*(1)* (kbinProt_p* x(59) * x(10) ) + (1)*(1)* (kactDUBProt_p* x(73) * x(9) ) );
	
//x(73)   ID: SUB_misfolded_Ub7_Proteasome  initialValue: 5
	(1/compartment_cytosol)*( (-1)*(1)* (kactDUBProt_p* x(73) * x(9) ) + (-1)*(1)* ((kactProt_p* x(73) * x(1) *ATP_s)/(( 5000 )+ATP_s)) + (1)*(1)* (kbinProt_p* x(60) * x(10) ) + (1)*(1)* (kactDUBProt_p* x(74) * x(9) ) );
	
//x(74)   ID: SUB_misfolded_Ub8_Proteasome  initialValue: 20
	(1/compartment_cytosol)*( (-1)*(1)* (kactDUBProt_p* x(74) * x(9) ) + (-1)*(1)* ((kactProt_p* x(74) * x(1) *ATP_s)/(( 5000 )+ATP_s)) + (1)*(1)* (kbinProt_p* x(61) * x(10) ) );
	
//x(75)   ID: asyn  initialValue: 3000
	(1/compartment_cytosol)*( (-1)*(1)* (kbinasynProt_p* x(75) * x(10) ) + (-1)*(1)* (kbinasynLamp2a_p* x(75) * x(47) ) + (-1)*(1)* (kdamasyn_p* x(11) * x(75) ) + (-1)*(2)* (kaggasyn1_p* x(75) *( x(75) -( 1 ))*( 0.5 )) + (-1)*(1)* (kaggasyn2_p* x(75) * x(102) ) + (-1)*(1)* (kaggasyn2_p* x(75) * x(103) ) + (-1)*(1)* (kaggasyn2_p* x(75) * x(104) ) + (-1)*(1)* (kaggasyn2_p* x(75) * x(105) ) + (-1)*(1)* (kaggasyn2_p* x(75) * x(106) ) + (-1)*(1)* (kigrowth1_p* x(40) * x(75) ) + (1)*(1)* (ksynasyn_p*Source_s) + (1)*(1)* (kdisaggasyn5_p* x(106) ) + (1)*(1)* (kdisaggasyn4_p* x(105) ) + (1)*(1)* (kdisaggasyn3_p* x(104) ) + (1)*(1)* (kdisaggasyn2_p* x(103) ) + (1)*(2)* (kdisaggasyn1_p* x(102) ) );
	
//x(76)   ID: asyn_Proteasome  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (kdegasynProt_p* x(1) * x(76) ) + (1)*(1)* (kbinasynProt_p* x(75) * x(10) ) );
	
//x(77)   ID: asyn_Lamp2a  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (kCMAasyn_p* x(77) ) + (1)*(1)* (kbinasynLamp2a_p* x(75) * x(47) ) );
	
//x(78)   ID: asyn_dam  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (kbinasynParkin_p* x(78) * x(79) ) + (-1)*(2)* (kagg1dam_p* x(78) *( x(78) -( 1 ))*( 0.5 )) + (-1)*(1)* (kagg2dam_p* x(78) * x(107) ) + (-1)*(1)* (kagg2dam_p* x(78) * x(108) ) + (-1)*(1)* (kagg2dam_p* x(78) * x(109) ) + (-1)*(1)* (kagg2dam_p* x(78) * x(110) ) + (-1)*(1)* (kagg2dam_p* x(78) * x(111) ) + (-1)*(1)* (kigrowth1_p* x(40) * x(78) ) + (1)*(1)* (kdamasyn_p* x(11) * x(75) ) + (1)*(1)* (krelasynParkin_p* x(80) ) + (1)*(1)* (kactDUBProt_p* x(97) * x(9) ) + (1)*(1)* (kdisaggasyndam5_p* x(111) ) + (1)*(1)* (kdisaggasyndam4_p* x(110) ) + (1)*(1)* (kdisaggasyndam3_p* x(109) ) + (1)*(1)* (kdisaggasyndam2_p* x(108) ) + (1)*(2)* (kdisaggasyndam1_p* x(107) ) );
	
//x(79)   ID: Parkin  initialValue: 4800
	(1/compartment_cytosol)*( (-1)*(1)* (kbinasynParkin_p* x(78) * x(79) ) + (1)*(1)* (krelasynParkin_p* x(80) ) + (1)*(1)* (kbinProt_p* x(84) * x(10) ) + (1)*(1)* (kbinProt_p* x(85) * x(10) ) + (1)*(1)* (kbinProt_p* x(86) * x(10) ) + (1)*(1)* (kbinProt_p* x(87) * x(10) ) + (1)*(1)* (kbinProt_p* x(88) * x(10) ) );
	
//x(80)   ID: Parkin_asyn_dam  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (krelasynParkin_p* x(80) ) + (-1)*(1)* (kmonoUb_p* x(13) * x(80) ) + (-1)*(1)* (kigrowth2_p* x(40) * x(80) ) + (1)*(1)* (kbinasynParkin_p* x(78) * x(79) ) + (1)*(1)* (kactDUB_p* x(89) ) );
	
//x(81)   ID: Parkin_asyn_dam_Ub  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (kpolyUb_p* x(81) * x(13) ) + (-1)*(1)* (kbinasynDUB_p* x(81) * x(9) ) + (-1)*(1)* (kigrowth2_p* x(40) * x(81) ) + (1)*(1)* (kmonoUb_p* x(13) * x(80) ) );
	
//x(82)   ID: Parkin_asyn_dam_Ub2  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (kpolyUb_p* x(82) * x(13) ) + (-1)*(1)* (kbinasynDUB_p* x(82) * x(9) ) + (-1)*(1)* (kigrowth2_p* x(40) * x(82) ) + (1)*(1)* (kpolyUb_p* x(81) * x(13) ) );
	
//x(83)   ID: Parkin_asyn_dam_Ub3  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (kpolyUb_p* x(83) * x(13) ) + (-1)*(1)* (kbinasynDUB_p* x(83) * x(9) ) + (-1)*(1)* (kigrowth2_p* x(40) * x(83) ) + (1)*(1)* (kpolyUb_p* x(82) * x(13) ) );
	
//x(84)   ID: Parkin_asyn_dam_Ub4  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (kpolyUb_p* x(84) * x(13) ) + (-1)*(1)* (kbinasynDUB_p* x(84) * x(9) ) + (-1)*(1)* (kbinProt_p* x(84) * x(10) ) + (-1)*(1)* (kigrowth2_p* x(40) * x(84) ) + (1)*(1)* (kpolyUb_p* x(83) * x(13) ) );
	
//x(85)   ID: Parkin_asyn_dam_Ub5  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (kpolyUb_p* x(85) * x(13) ) + (-1)*(1)* (kbinasynDUB_p* x(85) * x(9) ) + (-1)*(1)* (kbinProt_p* x(85) * x(10) ) + (-1)*(1)* (kigrowth2_p* x(40) * x(85) ) + (1)*(1)* (kpolyUb_p* x(84) * x(13) ) );
	
//x(86)   ID: Parkin_asyn_dam_Ub6  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (kpolyUb_p* x(86) * x(13) ) + (-1)*(1)* (kbinasynDUB_p* x(86) * x(9) ) + (-1)*(1)* (kbinProt_p* x(86) * x(10) ) + (-1)*(1)* (kigrowth2_p* x(40) * x(86) ) + (1)*(1)* (kpolyUb_p* x(85) * x(13) ) );
	
//x(87)   ID: Parkin_asyn_dam_Ub7  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (kpolyUb_p* x(87) * x(13) ) + (-1)*(1)* (kbinasynDUB_p* x(87) * x(9) ) + (-1)*(1)* (kbinProt_p* x(87) * x(10) ) + (-1)*(1)* (kigrowth2_p* x(40) * x(87) ) + (1)*(1)* (kpolyUb_p* x(86) * x(13) ) );
	
//x(88)   ID: Parkin_asyn_dam_Ub8  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (kbinasynDUB_p* x(88) * x(9) ) + (-1)*(1)* (kbinProt_p* x(88) * x(10) ) + (-1)*(1)* (kigrowth2_p* x(40) * x(88) ) + (1)*(1)* (kpolyUb_p* x(87) * x(13) ) );
	
//x(89)   ID: Parkin_asyn_dam_Ub_DUB  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (kactDUB_p* x(89) ) + (-1)*(1)* (kigrowth2_p* x(40) * x(89) ) + (1)*(1)* (kbinasynDUB_p* x(81) * x(9) ) + (1)*(1)* (kactDUB_p* x(90) ) );
	
//x(90)   ID: Parkin_asyn_dam_Ub2_DUB  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (kactDUB_p* x(90) ) + (-1)*(1)* (kigrowth2_p* x(40) * x(90) ) + (1)*(1)* (kbinasynDUB_p* x(82) * x(9) ) + (1)*(1)* (kactDUB_p* x(91) ) );
	
//x(91)   ID: Parkin_asyn_dam_Ub3_DUB  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (kactDUB_p* x(91) ) + (-1)*(1)* (kigrowth2_p* x(40) * x(91) ) + (1)*(1)* (kbinasynDUB_p* x(83) * x(9) ) + (1)*(1)* (kactDUB_p* x(92) ) );
	
//x(92)   ID: Parkin_asyn_dam_Ub4_DUB  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (kactDUB_p* x(92) ) + (-1)*(1)* (kigrowth2_p* x(40) * x(92) ) + (1)*(1)* (kbinasynDUB_p* x(84) * x(9) ) + (1)*(1)* (kactDUB_p* x(93) ) );
	
//x(93)   ID: Parkin_asyn_dam_Ub5_DUB  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (kactDUB_p* x(93) ) + (-1)*(1)* (kigrowth2_p* x(40) * x(93) ) + (1)*(1)* (kbinasynDUB_p* x(85) * x(9) ) + (1)*(1)* (kactDUB_p* x(94) ) );
	
//x(94)   ID: Parkin_asyn_dam_Ub6_DUB  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (kactDUB_p* x(94) ) + (-1)*(1)* (kigrowth2_p* x(40) * x(94) ) + (1)*(1)* (kbinasynDUB_p* x(86) * x(9) ) + (1)*(1)* (kactDUB_p* x(95) ) );
	
//x(95)   ID: Parkin_asyn_dam_Ub7_DUB  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (kactDUB_p* x(95) ) + (-1)*(1)* (kigrowth2_p* x(40) * x(95) ) + (1)*(1)* (kbinasynDUB_p* x(87) * x(9) ) + (1)*(1)* (kactDUB_p* x(96) ) );
	
//x(96)   ID: Parkin_asyn_dam_Ub8_DUB  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (kactDUB_p* x(96) ) + (-1)*(1)* (kigrowth2_p* x(40) * x(96) ) + (1)*(1)* (kbinasynDUB_p* x(88) * x(9) ) );
	
//x(97)   ID: asyn_dam_Ub4_Proteasome  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (kactDUBProt_p* x(97) * x(9) ) + (-1)*(1)* ((kactProt_p* x(1) * x(97) *ATP_s)/(( 5000 )+ATP_s)) + (1)*(1)* (kbinProt_p* x(84) * x(10) ) + (1)*(1)* (kactDUBProt_p* x(98) * x(9) ) );
	
//x(98)   ID: asyn_dam_Ub5_Proteasome  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (kactDUBProt_p* x(98) * x(9) ) + (-1)*(1)* ((kactProt_p* x(1) * x(98) *ATP_s)/(( 5000 )+ATP_s)) + (1)*(1)* (kbinProt_p* x(85) * x(10) ) + (1)*(1)* (kactDUBProt_p* x(99) * x(9) ) );
	
//x(99)   ID: asyn_dam_Ub6_Proteasome  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (kactDUBProt_p* x(99) * x(9) ) + (-1)*(1)* ((kactProt_p* x(1) * x(99) *ATP_s)/(( 5000 )+ATP_s)) + (1)*(1)* (kbinProt_p* x(86) * x(10) ) + (1)*(1)* (kactDUBProt_p* x(100) * x(9) ) );
	
//x(100)   ID: asyn_dam_Ub7_Proteasome  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (kactDUBProt_p* x(100) * x(9) ) + (-1)*(1)* ((kactProt_p* x(1) * x(100) *ATP_s)/(( 5000 )+ATP_s)) + (1)*(1)* (kbinProt_p* x(87) * x(10) ) + (1)*(1)* (kactDUBProt_p* x(101) * x(9) ) );
	
//x(101)   ID: asyn_dam_Ub8_Proteasome  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (kactDUBProt_p* x(101) * x(9) ) + (-1)*(1)* ((kactProt_p* x(1) * x(101) *ATP_s)/(( 5000 )+ATP_s)) + (1)*(1)* (kbinProt_p* x(88) * x(10) ) );
	
//x(102)   ID: AggA1  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (kaggasyn2_p* x(75) * x(102) ) + (-1)*(1)* (kdisaggasyn1_p* x(102) ) + (-1)*(1)* (kbinAggProt_p* x(102) * x(10) ) + (-1)*(1)* (kgenROSAggP_p* x(102) ) + (1)*(1)* (kaggasyn1_p* x(75) *( x(75) -( 1 ))*( 0.5 )) + (1)*(1)* (kdisaggasyn2_p* x(103) ) + (1)*(1)* (kgenROSAggP_p* x(102) ) );
	
//x(103)   ID: AggA2  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (kaggasyn2_p* x(75) * x(103) ) + (-1)*(1)* (kdisaggasyn2_p* x(103) ) + (-1)*(1)* (kbinAggProt_p* x(103) * x(10) ) + (-1)*(1)* (kgenROSAggP_p* x(103) ) + (1)*(1)* (kaggasyn2_p* x(75) * x(102) ) + (1)*(1)* (kdisaggasyn3_p* x(104) ) + (1)*(1)* (kgenROSAggP_p* x(103) ) );
	
//x(104)   ID: AggA3  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (kaggasyn2_p* x(75) * x(104) ) + (-1)*(1)* (kdisaggasyn3_p* x(104) ) + (-1)*(1)* (kbinAggProt_p* x(104) * x(10) ) + (-1)*(1)* (kgenROSAggP_p* x(104) ) + (1)*(1)* (kaggasyn2_p* x(75) * x(103) ) + (1)*(1)* (kdisaggasyn4_p* x(105) ) + (1)*(1)* (kgenROSAggP_p* x(104) ) );
	
//x(105)   ID: AggA4  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (kaggasyn2_p* x(75) * x(105) ) + (-1)*(1)* (kdisaggasyn4_p* x(105) ) + (-1)*(1)* (kbinAggProt_p* x(105) * x(10) ) + (-1)*(1)* (kgenROSAggP_p* x(105) ) + (1)*(1)* (kaggasyn2_p* x(75) * x(104) ) + (1)*(1)* (kdisaggasyn5_p* x(106) ) + (1)*(1)* (kgenROSAggP_p* x(105) ) );
	
//x(106)   ID: AggA5  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (kdisaggasyn5_p* x(106) ) + (-1)*(1)* (kbinAggProt_p* x(106) * x(10) ) + (-1)*(1)* (kaggasyn2_p* x(75) * x(106) ) + (-1)*(1)* (kgenROSAggP_p* x(106) ) + (1)*(1)* (kaggasyn2_p* x(75) * x(105) ) + (1)*(1)* (kgenROSAggP_p* x(106) ) );
	
//x(107)   ID: AggD1  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (kagg2dam_p* x(78) * x(107) ) + (-1)*(1)* (kdisaggasyndam1_p* x(107) ) + (-1)*(1)* (kbinAggProt_p* x(107) * x(10) ) + (-1)*(1)* (kgenROSAggP_p* x(107) ) + (1)*(1)* (kagg1dam_p* x(78) *( x(78) -( 1 ))*( 0.5 )) + (1)*(1)* (kdisaggasyndam2_p* x(108) ) + (1)*(1)* (kgenROSAggP_p* x(107) ) );
	
//x(108)   ID: AggD2  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (kagg2dam_p* x(78) * x(108) ) + (-1)*(1)* (kdisaggasyndam2_p* x(108) ) + (-1)*(1)* (kbinAggProt_p* x(108) * x(10) ) + (-1)*(1)* (kgenROSAggP_p* x(108) ) + (1)*(1)* (kagg2dam_p* x(78) * x(107) ) + (1)*(1)* (kdisaggasyndam3_p* x(109) ) + (1)*(1)* (kgenROSAggP_p* x(108) ) );
	
//x(109)   ID: AggD3  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (kagg2dam_p* x(78) * x(109) ) + (-1)*(1)* (kdisaggasyndam3_p* x(109) ) + (-1)*(1)* (kbinAggProt_p* x(109) * x(10) ) + (-1)*(1)* (kgenROSAggP_p* x(109) ) + (1)*(1)* (kagg2dam_p* x(78) * x(108) ) + (1)*(1)* (kdisaggasyndam4_p* x(110) ) + (1)*(1)* (kgenROSAggP_p* x(109) ) );
	
//x(110)   ID: AggD4  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (kagg2dam_p* x(78) * x(110) ) + (-1)*(1)* (kdisaggasyndam4_p* x(110) ) + (-1)*(1)* (kbinAggProt_p* x(110) * x(10) ) + (-1)*(1)* (kgenROSAggP_p* x(110) ) + (1)*(1)* (kagg2dam_p* x(78) * x(109) ) + (1)*(1)* (kdisaggasyndam5_p* x(111) ) + (1)*(1)* (kgenROSAggP_p* x(110) ) );
	
//x(111)   ID: AggD5  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (kdisaggasyndam5_p* x(111) ) + (-1)*(1)* (kbinAggProt_p* x(111) * x(10) ) + (-1)*(1)* (kagg2dam_p* x(78) * x(111) ) + (-1)*(1)* (kgenROSAggP_p* x(111) ) + (1)*(1)* (kagg2dam_p* x(78) * x(110) ) + (1)*(1)* (kgenROSAggP_p* x(111) ) );
	
//x(112)   ID: AggU1  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (kagg2dam_p* x(46) * x(112) ) + (-1)*(1)* (kdisagguchl1dam1_p* x(112) ) + (-1)*(1)* (kbinAggProt_p* x(112) * x(10) ) + (-1)*(1)* (kgenROSAggP_p* x(112) ) + (1)*(1)* (kagg1dam_p* x(46) *( x(46) -( 1 ))*( 0.5 )) + (1)*(1)* (kdisagguchl1dam2_p* x(113) ) + (1)*(1)* (kgenROSAggP_p* x(112) ) );
	
//x(113)   ID: AggU2  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (kagg2dam_p* x(46) * x(113) ) + (-1)*(1)* (kdisagguchl1dam2_p* x(113) ) + (-1)*(1)* (kbinAggProt_p* x(113) * x(10) ) + (-1)*(1)* (kgenROSAggP_p* x(113) ) + (1)*(1)* (kagg2dam_p* x(46) * x(112) ) + (1)*(1)* (kdisagguchl1dam3_p* x(114) ) + (1)*(1)* (kgenROSAggP_p* x(113) ) );
	
//x(114)   ID: AggU3  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (kagg2dam_p* x(46) * x(114) ) + (-1)*(1)* (kdisagguchl1dam3_p* x(114) ) + (-1)*(1)* (kbinAggProt_p* x(114) * x(10) ) + (-1)*(1)* (kgenROSAggP_p* x(114) ) + (1)*(1)* (kagg2dam_p* x(46) * x(113) ) + (1)*(1)* (kdisagguchl1dam4_p* x(115) ) + (1)*(1)* (kgenROSAggP_p* x(114) ) );
	
//x(115)   ID: AggU4  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (kagg2dam_p* x(46) * x(115) ) + (-1)*(1)* (kdisagguchl1dam4_p* x(115) ) + (-1)*(1)* (kbinAggProt_p* x(115) * x(10) ) + (-1)*(1)* (kgenROSAggP_p* x(115) ) + (1)*(1)* (kagg2dam_p* x(46) * x(114) ) + (1)*(1)* (kdisagguchl1dam5_p* x(116) ) + (1)*(1)* (kgenROSAggP_p* x(115) ) );
	
//x(116)   ID: AggU5  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (kdisagguchl1dam5_p* x(116) ) + (-1)*(1)* (kbinAggProt_p* x(116) * x(10) ) + (-1)*(1)* (kagg2dam_p* x(46) * x(116) ) + (-1)*(1)* (kgenROSAggP_p* x(116) ) + (1)*(1)* (kagg2dam_p* x(46) * x(115) ) + (1)*(1)* (kgenROSAggP_p* x(116) ) );
	
//x(117)   ID: AggS1  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (kaggSUB2_p* x(51) * x(117) ) + (-1)*(1)* (kdisaggSUB1_p* x(117) ) + (-1)*(1)* (kbinAggProt_p* x(117) * x(10) ) + (-1)*(1)* (kgenROSAggP_p* x(117) ) + (1)*(1)* (kaggSUB1_p* x(51) *( x(51) -( 1 ))*( 0.5 )) + (1)*(1)* (kdisaggSUB2_p* x(118) ) + (1)*(1)* (kgenROSAggP_p* x(117) ) );
	
//x(118)   ID: AggS2  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (kaggSUB2_p* x(51) * x(118) ) + (-1)*(1)* (kdisaggSUB2_p* x(118) ) + (-1)*(1)* (kbinAggProt_p* x(118) * x(10) ) + (-1)*(1)* (kgenROSAggP_p* x(118) ) + (1)*(1)* (kaggSUB2_p* x(51) * x(117) ) + (1)*(1)* (kdisaggSUB3_p* x(119) ) + (1)*(1)* (kgenROSAggP_p* x(118) ) );
	
//x(119)   ID: AggS3  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (kaggSUB2_p* x(51) * x(119) ) + (-1)*(1)* (kdisaggSUB3_p* x(119) ) + (-1)*(1)* (kbinAggProt_p* x(119) * x(10) ) + (-1)*(1)* (kgenROSAggP_p* x(119) ) + (1)*(1)* (kaggSUB2_p* x(51) * x(118) ) + (1)*(1)* (kdisaggSUB4_p* x(120) ) + (1)*(1)* (kgenROSAggP_p* x(119) ) );
	
//x(120)   ID: AggS4  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (kaggSUB2_p* x(51) * x(120) ) + (-1)*(1)* (kdisaggSUB4_p* x(120) ) + (-1)*(1)* (kbinAggProt_p* x(120) * x(10) ) + (-1)*(1)* (kgenROSAggP_p* x(120) ) + (1)*(1)* (kaggSUB2_p* x(51) * x(119) ) + (1)*(1)* (kdisaggSUB5_p* x(121) ) + (1)*(1)* (kgenROSAggP_p* x(120) ) );
	
//x(121)   ID: AggS5  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (kdisaggSUB5_p* x(121) ) + (-1)*(1)* (kbinAggProt_p* x(121) * x(10) ) + (-1)*(1)* (kaggSUB2_p* x(121) * x(51) ) + (-1)*(1)* (kgenROSAggP_p* x(121) ) + (1)*(1)* (kaggSUB2_p* x(51) * x(120) ) + (1)*(1)* (kgenROSAggP_p* x(121) ) );
	
//x(122)   ID: aggasyn  initialValue: 0
	(1/compartment_cytosol)*( (1)*(7)* (kaggasyn2_p* x(75) * x(106) ) + (1)*(1)* (kigrowth1_p* x(40) * x(75) ) );
	
//x(123)   ID: aggasyndam  initialValue: 0
	(1/compartment_cytosol)*( (1)*(7)* (kagg2dam_p* x(78) * x(111) ) + (1)*(1)* (kigrowth1_p* x(40) * x(78) ) + (1)*(1)* (kigrowth2_p* x(40) * x(80) ) + (1)*(1)* (kigrowth2_p* x(40) * x(81) ) + (1)*(1)* (kigrowth2_p* x(40) * x(82) ) + (1)*(1)* (kigrowth2_p* x(40) * x(83) ) + (1)*(1)* (kigrowth2_p* x(40) * x(84) ) + (1)*(1)* (kigrowth2_p* x(40) * x(85) ) + (1)*(1)* (kigrowth2_p* x(40) * x(86) ) + (1)*(1)* (kigrowth2_p* x(40) * x(87) ) + (1)*(1)* (kigrowth2_p* x(40) * x(88) ) + (1)*(1)* (kigrowth2_p* x(40) * x(89) ) + (1)*(1)* (kigrowth2_p* x(40) * x(90) ) + (1)*(1)* (kigrowth2_p* x(40) * x(91) ) + (1)*(1)* (kigrowth2_p* x(40) * x(92) ) + (1)*(1)* (kigrowth2_p* x(40) * x(93) ) + (1)*(1)* (kigrowth2_p* x(40) * x(94) ) + (1)*(1)* (kigrowth2_p* x(40) * x(95) ) + (1)*(1)* (kigrowth2_p* x(40) * x(96) ) );
	
//x(124)   ID: aggParkin  initialValue: 0
	(1/compartment_cytosol)*( (1)*(1)* (kigrowth2_p* x(40) * x(80) ) + (1)*(1)* (kigrowth2_p* x(40) * x(81) ) + (1)*(1)* (kigrowth2_p* x(40) * x(82) ) + (1)*(1)* (kigrowth2_p* x(40) * x(83) ) + (1)*(1)* (kigrowth2_p* x(40) * x(84) ) + (1)*(1)* (kigrowth2_p* x(40) * x(85) ) + (1)*(1)* (kigrowth2_p* x(40) * x(86) ) + (1)*(1)* (kigrowth2_p* x(40) * x(87) ) + (1)*(1)* (kigrowth2_p* x(40) * x(88) ) + (1)*(1)* (kigrowth2_p* x(40) * x(89) ) + (1)*(1)* (kigrowth2_p* x(40) * x(90) ) + (1)*(1)* (kigrowth2_p* x(40) * x(91) ) + (1)*(1)* (kigrowth2_p* x(40) * x(92) ) + (1)*(1)* (kigrowth2_p* x(40) * x(93) ) + (1)*(1)* (kigrowth2_p* x(40) * x(94) ) + (1)*(1)* (kigrowth2_p* x(40) * x(95) ) + (1)*(1)* (kigrowth2_p* x(40) * x(96) ) );
	
//x(125)   ID: aggUb  initialValue: 0
	(1/compartment_cytosol)*( (1)*(1)* (kigrowth2_p* x(14) * x(40) ) + (1)*(2)* (kigrowth2_p* x(15) * x(40) ) + (1)*(3)* (kigrowth2_p* x(16) * x(40) ) + (1)*(4)* (kigrowth2_p* x(17) * x(40) ) + (1)*(5)* (kigrowth2_p* x(18) * x(40) ) + (1)*(6)* (kigrowth2_p* x(19) * x(40) ) + (1)*(7)* (kigrowth2_p* x(20) * x(40) ) + (1)*(8)* (kigrowth2_p* x(21) * x(40) ) + (1)*(1)* (kigrowth2_p* x(27) * x(40) ) + (1)*(2)* (kigrowth2_p* x(28) * x(40) ) + (1)*(3)* (kigrowth2_p* x(29) * x(40) ) + (1)*(4)* (kigrowth2_p* x(30) * x(40) ) + (1)*(5)* (kigrowth2_p* x(31) * x(40) ) + (1)*(6)* (kigrowth2_p* x(32) * x(40) ) + (1)*(7)* (kigrowth2_p* x(33) * x(40) ) + (1)*(8)* (kigrowth2_p* x(34) * x(40) ) + (1)*(1)* (kigrowth2_p* x(40) * x(81) ) + (1)*(2)* (kigrowth2_p* x(40) * x(82) ) + (1)*(3)* (kigrowth2_p* x(40) * x(83) ) + (1)*(4)* (kigrowth2_p* x(40) * x(84) ) + (1)*(5)* (kigrowth2_p* x(40) * x(85) ) + (1)*(6)* (kigrowth2_p* x(40) * x(86) ) + (1)*(7)* (kigrowth2_p* x(40) * x(87) ) + (1)*(8)* (kigrowth2_p* x(40) * x(88) ) + (1)*(1)* (kigrowth2_p* x(40) * x(89) ) + (1)*(2)* (kigrowth2_p* x(40) * x(90) ) + (1)*(3)* (kigrowth2_p* x(40) * x(91) ) + (1)*(4)* (kigrowth2_p* x(40) * x(92) ) + (1)*(5)* (kigrowth2_p* x(40) * x(93) ) + (1)*(6)* (kigrowth2_p* x(40) * x(94) ) + (1)*(7)* (kigrowth2_p* x(40) * x(95) ) + (1)*(8)* (kigrowth2_p* x(40) * x(96) ) + (1)*(1)* (kigrowth2_p* x(54) * x(40) ) + (1)*(2)* (kigrowth2_p* x(55) * x(40) ) + (1)*(3)* (kigrowth2_p* x(56) * x(40) ) + (1)*(4)* (kigrowth2_p* x(57) * x(40) ) + (1)*(5)* (kigrowth2_p* x(58) * x(40) ) + (1)*(6)* (kigrowth2_p* x(59) * x(40) ) + (1)*(7)* (kigrowth2_p* x(60) * x(40) ) + (1)*(8)* (kigrowth2_p* x(61) * x(40) ) + (1)*(1)* (kigrowth2_p* x(62) * x(40) ) + (1)*(2)* (kigrowth2_p* x(63) * x(40) ) + (1)*(3)* (kigrowth2_p* x(64) * x(40) ) + (1)*(4)* (kigrowth2_p* x(65) * x(40) ) + (1)*(5)* (kigrowth2_p* x(66) * x(40) ) + (1)*(6)* (kigrowth2_p* x(67) * x(40) ) + (1)*(7)* (kigrowth2_p* x(68) * x(40) ) + (1)*(8)* (kigrowth2_p* x(69) * x(40) ) );
	
//x(126)   ID: aggE3  initialValue: 0
	(1/compartment_cytosol)*( (1)*(1)* (kigrowth2_p* x(8) * x(40) ) + (1)*(1)* (kigrowth2_p* x(14) * x(40) ) + (1)*(1)* (kigrowth2_p* x(15) * x(40) ) + (1)*(1)* (kigrowth2_p* x(16) * x(40) ) + (1)*(1)* (kigrowth2_p* x(17) * x(40) ) + (1)*(1)* (kigrowth2_p* x(18) * x(40) ) + (1)*(1)* (kigrowth2_p* x(19) * x(40) ) + (1)*(1)* (kigrowth2_p* x(20) * x(40) ) + (1)*(1)* (kigrowth2_p* x(21) * x(40) ) + (1)*(1)* (kigrowth2_p* x(27) * x(40) ) + (1)*(1)* (kigrowth2_p* x(28) * x(40) ) + (1)*(1)* (kigrowth2_p* x(29) * x(40) ) + (1)*(1)* (kigrowth2_p* x(30) * x(40) ) + (1)*(1)* (kigrowth2_p* x(31) * x(40) ) + (1)*(1)* (kigrowth2_p* x(32) * x(40) ) + (1)*(1)* (kigrowth2_p* x(33) * x(40) ) + (1)*(1)* (kigrowth2_p* x(34) * x(40) ) );
	
//x(127)   ID: aggDUB  initialValue: 0
	(1/compartment_cytosol)*( (1)*(1)* (kigrowth2_p* x(27) * x(40) ) + (1)*(1)* (kigrowth2_p* x(28) * x(40) ) + (1)*(1)* (kigrowth2_p* x(29) * x(40) ) + (1)*(1)* (kigrowth2_p* x(30) * x(40) ) + (1)*(1)* (kigrowth2_p* x(31) * x(40) ) + (1)*(1)* (kigrowth2_p* x(32) * x(40) ) + (1)*(1)* (kigrowth2_p* x(33) * x(40) ) + (1)*(1)* (kigrowth2_p* x(34) * x(40) ) );
	
//x(128)   ID: aggMisP  initialValue: 0
	(1/compartment_cytosol)*( (1)*(7)* (kagg2_p* x(3) * x(39) ) + (1)*(1)* (kigrowth1_p* x(3) * x(40) ) + (1)*(1)* (kigrowth2_p* x(8) * x(40) ) + (1)*(1)* (kigrowth2_p* x(14) * x(40) ) + (1)*(1)* (kigrowth2_p* x(15) * x(40) ) + (1)*(1)* (kigrowth2_p* x(16) * x(40) ) + (1)*(1)* (kigrowth2_p* x(17) * x(40) ) + (1)*(1)* (kigrowth2_p* x(18) * x(40) ) + (1)*(1)* (kigrowth2_p* x(19) * x(40) ) + (1)*(1)* (kigrowth2_p* x(20) * x(40) ) + (1)*(1)* (kigrowth2_p* x(27) * x(40) ) + (1)*(1)* (kigrowth2_p* x(28) * x(40) ) + (1)*(1)* (kigrowth2_p* x(29) * x(40) ) + (1)*(1)* (kigrowth2_p* x(30) * x(40) ) + (1)*(1)* (kigrowth2_p* x(31) * x(40) ) + (1)*(1)* (kigrowth2_p* x(32) * x(40) ) + (1)*(1)* (kigrowth2_p* x(33) * x(40) ) + (1)*(1)* (kigrowth2_p* x(34) * x(40) ) );
	
//x(129)   ID: aggUchl1  initialValue: 0
	(1/compartment_cytosol)*( (1)*(1)* (kigrowth2_p* x(62) * x(40) ) + (1)*(1)* (kigrowth2_p* x(63) * x(40) ) + (1)*(1)* (kigrowth2_p* x(64) * x(40) ) + (1)*(1)* (kigrowth2_p* x(65) * x(40) ) + (1)*(1)* (kigrowth2_p* x(66) * x(40) ) + (1)*(1)* (kigrowth2_p* x(67) * x(40) ) + (1)*(1)* (kigrowth2_p* x(68) * x(40) ) + (1)*(1)* (kigrowth2_p* x(69) * x(40) ) );
	
//x(130)   ID: aggUchl1dam  initialValue: 0
	(1/compartment_cytosol)*( (1)*(7)* (kagg2dam_p* x(46) * x(116) ) + (1)*(1)* (kigrowth1_p* x(40) * x(46) ) + (1)*(1)* (kigrowth1_p* x(40) * x(48) ) );
	
//x(131)   ID: aggSUB  initialValue: 0
	(1/compartment_cytosol)*( (1)*(7)* (kaggSUB2_p* x(121) * x(51) ) + (1)*(1)* (kigrowth1_p* x(40) * x(51) ) + (1)*(1)* (kigrowth2_p* x(53) * x(40) ) + (1)*(1)* (kigrowth2_p* x(54) * x(40) ) + (1)*(1)* (kigrowth2_p* x(55) * x(40) ) + (1)*(1)* (kigrowth2_p* x(56) * x(40) ) + (1)*(1)* (kigrowth2_p* x(57) * x(40) ) + (1)*(1)* (kigrowth2_p* x(58) * x(40) ) + (1)*(1)* (kigrowth2_p* x(59) * x(40) ) + (1)*(1)* (kigrowth2_p* x(60) * x(40) ) + (1)*(1)* (kigrowth2_p* x(61) * x(40) ) + (1)*(1)* (kigrowth2_p* x(62) * x(40) ) + (1)*(1)* (kigrowth2_p* x(63) * x(40) ) + (1)*(1)* (kigrowth2_p* x(64) * x(40) ) + (1)*(1)* (kigrowth2_p* x(65) * x(40) ) + (1)*(1)* (kigrowth2_p* x(66) * x(40) ) + (1)*(1)* (kigrowth2_p* x(67) * x(40) ) + (1)*(1)* (kigrowth2_p* x(68) * x(40) ) + (1)*(1)* (kigrowth2_p* x(69) * x(40) ) );
	
//x(132)   ID: upregUb  initialValue: 0
	(1/compartment_cytosol)*( (1)*(3)* (kubss_p*((power( x(3) ,( 6 )))/((power(( 1500 ),( 6 )))+(power( x(3) ,( 6 )))))) )
	];


	
endfunction
        x0=[1;6000;80;1500;105;50;300;2;160;1500;10;795;950;0;0;0;0;0;0;0;300;0;1;2;10;350;100;100;100;100;100;100;100;100;0;0;0;0;0;0;0;5785;10;0;1200;0;200;0;500;815;5;160;5;0;0;0;0;0;0;0;15;20;20;25;25;30;30;40;40;0;0;0;5;20;3000;0;0;0;4800;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)' 'x(14)' 'x(15)' 'x(16)' 'x(17)' 'x(18)' 'x(19)' 'x(20)' 'x(21)' 'x(22)' 'x(23)' 'x(24)' 'x(25)' 'x(26)' 'x(27)' 'x(28)' 'x(29)' 'x(30)' 'x(31)' 'x(32)' 'x(33)' 'x(34)' 'x(35)' 'x(36)' 'x(37)' 'x(38)' 'x(39)' 'x(40)' 'x(41)' 'x(42)' 'x(43)' 'x(44)' 'x(45)' 'x(46)' 'x(47)' 'x(48)' 'x(49)' 'x(50)' 'x(51)' 'x(52)' 'x(53)' 'x(54)' 'x(55)' 'x(56)' 'x(57)' 'x(58)' 'x(59)' 'x(60)' 'x(61)' 'x(62)' 'x(63)' 'x(64)' 'x(65)' 'x(66)' 'x(67)' 'x(68)' 'x(69)' 'x(70)' 'x(71)' 'x(72)' 'x(73)' 'x(74)' 'x(75)' 'x(76)' 'x(77)' 'x(78)' 'x(79)' 'x(80)' 'x(81)' 'x(82)' 'x(83)' 'x(84)' 'x(85)' 'x(86)' 'x(87)' 'x(88)' 'x(89)' 'x(90)' 'x(91)' 'x(92)' 'x(93)' 'x(94)' 'x(95)' 'x(96)' 'x(97)' 'x(98)' 'x(99)' 'x(100)' 'x(101)' 'x(102)' 'x(103)' 'x(104)' 'x(105)' 'x(106)' 'x(107)' 'x(108)' 'x(109)' 'x(110)' 'x(111)' 'x(112)' 'x(113)' 'x(114)' 'x(115)' 'x(116)' 'x(117)' 'x(118)' 'x(119)' 'x(120)' 'x(121)' 'x(122)' 'x(123)' 'x(124)' 'x(125)' 'x(126)' 'x(127)' 'x(128)' 'x(129)' 'x(130)' 'x(131)' 'x(132)'],[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18;19;20;21;22;23;24;25;26;27;28;29;30;31;32;33;34;35;36;37;38;39;40;41;42;43;44;45;46;47;48;49;50;51;52;53;54;55;56;57;58;59;60;61;62;63;64;65;66;67;68;69;70;71;72;73;74;75;76;77;78;79;80;81;82;83;84;85;86;87;88;89;90;91;92;93;94;95;96;97;98;99;100;101;102;103;104;105;106;107;108;109;110;111;112;113;114;115;116;117;118;119;120;121;122;123;124;125;126;127;128;129;130;131;132])

//real_variable:
	
	
//x(1)   id: kproteff  initialValue: 1
	
//x(2)   id: NatP  initialValue: 6000
	
//x(3)   id: MisP  initialValue: 80
	
//x(4)   id: Ub  initialValue: 1500
	
//x(5)   id: E1  initialValue: 105
	
//x(6)   id: E2  initialValue: 50
	
//x(7)   id: E3  initialValue: 300
	
//x(8)   id: E3_MisP  initialValue: 2
	
//x(9)   id: DUB  initialValue: 160
	
//x(10)   id: Proteasome  initialValue: 1500
	
//x(11)   id: ROS  initialValue: 10
	
//x(12)   id: E1_Ub  initialValue: 795
	
//x(13)   id: E2_Ub  initialValue: 950
	
//x(14)   id: E3_MisP_Ub  initialValue: 0
	
//x(15)   id: E3_MisP_Ub2  initialValue: 0
	
//x(16)   id: E3_MisP_Ub3  initialValue: 0
	
//x(17)   id: E3_MisP_Ub4  initialValue: 0
	
//x(18)   id: E3_MisP_Ub5  initialValue: 0
	
//x(19)   id: E3_MisP_Ub6  initialValue: 0
	
//x(20)   id: E3_MisP_Ub7  initialValue: 0
	
//x(21)   id: E3_MisP_Ub8  initialValue: 300
	
//x(22)   id: MisP_Ub4_Proteasome  initialValue: 0
	
//x(23)   id: MisP_Ub5_Proteasome  initialValue: 1
	
//x(24)   id: MisP_Ub6_Proteasome  initialValue: 2
	
//x(25)   id: MisP_Ub7_Proteasome  initialValue: 10
	
//x(26)   id: MisP_Ub8_Proteasome  initialValue: 350
	
//x(27)   id: E3_MisP_Ub_DUB  initialValue: 100
	
//x(28)   id: E3_MisP_Ub2_DUB  initialValue: 100
	
//x(29)   id: E3_MisP_Ub3_DUB  initialValue: 100
	
//x(30)   id: E3_MisP_Ub4_DUB  initialValue: 100
	
//x(31)   id: E3_MisP_Ub5_DUB  initialValue: 100
	
//x(32)   id: E3_MisP_Ub6_DUB  initialValue: 100
	
//x(33)   id: E3_MisP_Ub7_DUB  initialValue: 100
	
//x(34)   id: E3_MisP_Ub8_DUB  initialValue: 100
	
//x(35)   id: AggP1  initialValue: 0
	
//x(36)   id: AggP2  initialValue: 0
	
//x(37)   id: AggP3  initialValue: 0
	
//x(38)   id: AggP4  initialValue: 0
	
//x(39)   id: AggP5  initialValue: 0
	
//x(40)   id: SeqAggP  initialValue: 0
	
//x(41)   id: AggP_Proteasome  initialValue: 0
	
//x(42)   id: UCHL1  initialValue: 5785
	
//x(43)   id: UCHL1_Proteasome  initialValue: 10
	
//x(44)   id: UCHL1_damaged_Proteasome  initialValue: 0
	
//x(45)   id: Lysosome  initialValue: 1200
	
//x(46)   id: UCHL1_damaged  initialValue: 0
	
//x(47)   id: Lamp2a  initialValue: 200
	
//x(48)   id: Lamp2a_UCHL1_damaged  initialValue: 0
	
//x(49)   id: Ub_UCHL1  initialValue: 500
	
//x(50)   id: SUB  initialValue: 815
	
//x(51)   id: SUB_misfolded  initialValue: 5
	
//x(52)   id: E3SUB  initialValue: 160
	
//x(53)   id: E3SUB_SUB_misfolded  initialValue: 5
	
//x(54)   id: E3SUB_SUB_misfolded_Ub  initialValue: 0
	
//x(55)   id: E3SUB_SUB_misfolded_Ub2  initialValue: 0
	
//x(56)   id: E3SUB_SUB_misfolded_Ub3  initialValue: 0
	
//x(57)   id: E3SUB_SUB_misfolded_Ub4  initialValue: 0
	
//x(58)   id: E3SUB_SUB_misfolded_Ub5  initialValue: 0
	
//x(59)   id: E3SUB_SUB_misfolded_Ub6  initialValue: 0
	
//x(60)   id: E3SUB_SUB_misfolded_Ub7  initialValue: 0
	
//x(61)   id: E3SUB_SUB_misfolded_Ub8  initialValue: 15
	
//x(62)   id: E3SUB_SUB_misfolded_Ub_UCHL1  initialValue: 20
	
//x(63)   id: E3SUB_SUB_misfolded_Ub2_UCHL1  initialValue: 20
	
//x(64)   id: E3SUB_SUB_misfolded_Ub3_UCHL1  initialValue: 25
	
//x(65)   id: E3SUB_SUB_misfolded_Ub4_UCHL1  initialValue: 25
	
//x(66)   id: E3SUB_SUB_misfolded_Ub5_UCHL1  initialValue: 30
	
//x(67)   id: E3SUB_SUB_misfolded_Ub6_UCHL1  initialValue: 30
	
//x(68)   id: E3SUB_SUB_misfolded_Ub7_UCHL1  initialValue: 40
	
//x(69)   id: E3SUB_SUB_misfolded_Ub8_UCHL1  initialValue: 40
	
//x(70)   id: SUB_misfolded_Ub4_Proteasome  initialValue: 0
	
//x(71)   id: SUB_misfolded_Ub5_Proteasome  initialValue: 0
	
//x(72)   id: SUB_misfolded_Ub6_Proteasome  initialValue: 0
	
//x(73)   id: SUB_misfolded_Ub7_Proteasome  initialValue: 5
	
//x(74)   id: SUB_misfolded_Ub8_Proteasome  initialValue: 20
	
//x(75)   id: asyn  initialValue: 3000
	
//x(76)   id: asyn_Proteasome  initialValue: 0
	
//x(77)   id: asyn_Lamp2a  initialValue: 0
	
//x(78)   id: asyn_dam  initialValue: 0
	
//x(79)   id: Parkin  initialValue: 4800
	
//x(80)   id: Parkin_asyn_dam  initialValue: 0
	
//x(81)   id: Parkin_asyn_dam_Ub  initialValue: 0
	
//x(82)   id: Parkin_asyn_dam_Ub2  initialValue: 0
	
//x(83)   id: Parkin_asyn_dam_Ub3  initialValue: 0
	
//x(84)   id: Parkin_asyn_dam_Ub4  initialValue: 0
	
//x(85)   id: Parkin_asyn_dam_Ub5  initialValue: 0
	
//x(86)   id: Parkin_asyn_dam_Ub6  initialValue: 0
	
//x(87)   id: Parkin_asyn_dam_Ub7  initialValue: 0
	
//x(88)   id: Parkin_asyn_dam_Ub8  initialValue: 0
	
//x(89)   id: Parkin_asyn_dam_Ub_DUB  initialValue: 0
	
//x(90)   id: Parkin_asyn_dam_Ub2_DUB  initialValue: 0
	
//x(91)   id: Parkin_asyn_dam_Ub3_DUB  initialValue: 0
	
//x(92)   id: Parkin_asyn_dam_Ub4_DUB  initialValue: 0
	
//x(93)   id: Parkin_asyn_dam_Ub5_DUB  initialValue: 0
	
//x(94)   id: Parkin_asyn_dam_Ub6_DUB  initialValue: 0
	
//x(95)   id: Parkin_asyn_dam_Ub7_DUB  initialValue: 0
	
//x(96)   id: Parkin_asyn_dam_Ub8_DUB  initialValue: 0
	
//x(97)   id: asyn_dam_Ub4_Proteasome  initialValue: 0
	
//x(98)   id: asyn_dam_Ub5_Proteasome  initialValue: 0
	
//x(99)   id: asyn_dam_Ub6_Proteasome  initialValue: 0
	
//x(100)   id: asyn_dam_Ub7_Proteasome  initialValue: 0
	
//x(101)   id: asyn_dam_Ub8_Proteasome  initialValue: 0
	
//x(102)   id: AggA1  initialValue: 0
	
//x(103)   id: AggA2  initialValue: 0
	
//x(104)   id: AggA3  initialValue: 0
	
//x(105)   id: AggA4  initialValue: 0
	
//x(106)   id: AggA5  initialValue: 0
	
//x(107)   id: AggD1  initialValue: 0
	
//x(108)   id: AggD2  initialValue: 0
	
//x(109)   id: AggD3  initialValue: 0
	
//x(110)   id: AggD4  initialValue: 0
	
//x(111)   id: AggD5  initialValue: 0
	
//x(112)   id: AggU1  initialValue: 0
	
//x(113)   id: AggU2  initialValue: 0
	
//x(114)   id: AggU3  initialValue: 0
	
//x(115)   id: AggU4  initialValue: 0
	
//x(116)   id: AggU5  initialValue: 0
	
//x(117)   id: AggS1  initialValue: 0
	
//x(118)   id: AggS2  initialValue: 0
	
//x(119)   id: AggS3  initialValue: 0
	
//x(120)   id: AggS4  initialValue: 0
	
//x(121)   id: AggS5  initialValue: 0
	
//x(122)   id: aggasyn  initialValue: 0
	
//x(123)   id: aggasyndam  initialValue: 0
	
//x(124)   id: aggParkin  initialValue: 0
	
//x(125)   id: aggUb  initialValue: 0
	
//x(126)   id: aggE3  initialValue: 0
	
//x(127)   id: aggDUB  initialValue: 0
	
//x(128)   id: aggMisP  initialValue: 0
	
//x(129)   id: aggUchl1  initialValue: 0
	
//x(130)   id: aggUchl1dam  initialValue: 0
	
//x(131)   id: aggSUB  initialValue: 0
	
//x(132)   id: upregUb  initialValue: 0