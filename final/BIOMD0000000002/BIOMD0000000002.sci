
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_comp1   id: comp1
	compartment_comp1=1E-16;
		
// kf_0_p   id: kf_0
	kf_0_p=300000000;
		
// kr_0_p   id: kr_0
	kr_0_p=8000;
		
// kf_1_p   id: kf_1
	kf_1_p=150000000;
		
// kr_1_p   id: kr_1
	kr_1_p=16000;
		
// kf_2_p   id: kf_2
	kf_2_p=30000;
		
// kr_2_p   id: kr_2
	kr_2_p=700;
		
// kf_3_p   id: kf_3
	kf_3_p=300000000;
		
// kr_3_p   id: kr_3
	kr_3_p=8.64;
		
// kf_4_p   id: kf_4
	kf_4_p=150000000;
		
// kr_4_p   id: kr_4
	kr_4_p=17.28;
		
// kf_5_p   id: kf_5
	kf_5_p=0.54;
		
// kr_5_p   id: kr_5
	kr_5_p=10800;
		
// kf_6_p   id: kf_6
	kf_6_p=130;
		
// kr_6_p   id: kr_6
	kr_6_p=2740;
		
// kf_7_p   id: kf_7
	kf_7_p=300000000;
		
// kr_7_p   id: kr_7
	kr_7_p=4;
		
// kf_8_p   id: kf_8
	kf_8_p=150000000;
		
// kr_8_p   id: kr_8
	kr_8_p=8;
		
// kf_9_p   id: kf_9
	kf_9_p=19.7;
		
// kr_9_p   id: kr_9
	kr_9_p=3.74;
		
// kf_10_p   id: kf_10
	kf_10_p=19.85;
		
// kr_10_p   id: kr_10
	kr_10_p=1.74;
		
// kf_11_p   id: kf_11
	kf_11_p=20;
		
// kr_11_p   id: kr_11
	kr_11_p=0.81;
		
// kf_12_p   id: kf_12
	kf_12_p=300000000;
		
// kr_12_p   id: kr_12
	kr_12_p=4;
		
// kf_13_p   id: kf_13
	kf_13_p=150000000;
		
// kr_13_p   id: kr_13
	kr_13_p=8;
		
// kf_14_p   id: kf_14
	kf_14_p=0.05;
		
// kr_14_p   id: kr_14
	kr_14_p=0.0012;
		
// kf_15_p   id: kf_15
	kf_15_p=0.05;
		
// kr_15_p   id: kr_15
	kr_15_p=0.0012;
		
// kf_16_p   id: kf_16
	kf_16_p=0.05;
		
// kr_16_p   id: kr_16
	kr_16_p=0.0012;
		



xdot=[
//x(1)   ID: BLL  initialValue: 0
	(1/compartment_comp1)*( (-1)*(1)* (compartment_comp1*((kf_2_p* x(1) )-(kr_2_p* x(12) ))) + (1)*(1)* (compartment_comp1*((kf_1_p* x(5) * x(13) )-(kr_1_p* x(1) ))) );
	
//x(2)   ID: IL  initialValue: 0
	(1/compartment_comp1)*( (-1)*(1)* (compartment_comp1*((kf_8_p* x(2) * x(13) )-(kr_8_p* x(9) ))) + (-1)*(1)* (compartment_comp1*((kf_15_p* x(2) )-(kr_15_p* x(10) ))) + (1)*(1)* (compartment_comp1*((kf_7_p* x(11) * x(13) )-(kr_7_p* x(2) ))) + (1)*(1)* (compartment_comp1*((kf_10_p* x(3) )-(kr_10_p* x(2) ))) );
	
//x(3)   ID: AL  initialValue: 0
	(1/compartment_comp1)*( (-1)*(1)* (compartment_comp1*((kf_4_p* x(3) * x(13) )-(kr_4_p* x(12) ))) + (-1)*(1)* (compartment_comp1*((kf_10_p* x(3) )-(kr_10_p* x(2) ))) + (1)*(1)* (compartment_comp1*((kf_3_p* x(4) * x(13) )-(kr_3_p* x(3) ))) + (1)*(1)* (compartment_comp1*((kf_6_p* x(5) )-(kr_6_p* x(3) ))) );
	
//x(4)   ID: A  initialValue: 0
	(1/compartment_comp1)*( (-1)*(1)* (compartment_comp1*((kf_3_p* x(4) * x(13) )-(kr_3_p* x(3) ))) + (-1)*(1)* (compartment_comp1*((kf_9_p* x(4) )-(kr_9_p* x(11) ))) + (1)*(1)* (compartment_comp1*((kf_5_p* x(6) )-(kr_5_p* x(4) ))) );
	
//x(5)   ID: BL  initialValue: 0
	(1/compartment_comp1)*( (-1)*(1)* (compartment_comp1*((kf_1_p* x(5) * x(13) )-(kr_1_p* x(1) ))) + (-1)*(1)* (compartment_comp1*((kf_6_p* x(5) )-(kr_6_p* x(3) ))) + (1)*(1)* (compartment_comp1*((kf_0_p* x(6) * x(13) )-(kr_0_p* x(5) ))) );
	
//x(6)   ID: B  initialValue: 1E-22
	(1/compartment_comp1)*( (-1)*(1)* (compartment_comp1*((kf_0_p* x(6) * x(13) )-(kr_0_p* x(5) ))) + (-1)*(1)* (compartment_comp1*((kf_5_p* x(6) )-(kr_5_p* x(4) ))) );
	
//x(7)   ID: DLL  initialValue: 0
	(1/compartment_comp1)*( (1)*(1)* (compartment_comp1*((kf_13_p* x(10) * x(13) )-(kr_13_p* x(7) ))) + (1)*(1)* (compartment_comp1*((kf_16_p* x(9) )-(kr_16_p* x(7) ))) );
	
//x(8)   ID: D  initialValue: 0
	(1/compartment_comp1)*( (-1)*(1)* (compartment_comp1*((kf_12_p* x(8) * x(13) )-(kr_12_p* x(10) ))) + (1)*(1)* (compartment_comp1*((kf_14_p* x(11) )-(kr_14_p* x(8) ))) );
	
//x(9)   ID: ILL  initialValue: 0
	(1/compartment_comp1)*( (-1)*(1)* (compartment_comp1*((kf_16_p* x(9) )-(kr_16_p* x(7) ))) + (1)*(1)* (compartment_comp1*((kf_8_p* x(2) * x(13) )-(kr_8_p* x(9) ))) + (1)*(1)* (compartment_comp1*((kf_11_p* x(12) )-(kr_11_p* x(9) ))) );
	
//x(10)   ID: DL  initialValue: 0
	(1/compartment_comp1)*( (-1)*(1)* (compartment_comp1*((kf_13_p* x(10) * x(13) )-(kr_13_p* x(7) ))) + (1)*(1)* (compartment_comp1*((kf_12_p* x(8) * x(13) )-(kr_12_p* x(10) ))) + (1)*(1)* (compartment_comp1*((kf_15_p* x(2) )-(kr_15_p* x(10) ))) );
	
//x(11)   ID: I  initialValue: 0
	(1/compartment_comp1)*( (-1)*(1)* (compartment_comp1*((kf_7_p* x(11) * x(13) )-(kr_7_p* x(2) ))) + (-1)*(1)* (compartment_comp1*((kf_14_p* x(11) )-(kr_14_p* x(8) ))) + (1)*(1)* (compartment_comp1*((kf_9_p* x(4) )-(kr_9_p* x(11) ))) );
	
//x(12)   ID: ALL  initialValue: 0
	(1/compartment_comp1)*( (-1)*(1)* (compartment_comp1*((kf_11_p* x(12) )-(kr_11_p* x(9) ))) + (1)*(1)* (compartment_comp1*((kf_2_p* x(1) )-(kr_2_p* x(12) ))) + (1)*(1)* (compartment_comp1*((kf_4_p* x(3) * x(13) )-(kr_4_p* x(12) ))) );
	
//x(13)   ID: L  initialValue: 1E-21
	(1/compartment_comp1)*( (-1)*(1)* (compartment_comp1*((kf_0_p* x(6) * x(13) )-(kr_0_p* x(5) ))) + (-1)*(1)* (compartment_comp1*((kf_1_p* x(5) * x(13) )-(kr_1_p* x(1) ))) + (-1)*(1)* (compartment_comp1*((kf_3_p* x(4) * x(13) )-(kr_3_p* x(3) ))) + (-1)*(1)* (compartment_comp1*((kf_4_p* x(3) * x(13) )-(kr_4_p* x(12) ))) + (-1)*(1)* (compartment_comp1*((kf_7_p* x(11) * x(13) )-(kr_7_p* x(2) ))) + (-1)*(1)* (compartment_comp1*((kf_8_p* x(2) * x(13) )-(kr_8_p* x(9) ))) + (-1)*(1)* (compartment_comp1*((kf_12_p* x(8) * x(13) )-(kr_12_p* x(10) ))) + (-1)*(1)* (compartment_comp1*((kf_13_p* x(10) * x(13) )-(kr_13_p* x(7) ))) )
	];


	
endfunction
        x0=[0;0;0;0;0;1E-22;0;0;0;0;0;0;1E-21];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)'],[1;2;3;4;5;6;7;8;9;10;11;12;13])

//real_variable:
	
	
//x(1)   id: BLL  initialValue: 0
	
//x(2)   id: IL  initialValue: 0
	
//x(3)   id: AL  initialValue: 0
	
//x(4)   id: A  initialValue: 0
	
//x(5)   id: BL  initialValue: 0
	
//x(6)   id: B  initialValue: 1E-22
	
//x(7)   id: DLL  initialValue: 0
	
//x(8)   id: D  initialValue: 0
	
//x(9)   id: ILL  initialValue: 0
	
//x(10)   id: DL  initialValue: 0
	
//x(11)   id: I  initialValue: 0
	
//x(12)   id: ALL  initialValue: 0
	
//x(13)   id: L  initialValue: 1E-21