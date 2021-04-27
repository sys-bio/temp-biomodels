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
% Model name = Dwivedi2014 - Healthy Volunteer IL6 Model
%
% is http://identifiers.org/biomodels.db/MODEL1408050000
% is http://identifiers.org/biomodels.db/BIOMD0000000534
% isDescribedBy http://identifiers.org/pubmed/24402116
%


function main()
%Initial conditions vector
	x0=zeros(41,1);
	x0(1) = 4.82830639918582E-5;
	x0(2) = 3.9;
	x0(3) = 0.00158509246200931;
	x0(4) = 40.196036452179;
	x0(5) = 1.05563779110703;
	x0(6) = 1.99215203510923E-5;
	x0(7) = 1.0E-26;
	x0(8) = 9.8773753365085E-28;
	x0(9) = -1.15536021610192E-26;
	x0(10) = 0.437781481555189;
	x0(11) = 1.37781774217442E-6;
	x0(12) = 1.75027407369445E-5;
	x0(13) = 0.438768626591536;
	x0(14) = 5.88006568524737E-5;
	x0(15) = 8.80086553913515E-7;
	x0(16) = 0.015961020646031;
	x0(17) = 9.06918671945582;
	x0(18) = 0.930813280544178;
	x0(19) = 28.1011462455689;
	x0(20) = 1.51063415282403;
	x0(21) = 74.1039387714523;
	x0(22) = 5.58113535879753;
	x0(23) = 0.00209599327398083;
	x0(24) = -1.40627697813568E-27;
	x0(25) = 1.08229088508198E-27;
	x0(26) = 1.0E-26;
	x0(27) = 2.37592804897571E-5;
	x0(28) = 0.437466744395661;
	x0(29) = 1.794860923584E-6;
	x0(30) = 0.0207923272427145;
	x0(31) = 8.76987224478195;
	x0(32) = 1.23012775521805;
	x0(33) = 36.1475993924768;
	x0(34) = 1.51017985268264;
	x0(35) = 7.43306813085487E-4;
	x0(36) = 5.58075296241649;
	x0(37) = 0.00247838965501352;
	x0(38) = 1.0E-26;
	x0(39) = 1.04407998182156E-26;
	x0(40) = -2.42821658464018E-27;
	x0(41) = 1.0E-26;


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

% Compartment: id = mw53ffe9e6_beef_45c4_90a5_a79197ed506e, name = serum, constant
	compartment_mw53ffe9e6_beef_45c4_90a5_a79197ed506e=1.0;
% Compartment: id = mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e, name = liver, constant
	compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e=1.0;
% Compartment: id = mwe9501423_9fb4_494b_b5b6_288f3fcb17b5, name = gut, constant
	compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5=1.0;
% Compartment: id = mw8fbcbf3b_47d8_4adc_8ad4_f9fc547d3e87, name = peripheral, constant
	compartment_mw8fbcbf3b_47d8_4adc_8ad4_f9fc547d3e87=1.0;
% Parameter:   id =  kRLOn, name = kRLOn
	global_par_kRLOn=0.384;
% Parameter:   id =  kRLOff, name = kRLOff
	global_par_kRLOff=1.92;
% Parameter:   id =  kgp130On, name = kgp130On
	global_par_kgp130On=20.52;
% Parameter:   id =  kgp130Off, name = kgp130Off
	global_par_kgp130Off=1.026;
% Parameter:   id =  kRAct, name = kRAct
	global_par_kRAct=155.0;
% Parameter:   id =  kRint, name = kRint
	global_par_kRint=1.96;
% Parameter:   id =  kRsynth, name = kRsynth
	global_par_kRsynth=0.0685;
% Parameter:   id =  kRdeg, name = kRintBasal
	global_par_kRdeg=0.1561;
% Parameter:   id =  kIL6Synth, name = ksynthIL6
	global_par_kIL6Synth=0.0011;
% Parameter:   id =  kIL6Decay, name = kdegIL6
	global_par_kIL6Decay=34.82;
% Parameter:   id =  kCRPDecay, name = kdegCRP
	global_par_kCRPDecay=0.36;
% Parameter:   id =  mwfd291862_195f_4979_94b5_b4e5ae1b7d52, name = KmSTATDephos
	global_par_mwfd291862_195f_4979_94b5_b4e5ae1b7d52=5.34;
% Parameter:   id =  mwd36b0261_2480_4cab_9222_2cf8fb0e65dc, name = VmSTATDephos
	global_par_mwd36b0261_2480_4cab_9222_2cf8fb0e65dc=0.62;
% Parameter:   id =  mw1667a8e0_9d20_4e59_ba51_596148aba787, name = VmRDephos
	global_par_mw1667a8e0_9d20_4e59_ba51_596148aba787=0.525;
% Parameter:   id =  mwfcf06900_5f2f_4bb3_bb1f_12023612b8a8, name = KmRDephos
	global_par_mwfcf06900_5f2f_4bb3_bb1f_12023612b8a8=155.3;
% Parameter:   id =  mw9442cd0e_4d7c_4ba6_a695_f84919bdf569, name = kcatSTATPhos
	global_par_mw9442cd0e_4d7c_4ba6_a695_f84919bdf569=145.0;
% Parameter:   id =  mwe8fc1900_f07d_468b_b5c8_15400a583c3d, name = KmSTATPhos
	global_par_mwe8fc1900_f07d_468b_b5c8_15400a583c3d=219.0;
% Parameter:   id =  mw08950572_81b0_4570_b2e4_b9c3462c1425, name = KmProtSynth
	global_par_mw08950572_81b0_4570_b2e4_b9c3462c1425=10.0;
% Parameter:   id =  mw92d854a7_8aaf_458e_b5e2_20a63ce9b654, name = VmProtSynth
	global_par_mw92d854a7_8aaf_458e_b5e2_20a63ce9b654=330.0;
% Parameter:   id =  mw862f1480_c60c_4863_a565_b2c1c77e238e, name = kCRPSecretion
	global_par_mw862f1480_c60c_4863_a565_b2c1c77e238e=0.5;
% Parameter:   id =  mw65c85954_5ca0_4df2_9e22_ff2aa3fbe3f1, name = ksynthCRP
	global_par_mw65c85954_5ca0_4df2_9e22_ff2aa3fbe3f1=0.42;
% Parameter:   id =  mwc4c58db7_5535_4590_aaa5_bbc8ed53cdab, name = ksynthsR
	global_par_mwc4c58db7_5535_4590_aaa5_bbc8ed53cdab=0.1;
% Parameter:   id =  mw88a75379_f9a1_4acc_baeb_94c32bb736a5, name = kdegsR
	global_par_mw88a75379_f9a1_4acc_baeb_94c32bb736a5=0.3;
% Parameter:   id =  mw1f41474c_c399_4a60_a53a_9926dd092e8d, name = ksynthsgp130
	global_par_mw1f41474c_c399_4a60_a53a_9926dd092e8d=3.9;
% Parameter:   id =  mwbcb5a310_9b67_405e_89ec_43d25e8cc93d, name = kdegsgp130
	global_par_mwbcb5a310_9b67_405e_89ec_43d25e8cc93d=1.0;
% Parameter:   id =  mwa8d72918_f6c2_4d81_bf3b_fc2b464d5e69, name = ksynthIL6Gut
	global_par_mwa8d72918_f6c2_4d81_bf3b_fc2b464d5e69=0.0017;
% Parameter:   id =  mw06241335_b5f2_47ed_bdcc_ef77b68a2b98, name = kdegIL6Gut
	global_par_mw06241335_b5f2_47ed_bdcc_ef77b68a2b98=1.0;
% Parameter:   id =  mwce10678d_8197_408c_ad47_1daec8104cd8, name = kdistTissueToSerum
	global_par_mwce10678d_8197_408c_ad47_1daec8104cd8=0.8473;
% Parameter:   id =  mwc67e1333_079a_4bea_9b4f_0a1b15ddd7bb, name = kdistSerumToTissue
	global_par_mwc67e1333_079a_4bea_9b4f_0a1b15ddd7bb=1.2125;
% Parameter:   id =  mw5832a2dc_ee18_44df_aa59_ccb21cb74df2, name = kRShedding
	global_par_mw5832a2dc_ee18_44df_aa59_ccb21cb74df2=0.0054;
% Parameter:   id =  mwf44f7f27_5bb1_4c7f_8964_560fa5e1743a, name = kintActiveR
	global_par_mwf44f7f27_5bb1_4c7f_8964_560fa5e1743a=0.01;
% Parameter:   id =  mwa09d6284_843e_404e_abbb_052fbb535197, name = kIL6AbBind
	global_par_mwa09d6284_843e_404e_abbb_052fbb535197=1000.0;
% Parameter:   id =  mw1c4bc9c3_52ad_4ef7_bf7f_97b0e2101ead, name = kIL6AbUnbind
	global_par_mw1c4bc9c3_52ad_4ef7_bf7f_97b0e2101ead=2.5;
% Parameter:   id =  mw640ca705_e089_4c64_a5f4_9562317e8c76, name = kAbSerumToLiver
	global_par_mw640ca705_e089_4c64_a5f4_9562317e8c76=0.0208333333333333;
% Parameter:   id =  mw43ccad8c_cabf_4eaf_90d5_e06ae43be2cb, name = kAbLiverToSerum
	global_par_mw43ccad8c_cabf_4eaf_90d5_e06ae43be2cb=0.0208333333333333;
% Parameter:   id =  mw9f83bdd3_3aa1_47ff_abd6_54e5ce60704a, name = kAbSerumToGut
	global_par_mw9f83bdd3_3aa1_47ff_abd6_54e5ce60704a=0.0104166666666667;
% Parameter:   id =  mwa071fdbe_d498_4620_a7a4_940aa31c8161, name = kAbGutToSerum
	global_par_mwa071fdbe_d498_4620_a7a4_940aa31c8161=0.0208333333333333;
% Parameter:   id =  mw2c605ff5_50f5_45f2_a70c_53fcd866d14c, name = VSerum
	global_par_mw2c605ff5_50f5_45f2_a70c_53fcd866d14c=2.88;
% Parameter:   id =  mwc691d0d1_8c1b_4ce4_85c6_1315c42e97b1, name = VLiver
	global_par_mwc691d0d1_8c1b_4ce4_85c6_1315c42e97b1=2.88;
% Parameter:   id =  mwa8283449_0e21_41a1_baac_ebf697b3555a, name = VGut
	global_par_mwa8283449_0e21_41a1_baac_ebf697b3555a=1.44;
% Parameter:   id =  mw6729db10_c577_4319_b355_2e3f11c0f942, name = VPeriph
	global_par_mw6729db10_c577_4319_b355_2e3f11c0f942=0.576;
% Parameter:   id =  mw434adaf5_cef0_4a33_9ad2_a4e49e1fd825, name = QSerumLiver
	global_par_mw434adaf5_cef0_4a33_9ad2_a4e49e1fd825=0.06;
% Parameter:   id =  mw6a5e10a9_d442_4dde_8ec3_6a26c9807374, name = QSerumGut
	global_par_mw6a5e10a9_d442_4dde_8ec3_6a26c9807374=0.03;
% Parameter:   id =  mw1366c3b5_e79b_44a7_93cc_ee09d383eabf, name = QSerumPeriph
	global_par_mw1366c3b5_e79b_44a7_93cc_ee09d383eabf=0.001;
% Parameter:   id =  mwf67caf9d_2f4b_4986_abf2_e6090bbb72ce, name = kAbSerumToPeriph
	global_par_mwf67caf9d_2f4b_4986_abf2_e6090bbb72ce=3.47222222222222E-4;
% Parameter:   id =  mw4aea26f6_8860_414c_97f5_40d325196f2e, name = kAbPeriphToSerum
	global_par_mw4aea26f6_8860_414c_97f5_40d325196f2e=0.00173611111111111;
% Parameter:   id =  mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30, name = kdegAb
	global_par_mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30=0.0018;
% Parameter:   id =  mw427cd601_2c01_42ea_85dc_ab7c5a601fd8, name = infusionTime
	global_par_mw427cd601_2c01_42ea_85dc_ab7c5a601fd8=1.0;
% Parameter:   id =  parameter_1, name = Dose
	global_par_parameter_1=100.0;
% Parameter:   id =  Metabolite_6, name = Initial for Ab
	global_par_Metabolite_6=1.0E-26;
% Parameter:   id =  ModelValue_48, name = Initial for Dose
	global_par_ModelValue_48=100.0;
% assignmentRule: variable = mw0083d743_836f_4238_a17f_4602193d5bc0
	x(33)=global_par_mw92d854a7_8aaf_458e_b5e2_20a63ce9b654*x(32)/(global_par_mw08950572_81b0_4570_b2e4_b9c3462c1425+x(32));
% assignmentRule: variable = mwd5313618_89eb_4c8c_bc82_66f10f966349
	x(19)=global_par_mw92d854a7_8aaf_458e_b5e2_20a63ce9b654*x(18)/(global_par_mw08950572_81b0_4570_b2e4_b9c3462c1425+x(18));

% Reaction: id = reaction_1, name = reaction_1
	reaction_reaction_1=compartment_mw53ffe9e6_beef_45c4_90a5_a79197ed506e*function_1(global_par_kRLOff, global_par_kRLOn, x(6), x(5), compartment_mw53ffe9e6_beef_45c4_90a5_a79197ed506e, x(1));

% Reaction: id = reaction_2, name = reaction_2
	reaction_reaction_2=compartment_mw53ffe9e6_beef_45c4_90a5_a79197ed506e*function_2(global_par_kgp130Off, global_par_kgp130On, x(6), compartment_mw53ffe9e6_beef_45c4_90a5_a79197ed506e, x(3), x(2));

% Reaction: id = reaction_3, name = reaction_3
	reaction_reaction_3=compartment_mw53ffe9e6_beef_45c4_90a5_a79197ed506e*function_3(global_par_kIL6Synth, compartment_mw53ffe9e6_beef_45c4_90a5_a79197ed506e);

% Reaction: id = reaction_4, name = reaction_4
	reaction_reaction_4=compartment_mw53ffe9e6_beef_45c4_90a5_a79197ed506e*function_4(global_par_kIL6Decay, compartment_mw53ffe9e6_beef_45c4_90a5_a79197ed506e, x(1));

% Reaction: id = reaction_5, name = reaction_5
	reaction_reaction_5=compartment_mw53ffe9e6_beef_45c4_90a5_a79197ed506e*function_5(global_par_kCRPDecay, x(4), compartment_mw53ffe9e6_beef_45c4_90a5_a79197ed506e);

% Reaction: id = reaction_6, name = reaction_6
	reaction_reaction_6=compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e*function_6(global_par_kgp130Off, global_par_kgp130On, x(12), x(10), compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e, x(11));

% Reaction: id = reaction_7, name = reaction_7
	reaction_reaction_7=compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e*function_7(global_par_kRLOff, global_par_kRLOn, x(14), x(13), x(15), compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e);

% Reaction: id = reaction_8, name = reaction_8
	reaction_reaction_8=compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e*function_8(global_par_kgp130Off, global_par_kgp130On, x(15), x(10), compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e, x(11));

% Reaction: id = reaction_16, name = reaction_16
	reaction_reaction_16=compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e*function_9(global_par_kRAct, compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e, x(11));

% Reaction: id = reaction_9, name = reaction_9
	reaction_reaction_9=compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e*function_10(x(16), x(17), compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e, global_par_mw9442cd0e_4d7c_4ba6_a695_f84919bdf569, global_par_mwe8fc1900_f07d_468b_b5c8_15400a583c3d);

% Reaction: id = reaction_10, name = reaction_10
	reaction_reaction_10=compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e*function_11(x(18), compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e, global_par_mwd36b0261_2480_4cab_9222_2cf8fb0e65dc, global_par_mwfd291862_195f_4979_94b5_b4e5ae1b7d52);

% Reaction: id = reaction_15, name = reaction_15
	reaction_reaction_15=compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e*function_12(global_par_kRdeg, x(13), compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e);

% Reaction: id = reaction_11, name = reaction_11
	reaction_reaction_11=compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e*function_13(global_par_kRint, x(15), compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e);

% Reaction: id = reaction_12, name = reaction_12
	reaction_reaction_12=compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e*function_14(global_par_kRint, compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e, x(11));

% Reaction: id = reaction_13, name = reaction_13
	reaction_reaction_13=compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e*function_15(x(16), compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e, global_par_mwf44f7f27_5bb1_4c7f_8964_560fa5e1743a);

% Reaction: id = reaction_14, name = reaction_14
	reaction_reaction_14=compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e*function_16(global_par_kRsynth, compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e);

% Reaction: id = reaction_41, name = reaction_41
	reaction_reaction_41=compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5*function_17(global_par_kgp130Off, global_par_kgp130On, x(27), x(29), x(28), compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5);

% Reaction: id = reaction_46, name = reaction_46
	reaction_reaction_46=compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5*function_18(global_par_kRAct, x(29), compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5);

% Reaction: id = reaction_42, name = reaction_42
	reaction_reaction_42=compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5*function_19(x(31), x(30), global_par_mw9442cd0e_4d7c_4ba6_a695_f84919bdf569, global_par_mwe8fc1900_f07d_468b_b5c8_15400a583c3d, compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5);

% Reaction: id = reaction_43, name = reaction_43
	reaction_reaction_43=compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5*function_20(x(32), global_par_mwd36b0261_2480_4cab_9222_2cf8fb0e65dc, compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5, global_par_mwfd291862_195f_4979_94b5_b4e5ae1b7d52);

% Reaction: id = reaction_44, name = reaction_44
	reaction_reaction_44=compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5*function_21(global_par_kRint, x(29), compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5);

% Reaction: id = reaction_45, name = reaction_45
	reaction_reaction_45=compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5*function_22(x(30), compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5, global_par_mwf44f7f27_5bb1_4c7f_8964_560fa5e1743a);

% Reaction: id = mwb675e13a_26c0_4b18_a8c3_0f5a62090ba4, name = mwb675e13a_26c0_4b18_a8c3_0f5a62090ba4
	reaction_mwb675e13a_26c0_4b18_a8c3_0f5a62090ba4=compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e*function_23(x(16), global_par_mw1667a8e0_9d20_4e59_ba51_596148aba787, compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e, global_par_mwfcf06900_5f2f_4bb3_bb1f_12023612b8a8);

% Reaction: id = mw64df7c9e_35da_4c7f_be56_c5dabfb060b6, name = mw64df7c9e_35da_4c7f_be56_c5dabfb060b6
	reaction_mw64df7c9e_35da_4c7f_be56_c5dabfb060b6=compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5*function_24(global_par_mw1667a8e0_9d20_4e59_ba51_596148aba787, x(30), compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5, global_par_mwfcf06900_5f2f_4bb3_bb1f_12023612b8a8);

% Reaction: id = mw391f3b8e_5649_4851_b2e2_782cb3e015b6, name = mw391f3b8e_5649_4851_b2e2_782cb3e015b6
	reaction_mw391f3b8e_5649_4851_b2e2_782cb3e015b6=compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e*function_25(global_par_kRsynth, compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e);

% Reaction: id = mw4a00a3a4_778f_4952_8100_2dc3cc2b7046, name = mw4a00a3a4_778f_4952_8100_2dc3cc2b7046
	reaction_mw4a00a3a4_778f_4952_8100_2dc3cc2b7046=compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e*function_26(global_par_kRdeg, x(10), compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e);

% Reaction: id = mw6db30657_4e56_4c3a_8575_9c67393dde4f, name = mw6db30657_4e56_4c3a_8575_9c67393dde4f
	reaction_mw6db30657_4e56_4c3a_8575_9c67393dde4f=compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5*function_27(global_par_kRsynth, compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5);

% Reaction: id = mw6f470e13_f0e4_4294_83d8_59dd5670d10c, name = mw6f470e13_f0e4_4294_83d8_59dd5670d10c
	reaction_mw6f470e13_f0e4_4294_83d8_59dd5670d10c=compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5*function_28(global_par_kRdeg, x(28), compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5);

% Reaction: id = mwfb35eca9_7afc_4ba8_a46c_738cab57eb9f, name = mwfb35eca9_7afc_4ba8_a46c_738cab57eb9f
	reaction_mwfb35eca9_7afc_4ba8_a46c_738cab57eb9f=global_par_mwc67e1333_079a_4bea_9b4f_0a1b15ddd7bb*x(5)-global_par_mwce10678d_8197_408c_ad47_1daec8104cd8*x(34);

% Reaction: id = mw61d2af92_6da5_41ce_b90e_aa6f430e6ba1, name = mw61d2af92_6da5_41ce_b90e_aa6f430e6ba1
	reaction_mw61d2af92_6da5_41ce_b90e_aa6f430e6ba1=global_par_mwc67e1333_079a_4bea_9b4f_0a1b15ddd7bb*x(1)-global_par_mwce10678d_8197_408c_ad47_1daec8104cd8*x(35);

% Reaction: id = mw4c099d5c_200f_474e_8ec1_59e9223a8afd, name = mw4c099d5c_200f_474e_8ec1_59e9223a8afd
	reaction_mw4c099d5c_200f_474e_8ec1_59e9223a8afd=compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5*function_29(global_par_kRLOff, global_par_kRLOn, x(35), x(27), x(34), compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5);

% Reaction: id = mwbe8567ce_3349_4442_8b12_53cd9bc168e7, name = mwbe8567ce_3349_4442_8b12_53cd9bc168e7
	reaction_mwbe8567ce_3349_4442_8b12_53cd9bc168e7=global_par_mwc67e1333_079a_4bea_9b4f_0a1b15ddd7bb*x(6)-global_par_mwce10678d_8197_408c_ad47_1daec8104cd8*x(27);

% Reaction: id = mw12a9fa7e_a273_4c1e_b970_ed33f3a9a705, name = mw12a9fa7e_a273_4c1e_b970_ed33f3a9a705
	reaction_mw12a9fa7e_a273_4c1e_b970_ed33f3a9a705=global_par_mwc67e1333_079a_4bea_9b4f_0a1b15ddd7bb*x(5)-global_par_mwce10678d_8197_408c_ad47_1daec8104cd8*x(20);

% Reaction: id = mw1046000b_e1e8_4f6f_82a1_532d2aa793bb, name = mw1046000b_e1e8_4f6f_82a1_532d2aa793bb
	reaction_mw1046000b_e1e8_4f6f_82a1_532d2aa793bb=global_par_mwc67e1333_079a_4bea_9b4f_0a1b15ddd7bb*x(1)-global_par_mwce10678d_8197_408c_ad47_1daec8104cd8*x(14);

% Reaction: id = mw8e8b65a8_6830_4091_9a40_19645e8fe554, name = mw8e8b65a8_6830_4091_9a40_19645e8fe554
	reaction_mw8e8b65a8_6830_4091_9a40_19645e8fe554=global_par_mwc67e1333_079a_4bea_9b4f_0a1b15ddd7bb*x(6)-global_par_mwce10678d_8197_408c_ad47_1daec8104cd8*x(12);

% Reaction: id = mwa812f08f_1035_42bd_82d2_72d691308f88, name = mwa812f08f_1035_42bd_82d2_72d691308f88
	reaction_mwa812f08f_1035_42bd_82d2_72d691308f88=compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e*function_30(global_par_kRLOff, global_par_kRLOn, x(14), x(20), x(12), compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e);

% Reaction: id = mwab0012ac_e5f2_4904_9893_820fd210402e, name = mwab0012ac_e5f2_4904_9893_820fd210402e
	reaction_mwab0012ac_e5f2_4904_9893_820fd210402e=compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e*function_31(global_par_mw862f1480_c60c_4863_a565_b2c1c77e238e, compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e, x(19));

% Reaction: id = mwcdc24bd4_d9e4_47fe_8300_d222d853111c, name = mwcdc24bd4_d9e4_47fe_8300_d222d853111c
	reaction_mwcdc24bd4_d9e4_47fe_8300_d222d853111c=global_par_mwc67e1333_079a_4bea_9b4f_0a1b15ddd7bb*x(4)-global_par_mwce10678d_8197_408c_ad47_1daec8104cd8*x(21);

% Reaction: id = mwff2ebcf1_dcf1_47b9_9cac_7306fc6f7f76, name = mwff2ebcf1_dcf1_47b9_9cac_7306fc6f7f76
	reaction_mwff2ebcf1_dcf1_47b9_9cac_7306fc6f7f76=compartment_mw53ffe9e6_beef_45c4_90a5_a79197ed506e*function_32(compartment_mw53ffe9e6_beef_45c4_90a5_a79197ed506e, global_par_mw65c85954_5ca0_4df2_9e22_ff2aa3fbe3f1);

% Reaction: id = mw1c5a5ff7_5130_490f_a740_6a744ccf8a94, name = mw1c5a5ff7_5130_490f_a740_6a744ccf8a94
	reaction_mw1c5a5ff7_5130_490f_a740_6a744ccf8a94=global_par_mwc67e1333_079a_4bea_9b4f_0a1b15ddd7bb*x(2)-global_par_mwce10678d_8197_408c_ad47_1daec8104cd8*x(36);

% Reaction: id = mw7b56053c_7256_4703_a8c3_4fd46b2c23d0, name = mw7b56053c_7256_4703_a8c3_4fd46b2c23d0
	reaction_mw7b56053c_7256_4703_a8c3_4fd46b2c23d0=global_par_mwc67e1333_079a_4bea_9b4f_0a1b15ddd7bb*x(2)-global_par_mwce10678d_8197_408c_ad47_1daec8104cd8*x(22);

% Reaction: id = mw8be158f1_ea81_45bf_80d4_6e31cd83fe6c, name = mw8be158f1_ea81_45bf_80d4_6e31cd83fe6c
	reaction_mw8be158f1_ea81_45bf_80d4_6e31cd83fe6c=compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5*function_33(global_par_kgp130Off, global_par_kgp130On, x(37), x(27), x(36), compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5);

% Reaction: id = mwd77df15b_fed7_41a8_a3d6_b0f6c590c5f6, name = mwd77df15b_fed7_41a8_a3d6_b0f6c590c5f6
	reaction_mwd77df15b_fed7_41a8_a3d6_b0f6c590c5f6=compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e*function_34(global_par_kgp130Off, global_par_kgp130On, x(22), x(12), compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e, x(23));

% Reaction: id = mw01babcdf_0f03_46b0_81b1_201cc846e361, name = mw01babcdf_0f03_46b0_81b1_201cc846e361
	reaction_mw01babcdf_0f03_46b0_81b1_201cc846e361=global_par_mwc67e1333_079a_4bea_9b4f_0a1b15ddd7bb*x(3)-global_par_mwce10678d_8197_408c_ad47_1daec8104cd8*x(37);

% Reaction: id = mwae5dbb44_7de5_46ab_8c20_ac4f8956b0f0, name = mwae5dbb44_7de5_46ab_8c20_ac4f8956b0f0
	reaction_mwae5dbb44_7de5_46ab_8c20_ac4f8956b0f0=global_par_mwc67e1333_079a_4bea_9b4f_0a1b15ddd7bb*x(3)-global_par_mwce10678d_8197_408c_ad47_1daec8104cd8*x(23);

% Reaction: id = mw432fde6e_59ab_47f0_9fb1_086433a602e3, name = mw432fde6e_59ab_47f0_9fb1_086433a602e3
	reaction_mw432fde6e_59ab_47f0_9fb1_086433a602e3=compartment_mw53ffe9e6_beef_45c4_90a5_a79197ed506e*function_35(compartment_mw53ffe9e6_beef_45c4_90a5_a79197ed506e, global_par_mwc4c58db7_5535_4590_aaa5_bbc8ed53cdab);

% Reaction: id = mw41c27823_d7ee_4554_9eac_3d5beec8e854, name = mw41c27823_d7ee_4554_9eac_3d5beec8e854
	reaction_mw41c27823_d7ee_4554_9eac_3d5beec8e854=compartment_mw53ffe9e6_beef_45c4_90a5_a79197ed506e*function_36(x(5), compartment_mw53ffe9e6_beef_45c4_90a5_a79197ed506e, global_par_mw88a75379_f9a1_4acc_baeb_94c32bb736a5);

% Reaction: id = mw50c6744c_e883_4612_8663_e38750cbad1b, name = mw50c6744c_e883_4612_8663_e38750cbad1b
	reaction_mw50c6744c_e883_4612_8663_e38750cbad1b=compartment_mw53ffe9e6_beef_45c4_90a5_a79197ed506e*function_37(global_par_mw1f41474c_c399_4a60_a53a_9926dd092e8d, compartment_mw53ffe9e6_beef_45c4_90a5_a79197ed506e);

% Reaction: id = mwb6a99eb5_ea4c_4733_98dd_1daf5ec6b0db, name = mwb6a99eb5_ea4c_4733_98dd_1daf5ec6b0db
	reaction_mwb6a99eb5_ea4c_4733_98dd_1daf5ec6b0db=compartment_mw53ffe9e6_beef_45c4_90a5_a79197ed506e*function_38(compartment_mw53ffe9e6_beef_45c4_90a5_a79197ed506e, x(2), global_par_mwbcb5a310_9b67_405e_89ec_43d25e8cc93d);

% Reaction: id = mw1ce0c484_681f_4d85_8ffe_392d0c100cfa, name = mw1ce0c484_681f_4d85_8ffe_392d0c100cfa
	reaction_mw1ce0c484_681f_4d85_8ffe_392d0c100cfa=compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5*function_39(global_par_mwa8d72918_f6c2_4d81_bf3b_fc2b464d5e69, compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5);

% Reaction: id = mwf913ea0b_785a_4701_ac91_b18ab5dd5a89, name = mwf913ea0b_785a_4701_ac91_b18ab5dd5a89
	reaction_mwf913ea0b_785a_4701_ac91_b18ab5dd5a89=compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5*function_40(global_par_mw06241335_b5f2_47ed_bdcc_ef77b68a2b98, x(35), compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5);

% Reaction: id = mw71d90b81_8211_4039_8807_12a7fe03206c, name = mw71d90b81_8211_4039_8807_12a7fe03206c
	reaction_mw71d90b81_8211_4039_8807_12a7fe03206c=compartment_mw53ffe9e6_beef_45c4_90a5_a79197ed506e*function_41(x(4), compartment_mw53ffe9e6_beef_45c4_90a5_a79197ed506e, global_par_mw5832a2dc_ee18_44df_aa59_ccb21cb74df2);

% Reaction: id = mwdf4ba845_7271_4ada_b43f_fdac83df3b5c, name = mwdf4ba845_7271_4ada_b43f_fdac83df3b5c
	reaction_mwdf4ba845_7271_4ada_b43f_fdac83df3b5c=global_par_mwf67caf9d_2f4b_4986_abf2_e6090bbb72ce*x(7)-global_par_mw4aea26f6_8860_414c_97f5_40d325196f2e*x(41);

% Reaction: id = mwb1879013_5fcd_490c_8b01_eaf84df15b9a, name = mwb1879013_5fcd_490c_8b01_eaf84df15b9a
	reaction_mwb1879013_5fcd_490c_8b01_eaf84df15b9a=compartment_mw53ffe9e6_beef_45c4_90a5_a79197ed506e*function_42(global_par_mw1c4bc9c3_52ad_4ef7_bf7f_97b0e2101ead, x(8), compartment_mw53ffe9e6_beef_45c4_90a5_a79197ed506e, global_par_mwa09d6284_843e_404e_abbb_052fbb535197, x(7), x(1));

% Reaction: id = mw30abb016_4300_4f40_a1b3_f865d0a45707, name = mw30abb016_4300_4f40_a1b3_f865d0a45707
	reaction_mw30abb016_4300_4f40_a1b3_f865d0a45707=compartment_mw53ffe9e6_beef_45c4_90a5_a79197ed506e*function_43(x(8), compartment_mw53ffe9e6_beef_45c4_90a5_a79197ed506e, global_par_mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30);

% Reaction: id = mw14d351b9_623a_48e8_a21c_854411039120, name = mw14d351b9_623a_48e8_a21c_854411039120
	reaction_mw14d351b9_623a_48e8_a21c_854411039120=compartment_mw53ffe9e6_beef_45c4_90a5_a79197ed506e*function_44(compartment_mw53ffe9e6_beef_45c4_90a5_a79197ed506e, x(9), global_par_mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30);

% Reaction: id = mwba7f4605_8571_439b_b3ab_eb0b43808db8, name = mwba7f4605_8571_439b_b3ab_eb0b43808db8
	reaction_mwba7f4605_8571_439b_b3ab_eb0b43808db8=compartment_mw53ffe9e6_beef_45c4_90a5_a79197ed506e*function_45(compartment_mw53ffe9e6_beef_45c4_90a5_a79197ed506e, global_par_mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30, x(7));

% Reaction: id = mw5be6711a_526a_4a58_80c6_d353dcabdf87, name = mw5be6711a_526a_4a58_80c6_d353dcabdf87
	reaction_mw5be6711a_526a_4a58_80c6_d353dcabdf87=compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5*function_46(x(40), global_par_mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30, compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5);

% Reaction: id = mw8b4e96ed_0bcc_4ad6_b560_366e173a6e6b, name = mw8b4e96ed_0bcc_4ad6_b560_366e173a6e6b
	reaction_mw8b4e96ed_0bcc_4ad6_b560_366e173a6e6b=compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5*function_47(x(39), global_par_mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30, compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5);

% Reaction: id = mwa3cb4a9b_d628_4807_8847_bdcd9b40c7f1, name = mwa3cb4a9b_d628_4807_8847_bdcd9b40c7f1
	reaction_mwa3cb4a9b_d628_4807_8847_bdcd9b40c7f1=compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5*function_48(global_par_mw1c4bc9c3_52ad_4ef7_bf7f_97b0e2101ead, x(35), x(39), global_par_mwa09d6284_843e_404e_abbb_052fbb535197, compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5, x(38));

% Reaction: id = mw8fb6c0a7_b05d_4c2a_8866_77eb81f063d1, name = mw8fb6c0a7_b05d_4c2a_8866_77eb81f063d1
	reaction_mw8fb6c0a7_b05d_4c2a_8866_77eb81f063d1=compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e*function_49(x(14), global_par_mw1c4bc9c3_52ad_4ef7_bf7f_97b0e2101ead, x(26), compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e, global_par_mwa09d6284_843e_404e_abbb_052fbb535197, x(25));

% Reaction: id = mw3e76b10b_5420_4828_8c70_b91b767132d0, name = mw3e76b10b_5420_4828_8c70_b91b767132d0
	reaction_mw3e76b10b_5420_4828_8c70_b91b767132d0=compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e*function_50(compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e, global_par_mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30, x(25));

% Reaction: id = mw5d9fcd0c_ca08_4444_b509_2ea4777e0025, name = mw5d9fcd0c_ca08_4444_b509_2ea4777e0025
	reaction_mw5d9fcd0c_ca08_4444_b509_2ea4777e0025=compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e*function_51(x(24), compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e, global_par_mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30);

% Reaction: id = mw131e3c9d_e77d_48c0_bdbb_77b2c10aaf3d, name = mw131e3c9d_e77d_48c0_bdbb_77b2c10aaf3d
	reaction_mw131e3c9d_e77d_48c0_bdbb_77b2c10aaf3d=global_par_mw640ca705_e089_4c64_a5f4_9562317e8c76*x(7)-global_par_mw43ccad8c_cabf_4eaf_90d5_e06ae43be2cb*x(26);

% Reaction: id = mw14940d1f_6a1f_47cb_8170_801ba645f4c1, name = mw14940d1f_6a1f_47cb_8170_801ba645f4c1
	reaction_mw14940d1f_6a1f_47cb_8170_801ba645f4c1=global_par_mw9f83bdd3_3aa1_47ff_abd6_54e5ce60704a*x(7)-global_par_mwa071fdbe_d498_4620_a7a4_940aa31c8161*x(38);

% Reaction: id = mwa2f4d966_ae2c_4ed2_b522_12755f12ff15, name = mwa2f4d966_ae2c_4ed2_b522_12755f12ff15
	reaction_mwa2f4d966_ae2c_4ed2_b522_12755f12ff15=global_par_mw640ca705_e089_4c64_a5f4_9562317e8c76*x(8)-global_par_mw43ccad8c_cabf_4eaf_90d5_e06ae43be2cb*x(25);

% Reaction: id = mwb62106e7_e959_4a1d_9a00_b36d4e19a48f, name = mwb62106e7_e959_4a1d_9a00_b36d4e19a48f
	reaction_mwb62106e7_e959_4a1d_9a00_b36d4e19a48f=global_par_mw640ca705_e089_4c64_a5f4_9562317e8c76*x(9)-global_par_mw43ccad8c_cabf_4eaf_90d5_e06ae43be2cb*x(24);

% Reaction: id = mw700e677e_d3b6_4a97_991f_279605a9abeb, name = mw700e677e_d3b6_4a97_991f_279605a9abeb
	reaction_mw700e677e_d3b6_4a97_991f_279605a9abeb=global_par_mw9f83bdd3_3aa1_47ff_abd6_54e5ce60704a*x(8)-global_par_mwa071fdbe_d498_4620_a7a4_940aa31c8161*x(39);

% Reaction: id = mwad648b6c_45ca_4f41_9747_06db1f6060fc, name = mwad648b6c_45ca_4f41_9747_06db1f6060fc
	reaction_mwad648b6c_45ca_4f41_9747_06db1f6060fc=global_par_mw9f83bdd3_3aa1_47ff_abd6_54e5ce60704a*x(9)-global_par_mwa071fdbe_d498_4620_a7a4_940aa31c8161*x(40);

% Reaction: id = mw2ae288ab_7d03_4a84_a024_c711ad2b77e6, name = mw2ae288ab_7d03_4a84_a024_c711ad2b77e6
	reaction_mw2ae288ab_7d03_4a84_a024_c711ad2b77e6=compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e*function_52(x(26), compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e, global_par_mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30);

% Reaction: id = mw9629d028_fcc0_4886_9e4d_36eecdb0381d, name = mw9629d028_fcc0_4886_9e4d_36eecdb0381d
	reaction_mw9629d028_fcc0_4886_9e4d_36eecdb0381d=compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5*function_53(global_par_mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30, compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5, x(38));

%Event: id=event_1
	event_event_1=time >= 0.1;

	if(event_event_1) 
		x(7)=x(7)+global_par_ModelValue_48*2.346;
	end

%Event: id=event_2
	event_event_2=time >= 672;

	if(event_event_2) 
		x(7)=x(7)+global_par_ModelValue_48*2.346;
	end

%Event: id=event_3
	event_event_3=time >= 1344;

	if(event_event_3) 
		x(7)=x(7)+global_par_ModelValue_48*2.346;
	end

%Event: id=event_4
	event_event_4=time >= 2016;

	if(event_event_4) 
		x(7)=global_par_Metabolite_6+global_par_ModelValue_48*2.346;
	end

	xdot=zeros(41,1);
	
% Species:   id = mwf626e95e_543f_41e4_aad4_c6bf60ab345b, name = IL6, affected by kineticLaw
	xdot(1) = (1/(compartment_mw53ffe9e6_beef_45c4_90a5_a79197ed506e))*((-1.0 * reaction_reaction_1) + ( 1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_4) + (-1.0 * reaction_mw61d2af92_6da5_41ce_b90e_aa6f430e6ba1) + (-1.0 * reaction_mw1046000b_e1e8_4f6f_82a1_532d2aa793bb) + (-1.0 * reaction_mwb1879013_5fcd_490c_8b01_eaf84df15b9a));
	
% Species:   id = mwbbbce920_e8dd_4320_9386_fc94bfb2fc99, name = sgp130, affected by kineticLaw
	xdot(2) = (1/(compartment_mw53ffe9e6_beef_45c4_90a5_a79197ed506e))*((-1.0 * reaction_reaction_2) + (-1.0 * reaction_mw1c5a5ff7_5130_490f_a740_6a744ccf8a94) + (-1.0 * reaction_mw7b56053c_7256_4703_a8c3_4fd46b2c23d0) + ( 1.0 * reaction_mw50c6744c_e883_4612_8663_e38750cbad1b) + (-1.0 * reaction_mwb6a99eb5_ea4c_4733_98dd_1daf5ec6b0db));
	
% Species:   id = mw810ff751_fa4e_4143_bd50_169b3e325e1e, name = sR_IL6_sgp130, affected by kineticLaw
	xdot(3) = (1/(compartment_mw53ffe9e6_beef_45c4_90a5_a79197ed506e))*(( 1.0 * reaction_reaction_2) + (-1.0 * reaction_mw01babcdf_0f03_46b0_81b1_201cc846e361) + (-1.0 * reaction_mwae5dbb44_7de5_46ab_8c20_ac4f8956b0f0));
	
% Species:   id = mw114aa90f_5f5b_4fe8_9406_361c8489b6a1, name = CRP, affected by kineticLaw
	xdot(4) = (1/(compartment_mw53ffe9e6_beef_45c4_90a5_a79197ed506e))*((-1.0 * reaction_reaction_5) + (-1.0 * reaction_mwcdc24bd4_d9e4_47fe_8300_d222d853111c) + ( 1.0 * reaction_mwff2ebcf1_dcf1_47b9_9cac_7306fc6f7f76) + (-1.0 * reaction_mw71d90b81_8211_4039_8807_12a7fe03206c) + ( 1.0 * reaction_mw71d90b81_8211_4039_8807_12a7fe03206c));
	
% Species:   id = mw30ae63db_6cd3_4b6f_93ad_3350cd360bcc, name = sR, affected by kineticLaw
	xdot(5) = (1/(compartment_mw53ffe9e6_beef_45c4_90a5_a79197ed506e))*((-1.0 * reaction_reaction_1) + (-1.0 * reaction_mwfb35eca9_7afc_4ba8_a46c_738cab57eb9f) + (-1.0 * reaction_mw12a9fa7e_a273_4c1e_b970_ed33f3a9a705) + ( 1.0 * reaction_mw432fde6e_59ab_47f0_9fb1_086433a602e3) + (-1.0 * reaction_mw41c27823_d7ee_4554_9eac_3d5beec8e854) + ( 1.0 * reaction_mw71d90b81_8211_4039_8807_12a7fe03206c));
	
% Species:   id = mw03db56ac_8dc6_4931_ae82_fef706d2ee3d, name = sR_IL6, affected by kineticLaw
	xdot(6) = (1/(compartment_mw53ffe9e6_beef_45c4_90a5_a79197ed506e))*(( 1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_2) + (-1.0 * reaction_mwbe8567ce_3349_4442_8b12_53cd9bc168e7) + (-1.0 * reaction_mw8e8b65a8_6830_4091_9a40_19645e8fe554));
	
% Species:   id = mwf345ed7a_0622_403c_b816_c8749a2c9ded, name = Ab, affected by kineticLaw
	xdot(7) = (1/(compartment_mw53ffe9e6_beef_45c4_90a5_a79197ed506e))*((-1.0 * reaction_mwdf4ba845_7271_4ada_b43f_fdac83df3b5c) + (-1.0 * reaction_mwb1879013_5fcd_490c_8b01_eaf84df15b9a) + (-1.0 * reaction_mwba7f4605_8571_439b_b3ab_eb0b43808db8) + (-1.0 * reaction_mw131e3c9d_e77d_48c0_bdbb_77b2c10aaf3d) + (-1.0 * reaction_mw14940d1f_6a1f_47cb_8170_801ba645f4c1));
	
% Species:   id = mw1da111f2_a036_4392_8512_015005bdcbb7, name = Ab_IL6, affected by kineticLaw
	xdot(8) = (1/(compartment_mw53ffe9e6_beef_45c4_90a5_a79197ed506e))*(( 1.0 * reaction_mwb1879013_5fcd_490c_8b01_eaf84df15b9a) + (-1.0 * reaction_mw30abb016_4300_4f40_a1b3_f865d0a45707) + (-1.0 * reaction_mwa2f4d966_ae2c_4ed2_b522_12755f12ff15) + (-1.0 * reaction_mw700e677e_d3b6_4a97_991f_279605a9abeb));
	
% Species:   id = mwa2d8dd1c_bb9a_4552_8738_e24671651c1d, name = Ab_sR_IL6, affected by kineticLaw
	xdot(9) = (1/(compartment_mw53ffe9e6_beef_45c4_90a5_a79197ed506e))*((-1.0 * reaction_mw14d351b9_623a_48e8_a21c_854411039120) + (-1.0 * reaction_mwb62106e7_e959_4a1d_9a00_b36d4e19a48f) + (-1.0 * reaction_mwad648b6c_45ca_4f41_9747_06db1f6060fc));
	
% Species:   id = mw80848184_e2dd_47ce_86d7_7a21479342bd, name = gp130, affected by kineticLaw
	xdot(10) = (1/(compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e))*((-1.0 * reaction_reaction_6) + (-1.0 * reaction_reaction_8) + ( 1.0 * reaction_mw391f3b8e_5649_4851_b2e2_782cb3e015b6) + (-1.0 * reaction_mw4a00a3a4_778f_4952_8100_2dc3cc2b7046));
	
% Species:   id = mwd2d9d93a_3bd1_4f17_bac1_baba9ef2d55a, name = R_IL6_gp130, affected by kineticLaw
	xdot(11) = (1/(compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e))*(( 1.0 * reaction_reaction_6) + ( 1.0 * reaction_reaction_8) + (-1.0 * reaction_reaction_16) + (-1.0 * reaction_reaction_12) + ( 1.0 * reaction_mwb675e13a_26c0_4b18_a8c3_0f5a62090ba4));
	
% Species:   id = mw4638f126_8cb8_4021_ab41_6ae195743ba0, name = sR_IL6, affected by kineticLaw
	xdot(12) = (1/(compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e))*((-1.0 * reaction_reaction_6) + ( 1.0 * reaction_mw8e8b65a8_6830_4091_9a40_19645e8fe554) + ( 1.0 * reaction_mwa812f08f_1035_42bd_82d2_72d691308f88) + (-1.0 * reaction_mwd77df15b_fed7_41a8_a3d6_b0f6c590c5f6));
	
% Species:   id = mw10315fa3_6f13_4618_bda8_a8694bd3c374, name = R, affected by kineticLaw
	xdot(13) = (1/(compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e))*((-1.0 * reaction_reaction_7) + (-1.0 * reaction_reaction_15) + ( 1.0 * reaction_reaction_14));
	
% Species:   id = mw0adf3eb4_a196_4c48_b10d_4e9e9faaf9e1, name = IL6, affected by kineticLaw
	xdot(14) = (1/(compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e))*((-1.0 * reaction_reaction_7) + ( 1.0 * reaction_mw1046000b_e1e8_4f6f_82a1_532d2aa793bb) + (-1.0 * reaction_mwa812f08f_1035_42bd_82d2_72d691308f88) + (-1.0 * reaction_mw8fb6c0a7_b05d_4c2a_8866_77eb81f063d1));
	
% Species:   id = mw7d86cc23_a1af_44c3_bdb9_71e9b1bb2a83, name = R_IL6, affected by kineticLaw
	xdot(15) = (1/(compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e))*(( 1.0 * reaction_reaction_7) + (-1.0 * reaction_reaction_8) + (-1.0 * reaction_reaction_11));
	
% Species:   id = mw0eb6c959_d408_45a0_a450_928b8c5876bb, name = Ractive, affected by kineticLaw
	xdot(16) = (1/(compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e))*(( 1.0 * reaction_reaction_16) + (-1.0 * reaction_reaction_9) + ( 1.0 * reaction_reaction_9) + (-1.0 * reaction_reaction_13) + (-1.0 * reaction_mwb675e13a_26c0_4b18_a8c3_0f5a62090ba4));
	
% Species:   id = mw42054cd7_17af_46da_970c_7f99151906ad, name = STAT3, affected by kineticLaw
	xdot(17) = (1/(compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e))*((-1.0 * reaction_reaction_9) + ( 1.0 * reaction_reaction_10));
	
% Species:   id = mw39c2e431_fdc3_4964_be29_6ca856620b1b, name = pSTAT3, affected by kineticLaw
	xdot(18) = (1/(compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e))*(( 1.0 * reaction_reaction_9) + (-1.0 * reaction_reaction_10));
	
% Species:   id = mwd5313618_89eb_4c8c_bc82_66f10f966349, name = CRP, involved in a rule 	xdot(19) = x(19);
	
% Species:   id = mw2e464cf3_a09c_4b7c_9f3c_06720016a48e, name = sR, affected by kineticLaw
	xdot(20) = (1/(compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e))*(( 1.0 * reaction_mw12a9fa7e_a273_4c1e_b970_ed33f3a9a705) + (-1.0 * reaction_mwa812f08f_1035_42bd_82d2_72d691308f88));
	
% Species:   id = mw36ea78c1_ed71_4def_96d3_857a442d7195, name = CRPExtracellular, affected by kineticLaw
	xdot(21) = (1/(compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e))*(( 1.0 * reaction_mwab0012ac_e5f2_4904_9893_820fd210402e) + ( 1.0 * reaction_mwcdc24bd4_d9e4_47fe_8300_d222d853111c));
	
% Species:   id = mw147d30ec_478e_4090_b496_128a131d29eb, name = sgp130, affected by kineticLaw
	xdot(22) = (1/(compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e))*(( 1.0 * reaction_mw7b56053c_7256_4703_a8c3_4fd46b2c23d0) + (-1.0 * reaction_mwd77df15b_fed7_41a8_a3d6_b0f6c590c5f6));
	
% Species:   id = mwab41493c_6349_45f1_a226_3030cfed0e06, name = sR_IL6_sgp130, affected by kineticLaw
	xdot(23) = (1/(compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e))*(( 1.0 * reaction_mwd77df15b_fed7_41a8_a3d6_b0f6c590c5f6) + ( 1.0 * reaction_mwae5dbb44_7de5_46ab_8c20_ac4f8956b0f0));
	
% Species:   id = mw1d9426a3_e1e9_49e0_ad77_eb6833be398a, name = Ab_sR_IL6, affected by kineticLaw
	xdot(24) = (1/(compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e))*((-1.0 * reaction_mw5d9fcd0c_ca08_4444_b509_2ea4777e0025) + ( 1.0 * reaction_mwb62106e7_e959_4a1d_9a00_b36d4e19a48f));
	
% Species:   id = mwf405687b_7401_44ec_a0d6_4a2b35c13e8a, name = Ab_IL6, affected by kineticLaw
	xdot(25) = (1/(compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e))*(( 1.0 * reaction_mw8fb6c0a7_b05d_4c2a_8866_77eb81f063d1) + (-1.0 * reaction_mw3e76b10b_5420_4828_8c70_b91b767132d0) + ( 1.0 * reaction_mwa2f4d966_ae2c_4ed2_b522_12755f12ff15));
	
% Species:   id = mw3667a5e1_02c9_44a0_acb4_b0431faa822d, name = Ab, affected by kineticLaw
	xdot(26) = (1/(compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e))*((-1.0 * reaction_mw8fb6c0a7_b05d_4c2a_8866_77eb81f063d1) + ( 1.0 * reaction_mw131e3c9d_e77d_48c0_bdbb_77b2c10aaf3d) + (-1.0 * reaction_mw2ae288ab_7d03_4a84_a024_c711ad2b77e6));
	
% Species:   id = mw7becb5fe_8da8_4285_a821_0d77ad811b62, name = sR_IL6, affected by kineticLaw
	xdot(27) = (1/(compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5))*((-1.0 * reaction_reaction_41) + ( 1.0 * reaction_mw4c099d5c_200f_474e_8ec1_59e9223a8afd) + ( 1.0 * reaction_mwbe8567ce_3349_4442_8b12_53cd9bc168e7) + (-1.0 * reaction_mw8be158f1_ea81_45bf_80d4_6e31cd83fe6c));
	
% Species:   id = mw8c9107e6_f51d_442d_b2dc_2bfdbb8482ca, name = gp130, affected by kineticLaw
	xdot(28) = (1/(compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5))*((-1.0 * reaction_reaction_41) + ( 1.0 * reaction_mw6db30657_4e56_4c3a_8575_9c67393dde4f) + (-1.0 * reaction_mw6f470e13_f0e4_4294_83d8_59dd5670d10c));
	
% Species:   id = mw824bc3d4_1ac3_4912_9b51_8f14ff1c96b9, name = R_IL6_gp130, affected by kineticLaw
	xdot(29) = (1/(compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5))*(( 1.0 * reaction_reaction_41) + (-1.0 * reaction_reaction_46) + (-1.0 * reaction_reaction_44) + ( 1.0 * reaction_mw64df7c9e_35da_4c7f_be56_c5dabfb060b6));
	
% Species:   id = mw6cce2109_0e32_4dd9_98ec_41173e8ef07d, name = Ractive, affected by kineticLaw
	xdot(30) = (1/(compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5))*(( 1.0 * reaction_reaction_46) + (-1.0 * reaction_reaction_42) + ( 1.0 * reaction_reaction_42) + (-1.0 * reaction_reaction_45) + (-1.0 * reaction_mw64df7c9e_35da_4c7f_be56_c5dabfb060b6));
	
% Species:   id = mw2b255f94_8018_4b99_bde8_918eeac45446, name = STAT3, affected by kineticLaw
	xdot(31) = (1/(compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5))*((-1.0 * reaction_reaction_42) + ( 1.0 * reaction_reaction_43));
	
% Species:   id = mw48867e93_f170_44e8_ac7a_185b23e1bf3b, name = pSTAT3, affected by kineticLaw
	xdot(32) = (1/(compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5))*(( 1.0 * reaction_reaction_42) + (-1.0 * reaction_reaction_43));
	
% Species:   id = mw0083d743_836f_4238_a17f_4602193d5bc0, name = geneProduct, involved in a rule 	xdot(33) = x(33);
	
% Species:   id = mwd31f52cc_04e7_40e0_885f_c7b2d9e62215, name = sR, affected by kineticLaw
	xdot(34) = (1/(compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5))*(( 1.0 * reaction_mwfb35eca9_7afc_4ba8_a46c_738cab57eb9f) + (-1.0 * reaction_mw4c099d5c_200f_474e_8ec1_59e9223a8afd));
	
% Species:   id = mw2c9b0499_3325_4394_8af3_bbf653a944a0, name = IL6, affected by kineticLaw
	xdot(35) = (1/(compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5))*(( 1.0 * reaction_mw61d2af92_6da5_41ce_b90e_aa6f430e6ba1) + (-1.0 * reaction_mw4c099d5c_200f_474e_8ec1_59e9223a8afd) + ( 1.0 * reaction_mw1ce0c484_681f_4d85_8ffe_392d0c100cfa) + (-1.0 * reaction_mwf913ea0b_785a_4701_ac91_b18ab5dd5a89) + (-1.0 * reaction_mwa3cb4a9b_d628_4807_8847_bdcd9b40c7f1));
	
% Species:   id = mwd65b5b39_dc1b_4e77_a999_67277a880e5e, name = sgp130, affected by kineticLaw
	xdot(36) = (1/(compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5))*(( 1.0 * reaction_mw1c5a5ff7_5130_490f_a740_6a744ccf8a94) + (-1.0 * reaction_mw8be158f1_ea81_45bf_80d4_6e31cd83fe6c));
	
% Species:   id = mw6335d5d7_c7b0_4bc0_b883_f7ee4915c2c3, name = sR_IL6_sgp130, affected by kineticLaw
	xdot(37) = (1/(compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5))*(( 1.0 * reaction_mw8be158f1_ea81_45bf_80d4_6e31cd83fe6c) + ( 1.0 * reaction_mw01babcdf_0f03_46b0_81b1_201cc846e361));
	
% Species:   id = mwf7796221_1fea_4274_a93e_c00adbf5778c, name = Ab, affected by kineticLaw
	xdot(38) = (1/(compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5))*((-1.0 * reaction_mwa3cb4a9b_d628_4807_8847_bdcd9b40c7f1) + ( 1.0 * reaction_mw14940d1f_6a1f_47cb_8170_801ba645f4c1) + (-1.0 * reaction_mw9629d028_fcc0_4886_9e4d_36eecdb0381d));
	
% Species:   id = mw5d764bb8_5693_4ac8_9557_f65992cc5eb0, name = Ab_IL6, affected by kineticLaw
	xdot(39) = (1/(compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5))*((-1.0 * reaction_mw8b4e96ed_0bcc_4ad6_b560_366e173a6e6b) + ( 1.0 * reaction_mwa3cb4a9b_d628_4807_8847_bdcd9b40c7f1) + ( 1.0 * reaction_mw700e677e_d3b6_4a97_991f_279605a9abeb));
	
% Species:   id = mw2f3d48e0_c9c4_4a0e_aca3_9241eb573296, name = Ab_sR_IL6, affected by kineticLaw
	xdot(40) = (1/(compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5))*((-1.0 * reaction_mw5be6711a_526a_4a58_80c6_d353dcabdf87) + ( 1.0 * reaction_mwad648b6c_45ca_4f41_9747_06db1f6060fc));
	
% Species:   id = mwbc2f5464_81e5_43fd_8b39_f5a2756af72f, name = Ab, affected by kineticLaw
	xdot(41) = (1/(compartment_mw8fbcbf3b_47d8_4adc_8ad4_f9fc547d3e87))*(( 1.0 * reaction_mwdf4ba845_7271_4ada_b43f_fdac83df3b5c));
end

function z=function_1(kRLOff,kRLOn,mw03db56ac_8dc6_4931_ae82_fef706d2ee3d,mw30ae63db_6cd3_4b6f_93ad_3350cd360bcc,mw53ffe9e6_beef_45c4_90a5_a79197ed506e,mwf626e95e_543f_41e4_aad4_c6bf60ab345b), z=((kRLOn*mw30ae63db_6cd3_4b6f_93ad_3350cd360bcc*mwf626e95e_543f_41e4_aad4_c6bf60ab345b-kRLOff*mw03db56ac_8dc6_4931_ae82_fef706d2ee3d)/mw53ffe9e6_beef_45c4_90a5_a79197ed506e);end

function z=function_2(kgp130Off,kgp130On,mw03db56ac_8dc6_4931_ae82_fef706d2ee3d,mw53ffe9e6_beef_45c4_90a5_a79197ed506e,mw810ff751_fa4e_4143_bd50_169b3e325e1e,mwbbbce920_e8dd_4320_9386_fc94bfb2fc99), z=((kgp130On*mw03db56ac_8dc6_4931_ae82_fef706d2ee3d*mwbbbce920_e8dd_4320_9386_fc94bfb2fc99-kgp130Off*mw810ff751_fa4e_4143_bd50_169b3e325e1e)/mw53ffe9e6_beef_45c4_90a5_a79197ed506e);end

function z=function_3(kIL6Synth,mw53ffe9e6_beef_45c4_90a5_a79197ed506e), z=(kIL6Synth/mw53ffe9e6_beef_45c4_90a5_a79197ed506e);end

function z=function_4(kIL6Decay,mw53ffe9e6_beef_45c4_90a5_a79197ed506e,mwf626e95e_543f_41e4_aad4_c6bf60ab345b), z=(kIL6Decay*mwf626e95e_543f_41e4_aad4_c6bf60ab345b/mw53ffe9e6_beef_45c4_90a5_a79197ed506e);end

function z=function_5(kCRPDecay,mw114aa90f_5f5b_4fe8_9406_361c8489b6a1,mw53ffe9e6_beef_45c4_90a5_a79197ed506e), z=(kCRPDecay*mw114aa90f_5f5b_4fe8_9406_361c8489b6a1/mw53ffe9e6_beef_45c4_90a5_a79197ed506e);end

function z=function_6(kgp130Off,kgp130On,mw4638f126_8cb8_4021_ab41_6ae195743ba0,mw80848184_e2dd_47ce_86d7_7a21479342bd,mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e,mwd2d9d93a_3bd1_4f17_bac1_baba9ef2d55a), z=((kgp130On*mw4638f126_8cb8_4021_ab41_6ae195743ba0*mw80848184_e2dd_47ce_86d7_7a21479342bd-kgp130Off*mwd2d9d93a_3bd1_4f17_bac1_baba9ef2d55a)/mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e);end

function z=function_7(kRLOff,kRLOn,mw0adf3eb4_a196_4c48_b10d_4e9e9faaf9e1,mw10315fa3_6f13_4618_bda8_a8694bd3c374,mw7d86cc23_a1af_44c3_bdb9_71e9b1bb2a83,mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e), z=((kRLOn*mw10315fa3_6f13_4618_bda8_a8694bd3c374*mw0adf3eb4_a196_4c48_b10d_4e9e9faaf9e1-kRLOff*mw7d86cc23_a1af_44c3_bdb9_71e9b1bb2a83)/mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e);end

function z=function_8(kgp130Off,kgp130On,mw7d86cc23_a1af_44c3_bdb9_71e9b1bb2a83,mw80848184_e2dd_47ce_86d7_7a21479342bd,mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e,mwd2d9d93a_3bd1_4f17_bac1_baba9ef2d55a), z=((kgp130On*mw7d86cc23_a1af_44c3_bdb9_71e9b1bb2a83*mw80848184_e2dd_47ce_86d7_7a21479342bd-kgp130Off*mwd2d9d93a_3bd1_4f17_bac1_baba9ef2d55a)/mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e);end

function z=function_9(kRAct,mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e,mwd2d9d93a_3bd1_4f17_bac1_baba9ef2d55a), z=(kRAct*mwd2d9d93a_3bd1_4f17_bac1_baba9ef2d55a/mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e);end

function z=function_10(mw0eb6c959_d408_45a0_a450_928b8c5876bb,mw42054cd7_17af_46da_970c_7f99151906ad,mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e,mw9442cd0e_4d7c_4ba6_a695_f84919bdf569,mwe8fc1900_f07d_468b_b5c8_15400a583c3d), z=(mw9442cd0e_4d7c_4ba6_a695_f84919bdf569*mw0eb6c959_d408_45a0_a450_928b8c5876bb*mw42054cd7_17af_46da_970c_7f99151906ad/(mwe8fc1900_f07d_468b_b5c8_15400a583c3d+mw42054cd7_17af_46da_970c_7f99151906ad)/mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e);end

function z=function_11(mw39c2e431_fdc3_4964_be29_6ca856620b1b,mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e,mwd36b0261_2480_4cab_9222_2cf8fb0e65dc,mwfd291862_195f_4979_94b5_b4e5ae1b7d52), z=(mwd36b0261_2480_4cab_9222_2cf8fb0e65dc*mw39c2e431_fdc3_4964_be29_6ca856620b1b/(mwfd291862_195f_4979_94b5_b4e5ae1b7d52+mw39c2e431_fdc3_4964_be29_6ca856620b1b)/mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e);end

function z=function_12(kRdeg,mw10315fa3_6f13_4618_bda8_a8694bd3c374,mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e), z=(kRdeg*mw10315fa3_6f13_4618_bda8_a8694bd3c374/mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e);end

function z=function_13(kRint,mw7d86cc23_a1af_44c3_bdb9_71e9b1bb2a83,mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e), z=(kRint*mw7d86cc23_a1af_44c3_bdb9_71e9b1bb2a83/mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e);end

function z=function_14(kRint,mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e,mwd2d9d93a_3bd1_4f17_bac1_baba9ef2d55a), z=(kRint*mwd2d9d93a_3bd1_4f17_bac1_baba9ef2d55a/mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e);end

function z=function_15(mw0eb6c959_d408_45a0_a450_928b8c5876bb,mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e,mwf44f7f27_5bb1_4c7f_8964_560fa5e1743a), z=(mwf44f7f27_5bb1_4c7f_8964_560fa5e1743a*mw0eb6c959_d408_45a0_a450_928b8c5876bb/mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e);end

function z=function_16(kRsynth,mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e), z=(kRsynth/mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e);end

function z=function_17(kgp130Off,kgp130On,mw7becb5fe_8da8_4285_a821_0d77ad811b62,mw824bc3d4_1ac3_4912_9b51_8f14ff1c96b9,mw8c9107e6_f51d_442d_b2dc_2bfdbb8482ca,mwe9501423_9fb4_494b_b5b6_288f3fcb17b5), z=((kgp130On*mw7becb5fe_8da8_4285_a821_0d77ad811b62*mw8c9107e6_f51d_442d_b2dc_2bfdbb8482ca-kgp130Off*mw824bc3d4_1ac3_4912_9b51_8f14ff1c96b9)/mwe9501423_9fb4_494b_b5b6_288f3fcb17b5);end

function z=function_18(kRAct,mw824bc3d4_1ac3_4912_9b51_8f14ff1c96b9,mwe9501423_9fb4_494b_b5b6_288f3fcb17b5), z=(kRAct*mw824bc3d4_1ac3_4912_9b51_8f14ff1c96b9/mwe9501423_9fb4_494b_b5b6_288f3fcb17b5);end

function z=function_19(mw2b255f94_8018_4b99_bde8_918eeac45446,mw6cce2109_0e32_4dd9_98ec_41173e8ef07d,mw9442cd0e_4d7c_4ba6_a695_f84919bdf569,mwe8fc1900_f07d_468b_b5c8_15400a583c3d,mwe9501423_9fb4_494b_b5b6_288f3fcb17b5), z=(mw9442cd0e_4d7c_4ba6_a695_f84919bdf569*mw6cce2109_0e32_4dd9_98ec_41173e8ef07d*mw2b255f94_8018_4b99_bde8_918eeac45446/(mwe8fc1900_f07d_468b_b5c8_15400a583c3d+mw2b255f94_8018_4b99_bde8_918eeac45446)/mwe9501423_9fb4_494b_b5b6_288f3fcb17b5);end

function z=function_20(mw48867e93_f170_44e8_ac7a_185b23e1bf3b,mwd36b0261_2480_4cab_9222_2cf8fb0e65dc,mwe9501423_9fb4_494b_b5b6_288f3fcb17b5,mwfd291862_195f_4979_94b5_b4e5ae1b7d52), z=(mwd36b0261_2480_4cab_9222_2cf8fb0e65dc*mw48867e93_f170_44e8_ac7a_185b23e1bf3b/(mwfd291862_195f_4979_94b5_b4e5ae1b7d52+mw48867e93_f170_44e8_ac7a_185b23e1bf3b)/mwe9501423_9fb4_494b_b5b6_288f3fcb17b5);end

function z=function_21(kRint,mw824bc3d4_1ac3_4912_9b51_8f14ff1c96b9,mwe9501423_9fb4_494b_b5b6_288f3fcb17b5), z=(kRint*mw824bc3d4_1ac3_4912_9b51_8f14ff1c96b9/mwe9501423_9fb4_494b_b5b6_288f3fcb17b5);end

function z=function_22(mw6cce2109_0e32_4dd9_98ec_41173e8ef07d,mwe9501423_9fb4_494b_b5b6_288f3fcb17b5,mwf44f7f27_5bb1_4c7f_8964_560fa5e1743a), z=(mwf44f7f27_5bb1_4c7f_8964_560fa5e1743a*mw6cce2109_0e32_4dd9_98ec_41173e8ef07d/mwe9501423_9fb4_494b_b5b6_288f3fcb17b5);end

function z=function_23(mw0eb6c959_d408_45a0_a450_928b8c5876bb,mw1667a8e0_9d20_4e59_ba51_596148aba787,mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e,mwfcf06900_5f2f_4bb3_bb1f_12023612b8a8), z=(mw1667a8e0_9d20_4e59_ba51_596148aba787*mw0eb6c959_d408_45a0_a450_928b8c5876bb/(mwfcf06900_5f2f_4bb3_bb1f_12023612b8a8+mw0eb6c959_d408_45a0_a450_928b8c5876bb)/mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e);end

function z=function_24(mw1667a8e0_9d20_4e59_ba51_596148aba787,mw6cce2109_0e32_4dd9_98ec_41173e8ef07d,mwe9501423_9fb4_494b_b5b6_288f3fcb17b5,mwfcf06900_5f2f_4bb3_bb1f_12023612b8a8), z=(mw1667a8e0_9d20_4e59_ba51_596148aba787*mw6cce2109_0e32_4dd9_98ec_41173e8ef07d/(mwfcf06900_5f2f_4bb3_bb1f_12023612b8a8+mw6cce2109_0e32_4dd9_98ec_41173e8ef07d)/mwe9501423_9fb4_494b_b5b6_288f3fcb17b5);end

function z=function_25(kRsynth,mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e), z=(kRsynth/mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e);end

function z=function_26(kRdeg,mw80848184_e2dd_47ce_86d7_7a21479342bd,mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e), z=(kRdeg*mw80848184_e2dd_47ce_86d7_7a21479342bd/mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e);end

function z=function_27(kRsynth,mwe9501423_9fb4_494b_b5b6_288f3fcb17b5), z=(kRsynth/mwe9501423_9fb4_494b_b5b6_288f3fcb17b5);end

function z=function_28(kRdeg,mw8c9107e6_f51d_442d_b2dc_2bfdbb8482ca,mwe9501423_9fb4_494b_b5b6_288f3fcb17b5), z=(kRdeg*mw8c9107e6_f51d_442d_b2dc_2bfdbb8482ca/mwe9501423_9fb4_494b_b5b6_288f3fcb17b5);end

function z=function_29(kRLOff,kRLOn,mw2c9b0499_3325_4394_8af3_bbf653a944a0,mw7becb5fe_8da8_4285_a821_0d77ad811b62,mwd31f52cc_04e7_40e0_885f_c7b2d9e62215,mwe9501423_9fb4_494b_b5b6_288f3fcb17b5), z=((kRLOn*mwd31f52cc_04e7_40e0_885f_c7b2d9e62215*mw2c9b0499_3325_4394_8af3_bbf653a944a0-kRLOff*mw7becb5fe_8da8_4285_a821_0d77ad811b62)/mwe9501423_9fb4_494b_b5b6_288f3fcb17b5);end

function z=function_30(kRLOff,kRLOn,mw0adf3eb4_a196_4c48_b10d_4e9e9faaf9e1,mw2e464cf3_a09c_4b7c_9f3c_06720016a48e,mw4638f126_8cb8_4021_ab41_6ae195743ba0,mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e), z=((kRLOn*mw2e464cf3_a09c_4b7c_9f3c_06720016a48e*mw0adf3eb4_a196_4c48_b10d_4e9e9faaf9e1-kRLOff*mw4638f126_8cb8_4021_ab41_6ae195743ba0)/mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e);end

function z=function_31(mw862f1480_c60c_4863_a565_b2c1c77e238e,mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e,mwd5313618_89eb_4c8c_bc82_66f10f966349), z=(mw862f1480_c60c_4863_a565_b2c1c77e238e*mwd5313618_89eb_4c8c_bc82_66f10f966349/mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e);end

function z=function_32(mw53ffe9e6_beef_45c4_90a5_a79197ed506e,mw65c85954_5ca0_4df2_9e22_ff2aa3fbe3f1), z=(mw65c85954_5ca0_4df2_9e22_ff2aa3fbe3f1/mw53ffe9e6_beef_45c4_90a5_a79197ed506e);end

function z=function_33(kgp130Off,kgp130On,mw6335d5d7_c7b0_4bc0_b883_f7ee4915c2c3,mw7becb5fe_8da8_4285_a821_0d77ad811b62,mwd65b5b39_dc1b_4e77_a999_67277a880e5e,mwe9501423_9fb4_494b_b5b6_288f3fcb17b5), z=((kgp130On*mwd65b5b39_dc1b_4e77_a999_67277a880e5e*mw7becb5fe_8da8_4285_a821_0d77ad811b62-kgp130Off*mw6335d5d7_c7b0_4bc0_b883_f7ee4915c2c3)/mwe9501423_9fb4_494b_b5b6_288f3fcb17b5);end

function z=function_34(kgp130Off,kgp130On,mw147d30ec_478e_4090_b496_128a131d29eb,mw4638f126_8cb8_4021_ab41_6ae195743ba0,mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e,mwab41493c_6349_45f1_a226_3030cfed0e06), z=((kgp130On*mw4638f126_8cb8_4021_ab41_6ae195743ba0*mw147d30ec_478e_4090_b496_128a131d29eb-kgp130Off*mwab41493c_6349_45f1_a226_3030cfed0e06)/mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e);end

function z=function_35(mw53ffe9e6_beef_45c4_90a5_a79197ed506e,mwc4c58db7_5535_4590_aaa5_bbc8ed53cdab), z=(mwc4c58db7_5535_4590_aaa5_bbc8ed53cdab/mw53ffe9e6_beef_45c4_90a5_a79197ed506e);end

function z=function_36(mw30ae63db_6cd3_4b6f_93ad_3350cd360bcc,mw53ffe9e6_beef_45c4_90a5_a79197ed506e,mw88a75379_f9a1_4acc_baeb_94c32bb736a5), z=(mw88a75379_f9a1_4acc_baeb_94c32bb736a5*mw30ae63db_6cd3_4b6f_93ad_3350cd360bcc/mw53ffe9e6_beef_45c4_90a5_a79197ed506e);end

function z=function_37(mw1f41474c_c399_4a60_a53a_9926dd092e8d,mw53ffe9e6_beef_45c4_90a5_a79197ed506e), z=(mw1f41474c_c399_4a60_a53a_9926dd092e8d/mw53ffe9e6_beef_45c4_90a5_a79197ed506e);end

function z=function_38(mw53ffe9e6_beef_45c4_90a5_a79197ed506e,mwbbbce920_e8dd_4320_9386_fc94bfb2fc99,mwbcb5a310_9b67_405e_89ec_43d25e8cc93d), z=(mwbcb5a310_9b67_405e_89ec_43d25e8cc93d*mwbbbce920_e8dd_4320_9386_fc94bfb2fc99/mw53ffe9e6_beef_45c4_90a5_a79197ed506e);end

function z=function_39(mwa8d72918_f6c2_4d81_bf3b_fc2b464d5e69,mwe9501423_9fb4_494b_b5b6_288f3fcb17b5), z=(mwa8d72918_f6c2_4d81_bf3b_fc2b464d5e69/mwe9501423_9fb4_494b_b5b6_288f3fcb17b5);end

function z=function_40(mw06241335_b5f2_47ed_bdcc_ef77b68a2b98,mw2c9b0499_3325_4394_8af3_bbf653a944a0,mwe9501423_9fb4_494b_b5b6_288f3fcb17b5), z=(mw06241335_b5f2_47ed_bdcc_ef77b68a2b98*mw2c9b0499_3325_4394_8af3_bbf653a944a0/mwe9501423_9fb4_494b_b5b6_288f3fcb17b5);end

function z=function_41(mw114aa90f_5f5b_4fe8_9406_361c8489b6a1,mw53ffe9e6_beef_45c4_90a5_a79197ed506e,mw5832a2dc_ee18_44df_aa59_ccb21cb74df2), z=(mw5832a2dc_ee18_44df_aa59_ccb21cb74df2*mw114aa90f_5f5b_4fe8_9406_361c8489b6a1/mw53ffe9e6_beef_45c4_90a5_a79197ed506e);end

function z=function_43(mw1da111f2_a036_4392_8512_015005bdcbb7,mw53ffe9e6_beef_45c4_90a5_a79197ed506e,mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30), z=(mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30*mw1da111f2_a036_4392_8512_015005bdcbb7/mw53ffe9e6_beef_45c4_90a5_a79197ed506e);end

function z=function_45(mw53ffe9e6_beef_45c4_90a5_a79197ed506e,mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30,mwf345ed7a_0622_403c_b816_c8749a2c9ded), z=(mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30*mwf345ed7a_0622_403c_b816_c8749a2c9ded/mw53ffe9e6_beef_45c4_90a5_a79197ed506e);end

function z=function_47(mw5d764bb8_5693_4ac8_9557_f65992cc5eb0,mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30,mwe9501423_9fb4_494b_b5b6_288f3fcb17b5), z=(mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30*mw5d764bb8_5693_4ac8_9557_f65992cc5eb0/mwe9501423_9fb4_494b_b5b6_288f3fcb17b5);end

function z=function_50(mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e,mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30,mwf405687b_7401_44ec_a0d6_4a2b35c13e8a), z=(mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30*mwf405687b_7401_44ec_a0d6_4a2b35c13e8a/mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e);end

function z=function_52(mw3667a5e1_02c9_44a0_acb4_b0431faa822d,mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e,mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30), z=(mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30*mw3667a5e1_02c9_44a0_acb4_b0431faa822d/mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e);end

function z=function_53(mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30,mwe9501423_9fb4_494b_b5b6_288f3fcb17b5,mwf7796221_1fea_4274_a93e_c00adbf5778c), z=(mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30*mwf7796221_1fea_4274_a93e_c00adbf5778c/mwe9501423_9fb4_494b_b5b6_288f3fcb17b5);end

function z=function_51(mw1d9426a3_e1e9_49e0_ad77_eb6833be398a,mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e,mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30), z=(mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30*mw1d9426a3_e1e9_49e0_ad77_eb6833be398a/mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e);end

function z=function_42(mw1c4bc9c3_52ad_4ef7_bf7f_97b0e2101ead,mw1da111f2_a036_4392_8512_015005bdcbb7,mw53ffe9e6_beef_45c4_90a5_a79197ed506e,mwa09d6284_843e_404e_abbb_052fbb535197,mwf345ed7a_0622_403c_b816_c8749a2c9ded,mwf626e95e_543f_41e4_aad4_c6bf60ab345b), z=((mwa09d6284_843e_404e_abbb_052fbb535197*mwf626e95e_543f_41e4_aad4_c6bf60ab345b*mwf345ed7a_0622_403c_b816_c8749a2c9ded-mw1c4bc9c3_52ad_4ef7_bf7f_97b0e2101ead*mw1da111f2_a036_4392_8512_015005bdcbb7)/mw53ffe9e6_beef_45c4_90a5_a79197ed506e);end

function z=function_44(mw53ffe9e6_beef_45c4_90a5_a79197ed506e,mwa2d8dd1c_bb9a_4552_8738_e24671651c1d,mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30), z=(mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30*mwa2d8dd1c_bb9a_4552_8738_e24671651c1d/mw53ffe9e6_beef_45c4_90a5_a79197ed506e);end

function z=function_49(mw0adf3eb4_a196_4c48_b10d_4e9e9faaf9e1,mw1c4bc9c3_52ad_4ef7_bf7f_97b0e2101ead,mw3667a5e1_02c9_44a0_acb4_b0431faa822d,mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e,mwa09d6284_843e_404e_abbb_052fbb535197,mwf405687b_7401_44ec_a0d6_4a2b35c13e8a), z=((mwa09d6284_843e_404e_abbb_052fbb535197*mw3667a5e1_02c9_44a0_acb4_b0431faa822d*mw0adf3eb4_a196_4c48_b10d_4e9e9faaf9e1-mw1c4bc9c3_52ad_4ef7_bf7f_97b0e2101ead*mwf405687b_7401_44ec_a0d6_4a2b35c13e8a)/mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e);end

function z=function_48(mw1c4bc9c3_52ad_4ef7_bf7f_97b0e2101ead,mw2c9b0499_3325_4394_8af3_bbf653a944a0,mw5d764bb8_5693_4ac8_9557_f65992cc5eb0,mwa09d6284_843e_404e_abbb_052fbb535197,mwe9501423_9fb4_494b_b5b6_288f3fcb17b5,mwf7796221_1fea_4274_a93e_c00adbf5778c), z=((mwa09d6284_843e_404e_abbb_052fbb535197*mwf7796221_1fea_4274_a93e_c00adbf5778c*mw2c9b0499_3325_4394_8af3_bbf653a944a0-mw1c4bc9c3_52ad_4ef7_bf7f_97b0e2101ead*mw5d764bb8_5693_4ac8_9557_f65992cc5eb0)/mwe9501423_9fb4_494b_b5b6_288f3fcb17b5);end

function z=function_46(mw2f3d48e0_c9c4_4a0e_aca3_9241eb573296,mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30,mwe9501423_9fb4_494b_b5b6_288f3fcb17b5), z=(mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30*mw2f3d48e0_c9c4_4a0e_aca3_9241eb573296/mwe9501423_9fb4_494b_b5b6_288f3fcb17b5);end

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


