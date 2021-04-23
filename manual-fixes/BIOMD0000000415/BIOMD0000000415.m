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
% Model name = Mellor2012_LipooxygenasePathway
%
% is http://identifiers.org/biomodels.db/MODEL1203230000
% is http://identifiers.org/biomodels.db/BIOMD0000000415
% isDescribedBy http://identifiers.org/pubmed/21535565
%


function main()
%Initial conditions vector
	x0=zeros(10,1);
	x0(1) = 6.69999967735732E-5;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 0.0;


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
	compartment_compartment_1=1000.0;
% Parameter:   id =  parameter_1, name = Km(L1)
	global_par_parameter_1=0.49;
% Parameter:   id =  parameter_2, name = Vm(L1)
	global_par_parameter_2=0.00825;
% Parameter:   id =  parameter_3, name = Km(L2)
	global_par_parameter_3=0.49;
% Parameter:   id =  parameter_4, name = Vm(L2)
	global_par_parameter_4=0.039;
% Parameter:   id =  parameter_5, name = Km(L3)
	global_par_parameter_5=0.49;
% Parameter:   id =  parameter_6, name = Vm(L3)
	global_par_parameter_6=0.00255;
% Parameter:   id =  parameter_7, name = Km(HPL)
	global_par_parameter_7=0.05;
% Parameter:   id =  parameter_8, name = Vm(HPL-SZE)
	global_par_parameter_8=0.285;
% Parameter:   id =  parameter_9, name = Vm(HPL-RZE)
% assignmentRule: variable = parameter_9
	global_par_parameter_9=0.135*global_par_parameter_8;

% Reaction: id = reaction_1, name = LOX1
	reaction_reaction_1=compartment_compartment_1*function_1(x(1), global_par_parameter_1, global_par_parameter_2);

% Reaction: id = reaction_2, name = LOX2
	reaction_reaction_2=compartment_compartment_1*function_1(x(1), global_par_parameter_3, global_par_parameter_4);

% Reaction: id = reaction_3, name = LOX3
	reaction_reaction_3=compartment_compartment_1*function_1(x(1), global_par_parameter_5, global_par_parameter_6);

% Reaction: id = reaction_4, name = HPL
	reaction_reaction_4=compartment_compartment_1*function_1(x(2), global_par_parameter_7, global_par_parameter_8);

% Reaction: id = reaction_5, name = HPL(RZE)
	reaction_reaction_5=compartment_compartment_1*function_1(x(3), global_par_parameter_7, global_par_parameter_9);

	xdot=zeros(10,1);
	
% Species:   id = species_1, name = LA, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_3));
	
% Species:   id = species_7, name = 13HOD-S(Z,E), affected by kineticLaw
	xdot(2) = (1/(compartment_compartment_1))*(( 0.574 * reaction_reaction_1) + ( 0.751 * reaction_reaction_2) + ( 0.068 * reaction_reaction_3) + (-1.0 * reaction_reaction_4));
	
% Species:   id = species_8, name = 13HOD-R(Z,E), affected by kineticLaw
	xdot(3) = (1/(compartment_compartment_1))*(( 0.144 * reaction_reaction_1) + ( 0.023 * reaction_reaction_2) + ( 0.059 * reaction_reaction_3) + (-1.0 * reaction_reaction_5));
	
% Species:   id = species_9, name = 13HOD-S(E,E), affected by kineticLaw
	xdot(4) = (1/(compartment_compartment_1))*(( 0.05 * reaction_reaction_1) + ( 0.025 * reaction_reaction_2) + ( 0.136 * reaction_reaction_3));
	
% Species:   id = species_10, name = 13HOD-R(E,E), affected by kineticLaw
	xdot(5) = (1/(compartment_compartment_1))*(( 0.012 * reaction_reaction_1) + ( 0.015 * reaction_reaction_2) + ( 0.107 * reaction_reaction_3));
	
% Species:   id = species_11, name = 9HOD-S(Z,E), affected by kineticLaw
	xdot(6) = (1/(compartment_compartment_1))*(( 0.162 * reaction_reaction_1) + ( 0.127 * reaction_reaction_2) + ( 0.218 * reaction_reaction_3));
	
% Species:   id = species_12, name = 9HOD-R(Z,E), affected by kineticLaw
	xdot(7) = (1/(compartment_compartment_1))*(( 0.04 * reaction_reaction_1) + ( 0.026 * reaction_reaction_2) + ( 0.218 * reaction_reaction_3));
	
% Species:   id = species_13, name = 9HOD-S(E,E), affected by kineticLaw
	xdot(8) = (1/(compartment_compartment_1))*(( 0.014 * reaction_reaction_1) + ( 0.018 * reaction_reaction_2) + ( 0.098 * reaction_reaction_3));
	
% Species:   id = species_14, name = 9HOD-R(E,E), affected by kineticLaw
	xdot(9) = (1/(compartment_compartment_1))*(( 0.004 * reaction_reaction_1) + ( 0.016 * reaction_reaction_2) + ( 0.097 * reaction_reaction_3));
	
% Species:   id = species_15, name = nHexanal, affected by kineticLaw
	xdot(10) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_4) + ( 1.0 * reaction_reaction_5));
end

function z=function_1(substrate,Km,V), z=(V*substrate/(Km+substrate));end

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


