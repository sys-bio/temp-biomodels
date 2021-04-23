
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_phagosome   id: phagosome
	compartment_phagosome=1;
		
// compartment_cytoplasm   id: cytoplasm
	compartment_cytoplasm=10;
		
// Knadph_p   id: Knadph
	Knadph_p=60;
		
// k1_p   id: k1
	k1_p=50;
		
// kminus1_p   id: kminus1
	kminus1_p=58;
		
// k2_p   id: k2
	k2_p=10;
		
// k3_p   id: k3
	k3_p=0.004;
		
// k4_p   id: k4
	k4_p=20;
		
// k5_p   id: k5
	k5_p=10;
		
// k6_p   id: k6
	k6_p=0.1;
		
// k7_p   id: k7
	k7_p=1E-6;
		
// k8_p   id: k8
	k8_p=50;
		
// k9_p   id: k9
	k9_p=500;
		
// k10_p   id: k10
	k10_p=10;
		
// k11_p   id: k11
	k11_p=60;
		
// k12_p   id: k12
	k12_p=25;
		
// k13_p   id: k13
	k13_p=12.5;
		
// kminus13_p   id: kminus13
	kminus13_p=0.045;
		
// k14_p   id: k14
	k14_p=30;
		
// k15_p   id: k15
	k15_p=30;
		
// k16_p   id: k16
	k16_p=10;
		
// k17_p   id: k17
	k17_p=10;
		
// k18_p   id: k18
	k18_p=2;
		
// V_p   id: V
	V_p=288;
		
// L_p   id: L
	L_p=550;
		
// Ko_p   id: Ko
	Ko_p=1.5;
		



xdot=[
//x(1)   ID: H2O2_p  initialValue: 0
	(1/compartment_phagosome)*( (-1)*(1)* (compartment_phagosome*((k1_p* x(1) * x(2) )-(kminus1_p* x(3) ))) + (-1)*(1)* (compartment_phagosome*((k15_p* x(1) )-(k15_p* x(13) ))) + (1)*(1)* (compartment_phagosome*k5_p*(power( x(7) ,( 2 )))) );
	
//x(2)   ID: per3_p  initialValue: 300
	(1/compartment_phagosome)*( (-1)*(1)* (compartment_phagosome*((k1_p* x(1) * x(2) )-(kminus1_p* x(3) ))) + (-1)*(1)* (compartment_phagosome*k4_p* x(2) * x(7) ) + (1)*(1)* (compartment_phagosome*k3_p* x(5) * x(4) ) );
	
//x(3)   ID: coI_p  initialValue: 0
	(1/compartment_phagosome)*( (-1)*(1)* (compartment_phagosome*k2_p* x(3) * x(4) ) + (1)*(1)* (compartment_phagosome*((k1_p* x(1) * x(2) )-(kminus1_p* x(3) ))) + (1)*(1)* (compartment_phagosome*k6_p* x(19) * x(7) ) );
	
//x(4)   ID: MLTH_p  initialValue: 300
	(1/compartment_phagosome)*( (-1)*(1)* (compartment_phagosome*k2_p* x(3) * x(4) ) + (-1)*(1)* (compartment_phagosome*k3_p* x(5) * x(4) ) + (-1)*(1)* (compartment_phagosome*((k16_p* x(4) )-(k16_p* x(18) ))) );
	
//x(5)   ID: coII_p  initialValue: 0
	(1/compartment_phagosome)*( (-1)*(1)* (compartment_phagosome*k3_p* x(5) * x(4) ) + (1)*(1)* (compartment_phagosome*k2_p* x(3) * x(4) ) );
	
//x(6)   ID: MLT_p  initialValue: 0
	(1/compartment_phagosome)*( (-1)*(1)* (compartment_phagosome*((k17_p* x(6) )-(k17_p* x(17) ))) + (1)*(1)* (compartment_phagosome*k2_p* x(3) * x(4) ) + (1)*(1)* (compartment_phagosome*k3_p* x(5) * x(4) ) );
	
//x(7)   ID: O2minus_p  initialValue: 0
	(1/compartment_phagosome)*( (-1)*(1)* (compartment_phagosome*k4_p* x(2) * x(7) ) + (-1)*(2)* (compartment_phagosome*k5_p*(power( x(7) ,( 2 )))) + (-1)*(1)* (compartment_phagosome*k6_p* x(19) * x(7) ) + (-1)*(1)* (compartment_phagosome*((k18_p* x(7) )-(k18_p* x(15) ))) + (1)*(2)* (compartment_phagosome*((((V_p* x(10) )/Knadph_p)*(( 1 )+( x(10) /Knadph_p))* x(9) )/((L_p+(power((( 1 )+( x(10) /Knadph_p)),( 2 ))))*(Ko_p+ x(9) )))) );
	
//x(8)   ID: H_p  initialValue: 0
	(1/compartment_phagosome)*( (-1)*(2)* (compartment_phagosome*k5_p*(power( x(7) ,( 2 )))) );
	
//x(9)   ID: O2_p  initialValue: 0
	(1/compartment_phagosome)*( (-1)*(1)* (compartment_phagosome*((k14_p* x(9) )-(k14_p* x(11) ))) + (-1)*(2)* (compartment_phagosome*((((V_p* x(10) )/Knadph_p)*(( 1 )+( x(10) /Knadph_p))* x(9) )/((L_p+(power((( 1 )+( x(10) /Knadph_p)),( 2 ))))*(Ko_p+ x(9) )))) + (1)*(1)* (compartment_phagosome*k5_p*(power( x(7) ,( 2 )))) + (1)*(1)* (compartment_phagosome*k6_p* x(19) * x(7) ) );
	
//x(10)   ID: NADPH_c  initialValue: 0
	(1/compartment_cytoplasm)*( (-1)*(1)* (compartment_cytoplasm*k7_p* x(10) * x(11) ) + (-1)*(1)* (compartment_cytoplasm*k10_p* x(17) * x(10) ) + (-1)*(1)* (compartment_phagosome*((((V_p* x(10) )/Knadph_p)*(( 1 )+( x(10) /Knadph_p))* x(9) )/((L_p+(power((( 1 )+( x(10) /Knadph_p)),( 2 ))))*(Ko_p+ x(9) )))) + (1)*(1)* (compartment_cytoplasm*k12_p) );
	
//x(11)   ID: O2_c  initialValue: 0
	(1/compartment_cytoplasm)*( (-1)*(1)* (compartment_cytoplasm*k7_p* x(10) * x(11) ) + (-1)*(1)* (compartment_cytoplasm*k8_p* x(14) * x(11) ) + (-1)*(1)* (compartment_cytoplasm*kminus13_p* x(11) ) + (1)*(1)* (compartment_cytoplasm*k9_p*(power( x(15) ,( 2 )))) + (1)*(1)* (compartment_cytoplasm*k13_p) + (1)*(1)* (compartment_phagosome*((k14_p* x(9) )-(k14_p* x(11) ))) );
	
//x(12)   ID: NADPplus_c  initialValue: 0
	(1/compartment_cytoplasm)*( (1)*(1)* (compartment_cytoplasm*k7_p* x(10) * x(11) ) + (1)*(1)* (compartment_cytoplasm*k8_p* x(14) * x(11) ) + (1)*(1)* (compartment_phagosome*((((V_p* x(10) )/Knadph_p)*(( 1 )+( x(10) /Knadph_p))* x(9) )/((L_p+(power((( 1 )+( x(10) /Knadph_p)),( 2 ))))*(Ko_p+ x(9) )))) );
	
//x(13)   ID: H2O2_c  initialValue: 0
	(1/compartment_cytoplasm)*( (1)*(1)* (compartment_cytoplasm*k7_p* x(10) * x(11) ) + (1)*(1)* (compartment_cytoplasm*k9_p*(power( x(15) ,( 2 )))) + (1)*(1)* (compartment_phagosome*((k15_p* x(1) )-(k15_p* x(13) ))) );
	
//x(14)   ID: NADP_c  initialValue: 0
	(1/compartment_cytoplasm)*( (-1)*(1)* (compartment_cytoplasm*k8_p* x(14) * x(11) ) + (-1)*(2)* (compartment_cytoplasm*k11_p*(power( x(14) ,( 2 )))) + (1)*(1)* (compartment_cytoplasm*k10_p* x(17) * x(10) ) );
	
//x(15)   ID: O2minus_c  initialValue: 0
	(1/compartment_cytoplasm)*( (-1)*(2)* (compartment_cytoplasm*k9_p*(power( x(15) ,( 2 )))) + (1)*(1)* (compartment_cytoplasm*k8_p* x(14) * x(11) ) + (1)*(1)* (compartment_phagosome*((k18_p* x(7) )-(k18_p* x(15) ))) );
	
//x(16)   ID: H_c  initialValue: 0
	(1/compartment_cytoplasm)*( (-1)*(2)* (compartment_cytoplasm*k9_p*(power( x(15) ,( 2 )))) );
	
//x(17)   ID: MLT_c  initialValue: 0
	(1/compartment_cytoplasm)*( (-1)*(1)* (compartment_cytoplasm*k10_p* x(17) * x(10) ) + (1)*(1)* (compartment_phagosome*((k17_p* x(6) )-(k17_p* x(17) ))) );
	
//x(18)   ID: MLTH_c  initialValue: 300
	(1/compartment_cytoplasm)*( (1)*(1)* (compartment_cytoplasm*k10_p* x(17) * x(10) ) + (1)*(1)* (compartment_phagosome*((k16_p* x(4) )-(k16_p* x(18) ))) );
	
//x(19)   ID: coIII_p  initialValue: 0
	(1/compartment_phagosome)*( (-1)*(1)* (compartment_phagosome*k6_p* x(19) * x(7) ) + (1)*(1)* (compartment_phagosome*k4_p* x(2) * x(7) ) );
	
//x(20)   ID: NADP2_c  initialValue: 0
	(1/compartment_cytoplasm)*( (1)*(1)* (compartment_cytoplasm*k11_p*(power( x(14) ,( 2 )))) )
	];


	
endfunction
        x0=[0;300;0;300;0;0;0;0;0;0;0;0;0;0;0;0;0;300;0;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)' 'x(14)' 'x(15)' 'x(16)' 'x(17)' 'x(18)' 'x(19)' 'x(20)'],[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18;19;20])

//real_variable:
	
	
//x(1)   id: H2O2_p  initialValue: 0
	
//x(2)   id: per3_p  initialValue: 300
	
//x(3)   id: coI_p  initialValue: 0
	
//x(4)   id: MLTH_p  initialValue: 300
	
//x(5)   id: coII_p  initialValue: 0
	
//x(6)   id: MLT_p  initialValue: 0
	
//x(7)   id: O2minus_p  initialValue: 0
	
//x(8)   id: H_p  initialValue: 0
	
//x(9)   id: O2_p  initialValue: 0
	
//x(10)   id: NADPH_c  initialValue: 0
	
//x(11)   id: O2_c  initialValue: 0
	
//x(12)   id: NADPplus_c  initialValue: 0
	
//x(13)   id: H2O2_c  initialValue: 0
	
//x(14)   id: NADP_c  initialValue: 0
	
//x(15)   id: O2minus_c  initialValue: 0
	
//x(16)   id: H_c  initialValue: 0
	
//x(17)   id: MLT_c  initialValue: 0
	
//x(18)   id: MLTH_c  initialValue: 300
	
//x(19)   id: coIII_p  initialValue: 0
	
//x(20)   id: NADP2_c  initialValue: 0