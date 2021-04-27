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
% Model name = Greene2019 - Differentiate Spontaneous and Induced Evolution to Drug Resistance During Cancer Treatment
%
% is http://identifiers.org/biomodels.db/MODEL1909260002
% is http://identifiers.org/biomodels.db/BIOMD0000000825
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 0.0;
	x0(2) = 0.01;
	x0(3) = 0.01;


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
% Parameter:   id =  S_0, name = S_0
	global_par_S_0=0.01;
% Parameter:   id =  R_0, name = R_0
	global_par_R_0=0.0;
% Parameter:   id =  V_d, name = V_d
	global_par_V_d=0.1;
% Parameter:   id =  V_c, name = V_c
	global_par_V_c=0.9;
% Parameter:   id =  epsilon, name = epsilon
	global_par_epsilon=1.0E-6;
% Parameter:   id =  d, name = d
	global_par_d=1.0;
% Parameter:   id =  p_r, name = p_r
	global_par_p_r=0.2;
% Parameter:   id =  u_on, name = u_on
	global_par_u_on=1.5;
% Parameter:   id =  delta_ton, name = delta_ton
	global_par_delta_ton=1.0;
% Parameter:   id =  delta_toff, name = delta_toff
	global_par_delta_toff=3.0;
% Parameter:   id =  u, name = u
	global_par_u=0.0;
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=0.01;
% assignmentRule: variable = Tumor_Volume_V
	x(3)=x(1)+x(2);

% Reaction: id = Transition_to_resistance, name = Transition to resistance
	reaction_Transition_to_resistance=compartment_compartment*Function_for_Transition_to_resistance(global_par_epsilon, global_par_alpha, global_par_u, x(2));

% Reaction: id = growth_of_sensitive_tumor, name = growth of sensitive tumor
	reaction_growth_of_sensitive_tumor=compartment_compartment*Function_for_growth_of_sensitive_tumor(x(2), x(1));

% Reaction: id = growth_of_resistant_tumor, name = growth of resistant tumor
	reaction_growth_of_resistant_tumor=compartment_compartment*Function_for_growth_of_resistant_tumor(global_par_p_r, x(2), x(1));

% Reaction: id = drug_induced_death, name = drug-induced death
	reaction_drug_induced_death=compartment_compartment*Function_for_drug_induced_death(global_par_d, global_par_u, x(2));

%Event: id=treatment
	event_treatment=(x(3) > global_par_V_d) && (global_par_u == 0);

	if(event_treatment) 
		global_par_u=global_par_u+global_par_u_on;
	end

	xdot=zeros(3,1);
	
% Species:   id = Resistant_tumor_R, name = Resistant tumor R, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_Transition_to_resistance) + ( 1.0 * reaction_growth_of_resistant_tumor));
	
% Species:   id = Sensitive_tumor_S, name = Sensitive tumor S, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*((-1.0 * reaction_Transition_to_resistance) + ( 1.0 * reaction_growth_of_sensitive_tumor) + (-1.0 * reaction_drug_induced_death));
	
% Species:   id = Tumor_Volume_V, name = Tumor Volume V, involved in a rule 	xdot(3) = x(3);
end

function z=Function_for_Transition_to_resistance(epsilon,alpha,u,S), z=((epsilon+alpha*u)*S);end

function z=Function_for_growth_of_resistant_tumor(p_r,S,R), z=(p_r*(1-(S+R))*R);end

function z=Function_for_drug_induced_death(d,u,S), z=(d*u*S);end

function z=Function_for_growth_of_sensitive_tumor(S,R), z=((1-(S+R))*S);end

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


