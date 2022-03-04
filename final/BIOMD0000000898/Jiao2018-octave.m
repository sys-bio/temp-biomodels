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
% Model name = Jiao2018 - Feedback regulation in a stem cell model with acute myeloid leukaemia
%
% isDescribedBy http://identifiers.org/pubmed/29745850
% is http://identifiers.org/biomodels.db/MODEL1912170002
% is http://identifiers.org/biomodels.db/BIOMD0000000898
%


function main()
%Initial conditions vector
	x0=zeros(5,1);
	x0(1) = 10.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 10.0;
	x0(5) = 0.0;


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
% Parameter:   id =  p_10, name = p_10
	global_par_p_10=0.45;
% Parameter:   id =  p_20, name = p_20
	global_par_p_20=0.68;
% Parameter:   id =  p_30, name = p_30
	global_par_p_30=0.8;
% Parameter:   id =  v_10, name = v_10
	global_par_v_10=0.5;
% Parameter:   id =  v_20, name = v_20
	global_par_v_20=0.72;
% Parameter:   id =  v_30, name = v_30
	global_par_v_30=0.7;
% Parameter:   id =  d_1, name = d_1
	global_par_d_1=0.275;
% Parameter:   id =  d_2, name = d_2
	global_par_d_2=0.3;
% Parameter:   id =  g_1, name = g_1
	global_par_g_1=0.03;
% Parameter:   id =  g_2, name = g_2
	global_par_g_2=0.025;
% Parameter:   id =  h_1, name = h_1
	global_par_h_1=0.2;
% Parameter:   id =  h_2, name = h_2
	global_par_h_2=0.11;
% Parameter:   id =  m, name = m
	global_par_m=1.0;
% Parameter:   id =  n, name = n
	global_par_n=1.0;
% Parameter:   id =  K_1, name = K_1
	global_par_K_1=1.0;
% Parameter:   id =  K_2, name = K_2
	global_par_K_2=1.0;
% Parameter:   id =  p_1_D, name = p_1_D
% Parameter:   id =  p_2_D, name = p_2_D
% Parameter:   id =  v_1_D, name = v_1_D
% Parameter:   id =  v_2_D, name = v_2_D
% Parameter:   id =  Z_1, name = Z_1
% Parameter:   id =  Z_2, name = Z_2
% assignmentRule: variable = v_2_D
	global_par_v_2_D=global_par_v_20/(1+global_par_h_2*x(3)^global_par_n);
% assignmentRule: variable = v_1_D
	global_par_v_1_D=global_par_v_10/(1+global_par_h_1*x(3)^global_par_n);
% assignmentRule: variable = Z_1
	global_par_Z_1=x(1);
% assignmentRule: variable = Z_2
	global_par_Z_2=x(2)+x(4);
% assignmentRule: variable = p_2_D
	global_par_p_2_D=global_par_p_20/(1+global_par_g_2*x(3)^global_par_n);
% assignmentRule: variable = p_1_D
	global_par_p_1_D=global_par_p_10/(1+global_par_g_1*x(3)^global_par_n);

% Reaction: id = HSC_Self_Renewal, name = HSC_Self_Renewal
	reaction_HSC_Self_Renewal=compartment_compartment*Function_for_HSC_Self_Renewal(global_par_p_1_D, global_par_K_1, global_par_Z_1, global_par_v_1_D, x(1));

% Reaction: id = HSC_Differentiation, name = HSC_Differentiation
	reaction_HSC_Differentiation=compartment_compartment*Function_for_HSC_Differentiation(global_par_p_1_D, global_par_v_1_D, x(1));

% Reaction: id = PC_Self_Renewal, name = PC_Self_Renewal
	reaction_PC_Self_Renewal=compartment_compartment*Function_for_PC_Self_Renewal(global_par_p_2_D, global_par_K_2, global_par_Z_2, global_par_v_2_D, x(2));

% Reaction: id = PC_Differentiation, name = PC_Differentiation
	reaction_PC_Differentiation=compartment_compartment*Function_for_PC_Differentiation(global_par_p_2_D, global_par_v_2_D, x(2));

% Reaction: id = TDC_Apoptosis, name = TDC_Apoptosis
	reaction_TDC_Apoptosis=compartment_compartment*global_par_d_1*x(3);

% Reaction: id = LSC_Self_Renewal, name = LSC_Self_Renewal
	reaction_LSC_Self_Renewal=compartment_compartment*Function_for_LSC_Self_Renewal(global_par_p_30, global_par_K_2, global_par_Z_2, global_par_v_30, x(4));

% Reaction: id = LSC_Differentiation, name = LSC_Differentiation
	reaction_LSC_Differentiation=compartment_compartment*Function_for_LSC_Differentiation(global_par_p_30, global_par_v_30, x(4));

% Reaction: id = TDL_Apoptosis, name = TDL_Apoptosis
	reaction_TDL_Apoptosis=compartment_compartment*global_par_d_2*x(5);

	xdot=zeros(5,1);
	
% Species:   id = S_HSC, name = S_HSC, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_HSC_Self_Renewal) + (-1.0 * reaction_HSC_Differentiation));
	
% Species:   id = A_PC, name = A_PC, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 2.0 * reaction_HSC_Differentiation) + ( 1.0 * reaction_PC_Self_Renewal) + (-1.0 * reaction_PC_Differentiation));
	
% Species:   id = D_TDSC, name = D_TDSC, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 2.0 * reaction_PC_Differentiation) + (-1.0 * reaction_TDC_Apoptosis));
	
% Species:   id = L_LSC, name = L_LSC, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_LSC_Self_Renewal) + (-1.0 * reaction_LSC_Differentiation));
	
% Species:   id = T_TDLC, name = T_TDLC, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 2.0 * reaction_LSC_Differentiation) + (-1.0 * reaction_TDL_Apoptosis));
end

function z=Function_for_LSC_Differentiation(p_30,v_30,L), z=((1-p_30)*v_30*L);end

function z=Function_for_PC_Differentiation(p_2_D,v_2_D,A), z=((1-p_2_D)*v_2_D*A);end

function z=Function_for_HSC_Self_Renewal(p_1_D,K_1,Z_1,v_1_D,S), z=(p_1_D*(K_1-Z_1)*v_1_D*S);end

function z=Function_for_HSC_Differentiation(p_1_D,v_1_D,S), z=((1-p_1_D)*v_1_D*S);end

function z=Function_for_PC_Self_Renewal(p_2_D,K_2,Z_2,v_2_D,A), z=(p_2_D*(K_2-Z_2)*v_2_D*A);end

function z=Function_for_LSC_Self_Renewal(p_30,K_2,Z_2,v_30,L), z=(p_30*(K_2-Z_2)*v_30*L);end

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


