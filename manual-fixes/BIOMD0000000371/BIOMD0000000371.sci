
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_Compartment   id: Compartment
	compartment_Compartment=1;
		
// tau_membrane_p   id: tau_membrane
	tau_membrane_p=20;
		
// i_Ca_p   id: i_Ca
	i_Ca_p=-7.4446678508483;
		
// g_Ca_p   id: g_Ca
	g_Ca_p=3.6;
		
// V_Ca_p   id: V_Ca
	V_Ca_p=25;
		
// m_infinity_p   id: m_infinity
	m_infinity_p=0.0229773699100256;
		
// V_m_p   id: V_m
	V_m_p=-20;
		
// theta_m_p   id: theta_m
	theta_m_p=12;
		
// i_K_p   id: i_K
	i_K_p=5;
		
// V_K_p   id: V_K
	V_K_p=-75;
		
// g_K_p   id: g_K
	g_K_p=10;
		
// n_infinity_p   id: n_infinity
	n_infinity_p=0.000189405943825186;
		
// V_n_p   id: V_n
	V_n_p=-17;
		
// theta_n_p   id: theta_n
	theta_n_p=5.6;
		
// lamda_p   id: lamda
	lamda_p=0.8;
		
// tau_potassium_current_n_gate_p   id: tau_potassium_current_n_gate
	tau_potassium_current_n_gate_p=20;
		
// i_s_p   id: i_s
	i_s_p=1;
		
// g_s_p   id: g_s
	g_s_p=4;
		
// s_infinity_p   id: s_infinity
	s_infinity_p=0.00460957217937421;
		
// V_s_p   id: V_s
	V_s_p=-22;
		
// theta_s_p   id: theta_s
	theta_s_p=8;
		
// tau_s_p   id: tau_s
	tau_s_p=20000;
		
// i_K_ATP_p   id: i_K_ATP
	i_K_ATP_p=6;
		
// g_K_ATP_p   id: g_K_ATP
	g_K_ATP_p=1.2;
		
// p_p   id: p
	p_p=0.5;
		



xdot=[
//x(1)   ID: V_membrane  initialValue: -65
	        
          ((( ( (g_Ca_p* ( (( 1 )/(( 1 )+(exp(((V_m_p- x(1) )/theta_m_p))))) ) *( x(1) -V_Ca_p)) ) + ( (g_K_p* x(2) *( x(1) -V_K_p)) ) + ( (g_K_ATP_p*p_p*( x(1) -V_K_p)) ) + ( (g_s_p* x(3) *( x(1) -V_K_p)) ) ))/tau_membrane_p)
        ;
	
//x(2)   ID: n  initialValue: 0.05
	        
          ((lamda_p*( ( (( 1 )/(( 1 )+(exp(((V_n_p- x(1) )/theta_n_p))))) ) - x(2) ))/tau_potassium_current_n_gate_p)
        ;
	
//x(3)   ID: s  initialValue: 0.025
	        
          (( ( (( 1 )/(( 1 )+(exp(((V_s_p- x(1) )/theta_s_p))))) ) - x(3) )/tau_s_p)
        
	];


	
endfunction
        x0=[-65;0.05;0.025];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)'],[1;2;3])

//real_variable:
	
	
//x(1)   id: V_membrane  initialValue: -65
	
//x(2)   id: n  initialValue: 0.05
	
//x(3)   id: s  initialValue: 0.025