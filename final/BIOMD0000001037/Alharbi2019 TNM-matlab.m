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
% Model name = Alharbi2019 - Tumor-normal model (TNM) of the development of tumor cells and their impact on normal cell dynamics
%
% is http://identifiers.org/biomodels.db/MODEL2108260002
% is http://identifiers.org/biomodels.db/BIOMD0000001037
%


function main()
%Initial conditions vector
	x0=zeros(2,1);
	x0(1) = 1.0;
	x0(2) = 1.0;


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
% Parameter:   id =  r, name = r
	global_par_r=0.4312;
% Parameter:   id =  beta1, name = beta1
	global_par_beta1=2.99E-6;
% Parameter:   id =  gamma, name = gamma
	global_par_gamma=0.9314;
% Parameter:   id =  alpha1, name = alpha1
	global_par_alpha1=0.4426;
% Parameter:   id =  alpha2, name = alpha2
	global_par_alpha2=0.4;
% Parameter:   id =  beta2, name = beta2
	global_par_beta2=1.1891;

% Reaction: id = Normal_cell_growth, name = Normal_cell_growth
	reaction_Normal_cell_growth=compartment_Whole_organism*Rate_Law_for_N_increase(global_par_r, x(1), global_par_beta1);

% Reaction: id = Normal_cell_death_inhibition, name = Normal_cell_death/inhibition
	reaction_Normal_cell_death_inhibition=compartment_Whole_organism*Rate_Law_for_N_decrease(global_par_gamma, x(1), x(2));

% Reaction: id = Tumor_cell_growth, name = Tumor_cell_growth
	reaction_Tumor_cell_growth=compartment_Whole_organism*Rate_Law_for_T_increase(global_par_alpha1, x(2), global_par_alpha2, global_par_beta2, x(1));

	xdot=zeros(2,1);
	
% Species:   id = Normal_cells, name = Normal_cells, affected by kineticLaw
	xdot(1) = (1/(compartment_Whole_organism))*(( 1.0 * reaction_Normal_cell_growth) + (-1.0 * reaction_Normal_cell_death_inhibition));
	
% Species:   id = Tumor_cells, name = Tumor_cells, affected by kineticLaw
	xdot(2) = (1/(compartment_Whole_organism))*(( 1.0 * reaction_Tumor_cell_growth));
end

function z=Rate_Law_for_N_increase(r,N,beta1), z=(r*N*(1-beta1*N));end

function z=Rate_Law_for_T_increase(alpha1,T,alpha2,beta2,N), z=(alpha1*T*(1-alpha2*T)+beta2*N*T);end

function z=Rate_Law_for_N_decrease(gamma,N,T), z=(gamma*N*T);end

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


