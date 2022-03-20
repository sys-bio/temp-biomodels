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
% Model name = Makhlouf2020 - No treatment model of the role of CD4 T cells in tumor-immune interactions
%
% is http://identifiers.org/biomodels.db/MODEL2109060001
% is http://identifiers.org/biomodels.db/BIOMD0000001042
%


function main()
%Initial conditions vector
	x0=zeros(6,1);
	x0(1) = 1.0E7;
	x0(2) = 1000.0;
	x0(3) = 100.0;
	x0(4) = 1000000.0;
	x0(5) = 6.0E10;
	x0(6) = 100000.0;


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

% Compartment: id = Tumor_microenvironment, name = Tumor_microenvironment, constant
	compartment_Tumor_microenvironment=1.0;
% Parameter:   id =  a, name = a
	global_par_a=0.431;
% Parameter:   id =  a_1, name = a_1
	global_par_a_1=100000.0;
% Parameter:   id =  b, name = b
	global_par_b=1.02E-9;
% Parameter:   id =  c, name = c
	global_par_c=6.41E-11;
% Parameter:   id =  c_1, name = c_1
	global_par_c_1=0.2;
% Parameter:   id =  d, name = d
	global_par_d=2.34;
% Parameter:   id =  e, name = e
	global_par_e=2.08E-7;
% Parameter:   id =  f, name = f
	global_par_f=0.0412;
% Parameter:   id =  g, name = g
	global_par_g=0.0125;
% Parameter:   id =  g_i, name = g_i
	global_par_g_i=2.0E7;
% Parameter:   id =  h, name = h
	global_par_h=2.02E7;
% Parameter:   id =  j, name = j
	global_par_j=0.0249;
% Parameter:   id =  k, name = k
	global_par_k=3.66E7;
% Parameter:   id =  l, name = l
	global_par_l=2.09;
% Parameter:   id =  m, name = m
	global_par_m=0.204;
% Parameter:   id =  p, name = p
	global_par_p=3.42E-6;
% Parameter:   id =  p_i, name = p_i
	global_par_p_i=0.125;
% Parameter:   id =  q, name = q
	global_par_q=1.42E-6;
% Parameter:   id =  r_1, name = r_1
	global_par_r_1=1.1E-7;
% Parameter:   id =  r_2, name = r_2
	global_par_r_2=6.5E-11;
% Parameter:   id =  s, name = s
	global_par_s=0.0839;
% Parameter:   id =  u, name = u
	global_par_u=3.0E-10;
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=7.5E8;
% Parameter:   id =  alpha_1, name = alpha_1
	global_par_alpha_1=1000.0;
% Parameter:   id =  alpha_2, name = alpha_2
	global_par_alpha_2=1000.0;
% Parameter:   id =  beta, name = beta
	global_par_beta=0.012;
% Parameter:   id =  beta_1, name = beta_1
	global_par_beta_1=0.835;
% Parameter:   id =  beta_2, name = beta_2
	global_par_beta_2=5.4;
% Parameter:   id =  mu_1, name = mu_1
	global_par_mu_1=0.1;
% Parameter:   id =  mu_i, name = mu_i
	global_par_mu_i=10.0;
% Parameter:   id =  delta_2, name = delta_2
	global_par_delta_2=1.0E-7;
% Parameter:   id =  D, name = D
% assignmentRule: variable = D
	global_par_D=global_par_d*(x(3)/(x(1)+1E-10))^global_par_l/(global_par_s+(x(3)/(x(1)+1E-10))^global_par_l);

% Reaction: id = Tumour_growth, name = Tumour_growth
	reaction_Tumour_growth=compartment_Tumor_microenvironment*Rate_Law_for_Tumour_growth(global_par_a, x(1), global_par_b);

% Reaction: id = Tumour_death, name = Tumour_death
	reaction_Tumour_death=compartment_Tumor_microenvironment*Rate_Law_for_Tumour_death(global_par_c, x(2), x(1), global_par_D, global_par_c_1, global_par_a_1, x(6));

% Reaction: id = NK_cell_production, name = NK_cell_production
	reaction_NK_cell_production=compartment_Tumor_microenvironment*Rate_Law_for_NK_cell_production(global_par_e, x(5), global_par_g, x(1), global_par_h, x(2));

% Reaction: id = NK_cell_depletion, name = NK_cell_depletion
	reaction_NK_cell_depletion=compartment_Tumor_microenvironment*Rate_Law_for_NK_cell_depletion(global_par_f, x(2), global_par_p, x(1));

% Reaction: id = CD8_T_cell_production, name = CD8_T_cell_production
	reaction_CD8_T_cell_production=compartment_Tumor_microenvironment*Rate_Law_for_CD8_T_cell_production(global_par_j, global_par_D, x(1), global_par_k, x(3), global_par_r_1, x(2), global_par_r_2, x(5), global_par_p_i, x(6), global_par_g_i);

% Reaction: id = CD8_T_cell_depletion, name = CD8_T_cell_depletion
	reaction_CD8_T_cell_depletion=compartment_Tumor_microenvironment*Rate_Law_for_CD8_T_cell_depletion(global_par_m, x(3), global_par_q, x(1), global_par_u, x(2));

% Reaction: id = CD4_T_cell_production, name = CD4_T_cell_production
	reaction_CD4_T_cell_production=compartment_Tumor_microenvironment*Rate_Law_for_CD4_T_cell_production(global_par_beta_1, x(1), global_par_alpha_1, x(6));

% Reaction: id = CD4_T_cell_depletion, name = CD4_T_cell_depletion
	reaction_CD4_T_cell_depletion=compartment_Tumor_microenvironment*Rate_Law_for_CD4_T_cell_depletion(global_par_mu_1, x(4), global_par_delta_2, x(1));

% Reaction: id = Circulating_lymphocyte_depletion, name = Circulating_lymphocyte_depletion
	reaction_Circulating_lymphocyte_depletion=compartment_Tumor_microenvironment*global_par_beta*x(5);

% Reaction: id = IL_2_production, name = IL-2_production
	reaction_IL_2_production=compartment_Tumor_microenvironment*Rate_Law_for_IL_2_production(global_par_beta_2, x(1), global_par_alpha_2, x(4));

% Reaction: id = IL_2_depletion, name = IL-2_depletion
	reaction_IL_2_depletion=compartment_Tumor_microenvironment*global_par_mu_i*x(6);

	xdot=zeros(6,1);
	
% Species:   id = Tumor_cells, name = Tumor_cells, affected by kineticLaw
	xdot(1) = (1/(compartment_Tumor_microenvironment))*(( 1.0 * reaction_Tumour_growth) + (-1.0 * reaction_Tumour_death));
	
% Species:   id = NK_cells, name = NK_cells, affected by kineticLaw
	xdot(2) = (1/(compartment_Tumor_microenvironment))*(( 1.0 * reaction_NK_cell_production) + (-1.0 * reaction_NK_cell_depletion));
	
% Species:   id = CD8_T_cells, name = CD8_T_cells, affected by kineticLaw
	xdot(3) = (1/(compartment_Tumor_microenvironment))*(( 1.0 * reaction_CD8_T_cell_production) + (-1.0 * reaction_CD8_T_cell_depletion));
	
% Species:   id = CD4_T_cells, name = CD4_T_cells, affected by kineticLaw
	xdot(4) = (1/(compartment_Tumor_microenvironment))*(( 1.0 * reaction_CD4_T_cell_production) + (-1.0 * reaction_CD4_T_cell_depletion));
	
% Species:   id = Circulating_lymphocytes, name = Circulating_lymphocytes, affected by kineticLaw
	xdot(5) = (1/(compartment_Tumor_microenvironment))*(( 1.0 * reaction_Circulating_lymphocyte_production) + (-1.0 * reaction_Circulating_lymphocyte_depletion));
	
% Species:   id = IL_2, name = IL-2, affected by kineticLaw
	xdot(6) = (1/(compartment_Tumor_microenvironment))*(( 1.0 * reaction_IL_2_production) + (-1.0 * reaction_IL_2_depletion));
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=Rate_Law_for_Tumour_growth(a,T,b), z=(a*T*(1-b*T));end

function z=Rate_Law_for_CD4_T_cell_production(beta_1,T,alpha_1,I), z=(beta_1*T/(alpha_1+T)*I);end

function z=Rate_Law_for_NK_cell_production(e,C,g,T,h,N), z=(e*C+g*T^2/(h+T^2)*N);end

function z=Rate_Law_for_IL_2_production(beta_2,T,alpha_2,Y), z=(beta_2*T/(alpha_2+T)*Y);end

function z=Rate_Law_for_CD8_T_cell_production(j,D,T,k,L,r_1,N,r_2,C,p_i,I,g_i), z=(j*D^2*T^2/(k+D^2*T^2)*L+(r_1*N+r_2*C)*T+p_i*I/(g_i+I)*L);end

function z=Rate_Law_for_NK_cell_depletion(f,N,p,T), z=(f*N+p*N*T);end

function z=Rate_Law_for_CD4_T_cell_depletion(mu_1,Y,delta_2,T), z=(mu_1*Y+delta_2*T*Y);end

function z=Rate_Law_for_CD8_T_cell_depletion(m,L,q,T,u,N), z=(m*L+q*L*T+u*N*L^2);end

function z=Rate_Law_for_Tumour_death(c,N,T,D,c_1,a_1,I), z=(c*N*T+D*T+c_1*T/(a_1+T)*I);end

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


