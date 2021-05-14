
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_cell   id: cell
	compartment_cell=1;
		
// compartment_ext   id: ext
	compartment_ext=1;
		
// Vmax_1_HXT   id: Vmax_1     reactionID: HXT
	Vmax_1_HXT=97.24;
	
// Kglc_1_HXT   id: Kglc_1     reactionID: HXT
	Kglc_1_HXT=1.1918;
	
// Ki_1_HXT   id: Ki_1     reactionID: HXT
	Ki_1_HXT=0.91;
	
// Vmax_2_HK   id: Vmax_2     reactionID: HK
	Vmax_2_HK=236.7;
	
// Kglc_2_HK   id: Kglc_2     reactionID: HK
	Kglc_2_HK=0.08;
	
// Katp_2_HK   id: Katp_2     reactionID: HK
	Katp_2_HK=0.15;
	
// Keq_2_HK   id: Keq_2     reactionID: HK
	Keq_2_HK=2000;
	
// Kg6p_2_HK   id: Kg6p_2     reactionID: HK
	Kg6p_2_HK=30;
	
// Kadp_2_HK   id: Kadp_2     reactionID: HK
	Kadp_2_HK=0.23;
	
// Vmax_3_PGI   id: Vmax_3     reactionID: PGI
	Vmax_3_PGI=1056;
	
// Kg6p_3_PGI   id: Kg6p_3     reactionID: PGI
	Kg6p_3_PGI=1.4;
	
// Keq_3_PGI   id: Keq_3     reactionID: PGI
	Keq_3_PGI=0.29;
	
// Kf6p_3_PGI   id: Kf6p_3     reactionID: PGI
	Kf6p_3_PGI=0.3;
	
// Vmax_4_PFK   id: Vmax_4     reactionID: PFK
	Vmax_4_PFK=110;
	
// gR_4_PFK   id: gR_4     reactionID: PFK
	gR_4_PFK=5.12;
	
// Kf6p_4_PFK   id: Kf6p_4     reactionID: PFK
	Kf6p_4_PFK=0.1;
	
// Katp_4_PFK   id: Katp_4     reactionID: PFK
	Katp_4_PFK=0.71;
	
// L0_4_PFK   id: L0_4     reactionID: PFK
	L0_4_PFK=0.66;
	
// Ciatp_4_PFK   id: Ciatp_4     reactionID: PFK
	Ciatp_4_PFK=100;
	
// Kiatp_4_PFK   id: Kiatp_4     reactionID: PFK
	Kiatp_4_PFK=0.65;
	
// Camp_4_PFK   id: Camp_4     reactionID: PFK
	Camp_4_PFK=0.0845;
	
// Kamp_4_PFK   id: Kamp_4     reactionID: PFK
	Kamp_4_PFK=0.0995;
	
// Cf26_4_PFK   id: Cf26_4     reactionID: PFK
	Cf26_4_PFK=0.0174;
	
// Kf26_4_PFK   id: Kf26_4     reactionID: PFK
	Kf26_4_PFK=0.000682;
	
// Cf16_4_PFK   id: Cf16_4     reactionID: PFK
	Cf16_4_PFK=0.397;
	
// Kf16_4_PFK   id: Kf16_4     reactionID: PFK
	Kf16_4_PFK=0.111;
	
// Catp_4_PFK   id: Catp_4     reactionID: PFK
	Catp_4_PFK=3;
	
// Vmax_5_ALD   id: Vmax_5     reactionID: ALD
	Vmax_5_ALD=94.69;
	
// Kf16bp_5_ALD   id: Kf16bp_5     reactionID: ALD
	Kf16bp_5_ALD=0.3;
	
// Keq_5_ALD   id: Keq_5     reactionID: ALD
	Keq_5_ALD=0.069;
	
// Kdhap_5_ALD   id: Kdhap_5     reactionID: ALD
	Kdhap_5_ALD=2;
	
// Kgap_5_ALD   id: Kgap_5     reactionID: ALD
	Kgap_5_ALD=2.4;
	
// Kigap_5_ALD   id: Kigap_5     reactionID: ALD
	Kigap_5_ALD=10;
	
// k1_6_TPI   id: k1_6     reactionID: TPI
	k1_6_TPI=450000;
	
// k2_6_TPI   id: k2_6     reactionID: TPI
	k2_6_TPI=10000000;
	
// C_7_GAPDH   id: C_7     reactionID: GAPDH
	C_7_GAPDH=1;
	
// Vmaxf_7_GAPDH   id: Vmaxf_7     reactionID: GAPDH
	Vmaxf_7_GAPDH=1152;
	
// Kgap_7_GAPDH   id: Kgap_7     reactionID: GAPDH
	Kgap_7_GAPDH=0.21;
	
// Knad_7_GAPDH   id: Knad_7     reactionID: GAPDH
	Knad_7_GAPDH=0.09;
	
// Vmaxr_7_GAPDH   id: Vmaxr_7     reactionID: GAPDH
	Vmaxr_7_GAPDH=6719;
	
// Kbpg_7_GAPDH   id: Kbpg_7     reactionID: GAPDH
	Kbpg_7_GAPDH=0.0098;
	
// Knadh_7_GAPDH   id: Knadh_7     reactionID: GAPDH
	Knadh_7_GAPDH=0.06;
	
// Vmax_8_PGK   id: Vmax_8     reactionID: PGK
	Vmax_8_PGK=1288;
	
// Keq_8_PGK   id: Keq_8     reactionID: PGK
	Keq_8_PGK=3200;
	
// Kp3g_8_PGK   id: Kp3g_8     reactionID: PGK
	Kp3g_8_PGK=0.53;
	
// Katp_8_PGK   id: Katp_8     reactionID: PGK
	Katp_8_PGK=0.3;
	
// Kbpg_8_PGK   id: Kbpg_8     reactionID: PGK
	Kbpg_8_PGK=0.003;
	
// Kadp_8_PGK   id: Kadp_8     reactionID: PGK
	Kadp_8_PGK=0.2;
	
// Vmax_9_PGM   id: Vmax_9     reactionID: PGM
	Vmax_9_PGM=2585;
	
// Kp3g_9_PGM   id: Kp3g_9     reactionID: PGM
	Kp3g_9_PGM=1.2;
	
// Keq_9_PGM   id: Keq_9     reactionID: PGM
	Keq_9_PGM=0.19;
	
// Kp2g_9_PGM   id: Kp2g_9     reactionID: PGM
	Kp2g_9_PGM=0.08;
	
// Vmax_10_ENO   id: Vmax_10     reactionID: ENO
	Vmax_10_ENO=201.6;
	
// Kp2g_10_ENO   id: Kp2g_10     reactionID: ENO
	Kp2g_10_ENO=0.04;
	
// Keq_10_ENO   id: Keq_10     reactionID: ENO
	Keq_10_ENO=6.7;
	
// Kpep_10_ENO   id: Kpep_10     reactionID: ENO
	Kpep_10_ENO=0.5;
	
// Vmax_11_PYK   id: Vmax_11     reactionID: PYK
	Vmax_11_PYK=1000;
	
// Kpep_11_PYK   id: Kpep_11     reactionID: PYK
	Kpep_11_PYK=0.14;
	
// Kadp_11_PYK   id: Kadp_11     reactionID: PYK
	Kadp_11_PYK=0.53;
	
// Keq_11_PYK   id: Keq_11     reactionID: PYK
	Keq_11_PYK=6500;
	
// Kpyr_11_PYK   id: Kpyr_11     reactionID: PYK
	Kpyr_11_PYK=21;
	
// Katp_11_PYK   id: Katp_11     reactionID: PYK
	Katp_11_PYK=1.5;
	
// Vmax_12_PDC   id: Vmax_12     reactionID: PDC
	Vmax_12_PDC=857.8;
	
// Kpyr_12_PDC   id: Kpyr_12     reactionID: PDC
	Kpyr_12_PDC=4.33;
	
// nH_12_PDC   id: nH_12     reactionID: PDC
	nH_12_PDC=1.9;
	
// Vmax_13_ADH   id: Vmax_13     reactionID: ADH
	Vmax_13_ADH=209.5;
	
// Ketoh_13_ADH   id: Ketoh_13     reactionID: ADH
	Ketoh_13_ADH=17;
	
// Kinad_13_ADH   id: Kinad_13     reactionID: ADH
	Kinad_13_ADH=0.92;
	
// Keq_13_ADH   id: Keq_13     reactionID: ADH
	Keq_13_ADH=6.9e-05;
	
// Knad_13_ADH   id: Knad_13     reactionID: ADH
	Knad_13_ADH=0.17;
	
// Knadh_13_ADH   id: Knadh_13     reactionID: ADH
	Knadh_13_ADH=0.11;
	
// Kinadh_13_ADH   id: Kinadh_13     reactionID: ADH
	Kinadh_13_ADH=0.031;
	
// Kacald_13_ADH   id: Kacald_13     reactionID: ADH
	Kacald_13_ADH=1.11;
	
// Kiacald_13_ADH   id: Kiacald_13     reactionID: ADH
	Kiacald_13_ADH=1.1;
	
// Kietoh_13_ADH   id: Kietoh_13     reactionID: ADH
	Kietoh_13_ADH=90;
	
// Katpase_14_ATPase   id: Katpase_14     reactionID: ATPase
	Katpase_14_ATPase=39.5;
	
// k1_15_AK   id: k1_15     reactionID: AK
	k1_15_AK=45;
	
// k2_15_AK   id: k2_15     reactionID: AK
	k2_15_AK=100;
	
// Vmax_16_G3PDH   id: Vmax_16     reactionID: G3PDH
	Vmax_16_G3PDH=47.11;
	
// Kdhap_16_G3PDH   id: Kdhap_16     reactionID: G3PDH
	Kdhap_16_G3PDH=0.4;
	
// Knadh_16_G3PDH   id: Knadh_16     reactionID: G3PDH
	Knadh_16_G3PDH=0.023;
	
// Keq_16_G3PDH   id: Keq_16     reactionID: G3PDH
	Keq_16_G3PDH=4300;
	
// Kglycerol_16_G3PDH   id: Kglycerol_16     reactionID: G3PDH
	Kglycerol_16_G3PDH=1;
	
// Knad_16_G3PDH   id: Knad_16     reactionID: G3PDH
	Knad_16_G3PDH=0.93;
	
// KGLYCOGEN_17_Glycogen_Branch   id: KGLYCOGEN_17     reactionID: Glycogen_Branch
	KGLYCOGEN_17_Glycogen_Branch=6;
	
// Ktrehalose_18_Trehalose_Branch   id: Ktrehalose_18     reactionID: Trehalose_Branch
	Ktrehalose_18_Trehalose_Branch=2.4;
	
// k_19_Succinate_Branch   id: k_19     reactionID: Succinate_Branch
	k_19_Succinate_Branch=21.4;
	



xdot=[
//x(1)   ID: GLCo  initialValue: 2
	0;
	
//x(2)   ID: GLCi  initialValue: 0.097652231064563
	(1/compartment_cell)*( (-1)*(1)* ((compartment_cell*Vmax_2_HK*((( x(2) * x(3) )/(Kglc_2_HK*Katp_2_HK))-(( x(4) * x(5) )/(Kglc_2_HK*Katp_2_HK*Keq_2_HK))))/((( 1 )+( x(2) /Kglc_2_HK)+( x(4) /Kg6p_2_HK))*(( 1 )+( x(3) /Katp_2_HK)+( x(5) /Kadp_2_HK)))) + (1)*(1)* (((Vmax_1_HXT*( x(1) - x(2) ))/Kglc_1_HXT)/(( 1 )+(( x(1) + x(2) )/Kglc_1_HXT)+((Ki_1_HXT* x(1) * x(2) )/(power(Kglc_1_HXT,( 2 )))))) );
	
//x(3)   ID: ATP  initialValue: 2.52512746499271
	(1/compartment_cell)*( (-1)*(1)* ((compartment_cell*Vmax_2_HK*((( x(2) * x(3) )/(Kglc_2_HK*Katp_2_HK))-(( x(4) * x(5) )/(Kglc_2_HK*Katp_2_HK*Keq_2_HK))))/((( 1 )+( x(2) /Kglc_2_HK)+( x(4) /Kg6p_2_HK))*(( 1 )+( x(3) /Katp_2_HK)+( x(5) /Kadp_2_HK)))) + (-1)*(1)* (compartment_cell*Vmax_4_PFK*((gR_4_PFK*( x(6) /Kf6p_4_PFK)*( x(3) /Katp_4_PFK)*(( 1 )+( x(6) /Kf6p_4_PFK)+( x(3) /Katp_4_PFK)+((((gR_4_PFK* x(6) )/Kf6p_4_PFK)* x(3) )/Katp_4_PFK)))/((power((( 1 )+( x(6) /Kf6p_4_PFK)+( x(3) /Katp_4_PFK)+((((gR_4_PFK* x(6) )/Kf6p_4_PFK)* x(3) )/Katp_4_PFK)),( 2 )))+(L0_4_PFK*(power(((( 1 )+((Ciatp_4_PFK* x(3) )/Kiatp_4_PFK))/(( 1 )+( x(3) /Kiatp_4_PFK))),( 2 )))*(power(((( 1 )+((Camp_4_PFK* x(8) )/Kamp_4_PFK))/(( 1 )+( x(8) /Kamp_4_PFK))),( 2 )))*(power(((( 1 )+((Cf26_4_PFK* x(9) )/Kf26_4_PFK)+((Cf16_4_PFK* x(7) )/Kf16_4_PFK))/(( 1 )+( x(9) /Kf26_4_PFK)+( x(7) /Kf16_4_PFK))),( 2 )))*(power((( 1 )+((Catp_4_PFK* x(3) )/Katp_4_PFK)),( 2 ))))))) + (-1)*(1)* (compartment_cell*Katpase_14_ATPase* x(3) ) + (-1)*(1)* (compartment_cell*KGLYCOGEN_17_Glycogen_Branch) + (-1)*(1)* (compartment_cell*Ktrehalose_18_Trehalose_Branch) + (1)*(1)* ((compartment_cell*Vmax_8_PGK*(((Keq_8_PGK* x(13) * x(5) )-( x(15) * x(3) ))/(Kp3g_8_PGK*Katp_8_PGK)))/((( 1 )+( x(13) /Kbpg_8_PGK)+( x(15) /Kp3g_8_PGK))*(( 1 )+( x(5) /Kadp_8_PGK)+( x(3) /Katp_8_PGK)))) + (1)*(1)* ((compartment_cell*Vmax_11_PYK*((( x(17) * x(5) )/(Kpep_11_PYK*Kadp_11_PYK))-(( x(18) * x(3) )/(Kpep_11_PYK*Kadp_11_PYK*Keq_11_PYK))))/((( 1 )+( x(17) /Kpep_11_PYK)+( x(18) /Kpyr_11_PYK))*(( 1 )+( x(5) /Kadp_11_PYK)+( x(3) /Katp_11_PYK)))) + (1)*(1)* (compartment_cell*((k1_15_AK* x(5) * x(5) )-(k2_15_AK* x(3) * x(8) ))) );
	
//x(4)   ID: G6P  initialValue: 2.67504014044787
	(1/compartment_cell)*( (-1)*(1)* ((compartment_cell*Vmax_3_PGI*(( x(4) /Kg6p_3_PGI)-( x(6) /(Kg6p_3_PGI*Keq_3_PGI))))/(( 1 )+( x(4) /Kg6p_3_PGI)+( x(6) /Kf6p_3_PGI))) + (-1)*(1)* (compartment_cell*KGLYCOGEN_17_Glycogen_Branch) + (-1)*(2)* (compartment_cell*Ktrehalose_18_Trehalose_Branch) + (1)*(1)* ((compartment_cell*Vmax_2_HK*((( x(2) * x(3) )/(Kglc_2_HK*Katp_2_HK))-(( x(4) * x(5) )/(Kglc_2_HK*Katp_2_HK*Keq_2_HK))))/((( 1 )+( x(2) /Kglc_2_HK)+( x(4) /Kg6p_2_HK))*(( 1 )+( x(3) /Katp_2_HK)+( x(5) /Kadp_2_HK)))) );
	
//x(5)   ID: ADP  initialValue: 1.28198768168719
	(1/compartment_cell)*( (-1)*(1)* ((compartment_cell*Vmax_8_PGK*(((Keq_8_PGK* x(13) * x(5) )-( x(15) * x(3) ))/(Kp3g_8_PGK*Katp_8_PGK)))/((( 1 )+( x(13) /Kbpg_8_PGK)+( x(15) /Kp3g_8_PGK))*(( 1 )+( x(5) /Kadp_8_PGK)+( x(3) /Katp_8_PGK)))) + (-1)*(1)* ((compartment_cell*Vmax_11_PYK*((( x(17) * x(5) )/(Kpep_11_PYK*Kadp_11_PYK))-(( x(18) * x(3) )/(Kpep_11_PYK*Kadp_11_PYK*Keq_11_PYK))))/((( 1 )+( x(17) /Kpep_11_PYK)+( x(18) /Kpyr_11_PYK))*(( 1 )+( x(5) /Kadp_11_PYK)+( x(3) /Katp_11_PYK)))) + (-1)*(2)* (compartment_cell*((k1_15_AK* x(5) * x(5) )-(k2_15_AK* x(3) * x(8) ))) + (1)*(1)* ((compartment_cell*Vmax_2_HK*((( x(2) * x(3) )/(Kglc_2_HK*Katp_2_HK))-(( x(4) * x(5) )/(Kglc_2_HK*Katp_2_HK*Keq_2_HK))))/((( 1 )+( x(2) /Kglc_2_HK)+( x(4) /Kg6p_2_HK))*(( 1 )+( x(3) /Katp_2_HK)+( x(5) /Kadp_2_HK)))) + (1)*(1)* (compartment_cell*Vmax_4_PFK*((gR_4_PFK*( x(6) /Kf6p_4_PFK)*( x(3) /Katp_4_PFK)*(( 1 )+( x(6) /Kf6p_4_PFK)+( x(3) /Katp_4_PFK)+((((gR_4_PFK* x(6) )/Kf6p_4_PFK)* x(3) )/Katp_4_PFK)))/((power((( 1 )+( x(6) /Kf6p_4_PFK)+( x(3) /Katp_4_PFK)+((((gR_4_PFK* x(6) )/Kf6p_4_PFK)* x(3) )/Katp_4_PFK)),( 2 )))+(L0_4_PFK*(power(((( 1 )+((Ciatp_4_PFK* x(3) )/Kiatp_4_PFK))/(( 1 )+( x(3) /Kiatp_4_PFK))),( 2 )))*(power(((( 1 )+((Camp_4_PFK* x(8) )/Kamp_4_PFK))/(( 1 )+( x(8) /Kamp_4_PFK))),( 2 )))*(power(((( 1 )+((Cf26_4_PFK* x(9) )/Kf26_4_PFK)+((Cf16_4_PFK* x(7) )/Kf16_4_PFK))/(( 1 )+( x(9) /Kf26_4_PFK)+( x(7) /Kf16_4_PFK))),( 2 )))*(power((( 1 )+((Catp_4_PFK* x(3) )/Katp_4_PFK)),( 2 ))))))) + (1)*(1)* (compartment_cell*Katpase_14_ATPase* x(3) ) + (1)*(1)* (compartment_cell*KGLYCOGEN_17_Glycogen_Branch) + (1)*(1)* (compartment_cell*Ktrehalose_18_Trehalose_Branch) );
	
//x(6)   ID: F6P  initialValue: 0.624976405532373
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*Vmax_4_PFK*((gR_4_PFK*( x(6) /Kf6p_4_PFK)*( x(3) /Katp_4_PFK)*(( 1 )+( x(6) /Kf6p_4_PFK)+( x(3) /Katp_4_PFK)+((((gR_4_PFK* x(6) )/Kf6p_4_PFK)* x(3) )/Katp_4_PFK)))/((power((( 1 )+( x(6) /Kf6p_4_PFK)+( x(3) /Katp_4_PFK)+((((gR_4_PFK* x(6) )/Kf6p_4_PFK)* x(3) )/Katp_4_PFK)),( 2 )))+(L0_4_PFK*(power(((( 1 )+((Ciatp_4_PFK* x(3) )/Kiatp_4_PFK))/(( 1 )+( x(3) /Kiatp_4_PFK))),( 2 )))*(power(((( 1 )+((Camp_4_PFK* x(8) )/Kamp_4_PFK))/(( 1 )+( x(8) /Kamp_4_PFK))),( 2 )))*(power(((( 1 )+((Cf26_4_PFK* x(9) )/Kf26_4_PFK)+((Cf16_4_PFK* x(7) )/Kf16_4_PFK))/(( 1 )+( x(9) /Kf26_4_PFK)+( x(7) /Kf16_4_PFK))),( 2 )))*(power((( 1 )+((Catp_4_PFK* x(3) )/Katp_4_PFK)),( 2 ))))))) + (1)*(1)* ((compartment_cell*Vmax_3_PGI*(( x(4) /Kg6p_3_PGI)-( x(6) /(Kg6p_3_PGI*Keq_3_PGI))))/(( 1 )+( x(4) /Kg6p_3_PGI)+( x(6) /Kf6p_3_PGI))) );
	
//x(7)   ID: F16bP  initialValue: 6.22132076069411
	(1/compartment_cell)*( (-1)*(1)* ((compartment_cell*Vmax_5_ALD*(( x(7) /Kf16bp_5_ALD)-(( x(10) * x(11) )/(Kf16bp_5_ALD*Keq_5_ALD))))/(( 1 )+( x(7) /Kf16bp_5_ALD)+( x(10) /Kdhap_5_ALD)+( x(11) /Kgap_5_ALD)+(( x(7) * x(11) )/(Kf16bp_5_ALD*Kigap_5_ALD))+(( x(10) * x(11) )/(Kdhap_5_ALD*Kgap_5_ALD)))) + (1)*(1)* (compartment_cell*Vmax_4_PFK*((gR_4_PFK*( x(6) /Kf6p_4_PFK)*( x(3) /Katp_4_PFK)*(( 1 )+( x(6) /Kf6p_4_PFK)+( x(3) /Katp_4_PFK)+((((gR_4_PFK* x(6) )/Kf6p_4_PFK)* x(3) )/Katp_4_PFK)))/((power((( 1 )+( x(6) /Kf6p_4_PFK)+( x(3) /Katp_4_PFK)+((((gR_4_PFK* x(6) )/Kf6p_4_PFK)* x(3) )/Katp_4_PFK)),( 2 )))+(L0_4_PFK*(power(((( 1 )+((Ciatp_4_PFK* x(3) )/Kiatp_4_PFK))/(( 1 )+( x(3) /Kiatp_4_PFK))),( 2 )))*(power(((( 1 )+((Camp_4_PFK* x(8) )/Kamp_4_PFK))/(( 1 )+( x(8) /Kamp_4_PFK))),( 2 )))*(power(((( 1 )+((Cf26_4_PFK* x(9) )/Kf26_4_PFK)+((Cf16_4_PFK* x(7) )/Kf16_4_PFK))/(( 1 )+( x(9) /Kf26_4_PFK)+( x(7) /Kf16_4_PFK))),( 2 )))*(power((( 1 )+((Catp_4_PFK* x(3) )/Katp_4_PFK)),( 2 ))))))) );
	
//x(8)   ID: AMP  initialValue: 0.292884853320091
	(1/compartment_cell)*( (1)*(1)* (compartment_cell*((k1_15_AK* x(5) * x(5) )-(k2_15_AK* x(3) * x(8) ))) );
	
//x(9)   ID: F26bP  initialValue: 0.02
	0;
	
//x(10)   ID: DHAP  initialValue: 1.00415254899644
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*((k1_6_TPI* x(10) )-(k2_6_TPI* x(11) ))) + (-1)*(1)* ((compartment_cell*Vmax_16_G3PDH*((( x(10) /Kdhap_16_G3PDH)*( x(14) /Knadh_16_G3PDH))-(( x(22) /Kdhap_16_G3PDH)*( x(12) /Knadh_16_G3PDH)*(( 1 )/Keq_16_G3PDH))))/((( 1 )+( x(10) /Kdhap_16_G3PDH)+( x(22) /Kglycerol_16_G3PDH))*(( 1 )+( x(14) /Knadh_16_G3PDH)+( x(12) /Knad_16_G3PDH)))) + (1)*(1)* ((compartment_cell*Vmax_5_ALD*(( x(7) /Kf16bp_5_ALD)-(( x(10) * x(11) )/(Kf16bp_5_ALD*Keq_5_ALD))))/(( 1 )+( x(7) /Kf16bp_5_ALD)+( x(10) /Kdhap_5_ALD)+( x(11) /Kgap_5_ALD)+(( x(7) * x(11) )/(Kf16bp_5_ALD*Kigap_5_ALD))+(( x(10) * x(11) )/(Kdhap_5_ALD*Kgap_5_ALD)))) );
	
//x(11)   ID: GAP  initialValue: 0.0451809175780963
	(1/compartment_cell)*( (-1)*(1)* ((compartment_cell*C_7_GAPDH*(((Vmaxf_7_GAPDH* x(11) * x(12) )/(Kgap_7_GAPDH*Knad_7_GAPDH))-((Vmaxr_7_GAPDH* x(13) * x(14) )/(Kbpg_7_GAPDH*Knadh_7_GAPDH))))/((( 1 )+( x(11) /Kgap_7_GAPDH)+( x(13) /Kbpg_7_GAPDH))*(( 1 )+( x(12) /Knad_7_GAPDH)+( x(14) /Knadh_7_GAPDH)))) + (1)*(1)* ((compartment_cell*Vmax_5_ALD*(( x(7) /Kf16bp_5_ALD)-(( x(10) * x(11) )/(Kf16bp_5_ALD*Keq_5_ALD))))/(( 1 )+( x(7) /Kf16bp_5_ALD)+( x(10) /Kdhap_5_ALD)+( x(11) /Kgap_5_ALD)+(( x(7) * x(11) )/(Kf16bp_5_ALD*Kigap_5_ALD))+(( x(10) * x(11) )/(Kdhap_5_ALD*Kgap_5_ALD)))) + (1)*(1)* (compartment_cell*((k1_6_TPI* x(10) )-(k2_6_TPI* x(11) ))) );
	
//x(12)   ID: NAD  initialValue: 1.50329030201531
	(1/compartment_cell)*( (-1)*(1)* ((compartment_cell*C_7_GAPDH*(((Vmaxf_7_GAPDH* x(11) * x(12) )/(Kgap_7_GAPDH*Knad_7_GAPDH))-((Vmaxr_7_GAPDH* x(13) * x(14) )/(Kbpg_7_GAPDH*Knadh_7_GAPDH))))/((( 1 )+( x(11) /Kgap_7_GAPDH)+( x(13) /Kbpg_7_GAPDH))*(( 1 )+( x(12) /Knad_7_GAPDH)+( x(14) /Knadh_7_GAPDH)))) + (-1)*(1)* ((compartment_cell*Vmax_13_ADH*((( x(21) * x(12) )/(Ketoh_13_ADH*Kinad_13_ADH))-(( x(19) * x(14) )/(Ketoh_13_ADH*Kinad_13_ADH*Keq_13_ADH))))/(( 1 )+( x(12) /Kinad_13_ADH)+(( x(21) *Knad_13_ADH)/(Kinad_13_ADH*Ketoh_13_ADH))+(( x(19) *Knadh_13_ADH)/(Kinadh_13_ADH*Kacald_13_ADH))+( x(14) /Kinadh_13_ADH)+(( x(21) * x(12) )/(Kinad_13_ADH*Ketoh_13_ADH))+(( x(12) * x(19) *Knadh_13_ADH)/(Kinad_13_ADH*Kinadh_13_ADH*Kacald_13_ADH))+(( x(21) * x(14) *Knad_13_ADH)/(Kinad_13_ADH*Kinadh_13_ADH*Ketoh_13_ADH))+(( x(19) * x(14) )/(Kacald_13_ADH*Kinadh_13_ADH))+(( x(21) * x(12) * x(19) )/(Kinad_13_ADH*Kiacald_13_ADH*Ketoh_13_ADH))+(( x(21) * x(19) * x(14) )/(Kietoh_13_ADH*Kinadh_13_ADH*Kacald_13_ADH)))) + (-1)*(3)* (compartment_cell*k_19_Succinate_Branch* x(19) ) + (1)*(1)* ((compartment_cell*Vmax_16_G3PDH*((( x(10) /Kdhap_16_G3PDH)*( x(14) /Knadh_16_G3PDH))-(( x(22) /Kdhap_16_G3PDH)*( x(12) /Knadh_16_G3PDH)*(( 1 )/Keq_16_G3PDH))))/((( 1 )+( x(10) /Kdhap_16_G3PDH)+( x(22) /Kglycerol_16_G3PDH))*(( 1 )+( x(14) /Knadh_16_G3PDH)+( x(12) /Knad_16_G3PDH)))) );
	
//x(13)   ID: BPG  initialValue: 0.000736873499865602
	(1/compartment_cell)*( (-1)*(1)* ((compartment_cell*Vmax_8_PGK*(((Keq_8_PGK* x(13) * x(5) )-( x(15) * x(3) ))/(Kp3g_8_PGK*Katp_8_PGK)))/((( 1 )+( x(13) /Kbpg_8_PGK)+( x(15) /Kp3g_8_PGK))*(( 1 )+( x(5) /Kadp_8_PGK)+( x(3) /Katp_8_PGK)))) + (1)*(1)* ((compartment_cell*C_7_GAPDH*(((Vmaxf_7_GAPDH* x(11) * x(12) )/(Kgap_7_GAPDH*Knad_7_GAPDH))-((Vmaxr_7_GAPDH* x(13) * x(14) )/(Kbpg_7_GAPDH*Knadh_7_GAPDH))))/((( 1 )+( x(11) /Kgap_7_GAPDH)+( x(13) /Kbpg_7_GAPDH))*(( 1 )+( x(12) /Knad_7_GAPDH)+( x(14) /Knadh_7_GAPDH)))) );
	
//x(14)   ID: NADH  initialValue: 0.0867096979846952
	(1/compartment_cell)*( (-1)*(1)* ((compartment_cell*Vmax_16_G3PDH*((( x(10) /Kdhap_16_G3PDH)*( x(14) /Knadh_16_G3PDH))-(( x(22) /Kdhap_16_G3PDH)*( x(12) /Knadh_16_G3PDH)*(( 1 )/Keq_16_G3PDH))))/((( 1 )+( x(10) /Kdhap_16_G3PDH)+( x(22) /Kglycerol_16_G3PDH))*(( 1 )+( x(14) /Knadh_16_G3PDH)+( x(12) /Knad_16_G3PDH)))) + (1)*(1)* ((compartment_cell*C_7_GAPDH*(((Vmaxf_7_GAPDH* x(11) * x(12) )/(Kgap_7_GAPDH*Knad_7_GAPDH))-((Vmaxr_7_GAPDH* x(13) * x(14) )/(Kbpg_7_GAPDH*Knadh_7_GAPDH))))/((( 1 )+( x(11) /Kgap_7_GAPDH)+( x(13) /Kbpg_7_GAPDH))*(( 1 )+( x(12) /Knad_7_GAPDH)+( x(14) /Knadh_7_GAPDH)))) + (1)*(1)* ((compartment_cell*Vmax_13_ADH*((( x(21) * x(12) )/(Ketoh_13_ADH*Kinad_13_ADH))-(( x(19) * x(14) )/(Ketoh_13_ADH*Kinad_13_ADH*Keq_13_ADH))))/(( 1 )+( x(12) /Kinad_13_ADH)+(( x(21) *Knad_13_ADH)/(Kinad_13_ADH*Ketoh_13_ADH))+(( x(19) *Knadh_13_ADH)/(Kinadh_13_ADH*Kacald_13_ADH))+( x(14) /Kinadh_13_ADH)+(( x(21) * x(12) )/(Kinad_13_ADH*Ketoh_13_ADH))+(( x(12) * x(19) *Knadh_13_ADH)/(Kinad_13_ADH*Kinadh_13_ADH*Kacald_13_ADH))+(( x(21) * x(14) *Knad_13_ADH)/(Kinad_13_ADH*Kinadh_13_ADH*Ketoh_13_ADH))+(( x(19) * x(14) )/(Kacald_13_ADH*Kinadh_13_ADH))+(( x(21) * x(12) * x(19) )/(Kinad_13_ADH*Kiacald_13_ADH*Ketoh_13_ADH))+(( x(21) * x(19) * x(14) )/(Kietoh_13_ADH*Kinadh_13_ADH*Kacald_13_ADH)))) + (1)*(3)* (compartment_cell*k_19_Succinate_Branch* x(19) ) );
	
//x(15)   ID: P3G  initialValue: 0.885688538360659
	(1/compartment_cell)*( (-1)*(1)* ((compartment_cell*Vmax_9_PGM*(( x(15) /Kp3g_9_PGM)-( x(16) /(Kp3g_9_PGM*Keq_9_PGM))))/(( 1 )+( x(15) /Kp3g_9_PGM)+( x(16) /Kp2g_9_PGM))) + (1)*(1)* ((compartment_cell*Vmax_8_PGK*(((Keq_8_PGK* x(13) * x(5) )-( x(15) * x(3) ))/(Kp3g_8_PGK*Katp_8_PGK)))/((( 1 )+( x(13) /Kbpg_8_PGK)+( x(15) /Kp3g_8_PGK))*(( 1 )+( x(5) /Kadp_8_PGK)+( x(3) /Katp_8_PGK)))) );
	
//x(16)   ID: P2G  initialValue: 0.127695817386632
	(1/compartment_cell)*( (-1)*(1)* ((compartment_cell*Vmax_10_ENO*(( x(16) /Kp2g_10_ENO)-( x(17) /(Kp2g_10_ENO*Keq_10_ENO))))/(( 1 )+( x(16) /Kp2g_10_ENO)+( x(17) /Kpep_10_ENO))) + (1)*(1)* ((compartment_cell*Vmax_9_PGM*(( x(15) /Kp3g_9_PGM)-( x(16) /(Kp3g_9_PGM*Keq_9_PGM))))/(( 1 )+( x(15) /Kp3g_9_PGM)+( x(16) /Kp2g_9_PGM))) );
	
//x(17)   ID: PEP  initialValue: 0.0632352144936527
	(1/compartment_cell)*( (-1)*(1)* ((compartment_cell*Vmax_11_PYK*((( x(17) * x(5) )/(Kpep_11_PYK*Kadp_11_PYK))-(( x(18) * x(3) )/(Kpep_11_PYK*Kadp_11_PYK*Keq_11_PYK))))/((( 1 )+( x(17) /Kpep_11_PYK)+( x(18) /Kpyr_11_PYK))*(( 1 )+( x(5) /Kadp_11_PYK)+( x(3) /Katp_11_PYK)))) + (1)*(1)* ((compartment_cell*Vmax_10_ENO*(( x(16) /Kp2g_10_ENO)-( x(17) /(Kp2g_10_ENO*Keq_10_ENO))))/(( 1 )+( x(16) /Kp2g_10_ENO)+( x(17) /Kpep_10_ENO))) );
	
//x(18)   ID: PYR  initialValue: 1.81531251192736
	(1/compartment_cell)*( (-1)*(1)* ((compartment_cell*Vmax_12_PDC*(power(( x(18) /Kpyr_12_PDC),nH_12_PDC)))/(( 1 )+(power(( x(18) /Kpyr_12_PDC),nH_12_PDC)))) + (1)*(1)* ((compartment_cell*Vmax_11_PYK*((( x(17) * x(5) )/(Kpep_11_PYK*Kadp_11_PYK))-(( x(18) * x(3) )/(Kpep_11_PYK*Kadp_11_PYK*Keq_11_PYK))))/((( 1 )+( x(17) /Kpep_11_PYK)+( x(18) /Kpyr_11_PYK))*(( 1 )+( x(5) /Kadp_11_PYK)+( x(3) /Katp_11_PYK)))) );
	
//x(19)   ID: AcAld  initialValue: 0.178140579850657
	(1/compartment_cell)*( (-1)*(2)* (compartment_cell*k_19_Succinate_Branch* x(19) ) + (1)*(1)* ((compartment_cell*Vmax_12_PDC*(power(( x(18) /Kpyr_12_PDC),nH_12_PDC)))/(( 1 )+(power(( x(18) /Kpyr_12_PDC),nH_12_PDC)))) + (1)*(1)* ((compartment_cell*Vmax_13_ADH*((( x(21) * x(12) )/(Ketoh_13_ADH*Kinad_13_ADH))-(( x(19) * x(14) )/(Ketoh_13_ADH*Kinad_13_ADH*Keq_13_ADH))))/(( 1 )+( x(12) /Kinad_13_ADH)+(( x(21) *Knad_13_ADH)/(Kinad_13_ADH*Ketoh_13_ADH))+(( x(19) *Knadh_13_ADH)/(Kinadh_13_ADH*Kacald_13_ADH))+( x(14) /Kinadh_13_ADH)+(( x(21) * x(12) )/(Kinad_13_ADH*Ketoh_13_ADH))+(( x(12) * x(19) *Knadh_13_ADH)/(Kinad_13_ADH*Kinadh_13_ADH*Kacald_13_ADH))+(( x(21) * x(14) *Knad_13_ADH)/(Kinad_13_ADH*Kinadh_13_ADH*Ketoh_13_ADH))+(( x(19) * x(14) )/(Kacald_13_ADH*Kinadh_13_ADH))+(( x(21) * x(12) * x(19) )/(Kinad_13_ADH*Kiacald_13_ADH*Ketoh_13_ADH))+(( x(21) * x(19) * x(14) )/(Kietoh_13_ADH*Kinadh_13_ADH*Kacald_13_ADH)))) );
	
//x(20)   ID: CO2  initialValue: 1
	0;
	
//x(21)   ID: EtOH  initialValue: 50
	0;
	
//x(22)   ID: Glycerol  initialValue: 0.15
	0;
	
//x(23)   ID: Glycogen  initialValue: 0
	0;
	
//x(24)   ID: Trehalose  initialValue: 0
	0;
	
//x(25)   ID: Succinate  initialValue: 0
	0
	];


	
endfunction
        x0=[2;0.097652231064563;2.52512746499271;2.67504014044787;1.28198768168719;0.624976405532373;6.22132076069411;0.292884853320091;0.02;1.00415254899644;0.0451809175780963;1.50329030201531;0.000736873499865602;0.0867096979846952;0.885688538360659;0.127695817386632;0.0632352144936527;1.81531251192736;0.178140579850657;1;50;0.15;0;0;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)' 'x(14)' 'x(15)' 'x(16)' 'x(17)' 'x(18)' 'x(19)' 'x(20)' 'x(21)' 'x(22)' 'x(23)' 'x(24)' 'x(25)'],[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18;19;20;21;22;23;24;25])

//real_variable:
	
	
//x(1)   id: GLCo  initialValue: 2
	
//x(2)   id: GLCi  initialValue: 0.097652231064563
	
//x(3)   id: ATP  initialValue: 2.52512746499271
	
//x(4)   id: G6P  initialValue: 2.67504014044787
	
//x(5)   id: ADP  initialValue: 1.28198768168719
	
//x(6)   id: F6P  initialValue: 0.624976405532373
	
//x(7)   id: F16bP  initialValue: 6.22132076069411
	
//x(8)   id: AMP  initialValue: 0.292884853320091
	
//x(9)   id: F26bP  initialValue: 0.02
	
//x(10)   id: DHAP  initialValue: 1.00415254899644
	
//x(11)   id: GAP  initialValue: 0.0451809175780963
	
//x(12)   id: NAD  initialValue: 1.50329030201531
	
//x(13)   id: BPG  initialValue: 0.000736873499865602
	
//x(14)   id: NADH  initialValue: 0.0867096979846952
	
//x(15)   id: P3G  initialValue: 0.885688538360659
	
//x(16)   id: P2G  initialValue: 0.127695817386632
	
//x(17)   id: PEP  initialValue: 0.0632352144936527
	
//x(18)   id: PYR  initialValue: 1.81531251192736
	
//x(19)   id: AcAld  initialValue: 0.178140579850657
	
//x(20)   id: CO2  initialValue: 1
	
//x(21)   id: EtOH  initialValue: 50
	
//x(22)   id: Glycerol  initialValue: 0.15
	
//x(23)   id: Glycogen  initialValue: 0
	
//x(24)   id: Trehalose  initialValue: 0
	
//x(25)   id: Succinate  initialValue: 0