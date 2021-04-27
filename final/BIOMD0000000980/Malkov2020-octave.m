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
% Model name = Malkov2020 - SEIRS model of COVID-19 transmission with time-varying R values and reinfection
%
% isDescribedBy http://identifiers.org/pubmed/32982082
% is http://identifiers.org/biomodels.db/MODEL2012070001
% is http://identifiers.org/biomodels.db/BIOMD0000000980
%


function main()
%Initial conditions vector
	x0=zeros(5,1);
	x0(1) = 3.1528309004E8;
	x0(2) = 1.4439817E7;
	x0(3) = 330052.96;
	x0(4) = 0.0;
	x0(5) = 3.3005296E8;


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

% Compartment: id = USA, name = USA, constant
	compartment_USA=1.0;
% Parameter:   id =  beta, name = beta
% Parameter:   id =  omega, name = omega
	global_par_omega=0.01667;
% Parameter:   id =  sigma, name = sigma
	global_par_sigma=0.19231;
% Parameter:   id =  gamma, name = gamma
	global_par_gamma=0.05556;
% Parameter:   id =  R_fixed, name = R_fixed
% Parameter:   id =  Fraction_infected, name = Fraction_infected
% Parameter:   id =  R_1, name = R_1
% Parameter:   id =  R_2, name = R_2
% Parameter:   id =  R_1_0, name = R_1_0
	global_par_R_1_0=3.0;
% Parameter:   id =  R_2_0, name = R_2_0
	global_par_R_2_0=3.0;
% Parameter:   id =  R_1_f, name = R_1_f
	global_par_R_1_f=1.6;
% Parameter:   id =  R_2_f, name = R_2_f
	global_par_R_2_f=1.6;
% Parameter:   id =  eta, name = eta
	global_par_eta=0.0;
% assignmentRule: variable = Fraction_infected
	global_par_Fraction_infected=x(3)/x(5);
% assignmentRule: variable = R_1
	global_par_R_1=exp((-global_par_eta)*time)*global_par_R_1_0+(1-exp((-global_par_eta)*time))*global_par_R_1_f;
% assignmentRule: variable = R_2
	global_par_R_2=exp((-global_par_eta)*time)*global_par_R_2_0+(1-exp((-global_par_eta)*time))*global_par_R_2_f;
% assignmentRule: variable = R_fixed
	global_par_R_fixed=(global_par_R_1+global_par_R_2)/2;
% assignmentRule: variable = beta
	global_par_beta=global_par_gamma*global_par_R_fixed;

% Reaction: id = Susceptible_to_Exposed, name = Susceptible_to_Exposed
	reaction_Susceptible_to_Exposed=compartment_USA*Rate_Law_for_reaction(global_par_beta, x(1), x(5), x(3));

% Reaction: id = Exposed_to_Infected, name = Exposed_to_Infected
	reaction_Exposed_to_Infected=compartment_USA*global_par_sigma*x(2);

% Reaction: id = Infected_to_Recovered, name = Infected_to_Recovered
	reaction_Infected_to_Recovered=compartment_USA*global_par_gamma*x(3);

% Reaction: id = Recovered_to_Susceptible__Reinfection, name = Recovered_to_Susceptible_(Reinfection)
	reaction_Recovered_to_Susceptible__Reinfection=compartment_USA*global_par_omega*x(4);

	xdot=zeros(5,1);
	
% Species:   id = Susceptible, name = Susceptible, affected by kineticLaw
	xdot(1) = (1/(compartment_USA))*((-1.0 * reaction_Susceptible_to_Exposed) + ( 1.0 * reaction_Recovered_to_Susceptible__Reinfection));
	
% Species:   id = Exposed, name = Exposed, affected by kineticLaw
	xdot(2) = (1/(compartment_USA))*(( 1.0 * reaction_Susceptible_to_Exposed) + (-1.0 * reaction_Exposed_to_Infected));
	
% Species:   id = Infected, name = Infected, affected by kineticLaw
	xdot(3) = (1/(compartment_USA))*(( 1.0 * reaction_Exposed_to_Infected) + (-1.0 * reaction_Infected_to_Recovered));
	
% Species:   id = Recovered, name = Recovered, affected by kineticLaw
	xdot(4) = (1/(compartment_USA))*(( 1.0 * reaction_Infected_to_Recovered) + (-1.0 * reaction_Recovered_to_Susceptible__Reinfection));
	
% Species:   id = Total_population, name = Total_population
% Warning species is not changed by either rules or reactions
	xdot(5) = ;
end

function z=Rate_Law_for_reaction(beta,S,N,I), z=(beta*S*I/N);end

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


