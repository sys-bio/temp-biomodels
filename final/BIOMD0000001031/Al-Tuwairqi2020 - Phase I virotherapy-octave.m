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
% Model name = Al-Tuwairqi2020 - Dynamics of cancer virotherapy - Phase I treatment
%
% is http://identifiers.org/biomodels.db/MODEL2108160002
% is http://identifiers.org/biomodels.db/BIOMD0000001031
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 0.6;
	x0(2) = 0.0;
	x0(3) = 0.5;


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

% Compartment: id = Whole_organism, name = Whole_organism, constant
	compartment_Whole_organism=1.0;
% Parameter:   id =  f, name = f
	global_par_f=0.0;
% Parameter:   id =  h, name = h
	global_par_h=0.15;
% Parameter:   id =  m, name = m
	global_par_m=0.02;

% Reaction: id = uninfected_cancer_cell_growth, name = uninfected_cancer_cell_growth
	reaction_uninfected_cancer_cell_growth=compartment_Whole_organism*Rate_Law_for_uninfected_cancer_cell_growth(x(1), global_par_f);

% Reaction: id = cancer_cell_infection, name = cancer_cell_infection
	reaction_cancer_cell_infection=compartment_Whole_organism*Rate_Law_for_cancer_cell_infection(x(1), x(3));

% Reaction: id = infected_cancer_cell_lysis, name = infected_cancer_cell_lysis	% Local Parameter:   id =  k1, name = k1
	reaction_infected_cancer_cell_lysis_k1=1.0;

	reaction_infected_cancer_cell_lysis=compartment_Whole_organism*reaction_infected_cancer_cell_lysis_k1*x(2);

% Reaction: id = virus_infection_removal, name = virus_infection/removal
	reaction_virus_infection_removal=compartment_Whole_organism*Rate_Law_for_virus_infection_removal(global_par_m, x(1), x(3), global_par_h);

	xdot=zeros(3,1);
	
% Species:   id = uninfected_cancer_cells, name = uninfected_cancer_cells, affected by kineticLaw
	xdot(1) = (1/(compartment_Whole_organism))*(( 1.0 * reaction_uninfected_cancer_cell_growth) + (-1.0 * reaction_cancer_cell_infection));
	
% Species:   id = infected_cancer_cells, name = infected_cancer_cells, affected by kineticLaw
	xdot(2) = (1/(compartment_Whole_organism))*(( 1.0 * reaction_cancer_cell_infection) + (-1.0 * reaction_infected_cancer_cell_lysis));
	
% Species:   id = free_virus, name = free_virus, affected by kineticLaw
	xdot(3) = (1/(compartment_Whole_organism))*(( 1.0 * reaction_infected_cancer_cell_lysis) + (-1.0 * reaction_virus_infection_removal));
end

function z=Rate_Law_for_uninfected_cancer_cell_growth(x,f), z=(f*x);end

function z=Rate_Law_for_virus_infection_removal(m,x,v,h), z=(m*x*v+h*v);end

function z=Rate_Law_for_cancer_cell_infection(x,v), z=(x*v);end

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


