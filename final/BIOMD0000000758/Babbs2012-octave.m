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
% Model name = Babbs2012 - immunotherapy
%
% isDescribedBy http://identifiers.org/pubmed/22432059
% is http://identifiers.org/biomodels.db/MODEL1907240002
% is http://identifiers.org/biomodels.db/BIOMD0000000758
%


function main()
%Initial conditions vector
	x0=zeros(2,1);
	x0(1) = 1.0;
	x0(2) = 0.001;


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
% Parameter:   id =  g, name = g
	global_par_g=0.004;
% Parameter:   id =  k, name = k
	global_par_k=4.0;
% Parameter:   id =  l, name = l
	global_par_l=0.09;
% Parameter:   id =  u, name = u
	global_par_u=0.1;

% Reaction: id = tumor_growth, name = tumor growth
	reaction_tumor_growth=compartment_tumor_microenvironment*tumor_growth_0(global_par_g, x(1));

% Reaction: id = tumor_killing, name = tumor killing
	reaction_tumor_killing=compartment_tumor_microenvironment*kill(global_par_k, x(2));

% Reaction: id = immune_stimulation, name = immune stimulation
	reaction_immune_stimulation=compartment_tumor_microenvironment*immune_stim(global_par_l, x(1), x(2));

% Reaction: id = immune_death, name = immune death
	reaction_immune_death=compartment_tumor_microenvironment*global_par_u*x(2);

	xdot=zeros(2,1);
	
% Species:   id = T, name = T, affected by kineticLaw
	xdot(1) = (1/(compartment_tumor_microenvironment))*(( 1.0 * reaction_tumor_growth) + (-1.0 * reaction_tumor_killing));
	
% Species:   id = I, name = I, affected by kineticLaw
	xdot(2) = (1/(compartment_tumor_microenvironment))*(( 1.0 * reaction_immune_stimulation) + (-1.0 * reaction_immune_death));
end

function z=tumor_growth_0(g,T), z=(g*T);end

function z=kill(k,I), z=(k*I);end

function z=immune_stim(l,T,I), z=(l*T*I);end

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


