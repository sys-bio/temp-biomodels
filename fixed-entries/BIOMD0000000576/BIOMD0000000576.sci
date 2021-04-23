
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_default   id: default
	compartment_default=1;
		
// compartment_blood   id: blood
	compartment_blood=5;
		
// GeneProteinBinding_diff_limited_p   id: GeneProteinBinding_diff_limited
	GeneProteinBinding_diff_limited_p=60;
		
// cypGene_PXRprotein_p   id: cypGene_PXRprotein
	cypGene_PXRprotein_p=1;
		
// cypMrna_synt_p   id: cypMrna_synt
	cypMrna_synt_p=0.05;
		
// PXRGene_GRprotein_p   id: PXRGene_GRprotein
	PXRGene_GRprotein_p=200;
		
// TATGene_GRprotein_p   id: TATGene_GRprotein
	TATGene_GRprotein_p=300;
		
// GRGene_GRprotein_p   id: GRGene_GRprotein
	GRGene_GRprotein_p=60;
		
// grMrna_synt_p   id: grMrna_synt
	grMrna_synt_p=1.2E-6;
		
// tatMrna_synt_p   id: tatMrna_synt
	tatMrna_synt_p=0.005;
		
// pxrMrna_synt_p   id: pxrMrna_synt
	pxrMrna_synt_p=0.00011;
		
// GRprotein_p   id: GRprotein
	GRprotein_p=80.0000237789225;
		
// PXRprotein_p   id: PXRprotein
	PXRprotein_p=99.9112936972775;
		
// s28_s   id: s28
	s28_s=1.00000029723653;
		
// s36_s   id: s36
	s36_s=1.00000029723653;
		
// s30_s   id: s30
	s30_s=0;
		
// s10_s   id: s10
	s10_s=0;
		
// Cortisone_s   id: Cortisone
	Cortisone_s=24.0000071336767;
		
// DEX_degr_s   id: DEX_degr
	DEX_degr_s=0;
		
// DEXout_s   id: DEXout
	DEXout_s=0;
		
// CortAdded_s   id: CortAdded
	CortAdded_s=0;
		
// Ka_re1   id: Ka     reactionID: re1
	Ka_re1=0.00321;
	
// k1_re2   id: k1     reactionID: re2
	k1_re2=0.04;
	
// Ka_re3   id: Ka     reactionID: re3
	Ka_re3=2.5;
	
// k1_re4   id: k1     reactionID: re4
	k1_re4=0.0015;
	
// Ka_re5   id: Ka     reactionID: re5
	Ka_re5=5.52E-5;
	
// k1_re6   id: k1     reactionID: re6
	k1_re6=0.006;
	
// Ka_re7   id: Ka     reactionID: re7
	Ka_re7=10;
	
// k1_re8   id: k1     reactionID: re8
	k1_re8=0.003;
	
// Ka_re9   id: Ka     reactionID: re9
	Ka_re9=3.2E-6;
	
// k1_re10   id: k1     reactionID: re10
	k1_re10=0.003;
	
// Ka_re11   id: Ka     reactionID: re11
	Ka_re11=19.98;
	
// k1_re12   id: k1     reactionID: re12
	k1_re12=0.001;
	
// Ka_re13   id: Ka     reactionID: re13
	Ka_re13=0.000855;
	
// k1_re14   id: k1     reactionID: re14
	k1_re14=0.064;
	
// k1_re15   id: k1     reactionID: re15
	k1_re15=60;
	
// k2_re15   id: k2     reactionID: re15
	k2_re15=600;
	
// k1_re16   id: k1     reactionID: re16
	k1_re16=0.001;
	
// k1_re17   id: k1     reactionID: re17
	k1_re17=60;
	
// k2_re17   id: k2     reactionID: re17
	k2_re17=600000;
	
// k1_re18   id: k1     reactionID: re18
	k1_re18=0.0015;
	
// Vm_re19   id: Vm     reactionID: re19
	Vm_re19=0.083;
	
// Kms1_re19   id: Kms1     reactionID: re19
	Kms1_re19=15000;
	
// Kms2_re19   id: Kms2     reactionID: re19
	Kms2_re19=15000;
	
// Kms3_re19   id: Kms3     reactionID: re19
	Kms3_re19=23000;
	
// k1_re42   id: k1     reactionID: re42
	k1_re42=0.016;
	
// k2_re42   id: k2     reactionID: re42
	k2_re42=0.016;
	
// k1_re44   id: k1     reactionID: re44
	k1_re44=0.012;
	
// Ka_re43   id: Ka     reactionID: re43
	Ka_re43=0.5;
	
// k1_cortisolTransport   id: k1     reactionID: cortisolTransport
	k1_cortisolTransport=1000;
	
// k2_cortisolTransport   id: k2     reactionID: cortisolTransport
	k2_cortisolTransport=1000;
	
// k1_L2_PXR_binding   id: k1     reactionID: L2_PXR_binding
	k1_L2_PXR_binding=60;
	
// k2_L2_PXR_binding   id: k2     reactionID: L2_PXR_binding
	k2_L2_PXR_binding=600000;
	
// k1_L2_PXR_deg   id: k1     reactionID: L2_PXR_deg
	k1_L2_PXR_deg=0.0015;
	
// k1_re28   id: k1     reactionID: re28
	k1_re28=60;
	
// k2_re28   id: k2     reactionID: re28
	k2_re28=60;
	
// k1_re29   id: k1     reactionID: re29
	k1_re29=0.001;
	
// k1_re30   id: k1     reactionID: re30
	k1_re30=60;
	
// k2_re30   id: k2     reactionID: re30
	k2_re30=60000;
	
// k1_re31   id: k1     reactionID: re31
	k1_re31=0.0015;
	
// Vm_re32   id: Vm     reactionID: re32
	Vm_re32=0.00425;
	
// Kms1_re32   id: Kms1     reactionID: re32
	Kms1_re32=23000;
	
// Kms2_re32   id: Kms2     reactionID: re32
	Kms2_re32=15000;
	
// Kms3_re32   id: Kms3     reactionID: re32
	Kms3_re32=15000;
	
// k1_re41   id: k1     reactionID: re41
	k1_re41=100;
	
// k2_re41   id: k2     reactionID: re41
	k2_re41=100;
	
// k1_Cortisol_CBG   id: k1     reactionID: Cortisol_CBG
	k1_Cortisol_CBG=60;
	
// k2_Cortisol_CBG   id: k2     reactionID: Cortisol_CBG
	k2_Cortisol_CBG=270;
	
// k1_Cort_Alb   id: k1     reactionID: Cort_Alb
	k1_Cort_Alb=60;
	
// k2_Cort_Alb   id: k2     reactionID: Cort_Alb
	k2_Cort_Alb=900000;
	
// k1_cort_distribution   id: k1     reactionID: cort_distribution
	k1_cort_distribution=1000;
	



xdot=[
//x(1)   ID: s46  initialValue: 0.780000231844494
	(1/compartment_default)*( (-1)*(1)* (compartment_default*((GeneProteinBinding_diff_limited_p* x(1) * x(15) )-(PXRGene_GRprotein_p* x(14) ))) + (-1)*(1)* (compartment_default*((GeneProteinBinding_diff_limited_p* x(24) * x(1) )-(PXRGene_GRprotein_p* x(27) ))) );
	
//x(2)   ID: s32  initialValue: 0.00700000208065571
	(1/compartment_default)*( (-1)*(1)* (compartment_default*k1_re6* x(2) ) + (1)*(1)* (compartment_default*()) + (1)*(1)* (compartment_default*()) + (1)*(1)* (compartment_default*()) );
	
//x(3)   ID: s42  initialValue: 99.9000296939294
	(1/compartment_default)*( (-1)*(1)* (compartment_default*k1_re8* x(3) ) + (-1)*(1)* (compartment_default*((k1_re17* x(3) * x(7) )-(k2_re17* x(16) ))) + (-1)*(1)* (compartment_default*((k1_L2_PXR_binding* x(3) * x(20) )-(k2_L2_PXR_binding* x(21) ))) + (-1)*(1)* (compartment_default*((k1_re30* x(3) * x(23) )-(k2_re30* x(25) ))) + (1)*(1)* (compartment_default*()) );
	
//x(4)   ID: s40  initialValue: 0.500000148618265
	(1/compartment_default)*( (-1)*(1)* (compartment_default*((GeneProteinBinding_diff_limited_p* x(4) * x(15) )-(GRGene_GRprotein_p* x(12) ))) + (-1)*(1)* (compartment_default*((GeneProteinBinding_diff_limited_p* x(24) * x(4) )-(GRGene_GRprotein_p* x(28) ))) );
	
//x(5)   ID: s33  initialValue: 0.000800000237789224
	(1/compartment_default)*( (-1)*(1)* (compartment_default*k1_re10* x(5) ) + (1)*(1)* (compartment_default*()) + (1)*(1)* (compartment_default*()) + (1)*(1)* (compartment_default*()) );
	
//x(6)   ID: s39  initialValue: 47.2400140414537
	(1/compartment_default)*( (-1)*(1)* (compartment_default*k1_re12* x(6) ) + (-1)*(1)* (compartment_default*((k1_re15* x(7) * x(6) )-(k2_re15* x(15) ))) + (-1)*(1)* (compartment_default*((k1_re28* x(6) * x(23) )-(k2_re28* x(24) ))) + (1)*(1)* (compartment_default*()) );
	
//x(7)   ID: s114  initialValue: 1.14000033884965
	(1/compartment_default)*( (-1)*(1)* (compartment_default*((k1_re15* x(7) * x(6) )-(k2_re15* x(15) ))) + (-1)*(1)* (compartment_default*((k1_re17* x(3) * x(7) )-(k2_re17* x(16) ))) + (-1)*(1)* (compartment_default*()) + (1)*(1)* (compartment_default*k1_re16* x(15) ) + (1)*(1)* (compartment_default*k1_re18* x(16) ) + (1)*(1)* (compartment_default*((k1_re42*Cortisone_s)-(k2_re42* x(7) ))) + (1)*(1)* ((k1_cortisolTransport* x(30) )-(k2_cortisolTransport* x(7) )) );
	
//x(8)   ID: s155  initialValue: 0.829760246634984
	(1/compartment_default)*( (-1)*(1)* (compartment_default*((GeneProteinBinding_diff_limited_p* x(8) * x(16) )-(cypGene_PXRprotein_p* x(13) ))) + (-1)*(1)* (compartment_default*((GeneProteinBinding_diff_limited_p* x(8) * x(21) )-(cypGene_PXRprotein_p* x(22) ))) + (-1)*(1)* (compartment_default*((GeneProteinBinding_diff_limited_p* x(8) * x(25) )-(cypGene_PXRprotein_p* x(26) ))) );
	
//x(9)   ID: s172  initialValue: 104.000030912599
	(1/compartment_default)*( (-1)*(1)* (compartment_default*k1_re4* x(9) ) + (1)*(1)* (compartment_default*()) );
	
//x(10)   ID: s173  initialValue: 0.0750000222927398
	(1/compartment_default)*( (-1)*(1)* (compartment_default*k1_re2* x(10) ) + (1)*(1)* (compartment_default*()) + (1)*(1)* (compartment_default*()) + (1)*(1)* (compartment_default*()) + (1)*(1)* (compartment_default*()) );
	
//x(11)   ID: s185  initialValue: 0.100000029723653
	(1/compartment_default)*( (-1)*(1)* (compartment_default*k1_re14* x(11) ) + (1)*(1)* (compartment_default*()) + (1)*(1)* (compartment_default*()) + (1)*(1)* (compartment_default*()) );
	
//x(12)   ID: s84  initialValue: 0.330000098088055
	(1/compartment_default)*( (1)*(1)* (compartment_default*((GeneProteinBinding_diff_limited_p* x(4) * x(15) )-(GRGene_GRprotein_p* x(12) ))) );
	
//x(13)   ID: s165  initialValue: 0.000240000071336767
	(1/compartment_default)*( (1)*(1)* (compartment_default*((GeneProteinBinding_diff_limited_p* x(8) * x(16) )-(cypGene_PXRprotein_p* x(13) ))) );
	
//x(14)   ID: s109  initialValue: 0.0500000148618265
	(1/compartment_default)*( (1)*(1)* (compartment_default*((GeneProteinBinding_diff_limited_p* x(1) * x(15) )-(PXRGene_GRprotein_p* x(14) ))) );
	
//x(15)   ID: s87  initialValue: 32.3600096185741
	(1/compartment_default)*( (-1)*(1)* (compartment_default*k1_re16* x(15) ) + (-1)*(1)* (compartment_default*((GeneProteinBinding_diff_limited_p* x(1) * x(15) )-(PXRGene_GRprotein_p* x(14) ))) + (-1)*(1)* (compartment_default*((GeneProteinBinding_diff_limited_p* x(4) * x(15) )-(GRGene_GRprotein_p* x(12) ))) + (-1)*(1)* (compartment_default*((GeneProteinBinding_diff_limited_p* x(18) * x(15) )-(TATGene_GRprotein_p* x(17) ))) + (1)*(1)* (compartment_default*((k1_re15* x(7) * x(6) )-(k2_re15* x(15) ))) );
	
//x(16)   ID: s119  initialValue: 0.0100000029723653
	(1/compartment_default)*( (-1)*(1)* (compartment_default*k1_re18* x(16) ) + (-1)*(1)* (compartment_default*((GeneProteinBinding_diff_limited_p* x(8) * x(16) )-(cypGene_PXRprotein_p* x(13) ))) + (1)*(1)* (compartment_default*((k1_re17* x(3) * x(7) )-(k2_re17* x(16) ))) );
	
//x(17)   ID: s183  initialValue: 0.0200000059447306
	(1/compartment_default)*( (1)*(1)* (compartment_default*((GeneProteinBinding_diff_limited_p* x(18) * x(15) )-(TATGene_GRprotein_p* x(17) ))) );
	
//x(18)   ID: s178  initialValue: 0.81000024076159
	(1/compartment_default)*( (-1)*(1)* (compartment_default*((GeneProteinBinding_diff_limited_p* x(18) * x(15) )-(TATGene_GRprotein_p* x(17) ))) + (-1)*(1)* (compartment_default*((GeneProteinBinding_diff_limited_p* x(24) * x(18) )-(TATGene_GRprotein_p* x(29) ))) );
	
//x(19)   ID: TAT_PROT  initialValue: 0.46202810387596
	(1/compartment_default)*( (-1)*(1)* (compartment_default*k1_re44* x(19) ) + (1)*(1)* (compartment_default*()) );
	
//x(20)   ID: Ligand2  initialValue: 100.000029723653
	(1/compartment_default)*( (-1)*(1)* (compartment_default*((k1_L2_PXR_binding* x(3) * x(20) )-(k2_L2_PXR_binding* x(21) ))) + (1)*(1)* (compartment_default*k1_L2_PXR_deg* x(21) ) );
	
//x(21)   ID: PXRprot_Ligand2  initialValue: 0.00100000029723653
	(1/compartment_default)*( (-1)*(1)* (compartment_default*k1_L2_PXR_deg* x(21) ) + (-1)*(1)* (compartment_default*((GeneProteinBinding_diff_limited_p* x(8) * x(21) )-(cypGene_PXRprotein_p* x(22) ))) + (1)*(1)* (compartment_default*((k1_L2_PXR_binding* x(3) * x(20) )-(k2_L2_PXR_binding* x(21) ))) );
	
//x(22)   ID: CYPgene_PXRprot_Ligand2  initialValue: 2.40000071336767E-5
	(1/compartment_default)*( (1)*(1)* (compartment_default*((GeneProteinBinding_diff_limited_p* x(8) * x(21) )-(cypGene_PXRprotein_p* x(22) ))) );
	
//x(23)   ID: DEX  initialValue: 0
	(1/compartment_default)*( (-1)*(1)* (compartment_default*((k1_re28* x(6) * x(23) )-(k2_re28* x(24) ))) + (-1)*(1)* (compartment_default*((k1_re30* x(3) * x(23) )-(k2_re30* x(25) ))) + (-1)*(1)* (compartment_default*()) + (1)*(1)* (compartment_default*k1_re29* x(24) ) + (1)*(1)* (compartment_default*k1_re31* x(25) ) + (1)*(1)* ((k1_re41*DEXout_s)-(k2_re41* x(23) )) );
	
//x(24)   ID: GRprot_DEX  initialValue: 0
	(1/compartment_default)*( (-1)*(1)* (compartment_default*k1_re29* x(24) ) + (-1)*(1)* (compartment_default*((GeneProteinBinding_diff_limited_p* x(24) * x(1) )-(PXRGene_GRprotein_p* x(27) ))) + (-1)*(1)* (compartment_default*((GeneProteinBinding_diff_limited_p* x(24) * x(4) )-(GRGene_GRprotein_p* x(28) ))) + (-1)*(1)* (compartment_default*((GeneProteinBinding_diff_limited_p* x(24) * x(18) )-(TATGene_GRprotein_p* x(29) ))) + (1)*(1)* (compartment_default*((k1_re28* x(6) * x(23) )-(k2_re28* x(24) ))) );
	
//x(25)   ID: PXRprot_DEX  initialValue: 0
	(1/compartment_default)*( (-1)*(1)* (compartment_default*k1_re31* x(25) ) + (-1)*(1)* (compartment_default*((GeneProteinBinding_diff_limited_p* x(8) * x(25) )-(cypGene_PXRprotein_p* x(26) ))) + (1)*(1)* (compartment_default*((k1_re30* x(3) * x(23) )-(k2_re30* x(25) ))) );
	
//x(26)   ID: CYPgene_PXRprot_DEX  initialValue: 0
	(1/compartment_default)*( (1)*(1)* (compartment_default*((GeneProteinBinding_diff_limited_p* x(8) * x(25) )-(cypGene_PXRprotein_p* x(26) ))) );
	
//x(27)   ID: PXRgene_GRprot_DEX  initialValue: 0
	(1/compartment_default)*( (1)*(1)* (compartment_default*((GeneProteinBinding_diff_limited_p* x(24) * x(1) )-(PXRGene_GRprotein_p* x(27) ))) );
	
//x(28)   ID: GRgene_GRprot_DEX  initialValue: 0
	(1/compartment_default)*( (1)*(1)* (compartment_default*((GeneProteinBinding_diff_limited_p* x(24) * x(4) )-(GRGene_GRprotein_p* x(28) ))) );
	
//x(29)   ID: TATgene_GRprot_DEX  initialValue: 0
	(1/compartment_default)*( (1)*(1)* (compartment_default*((GeneProteinBinding_diff_limited_p* x(24) * x(18) )-(TATGene_GRprotein_p* x(29) ))) );
	
//x(30)   ID: s2  initialValue: 0
	(1/compartment_blood)*( (-1)*(1)* ((k1_cortisolTransport* x(30) )-(k2_cortisolTransport* x(7) )) + (-1)*(1)* (compartment_blood*((k1_Cortisol_CBG* x(30) * x(31) )-(k2_Cortisol_CBG* x(32) ))) + (-1)*(1)* (compartment_blood*((k1_Cort_Alb* x(33) * x(30) )-(k2_Cort_Alb* x(34) ))) + (1)*(1)* (compartment_blood*k1_cort_distribution*CortAdded_s) );
	
//x(31)   ID: CBG  initialValue: 550.000163480092
	(1/compartment_blood)*( (-1)*(1)* (compartment_blood*((k1_Cortisol_CBG* x(30) * x(31) )-(k2_Cortisol_CBG* x(32) ))) );
	
//x(32)   ID: CBG_CortOUT  initialValue: 0
	(1/compartment_blood)*( (1)*(1)* (compartment_blood*((k1_Cortisol_CBG* x(30) * x(31) )-(k2_Cortisol_CBG* x(32) ))) );
	
//x(33)   ID: Alb  initialValue: 6.00000178341918E4
	(1/compartment_blood)*( (-1)*(1)* (compartment_blood*((k1_Cort_Alb* x(33) * x(30) )-(k2_Cort_Alb* x(34) ))) );
	
//x(34)   ID: Alb_CortOUT  initialValue: 0
	(1/compartment_blood)*( (1)*(1)* (compartment_blood*((k1_Cort_Alb* x(33) * x(30) )-(k2_Cort_Alb* x(34) ))) )
	];


	
endfunction
        x0=[0.780000231844494;0.00700000208065571;99.9000296939294;0.500000148618265;0.000800000237789224;47.2400140414537;1.14000033884965;0.829760246634984;104.000030912599;0.0750000222927398;0.100000029723653;0.330000098088055;0.000240000071336767;0.0500000148618265;32.3600096185741;0.0100000029723653;0.0200000059447306;0.81000024076159;0.46202810387596;100.000029723653;0.00100000029723653;2.40000071336767E-5;0;0;0;0;0;0;0;0;550.000163480092;0;6.00000178341918E4;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)' 'x(14)' 'x(15)' 'x(16)' 'x(17)' 'x(18)' 'x(19)' 'x(20)' 'x(21)' 'x(22)' 'x(23)' 'x(24)' 'x(25)' 'x(26)' 'x(27)' 'x(28)' 'x(29)' 'x(30)' 'x(31)' 'x(32)' 'x(33)' 'x(34)'],[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18;19;20;21;22;23;24;25;26;27;28;29;30;31;32;33;34])

//real_variable:
	
	
//x(1)   id: s46  initialValue: 0.780000231844494
	
//x(2)   id: s32  initialValue: 0.00700000208065571
	
//x(3)   id: s42  initialValue: 99.9000296939294
	
//x(4)   id: s40  initialValue: 0.500000148618265
	
//x(5)   id: s33  initialValue: 0.000800000237789224
	
//x(6)   id: s39  initialValue: 47.2400140414537
	
//x(7)   id: s114  initialValue: 1.14000033884965
	
//x(8)   id: s155  initialValue: 0.829760246634984
	
//x(9)   id: s172  initialValue: 104.000030912599
	
//x(10)   id: s173  initialValue: 0.0750000222927398
	
//x(11)   id: s185  initialValue: 0.100000029723653
	
//x(12)   id: s84  initialValue: 0.330000098088055
	
//x(13)   id: s165  initialValue: 0.000240000071336767
	
//x(14)   id: s109  initialValue: 0.0500000148618265
	
//x(15)   id: s87  initialValue: 32.3600096185741
	
//x(16)   id: s119  initialValue: 0.0100000029723653
	
//x(17)   id: s183  initialValue: 0.0200000059447306
	
//x(18)   id: s178  initialValue: 0.81000024076159
	
//x(19)   id: TAT_PROT  initialValue: 0.46202810387596
	
//x(20)   id: Ligand2  initialValue: 100.000029723653
	
//x(21)   id: PXRprot_Ligand2  initialValue: 0.00100000029723653
	
//x(22)   id: CYPgene_PXRprot_Ligand2  initialValue: 2.40000071336767E-5
	
//x(23)   id: DEX  initialValue: 0
	
//x(24)   id: GRprot_DEX  initialValue: 0
	
//x(25)   id: PXRprot_DEX  initialValue: 0
	
//x(26)   id: CYPgene_PXRprot_DEX  initialValue: 0
	
//x(27)   id: PXRgene_GRprot_DEX  initialValue: 0
	
//x(28)   id: GRgene_GRprot_DEX  initialValue: 0
	
//x(29)   id: TATgene_GRprot_DEX  initialValue: 0
	
//x(30)   id: s2  initialValue: 0
	
//x(31)   id: CBG  initialValue: 550.000163480092
	
//x(32)   id: CBG_CortOUT  initialValue: 0
	
//x(33)   id: Alb  initialValue: 6.00000178341918E4
	
//x(34)   id: Alb_CortOUT  initialValue: 0