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
% Model name = Hat2016 - Reponse of p53 System to irradiation in cell fate decision making
%
% is http://identifiers.org/biomodels.db/MODEL1809060002
% is http://identifiers.org/biomodels.db/BIOMD0000000943
%


function main()
%Initial conditions vector
	x0=zeros(42,1);
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 100000.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 0.0;
	x0(13) = 0.0;
	x0(14) = 0.0;
	x0(15) = 0.0;
	x0(16) = 0.0;
	x0(17) = 0.0;
	x0(18) = 0.0;
	x0(19) = 0.0;
	x0(20) = 0.0;
	x0(21) = 0.0;
	x0(22) = 0.0;
	x0(23) = 0.0;
	x0(24) = 300000.0;
	x0(25) = 0.0;
	x0(26) = 0.0;
	x0(27) = 0.0;
	x0(28) = 100000.0;
	x0(29) = 0.0;
	x0(30) = 60000.0;
	x0(31) = 0.0;
	x0(32) = 0.0;
	x0(33) = 0.0;
	x0(34) = 100000.0;
	x0(35) = 0.0;
	x0(36) = 100000.0;
	x0(37) = 100000.0;
	x0(38) = 0.0;
	x0(39) = 200000.0;
	x0(40) = 0.0;
	x0(41) = 0.0;
	x0(42) = 200000.0;


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

% Compartment: id = nuclear, name = nuclear, constant
	compartment_nuclear=1.0;
% Compartment: id = cytoplasm, name = cytoplasm, constant
	compartment_cytoplasm=1.0;
% Parameter:   id =  is_IR_switched_on, name = is_IR_switched_on
	global_par_is_IR_switched_on=0.0;
% Parameter:   id =  h1, name = h1
	global_par_h1=1.0E-6;
% Parameter:   id =  h2, name = h2
% Parameter:   id =  can_Caspase_make_DNA_DSB, name = can_Caspase_make_DNA_DSB
	global_par_can_Caspase_make_DNA_DSB=1.0;
% Parameter:   id =  rep, name = rep
% Parameter:   id =  has_DNA_DSB_repair, name = has_DNA_DSB_repair
	global_par_has_DNA_DSB_repair=1.0;
% Parameter:   id =  a1, name = a1
	global_par_a1=3.0E-10;
% Parameter:   id =  a2, name = a2
	global_par_a2=1.0E-12;
% Parameter:   id =  q0_pten, name = q0_pten
	global_par_q0_pten=1.0E-5;
% Parameter:   id =  q0_wip1, name = q0_wip1
	global_par_q0_wip1=1.0E-5;
% Parameter:   id =  q0_mdm2, name = q0_mdm2
	global_par_q0_mdm2=1.0E-4;
% Parameter:   id =  q0_bax, name = q0_bax
	global_par_q0_bax=1.0E-5;
% Parameter:   id =  q0_p21, name = q0_p21
	global_par_q0_p21=1.0E-5;
% Parameter:   id =  q1_pten, name = q1_pten
	global_par_q1_pten=3.0E-13;
% Parameter:   id =  q1_mdm2, name = q1_mdm2
	global_par_q1_mdm2=3.0E-13;
% Parameter:   id =  q1_wip1, name = q1_wip1
	global_par_q1_wip1=3.0E-13;
% Parameter:   id =  q1_p21, name = q1_p21
	global_par_q1_p21=3.0E-13;
% Parameter:   id =  q1_bax, name = q1_bax
	global_par_q1_bax=3.0E-13;
% Parameter:   id =  q2, name = q2
	global_par_q2=0.003;
% Parameter:   id =  s1, name = s1
	global_par_s1=0.1;
% Parameter:   id =  s2, name = s2
	global_par_s2=0.03;
% Parameter:   id =  s3, name = s3
	global_par_s3=0.1;
% Parameter:   id =  s4, name = s4
	global_par_s4=0.03;
% Parameter:   id =  s5, name = s5
	global_par_s5=0.1;
% Parameter:   id =  t1, name = t1
	global_par_t1=0.1;
% Parameter:   id =  t2, name = t2
	global_par_t2=0.1;
% Parameter:   id =  t3, name = t3
	global_par_t3=0.1;
% Parameter:   id =  t4, name = t4
	global_par_t4=0.1;
% Parameter:   id =  t5, name = t5
	global_par_t5=0.1;
% Parameter:   id =  s6, name = s6
	global_par_s6=300.0;
% Parameter:   id =  s7, name = s7
	global_par_s7=30.0;
% Parameter:   id =  s8, name = s8
	global_par_s8=30.0;
% Parameter:   id =  s9, name = s9
	global_par_s9=30.0;
% Parameter:   id =  s10, name = s10
	global_par_s10=3.0;
% Parameter:   id =  p1, name = p1
	global_par_p1=3.0E-4;
% Parameter:   id =  p2, name = p2
	global_par_p2=1.0E-8;
% Parameter:   id =  p3, name = p3
	global_par_p3=3.0E-8;
% Parameter:   id =  p4, name = p4
	global_par_p4=1.0E-10;
% Parameter:   id =  p5, name = p5
	global_par_p5=1.0E-8;
% Parameter:   id =  p6, name = p6
	global_par_p6=1.0E-8;
% Parameter:   id =  p7, name = p7
	global_par_p7=3.0E-9;
% Parameter:   id =  p8, name = p8
	global_par_p8=3.0E-9;
% Parameter:   id =  p9, name = p9
	global_par_p9=3.0E-6;
% Parameter:   id =  p10, name = p10
	global_par_p10=3.0E-6;
% Parameter:   id =  p11, name = p11
	global_par_p11=1.0E-10;
% Parameter:   id =  p12, name = p12
	global_par_p12=1.0E-9;
% Parameter:   id =  d1, name = d1
	global_par_d1=1.0E-8;
% Parameter:   id =  d2, name = d2
	global_par_d2=3.0E-5;
% Parameter:   id =  d3, name = d3
	global_par_d3=1.0E-4;
% Parameter:   id =  d4, name = d4
	global_par_d4=1.0E-10;
% Parameter:   id =  d5, name = d5
	global_par_d5=1.0E-4;
% Parameter:   id =  d6, name = d6
	global_par_d6=1.0E-10;
% Parameter:   id =  d7, name = d7
	global_par_d7=3.0E-7;
% Parameter:   id =  d8, name = d8
	global_par_d8=1.0E-4;
% Parameter:   id =  d9, name = d9
	global_par_d9=3.0E-5;
% Parameter:   id =  d10, name = d10
	global_par_d10=1.0E-4;
% Parameter:   id =  d11, name = d11
	global_par_d11=1.0E-10;
% Parameter:   id =  d12, name = d12
	global_par_d12=10000.0;
% Parameter:   id =  b1, name = b1
	global_par_b1=3.0E-5;
% Parameter:   id =  b2, name = b2
	global_par_b2=0.003;
% Parameter:   id =  b3, name = b3
	global_par_b3=0.003;
% Parameter:   id =  b4, name = b4
	global_par_b4=1.0E-5;
% Parameter:   id =  b5, name = b5
	global_par_b5=1.0E-5;
% Parameter:   id =  u1, name = u1
	global_par_u1=0.001;
% Parameter:   id =  u2, name = u2
	global_par_u2=0.001;
% Parameter:   id =  u3, name = u3
	global_par_u3=0.001;
% Parameter:   id =  u5, name = u5
	global_par_u5=1.0E-4;
% Parameter:   id =  u6, name = u6
	global_par_u6=1.0E-4;
% Parameter:   id =  i1, name = i1
	global_par_i1=0.001;
% Parameter:   id =  g1, name = g1
	global_par_g1=3.0E-4;
% Parameter:   id =  g2, name = g2
	global_par_g2=3.0E-4;
% Parameter:   id =  g3, name = g3
	global_par_g3=3.0E-4;
% Parameter:   id =  g4, name = g4
	global_par_g4=3.0E-4;
% Parameter:   id =  g5, name = g5
	global_par_g5=3.0E-4;
% Parameter:   id =  g6, name = g6
	global_par_g6=3.0E-5;
% Parameter:   id =  g7, name = g7
	global_par_g7=1.0E-13;
% Parameter:   id =  g8, name = g8
	global_par_g8=3.0E-4;
% Parameter:   id =  g9, name = g9
	global_par_g9=1.0E-4;
% Parameter:   id =  g10, name = g10
	global_par_g10=1.0E-5;
% Parameter:   id =  g101, name = g101
	global_par_g101=1.0E-5;
% Parameter:   id =  g11, name = g11
	global_par_g11=1.0E-11;
% Parameter:   id =  g12, name = g12
	global_par_g12=1.0E-13;
% Parameter:   id =  g13, name = g13
	global_par_g13=1.0E-13;
% Parameter:   id =  g14, name = g14
	global_par_g14=1.0E-4;
% Parameter:   id =  g15, name = g15
	global_par_g15=3.0E-5;
% Parameter:   id =  g16, name = g16
	global_par_g16=1.0E-4;
% Parameter:   id =  g17, name = g17
	global_par_g17=3.0E-4;
% Parameter:   id =  g18, name = g18
	global_par_g18=3.0E-4;
% Parameter:   id =  g19, name = g19
	global_par_g19=3.0E-4;
% Parameter:   id =  g20, name = g20
	global_par_g20=1.0E-4;
% Parameter:   id =  h, name = h
	global_par_h=2.0;
% Parameter:   id =  M1, name = M1
	global_par_M1=5.0;
% Parameter:   id =  M2, name = M2
	global_par_M2=100000.0;
% Parameter:   id =  M3, name = M3
	global_par_M3=200000.0;
% Parameter:   id =  DNA_DSB_RepairCplx_total, name = DNA_DSB_RepairCplx_total
	global_par_DNA_DSB_RepairCplx_total=20.0;
% Parameter:   id =  DNA_DSB_max, name = DNA_DSB_max
	global_par_DNA_DSB_max=1000000.0;
% Parameter:   id =  DNA_DSB_due_to_IR, name = DNA_DSB_due_to_IR
% Parameter:   id =  IR_Gy, name = IR_Gy
	global_par_IR_Gy=2.0;
% Parameter:   id =  DNA_DSB_per_IR_Gy, name = DNA_DSB_per_IR_Gy
	global_par_DNA_DSB_per_IR_Gy=10.0;
% Parameter:   id =  tp2, name = tp2
	global_par_tp2=600.0;
% Parameter:   id =  time_days, name = time_days
% assignmentRule: variable = rep
	global_par_rep=global_par_has_DNA_DSB_repair*0.001;
% assignmentRule: variable = h2
	global_par_h2=global_par_can_Caspase_make_DNA_DSB*1E-13;
% assignmentRule: variable = ATM_0
	x(34)=const_species_ATM_tot-x(2);
% assignmentRule: variable = Rb_phosphorylated
	x(38)=const_species_Rb_tot-x(24)-x(25);
% assignmentRule: variable = AKT_0
	x(36)=const_species_AKT_tot-x(14);
% assignmentRule: variable = PIP2
	x(37)=const_species_PIP_tot-x(19);
% assignmentRule: variable = SIAH1_phosphorylated
	x(35)=const_species_SIAH1_tot-x(3);
% assignmentRule: variable = BclXL_Bad_complex
	x(40)=const_species_BclXL_tot-x(28)-x(29);
% assignmentRule: variable = Bad_phosphorylated_Fourteen33_complex
	x(41)=const_species_Bad_tot-x(40)-x(30)-x(31);
% assignmentRule: variable = E2F1
	x(39)=const_species_E2F1_tot-x(25);
% assignmentRule: variable = Fourteen33_free
	x(42)=const_species_Fourteen33_tot-x(41);
% assignmentRule: variable = time_days
	global_par_time_days=time/86400;
% assignmentRule: variable = DNA_DSB_due_to_IR
	global_par_DNA_DSB_due_to_IR=global_par_IR_Gy*global_par_DNA_DSB_per_IR_Gy/global_par_tp2;

% Reaction: id = DNA_damage_R1, name = DNA damage R1
	reaction_DNA_damage_R1=compartment_nuclear*Function_for_R1(global_par_h1, global_par_DNA_DSB_due_to_IR, global_par_is_IR_switched_on, global_par_h2, x(33), global_par_DNA_DSB_max, x(1));

% Reaction: id = DNA_Repair_R2, name = DNA Repair R2
	reaction_DNA_Repair_R2=compartment_nuclear*Function_for_R2(x(1), global_par_rep, global_par_DNA_DSB_RepairCplx_total);

% Reaction: id = Dephoshorylation_by_Wip1_R3, name = Dephoshorylation by Wip1 R3
	reaction_Dephoshorylation_by_Wip1_R3=compartment_nuclear*Function_substrate_modifier(global_par_d1, x(9), x(2));

% Reaction: id = Phoshorylation_due_to_IR_R4, name = Phoshorylation due to IR R4
	reaction_Phoshorylation_due_to_IR_R4=compartment_nuclear*Function_for_R4(global_par_p1, x(34), x(1), global_par_h, global_par_M1);

% Reaction: id = Phosphorylation_by_ATM_p_R5, name = Phosphorylation by ATM_p R5
	reaction_Phosphorylation_by_ATM_p_R5=compartment_nuclear*Function_substrate_modifier(global_par_p2, x(2), x(3));

% Reaction: id = Dephosphorylation_of_SIAH1_p_R6, name = Dephosphorylation of SIAH1_p R6
	reaction_Dephosphorylation_of_SIAH1_p_R6=compartment_nuclear*Function_modifier(global_par_d2, x(35));

% Reaction: id = Degradation_induced_by_Mdm2_nuc_S166S186p_and_SIAH1_R8, name = Degradation induced by Mdm2_nuc_S166S186p and SIAH1 R8
	reaction_Degradation_induced_by_Mdm2_nuc_S166S186p_and_SIAH1_R8=compartment_nuclear*Function_for_R8(global_par_g7, x(4), x(3), x(8));

% Reaction: id = Phosphorylation_by_ATM_p_on_Ser15_and_Ser20_R10, name = Phosphorylation by ATM_p on Ser15 and Ser20 R10
	reaction_Phosphorylation_by_ATM_p_on_Ser15_and_Ser20_R10=compartment_nuclear*Function_substrate_modifier(global_par_p3, x(2), x(5));

% Reaction: id = Dephosphorylation_spontaneous_of_p53_arrester_R11, name = Dephosphorylation spontaneous of p53_arrester R11
	reaction_Dephosphorylation_spontaneous_of_p53_arrester_R11=compartment_nuclear*global_par_d3*x(6);

% Reaction: id = Degradation_spontanuous_and_induced_by_Mdm2_nuc_S166S186p__R12, name = Degradation spontanuous and induced by Mdm2_nuc_S166S186p  R12
	reaction_Degradation_spontanuous_and_induced_by_Mdm2_nuc_S166S186p__R12=compartment_nuclear*Function_for_R12(global_par_g101, global_par_g11, x(8), global_par_h, x(5));

% Reaction: id = Dephosphorylation_of_Ser46_by_Wip1_R13, name = Dephosphorylation of Ser46 by Wip1 R13
	reaction_Dephosphorylation_of_Ser46_by_Wip1_R13=compartment_nuclear*Function_substrate_modifier(global_par_d11, x(9), x(7));

% Reaction: id = Phosphorylation_at_Ser46_by_HIPK2_R14, name = Phosphorylation at Ser46 by HIPK2 R14
	reaction_Phosphorylation_at_Ser46_by_HIPK2_R14=compartment_nuclear*Function_substrate_modifier(global_par_p11, x(4), x(5));

% Reaction: id = Degradation_spontaneous_and_induced_by_Mdm2_nuc_S166S186p_R15, name = Degradation spontaneous and induced by Mdm2_nuc_S166S186p R15
	reaction_Degradation_spontaneous_and_induced_by_Mdm2_nuc_S166S186p_R15=compartment_nuclear*Function_for_R12(global_par_g101, global_par_g12, x(8), global_par_h, x(6));

% Reaction: id = Phosphorylation_at_Ser46_by_HIPK2_R16, name = Phosphorylation at Ser46 by HIPK2 R16
	reaction_Phosphorylation_at_Ser46_by_HIPK2_R16=compartment_nuclear*Function_substrate_modifier(global_par_p4, x(4), x(6));

% Reaction: id = Dephosphorylation_at_Ser46_by_Wip1_R17, name = Dephosphorylation at Ser46 by Wip1 R17
	reaction_Dephosphorylation_at_Ser46_by_Wip1_R17=compartment_nuclear*Function_substrate_modifier(global_par_d4, x(9), x(10));

% Reaction: id = Phosphorylation_by_ATM_p_on_Ser15_and_Ser20_R18, name = Phosphorylation by ATM_p on Ser15 and Ser20 R18
	reaction_Phosphorylation_by_ATM_p_on_Ser15_and_Ser20_R18=compartment_nuclear*Function_substrate_modifier(global_par_p3, x(2), x(7));

% Reaction: id = Degradation_spontaneous_and_induced_by_Mdm2_nuc_S166S186p_R19, name = Degradation spontaneous and induced by Mdm2_nuc_S166S186p R19
	reaction_Degradation_spontaneous_and_induced_by_Mdm2_nuc_S166S186p_R19=compartment_nuclear*Function_for_R12(global_par_g10, global_par_g13, x(8), global_par_h, x(7));

% Reaction: id = Degradation_spontaneous_and_induced_by_Mdm2_nuc_S166S186p_R20, name = Degradation spontaneous and induced by Mdm2_nuc_S166S186p R20
	reaction_Degradation_spontaneous_and_induced_by_Mdm2_nuc_S166S186p_R20=compartment_nuclear*Function_for_R12(global_par_g10, global_par_g13, x(8), global_par_h, x(10));

% Reaction: id = Dephosphorylation_of_Ser15_and_Ser20_R21, name = Dephosphorylation of Ser15 and Ser20 R21
	reaction_Dephosphorylation_of_Ser15_and_Ser20_R21=compartment_nuclear*global_par_d10*x(10);

% Reaction: id = Transcription_Mdm2_gene_transcription_R22, name = Transcription Mdm2 gene transcription R22
	reaction_Transcription_Mdm2_gene_transcription_R22=compartment_nuclear*Function_for_R22(global_par_s3, global_par_q0_mdm2, global_par_q1_mdm2, x(6), global_par_h, global_par_q2);

% Reaction: id = Degradation_spontaneous_R23, name = Degradation spontaneous R23
	reaction_Degradation_spontaneous_R23=compartment_nuclear*global_par_g3*x(11);

% Reaction: id = Translation_of_mdm2_R24, name = Translation of mdm2 R24
	reaction_Translation_of_mdm2_R24=Function_modifier(global_par_t3, x(11));

% Reaction: id = Phosphorylation_of_Mdm2_cyt_0_by_AKT_p_R25, name = Phosphorylation of Mdm2_cyt_0 by AKT_p R25
	reaction_Phosphorylation_of_Mdm2_cyt_0_by_AKT_p_R25=compartment_cytoplasm*Function_substrate_modifier(global_par_p5, x(14), x(12));

% Reaction: id = Dephosphorylation_at_Ser166_and_186_R26, name = Dephosphorylation at Ser166 and 186 R26
	reaction_Dephosphorylation_at_Ser166_and_186_R26=compartment_cytoplasm*global_par_d5*x(13);

% Reaction: id = Degradation_spontaneous_R27, name = Degradation spontaneous R27
	reaction_Degradation_spontaneous_R27=compartment_cytoplasm*global_par_g14*x(12);

% Reaction: id = Nuclear_import_of_Mdm2_cyto_S166S186p_R28, name = Nuclear import of Mdm2_cyto_S166S186p R28
	reaction_Nuclear_import_of_Mdm2_cyto_S166S186p_R28=global_par_i1*x(13);

% Reaction: id = Degradation_spontaneous_R29, name = Degradation spontaneous R29
	reaction_Degradation_spontaneous_R29=compartment_cytoplasm*global_par_g15*x(13);

% Reaction: id = Degradation_spontaneous_R30, name = Degradation spontaneous R30
	reaction_Degradation_spontaneous_R30=compartment_nuclear*global_par_g15*x(8);

% Reaction: id = Phosphorylation_by_ATM_p_at_Ser395_R31, name = Phosphorylation by ATM_p at Ser395 R31
	reaction_Phosphorylation_by_ATM_p_at_Ser395_R31=compartment_nuclear*Function_substrate_modifier(global_par_p6, x(2), x(8));

% Reaction: id = Dephosphorylation_of_Ser395_of_Mdm2_nuc_S166S186p_S395p_by_Wip1_R32, name = Dephosphorylation of Ser395 of Mdm2_nuc_S166S186p_S395p by Wip1 R32
	reaction_Dephosphorylation_of_Ser395_of_Mdm2_nuc_S166S186p_S395p_by_Wip1_R32=compartment_nuclear*Function_substrate_modifier(global_par_d6, x(9), x(15));

% Reaction: id = Degradation_spontaneous_R33, name = Degradation spontaneous R33
	reaction_Degradation_spontaneous_R33=compartment_nuclear*global_par_g15*x(15);

% Reaction: id = Degradation_Ser395p_dependent_R34, name = Degradation Ser395p-dependent R34
	reaction_Degradation_Ser395p_dependent_R34=compartment_nuclear*global_par_g16*x(15);

% Reaction: id = Transcription_of_Wip1_gene_R35, name = Transcription of Wip1 gene R35
	reaction_Transcription_of_Wip1_gene_R35=compartment_nuclear*Function_for_R22(global_par_s1, global_par_q0_wip1, global_par_q1_wip1, x(6), global_par_h, global_par_q2);

% Reaction: id = Degradation_R36, name = Degradation R36
	reaction_Degradation_R36=compartment_nuclear*global_par_g1*x(16);

% Reaction: id = Translation_of_Wip_mRNA_R37, name = Translation of Wip mRNA R37
	reaction_Translation_of_Wip_mRNA_R37=compartment_nuclear*Function_modifier(global_par_t1, x(16));

% Reaction: id = Translation_of_Wip_mRNA_R38, name = Translation of Wip mRNA R38
	reaction_Translation_of_Wip_mRNA_R38=compartment_nuclear*global_par_g8*x(9);

% Reaction: id = Transcription_of_PTEN_gene_R39, name = Transcription of PTEN gene R39
	reaction_Transcription_of_PTEN_gene_R39=compartment_nuclear*Function_for_R22(global_par_s2, global_par_q0_pten, global_par_q1_pten, x(10), global_par_h, global_par_q2);

% Reaction: id = Degradation_R40, name = Degradation R40
	reaction_Degradation_R40=compartment_nuclear*global_par_g2*x(17);

% Reaction: id = Translation_of_PTEN_mRNA_R41, name = Translation of PTEN_mRNA R41
	reaction_Translation_of_PTEN_mRNA_R41=compartment_nuclear*Function_modifier(global_par_t2, x(17));

% Reaction: id = Degradation_of_PTEN_R42, name = Degradation of PTEN R42
	reaction_Degradation_of_PTEN_R42=compartment_nuclear*global_par_g6*x(18);

% Reaction: id = Phopshorylation_of_PIP2_by_PI3K_R43, name = Phopshorylation of PIP2 by PI3K R43
	reaction_Phopshorylation_of_PIP2_by_PI3K_R43=compartment_nuclear*Function_for_R43(global_par_p8, x(37), const_species_PI3K_tot);

% Reaction: id = Dephosphorylation_of_PIP3_by_PTENR44, name = Dephosphorylation of PIP3 by PTENR44
	reaction_Dephosphorylation_of_PIP3_by_PTENR44=compartment_nuclear*Function_substrate_modifier(global_par_d7, x(18), x(19));

% Reaction: id = Phopshorylation_at_PIP3_R45, name = Phopshorylation at PIP3 R45
	reaction_Phopshorylation_at_PIP3_R45=Function_for_R45(global_par_p12, x(36), x(19));

% Reaction: id = Dephosphorylation_of_AKT_R46, name = Dephosphorylation of AKT R46
	reaction_Dephosphorylation_of_AKT_R46=compartment_cytoplasm*global_par_d8*x(14);

% Reaction: id = Transcription_of_p21_gene_R47, name = Transcription of p21 gene R47
	reaction_Transcription_of_p21_gene_R47=compartment_nuclear*Function_for_R22(global_par_s5, global_par_q0_p21, global_par_q1_p21, x(6), global_par_h, global_par_q2);

% Reaction: id = Degradation_of_p21_mRNA_R48, name = Degradation of p21 mRNA R48
	reaction_Degradation_of_p21_mRNA_R48=compartment_nuclear*global_par_g5*x(20);

% Reaction: id = Translation_of_p21_mRNA_R49, name = Translation of p21 mRNA R49
	reaction_Translation_of_p21_mRNA_R49=compartment_nuclear*Function_modifier(global_par_t5, x(20));

% Reaction: id = Binding_of_Cyclin_E_and_p21_R50, name = Binding of Cyclin_E and p21 R50
	reaction_Binding_of_Cyclin_E_and_p21_R50=compartment_nuclear*global_par_b5*x(21)*x(22);

% Reaction: id = Dissociation_of_complex_Cyclin_E_p21_R51, name = Dissociation of complex Cyclin_E:p21 R51
	reaction_Dissociation_of_complex_Cyclin_E_p21_R51=compartment_nuclear*global_par_u6*x(23);

% Reaction: id = Degradation_of_p21_R52, name = Degradation of p21 R52
	reaction_Degradation_of_p21_R52=compartment_nuclear*global_par_g19*x(21);

% Reaction: id = Dephosphorylation_of_Rb1_at_S567_R53, name = Dephosphorylation of Rb1 at S567 R53
	reaction_Dephosphorylation_of_Rb1_at_S567_R53=compartment_nuclear*Function_for_R53(global_par_d12, x(38), global_par_M2);

% Reaction: id = Binding_of_Rb1_and_E2F1_R54, name = Binding of Rb1 and E2F1 R54
	reaction_Binding_of_Rb1_and_E2F1_R54=compartment_nuclear*Function_substrate_modifier(global_par_b4, x(39), x(24));

% Reaction: id = Phosphorylation_of_Rb1_by_Cyclin_E__R55, name = Phosphorylation of Rb1 by Cyclin_E  R55
	reaction_Phosphorylation_of_Rb1_by_Cyclin_E__R55=compartment_nuclear*Function_substrate_modifier(global_par_p9, x(22), x(24));

% Reaction: id = Dissociation_of_Rb1_E2F1_complex_R56, name = Dissociation of Rb1:E2F1 complex R56
	reaction_Dissociation_of_Rb1_E2F1_complex_R56=compartment_nuclear*global_par_u5*x(25);

% Reaction: id = Phosphorylation_of_Rb1_in_Rb1_E2F1_complex_by_Cyclin_ER57, name = Phosphorylation of Rb1 in Rb1:E2F1 complex by Cyclin_ER57
	reaction_Phosphorylation_of_Rb1_in_Rb1_E2F1_complex_by_Cyclin_ER57=compartment_nuclear*Function_substrate_modifier(global_par_p10, x(22), x(25));

% Reaction: id = Synthesis_induced_by_E2F1_R59, name = Synthesis induced by E2F1 R59
	reaction_Synthesis_induced_by_E2F1_R59=compartment_nuclear*Function_for_R59(global_par_s9, x(39), global_par_M3);

% Reaction: id = Degradation_R60, name = Degradation R60
	reaction_Degradation_R60=compartment_nuclear*global_par_g20*x(22);

% Reaction: id = Degradation_R61, name = Degradation R61
	reaction_Degradation_R61=compartment_nuclear*global_par_g20*x(23);

% Reaction: id = Transcription_of_Bax_gene_R62, name = Transcription of Bax gene R62
	reaction_Transcription_of_Bax_gene_R62=compartment_nuclear*Function_for_R22(global_par_s4, global_par_q0_bax, global_par_q1_bax, x(10), global_par_h, global_par_q2);

% Reaction: id = Degradation_of_Bax_mRNA_R63, name = Degradation of Bax mRNA R63
	reaction_Degradation_of_Bax_mRNA_R63=compartment_nuclear*global_par_g4*x(26);

% Reaction: id = Translation_of_Bax_mRNA_R64, name = Translation of Bax mRNA R64
	reaction_Translation_of_Bax_mRNA_R64=compartment_nuclear*Function_modifier(global_par_t4, x(26));

% Reaction: id = Dissociation_of_Bax_BclXL_complex_R65, name = Dissociation of Bax:BclXL complex R65
	reaction_Dissociation_of_Bax_BclXL_complex_R65=global_par_u1*x(29);

% Reaction: id = Binding_of_Bax_and_BclXL_R66, name = Binding of Bax and BclXL R66
	reaction_Binding_of_Bax_and_BclXL_R66=global_par_b1*x(27)*x(28);

% Reaction: id = Degradation_R67, name = Degradation R67
	reaction_Degradation_R67=compartment_nuclear*global_par_g9*x(27);

% Reaction: id = Dissociation_of_BclXL_Bad_complex_R68, name = Dissociation of BclXL:Bad complex R68
	reaction_Dissociation_of_BclXL_Bad_complex_R68=compartment_cytoplasm*Function_modifier(global_par_u2, x(40));

% Reaction: id = Degradation_of_Bax_in_Bax_BclXL_complex_R69, name = Degradation of Bax in Bax:BclXL complex R69
	reaction_Degradation_of_Bax_in_Bax_BclXL_complex_R69=global_par_g16*x(29);

% Reaction: id = Phosphorylation_of_Bad_in_BclXL_Bad_complex_R70, name = Phosphorylation of Bad in BclXL:Bad complex R70
	reaction_Phosphorylation_of_Bad_in_BclXL_Bad_complex_R70=compartment_cytoplasm*Function_modifier1_modifier2(global_par_p7, x(14), x(40));

% Reaction: id = Binding_of_BclXL_and_Bad_0_R71, name = Binding of BclXL and Bad_0 R71
	reaction_Binding_of_BclXL_and_Bad_0_R71=compartment_cytoplasm*global_par_b2*x(28)*x(30);

% Reaction: id = Dephosphorylation_R72, name = Dephosphorylation R72
	reaction_Dephosphorylation_R72=compartment_cytoplasm*global_par_d9*x(31);

% Reaction: id = Dissociation_of_BclXL_Bad_complex_R73, name = Dissociation of BclXL:Bad complex R73
	reaction_Dissociation_of_BclXL_Bad_complex_R73=compartment_cytoplasm*Function_modifier(global_par_u2, x(40));

% Reaction: id = Phosphorylation_of_Bad_0_by_AKT_p_R74, name = Phosphorylation of Bad_0 by AKT_p R74
	reaction_Phosphorylation_of_Bad_0_by_AKT_p_R74=compartment_cytoplasm*Function_substrate_modifier(global_par_p7, x(14), x(30));

% Reaction: id = Dephosphorylation_and_dissociation_of_Bad_p_in_Bad_14_3_3_complex_R75, name = Dephosphorylation and dissociation of Bad_p in Bad:14_3_3 complex R75
	reaction_Dephosphorylation_and_dissociation_of_Bad_p_in_Bad_14_3_3_complex_R75=compartment_cytoplasm*Function_modifier(global_par_d9, x(41));

% Reaction: id = Dissociation_of_Bad_14_3_3_complex_R76, name = Dissociation of Bad:14-3-3 complex R76
	reaction_Dissociation_of_Bad_14_3_3_complex_R76=compartment_cytoplasm*Function_modifier(global_par_u3, x(41));

% Reaction: id = Phosphorylation_of_Bad_in_BclXL_Bad_complex_and_complex_Dissociation_R77, name = Phosphorylation of Bad in BclXL:Bad complex and complex Dissociation R77
	reaction_Phosphorylation_of_Bad_in_BclXL_Bad_complex_and_complex_Dissociation_R77=compartment_cytoplasm*Function_modifier1_modifier2(global_par_p7, x(14), x(40));

% Reaction: id = Binding_of_Bad_p_and_14_3_3_R78, name = Binding of Bad_p and 14-3-3 R78
	reaction_Binding_of_Bad_p_and_14_3_3_R78=Function_substrate_modifier(global_par_b3, x(42), x(31));

% Reaction: id = Degradation_of_proCaspase_R80, name = Degradation of proCaspase R80
	reaction_Degradation_of_proCaspase_R80=compartment_nuclear*global_par_g17*x(32);

% Reaction: id = Activation_of_caspases_by_active__free__Bax_R81, name = Activation of caspases by active (free) Bax R81
	reaction_Activation_of_caspases_by_active__free__Bax_R81=compartment_nuclear*Function_substrate_modifier(global_par_a1, x(27), x(32));

% Reaction: id = Activation_autoactivation_of_caspases_R82, name = Activation_autoactivation of caspases R82
	reaction_Activation_autoactivation_of_caspases_R82=compartment_nuclear*Function_for_R82(global_par_a2, x(33), x(32));

% Reaction: id = Degradation_of_caspases_R83, name = Degradation of caspases R83
	reaction_Degradation_of_caspases_R83=compartment_nuclear*global_par_g18*x(33);

% Species:   id = ATM_tot, name = ATM_tot, constant	const_species_ATM_tot=100000.0;

% Species:   id = AKT_tot, name = AKT_tot, constant	const_species_AKT_tot=100000.0;

% Species:   id = PIP_tot, name = PIP_tot, constant	const_species_PIP_tot=100000.0;

% Species:   id = PI3K_tot, name = PI3K_tot, constant	const_species_PI3K_tot=100000.0;

% Species:   id = E2F1_tot, name = E2F1_tot, constant	const_species_E2F1_tot=200000.0;

% Species:   id = Fourteen33_tot, name = Fourteen33_tot, constant	const_species_Fourteen33_tot=200000.0;

% Species:   id = Rb_tot, name = Rb_tot, constant	const_species_Rb_tot=300000.0;

% Species:   id = SIAH1_tot, name = SIAH1_tot, constant	const_species_SIAH1_tot=100000.0;

% Species:   id = Bad_tot, name = Bad_tot, constant	const_species_Bad_tot=60000.0;

% Species:   id = BclXL_tot, name = BclXL_tot, constant	const_species_BclXL_tot=100000.0;

%Event: id=Irradiation_phase
	event_Irradiation_phase=(2592000 <= time) && (time <= 2592600);

	if(event_Irradiation_phase) 
		global_par_is_IR_switched_on=1;
	end

%Event: id=Stop_Irradiation_phase
	event_Stop_Irradiation_phase=time >= 2592601;

	if(event_Stop_Irradiation_phase) 
		global_par_is_IR_switched_on=0;
	end

	xdot=zeros(42,1);
	
% Species:   id = DNA_double_strand_break, name = DNA_double_strand_break, affected by kineticLaw
	xdot(1) = (1/(compartment_nuclear))*(( 1.0 * reaction_DNA_damage_R1) + (-1.0 * reaction_DNA_Repair_R2));
	
% Species:   id = ATM_phosphorylated, name = ATM_phosphorylated, affected by kineticLaw
	xdot(2) = (1/(compartment_nuclear))*((-1.0 * reaction_Dephoshorylation_by_Wip1_R3) + ( 1.0 * reaction_Phoshorylation_due_to_IR_R4));
	
% Species:   id = SIAH1_0, name = SIAH1_0, affected by kineticLaw
	xdot(3) = (1/(compartment_nuclear))*((-1.0 * reaction_Phosphorylation_by_ATM_p_R5) + ( 1.0 * reaction_Dephosphorylation_of_SIAH1_p_R6));
	
% Species:   id = HIPK2, name = HIPK2, affected by kineticLaw
	xdot(4) = (1/(compartment_nuclear))*(( 1.0 * reaction_Synthesis_of_HIPK2_R7) + (-1.0 * reaction_Degradation_induced_by_Mdm2_nuc_S166S186p_and_SIAH1_R8));
	
% Species:   id = p53_0phosphorylated, name = p53_0phosphorylated, affected by kineticLaw
	xdot(5) = (1/(compartment_nuclear))*(( 1.0 * reaction_Synthesis_of_p53_0p_R9) + (-1.0 * reaction_Phosphorylation_by_ATM_p_on_Ser15_and_Ser20_R10) + ( 1.0 * reaction_Dephosphorylation_spontaneous_of_p53_arrester_R11) + (-1.0 * reaction_Degradation_spontanuous_and_induced_by_Mdm2_nuc_S166S186p__R12) + ( 1.0 * reaction_Dephosphorylation_of_Ser46_by_Wip1_R13) + (-1.0 * reaction_Phosphorylation_at_Ser46_by_HIPK2_R14));
	
% Species:   id = p53_arrester, name = p53_arrester, affected by kineticLaw
	xdot(6) = (1/(compartment_nuclear))*(( 1.0 * reaction_Phosphorylation_by_ATM_p_on_Ser15_and_Ser20_R10) + (-1.0 * reaction_Dephosphorylation_spontaneous_of_p53_arrester_R11) + (-1.0 * reaction_Degradation_spontaneous_and_induced_by_Mdm2_nuc_S166S186p_R15) + (-1.0 * reaction_Phosphorylation_at_Ser46_by_HIPK2_R16) + ( 1.0 * reaction_Dephosphorylation_at_Ser46_by_Wip1_R17));
	
% Species:   id = p53_S46phosphorylated, name = p53_S46phosphorylated, affected by kineticLaw
	xdot(7) = (1/(compartment_nuclear))*((-1.0 * reaction_Dephosphorylation_of_Ser46_by_Wip1_R13) + ( 1.0 * reaction_Phosphorylation_at_Ser46_by_HIPK2_R14) + (-1.0 * reaction_Phosphorylation_by_ATM_p_on_Ser15_and_Ser20_R18) + (-1.0 * reaction_Degradation_spontaneous_and_induced_by_Mdm2_nuc_S166S186p_R19) + ( 1.0 * reaction_Dephosphorylation_of_Ser15_and_Ser20_R21));
	
% Species:   id = Mdm2_nuc_S166S186phosphorylated, name = Mdm2_nuc_S166S186phosphorylated, affected by kineticLaw
	xdot(8) = (1/(compartment_nuclear))*(( 1.0 * reaction_Nuclear_import_of_Mdm2_cyto_S166S186p_R28) + (-1.0 * reaction_Degradation_spontaneous_R30) + (-1.0 * reaction_Phosphorylation_by_ATM_p_at_Ser395_R31) + ( 1.0 * reaction_Dephosphorylation_of_Ser395_of_Mdm2_nuc_S166S186p_S395p_by_Wip1_R32));
	
% Species:   id = Wip1, name = Wip1, affected by kineticLaw
	xdot(9) = (1/(compartment_nuclear))*(( 1.0 * reaction_Translation_of_Wip_mRNA_R37) + (-1.0 * reaction_Translation_of_Wip_mRNA_R38));
	
% Species:   id = p53_killer, name = p53_killer, affected by kineticLaw
	xdot(10) = (1/(compartment_nuclear))*(( 1.0 * reaction_Phosphorylation_at_Ser46_by_HIPK2_R16) + (-1.0 * reaction_Dephosphorylation_at_Ser46_by_Wip1_R17) + ( 1.0 * reaction_Phosphorylation_by_ATM_p_on_Ser15_and_Ser20_R18) + (-1.0 * reaction_Degradation_spontaneous_and_induced_by_Mdm2_nuc_S166S186p_R20) + (-1.0 * reaction_Dephosphorylation_of_Ser15_and_Ser20_R21));
	
% Species:   id = Mdm2_mRNA, name = Mdm2 mRNA, affected by kineticLaw
	xdot(11) = (1/(compartment_nuclear))*(( 1.0 * reaction_Transcription_Mdm2_gene_transcription_R22) + (-1.0 * reaction_Degradation_spontaneous_R23));
	
% Species:   id = Mdm2_cyt_0phosphorylated, name = Mdm2_cyt_0phosphorylated, affected by kineticLaw
	xdot(12) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_Translation_of_mdm2_R24) + (-1.0 * reaction_Phosphorylation_of_Mdm2_cyt_0_by_AKT_p_R25) + ( 1.0 * reaction_Dephosphorylation_at_Ser166_and_186_R26) + (-1.0 * reaction_Degradation_spontaneous_R27));
	
% Species:   id = Mdm2_cyt_S166S186phosphorylated, name = Mdm2_cyt_S166S186phosphorylated, affected by kineticLaw
	xdot(13) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_Phosphorylation_of_Mdm2_cyt_0_by_AKT_p_R25) + (-1.0 * reaction_Dephosphorylation_at_Ser166_and_186_R26) + (-1.0 * reaction_Nuclear_import_of_Mdm2_cyto_S166S186p_R28) + (-1.0 * reaction_Degradation_spontaneous_R29));
	
% Species:   id = AKT_phosphorylated, name = AKT_phosphorylated, affected by kineticLaw
	xdot(14) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_Phopshorylation_at_PIP3_R45) + (-1.0 * reaction_Dephosphorylation_of_AKT_R46));
	
% Species:   id = Mdm2_nuc_S166S186p_S395p, name = Mdm2_nuc_S166S186p_S395p, affected by kineticLaw
	xdot(15) = (1/(compartment_nuclear))*(( 1.0 * reaction_Phosphorylation_by_ATM_p_at_Ser395_R31) + (-1.0 * reaction_Dephosphorylation_of_Ser395_of_Mdm2_nuc_S166S186p_S395p_by_Wip1_R32) + (-1.0 * reaction_Degradation_spontaneous_R33) + (-1.0 * reaction_Degradation_Ser395p_dependent_R34));
	
% Species:   id = Wip1_mRNA, name = Wip1 mRNA, affected by kineticLaw
	xdot(16) = (1/(compartment_nuclear))*(( 1.0 * reaction_Transcription_of_Wip1_gene_R35) + (-1.0 * reaction_Degradation_R36));
	
% Species:   id = PTEN_mRNA, name = PTEN mRNA, affected by kineticLaw
	xdot(17) = (1/(compartment_nuclear))*(( 1.0 * reaction_Transcription_of_PTEN_gene_R39) + (-1.0 * reaction_Degradation_R40));
	
% Species:   id = PTEN, name = PTEN, affected by kineticLaw
	xdot(18) = (1/(compartment_nuclear))*(( 1.0 * reaction_Translation_of_PTEN_mRNA_R41) + (-1.0 * reaction_Degradation_of_PTEN_R42));
	
% Species:   id = PIP3, name = PIP3, affected by kineticLaw
	xdot(19) = (1/(compartment_nuclear))*(( 1.0 * reaction_Phopshorylation_of_PIP2_by_PI3K_R43) + (-1.0 * reaction_Dephosphorylation_of_PIP3_by_PTENR44));
	
% Species:   id = p21_mRNA, name = p21_mRNA, affected by kineticLaw
	xdot(20) = (1/(compartment_nuclear))*(( 1.0 * reaction_Transcription_of_p21_gene_R47) + (-1.0 * reaction_Degradation_of_p21_mRNA_R48));
	
% Species:   id = p21__free, name = p21_(free), affected by kineticLaw
	xdot(21) = (1/(compartment_nuclear))*(( 1.0 * reaction_Translation_of_p21_mRNA_R49) + (-1.0 * reaction_Binding_of_Cyclin_E_and_p21_R50) + ( 1.0 * reaction_Dissociation_of_complex_Cyclin_E_p21_R51) + (-1.0 * reaction_Degradation_of_p21_R52));
	
% Species:   id = Cyclin_E__free, name = Cyclin_E (free), affected by kineticLaw
	xdot(22) = (1/(compartment_nuclear))*((-1.0 * reaction_Binding_of_Cyclin_E_and_p21_R50) + ( 1.0 * reaction_Dissociation_of_complex_Cyclin_E_p21_R51) + ( 1.0 * reaction_Synthesis_R58) + ( 1.0 * reaction_Synthesis_induced_by_E2F1_R59) + (-1.0 * reaction_Degradation_R60));
	
% Species:   id = Cyclin_E_p21_complex, name = Cyclin_E:p21_complex, affected by kineticLaw
	xdot(23) = (1/(compartment_nuclear))*(( 1.0 * reaction_Binding_of_Cyclin_E_and_p21_R50) + (-1.0 * reaction_Dissociation_of_complex_Cyclin_E_p21_R51) + (-1.0 * reaction_Degradation_R61));
	
% Species:   id = Rb1_0__free, name = Rb1_0_(free), affected by kineticLaw
	xdot(24) = (1/(compartment_nuclear))*(( 1.0 * reaction_Dephosphorylation_of_Rb1_at_S567_R53) + (-1.0 * reaction_Binding_of_Rb1_and_E2F1_R54) + (-1.0 * reaction_Phosphorylation_of_Rb1_by_Cyclin_E__R55) + ( 1.0 * reaction_Dissociation_of_Rb1_E2F1_complex_R56));
	
% Species:   id = Rb1_0_E2F1_complex, name = Rb1_0:E2F1 complex, affected by kineticLaw
	xdot(25) = (1/(compartment_nuclear))*(( 1.0 * reaction_Binding_of_Rb1_and_E2F1_R54) + (-1.0 * reaction_Dissociation_of_Rb1_E2F1_complex_R56) + (-1.0 * reaction_Phosphorylation_of_Rb1_in_Rb1_E2F1_complex_by_Cyclin_ER57));
	
% Species:   id = Bax_mRNA, name = Bax_mRNA, affected by kineticLaw
	xdot(26) = (1/(compartment_nuclear))*(( 1.0 * reaction_Transcription_of_Bax_gene_R62) + (-1.0 * reaction_Degradation_of_Bax_mRNA_R63));
	
% Species:   id = Bax__free, name = Bax_(free), affected by kineticLaw
	xdot(27) = (1/(compartment_nuclear))*(( 1.0 * reaction_Translation_of_Bax_mRNA_R64) + ( 1.0 * reaction_Dissociation_of_Bax_BclXL_complex_R65) + (-1.0 * reaction_Binding_of_Bax_and_BclXL_R66) + (-1.0 * reaction_Degradation_R67));
	
% Species:   id = BclXL__free, name = BclXL_(free), affected by kineticLaw
	xdot(28) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_Dissociation_of_Bax_BclXL_complex_R65) + (-1.0 * reaction_Binding_of_Bax_and_BclXL_R66) + ( 1.0 * reaction_Dissociation_of_BclXL_Bad_complex_R68) + ( 1.0 * reaction_Degradation_of_Bax_in_Bax_BclXL_complex_R69) + ( 1.0 * reaction_Phosphorylation_of_Bad_in_BclXL_Bad_complex_R70) + (-1.0 * reaction_Binding_of_BclXL_and_Bad_0_R71));
	
% Species:   id = Bax_BclXL_complex, name = Bax:BclXL_complex, affected by kineticLaw
	xdot(29) = (1/(compartment_nuclear))*((-1.0 * reaction_Dissociation_of_Bax_BclXL_complex_R65) + ( 1.0 * reaction_Binding_of_Bax_and_BclXL_R66) + (-1.0 * reaction_Degradation_of_Bax_in_Bax_BclXL_complex_R69));
	
% Species:   id = Bad_0__free, name = Bad_0_(free), affected by kineticLaw
	xdot(30) = (1/(compartment_cytoplasm))*((-1.0 * reaction_Binding_of_BclXL_and_Bad_0_R71) + ( 1.0 * reaction_Dephosphorylation_R72) + ( 1.0 * reaction_Dissociation_of_BclXL_Bad_complex_R73) + (-1.0 * reaction_Phosphorylation_of_Bad_0_by_AKT_p_R74) + ( 1.0 * reaction_Dephosphorylation_and_dissociation_of_Bad_p_in_Bad_14_3_3_complex_R75));
	
% Species:   id = Bad_phosphorylated__free, name = Bad_phosphorylated_(free), affected by kineticLaw
	xdot(31) = (1/(compartment_cytoplasm))*((-1.0 * reaction_Dephosphorylation_R72) + ( 1.0 * reaction_Phosphorylation_of_Bad_0_by_AKT_p_R74) + ( 1.0 * reaction_Dissociation_of_Bad_14_3_3_complex_R76) + ( 1.0 * reaction_Phosphorylation_of_Bad_in_BclXL_Bad_complex_and_complex_Dissociation_R77) + (-1.0 * reaction_Binding_of_Bad_p_and_14_3_3_R78));
	
% Species:   id = proCaspase, name = proCaspase, affected by kineticLaw
	xdot(32) = (1/(compartment_nuclear))*(( 1.0 * reaction_Synthesis_of_proCaspase_R79) + (-1.0 * reaction_Degradation_of_proCaspase_R80) + (-1.0 * reaction_Activation_of_caspases_by_active__free__Bax_R81) + (-1.0 * reaction_Activation_autoactivation_of_caspases_R82));
	
% Species:   id = Caspase, name = Caspase, affected by kineticLaw
	xdot(33) = (1/(compartment_nuclear))*(( 1.0 * reaction_Activation_of_caspases_by_active__free__Bax_R81) + ( 1.0 * reaction_Activation_autoactivation_of_caspases_R82) + (-1.0 * reaction_Degradation_of_caspases_R83));
	
% Species:   id = ATM_0, name = ATM_0, involved in a rule 	xdot(34) = x(34);
	
% Species:   id = SIAH1_phosphorylated, name = SIAH1_phosphorylated, involved in a rule 	xdot(35) = x(35);
	
% Species:   id = AKT_0, name = AKT_0, involved in a rule 	xdot(36) = x(36);
	
% Species:   id = PIP2, name = PIP2, involved in a rule 	xdot(37) = x(37);
	
% Species:   id = Rb_phosphorylated, name = Rb_phosphorylated, involved in a rule 	xdot(38) = x(38);
	
% Species:   id = E2F1, name = E2F1, involved in a rule 	xdot(39) = x(39);
	
% Species:   id = BclXL_Bad_complex, name = BclXL_Bad_complex, involved in a rule 	xdot(40) = x(40);
	
% Species:   id = Bad_phosphorylated_Fourteen33_complex, name = Bad_phosphorylated_Fourteen33_complex, involved in a rule 	xdot(41) = x(41);
	
% Species:   id = Fourteen33_free, name = Fourteen33_free, involved in a rule 	xdot(42) = x(42);
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=Function_for_R22(s3,q0_mdm2,q1_mdm2,y6,h,q2), z=(s3*(q0_mdm2+q1_mdm2*y6^h)/(q2+q0_mdm2+q1_mdm2*y6^h));end

function z=Function_for_R45(p12,AKT_0,y18), z=(p12*AKT_0*y18);end

function z=Function_for_R8(g7,y4,y3,y12), z=(g7*y4*(y3+y12)^2);end

function z=Function_for_R43(p8,PIP2,PI3K_tot), z=(p8*PIP2*PI3K_tot);end

function z=Function_for_R59(s9,E2F1,M3), z=(s9*E2F1^2/(M3^2+E2F1^2));end

function z=Function_for_R4(p1,ATM_0,y1,h,M1), z=(p1*ATM_0*y1^h/(y1^h+M1^h));end

function z=Function_for_R12(g101,g11,y12,h,y5), z=((g101+g11*y12^h)*y5);end

function z=Function_for_R2(y1,rep,DNA_DSB_RepairCplx_total), z=(y1*rep/(y1+DNA_DSB_RepairCplx_total));end

function z=Function_modifier(k,modifier), z=(k*modifier);end

function z=Function_for_R1(h1,DNA_DSB_DUE_to_IR,is_IR_switched_on,h2,y33,DNA_DSB_max,y1), z=((h1*DNA_DSB_DUE_to_IR*is_IR_switched_on+h2*y33)*(DNA_DSB_max-y1));end

function z=Function_for_R53(d12,Rb_p,M2), z=(d12*Rb_p/(M2+Rb_p));end

function z=Function_modifier1_modifier2(k,modifier1,modifier2), z=(k*modifier1*modifier2);end

function z=Function_for_R82(a2,y33,y32), z=(a2*y33^2*y32);end

function z=Function_substrate_modifier(k,modifier,substrate), z=(k*modifier*substrate);end

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


