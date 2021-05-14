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
% Model name = Wei2017 - tumor, T cell and cytokine interaction
%
% isDescribedBy http://identifiers.org/pubmed/29250133
% is http://identifiers.org/biomodels.db/MODEL1908050001
% is http://identifiers.org/biomodels.db/BIOMD0000000778
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 0.5;
	x0(2) = 0.01;
	x0(3) = 0.0;


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
% Parameter:   id =  r, name = r
	global_par_r=0.01;
% Parameter:   id =  K, name = K
	global_par_K=1000.0;
% Parameter:   id =  d, name = d
	global_par_d=0.1;
% Parameter:   id =  m, name = m
	global_par_m=50.0;
% Parameter:   id =  beta, name = beta
	global_par_beta=0.1;
% Parameter:   id =  k, name = k
	global_par_k=1000.0;
% Parameter:   id =  a, name = a
	global_par_a=0.03;
% Parameter:   id =  l1, name = l1
	global_par_l1=0.0;
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=0.01;
% Parameter:   id =  b, name = b
	global_par_b=100.0;
% Parameter:   id =  u, name = u
	global_par_u=50.0;
% Parameter:   id =  l2, name = l2
	global_par_l2=0.0;
% Parameter:   id =  I_plot, name = I_plot
% Parameter:   id =  T_plot, name = T_plot
% assignmentRule: variable = I_plot
	global_par_I_plot=x(2)/100000;
% assignmentRule: variable = T_plot
	global_par_T_plot=x(1)/100;

% Reaction: id = tumor_growth, name = tumor growth
	reaction_tumor_growth=compartment_tme*tg(global_par_r, x(1), global_par_K);

% Reaction: id = tumor_killing, name = tumor killing
	reaction_tumor_killing=compartment_tme*tk(global_par_d, x(1), x(3), global_par_m);

% Reaction: id = immune_cell_growth, name = immune cell growth
	reaction_immune_cell_growth=compartment_tme*icg(global_par_beta, x(1), x(2), global_par_k);

% Reaction: id = immune_cell_death, name = immune cell death
	reaction_immune_cell_death=compartment_tme*global_par_a*x(2);

% Reaction: id = cytokine_production, name = cytokine production
	reaction_cytokine_production=compartment_tme*cyt(global_par_alpha, x(1), x(2), global_par_b);

% Reaction: id = cytokine_decay, name = cytokine decay
	reaction_cytokine_decay=compartment_tme*global_par_u*x(3);

	xdot=zeros(3,1);
	
% Species:   id = T, name = T, affected by kineticLaw
	xdot(1) = (1/(compartment_tme))*(( 1.0 * reaction_tumor_growth) + (-1.0 * reaction_tumor_killing));
	
% Species:   id = I, name = I, affected by kineticLaw
	xdot(2) = (1/(compartment_tme))*(( 1.0 * reaction_immune_cell_growth) + (-1.0 * reaction_immune_cell_death) + ( 1.0 * reaction_immunotherapy));
	
% Species:   id = C, name = C, affected by kineticLaw
	xdot(3) = (1/(compartment_tme))*(( 1.0 * reaction_cytokine_production) + (-1.0 * reaction_cytokine_decay) + ( 1.0 * reaction_chemotherapy));
end

function z=tg(r,T,K), z=(r*T*(1-T/K));end

function z=cyt(a,T,I,b), z=(a*T*I/(b+T));end

function z=tk(d,T,C,m), z=(d*T*C/(m+T));end

function z=icg(beta,T,I,k), z=(beta*T*I/(k+T));end

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


