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
% Model name = Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics
%
% is http://identifiers.org/biomodels.db/MODEL2108050002
% is http://identifiers.org/biomodels.db/BIOMD0000001025
%


function main()
%Initial conditions vector
	x0=zeros(6,1);
	x0(5) = 10.0;
	x0(6) = 0.0;
	x0(1) = 10.0;
	x0(2) = 0.0;
	x0(3) = 900.0;
	x0(4) = 10.0;


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

% Compartment: id = Whole_organism_blood, name = Whole_organism_blood, constant
	compartment_Whole_organism_blood=1.0;
% Parameter:   id =  rho, name = rho
	global_par_rho=8.8;
% Parameter:   id =  k_E, name = k_E
	global_par_k_E=0.16;
% Parameter:   id =  EC_50_rho, name = EC_50,rho
	global_par_EC_50_rho=1.0;
% Parameter:   id =  g, name = g
	global_par_g=0.2;
% Parameter:   id =  d, name = d
	global_par_d=0.35;
% Parameter:   id =  k_EP, name = k_EP
	global_par_k_EP=0.0012;
% Parameter:   id =  beta, name = beta
	global_par_beta=0.0032;
% Parameter:   id =  U_crit, name = U_crit
	global_par_U_crit=0.1;
% Parameter:   id =  U_max, name = U_max
	global_par_U_max=1000.0;
% Parameter:   id =  h, name = h
	global_par_h=3.0;
% Parameter:   id =  EC_50_d, name = EC_50,d
	global_par_EC_50_d=10.0;
% Parameter:   id =  T_max, name = T_max
	global_par_T_max=9.3;
% Parameter:   id =  h_T, name = h_T
	global_par_h_T=3.0;
% Parameter:   id =  F_cure, name = F_cure
% assignmentRule: variable = CAR_T_cells
	x(4)=x(1)+x(2);
% assignmentRule: variable = F_cure
	global_par_F_cure=1/(1+(global_par_U_crit/x(3))^global_par_h);
% rateRule: variable = Expanding_CAR_T_cells
x(1) = x(5);
% rateRule: variable = Persistent_CAR_T_cells
x(2) = x(6);

% Reaction: id = Tumor_cell_growth, name = Tumor_cell_growth
	reaction_Tumor_cell_growth=compartment_Whole_organism_blood*Rate_Law_for_Tumour_cell_growth(global_par_F_cure, global_par_g, x(3), global_par_U_max);

% Reaction: id = Tumor_cell_death, name = Tumor_cell_death
	reaction_Tumor_cell_death=compartment_Whole_organism_blood*Rate_Law_for_Tumour_cell_death(global_par_d, x(1), x(3), global_par_EC_50_d);

	xdot=zeros(6,1);
	% rateRule: variable = Expanding_CAR_T_cells
	xdot(5) = piecewise(global_par_rho*x(1)*x(3)/(global_par_EC_50_rho+x(1)+x(3)), time <= global_par_T_max, (-(global_par_k_EP+global_par_k_E))*x(1));
	% rateRule: variable = Persistent_CAR_T_cells
	xdot(6) = piecewise(0, time <= global_par_T_max, global_par_k_EP*x(1)-global_par_beta*x(2));
	
% Species:   id = Expanding_CAR_T_cells, name = Expanding_CAR-T_cells, involved in a rule 	xdot(1) = x(1);
	
% Species:   id = Persistent_CAR_T_cells, name = Persistent_CAR-T_cells, involved in a rule 	xdot(2) = x(2);
	
% Species:   id = Tumor_cells, name = Tumor_cells, affected by kineticLaw
	xdot(3) = (1/(compartment_Whole_organism_blood))*(( 1.0 * reaction_Tumor_cell_growth) + (-1.0 * reaction_Tumor_cell_death));
	
% Species:   id = CAR_T_cells, name = CAR-T_cells, involved in a rule 	xdot(4) = x(4);
end

function z=Rate_Law_for_Tumour_cell_death(d,C_E,U,EC_50_d), z=(d*C_E*U/(EC_50_d+C_E+U));end

function z=Rate_Law_for_Tumour_cell_growth(F_cure,g,U,U_max,F_cure*g*U*(log(10), z=(U_max)-log(10,U))/log(10,U_max));end

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


