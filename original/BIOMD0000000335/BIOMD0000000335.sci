
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_compartment_1   id: compartment_1
	compartment_compartment_1=1;
		
// k1_p   id: k1
	k1_p=0.0031;
		
// k2_p   id: k2
	k2_p=3200000;
		
// k3_p   id: k3
	k3_p=0.0031;
		
// k4_p   id: k4
	k4_p=23000000;
		
// k5_p   id: k5
	k5_p=440000;
		
// k6_p   id: k6
	k6_p=13000000;
		
// k7_p   id: k7
	k7_p=23000;
		
// k8_p   id: k8
	k8_p=1.05;
		
// k9_p   id: k9
	k9_p=25000000;
		
// k10_p   id: k10
	k10_p=6;
		
// k11_p   id: k11
	k11_p=19;
		
// k12_p   id: k12
	k12_p=22000000;
		
// k13_p   id: k13
	k13_p=2.4;
		
// k14_p   id: k14
	k14_p=10000000;
		
// k15_p   id: k15
	k15_p=1.8;
		
// k16_p   id: k16
	k16_p=7500;
		
// k17_p   id: k17
	k17_p=20000000;
		
// k18_p   id: k18
	k18_p=0.005;
		
// k19_p   id: k19
	k19_p=10000000;
		
// k20_p   id: k20
	k20_p=0.001;
		
// k21_p   id: k21
	k21_p=100000000;
		
// k22_p   id: k22
	k22_p=8.2;
		
// k23_p   id: k23
	k23_p=22000;
		
// k24_p   id: k24
	k24_p=0.006;
		
// k25_p   id: k25
	k25_p=0.001;
		
// k26_p   id: k26
	k26_p=20000000;
		
// k27_p   id: k27
	k27_p=0.2;
		
// k28_p   id: k28
	k28_p=400000000;
		
// k29_p   id: k29
	k29_p=103;
		
// k30_p   id: k30
	k30_p=100000000;
		
// k31_p   id: k31
	k31_p=63.5;
		
// k32_p   id: k32
	k32_p=15000000;
		
// k33_p   id: k33
	k33_p=0.00036;
		
// k34_p   id: k34
	k34_p=900000;
		
// k35_p   id: k35
	k35_p=0.00011;
		
// k36_p   id: k36
	k36_p=320000000;
		
// k37_p   id: k37
	k37_p=50000000;
		
// k38_p   id: k38
	k38_p=1500;
		
// k39_p   id: k39
	k39_p=7100;
		
// k40_p   id: k40
	k40_p=490;
		
// k41_p   id: k41
	k41_p=7100;
		
// k42_p   id: k42
	k42_p=230;
		
// IIa_plus_1_2mIIa_p   id: IIa_plus_1_2mIIa
	IIa_plus_1_2mIIa_p=0;
		



xdot=[
//x(1)   ID: TF  initialValue: 2.5E-11
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((k2_p* x(1) * x(3) )-(k1_p* x(2) ))) + (-1)*(1)* (compartment_compartment_1*((k4_p* x(1) * x(5) )-(k3_p* x(4) ))) );
	
//x(2)   ID: TF_VII  initialValue: 0
	(1/compartment_compartment_1)*( (1)*(1)* (compartment_compartment_1*((k2_p* x(1) * x(3) )-(k1_p* x(2) ))) );
	
//x(3)   ID: VII  initialValue: 1E-8
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((k2_p* x(1) * x(3) )-(k1_p* x(2) ))) + (-1)*(1)* (compartment_compartment_1*k5_p* x(4) * x(3) ) + (-1)*(1)* (compartment_compartment_1*k6_p* x(6) * x(3) ) + (-1)*(1)* (compartment_compartment_1*k7_p* x(7) * x(3) ) );
	
//x(4)   ID: TF_VIIa  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*k5_p* x(4) * x(3) ) + (-1)*(1)* (compartment_compartment_1*((k9_p* x(4) * x(9) )-(k8_p* x(8) ))) + (-1)*(1)* (compartment_compartment_1*((k12_p* x(4) * x(6) )-(k11_p* x(10) ))) + (-1)*(1)* (compartment_compartment_1*((k14_p* x(4) * x(11) )-(k13_p* x(12) ))) + (-1)*(1)* (compartment_compartment_1*k37_p* x(4) * x(27) ) + (-1)*(1)* (compartment_compartment_1*k42_p* x(4) * x(29) ) + (1)*(1)* (compartment_compartment_1*((k4_p* x(1) * x(5) )-(k3_p* x(4) ))) + (1)*(1)* (compartment_compartment_1*k5_p* x(4) * x(3) ) + (1)*(1)* (compartment_compartment_1*k15_p* x(12) ) );
	
//x(5)   ID: VIIa  initialValue: 1E-10
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((k4_p* x(1) * x(5) )-(k3_p* x(4) ))) + (1)*(1)* (compartment_compartment_1*k5_p* x(4) * x(3) ) + (1)*(1)* (compartment_compartment_1*k6_p* x(6) * x(3) ) + (1)*(1)* (compartment_compartment_1*k7_p* x(7) * x(3) ) );
	
//x(6)   ID: Xa  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*k6_p* x(6) * x(3) ) + (-1)*(1)* (compartment_compartment_1*((k12_p* x(4) * x(6) )-(k11_p* x(10) ))) + (-1)*(1)* (compartment_compartment_1*k16_p* x(6) * x(14) ) + (-1)*(1)* (compartment_compartment_1*((k28_p* x(6) * x(22) )-(k27_p* x(23) ))) + (-1)*(1)* (compartment_compartment_1*((k34_p* x(6) * x(26) )-(k33_p* x(27) ))) + (-1)*(1)* (compartment_compartment_1*k38_p* x(6) * x(29) ) + (1)*(1)* (compartment_compartment_1*k6_p* x(6) * x(3) ) + (1)*(1)* (compartment_compartment_1*k16_p* x(6) * x(14) ) + (1)*(1)* (compartment_compartment_1*k22_p* x(18) ) );
	
//x(7)   ID: IIa  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*k7_p* x(7) * x(3) ) + (-1)*(1)* (compartment_compartment_1*k17_p* x(7) * x(15) ) + (-1)*(1)* (compartment_compartment_1*k26_p* x(7) * x(21) ) + (-1)*(1)* (compartment_compartment_1*k41_p* x(7) * x(29) ) + (1)*(1)* (compartment_compartment_1*k7_p* x(7) * x(3) ) + (1)*(1)* (compartment_compartment_1*k16_p* x(6) * x(14) ) + (1)*(1)* (compartment_compartment_1*k17_p* x(7) * x(15) ) + (1)*(1)* (compartment_compartment_1*k26_p* x(7) * x(21) ) + (1)*(1)* (compartment_compartment_1*k32_p* x(25) * x(23) ) );
	
//x(8)   ID: TF_VIIa_X  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*k10_p* x(8) ) + (1)*(1)* (compartment_compartment_1*((k9_p* x(4) * x(9) )-(k8_p* x(8) ))) );
	
//x(9)   ID: X  initialValue: 1.6E-7
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((k9_p* x(4) * x(9) )-(k8_p* x(8) ))) + (-1)*(1)* (compartment_compartment_1*((k21_p* x(17) * x(9) )-(k20_p* x(18) ))) + (1)*(1)* (compartment_compartment_1*k25_p* x(18) ) );
	
//x(10)   ID: TF_VIIa_Xa  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((k36_p* x(10) * x(26) )-(k35_p* x(28) ))) + (1)*(1)* (compartment_compartment_1*((k12_p* x(4) * x(6) )-(k11_p* x(10) ))) + (1)*(1)* (compartment_compartment_1*k10_p* x(8) ) );
	
//x(11)   ID: IX  initialValue: 9E-8
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((k14_p* x(4) * x(11) )-(k13_p* x(12) ))) );
	
//x(12)   ID: TF_VIIa_IX  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*k15_p* x(12) ) + (1)*(1)* (compartment_compartment_1*((k14_p* x(4) * x(11) )-(k13_p* x(12) ))) );
	
//x(13)   ID: IXa  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((k19_p* x(13) * x(16) )-(k18_p* x(17) ))) + (-1)*(1)* (compartment_compartment_1*k40_p* x(13) * x(29) ) + (1)*(1)* (compartment_compartment_1*k25_p* x(18) ) + (1)*(1)* (compartment_compartment_1*k25_p* x(17) ) + (1)*(1)* (compartment_compartment_1*k15_p* x(12) ) );
	
//x(14)   ID: II  initialValue: 1.4E-6
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*k16_p* x(6) * x(14) ) + (-1)*(1)* (compartment_compartment_1*((k30_p* x(23) * x(14) )-(k29_p* x(24) ))) );
	
//x(15)   ID: VIII  initialValue: 7E-10
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*k17_p* x(7) * x(15) ) );
	
//x(16)   ID: VIIIa  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((k19_p* x(13) * x(16) )-(k18_p* x(17) ))) + (-1)*(1)* (compartment_compartment_1*((k24_p* x(16) )-(k23_p* x(19) * x(20) ))) + (1)*(1)* (compartment_compartment_1*k17_p* x(7) * x(15) ) );
	
//x(17)   ID: IXa_VIIIa  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((k21_p* x(17) * x(9) )-(k20_p* x(18) ))) + (-1)*(1)* (compartment_compartment_1*k25_p* x(17) ) + (1)*(1)* (compartment_compartment_1*((k19_p* x(13) * x(16) )-(k18_p* x(17) ))) + (1)*(1)* (compartment_compartment_1*k22_p* x(18) ) );
	
//x(18)   ID: IXa_VIIIa_X  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*k25_p* x(18) ) + (-1)*(1)* (compartment_compartment_1*k22_p* x(18) ) + (1)*(1)* (compartment_compartment_1*((k21_p* x(17) * x(9) )-(k20_p* x(18) ))) );
	
//x(19)   ID: VIIIa1_L  initialValue: 0
	(1/compartment_compartment_1)*( (1)*(1)* (compartment_compartment_1*((k24_p* x(16) )-(k23_p* x(19) * x(20) ))) + (1)*(1)* (compartment_compartment_1*k25_p* x(18) ) + (1)*(1)* (compartment_compartment_1*k25_p* x(17) ) );
	
//x(20)   ID: VIIIa2  initialValue: 0
	(1/compartment_compartment_1)*( (1)*(1)* (compartment_compartment_1*((k24_p* x(16) )-(k23_p* x(19) * x(20) ))) + (1)*(1)* (compartment_compartment_1*k25_p* x(18) ) + (1)*(1)* (compartment_compartment_1*k25_p* x(17) ) );
	
//x(21)   ID: V  initialValue: 2E-8
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*k26_p* x(7) * x(21) ) );
	
//x(22)   ID: Va  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((k28_p* x(6) * x(22) )-(k27_p* x(23) ))) + (1)*(1)* (compartment_compartment_1*k26_p* x(7) * x(21) ) );
	
//x(23)   ID: Xa_Va  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((k30_p* x(23) * x(14) )-(k29_p* x(24) ))) + (-1)*(1)* (compartment_compartment_1*k32_p* x(25) * x(23) ) + (1)*(1)* (compartment_compartment_1*((k28_p* x(6) * x(22) )-(k27_p* x(23) ))) + (1)*(1)* (compartment_compartment_1*k32_p* x(25) * x(23) ) + (1)*(1)* (compartment_compartment_1*k31_p* x(24) ) );
	
//x(24)   ID: Xa_Va_II  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*k31_p* x(24) ) + (1)*(1)* (compartment_compartment_1*((k30_p* x(23) * x(14) )-(k29_p* x(24) ))) );
	
//x(25)   ID: mIIa  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*k32_p* x(25) * x(23) ) + (-1)*(1)* (compartment_compartment_1*k39_p* x(25) * x(29) ) + (1)*(1)* (compartment_compartment_1*k31_p* x(24) ) );
	
//x(26)   ID: TFPI  initialValue: 2.5E-9
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((k34_p* x(6) * x(26) )-(k33_p* x(27) ))) + (-1)*(1)* (compartment_compartment_1*((k36_p* x(10) * x(26) )-(k35_p* x(28) ))) );
	
//x(27)   ID: Xa_TFPI  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*k37_p* x(4) * x(27) ) + (1)*(1)* (compartment_compartment_1*((k34_p* x(6) * x(26) )-(k33_p* x(27) ))) );
	
//x(28)   ID: TF_VIIa_Xa_TFPI  initialValue: 0
	(1/compartment_compartment_1)*( (1)*(1)* (compartment_compartment_1*((k36_p* x(10) * x(26) )-(k35_p* x(28) ))) + (1)*(1)* (compartment_compartment_1*k37_p* x(4) * x(27) ) );
	
//x(29)   ID: ATIII  initialValue: 3.4E-6
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*k38_p* x(6) * x(29) ) + (-1)*(1)* (compartment_compartment_1*k39_p* x(25) * x(29) ) + (-1)*(1)* (compartment_compartment_1*k40_p* x(13) * x(29) ) + (-1)*(1)* (compartment_compartment_1*k41_p* x(7) * x(29) ) + (-1)*(1)* (compartment_compartment_1*k42_p* x(4) * x(29) ) );
	
//x(30)   ID: Xa_ATIII  initialValue: 0
	(1/compartment_compartment_1)*( (1)*(1)* (compartment_compartment_1*k38_p* x(6) * x(29) ) );
	
//x(31)   ID: mIIa_ATIII  initialValue: 0
	(1/compartment_compartment_1)*( (1)*(1)* (compartment_compartment_1*k39_p* x(25) * x(29) ) );
	
//x(32)   ID: IXa_ATIII  initialValue: 0
	(1/compartment_compartment_1)*( (1)*(1)* (compartment_compartment_1*k40_p* x(13) * x(29) ) );
	
//x(33)   ID: IIa_ATIII  initialValue: 0
	(1/compartment_compartment_1)*( (1)*(1)* (compartment_compartment_1*k41_p* x(7) * x(29) ) );
	
//x(34)   ID: TF_VIIa_ATIII  initialValue: 0
	(1/compartment_compartment_1)*( (1)*(1)* (compartment_compartment_1*k42_p* x(4) * x(29) ) )
	];


	
endfunction
        x0=[2.5E-11;0;1E-8;0;1E-10;0;0;0;1.6E-7;0;9E-8;0;0;1.4E-6;7E-10;0;0;0;0;0;2E-8;0;0;0;0;2.5E-9;0;0;3.4E-6;0;0;0;0;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)' 'x(14)' 'x(15)' 'x(16)' 'x(17)' 'x(18)' 'x(19)' 'x(20)' 'x(21)' 'x(22)' 'x(23)' 'x(24)' 'x(25)' 'x(26)' 'x(27)' 'x(28)' 'x(29)' 'x(30)' 'x(31)' 'x(32)' 'x(33)' 'x(34)'],[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18;19;20;21;22;23;24;25;26;27;28;29;30;31;32;33;34])

//real_variable:
	
	
//x(1)   id: TF  initialValue: 2.5E-11
	
//x(2)   id: TF_VII  initialValue: 0
	
//x(3)   id: VII  initialValue: 1E-8
	
//x(4)   id: TF_VIIa  initialValue: 0
	
//x(5)   id: VIIa  initialValue: 1E-10
	
//x(6)   id: Xa  initialValue: 0
	
//x(7)   id: IIa  initialValue: 0
	
//x(8)   id: TF_VIIa_X  initialValue: 0
	
//x(9)   id: X  initialValue: 1.6E-7
	
//x(10)   id: TF_VIIa_Xa  initialValue: 0
	
//x(11)   id: IX  initialValue: 9E-8
	
//x(12)   id: TF_VIIa_IX  initialValue: 0
	
//x(13)   id: IXa  initialValue: 0
	
//x(14)   id: II  initialValue: 1.4E-6
	
//x(15)   id: VIII  initialValue: 7E-10
	
//x(16)   id: VIIIa  initialValue: 0
	
//x(17)   id: IXa_VIIIa  initialValue: 0
	
//x(18)   id: IXa_VIIIa_X  initialValue: 0
	
//x(19)   id: VIIIa1_L  initialValue: 0
	
//x(20)   id: VIIIa2  initialValue: 0
	
//x(21)   id: V  initialValue: 2E-8
	
//x(22)   id: Va  initialValue: 0
	
//x(23)   id: Xa_Va  initialValue: 0
	
//x(24)   id: Xa_Va_II  initialValue: 0
	
//x(25)   id: mIIa  initialValue: 0
	
//x(26)   id: TFPI  initialValue: 2.5E-9
	
//x(27)   id: Xa_TFPI  initialValue: 0
	
//x(28)   id: TF_VIIa_Xa_TFPI  initialValue: 0
	
//x(29)   id: ATIII  initialValue: 3.4E-6
	
//x(30)   id: Xa_ATIII  initialValue: 0
	
//x(31)   id: mIIa_ATIII  initialValue: 0
	
//x(32)   id: IXa_ATIII  initialValue: 0
	
//x(33)   id: IIa_ATIII  initialValue: 0
	
//x(34)   id: TF_VIIa_ATIII  initialValue: 0