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
% Model name = Hancioglu2007 - Human Immune Response to Influenza A virus Infection
%
% is http://identifiers.org/biomodels.db/MODEL1808280004
% is http://identifiers.org/biomodels.db/BIOMD0000000711
%


function main()
%Initial conditions vector
	x0=zeros(11,1);
	x0(1) = 0.01;
	x0(2) = 1.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 1.0;
	x0(8) = 1.0;
	x0(9) = 1.0;
	x0(10) = 0.1;
	x0(11) = 0.0;


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

% Compartment: id = Respiratory_tract_mucosa, name = Respiratory tract mucosa, constant
	compartment_Respiratory_tract_mucosa=1.0;
% Parameter:   id =  gammaV, name = gammaV
	global_par_gammaV=510.0;
% Parameter:   id =  gammaVA, name = gammaVA
	global_par_gammaVA=619.2;
% Parameter:   id =  gammaVH, name = gammaVH
	global_par_gammaVH=1.02;
% Parameter:   id =  alphaV, name = alphaV
	global_par_alphaV=1.7;
% Parameter:   id =  aV1, name = aV1
	global_par_aV1=100.0;
% Parameter:   id =  aV2, name = aV2
	global_par_aV2=23000.0;
% Parameter:   id =  bHD, name = bHD
	global_par_bHD=4.0;
% Parameter:   id =  aR, name = aR
	global_par_aR=1.0;
% Parameter:   id =  gammaHV, name = gammaHV
	global_par_gammaHV=0.34;
% Parameter:   id =  bHF, name = bHF
	global_par_bHF=0.01;
% Parameter:   id =  bIE, name = bIE
	global_par_bIE=0.066;
% Parameter:   id =  aI, name = aI
	global_par_aI=1.5;
% Parameter:   id =  bMD, name = bMD
	global_par_bMD=1.0;
% Parameter:   id =  bMV, name = bMV
	global_par_bMV=0.0037;
% Parameter:   id =  aM, name = aM
	global_par_aM=1.0;
% Parameter:   id =  bF, name = bF
	global_par_bF=250000.0;
% Parameter:   id =  cF, name = cF
	global_par_cF=2000.0;
% Parameter:   id =  bFH, name = bFH
	global_par_bFH=17.0;
% Parameter:   id =  aF, name = aF
	global_par_aF=8.0;
% Parameter:   id =  bEM, name = bEM
	global_par_bEM=8.3;
% Parameter:   id =  bEI, name = bEI
	global_par_bEI=2.72;
% Parameter:   id =  aE, name = aE
	global_par_aE=0.4;
% Parameter:   id =  bPM, name = bPM
	global_par_bPM=11.5;
% Parameter:   id =  aP, name = aP
	global_par_aP=0.4;
% Parameter:   id =  bA, name = bA
	global_par_bA=0.043;
% Parameter:   id =  gammaAV, name = gammaAV
	global_par_gammaAV=146.25;
% Parameter:   id =  aA, name = aA
	global_par_aA=0.043;
% Parameter:   id =  r, name = r
	global_par_r=3.0E-5;
% assignmentRule: variable = Dead_cells__D
	x(11)=1-x(2)-x(6)-x(3);

% Reaction: id = Secretion_of_Virus__V__by_Infected_epithelial_cells__I, name = Secretion of Virus (V) by Infected epithelial cells (I)
	reaction_Secretion_of_Virus__V__by_Infected_epithelial_cells__I=compartment_Respiratory_tract_mucosa*Function_for_Reaction_1__2(global_par_gammaV, x(3));

% Reaction: id = Neutralization_of_Virus__V__by_Antibody__A, name = Neutralization of Virus (V) by Antibody (A)
	reaction_Neutralization_of_Virus__V__by_Antibody__A=compartment_Respiratory_tract_mucosa*Function_for_Reaction_2__2(global_par_gammaVA, x(10), x(9), x(1));

% Reaction: id = Adsorption_of_Virus__V__by_Healthy_epithelial_cells__H, name = Adsorption of Virus (V) by Healthy epithelial cells (H)
	reaction_Adsorption_of_Virus__V__by_Healthy_epithelial_cells__H=compartment_Respiratory_tract_mucosa*Function_for_Reaction_3__2(global_par_gammaVH, x(2), x(1));

% Reaction: id = Non_Specific_Removal_of_Virus__V___alphaV, name = Non-Specific Removal of Virus (V) [alphaV]
	reaction_Non_Specific_Removal_of_Virus__V___alphaV=compartment_Respiratory_tract_mucosa*global_par_alphaV*x(1);

% Reaction: id = Non_Specific_Removal_of_Virus__V___aV1_aV2, name = Non-Specific Removal of Virus (V) [aV1 aV2]
	reaction_Non_Specific_Removal_of_Virus__V___aV1_aV2=compartment_Respiratory_tract_mucosa*Function_for_Reaction_5__1(global_par_aV1, x(1), global_par_aV2);

% Reaction: id = Regeneration_of_Healthy_Epithelial_cells__H, name = Regeneration of Healthy Epithelial cells (H)
	reaction_Regeneration_of_Healthy_Epithelial_cells__H=compartment_Respiratory_tract_mucosa*Function_for_Reaction_6__1(global_par_bHD, x(11), x(2), x(6));

% Reaction: id = R_virus_resistant_state_decay, name = R virus resistant state decay
	reaction_R_virus_resistant_state_decay=compartment_Respiratory_tract_mucosa*global_par_aR*x(6);

% Reaction: id = Infection_of_Healthy_Epithelial_cells_by__V, name = Infection of Healthy Epithelial cells by (V)
	reaction_Infection_of_Healthy_Epithelial_cells_by__V=compartment_Respiratory_tract_mucosa*Function_for_Reaction_8(x(1), x(2), global_par_gammaHV);

% Reaction: id = H_virus_resistant_state_induction, name = H virus resistant state induction
	reaction_H_virus_resistant_state_induction=compartment_Respiratory_tract_mucosa*Function_for_Reaction_9__1(global_par_bHF, x(5), x(2));

% Reaction: id = Degradation_of_Infected_Epithelial_cells___E, name = Degradation of Infected Epithelial cells  [E]
	reaction_Degradation_of_Infected_Epithelial_cells___E=compartment_Respiratory_tract_mucosa*Function_for_Reaction_10(global_par_bIE, x(7), x(3));

% Reaction: id = Degradation_of_Infected_Epithelial_cells___Cytopathicity_of_V, name = Degradation of Infected Epithelial cells  [Cytopathicity of V]
	reaction_Degradation_of_Infected_Epithelial_cells___Cytopathicity_of_V=compartment_Respiratory_tract_mucosa*global_par_aI*x(3);

% Reaction: id = Stimulation_of_APC_cells__M__by_Dead_cells__D__and_Virus__V, name = Stimulation of APC cells (M) by Dead cells (D) and Virus (V)
	reaction_Stimulation_of_APC_cells__M__by_Dead_cells__D__and_Virus__V=compartment_Respiratory_tract_mucosa*Function_for_Reaction_12(global_par_bMD, x(11), global_par_bMV, x(1), x(4));

% Reaction: id = Stimulates_State_loss_of_APC_cells__M, name = Stimulates State loss of APC cells (M)
	reaction_Stimulates_State_loss_of_APC_cells__M=compartment_Respiratory_tract_mucosa*global_par_aM*x(4);

% Reaction: id = Synthesis_of_Interferons__F___M, name = Synthesis of Interferons (F) [M]
	reaction_Synthesis_of_Interferons__F___M=compartment_Respiratory_tract_mucosa*Function_for_Reaction_14(global_par_bF, x(4));

% Reaction: id = Synthesis_of_Interferons__F___I, name = Synthesis of Interferons (F) [I]
	reaction_Synthesis_of_Interferons__F___I=compartment_Respiratory_tract_mucosa*Function_for_Reaction_15(global_par_cF, x(3));

% Reaction: id = Binding_of_Healthy_epithelial_cells__H__and_Interferons__F, name = Binding of Healthy epithelial cells (H) and Interferons (F)
	reaction_Binding_of_Healthy_epithelial_cells__H__and_Interferons__F=compartment_Respiratory_tract_mucosa*Function_for_Reaction_16(global_par_bFH, x(2), x(5));

% Reaction: id = Degradation_of_Interferons__F, name = Degradation of Interferons (F)
	reaction_Degradation_of_Interferons__F=compartment_Respiratory_tract_mucosa*global_par_aF*x(5);

% Reaction: id = Stimulation_of_Effector_cells__E___M, name = Stimulation of Effector cells (E) [M]
	reaction_Stimulation_of_Effector_cells__E___M=compartment_Respiratory_tract_mucosa*Function_for_Reaction_18(global_par_bEM, x(4), x(7));

% Reaction: id = Degradation_of_Effector_cells__E___Mod_I, name = Degradation of Effector cells (E) [Mod=I]
	reaction_Degradation_of_Effector_cells__E___Mod_I=compartment_Respiratory_tract_mucosa*Function_for_Reaction_19(global_par_bEI, x(3), x(7));

% Reaction: id = Degradation_of_Effector_cells__E, name = Degradation of Effector cells (E)	% Local Parameter:   id =  aE, name = aE
	reaction_Degradation_of_Effector_cells__E_aE=0.1;

	reaction_Degradation_of_Effector_cells__E=compartment_Respiratory_tract_mucosa*Function_for_Reaction_20(reaction_Degradation_of_Effector_cells__E_aE, x(7));

% Reaction: id = Synthesis_of_Plasma_cells__P___Mod_M, name = Synthesis of Plasma cells (P) [Mod=M]
	reaction_Synthesis_of_Plasma_cells__P___Mod_M=compartment_Respiratory_tract_mucosa*Function_for_Reaction_21(x(4), x(8), global_par_bPM);

% Reaction: id = Degradation_of_Plasma_cells__P, name = Degradation of Plasma cells (P)
	reaction_Degradation_of_Plasma_cells__P=compartment_Respiratory_tract_mucosa*Function_for_Reaction_22(global_par_aP, x(8));

% Reaction: id = Synthesis_of_Antibody__A___Mod_P, name = Synthesis of Antibody (A) [Mod=P]
	reaction_Synthesis_of_Antibody__A___Mod_P=compartment_Respiratory_tract_mucosa*Function_for_Reaction_23(global_par_bA, x(8));

% Reaction: id = Binding_of_Antibody__A__and_Virus__V, name = Binding of Antibody (A) and Virus (V)
	reaction_Binding_of_Antibody__A__and_Virus__V=compartment_Respiratory_tract_mucosa*Function_for_Reaction_24(global_par_gammaAV, x(10), x(9), x(1));

% Reaction: id = Degradation_of_Antibody__A, name = Degradation of Antibody (A)
	reaction_Degradation_of_Antibody__A=compartment_Respiratory_tract_mucosa*global_par_aA*x(9);

% Reaction: id = Antigenic_Compatibility_variable, name = Antigenic Compatibility variable
	reaction_Antigenic_Compatibility_variable=compartment_Respiratory_tract_mucosa*Function_for_Reaction_26(global_par_r, x(8), x(10));

%Event: id=Event_to_keep_viral_load_non_negative
	event_Event_to_keep_viral_load_non_negative=x(1) < 0;

	if(event_Event_to_keep_viral_load_non_negative) 
		x(1)=0;
	end

	xdot=zeros(11,1);
	
% Species:   id = Viral_Load__V, name = Viral Load (V), affected by kineticLaw
	xdot(1) = (1/(compartment_Respiratory_tract_mucosa))*(( 1.0 * reaction_Secretion_of_Virus__V__by_Infected_epithelial_cells__I) + (-1.0 * reaction_Neutralization_of_Virus__V__by_Antibody__A) + (-1.0 * reaction_Adsorption_of_Virus__V__by_Healthy_epithelial_cells__H) + (-1.0 * reaction_Non_Specific_Removal_of_Virus__V___alphaV) + (-1.0 * reaction_Non_Specific_Removal_of_Virus__V___aV1_aV2));
	
% Species:   id = Healthy_Epithelial_cells__H, name = Healthy Epithelial cells (H), affected by kineticLaw
	xdot(2) = (1/(compartment_Respiratory_tract_mucosa))*(( 1.0 * reaction_Regeneration_of_Healthy_Epithelial_cells__H) + ( 1.0 * reaction_R_virus_resistant_state_decay) + (-1.0 * reaction_Infection_of_Healthy_Epithelial_cells_by__V) + (-1.0 * reaction_H_virus_resistant_state_induction));
	
% Species:   id = Infected_Epithelial_cells__I, name = Infected Epithelial cells (I), affected by kineticLaw
	xdot(3) = (1/(compartment_Respiratory_tract_mucosa))*(( 1.0 * reaction_Infection_of_Healthy_Epithelial_cells_by__V) + (-1.0 * reaction_Degradation_of_Infected_Epithelial_cells___E) + (-1.0 * reaction_Degradation_of_Infected_Epithelial_cells___Cytopathicity_of_V));
	
% Species:   id = APC_cells__M, name = APC cells (M), affected by kineticLaw
	xdot(4) = (1/(compartment_Respiratory_tract_mucosa))*(( 1.0 * reaction_Stimulation_of_APC_cells__M__by_Dead_cells__D__and_Virus__V) + (-1.0 * reaction_Stimulates_State_loss_of_APC_cells__M));
	
% Species:   id = Interferons__F, name = Interferons (F), affected by kineticLaw
	xdot(5) = (1/(compartment_Respiratory_tract_mucosa))*(( 1.0 * reaction_Synthesis_of_Interferons__F___M) + ( 1.0 * reaction_Synthesis_of_Interferons__F___I) + (-1.0 * reaction_Binding_of_Healthy_epithelial_cells__H__and_Interferons__F) + (-1.0 * reaction_Degradation_of_Interferons__F));
	
% Species:   id = Resistant_cells__R, name = Resistant cells (R), affected by kineticLaw
	xdot(6) = (1/(compartment_Respiratory_tract_mucosa))*((-1.0 * reaction_R_virus_resistant_state_decay) + ( 1.0 * reaction_H_virus_resistant_state_induction));
	
% Species:   id = Effector_cells__E, name = Effector cells (E), affected by kineticLaw
	xdot(7) = (1/(compartment_Respiratory_tract_mucosa))*(( 1.0 * reaction_Stimulation_of_Effector_cells__E___M) + (-1.0 * reaction_Degradation_of_Effector_cells__E___Mod_I) + (-1.0 * reaction_Degradation_of_Effector_cells__E));
	
% Species:   id = Plasma_cells__P, name = Plasma cells (P), affected by kineticLaw
	xdot(8) = (1/(compartment_Respiratory_tract_mucosa))*(( 1.0 * reaction_Synthesis_of_Plasma_cells__P___Mod_M) + (-1.0 * reaction_Degradation_of_Plasma_cells__P));
	
% Species:   id = Antibodies__A, name = Antibodies (A), affected by kineticLaw
	xdot(9) = (1/(compartment_Respiratory_tract_mucosa))*(( 1.0 * reaction_Synthesis_of_Antibody__A___Mod_P) + (-1.0 * reaction_Binding_of_Antibody__A__and_Virus__V) + (-1.0 * reaction_Degradation_of_Antibody__A));
	
% Species:   id = Antigenic_compatibility__S, name = Antigenic compatibility (S), affected by kineticLaw
	xdot(10) = (1/(compartment_Respiratory_tract_mucosa))*(( 1.0 * reaction_Antigenic_Compatibility_variable));
	
% Species:   id = Dead_cells__D, name = Dead cells (D), involved in a rule 	xdot(11) = x(11);
end

function z=Function_for_Reaction_1__2(gammaV,I), z=(gammaV*I);end

function z=Function_for_Reaction_2__2(gammaVA,S,A,V), z=(gammaVA*S*A*V);end

function z=Function_for_Reaction_3__2(gammaVH,H,V), z=(gammaVH*H*V);end

function z=Function_for_Reaction_5__1(aV1,V,aV2), z=(aV1*V/(1+aV2*V));end

function z=Function_for_Reaction_6__1(bHD,D,H,R), z=(bHD*D*(H+R));end

function z=Function_for_Reaction_8(V,H,gammaHV), z=(gammaHV*V*H);end

function z=Function_for_Reaction_9__1(bHF,F,H), z=(bHF*F*H);end

function z=Function_for_Reaction_10(bIE,E,I), z=(bIE*E*I);end

function z=Function_for_Reaction_12(bMD,D,bMV,V,M), z=((bMD*D+bMV*V)*(1-M));end

function z=Function_for_Reaction_14(bF,M), z=(bF*M);end

function z=Function_for_Reaction_15(cF,I), z=(cF*I);end

function z=Function_for_Reaction_16(bFH,H,F), z=(bFH*H*F);end

function z=Function_for_Reaction_18(bEM,M,E), z=(bEM*M*E);end

function z=Function_for_Reaction_19(bEI,I,E), z=(bEI*I*E);end

function z=Function_for_Reaction_20(aE,E), z=(aE*(E-1));end

function z=Function_for_Reaction_21(M,P,bPM), z=(bPM*M*P);end

function z=Function_for_Reaction_22(aP,P), z=(aP*(P-1));end

function z=Function_for_Reaction_23(bA,P), z=(bA*P);end

function z=Function_for_Reaction_24(gammaAV,S,A,V), z=(gammaAV*S*A*V);end

function z=Function_for_Reaction_26(r,P,S), z=(r*P*(1-S));end

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


