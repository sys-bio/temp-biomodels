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
% Model name = Heldt2018 - Proliferation-quiescence decision in response to DNA damage
%
% is http://identifiers.org/biomodels.db/MODEL1703030000
% is http://identifiers.org/biomodels.db/BIOMD0000000700
% isDescribedBy http://identifiers.org/pubmed/29463760
% is http://identifiers.org/biomodels.db/MODEL1703030000
% is http://identifiers.org/biomodels.db/BIOMD0000000700
%


function main()
%Initial conditions vector
	x0=zeros(30,1);
	x0(1) = 0.0;
	x0(2) = 5.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 1.0;
	x0(8) = 0.0;
	x0(9) = 0.6;
	x0(10) = 0.5;
	x0(11) = 1.2;
	x0(12) = 0.0;
	x0(13) = 0.0;
	x0(14) = 0.5;
	x0(15) = 0.0;
	x0(16) = 1.0;
	x0(17) = 0.0;
	x0(18) = 0.0;
	x0(19) = 0.0;
	x0(20) = 0.0;
	x0(21) = 0.0;
	x0(22) = 0.0;
	x0(23) = 0.5;
	x0(24) = 5.0;
	x0(25) = 0.0;
	x0(26) = 0.0;
	x0(27) = 1.0;
	x0(28) = 0.5;
	x0(29) = 1.2;
	x0(30) = 0.6;


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

% Compartment: id = Cell, name = cell, constant
	compartment_Cell=1.0;
% Parameter:   id =  Cd, name = Cd
	global_par_Cd=0.65;
% Parameter:   id =  Skp2, name = Skp2
	global_par_Skp2=1.0;
% Parameter:   id =  Cdt2, name = Cdt2
	global_par_Cdt2=1.0;
% Parameter:   id =  kSyE2f, name = kSyE2f
	global_par_kSyE2f=0.03;
% Parameter:   id =  kSyE2fE2f, name = kSyE2fE2f
	global_par_kSyE2fE2f=0.04;
% Parameter:   id =  jSyE2f, name = jSyE2f
	global_par_jSyE2f=0.2;
% Parameter:   id =  kAsRbE2f, name = kAsRbE2f
	global_par_kAsRbE2f=5.0;
% Parameter:   id =  kDsRbE2f, name = kDsRbE2f
	global_par_kDsRbE2f=0.005;
% Parameter:   id =  kDeE2f, name = kDeE2f
	global_par_kDeE2f=0.05;
% Parameter:   id =  kPhRbCd, name = kPhRbCd
	global_par_kPhRbCd=0.2;
% Parameter:   id =  kPhRbCe, name = kPhRbCe
	global_par_kPhRbCe=0.3;
% Parameter:   id =  kPhRbCa, name = kPhRbCa
	global_par_kPhRbCa=0.3;
% Parameter:   id =  kDpRb, name = kDpRb
	global_par_kDpRb=0.05;
% Parameter:   id =  kSyE1, name = kSyE1
	global_par_kSyE1=0.005;
% Parameter:   id =  kDeE1C1, name = kDeE1C1
	global_par_kDeE1C1=0.005;
% Parameter:   id =  kDeE1, name = kDeE1
	global_par_kDeE1=5.0E-4;
% Parameter:   id =  kPhC1, name = kPhC1
	global_par_kPhC1=0.0;
% Parameter:   id =  kPhC1Ce, name = kPhC1Ce
	global_par_kPhC1Ce=0.01;
% Parameter:   id =  kPhC1Ca, name = kPhC1Ca
	global_par_kPhC1Ca=1.0;
% Parameter:   id =  kDpC1, name = kDpC1
	global_par_kDpC1=0.05;
% Parameter:   id =  kAsE1C1, name = kAsE1C1
	global_par_kAsE1C1=10.0;
% Parameter:   id =  kDsE1C1, name = kDsE1C1
	global_par_kDsE1C1=0.01;
% Parameter:   id =  kSyP21, name = kSyP21
	global_par_kSyP21=0.002;
% Parameter:   id =  kSyP21P53, name = kSyP21P53
	global_par_kSyP21P53=0.008;
% Parameter:   id =  kDeP21, name = kDeP21
	global_par_kDeP21=0.0025;
% Parameter:   id =  kDeP21Cy, name = kDeP21Cy
	global_par_kDeP21Cy=0.007;
% Parameter:   id =  kDeP21aRc, name = kDeP21aRc
	global_par_kDeP21aRc=1.0;
% Parameter:   id =  kSyCe, name = kSyCe
	global_par_kSyCe=0.01;
% Parameter:   id =  kSyCa, name = kSyCa
	global_par_kSyCa=0.02;
% Parameter:   id =  kAsCyP21, name = kAsCyP21
	global_par_kAsCyP21=1.0;
% Parameter:   id =  kDsCyP21, name = kDsCyP21
	global_par_kDsCyP21=0.05;
% Parameter:   id =  kDeCe, name = kDeCe
	global_par_kDeCe=0.004;
% Parameter:   id =  kDeCa, name = kDeCa
	global_par_kDeCa=0.01;
% Parameter:   id =  kDeCeCa, name = kDeCeCa
	global_par_kDeCeCa=0.015;
% Parameter:   id =  kDeCaC1, name = kDeCaC1
	global_par_kDeCaC1=2.0;
% Parameter:   id =  kImPc, name = kImPc
	global_par_kImPc=0.003;
% Parameter:   id =  kExPc, name = kExPc
	global_par_kExPc=0.006;
% Parameter:   id =  kPhRc, name = kPhRc
	global_par_kPhRc=0.1;
% Parameter:   id =  kDpRc, name = kDpRc
	global_par_kDpRc=0.05;
% Parameter:   id =  jCy, name = jCy
	global_par_jCy=1.8;
% Parameter:   id =  n, name = n
	global_par_n=6.0;
% Parameter:   id =  kAsRcPc, name = kAsRcPc
	global_par_kAsRcPc=0.01;
% Parameter:   id =  kDsRcPc, name = kDsRcPc
	global_par_kDsRcPc=0.001;
% Parameter:   id =  kAsPcP21, name = kAsPcP21
	global_par_kAsPcP21=100.0;
% Parameter:   id =  kDsPcP21, name = kDsPcP21
	global_par_kDsPcP21=0.01;
% Parameter:   id =  kSyDna, name = kSyDna
	global_par_kSyDna=0.0093;
% Parameter:   id =  kSyP53, name = kSyP53
	global_par_kSyP53=0.05;
% Parameter:   id =  kDeP53, name = kDeP53
	global_par_kDeP53=0.05;
% Parameter:   id =  jP53, name = jP53
	global_par_jP53=0.01;
% Parameter:   id =  kGeDam, name = kGeDam
	global_par_kGeDam=0.001;
% Parameter:   id =  kGeDamArc, name = kGeDamArc
	global_par_kGeDamArc=0.012;
% Parameter:   id =  kReDam, name = kReDam
	global_par_kReDam=0.001;
% Parameter:   id =  kReDamP53, name = kReDamP53
	global_par_kReDamP53=0.005;
% Parameter:   id =  jDam, name = jDam
	global_par_jDam=0.5;
% Parameter:   id =  kSyPr, name = kSyPr
	global_par_kSyPr=0.01;
% Parameter:   id =  kDePr, name = kDePr
	global_par_kDePr=1.0E-4;
% assignmentRule: variable = tRb
	x(24)=x(1)+x(2)+x(4);
% assignmentRule: variable = tE2f
	x(25)=x(3)+x(4);
% assignmentRule: variable = tE1
	x(26)=x(5)+x(8);
% assignmentRule: variable = tC1
	x(27)=x(6)+x(7)+x(8);
% assignmentRule: variable = tCe
	x(28)=x(10)+x(12);
% assignmentRule: variable = tCa
	x(29)=x(11)+x(13);
% assignmentRule: variable = tP21
	x(30)=x(9)+x(12)+x(13)+x(15)+x(19);

% Reaction: id = Phosphorylation_of_Rb, name = Phosphorylation of Rb
	reaction_Phosphorylation_of_Rb=compartment_Cell*rPhRb_1(x(11), global_par_Cd, x(10), x(1), global_par_kPhRbCa, global_par_kPhRbCd, global_par_kPhRbCe);

% Reaction: id = Phosphorylation_Rb_in_Rb_E2F_complexes, name = Phosphorylation Rb in Rb:E2F complexes
	reaction_Phosphorylation_Rb_in_Rb_E2F_complexes=compartment_Cell*rPhRb_2(x(11), global_par_Cd, x(10), x(4), global_par_kPhRbCa, global_par_kPhRbCd, global_par_kPhRbCe);

% Reaction: id = Dephosphorylation_of_Rb, name = Dephosphorylation of Rb
	reaction_Dephosphorylation_of_Rb=compartment_Cell*global_par_kDpRb*x(2);

% Reaction: id = Synthesis_of_E2F, name = Synthesis of E2F
	reaction_Synthesis_of_E2F=compartment_Cell*rSyE2f_1(x(3), global_par_jSyE2f, global_par_kSyE2f, global_par_kSyE2fE2f);

% Reaction: id = Degradation_of_E2F, name = Degradation of E2F
	reaction_Degradation_of_E2F=compartment_Cell*global_par_kDeE2f*x(3);

% Reaction: id = Degradation_of_E2F_in_Rb_E2F_complexes, name = Degradation of E2F in Rb:E2F complexes
	reaction_Degradation_of_E2F_in_Rb_E2F_complexes=compartment_Cell*global_par_kDeE2f*x(4);

% Reaction: id = Association_dissociation_of_Rb_and_E2F, name = Association/dissociation of Rb and E2F
	reaction_Association_dissociation_of_Rb_and_E2F=compartment_Cell*(global_par_kAsRbE2f*x(1)*x(3)-global_par_kDsRbE2f*x(4));

% Reaction: id = Synthesis_of_p21, name = Synthesis of p21
	reaction_Synthesis_of_p21=compartment_Cell*rSyP21_1(x(21), global_par_kSyP21, global_par_kSyP21P53);

% Reaction: id = Synthesis_of_CycE, name = Synthesis of CycE
	reaction_Synthesis_of_CycE=compartment_Cell*global_par_kSyCe*x(3);

% Reaction: id = Synthesis_of_CycA, name = Synthesis of CycA
	reaction_Synthesis_of_CycA=compartment_Cell*global_par_kSyCa*x(3);

% Reaction: id = Association_dissociation_of_CycE_Cdk2_and_p21, name = Association/dissociation of CycE:Cdk2 and p21
	reaction_Association_dissociation_of_CycE_Cdk2_and_p21=compartment_Cell*(global_par_kAsCyP21*x(10)*x(9)-global_par_kDsCyP21*x(12));

% Reaction: id = Association_dissociation_of_CycA_Cdk2_and_p21, name = Association/dissociation of CycA:Cdk2 and p21
	reaction_Association_dissociation_of_CycA_Cdk2_and_p21=compartment_Cell*(global_par_kAsCyP21*x(11)*x(9)-global_par_kDsCyP21*x(13));

% Reaction: id = Degradation_of_p21_in_CycE_Cdk2_p21_complexes, name = Degradation of p21 in CycE:Cdk2:p21 complexes
	reaction_Degradation_of_p21_in_CycE_Cdk2_p21_complexes=compartment_Cell*rDeP21_1(x(11), global_par_Cdt2, x(10), x(12), global_par_Skp2, x(18), global_par_kDeP21, global_par_kDeP21Cy, global_par_kDeP21aRc);

% Reaction: id = Degradation_of_p21_in_CycA_Cdk2_p21_complexes, name = Degradation of p21 in CycA:Cdk2:p21 complexes
	reaction_Degradation_of_p21_in_CycA_Cdk2_p21_complexes=compartment_Cell*rDeP21_2(x(11), x(13), global_par_Cdt2, x(10), global_par_Skp2, x(18), global_par_kDeP21, global_par_kDeP21Cy, global_par_kDeP21aRc);

% Reaction: id = Degradation_of_CycE_in_CycE_Cdk2_complexes, name = Degradation of CycE in CycE:Cdk2 complexes
	reaction_Degradation_of_CycE_in_CycE_Cdk2_complexes=compartment_Cell*rDeCe_1(x(11), x(10), global_par_kDeCe, global_par_kDeCeCa);

% Reaction: id = Degradation_of_CycE_in_CycE_Cdk2_p21_complexes, name = Degradation of CycE in CycE:Cdk2:p21 complexes
	reaction_Degradation_of_CycE_in_CycE_Cdk2_p21_complexes=compartment_Cell*rDeCe_2(x(11), x(12), global_par_kDeCe, global_par_kDeCeCa);

% Reaction: id = Degradation_of_CycA_in_CycA_Cdk2_complexes, name = Degradation of CycA in CycA:Cdk2 complexes
	reaction_Degradation_of_CycA_in_CycA_Cdk2_complexes=compartment_Cell*rDeCa_1(x(6), x(11), global_par_kDeCa, global_par_kDeCaC1);

% Reaction: id = Degradation_of_CycA_in_CycA_Cdk2_p21_complexes, name = Degradation of CycA in CycA:Cdk2:p21 complexes
	reaction_Degradation_of_CycA_in_CycA_Cdk2_p21_complexes=compartment_Cell*rDeCa_2(x(6), x(13), global_par_kDeCa, global_par_kDeCaC1);

% Reaction: id = Degradation_of_free_p21, name = Degradation of free p21
	reaction_Degradation_of_free_p21=compartment_Cell*rDeP21_3(x(11), global_par_Cdt2, x(10), x(9), global_par_Skp2, x(18), global_par_kDeP21, global_par_kDeP21Cy, global_par_kDeP21aRc);

% Reaction: id = Synthesis_of_Emi1, name = Synthesis of Emi1
	reaction_Synthesis_of_Emi1=compartment_Cell*global_par_kSyE1*x(3);

% Reaction: id = Degradation_of_Emi1, name = Degradation of Emi1
	reaction_Degradation_of_Emi1=compartment_Cell*global_par_kDeE1*x(5);

% Reaction: id = Association_dissociation_of_Emi1_APC_C_Cdh1_complexes, name = Association/dissociation of Emi1:APC/C^Cdh1 complexes
	reaction_Association_dissociation_of_Emi1_APC_C_Cdh1_complexes=compartment_Cell*(global_par_kAsE1C1*x(5)*x(6)-global_par_kDsE1C1*x(8));

% Reaction: id = Degradation_of_Emi1_in_Emi1_APC_C_Cdh1_complexes, name = Degradation of Emi1 in Emi1:APC/C^Cdh1 complexes
	reaction_Degradation_of_Emi1_in_Emi1_APC_C_Cdh1_complexes=compartment_Cell*global_par_kDeE1C1*x(8);

% Reaction: id = Phosphorylation_of_free_APC_C_Cdh1, name = Phosphorylation of free APC/C^Cdh1
	reaction_Phosphorylation_of_free_APC_C_Cdh1=compartment_Cell*rPhC1_1(x(6), x(11), x(10), global_par_kPhC1, global_par_kPhC1Ca, global_par_kPhC1Ce);

% Reaction: id = Phosphorylation_of_APC_C_Cdh1_in_Emi1_APC_C_Cdh1_complexes, name = Phosphorylation of APC/C^Cdh1 in Emi1:APC/C^Cdh1 complexes
	reaction_Phosphorylation_of_APC_C_Cdh1_in_Emi1_APC_C_Cdh1_complexes=compartment_Cell*rPhC1_2(x(11), x(10), x(8), global_par_kPhC1, global_par_kPhC1Ca, global_par_kPhC1Ce);

% Reaction: id = Dephosphorylation_of_APC_C_Cdh1, name = Dephosphorylation of APC/C^Cdh1
	reaction_Dephosphorylation_of_APC_C_Cdh1=compartment_Cell*global_par_kDpC1*x(7);

% Reaction: id = Nuclear_export_of_active_PCNA, name = Nuclear export of active PCNA
	reaction_Nuclear_export_of_active_PCNA=compartment_Cell*global_par_kExPc*x(14);

% Reaction: id = Nuclear_export_of_inactive_PCNA, name = Nuclear export of inactive PCNA
	reaction_Nuclear_export_of_inactive_PCNA=compartment_Cell*global_par_kExPc*x(15);

% Reaction: id = Association_dissociation_of_PCNA_and_p21, name = Association/dissociation of PCNA and p21
	reaction_Association_dissociation_of_PCNA_and_p21=compartment_Cell*(global_par_kAsPcP21*x(14)*x(9)-global_par_kDsPcP21*x(15));

% Reaction: id = Degradation_of_p21_in_PCNA_p21_complexes, name = Degradation of p21 in PCNA:p21 complexes
	reaction_Degradation_of_p21_in_PCNA_p21_complexes=compartment_Cell*rDeP21_4(x(11), global_par_Cdt2, x(10), global_par_Skp2, x(18), x(15), global_par_kDeP21, global_par_kDeP21Cy, global_par_kDeP21aRc);

% Reaction: id = Association_dissociation_of_active_PCNA_and_replication_complexes, name = Association/dissociation of active PCNA and replication complexes
	reaction_Association_dissociation_of_active_PCNA_and_replication_complexes=compartment_Cell*(global_par_kAsRcPc*x(14)*x(17)-global_par_kDsRcPc*x(18));

% Reaction: id = Association_dissociation_of_inactive_PCNA_and_replication_complexes, name = Association/dissociation of inactive PCNA and replication complexes
	reaction_Association_dissociation_of_inactive_PCNA_and_replication_complexes=compartment_Cell*(global_par_kAsRcPc*x(15)*x(17)-global_par_kDsRcPc*x(19));

% Reaction: id = Phosphorylation_priming_of_replication_complexes, name = Phosphorylation/priming of replication complexes
	reaction_Phosphorylation_priming_of_replication_complexes=compartment_Cell*rPhRc_1(x(11), x(10), x(16), global_par_jCy, global_par_kPhRc, global_par_n);

% Reaction: id = Dephosphorylation_of_replication_complexes, name = Dephosphorylation of replication complexes
	reaction_Dephosphorylation_of_replication_complexes=compartment_Cell*global_par_kDpRc*x(17);

% Reaction: id = Association_dissociation_of_p21_and_replication_complexes, name = Association/dissociation of p21 and replication complexes
	reaction_Association_dissociation_of_p21_and_replication_complexes=compartment_Cell*(global_par_kAsPcP21*x(18)*x(9)-global_par_kDsPcP21*x(19));

% Reaction: id = Degradation_of_p21_in_inactive_replication_complexes, name = Degradation of p21 in inactive replication complexes
	reaction_Degradation_of_p21_in_inactive_replication_complexes=compartment_Cell*rDeP21_5(x(11), global_par_Cdt2, x(10), global_par_Skp2, x(18), x(19), global_par_kDeP21, global_par_kDeP21Cy, global_par_kDeP21aRc);

% Reaction: id = Dissassembly_of_RC, name = Dissassembly of RC
	reaction_Dissassembly_of_RC=compartment_Cell*rDsRc_1(x(20), x(16));

% Reaction: id = Dissassembly_of_pRC, name = Dissassembly of pRC
	reaction_Dissassembly_of_pRC=compartment_Cell*rDsRc_2(x(20), x(17));

% Reaction: id = Dissassembly_of_aRC, name = Dissassembly of aRC
	reaction_Dissassembly_of_aRC=compartment_Cell*rDsRc_3(x(20), x(18));

% Reaction: id = Dissassembly_of_iRC, name = Dissassembly of iRC
	reaction_Dissassembly_of_iRC=compartment_Cell*rDsRc_4(x(20), x(19));

% Reaction: id = Synthesis_of_DNA, name = Synthesis of DNA
	reaction_Synthesis_of_DNA=compartment_Cell*global_par_kSyDna*x(18);

% Reaction: id = Degradation_of_p53, name = Degradation of p53
	reaction_Degradation_of_p53=compartment_Cell*rDeP53_1(x(22), x(21), global_par_jP53, global_par_kDeP53);

% Reaction: id = Induction_of_DNA_damage_by_replication, name = Induction of DNA damage by replication
	reaction_Induction_of_DNA_damage_by_replication=compartment_Cell*global_par_kGeDamArc*x(18);

% Reaction: id = Degradation_of_APC_C_Cdh1_activity_probe, name = Degradation of APC/C^Cdh1 activity probe
	reaction_Degradation_of_APC_C_Cdh1_activity_probe=compartment_Cell*rDePr_1(x(6), x(23), global_par_kDeCaC1, global_par_kDePr);

% Reaction: id = Repair_of_DNA_damage, name = Repair of DNA damage
	reaction_Repair_of_DNA_damage=compartment_Cell*rReDam_1(x(22), x(21), global_par_jDam, global_par_kReDam, global_par_kReDamP53);

	xdot=zeros(30,1);
	
% Species:   id = Rb, name = Retinoblastoma_protein, affected by kineticLaw
	xdot(1) = (1/(compartment_Cell))*((-1.0 * reaction_Phosphorylation_of_Rb) + ( 1.0 * reaction_Dephosphorylation_of_Rb) + ( 1.0 * reaction_Degradation_of_E2F_in_Rb_E2F_complexes) + (-1.0 * reaction_Association_dissociation_of_Rb_and_E2F));
	
% Species:   id = pRb, name = Retinoblastoma_protein_hyperphosphorylated, affected by kineticLaw
	xdot(2) = (1/(compartment_Cell))*(( 1.0 * reaction_Phosphorylation_of_Rb) + ( 1.0 * reaction_Phosphorylation_Rb_in_Rb_E2F_complexes) + (-1.0 * reaction_Dephosphorylation_of_Rb));
	
% Species:   id = E2f, name = E2f_active, affected by kineticLaw
	xdot(3) = (1/(compartment_Cell))*(( 1.0 * reaction_Phosphorylation_Rb_in_Rb_E2F_complexes) + ( 1.0 * reaction_Synthesis_of_E2F) + (-1.0 * reaction_Degradation_of_E2F) + (-1.0 * reaction_Association_dissociation_of_Rb_and_E2F) + (-1.0 * reaction_Synthesis_of_CycE) + ( 1.0 * reaction_Synthesis_of_CycE) + (-1.0 * reaction_Synthesis_of_CycA) + ( 1.0 * reaction_Synthesis_of_CycA) + (-1.0 * reaction_Synthesis_of_Emi1) + ( 1.0 * reaction_Synthesis_of_Emi1));
	
% Species:   id = RbE2f, name = Retinoblastoma_protein_E2f_complex_inactive, affected by kineticLaw
	xdot(4) = (1/(compartment_Cell))*((-1.0 * reaction_Phosphorylation_Rb_in_Rb_E2F_complexes) + (-1.0 * reaction_Degradation_of_E2F_in_Rb_E2F_complexes) + ( 1.0 * reaction_Association_dissociation_of_Rb_and_E2F));
	
% Species:   id = E1, name = Emi1, affected by kineticLaw
	xdot(5) = (1/(compartment_Cell))*(( 1.0 * reaction_Synthesis_of_Emi1) + (-1.0 * reaction_Degradation_of_Emi1) + (-1.0 * reaction_Association_dissociation_of_Emi1_APC_C_Cdh1_complexes) + ( 1.0 * reaction_Phosphorylation_of_APC_C_Cdh1_in_Emi1_APC_C_Cdh1_complexes));
	
% Species:   id = C1, name = Cdh1_C_APC_active, affected by kineticLaw
	xdot(6) = (1/(compartment_Cell))*((-1.0 * reaction_Association_dissociation_of_Emi1_APC_C_Cdh1_complexes) + ( 1.0 * reaction_Degradation_of_Emi1_in_Emi1_APC_C_Cdh1_complexes) + (-1.0 * reaction_Phosphorylation_of_free_APC_C_Cdh1) + ( 1.0 * reaction_Dephosphorylation_of_APC_C_Cdh1));
	
% Species:   id = pC1, name = C_Cdh1_APC_phosphorylated_inactive, affected by kineticLaw
	xdot(7) = (1/(compartment_Cell))*(( 1.0 * reaction_Phosphorylation_of_free_APC_C_Cdh1) + ( 1.0 * reaction_Phosphorylation_of_APC_C_Cdh1_in_Emi1_APC_C_Cdh1_complexes) + (-1.0 * reaction_Dephosphorylation_of_APC_C_Cdh1));
	
% Species:   id = E1C1, name = Emi1_C_Cdh1_complex_inactive, affected by kineticLaw
	xdot(8) = (1/(compartment_Cell))*(( 1.0 * reaction_Association_dissociation_of_Emi1_APC_C_Cdh1_complexes) + (-1.0 * reaction_Degradation_of_Emi1_in_Emi1_APC_C_Cdh1_complexes) + (-1.0 * reaction_Phosphorylation_of_APC_C_Cdh1_in_Emi1_APC_C_Cdh1_complexes));
	
% Species:   id = P21, name = P21, affected by kineticLaw
	xdot(9) = (1/(compartment_Cell))*(( 1.0 * reaction_Synthesis_of_p21) + (-1.0 * reaction_Association_dissociation_of_CycE_Cdk2_and_p21) + (-1.0 * reaction_Association_dissociation_of_CycA_Cdk2_and_p21) + ( 1.0 * reaction_Degradation_of_CycE_in_CycE_Cdk2_p21_complexes) + ( 1.0 * reaction_Degradation_of_CycA_in_CycA_Cdk2_p21_complexes) + (-1.0 * reaction_Degradation_of_free_p21) + ( 1.0 * reaction_Nuclear_export_of_inactive_PCNA) + (-1.0 * reaction_Association_dissociation_of_PCNA_and_p21) + (-1.0 * reaction_Association_dissociation_of_p21_and_replication_complexes));
	
% Species:   id = Ce, name = CyclinE_Cdk2_active, affected by kineticLaw
	xdot(10) = (1/(compartment_Cell))*(( 1.0 * reaction_Synthesis_of_CycE) + (-1.0 * reaction_Association_dissociation_of_CycE_Cdk2_and_p21) + ( 1.0 * reaction_Degradation_of_p21_in_CycE_Cdk2_p21_complexes) + (-1.0 * reaction_Degradation_of_CycE_in_CycE_Cdk2_complexes));
	
% Species:   id = Ca, name = CyclinA_Cdk2, affected by kineticLaw
	xdot(11) = (1/(compartment_Cell))*(( 1.0 * reaction_Synthesis_of_CycA) + (-1.0 * reaction_Association_dissociation_of_CycA_Cdk2_and_p21) + ( 1.0 * reaction_Degradation_of_p21_in_CycA_Cdk2_p21_complexes) + (-1.0 * reaction_Degradation_of_CycA_in_CycA_Cdk2_complexes));
	
% Species:   id = CeP21, name = CyclinE_Cdk2_P21_complex_inactive, affected by kineticLaw
	xdot(12) = (1/(compartment_Cell))*(( 1.0 * reaction_Association_dissociation_of_CycE_Cdk2_and_p21) + (-1.0 * reaction_Degradation_of_p21_in_CycE_Cdk2_p21_complexes) + (-1.0 * reaction_Degradation_of_CycE_in_CycE_Cdk2_p21_complexes));
	
% Species:   id = CaP21, name = CyclinA_Cdk2_P21_complex_inactive, affected by kineticLaw
	xdot(13) = (1/(compartment_Cell))*(( 1.0 * reaction_Association_dissociation_of_CycA_Cdk2_and_p21) + (-1.0 * reaction_Degradation_of_p21_in_CycA_Cdk2_p21_complexes) + (-1.0 * reaction_Degradation_of_CycA_in_CycA_Cdk2_p21_complexes));
	
% Species:   id = aPcna, name = Pcna_nuclear_active, affected by kineticLaw
	xdot(14) = (1/(compartment_Cell))*(( 1.0 * reaction_Nuclear_import_of_active_PCNA) + (-1.0 * reaction_Nuclear_export_of_active_PCNA) + (-1.0 * reaction_Association_dissociation_of_PCNA_and_p21) + ( 1.0 * reaction_Degradation_of_p21_in_PCNA_p21_complexes) + (-1.0 * reaction_Association_dissociation_of_active_PCNA_and_replication_complexes) + ( 1.0 * reaction_Dissassembly_of_aRC));
	
% Species:   id = iPcna, name = PCNA_Nuclear_inactive, affected by kineticLaw
	xdot(15) = (1/(compartment_Cell))*((-1.0 * reaction_Nuclear_export_of_inactive_PCNA) + ( 1.0 * reaction_Association_dissociation_of_PCNA_and_p21) + (-1.0 * reaction_Degradation_of_p21_in_PCNA_p21_complexes) + (-1.0 * reaction_Association_dissociation_of_inactive_PCNA_and_replication_complexes) + ( 1.0 * reaction_Dissassembly_of_iRC));
	
% Species:   id = Rc, name = Pre_Replication_complex, affected by kineticLaw
	xdot(16) = (1/(compartment_Cell))*((-1.0 * reaction_Phosphorylation_priming_of_replication_complexes) + ( 1.0 * reaction_Dephosphorylation_of_replication_complexes) + (-1.0 * reaction_Dissassembly_of_RC));
	
% Species:   id = pRc, name = Pre_Replication_complex_primed, affected by kineticLaw
	xdot(17) = (1/(compartment_Cell))*((-1.0 * reaction_Association_dissociation_of_active_PCNA_and_replication_complexes) + (-1.0 * reaction_Association_dissociation_of_inactive_PCNA_and_replication_complexes) + ( 1.0 * reaction_Phosphorylation_priming_of_replication_complexes) + (-1.0 * reaction_Dephosphorylation_of_replication_complexes) + (-1.0 * reaction_Dissassembly_of_pRC));
	
% Species:   id = aRc, name = Pre_Replication_complex_active, affected by kineticLaw
	xdot(18) = (1/(compartment_Cell))*(( 1.0 * reaction_Association_dissociation_of_active_PCNA_and_replication_complexes) + (-1.0 * reaction_Association_dissociation_of_p21_and_replication_complexes) + ( 1.0 * reaction_Degradation_of_p21_in_inactive_replication_complexes) + (-1.0 * reaction_Dissassembly_of_aRC) + (-1.0 * reaction_Synthesis_of_DNA) + ( 1.0 * reaction_Synthesis_of_DNA) + (-1.0 * reaction_Induction_of_DNA_damage_by_replication) + ( 1.0 * reaction_Induction_of_DNA_damage_by_replication));
	
% Species:   id = iRc, name = Pre_Replication_complex_inactive, affected by kineticLaw
	xdot(19) = (1/(compartment_Cell))*(( 1.0 * reaction_Association_dissociation_of_inactive_PCNA_and_replication_complexes) + ( 1.0 * reaction_Association_dissociation_of_p21_and_replication_complexes) + (-1.0 * reaction_Degradation_of_p21_in_inactive_replication_complexes) + (-1.0 * reaction_Dissassembly_of_iRC));
	
% Species:   id = Dna, name = Dna, affected by kineticLaw
	xdot(20) = (1/(compartment_Cell))*(( 1.0 * reaction_Synthesis_of_DNA));
	
% Species:   id = P53, name = P53, affected by kineticLaw
	xdot(21) = (1/(compartment_Cell))*(( 1.0 * reaction_Synthesis_of_p53) + (-1.0 * reaction_Degradation_of_p53));
	
% Species:   id = Dam, name = Dna_damage, affected by kineticLaw
	xdot(22) = (1/(compartment_Cell))*(( 1.0 * reaction_Induction_of_DNA_damage) + ( 1.0 * reaction_Induction_of_DNA_damage_by_replication) + (-1.0 * reaction_Repair_of_DNA_damage));
	
% Species:   id = Pr, name = Activity_probe_of_APC_C_Cdh1, affected by kineticLaw
	xdot(23) = (1/(compartment_Cell))*(( 1.0 * reaction_Synthesis_of_APC_C_Cdh1_activity_probe) + (-1.0 * reaction_Degradation_of_APC_C_Cdh1_activity_probe));
	
% Species:   id = tRb, name = Retinoblastoma_protein_total, involved in a rule 	xdot(24) = x(24);
	
% Species:   id = tE2f, name = E2f_total, involved in a rule 	xdot(25) = x(25);
	
% Species:   id = tE1, name = Emi1_total, involved in a rule 	xdot(26) = x(26);
	
% Species:   id = tC1, name = C_Cdh1_APC_total, involved in a rule 	xdot(27) = x(27);
	
% Species:   id = tCe, name = CyclinE_Cdk2_total, involved in a rule 	xdot(28) = x(28);
	
% Species:   id = tCa, name = CyclinA_Cdk2_total, involved in a rule 	xdot(29) = x(29);
	
% Species:   id = tP21, name = P21_total, involved in a rule 	xdot(30) = x(30);
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=rPhRb_2(Ca,Cd,Ce,RbE2f,kPhRbCa,kPhRbCd,kPhRbCe), z=((kPhRbCd*Cd+kPhRbCe*Ce+kPhRbCa*Ca)*RbE2f);end

function z=rSyE2f_1(E2f,jSyE2f,kSyE2f,kSyE2fE2f), z=(kSyE2f+kSyE2fE2f*E2f/(jSyE2f+E2f));end

function z=rDeP21_1(Ca,Cdt2,Ce,CeP21,Skp2,aRc,kDeP21,kDeP21Cy,kDeP21aRc), z=((kDeP21+kDeP21Cy*Skp2*(Ce+Ca)+kDeP21aRc*Cdt2*aRc)*CeP21);end

function z=rDeP53_1(Dam,P53,jP53,kDeP53), z=(kDeP53/(jP53+Dam)*P53);end

function z=rDeCa_2(C1,CaP21,kDeCa,kDeCaC1), z=((kDeCa+kDeCaC1*C1)*CaP21);end

function z=rDeP21_5(Ca,Cdt2,Ce,Skp2,aRc,iRc,kDeP21,kDeP21Cy,kDeP21aRc), z=((kDeP21+kDeP21Cy*Skp2*(Ce+Ca)+kDeP21aRc*Cdt2*aRc)*iRc);end

function z=rPhRb_1(Ca,Cd,Ce,Rb,kPhRbCa,kPhRbCd,kPhRbCe), z=((kPhRbCd*Cd+kPhRbCe*Ce+kPhRbCa*Ca)*Rb);end

function z=rSyP21_1(P53,kSyP21,kSyP21P53), z=(kSyP21+kSyP21P53*P53);end

function z=rPhC1_1(C1,Ca,Ce,kPhC1,kPhC1Ca,kPhC1Ce), z=((kPhC1+kPhC1Ce*Ce+kPhC1Ca*Ca)*C1);end

function z=rDeP21_3(Ca,Cdt2,Ce,P21,Skp2,aRc,kDeP21,kDeP21Cy,kDeP21aRc), z=((kDeP21+kDeP21Cy*Skp2*(Ce+Ca)+kDeP21aRc*Cdt2*aRc)*P21);end

function z=rDsRc_3(Dna,aRc,piecewise(0,piecewise(1*aRc), z=(Dna < 1,Dna > 1,0.5*aRc)));end

function z=rDeCe_2(Ca,CeP21,kDeCe,kDeCeCa), z=((kDeCe+kDeCeCa*Ca)*CeP21);end

function z=rDeCe_1(Ca,Ce,kDeCe,kDeCeCa), z=((kDeCe+kDeCeCa*Ca)*Ce);end

function z=rReDam_1(Dam,P53,jDam,kReDam,kReDamP53), z=((kReDam+kReDamP53*P53/(jDam+Dam))*Dam);end

function z=rPhC1_2(Ca,Ce,E1C1,kPhC1,kPhC1Ca,kPhC1Ce), z=((kPhC1+kPhC1Ce*Ce+kPhC1Ca*Ca)*E1C1);end

function z=rDeP21_2(Ca,CaP21,Cdt2,Ce,Skp2,aRc,kDeP21,kDeP21Cy,kDeP21aRc), z=((kDeP21+kDeP21Cy*Skp2*(Ce+Ca)+kDeP21aRc*Cdt2*aRc)*CaP21);end

function z=rPhRc_1(Ca,Ce,Rc,jCy,kPhRc,n), z=(kPhRc*(Ce+Ca)^n/(jCy^n+(Ce+Ca)^n)*Rc);end

function z=rDeCa_1(C1,Ca,kDeCa,kDeCaC1), z=((kDeCa+kDeCaC1*C1)*Ca);end

function z=rDsRc_4(Dna,iRc,piecewise(0,piecewise(1*iRc), z=(Dna < 1,Dna > 1,0.5*iRc)));end

function z=rDeP21_4(Ca,Cdt2,Ce,Skp2,aRc,iPcna,kDeP21,kDeP21Cy,kDeP21aRc), z=((kDeP21+kDeP21Cy*Skp2*(Ce+Ca)+kDeP21aRc*Cdt2*aRc)*iPcna);end

function z=rDsRc_1(Dna,Rc,piecewise(0,piecewise(1*Rc), z=(Dna < 1,Dna > 1,0.5*Rc)));end

function z=rDePr_1(C1,Pr,kDeCaC1,kDePr), z=((kDePr+kDeCaC1*C1)*Pr);end

function z=rDsRc_2(Dna,pRc,piecewise(0,piecewise(1*pRc), z=(Dna < 1,Dna > 1,0.5*pRc)));end

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


