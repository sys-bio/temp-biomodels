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
% Model name = Gardner2000 - genetic toggle switch in E.coli
%
% is http://identifiers.org/biomodels.db/MODEL1401190000
% is http://identifiers.org/biomodels.db/BIOMD0000000507
% isDescribedBy http://identifiers.org/pubmed/10659857
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 0.0;
	x0(2) = 0.0;
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

% Compartment: id = compartment_1, name = compartment, constant
	compartment_compartment_1=1.0;
% Parameter:   id =  parameter_1, name = alpha1
	global_par_parameter_1=156.25;
% Parameter:   id =  parameter_2, name = alpha2
	global_par_parameter_2=15.6;
% Parameter:   id =  parameter_3, name = beta
	global_par_parameter_3=2.5;
% Parameter:   id =  parameter_4, name = gamma
	global_par_parameter_4=1.0;
% Parameter:   id =  parameter_5, name = K
	global_par_parameter_5=2.9618E-5;
% Parameter:   id =  parameter_6, name = nu
	global_par_parameter_6=2.0015;
% Parameter:   id =  parameter_7, name = Umodif
% Parameter:   id =  ModelValue_4, name = Initial for K
	global_par_ModelValue_4=2.9618E-5;
% Parameter:   id =  ModelValue_5, name = Initial for nu
	global_par_ModelValue_5=2.0015;
% assignmentRule: variable = parameter_7
	global_par_parameter_7=x(1)/(1+x(3)/global_par_ModelValue_4)^global_par_ModelValue_5;

% Reaction: id = reaction_1, name = production of U
	reaction_reaction_1=compartment_compartment_1*function_1(global_par_parameter_1, x(2), global_par_parameter_3);

% Reaction: id = reaction_2, name = degradation of U	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_2_k1=1.0;

	reaction_reaction_2=compartment_compartment_1*reaction_reaction_2_k1*x(1);

% Reaction: id = reaction_3, name = production of V
	reaction_reaction_3=compartment_compartment_1*function_2(global_par_parameter_2, global_par_parameter_7, global_par_parameter_4);

% Reaction: id = reaction_4, name = degration of V	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_4_k1=1.0;

	reaction_reaction_4=compartment_compartment_1*reaction_reaction_4_k1*x(2);

	xdot=zeros(3,1);
	
% Species:   id = species_1, name = U, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_2));
	
% Species:   id = species_2, name = V, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_4));
	
% Species:   id = species_3, name = IPTG
% Warning species is not changed by either rules or reactions
	xdot(3) = ;
end

function z=function_1(alpha,X,n), z=(alpha/(1+X^n));end

function z=function_2(alpha,X,n), z=(alpha/(1+X^n));end

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


