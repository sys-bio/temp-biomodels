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
% Model name = Sneppen2009 - Modeling proteasome dynamics in Parkinson's disease
%
% is http://identifiers.org/biomodels.db/MODEL1409100000
% is http://identifiers.org/biomodels.db/BIOMD0000000548
% isDescribedBy http://identifiers.org/pubmed/19411740
%


function main()
%Initial conditions vector
	x0=zeros(6,1);
	x0(4) = 135.0;
	x0(5) = 0.0;
	x0(6) = 18.0;
	x0(1) = 135.0;
	x0(2) = 0.0;
	x0(3) = 18.0;


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

% Compartment: id = Brain, name = Brain , constant
	compartment_Brain=1.0;
% Parameter:   id =  m, name = m
	global_par_m=25.0;
% Parameter:   id =  gamma, name = gamma
	global_par_gamma=1.0;
% Parameter:   id =  nu, name = nu
	global_par_nu=1.0;
% Parameter:   id =  sigma, name = sigma
	global_par_sigma=1.0;
% rateRule: variable = F
x(1) = x(4);
% rateRule: variable = P
x(2) = x(5);
% rateRule: variable = C
x(3) = x(6);

	xdot=zeros(6,1);
	% rateRule: variable = F
	xdot(4) = global_par_m/(1+x(2))-global_par_gamma*x(1)*x(2);
	% rateRule: variable = P
	xdot(5) = global_par_sigma-x(2)-global_par_gamma*x(1)*x(2)+global_par_nu*x(3);
	% rateRule: variable = C
	xdot(6) = global_par_gamma*x(1)*x(2)-global_par_nu*x(3);
	
% Species:   id = F, name = F, involved in a rule 	xdot(1) = x(1);
	
% Species:   id = P, name = P, involved in a rule 	xdot(2) = x(2);
	
% Species:   id = C, name = C, involved in a rule 	xdot(3) = x(3);
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


