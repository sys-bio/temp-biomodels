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
% Model name = Westerhoff2020 - systems biology model of the coronavirus pandemic 2020
%
% is http://identifiers.org/biomodels.db/MODEL2102120001
% is http://identifiers.org/biomodels.db/BIOMD0000000988
%


function main()
%Initial conditions vector
	x0=zeros(19,1);
	x0(1) = 2.0;
	x0(2) = 1.0;
	x0(3) = 630000.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 630003.0;
	x0(13) = 1.0;
	x0(14) = 0.0;
	x0(15) = 0.0;
	x0(16) = 0.0;
	x0(17) = 0;
	x0(18) = 0.0;
	x0(19) = 0.1;


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

% Compartment: id = default, name = default, constant
	compartment_default=1.0;
% Parameter:   id =  Testing_Randome, name = test_random
	global_par_Testing_Randome=8.0E-4;
% Parameter:   id =  Total_Infection_coefficient, name = infection_rate
% Parameter:   id =  Normal_death_rate_constant_0, name = death_rate_natural
	global_par_Normal_death_rate_constant_0=3.29E-5;
% Parameter:   id =  Corona_death_rate_constant, name = death_rate_corona
	global_par_Corona_death_rate_constant=0.002;
% Parameter:   id =  Birth_rate, name = birth_rate
	global_par_Birth_rate=3.29E-5;
% Parameter:   id =  Testing_for_Symptoms, name = test_symptoms
	global_par_Testing_for_Symptoms=500.0;
% Parameter:   id =  Corona_recover, name = recovery_rate
	global_par_Corona_recover=0.067;
% Parameter:   id =  Symptoms_appear, name = symptoms_rate
	global_par_Symptoms_appear=0.30165;
% Parameter:   id =  Infection_from_non_tested_no_symptoms_0, name = iota_ntns
	global_par_Infection_from_non_tested_no_symptoms_0=0.508;
% Parameter:   id =  Infection_from_non_tested_symptoms, name = iota_nts
	global_par_Infection_from_non_tested_symptoms=0.25;
% Parameter:   id =  Infection_from_tested_no_symptoms_0, name = iota_tns
	global_par_Infection_from_tested_no_symptoms_0=0.025;
% Parameter:   id =  Infection_from_tested_symptoms, name = iota_ts
	global_par_Infection_from_tested_symptoms=0.025;
% Parameter:   id =  Social_Distance, name = social_distance
% Parameter:   id =  Government_induced_isolation_factor_0, name = lockdown_severity
% Parameter:   id =  Time_government_action_0, name = t_government_action
	global_par_Time_government_action_0=15.0;
% Parameter:   id =  lockdown_duration, name = t_lockdown
	global_par_lockdown_duration=7.0;
% Parameter:   id =  lockdownPause_duration_0, name = t_lockdown_pause
	global_par_lockdownPause_duration_0=7.0;
% Parameter:   id =  n_lockdowns, name = n_lockdowns
% Parameter:   id =  n_pauses, name = n_pauses
	global_par_n_pauses=0.0;
% Parameter:   id =  intermittent_time, name = t_intermittent
% Parameter:   id =  timeFraction_lockdown_0, name = t_lockdown_effective
	global_par_timeFraction_lockdown_0=0.55;
% Parameter:   id =  number_cutoff, name = number_cutoff
	global_par_number_cutoff=0.0;
% Parameter:   id =  symptomatic_numberTolerance_0, name = symptoms_tolerance
	global_par_symptomatic_numberTolerance_0=141.0;
% Parameter:   id =  governmentResponseFactorToDiagnosedInfected_0, name = bool_adaptive_lockdown
	global_par_governmentResponseFactorToDiagnosedInfected_0=0.0;
% Parameter:   id =  social_distancing_factor, name = social_distancing_factor
	global_par_social_distancing_factor=10.0;
% Parameter:   id =  Social_Distance_base, name = social_distance_base
	global_par_Social_Distance_base=534700.0;
% assignmentRule: variable = infected_tested_div10
	x(19)=x(2)*compartment_default/10;
% assignmentRule: variable = total_population_0
	x(12)=x(1)+x(2)+x(3)+x(4)+x(8)+x(7)+x(6)+x(5);
% assignmentRule: variable = recovered_corona_perc_0
	x(15)=(x(8)+x(7))*100/x(12);
% assignmentRule: variable = registered_corona_0
	x(13)=x(2)+x(5)+x(7)+x(9);
% assignmentRule: variable = dead_corona_perc_0
	x(14)=(x(10)+x(9))*100/x(12);
% assignmentRule: variable = dead_noncorona_perc_0
	x(16)=x(11)*100/x(12);
% assignmentRule: variable = frac_coronaDeadOfAllDead_0
	x(17)=100*x(14)/(x(14)+x(16));
% assignmentRule: variable = epidemic_extinguished_bool_0
	x(18)=piecewise(1, (x(1)+x(2)+x(6)+x(5)) < global_par_number_cutoff, 0);
% assignmentRule: variable = n_lockdowns
	global_par_n_lockdowns=piecewise(1, (time-global_par_Time_government_action_0) > (0*global_par_lockdown_duration), 0)+piecewise(1, (time-global_par_Time_government_action_0) > (1*global_par_lockdown_duration), 0)+piecewise(1, (time-global_par_Time_government_action_0) > (2*global_par_lockdown_duration), 0)+piecewise(1, (time-global_par_Time_government_action_0) > (3*global_par_lockdown_duration), 0)+piecewise(1, (time-global_par_Time_government_action_0) > (4*global_par_lockdown_duration), 0)+piecewise(1, (time-global_par_Time_government_action_0) > (5*global_par_lockdown_duration), 0)+piecewise(1, (time-global_par_Time_government_action_0) > (6*global_par_lockdown_duration), 0)+piecewise(1, (time-global_par_Time_government_action_0) > (7*global_par_lockdown_duration), 0)+piecewise(1, (time-global_par_Time_government_action_0) > (8*global_par_lockdown_duration), 0)+piecewise(1, (time-global_par_Time_government_action_0) > (9*global_par_lockdown_duration), 0)+piecewise(1, (time-global_par_Time_government_action_0) > (10*global_par_lockdown_duration), 0)+piecewise(1, (time-global_par_Time_government_action_0) > (11*global_par_lockdown_duration), 0)+piecewise(1, (time-global_par_Time_government_action_0) > (12*global_par_lockdown_duration), 0)+piecewise(1, (time-global_par_Time_government_action_0) > (13*global_par_lockdown_duration), 0)+piecewise(1, (time-global_par_Time_government_action_0) > (14*global_par_lockdown_duration), 0)+piecewise(1, (time-global_par_Time_government_action_0) > (15*global_par_lockdown_duration), 0)+piecewise(1, (time-global_par_Time_government_action_0) > (16*global_par_lockdown_duration), 0)+piecewise(1, (time-global_par_Time_government_action_0) > (17*global_par_lockdown_duration), 0)+piecewise(1, (time-global_par_Time_government_action_0) > (18*global_par_lockdown_duration), 0)+piecewise(1, (time-global_par_Time_government_action_0) > (19*global_par_lockdown_duration), 0)+piecewise(1, (time-global_par_Time_government_action_0) > (20*global_par_lockdown_duration), 0)+piecewise(1, (time-global_par_Time_government_action_0) > (21*global_par_lockdown_duration), 0)+piecewise(1, (time-global_par_Time_government_action_0) > (22*global_par_lockdown_duration), 0)+piecewise(1, (time-global_par_Time_government_action_0) > (23*global_par_lockdown_duration), 0)+piecewise(1, (time-global_par_Time_government_action_0) > (24*global_par_lockdown_duration), 0)+piecewise(1, (time-global_par_Time_government_action_0) > (25*global_par_lockdown_duration), 0)+piecewise(1, (time-global_par_Time_government_action_0) > (26*global_par_lockdown_duration), 0)+piecewise(1, (time-global_par_Time_government_action_0) > (27*global_par_lockdown_duration), 0)+piecewise(1, (time-global_par_Time_government_action_0) > (28*global_par_lockdown_duration), 0)+piecewise(1, (time-global_par_Time_government_action_0) > (29*global_par_lockdown_duration), 0)+piecewise(1, (time-global_par_Time_government_action_0) > (30*global_par_lockdown_duration), 0)+piecewise(1, (time-global_par_Time_government_action_0) > (31*global_par_lockdown_duration), 0)+piecewise(1, (time-global_par_Time_government_action_0) > (32*global_par_lockdown_duration), 0)+piecewise(1, (time-global_par_Time_government_action_0) > (33*global_par_lockdown_duration), 0)+piecewise(1, (time-global_par_Time_government_action_0) > (34*global_par_lockdown_duration), 0)+piecewise(1, (time-global_par_Time_government_action_0) > (35*global_par_lockdown_duration), 0)+piecewise(1, (time-global_par_Time_government_action_0) > (36*global_par_lockdown_duration), 0)+piecewise(1, (time-global_par_Time_government_action_0) > (37*global_par_lockdown_duration), 0)+piecewise(1, (time-global_par_Time_government_action_0) > (38*global_par_lockdown_duration), 0)+piecewise(1, (time-global_par_Time_government_action_0) > (39*global_par_lockdown_duration), 0)+piecewise(1, (time-global_par_Time_government_action_0) > (40*global_par_lockdown_duration), 0)+piecewise(1, (time-global_par_Time_government_action_0) > (41*global_par_lockdown_duration), 0)+piecewise(1, (time-global_par_Time_government_action_0) > (42*global_par_lockdown_duration), 0)+piecewise(1, (time-global_par_Time_government_action_0) > (43*global_par_lockdown_duration), 0)+piecewise(1, (time-global_par_Time_government_action_0) > (44*global_par_lockdown_duration), 0)+piecewise(1, (time-global_par_Time_government_action_0) > (45*global_par_lockdown_duration), 0)+piecewise(1, (time-global_par_Time_government_action_0) > (46*global_par_lockdown_duration), 0)+piecewise(1, (time-global_par_Time_government_action_0) > (47*global_par_lockdown_duration), 0)+piecewise(1, (time-global_par_Time_government_action_0) > (48*global_par_lockdown_duration), 0)+piecewise(1, (time-global_par_Time_government_action_0) > (49*global_par_lockdown_duration), 0)+piecewise(1, (time-global_par_Time_government_action_0) > (50*global_par_lockdown_duration), 0)+piecewise(1, (time-global_par_Time_government_action_0) > (51*global_par_lockdown_duration), 0);
% assignmentRule: variable = intermittent_time
	global_par_intermittent_time=time-global_par_n_lockdowns*global_par_lockdown_duration-global_par_n_pauses*global_par_lockdownPause_duration_0;
% assignmentRule: variable = Government_induced_isolation_factor_0
	global_par_Government_induced_isolation_factor_0=global_par_social_distancing_factor*(1+2.5*x(5)/global_par_symptomatic_numberTolerance_0*piecewise(0, time < global_par_Time_government_action_0, global_par_governmentResponseFactorToDiagnosedInfected_0));
% assignmentRule: variable = Social_Distance
	global_par_Social_Distance=piecewise(global_par_Social_Distance_base*global_par_Government_induced_isolation_factor_0, (time > global_par_Time_government_action_0) && (global_par_intermittent_time < (global_par_Time_government_action_0-global_par_lockdown_duration*(1-global_par_timeFraction_lockdown_0))), global_par_Social_Distance_base);
% assignmentRule: variable = Total_Infection_coefficient
	global_par_Total_Infection_coefficient=(x(1)*global_par_Infection_from_non_tested_no_symptoms_0+x(6)*global_par_Infection_from_non_tested_symptoms+x(2)*global_par_Infection_from_tested_no_symptoms_0+x(5)*global_par_Infection_from_tested_symptoms)*(1-x(18))/global_par_Social_Distance;

% Reaction: id = re1, name = infection_uninfected_nt
	reaction_re1=compartment_default*global_par_Total_Infection_coefficient*x(3);

% Reaction: id = re2, name = test_uninfected
	reaction_re2=compartment_default*global_par_Testing_Randome*x(3);

% Reaction: id = re3, name = infection_uninfected_t
	reaction_re3=compartment_default*global_par_Total_Infection_coefficient*x(4);

% Reaction: id = re4, name = test_infected
	reaction_re4=compartment_default*global_par_Testing_Randome*x(1);

% Reaction: id = re5, name = symptoms_infected_nt
	reaction_re5=compartment_default*global_par_Symptoms_appear*x(1);

% Reaction: id = re6, name = symptoms_infected_t
	reaction_re6=compartment_default*global_par_Symptoms_appear*x(2);

% Reaction: id = re7, name = test_symptoms
	reaction_re7=compartment_default*global_par_Testing_for_Symptoms*x(6);

% Reaction: id = re8, name = death_c_symptoms_t
	reaction_re8=compartment_default*global_par_Corona_death_rate_constant*x(5);

% Reaction: id = re9, name = recovery_symptoms_t
	reaction_re9=compartment_default*global_par_Corona_recover*x(5);

% Reaction: id = re10, name = recovery_symptoms_nt
	reaction_re10=compartment_default*global_par_Corona_recover*x(6);

% Reaction: id = re11, name = population_growth
	reaction_re11=compartment_default*population_growth(const_species_susceptible_0, x(12), global_par_Birth_rate);

% Reaction: id = re12, name = death_nc_uninfected_nt
	reaction_re12=compartment_default*global_par_Normal_death_rate_constant_0*x(3);

% Reaction: id = re13, name = death_recovered_t
	reaction_re13=compartment_default*global_par_Normal_death_rate_constant_0*x(7);

% Reaction: id = re14, name = death_nc_recovered_nt
	reaction_re14=compartment_default*global_par_Normal_death_rate_constant_0*x(8);

% Reaction: id = re15, name = death_c_infected_t
	reaction_re15=compartment_default*global_par_Corona_death_rate_constant*x(2);

% Reaction: id = re16, name = death_c_infected_nt
	reaction_re16=compartment_default*global_par_Corona_death_rate_constant*x(1);

% Reaction: id = re17, name = death_nc_uninfected_t
	reaction_re17=compartment_default*global_par_Normal_death_rate_constant_0*x(4);

% Reaction: id = re18, name = death_c_symptoms_nt
	reaction_re18=compartment_default*global_par_Corona_death_rate_constant*x(6);

% Species:   id = susceptible_0, name = susceptible, constant	const_species_susceptible_0=1.0;

	xdot=zeros(19,1);
	
% Species:   id = infected_nontested_0, name = infected_nontested, affected by kineticLaw
	xdot(1) = (1/(compartment_default))*(( 1.0 * reaction_re1) + ( 1.0 * reaction_re3) + (-1.0 * reaction_re4) + (-1.0 * reaction_re5) + (-1.0 * reaction_re16));
	
% Species:   id = infected_tested_0, name = infected_tested, affected by kineticLaw
	xdot(2) = (1/(compartment_default))*(( 1.0 * reaction_re4) + (-1.0 * reaction_re6) + (-1.0 * reaction_re15));
	
% Species:   id = uninfected_nontested_0, name = uninfected_nontested, affected by kineticLaw
	xdot(3) = (1/(compartment_default))*((-1.0 * reaction_re1) + (-1.0 * reaction_re2) + ( 1.0 * reaction_re11) + (-1.0 * reaction_re12));
	
% Species:   id = uninfected_tested_0, name = uninfected_tested, affected by kineticLaw
	xdot(4) = (1/(compartment_default))*(( 1.0 * reaction_re2) + (-1.0 * reaction_re3) + (-1.0 * reaction_re17));
	
% Species:   id = symptoms_tested_0, name = symptoms_tested, affected by kineticLaw
	xdot(5) = (1/(compartment_default))*(( 1.0 * reaction_re6) + ( 1.0 * reaction_re7) + (-1.0 * reaction_re8) + (-1.0 * reaction_re9));
	
% Species:   id = symptoms_nontested_0, name = symptoms_nontested, affected by kineticLaw
	xdot(6) = (1/(compartment_default))*(( 1.0 * reaction_re5) + (-1.0 * reaction_re7) + (-1.0 * reaction_re10) + (-1.0 * reaction_re18));
	
% Species:   id = recovered_tested_0, name = recovered_tested, affected by kineticLaw
	xdot(7) = (1/(compartment_default))*(( 1.0 * reaction_re9) + (-1.0 * reaction_re13));
	
% Species:   id = recovered_nontested_0, name = recovered_nontested, affected by kineticLaw
	xdot(8) = (1/(compartment_default))*(( 1.0 * reaction_re10) + (-1.0 * reaction_re14));
	
% Species:   id = dead_corona_tested_0, name = dead_corona_tested, affected by kineticLaw
	xdot(9) = (1/(compartment_default))*(( 1.0 * reaction_re8) + ( 1.0 * reaction_re15));
	
% Species:   id = dead_corona_nontested_0, name = dead_corona_nontested, affected by kineticLaw
	xdot(10) = (1/(compartment_default))*(( 1.0 * reaction_re16) + ( 1.0 * reaction_re18));
	
% Species:   id = dead_noncorona_0, name = dead_noncorona, affected by kineticLaw
	xdot(11) = (1/(compartment_default))*(( 1.0 * reaction_re12) + ( 1.0 * reaction_re13) + ( 1.0 * reaction_re14) + ( 1.0 * reaction_re17));
	
% Species:   id = total_population_0, name = total_population, involved in a rule 	xdot(12) = x(12);
	
% Species:   id = registered_corona_0, name = registered_corona, involved in a rule 	xdot(13) = x(13);
	
% Species:   id = dead_corona_perc_0, name = dead_corona_perc, involved in a rule 	xdot(14) = x(14);
	
% Species:   id = recovered_corona_perc_0, name = recovered_corona_perc, involved in a rule 	xdot(15) = x(15);
	
% Species:   id = dead_noncorona_perc_0, name = dead_noncorona_perc, involved in a rule 	xdot(16) = x(16);
	
% Species:   id = frac_coronaDeadOfAllDead_0, name = frac_coronaDeadOfAllDead, involved in a rule 	xdot(17) = x(17);
	
% Species:   id = epidemic_extinguished_bool_0, name = epidemic_extinguished_bool, involved in a rule 	xdot(18) = x(18);
	
% Species:   id = infected_tested_div10, name = infected_tested_div10, involved in a rule 	xdot(19) = x(19);
end

function z=population_growth(S,T,k), z=(S*T*k);end

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


