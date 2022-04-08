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
% Model name = dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy
%
% isDescribedBy http://identifiers.org/doi/10.1080/17486700802216301
% is http://identifiers.org/biomodels.db/MODEL1908050002
% is http://identifiers.org/biomodels.db/BIOMD0000000779
%


function main()
%Initial conditions vector
	x0=zeros(6,1);
	x0(1) = 1.0E7;
	x0(2) = 2.5E8;
	x0(3) = 526800.0;
	x0(4) = 2.25E9;
	x0(5) = 0.0;
	x0(6) = 1073.0;


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
% Parameter:   id =  a, name = a
	global_par_a=0.431;
% Parameter:   id =  b, name = b
	global_par_b=1.02E-9;
% Parameter:   id =  c, name = c
	global_par_c=2.9077E-13;
% Parameter:   id =  K_T, name = K_T
	global_par_K_T=0.9;
% Parameter:   id =  delta_T, name = delta_T
	global_par_delta_T=1.8328;
% Parameter:   id =  ef, name = ef
	global_par_ef=0.111;
% Parameter:   id =  f, name = f
	global_par_f=0.0125;
% Parameter:   id =  p, name = p
	global_par_p=2.794E-13;
% Parameter:   id =  p_N, name = p_N
	global_par_p_N=0.068;
% Parameter:   id =  g_N, name = g_N
	global_par_g_N=250360.0;
% Parameter:   id =  K_N, name = K_N
	global_par_K_N=0.0675;
% Parameter:   id =  delta_N, name = delta_N
	global_par_delta_N=1.8328;
% Parameter:   id =  m, name = m
	global_par_m=0.009;
% Parameter:   id =  theta, name = theta
	global_par_theta=0.0025036;
% Parameter:   id =  q, name = q
	global_par_q=3.422E-10;
% Parameter:   id =  r_1, name = r_1
	global_par_r_1=2.9077E-11;
% Parameter:   id =  r_2, name = r_2
	global_par_r_2=5.8467E-13;
% Parameter:   id =  p_I, name = p_I
	global_par_p_I=2.971;
% Parameter:   id =  g_I, name = g_I
	global_par_g_I=2503.6;
% Parameter:   id =  u, name = u
	global_par_u=4.417E-14;
% Parameter:   id =  kappa, name = kappa
	global_par_kappa=2503.6;
% Parameter:   id =  j, name = j
	global_par_j=0.01245;
% Parameter:   id =  k, name = k
	global_par_k=2.019E7;
% Parameter:   id =  K_L, name = K_L
	global_par_K_L=0.0486;
% Parameter:   id =  delta_L, name = delta_L
	global_par_delta_L=1.8328;
% Parameter:   id =  alphabeta, name = alphabeta
	global_par_alphabeta=2.25E9;
% Parameter:   id =  beta, name = beta
	global_par_beta=0.0063;
% Parameter:   id =  K_C, name = K_C
	global_par_K_C=0.034;
% Parameter:   id =  delta_C, name = delta_C
	global_par_delta_C=1.8328;
% Parameter:   id =  gamma, name = gamma
	global_par_gamma=0.5199;
% Parameter:   id =  mu_I, name = mu_I
	global_par_mu_I=11.7427;
% Parameter:   id =  omega, name = omega
	global_par_omega=0.07874;
% Parameter:   id =  phi, name = phi
	global_par_phi=2.38405E-7;
% Parameter:   id =  zeta, name = zeta
	global_par_zeta=2503.6;
% Parameter:   id =  d, name = d
	global_par_d=0.0;
% Parameter:   id =  l, name = l
	global_par_l=0.0;
% Parameter:   id =  s, name = s
	global_par_s=0.0;
% Parameter:   id =  D, name = D
% Parameter:   id =  v_M, name = v_M
	global_par_v_M=0.0;
% Parameter:   id =  v_I, name = v_I
	global_par_v_I=0.0;
% Parameter:   id =  v_L, name = v_L
	global_par_v_L=0.0;
% Parameter:   id =  ModelValue_34_0, name = Initial for d
	global_par_ModelValue_34_0=0.0;
% Parameter:   id =  ModelValue_35_0, name = Initial for l
	global_par_ModelValue_35_0=0.0;
% Parameter:   id =  ModelValue_36_0, name = Initial for s
	global_par_ModelValue_36_0=0.0;
% assignmentRule: variable = D
	global_par_D=global_par_ModelValue_34_0*(x(3)/x(1))^global_par_ModelValue_35_0/(global_par_ModelValue_36_0+(x(3)/x(1))^global_par_ModelValue_35_0);

% Reaction: id = Logistic_Tumour_Growth, name = Logistic_Tumour_Growth
	reaction_Logistic_Tumour_Growth=compartment_compartment*Function_for_Logistic_Tumour_Growth(global_par_a, x(1), global_par_b);

% Reaction: id = NK_Induced_Tumour_Death, name = NK-Induced_Tumour_Death
	reaction_NK_Induced_Tumour_Death=compartment_compartment*Function_for_NK_Induced_Tumour_Death(global_par_c, x(2), x(1));

% Reaction: id = CD8_T_Cell_Induced_Tumour_Death, name = CD8_T_Cell-Induced_Tumour_Death
	reaction_CD8_T_Cell_Induced_Tumour_Death=compartment_compartment*global_par_D*x(1);

% Reaction: id = Chemotherapy_Induced_Tumour_Death, name = Chemotherapy-Induced_Tumour_Death
	reaction_Chemotherapy_Induced_Tumour_Death=compartment_compartment*Function_for_Chemotherapy_Induced_Tumour_Death(global_par_K_T, global_par_delta_T, x(5), x(1));

% Reaction: id = NK_Death_Tumour_Killing, name = NK_Death_Tumour_Killing
	reaction_NK_Death_Tumour_Killing=compartment_compartment*Function_for_NK_Death_Tumour_Killing(global_par_p, x(2), x(1));

% Reaction: id = NK_Stimulation_IL_2, name = NK_Stimulation_IL-2
	reaction_NK_Stimulation_IL_2=compartment_compartment*Function_for_NK_Stimulation_IL_2(global_par_p_N, x(2), x(6), global_par_g_N);

% Reaction: id = NK_Death_Medicine, name = NK_Death_Medicine
	reaction_NK_Death_Medicine=compartment_compartment*Function_for_NK_Death_Medicine(x(5), global_par_K_N, global_par_delta_N, x(2));

% Reaction: id = CD8_T_Cell_Turnover, name = CD8_T_Cell_Turnover
	reaction_CD8_T_Cell_Turnover=compartment_compartment*Function_for_CD8_T_Cell_Turnover(global_par_phi, global_par_m, x(3), x(6));

% Reaction: id = CD8_T_Cell_Death_Tumour_Killing, name = CD8_T_Cell_Death_Tumour_Killing
	reaction_CD8_T_Cell_Death_Tumour_Killing=compartment_compartment*Function_for_CD8_T_Cell_Death_Tumour_Killing(global_par_q, x(3), x(1));

% Reaction: id = CD8_T_Cell_Stimulation_NK, name = CD8_T_Cell_Stimulation_NK
	reaction_CD8_T_Cell_Stimulation_NK=compartment_compartment*Function_for_CD8_T_Cell_Stimulation_NK(global_par_r_1, x(2), x(1));

% Reaction: id = CD8_T_Cell_Activation, name = CD8_T_Cell_Activation
	reaction_CD8_T_Cell_Activation=compartment_compartment*Function_for_CD8_T_Cell_Stimulation_NK(global_par_r_2, x(4), x(1));

% Reaction: id = CD8_Breakdown_Stimulation_IL_2, name = CD8_Breakdown_Stimulation_IL-2
	reaction_CD8_Breakdown_Stimulation_IL_2=compartment_compartment*Function_for_CD8_Breakdown_Stimulation_IL_2(global_par_u, x(3), x(4), x(6), global_par_kappa);

% Reaction: id = CD8_T_Cell_Stimulation_Tumour_Debris, name = CD8_T_Cell_Stimulation_Tumour_Debris
	reaction_CD8_T_Cell_Stimulation_Tumour_Debris=compartment_compartment*Function_for_CD8_T_Cell_Stimulation_Tumour_Debris(global_par_j, x(1), x(3), global_par_k);

% Reaction: id = CD8_T_Cell_Death_Medicine, name = CD8_T_Cell_Death_Medicine
	reaction_CD8_T_Cell_Death_Medicine=compartment_compartment*Function_for_CD8_T_Cell_Death_Medicine(global_par_K_L, global_par_delta_L, x(5), x(3));

% Reaction: id = Lymphocyte_Synthesis_Turnover_Bone_Marrow, name = Lymphocyte_Synthesis_Turnover_Bone_Marrow
	reaction_Lymphocyte_Synthesis_Turnover_Bone_Marrow=compartment_compartment*Function_for_Lymphocyte_Synthesis_Turnover_Bone_Marrow(global_par_beta, global_par_alphabeta, x(4));

% Reaction: id = Lymphocyte_Death_Medicine, name = Lymphocyte_Death_Medicine
	reaction_Lymphocyte_Death_Medicine=compartment_compartment*Function_for_Lymphocyte_Death_Medicine(global_par_K_C, global_par_delta_C, x(5), x(4));

% Reaction: id = Medicine_Excretion, name = Medicine_Excretion
	reaction_Medicine_Excretion=compartment_compartment*global_par_gamma*x(5);

% Reaction: id = IL_2_Turnover, name = IL-2_Turnover
	reaction_IL_2_Turnover=compartment_compartment*global_par_mu_I*x(6);

% Reaction: id = IL_2_Production_Naive, name = IL-2_Production_Naive
	reaction_IL_2_Production_Naive=compartment_compartment*Function_for_IL_2_Production_Naive(global_par_phi, x(4));

% Reaction: id = IL_2_Production_Activated_CD8, name = IL-2_Production_Activated_CD8
	reaction_IL_2_Production_Activated_CD8=compartment_compartment*Function_for_IL_2_Production_Activated_CD8(global_par_omega, x(3), x(6), global_par_zeta);

% Reaction: id = NK_Production_and_Turnover, name = NK_Production_and_Turnover
	reaction_NK_Production_and_Turnover=compartment_compartment*Function_for_NK_Production_and_Turnover(global_par_f, global_par_ef, x(4), x(2));

% Reaction: id = CD8_T_Cell_Stimulation_IL_2, name = CD8_T_Cell_Stimulation_IL-2
	reaction_CD8_T_Cell_Stimulation_IL_2=compartment_compartment*Function_for_CD8_T_Cell_Stimulation_IL_2(global_par_p_I, x(3), x(6), global_par_g_I);

	xdot=zeros(6,1);
	
% Species:   id = T_Tumour_Cells, name = T_Tumour_Cells, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_Logistic_Tumour_Growth) + (-1.0 * reaction_NK_Induced_Tumour_Death) + (-1.0 * reaction_CD8_T_Cell_Induced_Tumour_Death) + (-1.0 * reaction_Chemotherapy_Induced_Tumour_Death));
	
% Species:   id = N_Natural_Killer_Cells, name = N_Natural_Killer_Cells, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*((-1.0 * reaction_NK_Death_Tumour_Killing) + ( 1.0 * reaction_NK_Stimulation_IL_2) + (-1.0 * reaction_NK_Death_Medicine) + ( 1.0 * reaction_NK_Production_and_Turnover));
	
% Species:   id = L_CD8_T_Cells, name = L_CD8_T_Cells, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*((-1.0 * reaction_CD8_T_Cell_Turnover) + (-1.0 * reaction_CD8_T_Cell_Death_Tumour_Killing) + ( 1.0 * reaction_CD8_T_Cell_Stimulation_NK) + ( 1.0 * reaction_CD8_T_Cell_Activation) + (-1.0 * reaction_CD8_Breakdown_Stimulation_IL_2) + ( 1.0 * reaction_CD8_T_Cell_Stimulation_Tumour_Debris) + (-1.0 * reaction_CD8_T_Cell_Death_Medicine) + ( 1.0 * reaction_CD8_T_Cell_Stimulation_IL_2) + ( 1.0 * reaction_CD8_T_Cell_Activated_Injection));
	
% Species:   id = C_Lymphocytes, name = C_Lymphocytes, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_Lymphocyte_Synthesis_Turnover_Bone_Marrow) + (-1.0 * reaction_Lymphocyte_Death_Medicine));
	
% Species:   id = M_Chemotherapy_Drug, name = M_Chemotherapy_Drug, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*((-1.0 * reaction_Medicine_Excretion) + ( 1.0 * reaction_Medicine_Injection));
	
% Species:   id = I_IL_2, name = I_IL-2, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*((-1.0 * reaction_IL_2_Turnover) + ( 1.0 * reaction_IL_2_Production_Naive) + ( 1.0 * reaction_IL_2_Production_Activated_CD8) + ( 1.0 * reaction_IL_2_Injection));
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=Function_for_CD8_T_Cell_Death_Medicine(K_L,delta_L,M,L), z=(K_L*(1-exp((-1)*delta_L*M))*L);end

function z=Function_for_Lymphocyte_Synthesis_Turnover_Bone_Marrow(beta,alphabeta,C), z=(beta*(alphabeta-C));end

function z=Function_for_CD8_T_Cell_Stimulation_IL_2(p_I,L,I,g_I), z=(p_I*L*I/(g_I+I));end

function z=Function_for_IL_2_Production_Activated_CD8(omega,L,I,zeta), z=(omega*L*I/(zeta+I));end

function z=Function_for_NK_Production_and_Turnover(f,ef,C,N), z=(f*(ef*C-N));end

function z=Function_for_CD8_T_Cell_Stimulation_NK(r_1,N,T), z=(r_1*N*T);end

function z=Function_for_CD8_Breakdown_Stimulation_IL_2(u,L,C,I,kappa), z=(u*L^2*C*I/(kappa+I));end

function z=Function_for_NK_Death_Medicine(M,K_N,delta_N,N), z=(K_N*(1-exp((-1)*delta_N*M))*N);end

function z=Function_for_Logistic_Tumour_Growth(a,T,b), z=(a*T*(1-b*T));end

function z=Function_for_CD8_T_Cell_Turnover(phi,m,L,I), z=(phi*m*L/(phi+I));end

function z=Function_for_NK_Induced_Tumour_Death(c,N,T), z=(c*N*T);end

function z=Function_for_CD8_T_Cell_Stimulation_Tumour_Debris(j,T,L,k), z=(j*T*L/(k+T));end

function z=Function_for_NK_Stimulation_IL_2(p_N,N,I,g_N), z=(p_N*N*I/(g_N+I));end

function z=Function_for_Lymphocyte_Death_Medicine(K_C,delta_C,M,C), z=(K_C*(1-exp((-1)*delta_C*M))*C);end

function z=Function_for_IL_2_Production_Naive(phi,C), z=(phi*C);end

function z=Function_for_Chemotherapy_Induced_Tumour_Death(K_T,delta_T,M,T), z=(K_T*(1-exp((-1)*delta_T*M))*T);end

function z=Function_for_NK_Death_Tumour_Killing(p,N,T), z=(p*N*T);end

function z=Function_for_CD8_T_Cell_Death_Tumour_Killing(q,L,T), z=(q*L*T);end

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


