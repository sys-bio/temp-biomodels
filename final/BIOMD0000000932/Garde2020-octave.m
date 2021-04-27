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
% Model name = Garde2020-Minimal model describing metabolic oscillations in Bacillus subtilis biofilms
%
% isDerivedFrom http://identifiers.org/go/GO:0006536
% isDerivedFrom http://identifiers.org/envo/ENVO:00002034
% isDerivedFrom http://identifiers.org/mamo/MAMO_0000046
% isDerivedFrom http://identifiers.org/ncit/C28240
% isDerivedFrom http://identifiers.org/biomodels.teddy/TEDDY_0000072
% isDerivedFrom http://identifiers.org/taxonomy/1423
% isDerivedFrom urn:miriam:unknown:https://link.springer.com/article/10.1007%2FBF01165134
% is http://identifiers.org/biomodels.db/MODEL2004140001
% is http://identifiers.org/biomodels.db/BIOMD0000000932
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 1.0;
	x0(2) = 1.0;
	x0(3) = 1.0;
	x0(4) = 1.0E11;


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
% Parameter:   id =  k1, name = k1
	global_par_k1=0.3426;
% Parameter:   id =  k2, name = k2
	global_par_k2=5.3;
% Parameter:   id =  k3, name = k3
	global_par_k3=4.0;
% Parameter:   id =  k4, name = k4
	global_par_k4=2.0;
% Parameter:   id =  k5, name = k5
	global_par_k5=2.3;
% Parameter:   id =  GE, name = GE
	global_par_GE=30.0;
% Parameter:   id =  b, name = b
	global_par_b=0.1;

% Reaction: id = The_uptake_of_glutamate_and_Consumption_of_glutamate_and_ammonia, name = The uptake of glutamate and Consumption of glutamate and ammonia
	reaction_The_uptake_of_glutamate_and_Consumption_of_glutamate_and_ammonia=compartment_compartment*Rate_Law_for_reaction_Gp_production(global_par_k1, global_par_GE, x(1), global_par_k2, x(3));

% Reaction: id = Diffusion_of_glutamate, name = Diffusion of glutamate
	reaction_Diffusion_of_glutamate=compartment_compartment*Rate_Law_for_reaction_for_Gp_consumbtion1(global_par_k4, x(1));

% Reaction: id = Consumption_of_glutamate_to_produce_ammonia, name = Consumption of glutamate to produce ammonia
	reaction_Consumption_of_glutamate_to_produce_ammonia=compartment_compartment*Rate_Law_for_reaction_Gi_consumbtion(global_par_k5, x(2));

% Reaction: id = Diffusion_of_ammonia, name = Diffusion of ammonia
	reaction_Diffusion_of_ammonia=compartment_compartment*Rate_Law_for_reaction_for_A_consumbtion(global_par_k3, x(3));

% Reaction: id = The_synthesis_of_biomass_from_ammonia_and_glutamate, name = The synthesis of biomass from ammonia and glutamate
	reaction_The_synthesis_of_biomass_from_ammonia_and_glutamate=compartment_compartment*Rate_Law_for_reaction_for_Biomass(global_par_b, x(3), x(1), x(4));

	xdot=zeros(4,1);
	
% Species:   id = Gp, name = Gp, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_The_uptake_of_glutamate_and_Consumption_of_glutamate_and_ammonia) + (-1.0 * reaction_Diffusion_of_glutamate));
	
% Species:   id = Gi, name = Gi, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_Diffusion_of_glutamate) + (-1.0 * reaction_Consumption_of_glutamate_to_produce_ammonia));
	
% Species:   id = A, name = A, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_Consumption_of_glutamate_to_produce_ammonia) + (-1.0 * reaction_Diffusion_of_ammonia));
	
% Species:   id = B, name = B, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_The_synthesis_of_biomass_from_ammonia_and_glutamate));
end

function z=Rate_Law_for_reaction_for_Gp_consumbtion1(k4,Gp), z=(k4*Gp);end

function z=Rate_Law_for_reaction_Gp_production(K1,GE,Gp,K2,A), z=(K1*GE*Gp-K2*A*Gp);end

function z=Rate_Law_for_reaction_for_A_consumbtion(K3,A), z=(K3*A);end

function z=Rate_Law_for_reaction_Gi_consumbtion(K5,Gi), z=(K5*Gi);end

function z=Rate_Law_for_reaction_for_Biomass(b,A,Gp,B), z=(b*A*Gp*B);end

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


