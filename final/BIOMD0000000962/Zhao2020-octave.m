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
% Model name = Zhao2020 - SUQC model of COVID-19 transmission dynamics in Wuhan, Hubei, and China
%
% isDescribedBy http://identifiers.org/pubmed/32219006
% is http://identifiers.org/biomodels.db/MODEL2008260001
% is http://identifiers.org/biomodels.db/BIOMD0000000962
%


function main()
%Initial conditions vector
	x0=zeros(5,1);
	x0(1) = 9010000.0;
	x0(2) = 258.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 258.0;


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

% Compartment: id = China, name = China, constant
	compartment_China=1.0;
% Parameter:   id =  Trigger_Stage_I, name = Trigger_Stage_I
	global_par_Trigger_Stage_I=1.0;
% Parameter:   id =  Trigger_Stage_II, name = Trigger_Stage_II
	global_par_Trigger_Stage_II=0.0;
% Parameter:   id =  Trigger_Stage_III, name = Trigger_Stage_III
	global_par_Trigger_Stage_III=0.0;
% Parameter:   id =  Trigger_Wuhan, name = Trigger_Wuhan
	global_par_Trigger_Wuhan=1.0;
% Parameter:   id =  Trigger_Hubei, name = Trigger_Hubei
	global_par_Trigger_Hubei=0.0;
% Parameter:   id =  Trigger_China, name = Trigger_China
	global_par_Trigger_China=0.0;
% Parameter:   id =  R, name = R
% Parameter:   id =  gamma_1, name = gamma_1
% Parameter:   id =  gamma_2, name = gamma_2
% Parameter:   id =  sigma, name = sigma
	global_par_sigma=0.0;
% Parameter:   id =  alpha, name = alpha
% Parameter:   id =  beta, name = beta
% Parameter:   id =  Total_Pop, name = Total_Pop
% Parameter:   id =  Total_Pop_Wuhan, name = Total_Pop_Wuhan
	global_par_Total_Pop_Wuhan=9010000.0;
% Parameter:   id =  Total_Pop_Hubei, name = Total_Pop_Hubei
	global_par_Total_Pop_Hubei=4.8E7;
% Parameter:   id =  Total_Pop_China, name = Total_Pop_China
	global_par_Total_Pop_China=1.335E9;
% Parameter:   id =  R_Stage_I_Wuhan, name = R_Stage_I_Wuhan
	global_par_R_Stage_I_Wuhan=4.7092;
% Parameter:   id =  gamma_1_Stage_I_Wuhan, name = gamma_1_Stage_I_Wuhan
	global_par_gamma_1_Stage_I_Wuhan=0.063;
% Parameter:   id =  gamma_2_Stage_I_Wuhan, name = gamma_2_Stage_I_Wuhan
	global_par_gamma_2_Stage_I_Wuhan=0.05;
% Parameter:   id =  R_Stage_II_Wuhan, name = R_Stage_II_Wuhan
	global_par_R_Stage_II_Wuhan=0.7575;
% Parameter:   id =  gamma_1_Stage_II_Wuhan, name = gamma_1_Stage_II_Wuhan
	global_par_gamma_1_Stage_II_Wuhan=0.3917;
% Parameter:   id =  gamma_2_Stage_II_Wuhan, name = gamma_2_Stage_II_Wuhan
	global_par_gamma_2_Stage_II_Wuhan=0.0643;
% Parameter:   id =  R_Stage_III_Wuhan, name = R_Stage_III_Wuhan
	global_par_R_Stage_III_Wuhan=0.4797;
% Parameter:   id =  gamma_1_Stage_III_Wuhan, name = gamma_1_Stage_III_Wuhan
	global_par_gamma_1_Stage_III_Wuhan=0.6185;
% Parameter:   id =  gamma_2_Stage_III_Wuhan, name = gamma_2_Stage_III_Wuhan
	global_par_gamma_2_Stage_III_Wuhan=0.322;
% Parameter:   id =  R_Stage_I_Hubei, name = R_Stage_I_Hubei
	global_par_R_Stage_I_Hubei=5.934;
% Parameter:   id =  gamma_1_Stage_I_Hubei, name = gamma_1_Stage_I_Hubei
	global_par_gamma_1_Stage_I_Hubei=0.05;
% Parameter:   id =  gamma_2_Stage_I_Hubei, name = gamma_2_Stage_I_Hubei
	global_par_gamma_2_Stage_I_Hubei=0.05;
% Parameter:   id =  R_Stage_II_Hubei, name = R_Stage_II_Hubei
	global_par_R_Stage_II_Hubei=0.6079;
% Parameter:   id =  gamma_1_Stage_II_Hubei, name = gamma_1_Stage_II_Hubei
	global_par_gamma_1_Stage_II_Hubei=0.488;
% Parameter:   id =  gamma_2_Stage_II_Hubei, name = gamma_2_Stage_II_Hubei
	global_par_gamma_2_Stage_II_Hubei=0.1914;
% Parameter:   id =  R_Stage_I_China, name = R_Stage_I_China
	global_par_R_Stage_I_China=1.5283;
% Parameter:   id =  gamma_1_Stage_I_China, name = gamma_1_Stage_I_China
	global_par_gamma_1_Stage_I_China=0.1941;
% Parameter:   id =  gamma_2_Stage_I_China, name = gamma_2_Stage_I_China
	global_par_gamma_2_Stage_I_China=0.05;
% Parameter:   id =  R_Stage_II_China, name = R_Stage_II_China
	global_par_R_Stage_II_China=0.5753;
% Parameter:   id =  gamma_1_Stage_II_China, name = gamma_1_Stage_II_China
	global_par_gamma_1_Stage_II_China=0.5157;
% Parameter:   id =  gamma_2_Stage_II_China, name = gamma_2_Stage_II_China
	global_par_gamma_2_Stage_II_China=0.2189;
% Parameter:   id =  ModelValue_6, name = Initial for R
	global_par_ModelValue_6=4.7092;
% Parameter:   id =  ModelValue_22, name = Initial for R_Stage_III_Wuhan
	global_par_ModelValue_22=0.4797;
% Parameter:   id =  ModelValue_34, name = Initial for R_Stage_II_China
	global_par_ModelValue_34=0.5753;
% Parameter:   id =  ModelValue_28, name = Initial for R_Stage_II_Hubei
	global_par_ModelValue_28=0.6079;
% Parameter:   id =  ModelValue_19, name = Initial for R_Stage_II_Wuhan
	global_par_ModelValue_19=0.7575;
% Parameter:   id =  ModelValue_31, name = Initial for R_Stage_I_China
	global_par_ModelValue_31=1.5283;
% Parameter:   id =  ModelValue_25, name = Initial for R_Stage_I_Hubei
	global_par_ModelValue_25=5.934;
% Parameter:   id =  ModelValue_16, name = Initial for R_Stage_I_Wuhan
	global_par_ModelValue_16=4.7092;
% Parameter:   id =  ModelValue_15, name = Initial for Total_Pop_China
	global_par_ModelValue_15=1.335E9;
% Parameter:   id =  ModelValue_14, name = Initial for Total_Pop_Hubei
	global_par_ModelValue_14=4.8E7;
% Parameter:   id =  ModelValue_13, name = Initial for Total_Pop_Wuhan
	global_par_ModelValue_13=9010000.0;
% Parameter:   id =  ModelValue_5, name = Initial for Trigger_China
	global_par_ModelValue_5=0.0;
% Parameter:   id =  ModelValue_4, name = Initial for Trigger_Hubei
	global_par_ModelValue_4=0.0;
% Parameter:   id =  ModelValue_2, name = Initial for Trigger_Stage_III
	global_par_ModelValue_2=0.0;
% Parameter:   id =  ModelValue_1, name = Initial for Trigger_Stage_II
	global_par_ModelValue_1=0.0;
% Parameter:   id =  ModelValue_0, name = Initial for Trigger_Stage_I
	global_par_ModelValue_0=1.0;
% Parameter:   id =  ModelValue_3, name = Initial for Trigger_Wuhan
	global_par_ModelValue_3=1.0;
% Parameter:   id =  ModelValue_7, name = Initial for gamma_1
	global_par_ModelValue_7=0.063;
% Parameter:   id =  ModelValue_23, name = Initial for gamma_1_Stage_III_Wuhan
	global_par_ModelValue_23=0.6185;
% Parameter:   id =  ModelValue_35, name = Initial for gamma_1_Stage_II_China
	global_par_ModelValue_35=0.5157;
% Parameter:   id =  ModelValue_29, name = Initial for gamma_1_Stage_II_Hubei
	global_par_ModelValue_29=0.488;
% Parameter:   id =  ModelValue_20, name = Initial for gamma_1_Stage_II_Wuhan
	global_par_ModelValue_20=0.3917;
% Parameter:   id =  ModelValue_32, name = Initial for gamma_1_Stage_I_China
	global_par_ModelValue_32=0.1941;
% Parameter:   id =  ModelValue_26, name = Initial for gamma_1_Stage_I_Hubei
	global_par_ModelValue_26=0.05;
% Parameter:   id =  ModelValue_17, name = Initial for gamma_1_Stage_I_Wuhan
	global_par_ModelValue_17=0.063;
% Parameter:   id =  ModelValue_8, name = Initial for gamma_2
	global_par_ModelValue_8=0.05;
% Parameter:   id =  ModelValue_24, name = Initial for gamma_2_Stage_III_Wuhan
	global_par_ModelValue_24=0.322;
% Parameter:   id =  ModelValue_36, name = Initial for gamma_2_Stage_II_China
	global_par_ModelValue_36=0.2189;
% Parameter:   id =  ModelValue_30, name = Initial for gamma_2_Stage_II_Hubei
	global_par_ModelValue_30=0.1914;
% Parameter:   id =  ModelValue_21, name = Initial for gamma_2_Stage_II_Wuhan
	global_par_ModelValue_21=0.0643;
% Parameter:   id =  ModelValue_33, name = Initial for gamma_2_Stage_I_China
	global_par_ModelValue_33=0.05;
% Parameter:   id =  ModelValue_27, name = Initial for gamma_2_Stage_I_Hubei
	global_par_ModelValue_27=0.05;
% Parameter:   id =  ModelValue_18, name = Initial for gamma_2_Stage_I_Wuhan
	global_par_ModelValue_18=0.05;
% Parameter:   id =  ModelValue_9, name = Initial for sigma
	global_par_ModelValue_9=0.0;
% assignmentRule: variable = gamma_1
	global_par_gamma_1=global_par_ModelValue_3*(global_par_ModelValue_0*global_par_ModelValue_17+global_par_ModelValue_1*global_par_ModelValue_20+global_par_ModelValue_2*global_par_ModelValue_23)+global_par_ModelValue_4*(global_par_ModelValue_0*global_par_ModelValue_26+global_par_ModelValue_1*global_par_ModelValue_29)+global_par_ModelValue_5*(global_par_ModelValue_0*global_par_ModelValue_32+global_par_ModelValue_1*global_par_ModelValue_35);
% assignmentRule: variable = Total_Pop
	global_par_Total_Pop=global_par_ModelValue_3*global_par_ModelValue_13+global_par_ModelValue_4*global_par_ModelValue_14+global_par_ModelValue_5*global_par_ModelValue_15;
% assignmentRule: variable = R
	global_par_R=global_par_ModelValue_3*(global_par_ModelValue_0*global_par_ModelValue_16+global_par_ModelValue_1*global_par_ModelValue_19+global_par_ModelValue_2*global_par_ModelValue_22)+global_par_ModelValue_4*(global_par_ModelValue_0*global_par_ModelValue_25+global_par_ModelValue_1*global_par_ModelValue_28)+global_par_ModelValue_5*(global_par_ModelValue_0*global_par_ModelValue_31+global_par_ModelValue_1*global_par_ModelValue_34);
% assignmentRule: variable = alpha
	global_par_alpha=global_par_ModelValue_6*global_par_ModelValue_7;
% assignmentRule: variable = gamma_2
	global_par_gamma_2=global_par_ModelValue_3*(global_par_ModelValue_0*global_par_ModelValue_18+global_par_ModelValue_1*global_par_ModelValue_21+global_par_ModelValue_2*global_par_ModelValue_24)+global_par_ModelValue_4*(global_par_ModelValue_0*global_par_ModelValue_27+global_par_ModelValue_1*global_par_ModelValue_30)+global_par_ModelValue_5*(global_par_ModelValue_0*global_par_ModelValue_33+global_par_ModelValue_1*global_par_ModelValue_36);
% assignmentRule: variable = beta
	global_par_beta=global_par_ModelValue_8+(1-global_par_ModelValue_8)*global_par_ModelValue_9;
% assignmentRule: variable = Cumulative_Infected
	x(5)=x(4)+x(3)+x(2);

% Reaction: id = Susceptible_to_Unquarantined, name = Susceptible_to_Unquarantined
	reaction_Susceptible_to_Unquarantined=compartment_China*Rate_Law_for_R1(global_par_alpha, x(1), x(2), global_par_Total_Pop);

% Reaction: id = Unquarantined_to_Quarantined, name = Unquarantined_to_Quarantined
	reaction_Unquarantined_to_Quarantined=compartment_China*global_par_gamma_1*x(2);

% Reaction: id = Quarantined_to_Confirmed, name = Quarantined_to_Confirmed
	reaction_Quarantined_to_Confirmed=compartment_China*global_par_beta*x(3);

	xdot=zeros(5,1);
	
% Species:   id = Susceptible, name = Susceptible, affected by kineticLaw
	xdot(1) = (1/(compartment_China))*((-1.0 * reaction_Susceptible_to_Unquarantined));
	
% Species:   id = Unquarantined_Infected, name = Unquarantined_Infected, affected by kineticLaw
	xdot(2) = (1/(compartment_China))*(( 1.0 * reaction_Susceptible_to_Unquarantined) + (-1.0 * reaction_Unquarantined_to_Quarantined));
	
% Species:   id = Quarantined_Infected, name = Quarantined_Infected, affected by kineticLaw
	xdot(3) = (1/(compartment_China))*(( 1.0 * reaction_Unquarantined_to_Quarantined) + (-1.0 * reaction_Quarantined_to_Confirmed));
	
% Species:   id = Confirmed_Infected, name = Confirmed_Infected, affected by kineticLaw
	xdot(4) = (1/(compartment_China))*(( 1.0 * reaction_Quarantined_to_Confirmed));
	
% Species:   id = Cumulative_Infected, name = Cumulative_Infected, involved in a rule 	xdot(5) = x(5);
end

function z=Rate_Law_for_R1(alpha,S,U,N), z=(alpha*S*U/N);end

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


