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
% Model name = Nazari2018 - IL6 mediated stem cell driven tumor growth and targeted treatment
%
% is http://identifiers.org/biomodels.db/MODEL1909230001
% is http://identifiers.org/biomodels.db/BIOMD0000000819
%


function main()
%Initial conditions vector
	x0=zeros(11,1);
	x0(1) = 1000.0;
	x0(2) = 0.0;
	x0(3) = 0.01;
	x0(4) = 0.01;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 1.0;
	x0(9) = 1.0;
	x0(10) = 1.0;
	x0(11) = 1000.02;


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
% Parameter:   id =  alpha_S, name = alpha_S
	global_par_alpha_S=0.6;
% Parameter:   id =  phi_S, name = phi_S
% Parameter:   id =  R_Ts, name = R_Ts
	global_par_R_Ts=1.66E-6;
% Parameter:   id =  delta_S, name = delta_S
% Parameter:   id =  gamma_S, name = gamma_S
	global_par_gamma_S=2.38;
% Parameter:   id =  A_in, name = A_in
	global_par_A_in=2.0;
% Parameter:   id =  A_out, name = A_out
	global_par_A_out=2.0;
% Parameter:   id =  alpha_E, name = alpha_E
% Parameter:   id =  R_Te, name = R_Te
% Parameter:   id =  R_Td, name = R_Td
% Parameter:   id =  phi_E, name = phi_E
% Parameter:   id =  phi_D, name = phi_D
% Parameter:   id =  Pstar_Smin, name = Pstar_Smin
	global_par_Pstar_Smin=0.014;
% Parameter:   id =  P_Smax, name = P_Smax
	global_par_P_Smax=0.9;
% Parameter:   id =  delta_D, name = delta_D
	global_par_delta_D=0.0612;
% Parameter:   id =  delta_E, name = delta_E
	global_par_delta_E=0.0612;
% Parameter:   id =  n, name = n
	global_par_n=2.6;
% Parameter:   id =  P_Smin, name = P_Smin
% Parameter:   id =  myu, name = myu
	global_par_myu=0.04;
% Parameter:   id =  P_Ns, name = P_Ns
	global_par_P_Ns=728455.0;
% Parameter:   id =  P_S, name = P_S
% Parameter:   id =  gamma_E, name = gamma_E
	global_par_gamma_E=2.38;
% Parameter:   id =  gamma_D, name = gamma_D
	global_par_gamma_D=2.38;
% Parameter:   id =  K_f, name = K_f
	global_par_K_f=2.35;
% Parameter:   id =  K_r, name = K_r
	global_par_K_r=2.24;
% Parameter:   id =  lambda, name = lambda
	global_par_lambda=0.4152;
% Parameter:   id =  rho, name = rho
	global_par_rho=7.0E-7;
% Parameter:   id =  K_p, name = K_p
	global_par_K_p=24.95;
% Parameter:   id =  P_phiS, name = P_phiS
% Parameter:   id =  P_etaE, name = P_etaE
% Parameter:   id =  P_DD, name = P_DD
% Parameter:   id =  D_phiS, name = D_phiS
% Parameter:   id =  D_etaE, name = D_etaE
% Parameter:   id =  D_DD, name = D_DD
% assignmentRule: variable = tumor
	x(11)=x(1)+x(4)+x(3);
% assignmentRule: variable = phi_S
	global_par_phi_S=x(2)/(global_par_R_Ts*x(1));
% assignmentRule: variable = delta_S
	global_par_delta_S=1.5*global_par_alpha_S*global_par_Pstar_Smin;
% assignmentRule: variable = R_Te
	global_par_R_Te=global_par_R_Ts/8;
% assignmentRule: variable = R_Td
	global_par_R_Td=global_par_R_Ts/8;
% assignmentRule: variable = phi_E
	global_par_phi_E=x(5)/(global_par_R_Te*x(3));
% assignmentRule: variable = phi_D
	global_par_phi_D=x(6)/(global_par_R_Td*x(4));
% assignmentRule: variable = P_Smin
	global_par_P_Smin=global_par_myu*(global_par_P_Smax-global_par_Pstar_Smin)*global_par_phi_S+global_par_Pstar_Smin;
% assignmentRule: variable = P_S
	global_par_P_S=(global_par_P_Smax-global_par_P_Smin)*global_par_P_Ns^global_par_n/(global_par_P_Ns^global_par_n+x(1)^global_par_n)+global_par_P_Smin;
% assignmentRule: variable = P_phiS
	global_par_P_phiS=global_par_alpha_S*global_par_P_S*x(1);
% assignmentRule: variable = P_etaE
	global_par_P_etaE=global_par_A_in*global_par_alpha_S*(1-global_par_P_S)*x(1)-global_par_alpha_E*x(3);
% assignmentRule: variable = P_DD
	global_par_P_DD=global_par_A_out*global_par_alpha_E*x(3);
% assignmentRule: variable = D_phiS
	global_par_D_phiS=global_par_delta_S*x(1)/(1+global_par_gamma_S*global_par_phi_S);
% assignmentRule: variable = D_etaE
	global_par_D_etaE=global_par_delta_E*x(3)/(1+global_par_gamma_E*global_par_phi_E);
% assignmentRule: variable = D_DD
	global_par_D_DD=global_par_delta_D*x(4)/(1+global_par_gamma_D*global_par_phi_D);

% Reaction: id = Cancer_Stem_cell_S_self_renewal, name = Cancer Stem cell S self-renewal
	reaction_Cancer_Stem_cell_S_self_renewal=compartment_compartment*Function_for_S_self_renewal(global_par_alpha_S, global_par_P_S, x(1));

% Reaction: id = Cancer_Stem_Cell_S_death, name = Cancer Stem Cell S death
	reaction_Cancer_Stem_Cell_S_death=compartment_compartment*Function_for_S_death(global_par_delta_S, x(1), global_par_gamma_S, global_par_phi_S);

% Reaction: id = Amplified_Stem_Cell_differentiation, name = Amplified Stem Cell differentiation
	reaction_Amplified_Stem_Cell_differentiation=compartment_compartment*Function_for_amplified_S_differentiation(global_par_A_in, global_par_alpha_S, global_par_P_S, x(1));

% Reaction: id = Progenitor_Cell_E_differentiation, name = Progenitor Cell E differentiation
	reaction_Progenitor_Cell_E_differentiation=compartment_compartment*Function_for_Progenitor_Cell_E_differentiation(global_par_alpha_E, x(3));

% Reaction: id = Progenitor_Cell_E_death, name = Progenitor Cell E death
	reaction_Progenitor_Cell_E_death=compartment_compartment*Function_for_Progenitor_Cell_E_death(global_par_delta_E, x(3), global_par_gamma_E, global_par_phi_E);

% Reaction: id = Progenitor_Cell_differentiation_form_D, name = Progenitor Cell differentiation form D
	reaction_Progenitor_Cell_differentiation_form_D=compartment_compartment*Function_for_Progenitor_Cell_E_differentiation_form_D(global_par_A_out, global_par_alpha_E, x(3));

% Reaction: id = Differentiated_Cell_D_death, name = Differentiated Cell D death
	reaction_Differentiated_Cell_D_death=compartment_compartment*Function_for_Differentiated_cell_D_death(global_par_delta_D, x(4), global_par_gamma_D, global_par_phi_D);

% Reaction: id = IL6_binding_to_stem_cells, name = IL6 binding to stem cells
	reaction_IL6_binding_to_stem_cells=compartment_compartment*Function_for_IL6_binding_to_stem_cells(global_par_K_f, x(7), x(8));

% Reaction: id = IL6_dissociation_from_stem_cells, name = IL6 dissociation from stem cells
	reaction_IL6_dissociation_from_stem_cells=compartment_compartment*Function_for_IL6_dissociation_from_stem_cells(global_par_K_r, x(2));

% Reaction: id = IL6_binding_to_progenitor_cells, name = IL6 binding to progenitor cells
	reaction_IL6_binding_to_progenitor_cells=compartment_compartment*Function_for_IL6_binding_to_progenitor_cells(global_par_K_f, x(7), x(9));

% Reaction: id = IL6_dissociation_from_progenitor_cells, name = IL6 dissociation from progenitor cells
	reaction_IL6_dissociation_from_progenitor_cells=compartment_compartment*Function_for_IL6_dissociation_from_progenitor_cells(global_par_K_r, x(5));

% Reaction: id = IL6_binding_to_differentiated_cells, name = IL6 binding to differentiated cells
	reaction_IL6_binding_to_differentiated_cells=compartment_compartment*Function_for_IL6_binding_to_differentiated_cells(global_par_K_f, x(7), x(10));

% Reaction: id = IL6_dissociation_from_differentiated_cells, name = IL6 dissociation from differentiated cells
	reaction_IL6_dissociation_from_differentiated_cells=compartment_compartment*Function_for_IL6_dissociation_from_differentiated_cells(x(6), global_par_K_r);

% Reaction: id = IL6_natural_decay, name = IL6 natural decay
	reaction_IL6_natural_decay=compartment_compartment*Function_for_IL6_natural_decay(global_par_lambda, x(7));

% Reaction: id = IL6_Production_by_tumor_cells, name = IL6 Production by tumor cells
	reaction_IL6_Production_by_tumor_cells=compartment_compartment*Function_for_IL6_Production_by_tumor_cells(global_par_rho, x(1), x(3), x(4));

% Reaction: id = Recycling_of_Receptors_S, name = Recycling of Receptors_S
	reaction_Recycling_of_Receptors_S=compartment_compartment*Function_for_recycling_of_Receptor_S(global_par_K_p, x(2));

% Reaction: id = Recycling_of_Receptors_E, name = Recycling of Receptors_E
	reaction_Recycling_of_Receptors_E=compartment_compartment*Function_for_recycling_of_Receptor_E(global_par_K_p, x(5));

% Reaction: id = Recycling_of_Receptors_D, name = Recycling of Receptors_D
	reaction_Recycling_of_Receptors_D=compartment_compartment*Function_for_recycling_of_Receptor_D(global_par_K_p, x(6));

% Reaction: id = Generation_of_new_R_S_via_cell_proliferation, name = Generation of new R_S via cell proliferation
	reaction_Generation_of_new_R_S_via_cell_proliferation=compartment_compartment*Function_for_Generation_of_new_R_S_via_cell_proliferation(global_par_R_Ts, global_par_P_phiS);

% Reaction: id = Generation_of_new_R_E_via_cell_proliferation, name = Generation of new R_E via cell proliferation
	reaction_Generation_of_new_R_E_via_cell_proliferation=compartment_compartment*Function_for_Generation_of_new_R_E_via_cell_proliferation(global_par_R_Te, global_par_P_etaE);

% Reaction: id = Generation_of_new_R_D_via_cell_proliferation, name = Generation of new R_D via cell proliferation
	reaction_Generation_of_new_R_D_via_cell_proliferation=compartment_compartment*Function_for_Generation_of_new_R_D_via_cell_proliferation(global_par_R_Td, global_par_P_DD);

% Reaction: id = Loss_of_Receptors_S__via_cell_death, name = Loss of Receptors_S  via cell death
	reaction_Loss_of_Receptors_S__via_cell_death=compartment_compartment*Function_for_Loss_of_RS_via_cell_death(x(8), global_par_R_Ts, global_par_D_phiS, x(2));

% Reaction: id = Loss_of_Receptors_E_via_cell_death, name = Loss of Receptors_E via cell death
	reaction_Loss_of_Receptors_E_via_cell_death=compartment_compartment*Function_for_Loss_of_RE_via_cell_death(x(9), global_par_R_Te, global_par_D_etaE, x(5));

% Reaction: id = Loss_of_Receptors_D_via_cell_death, name = Loss of Receptors_D via cell death
	reaction_Loss_of_Receptors_D_via_cell_death=compartment_compartment*Function_for_Loss_of_RD_via_cell_death(x(10), global_par_R_Td, global_par_D_DD, x(6));

% Reaction: id = Loss_of_C_S_via_cell_death, name = Loss of C_S via cell death
	reaction_Loss_of_C_S_via_cell_death=compartment_compartment*Function_for_Loss_of_C_S_via_cell_death(x(2), global_par_R_Ts, global_par_D_phiS, x(8));

% Reaction: id = Loss_of_C_E_via_cell_death, name = Loss of C_E via cell death
	reaction_Loss_of_C_E_via_cell_death=compartment_compartment*Function_for_Loss_of_C_E_via_cell_death(x(5), global_par_R_Te, global_par_D_etaE, x(9));

% Reaction: id = Loss_of_C_D_via_cell_death, name = Loss of C_D via cell death
	reaction_Loss_of_C_D_via_cell_death=compartment_compartment*Function_for_Loss_of_C_D_via_cell_death(x(6), global_par_R_Td, global_par_D_DD, x(10));

% Reaction: id = IL6_binding_to_R_S, name = IL6 binding to R_S
	reaction_IL6_binding_to_R_S=compartment_compartment*Function_for_IL6_binding_to_stem_cells(global_par_K_f, x(7), x(8));

% Reaction: id = IL6_binding_to_R_E, name = IL6 binding to R_E
	reaction_IL6_binding_to_R_E=compartment_compartment*Function_for_IL6_binding_to_progenitor_cells(global_par_K_f, x(7), x(9));

% Reaction: id = IL6_binding_to_R_D, name = IL6 binding to R_D
	reaction_IL6_binding_to_R_D=compartment_compartment*Function_for_IL6_binding_to_differentiated_cells(global_par_K_f, x(7), x(10));

	xdot=zeros(11,1);
	
% Species:   id = Cancer_Stem_Cell_S, name = Cancer Stem Cell S, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_Cancer_Stem_cell_S_self_renewal) + (-1.0 * reaction_Cancer_Stem_Cell_S_death));
	
% Species:   id = IL_6__Cell_bound_IL_6R_complex_on_S, name = IL-6, Cell bound IL-6R complex on S, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*((-1.0 * reaction_IL6_dissociation_from_stem_cells) + (-1.0 * reaction_Recycling_of_Receptors_S) + (-1.0 * reaction_Loss_of_C_S_via_cell_death) + ( 1.0 * reaction_IL6_binding_to_R_S));
	
% Species:   id = Progenitor_tumor_cell_E, name = Progenitor tumor cell E, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_Amplified_Stem_Cell_differentiation) + (-1.0 * reaction_Progenitor_Cell_E_differentiation) + (-1.0 * reaction_Progenitor_Cell_E_death));
	
% Species:   id = Differentiated_tumor_cell_D, name = Differentiated tumor cell D, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_Progenitor_Cell_differentiation_form_D) + (-1.0 * reaction_Differentiated_Cell_D_death));
	
% Species:   id = IL_6__Cell_bound_IL_6R_complex_on_E, name = IL-6, Cell bound IL-6R complex on E, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*((-1.0 * reaction_IL6_dissociation_from_progenitor_cells) + (-1.0 * reaction_Recycling_of_Receptors_E) + (-1.0 * reaction_Loss_of_C_E_via_cell_death) + ( 1.0 * reaction_IL6_binding_to_R_E));
	
% Species:   id = IL_6__Cell_bound_IL_6R_complex_on_D, name = IL-6, Cell bound IL-6R complex on D, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*((-1.0 * reaction_IL6_dissociation_from_differentiated_cells) + (-1.0 * reaction_Recycling_of_Receptors_D) + (-1.0 * reaction_Loss_of_C_D_via_cell_death) + ( 1.0 * reaction_IL6_binding_to_R_D));
	
% Species:   id = IL_6__L, name = IL-6 (L), affected by kineticLaw
	xdot(7) = (1/(compartment_compartment))*((-1.0 * reaction_IL6_binding_to_stem_cells) + ( 1.0 * reaction_IL6_dissociation_from_stem_cells) + (-1.0 * reaction_IL6_binding_to_progenitor_cells) + ( 1.0 * reaction_IL6_dissociation_from_progenitor_cells) + (-1.0 * reaction_IL6_binding_to_differentiated_cells) + ( 1.0 * reaction_IL6_dissociation_from_differentiated_cells) + (-1.0 * reaction_IL6_natural_decay) + ( 1.0 * reaction_IL6_Production_by_tumor_cells));
	
% Species:   id = IL_6R_on_S, name = IL-6R on S, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment))*((-1.0 * reaction_IL6_binding_to_stem_cells) + ( 1.0 * reaction_IL6_dissociation_from_stem_cells) + ( 1.0 * reaction_Recycling_of_Receptors_S) + ( 1.0 * reaction_Generation_of_new_R_S_via_cell_proliferation) + (-1.0 * reaction_Loss_of_Receptors_S__via_cell_death));
	
% Species:   id = IL_6R_on_E, name = IL-6R on E, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment))*((-1.0 * reaction_IL6_binding_to_progenitor_cells) + ( 1.0 * reaction_IL6_dissociation_from_progenitor_cells) + ( 1.0 * reaction_Recycling_of_Receptors_E) + ( 1.0 * reaction_Generation_of_new_R_E_via_cell_proliferation) + (-1.0 * reaction_Loss_of_Receptors_E_via_cell_death));
	
% Species:   id = IL_6R_on_D, name = IL-6R on D, affected by kineticLaw
	xdot(10) = (1/(compartment_compartment))*((-1.0 * reaction_IL6_binding_to_differentiated_cells) + ( 1.0 * reaction_IL6_dissociation_from_differentiated_cells) + ( 1.0 * reaction_Recycling_of_Receptors_D) + ( 1.0 * reaction_Generation_of_new_R_D_via_cell_proliferation) + (-1.0 * reaction_Loss_of_Receptors_D_via_cell_death));
	
% Species:   id = tumor, name = tumor, involved in a rule 	xdot(11) = x(11);
end

function z=Function_for_S_self_renewal(alpha_S,P_S,S), z=(alpha_S*P_S*S);end

function z=Function_for_S_death(delta_S,S,gamma_S,phi_S), z=(delta_S*S/(1+gamma_S*phi_S));end

function z=Function_for_amplified_S_differentiation(A_in,alpha_S,P_S,S), z=(A_in*alpha_S*(1-P_S)*S);end

function z=Function_for_Progenitor_Cell_E_differentiation(alpha_E,E), z=(alpha_E*E);end

function z=Function_for_Progenitor_Cell_E_death(delta_E,E,gamma_E,phi_E), z=(delta_E*E/(1+gamma_E*phi_E));end

function z=Function_for_Progenitor_Cell_E_differentiation_form_D(A_out,alpha_E,E), z=(A_out*alpha_E*E);end

function z=Function_for_Differentiated_cell_D_death(delta_D,D,gamma_D,phi_D), z=(delta_D*D/(1+gamma_D*phi_D));end

function z=Function_for_IL6_binding_to_stem_cells(k_f,L,R_S), z=(k_f*L*R_S);end

function z=Function_for_IL6_dissociation_from_stem_cells(K_r,C_S), z=(K_r*C_S);end

function z=Function_for_IL6_binding_to_progenitor_cells(K_f,L,R_E), z=(K_f*L*R_E);end

function z=Function_for_IL6_dissociation_from_progenitor_cells(K_r,C_E), z=(K_r*C_E);end

function z=Function_for_IL6_binding_to_differentiated_cells(K_f,L,R_D), z=(K_f*L*R_D);end

function z=Function_for_IL6_dissociation_from_differentiated_cells(C_D,K_r), z=(K_r*C_D);end

function z=Function_for_IL6_natural_decay(lambda_L,L), z=(lambda_L*L);end

function z=Function_for_IL6_Production_by_tumor_cells(rho,S,E,D), z=(rho*(S+E+D));end

function z=Function_for_recycling_of_Receptor_S(K_p,C_S), z=(K_p*C_S);end

function z=Function_for_recycling_of_Receptor_E(K_P,C_E), z=(K_P*C_E);end

function z=Function_for_recycling_of_Receptor_D(K_p,C_D), z=(K_p*C_D);end

function z=Function_for_Generation_of_new_R_S_via_cell_proliferation(R_Ts,P_phiS), z=(R_Ts*P_phiS);end

function z=Function_for_Generation_of_new_R_E_via_cell_proliferation(R_Te,P_etaE), z=(R_Te*P_etaE);end

function z=Function_for_Generation_of_new_R_D_via_cell_proliferation(R_Td,P_DD), z=(R_Td*P_DD);end

function z=Function_for_Loss_of_RS_via_cell_death(R_S,R_Ts,D_phiS,C_S), z=(R_S*R_Ts*D_phiS/(R_S+C_S));end

function z=Function_for_Loss_of_RE_via_cell_death(R_E,R_Te,D_etaE,C_E), z=(R_E*R_Te*D_etaE/(R_E+C_E));end

function z=Function_for_Loss_of_RD_via_cell_death(R_D,R_Td,D_DD,C_D), z=(R_D*R_Td*D_DD/(R_D+C_D));end

function z=Function_for_Loss_of_C_S_via_cell_death(C_S,R_Ts,D_phiS,R_S), z=(C_S*R_Ts*D_phiS/(R_S+C_S));end

function z=Function_for_Loss_of_C_E_via_cell_death(C_E,R_Te,D_etaE,R_E), z=(C_E*R_Te*D_etaE/(R_E+C_E));end

function z=Function_for_Loss_of_C_D_via_cell_death(C_D,R_Td,D_DD,R_D), z=(C_D*R_Td*D_DD/(R_D+C_D));end

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


