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
% Model name = Wodarz2007 - Basic Model of Cytomegalovirus Infection
%
% is http://identifiers.org/biomodels.db/MODEL1006230086
% isDescribedBy http://identifiers.org/pubmed/17251133
% is http://identifiers.org/biomodels.db/BIOMD0000000686
%


function main()
%Initial conditions vector
	x0=zeros(5,1);
	x0(1) = 1.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 1.0;


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

% Compartment: id = COMpartment, name = Mouse, constant
	compartment_COMpartment=1.0;
% Parameter:   id =  x, name = x
% Parameter:   id =  y0, name = y0
% Parameter:   id =  y1, name = y1
% Parameter:   id =  L, name = L
% Parameter:   id =  v, name = v
% Parameter:   id =  R0, name = R0
% Parameter:   id =  a0, name = a0
	global_par_a0=0.1;
% Parameter:   id =  a1, name = a1
	global_par_a1=0.2;
% Parameter:   id =  k, name = k
	global_par_k=1.0;
% Parameter:   id =  u, name = u
	global_par_u=1.0;
% Parameter:   id =  lambda, name = lambda
	global_par_lambda=10.0;
% Parameter:   id =  d, name = d
	global_par_d=0.1;
% Parameter:   id =  beta, name = beta
	global_par_beta=0.1;
% Parameter:   id =  gamma, name = gamma
	global_par_gamma=0.5;
% Parameter:   id =  phi, name = phi
	global_par_phi=0.1;
% Parameter:   id =  eta, name = eta
	global_par_eta=0.01;
% assignmentRule: variable = R0
	global_par_R0=global_par_lambda*global_par_eta/(global_par_d*global_par_a1*(global_par_a0+global_par_eta))*(global_par_beta+global_par_gamma*global_par_phi/(global_par_phi+global_par_d));
% rateRule: variable = x
global_par_x = x(1);
% rateRule: variable = y0
global_par_y0 = x(2);
% rateRule: variable = y1
global_par_y1 = x(3);
% rateRule: variable = L
global_par_L = x(4);
% rateRule: variable = v
global_par_v = x(5);

	xdot=zeros(5,1);
	% rateRule: variable = x
	xdot(1) = global_par_lambda-(global_par_d*global_par_x+global_par_beta*global_par_x*global_par_v+global_par_gamma*global_par_x*global_par_v);
	% rateRule: variable = y0
	xdot(2) = (global_par_beta*global_par_x*global_par_v-(global_par_a0*global_par_y0+global_par_eta*global_par_y0))+global_par_phi*global_par_L;
	% rateRule: variable = y1
	xdot(3) = global_par_eta*global_par_y0-global_par_a1*global_par_y1;
	% rateRule: variable = L
	xdot(4) = global_par_gamma*global_par_x*global_par_v-(global_par_phi*global_par_L+global_par_d*global_par_L);
	% rateRule: variable = v
	xdot(5) = global_par_k*global_par_y1-global_par_u*global_par_v;
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


