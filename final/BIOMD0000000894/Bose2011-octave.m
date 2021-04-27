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
% Model name = Bose2011 - Noise-assisted interactions of tumor and immune cells
%
% hasInstance http://identifiers.org/mamo/MAMO_0000046
% hasInstance http://identifiers.org/taxonomy/9606
% hasInstance http://identifiers.org/ncit/C48686
% isDescribedBy http://identifiers.org/ncit/C48686
% isDescribedBy http://identifiers.org/pubmed/21929038
% isDerivedFrom http://identifiers.org/doi.org/10.1103/PhysRevE.79.051903
% is http://identifiers.org/biomodels.db/MODEL1912160003
% is http://identifiers.org/biomodels.db/BIOMD0000000894
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 1.0E-6;
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

% Compartment: id = compartment, name = compartment, constant
	compartment_compartment=1.0;
% Parameter:   id =  t, name = t
	global_par_t=1.0;
% Parameter:   id =  tau, name = tau
	global_par_tau=0.3;
% Parameter:   id =  R, name = R
	global_par_R=1.0;
% Parameter:   id =  Dx, name = Dx
	global_par_Dx=2.1;
% Parameter:   id =  Dy, name = Dy
	global_par_Dy=0.01;
% Parameter:   id =  Dz, name = Dz
	global_par_Dz=1.2;
% Parameter:   id =  p, name = p
	global_par_p=0.06;
% Parameter:   id =  mu, name = mu
	global_par_mu=20.0;

% Reaction: id = Formation_of_tumor_system, name = Formation of tumor system
	reaction_Formation_of_tumor_system=compartment_compartment*Function_for_formation_of_tumor_system(global_par_R, global_par_Dx, global_par_tau, global_par_Dz, x(1), x(3));

% Reaction: id = Removal_of_tumor_system, name = Removal of tumor system
	reaction_Removal_of_tumor_system=compartment_compartment*Function_for_removal_of_tumor_system(x(1), x(2));

% Reaction: id = Formation_of_effector_cell_against_tumor_cell, name = Formation of effector cell against tumor cell
	reaction_Formation_of_effector_cell_against_tumor_cell=compartment_compartment*Function_for_Formation_of_effector_cell_against_tumor_cell(x(2), x(3));

% Reaction: id = Removal_of_effector_cell_functioning_against_tumor_cell, name = Removal of effector cell functioning against tumor cell
	reaction_Removal_of_effector_cell_functioning_against_tumor_cell=compartment_compartment*Function_for_Removal_of_effector_cell_functioning_against_tumor_cell(global_par_p, global_par_Dy, x(2));

% Reaction: id = Formation_of_tumor_detecting_cell, name = Formation of tumor detecting cell
	reaction_Formation_of_tumor_detecting_cell=compartment_compartment*Function_for_formation_of_tumor_detecting_cell(global_par_R, global_par_Dx, global_par_tau, global_par_Dz, x(1));

% Reaction: id = Removal_of_tumor_detecting_cell, name = Removal of tumor detecting cell
	reaction_Removal_of_tumor_detecting_cell=compartment_compartment*Function_for_removal_of_tumor_detecting_cell(global_par_mu, global_par_R, global_par_Dx, global_par_tau, global_par_Dz, x(3));

	xdot=zeros(3,1);
	
% Species:   id = x, name = x, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_Formation_of_tumor_system) + (-1.0 * reaction_Removal_of_tumor_system));
	
% Species:   id = y, name = y, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_Formation_of_effector_cell_against_tumor_cell) + (-1.0 * reaction_Removal_of_effector_cell_functioning_against_tumor_cell));
	
% Species:   id = z, name = z, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_Formation_of_tumor_detecting_cell) + (-1.0 * reaction_Removal_of_tumor_detecting_cell));
end

function z=Function_for_formation_of_tumor_system(R,Dx,tau,Dz,x,z), z=((1+R*(1-Dx*tau)+0.5*Dx*Dz*tau)*x+Dx*(1+R*tau)*z);end

function z=Function_for_Formation_of_effector_cell_against_tumor_cell(y,z), z=(y*z);end

function z=Function_for_removal_of_tumor_detecting_cell(mu,R,Dx,tau,Dz,z), z=((mu-(R*(1+Dx*tau)+Dx*(1+0.5*Dz*tau)))*z);end

function z=Function_for_Removal_of_effector_cell_functioning_against_tumor_cell(p,Dy,y), z=((p-Dy)*y);end

function z=Function_for_removal_of_tumor_system(x,y), z=(x*x+x*y);end

function z=Function_for_formation_of_tumor_detecting_cell(R,Dx,tau,Dz,x), z=((R*(1-Dx*tau)+Dx*Dz*tau)*x);end

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


