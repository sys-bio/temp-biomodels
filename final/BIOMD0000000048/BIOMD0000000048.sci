
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_compartment   id: compartment
	compartment_compartment=3E-12;
		
// k1f_v1   id: k1f     reactionID: v1
	k1f_v1=0.003;
	
// k1b_v1   id: k1b     reactionID: v1
	k1b_v1=0.06;
	
// k2f_v2   id: k2f     reactionID: v2
	k2f_v2=0.01;
	
// k2b_v2   id: k2b     reactionID: v2
	k2b_v2=0.1;
	
// k3f_v3   id: k3f     reactionID: v3
	k3f_v3=1;
	
// k3b_v3   id: k3b     reactionID: v3
	k3b_v3=0.01;
	
// V4_v4   id: V4     reactionID: v4
	V4_v4=450;
	
// K4_v4   id: K4     reactionID: v4
	K4_v4=50;
	
// k5f_v5   id: k5f     reactionID: v5
	k5f_v5=0.06;
	
// k5b_v5   id: k5b     reactionID: v5
	k5b_v5=0.2;
	
// k6f_v6   id: k6f     reactionID: v6
	k6f_v6=1;
	
// k6b_v6   id: k6b     reactionID: v6
	k6b_v6=0.05;
	
// k7f_v7   id: k7f     reactionID: v7
	k7f_v7=0.3;
	
// k7b_v7   id: k7b     reactionID: v7
	k7b_v7=0.006;
	
// V8_v8   id: V8     reactionID: v8
	V8_v8=1;
	
// K8_v8   id: K8     reactionID: v8
	K8_v8=100;
	
// k9f_v9   id: k9f     reactionID: v9
	k9f_v9=0.003;
	
// k9b_v9   id: k9b     reactionID: v9
	k9b_v9=0.05;
	
// k10f_v10   id: k10f     reactionID: v10
	k10f_v10=0.01;
	
// k10b_v10   id: k10b     reactionID: v10
	k10b_v10=0.06;
	
// k11f_v11   id: k11f     reactionID: v11
	k11f_v11=0.03;
	
// k11b_v11   id: k11b     reactionID: v11
	k11b_v11=0.0045;
	
// k12f_v12   id: k12f     reactionID: v12
	k12f_v12=0.0015;
	
// k12b_v12   id: k12b     reactionID: v12
	k12b_v12=0.0001;
	
// k13f_v13   id: k13f     reactionID: v13
	k13f_v13=0.09;
	
// k13b_v13   id: k13b     reactionID: v13
	k13b_v13=0.6;
	
// k14f_v14   id: k14f     reactionID: v14
	k14f_v14=6;
	
// k14b_v14   id: k14b     reactionID: v14
	k14b_v14=0.06;
	
// k15f_v15   id: k15f     reactionID: v15
	k15f_v15=0.3;
	
// k15b_v15   id: k15b     reactionID: v15
	k15b_v15=0.0009;
	
// V16_v16   id: V16     reactionID: v16
	V16_v16=1.7;
	
// K16_v16   id: K16     reactionID: v16
	K16_v16=340;
	
// k17f_v17   id: k17f     reactionID: v17
	k17f_v17=0.003;
	
// k17b_v17   id: k17b     reactionID: v17
	k17b_v17=0.1;
	
// k18f_v18   id: k18f     reactionID: v18
	k18f_v18=0.3;
	
// k18b_v18   id: k18b     reactionID: v18
	k18b_v18=0.0009;
	
// k19f_v19   id: k19f     reactionID: v19
	k19f_v19=0.01;
	
// k19b_v19   id: k19b     reactionID: v19
	k19b_v19=0.0214;
	
// k20f_v20   id: k20f     reactionID: v20
	k20f_v20=0.12;
	
// k20b_v20   id: k20b     reactionID: v20
	k20b_v20=0.00024;
	
// k21f_v21   id: k21f     reactionID: v21
	k21f_v21=0.003;
	
// k21b_v21   id: k21b     reactionID: v21
	k21b_v21=0.1;
	
// k22f_v22   id: k22f     reactionID: v22
	k22f_v22=0.03;
	
// k22b_v22   id: k22b     reactionID: v22
	k22b_v22=0.064;
	
// k23f_v23   id: k23f     reactionID: v23
	k23f_v23=0.1;
	
// k23b_v23   id: k23b     reactionID: v23
	k23b_v23=0.021;
	
// k24f_v24   id: k24f     reactionID: v24
	k24f_v24=0.009;
	
// k24b_v24   id: k24b     reactionID: v24
	k24b_v24=0.0429;
	
// k25f_v25   id: k25f     reactionID: v25
	k25f_v25=1;
	
// k25b_v25   id: k25b     reactionID: v25
	k25b_v25=0.03;
	



xdot=[
//x(1)   ID: EGF  initialValue: 680
	(1/compartment_compartment)*( (-1)*(1)* (((k1f_v1* x(2) * x(1) )-(k1b_v1* x(3) ))*compartment_compartment) );
	
//x(2)   ID: R  initialValue: 100
	(1/compartment_compartment)*( (-1)*(1)* (((k1f_v1* x(2) * x(1) )-(k1b_v1* x(3) ))*compartment_compartment) );
	
//x(3)   ID: Ra  initialValue: 0
	(1/compartment_compartment)*( (-1)*(2)* (((k2f_v2* x(3) * x(3) )-(k2b_v2* x(4) ))*compartment_compartment) + (1)*(1)* (((k1f_v1* x(2) * x(1) )-(k1b_v1* x(3) ))*compartment_compartment) );
	
//x(4)   ID: R2  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (((k3f_v3* x(4) )-(k3b_v3* x(5) ))*compartment_compartment) + (1)*(1)* (((k2f_v2* x(3) * x(3) )-(k2b_v2* x(4) ))*compartment_compartment) + (1)*(1)* (((V4_v4* x(5) )/(K4_v4+ x(5) ))*compartment_compartment) );
	
//x(5)   ID: RP  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (((V4_v4* x(5) )/(K4_v4+ x(5) ))*compartment_compartment) + (-1)*(1)* (((k5f_v5* x(5) * x(6) )-(k5b_v5* x(7) ))*compartment_compartment) + (-1)*(1)* (((k9f_v9* x(5) * x(10) )-(k9b_v9* x(11) ))*compartment_compartment) + (-1)*(1)* (((k13f_v13* x(5) * x(15) )-(k13b_v13* x(16) ))*compartment_compartment) + (1)*(1)* (((k3f_v3* x(4) )-(k3b_v3* x(5) ))*compartment_compartment) + (1)*(1)* (((k7f_v7* x(8) )-(k7b_v7* x(5) * x(9) ))*compartment_compartment) + (1)*(1)* (((k11f_v11* x(13) )-(k11b_v11* x(5) * x(14) ))*compartment_compartment) + (1)*(1)* (((k15f_v15* x(17) )-(k15b_v15* x(18) * x(5) ))*compartment_compartment) + (1)*(1)* (((k18f_v18* x(19) )-(k18b_v18* x(5) * x(20) ))*compartment_compartment) + (1)*(1)* (((k20f_v20* x(21) )-(k20b_v20* x(22) * x(5) ))*compartment_compartment) );
	
//x(6)   ID: PLCg  initialValue: 105
	(1/compartment_compartment)*( (-1)*(1)* (((k5f_v5* x(5) * x(6) )-(k5b_v5* x(7) ))*compartment_compartment) + (1)*(1)* (((V8_v8* x(9) )/(K8_v8+ x(9) ))*compartment_compartment) );
	
//x(7)   ID: RPLCg  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (((k6f_v6* x(7) )-(k6b_v6* x(8) ))*compartment_compartment) + (1)*(1)* (((k5f_v5* x(5) * x(6) )-(k5b_v5* x(7) ))*compartment_compartment) );
	
//x(8)   ID: RPLCgP  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (((k7f_v7* x(8) )-(k7b_v7* x(5) * x(9) ))*compartment_compartment) + (1)*(1)* (((k6f_v6* x(7) )-(k6b_v6* x(8) ))*compartment_compartment) );
	
//x(9)   ID: PLCgP  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (((V8_v8* x(9) )/(K8_v8+ x(9) ))*compartment_compartment) + (-1)*(1)* (((k25f_v25* x(9) )-(k25b_v25* x(23) ))*compartment_compartment) + (1)*(1)* (((k7f_v7* x(8) )-(k7b_v7* x(5) * x(9) ))*compartment_compartment) );
	
//x(10)   ID: Grb  initialValue: 85
	(1/compartment_compartment)*( (-1)*(1)* (((k9f_v9* x(5) * x(10) )-(k9b_v9* x(11) ))*compartment_compartment) + (-1)*(1)* (((k17f_v17* x(17) * x(10) )-(k17b_v17* x(19) ))*compartment_compartment) + (-1)*(1)* (((k21f_v21* x(18) * x(10) )-(k21b_v21* x(20) ))*compartment_compartment) + (1)*(1)* (((k12f_v12* x(14) )-(k12b_v12* x(10) * x(12) ))*compartment_compartment) );
	
//x(11)   ID: RG  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (((k10f_v10* x(11) * x(12) )-(k10b_v10* x(13) ))*compartment_compartment) + (1)*(1)* (((k9f_v9* x(5) * x(10) )-(k9b_v9* x(11) ))*compartment_compartment) );
	
//x(12)   ID: SOS  initialValue: 34
	(1/compartment_compartment)*( (-1)*(1)* (((k10f_v10* x(11) * x(12) )-(k10b_v10* x(13) ))*compartment_compartment) + (-1)*(1)* (((k19f_v19* x(19) * x(12) )-(k19b_v19* x(21) ))*compartment_compartment) + (-1)*(1)* (((k22f_v22* x(20) * x(12) )-(k22b_v22* x(22) ))*compartment_compartment) + (1)*(1)* (((k12f_v12* x(14) )-(k12b_v12* x(10) * x(12) ))*compartment_compartment) );
	
//x(13)   ID: RGS  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (((k11f_v11* x(13) )-(k11b_v11* x(5) * x(14) ))*compartment_compartment) + (1)*(1)* (((k10f_v10* x(11) * x(12) )-(k10b_v10* x(13) ))*compartment_compartment) );
	
//x(14)   ID: GS  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (((k12f_v12* x(14) )-(k12b_v12* x(10) * x(12) ))*compartment_compartment) + (-1)*(1)* (((k24f_v24* x(17) * x(14) )-(k24b_v24* x(21) ))*compartment_compartment) + (1)*(1)* (((k11f_v11* x(13) )-(k11b_v11* x(5) * x(14) ))*compartment_compartment) + (1)*(1)* (((k23f_v23* x(22) )-(k23b_v23* x(18) * x(14) ))*compartment_compartment) );
	
//x(15)   ID: Shc  initialValue: 150
	(1/compartment_compartment)*( (-1)*(1)* (((k13f_v13* x(5) * x(15) )-(k13b_v13* x(16) ))*compartment_compartment) + (1)*(1)* (((V16_v16* x(18) )/(K16_v16+ x(18) ))*compartment_compartment) );
	
//x(16)   ID: RSh  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (((k14f_v14* x(16) )-(k14b_v14* x(17) ))*compartment_compartment) + (1)*(1)* (((k13f_v13* x(5) * x(15) )-(k13b_v13* x(16) ))*compartment_compartment) );
	
//x(17)   ID: RShP  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (((k15f_v15* x(17) )-(k15b_v15* x(18) * x(5) ))*compartment_compartment) + (-1)*(1)* (((k17f_v17* x(17) * x(10) )-(k17b_v17* x(19) ))*compartment_compartment) + (-1)*(1)* (((k24f_v24* x(17) * x(14) )-(k24b_v24* x(21) ))*compartment_compartment) + (1)*(1)* (((k14f_v14* x(16) )-(k14b_v14* x(17) ))*compartment_compartment) );
	
//x(18)   ID: ShP  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (((V16_v16* x(18) )/(K16_v16+ x(18) ))*compartment_compartment) + (-1)*(1)* (((k21f_v21* x(18) * x(10) )-(k21b_v21* x(20) ))*compartment_compartment) + (1)*(1)* (((k15f_v15* x(17) )-(k15b_v15* x(18) * x(5) ))*compartment_compartment) + (1)*(1)* (((k23f_v23* x(22) )-(k23b_v23* x(18) * x(14) ))*compartment_compartment) );
	
//x(19)   ID: RShG  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (((k18f_v18* x(19) )-(k18b_v18* x(5) * x(20) ))*compartment_compartment) + (-1)*(1)* (((k19f_v19* x(19) * x(12) )-(k19b_v19* x(21) ))*compartment_compartment) + (1)*(1)* (((k17f_v17* x(17) * x(10) )-(k17b_v17* x(19) ))*compartment_compartment) );
	
//x(20)   ID: ShG  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (((k22f_v22* x(20) * x(12) )-(k22b_v22* x(22) ))*compartment_compartment) + (1)*(1)* (((k18f_v18* x(19) )-(k18b_v18* x(5) * x(20) ))*compartment_compartment) + (1)*(1)* (((k21f_v21* x(18) * x(10) )-(k21b_v21* x(20) ))*compartment_compartment) );
	
//x(21)   ID: RShGS  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (((k20f_v20* x(21) )-(k20b_v20* x(22) * x(5) ))*compartment_compartment) + (1)*(1)* (((k19f_v19* x(19) * x(12) )-(k19b_v19* x(21) ))*compartment_compartment) + (1)*(1)* (((k24f_v24* x(17) * x(14) )-(k24b_v24* x(21) ))*compartment_compartment) );
	
//x(22)   ID: ShGS  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (((k23f_v23* x(22) )-(k23b_v23* x(18) * x(14) ))*compartment_compartment) + (1)*(1)* (((k20f_v20* x(21) )-(k20b_v20* x(22) * x(5) ))*compartment_compartment) + (1)*(1)* (((k22f_v22* x(20) * x(12) )-(k22b_v22* x(22) ))*compartment_compartment) );
	
//x(23)   ID: PLCgl  initialValue: 0
	(1/compartment_compartment)*( (1)*(1)* (((k25f_v25* x(9) )-(k25b_v25* x(23) ))*compartment_compartment) )
	];


	
endfunction
        x0=[680;100;0;0;0;105;0;0;0;85;0;34;0;0;150;0;0;0;0;0;0;0;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)' 'x(14)' 'x(15)' 'x(16)' 'x(17)' 'x(18)' 'x(19)' 'x(20)' 'x(21)' 'x(22)' 'x(23)'],[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18;19;20;21;22;23])

//real_variable:
	
	
//x(1)   id: EGF  initialValue: 680
	
//x(2)   id: R  initialValue: 100
	
//x(3)   id: Ra  initialValue: 0
	
//x(4)   id: R2  initialValue: 0
	
//x(5)   id: RP  initialValue: 0
	
//x(6)   id: PLCg  initialValue: 105
	
//x(7)   id: RPLCg  initialValue: 0
	
//x(8)   id: RPLCgP  initialValue: 0
	
//x(9)   id: PLCgP  initialValue: 0
	
//x(10)   id: Grb  initialValue: 85
	
//x(11)   id: RG  initialValue: 0
	
//x(12)   id: SOS  initialValue: 34
	
//x(13)   id: RGS  initialValue: 0
	
//x(14)   id: GS  initialValue: 0
	
//x(15)   id: Shc  initialValue: 150
	
//x(16)   id: RSh  initialValue: 0
	
//x(17)   id: RShP  initialValue: 0
	
//x(18)   id: ShP  initialValue: 0
	
//x(19)   id: RShG  initialValue: 0
	
//x(20)   id: ShG  initialValue: 0
	
//x(21)   id: RShGS  initialValue: 0
	
//x(22)   id: ShGS  initialValue: 0
	
//x(23)   id: PLCgl  initialValue: 0