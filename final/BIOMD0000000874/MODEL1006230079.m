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
% Model name = Perelson1993_HIVinfection_CD4Tcells_ModelA
%
% is http://identifiers.org/biomodels.db/MODEL1006230079
% isDescribedBy http://identifiers.org/pubmed/8096155
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 1000.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.001;


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
% Parameter:   id =  s, name = s
	global_par_s=10.0;
% Parameter:   id =  r, name = r
	global_par_r=0.03;
% Parameter:   id =  T_max, name = T_max
	global_par_T_max=1500.0;
% Parameter:   id =  mu_T, name = mu_T
	global_par_mu_T=0.02;
% Parameter:   id =  T, name = T
% Parameter:   id =  k_1, name = k_1
	global_par_k_1=2.4E-5;
% Parameter:   id =  T_1, name = T_1
% Parameter:   id =  k_2, name = k_2
	global_par_k_2=0.003;
% Parameter:   id =  mu_b, name = mu_b
	global_par_mu_b=0.24;
% Parameter:   id =  T_2, name = T_2
% Parameter:   id =  mu_V, name = mu_V
	global_par_mu_V=2.4;
% Parameter:   id =  N, name = N
	global_par_N=1400.0;
% Parameter:   id =  V, name = V
% Parameter:   id =  T_tot, name = T_tot
% rateRule: variable = T
global_par_T = x(1);
% rateRule: variable = T_1
global_par_T_1 = x(2);
% rateRule: variable = T_2
global_par_T_2 = x(3);
% rateRule: variable = V
global_par_V = x(4);
% assignmentRule: variable = T_tot
	global_par_T_tot=global_par_T+global_par_T_1+global_par_T_2;

	xdot=zeros(4,1);
	% rateRule: variable = T
	xdot(1) = global_par_s-global_par_mu_T*global_par_T+global_par_r*global_par_T*(1-(global_par_T+global_par_T_1+global_par_T_2)/global_par_T_max)-global_par_k_1*global_par_V*global_par_T;
	% rateRule: variable = T_1
	xdot(2) = global_par_k_1*global_par_V*global_par_T-global_par_mu_T*global_par_T_1-global_par_k_2*global_par_T_1;
	% rateRule: variable = T_2
	xdot(3) = global_par_k_2*global_par_T_1-global_par_mu_b*global_par_T_2;
	% rateRule: variable = V
	xdot(4) = global_par_N*global_par_mu_b*global_par_T_2-global_par_k_1*global_par_V*global_par_T-global_par_mu_V*global_par_V;
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


