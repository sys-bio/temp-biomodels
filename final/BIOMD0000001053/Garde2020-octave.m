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
% Model name = Garde2020 - metabolic oscillations in Bacillus subtilis biofilms
%
% is http://identifiers.org/biomodels.db/MODEL2204180002
% is http://identifiers.org/biomodels.db/BIOMD0000001053
%


function main()
%Initial conditions vector
	x0=zeros(6,1);
	x0(1) = 0.999999999999999;
	x0(2) = 0.999999999999999;
	x0(3) = 0.999999999999999;
	x0(4) = 0.999999999999999;
	x0(5) = 1.0;
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

% Compartment: id = Biofilm, name = Biofilm, constant
	compartment_Biofilm=1.0;
% Parameter:   id =  k1, name = k1
	global_par_k1=0.34;
% Parameter:   id =  k2, name = k2
	global_par_k2=5.3;
% Parameter:   id =  k3, name = k3
	global_par_k3=4.0;
% Parameter:   id =  k4, name = k4
	global_par_k4=2.0;
% Parameter:   id =  k5, name = k5
	global_par_k5=2.3;
% Parameter:   id =  Ge, name = Ge
	global_par_Ge=30.0;

% Reaction: id = Positive_feedback_of_Gp_on_itself, name = Positive feedback of Gp on itself
	reaction_Positive_feedback_of_Gp_on_itself=compartment_Biofilm*function_for_positive_feedback_of_Gp_on_itself(global_par_k1, global_par_Ge, x(1));

% Reaction: id = Gp_diffusion_to_the_interior_cells, name = Gp diffusion to the interior cells
	reaction_Gp_diffusion_to_the_interior_cells=compartment_Biofilm*function_Gp_diffusion_to_the_interior_cells(global_par_k4, x(1));

% Reaction: id = Biomass_production, name = Biomass production
	reaction_Biomass_production=compartment_Biofilm*function_for_biomass_production(global_par_k2, x(4), x(1));

% Reaction: id = Diffusion_of_Ammonia_from_interior_to_middle_layer, name = Diffusion of Ammonia from interior to middle layer
	reaction_Diffusion_of_Ammonia_from_interior_to_middle_layer=compartment_Biofilm*function_for_diffusion_of_Ammonia_from_interior_to_middle_layer(global_par_k3, x(2));

% Reaction: id = Production_of_Ammonia_using_Glutamate_by_inner_cells, name = Production of Ammonia using Glutamate by inner cells
	reaction_Production_of_Ammonia_using_Glutamate_by_inner_cells=compartment_Biofilm*function_for_production_of_Ammonia_using_Glutamate_by_inner_cells(global_par_k5, x(6));

% Reaction: id = Ammonia_diffusion_from_middle_layer_to_periphery, name = Ammonia diffusion from middle layer to periphery
	reaction_Ammonia_diffusion_from_middle_layer_to_periphery=compartment_Biofilm*function_for_ammonia_diffusion_from_middle_layer_to_periphery(global_par_k3, x(3));

% Reaction: id = loss_of_Ammonia_du_to_diffusion_to_the_environment, name = loss of Ammonia du to diffusion to the environment
	reaction_loss_of_Ammonia_du_to_diffusion_to_the_environment=compartment_Biofilm*function_for_loss_of_Ammonia_du_to_diffusion_to_the_environment(global_par_k3, x(4));

% Reaction: id = Diffusion_of_Glutamate_from_middle_to_interior_layer, name = Diffusion of Glutamate from middle to interior layer
	reaction_Diffusion_of_Glutamate_from_middle_to_interior_layer=compartment_Biofilm*function_for_diffusion_of_Glutamate_from_middle_to_interior_layer(global_par_k4, x(5));

% Reaction: id = Production_of_Ammonia_in_middle_layer_using_glutamate, name = Production of Ammonia in middle layer using glutamate
	reaction_Production_of_Ammonia_in_middle_layer_using_glutamate=compartment_Biofilm*function_for_production_of_Ammonia_in_middle_layer_using_glutamate(global_par_k5, x(5));

% Reaction: id = Use_of_glutamate_in_middle_layer_for_biomass_production, name = Use of glutamate in middle layer for biomass production
	reaction_Use_of_glutamate_in_middle_layer_for_biomass_production=compartment_Biofilm*function_for_use_of_glutamate_in_middle_layer_for_biomass_production(global_par_k2, x(3), x(5));

	xdot=zeros(6,1);
	
% Species:   id = Gp, name = Gp, affected by kineticLaw
	xdot(1) = (1/(compartment_Biofilm))*(( 1.0 * reaction_Positive_feedback_of_Gp_on_itself) + (-1.0 * reaction_Gp_diffusion_to_the_interior_cells) + (-1.0 * reaction_Biomass_production));
	
% Species:   id = Ai, name = Ai, affected by kineticLaw
	xdot(2) = (1/(compartment_Biofilm))*((-1.0 * reaction_Diffusion_of_Ammonia_from_interior_to_middle_layer) + ( 1.0 * reaction_Production_of_Ammonia_using_Glutamate_by_inner_cells));
	
% Species:   id = Am, name = Am, affected by kineticLaw
	xdot(3) = (1/(compartment_Biofilm))*(( 1.0 * reaction_Diffusion_of_Ammonia_from_interior_to_middle_layer) + (-1.0 * reaction_Ammonia_diffusion_from_middle_layer_to_periphery) + ( 1.0 * reaction_Production_of_Ammonia_in_middle_layer_using_glutamate));
	
% Species:   id = Ap, name = Ap, affected by kineticLaw
	xdot(4) = (1/(compartment_Biofilm))*(( 1.0 * reaction_Ammonia_diffusion_from_middle_layer_to_periphery) + (-1.0 * reaction_loss_of_Ammonia_du_to_diffusion_to_the_environment));
	
% Species:   id = Gm, name = Gm, affected by kineticLaw
	xdot(5) = (1/(compartment_Biofilm))*(( 1.0 * reaction_Gp_diffusion_to_the_interior_cells) + (-1.0 * reaction_Diffusion_of_Glutamate_from_middle_to_interior_layer) + (-1.0 * reaction_Production_of_Ammonia_in_middle_layer_using_glutamate) + (-1.0 * reaction_Use_of_glutamate_in_middle_layer_for_biomass_production));
	
% Species:   id = Gi, name = Gi, affected by kineticLaw
	xdot(6) = (1/(compartment_Biofilm))*((-1.0 * reaction_Production_of_Ammonia_using_Glutamate_by_inner_cells) + ( 1.0 * reaction_Diffusion_of_Glutamate_from_middle_to_interior_layer));
end

function z=function_for_biomass_production(k2,Ap,Gp), z=(k2*Ap*Gp);end

function z=function_for_diffusion_of_Ammonia_from_interior_to_middle_layer(k3,Ai), z=(k3*Ai);end

function z=function_for_production_of_Ammonia_using_Glutamate_by_inner_cells(k5,Gi), z=(k5*Gi);end

function z=function_Gp_diffusion_to_the_interior_cells(k4,Gp), z=(k4*Gp);end

function z=function_for_positive_feedback_of_Gp_on_itself(k1,Ge,Gp), z=(k1*Ge*Gp);end

function z=function_for_ammonia_diffusion_from_middle_layer_to_periphery(k3,Am), z=(k3*Am);end

function z=function_for_loss_of_Ammonia_du_to_diffusion_to_the_environment(k3,Ap), z=(k3*Ap);end

function z=function_for_diffusion_of_Glutamate_from_middle_to_interior_layer(k4,Gm), z=(k4*Gm);end

function z=function_for_production_of_Ammonia_in_middle_layer_using_glutamate(k5,Gm), z=(k5*Gm);end

function z=function_for_use_of_glutamate_in_middle_layer_for_biomass_production(k2,Am,Gm), z=(k2*Am*Gm);end

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


