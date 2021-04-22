
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_CYTOPLASM   id: CYTOPLASM
	compartment_CYTOPLASM=1;
		
// compartment_MT_IMS   id: MT_IMS
	compartment_MT_IMS=1;
		
// compartment_MT_IM   id: MT_IM
	compartment_MT_IM=1;
		
// compartment_MATRIX   id: MATRIX
	compartment_MATRIX=1;
		
// flow_p   id: flow
	flow_p=0.011;
		
// Glc_F_GLCflow   id: Glc_F     reactionID: GLCflow
	Glc_F_GLCflow=64.941;
	
// V1_v1   id: V1     reactionID: v1
	V1_v1=0.0005;
	
// K1GLC_v1   id: K1GLC     reactionID: v1
	K1GLC_v1=0.0001;
	
// K1ATP_v1   id: K1ATP     reactionID: v1
	K1ATP_v1=6.3e-05;
	
// V2_v2   id: V2     reactionID: v2
	V2_v2=0.0015;
	
// K2_v2   id: K2     reactionID: v2
	K2_v2=1.6e-09;
	
// k2_v2   id: k2     reactionID: v2
	k2_v2=0.017;
	
// K2ATP_v2   id: K2ATP     reactionID: v2
	K2ATP_v2=1e-05;
	
// k3f_v3   id: k3f     reactionID: v3
	k3f_v3=1;
	
// k3b_v3   id: k3b     reactionID: v3
	k3b_v3=0.05;
	
// V4_v4   id: V4     reactionID: v4
	V4_v4=0.01;
	
// K4GAP_v4   id: K4GAP     reactionID: v4
	K4GAP_v4=0.001;
	
// K4NAD_v4   id: K4NAD     reactionID: v4
	K4NAD_v4=0.001;
	
// k5f_v5   id: k5f     reactionID: v5
	k5f_v5=1000;
	
// k5b_v5   id: k5b     reactionID: v5
	k5b_v5=500;
	
// V6_v6   id: V6     reactionID: v6
	V6_v6=0.01;
	
// K6PEP_v6   id: K6PEP     reactionID: v6
	K6PEP_v6=0.0002;
	
// K6ADP_v6   id: K6ADP     reactionID: v6
	K6ADP_v6=0.0003;
	
// k8f_v7   id: k8f     reactionID: v7
	k8f_v7=1000;
	
// k8b_v7   id: k8b     reactionID: v7
	k8b_v7=0.143;
	
// k9f_hidden_1   id: k9f     reactionID: hidden_1
	k9f_hidden_1=10000;
	
// k9b_hidden_1   id: k9b     reactionID: hidden_1
	k9b_hidden_1=10000;
	
// V_v8   id: V     reactionID: v8
	V_v8=1e-08;
	
// K_v8   id: K     reactionID: v8
	K_v8=1.5e-07;
	
// v8_PYC_v8   id: v8_PYC     reactionID: v8
	v8_PYC_v8=0.00033211;
	
// KmA_v9   id: KmA     reactionID: v9
	KmA_v9=2.5e-05;
	
// KmB_v9   id: KmB     reactionID: v9
	KmB_v9=1.3e-05;
	
// KmC_v9   id: KmC     reactionID: v9
	KmC_v9=5e-05;
	
// KmP_v9   id: KmP     reactionID: v9
	KmP_v9=5.9e-07;
	
// KmR_v9   id: KmR     reactionID: v9
	KmR_v9=6.9e-07;
	
// Kia_v9   id: Kia     reactionID: v9
	Kia_v9=0.00055;
	
// Kib_v9   id: Kib     reactionID: v9
	Kib_v9=0.0003;
	
// Kic_v9   id: Kic     reactionID: v9
	Kic_v9=0.00018;
	
// Kip_v9   id: Kip     reactionID: v9
	Kip_v9=6e-05;
	
// Kiq_v9   id: Kiq     reactionID: v9
	Kiq_v9=3.5e-05;
	
// Kir_v9   id: Kir     reactionID: v9
	Kir_v9=3.6e-05;
	
// KcF_v9   id: KcF     reactionID: v9
	KcF_v9=856;
	
// v9_PDC_v9   id: v9_PDC     reactionID: v9
	v9_PDC_v9=3.8617e-07;
	
// V_v10   id: V     reactionID: v10
	V_v10=0.005267;
	
// Ka_v10   id: Ka     reactionID: v10
	Ka_v10=1.18e-05;
	
// Kb_v10   id: Kb     reactionID: v10
	Kb_v10=4.8e-06;
	
// Kia_v10   id: Kia     reactionID: v10
	Kia_v10=1e-05;
	
// Kib_v10   id: Kib     reactionID: v10
	Kib_v10=4e-06;
	
// v10_CS_v10   id: v10_CS     reactionID: v10
	v10_CS_v10=3.8617e-07;
	
// Ks_v11   id: Ks     reactionID: v11
	Ks_v11=0.0005;
	
// Kp_v11   id: Kp     reactionID: v11
	Kp_v11=0.00011;
	
// KcF_v11   id: KcF     reactionID: v11
	KcF_v11=20.47;
	
// KcR_v11   id: KcR     reactionID: v11
	KcR_v11=31.44;
	
// v11_ACO_v11   id: v11_ACO     reactionID: v11
	v11_ACO_v11=3.8617e-07;
	
// KcF_v12   id: KcF     reactionID: v12
	KcF_v12=105;
	
// b_v12   id: b     reactionID: v12
	b_v12=29.6;
	
// c_v12   id: c     reactionID: v12
	c_v12=0.00023;
	
// d_v12   id: d     reactionID: v12
	d_v12=7.8e-05;
	
// e_v12   id: e     reactionID: v12
	e_v12=0.00064;
	
// f_v12   id: f     reactionID: v12
	f_v12=0.00036;
	
// v12_IDHa_v12   id: v12_IDHa     reactionID: v12
	v12_IDHa_v12=3.8617e-07;
	
// KmA_v14   id: KmA     reactionID: v14
	KmA_v14=0.00022;
	
// KmB_v14   id: KmB     reactionID: v14
	KmB_v14=2.5e-05;
	
// KmC_v14   id: KmC     reactionID: v14
	KmC_v14=5e-05;
	
// KmP_v14   id: KmP     reactionID: v14
	KmP_v14=0.0003;
	
// KmR_v14   id: KmR     reactionID: v14
	KmR_v14=0.0006;
	
// Kia_v14   id: Kia     reactionID: v14
	Kia_v14=0.00072;
	
// Kib_v14   id: Kib     reactionID: v14
	Kib_v14=0.00074;
	
// Kic_v14   id: Kic     reactionID: v14
	Kic_v14=0.0001;
	
// Kip_v14   id: Kip     reactionID: v14
	Kip_v14=1.1e-06;
	
// Kiq_v14   id: Kiq     reactionID: v14
	Kiq_v14=8.1e-05;
	
// Kir_v14   id: Kir     reactionID: v14
	Kir_v14=2.5e-05;
	
// KcF_v14   id: KcF     reactionID: v14
	KcF_v14=177;
	
// v14_OGDC_v14   id: v14_OGDC     reactionID: v14
	v14_OGDC_v14=3.8617e-07;
	
// KmA_v15   id: KmA     reactionID: v15
	KmA_v15=5e-06;
	
// KmB_v15   id: KmB     reactionID: v15
	KmB_v15=3.5e-05;
	
// KmC_v15   id: KmC     reactionID: v15
	KmC_v15=0.00045;
	
// KmP_v15   id: KmP     reactionID: v15
	KmP_v15=0.0006;
	
// KmQ_v15   id: KmQ     reactionID: v15
	KmQ_v15=7.5e-06;
	
// KmC2_v15   id: KmC2     reactionID: v15
	KmC2_v15=0.00045;
	
// KmP2_v15   id: KmP2     reactionID: v15
	KmP2_v15=0.0006;
	
// Keq_v15   id: Keq     reactionID: v15
	Keq_v15=8.375;
	
// Kia_v15   id: Kia     reactionID: v15
	Kia_v15=0.0004;
	
// Kib_v15   id: Kib     reactionID: v15
	Kib_v15=2e-05;
	
// Kic_v15   id: Kic     reactionID: v15
	Kic_v15=3e-05;
	
// Kip_v15   id: Kip     reactionID: v15
	Kip_v15=0.07;
	
// Kiq_v15   id: Kiq     reactionID: v15
	Kiq_v15=5e-06;
	
// Kir_v15   id: Kir     reactionID: v15
	Kir_v15=6.7e-06;
	
// Kc1_v15   id: Kc1     reactionID: v15
	Kc1_v15=100;
	
// Kc2_v15   id: Kc2     reactionID: v15
	Kc2_v15=100;
	
// v15_SCS_v15   id: v15_SCS     reactionID: v15
	v15_SCS_v15=3.8617e-07;
	
// KmS1_v16   id: KmS1     reactionID: v16
	KmS1_v16=3e-05;
	
// KmS2_v16   id: KmS2     reactionID: v16
	KmS2_v16=6.9e-05;
	
// KmP1_v16   id: KmP1     reactionID: v16
	KmP1_v16=3e-07;
	
// KmP2_v16   id: KmP2     reactionID: v16
	KmP2_v16=1.5e-06;
	
// KiS1_v16   id: KiS1     reactionID: v16
	KiS1_v16=4.1e-06;
	
// KiP2_v16   id: KiP2     reactionID: v16
	KiP2_v16=5.6e-06;
	
// Keq_v16   id: Keq     reactionID: v16
	Keq_v16=0.037;
	
// KcF_v16   id: KcF     reactionID: v16
	KcF_v16=69.3;
	
// KcR_v16   id: KcR     reactionID: v16
	KcR_v16=1.73;
	
// v16_SDH_v16   id: v16_SDH     reactionID: v16
	v16_SDH_v16=9.9211e-05;
	
// Kp_v17   id: Kp     reactionID: v17
	Kp_v17=2.5e-05;
	
// Ks_v17   id: Ks     reactionID: v17
	Ks_v17=5e-06;
	
// KcF_v17   id: KcF     reactionID: v17
	KcF_v17=800;
	
// KcR_v17   id: KcR     reactionID: v17
	KcR_v17=900;
	
// v17_FM_v17   id: v17_FM     reactionID: v17
	v17_FM_v17=3.8617e-07;
	
// KmS1_v18   id: KmS1     reactionID: v18
	KmS1_v18=7.2e-05;
	
// KmS2_v18   id: KmS2     reactionID: v18
	KmS2_v18=0.00011;
	
// KmP1_v18   id: KmP1     reactionID: v18
	KmP1_v18=0.0016;
	
// KmP2_v18   id: KmP2     reactionID: v18
	KmP2_v18=0.00017;
	
// KiS1_v18   id: KiS1     reactionID: v18
	KiS1_v18=1.1e-05;
	
// KiS2_v18   id: KiS2     reactionID: v18
	KiS2_v18=0.0001;
	
// KiP1_v18   id: KiP1     reactionID: v18
	KiP1_v18=0.0071;
	
// KiP2_v18   id: KiP2     reactionID: v18
	KiP2_v18=0.0019;
	
// KcF_v18   id: KcF     reactionID: v18
	KcF_v18=0.39;
	
// KcR_v18   id: KcR     reactionID: v18
	KcR_v18=0.04;
	
// v18_MDH_v18   id: v18_MDH     reactionID: v18
	v18_MDH_v18=3.8617e-07;
	
// KmS1_v20   id: KmS1     reactionID: v20
	KmS1_v20=0.002;
	
// KmS2_v20   id: KmS2     reactionID: v20
	KmS2_v20=0.0004;
	
// KmP1_v20   id: KmP1     reactionID: v20
	KmP1_v20=0.032;
	
// KmP2_v20   id: KmP2     reactionID: v20
	KmP2_v20=0.0004;
	
// KiS1_v20   id: KiS1     reactionID: v20
	KiS1_v20=0.0087;
	
// KiP2_v20   id: KiP2     reactionID: v20
	KiP2_v20=0.012;
	
// Keq_v20   id: Keq     reactionID: v20
	Keq_v20=0.69;
	
// KcF_v20   id: KcF     reactionID: v20
	KcF_v20=337;
	
// KcR_v20   id: KcR     reactionID: v20
	KcR_v20=0.15;
	
// v20_AlaTA_v20   id: v20_AlaTA     reactionID: v20
	v20_AlaTA_v20=3.8617e-07;
	
// KmS1_v21   id: KmS1     reactionID: v21
	KmS1_v21=0.0009;
	
// KmS2_v21   id: KmS2     reactionID: v21
	KmS2_v21=0.0001;
	
// KmP1_v21   id: KmP1     reactionID: v21
	KmP1_v21=4e-05;
	
// KmP2_v21   id: KmP2     reactionID: v21
	KmP2_v21=0.004;
	
// KiS1_v21   id: KiS1     reactionID: v21
	KiS1_v21=0.002;
	
// KiP2_v21   id: KiP2     reactionID: v21
	KiP2_v21=0.0083;
	
// Keq_v21   id: Keq     reactionID: v21
	Keq_v21=6.2;
	
// KcF_v21   id: KcF     reactionID: v21
	KcF_v21=300;
	
// KcR_v21   id: KcR     reactionID: v21
	KcR_v21=1000;
	
// v21_AspTA_v21   id: v21_AspTA     reactionID: v21
	v21_AspTA_v21=3.8617e-07;
	
// KiS1_v22   id: KiS1     reactionID: v22
	KiS1_v22=8e-05;
	
// KiS2_v22   id: KiS2     reactionID: v22
	KiS2_v22=0.0032;
	
// KiP1_v22   id: KiP1     reactionID: v22
	KiP1_v22=0.00018;
	
// KiP2_v22   id: KiP2     reactionID: v22
	KiP2_v22=0.0028;
	
// KcF_v22   id: KcF     reactionID: v22
	KcF_v22=10;
	
// KcR_v22   id: KcR     reactionID: v22
	KcR_v22=10;
	
// alpha_v22   id: alpha     reactionID: v22
	alpha_v22=1;
	
// beta_v22   id: beta     reactionID: v22
	beta_v22=1;
	
// gamma_v22   id: gamma     reactionID: v22
	gamma_v22=1;
	
// delta_v22   id: delta     reactionID: v22
	delta_v22=1;
	
// v22_AGC_v22   id: v22_AGC     reactionID: v22
	v22_AGC_v22=0.00033211;
	
// KmS1_v24   id: KmS1     reactionID: v24
	KmS1_v24=9.2e-06;
	
// KmS2_v24   id: KmS2     reactionID: v24
	KmS2_v24=0.00026;
	
// KmP1_v24   id: KmP1     reactionID: v24
	KmP1_v24=9.9e-06;
	
// KmP2_v24   id: KmP2     reactionID: v24
	KmP2_v24=5.9e-05;
	
// KiS1_v24   id: KiS1     reactionID: v24
	KiS1_v24=2.1e-08;
	
// KiP2_v24   id: KiP2     reactionID: v24
	KiP2_v24=9.8e-08;
	
// Keq_v24   id: Keq     reactionID: v24
	Keq_v24=407.9;
	
// KcF_v24   id: KcF     reactionID: v24
	KcF_v24=498;
	
// KcR_v24   id: KcR     reactionID: v24
	KcR_v24=229;
	
// v24_Complex_I_v24   id: v24_Complex_I     reactionID: v24
	v24_Complex_I_v24=0.00033211;
	
// KmA_v25   id: KmA     reactionID: v25
	KmA_v25=2.8e-05;
	
// KmB_v25   id: KmB     reactionID: v25
	KmB_v25=3e-06;
	
// Kb1_v25   id: Kb1     reactionID: v25
	Kb1_v25=5.4e-06;
	
// Kb2_v25   id: Kb2     reactionID: v25
	Kb2_v25=5.7e-06;
	
// Kq1_v25   id: Kq1     reactionID: v25
	Kq1_v25=2.8e-06;
	
// Kq2_v25   id: Kq2     reactionID: v25
	Kq2_v25=1.9e-06;
	
// k8_v25   id: k8     reactionID: v25
	k8_v25=622.1;
	
// KcF_v25   id: KcF     reactionID: v25
	KcF_v25=426.8;
	
// v25_Complex_III_v25   id: v25_Complex_III     reactionID: v25
	v25_Complex_III_v25=9.963e-09;
	
// Ks_v26   id: Ks     reactionID: v26
	Ks_v26=0.00011;
	
// KcF_v26   id: KcF     reactionID: v26
	KcF_v26=0.000935;
	
// v26_Complex_IV_v26   id: v26_Complex_IV     reactionID: v26
	v26_Complex_IV_v26=0.002325;
	
// V_v27   id: V     reactionID: v27
	V_v27=0.004833;
	
// Ka_v27   id: Ka     reactionID: v27
	Ka_v27=5e-06;
	
// Kb_v27   id: Kb     reactionID: v27
	Kb_v27=4.5e-06;
	
// Kc_v27   id: Kc     reactionID: v27
	Kc_v27=3.9e-05;
	
// Kia_v27   id: Kia     reactionID: v27
	Kia_v27=5e-06;
	
// Kib_v27   id: Kib     reactionID: v27
	Kib_v27=4.5e-06;
	
// Kid_v27   id: Kid     reactionID: v27
	Kid_v27=0.0043;
	
// Keq_v27   id: Keq     reactionID: v27
	Keq_v27=18000000;
	
// v10_CS_v27   id: v10_CS     reactionID: v27
	v10_CS_v27=3.8617e-07;
	
// V_v28   id: V     reactionID: v28
	V_v28=0.075;
	
// Km_v28   id: Km     reactionID: v28
	Km_v28=0.0045;
	
// Ki_v28   id: Ki     reactionID: v28
	Ki_v28=0.047;
	
// v28_Complex_V_v28   id: v28_Complex_V     reactionID: v28
	v28_Complex_V_v28=0.0033211;
	
// Ks_v29   id: Ks     reactionID: v29
	Ks_v29=0.0005;
	
// Kp_v29   id: Kp     reactionID: v29
	Kp_v29=0.00011;
	
// KcF_v29   id: KcF     reactionID: v29
	KcF_v29=20.47;
	
// KcR_v29   id: KcR     reactionID: v29
	KcR_v29=31.44;
	
// v29_ACO_v29   id: v29_ACO     reactionID: v29
	v29_ACO_v29=3.8617e-07;
	
// KiS1_v30   id: KiS1     reactionID: v30
	KiS1_v30=0.0003;
	
// KiS2_v30   id: KiS2     reactionID: v30
	KiS2_v30=0.0007;
	
// KiP1_v30   id: KiP1     reactionID: v30
	KiP1_v30=0.0014;
	
// KiP2_v30   id: KiP2     reactionID: v30
	KiP2_v30=0.00017;
	
// KcF_v30   id: KcF     reactionID: v30
	KcF_v30=3.675;
	
// KcR_v30   id: KcR     reactionID: v30
	KcR_v30=4.83;
	
// alpha_v30   id: alpha     reactionID: v30
	alpha_v30=1;
	
// beta_v30   id: beta     reactionID: v30
	beta_v30=1;
	
// gamma_v30   id: gamma     reactionID: v30
	gamma_v30=1;
	
// delta_v30   id: delta     reactionID: v30
	delta_v30=1;
	
// v30_OGC_v30   id: v30_OGC     reactionID: v30
	v30_OGC_v30=0.00033211;
	
// k1_v31   id: k1     reactionID: v31
	k1_v31=34000000;
	
// k2_v31   id: k2     reactionID: v31
	k2_v31=35000000;
	
// k3_v31   id: k3     reactionID: v31
	k3_v31=4650;
	
// k4_v31   id: k4     reactionID: v31
	k4_v31=214;
	
// kminus1_v31   id: kminus1     reactionID: v31
	kminus1_v31=26;
	
// kminus2_v31   id: kminus2     reactionID: v31
	kminus2_v31=1400;
	
// kminus3_v31   id: kminus3     reactionID: v31
	kminus3_v31=570000;
	
// kminus4_v31   id: kminus4     reactionID: v31
	kminus4_v31=260000;
	
// v31_MDH_v31   id: v31_MDH     reactionID: v31
	v31_MDH_v31=3.8617e-07;
	
// KmS1_v32   id: KmS1     reactionID: v32
	KmS1_v32=0.0009;
	
// KmS2_v32   id: KmS2     reactionID: v32
	KmS2_v32=0.0001;
	
// KmP1_v32   id: KmP1     reactionID: v32
	KmP1_v32=4e-05;
	
// KmP2_v32   id: KmP2     reactionID: v32
	KmP2_v32=0.004;
	
// KiS1_v32   id: KiS1     reactionID: v32
	KiS1_v32=0.002;
	
// KiP2_v32   id: KiP2     reactionID: v32
	KiP2_v32=0.0083;
	
// Keq_v32   id: Keq     reactionID: v32
	Keq_v32=6.2;
	
// KcF_v32   id: KcF     reactionID: v32
	KcF_v32=300;
	
// KcR_v32   id: KcR     reactionID: v32
	KcR_v32=1000;
	
// v32_AspTA_v32   id: v32_AspTA     reactionID: v32
	v32_AspTA_v32=3.8617e-07;
	
// KiS1_v33   id: KiS1     reactionID: v33
	KiS1_v33=0.00013;
	
// KiS2_v33   id: KiS2     reactionID: v33
	KiS2_v33=0.00044;
	
// KiP1_v33   id: KiP1     reactionID: v33
	KiP1_v33=0.00033;
	
// KiP2_v33   id: KiP2     reactionID: v33
	KiP2_v33=4.18e-05;
	
// KcF_v33   id: KcF     reactionID: v33
	KcF_v33=5.6;
	
// KcR_v33   id: KcR     reactionID: v33
	KcR_v33=3.5;
	
// alpha_v33   id: alpha     reactionID: v33
	alpha_v33=1;
	
// beta_v33   id: beta     reactionID: v33
	beta_v33=1;
	
// gamma_v33   id: gamma     reactionID: v33
	gamma_v33=1;
	
// delta_v33   id: delta     reactionID: v33
	delta_v33=1;
	
// v33_CIC_v33   id: v33_CIC     reactionID: v33
	v33_CIC_v33=0.00033211;
	
// KmS1_v34   id: KmS1     reactionID: v34
	KmS1_v34=3.1e-07;
	
// KmS2_v34   id: KmS2     reactionID: v34
	KmS2_v34=3.9e-07;
	
// KmP1_v34   id: KmP1     reactionID: v34
	KmP1_v34=3.2e-07;
	
// KmP2_v34   id: KmP2     reactionID: v34
	KmP2_v34=4.2e-09;
	
// KiS1_v34   id: KiS1     reactionID: v34
	KiS1_v34=3.1e-07;
	
// KiP2_v34   id: KiP2     reactionID: v34
	KiP2_v34=3e-07;
	
// Keq_v34   id: Keq     reactionID: v34
	Keq_v34=0.66;
	
// KcF_v34   id: KcF     reactionID: v34
	KcF_v34=78;
	
// KcR_v34   id: KcR     reactionID: v34
	KcR_v34=101;
	
// v34_ETF_QO_v34   id: v34_ETF_QO     reactionID: v34
	v34_ETF_QO_v34=3.3211e-05;
	
// KmS1_v35   id: KmS1     reactionID: v35
	KmS1_v35=3.9e-05;
	
// KmS2_v35   id: KmS2     reactionID: v35
	KmS2_v35=1.2e-07;
	
// KmP1_v35   id: KmP1     reactionID: v35
	KmP1_v35=1.08e-06;
	
// KmP2_v35   id: KmP2     reactionID: v35
	KmP2_v35=2.42e-05;
	
// KiS1_v35   id: KiS1     reactionID: v35
	KiS1_v35=7.6e-05;
	
// KiS2_v35   id: KiS2     reactionID: v35
	KiS2_v35=2.4e-07;
	
// KiP1_v35   id: KiP1     reactionID: v35
	KiP1_v35=7.53e-05;
	
// KiP2_v35   id: KiP2     reactionID: v35
	KiP2_v35=1.19e-05;
	
// Keq_v35   id: Keq     reactionID: v35
	Keq_v35=8.99;
	
// KcF_v35   id: KcF     reactionID: v35
	KcF_v35=2.18;
	
// KcR_v35   id: KcR     reactionID: v35
	KcR_v35=0.3;
	
// v35_ACD_v35   id: v35_ACD     reactionID: v35
	v35_ACD_v35=3.3211e-05;
	
// KmA_v36   id: KmA     reactionID: v36
	KmA_v36=0.00011;
	
// KmB_v36   id: KmB     reactionID: v36
	KmB_v36=0.00163;
	
// KmC_v36   id: KmC     reactionID: v36
	KmC_v36=0.00037;
	
// KmP_v36   id: KmP     reactionID: v36
	KmP_v36=0.016;
	
// KmQ_v36   id: KmQ     reactionID: v36
	KmQ_v36=0.00024;
	
// KmR_v36   id: KmR     reactionID: v36
	KmR_v36=5.1e-05;
	
// Keq_v36   id: Keq     reactionID: v36
	Keq_v36=9;
	
// Kia_v36   id: Kia     reactionID: v36
	Kia_v36=0.00015;
	
// Kib_v36   id: Kib     reactionID: v36
	Kib_v36=0.0016;
	
// Kic_v36   id: Kic     reactionID: v36
	Kic_v36=0.00013;
	
// Kip_v36   id: Kip     reactionID: v36
	Kip_v36=0.0079;
	
// Kiq_v36   id: Kiq     reactionID: v36
	Kiq_v36=0.00019;
	
// Kir_v36   id: Kir     reactionID: v36
	Kir_v36=0.00024;
	
// KcF_v36   id: KcF     reactionID: v36
	KcF_v36=200;
	
// KcR_v36   id: KcR     reactionID: v36
	KcR_v36=20;
	
// v36_PC_v36   id: v36_PC     reactionID: v36
	v36_PC_v36=3.8617e-07;
	
// K_v37   id: K     reactionID: v37
	K_v37=3.4e-05;
	
// V_v37   id: V     reactionID: v37
	V_v37=3.99e-08;
	
// v37_GUT2P_v37   id: v37_GUT2P     reactionID: v37
	v37_GUT2P_v37=0.001;
	
// K_v38   id: K     reactionID: v38
	K_v38=34;
	
// V_v38   id: V     reactionID: v38
	V_v38=0.0399;
	
// v38_GUT2P_v38   id: v38_GUT2P     reactionID: v38
	v38_GUT2P_v38=0.001;
	
// V_v40   id: V     reactionID: v40
	V_v40=0.1667;
	
// K_v40   id: K     reactionID: v40
	K_v40=0.012;
	
// v40_AAC_v40   id: v40_AAC     reactionID: v40
	v40_AAC_v40=0.00033211;
	
// phi0_v41   id: phi0     reactionID: v41
	phi0_v41=0.051;
	
// phi1_v41   id: phi1     reactionID: v41
	phi1_v41=9.5e-08;
	
// phi2_v41   id: phi2     reactionID: v41
	phi2_v41=9.6e-07;
	
// phi12_v41   id: phi12     reactionID: v41
	phi12_v41=9e-08;
	
// phir0_v41   id: phir0     reactionID: v41
	phir0_v41=0.066;
	
// phir1_v41   id: phir1     reactionID: v41
	phir1_v41=3.7e-07;
	
// phir2_v41   id: phir2     reactionID: v41
	phir2_v41=2.9e-05;
	
// phir3_v41   id: phir3     reactionID: v41
	phir3_v41=0.00025;
	
// phir12_v41   id: phir12     reactionID: v41
	phir12_v41=6e-12;
	
// phir13_v41   id: phir13     reactionID: v41
	phir13_v41=1.3e-10;
	
// phir23_v41   id: phir23     reactionID: v41
	phir23_v41=9.4e-08;
	
// phir123_v41   id: phir123     reactionID: v41
	phir123_v41=4.6e-14;
	
// v41_IDHc_v41   id: v41_IDHc     reactionID: v41
	v41_IDHc_v41=3.8617e-07;
	
// KiS1_v42   id: KiS1     reactionID: v42
	KiS1_v42=0.00013;
	
// KiS2_v42   id: KiS2     reactionID: v42
	KiS2_v42=0.00044;
	
// KiP1_v42   id: KiP1     reactionID: v42
	KiP1_v42=0.00033;
	
// KiP2_v42   id: KiP2     reactionID: v42
	KiP2_v42=4.18e-05;
	
// KcF_v42   id: KcF     reactionID: v42
	KcF_v42=5.6;
	
// KcR_v42   id: KcR     reactionID: v42
	KcR_v42=3.5;
	
// alpha_v42   id: alpha     reactionID: v42
	alpha_v42=1;
	
// beta_v42   id: beta     reactionID: v42
	beta_v42=1;
	
// gamma_v42   id: gamma     reactionID: v42
	gamma_v42=1;
	
// delta_v42   id: delta     reactionID: v42
	delta_v42=1;
	
// v42_CIC_v42   id: v42_CIC     reactionID: v42
	v42_CIC_v42=0.00033211;
	
// V_v43   id: V     reactionID: v43
	V_v43=1.11667;
	
// K_v43   id: K     reactionID: v43
	K_v43=0.005;
	
// v43_AAC_v43   id: v43_AAC     reactionID: v43
	v43_AAC_v43=0.00033211;
	
// Kcat_v39   id: Kcat     reactionID: v39
	Kcat_v39=0.333;
	
// Kmal_v39   id: Kmal     reactionID: v39
	Kmal_v39=0.000125;
	
// Knadp_v39   id: Knadp     reactionID: v39
	Knadp_v39=0.011;
	
// v39_MDH_v39   id: v39_MDH     reactionID: v39
	v39_MDH_v39=3.8617e-07;
	
// Kcat_v44   id: Kcat     reactionID: v44
	Kcat_v44=130.5;
	
// Km_v44   id: Km     reactionID: v44
	Km_v44=0.01295;
	
// v44_MDH_v44   id: v44_MDH     reactionID: v44
	v44_MDH_v44=3.8617e-07;
	



xdot=[
//x(1)   ID: GLC  initialValue: 1.12817e-05
	(1/compartment_CYTOPLASM)*( (-1)*(1)* (compartment_CYTOPLASM*((V1_v1* x(21) * x(1) )/((K1GLC_v1+ x(1) )*(K1ATP_v1+ x(21) )))) + (1)*(1)* (compartment_CYTOPLASM*((Glc_F_GLCflow*(power(( 10 ),( -3 ))))- x(1) )*flow_p) );
	
//x(2)   ID: F6P  initialValue: 0.00065939
	(1/compartment_CYTOPLASM)*( (-1)*(1)* (compartment_CYTOPLASM*((V2_v2* x(21) *(power( x(2) ,( 2 ))))/(((K2_v2*(( 1 )+(k2_v2*(power(( x(21) / x(8) ),( 2 ))))))+(power( x(2) ,( 2 ))))*(K2ATP_v2+ x(21) )))) + (1)*(1)* (compartment_CYTOPLASM*((V1_v1* x(21) * x(1) )/((K1GLC_v1+ x(1) )*(K1ATP_v1+ x(21) )))) );
	
//x(3)   ID: FBP  initialValue: 7.70135e-06
	(1/compartment_CYTOPLASM)*( (-1)*(1)* (compartment_CYTOPLASM*((k3f_v3* x(3) )-(k3b_v3*(power( x(4) ,( 2 )))))) + (1)*(1)* (compartment_CYTOPLASM*((V2_v2* x(21) *(power( x(2) ,( 2 ))))/(((K2_v2*(( 1 )+(k2_v2*(power(( x(21) / x(8) ),( 2 ))))))+(power( x(2) ,( 2 ))))*(K2ATP_v2+ x(21) )))) );
	
//x(4)   ID: GAP  initialValue: 1.90919e-06
	(1/compartment_CYTOPLASM)*( (-1)*(1)* (compartment_CYTOPLASM* x(4) *flow_p) + (-1)*(1)* (compartment_CYTOPLASM*((V4_v4* x(23) * x(4) )/((K4GAP_v4+ x(4) )*(K4NAD_v4+ x(23) )))) + (1)*(2)* (compartment_CYTOPLASM*((k3f_v3* x(3) )-(k3b_v3*(power( x(4) ,( 2 )))))) );
	
//x(5)   ID: DPG  initialValue: 0.000299109
	(1/compartment_CYTOPLASM)*( (-1)*(1)* (compartment_CYTOPLASM*((k5f_v5* x(5) * x(22) )-(k5b_v5* x(6) * x(21) ))) + (1)*(1)* (compartment_CYTOPLASM*((V4_v4* x(23) * x(4) )/((K4GAP_v4+ x(4) )*(K4NAD_v4+ x(23) )))) );
	
//x(6)   ID: PEP  initialValue: 2.1125e-06
	(1/compartment_CYTOPLASM)*( (-1)*(1)* (compartment_CYTOPLASM*((V6_v6* x(22) * x(6) )/((K6PEP_v6+ x(6) )*(K6ADP_v6+ x(22) )))) + (1)*(1)* (compartment_CYTOPLASM*((k5f_v5* x(5) * x(22) )-(k5b_v5* x(6) * x(21) ))) );
	
//x(7)   ID: PYR_cyt  initialValue: 4.22702e-06
	(1/compartment_CYTOPLASM)*( (-1)*(1)* (compartment_CYTOPLASM*((k8f_v7* x(24) * x(7) )-(k8b_v7* x(23) * x(9) ))) + (-1)*(1)* (compartment_MATRIX*((V_v8* x(7) *v8_PYC_v8)/(K_v8+ x(7) ))) + (1)*(1)* (compartment_CYTOPLASM*((V6_v6* x(22) * x(6) )/((K6PEP_v6+ x(6) )*(K6ADP_v6+ x(22) )))) + (1)*(1)* (compartment_CYTOPLASM*((v39_MDH_v39*Kcat_v39* x(16) * x(25) )/((Kmal_v39+ x(16) )*(Knadp_v39+ x(25) )))) );
	
//x(8)   ID: AMP  initialValue: 2.61149e-06
	(1/compartment_CYTOPLASM)*( (-1)*(1)* (compartment_CYTOPLASM*((k9f_hidden_1* x(8) * x(21) )-(k9b_hidden_1*(power( x(22) ,( 2 )))))) );
	
//x(9)   ID: LAC  initialValue: 0.00033981
	(1/compartment_CYTOPLASM)*( (-1)*(1)* (compartment_CYTOPLASM* x(9) *flow_p) + (1)*(1)* (compartment_CYTOPLASM*((k8f_v7* x(24) * x(7) )-(k8b_v7* x(23) * x(9) ))) );
	
//x(10)   ID: G3P  initialValue: 0.0076925
	(1/compartment_CYTOPLASM)*( (-1)*(1)* (compartment_CYTOPLASM*((V_v37*v37_GUT2P_v37* x(10) )/(K_v37+ x(10) ))) + (1)*(1)* (compartment_CYTOPLASM*((V_v38*v38_GUT2P_v38* x(24) )/(K_v38+ x(24) ))) );
	
//x(11)   ID: DHAP  initialValue: 0.0076925
	(1/compartment_CYTOPLASM)*( (-1)*(1)* (compartment_CYTOPLASM*((V_v38*v38_GUT2P_v38* x(24) )/(K_v38+ x(24) ))) + (1)*(1)* (compartment_CYTOPLASM*((V_v37*v37_GUT2P_v37* x(10) )/(K_v37+ x(10) ))) );
	
//x(12)   ID: OXA_cyt  initialValue: 4e-06
	(1/compartment_CYTOPLASM)*( (-1)*(1)* (compartment_CYTOPLASM*((v31_MDH_v31*((k1_v31*k2_v31*k3_v31*k4_v31* x(24) * x(12) )-(kminus1_v31*kminus2_v31*kminus3_v31*kminus4_v31* x(16) * x(23) )))/((kminus1_v31*(kminus2_v31+k3_v31)*k4_v31)+(k1_v31*(kminus2_v31+k3_v31)*k4_v31* x(24) )+(kminus1_v31*(kminus2_v31+k3_v31)*kminus4_v31* x(23) )+(k2_v31*k3_v31*k4_v31* x(12) )+(kminus1_v31*kminus2_v31*kminus3_v31* x(16) )+(k1_v31*k2_v31*(k3_v31+k4_v31)* x(24) * x(12) )+((kminus1_v31+kminus2_v31)*kminus3_v31*kminus4_v31* x(16) * x(23) )+k1_v31+kminus2_v31+(kminus3_v31* x(24) * x(16) )+(k1_v31*k2_v31*kminus3_v31* x(24) * x(12) * x(16) )+(k2_v31*k3_v31*kminus4_v31* x(12) * x(23) )+(k2_v31*kminus3_v31*kminus4_v31* x(12) * x(16) * x(23) )))) + (1)*(1)* ((compartment_CYTOPLASM*Kid_v27*Kc_v27*((V_v27* x(17) * x(12) *v10_CS_v27)/(( x(17) * x(12) )+(Ka_v27* x(12) )+(Kb_v27* x(17) )+(Kia_v27*Kib_v27))))/(Keq_v27*Kia_v27*Kb_v27)) + (1)*(1)* (compartment_CYTOPLASM*((KcF_v32*KcR_v32*v32_AspTA_v32*(( x(13) * x(15) )-(( x(12) * x(14) )/Keq_v32)))/((KcR_v32*KmS2_v32* x(13) )+(KcR_v32*KmS1_v32* x(15) )+((KcF_v32*KmP2_v32* x(12) )/Keq_v32)+((KcF_v32*KmP1_v32* x(14) )/Keq_v32)+(KcR_v32* x(13) * x(15) )+((KcF_v32*KmP2_v32* x(13) * x(12) )/(Keq_v32*KiS1_v32))+((KcF_v32* x(12) * x(14) )/Keq_v32)+((KcR_v32*KmS1_v32* x(15) * x(14) )/KiP2_v32)))) );
	
//x(13)   ID: Asp_cyt  initialValue: 0.00114
	(1/compartment_CYTOPLASM)*( (-1)*(1)* (compartment_CYTOPLASM*((KcF_v32*KcR_v32*v32_AspTA_v32*(( x(13) * x(15) )-(( x(12) * x(14) )/Keq_v32)))/((KcR_v32*KmS2_v32* x(13) )+(KcR_v32*KmS1_v32* x(15) )+((KcF_v32*KmP2_v32* x(12) )/Keq_v32)+((KcF_v32*KmP1_v32* x(14) )/Keq_v32)+(KcR_v32* x(13) * x(15) )+((KcF_v32*KmP2_v32* x(13) * x(12) )/(Keq_v32*KiS1_v32))+((KcF_v32* x(12) * x(14) )/Keq_v32)+((KcR_v32*KmS1_v32* x(15) * x(14) )/KiP2_v32)))) + (1)*(1)* (compartment_MATRIX*(((((((( x(38) * x(14) )/alpha_v22)/KiS1_v22)/KiS2_v22)*KcF_v22)-((((( x(39) * x(13) )/beta_v22)/KiP1_v22)/KiP2_v22)*KcR_v22))*v22_AGC_v22)/(( 1 )+( x(38) /KiS1_v22)+( x(14) /KiS2_v22)+( x(39) /KiP1_v22)+( x(13) /KiP2_v22)+(((( x(38) * x(14) )/alpha_v22)/KiS1_v22)/KiS2_v22)+(((( x(39) * x(13) )/beta_v22)/KiP1_v22)/KiP2_v22)+(((( x(14) * x(13) )/gamma_v22)/KiS2_v22)/KiP2_v22)+(((( x(38) * x(39) )/delta_v22)/KiS1_v22)/KiP1_v22)))) );
	
//x(14)   ID: Glu_cyt  initialValue: 0.00303
	(1/compartment_CYTOPLASM)*( (-1)*(1)* (compartment_MATRIX*(((((((( x(38) * x(14) )/alpha_v22)/KiS1_v22)/KiS2_v22)*KcF_v22)-((((( x(39) * x(13) )/beta_v22)/KiP1_v22)/KiP2_v22)*KcR_v22))*v22_AGC_v22)/(( 1 )+( x(38) /KiS1_v22)+( x(14) /KiS2_v22)+( x(39) /KiP1_v22)+( x(13) /KiP2_v22)+(((( x(38) * x(14) )/alpha_v22)/KiS1_v22)/KiS2_v22)+(((( x(39) * x(13) )/beta_v22)/KiP1_v22)/KiP2_v22)+(((( x(14) * x(13) )/gamma_v22)/KiS2_v22)/KiP2_v22)+(((( x(38) * x(39) )/delta_v22)/KiS1_v22)/KiP1_v22)))) + (1)*(1)* (compartment_CYTOPLASM*((KcF_v32*KcR_v32*v32_AspTA_v32*(( x(13) * x(15) )-(( x(12) * x(14) )/Keq_v32)))/((KcR_v32*KmS2_v32* x(13) )+(KcR_v32*KmS1_v32* x(15) )+((KcF_v32*KmP2_v32* x(12) )/Keq_v32)+((KcF_v32*KmP1_v32* x(14) )/Keq_v32)+(KcR_v32* x(13) * x(15) )+((KcF_v32*KmP2_v32* x(13) * x(12) )/(Keq_v32*KiS1_v32))+((KcF_v32* x(12) * x(14) )/Keq_v32)+((KcR_v32*KmS1_v32* x(15) * x(14) )/KiP2_v32)))) );
	
//x(15)   ID: OG_cyt  initialValue: 2.1e-05
	(1/compartment_CYTOPLASM)*( (-1)*(1)* (compartment_CYTOPLASM*((KcF_v32*KcR_v32*v32_AspTA_v32*(( x(13) * x(15) )-(( x(12) * x(14) )/Keq_v32)))/((KcR_v32*KmS2_v32* x(13) )+(KcR_v32*KmS1_v32* x(15) )+((KcF_v32*KmP2_v32* x(12) )/Keq_v32)+((KcF_v32*KmP1_v32* x(14) )/Keq_v32)+(KcR_v32* x(13) * x(15) )+((KcF_v32*KmP2_v32* x(13) * x(12) )/(Keq_v32*KiS1_v32))+((KcF_v32* x(12) * x(14) )/Keq_v32)+((KcR_v32*KmS1_v32* x(15) * x(14) )/KiP2_v32)))) + (1)*(1)* (compartment_MATRIX*(((((((( x(45) * x(16) )/alpha_v30)/KiS1_v30)/KiS2_v30)*KcF_v30)-((((( x(46) * x(15) )/beta_v30)/KiP1_v30)/KiP2_v30)*KcR_v30))*v30_OGC_v30)/(( 1 )+( x(45) /KiS1_v30)+( x(16) /KiS2_v30)+( x(46) /KiP1_v30)+( x(15) /KiP2_v30)+(((( x(45) * x(16) )/alpha_v30)/KiS1_v30)/KiS2_v30)+(((( x(46) * x(15) )/beta_v30)/KiP1_v30)/KiP2_v30)+(((( x(16) * x(15) )/gamma_v30)/KiS2_v30)/KiP2_v30)+(((( x(45) * x(46) )/delta_v30)/KiS1_v30)/KiP1_v30)))) + (1)*(1)* (compartment_CYTOPLASM*v41_IDHc_v41*((( x(19) * x(25) )/((phi0_v41* x(19) * x(25) )+(phi1_v41* x(25) )+(phi2_v41* x(19) )+phi12_v41))-(( x(15) * x(26) * x(28) )/((phir0_v41* x(15) * x(26) * x(28) )+(phir1_v41* x(26) * x(28) )+(phir2_v41* x(15) * x(28) )+(phir3_v41* x(15) * x(26) )+(phir12_v41* x(28) )+(phir13_v41* x(26) )+(phir23_v41* x(15) )+phir123_v41)))) );
	
//x(16)   ID: Mal_cyt  initialValue: 0.0005
	(1/compartment_CYTOPLASM)*( (-1)*(1)* (compartment_MATRIX*(((((((( x(45) * x(16) )/alpha_v30)/KiS1_v30)/KiS2_v30)*KcF_v30)-((((( x(46) * x(15) )/beta_v30)/KiP1_v30)/KiP2_v30)*KcR_v30))*v30_OGC_v30)/(( 1 )+( x(45) /KiS1_v30)+( x(16) /KiS2_v30)+( x(46) /KiP1_v30)+( x(15) /KiP2_v30)+(((( x(45) * x(16) )/alpha_v30)/KiS1_v30)/KiS2_v30)+(((( x(46) * x(15) )/beta_v30)/KiP1_v30)/KiP2_v30)+(((( x(16) * x(15) )/gamma_v30)/KiS2_v30)/KiP2_v30)+(((( x(45) * x(46) )/delta_v30)/KiS1_v30)/KiP1_v30)))) + (-1)*(1)* (compartment_CYTOPLASM*((v39_MDH_v39*Kcat_v39* x(16) * x(25) )/((Kmal_v39+ x(16) )*(Knadp_v39+ x(25) )))) + (1)*(1)* (compartment_CYTOPLASM*((v31_MDH_v31*((k1_v31*k2_v31*k3_v31*k4_v31* x(24) * x(12) )-(kminus1_v31*kminus2_v31*kminus3_v31*kminus4_v31* x(16) * x(23) )))/((kminus1_v31*(kminus2_v31+k3_v31)*k4_v31)+(k1_v31*(kminus2_v31+k3_v31)*k4_v31* x(24) )+(kminus1_v31*(kminus2_v31+k3_v31)*kminus4_v31* x(23) )+(k2_v31*k3_v31*k4_v31* x(12) )+(kminus1_v31*kminus2_v31*kminus3_v31* x(16) )+(k1_v31*k2_v31*(k3_v31+k4_v31)* x(24) * x(12) )+((kminus1_v31+kminus2_v31)*kminus3_v31*kminus4_v31* x(16) * x(23) )+k1_v31+kminus2_v31+(kminus3_v31* x(24) * x(16) )+(k1_v31*k2_v31*kminus3_v31* x(24) * x(12) * x(16) )+(k2_v31*k3_v31*kminus4_v31* x(12) * x(23) )+(k2_v31*kminus3_v31*kminus4_v31* x(12) * x(16) * x(23) )))) + (1)*(1)* (compartment_MATRIX*(((((((( x(20) * x(46) )/alpha_v33)/KiS1_v33)/KiS2_v33)*KcF_v33)-((((( x(16) * x(48) )/beta_v33)/KiP1_v33)/KiP2_v33)*KcR_v33))*v33_CIC_v33)/(( 1 )+( x(20) /KiS1_v33)+( x(46) /KiS2_v33)+( x(16) /KiP1_v33)+( x(48) /KiP2_v33)+(((( x(20) * x(46) )/alpha_v33)/KiS1_v33)/KiS2_v33)+(((( x(16) * x(48) )/beta_v33)/KiP1_v33)/KiP2_v33)+(((( x(46) * x(48) )/gamma_v33)/KiS2_v33)/KiP2_v33)+(((( x(20) * x(16) )/delta_v33)/KiS1_v33)/KiP1_v33)))) + (1)*(1)* (compartment_MATRIX*(((((((( x(19) * x(46) )/alpha_v42)/KiS1_v42)/KiS2_v42)*KcF_v42)-((((( x(16) * x(49) )/beta_v42)/KiP1_v42)/KiP2_v42)*KcR_v42))*v42_CIC_v42)/(( 1 )+( x(19) /KiS1_v42)+( x(46) /KiS2_v42)+( x(16) /KiP1_v42)+( x(49) /KiP2_v42)+(((( x(19) * x(46) )/alpha_v42)/KiS1_v42)/KiS2_v42)+(((( x(16) * x(49) )/beta_v42)/KiP1_v42)/KiP2_v42)+(((( x(46) * x(49) )/gamma_v42)/KiS2_v42)/KiP2_v42)+(((( x(19) * x(16) )/delta_v42)/KiS1_v42)/KiP1_v42)))) );
	
//x(17)   ID: Acetyl_CoA_cyt  initialValue: 3e-05
	(1/compartment_CYTOPLASM)*( (1)*(1)* ((compartment_CYTOPLASM*Kid_v27*Kc_v27*((V_v27* x(17) * x(12) *v10_CS_v27)/(( x(17) * x(12) )+(Ka_v27* x(12) )+(Kb_v27* x(17) )+(Kia_v27*Kib_v27))))/(Keq_v27*Kia_v27*Kb_v27)) );
	
//x(18)   ID: CoA_cyt  initialValue: 0.000272
	(1/compartment_CYTOPLASM)*( (-1)*(1)* ((compartment_CYTOPLASM*Kid_v27*Kc_v27*((V_v27* x(17) * x(12) *v10_CS_v27)/(( x(17) * x(12) )+(Ka_v27* x(12) )+(Kb_v27* x(17) )+(Kia_v27*Kib_v27))))/(Keq_v27*Kia_v27*Kb_v27)) );
	
//x(19)   ID: IsoCitcyt  initialValue: 0.00042
	(1/compartment_CYTOPLASM)*( (-1)*(1)* (compartment_CYTOPLASM*v41_IDHc_v41*((( x(19) * x(25) )/((phi0_v41* x(19) * x(25) )+(phi1_v41* x(25) )+(phi2_v41* x(19) )+phi12_v41))-(( x(15) * x(26) * x(28) )/((phir0_v41* x(15) * x(26) * x(28) )+(phir1_v41* x(26) * x(28) )+(phir2_v41* x(15) * x(28) )+(phir3_v41* x(15) * x(26) )+(phir12_v41* x(28) )+(phir13_v41* x(26) )+(phir23_v41* x(15) )+phir123_v41)))) + (-1)*(1)* (compartment_MATRIX*(((((((( x(19) * x(46) )/alpha_v42)/KiS1_v42)/KiS2_v42)*KcF_v42)-((((( x(16) * x(49) )/beta_v42)/KiP1_v42)/KiP2_v42)*KcR_v42))*v42_CIC_v42)/(( 1 )+( x(19) /KiS1_v42)+( x(46) /KiS2_v42)+( x(16) /KiP1_v42)+( x(49) /KiP2_v42)+(((( x(19) * x(46) )/alpha_v42)/KiS1_v42)/KiS2_v42)+(((( x(16) * x(49) )/beta_v42)/KiP1_v42)/KiP2_v42)+(((( x(46) * x(49) )/gamma_v42)/KiS2_v42)/KiP2_v42)+(((( x(19) * x(16) )/delta_v42)/KiS1_v42)/KiP1_v42)))) + (1)*(1)* (compartment_CYTOPLASM*((((KcF_v29*Kp_v29* x(20) )-(KcR_v29*Ks_v29* x(19) ))*v29_ACO_v29)/((Ks_v29* x(19) )+(Kp_v29* x(20) )+(Ks_v29*Kp_v29)))) );
	
//x(20)   ID: Cit_cyt  initialValue: 0.00042
	(1/compartment_CYTOPLASM)*( (-1)*(1)* ((compartment_CYTOPLASM*Kid_v27*Kc_v27*((V_v27* x(17) * x(12) *v10_CS_v27)/(( x(17) * x(12) )+(Ka_v27* x(12) )+(Kb_v27* x(17) )+(Kia_v27*Kib_v27))))/(Keq_v27*Kia_v27*Kb_v27)) + (-1)*(1)* (compartment_CYTOPLASM*((((KcF_v29*Kp_v29* x(20) )-(KcR_v29*Ks_v29* x(19) ))*v29_ACO_v29)/((Ks_v29* x(19) )+(Kp_v29* x(20) )+(Ks_v29*Kp_v29)))) + (-1)*(1)* (compartment_MATRIX*(((((((( x(20) * x(46) )/alpha_v33)/KiS1_v33)/KiS2_v33)*KcF_v33)-((((( x(16) * x(48) )/beta_v33)/KiP1_v33)/KiP2_v33)*KcR_v33))*v33_CIC_v33)/(( 1 )+( x(20) /KiS1_v33)+( x(46) /KiS2_v33)+( x(16) /KiP1_v33)+( x(48) /KiP2_v33)+(((( x(20) * x(46) )/alpha_v33)/KiS1_v33)/KiS2_v33)+(((( x(16) * x(48) )/beta_v33)/KiP1_v33)/KiP2_v33)+(((( x(46) * x(48) )/gamma_v33)/KiS2_v33)/KiP2_v33)+(((( x(20) * x(16) )/delta_v33)/KiS1_v33)/KiP1_v33)))) );
	
//x(21)   ID: ATP_cyt  initialValue: 0.00449064
	(1/compartment_CYTOPLASM)*( (-1)*(1)* (compartment_CYTOPLASM*((V1_v1* x(21) * x(1) )/((K1GLC_v1+ x(1) )*(K1ATP_v1+ x(21) )))) + (-1)*(1)* (compartment_CYTOPLASM*((V2_v2* x(21) *(power( x(2) ,( 2 ))))/(((K2_v2*(( 1 )+(k2_v2*(power(( x(21) / x(8) ),( 2 ))))))+(power( x(2) ,( 2 ))))*(K2ATP_v2+ x(21) )))) + (-1)*(1)* (compartment_CYTOPLASM*((k9f_hidden_1* x(8) * x(21) )-(k9b_hidden_1*(power( x(22) ,( 2 )))))) + (1)*(1)* (compartment_CYTOPLASM*((k5f_v5* x(5) * x(22) )-(k5b_v5* x(6) * x(21) ))) + (1)*(1)* (compartment_CYTOPLASM*((V6_v6* x(22) * x(6) )/((K6PEP_v6+ x(6) )*(K6ADP_v6+ x(22) )))) + (1)*(1)* (compartment_MATRIX*((V_v43*v43_AAC_v43* x(50) )/(K_v43+ x(50) ))) );
	
//x(22)   ID: ADP_cyt  initialValue: 0.000108367
	(1/compartment_CYTOPLASM)*( (-1)*(1)* (compartment_CYTOPLASM*((k5f_v5* x(5) * x(22) )-(k5b_v5* x(6) * x(21) ))) + (-1)*(1)* (compartment_CYTOPLASM*((V6_v6* x(22) * x(6) )/((K6PEP_v6+ x(6) )*(K6ADP_v6+ x(22) )))) + (-1)*(1)* (compartment_MATRIX*((V_v40*v40_AAC_v40* x(22) )/(K_v40+ x(22) ))) + (1)*(1)* (compartment_CYTOPLASM*((V1_v1* x(21) * x(1) )/((K1GLC_v1+ x(1) )*(K1ATP_v1+ x(21) )))) + (1)*(1)* (compartment_CYTOPLASM*((V2_v2* x(21) *(power( x(2) ,( 2 ))))/(((K2_v2*(( 1 )+(k2_v2*(power(( x(21) / x(8) ),( 2 ))))))+(power( x(2) ,( 2 ))))*(K2ATP_v2+ x(21) )))) + (1)*(2)* (compartment_CYTOPLASM*((k9f_hidden_1* x(8) * x(21) )-(k9b_hidden_1*(power( x(22) ,( 2 )))))) );
	
//x(23)   ID: NAD  initialValue: 0.00362057
	(1/compartment_CYTOPLASM)*( (-1)*(1)* (compartment_CYTOPLASM*((V4_v4* x(23) * x(4) )/((K4GAP_v4+ x(4) )*(K4NAD_v4+ x(23) )))) + (1)*(1)* (compartment_CYTOPLASM*((k8f_v7* x(24) * x(7) )-(k8b_v7* x(23) * x(9) ))) + (1)*(1)* (compartment_CYTOPLASM*((v31_MDH_v31*((k1_v31*k2_v31*k3_v31*k4_v31* x(24) * x(12) )-(kminus1_v31*kminus2_v31*kminus3_v31*kminus4_v31* x(16) * x(23) )))/((kminus1_v31*(kminus2_v31+k3_v31)*k4_v31)+(k1_v31*(kminus2_v31+k3_v31)*k4_v31* x(24) )+(kminus1_v31*(kminus2_v31+k3_v31)*kminus4_v31* x(23) )+(k2_v31*k3_v31*k4_v31* x(12) )+(kminus1_v31*kminus2_v31*kminus3_v31* x(16) )+(k1_v31*k2_v31*(k3_v31+k4_v31)* x(24) * x(12) )+((kminus1_v31+kminus2_v31)*kminus3_v31*kminus4_v31* x(16) * x(23) )+k1_v31+kminus2_v31+(kminus3_v31* x(24) * x(16) )+(k1_v31*k2_v31*kminus3_v31* x(24) * x(12) * x(16) )+(k2_v31*k3_v31*kminus4_v31* x(12) * x(23) )+(k2_v31*kminus3_v31*kminus4_v31* x(12) * x(16) * x(23) )))) + (1)*(1)* (compartment_CYTOPLASM*((V_v38*v38_GUT2P_v38* x(24) )/(K_v38+ x(24) ))) );
	
//x(24)   ID: NADH_cyt  initialValue: 0.000616118
	(1/compartment_CYTOPLASM)*( (-1)*(1)* (compartment_CYTOPLASM*((k8f_v7* x(24) * x(7) )-(k8b_v7* x(23) * x(9) ))) + (-1)*(1)* (compartment_CYTOPLASM*((v31_MDH_v31*((k1_v31*k2_v31*k3_v31*k4_v31* x(24) * x(12) )-(kminus1_v31*kminus2_v31*kminus3_v31*kminus4_v31* x(16) * x(23) )))/((kminus1_v31*(kminus2_v31+k3_v31)*k4_v31)+(k1_v31*(kminus2_v31+k3_v31)*k4_v31* x(24) )+(kminus1_v31*(kminus2_v31+k3_v31)*kminus4_v31* x(23) )+(k2_v31*k3_v31*k4_v31* x(12) )+(kminus1_v31*kminus2_v31*kminus3_v31* x(16) )+(k1_v31*k2_v31*(k3_v31+k4_v31)* x(24) * x(12) )+((kminus1_v31+kminus2_v31)*kminus3_v31*kminus4_v31* x(16) * x(23) )+k1_v31+kminus2_v31+(kminus3_v31* x(24) * x(16) )+(k1_v31*k2_v31*kminus3_v31* x(24) * x(12) * x(16) )+(k2_v31*k3_v31*kminus4_v31* x(12) * x(23) )+(k2_v31*kminus3_v31*kminus4_v31* x(12) * x(16) * x(23) )))) + (-1)*(1)* (compartment_CYTOPLASM*((V_v38*v38_GUT2P_v38* x(24) )/(K_v38+ x(24) ))) + (1)*(1)* (compartment_CYTOPLASM*((V4_v4* x(23) * x(4) )/((K4GAP_v4+ x(4) )*(K4NAD_v4+ x(23) )))) );
	
//x(25)   ID: NADP_cyt  initialValue: 0.00362057
	(1/compartment_CYTOPLASM)*( (-1)*(1)* (compartment_CYTOPLASM*v41_IDHc_v41*((( x(19) * x(25) )/((phi0_v41* x(19) * x(25) )+(phi1_v41* x(25) )+(phi2_v41* x(19) )+phi12_v41))-(( x(15) * x(26) * x(28) )/((phir0_v41* x(15) * x(26) * x(28) )+(phir1_v41* x(26) * x(28) )+(phir2_v41* x(15) * x(28) )+(phir3_v41* x(15) * x(26) )+(phir12_v41* x(28) )+(phir13_v41* x(26) )+(phir23_v41* x(15) )+phir123_v41)))) + (-1)*(1)* (compartment_CYTOPLASM*((v39_MDH_v39*Kcat_v39* x(16) * x(25) )/((Kmal_v39+ x(16) )*(Knadp_v39+ x(25) )))) );
	
//x(26)   ID: NADPH_cyt  initialValue: 0.000616118
	(1/compartment_CYTOPLASM)*( (1)*(1)* (compartment_CYTOPLASM*v41_IDHc_v41*((( x(19) * x(25) )/((phi0_v41* x(19) * x(25) )+(phi1_v41* x(25) )+(phi2_v41* x(19) )+phi12_v41))-(( x(15) * x(26) * x(28) )/((phir0_v41* x(15) * x(26) * x(28) )+(phir1_v41* x(26) * x(28) )+(phir2_v41* x(15) * x(28) )+(phir3_v41* x(15) * x(26) )+(phir12_v41* x(28) )+(phir13_v41* x(26) )+(phir23_v41* x(15) )+phir123_v41)))) + (1)*(1)* (compartment_CYTOPLASM*((v39_MDH_v39*Kcat_v39* x(16) * x(25) )/((Kmal_v39+ x(16) )*(Knadp_v39+ x(25) )))) );
	
//x(27)   ID: Pyr  initialValue: 0.001025
	(1/compartment_MATRIX)*( (-1)*(1)* (compartment_MATRIX*((KcF_v9*v9_PDC_v9* x(27) * x(29) * x(54) )/((KmC_v9* x(27) * x(29) )+(KmB_v9* x(27) * x(54) )+(KmA_v9* x(29) * x(54) )+( x(27) * x(29) * x(54) )+(((((KmA_v9*KmP_v9*Kib_v9*Kic_v9)/KmR_v9)/Kip_v9)/Kiq_v9)* x(30) * x(55) )+((KmC_v9/Kir_v9)* x(27) * x(29) * x(55) )+((KmB_v9/Kiq_v9)* x(27) * x(54) * x(30) )+((((((KmA_v9*KmP_v9*Kib_v9*Kic_v9)/KmR_v9)/Kip_v9)/Kia_v9)/Kiq_v9)* x(27) * x(30) * x(55) )))) + (-1)*(1)* (compartment_MATRIX*((KcF_v36*KcR_v36*v36_PC_v36*(( x(50) * x(28) * x(27) )-(((%pi)* x(51) * x(47) )/Keq_v36)))/((Kia_v36*KmB_v36*KcR_v36* x(27) )+(KmC_v36*KcR_v36* x(50) * x(28) )+(KmA_v36*KcR_v36* x(28) * x(27) )+(KmB_v36*KcR_v36* x(50) * x(27) )+(KcR_v36* x(50) * x(28) * x(27) )+((Kip_v36*KmQ_v36*KcF_v36* x(47) )/Keq_v36)+((KmQ_v36*KcF_v36*(%pi)* x(47) )/Keq_v36)+((KmP_v36*KcF_v36* x(51) * x(47) )/Keq_v36)+((KmR_v36*KcF_v36*(%pi)* x(51) )/Keq_v36)+((KcF_v36*(%pi)* x(51) * x(47) )/Keq_v36)+((Kia_v36*KmB_v36*KcR_v36* x(27) *(%pi))/Kip_v36)+((Kia_v36*KmB_v36*KcR_v36* x(27) * x(51) )/Kia_v36)+(((Kiq_v36*KmP_v36*KcF_v36* x(28) * x(47) )/Kib_v36)/Keq_v36)+(((Kia_v36*KmP_v36*KcF_v36* x(50) * x(47) )/Kia_v36)/Keq_v36)+((KmA_v36*KcR_v36* x(50) * x(28) * x(47) )/Kir_v36)+(((KmR_v36*KcF_v36* x(27) *(%pi)* x(51) )/Kic_v36)/Keq_v36)+((KmA_v36*KcR_v36* x(28) * x(27) * x(51) )/Kiq_v36)+((KmA_v36*KcR_v36* x(28) * x(27) *(%pi))/Kip_v36)+(((KmP_v36*KcF_v36* x(28) * x(51) * x(47) )/Kib_v36)/Keq_v36)+(((KmQ_v36*KcF_v36* x(28) *(%pi)* x(47) )/Kib_v36)/Keq_v36)))) + (1)*(1)* (compartment_MATRIX*((V_v8* x(7) *v8_PYC_v8)/(K_v8+ x(7) ))) + (1)*(1)* (compartment_MATRIX*((KcF_v20*KcR_v20*v20_AlaTA_v20*(( x(37) * x(45) )-(( x(39) * x(27) )/Keq_v20)))/((KcR_v20*KmS2_v20* x(37) )+(KcR_v20*KmS1_v20* x(45) )+((KcF_v20*KmP2_v20* x(39) )/Keq_v20)+((KcF_v20*KmP1_v20* x(27) )/Keq_v20)+(KcR_v20* x(37) * x(45) )+((KcF_v20*KmP2_v20* x(37) * x(39) )/(Keq_v20*KiS1_v20))+((KcF_v20* x(39) * x(27) )/Keq_v20)+((KcR_v20*KmS1_v20* x(45) * x(27) )/KiP2_v20)))) + (1)*(1)* (compartment_MATRIX*((v44_MDH_v44*Kcat_v44* x(46) )/(Km_v44+ x(46) ))) );
	
//x(28)   ID: CO2  initialValue: 0.00163
	(1/compartment_MATRIX)*( (-1)*(1)* (compartment_MATRIX*((KcF_v36*KcR_v36*v36_PC_v36*(( x(50) * x(28) * x(27) )-(((%pi)* x(51) * x(47) )/Keq_v36)))/((Kia_v36*KmB_v36*KcR_v36* x(27) )+(KmC_v36*KcR_v36* x(50) * x(28) )+(KmA_v36*KcR_v36* x(28) * x(27) )+(KmB_v36*KcR_v36* x(50) * x(27) )+(KcR_v36* x(50) * x(28) * x(27) )+((Kip_v36*KmQ_v36*KcF_v36* x(47) )/Keq_v36)+((KmQ_v36*KcF_v36*(%pi)* x(47) )/Keq_v36)+((KmP_v36*KcF_v36* x(51) * x(47) )/Keq_v36)+((KmR_v36*KcF_v36*(%pi)* x(51) )/Keq_v36)+((KcF_v36*(%pi)* x(51) * x(47) )/Keq_v36)+((Kia_v36*KmB_v36*KcR_v36* x(27) *(%pi))/Kip_v36)+((Kia_v36*KmB_v36*KcR_v36* x(27) * x(51) )/Kia_v36)+(((Kiq_v36*KmP_v36*KcF_v36* x(28) * x(47) )/Kib_v36)/Keq_v36)+(((Kia_v36*KmP_v36*KcF_v36* x(50) * x(47) )/Kia_v36)/Keq_v36)+((KmA_v36*KcR_v36* x(50) * x(28) * x(47) )/Kir_v36)+(((KmR_v36*KcF_v36* x(27) *(%pi)* x(51) )/Kic_v36)/Keq_v36)+((KmA_v36*KcR_v36* x(28) * x(27) * x(51) )/Kiq_v36)+((KmA_v36*KcR_v36* x(28) * x(27) *(%pi))/Kip_v36)+(((KmP_v36*KcF_v36* x(28) * x(51) * x(47) )/Kib_v36)/Keq_v36)+(((KmQ_v36*KcF_v36* x(28) *(%pi)* x(47) )/Kib_v36)/Keq_v36)))) + (1)*(1)* (compartment_MATRIX*((KcF_v9*v9_PDC_v9* x(27) * x(29) * x(54) )/((KmC_v9* x(27) * x(29) )+(KmB_v9* x(27) * x(54) )+(KmA_v9* x(29) * x(54) )+( x(27) * x(29) * x(54) )+(((((KmA_v9*KmP_v9*Kib_v9*Kic_v9)/KmR_v9)/Kip_v9)/Kiq_v9)* x(30) * x(55) )+((KmC_v9/Kir_v9)* x(27) * x(29) * x(55) )+((KmB_v9/Kiq_v9)* x(27) * x(54) * x(30) )+((((((KmA_v9*KmP_v9*Kib_v9*Kic_v9)/KmR_v9)/Kip_v9)/Kia_v9)/Kiq_v9)* x(27) * x(30) * x(55) )))) + (1)*(1)* (compartment_MATRIX*((KcF_v14*v14_OGDC_v14* x(45) * x(29) * x(54) )/((KmC_v14* x(45) * x(29) )+(KmB_v14* x(45) * x(54) )+(KmA_v14* x(29) * x(54) )+( x(45) * x(29) * x(54) )+(((((KmA_v14*KmP_v14*Kib_v14*Kic_v14)/KmR_v14)/Kip_v14)/Kiq_v14)* x(33) * x(55) )+((KmC_v14/Kir_v14)* x(45) * x(29) * x(55) )+((KmB_v14/Kiq_v14)* x(45) * x(54) * x(33) )+((((((KmA_v14*KmP_v14*Kib_v14*Kic_v14)/KmR_v14)/Kip_v14)/Kia_v14)/Kiq_v14)* x(45) * x(33) * x(55) )))) );
	
//x(29)   ID: CoA  initialValue: 0.000272
	(1/compartment_MATRIX)*( (-1)*(1)* (compartment_MATRIX*((KcF_v9*v9_PDC_v9* x(27) * x(29) * x(54) )/((KmC_v9* x(27) * x(29) )+(KmB_v9* x(27) * x(54) )+(KmA_v9* x(29) * x(54) )+( x(27) * x(29) * x(54) )+(((((KmA_v9*KmP_v9*Kib_v9*Kic_v9)/KmR_v9)/Kip_v9)/Kiq_v9)* x(30) * x(55) )+((KmC_v9/Kir_v9)* x(27) * x(29) * x(55) )+((KmB_v9/Kiq_v9)* x(27) * x(54) * x(30) )+((((((KmA_v9*KmP_v9*Kib_v9*Kic_v9)/KmR_v9)/Kip_v9)/Kia_v9)/Kiq_v9)* x(27) * x(30) * x(55) )))) + (-1)*(1)* (compartment_MATRIX*((KcF_v14*v14_OGDC_v14* x(45) * x(29) * x(54) )/((KmC_v14* x(45) * x(29) )+(KmB_v14* x(45) * x(54) )+(KmA_v14* x(29) * x(54) )+( x(45) * x(29) * x(54) )+(((((KmA_v14*KmP_v14*Kib_v14*Kic_v14)/KmR_v14)/Kip_v14)/Kiq_v14)* x(33) * x(55) )+((KmC_v14/Kir_v14)* x(45) * x(29) * x(55) )+((KmB_v14/Kiq_v14)* x(45) * x(54) * x(33) )+((((((KmA_v14*KmP_v14*Kib_v14*Kic_v14)/KmR_v14)/Kip_v14)/Kia_v14)/Kiq_v14)* x(45) * x(33) * x(55) )))) + (1)*(1)* (compartment_MATRIX*((V_v10* x(30) * x(47) *v10_CS_v10)/(( x(30) * x(47) )+(Ka_v10* x(47) )+(Kb_v10* x(30) )+(Kia_v10*Kib_v10)))) + (1)*(1)* (compartment_MATRIX*(((( x(36) * x(33) *(%pi))-(( x(34) * x(35) * x(29) )/Keq_v15))*((Kc1_v15*v15_SCS_v15)+(Kc2_v15*v15_SCS_v15*((((KmC_v15* x(34) )/KmC2_v15)*Kip_v15)+((%pi)/KmC2_v15)))))/((Kia_v15*KmB_v15*(%pi))+(KmB_v15* x(36) *(%pi))+(KmA_v15* x(33) *(%pi))+(KmC_v15* x(36) * x(33) )+( x(36) * x(33) *(%pi))+(( x(36) * x(33) *(%pi)*(%pi))/KmC2_v15)+((Kia_v15*KmB_v15*KmC_v15* x(34) )/Kip_v15)+(((Kia_v15*KmB_v15*KmC_v15* x(34) * x(35) )/Kip_v15)/Kiq_v15)+(((Kia_v15*KmB_v15*KmC_v15* x(34) * x(29) )/Kip_v15)/Kir_v15)+(((Kia_v15*KmB_v15*Kic_v15* x(35) * x(29) )/KmQ_v15)/Kir_v15)+((((Kia_v15*KmB_v15*KmC_v15* x(34) * x(35) * x(29) )/Kip_v15)/KmQ_v15)/Kir_v15)+(((((Kia_v15*KmB_v15*KmC_v15* x(34) * x(34) * x(35) * x(29) )/Kip_v15)/KmP2_v15)/KmQ_v15)/Kir_v15)+((Kia_v15*KmB_v15*(%pi)* x(35) )/Kiq_v15)+((Kia_v15*KmB_v15*(%pi)* x(29) )/Kir_v15)+(((Kia_v15*KmB_v15*(%pi)* x(35) * x(29) )/KmQ_v15)/Kir_v15)+((((Kia_v15*KmB_v15*(%pi)* x(34) * x(35) * x(29) )/KmP2_v15)/KmQ_v15)/Kir_v15)+((KmB_v15*KmC_v15* x(36) * x(34) )/Kip_v15)+((KmA_v15*KmC_v15* x(33) * x(34) )/Kip_v15)+((KmC_v15* x(36) * x(33) * x(34) )/Kip_v15)+(((KmC_v15* x(36) * x(33) *(%pi)* x(34) )/KmC2_v15)/Kip_v15)+((KmA_v15* x(33) *(%pi)* x(35) )/Kiq_v15)+((KmB_v15* x(36) *(%pi)* x(29) )/Kir_v15)+(((KmA_v15*KmC_v15* x(33) * x(34) * x(35) )/Kip_v15)/Kiq_v15)+(((KmB_v15*KmC_v15* x(36) * x(34) * x(29) )/Kip_v15)/Kir_v15)))) );
	
//x(30)   ID: Acetyl_CoA  initialValue: 3e-05
	(1/compartment_MATRIX)*( (-1)*(1)* (compartment_MATRIX*((V_v10* x(30) * x(47) *v10_CS_v10)/(( x(30) * x(47) )+(Ka_v10* x(47) )+(Kb_v10* x(30) )+(Kia_v10*Kib_v10)))) + (1)*(1)* (compartment_MATRIX*((KcF_v9*v9_PDC_v9* x(27) * x(29) * x(54) )/((KmC_v9* x(27) * x(29) )+(KmB_v9* x(27) * x(54) )+(KmA_v9* x(29) * x(54) )+( x(27) * x(29) * x(54) )+(((((KmA_v9*KmP_v9*Kib_v9*Kic_v9)/KmR_v9)/Kip_v9)/Kiq_v9)* x(30) * x(55) )+((KmC_v9/Kir_v9)* x(27) * x(29) * x(55) )+((KmB_v9/Kiq_v9)* x(27) * x(54) * x(30) )+((((((KmA_v9*KmP_v9*Kib_v9*Kic_v9)/KmR_v9)/Kip_v9)/Kia_v9)/Kiq_v9)* x(27) * x(30) * x(55) )))) );
	
//x(31)   ID: Pi  initialValue: 0.004
	(1/compartment_MATRIX)*( (-1)*(1)* (compartment_MATRIX*(((( x(36) * x(33) *(%pi))-(( x(34) * x(35) * x(29) )/Keq_v15))*((Kc1_v15*v15_SCS_v15)+(Kc2_v15*v15_SCS_v15*((((KmC_v15* x(34) )/KmC2_v15)*Kip_v15)+((%pi)/KmC2_v15)))))/((Kia_v15*KmB_v15*(%pi))+(KmB_v15* x(36) *(%pi))+(KmA_v15* x(33) *(%pi))+(KmC_v15* x(36) * x(33) )+( x(36) * x(33) *(%pi))+(( x(36) * x(33) *(%pi)*(%pi))/KmC2_v15)+((Kia_v15*KmB_v15*KmC_v15* x(34) )/Kip_v15)+(((Kia_v15*KmB_v15*KmC_v15* x(34) * x(35) )/Kip_v15)/Kiq_v15)+(((Kia_v15*KmB_v15*KmC_v15* x(34) * x(29) )/Kip_v15)/Kir_v15)+(((Kia_v15*KmB_v15*Kic_v15* x(35) * x(29) )/KmQ_v15)/Kir_v15)+((((Kia_v15*KmB_v15*KmC_v15* x(34) * x(35) * x(29) )/Kip_v15)/KmQ_v15)/Kir_v15)+(((((Kia_v15*KmB_v15*KmC_v15* x(34) * x(34) * x(35) * x(29) )/Kip_v15)/KmP2_v15)/KmQ_v15)/Kir_v15)+((Kia_v15*KmB_v15*(%pi)* x(35) )/Kiq_v15)+((Kia_v15*KmB_v15*(%pi)* x(29) )/Kir_v15)+(((Kia_v15*KmB_v15*(%pi)* x(35) * x(29) )/KmQ_v15)/Kir_v15)+((((Kia_v15*KmB_v15*(%pi)* x(34) * x(35) * x(29) )/KmP2_v15)/KmQ_v15)/Kir_v15)+((KmB_v15*KmC_v15* x(36) * x(34) )/Kip_v15)+((KmA_v15*KmC_v15* x(33) * x(34) )/Kip_v15)+((KmC_v15* x(36) * x(33) * x(34) )/Kip_v15)+(((KmC_v15* x(36) * x(33) *(%pi)* x(34) )/KmC2_v15)/Kip_v15)+((KmA_v15* x(33) *(%pi)* x(35) )/Kiq_v15)+((KmB_v15* x(36) *(%pi)* x(29) )/Kir_v15)+(((KmA_v15*KmC_v15* x(33) * x(34) * x(35) )/Kip_v15)/Kiq_v15)+(((KmB_v15*KmC_v15* x(36) * x(34) * x(29) )/Kip_v15)/Kir_v15)))) + (-1)*(1)* ((compartment_MATRIX*v28_Complex_V_v28*V_v28* x(51) )/(Km_v28+ x(51) +(( x(51) * x(51) )/Ki_v28))) + (1)*(1)* (compartment_MATRIX*((KcF_v36*KcR_v36*v36_PC_v36*(( x(50) * x(28) * x(27) )-(((%pi)* x(51) * x(47) )/Keq_v36)))/((Kia_v36*KmB_v36*KcR_v36* x(27) )+(KmC_v36*KcR_v36* x(50) * x(28) )+(KmA_v36*KcR_v36* x(28) * x(27) )+(KmB_v36*KcR_v36* x(50) * x(27) )+(KcR_v36* x(50) * x(28) * x(27) )+((Kip_v36*KmQ_v36*KcF_v36* x(47) )/Keq_v36)+((KmQ_v36*KcF_v36*(%pi)* x(47) )/Keq_v36)+((KmP_v36*KcF_v36* x(51) * x(47) )/Keq_v36)+((KmR_v36*KcF_v36*(%pi)* x(51) )/Keq_v36)+((KcF_v36*(%pi)* x(51) * x(47) )/Keq_v36)+((Kia_v36*KmB_v36*KcR_v36* x(27) *(%pi))/Kip_v36)+((Kia_v36*KmB_v36*KcR_v36* x(27) * x(51) )/Kia_v36)+(((Kiq_v36*KmP_v36*KcF_v36* x(28) * x(47) )/Kib_v36)/Keq_v36)+(((Kia_v36*KmP_v36*KcF_v36* x(50) * x(47) )/Kia_v36)/Keq_v36)+((KmA_v36*KcR_v36* x(50) * x(28) * x(47) )/Kir_v36)+(((KmR_v36*KcF_v36* x(27) *(%pi)* x(51) )/Kic_v36)/Keq_v36)+((KmA_v36*KcR_v36* x(28) * x(27) * x(51) )/Kiq_v36)+((KmA_v36*KcR_v36* x(28) * x(27) *(%pi))/Kip_v36)+(((KmP_v36*KcF_v36* x(28) * x(51) * x(47) )/Kib_v36)/Keq_v36)+(((KmQ_v36*KcF_v36* x(28) *(%pi)* x(47) )/Kib_v36)/Keq_v36)))) );
	
//x(32)   ID: Fum  initialValue: 6.5e-05
	(1/compartment_MATRIX)*( (-1)*(1)* (compartment_MATRIX*((((KcF_v17*Kp_v17* x(32) )-(KcR_v17*Ks_v17* x(46) ))*v17_FM_v17)/((Ks_v17* x(46) )+(Kp_v17* x(32) )+(Ks_v17*Kp_v17)))) + (1)*(1)* (compartment_MATRIX*((KcF_v16*KcR_v16*v16_SDH_v16*(( x(34) * x(56) )-(( x(32) * x(57) )/Keq_v16)))/((KcR_v16*KmS2_v16* x(34) )+(KcR_v16*KmS1_v16* x(56) )+((KcF_v16*KmP2_v16* x(32) )/Keq_v16)+((KcF_v16*KmP1_v16* x(57) )/Keq_v16)+(KcR_v16* x(34) * x(56) )+((KcF_v16*KmP2_v16* x(34) * x(32) )/(Keq_v16*KiS1_v16))+((KcF_v16* x(32) * x(57) )/Keq_v16)+((KcR_v16*KmS1_v16* x(56) * x(57) )/KiP2_v16)))) );
	
//x(33)   ID: SCoA  initialValue: 0.0002941
	(1/compartment_MATRIX)*( (-1)*(1)* (compartment_MATRIX*(((( x(36) * x(33) *(%pi))-(( x(34) * x(35) * x(29) )/Keq_v15))*((Kc1_v15*v15_SCS_v15)+(Kc2_v15*v15_SCS_v15*((((KmC_v15* x(34) )/KmC2_v15)*Kip_v15)+((%pi)/KmC2_v15)))))/((Kia_v15*KmB_v15*(%pi))+(KmB_v15* x(36) *(%pi))+(KmA_v15* x(33) *(%pi))+(KmC_v15* x(36) * x(33) )+( x(36) * x(33) *(%pi))+(( x(36) * x(33) *(%pi)*(%pi))/KmC2_v15)+((Kia_v15*KmB_v15*KmC_v15* x(34) )/Kip_v15)+(((Kia_v15*KmB_v15*KmC_v15* x(34) * x(35) )/Kip_v15)/Kiq_v15)+(((Kia_v15*KmB_v15*KmC_v15* x(34) * x(29) )/Kip_v15)/Kir_v15)+(((Kia_v15*KmB_v15*Kic_v15* x(35) * x(29) )/KmQ_v15)/Kir_v15)+((((Kia_v15*KmB_v15*KmC_v15* x(34) * x(35) * x(29) )/Kip_v15)/KmQ_v15)/Kir_v15)+(((((Kia_v15*KmB_v15*KmC_v15* x(34) * x(34) * x(35) * x(29) )/Kip_v15)/KmP2_v15)/KmQ_v15)/Kir_v15)+((Kia_v15*KmB_v15*(%pi)* x(35) )/Kiq_v15)+((Kia_v15*KmB_v15*(%pi)* x(29) )/Kir_v15)+(((Kia_v15*KmB_v15*(%pi)* x(35) * x(29) )/KmQ_v15)/Kir_v15)+((((Kia_v15*KmB_v15*(%pi)* x(34) * x(35) * x(29) )/KmP2_v15)/KmQ_v15)/Kir_v15)+((KmB_v15*KmC_v15* x(36) * x(34) )/Kip_v15)+((KmA_v15*KmC_v15* x(33) * x(34) )/Kip_v15)+((KmC_v15* x(36) * x(33) * x(34) )/Kip_v15)+(((KmC_v15* x(36) * x(33) *(%pi)* x(34) )/KmC2_v15)/Kip_v15)+((KmA_v15* x(33) *(%pi)* x(35) )/Kiq_v15)+((KmB_v15* x(36) *(%pi)* x(29) )/Kir_v15)+(((KmA_v15*KmC_v15* x(33) * x(34) * x(35) )/Kip_v15)/Kiq_v15)+(((KmB_v15*KmC_v15* x(36) * x(34) * x(29) )/Kip_v15)/Kir_v15)))) + (1)*(1)* (compartment_MATRIX*((KcF_v14*v14_OGDC_v14* x(45) * x(29) * x(54) )/((KmC_v14* x(45) * x(29) )+(KmB_v14* x(45) * x(54) )+(KmA_v14* x(29) * x(54) )+( x(45) * x(29) * x(54) )+(((((KmA_v14*KmP_v14*Kib_v14*Kic_v14)/KmR_v14)/Kip_v14)/Kiq_v14)* x(33) * x(55) )+((KmC_v14/Kir_v14)* x(45) * x(29) * x(55) )+((KmB_v14/Kiq_v14)* x(45) * x(54) * x(33) )+((((((KmA_v14*KmP_v14*Kib_v14*Kic_v14)/KmR_v14)/Kip_v14)/Kia_v14)/Kiq_v14)* x(45) * x(33) * x(55) )))) );
	
//x(34)   ID: Suc  initialValue: 0.00295
	(1/compartment_MATRIX)*( (-1)*(1)* (compartment_MATRIX*((KcF_v16*KcR_v16*v16_SDH_v16*(( x(34) * x(56) )-(( x(32) * x(57) )/Keq_v16)))/((KcR_v16*KmS2_v16* x(34) )+(KcR_v16*KmS1_v16* x(56) )+((KcF_v16*KmP2_v16* x(32) )/Keq_v16)+((KcF_v16*KmP1_v16* x(57) )/Keq_v16)+(KcR_v16* x(34) * x(56) )+((KcF_v16*KmP2_v16* x(34) * x(32) )/(Keq_v16*KiS1_v16))+((KcF_v16* x(32) * x(57) )/Keq_v16)+((KcR_v16*KmS1_v16* x(56) * x(57) )/KiP2_v16)))) + (1)*(1)* (compartment_MATRIX*(((( x(36) * x(33) *(%pi))-(( x(34) * x(35) * x(29) )/Keq_v15))*((Kc1_v15*v15_SCS_v15)+(Kc2_v15*v15_SCS_v15*((((KmC_v15* x(34) )/KmC2_v15)*Kip_v15)+((%pi)/KmC2_v15)))))/((Kia_v15*KmB_v15*(%pi))+(KmB_v15* x(36) *(%pi))+(KmA_v15* x(33) *(%pi))+(KmC_v15* x(36) * x(33) )+( x(36) * x(33) *(%pi))+(( x(36) * x(33) *(%pi)*(%pi))/KmC2_v15)+((Kia_v15*KmB_v15*KmC_v15* x(34) )/Kip_v15)+(((Kia_v15*KmB_v15*KmC_v15* x(34) * x(35) )/Kip_v15)/Kiq_v15)+(((Kia_v15*KmB_v15*KmC_v15* x(34) * x(29) )/Kip_v15)/Kir_v15)+(((Kia_v15*KmB_v15*Kic_v15* x(35) * x(29) )/KmQ_v15)/Kir_v15)+((((Kia_v15*KmB_v15*KmC_v15* x(34) * x(35) * x(29) )/Kip_v15)/KmQ_v15)/Kir_v15)+(((((Kia_v15*KmB_v15*KmC_v15* x(34) * x(34) * x(35) * x(29) )/Kip_v15)/KmP2_v15)/KmQ_v15)/Kir_v15)+((Kia_v15*KmB_v15*(%pi)* x(35) )/Kiq_v15)+((Kia_v15*KmB_v15*(%pi)* x(29) )/Kir_v15)+(((Kia_v15*KmB_v15*(%pi)* x(35) * x(29) )/KmQ_v15)/Kir_v15)+((((Kia_v15*KmB_v15*(%pi)* x(34) * x(35) * x(29) )/KmP2_v15)/KmQ_v15)/Kir_v15)+((KmB_v15*KmC_v15* x(36) * x(34) )/Kip_v15)+((KmA_v15*KmC_v15* x(33) * x(34) )/Kip_v15)+((KmC_v15* x(36) * x(33) * x(34) )/Kip_v15)+(((KmC_v15* x(36) * x(33) *(%pi)* x(34) )/KmC2_v15)/Kip_v15)+((KmA_v15* x(33) *(%pi)* x(35) )/Kiq_v15)+((KmB_v15* x(36) *(%pi)* x(29) )/Kir_v15)+(((KmA_v15*KmC_v15* x(33) * x(34) * x(35) )/Kip_v15)/Kiq_v15)+(((KmB_v15*KmC_v15* x(36) * x(34) * x(29) )/Kip_v15)/Kir_v15)))) );
	
//x(35)   ID: GTP  initialValue: 0.0045
	(1/compartment_MATRIX)*( (1)*(1)* (compartment_MATRIX*(((( x(36) * x(33) *(%pi))-(( x(34) * x(35) * x(29) )/Keq_v15))*((Kc1_v15*v15_SCS_v15)+(Kc2_v15*v15_SCS_v15*((((KmC_v15* x(34) )/KmC2_v15)*Kip_v15)+((%pi)/KmC2_v15)))))/((Kia_v15*KmB_v15*(%pi))+(KmB_v15* x(36) *(%pi))+(KmA_v15* x(33) *(%pi))+(KmC_v15* x(36) * x(33) )+( x(36) * x(33) *(%pi))+(( x(36) * x(33) *(%pi)*(%pi))/KmC2_v15)+((Kia_v15*KmB_v15*KmC_v15* x(34) )/Kip_v15)+(((Kia_v15*KmB_v15*KmC_v15* x(34) * x(35) )/Kip_v15)/Kiq_v15)+(((Kia_v15*KmB_v15*KmC_v15* x(34) * x(29) )/Kip_v15)/Kir_v15)+(((Kia_v15*KmB_v15*Kic_v15* x(35) * x(29) )/KmQ_v15)/Kir_v15)+((((Kia_v15*KmB_v15*KmC_v15* x(34) * x(35) * x(29) )/Kip_v15)/KmQ_v15)/Kir_v15)+(((((Kia_v15*KmB_v15*KmC_v15* x(34) * x(34) * x(35) * x(29) )/Kip_v15)/KmP2_v15)/KmQ_v15)/Kir_v15)+((Kia_v15*KmB_v15*(%pi)* x(35) )/Kiq_v15)+((Kia_v15*KmB_v15*(%pi)* x(29) )/Kir_v15)+(((Kia_v15*KmB_v15*(%pi)* x(35) * x(29) )/KmQ_v15)/Kir_v15)+((((Kia_v15*KmB_v15*(%pi)* x(34) * x(35) * x(29) )/KmP2_v15)/KmQ_v15)/Kir_v15)+((KmB_v15*KmC_v15* x(36) * x(34) )/Kip_v15)+((KmA_v15*KmC_v15* x(33) * x(34) )/Kip_v15)+((KmC_v15* x(36) * x(33) * x(34) )/Kip_v15)+(((KmC_v15* x(36) * x(33) *(%pi)* x(34) )/KmC2_v15)/Kip_v15)+((KmA_v15* x(33) *(%pi)* x(35) )/Kiq_v15)+((KmB_v15* x(36) *(%pi)* x(29) )/Kir_v15)+(((KmA_v15*KmC_v15* x(33) * x(34) * x(35) )/Kip_v15)/Kiq_v15)+(((KmB_v15*KmC_v15* x(36) * x(34) * x(29) )/Kip_v15)/Kir_v15)))) );
	
//x(36)   ID: GDP  initialValue: 0.00045
	(1/compartment_MATRIX)*( (-1)*(1)* (compartment_MATRIX*(((( x(36) * x(33) *(%pi))-(( x(34) * x(35) * x(29) )/Keq_v15))*((Kc1_v15*v15_SCS_v15)+(Kc2_v15*v15_SCS_v15*((((KmC_v15* x(34) )/KmC2_v15)*Kip_v15)+((%pi)/KmC2_v15)))))/((Kia_v15*KmB_v15*(%pi))+(KmB_v15* x(36) *(%pi))+(KmA_v15* x(33) *(%pi))+(KmC_v15* x(36) * x(33) )+( x(36) * x(33) *(%pi))+(( x(36) * x(33) *(%pi)*(%pi))/KmC2_v15)+((Kia_v15*KmB_v15*KmC_v15* x(34) )/Kip_v15)+(((Kia_v15*KmB_v15*KmC_v15* x(34) * x(35) )/Kip_v15)/Kiq_v15)+(((Kia_v15*KmB_v15*KmC_v15* x(34) * x(29) )/Kip_v15)/Kir_v15)+(((Kia_v15*KmB_v15*Kic_v15* x(35) * x(29) )/KmQ_v15)/Kir_v15)+((((Kia_v15*KmB_v15*KmC_v15* x(34) * x(35) * x(29) )/Kip_v15)/KmQ_v15)/Kir_v15)+(((((Kia_v15*KmB_v15*KmC_v15* x(34) * x(34) * x(35) * x(29) )/Kip_v15)/KmP2_v15)/KmQ_v15)/Kir_v15)+((Kia_v15*KmB_v15*(%pi)* x(35) )/Kiq_v15)+((Kia_v15*KmB_v15*(%pi)* x(29) )/Kir_v15)+(((Kia_v15*KmB_v15*(%pi)* x(35) * x(29) )/KmQ_v15)/Kir_v15)+((((Kia_v15*KmB_v15*(%pi)* x(34) * x(35) * x(29) )/KmP2_v15)/KmQ_v15)/Kir_v15)+((KmB_v15*KmC_v15* x(36) * x(34) )/Kip_v15)+((KmA_v15*KmC_v15* x(33) * x(34) )/Kip_v15)+((KmC_v15* x(36) * x(33) * x(34) )/Kip_v15)+(((KmC_v15* x(36) * x(33) *(%pi)* x(34) )/KmC2_v15)/Kip_v15)+((KmA_v15* x(33) *(%pi)* x(35) )/Kiq_v15)+((KmB_v15* x(36) *(%pi)* x(29) )/Kir_v15)+(((KmA_v15*KmC_v15* x(33) * x(34) * x(35) )/Kip_v15)/Kiq_v15)+(((KmB_v15*KmC_v15* x(36) * x(34) * x(29) )/Kip_v15)/Kir_v15)))) );
	
//x(37)   ID: Ala  initialValue: 0.00344
	(1/compartment_MATRIX)*( (-1)*(1)* (compartment_MATRIX*((KcF_v20*KcR_v20*v20_AlaTA_v20*(( x(37) * x(45) )-(( x(39) * x(27) )/Keq_v20)))/((KcR_v20*KmS2_v20* x(37) )+(KcR_v20*KmS1_v20* x(45) )+((KcF_v20*KmP2_v20* x(39) )/Keq_v20)+((KcF_v20*KmP1_v20* x(27) )/Keq_v20)+(KcR_v20* x(37) * x(45) )+((KcF_v20*KmP2_v20* x(37) * x(39) )/(Keq_v20*KiS1_v20))+((KcF_v20* x(39) * x(27) )/Keq_v20)+((KcR_v20*KmS1_v20* x(45) * x(27) )/KiP2_v20)))) );
	
//x(38)   ID: Asp  initialValue: 0.00114
	(1/compartment_MATRIX)*( (-1)*(1)* (compartment_MATRIX*(((((((( x(38) * x(14) )/alpha_v22)/KiS1_v22)/KiS2_v22)*KcF_v22)-((((( x(39) * x(13) )/beta_v22)/KiP1_v22)/KiP2_v22)*KcR_v22))*v22_AGC_v22)/(( 1 )+( x(38) /KiS1_v22)+( x(14) /KiS2_v22)+( x(39) /KiP1_v22)+( x(13) /KiP2_v22)+(((( x(38) * x(14) )/alpha_v22)/KiS1_v22)/KiS2_v22)+(((( x(39) * x(13) )/beta_v22)/KiP1_v22)/KiP2_v22)+(((( x(14) * x(13) )/gamma_v22)/KiS2_v22)/KiP2_v22)+(((( x(38) * x(39) )/delta_v22)/KiS1_v22)/KiP1_v22)))) + (1)*(1)* (compartment_MATRIX*((KcF_v21*KcR_v21*v21_AspTA_v21*(( x(47) * x(39) )-(( x(38) * x(45) )/Keq_v21)))/((KcR_v21*KmS2_v21* x(47) )+(KcR_v21*KmS1_v21* x(39) )+((KcF_v21*KmP2_v21* x(38) )/Keq_v21)+((KcF_v21*KmP1_v21* x(45) )/Keq_v21)+(KcR_v21* x(47) * x(39) )+((KcF_v21*KmP2_v21* x(47) * x(38) )/(Keq_v21*KiS1_v21))+((KcF_v21* x(38) * x(45) )/Keq_v21)+((KcR_v21*KmS1_v21* x(39) * x(45) )/KiP2_v21)))) );
	
//x(39)   ID: Glu  initialValue: 0.00303
	(1/compartment_MATRIX)*( (-1)*(1)* (compartment_MATRIX*((KcF_v21*KcR_v21*v21_AspTA_v21*(( x(47) * x(39) )-(( x(38) * x(45) )/Keq_v21)))/((KcR_v21*KmS2_v21* x(47) )+(KcR_v21*KmS1_v21* x(39) )+((KcF_v21*KmP2_v21* x(38) )/Keq_v21)+((KcF_v21*KmP1_v21* x(45) )/Keq_v21)+(KcR_v21* x(47) * x(39) )+((KcF_v21*KmP2_v21* x(47) * x(38) )/(Keq_v21*KiS1_v21))+((KcF_v21* x(38) * x(45) )/Keq_v21)+((KcR_v21*KmS1_v21* x(39) * x(45) )/KiP2_v21)))) + (1)*(1)* (compartment_MATRIX*((KcF_v20*KcR_v20*v20_AlaTA_v20*(( x(37) * x(45) )-(( x(39) * x(27) )/Keq_v20)))/((KcR_v20*KmS2_v20* x(37) )+(KcR_v20*KmS1_v20* x(45) )+((KcF_v20*KmP2_v20* x(39) )/Keq_v20)+((KcF_v20*KmP1_v20* x(27) )/Keq_v20)+(KcR_v20* x(37) * x(45) )+((KcF_v20*KmP2_v20* x(37) * x(39) )/(Keq_v20*KiS1_v20))+((KcF_v20* x(39) * x(27) )/Keq_v20)+((KcR_v20*KmS1_v20* x(45) * x(27) )/KiP2_v20)))) + (1)*(1)* (compartment_MATRIX*(((((((( x(38) * x(14) )/alpha_v22)/KiS1_v22)/KiS2_v22)*KcF_v22)-((((( x(39) * x(13) )/beta_v22)/KiP1_v22)/KiP2_v22)*KcR_v22))*v22_AGC_v22)/(( 1 )+( x(38) /KiS1_v22)+( x(14) /KiS2_v22)+( x(39) /KiP1_v22)+( x(13) /KiP2_v22)+(((( x(38) * x(14) )/alpha_v22)/KiS1_v22)/KiS2_v22)+(((( x(39) * x(13) )/beta_v22)/KiP1_v22)/KiP2_v22)+(((( x(14) * x(13) )/gamma_v22)/KiS2_v22)/KiP2_v22)+(((( x(38) * x(39) )/delta_v22)/KiS1_v22)/KiP1_v22)))) );
	
//x(40)   ID: H2O  initialValue: 0.001
	(1/compartment_MATRIX)*( (1)*(1)* ((compartment_MATRIX*v28_Complex_V_v28*V_v28* x(51) )/(Km_v28+ x(51) +(( x(51) * x(51) )/Ki_v28))) );
	
//x(41)   ID: ETFred  initialValue: 0.00031
	(1/compartment_MATRIX)*( (-1)*(1)* (compartment_MATRIX*((KcF_v34*KcR_v34*v34_ETF_QO_v34*(( x(41) * x(56) )-(( x(42) * x(57) )/Keq_v34)))/((KcR_v34*KmS2_v34* x(41) )+(KcR_v34*KmS1_v34* x(56) )+((KcF_v34*KmP2_v34* x(42) )/Keq_v34)+((KcF_v34*KmP1_v34* x(57) )/Keq_v34)+(KcR_v34* x(41) * x(56) )+((KcF_v34*KmP2_v34* x(41) * x(42) )/(Keq_v34*KiS1_v34))+((KcF_v34* x(42) * x(57) )/Keq_v34)+((KcR_v34*KmS1_v34* x(56) * x(57) )/KiP2_v34)))) + (1)*(1)* (compartment_MATRIX*((KcF_v35*KcR_v35*v35_ACD_v35*(( x(43) * x(42) )-(( x(41) * x(44) )/Keq_v35)))/((KcR_v35*KiS1_v35*KmS2_v35)+(KcR_v35*KmS2_v35* x(43) )+(KcR_v35*KmS1_v35* x(42) )+((KcF_v35*KmP2_v35* x(41) )/Keq_v35)+((KcF_v35*KmP1_v35* x(44) )/Keq_v35)+(KcR_v35* x(43) * x(42) )+((KcF_v35*KmP2_v35* x(43) * x(41) )/(Keq_v35*KiS1_v35))+((KcF_v35* x(41) * x(44) )/Keq_v35)+((KcR_v35*KmS1_v35* x(42) * x(44) )/KiP2_v35)+((KcR_v35* x(43) * x(42) * x(41) )/KiP1_v35)+((KcF_v35* x(42) * x(41) * x(44) )/(KiS2_v35*Keq_v35))))) );
	
//x(42)   ID: ETFox  initialValue: 0.00032
	(1/compartment_MATRIX)*( (-1)*(1)* (compartment_MATRIX*((KcF_v35*KcR_v35*v35_ACD_v35*(( x(43) * x(42) )-(( x(41) * x(44) )/Keq_v35)))/((KcR_v35*KiS1_v35*KmS2_v35)+(KcR_v35*KmS2_v35* x(43) )+(KcR_v35*KmS1_v35* x(42) )+((KcF_v35*KmP2_v35* x(41) )/Keq_v35)+((KcF_v35*KmP1_v35* x(44) )/Keq_v35)+(KcR_v35* x(43) * x(42) )+((KcF_v35*KmP2_v35* x(43) * x(41) )/(Keq_v35*KiS1_v35))+((KcF_v35* x(41) * x(44) )/Keq_v35)+((KcR_v35*KmS1_v35* x(42) * x(44) )/KiP2_v35)+((KcR_v35* x(43) * x(42) * x(41) )/KiP1_v35)+((KcF_v35* x(42) * x(41) * x(44) )/(KiS2_v35*Keq_v35))))) + (1)*(1)* (compartment_MATRIX*((KcF_v34*KcR_v34*v34_ETF_QO_v34*(( x(41) * x(56) )-(( x(42) * x(57) )/Keq_v34)))/((KcR_v34*KmS2_v34* x(41) )+(KcR_v34*KmS1_v34* x(56) )+((KcF_v34*KmP2_v34* x(42) )/Keq_v34)+((KcF_v34*KmP1_v34* x(57) )/Keq_v34)+(KcR_v34* x(41) * x(56) )+((KcF_v34*KmP2_v34* x(41) * x(42) )/(Keq_v34*KiS1_v34))+((KcF_v34* x(42) * x(57) )/Keq_v34)+((KcR_v34*KmS1_v34* x(56) * x(57) )/KiP2_v34)))) );
	
//x(43)   ID: FADH2  initialValue: 7.2e-05
	(1/compartment_MATRIX)*( (-1)*(1)* (compartment_MATRIX*((KcF_v35*KcR_v35*v35_ACD_v35*(( x(43) * x(42) )-(( x(41) * x(44) )/Keq_v35)))/((KcR_v35*KiS1_v35*KmS2_v35)+(KcR_v35*KmS2_v35* x(43) )+(KcR_v35*KmS1_v35* x(42) )+((KcF_v35*KmP2_v35* x(41) )/Keq_v35)+((KcF_v35*KmP1_v35* x(44) )/Keq_v35)+(KcR_v35* x(43) * x(42) )+((KcF_v35*KmP2_v35* x(43) * x(41) )/(Keq_v35*KiS1_v35))+((KcF_v35* x(41) * x(44) )/Keq_v35)+((KcR_v35*KmS1_v35* x(42) * x(44) )/KiP2_v35)+((KcR_v35* x(43) * x(42) * x(41) )/KiP1_v35)+((KcF_v35* x(42) * x(41) * x(44) )/(KiS2_v35*Keq_v35))))) + (1)*(1)* (compartment_CYTOPLASM*((V_v37*v37_GUT2P_v37* x(10) )/(K_v37+ x(10) ))) );
	
//x(44)   ID: FAD  initialValue: 0.00101
	(1/compartment_MATRIX)*( (-1)*(1)* (compartment_CYTOPLASM*((V_v37*v37_GUT2P_v37* x(10) )/(K_v37+ x(10) ))) + (1)*(1)* (compartment_MATRIX*((KcF_v35*KcR_v35*v35_ACD_v35*(( x(43) * x(42) )-(( x(41) * x(44) )/Keq_v35)))/((KcR_v35*KiS1_v35*KmS2_v35)+(KcR_v35*KmS2_v35* x(43) )+(KcR_v35*KmS1_v35* x(42) )+((KcF_v35*KmP2_v35* x(41) )/Keq_v35)+((KcF_v35*KmP1_v35* x(44) )/Keq_v35)+(KcR_v35* x(43) * x(42) )+((KcF_v35*KmP2_v35* x(43) * x(41) )/(Keq_v35*KiS1_v35))+((KcF_v35* x(41) * x(44) )/Keq_v35)+((KcR_v35*KmS1_v35* x(42) * x(44) )/KiP2_v35)+((KcR_v35* x(43) * x(42) * x(41) )/KiP1_v35)+((KcF_v35* x(42) * x(41) * x(44) )/(KiS2_v35*Keq_v35))))) );
	
//x(45)   ID: OG  initialValue: 2.1e-05
	(1/compartment_MATRIX)*( (-1)*(1)* (compartment_MATRIX*((KcF_v14*v14_OGDC_v14* x(45) * x(29) * x(54) )/((KmC_v14* x(45) * x(29) )+(KmB_v14* x(45) * x(54) )+(KmA_v14* x(29) * x(54) )+( x(45) * x(29) * x(54) )+(((((KmA_v14*KmP_v14*Kib_v14*Kic_v14)/KmR_v14)/Kip_v14)/Kiq_v14)* x(33) * x(55) )+((KmC_v14/Kir_v14)* x(45) * x(29) * x(55) )+((KmB_v14/Kiq_v14)* x(45) * x(54) * x(33) )+((((((KmA_v14*KmP_v14*Kib_v14*Kic_v14)/KmR_v14)/Kip_v14)/Kia_v14)/Kiq_v14)* x(45) * x(33) * x(55) )))) + (-1)*(1)* (compartment_MATRIX*((KcF_v20*KcR_v20*v20_AlaTA_v20*(( x(37) * x(45) )-(( x(39) * x(27) )/Keq_v20)))/((KcR_v20*KmS2_v20* x(37) )+(KcR_v20*KmS1_v20* x(45) )+((KcF_v20*KmP2_v20* x(39) )/Keq_v20)+((KcF_v20*KmP1_v20* x(27) )/Keq_v20)+(KcR_v20* x(37) * x(45) )+((KcF_v20*KmP2_v20* x(37) * x(39) )/(Keq_v20*KiS1_v20))+((KcF_v20* x(39) * x(27) )/Keq_v20)+((KcR_v20*KmS1_v20* x(45) * x(27) )/KiP2_v20)))) + (-1)*(1)* (compartment_MATRIX*(((((((( x(45) * x(16) )/alpha_v30)/KiS1_v30)/KiS2_v30)*KcF_v30)-((((( x(46) * x(15) )/beta_v30)/KiP1_v30)/KiP2_v30)*KcR_v30))*v30_OGC_v30)/(( 1 )+( x(45) /KiS1_v30)+( x(16) /KiS2_v30)+( x(46) /KiP1_v30)+( x(15) /KiP2_v30)+(((( x(45) * x(16) )/alpha_v30)/KiS1_v30)/KiS2_v30)+(((( x(46) * x(15) )/beta_v30)/KiP1_v30)/KiP2_v30)+(((( x(16) * x(15) )/gamma_v30)/KiS2_v30)/KiP2_v30)+(((( x(45) * x(46) )/delta_v30)/KiS1_v30)/KiP1_v30)))) + (1)*(1)* (compartment_MATRIX*((KcF_v12*v12_IDHa_v12*(( x(49) * x(49) )+(b_v12* x(51) * x(49) )))/(( x(49) * x(49) )+(c_v12* x(49) )+(d_v12* x(51) )+(e_v12* x(51) * x(49) )+f_v12))) + (1)*(1)* (compartment_MATRIX*((KcF_v21*KcR_v21*v21_AspTA_v21*(( x(47) * x(39) )-(( x(38) * x(45) )/Keq_v21)))/((KcR_v21*KmS2_v21* x(47) )+(KcR_v21*KmS1_v21* x(39) )+((KcF_v21*KmP2_v21* x(38) )/Keq_v21)+((KcF_v21*KmP1_v21* x(45) )/Keq_v21)+(KcR_v21* x(47) * x(39) )+((KcF_v21*KmP2_v21* x(47) * x(38) )/(Keq_v21*KiS1_v21))+((KcF_v21* x(38) * x(45) )/Keq_v21)+((KcR_v21*KmS1_v21* x(39) * x(45) )/KiP2_v21)))) );
	
//x(46)   ID: Mal  initialValue: 0.0005
	(1/compartment_MATRIX)*( (-1)*(1)* (compartment_MATRIX*((((((KcF_v18* x(46) * x(54) )/KiS1_v18)/KmS2_v18)-(((KcR_v18* x(47) * x(55) )/KmP1_v18)/KiP2_v18))*v18_MDH_v18)/(( 1 )+( x(46) /KiS1_v18)+(((KmS1_v18* x(54) )/KiS1_v18)/KmS2_v18)+(((KmP2_v18* x(47) )/KmP1_v18)/KiP2_v18)+( x(55) /KiP2_v18)+((( x(46) * x(54) )/KiS1_v18)/KmS2_v18)+((((KmP2_v18* x(46) * x(47) )/KiS1_v18)/KmP1_v18)/KiP2_v18)+((((KmS1_v18* x(54) * x(55) )/KiS1_v18)/KmS2_v18)/KiP2_v18)+((( x(47) * x(55) )/KmP1_v18)*KiP2_v18)+(((( x(46) * x(54) * x(47) )/KiS1_v18)/KmS2_v18)/KiP1_v18)+(((( x(54) * x(47) * x(55) )/KiS2_v18)/KmP1_v18)/KiP2_v18)))) + (-1)*(1)* (compartment_MATRIX*(((((((( x(20) * x(46) )/alpha_v33)/KiS1_v33)/KiS2_v33)*KcF_v33)-((((( x(16) * x(48) )/beta_v33)/KiP1_v33)/KiP2_v33)*KcR_v33))*v33_CIC_v33)/(( 1 )+( x(20) /KiS1_v33)+( x(46) /KiS2_v33)+( x(16) /KiP1_v33)+( x(48) /KiP2_v33)+(((( x(20) * x(46) )/alpha_v33)/KiS1_v33)/KiS2_v33)+(((( x(16) * x(48) )/beta_v33)/KiP1_v33)/KiP2_v33)+(((( x(46) * x(48) )/gamma_v33)/KiS2_v33)/KiP2_v33)+(((( x(20) * x(16) )/delta_v33)/KiS1_v33)/KiP1_v33)))) + (-1)*(1)* (compartment_MATRIX*(((((((( x(19) * x(46) )/alpha_v42)/KiS1_v42)/KiS2_v42)*KcF_v42)-((((( x(16) * x(49) )/beta_v42)/KiP1_v42)/KiP2_v42)*KcR_v42))*v42_CIC_v42)/(( 1 )+( x(19) /KiS1_v42)+( x(46) /KiS2_v42)+( x(16) /KiP1_v42)+( x(49) /KiP2_v42)+(((( x(19) * x(46) )/alpha_v42)/KiS1_v42)/KiS2_v42)+(((( x(16) * x(49) )/beta_v42)/KiP1_v42)/KiP2_v42)+(((( x(46) * x(49) )/gamma_v42)/KiS2_v42)/KiP2_v42)+(((( x(19) * x(16) )/delta_v42)/KiS1_v42)/KiP1_v42)))) + (-1)*(1)* (compartment_MATRIX*((v44_MDH_v44*Kcat_v44* x(46) )/(Km_v44+ x(46) ))) + (1)*(1)* (compartment_MATRIX*((((KcF_v17*Kp_v17* x(32) )-(KcR_v17*Ks_v17* x(46) ))*v17_FM_v17)/((Ks_v17* x(46) )+(Kp_v17* x(32) )+(Ks_v17*Kp_v17)))) + (1)*(1)* (compartment_MATRIX*(((((((( x(45) * x(16) )/alpha_v30)/KiS1_v30)/KiS2_v30)*KcF_v30)-((((( x(46) * x(15) )/beta_v30)/KiP1_v30)/KiP2_v30)*KcR_v30))*v30_OGC_v30)/(( 1 )+( x(45) /KiS1_v30)+( x(16) /KiS2_v30)+( x(46) /KiP1_v30)+( x(15) /KiP2_v30)+(((( x(45) * x(16) )/alpha_v30)/KiS1_v30)/KiS2_v30)+(((( x(46) * x(15) )/beta_v30)/KiP1_v30)/KiP2_v30)+(((( x(16) * x(15) )/gamma_v30)/KiS2_v30)/KiP2_v30)+(((( x(45) * x(46) )/delta_v30)/KiS1_v30)/KiP1_v30)))) );
	
//x(47)   ID: OXA  initialValue: 4e-06
	(1/compartment_MATRIX)*( (-1)*(1)* (compartment_MATRIX*((V_v10* x(30) * x(47) *v10_CS_v10)/(( x(30) * x(47) )+(Ka_v10* x(47) )+(Kb_v10* x(30) )+(Kia_v10*Kib_v10)))) + (-1)*(1)* (compartment_MATRIX*((KcF_v21*KcR_v21*v21_AspTA_v21*(( x(47) * x(39) )-(( x(38) * x(45) )/Keq_v21)))/((KcR_v21*KmS2_v21* x(47) )+(KcR_v21*KmS1_v21* x(39) )+((KcF_v21*KmP2_v21* x(38) )/Keq_v21)+((KcF_v21*KmP1_v21* x(45) )/Keq_v21)+(KcR_v21* x(47) * x(39) )+((KcF_v21*KmP2_v21* x(47) * x(38) )/(Keq_v21*KiS1_v21))+((KcF_v21* x(38) * x(45) )/Keq_v21)+((KcR_v21*KmS1_v21* x(39) * x(45) )/KiP2_v21)))) + (1)*(1)* (compartment_MATRIX*((((((KcF_v18* x(46) * x(54) )/KiS1_v18)/KmS2_v18)-(((KcR_v18* x(47) * x(55) )/KmP1_v18)/KiP2_v18))*v18_MDH_v18)/(( 1 )+( x(46) /KiS1_v18)+(((KmS1_v18* x(54) )/KiS1_v18)/KmS2_v18)+(((KmP2_v18* x(47) )/KmP1_v18)/KiP2_v18)+( x(55) /KiP2_v18)+((( x(46) * x(54) )/KiS1_v18)/KmS2_v18)+((((KmP2_v18* x(46) * x(47) )/KiS1_v18)/KmP1_v18)/KiP2_v18)+((((KmS1_v18* x(54) * x(55) )/KiS1_v18)/KmS2_v18)/KiP2_v18)+((( x(47) * x(55) )/KmP1_v18)*KiP2_v18)+(((( x(46) * x(54) * x(47) )/KiS1_v18)/KmS2_v18)/KiP1_v18)+(((( x(54) * x(47) * x(55) )/KiS2_v18)/KmP1_v18)/KiP2_v18)))) + (1)*(1)* (compartment_MATRIX*((KcF_v36*KcR_v36*v36_PC_v36*(( x(50) * x(28) * x(27) )-(((%pi)* x(51) * x(47) )/Keq_v36)))/((Kia_v36*KmB_v36*KcR_v36* x(27) )+(KmC_v36*KcR_v36* x(50) * x(28) )+(KmA_v36*KcR_v36* x(28) * x(27) )+(KmB_v36*KcR_v36* x(50) * x(27) )+(KcR_v36* x(50) * x(28) * x(27) )+((Kip_v36*KmQ_v36*KcF_v36* x(47) )/Keq_v36)+((KmQ_v36*KcF_v36*(%pi)* x(47) )/Keq_v36)+((KmP_v36*KcF_v36* x(51) * x(47) )/Keq_v36)+((KmR_v36*KcF_v36*(%pi)* x(51) )/Keq_v36)+((KcF_v36*(%pi)* x(51) * x(47) )/Keq_v36)+((Kia_v36*KmB_v36*KcR_v36* x(27) *(%pi))/Kip_v36)+((Kia_v36*KmB_v36*KcR_v36* x(27) * x(51) )/Kia_v36)+(((Kiq_v36*KmP_v36*KcF_v36* x(28) * x(47) )/Kib_v36)/Keq_v36)+(((Kia_v36*KmP_v36*KcF_v36* x(50) * x(47) )/Kia_v36)/Keq_v36)+((KmA_v36*KcR_v36* x(50) * x(28) * x(47) )/Kir_v36)+(((KmR_v36*KcF_v36* x(27) *(%pi)* x(51) )/Kic_v36)/Keq_v36)+((KmA_v36*KcR_v36* x(28) * x(27) * x(51) )/Kiq_v36)+((KmA_v36*KcR_v36* x(28) * x(27) *(%pi))/Kip_v36)+(((KmP_v36*KcF_v36* x(28) * x(51) * x(47) )/Kib_v36)/Keq_v36)+(((KmQ_v36*KcF_v36* x(28) *(%pi)* x(47) )/Kib_v36)/Keq_v36)))) );
	
//x(48)   ID: Cit  initialValue: 0.00042
	(1/compartment_MATRIX)*( (-1)*(1)* (compartment_MATRIX*((((KcF_v11*Kp_v11* x(48) )-(KcR_v11*Ks_v11* x(49) ))*v11_ACO_v11)/((Ks_v11* x(49) )+(Kp_v11* x(48) )+(Ks_v11*Kp_v11)))) + (1)*(1)* (compartment_MATRIX*((V_v10* x(30) * x(47) *v10_CS_v10)/(( x(30) * x(47) )+(Ka_v10* x(47) )+(Kb_v10* x(30) )+(Kia_v10*Kib_v10)))) + (1)*(1)* (compartment_MATRIX*(((((((( x(20) * x(46) )/alpha_v33)/KiS1_v33)/KiS2_v33)*KcF_v33)-((((( x(16) * x(48) )/beta_v33)/KiP1_v33)/KiP2_v33)*KcR_v33))*v33_CIC_v33)/(( 1 )+( x(20) /KiS1_v33)+( x(46) /KiS2_v33)+( x(16) /KiP1_v33)+( x(48) /KiP2_v33)+(((( x(20) * x(46) )/alpha_v33)/KiS1_v33)/KiS2_v33)+(((( x(16) * x(48) )/beta_v33)/KiP1_v33)/KiP2_v33)+(((( x(46) * x(48) )/gamma_v33)/KiS2_v33)/KiP2_v33)+(((( x(20) * x(16) )/delta_v33)/KiS1_v33)/KiP1_v33)))) );
	
//x(49)   ID: IsoCit  initialValue: 0.00042
	(1/compartment_MATRIX)*( (-1)*(1)* (compartment_MATRIX*((KcF_v12*v12_IDHa_v12*(( x(49) * x(49) )+(b_v12* x(51) * x(49) )))/(( x(49) * x(49) )+(c_v12* x(49) )+(d_v12* x(51) )+(e_v12* x(51) * x(49) )+f_v12))) + (1)*(1)* (compartment_MATRIX*((((KcF_v11*Kp_v11* x(48) )-(KcR_v11*Ks_v11* x(49) ))*v11_ACO_v11)/((Ks_v11* x(49) )+(Kp_v11* x(48) )+(Ks_v11*Kp_v11)))) + (1)*(1)* (compartment_MATRIX*(((((((( x(19) * x(46) )/alpha_v42)/KiS1_v42)/KiS2_v42)*KcF_v42)-((((( x(16) * x(49) )/beta_v42)/KiP1_v42)/KiP2_v42)*KcR_v42))*v42_CIC_v42)/(( 1 )+( x(19) /KiS1_v42)+( x(46) /KiS2_v42)+( x(16) /KiP1_v42)+( x(49) /KiP2_v42)+(((( x(19) * x(46) )/alpha_v42)/KiS1_v42)/KiS2_v42)+(((( x(16) * x(49) )/beta_v42)/KiP1_v42)/KiP2_v42)+(((( x(46) * x(49) )/gamma_v42)/KiS2_v42)/KiP2_v42)+(((( x(19) * x(16) )/delta_v42)/KiS1_v42)/KiP1_v42)))) );
	
//x(50)   ID: ATP  initialValue: 0.0045
	(1/compartment_MATRIX)*( (-1)*(1)* (compartment_MATRIX*((KcF_v36*KcR_v36*v36_PC_v36*(( x(50) * x(28) * x(27) )-(((%pi)* x(51) * x(47) )/Keq_v36)))/((Kia_v36*KmB_v36*KcR_v36* x(27) )+(KmC_v36*KcR_v36* x(50) * x(28) )+(KmA_v36*KcR_v36* x(28) * x(27) )+(KmB_v36*KcR_v36* x(50) * x(27) )+(KcR_v36* x(50) * x(28) * x(27) )+((Kip_v36*KmQ_v36*KcF_v36* x(47) )/Keq_v36)+((KmQ_v36*KcF_v36*(%pi)* x(47) )/Keq_v36)+((KmP_v36*KcF_v36* x(51) * x(47) )/Keq_v36)+((KmR_v36*KcF_v36*(%pi)* x(51) )/Keq_v36)+((KcF_v36*(%pi)* x(51) * x(47) )/Keq_v36)+((Kia_v36*KmB_v36*KcR_v36* x(27) *(%pi))/Kip_v36)+((Kia_v36*KmB_v36*KcR_v36* x(27) * x(51) )/Kia_v36)+(((Kiq_v36*KmP_v36*KcF_v36* x(28) * x(47) )/Kib_v36)/Keq_v36)+(((Kia_v36*KmP_v36*KcF_v36* x(50) * x(47) )/Kia_v36)/Keq_v36)+((KmA_v36*KcR_v36* x(50) * x(28) * x(47) )/Kir_v36)+(((KmR_v36*KcF_v36* x(27) *(%pi)* x(51) )/Kic_v36)/Keq_v36)+((KmA_v36*KcR_v36* x(28) * x(27) * x(51) )/Kiq_v36)+((KmA_v36*KcR_v36* x(28) * x(27) *(%pi))/Kip_v36)+(((KmP_v36*KcF_v36* x(28) * x(51) * x(47) )/Kib_v36)/Keq_v36)+(((KmQ_v36*KcF_v36* x(28) *(%pi)* x(47) )/Kib_v36)/Keq_v36)))) + (-1)*(1)* (compartment_MATRIX*((V_v43*v43_AAC_v43* x(50) )/(K_v43+ x(50) ))) + (1)*(1)* ((compartment_MATRIX*v28_Complex_V_v28*V_v28* x(51) )/(Km_v28+ x(51) +(( x(51) * x(51) )/Ki_v28))) );
	
//x(51)   ID: ADP  initialValue: 0.00045
	(1/compartment_MATRIX)*( (-1)*(1)* ((compartment_MATRIX*v28_Complex_V_v28*V_v28* x(51) )/(Km_v28+ x(51) +(( x(51) * x(51) )/Ki_v28))) + (1)*(1)* (compartment_MATRIX*((KcF_v36*KcR_v36*v36_PC_v36*(( x(50) * x(28) * x(27) )-(((%pi)* x(51) * x(47) )/Keq_v36)))/((Kia_v36*KmB_v36*KcR_v36* x(27) )+(KmC_v36*KcR_v36* x(50) * x(28) )+(KmA_v36*KcR_v36* x(28) * x(27) )+(KmB_v36*KcR_v36* x(50) * x(27) )+(KcR_v36* x(50) * x(28) * x(27) )+((Kip_v36*KmQ_v36*KcF_v36* x(47) )/Keq_v36)+((KmQ_v36*KcF_v36*(%pi)* x(47) )/Keq_v36)+((KmP_v36*KcF_v36* x(51) * x(47) )/Keq_v36)+((KmR_v36*KcF_v36*(%pi)* x(51) )/Keq_v36)+((KcF_v36*(%pi)* x(51) * x(47) )/Keq_v36)+((Kia_v36*KmB_v36*KcR_v36* x(27) *(%pi))/Kip_v36)+((Kia_v36*KmB_v36*KcR_v36* x(27) * x(51) )/Kia_v36)+(((Kiq_v36*KmP_v36*KcF_v36* x(28) * x(47) )/Kib_v36)/Keq_v36)+(((Kia_v36*KmP_v36*KcF_v36* x(50) * x(47) )/Kia_v36)/Keq_v36)+((KmA_v36*KcR_v36* x(50) * x(28) * x(47) )/Kir_v36)+(((KmR_v36*KcF_v36* x(27) *(%pi)* x(51) )/Kic_v36)/Keq_v36)+((KmA_v36*KcR_v36* x(28) * x(27) * x(51) )/Kiq_v36)+((KmA_v36*KcR_v36* x(28) * x(27) *(%pi))/Kip_v36)+(((KmP_v36*KcF_v36* x(28) * x(51) * x(47) )/Kib_v36)/Keq_v36)+(((KmQ_v36*KcF_v36* x(28) *(%pi)* x(47) )/Kib_v36)/Keq_v36)))) + (1)*(1)* (compartment_MATRIX*((V_v40*v40_AAC_v40* x(22) )/(K_v40+ x(22) ))) );
	
//x(52)   ID: NADP_p  initialValue: 0.0101
	(1/compartment_MATRIX)*( (-1)*(1)* (compartment_MATRIX*((v44_MDH_v44*Kcat_v44* x(46) )/(Km_v44+ x(46) ))) );
	
//x(53)   ID: NADPH  initialValue: 7.2e-05
	(1/compartment_MATRIX)*( (1)*(1)* (compartment_MATRIX*((v44_MDH_v44*Kcat_v44* x(46) )/(Km_v44+ x(46) ))) );
	
//x(54)   ID: NAD_p  initialValue: 0.0101
	(1/compartment_MATRIX)*( (-1)*(1)* (compartment_MATRIX*((KcF_v9*v9_PDC_v9* x(27) * x(29) * x(54) )/((KmC_v9* x(27) * x(29) )+(KmB_v9* x(27) * x(54) )+(KmA_v9* x(29) * x(54) )+( x(27) * x(29) * x(54) )+(((((KmA_v9*KmP_v9*Kib_v9*Kic_v9)/KmR_v9)/Kip_v9)/Kiq_v9)* x(30) * x(55) )+((KmC_v9/Kir_v9)* x(27) * x(29) * x(55) )+((KmB_v9/Kiq_v9)* x(27) * x(54) * x(30) )+((((((KmA_v9*KmP_v9*Kib_v9*Kic_v9)/KmR_v9)/Kip_v9)/Kia_v9)/Kiq_v9)* x(27) * x(30) * x(55) )))) + (-1)*(1)* (compartment_MATRIX*((KcF_v12*v12_IDHa_v12*(( x(49) * x(49) )+(b_v12* x(51) * x(49) )))/(( x(49) * x(49) )+(c_v12* x(49) )+(d_v12* x(51) )+(e_v12* x(51) * x(49) )+f_v12))) + (-1)*(1)* (compartment_MATRIX*((KcF_v14*v14_OGDC_v14* x(45) * x(29) * x(54) )/((KmC_v14* x(45) * x(29) )+(KmB_v14* x(45) * x(54) )+(KmA_v14* x(29) * x(54) )+( x(45) * x(29) * x(54) )+(((((KmA_v14*KmP_v14*Kib_v14*Kic_v14)/KmR_v14)/Kip_v14)/Kiq_v14)* x(33) * x(55) )+((KmC_v14/Kir_v14)* x(45) * x(29) * x(55) )+((KmB_v14/Kiq_v14)* x(45) * x(54) * x(33) )+((((((KmA_v14*KmP_v14*Kib_v14*Kic_v14)/KmR_v14)/Kip_v14)/Kia_v14)/Kiq_v14)* x(45) * x(33) * x(55) )))) + (-1)*(1)* (compartment_MATRIX*((((((KcF_v18* x(46) * x(54) )/KiS1_v18)/KmS2_v18)-(((KcR_v18* x(47) * x(55) )/KmP1_v18)/KiP2_v18))*v18_MDH_v18)/(( 1 )+( x(46) /KiS1_v18)+(((KmS1_v18* x(54) )/KiS1_v18)/KmS2_v18)+(((KmP2_v18* x(47) )/KmP1_v18)/KiP2_v18)+( x(55) /KiP2_v18)+((( x(46) * x(54) )/KiS1_v18)/KmS2_v18)+((((KmP2_v18* x(46) * x(47) )/KiS1_v18)/KmP1_v18)/KiP2_v18)+((((KmS1_v18* x(54) * x(55) )/KiS1_v18)/KmS2_v18)/KiP2_v18)+((( x(47) * x(55) )/KmP1_v18)*KiP2_v18)+(((( x(46) * x(54) * x(47) )/KiS1_v18)/KmS2_v18)/KiP1_v18)+(((( x(54) * x(47) * x(55) )/KiS2_v18)/KmP1_v18)/KiP2_v18)))) + (1)*(1)* (compartment_MATRIX*((KcF_v24*KcR_v24*v24_Complex_I_v24*(( x(55) * x(56) )-(( x(54) * x(57) )/Keq_v24)))/((KcR_v24*KmS2_v24* x(55) )+(KcR_v24*KmS1_v24* x(56) )+((KcF_v24*KmP2_v24* x(54) )/Keq_v24)+((KcF_v24*KmP1_v24* x(57) )/Keq_v24)+(KcR_v24* x(55) * x(56) )+((KcF_v24*KmP2_v24* x(55) * x(54) )/(Keq_v24*KiS1_v24))+((KcF_v24* x(54) * x(57) )/Keq_v24)+((KcR_v24*KmS1_v24* x(56) * x(57) )/KiP2_v24)))) );
	
//x(55)   ID: NADH  initialValue: 0.00072
	(1/compartment_MATRIX)*( (-1)*(1)* (compartment_MATRIX*((KcF_v24*KcR_v24*v24_Complex_I_v24*(( x(55) * x(56) )-(( x(54) * x(57) )/Keq_v24)))/((KcR_v24*KmS2_v24* x(55) )+(KcR_v24*KmS1_v24* x(56) )+((KcF_v24*KmP2_v24* x(54) )/Keq_v24)+((KcF_v24*KmP1_v24* x(57) )/Keq_v24)+(KcR_v24* x(55) * x(56) )+((KcF_v24*KmP2_v24* x(55) * x(54) )/(Keq_v24*KiS1_v24))+((KcF_v24* x(54) * x(57) )/Keq_v24)+((KcR_v24*KmS1_v24* x(56) * x(57) )/KiP2_v24)))) + (1)*(1)* (compartment_MATRIX*((KcF_v9*v9_PDC_v9* x(27) * x(29) * x(54) )/((KmC_v9* x(27) * x(29) )+(KmB_v9* x(27) * x(54) )+(KmA_v9* x(29) * x(54) )+( x(27) * x(29) * x(54) )+(((((KmA_v9*KmP_v9*Kib_v9*Kic_v9)/KmR_v9)/Kip_v9)/Kiq_v9)* x(30) * x(55) )+((KmC_v9/Kir_v9)* x(27) * x(29) * x(55) )+((KmB_v9/Kiq_v9)* x(27) * x(54) * x(30) )+((((((KmA_v9*KmP_v9*Kib_v9*Kic_v9)/KmR_v9)/Kip_v9)/Kia_v9)/Kiq_v9)* x(27) * x(30) * x(55) )))) + (1)*(1)* (compartment_MATRIX*((KcF_v12*v12_IDHa_v12*(( x(49) * x(49) )+(b_v12* x(51) * x(49) )))/(( x(49) * x(49) )+(c_v12* x(49) )+(d_v12* x(51) )+(e_v12* x(51) * x(49) )+f_v12))) + (1)*(1)* (compartment_MATRIX*((KcF_v14*v14_OGDC_v14* x(45) * x(29) * x(54) )/((KmC_v14* x(45) * x(29) )+(KmB_v14* x(45) * x(54) )+(KmA_v14* x(29) * x(54) )+( x(45) * x(29) * x(54) )+(((((KmA_v14*KmP_v14*Kib_v14*Kic_v14)/KmR_v14)/Kip_v14)/Kiq_v14)* x(33) * x(55) )+((KmC_v14/Kir_v14)* x(45) * x(29) * x(55) )+((KmB_v14/Kiq_v14)* x(45) * x(54) * x(33) )+((((((KmA_v14*KmP_v14*Kib_v14*Kic_v14)/KmR_v14)/Kip_v14)/Kia_v14)/Kiq_v14)* x(45) * x(33) * x(55) )))) + (1)*(1)* (compartment_MATRIX*((((((KcF_v18* x(46) * x(54) )/KiS1_v18)/KmS2_v18)-(((KcR_v18* x(47) * x(55) )/KmP1_v18)/KiP2_v18))*v18_MDH_v18)/(( 1 )+( x(46) /KiS1_v18)+(((KmS1_v18* x(54) )/KiS1_v18)/KmS2_v18)+(((KmP2_v18* x(47) )/KmP1_v18)/KiP2_v18)+( x(55) /KiP2_v18)+((( x(46) * x(54) )/KiS1_v18)/KmS2_v18)+((((KmP2_v18* x(46) * x(47) )/KiS1_v18)/KmP1_v18)/KiP2_v18)+((((KmS1_v18* x(54) * x(55) )/KiS1_v18)/KmS2_v18)/KiP2_v18)+((( x(47) * x(55) )/KmP1_v18)*KiP2_v18)+(((( x(46) * x(54) * x(47) )/KiS1_v18)/KmS2_v18)/KiP1_v18)+(((( x(54) * x(47) * x(55) )/KiS2_v18)/KmP1_v18)/KiP2_v18)))) );
	
//x(56)   ID: Q  initialValue: 0.026
	(1/compartment_MT_IMS)*( (-1)*(1)* (compartment_MATRIX*((KcF_v16*KcR_v16*v16_SDH_v16*(( x(34) * x(56) )-(( x(32) * x(57) )/Keq_v16)))/((KcR_v16*KmS2_v16* x(34) )+(KcR_v16*KmS1_v16* x(56) )+((KcF_v16*KmP2_v16* x(32) )/Keq_v16)+((KcF_v16*KmP1_v16* x(57) )/Keq_v16)+(KcR_v16* x(34) * x(56) )+((KcF_v16*KmP2_v16* x(34) * x(32) )/(Keq_v16*KiS1_v16))+((KcF_v16* x(32) * x(57) )/Keq_v16)+((KcR_v16*KmS1_v16* x(56) * x(57) )/KiP2_v16)))) + (-1)*(1)* (compartment_MATRIX*((KcF_v24*KcR_v24*v24_Complex_I_v24*(( x(55) * x(56) )-(( x(54) * x(57) )/Keq_v24)))/((KcR_v24*KmS2_v24* x(55) )+(KcR_v24*KmS1_v24* x(56) )+((KcF_v24*KmP2_v24* x(54) )/Keq_v24)+((KcF_v24*KmP1_v24* x(57) )/Keq_v24)+(KcR_v24* x(55) * x(56) )+((KcF_v24*KmP2_v24* x(55) * x(54) )/(Keq_v24*KiS1_v24))+((KcF_v24* x(54) * x(57) )/Keq_v24)+((KcR_v24*KmS1_v24* x(56) * x(57) )/KiP2_v24)))) + (-1)*(1)* (compartment_MATRIX*((KcF_v34*KcR_v34*v34_ETF_QO_v34*(( x(41) * x(56) )-(( x(42) * x(57) )/Keq_v34)))/((KcR_v34*KmS2_v34* x(41) )+(KcR_v34*KmS1_v34* x(56) )+((KcF_v34*KmP2_v34* x(42) )/Keq_v34)+((KcF_v34*KmP1_v34* x(57) )/Keq_v34)+(KcR_v34* x(41) * x(56) )+((KcF_v34*KmP2_v34* x(41) * x(42) )/(Keq_v34*KiS1_v34))+((KcF_v34* x(42) * x(57) )/Keq_v34)+((KcR_v34*KmS1_v34* x(56) * x(57) )/KiP2_v34)))) + (1)*(1)* (compartment_MT_IMS*((KcF_v25*v25_Complex_III_v25* x(57) * x(58) )/((((KmA_v25*Kq2_v25*Kb2_v25)+(KmA_v25*Kq2_v25* x(58) )+((KcF_v25/k8_v25)*Kq1_v25* x(57) *Kb1_v25)+((KcF_v25/k8_v25)*Kq1_v25* x(57) * x(58) ))* x(59) )+(KmA_v25* x(58) )+(KmB_v25* x(57) )+( x(57) * x(58) )))) );
	
//x(57)   ID: QH2  initialValue: 0.028
	(1/compartment_MT_IMS)*( (-1)*(1)* (compartment_MT_IMS*((KcF_v25*v25_Complex_III_v25* x(57) * x(58) )/((((KmA_v25*Kq2_v25*Kb2_v25)+(KmA_v25*Kq2_v25* x(58) )+((KcF_v25/k8_v25)*Kq1_v25* x(57) *Kb1_v25)+((KcF_v25/k8_v25)*Kq1_v25* x(57) * x(58) ))* x(59) )+(KmA_v25* x(58) )+(KmB_v25* x(57) )+( x(57) * x(58) )))) + (1)*(1)* (compartment_MATRIX*((KcF_v16*KcR_v16*v16_SDH_v16*(( x(34) * x(56) )-(( x(32) * x(57) )/Keq_v16)))/((KcR_v16*KmS2_v16* x(34) )+(KcR_v16*KmS1_v16* x(56) )+((KcF_v16*KmP2_v16* x(32) )/Keq_v16)+((KcF_v16*KmP1_v16* x(57) )/Keq_v16)+(KcR_v16* x(34) * x(56) )+((KcF_v16*KmP2_v16* x(34) * x(32) )/(Keq_v16*KiS1_v16))+((KcF_v16* x(32) * x(57) )/Keq_v16)+((KcR_v16*KmS1_v16* x(56) * x(57) )/KiP2_v16)))) + (1)*(1)* (compartment_MATRIX*((KcF_v24*KcR_v24*v24_Complex_I_v24*(( x(55) * x(56) )-(( x(54) * x(57) )/Keq_v24)))/((KcR_v24*KmS2_v24* x(55) )+(KcR_v24*KmS1_v24* x(56) )+((KcF_v24*KmP2_v24* x(54) )/Keq_v24)+((KcF_v24*KmP1_v24* x(57) )/Keq_v24)+(KcR_v24* x(55) * x(56) )+((KcF_v24*KmP2_v24* x(55) * x(54) )/(Keq_v24*KiS1_v24))+((KcF_v24* x(54) * x(57) )/Keq_v24)+((KcR_v24*KmS1_v24* x(56) * x(57) )/KiP2_v24)))) + (1)*(1)* (compartment_MATRIX*((KcF_v34*KcR_v34*v34_ETF_QO_v34*(( x(41) * x(56) )-(( x(42) * x(57) )/Keq_v34)))/((KcR_v34*KmS2_v34* x(41) )+(KcR_v34*KmS1_v34* x(56) )+((KcF_v34*KmP2_v34* x(42) )/Keq_v34)+((KcF_v34*KmP1_v34* x(57) )/Keq_v34)+(KcR_v34* x(41) * x(56) )+((KcF_v34*KmP2_v34* x(41) * x(42) )/(Keq_v34*KiS1_v34))+((KcF_v34* x(42) * x(57) )/Keq_v34)+((KcR_v34*KmS1_v34* x(56) * x(57) )/KiP2_v34)))) );
	
//x(58)   ID: Cytc3p  initialValue: 0.003
	(1/compartment_MT_IMS)*( (-1)*(2)* (compartment_MT_IMS*((KcF_v25*v25_Complex_III_v25* x(57) * x(58) )/((((KmA_v25*Kq2_v25*Kb2_v25)+(KmA_v25*Kq2_v25* x(58) )+((KcF_v25/k8_v25)*Kq1_v25* x(57) *Kb1_v25)+((KcF_v25/k8_v25)*Kq1_v25* x(57) * x(58) ))* x(59) )+(KmA_v25* x(58) )+(KmB_v25* x(57) )+( x(57) * x(58) )))) + (1)*(1)* (compartment_MT_IMS*((KcF_v26*v26_Complex_IV_v26* x(59) )/(Ks_v26+ x(59) ))) );
	
//x(59)   ID: Cytc2p  initialValue: 0.00011
	(1/compartment_MT_IMS)*( (-1)*(1)* (compartment_MT_IMS*((KcF_v26*v26_Complex_IV_v26* x(59) )/(Ks_v26+ x(59) ))) + (1)*(2)* (compartment_MT_IMS*((KcF_v25*v25_Complex_III_v25* x(57) * x(58) )/((((KmA_v25*Kq2_v25*Kb2_v25)+(KmA_v25*Kq2_v25* x(58) )+((KcF_v25/k8_v25)*Kq1_v25* x(57) *Kb1_v25)+((KcF_v25/k8_v25)*Kq1_v25* x(57) * x(58) ))* x(59) )+(KmA_v25* x(58) )+(KmB_v25* x(57) )+( x(57) * x(58) )))) )
	];


	
endfunction
        x0=[1.12817e-05;0.00065939;7.70135e-06;1.90919e-06;0.000299109;2.1125e-06;4.22702e-06;2.61149e-06;0.00033981;0.0076925;0.0076925;4e-06;0.00114;0.00303;2.1e-05;0.0005;3e-05;0.000272;0.00042;0.00042;0.00449064;0.000108367;0.00362057;0.000616118;0.00362057;0.000616118;0.001025;0.00163;0.000272;3e-05;0.004;6.5e-05;0.0002941;0.00295;0.0045;0.00045;0.00344;0.00114;0.00303;0.001;0.00031;0.00032;7.2e-05;0.00101;2.1e-05;0.0005;4e-06;0.00042;0.00042;0.0045;0.00045;0.0101;7.2e-05;0.0101;0.00072;0.026;0.028;0.003;0.00011];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)' 'x(14)' 'x(15)' 'x(16)' 'x(17)' 'x(18)' 'x(19)' 'x(20)' 'x(21)' 'x(22)' 'x(23)' 'x(24)' 'x(25)' 'x(26)' 'x(27)' 'x(28)' 'x(29)' 'x(30)' 'x(31)' 'x(32)' 'x(33)' 'x(34)' 'x(35)' 'x(36)' 'x(37)' 'x(38)' 'x(39)' 'x(40)' 'x(41)' 'x(42)' 'x(43)' 'x(44)' 'x(45)' 'x(46)' 'x(47)' 'x(48)' 'x(49)' 'x(50)' 'x(51)' 'x(52)' 'x(53)' 'x(54)' 'x(55)' 'x(56)' 'x(57)' 'x(58)' 'x(59)'],[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18;19;20;21;22;23;24;25;26;27;28;29;30;31;32;33;34;35;36;37;38;39;40;41;42;43;44;45;46;47;48;49;50;51;52;53;54;55;56;57;58;59])

//real_variable:
	
	
//x(1)   id: GLC  initialValue: 1.12817e-05
	
//x(2)   id: F6P  initialValue: 0.00065939
	
//x(3)   id: FBP  initialValue: 7.70135e-06
	
//x(4)   id: GAP  initialValue: 1.90919e-06
	
//x(5)   id: DPG  initialValue: 0.000299109
	
//x(6)   id: PEP  initialValue: 2.1125e-06
	
//x(7)   id: PYR_cyt  initialValue: 4.22702e-06
	
//x(8)   id: AMP  initialValue: 2.61149e-06
	
//x(9)   id: LAC  initialValue: 0.00033981
	
//x(10)   id: G3P  initialValue: 0.0076925
	
//x(11)   id: DHAP  initialValue: 0.0076925
	
//x(12)   id: OXA_cyt  initialValue: 4e-06
	
//x(13)   id: Asp_cyt  initialValue: 0.00114
	
//x(14)   id: Glu_cyt  initialValue: 0.00303
	
//x(15)   id: OG_cyt  initialValue: 2.1e-05
	
//x(16)   id: Mal_cyt  initialValue: 0.0005
	
//x(17)   id: Acetyl_CoA_cyt  initialValue: 3e-05
	
//x(18)   id: CoA_cyt  initialValue: 0.000272
	
//x(19)   id: IsoCitcyt  initialValue: 0.00042
	
//x(20)   id: Cit_cyt  initialValue: 0.00042
	
//x(21)   id: ATP_cyt  initialValue: 0.00449064
	
//x(22)   id: ADP_cyt  initialValue: 0.000108367
	
//x(23)   id: NAD  initialValue: 0.00362057
	
//x(24)   id: NADH_cyt  initialValue: 0.000616118
	
//x(25)   id: NADP_cyt  initialValue: 0.00362057
	
//x(26)   id: NADPH_cyt  initialValue: 0.000616118
	
//x(27)   id: Pyr  initialValue: 0.001025
	
//x(28)   id: CO2  initialValue: 0.00163
	
//x(29)   id: CoA  initialValue: 0.000272
	
//x(30)   id: Acetyl_CoA  initialValue: 3e-05
	
//x(31)   id: Pi  initialValue: 0.004
	
//x(32)   id: Fum  initialValue: 6.5e-05
	
//x(33)   id: SCoA  initialValue: 0.0002941
	
//x(34)   id: Suc  initialValue: 0.00295
	
//x(35)   id: GTP  initialValue: 0.0045
	
//x(36)   id: GDP  initialValue: 0.00045
	
//x(37)   id: Ala  initialValue: 0.00344
	
//x(38)   id: Asp  initialValue: 0.00114
	
//x(39)   id: Glu  initialValue: 0.00303
	
//x(40)   id: H2O  initialValue: 0.001
	
//x(41)   id: ETFred  initialValue: 0.00031
	
//x(42)   id: ETFox  initialValue: 0.00032
	
//x(43)   id: FADH2  initialValue: 7.2e-05
	
//x(44)   id: FAD  initialValue: 0.00101
	
//x(45)   id: OG  initialValue: 2.1e-05
	
//x(46)   id: Mal  initialValue: 0.0005
	
//x(47)   id: OXA  initialValue: 4e-06
	
//x(48)   id: Cit  initialValue: 0.00042
	
//x(49)   id: IsoCit  initialValue: 0.00042
	
//x(50)   id: ATP  initialValue: 0.0045
	
//x(51)   id: ADP  initialValue: 0.00045
	
//x(52)   id: NADP_p  initialValue: 0.0101
	
//x(53)   id: NADPH  initialValue: 7.2e-05
	
//x(54)   id: NAD_p  initialValue: 0.0101
	
//x(55)   id: NADH  initialValue: 0.00072
	
//x(56)   id: Q  initialValue: 0.026
	
//x(57)   id: QH2  initialValue: 0.028
	
//x(58)   id: Cytc3p  initialValue: 0.003
	
//x(59)   id: Cytc2p  initialValue: 0.00011