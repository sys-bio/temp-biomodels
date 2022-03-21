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
% Model name = Nelson2000_HIV-1_general_model
%
% is http://identifiers.org/biomodels.db/MODEL8268650277
% isDescribedBy http://identifiers.org/pubmed/10701304
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 180000.0;
	x0(2) = 1675.0;
	x0(3) = 134000.0;
	x0(4) = 0.0;


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

% Compartment: id = plasma, name = plasma, constant
	compartment_plasma=1.0;
% Parameter:   id =  k, name = k
	global_par_k=3.43E-8;
% Parameter:   id =  delta, name = delta
	global_par_delta=0.5;
% Parameter:   id =  N, name = N
	global_par_N=480.0;
% Parameter:   id =  c, name = c
	global_par_c=3.0;
% Parameter:   id =  np, name = np
	global_par_np=0.1;
% Parameter:   id =  HIV, name = HIV
% Parameter:   id =  lambda, name = lambda
	global_par_lambda=10.0;
% Parameter:   id =  delta1, name = delta1
	global_par_delta1=0.03;
% assignmentRule: variable = HIV
	global_par_HIV=x(3)+x(4);

% Reaction: id = T_cell_source, name = creation of T-cells
	reaction_T_cell_source=global_par_lambda*compartment_plasma;

% Reaction: id = T_cell_loss, name = loss of uninfected T-cell
	reaction_T_cell_loss=global_par_delta1*x(1)*compartment_plasma;

% Reaction: id = infection, name = T-cell infection
	reaction_infection=global_par_k*x(3)*x(1)*compartment_plasma;

% Reaction: id = T_i_lysis, name = infected T-cell lysis
	reaction_T_i_lysis=global_par_delta*x(2)*compartment_plasma;

% Reaction: id = T_lysis_infect, name = release of infectious virions on lysis
	reaction_T_lysis_infect=(1-global_par_np)*global_par_N*global_par_delta*x(2)*compartment_plasma;

% Reaction: id = T_lysis_noninf, name = release of non infectious virions on lysis
	reaction_T_lysis_noninf=global_par_np*global_par_N*global_par_delta*x(2)*compartment_plasma;

% Reaction: id = V_I_clearance, name = clearance of infectious virions
	reaction_V_I_clearance=global_par_c*x(3)*compartment_plasma;

% Reaction: id = V_NI_clearance, name = non-infect. virion clearance
	reaction_V_NI_clearance=global_par_c*x(4)*compartment_plasma;

	xdot=zeros(4,1);
	
% Species:   id = T, name = T, affected by kineticLaw
	xdot(1) = (1/(compartment_plasma))*(( 1.0 * reaction_T_cell_source) + (-1.0 * reaction_T_cell_loss) + (-1.0 * reaction_infection));
	
% Species:   id = T_i, name = T*, affected by kineticLaw
	xdot(2) = (1/(compartment_plasma))*(( 1.0 * reaction_infection) + (-1.0 * reaction_T_i_lysis));
	
% Species:   id = V_I, name = V_I, affected by kineticLaw
	xdot(3) = (1/(compartment_plasma))*(( 1.0 * reaction_T_lysis_infect) + (-1.0 * reaction_V_I_clearance));
	
% Species:   id = V_NI, name = V_NI, affected by kineticLaw
	xdot(4) = (1/(compartment_plasma))*(( 1.0 * reaction_T_lysis_noninf) + (-1.0 * reaction_V_NI_clearance));
end

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


