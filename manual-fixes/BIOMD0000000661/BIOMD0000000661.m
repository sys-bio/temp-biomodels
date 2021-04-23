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
% Model name = Webb2002 - Fas/FasL mediated tumor T-cell interaction
%
% is http://identifiers.org/biomodels.db/MODEL1006230046
% is http://identifiers.org/biomodels.db/BIOMD0000000661
% isDescribedBy http://identifiers.org/pubmed/12208611
% unknownQualifier http://identifiers.org/mamo/MAMO_0000046
%


function main()
%Initial conditions vector
	x0=zeros(7,1);
	x0(1) = 500.000000000001;
	x0(2) = 0.0;
	x0(3) = 10000.0000000001;
	x0(4) = 500.000000000001;
	x0(5) = 1000.0;
	x0(6) = 1000.0;
	x0(7) = 0.0;


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

% Compartment: id = compartment, name = compartment, constant
	compartment_compartment=1.0;
% Compartment: id = Tumour_cell, name = Tumour cell, constant
	compartment_Tumour_cell=1.0;
% Compartment: id = T_Lymphocyte_cell, name = T-Lymphocyte cell, constant
	compartment_T_Lymphocyte_cell=1.0;
% Parameter:   id =  k1, name = k1
	global_par_k1=8.38E-10;
% Parameter:   id =  k2, name = k2
	global_par_k2=0.006;
% Parameter:   id =  k3, name = k3
	global_par_k3=5.9413;
% Parameter:   id =  k4, name = k4
	global_par_k4=0.35;
% Parameter:   id =  k5, name = k5
	global_par_k5=2.52E-9;
% Parameter:   id =  k6, name = k6
	global_par_k6=2244.0;
% Parameter:   id =  k7, name = k7
	global_par_k7=0.35;
% Parameter:   id =  k8, name = k8
	global_par_k8=1.92E10;
% Parameter:   id =  k9, name = k9
	global_par_k9=8.73E9;
% Parameter:   id =  k10, name = k10
	global_par_k10=3110.0;
% Parameter:   id =  k11, name = k11
	global_par_k11=13.9;

% Reaction: id = T_cell_degradation, name = T-cell degradation
	reaction_T_cell_degradation=Function_for_T_cell_degradation(global_par_k1, x(4), x(1), x(5), x(3));

% Reaction: id = Tumour_cell_degradation, name = Tumour cell degradation
	reaction_Tumour_cell_degradation=Function_for_tumour_cell_degradation(global_par_k1, x(4), x(1), x(2), x(6));

% Reaction: id = SL_degradation, name = SL degradation
	reaction_SL_degradation=compartment_compartment*global_par_k11*x(7);

% Reaction: id = RT_degradation, name = RT degradation
	reaction_RT_degradation=compartment_T_Lymphocyte_cell*global_par_k7*x(3);

% Reaction: id = Rm_degradation, name = Rm degradation
	reaction_Rm_degradation=compartment_Tumour_cell*global_par_k7*x(6);

% Reaction: id = LT_synthesis, name = LT synthesis
	reaction_LT_synthesis=compartment_compartment*Function_for_LT_synthesis(global_par_k2, x(1), x(4));

% Reaction: id = RT_degradation__SL_modifier, name = RT degradation (SL modifier)
	reaction_RT_degradation__SL_modifier=Function_for_RT_degradation__SL_modifier(global_par_k8, x(3), x(7));

% Reaction: id = Rm_degradation__SL_modifier, name = Rm degradation (SL modifier)
	reaction_Rm_degradation__SL_modifier=Function_for_Rm_degradation__SL_modifier(global_par_k8, x(6), x(7));

% Reaction: id = LT_degradation, name = LT degradation
	reaction_LT_degradation=compartment_compartment*Function_for_LT_degradation(global_par_k4, global_par_k3, x(2));

% Reaction: id = Lm_degradation, name = Lm degradation
	reaction_Lm_degradation=compartment_Tumour_cell*Function_for_Lm_degradation(global_par_k3, global_par_k4, x(5));

% Reaction: id = LT_degradation__m__T_and_Rm_modifiers, name = LT degradation (m, T and Rm modifiers)
	reaction_LT_degradation__m__T_and_Rm_modifiers=Function_for_LT_degradation__m__T_and_Rm_modifiers(global_par_k5, x(4), x(1), x(2), x(6));

% Reaction: id = Lm_degradation__m__T_and_RT_modifiers, name = Lm degradation (m, T and RT modifiers)
	reaction_Lm_degradation__m__T_and_RT_modifiers=Function_for_Lm_degradation__m__T_and_RT_modifiers(global_par_k5, x(4), x(1), x(5), x(3));

% Reaction: id = SL_synthesis, name = SL formation
	reaction_SL_synthesis=Function_for_SL_synthesis(global_par_k3, x(5), x(4), x(2), x(1));

% Reaction: id = SL_degradation__Rm__m__RT__T_and_SL_modifiers, name = SL degradation (Rm, m, RT, T and SL modifiers)
	reaction_SL_degradation__Rm__m__RT__T_and_SL_modifiers=Function_for_SL_degradation__Rm__m__RT__T_and_SL_modifiers(global_par_k9, x(6), x(4), x(3), x(1), x(7));

	xdot=zeros(7,1);
	
% Species:   id = T, name = T-cells (T), affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*((-1.0 * reaction_T_cell_degradation));
	
% Species:   id = LT, name = mFasL (LT), affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_LT_synthesis) + (-1.0 * reaction_LT_degradation) + (-1.0 * reaction_LT_degradation__m__T_and_Rm_modifiers));
	
% Species:   id = RT, name = FasR (RT), affected by kineticLaw
	xdot(3) = (1/(compartment_T_Lymphocyte_cell))*(( 1.0 * reaction_RT_synthesis) + (-1.0 * reaction_RT_degradation) + (-1.0 * reaction_RT_degradation__SL_modifier));
	
% Species:   id = m, name = Tumour cells (m), affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*((-1.0 * reaction_Tumour_cell_degradation));
	
% Species:   id = Lm, name = mFasL (Lm), affected by kineticLaw
	xdot(5) = (1/(compartment_Tumour_cell))*(( 1.0 * reaction_Lm_synthesis) + (-1.0 * reaction_Lm_degradation) + (-1.0 * reaction_Lm_degradation__m__T_and_RT_modifiers));
	
% Species:   id = Rm, name = FasR (Rm), affected by kineticLaw
	xdot(6) = (1/(compartment_Tumour_cell))*(( 1.0 * reaction_Rm_synthesis) + (-1.0 * reaction_Rm_degradation) + (-1.0 * reaction_Rm_degradation__SL_modifier));
	
% Species:   id = SL, name = sFasL (SL), affected by kineticLaw
	xdot(7) = (1/(compartment_compartment))*((-1.0 * reaction_SL_degradation) + ( 1.0 * reaction_SL_synthesis) + (-1.0 * reaction_SL_degradation__Rm__m__RT__T_and_SL_modifiers));
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=Function_for_T_cell_degradation(k1,m,T,Lm,RT), z=(k1*m*T*Lm*RT);end

function z=Function_for_tumour_cell_degradation(k1,m,T,LT,Rm), z=(k1*m*T*LT*Rm);end

function z=Function_for_LT_synthesis(k2,T,m), z=(k2*T*m);end

function z=Function_for_RT_degradation__SL_modifier(k8,RT,SL), z=(k8*RT*SL);end

function z=Function_for_Rm_degradation__SL_modifier(k8,Rm,SL), z=(k8*Rm*SL);end

function z=Function_for_LT_degradation(K4,k3,LT), z=((K4+k3)*LT);end

function z=Function_for_Lm_degradation(k3,k4,Lm), z=((k3+k4)*Lm);end

function z=Function_for_LT_degradation__m__T_and_Rm_modifiers(k5,m,T,LT,Rm), z=(k5*m*T*LT*Rm);end

function z=Function_for_Lm_degradation__m__T_and_RT_modifiers(k5,m,T,Lm,RT), z=(k5*m*T*Lm*RT);end

function z=Function_for_SL_synthesis(k3,Lm,m,LT,T), z=(k3*(Lm*m+LT*T));end

function z=Function_for_SL_degradation__Rm__m__RT__T_and_SL_modifiers(k9,Rm,m,RT,T,SL), z=(k9*(Rm*m+RT*T)*SL);end

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


