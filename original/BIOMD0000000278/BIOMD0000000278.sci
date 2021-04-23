
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_Compartment   id: Compartment
	compartment_Compartment=1;
		
// C_s_p   id: C_s
	C_s_p=0.005;
		
// D_A_p   id: D_A
	D_A_p=0.7;
		
// d_B_p   id: d_B
	d_B_p=0.7;
		
// D_C_p   id: D_C
	D_C_p=0.0021;
		
// D_R_p   id: D_R
	D_R_p=0.0007;
		
// f0_p   id: f0
	f0_p=0.05;
		
// I_L_p   id: I_L
	I_L_p=0;
		
// I_O_p   id: I_O
	I_O_p=0;
		
// I_P_p   id: I_P
	I_P_p=0;
		
// K_p   id: K
	K_p=10;
		
// k1_p   id: k1
	k1_p=0.01;
		
// k2_p   id: k2
	k2_p=10;
		
// k3_p   id: k3
	k3_p=0.00058;
		
// k4_p   id: k4
	k4_p=0.017;
		
// k5_p   id: k5
	k5_p=0.02;
		
// k6_p   id: k6
	k6_p=3;
		
// k_B_p   id: k_B
	k_B_p=0.189;
		
// K_L_P_p   id: K_L_P
	K_L_P_p=3000000;
		
// kO_p   id: kO
	kO_p=0.35;
		
// K_O_P_p   id: K_O_P
	K_O_P_p=200000;
		
// k_P_p   id: k_P
	k_P_p=86;
		
// r_L_p   id: r_L
	r_L_p=1000;
		
// S_P_p   id: S_P
	S_P_p=250;
		
// Phi_C_p   id: Phi_C
	Phi_C_p=0;
		
// D_B_p   id: D_B
	D_B_p=0;
		
// Phi_L_p   id: Phi_L
	Phi_L_p=0;
		
// Phi_P_p   id: Phi_P
	Phi_P_p=0;
		
// Pbar_p   id: Pbar
	Pbar_p=0;
		
// P_O_p   id: P_O
	P_O_p=0;
		
// P_S_p   id: P_S
	P_S_p=0;
		



xdot=[
//x(1)   ID: R  initialValue: 0.0007734
	        
          ((D_R_p* ( (( x(3) +(f0_p*C_s_p))/( x(3) +C_s_p)) ) )-(( ( (f0_p*d_B_p) ) * x(1) )/ ( (( x(3) +(f0_p*C_s_p))/( x(3) +C_s_p)) ) ))
        ;
	
//x(2)   ID: B  initialValue: 0.0007282
	        
          ((( ( (f0_p*d_B_p) ) * x(1) )/ ( (( x(3) +(f0_p*C_s_p))/( x(3) +C_s_p)) ) )-(k_B_p* x(2) ))
        ;
	
//x(3)   ID: C  initialValue: 0.0009127
	        
          ((D_C_p* ( ((((k3_p/k4_p)*K_L_P_p* ( (( ( (I_P_p/k_P_p) ) + ( (S_P_p/k_P_p) ) )/( ( (I_P_p/k_P_p) ) + ( (k6_p/k5_p) ) )) ) * x(2) )/(( 1 )+((k3_p*K_p)/k4_p)+((k1_p/(k2_p*kO_p))*(I_O_p+((K_O_P_p* x(1) )/ ( (( ( (I_P_p/k_P_p) ) + ( (S_P_p/k_P_p) ) )/( ( (I_P_p/k_P_p) ) + ( (k6_p/k5_p) ) )) ) )))))*(( 1 )+(I_L_p/r_L_p))) ) )-(D_A_p* ( (( x(3) +(f0_p*C_s_p))/( x(3) +C_s_p)) ) * x(3) ))
        
	];


	
endfunction
        x0=[0.0007734;0.0007282;0.0009127];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)'],[1;2;3])

//real_variable:
	
	
//x(1)   id: R  initialValue: 0.0007734
	
//x(2)   id: B  initialValue: 0.0007282
	
//x(3)   id: C  initialValue: 0.0009127