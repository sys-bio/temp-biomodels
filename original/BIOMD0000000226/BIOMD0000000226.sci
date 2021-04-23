
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_default   id: default
	compartment_default=1;
		
// compartment_c2   id: c2
	compartment_c2=1;
		
// k1_p   id: k1
	k1_p=0.0025;
		
// k2_p   id: k2
	k2_p=0.000125;
		
// k4_p   id: k4
	k4_p=0.1;
		
// k5_p   id: k5
	k5_p=0.0015;
		
// k6_p   id: k6
	k6_p=0.000125;
		
// k7_p   id: k7
	k7_p=0.2;
		
// k8_p   id: k8
	k8_p=0.1;
		
// k9_p   id: k9
	k9_p=1;
		
// k10_p   id: k10
	k10_p=0.1;
		
// k11_p   id: k11
	k11_p=0.000125;
		
// k12_p   id: k12
	k12_p=2E-5;
		
// kf13_p   id: kf13
	kf13_p=18.4;
		
// kr13_p   id: kr13
	kr13_p=0;
		
// kf14_p   id: kf14
	kf14_p=18.4;
		
// kr14_p   id: kr14
	kr14_p=0;
		
// kf15_p   id: kf15
	kf15_p=0.0025;
		
// kr15_p   id: kr15
	kr15_p=0;
		
// k16_p   id: k16
	k16_p=0.5;
		
// k17_p   id: k17
	k17_p=0.0004;
		
// k18_p   id: k18
	k18_p=0.0003;
		
// k20_p   id: k20
	k20_p=5E-7;
		
// k19_p   id: k19
	k19_p=0;
		
// k21_p   id: k21
	k21_p=0.0001;
		
// k22_p   id: k22
	k22_p=0.5;
		
// kf23_p   id: kf23
	kf23_p=0.001;
		
// kr23_p   id: kr23
	kr23_p=0.0005;
		
// k27_p   id: k27
	k27_p=0.0004;
		
// kf28_p   id: kf28
	kf28_p=0.01;
		
// kr28_p   id: kr28
	kr28_p=0;
		
// k26_p   id: k26
	k26_p=5E-7;
		
// s121_s   id: s121
	s121_s=0;
		
// s122_s   id: s122
	s122_s=0;
		
// s124_s   id: s124
	s124_s=0;
		
// s126_s   id: s126
	s126_s=0;
		
// s129_s   id: s129
	s129_s=0;
		
// s131_s   id: s131
	s131_s=0;
		
// s134_s   id: s134
	s134_s=0;
		
// s150_s   id: s150
	s150_s=0;
		
// s153_s   id: s153
	s153_s=0;
		
// s154_s   id: s154
	s154_s=0;
		



xdot=[
//x(1)   ID: k3  initialValue: 2.5E-6
	0;
	
//x(2)   ID: s125  initialValue: 0
	(1/compartment_default)*( (-1)*(1)* (k27_p* x(2) ) + (-1)*(1)* (k22_p* x(2) ) + (1)*(1)* (k26_p* x(14) ) + (1)*(1)* (k22_p* x(2) ) );
	
//x(3)   ID: s127  initialValue: 0
	(1/compartment_default)*( (-1)*(1)* (k16_p* x(3) ) + (-1)*(1)* (k17_p* x(3) ) + (1)*(1)* (k19_p+(k20_p* x(14) )) + (1)*(1)* (k16_p* x(3) ) );
	
//x(4)   ID: s128  initialValue: 0
	(1/compartment_default)*( (-1)*(1)* (k18_p* x(4) ) + (1)*(1)* (k16_p* x(3) ) );
	
//x(5)   ID: s130  initialValue: 0
	(1/compartment_default)*( (-1)*(1)* (k11_p* x(5) ) + (1)*(1)* ((k5_p* x(6) )+(k4_p* x(6) * x(4) )) );
	
//x(6)   ID: s132  initialValue: 0
	(1/compartment_default)*( (-1)*(1)* (k6_p* x(6) ) + (-1)*(1)* (k9_p* x(6) * x(8) ) + (-1)*(1)* ((k5_p* x(6) )+(k4_p* x(6) * x(4) )) + (-1)*(1)* (k7_p* x(6) * x(12) ) + (1)*(1)* (k1_p* x(7) ) + (1)*(1)* (k8_p* x(9) ) + (1)*(1)* (k10_p* x(10) ) );
	
//x(7)   ID: s133  initialValue: 0
	(1/compartment_default)*( (-1)*(1)* (k1_p* x(7) ) + (-1)*(1)* (k2_p* x(7) ) + (1)*(1)* x(1) );
	
//x(8)   ID: s135  initialValue: 0.06
	(1/compartment_default)*( (-1)*(1)* (k12_p* x(8) ) + (-1)*(1)* (k9_p* x(6) * x(8) ) + (1)*(1)* ((kf13_p* x(13) * x(12) )-(kr13_p* x(8) )) + (1)*(1)* ((kf28_p* x(11) )-(kr28_p* x(8) )) );
	
//x(9)   ID: s139  initialValue: 0
	(1/compartment_default)*( (-1)*(1)* (k8_p* x(9) ) + (1)*(1)* (k7_p* x(6) * x(12) ) );
	
//x(10)   ID: s152  initialValue: 0
	(1/compartment_default)*( (-1)*(1)* (k10_p* x(10) ) + (1)*(1)* (k9_p* x(6) * x(8) ) );
	
//x(11)   ID: s159  initialValue: 0
	(1/compartment_c2)*( (-1)*(5)* ((kf28_p* x(11) )-(kr28_p* x(8) )) + (1)*(1)* ((kf14_p* x(14) * x(15) )-(kr14_p* x(11) )) );
	
//x(12)   ID: s160  initialValue: 0
	(1/compartment_default)*( (-1)*(1)* (k21_p* x(12) ) + (-1)*(1)* ((kf13_p* x(13) * x(12) )-(kr13_p* x(8) )) + (-1)*(1)* (k7_p* x(6) * x(12) ) + (-1)*(1)* ((kf23_p* x(12) )-(kr23_p* x(15) )) + (1)*(1)* (k22_p* x(2) ) );
	
//x(13)   ID: s161  initialValue: 0
	(1/compartment_default)*( (-1)*(1)* ((kf13_p* x(13) * x(12) )-(kr13_p* x(8) )) + (-1)*(1)* ((kf15_p* x(13) )-(kr15_p* x(14) )) + (1)*(1)* (k12_p* x(8) ) + (1)*(1)* (k10_p* x(10) ) );
	
//x(14)   ID: s164  initialValue: 0
	(1/compartment_c2)*( (-1)*(1)* ((kf14_p* x(14) * x(15) )-(kr14_p* x(11) )) + (1)*(5)* ((kf15_p* x(13) )-(kr15_p* x(14) )) );
	
//x(15)   ID: s167  initialValue: 0
	(1/compartment_c2)*( (-1)*(1)* ((kf14_p* x(14) * x(15) )-(kr14_p* x(11) )) + (1)*(5)* ((kf23_p* x(12) )-(kr23_p* x(15) )) )
	];


	
endfunction
        x0=[2.5E-6;0;0;0;0;0;0;0.06;0;0;0;0;0;0;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)' 'x(14)' 'x(15)'],[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15])

//real_variable:
	
	
//x(1)   id: k3  initialValue: 2.5E-6
	
//x(2)   id: s125  initialValue: 0
	
//x(3)   id: s127  initialValue: 0
	
//x(4)   id: s128  initialValue: 0
	
//x(5)   id: s130  initialValue: 0
	
//x(6)   id: s132  initialValue: 0
	
//x(7)   id: s133  initialValue: 0
	
//x(8)   id: s135  initialValue: 0.06
	
//x(9)   id: s139  initialValue: 0
	
//x(10)   id: s152  initialValue: 0
	
//x(11)   id: s159  initialValue: 0
	
//x(12)   id: s160  initialValue: 0
	
//x(13)   id: s161  initialValue: 0
	
//x(14)   id: s164  initialValue: 0
	
//x(15)   id: s167  initialValue: 0