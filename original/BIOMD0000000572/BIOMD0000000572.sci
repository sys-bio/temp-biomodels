
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_compartment_1   id: compartment_1
	compartment_compartment_1=0.047;
		
// compartment_compartment_2   id: compartment_2
	compartment_compartment_2=1;
		
// Vmax_PTS_Glc_re12   id: Vmax_PTS_Glc     reactionID: re12
	Vmax_PTS_Glc_re12=3.71082;
	
// kaPint_PTS_Glc_re12   id: kaPint_PTS_Glc     reactionID: re12
	kaPint_PTS_Glc_re12=0.070909;
	
// kiFBP_PTS_Glc_re12   id: kiFBP_PTS_Glc     reactionID: re12
	kiFBP_PTS_Glc_re12=1.16937;
	
// kmG6P_PTS_Glc_re12   id: kmG6P_PTS_Glc     reactionID: re12
	kmG6P_PTS_Glc_re12=0.284871;
	
// kmGlucose_PTS_Glc_re12   id: kmGlucose_PTS_Glc     reactionID: re12
	kmGlucose_PTS_Glc_re12=0.0485045;
	
// kmPEP_PTS_Glc_re12   id: kmPEP_PTS_Glc     reactionID: re12
	kmPEP_PTS_Glc_re12=0.305604;
	
// kmPYR_PTS_Glc_re12   id: kmPYR_PTS_Glc     reactionID: re12
	kmPYR_PTS_Glc_re12=1.95993;
	
// Vmax_ATPase_re13   id: Vmax_ATPase     reactionID: re13
	Vmax_ATPase_re13=3.2901;
	
// kmATP_ATPase_re13   id: kmATP_ATPase     reactionID: re13
	kmATP_ATPase_re13=4.34159;
	
// nATPase_re13   id: nATPase     reactionID: re13
	nATPase_re13=3;
	
// Vmax_Ptransport_re14   id: Vmax_Ptransport     reactionID: re14
	Vmax_Ptransport_re14=3.59588;
	
// kiPint_Ptransport_re14   id: kiPint_Ptransport     reactionID: re14
	kiPint_Ptransport_re14=0.561093;
	
// kmADP_Ptransport_re14   id: kmADP_Ptransport     reactionID: re14
	kmADP_Ptransport_re14=0.192278;
	
// kmATP_Ptransport_re14   id: kmATP_Ptransport     reactionID: re14
	kmATP_Ptransport_re14=0.523288;
	
// kmPext_Ptransport_re14   id: kmPext_Ptransport     reactionID: re14
	kmPext_Ptransport_re14=0.749898;
	
// kmPint_Ptransport_re14   id: kmPint_Ptransport     reactionID: re14
	kmPint_Ptransport_re14=0.30336;
	
// Keq_PGI_re15   id: Keq_PGI     reactionID: re15
	Keq_PGI_re15=0.43;
	
// Vmax_PGI_re15   id: Vmax_PGI     reactionID: re15
	Vmax_PGI_re15=21.681;
	
// kmF6P_PGI_re15   id: kmF6P_PGI     reactionID: re15
	kmF6P_PGI_re15=3.13894;
	
// kmG6P_PGI_re15   id: kmG6P_PGI     reactionID: re15
	kmG6P_PGI_re15=0.199409;
	
// Vmax_PFK_re16   id: Vmax_PFK     reactionID: re16
	Vmax_PFK_re16=18.3577;
	
// kmADP_PFK_re16   id: kmADP_PFK     reactionID: re16
	kmADP_PFK_re16=10.7357;
	
// kmATP_PFK_re16   id: kmATP_PFK     reactionID: re16
	kmATP_PFK_re16=0.0616607;
	
// kmF6P_PFK_re16   id: kmF6P_PFK     reactionID: re16
	kmF6P_PFK_re16=1.01973;
	
// kmFBP_PFK_re16   id: kmFBP_PFK     reactionID: re16
	kmFBP_PFK_re16=86.8048;
	
// Keq_FBA_re17   id: Keq_FBA     reactionID: re17
	Keq_FBA_re17=0.056;
	
// Vmax_FBA_re17   id: Vmax_FBA     reactionID: re17
	Vmax_FBA_re17=56.1311;
	
// kmFBP_FBA_re17   id: kmFBP_FBA     reactionID: re17
	kmFBP_FBA_re17=0.300745;
	
// kmG3P_FBA_re17   id: kmG3P_FBA     reactionID: re17
	kmG3P_FBA_re17=10.1058;
	
// Keq_GAPDH_re18   id: Keq_GAPDH     reactionID: re18
	Keq_GAPDH_re18=0.0007;
	
// Vmax_GAPDH_re18   id: Vmax_GAPDH     reactionID: re18
	Vmax_GAPDH_re18=30.0058;
	
// kmBPG_GAPDH_re18   id: kmBPG_GAPDH     reactionID: re18
	kmBPG_GAPDH_re18=0.0481603;
	
// kmG3P_GAPDH_re18   id: kmG3P_GAPDH     reactionID: re18
	kmG3P_GAPDH_re18=0.181788;
	
// kmNADH_GAPDH_re18   id: kmNADH_GAPDH     reactionID: re18
	kmNADH_GAPDH_re18=0.643019;
	
// kmNAD_GAPDH_re18   id: kmNAD_GAPDH     reactionID: re18
	kmNAD_GAPDH_re18=0.0477445;
	
// kmPint_GAPDH_re18   id: kmPint_GAPDH     reactionID: re18
	kmPint_GAPDH_re18=6.75302;
	
// Keq_ENO_re20   id: Keq_ENO     reactionID: re20
	Keq_ENO_re20=27.55;
	
// Vmax_ENO_re20   id: Vmax_ENO     reactionID: re20
	Vmax_ENO_re20=29.132;
	
// kmADP_ENO_re20   id: kmADP_ENO     reactionID: re20
	kmADP_ENO_re20=0.413195;
	
// kmATP_ENO_re20   id: kmATP_ENO     reactionID: re20
	kmATP_ENO_re20=0.748238;
	
// kmBPG_ENO_re20   id: kmBPG_ENO     reactionID: re20
	kmBPG_ENO_re20=0.0241572;
	
// kmPEP_ENO_re20   id: kmPEP_ENO     reactionID: re20
	kmPEP_ENO_re20=1.38899;
	
// Vmax_PYK_re21   id: Vmax_PYK     reactionID: re21
	Vmax_PYK_re21=2.22404;
	
// kaFBP_PYK_re21   id: kaFBP_PYK     reactionID: re21
	kaFBP_PYK_re21=0.0388651;
	
// kiPint_PYK_re21   id: kiPint_PYK     reactionID: re21
	kiPint_PYK_re21=3.70071;
	
// kmADP_PYK_re21   id: kmADP_PYK     reactionID: re21
	kmADP_PYK_re21=3.07711;
	
// kmATP_PYK_re21   id: kmATP_PYK     reactionID: re21
	kmATP_PYK_re21=29.6028;
	
// kmPEP_PYK_re21   id: kmPEP_PYK     reactionID: re21
	kmPEP_PYK_re21=0.330583;
	
// kmPYR_PYK_re21   id: kmPYR_PYK     reactionID: re21
	kmPYR_PYK_re21=96.4227;
	
// nPYK_re21   id: nPYK     reactionID: re21
	nPYK_re21=3;
	
// Vmax_LDH_re22   id: Vmax_LDH     reactionID: re22
	Vmax_LDH_re22=566.598;
	
// kaFBP_LDH_re22   id: kaFBP_LDH     reactionID: re22
	kaFBP_LDH_re22=0.0184011;
	
// kiPint_LDH_re22   id: kiPint_LDH     reactionID: re22
	kiPint_LDH_re22=0.0676829;
	
// kmLactate_LDH_re22   id: kmLactate_LDH     reactionID: re22
	kmLactate_LDH_re22=94.1203;
	
// kmNADH_LDH_re22   id: kmNADH_LDH     reactionID: re22
	kmNADH_LDH_re22=0.144443;
	
// kmNAD_LDH_re22   id: kmNAD_LDH     reactionID: re22
	kmNAD_LDH_re22=3.08447;
	
// kmPYR_LDH_re22   id: kmPYR_LDH     reactionID: re22
	kmPYR_LDH_re22=0.01;
	
// Keq_PFL_re23   id: Keq_PFL     reactionID: re23
	Keq_PFL_re23=650;
	
// KmCoA_PFL_re23   id: KmCoA_PFL     reactionID: re23
	KmCoA_PFL_re23=0.124066;
	
// Vmax_PFL_re23   id: Vmax_PFL     reactionID: re23
	Vmax_PFL_re23=0.00230934;
	
// kiG3P_PFL_re23   id: kiG3P_PFL     reactionID: re23
	kiG3P_PFL_re23=0.511288;
	
// kmAcetCoA_PFL_re23   id: kmAcetCoA_PFL     reactionID: re23
	kmAcetCoA_PFL_re23=7.34319;
	
// kmFormate_PFL_re23   id: kmFormate_PFL     reactionID: re23
	kmFormate_PFL_re23=54.2693;
	
// kmPYR_PFL_re23   id: kmPYR_PFL     reactionID: re23
	kmPYR_PFL_re23=5.77662;
	
// Vmax_AE_re24   id: Vmax_AE     reactionID: re24
	Vmax_AE_re24=2.11844;
	
// kiATP_AE_re24   id: kiATP_AE     reactionID: re24
	kiATP_AE_re24=6.28119;
	
// kmAcetCoA_AE_re24   id: kmAcetCoA_AE     reactionID: re24
	kmAcetCoA_AE_re24=7.38021;
	
// kmCoA_AE_re24   id: kmCoA_AE     reactionID: re24
	kmCoA_AE_re24=0.091813;
	
// kmEthanol_AE_re24   id: kmEthanol_AE     reactionID: re24
	kmEthanol_AE_re24=2.28106;
	
// kmNADH_AE_re24   id: kmNADH_AE     reactionID: re24
	kmNADH_AE_re24=0.43127;
	
// kmNAD_AE_re24   id: kmNAD_AE     reactionID: re24
	kmNAD_AE_re24=1.31442;
	
// Vmax_ACK_re25   id: Vmax_ACK     reactionID: re25
	Vmax_ACK_re25=3.83918;
	
// kmADP_ACK_re25   id: kmADP_ACK     reactionID: re25
	kmADP_ACK_re25=1.17242;
	
// kmATP_ACK_re25   id: kmATP_ACK     reactionID: re25
	kmATP_ACK_re25=14.1556;
	
// kmAcetCoA_ACK_re25   id: kmAcetCoA_ACK     reactionID: re25
	kmAcetCoA_ACK_re25=0.55824;
	
// kmAcetate_ACK_re25   id: kmAcetate_ACK     reactionID: re25
	kmAcetate_ACK_re25=0.552221;
	
// kmCoA_ACK_re25   id: kmCoA_ACK     reactionID: re25
	kmCoA_ACK_re25=0.173388;
	
// Keq_ALS_re26   id: Keq_ALS     reactionID: re26
	Keq_ALS_re26=900000;
	
// Vmax_ALS_re26   id: Vmax_ALS     reactionID: re26
	Vmax_ALS_re26=0.354581;
	
// kmAcetoin_ALS_re26   id: kmAcetoin_ALS     reactionID: re26
	kmAcetoin_ALS_re26=0.0495418;
	
// kmPYR_ALS_re26   id: kmPYR_ALS     reactionID: re26
	kmPYR_ALS_re26=0.262819;
	
// Keq_BDH_re27   id: Keq_BDH     reactionID: re27
	Keq_BDH_re27=1400;
	
// Vmax_BDH_re27   id: Vmax_BDH     reactionID: re27
	Vmax_BDH_re27=2.28578;
	
// kmAcetoin_BDH_re27   id: kmAcetoin_BDH     reactionID: re27
	kmAcetoin_BDH_re27=5.62373;
	
// kmButanediol_BDH_re27   id: kmButanediol_BDH     reactionID: re27
	kmButanediol_BDH_re27=1.80684;
	
// kmNADH_BDH_re27   id: kmNADH_BDH     reactionID: re27
	kmNADH_BDH_re27=3.54858;
	
// kmNAD_BDH_re27   id: kmNAD_BDH     reactionID: re27
	kmNAD_BDH_re27=1.29567;
	
// Keq_MPD_re28   id: Keq_MPD     reactionID: re28
	Keq_MPD_re28=200;
	
// Vmax_MPD_re28   id: Vmax_MPD     reactionID: re28
	Vmax_MPD_re28=1.32695;
	
// kiF6P_MPD_re28   id: kiF6P_MPD     reactionID: re28
	kiF6P_MPD_re28=22.0284;
	
// kmF6P_MPD_re28   id: kmF6P_MPD     reactionID: re28
	kmF6P_MPD_re28=0.321372;
	
// kmMannitol1Phoshate_MPD_re28   id: kmMannitol1Phoshate_MPD     reactionID: re28
	kmMannitol1Phoshate_MPD_re28=0.0891203;
	
// kmNADH_MPD_re28   id: kmNADH_MPD     reactionID: re28
	kmNADH_MPD_re28=0.0303446;
	
// kmNAD_MPD_re28   id: kmNAD_MPD     reactionID: re28
	kmNAD_MPD_re28=0.373149;
	
// Vmax_MP_re29   id: Vmax_MP     reactionID: re29
	Vmax_MP_re29=3.48563;
	
// kmMannitol1Phosphate_MP_re29   id: kmMannitol1Phosphate_MP     reactionID: re29
	kmMannitol1Phosphate_MP_re29=3.51571;
	
// kmMannitol_MP_re29   id: kmMannitol_MP     reactionID: re29
	kmMannitol_MP_re29=0.238849;
	
// Vmax_PTS_Man_re30   id: Vmax_PTS_Man     reactionID: re30
	Vmax_PTS_Man_re30=4.44903;
	
// kmMannitol1Phosphate_PTS_Man_re30   id: kmMannitol1Phosphate_PTS_Man     reactionID: re30
	kmMannitol1Phosphate_PTS_Man_re30=0.362571;
	
// kmMannitolExt_PTS_Man_re30   id: kmMannitolExt_PTS_Man     reactionID: re30
	kmMannitolExt_PTS_Man_re30=0.0127321;
	
// kmPEP_PTS_Man_re30   id: kmPEP_PTS_Man     reactionID: re30
	kmPEP_PTS_Man_re30=2.20816;
	
// kmPYR_PTS_Man_re30   id: kmPYR_PTS_Man     reactionID: re30
	kmPYR_PTS_Man_re30=0.344134;
	
// Vmax_Acetoin_transp_re31   id: Vmax_Acetoin_transp     reactionID: re31
	Vmax_Acetoin_transp_re31=1.60066;
	
// kmAcetoin_Acetoin_transp_re31   id: kmAcetoin_Acetoin_transp     reactionID: re31
	kmAcetoin_Acetoin_transp_re31=1.89255;
	
// kmAcetoin_Ext_Acetoin_transp_re31   id: kmAcetoin_Ext_Acetoin_transp     reactionID: re31
	kmAcetoin_Ext_Acetoin_transp_re31=7.05248;
	
// Vmax_Mannitol_transp_re32   id: Vmax_Mannitol_transp     reactionID: re32
	Vmax_Mannitol_transp_re32=1.62459;
	
// kmMannitol_Ext_Mannitol_transp_re32   id: kmMannitol_Ext_Mannitol_transp     reactionID: re32
	kmMannitol_Ext_Mannitol_transp_re32=0.940662;
	
// kmMannitol_Mannitol_transp_re32   id: kmMannitol_Mannitol_transp     reactionID: re32
	kmMannitol_Mannitol_transp_re32=0.0223502;
	
// Vmax_FBPase_re33   id: Vmax_FBPase     reactionID: re33
	Vmax_FBPase_re33=0.0970486;
	
// kmF6P_FBPase_re33   id: kmF6P_FBPase     reactionID: re33
	kmF6P_FBPase_re33=1.90796;
	
// kmFBP_FBPase_re33   id: kmFBP_FBPase     reactionID: re33
	kmFBP_FBPase_re33=0.412307;
	
// kmPint_FBPase_re33   id: kmPint_FBPase     reactionID: re33
	kmPint_FBPase_re33=0.0109675;
	



xdot=[
//x(1)   ID: G6P  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*()) + (1)*(1)* () );
	
//x(2)   ID: ATP  initialValue: 4.88632508879394
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*()) + (-1)*(1)* () + (-1)*(1)* (compartment_compartment_1*()) + (1)*(1)* (compartment_compartment_1*()) + (1)*(1)* (compartment_compartment_1*()) + (1)*(1)* () );
	
//x(3)   ID: ADP  initialValue: 20.3856905308319
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*()) + (-1)*(1)* (compartment_compartment_1*()) + (-1)*(1)* () + (1)*(1)* (compartment_compartment_1*()) + (1)*(1)* () + (1)*(1)* (compartment_compartment_1*()) );
	
//x(4)   ID: Pint  initialValue: 38.26
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*()) + (1)*(1)* (compartment_compartment_1*()) + (1)*(2)* () + (1)*(1)* (compartment_compartment_1*()) );
	
//x(5)   ID: F6P  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*()) + (-1)*(1)* (compartment_compartment_1*()) + (1)*(1)* (compartment_compartment_1*()) + (1)*(1)* (compartment_compartment_1*()) );
	
//x(6)   ID: FBP  initialValue: 15.3
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*()) + (-1)*(1)* (compartment_compartment_1*()) + (1)*(1)* (compartment_compartment_1*()) );
	
//x(7)   ID: G3P  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*()) + (1)*(2)* (compartment_compartment_1*()) );
	
//x(8)   ID: BPG  initialValue: 1.26348531244692
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*()) + (1)*(1)* (compartment_compartment_1*()) );
	
//x(9)   ID: PEP  initialValue: 2.4790177588998
	(1/compartment_compartment_1)*( (-1)*(1)* () + (-1)*(1)* (compartment_compartment_1*()) + (-1)*(1)* () + (1)*(1)* (compartment_compartment_1*()) );
	
//x(10)   ID: NAD  initialValue: 4.67
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*()) + (1)*(1)* () + (1)*(2)* () + (1)*(1)* () + (1)*(1)* (compartment_compartment_1*()) );
	
//x(11)   ID: NADH  initialValue: 2.03337939283534E-6
	(1/compartment_compartment_1)*( (-1)*(1)* () + (-1)*(2)* () + (-1)*(1)* () + (-1)*(1)* (compartment_compartment_1*()) + (1)*(1)* (compartment_compartment_1*()) );
	
//x(12)   ID: PYR  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* () + (-1)*(1)* () + (-1)*(2)* (compartment_compartment_1*()) + (1)*(1)* () + (1)*(1)* (compartment_compartment_1*()) + (1)*(1)* () );
	
//x(13)   ID: AcetCoA  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* () + (-1)*(1)* () + (1)*(1)* () );
	
//x(14)   ID: Acetoin  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* () + (-1)*(1)* () + (1)*(1)* (compartment_compartment_1*()) );
	
//x(15)   ID: Mannitol  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* () + (1)*(1)* (compartment_compartment_1*()) );
	
//x(16)   ID: Mannitol1Phosphate  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*()) + (1)*(1)* (compartment_compartment_1*()) + (1)*(1)* () );
	
//x(17)   ID: CoA  initialValue: 1
	(1/compartment_compartment_1)*( (-1)*(1)* () + (1)*(1)* () + (1)*(1)* () );
	
//x(18)   ID: Pext  initialValue: 50
	(1/compartment_compartment_2)*( (-1)*(1)* () );
	
//x(19)   ID: Lactate  initialValue: 0
	(1/compartment_compartment_2)*( (1)*(1)* () );
	
//x(20)   ID: Ethanol  initialValue: 0
	(1/compartment_compartment_2)*( (1)*(1)* () );
	
//x(21)   ID: Acetate  initialValue: 0
	(1/compartment_compartment_2)*( (1)*(1)* () );
	
//x(22)   ID: Butanediol  initialValue: 0
	(1/compartment_compartment_2)*( (1)*(1)* () );
	
//x(23)   ID: Glucose  initialValue: 80
	(1/compartment_compartment_2)*( (-1)*(1)* () );
	
//x(24)   ID: Acetoin_Ext  initialValue: 0
	(1/compartment_compartment_2)*( (1)*(1)* () );
	
//x(25)   ID: Mannitol_Ext  initialValue: 0
	(1/compartment_compartment_2)*( (-1)*(1)* () + (1)*(1)* () );
	
//x(26)   ID: Formate  initialValue: 0
	(1/compartment_compartment_2)*( (1)*(1)* () )
	];


	
endfunction
        x0=[0;4.88632508879394;20.3856905308319;38.26;0;15.3;0;1.26348531244692;2.4790177588998;4.67;2.03337939283534E-6;0;0;0;0;0;1;50;0;0;0;0;80;0;0;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)' 'x(14)' 'x(15)' 'x(16)' 'x(17)' 'x(18)' 'x(19)' 'x(20)' 'x(21)' 'x(22)' 'x(23)' 'x(24)' 'x(25)' 'x(26)'],[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18;19;20;21;22;23;24;25;26])

//real_variable:
	
	
//x(1)   id: G6P  initialValue: 0
	
//x(2)   id: ATP  initialValue: 4.88632508879394
	
//x(3)   id: ADP  initialValue: 20.3856905308319
	
//x(4)   id: Pint  initialValue: 38.26
	
//x(5)   id: F6P  initialValue: 0
	
//x(6)   id: FBP  initialValue: 15.3
	
//x(7)   id: G3P  initialValue: 0
	
//x(8)   id: BPG  initialValue: 1.26348531244692
	
//x(9)   id: PEP  initialValue: 2.4790177588998
	
//x(10)   id: NAD  initialValue: 4.67
	
//x(11)   id: NADH  initialValue: 2.03337939283534E-6
	
//x(12)   id: PYR  initialValue: 0
	
//x(13)   id: AcetCoA  initialValue: 0
	
//x(14)   id: Acetoin  initialValue: 0
	
//x(15)   id: Mannitol  initialValue: 0
	
//x(16)   id: Mannitol1Phosphate  initialValue: 0
	
//x(17)   id: CoA  initialValue: 1
	
//x(18)   id: Pext  initialValue: 50
	
//x(19)   id: Lactate  initialValue: 0
	
//x(20)   id: Ethanol  initialValue: 0
	
//x(21)   id: Acetate  initialValue: 0
	
//x(22)   id: Butanediol  initialValue: 0
	
//x(23)   id: Glucose  initialValue: 80
	
//x(24)   id: Acetoin_Ext  initialValue: 0
	
//x(25)   id: Mannitol_Ext  initialValue: 0
	
//x(26)   id: Formate  initialValue: 0