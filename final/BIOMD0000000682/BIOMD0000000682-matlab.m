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
% Model name = Wierschem2004 - Electrical bursting activity in Pancreatic Islets
%
% is http://identifiers.org/biomodels.db/MODEL1006230006
% is http://identifiers.org/biomodels.db/BIOMD0000000682
% isDescribedBy http://identifiers.org/pubmed/15178199
% isDerivedFrom http://identifiers.org/pubmed/6305437
% isDerivedFrom http://identifiers.org/pubmed/4263005
% is http://identifiers.org/biomodels.db/MODEL1006230006
%


function main()
%Initial conditions vector
	x0=zeros(5,1);
	x0(1) = 0.085817;
	x0(2) = 2.1047;
	x0(3) = -67.018;
	x0(4) = 1.1E-4;
	x0(5) = 0.15666;


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

% Compartment: id = COMpartment, name = Pancreatic Islet Cell, constant
	compartment_COMpartment=1.0;
% Parameter:   id =  tau_c, name = tau_c
	global_par_tau_c=1200.0;
% Parameter:   id =  eta, name = eta
	global_par_eta=185.0;
% Parameter:   id =  v, name = v
	global_par_v=10.0;
% Parameter:   id =  k, name = k
	global_par_k=20.0;
% Parameter:   id =  phi, name = phi
% Parameter:   id =  ADP, name = ADP
% Parameter:   id =  ATP, name = ATP
% Parameter:   id =  C_m, name = C_m
	global_par_C_m=5300.0;
% Parameter:   id =  V_membrane, name = V
% Parameter:   id =  g_Ca_, name = g_Ca_
	global_par_g_Ca_=1200.0;
% Parameter:   id =  V_Ca, name = V_Ca
	global_par_V_Ca=25.0;
% Parameter:   id =  v_m, name = v_m
	global_par_v_m=-20.0;
% Parameter:   id =  s_m, name = s_m
	global_par_s_m=12.0;
% Parameter:   id =  m_infinity, name = m_infinity
% Parameter:   id =  I_Ca, name = I_Ca
% Parameter:   id =  g_K_, name = g_K_
	global_par_g_K_=3000.0;
% Parameter:   id =  V_K, name = V_K
	global_par_V_K=-75.0;
% Parameter:   id =  I_K, name = I_K
% Parameter:   id =  g_KCa_, name = g_KCa_
	global_par_g_KCa_=300.0;
% Parameter:   id =  k_D, name = k_D
	global_par_k_D=0.3;
% Parameter:   id =  omega, name = omega
% Parameter:   id =  I_KCa, name = I_KCa
% Parameter:   id =  g_KATP_, name = g_KATP_
	global_par_g_KATP_=350.0;
% Parameter:   id =  I_KATP, name = I_KATP
% Parameter:   id =  tau_n, name = tau_n
	global_par_tau_n=16.0;
% Parameter:   id =  v_n, name = v_n
	global_par_v_n=-16.0;
% Parameter:   id =  s_n, name = s_n
	global_par_s_n=5.6;
% Parameter:   id =  n_infinity, name = n_infinity
% Parameter:   id =  n, name = n
% Parameter:   id =  c, name = c
% Parameter:   id =  f, name = f
	global_par_f=0.001;
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=2.25E-6;
% Parameter:   id =  k_c, name = k_c
	global_par_k_c=0.1;
% Parameter:   id =  J_mem, name = J_mem
% assignmentRule: variable = I_KATP
	global_par_I_KATP=(global_par_V_membrane-global_par_V_K)*global_par_g_KATP_/global_par_ATP;
% assignmentRule: variable = n_infinity
	global_par_n_infinity=1/(1+exp((global_par_v_n-global_par_V_membrane)/global_par_s_n));
% assignmentRule: variable = omega
	global_par_omega=1/(1+global_par_k_D/global_par_c);
% assignmentRule: variable = phi
	global_par_phi=global_par_ATP*(1+global_par_k*global_par_ADP)^2;
% assignmentRule: variable = I_K
	global_par_I_K=global_par_g_K_*global_par_n*(global_par_V_membrane-global_par_V_K);
% assignmentRule: variable = I_KCa
	global_par_I_KCa=global_par_g_KCa_*global_par_omega*(global_par_V_membrane-global_par_V_K);
% assignmentRule: variable = m_infinity
	global_par_m_infinity=1/(1+exp((global_par_v_m-global_par_V_membrane)/global_par_s_m));
% assignmentRule: variable = I_Ca
	global_par_I_Ca=global_par_g_Ca_*global_par_m_infinity*(global_par_V_membrane-global_par_V_Ca);
% assignmentRule: variable = J_mem
	global_par_J_mem=(-global_par_f)*(global_par_alpha*global_par_I_Ca+global_par_k_c*global_par_c);
% rateRule: variable = ADP
global_par_ADP = x(1);
% rateRule: variable = ATP
global_par_ATP = x(2);
% rateRule: variable = V_membrane
global_par_V_membrane = x(3);
% rateRule: variable = n
global_par_n = x(4);
% rateRule: variable = c
global_par_c = x(5);

	xdot=zeros(5,1);
	% rateRule: variable = ADP
	xdot(1) = (global_par_phi-global_par_eta*global_par_ADP)/(1000*global_par_tau_c);
	% rateRule: variable = ATP
	xdot(2) = (global_par_v-global_par_phi)/(1000*global_par_tau_c);
	% rateRule: variable = V_membrane
	xdot(3) = (-(global_par_I_Ca+global_par_I_K+global_par_I_KCa+global_par_I_KATP))/global_par_C_m;
	% rateRule: variable = n
	xdot(4) = (global_par_n_infinity-global_par_n)/global_par_tau_n;
	% rateRule: variable = c
	xdot(5) = global_par_J_mem;
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


