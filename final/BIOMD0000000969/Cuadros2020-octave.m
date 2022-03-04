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
% Model name = Cuadros2020 - SIHRD spatiotemporal model of COVID-19 transmission in Ohio
%
% isDescribedBy http://identifiers.org/pubmed/32736312
% is http://identifiers.org/biomodels.db/MODEL2010270001
% is http://identifiers.org/biomodels.db/BIOMD0000000969
%


function main()
%Initial conditions vector
	x0=zeros(28,1);
	x0(1) = 4052876.0;
	x0(2) = 30.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 4431673.0;
	x0(9) = 26.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 0.0;
	x0(13) = 0.0;
	x0(14) = 0.0;
	x0(15) = 1811059.0;
	x0(16) = 10.0;
	x0(17) = 0.0;
	x0(18) = 0.0;
	x0(19) = 0.0;
	x0(20) = 0.0;
	x0(21) = 0.0;
	x0(22) = 1269942.0;
	x0(23) = 6.0;
	x0(24) = 0.0;
	x0(25) = 0.0;
	x0(26) = 0.0;
	x0(27) = 0.0;
	x0(28) = 0.0;


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

% Compartment: id = Counties_with_airports, name = Counties_with_airports, constant
	compartment_Counties_with_airports=1.0;
% Compartment: id = Counties_neighbouring_counties_with_airports, name = Counties_neighbouring_counties_with_airports, constant
	compartment_Counties_neighbouring_counties_with_airports=1.0;
% Compartment: id = Counties_with_highways, name = Counties_with_highways, constant
	compartment_Counties_with_highways=1.0;
% Compartment: id = Low_risk_counties, name = Low_risk_counties, constant
	compartment_Low_risk_counties=1.0;
% Parameter:   id =  lambda_Counties_with_airports, name = lambda_Counties_with_airports
	global_par_lambda_Counties_with_airports=0.41;
% Parameter:   id =  lambda_Counties_neighbouring_counties_with_airports, name = lambda_Counties_neighbouring_counties_with_airports
	global_par_lambda_Counties_neighbouring_counties_with_airports=0.34;
% Parameter:   id =  lambda_Counties_with_highways, name = lambda_Counties_with_highways
	global_par_lambda_Counties_with_highways=0.23;
% Parameter:   id =  lambda_Low_risk_counties, name = lambda_Low_risk_counties
	global_par_lambda_Low_risk_counties=0.13;
% Parameter:   id =  epsilon, name = epsilon
	global_par_epsilon=1.0;
% Parameter:   id =  delta, name = delta
	global_par_delta=0.229885;
% Parameter:   id =  eta_Counties_with_airports, name = eta_Counties_with_airports
	global_par_eta_Counties_with_airports=0.05;
% Parameter:   id =  eta_Counties_neighbouring_counties_with_airports, name = eta_Counties_neighbouring_counties_with_airports
	global_par_eta_Counties_neighbouring_counties_with_airports=0.07;
% Parameter:   id =  eta_Counties_with_highways, name = eta_Counties_with_highways
	global_par_eta_Counties_with_highways=0.07;
% Parameter:   id =  eta_Low_risk_counties, name = eta_Low_risk_counties
	global_par_eta_Low_risk_counties=0.14;
% Parameter:   id =  omega_Counties_with_airports, name = omega_Counties_with_airports
	global_par_omega_Counties_with_airports=0.04;
% Parameter:   id =  omega_Counties_neighbouring_counties_with_airports, name = omega_Counties_neighbouring_counties_with_airports
	global_par_omega_Counties_neighbouring_counties_with_airports=0.06;
% Parameter:   id =  omega_Counties_with_highways, name = omega_Counties_with_highways
	global_par_omega_Counties_with_highways=0.04;
% Parameter:   id =  omega_Low_risk_counties, name = omega_Low_risk_counties
	global_par_omega_Low_risk_counties=0.07;
% Parameter:   id =  xi, name = xi
	global_par_xi=0.06;
% Parameter:   id =  sigma, name = sigma
	global_par_sigma=0.08;
% Parameter:   id =  mu_Counties_with_airports, name = mu_Counties_with_airports
	global_par_mu_Counties_with_airports=0.22;
% Parameter:   id =  mu_Counties_neighbouring_counties_with_airports, name = mu_Counties_neighbouring_counties_with_airports
	global_par_mu_Counties_neighbouring_counties_with_airports=0.17;
% Parameter:   id =  mu_Counties_with_highways, name = mu_Counties_with_highways
	global_par_mu_Counties_with_highways=0.05;
% Parameter:   id =  mu_Low_risk_counties, name = mu_Low_risk_counties
	global_par_mu_Low_risk_counties=0.25;
% Parameter:   id =  psi, name = psi
	global_par_psi=0.01;
% Parameter:   id =  phi, name = phi
	global_par_phi=0.04;
% Parameter:   id =  tau, name = tau
	global_par_tau=0.08;
% Parameter:   id =  gamma, name = gamma
	global_par_gamma=0.02;
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=0.03;
% Parameter:   id =  Population_Counties_with_airports, name = Population_Counties_with_airports
% Parameter:   id =  Population_Counties_neighbouring_counties_with_airports, name = Population_Counties_neighbouring_counties_with_airports
% Parameter:   id =  Population_Counties_with_highways, name = Population_Counties_with_highways
% Parameter:   id =  Population_Low_risk_counties, name = Population_Low_risk_counties
% Parameter:   id =  Cumulative_cases_Counties_with_airports, name = Cumulative_cases_Counties_with_airports
% Parameter:   id =  Cumulative_cases_Counties_neighbouring_counties_with_airports, name = Cumulative_cases_Counties_neighbouring_counties_with_airports
% Parameter:   id =  Cumulative_cases_Counties_with_highways, name = Cumulative_cases_Counties_with_highways
% Parameter:   id =  Cumulative_cases_Low_risk_counties, name = Cumulative_cases_Low_risk_counties
% Parameter:   id =  Total_cumulative_cases, name = Total_cumulative_cases
% Parameter:   id =  Total_hospitalisations, name = Total_hospitalisations
% Parameter:   id =  Total_deaths, name = Total_deaths
% Parameter:   id =  Metabolite_11, name = Initial for Deceased_Counties_neighbouring_counties_with_airports
	global_par_Metabolite_11=0.0;
% Parameter:   id =  Metabolite_13, name = Initial for Discharged_Counties_neighbouring_counties_with_airports
	global_par_Metabolite_13=0.0;
% Parameter:   id =  Metabolite_9, name = Initial for Hospitalised_Counties_neighbouring_counties_with_airports
	global_par_Metabolite_9=0.0;
% Parameter:   id =  Metabolite_10, name = Initial for ICU_Counties_neighbouring_counties_with_airports
	global_par_Metabolite_10=0.0;
% Parameter:   id =  Metabolite_8, name = Initial for Infected_Counties_neighbouring_counties_with_airports
	global_par_Metabolite_8=26.0;
% Parameter:   id =  Metabolite_12, name = Initial for Recovered_Counties_neighbouring_counties_with_airports
	global_par_Metabolite_12=0.0;
% Parameter:   id =  Metabolite_7, name = Initial for Susceptible_Counties_neighbouring_counties_with_airports
	global_par_Metabolite_7=4431673.0;
% Parameter:   id =  Metabolite_4, name = Initial for Deceased_Counties_with_airports
	global_par_Metabolite_4=0.0;
% Parameter:   id =  Metabolite_6, name = Initial for Discharged_Counties_with_airports
	global_par_Metabolite_6=0.0;
% Parameter:   id =  Metabolite_2, name = Initial for Hospitalised_Counties_with_airports
	global_par_Metabolite_2=0.0;
% Parameter:   id =  Metabolite_3, name = Initial for ICU_Counties_with_airports
	global_par_Metabolite_3=0.0;
% Parameter:   id =  Metabolite_1, name = Initial for Infected_Counties_with_airports
	global_par_Metabolite_1=30.0;
% Parameter:   id =  Metabolite_5, name = Initial for Recovered_Counties_with_airports
	global_par_Metabolite_5=0.0;
% Parameter:   id =  Metabolite_0, name = Initial for Susceptible_Counties_with_airports
	global_par_Metabolite_0=4052876.0;
% Parameter:   id =  Metabolite_18, name = Initial for Deceased_Counties_with_highways
	global_par_Metabolite_18=0.0;
% Parameter:   id =  Metabolite_20, name = Initial for Discharged_Counties_with_highways
	global_par_Metabolite_20=0.0;
% Parameter:   id =  Metabolite_16, name = Initial for Hospitalised_Counties_with_highways
	global_par_Metabolite_16=0.0;
% Parameter:   id =  Metabolite_17, name = Initial for ICU_Counties_with_highways
	global_par_Metabolite_17=0.0;
% Parameter:   id =  Metabolite_15, name = Initial for Infected_Counties_with_highways
	global_par_Metabolite_15=10.0;
% Parameter:   id =  Metabolite_19, name = Initial for Recovered_Counties_with_highways
	global_par_Metabolite_19=0.0;
% Parameter:   id =  Metabolite_14, name = Initial for Susceptible_Counties_with_highways
	global_par_Metabolite_14=1811059.0;
% Parameter:   id =  Metabolite_25, name = Initial for Deceased_Low_risk_counties
	global_par_Metabolite_25=0.0;
% Parameter:   id =  Metabolite_27, name = Initial for Discharged_Low_risk_counties
	global_par_Metabolite_27=0.0;
% Parameter:   id =  Metabolite_23, name = Initial for Hospitalised_Low_risk_counties
	global_par_Metabolite_23=0.0;
% Parameter:   id =  Metabolite_24, name = Initial for ICU_Low_risk_counties
	global_par_Metabolite_24=0.0;
% Parameter:   id =  Metabolite_22, name = Initial for Infected_Low_risk_counties
	global_par_Metabolite_22=6.0;
% Parameter:   id =  Metabolite_26, name = Initial for Recovered_Low_risk_counties
	global_par_Metabolite_26=0.0;
% Parameter:   id =  Metabolite_21, name = Initial for Susceptible_Low_risk_counties
	global_par_Metabolite_21=1269942.0;
% assignmentRule: variable = Population_Counties_with_airports
	global_par_Population_Counties_with_airports=global_par_Metabolite_3+global_par_Metabolite_2+global_par_Metabolite_1+global_par_Metabolite_4+global_par_Metabolite_5+global_par_Metabolite_6+global_par_Metabolite_0;
% assignmentRule: variable = Population_Counties_with_highways
	global_par_Population_Counties_with_highways=global_par_Metabolite_17+global_par_Metabolite_16+global_par_Metabolite_15+global_par_Metabolite_18+global_par_Metabolite_19+global_par_Metabolite_20+global_par_Metabolite_14;
% assignmentRule: variable = Cumulative_cases_Counties_with_airports
	global_par_Cumulative_cases_Counties_with_airports=x(2)+x(6)+x(7)+x(5);
% assignmentRule: variable = Population_Low_risk_counties
	global_par_Population_Low_risk_counties=global_par_Metabolite_24+global_par_Metabolite_23+global_par_Metabolite_22+global_par_Metabolite_25+global_par_Metabolite_26+global_par_Metabolite_27+global_par_Metabolite_21;
% assignmentRule: variable = Population_Counties_neighbouring_counties_with_airports
	global_par_Population_Counties_neighbouring_counties_with_airports=global_par_Metabolite_10+global_par_Metabolite_9+global_par_Metabolite_8+global_par_Metabolite_11+global_par_Metabolite_12+global_par_Metabolite_13+global_par_Metabolite_7;
% assignmentRule: variable = Cumulative_cases_Low_risk_counties
	global_par_Cumulative_cases_Low_risk_counties=x(26)+x(27)+x(28)+x(23);
% assignmentRule: variable = Cumulative_cases_Counties_neighbouring_counties_with_airports
	global_par_Cumulative_cases_Counties_neighbouring_counties_with_airports=x(12)+x(13)+x(14)+x(9);
% assignmentRule: variable = Total_hospitalisations
	global_par_Total_hospitalisations=x(5)+x(14)+x(12)+x(19)+x(26)+x(7)+x(21)+x(28);
% assignmentRule: variable = Cumulative_cases_Counties_with_highways
	global_par_Cumulative_cases_Counties_with_highways=x(19)+x(20)+x(21)+x(16);
% assignmentRule: variable = Total_cumulative_cases
	global_par_Total_cumulative_cases=global_par_Cumulative_cases_Counties_with_airports+global_par_Cumulative_cases_Counties_neighbouring_counties_with_airports+global_par_Cumulative_cases_Counties_with_highways+global_par_Cumulative_cases_Low_risk_counties;
% assignmentRule: variable = Total_deaths
	global_par_Total_deaths=x(5)+x(12)+x(19)+x(26);

% Reaction: id = Susceptible_to_Infected_Counties_with_airports, name = Susceptible_to_Infected_Counties_with_airports
	reaction_Susceptible_to_Infected_Counties_with_airports=compartment_Counties_with_airports*Rate_Law_for_reaction(global_par_epsilon, global_par_lambda_Counties_with_airports, x(1), x(2), global_par_Population_Counties_with_airports);

% Reaction: id = Infected_to_Hospitalised_Counties_with_airports, name = Infected_to_Hospitalised_Counties_with_airports
	reaction_Infected_to_Hospitalised_Counties_with_airports=compartment_Counties_with_airports*global_par_eta_Counties_with_airports*x(2);

% Reaction: id = Infected_to_Deceased_Counties_with_airports, name = Infected_to_Deceased_Counties_with_airports
	reaction_Infected_to_Deceased_Counties_with_airports=compartment_Counties_with_airports*global_par_psi*x(2);

% Reaction: id = Infected_to_Recovered_Counties_with_airports, name = Infected_to_Recovered_Counties_with_airports
	reaction_Infected_to_Recovered_Counties_with_airports=compartment_Counties_with_airports*global_par_delta*x(2);

% Reaction: id = Hospitalised_to_ICU_Counties_with_airports, name = Hospitalised_to_ICU_Counties_with_airports
	reaction_Hospitalised_to_ICU_Counties_with_airports=compartment_Counties_with_airports*global_par_omega_Counties_with_airports*x(3);

% Reaction: id = Hospitalised_to_Discharged_Counties_with_airports, name = Hospitalised_to_Discharged_Counties_with_airports
	reaction_Hospitalised_to_Discharged_Counties_with_airports=compartment_Counties_with_airports*global_par_sigma*x(3);

% Reaction: id = ICU_to_Hospitalised_Counties_with_airports, name = ICU_to_Hospitalised_Counties_with_airports
	reaction_ICU_to_Hospitalised_Counties_with_airports=compartment_Counties_with_airports*global_par_xi*x(4);

% Reaction: id = ICU_to_Deceased_Counties_with_airports, name = ICU_to_Deceased_Counties_with_airports
	reaction_ICU_to_Deceased_Counties_with_airports=compartment_Counties_with_airports*global_par_mu_Counties_with_airports*x(4);

% Reaction: id = Susceptible_to_Infected_Counties_neighbouring_counties_with_airports, name = Susceptible_to_Infected_Counties_neighbouring_counties_with_airports
	reaction_Susceptible_to_Infected_Counties_neighbouring_counties_with_airports=Rate_Law_for_reaction_8(x(8), global_par_phi, x(2), global_par_Population_Counties_with_airports, global_par_epsilon, global_par_lambda_Counties_neighbouring_counties_with_airports, x(9), global_par_Population_Counties_neighbouring_counties_with_airports);

% Reaction: id = Infected_to_Hospitalised_Counties_neighbouring_counties_with_airports, name = Infected_to_Hospitalised_Counties_neighbouring_counties_with_airports
	reaction_Infected_to_Hospitalised_Counties_neighbouring_counties_with_airports=compartment_Counties_neighbouring_counties_with_airports*global_par_eta_Counties_neighbouring_counties_with_airports*x(9);

% Reaction: id = Infected_to_Deceased_Counties_neighbouring_counties_with_airports, name = Infected_to_Deceased_Counties_neighbouring_counties_with_airports
	reaction_Infected_to_Deceased_Counties_neighbouring_counties_with_airports=compartment_Counties_neighbouring_counties_with_airports*global_par_psi*x(9);

% Reaction: id = Infected_to_Recovered_Counties_neighbouring_counties_with_airports, name = Infected_to_Recovered_Counties_neighbouring_counties_with_airports
	reaction_Infected_to_Recovered_Counties_neighbouring_counties_with_airports=compartment_Counties_neighbouring_counties_with_airports*global_par_delta*x(9);

% Reaction: id = Hospitalised_to_ICU_Counties_neighbouring_counties_with_airports, name = Hospitalised_to_ICU_Counties_neighbouring_counties_with_airports
	reaction_Hospitalised_to_ICU_Counties_neighbouring_counties_with_airports=compartment_Counties_neighbouring_counties_with_airports*global_par_omega_Counties_neighbouring_counties_with_airports*x(10);

% Reaction: id = Hospitalised_to_Discharged_Counties_neighbouring_counties_with_airports, name = Hospitalised_to_Discharged_Counties_neighbouring_counties_with_airports
	reaction_Hospitalised_to_Discharged_Counties_neighbouring_counties_with_airports=compartment_Counties_neighbouring_counties_with_airports*global_par_sigma*x(10);

% Reaction: id = ICU_to_Hospitalised_Counties_neighbouring_counties_with_airports, name = ICU_to_Hospitalised_Counties_neighbouring_counties_with_airports
	reaction_ICU_to_Hospitalised_Counties_neighbouring_counties_with_airports=compartment_Counties_neighbouring_counties_with_airports*global_par_xi*x(11);

% Reaction: id = ICU_to_Deceased_Counties_neighbouring_counties_with_airports, name = ICU_to_Deceased_Counties_neighbouring_counties_with_airports
	reaction_ICU_to_Deceased_Counties_neighbouring_counties_with_airports=compartment_Counties_neighbouring_counties_with_airports*global_par_mu_Counties_neighbouring_counties_with_airports*x(11);

% Reaction: id = Susceptible_to_Infected_Counties_with_highways, name = Susceptible_to_Infected_Counties_with_highways
	reaction_Susceptible_to_Infected_Counties_with_highways=Rate_Law_for_reaction_16(global_par_tau, x(9), global_par_Population_Counties_neighbouring_counties_with_airports, global_par_epsilon, global_par_lambda_Counties_with_highways, x(16), global_par_Population_Counties_with_highways, x(15));

% Reaction: id = Infected_to_Hospitalised_Counties_with_highways, name = Infected_to_Hospitalised_Counties_with_highways
	reaction_Infected_to_Hospitalised_Counties_with_highways=compartment_Counties_with_highways*global_par_eta_Counties_with_highways*x(16);

% Reaction: id = Infected_to_Deceased_Counties_with_highways, name = Infected_to_Deceased_Counties_with_highways
	reaction_Infected_to_Deceased_Counties_with_highways=compartment_Counties_with_highways*global_par_psi*x(16);

% Reaction: id = Infected_to_Recovered_Counties_with_highways, name = Infected_to_Recovered_Counties_with_highways
	reaction_Infected_to_Recovered_Counties_with_highways=compartment_Counties_with_highways*global_par_delta*x(16);

% Reaction: id = Hospitalised_to_ICU_Counties_with_highways, name = Hospitalised_to_ICU_Counties_with_highways
	reaction_Hospitalised_to_ICU_Counties_with_highways=compartment_Counties_with_highways*global_par_omega_Counties_with_highways*x(17);

% Reaction: id = Hospitalised_to_Discharged_Counties_with_highways, name = Hospitalised_to_Discharged_Counties_with_highways
	reaction_Hospitalised_to_Discharged_Counties_with_highways=compartment_Counties_with_highways*global_par_sigma*x(17);

% Reaction: id = ICU_to_Hospitalised_Counties_with_highways, name = ICU_to_Hospitalised_Counties_with_highways
	reaction_ICU_to_Hospitalised_Counties_with_highways=compartment_Counties_with_highways*global_par_xi*x(18);

% Reaction: id = ICU_to_Deceased_Counties_with_highways, name = ICU_to_Deceased_Counties_with_highways
	reaction_ICU_to_Deceased_Counties_with_highways=compartment_Counties_with_highways*global_par_mu_Counties_with_highways*x(18);

% Reaction: id = Susceptible_to_Infected_Low_risk_counties, name = Susceptible_to_Infected_Low_risk_counties
	reaction_Susceptible_to_Infected_Low_risk_counties=Rate_Law_for_reaction_24(x(22), global_par_gamma, x(9), global_par_Population_Counties_neighbouring_counties_with_airports, global_par_alpha, x(16), global_par_Population_Counties_with_highways, global_par_epsilon, global_par_lambda_Low_risk_counties, x(23), global_par_Population_Low_risk_counties);

% Reaction: id = Infected_to_Hospitalised_Low_risk_counties, name = Infected_to_Hospitalised_Low_risk_counties
	reaction_Infected_to_Hospitalised_Low_risk_counties=compartment_Low_risk_counties*global_par_eta_Low_risk_counties*x(23);

% Reaction: id = Infected_to_Deceased_Low_risk_counties, name = Infected_to_Deceased_Low_risk_counties
	reaction_Infected_to_Deceased_Low_risk_counties=compartment_Low_risk_counties*global_par_psi*x(23);

% Reaction: id = Infected_to_Recovered_Low_risk_counties, name = Infected_to_Recovered_Low_risk_counties
	reaction_Infected_to_Recovered_Low_risk_counties=compartment_Low_risk_counties*global_par_delta*x(23);

% Reaction: id = Hospitalised_to_ICU_Low_risk_counties, name = Hospitalised_to_ICU_Low_risk_counties
	reaction_Hospitalised_to_ICU_Low_risk_counties=compartment_Low_risk_counties*global_par_omega_Low_risk_counties*x(24);

% Reaction: id = Hospitalised_to_Discharged_Low_risk_counties, name = Hospitalised_to_Discharged_Low_risk_counties
	reaction_Hospitalised_to_Discharged_Low_risk_counties=compartment_Low_risk_counties*global_par_sigma*x(24);

% Reaction: id = ICU_to_Hospitalised_Low_risk_counties, name = ICU_to_Hospitalised_Low_risk_counties
	reaction_ICU_to_Hospitalised_Low_risk_counties=compartment_Low_risk_counties*global_par_xi*x(25);

% Reaction: id = ICU_to_Deceased_Low_risk_counties, name = ICU_to_Deceased_Low_risk_counties
	reaction_ICU_to_Deceased_Low_risk_counties=compartment_Low_risk_counties*global_par_mu_Low_risk_counties*x(25);

%Event: id=Lockdown
	event_Lockdown=time > 22;

	if(event_Lockdown) 
		global_par_epsilon=0.75;
	end

	xdot=zeros(28,1);
	
% Species:   id = Susceptible_Counties_with_airports, name = Susceptible_Counties_with_airports, affected by kineticLaw
	xdot(1) = (1/(compartment_Counties_with_airports))*((-1.0 * reaction_Susceptible_to_Infected_Counties_with_airports));
	
% Species:   id = Infected_Counties_with_airports, name = Infected_Counties_with_airports, affected by kineticLaw
	xdot(2) = (1/(compartment_Counties_with_airports))*(( 1.0 * reaction_Susceptible_to_Infected_Counties_with_airports) + (-1.0 * reaction_Infected_to_Hospitalised_Counties_with_airports) + (-1.0 * reaction_Infected_to_Deceased_Counties_with_airports) + (-1.0 * reaction_Infected_to_Recovered_Counties_with_airports));
	
% Species:   id = Hospitalised_Counties_with_airports, name = Hospitalised_Counties_with_airports, affected by kineticLaw
	xdot(3) = (1/(compartment_Counties_with_airports))*(( 1.0 * reaction_Infected_to_Hospitalised_Counties_with_airports) + (-1.0 * reaction_Hospitalised_to_ICU_Counties_with_airports) + (-1.0 * reaction_Hospitalised_to_Discharged_Counties_with_airports) + ( 1.0 * reaction_ICU_to_Hospitalised_Counties_with_airports));
	
% Species:   id = ICU_Counties_with_airports, name = ICU_Counties_with_airports, affected by kineticLaw
	xdot(4) = (1/(compartment_Counties_with_airports))*(( 1.0 * reaction_Hospitalised_to_ICU_Counties_with_airports) + (-1.0 * reaction_ICU_to_Hospitalised_Counties_with_airports) + (-1.0 * reaction_ICU_to_Deceased_Counties_with_airports));
	
% Species:   id = Deceased_Counties_with_airports, name = Deceased_Counties_with_airports, affected by kineticLaw
	xdot(5) = (1/(compartment_Counties_with_airports))*(( 1.0 * reaction_Infected_to_Deceased_Counties_with_airports) + ( 1.0 * reaction_ICU_to_Deceased_Counties_with_airports));
	
% Species:   id = Recovered_Counties_with_airports, name = Recovered_Counties_with_airports, affected by kineticLaw
	xdot(6) = (1/(compartment_Counties_with_airports))*(( 1.0 * reaction_Infected_to_Recovered_Counties_with_airports));
	
% Species:   id = Discharged_Counties_with_airports, name = Discharged_Counties_with_airports, affected by kineticLaw
	xdot(7) = (1/(compartment_Counties_with_airports))*(( 1.0 * reaction_Hospitalised_to_Discharged_Counties_with_airports));
	
% Species:   id = Susceptible_Counties_neighbouring_counties_with_airports, name = Susceptible_Counties_neighbouring_counties_with_airports, affected by kineticLaw
	xdot(8) = (1/(compartment_Counties_neighbouring_counties_with_airports))*((-1.0 * reaction_Susceptible_to_Infected_Counties_neighbouring_counties_with_airports));
	
% Species:   id = Infected_Counties_neighbouring_counties_with_airports, name = Infected_Counties_neighbouring_counties_with_airports, affected by kineticLaw
	xdot(9) = (1/(compartment_Counties_neighbouring_counties_with_airports))*(( 1.0 * reaction_Susceptible_to_Infected_Counties_neighbouring_counties_with_airports) + (-1.0 * reaction_Infected_to_Hospitalised_Counties_neighbouring_counties_with_airports) + (-1.0 * reaction_Infected_to_Deceased_Counties_neighbouring_counties_with_airports) + (-1.0 * reaction_Infected_to_Recovered_Counties_neighbouring_counties_with_airports));
	
% Species:   id = Hospitalised_Counties_neighbouring_counties_with_airports, name = Hospitalised_Counties_neighbouring_counties_with_airports, affected by kineticLaw
	xdot(10) = (1/(compartment_Counties_neighbouring_counties_with_airports))*(( 1.0 * reaction_Infected_to_Hospitalised_Counties_neighbouring_counties_with_airports) + (-1.0 * reaction_Hospitalised_to_ICU_Counties_neighbouring_counties_with_airports) + (-1.0 * reaction_Hospitalised_to_Discharged_Counties_neighbouring_counties_with_airports) + ( 1.0 * reaction_ICU_to_Hospitalised_Counties_neighbouring_counties_with_airports));
	
% Species:   id = ICU_Counties_neighbouring_counties_with_airports, name = ICU_Counties_neighbouring_counties_with_airports, affected by kineticLaw
	xdot(11) = (1/(compartment_Counties_neighbouring_counties_with_airports))*(( 1.0 * reaction_Hospitalised_to_ICU_Counties_neighbouring_counties_with_airports) + (-1.0 * reaction_ICU_to_Hospitalised_Counties_neighbouring_counties_with_airports) + (-1.0 * reaction_ICU_to_Deceased_Counties_neighbouring_counties_with_airports));
	
% Species:   id = Deceased_Counties_neighbouring_counties_with_airports, name = Deceased_Counties_neighbouring_counties_with_airports, affected by kineticLaw
	xdot(12) = (1/(compartment_Counties_neighbouring_counties_with_airports))*(( 1.0 * reaction_Infected_to_Deceased_Counties_neighbouring_counties_with_airports) + ( 1.0 * reaction_ICU_to_Deceased_Counties_neighbouring_counties_with_airports));
	
% Species:   id = Recovered_Counties_neighbouring_counties_with_airports, name = Recovered_Counties_neighbouring_counties_with_airports, affected by kineticLaw
	xdot(13) = (1/(compartment_Counties_neighbouring_counties_with_airports))*(( 1.0 * reaction_Infected_to_Recovered_Counties_neighbouring_counties_with_airports));
	
% Species:   id = Discharged_Counties_neighbouring_counties_with_airports, name = Discharged_Counties_neighbouring_counties_with_airports, affected by kineticLaw
	xdot(14) = (1/(compartment_Counties_neighbouring_counties_with_airports))*(( 1.0 * reaction_Hospitalised_to_Discharged_Counties_neighbouring_counties_with_airports));
	
% Species:   id = Susceptible_Counties_with_highways, name = Susceptible_Counties_with_highways, affected by kineticLaw
	xdot(15) = (1/(compartment_Counties_with_highways))*((-1.0 * reaction_Susceptible_to_Infected_Counties_with_highways));
	
% Species:   id = Infected_Counties_with_highways, name = Infected_Counties_with_highways, affected by kineticLaw
	xdot(16) = (1/(compartment_Counties_with_highways))*(( 1.0 * reaction_Susceptible_to_Infected_Counties_with_highways) + (-1.0 * reaction_Infected_to_Hospitalised_Counties_with_highways) + (-1.0 * reaction_Infected_to_Deceased_Counties_with_highways) + (-1.0 * reaction_Infected_to_Recovered_Counties_with_highways));
	
% Species:   id = Hospitalised_Counties_with_highways, name = Hospitalised_Counties_with_highways, affected by kineticLaw
	xdot(17) = (1/(compartment_Counties_with_highways))*(( 1.0 * reaction_Infected_to_Hospitalised_Counties_with_highways) + (-1.0 * reaction_Hospitalised_to_ICU_Counties_with_highways) + (-1.0 * reaction_Hospitalised_to_Discharged_Counties_with_highways) + ( 1.0 * reaction_ICU_to_Hospitalised_Counties_with_highways));
	
% Species:   id = ICU_Counties_with_highways, name = ICU_Counties_with_highways, affected by kineticLaw
	xdot(18) = (1/(compartment_Counties_with_highways))*(( 1.0 * reaction_Hospitalised_to_ICU_Counties_with_highways) + (-1.0 * reaction_ICU_to_Hospitalised_Counties_with_highways) + (-1.0 * reaction_ICU_to_Deceased_Counties_with_highways));
	
% Species:   id = Deceased_Counties_with_highways, name = Deceased_Counties_with_highways, affected by kineticLaw
	xdot(19) = (1/(compartment_Counties_with_highways))*(( 1.0 * reaction_Infected_to_Deceased_Counties_with_highways) + ( 1.0 * reaction_ICU_to_Deceased_Counties_with_highways));
	
% Species:   id = Recovered_Counties_with_highways, name = Recovered_Counties_with_highways, affected by kineticLaw
	xdot(20) = (1/(compartment_Counties_with_highways))*(( 1.0 * reaction_Infected_to_Recovered_Counties_with_highways));
	
% Species:   id = Discharged_Counties_with_highways, name = Discharged_Counties_with_highways, affected by kineticLaw
	xdot(21) = (1/(compartment_Counties_with_highways))*(( 1.0 * reaction_Hospitalised_to_Discharged_Counties_with_highways));
	
% Species:   id = Susceptible_Low_risk_counties, name = Susceptible_Low_risk_counties, affected by kineticLaw
	xdot(22) = (1/(compartment_Low_risk_counties))*((-1.0 * reaction_Susceptible_to_Infected_Low_risk_counties));
	
% Species:   id = Infected_Low_risk_counties, name = Infected_Low_risk_counties, affected by kineticLaw
	xdot(23) = (1/(compartment_Low_risk_counties))*(( 1.0 * reaction_Susceptible_to_Infected_Low_risk_counties) + (-1.0 * reaction_Infected_to_Hospitalised_Low_risk_counties) + (-1.0 * reaction_Infected_to_Deceased_Low_risk_counties) + (-1.0 * reaction_Infected_to_Recovered_Low_risk_counties));
	
% Species:   id = Hospitalised_Low_risk_counties, name = Hospitalised_Low_risk_counties, affected by kineticLaw
	xdot(24) = (1/(compartment_Low_risk_counties))*(( 1.0 * reaction_Infected_to_Hospitalised_Low_risk_counties) + (-1.0 * reaction_Hospitalised_to_ICU_Low_risk_counties) + (-1.0 * reaction_Hospitalised_to_Discharged_Low_risk_counties) + ( 1.0 * reaction_ICU_to_Hospitalised_Low_risk_counties));
	
% Species:   id = ICU_Low_risk_counties, name = ICU_Low_risk_counties, affected by kineticLaw
	xdot(25) = (1/(compartment_Low_risk_counties))*(( 1.0 * reaction_Hospitalised_to_ICU_Low_risk_counties) + (-1.0 * reaction_ICU_to_Hospitalised_Low_risk_counties) + (-1.0 * reaction_ICU_to_Deceased_Low_risk_counties));
	
% Species:   id = Deceased_Low_risk_counties, name = Deceased_Low_risk_counties, affected by kineticLaw
	xdot(26) = (1/(compartment_Low_risk_counties))*(( 1.0 * reaction_Infected_to_Deceased_Low_risk_counties) + ( 1.0 * reaction_ICU_to_Deceased_Low_risk_counties));
	
% Species:   id = Recovered_Low_risk_counties, name = Recovered_Low_risk_counties, affected by kineticLaw
	xdot(27) = (1/(compartment_Low_risk_counties))*(( 1.0 * reaction_Infected_to_Recovered_Low_risk_counties));
	
% Species:   id = Discharged_Low_risk_counties, name = Discharged_Low_risk_counties, affected by kineticLaw
	xdot(28) = (1/(compartment_Low_risk_counties))*(( 1.0 * reaction_Hospitalised_to_Discharged_Low_risk_counties));
end

function z=Rate_Law_for_reaction(epsilon,lambda_1,S1,I1,N1), z=(epsilon*lambda_1*S1*I1/N1);end

function z=Rate_Law_for_reaction_8(S2,phi,I1,N1,epsilon,lambda_2,I2,N2), z=(S2*(phi*I1/N1+epsilon*lambda_2*I2/N2));end

function z=Rate_Law_for_reaction_16(tau,I2,N2,epsilon,lambda_3,I3,N3,S3), z=(S3*(tau*I2/N2+epsilon*lambda_3*I3/N3));end

function z=Rate_Law_for_reaction_24(S4,gamma,I2,N2,alpha,I3,N3,epsilon,lambda_4,I4,N4), z=(S4*(gamma*I2/N2+alpha*I3/N3+epsilon*lambda_4*I4/N4));end

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


