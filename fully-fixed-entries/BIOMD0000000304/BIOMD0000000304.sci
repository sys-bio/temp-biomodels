
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_COMpartment   id: COMpartment
	compartment_COMpartment=1;
		
// i_Na_p   id: i_Na
	i_Na_p=0;
		
// V_I_p   id: V_I
	V_I_p=30;
		
// V_K_p   id: V_K
	V_K_p=-75;
		
// V_L_p   id: V_L
	V_L_p=-40;
		
// V_Ca_p   id: V_Ca
	V_Ca_p=140;
		
// g_I_p   id: g_I
	g_I_p=4;
		
// g_K_p   id: g_K
	g_K_p=0.3;
		
// g_T_p   id: g_T
	g_T_p=0.01;
		
// g_K_Ca_p   id: g_K_Ca
	g_K_Ca_p=0.03;
		
// g_L_p   id: g_L
	g_L_p=0.003;
		
// K_p_p   id: K_p
	K_p_p=0.5;
		
// K_c_p   id: K_c
	K_c_p=0.0085;
		
// f_p   id: f
	f_p=0.0003;
		
// tau_x_p   id: tau_x
	tau_x_p=235;
		
// a_p   id: a
	a_p=1.209;
		
// b_p   id: b
	b_p=78.714;
		
// Vs_p   id: Vs
	Vs_p=0;
		
// m_infinity_p   id: m_infinity
	m_infinity_p=0;
		
// alpha_m_p   id: alpha_m
	alpha_m_p=0;
		
// beta_m_p   id: beta_m
	beta_m_p=0;
		
// h_infinity_p   id: h_infinity
	h_infinity_p=0;
		
// alpha_h_p   id: alpha_h
	alpha_h_p=0;
		
// beta_h_p   id: beta_h
	beta_h_p=0;
		
// tau_h_p   id: tau_h
	tau_h_p=0;
		
// x_infinity_p   id: x_infinity
	x_infinity_p=0;
		
// i_Ca_p   id: i_Ca
	i_Ca_p=0;
		
// n_infinity_p   id: n_infinity
	n_infinity_p=0;
		
// i_K_p   id: i_K
	i_K_p=0;
		
// alpha_n_p   id: alpha_n
	alpha_n_p=0;
		
// beta_n_p   id: beta_n
	beta_n_p=0;
		
// tau_n_p   id: tau_n
	tau_n_p=0;
		
// i_K_Ca_p   id: i_K_Ca
	i_K_Ca_p=0;
		
// i_L_p   id: i_L
	i_L_p=0;
		



xdot=[
//x(1)   ID: g_Ca  initialValue: 0.004
	0;
	
//x(2)   ID: V_membrane  initialValue: -55
	        
          ( ( (g_I_p*(power( ( ( ( ((( 0.1 )*(( 50 )- ( ((a_p* x(2) )+b_p) ) ))/((exp(((( 50 )- ( ((a_p* x(2) )+b_p) ) )/( 10 ))))-( 1 ))) ) /( ( ((( 0.1 )*(( 50 )- ( ((a_p* x(2) )+b_p) ) ))/((exp(((( 50 )- ( ((a_p* x(2) )+b_p) ) )/( 10 ))))-( 1 ))) ) + ( (( 4 )*(exp(((( 25 )- ( ((a_p* x(2) )+b_p) ) )/( 18 ))))) ) )) ) ,( 3 )))* x(3) *(V_I_p- x(2) )) ) + ( (g_T_p* x(4) *(V_I_p- x(2) )) ) + ( (g_K_p*(power( x(5) ,( 4 )))*(V_K_p- x(2) )) ) + ( (((g_K_Ca_p* x(6) )/(K_p_p+ x(6) ))*(V_K_p- x(2) )) ) + ( (g_L_p*(V_L_p- x(2) )) ) )
        ;
	
//x(3)   ID: h1  initialValue: 0.9
	        
          (( ( ( ( (( 0.07 )*(exp(((( 25 )- ( ((a_p* x(2) )+b_p) ) )/( 20 ))))) ) /( ( (( 0.07 )*(exp(((( 25 )- ( ((a_p* x(2) )+b_p) ) )/( 20 ))))) ) + ( (( 1 )/((exp(((( 55 )- ( ((a_p* x(2) )+b_p) ) )/( 10 ))))+( 1 ))) ) )) ) - x(3) )/ ( (( 12.5 )/( ( (( 0.07 )*(exp(((( 25 )- ( ((a_p* x(2) )+b_p) ) )/( 20 ))))) ) + ( (( 1 )/((exp(((( 55 )- ( ((a_p* x(2) )+b_p) ) )/( 10 ))))+( 1 ))) ) )) ) )
        ;
	
//x(4)   ID: x1  initialValue: 0.27
	        
          (( ( (( 1 )/((exp((( 0.15 )*(( x(2) )-( 50 )))))+( 1 ))) ) - x(4) )/tau_x_p)
        ;
	
//x(5)   ID: n1  initialValue: 0.03
	        
          (( ( ( ( ((( 0.01 )*(( 55 )- ( ((a_p* x(2) )+b_p) ) ))/((exp(((( 55 )- ( ((a_p* x(2) )+b_p) ) )/( 10 ))))-( 1 ))) ) /( ( ((( 0.01 )*(( 55 )- ( ((a_p* x(2) )+b_p) ) ))/((exp(((( 55 )- ( ((a_p* x(2) )+b_p) ) )/( 10 ))))-( 1 ))) ) + ( (( 0.125 )*(exp(((( 45 )- ( ((a_p* x(2) )+b_p) ) )/( 80 ))))) ) )) ) - x(5) )/ ( (( 12.5 )/( ( ((( 0.01 )*(( 55 )- ( ((a_p* x(2) )+b_p) ) ))/((exp(((( 55 )- ( ((a_p* x(2) )+b_p) ) )/( 10 ))))-( 1 ))) ) + ( (( 0.125 )*(exp(((( 45 )- ( ((a_p* x(2) )+b_p) ) )/( 80 ))))) ) )) ) )
        ;
	
//x(6)   ID: c  initialValue: 0.4
	        
          (f_p*((K_c_p* x(4) *(V_Ca_p- x(2) ))- x(6) ))
        
	];


	
endfunction
        x0=[0.004;-55;0.9;0.27;0.03;0.4];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)'],[1;2;3;4;5;6])

//real_variable:
	
	
//x(1)   id: g_Ca  initialValue: 0.004
	
//x(2)   id: V_membrane  initialValue: -55
	
//x(3)   id: h1  initialValue: 0.9
	
//x(4)   id: x1  initialValue: 0.27
	
//x(5)   id: n1  initialValue: 0.03
	
//x(6)   id: c  initialValue: 0.4