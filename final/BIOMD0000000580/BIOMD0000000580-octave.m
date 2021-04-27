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
% Model name = Sonntag2012 - mTOR model - IRS dependent regulation of AMPK by insulin
%
% is http://identifiers.org/biomodels.db/MODEL1506230002
% is http://identifiers.org/biomodels.db/BIOMD0000000580
% isDescribedBy http://identifiers.org/pubmed/22452783
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000581
%


function main()
%Initial conditions vector
	x0=zeros(39,1);
	x0(1) = 16.5607;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 18.9345;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 20.5064;
	x0(8) = 0.0;
	x0(9) = 21.4109;
	x0(10) = 0.0;
	x0(11) = 12.2517;
	x0(12) = 0.0;
	x0(13) = 25.14;
	x0(14) = 0.0;
	x0(15) = 18.7959;
	x0(16) = 0.0;
	x0(17) = 14.301;
	x0(18) = 0.0;
	x0(19) = 13.5613;
	x0(20) = 0.0;
	x0(21) = 17.55;
	x0(22) = 0.0;
	x0(23) = 14.9175;
	x0(24) = 0.0;
	x0(25) = 18.9345;
	x0(26) = 0.0;
	x0(27) = 10.0;
	x0(28) = 10.0;
	x0(29) = 0.0;
	x0(30) = 0.0;
	x0(31) = 0.0;
	x0(32) = 0.0;
	x0(33) = 0.0;
	x0(34) = 0.0;
	x0(35) = 0.0;
	x0(36) = 0.0;
	x0(37) = 0.0;
	x0(38) = 0.0;
	x0(39) = 0.0;


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
% Parameter:   id =  IR_beta_phosphorylation_by_Insulin, name = IR_beta_phosphorylation_by_Insulin
	global_par_IR_beta_phosphorylation_by_Insulin=0.124273166818913;
% Parameter:   id =  IR_beta_pY1146_dephosphorylation, name = IR_beta_pY1146_dephosphorylation
	global_par_IR_beta_pY1146_dephosphorylation=0.396235078561935;
% Parameter:   id =  IR_beta_ready, name = IR_beta_ready
	global_par_IR_beta_ready=0.0532769862975496;
% Parameter:   id =  IRS1_phosphorylation_by_IR_beta_pY1146, name = IRS1_phosphorylation_by_IR_beta_pY1146
	global_par_IRS1_phosphorylation_by_IR_beta_pY1146=0.00491598674814158;
% Parameter:   id =  IRS1_p_phosphorylation_by_p70S6K_pT389, name = IRS1_p_phosphorylation_by_p70S6K_pT389
	global_par_IRS1_p_phosphorylation_by_p70S6K_pT389=1682.74838380846;
% Parameter:   id =  IRS1_pS636_dephosphorylation, name = IRS1_pS636_dephosphorylation
	global_par_IRS1_pS636_dephosphorylation=0.0130499987407289;
% Parameter:   id =  AMPK_T172_phosphorylation, name = AMPK_T172_phosphorylation
	global_par_AMPK_T172_phosphorylation=9.79765849087796;
% Parameter:   id =  AMPK_pT172_dephosphorylation, name = AMPK_pT172_dephosphorylation
	global_par_AMPK_pT172_dephosphorylation=0.0107214736590526;
% Parameter:   id =  Akt_pT308_dephosphorylation, name = Akt_pT308_dephosphorylation
	global_par_Akt_pT308_dephosphorylation=0.00335544587646129;
% Parameter:   id =  Akt_pS473_dephosphorylation, name = Akt_pS473_dephosphorylation
	global_par_Akt_pS473_dephosphorylation=0.00640215551178824;
% Parameter:   id =  Akt_S473_phosphorylation_by_mTORC2_pS2481_n_IRS1_p, name = Akt_S473_phosphorylation_by_mTORC2_pS2481_n_IRS1_p
	global_par_Akt_S473_phosphorylation_by_mTORC2_pS2481_n_IRS1_p=13.1441708920036;
% Parameter:   id =  Akt_T308_phosphorylation_by_IRS1_p, name = Akt_T308_phosphorylation_by_IRS1_p
	global_par_Akt_T308_phosphorylation_by_IRS1_p=6.91810637938108;
% Parameter:   id =  mTORC1_pS2448_dephosphorylation_by_TSC1_TSC2_pS1387, name = mTORC1_pS2448_dephosphorylation_by_TSC1_TSC2_pS1387
	global_par_mTORC1_pS2448_dephosphorylation_by_TSC1_TSC2_pS1387=0.0106651971237991;
% Parameter:   id =  mTORC1_S2448_activation_by_Amino_Acids, name = mTORC1_S2448_activation_by_Amino_Acids
	global_par_mTORC1_S2448_activation_by_Amino_Acids=0.00438915524637669;
% Parameter:   id =  mTORC2_pS2481_dephosphorylation, name = mTORC2_pS2481_dephosphorylation
	global_par_mTORC2_pS2481_dephosphorylation=0.0183734532316308;
% Parameter:   id =  mTORC2_S2481_phosphorylation_by_PI3K_variant_p, name = mTORC2_S2481_phosphorylation_by_PI3K_variant_p
	global_par_mTORC2_S2481_phosphorylation_by_PI3K_variant_p=0.37535264623552;
% Parameter:   id =  p70S6K_pT389_dephosphorylation, name = p70S6K_pT389_dephosphorylation
	global_par_p70S6K_pT389_dephosphorylation=0.0113511588360422;
% Parameter:   id =  p70S6K_T389_phosphorylation_by_mTORC1_pS2448, name = p70S6K_T389_phosphorylation_by_mTORC1_pS2448
	global_par_p70S6K_T389_phosphorylation_by_mTORC1_pS2448=0.00184042775983938;
% Parameter:   id =  PRAS40_pS183_dephosphorylation, name = PRAS40_pS183_dephosphorylation
	global_par_PRAS40_pS183_dephosphorylation=2.33014390064544;
% Parameter:   id =  PRAS40_pT246_dephosphorylation, name = PRAS40_pT246_dephosphorylation
	global_par_PRAS40_pT246_dephosphorylation=1.60512543108081;
% Parameter:   id =  PRAS40_S183_phosphorylation_by_mTORC1_pS2448, name = PRAS40_S183_phosphorylation_by_mTORC1_pS2448
	global_par_PRAS40_S183_phosphorylation_by_mTORC1_pS2448=0.187621138099883;
% Parameter:   id =  PRAS40_T246_phosphorylation_by_Akt_pT308, name = PRAS40_T246_phosphorylation_by_Akt_pT308
	global_par_PRAS40_T246_phosphorylation_by_Akt_pT308=0.137729484208433;
% Parameter:   id =  TSC1_TSC2_S1387_phosphorylation_by_AMPK_pT172, name = TSC1_TSC2_S1387_phosphorylation_by_AMPK_pT172
	global_par_TSC1_TSC2_S1387_phosphorylation_by_AMPK_pT172=0.036558856656738;
% Parameter:   id =  TSC1_TSC2_T1462_phosphorylation_by_Akt_pT308, name = TSC1_TSC2_T1462_phosphorylation_by_Akt_pT308
	global_par_TSC1_TSC2_T1462_phosphorylation_by_Akt_pT308=0.0177561800881718;
% Parameter:   id =  PI3K_variant_p_dephosphorylation, name = PI3K_variant_p_dephosphorylation
	global_par_PI3K_variant_p_dephosphorylation=10.0;
% Parameter:   id =  PI3K_variant_phosphorylation_by_IR_beta_pY1146, name = PI3K_variant_phosphorylation_by_IR_beta_pY1146
	global_par_PI3K_variant_phosphorylation_by_IR_beta_pY1146=0.01;
% Parameter:   id =  scale_IR_beta_pY1146_obs, name = scale_IR_beta_pY1146_obs
	global_par_scale_IR_beta_pY1146_obs=1.0;
% Parameter:   id =  scale_IRS1_pS636_obs, name = scale_IRS1_pS636_obs
	global_par_scale_IRS1_pS636_obs=1.0;
% Parameter:   id =  scale_AMPK_pT172_obs, name = scale_AMPK_pT172_obs
	global_par_scale_AMPK_pT172_obs=1.0;
% Parameter:   id =  scale_Akt_pT308_obs, name = scale_Akt_pT308_obs
	global_par_scale_Akt_pT308_obs=1.0;
% Parameter:   id =  scale_Akt_pS473_obs, name = scale_Akt_pS473_obs
	global_par_scale_Akt_pS473_obs=1.0;
% Parameter:   id =  scale_TSC1_TSC2_pS1387_obs, name = scale_TSC1_TSC2_pS1387_obs
	global_par_scale_TSC1_TSC2_pS1387_obs=1.0;
% Parameter:   id =  scale_mTOR_pS2448_obs, name = scale_mTOR_pS2448_obs
	global_par_scale_mTOR_pS2448_obs=1.0;
% Parameter:   id =  scale_mTOR_pS2481_obs, name = scale_mTOR_pS2481_obs
	global_par_scale_mTOR_pS2481_obs=1.0;
% Parameter:   id =  scale_p70S6K_pT389_obs, name = scale_p70S6K_pT389_obs
	global_par_scale_p70S6K_pT389_obs=1.0;
% Parameter:   id =  scale_PRAS40_pT246_obs, name = scale_PRAS40_pT246_obs
	global_par_scale_PRAS40_pT246_obs=1.0;
% Parameter:   id =  scale_PRAS40_pS183_obs, name = scale_PRAS40_pS183_obs
	global_par_scale_PRAS40_pS183_obs=1.0;
% assignmentRule: variable = Amino_Acids
	x(28)=piecewise(0, time < (-1), piecewise(0, time < 0, 10));
% assignmentRule: variable = Akt_pT308_obs
	x(32)=global_par_scale_Akt_pT308_obs*x(10);
% assignmentRule: variable = TSC1_TSC2_pS1387_obs
	x(34)=global_par_scale_TSC1_TSC2_pS1387_obs*x(24);
% assignmentRule: variable = PRAS40_pS183_obs
	x(39)=global_par_scale_PRAS40_pS183_obs*x(22);
% assignmentRule: variable = IR_beta_pY1146_obs
	x(29)=global_par_scale_IR_beta_pY1146_obs*x(2);
% assignmentRule: variable = Insulin
	x(27)=piecewise(0, time < (-1), piecewise(0, time < 0, 10));
% assignmentRule: variable = IRS1_pS636_obs
	x(30)=global_par_scale_IRS1_pS636_obs*x(6);
% assignmentRule: variable = Akt_pS473_obs
	x(33)=global_par_scale_Akt_pS473_obs*x(12);
% assignmentRule: variable = AMPK_pT172_obs
	x(31)=global_par_scale_AMPK_pT172_obs*x(8);
% assignmentRule: variable = mTOR_pS2448_obs
	x(35)=global_par_scale_mTOR_pS2448_obs*x(14);
% assignmentRule: variable = p70S6K_pT389_obs
	x(37)=global_par_scale_p70S6K_pT389_obs*x(18);
% assignmentRule: variable = mTOR_pS2481_obs
	x(36)=global_par_scale_mTOR_pS2481_obs*x(16);
% assignmentRule: variable = PRAS40_pT246_obs
	x(38)=global_par_scale_PRAS40_pT246_obs*x(20);

% Reaction: id = reaction_1, name = IR_beta_phosphorylation_by_Insulin
	reaction_reaction_1=compartment_Cell*function_4_IR_beta_phosphorylation_by_Insulin(x(1), global_par_IR_beta_phosphorylation_by_Insulin, x(27));

% Reaction: id = reaction_2, name = IR_beta_pY1146_dephosphorylation
	reaction_reaction_2=compartment_Cell*global_par_IR_beta_pY1146_dephosphorylation*x(2);

% Reaction: id = reaction_3, name = IR_beta_ready
	reaction_reaction_3=compartment_Cell*global_par_IR_beta_ready*x(3);

% Reaction: id = reaction_4, name = IRS1_phosphorylation_by_IR_beta_pY1146
	reaction_reaction_4=compartment_Cell*function_4_IRS1_phosphorylation_by_IR_beta_pY1146(x(4), global_par_IRS1_phosphorylation_by_IR_beta_pY1146, x(2));

% Reaction: id = reaction_5, name = IRS1_p_phosphorylation_by_p70S6K_pT389
	reaction_reaction_5=compartment_Cell*function_4_IRS1_p_phosphorylation_by_p70S6K_pT389(x(5), global_par_IRS1_p_phosphorylation_by_p70S6K_pT389, x(18));

% Reaction: id = reaction_6, name = IRS1_pS636_dephosphorylation
	reaction_reaction_6=compartment_Cell*global_par_IRS1_pS636_dephosphorylation*x(6);

% Reaction: id = reaction_7, name = AMPK_T172_phosphorylation
	reaction_reaction_7=compartment_Cell*function_4_AMPK_T172_phosphorylation(x(7), global_par_AMPK_T172_phosphorylation, x(5));

% Reaction: id = reaction_8, name = AMPK_pT172_dephosphorylation
	reaction_reaction_8=compartment_Cell*global_par_AMPK_pT172_dephosphorylation*x(8);

% Reaction: id = reaction_9, name = Akt_pT308_dephosphorylation
	reaction_reaction_9=compartment_Cell*global_par_Akt_pT308_dephosphorylation*x(10);

% Reaction: id = reaction_10, name = Akt_pS473_dephosphorylation
	reaction_reaction_10=compartment_Cell*global_par_Akt_pS473_dephosphorylation*x(12);

% Reaction: id = reaction_11, name = Akt_S473_phosphorylation_by_mTORC2_pS2481_n_IRS1_p
	reaction_reaction_11=compartment_Cell*function_4_Akt_S473_phosphorylation_by_mTORC2_pS2481_n_IRS1_p(x(11), global_par_Akt_S473_phosphorylation_by_mTORC2_pS2481_n_IRS1_p, x(5), x(16));

% Reaction: id = reaction_12, name = Akt_T308_phosphorylation_by_IRS1_p
	reaction_reaction_12=compartment_Cell*function_4_Akt_T308_phosphorylation_by_IRS1_p(x(9), global_par_Akt_T308_phosphorylation_by_IRS1_p, x(5));

% Reaction: id = reaction_13, name = mTORC1_pS2448_dephosphorylation_by_TSC1_TSC2_pS1387
	reaction_reaction_13=compartment_Cell*function_4_mTORC1_pS2448_dephosphorylation_by_TSC1_TSC2_pS1387(x(24), x(14), global_par_mTORC1_pS2448_dephosphorylation_by_TSC1_TSC2_pS1387);

% Reaction: id = reaction_14, name = mTORC1_S2448_activation_by_Amino_Acids
	reaction_reaction_14=compartment_Cell*function_4_mTORC1_S2448_activation_by_Amino_Acids(x(28), x(13), global_par_mTORC1_S2448_activation_by_Amino_Acids);

% Reaction: id = reaction_15, name = mTORC2_pS2481_dephosphorylation
	reaction_reaction_15=compartment_Cell*global_par_mTORC2_pS2481_dephosphorylation*x(16);

% Reaction: id = reaction_16, name = mTORC2_S2481_phosphorylation_by_PI3K_variant_p
	reaction_reaction_16=compartment_Cell*function_4_mTORC2_S2481_phosphorylation_by_PI3K_variant_p(x(26), x(15), global_par_mTORC2_S2481_phosphorylation_by_PI3K_variant_p);

% Reaction: id = reaction_17, name = p70S6K_pT389_dephosphorylation
	reaction_reaction_17=compartment_Cell*global_par_p70S6K_pT389_dephosphorylation*x(18);

% Reaction: id = reaction_18, name = p70S6K_T389_phosphorylation_by_mTORC1_pS2448
	reaction_reaction_18=compartment_Cell*function_4_p70S6K_T389_phosphorylation_by_mTORC1_pS2448(x(14), x(17), global_par_p70S6K_T389_phosphorylation_by_mTORC1_pS2448);

% Reaction: id = reaction_19, name = PRAS40_pS183_dephosphorylation
	reaction_reaction_19=compartment_Cell*global_par_PRAS40_pS183_dephosphorylation*x(22);

% Reaction: id = reaction_20, name = PRAS40_pT246_dephosphorylation
	reaction_reaction_20=compartment_Cell*global_par_PRAS40_pT246_dephosphorylation*x(20);

% Reaction: id = reaction_21, name = PRAS40_S183_phosphorylation_by_mTORC1_pS2448
	reaction_reaction_21=compartment_Cell*function_4_PRAS40_S183_phosphorylation_by_mTORC1_pS2448(x(21), global_par_PRAS40_S183_phosphorylation_by_mTORC1_pS2448, x(14));

% Reaction: id = reaction_22, name = PRAS40_T246_phosphorylation_by_Akt_pT308
	reaction_reaction_22=compartment_Cell*function_4_PRAS40_T246_phosphorylation_by_Akt_pT308(x(10), x(19), global_par_PRAS40_T246_phosphorylation_by_Akt_pT308);

% Reaction: id = reaction_23, name = TSC1_TSC2_S1387_phosphorylation_by_AMPK_pT172
	reaction_reaction_23=compartment_Cell*function_4_TSC1_TSC2_S1387_phosphorylation_by_AMPK_pT172(x(8), global_par_TSC1_TSC2_S1387_phosphorylation_by_AMPK_pT172, x(23));

% Reaction: id = reaction_24, name = TSC1_TSC2_T1462_phosphorylation_by_Akt_pT308
	reaction_reaction_24=compartment_Cell*function_4_TSC1_TSC2_T1462_phosphorylation_by_Akt_pT308(x(10), global_par_TSC1_TSC2_T1462_phosphorylation_by_Akt_pT308, x(24));

% Reaction: id = reaction_25, name = PI3K_variant_p_dephosphorylation
	reaction_reaction_25=compartment_Cell*global_par_PI3K_variant_p_dephosphorylation*x(26);

% Reaction: id = reaction_26, name = PI3K_variant_phosphorylation_by_IR_beta_pY1146
	reaction_reaction_26=compartment_Cell*function_4_PI3K_variant_phosphorylation_by_IR_beta_pY1146(x(2), x(25), global_par_PI3K_variant_phosphorylation_by_IR_beta_pY1146);

	xdot=zeros(39,1);
	
% Species:   id = IR_beta, name = IR_beta, affected by kineticLaw
	xdot(1) = (1/(compartment_Cell))*((-1.0 * reaction_reaction_1) + ( 1.0 * reaction_reaction_3));
	
% Species:   id = IR_beta_pY1146, name = IR_beta_pY1146, affected by kineticLaw
	xdot(2) = (1/(compartment_Cell))*(( 1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_2));
	
% Species:   id = IR_beta_refractory, name = IR_beta_refractory, affected by kineticLaw
	xdot(3) = (1/(compartment_Cell))*(( 1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_3));
	
% Species:   id = IRS1, name = IRS1, affected by kineticLaw
	xdot(4) = (1/(compartment_Cell))*((-1.0 * reaction_reaction_4) + ( 1.0 * reaction_reaction_6));
	
% Species:   id = IRS1_p, name = IRS1_p, affected by kineticLaw
	xdot(5) = (1/(compartment_Cell))*(( 1.0 * reaction_reaction_4) + (-1.0 * reaction_reaction_5));
	
% Species:   id = IRS1_pS636, name = IRS1_pS636, affected by kineticLaw
	xdot(6) = (1/(compartment_Cell))*(( 1.0 * reaction_reaction_5) + (-1.0 * reaction_reaction_6));
	
% Species:   id = AMPK, name = AMPK, affected by kineticLaw
	xdot(7) = (1/(compartment_Cell))*((-1.0 * reaction_reaction_7) + ( 1.0 * reaction_reaction_8));
	
% Species:   id = AMPK_pT172, name = AMPK_pT172, affected by kineticLaw
	xdot(8) = (1/(compartment_Cell))*(( 1.0 * reaction_reaction_7) + (-1.0 * reaction_reaction_8));
	
% Species:   id = Akt_T308, name = Akt_T308, affected by kineticLaw
	xdot(9) = (1/(compartment_Cell))*(( 1.0 * reaction_reaction_9) + (-1.0 * reaction_reaction_12));
	
% Species:   id = Akt_pT308, name = Akt_pT308, affected by kineticLaw
	xdot(10) = (1/(compartment_Cell))*((-1.0 * reaction_reaction_9) + ( 1.0 * reaction_reaction_12));
	
% Species:   id = Akt_S473, name = Akt_S473, affected by kineticLaw
	xdot(11) = (1/(compartment_Cell))*(( 1.0 * reaction_reaction_10) + (-1.0 * reaction_reaction_11));
	
% Species:   id = Akt_pS473, name = Akt_pS473, affected by kineticLaw
	xdot(12) = (1/(compartment_Cell))*((-1.0 * reaction_reaction_10) + ( 1.0 * reaction_reaction_11));
	
% Species:   id = mTORC1, name = mTORC1, affected by kineticLaw
	xdot(13) = (1/(compartment_Cell))*(( 1.0 * reaction_reaction_13) + (-1.0 * reaction_reaction_14));
	
% Species:   id = mTORC1_pS2448, name = mTORC1_pS2448, affected by kineticLaw
	xdot(14) = (1/(compartment_Cell))*((-1.0 * reaction_reaction_13) + ( 1.0 * reaction_reaction_14));
	
% Species:   id = mTORC2, name = mTORC2, affected by kineticLaw
	xdot(15) = (1/(compartment_Cell))*(( 1.0 * reaction_reaction_15) + (-1.0 * reaction_reaction_16));
	
% Species:   id = mTORC2_pS2481, name = mTORC2_pS2481, affected by kineticLaw
	xdot(16) = (1/(compartment_Cell))*((-1.0 * reaction_reaction_15) + ( 1.0 * reaction_reaction_16));
	
% Species:   id = p70S6K, name = p70S6K, affected by kineticLaw
	xdot(17) = (1/(compartment_Cell))*(( 1.0 * reaction_reaction_17) + (-1.0 * reaction_reaction_18));
	
% Species:   id = p70S6K_pT389, name = p70S6K_pT389, affected by kineticLaw
	xdot(18) = (1/(compartment_Cell))*((-1.0 * reaction_reaction_17) + ( 1.0 * reaction_reaction_18));
	
% Species:   id = PRAS40_T246, name = PRAS40_T246, affected by kineticLaw
	xdot(19) = (1/(compartment_Cell))*(( 1.0 * reaction_reaction_20) + (-1.0 * reaction_reaction_22));
	
% Species:   id = PRAS40_pT246, name = PRAS40_pT246, affected by kineticLaw
	xdot(20) = (1/(compartment_Cell))*((-1.0 * reaction_reaction_20) + ( 1.0 * reaction_reaction_22));
	
% Species:   id = PRAS40_S183, name = PRAS40_S183, affected by kineticLaw
	xdot(21) = (1/(compartment_Cell))*(( 1.0 * reaction_reaction_19) + (-1.0 * reaction_reaction_21));
	
% Species:   id = PRAS40_pS183, name = PRAS40_pS183, affected by kineticLaw
	xdot(22) = (1/(compartment_Cell))*((-1.0 * reaction_reaction_19) + ( 1.0 * reaction_reaction_21));
	
% Species:   id = TSC1_TSC2_pT1462, name = TSC1_TSC2_pT1462, affected by kineticLaw
	xdot(23) = (1/(compartment_Cell))*((-1.0 * reaction_reaction_23) + ( 1.0 * reaction_reaction_24));
	
% Species:   id = TSC1_TSC2_pS1387, name = TSC1_TSC2_pS1387, affected by kineticLaw
	xdot(24) = (1/(compartment_Cell))*(( 1.0 * reaction_reaction_23) + (-1.0 * reaction_reaction_24));
	
% Species:   id = PI3K_variant, name = PI3K_variant, affected by kineticLaw
	xdot(25) = (1/(compartment_Cell))*(( 1.0 * reaction_reaction_25) + (-1.0 * reaction_reaction_26));
	
% Species:   id = PI3K_variant_p, name = PI3K_variant_p, affected by kineticLaw
	xdot(26) = (1/(compartment_Cell))*((-1.0 * reaction_reaction_25) + ( 1.0 * reaction_reaction_26));
	
% Species:   id = Insulin, name = Insulin, involved in a rule 	xdot(27) = x(27);
	
% Species:   id = Amino_Acids, name = Amino_Acids, involved in a rule 	xdot(28) = x(28);
	
% Species:   id = IR_beta_pY1146_obs, name = IR_beta_pY1146_obs, involved in a rule 	xdot(29) = x(29);
	
% Species:   id = IRS1_pS636_obs, name = IRS1_pS636_obs, involved in a rule 	xdot(30) = x(30);
	
% Species:   id = AMPK_pT172_obs, name = AMPK_pT172_obs, involved in a rule 	xdot(31) = x(31);
	
% Species:   id = Akt_pT308_obs, name = Akt_pT308_obs, involved in a rule 	xdot(32) = x(32);
	
% Species:   id = Akt_pS473_obs, name = Akt_pS473_obs, involved in a rule 	xdot(33) = x(33);
	
% Species:   id = TSC1_TSC2_pS1387_obs, name = TSC1_TSC2_pS1387_obs, involved in a rule 	xdot(34) = x(34);
	
% Species:   id = mTOR_pS2448_obs, name = mTOR_pS2448_obs, involved in a rule 	xdot(35) = x(35);
	
% Species:   id = mTOR_pS2481_obs, name = mTOR_pS2481_obs, involved in a rule 	xdot(36) = x(36);
	
% Species:   id = p70S6K_pT389_obs, name = p70S6K_pT389_obs, involved in a rule 	xdot(37) = x(37);
	
% Species:   id = PRAS40_pT246_obs, name = PRAS40_pT246_obs, involved in a rule 	xdot(38) = x(38);
	
% Species:   id = PRAS40_pS183_obs, name = PRAS40_pS183_obs, involved in a rule 	xdot(39) = x(39);
end

function z=function_4_IR_beta_phosphorylation_by_Insulin(IR_beta,IR_beta_phosphorylation_by_Insulin,Insulin), z=(IR_beta_phosphorylation_by_Insulin*IR_beta*Insulin);end

function z=function_4_IRS1_phosphorylation_by_IR_beta_pY1146(IRS1,IRS1_phosphorylation_by_IR_beta_pY1146,IR_beta_pY1146), z=(IRS1_phosphorylation_by_IR_beta_pY1146*IRS1*IR_beta_pY1146);end

function z=function_4_IRS1_p_phosphorylation_by_p70S6K_pT389(IRS1_p,IRS1_p_phosphorylation_by_p70S6K_pT389,p70S6K_pT389), z=(IRS1_p_phosphorylation_by_p70S6K_pT389*IRS1_p*p70S6K_pT389);end

function z=function_4_AMPK_T172_phosphorylation(AMPK,AMPK_T172_phosphorylation,IRS1_p), z=(AMPK_T172_phosphorylation*AMPK*IRS1_p);end

function z=function_4_Akt_S473_phosphorylation_by_mTORC2_pS2481_n_IRS1_p(Akt_S473,Akt_S473_phosphorylation_by_mTORC2_pS2481_n_IRS1_p,IRS1_p,mTORC2_pS2481), z=(Akt_S473_phosphorylation_by_mTORC2_pS2481_n_IRS1_p*Akt_S473*mTORC2_pS2481*IRS1_p);end

function z=function_4_Akt_T308_phosphorylation_by_IRS1_p(Akt_T308,Akt_T308_phosphorylation_by_IRS1_p,IRS1_p), z=(Akt_T308_phosphorylation_by_IRS1_p*Akt_T308*IRS1_p);end

function z=function_4_mTORC1_pS2448_dephosphorylation_by_TSC1_TSC2_pS1387(TSC1_TSC2_pS1387,mTORC1_pS2448,mTORC1_pS2448_dephosphorylation_by_TSC1_TSC2_pS1387), z=(mTORC1_pS2448_dephosphorylation_by_TSC1_TSC2_pS1387*mTORC1_pS2448*TSC1_TSC2_pS1387);end

function z=function_4_mTORC1_S2448_activation_by_Amino_Acids(Amino_Acids,mTORC1,mTORC1_S2448_activation_by_Amino_Acids), z=(mTORC1_S2448_activation_by_Amino_Acids*mTORC1*Amino_Acids);end

function z=function_4_mTORC2_S2481_phosphorylation_by_PI3K_variant_p(PI3K_variant_p,mTORC2,mTORC2_S2481_phosphorylation_by_PI3K_variant_p), z=(mTORC2_S2481_phosphorylation_by_PI3K_variant_p*mTORC2*PI3K_variant_p);end

function z=function_4_p70S6K_T389_phosphorylation_by_mTORC1_pS2448(mTORC1_pS2448,p70S6K,p70S6K_T389_phosphorylation_by_mTORC1_pS2448), z=(p70S6K_T389_phosphorylation_by_mTORC1_pS2448*p70S6K*mTORC1_pS2448);end

function z=function_4_PRAS40_S183_phosphorylation_by_mTORC1_pS2448(PRAS40_S183,PRAS40_S183_phosphorylation_by_mTORC1_pS2448,mTORC1_pS2448), z=(PRAS40_S183_phosphorylation_by_mTORC1_pS2448*PRAS40_S183*mTORC1_pS2448);end

function z=function_4_PRAS40_T246_phosphorylation_by_Akt_pT308(Akt_pT308,PRAS40_T246,PRAS40_T246_phosphorylation_by_Akt_pT308), z=(PRAS40_T246_phosphorylation_by_Akt_pT308*PRAS40_T246*Akt_pT308);end

function z=function_4_TSC1_TSC2_S1387_phosphorylation_by_AMPK_pT172(AMPK_pT172,TSC1_TSC2_S1387_phosphorylation_by_AMPK_pT172,TSC1_TSC2_pT1462), z=(TSC1_TSC2_S1387_phosphorylation_by_AMPK_pT172*TSC1_TSC2_pT1462*AMPK_pT172);end

function z=function_4_TSC1_TSC2_T1462_phosphorylation_by_Akt_pT308(Akt_pT308,TSC1_TSC2_T1462_phosphorylation_by_Akt_pT308,TSC1_TSC2_pS1387), z=(TSC1_TSC2_T1462_phosphorylation_by_Akt_pT308*TSC1_TSC2_pS1387*Akt_pT308);end

function z=function_4_PI3K_variant_phosphorylation_by_IR_beta_pY1146(IR_beta_pY1146,PI3K_variant,PI3K_variant_phosphorylation_by_IR_beta_pY1146), z=(PI3K_variant_phosphorylation_by_IR_beta_pY1146*PI3K_variant*IR_beta_pY1146);end

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


