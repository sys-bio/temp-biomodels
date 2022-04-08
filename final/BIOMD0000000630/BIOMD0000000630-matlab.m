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
% Model name = Venkatraman2011 - PLS-UPA behaviour in the presence of substrate competition_1_1_1_1
%
% is http://identifiers.org/biomodels.db/MODEL1303130001
% is http://identifiers.org/biomodels.db/BIOMD0000000630
% isDescribedBy http://identifiers.org/pubmed/22004735
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 0.01;
	x0(2) = 0.0;
	x0(3) = 0.002;
	x0(4) = 0.0;


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

% Compartment: id = compartment_1, name = extra cellular matrix, constant
	compartment_compartment_1=1.0;
% Parameter:   id =  parameter_1, name = degradation constant 1
	global_par_parameter_1=0.084;
% Parameter:   id =  parameter_2, name = degradation constant 2
	global_par_parameter_2=0.032;
% Parameter:   id =  parameter_13, name = hill cooperativity
	global_par_parameter_13=2.0;

% Reaction: id = reaction_1, name = cleavage of plasminogen	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_1_k1=0.035;

	reaction_reaction_1=compartment_compartment_1*reaction_reaction_1_k1*x(3)*x(1);

% Reaction: id = reaction_2, name = activation of urokinase-type plasminogen activator	% Local Parameter:   id =  parameter_8, name = parameter_8
	reaction_reaction_2_parameter_8=40.0;

	reaction_reaction_2=compartment_compartment_1*Function_for_reaction_2_0(global_par_parameter_13, reaction_reaction_2_parameter_8, x(2), x(3));

% Reaction: id = reaction_3, name = activation of plasmin	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_3_k1=0.9;

	reaction_reaction_3=compartment_compartment_1*reaction_reaction_3_k1*x(4)*x(1);

% Reaction: id = reaction_4, name = degradation of single intact chain urokinase-type plasminogen activator
	reaction_reaction_4=compartment_compartment_1*global_par_parameter_1*x(3);

% Reaction: id = reaction_5, name = degradation of plasminogen
	reaction_reaction_5=compartment_compartment_1*global_par_parameter_2*x(1);

% Reaction: id = reaction_6, name = degradation of plasmin
	reaction_reaction_6=compartment_compartment_1*global_par_parameter_1*x(2);

% Reaction: id = reaction_7, name = degradation of two-chain urokinase type plasminogen activator
	reaction_reaction_7=compartment_compartment_1*global_par_parameter_1*x(4);

% Reaction: id = reaction_8, name = reversible plasmin bonding x	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_8_k1=0.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_8_k2=0.016;

	reaction_reaction_8=compartment_compartment_1*(reaction_reaction_8_k1*x(2)*const_species_species_5-reaction_reaction_8_k2*const_species_species_6);

% Reaction: id = reaction_9, name = catalytic reaction of x-plasmin	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_9_k1=0.02;

	reaction_reaction_9=compartment_compartment_1*reaction_reaction_9_k1*const_species_species_6;

% Reaction: id = reaction_10, name = degradation of x
	reaction_reaction_10=compartment_compartment_1*global_par_parameter_2*const_species_species_5;

% Reaction: id = reaction_11, name = degradation of x-plasmin
	reaction_reaction_11=compartment_compartment_1*global_par_parameter_2*const_species_species_6;

% Species:   id = species_5, name = x, constant	const_species_species_5=0.0;

% Species:   id = species_6, name = x-plasmin, constant	const_species_species_6=0.0;

	xdot=zeros(4,1);
	
% Species:   id = species_1, name = plasminogen, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_5) + ( 1.0 * reaction_reaction_13));
	
% Species:   id = species_2, name = plasmin, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_2) + ( 1.0 * reaction_reaction_2) + ( 1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_6) + (-1.0 * reaction_reaction_8) + ( 1.0 * reaction_reaction_9));
	
% Species:   id = species_3, name = single intact chain urokinase-type plasminogen activator, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_1) + ( 1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_4) + ( 1.0 * reaction_reaction_12));
	
% Species:   id = species_4, name = two-chain urokinase-type plasminogen activator, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_3) + ( 1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_7));
end

function z=Constant_flux__irreversible_0(v), z=(v);end

function z=Function_for_reaction_2_0(parameter_13,parameter_8,species_2,species_3), z=(parameter_8*species_2^parameter_13*species_3);end

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


