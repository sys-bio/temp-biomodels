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
% Model name = Perelson1993 - HIVinfection_CD4Tcells_ModelA
%
% isDescribedBy http://identifiers.org/pubmed/8096155
% is http://identifiers.org/biomodels.db/MODEL1006230079
% is http://identifiers.org/biomodels.db/BIOMD0000000874
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 1000.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.001;


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

% Compartment: id = COMpartment, name = COMpartment, constant
	compartment_COMpartment=1.0;
% Parameter:   id =  s, name = s
	global_par_s=10.0;
% Parameter:   id =  r, name = r
	global_par_r=0.03;
% Parameter:   id =  T_max, name = T_max
	global_par_T_max=1500.0;
% Parameter:   id =  mu_T, name = mu_T
	global_par_mu_T=0.02;
% Parameter:   id =  k_1, name = k_1
	global_par_k_1=2.4E-5;
% Parameter:   id =  k_2, name = k_2
	global_par_k_2=0.003;
% Parameter:   id =  mu_b, name = mu_b
	global_par_mu_b=0.24;
% Parameter:   id =  mu_V, name = mu_V
	global_par_mu_V=2.4;
% Parameter:   id =  N, name = N
	global_par_N=1000.0;
% Parameter:   id =  T_tot, name = T_tot
% assignmentRule: variable = T_tot
	global_par_T_tot=x(1)+x(2)+x(3);

% Reaction: id = Production_of_CD4__T_cell, name = Production of CD4+ T cell
	reaction_Production_of_CD4__T_cell=compartment_COMpartment*Function_for_production_of_CD4__T_cell(global_par_s, global_par_r, x(1));

% Reaction: id = Death_of_CD4__T_cell, name = Death of CD4+ T cell
	reaction_Death_of_CD4__T_cell=compartment_COMpartment*Function_for_death_of_CD4__T_cell(global_par_mu_T, global_par_k_1, x(4), x(1), global_par_r, x(2), x(3), global_par_T_max);

% Reaction: id = Production_of_Latently_infected_T_cell, name = Production of Latently infected T cell
	reaction_Production_of_Latently_infected_T_cell=compartment_COMpartment*Function_for_production_of_latently_infected_T_cell(global_par_k_1, x(4), x(1));

% Reaction: id = Death_of_Latently_infected_T_cell, name = Death of Latently infected T cell
	reaction_Death_of_Latently_infected_T_cell=compartment_COMpartment*Function_for_death_of_latently_infected_T_cell(global_par_mu_T, x(2), global_par_k_2);

% Reaction: id = Production_of_Actively_infected_T_cell, name = Production of Actively infected T cell
	reaction_Production_of_Actively_infected_T_cell=compartment_COMpartment*Function_for_production_of_actively_infected_T_cell(global_par_k_2, x(2));

% Reaction: id = Death_of_Actively_infected_T_cell, name = Death of Actively infected T cell
	reaction_Death_of_Actively_infected_T_cell=compartment_COMpartment*Function_for_death_of_Actively_infected_T_cell(global_par_mu_b, x(3));

% Reaction: id = Production_of_infectious_virus_particle, name = Production of infectious virus particle
	reaction_Production_of_infectious_virus_particle=compartment_COMpartment*Function_for_production_of_infectious_virus(global_par_N, global_par_mu_b, x(3));

% Reaction: id = Death_of_infectious_virus_particle, name = Death of infectious virus particle
	reaction_Death_of_infectious_virus_particle=compartment_COMpartment*Function_for_Death_of_Infectious_Virus_particle(global_par_k_1, x(4), x(1), global_par_mu_V);

	xdot=zeros(4,1);
	
% Species:   id = T, name = T, affected by kineticLaw
	xdot(1) = (1/(compartment_COMpartment))*(( 1.0 * reaction_Production_of_CD4__T_cell) + (-1.0 * reaction_Death_of_CD4__T_cell));
	
% Species:   id = T_1, name = T_1, affected by kineticLaw
	xdot(2) = (1/(compartment_COMpartment))*(( 1.0 * reaction_Production_of_Latently_infected_T_cell) + (-1.0 * reaction_Death_of_Latently_infected_T_cell));
	
% Species:   id = T_2, name = T_2, affected by kineticLaw
	xdot(3) = (1/(compartment_COMpartment))*(( 1.0 * reaction_Production_of_Actively_infected_T_cell) + (-1.0 * reaction_Death_of_Actively_infected_T_cell));
	
% Species:   id = V, name = V, affected by kineticLaw
	xdot(4) = (1/(compartment_COMpartment))*(( 1.0 * reaction_Production_of_infectious_virus_particle) + (-1.0 * reaction_Death_of_infectious_virus_particle));
end

function z=Function_for_production_of_CD4__T_cell(s,r,T), z=(s+r*T);end

function z=Function_for_death_of_CD4__T_cell(mu_T,k_1,V,T,r,T_1,T_2,T_max), z=(mu_T*T+k_1*V*T+r*T*(T+T_1+T_2)/T_max);end

function z=Function_for_production_of_latently_infected_T_cell(k_1,V,T), z=(k_1*V*T);end

function z=Function_for_death_of_latently_infected_T_cell(mu_T,T_1,k_2), z=(mu_T*T_1+k_2*T_1);end

function z=Function_for_production_of_actively_infected_T_cell(k_2,T_1), z=(k_2*T_1);end

function z=Function_for_death_of_Actively_infected_T_cell(mu_b,T_2), z=(mu_b*T_2);end

function z=Function_for_production_of_infectious_virus(N,mu_b,T_2), z=(N*mu_b*T_2);end

function z=Function_for_Death_of_Infectious_Virus_particle(k_1,V,T,mu_V), z=(k_1*V*T+mu_V*V);end

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


