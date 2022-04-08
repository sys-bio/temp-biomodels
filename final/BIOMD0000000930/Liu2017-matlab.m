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
% Model name = Liu2017 - chemotherapy targeted model of tumor immune system
%
% isDescribedBy http://identifiers.org/doi/10.1016/j.chaos.2017.03.002
% is http://identifiers.org/biomodels.db/MODEL2004060002
% is http://identifiers.org/biomodels.db/BIOMD0000000930
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 1.0E7;
	x0(2) = 300000.0;
	x0(3) = 6.25E10;
	x0(4) = 0.45;


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

% Compartment: id = Tumor_Microenvironment, name = Tumor Microenvironment, constant
	compartment_Tumor_Microenvironment=1.0;
% Parameter:   id =  a, name = a
	global_par_a=0.431;
% Parameter:   id =  b, name = b
	global_par_b=1.02E-14;
% Parameter:   id =  c1, name = c1
	global_par_c1=3.41E-10;
% Parameter:   id =  mu, name = mu
	global_par_mu=0.0412;
% Parameter:   id =  g, name = g
	global_par_g=0.015;
% Parameter:   id =  s, name = s
	global_par_s=20.2;
% Parameter:   id =  Kc, name = Kc
	global_par_Kc=0.6;
% Parameter:   id =  Kn, name = Kn
	global_par_Kn=0.6;
% Parameter:   id =  Kt, name = Kt
	global_par_Kt=0.8;
% Parameter:   id =  kt, name = kt
	global_par_kt=3.2E-9;
% Parameter:   id =  p, name = p
	global_par_p=2.0E-11;
% Parameter:   id =  alpha1, name = alpha1
	global_par_alpha1=12000.0;
% Parameter:   id =  alpha2, name = alpha2
	global_par_alpha2=7.5E8;
% Parameter:   id =  beta, name = beta
	global_par_beta=0.012;
% Parameter:   id =  gamma, name = gamma
	global_par_gamma=0.9;
% Parameter:   id =  Vm, name = Vm
	global_par_Vm=0.45;
% Parameter:   id =  eta, name = eta
	global_par_eta=0.0;

% Reaction: id = reaction_1, name = reaction_1
	reaction_reaction_1=compartment_Tumor_Microenvironment*Function_for_reaction_1(global_par_a, x(1), global_par_b);

% Reaction: id = reaction_2, name = reaction_2
	reaction_reaction_2=compartment_Tumor_Microenvironment*Function_for_reaction_2(global_par_c1, x(2), x(1));

% Reaction: id = reaction_3, name = reaction_3
	reaction_reaction_3=compartment_Tumor_Microenvironment*Function_for_reaction_3(global_par_Kt, x(4), x(1));

% Reaction: id = reaction_5, name = reaction_5
	reaction_reaction_5=compartment_Tumor_Microenvironment*Function_for_reaction_5(global_par_g, x(1), global_par_s, x(2));

% Reaction: id = reaction_6, name = reaction_6
	reaction_reaction_6=compartment_Tumor_Microenvironment*global_par_mu*x(2);

% Reaction: id = reaction_7, name = reaction_7
	reaction_reaction_7=compartment_Tumor_Microenvironment*Function_for_reaction_7(global_par_p, x(1), x(2));

% Reaction: id = reaction_8, name = reaction_8
	reaction_reaction_8=compartment_Tumor_Microenvironment*Function_for_reaction_8(global_par_Kn, global_par_eta, x(4), x(2));

% Reaction: id = reaction_10, name = reaction_10
	reaction_reaction_10=compartment_Tumor_Microenvironment*global_par_beta*x(3);

% Reaction: id = reaction_11, name = reaction_11
	reaction_reaction_11=compartment_Tumor_Microenvironment*Function_for_reaction_11(global_par_Kc, global_par_eta, x(4), x(3));

% Reaction: id = reaction_12, name = reaction_12
	reaction_reaction_12=compartment_Tumor_Microenvironment*global_par_gamma*x(4);

% Reaction: id = reaction_14, name = reaction_14
	reaction_reaction_14=compartment_Tumor_Microenvironment*Function_for_reaction_14(global_par_kt, x(1), x(4));

	xdot=zeros(4,1);
	
% Species:   id = Tumor_Cell_Population__T, name = Tumor Cell Population (T), affected by kineticLaw
	xdot(1) = (1/(compartment_Tumor_Microenvironment))*(( 1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_3));
	
% Species:   id = Effector_immune_cell_population__N, name = Effector immune cell population (N), affected by kineticLaw
	xdot(2) = (1/(compartment_Tumor_Microenvironment))*(( 1.0 * reaction_reaction_4) + ( 1.0 * reaction_reaction_5) + (-1.0 * reaction_reaction_6) + (-1.0 * reaction_reaction_7) + (-1.0 * reaction_reaction_8));
	
% Species:   id = Circulating_lymphocyte_population__C, name = Circulating lymphocyte population (C), affected by kineticLaw
	xdot(3) = (1/(compartment_Tumor_Microenvironment))*(( 1.0 * reaction_reaction_9) + (-1.0 * reaction_reaction_10) + (-1.0 * reaction_reaction_11));
	
% Species:   id = Chemotherapeutic_drug_concentration__M, name = Chemotherapeutic drug concentration (M), affected by kineticLaw
	xdot(4) = (1/(compartment_Tumor_Microenvironment))*((-1.0 * reaction_reaction_12) + ( 1.0 * reaction_reaction_13) + (-1.0 * reaction_reaction_14));
end

function z=Function_for_reaction_1(a,T,b), z=(a*T*(1-b*T));end

function z=Function_for_reaction_3(Kt,M,T), z=(Kt*M*T);end

function z=Function_for_reaction_2(c1,N,T), z=(c1*N*T);end

function z=Function_for_reaction_5(g,T,s,N), z=(g*T/(s+T)*N);end

function z=Function_for_reaction_7(p,T,N), z=(p*T*N);end

function z=Function_for_reaction_8(Kn,eta,M,N), z=(Kn*(1-eta)*M*N);end

function z=Function_for_reaction_11(Kc,eta,M,C), z=(Kc*(1-eta)*M*C);end

function z=Function_for_reaction_14(kt,T,M), z=(kt*T*M);end

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


