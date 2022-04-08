
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_Compartment   id: Compartment
	compartment_Compartment=1;
		
// R_p   id: R
	R_p=8314;
		
// T_p   id: T
	T_p=310;
		
// F_p   id: F
	F_p=96485;
		
// Cm_p   id: Cm
	Cm_p=1;
		
// i_fast_p   id: i_fast
	i_fast_p=-96.6401171990526;
		
// g_fast_p   id: g_fast
	g_fast_p=600;
		
// V_fast_p   id: V_fast
	V_fast_p=80;
		
// m_infinity_p   id: m_infinity
	m_infinity_p=0.185067533162422;
		
// Vm_p   id: Vm
	Vm_p=-25;
		
// Sm_p   id: Sm
	Sm_p=9;
		
// lamda_h_p   id: lamda_h
	lamda_h_p=12.5;
		
// tau_h_p   id: tau_h
	tau_h_p=0.0320623804770684;
		
// h_infinity_p   id: h_infinity
	h_infinity_p=0.201042499324815;
		
// Vh_p   id: Vh
	Vh_p=-48;
		
// Sh_p   id: Sh
	Sh_p=-7;
		
// i_Ca_p   id: i_Ca
	i_Ca_p=-24.1248530333721;
		
// K_Ca_p   id: K_Ca
	K_Ca_p=1;
		
// P_Ca_p   id: P_Ca
	P_Ca_p=2;
		
// Ca_o_p   id: Ca_o
	Ca_o_p=2500;
		
// lamda_d_p   id: lamda_d
	lamda_d_p=2.5;
		
// tau_d_p   id: tau_d
	tau_d_p=0.0234265674250627;
		
// d_infinity_p   id: d_infinity
	d_infinity_p=0.00344187186519272;
		
// Vd_p   id: Vd
	Vd_p=-10;
		
// Sd_p   id: Sd
	Sd_p=5;
		
// f_infinity_p   id: f_infinity
	f_infinity_p=0.5;
		
// Ca_i_calcium_current_f_gate_p   id: Ca_i_calcium_current_f_gate
	Ca_i_calcium_current_f_gate_p=1;
		
// i_NS_p   id: i_NS
	i_NS_p=-6.24107017458029;
		
// g_NS_p   id: g_NS
	g_NS_p=5;
		
// K_NS_p   id: K_NS
	K_NS_p=50;
		
// VNS_p   id: VNS
	VNS_p=-20;
		
// i_K_dr_p   id: i_K_dr
	i_K_dr_p=25.014877991785;
		
// V_K_p   id: V_K
	V_K_p=-75;
		
// g_K_dr_p   id: g_K_dr
	g_K_dr_p=600;
		
// lamda_n_p   id: lamda_n
	lamda_n_p=12.5;
		
// Vn_p   id: Vn
	Vn_p=-18;
		
// Sn_p   id: Sn
	Sn_p=14;
		
// n_infinity_p   id: n_infinity
	n_infinity_p=0.189546217642834;
		
// tau_n_p   id: tau_n
	tau_n_p=0.0313553515963197;
		
// i_K_Ca_p   id: i_K_Ca
	i_K_Ca_p=46.2079655277309;
		
// g_K_Ca_p   id: g_K_Ca
	g_K_Ca_p=5;
		
// i_K_ATP_p   id: i_K_ATP
	i_K_ATP_p=73.31708;
		
// g_K_ATP_p   id: g_K_ATP
	g_K_ATP_p=2;
		
// i_NaL_p   id: i_NaL
	i_NaL_p=-35.502438;
		
// g_NaL_p   id: g_NaL
	g_NaL_p=0.3;
		
// V_Na_p   id: V_Na
	V_Na_p=80;
		
// k_rel_p   id: k_rel
	k_rel_p=0.2;
		
// k_Ca_p   id: k_Ca
	k_Ca_p=7;
		
// k_pump_p   id: k_pump
	k_pump_p=30;
		
// omega_p   id: omega
	omega_p=0.2;
		



xdot=[
//x(1)   ID: V_membrane  initialValue: -38.34146
	        
          ((( ( (g_K_dr_p*(power( x(4) ,( 4 )))*( x(1) -V_K_p)) ) + ( (((g_K_Ca_p*(power( x(5) ,( 3 ))))/((power(K_Ca_p,( 3 )))+(power( x(5) ,( 3 )))))*( x(1) -V_K_p)) ) + ( (g_K_ATP_p*( x(1) -V_K_p)) ) + ( (g_fast_p*(power( ( (( 1 )/(( 1 )+(exp(((Vm_p- x(1) )/Sm_p))))) ) ,( 3 )))* x(2) *( x(1) -V_fast_p)) ) + ( ((((P_Ca_p* x(3) * ( (K_Ca_p/(K_Ca_p+Ca_i_calcium_current_f_gate_p)) ) *( 2 )*F_p* x(1) )/(R_p*T_p))*(Ca_o_p-( x(5) *(exp(((( 2 )*F_p* x(1) )/(R_p*T_p)))))))/(( 1 )-(exp(((( 2 )*F_p* x(1) )/(R_p*T_p)))))) ) + ( (((g_NS_p*(power(K_NS_p,( 2 ))))/((power(K_NS_p,( 2 )))+(power( x(6) ,( 2 )))))*((( x(1) -VNS_p)/(( 1 )-(exp((( 0.1 )*(VNS_p- x(1) ))))))-( 10 ))) ) + ( (g_NaL_p*( x(1) -V_Na_p)) ) ))/Cm_p)
        ;
	
//x(2)   ID: h  initialValue: 0.214723
	        
          (( ( (( 1 )/(( 1 )+(exp(((Vh_p- x(1) )/Sh_p))))) ) - x(2) )/ ( (( 1 )/(lamda_h_p*((exp(((Vh_p- x(1) )/(( 2 )*Sh_p))))+(exp((( x(1) -Vh_p)/(( 2 )*Sh_p))))))) ) )
        ;
	
//x(3)   ID: d  initialValue: 0.0031711238
	        
          (( ( (( 1 )/(( 1 )+(exp(((Vd_p- x(1) )/Sd_p))))) ) - x(3) )/ ( (( 1 )/(lamda_d_p*((exp(((Vd_p- x(1) )/(( 2 )*Sd_p))))+(exp((( x(1) -Vd_p)/(( 2 )*Sd_p))))))) ) )
        ;
	
//x(4)   ID: n  initialValue: 0.1836403
	        
          (( ( (( 1 )/(( 1 )+(exp(((Vn_p- x(1) )/Sn_p))))) ) - x(4) )/ ( (( 1 )/(lamda_n_p*((exp(((Vn_p- x(1) )/(( 2 )*Sn_p))))+(exp((( x(1) -Vn_p)/(( 2 )*Sn_p))))))) ) )
        ;
	
//x(5)   ID: Ca_i_cytosolic_calcium  initialValue: 0.6959466
	        
          ((k_rel_p*( x(6) - x(5) ))-((omega_p* ( ((((P_Ca_p* x(3) * ( (K_Ca_p/(K_Ca_p+Ca_i_calcium_current_f_gate_p)) ) *( 2 )*F_p* x(1) )/(R_p*T_p))*(Ca_o_p-( x(5) *(exp(((( 2 )*F_p* x(1) )/(R_p*T_p)))))))/(( 1 )-(exp(((( 2 )*F_p* x(1) )/(R_p*T_p)))))) ) )+(k_Ca_p* x(5) )+(k_pump_p* x(5) )))
        ;
	
//x(6)   ID: Ca_lum  initialValue: 102.686
	        
          (((k_rel_p)*( x(6) - x(5) ))+(k_pump_p* x(5) ))
        
	];


	
endfunction
        x0=[-38.34146;0.214723;0.0031711238;0.1836403;0.6959466;102.686];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)'],[1;2;3;4;5;6])

//real_variable:
	
	
//x(1)   id: V_membrane  initialValue: -38.34146
	
//x(2)   id: h  initialValue: 0.214723
	
//x(3)   id: d  initialValue: 0.0031711238
	
//x(4)   id: n  initialValue: 0.1836403
	
//x(5)   id: Ca_i_cytosolic_calcium  initialValue: 0.6959466
	
//x(6)   id: Ca_lum  initialValue: 102.686