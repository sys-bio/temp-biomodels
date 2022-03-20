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
% Model name = Reynolds2006 - Reduced model of the acute inflammatory response
%
% is http://identifiers.org/biomodels.db/MODEL1808280003
% is http://identifiers.org/biomodels.db/BIOMD0000000714
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 1.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.125;


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

% Compartment: id = compartment, name = Human body, constant
	compartment_compartment=1.0;
% Parameter:   id =  k_pm, name = k_pm
	global_par_k_pm=0.6;
% Parameter:   id =  k_mp, name = k_mp
	global_par_k_mp=0.01;
% Parameter:   id =  s_m, name = s_m
	global_par_s_m=0.005;
% Parameter:   id =  mu_m, name = mu_m
	global_par_mu_m=0.002;
% Parameter:   id =  k_pg, name = k_pg
	global_par_k_pg=0.3;
% Parameter:   id =  p_inf, name = p_inf
	global_par_p_inf=20.0;
% Parameter:   id =  k_pn, name = k_pn
	global_par_k_pn=1.8;
% Parameter:   id =  k_np, name = k_np
	global_par_k_np=0.1;
% Parameter:   id =  k_nn, name = k_nn
	global_par_k_nn=0.01;
% Parameter:   id =  s_nr, name = s_nr
	global_par_s_nr=0.08;
% Parameter:   id =  mu_nr, name = mu_nr
	global_par_mu_nr=0.12;
% Parameter:   id =  mu_n, name = mu_n
	global_par_mu_n=0.05;
% Parameter:   id =  k_nd, name = k_nd
	global_par_k_nd=0.02;
% Parameter:   id =  k_dn, name = k_dn
	global_par_k_dn=0.35;
% Parameter:   id =  x_dn, name = x_dn
	global_par_x_dn=0.06;
% Parameter:   id =  mu_d, name = mu_d
	global_par_mu_d=0.02;
% Parameter:   id =  c_inf, name = c_inf
	global_par_c_inf=0.28;
% Parameter:   id =  s_c, name = s_c
	global_par_s_c=0.0125;
% Parameter:   id =  k_cn, name = k_cn
	global_par_k_cn=0.04;
% Parameter:   id =  k_cnd, name = k_cnd
	global_par_k_cnd=48.0;
% Parameter:   id =  mu_c, name = mu_c
	global_par_mu_c=0.1;
% Parameter:   id =  f_Nstar, name = f_Nstar
% Parameter:   id =  f_s_f_Nstar, name = f_s_f_Nstar
% Parameter:   id =  R, name = R
% Parameter:   id =  f_Nstar__k_cnd_D, name = f_Nstar_ k_cnd_D
% assignmentRule: variable = f_Nstar
	global_par_f_Nstar=x(2)/(1+(x(4)/global_par_c_inf)^2);
% assignmentRule: variable = f_s_f_Nstar
	global_par_f_s_f_Nstar=global_par_f_Nstar^6/(global_par_x_dn^6+global_par_f_Nstar^6);
% assignmentRule: variable = R
	global_par_R=(global_par_k_nn*x(2)+global_par_k_np*x(1)+global_par_k_nd*x(3))/(1+(x(4)/global_par_c_inf)^2);
% assignmentRule: variable = f_Nstar__k_cnd_D
	global_par_f_Nstar__k_cnd_D=(x(2)+global_par_k_cnd*x(3))/(1+(x(4)/global_par_c_inf)^2);

% Reaction: id = reaction_1, name = Production of Pathogen
	reaction_reaction_1=compartment_compartment*Function_for_Reaction_1(global_par_k_pg, x(1), global_par_p_inf);

% Reaction: id = reaction_2, name = Degradation of pathogen by non-specific local response
	reaction_reaction_2=compartment_compartment*Function_for_Reaction_2(global_par_k_pm, global_par_s_m, x(1), global_par_mu_m, global_par_k_mp);

% Reaction: id = reaction_3, name = Degradation of pathogen by activated phagocytes
	reaction_reaction_3=compartment_compartment*Function_for_Reaction_3(global_par_f_Nstar, x(1), global_par_k_pn);

% Reaction: id = reaction_4, name = Recruitment of Activated Phagocytes from the source
	reaction_reaction_4=compartment_compartment*Function_for_Reaction_4(global_par_s_nr, global_par_R, global_par_mu_nr);

% Reaction: id = reaction_5, name = Death of activated phagocytes
	reaction_reaction_5=compartment_compartment*global_par_mu_n*x(2);

% Reaction: id = reaction_6, name = Tissue damage produced by activated phagocytes
	reaction_reaction_6=compartment_compartment*Function_for_Reaction_6(global_par_k_dn, global_par_f_s_f_Nstar);

% Reaction: id = reaction_7, name = Removal of damaged tissue
	reaction_reaction_7=compartment_compartment*global_par_mu_d*x(3);

% Reaction: id = reaction_9, name = Production of anti-inflammatory mediators
	reaction_reaction_9=compartment_compartment*Function_for_Reaction_9(global_par_k_cn, global_par_f_Nstar__k_cnd_D);

% Reaction: id = reaction_10, name = Removal of anti-inflammatory mediators
	reaction_reaction_10=compartment_compartment*global_par_mu_c*x(4);

	xdot=zeros(4,1);
	
% Species:   id = P, name = Pathogen (P), affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_3));
	
% Species:   id = Nstar, name = Activated Phagocytes (Nstar), affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_4) + (-1.0 * reaction_reaction_5));
	
% Species:   id = D, name = Tissue Damage (D), affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_6) + (-1.0 * reaction_reaction_7));
	
% Species:   id = C_A, name = Anti-inflammatory mediators (C_A), affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_8) + ( 1.0 * reaction_reaction_9) + (-1.0 * reaction_reaction_10));
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=Function_for_Reaction_1(k_pg,P,p_inf), z=(k_pg*P*(1-P/p_inf));end

function z=Function_for_Reaction_2(k_pm,s_m,P,mu_m,k_mp), z=(k_pm*s_m*P/(mu_m+k_mp*P));end

function z=Function_for_Reaction_3(f_Nstar,P,k_pn), z=(k_pn*f_Nstar*P);end

function z=Function_for_Reaction_4(s_nr,R,mu_nr), z=(s_nr*R/(mu_nr+R));end

function z=Function_for_Reaction_6(k_dn,f_s_f_Nstar), z=(k_dn*f_s_f_Nstar);end

function z=Function_for_Reaction_9(k_cn,f_Nstar_k_cnd_D), z=(k_cn*f_Nstar_k_cnd_D/(1+f_Nstar_k_cnd_D));end

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


