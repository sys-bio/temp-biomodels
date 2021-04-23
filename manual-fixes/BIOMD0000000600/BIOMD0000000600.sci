
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_c   id: c
	compartment_c=2.3;
		
// compartment_n   id: n
	compartment_n=1;
		
// compartment_extracellular   id: extracellular
	compartment_extracellular=1;
		
// h_p   id: h
	h_p=2.06;
		
// k1_p   id: k1
	k1_p=0.00446;
		
// k2_p   id: k2
	k2_p=4.39E-6;
		
// k3_p   id: k3
	k3_p=0.324;
		
// k4_p   id: k4
	k4_p=0.00192;
		
// k7_p   id: k7
	k7_p=9.35E-6;
		
// k8_p   id: k8
	k8_p=0.0104;
		
// k9_p   id: k9
	k9_p=0.00075;
		
// k10_p   id: k10
	k10_p=5.12E-8;
		
// k11_p   id: k11
	k11_p=0.00923;
		
// k12_p   id: k12
	k12_p=0.0513;
		
// k13_p   id: k13
	k13_p=0.00164;
		
// k5_p   id: k5
	k5_p=0.000549;
		
// k6_p   id: k6
	k6_p=1.29E-5;
		
// k14_p   id: k14
	k14_p=0.038;
		
// k15_p   id: k15
	k15_p=28.52;
		
// k16_p   id: k16
	k16_p=0.0214;
		
// k17_p   id: k17
	k17_p=8.05E-5;
		
// k18_p   id: k18
	k18_p=0.0434;
		
// k19_p   id: k19
	k19_p=0.000412;
		
// TGFb_s   id: TGFb
	TGFb_s=460;
		



xdot=[
//x(1)   ID: TGFbR  initialValue: 1010
	(1/compartment_c)*( (-1)*(1)* (k2_p* x(1) *TGFb_s) + (1)*(1)* (compartment_c*k1_p* x(2) ) );
	
//x(2)   ID: TGFb_TGFbR  initialValue: 0
	(1/compartment_c)*( (-1)*(1)* (compartment_c*k1_p* x(2) ) + (-1)*(1)* (compartment_c*k3_p* x(2) ) + (1)*(1)* (k2_p* x(1) *TGFb_s) + (1)*(1)* (compartment_c*k4_p* x(3) ) + (1)*(1)* (compartment_c*k6_p* x(4) ) );
	
//x(3)   ID: TGFb_TGFbR_P  initialValue: 0
	(1/compartment_c)*( (-1)*(1)* (compartment_c*k4_p* x(3) ) + (-1)*(1)* (compartment_c*k5_p* x(3) * x(11) ) + (1)*(1)* (compartment_c*k3_p* x(2) ) );
	
//x(4)   ID: I_Smad_TGFb_TGFbR_P  initialValue: 0
	(1/compartment_c)*( (-1)*(1)* (compartment_c*k6_p* x(4) ) + (1)*(1)* (compartment_c*k5_p* x(3) * x(11) ) );
	
//x(5)   ID: Smad  initialValue: 7000
	(1/compartment_c)*( (-1)*(1)* (compartment_c*()) + (-1)*(1)* (k8_p* x(5) ) + (1)*(1)* (k9_p* x(12) ) );
	
//x(6)   ID: Smad_P  initialValue: 0
	(1/compartment_c)*( (-1)*(2)* (compartment_c*k10_p*(power( x(6) ,( 2 )))) + (-1)*(1)* (compartment_c*k10_p* x(6) * x(7) ) + (-1)*(1)* (k8_p* x(6) ) + (1)*(1)* (compartment_c*()) + (1)*(2)* (compartment_c*k11_p* x(8) ) + (1)*(1)* (compartment_c*k11_p* x(9) ) + (1)*(1)* (k9_p* x(14) ) );
	
//x(7)   ID: CoSmad  initialValue: 12000
	(1/compartment_c)*( (-1)*(1)* (compartment_c*k10_p* x(6) * x(7) ) + (-1)*(1)* (k8_p* x(7) ) + (1)*(1)* (compartment_c*k11_p* x(9) ) + (1)*(1)* (k9_p* x(16) ) );
	
//x(8)   ID: Smad_P_Smad_P  initialValue: 0
	(1/compartment_c)*( (-1)*(1)* (compartment_c*k11_p* x(8) ) + (-1)*(1)* () + (1)*(1)* (compartment_c*k10_p*(power( x(6) ,( 2 )))) );
	
//x(9)   ID: Smad_P_CoSmad  initialValue: 0
	(1/compartment_c)*( (-1)*(1)* (compartment_c*k11_p* x(9) ) + (-1)*(1)* () + (1)*(1)* (compartment_c*k10_p* x(6) * x(7) ) );
	
//x(10)   ID: I_Smad_mRNA2  initialValue: 0
	(1/compartment_c)*( (-1)*(1)* (compartment_c*k17_p* x(10) ) + (1)*(1)* (k16_p* x(17) ) );
	
//x(11)   ID: I_Smad  initialValue: 0
	(1/compartment_c)*( (-1)*(1)* (compartment_c*k5_p* x(3) * x(11) ) + (-1)*(1)* (compartment_c*k19_p* x(11) ) + (1)*(1)* (compartment_c*k6_p* x(4) ) + (1)*(1)* (compartment_c*()) );
	
//x(12)   ID: Smad_N  initialValue: 82000
	(1/compartment_n)*( (-1)*(1)* (k9_p* x(12) ) + (1)*(1)* (k8_p* x(5) ) + (1)*(1)* (compartment_n*k13_p* x(14) ) );
	
//x(13)   ID: Smad_P_Smad_P_N  initialValue: 0
	(1/compartment_n)*( (-1)*(1)* (compartment_n*k11_p* x(13) ) + (1)*(1)* () + (1)*(1)* (compartment_n*k10_p*(power( x(14) ,( 2 )))) );
	
//x(14)   ID: Smad_P_N  initialValue: 0
	(1/compartment_n)*( (-1)*(1)* (k9_p* x(14) ) + (-1)*(1)* (compartment_n*k13_p* x(14) ) + (-1)*(2)* (compartment_n*k10_p*(power( x(14) ,( 2 )))) + (-1)*(1)* (compartment_n*k10_p* x(14) * x(16) ) + (1)*(1)* (k8_p* x(6) ) + (1)*(2)* (compartment_n*k11_p* x(13) ) + (1)*(1)* (compartment_n*k11_p* x(15) ) );
	
//x(15)   ID: Smad_P_CoSmad_N  initialValue: 0
	(1/compartment_n)*( (-1)*(1)* (compartment_n*k11_p* x(15) ) + (1)*(1)* () + (1)*(1)* (compartment_n*k10_p* x(14) * x(16) ) );
	
//x(16)   ID: CoSmad_N  initialValue: 135000
	(1/compartment_n)*( (-1)*(1)* (k9_p* x(16) ) + (-1)*(1)* (compartment_n*k10_p* x(14) * x(16) ) + (1)*(1)* (k8_p* x(7) ) + (1)*(1)* (compartment_n*k11_p* x(15) ) );
	
//x(17)   ID: I_Smad_mRNA1  initialValue: 0
	(1/compartment_n)*( (-1)*(1)* (k16_p* x(17) ) + (1)*(1)* (compartment_n*()) )
	];


	
endfunction
        x0=[1010;0;0;0;7000;0;12000;0;0;0;0;82000;0;0;0;135000;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)' 'x(14)' 'x(15)' 'x(16)' 'x(17)'],[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17])

//real_variable:
	
	
//x(1)   id: TGFbR  initialValue: 1010
	
//x(2)   id: TGFb_TGFbR  initialValue: 0
	
//x(3)   id: TGFb_TGFbR_P  initialValue: 0
	
//x(4)   id: I_Smad_TGFb_TGFbR_P  initialValue: 0
	
//x(5)   id: Smad  initialValue: 7000
	
//x(6)   id: Smad_P  initialValue: 0
	
//x(7)   id: CoSmad  initialValue: 12000
	
//x(8)   id: Smad_P_Smad_P  initialValue: 0
	
//x(9)   id: Smad_P_CoSmad  initialValue: 0
	
//x(10)   id: I_Smad_mRNA2  initialValue: 0
	
//x(11)   id: I_Smad  initialValue: 0
	
//x(12)   id: Smad_N  initialValue: 82000
	
//x(13)   id: Smad_P_Smad_P_N  initialValue: 0
	
//x(14)   id: Smad_P_N  initialValue: 0
	
//x(15)   id: Smad_P_CoSmad_N  initialValue: 0
	
//x(16)   id: CoSmad_N  initialValue: 135000
	
//x(17)   id: I_Smad_mRNA1  initialValue: 0