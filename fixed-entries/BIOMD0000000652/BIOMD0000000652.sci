
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_Cell   id: Cell
	compartment_Cell=1;
		
// Kcat10a_p   id: Kcat10a
	Kcat10a_p=0.12633;
		
// Kcat10b_p   id: Kcat10b
	Kcat10b_p=15.1212;
		
// Kcat11a_p   id: Kcat11a
	Kcat11a_p=185.76;
		
// Kcat12_p   id: Kcat12
	Kcat12_p=2.8324;
		
// Kcat13_p   id: Kcat13
	Kcat13_p=9.8537;
		
// Kcat14_p   id: Kcat14
	Kcat14_p=8.8912;
		
// Kcat16a_p   id: Kcat16a
	Kcat16a_p=0.8841;
		
// Kcat16b_p   id: Kcat16b
	Kcat16b_p=0.8841;
		
// Kcat17a_p   id: Kcat17a
	Kcat17a_p=0.12633;
		
// Kcat17b_p   id: Kcat17b
	Kcat17b_p=15.1212;
		
// Kcat18b_p   id: Kcat18b
	Kcat18b_p=0.02137;
		
// Kcat19a_p   id: Kcat19a
	Kcat19a_p=10.6737;
		
// Kcat19b_p   id: Kcat19b
	Kcat19b_p=0.07711;
		
// Kcat20_p   id: Kcat20
	Kcat20_p=4;
		
// Kcat21_p   id: Kcat21
	Kcat21_p=5.5;
		
// Kcat22a_p   id: Kcat22a
	Kcat22a_p=0.33;
		
// Kcat22b_p   id: Kcat22b
	Kcat22b_p=48.667;
		
// Kcat23a_p   id: Kcat23a
	Kcat23a_p=694.73;
		
// Kcat24_p   id: Kcat24
	Kcat24_p=32.344;
		
// Kcat25_p   id: Kcat25
	Kcat25_p=1509.4;
		
// Kcat27a_p   id: Kcat27a
	Kcat27a_p=0.002;
		
// Kcat27b_p   id: Kcat27b
	Kcat27b_p=0.04596;
		
// Kcat27d_p   id: Kcat27d
	Kcat27d_p=0.01541;
		
// Kcat6b_p   id: Kcat6b
	Kcat6b_p=1611.97;
		
// Kcat7_p   id: Kcat7
	Kcat7_p=32.644;
		
// Kcat8b_p   id: Kcat8b
	Kcat8b_p=1509.36;
		
// Kcat9a_p   id: Kcat9a
	Kcat9a_p=0.884096;
		
// Km10a_p   id: Km10a
	Km10a_p=1061.7;
		
// Km10b_p   id: Km10b
	Km10b_p=119355;
		
// Km11a_p   id: Km11a
	Km11a_p=4768400;
		
// Km12_p   id: Km12
	Km12_p=518750;
		
// Km13_p   id: Km13
	Km13_p=1007300;
		
// Km14_p   id: Km14
	Km14_p=3496500;
		
// Km16a_p   id: Km16a
	Km16a_p=62645;
		
// Km16b_p   id: Km16b
	Km16b_p=6.24646E4;
		
// Km17a_p   id: Km17a
	Km17a_p=1061.71;
		
// Km17b_p   id: Km17b
	Km17b_p=119355;
		
// Km18b_p   id: Km18b
	Km18b_p=763523;
		
// Km19a_p   id: Km19a
	Km19a_p=184912;
		
// Km19b_p   id: Km19b
	Km19b_p=272056;
		
// Km20_p   id: Km20
	Km20_p=4;
		
// Km21_p   id: Km21
	Km21_p=0.08;
		
// Km22a_p   id: Km22a
	Km22a_p=100;
		
// Km22b_p   id: Km22b
	Km22b_p=100;
		
// Km23a_p   id: Km23a
	Km23a_p=6086100;
		
// Km24_p   id: Km24
	Km24_p=3.59543E4;
		
// Km25_p   id: Km25
	Km25_p=1432400;
		
// Km39_p   id: Km39
	Km39_p=15;
		
// Km6b_p   id: Km6b
	Km6b_p=896896;
		
// Km7_p   id: Km7
	Km7_p=3.59543E4;
		
// Km8b_p   id: Km8b
	Km8b_p=1432410;
		
// Km9a_p   id: Km9a
	Km9a_p=6.24646E4;
		
// Km9b_p   id: Km9b
	Km9b_p=15;
		
// V1_p   id: V1
	V1_p=100;
		
// V15b_p   id: V15b
	V15b_p=4;
		
// V26a_p   id: V26a
	V26a_p=0.00154;
		
// V37b_p   id: V37b
	V37b_p=0.00705;
		
// V8a_p   id: V8a
	V8a_p=0.0717;
		
// W_p   id: W
	W_p=0;
		
// k11b1_p   id: k11b1
	k11b1_p=1.1167E-5;
		
// k11b2_p   id: k11b2
	k11b2_p=120;
		
// k15a_p   id: k15a
	k15a_p=1.3;
		
// k15c_p   id: k15c
	k15c_p=0.00193;
		
// k18a_p   id: k18a
	k18a_p=0.005;
		
// k21_p   id: k21
	k21_p=2.18503E-5;
		
// k22_p   id: k22
	k22_p=0.121008;
		
// k23b_p   id: k23b
	k23b_p=2.5;
		
// k26a_p   id: k26a
	k26a_p=20;
		
// k26b_p   id: k26b
	k26b_p=0.000385;
		
// k27c_p   id: k27c
	k27c_p=0.00015;
		
// k28_p   id: k28
	k28_p=0.003;
		
// k29_p   id: k29
	k29_p=0.003;
		
// k3_p   id: k3
	k3_p=0.00125;
		
// k30_p   id: k30
	k30_p=0.000833;
		
// k311_p   id: k311
	k311_p=0.001515;
		
// k312_p   id: k312
	k312_p=0.01515;
		
// k32a_p   id: k32a
	k32a_p=0.00445;
		
// k32b_p   id: k32b
	k32b_p=0.002217;
		
// k33a1_p   id: k33a1
	k33a1_p=0.01667;
		
// k33a2_p   id: k33a2
	k33a2_p=0.8333;
		
// k33b_p   id: k33b
	k33b_p=0.002783;
		
// k33c1_p   id: k33c1
	k33c1_p=1.37E-6;
		
// k33c2_p   id: k33c2
	k33c2_p=1.667E-8;
		
// k341_p   id: k341
	k341_p=0.01667;
		
// k342_p   id: k342
	k342_p=2;
		
// k35_p   id: k35
	k35_p=3.433;
		
// k36_p   id: k36
	k36_p=3.433;
		
// k37a1_p   id: k37a1
	k37a1_p=0.01667;
		
// k37a2_p   id: k37a2
	k37a2_p=20;
		
// k37c_p   id: k37c
	k37c_p=4.283E-6;
		
// k381_p   id: k381
	k381_p=0.01667;
		
// k382_p   id: k382
	k382_p=0.5;
		
// k39_p   id: k39
	k39_p=0.01;
		
// k4_p   id: k4
	k4_p=0.2;
		
// k40_p   id: k40
	k40_p=0.00025;
		
// k41_p   id: k41
	k41_p=0.00695;
		
// k51_p   id: k51
	k51_p=0.003465;
		
// k52_p   id: k52
	k52_p=3.85E-5;
		
// k53_p   id: k53
	k53_p=0.00028833;
		
// k54_p   id: k54
	k54_p=1.5;
		
// k6a_p   id: k6a
	k6a_p=2.5;
		
// k9b_p   id: k9b
	k9b_p=0.025;
		
// pEGFR_s   id: pEGFR
	pEGFR_s=0.05;
		



xdot=[
//x(1)   ID: APC  initialValue: 96.602
	(1/compartment_Cell)*( (-1)*(1)* (compartment_Cell*()) + (-1)*(1)* (compartment_Cell*()) );
	
//x(2)   ID: APCAxin  initialValue: 0.0015
	(1/compartment_Cell)*( (-1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) );
	
//x(3)   ID: APCAxinGSK3B  initialValue: 0.0076
	(1/compartment_Cell)*( (-1)*(1)* (compartment_Cell*()) + (-1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) );
	
//x(4)   ID: APCBCatenin  initialValue: 3.4392
	(1/compartment_Cell)*( (1)*(1)* (compartment_Cell*()) );
	
//x(5)   ID: Akt  initialValue: 200
	(1/compartment_Cell)*( (-1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) );
	
//x(6)   ID: Axin  initialValue: 0.0008
	(1/compartment_Cell)*( (-1)*(1)* (compartment_Cell*()) + (-1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) );
	
//x(7)   ID: BCatenin  initialValue: 42.722
	(1/compartment_Cell)*( (-1)*(1)* (compartment_Cell*()) + (-1)*(1)* (compartment_Cell*()) + (-1)*(1)* (compartment_Cell*()) + (-1)*(1)* (compartment_Cell*()) + (-1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) );
	
//x(8)   ID: BRaf  initialValue: 200
	(1/compartment_Cell)*( (-1)*(1)* (compartment_Cell*()) + (-1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) );
	
//x(9)   ID: C3G  initialValue: 500
	(1/compartment_Cell)*( (-1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) );
	
//x(10)   ID: Dsha  initialValue: 0
	(1/compartment_Cell)*( (-1)*(1)* (compartment_Cell*()) + (-1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) );
	
//x(11)   ID: Dshi  initialValue: 100
	(1/compartment_Cell)*( (-1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) );
	
//x(12)   ID: EGF  initialValue: 600
	(1/compartment_Cell)*( (-1)*(1)* (compartment_Cell*()) );
	
//x(13)   ID: ERK  initialValue: 260
	(1/compartment_Cell)*( (-1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) );
	
//x(14)   ID: GSK3B  initialValue: 49.137
	(1/compartment_Cell)*( (-1)*(1)* (compartment_Cell*()) + (-1)*(1)* (compartment_Cell*()) + (-1)*(1)* (compartment_Cell*()) + (-1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) );
	
//x(15)   ID: MEK  initialValue: 680
	(1/compartment_Cell)*( (-1)*(1)* (compartment_Cell*()) + (-1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) );
	
//x(16)   ID: P90Rsk  initialValue: 60
	(1/compartment_Cell)*( (-1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) );
	
//x(17)   ID: PI3K  initialValue: 100
	(1/compartment_Cell)*( (-1)*(1)* (compartment_Cell*()) + (-1)*(1)* (compartment_Cell*()) );
	
//x(18)   ID: PIP2  initialValue: 700
	(1/compartment_Cell)*( (-1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) );
	
//x(19)   ID: PIP3  initialValue: 0
	(1/compartment_Cell)*( (-1)*(1)* (compartment_Cell*()) + (-1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) );
	
//x(20)   ID: PKCD  initialValue: 0
	(1/compartment_Cell)*( (-1)*(1)* (compartment_Cell*()) + (-1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) );
	
//x(21)   ID: PP2A  initialValue: 240
	(1/compartment_Cell)*( (-1)*(1)* (compartment_Cell*()) + (-1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) );
	
//x(22)   ID: PTEN  initialValue: 270
	(1/compartment_Cell)*( (-1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) );
	
//x(23)   ID: RKIP  initialValue: 20.909
	(1/compartment_Cell)*( (-1)*(1)* (compartment_Cell*()) + (-1)*(1)* (compartment_Cell*()) + (-1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) );
	
//x(24)   ID: Raf1  initialValue: 100
	(1/compartment_Cell)*( (-1)*(1)* (compartment_Cell*()) + (-1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) );
	
//x(25)   ID: RafPPtase  initialValue: 60
	(1/compartment_Cell)*( (-1)*(1)* (compartment_Cell*()) + (-1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) );
	
//x(26)   ID: Rap1  initialValue: 200
	(1/compartment_Cell)*( (-1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) );
	
//x(27)   ID: Rap1Gap  initialValue: 12
	(1/compartment_Cell)*( (-1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) );
	
//x(28)   ID: Ras  initialValue: 100
	(1/compartment_Cell)*( (-1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) );
	
//x(29)   ID: RasGap  initialValue: 100
	(1/compartment_Cell)*( (-1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) );
	
//x(30)   ID: SOS  initialValue: 100
	(1/compartment_Cell)*( (-1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) );
	
//x(31)   ID: TCF  initialValue: 6.1879
	(1/compartment_Cell)*( (-1)*(1)* (compartment_Cell*()) );
	
//x(32)   ID: TCFBCatenin  initialValue: 8.8121
	(1/compartment_Cell)*( (-1)*(1)* (compartment_Cell*()) + (-1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) );
	
//x(33)   ID: X  initialValue: 10.263
	(1/compartment_Cell)*( (-1)*(1)* (compartment_Cell*()) + (-1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) );
	
//x(34)   ID: bEGFR  initialValue: 0
	(1/compartment_Cell)*( (-1)*(1)* (compartment_Cell*()) + (-1)*(1)* (compartment_Cell*()) + (-1)*(1)* (compartment_Cell*()) + (-1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) );
	
//x(35)   ID: fEGFR  initialValue: 300
	(1/compartment_Cell)*( (-1)*(1)* (compartment_Cell*()) + (-1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) );
	
//x(36)   ID: pAPCpAxinGSK3B  initialValue: 0.0153
	(1/compartment_Cell)*( (-1)*(1)* (compartment_Cell*()) + (-1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) );
	
//x(37)   ID: pAPCpAxinGSK3BBCatenin  initialValue: 0.002
	(1/compartment_Cell)*( (-1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) );
	
//x(38)   ID: pAPCpAxinGSK3BpBCatenin  initialValue: 0.002
	(1/compartment_Cell)*( (-1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) );
	
//x(39)   ID: pAkt  initialValue: 0
	(1/compartment_Cell)*( (-1)*(1)* (compartment_Cell*()) + (-1)*(1)* (compartment_Cell*()) + (-1)*(1)* (compartment_Cell*()) + (-1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) );
	
//x(40)   ID: pBCatenin  initialValue: 0.9881
	(1/compartment_Cell)*( (-1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) );
	
//x(41)   ID: pBRaf  initialValue: 0
	(1/compartment_Cell)*( (-1)*(1)* (compartment_Cell*()) + (-1)*(1)* (compartment_Cell*()) + (-1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) );
	
//x(42)   ID: pC3G  initialValue: 0
	(1/compartment_Cell)*( (-1)*(1)* (compartment_Cell*()) + (-1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) );
	
//x(43)   ID: pERK  initialValue: 0
	(1/compartment_Cell)*( (-1)*(1)* (compartment_Cell*()) + (-1)*(1)* (compartment_Cell*()) + (-1)*(1)* (compartment_Cell*()) + (-1)*(1)* (compartment_Cell*()) + (-1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) );
	
//x(44)   ID: pGSK3B  initialValue: 0.85544
	(1/compartment_Cell)*( (-1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) );
	
//x(45)   ID: pMEK  initialValue: 0
	(1/compartment_Cell)*( (-1)*(1)* (compartment_Cell*()) + (-1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) );
	
//x(46)   ID: pP90Rsk  initialValue: 0
	(1/compartment_Cell)*( (-1)*(1)* (compartment_Cell*()) + (-1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) );
	
//x(47)   ID: pPI3K  initialValue: 0
	(1/compartment_Cell)*( (-1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) );
	
//x(48)   ID: pRKIP  initialValue: 0.8619
	(1/compartment_Cell)*( (-1)*(1)* (compartment_Cell*()) + (-1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) );
	
//x(49)   ID: pRaf1  initialValue: 0
	(1/compartment_Cell)*( (-1)*(1)* (compartment_Cell*()) + (-1)*(1)* (compartment_Cell*()) + (-1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) );
	
//x(50)   ID: pRap1  initialValue: 0
	(1/compartment_Cell)*( (-1)*(1)* (compartment_Cell*()) + (-1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) );
	
//x(51)   ID: pRas  initialValue: 0
	(1/compartment_Cell)*( (-1)*(1)* (compartment_Cell*()) + (-1)*(1)* (compartment_Cell*()) + (-1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) );
	
//x(52)   ID: pSOS  initialValue: 0
	(1/compartment_Cell)*( (-1)*(1)* (compartment_Cell*()) + (-1)*(1)* (compartment_Cell*()) + (-1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) );
	
//x(53)   ID: null  initialValue: 1
	(1/compartment_Cell)*( (-1)*(1)* (compartment_Cell*()) + (-1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) + (1)*(1)* (compartment_Cell*()) )
	];


	
endfunction
        x0=[96.602;0.0015;0.0076;3.4392;200;0.0008;42.722;200;500;0;100;600;260;49.137;680;60;100;700;0;0;240;270;20.909;100;60;200;12;100;100;100;6.1879;8.8121;10.263;0;300;0.0153;0.002;0.002;0;0.9881;0;0;0;0.85544;0;0;0;0.8619;0;0;0;0;1];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)' 'x(14)' 'x(15)' 'x(16)' 'x(17)' 'x(18)' 'x(19)' 'x(20)' 'x(21)' 'x(22)' 'x(23)' 'x(24)' 'x(25)' 'x(26)' 'x(27)' 'x(28)' 'x(29)' 'x(30)' 'x(31)' 'x(32)' 'x(33)' 'x(34)' 'x(35)' 'x(36)' 'x(37)' 'x(38)' 'x(39)' 'x(40)' 'x(41)' 'x(42)' 'x(43)' 'x(44)' 'x(45)' 'x(46)' 'x(47)' 'x(48)' 'x(49)' 'x(50)' 'x(51)' 'x(52)' 'x(53)'],[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18;19;20;21;22;23;24;25;26;27;28;29;30;31;32;33;34;35;36;37;38;39;40;41;42;43;44;45;46;47;48;49;50;51;52;53])

//real_variable:
	
	
//x(1)   id: APC  initialValue: 96.602
	
//x(2)   id: APCAxin  initialValue: 0.0015
	
//x(3)   id: APCAxinGSK3B  initialValue: 0.0076
	
//x(4)   id: APCBCatenin  initialValue: 3.4392
	
//x(5)   id: Akt  initialValue: 200
	
//x(6)   id: Axin  initialValue: 0.0008
	
//x(7)   id: BCatenin  initialValue: 42.722
	
//x(8)   id: BRaf  initialValue: 200
	
//x(9)   id: C3G  initialValue: 500
	
//x(10)   id: Dsha  initialValue: 0
	
//x(11)   id: Dshi  initialValue: 100
	
//x(12)   id: EGF  initialValue: 600
	
//x(13)   id: ERK  initialValue: 260
	
//x(14)   id: GSK3B  initialValue: 49.137
	
//x(15)   id: MEK  initialValue: 680
	
//x(16)   id: P90Rsk  initialValue: 60
	
//x(17)   id: PI3K  initialValue: 100
	
//x(18)   id: PIP2  initialValue: 700
	
//x(19)   id: PIP3  initialValue: 0
	
//x(20)   id: PKCD  initialValue: 0
	
//x(21)   id: PP2A  initialValue: 240
	
//x(22)   id: PTEN  initialValue: 270
	
//x(23)   id: RKIP  initialValue: 20.909
	
//x(24)   id: Raf1  initialValue: 100
	
//x(25)   id: RafPPtase  initialValue: 60
	
//x(26)   id: Rap1  initialValue: 200
	
//x(27)   id: Rap1Gap  initialValue: 12
	
//x(28)   id: Ras  initialValue: 100
	
//x(29)   id: RasGap  initialValue: 100
	
//x(30)   id: SOS  initialValue: 100
	
//x(31)   id: TCF  initialValue: 6.1879
	
//x(32)   id: TCFBCatenin  initialValue: 8.8121
	
//x(33)   id: X  initialValue: 10.263
	
//x(34)   id: bEGFR  initialValue: 0
	
//x(35)   id: fEGFR  initialValue: 300
	
//x(36)   id: pAPCpAxinGSK3B  initialValue: 0.0153
	
//x(37)   id: pAPCpAxinGSK3BBCatenin  initialValue: 0.002
	
//x(38)   id: pAPCpAxinGSK3BpBCatenin  initialValue: 0.002
	
//x(39)   id: pAkt  initialValue: 0
	
//x(40)   id: pBCatenin  initialValue: 0.9881
	
//x(41)   id: pBRaf  initialValue: 0
	
//x(42)   id: pC3G  initialValue: 0
	
//x(43)   id: pERK  initialValue: 0
	
//x(44)   id: pGSK3B  initialValue: 0.85544
	
//x(45)   id: pMEK  initialValue: 0
	
//x(46)   id: pP90Rsk  initialValue: 0
	
//x(47)   id: pPI3K  initialValue: 0
	
//x(48)   id: pRKIP  initialValue: 0.8619
	
//x(49)   id: pRaf1  initialValue: 0
	
//x(50)   id: pRap1  initialValue: 0
	
//x(51)   id: pRas  initialValue: 0
	
//x(52)   id: pSOS  initialValue: 0
	
//x(53)   id: null  initialValue: 1