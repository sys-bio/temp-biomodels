
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_cytosol   id: cytosol
	compartment_cytosol=2.69E-13;
		
// compartment_nucleus   id: nucleus
	compartment_nucleus=1.13E-13;
		
// k1_p   id: k1
	k1_p=2.56E-5;
		
// k2_p   id: k2
	k2_p=0.00256;
		
// k16_p   id: k16
	k16_p=6.63;
		
// k15_p   id: k15
	k15_p=0.00168;
		
// k18_p   id: k18
	k18_p=0.00096;
		
// k17_p   id: k17
	k17_p=0.0015;
		
// k6_p   id: k6
	k6_p=0.00092;
		
// k5_p   id: k5
	k5_p=0.0019;
		
// k14_p   id: k14
	k14_p=0.00256;
		
// k13_p   id: k13
	k13_p=0.5;
		
// k12_p   id: k12
	k12_p=0.00168;
		
// k11_p   id: k11
	k11_p=6.63;
		
// k10_p   id: k10
	k10_p=0.005;
		
// k9_p   id: k9
	k9_p=0.5;
		
// k3_p   id: k3
	k3_p=0.005;
		
// k4_p   id: k4
	k4_p=0.5;
		
// k7_p   id: k7
	k7_p=0.005;
		
// k8_p   id: k8
	k8_p=0.5;
		
// k19_p   id: k19
	k19_p=1;
		
// k20_p   id: k20
	k20_p=1;
		
// k21_p   id: k21
	k21_p=0.21;
		
// k22_p   id: k22
	k22_p=0.5;
		



xdot=[
//x(1)   ID: Ca_Nuc  initialValue: 1
	(1/compartment_nucleus)*( (-1)*(3)* (compartment_nucleus*((k19_p* x(8) *(power( x(1) ,( 3 ))))-(k20_p* x(4) ))) + (1)*(1)* ((compartment_cytosol*k21_p* x(2) )-(compartment_nucleus*k22_p* x(1) )) );
	
//x(2)   ID: Ca_Cyt  initialValue: 1
	(1/compartment_cytosol)*( (-1)*(3)* (compartment_cytosol*((k19_p* x(14) *(power( x(2) ,( 3 ))))-(k20_p* x(10) ))) + (-1)*(1)* ((compartment_cytosol*k21_p* x(2) )-(compartment_nucleus*k22_p* x(1) )) );
	
//x(3)   ID: NFAT_Nuc  initialValue: 0.0005219
	(1/compartment_nucleus)*( (-1)*(1)* (compartment_nucleus*((k16_p* x(3) * x(4) )-(k15_p* x(6) ))) + (-1)*(1)* ((compartment_nucleus*k18_p* x(3) )-(compartment_cytosol*k17_p* x(9) )) + (1)*(1)* (compartment_nucleus*((k1_p* x(5) )-(k2_p* x(3) ))) );
	
//x(4)   ID: Act_C_Nuc  initialValue: 5.05E-5
	(1/compartment_nucleus)*( (-1)*(1)* (compartment_nucleus*((k1_p* x(5) )-(k2_p* x(3) ))) + (-1)*(1)* (compartment_nucleus*((k16_p* x(3) * x(4) )-(k15_p* x(6) ))) + (-1)*(1)* ((compartment_nucleus*k6_p* x(4) )-(compartment_cytosol*k5_p* x(10) )) + (1)*(1)* (compartment_nucleus*((k1_p* x(5) )-(k2_p* x(3) ))) + (1)*(1)* (compartment_nucleus*((k12_p* x(7) )-(k11_p* x(5) * x(4) ))) + (1)*(1)* (compartment_nucleus*((k19_p* x(8) *(power( x(1) ,( 3 ))))-(k20_p* x(4) ))) );
	
//x(5)   ID: NFAT_Pi_Nuc  initialValue: 0.0002272
	(1/compartment_nucleus)*( (-1)*(1)* (compartment_nucleus*((k1_p* x(5) )-(k2_p* x(3) ))) + (1)*(1)* (compartment_nucleus*((k12_p* x(7) )-(k11_p* x(5) * x(4) ))) + (1)*(1)* ((compartment_cytosol*k3_p* x(11) )-(compartment_nucleus*k4_p* x(5) )) );
	
//x(6)   ID: NFAT_Act_C_Nuc  initialValue: 0.0009477
	(1/compartment_nucleus)*( (-1)*(1)* (compartment_nucleus*((k14_p* x(6) )-(k13_p* x(7) ))) + (-1)*(1)* ((compartment_nucleus*k10_p* x(6) )-(compartment_cytosol*k9_p* x(12) )) + (1)*(1)* (compartment_nucleus*((k16_p* x(3) * x(4) )-(k15_p* x(6) ))) );
	
//x(7)   ID: NFAT_Pi_Act_C_Nuc  initialValue: 2.5E-6
	(1/compartment_nucleus)*( (-1)*(1)* (compartment_nucleus*((k12_p* x(7) )-(k11_p* x(5) * x(4) ))) + (1)*(1)* (compartment_nucleus*((k14_p* x(6) )-(k13_p* x(7) ))) + (1)*(1)* ((compartment_cytosol*k7_p* x(13) )-(compartment_nucleus*k8_p* x(7) )) );
	
//x(8)   ID: Inact_C_Nuc  initialValue: 0.049198
	(1/compartment_nucleus)*( (-1)*(1)* (compartment_nucleus*((k19_p* x(8) *(power( x(1) ,( 3 ))))-(k20_p* x(4) ))) + (1)*(1)* ((compartment_cytosol*k5_p* x(14) )-(compartment_nucleus*k6_p* x(8) )) );
	
//x(9)   ID: NFAT_Cyt  initialValue: 0.0001101
	(1/compartment_cytosol)*( (1)*(1)* ((compartment_nucleus*k18_p* x(3) )-(compartment_cytosol*k17_p* x(9) )) + (1)*(1)* (compartment_cytosol*((k15_p* x(12) )-(k16_p* x(9) * x(10) ))) + (1)*(1)* (compartment_cytosol*((k1_p* x(11) )-(k2_p* x(9) ))) );
	
//x(10)   ID: Act_C_Cyt  initialValue: 9.1E-6
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((k1_p* x(11) )-(k2_p* x(9) ))) + (1)*(1)* ((compartment_nucleus*k6_p* x(4) )-(compartment_cytosol*k5_p* x(10) )) + (1)*(1)* (compartment_cytosol*((k12_p* x(13) )-(k11_p* x(11) * x(10) ))) + (1)*(1)* (compartment_cytosol*((k15_p* x(12) )-(k16_p* x(9) * x(10) ))) + (1)*(1)* (compartment_cytosol*((k1_p* x(11) )-(k2_p* x(9) ))) + (1)*(1)* (compartment_cytosol*((k19_p* x(14) *(power( x(2) ,( 3 ))))-(k20_p* x(10) ))) );
	
//x(11)   ID: NFAT_Pi_Cyt  initialValue: 0.0094397
	(1/compartment_cytosol)*( (-1)*(1)* ((compartment_cytosol*k3_p* x(11) )-(compartment_nucleus*k4_p* x(5) )) + (-1)*(1)* (compartment_cytosol*((k1_p* x(11) )-(k2_p* x(9) ))) + (1)*(1)* (compartment_cytosol*((k12_p* x(13) )-(k11_p* x(11) * x(10) ))) );
	
//x(12)   ID: NFAT_Act_C_Cyt  initialValue: 6.1E-6
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((k14_p* x(12) )-(k13_p* x(13) ))) + (-1)*(1)* (compartment_cytosol*((k15_p* x(12) )-(k16_p* x(9) * x(10) ))) + (1)*(1)* ((compartment_nucleus*k10_p* x(6) )-(compartment_cytosol*k9_p* x(12) )) );
	
//x(13)   ID: NFAT_Pi_Act_C_Cyt  initialValue: 2.2E-6
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((k12_p* x(13) )-(k11_p* x(11) * x(10) ))) + (-1)*(1)* ((compartment_cytosol*k7_p* x(13) )-(compartment_nucleus*k8_p* x(7) )) + (1)*(1)* (compartment_cytosol*((k14_p* x(12) )-(k13_p* x(13) ))) );
	
//x(14)   ID: Inact_C_Cyt  initialValue: 0.0097108
	(1/compartment_cytosol)*( (-1)*(1)* (compartment_cytosol*((k19_p* x(14) *(power( x(2) ,( 3 ))))-(k20_p* x(10) ))) + (-1)*(1)* ((compartment_cytosol*k5_p* x(14) )-(compartment_nucleus*k6_p* x(8) )) )
	];


	
endfunction
        x0=[1;1;0.0005219;5.05E-5;0.0002272;0.0009477;2.5E-6;0.049198;0.0001101;9.1E-6;0.0094397;6.1E-6;2.2E-6;0.0097108];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)' 'x(14)'],[1;2;3;4;5;6;7;8;9;10;11;12;13;14])

//real_variable:
	
	
//x(1)   id: Ca_Nuc  initialValue: 1
	
//x(2)   id: Ca_Cyt  initialValue: 1
	
//x(3)   id: NFAT_Nuc  initialValue: 0.0005219
	
//x(4)   id: Act_C_Nuc  initialValue: 5.05E-5
	
//x(5)   id: NFAT_Pi_Nuc  initialValue: 0.0002272
	
//x(6)   id: NFAT_Act_C_Nuc  initialValue: 0.0009477
	
//x(7)   id: NFAT_Pi_Act_C_Nuc  initialValue: 2.5E-6
	
//x(8)   id: Inact_C_Nuc  initialValue: 0.049198
	
//x(9)   id: NFAT_Cyt  initialValue: 0.0001101
	
//x(10)   id: Act_C_Cyt  initialValue: 9.1E-6
	
//x(11)   id: NFAT_Pi_Cyt  initialValue: 0.0094397
	
//x(12)   id: NFAT_Act_C_Cyt  initialValue: 6.1E-6
	
//x(13)   id: NFAT_Pi_Act_C_Cyt  initialValue: 2.2E-6
	
//x(14)   id: Inact_C_Cyt  initialValue: 0.0097108