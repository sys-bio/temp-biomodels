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
% Model name = Almuallem2020 - Virus-macrophage-tumour interactions in oncolytic viral therapies
%
% is http://identifiers.org/biomodels.db/MODEL2108190002
% is http://identifiers.org/biomodels.db/BIOMD0000001033
%


function main()
%Initial conditions vector
	x0=zeros(6,1);
	x0(1) = 5.0E-4;
	x0(2) = 0.0;
	x0(3) = 2.5E-6;
	x0(4) = 2.5E-7;
	x0(5) = 0.0;
	x0(6) = 1.0E-5;


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

% Compartment: id = Whole_organism, name = Whole_organism, constant
	compartment_Whole_organism=1.0;
% Parameter:   id =  r, name = r
	global_par_r=0.62;
% Parameter:   id =  K1, name = K1
	global_par_K1=1.0;
% Parameter:   id =  g1, name = g1
	global_par_g1=0.0;
% Parameter:   id =  beta1, name = beta1
	global_par_beta1=10.0;
% Parameter:   id =  d_u, name = d_u
	global_par_d_u=1.0;
% Parameter:   id =  d_m, name = d_m
	global_par_d_m=0.2;
% Parameter:   id =  delta_i1, name = delta_i1
	global_par_delta_i1=0.4;
% Parameter:   id =  d_i, name = d_i
	global_par_d_i=2.0;
% Parameter:   id =  a1_v, name = a1_v
	global_par_a1_v=0.025;
% Parameter:   id =  a1_i, name = a1_i
	global_par_a1_i=2.5E-4;
% Parameter:   id =  a1_u, name = a1_u
	global_par_a1_u=1.25E-7;
% Parameter:   id =  p_m1, name = p_m1
	global_par_p_m1=0.57;
% Parameter:   id =  r0_m1, name = r0_m1
	global_par_r0_m1=0.001;
% Parameter:   id =  r0_m2, name = r0_m2
	global_par_r0_m2=0.001;
% Parameter:   id =  r_u_m1, name = r_u_m1
	global_par_r_u_m1=1.0;
% Parameter:   id =  r_v_m2, name = r_v_m2
	global_par_r_v_m2=0.0;
% Parameter:   id =  d_e1, name = d_e1
	global_par_d_e1=0.88;
% Parameter:   id =  d_e2, name = d_e2
	global_par_d_e2=0.12;
% Parameter:   id =  p_m2, name = p_m2
	global_par_p_m2=0.57;
% Parameter:   id =  K2, name = K2
	global_par_K2=1.0;
% Parameter:   id =  g2, name = g2
	global_par_g2=0.0;
% Parameter:   id =  beta2, name = beta2
	global_par_beta2=500.0;
% Parameter:   id =  delta_i2, name = delta_i2
	global_par_delta_i2=0.52;
% Parameter:   id =  b, name = b
	global_par_b=25.0;
% Parameter:   id =  c, name = c
	global_par_c=8.0;
% Parameter:   id =  omega, name = omega
	global_par_omega=2.0;
% Parameter:   id =  delta_v, name = delta_v
	global_par_delta_v=5.0E-5;
% Parameter:   id =  h_u, name = h_u
	global_par_h_u=1.0E-4;
% Parameter:   id =  h_v, name = h_v
	global_par_h_v=1.0E-6;
% Parameter:   id =  h_m, name = h_m
	global_par_h_m=2.5E-4;
% Parameter:   id =  a2_u, name = a2_u
	global_par_a2_u=2.5E-7;

% Reaction: id = tumour_growth_production, name = tumour_growth/production
	reaction_tumour_growth_production=compartment_Whole_organism*Rate_Law_for_tumour_growth_production(global_par_r, x(1), global_par_K1, global_par_d_m, x(4), global_par_h_m);

% Reaction: id = tumour_infection, name = tumour_infection
	reaction_tumour_infection=compartment_Whole_organism*Rate_Law_for_tumour_infection(global_par_beta1, x(6), x(1));

% Reaction: id = tumour_elimination, name = tumour_elimination
	reaction_tumour_elimination=compartment_Whole_organism*Rate_Law_for_tumour_elimination(global_par_d_u, x(1), x(3), global_par_h_m, x(4));

% Reaction: id = infected_tumour_lysis_elimination, name = infected_tumour_lysis/elimination
	reaction_infected_tumour_lysis_elimination=compartment_Whole_organism*Rate_Law_for_infected_tumour_lysis_elimination(global_par_delta_i1, x(2), global_par_d_i, x(3), global_par_h_m, x(4));

% Reaction: id = M1_activation_growth, name = M1_activation/growth
	reaction_M1_activation_growth=compartment_Whole_organism*Rate_Law_for_M1_activation_growth(global_par_a1_v, x(6), global_par_a1_i, x(2), global_par_a1_u, x(1), global_par_p_m1, x(3), x(4), global_par_K2);

% Reaction: id = M1_polarisation, name = M1_polarisation
	reaction_M1_polarisation=compartment_Whole_organism*Rate_Law_for_M1_polarisation(x(3), global_par_r0_m1, global_par_r_u_m1, x(1), global_par_h_u, x(4), global_par_r0_m2, global_par_r_v_m2, x(6), global_par_h_v);

% Reaction: id = M1_death, name = M1_death
	reaction_M1_death=compartment_Whole_organism*global_par_d_e1*x(3);

% Reaction: id = M2_activation_growth, name = M2_activation/growth
	reaction_M2_activation_growth=compartment_Whole_organism*Rate_Law_for_M2_activation_growth(global_par_a2_u, x(1), global_par_p_m2, x(4), x(3), global_par_K2);

% Reaction: id = M2_infection, name = M2_infection
	reaction_M2_infection=compartment_Whole_organism*Rate_Law_for_M2_infection(global_par_beta2, x(6), x(4));

% Reaction: id = M2_death, name = M2_death
	reaction_M2_death=compartment_Whole_organism*global_par_d_e2*x(4);

% Reaction: id = infected_M2_lysis, name = infected_M2_lysis
	reaction_infected_M2_lysis=compartment_Whole_organism*global_par_delta_i2*x(5);

% Reaction: id = virus_production, name = virus_production
	reaction_virus_production=compartment_Whole_organism*Rate_Law_for_virus_production(global_par_b, global_par_delta_i1, x(2), global_par_c, global_par_delta_i2, x(5));

% Reaction: id = virus_death_elimination, name = virus_death/elimination
	reaction_virus_death_elimination=compartment_Whole_organism*Rate_Law_for_virus_death_elimination(global_par_omega, x(6), global_par_delta_v, x(3), global_par_h_m, x(4));

	xdot=zeros(6,1);
	
% Species:   id = Uninfected_tumour_cells, name = Uninfected_tumour_cells, affected by kineticLaw
	xdot(1) = (1/(compartment_Whole_organism))*(( 1.0 * reaction_tumour_growth_production) + (-1.0 * reaction_tumour_infection) + (-1.0 * reaction_tumour_elimination));
	
% Species:   id = Infected_tumour_cells, name = Infected tumour_cells, affected by kineticLaw
	xdot(2) = (1/(compartment_Whole_organism))*(( 1.0 * reaction_tumour_infection) + (-1.0 * reaction_infected_tumour_lysis_elimination));
	
% Species:   id = M1_macrophages, name = M1_macrophages, affected by kineticLaw
	xdot(3) = (1/(compartment_Whole_organism))*(( 1.0 * reaction_M1_activation_growth) + (-1.0 * reaction_M1_polarisation) + (-1.0 * reaction_M1_death));
	
% Species:   id = Uninfected_M2_macrophages, name = Uninfected_M2_macrophages, affected by kineticLaw
	xdot(4) = (1/(compartment_Whole_organism))*(( 1.0 * reaction_M1_polarisation) + ( 1.0 * reaction_M2_activation_growth) + (-1.0 * reaction_M2_infection) + (-1.0 * reaction_M2_death));
	
% Species:   id = Infected_M2_macrophages, name = Infected_M2_macrophages, affected by kineticLaw
	xdot(5) = (1/(compartment_Whole_organism))*(( 1.0 * reaction_M2_infection) + (-1.0 * reaction_infected_M2_lysis));
	
% Species:   id = Oncolytic_viruses, name = Oncolytic_viruses, affected by kineticLaw
	xdot(6) = (1/(compartment_Whole_organism))*(( 1.0 * reaction_virus_production) + (-1.0 * reaction_virus_death_elimination));
end

function z=Rate_Law_for_M1_polarisation(M1,r0_m1,r_m1_u,T_u,h_u,M2_u,r0_m2,r_m2_v,V,h_v), z=(M1*(r0_m1+r_m1_u*T_u/(h_u+T_u))-M2_u*(r0_m2+r_m2_v*V/(h_v+V)));end

function z=Rate_Law_for_M2_infection(beta_2,V,M2_u), z=(beta_2*V*M2_u);end

function z=Rate_Law_for_infected_tumour_lysis_elimination(delta_i1,T_i,d_i,M1,h_m,M2_u), z=(delta_i1*T_i+d_i*T_i*M1/(h_m+M2_u));end

function z=Rate_Law_for_M1_activation_growth(a1_v,V,a1_i,T_i,a1_u,T_u,p_m1,M1,M2_u,K2), z=(a1_v*V+a1_i*T_i+a1_u*T_u+p_m1*M1*(1-(M1+M2_u)/K2));end

function z=Rate_Law_for_tumour_elimination(d_u,T_u,M1,h_m,M2_u), z=(d_u*T_u*M1/(h_m+M2_u));end

function z=Rate_Law_for_tumour_infection(beta,V,T_u), z=(beta*V*T_u);end

function z=Rate_Law_for_tumour_growth_production(r,T_u,K1,d_m,M2_u,h_m), z=(r*T_u*(1-T_u/K1)+d_m*T_u*M2_u/(h_m+M2_u));end

function z=Rate_Law_for_virus_death_elimination(omega,V,delta_v,M1,h_m,M2_u), z=(omega*V+delta_v*V*M1/(h_m+M2_u));end

function z=Rate_Law_for_virus_production(b,delta_i1,T_i,c,delta_i2,M2_i), z=(b*delta_i1*T_i+c*delta_i2*M2_i);end

function z=Rate_Law_for_M2_activation_growth(a2_u,T_u,p_m2,M2_u,M1,K2), z=(a2_u*T_u+p_m2*M2_u*(1-(M1+M2_u)/K2));end

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


