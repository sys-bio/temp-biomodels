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
% Model name = Khajanchi2015 - The combined effects of optimal control in cancer remission
%
% isDescribedBy http://identifiers.org/doi/10.1016/j.amc.2015.09.012
% isDerivedFrom http://identifiers.org/doi/10.1080/10273660108833067
% isDerivedFrom http://identifiers.org/doi/10.3934/mbe.2005.2.499
% is http://identifiers.org/biomodels.db/MODEL1912170001
% is http://identifiers.org/biomodels.db/BIOMD0000000897
%


function main()
%Initial conditions vector
	x0=zeros(2,1);
	x0(1) = 1708110.0;
	x0(2) = 8286380.0;


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
% Parameter:   id =  s, name = s
	global_par_s=13000.0;
% Parameter:   id =  p, name = p
	global_par_p=0.1245;
% Parameter:   id =  g, name = g
	global_par_g=2.019E7;
% Parameter:   id =  m, name = m
	global_par_m=3.422E-10;
% Parameter:   id =  d, name = d
	global_par_d=0.0412;
% Parameter:   id =  a, name = a
	global_par_a=0.18;
% Parameter:   id =  b, name = b
	global_par_b=2.0E-9;
% Parameter:   id =  n, name = n
	global_par_n=1.101E-7;
% Parameter:   id =  e1, name = e1
	global_par_e1=1.0;
% Parameter:   id =  e2, name = e2
	global_par_e2=0.0;

% Reaction: id = Fomation_of_activated_immune_effector_cell, name = Fomation of activated immune effector cell
	reaction_Fomation_of_activated_immune_effector_cell=compartment_compartment*Function_for_formation_of_immune_effector_cell(global_par_s, global_par_e1, global_par_p, x(1), x(2), global_par_g);

% Reaction: id = Removal_of_activated_tumor_immune_cell, name = Removal of activated tumor immune cell
	reaction_Removal_of_activated_tumor_immune_cell=compartment_compartment*Function_for_removal_of_activated_tumor_immune_cell(global_par_m, x(1), x(2), global_par_d);

% Reaction: id = Formation_of_tumor_cell, name = Formation of tumor cell
	reaction_Formation_of_tumor_cell=compartment_compartment*Function_for_formation_of_tumor_cell(global_par_a, x(2), global_par_b);

% Reaction: id = Removal_of_tumor_cell, name = Removal of tumor cell
	reaction_Removal_of_tumor_cell=compartment_compartment*Function_for_removal_of_tumor_cell(global_par_n, x(1), x(2), global_par_e2);

	xdot=zeros(2,1);
	
% Species:   id = E, name = E, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_Fomation_of_activated_immune_effector_cell) + (-1.0 * reaction_Removal_of_activated_tumor_immune_cell));
	
% Species:   id = T, name = T, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_Formation_of_tumor_cell) + (-1.0 * reaction_Removal_of_tumor_cell));
end

function z=Function_for_removal_of_activated_tumor_immune_cell(m,E,T,d), z=(m*E*T+d*E);end

function z=Function_for_formation_of_immune_effector_cell(s,e1,p,E,T,g), z=(s*e1+p*E*T/(g+T));end

function z=Function_for_removal_of_tumor_cell(n,E,T,e2), z=(n*E*T+e2*T);end

function z=Function_for_formation_of_tumor_cell(a,T,b), z=(a*T*(1-b*T));end

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


