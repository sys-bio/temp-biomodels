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
% Model name = Munz2009 - Zombie SIZRC
%
% is http://identifiers.org/biomodels.db/MODEL1008060001
% isDescribedBy http://identifiers.org/isbn/ISBN:1607413477
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 0;
	x0(2) = 0.0;
	x0(3) = 1.0;
	x0(4) = 0.0;


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

% Compartment: id = env, name = environment, constant
	compartment_env=1.0;
% Parameter:   id =  N, name = starting Population
	global_par_N=500.0;
% Parameter:   id =  p, name = p
% Parameter:   id =  delta, name = delta
	global_par_delta=1.0E-4;
% Parameter:   id =  beta, name = beta
	global_par_beta=0.0095;
% Parameter:   id =  rho, name = rho
	global_par_rho=0.05;
% Parameter:   id =  zeta, name = zeta
	global_par_zeta=1.0E-4;
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=0.005;
% Parameter:   id =  c, name = c
	global_par_c=0.5;
% assignmentRule: variable = p
	global_par_p=x(1)*global_par_delta;

% Reaction: id = birth
	reaction_birth=global_par_p;

% Reaction: id = death_healthy
	reaction_death_healthy=global_par_delta*x(1);

% Reaction: id = infection
	reaction_infection=global_par_beta*x(1)*x(3);

% Reaction: id = natural_death_infected
	reaction_natural_death_infected=global_par_delta*x(2);

% Reaction: id = zombification_infected
	reaction_zombification_infected=global_par_rho*x(2);

% Reaction: id = cure
	reaction_cure=global_par_c*x(3);

% Reaction: id = resurrection
	reaction_resurrection=global_par_zeta*x(4);

% Reaction: id = destruction
	reaction_destruction=global_par_alpha*x(1)*x(3);

	xdot=zeros(4,1);
	
% Species:   id = S, name = Susceptible, affected by kineticLaw
	xdot(1) = ( 1.0 * reaction_birth) + (-1.0 * reaction_death_healthy) + (-1.0 * reaction_infection) + ( 1.0 * reaction_cure);
	
% Species:   id = I, name = Infected, affected by kineticLaw
	xdot(2) = ( 1.0 * reaction_infection) + (-1.0 * reaction_natural_death_infected) + (-1.0 * reaction_zombification_infected);
	
% Species:   id = Z, name = Zombie, affected by kineticLaw
	xdot(3) = ( 1.0 * reaction_zombification_infected) + (-1.0 * reaction_cure) + ( 1.0 * reaction_resurrection) + (-1.0 * reaction_destruction);
	
% Species:   id = R, name = Removed, affected by kineticLaw
	xdot(4) = ( 1.0 * reaction_death_healthy) + ( 1.0 * reaction_natural_death_infected) + (-1.0 * reaction_resurrection) + ( 1.0 * reaction_destruction);
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


