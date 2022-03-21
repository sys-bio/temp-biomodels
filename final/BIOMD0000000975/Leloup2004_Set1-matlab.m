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
% Model name = Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod
%
% isDerivedFrom http://identifiers.org/biomodels.db/MODEL0478895291
% isDerivedFrom http://identifiers.org/go/GO:0043153
% isDerivedFrom http://identifiers.org/taxonomy/9606
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000083
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000078
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000074
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000073
% isDescribedBy http://identifiers.org/biomodels.db/BIOMD0000000083
% isDescribedBy http://identifiers.org/biomodels.db/BIOMD0000000078
% isDescribedBy http://identifiers.org/biomodels.db/BIOMD0000000074
% isDescribedBy http://identifiers.org/biomodels.db/BIOMD0000000073
% isDescribedBy http://identifiers.org/pubmed/15363675
% is http://identifiers.org/biomodels.db/MODEL0478895291
% is http://identifiers.org/biomodels.db/BIOMD0000000975
%


function main()
%Initial conditions vector
	x0=zeros(35,1);
	x0(20) = 0.0;
	x0(21) = 0.0;
	x0(22) = 8.6;
	x0(23) = 1.0;
	x0(24) = 1.0;
	x0(25) = 1.0;
	x0(26) = 1.0;
	x0(27) = 1.0;
	x0(28) = 1.0;
	x0(29) = 1.0;
	x0(30) = 1.0;
	x0(31) = 1.0;
	x0(32) = 1.0;
	x0(33) = 1.0;
	x0(34) = 1.0;
	x0(35) = 1.0;
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 8.6;
	x0(4) = 1.0;
	x0(5) = 1.0;
	x0(6) = 1.0;
	x0(7) = 1.0;
	x0(8) = 1.0;
	x0(9) = 1.0;
	x0(10) = 1.0;
	x0(11) = 1.0;
	x0(12) = 1.0;
	x0(13) = 1.0;
	x0(14) = 1.0;
	x0(15) = 1.0;
	x0(16) = 1.0;
	x0(17) = 2.0;
	x0(18) = 2.0;
	x0(19) = 6.0;


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

% Compartment: id = Compartment, name = Mammalian Cell, constant
	compartment_Compartment=1.0;
% Parameter:   id =  MP, name = MP
% Parameter:   id =  vsP, name = vsP
% Parameter:   id =  vmP, name = vmP
	global_par_vmP=1.1;
% Parameter:   id =  kdmp, name = kdmp
	global_par_kdmp=0.01;
% Parameter:   id =  KAP, name = KAP
	global_par_KAP=0.7;
% Parameter:   id =  KmP, name = KmP
	global_par_KmP=0.31;
% Parameter:   id =  MC, name = MC
% Parameter:   id =  vsC, name = vsC
% Parameter:   id =  vmC, name = vmC
	global_par_vmC=1.0;
% Parameter:   id =  kdmc, name = kdmc
	global_par_kdmc=0.01;
% Parameter:   id =  KAC, name = KAC
	global_par_KAC=0.6;
% Parameter:   id =  KmC, name = KmC
	global_par_KmC=0.4;
% Parameter:   id =  MB, name = MB
% Parameter:   id =  vsB, name = vsB
% Parameter:   id =  vmB, name = vmB
	global_par_vmB=0.8;
% Parameter:   id =  kdmb, name = kdmb
	global_par_kdmb=0.01;
% Parameter:   id =  KIB, name = KIB
	global_par_KIB=2.2;
% Parameter:   id =  KmB, name = KmB
	global_par_KmB=0.4;
% Parameter:   id =  PC, name = PC
% Parameter:   id =  CC, name = CC
% Parameter:   id =  PCP, name = PCP
% Parameter:   id =  CCP, name = CCP
% Parameter:   id =  PCC, name = PCC
% Parameter:   id =  PCN, name = PCN
% Parameter:   id =  PCCP, name = PCCP
% Parameter:   id =  PCNP, name = PCNP
% Parameter:   id =  BC, name = BC
% Parameter:   id =  BCP, name = BCP
% Parameter:   id =  BN, name = BN
% Parameter:   id =  BNP, name = BNP
% Parameter:   id =  IN, name = IN
% Parameter:   id =  k1, name = k1
	global_par_k1=0.4;
% Parameter:   id =  k2, name = k2
	global_par_k2=0.2;
% Parameter:   id =  k3, name = k3
	global_par_k3=0.4;
% Parameter:   id =  k4, name = k4
	global_par_k4=0.2;
% Parameter:   id =  k5, name = k5
	global_par_k5=0.4;
% Parameter:   id =  k6, name = k6
	global_par_k6=0.2;
% Parameter:   id =  k7, name = k7
	global_par_k7=0.5;
% Parameter:   id =  k8, name = k8
	global_par_k8=0.1;
% Parameter:   id =  kdnc, name = kdnc
	global_par_kdnc=0.12;
% Parameter:   id =  kdn, name = kdn
	global_par_kdn=0.01;
% Parameter:   id =  kstot, name = kstot
	global_par_kstot=1.0;
% Parameter:   id =  ksB, name = ksB
% Parameter:   id =  ksC, name = ksC
% Parameter:   id =  ksP, name = ksP
% Parameter:   id =  m, name = m
	global_par_m=2.0;
% Parameter:   id =  n, name = n
	global_par_n=4.0;
% Parameter:   id =  vstot, name = vstot
	global_par_vstot=1.0;
% Parameter:   id =  Kd, name = Kd
	global_par_Kd=0.3;
% Parameter:   id =  Kdp, name = Kdp
	global_par_Kdp=0.1;
% Parameter:   id =  Kp, name = Kp
	global_par_Kp=0.1;
% Parameter:   id =  Vphos, name = Vphos
	global_par_Vphos=0.4;
% Parameter:   id =  V1B, name = V1B
	global_par_V1B=0.5;
% Parameter:   id =  V1C, name = V1C
	global_par_V1C=0.6;
% Parameter:   id =  V1P, name = V1P
% Parameter:   id =  V1PC, name = V1PC
% Parameter:   id =  V2B, name = V2B
	global_par_V2B=0.1;
% Parameter:   id =  V2C, name = V2C
	global_par_V2C=0.1;
% Parameter:   id =  V2P, name = V2P
	global_par_V2P=0.3;
% Parameter:   id =  V2PC, name = V2PC
	global_par_V2PC=0.1;
% Parameter:   id =  V3B, name = V3B
	global_par_V3B=0.5;
% Parameter:   id =  V3PC, name = V3PC
% Parameter:   id =  V4B, name = V4B
	global_par_V4B=0.2;
% Parameter:   id =  V4PC, name = V4PC
	global_par_V4PC=0.1;
% Parameter:   id =  vdBC, name = vdBC
	global_par_vdBC=0.5;
% Parameter:   id =  vdBN, name = vdBN
	global_par_vdBN=0.6;
% Parameter:   id =  vdCC, name = vdCC
	global_par_vdCC=0.7;
% Parameter:   id =  vdIN, name = vdIN
	global_par_vdIN=0.8;
% Parameter:   id =  vdPC, name = vdPC
	global_par_vdPC=0.7;
% Parameter:   id =  vdPCC, name = vdPCC
	global_par_vdPCC=0.7;
% Parameter:   id =  vdPCN, name = vdPCN
	global_par_vdPCN=0.7;
% assignmentRule: variable = vsB
	global_par_vsB=global_par_vstot;
% assignmentRule: variable = vsC
	global_par_vsC=1.1*global_par_vstot;
% assignmentRule: variable = vsP
	global_par_vsP=1.5*global_par_vstot;
% assignmentRule: variable = CTot
	x(18)=global_par_CC+global_par_CCP;
% assignmentRule: variable = BTot
	x(17)=global_par_BN+global_par_BC;
% assignmentRule: variable = PTot
	x(19)=global_par_PC+global_par_PCCP+global_par_PCC+global_par_PCNP+global_par_PCN+global_par_PCP;
% assignmentRule: variable = ksP
	global_par_ksP=0.6*global_par_kstot;
% assignmentRule: variable = ksB
	global_par_ksB=0.12*global_par_kstot;
% assignmentRule: variable = V1P
	global_par_V1P=global_par_Vphos;
% assignmentRule: variable = ksC
	global_par_ksC=1.6*global_par_kstot;
% assignmentRule: variable = V1PC
	global_par_V1PC=global_par_Vphos;
% assignmentRule: variable = V3PC
	global_par_V3PC=global_par_Vphos;
% rateRule: variable = MP
global_par_MP = x(20);
% rateRule: variable = MC
global_par_MC = x(21);
% rateRule: variable = MB
global_par_MB = x(22);
% rateRule: variable = PC
global_par_PC = x(23);
% rateRule: variable = CC
global_par_CC = x(24);
% rateRule: variable = PCP
global_par_PCP = x(25);
% rateRule: variable = CCP
global_par_CCP = x(26);
% rateRule: variable = PCC
global_par_PCC = x(27);
% rateRule: variable = PCN
global_par_PCN = x(28);
% rateRule: variable = PCCP
global_par_PCCP = x(29);
% rateRule: variable = PCNP
global_par_PCNP = x(30);
% rateRule: variable = BC
global_par_BC = x(31);
% rateRule: variable = BCP
global_par_BCP = x(32);
% rateRule: variable = BN
global_par_BN = x(33);
% rateRule: variable = BNP
global_par_BNP = x(34);
% rateRule: variable = IN
global_par_IN = x(35);

% Reaction: id = Reversible_reaction__between_PER_CRY_complex_in_cytosol_and_nucleus, name = Reversible reaction  between PER-CRY complex in cytosol and nucleus
	reaction_Reversible_reaction__between_PER_CRY_complex_in_cytosol_and_nucleus=compartment_Compartment*(global_par_k1*x(8)-global_par_k2*x(9));

% Reaction: id = Phosphorylation_of_PER_CRY_complex_in_nucleus, name = Phosphorylation of PER-CRY complex in nucleus
	reaction_Phosphorylation_of_PER_CRY_complex_in_nucleus=compartment_Compartment*Henri_Michaelis_Menten__irreversible__1(global_par_Kp, x(9), global_par_V3PC);

% Reaction: id = Dephosphorylation_of_PER_CRY_complex_in_nucleus, name = Dephosphorylation of PER-CRY complex in nucleus
	reaction_Dephosphorylation_of_PER_CRY_complex_in_nucleus=compartment_Compartment*Henri_Michaelis_Menten__irreversible__2(global_par_Kdp, x(10), global_par_V4PC);

% Reaction: id = Phosphorylation_of_PER_CRY_complex_in_cytosol, name = Phosphorylation of PER-CRY complex in cytosol
	reaction_Phosphorylation_of_PER_CRY_complex_in_cytosol=compartment_Compartment*Henri_Michaelis_Menten__irreversible__3(global_par_Kp, x(8), global_par_V1PC);

% Reaction: id = Dephosphorylation_of_PER_CRY_complex_in_cytosol, name = Dephosphorylation of PER-CRY complex in cytosol
	reaction_Dephosphorylation_of_PER_CRY_complex_in_cytosol=compartment_Compartment*Henri_Michaelis_Menten__irreversible__4(global_par_Kdp, x(11), global_par_V2PC);

% Reaction: id = Reversible_reaction_between_PER__CRY_and_PER_CRY_complex_in_cytosol, name = Reversible reaction between PER, CRY and PER-CRY complex in cytosol
	reaction_Reversible_reaction_between_PER__CRY_and_PER_CRY_complex_in_cytosol=compartment_Compartment*(global_par_k3*x(5)*x(4)-global_par_k4*x(8));

% Reaction: id = Phosphorylation_of_CRY_in_cytosol, name = Phosphorylation of CRY in cytosol
	reaction_Phosphorylation_of_CRY_in_cytosol=compartment_Compartment*Henri_Michaelis_Menten__irreversible__5(x(5), global_par_Kp, global_par_V1C);

% Reaction: id = Dephosphorylation_of_CRY_in_cytosol, name = Dephosphorylation of CRY in cytosol
	reaction_Dephosphorylation_of_CRY_in_cytosol=compartment_Compartment*Henri_Michaelis_Menten__irreversible__6(x(7), global_par_Kdp, global_par_V2C);

% Reaction: id = Translation_of_Cry_mRNA_to_CRY_protein_in_cytosol, name = Translation of Cry mRNA to CRY protein in cytosol
	reaction_Translation_of_Cry_mRNA_to_CRY_protein_in_cytosol=compartment_Compartment*Rate_Law_for_Translation_of_mRNA_to_protein_1(x(2), global_par_ksC);

% Reaction: id = Transcription_of_Cry_gene_to_Cry_mRNA, name = Transcription of Cry gene to Cry mRNA
	reaction_Transcription_of_Cry_gene_to_Cry_mRNA=compartment_Compartment*Hill__Copy__1(x(14), global_par_KAC, global_par_n, global_par_vsC);

% Reaction: id = Transcription_of_Per_gene_to_Per_mRNA, name = Transcription of Per gene to Per mRNA
	reaction_Transcription_of_Per_gene_to_Per_mRNA=compartment_Compartment*Hill__Copy__2(x(14), global_par_KAP, global_par_n, global_par_vsP);

% Reaction: id = Translation_of_Per_mRNA_to_PER_protein, name = Translation of Per mRNA to PER protein
	reaction_Translation_of_Per_mRNA_to_PER_protein=compartment_Compartment*Rate_Law_for_Translation_of_mRNA_to_protein_2(x(1), global_par_ksP);

% Reaction: id = Phosphorylation_of_PER_in_cytosol, name = Phosphorylation of PER in cytosol
	reaction_Phosphorylation_of_PER_in_cytosol=compartment_Compartment*Henri_Michaelis_Menten__irreversible__7(global_par_Kp, x(4), global_par_V1P);

% Reaction: id = Dephosphorylation_of_PER_in_cytosol, name = Dephosphorylation of PER in cytosol
	reaction_Dephosphorylation_of_PER_in_cytosol=compartment_Compartment*Henri_Michaelis_Menten__irreversible__8(global_par_Kdp, x(6), global_par_V2P);

% Reaction: id = Transcription_of_Bmal1_gene_to_Bmal1_mRNA, name = Transcription of Bmal1 gene to Bmal1 mRNA
	reaction_Transcription_of_Bmal1_gene_to_Bmal1_mRNA=compartment_Compartment*Hill__copy__1__1(x(14), global_par_KIB, global_par_m, global_par_vsB);

% Reaction: id = Translation_of_Bmal1_mRNA_to_BMAL1_protein, name = Translation of Bmal1 mRNA to BMAL1 protein
	reaction_Translation_of_Bmal1_mRNA_to_BMAL1_protein=compartment_Compartment*Rate_Law_for_Translation_of_mRNA_to_protein_3(x(3), global_par_ksB);

% Reaction: id = Phosphorylation_of_BMAL1_in_cytosol, name = Phosphorylation of BMAL1 in cytosol
	reaction_Phosphorylation_of_BMAL1_in_cytosol=compartment_Compartment*Henri_Michaelis_Menten__irreversible__9(x(12), global_par_Kp, global_par_V1B);

% Reaction: id = Dephosphorylation_of_BMAL1_in_cytosol, name = Dephosphorylation of BMAL1 in cytosol
	reaction_Dephosphorylation_of_BMAL1_in_cytosol=compartment_Compartment*Henri_Michaelis_Menten__irreversible__10(x(13), global_par_Kdp, global_par_V2B);

% Reaction: id = Reversible_reation_between_BMAL1_in_cytosol_and_nucleus, name = Reversible reation between BMAL1 in cytosol and nucleus
	reaction_Reversible_reation_between_BMAL1_in_cytosol_and_nucleus=compartment_Compartment*(global_par_k5*x(12)-global_par_k6*x(14));

% Reaction: id = Phosphorylation_of_BMAL1_in_nucleus, name = Phosphorylation of BMAL1 in nucleus
	reaction_Phosphorylation_of_BMAL1_in_nucleus=compartment_Compartment*Henri_Michaelis_Menten__irreversible__11(x(14), global_par_Kp, global_par_V3B);

% Reaction: id = Dephosphorylation_of_BMAL1_in_nucleus, name = Dephosphorylation of BMAL1 in nucleus
	reaction_Dephosphorylation_of_BMAL1_in_nucleus=compartment_Compartment*Henri_Michaelis_Menten__irreversible__12(x(15), global_par_Kdp, global_par_V4B);

% Reaction: id = Reversible_reaction_between_PER_CRY_complex_and_PER_CRY_CLOCK_BMAL1_in_nuclues, name = Reversible reaction between PER-CRY complex and PER-CRY-CLOCK-BMAL1 in nuclues
	reaction_Reversible_reaction_between_PER_CRY_complex_and_PER_CRY_CLOCK_BMAL1_in_nuclues=compartment_Compartment*(global_par_k7*x(9)*x(14)-global_par_k8*x(16));

% Reaction: id = Degradation_of_the_PER_CRY_CLOCK_BMAL1_complex, name = Degradation of the PER-CRY-CLOCK-BMAL1 complex
	reaction_Degradation_of_the_PER_CRY_CLOCK_BMAL1_complex=compartment_Compartment*Henri_Michaelis_Menten__irreversible__13(x(16), global_par_Kd, global_par_vdIN);

% Reaction: id = Degradation_of_Cry_mRNA, name = Degradation of Cry mRNA
	reaction_Degradation_of_Cry_mRNA=compartment_Compartment*Henri_Michaelis_Menten__irreversible__14(global_par_KmC, x(2), global_par_vmC);

% Reaction: id = Degradation_of_CRY_P_protein_in_cytosol, name = Degradation of CRY-P protein in cytosol
	reaction_Degradation_of_CRY_P_protein_in_cytosol=compartment_Compartment*Henri_Michaelis_Menten__irreversible__15(x(7), global_par_Kd, global_par_vdCC);

% Reaction: id = Non_specific_degradation_of_Cry_mRNA, name = Non-specific degradation of Cry mRNA
	reaction_Non_specific_degradation_of_Cry_mRNA=compartment_Compartment*global_par_kdmc*x(2);

% Reaction: id = Degradation_of_PER_CRY_complex_in_cytosol, name = Degradation of PER-CRY complex in cytosol
	reaction_Degradation_of_PER_CRY_complex_in_cytosol=compartment_Compartment*Henri_Michaelis_Menten__irreversible__16(global_par_Kd, x(11), global_par_vdPCC);

% Reaction: id = Degradation_of_PER_CRY_complex_in_nucleus, name = Degradation of PER-CRY complex in nucleus
	reaction_Degradation_of_PER_CRY_complex_in_nucleus=compartment_Compartment*Henri_Michaelis_Menten__irreversible__17(global_par_Kd, x(10), global_par_vdPCN);

% Reaction: id = Degradation_of_Per_mRNA, name = Degradation of Per mRNA
	reaction_Degradation_of_Per_mRNA=compartment_Compartment*Henri_Michaelis_Menten__irreversible__18(global_par_KmP, x(1), global_par_vmP);

% Reaction: id = Degradation_of_PER_P_in_cytosol, name = Degradation of PER-P in cytosol
	reaction_Degradation_of_PER_P_in_cytosol=compartment_Compartment*Henri_Michaelis_Menten__irreversible__19(global_par_Kd, x(6), global_par_vdPC);

% Reaction: id = Non_specific_degradation_of_Per_mRNA, name = Non-specific degradation of Per mRNA
	reaction_Non_specific_degradation_of_Per_mRNA=compartment_Compartment*global_par_kdmp*x(1);

% Reaction: id = Degradation_of_Bmal1_mRNA, name = Degradation of Bmal1 mRNA
	reaction_Degradation_of_Bmal1_mRNA=compartment_Compartment*Henri_Michaelis_Menten__irreversible__20(global_par_KmB, x(3), global_par_vmB);

% Reaction: id = Non_specific_degradation_of_Bmal1_mRNA, name = Non-specific degradation of Bmal1 mRNA
	reaction_Non_specific_degradation_of_Bmal1_mRNA=compartment_Compartment*global_par_kdmb*x(3);

% Reaction: id = Degradation_of_BMAL1_P_in_cytosol, name = Degradation of BMAL1-P in cytosol
	reaction_Degradation_of_BMAL1_P_in_cytosol=compartment_Compartment*Henri_Michaelis_Menten__irreversible__21(x(13), global_par_Kd, global_par_vdBC);

% Reaction: id = Degradation_of_BMAL1_P_in_nucleus, name = Degradation of BMAL1-P in nucleus
	reaction_Degradation_of_BMAL1_P_in_nucleus=compartment_Compartment*Henri_Michaelis_Menten__irreversible__22(x(15), global_par_Kd, global_par_vdBN);

% Reaction: id = Non_specific_degradation_of_PER_protein_in_cytosol, name = Non-specific degradation of PER protein in cytosol
	reaction_Non_specific_degradation_of_PER_protein_in_cytosol=compartment_Compartment*global_par_kdn*x(4);

% Reaction: id = Non_specific_degradation_of_CRY_protein_in_cytosol, name = Non-specific degradation of CRY protein in cytosol
	reaction_Non_specific_degradation_of_CRY_protein_in_cytosol=compartment_Compartment*global_par_kdnc*x(5);

% Reaction: id = Non_specific_degradation_of_PER_P_protein_in_cytosol, name = Non-specific degradation of PER-P protein in cytosol
	reaction_Non_specific_degradation_of_PER_P_protein_in_cytosol=compartment_Compartment*global_par_kdn*x(6);

% Reaction: id = Non_specific_degradation_of_CRY_P_protein_in_cytosol, name = Non-specific degradation of CRY-P protein in cytosol
	reaction_Non_specific_degradation_of_CRY_P_protein_in_cytosol=compartment_Compartment*global_par_kdn*x(7);

% Reaction: id = Non_specific_degradation_of_PER_CRY_protein_complex_in_cytosol, name = Non-specific degradation of PER-CRY protein complex in cytosol
	reaction_Non_specific_degradation_of_PER_CRY_protein_complex_in_cytosol=compartment_Compartment*global_par_kdn*x(8);

% Reaction: id = Non_specific_degradation_of_PER_CRY_protein_complex_in_nucleus, name = Non-specific degradation of PER-CRY protein complex in nucleus
	reaction_Non_specific_degradation_of_PER_CRY_protein_complex_in_nucleus=compartment_Compartment*global_par_kdn*x(9);

% Reaction: id = Non_specific_degradation_of_PER_CRY_P_protein_complex_in_cytosol, name = Non-specific degradation of PER-CRY-P protein complex in cytosol
	reaction_Non_specific_degradation_of_PER_CRY_P_protein_complex_in_cytosol=compartment_Compartment*global_par_kdn*x(11);

% Reaction: id = Non_specific_degradation_of_PER_CRY_P_protein_complex_in_nucleus, name = Non-specific degradation of PER-CRY-P protein complex in nucleus
	reaction_Non_specific_degradation_of_PER_CRY_P_protein_complex_in_nucleus=compartment_Compartment*global_par_kdn*x(10);

% Reaction: id = Non_specific_degradation_of_BMAL1_protein_in_cytosol, name = Non-specific degradation of BMAL1 protein in cytosol
	reaction_Non_specific_degradation_of_BMAL1_protein_in_cytosol=compartment_Compartment*global_par_kdn*x(12);

% Reaction: id = Non_specific_degradation_of_BMAL1_P_protein_in_cytosol, name = Non-specific degradation of BMAL1-P protein in cytosol
	reaction_Non_specific_degradation_of_BMAL1_P_protein_in_cytosol=compartment_Compartment*global_par_kdn*x(13);

% Reaction: id = Non_specific_degradation_of_BMAL1_protein_in_nucleus, name = Non-specific degradation of BMAL1 protein in nucleus
	reaction_Non_specific_degradation_of_BMAL1_protein_in_nucleus=compartment_Compartment*global_par_kdn*x(14);

% Reaction: id = Non_specific_degradation_of_BMAL1_P_protein_in_nucleus, name = Non-specific degradation of BMAL1-P protein in nucleus
	reaction_Non_specific_degradation_of_BMAL1_P_protein_in_nucleus=compartment_Compartment*global_par_kdn*x(15);

% Reaction: id = Non_specific_degradation_of_PER_CRY_BMAL1_CLOCK_complex_in_nucleus, name = Non-specific degradation of PER-CRY-BMAL1-CLOCK complex in nucleus
	reaction_Non_specific_degradation_of_PER_CRY_BMAL1_CLOCK_complex_in_nucleus=compartment_Compartment*global_par_kdn*x(16);

	xdot=zeros(35,1);
	% rateRule: variable = MP
	xdot(20) = global_par_vsP*global_par_BN^global_par_n/(global_par_KAP^global_par_n+global_par_BN^global_par_n)-(global_par_vmP*global_par_MP/(global_par_KmP+global_par_MP)+global_par_kdmp*global_par_MP);
	% rateRule: variable = MC
	xdot(21) = global_par_vsC*global_par_BN^global_par_n/(global_par_KAC^global_par_n+global_par_BN^global_par_n)-(global_par_vmC*global_par_MC/(global_par_KmC+global_par_MC)+global_par_kdmc*global_par_MC);
	% rateRule: variable = MB
	xdot(22) = global_par_vsB*global_par_KIB^global_par_m/(global_par_KIB^global_par_m+global_par_BN^global_par_m)-(global_par_vmB*global_par_MB/(global_par_KmB+global_par_MB)+global_par_kdmb*global_par_MB);
	% rateRule: variable = PC
	xdot(23) = global_par_ksP*global_par_MP+global_par_V2P*global_par_PCP/(global_par_Kdp+global_par_PCP)+global_par_k4*global_par_PCC-(global_par_V1P*global_par_PC/(global_par_Kp+global_par_PC)+global_par_k3*global_par_PC*global_par_CC+global_par_kdn*global_par_PC);
	% rateRule: variable = CC
	xdot(24) = global_par_ksC*global_par_MC+global_par_V2C*global_par_CCP/(global_par_Kdp+global_par_CCP)+global_par_k4*global_par_PCC-(global_par_V1C*global_par_CC/(global_par_Kp+global_par_CC)+global_par_k3*global_par_PC*global_par_CC+global_par_kdnc*global_par_CC);
	% rateRule: variable = PCP
	xdot(25) = global_par_V1P*global_par_PC/(global_par_Kp+global_par_PC)-(global_par_V2P*global_par_PCP/(global_par_Kdp+global_par_PCP)+global_par_vdPC*global_par_PCP/(global_par_Kd+global_par_PCP)+global_par_kdn*global_par_PCP);
	% rateRule: variable = CCP
	xdot(26) = global_par_V1C*global_par_CC/(global_par_Kp+global_par_CC)-(global_par_V2C*global_par_CCP/(global_par_Kdp+global_par_CCP)+global_par_vdCC*global_par_CCP/(global_par_Kd+global_par_CCP)+global_par_kdn*global_par_CCP);
	% rateRule: variable = PCC
	xdot(27) = global_par_V2PC*global_par_PCCP/(global_par_Kdp+global_par_PCCP)+global_par_k3*global_par_PC*global_par_CC+global_par_k2*global_par_PCN-(global_par_V1PC*global_par_PCC/(global_par_Kp+global_par_PCC)+global_par_k4*global_par_PCC+global_par_k1*global_par_PCC+global_par_kdn*global_par_PCC);
	% rateRule: variable = PCN
	xdot(28) = global_par_V4PC*global_par_PCNP/(global_par_Kdp+global_par_PCNP)+global_par_k1*global_par_PCC+global_par_k8*global_par_IN-(global_par_V3PC*global_par_PCN/(global_par_Kp+global_par_PCN)+global_par_k2*global_par_PCN+global_par_k7*global_par_BN*global_par_PCN+global_par_kdn*global_par_PCN);
	% rateRule: variable = PCCP
	xdot(29) = global_par_V1PC*global_par_PCC/(global_par_Kp+global_par_PCC)-(global_par_V2PC*global_par_PCCP/(global_par_Kdp+global_par_PCCP)+global_par_vdPCC*global_par_PCCP/(global_par_Kd+global_par_PCCP)+global_par_kdn*global_par_PCCP);
	% rateRule: variable = PCNP
	xdot(30) = global_par_V3PC*global_par_PCN/(global_par_Kp+global_par_PCN)-(global_par_V4PC*global_par_PCNP/(global_par_Kdp+global_par_PCNP)+global_par_vdPCN*global_par_PCNP/(global_par_Kd+global_par_PCNP)+global_par_kdn*global_par_PCNP);
	% rateRule: variable = BC
	xdot(31) = global_par_V2B*global_par_BCP/(global_par_Kdp+global_par_BCP)+global_par_k6*global_par_BN+global_par_ksB*global_par_MB-(global_par_V1B*global_par_BC/(global_par_Kp+global_par_BC)+global_par_k5*global_par_BC+global_par_kdn*global_par_BC);
	% rateRule: variable = BCP
	xdot(32) = global_par_V1B*global_par_BC/(global_par_Kp+global_par_BC)-(global_par_V2B*global_par_BCP/(global_par_Kdp+global_par_BCP)+global_par_vdBC*global_par_BCP/(global_par_Kd+global_par_BCP)+global_par_kdn*global_par_BCP);
	% rateRule: variable = BN
	xdot(33) = global_par_V4B*global_par_BNP/(global_par_Kdp+global_par_BNP)+global_par_k5*global_par_BC+global_par_k8*global_par_IN-(global_par_V3B*global_par_BN/(global_par_Kp+global_par_BN)+global_par_k6*global_par_BN+global_par_k7*global_par_BN*global_par_PCN+global_par_kdn*global_par_BN);
	% rateRule: variable = BNP
	xdot(34) = global_par_V3B*global_par_BN/(global_par_Kp+global_par_BN)-(global_par_V4B*global_par_BNP/(global_par_Kdp+global_par_BNP)+global_par_vdBN*global_par_BNP/(global_par_Kd+global_par_BNP)+global_par_kdn*global_par_BNP);
	% rateRule: variable = IN
	xdot(35) = global_par_k7*global_par_BN*global_par_PCN-(global_par_k8*global_par_IN+global_par_vdIN*global_par_IN/(global_par_Kd+global_par_IN)+global_par_kdn*global_par_IN);
	
% Species:   id = MP_0, name = MP, affected by kineticLaw
	xdot(1) = (1/(compartment_Compartment))*(( 1.0 * reaction_Transcription_of_Per_gene_to_Per_mRNA) + (-1.0 * reaction_Degradation_of_Per_mRNA) + (-1.0 * reaction_Non_specific_degradation_of_Per_mRNA));
	
% Species:   id = MC_0, name = MC, affected by kineticLaw
	xdot(2) = (1/(compartment_Compartment))*(( 1.0 * reaction_Transcription_of_Cry_gene_to_Cry_mRNA) + (-1.0 * reaction_Degradation_of_Cry_mRNA) + (-1.0 * reaction_Non_specific_degradation_of_Cry_mRNA));
	
% Species:   id = MB_0, name = MB, affected by kineticLaw
	xdot(3) = (1/(compartment_Compartment))*(( 1.0 * reaction_Transcription_of_Bmal1_gene_to_Bmal1_mRNA) + (-1.0 * reaction_Degradation_of_Bmal1_mRNA) + (-1.0 * reaction_Non_specific_degradation_of_Bmal1_mRNA));
	
% Species:   id = PC_0, name = PC, affected by kineticLaw
	xdot(4) = (1/(compartment_Compartment))*((-1.0 * reaction_Reversible_reaction_between_PER__CRY_and_PER_CRY_complex_in_cytosol) + ( 1.0 * reaction_Translation_of_Per_mRNA_to_PER_protein) + (-1.0 * reaction_Phosphorylation_of_PER_in_cytosol) + ( 1.0 * reaction_Dephosphorylation_of_PER_in_cytosol) + (-1.0 * reaction_Non_specific_degradation_of_PER_protein_in_cytosol));
	
% Species:   id = CC_0, name = CC, affected by kineticLaw
	xdot(5) = (1/(compartment_Compartment))*((-1.0 * reaction_Reversible_reaction_between_PER__CRY_and_PER_CRY_complex_in_cytosol) + (-1.0 * reaction_Phosphorylation_of_CRY_in_cytosol) + ( 1.0 * reaction_Dephosphorylation_of_CRY_in_cytosol) + ( 1.0 * reaction_Translation_of_Cry_mRNA_to_CRY_protein_in_cytosol) + (-1.0 * reaction_Non_specific_degradation_of_CRY_protein_in_cytosol));
	
% Species:   id = PCP_0, name = PCP, affected by kineticLaw
	xdot(6) = (1/(compartment_Compartment))*(( 1.0 * reaction_Phosphorylation_of_PER_in_cytosol) + (-1.0 * reaction_Dephosphorylation_of_PER_in_cytosol) + (-1.0 * reaction_Degradation_of_PER_P_in_cytosol) + (-1.0 * reaction_Non_specific_degradation_of_PER_P_protein_in_cytosol));
	
% Species:   id = CCP_0, name = CCP, affected by kineticLaw
	xdot(7) = (1/(compartment_Compartment))*(( 1.0 * reaction_Phosphorylation_of_CRY_in_cytosol) + (-1.0 * reaction_Dephosphorylation_of_CRY_in_cytosol) + (-1.0 * reaction_Degradation_of_CRY_P_protein_in_cytosol) + (-1.0 * reaction_Non_specific_degradation_of_CRY_P_protein_in_cytosol));
	
% Species:   id = PCC_0, name = PCC, affected by kineticLaw
	xdot(8) = (1/(compartment_Compartment))*((-1.0 * reaction_Reversible_reaction__between_PER_CRY_complex_in_cytosol_and_nucleus) + (-1.0 * reaction_Phosphorylation_of_PER_CRY_complex_in_cytosol) + ( 1.0 * reaction_Dephosphorylation_of_PER_CRY_complex_in_cytosol) + ( 1.0 * reaction_Reversible_reaction_between_PER__CRY_and_PER_CRY_complex_in_cytosol) + (-1.0 * reaction_Non_specific_degradation_of_PER_CRY_protein_complex_in_cytosol));
	
% Species:   id = PCN_0, name = PCN, affected by kineticLaw
	xdot(9) = (1/(compartment_Compartment))*(( 1.0 * reaction_Reversible_reaction__between_PER_CRY_complex_in_cytosol_and_nucleus) + (-1.0 * reaction_Phosphorylation_of_PER_CRY_complex_in_nucleus) + ( 1.0 * reaction_Dephosphorylation_of_PER_CRY_complex_in_nucleus) + (-1.0 * reaction_Reversible_reaction_between_PER_CRY_complex_and_PER_CRY_CLOCK_BMAL1_in_nuclues) + (-1.0 * reaction_Non_specific_degradation_of_PER_CRY_protein_complex_in_nucleus));
	
% Species:   id = PCNP_0, name = PCNP, affected by kineticLaw
	xdot(10) = (1/(compartment_Compartment))*(( 1.0 * reaction_Phosphorylation_of_PER_CRY_complex_in_nucleus) + (-1.0 * reaction_Dephosphorylation_of_PER_CRY_complex_in_nucleus) + (-1.0 * reaction_Degradation_of_PER_CRY_complex_in_nucleus) + (-1.0 * reaction_Non_specific_degradation_of_PER_CRY_P_protein_complex_in_nucleus));
	
% Species:   id = PCCP_0, name = PCCP, affected by kineticLaw
	xdot(11) = (1/(compartment_Compartment))*(( 1.0 * reaction_Phosphorylation_of_PER_CRY_complex_in_cytosol) + (-1.0 * reaction_Dephosphorylation_of_PER_CRY_complex_in_cytosol) + (-1.0 * reaction_Degradation_of_PER_CRY_complex_in_cytosol) + (-1.0 * reaction_Non_specific_degradation_of_PER_CRY_P_protein_complex_in_cytosol));
	
% Species:   id = BC_0, name = BC, affected by kineticLaw
	xdot(12) = (1/(compartment_Compartment))*(( 1.0 * reaction_Translation_of_Bmal1_mRNA_to_BMAL1_protein) + (-1.0 * reaction_Phosphorylation_of_BMAL1_in_cytosol) + ( 1.0 * reaction_Dephosphorylation_of_BMAL1_in_cytosol) + (-1.0 * reaction_Reversible_reation_between_BMAL1_in_cytosol_and_nucleus) + (-1.0 * reaction_Non_specific_degradation_of_BMAL1_protein_in_cytosol));
	
% Species:   id = BCP_0, name = BCP, affected by kineticLaw
	xdot(13) = (1/(compartment_Compartment))*(( 1.0 * reaction_Phosphorylation_of_BMAL1_in_cytosol) + (-1.0 * reaction_Dephosphorylation_of_BMAL1_in_cytosol) + (-1.0 * reaction_Degradation_of_BMAL1_P_in_cytosol) + (-1.0 * reaction_Non_specific_degradation_of_BMAL1_P_protein_in_cytosol));
	
% Species:   id = BN_0, name = BN, affected by kineticLaw
	xdot(14) = (1/(compartment_Compartment))*(( 1.0 * reaction_Reversible_reation_between_BMAL1_in_cytosol_and_nucleus) + (-1.0 * reaction_Phosphorylation_of_BMAL1_in_nucleus) + ( 1.0 * reaction_Dephosphorylation_of_BMAL1_in_nucleus) + (-1.0 * reaction_Reversible_reaction_between_PER_CRY_complex_and_PER_CRY_CLOCK_BMAL1_in_nuclues) + (-1.0 * reaction_Non_specific_degradation_of_BMAL1_protein_in_nucleus));
	
% Species:   id = BNP_0, name = BNP, affected by kineticLaw
	xdot(15) = (1/(compartment_Compartment))*(( 1.0 * reaction_Phosphorylation_of_BMAL1_in_nucleus) + (-1.0 * reaction_Dephosphorylation_of_BMAL1_in_nucleus) + (-1.0 * reaction_Degradation_of_BMAL1_P_in_nucleus) + (-1.0 * reaction_Non_specific_degradation_of_BMAL1_P_protein_in_nucleus));
	
% Species:   id = IN_0, name = IN, affected by kineticLaw
	xdot(16) = (1/(compartment_Compartment))*(( 1.0 * reaction_Reversible_reaction_between_PER_CRY_complex_and_PER_CRY_CLOCK_BMAL1_in_nuclues) + (-1.0 * reaction_Degradation_of_the_PER_CRY_CLOCK_BMAL1_complex) + (-1.0 * reaction_Non_specific_degradation_of_PER_CRY_BMAL1_CLOCK_complex_in_nucleus));
	
% Species:   id = BTot, name = BTot, involved in a rule 	xdot(17) = x(17);
	
% Species:   id = CTot, name = CTot, involved in a rule 	xdot(18) = x(18);
	
% Species:   id = PTot, name = PTot, involved in a rule 	xdot(19) = x(19);
end

function z=Henri_Michaelis_Menten__irreversible__1(Kp,PCN_0,V3PC), z=(V3PC*PCN_0/(Kp+PCN_0));end

function z=Henri_Michaelis_Menten__irreversible__4(Kdp,PCCP_0,V2PC), z=(V2PC*PCCP_0/(Kdp+PCCP_0));end

function z=Henri_Michaelis_Menten__irreversible__2(Kdp,PCNP_0,V4PC), z=(V4PC*PCNP_0/(Kdp+PCNP_0));end

function z=Henri_Michaelis_Menten__irreversible__3(Kp,PCC_0,V1PC), z=(V1PC*PCC_0/(Kp+PCC_0));end

function z=Hill__Copy__1(BN_0,KAC,n,vsC), z=(vsC*BN_0^n/(KAC^n+BN_0^n));end

function z=Hill__copy__1__1(BN_0,KIB,m,vsB), z=(vsB*KIB^m/(KIB^m+BN_0^m));end

function z=Henri_Michaelis_Menten__irreversible__9(BC_0,Kp,V1B), z=(V1B*BC_0/(Kp+BC_0));end

function z=Rate_Law_for_Translation_of_mRNA_to_protein_1(MC_0,ksC), z=(ksC*MC_0);end

function z=Henri_Michaelis_Menten__irreversible__11(BN_0,Kp,V3B), z=(V3B*BN_0/(Kp+BN_0));end

function z=Henri_Michaelis_Menten__irreversible__12(BNP_0,Kdp,V4B), z=(V4B*BNP_0/(Kdp+BNP_0));end

function z=Henri_Michaelis_Menten__irreversible__14(KmC,MC_0,vmC), z=(vmC*MC_0/(KmC+MC_0));end

function z=Henri_Michaelis_Menten__irreversible__15(CCP_0,Kd,vdCC), z=(vdCC*CCP_0/(Kd+CCP_0));end

function z=Henri_Michaelis_Menten__irreversible__18(KmP,MP_0,vmP), z=(vmP*MP_0/(KmP+MP_0));end

function z=Henri_Michaelis_Menten__irreversible__20(KmB,MB_0,vmB), z=(vmB*MB_0/(KmB+MB_0));end

function z=Henri_Michaelis_Menten__irreversible__21(BCP_0,Kd,vdBC), z=(vdBC*BCP_0/(Kd+BCP_0));end

function z=Henri_Michaelis_Menten__irreversible__22(BNP_0,Kd,vdBN), z=(vdBN*BNP_0/(Kd+BNP_0));end

function z=Henri_Michaelis_Menten__irreversible__7(Kp,PC_0,V1P), z=(V1P*PC_0/(Kp+PC_0));end

function z=Henri_Michaelis_Menten__irreversible__17(Kd,PCNP_0,vdPCN), z=(vdPCN*PCNP_0/(Kd+PCNP_0));end

function z=Henri_Michaelis_Menten__irreversible__19(Kd,PCP_0,vdPC), z=(vdPC*PCP_0/(Kd+PCP_0));end

function z=Henri_Michaelis_Menten__irreversible__13(IN_0,Kd,vdIN), z=(vdIN*IN_0/(Kd+IN_0));end

function z=Henri_Michaelis_Menten__irreversible__8(Kdp,PCP_0,V2P), z=(V2P*PCP_0/(Kdp+PCP_0));end

function z=Henri_Michaelis_Menten__irreversible__10(BCP_0,Kdp,V2B), z=(V2B*BCP_0/(Kdp+BCP_0));end

function z=Henri_Michaelis_Menten__irreversible__16(Kd,PCCP_0,vdPCC), z=(vdPCC*PCCP_0/(Kd+PCCP_0));end

function z=Henri_Michaelis_Menten__irreversible__5(CC_0,Kp,V1C), z=(V1C*CC_0/(Kp+CC_0));end

function z=Rate_Law_for_Translation_of_mRNA_to_protein_2(MP_0,ksP), z=(ksP*MP_0);end

function z=Henri_Michaelis_Menten__irreversible__6(CCP_0,Kdp,V2C), z=(V2C*CCP_0/(Kdp+CCP_0));end

function z=Hill__Copy__2(BN_0,KAP,n,vsP), z=(vsP*BN_0^n/(KAP^n+BN_0^n));end

function z=Rate_Law_for_Translation_of_mRNA_to_protein_3(MB_0,ksB), z=(ksB*MB_0);end

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


