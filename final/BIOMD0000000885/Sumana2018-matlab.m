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
% Model name = Sumana2018 - Mathematical modeling of cancer-immune system, considering the role of antibodies.
%
% hasInstance http://identifiers.org/ncit/C15438
% hasInstance http://identifiers.org/ncit/C16295
% hasInstance http://identifiers.org/taxonomy/9606
% hasInstance http://identifiers.org/ncit/C19691
% isDescribedBy http://identifiers.org/ncit/C19691
% isDescribedBy http://identifiers.org/pubmed/29572780
% is http://identifiers.org/biomodels.db/MODEL1912090004
% is http://identifiers.org/biomodels.db/BIOMD0000000885
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 90000.0;
	x0(2) = 1000000.0;
	x0(3) = 1.5E8;
	x0(4) = 1.0E8;


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
% Parameter:   id =  a, name = a
	global_par_a=0.1;
% Parameter:   id =  b, name = b
	global_par_b=0.01;
% Parameter:   id =  mu_1, name = mu_1
	global_par_mu_1=0.01;
% Parameter:   id =  k_1, name = k_1
	global_par_k_1=1000000.0;
% Parameter:   id =  u, name = u
	global_par_u=0.1;
% Parameter:   id =  r_1, name = r_1
	global_par_r_1=100.0;
% Parameter:   id =  r_2, name = r_2
	global_par_r_2=1000.0;
% Parameter:   id =  mu_2, name = mu_2
	global_par_mu_2=6.884;
% Parameter:   id =  r, name = r
	global_par_r=0.431;
% Parameter:   id =  k_2, name = k_2
	global_par_k_2=9.8E8;
% Parameter:   id =  beta_1, name = beta_1
	global_par_beta_1=3.0218E7;

% Reaction: id = B_cell_formation, name = B cell formation
	reaction_B_cell_formation=compartment_compartment*Function_for_formation_of_B_cell(global_par_a, global_par_u, x(1), global_par_k_1);

% Reaction: id = Removal_of_B_cell, name = Removal of B cell
	reaction_Removal_of_B_cell=compartment_compartment*Function_for_Removal_of_B_cell(global_par_b, global_par_u, x(1));

% Reaction: id = Production_of_plasma_cell, name = Production of plasma cell
	reaction_Production_of_plasma_cell=compartment_compartment*Function_for_production_of_plasma_cell(global_par_b, global_par_u, x(1));

% Reaction: id = Removal_of_plasma_cell_from_system, name = Removal of plasma cell from system
	reaction_Removal_of_plasma_cell_from_system=compartment_compartment*Function_for_removal_of_plasma_cell_from_the_system(global_par_mu_1, x(2));

% Reaction: id = Production_of_antibody_against_tumor, name = Production of antibody against tumor
	reaction_Production_of_antibody_against_tumor=compartment_compartment*Function_for_Production_of_antibody_against_tumor(global_par_r_1, x(1), global_par_r_2, x(2));

% Reaction: id = Removal_of_antibody_from_the_system, name = Removal of antibody from the system
	reaction_Removal_of_antibody_from_the_system=compartment_compartment*Function_for_removal_of_antibody_from_the_system(global_par_mu_2, x(3));

% Reaction: id = Formation_of_tumor_cell, name = Formation of tumor cell
	reaction_Formation_of_tumor_cell=compartment_compartment*Function_for_formation_of_tumor_cell(global_par_r, x(4), global_par_k_2);

% Reaction: id = Removal_of_tumor_cell_by_immune_cell, name = Removal of tumor cell by immune cell
	reaction_Removal_of_tumor_cell_by_immune_cell=compartment_compartment*Function_of_removal_of_tumor_cell(global_par_beta_1, x(3), x(4));

	xdot=zeros(4,1);
	
% Species:   id = B, name = B, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_B_cell_formation) + (-1.0 * reaction_Removal_of_B_cell));
	
% Species:   id = P, name = P, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_Production_of_plasma_cell) + (-1.0 * reaction_Removal_of_plasma_cell_from_system));
	
% Species:   id = A, name = A, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_Production_of_antibody_against_tumor) + (-1.0 * reaction_Removal_of_antibody_from_the_system));
	
% Species:   id = T, name = T, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_Formation_of_tumor_cell) + (-1.0 * reaction_Removal_of_tumor_cell_by_immune_cell));
end

function z=Function_for_removal_of_plasma_cell_from_the_system(mu_1,P), z=(mu_1*P);end

function z=Function_for_production_of_plasma_cell(b,u,B), z=(b*(1-u)*B);end

function z=Function_for_formation_of_B_cell(a,u,B,k_1), z=(a*u*B*(1-B/k_1));end

function z=Function_for_Removal_of_B_cell(b,u,B), z=(b*(1-u)*B);end

function z=Function_for_Production_of_antibody_against_tumor(r_1,B,r_2,P), z=(r_1*B+r_2*P);end

function z=Function_for_removal_of_antibody_from_the_system(mu_2,A), z=(mu_2*A);end

function z=Function_of_removal_of_tumor_cell(beta_1,A,T), z=(beta_1*A*T);end

function z=Function_for_formation_of_tumor_cell(r,T,k_2), z=(r*T*(1-T/k_2));end

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


