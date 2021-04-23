
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_cell   id: cell
	compartment_cell=1;
		
// mu_p   id: mu
	mu_p=0.0226;
		
// gamma_M_p   id: gamma_M
	gamma_M_p=0.411;
		
// gamma_B_p   id: gamma_B
	gamma_B_p=0.000833;
		
// gamma_A_p   id: gamma_A
	gamma_A_p=0.52;
		
// gamma_0_p   id: gamma_0
	gamma_0_p=7.25E-7;
		
// K_p   id: K
	K_p=7200;
		
// alpha_M_p   id: alpha_M
	alpha_M_p=0.000997;
		
// tau_B_p   id: tau_B
	tau_B_p=2;
		
// alpha_A_p   id: alpha_A
	alpha_A_p=17600;
		
// K_L1_p   id: K_L1
	K_L1_p=1.81;
		
// alpha_B_p   id: alpha_B
	alpha_B_p=0.0166;
		
// K_A_p   id: K_A
	K_A_p=1.95;
		
// beta_A_p   id: beta_A
	beta_A_p=21500;
		
// tau_M_p   id: tau_M
	tau_M_p=0.1;
		
// K_L_p   id: K_L
	K_L_p=0.97;
		
// gamma_L_p   id: gamma_L
	gamma_L_p=0;
		
// gamma_P_p   id: gamma_P
	gamma_P_p=0.65;
		
// alpha_L_p   id: alpha_L
	alpha_L_p=2880;
		
// alpha_P_p   id: alpha_P
	alpha_P_p=10;
		
// tau_P_p   id: tau_P
	tau_P_p=0.83;
		
// beta_L1_p   id: beta_L1
	beta_L1_p=2650;
		
// K_Le_p   id: K_Le
	K_Le_p=0.26;
		
// K_1_p   id: K_1
	K_1_p=25200;
		
// L_e_s   id: L_e
	L_e_s=0.08;
		



xdot=[
//x(1)   ID: M  initialValue: 0.000626
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell* x(1) *(gamma_M_p+mu_p)) + (1)*(1)* (compartment_cell*gamma_0_p) + (1)*(1)* ((compartment_cell* x(6) )/tau_M_p) );
	
//x(2)   ID: B  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell* x(2) *(gamma_B_p+mu_p)) + (1)*(1)* ((compartment_cell* x(7) )/tau_B_p) );
	
//x(3)   ID: A  initialValue: 0.038
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell* x(3) *(gamma_A_p+mu_p)) + (-1)*(1)* (compartment_cell*beta_A_p* x(2) *( x(3) /(K_A_p+ x(3) ))) + (1)*(1)* (compartment_cell*alpha_A_p* x(2) *( x(4) /(K_L_p+ x(4) ))) );
	
//x(4)   ID: L  initialValue: 0.372
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*alpha_A_p* x(2) *( x(4) /(K_L_p+ x(4) ))) + (-1)*(1)* (compartment_cell* x(4) *(gamma_L_p+mu_p)) + (-1)*(1)* (compartment_cell*beta_L1_p* x(5) *( x(4) /(K_L1_p+ x(4) ))) + (1)*(1)* (compartment_cell*alpha_L_p* x(5) *(L_e_s/(K_Le_p+L_e_s))) );
	
//x(5)   ID: P  initialValue: 0.0149
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell* x(5) *(gamma_P_p+mu_p)) + (1)*(1)* ((compartment_cell* x(8) )/(tau_B_p+tau_P_p)) );
	
//x(6)   ID: I1  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* ((compartment_cell* x(6) )/tau_M_p) + (1)*(1)* (compartment_cell*alpha_M_p*(((K_1_p*(exp((mu_p*tau_M_p*( -2 ))))*(power( x(3) ,( 2 ))))+( 1 ))/(K_p+(K_1_p*(exp((( -2 )*mu_p*tau_M_p)))*(power( x(3) ,( 2 ))))))) );
	
//x(7)   ID: I2  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* ((compartment_cell* x(7) )/tau_B_p) + (1)*(1)* (compartment_cell*alpha_B_p* x(1) *(exp(((mu_p*tau_B_p))))) );
	
//x(8)   ID: I3  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* ((compartment_cell* x(8) )/(tau_B_p+tau_P_p)) + (1)*(1)* (compartment_cell*alpha_P_p* x(1) *(exp((( -1 )*mu_p*(tau_B_p+tau_P_p))))) )
	];


	
endfunction
        x0=[0.000626;0;0.038;0.372;0.0149;0;0;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)'],[1;2;3;4;5;6;7;8])

//real_variable:
	
	
//x(1)   id: M  initialValue: 0.000626
	
//x(2)   id: B  initialValue: 0
	
//x(3)   id: A  initialValue: 0.038
	
//x(4)   id: L  initialValue: 0.372
	
//x(5)   id: P  initialValue: 0.0149
	
//x(6)   id: I1  initialValue: 0
	
//x(7)   id: I2  initialValue: 0
	
//x(8)   id: I3  initialValue: 0