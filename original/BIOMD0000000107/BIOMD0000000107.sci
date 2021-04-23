
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_cytoplasm   id: cytoplasm
	compartment_cytoplasm=1;
		
// total_cdc2_p   id: total_cdc2
	total_cdc2_p=100;
		
// total_cdc25_p   id: total_cdc25
	total_cdc25_p=1;
		
// total_wee1_p   id: total_wee1
	total_wee1_p=1;
		
// total_IE_p   id: total_IE
	total_IE_p=1;
		
// total_UbE_p   id: total_UbE
	total_UbE_p=1;
		
// k25_p   id: k25
	k25_p=0;
		
// V25_prime_p   id: V25_prime
	V25_prime_p=0.1;
		
// V25_double_prime_p   id: V25_double_prime
	V25_double_prime_p=2;
		
// kwee_p   id: kwee
	kwee_p=0;
		
// Vwee_prime_p   id: Vwee_prime
	Vwee_prime_p=0.1;
		
// Vwee_double_prime_p   id: Vwee_double_prime
	Vwee_double_prime_p=1;
		
// k2_p   id: k2
	k2_p=0;
		
// V2_prime_p   id: V2_prime
	V2_prime_p=0.015;
		
// V2_double_prime_p   id: V2_double_prime
	V2_double_prime_p=1;
		
// k1AA_p   id: k1AA
	k1AA_p=1;
		
// k3_p   id: k3
	k3_p=0.01;
		
// kinh_p   id: kinh
	kinh_p=0.025;
		
// kcak_p   id: kcak
	kcak_p=0.25;
		
// ka_p   id: ka
	ka_p=0.01;
		
// K_a_p   id: K_a
	K_a_p=0.1;
		
// kbPPase_p   id: kbPPase
	kbPPase_p=0.125;
		
// K_b_p   id: K_b
	K_b_p=0.1;
		
// ke_p   id: ke
	ke_p=0.0133;
		
// K_e_p   id: K_e
	K_e_p=0.3;
		
// kfPPase_p   id: kfPPase
	kfPPase_p=0.1;
		
// K_f_p   id: K_f
	K_f_p=0.3;
		
// kg_p   id: kg
	kg_p=0.0065;
		
// K_g_p   id: K_g
	K_g_p=0.01;
		
// khPPAse_p   id: khPPAse
	khPPAse_p=0.087;
		
// K_h_p   id: K_h
	K_h_p=0.01;
		
// kc_p   id: kc
	kc_p=0.1;
		
// K_c_p   id: K_c
	K_c_p=0.01;
		
// kd_anti_IE_p   id: kd_anti_IE
	kd_anti_IE_p=0.095;
		
// K_d_p   id: K_d
	K_d_p=0.01;
		
// total_cyclin_p   id: total_cyclin
	total_cyclin_p=0;
		
// Y15P_p   id: Y15P
	Y15P_p=0;
		
// cdc2_s   id: cdc2
	cdc2_s=0;
		
// cdc25_s   id: cdc25
	cdc25_s=0;
		
// wee1_s   id: wee1
	wee1_s=0;
		
// IE_s   id: IE
	IE_s=0;
		
// UbE_s   id: UbE
	UbE_s=0;
		



xdot=[
//x(1)   ID: cyclin  initialValue: 100
	(1/compartment_cytoplasm)*( (-1)*(1)* ( ( ((V2_prime_p*(total_UbE_p- x(9) ))+(V2_double_prime_p* x(9) )) ) * x(1) ) + (-1)*(1)* (k3_p* x(1) * ( (total_cdc2_p-( x(2) + x(4) + x(5) + x(3) )) ) ) + (1)*(1)* k1AA_p );
	
//x(2)   ID: dimer  initialValue: 0
	(1/compartment_cytoplasm)*( (-1)*(1)* ( ( ((Vwee_prime_p* x(7) )+(Vwee_double_prime_p*(total_wee1_p- x(7) ))) ) * x(2) ) + (-1)*(1)* (kcak_p* x(2) ) + (-1)*(1)* ( ( ((V2_prime_p*(total_UbE_p- x(9) ))+(V2_double_prime_p* x(9) )) ) * x(2) ) + (1)*(1)* (k3_p* x(1) * ( (total_cdc2_p-( x(2) + x(4) + x(5) + x(3) )) ) ) + (1)*(1)* (kinh_p* x(3) ) + (1)*(1)* ( ( ((V25_prime_p*(total_cdc25_p- x(6) ))+(V25_double_prime_p* x(6) )) ) * x(4) ) );
	
//x(3)   ID: dimer_p  initialValue: 0
	(1/compartment_cytoplasm)*( (-1)*(1)* (kinh_p* x(3) ) + (-1)*(1)* ( ( ((Vwee_prime_p* x(7) )+(Vwee_double_prime_p*(total_wee1_p- x(7) ))) ) * x(3) ) + (-1)*(1)* ( ( ((V2_prime_p*(total_UbE_p- x(9) ))+(V2_double_prime_p* x(9) )) ) * x(3) ) + (1)*(1)* (kcak_p* x(2) ) + (1)*(1)* ( ( ((V25_prime_p*(total_cdc25_p- x(6) ))+(V25_double_prime_p* x(6) )) ) * x(5) ) );
	
//x(4)   ID: p_dimer  initialValue: 0
	(1/compartment_cytoplasm)*( (-1)*(1)* ( ( ((V25_prime_p*(total_cdc25_p- x(6) ))+(V25_double_prime_p* x(6) )) ) * x(4) ) + (-1)*(1)* (kcak_p* x(4) ) + (-1)*(1)* ( ( ((V2_prime_p*(total_UbE_p- x(9) ))+(V2_double_prime_p* x(9) )) ) * x(4) ) + (1)*(1)* ( ( ((Vwee_prime_p* x(7) )+(Vwee_double_prime_p*(total_wee1_p- x(7) ))) ) * x(2) ) + (1)*(1)* (kinh_p* x(5) ) );
	
//x(5)   ID: p_dimer_p  initialValue: 0
	(1/compartment_cytoplasm)*( (-1)*(1)* (kinh_p* x(5) ) + (-1)*(1)* ( ( ((V25_prime_p*(total_cdc25_p- x(6) ))+(V25_double_prime_p* x(6) )) ) * x(5) ) + (-1)*(1)* ( ( ((V2_prime_p*(total_UbE_p- x(9) ))+(V2_double_prime_p* x(9) )) ) * x(5) ) + (1)*(1)* (kcak_p* x(4) ) + (1)*(1)* ( ( ((Vwee_prime_p* x(7) )+(Vwee_double_prime_p*(total_wee1_p- x(7) ))) ) * x(3) ) );
	
//x(6)   ID: cdc25_p  initialValue: 0
	(1/compartment_cytoplasm)*( (-1)*(1)* ((kbPPase_p* x(6) )/(K_b_p+ x(6) )) + (1)*(1)* ((ka_p* x(3) *(total_cdc25_p- x(6) ))/((K_a_p+total_cdc25_p)- x(6) )) );
	
//x(7)   ID: wee1_p  initialValue: 0
	(1/compartment_cytoplasm)*( (-1)*(1)* ((kfPPase_p* x(7) )/(K_f_p+ x(7) )) + (1)*(1)* ((ke_p* x(3) *(total_wee1_p- x(7) ))/((K_e_p+total_wee1_p)- x(7) )) );
	
//x(8)   ID: IE_p  initialValue: 0
	(1/compartment_cytoplasm)*( (-1)*(1)* ((khPPAse_p* x(8) )/(K_h_p+ x(8) )) + (1)*(1)* ((kg_p* x(3) *(total_IE_p- x(8) ))/((K_g_p+total_IE_p)- x(8) )) );
	
//x(9)   ID: UbE_star  initialValue: 0
	(1/compartment_cytoplasm)*( (-1)*(1)* ((kd_anti_IE_p* x(9) )/(K_d_p+ x(9) )) + (1)*(1)* ((kc_p* x(8) *(total_UbE_p- x(9) ))/((K_c_p+total_UbE_p)- x(9) )) )
	];


	
endfunction
        x0=[100;0;0;0;0;0;0;0;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)'],[1;2;3;4;5;6;7;8;9])

//real_variable:
	
	
//x(1)   id: cyclin  initialValue: 100
	
//x(2)   id: dimer  initialValue: 0
	
//x(3)   id: dimer_p  initialValue: 0
	
//x(4)   id: p_dimer  initialValue: 0
	
//x(5)   id: p_dimer_p  initialValue: 0
	
//x(6)   id: cdc25_p  initialValue: 0
	
//x(7)   id: wee1_p  initialValue: 0
	
//x(8)   id: IE_p  initialValue: 0
	
//x(9)   id: UbE_star  initialValue: 0