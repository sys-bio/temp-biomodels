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
% Model name = Chaudhury2020 - Lotka-Volterra mathematical model of CAR-T cell and tumour kinetics
%
% is http://identifiers.org/biomodels.db/MODEL2108050001
% is http://identifiers.org/biomodels.db/BIOMD0000001024
%


function main()
%Initial conditions vector
	x0=zeros(2,1);
	x0(1) = 10.0;
	x0(2) = 900.0;


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

% Compartment: id = Whole_organism_blood, name = Whole_organism_blood, constant
	compartment_Whole_organism_blood=1.0;
% Parameter:   id =  rho, name = rho
	global_par_rho=0.0018;
% Parameter:   id =  k_E, name = k_E
	global_par_k_E=0.16;
% Parameter:   id =  g, name = g
	global_par_g=0.15;
% Parameter:   id =  d, name = d
	global_par_d=1.5E-4;

% Reaction: id = Expanding_CAR_T_cell_proliferation, name = Expanding_CAR-T_cell_proliferation
	reaction_Expanding_CAR_T_cell_proliferation=compartment_Whole_organism_blood*Rate_Law_for_Expanding_CAR_T_cell_proliferation(global_par_rho, x(1), x(2));

% Reaction: id = Expanding_CAR_T_cell_death, name = Expanding_CAR-T_cell_death
	reaction_Expanding_CAR_T_cell_death=compartment_Whole_organism_blood*global_par_k_E*x(1);

% Reaction: id = Tumor_cell_growth, name = Tumor_cell_growth
	reaction_Tumor_cell_growth=compartment_Whole_organism_blood*Rate_Law_for_Tumor_cell_growth(global_par_g, x(2));

% Reaction: id = Tumor_cell_death, name = Tumor_cell_death
	reaction_Tumor_cell_death=compartment_Whole_organism_blood*Rate_Law_for_Tumor_cell_death(global_par_d, x(1), x(2));

	xdot=zeros(2,1);
	
% Species:   id = Expanding_CAR_T_cells, name = Expanding_CAR-T_cells, affected by kineticLaw
	xdot(1) = (1/(compartment_Whole_organism_blood))*(( 1.0 * reaction_Expanding_CAR_T_cell_proliferation) + (-1.0 * reaction_Expanding_CAR_T_cell_death));
	
% Species:   id = Tumor_cells, name = Tumor_cells, affected by kineticLaw
	xdot(2) = (1/(compartment_Whole_organism_blood))*(( 1.0 * reaction_Tumor_cell_growth) + (-1.0 * reaction_Tumor_cell_death));
end

function z=Rate_Law_for_Tumor_cell_death(d,C_E,U), z=(d*C_E*U);end

function z=Rate_Law_for_Expanding_CAR_T_cell_proliferation(rho,C_E,U), z=(rho*C_E*U);end

function z=Rate_Law_for_Tumor_cell_growth(g,U), z=(g*U);end

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


