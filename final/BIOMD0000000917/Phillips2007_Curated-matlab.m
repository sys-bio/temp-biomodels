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
% Model name = Phillips2007_AscendingArousalSystem_SleepWakeDynamics
%
% is http://identifiers.org/biomodels.db/MODEL1006230025
% is http://identifiers.org/biomodels.db/BIOMD0000000917
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 1.0;
	x0(2) = -10.0;
	x0(3) = 10.0;


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

% Compartment: id = COMpartment, name = COMpartment, constant
	compartment_COMpartment=1.0;
% Parameter:   id =  Qv, name = Qv
% Parameter:   id =  tau_v, name = tau_v
	global_par_tau_v=10.0;
% Parameter:   id =  v_vm, name = v_vm
	global_par_v_vm=-1.9;
% Parameter:   id =  Qa, name = Qa
% Parameter:   id =  Va, name = Va
% Parameter:   id =  Vao, name = Vao
	global_par_Vao=1.0;
% Parameter:   id =  Qm, name = Qm
% Parameter:   id =  tau_m, name = tau_m
	global_par_tau_m=10.0;
% Parameter:   id =  v_mv, name = v_mv
	global_par_v_mv=-1.9;
% Parameter:   id =  v_maQao, name = v_maQao
	global_par_v_maQao=1.0;
% Parameter:   id =  chi, name = chi
	global_par_chi=10.8;
% Parameter:   id =  mu, name = mu
	global_par_mu=3.6;
% Parameter:   id =  D, name = D
% Parameter:   id =  C, name = C
% Parameter:   id =  c0, name = c0
	global_par_c0=1.0;
% Parameter:   id =  omega, name = omega
% Parameter:   id =  v_vc, name = v_vc
	global_par_v_vc=-6.3;
% Parameter:   id =  v_vh, name = v_vh
	global_par_v_vh=0.19;
% Parameter:   id =  Qmax, name = Qmax
	global_par_Qmax=100.0;
% Parameter:   id =  theta, name = theta
	global_par_theta=10.0;
% Parameter:   id =  sigma, name = sigma
	global_par_sigma=3.0;
% assignmentRule: variable = Qv
	global_par_Qv=global_par_Qmax/(1+exp((-(x(2)-global_par_theta))/global_par_sigma));
% assignmentRule: variable = Va
	global_par_Va=global_par_Vao;
% assignmentRule: variable = Qa
	global_par_Qa=global_par_Qmax/(1+exp((-(global_par_Va-global_par_theta))/global_par_sigma));
% assignmentRule: variable = Qm
	global_par_Qm=global_par_Qmax/(1+exp((-(x(1)-global_par_theta))/global_par_sigma));
% assignmentRule: variable = omega
	global_par_omega=2*pi/24;
% assignmentRule: variable = C
	global_par_C=global_par_c0+cos(global_par_omega*time);
% assignmentRule: variable = D
	global_par_D=global_par_v_vc*global_par_C+global_par_v_vh*x(3);

% Reaction: id = Reaction_for_Monoaminergic__MA__voltage, name = Reaction for Monoaminergic (MA) voltage
	reaction_Reaction_for_Monoaminergic__MA__voltage=compartment_COMpartment*Rate_Law_for_R_Vm(global_par_v_maQao, global_par_v_mv, global_par_Qv, x(1), global_par_tau_m);

% Reaction: id = Reaction_for_Ventrolateral_preopticarea__VLPO__voltage, name = Reaction for Ventrolateral preopticarea (VLPO) voltage
	reaction_Reaction_for_Ventrolateral_preopticarea__VLPO__voltage=compartment_COMpartment*Rate_Law_for_R_Vv(global_par_v_vm, global_par_Qm, global_par_D, x(2), global_par_tau_v);

% Reaction: id = Reaction_for_homeostatic_sleep, name = Reaction for homeostatic sleep
	reaction_Reaction_for_homeostatic_sleep=compartment_COMpartment*Rate_Law_for_R_H(global_par_mu, global_par_Qm, x(3), global_par_chi);

	xdot=zeros(3,1);
	
% Species:   id = Monoaminergic__MA__voltage, name = Monoaminergic (MA) voltage, affected by kineticLaw
	xdot(1) = (1/(compartment_COMpartment))*(( 1.0 * reaction_Reaction_for_Monoaminergic__MA__voltage));
	
% Species:   id = Ventrolateral_preopticarea__VLPO__voltage, name = Ventrolateral preopticarea (VLPO) voltage, affected by kineticLaw
	xdot(2) = (1/(compartment_COMpartment))*(( 1.0 * reaction_Reaction_for_Ventrolateral_preopticarea__VLPO__voltage));
	
% Species:   id = Somnogen_level_H, name = Somnogen level H, affected by kineticLaw
	xdot(3) = (1/(compartment_COMpartment))*(( 1.0 * reaction_Reaction_for_homeostatic_sleep));
end

function z=Rate_Law_for_R_Vm(v_maQao,v_mv,Qv,Vm,tau_m), z=((v_maQao+v_mv*Qv-Vm)/tau_m/3600);end

function z=Rate_Law_for_R_Vv(v_vm,Qm,D,Vv,tau_v), z=((v_vm*Qm+D-Vv)/tau_v/3600);end

function z=Rate_Law_for_R_H(mu,Qm,H,chi), z=((mu*Qm-H)/chi);end

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


