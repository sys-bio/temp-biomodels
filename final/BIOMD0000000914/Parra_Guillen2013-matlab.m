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
% Model name = Parra_Guillen2013 -  Mathematical model approach to describe tumour response in mice after vaccine administration_model1
%
% isDescribedBy http://identifiers.org/pubmed/23605806
% is http://identifiers.org/biomodels.db/MODEL2001220002
% is http://identifiers.org/biomodels.db/BIOMD0000000914
%


function main()
%Initial conditions vector
	x0=zeros(5,1);
	x0(1) = 1.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.324;
	x0(5) = 0.0;


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
% Parameter:   id =  lamda, name = lamda
	global_par_lamda=0.354;
% Parameter:   id =  k1, name = k1
	global_par_k1=0.0907;
% Parameter:   id =  P, name = P
	global_par_P=0.844;
% Parameter:   id =  k2_pop1, name = k2_pop1
	global_par_k2_pop1=0.0;
% Parameter:   id =  k3, name = k3
	global_par_k3=1.08;
% Parameter:   id =  k4, name = k4
	global_par_k4=0.039;
% Parameter:   id =  REG_50, name = REG_50
	global_par_REG_50=3.18;
% Parameter:   id =  gamma, name = gamma
	global_par_gamma=5.24;
% Parameter:   id =  Residual_error, name = Residual error
	global_par_Residual_error=0.206;
% Parameter:   id =  k2_pop2, name = k2_pop2
	global_par_k2_pop2=0.0907;

% Reaction: id = Removal_of_CyaA_E7_vaccine, name = Removal of CyaA-E7 vaccine
	reaction_Removal_of_CyaA_E7_vaccine=compartment_compartment*Function_for_removal_of_CyaA_E7_vaccine(global_par_k1, x(1));

% Reaction: id = Triggering_of_intermediate_transit_compartment_TRAN, name = Triggering of intermediate transit compartment TRAN
	reaction_Triggering_of_intermediate_transit_compartment_TRAN=compartment_compartment*Function_for_triggering_of_intermediate_transit_compartment(global_par_k1, x(1));

% Reaction: id = Elimination_of_intermeidate_transit_compartment, name = Elimination of intermeidate transit compartment
	reaction_Elimination_of_intermeidate_transit_compartment=compartment_compartment*Function_for_elimination_of_intermediate_transit_compartment(global_par_k1, x(2));

% Reaction: id = Increase_in_vaccine_signal_to_reduce_tumor_size, name = Increase in vaccine signal to reduce tumor size
	reaction_Increase_in_vaccine_signal_to_reduce_tumor_size=compartment_compartment*Function_for_increase_in_vaccine_signal_to_reduce_tumor_size(global_par_k1, x(2));

% Reaction: id = Reduction_of_vaccine_signal, name = Reduction of vaccine signal
	reaction_Reduction_of_vaccine_signal=compartment_compartment*Function_for_reduction_of_vaccine_signal(global_par_k2_pop2, x(3));

% Reaction: id = Reduction_of_tumor_size, name = Reduction of tumor size
	reaction_Reduction_of_tumor_size=compartment_compartment*Function_for_reduction_of_tumor_size(global_par_k3, global_par_REG_50, global_par_gamma, x(5), x(4), x(3));

% Reaction: id = REguilator_compartment_to_decrease_vaccine_response, name = REguilator compartment to decrease vaccine response
	reaction_REguilator_compartment_to_decrease_vaccine_response=compartment_compartment*Function_for_reglator_compartment_to_decrease_vaccine_response(global_par_k4, x(4));

% Reaction: id = Decrease_in_the_regulator_comparment, name = Decrease in the regulator comparment
	reaction_Decrease_in_the_regulator_comparment=compartment_compartment*Function_for_decrease_in_the_regulator_compartment(global_par_k4, x(5));

	xdot=zeros(5,1);
	
% Species:   id = VAC, name = VAC, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*((-1.0 * reaction_Removal_of_CyaA_E7_vaccine));
	
% Species:   id = TRAN, name = TRAN, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_Triggering_of_intermediate_transit_compartment_TRAN) + (-1.0 * reaction_Elimination_of_intermeidate_transit_compartment));
	
% Species:   id = SVAC, name = SVAC, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_Increase_in_vaccine_signal_to_reduce_tumor_size) + (-1.0 * reaction_Reduction_of_vaccine_signal));
	
% Species:   id = Ts, name = Ts, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_Increase_in_tumor_size) + (-1.0 * reaction_Reduction_of_tumor_size));
	
% Species:   id = REG, name = REG, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_REguilator_compartment_to_decrease_vaccine_response) + (-1.0 * reaction_Decrease_in_the_regulator_comparment));
end

function z=Function_for_removal_of_CyaA_E7_vaccine(k1,VAC), z=(k1*VAC);end

function z=Function_for_triggering_of_intermediate_transit_compartment(k1,VAC), z=(k1*VAC);end

function z=Function_for_increase_in_vaccine_signal_to_reduce_tumor_size(k1,TRAN), z=(k1*TRAN);end

function z=Function_for_elimination_of_intermediate_transit_compartment(k1,TRAN), z=(k1*TRAN);end

function z=Function_for_reduction_of_vaccine_signal(k2,SVAC), z=(k2*SVAC);end

function z=Function_for_increase_in_tumor_size(gamma), z=(gamma);end

function z=Function_for_reglator_compartment_to_decrease_vaccine_response(k4,Ts), z=(k4*Ts);end

function z=Function_for_reduction_of_tumor_size(k3,REG_50,gamma,REG,Ts,SVAC), z=(k3*REG_50^gamma/(REG_50^gamma+REG^gamma)*Ts*SVAC);end

function z=Function_for_decrease_in_the_regulator_compartment(k4,REG), z=(k4*REG);end

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


