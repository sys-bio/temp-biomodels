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
% Model name = DeBoeck2021 - Modular approach to modeling the cell cycle, 5 ODE model with 3 bistable switches
%
% unknownQualifier http://identifiers.org/mamo/MAMO_0000045
% isDescribedBy http://identifiers.org/doi:10.1371/journal.pcbi.1009008
% is http://identifiers.org/biomodels.db/MODEL2212060002
% is http://identifiers.org/biomodels.db/BIOMD0000001080
%


function main()
%Initial conditions vector
	x0=zeros(5,1);
	x0(3) = 1.0E-12;
	x0(4) = 1.0E-12;
	x0(5) = 0.8;
	x0(1) = 69.6;
	x0(2) = 32.9;


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

% Compartment: id = default_compartment, name = default_compartment, constant
	compartment_default_compartment=1.0;
% Parameter:   id =  d_syn, name = d_syn
	global_par_d_syn=0.15;
% Parameter:   id =  d_deg, name = d_deg
	global_par_d_deg=0.009;
% Parameter:   id =  APC, name = APC
% Parameter:   id =  delta_d, name = delta_d
	global_par_delta_d=0.05;
% Parameter:   id =  b_syn, name = b_syn
	global_par_b_syn=0.03;
% Parameter:   id =  E2F, name = E2F
% Parameter:   id =  b_deg, name = b_deg
	global_par_b_deg=0.003;
% Parameter:   id =  delta_b, name = delta_b
	global_par_delta_b=0.05;
% Parameter:   id =  epsilon_e2f, name = epsilon_e2f
	global_par_epsilon_e2f=0.01;
% Parameter:   id =  n, name = n
	global_par_n=15.0;
% Parameter:   id =  K_cyc_e2f, name = K_cyc_e2f
	global_par_K_cyc_e2f=120.0;
% Parameter:   id =  alpha_e2f, name = alpha_e2f
	global_par_alpha_e2f=5.0;
% Parameter:   id =  r, name = r
	global_par_r=0.5;
% Parameter:   id =  Cdk, name = Cdk
% Parameter:   id =  epsilon_cdk, name = epsilon_cdk
	global_par_epsilon_cdk=0.01;
% Parameter:   id =  K_cyc_cdk, name = K_cyc_cdk
	global_par_K_cyc_cdk=40.0;
% Parameter:   id =  alpha_cdk, name = alpha_cdk
	global_par_alpha_cdk=5.0;
% Parameter:   id =  epsilon_apc, name = epsilon_apc
	global_par_epsilon_apc=0.01;
% Parameter:   id =  K_cdk_apc, name = K_cdk_apc
	global_par_K_cdk_apc=20.0;
% Parameter:   id =  alpha_apc, name = alpha_apc
	global_par_alpha_apc=5.0;
% Parameter:   id =  CycD_max, name = CycD_max
% Parameter:   id =  CycB_max, name = CycB_max
% Parameter:   id =  APC_max, name = APC_max
% Parameter:   id =  E2F_max, name = E2F_max
% Parameter:   id =  Cdk_max, name = Cdk_max
% assignmentRule: variable = Cdk_max
	global_par_Cdk_max=global_par_Cdk/44;
% assignmentRule: variable = CycD_max
	global_par_CycD_max=x(1)/185.74;
% assignmentRule: variable = CycB_max
	global_par_CycB_max=x(2)/45.92;
% assignmentRule: variable = APC_max
	global_par_APC_max=global_par_APC/0.999992;
% assignmentRule: variable = E2F_max
	global_par_E2F_max=global_par_E2F/0.998646;
% rateRule: variable = APC
global_par_APC = x(3);
% rateRule: variable = E2F
global_par_E2F = x(4);
% rateRule: variable = Cdk
global_par_Cdk = x(5);

% Reaction: id = _J0, name = CycD_Synthesis
	reaction__J0=compartment_default_compartment*Function_for__J0(global_par_d_syn, compartment_default_compartment);

% Reaction: id = _J1, name = CycD_degradation
	reaction__J1=compartment_default_compartment*Function_for__J1(global_par_APC, x(1), global_par_d_deg, compartment_default_compartment, global_par_delta_d);

% Reaction: id = _J2, name = CycB_synthesis
	reaction__J2=compartment_default_compartment*Function_for__J2(global_par_E2F, global_par_b_syn, compartment_default_compartment);

% Reaction: id = _J3, name = CycB_degradation
	reaction__J3=compartment_default_compartment*Function_for__J3(global_par_APC, x(2), global_par_b_deg, compartment_default_compartment, global_par_delta_b);

	xdot=zeros(5,1);
	% rateRule: variable = APC
	xdot(3) = 1/global_par_epsilon_apc*(global_par_Cdk^global_par_n/((global_par_K_cdk_apc*xi(global_par_APC, global_par_alpha_apc, global_par_r))^global_par_n+global_par_Cdk^global_par_n)-global_par_APC);
	% rateRule: variable = E2F
	xdot(4) = 1/global_par_epsilon_e2f*(x(1)^global_par_n/((global_par_K_cyc_e2f*xi(global_par_E2F, global_par_alpha_e2f, global_par_r))^global_par_n+x(1)^global_par_n)-global_par_E2F);
	% rateRule: variable = Cdk
	xdot(5) = 1/global_par_epsilon_cdk*(x(2)^global_par_n/((global_par_K_cyc_cdk*xi(global_par_Cdk/x(2), global_par_alpha_cdk, global_par_r))^global_par_n+x(2)^global_par_n)*x(2)-global_par_Cdk);
	
% Species:   id = CycD, name = CycD, affected by kineticLaw
	xdot(1) = (1/(compartment_default_compartment))*(( 1.0 * reaction__J0) + (-1.0 * reaction__J1));
	
% Species:   id = CycB, name = CycB, affected by kineticLaw
	xdot(2) = (1/(compartment_default_compartment))*(( 1.0 * reaction__J2) + (-1.0 * reaction__J3));
end

function z=Function_for__J1(APC,CycD,d_deg,default_compartment,delta_d), z=(d_deg*CycD*(APC+delta_d)/default_compartment);end

function z=xi(x,alpha,r), z=(1+alpha*x*(x-1)*(x-r));end

function z=Function_for__J2(E2F,b_syn,default_compartment), z=(b_syn*E2F/default_compartment);end

function z=Function_for__J3(APC,CycB,b_deg,default_compartment,delta_b), z=(b_deg*CycB*(APC+delta_b)/default_compartment);end

function z=Function_for__J0(d_syn,default_compartment), z=(d_syn/default_compartment);end

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


