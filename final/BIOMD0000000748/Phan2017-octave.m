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
% Model name = Phan2017 - innate immune in oncolytic virotherapy
%
% isDescribedBy http://identifiers.org/pubmed/29379572
% is http://identifiers.org/biomodels.db/MODEL1907110001
% is http://identifiers.org/biomodels.db/BIOMD0000000748
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 0.99;
	x0(2) = 0.01;
	x0(3) = 0.01;
	x0(4) = 0.01;


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

% Compartment: id = tumor_microenvironment, name = tumor microenvironment, constant
	compartment_tumor_microenvironment=1.0;
% Parameter:   id =  r, name = r
	global_par_r=0.36;
% Parameter:   id =  a, name = a
	global_par_a=0.11;
% Parameter:   id =  c, name = c
	global_par_c=0.48;
% Parameter:   id =  d, name = d
	global_par_d=0.16;
% Parameter:   id =  e, name = e
	global_par_e=0.2;
% Parameter:   id =  m, name = m
	global_par_m=0.6;
% Parameter:   id =  n, name = n
	global_par_n=0.036;
% Parameter:   id =  b, name = b
	global_par_b=9.0;

% Reaction: id = tumor_growth, name = tumor growth
	reaction_tumor_growth=compartment_tumor_microenvironment*t_g(global_par_r, x(1));

% Reaction: id = tumor_death, name = tumor death
	reaction_tumor_death=compartment_tumor_microenvironment*t_d(global_par_r, x(1));

% Reaction: id = tumor_cross_infection, name = tumor cross-infection
	reaction_tumor_cross_infection=compartment_tumor_microenvironment*t_cross(global_par_r, x(1), x(2));

% Reaction: id = infected_tumor_killing, name = infected tumor killing
	reaction_infected_tumor_killing=compartment_tumor_microenvironment*t_k(global_par_c, x(2), x(4));

% Reaction: id = infected_tumor_death, name = infected tumor death
	reaction_infected_tumor_death=compartment_tumor_microenvironment*inft_d(x(2));

% Reaction: id = virus_multiplication_in_infected_tumor, name = virus multiplication in infected tumor
	reaction_virus_multiplication_in_infected_tumor=compartment_tumor_microenvironment*v_rep(global_par_b, x(2));

% Reaction: id = virus_clearing, name = virus clearing
	reaction_virus_clearing=compartment_tumor_microenvironment*v_clear(global_par_e, x(3));

% Reaction: id = virus_killing_by_immune, name = virus killing by immune
	reaction_virus_killing_by_immune=compartment_tumor_microenvironment*v_k(global_par_d, x(3), x(4));

% Reaction: id = immune_stimulation, name = immune stimulation
	reaction_immune_stimulation=compartment_tumor_microenvironment*imm_s(global_par_m, x(2), x(4));

% Reaction: id = immune_cell_death, name = immune cell death
	reaction_immune_cell_death=compartment_tumor_microenvironment*imm_d(global_par_n, x(4));

% Reaction: id = infection, name = infection
	reaction_infection=compartment_tumor_microenvironment*infection_0(global_par_a, x(1), x(3));

	xdot=zeros(4,1);
	
% Species:   id = x, name = x, affected by kineticLaw
	xdot(1) = (1/(compartment_tumor_microenvironment))*(( 1.0 * reaction_tumor_growth) + (-1.0 * reaction_tumor_death) + (-1.0 * reaction_tumor_cross_infection) + (-1.0 * reaction_infection));
	
% Species:   id = y, name = y, affected by kineticLaw
	xdot(2) = (1/(compartment_tumor_microenvironment))*((-1.0 * reaction_infected_tumor_killing) + (-1.0 * reaction_infected_tumor_death) + ( 1.0 * reaction_infection));
	
% Species:   id = v, name = v, affected by kineticLaw
	xdot(3) = (1/(compartment_tumor_microenvironment))*(( 1.0 * reaction_virus_multiplication_in_infected_tumor) + (-1.0 * reaction_virus_clearing) + (-1.0 * reaction_virus_killing_by_immune) + (-1.0 * reaction_infection));
	
% Species:   id = z, name = z, affected by kineticLaw
	xdot(4) = (1/(compartment_tumor_microenvironment))*(( 1.0 * reaction_immune_stimulation) + (-1.0 * reaction_immune_cell_death));
end

function z=t_g(r,x), z=(r*x);end

function z=t_k(c,y,z), z=(c*y*z);end

function z=inft_d(y), z=(y);end

function z=t_d(r,x), z=(r*x*x);end

function z=t_cross(r,x,y), z=(r*x*y);end

function z=v_rep(b,y), z=(b*y);end

function z=infection_0(a,x,v), z=(a*x*v);end

function z=v_k(d,v,z), z=(d*v*z);end

function z=v_clear(e,v), z=(e*v);end

function z=imm_s(m,y,z), z=(m*y*z);end

function z=imm_d(n,z), z=(n*z);end

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


