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
% Model name = Munz2009 - Zombie SIZRC
%
% isDescribedBy http://identifiers.org/isbn/ISBN:1607413477
% is http://identifiers.org/biomodels.db/MODEL1008060001
% is http://identifiers.org/biomodels.db/BIOMD0000000882
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 500.0;
	x0(2) = 1.0;
	x0(3) = 0.0;


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
	global_par_alpha=0.005;
% Parameter:   id =  beta, name = beta
	global_par_beta=0.0095;
% Parameter:   id =  delta, name = delta
	global_par_delta=1.0E-4;
% Parameter:   id =  zeta, name = zeta
	global_par_zeta=1.0E-4;
% Parameter:   id =  p, name = p
	global_par_p=0.05;

% Reaction: id = Zombification, name = Zombification
	reaction_Zombification=compartment_compartment*Function_for_Zombification(global_par_beta, x(1), x(2), global_par_zeta, x(3));

% Reaction: id = Susceptible_to_Zombie_or_death, name = Susceptible to Zombie or death
	reaction_Susceptible_to_Zombie_or_death=compartment_compartment*Function_for_Susceptible_to_Zombie_or_death(global_par_beta, x(1), x(2), global_par_delta);

% Reaction: id = Removal_of_zombie_or_susceptible, name = Removal of zombie or susceptible
	reaction_Removal_of_zombie_or_susceptible=compartment_compartment*Function_for_Removal_of_zombie_or_susceptible(global_par_alpha, x(1), x(2), global_par_delta);

% Reaction: id = Resurrection_to_Zombie, name = Resurrection to Zombie
	reaction_Resurrection_to_Zombie=compartment_compartment*Function_for_resurrection_to_Zombie(global_par_zeta, x(3));

% Reaction: id = Death_from_Zombie, name = Death from Zombie
	reaction_Death_from_Zombie=compartment_compartment*Function_for_Death_from_Zombie(global_par_alpha, x(1), x(2));

	xdot=zeros(3,1);
	
% Species:   id = Susceptible, name = Susceptible, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_Birth) + (-1.0 * reaction_Susceptible_to_Zombie_or_death));
	
% Species:   id = Zombie, name = Zombie, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_Zombification) + (-1.0 * reaction_Death_from_Zombie));
	
% Species:   id = Removal, name = Removal, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_Removal_of_zombie_or_susceptible) + (-1.0 * reaction_Resurrection_to_Zombie));
end

function z=Function_for_Removal_of_zombie_or_susceptible(beta,Susceptible,Zombie,delta), z=(beta*Susceptible*Zombie+delta*Susceptible);end

function z=Function_for_resurrection_to_Zombie(zeta,Removal), z=(zeta*Removal);end

function z=Function_for_Susceptible_to_Zombie_or_death(beta,Susceptible,Zombie,delta), z=(beta*Susceptible*Zombie+delta*Susceptible);end

function z=Function_for_Death_from_Zombie(alpha,Susceptible,Zombie), z=(alpha*Susceptible*Zombie);end

function z=Function_for_Zombification(beta,Susceptible,Zombie,zeta,Removal), z=(beta*Susceptible*Zombie+zeta*Removal);end

function z=Function_for_Birth(p), z=(p);end

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


