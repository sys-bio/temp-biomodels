% This file works with OCTAVE and is automatically generated with 
% the System Biology Format Converter (http://sbfc.sourceforge.net/)
% from an SBML file.
% To run this file with Matlab you must edit the comments providing
% the definition of the ode solver and the signature for the 
% xdot function.
%
% The conversion system has the following limitations:
%  - You may have to re order some reactions and Assignment Rules definition
%  - Delays are not taken into account
%  - You should change the lsode parameters (start, end, steps) to get better results
%

%
% Model name = Mears1997_CRAC_PancreaticBetaCells
%
% is http://identifiers.org/biomodels.db/MODEL1006230074
% is http://identifiers.org/biomodels.db/BIOMD0000000375
% isDescribedBy http://identifiers.org/pubmed/9002424
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000374
%


function main()
%Initial conditions vector
	x0=zeros(10,1);
	x0(6) = -61.0;
	x0(7) = 5.0E-4;
	x0(8) = 0.12;
	x0(9) = 60.0;
	x0(10) = 0.11;
	x0(1) = -61.0;
	x0(2) = 5.0E-4;
	x0(3) = 0.12;
	x0(4) = 60.0;
	x0(5) = 0.11;


% Depending on whether you are using Octave or Matlab,
% you should comment / uncomment one of the following blocks.
% This should also be done for the definition of the function f below.
% Start Matlab code
%	tspan=[0:0.01:100];
%	opts = odeset('AbsTol',1e-3);
%	[t,x]=ode23tb(@f,tspan,x0,opts);
% End Matlab code

% Start Octave code
	t=linspace(0,100,100);
	x=lsode('f',x0,t);
% End Octave code


	plot(t,x);
end



% Depending on whether you are using Octave or Matlab,
% you should comment / uncomment one of the following blocks.
% This should also be done for the definition of the function f below.
% Start Matlab code
%function xdot=f(t,x)
% End Matlab code

% Start Octave code
function xdot=f(x,t)
% End Octave code

% Compartment: id = COMpartment, name = COMpartment, constant
	compartment_COMpartment=1.0;
% Parameter:   id =  Cm, name = Cm
	global_par_Cm=6158.0;
% Parameter:   id =  i_K, name = i_K
% Parameter:   id =  V_K, name = V_K
	global_par_V_K=-70.0;
% Parameter:   id =  g_K, name = g_K
	global_par_g_K=3900.0;
% Parameter:   id =  n_infinity, name = n_infinity
% Parameter:   id =  tau_n, name = tau_n
% Parameter:   id =  Vn, name = Vn
	global_par_Vn=-15.0;
% Parameter:   id =  Sn, name = Sn
	global_par_Sn=6.0;
% Parameter:   id =  lambda_n, name = lambda_n
	global_par_lambda_n=1.85;
% Parameter:   id =  i_K_ATP, name = i_K_ATP
% Parameter:   id =  g_K_ATP, name = g_K_ATP
% Parameter:   id =  i_Ca_f, name = i_Ca_f
% Parameter:   id =  V_Ca, name = V_Ca
	global_par_V_Ca=100.0;
% Parameter:   id =  g_Ca_f, name = g_Ca_f
	global_par_g_Ca_f=810.0;
% Parameter:   id =  m_f_infinity, name = m_f_infinity
% Parameter:   id =  Vm_f, name = Vm_f
	global_par_Vm_f=-20.0;
% Parameter:   id =  Sm_f, name = Sm_f
	global_par_Sm_f=7.5;
% Parameter:   id =  i_Ca_s, name = i_Ca_s
% Parameter:   id =  g_Ca_s, name = g_Ca_s
	global_par_g_Ca_s=510.0;
% Parameter:   id =  m_s_infinity, name = m_s_infinity
% Parameter:   id =  Vm_s, name = Vm_s
	global_par_Vm_s=-16.0;
% Parameter:   id =  Sm_s, name = Sm_s
	global_par_Sm_s=10.0;
% Parameter:   id =  jm_infinity, name = jm_infinity
% Parameter:   id =  Vj, name = Vj
	global_par_Vj=-53.0;
% Parameter:   id =  tau_j, name = tau_j
% Parameter:   id =  Sj, name = Sj
	global_par_Sj=2.0;
% Parameter:   id =  i_Ca, name = i_Ca
% Parameter:   id =  i_K_Ca, name = i_K_Ca
% Parameter:   id =  g_K_Ca, name = g_K_Ca
	global_par_g_K_Ca=1200.0;
% Parameter:   id =  kdkca, name = kdkca
	global_par_kdkca=0.55;
% Parameter:   id =  i_CRAC, name = i_CRAC
% Parameter:   id =  g_CRAC, name = g_CRAC
	global_par_g_CRAC=75.0;
% Parameter:   id =  V_CRAC, name = V_CRAC
	global_par_V_CRAC=0.0;
% Parameter:   id =  r_infinity, name = r_infinity
% Parameter:   id =  Ca_er_bar, name = Ca_er_bar
	global_par_Ca_er_bar=40.0;
% Parameter:   id =  sloper, name = sloper
	global_par_sloper=3.0;
% Parameter:   id =  i_leak, name = i_leak
% Parameter:   id =  g_leak, name = g_leak
	global_par_g_leak=0.0;
% Parameter:   id =  J_er_p, name = J_er_p
% Parameter:   id =  IP3, name = IP3
	global_par_IP3=0.0;
% Parameter:   id =  kerp, name = kerp
	global_par_kerp=0.09;
% Parameter:   id =  verp, name = verp
	global_par_verp=0.24;
% Parameter:   id =  dact, name = dact
	global_par_dact=0.35;
% Parameter:   id =  dinh, name = dinh
	global_par_dinh=0.4;
% Parameter:   id =  dip3, name = dip3
	global_par_dip3=0.2;
% Parameter:   id =  a_infinity, name = a_infinity
% Parameter:   id =  b_infinity, name = b_infinity
% Parameter:   id =  h_infinity, name = h_infinity
% Parameter:   id =  O, name = O
% Parameter:   id =  J_er_tot, name = J_er_tot
% Parameter:   id =  J_er_IP3, name = J_er_IP3
% Parameter:   id =  J_er_leak, name = J_er_leak
% Parameter:   id =  perl, name = perl
	global_par_perl=0.003;
% Parameter:   id =  lambda_er, name = lambda_er
	global_par_lambda_er=250.0;
% Parameter:   id =  sigma_er, name = sigma_er
	global_par_sigma_er=1.0;
% Parameter:   id =  kmp, name = kmp
	global_par_kmp=0.35;
% Parameter:   id =  vmp, name = vmp
	global_par_vmp=0.08;
% Parameter:   id =  gamma, name = gamma
	global_par_gamma=3.607E-6;
% Parameter:   id =  J_mem_tot, name = J_mem_tot
% Parameter:   id =  Jmp, name = Jmp
% Parameter:   id =  f, name = f
	global_par_f=0.01;
% assignmentRule: variable = tau_n
	global_par_tau_n=9.09/(1+exp((x(1)+15)/6));
% assignmentRule: variable = i_K
	global_par_i_K=global_par_g_K*x(2)*(x(1)-global_par_V_K);
% assignmentRule: variable = n_infinity
	global_par_n_infinity=1/(1+exp((-15-x(1))/6));
% assignmentRule: variable = g_K_ATP
	global_par_g_K_ATP=piecewise(2000, (time > 60000) && (time < 660000), 150);
% assignmentRule: variable = i_K_ATP
	global_par_i_K_ATP=global_par_g_K_ATP*(x(1)-global_par_V_K);
% assignmentRule: variable = m_f_infinity
	global_par_m_f_infinity=1/(1+exp((-20-x(1))/7.5));
% assignmentRule: variable = i_Ca_f
	global_par_i_Ca_f=global_par_g_Ca_f*global_par_m_f_infinity*(x(1)-global_par_V_Ca);
% assignmentRule: variable = m_s_infinity
	global_par_m_s_infinity=1/(1+exp((-16-x(1))/10));
% assignmentRule: variable = i_Ca_s
	global_par_i_Ca_s=global_par_g_Ca_s*global_par_m_s_infinity*(1-x(3))*(x(1)-global_par_V_Ca);
% assignmentRule: variable = jm_infinity
	global_par_jm_infinity=1-1/(1+exp((x(1)+53)/2));
% assignmentRule: variable = tau_j
	global_par_tau_j=50000/(exp((x(1)+53)/4)+exp((-53-x(1))/4))+1500;
% assignmentRule: variable = i_Ca
	global_par_i_Ca=global_par_i_Ca_f+global_par_i_Ca_s;
% assignmentRule: variable = i_K_Ca
	global_par_i_K_Ca=global_par_g_K_Ca*x(5)^5/(x(5)^5+global_par_kdkca^5)*(x(1)-global_par_V_K);
% assignmentRule: variable = r_infinity
	global_par_r_infinity=1/(1+exp((x(4)-global_par_Ca_er_bar)/global_par_sloper));
% assignmentRule: variable = i_CRAC
	global_par_i_CRAC=global_par_g_CRAC*global_par_r_infinity*(x(1)-global_par_V_CRAC);
% assignmentRule: variable = i_leak
	global_par_i_leak=global_par_g_leak*(x(1)-global_par_V_CRAC);
% assignmentRule: variable = J_er_p
	global_par_J_er_p=global_par_verp*x(5)^2/(x(5)^2+global_par_kerp^2);
% assignmentRule: variable = a_infinity
	global_par_a_infinity=1/(1+global_par_dact/x(5));
% assignmentRule: variable = b_infinity
	global_par_b_infinity=global_par_IP3/(global_par_IP3+global_par_dip3);
% assignmentRule: variable = h_infinity
	global_par_h_infinity=1/(1+x(5)/global_par_dinh);
% assignmentRule: variable = O
	global_par_O=global_par_a_infinity^3*global_par_b_infinity^3*global_par_h_infinity^3*1;
% assignmentRule: variable = J_er_IP3
	global_par_J_er_IP3=global_par_O*(x(4)-x(5));
% assignmentRule: variable = J_er_leak
	global_par_J_er_leak=global_par_perl*(x(4)-x(5));
% assignmentRule: variable = J_er_tot
	global_par_J_er_tot=global_par_J_er_leak+global_par_J_er_IP3-global_par_J_er_p;
% assignmentRule: variable = Jmp
	global_par_Jmp=global_par_vmp*x(5)^2/(x(5)^2+global_par_kmp^2);
% assignmentRule: variable = J_mem_tot
	global_par_J_mem_tot=(-global_par_f)*(global_par_gamma*global_par_i_Ca+global_par_Jmp);
% rateRule: variable = V_membrane
x(1) = x(6);
% rateRule: variable = n
x(2) = x(7);
% rateRule: variable = jm
x(3) = x(8);
% rateRule: variable = Ca_er_Ca_equations
x(4) = x(9);
% rateRule: variable = Ca_i
x(5) = x(10);

	xdot=zeros(10,1);
	% rateRule: variable = V_membrane
	xdot(6) = (-(global_par_i_Ca+global_par_i_K+global_par_i_K_ATP+global_par_i_K_Ca+global_par_i_CRAC+global_par_i_leak))/global_par_Cm;
	% rateRule: variable = n
	xdot(7) = global_par_lambda_n*(global_par_n_infinity-x(2))/global_par_tau_n;
	% rateRule: variable = jm
	xdot(8) = (global_par_jm_infinity-x(3))/global_par_tau_j;
	% rateRule: variable = Ca_er_Ca_equations
	xdot(9) = (-global_par_J_er_tot)/(global_par_lambda_er*global_par_sigma_er);
	% rateRule: variable = Ca_i
	xdot(10) = global_par_J_er_tot/global_par_lambda_er+global_par_J_mem_tot;
	
% Species:   id = V_membrane, name = V_membrane, defined in a rule 	xdot(1) = x(1);
	
% Species:   id = n, name = n, defined in a rule 	xdot(2) = x(2);
	
% Species:   id = jm, name = jm, defined in a rule 	xdot(3) = x(3);
	
% Species:   id = Ca_er_Ca_equations, name = Ca_er_Ca_equations, defined in a rule 	xdot(4) = x(4);
	
% Species:   id = Ca_i, name = Ca_i, defined in a rule 	xdot(5) = x(5);
end

% adding few functions representing operators used in SBML but not present directly 
% in either matlab or octave. 
function z=pow(x,y),z=x^y;end
function z=root(x,y),z=y^(1/x);end
function z = piecewise(varargin)
	numArgs = nargin;
	result = 0;
	foundResult = 0;
	for k=1:2: numArgs-1
		if varargin{k+1} == 1
			result = varargin{k};
			foundResult = 1;
			break;
		end
	end
	if foundResult == 0
		result = varargin{numArgs};
	end
	z = result;
end


