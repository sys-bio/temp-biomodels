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
% Model name = DeVries2000_PancreaticBetaCells_InsulinSecretion
%
% is http://identifiers.org/biomodels.db/MODEL0911270002
% is http://identifiers.org/biomodels.db/BIOMD0000000371
% isDescribedBy http://identifiers.org/pubmed/11093836
% isDerivedFrom http://identifiers.org/pubmed/2850029
%


function main()
%Initial conditions vector
	x0=zeros(6,1);
	x0(4) = -65.0;
	x0(5) = 0.05;
	x0(6) = 0.025;
	x0(1) = -65.0;
	x0(2) = 0.05;
	x0(3) = 0.025;


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

% Compartment: id = Compartment, name = Compartment, constant
	compartment_Compartment=1.0;
% Parameter:   id =  tau_membrane, name = tau
	global_par_tau_membrane=20.0;
% Parameter:   id =  i_Ca, name = i_Ca
% Parameter:   id =  g_Ca, name = g_Ca
	global_par_g_Ca=3.6;
% Parameter:   id =  V_Ca, name = V_Ca
	global_par_V_Ca=25.0;
% Parameter:   id =  m_infinity, name = m_infinity
% Parameter:   id =  V_m, name = V_m
	global_par_V_m=-20.0;
% Parameter:   id =  theta_m, name = theta_m
	global_par_theta_m=12.0;
% Parameter:   id =  i_K, name = i_K
% Parameter:   id =  V_K, name = V_K
	global_par_V_K=-75.0;
% Parameter:   id =  g_K, name = g_K
	global_par_g_K=10.0;
% Parameter:   id =  n_infinity, name = n_infinity
% Parameter:   id =  V_n, name = V_n
	global_par_V_n=-17.0;
% Parameter:   id =  theta_n, name = theta_n
	global_par_theta_n=5.6;
% Parameter:   id =  lamda, name = lamda
	global_par_lamda=0.8;
% Parameter:   id =  tau_potassium_current_n_gate, name = tau_2
	global_par_tau_potassium_current_n_gate=20.0;
% Parameter:   id =  i_s, name = i_s
% Parameter:   id =  g_s, name = g_s
	global_par_g_s=4.0;
% Parameter:   id =  s_infinity, name = s_infinity
% Parameter:   id =  V_s, name = V_s
	global_par_V_s=-22.0;
% Parameter:   id =  theta_s, name = theta_s
	global_par_theta_s=8.0;
% Parameter:   id =  tau_s, name = tau_s
	global_par_tau_s=20000.0;
% Parameter:   id =  i_K_ATP, name = i_K_ATP
% Parameter:   id =  g_K_ATP, name = g_K_ATP
	global_par_g_K_ATP=1.2;
% Parameter:   id =  p, name = p
	global_par_p=0.5;
% assignmentRule: variable = m_infinity
	global_par_m_infinity=1/(1+exp((global_par_V_m-x(1))/global_par_theta_m));
% assignmentRule: variable = i_Ca
	global_par_i_Ca=global_par_g_Ca*global_par_m_infinity*(x(1)-global_par_V_Ca);
% assignmentRule: variable = i_K
	global_par_i_K=global_par_g_K*x(2)*(x(1)-global_par_V_K);
% assignmentRule: variable = n_infinity
	global_par_n_infinity=1/(1+exp((global_par_V_n-x(1))/global_par_theta_n));
% assignmentRule: variable = i_s
	global_par_i_s=global_par_g_s*x(3)*(x(1)-global_par_V_K);
% assignmentRule: variable = s_infinity
	global_par_s_infinity=1/(1+exp((global_par_V_s-x(1))/global_par_theta_s));
% assignmentRule: variable = i_K_ATP
	global_par_i_K_ATP=global_par_g_K_ATP*global_par_p*(x(1)-global_par_V_K);
% rateRule: variable = V_membrane
x(1) = x(4);
% rateRule: variable = n
x(2) = x(5);
% rateRule: variable = s
x(3) = x(6);

	xdot=zeros(6,1);
	% rateRule: variable = V_membrane
	xdot(4) = (-(global_par_i_Ca+global_par_i_K+global_par_i_K_ATP+global_par_i_s))/global_par_tau_membrane;
	% rateRule: variable = n
	xdot(5) = global_par_lamda*(global_par_n_infinity-x(2))/global_par_tau_potassium_current_n_gate;
	% rateRule: variable = s
	xdot(6) = (global_par_s_infinity-x(3))/global_par_tau_s;
	
% Species:   id = V_membrane, name = V_membrane, defined in a rule 	xdot(1) = x(1);
	
% Species:   id = n, name = n, defined in a rule 	xdot(2) = x(2);
	
% Species:   id = s, name = s, defined in a rule 	xdot(3) = x(3);
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


