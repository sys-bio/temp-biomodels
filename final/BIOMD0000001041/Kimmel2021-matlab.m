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
% Model name = Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy
%
% is http://identifiers.org/biomodels.db/MODEL2109010001
% is http://identifiers.org/biomodels.db/BIOMD0000001041
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 6.0;
	x0(2) = 0.36;
	x0(3) = 94.86;
	x0(4) = 6.36;


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

% Compartment: id = compartment, name = compartment, constant
	compartment_compartment=1.0;
% Parameter:   id =  K_N, name = K_N
	global_par_K_N=500.0;
% Parameter:   id =  K_C, name = K_C
	global_par_K_C=139.0;
% Parameter:   id =  r_N, name = r_N
	global_par_r_N=0.17;
% Parameter:   id =  rho_C, name = rho_C
	global_par_rho_C=0.0251;
% Parameter:   id =  a, name = a
	global_par_a=0.423;
% Parameter:   id =  b, name = b
	global_par_b=0.525;
% Parameter:   id =  r_B, name = r_B
	global_par_r_B=0.01;
% Parameter:   id =  gamma_B, name = gamma_B
	global_par_gamma_B=1.15;
% Parameter:   id =  k_B, name = k_B
	global_par_k_B=4.05;
% Parameter:   id =  r_C, name = r_C
% assignmentRule: variable = Total_lymphocyte_count
	x(4)=x(1)+x(2);
% assignmentRule: variable = r_C
	global_par_r_C=global_par_rho_C+global_par_b*(x(4)-global_par_K_N)^2/(global_par_a*x(4)^2+(x(4)-global_par_K_N)^2);

% Reaction: id = Normal_T_cell_population_growth, name = Normal_T_cell_population_growth
	reaction_Normal_T_cell_population_growth=compartment_compartment*Rate_Law_for_Normal_T_cell_population_growth(global_par_r_N, x(1), x(2), global_par_K_N);

% Reaction: id = CAR_T_cell_population_growth, name = CAR_T_cell_population_growth
	reaction_CAR_T_cell_population_growth=compartment_compartment*Rate_Law_for_CAR_T_cell_population_growth(global_par_r_C, x(2), x(1), global_par_K_C);

% Reaction: id = Tumour_growth, name = Tumour_growth
	reaction_Tumour_growth=compartment_compartment*Rate_Law_for_Tumour_growth(global_par_r_B, x(3));

% Reaction: id = Tumour_killing, name = Tumour_killing
	reaction_Tumour_killing=compartment_compartment*Rate_Law_for_Tumour_killing(global_par_gamma_B, x(3), x(2), global_par_k_B);

	xdot=zeros(4,1);
	
% Species:   id = Normal_T_cells, name = Normal_T_cells, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_Normal_T_cell_population_growth));
	
% Species:   id = CAR_T_cells, name = CAR_T_cells, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_CAR_T_cell_population_growth));
	
% Species:   id = Antigen_presenting_tumour_cells, name = Antigen-presenting_tumour_cells, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_Tumour_growth) + (-1.0 * reaction_Tumour_killing));
	
% Species:   id = Total_lymphocyte_count, name = Total_lymphocyte_count, involved in a rule 	xdot(4) = x(4);
end

function z=Rate_Law_for_Normal_T_cell_population_growth(r_N,N,C,K_N), z=((-r_N)*N*log((N+C)/K_N));end

function z=Rate_Law_for_Tumour_growth(r_B,B), z=(r_B*B);end

function z=Rate_Law_for_Tumour_killing(gamma_B,B,C,k_B), z=(gamma_B*B*C/(k_B+C));end

function z=Rate_Law_for_CAR_T_cell_population_growth(r_C,C,N,K_C), z=((-r_C)*C*log((N+C)/K_C));end

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


