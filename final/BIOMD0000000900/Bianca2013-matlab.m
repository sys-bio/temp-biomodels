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
% Model name = Bianca2013 - Persistence analysis in a Kolmogorov-type model for cancer-immune system competition
%
% isDescribedBy http://identifiers.org/doi/10.1063/1.4825874
% isDerivedFrom http://identifiers.org/doi.org/10.4039/entm9745fv
% is http://identifiers.org/biomodels.db/MODEL1912180002
% is http://identifiers.org/biomodels.db/BIOMD0000000900
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 1.0;
	x0(2) = 1.0;
	x0(3) = 1.0;


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
% Parameter:   id =  alpha_1, name = alpha_1
	global_par_alpha_1=0.05;
% Parameter:   id =  alpha_2, name = alpha_2
	global_par_alpha_2=0.31;
% Parameter:   id =  alpha_3, name = alpha_3
	global_par_alpha_3=0.5;
% Parameter:   id =  gamma_1, name = gamma_1
	global_par_gamma_1=0.5;
% Parameter:   id =  gamma_2, name = gamma_2
	global_par_gamma_2=0.65;
% Parameter:   id =  delta_1, name = delta_1
% Parameter:   id =  delta_2, name = delta_2
% Parameter:   id =  beta_1, name = beta_1
	global_par_beta_1=10.0;
% Parameter:   id =  beta_2, name = beta_2
	global_par_beta_2=3.0;
% Parameter:   id =  beta_3, name = beta_3
	global_par_beta_3=3.0;

% Reaction: id = Formation_of_cancer_cell, name = Formation of cancer cell
	reaction_Formation_of_cancer_cell=compartment_compartment*Function_for_formation_of_cancer_cell(global_par_alpha_1, x(1), global_par_beta_1);

% Reaction: id = Removal_of_cancer_cell_by_the_action_of_B_cell_and_T_cell, name = Removal of cancer cell by the action of B cell and T cell
	reaction_Removal_of_cancer_cell_by_the_action_of_B_cell_and_T_cell=compartment_compartment*Function_for_removal_of_cancer_cell(global_par_gamma_1, x(1), x(2), global_par_gamma_2, x(3));

% Reaction: id = activation_of_B_cell_induced_by_cancer_cell, name = activation of B cell induced by cancer cell
	reaction_activation_of_B_cell_induced_by_cancer_cell=compartment_compartment*Function_for_activation_of_B_cell_induced_by_cancer_cell(global_par_alpha_2, x(1), x(2), global_par_beta_2, global_par_gamma_1);

% Reaction: id = Removal_of_B_cell, name = Removal of B cell
	reaction_Removal_of_B_cell=compartment_compartment*Function_for_removal_of_B_cell(global_par_delta_1, x(2));

% Reaction: id = Activation_of_T_cell_induced_by_cancer_cell, name = Activation of T cell induced by cancer cell
	reaction_Activation_of_T_cell_induced_by_cancer_cell=compartment_compartment*Function_for_activation_of_T_cell_induced_by_cancer_cell(global_par_alpha_3, x(1), x(3), global_par_beta_3, global_par_gamma_2);

% Reaction: id = Removal_of_T_cell, name = Removal of T cell
	reaction_Removal_of_T_cell=compartment_compartment*Function_for_removal_of_T_cell(global_par_delta_2, x(3));

	xdot=zeros(3,1);
	
% Species:   id = C, name = C, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_Formation_of_cancer_cell) + (-1.0 * reaction_Removal_of_cancer_cell_by_the_action_of_B_cell_and_T_cell));
	
% Species:   id = B, name = B, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_activation_of_B_cell_induced_by_cancer_cell) + (-1.0 * reaction_Removal_of_B_cell));
	
% Species:   id = T, name = T, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_Activation_of_T_cell_induced_by_cancer_cell) + (-1.0 * reaction_Removal_of_T_cell));
end

function z=Function_for_formation_of_cancer_cell(alpha_1,C,beta_1), z=(alpha_1*C*(1-C/beta_1));end

function z=Function_for_removal_of_B_cell(delta_1,B), z=(delta_1*B);end

function z=Function_for_removal_of_cancer_cell(gamma_1,C,B,gamma_2,T), z=(gamma_1/(1+gamma_1*C)*C*B+gamma_2/(1+gamma_2*C)*C*T);end

function z=Function_for_activation_of_B_cell_induced_by_cancer_cell(alpha_2,C,B,bata_2,gamma_1), z=(alpha_2*C*B*(1-B/bata_2)*gamma_1/(1+gamma_1*C));end

function z=Function_for_activation_of_T_cell_induced_by_cancer_cell(alpha_3,C,T,beta_3,gamma_2), z=(alpha_3*C*T*(1-T/beta_3)*gamma_2/(1+gamma_2*C));end

function z=Function_for_removal_of_T_cell(delta_2,T), z=(delta_2*T);end

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


