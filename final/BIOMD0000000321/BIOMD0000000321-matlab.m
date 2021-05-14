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
% Model name = Grange2001 - L Dopa PK model
%
% is http://identifiers.org/biomodels.db/MODEL1103250000
% is http://identifiers.org/biomodels.db/BIOMD0000000321
% isDescribedBy http://identifiers.org/pubmed/11587490
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 0;
	x0(2) = 0.0;
	x0(3) = 0.0;


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

% Compartment: id = gut, name = gut, constant
	compartment_gut=1.0;
% Compartment: id = Vdopa, name = V_L_Dopa, constant
	compartment_Vdopa=0.496;
% Compartment: id = V_3_OMD, name = V_3_OMD, constant
	compartment_V_3_OMD=0.196;
% Parameter:   id =  F_b, name = F_b
% Parameter:   id =  F_H, name = F_H
% Parameter:   id =  F_G, name = F_G
	global_par_F_G=0.24;
% Parameter:   id =  CL_H, name = CL_H
% Parameter:   id =  Q, name = Q
	global_par_Q=0.828;
% Parameter:   id =  f_H, name = f_H
	global_par_f_H=0.13;
% Parameter:   id =  CL_dopa, name = CL_dopa
% Parameter:   id =  f_rest, name = f_rest
% Parameter:   id =  f_AADC, name = f_AADC
	global_par_f_AADC=0.69;
% Parameter:   id =  f_COMT, name = f_COMT
	global_par_f_COMT=0.1;
% Parameter:   id =  CL_AADC, name = CL_AADC
% Parameter:   id =  CL_rest, name = CL_rest
% Parameter:   id =  CL_COMT, name = CL_COMT
% Parameter:   id =  CL_dopa0, name = CL_dopa0
	global_par_CL_dopa0=0.823;
% Parameter:   id =  ka_b, name = ka_b
	global_par_ka_b=2.11;
% Parameter:   id =  CL_OMD, name = CL_3_OMD
	global_par_CL_OMD=0.012;
% Parameter:   id =  L_Dopa_per_kg_rat, name = L_Dopa_per_kg_rat
	global_par_L_Dopa_per_kg_rat=404.0;
% Parameter:   id =  rat_body_mass, name = rat_body_mass
	global_par_rat_body_mass=0.25;
% assignmentRule: variable = F_b
	global_par_F_b=global_par_F_H*global_par_F_G;
% assignmentRule: variable = F_H
	global_par_F_H=1-global_par_CL_H/global_par_Q;
% assignmentRule: variable = CL_H
	global_par_CL_H=global_par_f_H*global_par_CL_dopa;
% assignmentRule: variable = CL_dopa
	global_par_CL_dopa=global_par_CL_AADC+global_par_CL_rest+global_par_CL_COMT;
% assignmentRule: variable = f_rest
	global_par_f_rest=1-(global_par_f_AADC+global_par_f_COMT);
% assignmentRule: variable = CL_AADC
	global_par_CL_AADC=global_par_CL_dopa0*global_par_f_AADC;
% assignmentRule: variable = CL_rest
	global_par_CL_rest=global_par_CL_dopa0*global_par_f_rest;
% assignmentRule: variable = CL_COMT
	global_par_CL_COMT=global_par_CL_dopa0*global_par_f_COMT;

% Reaction: id = l_dopa_absorption, name = L_Dopa absorption from gut
	reaction_l_dopa_absorption=global_par_ka_b*x(1)*global_par_F_b;

% Reaction: id = l_dopa_blood_hepa_clearance, name = hepatic and blood L-Dopa clearance
	reaction_l_dopa_blood_hepa_clearance=global_par_ka_b*x(1)*(1-global_par_F_b);

% Reaction: id = AADC_clearance, name = L-Dopa clearance via AADC 
	reaction_AADC_clearance=global_par_CL_AADC*x(2);

% Reaction: id = COMT_clearance, name = L-Dopa clearance via COMT
	reaction_COMT_clearance=global_par_CL_COMT*x(2);

% Reaction: id = rest_clearance, name = rest clearance of L-Dopa
	reaction_rest_clearance=global_par_CL_rest*x(2);

% Reaction: id = _3_OMD_clearance, name = 3-OMD clearance
	reaction__3_OMD_clearance=global_par_CL_OMD*x(3);

	xdot=zeros(3,1);
	
% Species:   id = A_dopa, name = A_dopa, affected by kineticLaw
	xdot(1) = (-1.0 * reaction_l_dopa_absorption) + (-1.0 * reaction_l_dopa_blood_hepa_clearance);
	
% Species:   id = C_dopa, name = C_dopa, affected by kineticLaw
	xdot(2) = (1/(compartment_Vdopa))*(( 1.0 * reaction_l_dopa_absorption) + (-1.0 * reaction_AADC_clearance) + (-1.0 * reaction_COMT_clearance) + (-1.0 * reaction_rest_clearance));
	
% Species:   id = C_OMD, name = C_3-OMD, affected by kineticLaw
	xdot(3) = (1/(compartment_V_3_OMD))*(( 1.0 * reaction_COMT_clearance) + (-1.0 * reaction__3_OMD_clearance));
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


