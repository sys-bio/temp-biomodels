
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_COMpartment   id: COMpartment
	compartment_COMpartment=1;
		
// Cm_p   id: Cm
	Cm_p=6158;
		
// i_K_p   id: i_K
	i_K_p=17.55;
		
// g_K_p   id: g_K
	g_K_p=3900;
		
// n_infinity_p   id: n_infinity
	n_infinity_p=0.000467956725632935;
		
// tau_n_p   id: tau_n
	tau_n_p=9.085746273364;
		
// lambda_n_p   id: lambda_n
	lambda_n_p=1.85;
		
// i_K_ATP_p   id: i_K_ATP
	i_K_ATP_p=1350;
		
// g_K_ATP_p   id: g_K_ATP
	g_K_ATP_p=150;
		
// i_Ca_f_p   id: i_Ca_f
	i_Ca_f_p=-548.702035891578;
		
// V_Ca_p   id: V_Ca
	V_Ca_p=100;
		
// g_Ca_f_p   id: g_Ca_f
	g_Ca_f_p=810;
		
// m_f_infinity_p   id: m_f_infinity
	m_f_infinity_p=0.00420751503635901;
		
// i_Ca_s_p   id: i_Ca_s
	i_Ca_s_p=-793.881316270245;
		
// g_Ca_s_p   id: g_Ca_s
	g_Ca_s_p=510;
		
// m_s_infinity_p   id: m_s_infinity
	m_s_infinity_p=0.0109869426305932;
		
// j_p   id: j
	j_p=0.88;
		
// jm_infinity_p   id: jm_infinity
	jm_infinity_p=0.0179862099620915;
		
// tau_j_p   id: tau_j
	tau_j_p=8145.05572085199;
		
// i_Ca_p   id: i_Ca
	i_Ca_p=-1342.58335216182;
		
// i_K_Ca_p   id: i_K_Ca
	i_K_Ca_p=3.45489443378119;
		
// g_K_Ca_p   id: g_K_Ca
	g_K_Ca_p=1200;
		
// kdkca_p   id: kdkca
	kdkca_p=0.55;
		
// i_CRAC_p   id: i_CRAC
	i_CRAC_p=-11.3122509416041;
		
// g_CRAC_p   id: g_CRAC
	g_CRAC_p=75;
		
// V_CRAC_p   id: V_CRAC
	V_CRAC_p=0;
		
// r_infinity_p   id: r_infinity
	r_infinity_p=0.00247262315663477;
		
// Ca_er_bar_p   id: Ca_er_bar
	Ca_er_bar_p=3;
		
// i_leak_p   id: i_leak
	i_leak_p=0;
		
// g_leak_p   id: g_leak
	g_leak_p=0;
		
// J_er_p_p   id: J_er_p
	J_er_p_p=0.131402714932127;
		
// IP3_p   id: IP3
	IP3_p=0;
		
// kerp_p   id: kerp
	kerp_p=0.1;
		
// verp_p   id: verp
	verp_p=0.24;
		
// dact_p   id: dact
	dact_p=0.1;
		
// dinh_p   id: dinh
	dinh_p=0.4;
		
// dip3_p   id: dip3
	dip3_p=0.2;
		
// a_infinity_p   id: a_infinity
	a_infinity_p=0.523809523809524;
		
// b_infinity_p   id: b_infinity
	b_infinity_p=0;
		
// h_infinity_p   id: h_infinity
	h_infinity_p=0.784313725490196;
		
// O_p   id: O
	O_p=0;
		
// J_er_tot_p   id: J_er_tot
	J_er_tot_p=0.0463972850678733;
		
// J_er_IP3_p   id: J_er_IP3
	J_er_IP3_p=0;
		
// J_er_leak_p   id: J_er_leak
	J_er_leak_p=0.1778;
		
// perl_p   id: perl
	perl_p=0.02;
		
// lambda_er_p   id: lambda_er
	lambda_er_p=250;
		
// sigma_er_p   id: sigma_er
	sigma_er_p=5;
		
// k_Ca_p   id: k_Ca
	k_Ca_p=0.07;
		
// gamma_p   id: gamma
	gamma_p=3.607E-6;
		
// J_mem_tot_p   id: J_mem_tot
	J_mem_tot_p=-2.8573018487523E-5;
		
// f_p   id: f
	f_p=0.01;
		



xdot=[
//x(1)   ID: V_membrane  initialValue: -61
	        
          ((( ( ( ( (g_Ca_f_p* ( (( 1 )/(( 1 )+(exp((((( 20 ))- x(1) )/( 7.5 )))))) ) *( x(1) -V_Ca_p)) ) + ( (g_Ca_s_p* ( (( 1 )/(( 1 )+(exp((((( 16 ))- x(1) )/( 10 )))))) ) *(( 1 )- x(3) )*( x(1) -V_Ca_p)) ) ) ) + ( (g_K_p* x(2) *( x(1) +( 70 ))) ) + ( (g_K_ATP_p*( x(1) +( 70 ))) ) + ( (((g_K_Ca_p*(power( x(5) ,( 5 ))))/((power( x(5) ,( 5 )))+(power(kdkca_p,( 5 )))))*( x(1) +( 70 ))) ) + ( (g_CRAC_p* ( (( 1 )/(( 1 )+(exp((( 1 )*( x(4) -Ca_er_bar_p)))))) ) *( x(1) -V_CRAC_p)) ) + ( (g_leak_p*( x(1) -V_CRAC_p)) ) ))/Cm_p)
        ;
	
//x(2)   ID: n  initialValue: 0.0005
	        
          ((lambda_n_p*( ( (( 1 )/(( 1 )+(exp((((( 15 ))- x(1) )/( 6 )))))) ) - x(2) ))/ ( (( 9.09 )/(( 1 )+(exp(((( 15 )+ x(1) )/( 6 )))))) ) )
        ;
	
//x(3)   ID: jm  initialValue: 0.25
	        
          (( ( (( 1 )-(( 1 )/(( 1 )+(exp(((( 53 )+ x(1) )/( 2 ))))))) ) - x(3) )/ ( ((( 50000 )/((exp(((( 53 )+ x(1) )/( 4 ))))+(exp((((( 53 ))- x(1) )/( 4 ))))))+( 1500 )) ) )
        ;
	
//x(4)   ID: Ca_er_Ca_equations  initialValue: 9
	        
          (( ( (( ( (perl_p*( x(4) - x(5) )) ) + ( ( ( ((power( ( (( 1 )/(( 1 )+(dact_p/ x(5) ))) ) ,( 3 )))*(power( ( (IP3_p/(IP3_p+dip3_p)) ) ,( 3 )))*(power( ( (( 1 )/(( 1 )+( x(5) /dinh_p))) ) ,( 3 )))*( 1 )) ) *( x(4) - x(5) )) ) )- ( ((verp_p*(power( x(5) ,( 2 ))))/((power( x(5) ,( 2 )))+(power(kerp_p,( 2 ))))) ) ) ) )/(lambda_er_p*sigma_er_p))
        ;
	
//x(5)   ID: Ca_i  initialValue: 0.11
	        
          (( ( (( ( (perl_p*( x(4) - x(5) )) ) + ( ( ( ((power( ( (( 1 )/(( 1 )+(dact_p/ x(5) ))) ) ,( 3 )))*(power( ( (IP3_p/(IP3_p+dip3_p)) ) ,( 3 )))*(power( ( (( 1 )/(( 1 )+( x(5) /dinh_p))) ) ,( 3 )))*( 1 )) ) *( x(4) - x(5) )) ) )- ( ((verp_p*(power( x(5) ,( 2 ))))/((power( x(5) ,( 2 )))+(power(kerp_p,( 2 ))))) ) ) ) /lambda_er_p)+ ( ((f_p)*((gamma_p* ( ( ( (g_Ca_f_p* ( (( 1 )/(( 1 )+(exp((((( 20 ))- x(1) )/( 7.5 )))))) ) *( x(1) -V_Ca_p)) ) + ( (g_Ca_s_p* ( (( 1 )/(( 1 )+(exp((((( 16 ))- x(1) )/( 10 )))))) ) *(( 1 )- x(3) )*( x(1) -V_Ca_p)) ) ) ) )+(k_Ca_p* x(5) ))) ) )
        
	];


	
endfunction
        x0=[-61;0.0005;0.25;9;0.11];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)'],[1;2;3;4;5])

//real_variable:
	
	
//x(1)   id: V_membrane  initialValue: -61
	
//x(2)   id: n  initialValue: 0.0005
	
//x(3)   id: jm  initialValue: 0.25
	
//x(4)   id: Ca_er_Ca_equations  initialValue: 9
	
//x(5)   id: Ca_i  initialValue: 0.11