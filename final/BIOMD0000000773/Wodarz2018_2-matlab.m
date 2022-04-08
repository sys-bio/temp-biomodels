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
% Model name = Wodarz2018/2 - model with transit amplifying cells
%
% isDescribedBy http://identifiers.org/pubmed/29605227
% is http://identifiers.org/biomodels.db/MODEL1908010002
% is http://identifiers.org/biomodels.db/BIOMD0000000773
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 1.0;
	x0(2) = 0.0;
	x0(3) = 0.0;


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
% Parameter:   id =  p1, name = p1'
	global_par_p1=0.7;
% Parameter:   id =  r1, name = r1'
	global_par_r1=0.01;
% Parameter:   id =  p2, name = p2'
	global_par_p2=0.4;
% Parameter:   id =  r2, name = r2'
	global_par_r2=0.02;
% Parameter:   id =  q, name = q'
	global_par_q=0.4;
% Parameter:   id =  a, name = a
	global_par_a=0.0025;
% Parameter:   id =  h1, name = h1
	global_par_h1=1.0E-4;
% Parameter:   id =  h2, name = h2
	global_par_h2=1.0E-4;
% Parameter:   id =  h3, name = h3
	global_par_h3=1.0E-4;
% Parameter:   id =  h4, name = h4
	global_par_h4=1.0E-4;
% Parameter:   id =  h5, name = h5
	global_par_h5=0.01;
% Parameter:   id =  k1, name = k1
	global_par_k1=1.0;
% Parameter:   id =  k2, name = k2
	global_par_k2=1.0;
% Parameter:   id =  k3, name = k3
	global_par_k3=1.0;
% Parameter:   id =  k4, name = k4
	global_par_k4=1.0;
% Parameter:   id =  k5, name = k5
	global_par_k5=1.0;
% Parameter:   id =  r1_0, name = r1
% Parameter:   id =  r2_0, name = r2
% Parameter:   id =  p1_0, name = p1
% Parameter:   id =  p2_0, name = p2
% Parameter:   id =  q_0, name = q
% assignmentRule: variable = r2_0
	global_par_r2_0=global_par_r2/(1+global_par_h3*x(3)^global_par_k3);
% assignmentRule: variable = p1_0
	global_par_p1_0=global_par_p1/(1+global_par_h2*x(3)^global_par_k2);
% assignmentRule: variable = p2_0
	global_par_p2_0=global_par_p2/(1+global_par_h4*x(3)^global_par_k4);
% assignmentRule: variable = r1_0
	global_par_r1_0=global_par_r1/(1+global_par_h1*x(3)^global_par_k1);
% assignmentRule: variable = q_0
	global_par_q_0=global_par_q/(1+global_par_h5*x(1)^global_par_k5);

% Reaction: id = stem_cell_division, name = stem cell division
	reaction_stem_cell_division=compartment_tme*s(global_par_p1_0, global_par_r1_0, x(1));

% Reaction: id = stem_cell_activation, name = stem cell activation
	reaction_stem_cell_activation=compartment_tme*s_t(global_par_r2_0, x(2), global_par_q_0, global_par_p2_0);

% Reaction: id = activation_cell_division_from_stem, name = activation cell division from stem
	reaction_activation_cell_division_from_stem=compartment_tme*t_s(global_par_r1_0, x(1), global_par_p1_0);

% Reaction: id = activation_cell_renewal, name = activation cell renewal
	reaction_activation_cell_renewal=compartment_tme*t(global_par_p2_0, global_par_r2_0, x(2));

% Reaction: id = differentiation_of_cell, name = differentiation of cell
	reaction_differentiation_of_cell=compartment_tme*diff(global_par_r2_0, x(2), global_par_p2_0, global_par_q_0);

% Reaction: id = differentiation_cell_death, name = differentiation cell death
	reaction_differentiation_cell_death=compartment_tme*global_par_a*x(3);

	xdot=zeros(3,1);
	
% Species:   id = S, name = S, affected by kineticLaw
	xdot(1) = (1/(compartment_tme))*(( 1.0 * reaction_stem_cell_division) + ( 1.0 * reaction_stem_cell_activation));
	
% Species:   id = T, name = T, affected by kineticLaw
	xdot(2) = (1/(compartment_tme))*(( 1.0 * reaction_activation_cell_division_from_stem) + ( 1.0 * reaction_activation_cell_renewal));
	
% Species:   id = D, name = D, affected by kineticLaw
	xdot(3) = (1/(compartment_tme))*(( 1.0 * reaction_differentiation_of_cell) + (-1.0 * reaction_differentiation_cell_death));
end

function z=s_t(r2,T,q,p2), z=(2*r2*T*q*(1-p2));end

function z=t_s(r1,S,p1), z=(2*r1*S*(1-p1));end

function z=t(p2,r2,T), z=((2*p2-1)*r2*T);end

function z=diff(r2,T,p2,q), z=(2*r2*T*(1-p2)*(1-q));end

function z=s(p1,r1,S), z=((2*p1-1)*r1*S);end

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


