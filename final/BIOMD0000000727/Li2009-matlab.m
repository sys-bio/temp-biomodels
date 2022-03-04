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
% Model name = Li2009- Assymetric Caulobacter cell cycle
%
% isDerivedFrom http://identifiers.org/mamo/MAMO_0000046
% isDerivedFrom http://identifiers.org/go/GO:0007049
% isDerivedFrom http://identifiers.org/go/GO:0051726
% isDerivedFrom http://identifiers.org/taxonomy/155892
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000718
% isDescribedBy http://identifiers.org/pubmed/19680425
% is http://identifiers.org/biomodels.db/MODEL1812110002
% is http://identifiers.org/biomodels.db/BIOMD0000000727
%


function main()
%Initial conditions vector
	x0=zeros(30,1);
	x0(1) = 0.78;
	x0(2) = 0.65;
	x0(3) = 0.04;
	x0(4) = 0.08;
	x0(5) = 0.66;
	x0(6) = 0.34;
	x0(7) = 0.09;
	x0(8) = 0.15;
	x0(9) = 1.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 0.0;
	x0(13) = 0.0;
	x0(14) = 1.05;
	x0(15) = 2.0;
	x0(16) = 0.2;
	x0(17) = 0.55;
	x0(18) = 1.0;
	x0(19) = 0.76;
	x0(20) = 0.66;
	x0(21) = 0.74;
	x0(22) = 1.0;
	x0(23) = 0.53;
	x0(24) = 0.04;
	x0(25) = 1.3;
	x0(26) = 1.0;
	x0(27) = 1.0;
	x0(28) = 0.05;
	x0(29) = 1.0;
	x0(30) = 0.2;


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

% Compartment: id = Caulobacter, name = Caulobacter, constant
	compartment_Caulobacter=1.0;
% Parameter:   id =  H, name = H
	global_par_H=0.0;
% Parameter:   id =  ks_CtrA_P1, name = ks,CtrA-P1
	global_par_ks_CtrA_P1=0.0159;
% Parameter:   id =  ks_CtrA_P2, name = ks,CtrA-P2
	global_par_ks_CtrA_P2=0.14;
% Parameter:   id =  kd_CtrA1, name = kd,CtrA1
	global_par_kd_CtrA1=0.002;
% Parameter:   id =  kd_CtrA2, name = kd,CtrA2
	global_par_kd_CtrA2=0.25;
% Parameter:   id =  ktrans_CtrA_P, name = ktrans,CtrA_P
	global_par_ktrans_CtrA_P=0.025;
% Parameter:   id =  ktrans_CtrA, name = ktrans.CtrA
	global_par_ktrans_CtrA=0.095;
% Parameter:   id =  ks_GcrA, name = ks,GcrA
	global_par_ks_GcrA=0.055;
% Parameter:   id =  kd_GcrA, name = kd,GcrA
	global_par_kd_GcrA=0.022;
% Parameter:   id =  ks_DnaA1, name = ks,DnaA1
	global_par_ks_DnaA1=0.0031;
% Parameter:   id =  ks_DnaA2, name = ks,DnaA2
	global_par_ks_DnaA2=0.0022;
% Parameter:   id =  kd_DnaA, name = kd,DnaA
	global_par_kd_DnaA=0.007;
% Parameter:   id =  ka_Ini, name = ka,Ini
	global_par_ka_Ini=0.01;
% Parameter:   id =  kelong, name = kelong
	global_par_kelong=0.0065;
% Parameter:   id =  ks_I, name = ks,I
	global_par_ks_I=0.09;
% Parameter:   id =  kd_I, name = kd,I
	global_par_kd_I=0.04;
% Parameter:   id =  ks_CcrM, name = ks,CcrM
	global_par_ks_CcrM=0.072;
% Parameter:   id =  kd_CcrM, name = kd,CcrM
	global_par_kd_CcrM=0.07;
% Parameter:   id =  km_Cori, name = km,Cori
	global_par_km_Cori=0.4;
% Parameter:   id =  km_ctrA, name = km,ctrA
	global_par_km_ctrA=0.4;
% Parameter:   id =  km_ccrM, name = km,ccrM
	global_par_km_ccrM=0.4;
% Parameter:   id =  km_ftsz, name = km,ftsz
	global_par_km_ftsz=0.4;
% Parameter:   id =  ks_PodJL, name = ks,PodJL
	global_par_ks_PodJL=0.043;
% Parameter:   id =  kd_PodJL1, name = kd,PodJL1
	global_par_kd_PodJL1=0.05;
% Parameter:   id =  kd_PodJL2, name = kd,PodJL2
	global_par_kd_PodJL2=0.002;
% Parameter:   id =  ksep_PodJL, name = ksep,PodJL
	global_par_ksep_PodJL=0.3;
% Parameter:   id =  ks_PerP, name = ks,PerP
	global_par_ks_PerP=0.04;
% Parameter:   id =  kd_PerP, name = kd,PerP
	global_par_kd_PerP=0.02;
% Parameter:   id =  ksep_PerP, name = ksep,PerP
	global_par_ksep_PerP=0.011;
% Parameter:   id =  ks_DivJ1, name = ks,DivJ1
	global_par_ks_DivJ1=0.002;
% Parameter:   id =  ks_DivJ2, name = ks,DivJ2
	global_par_ks_DivJ2=0.025;
% Parameter:   id =  kd_DivJ, name = kd,DivJ
	global_par_kd_DivJ=0.002;
% Parameter:   id =  ksep_divJ, name = ksep,divJ
	global_par_ksep_divJ=0.3;
% Parameter:   id =  ks_DivK, name = ks,DivK
	global_par_ks_DivK=0.0024;
% Parameter:   id =  kd_DivK, name = kd,DivK
	global_par_kd_DivK=0.002;
% Parameter:   id =  ktrans_DivK, name = ktrans,DivK
	global_par_ktrans_DivK=0.15;
% Parameter:   id =  ktrans_DivK_P, name = ktrans,DivK_P
	global_par_ktrans_DivK_P=0.6;
% Parameter:   id =  ktrans_CckA_P, name = ktrans,CckA_P
	global_par_ktrans_CckA_P=0.05;
% Parameter:   id =  ktrans_CckA, name = ktrans,CckA
	global_par_ktrans_CckA=0.2;
% Parameter:   id =  ktrans_CpdR, name = ktrans,CpdR
	global_par_ktrans_CpdR=0.6;
% Parameter:   id =  ktrans_CpdR_P, name = ktrans,CpdR_P
	global_par_ktrans_CpdR_P=0.5;
% Parameter:   id =  ktrans_ParAATP, name = ktrans,ParAATP
	global_par_ktrans_ParAATP=0.5;
% Parameter:   id =  ktrans_ParAADP, name = ktrans,ParAADP
	global_par_ktrans_ParAADP=0.8;
% Parameter:   id =  ks_RcdA, name = ks,RcdA
	global_par_ks_RcdA=0.023;
% Parameter:   id =  kd_RcdA, name = kd,RcdA
	global_par_kd_RcdA=0.017;
% Parameter:   id =  ks_FtsQ, name = ks,FtsQ
	global_par_ks_FtsQ=0.06;
% Parameter:   id =  kd_FtsQ, name = kd,FtsQ
	global_par_kd_FtsQ=0.035;
% Parameter:   id =  ks_FtsZ, name = ks,FtsZ
	global_par_ks_FtsZ=0.036;
% Parameter:   id =  kd_FtsZ1, name = kd,FtsZ1
	global_par_kd_FtsZ1=0.009;
% Parameter:   id =  kd_FtsZ2, name = kd,FtsZ2
	global_par_kd_FtsZ2=0.02;
% Parameter:   id =  kd_FtsZ3, name = kd,FtsZ3
	global_par_kd_FtsZ3=0.3;
% Parameter:   id =  ks_Zring, name = ks,Zring
	global_par_ks_Zring=0.035;
% Parameter:   id =  kZ_open, name = kZ,open
	global_par_kZ_open=0.8;
% Parameter:   id =  kZ_closed1, name = kZ,closed1
	global_par_kZ_closed1=1.0E-4;
% Parameter:   id =  kZ_closed2, name = kZ,closed2
	global_par_kZ_closed2=1.6;
% Parameter:   id =  Ji_CtrA_CtrA_P, name = Ji,CtrA-CtrA_P
	global_par_Ji_CtrA_CtrA_P=0.4;
% Parameter:   id =  Ja_CtrA_CtrA_P, name = Ja,CtrA-CtrA_P
	global_par_Ja_CtrA_CtrA_P=0.45;
% Parameter:   id =  Jd_CtrA_DivK_P, name = Jd,CtrA-DivK_P
	global_par_Jd_CtrA_DivK_P=0.55;
% Parameter:   id =  jd_CtrA_CpdR, name = jd,CtrA-CpdR
	global_par_jd_CtrA_CpdR=0.6;
% Parameter:   id =  jd_CtrA_RcdA, name = jd,CtrA-RcdA
	global_par_jd_CtrA_RcdA=0.5;
% Parameter:   id =  Ji_GcrA_CtrA, name = Ji,GcrA-CtrA
	global_par_Ji_GcrA_CtrA=0.4;
% Parameter:   id =  JiDnaA_GcrA, name = JiDnaA-GcrA
	global_par_JiDnaA_GcrA=0.6;
% Parameter:   id =  Ja_Dna_CtrA_P, name = Ja,Dna-CtrA_P
	global_par_Ja_Dna_CtrA_P=0.3;
% Parameter:   id =  Ja_i_CtrA_P, name = Ja,i-CtrA_P
	global_par_Ja_i_CtrA_P=0.5;
% Parameter:   id =  Jm_Cori, name = Jm,Cori
	global_par_Jm_Cori=0.95;
% Parameter:   id =  Jm_ctrA, name = Jm,ctrA
	global_par_Jm_ctrA=0.95;
% Parameter:   id =  jm_ccrM, name = jm,ccrM
	global_par_jm_ccrM=0.95;
% Parameter:   id =  Jm_ftsZ, name = Jm,ftsZ
	global_par_Jm_ftsZ=0.95;
% Parameter:   id =  Ji_PodJL_CtrA_P, name = Ji,PodJL-CtrA_P
	global_par_Ji_PodJL_CtrA_P=0.6;
% Parameter:   id =  Jd_PodJL_PerP, name = Jd,PodJL-PerP
	global_par_Jd_PodJL_PerP=0.45;
% Parameter:   id =  jsep_PodJL, name = jsep,PodJL
	global_par_jsep_PodJL=0.3;
% Parameter:   id =  Jsep_PerP, name = Jsep,PerP
	global_par_Jsep_PerP=0.3;
% Parameter:   id =  Ji_DivJ_PodJL, name = Ji,DivJ-PodJL
	global_par_Ji_DivJ_PodJL=0.13;
% Parameter:   id =  Jsep_DivJ, name = Jsep,DivJ
	global_par_Jsep_DivJ=0.3;
% Parameter:   id =  Ja_DivK, name = Ja,DivK
	global_par_Ja_DivK=0.06;
% Parameter:   id =  JDivk_P_PodJL, name = JDivk_P-PodJL
	global_par_JDivk_P_PodJL=0.3;
% Parameter:   id =  JDivk_DivJ, name = JDivk-DivJ
	global_par_JDivk_DivJ=0.3;
% Parameter:   id =  Ji_Ccka_DivK_P, name = Ji,Ccka-DivK_P
	global_par_Ji_Ccka_DivK_P=0.3;
% Parameter:   id =  Ja_CpdR_CckA_P, name = Ja,CpdR-CckA_P
	global_par_Ja_CpdR_CckA_P=0.8;
% Parameter:   id =  Ja_RcdA_CtrA_P, name = Ja,RcdA-CtrA_P
	global_par_Ja_RcdA_CtrA_P=0.4;
% Parameter:   id =  Ja_FtsQ_CtrA_P, name = Ja,FtsQ-CtrA_P
	global_par_Ja_FtsQ_CtrA_P=0.5;
% Parameter:   id =  Ja_FtsQ_DNA, name = Ja,FtsQ,DNA
	global_par_Ja_FtsQ_DNA=0.05;
% Parameter:   id =  JiFtsZ_CtrA_P, name = JiFtsZ-CtrA_P
	global_par_JiFtsZ_CtrA_P=0.7;
% Parameter:   id =  Ja_open, name = Ja,open
	global_par_Ja_open=0.01;
% Parameter:   id =  JZ_FtsQ, name = JZ-FtsQ
	global_par_JZ_FtsQ=0.8;
% Parameter:   id =  Ja_closed, name = Ja,closed
	global_par_Ja_closed=0.05;
% Parameter:   id =  thethaCtrA_P, name = thethaCtrA_P
	global_par_thethaCtrA_P=0.5;
% Parameter:   id =  thethaGcrA, name = thethaGcrA
	global_par_thethaGcrA=0.65;
% Parameter:   id =  thethaDnaA, name = thethaDnaA
	global_par_thethaDnaA=0.65;
% Parameter:   id =  thethaCori, name = thethaCori
	global_par_thethaCori=0.05;
% Parameter:   id =  thethaZring, name = thethaZring
	global_par_thethaZring=0.3;
% Parameter:   id =  thethaParAADP, name = thethaParAADP
	global_par_thethaParAADP=0.3;
% Parameter:   id =  Pelong, name = Pelong
	global_par_Pelong=0.05;
% Parameter:   id =  PccrM, name = PccrM
	global_par_PccrM=0.2;
% Parameter:   id =  PctrA, name = PctrA
	global_par_PctrA=0.375;
% Parameter:   id =  PftsZ, name = PftsZ
	global_par_PftsZ=0.625;

% Reaction: id = CtrA_synthesis_1, name = CtrA synthesis 1
	reaction_CtrA_synthesis_1=compartment_Caulobacter*function_with_1k_1J_3M(global_par_ks_CtrA_P1, global_par_Ji_CtrA_CtrA_P, x(4), x(2), x(10));

% Reaction: id = CtrA_synthesis_2, name = CtrA synthesis 2
	reaction_CtrA_synthesis_2=compartment_Caulobacter*function_with_1k_1J_2M__2(global_par_ks_CtrA_P2, global_par_Ja_CtrA_CtrA_P, x(4), x(10));

% Reaction: id = CtrA_decay, name = CtrA decay
	reaction_CtrA_decay=compartment_Caulobacter*global_par_kd_CtrA1*x(3);

% Reaction: id = CtrA_degradation, name = CtrA degradation
	reaction_CtrA_degradation=compartment_Caulobacter*function_for_deg_of_CtrA_and_CtrA_P(global_par_kd_CtrA2, x(6), global_par_Jd_CtrA_DivK_P, x(20), global_par_jd_CtrA_CpdR, x(21), x(3), global_par_jd_CtrA_RcdA);

% Reaction: id = CtrA_dephosphorylation, name = CtrA dephosphorylation
	reaction_CtrA_dephosphorylation=compartment_Caulobacter*global_par_ktrans_CtrA_P*x(4);

% Reaction: id = CtrA_phosphorylation, name = CtrA phosphorylation
	reaction_CtrA_phosphorylation=compartment_Caulobacter*function_1k_2M(global_par_ktrans_CtrA, x(3), x(19));

% Reaction: id = CtrA_P_degradation, name = CtrA_P degradation
	reaction_CtrA_P_degradation=compartment_Caulobacter*function_for_deg_of_CtrA_and_CtrA_P(global_par_kd_CtrA2, x(6), global_par_Jd_CtrA_DivK_P, x(20), global_par_jd_CtrA_CpdR, x(21), x(4), global_par_jd_CtrA_RcdA);

% Reaction: id = CtrA_P_decay, name = CtrA_P decay
	reaction_CtrA_P_decay=compartment_Caulobacter*global_par_kd_CtrA1*x(4);

% Reaction: id = DnaA_synthesis, name = DnaA synthesis
	reaction_DnaA_synthesis=compartment_Caulobacter*function_for_DnaA_1k_1J_2M(global_par_ks_DnaA1, global_par_JiDnaA_GcrA, x(2), x(9));

% Reaction: id = DnaA_synthesis_2, name = DnaA synthesis 2
	reaction_DnaA_synthesis_2=compartment_Caulobacter*function_for_DnaA_1k_1K_2M__2(global_par_ks_DnaA2, x(4), global_par_Ja_Dna_CtrA_P, x(9));

% Reaction: id = DnaA_decay, name = DnaA decay
	reaction_DnaA_decay=compartment_Caulobacter*global_par_kd_DnaA*x(1);

% Reaction: id = GcrA_synthesis, name = GcrA synthesis
	reaction_GcrA_synthesis=compartment_Caulobacter*function_with_1k_1J_2M(global_par_ks_GcrA, global_par_Ji_GcrA_CtrA, x(4), x(1));

% Reaction: id = GcrA_decay, name = GcrA decay
	reaction_GcrA_decay=compartment_Caulobacter*global_par_kd_GcrA*x(2);

% Reaction: id = Initiation_of_replication, name = Initiation of replication
	reaction_Initiation_of_replication=compartment_Caulobacter*function_for_Ini(global_par_ka_Ini, x(1), global_par_thethaDnaA, x(2), global_par_thethaGcrA, x(4), global_par_thethaCtrA_P, x(9), global_par_thethaCori, x(15));

% Reaction: id = Elongation, name = Elongation
	reaction_Elongation=compartment_Caulobacter*function_for_1k_1J_2M__4(global_par_kelong, x(28), global_par_Pelong, x(15));

% Reaction: id = DNA_synthesis, name = DNA synthesis
	reaction_DNA_synthesis=compartment_Caulobacter*function_for_1k_1J_2M__4(global_par_kelong, x(28), global_par_Pelong, x(15));

% Reaction: id = Inermediate_synthesis, name = Inermediate synthesis
	reaction_Inermediate_synthesis=compartment_Caulobacter*function_with_1k_1J_2M__2(global_par_ks_I, global_par_Ja_i_CtrA_P, x(4), x(11));

% Reaction: id = intermediate_decay, name = intermediate decay
	reaction_intermediate_decay=compartment_Caulobacter*global_par_kd_I*x(7);

% Reaction: id = CcrM_synthesis, name = CcrM synthesis
	reaction_CcrM_synthesis=compartment_Caulobacter*function_for_1k_1m(global_par_ks_CcrM, x(7));

% Reaction: id = CcrM_decay, name = CcrM decay
	reaction_CcrM_decay=compartment_Caulobacter*global_par_kd_CcrM*x(8);

% Reaction: id = methylation_cori, name = methylation cori
	reaction_methylation_cori=compartment_Caulobacter*function_for_h___(global_par_km_Cori, x(8), global_par_Jm_Cori, x(9));

% Reaction: id = methylation_ctrA, name = methylation ctrA
	reaction_methylation_ctrA=compartment_Caulobacter*function_for_h___(global_par_km_ctrA, x(8), global_par_Jm_ctrA, x(10));

% Reaction: id = methylation_ccrM, name = methylation ccrM
	reaction_methylation_ccrM=compartment_Caulobacter*function_for_h___(global_par_km_ccrM, x(8), global_par_jm_ccrM, x(11));

% Reaction: id = methylation_ftsZ, name = methylation ftsZ
	reaction_methylation_ftsZ=compartment_Caulobacter*function_for_h___(global_par_km_ftsz, x(8), global_par_Jm_ftsZ, x(12));

% Reaction: id = PodJL_synthesis, name = PodJL synthesis
	reaction_PodJL_synthesis=compartment_Caulobacter*function_with_1k_1J_3M(global_par_ks_PodJL, global_par_Ji_PodJL_CtrA_P, x(4), x(2), x(1));

% Reaction: id = Podjl_decay, name = Podjl decay
	reaction_Podjl_decay=compartment_Caulobacter*global_par_kd_PodJL1*x(16);

% Reaction: id = PodJL_degradation, name = PodJL degradation
	reaction_PodJL_degradation=compartment_Caulobacter*function_with_1k_1J_2M__2(global_par_kd_PodJL2, global_par_Jd_PodJL_PerP, x(17), x(16));

% Reaction: id = PodJL_degradation_2, name = PodJL degradation 2
	reaction_PodJL_degradation_2=compartment_Caulobacter*function_for_H__PodJL_and_PerP(global_par_ksep_PodJL, x(16), global_par_H, x(29), global_par_jsep_PodJL);

% Reaction: id = PerP_synthesis, name = PerP synthesis
	reaction_PerP_synthesis=compartment_Caulobacter*function_1k_2M(global_par_ks_PerP, x(4), x(16));

% Reaction: id = PerP_decay, name = PerP decay
	reaction_PerP_decay=compartment_Caulobacter*global_par_kd_PerP*x(17);

% Reaction: id = PerP_degradation, name = PerP degradation
	reaction_PerP_degradation=compartment_Caulobacter*function_for_H__PodJL_and_PerP(global_par_ksep_PerP, x(17), global_par_H, x(29), global_par_Jsep_PerP);

% Reaction: id = DivJ_synthesis2, name = DivJ synthesis2
	reaction_DivJ_synthesis2=compartment_Caulobacter*function_for_DivJ1(global_par_H, global_par_ks_DivJ2, global_par_Ji_DivJ_PodJL, x(16));

% Reaction: id = DivJ_decay, name = DivJ decay
	reaction_DivJ_decay=compartment_Caulobacter*global_par_kd_DivJ*x(18);

% Reaction: id = DivJ_degradation, name = DivJ degradation
	reaction_DivJ_degradation=compartment_Caulobacter*function_dor_DivJ_2(global_par_ksep_divJ, x(18), global_par_H, x(29), global_par_Jsep_DivJ);

% Reaction: id = DivK_synthesis, name = DivK synthesis
	reaction_DivK_synthesis=compartment_Caulobacter*function_for_1J_1k_1m(global_par_ks_DivK, x(4), global_par_Ja_DivK);

% Reaction: id = DivK_decay, name = DivK decay
	reaction_DivK_decay=compartment_Caulobacter*global_par_kd_DivK*x(5);

% Reaction: id = DivK_dephosphorylation, name = DivK dephosphorylation
	reaction_DivK_dephosphorylation=compartment_Caulobacter*function_for_Divk_1(global_par_ktrans_DivK_P, x(6), x(16), global_par_JDivk_P_PodJL, global_par_H, x(29));

% Reaction: id = DivK_phosphorylation, name = DivK phosphorylation
	reaction_DivK_phosphorylation=compartment_Caulobacter*function_for_DivK2(global_par_ktrans_DivK, x(5), x(18), global_par_JDivk_DivJ, x(29), global_par_H);

% Reaction: id = CckA_P_decay, name = CckA_P decay
	reaction_CckA_P_decay=compartment_Caulobacter*global_par_ktrans_CckA_P*x(19);

% Reaction: id = CckA_P_synthesis, name = CckA_P synthesis
	reaction_CckA_P_synthesis=compartment_Caulobacter*function_for_CckA(global_par_ktrans_CckA, x(25), x(19), global_par_Ji_Ccka_DivK_P, x(6));

% Reaction: id = CpdR_synthesis, name = CpdR synthesis
	reaction_CpdR_synthesis=compartment_Caulobacter*function_for_CpdR_1(global_par_ktrans_CpdR_P, x(26), x(20));

% Reaction: id = CpdR_degradation, name = CpdR degradation
	reaction_CpdR_degradation=compartment_Caulobacter*function_for_CpdR_2(global_par_ktrans_CpdR, x(20), x(19), global_par_Ja_CpdR_CckA_P);

% Reaction: id = ParAADP_synthesis, name = ParAADP synthesis
	reaction_ParAADP_synthesis=compartment_Caulobacter*function_for_CpdR_1(global_par_ktrans_ParAATP, x(27), x(22));

% Reaction: id = parAADP_degradation, name = parAADP degradation
	reaction_parAADP_degradation=compartment_Caulobacter*function_for_ParAADP_2(global_par_ktrans_ParAADP, x(15), x(22));

% Reaction: id = RcdA_synthesis, name = RcdA synthesis
	reaction_RcdA_synthesis=compartment_Caulobacter*function_for_1J_1k_1m(global_par_ks_RcdA, x(4), global_par_Ja_RcdA_CtrA_P);

% Reaction: id = RcdA_decay, name = RcdA decay
	reaction_RcdA_decay=compartment_Caulobacter*global_par_kd_RcdA*x(21);

% Reaction: id = FtsQ_synthesis, name = FtsQ synthesis
	reaction_FtsQ_synthesis=compartment_Caulobacter*function_for_FtsQ(global_par_ks_FtsQ, x(4), global_par_Ja_FtsQ_CtrA_P, x(9), global_par_Ja_FtsQ_DNA);

% Reaction: id = FtsQ_decay, name = FtsQ decay
	reaction_FtsQ_decay=compartment_Caulobacter*global_par_kd_FtsQ*x(30);

% Reaction: id = FtsZ_synthesis, name = FtsZ synthesis
	reaction_FtsZ_synthesis=compartment_Caulobacter*function_for_FtsZ_synthesis(global_par_ks_FtsZ, global_par_JiFtsZ_CtrA_P, x(4), x(1), x(12));

% Reaction: id = FtsZ_decay, name = FtsZ decay
	reaction_FtsZ_decay=compartment_Caulobacter*global_par_kd_FtsZ1*x(23);

% Reaction: id = FtsZ_degradation_1, name = FtsZ degradation 1
	reaction_FtsZ_degradation_1=compartment_Caulobacter*function_for_1k_1_M1_M2(global_par_kd_FtsZ2, x(24), x(23));

% Reaction: id = FtsZ_degradation_2, name = FtsZ degradation 2
	reaction_FtsZ_degradation_2=compartment_Caulobacter*function_for_1k_1_M1_M2(global_par_kd_FtsZ3, x(29), x(23));

% Reaction: id = Zring_closing, name = Zring closing
	reaction_Zring_closing=compartment_Caulobacter*function_for_1k_1_M1_M2(global_par_ks_Zring, x(24), x(23));

% Reaction: id = Z_synthesis, name = Z synthesis
	reaction_Z_synthesis=compartment_Caulobacter*function_for_Z_synthesis(global_par_kZ_open, x(29), global_par_Ja_open);

% Reaction: id = Z_degrdataion, name = Z degrdataion
	reaction_Z_degrdataion=compartment_Caulobacter*function_for_Z_deg(global_par_kZ_closed1, global_par_kZ_closed2, x(30), global_par_JZ_FtsQ, x(24), global_par_thethaZring, x(22), global_par_thethaParAADP, x(29), global_par_Ja_closed);

% Reaction: id = DivK_P_decay, name = DivK_P decay
	reaction_DivK_P_decay=compartment_Caulobacter*global_par_kd_DivK*x(6);

%Event: id=Ini_equal_0_05Count
	event_Ini_equal_0_05Count=x(13) >= (0.05*x(15));

	if(event_Ini_equal_0_05Count) 
		x(15)=x(15)*2;
		x(28)=x(28)+x(13);
		x(14)=x(14)+x(13);
		x(13)=0;
		x(9)=1;
	end

%Event: id=Z_equals_0
	event_Z_equals_0=x(29) <= 0.1;

	if(event_Z_equals_0) 
		x(15)=x(15)/2;
		x(24)=0;
		x(28)=x(28)/2;
		x(14)=x(14)/2;
	end

%Event: id=Elong_reset_by_count
	event_Elong_reset_by_count=x(28) >= (x(15)/2);

	if(event_Elong_reset_by_count) 
		x(28)=0;
	end

%Event: id=hcori_reset_by_Elong
	event_hcori_reset_by_Elong=(x(28)*2) >= (global_par_Pelong*x(15));

	if(event_hcori_reset_by_Elong) 
		x(9)=1;
	end

%Event: id=hctrA_reset_by_Elong
	event_hctrA_reset_by_Elong=(x(28)*2) >= (global_par_PctrA*x(15));

	if(event_hctrA_reset_by_Elong) 
		x(10)=1;
	end

%Event: id=hccrM_reset_by_Elong
	event_hccrM_reset_by_Elong=(x(28)*2) >= (global_par_PccrM*x(15));

	if(event_hccrM_reset_by_Elong) 
		x(11)=1;
	end

%Event: id=hftsZ_reset_by_Elong
	event_hftsZ_reset_by_Elong=(x(28)*2) >= (global_par_PftsZ*x(15));

	if(event_hftsZ_reset_by_Elong) 
		x(12)=1;
	end

	xdot=zeros(30,1);
	
% Species:   id = DnaA, name = DnaA, affected by kineticLaw
	xdot(1) = (1/(compartment_Caulobacter))*(( 1.0 * reaction_DnaA_synthesis) + ( 1.0 * reaction_DnaA_synthesis_2) + (-1.0 * reaction_DnaA_decay));
	
% Species:   id = GcrA, name = GcrA, affected by kineticLaw
	xdot(2) = (1/(compartment_Caulobacter))*(( 1.0 * reaction_GcrA_synthesis) + (-1.0 * reaction_GcrA_decay));
	
% Species:   id = CtrA, name = CtrA, affected by kineticLaw
	xdot(3) = (1/(compartment_Caulobacter))*(( 1.0 * reaction_CtrA_synthesis_1) + ( 1.0 * reaction_CtrA_synthesis_2) + (-1.0 * reaction_CtrA_decay) + (-1.0 * reaction_CtrA_degradation) + ( 1.0 * reaction_CtrA_dephosphorylation) + (-1.0 * reaction_CtrA_phosphorylation));
	
% Species:   id = CtrA_P, name = CtrA_P, affected by kineticLaw
	xdot(4) = (1/(compartment_Caulobacter))*((-1.0 * reaction_CtrA_dephosphorylation) + ( 1.0 * reaction_CtrA_phosphorylation) + (-1.0 * reaction_CtrA_P_degradation) + (-1.0 * reaction_CtrA_P_decay));
	
% Species:   id = DivK, name = DivK, affected by kineticLaw
	xdot(5) = (1/(compartment_Caulobacter))*(( 1.0 * reaction_DivK_synthesis) + (-1.0 * reaction_DivK_decay) + ( 1.0 * reaction_DivK_dephosphorylation) + (-1.0 * reaction_DivK_phosphorylation));
	
% Species:   id = DivK_P, name = DivK_P, affected by kineticLaw
	xdot(6) = (1/(compartment_Caulobacter))*((-1.0 * reaction_DivK_dephosphorylation) + ( 1.0 * reaction_DivK_phosphorylation) + (-1.0 * reaction_DivK_P_decay));
	
% Species:   id = I, name = I, affected by kineticLaw
	xdot(7) = (1/(compartment_Caulobacter))*(( 1.0 * reaction_Inermediate_synthesis) + (-1.0 * reaction_intermediate_decay));
	
% Species:   id = CcrM, name = CcrM, affected by kineticLaw
	xdot(8) = (1/(compartment_Caulobacter))*(( 1.0 * reaction_CcrM_synthesis) + (-1.0 * reaction_CcrM_decay));
	
% Species:   id = hcori, name = hcori, affected by kineticLaw
	xdot(9) = (1/(compartment_Caulobacter))*((-1.0 * reaction_methylation_cori));
	
% Species:   id = hctrA, name = hctrA, affected by kineticLaw
	xdot(10) = (1/(compartment_Caulobacter))*((-1.0 * reaction_methylation_ctrA));
	
% Species:   id = hccrM, name = hccrM, affected by kineticLaw
	xdot(11) = (1/(compartment_Caulobacter))*((-1.0 * reaction_methylation_ccrM));
	
% Species:   id = hftsZ, name = hftsZ, affected by kineticLaw
	xdot(12) = (1/(compartment_Caulobacter))*((-1.0 * reaction_methylation_ftsZ));
	
% Species:   id = Ini, name = Ini, affected by kineticLaw
	xdot(13) = (1/(compartment_Caulobacter))*(( 1.0 * reaction_Initiation_of_replication));
	
% Species:   id = DNA, name = DNA, affected by kineticLaw
	xdot(14) = (1/(compartment_Caulobacter))*(( 1.0 * reaction_DNA_synthesis));
	
% Species:   id = Count, name = Count
% Warning species is not changed by either rules or reactions
	xdot(15) = ;
	
% Species:   id = PodJL, name = PodJL, affected by kineticLaw
	xdot(16) = (1/(compartment_Caulobacter))*(( 1.0 * reaction_PodJL_synthesis) + (-1.0 * reaction_Podjl_decay) + (-1.0 * reaction_PodJL_degradation) + (-1.0 * reaction_PodJL_degradation_2));
	
% Species:   id = PerP, name = PerP, affected by kineticLaw
	xdot(17) = (1/(compartment_Caulobacter))*(( 1.0 * reaction_PerP_synthesis) + (-1.0 * reaction_PerP_decay) + (-1.0 * reaction_PerP_degradation));
	
% Species:   id = DivJ, name = DivJ, affected by kineticLaw
	xdot(18) = (1/(compartment_Caulobacter))*(( 1.0 * reaction_DivJ_synthesis) + ( 1.0 * reaction_DivJ_synthesis2) + (-1.0 * reaction_DivJ_decay) + (-1.0 * reaction_DivJ_degradation));
	
% Species:   id = CckA_P, name = CckA_P, affected by kineticLaw
	xdot(19) = (1/(compartment_Caulobacter))*((-1.0 * reaction_CckA_P_decay) + ( 1.0 * reaction_CckA_P_synthesis));
	
% Species:   id = CpdR, name = CpdR, affected by kineticLaw
	xdot(20) = (1/(compartment_Caulobacter))*(( 1.0 * reaction_CpdR_synthesis) + (-1.0 * reaction_CpdR_degradation));
	
% Species:   id = RcdA, name = RcdA, affected by kineticLaw
	xdot(21) = (1/(compartment_Caulobacter))*(( 1.0 * reaction_RcdA_synthesis) + (-1.0 * reaction_RcdA_decay));
	
% Species:   id = ParAADP, name = ParAADP, affected by kineticLaw
	xdot(22) = (1/(compartment_Caulobacter))*(( 1.0 * reaction_ParAADP_synthesis) + (-1.0 * reaction_parAADP_degradation));
	
% Species:   id = FtsZ, name = FtsZ, affected by kineticLaw
	xdot(23) = (1/(compartment_Caulobacter))*(( 1.0 * reaction_FtsZ_synthesis) + (-1.0 * reaction_FtsZ_decay) + (-1.0 * reaction_FtsZ_degradation_1) + (-1.0 * reaction_FtsZ_degradation_2));
	
% Species:   id = Zring, name = Zring, affected by kineticLaw
	xdot(24) = (1/(compartment_Caulobacter))*(( 1.0 * reaction_Zring_closing));
	
% Species:   id = CckA_tot, name = CckA_tot
% Warning species is not changed by either rules or reactions
	xdot(25) = ;
	
% Species:   id = CpdR_tot, name = CpdR_tot
% Warning species is not changed by either rules or reactions
	xdot(26) = ;
	
% Species:   id = ParA_tot, name = ParA_tot
% Warning species is not changed by either rules or reactions
	xdot(27) = ;
	
% Species:   id = Elong, name = Elong, affected by kineticLaw
	xdot(28) = (1/(compartment_Caulobacter))*(( 1.0 * reaction_Elongation));
	
% Species:   id = Z, name = Z, affected by kineticLaw
	xdot(29) = (1/(compartment_Caulobacter))*(( 1.0 * reaction_Z_synthesis) + (-1.0 * reaction_Z_degrdataion));
	
% Species:   id = FtsQ, name = FtsQ, affected by kineticLaw
	xdot(30) = (1/(compartment_Caulobacter))*(( 1.0 * reaction_FtsQ_synthesis) + (-1.0 * reaction_FtsQ_decay));
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=function_with_1k_1J_3M(k,J,M1,M2,M3), z=(k*J^2/(J^2+M1^2)*M2*M3);end

function z=function_with_1k_1J_2M__2(k,J,M1,M2), z=(k*M1^2/(J^2+M1^2)*M2);end

function z=function_for_deg_of_CtrA_and_CtrA_P(k1,M1,J1,M2,J2,M3,M4,J3), z=(k1*M1^2/(J1^2+M1^2)*M2^4/(J2^4+M2^4)*M3^4/(J3^4+M3^4)*M4);end

function z=function_1k_2M(k,M1,M2), z=(k*M1*M2);end

function z=function_for_DnaA_1k_1J_2M(k,J,M1,M2), z=(k*J^2/(J^2+M1^2)*(2-M2));end

function z=function_for_DnaA_1k_1K_2M__2(k,M1,J,M2), z=(k*M1^2/(J^2+M1^2)*(2-M2));end

function z=function_with_1k_1J_2M(k,J,M1,M2), z=(k*J^2/(J^2+M1^2)*M2);end

function z=function_for_Ini(k,M1,theta1,M2,theta2,M3,theta3,M4,theta4,M5), z=(k*(M1/theta1)^4*(M2/theta2)^4/(1+(M1/theta1)^4+(M2/theta2)^4+(M3/theta3)^4+(M2/theta2)^4*(M3/theta3)^4+(M4/theta4)^4)*M5);end

function z=function_for_1k_1J_2M__4(k,M1,J,M2), z=(k*M1^4/(J^4+M1^4)*M2);end

function z=function_for_1k_1m(k,M), z=(k*M);end

function z=function_for_h___(k,M1,J,S), z=(k*M1^4/(J^4+M1^4)*S);end

function z=function_for_H__PodJL_and_PerP(k,S,H,M,J), z=(k*S*H*(1-M)/(J+1-M));end

function z=function_for_DivJ1(H,k,J,M), z=((1-H)*k*J^2/(J^2+M^2));end

function z=function_dor_DivJ_2(k,M1,H,M2,J), z=(k*M1*(1-H)*(1-M2)/(J+1-M2));end

function z=function_for_1J_1k_1m(k,M1,J), z=(k*M1^2/(J^2+M1^2));end

function z=function_for_Divk_1(k,M1,M2,J,H,M4), z=(k*M1*M2^2/(J^2+M2^2)*(1+H*(M4-1)));end

function z=function_for_DivK2(k,M1,M2,J,M4,H), z=(k*M1*M2^2/(J^2+M2^2)*(M4+H*(1-M4)));end

function z=function_for_CckA(k,M1,M2,J,M3), z=(k*(M1-M2)*J^2/(J^2+M3^2));end

function z=function_for_CpdR_1(k,M1,M2), z=(k*(M1-M2));end

function z=function_for_CpdR_2(k,M1,M2,J), z=(k*M1*M2^2/(J^2+M2^2));end

function z=function_for_ParAADP_2(k,M1,M2), z=(k*(M1-1)*M2);end

function z=function_for_FtsQ(k,M1,J1,M2,J2), z=(k*M1^2/(J1^2+M1^2)*M2^4/(J2^4+M2^4));end

function z=function_for_FtsZ_synthesis(k,J,M1,M2,M3), z=(k*J^2/(J^2+M1^2)*M2*(1-M3));end

function z=function_for_1k_1_M1_M2(k,M1,M2), z=(k*(1-M1)*M2);end

function z=function_for_Z_synthesis(k,M,J), z=(k*(1-M)/(J+1-M));end

function z=function_for_Z_deg(k1,k2,M1,J1,M2,theta1,M3,theta2,S,J2), z=((k1+k2*M1^4/(J1^4+M1^4)*(M2/theta1)^4/(1+(M2/theta1)^4+(M3/theta2)^4))*S/(J2+S));end

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


