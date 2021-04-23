
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_compartment_1   id: compartment_1
	compartment_compartment_1=1;
		
// k1_p   id: k1
	k1_p=100000000;
		
// k2_p   id: k2
	k2_p=0.7;
		
// k3_p   id: k3
	k3_p=0.064;
		
// k5_p   id: k5
	k5_p=1;
		
// k6_p   id: k6
	k6_p=0.00052;
		
// k7_p   id: k7
	k7_p=0.028;
		
// k8_p   id: k8
	k8_p=2570;
		
// k9_p   id: k9
	k9_p=1.72E-5;
		
// k10_p   id: k10
	k10_p=2630;
		



xdot=[
//x(1)   ID: APC  initialValue: 1E-8
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((k1_p* x(2) * x(1) )-(k2_p* x(3) ))) + (-1)*(1)* (compartment_compartment_1*((k1_p* x(4) * x(1) )-(k2_p* x(5) ))) + (-1)*(1)* (compartment_compartment_1*((k1_p* x(6) * x(1) )-(k2_p* x(7) ))) + (-1)*(1)* (compartment_compartment_1*((k1_p* x(8) * x(1) )-(k2_p* x(9) ))) + (-1)*(1)* (compartment_compartment_1*((k1_p* x(10) * x(1) )-(k2_p* x(11) ))) + (-1)*(1)* (compartment_compartment_1*((k1_p* x(12) * x(1) )-(k2_p* x(13) ))) + (-1)*(1)* (compartment_compartment_1*((k1_p* x(14) * x(1) )-(k2_p* x(15) ))) + (-1)*(1)* (compartment_compartment_1*((k1_p* x(17) * x(1) )-(k2_p* x(23) ))) + (-1)*(1)* (compartment_compartment_1*((k1_p* x(29) * x(1) )-(k2_p* x(30) ))) );
	
//x(2)   ID: Va  initialValue: 2E-7
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((k1_p* x(2) * x(1) )-(k2_p* x(3) ))) + (-1)*(1)* (compartment_compartment_1*((k9_p* x(2) )-(k10_p* x(16) * x(17) ))) );
	
//x(3)   ID: Va_APC  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*k5_p* x(3) ) + (-1)*(1)* (compartment_compartment_1*k3_p* x(3) ) + (1)*(1)* (compartment_compartment_1*((k1_p* x(2) * x(1) )-(k2_p* x(3) ))) );
	
//x(4)   ID: Va3  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((k1_p* x(4) * x(1) )-(k2_p* x(5) ))) + (-1)*(1)* (compartment_compartment_1*((k9_p* x(4) )-(k10_p* x(19) * x(17) ))) + (-1)*(1)* (compartment_compartment_1*((k7_p* x(4) )-(k8_p* x(25) * x(29) ))) );
	
//x(5)   ID: Va3_APC  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*k6_p* x(5) ) + (-1)*(1)* (compartment_compartment_1*k5_p* x(5) ) + (-1)*(1)* (compartment_compartment_1*((k7_p* x(5) )-(k8_p* x(25) * x(30) ))) + (1)*(1)* (compartment_compartment_1*((k1_p* x(4) * x(1) )-(k2_p* x(5) ))) + (1)*(1)* (compartment_compartment_1*k3_p* x(3) ) );
	
//x(6)   ID: Va5  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((k1_p* x(6) * x(1) )-(k2_p* x(7) ))) + (-1)*(1)* (compartment_compartment_1*((k9_p* x(6) )-(k10_p* x(18) * x(17) ))) );
	
//x(7)   ID: Va5_APC  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*k6_p* x(7) ) + (-1)*(1)* (compartment_compartment_1*k3_p* x(7) ) + (1)*(1)* (compartment_compartment_1*((k1_p* x(6) * x(1) )-(k2_p* x(7) ))) + (1)*(1)* (compartment_compartment_1*k5_p* x(3) ) );
	
//x(8)   ID: Va53  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((k1_p* x(8) * x(1) )-(k2_p* x(9) ))) + (-1)*(1)* (compartment_compartment_1*((k9_p* x(8) )-(k10_p* x(24) * x(17) ))) + (-1)*(1)* (compartment_compartment_1*((k7_p* x(8) )-(k8_p* x(26) * x(29) ))) );
	
//x(9)   ID: Va53_APC  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*k6_p* x(9) ) + (-1)*(1)* (compartment_compartment_1*((k7_p* x(9) )-(k8_p* x(26) * x(30) ))) + (1)*(1)* (compartment_compartment_1*((k1_p* x(8) * x(1) )-(k2_p* x(9) ))) + (1)*(1)* (compartment_compartment_1*k3_p* x(7) ) + (1)*(1)* (compartment_compartment_1*k5_p* x(5) ) );
	
//x(10)   ID: Va56  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((k1_p* x(10) * x(1) )-(k2_p* x(11) ))) + (-1)*(1)* (compartment_compartment_1*((k9_p* x(10) )-(k10_p* x(20) * x(17) ))) );
	
//x(11)   ID: Va56_APC  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*k3_p* x(11) ) + (1)*(1)* (compartment_compartment_1*((k1_p* x(10) * x(1) )-(k2_p* x(11) ))) + (1)*(1)* (compartment_compartment_1*k6_p* x(7) ) );
	
//x(12)   ID: Va36  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((k1_p* x(12) * x(1) )-(k2_p* x(13) ))) + (-1)*(1)* (compartment_compartment_1*((k9_p* x(12) )-(k10_p* x(21) * x(17) ))) + (-1)*(1)* (compartment_compartment_1*((k7_p* x(12) )-(k8_p* x(27) * x(29) ))) );
	
//x(13)   ID: Va36_APC  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*k5_p* x(13) ) + (-1)*(1)* (compartment_compartment_1*((k7_p* x(13) )-(k8_p* x(27) * x(30) ))) + (1)*(1)* (compartment_compartment_1*((k1_p* x(12) * x(1) )-(k2_p* x(13) ))) + (1)*(1)* (compartment_compartment_1*k6_p* x(5) ) );
	
//x(14)   ID: Va536  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((k1_p* x(14) * x(1) )-(k2_p* x(15) ))) + (-1)*(1)* (compartment_compartment_1*((k9_p* x(14) )-(k10_p* x(22) * x(17) ))) + (-1)*(1)* (compartment_compartment_1*((k7_p* x(14) )-(k8_p* x(28) * x(29) ))) );
	
//x(15)   ID: Va536_APC  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((k7_p* x(15) )-(k7_p* x(28) * x(30) ))) + (1)*(1)* (compartment_compartment_1*((k1_p* x(14) * x(1) )-(k2_p* x(15) ))) + (1)*(1)* (compartment_compartment_1*k3_p* x(11) ) + (1)*(1)* (compartment_compartment_1*k6_p* x(9) ) + (1)*(1)* (compartment_compartment_1*k5_p* x(13) ) );
	
//x(16)   ID: HC  initialValue: 0
	(1/compartment_compartment_1)*( (1)*(1)* (compartment_compartment_1*((k9_p* x(2) )-(k10_p* x(16) * x(17) ))) );
	
//x(17)   ID: LC  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((k1_p* x(17) * x(1) )-(k2_p* x(23) ))) + (1)*(1)* (compartment_compartment_1*((k9_p* x(2) )-(k10_p* x(16) * x(17) ))) + (1)*(1)* (compartment_compartment_1*((k9_p* x(6) )-(k10_p* x(18) * x(17) ))) + (1)*(1)* (compartment_compartment_1*((k9_p* x(4) )-(k10_p* x(19) * x(17) ))) + (1)*(1)* (compartment_compartment_1*((k9_p* x(10) )-(k10_p* x(20) * x(17) ))) + (1)*(1)* (compartment_compartment_1*((k9_p* x(8) )-(k10_p* x(24) * x(17) ))) + (1)*(1)* (compartment_compartment_1*((k9_p* x(12) )-(k10_p* x(21) * x(17) ))) + (1)*(1)* (compartment_compartment_1*((k9_p* x(14) )-(k10_p* x(22) * x(17) ))) );
	
//x(18)   ID: HC5  initialValue: 0
	(1/compartment_compartment_1)*( (1)*(1)* (compartment_compartment_1*((k9_p* x(6) )-(k10_p* x(18) * x(17) ))) );
	
//x(19)   ID: HC3  initialValue: 0
	(1/compartment_compartment_1)*( (1)*(1)* (compartment_compartment_1*((k9_p* x(4) )-(k10_p* x(19) * x(17) ))) );
	
//x(20)   ID: HC56  initialValue: 0
	(1/compartment_compartment_1)*( (1)*(1)* (compartment_compartment_1*((k9_p* x(10) )-(k10_p* x(20) * x(17) ))) );
	
//x(21)   ID: HC36  initialValue: 0
	(1/compartment_compartment_1)*( (1)*(1)* (compartment_compartment_1*((k9_p* x(12) )-(k10_p* x(21) * x(17) ))) );
	
//x(22)   ID: HC536  initialValue: 0
	(1/compartment_compartment_1)*( (1)*(1)* (compartment_compartment_1*((k9_p* x(14) )-(k10_p* x(22) * x(17) ))) );
	
//x(23)   ID: LC_APC  initialValue: 0
	(1/compartment_compartment_1)*( (1)*(1)* (compartment_compartment_1*((k1_p* x(17) * x(1) )-(k2_p* x(23) ))) );
	
//x(24)   ID: HC53  initialValue: 0
	(1/compartment_compartment_1)*( (1)*(1)* (compartment_compartment_1*((k9_p* x(8) )-(k10_p* x(24) * x(17) ))) );
	
//x(25)   ID: VaA3  initialValue: 0
	(1/compartment_compartment_1)*( (1)*(1)* (compartment_compartment_1*((k7_p* x(4) )-(k8_p* x(25) * x(29) ))) + (1)*(1)* (compartment_compartment_1*((k7_p* x(5) )-(k8_p* x(25) * x(30) ))) );
	
//x(26)   ID: VaA53  initialValue: 0
	(1/compartment_compartment_1)*( (1)*(1)* (compartment_compartment_1*((k7_p* x(8) )-(k8_p* x(26) * x(29) ))) + (1)*(1)* (compartment_compartment_1*((k7_p* x(9) )-(k8_p* x(26) * x(30) ))) );
	
//x(27)   ID: VaA36  initialValue: 0
	(1/compartment_compartment_1)*( (1)*(1)* (compartment_compartment_1*((k7_p* x(12) )-(k8_p* x(27) * x(29) ))) + (1)*(1)* (compartment_compartment_1*((k7_p* x(13) )-(k8_p* x(27) * x(30) ))) );
	
//x(28)   ID: VaA536  initialValue: 0
	(1/compartment_compartment_1)*( (1)*(1)* (compartment_compartment_1*((k7_p* x(14) )-(k8_p* x(28) * x(29) ))) + (1)*(1)* (compartment_compartment_1*((k7_p* x(15) )-(k7_p* x(28) * x(30) ))) );
	
//x(29)   ID: VaLCA1  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((k1_p* x(29) * x(1) )-(k2_p* x(30) ))) + (1)*(1)* (compartment_compartment_1*((k7_p* x(4) )-(k8_p* x(25) * x(29) ))) + (1)*(1)* (compartment_compartment_1*((k7_p* x(8) )-(k8_p* x(26) * x(29) ))) + (1)*(1)* (compartment_compartment_1*((k7_p* x(12) )-(k8_p* x(27) * x(29) ))) + (1)*(1)* (compartment_compartment_1*((k7_p* x(14) )-(k8_p* x(28) * x(29) ))) );
	
//x(30)   ID: VaLCA1_APC  initialValue: 0
	(1/compartment_compartment_1)*( (1)*(1)* (compartment_compartment_1*((k7_p* x(5) )-(k8_p* x(25) * x(30) ))) + (1)*(1)* (compartment_compartment_1*((k7_p* x(9) )-(k8_p* x(26) * x(30) ))) + (1)*(1)* (compartment_compartment_1*((k7_p* x(13) )-(k8_p* x(27) * x(30) ))) + (1)*(1)* (compartment_compartment_1*((k7_p* x(15) )-(k7_p* x(28) * x(30) ))) + (1)*(1)* (compartment_compartment_1*((k1_p* x(29) * x(1) )-(k2_p* x(30) ))) )
	];


	
endfunction
        x0=[1E-8;2E-7;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)' 'x(14)' 'x(15)' 'x(16)' 'x(17)' 'x(18)' 'x(19)' 'x(20)' 'x(21)' 'x(22)' 'x(23)' 'x(24)' 'x(25)' 'x(26)' 'x(27)' 'x(28)' 'x(29)' 'x(30)'],[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18;19;20;21;22;23;24;25;26;27;28;29;30])

//real_variable:
	
	
//x(1)   id: APC  initialValue: 1E-8
	
//x(2)   id: Va  initialValue: 2E-7
	
//x(3)   id: Va_APC  initialValue: 0
	
//x(4)   id: Va3  initialValue: 0
	
//x(5)   id: Va3_APC  initialValue: 0
	
//x(6)   id: Va5  initialValue: 0
	
//x(7)   id: Va5_APC  initialValue: 0
	
//x(8)   id: Va53  initialValue: 0
	
//x(9)   id: Va53_APC  initialValue: 0
	
//x(10)   id: Va56  initialValue: 0
	
//x(11)   id: Va56_APC  initialValue: 0
	
//x(12)   id: Va36  initialValue: 0
	
//x(13)   id: Va36_APC  initialValue: 0
	
//x(14)   id: Va536  initialValue: 0
	
//x(15)   id: Va536_APC  initialValue: 0
	
//x(16)   id: HC  initialValue: 0
	
//x(17)   id: LC  initialValue: 0
	
//x(18)   id: HC5  initialValue: 0
	
//x(19)   id: HC3  initialValue: 0
	
//x(20)   id: HC56  initialValue: 0
	
//x(21)   id: HC36  initialValue: 0
	
//x(22)   id: HC536  initialValue: 0
	
//x(23)   id: LC_APC  initialValue: 0
	
//x(24)   id: HC53  initialValue: 0
	
//x(25)   id: VaA3  initialValue: 0
	
//x(26)   id: VaA53  initialValue: 0
	
//x(27)   id: VaA36  initialValue: 0
	
//x(28)   id: VaA536  initialValue: 0
	
//x(29)   id: VaLCA1  initialValue: 0
	
//x(30)   id: VaLCA1_APC  initialValue: 0