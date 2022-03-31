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
% Model name = Leon-Triana2021 - Competition between tumour cells and single-target CAR T-cells
%
% is http://identifiers.org/biomodels.db/MODEL2107120003
% is http://identifiers.org/biomodels.db/BIOMD0000001013
%


function main()
%Initial conditions vector
	x0=zeros(2,1);
	x0(1) = 4.0E8;
	x0(2) = 6.7E9;


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

% Compartment: id = Solid_tumour, name = Solid_tumour, constant
	compartment_Solid_tumour=1.0;
% Parameter:   id =  rho_C, name = rho_C
	global_par_rho_C=0.9;
% Parameter:   id =  g_T, name = g_T
	global_par_g_T=1.0E10;
% Parameter:   id =  alpha_1, name = alpha_1
	global_par_alpha_1=0.04;
% Parameter:   id =  g_C, name = g_C
	global_par_g_C=2.0E9;
% Parameter:   id =  tao_C, name = tao_C
	global_par_tao_C=7.0;
% Parameter:   id =  rho_T, name = rho_T
	global_par_rho_T=0.02;
% Parameter:   id =  alpha_2, name = alpha_2
	global_par_alpha_2=2.5E-10;

% Reaction: id = CAR_T_cell_proliferation, name = CAR_T-cell_proliferation
	reaction_CAR_T_cell_proliferation=compartment_Solid_tumour*Rate_Law_for_CAR_T_cell_proliferation(global_par_rho_C, x(1), x(2), global_par_g_T);

% Reaction: id = CAR_T_cell_depletion, name = CAR_T-cell_depletion
	reaction_CAR_T_cell_depletion=compartment_Solid_tumour*Rate_Law_for_CAR_T_cell_depletion(global_par_alpha_1, x(1), x(2), global_par_g_C, global_par_tao_C);

% Reaction: id = tumour_growth, name = tumour_growth
	reaction_tumour_growth=compartment_Solid_tumour*Rate_Law_for_tumour_growth(global_par_rho_T, x(2));

% Reaction: id = tumour_death, name = tumour_death
	reaction_tumour_death=compartment_Solid_tumour*Rate_Law_for_tumour_death(global_par_alpha_2, x(1), x(2));

	xdot=zeros(2,1);
	
% Species:   id = CAR_T_cells, name = CAR_T-cells, affected by kineticLaw
	xdot(1) = (1/(compartment_Solid_tumour))*(( 1.0 * reaction_CAR_T_cell_proliferation) + (-1.0 * reaction_CAR_T_cell_depletion));
	
% Species:   id = Tumour_cells, name = Tumour_cells, affected by kineticLaw
	xdot(2) = (1/(compartment_Solid_tumour))*(( 1.0 * reaction_tumour_growth) + (-1.0 * reaction_tumour_death));
end

function z=Rate_Law_for_tumour_growth(rho_T,T), z=(rho_T*T);end

function z=Rate_Law_for_tumour_death(alpha_2,C,T), z=(alpha_2*C*T);end

function z=Rate_Law_for_CAR_T_cell_proliferation(rho_C,C,T,g_T), z=(rho_C*C*T/(g_T+T));end

function z=Rate_Law_for_CAR_T_cell_depletion(alpha_1,C,T,g_C,tao_C), z=(alpha_1*C*T/(g_C+C)+1/tao_C*C);end

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


