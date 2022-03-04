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
% Model name = dePillis2008 - Optimal control of mixed immunotherapy and chemotherapy of tumors
%
% isDerivedFrom http://identifiers.org/mamo/MAMO_0000046
% isDerivedFrom http://identifiers.org/taxonomy/9606
% isDerivedFrom http://identifiers.org/biomodels.db/MODEL2001160001
% isDescribedBy http://identifiers.org/biomodels.db/MODEL2001160001
% isDescribedBy http://identifiers.org/doi/10.1142/S0218339008002435
% is http://identifiers.org/biomodels.db/MODEL2001200003
% is http://identifiers.org/biomodels.db/BIOMD0000000913
%


function main()
%Initial conditions vector
	x0=zeros(6,1);
	x0(1) = 1.0E7;
	x0(2) = 2000.0;
	x0(3) = 500000.0;
	x0(4) = 4.17E10;
	x0(5) = 2000.0;
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
% Parameter:   id =  d, name = d
	global_par_d=5.0;
% Parameter:   id =  s, name = s
	global_par_s=0.3;
% Parameter:   id =  l, name = l
	global_par_l=2.0;
% Parameter:   id =  D, name = D
% Parameter:   id =  a, name = a
	global_par_a=0.002;
% Parameter:   id =  b, name = b
	global_par_b=1.02E-9;
% Parameter:   id =  c1, name = c1
	global_par_c1=3.23E-7;
% Parameter:   id =  f, name = f
	global_par_f=0.0412;
% Parameter:   id =  g, name = g
	global_par_g=0.025;
% Parameter:   id =  g_I, name = g_I
	global_par_g_I=2.0E7;
% Parameter:   id =  g_T, name = g_T
	global_par_g_T=100000.0;
% Parameter:   id =  h, name = h
	global_par_h=600.0;
% Parameter:   id =  K_C, name = K_C
	global_par_K_C=0.6;
% Parameter:   id =  K_L, name = K_L
	global_par_K_L=0.6;
% Parameter:   id =  K_N, name = K_N
	global_par_K_N=0.6;
% Parameter:   id =  K_T, name = K_T
	global_par_K_T=0.8;
% Parameter:   id =  m, name = m
	global_par_m=0.02;
% Parameter:   id =  p, name = p
	global_par_p=1.0E-7;
% Parameter:   id =  p_I, name = p_I
	global_par_p_I=0.125;
% Parameter:   id =  p_T, name = p_T
	global_par_p_T=0.6;
% Parameter:   id =  q, name = q
	global_par_q=3.42E-10;
% Parameter:   id =  r2, name = r2
	global_par_r2=3.0E-11;
% Parameter:   id =  s_1, name = s_1
	global_par_s_1=0.3;
% Parameter:   id =  u, name = u
	global_par_u=3.0;
% Parameter:   id =  w, name = w
	global_par_w=2.0E-4;
% Parameter:   id =  alpha_1, name = alpha_1
	global_par_alpha_1=13000.0;
% Parameter:   id =  alpha_2, name = alpha_2
	global_par_alpha_2=5.0E8;
% Parameter:   id =  beta, name = beta
	global_par_beta=0.012;
% Parameter:   id =  gamma, name = gamma
	global_par_gamma=0.9;
% Parameter:   id =  eta, name = eta
	global_par_eta=1.0;
% Parameter:   id =  mu_I, name = mu_I
	global_par_mu_I=10.0;
% Parameter:   id =  ModelValue_0, name = Initial for d
	global_par_ModelValue_0=5.0;
% Parameter:   id =  ModelValue_2, name = Initial for l
	global_par_ModelValue_2=2.0;
% Parameter:   id =  ModelValue_1, name = Initial for s
	global_par_ModelValue_1=0.3;
% assignmentRule: variable = D
	global_par_D=global_par_ModelValue_0*(x(2)/x(1))^global_par_ModelValue_2/(global_par_ModelValue_1+(x(2)/x(1))^global_par_ModelValue_2);

% Reaction: id = Detection_and_induction_of_tumor_cell_population, name = Detection and induction of tumor cell population
	reaction_Detection_and_induction_of_tumor_cell_population=compartment_compartment*Function_for_formation_of_tumor_cell_population(global_par_a, x(1), global_par_b);

% Reaction: id = Elimination_of_tumor_by_the_action_of_immune_response, name = Elimination of tumor by the action of immune response
	reaction_Elimination_of_tumor_by_the_action_of_immune_response=compartment_compartment*Function_for_elimination_of_tumor_cell(global_par_c1, x(3), x(1), global_par_D, global_par_K_T, x(6));

% Reaction: id = Activation_and_transfer_of_tumor_specific_CTL_at_the_site_of_tumor, name = Activation and transfer of tumor specific CTL at the site of tumor	% Local Parameter:   id =  V_L, name = V_L
	reaction_Activation_and_transfer_of_tumor_specific_CTL_at_the_site_of_tumor_V_L=0.0;

	reaction_Activation_and_transfer_of_tumor_specific_CTL_at_the_site_of_tumor=compartment_compartment*Function_for_activation_and_transfer_of_CTL_at_site_of_tumor(global_par_r2, x(4), x(1), global_par_p_I, x(2), x(5), global_par_g_I, reaction_Activation_and_transfer_of_tumor_specific_CTL_at_the_site_of_tumor_V_L);

% Reaction: id = Elimination_of_tumor_specific_CLT, name = Elimination of tumor specific CLT
	reaction_Elimination_of_tumor_specific_CLT=compartment_compartment*Function_for_elimination_of_CTL(global_par_m, x(2), global_par_q, x(1), global_par_u, global_par_K_L, x(6));

% Reaction: id = Activation_of_nonspecific_effector_immune_cell_population, name = Activation of nonspecific effector immune cell population
	reaction_Activation_of_nonspecific_effector_immune_cell_population=compartment_compartment*Function_for_activation_of_non_specific_effector_cell_population(global_par_alpha_1, global_par_g, x(1), global_par_eta, global_par_h, x(3));

% Reaction: id = Inactivation_and_elimination_of_non_specific_effector_immune_cell_population, name = Inactivation and elimination of non specific effector immune cell population
	reaction_Inactivation_and_elimination_of_non_specific_effector_immune_cell_population=compartment_compartment*Function_for_elimunation_of_non_specific_effector_cell_population(global_par_f, x(3), global_par_p, x(1), global_par_K_N, x(6));

% Reaction: id = Removal_of_ciruclating_lymphocyte_population, name = Removal of ciruclating lymphocyte population
	reaction_Removal_of_ciruclating_lymphocyte_population=compartment_compartment*Function_for_removal_of_circulating_lymphocyte_population(global_par_beta, x(4), global_par_K_C, x(6));

% Reaction: id = Increase_in_IL_2_concentration, name = Increase in IL-2 concentration	% Local Parameter:   id =  V_I, name = V_I
	reaction_Increase_in_IL_2_concentration_V_I=0.0;

	reaction_Increase_in_IL_2_concentration=compartment_compartment*Function_for_increase_in_IL_2_population(global_par_p_T, x(1), global_par_g_T, x(2), global_par_w, x(5), reaction_Increase_in_IL_2_concentration_V_I);

% Reaction: id = Decrease_in_IL_2_production, name = Decrease in IL-2 production
	reaction_Decrease_in_IL_2_production=compartment_compartment*Function_for_decrease_in_IL2_production(global_par_mu_I, x(5));

% Reaction: id = Decrease_in_chemotherapy_Drug_in_the_blood, name = Decrease in chemotherapy Drug in the blood
	reaction_Decrease_in_chemotherapy_Drug_in_the_blood=compartment_compartment*Function_for_decrease_in_chemotherapy_drug_in_the_blood(global_par_gamma, x(6));

	xdot=zeros(6,1);
	
% Species:   id = T, name = T, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_Detection_and_induction_of_tumor_cell_population) + (-1.0 * reaction_Elimination_of_tumor_by_the_action_of_immune_response));
	
% Species:   id = L, name = L, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_Activation_and_transfer_of_tumor_specific_CTL_at_the_site_of_tumor) + (-1.0 * reaction_Elimination_of_tumor_specific_CLT));
	
% Species:   id = N, name = N, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_Activation_of_nonspecific_effector_immune_cell_population) + (-1.0 * reaction_Inactivation_and_elimination_of_non_specific_effector_immune_cell_population));
	
% Species:   id = C, name = C, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_Activation_and_increase_of_circulating_lymphocyte_population) + (-1.0 * reaction_Removal_of_ciruclating_lymphocyte_population));
	
% Species:   id = I, name = I, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_Increase_in_IL_2_concentration) + (-1.0 * reaction_Decrease_in_IL_2_production));
	
% Species:   id = M, name = M, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*(( 1.0 * reaction_Increase_of_chemotherapy_drug_in_the_blood) + (-1.0 * reaction_Decrease_in_chemotherapy_Drug_in_the_blood));
end

function z=Function_for_formation_of_tumor_cell_population(a,T,b), z=(a*T*(1-b*T));end

function z=Function_for_removal_of_circulating_lymphocyte_population(beta,C,K_C,M), z=(beta*C+K_C*M*C);end

function z=Function_for_increase_in_circulating_lymphocyte_population(alpha_2), z=(alpha_2);end

function z=Function_for_elimunation_of_non_specific_effector_cell_population(f,N,p,T,K_N,M), z=(f*N+p*N*T+K_N*M*N);end

function z=Function_for_elimination_of_tumor_cell(c1,N,T,D,K_T,M), z=(c1*N*T+D*T+K_T*M*T);end

function z=Function_for_activation_and_transfer_of_CTL_at_site_of_tumor(r2,C,T,p_I,L,I,g_I,V_L), z=(r2*C*T+p_I*L*I/(g_I+I)+V_L);end

function z=Function_for_elimination_of_CTL(m,L,q,T,u,K_L,M), z=(m*L+q*L*T+u*L*L+K_L*M*L);end

function z=Function_for_increase_in_chemotherapy_drug_in_the_blood(V_M), z=(V_M);end

function z=Function_for_activation_of_non_specific_effector_cell_population(alpha_1,g,T,eta,h,N), z=(alpha_1+g*T^eta/(h+T^eta)*N);end

function z=Function_for_increase_in_IL_2_population(p_T,T,g_T,L,w,I,V_I), z=(p_T*T/(g_T+T)*L+w*L*I+V_I);end

function z=Function_for_decrease_in_IL2_production(mu_I,I), z=(mu_I*I);end

function z=Function_for_decrease_in_chemotherapy_drug_in_the_blood(gamma,M), z=(gamma*M);end

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


