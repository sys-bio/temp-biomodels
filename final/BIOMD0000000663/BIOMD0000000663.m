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
% Model name = Wodarz2007 - HIV/CD4 T-cell interaction
%
% is http://identifiers.org/biomodels.db/MODEL0911270008
% is http://identifiers.org/biomodels.db/BIOMD0000000663
% isDescribedBy http://identifiers.org/pubmed/17379260
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 0.1;
	x0(2) = 0.0;
	x0(3) = 1.0;


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

% Compartment: id = compartment, name = compartment, constant
	compartment_compartment=1.0;
% Parameter:   id =  r, name = r
	global_par_r=1.0;
% Parameter:   id =  k, name = k
	global_par_k=10.0;
% Parameter:   id =  d, name = d
	global_par_d=0.1;
% Parameter:   id =  Beta, name = Beta
	global_par_Beta=0.2;
% Parameter:   id =  a, name = a
	global_par_a=0.2;
% Parameter:   id =  eta, name = eta
	global_par_eta=1.0;
% Parameter:   id =  u, name = u
	global_par_u=0.5;

% Reaction: id = reaction, name = Uninfected Tcell proliferation
	reaction_reaction=compartment_compartment*generic_modifier_function_2_1(global_par_r, x(3), x(1));

% Reaction: id = reaction_1, name = Reduction in x-proliferation due to carry capacity
	reaction_reaction_1=compartment_compartment*function_for_x_degrad_2_1(global_par_k, global_par_r, x(3), x(1), x(2));

% Reaction: id = reaction_2, name = Uninfected T cell death
	reaction_reaction_2=compartment_compartment*global_par_d*x(1);

% Reaction: id = reaction_3, name = Tcell Infection 1
	reaction_reaction_3=compartment_compartment*generic_modifier_function_1(global_par_Beta, x(3), x(1));

% Reaction: id = reaction_4, name = Tcell Infection 2
	reaction_reaction_4=compartment_compartment*generic_modifier_function_2_2(global_par_r, x(3), x(2));

% Reaction: id = reaction_5, name = Reduction in y-proliferation due to carry capacity
	reaction_reaction_5=compartment_compartment*function_for_y_degrad_2_1(global_par_k, global_par_r, x(3), x(1), x(2));

% Reaction: id = reaction_6, name = Infected T cell death
	reaction_reaction_6=compartment_compartment*global_par_a*x(2);

% Reaction: id = reaction_7, name = HIV proliferation
	reaction_reaction_7=compartment_compartment*generic_function_3_1(global_par_eta, x(2));

% Reaction: id = reaction_8, name = HIV degradation
	reaction_reaction_8=compartment_compartment*global_par_u*x(3);

	xdot=zeros(3,1);
	
% Species:   id = x, name = x_Tcell_infected, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction) + (-1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_3));
	
% Species:   id = y, name = y_Tcell_uninfected, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_3) + ( 1.0 * reaction_reaction_4) + (-1.0 * reaction_reaction_5) + (-1.0 * reaction_reaction_6));
	
% Species:   id = v, name = v_free_virus, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_7) + (-1.0 * reaction_reaction_8));
end

function z=generic_modifier_function_2_1(r,v,x), z=(r*v*x);end

function z=function_for_x_degrad_2_1(k,r,v,x,y), z=(r*x*v*(x+y)/k);end

function z=generic_modifier_function_1(Beta,v,x), z=(Beta*v*x);end

function z=generic_modifier_function_2_2(r,v,y), z=(r*v*y);end

function z=function_for_y_degrad_2_1(k,r,v,x,y), z=(r*y*v*(x+y)/k);end

function z=generic_function_3_1(eta,y), z=(eta*y);end

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


