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
% Model name = Miao2010 - Innate and adaptive immune responses to primary Influenza A Virus infection
%
% is http://identifiers.org/biomodels.db/MODEL1405150000
% is http://identifiers.org/biomodels.db/BIOMD0000000546
% isDescribedBy http://identifiers.org/pubmed/20410284
% isDerivedFrom http://identifiers.org/biomodels.db/MODEL1406230000
%


function main()
%Initial conditions vector
	x0=zeros(7,1);
	x0(1) = 580000.0;
	x0(2) = 0.0;
	x0(3) = 1473.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;


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

% Compartment: id = default, name = default, constant
	compartment_default=1.0;
% Parameter:   id =  rho_E, name = rho_E
	global_par_rho_E=6.2E-8;
% Parameter:   id =  beta_a, name = beta_a
	global_par_beta_a=2.4E-6;
% Parameter:   id =  delta_Es, name = delta_Es
	global_par_delta_Es=0.6;
% Parameter:   id =  pi_a, name = pi_a
	global_par_pi_a=100.0;
% Parameter:   id =  c_V, name = c_V
	global_par_c_V=4.2;

% Reaction: id = re1
	reaction_re1=global_par_beta_a*x(1)*x(3);

% Reaction: id = re3
	reaction_re3=global_par_rho_E*x(1);

% Reaction: id = re5
	reaction_re5=global_par_delta_Es*x(2);

% Reaction: id = re6
	reaction_re6=global_par_c_V*x(3);

% Reaction: id = re7
	reaction_re7=global_par_pi_a*x(2);

	xdot=zeros(7,1);
	
% Species:   id = s1, name = Ep, affected by kineticLaw
	xdot(1) = (-1.0 * reaction_re1) + ( 1.0 * reaction_re3);
	
% Species:   id = s2, name = Eps, affected by kineticLaw
	xdot(2) = ( 1.0 * reaction_re1) + (-1.0 * reaction_re5);
	
% Species:   id = s3, name = V, affected by kineticLaw
	xdot(3) = (-1.0 * reaction_re6) + ( 1.0 * reaction_re7);
	
% Species:   id = s4, name = s4, affected by kineticLaw
	xdot(4) = (1/(compartment_default))*((-1.0 * reaction_re3));
	
% Species:   id = s5, name = s5, affected by kineticLaw
	xdot(5) = (1/(compartment_default))*(( 1.0 * reaction_re5));
	
% Species:   id = s6, name = s6, affected by kineticLaw
	xdot(6) = (1/(compartment_default))*(( 1.0 * reaction_re6));
	
% Species:   id = s7, name = s7, affected by kineticLaw
	xdot(7) = (1/(compartment_default))*((-1.0 * reaction_re7));
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


