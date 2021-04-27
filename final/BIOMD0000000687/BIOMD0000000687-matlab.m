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
% Model name = Wodarz2007 - Cytomegalovirus infection model with cytotoxic T lymphocyte response
%
% is http://identifiers.org/biomodels.db/MODEL1006230052
% is http://identifiers.org/biomodels.db/BIOMD0000000687
% isDescribedBy http://identifiers.org/pubmed/17251133
% isDerivedFrom http://identifiers.org/doi/10.1093/intimm/dxh303
% is http://identifiers.org/biomodels.db/MODEL1006230052
%


function main()
%Initial conditions vector
	x0=zeros(15,1);
	x0(1) = 1.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 1.0;
	x0(6) = 1.0;
	x0(7) = 1.0;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 0.0;
	x0(13) = 0.0;
	x0(14) = 0.0;
	x0(15) = 0.0;


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

% Compartment: id = COMpartment, name = Mouse, constant
	compartment_COMpartment=1.0;
% Parameter:   id =  R0, name = R0
% Parameter:   id =  a0, name = a0
	global_par_a0=0.1;
% Parameter:   id =  a1, name = a1
	global_par_a1=0.2;
% Parameter:   id =  k, name = k
	global_par_k=1.0;
% Parameter:   id =  u, name = u
	global_par_u=1.0;
% Parameter:   id =  lambda, name = lambda
	global_par_lambda=10.0;
% Parameter:   id =  d, name = d
	global_par_d=0.1;
% Parameter:   id =  beta, name = beta
	global_par_beta=0.1;
% Parameter:   id =  gamma, name = gamma
	global_par_gamma=0.5;
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=0.2;
% Parameter:   id =  phi, name = phi
	global_par_phi=0.1;
% Parameter:   id =  eta, name = eta
	global_par_eta=0.01;
% Parameter:   id =  pa, name = pa
	global_par_pa=1.0E-6;
% Parameter:   id =  ca, name = ca
	global_par_ca=15.5;
% Parameter:   id =  r, name = r
	global_par_r=1.0;
% Parameter:   id =  ba, name = ba
	global_par_ba=0.1;
% assignmentRule: variable = R0
	global_par_R0=global_par_lambda*global_par_eta/(global_par_d*global_par_a1*(global_par_a0+global_par_eta))*(global_par_beta+global_par_gamma*global_par_phi/(global_par_phi+global_par_d));

% Reaction: id = Host_cell_death, name = Host cell death
	reaction_Host_cell_death=compartment_COMpartment*global_par_d*x(1);

% Reaction: id = Infection_1, name = Infection 1
	reaction_Infection_1=compartment_COMpartment*function(global_par_beta, x(5), x(1));

% Reaction: id = Infection_2, name = Infection 2
	reaction_Infection_2=compartment_COMpartment*function(global_par_gamma, x(5), x(1));

% Reaction: id = Infected_cell_death_1, name = Infected cell death 1
	reaction_Infected_cell_death_1=compartment_COMpartment*global_par_a0*x(2);

% Reaction: id = Infected_cell_infection_progression_1, name = Infected cell infection progression 1
	reaction_Infected_cell_infection_progression_1=compartment_COMpartment*global_par_eta*x(2);

% Reaction: id = Infected_cell_infection_progression_2, name = Infected cell infection progression 2
	reaction_Infected_cell_infection_progression_2=compartment_COMpartment*global_par_phi*x(4);

% Reaction: id = CTL_induced_infected_cell_death_1, name = CTL-induced infected cell death 1
	reaction_CTL_induced_infected_cell_death_1=compartment_COMpartment*function(global_par_pa, x(6), x(2));

% Reaction: id = Infected_cell_death_2, name = Infected cell death 2
	reaction_Infected_cell_death_2=compartment_COMpartment*global_par_a1*x(3);

% Reaction: id = CTL_induced_infected_cell_death_2, name = CTL-induced infected cell death 2
	reaction_CTL_induced_infected_cell_death_2=compartment_COMpartment*function(global_par_pa, x(6), x(3));

% Reaction: id = Infected_cell_death_3, name = Infected cell death 3
	reaction_Infected_cell_death_3=compartment_COMpartment*global_par_d*x(4);

% Reaction: id = Virus_particle_production, name = Virus particle production
	reaction_Virus_particle_production=compartment_COMpartment*function_1(global_par_k, x(3));

% Reaction: id = Viral_particle_degradation, name = Viral particle degradation
	reaction_Viral_particle_degradation=compartment_COMpartment*global_par_u*x(5);

% Reaction: id = Precursor_T_cell_differentiation_2, name = Precursor T-cell differentiation 2
	reaction_Precursor_T_cell_differentiation_2=compartment_COMpartment*function_2(global_par_alpha, x(15));

% Reaction: id = Infection_induced_CTL_proliferation_stimulation, name = Infection-induced CTL proliferation stimulation
	reaction_Infection_induced_CTL_proliferation_stimulation=compartment_COMpartment*function_3(global_par_ca, x(2), x(3), x(6));

% Reaction: id = CTL_cell_death, name = CTL cell death
	reaction_CTL_cell_death=compartment_COMpartment*global_par_ba*x(6);

% Reaction: id = Naive_CTL_division_1, name = Naive CTL division 1
	reaction_Naive_CTL_division_1=compartment_COMpartment*global_par_r*x(7);

% Reaction: id = Naive_CTL_division_2, name = Naive CTL division 2
	reaction_Naive_CTL_division_2=compartment_COMpartment*global_par_r*x(8);

% Reaction: id = Naive_CTL_division_3, name = Naive CTL division 3
	reaction_Naive_CTL_division_3=compartment_COMpartment*global_par_r*x(9);

% Reaction: id = Naive_CTL_division_4, name = Naive CTL division 4
	reaction_Naive_CTL_division_4=compartment_COMpartment*global_par_r*x(10);

% Reaction: id = Naive_CTL_division_5, name = Naive CTL division 5
	reaction_Naive_CTL_division_5=compartment_COMpartment*global_par_r*x(11);

% Reaction: id = Naive_CTL_division_6, name = Naive CTL division 6
	reaction_Naive_CTL_division_6=compartment_COMpartment*global_par_r*x(12);

% Reaction: id = Naive_CTL_division_7, name = Naive CTL division 7
	reaction_Naive_CTL_division_7=compartment_COMpartment*global_par_r*x(13);

% Reaction: id = Naive_CTL_division_8, name = Naive CTL division 8
	reaction_Naive_CTL_division_8=compartment_COMpartment*global_par_r*x(14);

% Reaction: id = Precursor_T_cell_differentiation_1, name = Precursor T-cell differentiation 1
	reaction_Precursor_T_cell_differentiation_1=compartment_COMpartment*global_par_r*x(15);

	xdot=zeros(15,1);
	
% Species:   id = x_0, name = x, affected by kineticLaw
	xdot(1) = (1/(compartment_COMpartment))*(( 1.0 * reaction_Host_cell_proliferation) + (-1.0 * reaction_Host_cell_death) + (-1.0 * reaction_Infection_1) + (-1.0 * reaction_Infection_2));
	
% Species:   id = y_0, name = y_0, affected by kineticLaw
	xdot(2) = (1/(compartment_COMpartment))*(( 1.0 * reaction_Infection_1) + (-1.0 * reaction_Infected_cell_death_1) + (-1.0 * reaction_Infected_cell_infection_progression_1) + ( 1.0 * reaction_Infected_cell_infection_progression_2) + (-1.0 * reaction_CTL_induced_infected_cell_death_1));
	
% Species:   id = y_1, name = y_1, affected by kineticLaw
	xdot(3) = (1/(compartment_COMpartment))*(( 1.0 * reaction_Infected_cell_infection_progression_1) + (-1.0 * reaction_Infected_cell_death_2) + (-1.0 * reaction_CTL_induced_infected_cell_death_2));
	
% Species:   id = L_0, name = L, affected by kineticLaw
	xdot(4) = (1/(compartment_COMpartment))*(( 1.0 * reaction_Infection_2) + (-1.0 * reaction_Infected_cell_infection_progression_2) + (-1.0 * reaction_Infected_cell_death_3));
	
% Species:   id = v_0, name = v, affected by kineticLaw
	xdot(5) = (1/(compartment_COMpartment))*(( 1.0 * reaction_Virus_particle_production) + (-1.0 * reaction_Viral_particle_degradation));
	
% Species:   id = z_a, name = z_a, affected by kineticLaw
	xdot(6) = (1/(compartment_COMpartment))*(( 1.0 * reaction_Precursor_T_cell_differentiation_2) + ( 1.0 * reaction_Infection_induced_CTL_proliferation_stimulation) + (-1.0 * reaction_CTL_cell_death));
	
% Species:   id = m_0_0, name = m_0, affected by kineticLaw
	xdot(7) = (1/(compartment_COMpartment))*((-1.0 * reaction_Naive_CTL_division_1));
	
% Species:   id = m_1_0, name = m_1, affected by kineticLaw
	xdot(8) = (1/(compartment_COMpartment))*(( 2.0 * reaction_Naive_CTL_division_1) + (-1.0 * reaction_Naive_CTL_division_2));
	
% Species:   id = m_2_0, name = m_2, affected by kineticLaw
	xdot(9) = (1/(compartment_COMpartment))*(( 2.0 * reaction_Naive_CTL_division_2) + (-1.0 * reaction_Naive_CTL_division_3));
	
% Species:   id = m_3_0, name = m_3, affected by kineticLaw
	xdot(10) = (1/(compartment_COMpartment))*(( 2.0 * reaction_Naive_CTL_division_3) + (-1.0 * reaction_Naive_CTL_division_4));
	
% Species:   id = m_4_0, name = m_4, affected by kineticLaw
	xdot(11) = (1/(compartment_COMpartment))*(( 2.0 * reaction_Naive_CTL_division_4) + (-1.0 * reaction_Naive_CTL_division_5));
	
% Species:   id = m_5_0, name = m_5, affected by kineticLaw
	xdot(12) = (1/(compartment_COMpartment))*(( 2.0 * reaction_Naive_CTL_division_5) + (-1.0 * reaction_Naive_CTL_division_6));
	
% Species:   id = m_6_0, name = m_6, affected by kineticLaw
	xdot(13) = (1/(compartment_COMpartment))*(( 2.0 * reaction_Naive_CTL_division_6) + (-1.0 * reaction_Naive_CTL_division_7));
	
% Species:   id = m_7_0, name = m_7, affected by kineticLaw
	xdot(14) = (1/(compartment_COMpartment))*(( 2.0 * reaction_Naive_CTL_division_7) + (-1.0 * reaction_Naive_CTL_division_8));
	
% Species:   id = m_8_0, name = m_8, affected by kineticLaw
	xdot(15) = (1/(compartment_COMpartment))*(( 2.0 * reaction_Naive_CTL_division_8) + (-1.0 * reaction_Precursor_T_cell_differentiation_1));
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=function_1(param,mod), z=(param*mod);end

function z=function_3(c_a,y0,y1,za), z=(c_a*(y0+y1)*za);end

function z=function(parameter,modifier,substrate), z=(parameter*modifier*substrate);end

function z=function_2(parameter,modifier), z=(parameter*modifier);end

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


