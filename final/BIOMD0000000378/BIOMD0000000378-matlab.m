% This file works with MATLAB and is automatically generated with 
% the System Biology Format Converter (http://sbfc.sourceforge.net/)
% from an SBML file. 
% To run this file with Octave you must edit the comments providing
% the definition of the ode solver and the signature for the 
% xdot function.
%
% The conversion system has the following limitations:
%  - You may have to re order some reactions and Assignment Rules definition
%  - Delays are not taken into account
%  - You should change the lsode parameters (start, end, steps) to get better results
%

%
% Model name = Chay1997_CalciumConcentration
%
% is http://identifiers.org/biomodels.db/MODEL0491199816
% is http://identifiers.org/biomodels.db/BIOMD0000000378
% isDescribedBy http://identifiers.org/pubmed/9284334
%


function main()
%Initial conditions vector
	x0=zeros(12,1);
	x0(7) = -38.34146;
	x0(8) = 0.214723;
	x0(9) = 0.0031711238;
	x0(10) = 0.1836403;
	x0(11) = 0.6959466;
	x0(12) = 102.686;
	x0(1) = -38.34146;
	x0(2) = 0.214723;
	x0(3) = 0.0031711238;
	x0(4) = 0.1836403;
	x0(5) = 0.6959466;
	x0(6) = 102.686;


% Depending on whether you are using Octave or Matlab,
% you should comment / uncomment one of the following blocks.
% This should also be done for the definition of the function f below.
% Start Matlab code
	tspan=[0:0.01:100];
	opts = odeset('AbsTol',1e-3);
	[t,x]=ode23tb(@f,tspan,x0,opts);
% End Matlab code

% Start Octave code
%	t=linspace(0,100,100);
%	x=lsode('f',x0,t);
% End Octave code


	plot(t,x);
end



% Depending on whether you are using Octave or Matlab,
% you should comment / uncomment one of the following blocks.
% This should also be done for the definition of the function f below.
% Start Matlab code
function xdot=f(t,x)
% End Matlab code

% Start Octave code
%function xdot=f(x,t)
% End Octave code

% Compartment: id = Compartment, name = Compartment, constant
	compartment_Compartment=1.0;
% Parameter:   id =  R, name = R
	global_par_R=8314.0;
% Parameter:   id =  T, name = T
	global_par_T=310.0;
% Parameter:   id =  F, name = F
	global_par_F=96485.0;
% Parameter:   id =  Cm, name = Cm
	global_par_Cm=1.0;
% Parameter:   id =  i_fast, name = i_fast
% Parameter:   id =  g_fast, name = g_fast
	global_par_g_fast=600.0;
% Parameter:   id =  V_fast, name = V_fast
	global_par_V_fast=80.0;
% Parameter:   id =  m_infinity, name = m_infinity
% Parameter:   id =  Vm, name = Vm
	global_par_Vm=-25.0;
% Parameter:   id =  Sm, name = Sm
	global_par_Sm=9.0;
% Parameter:   id =  lamda_h, name = lamda_h
	global_par_lamda_h=12.5;
% Parameter:   id =  tau_h, name = tau_h
% Parameter:   id =  h_infinity, name = h_infinity
% Parameter:   id =  Vh, name = Vh
	global_par_Vh=-48.0;
% Parameter:   id =  Sh, name = Sh
	global_par_Sh=-7.0;
% Parameter:   id =  i_Ca, name = i_Ca
% Parameter:   id =  K_Ca, name = K_Ca
	global_par_K_Ca=1.0;
% Parameter:   id =  P_Ca, name = P_Ca
	global_par_P_Ca=2.0;
% Parameter:   id =  Ca_o, name = Ca_o
	global_par_Ca_o=2500.0;
% Parameter:   id =  lamda_d, name = lamda_d
	global_par_lamda_d=2.5;
% Parameter:   id =  tau_d, name = tau_d
% Parameter:   id =  d_infinity, name = d_infinity
% Parameter:   id =  Vd, name = Vd
	global_par_Vd=-10.0;
% Parameter:   id =  Sd, name = Sd
	global_par_Sd=5.0;
% Parameter:   id =  f_infinity, name = f_infinity
% Parameter:   id =  Ca_i_calcium_current_f_gate, name = Ca_i
	global_par_Ca_i_calcium_current_f_gate=1.0;
% Parameter:   id =  i_NS, name = i_NS
% Parameter:   id =  g_NS, name = g_NS
	global_par_g_NS=5.0;
% Parameter:   id =  K_NS, name = K_NS
	global_par_K_NS=50.0;
% Parameter:   id =  VNS, name = VNS
	global_par_VNS=-20.0;
% Parameter:   id =  i_K_dr, name = i_K_dr
% Parameter:   id =  V_K, name = V_K
	global_par_V_K=-75.0;
% Parameter:   id =  g_K_dr, name = g_K_dr
	global_par_g_K_dr=600.0;
% Parameter:   id =  lamda_n, name = lamda_n
	global_par_lamda_n=12.5;
% Parameter:   id =  Vn, name = Vn
	global_par_Vn=-18.0;
% Parameter:   id =  Sn, name = Sn
	global_par_Sn=14.0;
% Parameter:   id =  n_infinity, name = n_infinity
% Parameter:   id =  tau_n, name = tau_n
% Parameter:   id =  i_K_Ca, name = i_K_Ca
% Parameter:   id =  g_K_Ca, name = g_K_Ca
	global_par_g_K_Ca=5.0;
% Parameter:   id =  i_K_ATP, name = i_K_ATP
% Parameter:   id =  g_K_ATP, name = g_K_ATP
	global_par_g_K_ATP=2.0;
% Parameter:   id =  i_NaL, name = i_NaL
% Parameter:   id =  g_NaL, name = g_NaL
	global_par_g_NaL=0.3;
% Parameter:   id =  V_Na, name = V_Na
	global_par_V_Na=80.0;
% Parameter:   id =  k_rel, name = k_rel
	global_par_k_rel=0.2;
% Parameter:   id =  k_Ca, name = k_Ca
	global_par_k_Ca=7.0;
% Parameter:   id =  k_pump, name = k_pump
	global_par_k_pump=30.0;
% Parameter:   id =  omega, name = omega
	global_par_omega=0.2;
% assignmentRule: variable = m_infinity
	global_par_m_infinity=1/(1+exp((global_par_Vm-x(1))/global_par_Sm));
% assignmentRule: variable = i_fast
	global_par_i_fast=global_par_g_fast*global_par_m_infinity^3*x(2)*(x(1)-global_par_V_fast);
% assignmentRule: variable = tau_h
	global_par_tau_h=1/(global_par_lamda_h*(exp((global_par_Vh-x(1))/(2*global_par_Sh))+exp((x(1)-global_par_Vh)/(2*global_par_Sh))));
% assignmentRule: variable = h_infinity
	global_par_h_infinity=1/(1+exp((global_par_Vh-x(1))/global_par_Sh));
% assignmentRule: variable = tau_d
	global_par_tau_d=1/(global_par_lamda_d*(exp((global_par_Vd-x(1))/(2*global_par_Sd))+exp((x(1)-global_par_Vd)/(2*global_par_Sd))));
% assignmentRule: variable = f_infinity
	global_par_f_infinity=global_par_K_Ca/(global_par_K_Ca+global_par_Ca_i_calcium_current_f_gate);
% assignmentRule: variable = i_Ca
	global_par_i_Ca=global_par_P_Ca*x(3)*global_par_f_infinity*2*global_par_F*x(1)/(global_par_R*global_par_T)*(global_par_Ca_o-x(5)*exp(2*global_par_F*x(1)/(global_par_R*global_par_T)))/(1-exp(2*global_par_F*x(1)/(global_par_R*global_par_T)));
% assignmentRule: variable = d_infinity
	global_par_d_infinity=1/(1+exp((global_par_Vd-x(1))/global_par_Sd));
% assignmentRule: variable = i_NS
	global_par_i_NS=global_par_g_NS*global_par_K_NS^2/(global_par_K_NS^2+x(6)^2)*((x(1)-global_par_VNS)/(1-exp(0.1*(global_par_VNS-x(1))))-10);
% assignmentRule: variable = i_K_dr
	global_par_i_K_dr=global_par_g_K_dr*x(4)^4*(x(1)-global_par_V_K);
% assignmentRule: variable = n_infinity
	global_par_n_infinity=1/(1+exp((global_par_Vn-x(1))/global_par_Sn));
% assignmentRule: variable = tau_n
	global_par_tau_n=1/(global_par_lamda_n*(exp((global_par_Vn-x(1))/(2*global_par_Sn))+exp((x(1)-global_par_Vn)/(2*global_par_Sn))));
% assignmentRule: variable = i_K_ATP
	global_par_i_K_ATP=global_par_g_K_ATP*(x(1)-global_par_V_K);
% assignmentRule: variable = i_K_Ca
	global_par_i_K_Ca=global_par_g_K_Ca*x(5)^3/(global_par_K_Ca^3+x(5)^3)*(x(1)-global_par_V_K);
% assignmentRule: variable = i_NaL
	global_par_i_NaL=global_par_g_NaL*(x(1)-global_par_V_Na);
% rateRule: variable = V_membrane
x(1) = x(7);
% rateRule: variable = h
x(2) = x(8);
% rateRule: variable = d
x(3) = x(9);
% rateRule: variable = n
x(4) = x(10);
% rateRule: variable = Ca_i_cytosolic_calcium
x(5) = x(11);
% rateRule: variable = Ca_lum
x(6) = x(12);

	xdot=zeros(12,1);
	% rateRule: variable = V_membrane
	xdot(7) = (-(global_par_i_K_dr+global_par_i_K_Ca+global_par_i_K_ATP+global_par_i_fast+global_par_i_Ca+global_par_i_NS+global_par_i_NaL))/global_par_Cm;
	% rateRule: variable = h
	xdot(8) = (global_par_h_infinity-x(2))/global_par_tau_h;
	% rateRule: variable = d
	xdot(9) = (global_par_d_infinity-x(3))/global_par_tau_d;
	% rateRule: variable = n
	xdot(10) = (global_par_n_infinity-x(4))/global_par_tau_n;
	% rateRule: variable = Ca_i_cytosolic_calcium
	xdot(11) = global_par_k_rel*(x(6)-x(5))-(global_par_omega*global_par_i_Ca+global_par_k_Ca*x(5)+global_par_k_pump*x(5));
	% rateRule: variable = Ca_lum
	xdot(12) = (-global_par_k_rel)*(x(6)-x(5))+global_par_k_pump*x(5);
	
% Species:   id = V_membrane, name = V_membrane, defined in a rule 	xdot(1) = x(1);
	
% Species:   id = h, name = h, defined in a rule 	xdot(2) = x(2);
	
% Species:   id = d, name = d, defined in a rule 	xdot(3) = x(3);
	
% Species:   id = n, name = n, defined in a rule 	xdot(4) = x(4);
	
% Species:   id = Ca_i_cytosolic_calcium, name = Ca_i_cytosolic_calcium, defined in a rule 	xdot(5) = x(5);
	
% Species:   id = Ca_lum, name = Ca_lum, defined in a rule 	xdot(6) = x(6);
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


