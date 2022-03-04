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
% Model name = dePillis2003 - The dynamics of an optimally controlled tumor model: A case study
%
% hasInstance http://identifiers.org/mamo/MAMO_0000046
% hasInstance http://identifiers.org/taxonomy/9606
% hasInstance http://identifiers.org/ncit/C48686
% isDescribedBy http://identifiers.org/ncit/C48686
% isDescribedBy http://identifiers.org/doi/10.1016/S0895-7177(03)00133-X
% isDerivedFrom http://identifiers.org/doi/10.1007/bf02460644
% is http://identifiers.org/biomodels.db/MODEL2001080003
% is http://identifiers.org/biomodels.db/BIOMD0000000909
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 1.0;
	x0(2) = 0.25;
	x0(3) = 0.15;
	x0(4) = 0.0;


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
% Parameter:   id =  a1, name = a1
	global_par_a1=0.2;
% Parameter:   id =  a2, name = a2
	global_par_a2=0.3;
% Parameter:   id =  a3, name = a3
	global_par_a3=0.1;
% Parameter:   id =  b1, name = b1
	global_par_b1=1.0;
% Parameter:   id =  b2, name = b2
	global_par_b2=1.0;
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=0.3;
% Parameter:   id =  c1, name = c1
	global_par_c1=1.0;
% Parameter:   id =  c2, name = c2
	global_par_c2=0.5;
% Parameter:   id =  c3, name = c3
	global_par_c3=1.0;
% Parameter:   id =  c4, name = c4
	global_par_c4=1.0;
% Parameter:   id =  d1, name = d1
	global_par_d1=0.2;
% Parameter:   id =  d2, name = d2
	global_par_d2=1.0;
% Parameter:   id =  r1, name = r1
	global_par_r1=1.5;
% Parameter:   id =  r2, name = r2
	global_par_r2=1.0;
% Parameter:   id =  s, name = s
	global_par_s=0.33;
% Parameter:   id =  p, name = p
	global_par_p=0.01;
% Parameter:   id =  v, name = v
	global_par_v=0.0;

% Reaction: id = Presence_of_Normal_Cell, name = Presence of Normal Cell
	reaction_Presence_of_Normal_Cell=compartment_compartment*Function_for_presence_of_normal_cell(global_par_r2, x(1), global_par_b2);

% Reaction: id = Normal_cells_attacked_and_removed, name = Normal cells attacked and removed
	reaction_Normal_cells_attacked_and_removed=compartment_compartment*Function_for_normal_cells_attacked_and_removed(global_par_c4, x(2), x(1), global_par_a3, x(4));

% Reaction: id = Induction_of_tumor_cell, name = Induction of tumor cell
	reaction_Induction_of_tumor_cell=compartment_compartment*Function_for_induction_of_tumor_cell(global_par_r1, x(2), global_par_b1);

% Reaction: id = Tumor_cells_removed_by_immune_system, name = Tumor cells removed by immune system
	reaction_Tumor_cells_removed_by_immune_system=compartment_compartment*Function_for_Tumor_cells_removed_by_immune_system(global_par_c2, x(3), x(2), global_par_c3, x(1), global_par_a2, x(4));

% Reaction: id = Initiation_immune_response_against_tumor, name = Initiation immune response against tumor
	reaction_Initiation_immune_response_against_tumor=compartment_compartment*Function_for_initiation_of_immune_response_against_cancer(global_par_s, global_par_p, x(3), x(2), global_par_alpha);

% Reaction: id = Removal_of_immune_response_components, name = Removal of immune response components
	reaction_Removal_of_immune_response_components=compartment_compartment*Function_for_removal_of_immune_response_components(global_par_c1, x(3), x(2), global_par_d1, global_par_a1, x(4));

% Reaction: id = Decrease_of_chemotherapeutic_drug_at_tumor_site, name = Decrease of chemotherapeutic drug at tumor site
	reaction_Decrease_of_chemotherapeutic_drug_at_tumor_site=compartment_compartment*Function_for_decrease_in_chemotherapeutic_drug_at_tumor_site(global_par_d2, x(4));

	xdot=zeros(4,1);
	
% Species:   id = N, name = N, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_Presence_of_Normal_Cell) + (-1.0 * reaction_Normal_cells_attacked_and_removed));
	
% Species:   id = T, name = T, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_Induction_of_tumor_cell) + (-1.0 * reaction_Tumor_cells_removed_by_immune_system));
	
% Species:   id = I, name = I, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_Initiation_immune_response_against_tumor) + (-1.0 * reaction_Removal_of_immune_response_components));
	
% Species:   id = u, name = u, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_Increase_in_amount_of_drug_at_tumor_site) + (-1.0 * reaction_Decrease_of_chemotherapeutic_drug_at_tumor_site));
end

function z=Function_for_presence_of_normal_cell(r2,N,b2), z=(r2*N*(1-b2*N));end

function z=Function_for_Tumor_cells_removed_by_immune_system(c2,I,T,c3,N,a2,u), z=(c2*I*T+c3*T*N+a2*(1-exp(-u))*T);end

function z=Function_for_initiation_of_immune_response_against_cancer(s,p,I,T,alpha), z=(s+p*I*T/(alpha+T));end

function z=Function_for_normal_cells_attacked_and_removed(c4,T,N,a3,u), z=(c4*T*N+a3*(1-exp(-u))*N);end

function z=Function_for_induction_of_tumor_cell(r1,T,b1), z=(r1*T*(1-b1*T));end

function z=Function_for_increase_in_the_chemotherapeutic_drug_at_tumor_site(v), z=(v);end

function z=Function_for_decrease_in_chemotherapeutic_drug_at_tumor_site(d2,u), z=(d2*u);end

function z=Function_for_removal_of_immune_response_components(c1,I,T,d1,a1,u), z=(c1*I*T+d1*I+a1*(1-exp(-u))*I);end

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


