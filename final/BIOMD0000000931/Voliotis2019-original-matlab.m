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
% Model name = Voliotis2019-GnRH Pulse Generation
%
% is http://identifiers.org/biomodels.db/MODEL2003190007
% is http://identifiers.org/biomodels.db/BIOMD0000000931
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 2.348;
	x0(2) = 0.07764;
	x0(3) = 300.0;


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
% Parameter:   id =  d_D, name = d_D
	global_par_d_D=0.25;
% Parameter:   id =  d_N, name = d_N
	global_par_d_N=1.0;
% Parameter:   id =  d_v, name = d_v
	global_par_d_v=10.0;
% Parameter:   id =  k_D, name = k_D
	global_par_k_D=4.5;
% Parameter:   id =  k_N, name = k_N
	global_par_k_N=320.0;
% Parameter:   id =  k_D0, name = k_D0
	global_par_k_D0=0.175;
% Parameter:   id =  k_N0, name = k_N0
	global_par_k_N0=0.0;
% Parameter:   id =  p_v, name = p_v
	global_par_p_v=1.0;
% Parameter:   id =  v_0, name = v_0
	global_par_v_0=30000.0;
% Parameter:   id =  K_D, name = K_D
	global_par_K_D=0.3;
% Parameter:   id =  K_N, name = K_N
	global_par_K_N=32.0;
% Parameter:   id =  K_v1, name = K_v1
	global_par_K_v1=1200.0;
% Parameter:   id =  K_v2, name = K_v2
	global_par_K_v2=1200.0;
% Parameter:   id =  I_0, name = I_0
	global_par_I_0=0.2;
% Parameter:   id =  n_1, name = n_1
	global_par_n_1=2.0;
% Parameter:   id =  n_2, name = n_2
	global_par_n_2=2.0;
% Parameter:   id =  n_3, name = n_3
	global_par_n_3=2.0;
% Parameter:   id =  n_4, name = n_4
	global_par_n_4=2.0;
% Parameter:   id =  f_D, name = f_D
% Parameter:   id =  f_N, name = f_N
% Parameter:   id =  f_v, name = f_v
% Parameter:   id =  I, name = I
% assignmentRule: variable = I
	global_par_I=global_par_I_0+global_par_p_v*x(3)*x(2)^global_par_n_4/(x(2)^global_par_n_4+global_par_K_N^global_par_n_4);
% assignmentRule: variable = f_v
	global_par_f_v=global_par_v_0*(1-exp(-global_par_I))/(1+exp(-global_par_I));
% assignmentRule: variable = f_N
	global_par_f_N=global_par_k_N0+global_par_k_N*x(3)^global_par_n_2/(x(3)^global_par_n_2+global_par_K_v2^global_par_n_2)*global_par_K_D^global_par_n_3/(x(1)^global_par_n_3+global_par_K_D^global_par_n_3);
% assignmentRule: variable = f_D
	global_par_f_D=global_par_k_D0+global_par_k_D*x(3)^global_par_n_1/(x(3)^global_par_n_1+global_par_K_v1^global_par_n_1);

% Reaction: id = Dyn_Decay, name = Dyn_Decay
	reaction_Dyn_Decay=compartment_compartment*global_par_d_D*x(1);

% Reaction: id = NKB_Decay, name = NKB_Decay
	reaction_NKB_Decay=compartment_compartment*global_par_d_N*x(2);

% Reaction: id = FR_Decay, name = FR_Decay
	reaction_FR_Decay=compartment_compartment*global_par_d_v*x(3);

	xdot=zeros(3,1);
	
% Species:   id = D, name = D, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_Dyn_Secretion) + (-1.0 * reaction_Dyn_Decay));
	
% Species:   id = N, name = N, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_NKB_Secretion) + (-1.0 * reaction_NKB_Decay));
	
% Species:   id = v, name = v, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_Firing_Rate) + (-1.0 * reaction_FR_Decay));
end

function z=Constant_flux__irreversible(v), z=(v);end

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


