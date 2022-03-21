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
% Model name = Figueredo2013/1 - immunointeraction base model
%
% isDescribedBy http://identifiers.org/pubmed/23734575
% is http://identifiers.org/biomodels.db/MODEL1907180001
% is http://identifiers.org/biomodels.db/BIOMD0000000753
%


function main()
%Initial conditions vector
	x0=zeros(2,1);
	x0(1) = 50.0;
	x0(2) = 5.0;


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

% Compartment: id = tumor_microenvironment, name = tumor microenvironment, constant
	compartment_tumor_microenvironment=1.0;
% Parameter:   id =  a, name = a
	global_par_a=1.636;
% Parameter:   id =  b, name = b
	global_par_b=0.004;
% Parameter:   id =  n, name = n
	global_par_n=1.0;
% Parameter:   id =  p, name = p
	global_par_p=1.131;
% Parameter:   id =  g, name = g
	global_par_g=20.19;
% Parameter:   id =  m, name = m
	global_par_m=0.00311;
% Parameter:   id =  d, name = d
	global_par_d=2.0;
% Parameter:   id =  s, name = s
	global_par_s=0.318;

% Reaction: id = tumor_growth, name = tumor growth
	reaction_tumor_growth=compartment_tumor_microenvironment*growth(global_par_a, x(1));

% Reaction: id = tumor_death, name = tumor death
	reaction_tumor_death=compartment_tumor_microenvironment*t_d(global_par_a, global_par_b, x(1));

% Reaction: id = tumor_killing, name = tumor killing
	reaction_tumor_killing=compartment_tumor_microenvironment*interaction(global_par_n, x(1), x(2));

% Reaction: id = immune_stimulation, name = immune stimulation
	reaction_immune_stimulation=compartment_tumor_microenvironment*stimulation(global_par_p, x(1), x(2), global_par_g);

% Reaction: id = immune_exhaustion, name = immune exhaustion
	reaction_immune_exhaustion=compartment_tumor_microenvironment*interaction(global_par_m, x(2), x(1));

% Reaction: id = immune_death, name = immune death
	reaction_immune_death=compartment_tumor_microenvironment*global_par_d*x(2);

	xdot=zeros(2,1);
	
% Species:   id = T, name = T, affected by kineticLaw
	xdot(1) = (1/(compartment_tumor_microenvironment))*(( 1.0 * reaction_tumor_growth) + (-1.0 * reaction_tumor_death) + (-1.0 * reaction_tumor_killing));
	
% Species:   id = E, name = E, affected by kineticLaw
	xdot(2) = (1/(compartment_tumor_microenvironment))*(( 1.0 * reaction_immune_stimulation) + (-1.0 * reaction_immune_exhaustion) + (-1.0 * reaction_immune_death) + ( 1.0 * reaction_immune_source));
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=stimulation(p,T,E,g), z=(p*T*E/(g+T));end

function z=t_d(a,b,T), z=(a*b*T*T);end

function z=growth(a,T), z=(a*T);end

function z=interaction(k,sub,mod), z=(k*sub*mod);end

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


