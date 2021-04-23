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
% Model name = Cookson2011_EnzymaticQueueingCoupling
%
% is http://identifiers.org/biomodels.db/MODEL1111150000
% is http://identifiers.org/biomodels.db/BIOMD0000000405
% isDescribedBy http://identifiers.org/pubmed/22186735
%


function main()
%Initial conditions vector
	x0=zeros(6,1);
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 100.0;
	x0(6) = 1.0;


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

% Compartment: id = compartment_1, name = compartment, constant
	compartment_compartment_1=1.0;
% Parameter:   id =  parameter_1, name = lambda1
	global_par_parameter_1=500.0;
% Parameter:   id =  parameter_2, name = lambda2
	global_par_parameter_2=500.0;
% Parameter:   id =  parameter_3, name = mu
	global_par_parameter_3=10.0;
% Parameter:   id =  parameter_4, name = Kp
	global_par_parameter_4=1000.0;
% Parameter:   id =  parameter_5, name = g
	global_par_parameter_5=0.03465735902799;

% Reaction: id = reaction_1, name = binding1
	reaction_reaction_1=compartment_compartment_1*global_par_parameter_4*x(1)*x(5);

% Reaction: id = reaction_2, name = binding2
	reaction_reaction_2=compartment_compartment_1*global_par_parameter_4*x(2)*x(5);

% Reaction: id = reaction_5, name = degradation1
	reaction_reaction_5=compartment_compartment_1*global_par_parameter_3*x(3);

% Reaction: id = reaction_6, name = degradation2
	reaction_reaction_6=compartment_compartment_1*global_par_parameter_3*x(4);

% Reaction: id = reaction_7, name = dilution1
	reaction_reaction_7=compartment_compartment_1*global_par_parameter_5*x(1);

% Reaction: id = reaction_8, name = dilution2
	reaction_reaction_8=compartment_compartment_1*global_par_parameter_5*x(2);

	xdot=zeros(6,1);
	
% Species:   id = species_1, name = x1, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_1) + ( 1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_7));
	
% Species:   id = species_2, name = x2, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_2) + ( 1.0 * reaction_reaction_4) + (-1.0 * reaction_reaction_8));
	
% Species:   id = species_3, name = E1, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_5));
	
% Species:   id = species_4, name = E2, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_6));
	
% Species:   id = species_5, name = E, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_2) + ( 1.0 * reaction_reaction_5) + ( 1.0 * reaction_reaction_6));
	
% Species:   id = species_6, name = E+x1
% Warning species is not changed by either rules or reactions
	xdot(6) = ;
end

function z=function_1(v), z=(v);end

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


