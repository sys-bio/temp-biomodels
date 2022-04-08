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
% Model name = Al-Tuwairqi2020 - Dynamics of cancer virotherapy with immune response
%
% is http://identifiers.org/biomodels.db/MODEL2108190004
% is http://identifiers.org/biomodels.db/BIOMD0000001035
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 0.5;
	x0(2) = 0.0;
	x0(3) = 0.01;
	x0(4) = 0.01;


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
% Parameter:   id =  r_1, name = r_1
	global_par_r_1=0.36;
% Parameter:   id =  a, name = a
	global_par_a=0.5;
% Parameter:   id =  h_1, name = h_1
	global_par_h_1=0.36;
% Parameter:   id =  d_1, name = d_1
	global_par_d_1=0.1278;
% Parameter:   id =  c, name = c
	global_par_c=0.48;
% Parameter:   id =  h_2, name = h_2
	global_par_h_2=0.16;
% Parameter:   id =  e, name = e
	global_par_e=0.2;
% Parameter:   id =  m_1, name = m_1
	global_par_m_1=0.6;
% Parameter:   id =  m_2, name = m_2
	global_par_m_2=0.29;
% Parameter:   id =  n, name = n
	global_par_n=0.16;
% Parameter:   id =  b, name = b
	global_par_b=2.0;

% Reaction: id = uninfected_cancer_cell_growth, name = uninfected_cancer_cell_growth
	reaction_uninfected_cancer_cell_growth=compartment_Whole_organism*Rate_Law_for_uninfected_tumor_cell_growth(global_par_r_1, x(1), x(2));

% Reaction: id = cancer_cell_infection, name = cancer_cell_infection
	reaction_cancer_cell_infection=compartment_Whole_organism*global_par_a*x(1)*x(3);

% Reaction: id = uninfected_cancer_cell_killing_death, name = uninfected_cancer_cell_killing/death
	reaction_uninfected_cancer_cell_killing_death=compartment_Whole_organism*Rate_Law_for_uninfected_tumor_cell_killing_death(global_par_h_1, x(1), x(4), global_par_d_1);

% Reaction: id = infected_cancer_cell_killing_death, name = infected_cancer_cell_killing/death
	reaction_infected_cancer_cell_killing_death=compartment_Whole_organism*Rate_Law_for_infected_tumor_cell_killing_death(global_par_c, x(2), x(4));

% Reaction: id = virus_lytic_release, name = virus_lytic_release
	reaction_virus_lytic_release=compartment_Whole_organism*Rate_Law_for_virus_lytic_release(global_par_b, x(2));

% Reaction: id = virus_killing_clearence, name = virus_killing/clearence
	reaction_virus_killing_clearence=compartment_Whole_organism*Rate_Law_for_virus_killing_clearence(global_par_h_2, x(3), x(4), global_par_e);

% Reaction: id = immune_cell_proliferation, name = immune_cell_proliferation
	reaction_immune_cell_proliferation=compartment_Whole_organism*Rate_Law_for_immune_cell_proliferation(global_par_m_1, x(2), x(4), global_par_m_2, x(1));

% Reaction: id = immune_cell_clearence, name = immune_cell_clearence
	reaction_immune_cell_clearence=compartment_Whole_organism*global_par_n*x(4);

	xdot=zeros(4,1);
	
% Species:   id = uninfected_cancer_cells, name = uninfected_cancer_cells, affected by kineticLaw
	xdot(1) = (1/(compartment_Whole_organism))*(( 1.0 * reaction_uninfected_cancer_cell_growth) + (-1.0 * reaction_cancer_cell_infection) + (-1.0 * reaction_uninfected_cancer_cell_killing_death));
	
% Species:   id = infected_cancer_cells, name = infected_cancer_cells, affected by kineticLaw
	xdot(2) = (1/(compartment_Whole_organism))*(( 1.0 * reaction_cancer_cell_infection) + (-1.0 * reaction_infected_cancer_cell_killing_death));
	
% Species:   id = free_virus, name = free_virus, affected by kineticLaw
	xdot(3) = (1/(compartment_Whole_organism))*((-1.0 * reaction_cancer_cell_infection) + ( 1.0 * reaction_virus_lytic_release) + (-1.0 * reaction_virus_killing_clearence));
	
% Species:   id = immune_cells, name = immune_cells, affected by kineticLaw
	xdot(4) = (1/(compartment_Whole_organism))*(( 1.0 * reaction_immune_cell_proliferation) + (-1.0 * reaction_immune_cell_clearence));
end

function z=Rate_Law_for_uninfected_tumor_cell_growth(r_1,x,y), z=(r_1*x*(1-(x+y)));end

function z=Rate_Law_for_virus_killing_clearence(h_2,v,z,e), z=(h_2*v*z+e*v);end

function z=Rate_Law_for_uninfected_tumor_cell_killing_death(h_1,x,z,d_1), z=(h_1*x*z+d_1*x);end

function z=Rate_Law_for_immune_cell_proliferation(m_1,y,z,m_2,x), z=(m_1*y*z+m_2*x*z);end

function z=Rate_Law_for_infected_tumor_cell_killing_death(c,y,z), z=(c*y*z+y);end

function z=Rate_Law_for_virus_lytic_release(b,y), z=(b*y);end

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


