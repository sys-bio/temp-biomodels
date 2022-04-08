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
% Model name = Bianchi2015 -Model for lymphangiogenesis in normal and diabetic wounds
%
% is http://identifiers.org/biomodels.db/MODEL1811210001
% is http://identifiers.org/biomodels.db/BIOMD0000000722
%


function main()
%Initial conditions vector
	x0=zeros(5,1);
	x0(1) = 30.0;
	x0(2) = 1875.0;
	x0(3) = 0.5;
	x0(4) = 0.0;
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

% Compartment: id = Body, name = Body, constant
	compartment_Body=1.0;
% Parameter:   id =  a_p, name = a_p
	global_par_a_p=0.029;
% Parameter:   id =  p_0, name = p_0
	global_par_p_0=250000.0;
% Parameter:   id =  a_M, name = a_M
	global_par_a_M=0.45;
% Parameter:   id =  T_L, name = T_L
	global_par_T_L=18.0;
% Parameter:   id =  r1, name = r1
	global_par_r1=3.0E-5;
% Parameter:   id =  d1, name = d1
	global_par_d1=500.0;
% Parameter:   id =  s_M, name = s_M
	global_par_s_M=542.0;
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=0.5;
% Parameter:   id =  b1, name = b1
	global_par_b1=8.0E8;
% Parameter:   id =  b2, name = b2
	global_par_b2=8.1E9;
% Parameter:   id =  beta, name = beta
	global_par_beta=0.005;
% Parameter:   id =  r2, name = r2
	global_par_r2=1.22;
% Parameter:   id =  k1, name = k1
	global_par_k1=600000.0;
% Parameter:   id =  d2, name = d2
	global_par_d2=0.2;
% Parameter:   id =  rho, name = rho
	global_par_rho=1.0E-5;
% Parameter:   id =  S_V, name = S_V
	global_par_S_V=1.9;
% Parameter:   id =  r3, name = r3
	global_par_r3=0.0019;
% Parameter:   id =  d3, name = d3
	global_par_d3=11.0;
% Parameter:   id =  gamma, name = gamma
	global_par_gamma=0.0014;
% Parameter:   id =  c1, name = c1
	global_par_c1=0.42;
% Parameter:   id =  c2, name = c2
	global_par_c2=42.0;
% Parameter:   id =  c3, name = c3
	global_par_c3=4.1;
% Parameter:   id =  c4, name = c4
	global_par_c4=0.24;
% Parameter:   id =  S_L, name = S_L
	global_par_S_L=500.0;
% Parameter:   id =  b3, name = b3
	global_par_b3=1.0E7;
% Parameter:   id =  b4, name = b4
	global_par_b4=8.1E9;
% Parameter:   id =  C, name = C*
	global_par_C=10000.0;
% Parameter:   id =  k2, name = k2
	global_par_k2=471000.0;
% Parameter:   id =  L, name = L*
	global_par_L=10000.0;
% Parameter:   id =  delta1, name = delta1
	global_par_delta1=0.05;
% Parameter:   id =  delta2, name = delta2
	global_par_delta2=0.001;
% Parameter:   id =  f, name = f
% Parameter:   id =  sigma, name = sigma
% assignmentRule: variable = f
	global_par_f=piecewise(1-x(5)/global_par_C, x(5) < global_par_C, 0);
% assignmentRule: variable = sigma
	global_par_sigma=piecewise(0, (x(4)+x(5)) < global_par_L, 1);

% Reaction: id = Activation_of_TGF_beta_by_enzymes_and_Macrophages, name = Activation of TGF-beta by enzymes and Macrophages
	reaction_Activation_of_TGF_beta_by_enzymes_and_Macrophages=compartment_Body*Function_for_reaction_1(global_par_a_p, global_par_p_0, global_par_T_L, time, global_par_a_M, x(2), global_par_r1);

% Reaction: id = Decay_of_TGF_beta, name = Decay of TGF-beta
	reaction_Decay_of_TGF_beta=compartment_Body*global_par_d1*x(1);

% Reaction: id = Chemotaxis_by_TGF_beta, name = Chemotaxis by TGF-beta
	reaction_Chemotaxis_by_TGF_beta=compartment_Body*Function_for_reaction_4(global_par_alpha, global_par_b1, x(1), global_par_b2);

% Reaction: id = Logistic_growth_of_Macrophages, name = Logistic growth of Macrophages
	reaction_Logistic_growth_of_Macrophages=compartment_Body*Function_for_reaction_5(global_par_beta, global_par_r2, x(2), global_par_k1);

% Reaction: id = Removal_of_Macrophages, name = Removal of Macrophages
	reaction_Removal_of_Macrophages=compartment_Body*global_par_d2*x(2);

% Reaction: id = Differentiation_of_Macrophages, name = Differentiation of Macrophages
	reaction_Differentiation_of_Macrophages=compartment_Body*Function_for_reaction_7(global_par_rho, x(5), x(2));

% Reaction: id = Production_of_VEGF_by_macrophages, name = Production of VEGF by macrophages
	reaction_Production_of_VEGF_by_macrophages=compartment_Body*Function_for_reaction_9(global_par_r3, x(2));

% Reaction: id = Decay_of_VEGF, name = Decay of VEGF
	reaction_Decay_of_VEGF=compartment_Body*global_par_d3*x(3);

% Reaction: id = VEGF_used_by_LECs, name = VEGF used by LECs
	reaction_VEGF_used_by_LECs=compartment_Body*Function_for_reaction_11(global_par_gamma, x(3), x(4));

% Reaction: id = Growth_of_LECs_upregulated_by_VEGF_and_downregulated_by_TGF_beta, name = Growth of LECs upregulated by VEGF and downregulated by TGF-beta
	reaction_Growth_of_LECs_upregulated_by_VEGF_and_downregulated_by_TGF_beta=compartment_Body*Function_for_reaction_12(global_par_c1, x(3), global_par_c2, global_par_c3, global_par_c4, x(1), x(4));

% Reaction: id = Inflow_and_chemotaxis_of_LECs_by_VEGF, name = Inflow and chemotaxis of LECs by VEGF
	reaction_Inflow_and_chemotaxis_of_LECs_by_VEGF=compartment_Body*Function_for_reaction_13(global_par_S_L, global_par_b3, x(3), global_par_b4, global_par_f);

% Reaction: id = Crowding_effect_and_apoptosis_of_LECs, name = Crowding effect and apoptosis of LECs
	reaction_Crowding_effect_and_apoptosis_of_LECs=compartment_Body*Function_for_reaction_14(x(2), x(4), x(5), global_par_k2);

% Reaction: id = Transdifferentiation_of_LECs_into_the_capillaries, name = Transdifferentiation of LECs into the capillaries
	reaction_Transdifferentiation_of_LECs_into_the_capillaries=compartment_Body*Function_for_reaction_15(global_par_sigma, global_par_delta1, global_par_delta2, x(3), x(4));

	xdot=zeros(5,1);
	
% Species:   id = Active_TGF_beta, name = Active TGF-beta, affected by kineticLaw
	xdot(1) = (1/(compartment_Body))*(( 1.0 * reaction_Activation_of_TGF_beta_by_enzymes_and_Macrophages) + (-1.0 * reaction_Decay_of_TGF_beta));
	
% Species:   id = Macrophages, name = Macrophages, affected by kineticLaw
	xdot(2) = (1/(compartment_Body))*(( 1.0 * reaction_Flux_of_macrophages_from_source) + ( 1.0 * reaction_Chemotaxis_by_TGF_beta) + ( 1.0 * reaction_Logistic_growth_of_Macrophages) + (-1.0 * reaction_Removal_of_Macrophages) + (-1.0 * reaction_Differentiation_of_Macrophages));
	
% Species:   id = VEGF, name = VEGF, affected by kineticLaw
	xdot(3) = (1/(compartment_Body))*(( 1.0 * reaction_Flux_of_VEGF_from_source) + ( 1.0 * reaction_Production_of_VEGF_by_macrophages) + (-1.0 * reaction_Decay_of_VEGF) + (-1.0 * reaction_VEGF_used_by_LECs));
	
% Species:   id = LECs, name = LECs, affected by kineticLaw
	xdot(4) = (1/(compartment_Body))*(( 1.0 * reaction_Growth_of_LECs_upregulated_by_VEGF_and_downregulated_by_TGF_beta) + ( 1.0 * reaction_Inflow_and_chemotaxis_of_LECs_by_VEGF) + (-1.0 * reaction_Crowding_effect_and_apoptosis_of_LECs) + (-1.0 * reaction_Transdifferentiation_of_LECs_into_the_capillaries));
	
% Species:   id = Capillaries, name = Capillaries, affected by kineticLaw
	xdot(5) = (1/(compartment_Body))*(( 1.0 * reaction_Transdifferentiation_of_LECs_into_the_capillaries));
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=Function_for_reaction_1(a_p,p_0,T_L,t,a_M,M,r1), z=((a_p*p_0*exp((-a_p)*T_L*t)+a_M*M)*(T_L+r1*M));end

function z=Function_for_reaction_4(alpha,b1,T,b2), z=(alpha*b1*T^2/(b2+T^4));end

function z=Function_for_reaction_5(beta,r2,M,k1), z=(beta*r2*M*(1-M/k1));end

function z=Function_for_reaction_7(rho,C,M), z=(rho*C*M);end

function z=Function_for_reaction_9(r3,M), z=(r3*M);end

function z=Function_for_reaction_11(gamma,V,L), z=(gamma*V*L);end

function z=Function_for_reaction_12(c1,V,c2,c3,c4,T,L), z=((c1+V/(c2+c3*V))*1/(1+c4*T)*L);end

function z=Function_for_reaction_13(s_L,b3,V,b4,f), z=((s_L+b3*V^2/(b4+V^4))*f);end

function z=Function_for_reaction_14(M,L,C,k2), z=((M+L+C)/k2*L);end

function z=Function_for_reaction_15(sigma,delta1,delta2,V,L), z=(sigma*(delta1+delta2*V)*L);end

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


