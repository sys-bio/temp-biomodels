
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_cell   id: cell
	compartment_cell=1;
		
// aada_ada   id: aada     reactionID: ada
	aada_ada=0.001062;
	
// fada4_ada   id: fada4     reactionID: ada
	fada4_ada=0.97;
	
// aade_ade   id: aade     reactionID: ade
	aade_ade=0.01;
	
// fade6_ade   id: fade6     reactionID: ade
	fade6_ade=0.55;
	
// aadna_adna   id: aadna     reactionID: adna
	aadna_adna=3.2789;
	
// fdnap9_adna   id: fdnap9     reactionID: adna
	fdnap9_adna=0.42;
	
// fdnap10_adna   id: fdnap10     reactionID: adna
	fdnap10_adna=0.33;
	
// aadrnr_adrnr   id: aadrnr     reactionID: adrnr
	aadrnr_adrnr=0.0602;
	
// fadrnr4_adrnr   id: fadrnr4     reactionID: adrnr
	fadrnr4_adrnr=0.1;
	
// fadrnr9_adrnr   id: fadrnr9     reactionID: adrnr
	fadrnr9_adrnr=-0.3;
	
// fadrnr10_adrnr   id: fadrnr10     reactionID: adrnr
	fadrnr10_adrnr=0.87;
	
// aampd_ampd   id: aampd     reactionID: ampd
	aampd_ampd=0.02688;
	
// fampd4_ampd   id: fampd4     reactionID: ampd
	fampd4_ampd=0.8;
	
// fampd8_ampd   id: fampd8     reactionID: ampd
	fampd8_ampd=-0.03;
	
// fampd18_ampd   id: fampd18     reactionID: ampd
	fampd18_ampd=-0.1;
	
// aaprt_aprt   id: aaprt     reactionID: aprt
	aaprt_aprt=233.8;
	
// faprt1_aprt   id: faprt1     reactionID: aprt
	faprt1_aprt=0.5;
	
// faprt4_aprt   id: faprt4     reactionID: aprt
	faprt4_aprt=-0.8;
	
// faprt6_aprt   id: faprt6     reactionID: aprt
	faprt6_aprt=0.75;
	
// aarna_arna   id: aarna     reactionID: arna
	aarna_arna=614.5;
	
// frnap4_arna   id: frnap4     reactionID: arna
	frnap4_arna=0.05;
	
// frnap8_arna   id: frnap8     reactionID: arna
	frnap8_arna=0.13;
	
// aasuc_asuc   id: aasuc     reactionID: asuc
	aasuc_asuc=3.5932;
	
// fasuc2_asuc   id: fasuc2     reactionID: asuc
	fasuc2_asuc=0.4;
	
// fasuc4_asuc   id: fasuc4     reactionID: asuc
	fasuc4_asuc=-0.24;
	
// fasuc8_asuc   id: fasuc8     reactionID: asuc
	fasuc8_asuc=0.2;
	
// fasuc18_asuc   id: fasuc18     reactionID: asuc
	fasuc18_asuc=-0.05;
	
// aasli_asli   id: aasli     reactionID: asli
	aasli_asli=66544;
	
// fasli3_asli   id: fasli3     reactionID: asli
	fasli3_asli=0.99;
	
// fasli4_asli   id: fasli4     reactionID: asli
	fasli4_asli=-0.95;
	
// adada_dada   id: adada     reactionID: dada
	adada_dada=0.03333;
	
// fdada9_dada   id: fdada9     reactionID: dada
	fdada9_dada=1;
	
// aden_den   id: aden     reactionID: den
	aden_den=5.2728;
	
// fden1_den   id: fden1     reactionID: den
	fden1_den=2;
	
// fden2_den   id: fden2     reactionID: den
	fden2_den=-0.06;
	
// fden4_den   id: fden4     reactionID: den
	fden4_den=-0.25;
	
// fden8_den   id: fden8     reactionID: den
	fden8_den=-0.2;
	
// fden18_den   id: fden18     reactionID: den
	fden18_den=-0.08;
	
// adgnuc_dgnuc   id: adgnuc     reactionID: dgnuc
	adgnuc_dgnuc=0.03333;
	
// fdgnuc10_dgnuc   id: fdgnuc10     reactionID: dgnuc
	fdgnuc10_dgnuc=1;
	
// adnaa_dnaa   id: adnaa     reactionID: dnaa
	adnaa_dnaa=0.001938;
	
// fdnan12_dnaa   id: fdnan12     reactionID: dnaa
	fdnan12_dnaa=1;
	
// adnag_dnag   id: adnag     reactionID: dnag
	adnag_dnag=0.001318;
	
// fdnan12_dnag   id: fdnan12     reactionID: dnag
	fdnan12_dnag=1;
	
// agdna_gdna   id: agdna     reactionID: gdna
	agdna_gdna=2.2296;
	
// fdnap9_gdna   id: fdnap9     reactionID: gdna
	fdnap9_gdna=0.42;
	
// fdnap10_gdna   id: fdnap10     reactionID: gdna
	fdnap10_gdna=0.33;
	
// agdrnr_gdrnr   id: agdrnr     reactionID: gdrnr
	agdrnr_gdrnr=0.1199;
	
// fgdrnr8_gdrnr   id: fgdrnr8     reactionID: gdrnr
	fgdrnr8_gdrnr=0.4;
	
// fgdrnr9_gdrnr   id: fgdrnr9     reactionID: gdrnr
	fgdrnr9_gdrnr=-1.2;
	
// fgdrnr10_gdrnr   id: fgdrnr10     reactionID: gdrnr
	fgdrnr10_gdrnr=-0.39;
	
// agmpr_gmpr   id: agmpr     reactionID: gmpr
	agmpr_gmpr=0.3005;
	
// fgmpr2_gmpr   id: fgmpr2     reactionID: gmpr
	fgmpr2_gmpr=-0.15;
	
// fgmpr4_gmpr   id: fgmpr4     reactionID: gmpr
	fgmpr4_gmpr=-0.07;
	
// fgmpr7_gmpr   id: fgmpr7     reactionID: gmpr
	fgmpr7_gmpr=-0.76;
	
// fgmpr8_gmpr   id: fgmpr8     reactionID: gmpr
	fgmpr8_gmpr=0.7;
	
// agmps_gmps   id: agmps     reactionID: gmps
	agmps_gmps=0.3738;
	
// fgmps4_gmps   id: fgmps4     reactionID: gmps
	fgmps4_gmps=0.12;
	
// fgmps7_gmps   id: fgmps7     reactionID: gmps
	fgmps7_gmps=0.16;
	
// agnuc_gnuc   id: agnuc     reactionID: gnuc
	agnuc_gnuc=0.2511;
	
// fgnuc8_gnuc   id: fgnuc8     reactionID: gnuc
	fgnuc8_gnuc=0.9;
	
// fgnuc18_gnuc   id: fgnuc18     reactionID: gnuc
	fgnuc18_gnuc=-0.34;
	
// agprt_gprt   id: agprt     reactionID: gprt
	agprt_gprt=361.69;
	
// fgprt1_gprt   id: fgprt1     reactionID: gprt
	fgprt1_gprt=1.2;
	
// fgprt8_gprt   id: fgprt8     reactionID: gprt
	fgprt8_gprt=-1.2;
	
// fgprt15_gprt   id: fgprt15     reactionID: gprt
	fgprt15_gprt=0.42;
	
// agrna_grna   id: agrna     reactionID: grna
	agrna_grna=409.6;
	
// frnap4_grna   id: frnap4     reactionID: grna
	frnap4_grna=0.05;
	
// frnap8_grna   id: frnap8     reactionID: grna
	frnap8_grna=0.13;
	
// agua_gua   id: agua     reactionID: gua
	agua_gua=0.4919;
	
// fgua15_gua   id: fgua15     reactionID: gua
	fgua15_gua=0.5;
	
// ahprt_hprt   id: ahprt     reactionID: hprt
	ahprt_hprt=12.569;
	
// fhprt1_hprt   id: fhprt1     reactionID: hprt
	fhprt1_hprt=1.1;
	
// fhprt2_hprt   id: fhprt2     reactionID: hprt
	fhprt2_hprt=-0.89;
	
// fhprt13_hprt   id: fhprt13     reactionID: hprt
	fhprt13_hprt=0.48;
	
// ahx_hx   id: ahx     reactionID: hx
	ahx_hx=0.003793;
	
// fhx13_hx   id: fhx13     reactionID: hx
	fhx13_hx=1.12;
	
// ahxd_hxd   id: ahxd     reactionID: hxd
	ahxd_hxd=0.2754;
	
// fhxd13_hxd   id: fhxd13     reactionID: hxd
	fhxd13_hxd=0.65;
	
// aimpd_impd   id: aimpd     reactionID: impd
	aimpd_impd=1.2823;
	
// fimpd2_impd   id: fimpd2     reactionID: impd
	fimpd2_impd=0.15;
	
// fimpd7_impd   id: fimpd7     reactionID: impd
	fimpd7_impd=-0.09;
	
// fimpd8_impd   id: fimpd8     reactionID: impd
	fimpd8_impd=-0.03;
	
// ainuc_inuc   id: ainuc     reactionID: inuc
	ainuc_inuc=0.9135;
	
// finuc2_inuc   id: finuc2     reactionID: inuc
	finuc2_inuc=0.8;
	
// finuc18_inuc   id: finuc18     reactionID: inuc
	finuc18_inuc=-0.36;
	
// amat_mat   id: amat     reactionID: mat
	amat_mat=7.2067;
	
// fmat4_mat   id: fmat4     reactionID: mat
	fmat4_mat=0.2;
	
// fmat5_mat   id: fmat5     reactionID: mat
	fmat5_mat=-0.6;
	
// apolyam_polyam   id: apolyam     reactionID: polyam
	apolyam_polyam=0.29;
	
// fpolyam5_polyam   id: fpolyam5     reactionID: polyam
	fpolyam5_polyam=0.9;
	
// aprpps_prpps   id: aprpps     reactionID: prpps
	aprpps_prpps=0.9;
	
// fprpps1_prpps   id: fprpps1     reactionID: prpps
	fprpps1_prpps=-0.03;
	
// fprpps4_prpps   id: fprpps4     reactionID: prpps
	fprpps4_prpps=-0.45;
	
// fprpps8_prpps   id: fprpps8     reactionID: prpps
	fprpps8_prpps=-0.04;
	
// fprpps17_prpps   id: fprpps17     reactionID: prpps
	fprpps17_prpps=0.65;
	
// fprpps18_prpps   id: fprpps18     reactionID: prpps
	fprpps18_prpps=0.7;
	
// apyr_pyr   id: apyr     reactionID: pyr
	apyr_pyr=1.2951;
	
// fpyr1_pyr   id: fpyr1     reactionID: pyr
	fpyr1_pyr=1.27;
	
// arnaa_rnaa   id: arnaa     reactionID: rnaa
	arnaa_rnaa=0.06923;
	
// frnan11_rnaa   id: frnan11     reactionID: rnaa
	frnan11_rnaa=1;
	
// arnag_rnag   id: arnag     reactionID: rnag
	arnag_rnag=0.04615;
	
// frnan11_rnag   id: frnan11     reactionID: rnag
	frnan11_rnag=1;
	
// atrans_trans   id: atrans     reactionID: trans
	atrans_trans=8.8539;
	
// ftrans5_trans   id: ftrans5     reactionID: trans
	ftrans5_trans=0.33;
	
// aua_ua   id: aua     reactionID: ua
	aua_ua=8.744e-05;
	
// fua16_ua   id: fua16     reactionID: ua
	fua16_ua=2.21;
	
// ax_x   id: ax     reactionID: x
	ax_x=0.0012;
	
// fx14_x   id: fx14     reactionID: x
	fx14_x=2;
	
// axd_xd   id: axd     reactionID: xd
	axd_xd=0.949;
	
// fxd14_xd   id: fxd14     reactionID: xd
	fxd14_xd=0.55;
	



xdot=[
//x(1)   ID: PRPP  initialValue: 5.01742
	(1/compartment_cell)*( (-1)*(1)* (aaprt_aprt*(power( x(1) ,faprt1_aprt))*(power( x(4) ,faprt4_aprt))*(power( x(6) ,faprt6_aprt))) + (-1)*(1)* (aden_den*(power( x(1) ,fden1_den))*(power( x(2) ,fden2_den))*(power( x(4) ,fden4_den))*(power( x(8) ,fden8_den))*(power( x(18) ,fden18_den))) + (-1)*(1)* (agprt_gprt*(power( x(1) ,fgprt1_gprt))*(power( x(8) ,fgprt8_gprt))*(power( x(15) ,fgprt15_gprt))) + (-1)*(1)* (ahprt_hprt*(power( x(1) ,fhprt1_hprt))*(power( x(2) ,fhprt2_hprt))*(power( x(13) ,fhprt13_hprt))) + (-1)*(1)* (apyr_pyr*(power( x(1) ,fpyr1_pyr))) + (1)*(1)* (aprpps_prpps*(power( x(1) ,fprpps1_prpps))*(power( x(4) ,fprpps4_prpps))*(power( x(8) ,fprpps8_prpps))*(power( x(17) ,fprpps17_prpps))*(power( x(18) ,fprpps18_prpps))) );
	
//x(2)   ID: IMP  initialValue: 98.2634
	(1/compartment_cell)*( (-1)*(1)* (aasuc_asuc*(power( x(2) ,fasuc2_asuc))*(power( x(4) ,fasuc4_asuc))*(power( x(8) ,fasuc8_asuc))*(power( x(18) ,fasuc18_asuc))) + (-1)*(1)* (aimpd_impd*(power( x(2) ,fimpd2_impd))*(power( x(7) ,fimpd7_impd))*(power( x(8) ,fimpd8_impd))) + (-1)*(1)* (ainuc_inuc*(power( x(2) ,finuc2_inuc))*(power( x(18) ,finuc18_inuc))) + (1)*(1)* (aampd_ampd*(power( x(4) ,fampd4_ampd))*(power( x(8) ,fampd8_ampd))*(power( x(18) ,fampd18_ampd))) + (1)*(1)* (aden_den*(power( x(1) ,fden1_den))*(power( x(2) ,fden2_den))*(power( x(4) ,fden4_den))*(power( x(8) ,fden8_den))*(power( x(18) ,fden18_den))) + (1)*(1)* (agmpr_gmpr*(power( x(2) ,fgmpr2_gmpr))*(power( x(4) ,fgmpr4_gmpr))*(power( x(7) ,fgmpr7_gmpr))*(power( x(8) ,fgmpr8_gmpr))) + (1)*(1)* (ahprt_hprt*(power( x(1) ,fhprt1_hprt))*(power( x(2) ,fhprt2_hprt))*(power( x(13) ,fhprt13_hprt))) );
	
//x(3)   ID: SAMP  initialValue: 0.198189
	(1/compartment_cell)*( (-1)*(1)* (aasli_asli*(power( x(3) ,fasli3_asli))*(power( x(4) ,fasli4_asli))) + (1)*(1)* (aasuc_asuc*(power( x(2) ,fasuc2_asuc))*(power( x(4) ,fasuc4_asuc))*(power( x(8) ,fasuc8_asuc))*(power( x(18) ,fasuc18_asuc))) );
	
//x(4)   ID: ATP  initialValue: 2475.35
	(1/compartment_cell)*( (-1)*(1)* (aada_ada*(power( x(4) ,fada4_ada))) + (-1)*(1)* (aadrnr_adrnr*(power( x(4) ,fadrnr4_adrnr))*(power( x(9) ,fadrnr9_adrnr))*(power( x(10) ,fadrnr10_adrnr))) + (-1)*(1)* (aampd_ampd*(power( x(4) ,fampd4_ampd))*(power( x(8) ,fampd8_ampd))*(power( x(18) ,fampd18_ampd))) + (-1)*(1)* (aarna_arna*(power( x(4) ,frnap4_arna))*(power( x(8) ,frnap8_arna))) + (-1)*(1)* (amat_mat*(power( x(4) ,fmat4_mat))*(power( x(5) ,fmat5_mat))) + (1)*(1)* (aaprt_aprt*(power( x(1) ,faprt1_aprt))*(power( x(4) ,faprt4_aprt))*(power( x(6) ,faprt6_aprt))) + (1)*(1)* (aasli_asli*(power( x(3) ,fasli3_asli))*(power( x(4) ,fasli4_asli))) + (1)*(1)* (arnaa_rnaa*(power( x(11) ,frnan11_rnaa))) + (1)*(1)* (atrans_trans*(power( x(5) ,ftrans5_trans))) );
	
//x(5)   ID: SAM  initialValue: 3.99187
	(1/compartment_cell)*( (-1)*(1)* (apolyam_polyam*(power( x(5) ,fpolyam5_polyam))) + (-1)*(1)* (atrans_trans*(power( x(5) ,ftrans5_trans))) + (1)*(1)* (amat_mat*(power( x(4) ,fmat4_mat))*(power( x(5) ,fmat5_mat))) );
	
//x(6)   ID: Ade  initialValue: 0.98473
	(1/compartment_cell)*( (-1)*(1)* (aade_ade*(power( x(6) ,fade6_ade))) + (-1)*(1)* (aaprt_aprt*(power( x(1) ,faprt1_aprt))*(power( x(4) ,faprt4_aprt))*(power( x(6) ,faprt6_aprt))) + (1)*(1)* (apolyam_polyam*(power( x(5) ,fpolyam5_polyam))) );
	
//x(7)   ID: XMP  initialValue: 24.793
	(1/compartment_cell)*( (-1)*(1)* (agmps_gmps*(power( x(4) ,fgmps4_gmps))*(power( x(7) ,fgmps7_gmps))) + (1)*(1)* (aimpd_impd*(power( x(2) ,fimpd2_impd))*(power( x(7) ,fimpd7_impd))*(power( x(8) ,fimpd8_impd))) );
	
//x(8)   ID: GTP  initialValue: 410.223
	(1/compartment_cell)*( (-1)*(1)* (agdrnr_gdrnr*(power( x(8) ,fgdrnr8_gdrnr))*(power( x(9) ,fgdrnr9_gdrnr))*(power( x(10) ,fgdrnr10_gdrnr))) + (-1)*(1)* (agmpr_gmpr*(power( x(2) ,fgmpr2_gmpr))*(power( x(4) ,fgmpr4_gmpr))*(power( x(7) ,fgmpr7_gmpr))*(power( x(8) ,fgmpr8_gmpr))) + (-1)*(1)* (agnuc_gnuc*(power( x(8) ,fgnuc8_gnuc))*(power( x(18) ,fgnuc18_gnuc))) + (-1)*(1)* (agrna_grna*(power( x(4) ,frnap4_grna))*(power( x(8) ,frnap8_grna))) + (1)*(1)* (agmps_gmps*(power( x(4) ,fgmps4_gmps))*(power( x(7) ,fgmps7_gmps))) + (1)*(1)* (agprt_gprt*(power( x(1) ,fgprt1_gprt))*(power( x(8) ,fgprt8_gprt))*(power( x(15) ,fgprt15_gprt))) + (1)*(1)* (arnag_rnag*(power( x(11) ,frnan11_rnag))) );
	
//x(9)   ID: dATP  initialValue: 6.01413
	(1/compartment_cell)*( (-1)*(1)* (aadna_adna*(power( x(9) ,fdnap9_adna))*(power( x(10) ,fdnap10_adna))) + (-1)*(1)* (adada_dada*(power( x(9) ,fdada9_dada))) + (1)*(1)* (aadrnr_adrnr*(power( x(4) ,fadrnr4_adrnr))*(power( x(9) ,fadrnr9_adrnr))*(power( x(10) ,fadrnr10_adrnr))) + (1)*(1)* (adnaa_dnaa*(power( x(12) ,fdnan12_dnaa))) );
	
//x(10)   ID: dGTP  initialValue: 3.02581
	(1/compartment_cell)*( (-1)*(1)* (adgnuc_dgnuc*(power( x(10) ,fdgnuc10_dgnuc))) + (-1)*(1)* (agdna_gdna*(power( x(9) ,fdnap9_gdna))*(power( x(10) ,fdnap10_gdna))) + (1)*(1)* (adnag_dnag*(power( x(12) ,fdnan12_dnag))) + (1)*(1)* (agdrnr_gdrnr*(power( x(8) ,fgdrnr8_gdrnr))*(power( x(9) ,fgdrnr9_gdrnr))*(power( x(10) ,fgdrnr10_gdrnr))) );
	
//x(11)   ID: RNA  initialValue: 28680.5
	(1/compartment_cell)*( (-1)*(1)* (arnaa_rnaa*(power( x(11) ,frnan11_rnaa))) + (-1)*(1)* (arnag_rnag*(power( x(11) ,frnan11_rnag))) + (1)*(1)* (aarna_arna*(power( x(4) ,frnap4_arna))*(power( x(8) ,frnap8_arna))) + (1)*(1)* (agrna_grna*(power( x(4) ,frnap4_grna))*(power( x(8) ,frnap8_grna))) );
	
//x(12)   ID: DNA  initialValue: 5179.34
	(1/compartment_cell)*( (-1)*(1)* (adnaa_dnaa*(power( x(12) ,fdnan12_dnaa))) + (-1)*(1)* (adnag_dnag*(power( x(12) ,fdnan12_dnag))) + (1)*(1)* (aadna_adna*(power( x(9) ,fdnap9_adna))*(power( x(10) ,fdnap10_adna))) + (1)*(1)* (agdna_gdna*(power( x(9) ,fdnap9_gdna))*(power( x(10) ,fdnap10_gdna))) );
	
//x(13)   ID: HX  initialValue: 9.51785
	(1/compartment_cell)*( (-1)*(1)* (ahprt_hprt*(power( x(1) ,fhprt1_hprt))*(power( x(2) ,fhprt2_hprt))*(power( x(13) ,fhprt13_hprt))) + (-1)*(1)* (ahx_hx*(power( x(13) ,fhx13_hx))) + (-1)*(1)* (ahxd_hxd*(power( x(13) ,fhxd13_hxd))) + (1)*(1)* (aada_ada*(power( x(4) ,fada4_ada))) + (1)*(1)* (adada_dada*(power( x(9) ,fdada9_dada))) + (1)*(1)* (ainuc_inuc*(power( x(2) ,finuc2_inuc))*(power( x(18) ,finuc18_inuc))) );
	
//x(14)   ID: Xa  initialValue: 5.05941
	(1/compartment_cell)*( (-1)*(1)* (ax_x*(power( x(14) ,fx14_x))) + (-1)*(1)* (axd_xd*(power( x(14) ,fxd14_xd))) + (1)*(1)* (agua_gua*(power( x(15) ,fgua15_gua))) + (1)*(1)* (ahxd_hxd*(power( x(13) ,fhxd13_hxd))) );
	
//x(15)   ID: Gua  initialValue: 5.50638
	(1/compartment_cell)*( (-1)*(1)* (agprt_gprt*(power( x(1) ,fgprt1_gprt))*(power( x(8) ,fgprt8_gprt))*(power( x(15) ,fgprt15_gprt))) + (-1)*(1)* (agua_gua*(power( x(15) ,fgua15_gua))) + (1)*(1)* (adgnuc_dgnuc*(power( x(10) ,fdgnuc10_dgnuc))) + (1)*(1)* (agnuc_gnuc*(power( x(8) ,fgnuc8_gnuc))*(power( x(18) ,fgnuc18_gnuc))) );
	
//x(16)   ID: UA  initialValue: 100.293
	(1/compartment_cell)*( (-1)*(1)* (aua_ua*(power( x(16) ,fua16_ua))) + (1)*(1)* (axd_xd*(power( x(14) ,fxd14_xd))) );
	
//x(17)   ID: R5P  initialValue: 18
	0;
	
//x(18)   ID: Pi  initialValue: 1400
	0
	];


	
endfunction
        x0=[5.01742;98.2634;0.198189;2475.35;3.99187;0.98473;24.793;410.223;6.01413;3.02581;28680.5;5179.34;9.51785;5.05941;5.50638;100.293;18;1400];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)' 'x(14)' 'x(15)' 'x(16)' 'x(17)' 'x(18)'],[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18])

//real_variable:
	
	
//x(1)   id: PRPP  initialValue: 5.01742
	
//x(2)   id: IMP  initialValue: 98.2634
	
//x(3)   id: SAMP  initialValue: 0.198189
	
//x(4)   id: ATP  initialValue: 2475.35
	
//x(5)   id: SAM  initialValue: 3.99187
	
//x(6)   id: Ade  initialValue: 0.98473
	
//x(7)   id: XMP  initialValue: 24.793
	
//x(8)   id: GTP  initialValue: 410.223
	
//x(9)   id: dATP  initialValue: 6.01413
	
//x(10)   id: dGTP  initialValue: 3.02581
	
//x(11)   id: RNA  initialValue: 28680.5
	
//x(12)   id: DNA  initialValue: 5179.34
	
//x(13)   id: HX  initialValue: 9.51785
	
//x(14)   id: Xa  initialValue: 5.05941
	
//x(15)   id: Gua  initialValue: 5.50638
	
//x(16)   id: UA  initialValue: 100.293
	
//x(17)   id: R5P  initialValue: 18
	
//x(18)   id: Pi  initialValue: 1400