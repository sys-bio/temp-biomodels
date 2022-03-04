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
% Model name = Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer
%
% is http://identifiers.org/biomodels.db/BIOMD0000000666
% is http://identifiers.org/biomodels.db/MODEL1609190000
%


function main()
%Initial conditions vector
	x0=zeros(35,1);
	x0(1) = 0.0;
	x0(2) = 80000.0000000001;
	x0(3) = 0.0;
	x0(4) = 120000.0;
	x0(5) = 0.0;
	x0(6) = 120000.0;
	x0(7) = 0.0;
	x0(8) = 120000.0;
	x0(9) = 0.0;
	x0(10) = 600000.0;
	x0(11) = 0.0;
	x0(12) = 600000.0;
	x0(13) = 0.0;
	x0(14) = 120000.0;
	x0(15) = 0.0;
	x0(16) = 120000.0;
	x0(17) = 0.0;
	x0(18) = 120000.0;
	x0(19) = 0.0;
	x0(20) = 120000.0;
	x0(21) = 0.0;
	x0(22) = 120000.0;
	x0(23) = 0.0;
	x0(24) = 120000.0;
	x0(25) = 0.0;
	x0(26) = 120000.0;
	x0(27) = 120000.0;
	x0(28) = 0.0;
	x0(29) = 0.0;
	x0(30) = 120000.0;
	x0(31) = 0.0;
	x0(32) = 120000.0;
	x0(33) = 120000.0;
	x0(34) = 1.25E-10;
	x0(35) = 1.0;


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

% Compartment: id = compartment_0, name = Melanoma cell, constant
	compartment_compartment_0=1.0;

% Reaction: id = reaction_0, name = GF_Binding_Unbinding	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_0_k1=2.18503E-5;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_0_k2=0.121008;

	reaction_reaction_0=compartment_compartment_0*(reaction_reaction_0_k1*const_species_species_25*x(2)-reaction_reaction_0_k2*x(1));

% Reaction: id = reaction_1, name = Sos_Activation	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_reaction_1_Kcat=694.731;
	% Local Parameter:   id =  km, name = km
	reaction_reaction_1_km=6086070.0;

	reaction_reaction_1=compartment_compartment_0*HMM_Modified_1(reaction_reaction_1_Kcat, reaction_reaction_1_km, x(1), x(4));

% Reaction: id = reaction_3, name = Ras_Activation	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_reaction_3_Kcat=32.344;
	% Local Parameter:   id =  km, name = km
	reaction_reaction_3_km=35954.3;

	reaction_reaction_3=compartment_compartment_0*HMM_Modified_2(reaction_reaction_3_Kcat, reaction_reaction_3_km, x(3), x(6));

% Reaction: id = reaction_4, name = Ras_Feedback_Deactivation_RasGap	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_reaction_4_Kcat=1509.36;
	% Local Parameter:   id =  km, name = km
	reaction_reaction_4_km=1432410.0;

	reaction_reaction_4=compartment_compartment_0*HMM_Modified_3(reaction_reaction_4_Kcat, reaction_reaction_4_km, const_species_species_28, x(5));

% Reaction: id = reaction_5, name = Raf1_Activation	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_reaction_5_Kcat=0.884096;
	% Local Parameter:   id =  km, name = km
	reaction_reaction_5_km=62464.6;

	reaction_reaction_5=compartment_compartment_0*HMM_Modified_4(reaction_reaction_5_Kcat, reaction_reaction_5_km, x(5), x(8));

% Reaction: id = reaction_6, name = Raf1_Feedback_Deactivation_Raf1PPtase	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_reaction_6_Kcat=0.126329;
	% Local Parameter:   id =  km, name = km
	reaction_reaction_6_km=1061.71;

	reaction_reaction_6=compartment_compartment_0*HMM_Modified_5(reaction_reaction_6_Kcat, reaction_reaction_6_km, const_species_species_27, x(7));

% Reaction: id = reaction_7, name = Mek_Activation_Raf1	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_reaction_7_Kcat=185.759;
	% Local Parameter:   id =  km, name = km
	reaction_reaction_7_km=4768350.0;

	reaction_reaction_7=compartment_compartment_0*HMM_Modified_6(reaction_reaction_7_Kcat, reaction_reaction_7_km, x(7), x(10));

% Reaction: id = reaction_8, name = Mek_Feedback_Deactivation_PP2A	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_reaction_8_Kcat=2.83243;
	% Local Parameter:   id =  km, name = km
	reaction_reaction_8_km=518753.0;

	reaction_reaction_8=compartment_compartment_0*HMM_Modified_7(reaction_reaction_8_Kcat, reaction_reaction_8_km, const_species_species_26, x(9));

% Reaction: id = reaction_9, name = Erk_Activation	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_reaction_9_Kcat=9.85367;
	% Local Parameter:   id =  km, name = km
	reaction_reaction_9_km=1007340.0;

	reaction_reaction_9=compartment_compartment_0*HMM_Modified_8(reaction_reaction_9_Kcat, reaction_reaction_9_km, x(12), x(9));

% Reaction: id = reaction_10, name = Erk_Feedback_Deactivation_PP2A	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_reaction_10_Kcat=8.8912;
	% Local Parameter:   id =  km, name = km
	reaction_reaction_10_km=3496490.0;

	reaction_reaction_10=compartment_compartment_0*HMM_Modified_9(reaction_reaction_10_Kcat, reaction_reaction_10_km, x(11), const_species_species_26);

% Reaction: id = reaction_11, name = P90Rsk_Activation	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_reaction_11_Kcat=0.0213697;
	% Local Parameter:   id =  km, name = km
	reaction_reaction_11_km=763523.0;

	reaction_reaction_11=compartment_compartment_0*HMM_Modified_10(reaction_reaction_11_Kcat, reaction_reaction_11_km, x(11), x(14));

% Reaction: id = reaction_12, name = P90Rsk_Deactivation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_12_k1=0.005;

	reaction_reaction_12=compartment_compartment_0*reaction_reaction_12_k1*x(13);

% Reaction: id = reaction_13, name = Sos_Feedback_Deactivation_P90Rsk	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_reaction_13_Kcat=1611.97;
	% Local Parameter:   id =  km, name = km
	reaction_reaction_13_km=896896.0;

	reaction_reaction_13=compartment_compartment_0*HMM_Modified_11(reaction_reaction_13_Kcat, reaction_reaction_13_km, x(13), x(3));

% Reaction: id = reaction_14, name = PI3K_Activation_RTK	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_reaction_14_Kcat=10.6737;
	% Local Parameter:   id =  km, name = km
	reaction_reaction_14_km=184912.0;

	reaction_reaction_14=compartment_compartment_0*HMM_Modified_12(reaction_reaction_14_Kcat, reaction_reaction_14_km, x(1), x(16));

% Reaction: id = reaction_15, name = PI3K_Activation_Ras	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_reaction_15_Kcat=0.0771067;
	% Local Parameter:   id =  km, name = km
	reaction_reaction_15_km=272056.0;

	reaction_reaction_15=compartment_compartment_0*HMM_Modified_13(reaction_reaction_15_Kcat, reaction_reaction_15_km, x(16), x(5));

% Reaction: id = reaction_16, name = PI3K_Deactivation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_16_k1=0.005;

	reaction_reaction_16=compartment_compartment_0*reaction_reaction_16_k1*x(15);

% Reaction: id = reaction_17, name = Akt_Activation_PI3K	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_reaction_17_Kcat=0.0566279;
	% Local Parameter:   id =  km, name = km
	reaction_reaction_17_km=653951.0;

	reaction_reaction_17=compartment_compartment_0*HMM_Modified(reaction_reaction_17_Kcat, reaction_reaction_17_km, x(15), x(18));

% Reaction: id = reaction_19, name = Raf1_Deactivation_Akt	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_reaction_19_Kcat=15.1212;
	% Local Parameter:   id =  km, name = km
	reaction_reaction_19_km=119355.0;

	reaction_reaction_19=compartment_compartment_0*HMM_Modified_14(reaction_reaction_19_Kcat, reaction_reaction_19_km, x(17), x(7));

% Reaction: id = reaction_20, name = RTK_Degradation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_20_k1=0.2;

	reaction_reaction_20=compartment_compartment_0*reaction_reaction_20_k1*x(1);

% Reaction: id = reaction_21, name = C3G_Activation	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_reaction_21_Kcat=694.731;
	% Local Parameter:   id =  km, name = km
	reaction_reaction_21_km=6086070.0;

	reaction_reaction_21=compartment_compartment_0*HMM_Modified_15(reaction_reaction_21_Kcat, reaction_reaction_21_km, x(1), x(20));

% Reaction: id = reaction_22, name = C3G_Deactivation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_22_k1=2.5;

	reaction_reaction_22=compartment_compartment_0*reaction_reaction_22_k1*x(19);

% Reaction: id = reaction_23, name = Rap1_Activation	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_reaction_23_Kcat=32.344;
	% Local Parameter:   id =  km, name = km
	reaction_reaction_23_km=35954.3;

	reaction_reaction_23=compartment_compartment_0*HMM_Modified_16(reaction_reaction_23_Kcat, reaction_reaction_23_km, x(19), x(22));

% Reaction: id = reaction_24, name = Rap1_Feedback_Deactivation_Rap1Gap	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_reaction_24_Kcat=1509.36;
	% Local Parameter:   id =  km, name = km
	reaction_reaction_24_km=1432410.0;

	reaction_reaction_24=compartment_compartment_0*HMM_Modified_17(reaction_reaction_24_Kcat, reaction_reaction_24_km, x(21), const_species_species_29);

% Reaction: id = reaction_27, name = Mek_Activation_bRaf	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_reaction_27_Kcat=185.759;
	% Local Parameter:   id =  km, name = km
	reaction_reaction_27_km=4768350.0;

	reaction_reaction_27=compartment_compartment_0*HMM_Modified_18(reaction_reaction_27_Kcat, x(33), reaction_reaction_27_km, x(10));

% Reaction: id = reaction_29, name = RTK_Degradation_Free	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_29_k1=0.00125;

	reaction_reaction_29=compartment_compartment_0*reaction_reaction_29_k1*x(2);

% Reaction: id = PIP3_Activation, name = PIP3_Activation	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_PIP3_Activation_Kcat=0.0566279;
	% Local Parameter:   id =  km, name = km
	reaction_PIP3_Activation_km=653951.0;

	reaction_PIP3_Activation=compartment_compartment_0*HMM_Modified_19(reaction_PIP3_Activation_Kcat, x(24), reaction_PIP3_Activation_km, x(15));

% Reaction: id = PIP3_Feedback_Deactivation_PTEN, name = PIP3_Feedback_Deactivation_PTEN	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_PIP3_Feedback_Deactivation_PTEN_Kcat=2.83243;
	% Local Parameter:   id =  km, name = km
	reaction_PIP3_Feedback_Deactivation_PTEN_km=518753.0;

	reaction_PIP3_Feedback_Deactivation_PTEN=compartment_compartment_0*HMM_Modified_20(reaction_PIP3_Feedback_Deactivation_PTEN_Kcat, x(23), const_species_PTENActive, reaction_PIP3_Feedback_Deactivation_PTEN_km);

% Reaction: id = Akt_Activation_PIP3, name = Akt_Activation_PIP3	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_Akt_Activation_PIP3_Kcat=0.0566279;
	% Local Parameter:   id =  km, name = km
	reaction_Akt_Activation_PIP3_km=653951.0;

	reaction_Akt_Activation_PIP3=compartment_compartment_0*HMM_Modified_21(reaction_Akt_Activation_PIP3_Kcat, x(23), reaction_Akt_Activation_PIP3_km, x(18));

% Reaction: id = PI3K_Activation_IRS1, name = PI3K_Activation_IRS1	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_PI3K_Activation_IRS1_Kcat=0.0771067;
	% Local Parameter:   id =  km, name = km
	reaction_PI3K_Activation_IRS1_km=272056.0;

	reaction_PI3K_Activation_IRS1=compartment_compartment_0*HMM_Modified_22(x(25), reaction_PI3K_Activation_IRS1_Kcat, reaction_PI3K_Activation_IRS1_km, x(16));

% Reaction: id = IRS1_Activation, name = IRS1_Activation	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_IRS1_Activation_Kcat=10.6737;
	% Local Parameter:   id =  km, name = km
	reaction_IRS1_Activation_km=184912.0;

	reaction_IRS1_Activation=compartment_compartment_0*HMM_Modified_23(x(26), reaction_IRS1_Activation_Kcat, reaction_IRS1_Activation_km, x(1));

% Reaction: id = PDK1_Activation, name = PDK1_Activation	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_PDK1_Activation_Kcat=9.85367;
	% Local Parameter:   id =  km, name = km
	reaction_PDK1_Activation_km=1007340.0;

	reaction_PDK1_Activation=compartment_compartment_0*HMM_Modified_24(reaction_PDK1_Activation_Kcat, x(27), x(23), reaction_PDK1_Activation_km);

% Reaction: id = PDK1_Deactivation, name = PDK1_Deactivation	% Local Parameter:   id =  k1, name = k1
	reaction_PDK1_Deactivation_k1=2.5;

	reaction_PDK1_Deactivation=compartment_compartment_0*reaction_PDK1_Deactivation_k1*x(28);

% Reaction: id = Akt_Activation_PDK1, name = Akt_Activation_PDK1	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_Akt_Activation_PDK1_Kcat=0.0566279;
	% Local Parameter:   id =  km, name = km
	reaction_Akt_Activation_PDK1_km=653951.0;

	reaction_Akt_Activation_PDK1=compartment_compartment_0*HMM_Modified_25(reaction_Akt_Activation_PDK1_Kcat, x(28), reaction_Akt_Activation_PDK1_km, x(18));

% Reaction: id = Akt_Feedback_Activation_HSP90_Cdc37, name = Akt_Feedback_Activation_HSP90-Cdc37	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_Akt_Feedback_Activation_HSP90_Cdc37_Kcat=0.0566279;
	% Local Parameter:   id =  km, name = km
	reaction_Akt_Feedback_Activation_HSP90_Cdc37_km=653951.0;

	reaction_Akt_Feedback_Activation_HSP90_Cdc37=compartment_compartment_0*HMM_Modified_26(const_species_HSP90_Cdc37Active, reaction_Akt_Feedback_Activation_HSP90_Cdc37_Kcat, reaction_Akt_Feedback_Activation_HSP90_Cdc37_km, x(18));

% Reaction: id = Akt_Feedback_Deactivation_PHLPP, name = Akt_Feedback_Deactivation_PHLPP	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_Akt_Feedback_Deactivation_PHLPP_Kcat=0.126329;
	% Local Parameter:   id =  km, name = km
	reaction_Akt_Feedback_Deactivation_PHLPP_km=1061.71;

	reaction_Akt_Feedback_Deactivation_PHLPP=compartment_compartment_0*HMM_Modified_27(reaction_Akt_Feedback_Deactivation_PHLPP_Kcat, const_species_PHLPPActive, reaction_Akt_Feedback_Deactivation_PHLPP_km, x(17));

% Reaction: id = Akt_Feedback_Activation_mTORC2, name = Akt_Feedback_Activation_mTORC2	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_Akt_Feedback_Activation_mTORC2_Kcat=0.0566279;
	% Local Parameter:   id =  km, name = km
	reaction_Akt_Feedback_Activation_mTORC2_km=653951.0;

	reaction_Akt_Feedback_Activation_mTORC2=compartment_compartment_0*HMM_Modified_28(reaction_Akt_Feedback_Activation_mTORC2_Kcat, reaction_Akt_Feedback_Activation_mTORC2_km, const_species_mTORC2Active, x(18));

% Reaction: id = Akt_Feedback_Activation_TCL1, name = Akt_Feedback_Activation_TCL1	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_Akt_Feedback_Activation_TCL1_Kcat=0.0566279;
	% Local Parameter:   id =  km, name = km
	reaction_Akt_Feedback_Activation_TCL1_km=653951.0;

	reaction_Akt_Feedback_Activation_TCL1=compartment_compartment_0*HMM_Modified_29(reaction_Akt_Feedback_Activation_TCL1_Kcat, const_species_TCL1Active, reaction_Akt_Feedback_Activation_TCL1_km, x(18));

% Reaction: id = Akt_Feedback_Deactivation_CTMP, name = Akt_Feedback_Deactivation_CTMP	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_Akt_Feedback_Deactivation_CTMP_Kcat=0.0566279;
	% Local Parameter:   id =  km, name = km
	reaction_Akt_Feedback_Deactivation_CTMP_km=653951.0;

	reaction_Akt_Feedback_Deactivation_CTMP=compartment_compartment_0*HMM_Modified_30(const_species_CTMPActive, reaction_Akt_Feedback_Deactivation_CTMP_Kcat, reaction_Akt_Feedback_Deactivation_CTMP_km, x(17));

% Reaction: id = Akt_Feedback_Deactivation_PP2A, name = Akt_Feedback_Deactivation_PP2A	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_Akt_Feedback_Deactivation_PP2A_Kcat=0.126329;
	% Local Parameter:   id =  km, name = km
	reaction_Akt_Feedback_Deactivation_PP2A_km=1061.71;

	reaction_Akt_Feedback_Deactivation_PP2A=compartment_compartment_0*HMM_Modified_31(reaction_Akt_Feedback_Deactivation_PP2A_Kcat, reaction_Akt_Feedback_Deactivation_PP2A_km, x(17), const_species_species_26);

% Reaction: id = Erk_Feedback_Deactivation_Raf1, name = Erk_Feedback_Deactivation_Raf1	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_Erk_Feedback_Deactivation_Raf1_Kcat=8.8912;
	% Local Parameter:   id =  km, name = km
	reaction_Erk_Feedback_Deactivation_Raf1_km=3496490.0;

	reaction_Erk_Feedback_Deactivation_Raf1=compartment_compartment_0*HMM_Modified_32(reaction_Erk_Feedback_Deactivation_Raf1_Kcat, reaction_Erk_Feedback_Deactivation_Raf1_km, x(11), x(7));

% Reaction: id = Sos_Feedback_Deactivation_Erk, name = Sos_Feedback_Deactivation_Erk	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_Sos_Feedback_Deactivation_Erk_Kcat=0.0213697;
	% Local Parameter:   id =  km, name = km
	reaction_Sos_Feedback_Deactivation_Erk_km=763523.0;

	reaction_Sos_Feedback_Deactivation_Erk=compartment_compartment_0*HMM_Modified_33(reaction_Sos_Feedback_Deactivation_Erk_Kcat, reaction_Sos_Feedback_Deactivation_Erk_km, x(11), x(3));

% Reaction: id = mTORC1_Activation_Akt, name = mTORC1_Activation_Akt	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_mTORC1_Activation_Akt_Kcat=15.1212;
	% Local Parameter:   id =  km, name = km
	reaction_mTORC1_Activation_Akt_km=119355.0;

	reaction_mTORC1_Activation_Akt=compartment_compartment_0*HMM_Modified_34(reaction_mTORC1_Activation_Akt_Kcat, reaction_mTORC1_Activation_Akt_km, x(30), x(17));

% Reaction: id = S6K1_Activation_mTORC1, name = S6K1_Activation_mTORC1	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_S6K1_Activation_mTORC1_Kcat=0.0213697;
	% Local Parameter:   id =  km, name = km
	reaction_S6K1_Activation_mTORC1_km=763523.0;

	reaction_S6K1_Activation_mTORC1=compartment_compartment_0*HMM_Modified_35(reaction_S6K1_Activation_mTORC1_Kcat, x(32), reaction_S6K1_Activation_mTORC1_km, x(29));

% Reaction: id = IRS1_Feedback_Deactivation_S6K1, name = IRS1_Feedback_Deactivation_S6K1	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_IRS1_Feedback_Deactivation_S6K1_Kcat=1611.97;
	% Local Parameter:   id =  km, name = km
	reaction_IRS1_Feedback_Deactivation_S6K1_km=896896.0;

	reaction_IRS1_Feedback_Deactivation_S6K1=compartment_compartment_0*HMM_Modified_36(x(25), reaction_IRS1_Feedback_Deactivation_S6K1_Kcat, x(31), reaction_IRS1_Feedback_Deactivation_S6K1_km);

% Reaction: id = Dabrafenib_degradation, name = Dabrafenib_degradation	% Local Parameter:   id =  k1, name = k1
	reaction_Dabrafenib_degradation_k1=1.92527E-5;

	reaction_Dabrafenib_degradation=compartment_compartment_0*reaction_Dabrafenib_degradation_k1*x(34);

% Reaction: id = bRaf_Deactivation_Dabrafenib, name = bRaf_Deactivation_Dabrafenib	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_bRaf_Deactivation_Dabrafenib_Kcat=3.19E13;
	% Local Parameter:   id =  km, name = km
	reaction_bRaf_Deactivation_Dabrafenib_km=3200.0;

	reaction_bRaf_Deactivation_Dabrafenib=compartment_compartment_0*HMM_Modified_37(x(34), reaction_bRaf_Deactivation_Dabrafenib_Kcat, x(33), reaction_bRaf_Deactivation_Dabrafenib_km);

% Species:   id = species_25, name = GF, constant	const_species_species_25=1.0002E7;

% Species:   id = species_26, name = PP2AActive, constant	const_species_species_26=120000.0;

% Species:   id = species_27, name = Raf1PPtase, constant	const_species_species_27=120000.0;

% Species:   id = species_28, name = RasGapActive, constant	const_species_species_28=120000.0;

% Species:   id = species_29, name = Rap1Gap, constant	const_species_species_29=120000.0;

% Species:   id = species_30, name = proRTK, constant	const_species_species_30=1.0;

% Species:   id = PTENActive, name = PTENActive, constant	const_species_PTENActive=120000.0;

% Species:   id = HSP90_Cdc37Active, name = HSP90-Cdc37Active, constant	const_species_HSP90_Cdc37Active=120000.0;

% Species:   id = PHLPPActive, name = PHLPPActive, constant	const_species_PHLPPActive=120000.0;

% Species:   id = mTORC2Active, name = mTORC2Active, constant	const_species_mTORC2Active=120000.0;

% Species:   id = TCL1Active, name = TCL1Active, constant	const_species_TCL1Active=120000.0;

% Species:   id = CTMPActive, name = CTMPActive, constant	const_species_CTMPActive=120000.0;

% Species:   id = probRafMutated, name = probRafMutated, constant	const_species_probRafMutated=1.0;

	xdot=zeros(35,1);
	
% Species:   id = species_0, name = boundRTK, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_0) + (-1.0 * reaction_reaction_20));
	
% Species:   id = species_1, name = freeRTK, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_0) + ( 1.0 * reaction_reaction_28) + (-1.0 * reaction_reaction_29));
	
% Species:   id = species_2, name = SosActive, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_13) + (-1.0 * reaction_Sos_Feedback_Deactivation_Erk));
	
% Species:   id = species_3, name = SosInactive, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_1) + ( 1.0 * reaction_reaction_13) + ( 1.0 * reaction_Sos_Feedback_Deactivation_Erk));
	
% Species:   id = species_4, name = RasActive, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_4));
	
% Species:   id = species_5, name = RasInactive, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_3) + ( 1.0 * reaction_reaction_4));
	
% Species:   id = species_6, name = Raf1Active, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_5) + (-1.0 * reaction_reaction_6) + (-1.0 * reaction_reaction_19));
	
% Species:   id = species_7, name = Raf1Inactive, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_5) + ( 1.0 * reaction_reaction_6) + ( 1.0 * reaction_reaction_19));
	
% Species:   id = species_8, name = MekActive, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_7) + (-1.0 * reaction_reaction_8) + ( 1.0 * reaction_reaction_27));
	
% Species:   id = species_9, name = MekInactive, affected by kineticLaw
	xdot(10) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_7) + ( 1.0 * reaction_reaction_8) + (-1.0 * reaction_reaction_27));
	
% Species:   id = species_10, name = ErkActive, affected by kineticLaw
	xdot(11) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_9) + (-1.0 * reaction_reaction_10) + (-1.0 * reaction_Erk_Feedback_Deactivation_Raf1));
	
% Species:   id = species_11, name = ErkInactive, affected by kineticLaw
	xdot(12) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_9) + ( 1.0 * reaction_reaction_10) + ( 1.0 * reaction_Erk_Feedback_Deactivation_Raf1));
	
% Species:   id = species_12, name = P90RskActive, affected by kineticLaw
	xdot(13) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_11) + (-1.0 * reaction_reaction_12));
	
% Species:   id = species_13, name = P90RskInactive, affected by kineticLaw
	xdot(14) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_11) + ( 1.0 * reaction_reaction_12));
	
% Species:   id = species_14, name = PI3KActive, affected by kineticLaw
	xdot(15) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_14) + ( 1.0 * reaction_reaction_15) + (-1.0 * reaction_reaction_16) + ( 1.0 * reaction_PI3K_Activation_IRS1));
	
% Species:   id = species_15, name = PI3KInactive, affected by kineticLaw
	xdot(16) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_14) + (-1.0 * reaction_reaction_15) + ( 1.0 * reaction_reaction_16) + (-1.0 * reaction_PI3K_Activation_IRS1));
	
% Species:   id = species_16, name = AktActive, affected by kineticLaw
	xdot(17) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_17) + ( 1.0 * reaction_Akt_Activation_PIP3) + ( 1.0 * reaction_Akt_Activation_PDK1) + ( 1.0 * reaction_Akt_Feedback_Activation_HSP90_Cdc37) + (-1.0 * reaction_Akt_Feedback_Deactivation_PHLPP) + ( 1.0 * reaction_Akt_Feedback_Activation_mTORC2) + ( 1.0 * reaction_Akt_Feedback_Activation_TCL1) + (-1.0 * reaction_Akt_Feedback_Deactivation_CTMP) + (-1.0 * reaction_Akt_Feedback_Deactivation_PP2A));
	
% Species:   id = species_17, name = AktInactive, affected by kineticLaw
	xdot(18) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_17) + (-1.0 * reaction_Akt_Activation_PIP3) + (-1.0 * reaction_Akt_Activation_PDK1) + (-1.0 * reaction_Akt_Feedback_Activation_HSP90_Cdc37) + ( 1.0 * reaction_Akt_Feedback_Deactivation_PHLPP) + (-1.0 * reaction_Akt_Feedback_Activation_mTORC2) + (-1.0 * reaction_Akt_Feedback_Activation_TCL1) + ( 1.0 * reaction_Akt_Feedback_Deactivation_CTMP) + ( 1.0 * reaction_Akt_Feedback_Deactivation_PP2A));
	
% Species:   id = species_19, name = C3GActive, affected by kineticLaw
	xdot(19) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_21) + (-1.0 * reaction_reaction_22));
	
% Species:   id = species_20, name = C3GInactive, affected by kineticLaw
	xdot(20) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_21) + ( 1.0 * reaction_reaction_22));
	
% Species:   id = species_21, name = Rap1Active, affected by kineticLaw
	xdot(21) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_23) + (-1.0 * reaction_reaction_24));
	
% Species:   id = species_22, name = Rap1Inactive, affected by kineticLaw
	xdot(22) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_23) + ( 1.0 * reaction_reaction_24));
	
% Species:   id = PIP3Active, name = PIP3Active, affected by kineticLaw
	xdot(23) = (1/(compartment_compartment_0))*(( 1.0 * reaction_PIP3_Activation) + (-1.0 * reaction_PIP3_Feedback_Deactivation_PTEN));
	
% Species:   id = PIP3Inactive, name = PIP3Inactive, affected by kineticLaw
	xdot(24) = (1/(compartment_compartment_0))*((-1.0 * reaction_PIP3_Activation) + ( 1.0 * reaction_PIP3_Feedback_Deactivation_PTEN));
	
% Species:   id = IRS1Active, name = IRS1Active, affected by kineticLaw
	xdot(25) = (1/(compartment_compartment_0))*(( 1.0 * reaction_IRS1_Activation) + (-1.0 * reaction_IRS1_Feedback_Deactivation_S6K1));
	
% Species:   id = IRS1Inactive, name = IRS1Inactive, affected by kineticLaw
	xdot(26) = (1/(compartment_compartment_0))*((-1.0 * reaction_IRS1_Activation) + ( 1.0 * reaction_IRS1_Feedback_Deactivation_S6K1));
	
% Species:   id = PDK1Inactive, name = PDK1Inactive, affected by kineticLaw
	xdot(27) = (1/(compartment_compartment_0))*((-1.0 * reaction_PDK1_Activation) + ( 1.0 * reaction_PDK1_Deactivation));
	
% Species:   id = PDK1Active, name = PDK1Active, affected by kineticLaw
	xdot(28) = (1/(compartment_compartment_0))*(( 1.0 * reaction_PDK1_Activation) + (-1.0 * reaction_PDK1_Deactivation));
	
% Species:   id = mTORC1Active, name = mTORC1Active, affected by kineticLaw
	xdot(29) = (1/(compartment_compartment_0))*(( 1.0 * reaction_mTORC1_Activation_Akt));
	
% Species:   id = mTORC1Inactive, name = mTORC1Inactive, affected by kineticLaw
	xdot(30) = (1/(compartment_compartment_0))*((-1.0 * reaction_mTORC1_Activation_Akt));
	
% Species:   id = S6K1Active, name = S6K1Active, affected by kineticLaw
	xdot(31) = (1/(compartment_compartment_0))*(( 1.0 * reaction_S6K1_Activation_mTORC1));
	
% Species:   id = S6K1Inactive, name = S6K1Inactive, affected by kineticLaw
	xdot(32) = (1/(compartment_compartment_0))*((-1.0 * reaction_S6K1_Activation_mTORC1));
	
% Species:   id = bRafMutated, name = bRafMutated, affected by kineticLaw
	xdot(33) = (1/(compartment_compartment_0))*((-1.0 * reaction_bRaf_Deactivation_Dabrafenib) + ( 1.0 * reaction_bRafMutated_Production));
	
% Species:   id = Dabrafenib, name = Dabrafenib, affected by kineticLaw
	xdot(34) = (1/(compartment_compartment_0))*((-1.0 * reaction_Dabrafenib_degradation));
	
% Species:   id = bRafMutatedInactive, name = bRafMutatedInactive, affected by kineticLaw
	xdot(35) = (1/(compartment_compartment_0))*(( 1.0 * reaction_bRaf_Deactivation_Dabrafenib));
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=HMM_Modified_9(Kcat,km,species_10,species_26), z=(Kcat*species_26*species_10/(km+species_10));end

function z=HMM_Modified_4(Kcat,km,species_4,species_7), z=(Kcat*species_4*species_7/(km+species_7));end

function z=HMM_Modified_34(Kcat,km,mTORC1Inactive,species_16), z=(Kcat*species_16*mTORC1Inactive/(km+mTORC1Inactive));end

function z=HMM_Modified_7(Kcat,km,species_26,species_8), z=(Kcat*species_26*species_8/(km+species_8));end

function z=HMM_Modified_23(IRS1Inactive,Kcat,km,species_0), z=(Kcat*species_0*IRS1Inactive/(km+IRS1Inactive));end

function z=HMM_Modified_31(Kcat,km,species_16,species_26), z=(Kcat*species_26*species_16/(km+species_16));end

function z=HMM_Modified_8(Kcat,km,species_11,species_8), z=(Kcat*species_8*species_11/(km+species_11));end

function z=HMM_Modified_20(Kcat,PIP3Active,PTENActive,km), z=(Kcat*PTENActive*PIP3Active/(km+PIP3Active));end

function z=HMM_Modified_2(Kcat,km,species_2,species_5), z=(Kcat*species_2*species_5/(km+species_5));end

function z=HMM_Modified_5(Kcat,km,species_27,species_6), z=(Kcat*species_27*species_6/(km+species_6));end

function z=HMM_Modified_6(Kcat,km,species_6,species_9), z=(Kcat*species_6*species_9/(km+species_9));end

function z=HMM_Modified_10(Kcat,km,species_10,species_13), z=(Kcat*species_10*species_13/(km+species_13));end

function z=HMM_Modified_11(Kcat,km,species_12,species_2), z=(Kcat*species_12*species_2/(km+species_2));end

function z=HMM_Modified_12(Kcat,km,species_0,species_15), z=(Kcat*species_0*species_15/(km+species_15));end

function z=HMM_Modified_28(Kcat,km,mTORC2Active,species_17), z=(Kcat*mTORC2Active*species_17/(km+species_17));end

function z=HMM_Modified_13(Kcat,km,species_15,species_4), z=(Kcat*species_4*species_15/(km+species_15));end

function z=HMM_Modified_26(HSP90_Cdc37Active,Kcat,km,species_17), z=(Kcat*HSP90_Cdc37Active*species_17/(km+species_17));end

function z=HMM_Modified(Kcat,km,species_14,species_17), z=(Kcat*species_14*species_17/(km+species_17));end

function z=HMM_Modified_30(CTMPActive,Kcat,km,species_16), z=(Kcat*CTMPActive*species_16/(km+species_16));end

function z=HMM_Modified_14(Kcat,km,species_16,species_6), z=(Kcat*species_16*species_6/(km+species_6));end

function z=HMM_Modified_15(Kcat,km,species_0,species_20), z=(Kcat*species_0*species_20/(km+species_20));end

function z=HMM_Modified_32(Kcat,km,species_10,species_6), z=(Kcat*species_6*species_10/(km+species_10));end

function z=HMM_Modified_21(Kcat,PIP3Active,km,species_17), z=(Kcat*PIP3Active*species_17/(km+species_17));end

function z=HMM_Modified_3(Kcat,km,species_28,species_4), z=(Kcat*species_28*species_4/(km+species_4));end

function z=HMM_Modified_1(Kcat,km,species_0,species_3), z=(Kcat*species_0*species_3/(km+species_3));end

function z=HMM_Modified_16(Kcat,km,species_19,species_22), z=(Kcat*species_19*species_22/(km+species_22));end

function z=HMM_Modified_18(Kcat,bRafMutated,km,species_9), z=(Kcat*bRafMutated*species_9/(km+species_9));end

function z=HMM_Modified_22(IRS1Active,Kcat,km,species_15), z=(Kcat*IRS1Active*species_15/(km+species_15));end

function z=HMM_Modified_19(Kcat,PIP3Inactive,km,species_14), z=(Kcat*species_14*PIP3Inactive/(km+PIP3Inactive));end

function z=HMM_Modified_17(Kcat,km,species_21,species_29), z=(Kcat*species_29*species_21/(km+species_21));end

function z=HMM_Modified_24(Kcat,PDK1Inactive,PIP3Active,km), z=(Kcat*PIP3Active*PDK1Inactive/(km+PDK1Inactive));end

function z=HMM_Modified_25(Kcat,PDK1Active,km,species_17), z=(Kcat*PDK1Active*species_17/(km+species_17));end

function z=HMM_Modified_27(Kcat,PHLPPActive,km,species_16), z=(Kcat*PHLPPActive*species_16/(km+species_16));end

function z=HMM_Modified_33(Kcat,km,species_10,species_2), z=(Kcat*species_10*species_2/(km+species_2));end

function z=HMM_Modified_29(Kcat,TCL1Active,km,species_17), z=(Kcat*TCL1Active*species_17/(km+species_17));end

function z=HMM_Modified_35(Kcat,S6K1Inactive,km,mTORC1Active), z=(Kcat*mTORC1Active*S6K1Inactive/(km+S6K1Inactive));end

function z=HMM_Modified_36(IRS1Active,Kcat,S6K1Active,km), z=(Kcat*S6K1Active*IRS1Active/(km+IRS1Active));end

function z=HMM_Modified_37(Dabrafenib,Kcat,bRafMutated,km), z=(Kcat*Dabrafenib*bRafMutated/(km+bRafMutated));end

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


