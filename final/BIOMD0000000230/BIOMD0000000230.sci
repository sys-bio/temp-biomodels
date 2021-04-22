
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_compartment   id: compartment
	compartment_compartment=1;
		
// k1_p   id: k1
	k1_p=0.5;
		
// k2_p   id: k2
	k2_p=0.0005;
		
// k3_p   id: k3
	k3_p=0.5;
		
// k4_p   id: k4
	k4_p=0.0005;
		
// k5_p   id: k5
	k5_p=0.5;
		
// k6_p   id: k6
	k6_p=0.0005;
		
// k7_p   id: k7
	k7_p=0.5;
		
// k8_p   id: k8
	k8_p=0.0005;
		
// k9_p   id: k9
	k9_p=0.0204;
		
// k10_p   id: k10
	k10_p=0.5;
		
// k11_p   id: k11
	k11_p=0.0005;
		
// k12_p   id: k12
	k12_p=0.0075;
		
// k13_p   id: k13
	k13_p=0.5;
		
// k14_p   id: k14
	k14_p=0.0005;
		
// k15_p   id: k15
	k15_p=0.011;
		
// k16_p   id: k16
	k16_p=2.25E-5;
		
// k17_p   id: k17
	k17_p=2.25E-5;
		
// k18_p   id: k18
	k18_p=2.25E-5;
		
// k19_p   id: k19
	k19_p=0.09;
		
// k20_p   id: k20
	k20_p=8E-5;
		
// k21_p   id: k21
	k21_p=0.5;
		
// k22_p   id: k22
	k22_p=0.0005;
		
// k23_p   id: k23
	k23_p=0.5;
		
// k24_p   id: k24
	k24_p=0.0005;
		
// k25_p   id: k25
	k25_p=0.5;
		
// k26_p   id: k26
	k26_p=0.0005;
		
// k27_p   id: k27
	k27_p=1.54E-6;
		
// k28_p   id: k28
	k28_p=0.0165;
		
// k29_p   id: k29
	k29_p=0.00028;
		
// k30_p   id: k30
	k30_p=1.78E-7;
		
// k31_p   id: k31
	k31_p=0.00028;
		
// k32_p   id: k32
	k32_p=1.27E-7;
		
// k33_p   id: k33
	k33_p=0.00028;
		
// k34_p   id: k34
	k34_p=0.0225;
		
// k35_p   id: k35
	k35_p=0.00125;
		
// k36_p   id: k36
	k36_p=0.00408;
		
// k37_p   id: k37
	k37_p=0.000113;
		
// k38_p   id: k38
	k38_p=0.0003;
		
// k39_p   id: k39
	k39_p=0.0002;
		
// k40_p   id: k40
	k40_p=0.006;
		
// k41_p   id: k41
	k41_p=0.00175;
		
// k42_p   id: k42
	k42_p=0.00408;
		
// k43_p   id: k43
	k43_p=0.000113;
		
// k44_p   id: k44
	k44_p=0.00015;
		
// k45_p   id: k45
	k45_p=0.0001;
		
// k46_p   id: k46
	k46_p=0.009;
		
// k47_p   id: k47
	k47_p=0.00175;
		
// k48_p   id: k48
	k48_p=0.00408;
		
// k49_p   id: k49
	k49_p=0.000113;
		
// k50_p   id: k50
	k50_p=0.00015;
		
// k51_p   id: k51
	k51_p=0.0001;
		
// k52_p   id: k52
	k52_p=0.185;
		
// k53_p   id: k53
	k53_p=0.00125;
		
// k54_p   id: k54
	k54_p=0.0138;
		
// k55_p   id: k55
	k55_p=0.048;
		
// k56_p   id: k56
	k56_p=0.00175;
		
// k57_p   id: k57
	k57_p=0.0052;
		
// k58_p   id: k58
	k58_p=0.07;
		
// k59_p   id: k59
	k59_p=0.00175;
		
// k60_p   id: k60
	k60_p=0.0052;
		
// k61_p   id: k61
	k61_p=0.00012;
		
// k62_p   id: k62
	k62_p=0.00407;
		
// k63_p   id: k63
	k63_p=0.0015;
		
// k64_p   id: k64
	k64_p=0.0022;
		
// source_s   id: source
	source_s=1;
		
// sink_s   id: sink
	sink_s=0;
		



xdot=[
//x(1)   ID: NFkB  initialValue: 0.00025081
	(1/compartment_compartment)*( (-1)*(1)* (k7_p* x(2) * x(1) ) + (-1)*(1)* (k10_p* x(6) * x(1) ) + (-1)*(1)* (k13_p* x(9) * x(1) ) + (-1)*(1)* (k1_p* x(5) * x(1) ) + (-1)*(1)* (k3_p* x(8) * x(1) ) + (-1)*(1)* (k5_p* x(11) * x(1) ) + (-1)*(1)* (k19_p* x(1) ) + (1)*(1)* (k9_p* x(3) ) + (1)*(1)* (k8_p* x(3) ) + (1)*(1)* (k12_p* x(7) ) + (1)*(1)* (k11_p* x(7) ) + (1)*(1)* (k15_p* x(10) ) + (1)*(1)* (k14_p* x(10) ) + (1)*(1)* (k2_p* x(12) ) + (1)*(1)* (k16_p* x(12) ) + (1)*(1)* (k4_p* x(13) ) + (1)*(1)* (k17_p* x(13) ) + (1)*(1)* (k6_p* x(14) ) + (1)*(1)* (k18_p* x(14) ) + (1)*(1)* (k20_p* x(16) ) );
	
//x(2)   ID: IKKIkBa  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (k7_p* x(2) * x(1) ) + (-1)*(1)* (k62_p* x(2) ) + (-1)*(1)* (k35_p* x(2) ) + (1)*(1)* (k8_p* x(3) ) + (1)*(1)* (k34_p* x(4) * x(5) ) );
	
//x(3)   ID: IKKIkBaNFkB  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (k9_p* x(3) ) + (-1)*(1)* (k8_p* x(3) ) + (-1)*(1)* (k53_p* x(3) ) + (1)*(1)* (k7_p* x(2) * x(1) ) + (1)*(1)* (k52_p* x(4) * x(12) ) );
	
//x(4)   ID: IKK  initialValue: 0.1
	(1/compartment_compartment)*( (-1)*(1)* (k34_p* x(4) * x(5) ) + (-1)*(1)* (k40_p* x(4) * x(8) ) + (-1)*(1)* (k46_p* x(4) * x(11) ) + (-1)*(1)* (k52_p* x(4) * x(12) ) + (-1)*(1)* (k55_p* x(4) * x(13) ) + (-1)*(1)* (k58_p* x(4) * x(14) ) + (-1)*(1)* (k61_p* x(4) ) + (1)*(1)* (k9_p* x(3) ) + (1)*(1)* (k62_p* x(2) ) + (1)*(1)* (k35_p* x(2) ) + (1)*(1)* (k12_p* x(7) ) + (1)*(1)* (k63_p* x(6) ) + (1)*(1)* (k41_p* x(6) ) + (1)*(1)* (k15_p* x(10) ) + (1)*(1)* (k64_p* x(9) ) + (1)*(1)* (k47_p* x(9) ) + (1)*(1)* (k53_p* x(3) ) + (1)*(1)* (k56_p* x(7) ) + (1)*(1)* (k59_p* x(10) ) );
	
//x(5)   ID: IkBa  initialValue: 0.19028
	(1/compartment_compartment)*( (-1)*(1)* (k34_p* x(4) * x(5) ) + (-1)*(1)* (k1_p* x(5) * x(1) ) + (-1)*(1)* (k38_p* x(5) ) + (-1)*(1)* (k37_p* x(5) ) + (1)*(1)* (k35_p* x(2) ) + (1)*(1)* (k2_p* x(12) ) + (1)*(1)* (k39_p* x(17) ) + (1)*(1)* (k36_p* x(15) ) );
	
//x(6)   ID: IKKIkBb  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (k10_p* x(6) * x(1) ) + (-1)*(1)* (k63_p* x(6) ) + (-1)*(1)* (k41_p* x(6) ) + (1)*(1)* (k11_p* x(7) ) + (1)*(1)* (k40_p* x(4) * x(8) ) );
	
//x(7)   ID: IKKIkBbNFkB  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (k12_p* x(7) ) + (-1)*(1)* (k11_p* x(7) ) + (-1)*(1)* (k56_p* x(7) ) + (1)*(1)* (k10_p* x(6) * x(1) ) + (1)*(1)* (k55_p* x(4) * x(13) ) );
	
//x(8)   ID: IkBb  initialValue: 0.021428
	(1/compartment_compartment)*( (-1)*(1)* (k40_p* x(4) * x(8) ) + (-1)*(1)* (k3_p* x(8) * x(1) ) + (-1)*(1)* (k44_p* x(8) ) + (-1)*(1)* (k43_p* x(8) ) + (1)*(1)* (k41_p* x(6) ) + (1)*(1)* (k4_p* x(13) ) + (1)*(1)* (k45_p* x(19) ) + (1)*(1)* (k42_p* x(21) ) );
	
//x(9)   ID: IKKIkBe  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (k13_p* x(9) * x(1) ) + (-1)*(1)* (k64_p* x(9) ) + (-1)*(1)* (k47_p* x(9) ) + (1)*(1)* (k14_p* x(10) ) + (1)*(1)* (k46_p* x(4) * x(11) ) );
	
//x(10)   ID: IKKIkBeNFkB  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (k15_p* x(10) ) + (-1)*(1)* (k14_p* x(10) ) + (-1)*(1)* (k59_p* x(10) ) + (1)*(1)* (k13_p* x(9) * x(1) ) + (1)*(1)* (k58_p* x(4) * x(14) ) );
	
//x(11)   ID: IkBe  initialValue: 0.015307
	(1/compartment_compartment)*( (-1)*(1)* (k46_p* x(4) * x(11) ) + (-1)*(1)* (k5_p* x(11) * x(1) ) + (-1)*(1)* (k50_p* x(11) ) + (-1)*(1)* (k49_p* x(11) ) + (1)*(1)* (k47_p* x(9) ) + (1)*(1)* (k6_p* x(14) ) + (1)*(1)* (k51_p* x(22) ) + (1)*(1)* (k48_p* x(24) ) );
	
//x(12)   ID: IkBaNFkB  initialValue: 0.082062
	(1/compartment_compartment)*( (-1)*(1)* (k52_p* x(4) * x(12) ) + (-1)*(1)* (k2_p* x(12) ) + (-1)*(1)* (k16_p* x(12) ) + (1)*(1)* (k53_p* x(3) ) + (1)*(1)* (k1_p* x(5) * x(1) ) + (1)*(1)* (k54_p* x(18) ) );
	
//x(13)   ID: IkBbNFkB  initialValue: 0.0090963
	(1/compartment_compartment)*( (-1)*(1)* (k55_p* x(4) * x(13) ) + (-1)*(1)* (k4_p* x(13) ) + (-1)*(1)* (k17_p* x(13) ) + (1)*(1)* (k56_p* x(7) ) + (1)*(1)* (k3_p* x(8) * x(1) ) + (1)*(1)* (k57_p* x(20) ) );
	
//x(14)   ID: IkBeNFkB  initialValue: 0.0064977
	(1/compartment_compartment)*( (-1)*(1)* (k58_p* x(4) * x(14) ) + (-1)*(1)* (k6_p* x(14) ) + (-1)*(1)* (k18_p* x(14) ) + (1)*(1)* (k59_p* x(10) ) + (1)*(1)* (k5_p* x(11) * x(1) ) + (1)*(1)* (k60_p* x(23) ) );
	
//x(15)   ID: IkBat  initialValue: 0.0054868
	(1/compartment_compartment)*( (-1)*(1)* (k29_p* x(15) ) + (1)*(1)* (k28_p* x(16) * x(16) ) + (1)*(1)* (k27_p*source_s) );
	
//x(16)   ID: NFkBn  initialValue: 0.00020366
	(1/compartment_compartment)*( (-1)*(1)* (k21_p* x(17) * x(16) ) + (-1)*(1)* (k23_p* x(19) * x(16) ) + (-1)*(1)* (k25_p* x(22) * x(16) ) + (-1)*(1)* (k20_p* x(16) ) + (1)*(1)* (k22_p* x(18) ) + (1)*(1)* (k24_p* x(20) ) + (1)*(1)* (k26_p* x(23) ) + (1)*(1)* (k19_p* x(1) ) );
	
//x(17)   ID: IkBan  initialValue: 0.19326
	(1/compartment_compartment)*( (-1)*(1)* (k21_p* x(17) * x(16) ) + (-1)*(1)* (k39_p* x(17) ) + (1)*(1)* (k22_p* x(18) ) + (1)*(1)* (k38_p* x(5) ) );
	
//x(18)   ID: IkBanNFkBn  initialValue: 0.0013739
	(1/compartment_compartment)*( (-1)*(1)* (k22_p* x(18) ) + (-1)*(1)* (k54_p* x(18) ) + (1)*(1)* (k21_p* x(17) * x(16) ) );
	
//x(19)   ID: IkBbn  initialValue: 0.021887
	(1/compartment_compartment)*( (-1)*(1)* (k23_p* x(19) * x(16) ) + (-1)*(1)* (k45_p* x(19) ) + (1)*(1)* (k24_p* x(20) ) + (1)*(1)* (k44_p* x(8) ) );
	
//x(20)   ID: IkBbnNFkBn  initialValue: 0.00030061
	(1/compartment_compartment)*( (-1)*(1)* (k24_p* x(20) ) + (-1)*(1)* (k57_p* x(20) ) + (1)*(1)* (k23_p* x(19) * x(16) ) );
	
//x(21)   ID: IkBbt  initialValue: 0.00063696
	(1/compartment_compartment)*( (-1)*(1)* (k31_p* x(21) ) + (1)*(1)* (k30_p*source_s) );
	
//x(22)   ID: IkBen  initialValue: 0.015635
	(1/compartment_compartment)*( (-1)*(1)* (k25_p* x(22) * x(16) ) + (-1)*(1)* (k51_p* x(22) ) + (1)*(1)* (k26_p* x(23) ) + (1)*(1)* (k50_p* x(11) ) );
	
//x(23)   ID: IkBenNFkBn  initialValue: 0.00021473
	(1/compartment_compartment)*( (-1)*(1)* (k26_p* x(23) ) + (-1)*(1)* (k60_p* x(23) ) + (1)*(1)* (k25_p* x(22) * x(16) ) );
	
//x(24)   ID: IkBet  initialValue: 0.000455
	(1/compartment_compartment)*( (-1)*(1)* (k33_p* x(24) ) + (1)*(1)* (k32_p*source_s) )
	];


	
endfunction
        x0=[0.00025081;0;0;0.1;0.19028;0;0;0.021428;0;0;0.015307;0.082062;0.0090963;0.0064977;0.0054868;0.00020366;0.19326;0.0013739;0.021887;0.00030061;0.00063696;0.015635;0.00021473;0.000455];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)' 'x(14)' 'x(15)' 'x(16)' 'x(17)' 'x(18)' 'x(19)' 'x(20)' 'x(21)' 'x(22)' 'x(23)' 'x(24)'],[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18;19;20;21;22;23;24])

//real_variable:
	
	
//x(1)   id: NFkB  initialValue: 0.00025081
	
//x(2)   id: IKKIkBa  initialValue: 0
	
//x(3)   id: IKKIkBaNFkB  initialValue: 0
	
//x(4)   id: IKK  initialValue: 0.1
	
//x(5)   id: IkBa  initialValue: 0.19028
	
//x(6)   id: IKKIkBb  initialValue: 0
	
//x(7)   id: IKKIkBbNFkB  initialValue: 0
	
//x(8)   id: IkBb  initialValue: 0.021428
	
//x(9)   id: IKKIkBe  initialValue: 0
	
//x(10)   id: IKKIkBeNFkB  initialValue: 0
	
//x(11)   id: IkBe  initialValue: 0.015307
	
//x(12)   id: IkBaNFkB  initialValue: 0.082062
	
//x(13)   id: IkBbNFkB  initialValue: 0.0090963
	
//x(14)   id: IkBeNFkB  initialValue: 0.0064977
	
//x(15)   id: IkBat  initialValue: 0.0054868
	
//x(16)   id: NFkBn  initialValue: 0.00020366
	
//x(17)   id: IkBan  initialValue: 0.19326
	
//x(18)   id: IkBanNFkBn  initialValue: 0.0013739
	
//x(19)   id: IkBbn  initialValue: 0.021887
	
//x(20)   id: IkBbnNFkBn  initialValue: 0.00030061
	
//x(21)   id: IkBbt  initialValue: 0.00063696
	
//x(22)   id: IkBen  initialValue: 0.015635
	
//x(23)   id: IkBenNFkBn  initialValue: 0.00021473
	
//x(24)   id: IkBet  initialValue: 0.000455