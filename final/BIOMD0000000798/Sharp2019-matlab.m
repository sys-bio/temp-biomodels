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
% Model name = Sharp2019 - AML
%
% isDescribedBy http://identifiers.org/pubmed/30853393
% is http://identifiers.org/biomodels.db/MODEL1908190001
% is http://identifiers.org/biomodels.db/BIOMD0000000798
%


function main()
%Initial conditions vector
	x0=zeros(5,1);
	x0(1) = 0.1;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.1;
	x0(5) = 0.0;


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

% Compartment: id = bone_marrow, name = bone marrow, constant
	compartment_bone_marrow=1.0;
% Parameter:   id =  Z1, name = Z1
% Parameter:   id =  Z2, name = Z2
% Parameter:   id =  ps, name = ps
	global_par_ps=0.5;
% Parameter:   id =  pa, name = pa
	global_par_pa=0.43;
% Parameter:   id =  pl, name = pl
	global_par_pl=0.27;
% Parameter:   id =  ds, name = ds
	global_par_ds=0.14;
% Parameter:   id =  da, name = da
	global_par_da=0.44;
% Parameter:   id =  dl, name = dl
	global_par_dl=0.05;
% Parameter:   id =  ud, name = ud
	global_par_ud=0.275;
% Parameter:   id =  ut, name = ut
	global_par_ut=0.3;
% Parameter:   id =  k1, name = k1
	global_par_k1=1.0;
% Parameter:   id =  k2, name = k2
	global_par_k2=1.0;
% Parameter:   id =  a, name = a
	global_par_a=0.015;
% Parameter:   id =  y, name = y
	global_par_y=0.01;
% assignmentRule: variable = Z2
	global_par_Z2=x(2)+x(4);
% assignmentRule: variable = Z1
	global_par_Z1=x(1);

% Reaction: id = HSC_growth, name = HSC growth
	reaction_HSC_growth=compartment_bone_marrow*growth(global_par_ps, x(1), global_par_k1, global_par_Z1);

% Reaction: id = HSC_differentiation, name = HSC differentiation
	reaction_HSC_differentiation=compartment_bone_marrow*global_par_ds*x(1);

% Reaction: id = progenitor_growth, name = progenitor growth
	reaction_progenitor_growth=compartment_bone_marrow*growth(global_par_pa, x(2), global_par_k2, global_par_Z2);

% Reaction: id = progenitor_differentiation, name = progenitor differentiation
	reaction_progenitor_differentiation=compartment_bone_marrow*global_par_da*x(2);

% Reaction: id = normal_cell_efflux, name = normal cell efflux
	reaction_normal_cell_efflux=compartment_bone_marrow*global_par_ud*x(3);

% Reaction: id = LSC_growth, name = LSC growth
	reaction_LSC_growth=compartment_bone_marrow*growth(global_par_pl, x(4), global_par_k2, global_par_Z2);

% Reaction: id = LSC_differentiation, name = LSC differentiation
	reaction_LSC_differentiation=compartment_bone_marrow*global_par_dl*x(4);

% Reaction: id = leukaemia_cell_efflux, name = leukaemia cell efflux
	reaction_leukaemia_cell_efflux=compartment_bone_marrow*global_par_ut*x(5);

% Reaction: id = immune_control, name = immune control
	reaction_immune_control=compartment_bone_marrow*immune(global_par_a, x(4), global_par_y);

	xdot=zeros(5,1);
	
% Species:   id = S, name = S, affected by kineticLaw
	xdot(1) = (1/(compartment_bone_marrow))*(( 1.0 * reaction_HSC_growth) + (-1.0 * reaction_HSC_differentiation));
	
% Species:   id = A, name = A, affected by kineticLaw
	xdot(2) = (1/(compartment_bone_marrow))*(( 1.0 * reaction_HSC_differentiation) + ( 1.0 * reaction_progenitor_growth) + (-1.0 * reaction_progenitor_differentiation));
	
% Species:   id = D, name = D, affected by kineticLaw
	xdot(3) = (1/(compartment_bone_marrow))*(( 1.0 * reaction_progenitor_differentiation) + (-1.0 * reaction_normal_cell_efflux));
	
% Species:   id = L, name = L, affected by kineticLaw
	xdot(4) = (1/(compartment_bone_marrow))*(( 1.0 * reaction_LSC_growth) + (-1.0 * reaction_LSC_differentiation) + (-1.0 * reaction_immune_control));
	
% Species:   id = T, name = T, affected by kineticLaw
	xdot(5) = (1/(compartment_bone_marrow))*(( 1.0 * reaction_LSC_differentiation) + (-1.0 * reaction_leukaemia_cell_efflux));
end

function z=growth(p,pro,k,z), z=(p*pro*(k-z));end

function z=immune(a,L,y), z=(a*L/(y+L));end

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


