
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_compartment   id: compartment
	compartment_compartment=1;
		
// k1_p   id: k1
	k1_p=10;
		
// k2_p   id: k2
	k2_p=2E-5;
		
// k3_p   id: k3
	k3_p=50;
		
// k4_p   id: k4
	k4_p=1E-5;
		
// k5_p   id: k5
	k5_p=4E-6;
		
// k6_p   id: k6
	k6_p=6E-7;
		
// k7_p   id: k7
	k7_p=1E-7;
		
// k8_p   id: k8
	k8_p=500;
		
// k9_p   id: k9
	k9_p=1;
		
// k10_p   id: k10
	k10_p=0.01;
		
// k11_p   id: k11
	k11_p=100;
		
// k12_p   id: k12
	k12_p=0.5;
		
// k13_p   id: k13
	k13_p=0.5;
		
// k14_p   id: k14
	k14_p=0.05;
		
// k15_p   id: k15
	k15_p=0.08;
		
// k16_p   id: k16
	k16_p=1000;
		
// k17_p   id: k17
	k17_p=8.02E-9;
		
// k18_p   id: k18
	k18_p=12;
		
// k19_p   id: k19
	k19_p=0.02;
		
// k20_p   id: k20
	k20_p=0.1;
		
// k21_p   id: k21
	k21_p=0.001;
		



xdot=[
//x(1)   ID: Hsp90  initialValue: 300000
	(1/compartment_compartment)*( (-1)*(1)* (k3_p* x(4) * x(1) ) + (-1)*(1)* (k8_p* x(1) * x(3) ) + (-1)*(1)* (k17_p* x(1) * x(14) ) + (1)*(1)* (k4_p* x(5) ) + (1)*(1)* (k5_p* x(5) * x(14) ) + (1)*(1)* (k9_p* x(2) ) + (1)*(1)* (k16_p* x(11) ) );
	
//x(2)   ID: HCom  initialValue: 5900
	(1/compartment_compartment)*( (-1)*(1)* (k9_p* x(2) ) + (1)*(1)* (k8_p* x(1) * x(3) ) );
	
//x(3)   ID: HSF1  initialValue: 100
	(1/compartment_compartment)*( (-1)*(1)* (k8_p* x(1) * x(3) ) + (-1)*(2)* ((( x(3) -( 1 ))*k10_p* x(3) )/( 2 )) + (-1)*(1)* (k11_p* x(3) * x(7) ) + (1)*(1)* (k9_p* x(2) ) + (1)*(1)* (k12_p* x(6) ) + (1)*(2)* (k13_p* x(7) ) );
	
//x(4)   ID: MisP  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (k3_p* x(4) * x(1) ) + (-1)*(1)* (k6_p* x(4) * x(14) ) + (-1)*(2)* ((( x(4) -( 1 ))*k7_p* x(4) )/( 2 )) + (-1)*(1)* (k7_p* x(4) * x(9) ) + (1)*(1)* (k2_p* x(8) * x(13) ) + (1)*(1)* (k4_p* x(5) ) );
	
//x(5)   ID: MCom  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (k4_p* x(5) ) + (-1)*(1)* (k5_p* x(5) * x(14) ) + (1)*(1)* (k3_p* x(4) * x(1) ) );
	
//x(6)   ID: TriH  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (k12_p* x(6) ) + (-1)*(1)* (k14_p* x(10) * x(6) ) + (1)*(1)* (k11_p* x(3) * x(7) ) + (1)*(1)* (k15_p* x(11) ) );
	
//x(7)   ID: DiH  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (k11_p* x(3) * x(7) ) + (-1)*(1)* (k13_p* x(7) ) + (1)*(1)* ((( x(3) -( 1 ))*k10_p* x(3) )/( 2 )) + (1)*(1)* (k12_p* x(6) ) );
	
//x(8)   ID: NatP  initialValue: 6000000
	(1/compartment_compartment)*( (-1)*(1)* (k2_p* x(8) * x(13) ) + (1)*(1)* k1_p + (1)*(1)* (k5_p* x(5) * x(14) ) );
	
//x(9)   ID: AggP  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (k7_p* x(4) * x(9) ) + (1)*(1)* ((( x(4) -( 1 ))*k7_p* x(4) )/( 2 )) + (1)*(2)* (k7_p* x(4) * x(9) ) );
	
//x(10)   ID: HSE  initialValue: 1
	(1/compartment_compartment)*( (-1)*(1)* (k14_p* x(10) * x(6) ) + (1)*(1)* (k15_p* x(11) ) );
	
//x(11)   ID: HSETriH  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (k15_p* x(11) ) + (-1)*(1)* (k16_p* x(11) ) + (1)*(1)* (k14_p* x(10) * x(6) ) + (1)*(1)* (k16_p* x(11) ) );
	
//x(12)   ID: X  initialValue: 0
	(1/compartment_compartment)*( (1)*(1)* (1) );
	
//x(13)   ID: ROS  initialValue: 100
	(1/compartment_compartment)*( (-1)*(1)* (k2_p* x(8) * x(13) ) + (-1)*(1)* (k21_p* x(13) ) + (1)*(1)* (k2_p* x(8) * x(13) ) + (1)*(1)* k20_p );
	
//x(14)   ID: ATP  initialValue: 10000
	(1/compartment_compartment)*( (-1)*(1)* (k5_p* x(5) * x(14) ) + (-1)*(1)* (k6_p* x(4) * x(14) ) + (-1)*(1)* (k17_p* x(1) * x(14) ) + (-1)*(1)* (k19_p* x(14) ) + (1)*(1)* (k18_p* x(15) ) );
	
//x(15)   ID: ADP  initialValue: 1000
	(1/compartment_compartment)*( (-1)*(1)* (k18_p* x(15) ) + (1)*(1)* (k5_p* x(5) * x(14) ) + (1)*(1)* (k6_p* x(4) * x(14) ) + (1)*(1)* (k17_p* x(1) * x(14) ) + (1)*(1)* (k19_p* x(14) ) );
	
//x(16)   ID: source  initialValue: 0
	0
	];


	
endfunction
        x0=[300000;5900;100;0;0;0;0;6000000;0;1;0;0;100;10000;1000;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)' 'x(14)' 'x(15)' 'x(16)'],[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16])

//real_variable:
	
	
//x(1)   id: Hsp90  initialValue: 300000
	
//x(2)   id: HCom  initialValue: 5900
	
//x(3)   id: HSF1  initialValue: 100
	
//x(4)   id: MisP  initialValue: 0
	
//x(5)   id: MCom  initialValue: 0
	
//x(6)   id: TriH  initialValue: 0
	
//x(7)   id: DiH  initialValue: 0
	
//x(8)   id: NatP  initialValue: 6000000
	
//x(9)   id: AggP  initialValue: 0
	
//x(10)   id: HSE  initialValue: 1
	
//x(11)   id: HSETriH  initialValue: 0
	
//x(12)   id: X  initialValue: 0
	
//x(13)   id: ROS  initialValue: 100
	
//x(14)   id: ATP  initialValue: 10000
	
//x(15)   id: ADP  initialValue: 1000
	
//x(16)   id: source  initialValue: 0