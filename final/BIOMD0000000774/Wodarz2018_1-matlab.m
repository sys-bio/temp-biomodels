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
% Model name = Wodarz2018/1 - simple model
%
% isDescribedBy http://identifiers.org/pubmed/29605227
% is http://identifiers.org/biomodels.db/MODEL1908010003
% is http://identifiers.org/biomodels.db/BIOMD0000000774
%


function main()
%Initial conditions vector
	x0=zeros(2,1);
	x0(1) = 1.0;
	x0(2) = 0.0;


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

% Compartment: id = tme, name = tme, constant
	compartment_tme=1.0;
% Parameter:   id =  a, name = a
	global_par_a=0.0025;
% Parameter:   id =  r, name = r
% Parameter:   id =  p, name = p
% Parameter:   id =  g, name = g
% Parameter:   id =  r_0, name = r'
	global_par_r_0=0.01;
% Parameter:   id =  p_0, name = p'
	global_par_p_0=0.7;
% Parameter:   id =  h1, name = h1
	global_par_h1=1.0E-4;
% Parameter:   id =  h2, name = h2
	global_par_h2=1.0E-4;
% Parameter:   id =  k1, name = k1
	global_par_k1=1.0;
% Parameter:   id =  k2, name = k2
	global_par_k2=1.0;
% Parameter:   id =  g_0, name = g'
	global_par_g_0=0.0035;
% Parameter:   id =  h3, name = h3
	global_par_h3=0.01;
% Parameter:   id =  k3, name = k3
	global_par_k3=1.0;
% assignmentRule: variable = p
	global_par_p=global_par_p_0/(1+global_par_h2*x(2)^global_par_k2);
% assignmentRule: variable = g
	global_par_g=global_par_g_0/(1+global_par_h3*x(1)^global_par_k3);
% assignmentRule: variable = r
	global_par_r=global_par_r_0/(1+global_par_h1*x(2)^global_par_k1);

% Reaction: id = stem_cell_division, name = stem cell division
	reaction_stem_cell_division=compartment_tme*s(global_par_r, x(1), global_par_p);

% Reaction: id = de_differentiation, name = de-differentiation
	reaction_de_differentiation=compartment_tme*global_par_g*x(2);

% Reaction: id = differentiation_of_cell, name = differentiation of cell
	reaction_differentiation_of_cell=compartment_tme*d(global_par_r, x(1), global_par_p);

% Reaction: id = differentiated_cell_death, name = differentiated cell death
	reaction_differentiated_cell_death=compartment_tme*global_par_a*x(2);

	xdot=zeros(2,1);
	
% Species:   id = S, name = S, affected by kineticLaw
	xdot(1) = (1/(compartment_tme))*(( 1.0 * reaction_stem_cell_division) + ( 1.0 * reaction_de_differentiation));
	
% Species:   id = D, name = D, affected by kineticLaw
	xdot(2) = (1/(compartment_tme))*((-1.0 * reaction_de_differentiation) + ( 1.0 * reaction_differentiation_of_cell) + (-1.0 * reaction_differentiated_cell_death));
end

function z=s(r,S,p), z=(r*S*(2*p-1));end

function z=d(r,S,p), z=(2*r*S*(1-p));end

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


