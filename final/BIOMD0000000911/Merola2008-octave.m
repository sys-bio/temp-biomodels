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
% Model name = Merola2008 - An insight into tumor dormancy equilibrium via the analysis of its domain of attraction
%
% isDescribedBy http://identifiers.org/doi/10.1016/j.bspc.2008.02.001
% isDerivedFrom http://identifiers.org/doi/10.1016/j.mbs.2005.04.001
% is http://identifiers.org/biomodels.db/MODEL2001150001
% is http://identifiers.org/biomodels.db/BIOMD0000000911
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 2.5;
	x0(2) = 1.5;
	x0(3) = 0.5;


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

% Compartment: id = compartment, name = compartment, constant
	compartment_compartment=1.0;
% Parameter:   id =  q, name = q
	global_par_q=10.0;
% Parameter:   id =  r, name = r
	global_par_r=0.9;
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=0.3;
% Parameter:   id =  k1, name = k1
	global_par_k1=0.8;
% Parameter:   id =  beta, name = beta
	global_par_beta=0.1;
% Parameter:   id =  d1, name = d1
	global_par_d1=0.02;
% Parameter:   id =  s, name = s
	global_par_s=0.8;
% Parameter:   id =  k2, name = k2
	global_par_k2=0.7;
% Parameter:   id =  d2, name = d2
	global_par_d2=0.03;

% Reaction: id = Increase_in_the_density_of_tumor_cel, name = Increase in the density of tumor cel
	reaction_Increase_in_the_density_of_tumor_cel=compartment_compartment*Function_for_increase_in_the_density_of_tumor_cell(global_par_q, global_par_r, x(1), global_par_k1);

% Reaction: id = Removal_of_tumor_cell_from_the_system, name = Removal of tumor cell from the system
	reaction_Removal_of_tumor_cell_from_the_system=compartment_compartment*Function_for_removal_of_tumor_cell(global_par_alpha, x(1), x(2));

% Reaction: id = Activation_and_transfer_of_predator_cells_like_CTL_NK_and_macrophage, name = Activation and transfer of predator cells like CTL NK and macrophage
	reaction_Activation_and_transfer_of_predator_cells_like_CTL_NK_and_macrophage=compartment_compartment*Function_for_actiation_and_tranfer_of_hunting_predator_cells(global_par_beta, x(2), x(3));

% Reaction: id = Removal_of_hunting_predator_cell, name = Removal of hunting predator cell
	reaction_Removal_of_hunting_predator_cell=compartment_compartment*Function_for_removal_hunting_predator_cell(global_par_d1, x(2));

% Reaction: id = Converstion_of_hunting_to_resting_predator_cell, name = Converstion of hunting to resting predator cell
	reaction_Converstion_of_hunting_to_resting_predator_cell=compartment_compartment*Function_for_formation_of_resting_predator_cell(global_par_s, x(3), global_par_k2);

% Reaction: id = Removal_of_resting_predator_cells, name = Removal of resting predator cells
	reaction_Removal_of_resting_predator_cells=compartment_compartment*Function_for_removal_of_resting_predator_cells(global_par_beta, x(2), x(3), global_par_d2);

	xdot=zeros(3,1);
	
% Species:   id = M, name = M, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_Increase_in_the_density_of_tumor_cel) + (-1.0 * reaction_Removal_of_tumor_cell_from_the_system));
	
% Species:   id = N, name = N, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_Activation_and_transfer_of_predator_cells_like_CTL_NK_and_macrophage) + (-1.0 * reaction_Removal_of_hunting_predator_cell));
	
% Species:   id = Z, name = Z, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_Converstion_of_hunting_to_resting_predator_cell) + (-1.0 * reaction_Removal_of_resting_predator_cells));
end

function z=Function_for_removal_of_tumor_cell(alpha,M,N), z=(alpha*M*N);end

function z=Function_for_formation_of_resting_predator_cell(s,Z,k2), z=(s*Z*(1-Z/k2));end

function z=Function_for_removal_hunting_predator_cell(d1,N), z=(d1*N);end

function z=Function_for_removal_of_resting_predator_cells(beta,N,Z,d2), z=(beta*N*Z+d2*Z);end

function z=Function_for_increase_in_the_density_of_tumor_cell(q,r,M,k1), z=(q+r*M*(1-M/k1));end

function z=Function_for_actiation_and_tranfer_of_hunting_predator_cells(beta,N,Z), z=(beta*N*Z);end

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


