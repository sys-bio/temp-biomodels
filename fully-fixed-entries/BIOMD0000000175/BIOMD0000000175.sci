
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_membrane   id: membrane
	compartment_membrane=1;
		
// ErbB1_Abund_p   id: ErbB1_Abund
	ErbB1_Abund_p=274;
		
// ErbB2_Abund_p   id: ErbB2_Abund
	ErbB2_Abund_p=158;
		
// ErbB3_Abund_p   id: ErbB3_Abund
	ErbB3_Abund_p=294;
		
// ErbB4_Abund_p   id: ErbB4_Abund
	ErbB4_Abund_p=399;
		
// Grb2_Abund_p   id: Grb2_Abund
	Grb2_Abund_p=82.4;
		
// Shc_Abund_p   id: Shc_Abund
	Shc_Abund_p=11.5;
		
// PI3K_Abund_p   id: PI3K_Abund
	PI3K_Abund_p=46.4;
		
// RasGAP_Abund_p   id: RasGAP_Abund
	RasGAP_Abund_p=93.6;
		
// SOS_Abund_p   id: SOS_Abund
	SOS_Abund_p=82.3;
		
// Gab1_Abund_p   id: Gab1_Abund
	Gab1_Abund_p=43.1;
		
// PIP2_Abund_p   id: PIP2_Abund
	PIP2_Abund_p=197;
		
// Akt_Abund_p   id: Akt_Abund
	Akt_Abund_p=444.2921;
		
// Ras_Abund_p   id: Ras_Abund
	Ras_Abund_p=95.7;
		
// Raf_Abund_p   id: Raf_Abund
	Raf_Abund_p=743;
		
// MEK_Abund_p   id: MEK_Abund
	MEK_Abund_p=772;
		
// ERK_Abund_p   id: ERK_Abund
	ERK_Abund_p=749.9716;
		
// VmaxPY_p   id: VmaxPY
	VmaxPY_p=223.8776;
		
// KmPY_p   id: KmPY
	KmPY_p=486.1398;
		
// kdeg_p   id: kdeg
	kdeg_p=0.0259;
		
// kf47_p   id: kf47
	kf47_p=24.6048;
		
// Vmaxr47_p   id: Vmaxr47
	Vmaxr47_p=590.5058;
		
// Kmf47_p   id: Kmf47
	Kmf47_p=698.6022;
		
// Kmr47_p   id: Kmr47
	Kmr47_p=483.8622;
		
// kf48_p   id: kf48
	kf48_p=16.833;
		
// Kmf48_p   id: Kmf48
	Kmf48_p=715.5688;
		
// Kmr48_p   id: Kmr48
	Kmr48_p=324.9294;
		
// PTEN_p   id: PTEN
	PTEN_p=693.5786;
		
// kf49_p   id: kf49
	kf49_p=44.3501;
		
// kr49_p   id: kr49
	kr49_p=552.6746;
		
// Kmf49_p   id: Kmf49
	Kmf49_p=343.2483;
		
// Kmr49_p   id: Kmr49
	Kmr49_p=753.1667;
		
// Kmr49b_p   id: Kmr49b
	Kmr49b_p=381.2208;
		
// kr49b_p   id: kr49b
	kr49b_p=640.8212;
		
// kf51_p   id: kf51
	kf51_p=3.6515;
		
// kr51_p   id: kr51
	kr51_p=0;
		
// Vmaxr51_p   id: Vmaxr51
	Vmaxr51_p=16.737;
		
// Kmf51_p   id: Kmf51
	Kmf51_p=599.7076;
		
// Kmr51_p   id: Kmr51
	Kmr51_p=346.4779;
		
// Kmrb51_p   id: Kmrb51
	Kmrb51_p=988.4496;
		
// kf52_p   id: kf52
	kf52_p=0.7745;
		
// Vmaxr52_p   id: Vmaxr52
	Vmaxr52_p=199.2773;
		
// Kmf52_p   id: Kmf52
	Kmf52_p=545.4408;
		
// Kmr52_p   id: Kmr52
	Kmr52_p=675.2994;
		
// kf53_p   id: kf53
	kf53_p=0.6094;
		
// Vmaxr53_p   id: Vmaxr53
	Vmaxr53_p=59.2314;
		
// Kmf53_p   id: Kmf53
	Kmf53_p=812.254;
		
// Kmr53_p   id: Kmr53
	Kmr53_p=944.7692;
		
// kf54_p   id: kf54
	kf54_p=0.0538;
		
// Vmaxr54_p   id: Vmaxr54
	Vmaxr54_p=588.2671;
		
// Kmf54_p   id: Kmf54
	Kmf54_p=457.9645;
		
// Kmr54_p   id: Kmr54
	Kmr54_p=336.183;
		
// kf55_p   id: kf55
	kf55_p=0.2256;
		
// Vmaxr55_p   id: Vmaxr55
	Vmaxr55_p=646.9003;
		
// Kmf55_p   id: Kmf55
	Kmf55_p=460.9446;
		
// Kmr55_p   id: Kmr55
	Kmr55_p=643.9247;
		
// kf38_p   id: kf38
	kf38_p=279.9929;
		
// kf39_p   id: kf39
	kf39_p=385.7428;
		
// kf50_p   id: kf50
	kf50_p=389.1061;
		
// a98_p   id: a98
	a98_p=0.0849;
		
// b98_p   id: b98
	b98_p=0.1833;
		
// koff46_p   id: koff46
	koff46_p=0.5194;
		
// EGF_off_p   id: EGF_off
	EGF_off_p=0.0175;
		
// HRGoff_3_p   id: HRGoff_3
	HRGoff_3_p=0.0009;
		
// HRGoff_4_p   id: HRGoff_4
	HRGoff_4_p=0.0973;
		
// koff4_p   id: koff4
	koff4_p=0.1717;
		
// koff5_p   id: koff5
	koff5_p=4.3985;
		
// koff6_p   id: koff6
	koff6_p=2.6619;
		
// koff7_p   id: koff7
	koff7_p=8.0557;
		
// koff8_p   id: koff8
	koff8_p=9.1034;
		
// koff9_p   id: koff9
	koff9_p=5.5425;
		
// koff57_p   id: koff57
	koff57_p=0.4526;
		
// koff16_p   id: koff16
	koff16_p=0.5737;
		
// koff17_p   id: koff17
	koff17_p=4.6874;
		
// koff18_p   id: koff18
	koff18_p=2.2768;
		
// koff19_p   id: koff19
	koff19_p=2.3361;
		
// koff20_p   id: koff20
	koff20_p=0.6761;
		
// koff21_p   id: koff21
	koff21_p=4.7291;
		
// koff22_p   id: koff22
	koff22_p=3.6962;
		
// koff23_p   id: koff23
	koff23_p=2.3619;
		
// koff24_p   id: koff24
	koff24_p=4.4226;
		
// koff25_p   id: koff25
	koff25_p=2.225;
		
// koff26_p   id: koff26
	koff26_p=0.0103;
		
// koff27_p   id: koff27
	koff27_p=1.8922;
		
// koff28_p   id: koff28
	koff28_p=4.6432;
		
// koff29_p   id: koff29
	koff29_p=2.0148;
		
// koff30_p   id: koff30
	koff30_p=4.9936;
		
// koff31_p   id: koff31
	koff31_p=1.2204;
		
// koff32_p   id: koff32
	koff32_p=3.8752;
		
// koff33_p   id: koff33
	koff33_p=1.2817;
		
// koff34_p   id: koff34
	koff34_p=3.2036;
		
// koff35_p   id: koff35
	koff35_p=1.8696;
		
// koff36_p   id: koff36
	koff36_p=1.2567;
		
// koff37_p   id: koff37
	koff37_p=0.4059;
		
// koff65_p   id: koff65
	koff65_p=0.1185;
		
// koff66_p   id: koff66
	koff66_p=2.2988;
		
// koff67_p   id: koff67
	koff67_p=1.6142;
		
// koff40_p   id: koff40
	koff40_p=3.1051;
		
// koff41_p   id: koff41
	koff41_p=7.0487;
		
// koff42_p   id: koff42
	koff42_p=3.5195;
		
// koff43_p   id: koff43
	koff43_p=0.5441;
		
// koff44_p   id: koff44
	koff44_p=0.4265;
		
// koff45_p   id: koff45
	koff45_p=3.9967;
		
// koff58_p   id: koff58
	koff58_p=6.3059;
		
// koff59_p   id: koff59
	koff59_p=9.172;
		
// koff68_p   id: koff68
	koff68_p=2.8871;
		
// PTP1B_Abund_p   id: PTP1B_Abund
	PTP1B_Abund_p=500;
		
// kPTP10_p   id: kPTP10
	kPTP10_p=29.8531;
		
// kPTP11_p   id: kPTP11
	kPTP11_p=78.204;
		
// kPTP12_p   id: kPTP12
	kPTP12_p=11.4211;
		
// kPTP13_p   id: kPTP13
	kPTP13_p=55.2104;
		
// kPTP14_p   id: kPTP14
	kPTP14_p=57.7506;
		
// kPTP15_p   id: kPTP15
	kPTP15_p=60.2628;
		
// kPTP63_p   id: kPTP63
	kPTP63_p=7.4766;
		
// kPTP64_p   id: kPTP64
	kPTP64_p=48.6335;
		
// koff73_p   id: koff73
	koff73_p=3.0048;
		
// koff74_p   id: koff74
	koff74_p=1.2496;
		
// koff75_p   id: koff75
	koff75_p=1.4323;
		
// koff76_p   id: koff76
	koff76_p=2.1542;
		
// koff77_p   id: koff77
	koff77_p=1.2237;
		
// koff78_p   id: koff78
	koff78_p=0.2007;
		
// koff79_p   id: koff79
	koff79_p=1.1852;
		
// koff80_p   id: koff80
	koff80_p=2.9373;
		
// kPTP38_p   id: kPTP38
	kPTP38_p=83.4465;
		
// kPTP39_p   id: kPTP39
	kPTP39_p=79.6132;
		
// koff88_p   id: koff88
	koff88_p=3.9255;
		
// kPTP50_p   id: kPTP50
	kPTP50_p=96.5716;
		
// kf81_p   id: kf81
	kf81_p=1.361;
		
// Vmaxr81_p   id: Vmaxr81
	Vmaxr81_p=242.6034;
		
// Kmf81_p   id: Kmf81
	Kmf81_p=485.2626;
		
// Kmr81_p   id: Kmr81
	Kmr81_p=323.4012;
		
// kf82_p   id: kf82
	kf82_p=6.9987;
		
// Vmaxr82_p   id: Vmaxr82
	Vmaxr82_p=398.1931;
		
// Kmf82_p   id: Kmf82
	Kmf82_p=781.4374;
		
// Kmr82_p   id: Kmr82
	Kmr82_p=595.8395;
		
// kf83_p   id: kf83
	kf83_p=1.7628;
		
// Vmaxr83_p   id: Vmaxr83
	Vmaxr83_p=534.0531;
		
// Kmf83_p   id: Kmf83
	Kmf83_p=609.4766;
		
// Kmr83_p   id: Kmr83
	Kmr83_p=653.5184;
		
// kf84_p   id: kf84
	kf84_p=4.6894;
		
// Vmaxr84_p   id: Vmaxr84
	Vmaxr84_p=634.1626;
		
// Kmf84_p   id: Kmf84
	Kmf84_p=622.3847;
		
// Kmr84_p   id: Kmr84
	Kmr84_p=258.4637;
		
// kf85_p   id: kf85
	kf85_p=6.7591;
		
// Vmaxr85_p   id: Vmaxr85
	Vmaxr85_p=369.2261;
		
// Kmf85_p   id: Kmf85
	Kmf85_p=179.6486;
		
// Kmr85_p   id: Kmr85
	Kmr85_p=290.7667;
		
// kcon49_p   id: kcon49
	kcon49_p=9.9783;
		
// kon1_p   id: kon1
	kon1_p=0.00010086;
		
// kon86_p   id: kon86
	kon86_p=0.0038;
		
// kon2_p   id: kon2
	kon2_p=0.0059;
		
// kon3_p   id: kon3
	kon3_p=0.0334;
		
// kon87_p   id: kon87
	kon87_p=0.0008;
		
// kon4_p   id: kon4
	kon4_p=0.5005;
		
// kon5_p   id: kon5
	kon5_p=2.5427;
		
// kon6_p   id: kon6
	kon6_p=0.2283;
		
// kon7_p   id: kon7
	kon7_p=1.0606;
		
// kon8_p   id: kon8
	kon8_p=1.0259;
		
// kon9_p   id: kon9
	kon9_p=2.2868;
		
// kon57_p   id: kon57
	kon57_p=0.0039;
		
// kf10_p   id: kf10
	kf10_p=0.6496;
		
// kf11_p   id: kf11
	kf11_p=0.3721;
		
// kf12_p   id: kf12
	kf12_p=1.8012;
		
// kf13_p   id: kf13
	kf13_p=0.8875;
		
// kf14_p   id: kf14
	kf14_p=6.1726;
		
// kf15_p   id: kf15
	kf15_p=1.3565;
		
// kf63_p   id: kf63
	kf63_p=0.9297;
		
// kf64_p   id: kf64
	kf64_p=1.2083;
		
// kon16_p   id: kon16
	kon16_p=0.0097;
		
// kon17_p   id: kon17
	kon17_p=0.0049;
		
// kon18_p   id: kon18
	kon18_p=0.0117;
		
// kon73_p   id: kon73
	kon73_p=0.0116;
		
// kon19_p   id: kon19
	kon19_p=0.0896;
		
// kon20_p   id: kon20
	kon20_p=0.0478;
		
// kon21_p   id: kon21
	kon21_p=0.0114;
		
// kon74_p   id: kon74
	kon74_p=0.0133;
		
// kon22_p   id: kon22
	kon22_p=0.0007;
		
// kon23_p   id: kon23
	kon23_p=0.0138;
		
// kon24_p   id: kon24
	kon24_p=0.005;
		
// kon25_p   id: kon25
	kon25_p=0.0995;
		
// kon75_p   id: kon75
	kon75_p=0.0137;
		
// kon26_p   id: kon26
	kon26_p=0.0355;
		
// kon27_p   id: kon27
	kon27_p=0.0201;
		
// kon28_p   id: kon28
	kon28_p=0.0074;
		
// kon29_p   id: kon29
	kon29_p=0.0346;
		
// kon76_p   id: kon76
	kon76_p=0.0053;
		
// kon30_p   id: kon30
	kon30_p=0.002;
		
// kon31_p   id: kon31
	kon31_p=0.0032;
		
// kon32_p   id: kon32
	kon32_p=0.0009;
		
// kon33_p   id: kon33
	kon33_p=0.0335;
		
// kon77_p   id: kon77
	kon77_p=0.0101;
		
// kon34_p   id: kon34
	kon34_p=0.0001;
		
// kon35_p   id: kon35
	kon35_p=0.0602;
		
// kon36_p   id: kon36
	kon36_p=0.0043;
		
// kon37_p   id: kon37
	kon37_p=0.0791;
		
// kon78_p   id: kon78
	kon78_p=0.0076;
		
// kon79_p   id: kon79
	kon79_p=0.0078;
		
// kon65_p   id: kon65
	kon65_p=0.0123;
		
// kon66_p   id: kon66
	kon66_p=0.00019264;
		
// kon67_p   id: kon67
	kon67_p=6.6667e-05;
		
// kon80_p   id: kon80
	kon80_p=0.0002;
		
// kon40_p   id: kon40
	kon40_p=0.0191;
		
// kon41_p   id: kon41
	kon41_p=0.0051;
		
// kon42_p   id: kon42
	kon42_p=0.0023;
		
// kon43_p   id: kon43
	kon43_p=0.0127;
		
// kon44_p   id: kon44
	kon44_p=0.0122;
		
// kon45_p   id: kon45
	kon45_p=0.0028;
		
// kon88_p   id: kon88
	kon88_p=0.0108;
		
// kon46_p   id: kon46
	kon46_p=0.0148;
		
// kon58_p   id: kon58
	kon58_p=0.0215;
		
// kon59_p   id: kon59
	kon59_p=0.0077;
		
// kon60_p   id: kon60
	kon60_p=0.00011994;
		
// VeVc_p   id: VeVc
	VeVc_p=33.3;
		
// koff60_p   id: koff60
	koff60_p=4.9981;
		
// koff61_p   id: koff61
	koff61_p=5.229;
		
// kon61_p   id: kon61
	kon61_p=0.8048;
		
// kon62_p   id: kon62
	kon62_p=1.782;
		
// koff62_p   id: koff62
	koff62_p=5.5142;
		
// kon68_p   id: kon68
	kon68_p=0.0045;
		
// kon69_p   id: kon69
	kon69_p=0.0084;
		
// koff69_p   id: koff69
	koff69_p=3.97;
		
// kon70_p   id: kon70
	kon70_p=0.0116;
		
// koff70_p   id: koff70
	koff70_p=2.6069;
		
// kon71_p   id: kon71
	kon71_p=0.0078;
		
// koff71_p   id: koff71
	koff71_p=2.2988;
		
// kon72_p   id: kon72
	kon72_p=0.0355;
		
// koff72_p   id: koff72
	koff72_p=0.907;
		
// eps_p   id: eps
	eps_p=1e-16;
		
// kon89_p   id: kon89
	kon89_p=0.1997;
		
// koff89_p   id: koff89
	koff89_p=99.9637;
		
// kcat90_p   id: kcat90
	kcat90_p=20.0037;
		
// kon91_p   id: kon91
	kon91_p=0.1966;
		
// koff91_p   id: koff91
	koff91_p=99.9983;
		
// kcat92_p   id: kcat92
	kcat92_p=0.2004;
		
// kon93_p   id: kon93
	kon93_p=0.2003;
		
// koff93_p   id: koff93
	koff93_p=100.0037;
		
// kcat94_p   id: kcat94
	kcat94_p=0.9966;
		
// kon95_p   id: kon95
	kon95_p=0.1993;
		
// koff95_p   id: koff95
	koff95_p=100.0023;
		
// kcat96_p   id: kcat96
	kcat96_p=19.9851;
		
// ERKPpase_Abund_p   id: ERKPpase_Abund
	ERKPpase_Abund_p=35.005;
		
// norm_Akt_star_s   id: norm_Akt_star
	norm_Akt_star_s=0;
		
// norm_Erk_star_s   id: norm_Erk_star
	norm_Erk_star_s=0;
		



xdot=[
//x(1)   ID: E1  initialValue: 274
	(1/compartment_membrane)*( (-1)*(1)* (compartment_membrane*((kon1_p* x(110) * x(1) )-(EGF_off_p* x(5) ))) + (-1)*(1)* (compartment_membrane*(((kf81_p* x(1) * x(74) )/(Kmf81_p+ x(1) ))-((Vmaxr81_p* x(103) )/(Kmr81_p+ x(103) )))) );
	
//x(2)   ID: E2  initialValue: 158
	(1/compartment_membrane)*( (-1)*(1)* (compartment_membrane*((kon5_p* x(5) * x(2) )-(koff5_p* x(9) ))) + (-1)*(1)* (compartment_membrane*((kon6_p* x(6) * x(2) )-(koff6_p* x(10) ))) + (-1)*(1)* ((kon8_p* x(7) * x(2) )-(koff8_p* x(12) )) + (-1)*(1)* (compartment_membrane*(((kf82_p* x(2) * x(74) )/(Kmf82_p+ x(2) ))-((Vmaxr82_p* x(104) )/(Kmr82_p+ x(104) )))) );
	
//x(3)   ID: E3  initialValue: 294
	(1/compartment_membrane)*( (-1)*(1)* (compartment_membrane*((kon2_p* x(111) * x(3) )-(HRGoff_3_p* x(6) ))) );
	
//x(4)   ID: E4  initialValue: 399
	(1/compartment_membrane)*( (-1)*(1)* (compartment_membrane*((kon3_p* x(111) * x(4) )-(HRGoff_4_p* x(7) ))) + (-1)*(1)* (compartment_membrane*(((kf83_p* x(4) * x(74) )/(Kmf83_p+ x(4) ))-((Vmaxr83_p* x(105) )/(Kmr83_p+ x(105) )))) );
	
//x(5)   ID: E_E1  initialValue: 0
	(1/compartment_membrane)*( (-1)*(1)* (compartment_membrane*((kon4_p* x(5) * x(5) )-(koff4_p* x(8) ))) + (-1)*(1)* (compartment_membrane*((kon4_p* x(5) * x(5) )-(koff4_p* x(8) ))) + (-1)*(1)* (compartment_membrane*((kon5_p* x(5) * x(2) )-(koff5_p* x(9) ))) + (-1)*(1)* (compartment_membrane*((kon61_p* x(6) * x(5) )-(koff61_p* x(81) ))) + (-1)*(1)* (compartment_membrane*((kon62_p* x(7) * x(5) )-(koff62_p* x(82) ))) + (-1)*(1)* (compartment_membrane*(((kf84_p* x(5) * x(74) )/(Kmf84_p+ x(5) ))-((Vmaxr84_p* x(106) )/(Kmr84_p+ x(106) )))) + (1)*(1)* (compartment_membrane*((kon1_p* x(110) * x(1) )-(EGF_off_p* x(5) ))) );
	
//x(6)   ID: H_E3  initialValue: 0
	(1/compartment_membrane)*( (-1)*(1)* (compartment_membrane*((kon6_p* x(6) * x(2) )-(koff6_p* x(10) ))) + (-1)*(1)* (compartment_membrane*((kon7_p* x(6) * x(7) )-(koff7_p* x(11) ))) + (-1)*(1)* (compartment_membrane*((kon61_p* x(6) * x(5) )-(koff61_p* x(81) ))) + (1)*(1)* (compartment_membrane*((kon2_p* x(111) * x(3) )-(HRGoff_3_p* x(6) ))) );
	
//x(7)   ID: H_E4  initialValue: 0
	(1/compartment_membrane)*( (-1)*(1)* (compartment_membrane*((kon7_p* x(6) * x(7) )-(koff7_p* x(11) ))) + (-1)*(1)* ((kon8_p* x(7) * x(2) )-(koff8_p* x(12) )) + (-1)*(1)* (compartment_membrane*((kon9_p* x(7) * x(7) )-(koff9_p* x(13) ))) + (-1)*(1)* (compartment_membrane*((kon9_p* x(7) * x(7) )-(koff9_p* x(13) ))) + (-1)*(1)* (compartment_membrane*((kon62_p* x(7) * x(5) )-(koff62_p* x(82) ))) + (-1)*(1)* (compartment_membrane*(((kf85_p* x(7) * x(74) )/(Kmf85_p+ x(7) ))-((Vmaxr85_p* x(107) )/(Kmr85_p+ x(107) )))) + (1)*(1)* (compartment_membrane*((kon3_p* x(111) * x(4) )-(HRGoff_4_p* x(7) ))) );
	
//x(8)   ID: E11  initialValue: 0
	(1/compartment_membrane)*( (-1)*(1)* (compartment_membrane*(((kf10_p* x(8) )-((VmaxPY_p* x(14) )/(KmPY_p+ x(14) )))-(kPTP10_p* x(102) * x(14) ))) + (1)*(1)* (compartment_membrane*((kon4_p* x(5) * x(5) )-(koff4_p* x(8) ))) );
	
//x(9)   ID: E12  initialValue: 0
	(1/compartment_membrane)*( (-1)*(1)* (compartment_membrane*(((kf11_p* x(9) )-((VmaxPY_p* x(15) )/(KmPY_p+ x(15) )))-(kPTP11_p* x(102) * x(15) ))) + (1)*(1)* (compartment_membrane*((kon5_p* x(5) * x(2) )-(koff5_p* x(9) ))) );
	
//x(10)   ID: E23  initialValue: 0
	(1/compartment_membrane)*( (-1)*(1)* (compartment_membrane*(((kf12_p* x(10) )-((VmaxPY_p* x(16) )/(KmPY_p+ x(16) )))-(kPTP12_p* x(102) * x(16) ))) + (1)*(1)* (compartment_membrane*((kon6_p* x(6) * x(2) )-(koff6_p* x(10) ))) );
	
//x(11)   ID: E34  initialValue: 0
	(1/compartment_membrane)*( (-1)*(1)* (compartment_membrane*(((kf13_p* x(11) )-((VmaxPY_p* x(17) )/(KmPY_p+ x(17) )))-(kPTP13_p* x(102) * x(17) ))) + (1)*(1)* (compartment_membrane*((kon7_p* x(6) * x(7) )-(koff7_p* x(11) ))) );
	
//x(12)   ID: E24  initialValue: 0
	(1/compartment_membrane)*( (-1)*(1)* (compartment_membrane*(((kf14_p* x(12) )-((VmaxPY_p* x(18) )/(KmPY_p+ x(18) )))-(kPTP14_p* x(102) * x(18) ))) + (1)*(1)* ((kon8_p* x(7) * x(2) )-(koff8_p* x(12) )) );
	
//x(13)   ID: E44  initialValue: 0
	(1/compartment_membrane)*( (-1)*(1)* (compartment_membrane*(((kf15_p* x(13) )-((VmaxPY_p* x(19) )/(KmPY_p+ x(19) )))-(kPTP15_p* x(102) * x(19) ))) + (1)*(1)* (compartment_membrane*((kon9_p* x(7) * x(7) )-(koff9_p* x(13) ))) );
	
//x(14)   ID: E11P  initialValue: 0
	(1/compartment_membrane)*( (-1)*(1)* (compartment_membrane*((( 4 )*kon16_p* x(14) * x(20) )-(koff16_p*( x(48) /( x(48) + x(56) + x(55) + x(77) +eps_p))* x(26) ))) + (-1)*(1)* (compartment_membrane*((( 8 )*kon17_p* x(14) * x(21) )-(koff17_p*( x(49) /( x(49) + x(53) + x(57) +eps_p))* x(27) ))) + (-1)*(1)* (compartment_membrane*((( 2 )*kon18_p* x(14) * x(23) )-(koff18_p*( x(51) /( x(51) + x(68) +eps_p))* x(28) ))) + (-1)*(1)* (compartment_membrane*((( 4 )*kon73_p* x(14) * x(93) )-(koff73_p* x(94) ))) + (-1)*(1)* (compartment_membrane*kdeg_p* x(14) ) + (1)*(1)* (compartment_membrane*(((kf10_p* x(8) )-((VmaxPY_p* x(14) )/(KmPY_p+ x(14) )))-(kPTP10_p* x(102) * x(14) ))) );
	
//x(15)   ID: E12P  initialValue: 0
	(1/compartment_membrane)*( (-1)*(1)* (compartment_membrane*((( 3 )*kon19_p* x(15) * x(20) )-(koff19_p*( x(48) /( x(48) + x(56) + x(55) + x(77) +eps_p))* x(29) ))) + (-1)*(1)* (compartment_membrane*((( 6 )*kon20_p* x(15) * x(21) )-(koff20_p*( x(49) /( x(49) + x(53) + x(57) +eps_p))* x(30) ))) + (-1)*(1)* (compartment_membrane*((( 2 )*kon21_p* x(15) * x(23) )-(koff21_p*( x(51) /( x(51) + x(68) +eps_p))* x(31) ))) + (-1)*(1)* (compartment_membrane*((( 3 )*kon74_p* x(15) * x(93) )-(koff74_p* x(95) ))) + (1)*(1)* (compartment_membrane*(((kf11_p* x(9) )-((VmaxPY_p* x(15) )/(KmPY_p+ x(15) )))-(kPTP11_p* x(102) * x(15) ))) );
	
//x(16)   ID: E23P  initialValue: 0
	(1/compartment_membrane)*( (-1)*(1)* (compartment_membrane*((( 3 )*kon22_p* x(16) * x(20) )-(koff22_p*( x(48) /( x(48) + x(56) + x(55) + x(77) +eps_p))* x(32) ))) + (-1)*(1)* (compartment_membrane*((( 3 )*kon23_p* x(16) * x(21) )-(koff23_p*( x(49) /( x(49) + x(53) + x(57) +eps_p))* x(33) ))) + (-1)*(1)* (compartment_membrane*((( 3 )*kon24_p* x(16) * x(22) )-(koff24_p* x(34) ))) + (-1)*(1)* (compartment_membrane*((( 2 )*kon25_p* x(16) * x(23) )-(koff25_p*( x(51) /( x(51) + x(68) +eps_p))* x(35) ))) + (-1)*(1)* (compartment_membrane*((( 2 )*kon75_p* x(16) * x(93) )-(koff75_p* x(96) ))) + (1)*(1)* (compartment_membrane*(((kf12_p* x(10) )-((VmaxPY_p* x(16) )/(KmPY_p+ x(16) )))-(kPTP12_p* x(102) * x(16) ))) );
	
//x(17)   ID: E34P  initialValue: 0
	(1/compartment_membrane)*( (-1)*(1)* (compartment_membrane*((( 4 )*kon26_p* x(17) * x(20) )-(koff26_p*( x(48) /( x(48) + x(56) + x(55) + x(77) +eps_p))* x(36) ))) + (-1)*(1)* (compartment_membrane*((( 3 )*kon27_p* x(17) * x(21) )-(koff27_p*( x(49) /( x(49) + x(53) + x(57) +eps_p))* x(37) ))) + (-1)*(1)* (compartment_membrane*((( 4 )*kon28_p* x(17) * x(22) )-(koff28_p* x(38) ))) + (-1)*(1)* (compartment_membrane*((( 2 )*kon29_p* x(17) * x(23) )-(koff29_p*( x(51) /( x(51) + x(68) +eps_p))* x(39) ))) + (-1)*(1)* (compartment_membrane*((( 2 )*kon76_p* x(17) * x(93) )-(koff76_p* x(97) ))) + (1)*(1)* (compartment_membrane*(((kf13_p* x(11) )-((VmaxPY_p* x(17) )/(KmPY_p+ x(17) )))-(kPTP13_p* x(102) * x(17) ))) );
	
//x(18)   ID: E24P  initialValue: 0
	(1/compartment_membrane)*( (-1)*(1)* (compartment_membrane*((( 3 )*kon30_p* x(18) * x(20) )-(koff30_p*( x(48) /( x(48) + x(56) + x(55) + x(77) +eps_p))* x(40) ))) + (-1)*(1)* (compartment_membrane*((( 4 )*kon31_p* x(18) * x(21) )-(koff31_p*( x(49) /( x(49) + x(53) + x(57) +eps_p))* x(41) ))) + (-1)*(1)* (compartment_membrane*((( 1 )*kon32_p* x(18) * x(22) )-(koff32_p* x(42) ))) + (-1)*(1)* (compartment_membrane*((( 2 )*kon33_p* x(18) * x(23) )-(koff33_p*( x(51) /( x(51) + x(68) +eps_p))* x(43) ))) + (-1)*(1)* (compartment_membrane*((( 2 )*kon77_p* x(18) * x(93) )-(koff77_p* x(98) ))) + (1)*(1)* (compartment_membrane*(((kf14_p* x(12) )-((VmaxPY_p* x(18) )/(KmPY_p+ x(18) )))-(kPTP14_p* x(102) * x(18) ))) );
	
//x(19)   ID: E44P  initialValue: 0
	(1/compartment_membrane)*( (-1)*(1)* (compartment_membrane*((( 4 )*kon34_p* x(19) * x(20) )-(koff34_p*( x(48) /( x(48) + x(56) + x(55) + x(77) +eps_p))* x(44) ))) + (-1)*(1)* (compartment_membrane*((( 4 )*kon35_p* x(19) * x(21) )-(koff35_p*( x(49) /( x(49) + x(53) + x(57) +eps_p))* x(45) ))) + (-1)*(1)* (compartment_membrane*((( 2 )*kon36_p* x(19) * x(22) )-(koff36_p* x(46) ))) + (-1)*(1)* (compartment_membrane*((( 2 )*kon37_p* x(19) * x(23) )-(koff37_p*( x(51) /( x(51) + x(68) +eps_p))* x(47) ))) + (-1)*(1)* (compartment_membrane*((( 2 )*kon78_p* x(19) * x(93) )-(koff78_p* x(99) ))) + (1)*(1)* (compartment_membrane*(((kf15_p* x(13) )-((VmaxPY_p* x(19) )/(KmPY_p+ x(19) )))-(kPTP15_p* x(102) * x(19) ))) );
	
//x(20)   ID: G  initialValue: 82.4
	(1/compartment_membrane)*( (-1)*(1)* (compartment_membrane*((( 4 )*kon16_p* x(14) * x(20) )-(koff16_p*( x(48) /( x(48) + x(56) + x(55) + x(77) +eps_p))* x(26) ))) + (-1)*(1)* (compartment_membrane*((( 3 )*kon19_p* x(15) * x(20) )-(koff19_p*( x(48) /( x(48) + x(56) + x(55) + x(77) +eps_p))* x(29) ))) + (-1)*(1)* (compartment_membrane*((( 3 )*kon22_p* x(16) * x(20) )-(koff22_p*( x(48) /( x(48) + x(56) + x(55) + x(77) +eps_p))* x(32) ))) + (-1)*(1)* (compartment_membrane*((( 4 )*kon26_p* x(17) * x(20) )-(koff26_p*( x(48) /( x(48) + x(56) + x(55) + x(77) +eps_p))* x(36) ))) + (-1)*(1)* (compartment_membrane*((( 3 )*kon30_p* x(18) * x(20) )-(koff30_p*( x(48) /( x(48) + x(56) + x(55) + x(77) +eps_p))* x(40) ))) + (-1)*(1)* (compartment_membrane*((( 4 )*kon34_p* x(19) * x(20) )-(koff34_p*( x(48) /( x(48) + x(56) + x(55) + x(77) +eps_p))* x(44) ))) + (-1)*(1)* (compartment_membrane*((kon42_p* x(53) * x(20) )-(koff42_p* x(57) *( x(48) /( x(48) + x(56) + x(55) + x(77) +eps_p))))) + (-1)*(1)* (compartment_membrane*((kon57_p* x(62) * x(20) )-(koff57_p* x(78) ))) + (-1)*(1)* (compartment_membrane*((( 4 )*kon65_p* x(83) * x(20) )-(koff65_p*( x(48) /( x(48) + x(56) + x(55) + x(77) +eps_p))* x(85) ))) + (-1)*(1)* (compartment_membrane*((( 4 )*kon69_p* x(84) * x(20) )-(koff69_p*( x(48) /( x(48) + x(56) + x(55) + x(77) +eps_p))* x(89) ))) + (1)*(1)* (compartment_membrane*kdeg_p* x(26) ) );
	
//x(21)   ID: S  initialValue: 11.5
	(1/compartment_membrane)*( (-1)*(1)* (compartment_membrane*((( 8 )*kon17_p* x(14) * x(21) )-(koff17_p*( x(49) /( x(49) + x(53) + x(57) +eps_p))* x(27) ))) + (-1)*(1)* (compartment_membrane*((( 6 )*kon20_p* x(15) * x(21) )-(koff20_p*( x(49) /( x(49) + x(53) + x(57) +eps_p))* x(30) ))) + (-1)*(1)* (compartment_membrane*((( 3 )*kon23_p* x(16) * x(21) )-(koff23_p*( x(49) /( x(49) + x(53) + x(57) +eps_p))* x(33) ))) + (-1)*(1)* (compartment_membrane*((( 3 )*kon27_p* x(17) * x(21) )-(koff27_p*( x(49) /( x(49) + x(53) + x(57) +eps_p))* x(37) ))) + (-1)*(1)* (compartment_membrane*((( 4 )*kon31_p* x(18) * x(21) )-(koff31_p*( x(49) /( x(49) + x(53) + x(57) +eps_p))* x(41) ))) + (-1)*(1)* (compartment_membrane*((( 4 )*kon35_p* x(19) * x(21) )-(koff35_p*( x(49) /( x(49) + x(53) + x(57) +eps_p))* x(45) ))) + (-1)*(1)* (compartment_membrane*((( 3 )*kon43_p* x(54) * x(21) )-(koff43_p* x(58) *( x(49) /( x(49) + x(53) + x(57) +eps_p))))) + (-1)*(1)* (compartment_membrane*((( 5 )*kon66_p* x(83) * x(21) )-(koff66_p*( x(49) /( x(49) + x(53) + x(57) +eps_p))* x(86) ))) + (-1)*(1)* (compartment_membrane*((( 6 )*kon70_p* x(84) * x(21) )-(koff70_p*( x(49) /( x(49) + x(53) + x(57) +eps_p))* x(90) ))) + (1)*(1)* (compartment_membrane*kdeg_p* x(27) ) );
	
//x(22)   ID: I  initialValue: 46.4
	(1/compartment_membrane)*( (-1)*(1)* (compartment_membrane*((( 3 )*kon24_p* x(16) * x(22) )-(koff24_p* x(34) ))) + (-1)*(1)* (compartment_membrane*((( 4 )*kon28_p* x(17) * x(22) )-(koff28_p* x(38) ))) + (-1)*(1)* (compartment_membrane*((( 1 )*kon32_p* x(18) * x(22) )-(koff32_p* x(42) ))) + (-1)*(1)* (compartment_membrane*((( 2 )*kon36_p* x(19) * x(22) )-(koff36_p* x(46) ))) + (-1)*(1)* (compartment_membrane*((( 3 )*kon44_p* x(54) * x(22) )-(koff44_p* x(59) ))) + (-1)*(1)* (compartment_membrane*((( 3 )*kon67_p* x(83) * x(22) )-(koff67_p* x(87) ))) + (-1)*(1)* (compartment_membrane*((( 1 )*kon71_p* x(84) * x(22) )-(koff71_p* x(91) ))) );
	
//x(23)   ID: R  initialValue: 93.6
	(1/compartment_membrane)*( (-1)*(1)* (compartment_membrane*((( 2 )*kon18_p* x(14) * x(23) )-(koff18_p*( x(51) /( x(51) + x(68) +eps_p))* x(28) ))) + (-1)*(1)* (compartment_membrane*((( 2 )*kon21_p* x(15) * x(23) )-(koff21_p*( x(51) /( x(51) + x(68) +eps_p))* x(31) ))) + (-1)*(1)* (compartment_membrane*((( 2 )*kon25_p* x(16) * x(23) )-(koff25_p*( x(51) /( x(51) + x(68) +eps_p))* x(35) ))) + (-1)*(1)* (compartment_membrane*((( 2 )*kon29_p* x(17) * x(23) )-(koff29_p*( x(51) /( x(51) + x(68) +eps_p))* x(39) ))) + (-1)*(1)* (compartment_membrane*((( 2 )*kon33_p* x(18) * x(23) )-(koff33_p*( x(51) /( x(51) + x(68) +eps_p))* x(43) ))) + (-1)*(1)* (compartment_membrane*((( 2 )*kon37_p* x(19) * x(23) )-(koff37_p*( x(51) /( x(51) + x(68) +eps_p))* x(47) ))) + (-1)*(1)* (compartment_membrane*((( 2 )*kon45_p* x(54) * x(23) )-(koff45_p* x(60) *( x(51) /( x(51) + x(68) +eps_p))))) + (-1)*(1)* (compartment_membrane*((( 2 )*kon68_p* x(83) * x(23) )-(koff68_p*( x(51) /( x(51) + x(68) +eps_p))* x(88) ))) + (-1)*(1)* (compartment_membrane*((( 2 )*kon72_p* x(84) * x(23) )-(koff72_p*( x(51) /( x(51) + x(68) +eps_p))* x(92) ))) + (1)*(1)* (compartment_membrane*kdeg_p* x(28) ) );
	
//x(24)   ID: O  initialValue: 82.3
	(1/compartment_membrane)*( (-1)*(1)* (compartment_membrane*((kon40_p* x(48) * x(24) )-(koff40_p* x(55) ))) + (-1)*(1)* (compartment_membrane*(((kf54_p* x(24) * x(74) )/(Kmf54_p+ x(24) ))-((Vmaxr54_p* x(75) )/(Kmr54_p+ x(75) )))) + (-1)*(1)* (compartment_membrane*((kon58_p* x(78) * x(24) )-(koff58_p* x(79) ))) + (-1)*(1)* (compartment_membrane*((kon60_p* x(56) * x(24) )-(koff60_p* x(77) ))) );
	
//x(25)   ID: A  initialValue: 43.1
	(1/compartment_membrane)*( (-1)*(1)* (compartment_membrane*((kon41_p* x(48) * x(25) )-(koff41_p* x(56) *( x(52) /(eps_p+ x(52) + x(54) + x(58) + x(60) + x(59) + x(109) ))))) + (-1)*(1)* (compartment_membrane*((kon46_p* x(64) * x(25) )-(koff46_p* x(62) *( x(52) /(eps_p+ x(52) + x(54) + x(58) + x(60) + x(59) + x(109) ))))) + (-1)*(1)* (compartment_membrane*(((kf55_p* x(25) * x(74) )/(Kmf55_p+ x(25) ))-((Vmaxr55_p* x(76) )/(Kmr55_p+ x(76) )))) + (-1)*(1)* (compartment_membrane*((kon59_p* x(55) * x(25) )-(koff59_p* x(77) *( x(52) /(eps_p+ x(52) + x(54) + x(58) + x(60) + x(59) + x(109) ))))) );
	
//x(26)   ID: E11G  initialValue: 0
	(1/compartment_membrane)*( (-1)*(1)* (compartment_membrane*kdeg_p* x(26) ) + (1)*(1)* (compartment_membrane*((( 4 )*kon16_p* x(14) * x(20) )-(koff16_p*( x(48) /( x(48) + x(56) + x(55) + x(77) +eps_p))* x(26) ))) );
	
//x(27)   ID: E11S  initialValue: 0
	(1/compartment_membrane)*( (-1)*(1)* (compartment_membrane*kdeg_p* x(27) ) + (1)*(1)* (compartment_membrane*((( 8 )*kon17_p* x(14) * x(21) )-(koff17_p*( x(49) /( x(49) + x(53) + x(57) +eps_p))* x(27) ))) );
	
//x(28)   ID: E11R  initialValue: 0
	(1/compartment_membrane)*( (-1)*(1)* (compartment_membrane*kdeg_p* x(28) ) + (1)*(1)* (compartment_membrane*((( 2 )*kon18_p* x(14) * x(23) )-(koff18_p*( x(51) /( x(51) + x(68) +eps_p))* x(28) ))) );
	
//x(29)   ID: E12G  initialValue: 0
	(1/compartment_membrane)*( (1)*(1)* (compartment_membrane*((( 3 )*kon19_p* x(15) * x(20) )-(koff19_p*( x(48) /( x(48) + x(56) + x(55) + x(77) +eps_p))* x(29) ))) );
	
//x(30)   ID: E12S  initialValue: 0
	(1/compartment_membrane)*( (1)*(1)* (compartment_membrane*((( 6 )*kon20_p* x(15) * x(21) )-(koff20_p*( x(49) /( x(49) + x(53) + x(57) +eps_p))* x(30) ))) );
	
//x(31)   ID: E12R  initialValue: 0
	(1/compartment_membrane)*( (1)*(1)* (compartment_membrane*((( 2 )*kon21_p* x(15) * x(23) )-(koff21_p*( x(51) /( x(51) + x(68) +eps_p))* x(31) ))) );
	
//x(32)   ID: E23G  initialValue: 0
	(1/compartment_membrane)*( (1)*(1)* (compartment_membrane*((( 3 )*kon22_p* x(16) * x(20) )-(koff22_p*( x(48) /( x(48) + x(56) + x(55) + x(77) +eps_p))* x(32) ))) );
	
//x(33)   ID: E23S  initialValue: 0
	(1/compartment_membrane)*( (1)*(1)* (compartment_membrane*((( 3 )*kon23_p* x(16) * x(21) )-(koff23_p*( x(49) /( x(49) + x(53) + x(57) +eps_p))* x(33) ))) );
	
//x(34)   ID: E23I  initialValue: 0
	(1/compartment_membrane)*( (1)*(1)* (compartment_membrane*((( 3 )*kon24_p* x(16) * x(22) )-(koff24_p* x(34) ))) );
	
//x(35)   ID: E23R  initialValue: 0
	(1/compartment_membrane)*( (1)*(1)* (compartment_membrane*((( 2 )*kon25_p* x(16) * x(23) )-(koff25_p*( x(51) /( x(51) + x(68) +eps_p))* x(35) ))) );
	
//x(36)   ID: E34G  initialValue: 0
	(1/compartment_membrane)*( (1)*(1)* (compartment_membrane*((( 4 )*kon26_p* x(17) * x(20) )-(koff26_p*( x(48) /( x(48) + x(56) + x(55) + x(77) +eps_p))* x(36) ))) );
	
//x(37)   ID: E34S  initialValue: 0
	(1/compartment_membrane)*( (1)*(1)* (compartment_membrane*((( 3 )*kon27_p* x(17) * x(21) )-(koff27_p*( x(49) /( x(49) + x(53) + x(57) +eps_p))* x(37) ))) );
	
//x(38)   ID: E34I  initialValue: 0
	(1/compartment_membrane)*( (1)*(1)* (compartment_membrane*((( 4 )*kon28_p* x(17) * x(22) )-(koff28_p* x(38) ))) );
	
//x(39)   ID: E34R  initialValue: 0
	(1/compartment_membrane)*( (1)*(1)* (compartment_membrane*((( 2 )*kon29_p* x(17) * x(23) )-(koff29_p*( x(51) /( x(51) + x(68) +eps_p))* x(39) ))) );
	
//x(40)   ID: E24G  initialValue: 0
	(1/compartment_membrane)*( (1)*(1)* (compartment_membrane*((( 3 )*kon30_p* x(18) * x(20) )-(koff30_p*( x(48) /( x(48) + x(56) + x(55) + x(77) +eps_p))* x(40) ))) );
	
//x(41)   ID: E24S  initialValue: 0
	(1/compartment_membrane)*( (1)*(1)* (compartment_membrane*((( 4 )*kon31_p* x(18) * x(21) )-(koff31_p*( x(49) /( x(49) + x(53) + x(57) +eps_p))* x(41) ))) );
	
//x(42)   ID: E24I  initialValue: 0
	(1/compartment_membrane)*( (1)*(1)* (compartment_membrane*((( 1 )*kon32_p* x(18) * x(22) )-(koff32_p* x(42) ))) );
	
//x(43)   ID: E24R  initialValue: 0
	(1/compartment_membrane)*( (1)*(1)* (compartment_membrane*((( 2 )*kon33_p* x(18) * x(23) )-(koff33_p*( x(51) /( x(51) + x(68) +eps_p))* x(43) ))) );
	
//x(44)   ID: E44G  initialValue: 0
	(1/compartment_membrane)*( (1)*(1)* (compartment_membrane*((( 4 )*kon34_p* x(19) * x(20) )-(koff34_p*( x(48) /( x(48) + x(56) + x(55) + x(77) +eps_p))* x(44) ))) );
	
//x(45)   ID: E44S  initialValue: 0
	(1/compartment_membrane)*( (1)*(1)* (compartment_membrane*((( 4 )*kon35_p* x(19) * x(21) )-(koff35_p*( x(49) /( x(49) + x(53) + x(57) +eps_p))* x(45) ))) );
	
//x(46)   ID: E44I  initialValue: 0
	(1/compartment_membrane)*( (1)*(1)* (compartment_membrane*((( 2 )*kon36_p* x(19) * x(22) )-(koff36_p* x(46) ))) );
	
//x(47)   ID: E44R  initialValue: 0
	(1/compartment_membrane)*( (1)*(1)* (compartment_membrane*((( 2 )*kon37_p* x(19) * x(23) )-(koff37_p*( x(51) /( x(51) + x(68) +eps_p))* x(47) ))) );
	
//x(48)   ID: SigG  initialValue: 0
	(1/compartment_membrane)*( (-1)*(1)* (compartment_membrane*((kon40_p* x(48) * x(24) )-(koff40_p* x(55) ))) + (-1)*(1)* (compartment_membrane*((kon41_p* x(48) * x(25) )-(koff41_p* x(56) *( x(52) /(eps_p+ x(52) + x(54) + x(58) + x(60) + x(59) + x(109) ))))) + (-1)*(1)* (compartment_membrane*kdeg_p* x(26) ) + (1)*(1)* (compartment_membrane*((( 4 )*kon16_p* x(14) * x(20) )-(koff16_p*( x(48) /( x(48) + x(56) + x(55) + x(77) +eps_p))* x(26) ))) + (1)*(1)* (compartment_membrane*((( 3 )*kon19_p* x(15) * x(20) )-(koff19_p*( x(48) /( x(48) + x(56) + x(55) + x(77) +eps_p))* x(29) ))) + (1)*(1)* (compartment_membrane*((( 3 )*kon22_p* x(16) * x(20) )-(koff22_p*( x(48) /( x(48) + x(56) + x(55) + x(77) +eps_p))* x(32) ))) + (1)*(1)* (compartment_membrane*((( 4 )*kon26_p* x(17) * x(20) )-(koff26_p*( x(48) /( x(48) + x(56) + x(55) + x(77) +eps_p))* x(36) ))) + (1)*(1)* (compartment_membrane*((( 3 )*kon30_p* x(18) * x(20) )-(koff30_p*( x(48) /( x(48) + x(56) + x(55) + x(77) +eps_p))* x(40) ))) + (1)*(1)* (compartment_membrane*((( 4 )*kon34_p* x(19) * x(20) )-(koff34_p*( x(48) /( x(48) + x(56) + x(55) + x(77) +eps_p))* x(44) ))) + (1)*(1)* (compartment_membrane*((kon42_p* x(53) * x(20) )-(koff42_p* x(57) *( x(48) /( x(48) + x(56) + x(55) + x(77) +eps_p))))) + (1)*(1)* (compartment_membrane*((( 4 )*kon65_p* x(83) * x(20) )-(koff65_p*( x(48) /( x(48) + x(56) + x(55) + x(77) +eps_p))* x(85) ))) + (1)*(1)* (compartment_membrane*((( 4 )*kon69_p* x(84) * x(20) )-(koff69_p*( x(48) /( x(48) + x(56) + x(55) + x(77) +eps_p))* x(89) ))) );
	
//x(49)   ID: SigS  initialValue: 0
	(1/compartment_membrane)*( (-1)*(1)* (compartment_membrane*(((kf38_p* x(49) *( x(14) + x(15) + x(16) + x(18) + x(17) + x(19) + x(83) + x(84) ))-((VmaxPY_p* x(53) )/(KmPY_p+ x(53) )))-(kPTP38_p* x(102) * x(53) ))) + (-1)*(1)* (compartment_membrane*kdeg_p* x(27) ) + (1)*(1)* (compartment_membrane*((( 8 )*kon17_p* x(14) * x(21) )-(koff17_p*( x(49) /( x(49) + x(53) + x(57) +eps_p))* x(27) ))) + (1)*(1)* (compartment_membrane*((( 6 )*kon20_p* x(15) * x(21) )-(koff20_p*( x(49) /( x(49) + x(53) + x(57) +eps_p))* x(30) ))) + (1)*(1)* (compartment_membrane*((( 3 )*kon23_p* x(16) * x(21) )-(koff23_p*( x(49) /( x(49) + x(53) + x(57) +eps_p))* x(33) ))) + (1)*(1)* (compartment_membrane*((( 3 )*kon27_p* x(17) * x(21) )-(koff27_p*( x(49) /( x(49) + x(53) + x(57) +eps_p))* x(37) ))) + (1)*(1)* (compartment_membrane*((( 4 )*kon31_p* x(18) * x(21) )-(koff31_p*( x(49) /( x(49) + x(53) + x(57) +eps_p))* x(41) ))) + (1)*(1)* (compartment_membrane*((( 4 )*kon35_p* x(19) * x(21) )-(koff35_p*( x(49) /( x(49) + x(53) + x(57) +eps_p))* x(45) ))) + (1)*(1)* (compartment_membrane*((( 3 )*kon43_p* x(54) * x(21) )-(koff43_p* x(58) *( x(49) /( x(49) + x(53) + x(57) +eps_p))))) + (1)*(1)* (compartment_membrane*((( 5 )*kon66_p* x(83) * x(21) )-(koff66_p*( x(49) /( x(49) + x(53) + x(57) +eps_p))* x(86) ))) + (1)*(1)* (compartment_membrane*((( 6 )*kon70_p* x(84) * x(21) )-(koff70_p*( x(49) /( x(49) + x(53) + x(57) +eps_p))* x(90) ))) );
	
//x(50)   ID: SigI  initialValue: 0
	(1/compartment_membrane)*( (1)*(1)* (compartment_membrane*((( 3 )*kon24_p* x(16) * x(22) )-(koff24_p* x(34) ))) + (1)*(1)* (compartment_membrane*((( 4 )*kon28_p* x(17) * x(22) )-(koff28_p* x(38) ))) + (1)*(1)* (compartment_membrane*((( 1 )*kon32_p* x(18) * x(22) )-(koff32_p* x(42) ))) + (1)*(1)* (compartment_membrane*((( 2 )*kon36_p* x(19) * x(22) )-(koff36_p* x(46) ))) + (1)*(1)* (compartment_membrane*((( 3 )*kon44_p* x(54) * x(22) )-(koff44_p* x(59) ))) + (1)*(1)* (compartment_membrane*((( 3 )*kon67_p* x(83) * x(22) )-(koff67_p* x(87) ))) + (1)*(1)* (compartment_membrane*((( 1 )*kon71_p* x(84) * x(22) )-(koff71_p* x(91) ))) );
	
//x(51)   ID: SigR  initialValue: 0
	(1/compartment_membrane)*( (-1)*(1)* (compartment_membrane*(((kf50_p* x(51) *( x(14) + x(15) + x(16) + x(18) + x(17) + x(19) + x(83) + x(84) ))-((VmaxPY_p* x(68) )/(KmPY_p+ x(68) )))-(kPTP50_p* x(102) * x(68) ))) + (-1)*(1)* (compartment_membrane*kdeg_p* x(28) ) + (1)*(1)* (compartment_membrane*((( 2 )*kon18_p* x(14) * x(23) )-(koff18_p*( x(51) /( x(51) + x(68) +eps_p))* x(28) ))) + (1)*(1)* (compartment_membrane*((( 2 )*kon21_p* x(15) * x(23) )-(koff21_p*( x(51) /( x(51) + x(68) +eps_p))* x(31) ))) + (1)*(1)* (compartment_membrane*((( 2 )*kon25_p* x(16) * x(23) )-(koff25_p*( x(51) /( x(51) + x(68) +eps_p))* x(35) ))) + (1)*(1)* (compartment_membrane*((( 2 )*kon29_p* x(17) * x(23) )-(koff29_p*( x(51) /( x(51) + x(68) +eps_p))* x(39) ))) + (1)*(1)* (compartment_membrane*((( 2 )*kon33_p* x(18) * x(23) )-(koff33_p*( x(51) /( x(51) + x(68) +eps_p))* x(43) ))) + (1)*(1)* (compartment_membrane*((( 2 )*kon37_p* x(19) * x(23) )-(koff37_p*( x(51) /( x(51) + x(68) +eps_p))* x(47) ))) + (1)*(1)* (compartment_membrane*((( 2 )*kon45_p* x(54) * x(23) )-(koff45_p* x(60) *( x(51) /( x(51) + x(68) +eps_p))))) + (1)*(1)* (compartment_membrane*((( 2 )*kon68_p* x(83) * x(23) )-(koff68_p*( x(51) /( x(51) + x(68) +eps_p))* x(88) ))) + (1)*(1)* (compartment_membrane*((( 2 )*kon72_p* x(84) * x(23) )-(koff72_p*( x(51) /( x(51) + x(68) +eps_p))* x(92) ))) );
	
//x(52)   ID: SigA  initialValue: 0
	(1/compartment_membrane)*( (-1)*(1)* (compartment_membrane*(((kf39_p* x(52) *( x(14) + x(15) + x(16) + x(18) + x(17) + x(19) + x(83) + x(84) ))-((VmaxPY_p* x(54) )/(KmPY_p+ x(54) )))-(kPTP39_p* x(102) * x(54) ))) + (1)*(1)* (compartment_membrane*((kon41_p* x(48) * x(25) )-(koff41_p* x(56) *( x(52) /(eps_p+ x(52) + x(54) + x(58) + x(60) + x(59) + x(109) ))))) + (1)*(1)* (compartment_membrane*((kon46_p* x(64) * x(25) )-(koff46_p* x(62) *( x(52) /(eps_p+ x(52) + x(54) + x(58) + x(60) + x(59) + x(109) ))))) + (1)*(1)* (compartment_membrane*((kon59_p* x(55) * x(25) )-(koff59_p* x(77) *( x(52) /(eps_p+ x(52) + x(54) + x(58) + x(60) + x(59) + x(109) ))))) );
	
//x(53)   ID: SigSP  initialValue: 0
	(1/compartment_membrane)*( (-1)*(1)* (compartment_membrane*((kon42_p* x(53) * x(20) )-(koff42_p* x(57) *( x(48) /( x(48) + x(56) + x(55) + x(77) +eps_p))))) + (1)*(1)* (compartment_membrane*(((kf38_p* x(49) *( x(14) + x(15) + x(16) + x(18) + x(17) + x(19) + x(83) + x(84) ))-((VmaxPY_p* x(53) )/(KmPY_p+ x(53) )))-(kPTP38_p* x(102) * x(53) ))) );
	
//x(54)   ID: SigAP  initialValue: 0
	(1/compartment_membrane)*( (-1)*(1)* (compartment_membrane*((( 3 )*kon43_p* x(54) * x(21) )-(koff43_p* x(58) *( x(49) /( x(49) + x(53) + x(57) +eps_p))))) + (-1)*(1)* (compartment_membrane*((( 3 )*kon44_p* x(54) * x(22) )-(koff44_p* x(59) ))) + (-1)*(1)* (compartment_membrane*((( 2 )*kon45_p* x(54) * x(23) )-(koff45_p* x(60) *( x(51) /( x(51) + x(68) +eps_p))))) + (-1)*(1)* (compartment_membrane*((( 2 )*kon88_p* x(54) * x(93) )-(koff88_p* x(109) ))) + (1)*(1)* (compartment_membrane*(((kf39_p* x(52) *( x(14) + x(15) + x(16) + x(18) + x(17) + x(19) + x(83) + x(84) ))-((VmaxPY_p* x(54) )/(KmPY_p+ x(54) )))-(kPTP39_p* x(102) * x(54) ))) );
	
//x(55)   ID: SigG_O  initialValue: 0
	(1/compartment_membrane)*( (-1)*(1)* (compartment_membrane*((kon59_p* x(55) * x(25) )-(koff59_p* x(77) *( x(52) /(eps_p+ x(52) + x(54) + x(58) + x(60) + x(59) + x(109) ))))) + (1)*(1)* (compartment_membrane*((kon40_p* x(48) * x(24) )-(koff40_p* x(55) ))) );
	
//x(56)   ID: SigG_A  initialValue: 0
	(1/compartment_membrane)*( (-1)*(1)* (compartment_membrane*((kon60_p* x(56) * x(24) )-(koff60_p* x(77) ))) + (1)*(1)* (compartment_membrane*((kon41_p* x(48) * x(25) )-(koff41_p* x(56) *( x(52) /(eps_p+ x(52) + x(54) + x(58) + x(60) + x(59) + x(109) ))))) );
	
//x(57)   ID: SigSP_G  initialValue: 0
	(1/compartment_membrane)*( (1)*(1)* (compartment_membrane*((kon42_p* x(53) * x(20) )-(koff42_p* x(57) *( x(48) /( x(48) + x(56) + x(55) + x(77) +eps_p))))) );
	
//x(58)   ID: SigAP_S  initialValue: 0
	(1/compartment_membrane)*( (1)*(1)* (compartment_membrane*((( 3 )*kon43_p* x(54) * x(21) )-(koff43_p* x(58) *( x(49) /( x(49) + x(53) + x(57) +eps_p))))) );
	
//x(59)   ID: SigAP_I  initialValue: 0
	(1/compartment_membrane)*( (1)*(1)* (compartment_membrane*((( 3 )*kon44_p* x(54) * x(22) )-(koff44_p* x(59) ))) );
	
//x(60)   ID: SigAP_R  initialValue: 0
	(1/compartment_membrane)*( (1)*(1)* (compartment_membrane*((( 2 )*kon45_p* x(54) * x(23) )-(koff45_p* x(60) *( x(51) /( x(51) + x(68) +eps_p))))) );
	
//x(61)   ID: Empty  initialValue: 0
	(1/compartment_membrane)*( (-1)*(1)* (compartment_membrane*a98_p*(( x(112) )+b98_p)) + (1)*(1)* (compartment_membrane*kdeg_p* x(14) ) + (1)*(1)* (compartment_membrane*(((((kon1_p* x(110) * x(1) )-(EGF_off_p* x(5) ))+(kon86_p* x(110) * x(103) ))-(EGF_off_p* x(106) ))/VeVc_p)) + (1)*(1)* (compartment_membrane*(((((((kon87_p* x(111) * x(105) )-(HRGoff_4_p* x(107) ))+(kon2_p* x(111) * x(3) ))-(HRGoff_3_p* x(6) ))+(kon3_p* x(111) * x(4) ))-(HRGoff_4_p* x(7) ))/VeVc_p)) );
	
//x(62)   ID: P3_A  initialValue: 0
	(1/compartment_membrane)*( (-1)*(1)* (compartment_membrane*((kon57_p* x(62) * x(20) )-(koff57_p* x(78) ))) + (1)*(1)* (compartment_membrane*((kon46_p* x(64) * x(25) )-(koff46_p* x(62) *( x(52) /(eps_p+ x(52) + x(54) + x(58) + x(60) + x(59) + x(109) ))))) );
	
//x(63)   ID: P2  initialValue: 197
	(1/compartment_membrane)*( (-1)*(1)* (compartment_membrane*(((kf48_p*(( 1 )-( x(112) *( x(14) /( x(14) + x(15) + x(16) + x(18) + x(17) + x(19) + x(83) + x(84) +eps_p))))* x(50) * x(63) )/(Kmf48_p+ x(63) ))-((( 3 )*PTEN_p* x(64) )/(Kmr48_p+ x(64) )))) );
	
//x(64)   ID: P3  initialValue: 0
	(1/compartment_membrane)*( (-1)*(1)* (compartment_membrane*((kon46_p* x(64) * x(25) )-(koff46_p* x(62) *( x(52) /(eps_p+ x(52) + x(54) + x(58) + x(60) + x(59) + x(109) ))))) + (1)*(1)* (compartment_membrane*(((kf48_p*(( 1 )-( x(112) *( x(14) /( x(14) + x(15) + x(16) + x(18) + x(17) + x(19) + x(83) + x(84) +eps_p))))* x(50) * x(63) )/(Kmf48_p+ x(63) ))-((( 3 )*PTEN_p* x(64) )/(Kmr48_p+ x(64) )))) );
	
//x(65)   ID: Akt  initialValue: 444
	(1/compartment_membrane)*( (-1)*(1)* (compartment_membrane*(((kf47_p* x(64) * x(65) )/(Kmf47_p+ x(65) ))-((Vmaxr47_p* x(108) )/(Kmr47_p+ x(108) )))) );
	
//x(66)   ID: RsD  initialValue: 95.7
	(1/compartment_membrane)*( (-1)*(1)* (compartment_membrane*(((((kf49_p* x(80) * x(66) )/(Kmf49_p+ x(66) ))-((kr49_p* x(51) * x(67) )/(Kmr49_p+ x(67) )))-((kr49b_p* x(68) * x(67) )/(Kmr49b_p+ x(67) )))-(kcon49_p* x(67) ))) );
	
//x(67)   ID: RsT  initialValue: 0
	(1/compartment_membrane)*( (1)*(1)* (compartment_membrane*(((((kf49_p* x(80) * x(66) )/(Kmf49_p+ x(66) ))-((kr49_p* x(51) * x(67) )/(Kmr49_p+ x(67) )))-((kr49b_p* x(68) * x(67) )/(Kmr49b_p+ x(67) )))-(kcon49_p* x(67) ))) );
	
//x(68)   ID: SigRP  initialValue: 0
	(1/compartment_membrane)*( (1)*(1)* (compartment_membrane*(((kf50_p* x(51) *( x(14) + x(15) + x(16) + x(18) + x(17) + x(19) + x(83) + x(84) ))-((VmaxPY_p* x(68) )/(KmPY_p+ x(68) )))-(kPTP50_p* x(102) * x(68) ))) );
	
//x(69)   ID: Raf  initialValue: 743
	(1/compartment_membrane)*( (-1)*(1)* (compartment_membrane*(((kf51_p* x(67) * x(69) )/(Kmf51_p+ x(69) ))-((Vmaxr51_p* x(70) )/(Kmrb51_p+ x(70) )))) );
	
//x(70)   ID: Rafstar  initialValue: 0
	(1/compartment_membrane)*( (1)*(1)* (compartment_membrane*(((kf51_p* x(67) * x(69) )/(Kmf51_p+ x(69) ))-((Vmaxr51_p* x(70) )/(Kmrb51_p+ x(70) )))) );
	
//x(71)   ID: MEK  initialValue: 772
	(1/compartment_membrane)*( (-1)*(1)* (compartment_membrane*(((kf52_p* x(70) * x(71) )/(Kmf52_p+ x(71) ))-((Vmaxr52_p* x(72) )/(Kmr52_p+ x(72) )))) );
	
//x(72)   ID: MEKstar  initialValue: 0
	(1/compartment_membrane)*( (-1)*(1)* (compartment_membrane*((kon89_p* x(73) * x(72) )-(koff89_p* x(114) ))) + (-1)*(1)* (compartment_membrane*((kon91_p* x(113) * x(72) )-(koff91_p* x(115) ))) + (1)*(1)* (compartment_membrane*(((kf52_p* x(70) * x(71) )/(Kmf52_p+ x(71) ))-((Vmaxr52_p* x(72) )/(Kmr52_p+ x(72) )))) + (1)*(1)* (compartment_membrane*kcat90_p* x(114) ) + (1)*(1)* (compartment_membrane*kcat92_p* x(115) ) );
	
//x(73)   ID: ERK  initialValue: 750
	(1/compartment_membrane)*( (-1)*(1)* (compartment_membrane*((kon89_p* x(73) * x(72) )-(koff89_p* x(114) ))) + (1)*(1)* (compartment_membrane*kcat96_p* x(116) ) );
	
//x(74)   ID: ERKstar  initialValue: 0
	(1/compartment_membrane)*( (-1)*(1)* (compartment_membrane*((kon93_p* x(74) * x(117) )-(koff93_p* x(118) ))) + (1)*(1)* (compartment_membrane*kcat92_p* x(115) ) );
	
//x(75)   ID: OP  initialValue: 0
	(1/compartment_membrane)*( (1)*(1)* (compartment_membrane*(((kf54_p* x(24) * x(74) )/(Kmf54_p+ x(24) ))-((Vmaxr54_p* x(75) )/(Kmr54_p+ x(75) )))) );
	
//x(76)   ID: AP  initialValue: 0
	(1/compartment_membrane)*( (1)*(1)* (compartment_membrane*(((kf55_p* x(25) * x(74) )/(Kmf55_p+ x(25) ))-((Vmaxr55_p* x(76) )/(Kmr55_p+ x(76) )))) );
	
//x(77)   ID: A_SigG_O  initialValue: 0
	(1/compartment_membrane)*( (1)*(1)* (compartment_membrane*((kon59_p* x(55) * x(25) )-(koff59_p* x(77) *( x(52) /(eps_p+ x(52) + x(54) + x(58) + x(60) + x(59) + x(109) ))))) + (1)*(1)* (compartment_membrane*((kon60_p* x(56) * x(24) )-(koff60_p* x(77) ))) );
	
//x(78)   ID: SigA_G  initialValue: 0
	(1/compartment_membrane)*( (-1)*(1)* (compartment_membrane*((kon58_p* x(78) * x(24) )-(koff58_p* x(79) ))) + (1)*(1)* (compartment_membrane*((kon57_p* x(62) * x(20) )-(koff57_p* x(78) ))) );
	
//x(79)   ID: SigA_G_O  initialValue: 0
	(1/compartment_membrane)*( (1)*(1)* (compartment_membrane*((kon58_p* x(78) * x(24) )-(koff58_p* x(79) ))) );
	
//x(80)   ID: SigO  initialValue: 0
	(1/compartment_membrane)*( (1)*(1)* (compartment_membrane*((kon40_p* x(48) * x(24) )-(koff40_p* x(55) ))) + (1)*(1)* (compartment_membrane*((kon58_p* x(78) * x(24) )-(koff58_p* x(79) ))) + (1)*(1)* (compartment_membrane*((kon60_p* x(56) * x(24) )-(koff60_p* x(77) ))) );
	
//x(81)   ID: E13  initialValue: 0
	(1/compartment_membrane)*( (-1)*(1)* (compartment_membrane*(((kf63_p* x(81) )-((VmaxPY_p* x(83) )/(KmPY_p+ x(83) )))-(kPTP63_p* x(102) * x(83) ))) + (1)*(1)* (compartment_membrane*((kon61_p* x(6) * x(5) )-(koff61_p* x(81) ))) );
	
//x(82)   ID: E14  initialValue: 0
	(1/compartment_membrane)*( (-1)*(1)* (compartment_membrane*(((kf64_p* x(82) )-((VmaxPY_p* x(84) )/(KmPY_p+ x(84) )))-(kPTP64_p* x(102) * x(84) ))) + (1)*(1)* (compartment_membrane*((kon62_p* x(7) * x(5) )-(koff62_p* x(82) ))) );
	
//x(83)   ID: E13P  initialValue: 0
	(1/compartment_membrane)*( (-1)*(1)* (compartment_membrane*((( 4 )*kon65_p* x(83) * x(20) )-(koff65_p*( x(48) /( x(48) + x(56) + x(55) + x(77) +eps_p))* x(85) ))) + (-1)*(1)* (compartment_membrane*((( 5 )*kon66_p* x(83) * x(21) )-(koff66_p*( x(49) /( x(49) + x(53) + x(57) +eps_p))* x(86) ))) + (-1)*(1)* (compartment_membrane*((( 3 )*kon67_p* x(83) * x(22) )-(koff67_p* x(87) ))) + (-1)*(1)* (compartment_membrane*((( 2 )*kon68_p* x(83) * x(23) )-(koff68_p*( x(51) /( x(51) + x(68) +eps_p))* x(88) ))) + (-1)*(1)* (compartment_membrane*((( 3 )*kon79_p* x(83) * x(93) )-(koff79_p* x(100) ))) + (1)*(1)* (compartment_membrane*(((kf63_p* x(81) )-((VmaxPY_p* x(83) )/(KmPY_p+ x(83) )))-(kPTP63_p* x(102) * x(83) ))) );
	
//x(84)   ID: E14P  initialValue: 0
	(1/compartment_membrane)*( (-1)*(1)* (compartment_membrane*((( 4 )*kon69_p* x(84) * x(20) )-(koff69_p*( x(48) /( x(48) + x(56) + x(55) + x(77) +eps_p))* x(89) ))) + (-1)*(1)* (compartment_membrane*((( 6 )*kon70_p* x(84) * x(21) )-(koff70_p*( x(49) /( x(49) + x(53) + x(57) +eps_p))* x(90) ))) + (-1)*(1)* (compartment_membrane*((( 1 )*kon71_p* x(84) * x(22) )-(koff71_p* x(91) ))) + (-1)*(1)* (compartment_membrane*((( 2 )*kon72_p* x(84) * x(23) )-(koff72_p*( x(51) /( x(51) + x(68) +eps_p))* x(92) ))) + (-1)*(1)* (compartment_membrane*((( 3 )*kon80_p* x(84) * x(93) )-(koff80_p* x(101) ))) + (1)*(1)* (compartment_membrane*(((kf64_p* x(82) )-((VmaxPY_p* x(84) )/(KmPY_p+ x(84) )))-(kPTP64_p* x(102) * x(84) ))) );
	
//x(85)   ID: E13G  initialValue: 0
	(1/compartment_membrane)*( (1)*(1)* (compartment_membrane*((( 4 )*kon65_p* x(83) * x(20) )-(koff65_p*( x(48) /( x(48) + x(56) + x(55) + x(77) +eps_p))* x(85) ))) );
	
//x(86)   ID: E13S  initialValue: 0
	(1/compartment_membrane)*( (1)*(1)* (compartment_membrane*((( 5 )*kon66_p* x(83) * x(21) )-(koff66_p*( x(49) /( x(49) + x(53) + x(57) +eps_p))* x(86) ))) );
	
//x(87)   ID: E13I  initialValue: 0
	(1/compartment_membrane)*( (1)*(1)* (compartment_membrane*((( 3 )*kon67_p* x(83) * x(22) )-(koff67_p* x(87) ))) );
	
//x(88)   ID: E13R  initialValue: 0
	(1/compartment_membrane)*( (1)*(1)* (compartment_membrane*((( 2 )*kon68_p* x(83) * x(23) )-(koff68_p*( x(51) /( x(51) + x(68) +eps_p))* x(88) ))) );
	
//x(89)   ID: E14G  initialValue: 0
	(1/compartment_membrane)*( (1)*(1)* (compartment_membrane*((( 4 )*kon69_p* x(84) * x(20) )-(koff69_p*( x(48) /( x(48) + x(56) + x(55) + x(77) +eps_p))* x(89) ))) );
	
//x(90)   ID: E14S  initialValue: 0
	(1/compartment_membrane)*( (1)*(1)* (compartment_membrane*((( 6 )*kon70_p* x(84) * x(21) )-(koff70_p*( x(49) /( x(49) + x(53) + x(57) +eps_p))* x(90) ))) );
	
//x(91)   ID: E14I  initialValue: 0
	(1/compartment_membrane)*( (1)*(1)* (compartment_membrane*((( 1 )*kon71_p* x(84) * x(22) )-(koff71_p* x(91) ))) );
	
//x(92)   ID: E14R  initialValue: 0
	(1/compartment_membrane)*( (1)*(1)* (compartment_membrane*((( 2 )*kon72_p* x(84) * x(23) )-(koff72_p*( x(51) /( x(51) + x(68) +eps_p))* x(92) ))) );
	
//x(93)   ID: T  initialValue: 500
	(1/compartment_membrane)*( (-1)*(1)* (compartment_membrane*((( 4 )*kon73_p* x(14) * x(93) )-(koff73_p* x(94) ))) + (-1)*(1)* (compartment_membrane*((( 3 )*kon74_p* x(15) * x(93) )-(koff74_p* x(95) ))) + (-1)*(1)* (compartment_membrane*((( 2 )*kon75_p* x(16) * x(93) )-(koff75_p* x(96) ))) + (-1)*(1)* (compartment_membrane*((( 2 )*kon76_p* x(17) * x(93) )-(koff76_p* x(97) ))) + (-1)*(1)* (compartment_membrane*((( 2 )*kon77_p* x(18) * x(93) )-(koff77_p* x(98) ))) + (-1)*(1)* (compartment_membrane*((( 2 )*kon78_p* x(19) * x(93) )-(koff78_p* x(99) ))) + (-1)*(1)* (compartment_membrane*((( 3 )*kon79_p* x(83) * x(93) )-(koff79_p* x(100) ))) + (-1)*(1)* (compartment_membrane*((( 3 )*kon80_p* x(84) * x(93) )-(koff80_p* x(101) ))) + (-1)*(1)* (compartment_membrane*((( 2 )*kon88_p* x(54) * x(93) )-(koff88_p* x(109) ))) + (1)*(1)* (compartment_membrane*kdeg_p* x(94) ) );
	
//x(94)   ID: E11T  initialValue: 0
	(1/compartment_membrane)*( (-1)*(1)* (compartment_membrane*kdeg_p* x(94) ) + (1)*(1)* (compartment_membrane*((( 4 )*kon73_p* x(14) * x(93) )-(koff73_p* x(94) ))) );
	
//x(95)   ID: E12T  initialValue: 0
	(1/compartment_membrane)*( (1)*(1)* (compartment_membrane*((( 3 )*kon74_p* x(15) * x(93) )-(koff74_p* x(95) ))) );
	
//x(96)   ID: E23T  initialValue: 0
	(1/compartment_membrane)*( (1)*(1)* (compartment_membrane*((( 2 )*kon75_p* x(16) * x(93) )-(koff75_p* x(96) ))) );
	
//x(97)   ID: E34T  initialValue: 0
	(1/compartment_membrane)*( (1)*(1)* (compartment_membrane*((( 2 )*kon76_p* x(17) * x(93) )-(koff76_p* x(97) ))) );
	
//x(98)   ID: E24T  initialValue: 0
	(1/compartment_membrane)*( (1)*(1)* (compartment_membrane*((( 2 )*kon77_p* x(18) * x(93) )-(koff77_p* x(98) ))) );
	
//x(99)   ID: E44T  initialValue: 0
	(1/compartment_membrane)*( (1)*(1)* (compartment_membrane*((( 2 )*kon78_p* x(19) * x(93) )-(koff78_p* x(99) ))) );
	
//x(100)   ID: E13T  initialValue: 0
	(1/compartment_membrane)*( (1)*(1)* (compartment_membrane*((( 3 )*kon79_p* x(83) * x(93) )-(koff79_p* x(100) ))) );
	
//x(101)   ID: E14T  initialValue: 0
	(1/compartment_membrane)*( (1)*(1)* (compartment_membrane*((( 3 )*kon80_p* x(84) * x(93) )-(koff80_p* x(101) ))) );
	
//x(102)   ID: SigT  initialValue: 0
	(1/compartment_membrane)*( (-1)*(1)* (compartment_membrane*kdeg_p* x(94) ) + (1)*(1)* (compartment_membrane*((( 4 )*kon73_p* x(14) * x(93) )-(koff73_p* x(94) ))) + (1)*(1)* (compartment_membrane*((( 3 )*kon74_p* x(15) * x(93) )-(koff74_p* x(95) ))) + (1)*(1)* (compartment_membrane*((( 2 )*kon75_p* x(16) * x(93) )-(koff75_p* x(96) ))) + (1)*(1)* (compartment_membrane*((( 2 )*kon76_p* x(17) * x(93) )-(koff76_p* x(97) ))) + (1)*(1)* (compartment_membrane*((( 2 )*kon77_p* x(18) * x(93) )-(koff77_p* x(98) ))) + (1)*(1)* (compartment_membrane*((( 2 )*kon78_p* x(19) * x(93) )-(koff78_p* x(99) ))) + (1)*(1)* (compartment_membrane*((( 3 )*kon79_p* x(83) * x(93) )-(koff79_p* x(100) ))) + (1)*(1)* (compartment_membrane*((( 3 )*kon80_p* x(84) * x(93) )-(koff80_p* x(101) ))) + (1)*(1)* (compartment_membrane*((( 2 )*kon88_p* x(54) * x(93) )-(koff88_p* x(109) ))) );
	
//x(103)   ID: E1_PT  initialValue: 0
	(1/compartment_membrane)*( (-1)*(1)* (compartment_membrane*((kon86_p* x(110) * x(103) )-(EGF_off_p* x(106) ))) + (1)*(1)* (compartment_membrane*(((kf81_p* x(1) * x(74) )/(Kmf81_p+ x(1) ))-((Vmaxr81_p* x(103) )/(Kmr81_p+ x(103) )))) );
	
//x(104)   ID: E2_PT  initialValue: 0
	(1/compartment_membrane)*( (1)*(1)* (compartment_membrane*(((kf82_p* x(2) * x(74) )/(Kmf82_p+ x(2) ))-((Vmaxr82_p* x(104) )/(Kmr82_p+ x(104) )))) );
	
//x(105)   ID: E4_PT  initialValue: 0
	(1/compartment_membrane)*( (-1)*(1)* (compartment_membrane*((kon87_p* x(111) * x(105) )-(HRGoff_4_p* x(107) ))) + (1)*(1)* (compartment_membrane*(((kf83_p* x(4) * x(74) )/(Kmf83_p+ x(4) ))-((Vmaxr83_p* x(105) )/(Kmr83_p+ x(105) )))) );
	
//x(106)   ID: E_E1_PT  initialValue: 0
	(1/compartment_membrane)*( (1)*(1)* (compartment_membrane*(((kf84_p* x(5) * x(74) )/(Kmf84_p+ x(5) ))-((Vmaxr84_p* x(106) )/(Kmr84_p+ x(106) )))) + (1)*(1)* (compartment_membrane*((kon86_p* x(110) * x(103) )-(EGF_off_p* x(106) ))) );
	
//x(107)   ID: H_E4_PT  initialValue: 0
	(1/compartment_membrane)*( (1)*(1)* (compartment_membrane*(((kf85_p* x(7) * x(74) )/(Kmf85_p+ x(7) ))-((Vmaxr85_p* x(107) )/(Kmr85_p+ x(107) )))) + (1)*(1)* (compartment_membrane*((kon87_p* x(111) * x(105) )-(HRGoff_4_p* x(107) ))) );
	
//x(108)   ID: Aktstar  initialValue: 0
	(1/compartment_membrane)*( (1)*(1)* (compartment_membrane*(((kf47_p* x(64) * x(65) )/(Kmf47_p+ x(65) ))-((Vmaxr47_p* x(108) )/(Kmr47_p+ x(108) )))) );
	
//x(109)   ID: SigAP_T  initialValue: 0
	(1/compartment_membrane)*( (1)*(1)* (compartment_membrane*((( 2 )*kon88_p* x(54) * x(93) )-(koff88_p* x(109) ))) );
	
//x(110)   ID: E  initialValue: 10
	(1/compartment_membrane)*( (-1)*(1)* (compartment_membrane*(((((kon1_p* x(110) * x(1) )-(EGF_off_p* x(5) ))+(kon86_p* x(110) * x(103) ))-(EGF_off_p* x(106) ))/VeVc_p)) );
	
//x(111)   ID: H  initialValue: 10
	(1/compartment_membrane)*( (-1)*(1)* (compartment_membrane*(((((((kon87_p* x(111) * x(105) )-(HRGoff_4_p* x(107) ))+(kon2_p* x(111) * x(3) ))-(HRGoff_3_p* x(6) ))+(kon3_p* x(111) * x(4) ))-(HRGoff_4_p* x(7) ))/VeVc_p)) );
	
//x(112)   ID: fint  initialValue: 0
	(1/compartment_membrane)*( (1)*(1)* (compartment_membrane*a98_p*(( x(112) )+b98_p)) );
	
//x(113)   ID: pERK  initialValue: 0
	(1/compartment_membrane)*( (-1)*(1)* (compartment_membrane*((kon91_p* x(113) * x(72) )-(koff91_p* x(115) ))) + (-1)*(1)* (compartment_membrane*((kon95_p* x(113) * x(117) )-(koff95_p* x(116) ))) + (1)*(1)* (compartment_membrane*kcat90_p* x(114) ) + (1)*(1)* (compartment_membrane*kcat94_p* x(118) ) );
	
//x(114)   ID: ERK_MEKstar  initialValue: 0
	(1/compartment_membrane)*( (-1)*(1)* (compartment_membrane*kcat90_p* x(114) ) + (1)*(1)* (compartment_membrane*((kon89_p* x(73) * x(72) )-(koff89_p* x(114) ))) );
	
//x(115)   ID: pERK_MEKstar  initialValue: 0
	(1/compartment_membrane)*( (-1)*(1)* (compartment_membrane*kcat92_p* x(115) ) + (1)*(1)* (compartment_membrane*((kon91_p* x(113) * x(72) )-(koff91_p* x(115) ))) );
	
//x(116)   ID: pERK_ERKpase  initialValue: 0
	(1/compartment_membrane)*( (-1)*(1)* (compartment_membrane*kcat96_p* x(116) ) + (1)*(1)* (compartment_membrane*((kon95_p* x(113) * x(117) )-(koff95_p* x(116) ))) );
	
//x(117)   ID: ERKpase  initialValue: 0
	(1/compartment_membrane)*( (-1)*(1)* (compartment_membrane*((kon93_p* x(74) * x(117) )-(koff93_p* x(118) ))) + (-1)*(1)* (compartment_membrane*((kon95_p* x(113) * x(117) )-(koff95_p* x(116) ))) + (1)*(1)* (compartment_membrane*kcat94_p* x(118) ) + (1)*(1)* (compartment_membrane*kcat96_p* x(116) ) );
	
//x(118)   ID: ERKstar_ERKpase  initialValue: 35
	(1/compartment_membrane)*( (-1)*(1)* (compartment_membrane*kcat94_p* x(118) ) + (1)*(1)* (compartment_membrane*((kon93_p* x(74) * x(117) )-(koff93_p* x(118) ))) )
	];


	
endfunction
        x0=[274;158;294;399;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;82.4;11.5;46.4;93.6;82.3;43.1;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;197;0;444;95.7;0;0;743;0;772;0;750;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;500;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;10;10;0;0;0;0;0;0;35];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)' 'x(14)' 'x(15)' 'x(16)' 'x(17)' 'x(18)' 'x(19)' 'x(20)' 'x(21)' 'x(22)' 'x(23)' 'x(24)' 'x(25)' 'x(26)' 'x(27)' 'x(28)' 'x(29)' 'x(30)' 'x(31)' 'x(32)' 'x(33)' 'x(34)' 'x(35)' 'x(36)' 'x(37)' 'x(38)' 'x(39)' 'x(40)' 'x(41)' 'x(42)' 'x(43)' 'x(44)' 'x(45)' 'x(46)' 'x(47)' 'x(48)' 'x(49)' 'x(50)' 'x(51)' 'x(52)' 'x(53)' 'x(54)' 'x(55)' 'x(56)' 'x(57)' 'x(58)' 'x(59)' 'x(60)' 'x(61)' 'x(62)' 'x(63)' 'x(64)' 'x(65)' 'x(66)' 'x(67)' 'x(68)' 'x(69)' 'x(70)' 'x(71)' 'x(72)' 'x(73)' 'x(74)' 'x(75)' 'x(76)' 'x(77)' 'x(78)' 'x(79)' 'x(80)' 'x(81)' 'x(82)' 'x(83)' 'x(84)' 'x(85)' 'x(86)' 'x(87)' 'x(88)' 'x(89)' 'x(90)' 'x(91)' 'x(92)' 'x(93)' 'x(94)' 'x(95)' 'x(96)' 'x(97)' 'x(98)' 'x(99)' 'x(100)' 'x(101)' 'x(102)' 'x(103)' 'x(104)' 'x(105)' 'x(106)' 'x(107)' 'x(108)' 'x(109)' 'x(110)' 'x(111)' 'x(112)' 'x(113)' 'x(114)' 'x(115)' 'x(116)' 'x(117)' 'x(118)'],[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18;19;20;21;22;23;24;25;26;27;28;29;30;31;32;33;34;35;36;37;38;39;40;41;42;43;44;45;46;47;48;49;50;51;52;53;54;55;56;57;58;59;60;61;62;63;64;65;66;67;68;69;70;71;72;73;74;75;76;77;78;79;80;81;82;83;84;85;86;87;88;89;90;91;92;93;94;95;96;97;98;99;100;101;102;103;104;105;106;107;108;109;110;111;112;113;114;115;116;117;118])

//real_variable:
	
	
//x(1)   id: E1  initialValue: 274
	
//x(2)   id: E2  initialValue: 158
	
//x(3)   id: E3  initialValue: 294
	
//x(4)   id: E4  initialValue: 399
	
//x(5)   id: E_E1  initialValue: 0
	
//x(6)   id: H_E3  initialValue: 0
	
//x(7)   id: H_E4  initialValue: 0
	
//x(8)   id: E11  initialValue: 0
	
//x(9)   id: E12  initialValue: 0
	
//x(10)   id: E23  initialValue: 0
	
//x(11)   id: E34  initialValue: 0
	
//x(12)   id: E24  initialValue: 0
	
//x(13)   id: E44  initialValue: 0
	
//x(14)   id: E11P  initialValue: 0
	
//x(15)   id: E12P  initialValue: 0
	
//x(16)   id: E23P  initialValue: 0
	
//x(17)   id: E34P  initialValue: 0
	
//x(18)   id: E24P  initialValue: 0
	
//x(19)   id: E44P  initialValue: 0
	
//x(20)   id: G  initialValue: 82.4
	
//x(21)   id: S  initialValue: 11.5
	
//x(22)   id: I  initialValue: 46.4
	
//x(23)   id: R  initialValue: 93.6
	
//x(24)   id: O  initialValue: 82.3
	
//x(25)   id: A  initialValue: 43.1
	
//x(26)   id: E11G  initialValue: 0
	
//x(27)   id: E11S  initialValue: 0
	
//x(28)   id: E11R  initialValue: 0
	
//x(29)   id: E12G  initialValue: 0
	
//x(30)   id: E12S  initialValue: 0
	
//x(31)   id: E12R  initialValue: 0
	
//x(32)   id: E23G  initialValue: 0
	
//x(33)   id: E23S  initialValue: 0
	
//x(34)   id: E23I  initialValue: 0
	
//x(35)   id: E23R  initialValue: 0
	
//x(36)   id: E34G  initialValue: 0
	
//x(37)   id: E34S  initialValue: 0
	
//x(38)   id: E34I  initialValue: 0
	
//x(39)   id: E34R  initialValue: 0
	
//x(40)   id: E24G  initialValue: 0
	
//x(41)   id: E24S  initialValue: 0
	
//x(42)   id: E24I  initialValue: 0
	
//x(43)   id: E24R  initialValue: 0
	
//x(44)   id: E44G  initialValue: 0
	
//x(45)   id: E44S  initialValue: 0
	
//x(46)   id: E44I  initialValue: 0
	
//x(47)   id: E44R  initialValue: 0
	
//x(48)   id: SigG  initialValue: 0
	
//x(49)   id: SigS  initialValue: 0
	
//x(50)   id: SigI  initialValue: 0
	
//x(51)   id: SigR  initialValue: 0
	
//x(52)   id: SigA  initialValue: 0
	
//x(53)   id: SigSP  initialValue: 0
	
//x(54)   id: SigAP  initialValue: 0
	
//x(55)   id: SigG_O  initialValue: 0
	
//x(56)   id: SigG_A  initialValue: 0
	
//x(57)   id: SigSP_G  initialValue: 0
	
//x(58)   id: SigAP_S  initialValue: 0
	
//x(59)   id: SigAP_I  initialValue: 0
	
//x(60)   id: SigAP_R  initialValue: 0
	
//x(61)   id: Empty  initialValue: 0
	
//x(62)   id: P3_A  initialValue: 0
	
//x(63)   id: P2  initialValue: 197
	
//x(64)   id: P3  initialValue: 0
	
//x(65)   id: Akt  initialValue: 444
	
//x(66)   id: RsD  initialValue: 95.7
	
//x(67)   id: RsT  initialValue: 0
	
//x(68)   id: SigRP  initialValue: 0
	
//x(69)   id: Raf  initialValue: 743
	
//x(70)   id: Rafstar  initialValue: 0
	
//x(71)   id: MEK  initialValue: 772
	
//x(72)   id: MEKstar  initialValue: 0
	
//x(73)   id: ERK  initialValue: 750
	
//x(74)   id: ERKstar  initialValue: 0
	
//x(75)   id: OP  initialValue: 0
	
//x(76)   id: AP  initialValue: 0
	
//x(77)   id: A_SigG_O  initialValue: 0
	
//x(78)   id: SigA_G  initialValue: 0
	
//x(79)   id: SigA_G_O  initialValue: 0
	
//x(80)   id: SigO  initialValue: 0
	
//x(81)   id: E13  initialValue: 0
	
//x(82)   id: E14  initialValue: 0
	
//x(83)   id: E13P  initialValue: 0
	
//x(84)   id: E14P  initialValue: 0
	
//x(85)   id: E13G  initialValue: 0
	
//x(86)   id: E13S  initialValue: 0
	
//x(87)   id: E13I  initialValue: 0
	
//x(88)   id: E13R  initialValue: 0
	
//x(89)   id: E14G  initialValue: 0
	
//x(90)   id: E14S  initialValue: 0
	
//x(91)   id: E14I  initialValue: 0
	
//x(92)   id: E14R  initialValue: 0
	
//x(93)   id: T  initialValue: 500
	
//x(94)   id: E11T  initialValue: 0
	
//x(95)   id: E12T  initialValue: 0
	
//x(96)   id: E23T  initialValue: 0
	
//x(97)   id: E34T  initialValue: 0
	
//x(98)   id: E24T  initialValue: 0
	
//x(99)   id: E44T  initialValue: 0
	
//x(100)   id: E13T  initialValue: 0
	
//x(101)   id: E14T  initialValue: 0
	
//x(102)   id: SigT  initialValue: 0
	
//x(103)   id: E1_PT  initialValue: 0
	
//x(104)   id: E2_PT  initialValue: 0
	
//x(105)   id: E4_PT  initialValue: 0
	
//x(106)   id: E_E1_PT  initialValue: 0
	
//x(107)   id: H_E4_PT  initialValue: 0
	
//x(108)   id: Aktstar  initialValue: 0
	
//x(109)   id: SigAP_T  initialValue: 0
	
//x(110)   id: E  initialValue: 10
	
//x(111)   id: H  initialValue: 10
	
//x(112)   id: fint  initialValue: 0
	
//x(113)   id: pERK  initialValue: 0
	
//x(114)   id: ERK_MEKstar  initialValue: 0
	
//x(115)   id: pERK_MEKstar  initialValue: 0
	
//x(116)   id: pERK_ERKpase  initialValue: 0
	
//x(117)   id: ERKpase  initialValue: 0
	
//x(118)   id: ERKstar_ERKpase  initialValue: 35