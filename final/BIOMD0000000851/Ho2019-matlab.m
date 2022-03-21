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
% Model name = Ho2019 - Mathematical models of transmission dynamics and vaccine strategies in Hong Kong during the 2017-2018 winter influenza season (Simple)
%
% isDescribedBy http://identifiers.org/pubmed/31128142
% is http://identifiers.org/biomodels.db/MODEL1911120003
% is http://identifiers.org/biomodels.db/BIOMD0000000851
%


function main()
%Initial conditions vector
	x0=zeros(5,1);
	x0(1) = 0.9424;
	x0(2) = 0.0565;
	x0(3) = 0.0565;
	x0(4) = 0.0012;
	x0(5) = 0.0;


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
	global_par_alpha=127.0;
% Parameter:   id =  r, name = r
	global_par_r=0.0155;
% Parameter:   id =  A, name = A
	global_par_A=0.1155;
% Parameter:   id =  beta, name = beta
	global_par_beta=2.7516;
% Parameter:   id =  gamma, name = gamma
	global_par_gamma=2.1272;
% Parameter:   id =  w, name = w
	global_par_w=0.45;
% Parameter:   id =  k, name = k
% Parameter:   id =  T, name = T
	global_par_T=3.29;
% Parameter:   id =  R_0, name = R_0
	global_par_R_0=1.2935;
% Parameter:   id =  R_0_x, name = R_0_x
	global_par_R_0_x=1.2607;
% Parameter:   id =  fraction_S, name = fraction_S
% Parameter:   id =  fraction_V, name = fraction_V
% Parameter:   id =  fraction_I, name = fraction_I
% Parameter:   id =  fraction_R, name = fraction_R
% Parameter:   id =  fraction_total, name = fraction_total
% Parameter:   id =  ModelValue_3, name = Initial for beta
	global_par_ModelValue_3=2.7516;
% Parameter:   id =  ModelValue_5, name = Initial for w
	global_par_ModelValue_5=0.45;
% assignmentRule: variable = k
	global_par_k=global_par_ModelValue_3*(1-global_par_ModelValue_5);
% assignmentRule: variable = fraction_total
	global_par_fraction_total=x(4)+x(5)+x(1)+x(2)+x(3);
% assignmentRule: variable = fraction_V
	global_par_fraction_V=x(2)/global_par_fraction_total;
% assignmentRule: variable = fraction_R
	global_par_fraction_R=x(5)/global_par_fraction_total;
% assignmentRule: variable = fraction_I
	global_par_fraction_I=x(4)/global_par_fraction_total;
% assignmentRule: variable = fraction_S
	global_par_fraction_S=x(1)/global_par_fraction_total;

% Reaction: id = Susceptible_Individual_Transmission, name = Susceptible_Individual_Transmission
	reaction_Susceptible_Individual_Transmission=compartment_compartment*Function_for_Susceptible_Individual_Transmission(global_par_beta, x(4), x(1));

% Reaction: id = Vaccinated_Population_Growth, name = Vaccinated_Population_Growth
	reaction_Vaccinated_Population_Growth=compartment_compartment*Function_for_Vaccinated_Population_Growth(global_par_r, x(3), global_par_A);

% Reaction: id = Vaccinated_Population_Infection, name = Vaccinated_Population_Infection
	reaction_Vaccinated_Population_Infection=compartment_compartment*Function_for_Vaccinated_Population_Infection(global_par_k, x(4), x(2));

% Reaction: id = Infected_Recovery, name = Infected_Recovery
	reaction_Infected_Recovery=compartment_compartment*global_par_gamma*x(4);

	xdot=zeros(5,1);
	
% Species:   id = S, name = S, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*((-1.0 * reaction_Susceptible_Individual_Transmission) + (-1.0 * reaction_Vaccinated_Population_Growth));
	
% Species:   id = V, name = V, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_Vaccinated_Population_Growth) + (-1.0 * reaction_Vaccinated_Population_Infection));
	
% Species:   id = V_e, name = V_e, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_Vaccinated_Population_Growth));
	
% Species:   id = I, name = I, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_Susceptible_Individual_Transmission) + ( 1.0 * reaction_Vaccinated_Population_Infection) + (-1.0 * reaction_Infected_Recovery));
	
% Species:   id = R, name = R, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_Infected_Recovery));
end

function z=Function_for_Susceptible_Individual_Transmission(beta,I,S), z=(beta*I*S);end

function z=Function_for_Vaccinated_Population_Growth(r,V_e,A), z=(r*(1-V_e/A));end

function z=Function_for_Vaccinated_Population_Infection(k,I,V), z=(k*I*V);end

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


