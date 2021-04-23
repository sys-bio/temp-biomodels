
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_compartment_0000001   id: compartment_0000001
	compartment_compartment_0000001=1;
		
// k1_p   id: k1
	k1_p=0.0012;
		
// k2_p   id: k2
	k2_p=0.01;
		
// k3_p   id: k3
	k3_p=1;
		
// k5_p   id: k5
	k5_p=0.1;
		
// k6_p   id: k6
	k6_p=20;
		
// k7_p   id: k7
	k7_p=60;
		
// k8_p   id: k8
	k8_p=2040;
		
// k9_p   id: k9
	k9_p=40.8;
		
// V10_p   id: V10
	V10_p=0.0154;
		
// k11_p   id: k11
	k11_p=0.222;
		
// V12_p   id: V12
	V12_p=0.289;
		
// k13_p   id: k13
	k13_p=1.53;
		
// k14_p   id: k14
	k14_p=0.00673;
		
// k15_p   id: k15
	k15_p=3.5;
		
// k16_p   id: k16
	k16_p=0.058;
		
// k17_p   id: k17
	k17_p=2.9;
		
// k20_p   id: k20
	k20_p=0.3;
		
// k18_p   id: k18
	k18_p=0.058;
		
// k19_p   id: k19
	k19_p=9.5;
		
// k21_p   id: k21
	k21_p=16;
		
// k22_p   id: k22
	k22_p=0.27;
		
// k23_p   id: k23
	k23_p=0.1;
		
// k24_p   id: k24
	k24_p=9.85;
		
// k25_p   id: k25
	k25_p=45.8;
		
// k27_p   id: k27
	k27_p=16.9;
		
// V26_p   id: V26
	V26_p=2620;
		
// V28_p   id: V28
	V28_p=17000;
		
// k29_p   id: k29
	k29_p=507;
		
// V30_p   id: V30
	V30_p=20000;
		
// k31_p   id: k31
	k31_p=0.107;
		
// V32_p   id: V32
	V32_p=20000;
		
// k33_p   id: k33
	k33_p=0.211;
		
// k34_p   id: k34
	k34_p=0.001;
		
// k_1_p   id: k_1
	k_1_p=0.00076;
		
// k_2_p   id: k_2
	k_2_p=0.1;
		
// k_3_p   id: k_3
	k_3_p=0.01;
		
// K4_p   id: K4
	K4_p=50;
		
// k_5_p   id: k_5
	k_5_p=1;
		
// k_6_p   id: k_6
	k_6_p=5;
		
// k_7_p   id: k_7
	k_7_p=546;
		
// k_8_p   id: k_8
	k_8_p=15700;
		
// k_9_p   id: k_9
	k_9_p=0;
		
// K10_p   id: K10
	K10_p=340;
		
// K11_p   id: K11
	K11_p=0.181;
		
// K12_p   id: K12
	K12_p=0.0571;
		
// K13_p   id: K13
	K13_p=11.7;
		
// K14_p   id: K14
	K14_p=8.07;
		
// K15_p   id: K15
	K15_p=317;
		
// K18_p   id: K18
	K18_p=60;
		
// K19_p   id: K19
	K19_p=146000;
		
// K20_p   id: K20
	K20_p=160;
		
// K21_p   id: K21
	K21_p=146000;
		
// K22_p   id: K22
	K22_p=60;
		
// k_23_p   id: k_23
	k_23_p=2;
		
// k_24_p   id: k_24
	k_24_p=0.0985;
		
// k_25_p   id: k_25
	k_25_p=0.047;
		
// K26_p   id: K26
	K26_p=3680;
		
// K27_p   id: K27
	K27_p=39.1;
		
// K28_p   id: K28
	K28_p=9.02;
		
// K30_p   id: K30
	K30_p=80000;
		
// K31_p   id: K31
	K31_p=4.35;
		
// K32_p   id: K32
	K32_p=80000;
		
// K33_p   id: K33
	K33_p=12;
		
// k_34_p   id: k_34
	k_34_p=0;
		
// V4_p   id: V4
	V4_p=62.5;
		
// K17_p   id: K17
	K17_p=317;
		
// K16_p   id: K16
	K16_p=2200;
		
// k_29_p   id: k_29
	k_29_p=234;
		
// RP_percent_p   id: RP_percent
	RP_percent_p=0;
		
// AktPP_percent_p   id: AktPP_percent
	AktPP_percent_p=0;
		
// MEKPP_percent_p   id: MEKPP_percent
	MEKPP_percent_p=0;
		
// ERKPP_percent_p   id: ERKPP_percent
	ERKPP_percent_p=0;
		
// Rafstar_percent_p   id: Rafstar_percent
	Rafstar_percent_p=0;
		
// ShP_percent_p   id: ShP_percent
	ShP_percent_p=0;
		
// PI3Kstar_percent_p   id: PI3Kstar_percent
	PI3Kstar_percent_p=0;
		
// E_s   id: E
	E_s=7;
		
// MKP3_s   id: MKP3
	MKP3_s=2.4;
		
// PP2A_s   id: PP2A
	PP2A_s=11.4;
		



xdot=[
//x(1)   ID: Akt  initialValue: 10
	(1/compartment_compartment_0000001)*( (-1)*(1)* (compartment_compartment_0000001*((k29_p* x(15) * x(1) )-(k_29_p* x(2) ))) );
	
//x(2)   ID: AktPIP3  initialValue: 0
	(1/compartment_compartment_0000001)*( (-1)*(1)* ((compartment_compartment_0000001*V30_p* x(2) )/((K30_p*(( 1 )+( x(3) /K32_p)))+ x(2) )) + (1)*(1)* (compartment_compartment_0000001*((k29_p* x(15) * x(1) )-(k_29_p* x(2) ))) + (1)*(1)* ((compartment_compartment_0000001*k31_p*PP2A_s* x(3) )/((K31_p*(( 1 )+( x(11) /K16_p)+( x(12) /K18_p)+( x(4) /K33_p)))+ x(3) )) );
	
//x(3)   ID: AktPIP  initialValue: 0
	(1/compartment_compartment_0000001)*( (-1)*(1)* ((compartment_compartment_0000001*k31_p*PP2A_s* x(3) )/((K31_p*(( 1 )+( x(11) /K16_p)+( x(12) /K18_p)+( x(4) /K33_p)))+ x(3) )) + (-1)*(1)* ((compartment_compartment_0000001*V32_p* x(3) )/((K32_p*(( 1 )+( x(2) /K30_p)))+ x(3) )) + (1)*(1)* ((compartment_compartment_0000001*V30_p* x(2) )/((K30_p*(( 1 )+( x(3) /K32_p)))+ x(2) )) + (1)*(1)* ((compartment_compartment_0000001*k33_p*PP2A_s* x(4) )/((K33_p*(( 1 )+( x(11) /K16_p)+( x(12) /K18_p)+( x(3) /K31_p)))+ x(4) )) );
	
//x(4)   ID: AktPIPP  initialValue: 0
	(1/compartment_compartment_0000001)*( (-1)*(1)* ((compartment_compartment_0000001*k33_p*PP2A_s* x(4) )/((K33_p*(( 1 )+( x(11) /K16_p)+( x(12) /K18_p)+( x(3) /K31_p)))+ x(4) )) + (1)*(1)* ((compartment_compartment_0000001*V32_p* x(3) )/((K32_p*(( 1 )+( x(2) /K30_p)))+ x(3) )) );
	
//x(5)   ID: ERK  initialValue: 1000
	(1/compartment_compartment_0000001)*( (-1)*(1)* ((compartment_compartment_0000001*k19_p* x(12) * x(5) )/((K19_p*(( 1 )+( x(6) /K21_p)))+ x(5) )) + (1)*(1)* ((compartment_compartment_0000001*k20_p*MKP3_s* x(6) )/((K20_p*(( 1 )+( x(7) /K22_p)))+ x(6) )) );
	
//x(6)   ID: ERKP  initialValue: 0
	(1/compartment_compartment_0000001)*( (-1)*(1)* ((compartment_compartment_0000001*k20_p*MKP3_s* x(6) )/((K20_p*(( 1 )+( x(7) /K22_p)))+ x(6) )) + (-1)*(1)* ((compartment_compartment_0000001*k21_p* x(12) * x(6) )/((K21_p*(( 1 )+( x(5) /K19_p)))+ x(6) )) + (1)*(1)* ((compartment_compartment_0000001*k19_p* x(12) * x(5) )/((K19_p*(( 1 )+( x(6) /K21_p)))+ x(5) )) + (1)*(1)* ((compartment_compartment_0000001*k22_p*MKP3_s* x(7) )/((K22_p*(( 1 )+( x(6) /K20_p)))+ x(7) )) );
	
//x(7)   ID: ERKPP  initialValue: 0
	(1/compartment_compartment_0000001)*( (-1)*(1)* ((compartment_compartment_0000001*k22_p*MKP3_s* x(7) )/((K22_p*(( 1 )+( x(6) /K20_p)))+ x(7) )) + (1)*(1)* ((compartment_compartment_0000001*k21_p* x(12) * x(6) )/((K21_p*(( 1 )+( x(5) /K19_p)))+ x(6) )) );
	
//x(8)   ID: GS  initialValue: 10
	(1/compartment_compartment_0000001)*( (-1)*(1)* (compartment_compartment_0000001*((k7_p* x(23) * x(8) )-(k_7_p* x(22) ))) + (1)*(1)* (compartment_compartment_0000001*((k9_p* x(29) )-(k_9_p* x(8) * x(30) ))) );
	
//x(9)   ID: HRG  initialValue: 330
	(1/compartment_compartment_0000001)*( (-1)*(1)* (compartment_compartment_0000001*((k1_p* x(16) * x(9) )-(k_1_p* x(18) ))) );
	
//x(10)   ID: MEK  initialValue: 120
	(1/compartment_compartment_0000001)*( (-1)*(1)* ((compartment_compartment_0000001*k15_p* x(26) * x(10) )/((K15_p*(( 1 )+( x(11) /K17_p)))+ x(10) )) + (1)*(1)* ((compartment_compartment_0000001*k16_p*PP2A_s* x(11) )/((K16_p*(( 1 )+( x(12) /K18_p)+( x(3) /K31_p)+( x(4) /K33_p)))+ x(11) )) );
	
//x(11)   ID: MEKP  initialValue: 0
	(1/compartment_compartment_0000001)*( (-1)*(1)* ((compartment_compartment_0000001*k16_p*PP2A_s* x(11) )/((K16_p*(( 1 )+( x(12) /K18_p)+( x(3) /K31_p)+( x(4) /K33_p)))+ x(11) )) + (-1)*(1)* ((compartment_compartment_0000001*k17_p* x(26) * x(11) )/((K17_p*(( 1 )+( x(10) /K15_p)))+ x(11) )) + (1)*(1)* ((compartment_compartment_0000001*k15_p* x(26) * x(10) )/((K15_p*(( 1 )+( x(11) /K17_p)))+ x(10) )) + (1)*(1)* ((compartment_compartment_0000001*k18_p*PP2A_s* x(12) )/((K18_p*(( 1 )+( x(11) /K16_p)+( x(4) /K31_p)+( x(4) /K33_p)))+ x(12) )) );
	
//x(12)   ID: MEKPP  initialValue: 0
	(1/compartment_compartment_0000001)*( (-1)*(1)* ((compartment_compartment_0000001*k18_p*PP2A_s* x(12) )/((K18_p*(( 1 )+( x(11) /K16_p)+( x(4) /K31_p)+( x(4) /K33_p)))+ x(12) )) + (1)*(1)* ((compartment_compartment_0000001*k17_p* x(26) * x(11) )/((K17_p*(( 1 )+( x(10) /K15_p)))+ x(11) )) );
	
//x(13)   ID: PI3K  initialValue: 10
	(1/compartment_compartment_0000001)*( (-1)*(1)* (compartment_compartment_0000001*((k23_p* x(17) * x(13) )-(k_23_p* x(20) ))) + (1)*(1)* ((compartment_compartment_0000001*V26_p* x(14) )/(K26_p+ x(14) )) );
	
//x(14)   ID: PI3Kstar  initialValue: 0
	(1/compartment_compartment_0000001)*( (-1)*(1)* ((compartment_compartment_0000001*V26_p* x(14) )/(K26_p+ x(14) )) + (1)*(1)* (compartment_compartment_0000001*((k25_p* x(21) )-(k_25_p* x(17) * x(14) ))) );
	
//x(15)   ID: PIP3  initialValue: 0
	(1/compartment_compartment_0000001)*( (-1)*(1)* (compartment_compartment_0000001*((k29_p* x(15) * x(1) )-(k_29_p* x(2) ))) + (-1)*(1)* (compartment_compartment_0000001*((V28_p* x(15) )/(K28_p+ x(15) ))) + (1)*(1)* ((compartment_compartment_0000001*k27_p* x(14) * x(32) )/(K27_p+ x(32) )) );
	
//x(16)   ID: R  initialValue: 80
	(1/compartment_compartment_0000001)*( (-1)*(1)* (compartment_compartment_0000001*((k1_p* x(16) * x(9) )-(k_1_p* x(18) ))) );
	
//x(17)   ID: RP  initialValue: 0
	(1/compartment_compartment_0000001)*( (-1)*(1)* ((compartment_compartment_0000001*V4_p* x(17) )/(K4_p+ x(17) )) + (-1)*(1)* (compartment_compartment_0000001*((k5_p* x(17) * x(31) )-(k_5_p* x(24) ))) + (-1)*(1)* (compartment_compartment_0000001*((k23_p* x(17) * x(13) )-(k_23_p* x(20) ))) + (-1)*(1)* (compartment_compartment_0000001*((k34_p* x(17) )-(k_34_p* x(33) ))) + (1)*(1)* (compartment_compartment_0000001*((k3_p* x(19) )-(k_3_p* x(17) ))) + (1)*(1)* (compartment_compartment_0000001*((k8_p* x(22) )-(k_8_p* x(29) * x(17) ))) + (1)*(1)* (compartment_compartment_0000001*((k25_p* x(21) )-(k_25_p* x(17) * x(14) ))) );
	
//x(18)   ID: RHRG  initialValue: 0
	(1/compartment_compartment_0000001)*( (-1)*(2)* (compartment_compartment_0000001*((k2_p*(power( x(18) ,( 2 ))))-(k_2_p* x(19) ))) + (1)*(1)* (compartment_compartment_0000001*((k1_p* x(16) * x(9) )-(k_1_p* x(18) ))) );
	
//x(19)   ID: RHRG2  initialValue: 0
	(1/compartment_compartment_0000001)*( (-1)*(1)* (compartment_compartment_0000001*((k3_p* x(19) )-(k_3_p* x(17) ))) + (1)*(1)* (compartment_compartment_0000001*((k2_p*(power( x(18) ,( 2 ))))-(k_2_p* x(19) ))) + (1)*(1)* ((compartment_compartment_0000001*V4_p* x(17) )/(K4_p+ x(17) )) );
	
//x(20)   ID: RPI3K  initialValue: 0
	(1/compartment_compartment_0000001)*( (-1)*(1)* (compartment_compartment_0000001*((k24_p* x(20) )-(k_24_p* x(21) ))) + (1)*(1)* (compartment_compartment_0000001*((k23_p* x(17) * x(13) )-(k_23_p* x(20) ))) );
	
//x(21)   ID: RPI3Kstar  initialValue: 0
	(1/compartment_compartment_0000001)*( (-1)*(1)* (compartment_compartment_0000001*((k25_p* x(21) )-(k_25_p* x(17) * x(14) ))) + (1)*(1)* (compartment_compartment_0000001*((k24_p* x(20) )-(k_24_p* x(21) ))) );
	
//x(22)   ID: RShGS  initialValue: 0
	(1/compartment_compartment_0000001)*( (-1)*(1)* (compartment_compartment_0000001*((k8_p* x(22) )-(k_8_p* x(29) * x(17) ))) + (1)*(1)* (compartment_compartment_0000001*((k7_p* x(23) * x(8) )-(k_7_p* x(22) ))) );
	
//x(23)   ID: RShP  initialValue: 0
	(1/compartment_compartment_0000001)*( (-1)*(1)* (compartment_compartment_0000001*((k7_p* x(23) * x(8) )-(k_7_p* x(22) ))) + (1)*(1)* (compartment_compartment_0000001*((k6_p* x(24) )-(k_6_p* x(23) ))) );
	
//x(24)   ID: RShc  initialValue: 0
	(1/compartment_compartment_0000001)*( (-1)*(1)* (compartment_compartment_0000001*((k6_p* x(24) )-(k_6_p* x(23) ))) + (1)*(1)* (compartment_compartment_0000001*((k5_p* x(17) * x(31) )-(k_5_p* x(24) ))) );
	
//x(25)   ID: Raf  initialValue: 100
	(1/compartment_compartment_0000001)*( (-1)*(1)* (compartment_compartment_0000001*((k13_p* x(28) * x(25) )/(K13_p+ x(25) ))) + (1)*(1)* ((compartment_compartment_0000001*k14_p*( x(4) +E_s)* x(26) )/(K14_p+ x(26) )) );
	
//x(26)   ID: Rafstar  initialValue: 0
	(1/compartment_compartment_0000001)*( (-1)*(1)* ((compartment_compartment_0000001*k14_p*( x(4) +E_s)* x(26) )/(K14_p+ x(26) )) + (1)*(1)* (compartment_compartment_0000001*((k13_p* x(28) * x(25) )/(K13_p+ x(25) ))) );
	
//x(27)   ID: RasGDP  initialValue: 120
	(1/compartment_compartment_0000001)*( (-1)*(1)* (compartment_compartment_0000001*((k11_p* x(29) * x(27) )/(K11_p+ x(27) ))) + (1)*(1)* (compartment_compartment_0000001*((V12_p* x(28) )/(K12_p+ x(28) ))) );
	
//x(28)   ID: RasGTP  initialValue: 0
	(1/compartment_compartment_0000001)*( (-1)*(1)* (compartment_compartment_0000001*((V12_p* x(28) )/(K12_p+ x(28) ))) + (1)*(1)* (compartment_compartment_0000001*((k11_p* x(29) * x(27) )/(K11_p+ x(27) ))) );
	
//x(29)   ID: ShGS  initialValue: 0
	(1/compartment_compartment_0000001)*( (-1)*(1)* (compartment_compartment_0000001*((k9_p* x(29) )-(k_9_p* x(8) * x(30) ))) + (1)*(1)* (compartment_compartment_0000001*((k8_p* x(22) )-(k_8_p* x(29) * x(17) ))) );
	
//x(30)   ID: ShP  initialValue: 0
	(1/compartment_compartment_0000001)*( (-1)*(1)* ((compartment_compartment_0000001*V10_p* x(30) )/(K10_p+ x(30) )) + (1)*(1)* (compartment_compartment_0000001*((k9_p* x(29) )-(k_9_p* x(8) * x(30) ))) );
	
//x(31)   ID: Shc  initialValue: 1000
	(1/compartment_compartment_0000001)*( (-1)*(1)* (compartment_compartment_0000001*((k5_p* x(17) * x(31) )-(k_5_p* x(24) ))) + (1)*(1)* ((compartment_compartment_0000001*V10_p* x(30) )/(K10_p+ x(30) )) );
	
//x(32)   ID: P_I  initialValue: 800
	(1/compartment_compartment_0000001)*( (-1)*(1)* ((compartment_compartment_0000001*k27_p* x(14) * x(32) )/(K27_p+ x(32) )) + (1)*(1)* (compartment_compartment_0000001*((V28_p* x(15) )/(K28_p+ x(15) ))) );
	
//x(33)   ID: internalization  initialValue: 0
	(1/compartment_compartment_0000001)*( (1)*(1)* (compartment_compartment_0000001*((k34_p* x(17) )-(k_34_p* x(33) ))) )
	];


	
endfunction
        x0=[10;0;0;0;1000;0;0;10;330;120;0;0;10;0;0;80;0;0;0;0;0;0;0;0;100;0;120;0;0;0;1000;800;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)' 'x(14)' 'x(15)' 'x(16)' 'x(17)' 'x(18)' 'x(19)' 'x(20)' 'x(21)' 'x(22)' 'x(23)' 'x(24)' 'x(25)' 'x(26)' 'x(27)' 'x(28)' 'x(29)' 'x(30)' 'x(31)' 'x(32)' 'x(33)'],[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18;19;20;21;22;23;24;25;26;27;28;29;30;31;32;33])

//real_variable:
	
	
//x(1)   id: Akt  initialValue: 10
	
//x(2)   id: AktPIP3  initialValue: 0
	
//x(3)   id: AktPIP  initialValue: 0
	
//x(4)   id: AktPIPP  initialValue: 0
	
//x(5)   id: ERK  initialValue: 1000
	
//x(6)   id: ERKP  initialValue: 0
	
//x(7)   id: ERKPP  initialValue: 0
	
//x(8)   id: GS  initialValue: 10
	
//x(9)   id: HRG  initialValue: 330
	
//x(10)   id: MEK  initialValue: 120
	
//x(11)   id: MEKP  initialValue: 0
	
//x(12)   id: MEKPP  initialValue: 0
	
//x(13)   id: PI3K  initialValue: 10
	
//x(14)   id: PI3Kstar  initialValue: 0
	
//x(15)   id: PIP3  initialValue: 0
	
//x(16)   id: R  initialValue: 80
	
//x(17)   id: RP  initialValue: 0
	
//x(18)   id: RHRG  initialValue: 0
	
//x(19)   id: RHRG2  initialValue: 0
	
//x(20)   id: RPI3K  initialValue: 0
	
//x(21)   id: RPI3Kstar  initialValue: 0
	
//x(22)   id: RShGS  initialValue: 0
	
//x(23)   id: RShP  initialValue: 0
	
//x(24)   id: RShc  initialValue: 0
	
//x(25)   id: Raf  initialValue: 100
	
//x(26)   id: Rafstar  initialValue: 0
	
//x(27)   id: RasGDP  initialValue: 120
	
//x(28)   id: RasGTP  initialValue: 0
	
//x(29)   id: ShGS  initialValue: 0
	
//x(30)   id: ShP  initialValue: 0
	
//x(31)   id: Shc  initialValue: 1000
	
//x(32)   id: P_I  initialValue: 800
	
//x(33)   id: internalization  initialValue: 0