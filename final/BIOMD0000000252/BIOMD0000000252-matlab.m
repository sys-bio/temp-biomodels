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
% Model name = Hunziker2010_p53_StressSpecificResponse
%
% is http://identifiers.org/biomodels.db/MODEL1006280000
% is http://identifiers.org/biomodels.db/BIOMD0000000252
% isDescribedBy http://identifiers.org/pubmed/20624280
%


function main()
%Initial conditions vector
	x0=zeros(8,1);
	x0(5) = 1.0;
	x0(6) = 1.0;
	x0(7) = 1.0;
	x0(8) = 1.0;
	x0(1) = 1.0;
	x0(2) = 1.0;
	x0(3) = 1.0;
	x0(4) = 1.0;


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

% Compartment: id = compartment_1, name = cell, constant
	compartment_compartment_1=1.0;
% Parameter:   id =  S, name = S
	global_par_S=1000.0;
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=0.1;
% Parameter:   id =  k_t, name = k_t
	global_par_k_t=0.03;
% Parameter:   id =  k_tl, name = k_tl
	global_par_k_tl=1.4;
% Parameter:   id =  k_b, name = k_b
	global_par_k_b=7200.0;
% Parameter:   id =  k_f, name = k_f
	global_par_k_f=5000.0;
% Parameter:   id =  beta, name = beta
	global_par_beta=0.6;
% Parameter:   id =  gamma, name = gamma
	global_par_gamma=0.2;
% Parameter:   id =  delta, name = delta
	global_par_delta=11.0;
% rateRule: variable = p
x(1) = x(5);
% rateRule: variable = mm
x(2) = x(6);
% rateRule: variable = m
x(3) = x(7);
% rateRule: variable = pm
x(4) = x(8);

	xdot=zeros(8,1);
	% rateRule: variable = p
	xdot(5) = global_par_S-global_par_k_f*x(1)*x(3)-global_par_alpha*x(1)+(global_par_k_b+global_par_gamma)*x(4);
	% rateRule: variable = mm
	xdot(6) = global_par_k_t*x(1)^2-global_par_beta*x(2);
	% rateRule: variable = m
	xdot(7) = global_par_k_tl*x(2)-global_par_k_f*x(1)*x(3)+(global_par_k_b+global_par_delta)*x(4)-global_par_gamma*x(3);
	% rateRule: variable = pm
	xdot(8) = global_par_k_f*x(1)*x(3)-(global_par_k_b+global_par_delta)*x(4)-global_par_gamma*x(4);
	
% Species:   id = p, name = p, involved in a rule 	xdot(1) = x(1);
	
% Species:   id = mm, name = mm, involved in a rule 	xdot(2) = x(2);
	
% Species:   id = m, name = m, involved in a rule 	xdot(3) = x(3);
	
% Species:   id = pm, name = pm, involved in a rule 	xdot(4) = x(4);
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


