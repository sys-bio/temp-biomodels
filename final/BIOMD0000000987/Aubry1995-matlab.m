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
% Model name = Aubry1995 - Nine-compartment model of fluid-phase endocytosis kinetics in Dictyostelium discoideum
%
% isDescribedBy http://identifiers.org/doi/10.1007/BF00713556
% is http://identifiers.org/biomodels.db/MODEL2102100001
% is http://identifiers.org/biomodels.db/BIOMD0000000987
%


function main()
%Initial conditions vector
	x0=zeros(9,1);
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 0.0;


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
% Parameter:   id =  lambda_compartment_1, name = lambda_compartment_1
	global_par_lambda_compartment_1=0.09;
% Parameter:   id =  lambda_compartment_2, name = lambda_compartment_2
	global_par_lambda_compartment_2=0.127;
% Parameter:   id =  lambda_compartment_3, name = lambda_compartment_3
	global_par_lambda_compartment_3=0.099;
% Parameter:   id =  lambda_compartment_4, name = lambda_compartment_4
	global_par_lambda_compartment_4=0.09;
% Parameter:   id =  lambda_compartment_5, name = lambda_compartment_5
	global_par_lambda_compartment_5=0.093;
% Parameter:   id =  lambda_compartment_6, name = lambda_compartment_6
	global_par_lambda_compartment_6=0.098;
% Parameter:   id =  lambda_compartment_7, name = lambda_compartment_7
	global_par_lambda_compartment_7=0.098;
% Parameter:   id =  lambda_compartment_8, name = lambda_compartment_8
	global_par_lambda_compartment_8=0.111;
% Parameter:   id =  lambda_compartment_9, name = lambda_compartment_9
	global_par_lambda_compartment_9=0.096;
% Parameter:   id =  mu, name = mu
	global_par_mu=6.8;
% Parameter:   id =  Total_FITC_Dextran, name = Total_FITC_Dextran
% assignmentRule: variable = Total_FITC_Dextran
	global_par_Total_FITC_Dextran=x(1)+x(2)+x(3)+x(4)+x(5)+x(6)+x(7)+x(8)+x(9);

% Reaction: id = FITC_Dextran_transfer_between_endo_lysosomal_compartments_1_and_2, name = FITC_Dextran_transfer_between_endo_lysosomal_compartments_1_and_2
	reaction_FITC_Dextran_transfer_between_endo_lysosomal_compartments_1_and_2=compartment_Dictyostelium_discoideum_AX2*global_par_lambda_compartment_1*x(1);

% Reaction: id = FITC_Dextran_transfer_between_endo_lysosomal_compartments_2_and_3, name = FITC_Dextran_transfer_between_endo_lysosomal_compartments_2_and_3
	reaction_FITC_Dextran_transfer_between_endo_lysosomal_compartments_2_and_3=compartment_Dictyostelium_discoideum_AX2*global_par_lambda_compartment_2*x(2);

% Reaction: id = FITC_Dextran_efflux_rate, name = FITC_Dextran_efflux_rate
	reaction_FITC_Dextran_efflux_rate=compartment_Dictyostelium_discoideum_AX2*global_par_lambda_compartment_9*x(9);

% Reaction: id = FITC_Dextran_transfer_between_endo_lysosomal_compartments_3_and_4, name = FITC_Dextran_transfer_between_endo_lysosomal_compartments_3_and_4
	reaction_FITC_Dextran_transfer_between_endo_lysosomal_compartments_3_and_4=compartment_Dictyostelium_discoideum_AX2*global_par_lambda_compartment_3*x(3);

% Reaction: id = FITC_Dextran_transfer_between_endo_lysosomal_compartments_4_and_5, name = FITC_Dextran_transfer_between_endo_lysosomal_compartments_4_and_5
	reaction_FITC_Dextran_transfer_between_endo_lysosomal_compartments_4_and_5=compartment_Dictyostelium_discoideum_AX2*global_par_lambda_compartment_4*x(4);

% Reaction: id = FITC_Dextran_transfer_between_endo_lysosomal_compartments_5_and_6, name = FITC_Dextran_transfer_between_endo_lysosomal_compartments_5_and_6
	reaction_FITC_Dextran_transfer_between_endo_lysosomal_compartments_5_and_6=compartment_Dictyostelium_discoideum_AX2*global_par_lambda_compartment_5*x(5);

% Reaction: id = FITC_Dextran_transfer_between_endo_lysosomal_compartments_6_and_7, name = FITC_Dextran_transfer_between_endo_lysosomal_compartments_6_and_7
	reaction_FITC_Dextran_transfer_between_endo_lysosomal_compartments_6_and_7=compartment_Dictyostelium_discoideum_AX2*global_par_lambda_compartment_6*x(6);

% Reaction: id = FITC_Dextran_transfer_between_endo_lysosomal_compartments_7_and_8, name = FITC_Dextran_transfer_between_endo_lysosomal_compartments_7_and_8
	reaction_FITC_Dextran_transfer_between_endo_lysosomal_compartments_7_and_8=compartment_Dictyostelium_discoideum_AX2*global_par_lambda_compartment_7*x(7);

% Reaction: id = FITC_Dextran_transfer_between_endo_lysosomal_compartments_8_and_9, name = FITC_Dextran_transfer_between_endo_lysosomal_compartments_8_and_9
	reaction_FITC_Dextran_transfer_between_endo_lysosomal_compartments_8_and_9=compartment_Dictyostelium_discoideum_AX2*global_par_lambda_compartment_8*x(8);

	xdot=zeros(9,1);
	
% Species:   id = FITC_Dextran_three_compartment_model_compartment_1, name = FITC_Dextran_nine_compartment_model_compartment_1, affected by kineticLaw
	xdot(1) = (1/(compartment_Dictyostelium_discoideum_AX2))*((-1.0 * reaction_FITC_Dextran_transfer_between_endo_lysosomal_compartments_1_and_2) + ( 1.0 * reaction_FITC_Dextran_influx_rate));
	
% Species:   id = FITC_Dextran_three_compartment_model_compartment_2, name = FITC_Dextran_nine_compartment_model_compartment_2, affected by kineticLaw
	xdot(2) = (1/(compartment_Dictyostelium_discoideum_AX2))*(( 1.0 * reaction_FITC_Dextran_transfer_between_endo_lysosomal_compartments_1_and_2) + (-1.0 * reaction_FITC_Dextran_transfer_between_endo_lysosomal_compartments_2_and_3));
	
% Species:   id = FITC_Dextran_three_compartment_model_compartment_3, name = FITC_Dextran_nine_compartment_model_compartment_3, affected by kineticLaw
	xdot(3) = (1/(compartment_Dictyostelium_discoideum_AX2))*(( 1.0 * reaction_FITC_Dextran_transfer_between_endo_lysosomal_compartments_2_and_3) + (-1.0 * reaction_FITC_Dextran_transfer_between_endo_lysosomal_compartments_3_and_4));
	
% Species:   id = FITC_Dextran_nine_compartment_model_compartment_4, name = FITC_Dextran_nine_compartment_model_compartment_4, affected by kineticLaw
	xdot(4) = (1/(compartment_Dictyostelium_discoideum_AX2))*(( 1.0 * reaction_FITC_Dextran_transfer_between_endo_lysosomal_compartments_3_and_4) + (-1.0 * reaction_FITC_Dextran_transfer_between_endo_lysosomal_compartments_4_and_5));
	
% Species:   id = FITC_Dextran_nine_compartment_model_compartment_5, name = FITC_Dextran_nine_compartment_model_compartment_5, affected by kineticLaw
	xdot(5) = (1/(compartment_Dictyostelium_discoideum_AX2))*(( 1.0 * reaction_FITC_Dextran_transfer_between_endo_lysosomal_compartments_4_and_5) + (-1.0 * reaction_FITC_Dextran_transfer_between_endo_lysosomal_compartments_5_and_6));
	
% Species:   id = FITC_Dextran_nine_compartment_model_compartment_6, name = FITC_Dextran_nine_compartment_model_compartment_6, affected by kineticLaw
	xdot(6) = (1/(compartment_Dictyostelium_discoideum_AX2))*(( 1.0 * reaction_FITC_Dextran_transfer_between_endo_lysosomal_compartments_5_and_6) + (-1.0 * reaction_FITC_Dextran_transfer_between_endo_lysosomal_compartments_6_and_7));
	
% Species:   id = FITC_Dextran_nine_compartment_model_compartment_7, name = FITC_Dextran_nine_compartment_model_compartment_7, affected by kineticLaw
	xdot(7) = (1/(compartment_Dictyostelium_discoideum_AX2))*(( 1.0 * reaction_FITC_Dextran_transfer_between_endo_lysosomal_compartments_6_and_7) + (-1.0 * reaction_FITC_Dextran_transfer_between_endo_lysosomal_compartments_7_and_8));
	
% Species:   id = FITC_Dextran_nine_compartment_model_compartment_8, name = FITC_Dextran_nine_compartment_model_compartment_8, affected by kineticLaw
	xdot(8) = (1/(compartment_Dictyostelium_discoideum_AX2))*(( 1.0 * reaction_FITC_Dextran_transfer_between_endo_lysosomal_compartments_7_and_8) + (-1.0 * reaction_FITC_Dextran_transfer_between_endo_lysosomal_compartments_8_and_9));
	
% Species:   id = FITC_Dextran_nine_compartment_model_compartment_9, name = FITC_Dextran_nine_compartment_model_compartment_9, affected by kineticLaw
	xdot(9) = (1/(compartment_Dictyostelium_discoideum_AX2))*((-1.0 * reaction_FITC_Dextran_efflux_rate) + ( 1.0 * reaction_FITC_Dextran_transfer_between_endo_lysosomal_compartments_8_and_9));
end

function z=Constant_flux__irreversible(v), z=(v);end

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


