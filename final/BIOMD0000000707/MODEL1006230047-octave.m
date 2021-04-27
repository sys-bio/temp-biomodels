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
% Model name = Revilla2003 - Controlling HIV infection using recombinant viruses
%
% is http://identifiers.org/biomodels.db/MODEL1006230047
% is http://identifiers.org/biomodels.db/BIOMD0000000707
%


function main()
%Initial conditions vector
	x0=zeros(5,1);
	x0(1) = 3.0;
	x0(2) = 149.0;
	x0(3) = 6.0;
	x0(4) = 1.0;
	x0(5) = 0.0;


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

% Compartment: id = Plasma, name = Plasma, constant
	compartment_Plasma=1.0;
% Parameter:   id =  d, name = d
	global_par_d=0.01;
% Parameter:   id =  lamda, name = lamda
	global_par_lamda=2.0;
% Parameter:   id =  beta, name = beta
	global_par_beta=0.004;
% Parameter:   id =  a, name = a
	global_par_a=0.33;
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=0.004;
% Parameter:   id =  b, name = b
	global_par_b=2.0;
% Parameter:   id =  k, name = k
	global_par_k=50.0;
% Parameter:   id =  u, name = u
	global_par_u=2.0;
% Parameter:   id =  c, name = c
	global_par_c=2000.0;
% Parameter:   id =  q, name = q
	global_par_q=2.0;

% Reaction: id = Degradation_of_Normal_cells, name = Degradation of Normal cells
	reaction_Degradation_of_Normal_cells=compartment_Plasma*global_par_d*x(1);

% Reaction: id = Infection_of_Normal_cells_with_Pathogen, name = Infection of Normal cells with Pathogen
	reaction_Infection_of_Normal_cells_with_Pathogen=compartment_Plasma*Function_for_the_infection_of_normal_cell(global_par_beta, x(1), x(2));

% Reaction: id = Degradation_of_Single_Infected_Cells, name = Degradation of Single Infected Cells
	reaction_Degradation_of_Single_Infected_Cells=compartment_Plasma*global_par_a*x(3);

% Reaction: id = Infection_of_Single_Infeced_Cells_with_Recombinant_Virus, name = Infection of Single Infeced Cells with Recombinant Virus
	reaction_Infection_of_Single_Infeced_Cells_with_Recombinant_Virus=compartment_Plasma*Funtion_for_the_infection_of_single_infected_cel(global_par_alpha, x(4), x(3));

% Reaction: id = Release_of_Pathogen, name = Release of Pathogen
	reaction_Release_of_Pathogen=compartment_Plasma*Function_for_the_release_of_the_pathogen(global_par_k, x(3));

% Reaction: id = Degradation_of_Double_Infected_Cells, name = Degradation of Double Infected Cells
	reaction_Degradation_of_Double_Infected_Cells=compartment_Plasma*global_par_b*x(5);

% Reaction: id = Release_of_Recombinant_Virus, name = Release of Recombinant Virus
	reaction_Release_of_Recombinant_Virus=compartment_Plasma*Function_for_the_release_of_recombinant_virus(global_par_c, x(5));

% Reaction: id = Degradation_of_Pathogen_Virus, name = Degradation of Pathogen Virus
	reaction_Degradation_of_Pathogen_Virus=compartment_Plasma*global_par_u*x(2);

% Reaction: id = Degradation_of_Recombinant_Virus, name = Degradation of Recombinant Virus
	reaction_Degradation_of_Recombinant_Virus=compartment_Plasma*global_par_q*x(4);

	xdot=zeros(5,1);
	
% Species:   id = Normal_Th_cells, name = Normal Th cells, affected by kineticLaw
	xdot(1) = (1/(compartment_Plasma))*(( 1.0 * reaction_Production_of_Normal_cells) + (-1.0 * reaction_Degradation_of_Normal_cells) + (-1.0 * reaction_Infection_of_Normal_cells_with_Pathogen));
	
% Species:   id = Pathogen_Virus, name = Pathogen Virus, affected by kineticLaw
	xdot(2) = (1/(compartment_Plasma))*(( 1.0 * reaction_Release_of_Pathogen) + (-1.0 * reaction_Degradation_of_Pathogen_Virus));
	
% Species:   id = Single_Infected_Th_Cells, name = Single Infected Th Cells, affected by kineticLaw
	xdot(3) = (1/(compartment_Plasma))*(( 1.0 * reaction_Infection_of_Normal_cells_with_Pathogen) + (-1.0 * reaction_Degradation_of_Single_Infected_Cells) + (-1.0 * reaction_Infection_of_Single_Infeced_Cells_with_Recombinant_Virus));
	
% Species:   id = Recombinant_Virus, name = Recombinant Virus, affected by kineticLaw
	xdot(4) = (1/(compartment_Plasma))*(( 1.0 * reaction_Release_of_Recombinant_Virus) + (-1.0 * reaction_Degradation_of_Recombinant_Virus));
	
% Species:   id = Double_Infected_Th_Cells, name = Double Infected Th Cells, affected by kineticLaw
	xdot(5) = (1/(compartment_Plasma))*(( 1.0 * reaction_Infection_of_Single_Infeced_Cells_with_Recombinant_Virus) + (-1.0 * reaction_Degradation_of_Double_Infected_Cells));
end

function z=Function_for_the_infection_of_normal_cell(beta,x,v), z=(beta*x*v);end

function z=Constant_flux__irreversible(v), z=(v);end

function z=Funtion_for_the_infection_of_single_infected_cel(alpha,w,y), z=(alpha*w*y);end

function z=Function_for_the_release_of_the_pathogen(k,y), z=(k*y);end

function z=Function_for_the_release_of_recombinant_virus(c,z), z=(c*z);end

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


