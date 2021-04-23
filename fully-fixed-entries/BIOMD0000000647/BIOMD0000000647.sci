
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_cytoplasm   id: cytoplasm
	compartment_cytoplasm=1;
		
// k1_p   id: k1
	k1_p=0.53;
		
// k2_p   id: k2
	k2_p=0.0072;
		
// k3_p   id: k3
	k3_p=0.625;
		
// k4_p   id: k4
	k4_p=0.00245;
		
// k5_p   id: k5
	k5_p=0.0315;
		
// k6_p   id: k6
	k6_p=0.8;
		
// k7_p   id: k7
	k7_p=0.0075;
		
// k8_p   id: k8
	k8_p=0.071;
		
// k9_p   id: k9
	k9_p=0.92;
		
// k10_p   id: k10
	k10_p=0.00122;
		
// k11_p   id: k11
	k11_p=0.87;
		



xdot=[
//x(1)   ID: Raf1  initialValue: 2
	(1/compartment_cytoplasm)*( (-1)*(1)* (compartment_cytoplasm*k1_p* x(1) * x(2) ) + (1)*(1)* (compartment_cytoplasm*k2_p* x(3) ) + (1)*(1)* (compartment_cytoplasm*k5_p* x(4) ) );
	
//x(2)   ID: RKIP  initialValue: 2.5
	(1/compartment_cytoplasm)*( (-1)*(1)* (compartment_cytoplasm*k1_p* x(1) * x(2) ) + (1)*(1)* (compartment_cytoplasm*k2_p* x(3) ) + (1)*(1)* (compartment_cytoplasm*k11_p* x(11) ) );
	
//x(3)   ID: Raf1_RKIP  initialValue: 0
	(1/compartment_cytoplasm)*( (-1)*(1)* (compartment_cytoplasm*k2_p* x(3) ) + (-1)*(1)* (compartment_cytoplasm*k3_p* x(3) * x(9) ) + (1)*(1)* (compartment_cytoplasm*k1_p* x(1) * x(2) ) + (1)*(1)* (compartment_cytoplasm*k4_p* x(4) ) );
	
//x(4)   ID: Raf1_RKIP_ERKPP  initialValue: 0
	(1/compartment_cytoplasm)*( (-1)*(1)* (compartment_cytoplasm*k4_p* x(4) ) + (-1)*(1)* (compartment_cytoplasm*k5_p* x(4) ) + (1)*(1)* (compartment_cytoplasm*k3_p* x(3) * x(9) ) );
	
//x(5)   ID: ERK  initialValue: 0
	(1/compartment_cytoplasm)*( (-1)*(1)* (compartment_cytoplasm*k6_p* x(5) * x(7) ) + (1)*(1)* (compartment_cytoplasm*k5_p* x(4) ) + (1)*(1)* (compartment_cytoplasm*k7_p* x(8) ) );
	
//x(6)   ID: RKIPP  initialValue: 0
	(1/compartment_cytoplasm)*( (-1)*(1)* (compartment_cytoplasm*k9_p* x(6) * x(10) ) + (1)*(1)* (compartment_cytoplasm*k5_p* x(4) ) + (1)*(1)* (compartment_cytoplasm*k10_p* x(11) ) );
	
//x(7)   ID: MEKPP  initialValue: 2.5
	(1/compartment_cytoplasm)*( (-1)*(1)* (compartment_cytoplasm*k6_p* x(5) * x(7) ) + (1)*(1)* (compartment_cytoplasm*k7_p* x(8) ) + (1)*(1)* (compartment_cytoplasm*k8_p* x(8) ) );
	
//x(8)   ID: MEKPP_ERK  initialValue: 0
	(1/compartment_cytoplasm)*( (-1)*(1)* (compartment_cytoplasm*k7_p* x(8) ) + (-1)*(1)* (compartment_cytoplasm*k8_p* x(8) ) + (1)*(1)* (compartment_cytoplasm*k6_p* x(5) * x(7) ) );
	
//x(9)   ID: ERKPP  initialValue: 2.5
	(1/compartment_cytoplasm)*( (-1)*(1)* (compartment_cytoplasm*k3_p* x(3) * x(9) ) + (1)*(1)* (compartment_cytoplasm*k4_p* x(4) ) + (1)*(1)* (compartment_cytoplasm*k8_p* x(8) ) );
	
//x(10)   ID: RP  initialValue: 3
	(1/compartment_cytoplasm)*( (-1)*(1)* (compartment_cytoplasm*k9_p* x(6) * x(10) ) + (1)*(1)* (compartment_cytoplasm*k10_p* x(11) ) + (1)*(1)* (compartment_cytoplasm*k11_p* x(11) ) );
	
//x(11)   ID: RKIPP_RP  initialValue: 0
	(1/compartment_cytoplasm)*( (-1)*(1)* (compartment_cytoplasm*k10_p* x(11) ) + (-1)*(1)* (compartment_cytoplasm*k11_p* x(11) ) + (1)*(1)* (compartment_cytoplasm*k9_p* x(6) * x(10) ) )
	];


	
endfunction
        x0=[2;2.5;0;0;0;0;2.5;0;2.5;3;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)'],[1;2;3;4;5;6;7;8;9;10;11])

//real_variable:
	
	
//x(1)   id: Raf1  initialValue: 2
	
//x(2)   id: RKIP  initialValue: 2.5
	
//x(3)   id: Raf1_RKIP  initialValue: 0
	
//x(4)   id: Raf1_RKIP_ERKPP  initialValue: 0
	
//x(5)   id: ERK  initialValue: 0
	
//x(6)   id: RKIPP  initialValue: 0
	
//x(7)   id: MEKPP  initialValue: 2.5
	
//x(8)   id: MEKPP_ERK  initialValue: 0
	
//x(9)   id: ERKPP  initialValue: 2.5
	
//x(10)   id: RP  initialValue: 3
	
//x(11)   id: RKIPP_RP  initialValue: 0