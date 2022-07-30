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
% Model name = Chulian2021 - feedback signalling in B lymphopoeisis
%
% is http://identifiers.org/biomodels.db/MODEL2205170001
% is http://identifiers.org/biomodels.db/BIOMD0000001056
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 1000000.0;
	x0(2) = 0.0;
	x0(3) = 0.0;


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

% Compartment: id = Bone_marrow, name = Bone marrow, constant
	compartment_Bone_marrow=1.0;
% Parameter:   id =  s1, name = s1
% Parameter:   id =  s2, name = s2
% Parameter:   id =  k, name = k
	global_par_k=1.0E-10;
% Parameter:   id =  rho1, name = rho1
	global_par_rho1=0.0289;
% Parameter:   id =  rho2, name = rho2
	global_par_rho2=0.0193;
% Parameter:   id =  alpha1, name = alpha1
	global_par_alpha1=0.008;
% Parameter:   id =  alpha2, name = alpha2
	global_par_alpha2=0.006;
% Parameter:   id =  alpha3, name = alpha3
	global_par_alpha3=0.02;
% Parameter:   id =  ModelValue_39, name = Initial for k
	global_par_ModelValue_39=1.0E-10;
% assignmentRule: variable = s1
	global_par_s1=1/(1+global_par_ModelValue_39*x(3));
% assignmentRule: variable = s2
	global_par_s2=1/(1+global_par_ModelValue_39*(x(1)+x(2)+x(3)));

% Reaction: id = Proliferation_of_early_B_cells, name = Proliferation of early B-cells
	reaction_Proliferation_of_early_B_cells=compartment_Bone_marrow*function_1(global_par_s2, global_par_rho1, x(1));

% Reaction: id = transition_from_early_B_cells_to_intermediate_B_cells, name = transition from early B-cells to intermediate B-cells
	reaction_transition_from_early_B_cells_to_intermediate_B_cells=compartment_Bone_marrow*global_par_alpha1*x(1);

% Reaction: id = Proliferation_of_intermediate_B_cells, name = Proliferation of intermediate B-cells
	reaction_Proliferation_of_intermediate_B_cells=compartment_Bone_marrow*function_1(global_par_s2, global_par_rho2, x(2));

% Reaction: id = Transition_of_intermediate_B_cells_to_late_B_cells, name = Transition of intermediate B-cells to late B-cells
	reaction_Transition_of_intermediate_B_cells_to_late_B_cells=compartment_Bone_marrow*global_par_alpha2*x(2);

% Reaction: id = Blood_transition_of_late_B_cells, name = Blood transition of late B-cells
	reaction_Blood_transition_of_late_B_cells=compartment_Bone_marrow*global_par_alpha3*x(3);

	xdot=zeros(3,1);
	
% Species:   id = C1, name = C1, affected by kineticLaw
	xdot(1) = (1/(compartment_Bone_marrow))*(( 1.0 * reaction_Proliferation_of_early_B_cells) + (-1.0 * reaction_transition_from_early_B_cells_to_intermediate_B_cells));
	
% Species:   id = C2, name = C2, affected by kineticLaw
	xdot(2) = (1/(compartment_Bone_marrow))*(( 1.0 * reaction_transition_from_early_B_cells_to_intermediate_B_cells) + ( 1.0 * reaction_Proliferation_of_intermediate_B_cells) + (-1.0 * reaction_Transition_of_intermediate_B_cells_to_late_B_cells));
	
% Species:   id = C3, name = C3, affected by kineticLaw
	xdot(3) = (1/(compartment_Bone_marrow))*(( 1.0 * reaction_Transition_of_intermediate_B_cells_to_late_B_cells) + (-1.0 * reaction_Blood_transition_of_late_B_cells));
end

function z=function_1(s,rho,c), z=(s*rho*c);end

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


