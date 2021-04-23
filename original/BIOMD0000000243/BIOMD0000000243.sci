
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_default   id: default
	compartment_default=1;
		
// k1_p   id: k1
	k1_p=1;
		
// k2_p   id: k2
	k2_p=0.0001277248;
		
// k3_p   id: k3
	k3_p=0.6693316;
		
// k4_p   id: k4
	k4_p=1E-5;
		
// k5_p   id: k5
	k5_p=0.0005946569;
		
// k6_p   id: k6
	k6_p=0.9999999;
		
// k7_p   id: k7
	k7_p=0.8875063;
		
// k8_p   id: k8
	k8_p=0.0008044378;
		
// k9_p   id: k9
	k9_p=0.002249759;
		
// k10_p   id: k10
	k10_p=0.1205258;
		
// k11_p   id: k11
	k11_p=0.02891451;
		
// k12_p   id: k12
	k12_p=0.1502914;
		
// k13_p   id: k13
	k13_p=0.0007204261;
		
// k14_p   id: k14
	k14_p=0.3588224;
		
// k15_p   id: k15
	k15_p=3.684162;
		
// k16_p   id: k16
	k16_p=0.02229912;
		
// k17_p   id: k17
	k17_p=0.0064182;
		



xdot=[
//x(1)   ID: L  initialValue: 113.22
	(1/compartment_default)*( (-1)*(1)* (compartment_default*k1_p* x(1) * x(16) ) );
	
//x(2)   ID: L_RF  initialValue: 0
	(1/compartment_default)*( (-1)*(1)* (compartment_default*k2_p* x(2) * x(8) ) + (-1)*(1)* (compartment_default*k3_p* x(2) * x(17) ) + (-1)*(1)* (compartment_default*k4_p* x(2) * x(18) ) + (1)*(1)* (compartment_default*k1_p* x(1) * x(16) ) );
	
//x(3)   ID: L_RF_C8  initialValue: 0
	(1/compartment_default)*( (-1)*(1)* (compartment_default*k5_p* x(3) * x(8) ) + (-1)*(1)* (compartment_default*k6_p* x(3) * x(17) ) + (-1)*(1)* (compartment_default*k7_p* x(3) * x(18) ) + (1)*(1)* (compartment_default*k2_p* x(2) * x(8) ) );
	
//x(4)   ID: L_RF_FL  initialValue: 0
	(1/compartment_default)*( (-1)*(1)* (compartment_default*k5_p* x(4) * x(8) ) + (-1)*(1)* (compartment_default*k6_p* x(4) * x(17) ) + (-1)*(1)* (compartment_default*k7_p* x(4) * x(18) ) + (1)*(1)* (compartment_default*k3_p* x(2) * x(17) ) );
	
//x(5)   ID: L_RF_FS  initialValue: 0
	(1/compartment_default)*( (-1)*(1)* (compartment_default*k5_p* x(5) * x(8) ) + (-1)*(1)* (compartment_default*k6_p* x(5) * x(17) ) + (-1)*(1)* (compartment_default*k7_p* x(5) * x(18) ) + (1)*(1)* (compartment_default*k4_p* x(2) * x(18) ) );
	
//x(6)   ID: p43_p41  initialValue: 0
	(1/compartment_default)*( (-1)*(1)* (compartment_default*k8_p* x(6) * x(6) ) + (-1)*(1)* (compartment_default*k8_p* x(6) * x(6) ) + (1)*(1)* (compartment_default*k5_p* x(3) * x(8) ) + (1)*(1)* (compartment_default*k5_p* x(3) * x(8) ) + (1)*(1)* (compartment_default*k10_p* x(8) * x(10) ) );
	
//x(7)   ID: C3  initialValue: 1.443404
	(1/compartment_default)*( (-1)*(1)* (compartment_default*k9_p* x(7) * x(9) ) );
	
//x(8)   ID: C8  initialValue: 64.47652
	(1/compartment_default)*( (-1)*(1)* (compartment_default*k2_p* x(2) * x(8) ) + (-1)*(1)* (compartment_default*k5_p* x(3) * x(8) ) + (-1)*(1)* (compartment_default*k5_p* x(4) * x(8) ) + (-1)*(1)* (compartment_default*k5_p* x(5) * x(8) ) + (-1)*(1)* (compartment_default*k10_p* x(8) * x(10) ) );
	
//x(9)   ID: C8_star  initialValue: 0
	(1/compartment_default)*( (-1)*(1)* (compartment_default*k9_p* x(7) * x(9) ) + (-1)*(1)* (compartment_default*k11_p* x(9) ) + (1)*(1)* (compartment_default*k8_p* x(6) * x(6) ) + (1)*(1)* (compartment_default*k9_p* x(7) * x(9) ) );
	
//x(10)   ID: C3_star  initialValue: 0
	(1/compartment_default)*( (-1)*(1)* (compartment_default*k10_p* x(8) * x(10) ) + (-1)*(1)* (compartment_default*k12_p* x(10) ) + (1)*(1)* (compartment_default*k9_p* x(7) * x(9) ) + (1)*(1)* (compartment_default*k10_p* x(8) * x(10) ) );
	
//x(11)   ID: p43_FLIP  initialValue: 0
	(1/compartment_default)*( (-1)*(1)* (compartment_default*k13_p* x(11) * x(19) ) + (1)*(1)* (compartment_default*k6_p* x(3) * x(17) ) + (1)*(1)* (compartment_default*k5_p* x(4) * x(8) ) );
	
//x(12)   ID: NF_kB_IkB  initialValue: 4.739546
	(1/compartment_default)*( (-1)*(1)* (compartment_default*k14_p* x(12) * x(14) ) );
	
//x(13)   ID: NF_kB_IkB_P  initialValue: 0
	(1/compartment_default)*( (-1)*(1)* (compartment_default*k15_p* x(13) ) + (1)*(1)* (compartment_default*k14_p* x(12) * x(14) ) );
	
//x(14)   ID: p43_FLIP_IKK_star  initialValue: 0
	(1/compartment_default)*( (-1)*(1)* (compartment_default*k14_p* x(12) * x(14) ) + (-1)*(1)* (compartment_default*k16_p* x(14) ) + (1)*(1)* (compartment_default*k13_p* x(11) * x(19) ) + (1)*(1)* (compartment_default*k14_p* x(12) * x(14) ) );
	
//x(15)   ID: NF_kB_star  initialValue: 0
	(1/compartment_default)*( (-1)*(1)* (compartment_default*k17_p* x(15) ) + (1)*(1)* (compartment_default*k15_p* x(13) ) );
	
//x(16)   ID: RF  initialValue: 91.26592
	(1/compartment_default)*( (-1)*(1)* (compartment_default*k1_p* x(1) * x(16) ) );
	
//x(17)   ID: FL  initialValue: 7.398562
	(1/compartment_default)*( (-1)*(1)* (compartment_default*k3_p* x(2) * x(17) ) + (-1)*(1)* (compartment_default*k6_p* x(3) * x(17) ) + (-1)*(1)* (compartment_default*k6_p* x(4) * x(17) ) + (-1)*(1)* (compartment_default*k6_p* x(5) * x(17) ) );
	
//x(18)   ID: FS  initialValue: 5.083923
	(1/compartment_default)*( (-1)*(1)* (compartment_default*k4_p* x(2) * x(18) ) + (-1)*(1)* (compartment_default*k7_p* x(3) * x(18) ) + (-1)*(1)* (compartment_default*k7_p* x(4) * x(18) ) + (-1)*(1)* (compartment_default*k7_p* x(5) * x(18) ) );
	
//x(19)   ID: IKK  initialValue: 5.772825
	(1/compartment_default)*( (-1)*(1)* (compartment_default*k13_p* x(11) * x(19) ) );
	
//x(20)   ID: L_RF_C8_FS  initialValue: 0
	(1/compartment_default)*( (1)*(1)* (compartment_default*k7_p* x(3) * x(18) ) + (1)*(1)* (compartment_default*k5_p* x(5) * x(8) ) );
	
//x(21)   ID: L_RF_FL_FL  initialValue: 0
	(1/compartment_default)*( (1)*(1)* (compartment_default*k6_p* x(4) * x(17) ) );
	
//x(22)   ID: L_RF_FL_FS  initialValue: 0
	(1/compartment_default)*( (1)*(1)* (compartment_default*k7_p* x(4) * x(18) ) + (1)*(1)* (compartment_default*k6_p* x(5) * x(17) ) );
	
//x(23)   ID: L_RF_FS_FS  initialValue: 0
	(1/compartment_default)*( (1)*(1)* (compartment_default*k7_p* x(5) * x(18) ) )
	];


	
endfunction
        x0=[113.22;0;0;0;0;0;1.443404;64.47652;0;0;0;4.739546;0;0;0;91.26592;7.398562;5.083923;5.772825;0;0;0;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)' 'x(14)' 'x(15)' 'x(16)' 'x(17)' 'x(18)' 'x(19)' 'x(20)' 'x(21)' 'x(22)' 'x(23)'],[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18;19;20;21;22;23])

//real_variable:
	
	
//x(1)   id: L  initialValue: 113.22
	
//x(2)   id: L_RF  initialValue: 0
	
//x(3)   id: L_RF_C8  initialValue: 0
	
//x(4)   id: L_RF_FL  initialValue: 0
	
//x(5)   id: L_RF_FS  initialValue: 0
	
//x(6)   id: p43_p41  initialValue: 0
	
//x(7)   id: C3  initialValue: 1.443404
	
//x(8)   id: C8  initialValue: 64.47652
	
//x(9)   id: C8_star  initialValue: 0
	
//x(10)   id: C3_star  initialValue: 0
	
//x(11)   id: p43_FLIP  initialValue: 0
	
//x(12)   id: NF_kB_IkB  initialValue: 4.739546
	
//x(13)   id: NF_kB_IkB_P  initialValue: 0
	
//x(14)   id: p43_FLIP_IKK_star  initialValue: 0
	
//x(15)   id: NF_kB_star  initialValue: 0
	
//x(16)   id: RF  initialValue: 91.26592
	
//x(17)   id: FL  initialValue: 7.398562
	
//x(18)   id: FS  initialValue: 5.083923
	
//x(19)   id: IKK  initialValue: 5.772825
	
//x(20)   id: L_RF_C8_FS  initialValue: 0
	
//x(21)   id: L_RF_FL_FL  initialValue: 0
	
//x(22)   id: L_RF_FL_FS  initialValue: 0
	
//x(23)   id: L_RF_FS_FS  initialValue: 0