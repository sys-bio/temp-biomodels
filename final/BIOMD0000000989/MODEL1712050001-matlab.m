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
% Model name = Strasen2018 - TGFb SMAD Signalling - Dose dependent dynamics upon TGFb stimulation
%
% isDescribedBy http://identifiers.org/pubmed/29371237
% is http://identifiers.org/biomodels.db/MODEL1712050001
% is http://identifiers.org/biomodels.db/BIOMD0000000989
%


function main()
%Initial conditions vector
	x0=zeros(23,1);
	x0(1) = 16.1097160260841;
	x0(2) = 6.94111873244591;
	x0(3) = 18.7630965144135;
	x0(4) = 28.0580813186837;
	x0(5) = 25.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 638.643456998353;
	x0(13) = 460.475533908981;
	x0(14) = 0.0;
	x0(15) = 0.0;
	x0(16) = 0.0564200511458056;
	x0(17) = 12.0433652207326;
	x0(18) = 0.36708251187161;
	x0(19) = 0.0;
	x0(20) = 0.0;
	x0(21) = 0.0;
	x0(22) = 237.398682374289;
	x0(23) = 169.417487941602;


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
% Parameter:   id =  K_mran, name = K_mran
	global_par_K_mran=223.595257238238;
% Parameter:   id =  R1_total, name = R1_total
	global_par_R1_total=34.8728125404976;
% Parameter:   id =  R2_total, name = R2_total
	global_par_R2_total=34.9992000511296;
% Parameter:   id =  S2_export_from_nuc, name = S2_export_from_nuc
	global_par_S2_export_from_nuc=1.99869955250212;
% Parameter:   id =  S2_import_to_nuc, name = S2_import_to_nuc
	global_par_S2_import_to_nuc=0.371577202544786;
% Parameter:   id =  S2_total, name = S2_total
	global_par_S2_total=876.042139372642;
% Parameter:   id =  S4_export_from_nuc, name = S4_export_from_nuc
	global_par_S4_export_from_nuc=0.196810731388947;
% Parameter:   id =  S4_import_to_nuc, name = S4_import_to_nuc
	global_par_S4_import_to_nuc=0.0370885363056236;
% Parameter:   id =  S4_total, name = S4_total
	global_par_S4_total=629.893021850583;
% Parameter:   id =  Trimer_import_to_nuc, name = Trimer_import_to_nuc
	global_par_Trimer_import_to_nuc=0.14403262974308;
% Parameter:   id =  export_cytoplasm, name = export_cytoplasm
	global_par_export_cytoplasm=0.030437091663097;
% Parameter:   id =  hill_fact1, name = hill_fact1
	global_par_hill_fact1=3.98592596228747;
% Parameter:   id =  index_active_Rec_internalize, name = index_active_Rec_internalize
	global_par_index_active_Rec_internalize=0.537380811093942;
% Parameter:   id =  index_induced_R2_deg, name = index_induced_R2_deg
	global_par_index_induced_R2_deg=1.00037810941361;
% Parameter:   id =  index_induced_ligand_deg, name = index_induced_ligand_deg
	global_par_index_induced_ligand_deg=2.7210717377255;
% Parameter:   id =  index_k_out_1_relative_speed, name = index_k_out_1_relative_speed
	global_par_index_k_out_1_relative_speed=0.566651645025112;
% Parameter:   id =  index_k_out_2_relative_speed, name = index_k_out_2_relative_speed
	global_par_index_k_out_2_relative_speed=0.245785368672998;
% Parameter:   id =  index_kb_R1, name = index_kb_R1
	global_par_index_kb_R1=1.61229612947783;
% Parameter:   id =  index_kb_R2, name = index_kb_R2
	global_par_index_kb_R2=8.70467633794271;
% Parameter:   id =  index_kb_homotrimer, name = index_kb_homotrimer
	global_par_index_kb_homotrimer=0.0164056196749139;
% Parameter:   id =  index_kf_homotrimer, name = index_kf_homotrimer
	global_par_index_kf_homotrimer=4.48445616275042;
% Parameter:   id =  index_seq_kb, name = index_seq_kb
	global_par_index_seq_kb=8.81183442123411E-4;
% Parameter:   id =  index_trimer_dephos, name = index_trimer_dephos
	global_par_index_trimer_dephos=2.60999282198359;
% Parameter:   id =  k5, name = k5
	global_par_k5=47.0;
% Parameter:   id =  k_Dephos, name = k_Dephos
	global_par_k_Dephos=0.139418263062769;
% Parameter:   id =  k_S7_protein, name = k_S7_protein
	global_par_k_S7_protein=0.218269773101254;
% Parameter:   id =  k_disso_Active_Rec, name = k_disso_Active_Rec
	global_par_k_disso_Active_Rec=0.00103714944572345;
% Parameter:   id =  k_in_1, name = k_in_1
	global_par_k_in_1=0.20092069321314;
% Parameter:   id =  k_in_2, name = k_in_2
	global_par_k_in_2=0.62580495280349;
% Parameter:   id =  k_induced_S7_production, name = k_induced_S7_production
	global_par_k_induced_S7_production=4.99901466408568;
% Parameter:   id =  k_medium, name = k_medium
	global_par_k_medium=2018.93290162616;
% Parameter:   id =  k_phosphorylation, name = k_phosphorylation
	global_par_k_phosphorylation=0.0701273900652988;
% Parameter:   id =  kb_trimmer, name = kb_trimmer
	global_par_kb_trimmer=1.60762398289129;
% Parameter:   id =  kdeg_R1, name = kdeg_R1
	global_par_kdeg_R1=0.0586554820930934;
% Parameter:   id =  kdeg_R2, name = kdeg_R2
	global_par_kdeg_R2=0.00100039445581987;
% Parameter:   id =  kdeg_S2, name = kdeg_S2
	global_par_kdeg_S2=5.14148278553222E-4;
% Parameter:   id =  kdeg_S4, name = kdeg_S4
	global_par_kdeg_S4=0.00480202730242853;
% Parameter:   id =  kdeg_S7, name = kdeg_S7
	global_par_kdeg_S7=0.00102253743337089;
% Parameter:   id =  kf_R1_activation, name = kf_R1_activation
	global_par_kf_R1_activation=4.98547574132432;
% Parameter:   id =  kf_R2_activation, name = kf_R2_activation
	global_par_kf_R2_activation=4.95555330964476;
% Parameter:   id =  kf_Seq_S7_Rec, name = kf_Seq_S7_Rec
	global_par_kf_Seq_S7_Rec=0.882166671316411;
% Parameter:   id =  kf_trimmer, name = kf_trimmer
	global_par_kf_trimmer=4.81430089969474;
% Parameter:   id =  kin_deg_Ligand, name = kin_deg_Ligand
	global_par_kin_deg_Ligand=0.720198437381795;
% Parameter:   id =  kmRNA1deg_S7, name = kmRNA1deg_S7
	global_par_kmRNA1deg_S7=0.0052188859785782;
% Parameter:   id =  kmRNAdeg_S7, name = kmRNAdeg_S7
	global_par_kmRNAdeg_S7=0.0990155435421535;
% Parameter:   id =  mRNA_prod, name = mRNA_prod
	global_par_mRNA_prod=0.0130886858359441;
% Parameter:   id =  TGFb_LIGAND_Dose, name = TGFb_LIGAND_Dose
	global_par_TGFb_LIGAND_Dose=25.0;
% Parameter:   id =  NUC_CYT_SMAD2, name = NUC/CYT SMAD2
% assignmentRule: variable = NUC_CYT_SMAD2
	global_par_NUC_CYT_SMAD2=(2*x(20)+x(22)+x(19)+3*x(21))/(2*x(14)+x(12)+x(11)+3*x(15));

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
	reaction_reaction14=compartment_cyt*global_par_kf_Seq_S7_Rec*x(8)*x(17);

% Reaction: id = reaction15, name = reaction15
	reaction_reaction15=compartment_cyt*Function_for_reaction15(x(10), global_par_index_seq_kb, global_par_kf_Seq_S7_Rec);

% Reaction: id = reaction16, name = reaction16
	reaction_reaction16=compartment_cyt*Function_for_reaction16(x(10), global_par_index_induced_ligand_deg, global_par_kin_deg_Ligand);

% Reaction: id = reaction17, name = reaction17
	reaction_reaction17=compartment_cyt*Function_for_reaction17(x(10), global_par_index_induced_R2_deg, global_par_kdeg_R2);

% Reaction: id = reaction18, name = reaction18
	reaction_reaction18=compartment_cyt*global_par_k_in_1*x(1);

% Reaction: id = reaction19, name = reaction19
	reaction_reaction19=compartment_cyt*global_par_k_in_2*x(2);

% Reaction: id = reaction20, name = reaction20
	reaction_reaction20=compartment_cyt*Function_for_reaction20(x(3), global_par_index_k_out_1_relative_speed, global_par_k_in_1);

% Reaction: id = reaction21, name = reaction21
	reaction_reaction21=compartment_cyt*Function_for_reaction21(x(4), global_par_index_k_out_2_relative_speed, global_par_k_in_2);

% Reaction: id = reaction22, name = reaction22
	reaction_reaction22=compartment_cyt*Function_for_reaction22(x(8), global_par_index_active_Rec_internalize, global_par_k_in_1);

% Reaction: id = reaction23, name = reaction23
	reaction_reaction23=compartment_cyt*global_par_k_disso_Active_Rec*x(9);

% Reaction: id = reaction24, name = reaction24
	reaction_reaction24=compartment_cyt*global_par_kin_deg_Ligand*x(6);

% Reaction: id = reaction25, name = reaction25
	reaction_reaction25=compartment_cyt*Function_for_reaction25(x(9), x(12), global_par_k_phosphorylation);

% Reaction: id = reaction26, name = reaction26
	reaction_reaction26=compartment_cyt*global_par_kf_trimmer*x(11)^2*x(13);

% Reaction: id = reaction27, name = reaction27
	reaction_reaction27=compartment_cyt*global_par_kb_trimmer*x(14);

% Reaction: id = reaction28, name = reaction28
	reaction_reaction28=compartment_nuc*global_par_kf_trimmer*x(19)^2*x(23);

% Reaction: id = reaction29, name = reaction29
	reaction_reaction29=compartment_nuc*global_par_kb_trimmer*x(20);

% Reaction: id = reaction30, name = reaction30
	reaction_reaction30=compartment_cyt*Function_for_reaction30_0(global_par_index_kf_homotrimer, global_par_kf_trimmer, x(11));

% Reaction: id = reaction31, name = reaction31
	reaction_reaction31=compartment_nuc*Function_for_reaction31_0(global_par_index_kf_homotrimer, global_par_kf_trimmer, x(19));

% Reaction: id = reaction32, name = reaction32
	reaction_reaction32=compartment_nuc*Function_for_reaction32(global_par_index_kb_homotrimer, global_par_kb_trimmer, x(21));

% Reaction: id = reaction33, name = reaction33
	reaction_reaction33=compartment_cyt*Function_for_reaction33(global_par_index_kb_homotrimer, global_par_kb_trimmer, x(15));

% Reaction: id = reaction34, name = reaction34
	reaction_reaction34=Function_for_reaction34(x(12), global_par_S2_import_to_nuc, compartment_cyt);

% Reaction: id = reaction35, name = reaction35
	reaction_reaction35=Function_for_reaction35(global_par_S2_export_from_nuc, x(22), compartment_nuc);

% Reaction: id = reaction36, name = reaction36
	reaction_reaction36=Function_for_reaction36(x(13), global_par_S4_import_to_nuc, compartment_cyt);

% Reaction: id = reaction37, name = reaction37
	reaction_reaction37=Function_for_reaction37(global_par_S4_export_from_nuc, x(23), compartment_nuc);

% Reaction: id = reaction38, name = reaction38
	reaction_reaction38=Function_for_reaction38(global_par_S2_import_to_nuc, compartment_cyt, x(11));

% Reaction: id = reaction39, name = reaction39
	reaction_reaction39=Function_for_reaction39(global_par_S2_export_from_nuc, compartment_nuc, x(19));

% Reaction: id = reaction40, name = reaction40
	reaction_reaction40=Function_for_reaction40(global_par_Trimer_import_to_nuc, compartment_cyt, x(14));

% Reaction: id = reaction41, name = reaction41
	reaction_reaction41=Function_for_reaction41(global_par_Trimer_import_to_nuc, compartment_cyt, x(15));

% Reaction: id = reaction42, name = reaction42
	reaction_reaction42=compartment_nuc*global_par_k_Dephos*x(19);

% Reaction: id = reaction43, name = reaction43
	reaction_reaction43=compartment_nuc*Function_for_reaction43(global_par_index_trimer_dephos, global_par_k_Dephos, x(20));

% Reaction: id = reaction44, name = reaction44
	reaction_reaction44=compartment_cyt*Function_for_reaction44_0(global_par_S2_export_from_nuc, global_par_S2_import_to_nuc, global_par_S2_total, global_par_kdeg_S2);

% Reaction: id = reaction45, name = reaction45
	reaction_reaction45=compartment_cyt*Function_for_reaction45_0(global_par_S4_export_from_nuc, global_par_S4_import_to_nuc, global_par_S4_total, global_par_kdeg_S4);

% Reaction: id = reaction46, name = reaction46
	reaction_reaction46=compartment_cyt*Function_for_reaction46_0(global_par_R1_total, global_par_index_k_out_1_relative_speed, global_par_k_in_1, global_par_kdeg_R1);

% Reaction: id = reaction47, name = reaction47
	reaction_reaction47=compartment_cyt*Function_for_reaction47_0(global_par_R2_total, global_par_index_k_out_2_relative_speed, global_par_k_in_2, global_par_kdeg_R2);

% Reaction: id = reaction50, name = reaction48
	reaction_reaction50=compartment_nuc*Function_for_reaction50_2(global_par_K_mran, global_par_hill_fact1, global_par_k_induced_S7_production, global_par_mRNA_prod, x(20));

% Reaction: id = reaction51, name = reaction49
	reaction_reaction51=Function_for_reaction51(x(18), global_par_export_cytoplasm, compartment_nuc);

% Reaction: id = reaction52, name = reaction50
	reaction_reaction52=compartment_cyt*Function_for_reaction52(x(16), global_par_k_S7_protein);

% Reaction: id = reaction53, name = reaction51
	reaction_reaction53=compartment_cyt*global_par_kdeg_S2*x(12);

% Reaction: id = reaction54, name = reaction52
	reaction_reaction54=compartment_nuc*global_par_kdeg_S2*x(22);

% Reaction: id = reaction55, name = reaction53
	reaction_reaction55=compartment_nuc*global_par_kdeg_S2*x(19);

% Reaction: id = reaction56, name = reaction54
	reaction_reaction56=compartment_cyt*global_par_kdeg_S2*x(11);

% Reaction: id = reaction57, name = reaction55
	reaction_reaction57=compartment_cyt*global_par_kdeg_S4*x(13);

% Reaction: id = reaction58, name = reaction56
	reaction_reaction58=compartment_nuc*global_par_kdeg_S4*x(23);

% Reaction: id = reaction59, name = reaction57
	reaction_reaction59=compartment_cyt*global_par_kdeg_S2*x(14);

% Reaction: id = reaction60, name = reaction58
	reaction_reaction60=compartment_cyt*global_par_kdeg_S4*x(14);

% Reaction: id = reaction61, name = reaction59
	reaction_reaction61=compartment_cyt*global_par_kdeg_S2*x(15);

% Reaction: id = reaction62, name = reaction60
	reaction_reaction62=compartment_nuc*global_par_kdeg_S2*x(20);

% Reaction: id = reaction63, name = reaction61
	reaction_reaction63=compartment_nuc*global_par_kdeg_S4*x(20);

% Reaction: id = reaction64, name = reaction62
	reaction_reaction64=compartment_nuc*global_par_kdeg_S2*x(21);

% Reaction: id = reaction65, name = reaction63
	reaction_reaction65=compartment_nuc*global_par_kmRNA1deg_S7*x(18);

% Reaction: id = reaction66, name = reaction64
	reaction_reaction66=compartment_cyt*global_par_kmRNAdeg_S7*x(16);

% Reaction: id = reaction67, name = reaction65
	reaction_reaction67=compartment_cyt*global_par_kdeg_S7*x(17);

	xdot=zeros(23,1);
	
% Species:   id = TGFb_R1_surface, name = TGFb_TGFR1_surface, affected by kineticLaw
	xdot(1) = (1/(compartment_cyt))*((-1.0 * reaction_reaction7) + ( 1.0 * reaction_reaction8) + ( 1.0 * reaction_reaction16) + ( 1.0 * reaction_reaction17) + (-1.0 * reaction_reaction18) + ( 1.0 * reaction_reaction20) + ( 1.0 * reaction_reaction46));
	
% Species:   id = TGFb_R2_surface, name = TGFb_TGFR2_surface, affected by kineticLaw
	xdot(2) = (1/(compartment_cyt))*((-1.0 * reaction_reaction2) + ( 1.0 * reaction_reaction5) + ( 1.0 * reaction_reaction16) + (-1.0 * reaction_reaction19) + ( 1.0 * reaction_reaction21) + ( 1.0 * reaction_reaction47));
	
% Species:   id = TGFb_R1_endo, name = TGFb_TGFR1_endo, affected by kineticLaw
	xdot(3) = (1/(compartment_cyt))*(( 1.0 * reaction_reaction9) + ( 1.0 * reaction_reaction11) + (-1.0 * reaction_reaction12) + ( 1.0 * reaction_reaction18) + (-1.0 * reaction_reaction20) + ( 1.0 * reaction_reaction23));
	
% Species:   id = TGFb_R2_endo, name = TGFb_TGFR2_endo, affected by kineticLaw
	xdot(4) = (1/(compartment_cyt))*(( 1.0 * reaction_reaction10) + ( 1.0 * reaction_reaction11) + (-1.0 * reaction_reaction13) + ( 1.0 * reaction_reaction19) + (-1.0 * reaction_reaction21) + ( 1.0 * reaction_reaction23));
	
% Species:   id = TGFb, name = TGFb, affected by kineticLaw
	xdot(5) = (1/(compartment_cyt))*((-1.0 * reaction_reaction1) + ( 1.0 * reaction_reaction6));
	
% Species:   id = TGFb_In, name = TGFb_In, affected by kineticLaw
	xdot(6) = (1/(compartment_cyt))*(( 1.0 * reaction_reaction9) + ( 1.0 * reaction_reaction10) + ( 1.0 * reaction_reaction17) + ( 1.0 * reaction_reaction23) + (-1.0 * reaction_reaction24));
	
% Species:   id = Active_R2, name = Active_TGFR2, affected by kineticLaw
	xdot(7) = (1/(compartment_cyt))*(( 1.0 * reaction_reaction3) + (-1.0 * reaction_reaction4) + (-1.0 * reaction_reaction7) + ( 1.0 * reaction_reaction8));
	
% Species:   id = Active_Rec, name = Active_TGFb-TGFR1-TGFR2, affected by kineticLaw
	xdot(8) = (1/(compartment_cyt))*(( 1.0 * reaction_reaction7) + (-1.0 * reaction_reaction8) + (-1.0 * reaction_reaction14) + ( 1.0 * reaction_reaction15) + (-1.0 * reaction_reaction22));
	
% Species:   id = Active_Rec_endo, name = Active_TGFb-TGFR1-TGFR2_endo, affected by kineticLaw
	xdot(9) = (1/(compartment_cyt))*((-1.0 * reaction_reaction9) + (-1.0 * reaction_reaction10) + (-1.0 * reaction_reaction11) + ( 1.0 * reaction_reaction22) + (-1.0 * reaction_reaction23));
	
% Species:   id = Inactive_Rec, name = Inactive_TGFb-TGFR1-TGFR2, affected by kineticLaw
	xdot(10) = (1/(compartment_cyt))*(( 1.0 * reaction_reaction14) + (-1.0 * reaction_reaction15) + (-1.0 * reaction_reaction16) + (-1.0 * reaction_reaction17));
	
% Species:   id = pS2_c, name = pSMAD2_c, affected by kineticLaw
	xdot(11) = (1/(compartment_cyt))*(( 1.0 * reaction_reaction25) + (-2.0 * reaction_reaction26) + ( 2.0 * reaction_reaction27) + (-3.0 * reaction_reaction30) + ( 3.0 * reaction_reaction33) + (-1.0 * reaction_reaction38) + ( 1.0 * reaction_reaction39) + (-1.0 * reaction_reaction56) + ( 1.0 * reaction_reaction59) + ( 2.0 * reaction_reaction60) + ( 2.0 * reaction_reaction61));
	
% Species:   id = S2_c, name = SMAD2_c, affected by kineticLaw
	xdot(12) = (1/(compartment_cyt))*((-1.0 * reaction_reaction25) + (-1.0 * reaction_reaction34) + ( 1.0 * reaction_reaction35) + ( 1.0 * reaction_reaction44) + (-1.0 * reaction_reaction53));
	
% Species:   id = S4_c, name = SMAD4_c, affected by kineticLaw
	xdot(13) = (1/(compartment_cyt))*((-1.0 * reaction_reaction26) + ( 1.0 * reaction_reaction27) + (-1.0 * reaction_reaction36) + ( 1.0 * reaction_reaction37) + ( 1.0 * reaction_reaction45) + (-1.0 * reaction_reaction57) + ( 1.0 * reaction_reaction59));
	
% Species:   id = pS2_pS2_S4_c, name = pSMAD2_pSMAD2_SMAD4_c, affected by kineticLaw
	xdot(14) = (1/(compartment_cyt))*(( 1.0 * reaction_reaction26) + (-1.0 * reaction_reaction27) + (-1.0 * reaction_reaction40) + (-1.0 * reaction_reaction59) + (-1.0 * reaction_reaction60));
	
% Species:   id = pS2_pS2_pS2_c, name = pSMAD2_trimer_c, affected by kineticLaw
	xdot(15) = (1/(compartment_cyt))*(( 1.0 * reaction_reaction30) + (-1.0 * reaction_reaction33) + (-1.0 * reaction_reaction41) + (-1.0 * reaction_reaction61));
	
% Species:   id = Smad7mRNA, name = SMAD7_mRNA, affected by kineticLaw
	xdot(16) = (1/(compartment_cyt))*(( 1.0 * reaction_reaction51) + (-1.0 * reaction_reaction66));
	
% Species:   id = S7, name = SMAD7, affected by kineticLaw
	xdot(17) = (1/(compartment_cyt))*((-1.0 * reaction_reaction14) + ( 1.0 * reaction_reaction15) + ( 1.0 * reaction_reaction16) + ( 1.0 * reaction_reaction17) + ( 1.0 * reaction_reaction52) + (-1.0 * reaction_reaction67));
	
% Species:   id = Smad7mRNA1, name = SMAD7_mRNA1, affected by kineticLaw
	xdot(18) = (1/(compartment_nuc))*(( 1.0 * reaction_reaction50) + (-1.0 * reaction_reaction51) + (-1.0 * reaction_reaction65));
	
% Species:   id = pS2_n, name = pSMAD2_n, affected by kineticLaw
	xdot(19) = (1/(compartment_nuc))*((-2.0 * reaction_reaction28) + ( 2.0 * reaction_reaction29) + (-3.0 * reaction_reaction31) + ( 3.0 * reaction_reaction32) + ( 1.0 * reaction_reaction38) + (-1.0 * reaction_reaction39) + (-1.0 * reaction_reaction42) + ( 1.0 * reaction_reaction43) + (-1.0 * reaction_reaction55) + ( 1.0 * reaction_reaction62) + ( 2.0 * reaction_reaction63) + ( 2.0 * reaction_reaction64));
	
% Species:   id = pS2_pS2_S4_n, name = pSMAD2_pSMAD2_SMAD4_n, affected by kineticLaw
	xdot(20) = (1/(compartment_nuc))*(( 1.0 * reaction_reaction28) + (-1.0 * reaction_reaction29) + ( 1.0 * reaction_reaction40) + (-1.0 * reaction_reaction43) + (-1.0 * reaction_reaction62) + (-1.0 * reaction_reaction63));
	
% Species:   id = pS2_pS2_pS2_n, name = pSMAD2_trimer_n, affected by kineticLaw
	xdot(21) = (1/(compartment_nuc))*(( 1.0 * reaction_reaction31) + (-1.0 * reaction_reaction32) + ( 1.0 * reaction_reaction41) + (-1.0 * reaction_reaction64));
	
% Species:   id = S2_n, name = SMAD2_n, affected by kineticLaw
	xdot(22) = (1/(compartment_nuc))*(( 1.0 * reaction_reaction34) + (-1.0 * reaction_reaction35) + ( 1.0 * reaction_reaction42) + ( 1.0 * reaction_reaction43) + (-1.0 * reaction_reaction54));
	
% Species:   id = S4_n, name = SMAD4_n, affected by kineticLaw
	xdot(23) = (1/(compartment_nuc))*((-1.0 * reaction_reaction28) + ( 1.0 * reaction_reaction29) + ( 1.0 * reaction_reaction36) + (-1.0 * reaction_reaction37) + ( 1.0 * reaction_reaction43) + (-1.0 * reaction_reaction58) + ( 1.0 * reaction_reaction62));
end

function z=Function_for_reaction6(Active_R2,index_kb_R2,k_medium,kf_R2_activation), z=(Active_R2*index_kb_R2*kf_R2_activation/k_medium);end

function z=Function_for_reaction37(S4_export_from_nuc,S4_n,nuc), z=(nuc*S4_n*S4_export_from_nuc);end

function z=Function_for_reaction40(Trimer_import_to_nuc,cyt,pS2_pS2_S4_c), z=(cyt*Trimer_import_to_nuc*pS2_pS2_S4_c);end

function z=Function_for_reaction50_2(K_mran,hill_fact1,k_induced_S7_production,mRNA_prod,pS2_pS2_S4_n), z=(mRNA_prod+k_induced_S7_production*pS2_pS2_S4_n^hill_fact1/(K_mran^hill_fact1+pS2_pS2_S4_n^hill_fact1));end

function z=Function_for_reaction2(TGFb,TGFb_R2_surface,kf_R2_activation), z=(TGFb*TGFb_R2_surface*kf_R2_activation);end

function z=Function_for_reaction36(S4_c,S4_import_to_nuc,cyt), z=(cyt*S4_c*S4_import_to_nuc);end

function z=Function_for_reaction52(Smad7mRNA,k_S7_protein), z=(Smad7mRNA*k_S7_protein);end

function z=Function_for_reaction5(Active_R2,index_kb_R2,kf_R2_activation), z=(Active_R2*index_kb_R2*kf_R2_activation);end

function z=Function_for_reaction15(Inactive_Rec,index_seq_kb,kf_Seq_S7_Rec), z=(Inactive_Rec*index_seq_kb*kf_Seq_S7_Rec);end

function z=Function_for_reaction8(Active_Rec,index_kb_R1,kf_R1_activation), z=(Active_Rec*index_kb_R1*kf_R1_activation);end

function z=Function_for_reaction32(index_kb_homotrimer,kb_trimmer,pS2_pS2_pS2_n), z=(index_kb_homotrimer*kb_trimmer*pS2_pS2_pS2_n);end

function z=Function_for_reaction34(S2_c,S2_import_to_nuc,cyt), z=(cyt*S2_c*S2_import_to_nuc);end

function z=Function_for_reaction21(TGFb_R2_endo,index_k_out_2_relative_speed,k_in_2), z=(TGFb_R2_endo*index_k_out_2_relative_speed*k_in_2);end

function z=Function_for_reaction20(TGFb_R1_endo,index_k_out_1_relative_speed,k_in_1), z=(TGFb_R1_endo*index_k_out_1_relative_speed*k_in_1);end

function z=Function_for_reaction51(Smad7mRNA1,export_cytoplasm,nuc), z=(nuc*Smad7mRNA1*export_cytoplasm);end

function z=Function_for_reaction25(Active_Rec_endo,S2_c,k_phosphorylation), z=(Active_Rec_endo*S2_c*k_phosphorylation);end

function z=Function_for_reaction35(S2_export_from_nuc,S2_n,nuc), z=(nuc*S2_n*S2_export_from_nuc);end

function z=Function_for_reaction38(S2_import_to_nuc,cyt,pS2_c), z=(cyt*S2_import_to_nuc*pS2_c);end

function z=Function_for_reaction17(Inactive_Rec,index_induced_R2_deg,kdeg_R2), z=(Inactive_Rec*index_induced_R2_deg*kdeg_R2);end

function z=Function_for_reaction3(TGFb,TGFb_R2_surface,kf_R2_activation), z=(TGFb*TGFb_R2_surface*kf_R2_activation);end

function z=Function_for_reaction43(index_trimer_dephos,k_Dephos,pS2_pS2_S4_n), z=(index_trimer_dephos*k_Dephos*pS2_pS2_S4_n);end

function z=Function_for_reaction4(Active_R2,index_kb_R2,kf_R2_activation), z=(Active_R2*index_kb_R2*kf_R2_activation);end

function z=Function_for_reaction39(S2_export_from_nuc,nuc,pS2_n), z=(nuc*S2_export_from_nuc*pS2_n);end

function z=Function_for_reaction33(index_kb_homotrimer,kb_trimmer,pS2_pS2_pS2_c), z=(index_kb_homotrimer*kb_trimmer*pS2_pS2_pS2_c);end

function z=Function_for_reaction41(Trimer_import_to_nuc,cyt,pS2_pS2_pS2_c), z=(cyt*Trimer_import_to_nuc*pS2_pS2_pS2_c);end

function z=Function_for_reaction1(TGFb,TGFb_R2_surface,k_medium,kf_R2_activation), z=(TGFb*TGFb_R2_surface*kf_R2_activation/k_medium);end

function z=Function_for_reaction22(Active_Rec,index_active_Rec_internalize,k_in_1), z=(Active_Rec*index_active_Rec_internalize*k_in_1);end

function z=Function_for_reaction16(Inactive_Rec,index_induced_ligand_deg,kin_deg_Ligand), z=(Inactive_Rec*index_induced_ligand_deg*kin_deg_Ligand);end

function z=Function_for_reaction45_0(S4_export_from_nuc,S4_import_to_nuc,S4_total,kdeg_S4), z=(S4_total*(S4_import_to_nuc*kdeg_S4+S4_export_from_nuc*kdeg_S4+kdeg_S4^2)/(2*S4_import_to_nuc+S4_export_from_nuc+kdeg_S4));end

function z=Function_for_reaction46_0(R1_total,index_k_out_1_relative_speed,k_in_1,kdeg_R1), z=(R1_total*k_in_1*kdeg_R1^2/(k_in_1*kdeg_R1+kdeg_R1^2+index_k_out_1_relative_speed*k_in_1*kdeg_R1));end

function z=Function_for_reaction47_0(R2_total,index_k_out_2_relative_speed,k_in_2,kdeg_R2), z=(R2_total*k_in_2*kdeg_R2^2/(k_in_2*kdeg_R2+kdeg_R2^2+index_k_out_2_relative_speed*k_in_2*kdeg_R2));end

function z=Function_for_reaction31_0(index_kf_homotrimer,kf_trimmer,pS2_n), z=(index_kf_homotrimer*kf_trimmer*pS2_n^3);end

function z=Function_for_reaction44_0(S2_export_from_nuc,S2_import_to_nuc,S2_total,kdeg_S2), z=(S2_total*(S2_import_to_nuc*kdeg_S2+S2_export_from_nuc*kdeg_S2+kdeg_S2^2)/(2*S2_import_to_nuc+S2_export_from_nuc+kdeg_S2));end

function z=Function_for_reaction30_0(index_kf_homotrimer,kf_trimmer,pS2_c), z=(index_kf_homotrimer*kf_trimmer*pS2_c^3);end

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


