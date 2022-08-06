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
% Model name = Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions
%
% isDescribedBy http://identifiers.org/pubmed/30745900
% is http://identifiers.org/biomodels.db/MODEL1911180001
% is http://identifiers.org/biomodels.db/BIOMD0000000865
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 1.0;
	x0(2) = 1.0;
	x0(3) = 1.0;
	x0(4) = 1.0;


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
% Parameter:   id =  sigma_i, name = sigma_i
	global_par_sigma_i=0.3;
% Parameter:   id =  sigma_p, name = sigma_p
	global_par_sigma_p=0.1;
% Parameter:   id =  a_c, name = a_c
	global_par_a_c=0.75;
% Parameter:   id =  a_p, name = a_p
	global_par_a_p=0.75;
% Parameter:   id =  a_i, name = a_i
	global_par_a_i=75.0;
% Parameter:   id =  a_b, name = a_b
	global_par_a_b=100.0;
% Parameter:   id =  A_c, name = A_c
	global_par_A_c=0.01;
% Parameter:   id =  A_p, name = A_p
	global_par_A_p=0.1;
% Parameter:   id =  A_i, name = A_i
	global_par_A_i=1.0;
% Parameter:   id =  A_b, name = A_b
	global_par_A_b=10.0;
% Parameter:   id =  n_c, name = n_c
	global_par_n_c=3.0;
% Parameter:   id =  n_p, name = n_p
	global_par_n_p=3.0;
% Parameter:   id =  n_b, name = n_b
	global_par_n_b=2.0;
% Parameter:   id =  n_i, name = n_i
	global_par_n_i=2.0;
% Parameter:   id =  k_b, name = k_b
	global_par_k_b=25.0;
% Parameter:   id =  k_i, name = k_i
	global_par_k_i=7.5;
% Parameter:   id =  q_i, name = q_i
	global_par_q_i=7.5;
% Parameter:   id =  K_b, name = K_b
	global_par_K_b=1.0;
% Parameter:   id =  K_i, name = K_i
	global_par_K_i=1.0;
% Parameter:   id =  Q_i, name = Q_i
	global_par_Q_i=1.0;
% Parameter:   id =  m_b, name = m_b
	global_par_m_b=2.0;
% Parameter:   id =  m_i, name = m_i
	global_par_m_i=2.0;
% Parameter:   id =  s_i, name = s_i
	global_par_s_i=2.0;
% Parameter:   id =  M_b, name = M_b
	global_par_M_b=10.0;
% Parameter:   id =  M_c, name = M_c
	global_par_M_c=10.0;
% Parameter:   id =  M_p, name = M_p
	global_par_M_p=10.0;
% Parameter:   id =  H_p, name = H_p
	global_par_H_p=0.1;
% Parameter:   id =  H_L, name = H_L
	global_par_H_L=0.1;
% Parameter:   id =  r_b, name = r_b
	global_par_r_b=2.0;
% Parameter:   id =  r_c, name = r_c
	global_par_r_c=2.0;
% Parameter:   id =  r_p, name = r_p
	global_par_r_p=4.0;
% Parameter:   id =  h_L, name = h_L
	global_par_h_L=4.0;
% Parameter:   id =  mu_c, name = mu_c
	global_par_mu_c=0.1;
% Parameter:   id =  mu_p, name = mu_p
	global_par_mu_p=0.1;
% Parameter:   id =  mu_b, name = mu_b
	global_par_mu_b=1.0;
% Parameter:   id =  mu_i, name = mu_i
	global_par_mu_i=1.0;
% Parameter:   id =  L, name = L
	global_par_L=0.0;
% Parameter:   id =  K_i_nu, name = K_i_nu
	global_par_K_i_nu=0.001;
% Parameter:   id =  K_p, name = K_p
	global_par_K_p=0.01;
% Parameter:   id =  gamma_y, name = gamma_y
	global_par_gamma_y=500.0;
% Parameter:   id =  gamma_p, name = gamma_p
	global_par_gamma_p=500.0;
% Parameter:   id =  delta, name = delta
	global_par_delta=5000.0;
% Parameter:   id =  theta, name = theta
	global_par_theta=50000.0;
% Parameter:   id =  lambda, name = lambda
	global_par_lambda=10000.0;
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=1.0E-4;
% Parameter:   id =  kappa, name = kappa
	global_par_kappa=1.0;
% Parameter:   id =  y_a_k, name = y_a_k
% Parameter:   id =  c_T_a_k, name = c_T_a_k
% Parameter:   id =  nu_k, name = nu_k
% Parameter:   id =  mu_a_k, name = mu_a_k
% Parameter:   id =  phi_L_P, name = phi_L_P
% Parameter:   id =  U_a_k_P, name = U_a_k_P
% Parameter:   id =  sigma_p_tilde, name = sigma_p_tilde
% Parameter:   id =  k_T, name = k_T
	global_par_k_T=0.5;
% Parameter:   id =  K_T, name = K_T
	global_par_K_T=1.0;
% Parameter:   id =  n_T, name = n_T
	global_par_n_T=2.0;
% Parameter:   id =  T, name = T
	global_par_T=0.0;
% Parameter:   id =  Phi_L_P, name = Phi_L_P
% assignmentRule: variable = sigma_p_tilde
	global_par_sigma_p_tilde=global_par_sigma_p+global_par_k_T*global_par_T^global_par_n_T/(global_par_K_T^global_par_n_T+global_par_T^global_par_n_T);
% assignmentRule: variable = phi_L_P
	global_par_phi_L_P=global_par_H_p/(global_par_H_p+global_par_L*x(2));
% assignmentRule: variable = c_T_a_k
	global_par_c_T_a_k=0.5*(1+global_par_alpha+global_par_kappa-((1+global_par_alpha+global_par_kappa)^2-4*global_par_alpha)^0.5);
% assignmentRule: variable = nu_k
	global_par_nu_k=global_par_K_p/(global_par_kappa+global_par_K_i_nu)*global_par_kappa/(global_par_kappa+global_par_K_p);
% assignmentRule: variable = y_a_k
	global_par_y_a_k=(1+global_par_lambda*global_par_nu_k*global_par_c_T_a_k)/(1+global_par_gamma_y+global_par_lambda*global_par_nu_k*global_par_c_T_a_k);
% assignmentRule: variable = mu_a_k
	global_par_mu_a_k=(1+global_par_delta*global_par_y_a_k)/(1+global_par_gamma_p+global_par_theta*global_par_nu_k*global_par_c_T_a_k+global_par_delta*global_par_y_a_k);
% assignmentRule: variable = U_a_k_P
	global_par_U_a_k_P=global_par_mu_a_k*global_par_phi_L_P;
% assignmentRule: variable = Phi_L_P
	global_par_Phi_L_P=global_par_H_L^global_par_h_L/(global_par_H_L^global_par_h_L+(global_par_L*x(2))^global_par_h_L);

% Reaction: id = Bcl6_Production, name = Bcl6_Production
	reaction_Bcl6_Production=compartment_compartment*Function_for_Bcl6_Production(global_par_a_c, global_par_U_a_k_P, global_par_n_c, global_par_A_c, global_par_M_c, global_par_r_c, x(4), x(3), x(1));

% Reaction: id = Bcl6_Degradation, name = Bcl6_Degradation
	reaction_Bcl6_Degradation=compartment_compartment*global_par_mu_c*x(1);

% Reaction: id = PD1_Production, name = PD1_Production
	reaction_PD1_Production=compartment_compartment*Function_for_PD1_Production(global_par_sigma_p_tilde, global_par_a_p, global_par_U_a_k_P, global_par_n_p, global_par_A_p, global_par_M_p, global_par_r_p, x(4));

% Reaction: id = PD1_Degradation, name = PD1_Degradation
	reaction_PD1_Degradation=compartment_compartment*global_par_mu_p*x(2);

% Reaction: id = IRF4_Production, name = IRF4_Production
	reaction_IRF4_Production=compartment_compartment*Function_for_IRF4_Production(global_par_Phi_L_P, global_par_sigma_i, global_par_a_i, global_par_U_a_k_P, global_par_n_i, global_par_A_i, global_par_k_i, x(4), global_par_m_i, global_par_K_i, x(3), global_par_s_i, global_par_Q_i, global_par_q_i);

% Reaction: id = IRF4_Degradation, name = IRF4_Degradation
	reaction_IRF4_Degradation=compartment_compartment*global_par_mu_i*x(3);

% Reaction: id = Blimp1_Degradation, name = Blimp1_Degradation
	reaction_Blimp1_Degradation=compartment_compartment*global_par_mu_b*x(4);

% Reaction: id = Blimp1_Production, name = Blimp1_Production
	reaction_Blimp1_Production=compartment_compartment*Function_for_Blimp1_Production(global_par_a_b, global_par_U_a_k_P, global_par_n_b, global_par_A_b, global_par_k_b, x(3), global_par_m_b, global_par_K_b, global_par_r_b, global_par_M_b, x(1));

	xdot=zeros(4,1);
	
% Species:   id = C, name = C, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_Bcl6_Production) + (-1.0 * reaction_Bcl6_Degradation));
	
% Species:   id = P, name = P, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_PD1_Production) + (-1.0 * reaction_PD1_Degradation));
	
% Species:   id = I, name = I, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_IRF4_Production) + (-1.0 * reaction_IRF4_Degradation));
	
% Species:   id = B, name = B, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*((-1.0 * reaction_Blimp1_Degradation) + ( 1.0 * reaction_Blimp1_Production));
end

function z=Function_for_Bcl6_Production(a_c,U,n_c,A_c,M_c,r_c,B,I,C), z=(a_c*U^n_c/(A_c^n_c+U^n_c)*M_c^r_c/(M_c^r_c+B^r_c+I^r_c+C^r_c));end

function z=Function_for_IRF4_Production(Phi_L_P,sigma_i,a_i,U,n_i,A_i,k_i,B,m_i,K_i,I,s_i,Q_i,q_i), z=(Phi_L_P*(sigma_i+a_i*U^n_i/(A_i^n_i+U^n_i)+k_i*B^m_i/(K_i^m_i+B^m_i)+q_i*I^s_i/(Q_i^s_i+I^s_i)));end

function z=Function_for_PD1_Production(sigma_p,a_p,U,n_p,A_p,M_p,r_p,B), z=((sigma_p+a_p*U^n_p/(A_p^n_p+U^n_p))*M_p^r_p/(M_p^r_p+B^r_p));end

function z=Function_for_Blimp1_Production(a_b,U,n_b,A_b,k_b,I,m_b,K_b,r_b,M_b,C), z=((a_b*U^n_b/(A_b^n_b+U^n_b)+k_b*I^m_b/(K_b^m_b+I^m_b))*M_b^r_b/(M_b^r_b+C^r_b));end

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


