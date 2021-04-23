
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_cell   id: cell
	compartment_cell=1;
		
// lin_p   id: lin
	lin_p=12;
		
// K15_p   id: K15
	K15_p=3600;
		
// k15_p   id: k15
	k15_p=2600;
		
// K16_p   id: K16
	K16_p=1000;
		
// k16_p   id: k16
	k16_p=70;
		
// K17_p   id: K17
	K17_p=1000;
		
// k17_p   id: k17
	k17_p=50;
		
// K18_p   id: K18
	K18_p=1000;
		
// k18_p   id: k18
	k18_p=50;
		
// K19_p   id: K19
	K19_p=3000;
		
// k19_p   id: k19
	k19_p=160;
		
// K20_p   id: K20
	K20_p=1599;
		
// k20_p   id: k20
	k20_p=4;
		
// K21_p   id: K21
	K21_p=5000;
		
// k21_p   id: k21
	k21_p=5;
		
// K22_p   id: K22
	K22_p=125;
		
// k22_p   id: k22
	k22_p=20;
		
// K23_p   id: K23
	K23_p=150;
		
// k23_p   id: k23
	k23_p=3.9;
		
// K24_p   id: K24
	K24_p=500;
		
// k24_p   id: k24
	k24_p=70;
		
// kd2_p   id: kd2
	kd2_p=0.05;
		
// kd3_p   id: kd3
	kd3_p=0.01;
		
// kd8_p   id: kd8
	kd8_p=0.1;
		
// kd9_p   id: kd9
	kd9_p=0.001;
		
// kd11_p   id: kd11
	kd11_p=0.001;
		
// kd12_p   id: kd12
	kd12_p=0.07;
		
// kd13_p   id: kd13
	kd13_p=0.01;
		
// kd16_p   id: kd16
	kd16_p=0.01;
		
// ki1_p   id: ki1
	ki1_p=0.3;
		
// ki2_p   id: ki2
	ki2_p=30;
		
// ki3_p   id: ki3
	ki3_p=30;
		
// ki4_p   id: ki4
	ki4_p=0.6;
		
// ki5_p   id: ki5
	ki5_p=0.1;
		
// ki6_p   id: ki6
	ki6_p=0.01;
		
// ki7_p   id: ki7
	ki7_p=30;
		
// ki8_p   id: ki8
	ki8_p=4;
		
// ki9_p   id: ki9
	ki9_p=0.175;
		
// ki10_p   id: ki10
	ki10_p=0.01;
		
// ki11_p   id: ki11
	ki11_p=15;
		
// ki12_p   id: ki12
	ki12_p=6.3;
		
// ki14_p   id: ki14
	ki14_p=0.2;
		
// ki15_p   id: ki15
	ki15_p=0.86;
		
// ki16_p   id: ki16
	ki16_p=10;
		
// ki17_p   id: ki17
	ki17_p=10;
		
// ki18_p   id: ki18
	ki18_p=10;
		
// KI19_p   id: KI19
	KI19_p=500;
		
// KI20_p   id: KI20
	KI20_p=200;
		
// KI21_p   id: KI21
	KI21_p=500;
		
// KI22_p   id: KI22
	KI22_p=500;
		
// KI23_p   id: KI23
	KI23_p=0.053;
		
// KI24_p   id: KI24
	KI24_p=2.3E-5;
		
// a24_p   id: a24
	a24_p=0.15;
		
// ks_p   id: ks
	ks_p=500;
		



xdot=[
//x(1)   ID: x1  initialValue: 0.001
	(1/compartment_cell)*( (-1)*(1)* ((compartment_cell*K16_p* x(8) * x(1) )/( x(1) +(k16_p*(( 1 )+( x(12) /ks_p))))) + (-1)*(1)* ((compartment_cell*K17_p* x(9) * x(1) )/( x(1) +(k17_p*(( 1 )+( x(20) /ki18_p)+( x(19) /ki16_p)+( x(20) /ks_p))))) + (-1)*(1)* ((compartment_cell*K18_p* x(10) * x(1) )/( x(1) +(k18_p*(( 1 )+( x(23) /ki3_p)+( x(22) /ks_p))))) + (-1)*(1)* ((compartment_cell*K21_p* x(14) * x(1) )/( x(1) +(k21_p*(( 1 )+( x(21) /ki7_p)+( x(19) /ki8_p)+( x(23) /ki11_p)+( x(3) /ki12_p)+( x(2) /ks_p))))) + (-1)*(1)* (( 0.1 )* x(1) *compartment_cell) + (1)*(1)* ((compartment_cell*K15_p* x(7) *lin_p*(( 1 )+( x(20) /KI19_p)+( x(12) /KI20_p)+( x(5) /KI21_p)+( x(3) /KI22_p)))/(lin_p+(k15_p*(( 1 )+( x(1) /ks_p))))) );
	
//x(2)   ID: x10  initialValue: 0.001
	(1/compartment_cell)*( (-1)*(1)* ((compartment_cell*K24_p* x(17) * x(2) )/( x(2) +(k24_p*(( 1 )+( x(3) /ks_p))))) + (-1)*(1)* ((compartment_cell*K21_p* x(14) * x(2) )/( x(2) +(k21_p*(( 1 )+( x(21) /ki7_p)+( x(19) /ki8_p)+( x(23) /ki11_p)+( x(3) /ki12_p)+( x(4) /ks_p))))) + (1)*(1)* ((compartment_cell*K21_p* x(14) * x(1) )/( x(1) +(k21_p*(( 1 )+( x(21) /ki7_p)+( x(19) /ki8_p)+( x(23) /ki11_p)+( x(3) /ki12_p)+( x(2) /ks_p))))) );
	
//x(3)   ID: x11  initialValue: 0.001
	(1/compartment_cell)*( (-1)*(1)* (kd11_p* x(3) *compartment_cell) + (1)*(1)* ((compartment_cell*K24_p* x(17) * x(2) )/( x(2) +(k24_p*(( 1 )+( x(3) /ks_p))))) );
	
//x(4)   ID: x12  initialValue: 0.001
	(1/compartment_cell)*( (-1)*(1)* ((compartment_cell*K22_p* x(15) * x(4) )/( x(4) +(k22_p*(( 1 )+( x(5) /ks_p))))) + (-1)*(1)* (compartment_cell* x(4) *kd12_p) + (1)*(1)* ((compartment_cell*K21_p* x(14) * x(2) )/( x(2) +(k21_p*(( 1 )+( x(21) /ki7_p)+( x(19) /ki8_p)+( x(23) /ki11_p)+( x(3) /ki12_p)+( x(4) /ks_p))))) );
	
//x(5)   ID: x13  initialValue: 0.001
	(1/compartment_cell)*( (-1)*(1)* ((compartment_cell*K23_p* x(16) * x(5) )/( x(5) +(k23_p*(( 1 )+( x(21) /ki14_p)+( x(3) /ki15_p)+( x(6) /ks_p))))) + (-1)*(1)* (compartment_cell*kd13_p* x(5) ) + (1)*(1)* ((compartment_cell*K22_p* x(15) * x(4) )/( x(4) +(k22_p*(( 1 )+( x(5) /ks_p))))) );
	
//x(6)   ID: x14  initialValue: 0.001
	(1/compartment_cell)*( (1)*(1)* ((compartment_cell*K23_p* x(16) * x(5) )/( x(5) +(k23_p*(( 1 )+( x(21) /ki14_p)+( x(3) /ki15_p)+( x(6) /ks_p))))) );
	
//x(7)   ID: x15  initialValue: 1.5
	0;
	
//x(8)   ID: x16  initialValue: 1.5
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*kd16_p* x(8) ) + (1)*(1)* ((compartment_cell*a24_p* x(23) * x(23) )/(( x(23) * x(23) )+(KI24_p*KI24_p))) );
	
//x(9)   ID: x17  initialValue: 0.5
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*ki17_p* x(12) * x(9) ) );
	
//x(10)   ID: x18  initialValue: 0.2
	0;
	
//x(11)   ID: x19  initialValue: 0.5
	0;
	
//x(12)   ID: x2  initialValue: 0.001
	(1/compartment_cell)*( (-1)*(1)* ((compartment_cell*K24_p* x(17) * x(12) )/( x(12) +(k24_p*(( 1 )+( x(19) /ks_p))))) + (-1)*(1)* (kd2_p*compartment_cell* x(12) ) + (1)*(1)* ((compartment_cell*K16_p* x(8) * x(1) )/( x(1) +(k16_p*(( 1 )+( x(12) /ks_p))))) );
	
//x(13)   ID: x20  initialValue: 0.5
	(1/compartment_cell)*( (-1)*(1)* (ki4_p* x(12) * x(13) *compartment_cell) + (-1)*(1)* (compartment_cell*ki5_p* x(22) * x(13) ) );
	
//x(14)   ID: x21  initialValue: 5
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*ki9_p* x(4) * x(14) ) + (-1)*(1)* (compartment_cell*ki10_p* x(2) * x(14) ) + (-1)*(1)* (compartment_cell*ki6_p* x(14) * x(12) ) + (1)*(1)* (compartment_cell*KI23_p* x(5) * x(14) ) );
	
//x(15)   ID: x22  initialValue: 0.76
	(1/compartment_cell)*( (-1)*(1)* ((compartment_cell*K22_p* x(15) * x(4) )/(( x(4) +k22_p)*( 129 ))) );
	
//x(16)   ID: x23  initialValue: 0.07
	0;
	
//x(17)   ID: x24  initialValue: 0.8
	0;
	
//x(18)   ID: x25  initialValue: 0
	0;
	
//x(19)   ID: x3  initialValue: 0.001
	(1/compartment_cell)*( (-1)*(1)* (kd3_p* x(19) *compartment_cell) + (1)*(1)* ((compartment_cell*K24_p* x(17) * x(12) )/( x(12) +(k24_p*(( 1 )+( x(19) /ks_p))))) );
	
//x(20)   ID: x4  initialValue: 0.001
	(1/compartment_cell)*( (-1)*(1)* ((compartment_cell*K24_p* x(17) * x(20) )/( x(20) +(k24_p*(( 1 )+( x(21) /ks_p))))) + (1)*(1)* ((compartment_cell*K17_p* x(9) * x(1) )/( x(1) +(k17_p*(( 1 )+( x(20) /ki18_p)+( x(19) /ki16_p)+( x(20) /ks_p))))) );
	
//x(21)   ID: x5  initialValue: 0.001
	(1/compartment_cell)*( (1)*(1)* ((compartment_cell*K24_p* x(17) * x(20) )/( x(20) +(k24_p*(( 1 )+( x(21) /ks_p))))) );
	
//x(22)   ID: x6  initialValue: 0.001
	(1/compartment_cell)*( (-1)*(1)* ((compartment_cell*K19_p* x(11) * x(22) )/( x(22) +(k19_p*(( 1 )+( x(1) /ki1_p)+( x(19) /ki2_p)+( x(23) /ks_p))))) + (-1)*(1)* ((compartment_cell*K20_p* x(13) * x(22) )/( x(22) +(k20_p*(( 1 )+( x(24) /ks_p))))) + (1)*(1)* ((compartment_cell*K18_p* x(10) * x(1) )/( x(1) +(k18_p*(( 1 )+( x(23) /ki3_p)+( x(22) /ks_p))))) );
	
//x(23)   ID: x7  initialValue: 0.001
	(1/compartment_cell)*( (1)*(1)* ((compartment_cell*K19_p* x(11) * x(22) )/( x(22) +(k19_p*(( 1 )+( x(1) /ki1_p)+( x(19) /ki2_p)+( x(23) /ks_p))))) );
	
//x(24)   ID: x8  initialValue: 0.001
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*kd8_p* x(24) ) + (1)*(1)* ((compartment_cell*K20_p* x(13) * x(22) )/( x(22) +(k20_p*(( 1 )+( x(24) /ks_p))))) );
	
//x(25)   ID: x9  initialValue: 0.001
	(1/compartment_cell)*( (-1)*(1)* (kd9_p* x(25) *compartment_cell) + (1)*(1)* (kd8_p* x(24) *compartment_cell) )
	];


	
endfunction
        x0=[0.001;0.001;0.001;0.001;0.001;0.001;1.5;1.5;0.5;0.2;0.5;0.001;0.5;5;0.76;0.07;0.8;0;0.001;0.001;0.001;0.001;0.001;0.001;0.001];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)' 'x(14)' 'x(15)' 'x(16)' 'x(17)' 'x(18)' 'x(19)' 'x(20)' 'x(21)' 'x(22)' 'x(23)' 'x(24)' 'x(25)'],[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18;19;20;21;22;23;24;25])

//real_variable:
	
	
//x(1)   id: x1  initialValue: 0.001
	
//x(2)   id: x10  initialValue: 0.001
	
//x(3)   id: x11  initialValue: 0.001
	
//x(4)   id: x12  initialValue: 0.001
	
//x(5)   id: x13  initialValue: 0.001
	
//x(6)   id: x14  initialValue: 0.001
	
//x(7)   id: x15  initialValue: 1.5
	
//x(8)   id: x16  initialValue: 1.5
	
//x(9)   id: x17  initialValue: 0.5
	
//x(10)   id: x18  initialValue: 0.2
	
//x(11)   id: x19  initialValue: 0.5
	
//x(12)   id: x2  initialValue: 0.001
	
//x(13)   id: x20  initialValue: 0.5
	
//x(14)   id: x21  initialValue: 5
	
//x(15)   id: x22  initialValue: 0.76
	
//x(16)   id: x23  initialValue: 0.07
	
//x(17)   id: x24  initialValue: 0.8
	
//x(18)   id: x25  initialValue: 0
	
//x(19)   id: x3  initialValue: 0.001
	
//x(20)   id: x4  initialValue: 0.001
	
//x(21)   id: x5  initialValue: 0.001
	
//x(22)   id: x6  initialValue: 0.001
	
//x(23)   id: x7  initialValue: 0.001
	
//x(24)   id: x8  initialValue: 0.001
	
//x(25)   id: x9  initialValue: 0.001