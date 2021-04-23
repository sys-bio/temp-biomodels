
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_compartment   id: compartment
	compartment_compartment=1;
		
// PEP_s   id: PEP
	PEP_s=16.01031821;
		
// EP_s   id: EP
	EP_s=107.502052;
		
// Gln_s   id: Gln
	Gln_s=381.0009289;
		
// GTP_s   id: GTP
	GTP_s=487.4867469;
		
// Gly_s   id: Gly
	Gly_s=499.9974679;
		
// Ser_s   id: Ser
	Ser_s=6.803576818;
		
// Hcy_s   id: Hcy
	Hcy_s=1.000182797;
		
// dUMP_s   id: dUMP
	dUMP_s=20.00252991;
		
// mtRNA_s   id: mtRNA
	mtRNA_s=1.003123924;
		
// ATP_s   id: ATP
	ATP_s=963.0188351;
		
// NADPH_s   id: NADPH
	NADPH_s=12.19849409;
		
// Lp_s   id: Lp
	Lp_s=1.298234355;
		
// NADH_s   id: NADH
	NADH_s=8.349823436;
		
// vmax_R1   id: vmax     reactionID: R1
	vmax_R1=578.76;
	
// kpep_R1   id: kpep     reactionID: R1
	kpep_R1=36;
	
// kep_R1   id: kep     reactionID: R1
	kep_R1=285;
	
// Km_R2   id: Km     reactionID: R2
	Km_R2=4.7;
	
// V_R2   id: V     reactionID: R2
	V_R2=7.462;
	
// Km_R3   id: Km     reactionID: R3
	Km_R3=58;
	
// V_R3   id: V     reactionID: R3
	V_R3=116.48;
	
// vmax_R4   id: vmax     reactionID: R4
	vmax_R4=17290;
	
// kdhsk_R4   id: kdhsk     reactionID: R4
	kdhsk_R4=30;
	
// knadph_R4   id: knadph     reactionID: R4
	knadph_R4=11;
	
// vmax_R5   id: vmax     reactionID: R5
	vmax_R5=18200;
	
// ksk_R5   id: ksk     reactionID: R5
	ksk_R5=200;
	
// katp_R5   id: katp     reactionID: R5
	katp_R5=151.5;
	
// vmax_R6   id: vmax     reactionID: R6
	vmax_R6=1547;
	
// kpep_R6   id: kpep     reactionID: R6
	kpep_R6=93;
	
// kskp_R6   id: kskp     reactionID: R6
	kskp_R6=80;
	
// Km_R7   id: Km     reactionID: R7
	Km_R7=12.7;
	
// V_R7   id: V     reactionID: R7
	V_R7=728;
	
// vmax_R8   id: vmax     reactionID: R8
	vmax_R8=26;
	
// kcm_R8   id: kcm     reactionID: R8
	kcm_R8=13;
	
// kgln_R8   id: kgln     reactionID: R8
	kgln_R8=1100;
	
// Km_R9   id: Km     reactionID: R9
	Km_R9=1.1;
	
// V_R9   id: V     reactionID: R9
	V_R9=2.2;
	
// vmax_R10   id: vmax     reactionID: R10
	vmax_R10=1515.15;
	
// kgtp_R10   id: kgtp     reactionID: R10
	kgtp_R10=17.6;
	
// kiTHF_R10   id: kiTHF     reactionID: R10
	kiTHF_R10=0.157;
	
// Km_R11   id: Km     reactionID: R11
	Km_R11=7.4;
	
// V_R11   id: V     reactionID: R11
	V_R11=792.064;
	
// Km_R27   id: Km     reactionID: R27
	Km_R27=10;
	
// V_R27   id: V     reactionID: R27
	V_R27=22.659;
	
// vmax_R12   id: vmax     reactionID: R12
	vmax_R12=382.2;
	
// katp_R12   id: katp     reactionID: R12
	katp_R12=15;
	
// kahmdhp_R12   id: kahmdhp     reactionID: R12
	kahmdhp_R12=3.6;
	
// vmax_R14   id: vmax     reactionID: R14
	vmax_R14=2.821;
	
// kdhp_R14   id: kdhp     reactionID: R14
	kdhp_R14=1;
	
// kglu_R14   id: kglu     reactionID: R14
	kglu_R14=1380;
	
// katp_R14   id: katp     reactionID: R14
	katp_R14=100;
	
// vmax_R15   id: vmax     reactionID: R15
	vmax_R15=3000;
	
// kdhf_R15   id: kdhf     reactionID: R15
	kdhf_R15=3;
	
// knadph_R15   id: knadph     reactionID: R15
	knadph_R15=6.12;
	
// vmax_R16   id: vmax     reactionID: R16
	vmax_R16=84.63;
	
// kthf_R16   id: kthf     reactionID: R16
	kthf_R16=26;
	
// kglu_R16   id: kglu     reactionID: R16
	kglu_R16=740;
	
// katp_R16   id: katp     reactionID: R16
	katp_R16=128;
	
// kidhf_R16   id: kidhf     reactionID: R16
	kidhf_R16=3.1;
	
// vmax_R17   id: vmax     reactionID: R17
	vmax_R17=682.5;
	
// kthfglu_R17   id: kthfglu     reactionID: R17
	kthfglu_R17=40;
	
// kser_R17   id: kser     reactionID: R17
	kser_R17=700;
	
// kithf_R17   id: kithf     reactionID: R17
	kithf_R17=0.157;
	
// vmax_R18b   id: vmax     reactionID: R18b
	vmax_R18b=751.66;
	
// kgly_R18b   id: kgly     reactionID: R18b
	kgly_R18b=4505;
	
// kdlp_R18b   id: kdlp     reactionID: R18b
	kdlp_R18b=290;
	
// vmax_R19   id: vmax     reactionID: R19
	vmax_R19=738.92;
	
// knadph_R19   id: knadph     reactionID: R19
	knadph_R19=19;
	
// kmythfglu_R19   id: kmythfglu     reactionID: R19
	kmythfglu_R19=33;
	
// kidhf_R19   id: kidhf     reactionID: R19
	kidhf_R19=0.428;
	
// vmax_R20   id: vmax     reactionID: R20
	vmax_R20=379.925;
	
// kmthfglu_R20   id: kmthfglu     reactionID: R20
	kmthfglu_R20=30;
	
// khcy_R20   id: khcy     reactionID: R20
	khcy_R20=17;
	
// vmax_R21   id: vmax     reactionID: R21
	vmax_R21=49.14;
	
// kdump_R21   id: kdump     reactionID: R21
	kdump_R21=5.4;
	
// kmythfglu_R21   id: kmythfglu     reactionID: R21
	kmythfglu_R21=17;
	
// kidhf_R21   id: kidhf     reactionID: R21
	kidhf_R21=0.428;
	
// vmax_R22   id: vmax     reactionID: R22
	vmax_R22=1892.8;
	
// kmythfglu_R22   id: kmythfglu     reactionID: R22
	kmythfglu_R22=25;
	
// knadp_R22   id: knadp     reactionID: R22
	knadp_R22=22;
	
// kidhf_R22   id: kidhf     reactionID: R22
	kidhf_R22=0.428;
	
// vmax_R25   id: vmax     reactionID: R25
	vmax_R25=116.48;
	
// kfthfglu_R25   id: kfthfglu     reactionID: R25
	kfthfglu_R25=12.15;
	
// kmtrna_R25   id: kmtrna     reactionID: R25
	kmtrna_R25=1.07;
	
// vmax_R26   id: vmax     reactionID: R26
	vmax_R26=59.332;
	
// kfthfglu_R26   id: kfthfglu     reactionID: R26
	kfthfglu_R26=7.85;
	
// knadp_R26   id: knadp     reactionID: R26
	knadp_R26=0.9;
	
// vmax_R18c   id: vmax     reactionID: R18c
	vmax_R18c=196.56;
	
// kthfglu_R18c   id: kthfglu     reactionID: R18c
	kthfglu_R18c=67.7;
	
// ksamdlp_R18c   id: ksamdlp     reactionID: R18c
	ksamdlp_R18c=290;
	
// vmax_R18a   id: vmax     reactionID: R18a
	vmax_R18a=5432.7;
	
// knadh_R18a   id: knadh     reactionID: R18a
	knadh_R18a=58;
	
// klp_R18a   id: klp     reactionID: R18a
	klp_R18a=1280;
	
// vmax_R13   id: vmax     reactionID: R13
	vmax_R13=105.014;
	
// kahmdpp_R13   id: kahmdpp     reactionID: R13
	kahmdpp_R13=3.15;
	
// kpaba_R13   id: kpaba     reactionID: R13
	kpaba_R13=2.6;
	
// vmax_R24   id: vmax     reactionID: R24
	vmax_R24=1.53153E4;
	
// kthfglu_R24   id: kthfglu     reactionID: R24
	kthfglu_R24=134;
	
// kformyl_R24   id: kformyl     reactionID: R24
	kformyl_R24=3190;
	
// katp_R24   id: katp     reactionID: R24
	katp_R24=74.5;
	
// k1_R23   id: k1     reactionID: R23
	k1_R23=0.08;
	
// k2_R23   id: k2     reactionID: R23
	k2_R23=0.031;
	
// Km_R28   id: Km     reactionID: R28
	Km_R28=67;
	
// V_R28   id: V     reactionID: R28
	V_R28=200;
	
// vmax_R29   id: vmax     reactionID: R29
	vmax_R29=500;
	
// katp_R29   id: katp     reactionID: R29
	katp_R29=50;
	
// kffthfglu_R29   id: kffthfglu     reactionID: R29
	kffthfglu_R29=5;
	



xdot=[
//x(1)   ID: DAHP  initialValue: 0.9796078511
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*()) + (1)*(1)* (compartment_compartment*()) );
	
//x(2)   ID: Pi  initialValue: 2.725541316
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*()) + (1)*(1)* (compartment_compartment*()) + (1)*(1)* (compartment_compartment*()) + (1)*(1)* (compartment_compartment*()) + (1)*(1)* (compartment_compartment*()) + (1)*(1)* (compartment_compartment*()) + (1)*(1)* (compartment_compartment*()) + (1)*(1)* (compartment_compartment*()) + (1)*(1)* (compartment_compartment*()) + (1)*(1)* (compartment_compartment*()) + (1)*(1)* (compartment_compartment*()) + (1)*(1)* (compartment_compartment*()) );
	
//x(3)   ID: DHQ  initialValue: 0.9994087764
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*()) + (1)*(1)* (compartment_compartment*()) );
	
//x(4)   ID: DHSK  initialValue: 1.92788104
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*()) + (1)*(1)* (compartment_compartment*()) );
	
//x(5)   ID: SK  initialValue: 5.06777189
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*()) + (1)*(1)* (compartment_compartment*()) );
	
//x(6)   ID: SKP  initialValue: 2
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*()) + (1)*(1)* (compartment_compartment*()) );
	
//x(7)   ID: CVPSK  initialValue: 0.9174312684
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*()) + (1)*(1)* (compartment_compartment*()) );
	
//x(8)   ID: CM  initialValue: 1.009195849
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*()) + (1)*(1)* (compartment_compartment*()) );
	
//x(9)   ID: Glu  initialValue: 959.9999225
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*()) + (-1)*(1)* (compartment_compartment*()) + (1)*(1)* (compartment_compartment*()) );
	
//x(10)   ID: ADC  initialValue: 0.9907047071
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*()) + (1)*(1)* (compartment_compartment*()) );
	
//x(11)   ID: Pyr  initialValue: 1.000006539
	(1/compartment_compartment)*( (1)*(1)* (compartment_compartment*()) );
	
//x(12)   ID: pABA  initialValue: 1.00378139
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*()) + (1)*(1)* (compartment_compartment*()) );
	
//x(13)   ID: DHNTP  initialValue: 4
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*()) + (-1)*(1)* (compartment_compartment*()) + (1)*(1)* (compartment_compartment*()) );
	
//x(14)   ID: AHMDHP  initialValue: 2.01877235
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*()) + (1)*(1)* (compartment_compartment*()) );
	
//x(15)   ID: HAD  initialValue: 2.002305849
	(1/compartment_compartment)*( (1)*(1)* (compartment_compartment*()) );
	
//x(16)   ID: PTHP  initialValue: 1.002298517
	(1/compartment_compartment)*( (1)*(1)* (compartment_compartment*()) );
	
//x(17)   ID: AHMDPP  initialValue: 0.9873083466
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*()) + (1)*(1)* (compartment_compartment*()) );
	
//x(18)   ID: DHP  initialValue: 0.9963801483
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*()) + (1)*(1)* (compartment_compartment*()) );
	
//x(19)   ID: DHF  initialValue: 1.142744159
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*()) + (1)*(1)* (compartment_compartment*()) + (1)*(1)* (compartment_compartment*()) );
	
//x(20)   ID: THF  initialValue: 8
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*()) + (1)*(1)* (compartment_compartment*()) );
	
//x(21)   ID: THFGlu  initialValue: 1
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*()) + (-1)*(1)* (compartment_compartment*()) + (1)*(1)* (compartment_compartment*()) + (1)*(1)* (compartment_compartment*()) + (1)*(1)* (compartment_compartment*()) + (1)*(1)* (compartment_compartment*()) + (1)*(1)* (compartment_compartment*()) );
	
//x(22)   ID: myTHFGlu  initialValue: 1.04350884
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*()) + (-1)*(1)* (compartment_compartment*()) + (-1)*(1)* (compartment_compartment*()) + (1)*(1)* (compartment_compartment*()) + (1)*(1)* (compartment_compartment*()) );
	
//x(23)   ID: MTHFGlu  initialValue: 1.000096392
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*()) + (1)*(1)* (compartment_compartment*()) );
	
//x(24)   ID: Met  initialValue: 0.9998172031
	(1/compartment_compartment)*( (1)*(1)* (compartment_compartment*()) );
	
//x(25)   ID: dTMP  initialValue: 0.9974700923
	(1/compartment_compartment)*( (1)*(1)* (compartment_compartment*()) );
	
//x(26)   ID: meTHFGlu  initialValue: 0.9082384182
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*((k1_R23* x(26) )-(k2_R23* x(27) ))) + (-1)*(1)* (compartment_compartment*()) + (1)*(1)* (compartment_compartment*()) + (1)*(1)* (compartment_compartment*()) );
	
//x(27)   ID: fTHFGlu  initialValue: 1.83347183
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*()) + (-1)*(1)* (compartment_compartment*()) + (-1)*(1)* (compartment_compartment*()) + (1)*(1)* (compartment_compartment*((k1_R23* x(26) )-(k2_R23* x(27) ))) );
	
//x(28)   ID: fmtRNA  initialValue: 0.9968760756
	(1/compartment_compartment)*( (1)*(1)* (compartment_compartment*()) );
	
//x(29)   ID: COTwo  initialValue: 0.988683328
	(1/compartment_compartment)*( (1)*(1)* (compartment_compartment*()) + (1)*(1)* (compartment_compartment*()) );
	
//x(30)   ID: ADP  initialValue: 2.828115142
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*()) + (1)*(1)* (compartment_compartment*()) + (1)*(1)* (compartment_compartment*()) + (1)*(1)* (compartment_compartment*()) + (1)*(1)* (compartment_compartment*()) );
	
//x(31)   ID: NADP  initialValue: 2
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*()) + (-1)*(1)* (compartment_compartment*()) + (1)*(1)* (compartment_compartment*()) + (1)*(1)* (compartment_compartment*()) + (1)*(1)* (compartment_compartment*()) );
	
//x(32)   ID: AMP  initialValue: 0.983533495
	(1/compartment_compartment)*( (1)*(1)* (compartment_compartment*()) );
	
//x(33)   ID: DLp  initialValue: 0.7017503089
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*()) + (1)*(1)* (compartment_compartment*()) );
	
//x(34)   ID: SAmDLp  initialValue: 1.000015336
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*()) + (1)*(1)* (compartment_compartment*()) );
	
//x(35)   ID: NAD  initialValue: 0.7017656449
	(1/compartment_compartment)*( (1)*(1)* (compartment_compartment*()) );
	
//x(36)   ID: Ammonia  initialValue: 0.9895374253
	(1/compartment_compartment)*( (1)*(1)* (compartment_compartment*()) );
	
//x(37)   ID: Formyl  initialValue: 8
	(1/compartment_compartment)*( (1)*(1)* (compartment_compartment*()) + (1)*(1)* (compartment_compartment*()) );
	
//x(38)   ID: ffTHFGlu  initialValue: 1
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*()) + (1)*(1)* (compartment_compartment*()) )
	];


	
endfunction
        x0=[0.9796078511;2.725541316;0.9994087764;1.92788104;5.06777189;2;0.9174312684;1.009195849;959.9999225;0.9907047071;1.000006539;1.00378139;4;2.01877235;2.002305849;1.002298517;0.9873083466;0.9963801483;1.142744159;8;1;1.04350884;1.000096392;0.9998172031;0.9974700923;0.9082384182;1.83347183;0.9968760756;0.988683328;2.828115142;2;0.983533495;0.7017503089;1.000015336;0.7017656449;0.9895374253;8;1];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)' 'x(14)' 'x(15)' 'x(16)' 'x(17)' 'x(18)' 'x(19)' 'x(20)' 'x(21)' 'x(22)' 'x(23)' 'x(24)' 'x(25)' 'x(26)' 'x(27)' 'x(28)' 'x(29)' 'x(30)' 'x(31)' 'x(32)' 'x(33)' 'x(34)' 'x(35)' 'x(36)' 'x(37)' 'x(38)'],[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18;19;20;21;22;23;24;25;26;27;28;29;30;31;32;33;34;35;36;37;38])

//real_variable:
	
	
//x(1)   id: DAHP  initialValue: 0.9796078511
	
//x(2)   id: Pi  initialValue: 2.725541316
	
//x(3)   id: DHQ  initialValue: 0.9994087764
	
//x(4)   id: DHSK  initialValue: 1.92788104
	
//x(5)   id: SK  initialValue: 5.06777189
	
//x(6)   id: SKP  initialValue: 2
	
//x(7)   id: CVPSK  initialValue: 0.9174312684
	
//x(8)   id: CM  initialValue: 1.009195849
	
//x(9)   id: Glu  initialValue: 959.9999225
	
//x(10)   id: ADC  initialValue: 0.9907047071
	
//x(11)   id: Pyr  initialValue: 1.000006539
	
//x(12)   id: pABA  initialValue: 1.00378139
	
//x(13)   id: DHNTP  initialValue: 4
	
//x(14)   id: AHMDHP  initialValue: 2.01877235
	
//x(15)   id: HAD  initialValue: 2.002305849
	
//x(16)   id: PTHP  initialValue: 1.002298517
	
//x(17)   id: AHMDPP  initialValue: 0.9873083466
	
//x(18)   id: DHP  initialValue: 0.9963801483
	
//x(19)   id: DHF  initialValue: 1.142744159
	
//x(20)   id: THF  initialValue: 8
	
//x(21)   id: THFGlu  initialValue: 1
	
//x(22)   id: myTHFGlu  initialValue: 1.04350884
	
//x(23)   id: MTHFGlu  initialValue: 1.000096392
	
//x(24)   id: Met  initialValue: 0.9998172031
	
//x(25)   id: dTMP  initialValue: 0.9974700923
	
//x(26)   id: meTHFGlu  initialValue: 0.9082384182
	
//x(27)   id: fTHFGlu  initialValue: 1.83347183
	
//x(28)   id: fmtRNA  initialValue: 0.9968760756
	
//x(29)   id: COTwo  initialValue: 0.988683328
	
//x(30)   id: ADP  initialValue: 2.828115142
	
//x(31)   id: NADP  initialValue: 2
	
//x(32)   id: AMP  initialValue: 0.983533495
	
//x(33)   id: DLp  initialValue: 0.7017503089
	
//x(34)   id: SAmDLp  initialValue: 1.000015336
	
//x(35)   id: NAD  initialValue: 0.7017656449
	
//x(36)   id: Ammonia  initialValue: 0.9895374253
	
//x(37)   id: Formyl  initialValue: 8
	
//x(38)   id: ffTHFGlu  initialValue: 1