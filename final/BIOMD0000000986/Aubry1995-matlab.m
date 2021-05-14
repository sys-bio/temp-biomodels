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
% Model name = Aubry1995 - Multi-compartment model of fluid-phase endocytosis kinetics in Dictyostelium discoideum
%
% isDescribedBy http://identifiers.org/doi/10.1007/BF00713556
% is http://identifiers.org/biomodels.db/MODEL2102090001
% is http://identifiers.org/biomodels.db/BIOMD0000000986
%


function main()
%Initial conditions vector
	x0=zeros(8,1);
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;


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

% Compartment: id = Dictyostelium_discoideum_AX2, name = Dictyostelium discoideum AX2, constant
	compartment_Dictyostelium_discoideum_AX2=1.0;
% Parameter:   id =  FITC_Dextran_max_uptake_rate, name = FITC_Dextran_max_uptake_rate
	global_par_FITC_Dextran_max_uptake_rate=585.0;
% Parameter:   id =  lambda_single_compartment_model_FITC_Dextran, name = lambda_single_compartment_model_FITC_Dextran
	global_par_lambda_single_compartment_model_FITC_Dextran=0.016;
% Parameter:   id =  Pyranine_max_uptake_rate, name = Pyranine_max_uptake_rate
	global_par_Pyranine_max_uptake_rate=578.0;
% Parameter:   id =  lambda_single_compartment_model_Pyranine, name = lambda_single_compartment_model_Pyranine
	global_par_lambda_single_compartment_model_Pyranine=0.01;
% Parameter:   id =  Pyranine_addition_trigger, name = Pyranine_addition_trigger
	global_par_Pyranine_addition_trigger=0.0;
% Parameter:   id =  FITC_Dextran_influx_rate, name = FITC_Dextran_influx_rate
	global_par_FITC_Dextran_influx_rate=6.7;
% Parameter:   id =  lambda_compartment_1, name = lambda_compartment_1
	global_par_lambda_compartment_1=0.037;
% Parameter:   id =  lambda_compartment_2, name = lambda_compartment_2
	global_par_lambda_compartment_2=0.037;
% Parameter:   id =  lambda_compartment_3, name = lambda_compartment_3
	global_par_lambda_compartment_3=0.035;
% Parameter:   id =  Total_FITC_Dextran, name = Total_FITC_Dextran
% Parameter:   id =  Pyranine_influx_rate, name = Pyranine_influx_rate
	global_par_Pyranine_influx_rate=5.3;
% Parameter:   id =  Total_Pyranine, name = Total_Pyranine
% assignmentRule: variable = FITC_Dextran_single_compartment_model
	x(1)=global_par_FITC_Dextran_max_uptake_rate*(1-exp((-global_par_lambda_single_compartment_model_FITC_Dextran)*time));
% assignmentRule: variable = Pyranine_single_compartment_model
	x(2)=global_par_Pyranine_addition_trigger*global_par_Pyranine_max_uptake_rate*(1-exp((-global_par_lambda_single_compartment_model_Pyranine)*(time-90)));
% assignmentRule: variable = Total_FITC_Dextran
	global_par_Total_FITC_Dextran=x(3)+x(4)+x(5);
% assignmentRule: variable = Total_Pyranine
	global_par_Total_Pyranine=x(6)+x(7)+x(8);

% Reaction: id = FITC_Dextran_transfer_between_endo_lysosomal_compartments_1_and_2, name = FITC_Dextran_transfer_between_endo_lysosomal_compartments_1_and_2
	reaction_FITC_Dextran_transfer_between_endo_lysosomal_compartments_1_and_2=compartment_Dictyostelium_discoideum_AX2*global_par_lambda_compartment_1*x(3);

% Reaction: id = FITC_Dextran_transfer_between_endo_lysosomal_compartments_2_and_3, name = FITC_Dextran_transfer_between_endo_lysosomal_compartments_2_and_3
	reaction_FITC_Dextran_transfer_between_endo_lysosomal_compartments_2_and_3=compartment_Dictyostelium_discoideum_AX2*global_par_lambda_compartment_2*x(4);

% Reaction: id = FITC_Dextran_efflux_rate, name = FITC_Dextran_efflux_rate
	reaction_FITC_Dextran_efflux_rate=compartment_Dictyostelium_discoideum_AX2*global_par_lambda_compartment_3*x(5);

% Reaction: id = Pyranine_influx_rate_0, name = Pyranine_influx_rate
	reaction_Pyranine_influx_rate_0=compartment_Dictyostelium_discoideum_AX2*Rate_Law_for_reaction_4(global_par_Pyranine_addition_trigger, global_par_Pyranine_influx_rate);

% Reaction: id = Pyranine_transfer_between_endo_lysosomal_compartments_1_and_2, name = Pyranine_transfer_between_endo_lysosomal_compartments_1_and_2
	reaction_Pyranine_transfer_between_endo_lysosomal_compartments_1_and_2=compartment_Dictyostelium_discoideum_AX2*global_par_lambda_compartment_1*x(6);

% Reaction: id = Pyranine_transfer_between_endo_lysosomal_compartments_2_and_3, name = Pyranine_transfer_between_endo_lysosomal_compartments_2_and_3
	reaction_Pyranine_transfer_between_endo_lysosomal_compartments_2_and_3=compartment_Dictyostelium_discoideum_AX2*global_par_lambda_compartment_2*x(7);

% Reaction: id = Pyranine_efflux_rate, name = Pyranine_efflux_rate
	reaction_Pyranine_efflux_rate=compartment_Dictyostelium_discoideum_AX2*global_par_lambda_compartment_3*x(8);

%Event: id=Addition_of_Pyranine
	event_Addition_of_Pyranine=time > 90;

	if(event_Addition_of_Pyranine) 
		global_par_Pyranine_addition_trigger=1;
	end

	xdot=zeros(8,1);
	
% Species:   id = FITC_Dextran_single_compartment_model, name = FITC_Dextran_single_compartment_model, involved in a rule 	xdot(1) = x(1);
	
% Species:   id = Pyranine_single_compartment_model, name = Pyranine_single_compartment_model, involved in a rule 	xdot(2) = x(2);
	
% Species:   id = FITC_Dextran_three_compartment_model_compartment_1, name = FITC_Dextran_three_compartment_model_compartment_1, affected by kineticLaw
	xdot(3) = (1/(compartment_Dictyostelium_discoideum_AX2))*(( 1.0 * reaction_FITC_Dextran_influx_rate_0) + (-1.0 * reaction_FITC_Dextran_transfer_between_endo_lysosomal_compartments_1_and_2));
	
% Species:   id = FITC_Dextran_three_compartment_model_compartment_2, name = FITC_Dextran_three_compartment_model_compartment_2, affected by kineticLaw
	xdot(4) = (1/(compartment_Dictyostelium_discoideum_AX2))*(( 1.0 * reaction_FITC_Dextran_transfer_between_endo_lysosomal_compartments_1_and_2) + (-1.0 * reaction_FITC_Dextran_transfer_between_endo_lysosomal_compartments_2_and_3));
	
% Species:   id = FITC_Dextran_three_compartment_model_compartment_3, name = FITC_Dextran_three_compartment_model_compartment_3, affected by kineticLaw
	xdot(5) = (1/(compartment_Dictyostelium_discoideum_AX2))*(( 1.0 * reaction_FITC_Dextran_transfer_between_endo_lysosomal_compartments_2_and_3) + (-1.0 * reaction_FITC_Dextran_efflux_rate));
	
% Species:   id = Pyranine_three_compartment_model_compartment_1, name = Pyranine_three_compartment_model_compartment_1, affected by kineticLaw
	xdot(6) = (1/(compartment_Dictyostelium_discoideum_AX2))*(( 1.0 * reaction_Pyranine_influx_rate_0) + (-1.0 * reaction_Pyranine_transfer_between_endo_lysosomal_compartments_1_and_2));
	
% Species:   id = Pyranine_three_compartment_model_compartment_2, name = Pyranine_three_compartment_model_compartment_2, affected by kineticLaw
	xdot(7) = (1/(compartment_Dictyostelium_discoideum_AX2))*(( 1.0 * reaction_Pyranine_transfer_between_endo_lysosomal_compartments_1_and_2) + (-1.0 * reaction_Pyranine_transfer_between_endo_lysosomal_compartments_2_and_3));
	
% Species:   id = Pyranine_three_compartment_model_compartment_3, name = Pyranine_three_compartment_model_compartment_3, affected by kineticLaw
	xdot(8) = (1/(compartment_Dictyostelium_discoideum_AX2))*(( 1.0 * reaction_Pyranine_transfer_between_endo_lysosomal_compartments_2_and_3) + (-1.0 * reaction_Pyranine_efflux_rate));
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=Rate_Law_for_reaction_4(trigger_v,flux), z=(trigger_v*flux);end

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


