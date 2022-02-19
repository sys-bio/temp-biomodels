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
% Model name = Wodarz2001 - Viruses as antitumor weapons
%
% is http://identifiers.org/biomodels.db/MODEL2109090001
% is http://identifiers.org/biomodels.db/BIOMD0000001043
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 0.01;
	x0(2) = 1.0E-4;
	x0(3) = 0.0;
	x0(4) = 0.0101;


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

% Compartment: id = Tumor_microenvironment, name = Tumor_microenvironment, constant
	compartment_Tumor_microenvironment=1.0;
% Parameter:   id =  r, name = r
	global_par_r=0.5;
% Parameter:   id =  k, name = k
	global_par_k=17.0;
% Parameter:   id =  d, name = d
	global_par_d=0.1;
% Parameter:   id =  beta, name = beta
	global_par_beta=0.5;
% Parameter:   id =  s, name = s
	global_par_s=0.0;
% Parameter:   id =  a, name = a
	global_par_a=0.1;
% Parameter:   id =  p_v, name = p_v
	global_par_p_v=0.0;
% Parameter:   id =  c_v, name = c_v
	global_par_c_v=0.0;
% Parameter:   id =  b, name = b
	global_par_b=0.0;
% assignmentRule: variable = overall_tumor_size
	x(4)=x(1)+x(2);

% Reaction: id = uninfected_tumor_growth, name = uninfected_tumor_growth
	reaction_uninfected_tumor_growth=compartment_Tumor_microenvironment*Rate_Law_for_x_increase(global_par_r, x(1), x(2), global_par_k);

% Reaction: id = uninfected_tumor_death, name = uninfected_tumor_death
	reaction_uninfected_tumor_death=compartment_Tumor_microenvironment*global_par_d*x(1);

% Reaction: id = infected_tumor_growth, name = infected_tumor_growth
	reaction_infected_tumor_growth=compartment_Tumor_microenvironment*Rate_Law_for_y_increase(global_par_s, x(2), x(1), global_par_k);

% Reaction: id = infected_tumor_death, name = infected_tumor_death
	reaction_infected_tumor_death=compartment_Tumor_microenvironment*Rate_Law_for_y_decrease(global_par_a, x(2), global_par_p_v, x(3));

% Reaction: id = tumor_infection, name = tumor_infection
	reaction_tumor_infection=compartment_Tumor_microenvironment*Rate_Law_for_x_to_y(global_par_beta, x(1), x(2));

% Reaction: id = virus_specific_CTL_expansion, name = virus-specific_CTL_expansion
	reaction_virus_specific_CTL_expansion=compartment_Tumor_microenvironment*Rate_Law_for_z_v_increase(global_par_c_v, x(2), x(3));

% Reaction: id = virus_specific_CTLs_decay, name = virus-specific_CTLs_decay
	reaction_virus_specific_CTLs_decay=compartment_Tumor_microenvironment*global_par_b*x(3);

%Event: id=virotherapy
	event_virotherapy=time == 20;

	if(event_virotherapy) 
		x(3)=0.001;
	end

	xdot=zeros(4,1);
	
% Species:   id = uninfected_tumor_cells, name = uninfected_tumor_cells, affected by kineticLaw
	xdot(1) = (1/(compartment_Tumor_microenvironment))*(( 1.0 * reaction_uninfected_tumor_growth) + (-1.0 * reaction_uninfected_tumor_death) + (-1.0 * reaction_tumor_infection));
	
% Species:   id = infected_tumor_cells, name = infected_tumor_cells, affected by kineticLaw
	xdot(2) = (1/(compartment_Tumor_microenvironment))*(( 1.0 * reaction_infected_tumor_growth) + (-1.0 * reaction_infected_tumor_death) + ( 1.0 * reaction_tumor_infection));
	
% Species:   id = virus_specific_CTLs, name = virus-specific_CTLs, affected by kineticLaw
	xdot(3) = (1/(compartment_Tumor_microenvironment))*(( 1.0 * reaction_virus_specific_CTL_expansion) + (-1.0 * reaction_virus_specific_CTLs_decay));
	
% Species:   id = overall_tumor_size, name = overall_tumor_size, involved in a rule 	xdot(4) = x(4);
end

function z=Rate_Law_for_x_increase(r,x,y,k), z=(r*x*(1-(x+y)/k));end

function z=Rate_Law_for_y_increase(s,y,x,k), z=(s*y*(1-(x+y)/k));end

function z=Rate_Law_for_y_decrease(a,y,p_v,z_v), z=(a*y+p_v*y*z_v);end

function z=Rate_Law_for_x_to_y(beta,x,y), z=(beta*x*y);end

function z=Rate_Law_for_z_v_increase(c_v,y,z_v), z=(c_v*y*z_v);end

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


