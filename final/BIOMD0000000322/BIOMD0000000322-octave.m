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
% Model name = Kim2011_Oscillator_SimpleI
%
% is http://identifiers.org/biomodels.db/MODEL1012090000
% is http://identifiers.org/biomodels.db/BIOMD0000000322
% isDescribedBy http://identifiers.org/pubmed/21283141
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 0.1;
	x0(2) = 0.1;
	x0(3) = 0.1;
	x0(4) = 0.1;


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
% Parameter:   id =  parameter_1, name = alpha
	global_par_parameter_1=0.57;
% Parameter:   id =  parameter_2, name = beta
	global_par_parameter_2=2.5;
% Parameter:   id =  parameter_3, name = gamma
	global_par_parameter_3=1.0;
% Parameter:   id =  parameter_4, name = n
	global_par_parameter_4=6.5;
% Parameter:   id =  parameter_5, name = m
	global_par_parameter_5=6.5;
% Parameter:   id =  parameter_6, name = delta
	global_par_parameter_6=1.5;

% Reaction: id = reaction_1, name = reaction1	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_1_k1=1.0;

	reaction_reaction_1=compartment_compartment_1*reaction_reaction_1_k1*x(1);

% Reaction: id = reaction_2, name = reaction2	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_2_k1=1.0;

	reaction_reaction_2=compartment_compartment_1*reaction_reaction_2_k1*x(2);

% Reaction: id = reaction_3, name = reaction3	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_3_k1=1.0;

	reaction_reaction_3=compartment_compartment_1*reaction_reaction_3_k1*x(3);

% Reaction: id = reaction_4, name = reaction4	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_4_k1=1.0;

	reaction_reaction_4=compartment_compartment_1*reaction_reaction_4_k1*x(4);

% Reaction: id = reaction_5, name = reaction5
	reaction_reaction_5=compartment_compartment_1*global_par_parameter_1*x(3);

% Reaction: id = reaction_6, name = reaction6
	reaction_reaction_6=compartment_compartment_1*global_par_parameter_2*x(4);

% Reaction: id = reaction_7, name = reaction7	% Local Parameter:   id =  V, name = V
	reaction_reaction_7_V=1.0;
	% Local Parameter:   id =  Shalve, name = Shalve
	reaction_reaction_7_Shalve=1.0;

	reaction_reaction_7=compartment_compartment_1*function_1(reaction_reaction_7_V, reaction_reaction_7_Shalve, global_par_parameter_4, x(2));

% Reaction: id = reaction_8, name = reaction8	% Local Parameter:   id =  Shalve, name = Shalve
	reaction_reaction_8_Shalve=1.0;
	% Local Parameter:   id =  V, name = V
	reaction_reaction_8_V=1.0;

	reaction_reaction_8=compartment_compartment_1*function_2(x(1), reaction_reaction_8_Shalve, reaction_reaction_8_V, global_par_parameter_5);

% Reaction: id = reaction_9, name = reaction9
	reaction_reaction_9=compartment_compartment_1*global_par_parameter_6*x(4);

	xdot=zeros(4,1);
	
% Species:   id = species_1, name = x, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_1) + ( 1.0 * reaction_reaction_5) + (-1.0 * reaction_reaction_8) + ( 1.0 * reaction_reaction_8) + ( 1.0 * reaction_reaction_9));
	
% Species:   id = species_2, name = y, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_2) + ( 1.0 * reaction_reaction_6) + (-1.0 * reaction_reaction_7) + ( 1.0 * reaction_reaction_7));
	
% Species:   id = species_3, name = u, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_5) + ( 1.0 * reaction_reaction_5) + ( 1.0 * reaction_reaction_7));
	
% Species:   id = species_4, name = v, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_4) + (-1.0 * reaction_reaction_6) + ( 1.0 * reaction_reaction_6) + ( 1.0 * reaction_reaction_8) + (-1.0 * reaction_reaction_9) + ( 1.0 * reaction_reaction_9));
end

function z=function_2(substrate,Shalve,V,h), z=(V*substrate^h/(Shalve^h+substrate^h));end

function z=function_1(V,Shalve,h,substrate), z=(V/(Shalve^h+substrate^h));end

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


