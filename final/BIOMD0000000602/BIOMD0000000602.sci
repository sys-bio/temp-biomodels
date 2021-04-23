
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_Cytosol   id: Cytosol
	compartment_Cytosol=1;
		
// scaling_p   id: scaling
	scaling_p=1;
		
// AADAT_E_T_kat1_p   id: AADAT_E_T_kat1
	AADAT_E_T_kat1_p=9455.1357421875;
		
// AADAT_E_T_kat2_p   id: AADAT_E_T_kat2
	AADAT_E_T_kat2_p=7744.3154296875;
		
// AADAT_E_T_kat3_p   id: AADAT_E_T_kat3
	AADAT_E_T_kat3_p=1.55882099609375E4;
		
// AADAT_Km_hLkynr_p   id: AADAT_Km_hLkynr
	AADAT_Km_hLkynr_p=3.8;
		
// AADAT_Km_Lkynr_p   id: AADAT_Km_Lkynr
	AADAT_Km_Lkynr_p=4.7;
		
// AANAT_E_T_p   id: AANAT_E_T
	AANAT_E_T_p=2770.9680175781;
		
// AANAT_Km_Srtn_p   id: AANAT_Km_Srtn
	AANAT_Km_Srtn_p=1.35;
		
// AANAT_Km_trypta_p   id: AANAT_Km_trypta
	AANAT_Km_trypta_p=0.88;
		
// AFMID_E_T_p   id: AFMID_E_T
	AFMID_E_T_p=1.58202158203125E4;
		
// AFMID_Km_5hoxnfky_p   id: AFMID_Km_5hoxnfky
	AFMID_Km_5hoxnfky_p=0.4;
		
// AFMID_Km_Lfmkynr_p   id: AFMID_Km_Lfmkynr
	AFMID_Km_Lfmkynr_p=0.05;
		
// AFMID_Km_nformanth_p   id: AFMID_Km_nformanth
	AFMID_Km_nformanth_p=0.211;
		
// DDC_E_T_p   id: DDC_E_T
	DDC_E_T_p=3.60749140625E4;
		
// DDC_Km_5htrp_p   id: DDC_Km_5htrp
	DDC_Km_5htrp_p=0.049;
		
// DDC_Km_trp_DASH_L_p   id: DDC_Km_trp_DASH_L
	DDC_Km_trp_DASH_L_p=10;
		
// IDO_E_T_p   id: IDO_E_T
	IDO_E_T_p=453.4833679199;
		
// IDO_Km_trp_DASH_L_p   id: IDO_Km_trp_DASH_L
	IDO_Km_trp_DASH_L_p=0.045;
		
// IDO_Km_5htrp_p   id: IDO_Km_5htrp
	IDO_Km_5htrp_p=0.02;
		
// IDO_Km_srtn_p   id: IDO_Km_srtn
	IDO_Km_srtn_p=0.1;
		
// IMNT_E_T_p   id: IMNT_E_T
	IMNT_E_T_p=4186.5874023438;
		
// IMNT_Km_srtn_p   id: IMNT_Km_srtn
	IMNT_Km_srtn_p=1.38;
		
// IMNT_Km_trypta_p   id: IMNT_Km_trypta
	IMNT_Km_trypta_p=0.27;
		
// IMNT_Km_nmtrpta_p   id: IMNT_Km_nmtrpta
	IMNT_Km_nmtrpta_p=0.086;
		
// KYNU_Km_hLkynr_p   id: KYNU_Km_hLkynr
	KYNU_Km_hLkynr_p=0.028;
		
// Transporter_E_T_Slc7a8_p   id: Transporter_E_T_Slc7a8
	Transporter_E_T_Slc7a8_p=2226.3728027344;
		
// KYNU_E_T_p   id: KYNU_E_T
	KYNU_E_T_p=5.66017578125E4;
		
// KYNU_Km_Lfmkynr_p   id: KYNU_Km_Lfmkynr
	KYNU_Km_Lfmkynr_p=2.2;
		
// KYNU_Km_Lkynr_p   id: KYNU_Km_Lkynr
	KYNU_Km_Lkynr_p=0.495;
		
// Transporter_Km_Lkynr_p   id: Transporter_Km_Lkynr
	Transporter_Km_Lkynr_p=0.032;
		
// Transporter_Km_Trp_Slc7a8_p   id: Transporter_Km_Trp_Slc7a8
	Transporter_Km_Trp_Slc7a8_p=0.0573;
		
// Transporter_E_T_Slc7a5_p   id: Transporter_E_T_Slc7a5
	Transporter_E_T_Slc7a5_p=1961.5135498047;
		
// Transporter_Km_Trp_Slc7a5_p   id: Transporter_Km_Trp_Slc7a5
	Transporter_Km_Trp_Slc7a5_p=0.019;
		
// MAOA_E_T_p   id: MAOA_E_T
	MAOA_E_T_p=1.372048125E5;
		
// MAOB_E_T_p   id: MAOB_E_T
	MAOB_E_T_p=2.94114875E5;
		
// MAO_Km_srtn_p   id: MAO_Km_srtn
	MAO_Km_srtn_p=0.43;
		
// MAO_Km_trypta_p   id: MAO_Km_trypta
	MAO_Km_trypta_p=0.033;
		
// IDO_Km_O2_p   id: IDO_Km_O2
	IDO_Km_O2_p=0.042;
		
// AADAT_kcat_hLkynr_p   id: AADAT_kcat_hLkynr
	AADAT_kcat_hLkynr_p=1.7;
		
// AADAT_kcat_Lkynr_p   id: AADAT_kcat_Lkynr
	AADAT_kcat_Lkynr_p=9.76;
		
// Transporter_kcat_Trp_p   id: Transporter_kcat_Trp
	Transporter_kcat_Trp_p=1.3;
		
// Transporter_kcat_Lkynr_p   id: Transporter_kcat_Lkynr
	Transporter_kcat_Lkynr_p=1.3;
		
// M_5hxkyn_c_s   id: M_5hxkyn_c
	M_5hxkyn_c_s=0;
		
// M_ahcys_c_s   id: M_ahcys_c
	M_ahcys_c_s=1;
		
// M_akg_c_s   id: M_akg_c
	M_akg_c_s=0.9999999518;
		
// M_ala_DASH_L_c_s   id: M_ala_DASH_L_c
	M_ala_DASH_L_c_s=1;
		
// M_amet_c_s   id: M_amet_c
	M_amet_c_s=0.9999999518;
		
// M_anth_c_s   id: M_anth_c
	M_anth_c_s=0;
		
// M_dhbpt_c_s   id: M_dhbpt_c
	M_dhbpt_c_s=1;
		
// M_for_c_s   id: M_for_c
	M_for_c_s=0;
		
// M_glu_DASH_L_c_s   id: M_glu_DASH_L_c
	M_glu_DASH_L_c_s=0;
		
// M_id3acald_c_s   id: M_id3acald_c
	M_id3acald_c_s=0;
		
// M_indpyr_c_s   id: M_indpyr_c
	M_indpyr_c_s=0;
		
// M_thbpt_s   id: M_thbpt
	M_thbpt_s=1;
		
// M_trna_trp_c_s   id: M_trna_trp_c
	M_trna_trp_c_s=1E-5;
		
// M_trp_L_trna_c_s   id: M_trp_L_trna_c
	M_trp_L_trna_c_s=0;
		
// M_amp_c_s   id: M_amp_c
	M_amp_c_s=0.999999951844375;
		
// M_atp_c_s   id: M_atp_c
	M_atp_c_s=0.999999951844375;
		
// M_co2_c_s   id: M_co2_c
	M_co2_c_s=0.999999951844375;
		
// M_h2o2_c_s   id: M_h2o2_c
	M_h2o2_c_s=0;
		
// M_h2o_c_s   id: M_h2o_c
	M_h2o_c_s=1;
		
// M_h_c_s   id: M_h_c
	M_h_c_s=1;
		
// M_nadp_c_s   id: M_nadp_c
	M_nadp_c_s=0;
		
// M_nadph_c_s   id: M_nadph_c
	M_nadph_c_s=0.03;
		
// M_nh4_c_s   id: M_nh4_c
	M_nh4_c_s=0;
		
// M_o2_c_s   id: M_o2_c
	M_o2_c_s=1;
		
// M_o2s_c_s   id: M_o2s_c
	M_o2s_c_s=0;
		
// M_ppi_c_s   id: M_ppi_c
	M_ppi_c_s=0;
		
// M_Cinnavalininate_c_s   id: M_Cinnavalininate_c
	M_Cinnavalininate_c_s=1;
		
// M_kynate_c_s   id: M_kynate_c
	M_kynate_c_s=1;
		
// TRP_ex_s   id: TRP_ex
	TRP_ex_s=0.005;
		
// M_prpp_c_s   id: M_prpp_c
	M_prpp_c_s=1;
		
// M_dnad_c_s   id: M_dnad_c
	M_dnad_c_s=0;
		
// M_am6sa_c_s   id: M_am6sa_c
	M_am6sa_c_s=1;
		
// M_5hoxindact_c_s   id: M_5hoxindact_c
	M_5hoxindact_c_s=1;
		
// M_Nacsertn_c_s   id: M_Nacsertn_c
	M_Nacsertn_c_s=0;
		
// M_accoa_c_s   id: M_accoa_c
	M_accoa_c_s=0.999999951844375;
		
// M_coa_c_s   id: M_coa_c
	M_coa_c_s=1;
		
// M_Xanthurenate_s   id: M_Xanthurenate
	M_Xanthurenate_s=0;
		
// M_f5hoxkyn_c_s   id: M_f5hoxkyn_c
	M_f5hoxkyn_c_s=0;
		
// M_nndmtrpta_c_s   id: M_nndmtrpta_c
	M_nndmtrpta_c_s=0;
		
// M_nmsrtn_c_s   id: M_nmsrtn_c
	M_nmsrtn_c_s=0;
		
// M_Nactrypta_c_s   id: M_Nactrypta_c
	M_Nactrypta_c_s=0;
		
// M_Lkynr_ex_s   id: M_Lkynr_ex
	M_Lkynr_ex_s=0;
		
// E_T_R00677   id: E_T     reactionID: R00677
	E_T_R00677=2046.74;
	
// Ka_R00677   id: Ka     reactionID: R00677
	Ka_R00677=6.5;
	
// Kb_R00677   id: Kb     reactionID: R00677
	Kb_R00677=1.2;
	
// kcat_R00677   id: kcat     reactionID: R00677
	kcat_R00677=1;
	
// E_T_R00678_Tdo   id: E_T     reactionID: R00678_Tdo
	E_T_R00678_Tdo=943912;
	
// Ka_R00678_Tdo   id: Ka     reactionID: R00678_Tdo
	Ka_R00678_Tdo=0.222;
	
// Kb_R00678_Tdo   id: Kb     reactionID: R00678_Tdo
	Kb_R00678_Tdo=0.037;
	
// kcat_R00678_Tdo   id: kcat     reactionID: R00678_Tdo
	kcat_R00678_Tdo=1.4;
	
// kcat_B_R00685   id: kcat_B     reactionID: R00685
	kcat_B_R00685=0.38;
	
// kcat_A_R00987   id: kcat_A     reactionID: R00987
	kcat_A_R00987=0.23;
	
// E_T_R01814_Tph1   id: E_T     reactionID: R01814_Tph1
	E_T_R01814_Tph1=503.141;
	
// Ka_R01814_Tph1   id: Ka     reactionID: R01814_Tph1
	Ka_R01814_Tph1=0.0228;
	
// Kb_R01814_Tph1   id: Kb     reactionID: R01814_Tph1
	Kb_R01814_Tph1=0.109;
	
// kcat_R01814_Tph1   id: kcat     reactionID: R01814_Tph1
	kcat_R01814_Tph1=0.57;
	
// kcat_A_R01959   id: kcat_A     reactionID: R01959
	kcat_A_R01959=100;
	
// E_T_R01960   id: E_T     reactionID: R01960
	E_T_R01960=9766.18;
	
// Ka_R01960   id: Ka     reactionID: R01960
	Ka_R01960=0.1;
	
// Kb_R01960   id: Kb     reactionID: R01960
	Kb_R01960=0.071;
	
// Kc_R01960   id: Kc     reactionID: R01960
	Kc_R01960=0.153;
	
// kcat_R01960   id: kcat     reactionID: R01960
	kcat_R01960=2.2;
	
// kcat_A_R02174   id: kcat_A     reactionID: R02174
	kcat_A_R02174=0.4;
	
// E_T_R02665   id: E_T     reactionID: R02665
	E_T_R02665=1.03084E4;
	
// Ka_R02665   id: Ka     reactionID: R02665
	Ka_R02665=0.016;
	
// Kb_R02665   id: Kb     reactionID: R02665
	Kb_R02665=0.615;
	
// kcat_R02665   id: kcat     reactionID: R02665
	kcat_R02665=64;
	
// kcat_A_R02668   id: kcat_A     reactionID: R02668
	kcat_A_R02668=3.5;
	
// kcat_B_R02701   id: kcat_B     reactionID: R02701
	kcat_B_R02701=2;
	
// kcat_R02702   id: kcat     reactionID: R02702
	kcat_R02702=0.043;
	
// E_T_R03664   id: E_T     reactionID: R03664
	E_T_R03664=1.59615E4;
	
// Ka_R03664   id: Ka     reactionID: R03664
	Ka_R03664=0.0074;
	
// Kb_R03664   id: Kb     reactionID: R03664
	Kb_R03664=0.0011;
	
// kcat_R03664   id: kcat     reactionID: R03664
	kcat_R03664=1.1;
	
// kcat_A_R04911   id: kcat_A     reactionID: R04911
	kcat_A_R04911=100;
	
// k1_quin_form   id: k1     reactionID: quin_form
	k1_quin_form=0.00025;
	
// kcat_B_R02173_Maoa   id: kcat_B     reactionID: R02173_Maoa
	kcat_B_R02173_Maoa=3.5;
	
// e1_R02670   id: e1     reactionID: R02670
	e1_R02670=2;
	
// e2_R02670   id: e2     reactionID: R02670
	e2_R02670=4;
	
// k1_R02670   id: k1     reactionID: R02670
	k1_R02670=5.6667E-5;
	
// kcat_R00678_Indo   id: kcat     reactionID: R00678_Indo
	kcat_R00678_Indo=1.65;
	
// E_T_R03348   id: E_T     reactionID: R03348
	E_T_R03348=138709;
	
// Ka_R03348   id: Ka     reactionID: R03348
	Ka_R03348=0.022;
	
// Kb_R03348   id: Kb     reactionID: R03348
	Kb_R03348=0.023;
	
// kcat_R03348   id: kcat     reactionID: R03348
	kcat_R03348=0.255;
	
// kcat_A_R03936   id: kcat_A     reactionID: R03936
	kcat_A_R03936=0.013;
	
// kcat_A_R00988   id: kcat_A     reactionID: R00988
	kcat_A_R00988=13.57;
	
// E_T_R03005   id: E_T     reactionID: R03005
	E_T_R03005=4658.65;
	
// Km_R03005   id: Km     reactionID: R03005
	Km_R03005=0.0677;
	
// kcat_R03005   id: kcat     reactionID: R03005
	kcat_R03005=42.9;
	
// E_T_R04323   id: E_T     reactionID: R04323
	E_T_R04323=4.88582E4;
	
// Km_R04323   id: Km     reactionID: R04323
	Km_R04323=0.0065;
	
// kcat_R04323   id: kcat     reactionID: R04323
	kcat_R04323=1;
	
// kcat_B_R02908_Maoa   id: kcat_B     reactionID: R02908_Maoa
	kcat_B_R02908_Maoa=18.6;
	
// kcat_B_R02911   id: kcat_B     reactionID: R02911
	kcat_B_R02911=25.9;
	
// kcat_R02909   id: kcat     reactionID: R02909
	kcat_R02909=0.002;
	
// kcat_A_R02174_metTrypta   id: kcat_A     reactionID: R02174_metTrypta
	kcat_A_R02174_metTrypta=0.176;
	
// kcat_A_R02910   id: kcat_A     reactionID: R02910
	kcat_A_R02910=0.044;
	
// kcat_B_R02908_Maob   id: kcat_B     reactionID: R02908_Maob
	kcat_B_R02908_Maob=18.6;
	
// kcat_B_R02173_Maob   id: kcat_B     reactionID: R02173_Maob
	kcat_B_R02173_Maob=3.5;
	
// kcat_B_AANAT_Trypta   id: kcat_B     reactionID: AANAT_Trypta
	kcat_B_AANAT_Trypta=25.9;
	
// E_T_R01814_Tph2   id: E_T     reactionID: R01814_Tph2
	E_T_R01814_Tph2=235.128;
	
// Ka_R01814_Tph2   id: Ka     reactionID: R01814_Tph2
	Ka_R01814_Tph2=0.0403;
	
// Kb_R01814_Tph2   id: Kb     reactionID: R01814_Tph2
	Kb_R01814_Tph2=0.273;
	
// kcat_R01814_Tph2   id: kcat     reactionID: R01814_Tph2
	kcat_R01814_Tph2=0.18;
	



xdot=[
//x(1)   ID: M_3hanthrn_c  initialValue: 3.29767682642125E-6
	(1/compartment_Cytosol)*( (-1)*(1)* (compartment_Cytosol*((kcat_R02665*E_T_R02665* x(1) *M_o2_c_s*scaling_p)/((Ka_R02665*Kb_R02665)+(Ka_R02665*M_o2_c_s)+(Kb_R02665* x(1) )+( x(1) *M_o2_c_s)))) + (-1)*(2)* (compartment_Cytosol*k1_R02670*(power( x(1) ,e1_R02670))*(power(M_o2_c_s,e2_R02670))) + (1)*(1)* (compartment_Cytosol*((KYNU_E_T_p*kcat_A_R02668*scaling_p* x(7) *KYNU_Km_Lkynr_p*KYNU_Km_Lfmkynr_p)/((KYNU_Km_hLkynr_p*KYNU_Km_Lkynr_p*KYNU_Km_Lfmkynr_p)+(KYNU_Km_Lkynr_p*KYNU_Km_Lfmkynr_p* x(7) )+(KYNU_Km_hLkynr_p*KYNU_Km_Lfmkynr_p* x(5) )+(KYNU_Km_hLkynr_p*KYNU_Km_Lkynr_p* x(4) )))) );
	
//x(2)   ID: M_5hoxnfkyn_c  initialValue: 2.3285262897484E-10
	(1/compartment_Cytosol)*( (-1)*(1)* (compartment_Cytosol*((AFMID_E_T_p*kcat_A_R04911*scaling_p* x(2) *AFMID_Km_Lfmkynr_p*AFMID_Km_nformanth_p)/((AFMID_Km_5hoxnfky_p*AFMID_Km_Lfmkynr_p*AFMID_Km_nformanth_p)+(AFMID_Km_Lfmkynr_p*AFMID_Km_nformanth_p* x(2) )+(AFMID_Km_5hoxnfky_p*AFMID_Km_nformanth_p* x(4) )+(AFMID_Km_5hoxnfky_p*AFMID_Km_Lfmkynr_p* x(14) )))) + (1)*(1)* (compartment_Cytosol*((kcat_R02702*IDO_E_T_p* x(3) *M_o2_c_s*IDO_Km_trp_DASH_L_p*IDO_Km_srtn_p*scaling_p)/((IDO_Km_5htrp_p*IDO_Km_O2_p*IDO_Km_trp_DASH_L_p*IDO_Km_srtn_p)+( x(3) *IDO_Km_O2_p*IDO_Km_trp_DASH_L_p*IDO_Km_srtn_p)+(M_o2_c_s*IDO_Km_5htrp_p*IDO_Km_trp_DASH_L_p*IDO_Km_srtn_p)+( x(11) *IDO_Km_5htrp_p*IDO_Km_O2_p*IDO_Km_srtn_p)+( x(10) *IDO_Km_5htrp_p*IDO_Km_O2_p*IDO_Km_trp_DASH_L_p)+( x(3) *M_o2_c_s*IDO_Km_trp_DASH_L_p*IDO_Km_srtn_p)+( x(11) *M_o2_c_s*IDO_Km_5htrp_p*IDO_Km_srtn_p)+( x(10) *M_o2_c_s*IDO_Km_5htrp_p*IDO_Km_trp_DASH_L_p)))) );
	
//x(3)   ID: M_5htrp_c  initialValue: 9.86485434437397E-7
	(1/compartment_Cytosol)*( (-1)*(1)* (compartment_Cytosol*((DDC_E_T_p*kcat_B_R02701*scaling_p* x(3) *DDC_Km_trp_DASH_L_p)/((DDC_Km_5htrp_p*DDC_Km_trp_DASH_L_p)+(DDC_Km_5htrp_p* x(11) )+(DDC_Km_trp_DASH_L_p* x(3) )))) + (-1)*(1)* (compartment_Cytosol*((kcat_R02702*IDO_E_T_p* x(3) *M_o2_c_s*IDO_Km_trp_DASH_L_p*IDO_Km_srtn_p*scaling_p)/((IDO_Km_5htrp_p*IDO_Km_O2_p*IDO_Km_trp_DASH_L_p*IDO_Km_srtn_p)+( x(3) *IDO_Km_O2_p*IDO_Km_trp_DASH_L_p*IDO_Km_srtn_p)+(M_o2_c_s*IDO_Km_5htrp_p*IDO_Km_trp_DASH_L_p*IDO_Km_srtn_p)+( x(11) *IDO_Km_5htrp_p*IDO_Km_O2_p*IDO_Km_srtn_p)+( x(10) *IDO_Km_5htrp_p*IDO_Km_O2_p*IDO_Km_trp_DASH_L_p)+( x(3) *M_o2_c_s*IDO_Km_trp_DASH_L_p*IDO_Km_srtn_p)+( x(11) *M_o2_c_s*IDO_Km_5htrp_p*IDO_Km_srtn_p)+( x(10) *M_o2_c_s*IDO_Km_5htrp_p*IDO_Km_trp_DASH_L_p)))) + (1)*(1)* (compartment_Cytosol*((kcat_R01814_Tph1*E_T_R01814_Tph1* x(11) *M_o2_c_s*M_thbpt_s*scaling_p)/((Ka_R01814_Tph1*Kb_R01814_Tph1)+(Kb_R01814_Tph1* x(11) )+(Ka_R01814_Tph1*M_o2_c_s)+( x(11) *M_o2_c_s)))) + (1)*(1)* (compartment_Cytosol*((kcat_R01814_Tph2*E_T_R01814_Tph2* x(11) *M_o2_c_s*M_thbpt_s*scaling_p)/((Ka_R01814_Tph2*Kb_R01814_Tph2)+(Kb_R01814_Tph2* x(11) )+(Ka_R01814_Tph2*M_o2_c_s)+( x(11) *M_o2_c_s)))) );
	
//x(4)   ID: M_Lfmkynr_c  initialValue: 2.18400152663056E-5
	(1/compartment_Cytosol)*( (-1)*(1)* (compartment_Cytosol*((AFMID_E_T_p*kcat_A_R01959*scaling_p* x(4) *AFMID_Km_5hoxnfky_p*AFMID_Km_nformanth_p)/((AFMID_Km_Lfmkynr_p*AFMID_Km_5hoxnfky_p*AFMID_Km_nformanth_p)+(AFMID_Km_5hoxnfky_p*AFMID_Km_nformanth_p* x(4) )+(AFMID_Km_Lfmkynr_p*AFMID_Km_nformanth_p* x(2) )+(AFMID_Km_Lfmkynr_p*AFMID_Km_5hoxnfky_p* x(14) )))) + (-1)*(1)* (compartment_Cytosol*((KYNU_E_T_p*kcat_A_R03936*scaling_p* x(4) *KYNU_Km_Lkynr_p*KYNU_Km_hLkynr_p)/((KYNU_Km_Lfmkynr_p*KYNU_Km_Lkynr_p*KYNU_Km_hLkynr_p)+(KYNU_Km_Lkynr_p*KYNU_Km_hLkynr_p* x(4) )+(KYNU_Km_Lfmkynr_p*KYNU_Km_hLkynr_p* x(5) )+(KYNU_Km_Lfmkynr_p*KYNU_Km_Lkynr_p* x(7) )))) + (1)*(1)* (compartment_Cytosol*((kcat_R00678_Tdo*E_T_R00678_Tdo* x(11) *M_o2_c_s*scaling_p)/((Ka_R00678_Tdo*Kb_R00678_Tdo)+(Ka_R00678_Tdo*M_o2_c_s)+(Kb_R00678_Tdo* x(11) )+( x(11) *M_o2_c_s)))) + (1)*(1)* (compartment_Cytosol*((kcat_R00678_Indo*IDO_E_T_p* x(11) *M_o2_c_s*IDO_Km_5htrp_p*IDO_Km_srtn_p*scaling_p)/((IDO_Km_trp_DASH_L_p*IDO_Km_O2_p*IDO_Km_5htrp_p*IDO_Km_srtn_p)+( x(11) *IDO_Km_O2_p*IDO_Km_5htrp_p*IDO_Km_srtn_p)+(M_o2_c_s*IDO_Km_trp_DASH_L_p*IDO_Km_5htrp_p*IDO_Km_srtn_p)+( x(3) *IDO_Km_trp_DASH_L_p*IDO_Km_O2_p*IDO_Km_srtn_p)+( x(10) *IDO_Km_trp_DASH_L_p*IDO_Km_O2_p*IDO_Km_5htrp_p)+( x(11) *M_o2_c_s*IDO_Km_5htrp_p*IDO_Km_srtn_p)+( x(3) *M_o2_c_s*IDO_Km_trp_DASH_L_p*IDO_Km_srtn_p)+( x(10) *M_o2_c_s*IDO_Km_trp_DASH_L_p*IDO_Km_5htrp_p)))) );
	
//x(5)   ID: M_Lkynr_c  initialValue: 0.00263243682881056
	(1/compartment_Cytosol)*( (-1)*(1)* (compartment_Cytosol*((KYNU_E_T_p*kcat_A_R00987*scaling_p* x(5) *KYNU_Km_hLkynr_p*KYNU_Km_Lfmkynr_p)/((KYNU_Km_Lkynr_p*KYNU_Km_hLkynr_p*KYNU_Km_Lfmkynr_p)+(KYNU_Km_hLkynr_p*KYNU_Km_Lfmkynr_p* x(5) )+(KYNU_Km_Lkynr_p*KYNU_Km_Lfmkynr_p* x(7) )+(KYNU_Km_Lkynr_p*KYNU_Km_hLkynr_p* x(4) )))) + (-1)*(1)* (compartment_Cytosol*((AADAT_E_T_kat1_p*AADAT_kcat_Lkynr_p*scaling_p* x(5) *AADAT_Km_hLkynr_p)/((AADAT_Km_Lkynr_p*AADAT_Km_hLkynr_p)+(AADAT_Km_Lkynr_p* x(7) )+(AADAT_Km_hLkynr_p* x(5) )))) + (-1)*(1)* (compartment_Cytosol*((kcat_R01960*E_T_R01960* x(5) *M_o2_c_s*M_nadph_c_s*M_h_c_s*scaling_p)/((Ka_R01960*Kb_R01960*Kc_R01960)+( x(5) *Kb_R01960*Kc_R01960)+(M_o2_c_s*Ka_R01960*Kc_R01960)+(M_nadph_c_s*Ka_R01960*Kb_R01960)+( x(5) *M_o2_c_s*Kc_R01960)+(M_o2_c_s*M_nadph_c_s*Ka_R01960)+( x(5) *M_nadph_c_s*Kb_R01960)+( x(5) *M_o2_c_s*M_nadph_c_s)))) + (-1)*(1)* (compartment_Cytosol*((AADAT_E_T_kat2_p*AADAT_kcat_Lkynr_p*scaling_p* x(5) *AADAT_Km_hLkynr_p)/((AADAT_Km_Lkynr_p*AADAT_Km_hLkynr_p)+(AADAT_Km_Lkynr_p* x(7) )+(AADAT_Km_hLkynr_p* x(5) )))) + (-1)*(1)* (compartment_Cytosol*((AADAT_E_T_kat3_p*AADAT_kcat_Lkynr_p*scaling_p* x(5) *AADAT_Km_hLkynr_p)/((AADAT_Km_Lkynr_p*AADAT_Km_hLkynr_p)+(AADAT_Km_Lkynr_p* x(7) )+(AADAT_Km_hLkynr_p* x(5) )))) + (-1)*(1)* (compartment_Cytosol*((scaling_p*(((Transporter_E_T_Slc7a5_p*Transporter_kcat_Lkynr_p* x(5) )/Transporter_Km_Lkynr_p)-((Transporter_E_T_Slc7a5_p*Transporter_kcat_Lkynr_p*M_Lkynr_ex_s)/Transporter_Km_Lkynr_p)))/(( 1 )+( x(5) /Transporter_Km_Lkynr_p)+( x(11) /Transporter_Km_Trp_Slc7a5_p)+(M_Lkynr_ex_s/Transporter_Km_Lkynr_p)+(TRP_ex_s/Transporter_Km_Trp_Slc7a5_p)))) + (-1)*(1)* (compartment_Cytosol*((scaling_p*(((Transporter_E_T_Slc7a8_p*Transporter_kcat_Lkynr_p* x(5) )/Transporter_Km_Lkynr_p)-((Transporter_E_T_Slc7a8_p*Transporter_kcat_Lkynr_p*M_Lkynr_ex_s)/Transporter_Km_Lkynr_p)))/(( 1 )+( x(5) /Transporter_Km_Lkynr_p)+( x(11) /Transporter_Km_Trp_Slc7a8_p)+(M_Lkynr_ex_s/Transporter_Km_Lkynr_p)+(TRP_ex_s/Transporter_Km_Trp_Slc7a8_p)))) + (1)*(1)* (compartment_Cytosol*((AFMID_E_T_p*kcat_A_R01959*scaling_p* x(4) *AFMID_Km_5hoxnfky_p*AFMID_Km_nformanth_p)/((AFMID_Km_Lfmkynr_p*AFMID_Km_5hoxnfky_p*AFMID_Km_nformanth_p)+(AFMID_Km_5hoxnfky_p*AFMID_Km_nformanth_p* x(4) )+(AFMID_Km_Lfmkynr_p*AFMID_Km_nformanth_p* x(2) )+(AFMID_Km_Lfmkynr_p*AFMID_Km_5hoxnfky_p* x(14) )))) );
	
//x(6)   ID: M_cmusa_c  initialValue: 1.12181722190904E-5
	(1/compartment_Cytosol)*( (-1)*(1)* (compartment_Cytosol*k1_quin_form* x(6) ) + (-1)*(1)* (compartment_Cytosol*((E_T_R04323*kcat_R04323* x(6) *scaling_p)/(Km_R04323+ x(6) ))) + (1)*(1)* (compartment_Cytosol*((kcat_R02665*E_T_R02665* x(1) *M_o2_c_s*scaling_p)/((Ka_R02665*Kb_R02665)+(Ka_R02665*M_o2_c_s)+(Kb_R02665* x(1) )+( x(1) *M_o2_c_s)))) );
	
//x(7)   ID: M_hLkynr_c  initialValue: 1.1966020248522E-5
	(1/compartment_Cytosol)*( (-1)*(1)* (compartment_Cytosol*((KYNU_E_T_p*kcat_A_R02668*scaling_p* x(7) *KYNU_Km_Lkynr_p*KYNU_Km_Lfmkynr_p)/((KYNU_Km_hLkynr_p*KYNU_Km_Lkynr_p*KYNU_Km_Lfmkynr_p)+(KYNU_Km_Lkynr_p*KYNU_Km_Lfmkynr_p* x(7) )+(KYNU_Km_hLkynr_p*KYNU_Km_Lfmkynr_p* x(5) )+(KYNU_Km_hLkynr_p*KYNU_Km_Lkynr_p* x(4) )))) + (-1)*(1)* (compartment_Cytosol*((AADAT_E_T_kat1_p*AADAT_kcat_hLkynr_p*scaling_p* x(7) *AADAT_Km_Lkynr_p)/((AADAT_Km_hLkynr_p*AADAT_Km_Lkynr_p)+(AADAT_Km_hLkynr_p* x(5) )+(AADAT_Km_Lkynr_p* x(7) )))) + (-1)*(1)* (compartment_Cytosol*((AADAT_E_T_kat2_p*AADAT_kcat_hLkynr_p*scaling_p* x(7) *AADAT_Km_Lkynr_p)/((AADAT_Km_hLkynr_p*AADAT_Km_Lkynr_p)+(AADAT_Km_hLkynr_p* x(5) )+(AADAT_Km_Lkynr_p* x(7) )))) + (-1)*(1)* (compartment_Cytosol*((AADAT_E_T_kat3_p*AADAT_kcat_hLkynr_p*scaling_p* x(7) *AADAT_Km_Lkynr_p)/((AADAT_Km_hLkynr_p*AADAT_Km_Lkynr_p)+(AADAT_Km_hLkynr_p* x(5) )+(AADAT_Km_Lkynr_p* x(7) )))) + (1)*(1)* (compartment_Cytosol*((kcat_R01960*E_T_R01960* x(5) *M_o2_c_s*M_nadph_c_s*M_h_c_s*scaling_p)/((Ka_R01960*Kb_R01960*Kc_R01960)+( x(5) *Kb_R01960*Kc_R01960)+(M_o2_c_s*Ka_R01960*Kc_R01960)+(M_nadph_c_s*Ka_R01960*Kb_R01960)+( x(5) *M_o2_c_s*Kc_R01960)+(M_o2_c_s*M_nadph_c_s*Ka_R01960)+( x(5) *M_nadph_c_s*Kb_R01960)+( x(5) *M_o2_c_s*M_nadph_c_s)))) );
	
//x(8)   ID: M_nmtrpta_c  initialValue: 2.5994745417821E-9
	(1/compartment_Cytosol)*( (-1)*(1)* (compartment_Cytosol*((IMNT_E_T_p*kcat_A_R02174_metTrypta*scaling_p* x(8) *IMNT_Km_srtn_p*IMNT_Km_trypta_p)/((IMNT_Km_nmtrpta_p*IMNT_Km_srtn_p*IMNT_Km_trypta_p)+(IMNT_Km_srtn_p*IMNT_Km_trypta_p* x(8) )+(IMNT_Km_nmtrpta_p*IMNT_Km_trypta_p* x(10) )+(IMNT_Km_nmtrpta_p*IMNT_Km_srtn_p* x(12) )))) + (1)*(1)* (compartment_Cytosol*((IMNT_E_T_p*kcat_A_R02174*scaling_p* x(12) *IMNT_Km_nmtrpta_p*IMNT_Km_srtn_p)/((IMNT_Km_trypta_p*IMNT_Km_nmtrpta_p*IMNT_Km_srtn_p)+(IMNT_Km_nmtrpta_p*IMNT_Km_srtn_p* x(12) )+(IMNT_Km_trypta_p*IMNT_Km_srtn_p* x(8) )+(IMNT_Km_trypta_p*IMNT_Km_nmtrpta_p* x(10) )))) );
	
//x(9)   ID: M_quln_c  initialValue: 1.78449610733141E-15
	(1/compartment_Cytosol)*( (-1)*(1)* (compartment_Cytosol*((kcat_R03348*E_T_R03348* x(9) *M_prpp_c_s*M_h_c_s*scaling_p)/((Ka_R03348*Kb_R03348)+(Kb_R03348* x(9) )+(Ka_R03348*M_prpp_c_s)+( x(9) *M_prpp_c_s)))) + (1)*(1)* (compartment_Cytosol*k1_quin_form* x(6) ) );
	
//x(10)   ID: M_srtn_c  initialValue: 7.76306594979262E-8
	(1/compartment_Cytosol)*( (-1)*(1)* (compartment_Cytosol*((MAOA_E_T_p*kcat_B_R02908_Maoa*scaling_p* x(10) *MAO_Km_trypta_p)/((MAO_Km_srtn_p*MAO_Km_trypta_p)+(MAO_Km_srtn_p* x(12) )+(MAO_Km_trypta_p* x(10) )))) + (-1)*(1)* (compartment_Cytosol*((AANAT_E_T_p*kcat_B_R02911*scaling_p* x(10) *AANAT_Km_trypta_p)/((AANAT_Km_Srtn_p*AANAT_Km_trypta_p)+(AANAT_Km_Srtn_p* x(12) )+(AANAT_Km_trypta_p* x(10) )))) + (-1)*(1)* (compartment_Cytosol*((kcat_R02909*IDO_E_T_p* x(10) *M_o2_c_s*IDO_Km_5htrp_p*IDO_Km_trp_DASH_L_p*scaling_p)/((IDO_Km_srtn_p*IDO_Km_O2_p*IDO_Km_5htrp_p*IDO_Km_trp_DASH_L_p)+( x(10) *IDO_Km_O2_p*IDO_Km_5htrp_p*IDO_Km_trp_DASH_L_p)+(M_o2_c_s*IDO_Km_srtn_p*IDO_Km_5htrp_p*IDO_Km_trp_DASH_L_p)+( x(3) *IDO_Km_srtn_p*IDO_Km_O2_p*IDO_Km_trp_DASH_L_p)+( x(11) *IDO_Km_srtn_p*IDO_Km_O2_p*IDO_Km_5htrp_p)+( x(10) *M_o2_c_s*IDO_Km_5htrp_p*IDO_Km_trp_DASH_L_p)+( x(3) *M_o2_c_s*IDO_Km_srtn_p*IDO_Km_trp_DASH_L_p)+( x(11) *M_o2_c_s*IDO_Km_srtn_p*IDO_Km_5htrp_p)))) + (-1)*(1)* (compartment_Cytosol*((IMNT_E_T_p*kcat_A_R02910*scaling_p* x(10) *IMNT_Km_nmtrpta_p*IMNT_Km_trypta_p)/((IMNT_Km_srtn_p*IMNT_Km_nmtrpta_p*IMNT_Km_trypta_p)+(IMNT_Km_nmtrpta_p*IMNT_Km_trypta_p* x(10) )+(IMNT_Km_srtn_p*IMNT_Km_trypta_p* x(8) )+(IMNT_Km_srtn_p*IMNT_Km_nmtrpta_p* x(12) )))) + (-1)*(1)* (compartment_Cytosol*((MAOB_E_T_p*kcat_B_R02908_Maob*scaling_p* x(10) *MAO_Km_trypta_p)/((MAO_Km_srtn_p*MAO_Km_trypta_p)+(MAO_Km_srtn_p* x(12) )+(MAO_Km_trypta_p* x(10) )))) + (1)*(1)* (compartment_Cytosol*((DDC_E_T_p*kcat_B_R02701*scaling_p* x(3) *DDC_Km_trp_DASH_L_p)/((DDC_Km_5htrp_p*DDC_Km_trp_DASH_L_p)+(DDC_Km_5htrp_p* x(11) )+(DDC_Km_trp_DASH_L_p* x(3) )))) );
	
//x(11)   ID: M_trp_DASH_L_c  initialValue: 0.000120064386474403
	(1/compartment_Cytosol)*( (-1)*(1)* (compartment_Cytosol*((kcat_R00677*E_T_R00677* x(11) *M_o2_c_s*M_h2o_c_s*scaling_p)/((Ka_R00677*Kb_R00677)+(Kb_R00677* x(11) )+(Ka_R00677*M_o2_c_s)+( x(11) *M_o2_c_s)))) + (-1)*(1)* (compartment_Cytosol*((kcat_R00678_Tdo*E_T_R00678_Tdo* x(11) *M_o2_c_s*scaling_p)/((Ka_R00678_Tdo*Kb_R00678_Tdo)+(Ka_R00678_Tdo*M_o2_c_s)+(Kb_R00678_Tdo* x(11) )+( x(11) *M_o2_c_s)))) + (-1)*(1)* (compartment_Cytosol*((DDC_E_T_p*kcat_B_R00685*scaling_p* x(11) *DDC_Km_5htrp_p)/((DDC_Km_trp_DASH_L_p*DDC_Km_5htrp_p)+(DDC_Km_trp_DASH_L_p* x(3) )+(DDC_Km_5htrp_p* x(11) )))) + (-1)*(1)* (compartment_Cytosol*((kcat_R01814_Tph1*E_T_R01814_Tph1* x(11) *M_o2_c_s*M_thbpt_s*scaling_p)/((Ka_R01814_Tph1*Kb_R01814_Tph1)+(Kb_R01814_Tph1* x(11) )+(Ka_R01814_Tph1*M_o2_c_s)+( x(11) *M_o2_c_s)))) + (-1)*(1)* (compartment_Cytosol*((kcat_R03664*E_T_R03664* x(11) *M_trna_trp_c_s*M_atp_c_s*scaling_p)/((Ka_R03664*Kb_R03664)+(Kb_R03664* x(11) )+(Ka_R03664*M_trna_trp_c_s)+( x(11) *M_trna_trp_c_s)))) + (-1)*(1)* (compartment_Cytosol*((kcat_R00678_Indo*IDO_E_T_p* x(11) *M_o2_c_s*IDO_Km_5htrp_p*IDO_Km_srtn_p*scaling_p)/((IDO_Km_trp_DASH_L_p*IDO_Km_O2_p*IDO_Km_5htrp_p*IDO_Km_srtn_p)+( x(11) *IDO_Km_O2_p*IDO_Km_5htrp_p*IDO_Km_srtn_p)+(M_o2_c_s*IDO_Km_trp_DASH_L_p*IDO_Km_5htrp_p*IDO_Km_srtn_p)+( x(3) *IDO_Km_trp_DASH_L_p*IDO_Km_O2_p*IDO_Km_srtn_p)+( x(10) *IDO_Km_trp_DASH_L_p*IDO_Km_O2_p*IDO_Km_5htrp_p)+( x(11) *M_o2_c_s*IDO_Km_5htrp_p*IDO_Km_srtn_p)+( x(3) *M_o2_c_s*IDO_Km_trp_DASH_L_p*IDO_Km_srtn_p)+( x(10) *M_o2_c_s*IDO_Km_trp_DASH_L_p*IDO_Km_5htrp_p)))) + (-1)*(1)* (compartment_Cytosol*((kcat_R01814_Tph2*E_T_R01814_Tph2* x(11) *M_o2_c_s*M_thbpt_s*scaling_p)/((Ka_R01814_Tph2*Kb_R01814_Tph2)+(Kb_R01814_Tph2* x(11) )+(Ka_R01814_Tph2*M_o2_c_s)+( x(11) *M_o2_c_s)))) + (1)*(1)* (compartment_Cytosol*((scaling_p*(((Transporter_E_T_Slc7a5_p*Transporter_kcat_Trp_p*TRP_ex_s)/Transporter_Km_Trp_Slc7a5_p)-((Transporter_E_T_Slc7a5_p*Transporter_kcat_Trp_p* x(11) )/Transporter_Km_Trp_Slc7a5_p)))/(( 1 )+(TRP_ex_s/Transporter_Km_Trp_Slc7a5_p)+(M_Lkynr_ex_s/Transporter_Km_Lkynr_p)+( x(11) /Transporter_Km_Trp_Slc7a5_p)+( x(5) /Transporter_Km_Lkynr_p)))) + (1)*(1)* (compartment_Cytosol*((scaling_p*(((Transporter_E_T_Slc7a8_p*Transporter_kcat_Trp_p*TRP_ex_s)/Transporter_Km_Trp_Slc7a8_p)-((Transporter_E_T_Slc7a8_p*Transporter_kcat_Trp_p* x(11) )/Transporter_Km_Trp_Slc7a8_p)))/(( 1 )+(TRP_ex_s/Transporter_Km_Trp_Slc7a8_p)+(M_Lkynr_ex_s/Transporter_Km_Lkynr_p)+( x(11) /Transporter_Km_Trp_Slc7a8_p)+( x(5) /Transporter_Km_Lkynr_p)))) );
	
//x(12)   ID: M_trypta_c  initialValue: 3.59090204143853E-9
	(1/compartment_Cytosol)*( (-1)*(1)* (compartment_Cytosol*((IMNT_E_T_p*kcat_A_R02174*scaling_p* x(12) *IMNT_Km_nmtrpta_p*IMNT_Km_srtn_p)/((IMNT_Km_trypta_p*IMNT_Km_nmtrpta_p*IMNT_Km_srtn_p)+(IMNT_Km_nmtrpta_p*IMNT_Km_srtn_p* x(12) )+(IMNT_Km_trypta_p*IMNT_Km_srtn_p* x(8) )+(IMNT_Km_trypta_p*IMNT_Km_nmtrpta_p* x(10) )))) + (-1)*(1)* (compartment_Cytosol*((MAOA_E_T_p*kcat_B_R02173_Maoa*scaling_p* x(12) *MAO_Km_srtn_p)/((MAO_Km_trypta_p*MAO_Km_srtn_p)+(MAO_Km_trypta_p* x(10) )+(MAO_Km_srtn_p* x(12) )))) + (-1)*(1)* (compartment_Cytosol*((MAOB_E_T_p*kcat_B_R02173_Maob*scaling_p* x(12) *MAO_Km_srtn_p)/((MAO_Km_trypta_p*MAO_Km_srtn_p)+(MAO_Km_trypta_p* x(10) )+(MAO_Km_srtn_p* x(12) )))) + (-1)*(1)* (compartment_Cytosol*((AANAT_E_T_p*kcat_B_AANAT_Trypta*scaling_p* x(12) *AANAT_Km_Srtn_p)/((AANAT_Km_trypta_p*AANAT_Km_Srtn_p)+(AANAT_Km_trypta_p* x(10) )+(AANAT_Km_Srtn_p* x(12) )))) + (1)*(1)* (compartment_Cytosol*((DDC_E_T_p*kcat_B_R00685*scaling_p* x(11) *DDC_Km_5htrp_p)/((DDC_Km_trp_DASH_L_p*DDC_Km_5htrp_p)+(DDC_Km_trp_DASH_L_p* x(3) )+(DDC_Km_5htrp_p* x(11) )))) );
	
//x(13)   ID: M_nicrnt_c  initialValue: 9.50021481464022E-16
	(1/compartment_Cytosol)*( (-1)*(1)* (compartment_Cytosol*((E_T_R03005*kcat_R03005* x(13) *M_h_c_s*M_atp_c_s*scaling_p)/(Km_R03005+ x(13) ))) + (1)*(1)* (compartment_Cytosol*((kcat_R03348*E_T_R03348* x(9) *M_prpp_c_s*M_h_c_s*scaling_p)/((Ka_R03348*Kb_R03348)+(Kb_R03348* x(9) )+(Ka_R03348*M_prpp_c_s)+( x(9) *M_prpp_c_s)))) );
	
//x(14)   ID: M_nformanth_c  initialValue: 7.14152660211118E-9
	(1/compartment_Cytosol)*( (-1)*(1)* (compartment_Cytosol*((AFMID_E_T_p*kcat_A_R00988*scaling_p* x(14) *AFMID_Km_Lfmkynr_p*AFMID_Km_5hoxnfky_p)/((AFMID_Km_nformanth_p*AFMID_Km_Lfmkynr_p*AFMID_Km_5hoxnfky_p)+(AFMID_Km_Lfmkynr_p*AFMID_Km_5hoxnfky_p* x(14) )+(AFMID_Km_nformanth_p*AFMID_Km_5hoxnfky_p* x(4) )+(AFMID_Km_nformanth_p*AFMID_Km_Lfmkynr_p* x(2) )))) + (1)*(1)* (compartment_Cytosol*((KYNU_E_T_p*kcat_A_R03936*scaling_p* x(4) *KYNU_Km_Lkynr_p*KYNU_Km_hLkynr_p)/((KYNU_Km_Lfmkynr_p*KYNU_Km_Lkynr_p*KYNU_Km_hLkynr_p)+(KYNU_Km_Lkynr_p*KYNU_Km_hLkynr_p* x(4) )+(KYNU_Km_Lfmkynr_p*KYNU_Km_hLkynr_p* x(5) )+(KYNU_Km_Lfmkynr_p*KYNU_Km_Lkynr_p* x(7) )))) )
	];


	
endfunction
        x0=[3.29767682642125E-6;2.3285262897484E-10;9.86485434437397E-7;2.18400152663056E-5;0.00263243682881056;1.12181722190904E-5;1.1966020248522E-5;2.5994745417821E-9;1.78449610733141E-15;7.76306594979262E-8;0.000120064386474403;3.59090204143853E-9;9.50021481464022E-16;7.14152660211118E-9];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)' 'x(14)'],[1;2;3;4;5;6;7;8;9;10;11;12;13;14])

//real_variable:
	
	
//x(1)   id: M_3hanthrn_c  initialValue: 3.29767682642125E-6
	
//x(2)   id: M_5hoxnfkyn_c  initialValue: 2.3285262897484E-10
	
//x(3)   id: M_5htrp_c  initialValue: 9.86485434437397E-7
	
//x(4)   id: M_Lfmkynr_c  initialValue: 2.18400152663056E-5
	
//x(5)   id: M_Lkynr_c  initialValue: 0.00263243682881056
	
//x(6)   id: M_cmusa_c  initialValue: 1.12181722190904E-5
	
//x(7)   id: M_hLkynr_c  initialValue: 1.1966020248522E-5
	
//x(8)   id: M_nmtrpta_c  initialValue: 2.5994745417821E-9
	
//x(9)   id: M_quln_c  initialValue: 1.78449610733141E-15
	
//x(10)   id: M_srtn_c  initialValue: 7.76306594979262E-8
	
//x(11)   id: M_trp_DASH_L_c  initialValue: 0.000120064386474403
	
//x(12)   id: M_trypta_c  initialValue: 3.59090204143853E-9
	
//x(13)   id: M_nicrnt_c  initialValue: 9.50021481464022E-16
	
//x(14)   id: M_nformanth_c  initialValue: 7.14152660211118E-9