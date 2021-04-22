
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_cytoplasm   id: cytoplasm
	compartment_cytoplasm=1;
		
// compartment_nucleus   id: nucleus
	compartment_nucleus=1;
		
// compartment_membrane   id: membrane
	compartment_membrane=1;
		
// compartment_ecm   id: ecm
	compartment_ecm=1;
		
// kactMMP13mmp3_p   id: kactMMP13mmp3
	kactMMP13mmp3_p=5E-8;
		
// kactMMP1mat_p   id: kactMMP1mat
	kactMMP1mat_p=1E-9;
		
// kactMMP1mmp3_p   id: kactMMP1mmp3
	kactMMP1mmp3_p=1E-8;
		
// kactMMP3mat_p   id: kactMMP3mat
	kactMMP3mat_p=4E-6;
		
// kAP1activity_p   id: kAP1activity
	kAP1activity_p=1;
		
// kbincFoscJun_p   id: kbincFoscJun
	kbincFoscJun_p=5E-5;
		
// kbinIL1IL1R_p   id: kbinIL1IL1R
	kbinIL1IL1R_p=0.0001;
		
// kbinIL1IL1Ra_p   id: kbinIL1IL1Ra
	kbinIL1IL1Ra_p=0.0001;
		
// kbinIRAK2_p   id: kbinIRAK2
	kbinIRAK2_p=5E-5;
		
// kbinOSMOSMR_p   id: kbinOSMOSMR
	kbinOSMOSMR_p=1E-5;
		
// kbinOSMOSMRa_p   id: kbinOSMOSMRa
	kbinOSMOSMRa_p=0.0001;
		
// kbinSOCS3OSMR_p   id: kbinSOCS3OSMR
	kbinSOCS3OSMR_p=0.005;
		
// kbinSP1TIMP1DNA_p   id: kbinSP1TIMP1DNA
	kbinSP1TIMP1DNA_p=1E-5;
		
// kbinTRAF6_p   id: kbinTRAF6
	kbinTRAF6_p=1E-5;
		
// kcyt2nucSTAT3_p   id: kcyt2nucSTAT3
	kcyt2nucSTAT3_p=0.001;
		
// kdedimercJun_p   id: kdedimercJun
	kdedimercJun_p=0.01;
		
// kdegADAMTS4_p   id: kdegADAMTS4
	kdegADAMTS4_p=5E-5;
		
// kdegADAMTS4mRNA_p   id: kdegADAMTS4mRNA
	kdegADAMTS4mRNA_p=1.4E-5;
		
// kdegAggrecan_p   id: kdegAggrecan
	kdegAggrecan_p=3E-8;
		
// kdegcFos_p   id: kdegcFos
	kdegcFos_p=0.0002;
		
// kdegcFosmRNA_p   id: kdegcFosmRNA
	kdegcFosmRNA_p=0.003;
		
// kdegcJun_p   id: kdegcJun
	kdegcJun_p=0.00013;
		
// kdegcJunmRNA_p   id: kdegcJunmRNA
	kdegcJunmRNA_p=0.003;
		
// kdegCollagen2mmp1_p   id: kdegCollagen2mmp1
	kdegCollagen2mmp1_p=5E-12;
		
// kdegCollagen2mmp13_p   id: kdegCollagen2mmp13
	kdegCollagen2mmp13_p=5E-11;
		
// kdegDUSP16_p   id: kdegDUSP16
	kdegDUSP16_p=0.00013;
		
// kdegIL1_p   id: kdegIL1
	kdegIL1_p=0.0002;
		
// kdegMatriptase_p   id: kdegMatriptase
	kdegMatriptase_p=8E-6;
		
// kdegMKP1_p   id: kdegMKP1
	kdegMKP1_p=0.0001;
		
// kdegMMP1_p   id: kdegMMP1
	kdegMMP1_p=1E-6;
		
// kdegMMP13_p   id: kdegMMP13
	kdegMMP13_p=1E-6;
		
// kdegMMP13mRNA_p   id: kdegMMP13mRNA
	kdegMMP13mRNA_p=6.4E-6;
		
// kdegMMP1mRNA_p   id: kdegMMP1mRNA
	kdegMMP1mRNA_p=6.4E-6;
		
// kdegMMP3_p   id: kdegMMP3
	kdegMMP3_p=1E-6;
		
// kdegMMP3mRNA_p   id: kdegMMP3mRNA
	kdegMMP3mRNA_p=6.4E-6;
		
// kdegOSM_p   id: kdegOSM
	kdegOSM_p=4.8E-5;
		
// kdegPP4_p   id: kdegPP4
	kdegPP4_p=0.0001;
		
// kdegPTPRT_p   id: kdegPTPRT
	kdegPTPRT_p=5E-5;
		
// kdegSOCS3_p   id: kdegSOCS3
	kdegSOCS3_p=0.0008;
		
// kdegSOCS3mRNA_p   id: kdegSOCS3mRNA
	kdegSOCS3mRNA_p=0.0004;
		
// kdegSP1_p   id: kdegSP1
	kdegSP1_p=2E-5;
		
// kdegTIMP1_p   id: kdegTIMP1
	kdegTIMP1_p=2E-5;
		
// kdegTIMP1mRNA_p   id: kdegTIMP1mRNA
	kdegTIMP1mRNA_p=1.4E-5;
		
// kdegTIMP3_p   id: kdegTIMP3
	kdegTIMP3_p=2E-5;
		
// kdegTIMP3mRNA_p   id: kdegTIMP3mRNA
	kdegTIMP3mRNA_p=1.4E-5;
		
// kdephoscFos_p   id: kdephoscFos
	kdephoscFos_p=0.0001;
		
// kdephoscFosDUSP16_p   id: kdephoscFosDUSP16
	kdephoscFosDUSP16_p=0.0001;
		
// kdephoscJun_p   id: kdephoscJun
	kdephoscJun_p=0.01;
		
// kdephosJAK1_p   id: kdephosJAK1
	kdephosJAK1_p=0.0004;
		
// kdephosJAK1PTPRT_p   id: kdephosJAK1PTPRT
	kdephosJAK1PTPRT_p=0.004;
		
// kdephosJNK_p   id: kdephosJNK
	kdephosJNK_p=0.001;
		
// kdephosJNKDUSP16_p   id: kdephosJNKDUSP16
	kdephosJNKDUSP16_p=0.001;
		
// kdephosp38_p   id: kdephosp38
	kdephosp38_p=0.001;
		
// kdephosp38MKP1_p   id: kdephosp38MKP1
	kdephosp38MKP1_p=1E-5;
		
// kdephosSTAT3_p   id: kdephosSTAT3
	kdephosSTAT3_p=1E-5;
		
// kdephosSTAT3nuc_p   id: kdephosSTAT3nuc
	kdephosSTAT3nuc_p=1E-7;
		
// kdephosSTAT3nucPTPRT_p   id: kdephosSTAT3nucPTPRT
	kdephosSTAT3nucPTPRT_p=0.0005;
		
// kdephosSTAT3PTPRT_p   id: kdephosSTAT3PTPRT
	kdephosSTAT3PTPRT_p=0.0008;
		
// kdimercJun_p   id: kdimercJun
	kdimercJun_p=5E-5;
		
// kinhibADAMTS4TIMP1_p   id: kinhibADAMTS4TIMP1
	kinhibADAMTS4TIMP1_p=3E-6;
		
// kinhibADAMTS4TIMP3_p   id: kinhibADAMTS4TIMP3
	kinhibADAMTS4TIMP3_p=0.0005;
		
// kinhibMMP13TIMP1_p   id: kinhibMMP13TIMP1
	kinhibMMP13TIMP1_p=3E-7;
		
// kinhibMMP13TIMP3_p   id: kinhibMMP13TIMP3
	kinhibMMP13TIMP3_p=1E-8;
		
// kinhibMMP1TIMP1_p   id: kinhibMMP1TIMP1
	kinhibMMP1TIMP1_p=3E-7;
		
// kinhibMMP1TIMP3_p   id: kinhibMMP1TIMP3
	kinhibMMP1TIMP3_p=1E-8;
		
// kinhibMMP3TIMP1_p   id: kinhibMMP3TIMP1
	kinhibMMP3TIMP1_p=3E-7;
		
// kinhibMMP3TIMP3_p   id: kinhibMMP3TIMP3
	kinhibMMP3TIMP3_p=1E-8;
		
// kinhibTRAF6_p   id: kinhibTRAF6
	kinhibTRAF6_p=0.5;
		
// knuc2cytSTAT3_p   id: knuc2cytSTAT3
	knuc2cytSTAT3_p=0.001;
		
// kphoscFos_p   id: kphoscFos
	kphoscFos_p=5E-7;
		
// kphoscJun_p   id: kphoscJun
	kphoscJun_p=0.0001;
		
// kphosJAK1_p   id: kphosJAK1
	kphosJAK1_p=1E-5;
		
// kphosJNK_p   id: kphosJNK
	kphosJNK_p=0.0001;
		
// kphosp38_p   id: kphosp38
	kphosp38_p=0.0001;
		
// kphosSTAT3_p   id: kphosSTAT3
	kphosSTAT3_p=0.005;
		
// krelADAMTS4TIMP1_p   id: krelADAMTS4TIMP1
	krelADAMTS4TIMP1_p=0.001;
		
// krelADAMTS4TIMP3_p   id: krelADAMTS4TIMP3
	krelADAMTS4TIMP3_p=0.001;
		
// krelcFoscJun_p   id: krelcFoscJun
	krelcFoscJun_p=4E-5;
		
// krelIL1IL1R_p   id: krelIL1IL1R
	krelIL1IL1R_p=0.001;
		
// krelIL1IL1Ra_p   id: krelIL1IL1Ra
	krelIL1IL1Ra_p=0.0001;
		
// krelIRAK2_p   id: krelIRAK2
	krelIRAK2_p=0.001;
		
// krelMMP1_p   id: krelMMP1
	krelMMP1_p=0.001;
		
// krelMMP13_p   id: krelMMP13
	krelMMP13_p=0.001;
		
// krelMMP13TIMP3_p   id: krelMMP13TIMP3
	krelMMP13TIMP3_p=0.001;
		
// krelMMP1TIMP3_p   id: krelMMP1TIMP3
	krelMMP1TIMP3_p=0.001;
		
// krelMMP3_p   id: krelMMP3
	krelMMP3_p=0.001;
		
// krelMMP3TIMP3_p   id: krelMMP3TIMP3
	krelMMP3TIMP3_p=0.001;
		
// krelOSMOSMR_p   id: krelOSMOSMR
	krelOSMOSMR_p=1E-5;
		
// krelOSMOSMRa_p   id: krelOSMOSMRa
	krelOSMOSMRa_p=1E-5;
		
// krelSOCS3OSMR_p   id: krelSOCS3OSMR
	krelSOCS3OSMR_p=1E-5;
		
// krelSP1TIMP1DNA_p   id: krelSP1TIMP1DNA
	krelSP1TIMP1DNA_p=5E-6;
		
// krelTRAF6_p   id: krelTRAF6
	krelTRAF6_p=0.0001;
		
// krelTRAF6PP4_p   id: krelTRAF6PP4
	krelTRAF6PP4_p=1E-6;
		
// ksynADAMTS4_p   id: ksynADAMTS4
	ksynADAMTS4_p=0.0005;
		
// ksynADAMTS4mRNA_p   id: ksynADAMTS4mRNA
	ksynADAMTS4mRNA_p=0.0005;
		
// ksynADAMTS4mRNAcJun_p   id: ksynADAMTS4mRNAcJun
	ksynADAMTS4mRNAcJun_p=4E-6;
		
// ksynbasalcJunmRNA_p   id: ksynbasalcJunmRNA
	ksynbasalcJunmRNA_p=0.015;
		
// ksynbasalTIMP1mRNA_p   id: ksynbasalTIMP1mRNA
	ksynbasalTIMP1mRNA_p=0.00014;
		
// ksynbasalTIMP3mRNA_p   id: ksynbasalTIMP3mRNA
	ksynbasalTIMP3mRNA_p=0.00028;
		
// ksyncFos_p   id: ksyncFos
	ksyncFos_p=0.001;
		
// ksyncFosmRNA_p   id: ksyncFosmRNA
	ksyncFosmRNA_p=5E-6;
		
// ksyncFosmRNAStat3_p   id: ksyncFosmRNAStat3
	ksyncFosmRNAStat3_p=0.05;
		
// ksyncJun_p   id: ksyncJun
	ksyncJun_p=0.0026;
		
// ksyncJunmRNA_p   id: ksyncJunmRNA
	ksyncJunmRNA_p=0.0125;
		
// ksyncJunmRNAcJun_p   id: ksyncJunmRNAcJun
	ksyncJunmRNAcJun_p=0.005;
		
// ksynDUSP16_p   id: ksynDUSP16
	ksynDUSP16_p=0.005;
		
// ksynDUSP16cJun_p   id: ksynDUSP16cJun
	ksynDUSP16cJun_p=0.0002;
		
// ksynMatriptase_p   id: ksynMatriptase
	ksynMatriptase_p=9E-10;
		
// ksynMKP1_p   id: ksynMKP1
	ksynMKP1_p=2.5E-5;
		
// ksynMKP1cJun_p   id: ksynMKP1cJun
	ksynMKP1cJun_p=1E-6;
		
// ksynMMP1_p   id: ksynMMP1
	ksynMMP1_p=0.00015;
		
// ksynMMP13_p   id: ksynMMP13
	ksynMMP13_p=1.5E-5;
		
// ksynMMP13mRNA_p   id: ksynMMP13mRNA
	ksynMMP13mRNA_p=0.0005;
		
// ksynMMP13mRNAcJun_p   id: ksynMMP13mRNAcJun
	ksynMMP13mRNAcJun_p=2E-5;
		
// ksynMMP1mRNA_p   id: ksynMMP1mRNA
	ksynMMP1mRNA_p=0.005;
		
// ksynMMP1mRNAcJun_p   id: ksynMMP1mRNAcJun
	ksynMMP1mRNAcJun_p=0.0002;
		
// ksynMMP3_p   id: ksynMMP3
	ksynMMP3_p=3E-5;
		
// ksynMMP3mRNA_p   id: ksynMMP3mRNA
	ksynMMP3mRNA_p=0.005;
		
// ksynMMP3mRNAcJun_p   id: ksynMMP3mRNAcJun
	ksynMMP3mRNAcJun_p=0.0002;
		
// ksynPP4_p   id: ksynPP4
	ksynPP4_p=0.005;
		
// ksynPP4cJun_p   id: ksynPP4cJun
	ksynPP4cJun_p=0.0002;
		
// ksynPTPRT_p   id: ksynPTPRT
	ksynPTPRT_p=0.0001;
		
// ksynSOCS3_p   id: ksynSOCS3
	ksynSOCS3_p=0.001;
		
// ksynSOCS3mRNA_p   id: ksynSOCS3mRNA
	ksynSOCS3mRNA_p=0.006;
		
// ksynSP1_p   id: ksynSP1
	ksynSP1_p=2E-5;
		
// ksynTIMP1_p   id: ksynTIMP1
	ksynTIMP1_p=0.0002;
		
// ksynTIMP1mRNA_p   id: ksynTIMP1mRNA
	ksynTIMP1mRNA_p=5E-7;
		
// ksynTIMP1mRNAStat3_p   id: ksynTIMP1mRNAStat3
	ksynTIMP1mRNAStat3_p=4E-5;
		
// ksynTIMP3_p   id: ksynTIMP3
	ksynTIMP3_p=0.0004;
		
// ksynTIMP3mRNA_p   id: ksynTIMP3mRNA
	ksynTIMP3mRNA_p=5E-7;
		
// ksynTIMP3mRNAStat3_p   id: ksynTIMP3mRNAStat3
	ksynTIMP3mRNAStat3_p=4E-5;
		
// Source_s   id: Source
	Source_s=1;
		
// Sink_s   id: Sink
	Sink_s=1;
		



xdot=[
//x(1)   ID: ADAMTS4_mRNA  initialValue: 0
	(1/compartment_cytoplasm)*( (-1)*(1)* (ksynADAMTS4_p* x(1) ) + (-1)*(1)* (kdegADAMTS4mRNA_p* x(1) ) + (1)*(1)* (ksynADAMTS4mRNA_p* x(65) *kAP1activity_p) + (1)*(1)* (ksynADAMTS4mRNAcJun_p* x(68) ) + (1)*(1)* (ksynADAMTS4_p* x(1) ) );
	
//x(2)   ID: cFos  initialValue: 0
	(1/compartment_cytoplasm)*( (-1)*(1)* (kdegcFos_p* x(2) ) + (-1)*(1)* (kphoscFos_p* x(20) * x(2) ) + (1)*(1)* (ksyncFos_p* x(3) ) + (1)*(1)* (kdephoscFos_p* x(66) ) + (1)*(1)* (kdephoscFosDUSP16_p* x(66) * x(6) ) );
	
//x(3)   ID: cFos_mRNA  initialValue: 0
	(1/compartment_cytoplasm)*( (-1)*(1)* (kdegcFosmRNA_p* x(3) ) + (-1)*(1)* (ksyncFos_p* x(3) ) + (1)*(1)* (ksyncFosmRNA_p* x(65) *kAP1activity_p) + (1)*(1)* (ksyncFos_p* x(3) ) + (1)*(1)* (ksyncFosmRNAStat3_p* x(72) ) );
	
//x(4)   ID: cJun  initialValue: 100
	(1/compartment_cytoplasm)*( (-1)*(1)* (kphoscJun_p* x(4) * x(13) ) + (-1)*(1)* (kdegcJun_p* x(4) ) + (1)*(1)* (kdephoscJun_p* x(67) ) + (1)*(1)* (ksyncJun_p* x(5) ) );
	
//x(5)   ID: cJun_mRNA  initialValue: 5
	(1/compartment_cytoplasm)*( (-1)*(1)* (kdegcJunmRNA_p* x(5) ) + (-1)*(1)* (ksyncJun_p* x(5) ) + (1)*(1)* (ksyncJunmRNA_p* x(65) *kAP1activity_p) + (1)*(1)* (ksyncJunmRNAcJun_p* x(68) ) + (1)*(1)* (ksynbasalcJunmRNA_p*Source_s) + (1)*(1)* (ksyncJun_p* x(5) ) );
	
//x(6)   ID: DUSP16  initialValue: 0
	(1/compartment_cytoplasm)*( (-1)*(1)* (kdephosJNKDUSP16_p* x(13) * x(6) ) + (-1)*(1)* (kdegDUSP16_p* x(6) ) + (-1)*(1)* (kdephoscFosDUSP16_p* x(66) * x(6) ) + (1)*(1)* (kdephosJNKDUSP16_p* x(13) * x(6) ) + (1)*(1)* (ksynDUSP16_p* x(65) *kAP1activity_p) + (1)*(1)* (ksynDUSP16cJun_p* x(68) ) + (1)*(1)* (kdephoscFosDUSP16_p* x(66) * x(6) ) );
	
//x(7)   ID: IRAK2  initialValue: 100
	(1/compartment_cytoplasm)*( (-1)*(1)* (kbinIRAK2_p* x(55) * x(7) ) + (1)*(1)* (krelIRAK2_p* x(57) ) + (1)*(1)* (krelTRAF6_p* x(8) ) );
	
//x(8)   ID: IRAK2_TRAF6  initialValue: 0
	(1/compartment_cytoplasm)*( (-1)*(1)* (krelTRAF6_p* x(8) ) + (-1)*(1)* (kphosJNK_p* x(12) * x(8) ) + (-1)*(1)* (kphosp38_p* x(19) * x(8) ) + (-1)*(1)* (kinhibTRAF6_p* x(8) * x(21) ) + (1)*(1)* (kbinTRAF6_p* x(57) * x(32) ) + (1)*(1)* (kphosJNK_p* x(12) * x(8) ) + (1)*(1)* (kphosp38_p* x(19) * x(8) ) + (1)*(1)* (krelTRAF6PP4_p* x(9) ) );
	
//x(9)   ID: IRAK2_TRAF6_PP4  initialValue: 0
	(1/compartment_cytoplasm)*( (-1)*(1)* (krelTRAF6PP4_p* x(9) ) + (1)*(1)* (kinhibTRAF6_p* x(8) * x(21) ) );
	
//x(10)   ID: JAK1  initialValue: 100
	(1/compartment_cytoplasm)*( (-1)*(1)* (kphosJAK1_p* x(10) * x(60) ) + (1)*(1)* (kdephosJAK1_p* x(11) ) + (1)*(1)* (kdephosJAK1PTPRT_p* x(11) * x(25) ) );
	
//x(11)   ID: JAK1_P  initialValue: 0
	(1/compartment_cytoplasm)*( (-1)*(1)* (kdephosJAK1_p* x(11) ) + (-1)*(1)* (kdephosJAK1PTPRT_p* x(11) * x(25) ) + (-1)*(1)* (kphosSTAT3_p* x(28) * x(11) ) + (1)*(1)* (kphosJAK1_p* x(10) * x(60) ) + (1)*(1)* (kphosSTAT3_p* x(28) * x(11) ) );
	
//x(12)   ID: JNK  initialValue: 100
	(1/compartment_cytoplasm)*( (-1)*(1)* (kphosJNK_p* x(12) * x(8) ) + (1)*(1)* (kdephosJNK_p* x(13) ) + (1)*(1)* (kdephosJNKDUSP16_p* x(13) * x(6) ) );
	
//x(13)   ID: JNK_P  initialValue: 0
	(1/compartment_cytoplasm)*( (-1)*(1)* (kdephosJNK_p* x(13) ) + (-1)*(1)* (kdephosJNKDUSP16_p* x(13) * x(6) ) + (-1)*(1)* (kphoscJun_p* x(4) * x(13) ) + (1)*(1)* (kphosJNK_p* x(12) * x(8) ) + (1)*(1)* (kphoscJun_p* x(4) * x(13) ) );
	
//x(14)   ID: Matriptase  initialValue: 100
	(1/compartment_cytoplasm)*( (-1)*(1)* (kactMMP1mat_p* x(22) * x(14) ) + (-1)*(1)* (kactMMP3mat_p* x(23) * x(14) ) + (-1)*(1)* (kdegMatriptase_p* x(14) ) + (1)*(1)* (kactMMP1mat_p* x(22) * x(14) ) + (1)*(1)* (kactMMP3mat_p* x(23) * x(14) ) + (1)*(1)* (ksynMatriptase_p* x(65) *kAP1activity_p) );
	
//x(15)   ID: MKP1  initialValue: 0
	(1/compartment_cytoplasm)*( (-1)*(1)* (kdephosp38MKP1_p* x(20) * x(15) ) + (-1)*(1)* (kdegMKP1_p* x(15) ) + (1)*(1)* (kdephosp38MKP1_p* x(20) * x(15) ) + (1)*(1)* (ksynMKP1_p* x(65) *kAP1activity_p) + (1)*(1)* (ksynMKP1cJun_p* x(68) ) );
	
//x(16)   ID: MMP1_mRNA  initialValue: 0
	(1/compartment_cytoplasm)*( (-1)*(1)* (ksynMMP1_p* x(16) ) + (-1)*(1)* (kdegMMP1mRNA_p* x(16) ) + (1)*(1)* (ksynMMP1mRNA_p* x(65) *kAP1activity_p) + (1)*(1)* (ksynMMP1mRNAcJun_p* x(68) ) + (1)*(1)* (ksynMMP1_p* x(16) ) );
	
//x(17)   ID: MMP3_mRNA  initialValue: 0
	(1/compartment_cytoplasm)*( (-1)*(1)* (ksynMMP3_p* x(17) ) + (-1)*(1)* (kdegMMP3mRNA_p* x(17) ) + (1)*(1)* (ksynMMP3mRNA_p* x(65) *kAP1activity_p) + (1)*(1)* (ksynMMP3mRNAcJun_p* x(68) ) + (1)*(1)* (ksynMMP3_p* x(17) ) );
	
//x(18)   ID: MMP13_mRNA  initialValue: 0
	(1/compartment_cytoplasm)*( (-1)*(1)* (ksynMMP13_p* x(18) ) + (-1)*(1)* (kdegMMP13mRNA_p* x(18) ) + (1)*(1)* (ksynMMP13mRNA_p* x(65) *kAP1activity_p) + (1)*(1)* (ksynMMP13mRNAcJun_p* x(68) ) + (1)*(1)* (ksynMMP13_p* x(18) ) );
	
//x(19)   ID: p38  initialValue: 100
	(1/compartment_cytoplasm)*( (-1)*(1)* (kphosp38_p* x(19) * x(8) ) + (1)*(1)* (kdephosp38_p* x(20) ) + (1)*(1)* (kdephosp38MKP1_p* x(20) * x(15) ) );
	
//x(20)   ID: p38_P  initialValue: 0
	(1/compartment_cytoplasm)*( (-1)*(1)* (kdephosp38_p* x(20) ) + (-1)*(1)* (kdephosp38MKP1_p* x(20) * x(15) ) + (-1)*(1)* (kphoscFos_p* x(20) * x(2) ) + (1)*(1)* (kphosp38_p* x(19) * x(8) ) + (1)*(1)* (kphoscFos_p* x(20) * x(2) ) );
	
//x(21)   ID: PP4  initialValue: 0
	(1/compartment_cytoplasm)*( (-1)*(1)* (kdegPP4_p* x(21) ) + (-1)*(1)* (kinhibTRAF6_p* x(32) * x(21) ) + (-1)*(1)* (kinhibTRAF6_p* x(8) * x(21) ) + (1)*(1)* (ksynPP4_p* x(65) *kAP1activity_p) + (1)*(1)* (ksynPP4cJun_p* x(68) ) + (1)*(1)* (krelTRAF6PP4_p* x(33) ) + (1)*(1)* (krelTRAF6PP4_p* x(9) ) );
	
//x(22)   ID: proMMP1  initialValue: 0
	(1/compartment_cytoplasm)*( (-1)*(1)* (kactMMP1mat_p* x(22) * x(14) ) + (-1)*(1)* (kactMMP1mmp3_p* x(22) * x(46) ) + (1)*(1)* (ksynMMP1_p* x(16) ) );
	
//x(23)   ID: proMMP3  initialValue: 0
	(1/compartment_cytoplasm)*( (-1)*(1)* (kactMMP3mat_p* x(23) * x(14) ) + (1)*(1)* (ksynMMP3_p* x(17) ) );
	
//x(24)   ID: proMMP13  initialValue: 0
	(1/compartment_cytoplasm)*( (-1)*(1)* (kactMMP13mmp3_p* x(24) * x(46) ) + (1)*(1)* (ksynMMP13_p* x(18) ) );
	
//x(25)   ID: PTPRT  initialValue: 0
	(1/compartment_cytoplasm)*( (-1)*(1)* (kdephosJAK1PTPRT_p* x(11) * x(25) ) + (-1)*(1)* (kdephosSTAT3PTPRT_p* x(29) * x(25) ) + (-1)*(1)* (kdephosSTAT3nucPTPRT_p* x(72) * x(25) ) + (-1)*(1)* (kdegPTPRT_p* x(25) ) + (1)*(1)* (kdephosJAK1PTPRT_p* x(11) * x(25) ) + (1)*(1)* (kdephosSTAT3PTPRT_p* x(29) * x(25) ) + (1)*(1)* (kdephosSTAT3nucPTPRT_p* x(72) * x(25) ) + (1)*(1)* (ksynPTPRT_p* x(72) ) );
	
//x(26)   ID: SOCS3  initialValue: 0
	(1/compartment_cytoplasm)*( (-1)*(1)* (kdegSOCS3_p* x(26) ) + (-1)*(1)* (kbinSOCS3OSMR_p* x(26) * x(63) ) + (1)*(1)* (ksynSOCS3_p* x(27) ) + (1)*(1)* (krelSOCS3OSMR_p* x(62) ) );
	
//x(27)   ID: SOCS3_mRNA  initialValue: 0
	(1/compartment_cytoplasm)*( (-1)*(1)* (kdegSOCS3mRNA_p* x(27) ) + (-1)*(1)* (ksynSOCS3_p* x(27) ) + (1)*(1)* (ksynSOCS3mRNA_p* x(72) ) + (1)*(1)* (ksynSOCS3_p* x(27) ) );
	
//x(28)   ID: STAT3_cyt  initialValue: 100
	(1/compartment_cytoplasm)*( (-1)*(1)* (kphosSTAT3_p* x(28) * x(11) ) + (1)*(1)* (kdephosSTAT3_p* x(29) ) + (1)*(1)* (kdephosSTAT3PTPRT_p* x(29) * x(25) ) + (1)*(1)* (knuc2cytSTAT3_p* x(71) ) );
	
//x(29)   ID: STAT3_P_cyt  initialValue: 0
	(1/compartment_cytoplasm)*( (-1)*(1)* (kdephosSTAT3_p* x(29) ) + (-1)*(1)* (kdephosSTAT3PTPRT_p* x(29) * x(25) ) + (-1)*(1)* (kcyt2nucSTAT3_p* x(29) ) + (1)*(1)* (kphosSTAT3_p* x(28) * x(11) ) );
	
//x(30)   ID: TIMP1_mRNA  initialValue: 20
	(1/compartment_cytoplasm)*( (-1)*(1)* (ksynTIMP1_p* x(30) ) + (-1)*(1)* (kdegTIMP1mRNA_p* x(30) ) + (1)*(1)* (ksynTIMP1_p* x(30) ) + (1)*(1)* (ksynTIMP1mRNAStat3_p* x(72) * x(73) ) + (1)*(1)* (ksynbasalTIMP1mRNA_p* x(73) ) + (1)*(1)* (ksynTIMP1mRNA_p* x(65) * x(73) *kAP1activity_p) );
	
//x(31)   ID: TIMP3_mRNA  initialValue: 20
	(1/compartment_cytoplasm)*( (-1)*(1)* (ksynTIMP3_p* x(31) ) + (-1)*(1)* (kdegTIMP3mRNA_p* x(31) ) + (1)*(1)* (ksynbasalTIMP3mRNA_p*Source_s) + (1)*(1)* (ksynTIMP3mRNA_p* x(65) *kAP1activity_p) + (1)*(1)* (ksynTIMP3mRNAStat3_p* x(72) *kAP1activity_p) + (1)*(1)* (ksynTIMP3_p* x(31) ) );
	
//x(32)   ID: TRAF6  initialValue: 100
	(1/compartment_cytoplasm)*( (-1)*(1)* (kbinTRAF6_p* x(57) * x(32) ) + (-1)*(1)* (kinhibTRAF6_p* x(32) * x(21) ) + (1)*(1)* (krelTRAF6_p* x(8) ) + (1)*(1)* (krelTRAF6PP4_p* x(33) ) );
	
//x(33)   ID: TRAF6_PP4  initialValue: 0
	(1/compartment_cytoplasm)*( (-1)*(1)* (krelTRAF6PP4_p* x(33) ) + (1)*(1)* (kinhibTRAF6_p* x(32) * x(21) ) );
	
//x(34)   ID: ADAMTS4  initialValue: 0
	(1/compartment_ecm)*( (-1)*(1)* (kdegADAMTS4_p* x(34) ) + (-1)*(1)* (kinhibADAMTS4TIMP1_p* x(34) * x(53) ) + (-1)*(1)* (kdegAggrecan_p* x(38) * x(34) ) + (-1)*(1)* (kinhibADAMTS4TIMP3_p* x(54) * x(34) ) + (1)*(1)* (ksynADAMTS4_p* x(1) ) + (1)*(1)* (krelADAMTS4TIMP1_p* x(35) ) + (1)*(1)* (kdegAggrecan_p* x(38) * x(34) ) + (1)*(1)* (krelADAMTS4TIMP3_p* x(36) ) );
	
//x(35)   ID: ADAMTS4_TIMP1  initialValue: 0
	(1/compartment_ecm)*( (-1)*(1)* (krelADAMTS4TIMP1_p* x(35) ) + (1)*(1)* (kinhibADAMTS4TIMP1_p* x(34) * x(53) ) );
	
//x(36)   ID: ADAMTS4_TIMP3  initialValue: 0
	(1/compartment_ecm)*( (-1)*(1)* (krelADAMTS4TIMP3_p* x(36) ) + (1)*(1)* (kinhibADAMTS4TIMP3_p* x(54) * x(34) ) );
	
//x(37)   ID: Aggrecan  initialValue: 0
	0;
	
//x(38)   ID: Aggrecan_Collagen2  initialValue: 100000
	(1/compartment_ecm)*( (-1)*(1)* (kdegAggrecan_p* x(38) * x(34) ) );
	
//x(39)   ID: AggFrag  initialValue: 0
	(1/compartment_ecm)*( (1)*(1)* (kdegAggrecan_p* x(38) * x(34) ) );
	
//x(40)   ID: ColFrag  initialValue: 0
	(1/compartment_ecm)*( (1)*(1)* (kdegCollagen2mmp1_p* x(41) * x(43) ) + (1)*(1)* (kdegCollagen2mmp13_p* x(41) * x(49) ) );
	
//x(41)   ID: Collagen2  initialValue: 0
	(1/compartment_ecm)*( (-1)*(1)* (kdegCollagen2mmp1_p* x(41) * x(43) ) + (-1)*(1)* (kdegCollagen2mmp13_p* x(41) * x(49) ) + (1)*(1)* (kdegAggrecan_p* x(38) * x(34) ) );
	
//x(42)   ID: IL1  initialValue: 100
	(1/compartment_ecm)*( (-1)*(1)* (kbinIL1IL1R_p* x(42) * x(58) ) + (-1)*(1)* (kbinIL1IL1Ra_p* x(42) * x(59) ) + (-1)*(1)* (kdegIL1_p* x(42) ) + (1)*(1)* (krelIL1IL1R_p* x(55) ) + (1)*(1)* (krelIL1IL1Ra_p* x(56) ) );
	
//x(43)   ID: MMP1  initialValue: 0
	(1/compartment_ecm)*( (-1)*(1)* (kdegMMP1_p* x(43) ) + (-1)*(1)* (kinhibMMP1TIMP1_p* x(43) * x(53) ) + (-1)*(1)* (kdegCollagen2mmp1_p* x(41) * x(43) ) + (-1)*(1)* (kinhibMMP1TIMP3_p* x(43) * x(54) ) + (1)*(1)* (kactMMP1mat_p* x(22) * x(14) ) + (1)*(1)* (kactMMP1mmp3_p* x(22) * x(46) ) + (1)*(1)* (krelMMP1_p* x(44) ) + (1)*(1)* (kdegCollagen2mmp1_p* x(41) * x(43) ) + (1)*(1)* (krelMMP1TIMP3_p* x(45) ) );
	
//x(44)   ID: MMP1_TIMP1  initialValue: 0
	(1/compartment_ecm)*( (-1)*(1)* (krelMMP1_p* x(44) ) + (1)*(1)* (kinhibMMP1TIMP1_p* x(43) * x(53) ) );
	
//x(45)   ID: MMP1_TIMP3  initialValue: 0
	(1/compartment_ecm)*( (-1)*(1)* (krelMMP1TIMP3_p* x(45) ) + (1)*(1)* (kinhibMMP1TIMP3_p* x(43) * x(54) ) );
	
//x(46)   ID: MMP3  initialValue: 0
	(1/compartment_ecm)*( (-1)*(1)* (kactMMP1mmp3_p* x(22) * x(46) ) + (-1)*(1)* (kdegMMP3_p* x(46) ) + (-1)*(1)* (kactMMP13mmp3_p* x(24) * x(46) ) + (-1)*(1)* (kinhibMMP3TIMP1_p* x(46) * x(53) ) + (-1)*(1)* (kinhibMMP3TIMP3_p* x(46) * x(54) ) + (1)*(1)* (kactMMP1mmp3_p* x(22) * x(46) ) + (1)*(1)* (kactMMP3mat_p* x(23) * x(14) ) + (1)*(1)* (kactMMP13mmp3_p* x(24) * x(46) ) + (1)*(1)* (krelMMP3_p* x(47) ) + (1)*(1)* (krelMMP3TIMP3_p* x(48) ) );
	
//x(47)   ID: MMP3_TIMP1  initialValue: 0
	(1/compartment_ecm)*( (-1)*(1)* (krelMMP3_p* x(47) ) + (1)*(1)* (kinhibMMP3TIMP1_p* x(46) * x(53) ) );
	
//x(48)   ID: MMP3_TIMP3  initialValue: 0
	(1/compartment_ecm)*( (-1)*(1)* (krelMMP3TIMP3_p* x(48) ) + (1)*(1)* (kinhibMMP3TIMP3_p* x(46) * x(54) ) );
	
//x(49)   ID: MMP13  initialValue: 0
	(1/compartment_ecm)*( (-1)*(1)* (kdegMMP13_p* x(49) ) + (-1)*(1)* (kinhibMMP13TIMP1_p* x(49) * x(53) ) + (-1)*(1)* (kdegCollagen2mmp13_p* x(41) * x(49) ) + (-1)*(1)* (kinhibMMP13TIMP3_p* x(49) * x(54) ) + (1)*(1)* (kactMMP13mmp3_p* x(24) * x(46) ) + (1)*(1)* (krelMMP13_p* x(50) ) + (1)*(1)* (kdegCollagen2mmp13_p* x(41) * x(49) ) + (1)*(1)* (krelMMP13TIMP3_p* x(51) ) );
	
//x(50)   ID: MMP13_TIMP1  initialValue: 0
	(1/compartment_ecm)*( (-1)*(1)* (krelMMP13_p* x(50) ) + (1)*(1)* (kinhibMMP13TIMP1_p* x(49) * x(53) ) );
	
//x(51)   ID: MMP13_TIMP3  initialValue: 0
	(1/compartment_ecm)*( (-1)*(1)* (krelMMP13TIMP3_p* x(51) ) + (1)*(1)* (kinhibMMP13TIMP3_p* x(49) * x(54) ) );
	
//x(52)   ID: OSM  initialValue: 1000
	(1/compartment_ecm)*( (-1)*(1)* (kbinOSMOSMR_p* x(52) * x(63) ) + (-1)*(1)* (kbinOSMOSMRa_p* x(52) * x(64) ) + (-1)*(1)* (kdegOSM_p* x(52) ) + (1)*(1)* (krelOSMOSMR_p* x(60) ) + (1)*(1)* (krelOSMOSMRa_p* x(61) ) );
	
//x(53)   ID: TIMP1  initialValue: 200
	(1/compartment_ecm)*( (-1)*(1)* (kdegTIMP1_p* x(53) ) + (-1)*(1)* (kinhibMMP1TIMP1_p* x(43) * x(53) ) + (-1)*(1)* (kinhibMMP3TIMP1_p* x(46) * x(53) ) + (-1)*(1)* (kinhibMMP13TIMP1_p* x(49) * x(53) ) + (-1)*(1)* (kinhibADAMTS4TIMP1_p* x(34) * x(53) ) + (1)*(1)* (ksynTIMP1_p* x(30) ) + (1)*(1)* (krelMMP1_p* x(44) ) + (1)*(1)* (krelMMP3_p* x(47) ) + (1)*(1)* (krelMMP13_p* x(50) ) + (1)*(1)* (krelADAMTS4TIMP1_p* x(35) ) );
	
//x(54)   ID: TIMP3  initialValue: 200
	(1/compartment_ecm)*( (-1)*(1)* (kdegTIMP3_p* x(54) ) + (-1)*(1)* (kinhibADAMTS4TIMP3_p* x(54) * x(34) ) + (-1)*(1)* (kinhibMMP1TIMP3_p* x(43) * x(54) ) + (-1)*(1)* (kinhibMMP3TIMP3_p* x(46) * x(54) ) + (-1)*(1)* (kinhibMMP13TIMP3_p* x(49) * x(54) ) + (1)*(1)* (ksynTIMP3_p* x(31) ) + (1)*(1)* (krelADAMTS4TIMP3_p* x(36) ) + (1)*(1)* (krelMMP1TIMP3_p* x(45) ) + (1)*(1)* (krelMMP3TIMP3_p* x(48) ) + (1)*(1)* (krelMMP13TIMP3_p* x(51) ) );
	
//x(55)   ID: IL1_IL1R  initialValue: 0
	(1/compartment_membrane)*( (-1)*(1)* (krelIL1IL1R_p* x(55) ) + (-1)*(1)* (kbinIRAK2_p* x(55) * x(7) ) + (1)*(1)* (kbinIL1IL1R_p* x(42) * x(58) ) + (1)*(1)* (krelIRAK2_p* x(57) ) + (1)*(1)* (kbinTRAF6_p* x(57) * x(32) ) );
	
//x(56)   ID: IL1_IL1Ra  initialValue: 0
	(1/compartment_membrane)*( (-1)*(1)* (krelIL1IL1Ra_p* x(56) ) + (1)*(1)* (kbinIL1IL1Ra_p* x(42) * x(59) ) );
	
//x(57)   ID: IL1_IL1R_IRAK2  initialValue: 0
	(1/compartment_membrane)*( (-1)*(1)* (krelIRAK2_p* x(57) ) + (-1)*(1)* (kbinTRAF6_p* x(57) * x(32) ) + (1)*(1)* (kbinIRAK2_p* x(55) * x(7) ) );
	
//x(58)   ID: IL1R  initialValue: 100
	(1/compartment_membrane)*( (-1)*(1)* (kbinIL1IL1R_p* x(42) * x(58) ) + (1)*(1)* (krelIL1IL1R_p* x(55) ) );
	
//x(59)   ID: IL1Ra  initialValue: 0
	(1/compartment_membrane)*( (-1)*(1)* (kbinIL1IL1Ra_p* x(42) * x(59) ) + (1)*(1)* (krelIL1IL1Ra_p* x(56) ) );
	
//x(60)   ID: OSM_OSMR  initialValue: 0
	(1/compartment_membrane)*( (-1)*(1)* (krelOSMOSMR_p* x(60) ) + (-1)*(1)* (kphosJAK1_p* x(10) * x(60) ) + (1)*(1)* (kbinOSMOSMR_p* x(52) * x(63) ) + (1)*(1)* (kphosJAK1_p* x(10) * x(60) ) );
	
//x(61)   ID: OSM_OSMRa  initialValue: 0
	(1/compartment_membrane)*( (-1)*(1)* (krelOSMOSMRa_p* x(61) ) + (1)*(1)* (kbinOSMOSMRa_p* x(52) * x(64) ) );
	
//x(62)   ID: OSMR_SOCS3  initialValue: 0
	(1/compartment_membrane)*( (-1)*(1)* (krelSOCS3OSMR_p* x(62) ) + (1)*(1)* (kbinSOCS3OSMR_p* x(26) * x(63) ) );
	
//x(63)   ID: OSMR  initialValue: 100
	(1/compartment_membrane)*( (-1)*(1)* (kbinOSMOSMR_p* x(52) * x(63) ) + (-1)*(1)* (kbinSOCS3OSMR_p* x(26) * x(63) ) + (1)*(1)* (krelOSMOSMR_p* x(60) ) + (1)*(1)* (krelSOCS3OSMR_p* x(62) ) );
	
//x(64)   ID: OSMRa  initialValue: 0
	(1/compartment_membrane)*( (-1)*(1)* (kbinOSMOSMRa_p* x(52) * x(64) ) + (1)*(1)* (krelOSMOSMRa_p* x(61) ) );
	
//x(65)   ID: cFos_cJun  initialValue: 0
	(1/compartment_nucleus)*( (-1)*(1)* (ksyncJunmRNA_p* x(65) *kAP1activity_p) + (-1)*(1)* (ksynMMP1mRNA_p* x(65) *kAP1activity_p) + (-1)*(1)* (ksynMMP3mRNA_p* x(65) *kAP1activity_p) + (-1)*(1)* (ksynMMP13mRNA_p* x(65) *kAP1activity_p) + (-1)*(1)* (ksynADAMTS4mRNA_p* x(65) *kAP1activity_p) + (-1)*(1)* (ksynPP4_p* x(65) *kAP1activity_p) + (-1)*(1)* (ksynDUSP16_p* x(65) *kAP1activity_p) + (-1)*(1)* (ksyncFosmRNA_p* x(65) *kAP1activity_p) + (-1)*(1)* (ksynMKP1_p* x(65) *kAP1activity_p) + (-1)*(1)* (krelcFoscJun_p* x(65) ) + (-1)*(1)* (ksynMatriptase_p* x(65) *kAP1activity_p) + (-1)*(1)* (ksynSP1_p* x(65) *kAP1activity_p) + (-1)*(1)* (ksynTIMP1mRNA_p* x(65) * x(73) *kAP1activity_p) + (-1)*(1)* (ksynTIMP3mRNA_p* x(65) *kAP1activity_p) + (1)*(1)* (ksyncJunmRNA_p* x(65) *kAP1activity_p) + (1)*(1)* (ksynMMP1mRNA_p* x(65) *kAP1activity_p) + (1)*(1)* (ksynMMP3mRNA_p* x(65) *kAP1activity_p) + (1)*(1)* (ksynMMP13mRNA_p* x(65) *kAP1activity_p) + (1)*(1)* (ksynADAMTS4mRNA_p* x(65) *kAP1activity_p) + (1)*(1)* (ksynPP4_p* x(65) *kAP1activity_p) + (1)*(1)* (ksynDUSP16_p* x(65) *kAP1activity_p) + (1)*(1)* (ksyncFosmRNA_p* x(65) *kAP1activity_p) + (1)*(1)* (ksynMKP1_p* x(65) *kAP1activity_p) + (1)*(1)* (kbincFoscJun_p* x(66) * x(67) ) + (1)*(1)* (ksynMatriptase_p* x(65) *kAP1activity_p) + (1)*(1)* (ksynSP1_p* x(65) *kAP1activity_p) + (1)*(1)* (ksynTIMP1mRNA_p* x(65) * x(73) *kAP1activity_p) + (1)*(1)* (ksynTIMP3mRNA_p* x(65) *kAP1activity_p) );
	
//x(66)   ID: cFos_P  initialValue: 0
	(1/compartment_nucleus)*( (-1)*(1)* (kdephoscFos_p* x(66) ) + (-1)*(1)* (kdephoscFosDUSP16_p* x(66) * x(6) ) + (-1)*(1)* (kbincFoscJun_p* x(66) * x(67) ) + (1)*(1)* (kphoscFos_p* x(20) * x(2) ) + (1)*(1)* (krelcFoscJun_p* x(65) ) );
	
//x(67)   ID: cJun_P  initialValue: 0
	(1/compartment_nucleus)*( (-1)*(1)* (kdephoscJun_p* x(67) ) + (-1)*(2)* (kdimercJun_p* x(67) *( x(67) -( 1 ))*( 0.5 )) + (-1)*(1)* (kbincFoscJun_p* x(66) * x(67) ) + (1)*(1)* (kphoscJun_p* x(4) * x(13) ) + (1)*(2)* (kdedimercJun_p* x(68) ) + (1)*(1)* (krelcFoscJun_p* x(65) ) );
	
//x(68)   ID: cJun_dimer  initialValue: 0
	(1/compartment_nucleus)*( (-1)*(1)* (kdedimercJun_p* x(68) ) + (-1)*(1)* (ksyncJunmRNAcJun_p* x(68) ) + (-1)*(1)* (ksynMMP1mRNAcJun_p* x(68) ) + (-1)*(1)* (ksynMMP3mRNAcJun_p* x(68) ) + (-1)*(1)* (ksynMMP13mRNAcJun_p* x(68) ) + (-1)*(1)* (ksynADAMTS4mRNAcJun_p* x(68) ) + (-1)*(1)* (ksynPP4cJun_p* x(68) ) + (-1)*(1)* (ksynDUSP16cJun_p* x(68) ) + (-1)*(1)* (ksynMKP1cJun_p* x(68) ) + (1)*(1)* (kdimercJun_p* x(67) *( x(67) -( 1 ))*( 0.5 )) + (1)*(1)* (ksyncJunmRNAcJun_p* x(68) ) + (1)*(1)* (ksynMMP1mRNAcJun_p* x(68) ) + (1)*(1)* (ksynMMP3mRNAcJun_p* x(68) ) + (1)*(1)* (ksynMMP13mRNAcJun_p* x(68) ) + (1)*(1)* (ksynADAMTS4mRNAcJun_p* x(68) ) + (1)*(1)* (ksynPP4cJun_p* x(68) ) + (1)*(1)* (ksynDUSP16cJun_p* x(68) ) + (1)*(1)* (ksynMKP1cJun_p* x(68) ) );
	
//x(69)   ID: SP1  initialValue: 0
	(1/compartment_nucleus)*( (-1)*(1)* (kdegSP1_p* x(69) ) + (-1)*(1)* (kbinSP1TIMP1DNA_p* x(69) * x(73) ) + (1)*(1)* (ksynSP1_p* x(65) *kAP1activity_p) + (1)*(1)* (krelSP1TIMP1DNA_p* x(70) ) );
	
//x(70)   ID: SP1_TIMP1_DNA  initialValue: 0
	(1/compartment_nucleus)*( (-1)*(1)* (krelSP1TIMP1DNA_p* x(70) ) + (1)*(1)* (kbinSP1TIMP1DNA_p* x(69) * x(73) ) );
	
//x(71)   ID: STAT3_nuc  initialValue: 0
	(1/compartment_nucleus)*( (-1)*(1)* (knuc2cytSTAT3_p* x(71) ) + (1)*(1)* (kdephosSTAT3nuc_p* x(72) ) + (1)*(1)* (kdephosSTAT3nucPTPRT_p* x(72) * x(25) ) );
	
//x(72)   ID: STAT3_P_nuc  initialValue: 0
	(1/compartment_nucleus)*( (-1)*(1)* (kdephosSTAT3nuc_p* x(72) ) + (-1)*(1)* (kdephosSTAT3nucPTPRT_p* x(72) * x(25) ) + (-1)*(1)* (ksyncFosmRNAStat3_p* x(72) ) + (-1)*(1)* (ksynPTPRT_p* x(72) ) + (-1)*(1)* (ksynSOCS3mRNA_p* x(72) ) + (-1)*(1)* (ksynTIMP1mRNAStat3_p* x(72) * x(73) ) + (-1)*(1)* (ksynTIMP3mRNAStat3_p* x(72) *kAP1activity_p) + (1)*(1)* (kcyt2nucSTAT3_p* x(29) ) + (1)*(1)* (ksyncFosmRNAStat3_p* x(72) ) + (1)*(1)* (ksynPTPRT_p* x(72) ) + (1)*(1)* (ksynSOCS3mRNA_p* x(72) ) + (1)*(1)* (ksynTIMP1mRNAStat3_p* x(72) * x(73) ) + (1)*(1)* (ksynTIMP3mRNAStat3_p* x(72) *kAP1activity_p) );
	
//x(73)   ID: TIMP1_DNA  initialValue: 2
	(1/compartment_nucleus)*( (-1)*(1)* (kbinSP1TIMP1DNA_p* x(69) * x(73) ) + (-1)*(1)* (ksynTIMP1mRNAStat3_p* x(72) * x(73) ) + (-1)*(1)* (ksynbasalTIMP1mRNA_p* x(73) ) + (-1)*(1)* (ksynTIMP1mRNA_p* x(65) * x(73) *kAP1activity_p) + (1)*(1)* (krelSP1TIMP1DNA_p* x(70) ) + (1)*(1)* (ksynTIMP1mRNAStat3_p* x(72) * x(73) ) + (1)*(1)* (ksynbasalTIMP1mRNA_p* x(73) ) + (1)*(1)* (ksynTIMP1mRNA_p* x(65) * x(73) *kAP1activity_p) )
	];


	
endfunction
        x0=[0;0;0;100;5;0;100;0;0;100;0;100;0;100;0;0;0;0;100;0;0;0;0;0;0;0;0;100;0;20;20;100;0;0;0;0;0;100000;0;0;0;100;0;0;0;0;0;0;0;0;0;1000;200;200;0;0;0;100;0;0;0;0;100;0;0;0;0;0;0;0;0;0;2];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)' 'x(14)' 'x(15)' 'x(16)' 'x(17)' 'x(18)' 'x(19)' 'x(20)' 'x(21)' 'x(22)' 'x(23)' 'x(24)' 'x(25)' 'x(26)' 'x(27)' 'x(28)' 'x(29)' 'x(30)' 'x(31)' 'x(32)' 'x(33)' 'x(34)' 'x(35)' 'x(36)' 'x(37)' 'x(38)' 'x(39)' 'x(40)' 'x(41)' 'x(42)' 'x(43)' 'x(44)' 'x(45)' 'x(46)' 'x(47)' 'x(48)' 'x(49)' 'x(50)' 'x(51)' 'x(52)' 'x(53)' 'x(54)' 'x(55)' 'x(56)' 'x(57)' 'x(58)' 'x(59)' 'x(60)' 'x(61)' 'x(62)' 'x(63)' 'x(64)' 'x(65)' 'x(66)' 'x(67)' 'x(68)' 'x(69)' 'x(70)' 'x(71)' 'x(72)' 'x(73)'],[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18;19;20;21;22;23;24;25;26;27;28;29;30;31;32;33;34;35;36;37;38;39;40;41;42;43;44;45;46;47;48;49;50;51;52;53;54;55;56;57;58;59;60;61;62;63;64;65;66;67;68;69;70;71;72;73])

//real_variable:
	
	
//x(1)   id: ADAMTS4_mRNA  initialValue: 0
	
//x(2)   id: cFos  initialValue: 0
	
//x(3)   id: cFos_mRNA  initialValue: 0
	
//x(4)   id: cJun  initialValue: 100
	
//x(5)   id: cJun_mRNA  initialValue: 5
	
//x(6)   id: DUSP16  initialValue: 0
	
//x(7)   id: IRAK2  initialValue: 100
	
//x(8)   id: IRAK2_TRAF6  initialValue: 0
	
//x(9)   id: IRAK2_TRAF6_PP4  initialValue: 0
	
//x(10)   id: JAK1  initialValue: 100
	
//x(11)   id: JAK1_P  initialValue: 0
	
//x(12)   id: JNK  initialValue: 100
	
//x(13)   id: JNK_P  initialValue: 0
	
//x(14)   id: Matriptase  initialValue: 100
	
//x(15)   id: MKP1  initialValue: 0
	
//x(16)   id: MMP1_mRNA  initialValue: 0
	
//x(17)   id: MMP3_mRNA  initialValue: 0
	
//x(18)   id: MMP13_mRNA  initialValue: 0
	
//x(19)   id: p38  initialValue: 100
	
//x(20)   id: p38_P  initialValue: 0
	
//x(21)   id: PP4  initialValue: 0
	
//x(22)   id: proMMP1  initialValue: 0
	
//x(23)   id: proMMP3  initialValue: 0
	
//x(24)   id: proMMP13  initialValue: 0
	
//x(25)   id: PTPRT  initialValue: 0
	
//x(26)   id: SOCS3  initialValue: 0
	
//x(27)   id: SOCS3_mRNA  initialValue: 0
	
//x(28)   id: STAT3_cyt  initialValue: 100
	
//x(29)   id: STAT3_P_cyt  initialValue: 0
	
//x(30)   id: TIMP1_mRNA  initialValue: 20
	
//x(31)   id: TIMP3_mRNA  initialValue: 20
	
//x(32)   id: TRAF6  initialValue: 100
	
//x(33)   id: TRAF6_PP4  initialValue: 0
	
//x(34)   id: ADAMTS4  initialValue: 0
	
//x(35)   id: ADAMTS4_TIMP1  initialValue: 0
	
//x(36)   id: ADAMTS4_TIMP3  initialValue: 0
	
//x(37)   id: Aggrecan  initialValue: 0
	
//x(38)   id: Aggrecan_Collagen2  initialValue: 100000
	
//x(39)   id: AggFrag  initialValue: 0
	
//x(40)   id: ColFrag  initialValue: 0
	
//x(41)   id: Collagen2  initialValue: 0
	
//x(42)   id: IL1  initialValue: 100
	
//x(43)   id: MMP1  initialValue: 0
	
//x(44)   id: MMP1_TIMP1  initialValue: 0
	
//x(45)   id: MMP1_TIMP3  initialValue: 0
	
//x(46)   id: MMP3  initialValue: 0
	
//x(47)   id: MMP3_TIMP1  initialValue: 0
	
//x(48)   id: MMP3_TIMP3  initialValue: 0
	
//x(49)   id: MMP13  initialValue: 0
	
//x(50)   id: MMP13_TIMP1  initialValue: 0
	
//x(51)   id: MMP13_TIMP3  initialValue: 0
	
//x(52)   id: OSM  initialValue: 1000
	
//x(53)   id: TIMP1  initialValue: 200
	
//x(54)   id: TIMP3  initialValue: 200
	
//x(55)   id: IL1_IL1R  initialValue: 0
	
//x(56)   id: IL1_IL1Ra  initialValue: 0
	
//x(57)   id: IL1_IL1R_IRAK2  initialValue: 0
	
//x(58)   id: IL1R  initialValue: 100
	
//x(59)   id: IL1Ra  initialValue: 0
	
//x(60)   id: OSM_OSMR  initialValue: 0
	
//x(61)   id: OSM_OSMRa  initialValue: 0
	
//x(62)   id: OSMR_SOCS3  initialValue: 0
	
//x(63)   id: OSMR  initialValue: 100
	
//x(64)   id: OSMRa  initialValue: 0
	
//x(65)   id: cFos_cJun  initialValue: 0
	
//x(66)   id: cFos_P  initialValue: 0
	
//x(67)   id: cJun_P  initialValue: 0
	
//x(68)   id: cJun_dimer  initialValue: 0
	
//x(69)   id: SP1  initialValue: 0
	
//x(70)   id: SP1_TIMP1_DNA  initialValue: 0
	
//x(71)   id: STAT3_nuc  initialValue: 0
	
//x(72)   id: STAT3_P_nuc  initialValue: 0
	
//x(73)   id: TIMP1_DNA  initialValue: 2