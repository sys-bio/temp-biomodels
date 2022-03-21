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
% Model name = Dritschel2018 - A mathematical model of cytotoxic and helper T cell interactions in a tumour microenvironment
%
% isDescribedBy http://identifiers.org/doi/10.1080/23737867.2018.1465863
% isDerivedFrom http://identifiers.org/pubmed/8186756
% is http://identifiers.org/biomodels.db/MODEL1907230003
% is http://identifiers.org/biomodels.db/BIOMD0000000763
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 0.01;
	x0(2) = 0.6;
	x0(3) = 4.5;


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
% Parameter:   id =  gamma, name = gamma
	global_par_gamma=10.0;
% Parameter:   id =  p, name = p
	global_par_p=0.5;
% Parameter:   id =  k, name = k
	global_par_k=4.15;
% Parameter:   id =  sigma_H, name = sigma_H
	global_par_sigma_H=0.5;
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=0.19;
% Parameter:   id =  Ntilde, name = Ntilde
	global_par_Ntilde=0.04;
% Parameter:   id =  delta_H, name = delta_H
	global_par_delta_H=1.0;
% Parameter:   id =  sigma_C, name = sigma_C
	global_par_sigma_C=2.0;

% Reaction: id = Tumor_Growth, name = Tumor_Growth
	reaction_Tumor_Growth=compartment_compartment*Function_for_Tumor_Growth(global_par_gamma, x(1));

% Reaction: id = Tumor_Elimination, name = Tumor_Elimination
	reaction_Tumor_Elimination=compartment_compartment*Function_for_Tumor_Elimination(global_par_p, global_par_k, x(3), x(1));

% Reaction: id = T_Cytotoxic_Infiltration_Active, name = T_Cytotoxic_Infiltration_Active
	reaction_T_Cytotoxic_Infiltration_Active=compartment_compartment*Function_for_T_Cytotoxic_Infiltration_Active(x(3), x(2));

% Reaction: id = T_Helper_Infiltration_Active, name = T_Helper_Infiltration_Active
	reaction_T_Helper_Infiltration_Active=compartment_compartment*Function_for_T_Helper_Infiltration_Active(global_par_alpha, global_par_Ntilde, x(2), x(1));

% Reaction: id = T_Cytotoxic_Death, name = T_Cytotoxic_Death
	reaction_T_Cytotoxic_Death=compartment_compartment*Function_for_T_Cytotoxic_Death(x(3));

% Reaction: id = T_Cytotoxic_Tumor_Infiltrate_Elimination, name = T_Cytotoxic_Tumor_Infiltrate_Elimination
	reaction_T_Cytotoxic_Tumor_Infiltrate_Elimination=compartment_compartment*Function_for_T_Cytotoxic_Tumor_Infiltrate_Elimination(global_par_p, global_par_k, x(3), x(1));

% Reaction: id = T_Helper_Death, name = T_Helper_Death
	reaction_T_Helper_Death=compartment_compartment*global_par_delta_H*x(2);

	xdot=zeros(3,1);
	
% Species:   id = N_Tumour, name = N_Tumour, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_Tumor_Growth) + (-1.0 * reaction_Tumor_Elimination));
	
% Species:   id = T_H, name = T_H, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_T_Helper_Infiltration_Passive) + ( 1.0 * reaction_T_Helper_Infiltration_Active) + (-1.0 * reaction_T_Helper_Death));
	
% Species:   id = T_C, name = T_C, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_T_Cytotoxic_Infiltration_Passive) + ( 1.0 * reaction_T_Cytotoxic_Infiltration_Active) + (-1.0 * reaction_T_Cytotoxic_Death) + (-1.0 * reaction_T_Cytotoxic_Tumor_Infiltrate_Elimination));
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=Function_for_Tumor_Elimination(p,k,T_C,N), z=(p*k*T_C*N);end

function z=Function_for_T_Cytotoxic_Infiltration_Active(T_C,T_H), z=(T_C*T_H);end

function z=Function_for_T_Cytotoxic_Death(T_C), z=(T_C);end

function z=Function_for_T_Cytotoxic_Tumor_Infiltrate_Elimination(p,k,T_C,N), z=((1-p)*k*T_C*N);end

function z=Function_for_Tumor_Growth(gamma,N), z=(gamma*(1-N)*N);end

function z=Function_for_T_Helper_Infiltration_Active(alpha,Ntilde,T_H,N), z=(alpha*N*T_H/(Ntilde^2+N^2));end

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


