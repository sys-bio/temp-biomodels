
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_compartment   id: compartment
	compartment_compartment=1;
		
// V1_p   id: V1
	V1_p=0.5;
		
// K1GLC_p   id: K1GLC
	K1GLC_p=0.1;
		
// K1ATP_p   id: K1ATP
	K1ATP_p=0.063;
		
// V2_p   id: V2
	V2_p=1.5;
		
// K2_p   id: K2
	K2_p=0.0016;
		
// k2_p   id: k2
	k2_p=0.017;
		
// K2ATP_p   id: K2ATP
	K2ATP_p=0.01;
		
// k3f_p   id: k3f
	k3f_p=1;
		
// k3b_p   id: k3b
	k3b_p=50;
		
// V4_p   id: V4
	V4_p=10;
		
// K4GAP_p   id: K4GAP
	K4GAP_p=1;
		
// K4NAD_p   id: K4NAD
	K4NAD_p=1;
		
// k5f_p   id: k5f
	k5f_p=1;
		
// k5b_p   id: k5b
	k5b_p=0.5;
		
// V6_p   id: V6
	V6_p=10;
		
// K6PEP_p   id: K6PEP
	K6PEP_p=0.2;
		
// K6ADP_p   id: K6ADP
	K6ADP_p=0.3;
		
// V7_p   id: V7
	V7_p=2;
		
// K7PYR_p   id: K7PYR
	K7PYR_p=0.3;
		
// k8f_p   id: k8f
	k8f_p=1;
		
// k8b_p   id: k8b
	k8b_p=0.000143;
		
// k9f_p   id: k9f
	k9f_p=10;
		
// k9b_p   id: k9b
	k9b_p=10;
		
// k10_p   id: k10
	k10_p=0.05;
		
// flow_p   id: flow
	flow_p=0.011;
		



xdot=[
//x(1)   ID: ATP  initialValue: 4.49064
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*((V1_p* x(1) * x(4) )/((K1GLC_p+ x(4) )*(K1ATP_p+ x(1) )))) + (-1)*(1)* (compartment_compartment*((V2_p* x(1) *(power( x(5) ,( 2 ))))/(((K2_p*(( 1 )+(k2_p*(power(( x(1) / x(3) ),( 2 ))))))+(power( x(5) ,( 2 ))))*(K2ATP_p+ x(1) )))) + (-1)*(1)* (compartment_compartment*((k9f_p* x(3) * x(1) )-(k9b_p*(power( x(2) ,( 2 )))))) + (1)*(1)* (compartment_compartment*(( 3.5 )- x(1) )*flow_p) + (1)*(1)* (compartment_compartment*((k5f_p* x(10) * x(2) )-(k5b_p* x(11) * x(1) ))) + (1)*(1)* (compartment_compartment*((V6_p* x(2) * x(11) )/((K6PEP_p+ x(11) )*(K6ADP_p+ x(2) )))) );
	
//x(2)   ID: ADP  initialValue: 0.108367
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*((k5f_p* x(10) * x(2) )-(k5b_p* x(11) * x(1) ))) + (-1)*(1)* (compartment_compartment*((V6_p* x(2) * x(11) )/((K6PEP_p+ x(11) )*(K6ADP_p+ x(2) )))) + (1)*(1)* (compartment_compartment*(( 1.1 )- x(2) )*flow_p) + (1)*(1)* (compartment_compartment*((V1_p* x(1) * x(4) )/((K1GLC_p+ x(4) )*(K1ATP_p+ x(1) )))) + (1)*(1)* (compartment_compartment*((V2_p* x(1) *(power( x(5) ,( 2 ))))/(((K2_p*(( 1 )+(k2_p*(power(( x(1) / x(3) ),( 2 ))))))+(power( x(5) ,( 2 ))))*(K2ATP_p+ x(1) )))) + (1)*(2)* (compartment_compartment*((k9f_p* x(3) * x(1) )-(k9b_p*(power( x(2) ,( 2 )))))) );
	
//x(3)   ID: AMP  initialValue: 0.00261149
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment* x(3) *flow_p) + (-1)*(1)* (compartment_compartment*((k9f_p* x(3) * x(1) )-(k9b_p*(power( x(2) ,( 2 )))))) );
	
//x(4)   ID: GLC  initialValue: 0.0112817
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*((V1_p* x(1) * x(4) )/((K1GLC_p+ x(4) )*(K1ATP_p+ x(1) )))) + (1)*(1)* (compartment_compartment*(( 50 )- x(4) )*flow_p) );
	
//x(5)   ID: F6P  initialValue: 0.65939
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment* x(5) *flow_p) + (-1)*(1)* (compartment_compartment*((V2_p* x(1) *(power( x(5) ,( 2 ))))/(((K2_p*(( 1 )+(k2_p*(power(( x(1) / x(3) ),( 2 ))))))+(power( x(5) ,( 2 ))))*(K2ATP_p+ x(1) )))) + (-1)*(1)* (compartment_compartment*k10_p* x(5) ) + (1)*(1)* (compartment_compartment*((V1_p* x(1) * x(4) )/((K1GLC_p+ x(4) )*(K1ATP_p+ x(1) )))) );
	
//x(6)   ID: FBP  initialValue: 0.00770135
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment* x(6) *flow_p) + (-1)*(1)* (compartment_compartment*((k3f_p* x(6) )-(k3b_p*(power( x(7) ,( 2 )))))) + (1)*(1)* (compartment_compartment*((V2_p* x(1) *(power( x(5) ,( 2 ))))/(((K2_p*(( 1 )+(k2_p*(power(( x(1) / x(3) ),( 2 ))))))+(power( x(5) ,( 2 ))))*(K2ATP_p+ x(1) )))) );
	
//x(7)   ID: GAP  initialValue: 0.00190919
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment* x(7) *flow_p) + (-1)*(1)* (compartment_compartment*((V4_p* x(8) * x(7) )/((K4GAP_p+ x(7) )*(K4NAD_p+ x(8) )))) + (1)*(2)* (compartment_compartment*((k3f_p* x(6) )-(k3b_p*(power( x(7) ,( 2 )))))) );
	
//x(8)   ID: NAD  initialValue: 3.62057
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*((V4_p* x(8) * x(7) )/((K4GAP_p+ x(7) )*(K4NAD_p+ x(8) )))) + (1)*(1)* (compartment_compartment*(( 4 )- x(8) )*flow_p) + (1)*(1)* (compartment_compartment*((k8f_p* x(9) * x(13) )-(k8b_p* x(8) * x(14) ))) );
	
//x(9)   ID: NADH  initialValue: 0.616118
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*((k8f_p* x(9) * x(13) )-(k8b_p* x(8) * x(14) ))) + (1)*(1)* (compartment_compartment*(( 0.24 )- x(9) )*flow_p) + (1)*(1)* (compartment_compartment*((V4_p* x(8) * x(7) )/((K4GAP_p+ x(7) )*(K4NAD_p+ x(8) )))) );
	
//x(10)   ID: DPG  initialValue: 0.299109
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment* x(10) *flow_p) + (-1)*(1)* (compartment_compartment*((k5f_p* x(10) * x(2) )-(k5b_p* x(11) * x(1) ))) + (1)*(1)* (compartment_compartment*((V4_p* x(8) * x(7) )/((K4GAP_p+ x(7) )*(K4NAD_p+ x(8) )))) );
	
//x(11)   ID: PEP  initialValue: 0.0021125
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment* x(11) *flow_p) + (-1)*(1)* (compartment_compartment*((V6_p* x(2) * x(11) )/((K6PEP_p+ x(11) )*(K6ADP_p+ x(2) )))) + (1)*(1)* (compartment_compartment*((k5f_p* x(10) * x(2) )-(k5b_p* x(11) * x(1) ))) );
	
//x(12)   ID: PYR  initialValue: 0.00422702
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment* x(12) *flow_p) + (-1)*(1)* (compartment_compartment*((V7_p* x(12) )/(K7PYR_p+ x(12) ))) + (1)*(1)* (compartment_compartment*((V6_p* x(2) * x(11) )/((K6PEP_p+ x(11) )*(K6ADP_p+ x(2) )))) );
	
//x(13)   ID: ACA  initialValue: 0.0738334
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment* x(13) *flow_p) + (-1)*(1)* (compartment_compartment*((k8f_p* x(9) * x(13) )-(k8b_p* x(8) * x(14) ))) + (1)*(1)* (compartment_compartment*((V7_p* x(12) )/(K7PYR_p+ x(12) ))) );
	
//x(14)   ID: EtOH  initialValue: 0.33981
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment* x(14) *flow_p) + (1)*(1)* (compartment_compartment*((k8f_p* x(9) * x(13) )-(k8b_p* x(8) * x(14) ))) );
	
//x(15)   ID: P  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment* x(15) *flow_p) + (1)*(1)* (compartment_compartment*k10_p* x(5) ) )
	];


	
endfunction
        x0=[4.49064;0.108367;0.00261149;0.0112817;0.65939;0.00770135;0.00190919;3.62057;0.616118;0.299109;0.0021125;0.00422702;0.0738334;0.33981;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)' 'x(14)' 'x(15)'],[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15])

//real_variable:
	
	
//x(1)   id: ATP  initialValue: 4.49064
	
//x(2)   id: ADP  initialValue: 0.108367
	
//x(3)   id: AMP  initialValue: 0.00261149
	
//x(4)   id: GLC  initialValue: 0.0112817
	
//x(5)   id: F6P  initialValue: 0.65939
	
//x(6)   id: FBP  initialValue: 0.00770135
	
//x(7)   id: GAP  initialValue: 0.00190919
	
//x(8)   id: NAD  initialValue: 3.62057
	
//x(9)   id: NADH  initialValue: 0.616118
	
//x(10)   id: DPG  initialValue: 0.299109
	
//x(11)   id: PEP  initialValue: 0.0021125
	
//x(12)   id: PYR  initialValue: 0.00422702
	
//x(13)   id: ACA  initialValue: 0.0738334
	
//x(14)   id: EtOH  initialValue: 0.33981
	
//x(15)   id: P  initialValue: 0