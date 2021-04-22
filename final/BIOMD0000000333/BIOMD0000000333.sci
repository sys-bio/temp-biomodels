
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_compartment   id: compartment
	compartment_compartment=1;
		
// konII_p   id: konII
	konII_p=0.0043;
		
// nva_p   id: nva
	nva_p=100;
		
// koffII_p   id: koffII
	koffII_p=1;
		
// konmIIa_p   id: konmIIa
	konmIIa_p=0.05;
		
// koffmIIa_p   id: koffmIIa
	koffmIIa_p=0.475;
		
// konV_p   id: konV
	konV_p=0.05;
		
// koffV_p   id: koffV
	koffV_p=0.145;
		
// konVa_p   id: konVa
	konVa_p=0.057;
		
// koffVa_p   id: koffVa
	koffVa_p=0.17;
		
// konVII_p   id: konVII
	konVII_p=0.05;
		
// koffVII_p   id: koffVII
	koffVII_p=0.66;
		
// konVIIa_p   id: konVIIa
	konVIIa_p=0.05;
		
// koffVIIa_p   id: koffVIIa
	koffVIIa_p=0.227;
		
// konX_p   id: konX
	konX_p=0.01;
		
// koffX_p   id: koffX
	koffX_p=1.9;
		
// konXa_p   id: konXa
	konXa_p=0.029;
		
// koffXa_p   id: koffXa
	koffXa_p=3.3;
		
// konAPC_p   id: konAPC
	konAPC_p=0.05;
		
// koffAPC_p   id: koffAPC
	koffAPC_p=3.5;
		
// konPS_p   id: konPS
	konPS_p=0.05;
		
// koffPS_p   id: koffPS
	koffPS_p=0.2;
		
// konVai_p   id: konVai
	konVai_p=0.057;
		
// koffVai_p   id: koffVai
	koffVai_p=0.17;
		
// konPC_p   id: konPC
	konPC_p=0.05;
		
// koffPC_p   id: koffPC
	koffPC_p=11.5;
		
// k1_p   id: k1
	k1_p=0.5;
		
// k2_p   id: k2
	k2_p=0.005;
		
// k3_p   id: k3
	k3_p=0.005;
		
// k4_p   id: k4
	k4_p=0.005;
		
// k8_p   id: k8
	k8_p=0.1;
		
// k9_p   id: k9
	k9_p=32.5;
		
// k10_p   id: k10
	k10_p=1.5;
		
// k11_p   id: k11
	k11_p=0.05;
		
// k12_p   id: k12
	k12_p=44.8;
		
// k13_p   id: k13
	k13_p=15.2;
		
// k16_p   id: k16
	k16_p=1;
		
// k17_p   id: k17
	k17_p=1;
		
// k21_p   id: k21
	k21_p=0.1;
		
// k22_p   id: k22
	k22_p=1;
		
// k23_p   id: k23
	k23_p=0.043;
		
// k27_p   id: k27
	k27_p=0.1;
		
// k28_p   id: k28
	k28_p=6.94;
		
// k29_p   id: k29
	k29_p=0.23;
		
// k33_p   id: k33
	k33_p=0.1;
		
// k34_p   id: k34
	k34_p=100;
		
// k35_p   id: k35
	k35_p=0.1;
		
// k36_p   id: k36
	k36_p=66;
		
// k37_p   id: k37
	k37_p=13;
		
// k38_p   id: k38
	k38_p=15;
		
// k39_p   id: k39
	k39_p=0.05;
		
// k40_p   id: k40
	k40_p=44.8;
		
// k41_p   id: k41
	k41_p=15.2;
		
// k48_p   id: k48
	k48_p=0.1;
		
// k49_p   id: k49
	k49_p=1.6;
		
// k50_p   id: k50
	k50_p=0.4;
		
// k51_p   id: k51
	k51_p=0.016;
		
// k52_p   id: k52
	k52_p=0.00033;
		
// k53_p   id: k53
	k53_p=0.01;
		
// k54_p   id: k54
	k54_p=0.0011;
		
// k56_p   id: k56
	k56_p=2.3E-6;
		
// k57_p   id: k57
	k57_p=6.83E-6;
		
// k58_p   id: k58
	k58_p=0.1;
		
// k59_p   id: k59
	k59_p=6.94;
		
// k60_p   id: k60
	k60_p=1.035;
		
// k64_p   id: k64
	k64_p=1;
		
// k65_p   id: k65
	k65_p=0.5;
		
// k66_p   id: k66
	k66_p=0.1;
		
// k67_p   id: k67
	k67_p=6.4;
		
// k68_p   id: k68
	k68_p=3.6;
		
// k69_p   id: k69
	k69_p=6.83E-6;
		
// k70_p   id: k70
	k70_p=0.1;
		
// k71_p   id: k71
	k71_p=0.5;
		
// k75_p   id: k75
	k75_p=1;
		
// k77_p   id: k77
	k77_p=2.5E-6;
		
// k78_p   id: k78
	k78_p=1.4E-6;
		



xdot=[
//x(1)   ID: II_f  initialValue: 1174.5
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*(((konII_p* x(1) * x(51) )/nva_p)-(koffII_p* x(2) ))) );
	
//x(2)   ID: II_l  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*((k33_p* x(31) * x(2) )-(k34_p* x(35) ))) + (1)*(1)* (compartment_compartment*(((konII_p* x(1) * x(51) )/nva_p)-(koffII_p* x(2) ))) );
	
//x(3)   ID: mIIa_f  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*(((konmIIa_p* x(3) * x(51) )/nva_p)-(koffmIIa_p* x(4) ))) + (-1)*(1)* (compartment_compartment*k69_p* x(3) * x(39) ) );
	
//x(4)   ID: mIIa_l  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*((k35_p* x(31) * x(4) )-(k36_p* x(36) ))) + (-1)*(1)* (compartment_compartment*((k58_p* x(6) * x(4) )-(k59_p* x(46) ))) + (1)*(1)* (compartment_compartment*(((konmIIa_p* x(3) * x(51) )/nva_p)-(koffmIIa_p* x(4) ))) + (1)*(1)* (compartment_compartment*k60_p* x(46) ) );
	
//x(5)   ID: V_f  initialValue: 1.75
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*(((konV_p* x(5) * x(51) )/nva_p)-(koffV_p* x(6) ))) );
	
//x(6)   ID: V_l  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*((k21_p* x(6) * x(16) )-(k22_p* x(32) ))) + (-1)*(1)* (compartment_compartment*((k27_p* x(6) * x(33) )-(k28_p* x(34) ))) + (-1)*(1)* (compartment_compartment*((k58_p* x(6) * x(4) )-(k59_p* x(46) ))) + (1)*(1)* (compartment_compartment*(((konV_p* x(5) * x(51) )/nva_p)-(koffV_p* x(6) ))) );
	
//x(7)   ID: Va_f  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*(((konVa_p* x(7) * x(51) )/nva_p)-(koffVa_p* x(8) ))) );
	
//x(8)   ID: Va_l  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*((k16_p* x(16) * x(8) )-(k17_p* x(31) ))) + (-1)*(1)* (compartment_compartment*((k48_p* x(37) * x(8) )-(k49_p* x(43) ))) + (1)*(1)* (compartment_compartment*(((konVa_p* x(7) * x(51) )/nva_p)-(koffVa_p* x(8) ))) + (1)*(1)* (compartment_compartment*k23_p* x(32) ) + (1)*(1)* (compartment_compartment*k29_p* x(34) ) + (1)*(1)* (compartment_compartment*k60_p* x(46) ) );
	
//x(9)   ID: VII_f  initialValue: 7.6
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*(((konVII_p* x(9) * x(51) )/nva_p)-(koffVII_p* x(10) ))) );
	
//x(10)   ID: VII_l  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*((k3_p* x(25) * x(10) )-(k4_p* x(27) ))) + (-1)*(1)* (compartment_compartment*((k39_p* x(10) * x(16) )-(k40_p* x(45) ))) + (1)*(1)* (compartment_compartment*(((konVII_p* x(9) * x(51) )/nva_p)-(koffVII_p* x(10) ))) );
	
//x(11)   ID: VIIa_f  initialValue: 0.1
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*(((konVIIa_p* x(11) * x(51) )/nva_p)-(koffVIIa_p* x(12) ))) );
	
//x(12)   ID: VIIa_l  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*((k1_p* x(25) * x(12) )-(k2_p* x(26) ))) + (1)*(1)* (compartment_compartment*(((konVIIa_p* x(11) * x(51) )/nva_p)-(koffVIIa_p* x(12) ))) + (1)*(1)* (compartment_compartment*k41_p* x(45) ) );
	
//x(13)   ID: X_f  initialValue: 142.85
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*(((konX_p* x(13) * x(51) )/nva_p)-(koffX_p* x(14) ))) );
	
//x(14)   ID: X_l  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*((k8_p* x(26) * x(14) )-(k9_p* x(28) ))) + (1)*(1)* (compartment_compartment*(((konX_p* x(13) * x(51) )/nva_p)-(koffX_p* x(14) ))) );
	
//x(15)   ID: Xa_f  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (((konXa_p* x(15) * x(51) )/nva_p)-(koffXa_p* x(16) )) + (-1)*(1)* (compartment_compartment*((k51_p* x(38) * x(15) )-(k52_p* x(41) ))) + (-1)*(1)* (compartment_compartment*k56_p* x(15) * x(39) ) + (-1)*(1)* (compartment_compartment*k78_p* x(52) * x(15) ) );
	
//x(16)   ID: Xa_l  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*((k11_p* x(27) * x(16) )-(k12_p* x(30) ))) + (-1)*(1)* (compartment_compartment*((k16_p* x(16) * x(8) )-(k17_p* x(31) ))) + (-1)*(1)* (compartment_compartment*((k21_p* x(6) * x(16) )-(k22_p* x(32) ))) + (-1)*(1)* (compartment_compartment*((k39_p* x(10) * x(16) )-(k40_p* x(45) ))) + (1)*(1)* (((konXa_p* x(15) * x(51) )/nva_p)-(koffXa_p* x(16) )) + (1)*(1)* (compartment_compartment*k75_p* x(29) ) + (1)*(1)* (compartment_compartment*k13_p* x(30) ) + (1)*(1)* (compartment_compartment*k23_p* x(32) ) + (1)*(1)* (compartment_compartment*k41_p* x(45) ) );
	
//x(17)   ID: APC_f  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*(((konAPC_p* x(17) * x(51) )/nva_p)-(koffAPC_p* x(18) ))) );
	
//x(18)   ID: APC_l  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*((k70_p* x(18) * x(20) )-(k71_p* x(37) ))) + (1)*(1)* (compartment_compartment*(((konAPC_p* x(17) * x(51) )/nva_p)-(koffAPC_p* x(18) ))) + (1)*(1)* (compartment_compartment*k68_p* x(49) ) );
	
//x(19)   ID: PS_f  initialValue: 116
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*(((konPS_p* x(19) * x(51) )/nva_p)-(koffPS_p* x(20) ))) );
	
//x(20)   ID: PS_l  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*((k70_p* x(18) * x(20) )-(k71_p* x(37) ))) + (1)*(1)* (compartment_compartment*(((konPS_p* x(19) * x(51) )/nva_p)-(koffPS_p* x(20) ))) );
	
//x(21)   ID: Vai_f  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*(((konVai_p* x(21) * x(51) )/nva_p)-(koffVai_p* x(22) ))) );
	
//x(22)   ID: Vai_l  initialValue: 0
	(1/compartment_compartment)*( (1)*(1)* (compartment_compartment*(((konVai_p* x(21) * x(51) )/nva_p)-(koffVai_p* x(22) ))) + (1)*(1)* (compartment_compartment*k50_p* x(43) ) );
	
//x(23)   ID: PC_f  initialValue: 66
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*(((konPC_p* x(23) * x(51) )/nva_p)-(koffPC_p* x(24) ))) );
	
//x(24)   ID: PC_l  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*((k66_p* x(48) * x(24) )-(k67_p* x(49) ))) + (1)*(1)* (compartment_compartment*(((konPC_p* x(23) * x(51) )/nva_p)-(koffPC_p* x(24) ))) );
	
//x(25)   ID: TF_l  initialValue: 0.0182
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*((k1_p* x(25) * x(12) )-(k2_p* x(26) ))) + (-1)*(1)* (compartment_compartment*((k3_p* x(25) * x(10) )-(k4_p* x(27) ))) );
	
//x(26)   ID: TF_VIIa_l  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*((k8_p* x(26) * x(14) )-(k9_p* x(28) ))) + (-1)*(1)* (compartment_compartment*((k53_p* x(41) * x(26) )-(k54_p* x(42) ))) + (1)*(1)* (compartment_compartment*((k1_p* x(25) * x(12) )-(k2_p* x(26) ))) + (1)*(1)* (compartment_compartment*k75_p* x(29) ) + (1)*(1)* (compartment_compartment*k13_p* x(30) ) );
	
//x(27)   ID: TF_VII_l  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*((k11_p* x(27) * x(16) )-(k12_p* x(30) ))) + (1)*(1)* (compartment_compartment*((k3_p* x(25) * x(10) )-(k4_p* x(27) ))) );
	
//x(28)   ID: TF_VIIa_X_l  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*k10_p* x(28) ) + (1)*(1)* (compartment_compartment*((k8_p* x(26) * x(14) )-(k9_p* x(28) ))) );
	
//x(29)   ID: TF_VIIa_Xa_l  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*k75_p* x(29) ) + (1)*(1)* (compartment_compartment*k10_p* x(28) ) );
	
//x(30)   ID: TF_VII_Xa_l  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*k13_p* x(30) ) + (1)*(1)* (compartment_compartment*((k11_p* x(27) * x(16) )-(k12_p* x(30) ))) );
	
//x(31)   ID: Xa_Va_l  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*((k33_p* x(31) * x(2) )-(k34_p* x(35) ))) + (-1)*(1)* (compartment_compartment*((k35_p* x(31) * x(4) )-(k36_p* x(36) ))) + (1)*(1)* (compartment_compartment*((k16_p* x(16) * x(8) )-(k17_p* x(31) ))) + (1)*(1)* (compartment_compartment*k38_p* x(36) ) );
	
//x(32)   ID: V_Xa_l  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*k23_p* x(32) ) + (1)*(1)* (compartment_compartment*((k21_p* x(6) * x(16) )-(k22_p* x(32) ))) );
	
//x(33)   ID: IIa_f  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*((k27_p* x(6) * x(33) )-(k28_p* x(34) ))) + (-1)*(1)* (compartment_compartment*k57_p* x(33) * x(39) ) + (-1)*(1)* (compartment_compartment*((k64_p* x(33) * x(47) )-(k65_p* x(48) ))) + (-1)*(1)* (compartment_compartment*k77_p* x(52) * x(33) ) + (1)*(1)* (compartment_compartment*k29_p* x(34) ) + (1)*(1)* (compartment_compartment*k38_p* x(36) ) );
	
//x(34)   ID: V_IIa_l  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*k29_p* x(34) ) + (1)*(1)* (compartment_compartment*((k27_p* x(6) * x(33) )-(k28_p* x(34) ))) );
	
//x(35)   ID: Xa_Va_II_l  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*k37_p* x(35) ) + (1)*(1)* (compartment_compartment*((k33_p* x(31) * x(2) )-(k34_p* x(35) ))) );
	
//x(36)   ID: Xa_Va_mIIa_l  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*k38_p* x(36) ) + (1)*(1)* (compartment_compartment*((k35_p* x(31) * x(4) )-(k36_p* x(36) ))) + (1)*(1)* (compartment_compartment*k37_p* x(35) ) );
	
//x(37)   ID: APC_PS_l  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*((k48_p* x(37) * x(8) )-(k49_p* x(43) ))) + (1)*(1)* (compartment_compartment*k50_p* x(43) ) + (1)*(1)* (compartment_compartment*((k70_p* x(18) * x(20) )-(k71_p* x(37) ))) );
	
//x(38)   ID: TFPI_f  initialValue: 12.3
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*((k51_p* x(38) * x(15) )-(k52_p* x(41) ))) );
	
//x(39)   ID: AT_f  initialValue: 4721
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*k56_p* x(15) * x(39) ) + (-1)*(1)* (compartment_compartment*k57_p* x(33) * x(39) ) + (-1)*(1)* (compartment_compartment*k69_p* x(3) * x(39) ) );
	
//x(40)   ID: IIa_AT_f  initialValue: 0
	(1/compartment_compartment)*( (1)*(1)* (compartment_compartment*k57_p* x(33) * x(39) ) );
	
//x(41)   ID: TFPI_Xa_l  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*((k53_p* x(41) * x(26) )-(k54_p* x(42) ))) + (1)*(1)* (compartment_compartment*((k51_p* x(38) * x(15) )-(k52_p* x(41) ))) );
	
//x(42)   ID: TFPI_Xa_TF_VIIa_l  initialValue: 0
	(1/compartment_compartment)*( (1)*(1)* (compartment_compartment*((k53_p* x(41) * x(26) )-(k54_p* x(42) ))) );
	
//x(43)   ID: APC_PS_Va_l  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*k50_p* x(43) ) + (1)*(1)* (compartment_compartment*((k48_p* x(37) * x(8) )-(k49_p* x(43) ))) );
	
//x(44)   ID: Xa_AT_f  initialValue: 0
	(1/compartment_compartment)*( (1)*(1)* (compartment_compartment*k56_p* x(15) * x(39) ) );
	
//x(45)   ID: VII_Xa_l  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*k41_p* x(45) ) + (1)*(1)* (compartment_compartment*((k39_p* x(10) * x(16) )-(k40_p* x(45) ))) );
	
//x(46)   ID: V_mIIa_l  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*k60_p* x(46) ) + (1)*(1)* (compartment_compartment*((k58_p* x(6) * x(4) )-(k59_p* x(46) ))) );
	
//x(47)   ID: TM_l  initialValue: 1
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*((k64_p* x(33) * x(47) )-(k65_p* x(48) ))) );
	
//x(48)   ID: IIa_TM_l  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*((k66_p* x(48) * x(24) )-(k67_p* x(49) ))) + (1)*(1)* (compartment_compartment*((k64_p* x(33) * x(47) )-(k65_p* x(48) ))) + (1)*(1)* (compartment_compartment*k68_p* x(49) ) );
	
//x(49)   ID: IIa_TM_PC_l  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*k68_p* x(49) ) + (1)*(1)* (compartment_compartment*((k66_p* x(48) * x(24) )-(k67_p* x(49) ))) );
	
//x(50)   ID: mIIa_AT_l  initialValue: 0
	(1/compartment_compartment)*( (1)*(1)* (compartment_compartment*k69_p* x(3) * x(39) ) );
	
//x(51)   ID: LIPID  initialValue: 170000
	(1/compartment_compartment)*( (-1)*(100)* (compartment_compartment*(((konII_p* x(1) * x(51) )/nva_p)-(koffII_p* x(2) ))) + (-1)*(100)* (compartment_compartment*(((konmIIa_p* x(3) * x(51) )/nva_p)-(koffmIIa_p* x(4) ))) + (-1)*(100)* (compartment_compartment*(((konV_p* x(5) * x(51) )/nva_p)-(koffV_p* x(6) ))) + (-1)*(100)* (compartment_compartment*(((konVa_p* x(7) * x(51) )/nva_p)-(koffVa_p* x(8) ))) + (-1)*(100)* (compartment_compartment*(((konVII_p* x(9) * x(51) )/nva_p)-(koffVII_p* x(10) ))) + (-1)*(100)* (compartment_compartment*(((konVIIa_p* x(11) * x(51) )/nva_p)-(koffVIIa_p* x(12) ))) + (-1)*(100)* (compartment_compartment*(((konX_p* x(13) * x(51) )/nva_p)-(koffX_p* x(14) ))) + (-1)*(100)* (((konXa_p* x(15) * x(51) )/nva_p)-(koffXa_p* x(16) )) + (-1)*(100)* (compartment_compartment*(((konAPC_p* x(17) * x(51) )/nva_p)-(koffAPC_p* x(18) ))) + (-1)*(100)* (compartment_compartment*(((konPS_p* x(19) * x(51) )/nva_p)-(koffPS_p* x(20) ))) + (-1)*(100)* (compartment_compartment*(((konVai_p* x(21) * x(51) )/nva_p)-(koffVai_p* x(22) ))) + (-1)*(100)* (compartment_compartment*(((konPC_p* x(23) * x(51) )/nva_p)-(koffPC_p* x(24) ))) + (1)*(100)* (compartment_compartment*k38_p* x(36) ) );
	
//x(52)   ID: alpha2M_l  initialValue: 364
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*k77_p* x(52) * x(33) ) + (-1)*(1)* (compartment_compartment*k78_p* x(52) * x(15) ) );
	
//x(53)   ID: alpha2M_IIa_l  initialValue: 0
	(1/compartment_compartment)*( (1)*(1)* (compartment_compartment*k77_p* x(52) * x(33) ) );
	
//x(54)   ID: alpha2M_Xa_l  initialValue: 0
	(1/compartment_compartment)*( (1)*(1)* (compartment_compartment*k78_p* x(52) * x(15) ) )
	];


	
endfunction
        x0=[1174.5;0;0;0;1.75;0;0;0;7.6;0;0.1;0;142.85;0;0;0;0;0;116;0;0;0;66;0;0.0182;0;0;0;0;0;0;0;0;0;0;0;0;12.3;4721;0;0;0;0;0;0;0;1;0;0;0;170000;364;0;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)' 'x(14)' 'x(15)' 'x(16)' 'x(17)' 'x(18)' 'x(19)' 'x(20)' 'x(21)' 'x(22)' 'x(23)' 'x(24)' 'x(25)' 'x(26)' 'x(27)' 'x(28)' 'x(29)' 'x(30)' 'x(31)' 'x(32)' 'x(33)' 'x(34)' 'x(35)' 'x(36)' 'x(37)' 'x(38)' 'x(39)' 'x(40)' 'x(41)' 'x(42)' 'x(43)' 'x(44)' 'x(45)' 'x(46)' 'x(47)' 'x(48)' 'x(49)' 'x(50)' 'x(51)' 'x(52)' 'x(53)' 'x(54)'],[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18;19;20;21;22;23;24;25;26;27;28;29;30;31;32;33;34;35;36;37;38;39;40;41;42;43;44;45;46;47;48;49;50;51;52;53;54])

//real_variable:
	
	
//x(1)   id: II_f  initialValue: 1174.5
	
//x(2)   id: II_l  initialValue: 0
	
//x(3)   id: mIIa_f  initialValue: 0
	
//x(4)   id: mIIa_l  initialValue: 0
	
//x(5)   id: V_f  initialValue: 1.75
	
//x(6)   id: V_l  initialValue: 0
	
//x(7)   id: Va_f  initialValue: 0
	
//x(8)   id: Va_l  initialValue: 0
	
//x(9)   id: VII_f  initialValue: 7.6
	
//x(10)   id: VII_l  initialValue: 0
	
//x(11)   id: VIIa_f  initialValue: 0.1
	
//x(12)   id: VIIa_l  initialValue: 0
	
//x(13)   id: X_f  initialValue: 142.85
	
//x(14)   id: X_l  initialValue: 0
	
//x(15)   id: Xa_f  initialValue: 0
	
//x(16)   id: Xa_l  initialValue: 0
	
//x(17)   id: APC_f  initialValue: 0
	
//x(18)   id: APC_l  initialValue: 0
	
//x(19)   id: PS_f  initialValue: 116
	
//x(20)   id: PS_l  initialValue: 0
	
//x(21)   id: Vai_f  initialValue: 0
	
//x(22)   id: Vai_l  initialValue: 0
	
//x(23)   id: PC_f  initialValue: 66
	
//x(24)   id: PC_l  initialValue: 0
	
//x(25)   id: TF_l  initialValue: 0.0182
	
//x(26)   id: TF_VIIa_l  initialValue: 0
	
//x(27)   id: TF_VII_l  initialValue: 0
	
//x(28)   id: TF_VIIa_X_l  initialValue: 0
	
//x(29)   id: TF_VIIa_Xa_l  initialValue: 0
	
//x(30)   id: TF_VII_Xa_l  initialValue: 0
	
//x(31)   id: Xa_Va_l  initialValue: 0
	
//x(32)   id: V_Xa_l  initialValue: 0
	
//x(33)   id: IIa_f  initialValue: 0
	
//x(34)   id: V_IIa_l  initialValue: 0
	
//x(35)   id: Xa_Va_II_l  initialValue: 0
	
//x(36)   id: Xa_Va_mIIa_l  initialValue: 0
	
//x(37)   id: APC_PS_l  initialValue: 0
	
//x(38)   id: TFPI_f  initialValue: 12.3
	
//x(39)   id: AT_f  initialValue: 4721
	
//x(40)   id: IIa_AT_f  initialValue: 0
	
//x(41)   id: TFPI_Xa_l  initialValue: 0
	
//x(42)   id: TFPI_Xa_TF_VIIa_l  initialValue: 0
	
//x(43)   id: APC_PS_Va_l  initialValue: 0
	
//x(44)   id: Xa_AT_f  initialValue: 0
	
//x(45)   id: VII_Xa_l  initialValue: 0
	
//x(46)   id: V_mIIa_l  initialValue: 0
	
//x(47)   id: TM_l  initialValue: 1
	
//x(48)   id: IIa_TM_l  initialValue: 0
	
//x(49)   id: IIa_TM_PC_l  initialValue: 0
	
//x(50)   id: mIIa_AT_l  initialValue: 0
	
//x(51)   id: LIPID  initialValue: 170000
	
//x(52)   id: alpha2M_l  initialValue: 364
	
//x(53)   id: alpha2M_IIa_l  initialValue: 0
	
//x(54)   id: alpha2M_Xa_l  initialValue: 0