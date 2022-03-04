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
% Model name = Gex-Fabry1984 - model of receptor-mediated endocytosis of EGF in BALB/c 3T3 cells
%
% isDescribedBy http://identifiers.org/pubmed/6149699
% is http://identifiers.org/biomodels.db/MODEL2102040001
% is http://identifiers.org/biomodels.db/BIOMD0000000985
%


function main()
%Initial conditions vector
	x0=zeros(7,1);
	x0(1) = 1.98730648281E14;
	x0(2) = 73000.0000000001;
	x0(3) = 0.0;
	x0(4) = 25029.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;


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

% Compartment: id = Cell, name = Cell, constant
	compartment_Cell=1.0;
% Parameter:   id =  k1, name = k1
	global_par_k1=8.15E7;
% Parameter:   id =  k_1, name = k-1
	global_par_k_1=0.58;
% Parameter:   id =  ke_t, name = ke(t)
% Parameter:   id =  ki, name = ki
	global_par_ki=0.049;
% Parameter:   id =  k2, name = k2
	global_par_k2=0.24;
% Parameter:   id =  k_2, name = k-2
	global_par_k_2=0.0;
% Parameter:   id =  f, name = f
	global_par_f=0.2;
% Parameter:   id =  k1_t, name = k1(t)
	global_par_k1_t=0.02;
% Parameter:   id =  ke, name = ke
	global_par_ke=0.7;
% Parameter:   id =  epsilon, name = epsilon
	global_par_epsilon=0.12;
% Parameter:   id =  delTe, name = delTe
	global_par_delTe=6.5;
% Parameter:   id =  Internalised_ligand_1000, name = Internalised_ligand/1000
% Parameter:   id =  Surface_receptor_ligand_complex_1000, name = Surface_receptor_ligand_complex/1000
% assignmentRule: variable = ke_t
	global_par_ke_t=global_par_ke*(global_par_epsilon+(1-global_par_epsilon)*(1-(exp(-time/global_par_delTe))^3));
% assignmentRule: variable = Internalised_ligand_1000
	global_par_Internalised_ligand_1000=x(7)*compartment_Cell/1000;
% assignmentRule: variable = Surface_receptor_ligand_complex_1000
	global_par_Surface_receptor_ligand_complex_1000=x(3)*compartment_Cell/1000;

% Reaction: id = Receptor_Ligand_binding, name = Receptor_Ligand_binding
	reaction_Receptor_Ligand_binding=compartment_Cell*global_par_k1*x(2)*x(1);

% Reaction: id = Receptor_Ligand_dissociation, name = Receptor_Ligand_dissociation
	reaction_Receptor_Ligand_dissociation=compartment_Cell*global_par_k_1*x(3);

% Reaction: id = Receptor_Ligand_Pit_protein_binding, name = Receptor_Ligand_Pit_protein_binding
	reaction_Receptor_Ligand_Pit_protein_binding=compartment_Cell*Rate_Law_for_reaction_2(global_par_k2, global_par_f, x(3), x(6));

% Reaction: id = Receptor_Ligand_Pit_protein_dissociation, name = Receptor_Ligand_Pit_protein_dissociation
	reaction_Receptor_Ligand_Pit_protein_dissociation=compartment_Cell*global_par_k_2*x(5);

% Reaction: id = Receptor_internalisation, name = Receptor_internalisation
	reaction_Receptor_internalisation=compartment_Cell*Rate_Law_for_reaction_4(global_par_f, global_par_ke_t, x(2));

% Reaction: id = Receptor_Ligand_internal_dissociation, name = Receptor_Ligand_internal_dissociation
	reaction_Receptor_Ligand_internal_dissociation=compartment_Cell*Rate_Law_for_reaction_4(global_par_f, global_par_ke_t, x(3));

% Reaction: id = Receptor_Ligand_internal_Pit_protein_dissociation, name = Receptor_Ligand_internal_Pit_protein_dissociation
	reaction_Receptor_Ligand_internal_Pit_protein_dissociation=compartment_Cell*global_par_ke_t*x(5);

% Reaction: id = Ligand_utilisation, name = Ligand_utilisation
	reaction_Ligand_utilisation=compartment_Cell*global_par_k1_t*x(7);

% Reaction: id = Receptor_externalisation, name = Receptor_externalisation
	reaction_Receptor_externalisation=compartment_Cell*global_par_ki*x(4);

	xdot=zeros(7,1);
	
% Species:   id = Ligand_EGF, name = Ligand_EGF, affected by kineticLaw
	xdot(1) = (1/(compartment_Cell))*((-1.0 * reaction_Receptor_Ligand_binding));
	
% Species:   id = Surface_Receptor_External, name = Surface_Receptor_External, affected by kineticLaw
	xdot(2) = (1/(compartment_Cell))*((-1.0 * reaction_Receptor_Ligand_binding) + ( 1.0 * reaction_Receptor_Ligand_dissociation) + (-1.0 * reaction_Receptor_internalisation) + ( 1.0 * reaction_Receptor_externalisation));
	
% Species:   id = Receptor_Ligand_Complex, name = Receptor_Ligand_Complex, affected by kineticLaw
	xdot(3) = (1/(compartment_Cell))*(( 1.0 * reaction_Receptor_Ligand_binding) + (-1.0 * reaction_Receptor_Ligand_dissociation) + (-1.0 * reaction_Receptor_Ligand_Pit_protein_binding) + ( 1.0 * reaction_Receptor_Ligand_Pit_protein_dissociation) + (-1.0 * reaction_Receptor_Ligand_internal_dissociation));
	
% Species:   id = Internalised_receptors, name = Internalised_receptors, affected by kineticLaw
	xdot(4) = (1/(compartment_Cell))*(( 1.0 * reaction_Receptor_internalisation) + ( 1.0 * reaction_Receptor_Ligand_internal_dissociation) + ( 1.0 * reaction_Receptor_Ligand_internal_Pit_protein_dissociation) + (-1.0 * reaction_Receptor_externalisation));
	
% Species:   id = Receptor_Ligand_Pit_Protein_complex, name = Receptor_Ligand_Pit_Protein_complex, affected by kineticLaw
	xdot(5) = (1/(compartment_Cell))*(( 1.0 * reaction_Receptor_Ligand_Pit_protein_binding) + (-1.0 * reaction_Receptor_Ligand_Pit_protein_dissociation) + (-1.0 * reaction_Receptor_Ligand_internal_Pit_protein_dissociation));
	
% Species:   id = Free_pit_proteins, name = Free_pit_proteins, affected by kineticLaw
	xdot(6) = (1/(compartment_Cell))*((-1.0 * reaction_Receptor_Ligand_Pit_protein_binding));
	
% Species:   id = Internalised_Ligand, name = Internalised_Ligand, affected by kineticLaw
	xdot(7) = (1/(compartment_Cell))*(( 1.0 * reaction_Receptor_Ligand_internal_dissociation) + ( 1.0 * reaction_Receptor_Ligand_internal_Pit_protein_dissociation) + (-1.0 * reaction_Ligand_utilisation));
end

function z=Rate_Law_for_reaction_2(k2,f,RL,P), z=(k2*f*RL*P);end

function z=Rate_Law_for_reaction_4(f,ket,Rs), z=(f*ket*Rs);end

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


