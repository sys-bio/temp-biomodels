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
% Model name = Malinzi2019 - chemovirotherapy
%
% isDescribedBy http://identifiers.org/pubmed/30984283
% is http://identifiers.org/biomodels.db/MODEL1907260017
% is http://identifiers.org/biomodels.db/BIOMD0000000764
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 1.0;
	x0(2) = 0.0;
	x0(3) = 0.1;
	x0(4) = 0.1;


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

% Compartment: id = tme, name = tme, constant
	compartment_tme=1.0;
% Parameter:   id =  alph, name = alph
% Parameter:   id =  bet, name = bet
% Parameter:   id =  d0, name = d0
% Parameter:   id =  d1, name = d1
% Parameter:   id =  b, name = b
% Parameter:   id =  y, name = y
% Parameter:   id =  p, name = p
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=0.206;
% Parameter:   id =  delta, name = delta
	global_par_delta=0.5115;
% Parameter:   id =  beta, name = beta
	global_par_beta=0.001;
% Parameter:   id =  delta0, name = delta0
	global_par_delta0=0.005;
% Parameter:   id =  delta1, name = delta1
	global_par_delta1=0.006;
% Parameter:   id =  bb, name = bb
	global_par_bb=2.0;
% Parameter:   id =  K, name = K
	global_par_K=1000000.0;
% Parameter:   id =  gamma, name = gamma
	global_par_gamma=0.001;
% Parameter:   id =  q, name = q
	global_par_q=5.0;
% Parameter:   id =  lamda, name = lamda
	global_par_lamda=4.16;
% Parameter:   id =  a, name = a
% Parameter:   id =  aa, name = aa
	global_par_aa=0.206;
% Parameter:   id =  V0, name = V0
% Parameter:   id =  C0, name = C0
% Parameter:   id =  f, name = f
% Parameter:   id =  k, name = k
% Parameter:   id =  Metabolite_3, name = Initial for C
	global_par_Metabolite_3=0.1;
% assignmentRule: variable = C0
	global_par_C0=global_par_Metabolite_3;
% assignmentRule: variable = d1
	global_par_d1=global_par_delta1*global_par_C0/global_par_delta;
% assignmentRule: variable = alph
	global_par_alph=global_par_alpha/global_par_delta;
% assignmentRule: variable = y
	global_par_y=global_par_gamma/global_par_delta;
% assignmentRule: variable = p
	global_par_p=global_par_lamda/global_par_delta;
% assignmentRule: variable = d0
	global_par_d0=global_par_delta0*global_par_C0/global_par_delta;
% assignmentRule: variable = V0
	global_par_V0=global_par_K;
% assignmentRule: variable = b
	global_par_b=global_par_bb*global_par_K/global_par_V0;
% assignmentRule: variable = bet
	global_par_bet=global_par_beta*global_par_V0/global_par_delta;
% assignmentRule: variable = a
	global_par_a=global_par_aa/global_par_delta;
% assignmentRule: variable = f
	global_par_f=global_par_q/(global_par_delta*global_par_C0);
% assignmentRule: variable = k
	global_par_k=global_par_f*exp((-global_par_a)*time);

% Reaction: id = tumor_grow, name = tumor grow
	reaction_tumor_grow=compartment_tme*tumor_grow_0(global_par_alph, x(1), x(2));

% Reaction: id = tumor_killing, name = tumor killing
	reaction_tumor_killing=compartment_tme*killing(global_par_d0, x(4), x(1));

% Reaction: id = tumor_infection, name = tumor infection
	reaction_tumor_infection=compartment_tme*infection(global_par_bet, x(1), x(3));

% Reaction: id = infected_tumor_death, name = infected tumor death	% Local Parameter:   id =  k1, name = k1
	reaction_infected_tumor_death_k1=1.0;

	reaction_infected_tumor_death=compartment_tme*reaction_infected_tumor_death_k1*x(2);

% Reaction: id = infected_tumor_killing, name = infected tumor killing
	reaction_infected_tumor_killing=compartment_tme*killing(global_par_d1, x(4), x(2));

% Reaction: id = virus_burst, name = virus burst
	reaction_virus_burst=compartment_tme*burst(global_par_b, x(2));

% Reaction: id = virus_death, name = virus death
	reaction_virus_death=compartment_tme*global_par_y*x(3);

% Reaction: id = drug_decay, name = drug decay
	reaction_drug_decay=compartment_tme*global_par_p*x(4);

	xdot=zeros(4,1);
	
% Species:   id = U, name = U, affected by kineticLaw
	xdot(1) = (1/(compartment_tme))*(( 1.0 * reaction_tumor_grow) + (-1.0 * reaction_tumor_killing) + (-1.0 * reaction_tumor_infection));
	
% Species:   id = I, name = I, affected by kineticLaw
	xdot(2) = (1/(compartment_tme))*(( 1.0 * reaction_tumor_infection) + (-1.0 * reaction_infected_tumor_death) + (-1.0 * reaction_infected_tumor_killing));
	
% Species:   id = V, name = V, affected by kineticLaw
	xdot(3) = (1/(compartment_tme))*((-1.0 * reaction_tumor_infection) + ( 1.0 * reaction_virus_burst) + (-1.0 * reaction_virus_death));
	
% Species:   id = C, name = C, affected by kineticLaw
	xdot(4) = (1/(compartment_tme))*(( 1.0 * reaction_drug_infusion) + (-1.0 * reaction_drug_decay));
end

function z=tumor_grow_0(alph,U,I), z=(alph*U*(1-U-I));end

function z=killing(d,C,S), z=(d*C*S);end

function z=infection(bet,U,V), z=(bet*U*V);end

function z=Constant_flux__irreversible(v), z=(v);end

function z=burst(b,I), z=(b*I);end

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


