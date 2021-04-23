
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_cell   id: cell
	compartment_cell=1;
		
// NA_p   id: NA
	NA_p=6.02E23;
		
// Vo_p   id: Vo
	Vo_p=1E-10;
		
// V_p   id: V
	V_p=3E-12;
		
// nM_p   id: nM
	nM_p=1E-9;
		
// SF2_p   id: SF2
	SF2_p=28621;
		
// PTP_p   id: PTP
	PTP_p=1;
		
// PTEN_p   id: PTEN
	PTEN_p=1;
		
// SHIP_p   id: SHIP
	SHIP_p=1;
		
// I_init_p   id: I_init
	I_init_p=0;
		
// Amino_Acids_input_p   id: Amino_Acids_input
	Amino_Acids_input_p=0;
		
// SynthG4_init_p   id: SynthG4_init
	SynthG4_init_p=1;
		
// SynthIR_init_p   id: SynthIR_init
	SynthIR_init_p=1;
		
// k_1_p   id: k_1
	k_1_p=0.2;
		
// k_2_p   id: k_2
	k_2_p=20;
		
// k3_p   id: k3
	k3_p=2500;
		
// k_3_p   id: k_3
	k_3_p=0.2;
		
// Kd_akt_p   id: Kd_akt
	Kd_akt_p=2.955E12;
		
// Kd_pkc_p   id: Kd_pkc
	Kd_pkc_p=2.955E12;
		
// Kd_p70_p   id: Kd_p70
	Kd_p70_p=400000000;
		
// n_p   id: n
	n_p=4;
		
// n_p70_p   id: n_p70
	n_p70_p=2;
		
// Vmax_p   id: Vmax
	Vmax_p=1;
		
// k4_p   id: k4
	k4_p=0.00033333333;
		
// k_4_p   id: k_4
	k_4_p=0.003;
		
// k4p_p   id: k4p
	k4p_p=0.0021;
		
// k_4p_p   id: k_4p
	k_4p_p=0.00021;
		
// k_5_p   id: k_5
	k_5_p=0.0012836059;
		
// k5_p   id: k5
	k5_p=38.636537;
		
// k6_p   id: k6
	k6_p=0.461;
		
// k7_p   id: k7
	k7_p=4.16;
		
// k_7_p   id: k_7
	k_7_p=2.22;
		
// k7p_p   id: k7p
	k7p_p=0.34657359;
		
// k_7p_p   id: k_7p
	k_7p_p=1.386;
		
// k8_p   id: k8
	k8_p=5.18091E-6;
		
// k_8_p   id: k_8
	k_8_p=10;
		
// k9s_p   id: k9s
	k9s_p=1.3862944;
		
// k9a_p   id: k9a
	k9a_p=1.99817E-5;
		
// k_10_p   id: k_10
	k_10_p=2.7725887;
		
// k11_p   id: k11
	k11_p=0.34657359;
		
// k12_p   id: k12
	k12_p=0.34657359;
		
// k13_p   id: k13
	k13_p=0.0069583333;
		
// k_13_p   id: k_13
	k_13_p=0.167;
		
// k13p_p   id: k13p
	k13p_p=0.104375;
		
// k_14_p   id: k_14
	k_14_p=0.001155;
		
// p15_p   id: p15
	p15_p=6.1129552E-7;
		
// p_15_p   id: p_15
	p_15_p=10;
		
// k15_p   id: k15
	k15_p=12;
		
// k_16_p   id: k_16
	k_16_p=0.0107215;
		
// k17_p   id: k17
	k17_p=0.002449799;
		
// k_19_p   id: k_19
	k_19_p=0.0183735;
		
// k_20_p   id: k_20
	k_20_p=0.69314718;
		
// k_21_p   id: k_21
	k_21_p=1.7650066E-5;
		
// kcat24_p   id: kcat24
	kcat24_p=399.6;
		
// alpha24_p   id: alpha24
	alpha24_p=0.00025;
		
// kcat28_p   id: kcat28
	kcat28_p=319.8;
		
// kcat29_p   id: kcat29
	kcat29_p=1200000;
		
// kcat30_p   id: kcat30
	kcat30_p=6;
		
// kcat31_p   id: kcat31
	kcat31_p=199.8;
		
// kcat32_p   id: kcat32
	kcat32_p=39.96;
		
// beta32_p   id: beta32
	beta32_p=2;
		
// kcat33_p   id: kcat33
	kcat33_p=7.98;
		
// kcat35_p   id: kcat35
	kcat35_p=19.98;
		
// kcat36_p   id: kcat36
	kcat36_p=39.96;
		
// kcat39_p   id: kcat39
	kcat39_p=2.796;
		
// k_39_p   id: k_39
	k_39_p=0.003996;
		
// k41_p   id: k41
	k41_p=39.96;
		
// u_p   id: u
	u_p=1806;
		
// IR_free_memb_init_p   id: IR_free_memb_init
	IR_free_memb_init_p=270900;
		
// IR_free_cyt_init_p   id: IR_free_cyt_init
	IR_free_cyt_init_p=30100;
		
// IRS1_init_p   id: IRS1_init
	IRS1_init_p=541800;
		
// PI3K_init_p   id: PI3K_init
	PI3K_init_p=361200;
		
// PI45_init_p   id: PI45_init
	PI45_init_p=5.385492E5;
		
// PI345_init_p   id: PI345_init
	PI345_init_p=1679.58;
		
// PI34_init_p   id: PI34_init
	PI34_init_p=1571.22;
		
// PKC_init_p   id: PKC_init
	PKC_init_p=180600;
		
// GLUT4_memb_init_p   id: GLUT4_memb_init
	GLUT4_memb_init_p=2167200;
		
// GLUT4_cyt_init_p   id: GLUT4_cyt_init
	GLUT4_cyt_init_p=52012800;
		
// AMPK_init_p   id: AMPK_init
	AMPK_init_p=5.869136744E5;
		
// mTORC1_init_p   id: mTORC1_init
	mTORC1_init_p=7.1953194E5;
		
// mTORC2_init_p   id: mTORC2_init
	mTORC2_init_p=5.379574539E5;
		
// p70S6K_init_p   id: p70S6K_init
	p70S6K_init_p=4.09308921E5;
		
// TSC1_TSC2_pT1462_init_p   id: TSC1_TSC2_pT1462_init
	TSC1_TSC2_pT1462_init_p=4.269537675E5;
		
// PI3K_variant_init_p   id: PI3K_variant_init
	PI3K_variant_init_p=5.419243245E5;
		
// GS_init_p   id: GS_init
	GS_init_p=361200;
		
// RasGAP_init_p   id: RasGAP_init
	RasGAP_init_p=90300;
		
// SHP2_init_p   id: SHP2_init
	SHP2_init_p=541800;
		
// iSrc_init_p   id: iSrc_init
	iSrc_init_p=935508;
		
// RasGDP_init_p   id: RasGDP_init
	RasGDP_init_p=270900;
		
// Raf_init_p   id: Raf_init
	Raf_init_p=180600;
		
// Mek_init_p   id: Mek_init
	Mek_init_p=361200;
		
// Erk_init_p   id: Erk_init
	Erk_init_p=722400;
		
// Akt_init_p   id: Akt_init
	Akt_init_p=180600;
		
// k1_p   id: k1
	k1_p=9.96677740863787E-7;
		
// k2_p   id: k2
	k2_p=9.96677740863787E-7;
		
// k_9_p   id: k_9
	k_9_p=42.0360237419355;
		
// k9b_p   id: k9b
	k9b_p=0.131098263179074;
		
// k10_p   id: k10
	k10_p=2.9638017137931;
		
// k_11_p   id: k_11
	k_11_p=3.4657359;
		
// k_12_p   id: k_12
	k_12_p=3.4657359;
		
// k14_p   id: k14
	k14_p=6.0074784E4;
		
// k16_p   id: k16
	k16_p=0.000342324167569267;
		
// k_17_p   id: k_17
	k_17_p=0.0341513285744639;
		
// k_18_p   id: k_18
	k_18_p=3.7263547744663E-7;
		
// k18_p   id: k18
	k18_p=1.48142971943678E-8;
		
// k19_p   id: k19
	k19_p=1.31146011669753E-5;
		
// k20_p   id: k20
	k20_p=3.92661376963177E-6;
		
// k21_p   id: k21
	k21_p=1.27734530589427E-6;
		
// k22_p   id: k22
	k22_p=2.21262458471761E-9;
		
// k_22_p   id: k_22
	k_22_p=7.992;
		
// Km24_p   id: Km24
	Km24_p=198660;
		
// V25_p   id: V25
	V25_p=7.216776E5;
		
// Km25_p   id: Km25
	Km25_p=90300;
		
// k26_p   id: k26
	k26_p=2.21262458471761E-5;
		
// k_26_p   id: k_26
	k_26_p=3996;
		
// k27_p   id: k27
	k27_p=2.21262458471761E-5;
		
// k_27_p   id: k_27
	k_27_p=39.96;
		
// Km28_p   id: Km28
	Km28_p=90300;
		
// bRasGAP_p   id: bRasGAP
	bRasGAP_p=0.01806;
		
// Km29_p   id: Km29
	Km29_p=90300;
		
// Km30_p   id: Km30
	Km30_p=722400;
		
// Km31_p   id: Km31
	Km31_p=18060;
		
// PKA_p   id: PKA
	PKA_p=180600;
		
// Km32_p   id: Km32
	Km32_p=18060000;
		
// alpha32_p   id: alpha32
	alpha32_p=3.32225913621263E-8;
		
// Km33_p   id: Km33
	Km33_p=90300;
		
// V34_p   id: V34
	V34_p=1798776;
		
// Km34_p   id: Km34
	Km34_p=1.219589994E6;
		
// Km35_p   id: Km35
	Km35_p=903000;
		
// Km36_p   id: Km36
	Km36_p=903000;
		
// V37_p   id: V37
	V37_p=3608388;
		
// Km37_p   id: Km37
	Km37_p=903000;
		
// Km38_p   id: Km38
	Km38_p=903000;
		
// V38_p   id: V38
	V38_p=2.5280388E6;
		
// Km39_p   id: Km39
	Km39_p=9030000;
		
// V40_p   id: V40
	V40_p=36083880;
		
// Km40_p   id: Km40
	Km40_p=2.587998E5;
		
// k42_p   id: k42
	k42_p=0.000441860465116279;
		
// _rateLaw1_p   id: _rateLaw1
	_rateLaw1_p=42.0360237419355;
		
// _rateLaw2_p   id: _rateLaw2
	_rateLaw2_p=2.7725887;
		
// IRS1_unphos_p   id: IRS1_unphos
	IRS1_unphos_p=541800;
		
// IRS1_pY_p   id: IRS1_pY
	IRS1_pY_p=0;
		
// IRS1_pS636_p   id: IRS1_pS636
	IRS1_pS636_p=0;
		
// IRS1_pYtot_p   id: IRS1_pYtot
	IRS1_pYtot_p=0;
		
// IRS1_PI3K_complex_p   id: IRS1_PI3K_complex
	IRS1_PI3K_complex_p=0;
		
// PI3K_variant_p_p   id: PI3K_variant_p
	PI3K_variant_p_p=0;
		
// Akt_pT_p   id: Akt_pT
	Akt_pT_p=0;
		
// Akt_pS_p   id: Akt_pS
	Akt_pS_p=0;
		
// mTORC1_p   id: mTORC1
	mTORC1_p=7.1953194E5;
		
// mTORC1_pS2448_p   id: mTORC1_pS2448
	mTORC1_pS2448_p=0;
		
// p70S6K_pT389_p   id: p70S6K_pT389
	p70S6K_pT389_p=0;
		
// TSC1_TSC2_pS1387_p   id: TSC1_TSC2_pS1387
	TSC1_TSC2_pS1387_p=0;
		
// TSC1_TSC2_pT1462_p   id: TSC1_TSC2_pT1462
	TSC1_TSC2_pT1462_p=4.2695377E5;
		
// mTORC2_pS2481_p   id: mTORC2_pS2481
	mTORC2_pS2481_p=0;
		
// PI345_p   id: PI345
	PI345_p=1679.58;
		
// PKC_pT410_p   id: PKC_pT410
	PKC_pT410_p=0;
		
// GLUT4_memb_p   id: GLUT4_memb
	GLUT4_memb_p=2167200;
		
// IR_unphos_memb_p   id: IR_unphos_memb
	IR_unphos_memb_p=270900;
		
// IR_bound_memb_p   id: IR_bound_memb
	IR_bound_memb_p=0;
		
// IR_bound1_memb_p   id: IR_bound1_memb
	IR_bound1_memb_p=0;
		
// IR_bound2_memb_p   id: IR_bound2_memb
	IR_bound2_memb_p=0;
		
// IR_phos_memb_p   id: IR_phos_memb
	IR_phos_memb_p=0;
		
// Insulin_p   id: Insulin
	Insulin_p=6020000;
		
// PI34_p   id: PI34
	PI34_p=1571.22;
		
// GLUT4_cyt_p   id: GLUT4_cyt
	GLUT4_cyt_p=52012800;
		
// Aminoacids_p   id: Aminoacids
	Aminoacids_p=286212;
		
// AMPK_pT172_p   id: AMPK_pT172
	AMPK_pT172_p=0;
		
// Akt_pT309_p   id: Akt_pT309
	Akt_pT309_p=0;
		
// Akt_pS474_p   id: Akt_pS474
	Akt_pS474_p=0;
		
// Akt_pp_p   id: Akt_pp
	Akt_pp_p=0;
		
// iSrc_p   id: iSrc
	iSrc_p=935508;
		
// aSrc_p   id: aSrc
	aSrc_p=0;
		
// RasGDP_p   id: RasGDP
	RasGDP_p=270900;
		
// IRS1_GS_complex_p   id: IRS1_GS_complex
	IRS1_GS_complex_p=0;
		
// RasGTP_p   id: RasGTP
	RasGTP_p=0;
		
// IR_RasGAP_complex_p   id: IR_RasGAP_complex
	IR_RasGAP_complex_p=0;
		
// Raf_p   id: Raf
	Raf_p=180600;
		
// aRaf_p   id: aRaf
	aRaf_p=0;
		
// aaRaf_p   id: aaRaf
	aaRaf_p=0;
		
// Mek_p   id: Mek
	Mek_p=361200;
		
// Mek_pS218_S222_p   id: Mek_pS218_S222
	Mek_pS218_S222_p=0;
		
// Erk_p   id: Erk
	Erk_p=722400;
		
// Erk_pT202_T185_p   id: Erk_pT202_T185
	Erk_pT202_T185_p=0;
		
// Erk_ppY204_Y187_p   id: Erk_ppY204_Y187
	Erk_ppY204_Y187_p=0;
		
// GS_p   id: GS
	GS_p=361200;
		
// iGS_p   id: iGS
	iGS_p=0;
		
// IRS1_SHP2_complex_p   id: IRS1_SHP2_complex
	IRS1_SHP2_complex_p=0;
		
// f_3_p   id: f_3
	f_3_p=0.2;
		
// f6_p   id: f6
	f6_p=0.461;
		
// f7_p   id: f7
	f7_p=0;
		
// f_7_p   id: f_7
	f_7_p=2.22;
		
// f7p_p   id: f7p
	f7p_p=0;
		
// f9_p   id: f9
	f9_p=0.131098263179074;
		
// f11_p   id: f11
	f11_p=0;
		
// f12_p   id: f12
	f12_p=0;
		
// f13_p   id: f13
	f13_p=0.0069583333;
		
// fp15_p   id: fp15
	fp15_p=0;
		
// f15_p   id: f15
	f15_p=0;
		
// f16_p   id: f16
	f16_p=0;
		
// f17_p   id: f17
	f17_p=0;
		
// f_18_p   id: f_18
	f_18_p=0;
		
// f18_p   id: f18
	f18_p=0.00424002962859439;
		
// f19_p   id: f19
	f19_p=0;
		
// f20_p   id: f20
	f20_p=0;
		
// f_21_p   id: f_21
	f_21_p=0;
		
// f21_p   id: f21
	f21_p=0;
		
// f24_p   id: f24
	f24_p=0;
		
// f25_p   id: f25
	f25_p=7.992;
		
// f28_p   id: f28
	f28_p=0;
		
// f29_p   id: f29
	f29_p=0.24;
		
// f30_p   id: f30
	f30_p=0;
		
// f31_p   id: f31
	f31_p=0;
		
// f32_p   id: f32
	f32_p=0.3996;
		
// f33_p   id: f33
	f33_p=0;
		
// f34_p   id: f34
	f34_p=1.47490222849434;
		
// f35_p   id: f35
	f35_p=0;
		
// f36_p   id: f36
	f36_p=0;
		
// f37_p   id: f37
	f37_p=3.996;
		
// f38_p   id: f38
	f38_p=2.7996;
		
// f39_p   id: f39
	f39_p=0;
		
// f_39_p   id: f_39
	f_39_p=0.003996;
		
// f40_p   id: f40
	f40_p=139.427773900907;
		
// f42_p   id: f42
	f42_p=0;
		



xdot=[
//x(1)   ID: S1  initialValue: 6020000
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*()) + (-1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) );
	
//x(2)   ID: S2  initialValue: 270900
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*()) + (-1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) );
	
//x(3)   ID: S3  initialValue: 30100
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*()) + (-1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) );
	
//x(4)   ID: S4  initialValue: 541800
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*()) + (-1)*(1)* (compartment_cell*()) + (-1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) );
	
//x(5)   ID: S5  initialValue: 361200
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) );
	
//x(6)   ID: S6  initialValue: 5.4192432E5
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) );
	
//x(7)   ID: S7  initialValue: 5.385492E5
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) );
	
//x(8)   ID: S8  initialValue: 1679.58
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*()) + (-1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) );
	
//x(9)   ID: S9  initialValue: 1571.22
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) );
	
//x(10)   ID: S10  initialValue: 180600
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) );
	
//x(11)   ID: S11  initialValue: 52012800
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*()) + (-1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) );
	
//x(12)   ID: S12  initialValue: 2167200
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) );
	
//x(13)   ID: S13  initialValue: 286212
	0;
	
//x(14)   ID: S14  initialValue: 5.8691506E5
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) );
	
//x(15)   ID: S15  initialValue: 180600
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*()) + (-1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) );
	
//x(16)   ID: S16  initialValue: 7.1953194E5
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) );
	
//x(17)   ID: S17  initialValue: 5.3795681E5
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) );
	
//x(18)   ID: S18  initialValue: 4.0930787E5
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) );
	
//x(19)   ID: S19  initialValue: 4.2695377E5
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) );
	
//x(20)   ID: S20  initialValue: 361200
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*()) + (-1)*(1)* (compartment_cell*()) + (-1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) );
	
//x(21)   ID: S21  initialValue: 90300
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*()) + (-1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) );
	
//x(22)   ID: S22  initialValue: 541800
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) );
	
//x(23)   ID: S23  initialValue: 935508
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) );
	
//x(24)   ID: S24  initialValue: 270900
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) );
	
//x(25)   ID: S25  initialValue: 180600
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) );
	
//x(26)   ID: S26  initialValue: 361200
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) );
	
//x(27)   ID: S27  initialValue: 722400
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) );
	
//x(28)   ID: S28  initialValue: 1
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) );
	
//x(29)   ID: S29  initialValue: 1
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) );
	
//x(30)   ID: S30  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*()) + (-1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) );
	
//x(31)   ID: S31  initialValue: 3.6068052E6
	(1/compartment_cell)*( (1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) );
	
//x(32)   ID: S32  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*()) + (-1)*(1)* (compartment_cell*()) + (-1)*(1)* (compartment_cell*()) + (-1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) );
	
//x(33)   ID: S33  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) );
	
//x(34)   ID: S34  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*()) + (-1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) );
	
//x(35)   ID: S35  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) );
	
//x(36)   ID: S36  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) );
	
//x(37)   ID: S37  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) );
	
//x(38)   ID: S38  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*()) + (-1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) );
	
//x(39)   ID: S39  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) );
	
//x(40)   ID: S40  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) );
	
//x(41)   ID: S41  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) );
	
//x(42)   ID: S42  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) );
	
//x(43)   ID: S43  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) );
	
//x(44)   ID: S44  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) );
	
//x(45)   ID: S45  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) );
	
//x(46)   ID: S46  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) );
	
//x(47)   ID: S47  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*()) + (-1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) );
	
//x(48)   ID: S48  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) );
	
//x(49)   ID: S49  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*()) + (-1)*(1)* (compartment_cell*()) + (-1)*(1)* (compartment_cell*()) + (-1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) );
	
//x(50)   ID: S50  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*()) + (-1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) );
	
//x(51)   ID: S51  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*()) + (-1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) );
	
//x(52)   ID: S52  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*()) + (-1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) );
	
//x(53)   ID: S53  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*()) + (-1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) );
	
//x(54)   ID: S54  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) );
	
//x(55)   ID: S55  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) );
	
//x(56)   ID: S56  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*()) + (-1)*(1)* (compartment_cell*()) + (-1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) );
	
//x(57)   ID: S57  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*()) + (-1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) );
	
//x(58)   ID: S58  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*()) + (-1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) );
	
//x(59)   ID: S59  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*()) + (-1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) );
	
//x(60)   ID: S60  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*()) + (-1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) );
	
//x(61)   ID: S61  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*()) + (-1)*(1)* (compartment_cell*()) + (1)*(1)* (compartment_cell*()) )
	];


	
endfunction
        x0=[6020000;270900;30100;541800;361200;5.4192432E5;5.385492E5;1679.58;1571.22;180600;52012800;2167200;286212;5.8691506E5;180600;7.1953194E5;5.3795681E5;4.0930787E5;4.2695377E5;361200;90300;541800;935508;270900;180600;361200;722400;1;1;0;3.6068052E6;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)' 'x(14)' 'x(15)' 'x(16)' 'x(17)' 'x(18)' 'x(19)' 'x(20)' 'x(21)' 'x(22)' 'x(23)' 'x(24)' 'x(25)' 'x(26)' 'x(27)' 'x(28)' 'x(29)' 'x(30)' 'x(31)' 'x(32)' 'x(33)' 'x(34)' 'x(35)' 'x(36)' 'x(37)' 'x(38)' 'x(39)' 'x(40)' 'x(41)' 'x(42)' 'x(43)' 'x(44)' 'x(45)' 'x(46)' 'x(47)' 'x(48)' 'x(49)' 'x(50)' 'x(51)' 'x(52)' 'x(53)' 'x(54)' 'x(55)' 'x(56)' 'x(57)' 'x(58)' 'x(59)' 'x(60)' 'x(61)'],[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18;19;20;21;22;23;24;25;26;27;28;29;30;31;32;33;34;35;36;37;38;39;40;41;42;43;44;45;46;47;48;49;50;51;52;53;54;55;56;57;58;59;60;61])

//real_variable:
	
	
//x(1)   id: S1  initialValue: 6020000
	
//x(2)   id: S2  initialValue: 270900
	
//x(3)   id: S3  initialValue: 30100
	
//x(4)   id: S4  initialValue: 541800
	
//x(5)   id: S5  initialValue: 361200
	
//x(6)   id: S6  initialValue: 5.4192432E5
	
//x(7)   id: S7  initialValue: 5.385492E5
	
//x(8)   id: S8  initialValue: 1679.58
	
//x(9)   id: S9  initialValue: 1571.22
	
//x(10)   id: S10  initialValue: 180600
	
//x(11)   id: S11  initialValue: 52012800
	
//x(12)   id: S12  initialValue: 2167200
	
//x(13)   id: S13  initialValue: 286212
	
//x(14)   id: S14  initialValue: 5.8691506E5
	
//x(15)   id: S15  initialValue: 180600
	
//x(16)   id: S16  initialValue: 7.1953194E5
	
//x(17)   id: S17  initialValue: 5.3795681E5
	
//x(18)   id: S18  initialValue: 4.0930787E5
	
//x(19)   id: S19  initialValue: 4.2695377E5
	
//x(20)   id: S20  initialValue: 361200
	
//x(21)   id: S21  initialValue: 90300
	
//x(22)   id: S22  initialValue: 541800
	
//x(23)   id: S23  initialValue: 935508
	
//x(24)   id: S24  initialValue: 270900
	
//x(25)   id: S25  initialValue: 180600
	
//x(26)   id: S26  initialValue: 361200
	
//x(27)   id: S27  initialValue: 722400
	
//x(28)   id: S28  initialValue: 1
	
//x(29)   id: S29  initialValue: 1
	
//x(30)   id: S30  initialValue: 0
	
//x(31)   id: S31  initialValue: 3.6068052E6
	
//x(32)   id: S32  initialValue: 0
	
//x(33)   id: S33  initialValue: 0
	
//x(34)   id: S34  initialValue: 0
	
//x(35)   id: S35  initialValue: 0
	
//x(36)   id: S36  initialValue: 0
	
//x(37)   id: S37  initialValue: 0
	
//x(38)   id: S38  initialValue: 0
	
//x(39)   id: S39  initialValue: 0
	
//x(40)   id: S40  initialValue: 0
	
//x(41)   id: S41  initialValue: 0
	
//x(42)   id: S42  initialValue: 0
	
//x(43)   id: S43  initialValue: 0
	
//x(44)   id: S44  initialValue: 0
	
//x(45)   id: S45  initialValue: 0
	
//x(46)   id: S46  initialValue: 0
	
//x(47)   id: S47  initialValue: 0
	
//x(48)   id: S48  initialValue: 0
	
//x(49)   id: S49  initialValue: 0
	
//x(50)   id: S50  initialValue: 0
	
//x(51)   id: S51  initialValue: 0
	
//x(52)   id: S52  initialValue: 0
	
//x(53)   id: S53  initialValue: 0
	
//x(54)   id: S54  initialValue: 0
	
//x(55)   id: S55  initialValue: 0
	
//x(56)   id: S56  initialValue: 0
	
//x(57)   id: S57  initialValue: 0
	
//x(58)   id: S58  initialValue: 0
	
//x(59)   id: S59  initialValue: 0
	
//x(60)   id: S60  initialValue: 0
	
//x(61)   id: S61  initialValue: 0