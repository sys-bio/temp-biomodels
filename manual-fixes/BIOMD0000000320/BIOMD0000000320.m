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
% Model name = Grange2001 - PK interaction of L-dopa and benserazide
%
% is http://identifiers.org/biomodels.db/MODEL0910130001
% is http://identifiers.org/biomodels.db/BIOMD0000000320
% isDescribedBy http://identifiers.org/pubmed/11587490
%


function main()
%Initial conditions vector
	x0=zeros(9,1);
	x0(1) = 0;
	x0(2) = 0;
	x0(3) = 0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 0.0;


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

% Compartment: id = gut, name = gut, constant
	compartment_gut=1.0;
% Compartment: id = Vdopa, name = V_L_Dopa, constant
	compartment_Vdopa=0.496;
% Compartment: id = V_3_OMD, name = V_3_OMD, constant
	compartment_V_3_OMD=0.128;
% Compartment: id = V1_B, name = V1_B, constant
	compartment_V1_B=0.202;
% Compartment: id = V2_B, name = V2_B, constant
	compartment_V2_B=0.127;
% Compartment: id = V1_M, name = V1_M, constant
	compartment_V1_M=0.0691;
% Compartment: id = V2_M, name = V2_M, constant
	compartment_V2_M=3.2;
% Parameter:   id =  F_c, name = F_c
% Parameter:   id =  F_H, name = F_H
% Parameter:   id =  F_G, name = F_G
	global_par_F_G=1.0;
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
% Parameter:   id =  CL_AADC0, name = CL_AADC0
% Parameter:   id =  ki, name = ki
	global_par_ki=0.00246;
% Parameter:   id =  CL_dopa0, name = CL_dopa0
	global_par_CL_dopa0=0.823;
% Parameter:   id =  ka_c, name = ka_c
	global_par_ka_c=1.29;
% Parameter:   id =  ka_M, name = ka_m
	global_par_ka_M=2.47;
% Parameter:   id =  ka_B, name = ka_b
	global_par_ka_B=0.94;
% Parameter:   id =  F_B, name = F_B
	global_par_F_B=0.022;
% Parameter:   id =  CL_OMD, name = CL_3_OMD
	global_par_CL_OMD=0.00895;
% Parameter:   id =  CL_B, name = CL_B
	global_par_CL_B=1.67;
% Parameter:   id =  fm, name = fm
	global_par_fm=0.15;
% Parameter:   id =  CL_M, name = CL_M
	global_par_CL_M=4.29;
% Parameter:   id =  CL_dB, name = CL_dB
	global_par_CL_dB=0.072;
% Parameter:   id =  CL_dM, name = CL_dM
	global_par_CL_dM=1.06;
% Parameter:   id =  L_Dopa_per_kg_rat, name = L_Dopa_per_kg_rat
	global_par_L_Dopa_per_kg_rat=404.0;
% Parameter:   id =  Benserazide_per_kg_rat, name = Benserazide_per_kg_rat
	global_par_Benserazide_per_kg_rat=78.0;
% Parameter:   id =  rat_body_mass, name = rat_body_mass
	global_par_rat_body_mass=0.25;
% Parameter:   id =  A_bens_tot, name = A_bens_tot
	global_par_A_bens_tot=NaN;
% Parameter:   id =  B_M_frac, name = Bens_Ro04-5127_fraction_gut
	global_par_B_M_frac=0.07;
% assignmentRule: variable = F_c
	global_par_F_c=global_par_F_H*global_par_F_G;
% assignmentRule: variable = F_H
	global_par_F_H=1-global_par_CL_H/global_par_Q;
% assignmentRule: variable = CL_H
	global_par_CL_H=global_par_f_H*global_par_CL_dopa;
% assignmentRule: variable = CL_dopa
	global_par_CL_dopa=global_par_CL_AADC+global_par_CL_rest+global_par_CL_COMT;
% assignmentRule: variable = f_rest
	global_par_f_rest=1-(global_par_f_AADC+global_par_f_COMT);
% assignmentRule: variable = CL_AADC
	global_par_CL_AADC=global_par_CL_AADC0/(1+x(6)/global_par_ki);
% assignmentRule: variable = CL_rest
	global_par_CL_rest=global_par_CL_dopa0*global_par_f_rest;
% assignmentRule: variable = CL_COMT
	global_par_CL_COMT=global_par_CL_dopa0*global_par_f_COMT;
% assignmentRule: variable = CL_AADC0
	global_par_CL_AADC0=global_par_CL_dopa0*global_par_f_AADC;

% Reaction: id = l_dopa_absorption, name = L_Dopa absorption from gut
	reaction_l_dopa_absorption=global_par_ka_c*x(1)*global_par_F_c;

% Reaction: id = l_dopa_blood_hepa_clearance, name = hepatic and blood L-Dopa clearance
	reaction_l_dopa_blood_hepa_clearance=global_par_ka_c*x(1)*(1-global_par_F_c);

% Reaction: id = ro_04_5127_absorption, name = ro 04-5127 absorption from gut
	reaction_ro_04_5127_absorption=global_par_ka_M*x(3);

% Reaction: id = benserazide_absorption, name = benserazide absorption from gut
	reaction_benserazide_absorption=global_par_ka_B*x(2)*global_par_F_B;

% Reaction: id = benserazide_gut_clearance, name = benserazide clearance from gut
	reaction_benserazide_gut_clearance=global_par_ka_B*x(2)*(1-global_par_F_B);

% Reaction: id = AADC_clearance, name = L-Dopa clearance via AADC 
	reaction_AADC_clearance=global_par_CL_AADC*x(4);

% Reaction: id = COMT_clearance, name = L-Dopa clearance via COMT
	reaction_COMT_clearance=global_par_CL_COMT*x(4);

% Reaction: id = rest_clearance, name = rest clearance of L-Dopa
	reaction_rest_clearance=global_par_CL_rest*x(4);

% Reaction: id = _3_OMD_clearance, name = 3-OMD clearance
	reaction__3_OMD_clearance=global_par_CL_OMD*x(5);

% Reaction: id = bens_clearance, name = benserazide clearance
	reaction_bens_clearance=global_par_CL_B*x(8);

% Reaction: id = bens_metabolism, name = benserazide metabolism to ro 04-5127
	reaction_bens_metabolism=global_par_fm/(1-global_par_fm)*global_par_CL_B*x(8);

% Reaction: id = ro_clearance, name = ro 04-5127 clearance
	reaction_ro_clearance=global_par_CL_M*x(6);

% Reaction: id = bens_distribution, name = benserazide distribution
	reaction_bens_distribution=global_par_CL_dB*(x(8)-x(9));

% Reaction: id = ro_distribution, name = ro 04-5127 distribution
	reaction_ro_distribution=global_par_CL_dM*(x(6)-x(7));

	xdot=zeros(9,1);
	
% Species:   id = A_dopa, name = A_dopa, affected by kineticLaw
	xdot(1) = (-1.0 * reaction_l_dopa_absorption) + (-1.0 * reaction_l_dopa_blood_hepa_clearance);
	
% Species:   id = A_B, name = A_B, affected by kineticLaw
	xdot(2) = (-1.0 * reaction_benserazide_absorption) + (-1.0 * reaction_benserazide_gut_clearance);
	
% Species:   id = A_M, name = A_M, affected by kineticLaw
	xdot(3) = (-1.0 * reaction_ro_04_5127_absorption);
	
% Species:   id = C_dopa, name = C_dopa, affected by kineticLaw
	xdot(4) = (1/(compartment_Vdopa))*(( 1.0 * reaction_l_dopa_absorption) + (-1.0 * reaction_AADC_clearance) + (-1.0 * reaction_COMT_clearance) + (-1.0 * reaction_rest_clearance));
	
% Species:   id = C_OMD, name = C_3-OMD, affected by kineticLaw
	xdot(5) = (1/(compartment_V_3_OMD))*(( 1.0 * reaction_COMT_clearance) + (-1.0 * reaction__3_OMD_clearance));
	
% Species:   id = C1_M, name = C1_M, affected by kineticLaw
	xdot(6) = (1/(compartment_V1_M))*(( 1.0 * reaction_ro_04_5127_absorption) + ( 1.0 * reaction_bens_metabolism) + (-1.0 * reaction_ro_clearance) + (-1.0 * reaction_ro_distribution));
	
% Species:   id = C2_M, name = C2_M, affected by kineticLaw
	xdot(7) = (1/(compartment_V2_M))*(( 1.0 * reaction_ro_distribution));
	
% Species:   id = C1_B, name = C1_B, affected by kineticLaw
	xdot(8) = (1/(compartment_V1_B))*(( 1.0 * reaction_benserazide_absorption) + (-1.0 * reaction_bens_clearance) + (-1.0 * reaction_bens_metabolism) + (-1.0 * reaction_bens_distribution));
	
% Species:   id = C2_B, name = C2_B, affected by kineticLaw
	xdot(9) = (1/(compartment_V2_B))*(( 1.0 * reaction_bens_distribution));
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


