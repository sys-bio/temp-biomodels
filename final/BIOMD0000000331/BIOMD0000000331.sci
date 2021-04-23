
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_cytoplasm   id: cytoplasm
	compartment_cytoplasm=1;
		
// compartment_ER   id: ER
	compartment_ER=1;
		
// compartment_mit   id: mit
	compartment_mit=1;
		
// k1_p   id: k1
	k1_p=0.01;
		
// k2_p   id: k2
	k2_p=1.65;
		
// k3_p   id: k3
	k3_p=0.64;
		
// K4_p   id: K4
	K4_p=0.09;
		
// k5_p   id: k5
	k5_p=4.88;
		
// K6_p   id: K6
	K6_p=1.18;
		
// k7_p   id: k7
	k7_p=2.08;
		
// k8_p   id: k8
	k8_p=32.24;
		
// K9_p   id: K9
	K9_p=29.09;
		
// k10_p   id: k10
	k10_p=0.7;
		
// K11_p   id: K11
	K11_p=3;
		
// k12_p   id: k12
	k12_p=2.8;
		
// k13_p   id: k13
	k13_p=13.4;
		
// k14_p   id: k14
	k14_p=153;
		
// K15_p   id: K15
	K15_p=0.16;
		
// k16_p   id: k16
	k16_p=7;
		
// K17_p   id: K17
	K17_p=0.05;
		
// k18_p   id: k18
	k18_p=79;
		
// K19_p   id: K19
	K19_p=3.5;
		
// k20_p   id: k20
	k20_p=0.81;
		
// K21_p   id: K21
	K21_p=4.5;
		
// k_act_p   id: k_act
	k_act_p=5;
		
// KM_p   id: KM
	KM_p=0.62;
		
// k_inact_p   id: k_inact
	k_inact_p=0.4;
		
// p_p   id: p
	p_p=4;
		
// k_enz_p   id: k_enz
	k_enz_p=3;
		
// k_rem_p   id: k_rem
	k_rem_p=3;
		



xdot=[
//x(1)   ID: G_alpha  initialValue: 0.01
	        
          (((k1_p+(k2_p* x(1) ))-((k3_p* x(1) * x(2) )/( x(1) +K4_p)))-((k5_p* x(1) * x(3) )/( x(1) +K6_p)))
        ;
	
//x(2)   ID: PLC  initialValue: 0.01
	        
          ((k7_p* x(1) )-((k8_p* x(2) )/( x(2) +K9_p)))
        ;
	
//x(3)   ID: Ca_cyt  initialValue: 0.01
	        
          (((((((( x(4) - x(3) )*k10_p* x(3) *(power( x(2) ,( 4 ))))/((power( x(2) ,( 4 )))+(power(K11_p,( 4 )))))+(k12_p* x(2) )+(k13_p* x(1) ))-((k14_p* x(3) )/( x(3) +K15_p)))-((k16_p* x(3) )/( x(3) +K17_p)))-((k18_p*(power( x(3) ,( 8 ))))/((power(K19_p,( 8 )))+(power( x(3) ,( 8 ))))))+((( x(5) - x(3) )*k20_p* x(3) )/( x(3) +K21_p)))
        ;
	
//x(4)   ID: Ca_ER  initialValue: 10
	        
          ((((( x(4) - x(3) ))*k10_p* x(3) *(power( x(2) ,( 4 ))))/((power( x(2) ,( 4 )))+(power(K11_p,( 4 )))))+((k16_p* x(3) )/( x(3) +K17_p)))
        ;
	
//x(5)   ID: Ca_mit  initialValue: 0.001
	        
          (((k18_p*(power( x(3) ,( 8 ))))/((power(K19_p,( 8 )))+(power( x(3) ,( 8 )))))-((( x(5) - x(3) )*k20_p* x(3) )/( x(3) +K21_p)))
        ;
	
//x(6)   ID: Enz  initialValue: 0
	        
          (((k_act_p*(power( x(3) ,p_p)))/((power(KM_p,p_p))+(power( x(3) ,p_p))))-(k_inact_p* x(6) ))
        ;
	
//x(7)   ID: Product  initialValue: 0
	        
          ((k_enz_p* x(6) )-(k_rem_p* x(7) ))
        
	];


	
endfunction
        x0=[0.01;0.01;0.01;10;0.001;0;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)'],[1;2;3;4;5;6;7])

//real_variable:
	
	
//x(1)   id: G_alpha  initialValue: 0.01
	
//x(2)   id: PLC  initialValue: 0.01
	
//x(3)   id: Ca_cyt  initialValue: 0.01
	
//x(4)   id: Ca_ER  initialValue: 10
	
//x(5)   id: Ca_mit  initialValue: 0.001
	
//x(6)   id: Enz  initialValue: 0
	
//x(7)   id: Product  initialValue: 0