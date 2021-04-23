
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_cell   id: cell
	compartment_cell=1;
		
// k1_p   id: k1
	k1_p=0.02;
		
// k_1_p   id: k_1
	k_1_p=1;
		
// k2_p   id: k2
	k2_p=0.01;
		
// k3_p   id: k3
	k3_p=0.032;
		
// k_3_p   id: k_3
	k_3_p=1;
		
// k4_p   id: k4
	k4_p=15;
		
// k5_p   id: k5
	k5_p=0.02;
		
// k_5_p   id: k_5
	k_5_p=1;
		
// k6_p   id: k6
	k6_p=0.01;
		
// k7_p   id: k7
	k7_p=0.032;
		
// k_7_p   id: k_7
	k_7_p=1;
		
// k8_p   id: k8
	k8_p=15;
		
// h1_p   id: h1
	h1_p=0.045;
		
// h_1_p   id: h_1
	h_1_p=1;
		
// h2_p   id: h2
	h2_p=0.092;
		
// h3_p   id: h3
	h3_p=1;
		
// h_3_p   id: h_3
	h_3_p=0.01;
		
// h4_p   id: h4
	h4_p=0.01;
		
// h_4_p   id: h_4
	h_4_p=1;
		
// h5_p   id: h5
	h5_p=0.5;
		
// h6_p   id: h6
	h6_p=0.086;
		
// h_6_p   id: h_6
	h_6_p=0.0011;
		
// h7_p   id: h7
	h7_p=0.01;
		
// h_7_p   id: h_7
	h_7_p=1;
		
// h8_p   id: h8
	h8_p=0.47;
		
// h9_p   id: h9
	h9_p=0.14;
		
// h_9_p   id: h_9
	h_9_p=0.0018;
		
// h10_p   id: h10
	h10_p=0.045;
		
// h_10_p   id: h_10
	h_10_p=1;
		
// h11_p   id: h11
	h11_p=0.092;
		
// h12_p   id: h12
	h12_p=1;
		
// h_12_p   id: h_12
	h_12_p=0.01;
		



xdot=[
//x(1)   ID: M  initialValue: 800
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*((k1_p* x(1) * x(5) )-(k_1_p* x(9) ))) + (-1)*(1)* (compartment_cell*((k5_p* x(1) * x(5) )-(k_5_p* x(10) ))) + (1)*(1)* (compartment_cell*((h6_p* x(17) )-(h_6_p* x(1) * x(6) ))) + (1)*(1)* (compartment_cell*((h9_p* x(18) )-(h_9_p* x(1) * x(6) ))) );
	
//x(2)   ID: MpY  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*((k3_p* x(2) * x(5) )-(k_3_p* x(7) ))) + (-1)*(1)* (compartment_cell*((h7_p* x(2) * x(6) )-(h_7_p* x(13) ))) + (1)*(1)* (compartment_cell*k2_p* x(9) ) + (1)*(1)* (compartment_cell*((h12_p* x(14) )-(h_12_p* x(2) * x(6) ))) );
	
//x(3)   ID: MpT  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*((k7_p* x(3) * x(5) )-(k_7_p* x(8) ))) + (-1)*(1)* (compartment_cell*((h4_p* x(3) * x(6) )-(h_4_p* x(16) ))) + (1)*(1)* (compartment_cell*k6_p* x(10) ) + (1)*(1)* (compartment_cell*((h3_p* x(15) )-(h_3_p* x(3) * x(6) ))) );
	
//x(4)   ID: Mpp  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*((h1_p* x(4) * x(6) )-(h_1_p* x(11) ))) + (-1)*(1)* (compartment_cell*((h10_p* x(4) * x(6) )-(h_10_p* x(12) ))) + (1)*(1)* (compartment_cell*k4_p* x(7) ) + (1)*(1)* (compartment_cell*k8_p* x(8) ) );
	
//x(5)   ID: MAPKK  initialValue: 180
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*((k1_p* x(1) * x(5) )-(k_1_p* x(9) ))) + (-1)*(1)* (compartment_cell*((k3_p* x(2) * x(5) )-(k_3_p* x(7) ))) + (-1)*(1)* (compartment_cell*((k5_p* x(1) * x(5) )-(k_5_p* x(10) ))) + (-1)*(1)* (compartment_cell*((k7_p* x(3) * x(5) )-(k_7_p* x(8) ))) + (1)*(1)* (compartment_cell*k2_p* x(9) ) + (1)*(1)* (compartment_cell*k4_p* x(7) ) + (1)*(1)* (compartment_cell*k6_p* x(10) ) + (1)*(1)* (compartment_cell*k8_p* x(8) ) );
	
//x(6)   ID: MKP  initialValue: 100
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*((h1_p* x(4) * x(6) )-(h_1_p* x(11) ))) + (-1)*(1)* (compartment_cell*((h4_p* x(3) * x(6) )-(h_4_p* x(16) ))) + (-1)*(1)* (compartment_cell*((h7_p* x(2) * x(6) )-(h_7_p* x(13) ))) + (-1)*(1)* (compartment_cell*((h10_p* x(4) * x(6) )-(h_10_p* x(12) ))) + (1)*(1)* (compartment_cell*((h3_p* x(15) )-(h_3_p* x(3) * x(6) ))) + (1)*(1)* (compartment_cell*((h6_p* x(17) )-(h_6_p* x(1) * x(6) ))) + (1)*(1)* (compartment_cell*((h9_p* x(18) )-(h_9_p* x(1) * x(6) ))) + (1)*(1)* (compartment_cell*((h12_p* x(14) )-(h_12_p* x(2) * x(6) ))) );
	
//x(7)   ID: MpY_MAPKK  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*k4_p* x(7) ) + (1)*(1)* (compartment_cell*((k3_p* x(2) * x(5) )-(k_3_p* x(7) ))) );
	
//x(8)   ID: MpT_MAPKK  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*k8_p* x(8) ) + (1)*(1)* (compartment_cell*((k7_p* x(3) * x(5) )-(k_7_p* x(8) ))) );
	
//x(9)   ID: M_MAPKK_Y  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*k2_p* x(9) ) + (1)*(1)* (compartment_cell*((k1_p* x(1) * x(5) )-(k_1_p* x(9) ))) );
	
//x(10)   ID: M_MAPKK_T  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*k6_p* x(10) ) + (1)*(1)* (compartment_cell*((k5_p* x(1) * x(5) )-(k_5_p* x(10) ))) );
	
//x(11)   ID: Mpp_MKP_Y  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*h2_p* x(11) ) + (1)*(1)* (compartment_cell*((h1_p* x(4) * x(6) )-(h_1_p* x(11) ))) );
	
//x(12)   ID: Mpp_MKP_T  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*h11_p* x(12) ) + (1)*(1)* (compartment_cell*((h10_p* x(4) * x(6) )-(h_10_p* x(12) ))) );
	
//x(13)   ID: MpY_MKP_Y  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*h8_p* x(13) ) + (1)*(1)* (compartment_cell*((h7_p* x(2) * x(6) )-(h_7_p* x(13) ))) );
	
//x(14)   ID: MpY_MKP_T  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*((h12_p* x(14) )-(h_12_p* x(2) * x(6) ))) + (1)*(1)* (compartment_cell*h11_p* x(12) ) );
	
//x(15)   ID: MpT_MKP_Y  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*((h3_p* x(15) )-(h_3_p* x(3) * x(6) ))) + (1)*(1)* (compartment_cell*h2_p* x(11) ) );
	
//x(16)   ID: MpT_MKP_T  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*h5_p* x(16) ) + (1)*(1)* (compartment_cell*((h4_p* x(3) * x(6) )-(h_4_p* x(16) ))) );
	
//x(17)   ID: M_MKP_T  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*((h6_p* x(17) )-(h_6_p* x(1) * x(6) ))) + (1)*(1)* (compartment_cell*h5_p* x(16) ) );
	
//x(18)   ID: M_MKP_Y  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*((h9_p* x(18) )-(h_9_p* x(1) * x(6) ))) + (1)*(1)* (compartment_cell*h8_p* x(13) ) )
	];


	
endfunction
        x0=[800;0;0;0;180;100;0;0;0;0;0;0;0;0;0;0;0;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)' 'x(14)' 'x(15)' 'x(16)' 'x(17)' 'x(18)'],[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18])

//real_variable:
	
	
//x(1)   id: M  initialValue: 800
	
//x(2)   id: MpY  initialValue: 0
	
//x(3)   id: MpT  initialValue: 0
	
//x(4)   id: Mpp  initialValue: 0
	
//x(5)   id: MAPKK  initialValue: 180
	
//x(6)   id: MKP  initialValue: 100
	
//x(7)   id: MpY_MAPKK  initialValue: 0
	
//x(8)   id: MpT_MAPKK  initialValue: 0
	
//x(9)   id: M_MAPKK_Y  initialValue: 0
	
//x(10)   id: M_MAPKK_T  initialValue: 0
	
//x(11)   id: Mpp_MKP_Y  initialValue: 0
	
//x(12)   id: Mpp_MKP_T  initialValue: 0
	
//x(13)   id: MpY_MKP_Y  initialValue: 0
	
//x(14)   id: MpY_MKP_T  initialValue: 0
	
//x(15)   id: MpT_MKP_Y  initialValue: 0
	
//x(16)   id: MpT_MKP_T  initialValue: 0
	
//x(17)   id: M_MKP_T  initialValue: 0
	
//x(18)   id: M_MKP_Y  initialValue: 0