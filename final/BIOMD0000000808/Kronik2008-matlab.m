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
% Model name = Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics
%
% isDescribedBy http://identifiers.org/pubmed/17823798
% is http://identifiers.org/biomodels.db/MODEL1909090001
% is http://identifiers.org/biomodels.db/BIOMD0000000808
%


function main()
%Initial conditions vector
	x0=zeros(6,1);
	x0(1) = 1.0E10;
	x0(2) = 2000000.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;


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
% Parameter:   id =  r, name = r
	global_par_r=3.5E-4;
% Parameter:   id =  K, name = K
	global_par_K=1.0E11;
% Parameter:   id =  a_T, name = a_T
	global_par_a_T=0.12;
% Parameter:   id =  e_T, name = e_T
	global_par_e_T=50.0;
% Parameter:   id =  a_T_beta, name = a_T_beta
	global_par_a_T_beta=0.69;
% Parameter:   id =  e_T_beta, name = e_T_beta
	global_par_e_T_beta=10000.0;
% Parameter:   id =  h_T, name = h_T
	global_par_h_T=5.0E8;
% Parameter:   id =  a_C_M2, name = a_C_M2
	global_par_a_C_M2=4.8E-11;
% Parameter:   id =  e_C_M2, name = e_C_M2
	global_par_e_C_M2=1.0E14;
% Parameter:   id =  a_C_beta, name = a_C_beta
	global_par_a_C_beta=0.8;
% Parameter:   id =  e_C_beta, name = e_C_beta
	global_par_e_C_beta=10000.0;
% Parameter:   id =  mu_C, name = mu_C
	global_par_mu_C=0.007;
% Parameter:   id =  g_beta, name = g_beta
	global_par_g_beta=63945.0;
% Parameter:   id =  a_beta_T, name = a_beta_T
	global_par_a_beta_T=5.75E-6;
% Parameter:   id =  mu_beta, name = mu_beta
	global_par_mu_beta=7.0;
% Parameter:   id =  a_gamma_C, name = a_gamma_C
	global_par_a_gamma_C=1.02E-4;
% Parameter:   id =  mu_gamma, name = mu_gamma
	global_par_mu_gamma=0.102;
% Parameter:   id =  g_M1, name = g_M1
	global_par_g_M1=1.44;
% Parameter:   id =  a_M1_gamma, name = a_M1_gamma
	global_par_a_M1_gamma=2.88;
% Parameter:   id =  e_M1_gamma, name = e_M1_gamma
	global_par_e_M1_gamma=338000.0;
% Parameter:   id =  mu_M1, name = mu_M1
	global_par_mu_M1=0.0144;
% Parameter:   id =  a_M2_gamma, name = a_M2_gamma
	global_par_a_M2_gamma=8660.0;
% Parameter:   id =  e_M2_gamma, name = e_M2_gamma
	global_par_e_M2_gamma=1420.0;
% Parameter:   id =  a_M2_beta, name = a_M2_beta
	global_par_a_M2_beta=0.012;
% Parameter:   id =  e_M2_beta, name = e_M2_beta
	global_par_e_M2_beta=100000.0;
% Parameter:   id =  mu_M2, name = mu_M2
	global_par_mu_M2=0.0144;
% Parameter:   id =  S, name = S
% Parameter:   id =  T_e9, name = T_e9
% Parameter:   id =  S_dose, name = S_dose
	global_par_S_dose=3.0E8;
% Parameter:   id =  C_e7, name = C_e7
% Parameter:   id =  S_interval, name = S_interval
	global_par_S_interval=10.0;
% Parameter:   id =  S_2, name = S_2
% Parameter:   id =  S_3, name = S_3
% Parameter:   id =  S_1, name = S_1
% Parameter:   id =  S_4, name = S_4
% Parameter:   id =  S_5, name = S_5
% Parameter:   id =  ModelValue_28, name = Initial for S_dose
	global_par_ModelValue_28=3.0E8;
% Parameter:   id =  ModelValue_30, name = Initial for S_interval
	global_par_ModelValue_30=10.0;
% assignmentRule: variable = T_e9
	global_par_T_e9=x(1)/100000000;
% assignmentRule: variable = S_3
	global_par_S_3=piecewise(global_par_ModelValue_28/global_par_ModelValue_30, (((piecewise(time-120*ceil(time/120),  xor (time < 0, 120 < 0), time-120*floor(time/120)) >= 0) && (piecewise(time-120*ceil(time/120),  xor (time < 0, 120 < 0), time-120*floor(time/120)) <= global_par_ModelValue_30)) && (time > 2880)) && (time < 3240), 0);
% assignmentRule: variable = S_4
	global_par_S_4=piecewise(global_par_ModelValue_28/global_par_ModelValue_30, (((piecewise(time-120*ceil(time/120),  xor (time < 0, 120 < 0), time-120*floor(time/120)) >= 0) && (piecewise(time-120*ceil(time/120),  xor (time < 0, 120 < 0), time-120*floor(time/120)) <= global_par_ModelValue_30)) && (time > 4320)) && (time < 4680), 0);
% assignmentRule: variable = C_e7
	global_par_C_e7=x(2)/10000000;
% assignmentRule: variable = S_5
	global_par_S_5=piecewise(global_par_ModelValue_28/global_par_ModelValue_30, (((piecewise(time-120*ceil(time/120),  xor (time < 0, 120 < 0), time-120*floor(time/120)) >= 0) && (piecewise(time-120*ceil(time/120),  xor (time < 0, 120 < 0), time-120*floor(time/120)) <= global_par_ModelValue_30)) && (time > 5760)) && (time < 6120), 0);
% assignmentRule: variable = S_2
	global_par_S_2=piecewise(global_par_ModelValue_28/global_par_ModelValue_30, (((piecewise(time-120*ceil(time/120),  xor (time < 0, 120 < 0), time-120*floor(time/120)) >= 0) && (piecewise(time-120*ceil(time/120),  xor (time < 0, 120 < 0), time-120*floor(time/120)) <= global_par_ModelValue_30)) && (time > 1440)) && (time < 1800), 0);
% assignmentRule: variable = S_1
	global_par_S_1=piecewise(global_par_S_dose/global_par_ModelValue_30, ((piecewise(time-120*ceil(time/120),  xor (time < 0, 120 < 0), time-120*floor(time/120)) >= 0) && (piecewise(time-120*ceil(time/120),  xor (time < 0, 120 < 0), time-120*floor(time/120)) <= global_par_ModelValue_30)) && (time < 360), 0);
% assignmentRule: variable = S
	global_par_S=global_par_S_1+global_par_S_2+global_par_S_3+global_par_S_4+global_par_S_5;

% Reaction: id = Tumor_Growth, name = Tumor_Growth
	reaction_Tumor_Growth=compartment_compartment*Function_for_Tumor_Growth(global_par_r, x(1), global_par_K);

% Reaction: id = Tumor_Elimination_CTL, name = Tumor_Elimination_CTL
	reaction_Tumor_Elimination_CTL=compartment_compartment*Function_for_Tumor_Elimination_CTL(global_par_a_T, x(5), global_par_e_T, x(2), x(1), global_par_h_T, global_par_a_T_beta, global_par_e_T_beta, x(3));

% Reaction: id = CTL_Recruitment, name = CTL_Recruitment
	reaction_CTL_Recruitment=compartment_compartment*Function_for_CTL_Recruitment(global_par_a_C_M2, x(6), x(1), global_par_e_C_M2, global_par_a_C_beta, global_par_e_C_beta, x(3));

% Reaction: id = CTL_Death, name = CTL_Death
	reaction_CTL_Death=compartment_compartment*global_par_mu_C*x(2);

% Reaction: id = F_beta_Tumor_Production, name = F_beta_Tumor_Production
	reaction_F_beta_Tumor_Production=compartment_compartment*Function_for_F_beta_Tumor_Production(global_par_a_T_beta, x(1));

% Reaction: id = F_beta_Degradation, name = F_beta_Degradation
	reaction_F_beta_Degradation=compartment_compartment*global_par_mu_beta*x(3);

% Reaction: id = F_gamma_CTL_Production, name = F_gamma_CTL_Production
	reaction_F_gamma_CTL_Production=compartment_compartment*Function_for_F_gamma_CTL_Production(global_par_a_gamma_C, x(2));

% Reaction: id = F_gamma_Degradation, name = F_gamma_Degradation
	reaction_F_gamma_Degradation=compartment_compartment*global_par_mu_gamma*x(4);

% Reaction: id = M1_Degradation, name = M1_Degradation
	reaction_M1_Degradation=compartment_compartment*global_par_mu_M1*x(5);

% Reaction: id = M2_Degradation, name = M2_Degradation
	reaction_M2_Degradation=compartment_compartment*global_par_mu_M2*x(6);

	xdot=zeros(6,1);
	
% Species:   id = T, name = T, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_Tumor_Growth) + (-1.0 * reaction_Tumor_Elimination_CTL));
	
% Species:   id = C, name = C, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_CTL_Recruitment) + (-1.0 * reaction_CTL_Death) + ( 1.0 * reaction_CTL_Infusion));
	
% Species:   id = F_beta, name = F_beta, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_F_beta_Basal_Production) + ( 1.0 * reaction_F_beta_Tumor_Production) + (-1.0 * reaction_F_beta_Degradation));
	
% Species:   id = F_gamma, name = F_gamma, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_F_gamma_CTL_Production) + (-1.0 * reaction_F_gamma_Degradation));
	
% Species:   id = M1, name = M1, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_M1_Receptor_Expression_Basal) + ( 1.0 * reaction_M1_Expression_Stimulated) + (-1.0 * reaction_M1_Degradation));
	
% Species:   id = M2, name = M2, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*(( 1.0 * reaction_M2_Production) + (-1.0 * reaction_M2_Degradation));
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=Function_for_F_gamma_CTL_Production(a_gamma_C,C), z=(a_gamma_C*C);end

function z=Function_for_F_beta_Tumor_Production(a_B_T,T), z=(a_B_T*T);end

function z=Function_for_CTL_Recruitment(a_C_M2,M2,T,e_C_M2,a_C_beta,e_C_beta,F_beta), z=(a_C_M2*M2*T/(M2*T+e_C_M2)*(a_C_beta+e_C_beta*(1-a_C_beta)/(F_beta+e_C_beta)));end

function z=Function_for_Tumor_Elimination_CTL(a_T,M1,e_T,C,T,h_T,a_T_beta,e_T_beta,F_beta), z=(a_T*M1/(M1+e_T)*C*T/(h_T+T)*(a_T_beta+e_T_beta*(1-a_T_beta)/(F_beta+e_T_beta)));end

function z=Function_for_Tumor_Growth(r,T,K), z=(r*T*(1-T/K));end

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


