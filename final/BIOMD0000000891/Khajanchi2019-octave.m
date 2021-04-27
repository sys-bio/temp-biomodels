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
% Model name = Khajanchi2019 - Stability Analysis of a Mathematical Model forGlioma-Immune Interaction under OptimalTherapy
%
% isDescribedBy http://identifiers.org/doi/10.1515/ijnsns-2017-0206
% isDerivedFrom http://identifiers.org/doi/10.1007/s00262-007-0387-z
% isDerivedFrom http://identifiers.org/doi/10.1371/journal.pone.0123611
% isDerivedFrom http://identifiers.org/doi/10.1016/S0092-8240(05)80260-5
% is http://identifiers.org/biomodels.db/MODEL1912130001
% is http://identifiers.org/biomodels.db/BIOMD0000000891
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 0.1;
	x0(2) = 0.55;
	x0(3) = 0.2;


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
% Parameter:   id =  r_1, name = r_1
	global_par_r_1=0.4822;
% Parameter:   id =  alpha_1, name = alpha_1
	global_par_alpha_1=0.069943;
% Parameter:   id =  alpha_2, name = alpha_2
	global_par_alpha_2=2.74492;
% Parameter:   id =  k_1, name = k_1
	global_par_k_1=0.90305;
% Parameter:   id =  r_2, name = r_2
	global_par_r_2=0.3307;
% Parameter:   id =  alpha_3, name = alpha_3
	global_par_alpha_3=0.0194;
% Parameter:   id =  k_2, name = k_2
	global_par_k_2=0.030584;
% Parameter:   id =  gamma_1, name = gamma_1
	global_par_gamma_1=0.1245;
% Parameter:   id =  k_3, name = k_3
	global_par_k_3=2.8743;
% Parameter:   id =  mu_1, name = mu_1
	global_par_mu_1=0.0074;
% Parameter:   id =  alpha_4, name = alpha_4
	global_par_alpha_4=0.01694;
% Parameter:   id =  k_4, name = k_4
	global_par_k_4=0.378918;

% Reaction: id = Increase_in_density_of_glioma_cells, name = Increase in density of glioma cells
	reaction_Increase_in_density_of_glioma_cells=compartment_compartment*Function_for_increase_in_density_of_glioma_cell(global_par_r_1, x(1));

% Reaction: id = Decrease_in_density_of_glioma_cell, name = Decrease in density of glioma cell
	reaction_Decrease_in_density_of_glioma_cell=compartment_compartment*Function_for_decrease_in_density_of_glioma_cell(global_par_alpha_1, x(2), global_par_alpha_2, x(3), x(1), global_par_k_1);

% Reaction: id = Increase_in_density_of_macrophage_population, name = Increase in density of macrophage population
	reaction_Increase_in_density_of_macrophage_population=compartment_compartment*Function_for_increase_in_population_of_macrophage(global_par_r_2, x(2));

% Reaction: id = Decrease_in_the_density_of_macrophage_population, name = Decrease in the density of macrophage population
	reaction_Decrease_in_the_density_of_macrophage_population=compartment_compartment*Function_for_decrease_in_population_of_macrophage(global_par_alpha_3, x(1), x(2), global_par_k_2);

% Reaction: id = Increase_in_density_of_glioma_specific_CD8__T_cell, name = Increase in density of glioma specific CD8+ T cell
	reaction_Increase_in_density_of_glioma_specific_CD8__T_cell=compartment_compartment*Function_for_increase_in_density_of_glioma_specific_CD8__T_cell(global_par_gamma_1, x(1), x(3), global_par_k_3);

% Reaction: id = decrease_in_density_of_glioma_specific_CD8__T_cell, name = decrease in density of glioma specific CD8+ T cell
	reaction_decrease_in_density_of_glioma_specific_CD8__T_cell=compartment_compartment*Function_for_decrease_in_density_of_glioma_specific_CD8__T_cell(global_par_mu_1, x(3), global_par_alpha_4, x(1), global_par_k_4);

	xdot=zeros(3,1);
	
% Species:   id = u, name = u, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_Increase_in_density_of_glioma_cells) + (-1.0 * reaction_Decrease_in_density_of_glioma_cell));
	
% Species:   id = v, name = v, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_Increase_in_density_of_macrophage_population) + (-1.0 * reaction_Decrease_in_the_density_of_macrophage_population));
	
% Species:   id = w, name = w, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_Increase_in_density_of_glioma_specific_CD8__T_cell) + (-1.0 * reaction_decrease_in_density_of_glioma_specific_CD8__T_cell));
end

function z=Function_for_increase_in_density_of_glioma_cell(r_1,u), z=(r_1*u*(1-u));end

function z=Function_for_decrease_in_density_of_glioma_specific_CD8__T_cell(mu_1,w,alpha_4,u,k_4), z=(mu_1*w+alpha_4*u*w/(u+k_4));end

function z=Function_for_decrease_in_density_of_glioma_cell(alpha_1,v,alpha_2,w,u,k_1), z=((alpha_1*v+alpha_2*w)/(u+k_1)*u);end

function z=Function_for_decrease_in_population_of_macrophage(alpha_3,u,v,k_2), z=(alpha_3*u*v/(u+k_2));end

function z=Function_for_increase_in_population_of_macrophage(r_2,v), z=(r_2*v*(1-v));end

function z=Function_for_increase_in_density_of_glioma_specific_CD8__T_cell(gamma_1,u,w,k_3), z=(gamma_1*u*w/(k_3+u));end

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


