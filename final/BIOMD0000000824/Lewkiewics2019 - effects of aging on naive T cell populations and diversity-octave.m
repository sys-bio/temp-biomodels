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
% Model name = Lewkiewics2019 - effects of aging on naive T cell populations and diversity
%
% is http://identifiers.org/biomodels.db/MODEL1909260001
% is http://identifiers.org/biomodels.db/BIOMD0000000824
%


function main()
%Initial conditions vector
	x0=zeros(2,1);
	x0(1) = 0.18;
	x0(2) = 1.0;


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

% Compartment: id = compartment, name = compartment, constant
	compartment_compartment=1.0;
% Parameter:   id =  gamma, name = gamma
% Parameter:   id =  p, name = p
	global_par_p=0.17;
% Parameter:   id =  gamma_0, name = gamma_0
	global_par_gamma_0=1.8E10;
% Parameter:   id =  a, name = a
	global_par_a=0.044;
% Parameter:   id =  myu_0, name = myu_0
	global_par_myu_0=0.18;
% Parameter:   id =  myu_1, name = myu_1
	global_par_myu_1=0.04;
% Parameter:   id =  K, name = K
	global_par_K=1.0E10;
% assignmentRule: variable = myu
	x(1)=global_par_myu_0+global_par_myu_1*x(2)^2/(x(2)^2+global_par_K^2);
% assignmentRule: variable = gamma
	global_par_gamma=global_par_gamma_0*exp((-global_par_a)*time);

% Reaction: id = peripheral_prolieferation, name = peripheral prolieferation
	reaction_peripheral_prolieferation=compartment_compartment*Function_for_peripheral_proliefration(global_par_p, x(2));

% Reaction: id = cell_removal_due_to_death_or_phenotypic_changes, name = cell removal due to death or phenotypic changes
	reaction_cell_removal_due_to_death_or_phenotypic_changes=compartment_compartment*Function_for_cell_removal_due_to_death_or_phenotypic_changes(x(1), x(2));

	xdot=zeros(2,1);
	
% Species:   id = myu, name = myu, involved in a rule 	xdot(1) = x(1);
	
% Species:   id = N, name = Naive T-cells N, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_export_of_mature_naive_T_cells) + ( 1.0 * reaction_peripheral_prolieferation) + (-1.0 * reaction_cell_removal_due_to_death_or_phenotypic_changes));
end

function z=Function_for_export_of_mature_naive_T_cells(gamma), z=(gamma);end

function z=Function_for_cell_removal_due_to_death_or_phenotypic_changes(myu,N), z=(myu*N);end

function z=Function_for_peripheral_proliefration(p,N), z=(p*N);end

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


