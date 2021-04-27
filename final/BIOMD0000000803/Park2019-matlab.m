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
% Model name = Park2019 - IL7 receptor signaling in T cells
%
% isDescribedBy http://identifiers.org/doi/10.1002/wsbm.1447
% is http://identifiers.org/biomodels.db/MODEL1908210001
% is http://identifiers.org/biomodels.db/BIOMD0000000803
%


function main()
%Initial conditions vector
	x0=zeros(9,1);
	x0(1) = 1000.0;
	x0(2) = 1000.0;
	x0(3) = 100000.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 6022.14;
	x0(9) = 602.214;


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

% Compartment: id = compartment, name = compartment, constant
	compartment_compartment=1.0;
% Parameter:   id =  rho, name = rho
	global_par_rho=100000.0;
% Parameter:   id =  k_f_1, name = k_f_1
	global_par_k_f_1=1.66054E-4;
% Parameter:   id =  k_r_1, name = k_r_1
	global_par_k_r_1=0.1;
% Parameter:   id =  k_f_2, name = k_f_2
	global_par_k_f_2=1.66054E-4;
% Parameter:   id =  k_r_2, name = k_r_2
	global_par_k_r_2=0.1;
% Parameter:   id =  k_f_3, name = k_f_3
	global_par_k_f_3=1.66054E-4;
% Parameter:   id =  k_r_3, name = k_r_3
	global_par_k_r_3=0.1;
% Parameter:   id =  k_f_4, name = k_f_4
	global_par_k_f_4=1.66054E-5;
% Parameter:   id =  k_r_4, name = k_r_4
	global_par_k_r_4=0.1;
% Parameter:   id =  f_7, name = f_7
% assignmentRule: variable = f_7
	global_par_f_7=x(6)/(x(6)+x(7));

% Reaction: id = IL7Ru_Formation, name = IL7Ru_Formation
	reaction_IL7Ru_Formation=compartment_compartment*global_par_k_f_1*x(1)*x(3);

% Reaction: id = IL7Ru_Dissociation, name = IL7Ru_Dissociation
	reaction_IL7Ru_Dissociation=compartment_compartment*global_par_k_r_1*x(4);

% Reaction: id = IL15Ru_Formation, name = IL15Ru_Formation
	reaction_IL15Ru_Formation=compartment_compartment*global_par_k_f_2*x(2)*x(3);

% Reaction: id = IL15Ru_Dissociation, name = IL15Ru_Dissociation
	reaction_IL15Ru_Dissociation=compartment_compartment*global_par_k_r_2*x(5);

% Reaction: id = IL7Rb_Formation, name = IL7Rb_Formation
	reaction_IL7Rb_Formation=compartment_compartment*global_par_k_f_3*x(8)*x(4);

% Reaction: id = IL7Rb_Dissociation, name = IL7Rb_Dissociation
	reaction_IL7Rb_Dissociation=compartment_compartment*global_par_k_r_3*x(6);

% Reaction: id = IL15Rb_Formation, name = IL15Rb_Formation
	reaction_IL15Rb_Formation=compartment_compartment*global_par_k_f_4*x(9)*x(5);

% Reaction: id = IL15Rb_Dissociation, name = IL15Rb_Dissociation
	reaction_IL15Rb_Dissociation=compartment_compartment*global_par_k_r_4*x(7);

	xdot=zeros(9,1);
	
% Species:   id = IL7Ra, name = IL7Ra, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*((-1.0 * reaction_IL7Ru_Formation) + ( 1.0 * reaction_IL7Ru_Dissociation));
	
% Species:   id = IL15Rbeta, name = IL15Rbeta, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*((-1.0 * reaction_IL15Ru_Formation) + ( 1.0 * reaction_IL15Ru_Dissociation));
	
% Species:   id = gamma_c, name = gamma_c, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*((-1.0 * reaction_IL7Ru_Formation) + ( 1.0 * reaction_IL7Ru_Dissociation) + (-1.0 * reaction_IL15Ru_Formation) + ( 1.0 * reaction_IL15Ru_Dissociation));
	
% Species:   id = IL7Ru, name = IL7Ru, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_IL7Ru_Formation) + (-1.0 * reaction_IL7Ru_Dissociation) + (-1.0 * reaction_IL7Rb_Formation) + ( 1.0 * reaction_IL7Rb_Dissociation));
	
% Species:   id = IL15Ru, name = IL15Ru, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_IL15Ru_Formation) + (-1.0 * reaction_IL15Ru_Dissociation) + (-1.0 * reaction_IL15Rb_Formation) + ( 1.0 * reaction_IL15Rb_Dissociation));
	
% Species:   id = IL7Rb, name = IL7Rb, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*(( 1.0 * reaction_IL7Rb_Formation) + (-1.0 * reaction_IL7Rb_Dissociation));
	
% Species:   id = IL15Rb, name = IL15Rb, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment))*(( 1.0 * reaction_IL15Rb_Formation) + (-1.0 * reaction_IL15Rb_Dissociation));
	
% Species:   id = IL7, name = IL7, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment))*((-1.0 * reaction_IL7Rb_Formation) + ( 1.0 * reaction_IL7Rb_Dissociation));
	
% Species:   id = IL15, name = IL15, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment))*((-1.0 * reaction_IL15Rb_Formation) + ( 1.0 * reaction_IL15Rb_Dissociation));
end

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


