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
% Model name = hodgkin-huxley squid-axon 1952
%
% is http://identifiers.org/biomodels.db/MODEL6617668482
% is http://identifiers.org/biomodels.db/BIOMD0000000020
% isDescribedBy http://identifiers.org/pubmed/12991237
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 0.0;
	x0(2) = 0.052932;
	x0(3) = 0.59612;
	x0(4) = 0.31768;


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

% Compartment: id = unit_compartment, name = unit_compartment, constant
	compartment_unit_compartment=1.0;
% Parameter:   id =  V, name = V
% Parameter:   id =  V_neg, name = V_neg
% Parameter:   id =  E, name = E
% Parameter:   id =  I, name = I
	global_par_I=0.0;
% Parameter:   id =  i_Na, name = i_Na
% Parameter:   id =  i_K, name = i_K
% Parameter:   id =  i_L, name = i_L
% Parameter:   id =  m, name = m
% Parameter:   id =  h, name = h
% Parameter:   id =  n, name = n
% Parameter:   id =  E_R, name = E_R
	global_par_E_R=-75.0;
% Parameter:   id =  Cm, name = Cm
	global_par_Cm=1.0;
% Parameter:   id =  g_Na, name = g_Na
	global_par_g_Na=120.0;
% Parameter:   id =  g_K, name = g_K
	global_par_g_K=36.0;
% Parameter:   id =  g_L, name = g_L
	global_par_g_L=0.3;
% Parameter:   id =  E_Na, name = E_Na
	global_par_E_Na=-190.0;
% Parameter:   id =  E_K, name = E_K
	global_par_E_K=-63.0;
% Parameter:   id =  E_L, name = E_L
	global_par_E_L=-85.613;
% Parameter:   id =  V_Na, name = V_Na
% Parameter:   id =  V_K, name = V_K
% Parameter:   id =  V_L, name = V_L
% Parameter:   id =  alpha_m, name = alpha_m
% Parameter:   id =  beta_m, name = beta_m
% Parameter:   id =  alpha_h, name = auxiliary alpha_h
% Parameter:   id =  beta_h, name = beta_h
% Parameter:   id =  alpha_n, name = alpha_n
% Parameter:   id =  beta_n, name = beta_n
% assignmentRule: variable = V_neg
	global_par_V_neg=-global_par_V;
% assignmentRule: variable = E
	global_par_E=global_par_V+global_par_E_R;
% assignmentRule: variable = V_L
	global_par_V_L=global_par_E_L-global_par_E_R;
% assignmentRule: variable = beta_n
	global_par_beta_n=0.125*exp(global_par_V/80);
% assignmentRule: variable = alpha_h
	global_par_alpha_h=0.07*exp(global_par_V/20);
% assignmentRule: variable = V_Na
	global_par_V_Na=global_par_E_Na-global_par_E_R;
% assignmentRule: variable = V_K
	global_par_V_K=global_par_E_K-global_par_E_R;
% assignmentRule: variable = i_K
	global_par_i_K=global_par_g_K*global_par_n^4*(global_par_V-global_par_V_K);
% assignmentRule: variable = i_Na
	global_par_i_Na=global_par_g_Na*global_par_m^3*global_par_h*(global_par_V-global_par_V_Na);
% assignmentRule: variable = i_L
	global_par_i_L=global_par_g_L*(global_par_V-global_par_V_L);
% assignmentRule: variable = beta_m
	global_par_beta_m=4*exp(global_par_V/18);
% assignmentRule: variable = alpha_n
	global_par_alpha_n=0.01*(global_par_V+10)/(exp((global_par_V+10)/10)-1);
% assignmentRule: variable = alpha_m
	global_par_alpha_m=0.1*(global_par_V+25)/(exp((global_par_V+25)/10)-1);
% assignmentRule: variable = beta_h
	global_par_beta_h=1/(exp((global_par_V+30)/10)+1);
% rateRule: variable = V
global_par_V = x(1);
% rateRule: variable = m
global_par_m = x(2);
% rateRule: variable = h
global_par_h = x(3);
% rateRule: variable = n
global_par_n = x(4);

	xdot=zeros(4,1);
	% rateRule: variable = V
	xdot(1) = (global_par_I-(global_par_i_Na+global_par_i_K+global_par_i_L))/global_par_Cm;
	% rateRule: variable = m
	xdot(2) = global_par_alpha_m*(1-global_par_m)-global_par_beta_m*global_par_m;
	% rateRule: variable = h
	xdot(3) = global_par_alpha_h*(1-global_par_h)-global_par_beta_h*global_par_h;
	% rateRule: variable = n
	xdot(4) = global_par_alpha_n*(1-global_par_n)-global_par_beta_n*global_par_n;
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


