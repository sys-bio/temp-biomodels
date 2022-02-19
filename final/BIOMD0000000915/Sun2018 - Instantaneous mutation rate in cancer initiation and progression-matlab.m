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
% Model name = Sun2018 - Instantaneous mutation rate in cancer initiation and progression
%
%


function main()
%Initial conditions vector
	x0=zeros(10,1);
	x0(1) = 1.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 1.0;


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
% Parameter:   id =  myu, name = myu
% Parameter:   id =  a, name = a
	global_par_a=1.0E-6;
% Parameter:   id =  b, name = b
	global_par_b=3.0E-5;
% assignmentRule: variable = p
	x(10)=x(1)+x(2)+x(3)+x(4)+x(5)+x(6)+x(7)+x(8)+x(9);
% assignmentRule: variable = myu
	global_par_myu=global_par_a*exp(global_par_b*time);

% Reaction: id = mutation_1_2, name = mutation 1-2
	reaction_mutation_1_2=compartment_compartment*Function_for_mutation(global_par_myu, x(2));

% Reaction: id = mutation_2_3, name = mutation 2-3
	reaction_mutation_2_3=compartment_compartment*Function_for_mutation(global_par_myu, x(3));

% Reaction: id = mutation_3_4, name = mutation 3-4
	reaction_mutation_3_4=compartment_compartment*Function_for_mutation(global_par_myu, x(4));

% Reaction: id = mutation_4_5, name = mutation 4-5
	reaction_mutation_4_5=compartment_compartment*Function_for_mutation(global_par_myu, x(5));

% Reaction: id = mutation_5_6, name = mutation 5-6
	reaction_mutation_5_6=compartment_compartment*Function_for_mutation(global_par_myu, x(6));

% Reaction: id = mutation_6_7, name = mutation 6-7
	reaction_mutation_6_7=compartment_compartment*Function_for_mutation(global_par_myu, x(7));

% Reaction: id = mutation_7_8, name = mutation 7-8
	reaction_mutation_7_8=compartment_compartment*Function_for_mutation(global_par_myu, x(8));

% Reaction: id = mutation_0_1, name = mutation 0-1
	reaction_mutation_0_1=compartment_compartment*Function_for_mutation(global_par_myu, x(1));

	xdot=zeros(10,1);
	
% Species:   id = p_0, name = p_0, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*((-1.0 * reaction_mutation_0_1));
	
% Species:   id = p_1, name = p_1, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*((-1.0 * reaction_mutation_1_2) + ( 1.0 * reaction_mutation_0_1));
	
% Species:   id = p_2, name = p_2, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_mutation_1_2) + (-1.0 * reaction_mutation_2_3));
	
% Species:   id = p_3, name = p_3, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_mutation_2_3) + (-1.0 * reaction_mutation_3_4));
	
% Species:   id = p_4, name = p_4, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_mutation_3_4) + (-1.0 * reaction_mutation_4_5));
	
% Species:   id = p_5, name = p_5, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*(( 1.0 * reaction_mutation_4_5) + (-1.0 * reaction_mutation_5_6));
	
% Species:   id = p_6, name = p_6, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment))*(( 1.0 * reaction_mutation_5_6) + (-1.0 * reaction_mutation_6_7));
	
% Species:   id = p_7, name = p_7, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment))*(( 1.0 * reaction_mutation_6_7) + (-1.0 * reaction_mutation_7_8));
	
% Species:   id = p_8, name = p_8, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment))*(( 1.0 * reaction_mutation_7_8));
	
% Species:   id = p, name = p, involved in a rule 	xdot(10) = x(10);
end

function z=Function_for_mutation(myu_j,p_j), z=(myu_j*p_j);end

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


