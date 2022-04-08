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
% Model name = Wilkie2013b - immune-induced cancer dormancy and immune evasion-basic
%
% isDescribedBy http://identifiers.org/pubmed/24511375
% is http://identifiers.org/biomodels.db/MODEL1907160002
% is http://identifiers.org/biomodels.db/BIOMD0000000751
%


function main()
%Initial conditions vector
	x0=zeros(2,1);
	x0(1) = 1.0;
	x0(2) = 100.0;


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

% Compartment: id = tumor_microenvironment, name = tumor microenvironment, constant
	compartment_tumor_microenvironment=1.0;
% Parameter:   id =  a, name = a
	global_par_a=0.2;
% Parameter:   id =  K, name = K
	global_par_K=1.0E10;
% Parameter:   id =  a0, name = a0
% Parameter:   id =  y, name = y
	global_par_y=0.2;
% Parameter:   id =  Ie, name = Ie
	global_par_Ie=100.0;
% Parameter:   id =  u, name = u
	global_par_u=0.001;
% assignmentRule: variable = a0
	global_par_a0=0.000105*exp((-time)/168.1);

% Reaction: id = immune_growth, name = immune growth
	reaction_immune_growth=compartment_tumor_microenvironment*growth_immune(global_par_y, x(2), global_par_Ie, global_par_u, x(1));

% Reaction: id = cancer_logistic_growth, name = cancer logistic growth
	reaction_cancer_logistic_growth=compartment_tumor_microenvironment*logistic_growth(global_par_a, x(1), global_par_K);

% Reaction: id = cancer_killing, name = cancer killing
	reaction_cancer_killing=compartment_tumor_microenvironment*killing(global_par_a0, x(1), x(2));

	xdot=zeros(2,1);
	
% Species:   id = C, name = C, affected by kineticLaw
	xdot(1) = (1/(compartment_tumor_microenvironment))*(( 1.0 * reaction_cancer_logistic_growth) + (-1.0 * reaction_cancer_killing));
	
% Species:   id = I, name = I, affected by kineticLaw
	xdot(2) = (1/(compartment_tumor_microenvironment))*(( 1.0 * reaction_immune_growth));
end

function z=killing(a0,C,I), z=(a0*C*I);end

function z=logistic_growth(a,C,K), z=(a*C*(1-C/K));end

function z=growth_immune(y,I,Ie,u,C), z=(y*I*(1-I/(Ie+u*C*I)));end

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


