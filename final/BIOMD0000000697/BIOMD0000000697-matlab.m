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
% Model name = Ciliberto2003 - CyclinE / Cdk2 timer in the cell cycle of Xenopus laevis embryo
%
% is http://identifiers.org/biomodels.db/MODEL0913242281
% is http://identifiers.org/biomodels.db/BIOMD0000000697
% isDescribedBy http://identifiers.org/pubmed/12914904
%


function main()
%Initial conditions vector
	x0=zeros(15,1);
	x0(1) = 0.94;
	x0(2) = 0.0599999999999999;
	x0(3) = 1.02;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 2.99999999999998;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 0.0;
	x0(13) = 1.0;
	x0(14) = 0.999999999999993;
	x0(15) = 0.6;


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

% Compartment: id = compartment, name = embryo, constant
	compartment_compartment=1.0;
% Parameter:   id =  Jwact, name = Jwact
	global_par_Jwact=0.01;
% Parameter:   id =  Jwinact, name = Jwinact
	global_par_Jwinact=0.01;
% Parameter:   id =  kwact, name = kwact
	global_par_kwact=0.75;
% Parameter:   id =  kwinact, name = kwinact
	global_par_kwinact=1.5;
% Parameter:   id =  Jiact, name = Jiact
	global_par_Jiact=0.01;
% Parameter:   id =  Jiinact, name = Jiinact
	global_par_Jiinact=0.01;
% Parameter:   id =  kiact, name = kiact
	global_par_kiact=0.15;
% Parameter:   id =  kiinact, name = kiinact
	global_par_kiinact=0.6;
% Parameter:   id =  Heav, name = Heav
% Parameter:   id =  kdact, name = kdact
	global_par_kdact=0.023;
% Parameter:   id =  theta, name = theta
	global_par_theta=0.3;
% Parameter:   id =  kwee, name = kwee
	global_par_kwee=1.5;
% Parameter:   id =  k25A, name = k25A
	global_par_k25A=0.1;
% Parameter:   id =  kon, name = kon
	global_par_kon=0.02;
% Parameter:   id =  koff, name = koff
	global_par_koff=1.0E-4;
% Parameter:   id =  kassoc, name = kassoc
	global_par_kassoc=0.1;
% Parameter:   id =  kdissoc, name = kdissoc
	global_par_kdissoc=0.001;
% Parameter:   id =  kedeg, name = kedeg
	global_par_kedeg=0.017;
% Parameter:   id =  kxdeg, name = kxdeg
	global_par_kxdeg=0.01;
% Parameter:   id =  phi, name = phi
% Parameter:   id =  epsilon, name = epsilon
	global_par_epsilon=0.001;
% Parameter:   id =  pool, name = pool
% Parameter:   id =  n, name = n
	global_par_n=4.0;
% Parameter:   id =  L, name = L
	global_par_L=0.4;
% Parameter:   id =  x, name = x
% assignmentRule: variable = Cyc_total
	x(13)=x(9)+x(8)+x(11)+x(10)+x(5)+x(4)+x(2)+x(1);
% assignmentRule: variable = Xic_total
	x(14)=(x(7)+x(9)+x(8)+x(11)+x(10)+x(12))/3;
% assignmentRule: variable = pool
	global_par_pool=x(4)+x(5)+x(10)+x(11);
% assignmentRule: variable = phi
	global_par_phi=(global_par_epsilon+global_par_pool^global_par_n)/(global_par_L^global_par_n+global_par_pool^global_par_n);
% assignmentRule: variable = x
	global_par_x=x(4)-global_par_theta;
% assignmentRule: variable = Heav
	global_par_Heav=piecewise(0, global_par_x < 0, 1);

% Reaction: id = Xic_Cdk2_CycE_association, name = Xic_Cdk2_CycE_association
	reaction_Xic_Cdk2_CycE_association=compartment_compartment*global_par_kassoc*x(7)*x(2);

% Reaction: id = Xic_Cdk2_CycErem_association, name = Xic_Cdk2_CycErem_association
	reaction_Xic_Cdk2_CycErem_association=compartment_compartment*global_par_kassoc*x(7)*x(4);

% Reaction: id = Xic_Cdk2_CycE_dissociation, name = Xic_Cdk2_CycE_dissociation
	reaction_Xic_Cdk2_CycE_dissociation=compartment_compartment*global_par_kdissoc*x(8);

% Reaction: id = Xic_Cdk2_CycErem_dissociation, name = Xic_Cdk2_CycErem_dissociation
	reaction_Xic_Cdk2_CycErem_dissociation=compartment_compartment*global_par_kdissoc*x(10);

% Reaction: id = Cdk2_CycErem_to_not_rem, name = Cdk2_CycErem_to_not_rem
	reaction_Cdk2_CycErem_to_not_rem=compartment_compartment*global_par_koff*x(4);

% Reaction: id = PCdk2_CycE_to_not_rem, name = PCdk2_CycE_to_not_rem
	reaction_PCdk2_CycE_to_not_rem=compartment_compartment*global_par_koff*x(5);

% Reaction: id = Cdk2_CycE_to_rem, name = Cdk2_CycE_to_rem
	reaction_Cdk2_CycE_to_rem=compartment_compartment*function_removed_from_oscillatory_system_1(x(2), global_par_kon, global_par_phi);

% Reaction: id = PCdk2_CycE_to_rem, name = PCdk2_CycE_to_rem
	reaction_PCdk2_CycE_to_rem=compartment_compartment*function_removed_from_oscillatory_system_2(x(1), global_par_kon, global_par_phi);

% Reaction: id = X_degadation, name = X_degadation
	reaction_X_degadation=compartment_compartment*global_par_kxdeg*x(10);

% Reaction: id = X_degradation_phosphorylated_complex, name = X_degradation_phosphorylated_complex
	reaction_X_degradation_phosphorylated_complex=compartment_compartment*global_par_kxdeg*x(11);

% Reaction: id = Degradation_XicPCdk2_CycErem, name = Degradation_XicPCdk2_CycErem
	reaction_Degradation_XicPCdk2_CycErem=compartment_compartment*Function_for_degradation_of_Xic_Cyc_Cdk_1(x(6), x(11), global_par_kedeg);

% Reaction: id = Degradation_XicCdk2_CycErem, name = Degradation_XicCdk2_CycErem
	reaction_Degradation_XicCdk2_CycErem=compartment_compartment*Function_for_degradation_of_Xic_Cyc_Cdk_2(x(6), x(10), global_par_kedeg);

% Reaction: id = Dephos_Xic_PCdk2_CycE, name = Dephos_Xic_PCdk2_CycE
	reaction_Dephos_Xic_PCdk2_CycE=compartment_compartment*global_par_k25A*x(9);

% Reaction: id = Dephos_PCdk2_CycE, name = Dephos_PCdk2_CycE
	reaction_Dephos_PCdk2_CycE=compartment_compartment*global_par_k25A*x(1);

% Reaction: id = Degradation_increase, name = Degradation_increase
	reaction_Degradation_increase=compartment_compartment*function_Hill_Cdk2_CycE_removal_1(global_par_Heav, global_par_kdact);

% Reaction: id = Phos_Xic_PCdk2_CycE, name = Phos_Xic_PCdk2_CycE
	reaction_Phos_Xic_PCdk2_CycE=compartment_compartment*Function_phosphorylation_with_Wee1_1(x(3), x(8), global_par_kwee);

% Reaction: id = Phos_PCdk2_CycE, name = Phos_PCdk2_CycE
	reaction_Phos_PCdk2_CycE=compartment_compartment*Function_phosphorylation_with_Wee1_2(x(2), x(3), global_par_kwee);

% Reaction: id = Kinase__regulation, name = Kinase _regulation
	reaction_Kinase__regulation=compartment_compartment*Function_for_Kin_a_1(x(2), global_par_Jiact, global_par_Jiinact, x(15), global_par_kiact, global_par_kiinact);

% Reaction: id = Xic_PCdk2_CycE_association, name = Xic_PCdk2_CycE_association
	reaction_Xic_PCdk2_CycE_association=compartment_compartment*global_par_kassoc*x(7)*x(1);

% Reaction: id = Xic_PCdk2_CycErem_association, name = Xic_PCdk2_CycErem_association
	reaction_Xic_PCdk2_CycErem_association=compartment_compartment*global_par_kassoc*x(7)*x(5);

% Reaction: id = Xic_PCdk2_CycE_dissociation, name = Xic_PCdk2_CycE_dissociation
	reaction_Xic_PCdk2_CycE_dissociation=compartment_compartment*global_par_kdissoc*x(9);

% Reaction: id = Xic_PCdk2_CycErem_dissociation, name = Xic_PCdk2_CycErem_dissociation
	reaction_Xic_PCdk2_CycErem_dissociation=compartment_compartment*global_par_kdissoc*x(11);

% Reaction: id = Degradation_Cdk2_CycErem, name = Degradation_Cdk2_CycErem
	reaction_Degradation_Cdk2_CycErem=compartment_compartment*Function_for_degradation_of_Xic_Cyc_Cdk_3(x(4), x(6), global_par_kedeg);

% Reaction: id = Degradation_PCdk2_CycErem, name = Degradation_PCdk2_CycErem
	reaction_Degradation_PCdk2_CycErem=compartment_compartment*Function_for_degradation_of_Xic_Cyc_Cdk_4(x(6), x(5), global_par_kedeg);

% Reaction: id = Xicrem_degradation, name = Xicrem degradation
	reaction_Xicrem_degradation=compartment_compartment*global_par_kxdeg*x(12);

% Reaction: id = Xic_PCdk2_CycErem_to_not_rem, name = Xic_PCdk2_CycErem_to_not_rem
	reaction_Xic_PCdk2_CycErem_to_not_rem=compartment_compartment*global_par_koff*x(11);

% Reaction: id = Xic_Cdk2_CycErem_to_not_rem, name = Xic_Cdk2_CycErem_to_not_rem
	reaction_Xic_Cdk2_CycErem_to_not_rem=compartment_compartment*global_par_koff*x(10);

% Reaction: id = Xic_PCdk2_CycE_to_rem, name = Xic_PCdk2_CycE_to_rem
	reaction_Xic_PCdk2_CycE_to_rem=compartment_compartment*function_removed_from_oscillatory_system_3(x(9), global_par_kon, global_par_phi);

% Reaction: id = Xic_Cdk2_CycE_to_rem, name = Xic_Cdk2_CycE_to_rem
	reaction_Xic_Cdk2_CycE_to_rem=compartment_compartment*function_removed_from_oscillatory_system_4(x(8), global_par_kon, global_par_phi);

% Reaction: id = Wee1_regulation, name = Wee1_regulation
	reaction_Wee1_regulation=compartment_compartment*Function_for_Wee1_a_1(global_par_Jwact, global_par_Jwinact, x(15), x(3), const_species_Wee1_total, global_par_kwact, global_par_kwinact);

% Species:   id = Wee1_total, name = Wee1_total, constant	const_species_Wee1_total=7.99999999999998;

	xdot=zeros(15,1);
	
% Species:   id = PCdk2_CycE, name = PCdk2_CycE, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_PCdk2_CycE_to_not_rem) + (-1.0 * reaction_PCdk2_CycE_to_rem) + (-1.0 * reaction_Dephos_PCdk2_CycE) + ( 1.0 * reaction_Phos_PCdk2_CycE) + (-1.0 * reaction_Xic_PCdk2_CycE_association) + ( 1.0 * reaction_Xic_PCdk2_CycE_dissociation));
	
% Species:   id = Cdk2_CycE, name = Cdk2_CycE, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*((-1.0 * reaction_Xic_Cdk2_CycE_association) + ( 1.0 * reaction_Xic_Cdk2_CycE_dissociation) + ( 1.0 * reaction_Cdk2_CycErem_to_not_rem) + (-1.0 * reaction_Cdk2_CycE_to_rem) + ( 1.0 * reaction_Dephos_PCdk2_CycE) + (-1.0 * reaction_Phos_PCdk2_CycE) + (-1.0 * reaction_Kinase__regulation) + ( 1.0 * reaction_Kinase__regulation));
	
% Species:   id = Wee1_a, name = Wee1_a, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_Wee1_regulation));
	
% Species:   id = Cdk2_CycErem, name = Cdk2_CycErem, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*((-1.0 * reaction_Xic_Cdk2_CycErem_association) + ( 1.0 * reaction_Xic_Cdk2_CycErem_dissociation) + (-1.0 * reaction_Cdk2_CycErem_to_not_rem) + ( 1.0 * reaction_Cdk2_CycE_to_rem) + ( 1.0 * reaction_X_degadation) + (-1.0 * reaction_Degradation_Cdk2_CycErem));
	
% Species:   id = PCdk2_CycErem, name = PCdk2_CycErem, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*((-1.0 * reaction_PCdk2_CycE_to_not_rem) + ( 1.0 * reaction_PCdk2_CycE_to_rem) + ( 1.0 * reaction_X_degradation_phosphorylated_complex) + (-1.0 * reaction_Xic_PCdk2_CycErem_association) + ( 1.0 * reaction_Xic_PCdk2_CycErem_dissociation) + (-1.0 * reaction_Degradation_PCdk2_CycErem));
	
% Species:   id = Deg_a, name = Deg_CycE, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*(( 1.0 * reaction_Degradation_increase));
	
% Species:   id = Xic, name = Xic, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment))*((-1.0 * reaction_Xic_Cdk2_CycE_association) + (-1.0 * reaction_Xic_Cdk2_CycErem_association) + ( 1.0 * reaction_Xic_Cdk2_CycE_dissociation) + ( 1.0 * reaction_Xic_Cdk2_CycErem_dissociation) + (-1.0 * reaction_Xic_PCdk2_CycE_association) + (-1.0 * reaction_Xic_PCdk2_CycErem_association) + ( 1.0 * reaction_Xic_PCdk2_CycE_dissociation) + ( 1.0 * reaction_Xic_PCdk2_CycErem_dissociation));
	
% Species:   id = Xic_Cdk2_CycE, name = Xic_Cdk2_CycE, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment))*(( 1.0 * reaction_Xic_Cdk2_CycE_association) + (-1.0 * reaction_Xic_Cdk2_CycE_dissociation) + ( 1.0 * reaction_Dephos_Xic_PCdk2_CycE) + (-1.0 * reaction_Phos_Xic_PCdk2_CycE) + ( 1.0 * reaction_Xic_Cdk2_CycErem_to_not_rem) + (-1.0 * reaction_Xic_Cdk2_CycE_to_rem));
	
% Species:   id = Xic_PCdk2_CycE, name = Xic_PCdk2_CycE, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment))*((-1.0 * reaction_Dephos_Xic_PCdk2_CycE) + ( 1.0 * reaction_Phos_Xic_PCdk2_CycE) + ( 1.0 * reaction_Xic_PCdk2_CycE_association) + (-1.0 * reaction_Xic_PCdk2_CycE_dissociation) + ( 1.0 * reaction_Xic_PCdk2_CycErem_to_not_rem) + (-1.0 * reaction_Xic_PCdk2_CycE_to_rem));
	
% Species:   id = Xic_Cdk2_CycErem, name = Xic_Cdk2_CycErem, affected by kineticLaw
	xdot(10) = (1/(compartment_compartment))*(( 1.0 * reaction_Xic_Cdk2_CycErem_association) + (-1.0 * reaction_Xic_Cdk2_CycErem_dissociation) + (-1.0 * reaction_X_degadation) + (-1.0 * reaction_Degradation_XicCdk2_CycErem) + (-1.0 * reaction_Xic_Cdk2_CycErem_to_not_rem) + ( 1.0 * reaction_Xic_Cdk2_CycE_to_rem));
	
% Species:   id = Xic_PCdk2_CycErem, name = Xic_PCdk2_CycErem, affected by kineticLaw
	xdot(11) = (1/(compartment_compartment))*((-1.0 * reaction_X_degradation_phosphorylated_complex) + (-1.0 * reaction_Degradation_XicPCdk2_CycErem) + ( 1.0 * reaction_Xic_PCdk2_CycErem_association) + (-1.0 * reaction_Xic_PCdk2_CycErem_dissociation) + (-1.0 * reaction_Xic_PCdk2_CycErem_to_not_rem) + ( 1.0 * reaction_Xic_PCdk2_CycE_to_rem));
	
% Species:   id = Xicrem, name = Xicrem, affected by kineticLaw
	xdot(12) = (1/(compartment_compartment))*(( 1.0 * reaction_Degradation_XicPCdk2_CycErem) + ( 1.0 * reaction_Degradation_XicCdk2_CycErem) + (-1.0 * reaction_Xicrem_degradation));
	
% Species:   id = Cyc_total, name = Cyc_total, involved in a rule 	xdot(13) = x(13);
	
% Species:   id = Xic_total, name = Xic_total, involved in a rule 	xdot(14) = x(14);
	
% Species:   id = Kin_a, name = Kin_a, affected by kineticLaw
	xdot(15) = (1/(compartment_compartment))*(( 1.0 * reaction_Kinase__regulation));
end

function z=function_removed_from_oscillatory_system_1(Cdk2_CycE,kon,phi), z=(kon*phi*Cdk2_CycE);end

function z=function_removed_from_oscillatory_system_2(PCdk2_CycE,kon,phi), z=(kon*phi*PCdk2_CycE);end

function z=Function_for_degradation_of_Xic_Cyc_Cdk_1(Deg_a,Xic_PCdk2_CycErem,kedeg), z=(kedeg*Xic_PCdk2_CycErem*Deg_a);end

function z=Function_for_degradation_of_Xic_Cyc_Cdk_2(Deg_a,Xic_Cdk2_CycErem,kedeg), z=(kedeg*Xic_Cdk2_CycErem*Deg_a);end

function z=function_Hill_Cdk2_CycE_removal_1(Heav,kdact), z=(kdact*Heav);end

function z=Function_phosphorylation_with_Wee1_1(Wee1_a,Xic_Cdk2_CycE,kwee), z=(kwee*Wee1_a*Xic_Cdk2_CycE);end

function z=Function_phosphorylation_with_Wee1_2(Cdk2_CycE,Wee1_a,kwee), z=(kwee*Wee1_a*Cdk2_CycE);end

function z=Function_for_Kin_a_1(Cdk2_CycE,Jiact,Jiinact,Kin_a,kiact,kiinact), z=(kiact*(1-Kin_a)/(Jiact+1-Kin_a)-kiinact*Cdk2_CycE*Kin_a/(Jiinact+Kin_a));end

function z=Function_for_degradation_of_Xic_Cyc_Cdk_3(Cdk2_CycErem,Deg_a,kedeg), z=(kedeg*Cdk2_CycErem*Deg_a);end

function z=Function_for_degradation_of_Xic_Cyc_Cdk_4(Deg_a,PCdk2_CycErem,kedeg), z=(kedeg*PCdk2_CycErem*Deg_a);end

function z=function_removed_from_oscillatory_system_3(Xic_PCdk2_CycE,kon,phi), z=(kon*phi*Xic_PCdk2_CycE);end

function z=function_removed_from_oscillatory_system_4(Xic_Cdk2_CycE,kon,phi), z=(kon*phi*Xic_Cdk2_CycE);end

function z=Function_for_Wee1_a_1(Jwact,Jwinact,Kin_a,Wee1_a,Wee1_total,kwact,kwinact), z=(kwact*(Wee1_total-Wee1_a)/(Jwact+Wee1_total-Wee1_a)-kwinact*Kin_a*Wee1_a/(Jwinact+Wee1_a));end

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


