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
% Model name = Strasen2018 - TGFb SMAD Signalling Class 3
%
% unknownQualifier http://identifiers.org/biomodels.db/MODEL1712050009
% isDescribedBy http://identifiers.org/pubmed/29371237
% is http://identifiers.org/biomodels.db/MODEL1712050009
% is http://identifiers.org/biomodels.db/BIOMD0000001000
%


function main()
%Initial conditions vector
	x0=zeros(23,1);
	x0(1) = 39.1453163247034;
	x0(2) = 15.3419048677147;
	x0(3) = 30.5746825808989;
	x0(4) = 33.8506390142416;
	x0(5) = 100.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 1146.01803838863;
	x0(13) = 143.916431450302;
	x0(14) = 0.0;
	x0(15) = 0.0;
	x0(16) = 0.103311072468942;
	x0(17) = 0.67216411877982;
	x0(18) = 12.4243231076787;
	x0(19) = 0.0;
	x0(20) = 0.0;
	x0(21) = 0.0;
	x0(22) = 189.761470115617;
	x0(23) = 203.589335374132;


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

% Compartment: id = cyt, name = cyt, constant
	compartment_cyt=2.0;
% Compartment: id = nuc, name = nuc, constant
	compartment_nuc=1.0;
% Parameter:   id =  DRB, name = DRB
	global_par_DRB=1.0;
% Parameter:   id =  K_mran, name = K_mran
	global_par_K_mran=223.586;
% Parameter:   id =  R1_total_C3, name = R1_total_C3
	global_par_R1_total_C3=69.7199989056023;
% Parameter:   id =  R2_total_C3, name = R2_total_C3
	global_par_R2_total_C3=49.1925438819563;
% Parameter:   id =  S2_export_from_nuc_C3, name = S2_export_from_nuc_C3
	global_par_S2_export_from_nuc_C3=3.00430865315074;
% Parameter:   id =  S2_import_to_nuc_C3, name = S2_import_to_nuc_C3
	global_par_S2_import_to_nuc_C3=0.248774260500559;
% Parameter:   id =  S2_total_C3, name = S2_total_C3
	global_par_S2_total_C3=1335.77950850425;
% Parameter:   id =  S4_export_from_nuc_C3, name = S4_export_from_nuc_C3
	global_par_S4_export_from_nuc_C3=0.0984718694215043;
% Parameter:   id =  S4_import_to_nuc_C3, name = S4_import_to_nuc_C3
	global_par_S4_import_to_nuc_C3=0.0730474752631315;
% Parameter:   id =  S4_total_C3, name = S4_total_C3
	global_par_S4_total_C3=347.505766824434;
% Parameter:   id =  S7KD, name = S7KD
	global_par_S7KD=1.0;
% Parameter:   id =  Trimer_import_to_nuc, name = Trimer_import_to_nuc
	global_par_Trimer_import_to_nuc=0.144035002432848;
% Parameter:   id =  export_cytoplasm, name = export_cytoplasm
	global_par_export_cytoplasm=0.0304372961307751;
% Parameter:   id =  hill_fact1, name = hill_fact1
	global_par_hill_fact1=3.98630224594983;
% Parameter:   id =  index_active_Rec_internalize_C3, name = index_active_Rec_internalize_C3
	global_par_index_active_Rec_internalize_C3=1.0379108128956;
% Parameter:   id =  index_induced_R2_deg, name = index_induced_R2_deg
	global_par_index_induced_R2_deg=1.00037776866312;
% Parameter:   id =  index_induced_ligand_deg, name = index_induced_ligand_deg
	global_par_index_induced_ligand_deg=2.72106513634098;
% Parameter:   id =  index_k_out_1_relative_speed_C3, name = index_k_out_1_relative_speed_C3
	global_par_index_k_out_1_relative_speed_C3=1.13287434679021;
% Parameter:   id =  index_k_out_2_relative_speed_C3, name = index_k_out_2_relative_speed_C3
	global_par_index_k_out_2_relative_speed_C3=0.450697494637432;
% Parameter:   id =  index_kb_R1, name = index_kb_R1
	global_par_index_kb_R1=1.61290474569122;
% Parameter:   id =  index_kb_R2, name = index_kb_R2
	global_par_index_kb_R2=8.70498854136694;
% Parameter:   id =  index_kb_homotrimer, name = index_kb_homotrimer
	global_par_index_kb_homotrimer=0.0163921522930962;
% Parameter:   id =  index_kf_homotrimer, name = index_kf_homotrimer
	global_par_index_kf_homotrimer=4.4857919268227;
% Parameter:   id =  index_seq_kb, name = index_seq_kb
	global_par_index_seq_kb=8.65131944828012E-4;
% Parameter:   id =  index_trimer_dephos, name = index_trimer_dephos
	global_par_index_trimer_dephos=2.61013820571304;
% Parameter:   id =  k_Dephos_C3, name = k_Dephos_C3
	global_par_k_Dephos_C3=0.0707018316477647;
% Parameter:   id =  k_S7_protein_C3, name = k_S7_protein_C3
	global_par_k_S7_protein_C3=0.123149764012103;
% Parameter:   id =  k_disso_Active_Rec, name = k_disso_Active_Rec
	global_par_k_disso_Active_Rec=0.00103940411358367;
% Parameter:   id =  k_in_R1_C3, name = k_in_R1_C3
	global_par_k_in_R1_C3=0.397836393488341;
% Parameter:   id =  k_in_R2_C3, name = k_in_R2_C3
	global_par_k_in_R2_C3=0.396038887562465;
% Parameter:   id =  k_induced_S7_production_C3, name = k_induced_S7_production_C3
	global_par_k_induced_S7_production_C3=2.9510868497;
% Parameter:   id =  k_medium, name = k_medium
	global_par_k_medium=2000000.0;
% Parameter:   id =  k_phosphorylation, name = k_phosphorylation
	global_par_k_phosphorylation=0.0701560191772152;
% Parameter:   id =  kb_trimmer, name = kb_trimmer
	global_par_kb_trimmer=1.6077346670684;
% Parameter:   id =  kdeg_R1, name = kdeg_R1
	global_par_kdeg_R1=0.0586584495713968;
% Parameter:   id =  kdeg_R2, name = kdeg_R2
	global_par_kdeg_R2=0.0010003937382472;
% Parameter:   id =  kdeg_S2, name = kdeg_S2
	global_par_kdeg_S2=5.14084012175461E-4;
% Parameter:   id =  kdeg_S4, name = kdeg_S4
	global_par_kdeg_S4=0.00480202699360057;
% Parameter:   id =  kdeg_S7, name = kdeg_S7
	global_par_kdeg_S7=0.00102401829734485;
% Parameter:   id =  kf_R1_activation, name = kf_R1_activation
	global_par_kf_R1_activation=4.98548548076033;
% Parameter:   id =  kf_R2_activation, name = kf_R2_activation
	global_par_kf_R2_activation=4.95559496701657;
% Parameter:   id =  kf_Seq_S7_Rec, name = kf_Seq_S7_Rec
	global_par_kf_Seq_S7_Rec=0.882455038106022;
% Parameter:   id =  kf_trimmer, name = kf_trimmer
	global_par_kf_trimmer=4.81424700307387;
% Parameter:   id =  kin_deg_Ligand, name = kin_deg_Ligand
	global_par_kin_deg_Ligand=0.720182234635314;
% Parameter:   id =  kmRNA1deg_S7, name = kmRNA1deg_S7
	global_par_kmRNA1deg_S7=0.00523181439900629;
% Parameter:   id =  kmRNAdeg_S7, name = kmRNAdeg_S7
	global_par_kmRNAdeg_S7=0.0990158065483902;
% Parameter:   id =  kout_deg_Ligand_100pM, name = kout_deg_Ligand_100pM
	global_par_kout_deg_Ligand_100pM=3.6189622E-4;
% Parameter:   id =  mRNA_prod_C3, name = mRNA_prod_C3
	global_par_mRNA_prod_C3=0.0239754962469105;
% Parameter:   id =  NUC_CYT_SMAD2, name = NUC/CYT SMAD2
% assignmentRule: variable = NUC_CYT_SMAD2
	global_par_NUC_CYT_SMAD2=(2*x(20)+x(19)+x(22)+3*x(21))/(2*x(14)+x(11)+x(12)+3*x(15));

% Reaction: id = reaction1, name = reaction1
	reaction_reaction1=compartment_cyt*Function_for_reaction1(x(5), x(2), global_par_k_medium, global_par_kf_R2_activation);

% Reaction: id = reaction2, name = reaction2
	reaction_reaction2=compartment_cyt*Function_for_reaction2(x(5), x(2), global_par_kf_R2_activation);

% Reaction: id = reaction3, name = reaction3
	reaction_reaction3=compartment_cyt*Function_for_reaction3(x(5), x(2), global_par_kf_R2_activation);

% Reaction: id = reaction4, name = reaction4
	reaction_reaction4=compartment_cyt*Function_for_reaction4(x(7), global_par_index_kb_R2, global_par_kf_R2_activation);

% Reaction: id = reaction5, name = reaction5
	reaction_reaction5=compartment_cyt*Function_for_reaction5(x(7), global_par_index_kb_R2, global_par_kf_R2_activation);

% Reaction: id = reaction6, name = reaction6
	reaction_reaction6=compartment_cyt*Function_for_reaction6(x(7), global_par_index_kb_R2, global_par_k_medium, global_par_kf_R2_activation);

% Reaction: id = reaction7, name = reaction7
	reaction_reaction7=compartment_cyt*global_par_kf_R1_activation*x(1)*x(7);

% Reaction: id = reaction8, name = reaction8
	reaction_reaction8=compartment_cyt*Function_for_reaction8(x(8), global_par_index_kb_R1, global_par_kf_R1_activation);

% Reaction: id = reaction9, name = reaction9
	reaction_reaction9=compartment_cyt*global_par_kdeg_R2*x(9);

% Reaction: id = reaction10, name = reaction10
	reaction_reaction10=compartment_cyt*global_par_kdeg_R1*x(9);

% Reaction: id = reaction11, name = reaction11
	reaction_reaction11=compartment_cyt*global_par_kin_deg_Ligand*x(9);

% Reaction: id = reaction12, name = reaction12
	reaction_reaction12=compartment_cyt*global_par_kdeg_R1*x(3);

% Reaction: id = reaction13, name = reaction13
	reaction_reaction13=compartment_cyt*global_par_kdeg_R2*x(4);

% Reaction: id = reaction14, name = reaction14
	reaction_reaction14=compartment_cyt*global_par_kf_Seq_S7_Rec*x(8)*x(18);

% Reaction: id = reaction15, name = reaction15
	reaction_reaction15=compartment_cyt*Function_for_reaction15(x(10), global_par_index_seq_kb, global_par_kf_Seq_S7_Rec);

% Reaction: id = reaction16, name = reaction16
	reaction_reaction16=compartment_cyt*Function_for_reaction16(x(10), global_par_index_induced_ligand_deg, global_par_kin_deg_Ligand);

% Reaction: id = reaction17, name = reaction17
	reaction_reaction17=compartment_cyt*Function_for_reaction17(x(10), global_par_index_induced_R2_deg, global_par_kdeg_R2);

% Reaction: id = reaction18, name = reaction18
	reaction_reaction18=compartment_cyt*global_par_k_in_R1_C3*x(1);

% Reaction: id = reaction19, name = reaction19
	reaction_reaction19=compartment_cyt*global_par_k_in_R2_C3*x(2);

% Reaction: id = reaction20, name = reaction20
	reaction_reaction20=compartment_cyt*Function_for_reaction20_2_0(x(3), global_par_index_k_out_1_relative_speed_C3, global_par_k_in_R1_C3);

% Reaction: id = reaction21, name = reaction21
	reaction_reaction21=compartment_cyt*Function_for_reaction21_2_0(x(4), global_par_index_k_out_2_relative_speed_C3, global_par_k_in_R2_C3);

% Reaction: id = reaction22, name = reaction22
	reaction_reaction22=compartment_cyt*Function_for_reaction22_2_0(x(8), global_par_index_active_Rec_internalize_C3, global_par_k_in_R1_C3);

% Reaction: id = reaction23, name = reaction23
	reaction_reaction23=compartment_cyt*global_par_k_disso_Active_Rec*x(9);

% Reaction: id = reaction24, name = reaction24
	reaction_reaction24=compartment_cyt*global_par_kin_deg_Ligand*x(6);

% Reaction: id = reaction25, name = reaction25
	reaction_reaction25=compartment_cyt*global_par_kout_deg_Ligand_100pM*x(5);

% Reaction: id = reaction26, name = reaction26
	reaction_reaction26=compartment_cyt*Function_for_reaction26_0(x(9), x(12), global_par_k_phosphorylation);

% Reaction: id = reaction27, name = reaction27
	reaction_reaction27=compartment_cyt*global_par_kf_trimmer*x(11)^2*x(13);

% Reaction: id = reaction28, name = reaction28
	reaction_reaction28=compartment_cyt*global_par_kb_trimmer*x(14);

% Reaction: id = reaction29, name = reaction29
	reaction_reaction29=compartment_nuc*global_par_kf_trimmer*x(19)^2*x(23);

% Reaction: id = reaction30, name = reaction30
	reaction_reaction30=compartment_nuc*global_par_kb_trimmer*x(20);

% Reaction: id = reaction31, name = reaction31
	reaction_reaction31=compartment_cyt*Function_for_reaction31_2_1_0(global_par_index_kf_homotrimer, global_par_kf_trimmer, x(11));

% Reaction: id = reaction32, name = reaction32
	reaction_reaction32=compartment_cyt*Function_for_reaction32_3_0(global_par_index_kb_homotrimer, global_par_kb_trimmer, x(15));

% Reaction: id = reaction33, name = reaction33
	reaction_reaction33=compartment_nuc*Function_for_reaction33_2_1_0(global_par_index_kf_homotrimer, global_par_kf_trimmer, x(19));

% Reaction: id = reaction34, name = reaction34
	reaction_reaction34=compartment_nuc*Function_for_reaction34_2_0(global_par_index_kb_homotrimer, global_par_kb_trimmer, x(21));

% Reaction: id = reaction35, name = reaction35
	reaction_reaction35=Function_for_reaction35_3_0(x(12), global_par_S2_import_to_nuc_C3, compartment_cyt);

% Reaction: id = reaction36, name = reaction36
	reaction_reaction36=Function_for_reaction36_3_0(global_par_S2_export_from_nuc_C3, x(22), compartment_nuc);

% Reaction: id = reaction37, name = reaction37
	reaction_reaction37=Function_for_reaction37_3_0(x(13), global_par_S4_import_to_nuc_C3, compartment_cyt);

% Reaction: id = reaction38, name = reaction38
	reaction_reaction38=Function_for_reaction38_3_0(global_par_S4_export_from_nuc_C3, x(23), compartment_nuc);

% Reaction: id = reaction39, name = reaction39
	reaction_reaction39=Function_for_reaction39_3_0(global_par_S2_import_to_nuc_C3, compartment_cyt, x(11));

% Reaction: id = reaction40, name = reaction40
	reaction_reaction40=Function_for_reaction40_3_0(global_par_S2_export_from_nuc_C3, compartment_nuc, x(19));

% Reaction: id = reaction41, name = reaction41
	reaction_reaction41=Function_for_reaction41_2(global_par_Trimer_import_to_nuc, compartment_cyt, x(14));

% Reaction: id = reaction42, name = reaction42
	reaction_reaction42=Function_for_reaction42_0(global_par_Trimer_import_to_nuc, compartment_cyt, x(15));

% Reaction: id = reaction43, name = reaction43
	reaction_reaction43=compartment_nuc*global_par_k_Dephos_C3*x(19);

% Reaction: id = reaction44, name = reaction44
	reaction_reaction44=compartment_nuc*Function_for_reaction44_4_0(global_par_index_trimer_dephos, global_par_k_Dephos_C3, x(20));

% Reaction: id = reaction45, name = reaction45
	reaction_reaction45=compartment_cyt*Function_for_reaction45_3_1_0(global_par_S2_export_from_nuc_C3, global_par_S2_import_to_nuc_C3, global_par_S2_total_C3, global_par_kdeg_S2);

% Reaction: id = reaction46, name = reaction46
	reaction_reaction46=compartment_cyt*Function_for_reaction46_3_1_0(global_par_S4_export_from_nuc_C3, global_par_S4_import_to_nuc_C3, global_par_S4_total_C3, global_par_kdeg_S4);

% Reaction: id = reaction47, name = reaction47
	reaction_reaction47=compartment_cyt*Function_for_reaction47_3_1_0(global_par_R1_total_C3, global_par_index_k_out_1_relative_speed_C3, global_par_k_in_R1_C3, global_par_kdeg_R1);

% Reaction: id = reaction48, name = reaction48
	reaction_reaction48=compartment_cyt*Function_for_reaction48_1_1_0(global_par_R2_total_C3, global_par_index_k_out_2_relative_speed_C3, global_par_k_in_R2_C3, global_par_kdeg_R2);

% Reaction: id = reaction51, name = reaction51
	reaction_reaction51=compartment_nuc*Function_for_reaction51_3_0(global_par_DRB, global_par_K_mran, global_par_S7KD, global_par_hill_fact1, global_par_k_induced_S7_production_C3, global_par_mRNA_prod_C3, x(20));

% Reaction: id = reaction52, name = reaction52
	reaction_reaction52=Function_for_reaction52_3(x(17), global_par_export_cytoplasm, compartment_nuc);

% Reaction: id = reaction53, name = reaction53
	reaction_reaction53=compartment_cyt*Function_for_reaction53_1_0(x(16), global_par_k_S7_protein_C3);

% Reaction: id = reaction54, name = reaction54
	reaction_reaction54=compartment_cyt*global_par_kdeg_S2*x(12);

% Reaction: id = reaction55, name = reaction55
	reaction_reaction55=compartment_nuc*global_par_kdeg_S2*x(22);

% Reaction: id = reaction56, name = reaction56
	reaction_reaction56=compartment_nuc*global_par_kdeg_S2*x(19);

% Reaction: id = reaction57, name = reaction57
	reaction_reaction57=compartment_cyt*global_par_kdeg_S2*x(11);

% Reaction: id = reaction58, name = reaction58
	reaction_reaction58=compartment_cyt*global_par_kdeg_S4*x(13);

% Reaction: id = reaction59, name = reaction59
	reaction_reaction59=compartment_nuc*global_par_kdeg_S4*x(23);

% Reaction: id = reaction60, name = reaction60
	reaction_reaction60=compartment_cyt*global_par_kdeg_S2*x(14);

% Reaction: id = reaction61, name = reaction61
	reaction_reaction61=compartment_cyt*global_par_kdeg_S4*x(14);

% Reaction: id = reaction62, name = reaction62
	reaction_reaction62=compartment_cyt*global_par_kdeg_S2*x(15);

% Reaction: id = reaction63, name = reaction63
	reaction_reaction63=compartment_nuc*global_par_kdeg_S2*x(20);

% Reaction: id = reaction64, name = reaction64
	reaction_reaction64=compartment_nuc*global_par_kdeg_S4*x(20);

% Reaction: id = reaction65, name = reaction65
	reaction_reaction65=compartment_nuc*global_par_kdeg_S2*x(21);

% Reaction: id = reaction66, name = reaction66
	reaction_reaction66=compartment_nuc*global_par_kmRNA1deg_S7*x(17);

% Reaction: id = reaction67, name = reaction67
	reaction_reaction67=compartment_cyt*global_par_kmRNAdeg_S7*x(16);

% Reaction: id = reaction68, name = reaction68
	reaction_reaction68=compartment_cyt*global_par_kdeg_S7*x(18);

	xdot=zeros(23,1);
	
% Species:   id = TGFb_R1_surface, name = TGFb_TGFR1_surface, affected by kineticLaw
	xdot(1) = (1/(compartment_cyt))*((-1.0 * reaction_reaction7) + ( 1.0 * reaction_reaction8) + (-1.0 * reaction_reaction18) + ( 1.0 * reaction_reaction20) + ( 1.0 * reaction_reaction47));
	
% Species:   id = TGFb_R2_surface, name = TGFb_TGFR2_surface, affected by kineticLaw
	xdot(2) = (1/(compartment_cyt))*((-1.0 * reaction_reaction2) + ( 1.0 * reaction_reaction5) + (-1.0 * reaction_reaction19) + ( 1.0 * reaction_reaction21) + ( 1.0 * reaction_reaction48));
	
% Species:   id = TGFb_R1_endo, name = TGFb_TGFR1_endo, affected by kineticLaw
	xdot(3) = (1/(compartment_cyt))*(( 1.0 * reaction_reaction9) + ( 1.0 * reaction_reaction11) + (-1.0 * reaction_reaction12) + ( 1.0 * reaction_reaction16) + ( 1.0 * reaction_reaction17) + ( 1.0 * reaction_reaction18) + (-1.0 * reaction_reaction20) + ( 1.0 * reaction_reaction23));
	
% Species:   id = TGFb_R2_endo, name = TGFb_TGFR2_endo, affected by kineticLaw
	xdot(4) = (1/(compartment_cyt))*(( 1.0 * reaction_reaction10) + ( 1.0 * reaction_reaction11) + (-1.0 * reaction_reaction13) + ( 1.0 * reaction_reaction16) + ( 1.0 * reaction_reaction19) + (-1.0 * reaction_reaction21) + ( 1.0 * reaction_reaction23));
	
% Species:   id = TGFb, name = TGFb, affected by kineticLaw
	xdot(5) = (1/(compartment_cyt))*((-1.0 * reaction_reaction1) + ( 1.0 * reaction_reaction6) + (-1.0 * reaction_reaction25));
	
% Species:   id = TGFb_In, name = TGFb_In, affected by kineticLaw
	xdot(6) = (1/(compartment_cyt))*(( 1.0 * reaction_reaction9) + ( 1.0 * reaction_reaction10) + ( 1.0 * reaction_reaction17) + ( 1.0 * reaction_reaction23) + (-1.0 * reaction_reaction24));
	
% Species:   id = Active_R2, name = Active_TGFR2, affected by kineticLaw
	xdot(7) = (1/(compartment_cyt))*(( 1.0 * reaction_reaction3) + (-1.0 * reaction_reaction4) + (-1.0 * reaction_reaction7) + ( 1.0 * reaction_reaction8));
	
% Species:   id = Active_Rec, name = Active_Rec, affected by kineticLaw
	xdot(8) = (1/(compartment_cyt))*(( 1.0 * reaction_reaction7) + (-1.0 * reaction_reaction8) + (-1.0 * reaction_reaction14) + ( 1.0 * reaction_reaction15) + (-1.0 * reaction_reaction22));
	
% Species:   id = Active_Rec_endo, name = Active_Rec_endo, affected by kineticLaw
	xdot(9) = (1/(compartment_cyt))*((-1.0 * reaction_reaction9) + (-1.0 * reaction_reaction10) + (-1.0 * reaction_reaction11) + ( 1.0 * reaction_reaction22) + (-1.0 * reaction_reaction23));
	
% Species:   id = Inactive_Rec, name = Inactive_Rec, affected by kineticLaw
	xdot(10) = (1/(compartment_cyt))*(( 1.0 * reaction_reaction14) + (-1.0 * reaction_reaction15) + (-1.0 * reaction_reaction16) + (-1.0 * reaction_reaction17));
	
% Species:   id = pS2_c, name = pSMAD2_c, affected by kineticLaw
	xdot(11) = (1/(compartment_cyt))*(( 1.0 * reaction_reaction26) + (-2.0 * reaction_reaction27) + ( 2.0 * reaction_reaction28) + (-3.0 * reaction_reaction31) + ( 3.0 * reaction_reaction32) + (-1.0 * reaction_reaction39) + ( 1.0 * reaction_reaction40) + (-1.0 * reaction_reaction57) + ( 1.0 * reaction_reaction60) + ( 2.0 * reaction_reaction61) + ( 2.0 * reaction_reaction62));
	
% Species:   id = S2_c, name = SMAD2_c, affected by kineticLaw
	xdot(12) = (1/(compartment_cyt))*((-1.0 * reaction_reaction26) + (-1.0 * reaction_reaction35) + ( 1.0 * reaction_reaction36) + ( 1.0 * reaction_reaction45) + (-1.0 * reaction_reaction54));
	
% Species:   id = S4_c, name = SMAD4_c, affected by kineticLaw
	xdot(13) = (1/(compartment_cyt))*((-1.0 * reaction_reaction27) + ( 1.0 * reaction_reaction28) + (-1.0 * reaction_reaction37) + ( 1.0 * reaction_reaction38) + ( 1.0 * reaction_reaction46) + (-1.0 * reaction_reaction58) + ( 1.0 * reaction_reaction60));
	
% Species:   id = pS2_pS2_S4_c, name = pS2_pS2_S4_c, affected by kineticLaw
	xdot(14) = (1/(compartment_cyt))*(( 1.0 * reaction_reaction27) + (-1.0 * reaction_reaction28) + (-1.0 * reaction_reaction41) + (-1.0 * reaction_reaction60) + (-1.0 * reaction_reaction61));
	
% Species:   id = pS2_pS2_pS2_c, name = pS2_pS2_pS2_c, affected by kineticLaw
	xdot(15) = (1/(compartment_cyt))*(( 1.0 * reaction_reaction31) + (-1.0 * reaction_reaction32) + (-1.0 * reaction_reaction42) + (-1.0 * reaction_reaction62));
	
% Species:   id = Smad7mRNA, name = SMAD7_mRNA, affected by kineticLaw
	xdot(16) = (1/(compartment_cyt))*(( 1.0 * reaction_reaction52) + (-1.0 * reaction_reaction67));
	
% Species:   id = Smad7mRNA1, name = SMAD7_mRNA1, affected by kineticLaw
	xdot(17) = (1/(compartment_nuc))*(( 1.0 * reaction_reaction51) + (-1.0 * reaction_reaction52) + (-1.0 * reaction_reaction66));
	
% Species:   id = S7, name = SMAD7, affected by kineticLaw
	xdot(18) = (1/(compartment_cyt))*((-1.0 * reaction_reaction14) + ( 1.0 * reaction_reaction15) + ( 1.0 * reaction_reaction16) + ( 1.0 * reaction_reaction17) + ( 1.0 * reaction_reaction53) + (-1.0 * reaction_reaction68));
	
% Species:   id = pS2_n, name = pSMAD2_n, affected by kineticLaw
	xdot(19) = (1/(compartment_nuc))*((-2.0 * reaction_reaction29) + ( 2.0 * reaction_reaction30) + (-3.0 * reaction_reaction33) + ( 3.0 * reaction_reaction34) + ( 1.0 * reaction_reaction39) + (-1.0 * reaction_reaction40) + (-1.0 * reaction_reaction43) + ( 1.0 * reaction_reaction44) + (-1.0 * reaction_reaction56) + ( 1.0 * reaction_reaction63) + ( 2.0 * reaction_reaction64) + ( 2.0 * reaction_reaction65));
	
% Species:   id = pS2_pS2_S4_n, name = pS2_pS2_S4_n, affected by kineticLaw
	xdot(20) = (1/(compartment_nuc))*(( 1.0 * reaction_reaction29) + (-1.0 * reaction_reaction30) + ( 1.0 * reaction_reaction41) + (-1.0 * reaction_reaction44) + (-1.0 * reaction_reaction63) + (-1.0 * reaction_reaction64));
	
% Species:   id = pS2_pS2_pS2_n, name = pS2_pS2_pS2_n, affected by kineticLaw
	xdot(21) = (1/(compartment_nuc))*(( 1.0 * reaction_reaction33) + (-1.0 * reaction_reaction34) + ( 1.0 * reaction_reaction42) + (-1.0 * reaction_reaction65));
	
% Species:   id = S2_n, name = SMAD2_n, affected by kineticLaw
	xdot(22) = (1/(compartment_nuc))*(( 1.0 * reaction_reaction35) + (-1.0 * reaction_reaction36) + ( 1.0 * reaction_reaction43) + ( 1.0 * reaction_reaction44) + (-1.0 * reaction_reaction55));
	
% Species:   id = S4_n, name = SMAD4_n, affected by kineticLaw
	xdot(23) = (1/(compartment_nuc))*((-1.0 * reaction_reaction29) + ( 1.0 * reaction_reaction30) + ( 1.0 * reaction_reaction37) + (-1.0 * reaction_reaction38) + ( 1.0 * reaction_reaction44) + (-1.0 * reaction_reaction59) + ( 1.0 * reaction_reaction63));
end

function z=Function_for_reaction47_3_1_0(R1_total_C3,index_k_out_1_relative_speed_C3,k_in_R1_C3,kdeg_R1), z=(R1_total_C3*k_in_R1_C3*kdeg_R1^2/(k_in_R1_C3*kdeg_R1+kdeg_R1^2+index_k_out_1_relative_speed_C3*k_in_R1_C3*kdeg_R1));end

function z=Function_for_reaction39_3_0(S2_import_to_nuc_C3,cyt,pS2_c), z=(cyt*S2_import_to_nuc_C3*pS2_c);end

function z=Function_for_reaction37_3_0(S4_c,S4_import_to_nuc_C3,cyt), z=(cyt*S4_c*S4_import_to_nuc_C3);end

function z=Function_for_reaction51_3_0(DRB,K_mran,S7KD,hill_fact1,k_induced_S7_production_C3,mRNA_prod_C3,pS2_pS2_S4_n), z=(DRB*S7KD*(mRNA_prod_C3+k_induced_S7_production_C3*pS2_pS2_S4_n^hill_fact1/(K_mran^hill_fact1+pS2_pS2_S4_n^hill_fact1)));end

function z=Function_for_reaction34_2_0(index_kb_homotrimer,kb_trimmer,pS2_pS2_pS2_n), z=(index_kb_homotrimer*kb_trimmer*pS2_pS2_pS2_n);end

function z=Function_for_reaction45_3_1_0(S2_export_from_nuc_C3,S2_import_to_nuc_C3,S2_total_C3,kdeg_S2), z=(S2_total_C3*(S2_import_to_nuc_C3*kdeg_S2+S2_export_from_nuc_C3*kdeg_S2+kdeg_S2^2)/(2*S2_import_to_nuc_C3+S2_export_from_nuc_C3+kdeg_S2));end

function z=Function_for_reaction15(Inactive_Rec,index_seq_kb,kf_Seq_S7_Rec), z=(Inactive_Rec*index_seq_kb*kf_Seq_S7_Rec);end

function z=Function_for_reaction8(Active_Rec,index_kb_R1,kf_R1_activation), z=(Active_Rec*index_kb_R1*kf_R1_activation);end

function z=Function_for_reaction40_3_0(S2_export_from_nuc_C3,nuc,pS2_n), z=(nuc*S2_export_from_nuc_C3*pS2_n);end

function z=Function_for_reaction32_3_0(index_kb_homotrimer,kb_trimmer,pS2_pS2_pS2_c), z=(index_kb_homotrimer*kb_trimmer*pS2_pS2_pS2_c);end

function z=Function_for_reaction16(Inactive_Rec,index_induced_ligand_deg,kin_deg_Ligand), z=(Inactive_Rec*index_induced_ligand_deg*kin_deg_Ligand);end

function z=Function_for_reaction44_4_0(index_trimer_dephos,k_Dephos_C3,pS2_pS2_S4_n), z=(index_trimer_dephos*k_Dephos_C3*pS2_pS2_S4_n);end

function z=Function_for_reaction6(Active_R2,index_kb_R2,k_medium,kf_R2_activation), z=(Active_R2*index_kb_R2*kf_R2_activation/k_medium);end

function z=Function_for_reaction35_3_0(S2_c,S2_import_to_nuc_C3,cyt), z=(cyt*S2_c*S2_import_to_nuc_C3);end

function z=Function_for_reaction38_3_0(S4_export_from_nuc_C3,S4_n,nuc), z=(nuc*S4_n*S4_export_from_nuc_C3);end

function z=Function_for_reaction53_1_0(Smad7mRNA,k_S7_protein_C3), z=(Smad7mRNA*k_S7_protein_C3);end

function z=Function_for_reaction36_3_0(S2_export_from_nuc_C3,S2_n,nuc), z=(nuc*S2_n*S2_export_from_nuc_C3);end

function z=Function_for_reaction5(Active_R2,index_kb_R2,kf_R2_activation), z=(Active_R2*index_kb_R2*kf_R2_activation);end

function z=Function_for_reaction31_2_1_0(index_kf_homotrimer,kf_trimmer,pS2_c), z=(index_kf_homotrimer*kf_trimmer*pS2_c^3);end

function z=Function_for_reaction26_0(Active_Rec_endo,S2_c,k_phosphorylation), z=(Active_Rec_endo*S2_c*k_phosphorylation);end

function z=Function_for_reaction52_3(Smad7mRNA1,export_cytoplasm,nuc), z=(nuc*Smad7mRNA1*export_cytoplasm);end

function z=Function_for_reaction41_2(Trimer_import_to_nuc,cyt,pS2_pS2_S4_c), z=(cyt*Trimer_import_to_nuc*pS2_pS2_S4_c);end

function z=Function_for_reaction22_2_0(Active_Rec,index_active_Rec_internalize_C3,k_in_R1_C3), z=(Active_Rec*index_active_Rec_internalize_C3*k_in_R1_C3);end

function z=Function_for_reaction1(TGFb,TGFb_R2_surface,k_medium,kf_R2_activation), z=(TGFb*TGFb_R2_surface*kf_R2_activation/k_medium);end

function z=Function_for_reaction33_2_1_0(index_kf_homotrimer,kf_trimmer,pS2_n), z=(index_kf_homotrimer*kf_trimmer*pS2_n^3);end

function z=Function_for_reaction20_2_0(TGFb_R1_endo,index_k_out_1_relative_speed_C3,k_in_R1_C3), z=(TGFb_R1_endo*index_k_out_1_relative_speed_C3*k_in_R1_C3);end

function z=Function_for_reaction4(Active_R2,index_kb_R2,kf_R2_activation), z=(Active_R2*index_kb_R2*kf_R2_activation);end

function z=Function_for_reaction48_1_1_0(R2_total_C3,index_k_out_2_relative_speed_C3,k_in_R2_C3,kdeg_R2), z=(R2_total_C3*k_in_R2_C3*kdeg_R2^2/(k_in_R2_C3*kdeg_R2+kdeg_R2^2+index_k_out_2_relative_speed_C3*k_in_R2_C3*kdeg_R2));end

function z=Function_for_reaction46_3_1_0(S4_export_from_nuc_C3,S4_import_to_nuc_C3,S4_total_C3,kdeg_S4), z=(S4_total_C3*(S4_import_to_nuc_C3*kdeg_S4+S4_export_from_nuc_C3*kdeg_S4+kdeg_S4^2)/(2*S4_import_to_nuc_C3+S4_export_from_nuc_C3+kdeg_S4));end

function z=Function_for_reaction2(TGFb,TGFb_R2_surface,kf_R2_activation), z=(TGFb*TGFb_R2_surface*kf_R2_activation);end

function z=Function_for_reaction17(Inactive_Rec,index_induced_R2_deg,kdeg_R2), z=(Inactive_Rec*index_induced_R2_deg*kdeg_R2);end

function z=Function_for_reaction21_2_0(TGFb_R2_endo,index_k_out_2_relative_speed_C3,k_in_R2_C3), z=(TGFb_R2_endo*index_k_out_2_relative_speed_C3*k_in_R2_C3);end

function z=Function_for_reaction42_0(Trimer_import_to_nuc,cyt,pS2_pS2_pS2_c), z=(cyt*Trimer_import_to_nuc*pS2_pS2_pS2_c);end

function z=Function_for_reaction3(TGFb,TGFb_R2_surface,kf_R2_activation), z=(TGFb*TGFb_R2_surface*kf_R2_activation);end

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


