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
% Model name = DallePezze2016 - Activation of AMPK and mTOR by amino acids
%
% is http://identifiers.org/biomodels.db/MODEL1702270000
% is http://identifiers.org/biomodels.db/BIOMD0000000640
% isDescribedBy http://identifiers.org/pubmed/27869123
%


function main()
%Initial conditions vector
	x0=zeros(45,1);
	x0(1) = 50.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 150.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 50.0;
	x0(8) = 0.0;
	x0(9) = 300.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 0.0;
	x0(13) = 50.0;
	x0(14) = 0.0;
	x0(15) = 0.0;
	x0(16) = 100.0;
	x0(17) = 0.0;
	x0(18) = 100.0;
	x0(19) = 0.0;
	x0(20) = 300.0;
	x0(21) = 0.0;
	x0(22) = 0.0;
	x0(23) = 0.0;
	x0(24) = 20.0;
	x0(25) = 0.0;
	x0(26) = 0.0;
	x0(27) = 0.0;
	x0(28) = 50.0;
	x0(29) = 0.0;
	x0(30) = 50.0;
	x0(31) = 0.0;
	x0(32) = 0.0;
	x0(33) = 1.0;
	x0(34) = 0.0;
	x0(35) = 0.0;
	x0(36) = 0.0;
	x0(37) = 0.0;
	x0(38) = 0.0;
	x0(39) = 0.0;
	x0(40) = 0.0;
	x0(41) = 0.0;
	x0(42) = 0.0;
	x0(43) = 0.0;
	x0(44) = 0.0;
	x0(45) = 0.0;


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
% Parameter:   id =  IRS_phos_by_Amino_Acids, name = IRS_phos_by_Amino_Acids
	global_par_IRS_phos_by_Amino_Acids=0.0331672;
% Parameter:   id =  AMPK_T172_phos_by_Amino_Acids, name = AMPK_T172_phos_by_Amino_Acids
	global_par_AMPK_T172_phos_by_Amino_Acids=17.6284;
% Parameter:   id =  mTORC2_S2481_phos_by_Amino_Acids, name = mTORC2_S2481_phos_by_Amino_Acids
	global_par_mTORC2_S2481_phos_by_Amino_Acids=0.0268658;
% Parameter:   id =  IR_beta_phos_by_Insulin, name = IR_beta_phos_by_Insulin
	global_par_IR_beta_phos_by_Insulin=0.0203796;
% Parameter:   id =  IR_beta_pY1146_dephos, name = IR_beta_pY1146_dephos
	global_par_IR_beta_pY1146_dephos=0.493514;
% Parameter:   id =  IR_beta_ready, name = IR_beta_ready
	global_par_IR_beta_ready=323.611;
% Parameter:   id =  IRS_phos_by_IR_beta_pY1146, name = IRS_phos_by_IR_beta_pY1146
	global_par_IRS_phos_by_IR_beta_pY1146=2.11894;
% Parameter:   id =  IRS_p_phos_by_p70_S6K_pT229_pT389, name = IRS_p_phos_by_p70_S6K_pT229_pT389
	global_par_IRS_p_phos_by_p70_S6K_pT229_pT389=0.338859859949792;
% Parameter:   id =  IRS_phos_by_p70_S6K_pT229_pT389, name = IRS_phos_by_p70_S6K_pT229_pT389
	global_par_IRS_phos_by_p70_S6K_pT229_pT389=0.0863775267376444;
% Parameter:   id =  IRS_pS636_turnover, name = IRS_pS636_turnover
	global_par_IRS_pS636_turnover=25.0;
% Parameter:   id =  AMPK_T172_phos, name = AMPK_T172_phos
	global_par_AMPK_T172_phos=0.490602;
% Parameter:   id =  AMPK_pT172_dephos, name = AMPK_pT172_dephos
	global_par_AMPK_pT172_dephos=165.704;
% Parameter:   id =  Akt_S473_phos_by_mTORC2_pS2481_first, name = Akt_S473_phos_by_mTORC2_pS2481_first
	global_par_Akt_S473_phos_by_mTORC2_pS2481_first=1.31992E-5;
% Parameter:   id =  Akt_S473_phos_by_mTORC2_pS2481_second, name = Akt_S473_phos_by_mTORC2_pS2481_second
	global_par_Akt_S473_phos_by_mTORC2_pS2481_second=0.159093;
% Parameter:   id =  Akt_T308_phos_by_PI3K_p_PDK1_first, name = Akt_T308_phos_by_PI3K_p_PDK1_first
	global_par_Akt_T308_phos_by_PI3K_p_PDK1_first=7.47437;
% Parameter:   id =  Akt_T308_phos_by_PI3K_p_PDK1_second, name = Akt_T308_phos_by_PI3K_p_PDK1_second
	global_par_Akt_T308_phos_by_PI3K_p_PDK1_second=7.47345;
% Parameter:   id =  Akt_pT308_dephos_first, name = Akt_pT308_dephos_first
	global_par_Akt_pT308_dephos_first=88.9654;
% Parameter:   id =  Akt_pT308_dephos_second, name = Akt_pT308_dephos_second
	global_par_Akt_pT308_dephos_second=88.9639;
% Parameter:   id =  Akt_pS473_dephos_first, name = Akt_pS473_dephos_first
	global_par_Akt_pS473_dephos_first=0.376999;
% Parameter:   id =  Akt_pS473_dephos_second, name = Akt_pS473_dephos_second
	global_par_Akt_pS473_dephos_second=0.380005;
% Parameter:   id =  TSC1_TSC2_S1387_phos_by_AMPK_pT172, name = TSC1_TSC2_S1387_phos_by_AMPK_pT172
	global_par_TSC1_TSC2_S1387_phos_by_AMPK_pT172=0.00175772;
% Parameter:   id =  TSC1_TSC2_T1462_phos_by_Akt_pT308, name = TSC1_TSC2_T1462_phos_by_Akt_pT308
	global_par_TSC1_TSC2_T1462_phos_by_Akt_pT308=1.52417;
% Parameter:   id =  TSC1_TSC2_pS1387_dephos, name = TSC1_TSC2_pS1387_dephos
	global_par_TSC1_TSC2_pS1387_dephos=0.25319;
% Parameter:   id =  TSC1_TSC2_pT1462_dephos, name = TSC1_TSC2_pT1462_dephos
	global_par_TSC1_TSC2_pT1462_dephos=147.239;
% Parameter:   id =  mTORC1_pS2448_dephos_by_TSC1_TSC2, name = mTORC1_pS2448_dephos_by_TSC1_TSC2
	global_par_mTORC1_pS2448_dephos_by_TSC1_TSC2=0.00869774;
% Parameter:   id =  mTORC1_S2448_activation_by_Amino_Acids, name = mTORC1_S2448_activation_by_Amino_Acids
	global_par_mTORC1_S2448_activation_by_Amino_Acids=0.0156992;
% Parameter:   id =  mTORC2_pS2481_dephos, name = mTORC2_pS2481_dephos
	global_par_mTORC2_pS2481_dephos=1.42511;
% Parameter:   id =  mTORC2_S2481_phos_by_PI3K_variant_p, name = mTORC2_S2481_phos_by_PI3K_variant_p
	global_par_mTORC2_S2481_phos_by_PI3K_variant_p=0.120736;
% Parameter:   id =  p70_S6K_T229_phos_by_PI3K_p_PDK1_first, name = p70_S6K_T229_phos_by_PI3K_p_PDK1_first
	global_par_p70_S6K_T229_phos_by_PI3K_p_PDK1_first=0.0133520172873009;
% Parameter:   id =  p70_S6K_T229_phos_by_PI3K_p_PDK1_second, name = p70_S6K_T229_phos_by_PI3K_p_PDK1_second
	global_par_p70_S6K_T229_phos_by_PI3K_p_PDK1_second=1.00000002814509E-6;
% Parameter:   id =  p70_S6K_T389_phos_by_mTORC1_pS2448_first, name = p70_S6K_T389_phos_by_mTORC1_pS2448_first
	global_par_p70_S6K_T389_phos_by_mTORC1_pS2448_first=0.00261303413778722;
% Parameter:   id =  p70_S6K_T389_phos_by_mTORC1_pS2448_second, name = p70_S6K_T389_phos_by_mTORC1_pS2448_second
	global_par_p70_S6K_T389_phos_by_mTORC1_pS2448_second=0.110720890919343;
% Parameter:   id =  p70_S6K_pT229_dephos_first, name = p70_S6K_pT229_dephos_first
	global_par_p70_S6K_pT229_dephos_first=1.00000012897033E-6;
% Parameter:   id =  p70_S6K_pT229_dephos_second, name = p70_S6K_pT229_dephos_second
	global_par_p70_S6K_pT229_dephos_second=0.159201353240651;
% Parameter:   id =  p70_S6K_pT389_dephos_first, name = p70_S6K_pT389_dephos_first
	global_par_p70_S6K_pT389_dephos_first=1.10036057608758;
% Parameter:   id =  p70_S6K_pT389_dephos_second, name = p70_S6K_pT389_dephos_second
	global_par_p70_S6K_pT389_dephos_second=1.10215267954479;
% Parameter:   id =  PRAS40_S183_phos_by_mTORC1_pS2448_first, name = PRAS40_S183_phos_by_mTORC1_pS2448_first
	global_par_PRAS40_S183_phos_by_mTORC1_pS2448_first=0.15881;
% Parameter:   id =  PRAS40_S183_phos_by_mTORC1_pS2448_second, name = PRAS40_S183_phos_by_mTORC1_pS2448_second
	global_par_PRAS40_S183_phos_by_mTORC1_pS2448_second=0.0683009;
% Parameter:   id =  PRAS40_T246_phos_by_Akt_pT308_first, name = PRAS40_T246_phos_by_Akt_pT308_first
	global_par_PRAS40_T246_phos_by_Akt_pT308_first=0.279344;
% Parameter:   id =  PRAS40_T246_phos_by_Akt_pT308_second, name = PRAS40_T246_phos_by_Akt_pT308_second
	global_par_PRAS40_T246_phos_by_Akt_pT308_second=0.279401;
% Parameter:   id =  PRAS40_pS183_dephos_first, name = PRAS40_pS183_dephos_first
	global_par_PRAS40_pS183_dephos_first=1.8706;
% Parameter:   id =  PRAS40_pS183_dephos_second, name = PRAS40_pS183_dephos_second
	global_par_PRAS40_pS183_dephos_second=1.88453;
% Parameter:   id =  PRAS40_pT246_dephos_first, name = PRAS40_pT246_dephos_first
	global_par_PRAS40_pT246_dephos_first=11.8759;
% Parameter:   id =  PRAS40_pT246_dephos_second, name = PRAS40_pT246_dephos_second
	global_par_PRAS40_pT246_dephos_second=11.876;
% Parameter:   id =  PI3K_p_PDK1_dephos, name = PI3K_p_PDK1_dephos
	global_par_PI3K_p_PDK1_dephos=0.18913343080532;
% Parameter:   id =  PI3K_PDK1_phos_by_IRS_p, name = PI3K_PDK1_phos_by_IRS_p
	global_par_PI3K_PDK1_phos_by_IRS_p=1.87226757782201E-4;
% Parameter:   id =  PI3K_variant_p_dephos, name = PI3K_variant_p_dephos
	global_par_PI3K_variant_p_dephos=0.108074886441184;
% Parameter:   id =  PI3K_variant_phos_by_IR_beta_pY1146, name = PI3K_variant_phos_by_IR_beta_pY1146
	global_par_PI3K_variant_phos_by_IR_beta_pY1146=5.49027801822575E-4;
% Parameter:   id =  scale_IR_beta_pY1146_obs, name = scale_IR_beta_pY1146_obs
	global_par_scale_IR_beta_pY1146_obs=1.0;
% Parameter:   id =  scale_IRS_pS636_obs, name = scale_IRS_pS636_obs
	global_par_scale_IRS_pS636_obs=1.0;
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
% Parameter:   id =  scale_p70_S6K_pT229_obs, name = scale_p70_S6K_pT229_obs
	global_par_scale_p70_S6K_pT229_obs=1.0;
% Parameter:   id =  scale_p70_S6K_pT389_obs, name = scale_p70_S6K_pT389_obs
	global_par_scale_p70_S6K_pT389_obs=1.0;
% Parameter:   id =  scale_PRAS40_pT246_obs, name = scale_PRAS40_pT246_obs
	global_par_scale_PRAS40_pT246_obs=1.0;
% Parameter:   id =  scale_PRAS40_pS183_obs, name = scale_PRAS40_pS183_obs
	global_par_scale_PRAS40_pS183_obs=1.0;
% assignmentRule: variable = Insulin
	x(32)=piecewise(0, time < 0, 0);
% assignmentRule: variable = Amino_Acids
	x(33)=piecewise(0, time < 0, 1);
% assignmentRule: variable = IR_beta_pY1146_obs
	x(34)=x(2);
% assignmentRule: variable = IRS_pS636_obs
	x(35)=x(6);
% assignmentRule: variable = AMPK_pT172_obs
	x(36)=x(8);
% assignmentRule: variable = Akt_pT308_obs
	x(37)=x(10)+x(12);
% assignmentRule: variable = Akt_pS473_obs
	x(38)=x(11)+x(12);
% assignmentRule: variable = TSC1_TSC2_pS1387_obs
	x(39)=x(15);
% assignmentRule: variable = mTOR_pS2448_obs
	x(40)=x(17);
% assignmentRule: variable = mTOR_pS2481_obs
	x(41)=x(19);
% assignmentRule: variable = p70_S6K_pT229_obs
	x(42)=x(21)+x(23);
% assignmentRule: variable = p70_S6K_pT389_obs
	x(43)=x(22)+x(23);
% assignmentRule: variable = PRAS40_pT246_obs
	x(44)=x(25)+x(27);
% assignmentRule: variable = PRAS40_pS183_obs
	x(45)=x(26)+x(27);

% Reaction: id = reaction_1, name = reaction_1
	reaction_reaction_1=compartment_Cell*function_1(x(33), x(4), global_par_IRS_phos_by_Amino_Acids);

% Reaction: id = reaction_2, name = reaction_2
	reaction_reaction_2=compartment_Cell*function_2(x(7), global_par_AMPK_T172_phos_by_Amino_Acids, x(33));

% Reaction: id = reaction_3, name = reaction_3
	reaction_reaction_3=compartment_Cell*function_3(x(33), x(18), global_par_mTORC2_S2481_phos_by_Amino_Acids);

% Reaction: id = reaction_4, name = reaction_4
	reaction_reaction_4=compartment_Cell*function_4(x(1), global_par_IR_beta_phos_by_Insulin, x(32));

% Reaction: id = reaction_5, name = reaction_5
	reaction_reaction_5=compartment_Cell*global_par_IR_beta_pY1146_dephos*x(2);

% Reaction: id = reaction_6, name = reaction_6
	reaction_reaction_6=compartment_Cell*global_par_IR_beta_ready*x(3);

% Reaction: id = reaction_7, name = reaction_7
	reaction_reaction_7=compartment_Cell*function_5(x(4), global_par_IRS_phos_by_IR_beta_pY1146, x(2));

% Reaction: id = reaction_8, name = reaction_8
	reaction_reaction_8=compartment_Cell*function_6(x(5), global_par_IRS_p_phos_by_p70_S6K_pT229_pT389, x(23));

% Reaction: id = reaction_9, name = reaction_9
	reaction_reaction_9=compartment_Cell*function_7(x(4), global_par_IRS_phos_by_p70_S6K_pT229_pT389, x(23));

% Reaction: id = reaction_10, name = reaction_10
	reaction_reaction_10=compartment_Cell*global_par_IRS_pS636_turnover*x(6);

% Reaction: id = reaction_11, name = reaction_11
	reaction_reaction_11=compartment_Cell*global_par_PI3K_p_PDK1_dephos*x(31);

% Reaction: id = reaction_12, name = reaction_12
	reaction_reaction_12=compartment_Cell*function_8(x(5), x(30), global_par_PI3K_PDK1_phos_by_IRS_p);

% Reaction: id = reaction_13, name = reaction_13
	reaction_reaction_13=compartment_Cell*global_par_PI3K_variant_p_dephos*x(29);

% Reaction: id = reaction_14, name = reaction_14
	reaction_reaction_14=compartment_Cell*function_9(x(2), x(28), global_par_PI3K_variant_phos_by_IR_beta_pY1146);

% Reaction: id = reaction_15, name = reaction_15
	reaction_reaction_15=compartment_Cell*function_10(x(7), global_par_AMPK_T172_phos, x(5));

% Reaction: id = reaction_16, name = reaction_16
	reaction_reaction_16=compartment_Cell*global_par_AMPK_pT172_dephos*x(8);

% Reaction: id = reaction_17, name = reaction_17
	reaction_reaction_17=compartment_Cell*function_11(x(9), global_par_Akt_T308_phos_by_PI3K_p_PDK1_first, x(31));

% Reaction: id = reaction_18, name = reaction_18
	reaction_reaction_18=compartment_Cell*function_12(x(9), global_par_Akt_S473_phos_by_mTORC2_pS2481_first, x(19));

% Reaction: id = reaction_19, name = reaction_19
	reaction_reaction_19=compartment_Cell*function_13(global_par_Akt_T308_phos_by_PI3K_p_PDK1_second, x(11), x(31));

% Reaction: id = reaction_20, name = reaction_20
	reaction_reaction_20=compartment_Cell*function_14(global_par_Akt_S473_phos_by_mTORC2_pS2481_second, x(10), x(19));

% Reaction: id = reaction_21, name = reaction_21
	reaction_reaction_21=compartment_Cell*global_par_Akt_pT308_dephos_first*x(10);

% Reaction: id = reaction_22, name = reaction_22
	reaction_reaction_22=compartment_Cell*global_par_Akt_pS473_dephos_first*x(11);

% Reaction: id = reaction_23, name = reaction_23
	reaction_reaction_23=compartment_Cell*global_par_Akt_pT308_dephos_second*x(12);

% Reaction: id = reaction_24, name = reaction_24
	reaction_reaction_24=compartment_Cell*global_par_Akt_pS473_dephos_second*x(12);

% Reaction: id = reaction_25, name = reaction_25
	reaction_reaction_25=compartment_Cell*function_15(x(8), x(13), global_par_TSC1_TSC2_S1387_phos_by_AMPK_pT172);

% Reaction: id = reaction_26, name = reaction_26
	reaction_reaction_26=compartment_Cell*function_16(x(10), x(12), x(13), global_par_TSC1_TSC2_T1462_phos_by_Akt_pT308);

% Reaction: id = reaction_27, name = reaction_27
	reaction_reaction_27=compartment_Cell*global_par_TSC1_TSC2_pS1387_dephos*x(15);

% Reaction: id = reaction_28, name = reaction_28
	reaction_reaction_28=compartment_Cell*global_par_TSC1_TSC2_pT1462_dephos*x(14);

% Reaction: id = reaction_29, name = reaction_29
	reaction_reaction_29=compartment_Cell*function_17(x(13), x(15), x(17), global_par_mTORC1_pS2448_dephos_by_TSC1_TSC2);

% Reaction: id = reaction_30, name = reaction_30
	reaction_reaction_30=compartment_Cell*function_18(x(33), x(16), global_par_mTORC1_S2448_activation_by_Amino_Acids);

% Reaction: id = reaction_31, name = reaction_31
	reaction_reaction_31=compartment_Cell*function_19(x(29), x(18), global_par_mTORC2_S2481_phos_by_PI3K_variant_p);

% Reaction: id = reaction_32, name = reaction_32
	reaction_reaction_32=compartment_Cell*global_par_mTORC2_pS2481_dephos*x(19);

% Reaction: id = reaction_33, name = reaction_33
	reaction_reaction_33=compartment_Cell*function_20(x(31), x(20), global_par_p70_S6K_T229_phos_by_PI3K_p_PDK1_first);

% Reaction: id = reaction_34, name = reaction_34
	reaction_reaction_34=compartment_Cell*function_21(x(17), x(20), global_par_p70_S6K_T389_phos_by_mTORC1_pS2448_first);

% Reaction: id = reaction_35, name = reaction_35
	reaction_reaction_35=compartment_Cell*function_22(x(31), global_par_p70_S6K_T229_phos_by_PI3K_p_PDK1_second, x(22));

% Reaction: id = reaction_36, name = reaction_36
	reaction_reaction_36=compartment_Cell*function_23(x(17), global_par_p70_S6K_T389_phos_by_mTORC1_pS2448_second, x(21));

% Reaction: id = reaction_37, name = reaction_37
	reaction_reaction_37=compartment_Cell*global_par_p70_S6K_pT229_dephos_first*x(21);

% Reaction: id = reaction_38, name = reaction_38
	reaction_reaction_38=compartment_Cell*global_par_p70_S6K_pT389_dephos_first*x(22);

% Reaction: id = reaction_39, name = reaction_39
	reaction_reaction_39=compartment_Cell*global_par_p70_S6K_pT229_dephos_second*x(23);

% Reaction: id = reaction_40, name = reaction_40
	reaction_reaction_40=compartment_Cell*global_par_p70_S6K_pT389_dephos_second*x(23);

% Reaction: id = reaction_41, name = reaction_41
	reaction_reaction_41=compartment_Cell*function_24(x(24), global_par_PRAS40_S183_phos_by_mTORC1_pS2448_first, x(17));

% Reaction: id = reaction_42, name = reaction_42
	reaction_reaction_42=compartment_Cell*function_25(x(10), x(12), x(24), global_par_PRAS40_T246_phos_by_Akt_pT308_first);

% Reaction: id = reaction_43, name = reaction_43
	reaction_reaction_43=compartment_Cell*function_26(x(10), x(12), global_par_PRAS40_T246_phos_by_Akt_pT308_second, x(26));

% Reaction: id = reaction_44, name = reaction_44
	reaction_reaction_44=compartment_Cell*function_27(global_par_PRAS40_S183_phos_by_mTORC1_pS2448_second, x(25), x(17));

% Reaction: id = reaction_45, name = reaction_45
	reaction_reaction_45=compartment_Cell*global_par_PRAS40_pS183_dephos_first*x(26);

% Reaction: id = reaction_46, name = reaction_46
	reaction_reaction_46=compartment_Cell*global_par_PRAS40_pT246_dephos_first*x(25);

% Reaction: id = reaction_47, name = reaction_47
	reaction_reaction_47=compartment_Cell*global_par_PRAS40_pS183_dephos_second*x(27);

% Reaction: id = reaction_48, name = reaction_48
	reaction_reaction_48=compartment_Cell*global_par_PRAS40_pT246_dephos_second*x(27);

	xdot=zeros(45,1);
	
% Species:   id = IR_beta, name = IR_beta, affected by kineticLaw
	xdot(1) = (1/(compartment_Cell))*((-1.0 * reaction_reaction_4) + ( 1.0 * reaction_reaction_6));
	
% Species:   id = IR_beta_pY1146, name = IR_beta_pY1146, affected by kineticLaw
	xdot(2) = (1/(compartment_Cell))*(( 1.0 * reaction_reaction_4) + (-1.0 * reaction_reaction_5));
	
% Species:   id = IR_beta_refractory, name = IR_beta_refractory, affected by kineticLaw
	xdot(3) = (1/(compartment_Cell))*(( 1.0 * reaction_reaction_5) + (-1.0 * reaction_reaction_6));
	
% Species:   id = IRS, name = IRS, affected by kineticLaw
	xdot(4) = (1/(compartment_Cell))*((-1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_7) + (-1.0 * reaction_reaction_9) + ( 1.0 * reaction_reaction_10));
	
% Species:   id = IRS_p, name = IRS_p, affected by kineticLaw
	xdot(5) = (1/(compartment_Cell))*(( 1.0 * reaction_reaction_1) + ( 1.0 * reaction_reaction_7) + (-1.0 * reaction_reaction_8));
	
% Species:   id = IRS_pS636, name = IRS_pS636, affected by kineticLaw
	xdot(6) = (1/(compartment_Cell))*(( 1.0 * reaction_reaction_8) + ( 1.0 * reaction_reaction_9) + (-1.0 * reaction_reaction_10));
	
% Species:   id = AMPK, name = AMPK, affected by kineticLaw
	xdot(7) = (1/(compartment_Cell))*((-1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_15) + ( 1.0 * reaction_reaction_16));
	
% Species:   id = AMPK_pT172, name = AMPK_pT172, affected by kineticLaw
	xdot(8) = (1/(compartment_Cell))*(( 1.0 * reaction_reaction_2) + ( 1.0 * reaction_reaction_15) + (-1.0 * reaction_reaction_16));
	
% Species:   id = Akt, name = Akt, affected by kineticLaw
	xdot(9) = (1/(compartment_Cell))*((-1.0 * reaction_reaction_17) + (-1.0 * reaction_reaction_18) + ( 1.0 * reaction_reaction_21) + ( 1.0 * reaction_reaction_22));
	
% Species:   id = Akt_pT308, name = Akt_pT308, affected by kineticLaw
	xdot(10) = (1/(compartment_Cell))*(( 1.0 * reaction_reaction_17) + (-1.0 * reaction_reaction_20) + (-1.0 * reaction_reaction_21) + ( 1.0 * reaction_reaction_24));
	
% Species:   id = Akt_pS473, name = Akt_pS473, affected by kineticLaw
	xdot(11) = (1/(compartment_Cell))*(( 1.0 * reaction_reaction_18) + (-1.0 * reaction_reaction_19) + (-1.0 * reaction_reaction_22) + ( 1.0 * reaction_reaction_23));
	
% Species:   id = Akt_pT308_pS473, name = Akt_pT308_pS473, affected by kineticLaw
	xdot(12) = (1/(compartment_Cell))*(( 1.0 * reaction_reaction_19) + ( 1.0 * reaction_reaction_20) + (-1.0 * reaction_reaction_23) + (-1.0 * reaction_reaction_24));
	
% Species:   id = TSC1_TSC2, name = TSC1_TSC2, affected by kineticLaw
	xdot(13) = (1/(compartment_Cell))*((-1.0 * reaction_reaction_25) + (-1.0 * reaction_reaction_26) + ( 1.0 * reaction_reaction_27) + ( 1.0 * reaction_reaction_28));
	
% Species:   id = TSC1_TSC2_pT1462, name = TSC1_TSC2_pT1462, affected by kineticLaw
	xdot(14) = (1/(compartment_Cell))*(( 1.0 * reaction_reaction_26) + (-1.0 * reaction_reaction_28));
	
% Species:   id = TSC1_TSC2_pS1387, name = TSC1_TSC2_pS1387, affected by kineticLaw
	xdot(15) = (1/(compartment_Cell))*(( 1.0 * reaction_reaction_25) + (-1.0 * reaction_reaction_27));
	
% Species:   id = mTORC1, name = mTORC1, affected by kineticLaw
	xdot(16) = (1/(compartment_Cell))*(( 1.0 * reaction_reaction_29) + (-1.0 * reaction_reaction_30));
	
% Species:   id = mTORC1_pS2448, name = mTORC1_pS2448, affected by kineticLaw
	xdot(17) = (1/(compartment_Cell))*((-1.0 * reaction_reaction_29) + ( 1.0 * reaction_reaction_30));
	
% Species:   id = mTORC2, name = mTORC2, affected by kineticLaw
	xdot(18) = (1/(compartment_Cell))*((-1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_31) + ( 1.0 * reaction_reaction_32));
	
% Species:   id = mTORC2_pS2481, name = mTORC2_pS2481, affected by kineticLaw
	xdot(19) = (1/(compartment_Cell))*(( 1.0 * reaction_reaction_3) + ( 1.0 * reaction_reaction_31) + (-1.0 * reaction_reaction_32));
	
% Species:   id = p70_S6K, name = p70_S6K, affected by kineticLaw
	xdot(20) = (1/(compartment_Cell))*((-1.0 * reaction_reaction_33) + (-1.0 * reaction_reaction_34) + ( 1.0 * reaction_reaction_37) + ( 1.0 * reaction_reaction_38));
	
% Species:   id = p70_S6K_pT229, name = p70_S6K_pT229, affected by kineticLaw
	xdot(21) = (1/(compartment_Cell))*(( 1.0 * reaction_reaction_33) + (-1.0 * reaction_reaction_36) + (-1.0 * reaction_reaction_37) + ( 1.0 * reaction_reaction_40));
	
% Species:   id = p70_S6K_pT389, name = p70_S6K_pT389, affected by kineticLaw
	xdot(22) = (1/(compartment_Cell))*(( 1.0 * reaction_reaction_34) + (-1.0 * reaction_reaction_35) + (-1.0 * reaction_reaction_38) + ( 1.0 * reaction_reaction_39));
	
% Species:   id = p70_S6K_pT229_pT389, name = p70_S6K_pT229_pT389, affected by kineticLaw
	xdot(23) = (1/(compartment_Cell))*(( 1.0 * reaction_reaction_35) + ( 1.0 * reaction_reaction_36) + (-1.0 * reaction_reaction_39) + (-1.0 * reaction_reaction_40));
	
% Species:   id = PRAS40, name = PRAS40, affected by kineticLaw
	xdot(24) = (1/(compartment_Cell))*((-1.0 * reaction_reaction_41) + (-1.0 * reaction_reaction_42) + ( 1.0 * reaction_reaction_45) + ( 1.0 * reaction_reaction_46));
	
% Species:   id = PRAS40_pT246, name = PRAS40_pT246, affected by kineticLaw
	xdot(25) = (1/(compartment_Cell))*(( 1.0 * reaction_reaction_42) + (-1.0 * reaction_reaction_44) + (-1.0 * reaction_reaction_46) + ( 1.0 * reaction_reaction_47));
	
% Species:   id = PRAS40_pS183, name = PRAS40_pS183, affected by kineticLaw
	xdot(26) = (1/(compartment_Cell))*(( 1.0 * reaction_reaction_41) + (-1.0 * reaction_reaction_43) + (-1.0 * reaction_reaction_45) + ( 1.0 * reaction_reaction_48));
	
% Species:   id = PRAS40_pT246_pS183, name = PRAS40_pT246_pS183, affected by kineticLaw
	xdot(27) = (1/(compartment_Cell))*(( 1.0 * reaction_reaction_43) + ( 1.0 * reaction_reaction_44) + (-1.0 * reaction_reaction_47) + (-1.0 * reaction_reaction_48));
	
% Species:   id = PI3K_variant, name = PI3K_variant, affected by kineticLaw
	xdot(28) = (1/(compartment_Cell))*(( 1.0 * reaction_reaction_13) + (-1.0 * reaction_reaction_14));
	
% Species:   id = PI3K_variant_p, name = PI3K_variant_p, affected by kineticLaw
	xdot(29) = (1/(compartment_Cell))*((-1.0 * reaction_reaction_13) + ( 1.0 * reaction_reaction_14));
	
% Species:   id = PI3K_PDK1, name = PI3K_PDK1, affected by kineticLaw
	xdot(30) = (1/(compartment_Cell))*(( 1.0 * reaction_reaction_11) + (-1.0 * reaction_reaction_12));
	
% Species:   id = PI3K_p_PDK1, name = PI3K_p_PDK1, affected by kineticLaw
	xdot(31) = (1/(compartment_Cell))*((-1.0 * reaction_reaction_11) + ( 1.0 * reaction_reaction_12));
	
% Species:   id = Insulin, name = Insulin, involved in a rule 	xdot(32) = x(32);
	
% Species:   id = Amino_Acids, name = Amino_Acids, involved in a rule 	xdot(33) = x(33);
	
% Species:   id = IR_beta_pY1146_obs, name = IR_beta_pY1146_obs, involved in a rule 	xdot(34) = x(34);
	
% Species:   id = IRS_pS636_obs, name = IRS_pS636_obs, involved in a rule 	xdot(35) = x(35);
	
% Species:   id = AMPK_pT172_obs, name = AMPK_pT172_obs, involved in a rule 	xdot(36) = x(36);
	
% Species:   id = Akt_pT308_obs, name = Akt_pT308_obs, involved in a rule 	xdot(37) = x(37);
	
% Species:   id = Akt_pS473_obs, name = Akt_pS473_obs, involved in a rule 	xdot(38) = x(38);
	
% Species:   id = TSC1_TSC2_pS1387_obs, name = TSC1_TSC2_pS1387_obs, involved in a rule 	xdot(39) = x(39);
	
% Species:   id = mTOR_pS2448_obs, name = mTOR_pS2448_obs, involved in a rule 	xdot(40) = x(40);
	
% Species:   id = mTOR_pS2481_obs, name = mTOR_pS2481_obs, involved in a rule 	xdot(41) = x(41);
	
% Species:   id = p70_S6K_pT229_obs, name = p70_S6K_pT229_obs, involved in a rule 	xdot(42) = x(42);
	
% Species:   id = p70_S6K_pT389_obs, name = p70_S6K_pT389_obs, involved in a rule 	xdot(43) = x(43);
	
% Species:   id = PRAS40_pT246_obs, name = PRAS40_pT246_obs, involved in a rule 	xdot(44) = x(44);
	
% Species:   id = PRAS40_pS183_obs, name = PRAS40_pS183_obs, involved in a rule 	xdot(45) = x(45);
end

function z=function_6(IRS_p,IRS_p_phos_by_p70_S6K_pT229_pT389,p70_S6K_pT229_pT389), z=(IRS_p_phos_by_p70_S6K_pT229_pT389*IRS_p*p70_S6K_pT229_pT389);end

function z=function_3(Amino_Acids,mTORC2,mTORC2_S2481_phos_by_Amino_Acids), z=(mTORC2_S2481_phos_by_Amino_Acids*mTORC2*Amino_Acids);end

function z=function_14(Akt_S473_phos_by_mTORC2_pS2481_second,Akt_pT308,mTORC2_pS2481), z=(Akt_S473_phos_by_mTORC2_pS2481_second*Akt_pT308*mTORC2_pS2481);end

function z=function_17(TSC1_TSC2,TSC1_TSC2_pS1387,mTORC1_pS2448,mTORC1_pS2448_dephos_by_TSC1_TSC2), z=(mTORC1_pS2448_dephos_by_TSC1_TSC2*mTORC1_pS2448*(TSC1_TSC2+TSC1_TSC2_pS1387));end

function z=function_20(PI3K_p_PDK1,p70_S6K,p70_S6K_T229_phos_by_PI3K_p_PDK1_first), z=(p70_S6K_T229_phos_by_PI3K_p_PDK1_first*p70_S6K*PI3K_p_PDK1);end

function z=function_19(PI3K_variant_p,mTORC2,mTORC2_S2481_phos_by_PI3K_variant_p), z=(mTORC2_S2481_phos_by_PI3K_variant_p*mTORC2*PI3K_variant_p);end

function z=function_2(AMPK,AMPK_T172_phos_by_Amino_Acids,Amino_Acids), z=(AMPK_T172_phos_by_Amino_Acids*AMPK*Amino_Acids);end

function z=function_4(IR_beta,IR_beta_phos_by_Insulin,Insulin), z=(IR_beta_phos_by_Insulin*IR_beta*Insulin);end

function z=function_23(mTORC1_pS2448,p70_S6K_T389_phos_by_mTORC1_pS2448_second,p70_S6K_pT229), z=(p70_S6K_T389_phos_by_mTORC1_pS2448_second*p70_S6K_pT229*mTORC1_pS2448);end

function z=function_22(PI3K_p_PDK1,p70_S6K_T229_phos_by_PI3K_p_PDK1_second,p70_S6K_pT389), z=(p70_S6K_T229_phos_by_PI3K_p_PDK1_second*p70_S6K_pT389*PI3K_p_PDK1);end

function z=function_16(Akt_pT308,Akt_pT308_pS473,TSC1_TSC2,TSC1_TSC2_T1462_phos_by_Akt_pT308), z=(TSC1_TSC2_T1462_phos_by_Akt_pT308*TSC1_TSC2*(Akt_pT308+Akt_pT308_pS473));end

function z=function_11(Akt,Akt_T308_phos_by_PI3K_p_PDK1_first,PI3K_p_PDK1), z=(Akt_T308_phos_by_PI3K_p_PDK1_first*Akt*PI3K_p_PDK1);end

function z=function_27(PRAS40_S183_phos_by_mTORC1_pS2448_second,PRAS40_pT246,mTORC1_pS2448), z=(PRAS40_S183_phos_by_mTORC1_pS2448_second*PRAS40_pT246*mTORC1_pS2448);end

function z=function_26(Akt_pT308,Akt_pT308_pS473,PRAS40_T246_phos_by_Akt_pT308_second,PRAS40_pS183), z=(PRAS40_T246_phos_by_Akt_pT308_second*PRAS40_pS183*(Akt_pT308+Akt_pT308_pS473));end

function z=function_7(IRS,IRS_phos_by_p70_S6K_pT229_pT389,p70_S6K_pT229_pT389), z=(IRS_phos_by_p70_S6K_pT229_pT389*IRS*p70_S6K_pT229_pT389);end

function z=function_15(AMPK_pT172,TSC1_TSC2,TSC1_TSC2_S1387_phos_by_AMPK_pT172), z=(TSC1_TSC2_S1387_phos_by_AMPK_pT172*TSC1_TSC2*AMPK_pT172);end

function z=function_9(IR_beta_pY1146,PI3K_variant,PI3K_variant_phos_by_IR_beta_pY1146), z=(PI3K_variant_phos_by_IR_beta_pY1146*PI3K_variant*IR_beta_pY1146);end

function z=function_12(Akt,Akt_S473_phos_by_mTORC2_pS2481_first,mTORC2_pS2481), z=(Akt_S473_phos_by_mTORC2_pS2481_first*Akt*mTORC2_pS2481);end

function z=function_18(Amino_Acids,mTORC1,mTORC1_S2448_activation_by_Amino_Acids), z=(mTORC1_S2448_activation_by_Amino_Acids*mTORC1*Amino_Acids);end

function z=function_10(AMPK,AMPK_T172_phos,IRS_p), z=(AMPK_T172_phos*AMPK*IRS_p);end

function z=function_13(Akt_T308_phos_by_PI3K_p_PDK1_second,Akt_pS473,PI3K_p_PDK1), z=(Akt_T308_phos_by_PI3K_p_PDK1_second*Akt_pS473*PI3K_p_PDK1);end

function z=function_8(IRS_p,PI3K_PDK1,PI3K_PDK1_phos_by_IRS_p), z=(PI3K_PDK1_phos_by_IRS_p*PI3K_PDK1*IRS_p);end

function z=function_21(mTORC1_pS2448,p70_S6K,p70_S6K_T389_phos_by_mTORC1_pS2448_first), z=(p70_S6K_T389_phos_by_mTORC1_pS2448_first*p70_S6K*mTORC1_pS2448);end

function z=function_5(IRS,IRS_phos_by_IR_beta_pY1146,IR_beta_pY1146), z=(IRS_phos_by_IR_beta_pY1146*IRS*IR_beta_pY1146);end

function z=function_24(PRAS40,PRAS40_S183_phos_by_mTORC1_pS2448_first,mTORC1_pS2448), z=(PRAS40_S183_phos_by_mTORC1_pS2448_first*PRAS40*mTORC1_pS2448);end

function z=function_25(Akt_pT308,Akt_pT308_pS473,PRAS40,PRAS40_T246_phos_by_Akt_pT308_first), z=(PRAS40_T246_phos_by_Akt_pT308_first*PRAS40*(Akt_pT308+Akt_pT308_pS473));end

function z=function_1(Amino_Acids,IRS,IRS_phos_by_Amino_Acids), z=(IRS_phos_by_Amino_Acids*IRS*Amino_Acids);end

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


