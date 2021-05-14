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
% Model name = Radosavljevic2009_BioterroristAttack_PanicProtection
%
% is http://identifiers.org/biomodels.db/MODEL1203070000
% isDescribedBy http://identifiers.org/pubmed/19423234
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(3) = 0.01;
	x0(4) = 0.01;
	x0(1) = 0.01;
	x0(2) = 0.01;


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

% Compartment: id = compartment, name = compartment, constant
	compartment_compartment=1.0;
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=4.0;
% Parameter:   id =  beta, name = beta
	global_par_beta=3.8;
% Parameter:   id =  gamma, name = gamma
	global_par_gamma=1.0;
% Parameter:   id =  delta, name = delta
	global_par_delta=1.0;
% Parameter:   id =  C, name = whole_population
	global_par_C=10.0;
% rateRule: variable = S
x(1) = x(3);
% rateRule: variable = P
x(2) = x(4);

	xdot=zeros(4,1);
	% rateRule: variable = S
	xdot(3) = (global_par_alpha*(1-x(1)/global_par_C)-global_par_beta*x(2))*x(1);
	% rateRule: variable = P
	xdot(4) = (-global_par_gamma+global_par_delta*x(1))*x(2);
	
% Species:   id = S, name = panic_intensity, defined in a rule 	xdot(1) = x(1);
	
% Species:   id = P, name = protection+prevention_intensity, defined in a rule 	xdot(2) = x(2);
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


