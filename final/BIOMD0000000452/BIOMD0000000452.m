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
% Model name = Bidkhori2012 - normal EGFR signalling
%
% is http://identifiers.org/biomodels.db/MODEL1304020000
% is http://identifiers.org/biomodels.db/BIOMD0000000452
% isDescribedBy http://identifiers.org/pubmed/23133538
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000019
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000049
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000048
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000009
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000205
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000093
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000094
% isDerivedFrom http://identifiers.org/pubmed/14751248
% isDerivedFrom http://identifiers.org/pubmed/16687399
% isDerivedFrom http://identifiers.org/pubmed/20459599
%


function main()
%Initial conditions vector
	x0=zeros(109,1);
	x0(1) = 0.0081967;
	x0(2) = 0.3;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.8;
	x0(7) = 1.0;
	x0(8) = 0.0;
	x0(9) = 0.1;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 0.0;
	x0(13) = 0.0;
	x0(14) = 1.0;
	x0(15) = 0.0;
	x0(16) = 0.0;
	x0(17) = 0.3;
	x0(18) = 0.0;
	x0(19) = 0.0;
	x0(20) = 0.0;
	x0(21) = 0.0;
	x0(22) = 0.0;
	x0(23) = 0.0;
	x0(24) = 0.0;
	x0(25) = 0.15;
	x0(26) = 0.0;
	x0(27) = 0.0;
	x0(28) = 0.0;
	x0(29) = 0.1;
	x0(30) = 0.0;
	x0(31) = 0.0;
	x0(32) = 0.0;
	x0(33) = 0.0;
	x0(34) = 0.5;
	x0(35) = 0.0;
	x0(36) = 0.0;
	x0(37) = 0.68;
	x0(38) = 0.0;
	x0(39) = 0.0;
	x0(40) = 0.0;
	x0(41) = 0.0;
	x0(42) = 0.4;
	x0(43) = 0.0;
	x0(44) = 0.0;
	x0(45) = 0.0;
	x0(46) = 0.0;
	x0(47) = 0.5;
	x0(48) = 0.0;
	x0(49) = 0.02;
	x0(50) = 0.0;
	x0(51) = 0.0;
	x0(52) = 0.002;
	x0(53) = 0.0;
	x0(54) = 0.0;
	x0(55) = 0.0;
	x0(56) = 0.0;
	x0(57) = 0.0;
	x0(58) = 1.0;
	x0(59) = 0.0;
	x0(60) = 0.5;
	x0(61) = 0.0;
	x0(62) = 0.0;
	x0(63) = 0.0;
	x0(64) = 0.2;
	x0(65) = 0.0;
	x0(66) = 0.0;
	x0(67) = 0.0;
	x0(68) = 0.2;
	x0(69) = 0.0;
	x0(70) = 0.0;
	x0(71) = 0.5;
	x0(72) = 0.0;
	x0(73) = 0.0;
	x0(74) = 0.1;
	x0(75) = 0.0;
	x0(76) = 0.1;
	x0(77) = 0.0;
	x0(78) = 0.0;
	x0(79) = 0.0;
	x0(80) = 0.0;
	x0(81) = 0.0;
	x0(82) = 0.0;
	x0(83) = 0.1;
	x0(84) = 0.0;
	x0(85) = 0.0;
	x0(86) = 0.0;
	x0(87) = 0.0;
	x0(88) = 0.0;
	x0(89) = 0.0;
	x0(90) = 1.0;
	x0(91) = 0.0;
	x0(92) = 0.0;
	x0(93) = 0.0;
	x0(94) = 0.5;
	x0(95) = 0.0;
	x0(96) = 0.0;
	x0(97) = 0.0;
	x0(98) = 0.0;
	x0(99) = 0.0;
	x0(100) = 0.0;
	x0(101) = 0.6;
	x0(102) = 0.0;
	x0(103) = 0.0;
	x0(104) = 0.0;
	x0(105) = 0.0;
	x0(106) = 0.0;
	x0(107) = 0.0;
	x0(108) = 0.0;
	x0(109) = 0.0;


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

% Compartment: id = mw1637dd35_5f09_4a8d_bb7f_58717cdf1612, name = unnamed, constant
	compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612=1.0;
% assignmentRule: variable = mwa6994523_5d45_4000_af0c_3e94073bf183
	x(88)=x(80)+x(79);

% Reaction: id = mwa67e40c1_693d_4214_adc8_b2f2b71cef12, name = r1	% Local Parameter:   id =  mw575f7f49_3663_47f1_b492_5b92c1c4345d, name = k1
	reaction_mwa67e40c1_693d_4214_adc8_b2f2b71cef12_mw575f7f49_3663_47f1_b492_5b92c1c4345d=100.0;
	% Local Parameter:   id =  mw53c64fd3_9a1c_4947_a734_74a73554964c, name = k1r
	reaction_mwa67e40c1_693d_4214_adc8_b2f2b71cef12_mw53c64fd3_9a1c_4947_a734_74a73554964c=0.0038;

	reaction_mwa67e40c1_693d_4214_adc8_b2f2b71cef12=reaction_mwa67e40c1_693d_4214_adc8_b2f2b71cef12_mw575f7f49_3663_47f1_b492_5b92c1c4345d*x(1)*x(2)-reaction_mwa67e40c1_693d_4214_adc8_b2f2b71cef12_mw53c64fd3_9a1c_4947_a734_74a73554964c*x(3);

% Reaction: id = mw877cd1e3_b48b_42e8_ab23_682dd893fd9d, name = r2	% Local Parameter:   id =  mw8cfaf07f_dabe_45de_93cc_ef2c7fd31104, name = k2
	reaction_mw877cd1e3_b48b_42e8_ab23_682dd893fd9d_mw8cfaf07f_dabe_45de_93cc_ef2c7fd31104=10.0;
	% Local Parameter:   id =  mwab52aceb_4b19_4317_b2da_97ccbb973dab, name = k2r
	reaction_mw877cd1e3_b48b_42e8_ab23_682dd893fd9d_mwab52aceb_4b19_4317_b2da_97ccbb973dab=0.02;

	reaction_mw877cd1e3_b48b_42e8_ab23_682dd893fd9d=reaction_mw877cd1e3_b48b_42e8_ab23_682dd893fd9d_mw8cfaf07f_dabe_45de_93cc_ef2c7fd31104*x(3)*x(3)-reaction_mw877cd1e3_b48b_42e8_ab23_682dd893fd9d_mwab52aceb_4b19_4317_b2da_97ccbb973dab*x(4);

% Reaction: id = mw413c6d45_ab23_4d3e_87b3_a8ed4629b923, name = r3	% Local Parameter:   id =  mw6b97a1ec_2cba_4bce_96f7_ec1d0fa2d16c, name = k3
	reaction_mw413c6d45_ab23_4d3e_87b3_a8ed4629b923_mw6b97a1ec_2cba_4bce_96f7_ec1d0fa2d16c=2.014;

	reaction_mw413c6d45_ab23_4d3e_87b3_a8ed4629b923=reaction_mw413c6d45_ab23_4d3e_87b3_a8ed4629b923_mw6b97a1ec_2cba_4bce_96f7_ec1d0fa2d16c*x(4);

% Reaction: id = mwf61e086d_0345_4d4c_b91d_0b105e543d04, name = r8	% Local Parameter:   id =  mwf1697f55_a3f4_4fb6_ae1d_f96f09ad1daa, name = k8
	reaction_mwf61e086d_0345_4d4c_b91d_0b105e543d04_mwf1697f55_a3f4_4fb6_ae1d_f96f09ad1daa=90.0;
	% Local Parameter:   id =  mw880a5942_7549_4466_bd19_0e1768a3a533, name = k8r
	reaction_mwf61e086d_0345_4d4c_b91d_0b105e543d04_mw880a5942_7549_4466_bd19_0e1768a3a533=0.6;

	reaction_mwf61e086d_0345_4d4c_b91d_0b105e543d04=reaction_mwf61e086d_0345_4d4c_b91d_0b105e543d04_mwf1697f55_a3f4_4fb6_ae1d_f96f09ad1daa*x(5)*x(7)-reaction_mwf61e086d_0345_4d4c_b91d_0b105e543d04_mw880a5942_7549_4466_bd19_0e1768a3a533*x(8);

% Reaction: id = mw91f49311_efdc_47c6_b8b8_a619e042d644, name = r6	% Local Parameter:   id =  mw7e889122_d26c_4d09_bae4_d313b992dc8e, name = k6
	reaction_mw91f49311_efdc_47c6_b8b8_a619e042d644_mw7e889122_d26c_4d09_bae4_d313b992dc8e=3.114;
	% Local Parameter:   id =  mwff6f49f7_268a_4f08_8d36_3ad8449d7472, name = k6r
	reaction_mw91f49311_efdc_47c6_b8b8_a619e042d644_mwff6f49f7_268a_4f08_8d36_3ad8449d7472=0.2;

	reaction_mw91f49311_efdc_47c6_b8b8_a619e042d644=reaction_mw91f49311_efdc_47c6_b8b8_a619e042d644_mw7e889122_d26c_4d09_bae4_d313b992dc8e*x(5)*x(9)-reaction_mw91f49311_efdc_47c6_b8b8_a619e042d644_mwff6f49f7_268a_4f08_8d36_3ad8449d7472*x(10);

% Reaction: id = mw974c39f5_b82e_44b3_abec_7a724f46c526, name = r9	% Local Parameter:   id =  mwe645e76e_bb00_4c22_b25e_a2e77a6aada2, name = k9
	reaction_mw974c39f5_b82e_44b3_abec_7a724f46c526_mwe645e76e_bb00_4c22_b25e_a2e77a6aada2=0.5838;

	reaction_mw974c39f5_b82e_44b3_abec_7a724f46c526=reaction_mw974c39f5_b82e_44b3_abec_7a724f46c526_mwe645e76e_bb00_4c22_b25e_a2e77a6aada2*x(8);

% Reaction: id = mw9544e67b_b6d0_4941_b7e0_ecd4f400a335, name = r7	% Local Parameter:   id =  mwb0744746_88a2_488e_a483_266747a044c6, name = k7
	reaction_mw9544e67b_b6d0_4941_b7e0_ecd4f400a335_mwb0744746_88a2_488e_a483_266747a044c6=0.2661;

	reaction_mw9544e67b_b6d0_4941_b7e0_ecd4f400a335=reaction_mw9544e67b_b6d0_4941_b7e0_ecd4f400a335_mwb0744746_88a2_488e_a483_266747a044c6*x(10);

% Reaction: id = mw486c5261_3d03_4589_a1e9_978b62ad2dfe, name = r10	% Local Parameter:   id =  mw9e24066c_51a5_4c7a_af7c_4656155a4eb0, name = k10
	reaction_mw486c5261_3d03_4589_a1e9_978b62ad2dfe_mw9e24066c_51a5_4c7a_af7c_4656155a4eb0=4.481;
	% Local Parameter:   id =  mwab1ef4d4_2acc_4fa2_b07c_fac51fb7bfaf, name = k10r
	reaction_mw486c5261_3d03_4589_a1e9_978b62ad2dfe_mwab1ef4d4_2acc_4fa2_b07c_fac51fb7bfaf=0.3;

	reaction_mw486c5261_3d03_4589_a1e9_978b62ad2dfe=reaction_mw486c5261_3d03_4589_a1e9_978b62ad2dfe_mw9e24066c_51a5_4c7a_af7c_4656155a4eb0*x(11)-reaction_mw486c5261_3d03_4589_a1e9_978b62ad2dfe_mwab1ef4d4_2acc_4fa2_b07c_fac51fb7bfaf*x(5)*x(12);

% Reaction: id = mw2cf8a809_63d8_4717_91fc_070516e6f3db, name = r11	% Local Parameter:   id =  mwc4824ff0_2b51_4d66_ad48_1145f670a6e1, name = k11
	reaction_mw2cf8a809_63d8_4717_91fc_070516e6f3db_mwc4824ff0_2b51_4d66_ad48_1145f670a6e1=3.114;
	% Local Parameter:   id =  mw0f1d282f_1c6b_455c_8254_3760632c6ecc, name = k11r
	reaction_mw2cf8a809_63d8_4717_91fc_070516e6f3db_mw0f1d282f_1c6b_455c_8254_3760632c6ecc=0.2;

	reaction_mw2cf8a809_63d8_4717_91fc_070516e6f3db=reaction_mw2cf8a809_63d8_4717_91fc_070516e6f3db_mwc4824ff0_2b51_4d66_ad48_1145f670a6e1*x(12)*x(9)-reaction_mw2cf8a809_63d8_4717_91fc_070516e6f3db_mw0f1d282f_1c6b_455c_8254_3760632c6ecc*x(13);

% Reaction: id = mweda6a945_fb5d_4d99_9958_11b2b2840308, name = r12	% Local Parameter:   id =  mw0aa92e25_f9aa_461e_92b8_23b1b5b3ab92, name = k12
	reaction_mweda6a945_fb5d_4d99_9958_11b2b2840308_mw0aa92e25_f9aa_461e_92b8_23b1b5b3ab92=0.2661;

	reaction_mweda6a945_fb5d_4d99_9958_11b2b2840308=reaction_mweda6a945_fb5d_4d99_9958_11b2b2840308_mw0aa92e25_f9aa_461e_92b8_23b1b5b3ab92*x(13);

% Reaction: id = mwd4bf58ea_70c9_43ea_a831_1fcde130ba28, name = r13	% Local Parameter:   id =  mw2a4ed8a2_fce4_44a4_adb9_edc24a06b4e1, name = k13
	reaction_mwd4bf58ea_70c9_43ea_a831_1fcde130ba28_mw2a4ed8a2_fce4_44a4_adb9_edc24a06b4e1=0.005;

	reaction_mwd4bf58ea_70c9_43ea_a831_1fcde130ba28=reaction_mwd4bf58ea_70c9_43ea_a831_1fcde130ba28_mw2a4ed8a2_fce4_44a4_adb9_edc24a06b4e1*x(12);

% Reaction: id = mw4817365e_a33b_451f_bee1_de748377ede2, name = r18	% Local Parameter:   id =  mwe879a9ac_4b8d_4c9a_a157_a3751761cf63, name = k18
	reaction_mw4817365e_a33b_451f_bee1_de748377ede2_mwe879a9ac_4b8d_4c9a_a157_a3751761cf63=3.0;
	% Local Parameter:   id =  mwa18578d7_236f_4939_baca_52259e38fe15, name = kr18
	reaction_mw4817365e_a33b_451f_bee1_de748377ede2_mwa18578d7_236f_4939_baca_52259e38fe15=0.1;

	reaction_mw4817365e_a33b_451f_bee1_de748377ede2=reaction_mw4817365e_a33b_451f_bee1_de748377ede2_mwe879a9ac_4b8d_4c9a_a157_a3751761cf63*x(11)*x(14)-reaction_mw4817365e_a33b_451f_bee1_de748377ede2_mwa18578d7_236f_4939_baca_52259e38fe15*x(15);

% Reaction: id = mw03998474_934b_4e4a_8c0c_ca359e402ac2, name = r19	% Local Parameter:   id =  mw289fed85_e6ee_43e6_a69f_77b5f487a452, name = k19
	reaction_mw03998474_934b_4e4a_8c0c_ca359e402ac2_mw289fed85_e6ee_43e6_a69f_77b5f487a452=10.0;
	% Local Parameter:   id =  mw8768b5c7_b227_4825_aa55_a525b0d915c2, name = kr19
	reaction_mw03998474_934b_4e4a_8c0c_ca359e402ac2_mw8768b5c7_b227_4825_aa55_a525b0d915c2=1.0;

	reaction_mw03998474_934b_4e4a_8c0c_ca359e402ac2=reaction_mw03998474_934b_4e4a_8c0c_ca359e402ac2_mw289fed85_e6ee_43e6_a69f_77b5f487a452*x(15)*x(9)-reaction_mw03998474_934b_4e4a_8c0c_ca359e402ac2_mw8768b5c7_b227_4825_aa55_a525b0d915c2*x(16);

% Reaction: id = mw7bb43f0a_c87e_41ff_8a43_cdf45c8f05e6, name = r20	% Local Parameter:   id =  mwd12a67b3_6d98_40e9_a54b_282a577498eb, name = k20
	reaction_mw7bb43f0a_c87e_41ff_8a43_cdf45c8f05e6_mwd12a67b3_6d98_40e9_a54b_282a577498eb=2.661;

	reaction_mw7bb43f0a_c87e_41ff_8a43_cdf45c8f05e6=reaction_mw7bb43f0a_c87e_41ff_8a43_cdf45c8f05e6_mwd12a67b3_6d98_40e9_a54b_282a577498eb*x(16);

% Reaction: id = mwd9262331_e35a_4614_943a_89bcf8a492e3, name = r23	% Local Parameter:   id =  mw6ac313e2_e8a9_42a9_b13a_27e55c1012a2, name = k23
	reaction_mwd9262331_e35a_4614_943a_89bcf8a492e3_mw6ac313e2_e8a9_42a9_b13a_27e55c1012a2=10.0;
	% Local Parameter:   id =  mw93f832d7_eefb_43dd_853c_a0d7a76023cf, name = kr23
	reaction_mwd9262331_e35a_4614_943a_89bcf8a492e3_mw93f832d7_eefb_43dd_853c_a0d7a76023cf=0.0214;

	reaction_mwd9262331_e35a_4614_943a_89bcf8a492e3=reaction_mwd9262331_e35a_4614_943a_89bcf8a492e3_mw6ac313e2_e8a9_42a9_b13a_27e55c1012a2*x(15)*x(17)-reaction_mwd9262331_e35a_4614_943a_89bcf8a492e3_mw93f832d7_eefb_43dd_853c_a0d7a76023cf*x(18);

% Reaction: id = mwc5f121dc_d27d_4c3d_90f2_67d0adaf144a, name = r26	% Local Parameter:   id =  mwbb727dc5_30e8_45f4_9d15_3b34be5c1e93, name = k26
	reaction_mwc5f121dc_d27d_4c3d_90f2_67d0adaf144a_mwbb727dc5_30e8_45f4_9d15_3b34be5c1e93=0.1;
	% Local Parameter:   id =  mw7ae1ee96_563e_4684_bc9a_8f4ef373620e, name = kr26
	reaction_mwc5f121dc_d27d_4c3d_90f2_67d0adaf144a_mw7ae1ee96_563e_4684_bc9a_8f4ef373620e=0.0015;

	reaction_mwc5f121dc_d27d_4c3d_90f2_67d0adaf144a=reaction_mwc5f121dc_d27d_4c3d_90f2_67d0adaf144a_mwbb727dc5_30e8_45f4_9d15_3b34be5c1e93*x(14)*x(17)-reaction_mwc5f121dc_d27d_4c3d_90f2_67d0adaf144a_mw7ae1ee96_563e_4684_bc9a_8f4ef373620e*x(20);

% Reaction: id = mw23a29b42_9813_4e46_b8ae_966e3215e6dc, name = r27	% Local Parameter:   id =  mwbc5340b6_06b7_4081_bd0c_e7a397f06a92, name = k27
	reaction_mw23a29b42_9813_4e46_b8ae_966e3215e6dc_mwbc5340b6_06b7_4081_bd0c_e7a397f06a92=10.0;
	% Local Parameter:   id =  mw0df80c0e_c32b_4f90_99bd_e8f90e4c8109, name = kr27
	reaction_mw23a29b42_9813_4e46_b8ae_966e3215e6dc_mw0df80c0e_c32b_4f90_99bd_e8f90e4c8109=0.045;

	reaction_mw23a29b42_9813_4e46_b8ae_966e3215e6dc=reaction_mw23a29b42_9813_4e46_b8ae_966e3215e6dc_mwbc5340b6_06b7_4081_bd0c_e7a397f06a92*x(11)*x(20)-reaction_mw23a29b42_9813_4e46_b8ae_966e3215e6dc_mw0df80c0e_c32b_4f90_99bd_e8f90e4c8109*x(18);

% Reaction: id = mw0e459167_515b_4c4d_8b67_bf0a5b3e9d61, name = r28	% Local Parameter:   id =  mwc585e0e4_b7e7_4290_8a6d_10fcd9759a2d, name = k28
	reaction_mw0e459167_515b_4c4d_8b67_bf0a5b3e9d61_mwc585e0e4_b7e7_4290_8a6d_10fcd9759a2d=3.0;
	% Local Parameter:   id =  mwf44d37d0_fe7f_4e47_bf10_1e734fbc3391, name = kr28
	reaction_mw0e459167_515b_4c4d_8b67_bf0a5b3e9d61_mwf44d37d0_fe7f_4e47_bf10_1e734fbc3391=0.05;

	reaction_mw0e459167_515b_4c4d_8b67_bf0a5b3e9d61=reaction_mw0e459167_515b_4c4d_8b67_bf0a5b3e9d61_mwc585e0e4_b7e7_4290_8a6d_10fcd9759a2d*x(5)*x(14)-reaction_mw0e459167_515b_4c4d_8b67_bf0a5b3e9d61_mwf44d37d0_fe7f_4e47_bf10_1e734fbc3391*x(21);

% Reaction: id = mwc52e0f9b_1e0c_46ca_8d18_f05ef4a080cb, name = r29	% Local Parameter:   id =  mw3d564c3c_aa54_4c16_90be_662cfcbf8bc8, name = k29
	reaction_mwc52e0f9b_1e0c_46ca_8d18_f05ef4a080cb_mw3d564c3c_aa54_4c16_90be_662cfcbf8bc8=10.0;
	% Local Parameter:   id =  mw371642bb_3836_4ded_93a5_68fa9b464896, name = kr29
	reaction_mwc52e0f9b_1e0c_46ca_8d18_f05ef4a080cb_mw371642bb_3836_4ded_93a5_68fa9b464896=1.0;

	reaction_mwc52e0f9b_1e0c_46ca_8d18_f05ef4a080cb=reaction_mwc52e0f9b_1e0c_46ca_8d18_f05ef4a080cb_mw3d564c3c_aa54_4c16_90be_662cfcbf8bc8*x(21)*x(9)-reaction_mwc52e0f9b_1e0c_46ca_8d18_f05ef4a080cb_mw371642bb_3836_4ded_93a5_68fa9b464896*x(22);

% Reaction: id = mw4f89bf6c_8691_41a6_a1ac_13e6aa8c4b93, name = r30	% Local Parameter:   id =  mw736e4a7b_4a25_4d32_b96b_b088e3bd41e7, name = k30
	reaction_mw4f89bf6c_8691_41a6_a1ac_13e6aa8c4b93_mw736e4a7b_4a25_4d32_b96b_b088e3bd41e7=2.661;

	reaction_mw4f89bf6c_8691_41a6_a1ac_13e6aa8c4b93=reaction_mw4f89bf6c_8691_41a6_a1ac_13e6aa8c4b93_mw736e4a7b_4a25_4d32_b96b_b088e3bd41e7*x(22);

% Reaction: id = mw35f71989_f89b_4440_b1a4_ebc7b4cc18b2, name = r31	% Local Parameter:   id =  mw084cd67b_f328_48a7_8e16_1d6256c8c137, name = k31
	reaction_mw35f71989_f89b_4440_b1a4_ebc7b4cc18b2_mw084cd67b_f328_48a7_8e16_1d6256c8c137=10.0;
	% Local Parameter:   id =  mw43f177dc_f522_4dd1_b8e5_21b2b8fdfdba, name = kr31
	reaction_mw35f71989_f89b_4440_b1a4_ebc7b4cc18b2_mw43f177dc_f522_4dd1_b8e5_21b2b8fdfdba=0.06;

	reaction_mw35f71989_f89b_4440_b1a4_ebc7b4cc18b2=reaction_mw35f71989_f89b_4440_b1a4_ebc7b4cc18b2_mw084cd67b_f328_48a7_8e16_1d6256c8c137*x(21)*x(17)-reaction_mw35f71989_f89b_4440_b1a4_ebc7b4cc18b2_mw43f177dc_f522_4dd1_b8e5_21b2b8fdfdba*x(23);

% Reaction: id = mwd0d92dd4_81b7_4385_bfd7_5de82e193ecd, name = r32	% Local Parameter:   id =  mwfa6a58ab_0ca5_4c05_92b0_870593ac135d, name = k32
	reaction_mwd0d92dd4_81b7_4385_bfd7_5de82e193ecd_mwfa6a58ab_0ca5_4c05_92b0_870593ac135d=2.734;
	% Local Parameter:   id =  mwb9547c37_09b7_4258_95ab_8039d4088298, name = kr32
	reaction_mwd0d92dd4_81b7_4385_bfd7_5de82e193ecd_mwb9547c37_09b7_4258_95ab_8039d4088298=0.025;

	reaction_mwd0d92dd4_81b7_4385_bfd7_5de82e193ecd=reaction_mwd0d92dd4_81b7_4385_bfd7_5de82e193ecd_mwfa6a58ab_0ca5_4c05_92b0_870593ac135d*x(5)*x(20)-reaction_mwd0d92dd4_81b7_4385_bfd7_5de82e193ecd_mwb9547c37_09b7_4258_95ab_8039d4088298*x(23);

% Reaction: id = mwbb77e3d6_6065_4344_9361_e30c03514f4e, name = r35	% Local Parameter:   id =  mw7e09242b_bd80_4af0_90c8_e0cddace89fe, name = k35
	reaction_mwbb77e3d6_6065_4344_9361_e30c03514f4e_mw7e09242b_bd80_4af0_90c8_e0cddace89fe=202.9;
	% Local Parameter:   id =  mw2dfc8a19_1792_4e12_af38_8bfbda31a577, name = kr35
	reaction_mwbb77e3d6_6065_4344_9361_e30c03514f4e_mw2dfc8a19_1792_4e12_af38_8bfbda31a577=0.18;

	reaction_mwbb77e3d6_6065_4344_9361_e30c03514f4e=reaction_mwbb77e3d6_6065_4344_9361_e30c03514f4e_mw7e09242b_bd80_4af0_90c8_e0cddace89fe*x(18)*x(25)-reaction_mwbb77e3d6_6065_4344_9361_e30c03514f4e_mw2dfc8a19_1792_4e12_af38_8bfbda31a577*x(26);

% Reaction: id = mw921ee820_1dbb_4b5f_866c_87da620d8f89, name = r39	% Local Parameter:   id =  mw553c0b3c_af7f_4309_8c61_0f1e2c32347c, name = k39
	reaction_mw921ee820_1dbb_4b5f_866c_87da620d8f89_mw553c0b3c_af7f_4309_8c61_0f1e2c32347c=1.67E-4;

	reaction_mw921ee820_1dbb_4b5f_866c_87da620d8f89=reaction_mw921ee820_1dbb_4b5f_866c_87da620d8f89_mw553c0b3c_af7f_4309_8c61_0f1e2c32347c*x(27);

% Reaction: id = mw0bcfad86_59b9_42ff_bcb7_fbb44845049d, name = r36	% Local Parameter:   id =  mwfc146e94_8070_4727_8416_fb55829068cb, name = k36
	reaction_mw0bcfad86_59b9_42ff_bcb7_fbb44845049d_mwfc146e94_8070_4727_8416_fb55829068cb=0.1434;

	reaction_mw0bcfad86_59b9_42ff_bcb7_fbb44845049d=reaction_mw0bcfad86_59b9_42ff_bcb7_fbb44845049d_mwfc146e94_8070_4727_8416_fb55829068cb*x(26);

% Reaction: id = mwe9b50ac7_dac3_4eba_b1db_b3fd392d8fb7, name = r38	% Local Parameter:   id =  mw26688d02_8ab9_4123_89c4_022b981cb72c, name = k38
	reaction_mwe9b50ac7_dac3_4eba_b1db_b3fd392d8fb7_mw26688d02_8ab9_4123_89c4_022b981cb72c=0.1434;

	reaction_mwe9b50ac7_dac3_4eba_b1db_b3fd392d8fb7=reaction_mwe9b50ac7_dac3_4eba_b1db_b3fd392d8fb7_mw26688d02_8ab9_4123_89c4_022b981cb72c*x(28);

% Reaction: id = mw934c3638_603e_4ff0_a763_68f9405fa01f, name = r37	% Local Parameter:   id =  mw5639395a_a5cd_46dd_81b8_30fe72400a2e, name = k37
	reaction_mw934c3638_603e_4ff0_a763_68f9405fa01f_mw5639395a_a5cd_46dd_81b8_30fe72400a2e=202.9;
	% Local Parameter:   id =  mw9cc637fe_d9ca_47d2_a4dc_66009d458094, name = kr37
	reaction_mw934c3638_603e_4ff0_a763_68f9405fa01f_mw9cc637fe_d9ca_47d2_a4dc_66009d458094=0.18;

	reaction_mw934c3638_603e_4ff0_a763_68f9405fa01f=reaction_mw934c3638_603e_4ff0_a763_68f9405fa01f_mw5639395a_a5cd_46dd_81b8_30fe72400a2e*x(23)*x(25)-reaction_mw934c3638_603e_4ff0_a763_68f9405fa01f_mw9cc637fe_d9ca_47d2_a4dc_66009d458094*x(28);

% Reaction: id = mw3c617363_649b_4460_a694_36f7a3127a62, name = r40	% Local Parameter:   id =  mw19173345_925d_427b_8658_add0978e5931, name = k40
	reaction_mw3c617363_649b_4460_a694_36f7a3127a62_mw19173345_925d_427b_8658_add0978e5931=2.854;
	% Local Parameter:   id =  mw9f6790d7_19ce_41d9_b4de_a1658c047501, name = kr40
	reaction_mw3c617363_649b_4460_a694_36f7a3127a62_mw9f6790d7_19ce_41d9_b4de_a1658c047501=0.96;

	reaction_mw3c617363_649b_4460_a694_36f7a3127a62=reaction_mw3c617363_649b_4460_a694_36f7a3127a62_mw19173345_925d_427b_8658_add0978e5931*x(27)*x(29)-reaction_mw3c617363_649b_4460_a694_36f7a3127a62_mw9f6790d7_19ce_41d9_b4de_a1658c047501*x(30);

% Reaction: id = mwf31259aa_32b7_4104_be70_045297b9a512, name = r41	% Local Parameter:   id =  mw23e16d40_acbb_4658_a336_be5d0b0dd86a, name = k41
	reaction_mwf31259aa_32b7_4104_be70_045297b9a512_mw23e16d40_acbb_4658_a336_be5d0b0dd86a=7.76;

	reaction_mwf31259aa_32b7_4104_be70_045297b9a512=reaction_mwf31259aa_32b7_4104_be70_045297b9a512_mw23e16d40_acbb_4658_a336_be5d0b0dd86a*x(30);

% Reaction: id = mw0a51fbf0_409b_4b45_b4ac_0220af4c4e3c, name = r42	% Local Parameter:   id =  mw10c97b8e_72aa_4f56_b3b9_c94baad7e213, name = k42
	reaction_mw0a51fbf0_409b_4b45_b4ac_0220af4c4e3c_mw10c97b8e_72aa_4f56_b3b9_c94baad7e213=0.1;
	% Local Parameter:   id =  mw0b6eb5f7_b133_4b3d_bf15_9fd6c2e9332d, name = kr42
	reaction_mw0a51fbf0_409b_4b45_b4ac_0220af4c4e3c_mw0b6eb5f7_b133_4b3d_bf15_9fd6c2e9332d=0.01;

	reaction_mw0a51fbf0_409b_4b45_b4ac_0220af4c4e3c=reaction_mw0a51fbf0_409b_4b45_b4ac_0220af4c4e3c_mw10c97b8e_72aa_4f56_b3b9_c94baad7e213*x(5)*x(29)-reaction_mw0a51fbf0_409b_4b45_b4ac_0220af4c4e3c_mw0b6eb5f7_b133_4b3d_bf15_9fd6c2e9332d*x(31);

% Reaction: id = mw33baddbd_a23f_45bb_b126_0ba60bbf6c53, name = r43	% Local Parameter:   id =  mwe483687f_b591_4c42_9abc_7ea9f47470bf, name = k43
	reaction_mw33baddbd_a23f_45bb_b126_0ba60bbf6c53_mwe483687f_b591_4c42_9abc_7ea9f47470bf=2.845;
	% Local Parameter:   id =  mwcf964aba_9db6_46c5_b687_beafc5d89169, name = kr43
	reaction_mw33baddbd_a23f_45bb_b126_0ba60bbf6c53_mwcf964aba_9db6_46c5_b687_beafc5d89169=0.96;

	reaction_mw33baddbd_a23f_45bb_b126_0ba60bbf6c53=reaction_mw33baddbd_a23f_45bb_b126_0ba60bbf6c53_mwe483687f_b591_4c42_9abc_7ea9f47470bf*x(31)*x(27)-reaction_mw33baddbd_a23f_45bb_b126_0ba60bbf6c53_mwcf964aba_9db6_46c5_b687_beafc5d89169*x(32);

% Reaction: id = mw652570eb_c9d3_499b_b877_61d360b10980, name = r44	% Local Parameter:   id =  mwb881f20a_cf8a_493a_aa84_59ee90f26dd9, name = k44
	reaction_mw652570eb_c9d3_499b_b877_61d360b10980_mwb881f20a_cf8a_493a_aa84_59ee90f26dd9=7.76;

	reaction_mw652570eb_c9d3_499b_b877_61d360b10980=reaction_mw652570eb_c9d3_499b_b877_61d360b10980_mwb881f20a_cf8a_493a_aa84_59ee90f26dd9*x(32);

% Reaction: id = mwc5aae1f8_52e4_4bcd_b044_3768f90b7b19, name = r45	% Local Parameter:   id =  mwb4c6ed27_c7ec_438f_bafd_4a09a9f356f1, name = k45
	reaction_mwc5aae1f8_52e4_4bcd_b044_3768f90b7b19_mwb4c6ed27_c7ec_438f_bafd_4a09a9f356f1=3.114;
	% Local Parameter:   id =  mwba77a9ba_078d_4ec6_a8b8_d7042a2cefe7, name = kr45
	reaction_mwc5aae1f8_52e4_4bcd_b044_3768f90b7b19_mwba77a9ba_078d_4ec6_a8b8_d7042a2cefe7=0.2;

	reaction_mwc5aae1f8_52e4_4bcd_b044_3768f90b7b19=reaction_mwc5aae1f8_52e4_4bcd_b044_3768f90b7b19_mwb4c6ed27_c7ec_438f_bafd_4a09a9f356f1*x(31)*x(9)-reaction_mwc5aae1f8_52e4_4bcd_b044_3768f90b7b19_mwba77a9ba_078d_4ec6_a8b8_d7042a2cefe7*x(33);

% Reaction: id = mw642ac312_2ee7_4e66_8f3e_e2da2bb6412a, name = r46	% Local Parameter:   id =  mwe1743f7b_ca2c_47d4_91d7_aed2748d98c5, name = k46
	reaction_mw642ac312_2ee7_4e66_8f3e_e2da2bb6412a_mwe1743f7b_ca2c_47d4_91d7_aed2748d98c5=2.661;

	reaction_mw642ac312_2ee7_4e66_8f3e_e2da2bb6412a=reaction_mw642ac312_2ee7_4e66_8f3e_e2da2bb6412a_mwe1743f7b_ca2c_47d4_91d7_aed2748d98c5*x(33);

% Reaction: id = mw584a64d0_560a_4297_9882_80cb4eff73f3, name = r47	% Local Parameter:   id =  mw9f1dbbe6_8aa3_4180_bcea_04343649d7ba, name = k47
	reaction_mw584a64d0_560a_4297_9882_80cb4eff73f3_mw9f1dbbe6_8aa3_4180_bcea_04343649d7ba=1.75;
	% Local Parameter:   id =  mwdf20ff60_f0b7_4c2a_b393_586ec1337e67, name = kr47
	reaction_mw584a64d0_560a_4297_9882_80cb4eff73f3_mwdf20ff60_f0b7_4c2a_b393_586ec1337e67=0.05;

	reaction_mw584a64d0_560a_4297_9882_80cb4eff73f3=reaction_mw584a64d0_560a_4297_9882_80cb4eff73f3_mw9f1dbbe6_8aa3_4180_bcea_04343649d7ba*x(34)*x(27)-reaction_mw584a64d0_560a_4297_9882_80cb4eff73f3_mwdf20ff60_f0b7_4c2a_b393_586ec1337e67*x(35);

% Reaction: id = mw42c97708_4f85_45a8_9141_d0ae529409ca, name = r48	% Local Parameter:   id =  mw91f2ca92_9556_4fb8_ae12_0b72f3e3f261, name = k48
	reaction_mw42c97708_4f85_45a8_9141_d0ae529409ca_mw91f2ca92_9556_4fb8_ae12_0b72f3e3f261=0.7624;

	reaction_mw42c97708_4f85_45a8_9141_d0ae529409ca=reaction_mw42c97708_4f85_45a8_9141_d0ae529409ca_mw91f2ca92_9556_4fb8_ae12_0b72f3e3f261*x(35);

% Reaction: id = mwaa65a34e_fabf_4d6d_ae0b_f1d08b068f33, name = r49	% Local Parameter:   id =  mw77c60377_28ae_4aad_b911_5768fc8b824f, name = k49
	reaction_mwaa65a34e_fabf_4d6d_ae0b_f1d08b068f33_mw77c60377_28ae_4aad_b911_5768fc8b824f=4.0;
	% Local Parameter:   id =  mw2eed2db0_ba78_435b_b2c8_ee91efdba1b4, name = kr49
	reaction_mwaa65a34e_fabf_4d6d_ae0b_f1d08b068f33_mw2eed2db0_ba78_435b_b2c8_ee91efdba1b4=0.01833;

	reaction_mwaa65a34e_fabf_4d6d_ae0b_f1d08b068f33=reaction_mwaa65a34e_fabf_4d6d_ae0b_f1d08b068f33_mw77c60377_28ae_4aad_b911_5768fc8b824f*x(36)*x(37)-reaction_mwaa65a34e_fabf_4d6d_ae0b_f1d08b068f33_mw2eed2db0_ba78_435b_b2c8_ee91efdba1b4*x(38);

% Reaction: id = mw1bd186cf_4762_480a_b70d_d7a775462398, name = r50	% Local Parameter:   id =  mw7e974605_8d9c_4250_8f69_072aab1f24f7, name = k50
	reaction_mw1bd186cf_4762_480a_b70d_d7a775462398_mw7e974605_8d9c_4250_8f69_072aab1f24f7=3.5;

	reaction_mw1bd186cf_4762_480a_b70d_d7a775462398=reaction_mw1bd186cf_4762_480a_b70d_d7a775462398_mw7e974605_8d9c_4250_8f69_072aab1f24f7*x(38);

% Reaction: id = mwf5573ddf_ad7f_478a_a784_557a9cddaaf2, name = r51	% Local Parameter:   id =  mw11cdaca9_941c_4a59_ba2a_3bfeafb65aeb, name = k51
	reaction_mwf5573ddf_ad7f_478a_a784_557a9cddaaf2_mw11cdaca9_941c_4a59_ba2a_3bfeafb65aeb=4.0;
	% Local Parameter:   id =  mw58c37b3e_91e7_445e_846e_77cd0b2320af, name = kr51
	reaction_mwf5573ddf_ad7f_478a_a784_557a9cddaaf2_mw58c37b3e_91e7_445e_846e_77cd0b2320af=0.01833;

	reaction_mwf5573ddf_ad7f_478a_a784_557a9cddaaf2=reaction_mwf5573ddf_ad7f_478a_a784_557a9cddaaf2_mw11cdaca9_941c_4a59_ba2a_3bfeafb65aeb*x(36)*x(39)-reaction_mwf5573ddf_ad7f_478a_a784_557a9cddaaf2_mw58c37b3e_91e7_445e_846e_77cd0b2320af*x(40);

% Reaction: id = mwb49058ff_2997_4187_abe7_4dce4ccf6ff4, name = r52	% Local Parameter:   id =  mw432640ec_11b9_484d_ba26_415538ab9a10, name = k52
	reaction_mwb49058ff_2997_4187_abe7_4dce4ccf6ff4_mw432640ec_11b9_484d_ba26_415538ab9a10=2.9;

	reaction_mwb49058ff_2997_4187_abe7_4dce4ccf6ff4=reaction_mwb49058ff_2997_4187_abe7_4dce4ccf6ff4_mw432640ec_11b9_484d_ba26_415538ab9a10*x(40);

% Reaction: id = mw8301b154_9463_4516_b4c5_c8f8b68691fe, name = r53	% Local Parameter:   id =  mw11bb74b8_d908_46f0_ac4d_06e8dd1aa5ae, name = k53
	reaction_mw8301b154_9463_4516_b4c5_c8f8b68691fe_mw11bb74b8_d908_46f0_ac4d_06e8dd1aa5ae=3.0;
	% Local Parameter:   id =  mwb44117f5_20b2_495e_adf3_3467cd119fd6, name = kr53
	reaction_mw8301b154_9463_4516_b4c5_c8f8b68691fe_mwb44117f5_20b2_495e_adf3_3467cd119fd6=0.033;

	reaction_mw8301b154_9463_4516_b4c5_c8f8b68691fe=reaction_mw8301b154_9463_4516_b4c5_c8f8b68691fe_mw11bb74b8_d908_46f0_ac4d_06e8dd1aa5ae*x(41)*x(42)-reaction_mw8301b154_9463_4516_b4c5_c8f8b68691fe_mwb44117f5_20b2_495e_adf3_3467cd119fd6*x(43);

% Reaction: id = mwf95f743d_6108_49fe_8ffd_bdcc1a9f9a8d, name = r54	% Local Parameter:   id =  mwa4c71b8d_fb74_465b_b76e_cec4e4c95484, name = k54
	reaction_mwf95f743d_6108_49fe_8ffd_bdcc1a9f9a8d_mwa4c71b8d_fb74_465b_b76e_cec4e4c95484=16.0;

	reaction_mwf95f743d_6108_49fe_8ffd_bdcc1a9f9a8d=reaction_mwf95f743d_6108_49fe_8ffd_bdcc1a9f9a8d_mwa4c71b8d_fb74_465b_b76e_cec4e4c95484*x(43);

% Reaction: id = mw51d9d6b8_f0c0_4763_9d11_9be61b5cf5c9, name = r55	% Local Parameter:   id =  mwc40b3165_cc16_4f78_86b5_e34f2731dcbb, name = k55
	reaction_mw51d9d6b8_f0c0_4763_9d11_9be61b5cf5c9_mwc40b3165_cc16_4f78_86b5_e34f2731dcbb=3.0;
	% Local Parameter:   id =  mw8bff2fe0_b582_4020_8f05_83f14451b1c0, name = kr55
	reaction_mw51d9d6b8_f0c0_4763_9d11_9be61b5cf5c9_mw8bff2fe0_b582_4020_8f05_83f14451b1c0=0.033;

	reaction_mw51d9d6b8_f0c0_4763_9d11_9be61b5cf5c9=reaction_mw51d9d6b8_f0c0_4763_9d11_9be61b5cf5c9_mwc40b3165_cc16_4f78_86b5_e34f2731dcbb*x(41)*x(44)-reaction_mw51d9d6b8_f0c0_4763_9d11_9be61b5cf5c9_mw8bff2fe0_b582_4020_8f05_83f14451b1c0*x(45);

% Reaction: id = mw6fd24d16_f57d_46c6_82f5_3f00759fa16b, name = r56	% Local Parameter:   id =  mw3d07dc22_f821_49a5_9712_820ba9592353, name = k56
	reaction_mw6fd24d16_f57d_46c6_82f5_3f00759fa16b_mw3d07dc22_f821_49a5_9712_820ba9592353=5.7;

	reaction_mw6fd24d16_f57d_46c6_82f5_3f00759fa16b=reaction_mw6fd24d16_f57d_46c6_82f5_3f00759fa16b_mw3d07dc22_f821_49a5_9712_820ba9592353*x(45);

% Reaction: id = mw9c208e18_c70d_4231_af0b_ad17cd0bba2d, name = r57	% Local Parameter:   id =  mwa8f70790_9f44_4548_988e_49d13016d2f1, name = k57
	reaction_mw9c208e18_c70d_4231_af0b_ad17cd0bba2d_mwa8f70790_9f44_4548_988e_49d13016d2f1=71.7;
	% Local Parameter:   id =  mwaad540b6_783e_4576_8862_ad522fd897db, name = kr57
	reaction_mw9c208e18_c70d_4231_af0b_ad17cd0bba2d_mwaad540b6_783e_4576_8862_ad522fd897db=0.2;

	reaction_mw9c208e18_c70d_4231_af0b_ad17cd0bba2d=reaction_mw9c208e18_c70d_4231_af0b_ad17cd0bba2d_mwa8f70790_9f44_4548_988e_49d13016d2f1*x(36)*x(47)-reaction_mw9c208e18_c70d_4231_af0b_ad17cd0bba2d_mwaad540b6_783e_4576_8862_ad522fd897db*x(48);

% Reaction: id = mw87711dc1_43d7_40fc_b9e9_a24e2f92419d, name = r58	% Local Parameter:   id =  mwfbc395b5_05b8_4e27_9696_c3ba52edaf74, name = k58
	reaction_mw87711dc1_43d7_40fc_b9e9_a24e2f92419d_mwfbc395b5_05b8_4e27_9696_c3ba52edaf74=1.0;

	reaction_mw87711dc1_43d7_40fc_b9e9_a24e2f92419d=reaction_mw87711dc1_43d7_40fc_b9e9_a24e2f92419d_mwfbc395b5_05b8_4e27_9696_c3ba52edaf74*x(48);

% Reaction: id = mw4b445876_bdce_42d0_867b_fd3c74128a6b, name = r59	% Local Parameter:   id =  mwc489f472_68ce_44e7_aad1_f8d2f6dda4ff, name = k59
	reaction_mw4b445876_bdce_42d0_867b_fd3c74128a6b_mwc489f472_68ce_44e7_aad1_f8d2f6dda4ff=14.3;
	% Local Parameter:   id =  mw56f1bdc0_66fd_47c0_806a_beeaf123e2f2, name = kr59
	reaction_mw4b445876_bdce_42d0_867b_fd3c74128a6b_mw56f1bdc0_66fd_47c0_806a_beeaf123e2f2=0.8;

	reaction_mw4b445876_bdce_42d0_867b_fd3c74128a6b=reaction_mw4b445876_bdce_42d0_867b_fd3c74128a6b_mwc489f472_68ce_44e7_aad1_f8d2f6dda4ff*x(41)*x(49)-reaction_mw4b445876_bdce_42d0_867b_fd3c74128a6b_mw56f1bdc0_66fd_47c0_806a_beeaf123e2f2*x(50);

% Reaction: id = mw40950d59_1012_4361_8418_73e25758e367, name = r60	% Local Parameter:   id =  mwa17c895f_29d8_4977_a99f_cf9bf6216785, name = k60
	reaction_mw40950d59_1012_4361_8418_73e25758e367_mwa17c895f_29d8_4977_a99f_cf9bf6216785=0.058;

	reaction_mw40950d59_1012_4361_8418_73e25758e367=reaction_mw40950d59_1012_4361_8418_73e25758e367_mwa17c895f_29d8_4977_a99f_cf9bf6216785*x(50);

% Reaction: id = mwbfa79c95_487d_4c6f_b437_9e579451a419, name = r61	% Local Parameter:   id =  mwafd23622_952d_44b3_a437_4aa12422add7, name = k61
	reaction_mwbfa79c95_487d_4c6f_b437_9e579451a419_mwafd23622_952d_44b3_a437_4aa12422add7=0.25;
	% Local Parameter:   id =  mw9d9a7d08_b19a_44f1_a806_151597049345, name = kr61
	reaction_mwbfa79c95_487d_4c6f_b437_9e579451a419_mw9d9a7d08_b19a_44f1_a806_151597049345=0.5;

	reaction_mwbfa79c95_487d_4c6f_b437_9e579451a419=reaction_mwbfa79c95_487d_4c6f_b437_9e579451a419_mwafd23622_952d_44b3_a437_4aa12422add7*x(39)*x(49)-reaction_mwbfa79c95_487d_4c6f_b437_9e579451a419_mw9d9a7d08_b19a_44f1_a806_151597049345*x(51);

% Reaction: id = mwa4b69c77_6226_46da_b78c_3e6027d0be41, name = r62	% Local Parameter:   id =  mwac85fd83_4e73_43f1_9c42_01773349d50f, name = k62
	reaction_mwa4b69c77_6226_46da_b78c_3e6027d0be41_mwac85fd83_4e73_43f1_9c42_01773349d50f=0.058;

	reaction_mwa4b69c77_6226_46da_b78c_3e6027d0be41=reaction_mwa4b69c77_6226_46da_b78c_3e6027d0be41_mwac85fd83_4e73_43f1_9c42_01773349d50f*x(51);

% Reaction: id = mwf8bb22e2_5aa3_4c25_a022_a266b1856a48, name = r63	% Local Parameter:   id =  mwd23d026b_c5b7_4742_aab9_b9beb18ec9bc, name = k63
	reaction_mwf8bb22e2_5aa3_4c25_a022_a266b1856a48_mwd23d026b_c5b7_4742_aab9_b9beb18ec9bc=7.0;
	% Local Parameter:   id =  mwf4c4d7a7_1498_4f6c_9d72_cd5cb012146c, name = kr63
	reaction_mwf8bb22e2_5aa3_4c25_a022_a266b1856a48_mwf4c4d7a7_1498_4f6c_9d72_cd5cb012146c=0.6;

	reaction_mwf8bb22e2_5aa3_4c25_a022_a266b1856a48=reaction_mwf8bb22e2_5aa3_4c25_a022_a266b1856a48_mwd23d026b_c5b7_4742_aab9_b9beb18ec9bc*x(46)*x(52)-reaction_mwf8bb22e2_5aa3_4c25_a022_a266b1856a48_mwf4c4d7a7_1498_4f6c_9d72_cd5cb012146c*x(54);

% Reaction: id = mw61305f93_7b2d_4a2d_8d16_f7be026d8671, name = r64	% Local Parameter:   id =  mwe3e5abe4_9f92_43eb_92e4_cea771f5bf14, name = k64
	reaction_mw61305f93_7b2d_4a2d_8d16_f7be026d8671_mwe3e5abe4_9f92_43eb_92e4_cea771f5bf14=0.27;

	reaction_mw61305f93_7b2d_4a2d_8d16_f7be026d8671=reaction_mw61305f93_7b2d_4a2d_8d16_f7be026d8671_mwe3e5abe4_9f92_43eb_92e4_cea771f5bf14*x(54);

% Reaction: id = mwcc31b497_6c50_446c_bbc2_6c5739507252, name = r66	% Local Parameter:   id =  mwa617804d_95cc_4197_a39b_264a2c66b5a3, name = k66
	reaction_mwcc31b497_6c50_446c_bbc2_6c5739507252_mwa617804d_95cc_4197_a39b_264a2c66b5a3=0.3;

	reaction_mwcc31b497_6c50_446c_bbc2_6c5739507252=reaction_mwcc31b497_6c50_446c_bbc2_6c5739507252_mwa617804d_95cc_4197_a39b_264a2c66b5a3*x(53);

% Reaction: id = mw1d8c2435_bb85_4352_a25f_82033250579e, name = r65	% Local Parameter:   id =  mw254868f8_c9fb_493c_bc1d_807cc83c18e6, name = k65
	reaction_mw1d8c2435_bb85_4352_a25f_82033250579e_mw254868f8_c9fb_493c_bc1d_807cc83c18e6=5.0;
	% Local Parameter:   id =  mw78a41659_4abc_4614_9e83_38cbfe1c5262, name = kr65
	reaction_mw1d8c2435_bb85_4352_a25f_82033250579e_mw78a41659_4abc_4614_9e83_38cbfe1c5262=0.5;

	reaction_mw1d8c2435_bb85_4352_a25f_82033250579e=reaction_mw1d8c2435_bb85_4352_a25f_82033250579e_mw254868f8_c9fb_493c_bc1d_807cc83c18e6*x(44)*x(52)-reaction_mw1d8c2435_bb85_4352_a25f_82033250579e_mw78a41659_4abc_4614_9e83_38cbfe1c5262*x(53);

% Reaction: id = mw8dec1159_1925_45d9_af25_3cb709a5017c, name = r67	% Local Parameter:   id =  mwbc2119ce_ade3_4e2a_a3bc_a29cd77adf72, name = k67
	reaction_mw8dec1159_1925_45d9_af25_3cb709a5017c_mwbc2119ce_ade3_4e2a_a3bc_a29cd77adf72=8.898;
	% Local Parameter:   id =  mw54b0e5e9_710f_438e_a8d3_749c594667bc, name = kr67
	reaction_mw8dec1159_1925_45d9_af25_3cb709a5017c_mw54b0e5e9_710f_438e_a8d3_749c594667bc=1.0;

	reaction_mw8dec1159_1925_45d9_af25_3cb709a5017c=reaction_mw8dec1159_1925_45d9_af25_3cb709a5017c_mwbc2119ce_ade3_4e2a_a3bc_a29cd77adf72*x(46)*x(18)-reaction_mw8dec1159_1925_45d9_af25_3cb709a5017c_mw54b0e5e9_710f_438e_a8d3_749c594667bc*x(55);

% Reaction: id = mwcf9f1b1d_e19a_4fa8_85ba_8f17e2cec730, name = r68	% Local Parameter:   id =  mw1ddaf9f4_dcab_4dc2_a6fa_5ce85b9d7a3a, name = k68
	reaction_mwcf9f1b1d_e19a_4fa8_85ba_8f17e2cec730_mw1ddaf9f4_dcab_4dc2_a6fa_5ce85b9d7a3a=0.0426;

	reaction_mwcf9f1b1d_e19a_4fa8_85ba_8f17e2cec730=reaction_mwcf9f1b1d_e19a_4fa8_85ba_8f17e2cec730_mw1ddaf9f4_dcab_4dc2_a6fa_5ce85b9d7a3a*x(55);

% Reaction: id = mwa5c135b4_77e2_4411_98e1_2000c39d4b30, name = r69	% Local Parameter:   id =  mw60892818_7ef4_4f65_8003_9700a708c66c, name = k69
	reaction_mwa5c135b4_77e2_4411_98e1_2000c39d4b30_mw60892818_7ef4_4f65_8003_9700a708c66c=8.898;
	% Local Parameter:   id =  mw6843d346_6e9f_43d5_97f6_1059f164aa16, name = kr69
	reaction_mwa5c135b4_77e2_4411_98e1_2000c39d4b30_mw6843d346_6e9f_43d5_97f6_1059f164aa16=1.0;

	reaction_mwa5c135b4_77e2_4411_98e1_2000c39d4b30=reaction_mwa5c135b4_77e2_4411_98e1_2000c39d4b30_mw60892818_7ef4_4f65_8003_9700a708c66c*x(46)*x(23)-reaction_mwa5c135b4_77e2_4411_98e1_2000c39d4b30_mw6843d346_6e9f_43d5_97f6_1059f164aa16*x(57);

% Reaction: id = mw4685274a_2b55_429f_927f_3fd863592af6, name = r70	% Local Parameter:   id =  mwdaa378da_64fe_4ea4_b79d_c25733837b9f, name = k70
	reaction_mw4685274a_2b55_429f_927f_3fd863592af6_mwdaa378da_64fe_4ea4_b79d_c25733837b9f=0.0426;

	reaction_mw4685274a_2b55_429f_927f_3fd863592af6=reaction_mw4685274a_2b55_429f_927f_3fd863592af6_mwdaa378da_64fe_4ea4_b79d_c25733837b9f*x(57);

% Reaction: id = mw8e331e43_16b4_478d_880b_d5a3244540e4, name = r71	% Local Parameter:   id =  mw3f5e2165_9bb6_4ac3_992e_50943dd2ea05, name = k71
	reaction_mw8e331e43_16b4_478d_880b_d5a3244540e4_mw3f5e2165_9bb6_4ac3_992e_50943dd2ea05=0.002;

	reaction_mw8e331e43_16b4_478d_880b_d5a3244540e4=reaction_mw8e331e43_16b4_478d_880b_d5a3244540e4_mw3f5e2165_9bb6_4ac3_992e_50943dd2ea05*x(56);

% Reaction: id = mw47dee769_daa0_4af4_978a_5ab17e504c2f, name = r72	% Local Parameter:   id =  mwe49ede89_014e_40f2_acfd_0d1a0cd11fe7, name = k72
	reaction_mw47dee769_daa0_4af4_978a_5ab17e504c2f_mwe49ede89_014e_40f2_acfd_0d1a0cd11fe7=0.005;

	reaction_mw47dee769_daa0_4af4_978a_5ab17e504c2f=reaction_mw47dee769_daa0_4af4_978a_5ab17e504c2f_mwe49ede89_014e_40f2_acfd_0d1a0cd11fe7*x(58);

% Reaction: id = mwbd8a133e_1b70_44e8_bef8_78b14141166b, name = r73	% Local Parameter:   id =  mw90873203_7a5d_4fca_a789_5e989ff0c999, name = k73
	reaction_mwbd8a133e_1b70_44e8_bef8_78b14141166b_mw90873203_7a5d_4fca_a789_5e989ff0c999=0.5;
	% Local Parameter:   id =  mw92d81b3b_fa59_4637_8540_8cb8482490d9, name = k73r
	reaction_mwbd8a133e_1b70_44e8_bef8_78b14141166b_mw92d81b3b_fa59_4637_8540_8cb8482490d9=0.005;

	reaction_mwbd8a133e_1b70_44e8_bef8_78b14141166b=reaction_mwbd8a133e_1b70_44e8_bef8_78b14141166b_mw90873203_7a5d_4fca_a789_5e989ff0c999*x(18)*x(6)-reaction_mwbd8a133e_1b70_44e8_bef8_78b14141166b_mw92d81b3b_fa59_4637_8540_8cb8482490d9*x(19);

% Reaction: id = mw3a87ca5a_845d_4ac4_8806_e343cbbfc630, name = r74	% Local Parameter:   id =  mwcc2a950d_261b_4fd7_9c08_9f3c194ba09d, name = k74
	reaction_mw3a87ca5a_845d_4ac4_8806_e343cbbfc630_mwcc2a950d_261b_4fd7_9c08_9f3c194ba09d=5.0;
	% Local Parameter:   id =  mw1351daea_68be_404a_b7b0_105920ff3371, name = k74r
	reaction_mw3a87ca5a_845d_4ac4_8806_e343cbbfc630_mw1351daea_68be_404a_b7b0_105920ff3371=0.1;

	reaction_mw3a87ca5a_845d_4ac4_8806_e343cbbfc630=reaction_mw3a87ca5a_845d_4ac4_8806_e343cbbfc630_mwcc2a950d_261b_4fd7_9c08_9f3c194ba09d*x(19)*x(60)-reaction_mw3a87ca5a_845d_4ac4_8806_e343cbbfc630_mw1351daea_68be_404a_b7b0_105920ff3371*x(59);

% Reaction: id = mw363a5271_1f51_4d5e_87a7_42ea25cb5657, name = r75	% Local Parameter:   id =  mwc6b3c76f_af7b_488c_8751_28f1d9ab90a1, name = k75
	reaction_mw363a5271_1f51_4d5e_87a7_42ea25cb5657_mwc6b3c76f_af7b_488c_8751_28f1d9ab90a1=0.001;

	reaction_mw363a5271_1f51_4d5e_87a7_42ea25cb5657=reaction_mw363a5271_1f51_4d5e_87a7_42ea25cb5657_mwc6b3c76f_af7b_488c_8751_28f1d9ab90a1*x(59);

% Reaction: id = mw6bee0112_92dc_4169_9109_2633772b3aa4, name = r76	% Local Parameter:   id =  mwf9c81339_e73a_45b5_a714_0854b718d44f, name = k76
	reaction_mw6bee0112_92dc_4169_9109_2633772b3aa4_mwf9c81339_e73a_45b5_a714_0854b718d44f=0.5;
	% Local Parameter:   id =  mw587125c7_6092_4627_9cdd_2415b77a8307, name = k76r
	reaction_mw6bee0112_92dc_4169_9109_2633772b3aa4_mw587125c7_6092_4627_9cdd_2415b77a8307=0.005;

	reaction_mw6bee0112_92dc_4169_9109_2633772b3aa4=reaction_mw6bee0112_92dc_4169_9109_2633772b3aa4_mwf9c81339_e73a_45b5_a714_0854b718d44f*x(23)*x(6)-reaction_mw6bee0112_92dc_4169_9109_2633772b3aa4_mw587125c7_6092_4627_9cdd_2415b77a8307*x(24);

% Reaction: id = mwbac9e6ff_2df1_45eb_b3f4_4cae74c64014, name = r77	% Local Parameter:   id =  mwa575cf96_3d57_4222_ac71_bd17006ef035, name = k77
	reaction_mwbac9e6ff_2df1_45eb_b3f4_4cae74c64014_mwa575cf96_3d57_4222_ac71_bd17006ef035=5.0;
	% Local Parameter:   id =  mwf7658bc6_acb6_411e_ae2c_9d8de7738d5f, name = k77r
	reaction_mwbac9e6ff_2df1_45eb_b3f4_4cae74c64014_mwf7658bc6_acb6_411e_ae2c_9d8de7738d5f=0.1;

	reaction_mwbac9e6ff_2df1_45eb_b3f4_4cae74c64014=reaction_mwbac9e6ff_2df1_45eb_b3f4_4cae74c64014_mwa575cf96_3d57_4222_ac71_bd17006ef035*x(24)*x(60)-reaction_mwbac9e6ff_2df1_45eb_b3f4_4cae74c64014_mwf7658bc6_acb6_411e_ae2c_9d8de7738d5f*x(61);

% Reaction: id = mweb93165f_cf03_48f1_b035_59d79e324314, name = r78	% Local Parameter:   id =  mwa137184a_0eb0_4bcb_971c_8e19231b2c07, name = k78
	reaction_mweb93165f_cf03_48f1_b035_59d79e324314_mwa137184a_0eb0_4bcb_971c_8e19231b2c07=0.001;

	reaction_mweb93165f_cf03_48f1_b035_59d79e324314=reaction_mweb93165f_cf03_48f1_b035_59d79e324314_mwa137184a_0eb0_4bcb_971c_8e19231b2c07*x(61);

% Reaction: id = mw85e457d1_73f8_4236_bb61_a128d300003f, name = r79	% Local Parameter:   id =  mwfa680314_051c_4b10_afc9_7e7fbee49e3f, name = k79
	reaction_mw85e457d1_73f8_4236_bb61_a128d300003f_mwfa680314_051c_4b10_afc9_7e7fbee49e3f=0.5;
	% Local Parameter:   id =  mw97b9ab43_02ae_4e42_a524_6b781633a255, name = k79r
	reaction_mw85e457d1_73f8_4236_bb61_a128d300003f_mw97b9ab43_02ae_4e42_a524_6b781633a255=0.005;

	reaction_mw85e457d1_73f8_4236_bb61_a128d300003f=reaction_mw85e457d1_73f8_4236_bb61_a128d300003f_mwfa680314_051c_4b10_afc9_7e7fbee49e3f*x(5)*x(6)-reaction_mw85e457d1_73f8_4236_bb61_a128d300003f_mw97b9ab43_02ae_4e42_a524_6b781633a255*x(62);

% Reaction: id = mw6b159c8f_eee0_4337_b711_2e230c9e2cf6, name = r80	% Local Parameter:   id =  mwcc0d3fcd_9b9e_4390_b588_e57b57d89d22, name = k80
	reaction_mw6b159c8f_eee0_4337_b711_2e230c9e2cf6_mwcc0d3fcd_9b9e_4390_b588_e57b57d89d22=5.0;
	% Local Parameter:   id =  mw56f1be7e_e303_4a72_be17_5bd08e3eb1f2, name = kr80
	reaction_mw6b159c8f_eee0_4337_b711_2e230c9e2cf6_mw56f1be7e_e303_4a72_be17_5bd08e3eb1f2=0.1;

	reaction_mw6b159c8f_eee0_4337_b711_2e230c9e2cf6=reaction_mw6b159c8f_eee0_4337_b711_2e230c9e2cf6_mwcc0d3fcd_9b9e_4390_b588_e57b57d89d22*x(62)*x(60)-reaction_mw6b159c8f_eee0_4337_b711_2e230c9e2cf6_mw56f1be7e_e303_4a72_be17_5bd08e3eb1f2*x(63);

% Reaction: id = mwc9b3b248_3290_452a_9b7c_8fdada3e6687, name = r81	% Local Parameter:   id =  mw1decb177_5075_41f3_a348_ca13b8f4497e, name = k81
	reaction_mwc9b3b248_3290_452a_9b7c_8fdada3e6687_mw1decb177_5075_41f3_a348_ca13b8f4497e=0.001;

	reaction_mwc9b3b248_3290_452a_9b7c_8fdada3e6687=reaction_mwc9b3b248_3290_452a_9b7c_8fdada3e6687_mw1decb177_5075_41f3_a348_ca13b8f4497e*x(63);

% Reaction: id = mw77484632_4e33_468a_9937_24e9bfd0e17d, name = r82	% Local Parameter:   id =  mw001b8124_b461_482a_8c8e_30bffc6718f7, name = k82
	reaction_mw77484632_4e33_468a_9937_24e9bfd0e17d_mw001b8124_b461_482a_8c8e_30bffc6718f7=14.0;
	% Local Parameter:   id =  mw40eca7d6_80b2_4926_9c2f_330422db0814, name = kr82
	reaction_mw77484632_4e33_468a_9937_24e9bfd0e17d_mw40eca7d6_80b2_4926_9c2f_330422db0814=0.1743;

	reaction_mw77484632_4e33_468a_9937_24e9bfd0e17d=reaction_mw77484632_4e33_468a_9937_24e9bfd0e17d_mw001b8124_b461_482a_8c8e_30bffc6718f7*x(5)*x(64)-reaction_mw77484632_4e33_468a_9937_24e9bfd0e17d_mw40eca7d6_80b2_4926_9c2f_330422db0814*x(65);

% Reaction: id = mw2c5858f3_0988_49b0_a94a_057853b84e91, name = r83	% Local Parameter:   id =  mwf3d00ca5_89dc_4693_92ec_a47db8150144, name = k83
	reaction_mw2c5858f3_0988_49b0_a94a_057853b84e91_mwf3d00ca5_89dc_4693_92ec_a47db8150144=33.72;
	% Local Parameter:   id =  mw91a84697_3231_4fa6_b6ff_d69ee86056dc, name = kr83
	reaction_mw2c5858f3_0988_49b0_a94a_057853b84e91_mw91a84697_3231_4fa6_b6ff_d69ee86056dc=3.372E-4;

	reaction_mw2c5858f3_0988_49b0_a94a_057853b84e91=reaction_mw2c5858f3_0988_49b0_a94a_057853b84e91_mwf3d00ca5_89dc_4693_92ec_a47db8150144*x(65)-reaction_mw2c5858f3_0988_49b0_a94a_057853b84e91_mw91a84697_3231_4fa6_b6ff_d69ee86056dc*x(66);

% Reaction: id = mwd3a36af9_3ccc_4bb1_9867_3b9823ba4ac8, name = r84	% Local Parameter:   id =  mw901b5284_bdae_4040_b77d_10f1ec267f06, name = k84
	reaction_mwd3a36af9_3ccc_4bb1_9867_3b9823ba4ac8_mw901b5284_bdae_4040_b77d_10f1ec267f06=0.09;
	% Local Parameter:   id =  mw94cadd24_0432_4f89_a6fc_96cb0475c44e, name = kr84
	reaction_mwd3a36af9_3ccc_4bb1_9867_3b9823ba4ac8_mw94cadd24_0432_4f89_a6fc_96cb0475c44e=0.1764;

	reaction_mwd3a36af9_3ccc_4bb1_9867_3b9823ba4ac8=reaction_mwd3a36af9_3ccc_4bb1_9867_3b9823ba4ac8_mw901b5284_bdae_4040_b77d_10f1ec267f06*x(65)-reaction_mwd3a36af9_3ccc_4bb1_9867_3b9823ba4ac8_mw94cadd24_0432_4f89_a6fc_96cb0475c44e*x(5)*x(67);

% Reaction: id = mw9f000f29_2512_4d4a_9dd9_e59aaf296d31, name = r85	% Local Parameter:   id =  mw688106ee_719d_4995_b1a0_faeefdb0af5a, name = k85
	reaction_mw9f000f29_2512_4d4a_9dd9_e59aaf296d31_mw688106ee_719d_4995_b1a0_faeefdb0af5a=1.0;
	% Local Parameter:   id =  mw85c8ff7d_8d7c_4403_8a58_4996a3e6ac28, name = kr85
	reaction_mw9f000f29_2512_4d4a_9dd9_e59aaf296d31_mw85c8ff7d_8d7c_4403_8a58_4996a3e6ac28=0.038;

	reaction_mw9f000f29_2512_4d4a_9dd9_e59aaf296d31=reaction_mw9f000f29_2512_4d4a_9dd9_e59aaf296d31_mw688106ee_719d_4995_b1a0_faeefdb0af5a*x(68)*x(67)-reaction_mw9f000f29_2512_4d4a_9dd9_e59aaf296d31_mw85c8ff7d_8d7c_4403_8a58_4996a3e6ac28*x(69);

% Reaction: id = mw837b5ad7_4a8c_4c55_94ff_0fdd63048044, name = r86	% Local Parameter:   id =  mw4f6f44d9_408e_49b2_bedf_d34b2448725e, name = k86
	reaction_mw837b5ad7_4a8c_4c55_94ff_0fdd63048044_mw4f6f44d9_408e_49b2_bedf_d34b2448725e=0.595;

	reaction_mw837b5ad7_4a8c_4c55_94ff_0fdd63048044=reaction_mw837b5ad7_4a8c_4c55_94ff_0fdd63048044_mw4f6f44d9_408e_49b2_bedf_d34b2448725e*x(69);

% Reaction: id = mwd15926b3_069a_4b16_a6fc_c0c15083d621, name = r87	% Local Parameter:   id =  mwd3e2533f_8d57_407c_834d_e0dde30b7f4a, name = k87
	reaction_mwd15926b3_069a_4b16_a6fc_c0c15083d621_mwd3e2533f_8d57_407c_834d_e0dde30b7f4a=4.7E-6;
	% Local Parameter:   id =  mwbd416b7b_f9b6_4464_b9e8_be4ac001d13d, name = kr87
	reaction_mwd15926b3_069a_4b16_a6fc_c0c15083d621_mwbd416b7b_f9b6_4464_b9e8_be4ac001d13d=2.297E-6;

	reaction_mwd15926b3_069a_4b16_a6fc_c0c15083d621=reaction_mwd15926b3_069a_4b16_a6fc_c0c15083d621_mwd3e2533f_8d57_407c_834d_e0dde30b7f4a*x(70)-reaction_mwd15926b3_069a_4b16_a6fc_c0c15083d621_mwbd416b7b_f9b6_4464_b9e8_be4ac001d13d*x(68)*x(64);

% Reaction: id = mw3a5e0932_d50f_4fe6_b8cb_0ad649f305b0, name = r88	% Local Parameter:   id =  mw64664eb9_353a_4f1d_a8dc_e22bcb06e2c2, name = k88
	reaction_mw3a5e0932_d50f_4fe6_b8cb_0ad649f305b0_mw64664eb9_353a_4f1d_a8dc_e22bcb06e2c2=25.0;
	% Local Parameter:   id =  mw0573df9d_f365_40b7_83d4_3846a05aefdc, name = kr88
	reaction_mw3a5e0932_d50f_4fe6_b8cb_0ad649f305b0_mw0573df9d_f365_40b7_83d4_3846a05aefdc=3.5;

	reaction_mw3a5e0932_d50f_4fe6_b8cb_0ad649f305b0=reaction_mw3a5e0932_d50f_4fe6_b8cb_0ad649f305b0_mw64664eb9_353a_4f1d_a8dc_e22bcb06e2c2*x(67)*x(71)-reaction_mw3a5e0932_d50f_4fe6_b8cb_0ad649f305b0_mw0573df9d_f365_40b7_83d4_3846a05aefdc*x(72);

% Reaction: id = mw5dcc8719_3180_4bd0_8797_08e256131961, name = r89	% Local Parameter:   id =  mw134431c3_e8e5_4375_89a0_2c51a03d65dd, name = k89
	reaction_mw5dcc8719_3180_4bd0_8797_08e256131961_mw134431c3_e8e5_4375_89a0_2c51a03d65dd=25.0;

	reaction_mw5dcc8719_3180_4bd0_8797_08e256131961=reaction_mw5dcc8719_3180_4bd0_8797_08e256131961_mw134431c3_e8e5_4375_89a0_2c51a03d65dd*x(72);

% Reaction: id = mw376b0685_ef73_4fcc_94af_2ada24cf8a8b, name = r90	% Local Parameter:   id =  mw22510791_ef7e_4373_907c_9eecbc8adda7, name = k90
	reaction_mw376b0685_ef73_4fcc_94af_2ada24cf8a8b_mw22510791_ef7e_4373_907c_9eecbc8adda7=10.0;
	% Local Parameter:   id =  mwf59d397b_cfee_4a84_9279_134cc951db8c, name = kr90
	reaction_mw376b0685_ef73_4fcc_94af_2ada24cf8a8b_mwf59d397b_cfee_4a84_9279_134cc951db8c=3.0;

	reaction_mw376b0685_ef73_4fcc_94af_2ada24cf8a8b=reaction_mw376b0685_ef73_4fcc_94af_2ada24cf8a8b_mw22510791_ef7e_4373_907c_9eecbc8adda7*x(74)*x(73)-reaction_mw376b0685_ef73_4fcc_94af_2ada24cf8a8b_mwf59d397b_cfee_4a84_9279_134cc951db8c*x(75);

% Reaction: id = mwcc7cfa9c_4945_403a_938e_b237c371a5ef, name = r91	% Local Parameter:   id =  mwe2aded94_f2b5_4513_8670_71a86abf7968, name = k91
	reaction_mwcc7cfa9c_4945_403a_938e_b237c371a5ef_mwe2aded94_f2b5_4513_8670_71a86abf7968=10.0;
	% Local Parameter:   id =  mw8d6eacb6_7184_4564_8cde_53e93add2146, name = kr91
	reaction_mwcc7cfa9c_4945_403a_938e_b237c371a5ef_mw8d6eacb6_7184_4564_8cde_53e93add2146=1.0;

	reaction_mwcc7cfa9c_4945_403a_938e_b237c371a5ef=reaction_mwcc7cfa9c_4945_403a_938e_b237c371a5ef_mwe2aded94_f2b5_4513_8670_71a86abf7968*x(75)*x(76)-reaction_mwcc7cfa9c_4945_403a_938e_b237c371a5ef_mw8d6eacb6_7184_4564_8cde_53e93add2146*x(77);

% Reaction: id = mw98da32e0_b061_40c5_9d32_40744134f3fa, name = r92	% Local Parameter:   id =  mw3c3648cb_6d56_4d9d_be47_129483778fd6, name = k92
	reaction_mw98da32e0_b061_40c5_9d32_40744134f3fa_mw3c3648cb_6d56_4d9d_be47_129483778fd6=10.0;

	reaction_mw98da32e0_b061_40c5_9d32_40744134f3fa=reaction_mw98da32e0_b061_40c5_9d32_40744134f3fa_mw3c3648cb_6d56_4d9d_be47_129483778fd6*x(77);

% Reaction: id = mw31369230_1f14_45bd_be02_a44a275c6e31, name = r93	% Local Parameter:   id =  mw98405e53_330b_4a64_a700_a62bb3f21426, name = k93
	reaction_mw31369230_1f14_45bd_be02_a44a275c6e31_mw98405e53_330b_4a64_a700_a62bb3f21426=0.1;
	% Local Parameter:   id =  mw11f8de84_6639_486d_bf17_8f7021f54b66, name = kr93
	reaction_mw31369230_1f14_45bd_be02_a44a275c6e31_mw11f8de84_6639_486d_bf17_8f7021f54b66=0.005;

	reaction_mw31369230_1f14_45bd_be02_a44a275c6e31=reaction_mw31369230_1f14_45bd_be02_a44a275c6e31_mw98405e53_330b_4a64_a700_a62bb3f21426*x(78)-reaction_mw31369230_1f14_45bd_be02_a44a275c6e31_mw11f8de84_6639_486d_bf17_8f7021f54b66*x(79)*x(76);

% Reaction: id = mw12311a84_3f8d_40c6_8b14_961a8a58d1b6, name = r94	% Local Parameter:   id =  mw65e1222f_39ad_4a29_ae76_04b7d591af38, name = k94
	reaction_mw12311a84_3f8d_40c6_8b14_961a8a58d1b6_mw65e1222f_39ad_4a29_ae76_04b7d591af38=1.0;
	% Local Parameter:   id =  mw11e520e6_b1f1_4802_af71_92a2bd9cb644, name = kr94
	reaction_mw12311a84_3f8d_40c6_8b14_961a8a58d1b6_mw11e520e6_b1f1_4802_af71_92a2bd9cb644=0.001;

	reaction_mw12311a84_3f8d_40c6_8b14_961a8a58d1b6=reaction_mw12311a84_3f8d_40c6_8b14_961a8a58d1b6_mw65e1222f_39ad_4a29_ae76_04b7d591af38*x(79)-reaction_mw12311a84_3f8d_40c6_8b14_961a8a58d1b6_mw11e520e6_b1f1_4802_af71_92a2bd9cb644*x(80)*x(73);

% Reaction: id = mwf3d393e9_ae09_4eab_a39a_ed0eef0f54bc, name = r95	% Local Parameter:   id =  mw6a4e035b_11a7_4155_9a78_cfba13631cb1, name = k95
	reaction_mwf3d393e9_ae09_4eab_a39a_ed0eef0f54bc_mw6a4e035b_11a7_4155_9a78_cfba13631cb1=0.05;

	reaction_mwf3d393e9_ae09_4eab_a39a_ed0eef0f54bc=reaction_mwf3d393e9_ae09_4eab_a39a_ed0eef0f54bc_mw6a4e035b_11a7_4155_9a78_cfba13631cb1*x(81);

% Reaction: id = mw2698f402_d00b_451e_8b22_93a322fe9a92, name = r96	% Local Parameter:   id =  mw6eebbe41_cf28_46e8_930c_26f50e08d602, name = k96
	reaction_mw2698f402_d00b_451e_8b22_93a322fe9a92_mw6eebbe41_cf28_46e8_930c_26f50e08d602=0.001;
	% Local Parameter:   id =  mw751c2663_d807_482f_991b_c8032cb6d996, name = kr96
	reaction_mw2698f402_d00b_451e_8b22_93a322fe9a92_mw751c2663_d807_482f_991b_c8032cb6d996=0.001;

	reaction_mw2698f402_d00b_451e_8b22_93a322fe9a92=reaction_mw2698f402_d00b_451e_8b22_93a322fe9a92_mw6eebbe41_cf28_46e8_930c_26f50e08d602*x(82)-reaction_mw2698f402_d00b_451e_8b22_93a322fe9a92_mw751c2663_d807_482f_991b_c8032cb6d996*x(74)*x(83);

% Reaction: id = mw028e8b3e_b531_4466_9c3a_e3fcf7fc9be9, name = r97	% Local Parameter:   id =  mwd2d0b340_bbdb_40bd_9eac_992a2a402b94, name = k97
	reaction_mw028e8b3e_b531_4466_9c3a_e3fcf7fc9be9_mwd2d0b340_bbdb_40bd_9eac_992a2a402b94=10.0;
	% Local Parameter:   id =  mwb1b46773_a218_4f99_a000_a98fbc1275d7, name = kr97
	reaction_mw028e8b3e_b531_4466_9c3a_e3fcf7fc9be9_mwb1b46773_a218_4f99_a000_a98fbc1275d7=1.0;

	reaction_mw028e8b3e_b531_4466_9c3a_e3fcf7fc9be9=reaction_mw028e8b3e_b531_4466_9c3a_e3fcf7fc9be9_mwd2d0b340_bbdb_40bd_9eac_992a2a402b94*x(80)*x(83)-reaction_mw028e8b3e_b531_4466_9c3a_e3fcf7fc9be9_mwb1b46773_a218_4f99_a000_a98fbc1275d7*x(81);

% Reaction: id = mwc5e0c166_6a3a_4913_9ed1_dafe97bdb371, name = r98	% Local Parameter:   id =  mw193f2553_1ab3_4b07_9b4b_201ee9e08c96, name = k98
	reaction_mwc5e0c166_6a3a_4913_9ed1_dafe97bdb371_mw193f2553_1ab3_4b07_9b4b_201ee9e08c96=10.0;
	% Local Parameter:   id =  mwb7292ff5_dd13_41aa_b9b8_2c0c75d35fb1, name = kr98
	reaction_mwc5e0c166_6a3a_4913_9ed1_dafe97bdb371_mwb7292ff5_dd13_41aa_b9b8_2c0c75d35fb1=1.0;

	reaction_mwc5e0c166_6a3a_4913_9ed1_dafe97bdb371=reaction_mwc5e0c166_6a3a_4913_9ed1_dafe97bdb371_mw193f2553_1ab3_4b07_9b4b_201ee9e08c96*x(79)*x(83)-reaction_mwc5e0c166_6a3a_4913_9ed1_dafe97bdb371_mwb7292ff5_dd13_41aa_b9b8_2c0c75d35fb1*x(84);

% Reaction: id = mw94b3bae0_4da9_4358_a5ac_a46a5cbf621b, name = r99	% Local Parameter:   id =  mwf4069175_b898_4633_ac1e_20f44431c36a, name = k99
	reaction_mw94b3bae0_4da9_4358_a5ac_a46a5cbf621b_mwf4069175_b898_4633_ac1e_20f44431c36a=0.05;

	reaction_mw94b3bae0_4da9_4358_a5ac_a46a5cbf621b=reaction_mw94b3bae0_4da9_4358_a5ac_a46a5cbf621b_mwf4069175_b898_4633_ac1e_20f44431c36a*x(84);

% Reaction: id = mw362ca1b3_224a_42fb_a14b_6ff467748a5e, name = r100	% Local Parameter:   id =  mw6d852e8c_c64a_4926_80c4_781a9c04b20e, name = k100
	reaction_mw362ca1b3_224a_42fb_a14b_6ff467748a5e_mw6d852e8c_c64a_4926_80c4_781a9c04b20e=0.001;
	% Local Parameter:   id =  mw4d614bfc_3e20_450e_8890_6326afd0a0d7, name = kr100
	reaction_mw362ca1b3_224a_42fb_a14b_6ff467748a5e_mw4d614bfc_3e20_450e_8890_6326afd0a0d7=0.001;

	reaction_mw362ca1b3_224a_42fb_a14b_6ff467748a5e=reaction_mw362ca1b3_224a_42fb_a14b_6ff467748a5e_mw6d852e8c_c64a_4926_80c4_781a9c04b20e*x(85)-reaction_mw362ca1b3_224a_42fb_a14b_6ff467748a5e_mw4d614bfc_3e20_450e_8890_6326afd0a0d7*x(75)*x(83);

% Reaction: id = mw3994e898_7232_4b70_9c58_b3476e8655f5, name = r101	% Local Parameter:   id =  mw3676a900_b098_4a74_a511_e15984ca0cd2, name = k101
	reaction_mw3994e898_7232_4b70_9c58_b3476e8655f5_mw3676a900_b098_4a74_a511_e15984ca0cd2=10.0;
	% Local Parameter:   id =  mwf68a0726_94b5_4be1_933f_1ac48053601d, name = kr101
	reaction_mw3994e898_7232_4b70_9c58_b3476e8655f5_mwf68a0726_94b5_4be1_933f_1ac48053601d=1.0;

	reaction_mw3994e898_7232_4b70_9c58_b3476e8655f5=reaction_mw3994e898_7232_4b70_9c58_b3476e8655f5_mw3676a900_b098_4a74_a511_e15984ca0cd2*x(78)*x(83)-reaction_mw3994e898_7232_4b70_9c58_b3476e8655f5_mwf68a0726_94b5_4be1_933f_1ac48053601d*x(86);

% Reaction: id = mw75acd2d1_3fdf_4c3f_8d99_6d62f825d5e2, name = r102	% Local Parameter:   id =  mwb4f0353c_d140_44cc_ab75_566fcc2909c5, name = k102
	reaction_mw75acd2d1_3fdf_4c3f_8d99_6d62f825d5e2_mwb4f0353c_d140_44cc_ab75_566fcc2909c5=0.05;

	reaction_mw75acd2d1_3fdf_4c3f_8d99_6d62f825d5e2=reaction_mw75acd2d1_3fdf_4c3f_8d99_6d62f825d5e2_mwb4f0353c_d140_44cc_ab75_566fcc2909c5*x(86);

% Reaction: id = mw4a334f7d_9bce_4690_b623_a427ed66a174, name = r103	% Local Parameter:   id =  mw6165953d_ce44_4b21_a18a_c401c04993f1, name = k103
	reaction_mw4a334f7d_9bce_4690_b623_a427ed66a174_mw6165953d_ce44_4b21_a18a_c401c04993f1=0.001;
	% Local Parameter:   id =  mw99a30aef_212a_4577_bcfd_8c5764057cca, name = kr103
	reaction_mw4a334f7d_9bce_4690_b623_a427ed66a174_mw99a30aef_212a_4577_bcfd_8c5764057cca=0.001;

	reaction_mw4a334f7d_9bce_4690_b623_a427ed66a174=reaction_mw4a334f7d_9bce_4690_b623_a427ed66a174_mw6165953d_ce44_4b21_a18a_c401c04993f1*x(87)-reaction_mw4a334f7d_9bce_4690_b623_a427ed66a174_mw99a30aef_212a_4577_bcfd_8c5764057cca*x(77)*x(83);

% Reaction: id = mw950485f2_4463_4309_a4e4_cc81d16ffb7f, name = r104	% Local Parameter:   id =  mw94b0216f_3353_4b36_b9b7_fd34a0510b08, name = Kon
	reaction_mw950485f2_4463_4309_a4e4_cc81d16ffb7f_mw94b0216f_3353_4b36_b9b7_fd34a0510b08=0.1;
	% Local Parameter:   id =  mw2034bbe7_27cc_410c_9870_1f8a5986dfa5, name = Km
	reaction_mw950485f2_4463_4309_a4e4_cc81d16ffb7f_mw2034bbe7_27cc_410c_9870_1f8a5986dfa5=0.2;

	reaction_mw950485f2_4463_4309_a4e4_cc81d16ffb7f=reaction_mw950485f2_4463_4309_a4e4_cc81d16ffb7f_mw94b0216f_3353_4b36_b9b7_fd34a0510b08*x(88)*x(36)/(reaction_mw950485f2_4463_4309_a4e4_cc81d16ffb7f_mw2034bbe7_27cc_410c_9870_1f8a5986dfa5+x(36));

% Reaction: id = mw62f71309_e066_47d2_9b99_01f78a51c218, name = r105	% Local Parameter:   id =  mw0cea56f3_1cdb_410e_a5a4_f3635ba5c94b, name = k105
	reaction_mw62f71309_e066_47d2_9b99_01f78a51c218_mw0cea56f3_1cdb_410e_a5a4_f3635ba5c94b=1.0;

	reaction_mw62f71309_e066_47d2_9b99_01f78a51c218=reaction_mw62f71309_e066_47d2_9b99_01f78a51c218_mw0cea56f3_1cdb_410e_a5a4_f3635ba5c94b*x(89);

% Reaction: id = mwe8647e48_f4a9_40f4_9b32_f89ded572e01, name = 106	% Local Parameter:   id =  mw50a0e884_a88c_46a7_b985_788868bc1029, name = k106
	reaction_mwe8647e48_f4a9_40f4_9b32_f89ded572e01_mw50a0e884_a88c_46a7_b985_788868bc1029=5.5;
	% Local Parameter:   id =  mw2c88e0e2_e9c3_4e4c_bb2e_b0cd1f6420f4, name = k106r
	reaction_mwe8647e48_f4a9_40f4_9b32_f89ded572e01_mw2c88e0e2_e9c3_4e4c_bb2e_b0cd1f6420f4=11.74;

	reaction_mwe8647e48_f4a9_40f4_9b32_f89ded572e01=reaction_mwe8647e48_f4a9_40f4_9b32_f89ded572e01_mw50a0e884_a88c_46a7_b985_788868bc1029*x(5)*x(90)-reaction_mwe8647e48_f4a9_40f4_9b32_f89ded572e01_mw2c88e0e2_e9c3_4e4c_bb2e_b0cd1f6420f4*x(91);

% Reaction: id = mw65b9e026_bc6c_4c94_8b37_8b9acdf50c8a, name = 107	% Local Parameter:   id =  mw95e2190d_8e39_419b_ad26_7cc141f7b87b, name = K107
	reaction_mw65b9e026_bc6c_4c94_8b37_8b9acdf50c8a_mw95e2190d_8e39_419b_ad26_7cc141f7b87b=0.4;

	reaction_mw65b9e026_bc6c_4c94_8b37_8b9acdf50c8a=reaction_mw65b9e026_bc6c_4c94_8b37_8b9acdf50c8a_mw95e2190d_8e39_419b_ad26_7cc141f7b87b*x(91);

% Reaction: id = mw1c9d29fa_bff4_4d2f_9d5f_f1791e4882a3, name = 108	% Local Parameter:   id =  mw76d68ace_272d_4178_bba2_74dfdf260c70, name = K108
	reaction_mw1c9d29fa_bff4_4d2f_9d5f_f1791e4882a3_mw76d68ace_272d_4178_bba2_74dfdf260c70=5.0;
	% Local Parameter:   id =  mwe37b936f_7781_4a01_b59b_96bd7db0c49e, name = K108r
	reaction_mw1c9d29fa_bff4_4d2f_9d5f_f1791e4882a3_mwe37b936f_7781_4a01_b59b_96bd7db0c49e=0.5;

	reaction_mw1c9d29fa_bff4_4d2f_9d5f_f1791e4882a3=reaction_mw1c9d29fa_bff4_4d2f_9d5f_f1791e4882a3_mw76d68ace_272d_4178_bba2_74dfdf260c70*x(5)*x(92)-reaction_mw1c9d29fa_bff4_4d2f_9d5f_f1791e4882a3_mwe37b936f_7781_4a01_b59b_96bd7db0c49e*x(93);

% Reaction: id = mwad97bd5a_3dae_49d9_990b_2e6574740618, name = 109	% Local Parameter:   id =  mwb6701ead_d3f2_4eb3_8b08_341cea49a4b2, name = k109
	reaction_mwad97bd5a_3dae_49d9_990b_2e6574740618_mwb6701ead_d3f2_4eb3_8b08_341cea49a4b2=1.0;
	% Local Parameter:   id =  mwa5016035_3f9f_44fc_9f69_1d7a0155eb36, name = k109r
	reaction_mwad97bd5a_3dae_49d9_990b_2e6574740618_mwa5016035_3f9f_44fc_9f69_1d7a0155eb36=0.2;

	reaction_mwad97bd5a_3dae_49d9_990b_2e6574740618=reaction_mwad97bd5a_3dae_49d9_990b_2e6574740618_mwb6701ead_d3f2_4eb3_8b08_341cea49a4b2*x(92)*x(94)-reaction_mwad97bd5a_3dae_49d9_990b_2e6574740618_mwa5016035_3f9f_44fc_9f69_1d7a0155eb36*x(95);

% Reaction: id = mwe9988e4a_083c_4f8e_b154_3e599c9307b0, name = 110	% Local Parameter:   id =  mw26164d03_adda_4a21_b5ac_59e1d5a8d8ab, name = k110
	reaction_mwe9988e4a_083c_4f8e_b154_3e599c9307b0_mw26164d03_adda_4a21_b5ac_59e1d5a8d8ab=0.003;

	reaction_mwe9988e4a_083c_4f8e_b154_3e599c9307b0=reaction_mwe9988e4a_083c_4f8e_b154_3e599c9307b0_mw26164d03_adda_4a21_b5ac_59e1d5a8d8ab*x(95);

% Reaction: id = mwf8bacf1a_6c1a_49b6_b344_2d3bd404a735, name = 111	% Local Parameter:   id =  mw9fe16c2b_7271_4e4f_b6de_c149721a3198, name = k111
	reaction_mwf8bacf1a_6c1a_49b6_b344_2d3bd404a735_mw9fe16c2b_7271_4e4f_b6de_c149721a3198=20.0;
	% Local Parameter:   id =  mw74ea5b55_ead0_4b6f_8da0_fd1dcf7e231d, name = k111r
	reaction_mwf8bacf1a_6c1a_49b6_b344_2d3bd404a735_mw74ea5b55_ead0_4b6f_8da0_fd1dcf7e231d=0.1;

	reaction_mwf8bacf1a_6c1a_49b6_b344_2d3bd404a735=reaction_mwf8bacf1a_6c1a_49b6_b344_2d3bd404a735_mw9fe16c2b_7271_4e4f_b6de_c149721a3198*x(92)*x(92)-reaction_mwf8bacf1a_6c1a_49b6_b344_2d3bd404a735_mw74ea5b55_ead0_4b6f_8da0_fd1dcf7e231d*x(97);

% Reaction: id = mwc9b945cf_3a14_4bd9_b253_7064498c75e2, name = 112	% Local Parameter:   id =  mw8cbe6595_6f16_4704_afe2_0dd043a175fa, name = k112
	reaction_mwc9b945cf_3a14_4bd9_b253_7064498c75e2_mw8cbe6595_6f16_4704_afe2_0dd043a175fa=1.0;
	% Local Parameter:   id =  mw21d22acd_ddd4_4794_9700_52201984f75b, name = k112r
	reaction_mwc9b945cf_3a14_4bd9_b253_7064498c75e2_mw21d22acd_ddd4_4794_9700_52201984f75b=0.2;

	reaction_mwc9b945cf_3a14_4bd9_b253_7064498c75e2=reaction_mwc9b945cf_3a14_4bd9_b253_7064498c75e2_mw8cbe6595_6f16_4704_afe2_0dd043a175fa*x(97)*x(94)-reaction_mwc9b945cf_3a14_4bd9_b253_7064498c75e2_mw21d22acd_ddd4_4794_9700_52201984f75b*x(96);

% Reaction: id = mw75c6078f_fb76_4ca9_9fdd_e221e3ba57ad, name = 113	% Local Parameter:   id =  mw81384973_14a0_4498_ab21_f70666d46d7f, name = k113
	reaction_mw75c6078f_fb76_4ca9_9fdd_e221e3ba57ad_mw81384973_14a0_4498_ab21_f70666d46d7f=0.003;

	reaction_mw75c6078f_fb76_4ca9_9fdd_e221e3ba57ad=reaction_mw75c6078f_fb76_4ca9_9fdd_e221e3ba57ad_mw81384973_14a0_4498_ab21_f70666d46d7f*x(96);

% Reaction: id = mw177fa7b0_f0be_4c3e_8b47_2ac4e13159a2, name = 114	% Local Parameter:   id =  mw9f1a7f64_0b37_42df_9dd5_e1a44efdcbba, name = k114
	reaction_mw177fa7b0_f0be_4c3e_8b47_2ac4e13159a2_mw9f1a7f64_0b37_42df_9dd5_e1a44efdcbba=2.0E-4;
	% Local Parameter:   id =  mw366e6f17_4081_4cdc_9fa5_0aeb354d692c, name = k114r
	reaction_mw177fa7b0_f0be_4c3e_8b47_2ac4e13159a2_mw366e6f17_4081_4cdc_9fa5_0aeb354d692c=0.2;

	reaction_mw177fa7b0_f0be_4c3e_8b47_2ac4e13159a2=reaction_mw177fa7b0_f0be_4c3e_8b47_2ac4e13159a2_mw9f1a7f64_0b37_42df_9dd5_e1a44efdcbba*x(90)*x(92)-reaction_mw177fa7b0_f0be_4c3e_8b47_2ac4e13159a2_mw366e6f17_4081_4cdc_9fa5_0aeb354d692c*x(98);

% Reaction: id = mwec4127b5_6bcf_4128_aff4_a6b3c470f690, name = 115	% Local Parameter:   id =  mw1df2caba_8e41_4fe5_a1b5_7777eb98ed1c, name = k115
	reaction_mwec4127b5_6bcf_4128_aff4_a6b3c470f690_mw1df2caba_8e41_4fe5_a1b5_7777eb98ed1c=0.005;

	reaction_mwec4127b5_6bcf_4128_aff4_a6b3c470f690=reaction_mwec4127b5_6bcf_4128_aff4_a6b3c470f690_mw1df2caba_8e41_4fe5_a1b5_7777eb98ed1c*x(97);

% Reaction: id = mw5c806b00_59a1_491e_99a1_2c932b2d5d7a, name = 116	% Local Parameter:   id =  mw5a798f7a_b4eb_4a27_b413_4ff3956b90e9, name = k116
	reaction_mw5c806b00_59a1_491e_99a1_2c932b2d5d7a_mw5a798f7a_b4eb_4a27_b413_4ff3956b90e9=20.0;
	% Local Parameter:   id =  mw54178365_18c1_47e0_94ee_6b96582c52ef, name = k116r
	reaction_mw5c806b00_59a1_491e_99a1_2c932b2d5d7a_mw54178365_18c1_47e0_94ee_6b96582c52ef=0.1;

	reaction_mw5c806b00_59a1_491e_99a1_2c932b2d5d7a=reaction_mw5c806b00_59a1_491e_99a1_2c932b2d5d7a_mw5a798f7a_b4eb_4a27_b413_4ff3956b90e9*x(100)*x(100)-reaction_mw5c806b00_59a1_491e_99a1_2c932b2d5d7a_mw54178365_18c1_47e0_94ee_6b96582c52ef*x(99);

% Reaction: id = mw26fdabae_323b_4a78_b134_4c2eb70ea6a7, name = 117	% Local Parameter:   id =  mw1ff4e75e_fce5_4a7a_907b_05df4981f80b, name = k117
	reaction_mw26fdabae_323b_4a78_b134_4c2eb70ea6a7_mw1ff4e75e_fce5_4a7a_907b_05df4981f80b=1.0;
	% Local Parameter:   id =  mw8b269d52_eda9_4dd1_8616_ebcf29c971fa, name = k117r
	reaction_mw26fdabae_323b_4a78_b134_4c2eb70ea6a7_mw8b269d52_eda9_4dd1_8616_ebcf29c971fa=0.2;

	reaction_mw26fdabae_323b_4a78_b134_4c2eb70ea6a7=reaction_mw26fdabae_323b_4a78_b134_4c2eb70ea6a7_mw1ff4e75e_fce5_4a7a_907b_05df4981f80b*x(99)*x(101)-reaction_mw26fdabae_323b_4a78_b134_4c2eb70ea6a7_mw8b269d52_eda9_4dd1_8616_ebcf29c971fa*x(102);

% Reaction: id = mw3b0c171c_6d60_41ca_8193_83cd5e6c188c, name = 118	% Local Parameter:   id =  mw90b25c4b_ad1a_4ee5_ae20_c60451484516, name = k118
	reaction_mw3b0c171c_6d60_41ca_8193_83cd5e6c188c_mw90b25c4b_ad1a_4ee5_ae20_c60451484516=0.005;

	reaction_mw3b0c171c_6d60_41ca_8193_83cd5e6c188c=reaction_mw3b0c171c_6d60_41ca_8193_83cd5e6c188c_mw90b25c4b_ad1a_4ee5_ae20_c60451484516*x(102);

% Reaction: id = mwc38a99c8_74cf_49f2_a16b_f6610ca1a0a7, name = 119	% Local Parameter:   id =  mwa0806e7a_a90d_4187_9c37_6d9ea569a447, name = k119
	reaction_mwc38a99c8_74cf_49f2_a16b_f6610ca1a0a7_mwa0806e7a_a90d_4187_9c37_6d9ea569a447=2.0E-4;
	% Local Parameter:   id =  mw95cb9071_56e2_447d_b7c7_59ac96baa623, name = k119r
	reaction_mwc38a99c8_74cf_49f2_a16b_f6610ca1a0a7_mw95cb9071_56e2_447d_b7c7_59ac96baa623=0.2;

	reaction_mwc38a99c8_74cf_49f2_a16b_f6610ca1a0a7=reaction_mwc38a99c8_74cf_49f2_a16b_f6610ca1a0a7_mwa0806e7a_a90d_4187_9c37_6d9ea569a447*x(104)*x(100)-reaction_mwc38a99c8_74cf_49f2_a16b_f6610ca1a0a7_mw95cb9071_56e2_447d_b7c7_59ac96baa623*x(103);

% Reaction: id = mw45d92b79_0656_4795_87d0_7a465949ca43, name = 120	% Local Parameter:   id =  mwba545ecf_c7d4_4a6c_8c47_9e91f052d5a9, name = k120
	reaction_mw45d92b79_0656_4795_87d0_7a465949ca43_mwba545ecf_c7d4_4a6c_8c47_9e91f052d5a9=1.0;
	% Local Parameter:   id =  mw01c5ceef_57a1_4baa_b2cd_fd39e9588a10, name = k120r
	reaction_mw45d92b79_0656_4795_87d0_7a465949ca43_mw01c5ceef_57a1_4baa_b2cd_fd39e9588a10=0.2;

	reaction_mw45d92b79_0656_4795_87d0_7a465949ca43=reaction_mw45d92b79_0656_4795_87d0_7a465949ca43_mwba545ecf_c7d4_4a6c_8c47_9e91f052d5a9*x(100)*x(101)-reaction_mw45d92b79_0656_4795_87d0_7a465949ca43_mw01c5ceef_57a1_4baa_b2cd_fd39e9588a10*x(105);

% Reaction: id = mwb71945c2_03a8_4fad_a995_e1caeee98525, name = 121	% Local Parameter:   id =  mw7aba6db3_c7ec_4192_bb5e_0ac4b466c1a5, name = k121
	reaction_mwb71945c2_03a8_4fad_a995_e1caeee98525_mw7aba6db3_c7ec_4192_bb5e_0ac4b466c1a5=0.005;

	reaction_mwb71945c2_03a8_4fad_a995_e1caeee98525=reaction_mwb71945c2_03a8_4fad_a995_e1caeee98525_mw7aba6db3_c7ec_4192_bb5e_0ac4b466c1a5*x(105);

% Reaction: id = mwd189238c_e8f9_40be_b4ea_18a42bba1b4f, name = 122	% Local Parameter:   id =  mw31eb851a_c381_419d_b694_f158b7f5cfb6, name = k122
	reaction_mwd189238c_e8f9_40be_b4ea_18a42bba1b4f_mw31eb851a_c381_419d_b694_f158b7f5cfb6=0.05;

	reaction_mwd189238c_e8f9_40be_b4ea_18a42bba1b4f=reaction_mwd189238c_e8f9_40be_b4ea_18a42bba1b4f_mw31eb851a_c381_419d_b694_f158b7f5cfb6*x(104);

% Reaction: id = mwcb637bf1_7618_4d8a_ab5c_399145ecf1df, name = 124	% Local Parameter:   id =  mwe09b67b9_0d2a_4b82_91ef_5284216beb94, name = k124
	reaction_mwcb637bf1_7618_4d8a_ab5c_399145ecf1df_mwe09b67b9_0d2a_4b82_91ef_5284216beb94=0.5;
	% Local Parameter:   id =  mw77a6c207_ff8c_463c_9b4e_8a7d96652b79, name = kr124
	reaction_mwcb637bf1_7618_4d8a_ab5c_399145ecf1df_mw77a6c207_ff8c_463c_9b4e_8a7d96652b79=0.005;

	reaction_mwcb637bf1_7618_4d8a_ab5c_399145ecf1df=reaction_mwcb637bf1_7618_4d8a_ab5c_399145ecf1df_mwe09b67b9_0d2a_4b82_91ef_5284216beb94*x(91)*x(6)-reaction_mwcb637bf1_7618_4d8a_ab5c_399145ecf1df_mw77a6c207_ff8c_463c_9b4e_8a7d96652b79*x(106);

% Reaction: id = mw401dde7e_c0a1_4780_b6cc_8f98681c862e, name = 125	% Local Parameter:   id =  mw1df53838_48e5_4331_9084_3790409ad5ff, name = k125
	reaction_mw401dde7e_c0a1_4780_b6cc_8f98681c862e_mw1df53838_48e5_4331_9084_3790409ad5ff=5.0;
	% Local Parameter:   id =  mwe4573b2c_5f99_40d0_9f9e_c238caa5ccbe, name = kr125
	reaction_mw401dde7e_c0a1_4780_b6cc_8f98681c862e_mwe4573b2c_5f99_40d0_9f9e_c238caa5ccbe=0.1;

	reaction_mw401dde7e_c0a1_4780_b6cc_8f98681c862e=reaction_mw401dde7e_c0a1_4780_b6cc_8f98681c862e_mw1df53838_48e5_4331_9084_3790409ad5ff*x(106)*x(60)-reaction_mw401dde7e_c0a1_4780_b6cc_8f98681c862e_mwe4573b2c_5f99_40d0_9f9e_c238caa5ccbe*x(107);

% Reaction: id = mw0dd5a91d_d76c_494e_9dd6_57f2836aaa19, name = 126	% Local Parameter:   id =  mw8ed5885f_774e_48a0_9338_fe8cdd512023, name = k126
	reaction_mw0dd5a91d_d76c_494e_9dd6_57f2836aaa19_mw8ed5885f_774e_48a0_9338_fe8cdd512023=0.001;

	reaction_mw0dd5a91d_d76c_494e_9dd6_57f2836aaa19=reaction_mw0dd5a91d_d76c_494e_9dd6_57f2836aaa19_mw8ed5885f_774e_48a0_9338_fe8cdd512023*x(107);

% Reaction: id = mwb205f533_4013_406b_8a4b_691ec3949555, name = 127	% Local Parameter:   id =  mwa6ef5f75_f152_414d_811c_dd037d4b3ca1, name = k127
	reaction_mwb205f533_4013_406b_8a4b_691ec3949555_mwa6ef5f75_f152_414d_811c_dd037d4b3ca1=0.5;
	% Local Parameter:   id =  mwee51df1b_3f69_43f8_a1d5_5a8c5d0215f2, name = kr127
	reaction_mwb205f533_4013_406b_8a4b_691ec3949555_mwee51df1b_3f69_43f8_a1d5_5a8c5d0215f2=0.005;

	reaction_mwb205f533_4013_406b_8a4b_691ec3949555=reaction_mwb205f533_4013_406b_8a4b_691ec3949555_mwa6ef5f75_f152_414d_811c_dd037d4b3ca1*x(65)*x(6)-reaction_mwb205f533_4013_406b_8a4b_691ec3949555_mwee51df1b_3f69_43f8_a1d5_5a8c5d0215f2*x(108);

% Reaction: id = mw602726ea_89ee_41b8_bda6_e2811bb42c1d, name = 128	% Local Parameter:   id =  mw2e0b4751_7227_4815_bf6f_fa5e2370b1d3, name = k128
	reaction_mw602726ea_89ee_41b8_bda6_e2811bb42c1d_mw2e0b4751_7227_4815_bf6f_fa5e2370b1d3=5.0;
	% Local Parameter:   id =  mwa8eec8e9_74b9_4afc_b6db_1116fe48e858, name = kr128
	reaction_mw602726ea_89ee_41b8_bda6_e2811bb42c1d_mwa8eec8e9_74b9_4afc_b6db_1116fe48e858=0.1;

	reaction_mw602726ea_89ee_41b8_bda6_e2811bb42c1d=reaction_mw602726ea_89ee_41b8_bda6_e2811bb42c1d_mw2e0b4751_7227_4815_bf6f_fa5e2370b1d3*x(108)*x(60)-reaction_mw602726ea_89ee_41b8_bda6_e2811bb42c1d_mwa8eec8e9_74b9_4afc_b6db_1116fe48e858*x(109);

% Reaction: id = mwfab3a9ec_b094_44f0_bd59_12ac56ca1c99, name = 129	% Local Parameter:   id =  mwc3426c7e_3452_4507_9189_4b83ab147bdd, name = k129
	reaction_mwfab3a9ec_b094_44f0_bd59_12ac56ca1c99_mwc3426c7e_3452_4507_9189_4b83ab147bdd=0.001;

	reaction_mwfab3a9ec_b094_44f0_bd59_12ac56ca1c99=reaction_mwfab3a9ec_b094_44f0_bd59_12ac56ca1c99_mwc3426c7e_3452_4507_9189_4b83ab147bdd*x(109);

% Reaction: id = mw4fceada8_6eb0_4230_a083_b2ab094d2961, name = r123	% Local Parameter:   id =  mw9cafad09_6002_46e1_8336_bb91c3716d70, name = k123
	reaction_mw4fceada8_6eb0_4230_a083_b2ab094d2961_mw9cafad09_6002_46e1_8336_bb91c3716d70=17.0;

	reaction_mw4fceada8_6eb0_4230_a083_b2ab094d2961=reaction_mw4fceada8_6eb0_4230_a083_b2ab094d2961_mw9cafad09_6002_46e1_8336_bb91c3716d70*x(73);

	xdot=zeros(109,1);
	
% Species:   id = mwe2fff28d_182c_4a1c_9882_f17774c0958a, name = EGF, affected by kineticLaw
	xdot(1) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*((-1.0 * reaction_mwa67e40c1_693d_4214_adc8_b2f2b71cef12));
	
% Species:   id = mw93907b2d_53db_4080_9e3f_3eb304441ab9, name = EGFR, affected by kineticLaw
	xdot(2) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*((-1.0 * reaction_mwa67e40c1_693d_4214_adc8_b2f2b71cef12) + ( 1.0 * reaction_mw47dee769_daa0_4af4_978a_5ab17e504c2f));
	
% Species:   id = mw7eacabf9_d68c_491a_aba2_ec0809a8ecc8, name = EGF-EGFR, affected by kineticLaw
	xdot(3) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*(( 1.0 * reaction_mwa67e40c1_693d_4214_adc8_b2f2b71cef12) + (-1.0 * reaction_mw877cd1e3_b48b_42e8_ab23_682dd893fd9d) + (-1.0 * reaction_mw877cd1e3_b48b_42e8_ab23_682dd893fd9d));
	
% Species:   id = mwa8f2e7b2_0927_4ab4_a817_dddc43bb4fa3, name = EGF-EGFR2, affected by kineticLaw
	xdot(4) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*(( 1.0 * reaction_mw877cd1e3_b48b_42e8_ab23_682dd893fd9d) + (-1.0 * reaction_mw413c6d45_ab23_4d3e_87b3_a8ed4629b923) + ( 1.0 * reaction_mw9544e67b_b6d0_4941_b7e0_ecd4f400a335) + ( 1.0 * reaction_mw7bb43f0a_c87e_41ff_8a43_cdf45c8f05e6) + ( 1.0 * reaction_mw4f89bf6c_8691_41a6_a1ac_13e6aa8c4b93) + ( 1.0 * reaction_mw642ac312_2ee7_4e66_8f3e_e2da2bb6412a));
	
% Species:   id = mwbfcf6773_1915_432c_b1d2_1f246094cc74, name = pEGF-EGFR2, affected by kineticLaw
	xdot(5) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*(( 1.0 * reaction_mw413c6d45_ab23_4d3e_87b3_a8ed4629b923) + (-1.0 * reaction_mwf61e086d_0345_4d4c_b91d_0b105e543d04) + (-1.0 * reaction_mw91f49311_efdc_47c6_b8b8_a619e042d644) + ( 1.0 * reaction_mw486c5261_3d03_4589_a1e9_978b62ad2dfe) + (-1.0 * reaction_mw0e459167_515b_4c4d_8b67_bf0a5b3e9d61) + (-1.0 * reaction_mwd0d92dd4_81b7_4385_bfd7_5de82e193ecd) + (-1.0 * reaction_mw0a51fbf0_409b_4b45_b4ac_0220af4c4e3c) + ( 1.0 * reaction_mwcf9f1b1d_e19a_4fa8_85ba_8f17e2cec730) + ( 1.0 * reaction_mw4685274a_2b55_429f_927f_3fd863592af6) + (-1.0 * reaction_mw85e457d1_73f8_4236_bb61_a128d300003f) + (-1.0 * reaction_mw77484632_4e33_468a_9937_24e9bfd0e17d) + ( 1.0 * reaction_mwd3a36af9_3ccc_4bb1_9867_3b9823ba4ac8) + (-1.0 * reaction_mwe8647e48_f4a9_40f4_9b32_f89ded572e01) + ( 1.0 * reaction_mw65b9e026_bc6c_4c94_8b37_8b9acdf50c8a) + (-1.0 * reaction_mw1c9d29fa_bff4_4d2f_9d5f_f1791e4882a3));
	
% Species:   id = mw19122f7d_f92e_4dc0_922f_6b681db65b0b, name = cbl, affected by kineticLaw
	xdot(6) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*((-1.0 * reaction_mwbd8a133e_1b70_44e8_bef8_78b14141166b) + ( 1.0 * reaction_mw363a5271_1f51_4d5e_87a7_42ea25cb5657) + (-1.0 * reaction_mw6bee0112_92dc_4169_9109_2633772b3aa4) + ( 1.0 * reaction_mweb93165f_cf03_48f1_b035_59d79e324314) + (-1.0 * reaction_mw85e457d1_73f8_4236_bb61_a128d300003f) + ( 1.0 * reaction_mwc9b3b248_3290_452a_9b7c_8fdada3e6687) + (-1.0 * reaction_mwcb637bf1_7618_4d8a_ab5c_399145ecf1df) + ( 1.0 * reaction_mw0dd5a91d_d76c_494e_9dd6_57f2836aaa19) + (-1.0 * reaction_mwb205f533_4013_406b_8a4b_691ec3949555));
	
% Species:   id = mw3c2e1b43_29ca_491a_93e9_c723a993d6fb, name = Shc, affected by kineticLaw
	xdot(7) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*((-1.0 * reaction_mwf61e086d_0345_4d4c_b91d_0b105e543d04) + ( 1.0 * reaction_mweda6a945_fb5d_4d99_9958_11b2b2840308) + ( 1.0 * reaction_mwd4bf58ea_70c9_43ea_a831_1fcde130ba28));
	
% Species:   id = mw5198d3c2_879c_4f0d_b4f8_cd40efe0b1cf, name = pEGF-EGFR2-Shc, affected by kineticLaw
	xdot(8) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*(( 1.0 * reaction_mwf61e086d_0345_4d4c_b91d_0b105e543d04) + (-1.0 * reaction_mw974c39f5_b82e_44b3_abec_7a724f46c526));
	
% Species:   id = mwe57c3282_5935_405c_8c0b_7fadb7a5de17, name = SHP, affected by kineticLaw
	xdot(9) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*((-1.0 * reaction_mw91f49311_efdc_47c6_b8b8_a619e042d644) + ( 1.0 * reaction_mw9544e67b_b6d0_4941_b7e0_ecd4f400a335) + (-1.0 * reaction_mw2cf8a809_63d8_4717_91fc_070516e6f3db) + ( 1.0 * reaction_mweda6a945_fb5d_4d99_9958_11b2b2840308) + (-1.0 * reaction_mw03998474_934b_4e4a_8c0c_ca359e402ac2) + ( 1.0 * reaction_mw7bb43f0a_c87e_41ff_8a43_cdf45c8f05e6) + (-1.0 * reaction_mwc52e0f9b_1e0c_46ca_8d18_f05ef4a080cb) + ( 1.0 * reaction_mw4f89bf6c_8691_41a6_a1ac_13e6aa8c4b93) + (-1.0 * reaction_mwc5aae1f8_52e4_4bcd_b044_3768f90b7b19) + ( 1.0 * reaction_mw642ac312_2ee7_4e66_8f3e_e2da2bb6412a));
	
% Species:   id = mw954e8fcb_ac0a_459d_8878_f19080208a17, name = pEGF-EGFR2-SHP2, affected by kineticLaw
	xdot(10) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*(( 1.0 * reaction_mw91f49311_efdc_47c6_b8b8_a619e042d644) + (-1.0 * reaction_mw9544e67b_b6d0_4941_b7e0_ecd4f400a335));
	
% Species:   id = mwa98802cb_c977_4fe0_9e67_5000904c2c36, name = pEGF-EGFR2-pShc, affected by kineticLaw
	xdot(11) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*(( 1.0 * reaction_mw974c39f5_b82e_44b3_abec_7a724f46c526) + (-1.0 * reaction_mw486c5261_3d03_4589_a1e9_978b62ad2dfe) + (-1.0 * reaction_mw4817365e_a33b_451f_bee1_de748377ede2) + (-1.0 * reaction_mw23a29b42_9813_4e46_b8ae_966e3215e6dc));
	
% Species:   id = mwa0349407_8187_48fc_9e94_5698ccc4e06d, name = pShc, affected by kineticLaw
	xdot(12) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*(( 1.0 * reaction_mw486c5261_3d03_4589_a1e9_978b62ad2dfe) + (-1.0 * reaction_mw2cf8a809_63d8_4717_91fc_070516e6f3db) + (-1.0 * reaction_mwd4bf58ea_70c9_43ea_a831_1fcde130ba28) + ( 1.0 * reaction_mw7bb43f0a_c87e_41ff_8a43_cdf45c8f05e6) + ( 1.0 * reaction_mwcf9f1b1d_e19a_4fa8_85ba_8f17e2cec730) + ( 1.0 * reaction_mw363a5271_1f51_4d5e_87a7_42ea25cb5657));
	
% Species:   id = mwf9999977_6f0e_4e35_9b73_75587f3448e9, name = pShc-SHP2, affected by kineticLaw
	xdot(13) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*(( 1.0 * reaction_mw2cf8a809_63d8_4717_91fc_070516e6f3db) + (-1.0 * reaction_mweda6a945_fb5d_4d99_9958_11b2b2840308));
	
% Species:   id = mwf430a579_ecbf_48ba_80c2_06e455808f2a, name = Grb2, affected by kineticLaw
	xdot(14) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*((-1.0 * reaction_mw4817365e_a33b_451f_bee1_de748377ede2) + ( 1.0 * reaction_mw7bb43f0a_c87e_41ff_8a43_cdf45c8f05e6) + (-1.0 * reaction_mwc5f121dc_d27d_4c3d_90f2_67d0adaf144a) + (-1.0 * reaction_mw0e459167_515b_4c4d_8b67_bf0a5b3e9d61) + ( 1.0 * reaction_mw4f89bf6c_8691_41a6_a1ac_13e6aa8c4b93) + ( 1.0 * reaction_mwcf9f1b1d_e19a_4fa8_85ba_8f17e2cec730) + ( 1.0 * reaction_mw4685274a_2b55_429f_927f_3fd863592af6));
	
% Species:   id = mw504578d8_96c3_471f_8a7e_8c14e7535d3d, name = pEGF-EGFR2-pShc-Grb2, affected by kineticLaw
	xdot(15) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*(( 1.0 * reaction_mw4817365e_a33b_451f_bee1_de748377ede2) + (-1.0 * reaction_mw03998474_934b_4e4a_8c0c_ca359e402ac2) + (-1.0 * reaction_mwd9262331_e35a_4614_943a_89bcf8a492e3));
	
% Species:   id = mw45ab688a_6467_4a3e_a779_2118fa84d69e, name = pEGF-EGFR2-pShc-Grb2-SHP2, affected by kineticLaw
	xdot(16) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*(( 1.0 * reaction_mw03998474_934b_4e4a_8c0c_ca359e402ac2) + (-1.0 * reaction_mw7bb43f0a_c87e_41ff_8a43_cdf45c8f05e6));
	
% Species:   id = mw9dcaa655_a755_426e_a3fa_1ad7c3c45575, name = SOS, affected by kineticLaw
	xdot(17) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*((-1.0 * reaction_mwd9262331_e35a_4614_943a_89bcf8a492e3) + (-1.0 * reaction_mwc5f121dc_d27d_4c3d_90f2_67d0adaf144a) + (-1.0 * reaction_mw35f71989_f89b_4440_b1a4_ebc7b4cc18b2) + ( 1.0 * reaction_mw8e331e43_16b4_478d_880b_d5a3244540e4));
	
% Species:   id = mwfbda4e09_0cbb_49bc_ae69_f88b7a79ed21, name = pEGF-EGFR2-pShc-Grb2-SOS, affected by kineticLaw
	xdot(18) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*(( 1.0 * reaction_mwd9262331_e35a_4614_943a_89bcf8a492e3) + ( 1.0 * reaction_mw23a29b42_9813_4e46_b8ae_966e3215e6dc) + (-1.0 * reaction_mwbb77e3d6_6065_4344_9361_e30c03514f4e) + ( 1.0 * reaction_mw0bcfad86_59b9_42ff_bcb7_fbb44845049d) + (-1.0 * reaction_mw8dec1159_1925_45d9_af25_3cb709a5017c) + (-1.0 * reaction_mwbd8a133e_1b70_44e8_bef8_78b14141166b));
	
% Species:   id = mwb1bc2058_e6d8_4680_9e6c_d27bb366cde0, name = pEGF-EGFR2-pShc-Grb2-SOS-cbl, affected by kineticLaw
	xdot(19) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*(( 1.0 * reaction_mwbd8a133e_1b70_44e8_bef8_78b14141166b) + (-1.0 * reaction_mw3a87ca5a_845d_4ac4_8806_e343cbbfc630));
	
% Species:   id = mw1093b3af_1864_4ba3_a541_6009a9921282, name = Grb2-SOS, affected by kineticLaw
	xdot(20) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*(( 1.0 * reaction_mwc5f121dc_d27d_4c3d_90f2_67d0adaf144a) + (-1.0 * reaction_mw23a29b42_9813_4e46_b8ae_966e3215e6dc) + (-1.0 * reaction_mwd0d92dd4_81b7_4385_bfd7_5de82e193ecd) + ( 1.0 * reaction_mw363a5271_1f51_4d5e_87a7_42ea25cb5657) + ( 1.0 * reaction_mweb93165f_cf03_48f1_b035_59d79e324314));
	
% Species:   id = mwd9462e5b_a272_4b66_ab66_fde9266b1a43, name = pEGF-EGFR2-Grb2, affected by kineticLaw
	xdot(21) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*(( 1.0 * reaction_mw0e459167_515b_4c4d_8b67_bf0a5b3e9d61) + (-1.0 * reaction_mwc52e0f9b_1e0c_46ca_8d18_f05ef4a080cb) + (-1.0 * reaction_mw35f71989_f89b_4440_b1a4_ebc7b4cc18b2));
	
% Species:   id = mw925b938a_fe73_4664_ba6f_e72e57780891, name = pEGF-EGFR2-Grb2-SHP2, affected by kineticLaw
	xdot(22) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*(( 1.0 * reaction_mwc52e0f9b_1e0c_46ca_8d18_f05ef4a080cb) + (-1.0 * reaction_mw4f89bf6c_8691_41a6_a1ac_13e6aa8c4b93));
	
% Species:   id = mwf8cc7834_bf4f_4ccd_8235_d0890badf0f6, name = pEGF-EGFR2-Grb2-SOS, affected by kineticLaw
	xdot(23) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*(( 1.0 * reaction_mw35f71989_f89b_4440_b1a4_ebc7b4cc18b2) + ( 1.0 * reaction_mwd0d92dd4_81b7_4385_bfd7_5de82e193ecd) + ( 1.0 * reaction_mwe9b50ac7_dac3_4eba_b1db_b3fd392d8fb7) + (-1.0 * reaction_mw934c3638_603e_4ff0_a763_68f9405fa01f) + (-1.0 * reaction_mwa5c135b4_77e2_4411_98e1_2000c39d4b30) + (-1.0 * reaction_mw6bee0112_92dc_4169_9109_2633772b3aa4));
	
% Species:   id = mw481cd12b_61ba_44e5_93bf_8b88c6c4a4e7, name = pEGF-EGFR2-Grb2-SOS-cbl, affected by kineticLaw
	xdot(24) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*(( 1.0 * reaction_mw6bee0112_92dc_4169_9109_2633772b3aa4) + (-1.0 * reaction_mwbac9e6ff_2df1_45eb_b3f4_4cae74c64014));
	
% Species:   id = mw8f5a7b5c_ca4c_4a4c_85b1_e5d640c426bf, name = Ras-GDP, affected by kineticLaw
	xdot(25) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*((-1.0 * reaction_mwbb77e3d6_6065_4344_9361_e30c03514f4e) + ( 1.0 * reaction_mw921ee820_1dbb_4b5f_866c_87da620d8f89) + (-1.0 * reaction_mw934c3638_603e_4ff0_a763_68f9405fa01f) + ( 1.0 * reaction_mwf31259aa_32b7_4104_be70_045297b9a512) + ( 1.0 * reaction_mw652570eb_c9d3_499b_b877_61d360b10980));
	
% Species:   id = mwf40d6176_abfc_4a30_886f_83a19fcffc48, name = pEGF-EGFR2-pShc-Grb2-SOS-Ras-GDP, affected by kineticLaw
	xdot(26) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*(( 1.0 * reaction_mwbb77e3d6_6065_4344_9361_e30c03514f4e) + (-1.0 * reaction_mw0bcfad86_59b9_42ff_bcb7_fbb44845049d));
	
% Species:   id = mwa54a9c38_c98b_45e5_8432_4119fb777e44, name = Ras-GTP, affected by kineticLaw
	xdot(27) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*((-1.0 * reaction_mw921ee820_1dbb_4b5f_866c_87da620d8f89) + ( 1.0 * reaction_mw0bcfad86_59b9_42ff_bcb7_fbb44845049d) + ( 1.0 * reaction_mwe9b50ac7_dac3_4eba_b1db_b3fd392d8fb7) + (-1.0 * reaction_mw3c617363_649b_4460_a694_36f7a3127a62) + (-1.0 * reaction_mw33baddbd_a23f_45bb_b126_0ba60bbf6c53) + (-1.0 * reaction_mw584a64d0_560a_4297_9882_80cb4eff73f3) + ( 1.0 * reaction_mw42c97708_4f85_45a8_9141_d0ae529409ca));
	
% Species:   id = mw28464aad_8013_4a23_ae09_a406954859a6, name = pEGF-EGFR2-Grb2-SOS-Ras-GDP, affected by kineticLaw
	xdot(28) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*((-1.0 * reaction_mwe9b50ac7_dac3_4eba_b1db_b3fd392d8fb7) + ( 1.0 * reaction_mw934c3638_603e_4ff0_a763_68f9405fa01f));
	
% Species:   id = mw7cff9a0e_094d_498e_bf7f_7b162c61d63a, name = Ras-GAP, affected by kineticLaw
	xdot(29) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*((-1.0 * reaction_mw3c617363_649b_4460_a694_36f7a3127a62) + ( 1.0 * reaction_mwf31259aa_32b7_4104_be70_045297b9a512) + (-1.0 * reaction_mw0a51fbf0_409b_4b45_b4ac_0220af4c4e3c) + ( 1.0 * reaction_mw642ac312_2ee7_4e66_8f3e_e2da2bb6412a));
	
% Species:   id = mwdf82303e_323f_4c51_a858_56a59233cd98, name = Ras-GTP-Ras-GAP, affected by kineticLaw
	xdot(30) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*(( 1.0 * reaction_mw3c617363_649b_4460_a694_36f7a3127a62) + (-1.0 * reaction_mwf31259aa_32b7_4104_be70_045297b9a512));
	
% Species:   id = mwd39388fd_4f85_4d1c_b2a3_37857c595a2d, name = pEGF-EGFR2-Ras-GAP, affected by kineticLaw
	xdot(31) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*(( 1.0 * reaction_mw0a51fbf0_409b_4b45_b4ac_0220af4c4e3c) + (-1.0 * reaction_mw33baddbd_a23f_45bb_b126_0ba60bbf6c53) + ( 1.0 * reaction_mw652570eb_c9d3_499b_b877_61d360b10980) + (-1.0 * reaction_mwc5aae1f8_52e4_4bcd_b044_3768f90b7b19));
	
% Species:   id = mwd7bf31ba_b05c_4c45_bb2f_6a2468a2a507, name = pEGF-EGFR2-Ras-GAP-Ras-GTP, affected by kineticLaw
	xdot(32) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*(( 1.0 * reaction_mw33baddbd_a23f_45bb_b126_0ba60bbf6c53) + (-1.0 * reaction_mw652570eb_c9d3_499b_b877_61d360b10980));
	
% Species:   id = mwbf5cb039_b830_4282_aa22_a3dda6272ec1, name = pEGF-EGFR2-Ras-GAP-SHP2, affected by kineticLaw
	xdot(33) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*(( 1.0 * reaction_mwc5aae1f8_52e4_4bcd_b044_3768f90b7b19) + (-1.0 * reaction_mw642ac312_2ee7_4e66_8f3e_e2da2bb6412a));
	
% Species:   id = mw66ac98c4_7e7b_4071_954d_43eb17584220, name = Raf1, affected by kineticLaw
	xdot(34) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*((-1.0 * reaction_mw584a64d0_560a_4297_9882_80cb4eff73f3) + ( 1.0 * reaction_mw87711dc1_43d7_40fc_b9e9_a24e2f92419d));
	
% Species:   id = mw83de7813_4941_45a6_a320_a551165bf22a, name = Raf1-Ras-GTP, affected by kineticLaw
	xdot(35) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*(( 1.0 * reaction_mw584a64d0_560a_4297_9882_80cb4eff73f3) + (-1.0 * reaction_mw42c97708_4f85_45a8_9141_d0ae529409ca));
	
% Species:   id = mwaff92910_ed3d_40b9_a29c_e4866167e828, name = Raf1active, affected by kineticLaw
	xdot(36) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*(( 1.0 * reaction_mw42c97708_4f85_45a8_9141_d0ae529409ca) + (-1.0 * reaction_mwaa65a34e_fabf_4d6d_ae0b_f1d08b068f33) + ( 1.0 * reaction_mw1bd186cf_4762_480a_b70d_d7a775462398) + (-1.0 * reaction_mwf5573ddf_ad7f_478a_a784_557a9cddaaf2) + ( 1.0 * reaction_mwb49058ff_2997_4187_abe7_4dce4ccf6ff4) + (-1.0 * reaction_mw9c208e18_c70d_4231_af0b_ad17cd0bba2d) + (-1.0 * reaction_mw950485f2_4463_4309_a4e4_cc81d16ffb7f) + ( 1.0 * reaction_mw62f71309_e066_47d2_9b99_01f78a51c218));
	
% Species:   id = mw0834731b_0477_4217_a53b_30cef851191b, name = MEK, affected by kineticLaw
	xdot(37) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*((-1.0 * reaction_mwaa65a34e_fabf_4d6d_ae0b_f1d08b068f33) + ( 1.0 * reaction_mwa4b69c77_6226_46da_b78c_3e6027d0be41));
	
% Species:   id = mw4628f984_eb87_4922_9760_4975095ce6eb, name = Raf1active-MEK, affected by kineticLaw
	xdot(38) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*(( 1.0 * reaction_mwaa65a34e_fabf_4d6d_ae0b_f1d08b068f33) + (-1.0 * reaction_mw1bd186cf_4762_480a_b70d_d7a775462398));
	
% Species:   id = mw9b25f809_18a1_4c14_8f4b_cf18e6d93c28, name = pMEK, affected by kineticLaw
	xdot(39) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*(( 1.0 * reaction_mw1bd186cf_4762_480a_b70d_d7a775462398) + (-1.0 * reaction_mwf5573ddf_ad7f_478a_a784_557a9cddaaf2) + ( 1.0 * reaction_mw40950d59_1012_4361_8418_73e25758e367) + (-1.0 * reaction_mwbfa79c95_487d_4c6f_b437_9e579451a419));
	
% Species:   id = mw12ba4000_d452_420c_be63_96d2848aca32, name = Raf1active-pMEK, affected by kineticLaw
	xdot(40) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*(( 1.0 * reaction_mwf5573ddf_ad7f_478a_a784_557a9cddaaf2) + (-1.0 * reaction_mwb49058ff_2997_4187_abe7_4dce4ccf6ff4));
	
% Species:   id = mwf816df4c_4593_4d23_990f_0d7c15ddde5d, name = ppMEK, affected by kineticLaw
	xdot(41) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*(( 1.0 * reaction_mwb49058ff_2997_4187_abe7_4dce4ccf6ff4) + (-1.0 * reaction_mw8301b154_9463_4516_b4c5_c8f8b68691fe) + ( 1.0 * reaction_mwf95f743d_6108_49fe_8ffd_bdcc1a9f9a8d) + (-1.0 * reaction_mw51d9d6b8_f0c0_4763_9d11_9be61b5cf5c9) + ( 1.0 * reaction_mw6fd24d16_f57d_46c6_82f5_3f00759fa16b) + (-1.0 * reaction_mw4b445876_bdce_42d0_867b_fd3c74128a6b));
	
% Species:   id = mw7e23b961_186b_47a0_a8b5_5e9957766792, name = ERK, affected by kineticLaw
	xdot(42) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*((-1.0 * reaction_mw8301b154_9463_4516_b4c5_c8f8b68691fe) + ( 1.0 * reaction_mwcc31b497_6c50_446c_bbc2_6c5739507252));
	
% Species:   id = mwcedf8ecd_67bd_4b91_aa04_d58782dec2a4, name = ppMEK-ERK, affected by kineticLaw
	xdot(43) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*(( 1.0 * reaction_mw8301b154_9463_4516_b4c5_c8f8b68691fe) + (-1.0 * reaction_mwf95f743d_6108_49fe_8ffd_bdcc1a9f9a8d));
	
% Species:   id = mwcc894c94_0ddf_42cc_913e_cdcc4d471d94, name = pERK, affected by kineticLaw
	xdot(44) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*(( 1.0 * reaction_mwf95f743d_6108_49fe_8ffd_bdcc1a9f9a8d) + (-1.0 * reaction_mw51d9d6b8_f0c0_4763_9d11_9be61b5cf5c9) + ( 1.0 * reaction_mw61305f93_7b2d_4a2d_8d16_f7be026d8671) + (-1.0 * reaction_mw1d8c2435_bb85_4352_a25f_82033250579e));
	
% Species:   id = mw6cb74b27_ffef_49bb_8ffb_622d552caa9e, name = ppMEK-pERK, affected by kineticLaw
	xdot(45) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*(( 1.0 * reaction_mw51d9d6b8_f0c0_4763_9d11_9be61b5cf5c9) + (-1.0 * reaction_mw6fd24d16_f57d_46c6_82f5_3f00759fa16b));
	
% Species:   id = mwd784228d_0cb5_468a_ac70_02d8f04b3d9c, name = ppERK, affected by kineticLaw
	xdot(46) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*(( 1.0 * reaction_mw6fd24d16_f57d_46c6_82f5_3f00759fa16b) + (-1.0 * reaction_mwf8bb22e2_5aa3_4c25_a022_a266b1856a48) + (-1.0 * reaction_mw8dec1159_1925_45d9_af25_3cb709a5017c) + ( 1.0 * reaction_mwcf9f1b1d_e19a_4fa8_85ba_8f17e2cec730) + (-1.0 * reaction_mwa5c135b4_77e2_4411_98e1_2000c39d4b30) + ( 1.0 * reaction_mw4685274a_2b55_429f_927f_3fd863592af6));
	
% Species:   id = mwbaaeb210_4806_4076_9d60_219f4ed945b6, name = Pase, affected by kineticLaw
	xdot(47) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*((-1.0 * reaction_mw9c208e18_c70d_4231_af0b_ad17cd0bba2d) + ( 1.0 * reaction_mw87711dc1_43d7_40fc_b9e9_a24e2f92419d));
	
% Species:   id = mw19a33ad5_5ba4_46c7_84eb_c1287f02bcd5, name = Raf1active-Pase, affected by kineticLaw
	xdot(48) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*(( 1.0 * reaction_mw9c208e18_c70d_4231_af0b_ad17cd0bba2d) + (-1.0 * reaction_mw87711dc1_43d7_40fc_b9e9_a24e2f92419d));
	
% Species:   id = mwf9e2a044_7774_400b_a74e_a111b4a21f30, name = Pase2, affected by kineticLaw
	xdot(49) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*((-1.0 * reaction_mw4b445876_bdce_42d0_867b_fd3c74128a6b) + ( 1.0 * reaction_mw40950d59_1012_4361_8418_73e25758e367) + (-1.0 * reaction_mwbfa79c95_487d_4c6f_b437_9e579451a419) + ( 1.0 * reaction_mwa4b69c77_6226_46da_b78c_3e6027d0be41));
	
% Species:   id = mwcb572fe2_c3ac_40e7_8141_da7d55fce18a, name = ppMEK-Pase2, affected by kineticLaw
	xdot(50) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*(( 1.0 * reaction_mw4b445876_bdce_42d0_867b_fd3c74128a6b) + (-1.0 * reaction_mw40950d59_1012_4361_8418_73e25758e367));
	
% Species:   id = mwa0acc0ac_5fac_4a42_a3be_e36db44994b0, name = pMEK-Pase2, affected by kineticLaw
	xdot(51) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*(( 1.0 * reaction_mwbfa79c95_487d_4c6f_b437_9e579451a419) + (-1.0 * reaction_mwa4b69c77_6226_46da_b78c_3e6027d0be41));
	
% Species:   id = mwd087f76b_65dc_47f1_ba21_c43774457686, name = Pase3, affected by kineticLaw
	xdot(52) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*((-1.0 * reaction_mwf8bb22e2_5aa3_4c25_a022_a266b1856a48) + ( 1.0 * reaction_mw61305f93_7b2d_4a2d_8d16_f7be026d8671) + ( 1.0 * reaction_mwcc31b497_6c50_446c_bbc2_6c5739507252) + (-1.0 * reaction_mw1d8c2435_bb85_4352_a25f_82033250579e));
	
% Species:   id = mw35f5adaa_d1c0_433c_817d_76e317f4cb15, name = pERK-Pase3, affected by kineticLaw
	xdot(53) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*((-1.0 * reaction_mwcc31b497_6c50_446c_bbc2_6c5739507252) + ( 1.0 * reaction_mw1d8c2435_bb85_4352_a25f_82033250579e));
	
% Species:   id = mwa7e3103a_6394_472c_b0f4_8ed527f68604, name = ppERK-Pase3, affected by kineticLaw
	xdot(54) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*(( 1.0 * reaction_mwf8bb22e2_5aa3_4c25_a022_a266b1856a48) + (-1.0 * reaction_mw61305f93_7b2d_4a2d_8d16_f7be026d8671));
	
% Species:   id = mw5babe3d5_a9af_4dfd_ac01_35474ef64af2, name = ppERK-pEGF-EGFR2-pShc-Grb2-SOS, affected by kineticLaw
	xdot(55) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*(( 1.0 * reaction_mw8dec1159_1925_45d9_af25_3cb709a5017c) + (-1.0 * reaction_mwcf9f1b1d_e19a_4fa8_85ba_8f17e2cec730));
	
% Species:   id = mw31ac308f_da36_4f73_830f_67f3e5b945d9, name = pSOS, affected by kineticLaw
	xdot(56) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*(( 1.0 * reaction_mwcf9f1b1d_e19a_4fa8_85ba_8f17e2cec730) + ( 1.0 * reaction_mw4685274a_2b55_429f_927f_3fd863592af6) + (-1.0 * reaction_mw8e331e43_16b4_478d_880b_d5a3244540e4));
	
% Species:   id = mw31261227_9cd6_4059_a0bb_04dbf4888080, name = ppERK-pEGF-EGFR2-Grb2-SOS, affected by kineticLaw
	xdot(57) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*(( 1.0 * reaction_mwa5c135b4_77e2_4411_98e1_2000c39d4b30) + (-1.0 * reaction_mw4685274a_2b55_429f_927f_3fd863592af6));
	
% Species:   id = mw0a0ca6ba_cb28_44c7_a0c0_1593cb720966, name = ProEGFR, affected by kineticLaw
	xdot(58) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*((-1.0 * reaction_mw47dee769_daa0_4af4_978a_5ab17e504c2f));
	
% Species:   id = mw06b8aada_c92a_48eb_8ee7_af3778cfe62f, name = pEGF-EGFR2-pShc-Grb2-SOS-cbl-EPn, affected by kineticLaw
	xdot(59) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*(( 1.0 * reaction_mw3a87ca5a_845d_4ac4_8806_e343cbbfc630) + (-1.0 * reaction_mw363a5271_1f51_4d5e_87a7_42ea25cb5657));
	
% Species:   id = mwb2366216_0b3c_4f28_8303_fec92c68dd57, name = EPn, affected by kineticLaw
	xdot(60) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*((-1.0 * reaction_mw3a87ca5a_845d_4ac4_8806_e343cbbfc630) + ( 1.0 * reaction_mw363a5271_1f51_4d5e_87a7_42ea25cb5657) + (-1.0 * reaction_mwbac9e6ff_2df1_45eb_b3f4_4cae74c64014) + ( 1.0 * reaction_mweb93165f_cf03_48f1_b035_59d79e324314) + (-1.0 * reaction_mw6b159c8f_eee0_4337_b711_2e230c9e2cf6) + ( 1.0 * reaction_mwc9b3b248_3290_452a_9b7c_8fdada3e6687) + (-1.0 * reaction_mw401dde7e_c0a1_4780_b6cc_8f98681c862e) + ( 1.0 * reaction_mw0dd5a91d_d76c_494e_9dd6_57f2836aaa19) + (-1.0 * reaction_mw602726ea_89ee_41b8_bda6_e2811bb42c1d) + ( 1.0 * reaction_mwfab3a9ec_b094_44f0_bd59_12ac56ca1c99));
	
% Species:   id = mw1d5948e7_5504_4224_9d71_227911b4f1ee, name = pEGF-EGFR2-Grb2-SOS-cbl-EPn, affected by kineticLaw
	xdot(61) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*(( 1.0 * reaction_mwbac9e6ff_2df1_45eb_b3f4_4cae74c64014) + (-1.0 * reaction_mweb93165f_cf03_48f1_b035_59d79e324314));
	
% Species:   id = mwec1b368b_8f73_47eb_9636_9956389836eb, name = pEGF-EGFR2-cbl, affected by kineticLaw
	xdot(62) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*(( 1.0 * reaction_mw85e457d1_73f8_4236_bb61_a128d300003f) + (-1.0 * reaction_mw6b159c8f_eee0_4337_b711_2e230c9e2cf6));
	
% Species:   id = mwa455ec7e_1a12_4659_95a2_a5695d09ca60, name = pEGF-EGFR2-cbl-EPn, affected by kineticLaw
	xdot(63) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*(( 1.0 * reaction_mw6b159c8f_eee0_4337_b711_2e230c9e2cf6) + (-1.0 * reaction_mwc9b3b248_3290_452a_9b7c_8fdada3e6687));
	
% Species:   id = mw2ba1db9a_4483_44fa_a3a2_b4a5ea66898c, name = PI3K, affected by kineticLaw
	xdot(64) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*((-1.0 * reaction_mw77484632_4e33_468a_9937_24e9bfd0e17d) + ( 1.0 * reaction_mwd15926b3_069a_4b16_a6fc_c0c15083d621) + ( 1.0 * reaction_mwfab3a9ec_b094_44f0_bd59_12ac56ca1c99));
	
% Species:   id = mw0dc4e5eb_4366_4799_bebc_cfcffe5c06f5, name = pEGF-EGFR2-PI3K, affected by kineticLaw
	xdot(65) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*(( 1.0 * reaction_mw77484632_4e33_468a_9937_24e9bfd0e17d) + (-1.0 * reaction_mw2c5858f3_0988_49b0_a94a_057853b84e91) + (-1.0 * reaction_mwd3a36af9_3ccc_4bb1_9867_3b9823ba4ac8) + (-1.0 * reaction_mwb205f533_4013_406b_8a4b_691ec3949555));
	
% Species:   id = mw1e591998_65c0_484e_8a3b_537a38d94de1, name = pEGF-EGFR2-pPI3K, affected by kineticLaw
	xdot(66) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*(( 1.0 * reaction_mw2c5858f3_0988_49b0_a94a_057853b84e91));
	
% Species:   id = mw78e207c4_4faf_4b48_8e22_1ee666e9cc4c, name = pPI3K, affected by kineticLaw
	xdot(67) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*(( 1.0 * reaction_mwd3a36af9_3ccc_4bb1_9867_3b9823ba4ac8) + (-1.0 * reaction_mw9f000f29_2512_4d4a_9dd9_e59aaf296d31) + (-1.0 * reaction_mw3a5e0932_d50f_4fe6_b8cb_0ad649f305b0) + ( 1.0 * reaction_mw5dcc8719_3180_4bd0_8797_08e256131961));
	
% Species:   id = mwfc4a9c3d_3ebb_4033_8b7d_f4d7613d2078, name = TP4, affected by kineticLaw
	xdot(68) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*((-1.0 * reaction_mw9f000f29_2512_4d4a_9dd9_e59aaf296d31) + ( 1.0 * reaction_mwd15926b3_069a_4b16_a6fc_c0c15083d621));
	
% Species:   id = mwbd6bb050_89bd_41df_8cea_d2e1fb77bafe, name = TP4-pPI3K, affected by kineticLaw
	xdot(69) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*(( 1.0 * reaction_mw9f000f29_2512_4d4a_9dd9_e59aaf296d31) + (-1.0 * reaction_mw837b5ad7_4a8c_4c55_94ff_0fdd63048044));
	
% Species:   id = mw7033dfd6_53c5_433b_a132_f8cb34dea20f, name = TP4-PI3K, affected by kineticLaw
	xdot(70) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*(( 1.0 * reaction_mw837b5ad7_4a8c_4c55_94ff_0fdd63048044) + (-1.0 * reaction_mwd15926b3_069a_4b16_a6fc_c0c15083d621));
	
% Species:   id = mwb561d9f3_a9ed_4bdb_8d40_87be5cc3237a, name = PIP2, affected by kineticLaw
	xdot(71) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*((-1.0 * reaction_mw3a5e0932_d50f_4fe6_b8cb_0ad649f305b0) + ( 1.0 * reaction_mw4fceada8_6eb0_4230_a083_b2ab094d2961));
	
% Species:   id = mw014cc419_b720_4b90_9192_2ec6e706c87d, name = pPI3K-PIP2, affected by kineticLaw
	xdot(72) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*(( 1.0 * reaction_mw3a5e0932_d50f_4fe6_b8cb_0ad649f305b0) + (-1.0 * reaction_mw5dcc8719_3180_4bd0_8797_08e256131961));
	
% Species:   id = mwd7f41594_8377_4e2e_9528_45d5a82ffdb4, name = PIP3, affected by kineticLaw
	xdot(73) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*(( 1.0 * reaction_mw5dcc8719_3180_4bd0_8797_08e256131961) + (-1.0 * reaction_mw376b0685_ef73_4fcc_94af_2ada24cf8a8b) + ( 1.0 * reaction_mw12311a84_3f8d_40c6_8b14_961a8a58d1b6) + (-1.0 * reaction_mw4fceada8_6eb0_4230_a083_b2ab094d2961));
	
% Species:   id = mwcef73e0e_d195_4077_ae71_723664ee1602, name = Akt, affected by kineticLaw
	xdot(74) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*((-1.0 * reaction_mw376b0685_ef73_4fcc_94af_2ada24cf8a8b) + ( 1.0 * reaction_mw2698f402_d00b_451e_8b22_93a322fe9a92));
	
% Species:   id = mw62bf5275_ce02_4e86_b3b6_3f87a335e1de, name = Aktm, affected by kineticLaw
	xdot(75) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*(( 1.0 * reaction_mw376b0685_ef73_4fcc_94af_2ada24cf8a8b) + (-1.0 * reaction_mwcc7cfa9c_4945_403a_938e_b237c371a5ef) + ( 1.0 * reaction_mw362ca1b3_224a_42fb_a14b_6ff467748a5e));
	
% Species:   id = mw6e01967b_3e2a_433d_bec6_9f9cf3ba243c, name = PDK1, affected by kineticLaw
	xdot(76) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*((-1.0 * reaction_mwcc7cfa9c_4945_403a_938e_b237c371a5ef) + ( 1.0 * reaction_mw31369230_1f14_45bd_be02_a44a275c6e31));
	
% Species:   id = mw6353aa36_d4a4_4254_8a1f_1f7f571d4233, name = Aktm-PDK1, affected by kineticLaw
	xdot(77) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*(( 1.0 * reaction_mwcc7cfa9c_4945_403a_938e_b237c371a5ef) + (-1.0 * reaction_mw98da32e0_b061_40c5_9d32_40744134f3fa) + ( 1.0 * reaction_mw4a334f7d_9bce_4690_b623_a427ed66a174));
	
% Species:   id = mwc1935afc_56b1_4a87_923c_ae6d82455d80, name = pAktm-PDK1, affected by kineticLaw
	xdot(78) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*(( 1.0 * reaction_mw98da32e0_b061_40c5_9d32_40744134f3fa) + (-1.0 * reaction_mw31369230_1f14_45bd_be02_a44a275c6e31) + (-1.0 * reaction_mw3994e898_7232_4b70_9c58_b3476e8655f5));
	
% Species:   id = mw3d81860d_d786_4fcc_b8bb_64f1a2d7739d, name = pAktm, affected by kineticLaw
	xdot(79) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*(( 1.0 * reaction_mw31369230_1f14_45bd_be02_a44a275c6e31) + (-1.0 * reaction_mw12311a84_3f8d_40c6_8b14_961a8a58d1b6) + (-1.0 * reaction_mwc5e0c166_6a3a_4913_9ed1_dafe97bdb371));
	
% Species:   id = mw16796ffe_4764_4a9f_942e_149f42c1cd28, name = pAkt, affected by kineticLaw
	xdot(80) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*(( 1.0 * reaction_mw12311a84_3f8d_40c6_8b14_961a8a58d1b6) + (-1.0 * reaction_mw028e8b3e_b531_4466_9c3a_e3fcf7fc9be9));
	
% Species:   id = mwa6e82fc9_a0ce_461c_93c8_17f3c807c1a1, name = pAkt-Takt, affected by kineticLaw
	xdot(81) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*((-1.0 * reaction_mwf3d393e9_ae09_4eab_a39a_ed0eef0f54bc) + ( 1.0 * reaction_mw028e8b3e_b531_4466_9c3a_e3fcf7fc9be9));
	
% Species:   id = mw236a3250_4c96_4f6e_b94c_ab3d12852801, name = Akt-Takt, affected by kineticLaw
	xdot(82) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*(( 1.0 * reaction_mwf3d393e9_ae09_4eab_a39a_ed0eef0f54bc) + (-1.0 * reaction_mw2698f402_d00b_451e_8b22_93a322fe9a92));
	
% Species:   id = mw11a8b702_b8ac_4513_b4aa_063e51089812, name = Takt, affected by kineticLaw
	xdot(83) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*(( 1.0 * reaction_mw2698f402_d00b_451e_8b22_93a322fe9a92) + (-1.0 * reaction_mw028e8b3e_b531_4466_9c3a_e3fcf7fc9be9) + (-1.0 * reaction_mwc5e0c166_6a3a_4913_9ed1_dafe97bdb371) + ( 1.0 * reaction_mw362ca1b3_224a_42fb_a14b_6ff467748a5e) + (-1.0 * reaction_mw3994e898_7232_4b70_9c58_b3476e8655f5) + ( 1.0 * reaction_mw4a334f7d_9bce_4690_b623_a427ed66a174));
	
% Species:   id = mw1a0cb97a_b657_430b_963c_92217f643081, name = pAktm-Takt, affected by kineticLaw
	xdot(84) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*(( 1.0 * reaction_mwc5e0c166_6a3a_4913_9ed1_dafe97bdb371) + (-1.0 * reaction_mw94b3bae0_4da9_4358_a5ac_a46a5cbf621b));
	
% Species:   id = mw9b937ca3_0d82_46d5_8f5a_0f9701002797, name = Aktm-Takt, affected by kineticLaw
	xdot(85) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*(( 1.0 * reaction_mw94b3bae0_4da9_4358_a5ac_a46a5cbf621b) + (-1.0 * reaction_mw362ca1b3_224a_42fb_a14b_6ff467748a5e));
	
% Species:   id = mw57a44eb0_ace7_4294_905a_219e87d3c281, name = pAktm-PDK1-Takt, affected by kineticLaw
	xdot(86) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*(( 1.0 * reaction_mw3994e898_7232_4b70_9c58_b3476e8655f5) + (-1.0 * reaction_mw75acd2d1_3fdf_4c3f_8d99_6d62f825d5e2));
	
% Species:   id = mwd746a5d5_5e65_4a4c_9f84_0e4a3cb7d2fc, name = Aktm-PDK1-Takt, affected by kineticLaw
	xdot(87) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*(( 1.0 * reaction_mw75acd2d1_3fdf_4c3f_8d99_6d62f825d5e2) + (-1.0 * reaction_mw4a334f7d_9bce_4690_b623_a427ed66a174));
	
% Species:   id = mwa6994523_5d45_4000_af0c_3e94073bf183, name = pAkt_total, defined in a rule 	xdot(88) = x(88);
	
% Species:   id = mwdf92bdc0_f426_45b0_9ad0_876521f41312, name = pRaf1active, affected by kineticLaw
	xdot(89) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*(( 1.0 * reaction_mw950485f2_4463_4309_a4e4_cc81d16ffb7f) + (-1.0 * reaction_mw62f71309_e066_47d2_9b99_01f78a51c218));
	
% Species:   id = mw13abe2a6_9905_40e5_8c23_3fc8834b572a, name = STAT3c, affected by kineticLaw
	xdot(90) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*((-1.0 * reaction_mwe8647e48_f4a9_40f4_9b32_f89ded572e01) + ( 1.0 * reaction_mwe9988e4a_083c_4f8e_b154_3e599c9307b0) + (-1.0 * reaction_mw177fa7b0_f0be_4c3e_8b47_2ac4e13159a2) + ( 1.0 * reaction_mwd189238c_e8f9_40be_b4ea_18a42bba1b4f) + ( 1.0 * reaction_mw0dd5a91d_d76c_494e_9dd6_57f2836aaa19));
	
% Species:   id = mw2fd710a6_7fe2_4484_bca6_59c187bade8b, name = pEGF-EGFR2-STAT3c, affected by kineticLaw
	xdot(91) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*(( 1.0 * reaction_mwe8647e48_f4a9_40f4_9b32_f89ded572e01) + (-1.0 * reaction_mw65b9e026_bc6c_4c94_8b37_8b9acdf50c8a) + (-1.0 * reaction_mwcb637bf1_7618_4d8a_ab5c_399145ecf1df));
	
% Species:   id = mwb6a9aa2c_62e7_410f_9c33_dbe36dfcc4af, name = pSTAT3c, affected by kineticLaw
	xdot(92) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*(( 1.0 * reaction_mw65b9e026_bc6c_4c94_8b37_8b9acdf50c8a) + (-1.0 * reaction_mw1c9d29fa_bff4_4d2f_9d5f_f1791e4882a3) + (-1.0 * reaction_mwad97bd5a_3dae_49d9_990b_2e6574740618) + (-1.0 * reaction_mwf8bacf1a_6c1a_49b6_b344_2d3bd404a735) + (-1.0 * reaction_mwf8bacf1a_6c1a_49b6_b344_2d3bd404a735) + (-1.0 * reaction_mw177fa7b0_f0be_4c3e_8b47_2ac4e13159a2));
	
% Species:   id = mw341082a0_8017_4cc7_9d00_b1211a196072, name = pEGF-EGFR2-pSTAT3c, affected by kineticLaw
	xdot(93) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*(( 1.0 * reaction_mw1c9d29fa_bff4_4d2f_9d5f_f1791e4882a3));
	
% Species:   id = mwcea1f1c1_2f85_4af1_98ea_ef14cf580c09, name = PP1, affected by kineticLaw
	xdot(94) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*((-1.0 * reaction_mwad97bd5a_3dae_49d9_990b_2e6574740618) + ( 1.0 * reaction_mwe9988e4a_083c_4f8e_b154_3e599c9307b0) + (-1.0 * reaction_mwc9b945cf_3a14_4bd9_b253_7064498c75e2) + ( 1.0 * reaction_mw75c6078f_fb76_4ca9_9fdd_e221e3ba57ad));
	
% Species:   id = mwdc34472c_a6f9_4002_951d_e0e8da64eb42, name = pSTAT3c-PP1, affected by kineticLaw
	xdot(95) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*(( 1.0 * reaction_mwad97bd5a_3dae_49d9_990b_2e6574740618) + (-1.0 * reaction_mwe9988e4a_083c_4f8e_b154_3e599c9307b0));
	
% Species:   id = mw472d5cb9_120e_4f60_bbae_1ae2552837dd, name = pSTAT3c-pSTAT3c-PP1, affected by kineticLaw
	xdot(96) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*(( 1.0 * reaction_mwc9b945cf_3a14_4bd9_b253_7064498c75e2) + (-1.0 * reaction_mw75c6078f_fb76_4ca9_9fdd_e221e3ba57ad));
	
% Species:   id = mw4f575c55_7dff_45d7_94ad_cda9621d5b63, name = pSTAT3c-pSTAT3c, affected by kineticLaw
	xdot(97) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*(( 1.0 * reaction_mwf8bacf1a_6c1a_49b6_b344_2d3bd404a735) + (-1.0 * reaction_mwc9b945cf_3a14_4bd9_b253_7064498c75e2) + (-1.0 * reaction_mwec4127b5_6bcf_4128_aff4_a6b3c470f690));
	
% Species:   id = mwd2c465fb_eea7_499a_8ea4_f318a64cb9ee, name = STAT3c-pSTAT3c, affected by kineticLaw
	xdot(98) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*(( 1.0 * reaction_mw75c6078f_fb76_4ca9_9fdd_e221e3ba57ad) + ( 1.0 * reaction_mw177fa7b0_f0be_4c3e_8b47_2ac4e13159a2));
	
% Species:   id = mw4110f531_7513_4786_8896_7c9d969ff558, name = pSTAT3n-pSTAT3n, affected by kineticLaw
	xdot(99) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*(( 1.0 * reaction_mwec4127b5_6bcf_4128_aff4_a6b3c470f690) + ( 1.0 * reaction_mw5c806b00_59a1_491e_99a1_2c932b2d5d7a) + (-1.0 * reaction_mw26fdabae_323b_4a78_b134_4c2eb70ea6a7));
	
% Species:   id = mwe3fd7f65_b0d1_44d9_b6f3_d2f7d332f664, name = pSTAT3n, affected by kineticLaw
	xdot(100) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*((-1.0 * reaction_mw5c806b00_59a1_491e_99a1_2c932b2d5d7a) + (-1.0 * reaction_mw5c806b00_59a1_491e_99a1_2c932b2d5d7a) + (-1.0 * reaction_mwc38a99c8_74cf_49f2_a16b_f6610ca1a0a7) + (-1.0 * reaction_mw45d92b79_0656_4795_87d0_7a465949ca43));
	
% Species:   id = mw0e1be972_fded_4bff_a93d_091ec942485f, name = PP2, affected by kineticLaw
	xdot(101) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*((-1.0 * reaction_mw26fdabae_323b_4a78_b134_4c2eb70ea6a7) + ( 1.0 * reaction_mw3b0c171c_6d60_41ca_8193_83cd5e6c188c) + (-1.0 * reaction_mw45d92b79_0656_4795_87d0_7a465949ca43) + ( 1.0 * reaction_mwb71945c2_03a8_4fad_a995_e1caeee98525));
	
% Species:   id = mw0facb8f2_95cf_4ddf_a959_b24ba64f320b, name = pSTAT3n-pSTAT3n-PP2, affected by kineticLaw
	xdot(102) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*(( 1.0 * reaction_mw26fdabae_323b_4a78_b134_4c2eb70ea6a7) + (-1.0 * reaction_mw3b0c171c_6d60_41ca_8193_83cd5e6c188c));
	
% Species:   id = mw9686f53e_d343_45fd_b441_9c992219546a, name = STAT3n-pSTAT3n, affected by kineticLaw
	xdot(103) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*(( 1.0 * reaction_mw3b0c171c_6d60_41ca_8193_83cd5e6c188c) + ( 1.0 * reaction_mwc38a99c8_74cf_49f2_a16b_f6610ca1a0a7));
	
% Species:   id = mw960bddeb_e567_46dd_b2f3_ed5e6a5c7972, name = STAT3n, affected by kineticLaw
	xdot(104) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*((-1.0 * reaction_mwc38a99c8_74cf_49f2_a16b_f6610ca1a0a7) + ( 1.0 * reaction_mwb71945c2_03a8_4fad_a995_e1caeee98525) + (-1.0 * reaction_mwd189238c_e8f9_40be_b4ea_18a42bba1b4f));
	
% Species:   id = mw8c85ff7f_6368_4b11_a2ed_ce83481b55e6, name = pSTAT3n-PP2, affected by kineticLaw
	xdot(105) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*(( 1.0 * reaction_mw45d92b79_0656_4795_87d0_7a465949ca43) + (-1.0 * reaction_mwb71945c2_03a8_4fad_a995_e1caeee98525));
	
% Species:   id = mw548c81c2_c626_4df8_9177_a1a6fc3d4ce8, name = pEGF-EGFR2-STAT3c-cbl, affected by kineticLaw
	xdot(106) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*(( 1.0 * reaction_mwcb637bf1_7618_4d8a_ab5c_399145ecf1df) + (-1.0 * reaction_mw401dde7e_c0a1_4780_b6cc_8f98681c862e));
	
% Species:   id = mw142e6dc4_ec15_459d_a184_6b20be04f08d, name = pEGF-EGFR2-STAT3c-cbl-EPn, affected by kineticLaw
	xdot(107) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*(( 1.0 * reaction_mw401dde7e_c0a1_4780_b6cc_8f98681c862e) + (-1.0 * reaction_mw0dd5a91d_d76c_494e_9dd6_57f2836aaa19));
	
% Species:   id = mw2c47ae3f_06d9_40ec_a252_535db0ae5caa, name = pEGF-EGFR2-PI3K-cbl, affected by kineticLaw
	xdot(108) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*(( 1.0 * reaction_mwb205f533_4013_406b_8a4b_691ec3949555) + (-1.0 * reaction_mw602726ea_89ee_41b8_bda6_e2811bb42c1d));
	
% Species:   id = mwd32d108b_49c2_4df2_9b67_d6c6b84f54b9, name = pEGF-EGFR2-PI3K-cbl-EPn, affected by kineticLaw
	xdot(109) = (1/(compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612))*(( 1.0 * reaction_mw602726ea_89ee_41b8_bda6_e2811bb42c1d) + (-1.0 * reaction_mwfab3a9ec_b094_44f0_bd59_12ac56ca1c99));
end

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


