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
% Model name = Wodarz2003 - Cytotoxic T lymphocyte cross-priming
%
% is http://identifiers.org/biomodels.db/MODEL1006230094
% is http://identifiers.org/biomodels.db/BIOMD0000000685
% isDescribedBy http://identifiers.org/pubmed/12706524
% is http://identifiers.org/biomodels.db/MODEL1006230094
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 0.1;
	x0(2) = 2.0;
	x0(3) = 2.0;
	x0(4) = 0.3;


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

% Compartment: id = COMpartment, name = COMpartment, constant
	compartment_COMpartment=1.0;
% Parameter:   id =  T, name = T
% Parameter:   id =  k, name = k
	global_par_k=10.0;
% Parameter:   id =  r, name = r
	global_par_r=1.0;
% Parameter:   id =  d, name = d
	global_par_d=0.1;
% Parameter:   id =  gamma, name = gamma
	global_par_gamma=1.0;
% Parameter:   id =  A, name = A
% Parameter:   id =  lambda, name = lambda
	global_par_lambda=1.0;
% Parameter:   id =  delta_1, name = delta_1
	global_par_delta_1=0.1;
% Parameter:   id =  A_star, name = A_star
% Parameter:   id =  delta_2, name = delta_2
	global_par_delta_2=1.5;
% Parameter:   id =  C, name = C
% Parameter:   id =  eta, name = eta
	global_par_eta=2.0;
% Parameter:   id =  epsilon, name = epsilon
	global_par_epsilon=1.0;
% Parameter:   id =  q, name = q
	global_par_q=0.5;
% Parameter:   id =  mu, name = mu
	global_par_mu=0.1;
% Parameter:   id =  R, name = R
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=0.5;
% assignmentRule: variable = R
	global_par_R=global_par_C*global_par_A_star/(global_par_q*global_par_T);
% rateRule: variable = T
global_par_T = x(1);
% rateRule: variable = A
global_par_A = x(2);
% rateRule: variable = A_star
global_par_A_star = x(3);
% rateRule: variable = C
global_par_C = x(4);

	xdot=zeros(4,1);
	% rateRule: variable = T
	xdot(1) = global_par_r*global_par_T*(1-global_par_T/global_par_k)-global_par_d*global_par_T-global_par_gamma*global_par_T*global_par_C;
	% rateRule: variable = A
	xdot(2) = global_par_lambda-global_par_delta_1*global_par_A-global_par_alpha*global_par_A*global_par_T;
	% rateRule: variable = A_star
	xdot(3) = global_par_alpha*global_par_A*global_par_T-global_par_delta_2*global_par_A_star;
	% rateRule: variable = C
	xdot(4) = global_par_eta*global_par_A_star*global_par_C/(global_par_epsilon*global_par_C+1)-global_par_q*global_par_T*global_par_C-global_par_mu*global_par_C;
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


