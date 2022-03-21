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
% Model name = Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells
%
% isDerivedFrom http://identifiers.org/bto/BTO:0001610
% isDerivedFrom http://identifiers.org/ncit/NCIT:C15632
% isDerivedFrom http://identifiers.org/go/GO:0035690
% isDerivedFrom http://identifiers.org/mamo/MAMO_0000046
% isDerivedFrom http://identifiers.org/go/GO:0007173
% isDerivedFrom http://identifiers.org/taxonomy/9606
% isDerivedFrom http://identifiers.org/biomodels.db/MODEL1902140001
% isDescribedBy http://identifiers.org/biomodels.db/MODEL1902140001
% isDescribedBy http://identifiers.org/pubmed/30481266
% is http://identifiers.org/biomodels.db/MODEL1902140001
% is http://identifiers.org/biomodels.db/BIOMD0000000883
%


function main()
%Initial conditions vector
	x0=zeros(63,1);
	x0(1) = 0.0;
	x0(2) = 10.0;
	x0(3) = 0.0;
	x0(4) = 10.0;
	x0(5) = 0.0;
	x0(6) = 10.0;
	x0(7) = 0.0;
	x0(8) = 10.0;
	x0(9) = 0.0;
	x0(10) = 10.0;
	x0(11) = 0.0;
	x0(12) = 10.0;
	x0(13) = 0.0;
	x0(14) = 10.0;
	x0(15) = 0.0;
	x0(16) = 10.0;
	x0(17) = 0.0;
	x0(18) = 10.0;
	x0(19) = 10.0;
	x0(20) = 0.0;
	x0(21) = 0.0;
	x0(22) = 0.0;
	x0(23) = 10.0;
	x0(24) = 100.0;
	x0(25) = 1000.0;
	x0(26) = 0.0;
	x0(27) = 10.0;
	x0(28) = 10.0;
	x0(29) = 0.0;
	x0(30) = 10.0;
	x0(31) = 0.0;
	x0(32) = 10.0;
	x0(33) = 0.0;
	x0(34) = 0.0;
	x0(35) = 10.0;
	x0(36) = 0.0;
	x0(37) = 10.0;
	x0(38) = 0.0;
	x0(39) = 10.0;
	x0(40) = 0.0;
	x0(41) = 10.0;
	x0(42) = 0.0;
	x0(43) = 10.0;
	x0(44) = 0.0;
	x0(45) = 1.0;
	x0(46) = 0.0;
	x0(47) = 0.0;
	x0(48) = 1.5;
	x0(49) = 1.5;
	x0(50) = 0.0;
	x0(51) = 0.0;
	x0(52) = 1.5;
	x0(53) = 0.0;
	x0(54) = 1.5;
	x0(55) = 0.0;
	x0(56) = 1.5;
	x0(57) = 0.0;
	x0(58) = 4.5;
	x0(59) = 0.0;
	x0(60) = 2.25;
	x0(61) = 10.0;
	x0(62) = 10.0;
	x0(63) = 0.0;


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

% Compartment: id = compartment_0, name = Sphere (thyroid cancer cell), constant
	compartment_compartment_0=1.0E-12;

% Reaction: id = reaction_3, name = Ras_Activation	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_reaction_3_Kcat=0.1;
	% Local Parameter:   id =  km, name = km
	reaction_reaction_3_km=0.1;

	reaction_reaction_3=compartment_compartment_0*HMM_Modified(reaction_reaction_3_Kcat, reaction_reaction_3_km, x(3), x(6));

% Reaction: id = reaction_5, name = Raf1_Activation	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_reaction_5_Kcat=0.12;
	% Local Parameter:   id =  km, name = km
	reaction_reaction_5_km=0.1;

	reaction_reaction_5=compartment_compartment_0*HMM_Modified(reaction_reaction_5_Kcat, reaction_reaction_5_km, x(5), x(8));

% Reaction: id = reaction_7, name = Mek_Activation_Raf1	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_reaction_7_Kcat=0.096;
	% Local Parameter:   id =  km, name = km
	reaction_reaction_7_km=0.1;

	reaction_reaction_7=compartment_compartment_0*HMM_Modified(reaction_reaction_7_Kcat, reaction_reaction_7_km, x(7), x(10));

% Reaction: id = reaction_9, name = Erk_Activation	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_reaction_9_Kcat=0.1;
	% Local Parameter:   id =  km, name = km
	reaction_reaction_9_km=0.1;

	reaction_reaction_9=compartment_compartment_0*HMM_Modified(reaction_reaction_9_Kcat, reaction_reaction_9_km, x(9), x(12));

% Reaction: id = reaction_14, name = PI3K_Activation_pEGFR	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_reaction_14_Kcat=0.1;
	% Local Parameter:   id =  km, name = km
	reaction_reaction_14_km=0.1;

	reaction_reaction_14=compartment_compartment_0*HMM_Modified(reaction_reaction_14_Kcat, reaction_reaction_14_km, x(1), x(14));

% Reaction: id = reaction_15, name = PI3K_Activation_Ras	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_reaction_15_Kcat=0.1;
	% Local Parameter:   id =  km, name = km
	reaction_reaction_15_km=0.1;

	reaction_reaction_15=compartment_compartment_0*HMM_Modified(reaction_reaction_15_Kcat, reaction_reaction_15_km, x(5), x(14));

% Reaction: id = reaction_16, name = PI3K_Deactivation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_16_k1=0.1;

	reaction_reaction_16=compartment_compartment_0*reaction_reaction_16_k1*x(13);

% Reaction: id = reaction_17, name = Akt_Activation_PI3K	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_reaction_17_Kcat=0.1;
	% Local Parameter:   id =  km, name = km
	reaction_reaction_17_km=0.1;

	reaction_reaction_17=compartment_compartment_0*HMM_Modified(reaction_reaction_17_Kcat, reaction_reaction_17_km, x(13), x(16));

% Reaction: id = reaction_19, name = Raf1_Deactivation_Akt	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_reaction_19_Kcat=0.1;
	% Local Parameter:   id =  km, name = km
	reaction_reaction_19_km=0.1;

	reaction_reaction_19=compartment_compartment_0*HMM_Modified(reaction_reaction_19_Kcat, reaction_reaction_19_km, x(15), x(7));

% Reaction: id = reaction_20, name = EGFR_Degradation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_20_k1=0.1;

	reaction_reaction_20=compartment_compartment_0*reaction_reaction_20_k1*x(1);

% Reaction: id = reaction_27, name = Mek_Activation_bRafMutated	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_reaction_27_Kcat=0.1;
	% Local Parameter:   id =  km, name = km
	reaction_reaction_27_km=0.1;

	reaction_reaction_27=compartment_compartment_0*HMM_Modified(reaction_reaction_27_Kcat, reaction_reaction_27_km, x(24), x(10));

% Reaction: id = reaction_28, name = EGFR_Production	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_28_k1=0.1;

	reaction_reaction_28=compartment_compartment_0*reaction_reaction_28_k1*const_species_species_30;

% Reaction: id = PIP3_Activation_PIP3, name = PIP3_Activation_PIP3	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_PIP3_Activation_PIP3_Kcat=0.1;
	% Local Parameter:   id =  km, name = km
	reaction_PIP3_Activation_PIP3_km=0.1;

	reaction_PIP3_Activation_PIP3=compartment_compartment_0*HMM_Modified(reaction_PIP3_Activation_PIP3_Kcat, reaction_PIP3_Activation_PIP3_km, x(13), x(18));

% Reaction: id = PIP3_Feedback_Deactivation_PTEN, name = PIP3_Feedback_Deactivation_PTEN	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_PIP3_Feedback_Deactivation_PTEN_Kcat=0.1;
	% Local Parameter:   id =  km, name = km
	reaction_PIP3_Feedback_Deactivation_PTEN_km=0.1;

	reaction_PIP3_Feedback_Deactivation_PTEN=compartment_compartment_0*HMM_Modified(reaction_PIP3_Feedback_Deactivation_PTEN_Kcat, reaction_PIP3_Feedback_Deactivation_PTEN_km, const_species_PTENActive, x(17));

% Reaction: id = Akt_Activation_PIP3, name = Akt_Activation_PIP3	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_Akt_Activation_PIP3_Kcat=0.1;
	% Local Parameter:   id =  km, name = km
	reaction_Akt_Activation_PIP3_km=0.1;

	reaction_Akt_Activation_PIP3=compartment_compartment_0*HMM_Modified(reaction_Akt_Activation_PIP3_Kcat, reaction_Akt_Activation_PIP3_km, x(17), x(16));

% Reaction: id = PDK1_Activation, name = PDK1_Activation	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_PDK1_Activation_Kcat=0.1;
	% Local Parameter:   id =  km, name = km
	reaction_PDK1_Activation_km=0.1;

	reaction_PDK1_Activation=compartment_compartment_0*HMM_Modified(reaction_PDK1_Activation_Kcat, reaction_PDK1_Activation_km, x(17), x(19));

% Reaction: id = PDK1_Deactivation, name = PDK1_Deactivation	% Local Parameter:   id =  k1, name = k1
	reaction_PDK1_Deactivation_k1=0.1;

	reaction_PDK1_Deactivation=compartment_compartment_0*reaction_PDK1_Deactivation_k1*x(20);

% Reaction: id = Akt_Activation_PDK1, name = Akt_Activation_PDK1	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_Akt_Activation_PDK1_Kcat=0.1;
	% Local Parameter:   id =  km, name = km
	reaction_Akt_Activation_PDK1_km=0.1;

	reaction_Akt_Activation_PDK1=compartment_compartment_0*HMM_Modified(reaction_Akt_Activation_PDK1_Kcat, reaction_Akt_Activation_PDK1_km, x(20), x(16));

% Reaction: id = Akt_Feedback_Activation_HSP90_Cdc37, name = Akt_Feedback_Activation_HSP90-Cdc37	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_Akt_Feedback_Activation_HSP90_Cdc37_Kcat=0.1;
	% Local Parameter:   id =  km, name = km
	reaction_Akt_Feedback_Activation_HSP90_Cdc37_km=0.1;

	reaction_Akt_Feedback_Activation_HSP90_Cdc37=compartment_compartment_0*HMM_Modified(reaction_Akt_Feedback_Activation_HSP90_Cdc37_Kcat, reaction_Akt_Feedback_Activation_HSP90_Cdc37_km, const_species_HSP90_Cdc37Active, x(16));

% Reaction: id = Akt_Feedback_Deactivation_PHLPP, name = Akt_Feedback_Deactivation_PHLPP	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_Akt_Feedback_Deactivation_PHLPP_Kcat=0.1;
	% Local Parameter:   id =  km, name = km
	reaction_Akt_Feedback_Deactivation_PHLPP_km=0.1;

	reaction_Akt_Feedback_Deactivation_PHLPP=compartment_compartment_0*HMM_Modified(reaction_Akt_Feedback_Deactivation_PHLPP_Kcat, reaction_Akt_Feedback_Deactivation_PHLPP_km, const_species_PHLPPActive, x(15));

% Reaction: id = Akt_Feedback_Activation_mTORC2, name = Akt_Feedback_Activation_mTORC2	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_Akt_Feedback_Activation_mTORC2_Kcat=0.1;
	% Local Parameter:   id =  km, name = km
	reaction_Akt_Feedback_Activation_mTORC2_km=0.1;

	reaction_Akt_Feedback_Activation_mTORC2=compartment_compartment_0*HMM_Modified(reaction_Akt_Feedback_Activation_mTORC2_Kcat, reaction_Akt_Feedback_Activation_mTORC2_km, x(21), x(16));

% Reaction: id = Akt_Feedback_Activation_TCL1, name = Akt_Feedback_Activation_TCL1	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_Akt_Feedback_Activation_TCL1_Kcat=0.1;
	% Local Parameter:   id =  km, name = km
	reaction_Akt_Feedback_Activation_TCL1_km=0.1;

	reaction_Akt_Feedback_Activation_TCL1=compartment_compartment_0*HMM_Modified(reaction_Akt_Feedback_Activation_TCL1_Kcat, reaction_Akt_Feedback_Activation_TCL1_km, const_species_TCL1Active, x(16));

% Reaction: id = Akt_Feedback_Deactivation_CTMP, name = Akt_Feedback_Deactivation_CTMP	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_Akt_Feedback_Deactivation_CTMP_Kcat=0.1;
	% Local Parameter:   id =  km, name = km
	reaction_Akt_Feedback_Deactivation_CTMP_km=0.1;

	reaction_Akt_Feedback_Deactivation_CTMP=compartment_compartment_0*HMM_Modified(reaction_Akt_Feedback_Deactivation_CTMP_Kcat, reaction_Akt_Feedback_Deactivation_CTMP_km, const_species_CTMPActive, x(15));

% Reaction: id = Erk_Feedback_Deactivation_Raf1, name = Erk_Feedback_Deactivation_Raf1	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_Erk_Feedback_Deactivation_Raf1_Kcat=0.1;
	% Local Parameter:   id =  km, name = km
	reaction_Erk_Feedback_Deactivation_Raf1_km=0.1;

	reaction_Erk_Feedback_Deactivation_Raf1=compartment_compartment_0*HMM_Modified(reaction_Erk_Feedback_Deactivation_Raf1_Kcat, reaction_Erk_Feedback_Deactivation_Raf1_km, x(7), x(11));

% Reaction: id = Sos_Deactivation, name = Sos_Deactivation	% Local Parameter:   id =  k1, name = k1
	reaction_Sos_Deactivation_k1=0.1;

	reaction_Sos_Deactivation=compartment_compartment_0*reaction_Sos_Deactivation_k1*x(3);

% Reaction: id = mTORC1_Activation_Akt, name = mTORC1_Activation_Akt	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_mTORC1_Activation_Akt_Kcat=0.1;
	% Local Parameter:   id =  km, name = km
	reaction_mTORC1_Activation_Akt_km=0.1;

	reaction_mTORC1_Activation_Akt=compartment_compartment_0*HMM_Modified(reaction_mTORC1_Activation_Akt_Kcat, reaction_mTORC1_Activation_Akt_km, x(15), x(23));

% Reaction: id = EGFR_Degradation_Free, name = EGFR_Degradation_Free	% Local Parameter:   id =  k1, name = k1
	reaction_EGFR_Degradation_Free_k1=0.1;

	reaction_EGFR_Degradation_Free=compartment_compartment_0*reaction_EGFR_Degradation_Free_k1*x(2);

% Reaction: id = Sos_Activation_Grb2, name = Sos_Activation_Grb2	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_Sos_Activation_Grb2_Kcat=0.1;
	% Local Parameter:   id =  km, name = km
	reaction_Sos_Activation_Grb2_km=0.1;

	reaction_Sos_Activation_Grb2=compartment_compartment_0*HMM_Modified(reaction_Sos_Activation_Grb2_Kcat, reaction_Sos_Activation_Grb2_km, x(26), x(4));

% Reaction: id = Grb2_Activation_pEGFR, name = Grb2_Activation_pEGFR	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_Grb2_Activation_pEGFR_Kcat=0.1;
	% Local Parameter:   id =  km, name = km
	reaction_Grb2_Activation_pEGFR_km=0.1;

	reaction_Grb2_Activation_pEGFR=compartment_compartment_0*HMM_Modified(reaction_Grb2_Activation_pEGFR_Kcat, reaction_Grb2_Activation_pEGFR_km, x(1), x(27));

% Reaction: id = Grb2_Deactivation, name = Grb2_Deactivation	% Local Parameter:   id =  k1, name = k1
	reaction_Grb2_Deactivation_k1=0.1;

	reaction_Grb2_Deactivation=compartment_compartment_0*reaction_Grb2_Deactivation_k1*x(26);

% Reaction: id = FGFR_Production, name = FGFR_Production	% Local Parameter:   id =  k1, name = k1
	reaction_FGFR_Production_k1=0.1;

	reaction_FGFR_Production=compartment_compartment_0*reaction_FGFR_Production_k1*const_species_proFGFR;

% Reaction: id = FGFR_Degradation_Free, name = FGFR_Degradation_Free	% Local Parameter:   id =  k1, name = k1
	reaction_FGFR_Degradation_Free_k1=0.1;

	reaction_FGFR_Degradation_Free=compartment_compartment_0*reaction_FGFR_Degradation_Free_k1*x(28);

% Reaction: id = FGFR_Degradation, name = FGFR_Degradation	% Local Parameter:   id =  k1, name = k1
	reaction_FGFR_Degradation_k1=0.1;

	reaction_FGFR_Degradation=compartment_compartment_0*reaction_FGFR_Degradation_k1*x(29);

% Reaction: id = Grb2_Activation_pFGFR, name = Grb2_Activation_pFGFR	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_Grb2_Activation_pFGFR_Kcat=0.1;
	% Local Parameter:   id =  km, name = km
	reaction_Grb2_Activation_pFGFR_km=0.1;

	reaction_Grb2_Activation_pFGFR=compartment_compartment_0*HMM_Modified(reaction_Grb2_Activation_pFGFR_Kcat, reaction_Grb2_Activation_pFGFR_km, x(29), x(27));

% Reaction: id = TRADD_TRAF2_TRAF5_RIP1_Activation_pTNFR1, name = TRADD:TRAF2:TRAF5:RIP1_Activation_pTNFR1	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_TRADD_TRAF2_TRAF5_RIP1_Activation_pTNFR1_Kcat=0.1;
	% Local Parameter:   id =  km, name = km
	reaction_TRADD_TRAF2_TRAF5_RIP1_Activation_pTNFR1_km=0.1;

	reaction_TRADD_TRAF2_TRAF5_RIP1_Activation_pTNFR1=compartment_compartment_0*HMM_Modified(reaction_TRADD_TRAF2_TRAF5_RIP1_Activation_pTNFR1_Kcat, reaction_TRADD_TRAF2_TRAF5_RIP1_Activation_pTNFR1_km, x(31), x(35));

% Reaction: id = TRAF1_TRAF2_TRAF3_Activation_pTNFR2, name = TRAF1:TRAF2:TRAF3_Activation_pTNFR2	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_TRAF1_TRAF2_TRAF3_Activation_pTNFR2_Kcat=0.1;
	% Local Parameter:   id =  km, name = km
	reaction_TRAF1_TRAF2_TRAF3_Activation_pTNFR2_km=0.1;

	reaction_TRAF1_TRAF2_TRAF3_Activation_pTNFR2=compartment_compartment_0*HMM_Modified(reaction_TRAF1_TRAF2_TRAF3_Activation_pTNFR2_Kcat, reaction_TRAF1_TRAF2_TRAF3_Activation_pTNFR2_km, x(33), x(37));

% Reaction: id = PI3K_Activation_TRAF1_TRAF2_TRAF3, name = PI3K_Activation_TRAF1:TRAF2:TRAF3	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_PI3K_Activation_TRAF1_TRAF2_TRAF3_Kcat=0.1;
	% Local Parameter:   id =  km, name = km
	reaction_PI3K_Activation_TRAF1_TRAF2_TRAF3_km=0.1;

	reaction_PI3K_Activation_TRAF1_TRAF2_TRAF3=compartment_compartment_0*HMM_Modified(reaction_PI3K_Activation_TRAF1_TRAF2_TRAF3_Kcat, reaction_PI3K_Activation_TRAF1_TRAF2_TRAF3_km, x(36), x(14));

% Reaction: id = NIK_Activation_TRADD_TRAF2_TRAF5_RIP1, name = NIK_Activation_TRADD:TRAF2:TRAF5:RIP1	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_NIK_Activation_TRADD_TRAF2_TRAF5_RIP1_Kcat=0.1;
	% Local Parameter:   id =  km, name = km
	reaction_NIK_Activation_TRADD_TRAF2_TRAF5_RIP1_km=0.1;

	reaction_NIK_Activation_TRADD_TRAF2_TRAF5_RIP1=compartment_compartment_0*HMM_Modified(reaction_NIK_Activation_TRADD_TRAF2_TRAF5_RIP1_Kcat, reaction_NIK_Activation_TRADD_TRAF2_TRAF5_RIP1_km, x(34), x(39));

% Reaction: id = TAB1_TAB2_TAB3_TAK1_Activation_TRADD_TRAF2_TRAF5_RIP1, name = TAB1:TAB2:TAB3:TAK1_Activation_TRADD:TRAF2:TRAF5:RIP1	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_TAB1_TAB2_TAB3_TAK1_Activation_TRADD_TRAF2_TRAF5_RIP1_Kcat=0.1;
	% Local Parameter:   id =  km, name = km
	reaction_TAB1_TAB2_TAB3_TAK1_Activation_TRADD_TRAF2_TRAF5_RIP1_km=0.1;

	reaction_TAB1_TAB2_TAB3_TAK1_Activation_TRADD_TRAF2_TRAF5_RIP1=compartment_compartment_0*HMM_Modified(reaction_TAB1_TAB2_TAB3_TAK1_Activation_TRADD_TRAF2_TRAF5_RIP1_Kcat, reaction_TAB1_TAB2_TAB3_TAK1_Activation_TRADD_TRAF2_TRAF5_RIP1_km, x(34), x(43));

% Reaction: id = IKKbeta_IKKalfa_IKKgamma_Activation_TRADD_TRAF2_TRAF5_RIP1, name = IKKbeta:IKKalfa:IKKgamma_Activation_TRADD:TRAF2:TRAF5:RIP1	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_IKKbeta_IKKalfa_IKKgamma_Activation_TRADD_TRAF2_TRAF5_RIP1_Kcat=0.1;
	% Local Parameter:   id =  km, name = km
	reaction_IKKbeta_IKKalfa_IKKgamma_Activation_TRADD_TRAF2_TRAF5_RIP1_km=0.1;

	reaction_IKKbeta_IKKalfa_IKKgamma_Activation_TRADD_TRAF2_TRAF5_RIP1=compartment_compartment_0*HMM_Modified(reaction_IKKbeta_IKKalfa_IKKgamma_Activation_TRADD_TRAF2_TRAF5_RIP1_Kcat, reaction_IKKbeta_IKKalfa_IKKgamma_Activation_TRADD_TRAF2_TRAF5_RIP1_km, x(34), x(41));

% Reaction: id = IKKbeta_IKKalfa_IKKgamma_Activation_NIK, name = IKKbeta:IKKalfa:IKKgamma_Activation_NIK	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_IKKbeta_IKKalfa_IKKgamma_Activation_NIK_Kcat=0.1;
	% Local Parameter:   id =  km, name = km
	reaction_IKKbeta_IKKalfa_IKKgamma_Activation_NIK_km=0.1;

	reaction_IKKbeta_IKKalfa_IKKgamma_Activation_NIK=compartment_compartment_0*HMM_Modified(reaction_IKKbeta_IKKalfa_IKKgamma_Activation_NIK_Kcat, reaction_IKKbeta_IKKalfa_IKKgamma_Activation_NIK_km, x(38), x(41));

% Reaction: id = IKKbeta_IKKalfa_IKKgamma_Activation_TAB1_TAB2_TAB3_TAK1, name = IKKbeta:IKKalfa:IKKgamma_Activation_TAB1:TAB2:TAB3:TAK1	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_IKKbeta_IKKalfa_IKKgamma_Activation_TAB1_TAB2_TAB3_TAK1_Kcat=0.1;
	% Local Parameter:   id =  km, name = km
	reaction_IKKbeta_IKKalfa_IKKgamma_Activation_TAB1_TAB2_TAB3_TAK1_km=0.1;

	reaction_IKKbeta_IKKalfa_IKKgamma_Activation_TAB1_TAB2_TAB3_TAK1=compartment_compartment_0*HMM_Modified(reaction_IKKbeta_IKKalfa_IKKgamma_Activation_TAB1_TAB2_TAB3_TAK1_Kcat, reaction_IKKbeta_IKKalfa_IKKgamma_Activation_TAB1_TAB2_TAB3_TAK1_km, x(42), x(41));

% Reaction: id = Tpl2_NF_kB_Activation_IKKbeta_IKKalfa, name = MAP3K8:NF-kB_Activation_IKKbeta:IKKalfa	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_Tpl2_NF_kB_Activation_IKKbeta_IKKalfa_Kcat=0.1;
	% Local Parameter:   id =  km, name = km
	reaction_Tpl2_NF_kB_Activation_IKKbeta_IKKalfa_km=0.1;

	reaction_Tpl2_NF_kB_Activation_IKKbeta_IKKalfa=compartment_compartment_0*HMM_Modified(reaction_Tpl2_NF_kB_Activation_IKKbeta_IKKalfa_Kcat, reaction_Tpl2_NF_kB_Activation_IKKbeta_IKKalfa_km, x(40), x(45));

% Reaction: id = Mek_Activation__Tpl2_NF_kB, name = Mek_Activation_MAP3K8:NF-kB	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_Mek_Activation__Tpl2_NF_kB_Kcat=0.1;
	% Local Parameter:   id =  km, name = km
	reaction_Mek_Activation__Tpl2_NF_kB_km=0.1;

	reaction_Mek_Activation__Tpl2_NF_kB=compartment_compartment_0*HMM_Modified(reaction_Mek_Activation__Tpl2_NF_kB_Kcat, reaction_Mek_Activation__Tpl2_NF_kB_km, x(44), x(10));

% Reaction: id = TNFR1_Production, name = TNFR1_Production	% Local Parameter:   id =  k1, name = k1
	reaction_TNFR1_Production_k1=0.1;

	reaction_TNFR1_Production=compartment_compartment_0*reaction_TNFR1_Production_k1*const_species_proTNFR1;

% Reaction: id = TNFR2_Production, name = TNFR2_Production	% Local Parameter:   id =  k1, name = k1
	reaction_TNFR2_Production_k1=0.1;

	reaction_TNFR2_Production=compartment_compartment_0*reaction_TNFR2_Production_k1*const_species_proTNFR2;

% Reaction: id = TNFR1_Degradation_Free, name = TNFR1_Degradation_Free	% Local Parameter:   id =  k1, name = k1
	reaction_TNFR1_Degradation_Free_k1=0.1;

	reaction_TNFR1_Degradation_Free=compartment_compartment_0*reaction_TNFR1_Degradation_Free_k1*x(30);

% Reaction: id = TNFR2_Degradation_Free, name = TNFR2_Degradation_Free	% Local Parameter:   id =  k1, name = k1
	reaction_TNFR2_Degradation_Free_k1=0.1;

	reaction_TNFR2_Degradation_Free=compartment_compartment_0*reaction_TNFR2_Degradation_Free_k1*x(32);

% Reaction: id = TNFR1_Degradation, name = TNFR1_Degradation	% Local Parameter:   id =  k1, name = k1
	reaction_TNFR1_Degradation_k1=0.1;

	reaction_TNFR1_Degradation=compartment_compartment_0*reaction_TNFR1_Degradation_k1*x(31);

% Reaction: id = TNFR2_Degradation, name = TNFR2_Degradation	% Local Parameter:   id =  k1, name = k1
	reaction_TNFR2_Degradation_k1=0.1;

	reaction_TNFR2_Degradation=compartment_compartment_0*reaction_TNFR2_Degradation_k1*x(33);

% Reaction: id = IKKbeta_IKKalfa_IKKgamma_Deactivation, name = IKKbeta:IKKalfa:IKKgamma_Deactivation	% Local Parameter:   id =  k1, name = k1
	reaction_IKKbeta_IKKalfa_IKKgamma_Deactivation_k1=0.1;

	reaction_IKKbeta_IKKalfa_IKKgamma_Deactivation=compartment_compartment_0*reaction_IKKbeta_IKKalfa_IKKgamma_Deactivation_k1*x(40);

% Reaction: id = Mek_Deactivation, name = Mek_Deactivation	% Local Parameter:   id =  k1, name = k1
	reaction_Mek_Deactivation_k1=0.1;

	reaction_Mek_Deactivation=compartment_compartment_0*reaction_Mek_Deactivation_k1*x(9);

% Reaction: id = mTORC1_Deactivation, name = mTORC1_Deactivation	% Local Parameter:   id =  k1, name = k1
	reaction_mTORC1_Deactivation_k1=0.1;

	reaction_mTORC1_Deactivation=compartment_compartment_0*reaction_mTORC1_Deactivation_k1*x(22);

% Reaction: id = NIK_Deactivation, name = NIK_Deactivation	% Local Parameter:   id =  k1, name = k1
	reaction_NIK_Deactivation_k1=0.1;

	reaction_NIK_Deactivation=compartment_compartment_0*reaction_NIK_Deactivation_k1*x(38);

% Reaction: id = Ras_Deactivation, name = Ras_Deactivation	% Local Parameter:   id =  k1, name = k1
	reaction_Ras_Deactivation_k1=0.1;

	reaction_Ras_Deactivation=compartment_compartment_0*reaction_Ras_Deactivation_k1*x(5);

% Reaction: id = TAB1_TAB2_TAB3_TAK1_Deactivation, name = TAB1:TAB2:TAB3:TAK1_Deactivation	% Local Parameter:   id =  k1, name = k1
	reaction_TAB1_TAB2_TAB3_TAK1_Deactivation_k1=0.1;

	reaction_TAB1_TAB2_TAB3_TAK1_Deactivation=compartment_compartment_0*reaction_TAB1_TAB2_TAB3_TAK1_Deactivation_k1*x(42);

% Reaction: id = Tpl2_NF_kB_Deactivation, name = MAP3K8:NF-kB_Deactivation	% Local Parameter:   id =  k1, name = k1
	reaction_Tpl2_NF_kB_Deactivation_k1=0.1;

	reaction_Tpl2_NF_kB_Deactivation=compartment_compartment_0*reaction_Tpl2_NF_kB_Deactivation_k1*x(44);

% Reaction: id = TRADD_TRAF2_TRAF5_RIP1_Deactivation, name = TRADD:TRAF2:TRAF5:RIP1_Deactivation	% Local Parameter:   id =  k1, name = k1
	reaction_TRADD_TRAF2_TRAF5_RIP1_Deactivation_k1=0.1;

	reaction_TRADD_TRAF2_TRAF5_RIP1_Deactivation=compartment_compartment_0*reaction_TRADD_TRAF2_TRAF5_RIP1_Deactivation_k1*x(34);

% Reaction: id = TRAF1_TRAF2_TRAF3_Deactivation, name = TRAF1:TRAF2:TRAF3_Deactivation	% Local Parameter:   id =  k1, name = k1
	reaction_TRAF1_TRAF2_TRAF3_Deactivation_k1=0.1;

	reaction_TRAF1_TRAF2_TRAF3_Deactivation=compartment_compartment_0*reaction_TRAF1_TRAF2_TRAF3_Deactivation_k1*x(36);

% Reaction: id = TRADDComplex_Activation_bRafINH, name = TRADDComplex_Activation_bRafINH	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_TRADDComplex_Activation_bRafINH_Kcat=0.1;
	% Local Parameter:   id =  km, name = km
	reaction_TRADDComplex_Activation_bRafINH_km=0.1;

	reaction_TRADDComplex_Activation_bRafINH=compartment_compartment_0*HMM_Modified(reaction_TRADDComplex_Activation_bRafINH_Kcat, reaction_TRADDComplex_Activation_bRafINH_km, x(35), x(48));

% Reaction: id = TABComplex_Activation_bRafINH, name = TABComplex_Activation_bRafINH	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_TABComplex_Activation_bRafINH_Kcat=0.1;
	% Local Parameter:   id =  km, name = km
	reaction_TABComplex_Activation_bRafINH_km=0.1;

	reaction_TABComplex_Activation_bRafINH=compartment_compartment_0*HMM_Modified(reaction_TABComplex_Activation_bRafINH_Kcat, reaction_TABComplex_Activation_bRafINH_km, x(43), x(49));

% Reaction: id = NIK_Activation_bRafINH, name = NIK_Activation_bRafINH	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_NIK_Activation_bRafINH_Kcat=0.1;
	% Local Parameter:   id =  km, name = km
	reaction_NIK_Activation_bRafINH_km=0.1;

	reaction_NIK_Activation_bRafINH=compartment_compartment_0*HMM_Modified(reaction_NIK_Activation_bRafINH_Kcat, reaction_NIK_Activation_bRafINH_km, x(39), x(52));

% Reaction: id = IKKComplex_Activation_bRafINH, name = IKKComplex_Activation_bRafINH	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_IKKComplex_Activation_bRafINH_Kcat=0.1;
	% Local Parameter:   id =  km, name = km
	reaction_IKKComplex_Activation_bRafINH_km=0.1;

	reaction_IKKComplex_Activation_bRafINH=compartment_compartment_0*HMM_Modified(reaction_IKKComplex_Activation_bRafINH_Kcat, reaction_IKKComplex_Activation_bRafINH_km, x(41), x(54));

% Reaction: id = Tpl2Complex_Activation_bRafINH, name = MAP3K8Complex_Activation_bRafINH	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_Tpl2Complex_Activation_bRafINH_Kcat=0.1;
	% Local Parameter:   id =  km, name = km
	reaction_Tpl2Complex_Activation_bRafINH_km=0.1;

	reaction_Tpl2Complex_Activation_bRafINH=compartment_compartment_0*HMM_Modified(reaction_Tpl2Complex_Activation_bRafINH_Kcat, reaction_Tpl2Complex_Activation_bRafINH_km, x(45), x(56));

% Reaction: id = TRAFComplex_Activation_bRafINH, name = TRAFComplex_Activation_bRafINH	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_TRAFComplex_Activation_bRafINH_Kcat=0.1;
	% Local Parameter:   id =  km, name = km
	reaction_TRAFComplex_Activation_bRafINH_km=0.1;

	reaction_TRAFComplex_Activation_bRafINH=compartment_compartment_0*HMM_Modified(reaction_TRAFComplex_Activation_bRafINH_Kcat, reaction_TRAFComplex_Activation_bRafINH_km, x(37), x(58));

% Reaction: id = PLX4032_degradation, name = PLX4032_degradation	% Local Parameter:   id =  k1, name = k1
	reaction_PLX4032_degradation_k1=3.3779E-6;

	reaction_PLX4032_degradation=compartment_compartment_0*reaction_PLX4032_degradation_k1*x(25);

% Reaction: id = bRafMutated_Deactivation_PLX4032, name = bRafMutated_Deactivation_PLX4032	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_bRafMutated_Deactivation_PLX4032_Kcat=0.1;
	% Local Parameter:   id =  km, name = km
	reaction_bRafMutated_Deactivation_PLX4032_km=0.1;

	reaction_bRafMutated_Deactivation_PLX4032=compartment_compartment_0*HMM_Modified(reaction_bRafMutated_Deactivation_PLX4032_Kcat, reaction_bRafMutated_Deactivation_PLX4032_km, x(25), x(24));

% Reaction: id = bRafMutated_Reconstitution, name = bRafMutated_Activation	% Local Parameter:   id =  k1, name = k1
	reaction_bRafMutated_Reconstitution_k1=0.1;

	reaction_bRafMutated_Reconstitution=compartment_compartment_0*reaction_bRafMutated_Reconstitution_k1*x(46);

% Reaction: id = Tpl2Complex_Activation_RasINH, name = MAP3K8Complex_Activation_RasINH	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_Tpl2Complex_Activation_RasINH_Kcat=0.1;
	% Local Parameter:   id =  km, name = km
	reaction_Tpl2Complex_Activation_RasINH_km=0.1;

	reaction_Tpl2Complex_Activation_RasINH=compartment_compartment_0*HMM_Modified(reaction_Tpl2Complex_Activation_RasINH_Kcat, reaction_Tpl2Complex_Activation_RasINH_km, x(45), x(60));

% Reaction: id = mTORC2_Deactivation_bRafMutated, name = mTORC2_Deactivation_bRafMutated	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_mTORC2_Deactivation_bRafMutated_Kcat=0.1;
	% Local Parameter:   id =  km, name = km
	reaction_mTORC2_Deactivation_bRafMutated_km=0.1;

	reaction_mTORC2_Deactivation_bRafMutated=compartment_compartment_0*HMM_Modified(reaction_mTORC2_Deactivation_bRafMutated_Kcat, reaction_mTORC2_Deactivation_bRafMutated_km, x(24), x(21));

% Reaction: id = mTORC2_Activation_PI3K, name = mTORC2_Activation_PI3K	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_mTORC2_Activation_PI3K_Kcat=0.1;
	% Local Parameter:   id =  km, name = km
	reaction_mTORC2_Activation_PI3K_km=0.1;

	reaction_mTORC2_Activation_PI3K=compartment_compartment_0*HMM_Modified(reaction_mTORC2_Activation_PI3K_Kcat, reaction_mTORC2_Activation_PI3K_km, x(13), x(61));

% Reaction: id = MAP3K8Complex_pERK_bRafINH, name = MAP3K8Complex_pERK_bRafINH	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_MAP3K8Complex_pERK_bRafINH_Kcat=0.1;
	% Local Parameter:   id =  km, name = km
	reaction_MAP3K8Complex_pERK_bRafINH_km=0.1;

	reaction_MAP3K8Complex_pERK_bRafINH=compartment_compartment_0*HMM_Modified_Inverted(x(24), reaction_MAP3K8Complex_pERK_bRafINH_Kcat, x(55), reaction_MAP3K8Complex_pERK_bRafINH_km);

% Reaction: id = TRADDComplex_pERK_bRafINH, name = TRADDComplex_pERK_bRafINH	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_TRADDComplex_pERK_bRafINH_Kcat=0.1;
	% Local Parameter:   id =  km, name = km
	reaction_TRADDComplex_pERK_bRafINH_km=0.1;

	reaction_TRADDComplex_pERK_bRafINH=compartment_compartment_0*HMM_Modified_Inverted(x(24), reaction_TRADDComplex_pERK_bRafINH_Kcat, x(47), reaction_TRADDComplex_pERK_bRafINH_km);

% Reaction: id = IKKComplex_pERK_bRafINH, name = IKKComplex_pERK_bRafINH	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_IKKComplex_pERK_bRafINH_Kcat=0.1;
	% Local Parameter:   id =  km, name = km
	reaction_IKKComplex_pERK_bRafINH_km=0.1;

	reaction_IKKComplex_pERK_bRafINH=compartment_compartment_0*HMM_Modified_Inverted(x(24), reaction_IKKComplex_pERK_bRafINH_Kcat, x(53), reaction_IKKComplex_pERK_bRafINH_km);

% Reaction: id = NIK_pERK_bRafINH, name = NIK_pERK_bRafINH	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_NIK_pERK_bRafINH_Kcat=0.1;
	% Local Parameter:   id =  km, name = km
	reaction_NIK_pERK_bRafINH_km=0.1;

	reaction_NIK_pERK_bRafINH=compartment_compartment_0*HMM_Modified_Inverted(x(24), reaction_NIK_pERK_bRafINH_Kcat, x(51), reaction_NIK_pERK_bRafINH_km);

% Reaction: id = TABComplex_pERK_bRafINH, name = TABComplex_pERK_bRafINH	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_TABComplex_pERK_bRafINH_Kcat=0.1;
	% Local Parameter:   id =  km, name = km
	reaction_TABComplex_pERK_bRafINH_km=0.1;

	reaction_TABComplex_pERK_bRafINH=compartment_compartment_0*HMM_Modified_Inverted(x(24), reaction_TABComplex_pERK_bRafINH_Kcat, x(50), reaction_TABComplex_pERK_bRafINH_km);

% Reaction: id = EGF_Binding_Unbinding__forward, name = EGF_Binding_Unbinding (forward)	% Local Parameter:   id =  k1, name = k1
	reaction_EGF_Binding_Unbinding__forward_k1=0.1;

	reaction_EGF_Binding_Unbinding__forward=compartment_compartment_0*reaction_EGF_Binding_Unbinding__forward_k1*const_species_species_25*x(2);

% Reaction: id = EGF_Binding_Unbinding__backward, name = EGF_Binding_Unbinding (backward)	% Local Parameter:   id =  k1, name = k1
	reaction_EGF_Binding_Unbinding__backward_k1=0.1;

	reaction_EGF_Binding_Unbinding__backward=compartment_compartment_0*reaction_EGF_Binding_Unbinding__backward_k1*x(1);

% Reaction: id = FGF_Binding_Unbinding__forward, name = FGF_Binding_Unbinding (forward)	% Local Parameter:   id =  k1, name = k1
	reaction_FGF_Binding_Unbinding__forward_k1=0.1;

	reaction_FGF_Binding_Unbinding__forward=compartment_compartment_0*reaction_FGF_Binding_Unbinding__forward_k1*const_species_FGF*x(28);

% Reaction: id = FGF_Binding_Unbinding__backward, name = FGF_Binding_Unbinding (backward)	% Local Parameter:   id =  k1, name = k1
	reaction_FGF_Binding_Unbinding__backward_k1=0.1;

	reaction_FGF_Binding_Unbinding__backward=compartment_compartment_0*reaction_FGF_Binding_Unbinding__backward_k1*x(29);

% Reaction: id = TNF_Binding_Unbinding_TNFR1__forward, name = TNF_Binding_Unbinding_TNFR1 (forward)	% Local Parameter:   id =  k1, name = k1
	reaction_TNF_Binding_Unbinding_TNFR1__forward_k1=0.1;

	reaction_TNF_Binding_Unbinding_TNFR1__forward=compartment_compartment_0*reaction_TNF_Binding_Unbinding_TNFR1__forward_k1*const_species_TNF*x(30);

% Reaction: id = TNF_Binding_Unbinding_TNFR1__backward, name = TNF_Binding_Unbinding_TNFR1 (backward)	% Local Parameter:   id =  k1, name = k1
	reaction_TNF_Binding_Unbinding_TNFR1__backward_k1=0.1;

	reaction_TNF_Binding_Unbinding_TNFR1__backward=compartment_compartment_0*reaction_TNF_Binding_Unbinding_TNFR1__backward_k1*x(31);

% Reaction: id = TNF_Binding_Unbinding_TNFR2__forward, name = TNF_Binding_Unbinding_TNFR2 (forward)	% Local Parameter:   id =  k1, name = k1
	reaction_TNF_Binding_Unbinding_TNFR2__forward_k1=0.1;

	reaction_TNF_Binding_Unbinding_TNFR2__forward=compartment_compartment_0*reaction_TNF_Binding_Unbinding_TNFR2__forward_k1*const_species_TNF*x(32);

% Reaction: id = TNF_Binding_Unbinding_TNFR2__backward, name = TNF_Binding_Unbinding_TNFR2 (backward)	% Local Parameter:   id =  k1, name = k1
	reaction_TNF_Binding_Unbinding_TNFR2__backward_k1=0.1;

	reaction_TNF_Binding_Unbinding_TNFR2__backward=compartment_compartment_0*reaction_TNF_Binding_Unbinding_TNFR2__backward_k1*x(33);

% Reaction: id = MAP3K8_NF_kB_Deactivation_MAP3K8_inhibitor, name = MAP3K8:NF-kB_Deactivation_MAP3K8_inhibitor	% Local Parameter:   id =  k1, name = k1
	reaction_MAP3K8_NF_kB_Deactivation_MAP3K8_inhibitor_k1=0.015;

	reaction_MAP3K8_NF_kB_Deactivation_MAP3K8_inhibitor=compartment_compartment_0*reaction_MAP3K8_NF_kB_Deactivation_MAP3K8_inhibitor_k1*x(45)*x(62);

% Species:   id = species_25, name = EGF, constant	const_species_species_25=10000.0;

% Species:   id = species_30, name = pro_EGFR, constant	const_species_species_30=5.0;

% Species:   id = PTENActive, name = PTEN_Active, constant	const_species_PTENActive=10.0;

% Species:   id = HSP90_Cdc37Active, name = HSP90-Cdc37_Active, constant	const_species_HSP90_Cdc37Active=10.0;

% Species:   id = PHLPPActive, name = PHLPP_Active, constant	const_species_PHLPPActive=10.0;

% Species:   id = TCL1Active, name = TCL1_Active, constant	const_species_TCL1Active=10.0;

% Species:   id = CTMPActive, name = CTMP_Active, constant	const_species_CTMPActive=10.0;

% Species:   id = FGF, name = FGF, constant	const_species_FGF=10000.0;

% Species:   id = proFGFR, name = pro_FGFR, constant	const_species_proFGFR=5.0;

% Species:   id = TNF, name = TNF, constant	const_species_TNF=10000.0;

% Species:   id = proTNFR1, name = pro_TNFR1, constant	const_species_proTNFR1=5.0;

% Species:   id = proTNFR2, name = pro_TNFR2, constant	const_species_proTNFR2=5.0;

	xdot=zeros(63,1);
	
% Species:   id = species_0, name = pEGFR, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_20) + ( 1.0 * reaction_EGF_Binding_Unbinding__forward) + (-1.0 * reaction_EGF_Binding_Unbinding__backward));
	
% Species:   id = species_1, name = free_EGFR, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_28) + (-1.0 * reaction_EGFR_Degradation_Free) + (-1.0 * reaction_EGF_Binding_Unbinding__forward) + ( 1.0 * reaction_EGF_Binding_Unbinding__backward));
	
% Species:   id = species_2, name = Sos_Active, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment_0))*((-1.0 * reaction_Sos_Deactivation) + ( 1.0 * reaction_Sos_Activation_Grb2));
	
% Species:   id = species_3, name = Sos_Inactive, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment_0))*(( 1.0 * reaction_Sos_Deactivation) + (-1.0 * reaction_Sos_Activation_Grb2));
	
% Species:   id = species_4, name = Ras_Active, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_3) + (-1.0 * reaction_Ras_Deactivation));
	
% Species:   id = species_5, name = Ras_Inactive, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_3) + ( 1.0 * reaction_Ras_Deactivation));
	
% Species:   id = species_6, name = Raf1_Active, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_5) + (-1.0 * reaction_reaction_19));
	
% Species:   id = species_7, name = Raf1_Inactive, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_5) + ( 1.0 * reaction_reaction_19));
	
% Species:   id = species_8, name = Mek_Active, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_7) + ( 1.0 * reaction_reaction_27) + ( 1.0 * reaction_Mek_Activation__Tpl2_NF_kB) + (-1.0 * reaction_Mek_Deactivation));
	
% Species:   id = species_9, name = Mek_Inactive, affected by kineticLaw
	xdot(10) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_7) + (-1.0 * reaction_reaction_27) + (-1.0 * reaction_Mek_Activation__Tpl2_NF_kB) + ( 1.0 * reaction_Mek_Deactivation));
	
% Species:   id = species_10, name = pERK, affected by kineticLaw
	xdot(11) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_9) + (-1.0 * reaction_Erk_Feedback_Deactivation_Raf1) + ( 1.0 * reaction_MAP3K8Complex_pERK_bRafINH) + ( 1.0 * reaction_TRADDComplex_pERK_bRafINH) + ( 1.0 * reaction_IKKComplex_pERK_bRafINH) + ( 1.0 * reaction_NIK_pERK_bRafINH) + ( 1.0 * reaction_TABComplex_pERK_bRafINH));
	
% Species:   id = species_11, name = ERK, affected by kineticLaw
	xdot(12) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_9) + ( 1.0 * reaction_Erk_Feedback_Deactivation_Raf1));
	
% Species:   id = species_14, name = PI3K_Active, affected by kineticLaw
	xdot(13) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_14) + ( 1.0 * reaction_reaction_15) + (-1.0 * reaction_reaction_16) + ( 1.0 * reaction_PI3K_Activation_TRAF1_TRAF2_TRAF3));
	
% Species:   id = species_15, name = PI3K_Inactive, affected by kineticLaw
	xdot(14) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_14) + (-1.0 * reaction_reaction_15) + ( 1.0 * reaction_reaction_16) + (-1.0 * reaction_PI3K_Activation_TRAF1_TRAF2_TRAF3));
	
% Species:   id = species_16, name = pAKT, affected by kineticLaw
	xdot(15) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_17) + ( 1.0 * reaction_Akt_Activation_PIP3) + ( 1.0 * reaction_Akt_Activation_PDK1) + ( 1.0 * reaction_Akt_Feedback_Activation_HSP90_Cdc37) + (-1.0 * reaction_Akt_Feedback_Deactivation_PHLPP) + ( 1.0 * reaction_Akt_Feedback_Activation_mTORC2) + ( 1.0 * reaction_Akt_Feedback_Activation_TCL1) + (-1.0 * reaction_Akt_Feedback_Deactivation_CTMP));
	
% Species:   id = species_17, name = AKT, affected by kineticLaw
	xdot(16) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_17) + (-1.0 * reaction_Akt_Activation_PIP3) + (-1.0 * reaction_Akt_Activation_PDK1) + (-1.0 * reaction_Akt_Feedback_Activation_HSP90_Cdc37) + ( 1.0 * reaction_Akt_Feedback_Deactivation_PHLPP) + (-1.0 * reaction_Akt_Feedback_Activation_mTORC2) + (-1.0 * reaction_Akt_Feedback_Activation_TCL1) + ( 1.0 * reaction_Akt_Feedback_Deactivation_CTMP));
	
% Species:   id = PIP3Active, name = PIP3, affected by kineticLaw
	xdot(17) = (1/(compartment_compartment_0))*(( 1.0 * reaction_PIP3_Activation_PIP3) + (-1.0 * reaction_PIP3_Feedback_Deactivation_PTEN));
	
% Species:   id = PIP3Inactive, name = PIP2, affected by kineticLaw
	xdot(18) = (1/(compartment_compartment_0))*((-1.0 * reaction_PIP3_Activation_PIP3) + ( 1.0 * reaction_PIP3_Feedback_Deactivation_PTEN));
	
% Species:   id = PDK1Inactive, name = PDK1_Inactive, affected by kineticLaw
	xdot(19) = (1/(compartment_compartment_0))*((-1.0 * reaction_PDK1_Activation) + ( 1.0 * reaction_PDK1_Deactivation));
	
% Species:   id = PDK1Active, name = PDK1_Active, affected by kineticLaw
	xdot(20) = (1/(compartment_compartment_0))*(( 1.0 * reaction_PDK1_Activation) + (-1.0 * reaction_PDK1_Deactivation));
	
% Species:   id = mTORC2Active, name = mTORC2_Active, affected by kineticLaw
	xdot(21) = (1/(compartment_compartment_0))*((-1.0 * reaction_mTORC2_Deactivation_bRafMutated) + ( 1.0 * reaction_mTORC2_Activation_PI3K));
	
% Species:   id = mTORC1Active, name = mTORC1_Active, affected by kineticLaw
	xdot(22) = (1/(compartment_compartment_0))*(( 1.0 * reaction_mTORC1_Activation_Akt) + (-1.0 * reaction_mTORC1_Deactivation));
	
% Species:   id = mTORC1Inactive, name = mTORC1_Inactive, affected by kineticLaw
	xdot(23) = (1/(compartment_compartment_0))*((-1.0 * reaction_mTORC1_Activation_Akt) + ( 1.0 * reaction_mTORC1_Deactivation));
	
% Species:   id = bRafMutated, name = bRaf_Mutated, affected by kineticLaw
	xdot(24) = (1/(compartment_compartment_0))*((-1.0 * reaction_bRafMutated_Deactivation_PLX4032) + ( 1.0 * reaction_bRafMutated_Reconstitution));
	
% Species:   id = PLX4032, name = PLX4032, affected by kineticLaw
	xdot(25) = (1/(compartment_compartment_0))*((-1.0 * reaction_PLX4032_degradation));
	
% Species:   id = Grb2Active, name = Grb2_Active, affected by kineticLaw
	xdot(26) = (1/(compartment_compartment_0))*(( 1.0 * reaction_Grb2_Activation_pEGFR) + (-1.0 * reaction_Grb2_Deactivation) + ( 1.0 * reaction_Grb2_Activation_pFGFR));
	
% Species:   id = Grb2Inactive, name = Grb2_Inactive, affected by kineticLaw
	xdot(27) = (1/(compartment_compartment_0))*((-1.0 * reaction_Grb2_Activation_pEGFR) + ( 1.0 * reaction_Grb2_Deactivation) + (-1.0 * reaction_Grb2_Activation_pFGFR));
	
% Species:   id = freeFGFR, name = free_FGFR, affected by kineticLaw
	xdot(28) = (1/(compartment_compartment_0))*(( 1.0 * reaction_FGFR_Production) + (-1.0 * reaction_FGFR_Degradation_Free) + (-1.0 * reaction_FGF_Binding_Unbinding__forward) + ( 1.0 * reaction_FGF_Binding_Unbinding__backward));
	
% Species:   id = pFGFR, name = pFGFR, affected by kineticLaw
	xdot(29) = (1/(compartment_compartment_0))*((-1.0 * reaction_FGFR_Degradation) + ( 1.0 * reaction_FGF_Binding_Unbinding__forward) + (-1.0 * reaction_FGF_Binding_Unbinding__backward));
	
% Species:   id = freeTNFR1, name = free_TNFR1, affected by kineticLaw
	xdot(30) = (1/(compartment_compartment_0))*(( 1.0 * reaction_TNFR1_Production) + (-1.0 * reaction_TNFR1_Degradation_Free) + (-1.0 * reaction_TNF_Binding_Unbinding_TNFR1__forward) + ( 1.0 * reaction_TNF_Binding_Unbinding_TNFR1__backward));
	
% Species:   id = pTNFR1, name = pTNFR1, affected by kineticLaw
	xdot(31) = (1/(compartment_compartment_0))*((-1.0 * reaction_TNFR1_Degradation) + ( 1.0 * reaction_TNF_Binding_Unbinding_TNFR1__forward) + (-1.0 * reaction_TNF_Binding_Unbinding_TNFR1__backward));
	
% Species:   id = freeTNFR2, name = free_TNFR2, affected by kineticLaw
	xdot(32) = (1/(compartment_compartment_0))*(( 1.0 * reaction_TNFR2_Production) + (-1.0 * reaction_TNFR2_Degradation_Free) + (-1.0 * reaction_TNF_Binding_Unbinding_TNFR2__forward) + ( 1.0 * reaction_TNF_Binding_Unbinding_TNFR2__backward));
	
% Species:   id = pTNFR2, name = pTNFR2, affected by kineticLaw
	xdot(33) = (1/(compartment_compartment_0))*((-1.0 * reaction_TNFR2_Degradation) + ( 1.0 * reaction_TNF_Binding_Unbinding_TNFR2__forward) + (-1.0 * reaction_TNF_Binding_Unbinding_TNFR2__backward));
	
% Species:   id = TRADD_TRAF2_TRAF5_RIP1_Active, name = TRADD:TRAF2:TRAF5:RIP1_Active, affected by kineticLaw
	xdot(34) = (1/(compartment_compartment_0))*(( 1.0 * reaction_TRADD_TRAF2_TRAF5_RIP1_Activation_pTNFR1) + (-1.0 * reaction_TRADD_TRAF2_TRAF5_RIP1_Deactivation));
	
% Species:   id = TRADD_TRAF2_TRAF5_RIP1_Inactive, name = TRADD:TRAF2:TRAF5:RIP1_Inactive, affected by kineticLaw
	xdot(35) = (1/(compartment_compartment_0))*((-1.0 * reaction_TRADD_TRAF2_TRAF5_RIP1_Activation_pTNFR1) + ( 1.0 * reaction_TRADD_TRAF2_TRAF5_RIP1_Deactivation));
	
% Species:   id = TRAF1_TRAF2_TRAF3_Active, name = TRAF1:TRAF2:TRAF3_Active, affected by kineticLaw
	xdot(36) = (1/(compartment_compartment_0))*(( 1.0 * reaction_TRAF1_TRAF2_TRAF3_Activation_pTNFR2) + (-1.0 * reaction_TRAF1_TRAF2_TRAF3_Deactivation));
	
% Species:   id = TRAF1_TRAF2_TRAF3_Inactive, name = TRAF1:TRAF2:TRAF3_Inactive, affected by kineticLaw
	xdot(37) = (1/(compartment_compartment_0))*((-1.0 * reaction_TRAF1_TRAF2_TRAF3_Activation_pTNFR2) + ( 1.0 * reaction_TRAF1_TRAF2_TRAF3_Deactivation));
	
% Species:   id = NIKActive, name = NIK_Active, affected by kineticLaw
	xdot(38) = (1/(compartment_compartment_0))*(( 1.0 * reaction_NIK_Activation_TRADD_TRAF2_TRAF5_RIP1) + (-1.0 * reaction_NIK_Deactivation));
	
% Species:   id = NIKInactive, name = NIK_Inactive, affected by kineticLaw
	xdot(39) = (1/(compartment_compartment_0))*((-1.0 * reaction_NIK_Activation_TRADD_TRAF2_TRAF5_RIP1) + ( 1.0 * reaction_NIK_Deactivation));
	
% Species:   id = IKKbeta_IKKalfa_IKKgamma_Active, name = IKKbeta:IKKalfa:IKKgamma_Active, affected by kineticLaw
	xdot(40) = (1/(compartment_compartment_0))*(( 1.0 * reaction_IKKbeta_IKKalfa_IKKgamma_Activation_TRADD_TRAF2_TRAF5_RIP1) + ( 1.0 * reaction_IKKbeta_IKKalfa_IKKgamma_Activation_NIK) + ( 1.0 * reaction_IKKbeta_IKKalfa_IKKgamma_Activation_TAB1_TAB2_TAB3_TAK1) + (-1.0 * reaction_IKKbeta_IKKalfa_IKKgamma_Deactivation));
	
% Species:   id = IKKbeta_IKKalfa_IKKgamma_Inactive, name = IKKbeta:IKKalfa:IKKgamma_Inactive, affected by kineticLaw
	xdot(41) = (1/(compartment_compartment_0))*((-1.0 * reaction_IKKbeta_IKKalfa_IKKgamma_Activation_TRADD_TRAF2_TRAF5_RIP1) + (-1.0 * reaction_IKKbeta_IKKalfa_IKKgamma_Activation_NIK) + (-1.0 * reaction_IKKbeta_IKKalfa_IKKgamma_Activation_TAB1_TAB2_TAB3_TAK1) + ( 1.0 * reaction_IKKbeta_IKKalfa_IKKgamma_Deactivation));
	
% Species:   id = TAB1_TAB2_TAB3_TAK1_Active, name = TAB1:TAB2:TAB3:TAK1_Active, affected by kineticLaw
	xdot(42) = (1/(compartment_compartment_0))*(( 1.0 * reaction_TAB1_TAB2_TAB3_TAK1_Activation_TRADD_TRAF2_TRAF5_RIP1) + (-1.0 * reaction_TAB1_TAB2_TAB3_TAK1_Deactivation));
	
% Species:   id = TAB1_TAB2_TAB3_TAK1_Inactive, name = TAB1:TAB2:TAB3:TAK1_Inactive, affected by kineticLaw
	xdot(43) = (1/(compartment_compartment_0))*((-1.0 * reaction_TAB1_TAB2_TAB3_TAK1_Activation_TRADD_TRAF2_TRAF5_RIP1) + ( 1.0 * reaction_TAB1_TAB2_TAB3_TAK1_Deactivation));
	
% Species:   id = Tpl2_NF_kB_Active, name = MAP3K8:NF-kB_Active, affected by kineticLaw
	xdot(44) = (1/(compartment_compartment_0))*(( 1.0 * reaction_Tpl2_NF_kB_Activation_IKKbeta_IKKalfa) + (-1.0 * reaction_Tpl2_NF_kB_Deactivation));
	
% Species:   id = Tpl2_NF_kB_Inactive, name = MAP3K8:NF-kB_Inactive, affected by kineticLaw
	xdot(45) = (1/(compartment_compartment_0))*((-1.0 * reaction_Tpl2_NF_kB_Activation_IKKbeta_IKKalfa) + ( 1.0 * reaction_Tpl2_NF_kB_Deactivation) + (-1.0 * reaction_MAP3K8_NF_kB_Deactivation_MAP3K8_inhibitor));
	
% Species:   id = bRafMutatedInactive, name = bRaf_Mutated_Inactive, affected by kineticLaw
	xdot(46) = (1/(compartment_compartment_0))*(( 1.0 * reaction_bRafMutated_Deactivation_PLX4032) + (-1.0 * reaction_bRafMutated_Reconstitution));
	
% Species:   id = TRADD_TRAF2_TRAF5_RIP1_bRafINH_Active, name = TRADD:TRAF2:TRAF5:RIP1_bRafINH_Active, affected by kineticLaw
	xdot(47) = (1/(compartment_compartment_0))*(( 1.0 * reaction_TRADDComplex_Activation_bRafINH) + (-1.0 * reaction_TRADDComplex_pERK_bRafINH));
	
% Species:   id = TRADD_TRAF2_TRAF5_RIP1_bRafINH_Inactive, name = TRADD:TRAF2:TRAF5:RIP1_bRafINH_Inactive, affected by kineticLaw
	xdot(48) = (1/(compartment_compartment_0))*((-1.0 * reaction_TRADDComplex_Activation_bRafINH));
	
% Species:   id = TAB1_TAB2_TAB3_TAK1_bRafINH_Inactive, name = TAB1:TAB2:TAB3:TAK1_bRafINH_Inactive, affected by kineticLaw
	xdot(49) = (1/(compartment_compartment_0))*((-1.0 * reaction_TABComplex_Activation_bRafINH));
	
% Species:   id = TAB1_TAB2_TAB3_TAK1_bRafINH_Active, name = TAB1:TAB2:TAB3:TAK1_bRafINH_Active, affected by kineticLaw
	xdot(50) = (1/(compartment_compartment_0))*(( 1.0 * reaction_TABComplex_Activation_bRafINH) + (-1.0 * reaction_TABComplex_pERK_bRafINH));
	
% Species:   id = NIK_bRafINH_Active, name = NIK_bRafINH_Active, affected by kineticLaw
	xdot(51) = (1/(compartment_compartment_0))*(( 1.0 * reaction_NIK_Activation_bRafINH) + (-1.0 * reaction_NIK_pERK_bRafINH));
	
% Species:   id = NIK_bRafINH_Inactive, name = NIK_bRafINH_Inactive, affected by kineticLaw
	xdot(52) = (1/(compartment_compartment_0))*((-1.0 * reaction_NIK_Activation_bRafINH));
	
% Species:   id = IKKbeta_IKKalfa_IKKgamma_bRafINH_Active, name = IKKbeta:IKKalfa:IKKgamma_bRafINH_Active, affected by kineticLaw
	xdot(53) = (1/(compartment_compartment_0))*(( 1.0 * reaction_IKKComplex_Activation_bRafINH) + (-1.0 * reaction_IKKComplex_pERK_bRafINH));
	
% Species:   id = IKKbeta_IKKalfa_IKKgamma_bRafINH_Inactive, name = IKKbeta:IKKalfa:IKKgamma_bRafINH_Inactive, affected by kineticLaw
	xdot(54) = (1/(compartment_compartment_0))*((-1.0 * reaction_IKKComplex_Activation_bRafINH));
	
% Species:   id = Tpl2_NF_kB_bRafINH_Active, name = MAP3K8:NF-kB_bRafINH_Active, affected by kineticLaw
	xdot(55) = (1/(compartment_compartment_0))*(( 1.0 * reaction_Tpl2Complex_Activation_bRafINH) + (-1.0 * reaction_MAP3K8Complex_pERK_bRafINH));
	
% Species:   id = Tpl2_NF_kB_bRafINH_Inactive, name = MAP3K8:NF-kB_bRafINH_Inactive, affected by kineticLaw
	xdot(56) = (1/(compartment_compartment_0))*((-1.0 * reaction_Tpl2Complex_Activation_bRafINH));
	
% Species:   id = TRAF1_TRAF2_TRAF3_bRafINH_Active, name = TRAF1:TRAF2:TRAF3_bRafINH_Active, affected by kineticLaw
	xdot(57) = (1/(compartment_compartment_0))*(( 1.0 * reaction_TRAFComplex_Activation_bRafINH));
	
% Species:   id = TRAF1_TRAF2_TRAF3_bRafINH_Inactive, name = TRAF1:TRAF2:TRAF3_bRafINH_Inactive, affected by kineticLaw
	xdot(58) = (1/(compartment_compartment_0))*((-1.0 * reaction_TRAFComplex_Activation_bRafINH));
	
% Species:   id = Tpl2_NF_kB_RasINH_Active, name = MAP3K8:NF-kB_RasINH_Active, affected by kineticLaw
	xdot(59) = (1/(compartment_compartment_0))*(( 1.0 * reaction_Tpl2Complex_Activation_RasINH));
	
% Species:   id = Tpl2_NF_kB_RasINH_Inactive, name = MAP3K8:NF-kB_RasINH_Inactive, affected by kineticLaw
	xdot(60) = (1/(compartment_compartment_0))*((-1.0 * reaction_Tpl2Complex_Activation_RasINH));
	
% Species:   id = mTORC2Inactive, name = mTORC2_Inactive, affected by kineticLaw
	xdot(61) = (1/(compartment_compartment_0))*(( 1.0 * reaction_mTORC2_Deactivation_bRafMutated) + (-1.0 * reaction_mTORC2_Activation_PI3K));
	
% Species:   id = MAP3K8_inhibitor, name = MAP3K8_inhibitor, affected by kineticLaw
	xdot(62) = (1/(compartment_compartment_0))*((-1.0 * reaction_MAP3K8_NF_kB_Deactivation_MAP3K8_inhibitor));
	
% Species:   id = MAP3K8_NF_kB_inhibited, name = MAP3K8:NF-kB_inhibited, affected by kineticLaw
	xdot(63) = (1/(compartment_compartment_0))*(( 1.0 * reaction_MAP3K8_NF_kB_Deactivation_MAP3K8_inhibitor));
end

function z=HMM_Modified(Kcat,km,species_14,species_17), z=(Kcat*species_14*species_17/(km+species_17));end

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


